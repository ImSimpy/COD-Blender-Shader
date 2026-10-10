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
; shader hash: e1ad86860a3201fe0b562f32271f0890
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
;                                   texture     f32          2d     T27     t34,space2     1
;                                   texture     f32          3d     T28     t31,space2     1
;                                   texture    byte         r/o     T29     t10,space1     1
;                                   texture    byte         r/o     T30      t1,space1     1
;                                   texture     f32          1d     T31     t32,space2     1
;                                   texture     f32          3d     T32     t82,space2     1
;                                   texture     f32     2darray     T33      t8,space2     1
;                                   texture    byte         r/o     T34     t68,space1     1
;                                   texture     f32          2d     T35      t0,space2     1
;                                   texture    byte         r/o     T36     t11,space1     1
;                                   texture    byte         r/o     T37     t13,space1     1
;                                   texture    byte         r/o     T38     t16,space1     1
;                                   texture    byte         r/o     T39     t17,space1     1
;                                   texture     f32          2d     T40             t8     1
;                                   texture     f32     2darray     T41             t5     1
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
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = alloca [4 x float], align 4
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = icmp ne i32 %57, 0
  %59 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %71 = extractvalue %dx.types.CBufRet.f32 %70, 0
  %72 = fmul fast float %71, %66
  %73 = fmul fast float %71, %67
  %74 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %75 = call float @dx.op.unary.f32(i32 25, float %74)  ; Rsqrt(value)
  %76 = select i1 %58, float 1.000000e+00, float -1.000000e+00
  %77 = fmul fast float %63, %76
  %78 = fmul fast float %77, %75
  %79 = fmul fast float %64, %76
  %80 = fmul fast float %79, %75
  %81 = fmul fast float %65, %76
  %82 = fmul fast float %81, %75
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %72, 2.000000e+00
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %73, 2.000000e+00
  %89 = fmul fast float %88, %85
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %69
  %117 = fmul fast float %113, %69
  %118 = fmul fast float %115, %69
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %122 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %123 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  %125 = fmul fast float %121, %120
  %126 = fmul fast float %122, %120
  %127 = fmul fast float %123, %120
  %128 = fmul fast float %124, %120
  %129 = call float @dx.op.dot2.f32(i32 54, float %127, float %128, float %127, float %128)  ; Dot2(ax,ay,bx,by)
  %130 = call float @dx.op.dot2.f32(i32 54, float %125, float %126, float %125, float %126)  ; Dot2(ax,ay,bx,by)
  %131 = call float @dx.op.binary.f32(i32 35, float %130, float %129)  ; FMax(a,b)
  %132 = call float @dx.op.unary.f32(i32 23, float %131)  ; Log(value)
  %133 = fmul fast float %132, 5.000000e-01
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %136 = fadd fast float %135, %133
  %137 = call float @dx.op.binary.f32(i32 35, float %136, float 0.000000e+00)  ; FMax(a,b)
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %140 = fadd fast float %139, %137
  %141 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %142 = shl i32 %141, 16
  %143 = or i32 %142, %141
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = fadd fast float %145, %116
  %148 = fadd fast float %146, %117
  %149 = fmul fast float %147, 0x3F53C37960000000
  %150 = fmul fast float %148, 0x3F53C37960000000
  %151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %151, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 2
  %156 = fmul fast float %155, %153
  %157 = shl i32 %59, 3
  %158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %157, i32 undef)  ; BufferLoad(srv,index,wot)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 16383
  %161 = shl i32 %59, 2
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = and i32 %163, 255
  %165 = mul nuw nsw i32 %160, 148
  %166 = add nuw nsw i32 %165, 4
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %166, i32 undef)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = add nuw nsw i32 %165, 8
  %170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %169, i32 undef)  ; BufferLoad(srv,index,wot)
  %171 = extractvalue %dx.types.ResRet.f32 %170, 0
  %172 = add nuw nsw i32 %165, 92
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = add nuw nsw i32 %165, 96
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = add nuw nsw i32 %165, 100
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = add nuw nsw i32 %165, 104
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = add nuw nsw i32 %165, 108
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = fsub fast float 1.000000e+00, %62
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = fmul fast float %188, %61
  %190 = fmul fast float %188, %186
  %191 = fadd fast float %189, %168
  %192 = fadd fast float %190, %171
  %193 = call float @dx.op.unary.f32(i32 84, float %191)  ; DerivCoarseY(value)
  %194 = call float @dx.op.unary.f32(i32 84, float %192)  ; DerivCoarseY(value)
  %195 = call float @dx.op.unary.f32(i32 83, float %191)  ; DerivCoarseX(value)
  %196 = call float @dx.op.unary.f32(i32 83, float %192)  ; DerivCoarseX(value)
  %197 = call float @dx.op.dot2.f32(i32 54, float %193, float %194, float %193, float %194)  ; Dot2(ax,ay,bx,by)
  %198 = call float @dx.op.dot2.f32(i32 54, float %195, float %196, float %195, float %196)  ; Dot2(ax,ay,bx,by)
  %199 = call float @dx.op.binary.f32(i32 35, float %198, float %197)  ; FMax(a,b)
  %200 = call float @dx.op.unary.f32(i32 23, float %199)  ; Log(value)
  %201 = fmul fast float %200, 5.000000e-01
  %202 = add nuw nsw i32 %165, 20
  %203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.f32 %203, 0
  %205 = add nuw nsw i32 %165, 24
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = add nuw nsw i32 %165, 28
  %209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = add nuw nsw i32 %165, 32
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = add nuw nsw i32 %165, 40
  %215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = add nuw nsw i32 %165, 44
  %218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = add nuw nsw i32 %165, 48
  %221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.f32 %221, 0
  %223 = add nuw nsw i32 %165, 52
  %224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.f32 %224, 0
  %226 = add nuw nsw i32 %165, 56
  %227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.f32 %227, 0
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = add nuw nsw i32 %165, 112
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %241 = extractvalue %dx.types.CBufRet.f32 %240, 2
  %242 = fmul fast float %241, %61
  %243 = fmul fast float %241, %62
  %244 = extractvalue %dx.types.CBufRet.f32 %240, 3
  %245 = fadd fast float %242, %244
  %246 = fadd fast float %243, %244
  %247 = extractvalue %dx.types.CBufRet.f32 %240, 0
  %248 = fmul fast float %247, %61
  %249 = fmul fast float %247, %62
  %250 = extractvalue %dx.types.CBufRet.f32 %240, 1
  %251 = fadd fast float %248, %250
  %252 = fadd fast float %249, %250
  %253 = add i32 %230, 0
  %254 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %253, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %255 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %254, i32 0)  ; GetDimensions(handle,mipLevel)
  %256 = extractvalue %dx.types.Dimensions %255, 0
  %257 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %256)  ; FirstbitLo(value)
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 1
  %260 = sub nsw i32 %259, %257
  %261 = sitofp i32 %260 to float
  %262 = fsub fast float %140, %261
  %263 = call float @dx.op.binary.f32(i32 35, float %262, float 0.000000e+00)  ; FMax(a,b)
  %264 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %254, %dx.types.Handle %43, float %245, float %246, float %216, float undef, i32 0, i32 0, i32 undef, float %263)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = fmul fast float %265, %204
  %267 = fadd fast float %266, %207
  %268 = add i32 %232, 0
  %269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %268, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %270 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %269, i32 0)  ; GetDimensions(handle,mipLevel)
  %271 = extractvalue %dx.types.Dimensions %270, 0
  %272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %271)  ; FirstbitLo(value)
  %273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.i32 %273, 1
  %275 = sub nsw i32 %274, %272
  %276 = sitofp i32 %275 to float
  %277 = fsub fast float %140, %276
  %278 = call float @dx.op.binary.f32(i32 35, float %277, float 0.000000e+00)  ; FMax(a,b)
  %279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %269, %dx.types.Handle %43, float %251, float %252, float %219, float undef, i32 0, i32 0, i32 undef, float %278)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = fmul fast float %280, %210
  %282 = fadd fast float %281, %213
  %283 = add i32 %234, 0
  %284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %283, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %285 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %284, i32 0)  ; GetDimensions(handle,mipLevel)
  %286 = extractvalue %dx.types.Dimensions %285, 0
  %287 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %286)  ; FirstbitLo(value)
  %288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.i32 %288, 1
  %290 = sub nsw i32 %289, %287
  %291 = sitofp i32 %290 to float
  %292 = fsub fast float %140, %291
  %293 = call float @dx.op.binary.f32(i32 35, float %292, float 0.000000e+00)  ; FMax(a,b)
  %294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %284, %dx.types.Handle %43, float %251, float %252, float %222, float undef, i32 0, i32 0, i32 undef, float %293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = extractvalue %dx.types.ResRet.f32 %294, 1
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 3
  %299 = fmul fast float %298, 2.000000e+00
  %300 = fmul fast float %299, %295
  %301 = fmul fast float %299, %296
  %302 = fsub fast float %300, %298
  %303 = fsub fast float %301, %298
  %304 = fmul fast float %302, %302
  %305 = fmul fast float %303, %303
  %306 = fadd fast float %304, %305
  %307 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %308 = add i32 %236, 0
  %309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %310 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %309, i32 0)  ; GetDimensions(handle,mipLevel)
  %311 = extractvalue %dx.types.Dimensions %310, 0
  %312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %311)  ; FirstbitLo(value)
  %313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.i32 %313, 1
  %315 = sub nsw i32 %314, %312
  %316 = sitofp i32 %315 to float
  %317 = fsub fast float %140, %316
  %318 = call float @dx.op.binary.f32(i32 35, float %317, float 0.000000e+00)  ; FMax(a,b)
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %309, %dx.types.Handle %43, float %251, float %252, float %225, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = add i32 %239, 0
  %322 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %321, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %322, i32 0)  ; GetDimensions(handle,mipLevel)
  %324 = extractvalue %dx.types.Dimensions %323, 0
  %325 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %324)  ; FirstbitLo(value)
  %326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %327 = extractvalue %dx.types.CBufRet.i32 %326, 1
  %328 = sub nsw i32 %327, %325
  %329 = sitofp i32 %328 to float
  %330 = fsub fast float %140, %329
  %331 = call float @dx.op.binary.f32(i32 35, float %330, float 0.000000e+00)  ; FMax(a,b)
  %332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %322, %dx.types.Handle %43, float %251, float %252, float %228, float undef, i32 0, i32 0, i32 undef, float %331)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %333 = extractvalue %dx.types.ResRet.f32 %332, 0
  %334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %335 = extractvalue %dx.types.CBufRet.i32 %334, 0
  %336 = call i32 @dx.op.binary.i32(i32 40, i32 %160, i32 %335)  ; UMin(a,b)
  %337 = mul i32 %336, 36
  %338 = add i32 %337, 4
  %339 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %164)  ; Countbits(value)
  %340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.i32 %340, 0
  %342 = icmp eq i32 %341, 32
  %343 = select i1 %342, float %54, float %140
  %344 = and i32 %341, -2
  %345 = icmp eq i32 %344, 30
  %346 = or i1 %345, %342
  br i1 %346, label %347, label %388

; <label>:347                                     ; preds = %0
  %348 = extractvalue %dx.types.ResRet.i32 %173, 0
  %349 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %350 = extractvalue %dx.types.CBufRet.i32 %349, 0
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %367, label %352

; <label>:352                                     ; preds = %347
  %353 = icmp eq i32 %350, 1
  br i1 %353, label %367, label %354

; <label>:354                                     ; preds = %352
  %355 = icmp eq i32 %350, 2
  br i1 %355, label %367, label %356

; <label>:356                                     ; preds = %354
  %357 = icmp eq i32 %350, 3
  br i1 %357, label %367, label %358

; <label>:358                                     ; preds = %356
  %359 = icmp eq i32 %350, 4
  br i1 %359, label %367, label %360

; <label>:360                                     ; preds = %358
  %361 = call i32 @dx.op.binary.i32(i32 39, i32 %350, i32 6)  ; UMax(a,b)
  %362 = call i32 @dx.op.binary.i32(i32 40, i32 %361, i32 13)  ; UMin(a,b)
  %363 = shl i32 %362, 2
  %364 = add i32 %172, %363
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  br label %367

; <label>:367                                     ; preds = %360, %358, %356, %354, %352, %347
  %368 = phi i32 [ %366, %360 ], [ %348, %347 ], [ %176, %352 ], [ %179, %354 ], [ %182, %356 ], [ %185, %358 ]
  %369 = add i32 %368, 0
  %370 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %369, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %371 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %370, i32 0)  ; GetDimensions(handle,mipLevel)
  %372 = extractvalue %dx.types.Dimensions %371, 0
  %373 = icmp eq i32 %372, 1
  %374 = icmp eq i32 %372, 4
  %375 = or i1 %373, %374
  br i1 %375, label %382, label %376

; <label>:376                                     ; preds = %367
  %377 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %372)  ; FirstbitLo(value)
  %378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = extractvalue %dx.types.CBufRet.i32 %378, 1
  %380 = sub nsw i32 %379, %377
  %381 = call i32 @dx.op.binary.i32(i32 37, i32 %380, i32 0)  ; IMax(a,b)
  br label %382

; <label>:382                                     ; preds = %376, %367
  %383 = phi i32 [ %381, %376 ], [ -1, %367 ]
  %384 = sitofp i32 %383 to float
  %385 = icmp slt i32 %383, 0
  %386 = fsub fast float %343, %384
  %387 = select i1 %385, float 0.000000e+00, float %386
  br label %388

; <label>:388                                     ; preds = %382, %0
  %389 = phi float [ 0.000000e+00, %0 ], [ %384, %382 ]
  %390 = phi float [ 0.000000e+00, %0 ], [ %387, %382 ]
  %391 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %164)  ; FirstbitLo(value)
  %392 = shl i32 %391, 2
  %393 = add i32 %338, %392
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 32767
  %397 = mul nuw nsw i32 %396, 928
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = or i32 %397, 8
  %401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.f32 %401, 0
  %403 = or i32 %397, 12
  %404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.f32 %404, 1
  %406 = or i32 %397, 20
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = or i32 %397, 24
  %410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.f32 %410, 0
  %412 = extractvalue %dx.types.ResRet.f32 %410, 1
  %413 = extractvalue %dx.types.ResRet.f32 %410, 2
  %414 = extractvalue %dx.types.ResRet.f32 %410, 3
  %415 = add nuw nsw i32 %397, 40
  %416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = add nuw nsw i32 %397, 72
  %419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.f32 %419, 0
  %421 = extractvalue %dx.types.ResRet.f32 %419, 1
  %422 = add nuw nsw i32 %397, 80
  %423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.f32 %423, 0
  %425 = add nuw nsw i32 %397, 228
  %426 = add nuw nsw i32 %397, 564
  %427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.f32 %427, 0
  %429 = extractvalue %dx.types.ResRet.f32 %427, 1
  %430 = extractvalue %dx.types.ResRet.f32 %427, 2
  %431 = extractvalue %dx.types.ResRet.f32 %427, 3
  %432 = add nuw nsw i32 %397, 580
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  %435 = extractvalue %dx.types.ResRet.f32 %433, 1
  %436 = extractvalue %dx.types.ResRet.f32 %433, 2
  %437 = extractvalue %dx.types.ResRet.f32 %433, 3
  %438 = add nuw nsw i32 %397, 596
  %439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.f32 %439, 0
  %441 = extractvalue %dx.types.ResRet.f32 %439, 1
  %442 = add nuw nsw i32 %397, 620
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 0
  %445 = extractvalue %dx.types.ResRet.f32 %443, 1
  %446 = add nuw nsw i32 %397, 628
  %447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.f32 %447, 0
  %449 = extractvalue %dx.types.ResRet.f32 %447, 1
  %450 = extractvalue %dx.types.ResRet.f32 %447, 2
  %451 = extractvalue %dx.types.ResRet.f32 %447, 3
  %452 = add nuw nsw i32 %397, 648
  %453 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.f32 %453, 0
  %455 = add nuw nsw i32 %397, 696
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = extractvalue %dx.types.ResRet.f32 %456, 1
  %459 = add nuw nsw i32 %397, 708
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = add nuw nsw i32 %397, 812
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = add nuw nsw i32 %397, 816
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 1
  %469 = add nuw nsw i32 %397, 852
  %470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.i32 %470, 0
  %472 = add nuw nsw i32 %397, 860
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = extractvalue %dx.types.ResRet.f32 %473, 2
  %477 = add nuw nsw i32 %397, 896
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = add nuw nsw i32 %397, 900
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = add nuw nsw i32 %397, 904
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = and i32 %399, 512
  %487 = fcmp fast ole float %60, 0x3FA4B5DCC0000000
  %488 = fmul fast float %60, 0x3FB3D07220000000
  %489 = fadd fast float %60, 0x3FAC28F5C0000000
  %490 = fmul fast float %489, 0x3FEE54EDE0000000
  %491 = call float @dx.op.unary.f32(i32 23, float %490)  ; Log(value)
  %492 = fmul fast float %491, 0x4003333340000000
  %493 = call float @dx.op.unary.f32(i32 21, float %492)  ; Exp(value)
  %494 = select i1 %487, float %488, float %493
  %495 = call float @dx.op.unary.f32(i32 7, float %494)  ; Saturate(value)
  %496 = fmul fast float %440, %320
  %497 = fadd fast float %496, %441
  %498 = call float @dx.op.unary.f32(i32 7, float %497)  ; Saturate(value)
  %499 = call float @dx.op.binary.f32(i32 35, float %495, float %498)  ; FMax(a,b)
  %500 = add i32 %482, 0
  %501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %500, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %503 = extractvalue %dx.types.CBufRet.i32 %502, 0
  %504 = and i32 %503, 65536
  %505 = icmp eq i32 %504, 0
  %506 = and i32 %503, 262144
  %507 = icmp ne i32 %506, 0
  %508 = and i32 %503, 1048576
  %509 = icmp ne i32 %508, 0
  br i1 %505, label %786, label %510

; <label>:510                                     ; preds = %388
  %511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %512 = extractvalue %dx.types.CBufRet.f32 %511, 0
  %513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %514 = extractvalue %dx.types.CBufRet.f32 %513, 0
  %515 = extractvalue %dx.types.CBufRet.f32 %513, 1
  %516 = fadd fast float %514, %116
  %517 = fadd fast float %515, %117
  %518 = fmul fast float %116, %116
  %519 = fmul fast float %117, %117
  %520 = fadd fast float %518, %519
  %521 = fmul fast float %118, %118
  %522 = fadd fast float %520, %521
  %523 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  br i1 %509, label %524, label %570

; <label>:524                                     ; preds = %510
  %525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %526 = extractvalue %dx.types.CBufRet.f32 %525, 0
  %527 = fcmp fast ogt float %523, %526
  %528 = zext i1 %527 to i32
  %529 = extractvalue %dx.types.CBufRet.f32 %525, 1
  %530 = fcmp fast ogt float %523, %529
  %531 = zext i1 %530 to i32
  %532 = add nuw nsw i32 %531, %528
  %533 = extractvalue %dx.types.CBufRet.f32 %525, 2
  %534 = fcmp fast ogt float %523, %533
  %535 = zext i1 %534 to i32
  %536 = add nuw nsw i32 %532, %535
  %537 = icmp ult i32 %536, 3
  %538 = zext i1 %537 to i32
  %539 = shl nuw nsw i32 %536, 2
  %540 = add nuw nsw i32 %539, 48
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %540)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %543 = fcmp fast ogt float %523, %542
  %544 = zext i1 %543 to i32
  %545 = or i32 %539, 1
  %546 = add nuw nsw i32 %545, 48
  %547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %546)  ; CBufferLoadLegacy(handle,regIndex)
  %548 = extractvalue %dx.types.CBufRet.f32 %547, 1
  %549 = fcmp fast ogt float %523, %548
  %550 = zext i1 %549 to i32
  %551 = add nuw nsw i32 %550, %544
  %552 = or i32 %539, 2
  %553 = add nuw nsw i32 %552, 48
  %554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %553)  ; CBufferLoadLegacy(handle,regIndex)
  %555 = extractvalue %dx.types.CBufRet.f32 %554, 1
  %556 = fcmp fast ogt float %523, %555
  %557 = zext i1 %556 to i32
  %558 = add nuw nsw i32 %551, %557
  %559 = add i32 %408, -1
  %560 = call i32 @dx.op.binary.i32(i32 40, i32 %558, i32 %559)  ; UMin(a,b)
  %561 = add i32 %539, %560
  %562 = call i32 @dx.op.binary.i32(i32 40, i32 %561, i32 12)  ; UMin(a,b)
  %563 = add i32 %562, 48
  %564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %563)  ; CBufferLoadLegacy(handle,regIndex)
  %565 = extractvalue %dx.types.CBufRet.f32 %564, 0
  %566 = fcmp fast oge float %523, %565
  %567 = zext i1 %566 to i32
  %568 = call i32 @dx.op.binary.i32(i32 40, i32 %408, i32 %538)  ; UMin(a,b)
  %569 = call i32 @dx.op.binary.i32(i32 40, i32 %567, i32 %568)  ; UMin(a,b)
  br label %570

; <label>:570                                     ; preds = %524, %510
  %571 = phi i32 [ %562, %524 ], [ 0, %510 ]
  %572 = phi i32 [ %569, %524 ], [ 0, %510 ]
  %573 = add i32 %572, %408
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %773, label %575

; <label>:575                                     ; preds = %570
  br label %576

; <label>:576                                     ; preds = %742, %575
  %577 = phi float [ %769, %742 ], [ 0.000000e+00, %575 ]
  %578 = phi float [ %761, %742 ], [ 0.000000e+00, %575 ]
  %579 = phi float [ %762, %742 ], [ 0.000000e+00, %575 ]
  %580 = phi i32 [ %592, %742 ], [ %571, %575 ]
  %581 = phi i32 [ %770, %742 ], [ 0, %575 ]
  %582 = add i32 %581, %580
  br i1 %509, label %583, label %591

; <label>:583                                     ; preds = %576
  %584 = and i32 %582, -4
  %585 = add i32 %584, %408
  %586 = icmp uge i32 %582, %585
  %587 = sub i32 4, %408
  %588 = select i1 %586, i32 %587, i32 0
  %589 = add i32 %588, %580
  %590 = add i32 %588, %582
  br label %591

; <label>:591                                     ; preds = %583, %576
  %592 = phi i32 [ %589, %583 ], [ %580, %576 ]
  %593 = phi i32 [ %590, %583 ], [ %582, %576 ]
  %594 = and i32 %593, 3
  %595 = select i1 %509, i32 %594, i32 %581
  %596 = lshr i32 %593, 2
  %597 = select i1 %509, i32 %596, i32 0
  %598 = add i32 %593, 32
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %598)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %603 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %604 = fmul fast float %600, %523
  %605 = fadd fast float %604, %601
  %606 = call float @dx.op.unary.f32(i32 7, float %605)  ; Saturate(value)
  %607 = fmul fast float %602, %523
  %608 = fadd fast float %607, %603
  %609 = call float @dx.op.unary.f32(i32 7, float %608)  ; Saturate(value)
  %610 = call float @dx.op.binary.f32(i32 36, float %606, float %609)  ; FMin(a,b)
  %611 = select i1 %509, float %610, float 1.000000e+00
  %612 = mul i32 %595, 72
  %613 = add i32 %425, %612
  %614 = add i32 %613, 16
  %615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.f32 %615, 0
  %617 = extractvalue %dx.types.ResRet.f32 %615, 1
  %618 = extractvalue %dx.types.ResRet.f32 %615, 2
  %619 = extractvalue %dx.types.ResRet.f32 %615, 3
  %620 = add i32 %613, 36
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = add i32 %613, 56
  %624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = fmul fast float %307, 3.906250e-03
  %627 = fmul fast float %626, %424
  %628 = fmul fast float %627, %622
  %629 = fmul fast float %628, %625
  %630 = extractvalue %dx.types.ResRet.f32 %624, 1
  %631 = fadd fast float %629, %630
  %632 = call float @dx.op.binary.f32(i32 35, float %631, float 0.000000e+00)  ; FMax(a,b)
  %633 = add i32 %613, 32
  %634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.f32 %634, 0
  br i1 %507, label %636, label %669

; <label>:636                                     ; preds = %591
  %637 = fmul fast float %622, %302
  %638 = fmul fast float %622, %303
  %639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.f32 %639, 1
  %641 = add i32 %613, 40
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = extractvalue %dx.types.ResRet.f32 %642, 3
  %647 = fadd fast float %640, %156
  %648 = fadd fast float %647, %645
  %649 = fmul fast float %647, %644
  %650 = call float @dx.op.unary.f32(i32 29, float %649)  ; Round_z(value)
  %651 = fmul fast float %643, %650
  %652 = fsub fast float %647, %651
  %653 = fmul fast float %648, %644
  %654 = call float @dx.op.unary.f32(i32 29, float %653)  ; Round_z(value)
  %655 = fmul fast float %654, %643
  %656 = fsub fast float %648, %655
  %657 = fmul fast float %652, %637
  %658 = fmul fast float %652, %638
  %659 = fmul fast float %656, %637
  %660 = fmul fast float %656, %638
  %661 = fsub fast float %516, %657
  %662 = fsub fast float %517, %658
  %663 = fsub fast float %516, %659
  %664 = fsub fast float %517, %660
  %665 = fsub fast float %645, %652
  %666 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %667 = fmul fast float %666, %646
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %636, %591
  %670 = phi float [ %661, %636 ], [ %516, %591 ]
  %671 = phi float [ %662, %636 ], [ %517, %591 ]
  %672 = phi float [ %663, %636 ], [ %516, %591 ]
  %673 = phi float [ %664, %636 ], [ %517, %591 ]
  %674 = phi float [ %668, %636 ], [ 0.000000e+00, %591 ]
  %675 = fmul fast float %402, 4.000000e+00
  %676 = uitofp i32 %597 to float
  %677 = fadd fast float %676, %675
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %681 = extractvalue %dx.types.CBufRet.f32 %678, 2
  %682 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %683 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 0
  store float %679, float* %683, align 4
  %684 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 1
  store float %680, float* %684, align 4
  %685 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 2
  store float %681, float* %685, align 4
  %686 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 3
  store float %682, float* %686, align 4
  %687 = getelementptr inbounds [4 x float], [4 x float]* %50, i32 0, i32 %597
  %688 = load float, float* %687, align 4, !tbaa !90, !noalias !94
  %689 = fmul fast float %688, %405
  %690 = select i1 %509, float %689, float %405
  %691 = fmul fast float %670, %616
  %692 = call float @dx.op.tertiary.f32(i32 46, float %617, float %671, float %691)  ; FMad(a,b,c)
  %693 = fmul fast float %670, %618
  %694 = call float @dx.op.tertiary.f32(i32 46, float %619, float %671, float %693)  ; FMad(a,b,c)
  %695 = add i32 %613, 8
  %696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = fadd fast float %697, %692
  %700 = fadd fast float %698, %694
  %701 = fmul fast float %699, %690
  %702 = fmul fast float %700, %690
  %703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.f32 %703, 0
  %705 = extractvalue %dx.types.ResRet.f32 %703, 1
  %706 = fmul fast float %701, %704
  %707 = fmul fast float %702, %705
  %708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.f32 %708, 2
  %710 = fadd fast float %706, %709
  %711 = fadd fast float %707, %709
  %712 = fmul fast float %672, %616
  %713 = call float @dx.op.tertiary.f32(i32 46, float %617, float %673, float %712)  ; FMad(a,b,c)
  %714 = fmul fast float %672, %618
  %715 = call float @dx.op.tertiary.f32(i32 46, float %619, float %673, float %714)  ; FMad(a,b,c)
  %716 = fadd fast float %697, %713
  %717 = fadd fast float %698, %715
  %718 = fmul fast float %716, %690
  %719 = fmul fast float %717, %690
  %720 = fmul fast float %718, %704
  %721 = fmul fast float %719, %705
  %722 = fadd fast float %720, %709
  %723 = fadd fast float %721, %709
  %724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %710, float %711, float %677, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 3
  %728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %44, float %722, float %723, float %677, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %507, label %729, label %742

; <label>:729                                     ; preds = %669
  %730 = extractvalue %dx.types.ResRet.f32 %728, 3
  %731 = extractvalue %dx.types.ResRet.f32 %728, 1
  %732 = extractvalue %dx.types.ResRet.f32 %728, 0
  %733 = fsub fast float %732, %725
  %734 = fsub fast float %731, %726
  %735 = fsub fast float %730, %727
  %736 = fmul fast float %733, %674
  %737 = fmul fast float %734, %674
  %738 = fmul fast float %735, %674
  %739 = fadd fast float %736, %725
  %740 = fadd fast float %737, %726
  %741 = fadd fast float %738, %727
  br label %742

; <label>:742                                     ; preds = %729, %669
  %743 = phi float [ %739, %729 ], [ %725, %669 ]
  %744 = phi float [ %740, %729 ], [ %726, %669 ]
  %745 = phi float [ %741, %729 ], [ %727, %669 ]
  %746 = fmul fast float %743, 2.000000e+00
  %747 = fmul fast float %744, 2.000000e+00
  %748 = fadd fast float %746, -1.000000e+00
  %749 = fadd fast float %747, -1.000000e+00
  %750 = fmul fast float %748, %616
  %751 = call float @dx.op.tertiary.f32(i32 46, float %749, float %618, float %750)  ; FMad(a,b,c)
  %752 = fmul fast float %748, %617
  %753 = call float @dx.op.tertiary.f32(i32 46, float %749, float %619, float %752)  ; FMad(a,b,c)
  %754 = fmul fast float %611, %512
  %755 = fmul fast float %754, %632
  %756 = fmul fast float %755, %635
  %757 = fmul fast float %751, %756
  %758 = fmul fast float %757, %704
  %759 = fmul fast float %753, %756
  %760 = fmul fast float %759, %705
  %761 = fadd fast float %758, %578
  %762 = fadd fast float %760, %579
  %763 = add i32 %613, 64
  %764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = fmul fast float %765, %745
  %767 = extractvalue %dx.types.ResRet.f32 %764, 1
  %768 = fadd fast float %766, %767
  %769 = call float @dx.op.binary.f32(i32 35, float %577, float %768)  ; FMax(a,b)
  %770 = add nuw i32 %581, 1
  %771 = icmp eq i32 %770, %573
  br i1 %771, label %772, label %576

; <label>:772                                     ; preds = %742
  br label %773

; <label>:773                                     ; preds = %772, %570
  %774 = phi float [ 0.000000e+00, %570 ], [ %769, %772 ]
  %775 = phi float [ 0.000000e+00, %570 ], [ %761, %772 ]
  %776 = phi float [ 0.000000e+00, %570 ], [ %762, %772 ]
  %777 = call float @dx.op.dot3.f32(i32 55, float %775, float %776, float 1.000000e+00, float %775, float %776, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %778 = call float @dx.op.unary.f32(i32 25, float %777)  ; Rsqrt(value)
  %779 = fmul fast float %778, %775
  %780 = fmul fast float %778, %776
  %781 = fmul fast float %774, %444
  %782 = fadd fast float %781, %445
  %783 = call float @dx.op.unary.f32(i32 7, float %782)  ; Saturate(value)
  %784 = fmul float %778, 5.000000e-01
  %785 = fadd float %784, 5.000000e-01
  br label %786

; <label>:786                                     ; preds = %773, %388
  %787 = phi float [ %779, %773 ], [ 0.000000e+00, %388 ]
  %788 = phi float [ %780, %773 ], [ 0.000000e+00, %388 ]
  %789 = phi float [ %785, %773 ], [ 5.000000e-01, %388 ]
  %790 = phi float [ %783, %773 ], [ 0.000000e+00, %388 ]
  %791 = fadd fast float %790, %499
  %792 = icmp ne i32 %408, 0
  %793 = fcmp fast ogt float %790, 0.000000e+00
  %794 = icmp ne i32 %486, 0
  %795 = icmp ne i32 %471, 0
  %796 = and i1 %794, %795
  br i1 %796, label %797, label %860

; <label>:797                                     ; preds = %786
  %798 = add i32 %471, 0
  %799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %801 = extractvalue %dx.types.CBufRet.f32 %800, 1
  %802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %803 = extractvalue %dx.types.CBufRet.f32 %802, 0
  %804 = extractvalue %dx.types.CBufRet.f32 %802, 1
  %805 = fadd fast float %803, %116
  %806 = fadd fast float %804, %117
  %807 = fmul fast float %805, %429
  %808 = fmul fast float %806, %429
  %809 = fmul fast float %801, %430
  %810 = fmul fast float %801, %431
  %811 = fadd fast float %807, %809
  %812 = fadd fast float %808, %810
  %813 = fmul fast float %805, %435
  %814 = fmul fast float %806, %435
  %815 = fmul fast float %801, %436
  %816 = fmul fast float %801, %437
  %817 = fadd fast float %813, %815
  %818 = fadd fast float %814, %816
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %819, float %811, float %812, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = extractvalue %dx.types.ResRet.f32 %820, 1
  %823 = extractvalue %dx.types.ResRet.f32 %820, 2
  %824 = extractvalue %dx.types.ResRet.f32 %820, 3
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %799, %dx.types.Handle %819, float %817, float %818, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  %830 = fmul fast float %821, %474
  %831 = fadd fast float %830, %475
  %832 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %833 = fadd fast float %822, %824
  %834 = fmul fast float %833, %476
  %835 = fsub fast float %834, %476
  %836 = fsub fast float %822, %824
  %837 = fmul fast float %826, %474
  %838 = fadd fast float %837, %475
  %839 = call float @dx.op.unary.f32(i32 7, float %838)  ; Saturate(value)
  %840 = fadd fast float %827, %829
  %841 = fmul fast float %840, %476
  %842 = fsub fast float %841, %476
  %843 = fsub fast float %827, %829
  %844 = fmul fast float %835, %428
  %845 = fmul fast float %836, %428
  %846 = fmul fast float %842, %434
  %847 = fmul fast float %843, %434
  %848 = fmul fast float %823, %428
  %849 = fmul fast float %828, %434
  %850 = fmul fast float %832, %428
  %851 = fmul fast float %839, %434
  %852 = fadd fast float %851, %850
  %853 = fadd fast float %844, %787
  %854 = fadd fast float %853, %846
  %855 = fadd fast float %847, %845
  %856 = fmul fast float %855, %476
  %857 = fadd fast float %856, %788
  %858 = fadd fast float %848, 1.000000e+00
  %859 = fadd fast float %858, %849
  br label %860

; <label>:860                                     ; preds = %797, %786
  %861 = phi float [ %854, %797 ], [ %787, %786 ]
  %862 = phi float [ %857, %797 ], [ %788, %786 ]
  %863 = phi float [ %859, %797 ], [ 1.000000e+00, %786 ]
  %864 = phi float [ %852, %797 ], [ %417, %786 ]
  %865 = fmul fast float %461, %307
  %866 = fadd fast float %865, %462
  %867 = call float @dx.op.binary.f32(i32 35, float %866, float 0.000000e+00)  ; FMax(a,b)
  %868 = fmul fast float %867, %457
  %869 = fadd fast float %868, %458
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = fmul fast float %870, %791
  %872 = and i32 %399, 2
  %873 = and i32 %399, 16
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %941, label %875

; <label>:875                                     ; preds = %860
  %876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %877 = extractvalue %dx.types.CBufRet.f32 %876, 0
  %878 = extractvalue %dx.types.CBufRet.f32 %876, 1
  %879 = fadd fast float %877, %116
  %880 = fadd fast float %878, %117
  %881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.f32 %881, 0
  %883 = extractvalue %dx.types.CBufRet.f32 %881, 1
  %884 = fsub fast float %879, %882
  %885 = fsub fast float %880, %883
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 2
  %888 = fmul fast float %884, %887
  %889 = fmul fast float %885, %887
  %890 = fadd fast float %888, 5.000000e-01
  %891 = fadd fast float %889, 5.000000e-01
  %892 = fcmp fast olt float %890, 0.000000e+00
  %893 = fcmp fast olt float %891, 0.000000e+00
  %894 = or i1 %892, %893
  %895 = fcmp fast oge float %890, 1.000000e+00
  %896 = fcmp fast oge float %891, 1.000000e+00
  %897 = or i1 %895, %896
  %898 = or i1 %894, %897
  br i1 %898, label %932, label %899

; <label>:899                                     ; preds = %875
  %900 = extractvalue %dx.types.CBufRet.f32 %876, 2
  %901 = fadd fast float %900, %118
  %902 = fmul fast float %887, %879
  %903 = fmul fast float %887, %880
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %906 = fsub fast float %901, %905
  %907 = extractvalue %dx.types.CBufRet.f32 %904, 1
  %908 = fmul fast float %906, %907
  %909 = call float @dx.op.unary.f32(i32 7, float %908)  ; Saturate(value)
  %910 = call float @dx.op.binary.f32(i32 36, float %891, float %909)  ; FMin(a,b)
  %911 = call float @dx.op.binary.f32(i32 36, float %890, float %910)  ; FMin(a,b)
  %912 = call float @dx.op.binary.f32(i32 35, float %891, float %909)  ; FMax(a,b)
  %913 = call float @dx.op.binary.f32(i32 35, float %890, float %912)  ; FMax(a,b)
  %914 = fsub fast float 1.000000e+00, %913
  %915 = call float @dx.op.binary.f32(i32 36, float %911, float %914)  ; FMin(a,b)
  %916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %917 = extractvalue %dx.types.CBufRet.f32 %916, 3
  %918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %919 = extractvalue %dx.types.CBufRet.f32 %918, 1
  %920 = call float @dx.op.binary.f32(i32 35, float %919, float %917)  ; FMax(a,b)
  %921 = fsub fast float %920, %919
  %922 = fsub fast float %915, %919
  %923 = fdiv fast float %922, %921
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  %925 = fmul fast float %924, 2.000000e+00
  %926 = fsub fast float 3.000000e+00, %925
  %927 = fmul fast float %924, %924
  %928 = fmul fast float %927, %926
  %929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %44, float %902, float %903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %930 = extractvalue %dx.types.ResRet.f32 %929, 0
  %931 = fmul fast float %928, %930
  br label %932

; <label>:932                                     ; preds = %899, %875
  %933 = phi float [ %931, %899 ], [ 0.000000e+00, %875 ]
  %934 = fmul fast float %468, %191
  %935 = fmul fast float %468, %192
  %936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %501, %dx.types.Handle %936, float %934, float %935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = fmul fast float %938, %933
  %940 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %939)  ; FMax(a,b)
  br label %941

; <label>:941                                     ; preds = %932, %860
  %942 = phi float [ %940, %932 ], [ 0.000000e+00, %860 ]
  %943 = fmul fast float %192, 3.906250e-03
  %944 = fmul fast float %191, 7.812500e-03
  %945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %946 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %501, %dx.types.Handle %945, float %944, float %943, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %947 = add i32 %482, 0
  %948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %947, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %949 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %948, i32 0)  ; GetDimensions(handle,mipLevel)
  %950 = extractvalue %dx.types.Dimensions %949, 0
  %951 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %950)  ; FirstbitLo(value)
  %952 = uitofp i32 %951 to float
  %953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %954 = extractvalue %dx.types.CBufRet.f32 %953, 1
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %957 = fadd fast float %201, -7.000000e+00
  %958 = fadd fast float %957, %952
  %959 = fadd fast float %958, %954
  %960 = fadd fast float %959, %956
  %961 = call float @dx.op.binary.f32(i32 35, float %960, float 0.000000e+00)  ; FMax(a,b)
  %962 = and i32 %399, 8
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %980, label %964

; <label>:964                                     ; preds = %941
  %965 = fadd fast float %465, 1.000000e+00
  %966 = fmul fast float %791, %965
  %967 = fsub fast float %966, %465
  %968 = fsub fast float %965, %967
  %969 = call float @dx.op.unary.f32(i32 7, float %968)  ; Saturate(value)
  %970 = fsub fast float 1.000000e+00, %966
  %971 = call float @dx.op.unary.f32(i32 7, float %970)  ; Saturate(value)
  %972 = fsub fast float %969, %971
  %973 = fsub fast float %942, %971
  %974 = fdiv fast float %973, %972
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fmul fast float %975, 2.000000e+00
  %977 = fsub fast float 3.000000e+00, %976
  %978 = fmul fast float %975, %975
  %979 = fmul fast float %978, %977
  br label %980

; <label>:980                                     ; preds = %964, %941
  %981 = phi float [ %979, %964 ], [ %942, %941 ]
  %982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %983 = extractvalue %dx.types.CBufRet.f32 %982, 3
  %984 = fmul fast float %983, %981
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = and i32 %399, 32
  %987 = icmp eq i32 %986, 0
  br i1 %987, label %1004, label %988

; <label>:988                                     ; preds = %980
  %989 = add i32 %485, 0
  %990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %989, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %990, %dx.types.Handle %45, float %984, float %454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %992 = extractvalue %dx.types.ResRet.f32 %991, 0
  %993 = extractvalue %dx.types.ResRet.f32 %991, 1
  %994 = extractvalue %dx.types.ResRet.f32 %991, 2
  %995 = extractvalue %dx.types.ResRet.f32 %991, 3
  %996 = and i32 %479, 255
  %997 = uitofp i32 %996 to float
  %998 = lshr i32 %479, 8
  %999 = and i32 %998, 255
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %995, %997
  %1002 = fadd fast float %1001, %1000
  %1003 = fmul fast float %1002, 0x3F70101000000000
  br label %1004

; <label>:1004                                    ; preds = %988, %980
  %1005 = phi float [ %992, %988 ], [ %448, %980 ]
  %1006 = phi float [ %993, %988 ], [ %449, %980 ]
  %1007 = phi float [ %994, %988 ], [ %450, %980 ]
  %1008 = phi float [ %1003, %988 ], [ %451, %980 ]
  %1009 = fsub fast float %1005, %411
  %1010 = fsub fast float %1006, %412
  %1011 = fsub fast float %1007, %413
  %1012 = fmul fast float %1009, %984
  %1013 = fmul fast float %1010, %984
  %1014 = fmul fast float %1011, %984
  %1015 = fadd fast float %1012, %411
  %1016 = fadd fast float %1013, %412
  %1017 = fadd fast float %1014, %413
  %1018 = fsub fast float %1008, %414
  %1019 = fmul fast float %1018, %984
  %1020 = fadd fast float %1019, %414
  %1021 = fsub fast float %417, %864
  %1022 = fmul fast float %984, %1021
  %1023 = fadd fast float %1022, %864
  %1024 = fsub fast float 1.000000e+00, %863
  %1025 = fmul fast float %984, %1024
  %1026 = fadd fast float %1025, %863
  %1027 = fmul fast float %420, %333
  %1028 = fadd fast float %1027, %421
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 2
  %1031 = fcmp fast oge float %1028, %1030
  %1032 = and i32 %141, 65535
  %1033 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1032)  ; LegacyF16ToF32(value)
  %1034 = lshr i32 %143, 16
  %1035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1034)  ; LegacyF16ToF32(value)
  %1036 = fadd fast float %1015, %1033
  %1037 = fadd fast float %1016, %1035
  %1038 = fadd fast float %1017, %1033
  %1039 = fadd fast float %1020, %1035
  %1040 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1036)  ; LegacyF32ToF16(value)
  %1041 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1037)  ; LegacyF32ToF16(value)
  %1042 = shl i32 %1041, 16
  %1043 = or i32 %1042, %1040
  %1044 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1038)  ; LegacyF32ToF16(value)
  %1045 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1039)  ; LegacyF32ToF16(value)
  %1046 = shl i32 %1045, 16
  %1047 = or i32 %1046, %1044
  %1048 = fadd fast float %1026, %1033
  %1049 = fadd fast float %1023, %1035
  %1050 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1048)  ; LegacyF32ToF16(value)
  %1051 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1049)  ; LegacyF32ToF16(value)
  %1052 = shl i32 %1051, 16
  %1053 = or i32 %1052, %1050
  %1054 = fcmp fast ogt float %1028, 0.000000e+00
  %1055 = select i1 %1054, float 1.000000e+00, float 0.000000e+00
  %1056 = fadd fast float %1033, %1028
  %1057 = fadd fast float %1035, %1055
  %1058 = call float @dx.op.unary.f32(i32 7, float %1056)  ; Saturate(value)
  %1059 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1060 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1058)  ; LegacyF32ToF16(value)
  %1061 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1059)  ; LegacyF32ToF16(value)
  %1062 = shl i32 %1061, 16
  %1063 = or i32 %1062, %1060
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 2
  %1066 = fmul fast float %1065, 0x3FE3C6EF40000000
  %1067 = frem fast float %72, 2.560000e+02
  %1068 = frem fast float %73, 2.560000e+02
  %1069 = fptoui float %1067 to i32
  %1070 = fptoui float %1068 to i32
  %1071 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %1069, i32 %1070, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = fadd fast float %1072, %1066
  %1075 = fadd fast float %1073, %1066
  %1076 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1077 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1078 = fcmp fast ogt float %82, 0.000000e+00
  %1079 = fcmp fast olt float %82, 0.000000e+00
  %1080 = zext i1 %1078 to i32
  %1081 = zext i1 %1079 to i32
  %1082 = sub nsw i32 %1080, %1081
  %1083 = sitofp i32 %1082 to float
  %1084 = fadd fast float %1083, %82
  %1085 = fdiv fast float -1.000000e+00, %1084
  %1086 = fmul fast float %78, %80
  %1087 = fmul fast float %1086, %1085
  %1088 = fmul fast float %78, %78
  %1089 = fmul fast float %1088, %1083
  %1090 = fmul fast float %1089, %1085
  %1091 = fadd fast float %1090, 1.000000e+00
  %1092 = fmul fast float %1087, %1083
  %1093 = fmul fast float %1083, %78
  %1094 = fsub fast float -0.000000e+00, %1093
  %1095 = fmul fast float %80, %80
  %1096 = fmul fast float %1095, %1085
  %1097 = fadd fast float %1096, %1083
  %1098 = fsub fast float -0.000000e+00, %80
  %1099 = and i32 %1040, 65535
  %1100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1099)  ; LegacyF16ToF32(value)
  %1101 = lshr i32 %1043, 16
  %1102 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1101)  ; LegacyF16ToF32(value)
  %1103 = and i32 %1044, 65535
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = lshr i32 %1047, 16
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = and i32 %1050, 65535
  %1108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1107)  ; LegacyF16ToF32(value)
  %1109 = lshr i32 %1053, 16
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = call float @dx.op.unary.f32(i32 7, float %1110)  ; Saturate(value)
  %1112 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %1113 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %1114 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1115 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %1116 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %1117 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1118 = fadd fast float %1112, %116
  %1119 = fadd fast float %1113, %117
  %1120 = fadd fast float %1114, %118
  %1121 = fadd fast float %1115, %116
  %1122 = fadd fast float %1116, %117
  %1123 = fadd fast float %1117, %118
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1130 = extractvalue %dx.types.CBufRet.f32 %1128, 3
  %1131 = fmul fast float %1125, %72
  %1132 = fmul fast float %1131, %1129
  %1133 = fmul fast float %1126, %73
  %1134 = fmul fast float %1133, %1130
  %1135 = fptoui float %1132 to i32
  %1136 = fptoui float %1134 to i32
  %1137 = fadd fast float %1125, -1.000000e+00
  %1138 = fadd fast float %1126, -1.000000e+00
  %1139 = fptoui float %1137 to i32
  %1140 = fptoui float %1138 to i32
  %1141 = call i32 @dx.op.binary.i32(i32 40, i32 %1135, i32 %1139)  ; UMin(a,b)
  %1142 = call i32 @dx.op.binary.i32(i32 40, i32 %1136, i32 %1140)  ; UMin(a,b)
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 2
  %1145 = extractvalue %dx.types.CBufRet.f32 %1143, 3
  %1146 = fmul fast float %1144, %69
  %1147 = fsub fast float %1146, %1145
  %1148 = fadd fast float %1127, -1.000000e+00
  %1149 = call float @dx.op.binary.f32(i32 36, float %1147, float %1148)  ; FMin(a,b)
  %1150 = fptoui float %1149 to i32
  %1151 = fptoui float %1125 to i32
  %1152 = fptoui float %1126 to i32
  %1153 = mul i32 %1150, %1152
  %1154 = add i32 %1153, %1142
  %1155 = mul i32 %1154, %1151
  %1156 = add i32 %1155, %1141
  %1157 = shl i32 %1156, 2
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 1023
  %1161 = lshr i32 %1159, 10
  %1162 = icmp eq i32 %1160, 0
  br i1 %1162, label %1558, label %1163

; <label>:1163                                    ; preds = %1004
  %1164 = and i32 %1159, 1023
  br label %1165

; <label>:1165                                    ; preds = %1286, %1163
  %1166 = phi float [ %1287, %1286 ], [ 0.000000e+00, %1163 ]
  %1167 = phi float [ %1288, %1286 ], [ 0.000000e+00, %1163 ]
  %1168 = phi float [ %1289, %1286 ], [ 0.000000e+00, %1163 ]
  %1169 = phi float [ %1290, %1286 ], [ %861, %1163 ]
  %1170 = phi float [ %1291, %1286 ], [ %862, %1163 ]
  %1171 = phi float [ %1292, %1286 ], [ %1108, %1163 ]
  %1172 = phi float [ %1293, %1286 ], [ %1111, %1163 ]
  %1173 = phi float [ %1294, %1286 ], [ 0.000000e+00, %1163 ]
  %1174 = phi float [ %1295, %1286 ], [ %1106, %1163 ]
  %1175 = phi float [ %1296, %1286 ], [ %1100, %1163 ]
  %1176 = phi float [ %1297, %1286 ], [ %1102, %1163 ]
  %1177 = phi float [ %1298, %1286 ], [ %1104, %1163 ]
  %1178 = phi i32 [ %1299, %1286 ], [ 0, %1163 ]
  %1179 = phi i32 [ %1235, %1286 ], [ 0, %1163 ]
  %1180 = add nuw nsw i32 %1179, %1161
  %1181 = shl i32 %1180, 2
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1181, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = shl i32 %1183, 8
  %1185 = or i32 %1184, 48
  %1186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.f32 %1186, 0
  %1188 = extractvalue %dx.types.ResRet.f32 %1186, 1
  %1189 = extractvalue %dx.types.ResRet.f32 %1186, 2
  %1190 = extractvalue %dx.types.ResRet.f32 %1186, 3
  %1191 = or i32 %1184, 64
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1191, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = extractvalue %dx.types.ResRet.i32 %1192, 1
  %1195 = or i32 %1184, 80
  %1196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1195, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.f32 %1196, 2
  %1198 = extractvalue %dx.types.ResRet.f32 %1196, 3
  %1199 = or i32 %1184, 96
  %1200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.f32 %1200, 0
  %1202 = extractvalue %dx.types.ResRet.f32 %1200, 1
  %1203 = extractvalue %dx.types.ResRet.f32 %1200, 2
  %1204 = extractvalue %dx.types.ResRet.f32 %1200, 3
  %1205 = or i32 %1184, 112
  %1206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.f32 %1206, 2
  %1208 = or i32 %1184, 128
  %1209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = extractvalue %dx.types.ResRet.f32 %1209, 1
  %1212 = extractvalue %dx.types.ResRet.f32 %1209, 2
  %1213 = extractvalue %dx.types.ResRet.f32 %1209, 3
  %1214 = or i32 %1184, 144
  %1215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = extractvalue %dx.types.ResRet.f32 %1215, 3
  %1220 = or i32 %1184, 160
  %1221 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = or i32 %1184, 192
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %1225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = or i32 %1184, 208
  %1229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.f32 %1229, 0
  %1231 = or i32 %1184, 248
  %1232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1231, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = add nuw nsw i32 %1179, 1
  %1236 = bitcast float %1190 to i32
  %1237 = and i32 %1236, 512
  %1238 = icmp ne i32 %1237, 0
  %1239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  %1241 = extractvalue %dx.types.ResRet.f32 %1239, 1
  %1242 = extractvalue %dx.types.ResRet.f32 %1239, 2
  %1243 = extractvalue %dx.types.ResRet.f32 %1239, 3
  %1244 = call float @dx.op.dot4.f32(i32 56, float %1240, float %1241, float %1242, float %1243, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1245 = or i32 %1184, 16
  %1246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.f32 %1246, 0
  %1248 = extractvalue %dx.types.ResRet.f32 %1246, 1
  %1249 = extractvalue %dx.types.ResRet.f32 %1246, 2
  %1250 = extractvalue %dx.types.ResRet.f32 %1246, 3
  %1251 = call float @dx.op.dot4.f32(i32 56, float %1247, float %1248, float %1249, float %1250, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1252 = or i32 %1184, 32
  %1253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.f32 %1253, 0
  %1255 = extractvalue %dx.types.ResRet.f32 %1253, 1
  %1256 = extractvalue %dx.types.ResRet.f32 %1253, 2
  %1257 = extractvalue %dx.types.ResRet.f32 %1253, 3
  %1258 = call float @dx.op.dot4.f32(i32 56, float %1254, float %1255, float %1256, float %1257, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1259 = call float @dx.op.unary.f32(i32 27, float %1244)  ; Round_ni(value)
  %1260 = call float @dx.op.unary.f32(i32 6, float %1259)  ; FAbs(value)
  %1261 = call float @dx.op.unary.f32(i32 27, float %1251)  ; Round_ni(value)
  %1262 = call float @dx.op.unary.f32(i32 6, float %1261)  ; FAbs(value)
  %1263 = call float @dx.op.unary.f32(i32 6, float %1258)  ; FAbs(value)
  %1264 = call float @dx.op.unary.f32(i32 27, float %1263)  ; Round_ni(value)
  %1265 = fadd fast float %1262, %1260
  %1266 = fadd fast float %1265, %1264
  %1267 = fcmp fast oeq float %1266, 0.000000e+00
  %1268 = call float @dx.op.dot4.f32(i32 56, float %1240, float %1241, float %1242, float %1243, float %1118, float %1119, float %1120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1269 = call float @dx.op.dot4.f32(i32 56, float %1247, float %1248, float %1249, float %1250, float %1118, float %1119, float %1120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1270 = call float @dx.op.dot4.f32(i32 56, float %1240, float %1241, float %1242, float %1243, float %1121, float %1122, float %1123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1271 = call float @dx.op.dot4.f32(i32 56, float %1247, float %1248, float %1249, float %1250, float %1121, float %1122, float %1123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1272 = fsub fast float %1268, %1244
  %1273 = fsub fast float %1270, %1244
  %1274 = fsub fast float %1269, %1251
  %1275 = fsub fast float %1271, %1251
  %1276 = call float @dx.op.dot3.f32(i32 55, float %1187, float %1188, float %1189, float %78, float %80, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %1277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1278 = extractvalue %dx.types.CBufRet.f32 %1277, 2
  %1279 = call float @dx.op.unary.f32(i32 6, float %1276)  ; FAbs(value)
  %1280 = fadd fast float %1279, %1278
  %1281 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1277, 0
  %1283 = fcmp fast ogt float %1281, %1282
  %1284 = and i1 %1267, %1283
  %1285 = and i1 %1238, %1284
  br i1 %1285, label %1301, label %1286

; <label>:1286                                    ; preds = %1544, %1382, %1301, %1165
  %1287 = phi float [ %1166, %1301 ], [ %1166, %1382 ], [ %1554, %1544 ], [ %1166, %1165 ]
  %1288 = phi float [ %1167, %1301 ], [ %1167, %1382 ], [ %1555, %1544 ], [ %1167, %1165 ]
  %1289 = phi float [ %1168, %1301 ], [ %1168, %1382 ], [ %1556, %1544 ], [ %1168, %1165 ]
  %1290 = phi float [ %1169, %1301 ], [ %1169, %1382 ], [ %1518, %1544 ], [ %1169, %1165 ]
  %1291 = phi float [ %1170, %1301 ], [ %1170, %1382 ], [ %1519, %1544 ], [ %1170, %1165 ]
  %1292 = phi float [ %1171, %1301 ], [ %1171, %1382 ], [ %1513, %1544 ], [ %1171, %1165 ]
  %1293 = phi float [ %1172, %1301 ], [ %1172, %1382 ], [ %1510, %1544 ], [ %1172, %1165 ]
  %1294 = phi float [ %1173, %1301 ], [ %1173, %1382 ], [ %1507, %1544 ], [ %1173, %1165 ]
  %1295 = phi float [ %1174, %1301 ], [ %1174, %1382 ], [ %1505, %1544 ], [ %1174, %1165 ]
  %1296 = phi float [ %1175, %1301 ], [ %1175, %1382 ], [ %1500, %1544 ], [ %1175, %1165 ]
  %1297 = phi float [ %1176, %1301 ], [ %1176, %1382 ], [ %1501, %1544 ], [ %1176, %1165 ]
  %1298 = phi float [ %1177, %1301 ], [ %1177, %1382 ], [ %1502, %1544 ], [ %1177, %1165 ]
  %1299 = phi i32 [ %1309, %1301 ], [ %1309, %1382 ], [ %1309, %1544 ], [ %1178, %1165 ]
  %1300 = icmp eq i32 %1235, %1164
  br i1 %1300, label %1557, label %1165

; <label>:1301                                    ; preds = %1165
  %1302 = extractvalue %dx.types.ResRet.f32 %1206, 3
  %1303 = extractvalue %dx.types.ResRet.f32 %1206, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1206, 0
  %1305 = extractvalue %dx.types.ResRet.f32 %1196, 1
  %1306 = extractvalue %dx.types.ResRet.f32 %1196, 0
  %1307 = extractvalue %dx.types.ResRet.i32 %1192, 3
  %1308 = extractvalue %dx.types.ResRet.i32 %1192, 2
  %1309 = add i32 %1178, 1
  %1310 = add i32 %1307, 0
  %1311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1310, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1312 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1311, %dx.types.Handle %945, float %1244, float %1251, float undef, float undef, i32 0, i32 0, i32 undef, float %1272, float %1274, float undef, float %1273, float %1275, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = fmul fast float %1313, %1306
  %1315 = fadd fast float %1314, %1305
  %1316 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1317 = fmul fast float %1244, %1201
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1251, float %1317)  ; FMad(a,b,c)
  %1319 = fadd fast float %1318, %1304
  %1320 = fmul fast float %1244, %1203
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %1251, float %1320)  ; FMad(a,b,c)
  %1322 = fadd fast float %1321, %1303
  %1323 = fmul fast float %1272, %1201
  %1324 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1274, float %1323)  ; FMad(a,b,c)
  %1325 = fmul fast float %1272, %1203
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %1274, float %1325)  ; FMad(a,b,c)
  %1327 = fmul fast float %1273, %1201
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1202, float %1275, float %1327)  ; FMad(a,b,c)
  %1329 = fmul fast float %1273, %1203
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1204, float %1275, float %1329)  ; FMad(a,b,c)
  %1331 = add i32 %1308, 0
  %1332 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1331, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1333 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1332, %dx.types.Handle %945, float %1319, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float %1324, float %1326, float undef, float %1328, float %1330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  %1335 = and i32 %1236, 1024
  %1336 = icmp ne i32 %1335, 0
  %1337 = fcmp fast ogt float %1334, 0x3FE0101020000000
  %1338 = uitofp i1 %1337 to float
  %1339 = select i1 %1336, float %1338, float %1334
  %1340 = and i32 %1236, 8192
  %1341 = icmp ne i32 %1340, 0
  %1342 = select i1 %1341, float %1302, float 1.000000e+00
  %1343 = fmul fast float %1244, 2.000000e+00
  %1344 = fadd fast float %1343, -1.000000e+00
  %1345 = call float @dx.op.unary.f32(i32 6, float %1344)  ; FAbs(value)
  %1346 = fmul fast float %1345, %1233
  %1347 = fsub fast float %1346, %1233
  %1348 = call float @dx.op.unary.f32(i32 7, float %1347)  ; Saturate(value)
  %1349 = fmul fast float %1251, 2.000000e+00
  %1350 = fadd fast float %1349, -1.000000e+00
  %1351 = call float @dx.op.unary.f32(i32 6, float %1350)  ; FAbs(value)
  %1352 = fmul fast float %1351, %1234
  %1353 = fsub fast float %1352, %1234
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fmul fast float %1263, %1197
  %1356 = fsub fast float %1355, %1197
  %1357 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1358 = fmul fast float %1316, %1342
  %1359 = fmul fast float %1358, %1313
  %1360 = fmul fast float %1359, %1348
  %1361 = fmul fast float %1360, %1339
  %1362 = fmul fast float %1361, %1354
  %1363 = fmul fast float %1362, %1357
  %1364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.f32 %1364, 1
  %1366 = extractvalue %dx.types.CBufRet.f32 %1364, 0
  %1367 = fsub fast float %1281, %1366
  %1368 = fmul fast float %1367, %1365
  %1369 = call float @dx.op.unary.f32(i32 7, float %1368)  ; Saturate(value)
  %1370 = fmul fast float %1363, %1198
  %1371 = fadd fast float %1363, %1198
  %1372 = fmul fast float %1371, %1207
  %1373 = fsub fast float %1372, %1207
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = and i32 %1236, 128
  %1376 = icmp ne i32 %1375, 0
  %1377 = select i1 %1376, float %1374, float %1370
  %1378 = fmul fast float %1377, %1369
  %1379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.f32 %1379, 0
  %1381 = fcmp fast ugt float %1378, %1380
  br i1 %1381, label %1382, label %1286

; <label>:1382                                    ; preds = %1301
  br i1 %1341, label %1286, label %1383

; <label>:1383                                    ; preds = %1382
  %1384 = and i32 %1236, 4
  %1385 = and i32 %1236, 8
  %1386 = add i32 %1193, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1386, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1389 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1387, %dx.types.Handle %1388, float %1319, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float %1324, float %1326, float undef, float %1328, float %1330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1390 = extractvalue %dx.types.ResRet.f32 %1389, 0
  %1391 = extractvalue %dx.types.ResRet.f32 %1389, 1
  %1392 = extractvalue %dx.types.ResRet.f32 %1389, 2
  %1393 = extractvalue %dx.types.ResRet.f32 %1389, 3
  %1394 = bitcast float %1219 to i32
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = lshr i32 %1394, 8
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1393, %1396
  %1401 = fadd fast float %1400, %1399
  %1402 = fmul fast float %1401, 0x3F70101000000000
  %1403 = add i32 %1194, 0
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1404, %dx.types.Handle %1388, float %1319, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float %1324, float %1326, float undef, float %1328, float %1330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = extractvalue %dx.types.ResRet.f32 %1405, 3
  %1410 = bitcast float %1213 to i32
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1410, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = lshr i32 %1410, 16
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fmul fast float %1406, %1412
  %1421 = fadd fast float %1420, %1415
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = fadd fast float %1407, -5.000000e-01
  %1424 = fadd fast float %1409, -5.000000e-01
  %1425 = fmul fast float %1423, %1419
  %1426 = fmul fast float %1424, %1419
  %1427 = fadd fast float %1425, 5.000000e-01
  %1428 = fadd fast float %1426, 5.000000e-01
  %1429 = fmul fast float %1390, %1222
  %1430 = fmul fast float %1391, %1223
  %1431 = fmul fast float %1392, %1224
  %1432 = fmul fast float %1427, 2.000000e+00
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fmul fast float %1428, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = fadd fast float %1433, %1435
  %1437 = fmul fast float %1436, 5.000000e-01
  %1438 = fsub fast float %1433, %1435
  %1439 = fmul fast float %1438, 5.000000e-01
  %1440 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = call float @dx.op.unary.f32(i32 6, float %1439)  ; FAbs(value)
  %1443 = fsub fast float %1441, %1442
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1439, float %1443, float %1437, float %1439, float %1443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 25, float %1444)  ; Rsqrt(value)
  %1446 = fmul fast float %1437, %1445
  %1447 = fmul fast float %1439, %1445
  %1448 = fmul fast float %1445, %1443
  %1449 = fmul fast float %1448, %1187
  %1450 = fmul fast float %1448, %1188
  %1451 = fmul fast float %1448, %1189
  %1452 = fmul fast float %1446, %1210
  %1453 = fmul fast float %1446, %1211
  %1454 = fmul fast float %1446, %1212
  %1455 = fadd fast float %1452, %1449
  %1456 = fadd fast float %1453, %1450
  %1457 = fadd fast float %1454, %1451
  %1458 = fmul fast float %1447, %1216
  %1459 = fmul fast float %1447, %1217
  %1460 = fmul fast float %1447, %1218
  %1461 = fadd fast float %1455, %1458
  %1462 = fadd fast float %1456, %1459
  %1463 = fadd fast float %1457, %1460
  %1464 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1463, float %1461, float %1462, float %1463)  ; Dot3(ax,ay,az,bx,by,bz)
  %1465 = call float @dx.op.unary.f32(i32 25, float %1464)  ; Rsqrt(value)
  %1466 = fmul fast float %1461, %1465
  %1467 = fmul fast float %1462, %1465
  %1468 = fmul fast float %1463, %1465
  %1469 = fcmp fast ogt float %1276, %1282
  %1470 = fsub fast float -0.000000e+00, %1466
  %1471 = fsub fast float -0.000000e+00, %1467
  %1472 = fsub fast float -0.000000e+00, %1468
  %1473 = select i1 %1469, float %1466, float %1470
  %1474 = select i1 %1469, float %1467, float %1471
  %1475 = select i1 %1469, float %1468, float %1472
  %1476 = fmul fast float %1473, %1091
  %1477 = call float @dx.op.tertiary.f32(i32 46, float %1474, float %1092, float %1476)  ; FMad(a,b,c)
  %1478 = call float @dx.op.tertiary.f32(i32 46, float %1475, float %1094, float %1477)  ; FMad(a,b,c)
  %1479 = fmul fast float %1473, %1087
  %1480 = call float @dx.op.tertiary.f32(i32 46, float %1474, float %1097, float %1479)  ; FMad(a,b,c)
  %1481 = call float @dx.op.tertiary.f32(i32 46, float %1475, float %1098, float %1480)  ; FMad(a,b,c)
  %1482 = icmp ne i32 %1385, 0
  %1483 = select i1 %1482, float 1.000000e+00, float 0.000000e+00
  %1484 = fmul fast float %1378, %1483
  %1485 = and i32 %1236, 1
  %1486 = icmp ne i32 %1485, 0
  %1487 = fadd fast float %1478, %1169
  %1488 = fadd fast float %1481, %1170
  %1489 = select i1 %1486, float %1487, float %1478
  %1490 = select i1 %1486, float %1488, float %1481
  %1491 = icmp ne i32 %1384, 0
  %1492 = select i1 %1491, float 1.000000e+00, float 0.000000e+00
  %1493 = fmul fast float %1378, %1492
  %1494 = fsub fast float %1429, %1175
  %1495 = fsub fast float %1430, %1176
  %1496 = fsub fast float %1431, %1177
  %1497 = fmul fast float %1494, %1493
  %1498 = fmul fast float %1495, %1493
  %1499 = fmul fast float %1496, %1493
  %1500 = fadd fast float %1497, %1175
  %1501 = fadd fast float %1498, %1176
  %1502 = fadd fast float %1499, %1177
  %1503 = fsub fast float %1402, %1174
  %1504 = fmul fast float %1503, %1493
  %1505 = fadd fast float %1504, %1174
  %1506 = fadd fast float %1378, %1173
  %1507 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1508 = fsub fast float %1422, %1172
  %1509 = fmul fast float %1508, %1484
  %1510 = fadd fast float %1509, %1172
  %1511 = fsub fast float %1408, %1171
  %1512 = fmul fast float %1511, %1484
  %1513 = fadd fast float %1512, %1171
  %1514 = fsub fast float %1489, %1169
  %1515 = fsub fast float %1490, %1170
  %1516 = fmul fast float %1514, %1484
  %1517 = fmul fast float %1515, %1484
  %1518 = fadd fast float %1516, %1169
  %1519 = fadd fast float %1517, %1170
  %1520 = and i32 %1236, 16
  %1521 = icmp eq i32 %1520, 0
  br i1 %1521, label %1544, label %1522

; <label>:1522                                    ; preds = %1383
  %1523 = bitcast float %1230 to i32
  %1524 = add i32 %1227, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1525, %dx.types.Handle %1388, float %1319, float %1322, float undef, float undef, i32 0, i32 0, i32 undef, float %1324, float %1326, float undef, float %1328, float %1330, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = and i32 %1523, 65535
  %1531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1530)  ; LegacyF16ToF32(value)
  %1532 = fmul fast float %1527, %1222
  %1533 = fmul fast float %1528, %1223
  %1534 = fmul fast float %1529, %1224
  %1535 = and i32 %1236, 16384
  %1536 = icmp ne i32 %1535, 0
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = select i1 %1536, float %1538, float 1.000000e+00
  %1540 = fmul fast float %1539, %1531
  %1541 = fmul fast float %1532, %1540
  %1542 = fmul fast float %1533, %1540
  %1543 = fmul fast float %1534, %1540
  br label %1544

; <label>:1544                                    ; preds = %1522, %1383
  %1545 = phi float [ %1541, %1522 ], [ 0.000000e+00, %1383 ]
  %1546 = phi float [ %1542, %1522 ], [ 0.000000e+00, %1383 ]
  %1547 = phi float [ %1543, %1522 ], [ 0.000000e+00, %1383 ]
  %1548 = fsub fast float %1545, %1166
  %1549 = fsub fast float %1546, %1167
  %1550 = fsub fast float %1547, %1168
  %1551 = fmul fast float %1548, %1378
  %1552 = fmul fast float %1549, %1378
  %1553 = fmul fast float %1550, %1378
  %1554 = fadd fast float %1551, %1166
  %1555 = fadd fast float %1552, %1167
  %1556 = fadd fast float %1553, %1168
  br label %1286

; <label>:1557                                    ; preds = %1286
  br label %1558

; <label>:1558                                    ; preds = %1557, %1004
  %1559 = phi float [ 0.000000e+00, %1004 ], [ %1287, %1557 ]
  %1560 = phi float [ 0.000000e+00, %1004 ], [ %1288, %1557 ]
  %1561 = phi float [ 0.000000e+00, %1004 ], [ %1289, %1557 ]
  %1562 = phi float [ %861, %1004 ], [ %1290, %1557 ]
  %1563 = phi float [ %862, %1004 ], [ %1291, %1557 ]
  %1564 = phi float [ %1108, %1004 ], [ %1292, %1557 ]
  %1565 = phi float [ %1111, %1004 ], [ %1293, %1557 ]
  %1566 = phi float [ 0.000000e+00, %1004 ], [ %1294, %1557 ]
  %1567 = phi float [ %1106, %1004 ], [ %1295, %1557 ]
  %1568 = phi float [ %1100, %1004 ], [ %1296, %1557 ]
  %1569 = phi float [ %1102, %1004 ], [ %1297, %1557 ]
  %1570 = phi float [ %1104, %1004 ], [ %1298, %1557 ]
  %1571 = phi i32 [ 0, %1004 ], [ %1299, %1557 ]
  %1572 = uitofp i32 %1571 to float
  %1573 = fptoui float %1572 to i32
  %1574 = shl i32 %1573, 16
  %1575 = and i32 %1574, 16711680
  %1576 = call float @dx.op.dot2.f32(i32 54, float %1562, float %1563, float %1562, float %1563)  ; Dot2(ax,ay,bx,by)
  %1577 = fmul fast float %1576, 0x3FE3333340000000
  %1578 = fsub fast float 1.000000e+00, %1577
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1563, float %1578, float %1562, float %1563, float %1578)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = call float @dx.op.unary.f32(i32 25, float %1579)  ; Rsqrt(value)
  %1581 = fmul fast float %1580, %1562
  %1582 = fmul fast float %1580, %1563
  %1583 = fmul fast float %1578, %1580
  %1584 = fmul fast float %1583, %78
  %1585 = fmul fast float %1583, %80
  %1586 = fmul fast float %1583, %82
  %1587 = fmul fast float %1581, %1091
  %1588 = fmul fast float %1581, %1092
  %1589 = fmul fast float %1581, %1094
  %1590 = fadd fast float %1584, %1587
  %1591 = fadd fast float %1585, %1588
  %1592 = fadd fast float %1586, %1589
  %1593 = fmul fast float %1582, %1087
  %1594 = fmul fast float %1582, %1097
  %1595 = fmul fast float %1582, %1098
  %1596 = fadd fast float %1590, %1593
  %1597 = fadd fast float %1591, %1594
  %1598 = fadd fast float %1592, %1595
  %1599 = call float @dx.op.dot3.f32(i32 55, float %1596, float %1597, float %1598, float %1596, float %1597, float %1598)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = call float @dx.op.unary.f32(i32 25, float %1599)  ; Rsqrt(value)
  %1601 = fmul fast float %1596, %1600
  %1602 = fmul fast float %1597, %1600
  %1603 = fmul fast float %1598, %1600
  %1604 = fadd fast float %1567, 0xBFB99999A0000000
  %1605 = call float @dx.op.unary.f32(i32 7, float %1604)  ; Saturate(value)
  %1606 = fmul fast float %1605, 0x3FF1C71C80000000
  %1607 = call float @dx.op.binary.f32(i32 36, float %1567, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1608 = fsub fast float 1.000000e+00, %1606
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = fmul fast float %1609, %1568
  %1611 = fmul fast float %1609, %1569
  %1612 = fmul fast float %1609, %1570
  %1613 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1614 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1615 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  %1616 = fmul fast float %1606, %1568
  %1617 = fmul fast float %1606, %1569
  %1618 = fmul fast float %1606, %1570
  %1619 = fadd fast float %1616, %1607
  %1620 = fadd fast float %1617, %1607
  %1621 = fadd fast float %1618, %1607
  %1622 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1623 = call float @dx.op.unary.f32(i32 7, float %1620)  ; Saturate(value)
  %1624 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1625 = fmul fast float %1623, 0x401CF23780000000
  %1626 = fadd fast float %1625, 0x3FF32641C0000000
  %1627 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %1628 = call float @dx.op.unary.f32(i32 25, float %1627)  ; Rsqrt(value)
  %1629 = fmul fast float %1628, %116
  %1630 = fmul fast float %1628, %117
  %1631 = fmul fast float %1628, %118
  %1632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1632, 0
  %1634 = fdiv fast float 1.000000e+00, %1626
  %1635 = select i1 %58, float %1634, float %1626
  %1636 = fadd fast float %1635, -1.000000e+00
  %1637 = fadd fast float %1635, 1.000000e+00
  %1638 = fdiv fast float %1636, %1637
  %1639 = fmul fast float %1638, %1638
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1629, float %1630, float %1631, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = select i1 %58, float 0.000000e+00, float %1633
  %1642 = fadd fast float %1640, %1641
  %1643 = call float @dx.op.binary.f32(i32 35, float %1642, float -1.000000e+00)  ; FMax(a,b)
  %1644 = call float @dx.op.binary.f32(i32 36, float %1643, float 1.000000e+00)  ; FMin(a,b)
  %1645 = fmul fast float %1635, %1635
  %1646 = fmul fast float %1644, %1644
  %1647 = fsub fast float 1.000000e+00, %1646
  %1648 = fmul fast float %1645, %1647
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fcmp fast olt float %1635, 1.000000e+00
  %1651 = select i1 %1650, float %1646, float %1649
  %1652 = fcmp fast ogt float %1649, 0.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1639
  %1654 = call float @dx.op.unary.f32(i32 24, float %1651)  ; Sqrt(value)
  %1655 = fsub fast float 1.000000e+00, %1654
  %1656 = call float @dx.op.unary.f32(i32 23, float %1655)  ; Log(value)
  %1657 = fmul fast float %1656, 5.000000e+00
  %1658 = call float @dx.op.unary.f32(i32 21, float %1657)  ; Exp(value)
  %1659 = fmul fast float %1658, %1653
  %1660 = fadd fast float %1659, %1639
  %1661 = select i1 %1652, float %1660, float 1.000000e+00
  %1662 = fsub fast float -0.000000e+00, %1629
  %1663 = fsub fast float -0.000000e+00, %1630
  %1664 = fsub fast float -0.000000e+00, %1631
  %1665 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1665)  ; Saturate(value)
  %1667 = fsub fast float 1.000000e+00, %1622
  %1668 = fsub fast float 1.000000e+00, %1623
  %1669 = fsub fast float 1.000000e+00, %1624
  %1670 = fmul fast float %1661, %1667
  %1671 = fmul fast float %1661, %1668
  %1672 = fmul fast float %1661, %1669
  %1673 = fadd fast float %1670, %1622
  %1674 = fadd fast float %1671, %1623
  %1675 = fadd fast float %1672, %1624
  %1676 = and i32 %1060, 65535
  %1677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1676)  ; LegacyF16ToF32(value)
  %1678 = lshr i32 %1063, 16
  %1679 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1678)  ; LegacyF16ToF32(value)
  %1680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1681 = extractvalue %dx.types.CBufRet.f32 %1680, 1
  %1682 = fadd fast float %1681, %1677
  %1683 = call float @dx.op.unary.f32(i32 7, float %1682)  ; Saturate(value)
  %1684 = fcmp fast ogt float %1683, 0.000000e+00
  %1685 = call float @dx.op.unary.f32(i32 6, float %1666)  ; FAbs(value)
  %1686 = select i1 %1684, float %1685, float 0.000000e+00
  %1687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1683, float %1686, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1688 = extractvalue %dx.types.ResRet.f32 %1687, 0
  %1689 = extractvalue %dx.types.ResRet.f32 %1687, 1
  %1690 = extractvalue %dx.types.ResRet.f32 %1687, 2
  %1691 = fadd fast float %1688, -5.000000e-01
  %1692 = fadd fast float %1689, -5.000000e-01
  %1693 = fadd fast float %1690, -5.000000e-01
  %1694 = fmul fast float %1622, 4.000000e+00
  %1695 = fmul fast float %1694, %1667
  %1696 = fmul fast float %1695, %1679
  %1697 = fmul fast float %1696, %1691
  %1698 = fmul fast float %1623, 4.000000e+00
  %1699 = fmul fast float %1698, %1668
  %1700 = fmul fast float %1699, %1679
  %1701 = fmul fast float %1700, %1692
  %1702 = fmul fast float %1624, 4.000000e+00
  %1703 = fmul fast float %1702, %1669
  %1704 = fmul fast float %1703, %1679
  %1705 = fmul fast float %1704, %1693
  %1706 = fadd fast float %1673, %1697
  %1707 = fadd fast float %1674, %1701
  %1708 = fadd fast float %1675, %1705
  %1709 = call float @dx.op.unary.f32(i32 7, float %1706)  ; Saturate(value)
  %1710 = call float @dx.op.unary.f32(i32 7, float %1707)  ; Saturate(value)
  %1711 = call float @dx.op.unary.f32(i32 7, float %1708)  ; Saturate(value)
  %1712 = fptoui float %72 to i32
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = fmul fast float %1714, 5.000000e-01
  %1716 = fptoui float %1715 to i32
  %1717 = icmp eq i32 %1712, %1716
  %1718 = fptoui float %73 to i32
  %1719 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1720 = fmul fast float %1719, 5.000000e-01
  %1721 = fptoui float %1720 to i32
  %1722 = icmp eq i32 %1718, %1721
  %1723 = and i1 %1717, %1722
  br i1 %1723, label %1724, label %1741

; <label>:1724                                    ; preds = %1558
  %1725 = call float @dx.op.binary.f32(i32 35, float %1710, float %1711)  ; FMax(a,b)
  %1726 = call float @dx.op.binary.f32(i32 35, float %1709, float %1725)  ; FMax(a,b)
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 2
  %1732 = fadd fast float %1729, %116
  %1733 = fadd fast float %1730, %117
  %1734 = fadd fast float %1731, %118
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 3
  %1737 = call float @dx.op.unary.f32(i32 83, float %61)  ; DerivCoarseX(value)
  %1738 = call float @dx.op.unary.f32(i32 83, float %62)  ; DerivCoarseX(value)
  %1739 = call float @dx.op.unary.f32(i32 84, float %61)  ; DerivCoarseY(value)
  %1740 = call float @dx.op.unary.f32(i32 84, float %62)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1732, float %1733, float %1734, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %72, float %73, float %68, float %69, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %302, float %303, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %265, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %267, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %280, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %282, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1736, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1661, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1709, float %1710, float %1711, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1727, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %160, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %59, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %871, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %1737, float %1738, float %1739, float %1740, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %1741

; <label>:1741                                    ; preds = %1724, %1558
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 3
  %1744 = fmul fast float %1743, %1565
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  %1747 = fsub fast float 1.000000e+00, %1566
  %1748 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %1747)  ; FMin(a,b)
  %1749 = call float @dx.op.dot3.f32(i32 55, float %1622, float %1623, float %1624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1750 = fsub fast float 1.000000e+00, %1749
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = and i32 %1752, 255
  %1754 = uitofp i32 %1753 to float
  %1755 = lshr i32 %1752, 8
  %1756 = and i32 %1755, 255
  %1757 = uitofp i32 %1756 to float
  %1758 = fmul fast float %1757, %1750
  %1759 = fadd fast float %1758, %1754
  %1760 = fmul fast float %1759, 0x3F70101020000000
  %1761 = call float @dx.op.unary.f32(i32 7, float %1760)  ; Saturate(value)
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.i32 %1765, 3
  %1767 = and i32 %1766, 3
  %1768 = icmp ne i32 %1767, 0
  %1769 = and i32 %1766, 4
  %1770 = icmp ne i32 %1769, 0
  %1771 = and i1 %1768, %1770
  br i1 %1771, label %1772, label %1783

; <label>:1772                                    ; preds = %1741
  %1773 = extractvalue %dx.types.CBufRet.f32 %1764, 3
  %1774 = fmul fast float %1773, %73
  %1775 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1776 = fmul fast float %1775, %72
  %1777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %45, float %1776, float %1774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1778 = extractvalue %dx.types.ResRet.f32 %1777, 0
  %1779 = fsub fast float 1.000000e+00, %1778
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 0
  %1782 = fcmp fast olt float %1779, %1781
  br label %1786

; <label>:1783                                    ; preds = %1741
  %1784 = icmp eq i32 %1769, 0
  %1785 = and i1 %1768, %1784
  br label %1786

; <label>:1786                                    ; preds = %1783, %1772
  %1787 = phi i1 [ %1782, %1772 ], [ %1785, %1783 ]
  %1788 = select i1 %1787, float 0.000000e+00, float %1624
  %1789 = fmul fast float %1640, 2.000000e+00
  %1790 = fmul fast float %1789, %1601
  %1791 = fmul fast float %1789, %1602
  %1792 = fmul fast float %1789, %1603
  %1793 = fsub fast float %1629, %1790
  %1794 = fsub fast float %1630, %1791
  %1795 = fsub fast float %1631, %1792
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = bitcast float %1797 to i32
  %1799 = lshr i32 %1798, 8
  %1800 = and i32 %1799, 255
  %1801 = uitofp i32 %1800 to float
  %1802 = fptoui float %1801 to i32
  %1803 = and i32 %1802, 4
  %1804 = icmp ne i32 %1803, 0
  %1805 = select i1 %1804, float %1746, float 1.000000e+00
  %1806 = call float @dx.op.binary.f32(i32 36, float %1805, float 1.000000e+00)  ; FMin(a,b)
  %1807 = fsub fast float 1.000000e+00, %1806
  %1808 = bitcast float %1807 to i32
  %1809 = ashr i32 %1808, 1
  %1810 = add nsw i32 %1809, 532487669
  %1811 = bitcast i32 %1810 to float
  %1812 = fsub fast float 1.000000e+00, %1745
  %1813 = call float @dx.op.binary.f32(i32 35, float %1812, float 0x3F847AE140000000)  ; FMax(a,b)
  %1814 = fmul fast float %1813, %1813
  %1815 = fmul fast float %1814, %1814
  %1816 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1817 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %45, float %1811, float %1815, float %1816, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1818 = extractvalue %dx.types.ResRet.f32 %1817, 0
  %1819 = and i32 %1802, 1
  %1820 = icmp ne i32 %1819, 0
  %1821 = fsub fast float 1.000000e+00, %1805
  %1822 = bitcast float %1821 to i32
  %1823 = sub nsw i32 2129859010, %1822
  %1824 = bitcast i32 %1823 to float
  %1825 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1826 = extractvalue %dx.types.CBufRet.i32 %1825, 0
  %1827 = icmp eq i32 %1826, 1
  %1828 = select i1 %1827, float 0.000000e+00, float 1.000000e+00
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 0
  %1831 = fcmp fast ogt float %1830, 0.000000e+00
  %1832 = fcmp fast ogt float %1828, 0.000000e+00
  %1833 = and i1 %1831, %1832
  br i1 %1833, label %1834, label %2018, !dx.controlflow.hints !99

; <label>:1834                                    ; preds = %1786
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = extractvalue %dx.types.CBufRet.f32 %1835, 1
  %1838 = extractvalue %dx.types.CBufRet.f32 %1835, 2
  %1839 = fadd fast float %1836, %116
  %1840 = fadd fast float %1837, %117
  %1841 = fadd fast float %1838, %118
  %1842 = fmul fast float %1601, 3.200000e+01
  %1843 = fmul fast float %1602, 3.200000e+01
  %1844 = fadd fast float %1839, %1842
  %1845 = fadd fast float %1840, %1843
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.CBufRet.f32 %1846, 1
  %1849 = fsub fast float %1844, %1847
  %1850 = fsub fast float %1845, %1848
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.CBufRet.f32 %1851, 1
  %1854 = fmul fast float %1849, %1852
  %1855 = fmul fast float %1850, %1853
  %1856 = fmul fast float %116, %116
  %1857 = fmul fast float %117, %117
  %1858 = fadd fast float %1856, %1857
  %1859 = call float @dx.op.unary.f32(i32 24, float %1858)  ; Sqrt(value)
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = extractvalue %dx.types.CBufRet.f32 %1860, 1
  %1863 = fsub fast float %1859, %1861
  %1864 = fdiv fast float %1863, %1862
  %1865 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  %1866 = fmul fast float %1865, 2.000000e+00
  %1867 = fsub fast float 3.000000e+00, %1866
  %1868 = fmul fast float %1865, %1865
  %1869 = fmul fast float %1868, %1867
  %1870 = fcmp fast oge float %1854, 0.000000e+00
  %1871 = fcmp fast ole float %1854, 1.000000e+00
  %1872 = and i1 %1871, %1870
  %1873 = fcmp fast oge float %1855, 0.000000e+00
  %1874 = and i1 %1873, %1872
  %1875 = fcmp fast ole float %1855, 1.000000e+00
  %1876 = and i1 %1875, %1874
  %1877 = fcmp fast ogt float %1869, 0.000000e+00
  %1878 = and i1 %1877, %1876
  br i1 %1878, label %1879, label %2002, !dx.controlflow.hints !100

; <label>:1879                                    ; preds = %1834
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 2
  %1882 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1883 = fmul fast float %1881, %1854
  %1884 = fmul fast float %1882, %1855
  %1885 = call float @dx.op.unary.f32(i32 27, float %1883)  ; Round_ni(value)
  %1886 = call float @dx.op.unary.f32(i32 27, float %1884)  ; Round_ni(value)
  %1887 = fptosi float %1885 to i32
  %1888 = fptosi float %1886 to i32
  %1889 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %1887, i32 %1888, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1890 = extractvalue %dx.types.ResRet.i32 %1889, 0
  %1891 = lshr i32 %1890, 16
  %1892 = icmp eq i32 %1891, 65535
  br i1 %1892, label %2002, label %1893

; <label>:1893                                    ; preds = %1879
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = fmul fast float %1895, %1854
  %1897 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1898 = fadd fast float %1896, %1897
  %1899 = extractvalue %dx.types.CBufRet.f32 %1894, 2
  %1900 = fmul fast float %1899, %1855
  %1901 = extractvalue %dx.types.CBufRet.f32 %1894, 3
  %1902 = fadd fast float %1900, %1901
  %1903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %1898, float %1902, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.ResRet.f32 %1903, 1
  %1906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1907 = extractvalue %dx.types.CBufRet.f32 %1906, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1906, 0
  %1909 = fsub fast float %1907, %1908
  %1910 = fmul fast float %1909, %1904
  %1911 = fadd fast float %1910, %1908
  %1912 = extractvalue %dx.types.CBufRet.f32 %1906, 3
  %1913 = extractvalue %dx.types.CBufRet.f32 %1906, 2
  %1914 = fsub fast float %1912, %1913
  %1915 = fmul fast float %1914, %1905
  %1916 = fadd fast float %1915, %1913
  %1917 = fsub fast float %1841, %1911
  %1918 = fsub fast float %1916, %1911
  %1919 = fdiv fast float %1917, %1918
  %1920 = call float @dx.op.unary.f32(i32 7, float %1919)  ; Saturate(value)
  %1921 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %1922 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1923 = extractvalue %dx.types.CBufRet.f32 %1880, 1
  %1924 = fmul fast float %1922, %1854
  %1925 = fmul fast float %1923, %1855
  %1926 = fmul fast float %1924, 1.250000e-01
  %1927 = fmul fast float %1925, 1.250000e-01
  %1928 = call float @dx.op.unary.f32(i32 27, float %1926)  ; Round_ni(value)
  %1929 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1930 = fmul fast float %1928, 8.000000e+00
  %1931 = fmul fast float %1929, 8.000000e+00
  %1932 = fsub fast float %1924, %1930
  %1933 = fsub fast float %1925, %1931
  %1934 = fadd fast float %1932, 5.000000e-01
  %1935 = fadd fast float %1933, 5.000000e-01
  %1936 = and i32 %1891, 255
  %1937 = lshr i32 %1890, 24
  %1938 = mul nuw nsw i32 %1936, 9
  %1939 = uitofp i32 %1938 to float
  %1940 = mul nuw nsw i32 %1937, 9
  %1941 = uitofp i32 %1940 to float
  %1942 = fadd fast float %1934, %1939
  %1943 = fadd fast float %1935, %1941
  %1944 = fdiv fast float %1942, %1830
  %1945 = fdiv fast float %1943, %1921
  %1946 = fmul fast float %1920, 4.375000e-01
  %1947 = fadd fast float %1946, 3.125000e-02
  %1948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %1944, float %1945, float %1947, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1949 = extractvalue %dx.types.ResRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.ResRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.ResRet.f32 %1948, 2
  %1952 = fadd fast float %1946, 5.312500e-01
  %1953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %1944, float %1945, float %1952, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1954 = extractvalue %dx.types.ResRet.f32 %1953, 0
  %1955 = extractvalue %dx.types.ResRet.f32 %1953, 1
  %1956 = extractvalue %dx.types.ResRet.f32 %1953, 2
  %1957 = fmul fast float %1954, 2.000000e+00
  %1958 = fmul fast float %1955, 2.000000e+00
  %1959 = fmul fast float %1956, 2.000000e+00
  %1960 = fadd fast float %1957, -1.000000e+00
  %1961 = fadd fast float %1958, -1.000000e+00
  %1962 = fadd fast float %1959, -1.000000e+00
  %1963 = fmul fast float %1960, %1960
  %1964 = fmul fast float %1961, %1961
  %1965 = fadd fast float %1963, %1964
  %1966 = fmul fast float %1962, %1962
  %1967 = fadd fast float %1965, %1966
  %1968 = call float @dx.op.unary.f32(i32 24, float %1967)  ; Sqrt(value)
  %1969 = fcmp fast ogt float %1968, 0.000000e+00
  br i1 %1969, label %1970, label %1974

; <label>:1970                                    ; preds = %1893
  %1971 = fdiv fast float %1960, %1968
  %1972 = fdiv fast float %1961, %1968
  %1973 = fdiv fast float %1962, %1968
  br label %1974

; <label>:1974                                    ; preds = %1970, %1893
  %1975 = phi float [ %1971, %1970 ], [ 0.000000e+00, %1893 ]
  %1976 = phi float [ %1972, %1970 ], [ 0.000000e+00, %1893 ]
  %1977 = phi float [ %1973, %1970 ], [ 0.000000e+00, %1893 ]
  %1978 = call float @dx.op.dot3.f32(i32 55, float %1975, float %1976, float %1977, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %1979 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1978)  ; FMax(a,b)
  %1980 = fmul fast float %1979, 0x400C5BF8A0000000
  %1981 = fmul fast float %1949, %1869
  %1982 = fmul fast float %1981, %1980
  %1983 = fmul fast float %1950, %1869
  %1984 = fmul fast float %1983, %1980
  %1985 = fmul fast float %1951, %1869
  %1986 = fmul fast float %1985, %1980
  %1987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.f32 %1987, 3
  %1989 = fmul fast float %1982, %1988
  %1990 = fmul fast float %1984, %1988
  %1991 = fmul fast float %1986, %1988
  %1992 = fcmp fast ogt float %1841, %1916
  br i1 %1992, label %1993, label %2002

; <label>:1993                                    ; preds = %1974
  %1994 = fmul fast float %1918, 0x3FC24924A0000000
  %1995 = fsub fast float %1841, %1916
  %1996 = fdiv fast float %1995, %1994
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fsub fast float 1.000000e+00, %1997
  %1999 = fmul fast float %1998, %1989
  %2000 = fmul fast float %1998, %1990
  %2001 = fmul fast float %1998, %1991
  br label %2002

; <label>:2002                                    ; preds = %1993, %1974, %1879, %1834
  %2003 = phi float [ %2001, %1993 ], [ %1991, %1974 ], [ 0.000000e+00, %1879 ], [ 0.000000e+00, %1834 ]
  %2004 = phi float [ %2000, %1993 ], [ %1990, %1974 ], [ 0.000000e+00, %1879 ], [ 0.000000e+00, %1834 ]
  %2005 = phi float [ %1999, %1993 ], [ %1989, %1974 ], [ 0.000000e+00, %1879 ], [ 0.000000e+00, %1834 ]
  %2006 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2005)  ; FMax(a,b)
  %2007 = fmul fast float %2006, 0x3FD20DD760000000
  %2008 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2004)  ; FMax(a,b)
  %2009 = fmul fast float %2008, 0x3FD20DD760000000
  %2010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2003)  ; FMax(a,b)
  %2011 = fmul fast float %2010, 0x3FD20DD760000000
  %2012 = call float @dx.op.binary.f32(i32 35, float %2007, float 0.000000e+00)  ; FMax(a,b)
  %2013 = call float @dx.op.binary.f32(i32 35, float %2009, float 0.000000e+00)  ; FMax(a,b)
  %2014 = call float @dx.op.binary.f32(i32 35, float %2011, float 0.000000e+00)  ; FMax(a,b)
  %2015 = fmul fast float %2012, %1828
  %2016 = fmul fast float %2013, %1828
  %2017 = fmul fast float %2014, %1828
  br label %2018

; <label>:2018                                    ; preds = %2002, %1786
  %2019 = phi float [ %2015, %2002 ], [ 0.000000e+00, %1786 ]
  %2020 = phi float [ %2016, %2002 ], [ 0.000000e+00, %1786 ]
  %2021 = phi float [ %2017, %2002 ], [ 0.000000e+00, %1786 ]
  br i1 %1827, label %2022, label %2814, !dx.controlflow.hints !101

; <label>:2022                                    ; preds = %2018
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.CBufRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2027 = fadd fast float %2024, %116
  %2028 = fadd fast float %2025, %117
  %2029 = fadd fast float %2026, %118
  %2030 = fmul fast float %1601, 3.200000e+01
  %2031 = fmul fast float %1602, 3.200000e+01
  %2032 = fadd fast float %2027, %2030
  %2033 = fadd fast float %2028, %2031
  %2034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2035 = extractvalue %dx.types.CBufRet.f32 %2034, 0
  %2036 = extractvalue %dx.types.CBufRet.f32 %2034, 1
  %2037 = fsub fast float %2032, %2035
  %2038 = fsub fast float %2033, %2036
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.CBufRet.f32 %2039, 1
  %2042 = fmul fast float %2037, %2040
  %2043 = fmul fast float %2038, %2041
  %2044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2045 = extractvalue %dx.types.CBufRet.f32 %2044, 0
  %2046 = fmul fast float %2042, %2045
  %2047 = extractvalue %dx.types.CBufRet.f32 %2044, 1
  %2048 = fadd fast float %2046, %2047
  %2049 = extractvalue %dx.types.CBufRet.f32 %2044, 2
  %2050 = fmul fast float %2049, %2043
  %2051 = extractvalue %dx.types.CBufRet.f32 %2044, 3
  %2052 = fadd fast float %2050, %2051
  %2053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %2048, float %2052, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2057 = extractvalue %dx.types.CBufRet.f32 %2056, 1
  %2058 = extractvalue %dx.types.CBufRet.f32 %2056, 0
  %2059 = fsub fast float %2057, %2058
  %2060 = fmul fast float %2059, %2054
  %2061 = fadd fast float %2060, %2058
  %2062 = extractvalue %dx.types.CBufRet.f32 %2056, 3
  %2063 = extractvalue %dx.types.CBufRet.f32 %2056, 2
  %2064 = fsub fast float %2062, %2063
  %2065 = fmul fast float %2064, %2055
  %2066 = fadd fast float %2065, %2063
  %2067 = fsub fast float %2029, %2061
  %2068 = fsub fast float %2066, %2061
  %2069 = fdiv fast float %2067, %2068
  %2070 = call float @dx.op.unary.f32(i32 7, float %2069)  ; Saturate(value)
  %2071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2072 = extractvalue %dx.types.CBufRet.f32 %2071, 0
  %2073 = fmul fast float %2072, %2070
  %2074 = extractvalue %dx.types.CBufRet.f32 %2071, 1
  %2075 = fadd fast float %2073, %2074
  %2076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %2048, float %2052, float %2075, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 0
  %2082 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2083 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2084 = fmul fast float %2081, %2077
  %2085 = fmul fast float %2082, %2078
  %2086 = fmul fast float %2083, %2079
  %2087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2088 = extractvalue %dx.types.CBufRet.f32 %2087, 0
  %2089 = extractvalue %dx.types.CBufRet.f32 %2087, 1
  %2090 = extractvalue %dx.types.CBufRet.f32 %2087, 2
  %2091 = fadd fast float %2084, %2088
  %2092 = fadd fast float %2085, %2089
  %2093 = fadd fast float %2086, %2090
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = fmul fast float %2095, %2042
  %2097 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2098 = fadd fast float %2096, %2097
  %2099 = extractvalue %dx.types.CBufRet.f32 %2094, 2
  %2100 = fmul fast float %2099, %2043
  %2101 = extractvalue %dx.types.CBufRet.f32 %2094, 3
  %2102 = fadd fast float %2100, %2101
  %2103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2104 = extractvalue %dx.types.CBufRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.CBufRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.CBufRet.f32 %2103, 2
  %2107 = extractvalue %dx.types.CBufRet.f32 %2103, 3
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2112 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2098, float %2102, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2114 = extractvalue %dx.types.ResRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.ResRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.ResRet.f32 %2113, 2
  %2117 = extractvalue %dx.types.ResRet.f32 %2113, 3
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2098, float %2102, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = extractvalue %dx.types.ResRet.f32 %2118, 2
  %2122 = extractvalue %dx.types.ResRet.f32 %2118, 3
  %2123 = fmul fast float %2114, %2091
  %2124 = fmul fast float %2119, %2091
  %2125 = fmul fast float %2121, %2091
  %2126 = fmul fast float %2117, %2091
  %2127 = fadd fast float %2123, %2104
  %2128 = fadd fast float %2124, %2105
  %2129 = fadd fast float %2125, %2106
  %2130 = fadd fast float %2126, %2107
  %2131 = fmul fast float %2115, %2091
  %2132 = fmul fast float %2120, %2091
  %2133 = fadd fast float %2131, %2109
  %2134 = fadd fast float %2132, %2110
  %2135 = fmul fast float %2116, %2091
  %2136 = fmul fast float %2122, %2091
  %2137 = fadd fast float %2135, %2111
  %2138 = fadd fast float %2136, %2112
  %2139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2098, float %2102, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = extractvalue %dx.types.ResRet.f32 %2139, 3
  %2144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2098, float %2102, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.ResRet.f32 %2144, 3
  %2149 = fmul fast float %2140, %2092
  %2150 = fmul fast float %2145, %2092
  %2151 = fmul fast float %2147, %2092
  %2152 = fmul fast float %2143, %2092
  %2153 = fadd fast float %2127, %2149
  %2154 = fadd fast float %2128, %2150
  %2155 = fadd fast float %2129, %2151
  %2156 = fadd fast float %2130, %2152
  %2157 = fmul fast float %2141, %2092
  %2158 = fmul fast float %2146, %2092
  %2159 = fadd fast float %2133, %2157
  %2160 = fadd fast float %2134, %2158
  %2161 = fmul fast float %2142, %2092
  %2162 = fmul fast float %2148, %2092
  %2163 = fadd fast float %2137, %2161
  %2164 = fadd fast float %2138, %2162
  %2165 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2098, float %2102, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  %2167 = extractvalue %dx.types.ResRet.f32 %2165, 1
  %2168 = extractvalue %dx.types.ResRet.f32 %2165, 2
  %2169 = extractvalue %dx.types.ResRet.f32 %2165, 3
  %2170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %2098, float %2102, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2171 = extractvalue %dx.types.ResRet.f32 %2170, 0
  %2172 = extractvalue %dx.types.ResRet.f32 %2170, 1
  %2173 = extractvalue %dx.types.ResRet.f32 %2170, 2
  %2174 = extractvalue %dx.types.ResRet.f32 %2170, 3
  %2175 = fmul fast float %2166, %2093
  %2176 = fmul fast float %2171, %2093
  %2177 = fmul fast float %2173, %2093
  %2178 = fmul fast float %2169, %2093
  %2179 = fadd fast float %2153, %2175
  %2180 = fadd fast float %2154, %2176
  %2181 = fadd fast float %2155, %2177
  %2182 = fadd fast float %2156, %2178
  %2183 = fmul fast float %2167, %2093
  %2184 = fmul fast float %2172, %2093
  %2185 = fadd fast float %2159, %2183
  %2186 = fadd fast float %2160, %2184
  %2187 = fmul fast float %2168, %2093
  %2188 = fmul fast float %2174, %2093
  %2189 = fadd fast float %2163, %2187
  %2190 = fadd fast float %2164, %2188
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = fsub fast float %2027, %2192
  %2194 = fsub fast float %2035, %2027
  %2195 = call float @dx.op.binary.f32(i32 35, float %2194, float %2193)  ; FMax(a,b)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2197 = fsub fast float %2028, %2196
  %2198 = fsub fast float %2036, %2028
  %2199 = call float @dx.op.binary.f32(i32 35, float %2198, float %2197)  ; FMax(a,b)
  %2200 = call float @dx.op.binary.f32(i32 35, float %2195, float %2199)  ; FMax(a,b)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2039, 3
  %2202 = fmul fast float %2201, %2200
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2205 = extractvalue %dx.types.CBufRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.CBufRet.f32 %2204, 1
  %2207 = extractvalue %dx.types.CBufRet.f32 %2204, 2
  %2208 = extractvalue %dx.types.CBufRet.f32 %2204, 3
  %2209 = fsub fast float %2205, %2179
  %2210 = fsub fast float %2206, %2180
  %2211 = fsub fast float %2207, %2181
  %2212 = fsub fast float %2208, %2182
  %2213 = fmul fast float %2209, %2203
  %2214 = fmul fast float %2210, %2203
  %2215 = fmul fast float %2211, %2203
  %2216 = fmul fast float %2212, %2203
  %2217 = fadd fast float %2213, %2179
  %2218 = fadd fast float %2214, %2180
  %2219 = fadd fast float %2215, %2181
  %2220 = fadd fast float %2216, %2182
  %2221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2222 = extractvalue %dx.types.CBufRet.f32 %2221, 0
  %2223 = extractvalue %dx.types.CBufRet.f32 %2221, 1
  %2224 = fsub fast float %2222, %2185
  %2225 = fsub fast float %2223, %2186
  %2226 = fmul fast float %2224, %2203
  %2227 = fmul fast float %2225, %2203
  %2228 = fadd fast float %2226, %2185
  %2229 = fadd fast float %2227, %2186
  %2230 = extractvalue %dx.types.CBufRet.f32 %2221, 2
  %2231 = extractvalue %dx.types.CBufRet.f32 %2221, 3
  %2232 = fsub fast float %2230, %2189
  %2233 = fsub fast float %2231, %2190
  %2234 = fmul fast float %2232, %2203
  %2235 = fmul fast float %2233, %2203
  %2236 = fadd fast float %2234, %2189
  %2237 = fadd fast float %2235, %2190
  %2238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2239 = extractvalue %dx.types.CBufRet.f32 %2238, 0
  %2240 = fmul fast float %2239, %2217
  %2241 = fmul fast float %2239, %2218
  %2242 = fmul fast float %2239, %2219
  %2243 = fmul fast float %2239, %2220
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = fmul fast float %2245, %2228
  %2247 = fmul fast float %2245, %2229
  %2248 = fadd fast float %2246, %2240
  %2249 = fadd fast float %2247, %2242
  %2250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2251 = extractvalue %dx.types.CBufRet.f32 %2250, 0
  %2252 = fmul fast float %2251, %2236
  %2253 = fmul fast float %2251, %2237
  %2254 = fadd fast float %2248, %2252
  %2255 = fadd fast float %2249, %2253
  %2256 = extractvalue %dx.types.CBufRet.f32 %2238, 1
  %2257 = fmul fast float %2256, %2217
  %2258 = fmul fast float %2256, %2218
  %2259 = fmul fast float %2256, %2219
  %2260 = fmul fast float %2256, %2220
  %2261 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2262 = fmul fast float %2261, %2228
  %2263 = fmul fast float %2261, %2229
  %2264 = fadd fast float %2262, %2257
  %2265 = fadd fast float %2263, %2259
  %2266 = extractvalue %dx.types.CBufRet.f32 %2250, 1
  %2267 = fmul fast float %2266, %2236
  %2268 = fmul fast float %2266, %2237
  %2269 = fadd fast float %2264, %2267
  %2270 = fadd fast float %2265, %2268
  %2271 = extractvalue %dx.types.CBufRet.f32 %2238, 2
  %2272 = fmul fast float %2271, %2217
  %2273 = fmul fast float %2271, %2218
  %2274 = fmul fast float %2271, %2219
  %2275 = fmul fast float %2271, %2220
  %2276 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2277 = fmul fast float %2276, %2228
  %2278 = fmul fast float %2276, %2229
  %2279 = fadd fast float %2277, %2272
  %2280 = fadd fast float %2278, %2274
  %2281 = extractvalue %dx.types.CBufRet.f32 %2250, 2
  %2282 = fmul fast float %2281, %2236
  %2283 = fmul fast float %2281, %2237
  %2284 = fadd fast float %2279, %2282
  %2285 = fadd fast float %2280, %2283
  %2286 = fmul fast float %2273, %2273
  %2287 = fmul fast float %2285, %2285
  %2288 = fmul fast float %2275, %2275
  %2289 = fadd fast float %2288, %2286
  %2290 = fadd fast float %2289, %2287
  %2291 = call float @dx.op.unary.f32(i32 24, float %2290)  ; Sqrt(value)
  %2292 = fcmp fast ugt float %2291, 0.000000e+00
  br i1 %2292, label %2293, label %2308

; <label>:2293                                    ; preds = %2022
  %2294 = fsub fast float -0.000000e+00, %2275
  %2295 = fdiv fast float %2294, %2291
  %2296 = fsub fast float -0.000000e+00, %2273
  %2297 = fdiv fast float %2296, %2291
  %2298 = fdiv fast float %2285, %2291
  %2299 = fmul fast float %2284, 0x3FE279A760000000
  %2300 = fmul fast float %2297, %2273
  %2301 = fmul fast float %2298, %2285
  %2302 = fmul fast float %2295, %2275
  %2303 = fadd fast float %2300, %2302
  %2304 = fsub fast float %2303, %2301
  %2305 = call float @dx.op.unary.f32(i32 6, float %2304)  ; FAbs(value)
  %2306 = fadd fast float %2305, 0x3DDB7CDFE0000000
  %2307 = fdiv fast float %2299, %2306
  br label %2308

; <label>:2308                                    ; preds = %2293, %2022
  %2309 = phi float [ %2307, %2293 ], [ 1.000000e+00, %2022 ]
  %2310 = fmul fast float %2258, %2258
  %2311 = fmul fast float %2270, %2270
  %2312 = fmul fast float %2260, %2260
  %2313 = fadd fast float %2312, %2310
  %2314 = fadd fast float %2313, %2311
  %2315 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2316 = fcmp fast ugt float %2315, 0.000000e+00
  br i1 %2316, label %2317, label %2332

; <label>:2317                                    ; preds = %2308
  %2318 = fsub fast float -0.000000e+00, %2260
  %2319 = fdiv fast float %2318, %2315
  %2320 = fsub fast float -0.000000e+00, %2258
  %2321 = fdiv fast float %2320, %2315
  %2322 = fdiv fast float %2270, %2315
  %2323 = fmul fast float %2269, 0x3FE279A760000000
  %2324 = fmul fast float %2321, %2258
  %2325 = fmul fast float %2322, %2270
  %2326 = fmul fast float %2319, %2260
  %2327 = fadd fast float %2324, %2326
  %2328 = fsub fast float %2327, %2325
  %2329 = call float @dx.op.unary.f32(i32 6, float %2328)  ; FAbs(value)
  %2330 = fadd fast float %2329, 0x3DDB7CDFE0000000
  %2331 = fdiv fast float %2323, %2330
  br label %2332

; <label>:2332                                    ; preds = %2317, %2308
  %2333 = phi float [ %2331, %2317 ], [ 1.000000e+00, %2308 ]
  %2334 = call float @dx.op.binary.f32(i32 36, float %2333, float %2309)  ; FMin(a,b)
  %2335 = fmul fast float %2241, %2241
  %2336 = fmul fast float %2255, %2255
  %2337 = fmul fast float %2243, %2243
  %2338 = fadd fast float %2337, %2335
  %2339 = fadd fast float %2338, %2336
  %2340 = call float @dx.op.unary.f32(i32 24, float %2339)  ; Sqrt(value)
  %2341 = fcmp fast ugt float %2340, 0.000000e+00
  br i1 %2341, label %2342, label %2357

; <label>:2342                                    ; preds = %2332
  %2343 = fsub fast float -0.000000e+00, %2243
  %2344 = fdiv fast float %2343, %2340
  %2345 = fsub fast float -0.000000e+00, %2241
  %2346 = fdiv fast float %2345, %2340
  %2347 = fdiv fast float %2255, %2340
  %2348 = fmul fast float %2254, 0x3FE279A760000000
  %2349 = fmul fast float %2346, %2241
  %2350 = fmul fast float %2347, %2255
  %2351 = fmul fast float %2344, %2243
  %2352 = fadd fast float %2349, %2351
  %2353 = fsub fast float %2352, %2350
  %2354 = call float @dx.op.unary.f32(i32 6, float %2353)  ; FAbs(value)
  %2355 = fadd fast float %2354, 0x3DDB7CDFE0000000
  %2356 = fdiv fast float %2348, %2355
  br label %2357

; <label>:2357                                    ; preds = %2342, %2332
  %2358 = phi float [ %2356, %2342 ], [ 1.000000e+00, %2332 ]
  %2359 = call float @dx.op.binary.f32(i32 36, float %2358, float %2334)  ; FMin(a,b)
  %2360 = call float @dx.op.unary.f32(i32 7, float %2359)  ; Saturate(value)
  %2361 = fcmp fast olt float %2360, 1.000000e+00
  br i1 %2361, label %2362, label %2372

; <label>:2362                                    ; preds = %2357
  %2363 = fmul fast float %2360, %2241
  %2364 = fmul fast float %2360, %2255
  %2365 = fmul fast float %2360, %2243
  %2366 = fmul fast float %2360, %2258
  %2367 = fmul fast float %2360, %2270
  %2368 = fmul fast float %2360, %2260
  %2369 = fmul fast float %2360, %2273
  %2370 = fmul fast float %2360, %2285
  %2371 = fmul fast float %2360, %2275
  br label %2372

; <label>:2372                                    ; preds = %2362, %2357
  %2373 = phi float [ %2369, %2362 ], [ %2273, %2357 ]
  %2374 = phi float [ %2370, %2362 ], [ %2285, %2357 ]
  %2375 = phi float [ %2371, %2362 ], [ %2275, %2357 ]
  %2376 = phi float [ %2366, %2362 ], [ %2258, %2357 ]
  %2377 = phi float [ %2367, %2362 ], [ %2270, %2357 ]
  %2378 = phi float [ %2368, %2362 ], [ %2260, %2357 ]
  %2379 = phi float [ %2363, %2362 ], [ %2241, %2357 ]
  %2380 = phi float [ %2364, %2362 ], [ %2255, %2357 ]
  %2381 = phi float [ %2365, %2362 ], [ %2243, %2357 ]
  %2382 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2254)  ; FMax(a,b)
  %2383 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2269)  ; FMax(a,b)
  %2384 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2284)  ; FMax(a,b)
  %2385 = fcmp fast oge float %2042, 0.000000e+00
  %2386 = and i1 %2385, %1831
  %2387 = fcmp fast ole float %2042, 1.000000e+00
  %2388 = and i1 %2387, %2386
  %2389 = fcmp fast oge float %2043, 0.000000e+00
  %2390 = and i1 %2389, %2388
  %2391 = fcmp fast ole float %2043, 1.000000e+00
  %2392 = and i1 %2391, %2390
  br i1 %2392, label %2393, label %2533, !dx.controlflow.hints !102

; <label>:2393                                    ; preds = %2372
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2397 = fmul fast float %2395, %2042
  %2398 = fmul fast float %2396, %2043
  %2399 = call float @dx.op.unary.f32(i32 27, float %2397)  ; Round_ni(value)
  %2400 = call float @dx.op.unary.f32(i32 27, float %2398)  ; Round_ni(value)
  %2401 = fptosi float %2399 to i32
  %2402 = fptosi float %2400 to i32
  %2403 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %2401, i32 %2402, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 65535
  %2406 = lshr i32 %2404, 16
  %2407 = icmp eq i32 %2405, 65535
  br i1 %2407, label %2444, label %2408

; <label>:2408                                    ; preds = %2393
  %2409 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %2410 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2411 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2412 = fmul fast float %2410, %2042
  %2413 = fmul fast float %2411, %2043
  %2414 = fmul fast float %2412, 1.250000e-01
  %2415 = fmul fast float %2413, 1.250000e-01
  %2416 = call float @dx.op.unary.f32(i32 27, float %2414)  ; Round_ni(value)
  %2417 = call float @dx.op.unary.f32(i32 27, float %2415)  ; Round_ni(value)
  %2418 = fmul fast float %2416, 8.000000e+00
  %2419 = fmul fast float %2417, 8.000000e+00
  %2420 = and i32 %2404, 255
  %2421 = lshr i32 %2404, 8
  %2422 = and i32 %2421, 255
  %2423 = mul nuw nsw i32 %2420, 9
  %2424 = uitofp i32 %2423 to float
  %2425 = mul nuw nsw i32 %2422, 9
  %2426 = uitofp i32 %2425 to float
  %2427 = fadd fast float %2424, 5.000000e-01
  %2428 = fadd fast float %2427, %2412
  %2429 = fsub fast float %2428, %2418
  %2430 = fadd fast float %2426, 5.000000e-01
  %2431 = fadd fast float %2430, %2413
  %2432 = fsub fast float %2431, %2419
  %2433 = fdiv fast float %2429, %1830
  %2434 = fdiv fast float %2432, %2409
  %2435 = fmul fast float %2070, 4.375000e-01
  %2436 = fadd fast float %2435, 3.125000e-02
  %2437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2433, float %2434, float %2436, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2438 = extractvalue %dx.types.ResRet.f32 %2437, 0
  %2439 = extractvalue %dx.types.ResRet.f32 %2437, 1
  %2440 = extractvalue %dx.types.ResRet.f32 %2437, 2
  %2441 = fadd fast float %2438, %2382
  %2442 = fadd fast float %2439, %2383
  %2443 = fadd fast float %2440, %2384
  br label %2444

; <label>:2444                                    ; preds = %2408, %2393
  %2445 = phi float [ %2443, %2408 ], [ %2384, %2393 ]
  %2446 = phi float [ %2442, %2408 ], [ %2383, %2393 ]
  %2447 = phi float [ %2441, %2408 ], [ %2382, %2393 ]
  %2448 = icmp eq i32 %2406, 65535
  br i1 %2448, label %2533, label %2449

; <label>:2449                                    ; preds = %2444
  %2450 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %2451 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2452 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2453 = fmul fast float %2451, %2042
  %2454 = fmul fast float %2452, %2043
  %2455 = fmul fast float %2453, 1.250000e-01
  %2456 = fmul fast float %2454, 1.250000e-01
  %2457 = call float @dx.op.unary.f32(i32 27, float %2455)  ; Round_ni(value)
  %2458 = call float @dx.op.unary.f32(i32 27, float %2456)  ; Round_ni(value)
  %2459 = fmul fast float %2457, 8.000000e+00
  %2460 = fmul fast float %2458, 8.000000e+00
  %2461 = fsub fast float %2453, %2459
  %2462 = fsub fast float %2454, %2460
  %2463 = fadd fast float %2461, 5.000000e-01
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = and i32 %2406, 255
  %2466 = lshr i32 %2404, 24
  %2467 = mul nuw nsw i32 %2465, 9
  %2468 = uitofp i32 %2467 to float
  %2469 = mul nuw nsw i32 %2466, 9
  %2470 = uitofp i32 %2469 to float
  %2471 = fadd fast float %2463, %2468
  %2472 = fadd fast float %2464, %2470
  %2473 = fdiv fast float %2471, %1830
  %2474 = fdiv fast float %2472, %2450
  %2475 = fmul fast float %2070, 4.375000e-01
  %2476 = fadd fast float %2475, 3.125000e-02
  %2477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2473, float %2474, float %2476, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2478 = extractvalue %dx.types.ResRet.f32 %2477, 0
  %2479 = extractvalue %dx.types.ResRet.f32 %2477, 1
  %2480 = extractvalue %dx.types.ResRet.f32 %2477, 2
  %2481 = fadd fast float %2475, 5.312500e-01
  %2482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %45, float %2473, float %2474, float %2481, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2483 = extractvalue %dx.types.ResRet.f32 %2482, 0
  %2484 = extractvalue %dx.types.ResRet.f32 %2482, 1
  %2485 = extractvalue %dx.types.ResRet.f32 %2482, 2
  %2486 = fmul fast float %2483, 2.000000e+00
  %2487 = fmul fast float %2484, 2.000000e+00
  %2488 = fmul fast float %2485, 2.000000e+00
  %2489 = fadd fast float %2486, -1.000000e+00
  %2490 = fadd fast float %2487, -1.000000e+00
  %2491 = fadd fast float %2488, -1.000000e+00
  %2492 = fmul fast float %2489, %2489
  %2493 = fmul fast float %2490, %2490
  %2494 = fadd fast float %2492, %2493
  %2495 = fmul fast float %2491, %2491
  %2496 = fadd fast float %2494, %2495
  %2497 = call float @dx.op.unary.f32(i32 24, float %2496)  ; Sqrt(value)
  %2498 = fcmp fast ogt float %2497, 0.000000e+00
  br i1 %2498, label %2499, label %2503

; <label>:2499                                    ; preds = %2449
  %2500 = fdiv fast float %2489, %2497
  %2501 = fdiv fast float %2490, %2497
  %2502 = fdiv fast float %2491, %2497
  br label %2503

; <label>:2503                                    ; preds = %2499, %2449
  %2504 = phi float [ %2500, %2499 ], [ 0.000000e+00, %2449 ]
  %2505 = phi float [ %2501, %2499 ], [ 0.000000e+00, %2449 ]
  %2506 = phi float [ %2502, %2499 ], [ 0.000000e+00, %2449 ]
  %2507 = fmul fast float %116, %116
  %2508 = fmul fast float %117, %117
  %2509 = fadd fast float %2507, %2508
  %2510 = call float @dx.op.unary.f32(i32 24, float %2509)  ; Sqrt(value)
  %2511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2512 = extractvalue %dx.types.CBufRet.f32 %2511, 0
  %2513 = extractvalue %dx.types.CBufRet.f32 %2511, 1
  %2514 = fsub fast float %2510, %2512
  %2515 = fdiv fast float %2514, %2513
  %2516 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  %2517 = fmul fast float %2516, 2.000000e+00
  %2518 = fsub fast float 3.000000e+00, %2517
  %2519 = fmul fast float %2516, %2516
  %2520 = fmul fast float %2519, %2518
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2504, float %2505, float %2506, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2521)  ; FMax(a,b)
  %2523 = fmul fast float %2522, 0x400C5BF8A0000000
  %2524 = fmul fast float %2520, %2478
  %2525 = fmul fast float %2524, %2523
  %2526 = fadd fast float %2525, %2447
  %2527 = fmul fast float %2520, %2479
  %2528 = fmul fast float %2527, %2523
  %2529 = fadd fast float %2528, %2446
  %2530 = fmul fast float %2520, %2480
  %2531 = fmul fast float %2530, %2523
  %2532 = fadd fast float %2531, %2445
  br label %2533

; <label>:2533                                    ; preds = %2503, %2444, %2372
  %2534 = phi float [ %2532, %2503 ], [ %2445, %2444 ], [ %2384, %2372 ]
  %2535 = phi float [ %2529, %2503 ], [ %2446, %2444 ], [ %2383, %2372 ]
  %2536 = phi float [ %2526, %2503 ], [ %2447, %2444 ], [ %2382, %2372 ]
  %2537 = fcmp fast ogt float %2029, %2066
  %2538 = and i1 %2385, %2537
  %2539 = and i1 %2387, %2538
  %2540 = and i1 %2389, %2539
  %2541 = and i1 %2391, %2540
  br i1 %2541, label %2542, label %2599, !dx.controlflow.hints !103

; <label>:2542                                    ; preds = %2533
  %2543 = fmul fast float %2068, 0x3FC24924A0000000
  %2544 = fsub fast float %2029, %2066
  %2545 = fdiv fast float %2544, %2543
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  %2547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2548 = extractvalue %dx.types.CBufRet.f32 %2547, 0
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 0
  %2551 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2552 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2553 = fsub fast float %2548, %2536
  %2554 = fsub fast float %2550, %2379
  %2555 = fsub fast float %2551, %2380
  %2556 = fsub fast float %2552, %2381
  %2557 = fmul fast float %2553, %2546
  %2558 = fmul fast float %2554, %2546
  %2559 = fmul fast float %2555, %2546
  %2560 = fmul fast float %2556, %2546
  %2561 = fadd fast float %2557, %2536
  %2562 = fadd fast float %2558, %2379
  %2563 = fadd fast float %2559, %2380
  %2564 = fadd fast float %2560, %2381
  %2565 = extractvalue %dx.types.CBufRet.f32 %2547, 1
  %2566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2567 = extractvalue %dx.types.CBufRet.f32 %2566, 0
  %2568 = extractvalue %dx.types.CBufRet.f32 %2566, 1
  %2569 = extractvalue %dx.types.CBufRet.f32 %2566, 2
  %2570 = fsub fast float %2565, %2535
  %2571 = fsub fast float %2567, %2376
  %2572 = fsub fast float %2568, %2377
  %2573 = fsub fast float %2569, %2378
  %2574 = fmul fast float %2570, %2546
  %2575 = fmul fast float %2571, %2546
  %2576 = fmul fast float %2572, %2546
  %2577 = fmul fast float %2573, %2546
  %2578 = fadd fast float %2574, %2535
  %2579 = fadd fast float %2575, %2376
  %2580 = fadd fast float %2576, %2377
  %2581 = fadd fast float %2577, %2378
  %2582 = extractvalue %dx.types.CBufRet.f32 %2547, 2
  %2583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2584 = extractvalue %dx.types.CBufRet.f32 %2583, 0
  %2585 = extractvalue %dx.types.CBufRet.f32 %2583, 1
  %2586 = extractvalue %dx.types.CBufRet.f32 %2583, 2
  %2587 = fsub fast float %2582, %2534
  %2588 = fsub fast float %2584, %2373
  %2589 = fsub fast float %2585, %2374
  %2590 = fsub fast float %2586, %2375
  %2591 = fmul fast float %2587, %2546
  %2592 = fmul fast float %2588, %2546
  %2593 = fmul fast float %2589, %2546
  %2594 = fmul fast float %2590, %2546
  %2595 = fadd fast float %2591, %2534
  %2596 = fadd fast float %2592, %2373
  %2597 = fadd fast float %2593, %2374
  %2598 = fadd fast float %2594, %2375
  br label %2599

; <label>:2599                                    ; preds = %2542, %2533
  %2600 = phi float [ %2595, %2542 ], [ %2534, %2533 ]
  %2601 = phi float [ %2596, %2542 ], [ %2373, %2533 ]
  %2602 = phi float [ %2597, %2542 ], [ %2374, %2533 ]
  %2603 = phi float [ %2598, %2542 ], [ %2375, %2533 ]
  %2604 = phi float [ %2578, %2542 ], [ %2535, %2533 ]
  %2605 = phi float [ %2579, %2542 ], [ %2376, %2533 ]
  %2606 = phi float [ %2580, %2542 ], [ %2377, %2533 ]
  %2607 = phi float [ %2581, %2542 ], [ %2378, %2533 ]
  %2608 = phi float [ %2561, %2542 ], [ %2536, %2533 ]
  %2609 = phi float [ %2562, %2542 ], [ %2379, %2533 ]
  %2610 = phi float [ %2563, %2542 ], [ %2380, %2533 ]
  %2611 = phi float [ %2564, %2542 ], [ %2381, %2533 ]
  %2612 = extractvalue %dx.types.CBufRet.f32 %2191, 3
  %2613 = fmul fast float %2612, %2608
  %2614 = fmul fast float %2612, %2604
  %2615 = fmul fast float %2612, %2600
  %2616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2617 = extractvalue %dx.types.CBufRet.f32 %2616, 3
  %2618 = fmul fast float %2613, %2617
  %2619 = fmul fast float %2614, %2617
  %2620 = fmul fast float %2615, %2617
  %2621 = call float @dx.op.dot3.f32(i32 55, float %2618, float %2619, float %2620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2622 = fmul fast float %2621, 0x3FD20DD760000000
  %2623 = fmul fast float %2609, 1.500000e+00
  %2624 = fmul fast float %2623, %2612
  %2625 = fmul fast float %2624, %2617
  %2626 = fmul fast float %2610, 1.500000e+00
  %2627 = fmul fast float %2626, %2612
  %2628 = fmul fast float %2627, %2617
  %2629 = fmul fast float %2611, 1.500000e+00
  %2630 = fmul fast float %2629, %2612
  %2631 = fmul fast float %2630, %2617
  %2632 = fmul fast float %2605, 1.500000e+00
  %2633 = fmul fast float %2632, %2612
  %2634 = fmul fast float %2633, %2617
  %2635 = fmul fast float %2606, 1.500000e+00
  %2636 = fmul fast float %2635, %2612
  %2637 = fmul fast float %2636, %2617
  %2638 = fmul fast float %2607, 1.500000e+00
  %2639 = fmul fast float %2638, %2612
  %2640 = fmul fast float %2639, %2617
  %2641 = fmul fast float %2601, 1.500000e+00
  %2642 = fmul fast float %2641, %2612
  %2643 = fmul fast float %2642, %2617
  %2644 = fmul fast float %2602, 1.500000e+00
  %2645 = fmul fast float %2644, %2612
  %2646 = fmul fast float %2645, %2617
  %2647 = fmul fast float %2603, 1.500000e+00
  %2648 = fmul fast float %2647, %2612
  %2649 = fmul fast float %2648, %2617
  %2650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2618)  ; FMax(a,b)
  %2651 = call float @dx.op.dot3.f32(i32 55, float %2625, float %2628, float %2631, float %2625, float %2628, float %2631)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = fcmp fast oeq float %2651, 0.000000e+00
  %2653 = fcmp fast oeq float %2650, 0.000000e+00
  %2654 = or i1 %2653, %2652
  br i1 %2654, label %2684, label %2655

; <label>:2655                                    ; preds = %2599
  %2656 = fsub fast float -0.000000e+00, %2631
  %2657 = fsub fast float -0.000000e+00, %2625
  %2658 = call float @dx.op.unary.f32(i32 24, float %2651)  ; Sqrt(value)
  %2659 = fdiv fast float %2658, %2650
  %2660 = fcmp fast ogt float %2659, 0x3FFB6F8900000000
  %2661 = select i1 %2660, float 0x3FFB6F8900000000, float %2659
  %2662 = fmul fast float %2661, 0x3FE8A23460000000
  %2663 = call float @dx.op.unary.f32(i32 7, float %2662)  ; Saturate(value)
  %2664 = call float @dx.op.binary.f32(i32 35, float %2661, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2665 = fmul fast float %2663, %2650
  %2666 = fmul fast float %2664, 0x3FF279A740000000
  %2667 = fadd fast float %2666, -1.000000e+00
  %2668 = call float @dx.op.dot3.f32(i32 55, float %2656, float %2657, float %2628, float %2656, float %2657, float %2628)  ; Dot3(ax,ay,az,bx,by,bz)
  %2669 = call float @dx.op.unary.f32(i32 25, float %2668)  ; Rsqrt(value)
  %2670 = fmul fast float %2669, %2656
  %2671 = fmul fast float %2669, %2657
  %2672 = fmul fast float %2669, %2628
  %2673 = fmul fast float %2667, %2667
  %2674 = fsub fast float 1.000000e+00, %2673
  %2675 = fmul fast float %2664, 0x40005F8BE0000000
  %2676 = fsub fast float 0x400C5BF8A0000000, %2675
  %2677 = fdiv fast float %2665, %2676
  %2678 = fmul fast float %2677, 0x3FEE31C3C0000000
  %2679 = fmul fast float %2678, %2674
  %2680 = fmul fast float %2664, 0x3FDACB7480000000
  %2681 = fadd fast float %2680, 0xBFD7347680000000
  %2682 = fmul fast float %2681, %2677
  %2683 = fmul fast float %2682, %2674
  br label %2684

; <label>:2684                                    ; preds = %2655, %2599
  %2685 = phi float [ %2670, %2655 ], [ 0.000000e+00, %2599 ]
  %2686 = phi float [ %2671, %2655 ], [ 0.000000e+00, %2599 ]
  %2687 = phi float [ %2672, %2655 ], [ 0.000000e+00, %2599 ]
  %2688 = phi float [ %2679, %2655 ], [ 0.000000e+00, %2599 ]
  %2689 = phi float [ %2683, %2655 ], [ 0.000000e+00, %2599 ]
  %2690 = call float @dx.op.dot3.f32(i32 55, float %2685, float %2686, float %2687, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2691 = fmul fast float %2690, %2690
  %2692 = fmul fast float %2691, 0x3FEE471020000000
  %2693 = fadd fast float %2692, 0xBFD42F6020000000
  %2694 = fmul fast float %2650, 0x3FD20DD760000000
  %2695 = fmul fast float %2693, %2689
  %2696 = fmul fast float %2688, 0x3FDF454380000000
  %2697 = fmul fast float %2696, %2690
  %2698 = fadd fast float %2697, %2694
  %2699 = fadd fast float %2698, %2695
  %2700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2619)  ; FMax(a,b)
  %2701 = call float @dx.op.dot3.f32(i32 55, float %2634, float %2637, float %2640, float %2634, float %2637, float %2640)  ; Dot3(ax,ay,az,bx,by,bz)
  %2702 = fcmp fast oeq float %2701, 0.000000e+00
  %2703 = fcmp fast oeq float %2700, 0.000000e+00
  %2704 = or i1 %2703, %2702
  br i1 %2704, label %2734, label %2705

; <label>:2705                                    ; preds = %2684
  %2706 = fsub fast float -0.000000e+00, %2640
  %2707 = fsub fast float -0.000000e+00, %2634
  %2708 = call float @dx.op.unary.f32(i32 24, float %2701)  ; Sqrt(value)
  %2709 = fdiv fast float %2708, %2700
  %2710 = fcmp fast ogt float %2709, 0x3FFB6F8900000000
  %2711 = select i1 %2710, float 0x3FFB6F8900000000, float %2709
  %2712 = fmul fast float %2711, 0x3FE8A23460000000
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  %2714 = call float @dx.op.binary.f32(i32 35, float %2711, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2715 = fmul fast float %2713, %2700
  %2716 = fmul fast float %2714, 0x3FF279A740000000
  %2717 = fadd fast float %2716, -1.000000e+00
  %2718 = call float @dx.op.dot3.f32(i32 55, float %2706, float %2707, float %2637, float %2706, float %2707, float %2637)  ; Dot3(ax,ay,az,bx,by,bz)
  %2719 = call float @dx.op.unary.f32(i32 25, float %2718)  ; Rsqrt(value)
  %2720 = fmul fast float %2719, %2706
  %2721 = fmul fast float %2719, %2707
  %2722 = fmul fast float %2719, %2637
  %2723 = fmul fast float %2717, %2717
  %2724 = fsub fast float 1.000000e+00, %2723
  %2725 = fmul fast float %2714, 0x40005F8BE0000000
  %2726 = fsub fast float 0x400C5BF8A0000000, %2725
  %2727 = fdiv fast float %2715, %2726
  %2728 = fmul fast float %2727, 0x3FEE31C3C0000000
  %2729 = fmul fast float %2728, %2724
  %2730 = fmul fast float %2714, 0x3FDACB7480000000
  %2731 = fadd fast float %2730, 0xBFD7347680000000
  %2732 = fmul fast float %2731, %2727
  %2733 = fmul fast float %2732, %2724
  br label %2734

; <label>:2734                                    ; preds = %2705, %2684
  %2735 = phi float [ %2720, %2705 ], [ 0.000000e+00, %2684 ]
  %2736 = phi float [ %2721, %2705 ], [ 0.000000e+00, %2684 ]
  %2737 = phi float [ %2722, %2705 ], [ 0.000000e+00, %2684 ]
  %2738 = phi float [ %2729, %2705 ], [ 0.000000e+00, %2684 ]
  %2739 = phi float [ %2733, %2705 ], [ 0.000000e+00, %2684 ]
  %2740 = call float @dx.op.dot3.f32(i32 55, float %2735, float %2736, float %2737, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2741 = fmul fast float %2740, %2740
  %2742 = fmul fast float %2741, 0x3FEE471020000000
  %2743 = fadd fast float %2742, 0xBFD42F6020000000
  %2744 = fmul fast float %2700, 0x3FD20DD760000000
  %2745 = fmul fast float %2743, %2739
  %2746 = fmul fast float %2738, 0x3FDF454380000000
  %2747 = fmul fast float %2746, %2740
  %2748 = fadd fast float %2747, %2744
  %2749 = fadd fast float %2748, %2745
  %2750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2620)  ; FMax(a,b)
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2643, float %2646, float %2649, float %2643, float %2646, float %2649)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = fcmp fast oeq float %2751, 0.000000e+00
  %2753 = fcmp fast oeq float %2750, 0.000000e+00
  %2754 = or i1 %2753, %2752
  br i1 %2754, label %2784, label %2755

; <label>:2755                                    ; preds = %2734
  %2756 = fsub fast float -0.000000e+00, %2649
  %2757 = fsub fast float -0.000000e+00, %2643
  %2758 = call float @dx.op.unary.f32(i32 24, float %2751)  ; Sqrt(value)
  %2759 = fdiv fast float %2758, %2750
  %2760 = fcmp fast ogt float %2759, 0x3FFB6F8900000000
  %2761 = select i1 %2760, float 0x3FFB6F8900000000, float %2759
  %2762 = fmul fast float %2761, 0x3FE8A23460000000
  %2763 = call float @dx.op.unary.f32(i32 7, float %2762)  ; Saturate(value)
  %2764 = call float @dx.op.binary.f32(i32 35, float %2761, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2765 = fmul fast float %2763, %2750
  %2766 = fmul fast float %2764, 0x3FF279A740000000
  %2767 = fadd fast float %2766, -1.000000e+00
  %2768 = call float @dx.op.dot3.f32(i32 55, float %2756, float %2757, float %2646, float %2756, float %2757, float %2646)  ; Dot3(ax,ay,az,bx,by,bz)
  %2769 = call float @dx.op.unary.f32(i32 25, float %2768)  ; Rsqrt(value)
  %2770 = fmul fast float %2769, %2756
  %2771 = fmul fast float %2769, %2757
  %2772 = fmul fast float %2769, %2646
  %2773 = fmul fast float %2767, %2767
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = fmul fast float %2764, 0x40005F8BE0000000
  %2776 = fsub fast float 0x400C5BF8A0000000, %2775
  %2777 = fdiv fast float %2765, %2776
  %2778 = fmul fast float %2777, 0x3FEE31C3C0000000
  %2779 = fmul fast float %2778, %2774
  %2780 = fmul fast float %2764, 0x3FDACB7480000000
  %2781 = fadd fast float %2780, 0xBFD7347680000000
  %2782 = fmul fast float %2781, %2777
  %2783 = fmul fast float %2782, %2774
  br label %2784

; <label>:2784                                    ; preds = %2755, %2734
  %2785 = phi float [ %2770, %2755 ], [ 0.000000e+00, %2734 ]
  %2786 = phi float [ %2771, %2755 ], [ 0.000000e+00, %2734 ]
  %2787 = phi float [ %2772, %2755 ], [ 0.000000e+00, %2734 ]
  %2788 = phi float [ %2779, %2755 ], [ 0.000000e+00, %2734 ]
  %2789 = phi float [ %2783, %2755 ], [ 0.000000e+00, %2734 ]
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2785, float %2786, float %2787, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = fmul fast float %2790, %2790
  %2792 = fmul fast float %2791, 0x3FEE471020000000
  %2793 = fadd fast float %2792, 0xBFD42F6020000000
  %2794 = fmul fast float %2750, 0x3FD20DD760000000
  %2795 = fmul fast float %2793, %2789
  %2796 = fmul fast float %2788, 0x3FDF454380000000
  %2797 = fmul fast float %2796, %2790
  %2798 = fadd fast float %2797, %2794
  %2799 = fadd fast float %2798, %2795
  %2800 = call float @dx.op.binary.f32(i32 35, float %2699, float 0.000000e+00)  ; FMax(a,b)
  %2801 = call float @dx.op.binary.f32(i32 35, float %2749, float 0.000000e+00)  ; FMax(a,b)
  %2802 = call float @dx.op.binary.f32(i32 35, float %2799, float 0.000000e+00)  ; FMax(a,b)
  %2803 = fsub fast float %2019, %2800
  %2804 = fsub fast float %2020, %2801
  %2805 = fsub fast float %2021, %2802
  %2806 = fmul fast float %2803, %1828
  %2807 = fmul fast float %2804, %1828
  %2808 = fmul fast float %2805, %1828
  %2809 = fadd fast float %2806, %2800
  %2810 = fadd fast float %2807, %2801
  %2811 = fadd fast float %2808, %2802
  %2812 = fmul fast float %2622, %1828
  %2813 = fsub fast float %2622, %2812
  br label %2814

; <label>:2814                                    ; preds = %2784, %2018
  %2815 = phi float [ %2813, %2784 ], [ 0.000000e+00, %2018 ]
  %2816 = phi float [ %2809, %2784 ], [ %2019, %2018 ]
  %2817 = phi float [ %2810, %2784 ], [ %2020, %2018 ]
  %2818 = phi float [ %2811, %2784 ], [ %2021, %2018 ]
  %2819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2820 = extractvalue %dx.types.CBufRet.f32 %2819, 0
  %2821 = call float @dx.op.binary.f32(i32 36, float %1613, float %2820)  ; FMin(a,b)
  %2822 = fmul fast float %2821, %1807
  %2823 = fsub fast float 1.000000e+00, %2822
  %2824 = bitcast float %2823 to i32
  %2825 = sub nsw i32 2129859010, %2824
  %2826 = bitcast i32 %2825 to float
  %2827 = call float @dx.op.binary.f32(i32 36, float %1614, float %2820)  ; FMin(a,b)
  %2828 = fmul fast float %2827, %1807
  %2829 = fsub fast float 1.000000e+00, %2828
  %2830 = bitcast float %2829 to i32
  %2831 = sub nsw i32 2129859010, %2830
  %2832 = bitcast i32 %2831 to float
  %2833 = call float @dx.op.binary.f32(i32 36, float %1615, float %2820)  ; FMin(a,b)
  %2834 = fmul fast float %2833, %1807
  %2835 = fsub fast float 1.000000e+00, %2834
  %2836 = bitcast float %2835 to i32
  %2837 = sub nsw i32 2129859010, %2836
  %2838 = bitcast i32 %2837 to float
  %2839 = fmul fast float %2816, %1806
  %2840 = fmul fast float %2839, %2826
  %2841 = fmul fast float %2817, %1806
  %2842 = fmul fast float %2841, %2832
  %2843 = fmul fast float %2818, %1806
  %2844 = fmul fast float %2843, %2838
  %2845 = extractvalue %dx.types.CBufRet.i32 %1825, 2
  %2846 = and i32 %2845, 1
  %2847 = icmp ne i32 %2846, 0
  %2848 = fsub fast float 1.000000e+00, %1828
  %2849 = select i1 %2847, float %1828, float %2840
  %2850 = select i1 %2847, float %2848, float %2842
  %2851 = select i1 %2847, float 0.000000e+00, float %2844
  %2852 = call float @dx.op.dot3.f32(i32 55, float %2849, float %2850, float %2851, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2853 = select i1 %1787, float 0.000000e+00, float %2849
  %2854 = select i1 %1787, float %2852, float %2850
  %2855 = select i1 %1787, float 0.000000e+00, float %2851
  %2856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2857 = extractvalue %dx.types.CBufRet.f32 %2856, 0
  %2858 = bitcast float %2857 to i32
  %2859 = lshr i32 %2858, 8
  %2860 = and i32 %2859, 255
  %2861 = uitofp i32 %2860 to float
  %2862 = fptoui float %2861 to i32
  %2863 = icmp eq i32 %2862, 23
  br i1 %2863, label %2864, label %2887

; <label>:2864                                    ; preds = %2814
  %2865 = fmul fast float %2838, %1806
  %2866 = fmul fast float %2832, %1806
  %2867 = fmul fast float %2826, %1806
  %2868 = fadd fast float %2867, 1.000000e+00
  %2869 = fadd fast float %2866, 1.000000e+00
  %2870 = fadd fast float %2865, 1.000000e+00
  %2871 = fmul fast float %2868, 5.000000e-01
  %2872 = fmul fast float %2869, 5.000000e-01
  %2873 = fmul fast float %2870, 5.000000e-01
  %2874 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2875 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2876 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2877 = fmul fast float %2874, 1.023000e+03
  %2878 = fmul fast float %2875, 1.023000e+03
  %2879 = fmul fast float %2876, 1.023000e+03
  %2880 = fptoui float %2877 to i32
  %2881 = fptoui float %2878 to i32
  %2882 = fptoui float %2879 to i32
  %2883 = shl i32 %2881, 10
  %2884 = or i32 %2883, %2880
  %2885 = shl i32 %2882, 20
  %2886 = or i32 %2884, %2885
  br label %2887

; <label>:2887                                    ; preds = %2864, %2814
  %2888 = phi i32 [ %2886, %2864 ], [ 0, %2814 ]
  %2889 = fsub fast float 1.000000e+00, %1788
  %2890 = fmul fast float %2889, %1661
  %2891 = fadd fast float %2890, %1788
  %2892 = fcmp fast ogt float %1677, 0.000000e+00
  %2893 = select i1 %2892, float %1685, float 0.000000e+00
  %2894 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %2893, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2895 = extractvalue %dx.types.ResRet.f32 %2894, 0
  %2896 = extractvalue %dx.types.ResRet.f32 %2894, 1
  %2897 = extractvalue %dx.types.ResRet.f32 %2894, 2
  %2898 = fadd fast float %2895, -5.000000e-01
  %2899 = fadd fast float %2896, -5.000000e-01
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fmul fast float %1696, %2898
  %2902 = fmul fast float %1700, %2899
  %2903 = fmul fast float %1788, 4.000000e+00
  %2904 = fmul fast float %2903, %2889
  %2905 = fmul fast float %2904, %1679
  %2906 = fmul fast float %2905, %2900
  %2907 = fadd fast float %1673, %2901
  %2908 = fadd fast float %1674, %2902
  %2909 = fadd fast float %2891, %2906
  %2910 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  %2911 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  %2912 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2913 = call float @dx.op.binary.f32(i32 35, float %2911, float %2912)  ; FMax(a,b)
  %2914 = call float @dx.op.binary.f32(i32 35, float %2910, float %2913)  ; FMax(a,b)
  %2915 = fsub fast float 1.000000e+00, %2914
  %2916 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %2917 = fcmp fast olt float %2916, 0.000000e+00
  br i1 %2917, label %2918, label %3622

; <label>:2918                                    ; preds = %2887
  %2919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2920 = extractvalue %dx.types.CBufRet.f32 %2919, 2
  %2921 = extractvalue %dx.types.CBufRet.f32 %2919, 3
  %2922 = fmul fast float %2920, %72
  %2923 = fmul fast float %2921, %73
  %2924 = fptoui float %2922 to i32
  %2925 = fptoui float %2923 to i32
  %2926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2927 = extractvalue %dx.types.CBufRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.CBufRet.f32 %2926, 2
  %2929 = extractvalue %dx.types.CBufRet.f32 %2926, 3
  %2930 = fadd fast float %69, -4.000000e+00
  %2931 = call float @dx.op.binary.f32(i32 35, float %2930, float 0.000000e+00)  ; FMax(a,b)
  %2932 = fadd fast float %2931, %2927
  %2933 = fmul fast float %2932, %2928
  %2934 = call float @dx.op.unary.f32(i32 23, float %2933)  ; Log(value)
  %2935 = fmul fast float %2934, %2929
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2938 = fmul fast float %2935, %2937
  %2939 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.i32 %2940, 1
  %2942 = add i32 %2941, -1
  %2943 = uitofp i32 %2941 to float
  %2944 = fmul fast float %2943, %2939
  %2945 = fptoui float %2944 to i32
  %2946 = call i32 @dx.op.binary.i32(i32 40, i32 %2945, i32 %2942)  ; UMin(a,b)
  %2947 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.i32 %2947, 2
  %2949 = extractvalue %dx.types.CBufRet.i32 %2947, 3
  %2950 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2925, i32 %2948, i32 %2924)  ; UMad(a,b,c)
  %2951 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2946, i32 %2949, i32 %2950)  ; UMad(a,b,c)
  %2952 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %2953 = fptoui float %2952 to i32
  %2954 = lshr i32 %2953, 5
  %2955 = call i32 @dx.op.binary.i32(i32 40, i32 %2954, i32 8191)  ; UMin(a,b)
  %2956 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2957 = extractvalue %dx.types.CBufRet.i32 %2956, 2
  %2958 = add nsw i32 %2957, -1
  %2959 = call i32 @dx.op.binary.i32(i32 37, i32 %2958, i32 0)  ; IMax(a,b)
  %2960 = shl i32 %2955, 2
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = lshr i32 %2962, 16
  %2964 = and i32 %2962, 65535
  %2965 = lshr i32 %2962, 21
  %2966 = lshr i32 %2964, 5
  %2967 = call i32 @dx.op.binary.i32(i32 40, i32 %2966, i32 %2959)  ; UMin(a,b)
  %2968 = icmp ugt i32 %2965, %2967
  br i1 %2968, label %3547, label %2969

; <label>:2969                                    ; preds = %2918
  br label %2970

; <label>:2970                                    ; preds = %3529, %2969
  %2971 = phi i32 [ %3530, %3529 ], [ %1575, %2969 ]
  %2972 = phi i32 [ %3531, %3529 ], [ %2888, %2969 ]
  %2973 = phi float [ %3532, %3529 ], [ 0.000000e+00, %2969 ]
  %2974 = phi float [ %3533, %3529 ], [ 0.000000e+00, %2969 ]
  %2975 = phi float [ %3534, %3529 ], [ 0.000000e+00, %2969 ]
  %2976 = phi float [ %3535, %3529 ], [ 0.000000e+00, %2969 ]
  %2977 = phi float [ %3536, %3529 ], [ 0.000000e+00, %2969 ]
  %2978 = phi float [ %3537, %3529 ], [ 0.000000e+00, %2969 ]
  %2979 = phi i32 [ %3538, %3529 ], [ 0, %2969 ]
  %2980 = phi float [ %3539, %3529 ], [ 0.000000e+00, %2969 ]
  %2981 = phi float [ %3540, %3529 ], [ 0.000000e+00, %2969 ]
  %2982 = phi float [ %3541, %3529 ], [ 0.000000e+00, %2969 ]
  %2983 = phi i32 [ %3542, %3529 ], [ 1, %2969 ]
  %2984 = phi float [ %3543, %3529 ], [ 1.000000e+00, %2969 ]
  %2985 = phi i32 [ %3544, %3529 ], [ %2965, %2969 ]
  %2986 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2987 = extractvalue %dx.types.CBufRet.i32 %2986, 2
  %2988 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2951, i32 %2987, i32 %2985)  ; UMad(a,b,c)
  %2989 = shl i32 %2988, 2
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = shl i32 %2985, 5
  %2993 = sub nsw i32 %2963, %2992
  %2994 = call i32 @dx.op.binary.i32(i32 37, i32 %2993, i32 0)  ; IMax(a,b)
  %2995 = call i32 @dx.op.binary.i32(i32 38, i32 %2994, i32 31)  ; IMin(a,b)
  %2996 = sub nsw i32 1, %2963
  %2997 = add nsw i32 %2996, %2964
  %2998 = call i32 @dx.op.binary.i32(i32 37, i32 %2997, i32 0)  ; IMax(a,b)
  %2999 = call i32 @dx.op.binary.i32(i32 38, i32 %2998, i32 32)  ; IMin(a,b)
  %3000 = and i32 %2999, 31
  %3001 = shl i32 -1, %3000
  %3002 = xor i32 %3001, -1
  %3003 = and i32 %2995, 31
  %3004 = shl i32 %3002, %3003
  %3005 = icmp eq i32 %2999, 32
  %3006 = select i1 %3005, i32 -1, i32 %3004
  %3007 = and i32 %3006, %2991
  %3008 = icmp eq i32 %3007, 0
  br i1 %3008, label %3529, label %3009

; <label>:3009                                    ; preds = %2970
  br label %3010

; <label>:3010                                    ; preds = %3144, %3009
  %3011 = phi i32 [ %3145, %3144 ], [ %2971, %3009 ]
  %3012 = phi i32 [ %3146, %3144 ], [ %2972, %3009 ]
  %3013 = phi float [ %3147, %3144 ], [ %2973, %3009 ]
  %3014 = phi float [ %3148, %3144 ], [ %2974, %3009 ]
  %3015 = phi float [ %3149, %3144 ], [ %2975, %3009 ]
  %3016 = phi float [ %3150, %3144 ], [ %2976, %3009 ]
  %3017 = phi float [ %3151, %3144 ], [ %2977, %3009 ]
  %3018 = phi float [ %3152, %3144 ], [ %2978, %3009 ]
  %3019 = phi i32 [ %3153, %3144 ], [ %2979, %3009 ]
  %3020 = phi float [ %3154, %3144 ], [ %2980, %3009 ]
  %3021 = phi float [ %3155, %3144 ], [ %2981, %3009 ]
  %3022 = phi float [ %3156, %3144 ], [ %2982, %3009 ]
  %3023 = phi i32 [ %3157, %3144 ], [ %2983, %3009 ]
  %3024 = phi float [ %3158, %3144 ], [ %2984, %3009 ]
  %3025 = phi i32 [ %3030, %3144 ], [ %3007, %3009 ]
  %3026 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3025)  ; FirstbitLo(value)
  %3027 = add i32 %3026, %2992
  %3028 = and i32 %3026, 31
  %3029 = shl i32 1, %3028
  %3030 = xor i32 %3029, %3025
  %3031 = mul i32 %3027, 72
  %3032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.ResRet.f32 %3032, 1
  %3035 = extractvalue %dx.types.ResRet.f32 %3032, 2
  %3036 = add i32 %3031, 12
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3036, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = add i32 %3031, 16
  %3040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.ResRet.f32 %3040, 2
  %3044 = add i32 %3031, 28
  %3045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3044, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.f32 %3045, 0
  %3047 = add i32 %3031, 32
  %3048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3047, i32 undef)  ; BufferLoad(srv,index,wot)
  %3049 = extractvalue %dx.types.ResRet.f32 %3048, 0
  %3050 = extractvalue %dx.types.ResRet.f32 %3048, 1
  %3051 = extractvalue %dx.types.ResRet.f32 %3048, 2
  %3052 = extractvalue %dx.types.ResRet.f32 %3048, 3
  %3053 = add i32 %3031, 48
  %3054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3053, i32 undef)  ; BufferLoad(srv,index,wot)
  %3055 = extractvalue %dx.types.ResRet.f32 %3054, 0
  %3056 = extractvalue %dx.types.ResRet.f32 %3054, 1
  %3057 = add i32 %3031, 56
  %3058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.f32 %3058, 0
  %3060 = extractvalue %dx.types.ResRet.f32 %3058, 1
  %3061 = add i32 %3031, 64
  %3062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.ResRet.f32 %3062, 1
  %3065 = mul i32 %3027, 60
  %3066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.f32 %3066, 0
  %3068 = extractvalue %dx.types.ResRet.f32 %3066, 1
  %3069 = extractvalue %dx.types.ResRet.f32 %3066, 2
  %3070 = add i32 %3065, 12
  %3071 = add i32 %3065, 48
  %3072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.ResRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.ResRet.f32 %3072, 2
  %3076 = and i32 %3038, 32767
  %3077 = bitcast float %3034 to i32
  %3078 = and i32 %3038, 32768
  %3079 = icmp ne i32 %3078, 0
  %3080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3081 = extractvalue %dx.types.CBufRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.CBufRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.CBufRet.f32 %3080, 2
  %3084 = fsub fast float %3067, %3081
  %3085 = fsub fast float %3068, %3082
  %3086 = fsub fast float %3069, %3083
  %3087 = fsub fast float %116, %3084
  %3088 = fsub fast float %117, %3085
  %3089 = fsub fast float %118, %3086
  %3090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.f32 %3090, 0
  %3092 = extractvalue %dx.types.ResRet.f32 %3090, 1
  %3093 = extractvalue %dx.types.ResRet.f32 %3090, 2
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float %3091, float %3092, float %3093)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = add i32 %3065, 24
  %3096 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.f32 %3096, 0
  %3098 = extractvalue %dx.types.ResRet.f32 %3096, 1
  %3099 = extractvalue %dx.types.ResRet.f32 %3096, 2
  %3100 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float %3097, float %3098, float %3099)  ; Dot3(ax,ay,az,bx,by,bz)
  %3101 = add i32 %3065, 36
  %3102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.ResRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.ResRet.f32 %3102, 2
  %3106 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float %3103, float %3104, float %3105)  ; Dot3(ax,ay,az,bx,by,bz)
  %3107 = call float @dx.op.unary.f32(i32 6, float %3094)  ; FAbs(value)
  %3108 = call float @dx.op.unary.f32(i32 6, float %3100)  ; FAbs(value)
  %3109 = call float @dx.op.unary.f32(i32 6, float %3106)  ; FAbs(value)
  %3110 = fsub fast float %3073, %3107
  %3111 = fsub fast float %3074, %3108
  %3112 = fsub fast float %3075, %3109
  %3113 = fmul fast float %3110, %3041
  %3114 = fmul fast float %3111, %3042
  %3115 = fmul fast float %3112, %3043
  %3116 = call float @dx.op.binary.f32(i32 36, float %3114, float %3115)  ; FMin(a,b)
  %3117 = call float @dx.op.binary.f32(i32 36, float %3113, float %3116)  ; FMin(a,b)
  %3118 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3119 = call float @dx.op.binary.f32(i32 36, float %3024, float %3118)  ; FMin(a,b)
  %3120 = uitofp i1 %3079 to float
  %3121 = select i1 %58, float 1.000000e+00, float 2.000000e+00
  %3122 = fsub fast float %3121, %3120
  %3123 = fmul fast float %3119, %3122
  %3124 = lshr i32 %3011, 8
  %3125 = and i32 %3124, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = fptoui float %3126 to i32
  %3128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3129 = extractvalue %dx.types.CBufRet.f32 %3128, 1
  %3130 = bitcast float %3129 to i32
  %3131 = lshr i32 %3130, 24
  %3132 = uitofp i32 %3131 to float
  %3133 = fptoui float %3132 to i32
  %3134 = icmp ne i32 %3133, 1
  %3135 = zext i1 %3134 to i32
  %3136 = add i32 %3135, %3127
  %3137 = uitofp i32 %3136 to float
  %3138 = fptoui float %3137 to i32
  %3139 = shl i32 %3138, 8
  %3140 = and i32 %3139, 65280
  %3141 = and i32 %3011, -65281
  %3142 = or i32 %3140, %3141
  %3143 = fcmp fast ogt float %3123, 0.000000e+00
  br i1 %3143, label %3160, label %3144

; <label>:3144                                    ; preds = %3512, %3381, %3010
  %3145 = phi i32 [ %3459, %3381 ], [ %3142, %3010 ], [ %3459, %3512 ]
  %3146 = phi i32 [ %3012, %3381 ], [ %3012, %3010 ], [ %3527, %3512 ]
  %3147 = phi float [ %3445, %3381 ], [ %3013, %3010 ], [ %3445, %3512 ]
  %3148 = phi float [ %3446, %3381 ], [ %3014, %3010 ], [ %3446, %3512 ]
  %3149 = phi float [ %3447, %3381 ], [ %3015, %3010 ], [ %3447, %3512 ]
  %3150 = phi float [ %3506, %3381 ], [ %3016, %3010 ], [ %3506, %3512 ]
  %3151 = phi float [ %3507, %3381 ], [ %3017, %3010 ], [ %3507, %3512 ]
  %3152 = phi float [ %3508, %3381 ], [ %3018, %3010 ], [ %3508, %3512 ]
  %3153 = phi i32 [ %3510, %3381 ], [ %3019, %3010 ], [ %3510, %3512 ]
  %3154 = phi float [ %3463, %3381 ], [ %3020, %3010 ], [ %3463, %3512 ]
  %3155 = phi float [ %3464, %3381 ], [ %3021, %3010 ], [ %3464, %3512 ]
  %3156 = phi float [ %3465, %3381 ], [ %3022, %3010 ], [ %3465, %3512 ]
  %3157 = phi i32 [ 0, %3381 ], [ %3023, %3010 ], [ 0, %3512 ]
  %3158 = phi float [ %3448, %3381 ], [ %3024, %3010 ], [ %3448, %3512 ]
  %3159 = icmp eq i32 %3025, %3029
  br i1 %3159, label %3528, label %3010

; <label>:3160                                    ; preds = %3010
  %3161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3162 = extractvalue %dx.types.CBufRet.f32 %3161, 3
  %3163 = bitcast float %3033 to i32
  %3164 = extractvalue %dx.types.CBufRet.f32 %3128, 0
  %3165 = bitcast float %3164 to i32
  %3166 = lshr i32 %3165, 8
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fptoui float %3168 to i32
  %3170 = and i32 %3169, 2
  %3171 = icmp eq i32 %3170, 0
  %3172 = select i1 %3171, float %1601, float %1629
  %3173 = select i1 %3171, float %1602, float %1630
  %3174 = select i1 %3171, float %1603, float %1631
  %3175 = icmp ne i32 %3163, -1
  %3176 = fcmp oeq float %3162, 0.000000e+00
  %3177 = and i1 %3176, %3175
  br i1 %3177, label %3178, label %3302

; <label>:3178                                    ; preds = %3160
  %3179 = fsub fast float -0.000000e+00, %3091
  %3180 = fsub fast float -0.000000e+00, %3092
  %3181 = fsub fast float -0.000000e+00, %3093
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3172, float %3173, float %3174, float %3179, float %3180, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = fsub fast float -0.000000e+00, %3182
  %3184 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float %3179, float %3180, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3185 = fadd fast float %3184, %3056
  %3186 = fadd fast float %3055, %3184
  %3187 = fsub fast float -0.000000e+00, %3186
  %3188 = fcmp ogt float %3182, -0.000000e+00
  %3189 = select i1 %3188, float %3187, float %3185
  %3190 = call float @dx.op.unary.f32(i32 6, float %3183)  ; FAbs(value)
  %3191 = fdiv fast float 1.000000e+00, %3190
  %3192 = fmul fast float %3189, %3191
  %3193 = call float @dx.op.binary.f32(i32 35, float %3192, float 0.000000e+00)  ; FMax(a,b)
  %3194 = fsub fast float -0.000000e+00, %3097
  %3195 = fsub fast float -0.000000e+00, %3098
  %3196 = fsub fast float -0.000000e+00, %3099
  %3197 = call float @dx.op.dot3.f32(i32 55, float %3172, float %3173, float %3174, float %3194, float %3195, float %3196)  ; Dot3(ax,ay,az,bx,by,bz)
  %3198 = fsub fast float -0.000000e+00, %3197
  %3199 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float %3194, float %3195, float %3196)  ; Dot3(ax,ay,az,bx,by,bz)
  %3200 = fadd fast float %3199, %3060
  %3201 = fadd fast float %3059, %3199
  %3202 = fsub fast float -0.000000e+00, %3201
  %3203 = fcmp ogt float %3197, -0.000000e+00
  %3204 = select i1 %3203, float %3202, float %3200
  %3205 = call float @dx.op.unary.f32(i32 6, float %3198)  ; FAbs(value)
  %3206 = fdiv fast float 1.000000e+00, %3205
  %3207 = fmul fast float %3204, %3206
  %3208 = call float @dx.op.binary.f32(i32 35, float %3207, float 0.000000e+00)  ; FMax(a,b)
  %3209 = fsub fast float -0.000000e+00, %3103
  %3210 = fsub fast float -0.000000e+00, %3104
  %3211 = fsub fast float -0.000000e+00, %3105
  %3212 = call float @dx.op.dot3.f32(i32 55, float %3172, float %3173, float %3174, float %3209, float %3210, float %3211)  ; Dot3(ax,ay,az,bx,by,bz)
  %3213 = fsub fast float -0.000000e+00, %3212
  %3214 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3088, float %3089, float %3209, float %3210, float %3211)  ; Dot3(ax,ay,az,bx,by,bz)
  %3215 = fadd fast float %3214, %3064
  %3216 = fadd fast float %3063, %3214
  %3217 = fsub fast float -0.000000e+00, %3216
  %3218 = fcmp ogt float %3212, -0.000000e+00
  %3219 = select i1 %3218, float %3217, float %3215
  %3220 = call float @dx.op.unary.f32(i32 6, float %3213)  ; FAbs(value)
  %3221 = fdiv fast float 1.000000e+00, %3220
  %3222 = fmul fast float %3219, %3221
  %3223 = call float @dx.op.binary.f32(i32 35, float %3222, float 0.000000e+00)  ; FMax(a,b)
  %3224 = call float @dx.op.binary.f32(i32 36, float %3208, float %3223)  ; FMin(a,b)
  %3225 = call float @dx.op.binary.f32(i32 36, float %3193, float %3224)  ; FMin(a,b)
  %3226 = fmul fast float %3225, %3172
  %3227 = fmul fast float %3225, %3173
  %3228 = fmul fast float %3225, %3174
  %3229 = fadd fast float %3226, %116
  %3230 = fadd fast float %3227, %117
  %3231 = fadd fast float %3228, %118
  %3232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3233 = extractvalue %dx.types.CBufRet.f32 %3232, 0
  %3234 = extractvalue %dx.types.CBufRet.f32 %3232, 1
  %3235 = extractvalue %dx.types.CBufRet.f32 %3232, 2
  %3236 = fadd fast float %3229, %3233
  %3237 = fadd fast float %3230, %3234
  %3238 = fadd fast float %3231, %3235
  %3239 = fcmp fast olt float %3193, %3208
  %3240 = fcmp fast olt float %3193, %3223
  %3241 = and i1 %3239, %3240
  br i1 %3241, label %3245, label %3242

; <label>:3242                                    ; preds = %3178
  %3243 = fcmp fast olt float %3208, %3223
  br i1 %3243, label %3244, label %3245

; <label>:3244                                    ; preds = %3242
  br label %3245

; <label>:3245                                    ; preds = %3244, %3242, %3178
  %3246 = phi float [ 0.000000e+00, %3244 ], [ 0.000000e+00, %3242 ], [ 1.000000e+00, %3178 ]
  %3247 = phi float [ 1.000000e+00, %3244 ], [ 0.000000e+00, %3242 ], [ 0.000000e+00, %3178 ]
  %3248 = phi float [ 0.000000e+00, %3244 ], [ 1.000000e+00, %3242 ], [ 0.000000e+00, %3178 ]
  %3249 = phi float [ %3097, %3244 ], [ %3103, %3242 ], [ %3091, %3178 ]
  %3250 = phi float [ %3098, %3244 ], [ %3104, %3242 ], [ %3092, %3178 ]
  %3251 = phi float [ %3099, %3244 ], [ %3105, %3242 ], [ %3093, %3178 ]
  %3252 = call float @dx.op.unary.f32(i32 6, float %3251)  ; FAbs(value)
  %3253 = fcmp fast olt float %3252, 0x3FE276C8C0000000
  %3254 = select i1 %3253, float 0.000000e+00, float 1.000000e+00
  %3255 = select i1 %3253, float 1.000000e+00, float 0.000000e+00
  %3256 = fmul fast float %3255, %3250
  %3257 = fmul fast float %3254, %3251
  %3258 = fsub fast float %3256, %3257
  %3259 = fmul fast float %3249, %3255
  %3260 = fsub fast float -0.000000e+00, %3259
  %3261 = fmul fast float %3254, %3249
  %3262 = call float @dx.op.dot3.f32(i32 55, float %3258, float %3260, float %3261, float %3258, float %3260, float %3261)  ; Dot3(ax,ay,az,bx,by,bz)
  %3263 = call float @dx.op.unary.f32(i32 25, float %3262)  ; Rsqrt(value)
  %3264 = fmul fast float %3258, %3263
  %3265 = fmul fast float %3263, %3260
  %3266 = fmul fast float %3261, %3263
  %3267 = fmul fast float %3266, %3250
  %3268 = fmul fast float %3265, %3251
  %3269 = fsub fast float %3267, %3268
  %3270 = fmul fast float %3264, %3251
  %3271 = fmul fast float %3266, %3249
  %3272 = fsub fast float %3270, %3271
  %3273 = fmul fast float %3265, %3249
  %3274 = fmul fast float %3264, %3250
  %3275 = fsub fast float %3273, %3274
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3269, float %3272, float %3275, float %3269, float %3272, float %3275)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = call float @dx.op.unary.f32(i32 25, float %3276)  ; Rsqrt(value)
  %3278 = fmul fast float %3269, %3277
  %3279 = fmul fast float %3272, %3277
  %3280 = fmul fast float %3275, %3277
  %3281 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %3264, float %3265, float %3266)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %3278, float %3279, float %3280)  ; Dot3(ax,ay,az,bx,by,bz)
  %3283 = fmul fast float %3281, 0x3FA99999A0000000
  %3284 = fmul fast float %3282, 0x3FA99999A0000000
  %3285 = call float @dx.op.unary.f32(i32 22, float %3283)  ; Frc(value)
  %3286 = call float @dx.op.unary.f32(i32 22, float %3284)  ; Frc(value)
  %3287 = fadd fast float %3285, 0xBFB99999A0000000
  %3288 = fadd fast float %3286, 0xBFB99999A0000000
  %3289 = call float @dx.op.unary.f32(i32 6, float %3287)  ; FAbs(value)
  %3290 = call float @dx.op.unary.f32(i32 6, float %3288)  ; FAbs(value)
  %3291 = fmul fast float %3289, 1.000000e+01
  %3292 = fmul fast float %3290, 1.000000e+01
  %3293 = call float @dx.op.binary.f32(i32 36, float %3291, float %3292)  ; FMin(a,b)
  %3294 = call float @dx.op.unary.f32(i32 7, float %3293)  ; Saturate(value)
  %3295 = fsub fast float 1.000000e+00, %3294
  %3296 = fmul fast float %3295, %3246
  %3297 = fmul fast float %3295, %3247
  %3298 = fmul fast float %3295, %3248
  %3299 = fsub fast float %3229, %3033
  %3300 = fsub fast float %3230, %3034
  %3301 = fsub fast float %3231, %3035
  br label %3309

; <label>:3302                                    ; preds = %3160
  %3303 = fmul fast float %3172, 8.096000e+03
  %3304 = fmul fast float %3173, 8.096000e+03
  %3305 = fmul fast float %3174, 8.096000e+03
  %3306 = fadd fast float %3303, %116
  %3307 = fadd fast float %3304, %117
  %3308 = fadd fast float %3305, %118
  br label %3309

; <label>:3309                                    ; preds = %3302, %3245
  %3310 = phi float [ %3172, %3302 ], [ %3299, %3245 ]
  %3311 = phi float [ %3173, %3302 ], [ %3300, %3245 ]
  %3312 = phi float [ %3174, %3302 ], [ %3301, %3245 ]
  %3313 = phi float [ %3306, %3302 ], [ %3229, %3245 ]
  %3314 = phi float [ %3307, %3302 ], [ %3230, %3245 ]
  %3315 = phi float [ %3308, %3302 ], [ %3231, %3245 ]
  %3316 = phi float [ 0.000000e+00, %3302 ], [ %3296, %3245 ]
  %3317 = phi float [ 0.000000e+00, %3302 ], [ %3297, %3245 ]
  %3318 = phi float [ 0.000000e+00, %3302 ], [ %3298, %3245 ]
  %3319 = fcmp fast olt float %3052, 1.000000e+00
  br i1 %3319, label %3320, label %3351, !dx.controlflow.hints !104

; <label>:3320                                    ; preds = %3309
  %3321 = fmul fast float %3312, %3050
  %3322 = fmul fast float %3311, %3051
  %3323 = fsub fast float %3321, %3322
  %3324 = fmul fast float %3310, %3051
  %3325 = fmul fast float %3312, %3049
  %3326 = fsub fast float %3324, %3325
  %3327 = fmul fast float %3311, %3049
  %3328 = fmul fast float %3310, %3050
  %3329 = fsub fast float %3327, %3328
  %3330 = fmul fast float %3323, 2.000000e+00
  %3331 = fmul fast float %3326, 2.000000e+00
  %3332 = fmul fast float %3329, 2.000000e+00
  %3333 = fmul fast float %3330, %3052
  %3334 = fmul fast float %3331, %3052
  %3335 = fmul fast float %3332, %3052
  %3336 = fmul fast float %3332, %3050
  %3337 = fmul fast float %3331, %3051
  %3338 = fmul fast float %3330, %3051
  %3339 = fmul fast float %3332, %3049
  %3340 = fmul fast float %3331, %3049
  %3341 = fmul fast float %3330, %3050
  %3342 = fadd fast float %3336, %3310
  %3343 = fadd fast float %3342, %3333
  %3344 = fsub fast float %3343, %3337
  %3345 = fsub fast float %3311, %3339
  %3346 = fadd fast float %3345, %3334
  %3347 = fadd fast float %3346, %3338
  %3348 = fadd fast float %3335, %3312
  %3349 = fsub fast float %3348, %3341
  %3350 = fadd fast float %3349, %3340
  br label %3351

; <label>:3351                                    ; preds = %3320, %3309
  %3352 = phi float [ %3344, %3320 ], [ %3310, %3309 ]
  %3353 = phi float [ %3347, %3320 ], [ %3311, %3309 ]
  %3354 = phi float [ %3350, %3320 ], [ %3312, %3309 ]
  br i1 %3177, label %3355, label %3378

; <label>:3355                                    ; preds = %3351
  %3356 = fsub fast float %3313, %116
  %3357 = fsub fast float %3314, %117
  %3358 = fsub fast float %3315, %118
  %3359 = fsub fast float %3313, %3033
  %3360 = fsub fast float %3314, %3034
  %3361 = fsub fast float %3315, %3035
  %3362 = call float @dx.op.dot3.f32(i32 55, float %3356, float %3357, float %3358, float %3356, float %3357, float %3358)  ; Dot3(ax,ay,az,bx,by,bz)
  %3363 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3360, float %3361, float %3359, float %3360, float %3361)  ; Dot3(ax,ay,az,bx,by,bz)
  %3364 = fadd fast float %3363, 0x3EE4F8B580000000
  %3365 = fdiv fast float %3362, %3364
  %3366 = bitcast float %3365 to i32
  %3367 = ashr i32 %3366, 1
  %3368 = add nsw i32 %3367, 532487669
  %3369 = bitcast i32 %3368 to float
  %3370 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3371 = fmul fast float %3370, 0x4009981AE0000000
  %3372 = fsub fast float 0x40111BBD80000000, %3371
  %3373 = fmul fast float %3372, %3370
  %3374 = fadd fast float %3373, 0xC0009F6020000000
  %3375 = fmul fast float %3374, %3370
  %3376 = fadd fast float %3375, 1.000000e+00
  %3377 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  br label %3381

; <label>:3378                                    ; preds = %3351
  %3379 = icmp ne i32 %3077, -1
  %3380 = zext i1 %3379 to i32
  br label %3381

; <label>:3381                                    ; preds = %3378, %3355
  %3382 = phi float [ 0.000000e+00, %3378 ], [ %3377, %3355 ]
  %3383 = phi i32 [ %3380, %3378 ], [ 0, %3355 ]
  %3384 = fmul float %3382, 5.000000e+00
  %3385 = fsub float 5.000000e+00, %3384
  %3386 = icmp ne i32 %3383, 0
  %3387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3388 = extractvalue %dx.types.CBufRet.f32 %3387, 3
  %3389 = fadd fast float %3388, %3385
  %3390 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3389)  ; FMax(a,b)
  %3391 = call float @dx.op.unary.f32(i32 6, float %3352)  ; FAbs(value)
  %3392 = call float @dx.op.unary.f32(i32 6, float %3353)  ; FAbs(value)
  %3393 = fadd fast float %3392, %3391
  %3394 = call float @dx.op.unary.f32(i32 6, float %3354)  ; FAbs(value)
  %3395 = fadd fast float %3393, %3394
  %3396 = fcmp fast oeq float %3395, 0.000000e+00
  %3397 = fdiv fast float 1.000000e+00, %3395
  %3398 = select i1 %3396, float 1.000000e+00, float %3397
  %3399 = fmul fast float %3398, %3352
  %3400 = fmul fast float %3398, %3353
  %3401 = call float @dx.op.unary.f32(i32 6, float %3400)  ; FAbs(value)
  %3402 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3403 = fsub fast float 1.000000e+00, %3401
  %3404 = fsub fast float 1.000000e+00, %3402
  %3405 = fcmp fast oge float %3399, 0.000000e+00
  %3406 = fcmp fast oge float %3400, 0.000000e+00
  %3407 = select i1 %3405, float 1.000000e+00, float -1.000000e+00
  %3408 = select i1 %3406, float 1.000000e+00, float -1.000000e+00
  %3409 = fcmp fast ole float %3354, 0.000000e+00
  %3410 = fmul fast float %3407, %3403
  %3411 = fmul fast float %3408, %3404
  %3412 = select i1 %3409, float %3410, float %3399
  %3413 = select i1 %3409, float %3411, float %3400
  %3414 = fmul fast float %3412, 5.000000e-01
  %3415 = fmul fast float %3413, 5.000000e-01
  %3416 = fadd fast float %3414, 5.000000e-01
  %3417 = fadd fast float %3415, 5.000000e-01
  %3418 = uitofp i32 %3076 to float
  %3419 = call float @dx.op.binary.f32(i32 36, float %3390, float 3.000000e+00)  ; FMin(a,b)
  %3420 = fadd fast float %3419, 2.000000e+00
  %3421 = call float @dx.op.unary.f32(i32 21, float %3420)  ; Exp(value)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3387, 1
  %3423 = fmul fast float %3422, %3421
  %3424 = fmul fast float %3423, 2.000000e+00
  %3425 = fsub fast float 1.000000e+00, %3424
  %3426 = fmul fast float %3416, %3425
  %3427 = fmul fast float %3417, %3425
  %3428 = fadd fast float %3426, %3423
  %3429 = fadd fast float %3427, %3423
  %3430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %3428, float %3429, float %3418, float undef, i32 0, i32 0, i32 undef, float %3390)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3431 = extractvalue %dx.types.ResRet.f32 %3430, 0
  %3432 = extractvalue %dx.types.ResRet.f32 %3430, 1
  %3433 = extractvalue %dx.types.ResRet.f32 %3430, 2
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 3
  %3436 = fmul fast float %3435, %3046
  %3437 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3436)  ; FMin(a,b)
  %3438 = select i1 %3386, float %3437, float %3436
  %3439 = fmul fast float %3431, %3123
  %3440 = fmul fast float %3439, %3438
  %3441 = fmul fast float %3432, %3123
  %3442 = fmul fast float %3441, %3438
  %3443 = fmul fast float %3433, %3123
  %3444 = fmul fast float %3443, %3438
  %3445 = fadd fast float %3440, %3013
  %3446 = fadd fast float %3442, %3014
  %3447 = fadd fast float %3444, %3015
  %3448 = fsub fast float %3024, %3123
  %3449 = and i32 %3138, 255
  %3450 = uitofp i32 %3449 to float
  %3451 = fptoui float %3450 to i32
  %3452 = icmp eq i32 %3133, 1
  %3453 = zext i1 %3452 to i32
  %3454 = add i32 %3453, %3451
  %3455 = uitofp i32 %3454 to float
  %3456 = fptoui float %3455 to i32
  %3457 = shl i32 %3456, 8
  %3458 = and i32 %3457, 65280
  %3459 = or i32 %3458, %3141
  %3460 = fmul fast float %3316, %3123
  %3461 = fmul fast float %3317, %3123
  %3462 = fmul fast float %3318, %3123
  %3463 = fadd fast float %3460, %3020
  %3464 = fadd fast float %3461, %3021
  %3465 = fadd fast float %3462, %3022
  %3466 = fmul fast float %3418, 0x3FE3C6EF40000000
  %3467 = call float @dx.op.unary.f32(i32 22, float %3466)  ; Frc(value)
  %3468 = fadd fast float %3467, 0x3FE5555560000000
  %3469 = fadd fast float %3467, 0x3FD5555560000000
  %3470 = fsub fast float -0.000000e+00, %3467
  %3471 = fsub fast float -0.000000e+00, %3468
  %3472 = fsub fast float -0.000000e+00, %3469
  %3473 = fcmp fast oge float %3467, %3470
  %3474 = fcmp fast oge float %3468, %3471
  %3475 = fcmp fast oge float %3469, %3472
  %3476 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3477 = call float @dx.op.unary.f32(i32 6, float %3468)  ; FAbs(value)
  %3478 = call float @dx.op.unary.f32(i32 6, float %3469)  ; FAbs(value)
  %3479 = call float @dx.op.unary.f32(i32 22, float %3476)  ; Frc(value)
  %3480 = call float @dx.op.unary.f32(i32 22, float %3477)  ; Frc(value)
  %3481 = call float @dx.op.unary.f32(i32 22, float %3478)  ; Frc(value)
  %3482 = fsub fast float -0.000000e+00, %3479
  %3483 = fsub fast float -0.000000e+00, %3480
  %3484 = fsub fast float -0.000000e+00, %3481
  %3485 = select i1 %3473, float %3479, float %3482
  %3486 = select i1 %3474, float %3480, float %3483
  %3487 = select i1 %3475, float %3481, float %3484
  %3488 = fmul fast float %3485, 6.000000e+00
  %3489 = fmul fast float %3486, 6.000000e+00
  %3490 = fmul fast float %3487, 6.000000e+00
  %3491 = fadd fast float %3488, -3.000000e+00
  %3492 = fadd fast float %3489, -3.000000e+00
  %3493 = fadd fast float %3490, -3.000000e+00
  %3494 = call float @dx.op.unary.f32(i32 6, float %3491)  ; FAbs(value)
  %3495 = call float @dx.op.unary.f32(i32 6, float %3492)  ; FAbs(value)
  %3496 = call float @dx.op.unary.f32(i32 6, float %3493)  ; FAbs(value)
  %3497 = fadd fast float %3494, -1.000000e+00
  %3498 = fadd fast float %3495, -1.000000e+00
  %3499 = fadd fast float %3496, -1.000000e+00
  %3500 = call float @dx.op.unary.f32(i32 7, float %3497)  ; Saturate(value)
  %3501 = call float @dx.op.unary.f32(i32 7, float %3498)  ; Saturate(value)
  %3502 = call float @dx.op.unary.f32(i32 7, float %3499)  ; Saturate(value)
  %3503 = fmul fast float %3500, %3123
  %3504 = fmul fast float %3501, %3123
  %3505 = fmul fast float %3502, %3123
  %3506 = fadd fast float %3503, %3016
  %3507 = fadd fast float %3504, %3017
  %3508 = fadd fast float %3505, %3018
  %3509 = icmp eq i32 %3076, 0
  %3510 = select i1 %3509, i32 1, i32 %3019
  %3511 = icmp eq i32 %3023, 0
  br i1 %3511, label %3144, label %3512

; <label>:3512                                    ; preds = %3381
  %3513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3513, 0
  %3515 = bitcast float %3514 to i32
  %3516 = lshr i32 %3515, 8
  %3517 = and i32 %3516, 255
  %3518 = uitofp i32 %3517 to float
  %3519 = fptoui float %3518 to i32
  %3520 = icmp eq i32 %3519, 16
  %3521 = bitcast float %3436 to i32
  %3522 = select i1 %3520, i32 %3521, i32 %3012
  %3523 = icmp eq i32 %3519, 17
  %3524 = select i1 %3523, i32 1065353216, i32 %3522
  %3525 = icmp eq i32 %3519, 18
  %3526 = bitcast float %3438 to i32
  %3527 = select i1 %3525, i32 %3526, i32 %3524
  br label %3144

; <label>:3528                                    ; preds = %3144
  br label %3529

; <label>:3529                                    ; preds = %3528, %2970
  %3530 = phi i32 [ %2971, %2970 ], [ %3145, %3528 ]
  %3531 = phi i32 [ %2972, %2970 ], [ %3146, %3528 ]
  %3532 = phi float [ %2973, %2970 ], [ %3147, %3528 ]
  %3533 = phi float [ %2974, %2970 ], [ %3148, %3528 ]
  %3534 = phi float [ %2975, %2970 ], [ %3149, %3528 ]
  %3535 = phi float [ %2976, %2970 ], [ %3150, %3528 ]
  %3536 = phi float [ %2977, %2970 ], [ %3151, %3528 ]
  %3537 = phi float [ %2978, %2970 ], [ %3152, %3528 ]
  %3538 = phi i32 [ %2979, %2970 ], [ %3153, %3528 ]
  %3539 = phi float [ %2980, %2970 ], [ %3154, %3528 ]
  %3540 = phi float [ %2981, %2970 ], [ %3155, %3528 ]
  %3541 = phi float [ %2982, %2970 ], [ %3156, %3528 ]
  %3542 = phi i32 [ %2983, %2970 ], [ %3157, %3528 ]
  %3543 = phi float [ %2984, %2970 ], [ %3158, %3528 ]
  %3544 = add i32 %2985, 1
  %3545 = icmp ugt i32 %3544, %2967
  br i1 %3545, label %3546, label %2970, !llvm.loop !105

; <label>:3546                                    ; preds = %3529
  br label %3547

; <label>:3547                                    ; preds = %3546, %2918
  %3548 = phi i32 [ %1575, %2918 ], [ %3530, %3546 ]
  %3549 = phi i32 [ %2888, %2918 ], [ %3531, %3546 ]
  %3550 = phi float [ 0.000000e+00, %2918 ], [ %3532, %3546 ]
  %3551 = phi float [ 0.000000e+00, %2918 ], [ %3533, %3546 ]
  %3552 = phi float [ 0.000000e+00, %2918 ], [ %3534, %3546 ]
  %3553 = phi float [ 0.000000e+00, %2918 ], [ %3535, %3546 ]
  %3554 = phi float [ 0.000000e+00, %2918 ], [ %3536, %3546 ]
  %3555 = phi float [ 0.000000e+00, %2918 ], [ %3537, %3546 ]
  %3556 = phi i32 [ 0, %2918 ], [ %3538, %3546 ]
  %3557 = phi float [ 0.000000e+00, %2918 ], [ %3539, %3546 ]
  %3558 = phi float [ 0.000000e+00, %2918 ], [ %3540, %3546 ]
  %3559 = phi float [ 0.000000e+00, %2918 ], [ %3541, %3546 ]
  %3560 = call float @dx.op.dot3.f32(i32 55, float %3550, float %3551, float %3552, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3561 = select i1 %1787, float %3560, float %3551
  %3562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3563 = extractvalue %dx.types.CBufRet.f32 %3562, 0
  %3564 = bitcast float %3563 to i32
  %3565 = lshr i32 %3564, 8
  %3566 = and i32 %3565, 255
  %3567 = uitofp i32 %3566 to float
  %3568 = fptoui float %3567 to i32
  %3569 = icmp eq i32 %3568, 13
  br i1 %3569, label %3570, label %3590

; <label>:3570                                    ; preds = %3547
  %3571 = fadd fast float %3553, 1.000000e+00
  %3572 = fadd fast float %3554, 1.000000e+00
  %3573 = fadd fast float %3555, 1.000000e+00
  %3574 = fmul fast float %3571, 5.000000e-01
  %3575 = fmul fast float %3572, 5.000000e-01
  %3576 = fmul fast float %3573, 5.000000e-01
  %3577 = call float @dx.op.unary.f32(i32 7, float %3574)  ; Saturate(value)
  %3578 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3579 = call float @dx.op.unary.f32(i32 7, float %3576)  ; Saturate(value)
  %3580 = fmul fast float %3577, 1.023000e+03
  %3581 = fmul fast float %3578, 1.023000e+03
  %3582 = fmul fast float %3579, 1.023000e+03
  %3583 = fptoui float %3580 to i32
  %3584 = fptoui float %3581 to i32
  %3585 = fptoui float %3582 to i32
  %3586 = shl i32 %3584, 10
  %3587 = or i32 %3586, %3583
  %3588 = shl i32 %3585, 20
  %3589 = or i32 %3587, %3588
  br label %3590

; <label>:3590                                    ; preds = %3570, %3547
  %3591 = phi i32 [ %3589, %3570 ], [ %3549, %3547 ]
  %3592 = icmp eq i32 %3568, 14
  %3593 = select i1 %3592, i32 %3556, i32 %3591
  %3594 = icmp eq i32 %3568, 22
  br i1 %3594, label %3595, label %3615

; <label>:3595                                    ; preds = %3590
  %3596 = fadd fast float %3557, 1.000000e+00
  %3597 = fadd fast float %3558, 1.000000e+00
  %3598 = fadd fast float %3559, 1.000000e+00
  %3599 = fmul fast float %3596, 5.000000e-01
  %3600 = fmul fast float %3597, 5.000000e-01
  %3601 = fmul fast float %3598, 5.000000e-01
  %3602 = call float @dx.op.unary.f32(i32 7, float %3599)  ; Saturate(value)
  %3603 = call float @dx.op.unary.f32(i32 7, float %3600)  ; Saturate(value)
  %3604 = call float @dx.op.unary.f32(i32 7, float %3601)  ; Saturate(value)
  %3605 = fmul fast float %3602, 1.023000e+03
  %3606 = fmul fast float %3603, 1.023000e+03
  %3607 = fmul fast float %3604, 1.023000e+03
  %3608 = fptoui float %3605 to i32
  %3609 = fptoui float %3606 to i32
  %3610 = fptoui float %3607 to i32
  %3611 = shl i32 %3609, 10
  %3612 = or i32 %3611, %3608
  %3613 = shl i32 %3610, 20
  %3614 = or i32 %3612, %3613
  br label %3615

; <label>:3615                                    ; preds = %3595, %3590
  %3616 = phi i32 [ %3614, %3595 ], [ %3593, %3590 ]
  %3617 = fmul fast float %3550, 0x3FD45F3060000000
  %3618 = select i1 %1787, float 0.000000e+00, float %3617
  %3619 = fmul fast float %3561, 0x3FD45F3060000000
  %3620 = fmul fast float %3552, 0x3FD45F3060000000
  %3621 = select i1 %1787, float 0.000000e+00, float %3620
  br label %3622

; <label>:3622                                    ; preds = %3615, %2887
  %3623 = phi i32 [ %3548, %3615 ], [ %1575, %2887 ]
  %3624 = phi i32 [ %3616, %3615 ], [ %2888, %2887 ]
  %3625 = phi float [ %3618, %3615 ], [ %2853, %2887 ]
  %3626 = phi float [ %3619, %3615 ], [ %2854, %2887 ]
  %3627 = phi float [ %3621, %3615 ], [ %2855, %2887 ]
  %3628 = phi i1 [ false, %3615 ], [ true, %2887 ]
  %3629 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3630 = extractvalue %dx.types.CBufRet.i32 %3629, 0
  %3631 = and i32 %3630, 524288
  %3632 = icmp ne i32 %3631, 0
  %3633 = select i1 %3632, float 0.000000e+00, float 1.000000e+00
  %3634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3635 = extractvalue %dx.types.CBufRet.f32 %3634, 0
  %3636 = bitcast float %3635 to i32
  %3637 = and i32 %3636, 255
  %3638 = uitofp i32 %3637 to float
  %3639 = fptoui float %3638 to i32
  %3640 = icmp eq i32 %3639, 38
  %3641 = select i1 %3640, i32 0, i32 %3624
  %3642 = lshr i32 %3636, 8
  %3643 = and i32 %3642, 255
  %3644 = uitofp i32 %3643 to float
  %3645 = fptoui float %3644 to i32
  %3646 = icmp eq i32 %3645, 24
  br i1 %3646, label %3647, label %3658

; <label>:3647                                    ; preds = %3622
  %3648 = fadd fast float %1818, 1.000000e+00
  %3649 = fmul fast float %3648, 5.000000e-01
  %3650 = select i1 %1820, float %3649, float 1.000000e+00
  %3651 = call float @dx.op.unary.f32(i32 7, float %3650)  ; Saturate(value)
  %3652 = fmul fast float %3651, 1.023000e+03
  %3653 = fptoui float %3652 to i32
  %3654 = shl i32 %3653, 10
  %3655 = or i32 %3654, %3653
  %3656 = shl i32 %3653, 20
  %3657 = or i32 %3655, %3656
  br label %3658

; <label>:3658                                    ; preds = %3647, %3622
  %3659 = phi i32 [ %3641, %3622 ], [ %3657, %3647 ]
  %3660 = xor i1 %3632, true
  %3661 = zext i1 %3660 to i32
  br i1 %3632, label %3662, label %3900

; <label>:3662                                    ; preds = %3658
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 3
  %3668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3669 = extractvalue %dx.types.CBufRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.CBufRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.CBufRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.CBufRet.f32 %3668, 3
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 0
  %3675 = extractvalue %dx.types.CBufRet.f32 %3673, 1
  %3676 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3677 = extractvalue %dx.types.CBufRet.f32 %3673, 3
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.CBufRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.CBufRet.f32 %3678, 2
  %3682 = extractvalue %dx.types.CBufRet.f32 %3678, 3
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.CBufRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.CBufRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.CBufRet.f32 %3683, 3
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 0
  %3690 = extractvalue %dx.types.CBufRet.f32 %3688, 1
  %3691 = extractvalue %dx.types.CBufRet.f32 %3688, 2
  %3692 = extractvalue %dx.types.CBufRet.f32 %3688, 3
  %3693 = call float @dx.op.dot3.f32(i32 55, float %3689, float %3690, float %3691, float %1793, float %1794, float %1795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.f32 %3694, 1
  %3696 = extractvalue %dx.types.CBufRet.f32 %3694, 0
  %3697 = select i1 %58, float %3696, float %3695
  %3698 = fmul fast float %3693, 8.000000e+00
  %3699 = fmul fast float %3698, %3697
  %3700 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3701 = fcmp fast ogt float %3700, 0.000000e+00
  br i1 %3701, label %3702, label %3871, !dx.controlflow.hints !107

; <label>:3702                                    ; preds = %3662
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 1
  %3705 = fmul fast float %1076, 2.000000e+00
  %3706 = fmul fast float %1077, 2.000000e+00
  %3707 = fadd fast float %3705, -1.000000e+00
  %3708 = fadd fast float %3706, -1.000000e+00
  %3709 = fmul fast float %3704, %3707
  %3710 = fmul fast float %3704, %3708
  %3711 = fadd fast float %3709, %72
  %3712 = fadd fast float %3710, %73
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 2
  %3715 = extractvalue %dx.types.CBufRet.f32 %3713, 3
  %3716 = fmul fast float %3711, %3714
  %3717 = fmul fast float %3712, %3715
  %3718 = fadd fast float %1745, 0xBFE3333340000000
  %3719 = fmul fast float %3718, 0x4004000020000000
  %3720 = fsub fast float 1.000000e+00, %3719
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = fmul fast float %3721, 3.000000e+00
  %3723 = fadd fast float %3722, %1076
  %3724 = call float @dx.op.unary.f32(i32 27, float %3723)  ; Round_ni(value)
  %3725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %46, float %3716, float %3717, float %3724, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = fcmp fast une float %3726, 0xFFF0000000000000
  %3728 = fcmp fast une float %3726, 0x7FF0000000000000
  %3729 = and i1 %3727, %3728
  %3730 = fcmp fast olt float %3726, 0.000000e+00
  %3731 = call float @dx.op.unary.f32(i32 6, float %3726)  ; FAbs(value)
  %3732 = fsub fast float 1.000000e+00, %3731
  %3733 = select i1 %3729, float 1.000000e+00, float 0.000000e+00
  %3734 = fmul fast float %3733, %3700
  %3735 = fcmp fast ogt float %3734, 0.000000e+00
  br i1 %3735, label %3736, label %3871, !dx.controlflow.hints !108

; <label>:3736                                    ; preds = %3702
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3741 = select i1 %3730, float 0.000000e+00, float %3738
  %3742 = select i1 %3730, float 0.000000e+00, float %3739
  %3743 = select i1 %3730, float 0.000000e+00, float %3740
  %3744 = select i1 %3730, float %3664, float %3679
  %3745 = select i1 %3730, float %3669, float %3684
  %3746 = select i1 %3730, float %3674, float %3689
  %3747 = select i1 %3730, float %3665, float %3680
  %3748 = select i1 %3730, float %3670, float %3685
  %3749 = select i1 %3730, float %3675, float %3690
  %3750 = select i1 %3730, float %3666, float %3681
  %3751 = select i1 %3730, float %3671, float %3686
  %3752 = select i1 %3730, float %3676, float %3691
  %3753 = select i1 %3730, float %3667, float %3682
  %3754 = select i1 %3730, float %3672, float %3687
  %3755 = select i1 %3730, float %3677, float %3692
  %3756 = fadd fast float %3741, %116
  %3757 = fadd fast float %3742, %117
  %3758 = fadd fast float %3743, %118
  %3759 = fmul fast float %3756, %3744
  %3760 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3747, float %3759)  ; FMad(a,b,c)
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3750, float %3760)  ; FMad(a,b,c)
  %3762 = fadd fast float %3761, %3753
  %3763 = fmul fast float %3756, %3745
  %3764 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3748, float %3763)  ; FMad(a,b,c)
  %3765 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3751, float %3764)  ; FMad(a,b,c)
  %3766 = fadd fast float %3765, %3754
  %3767 = fmul fast float %3756, %3746
  %3768 = call float @dx.op.tertiary.f32(i32 46, float %3757, float %3749, float %3767)  ; FMad(a,b,c)
  %3769 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3752, float %3768)  ; FMad(a,b,c)
  %3770 = fadd fast float %3769, %3755
  %3771 = fdiv fast float 1.000000e+00, %3770
  %3772 = fmul fast float %3771, %3762
  %3773 = fmul fast float %3771, %3766
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.CBufRet.f32 %3774, 1
  %3777 = fmul fast float %3772, %3775
  %3778 = fmul fast float %3773, %3776
  %3779 = extractvalue %dx.types.CBufRet.f32 %3774, 2
  %3780 = extractvalue %dx.types.CBufRet.f32 %3774, 3
  %3781 = fadd fast float %3777, %3779
  %3782 = fadd fast float %3778, %3780
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 3
  %3785 = fmul fast float %3784, %1793
  %3786 = fmul fast float %3784, %1794
  %3787 = fmul fast float %3784, %1795
  %3788 = fadd fast float %3785, %3756
  %3789 = fadd fast float %3786, %3757
  %3790 = fadd fast float %3787, %3758
  %3791 = fmul fast float %3788, %3744
  %3792 = call float @dx.op.tertiary.f32(i32 46, float %3789, float %3747, float %3791)  ; FMad(a,b,c)
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3750, float %3792)  ; FMad(a,b,c)
  %3794 = fadd fast float %3793, %3753
  %3795 = fmul fast float %3788, %3745
  %3796 = call float @dx.op.tertiary.f32(i32 46, float %3789, float %3748, float %3795)  ; FMad(a,b,c)
  %3797 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3751, float %3796)  ; FMad(a,b,c)
  %3798 = fadd fast float %3797, %3754
  %3799 = fmul fast float %3788, %3746
  %3800 = call float @dx.op.tertiary.f32(i32 46, float %3789, float %3749, float %3799)  ; FMad(a,b,c)
  %3801 = call float @dx.op.tertiary.f32(i32 46, float %3790, float %3752, float %3800)  ; FMad(a,b,c)
  %3802 = fadd fast float %3801, %3755
  %3803 = fdiv fast float 1.000000e+00, %3802
  %3804 = fmul fast float %3803, %3794
  %3805 = fmul fast float %3803, %3798
  %3806 = fmul fast float %3781, 2.000000e+00
  %3807 = fadd fast float %3806, -1.000000e+00
  %3808 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3809 = fmul fast float %3808, 5.000000e+00
  %3810 = fadd fast float %3809, -4.000000e+00
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fsub fast float %3772, %3804
  %3813 = fmul fast float %3775, %3812
  %3814 = fmul fast float %3813, %3811
  %3815 = fsub fast float %3804, %3772
  %3816 = fmul fast float %3775, %3815
  %3817 = fadd fast float %3816, %3814
  %3818 = fsub fast float %3805, %3773
  %3819 = fmul fast float %3776, %3818
  %3820 = fmul fast float %3817, %3732
  %3821 = fmul fast float %3819, %3732
  %3822 = fadd fast float %3820, %3781
  %3823 = fadd fast float %3821, %3782
  %3824 = fsub fast float %3803, %3771
  %3825 = fmul fast float %3824, %3732
  %3826 = fadd fast float %3825, %3771
  %3827 = fdiv fast float 1.000000e+00, %3826
  %3828 = extractvalue %dx.types.CBufRet.f32 %3694, 3
  %3829 = fadd fast float %1745, -1.000000e+00
  %3830 = fsub fast float %3827, %3770
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 2
  %3833 = fmul fast float %3832, %3827
  %3834 = fdiv fast float 1.600000e+02, %3833
  %3835 = fmul fast float %3829, %3829
  %3836 = fmul fast float %3835, 0xBFB5B17960000000
  %3837 = fmul fast float %3836, %3830
  %3838 = fmul fast float %3837, %3834
  %3839 = call float @dx.op.unary.f32(i32 21, float %3838)  ; Exp(value)
  %3840 = fmul fast float %3839, 0x3FF04B2960000000
  %3841 = fsub fast float 0x3FF04B2960000000, %3840
  %3842 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3843 = fmul fast float %3842, 4.000000e+00
  %3844 = fadd fast float %3843, %3828
  %3845 = fadd fast float %1076, -5.000000e-01
  %3846 = fadd fast float %1077, -5.000000e-01
  %3847 = fmul fast float %3844, 0x3F9EB851E0000000
  %3848 = call float @dx.op.unary.f32(i32 7, float %3847)  ; Saturate(value)
  %3849 = fmul fast float %3848, %3845
  %3850 = fmul fast float %3848, %3846
  %3851 = fadd fast float %3822, %3849
  %3852 = fadd fast float %3823, %3850
  %3853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %43, float %3851, float %3852, float undef, float undef, i32 0, i32 0, i32 undef, float %3844)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3854 = extractvalue %dx.types.ResRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.ResRet.f32 %3853, 1
  %3856 = extractvalue %dx.types.ResRet.f32 %3853, 2
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 2
  %3859 = fmul fast float %3858, %3854
  %3860 = fmul fast float %3858, %3855
  %3861 = fmul fast float %3858, %3856
  %3862 = select i1 %1787, float 0.000000e+00, float %3860
  %3863 = select i1 %1787, float 0.000000e+00, float %3861
  %3864 = fmul fast float %3852, 2.000000e+00
  %3865 = fadd fast float %3864, -1.000000e+00
  %3866 = fmul fast float %3865, %3865
  %3867 = fsub fast float 1.000000e+00, %3866
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3870 = fmul fast float %3869, %3734
  br label %3871

; <label>:3871                                    ; preds = %3736, %3702, %3662
  %3872 = phi float [ %3859, %3736 ], [ 0.000000e+00, %3702 ], [ 0.000000e+00, %3662 ]
  %3873 = phi float [ %3862, %3736 ], [ 0.000000e+00, %3702 ], [ 0.000000e+00, %3662 ]
  %3874 = phi float [ %3863, %3736 ], [ 0.000000e+00, %3702 ], [ 0.000000e+00, %3662 ]
  %3875 = phi float [ %3870, %3736 ], [ 0.000000e+00, %3702 ], [ 0.000000e+00, %3662 ]
  %3876 = phi float [ %3732, %3736 ], [ %3732, %3702 ], [ 0.000000e+00, %3662 ]
  %3877 = phi float [ %3870, %3736 ], [ %3734, %3702 ], [ 0.000000e+00, %3662 ]
  %3878 = phi float [ %3844, %3736 ], [ 0.000000e+00, %3702 ], [ 0.000000e+00, %3662 ]
  %3879 = icmp eq i32 %3645, 25
  br i1 %3879, label %3880, label %3883

; <label>:3880                                    ; preds = %3871
  %3881 = call float @dx.op.unary.f32(i32 6, float %3876)  ; FAbs(value)
  %3882 = bitcast float %3881 to i32
  br label %3883

; <label>:3883                                    ; preds = %3880, %3871
  %3884 = phi i32 [ %3882, %3880 ], [ %3659, %3871 ]
  %3885 = icmp eq i32 %3645, 26
  %3886 = bitcast float %3877 to i32
  %3887 = select i1 %3885, i32 %3886, i32 %3884
  %3888 = icmp eq i32 %3645, 27
  %3889 = fmul fast float %3878, 2.500000e-01
  %3890 = bitcast float %3889 to i32
  %3891 = select i1 %3888, i32 %3890, i32 %3887
  %3892 = fcmp fast olt float %3875, 1.000000e+00
  %3893 = or i1 %3892, %3660
  %3894 = zext i1 %3893 to i32
  %3895 = fmul fast float %3875, %3633
  %3896 = fsub fast float %3875, %3895
  %3897 = fmul fast float %3896, %3872
  %3898 = fmul fast float %3896, %3873
  %3899 = fmul fast float %3896, %3874
  br label %3900

; <label>:3900                                    ; preds = %3883, %3658
  %3901 = phi i32 [ %3659, %3658 ], [ %3891, %3883 ]
  %3902 = phi float [ 0.000000e+00, %3658 ], [ %3896, %3883 ]
  %3903 = phi float [ 0.000000e+00, %3658 ], [ %3897, %3883 ]
  %3904 = phi float [ 0.000000e+00, %3658 ], [ %3898, %3883 ]
  %3905 = phi float [ 0.000000e+00, %3658 ], [ %3899, %3883 ]
  %3906 = phi i32 [ %3661, %3658 ], [ %3894, %3883 ]
  %3907 = icmp ne i32 %3906, 0
  %3908 = add i32 %3645, -13
  %3909 = icmp ult i32 %3908, 2
  %3910 = or i1 %3909, %3907
  %3911 = icmp eq i32 %3645, 22
  %3912 = or i1 %3910, %3911
  br i1 %3912, label %3913, label %4640

; <label>:3913                                    ; preds = %3900
  %3914 = select i1 %3628, float %2815, float 1.000000e+00
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3917 = extractvalue %dx.types.CBufRet.f32 %3915, 3
  %3918 = fmul fast float %3916, %72
  %3919 = fmul fast float %3917, %73
  %3920 = fptoui float %3918 to i32
  %3921 = fptoui float %3919 to i32
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.CBufRet.f32 %3922, 2
  %3925 = extractvalue %dx.types.CBufRet.f32 %3922, 3
  %3926 = fadd fast float %69, -4.000000e+00
  %3927 = call float @dx.op.binary.f32(i32 35, float %3926, float 0.000000e+00)  ; FMax(a,b)
  %3928 = fadd fast float %3927, %3923
  %3929 = fmul fast float %3928, %3924
  %3930 = call float @dx.op.unary.f32(i32 23, float %3929)  ; Log(value)
  %3931 = fmul fast float %3930, %3925
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 2
  %3934 = fmul fast float %3931, %3933
  %3935 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3936 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.i32 %3936, 1
  %3938 = add i32 %3937, -1
  %3939 = uitofp i32 %3937 to float
  %3940 = fmul fast float %3939, %3935
  %3941 = fptoui float %3940 to i32
  %3942 = call i32 @dx.op.binary.i32(i32 40, i32 %3941, i32 %3938)  ; UMin(a,b)
  %3943 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.i32 %3943, 2
  %3945 = extractvalue %dx.types.CBufRet.i32 %3943, 3
  %3946 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3921, i32 %3944, i32 %3920)  ; UMad(a,b,c)
  %3947 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3942, i32 %3945, i32 %3946)  ; UMad(a,b,c)
  %3948 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %3949 = fptoui float %3948 to i32
  %3950 = lshr i32 %3949, 5
  %3951 = call i32 @dx.op.binary.i32(i32 40, i32 %3950, i32 8191)  ; UMin(a,b)
  %3952 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.i32 %3952, 2
  %3954 = add nsw i32 %3953, -1
  %3955 = call i32 @dx.op.binary.i32(i32 37, i32 %3954, i32 0)  ; IMax(a,b)
  %3956 = shl i32 %3951, 2
  %3957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3956, i32 undef)  ; BufferLoad(srv,index,wot)
  %3958 = extractvalue %dx.types.ResRet.i32 %3957, 0
  %3959 = lshr i32 %3958, 16
  %3960 = and i32 %3958, 65535
  %3961 = lshr i32 %3958, 21
  %3962 = lshr i32 %3960, 5
  %3963 = call i32 @dx.op.binary.i32(i32 40, i32 %3962, i32 %3955)  ; UMin(a,b)
  %3964 = icmp ugt i32 %3961, %3963
  br i1 %3964, label %4552, label %3965

; <label>:3965                                    ; preds = %3913
  br label %3966

; <label>:3966                                    ; preds = %4534, %3965
  %3967 = phi i32 [ %4535, %4534 ], [ %3623, %3965 ]
  %3968 = phi i32 [ %4536, %4534 ], [ %3901, %3965 ]
  %3969 = phi float [ %4537, %4534 ], [ 0.000000e+00, %3965 ]
  %3970 = phi float [ %4538, %4534 ], [ 0.000000e+00, %3965 ]
  %3971 = phi float [ %4539, %4534 ], [ 0.000000e+00, %3965 ]
  %3972 = phi float [ %4540, %4534 ], [ 0.000000e+00, %3965 ]
  %3973 = phi float [ %4541, %4534 ], [ 0.000000e+00, %3965 ]
  %3974 = phi float [ %4542, %4534 ], [ 0.000000e+00, %3965 ]
  %3975 = phi i32 [ %4543, %4534 ], [ 0, %3965 ]
  %3976 = phi float [ %4544, %4534 ], [ 0.000000e+00, %3965 ]
  %3977 = phi float [ %4545, %4534 ], [ 0.000000e+00, %3965 ]
  %3978 = phi float [ %4546, %4534 ], [ 0.000000e+00, %3965 ]
  %3979 = phi i32 [ %4547, %4534 ], [ 1, %3965 ]
  %3980 = phi float [ %4548, %4534 ], [ 1.000000e+00, %3965 ]
  %3981 = phi i32 [ %4549, %4534 ], [ %3961, %3965 ]
  %3982 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.i32 %3982, 2
  %3984 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3947, i32 %3983, i32 %3981)  ; UMad(a,b,c)
  %3985 = shl i32 %3984, 2
  %3986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3985, i32 undef)  ; BufferLoad(srv,index,wot)
  %3987 = extractvalue %dx.types.ResRet.i32 %3986, 0
  %3988 = shl i32 %3981, 5
  %3989 = sub nsw i32 %3959, %3988
  %3990 = call i32 @dx.op.binary.i32(i32 37, i32 %3989, i32 0)  ; IMax(a,b)
  %3991 = call i32 @dx.op.binary.i32(i32 38, i32 %3990, i32 31)  ; IMin(a,b)
  %3992 = sub nsw i32 1, %3959
  %3993 = add nsw i32 %3992, %3960
  %3994 = call i32 @dx.op.binary.i32(i32 37, i32 %3993, i32 0)  ; IMax(a,b)
  %3995 = call i32 @dx.op.binary.i32(i32 38, i32 %3994, i32 32)  ; IMin(a,b)
  %3996 = and i32 %3995, 31
  %3997 = shl i32 -1, %3996
  %3998 = xor i32 %3997, -1
  %3999 = and i32 %3991, 31
  %4000 = shl i32 %3998, %3999
  %4001 = icmp eq i32 %3995, 32
  %4002 = select i1 %4001, i32 -1, i32 %4000
  %4003 = and i32 %4002, %3987
  %4004 = icmp eq i32 %4003, 0
  br i1 %4004, label %4534, label %4005

; <label>:4005                                    ; preds = %3966
  br label %4006

; <label>:4006                                    ; preds = %4140, %4005
  %4007 = phi i32 [ %4141, %4140 ], [ %3967, %4005 ]
  %4008 = phi i32 [ %4142, %4140 ], [ %3968, %4005 ]
  %4009 = phi float [ %4143, %4140 ], [ %3969, %4005 ]
  %4010 = phi float [ %4144, %4140 ], [ %3970, %4005 ]
  %4011 = phi float [ %4145, %4140 ], [ %3971, %4005 ]
  %4012 = phi float [ %4146, %4140 ], [ %3972, %4005 ]
  %4013 = phi float [ %4147, %4140 ], [ %3973, %4005 ]
  %4014 = phi float [ %4148, %4140 ], [ %3974, %4005 ]
  %4015 = phi i32 [ %4149, %4140 ], [ %3975, %4005 ]
  %4016 = phi float [ %4150, %4140 ], [ %3976, %4005 ]
  %4017 = phi float [ %4151, %4140 ], [ %3977, %4005 ]
  %4018 = phi float [ %4152, %4140 ], [ %3978, %4005 ]
  %4019 = phi i32 [ %4153, %4140 ], [ %3979, %4005 ]
  %4020 = phi float [ %4154, %4140 ], [ %3980, %4005 ]
  %4021 = phi i32 [ %4026, %4140 ], [ %4003, %4005 ]
  %4022 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4021)  ; FirstbitLo(value)
  %4023 = add i32 %4022, %3988
  %4024 = and i32 %4022, 31
  %4025 = shl i32 1, %4024
  %4026 = xor i32 %4025, %4021
  %4027 = mul i32 %4023, 72
  %4028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4027, i32 undef)  ; BufferLoad(srv,index,wot)
  %4029 = extractvalue %dx.types.ResRet.f32 %4028, 0
  %4030 = extractvalue %dx.types.ResRet.f32 %4028, 1
  %4031 = extractvalue %dx.types.ResRet.f32 %4028, 2
  %4032 = add i32 %4027, 12
  %4033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %4032, i32 undef)  ; BufferLoad(srv,index,wot)
  %4034 = extractvalue %dx.types.ResRet.i32 %4033, 0
  %4035 = add i32 %4027, 16
  %4036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4035, i32 undef)  ; BufferLoad(srv,index,wot)
  %4037 = extractvalue %dx.types.ResRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.ResRet.f32 %4036, 1
  %4039 = extractvalue %dx.types.ResRet.f32 %4036, 2
  %4040 = add i32 %4027, 28
  %4041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = add i32 %4027, 32
  %4044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4043, i32 undef)  ; BufferLoad(srv,index,wot)
  %4045 = extractvalue %dx.types.ResRet.f32 %4044, 0
  %4046 = extractvalue %dx.types.ResRet.f32 %4044, 1
  %4047 = extractvalue %dx.types.ResRet.f32 %4044, 2
  %4048 = extractvalue %dx.types.ResRet.f32 %4044, 3
  %4049 = add i32 %4027, 48
  %4050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4049, i32 undef)  ; BufferLoad(srv,index,wot)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = extractvalue %dx.types.ResRet.f32 %4050, 1
  %4053 = add i32 %4027, 56
  %4054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4053, i32 undef)  ; BufferLoad(srv,index,wot)
  %4055 = extractvalue %dx.types.ResRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.ResRet.f32 %4054, 1
  %4057 = add i32 %4027, 64
  %4058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %25, i32 %4057, i32 undef)  ; BufferLoad(srv,index,wot)
  %4059 = extractvalue %dx.types.ResRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.ResRet.f32 %4058, 1
  %4061 = mul i32 %4023, 60
  %4062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4061, i32 undef)  ; BufferLoad(srv,index,wot)
  %4063 = extractvalue %dx.types.ResRet.f32 %4062, 0
  %4064 = extractvalue %dx.types.ResRet.f32 %4062, 1
  %4065 = extractvalue %dx.types.ResRet.f32 %4062, 2
  %4066 = add i32 %4061, 12
  %4067 = add i32 %4061, 48
  %4068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4067, i32 undef)  ; BufferLoad(srv,index,wot)
  %4069 = extractvalue %dx.types.ResRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.ResRet.f32 %4068, 1
  %4071 = extractvalue %dx.types.ResRet.f32 %4068, 2
  %4072 = and i32 %4034, 32767
  %4073 = bitcast float %4030 to i32
  %4074 = and i32 %4034, 32768
  %4075 = icmp ne i32 %4074, 0
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4080 = fsub fast float %4063, %4077
  %4081 = fsub fast float %4064, %4078
  %4082 = fsub fast float %4065, %4079
  %4083 = fsub fast float %116, %4080
  %4084 = fsub fast float %117, %4081
  %4085 = fsub fast float %118, %4082
  %4086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4066, i32 undef)  ; BufferLoad(srv,index,wot)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.ResRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.ResRet.f32 %4086, 2
  %4090 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4087, float %4088, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4091 = add i32 %4061, 24
  %4092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4091, i32 undef)  ; BufferLoad(srv,index,wot)
  %4093 = extractvalue %dx.types.ResRet.f32 %4092, 0
  %4094 = extractvalue %dx.types.ResRet.f32 %4092, 1
  %4095 = extractvalue %dx.types.ResRet.f32 %4092, 2
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4093, float %4094, float %4095)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = add i32 %4061, 36
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  %4102 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4099, float %4100, float %4101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4103 = call float @dx.op.unary.f32(i32 6, float %4090)  ; FAbs(value)
  %4104 = call float @dx.op.unary.f32(i32 6, float %4096)  ; FAbs(value)
  %4105 = call float @dx.op.unary.f32(i32 6, float %4102)  ; FAbs(value)
  %4106 = fsub fast float %4069, %4103
  %4107 = fsub fast float %4070, %4104
  %4108 = fsub fast float %4071, %4105
  %4109 = fmul fast float %4106, %4037
  %4110 = fmul fast float %4107, %4038
  %4111 = fmul fast float %4108, %4039
  %4112 = call float @dx.op.binary.f32(i32 36, float %4110, float %4111)  ; FMin(a,b)
  %4113 = call float @dx.op.binary.f32(i32 36, float %4109, float %4112)  ; FMin(a,b)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4115 = call float @dx.op.binary.f32(i32 36, float %4020, float %4114)  ; FMin(a,b)
  %4116 = uitofp i1 %4075 to float
  %4117 = select i1 %58, float 1.000000e+00, float 2.000000e+00
  %4118 = fsub fast float %4117, %4116
  %4119 = fmul fast float %4115, %4118
  %4120 = lshr i32 %4007, 8
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = fptoui float %4122 to i32
  %4124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4125 = extractvalue %dx.types.CBufRet.f32 %4124, 1
  %4126 = bitcast float %4125 to i32
  %4127 = lshr i32 %4126, 24
  %4128 = uitofp i32 %4127 to float
  %4129 = fptoui float %4128 to i32
  %4130 = icmp ne i32 %4129, 1
  %4131 = zext i1 %4130 to i32
  %4132 = add i32 %4131, %4123
  %4133 = uitofp i32 %4132 to float
  %4134 = fptoui float %4133 to i32
  %4135 = shl i32 %4134, 8
  %4136 = and i32 %4135, 65280
  %4137 = and i32 %4007, -65281
  %4138 = or i32 %4136, %4137
  %4139 = fcmp fast ogt float %4119, 0.000000e+00
  br i1 %4139, label %4156, label %4140

; <label>:4140                                    ; preds = %4516, %4385, %4006
  %4141 = phi i32 [ %4463, %4385 ], [ %4138, %4006 ], [ %4463, %4516 ]
  %4142 = phi i32 [ %4008, %4385 ], [ %4008, %4006 ], [ %4532, %4516 ]
  %4143 = phi float [ %4449, %4385 ], [ %4009, %4006 ], [ %4449, %4516 ]
  %4144 = phi float [ %4450, %4385 ], [ %4010, %4006 ], [ %4450, %4516 ]
  %4145 = phi float [ %4451, %4385 ], [ %4011, %4006 ], [ %4451, %4516 ]
  %4146 = phi float [ %4510, %4385 ], [ %4012, %4006 ], [ %4510, %4516 ]
  %4147 = phi float [ %4511, %4385 ], [ %4013, %4006 ], [ %4511, %4516 ]
  %4148 = phi float [ %4512, %4385 ], [ %4014, %4006 ], [ %4512, %4516 ]
  %4149 = phi i32 [ %4514, %4385 ], [ %4015, %4006 ], [ %4514, %4516 ]
  %4150 = phi float [ %4467, %4385 ], [ %4016, %4006 ], [ %4467, %4516 ]
  %4151 = phi float [ %4468, %4385 ], [ %4017, %4006 ], [ %4468, %4516 ]
  %4152 = phi float [ %4469, %4385 ], [ %4018, %4006 ], [ %4469, %4516 ]
  %4153 = phi i32 [ 0, %4385 ], [ %4019, %4006 ], [ 0, %4516 ]
  %4154 = phi float [ %4452, %4385 ], [ %4020, %4006 ], [ %4452, %4516 ]
  %4155 = icmp eq i32 %4021, %4025
  br i1 %4155, label %4533, label %4006

; <label>:4156                                    ; preds = %4006
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4159 = bitcast float %4029 to i32
  %4160 = extractvalue %dx.types.CBufRet.f32 %4124, 0
  %4161 = bitcast float %4160 to i32
  %4162 = lshr i32 %4161, 8
  %4163 = and i32 %4162, 255
  %4164 = uitofp i32 %4163 to float
  %4165 = fptoui float %4164 to i32
  %4166 = and i32 %4165, 2
  %4167 = icmp eq i32 %4166, 0
  %4168 = select i1 %4167, float %1793, float %1629
  %4169 = select i1 %4167, float %1794, float %1630
  %4170 = select i1 %4167, float %1795, float %1631
  %4171 = icmp ne i32 %4159, -1
  %4172 = fcmp oeq float %4158, 0.000000e+00
  %4173 = and i1 %4172, %4171
  br i1 %4173, label %4174, label %4298

; <label>:4174                                    ; preds = %4156
  %4175 = fsub fast float -0.000000e+00, %4087
  %4176 = fsub fast float -0.000000e+00, %4088
  %4177 = fsub fast float -0.000000e+00, %4089
  %4178 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4179 = fsub fast float -0.000000e+00, %4178
  %4180 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4175, float %4176, float %4177)  ; Dot3(ax,ay,az,bx,by,bz)
  %4181 = fadd fast float %4180, %4052
  %4182 = fadd fast float %4051, %4180
  %4183 = fsub fast float -0.000000e+00, %4182
  %4184 = fcmp ogt float %4178, -0.000000e+00
  %4185 = select i1 %4184, float %4183, float %4181
  %4186 = call float @dx.op.unary.f32(i32 6, float %4179)  ; FAbs(value)
  %4187 = fdiv fast float 1.000000e+00, %4186
  %4188 = fmul fast float %4185, %4187
  %4189 = call float @dx.op.binary.f32(i32 35, float %4188, float 0.000000e+00)  ; FMax(a,b)
  %4190 = fsub fast float -0.000000e+00, %4093
  %4191 = fsub fast float -0.000000e+00, %4094
  %4192 = fsub fast float -0.000000e+00, %4095
  %4193 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4190, float %4191, float %4192)  ; Dot3(ax,ay,az,bx,by,bz)
  %4194 = fsub fast float -0.000000e+00, %4193
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4190, float %4191, float %4192)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = fadd fast float %4195, %4056
  %4197 = fadd fast float %4055, %4195
  %4198 = fsub fast float -0.000000e+00, %4197
  %4199 = fcmp ogt float %4193, -0.000000e+00
  %4200 = select i1 %4199, float %4198, float %4196
  %4201 = call float @dx.op.unary.f32(i32 6, float %4194)  ; FAbs(value)
  %4202 = fdiv fast float 1.000000e+00, %4201
  %4203 = fmul fast float %4200, %4202
  %4204 = call float @dx.op.binary.f32(i32 35, float %4203, float 0.000000e+00)  ; FMax(a,b)
  %4205 = fsub fast float -0.000000e+00, %4099
  %4206 = fsub fast float -0.000000e+00, %4100
  %4207 = fsub fast float -0.000000e+00, %4101
  %4208 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4170, float %4205, float %4206, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4209 = fsub fast float -0.000000e+00, %4208
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4084, float %4085, float %4205, float %4206, float %4207)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = fadd fast float %4210, %4060
  %4212 = fadd fast float %4059, %4210
  %4213 = fsub fast float -0.000000e+00, %4212
  %4214 = fcmp ogt float %4208, -0.000000e+00
  %4215 = select i1 %4214, float %4213, float %4211
  %4216 = call float @dx.op.unary.f32(i32 6, float %4209)  ; FAbs(value)
  %4217 = fdiv fast float 1.000000e+00, %4216
  %4218 = fmul fast float %4215, %4217
  %4219 = call float @dx.op.binary.f32(i32 35, float %4218, float 0.000000e+00)  ; FMax(a,b)
  %4220 = call float @dx.op.binary.f32(i32 36, float %4204, float %4219)  ; FMin(a,b)
  %4221 = call float @dx.op.binary.f32(i32 36, float %4189, float %4220)  ; FMin(a,b)
  %4222 = fmul fast float %4221, %4168
  %4223 = fmul fast float %4221, %4169
  %4224 = fmul fast float %4221, %4170
  %4225 = fadd fast float %4222, %116
  %4226 = fadd fast float %4223, %117
  %4227 = fadd fast float %4224, %118
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.CBufRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.CBufRet.f32 %4228, 2
  %4232 = fadd fast float %4225, %4229
  %4233 = fadd fast float %4226, %4230
  %4234 = fadd fast float %4227, %4231
  %4235 = fcmp fast olt float %4189, %4204
  %4236 = fcmp fast olt float %4189, %4219
  %4237 = and i1 %4235, %4236
  br i1 %4237, label %4241, label %4238

; <label>:4238                                    ; preds = %4174
  %4239 = fcmp fast olt float %4204, %4219
  br i1 %4239, label %4240, label %4241

; <label>:4240                                    ; preds = %4238
  br label %4241

; <label>:4241                                    ; preds = %4240, %4238, %4174
  %4242 = phi float [ 0.000000e+00, %4240 ], [ 0.000000e+00, %4238 ], [ 1.000000e+00, %4174 ]
  %4243 = phi float [ 1.000000e+00, %4240 ], [ 0.000000e+00, %4238 ], [ 0.000000e+00, %4174 ]
  %4244 = phi float [ 0.000000e+00, %4240 ], [ 1.000000e+00, %4238 ], [ 0.000000e+00, %4174 ]
  %4245 = phi float [ %4093, %4240 ], [ %4099, %4238 ], [ %4087, %4174 ]
  %4246 = phi float [ %4094, %4240 ], [ %4100, %4238 ], [ %4088, %4174 ]
  %4247 = phi float [ %4095, %4240 ], [ %4101, %4238 ], [ %4089, %4174 ]
  %4248 = call float @dx.op.unary.f32(i32 6, float %4247)  ; FAbs(value)
  %4249 = fcmp fast olt float %4248, 0x3FE276C8C0000000
  %4250 = select i1 %4249, float 0.000000e+00, float 1.000000e+00
  %4251 = select i1 %4249, float 1.000000e+00, float 0.000000e+00
  %4252 = fmul fast float %4251, %4246
  %4253 = fmul fast float %4250, %4247
  %4254 = fsub fast float %4252, %4253
  %4255 = fmul fast float %4245, %4251
  %4256 = fsub fast float -0.000000e+00, %4255
  %4257 = fmul fast float %4250, %4245
  %4258 = call float @dx.op.dot3.f32(i32 55, float %4254, float %4256, float %4257, float %4254, float %4256, float %4257)  ; Dot3(ax,ay,az,bx,by,bz)
  %4259 = call float @dx.op.unary.f32(i32 25, float %4258)  ; Rsqrt(value)
  %4260 = fmul fast float %4254, %4259
  %4261 = fmul fast float %4259, %4256
  %4262 = fmul fast float %4257, %4259
  %4263 = fmul fast float %4262, %4246
  %4264 = fmul fast float %4261, %4247
  %4265 = fsub fast float %4263, %4264
  %4266 = fmul fast float %4260, %4247
  %4267 = fmul fast float %4262, %4245
  %4268 = fsub fast float %4266, %4267
  %4269 = fmul fast float %4261, %4245
  %4270 = fmul fast float %4260, %4246
  %4271 = fsub fast float %4269, %4270
  %4272 = call float @dx.op.dot3.f32(i32 55, float %4265, float %4268, float %4271, float %4265, float %4268, float %4271)  ; Dot3(ax,ay,az,bx,by,bz)
  %4273 = call float @dx.op.unary.f32(i32 25, float %4272)  ; Rsqrt(value)
  %4274 = fmul fast float %4265, %4273
  %4275 = fmul fast float %4268, %4273
  %4276 = fmul fast float %4271, %4273
  %4277 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4233, float %4234, float %4260, float %4261, float %4262)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = call float @dx.op.dot3.f32(i32 55, float %4232, float %4233, float %4234, float %4274, float %4275, float %4276)  ; Dot3(ax,ay,az,bx,by,bz)
  %4279 = fmul fast float %4277, 0x3FA99999A0000000
  %4280 = fmul fast float %4278, 0x3FA99999A0000000
  %4281 = call float @dx.op.unary.f32(i32 22, float %4279)  ; Frc(value)
  %4282 = call float @dx.op.unary.f32(i32 22, float %4280)  ; Frc(value)
  %4283 = fadd fast float %4281, 0xBFB99999A0000000
  %4284 = fadd fast float %4282, 0xBFB99999A0000000
  %4285 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4286 = call float @dx.op.unary.f32(i32 6, float %4284)  ; FAbs(value)
  %4287 = fmul fast float %4285, 1.000000e+01
  %4288 = fmul fast float %4286, 1.000000e+01
  %4289 = call float @dx.op.binary.f32(i32 36, float %4287, float %4288)  ; FMin(a,b)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4289)  ; Saturate(value)
  %4291 = fsub fast float 1.000000e+00, %4290
  %4292 = fmul fast float %4291, %4242
  %4293 = fmul fast float %4291, %4243
  %4294 = fmul fast float %4291, %4244
  %4295 = fsub fast float %4225, %4029
  %4296 = fsub fast float %4226, %4030
  %4297 = fsub fast float %4227, %4031
  br label %4305

; <label>:4298                                    ; preds = %4156
  %4299 = fmul fast float %4168, 8.096000e+03
  %4300 = fmul fast float %4169, 8.096000e+03
  %4301 = fmul fast float %4170, 8.096000e+03
  %4302 = fadd fast float %4299, %116
  %4303 = fadd fast float %4300, %117
  %4304 = fadd fast float %4301, %118
  br label %4305

; <label>:4305                                    ; preds = %4298, %4241
  %4306 = phi float [ %4168, %4298 ], [ %4295, %4241 ]
  %4307 = phi float [ %4169, %4298 ], [ %4296, %4241 ]
  %4308 = phi float [ %4170, %4298 ], [ %4297, %4241 ]
  %4309 = phi float [ %4302, %4298 ], [ %4225, %4241 ]
  %4310 = phi float [ %4303, %4298 ], [ %4226, %4241 ]
  %4311 = phi float [ %4304, %4298 ], [ %4227, %4241 ]
  %4312 = phi float [ 0.000000e+00, %4298 ], [ %4292, %4241 ]
  %4313 = phi float [ 0.000000e+00, %4298 ], [ %4293, %4241 ]
  %4314 = phi float [ 0.000000e+00, %4298 ], [ %4294, %4241 ]
  %4315 = fcmp fast olt float %4048, 1.000000e+00
  br i1 %4315, label %4316, label %4347, !dx.controlflow.hints !104

; <label>:4316                                    ; preds = %4305
  %4317 = fmul fast float %4308, %4046
  %4318 = fmul fast float %4307, %4047
  %4319 = fsub fast float %4317, %4318
  %4320 = fmul fast float %4306, %4047
  %4321 = fmul fast float %4308, %4045
  %4322 = fsub fast float %4320, %4321
  %4323 = fmul fast float %4307, %4045
  %4324 = fmul fast float %4306, %4046
  %4325 = fsub fast float %4323, %4324
  %4326 = fmul fast float %4319, 2.000000e+00
  %4327 = fmul fast float %4322, 2.000000e+00
  %4328 = fmul fast float %4325, 2.000000e+00
  %4329 = fmul fast float %4326, %4048
  %4330 = fmul fast float %4327, %4048
  %4331 = fmul fast float %4328, %4048
  %4332 = fmul fast float %4328, %4046
  %4333 = fmul fast float %4327, %4047
  %4334 = fmul fast float %4326, %4047
  %4335 = fmul fast float %4328, %4045
  %4336 = fmul fast float %4327, %4045
  %4337 = fmul fast float %4326, %4046
  %4338 = fadd fast float %4332, %4306
  %4339 = fadd fast float %4338, %4329
  %4340 = fsub fast float %4339, %4333
  %4341 = fsub fast float %4307, %4335
  %4342 = fadd fast float %4341, %4330
  %4343 = fadd fast float %4342, %4334
  %4344 = fadd fast float %4331, %4308
  %4345 = fsub fast float %4344, %4337
  %4346 = fadd fast float %4345, %4336
  br label %4347

; <label>:4347                                    ; preds = %4316, %4305
  %4348 = phi float [ %4340, %4316 ], [ %4306, %4305 ]
  %4349 = phi float [ %4343, %4316 ], [ %4307, %4305 ]
  %4350 = phi float [ %4346, %4316 ], [ %4308, %4305 ]
  br i1 %4173, label %4351, label %4382

; <label>:4351                                    ; preds = %4347
  %4352 = fmul fast float %1745, 0x400187C840000000
  %4353 = fadd fast float %4352, 0xC00EFC2120000000
  %4354 = fmul fast float %4353, %1745
  %4355 = fadd fast float %4354, 0x3FE5D16340000000
  %4356 = fmul fast float %4355, %1745
  %4357 = fadd fast float %4356, 1.000000e+00
  %4358 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4359 = fsub fast float %4309, %116
  %4360 = fsub fast float %4310, %117
  %4361 = fsub fast float %4311, %118
  %4362 = fsub fast float %4309, %4029
  %4363 = fsub fast float %4310, %4030
  %4364 = fsub fast float %4311, %4031
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4359, float %4360, float %4361, float %4359, float %4360, float %4361)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4363, float %4364, float %4362, float %4363, float %4364)  ; Dot3(ax,ay,az,bx,by,bz)
  %4367 = fadd fast float %4366, 0x3EE4F8B580000000
  %4368 = fdiv fast float %4365, %4367
  %4369 = bitcast float %4368 to i32
  %4370 = ashr i32 %4369, 1
  %4371 = add nsw i32 %4370, 532487669
  %4372 = bitcast i32 %4371 to float
  %4373 = fmul fast float %4372, %4358
  %4374 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4375 = fmul fast float %4374, 0x4009981AE0000000
  %4376 = fsub fast float 0x40111BBD80000000, %4375
  %4377 = fmul fast float %4376, %4374
  %4378 = fadd fast float %4377, 0xC0009F6020000000
  %4379 = fmul fast float %4378, %4374
  %4380 = fadd fast float %4379, 1.000000e+00
  %4381 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  br label %4385

; <label>:4382                                    ; preds = %4347
  %4383 = icmp ne i32 %4073, -1
  %4384 = zext i1 %4383 to i32
  br label %4385

; <label>:4385                                    ; preds = %4382, %4351
  %4386 = phi float [ %1745, %4382 ], [ %4381, %4351 ]
  %4387 = phi i32 [ %4384, %4382 ], [ 0, %4351 ]
  %4388 = fmul float %4386, 5.000000e+00
  %4389 = fsub float 5.000000e+00, %4388
  %4390 = icmp ne i32 %4387, 0
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 3
  %4393 = fadd fast float %4392, %4389
  %4394 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4393)  ; FMax(a,b)
  %4395 = call float @dx.op.unary.f32(i32 6, float %4348)  ; FAbs(value)
  %4396 = call float @dx.op.unary.f32(i32 6, float %4349)  ; FAbs(value)
  %4397 = fadd fast float %4396, %4395
  %4398 = call float @dx.op.unary.f32(i32 6, float %4350)  ; FAbs(value)
  %4399 = fadd fast float %4397, %4398
  %4400 = fcmp fast oeq float %4399, 0.000000e+00
  %4401 = fdiv fast float 1.000000e+00, %4399
  %4402 = select i1 %4400, float 1.000000e+00, float %4401
  %4403 = fmul fast float %4402, %4348
  %4404 = fmul fast float %4402, %4349
  %4405 = call float @dx.op.unary.f32(i32 6, float %4404)  ; FAbs(value)
  %4406 = call float @dx.op.unary.f32(i32 6, float %4403)  ; FAbs(value)
  %4407 = fsub fast float 1.000000e+00, %4405
  %4408 = fsub fast float 1.000000e+00, %4406
  %4409 = fcmp fast oge float %4403, 0.000000e+00
  %4410 = fcmp fast oge float %4404, 0.000000e+00
  %4411 = select i1 %4409, float 1.000000e+00, float -1.000000e+00
  %4412 = select i1 %4410, float 1.000000e+00, float -1.000000e+00
  %4413 = fcmp fast ole float %4350, 0.000000e+00
  %4414 = fmul fast float %4411, %4407
  %4415 = fmul fast float %4412, %4408
  %4416 = select i1 %4413, float %4414, float %4403
  %4417 = select i1 %4413, float %4415, float %4404
  %4418 = fmul fast float %4416, 5.000000e-01
  %4419 = fmul fast float %4417, 5.000000e-01
  %4420 = fadd fast float %4418, 5.000000e-01
  %4421 = fadd fast float %4419, 5.000000e-01
  %4422 = uitofp i32 %4072 to float
  %4423 = call float @dx.op.binary.f32(i32 36, float %4394, float 3.000000e+00)  ; FMin(a,b)
  %4424 = fadd fast float %4423, 2.000000e+00
  %4425 = call float @dx.op.unary.f32(i32 21, float %4424)  ; Exp(value)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4391, 1
  %4427 = fmul fast float %4426, %4425
  %4428 = fmul fast float %4427, 2.000000e+00
  %4429 = fsub fast float 1.000000e+00, %4428
  %4430 = fmul fast float %4420, %4429
  %4431 = fmul fast float %4421, %4429
  %4432 = fadd fast float %4430, %4427
  %4433 = fadd fast float %4431, %4427
  %4434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %43, float %4432, float %4433, float %4422, float undef, i32 0, i32 0, i32 undef, float %4394)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4434, 2
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4440 = fmul fast float %4439, %4042
  %4441 = call float @dx.op.binary.f32(i32 36, float %3914, float %4440)  ; FMin(a,b)
  %4442 = select i1 %4390, float %4441, float %4440
  %4443 = fmul fast float %4435, %4119
  %4444 = fmul fast float %4443, %4442
  %4445 = fmul fast float %4436, %4119
  %4446 = fmul fast float %4445, %4442
  %4447 = fmul fast float %4437, %4119
  %4448 = fmul fast float %4447, %4442
  %4449 = fadd fast float %4444, %4009
  %4450 = fadd fast float %4446, %4010
  %4451 = fadd fast float %4448, %4011
  %4452 = fsub fast float %4020, %4119
  %4453 = and i32 %4134, 255
  %4454 = uitofp i32 %4453 to float
  %4455 = fptoui float %4454 to i32
  %4456 = icmp eq i32 %4129, 1
  %4457 = zext i1 %4456 to i32
  %4458 = add i32 %4457, %4455
  %4459 = uitofp i32 %4458 to float
  %4460 = fptoui float %4459 to i32
  %4461 = shl i32 %4460, 8
  %4462 = and i32 %4461, 65280
  %4463 = or i32 %4462, %4137
  %4464 = fmul fast float %4312, %4119
  %4465 = fmul fast float %4313, %4119
  %4466 = fmul fast float %4314, %4119
  %4467 = fadd fast float %4464, %4016
  %4468 = fadd fast float %4465, %4017
  %4469 = fadd fast float %4466, %4018
  %4470 = fmul fast float %4422, 0x3FE3C6EF40000000
  %4471 = call float @dx.op.unary.f32(i32 22, float %4470)  ; Frc(value)
  %4472 = fadd fast float %4471, 0x3FE5555560000000
  %4473 = fadd fast float %4471, 0x3FD5555560000000
  %4474 = fsub fast float -0.000000e+00, %4471
  %4475 = fsub fast float -0.000000e+00, %4472
  %4476 = fsub fast float -0.000000e+00, %4473
  %4477 = fcmp fast oge float %4471, %4474
  %4478 = fcmp fast oge float %4472, %4475
  %4479 = fcmp fast oge float %4473, %4476
  %4480 = call float @dx.op.unary.f32(i32 6, float %4471)  ; FAbs(value)
  %4481 = call float @dx.op.unary.f32(i32 6, float %4472)  ; FAbs(value)
  %4482 = call float @dx.op.unary.f32(i32 6, float %4473)  ; FAbs(value)
  %4483 = call float @dx.op.unary.f32(i32 22, float %4480)  ; Frc(value)
  %4484 = call float @dx.op.unary.f32(i32 22, float %4481)  ; Frc(value)
  %4485 = call float @dx.op.unary.f32(i32 22, float %4482)  ; Frc(value)
  %4486 = fsub fast float -0.000000e+00, %4483
  %4487 = fsub fast float -0.000000e+00, %4484
  %4488 = fsub fast float -0.000000e+00, %4485
  %4489 = select i1 %4477, float %4483, float %4486
  %4490 = select i1 %4478, float %4484, float %4487
  %4491 = select i1 %4479, float %4485, float %4488
  %4492 = fmul fast float %4489, 6.000000e+00
  %4493 = fmul fast float %4490, 6.000000e+00
  %4494 = fmul fast float %4491, 6.000000e+00
  %4495 = fadd fast float %4492, -3.000000e+00
  %4496 = fadd fast float %4493, -3.000000e+00
  %4497 = fadd fast float %4494, -3.000000e+00
  %4498 = call float @dx.op.unary.f32(i32 6, float %4495)  ; FAbs(value)
  %4499 = call float @dx.op.unary.f32(i32 6, float %4496)  ; FAbs(value)
  %4500 = call float @dx.op.unary.f32(i32 6, float %4497)  ; FAbs(value)
  %4501 = fadd fast float %4498, -1.000000e+00
  %4502 = fadd fast float %4499, -1.000000e+00
  %4503 = fadd fast float %4500, -1.000000e+00
  %4504 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4507 = fmul fast float %4504, %4119
  %4508 = fmul fast float %4505, %4119
  %4509 = fmul fast float %4506, %4119
  %4510 = fadd fast float %4507, %4012
  %4511 = fadd fast float %4508, %4013
  %4512 = fadd fast float %4509, %4014
  %4513 = icmp eq i32 %4072, 0
  %4514 = select i1 %4513, i32 1, i32 %4015
  %4515 = icmp eq i32 %4019, 0
  br i1 %4515, label %4140, label %4516

; <label>:4516                                    ; preds = %4385
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = bitcast float %4518 to i32
  %4520 = lshr i32 %4519, 8
  %4521 = and i32 %4520, 255
  %4522 = uitofp i32 %4521 to float
  %4523 = fptoui float %4522 to i32
  %4524 = icmp eq i32 %4523, 16
  %4525 = bitcast float %4440 to i32
  %4526 = select i1 %4524, i32 %4525, i32 %4008
  %4527 = icmp eq i32 %4523, 17
  %4528 = bitcast float %3914 to i32
  %4529 = select i1 %4527, i32 %4528, i32 %4526
  %4530 = icmp eq i32 %4523, 18
  %4531 = bitcast float %4442 to i32
  %4532 = select i1 %4530, i32 %4531, i32 %4529
  br label %4140

; <label>:4533                                    ; preds = %4140
  br label %4534

; <label>:4534                                    ; preds = %4533, %3966
  %4535 = phi i32 [ %3967, %3966 ], [ %4141, %4533 ]
  %4536 = phi i32 [ %3968, %3966 ], [ %4142, %4533 ]
  %4537 = phi float [ %3969, %3966 ], [ %4143, %4533 ]
  %4538 = phi float [ %3970, %3966 ], [ %4144, %4533 ]
  %4539 = phi float [ %3971, %3966 ], [ %4145, %4533 ]
  %4540 = phi float [ %3972, %3966 ], [ %4146, %4533 ]
  %4541 = phi float [ %3973, %3966 ], [ %4147, %4533 ]
  %4542 = phi float [ %3974, %3966 ], [ %4148, %4533 ]
  %4543 = phi i32 [ %3975, %3966 ], [ %4149, %4533 ]
  %4544 = phi float [ %3976, %3966 ], [ %4150, %4533 ]
  %4545 = phi float [ %3977, %3966 ], [ %4151, %4533 ]
  %4546 = phi float [ %3978, %3966 ], [ %4152, %4533 ]
  %4547 = phi i32 [ %3979, %3966 ], [ %4153, %4533 ]
  %4548 = phi float [ %3980, %3966 ], [ %4154, %4533 ]
  %4549 = add i32 %3981, 1
  %4550 = icmp ugt i32 %4549, %3963
  br i1 %4550, label %4551, label %3966, !llvm.loop !105

; <label>:4551                                    ; preds = %4534
  br label %4552

; <label>:4552                                    ; preds = %4551, %3913
  %4553 = phi i32 [ %3623, %3913 ], [ %4535, %4551 ]
  %4554 = phi i32 [ %3901, %3913 ], [ %4536, %4551 ]
  %4555 = phi float [ 0.000000e+00, %3913 ], [ %4537, %4551 ]
  %4556 = phi float [ 0.000000e+00, %3913 ], [ %4538, %4551 ]
  %4557 = phi float [ 0.000000e+00, %3913 ], [ %4539, %4551 ]
  %4558 = phi float [ 0.000000e+00, %3913 ], [ %4540, %4551 ]
  %4559 = phi float [ 0.000000e+00, %3913 ], [ %4541, %4551 ]
  %4560 = phi float [ 0.000000e+00, %3913 ], [ %4542, %4551 ]
  %4561 = phi i32 [ 0, %3913 ], [ %4543, %4551 ]
  %4562 = phi float [ 0.000000e+00, %3913 ], [ %4544, %4551 ]
  %4563 = phi float [ 0.000000e+00, %3913 ], [ %4545, %4551 ]
  %4564 = phi float [ 0.000000e+00, %3913 ], [ %4546, %4551 ]
  %4565 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4556, float %4557, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4566 = select i1 %1787, float 0.000000e+00, float %4555
  %4567 = select i1 %1787, float %4565, float %4556
  %4568 = select i1 %1787, float 0.000000e+00, float %4557
  %4569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4570 = extractvalue %dx.types.CBufRet.f32 %4569, 0
  %4571 = bitcast float %4570 to i32
  %4572 = lshr i32 %4571, 8
  %4573 = and i32 %4572, 255
  %4574 = uitofp i32 %4573 to float
  %4575 = fptoui float %4574 to i32
  %4576 = icmp eq i32 %4575, 13
  br i1 %4576, label %4577, label %4597

; <label>:4577                                    ; preds = %4552
  %4578 = fadd fast float %4558, 1.000000e+00
  %4579 = fadd fast float %4559, 1.000000e+00
  %4580 = fadd fast float %4560, 1.000000e+00
  %4581 = fmul fast float %4578, 5.000000e-01
  %4582 = fmul fast float %4579, 5.000000e-01
  %4583 = fmul fast float %4580, 5.000000e-01
  %4584 = call float @dx.op.unary.f32(i32 7, float %4581)  ; Saturate(value)
  %4585 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4586 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4587 = fmul fast float %4584, 1.023000e+03
  %4588 = fmul fast float %4585, 1.023000e+03
  %4589 = fmul fast float %4586, 1.023000e+03
  %4590 = fptoui float %4587 to i32
  %4591 = fptoui float %4588 to i32
  %4592 = fptoui float %4589 to i32
  %4593 = shl i32 %4591, 10
  %4594 = or i32 %4593, %4590
  %4595 = shl i32 %4592, 20
  %4596 = or i32 %4594, %4595
  br label %4597

; <label>:4597                                    ; preds = %4577, %4552
  %4598 = phi i32 [ %4596, %4577 ], [ %4554, %4552 ]
  %4599 = icmp eq i32 %4575, 14
  %4600 = select i1 %4599, i32 %4561, i32 %4598
  %4601 = icmp eq i32 %4575, 22
  br i1 %4601, label %4602, label %4622

; <label>:4602                                    ; preds = %4597
  %4603 = fadd fast float %4562, 1.000000e+00
  %4604 = fadd fast float %4563, 1.000000e+00
  %4605 = fadd fast float %4564, 1.000000e+00
  %4606 = fmul fast float %4603, 5.000000e-01
  %4607 = fmul fast float %4604, 5.000000e-01
  %4608 = fmul fast float %4605, 5.000000e-01
  %4609 = call float @dx.op.unary.f32(i32 7, float %4606)  ; Saturate(value)
  %4610 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4611 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4612 = fmul fast float %4609, 1.023000e+03
  %4613 = fmul fast float %4610, 1.023000e+03
  %4614 = fmul fast float %4611, 1.023000e+03
  %4615 = fptoui float %4612 to i32
  %4616 = fptoui float %4613 to i32
  %4617 = fptoui float %4614 to i32
  %4618 = shl i32 %4616, 10
  %4619 = or i32 %4618, %4615
  %4620 = shl i32 %4617, 20
  %4621 = or i32 %4619, %4620
  br label %4622

; <label>:4622                                    ; preds = %4602, %4597
  %4623 = phi i32 [ %4621, %4602 ], [ %4600, %4597 ]
  %4624 = fcmp fast olt float %3902, 0.000000e+00
  %4625 = call float @dx.op.unary.f32(i32 6, float %3902)  ; FAbs(value)
  %4626 = fmul fast float %4625, %3903
  %4627 = fmul fast float %4625, %3904
  %4628 = fmul fast float %4625, %3905
  %4629 = select i1 %4624, float %3903, float %4626
  %4630 = select i1 %4624, float %3904, float %4627
  %4631 = select i1 %4624, float %3905, float %4628
  %4632 = fsub fast float 1.000000e+00, %4625
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fmul fast float %4633, %4566
  %4635 = fmul fast float %4633, %4567
  %4636 = fmul fast float %4633, %4568
  %4637 = fadd fast float %4629, %4634
  %4638 = fadd fast float %4630, %4635
  %4639 = fadd fast float %4631, %4636
  br label %4640

; <label>:4640                                    ; preds = %4622, %3900
  %4641 = phi i32 [ %3623, %3900 ], [ %4553, %4622 ]
  %4642 = phi i32 [ %3901, %3900 ], [ %4623, %4622 ]
  %4643 = phi float [ %3903, %3900 ], [ %4637, %4622 ]
  %4644 = phi float [ %3904, %3900 ], [ %4638, %4622 ]
  %4645 = phi float [ %3905, %3900 ], [ %4639, %4622 ]
  %4646 = fmul fast float %3625, %2915
  %4647 = fmul fast float %3626, %2915
  %4648 = fmul fast float %3627, %2915
  %4649 = fmul fast float %4643, %2910
  %4650 = fmul fast float %4644, %2911
  %4651 = fmul fast float %4645, %2912
  %4652 = fadd fast float %4649, %1559
  %4653 = fadd fast float %4650, %1560
  %4654 = fadd fast float %4651, %1561
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4657 = fcmp fast oeq float %4656, 0.000000e+00
  br i1 %4657, label %5005, label %4658

; <label>:4658                                    ; preds = %4640
  %4659 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4660 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4661 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 0
  %4664 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4665 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 0
  %4668 = extractvalue %dx.types.CBufRet.f32 %4666, 1
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = select i1 %1787, float %4667, float %4663
  %4671 = select i1 %1787, float %4669, float %4664
  %4672 = select i1 %1787, float %4668, float %4665
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.CBufRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.CBufRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4679 = extractvalue %dx.types.CBufRet.f32 %4678, 0
  %4680 = extractvalue %dx.types.CBufRet.f32 %4678, 1
  %4681 = extractvalue %dx.types.CBufRet.f32 %4678, 2
  %4682 = extractvalue %dx.types.CBufRet.f32 %4678, 3
  %4683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.f32 %4683, 0
  %4685 = extractvalue %dx.types.CBufRet.f32 %4683, 1
  %4686 = extractvalue %dx.types.CBufRet.f32 %4683, 2
  %4687 = extractvalue %dx.types.CBufRet.f32 %4683, 3
  %4688 = fmul fast float %4674, %116
  %4689 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4675, float %4688)  ; FMad(a,b,c)
  %4690 = call float @dx.op.tertiary.f32(i32 46, float %118, float %4676, float %4689)  ; FMad(a,b,c)
  %4691 = fadd fast float %4690, %4677
  %4692 = fmul fast float %4679, %116
  %4693 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4680, float %4692)  ; FMad(a,b,c)
  %4694 = call float @dx.op.tertiary.f32(i32 46, float %118, float %4681, float %4693)  ; FMad(a,b,c)
  %4695 = fadd fast float %4694, %4682
  %4696 = fmul fast float %4684, %116
  %4697 = call float @dx.op.tertiary.f32(i32 46, float %117, float %4685, float %4696)  ; FMad(a,b,c)
  %4698 = call float @dx.op.tertiary.f32(i32 46, float %118, float %4686, float %4697)  ; FMad(a,b,c)
  %4699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4700 = extractvalue %dx.types.CBufRet.f32 %4699, 0
  %4701 = extractvalue %dx.types.CBufRet.f32 %4699, 1
  %4702 = extractvalue %dx.types.CBufRet.f32 %4699, 3
  %4703 = fmul fast float %4702, %4691
  %4704 = fmul fast float %4702, %4695
  %4705 = fadd fast float %4703, %4700
  %4706 = fadd fast float %4704, %4701
  %4707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.CBufRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.CBufRet.f32 %4707, 3
  %4711 = fmul fast float %4710, %4691
  %4712 = fmul fast float %4710, %4695
  %4713 = fadd fast float %4711, %4708
  %4714 = fadd fast float %4712, %4709
  %4715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.f32 %4715, 1
  %4717 = fsub fast float -0.000000e+00, %4687
  %4718 = fsub fast float %4717, %4698
  %4719 = fadd fast float %4718, %4716
  %4720 = extractvalue %dx.types.CBufRet.f32 %4715, 2
  %4721 = fmul fast float %4719, %4720
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4727 = fsub fast float %4713, %4725
  %4728 = fsub fast float %4714, %4726
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = extractvalue %dx.types.CBufRet.f32 %4730, 0
  %4732 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4733 = fsub fast float %4705, %4731
  %4734 = fsub fast float %4706, %4732
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4739 = fsub fast float %4691, %4737
  %4740 = fsub fast float %4695, %4738
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = bitcast float %4743 to i32
  %4745 = lshr i32 %4744, 8
  %4746 = and i32 %4745, 255
  %4747 = uitofp i32 %4746 to float
  %4748 = fptoui float %4747 to i32
  %4749 = and i32 %4748, -2
  %4750 = icmp eq i32 %4749, 10
  br i1 %4750, label %4751, label %4821

; <label>:4751                                    ; preds = %4658
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = fcmp fast olt float %4739, 0.000000e+00
  %4755 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4756 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4757 = select i1 %4754, float %4755, float %4756
  %4758 = fmul fast float %4757, %4739
  %4759 = call float @dx.op.unary.f32(i32 6, float %4758)  ; FAbs(value)
  %4760 = fcmp fast olt float %4740, 0.000000e+00
  %4761 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4762 = extractvalue %dx.types.CBufRet.f32 %4741, 3
  %4763 = select i1 %4760, float %4761, float %4762
  %4764 = fmul fast float %4763, %4740
  %4765 = call float @dx.op.unary.f32(i32 6, float %4764)  ; FAbs(value)
  %4766 = call float @dx.op.binary.f32(i32 35, float %4759, float %4765)  ; FMax(a,b)
  %4767 = fsub fast float %4753, %4766
  %4768 = call float @dx.op.unary.f32(i32 7, float %4767)  ; Saturate(value)
  %4769 = fmul fast float %4768, %4723
  %4770 = fcmp fast olt float %4733, 0.000000e+00
  %4771 = extractvalue %dx.types.CBufRet.f32 %4735, 0
  %4772 = extractvalue %dx.types.CBufRet.f32 %4735, 2
  %4773 = select i1 %4770, float %4771, float %4772
  %4774 = fmul fast float %4773, %4733
  %4775 = call float @dx.op.unary.f32(i32 6, float %4774)  ; FAbs(value)
  %4776 = fcmp fast olt float %4734, 0.000000e+00
  %4777 = extractvalue %dx.types.CBufRet.f32 %4735, 1
  %4778 = extractvalue %dx.types.CBufRet.f32 %4735, 3
  %4779 = select i1 %4776, float %4777, float %4778
  %4780 = fmul fast float %4779, %4734
  %4781 = call float @dx.op.unary.f32(i32 6, float %4780)  ; FAbs(value)
  %4782 = call float @dx.op.binary.f32(i32 35, float %4775, float %4781)  ; FMax(a,b)
  %4783 = fsub fast float %4753, %4782
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = fmul fast float %4784, %4723
  %4786 = fcmp fast olt float %4727, 0.000000e+00
  %4787 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4788 = extractvalue %dx.types.CBufRet.f32 %4729, 2
  %4789 = select i1 %4786, float %4787, float %4788
  %4790 = fmul fast float %4789, %4727
  %4791 = call float @dx.op.unary.f32(i32 6, float %4790)  ; FAbs(value)
  %4792 = fcmp fast olt float %4728, 0.000000e+00
  %4793 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4794 = extractvalue %dx.types.CBufRet.f32 %4729, 3
  %4795 = select i1 %4792, float %4793, float %4794
  %4796 = fmul fast float %4795, %4728
  %4797 = call float @dx.op.unary.f32(i32 6, float %4796)  ; FAbs(value)
  %4798 = call float @dx.op.binary.f32(i32 35, float %4791, float %4797)  ; FMax(a,b)
  %4799 = fsub fast float %4753, %4798
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4800, %4723
  %4802 = fadd fast float %4769, 1.000000e+00
  %4803 = fadd fast float %4785, 1.000000e+00
  %4804 = fadd fast float %4801, 1.000000e+00
  %4805 = fmul fast float %4802, 5.000000e-01
  %4806 = fmul fast float %4803, 5.000000e-01
  %4807 = fmul fast float %4804, 5.000000e-01
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = fmul fast float %4808, 1.023000e+03
  %4812 = fmul fast float %4809, 1.023000e+03
  %4813 = fmul fast float %4810, 1.023000e+03
  %4814 = fptoui float %4811 to i32
  %4815 = fptoui float %4812 to i32
  %4816 = fptoui float %4813 to i32
  %4817 = shl i32 %4815, 10
  %4818 = or i32 %4817, %4814
  %4819 = shl i32 %4816, 20
  %4820 = or i32 %4818, %4819
  br label %4821

; <label>:4821                                    ; preds = %4751, %4658
  %4822 = phi i32 [ %4820, %4751 ], [ %4642, %4658 ]
  %4823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4824 = extractvalue %dx.types.CBufRet.f32 %4823, 1
  %4825 = fcmp fast une float %4824, 0.000000e+00
  br i1 %4825, label %4826, label %4841

; <label>:4826                                    ; preds = %4821
  %4827 = lshr i32 %1712, 4
  %4828 = lshr i32 %1718, 4
  %4829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4830 = extractvalue %dx.types.CBufRet.f32 %4829, 0
  %4831 = fptoui float %4830 to i32
  %4832 = add i32 %4831, 15
  %4833 = lshr i32 %4832, 4
  %4834 = mul i32 %4833, %4828
  %4835 = add i32 %4834, %4827
  %4836 = shl i32 %4835, 3
  %4837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4836, i32 undef)  ; BufferLoad(srv,index,wot)
  %4838 = extractvalue %dx.types.ResRet.i32 %4837, 0
  %4839 = and i32 %4838, -268435456
  %4840 = icmp eq i32 %4839, -1342177280
  br i1 %4840, label %4851, label %4841

; <label>:4841                                    ; preds = %4826, %4821
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4845 = fmul fast float %4843, %72
  %4846 = fmul fast float %4844, %73
  %4847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %46, float %4845, float %4846, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4848 = extractvalue %dx.types.ResRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.ResRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.ResRet.f32 %4847, 2
  br label %4851

; <label>:4851                                    ; preds = %4841, %4826
  %4852 = phi float [ %4848, %4841 ], [ 0.000000e+00, %4826 ]
  %4853 = phi float [ %4849, %4841 ], [ 0.000000e+00, %4826 ]
  %4854 = phi float [ %4850, %4841 ], [ 0.000000e+00, %4826 ]
  %4855 = call float @dx.op.binary.f32(i32 36, float %4853, float %4854)  ; FMin(a,b)
  %4856 = call float @dx.op.binary.f32(i32 36, float %4852, float %4855)  ; FMin(a,b)
  %4857 = fcmp fast ogt float %4856, 0.000000e+00
  br i1 %4857, label %4858, label %5005, !dx.controlflow.hints !109

; <label>:4858                                    ; preds = %4851
  %4859 = fmul fast float %4852, %4670
  %4860 = fmul fast float %4853, %4671
  %4861 = fmul fast float %4854, %4672
  %4862 = fsub fast float %4659, %1629
  %4863 = fsub fast float %4660, %1630
  %4864 = fsub fast float %4661, %1631
  %4865 = call float @dx.op.dot3.f32(i32 55, float %4862, float %4863, float %4864, float %4862, float %4863, float %4864)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call float @dx.op.unary.f32(i32 25, float %4865)  ; Rsqrt(value)
  %4867 = fmul fast float %4866, %4862
  %4868 = fmul fast float %4866, %4863
  %4869 = fmul fast float %4866, %4864
  %4870 = call float @dx.op.dot3.f32(i32 55, float %4659, float %4660, float %4661, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %4871 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = call float @dx.op.unary.f32(i32 7, float %4870)  ; Saturate(value)
  %4873 = fmul fast float %4872, %4872
  %4874 = fmul fast float %4873, %1824
  %4875 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = bitcast float %4877 to i32
  %4879 = lshr i32 %4878, 8
  %4880 = and i32 %4879, 255
  %4881 = uitofp i32 %4880 to float
  %4882 = fptoui float %4881 to i32
  %4883 = and i32 %4882, 8
  %4884 = icmp ne i32 %4883, 0
  %4885 = select i1 %4884, float %4875, float 1.000000e+00
  %4886 = fmul fast float %4885, %4872
  %4887 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float %4867, float %4868, float %4869)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = fmul fast float %4887, %4887
  %4889 = call float @dx.op.unary.f32(i32 6, float %4870)  ; FAbs(value)
  %4890 = fsub fast float 1.000000e+00, %1815
  %4891 = fmul fast float %1666, %1666
  %4892 = fmul fast float %4891, %4890
  %4893 = fadd fast float %4892, %1815
  %4894 = bitcast float %4893 to i32
  %4895 = ashr i32 %4894, 1
  %4896 = add nsw i32 %4895, 532487669
  %4897 = bitcast i32 %4896 to float
  %4898 = fadd fast float %4897, %1666
  %4899 = fmul fast float %1815, %4888
  %4900 = fsub fast float 1.000000e+00, %4888
  %4901 = fadd fast float %4900, %4899
  %4902 = fmul fast float %4889, %4889
  %4903 = fmul fast float %4902, %4890
  %4904 = fadd fast float %4903, %1815
  %4905 = bitcast float %4904 to i32
  %4906 = ashr i32 %4905, 1
  %4907 = add nsw i32 %4906, 532487669
  %4908 = bitcast i32 %4907 to float
  %4909 = fadd fast float %4908, %4889
  %4910 = fmul fast float %4901, %4901
  %4911 = fmul fast float %4910, %4898
  %4912 = fmul fast float %4911, %4909
  %4913 = fdiv fast float 0x3FF0A00000000000, %4912
  %4914 = fmul fast float %4913, %1815
  %4915 = call float @dx.op.unary.f32(i32 6, float %4871)  ; FAbs(value)
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = bitcast float %4916 to i32
  %4918 = sitofp i32 %4917 to float
  %4919 = fmul fast float %4918, 5.000000e+00
  %4920 = fadd fast float %4919, 0xC1EFBF8940000000
  %4921 = fptosi float %4920 to i32
  %4922 = bitcast i32 %4921 to float
  %4923 = fmul fast float %4922, %1667
  %4924 = fmul fast float %4922, %1668
  %4925 = fmul fast float %4922, %2889
  %4926 = fadd fast float %4923, %1622
  %4927 = fadd fast float %4924, %1623
  %4928 = fadd fast float %4925, %1788
  %4929 = select i1 %2892, float %4915, float 0.000000e+00
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %4929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = fadd fast float %4931, -5.000000e-01
  %4935 = fadd fast float %4932, -5.000000e-01
  %4936 = fadd fast float %4933, -5.000000e-01
  %4937 = fmul fast float %1696, %4934
  %4938 = fmul fast float %1700, %4935
  %4939 = fmul fast float %2905, %4936
  %4940 = fadd fast float %4926, %4937
  %4941 = fadd fast float %4927, %4938
  %4942 = fadd fast float %4928, %4939
  %4943 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4944 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4945 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4946 = fmul fast float %4870, 9.843750e-01
  %4947 = fmul fast float %1745, 9.843750e-01
  %4948 = fadd fast float %4946, 7.812500e-03
  %4949 = fadd fast float %4947, 7.812500e-03
  %4950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %4948, float %4949, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4951 = extractvalue %dx.types.ResRet.f32 %4950, 2
  %4952 = extractvalue %dx.types.ResRet.f32 %4950, 3
  %4953 = select i1 %2892, float %4870, float 0.000000e+00
  %4954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %4953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4955 = extractvalue %dx.types.ResRet.f32 %4954, 0
  %4956 = extractvalue %dx.types.ResRet.f32 %4954, 1
  %4957 = extractvalue %dx.types.ResRet.f32 %4954, 2
  %4958 = fadd fast float %4955, -5.000000e-01
  %4959 = fadd fast float %4956, -5.000000e-01
  %4960 = fadd fast float %4957, -5.000000e-01
  %4961 = fmul fast float %1667, 4.000000e+00
  %4962 = fmul fast float %4961, %1679
  %4963 = fmul fast float %4962, %4958
  %4964 = fmul fast float %1668, 4.000000e+00
  %4965 = fmul fast float %4964, %1679
  %4966 = fmul fast float %4965, %4959
  %4967 = fmul fast float %2889, 4.000000e+00
  %4968 = fmul fast float %4967, %1679
  %4969 = fmul fast float %4968, %4960
  %4970 = fadd fast float %4963, %4951
  %4971 = fmul fast float %4970, %1622
  %4972 = fadd fast float %4971, %4952
  %4973 = fadd fast float %4966, %4951
  %4974 = fmul fast float %4973, %1623
  %4975 = fadd fast float %4974, %4952
  %4976 = fadd fast float %4969, %4951
  %4977 = fmul fast float %4976, %1788
  %4978 = fadd fast float %4977, %4952
  %4979 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4980 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4981 = call float @dx.op.unary.f32(i32 7, float %4978)  ; Saturate(value)
  %4982 = call float @dx.op.binary.f32(i32 35, float %4980, float %4981)  ; FMax(a,b)
  %4983 = call float @dx.op.binary.f32(i32 35, float %4979, float %4982)  ; FMax(a,b)
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = fmul fast float %4984, %4886
  %4986 = fmul fast float %4886, %4914
  %4987 = fmul fast float %4986, %4943
  %4988 = fmul fast float %4986, %4944
  %4989 = fmul fast float %4986, %4945
  %4990 = fmul fast float %4985, %4859
  %4991 = fmul fast float %4985, %4860
  %4992 = fmul fast float %4985, %4861
  %4993 = fadd fast float %4990, %4646
  %4994 = fadd fast float %4991, %4647
  %4995 = fadd fast float %4992, %4648
  %4996 = fmul fast float %4987, %4859
  %4997 = fmul fast float %4988, %4860
  %4998 = fmul fast float %4989, %4861
  %4999 = fadd fast float %4996, %4652
  %5000 = fadd fast float %4997, %4653
  %5001 = fadd fast float %4998, %4654
  %5002 = fadd fast float %4996, %4649
  %5003 = fadd fast float %4997, %4650
  %5004 = fadd fast float %4998, %4651
  br label %5005

; <label>:5005                                    ; preds = %4858, %4851, %4640
  %5006 = phi i32 [ %4822, %4858 ], [ %4642, %4640 ], [ %4822, %4851 ]
  %5007 = phi i32 [ 1, %4858 ], [ 0, %4640 ], [ 0, %4851 ]
  %5008 = phi float [ %4996, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5009 = phi float [ %4997, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5010 = phi float [ %4998, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5011 = phi float [ %4990, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5012 = phi float [ %4991, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5013 = phi float [ %4992, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5014 = phi float [ %5002, %4858 ], [ %4649, %4640 ], [ %4649, %4851 ]
  %5015 = phi float [ %5003, %4858 ], [ %4650, %4640 ], [ %4650, %4851 ]
  %5016 = phi float [ %5004, %4858 ], [ %4651, %4640 ], [ %4651, %4851 ]
  %5017 = phi float [ %4993, %4858 ], [ %4646, %4640 ], [ %4646, %4851 ]
  %5018 = phi float [ %4994, %4858 ], [ %4647, %4640 ], [ %4647, %4851 ]
  %5019 = phi float [ %4995, %4858 ], [ %4648, %4640 ], [ %4648, %4851 ]
  %5020 = phi float [ %4852, %4858 ], [ 0.000000e+00, %4640 ], [ 0.000000e+00, %4851 ]
  %5021 = phi float [ %4999, %4858 ], [ %4652, %4640 ], [ %4652, %4851 ]
  %5022 = phi float [ %5000, %4858 ], [ %4653, %4640 ], [ %4653, %4851 ]
  %5023 = phi float [ %5001, %4858 ], [ %4654, %4640 ], [ %4654, %4851 ]
  %5024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.i32 %5024, 0
  %5026 = icmp eq i32 %5025, 0
  br i1 %5026, label %5890, label %5027

; <label>:5027                                    ; preds = %5005
  %5028 = lshr i32 %1712, 4
  %5029 = lshr i32 %1718, 4
  %5030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.i32 %5030, 0
  %5032 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5029, i32 %5031, i32 %5028)  ; UMad(a,b,c)
  %5033 = add nsw i32 %5025, -1
  %5034 = call i32 @dx.op.binary.i32(i32 37, i32 %5033, i32 0)  ; IMax(a,b)
  %5035 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5036 = fptoui float %5035 to i32
  %5037 = lshr i32 %5036, 5
  %5038 = call i32 @dx.op.binary.i32(i32 40, i32 %5037, i32 8191)  ; UMin(a,b)
  %5039 = shl i32 %5038, 2
  %5040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %5039, i32 undef)  ; BufferLoad(srv,index,wot)
  %5041 = extractvalue %dx.types.ResRet.i32 %5040, 0
  %5042 = lshr i32 %5041, 16
  %5043 = and i32 %5041, 65535
  %5044 = lshr i32 %5041, 21
  %5045 = lshr i32 %5043, 5
  %5046 = call i32 @dx.op.binary.i32(i32 40, i32 %5045, i32 %5034)  ; UMin(a,b)
  %5047 = icmp ugt i32 %5044, %5046
  br i1 %5047, label %5823, label %5048

; <label>:5048                                    ; preds = %5027
  br label %5049

; <label>:5049                                    ; preds = %5792, %5048
  %5050 = phi i32 [ %5793, %5792 ], [ %5006, %5048 ]
  %5051 = phi i32 [ %5794, %5792 ], [ 0, %5048 ]
  %5052 = phi i32 [ %5795, %5792 ], [ 0, %5048 ]
  %5053 = phi i32 [ %5796, %5792 ], [ 0, %5048 ]
  %5054 = phi i32 [ %5797, %5792 ], [ 0, %5048 ]
  %5055 = phi i32 [ %5798, %5792 ], [ 0, %5048 ]
  %5056 = phi i32 [ %5799, %5792 ], [ 0, %5048 ]
  %5057 = phi i32 [ %5800, %5792 ], [ 0, %5048 ]
  %5058 = phi i32 [ %5801, %5792 ], [ 0, %5048 ]
  %5059 = phi i32 [ %5820, %5792 ], [ %5044, %5048 ]
  %5060 = phi float [ %5802, %5792 ], [ %5008, %5048 ]
  %5061 = phi float [ %5803, %5792 ], [ %5009, %5048 ]
  %5062 = phi float [ %5804, %5792 ], [ %5010, %5048 ]
  %5063 = phi float [ %5805, %5792 ], [ %5011, %5048 ]
  %5064 = phi float [ %5806, %5792 ], [ %5012, %5048 ]
  %5065 = phi float [ %5807, %5792 ], [ %5013, %5048 ]
  %5066 = phi float [ %5808, %5792 ], [ %5014, %5048 ]
  %5067 = phi float [ %5809, %5792 ], [ %5015, %5048 ]
  %5068 = phi float [ %5810, %5792 ], [ %5016, %5048 ]
  %5069 = phi float [ %5811, %5792 ], [ %5017, %5048 ]
  %5070 = phi float [ %5812, %5792 ], [ %5018, %5048 ]
  %5071 = phi float [ %5813, %5792 ], [ %5019, %5048 ]
  %5072 = phi float [ %5814, %5792 ], [ %5021, %5048 ]
  %5073 = phi float [ %5815, %5792 ], [ %5022, %5048 ]
  %5074 = phi float [ %5816, %5792 ], [ %5023, %5048 ]
  %5075 = phi float [ %5817, %5792 ], [ %5017, %5048 ]
  %5076 = phi float [ %5818, %5792 ], [ %5018, %5048 ]
  %5077 = phi float [ %5819, %5792 ], [ %5019, %5048 ]
  %5078 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.i32 %5078, 0
  %5080 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5032, i32 %5079, i32 %5059)  ; UMad(a,b,c)
  %5081 = shl i32 %5080, 2
  %5082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5081, i32 undef)  ; BufferLoad(srv,index,wot)
  %5083 = extractvalue %dx.types.ResRet.i32 %5082, 0
  %5084 = shl i32 %5059, 5
  %5085 = sub nsw i32 %5042, %5084
  %5086 = call i32 @dx.op.binary.i32(i32 37, i32 %5085, i32 0)  ; IMax(a,b)
  %5087 = call i32 @dx.op.binary.i32(i32 38, i32 %5086, i32 31)  ; IMin(a,b)
  %5088 = sub nsw i32 1, %5042
  %5089 = add nsw i32 %5088, %5043
  %5090 = call i32 @dx.op.binary.i32(i32 37, i32 %5089, i32 0)  ; IMax(a,b)
  %5091 = call i32 @dx.op.binary.i32(i32 38, i32 %5090, i32 32)  ; IMin(a,b)
  %5092 = and i32 %5091, 31
  %5093 = shl i32 -1, %5092
  %5094 = xor i32 %5093, -1
  %5095 = and i32 %5087, 31
  %5096 = shl i32 %5094, %5095
  %5097 = icmp eq i32 %5091, 32
  %5098 = select i1 %5097, i32 -1, i32 %5096
  %5099 = and i32 %5098, %5083
  %5100 = icmp eq i32 %5099, 0
  br i1 %5100, label %5792, label %5101

; <label>:5101                                    ; preds = %5049
  br label %5102

; <label>:5102                                    ; preds = %5288, %5101
  %5103 = phi i32 [ %5289, %5288 ], [ %5050, %5101 ]
  %5104 = phi i32 [ %5278, %5288 ], [ %5051, %5101 ]
  %5105 = phi i32 [ %5280, %5288 ], [ %5052, %5101 ]
  %5106 = phi i32 [ %5282, %5288 ], [ %5053, %5101 ]
  %5107 = phi i32 [ %5284, %5288 ], [ %5054, %5101 ]
  %5108 = phi i32 [ %5290, %5288 ], [ %5055, %5101 ]
  %5109 = phi i32 [ %5291, %5288 ], [ %5056, %5101 ]
  %5110 = phi i32 [ %5292, %5288 ], [ %5057, %5101 ]
  %5111 = phi i32 [ %5293, %5288 ], [ %5058, %5101 ]
  %5112 = phi i32 [ %5135, %5288 ], [ %5099, %5101 ]
  %5113 = phi float [ %5294, %5288 ], [ %5060, %5101 ]
  %5114 = phi float [ %5295, %5288 ], [ %5061, %5101 ]
  %5115 = phi float [ %5296, %5288 ], [ %5062, %5101 ]
  %5116 = phi float [ %5297, %5288 ], [ %5063, %5101 ]
  %5117 = phi float [ %5298, %5288 ], [ %5064, %5101 ]
  %5118 = phi float [ %5299, %5288 ], [ %5065, %5101 ]
  %5119 = phi float [ %5300, %5288 ], [ %5066, %5101 ]
  %5120 = phi float [ %5301, %5288 ], [ %5067, %5101 ]
  %5121 = phi float [ %5302, %5288 ], [ %5068, %5101 ]
  %5122 = phi float [ %5303, %5288 ], [ %5069, %5101 ]
  %5123 = phi float [ %5304, %5288 ], [ %5070, %5101 ]
  %5124 = phi float [ %5305, %5288 ], [ %5071, %5101 ]
  %5125 = phi float [ %5306, %5288 ], [ %5072, %5101 ]
  %5126 = phi float [ %5307, %5288 ], [ %5073, %5101 ]
  %5127 = phi float [ %5308, %5288 ], [ %5074, %5101 ]
  %5128 = phi float [ %5309, %5288 ], [ %5075, %5101 ]
  %5129 = phi float [ %5310, %5288 ], [ %5076, %5101 ]
  %5130 = phi float [ %5311, %5288 ], [ %5077, %5101 ]
  %5131 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5112)  ; FirstbitLo(value)
  %5132 = add i32 %5131, %5084
  %5133 = and i32 %5131, 31
  %5134 = shl i32 1, %5133
  %5135 = xor i32 %5134, %5112
  %5136 = mul i32 %5132, 112
  %5137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5136, i32 undef)  ; BufferLoad(srv,index,wot)
  %5138 = extractvalue %dx.types.ResRet.f32 %5137, 0
  %5139 = extractvalue %dx.types.ResRet.f32 %5137, 1
  %5140 = extractvalue %dx.types.ResRet.f32 %5137, 2
  %5141 = add i32 %5136, 16
  %5142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5141, i32 undef)  ; BufferLoad(srv,index,wot)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 0
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 1
  %5145 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5146 = add i32 %5136, 28
  %5147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5146, i32 undef)  ; BufferLoad(srv,index,wot)
  %5148 = extractvalue %dx.types.ResRet.i32 %5147, 0
  %5149 = add i32 %5136, 32
  %5150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5149, i32 undef)  ; BufferLoad(srv,index,wot)
  %5151 = extractvalue %dx.types.ResRet.f32 %5150, 0
  %5152 = extractvalue %dx.types.ResRet.f32 %5150, 1
  %5153 = extractvalue %dx.types.ResRet.f32 %5150, 2
  %5154 = add i32 %5136, 44
  %5155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5154, i32 undef)  ; BufferLoad(srv,index,wot)
  %5156 = extractvalue %dx.types.ResRet.f32 %5155, 0
  %5157 = add i32 %5136, 48
  %5158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5158, 3
  %5163 = add i32 %5136, 64
  %5164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5163, i32 undef)  ; BufferLoad(srv,index,wot)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.ResRet.f32 %5164, 3
  %5169 = add i32 %5136, 80
  %5170 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %5169, i32 undef)  ; BufferLoad(srv,index,wot)
  %5171 = extractvalue %dx.types.ResRet.f32 %5170, 1
  %5172 = extractvalue %dx.types.ResRet.f32 %5170, 2
  %5173 = add i32 %5136, 92
  %5174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5173, i32 undef)  ; BufferLoad(srv,index,wot)
  %5175 = extractvalue %dx.types.ResRet.i32 %5174, 0
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = select i1 %1787, float %5171, float %5138
  %5178 = select i1 %1787, float %5176, float %5139
  %5179 = select i1 %1787, float %5172, float %5140
  %5180 = and i32 %5175, 65535
  %5181 = uitofp i32 %5180 to float
  %5182 = lshr i32 %5175, 16
  %5183 = uitofp i32 %5182 to float
  %5184 = and i32 %5148, 65535
  %5185 = lshr i32 %5148, 24
  %5186 = and i32 %5185, 3
  %5187 = and i32 %5148, 536870912
  %5188 = icmp ne i32 %5187, 0
  %5189 = icmp eq i32 %5186, 2
  %5190 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %5151, float %5152, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5191 = fsub fast float %116, %5159
  %5192 = fsub fast float %117, %5160
  %5193 = fsub fast float %118, %5161
  %5194 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %5151, float %5152, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5195 = fdiv fast float %5194, %5190
  %5196 = call float @dx.op.binary.f32(i32 35, float %5195, float -1.000000e+00)  ; FMax(a,b)
  %5197 = call float @dx.op.binary.f32(i32 36, float %5196, float 1.000000e+00)  ; FMin(a,b)
  %5198 = fmul fast float %5197, %5151
  %5199 = fmul fast float %5197, %5152
  %5200 = fmul fast float %5197, %5153
  %5201 = fadd fast float %5198, %5159
  %5202 = fadd fast float %5199, %5160
  %5203 = fadd fast float %5200, %5161
  %5204 = fsub fast float %5201, %116
  %5205 = fsub fast float %5202, %117
  %5206 = fsub fast float %5203, %118
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = call float @dx.op.unary.f32(i32 24, float %5207)  ; Sqrt(value)
  %5209 = fdiv fast float 1.000000e+00, %5208
  %5210 = fmul fast float %5204, %5209
  %5211 = fmul fast float %5205, %5209
  %5212 = fmul fast float %5206, %5209
  br i1 %5189, label %5213, label %5237

; <label>:5213                                    ; preds = %5102
  %5214 = fmul fast float %5167, %5143
  %5215 = fmul fast float %5167, %5144
  %5216 = fmul fast float %5167, %5145
  %5217 = fsub fast float %5214, %116
  %5218 = fadd fast float %5217, %5201
  %5219 = fsub fast float %5215, %117
  %5220 = fadd fast float %5219, %5202
  %5221 = fsub fast float %5216, %118
  %5222 = fadd fast float %5221, %5203
  %5223 = call float @dx.op.dot3.f32(i32 55, float %5218, float %5220, float %5222, float %5218, float %5220, float %5222)  ; Dot3(ax,ay,az,bx,by,bz)
  %5224 = call float @dx.op.unary.f32(i32 25, float %5223)  ; Rsqrt(value)
  %5225 = fmul fast float %5224, %5218
  %5226 = fmul fast float %5224, %5220
  %5227 = fmul fast float %5224, %5222
  %5228 = fsub fast float %116, %5201
  %5229 = fsub fast float %117, %5202
  %5230 = fsub fast float %118, %5203
  %5231 = fsub fast float -0.000000e+00, %5228
  %5232 = fsub fast float -0.000000e+00, %5229
  %5233 = fsub fast float -0.000000e+00, %5230
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float %5143, float %5144, float %5145)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = fcmp fast ogt float %5234, 0.000000e+00
  %5236 = uitofp i1 %5235 to float
  br label %5237

; <label>:5237                                    ; preds = %5213, %5102
  %5238 = phi float [ %5236, %5213 ], [ 1.000000e+00, %5102 ]
  %5239 = phi float [ %5225, %5213 ], [ %5210, %5102 ]
  %5240 = phi float [ %5226, %5213 ], [ %5211, %5102 ]
  %5241 = phi float [ %5227, %5213 ], [ %5212, %5102 ]
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5143, float %5144, float %5145, float %5239, float %5240, float %5241)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fmul fast float %5242, %5242
  %5244 = call float @dx.op.unary.f32(i32 7, float %5243)  ; Saturate(value)
  %5245 = fsub fast float 1.000000e+00, %5244
  %5246 = fmul fast float %5245, 5.000000e-01
  %5247 = fcmp fast ogt float %5242, 0.000000e+00
  %5248 = fsub fast float 1.000000e+00, %5246
  %5249 = select i1 %5247, float %5246, float %5248
  %5250 = fmul fast float %5249, %5183
  %5251 = fadd fast float %5250, %5181
  %5252 = fmul fast float %5251, 0x3EF0001000000000
  %5253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %5252, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = fmul fast float %5242, %5165
  %5256 = fadd fast float %5255, %5166
  %5257 = call float @dx.op.unary.f32(i32 7, float %5256)  ; Saturate(value)
  %5258 = select i1 %5189, float 1.000000e+00, float %5257
  %5259 = select i1 %5189, float %5257, float 1.000000e+00
  %5260 = fmul fast float %5208, %5162
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5261, %5168
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fmul fast float %5263, %5259
  %5265 = fmul fast float %5264, 2.000000e+00
  %5266 = fsub fast float 3.000000e+00, %5265
  %5267 = fmul fast float %5254, %5238
  %5268 = fmul fast float %5264, %5264
  %5269 = fmul fast float %5268, %5267
  %5270 = fmul fast float %5269, %5266
  %5271 = xor i1 %5188, true
  %5272 = and i1 %5189, %5271
  %5273 = icmp ne i32 %5186, 2
  %5274 = and i1 %5273, %5271
  %5275 = and i1 %5188, %5189
  %5276 = and i1 %5188, %5273
  %5277 = zext i1 %5272 to i32
  %5278 = add i32 %5277, %5104
  %5279 = zext i1 %5274 to i32
  %5280 = add i32 %5279, %5105
  %5281 = zext i1 %5275 to i32
  %5282 = add i32 %5281, %5106
  %5283 = zext i1 %5276 to i32
  %5284 = add i32 %5283, %5107
  %5285 = call float @dx.op.binary.f32(i32 36, float %5270, float %5270)  ; FMin(a,b)
  %5286 = call float @dx.op.binary.f32(i32 36, float %5270, float %5285)  ; FMin(a,b)
  %5287 = fcmp fast ogt float %5286, 0.000000e+00
  br i1 %5287, label %5313, label %5288, !dx.controlflow.hints !110

; <label>:5288                                    ; preds = %5776, %5237
  %5289 = phi i32 [ %5786, %5776 ], [ %5103, %5237 ]
  %5290 = phi i32 [ %5787, %5776 ], [ %5108, %5237 ]
  %5291 = phi i32 [ %5788, %5776 ], [ %5109, %5237 ]
  %5292 = phi i32 [ %5789, %5776 ], [ %5110, %5237 ]
  %5293 = phi i32 [ %5790, %5776 ], [ %5111, %5237 ]
  %5294 = phi float [ %5747, %5776 ], [ %5113, %5237 ]
  %5295 = phi float [ %5748, %5776 ], [ %5114, %5237 ]
  %5296 = phi float [ %5749, %5776 ], [ %5115, %5237 ]
  %5297 = phi float [ %5750, %5776 ], [ %5116, %5237 ]
  %5298 = phi float [ %5751, %5776 ], [ %5117, %5237 ]
  %5299 = phi float [ %5752, %5776 ], [ %5118, %5237 ]
  %5300 = phi float [ %5753, %5776 ], [ %5119, %5237 ]
  %5301 = phi float [ %5754, %5776 ], [ %5120, %5237 ]
  %5302 = phi float [ %5755, %5776 ], [ %5121, %5237 ]
  %5303 = phi float [ %5756, %5776 ], [ %5122, %5237 ]
  %5304 = phi float [ %5757, %5776 ], [ %5123, %5237 ]
  %5305 = phi float [ %5758, %5776 ], [ %5124, %5237 ]
  %5306 = phi float [ %5759, %5776 ], [ %5125, %5237 ]
  %5307 = phi float [ %5760, %5776 ], [ %5126, %5237 ]
  %5308 = phi float [ %5761, %5776 ], [ %5127, %5237 ]
  %5309 = phi float [ %5762, %5776 ], [ %5128, %5237 ]
  %5310 = phi float [ %5763, %5776 ], [ %5129, %5237 ]
  %5311 = phi float [ %5764, %5776 ], [ %5130, %5237 ]
  %5312 = icmp eq i32 %5112, %5134
  br i1 %5312, label %5791, label %5102

; <label>:5313                                    ; preds = %5237
  %5314 = icmp eq i32 %5184, 255
  br i1 %5314, label %5452, label %5315, !dx.controlflow.hints !111

; <label>:5315                                    ; preds = %5313
  %5316 = mul nuw nsw i32 %5184, 176
  %5317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = extractvalue %dx.types.ResRet.f32 %5317, 3
  %5322 = add nuw nsw i32 %5316, 16
  %5323 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5322, i32 undef)  ; BufferLoad(srv,index,wot)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 0
  %5325 = extractvalue %dx.types.ResRet.f32 %5323, 1
  %5326 = add nuw nsw i32 %5316, 32
  %5327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5326, i32 undef)  ; BufferLoad(srv,index,wot)
  %5328 = extractvalue %dx.types.ResRet.f32 %5327, 0
  %5329 = extractvalue %dx.types.ResRet.f32 %5327, 1
  %5330 = add nuw nsw i32 %5316, 48
  %5331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5330, i32 undef)  ; BufferLoad(srv,index,wot)
  %5332 = extractvalue %dx.types.ResRet.f32 %5331, 0
  %5333 = extractvalue %dx.types.ResRet.f32 %5331, 1
  %5334 = extractvalue %dx.types.ResRet.f32 %5331, 2
  %5335 = extractvalue %dx.types.ResRet.f32 %5331, 3
  %5336 = add nuw nsw i32 %5316, 64
  %5337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5336, i32 undef)  ; BufferLoad(srv,index,wot)
  %5338 = extractvalue %dx.types.ResRet.f32 %5337, 0
  %5339 = extractvalue %dx.types.ResRet.f32 %5337, 1
  %5340 = extractvalue %dx.types.ResRet.f32 %5337, 2
  %5341 = extractvalue %dx.types.ResRet.f32 %5337, 3
  %5342 = add nuw nsw i32 %5316, 80
  %5343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.ResRet.f32 %5343, 1
  %5346 = extractvalue %dx.types.ResRet.f32 %5343, 2
  %5347 = extractvalue %dx.types.ResRet.f32 %5343, 3
  %5348 = add nuw nsw i32 %5316, 96
  %5349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %5348, i32 undef)  ; BufferLoad(srv,index,wot)
  %5350 = extractvalue %dx.types.ResRet.f32 %5349, 0
  %5351 = extractvalue %dx.types.ResRet.f32 %5349, 1
  %5352 = extractvalue %dx.types.ResRet.f32 %5349, 2
  %5353 = extractvalue %dx.types.ResRet.f32 %5349, 3
  %5354 = bitcast float %5325 to i32
  %5355 = fmul fast float %5332, %116
  %5356 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5338, float %5355)  ; FMad(a,b,c)
  %5357 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5344, float %5356)  ; FMad(a,b,c)
  %5358 = fadd fast float %5357, %5350
  %5359 = fmul fast float %5333, %116
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5339, float %5359)  ; FMad(a,b,c)
  %5361 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5345, float %5360)  ; FMad(a,b,c)
  %5362 = fadd fast float %5361, %5351
  %5363 = fmul fast float %5334, %116
  %5364 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5340, float %5363)  ; FMad(a,b,c)
  %5365 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5346, float %5364)  ; FMad(a,b,c)
  %5366 = fadd fast float %5365, %5352
  %5367 = fmul fast float %5335, %116
  %5368 = call float @dx.op.tertiary.f32(i32 46, float %117, float %5341, float %5367)  ; FMad(a,b,c)
  %5369 = call float @dx.op.tertiary.f32(i32 46, float %118, float %5347, float %5368)  ; FMad(a,b,c)
  %5370 = fadd fast float %5369, %5353
  %5371 = fdiv fast float %5358, %5370
  %5372 = fdiv fast float %5362, %5370
  %5373 = fdiv fast float %5366, %5370
  %5374 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5373)  ; FMax(a,b)
  %5375 = fmul fast float %1076, 0x401921FB60000000
  %5376 = call float @dx.op.unary.f32(i32 13, float %5375)  ; Sin(value)
  %5377 = call float @dx.op.unary.f32(i32 12, float %5375)  ; Cos(value)
  %5378 = fmul fast float %5377, %5329
  %5379 = call float @dx.op.tertiary.f32(i32 46, float %5376, float %5329, float 0.000000e+00)  ; FMad(a,b,c)
  %5380 = fmul fast float %5329, %5376
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = call float @dx.op.tertiary.f32(i32 46, float %5377, float %5329, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5383

; <label>:5383                                    ; preds = %5383, %5315
  %5384 = phi float [ 0.000000e+00, %5315 ], [ %5416, %5383 ]
  %5385 = phi float [ 0.000000e+00, %5315 ], [ %5418, %5383 ]
  %5386 = phi i32 [ 0, %5315 ], [ %5419, %5383 ]
  %5387 = mul i32 %5386, 2
  %5388 = add i32 0, %5387
  %5389 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5388
  %5390 = load float, float* %5389, align 4
  %5391 = mul i32 %5386, 2
  %5392 = add i32 1, %5391
  %5393 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5392
  %5394 = load float, float* %5393, align 4
  %5395 = fmul fast float %5378, %5390
  %5396 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5381, float %5395)  ; FMad(a,b,c)
  %5397 = fmul fast float %5390, %5379
  %5398 = call float @dx.op.tertiary.f32(i32 46, float %5394, float %5382, float %5397)  ; FMad(a,b,c)
  %5399 = fadd fast float %5396, %5371
  %5400 = fadd fast float %5398, %5372
  %5401 = fmul fast float %5399, %5324
  %5402 = fmul fast float %5400, %5324
  %5403 = call float @dx.op.binary.f32(i32 35, float %5401, float %5320)  ; FMax(a,b)
  %5404 = call float @dx.op.binary.f32(i32 35, float %5402, float %5320)  ; FMax(a,b)
  %5405 = call float @dx.op.binary.f32(i32 36, float %5403, float %5321)  ; FMin(a,b)
  %5406 = call float @dx.op.binary.f32(i32 36, float %5404, float %5321)  ; FMin(a,b)
  %5407 = fadd fast float %5405, %5318
  %5408 = fadd fast float %5406, %5319
  %5409 = uitofp i32 %5354 to float
  %5410 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %46, float %5407, float %5408, float %5409, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = fsub fast float %5411, %5374
  %5413 = fsub fast float %5412, %5328
  %5414 = fcmp fast ogt float %5413, 0.000000e+00
  %5415 = select i1 %5414, float 1.000000e+00, float 0.000000e+00
  %5416 = fadd fast float %5415, %5384
  %5417 = select i1 %5414, float %5413, float 0.000000e+00
  %5418 = fadd fast float %5417, %5385
  %5419 = add nuw nsw i32 %5386, 1
  %5420 = icmp eq i32 %5419, 8
  br i1 %5420, label %5421, label %5383

; <label>:5421                                    ; preds = %5383
  %5422 = fdiv fast float 1.000000e+00, %5416
  %5423 = fmul fast float %5422, %5418
  %5424 = fdiv fast float 1.000000e+00, %5374
  %5425 = fmul fast float %5423, %5424
  %5426 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5427 = call float @dx.op.binary.f32(i32 35, float %5426, float 0.000000e+00)  ; FMax(a,b)
  %5428 = fmul fast float %5416, 1.250000e-01
  %5429 = call float @dx.op.unary.f32(i32 7, float %5428)  ; Saturate(value)
  %5430 = fmul fast float %5429, 2.000000e+00
  %5431 = fadd fast float %5430, -1.000000e+00
  %5432 = fcmp fast ogt float %5431, 0.000000e+00
  %5433 = fcmp fast olt float %5431, 0.000000e+00
  %5434 = zext i1 %5432 to i32
  %5435 = zext i1 %5433 to i32
  %5436 = sub nsw i32 %5434, %5435
  %5437 = sitofp i32 %5436 to float
  %5438 = fmul fast float %5437, %5431
  %5439 = fsub fast float 1.000000e+00, %5438
  %5440 = fmul fast float %5439, %5439
  %5441 = fmul fast float %5440, %5439
  %5442 = fsub fast float %5439, %5441
  %5443 = fmul fast float %5442, %5427
  %5444 = fsub fast float 1.000000e+00, %5441
  %5445 = fsub fast float %5444, %5443
  %5446 = fmul fast float %5437, 5.000000e-01
  %5447 = fmul fast float %5446, %5445
  %5448 = fsub fast float -5.000000e-01, %5447
  %5449 = fmul fast float %5448, %5258
  %5450 = fadd fast float %5449, 1.000000e+00
  %5451 = fmul fast float %5450, %5270
  br label %5452

; <label>:5452                                    ; preds = %5421, %5313
  %5453 = phi float [ %5451, %5421 ], [ %5270, %5313 ]
  %5454 = call float @dx.op.binary.f32(i32 36, float %5453, float %5453)  ; FMin(a,b)
  %5455 = call float @dx.op.binary.f32(i32 36, float %5453, float %5454)  ; FMin(a,b)
  %5456 = fcmp fast ogt float %5455, 0.000000e+00
  br i1 %5456, label %5457, label %5746

; <label>:5457                                    ; preds = %5452
  %5458 = fmul fast float %5453, %5177
  %5459 = fmul fast float %5453, %5178
  %5460 = fmul fast float %5453, %5179
  %5461 = fadd fast float %5210, %1601
  %5462 = fadd fast float %5211, %1602
  %5463 = fadd fast float %5212, %1603
  %5464 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5210, float %5211, float %5212, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = fdiv fast float 1.000000e+00, %5465
  %5467 = fmul fast float %5466, %5464
  %5468 = fmul fast float %5467, %5461
  %5469 = fmul fast float %5467, %5462
  %5470 = fmul fast float %5467, %5463
  %5471 = fadd fast float %5191, %5468
  %5472 = fadd fast float %5192, %5469
  %5473 = fadd fast float %5193, %5470
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5471, float %5472, float %5473, float %5151, float %5152, float %5153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fdiv fast float %5474, %5190
  %5476 = call float @dx.op.binary.f32(i32 35, float %5475, float -1.000000e+00)  ; FMax(a,b)
  %5477 = call float @dx.op.binary.f32(i32 36, float %5476, float 1.000000e+00)  ; FMin(a,b)
  %5478 = fmul fast float %5477, %5151
  %5479 = fmul fast float %5477, %5152
  %5480 = fmul fast float %5477, %5153
  %5481 = fsub fast float %5159, %116
  %5482 = fadd fast float %5481, %5478
  %5483 = fsub fast float %5160, %117
  %5484 = fadd fast float %5483, %5479
  %5485 = fsub fast float %5161, %118
  %5486 = fadd fast float %5485, %5480
  %5487 = call float @dx.op.dot3.f32(i32 55, float %5482, float %5484, float %5486, float %5482, float %5484, float %5486)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = call float @dx.op.unary.f32(i32 25, float %5487)  ; Rsqrt(value)
  %5489 = fmul fast float %5482, %5488
  %5490 = fmul fast float %5484, %5488
  %5491 = fmul fast float %5486, %5488
  %5492 = fsub fast float %5489, %1629
  %5493 = fsub fast float %5490, %1630
  %5494 = fsub fast float %5491, %1631
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5492, float %5493, float %5494, float %5492, float %5493, float %5494)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.unary.f32(i32 25, float %5495)  ; Rsqrt(value)
  %5497 = fmul fast float %5492, %5496
  %5498 = fmul fast float %5493, %5496
  %5499 = fmul fast float %5494, %5496
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5489, float %5490, float %5491, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fmul fast float %5488, %5156
  %5503 = fmul fast float %5502, %5502
  %5504 = bitcast float %5503 to i32
  %5505 = ashr i32 %5504, 1
  %5506 = sub nsw i32 1597463007, %5505
  %5507 = bitcast i32 %5506 to float
  %5508 = fmul fast float %5507, %5500
  %5509 = fmul fast float %5508, %5508
  %5510 = fsub fast float 1.000000e+00, %5509
  %5511 = fmul fast float %5500, %5503
  %5512 = call float @dx.op.unary.f32(i32 7, float %5511)  ; Saturate(value)
  %5513 = fmul fast float %5508, 5.000000e-01
  %5514 = fadd fast float %5513, 5.000000e-01
  %5515 = fmul fast float %5514, %5503
  %5516 = call float @dx.op.unary.f32(i32 7, float %5515)  ; Saturate(value)
  %5517 = bitcast float %5516 to i32
  %5518 = ashr i32 %5517, 1
  %5519 = add nsw i32 %5518, 532487669
  %5520 = bitcast i32 %5519 to float
  %5521 = fmul fast float %5520, %5516
  %5522 = fcmp fast ogt float %5510, 0.000000e+00
  %5523 = select i1 %5522, float %5521, float %5512
  %5524 = call float @dx.op.unary.f32(i32 7, float %5500)  ; Saturate(value)
  %5525 = fmul fast float %5524, %5524
  %5526 = fmul fast float %5525, %1824
  %5527 = call float @dx.op.unary.f32(i32 7, float %5526)  ; Saturate(value)
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 0
  %5530 = bitcast float %5529 to i32
  %5531 = lshr i32 %5530, 8
  %5532 = and i32 %5531, 255
  %5533 = uitofp i32 %5532 to float
  %5534 = fptoui float %5533 to i32
  %5535 = and i32 %5534, 8
  %5536 = icmp ne i32 %5535, 0
  %5537 = select i1 %5536, float %5527, float 1.000000e+00
  %5538 = fmul fast float %5537, %5523
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %1793, float %1794, float %1795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.dot3.f32(i32 55, float %5151, float %5152, float %5153, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5541 = call float @dx.op.dot3.f32(i32 55, float %1793, float %1794, float %1795, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5542 = fmul fast float %5539, %5539
  %5543 = fsub fast float %5190, %5542
  %5544 = fmul fast float %5541, %5539
  %5545 = fsub fast float %5544, %5540
  %5546 = fdiv fast float %5545, %5543
  %5547 = call float @dx.op.binary.f32(i32 35, float %5546, float -1.500000e+00)  ; FMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 36, float %5547, float 1.500000e+00)  ; FMin(a,b)
  %5549 = fmul fast float %5548, %5548
  %5550 = fmul fast float %5549, 0x3FC2F68380000000
  %5551 = fmul fast float %5550, %5548
  %5552 = fsub fast float %5548, %5551
  %5553 = fmul fast float %5552, %5151
  %5554 = fmul fast float %5552, %5152
  %5555 = fmul fast float %5552, %5153
  %5556 = fadd fast float %5553, %5201
  %5557 = fadd fast float %5554, %5202
  %5558 = fadd fast float %5555, %5203
  %5559 = fsub fast float %5556, %116
  %5560 = fsub fast float %5557, %117
  %5561 = fsub fast float %5558, %118
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %1793, float %1794, float %1795)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fmul fast float %5562, %1793
  %5564 = fmul fast float %5562, %1794
  %5565 = fmul fast float %5562, %1795
  %5566 = fsub fast float %5563, %5559
  %5567 = fsub fast float %5564, %5560
  %5568 = fsub fast float %5565, %5561
  %5569 = call float @dx.op.dot3.f32(i32 55, float %5566, float %5567, float %5568, float %5566, float %5567, float %5568)  ; Dot3(ax,ay,az,bx,by,bz)
  %5570 = bitcast float %5569 to i32
  %5571 = ashr i32 %5570, 1
  %5572 = sub nsw i32 1597463007, %5571
  %5573 = bitcast i32 %5572 to float
  %5574 = fmul fast float %5573, %5156
  %5575 = call float @dx.op.dot3.f32(i32 55, float %5559, float %5560, float %5561, float %5559, float %5560, float %5561)  ; Dot3(ax,ay,az,bx,by,bz)
  %5576 = bitcast float %5575 to i32
  %5577 = ashr i32 %5576, 1
  %5578 = sub nsw i32 1597463007, %5577
  %5579 = bitcast i32 %5578 to float
  %5580 = fmul fast float %5574, %5574
  %5581 = fadd fast float %5580, 1.250000e-01
  %5582 = call float @dx.op.unary.f32(i32 25, float %5581)  ; Rsqrt(value)
  %5583 = fmul fast float %5574, %5582
  %5584 = fmul fast float %5566, %5583
  %5585 = fmul fast float %5567, %5583
  %5586 = fmul fast float %5568, %5583
  %5587 = fadd fast float %5559, %5584
  %5588 = fadd fast float %5560, %5585
  %5589 = fadd fast float %5561, %5586
  %5590 = call float @dx.op.dot3.f32(i32 55, float %5587, float %5588, float %5589, float %5587, float %5588, float %5589)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.unary.f32(i32 25, float %5590)  ; Rsqrt(value)
  %5592 = fmul fast float %5587, %5591
  %5593 = fmul fast float %5588, %5591
  %5594 = fmul fast float %5589, %5591
  %5595 = fsub fast float %5592, %1629
  %5596 = fsub fast float %5593, %1630
  %5597 = fsub fast float %5594, %1631
  %5598 = call float @dx.op.dot3.f32(i32 55, float %5595, float %5596, float %5597, float %5595, float %5596, float %5597)  ; Dot3(ax,ay,az,bx,by,bz)
  %5599 = call float @dx.op.unary.f32(i32 25, float %5598)  ; Rsqrt(value)
  %5600 = fmul fast float %5595, %5599
  %5601 = fmul fast float %5596, %5599
  %5602 = fmul fast float %5597, %5599
  %5603 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float %5600, float %5601, float %5602)  ; Dot3(ax,ay,az,bx,by,bz)
  %5604 = fmul fast float %5603, %5603
  %5605 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5606 = fsub fast float 1.000000e+00, %1815
  %5607 = fmul fast float %1666, %1666
  %5608 = fmul fast float %5607, %5606
  %5609 = fadd fast float %5608, %1815
  %5610 = bitcast float %5609 to i32
  %5611 = ashr i32 %5610, 1
  %5612 = add nsw i32 %5611, 532487669
  %5613 = bitcast i32 %5612 to float
  %5614 = fadd fast float %5613, %1666
  %5615 = fmul fast float %1815, %5604
  %5616 = fsub fast float 1.000000e+00, %5604
  %5617 = fadd fast float %5616, %5615
  %5618 = fmul fast float %5605, %5605
  %5619 = fmul fast float %5618, %5606
  %5620 = fadd fast float %5619, %1815
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fadd fast float %5624, %5605
  %5626 = fmul fast float %5617, %5617
  %5627 = fmul fast float %5626, %5614
  %5628 = fmul fast float %5627, %5625
  %5629 = fdiv fast float 1.000000e+00, %5628
  %5630 = bitcast float %1815 to i32
  %5631 = sitofp i32 %5630 to float
  %5632 = fmul fast float %5631, 0x3FE7F73180000000
  %5633 = fadd fast float %5632, 0x41AFE27C40000000
  %5634 = fptosi float %5633 to i32
  %5635 = bitcast i32 %5634 to float
  %5636 = fmul fast float %5156, 0x3FD80E9D60000000
  %5637 = fmul fast float %5636, %5579
  %5638 = fadd fast float %5635, %5637
  %5639 = bitcast float %5638 to i32
  %5640 = sub nsw i32 2129859010, %5639
  %5641 = bitcast i32 %5640 to float
  %5642 = fmul fast float %1815, %5629
  %5643 = fmul fast float %5642, %5635
  %5644 = fmul fast float %5643, %5641
  %5645 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5646 = fsub fast float 1.000000e+00, %5645
  %5647 = bitcast float %5646 to i32
  %5648 = sitofp i32 %5647 to float
  %5649 = fmul fast float %5648, 5.000000e+00
  %5650 = fadd fast float %5649, 0xC1EFBF8940000000
  %5651 = fptosi float %5650 to i32
  %5652 = bitcast i32 %5651 to float
  %5653 = fmul fast float %5652, %1667
  %5654 = fmul fast float %5652, %1668
  %5655 = fmul fast float %5652, %2889
  %5656 = fadd fast float %5653, %1622
  %5657 = fadd fast float %5654, %1623
  %5658 = fadd fast float %5655, %1788
  %5659 = select i1 %2892, float %5645, float 0.000000e+00
  %5660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %5659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = fadd fast float %5661, -5.000000e-01
  %5665 = fadd fast float %5662, -5.000000e-01
  %5666 = fadd fast float %5663, -5.000000e-01
  %5667 = fmul fast float %1696, %5664
  %5668 = fmul fast float %1700, %5665
  %5669 = fmul fast float %2905, %5666
  %5670 = fadd fast float %5656, %5667
  %5671 = fadd fast float %5657, %5668
  %5672 = fadd fast float %5658, %5669
  %5673 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5674 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5676 = fmul fast float %5500, 9.843750e-01
  %5677 = fmul fast float %1745, 9.843750e-01
  %5678 = fadd fast float %5676, 7.812500e-03
  %5679 = fadd fast float %5677, 7.812500e-03
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %45, float %5678, float %5679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 3
  %5683 = select i1 %2892, float %5500, float 0.000000e+00
  %5684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %45, float %1677, float %5683, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5685 = extractvalue %dx.types.ResRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.ResRet.f32 %5684, 1
  %5687 = extractvalue %dx.types.ResRet.f32 %5684, 2
  %5688 = fadd fast float %5685, -5.000000e-01
  %5689 = fadd fast float %5686, -5.000000e-01
  %5690 = fadd fast float %5687, -5.000000e-01
  %5691 = fmul fast float %1667, 4.000000e+00
  %5692 = fmul fast float %5691, %1679
  %5693 = fmul fast float %5692, %5688
  %5694 = fmul fast float %1668, 4.000000e+00
  %5695 = fmul fast float %5694, %1679
  %5696 = fmul fast float %5695, %5689
  %5697 = fmul fast float %2889, 4.000000e+00
  %5698 = fmul fast float %5697, %1679
  %5699 = fmul fast float %5698, %5690
  %5700 = fadd fast float %5693, %5681
  %5701 = fmul fast float %5700, %1622
  %5702 = fadd fast float %5701, %5682
  %5703 = fadd fast float %5696, %5681
  %5704 = fmul fast float %5703, %1623
  %5705 = fadd fast float %5704, %5682
  %5706 = fadd fast float %5699, %5681
  %5707 = fmul fast float %5706, %1788
  %5708 = fadd fast float %5707, %5682
  %5709 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5710 = call float @dx.op.unary.f32(i32 7, float %5705)  ; Saturate(value)
  %5711 = call float @dx.op.unary.f32(i32 7, float %5708)  ; Saturate(value)
  %5712 = call float @dx.op.binary.f32(i32 35, float %5710, float %5711)  ; FMax(a,b)
  %5713 = call float @dx.op.binary.f32(i32 35, float %5709, float %5712)  ; FMax(a,b)
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = fmul fast float %5714, %5538
  %5716 = fmul fast float %5673, %5538
  %5717 = fmul fast float %5716, %5644
  %5718 = fmul fast float %5674, %5538
  %5719 = fmul fast float %5718, %5644
  %5720 = fmul fast float %5675, %5538
  %5721 = fmul fast float %5720, %5644
  %5722 = fmul fast float %5715, %5458
  %5723 = fmul fast float %5715, %5459
  %5724 = fmul fast float %5715, %5460
  %5725 = fadd fast float %5722, %5128
  %5726 = fadd fast float %5723, %5129
  %5727 = fadd fast float %5724, %5130
  %5728 = fmul fast float %5717, %5458
  %5729 = fmul fast float %5719, %5459
  %5730 = fmul fast float %5721, %5460
  %5731 = fadd fast float %5728, %5125
  %5732 = fadd fast float %5729, %5126
  %5733 = fadd fast float %5730, %5127
  %5734 = fadd fast float %5722, %5122
  %5735 = fadd fast float %5723, %5123
  %5736 = fadd fast float %5724, %5124
  %5737 = fadd fast float %5728, %5119
  %5738 = fadd fast float %5729, %5120
  %5739 = fadd fast float %5730, %5121
  %5740 = fadd fast float %5722, %5116
  %5741 = fadd fast float %5723, %5117
  %5742 = fadd fast float %5724, %5118
  %5743 = fadd fast float %5728, %5113
  %5744 = fadd fast float %5729, %5114
  %5745 = fadd fast float %5730, %5115
  br label %5746

; <label>:5746                                    ; preds = %5457, %5452
  %5747 = phi float [ %5113, %5452 ], [ %5743, %5457 ]
  %5748 = phi float [ %5114, %5452 ], [ %5744, %5457 ]
  %5749 = phi float [ %5115, %5452 ], [ %5745, %5457 ]
  %5750 = phi float [ %5116, %5452 ], [ %5740, %5457 ]
  %5751 = phi float [ %5117, %5452 ], [ %5741, %5457 ]
  %5752 = phi float [ %5118, %5452 ], [ %5742, %5457 ]
  %5753 = phi float [ %5119, %5452 ], [ %5737, %5457 ]
  %5754 = phi float [ %5120, %5452 ], [ %5738, %5457 ]
  %5755 = phi float [ %5121, %5452 ], [ %5739, %5457 ]
  %5756 = phi float [ %5122, %5452 ], [ %5734, %5457 ]
  %5757 = phi float [ %5123, %5452 ], [ %5735, %5457 ]
  %5758 = phi float [ %5124, %5452 ], [ %5736, %5457 ]
  %5759 = phi float [ %5125, %5452 ], [ %5731, %5457 ]
  %5760 = phi float [ %5126, %5452 ], [ %5732, %5457 ]
  %5761 = phi float [ %5127, %5452 ], [ %5733, %5457 ]
  %5762 = phi float [ %5128, %5452 ], [ %5725, %5457 ]
  %5763 = phi float [ %5129, %5452 ], [ %5726, %5457 ]
  %5764 = phi float [ %5130, %5452 ], [ %5727, %5457 ]
  %5765 = bitcast i32 %5103 to float
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 1
  %5768 = bitcast float %5767 to i32
  %5769 = and i32 %5768, 65535
  %5770 = icmp eq i32 %5769, 65535
  br i1 %5770, label %5771, label %5773

; <label>:5771                                    ; preds = %5746
  %5772 = call float @dx.op.binary.f32(i32 35, float %5765, float %5453)  ; FMax(a,b)
  br label %5776

; <label>:5773                                    ; preds = %5746
  %5774 = icmp eq i32 %5769, %5132
  %5775 = select i1 %5774, float %5453, float %5765
  br label %5776

; <label>:5776                                    ; preds = %5773, %5771
  %5777 = phi float [ %5772, %5771 ], [ %5775, %5773 ]
  %5778 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5779 = bitcast float %5778 to i32
  %5780 = lshr i32 %5779, 8
  %5781 = and i32 %5780, 255
  %5782 = uitofp i32 %5781 to float
  %5783 = fptoui float %5782 to i32
  %5784 = icmp eq i32 %5783, 15
  %5785 = bitcast float %5777 to i32
  %5786 = select i1 %5784, i32 %5785, i32 %5103
  %5787 = add i32 %5277, %5108
  %5788 = add i32 %5279, %5109
  %5789 = add i32 %5281, %5110
  %5790 = add i32 %5283, %5111
  br label %5288

; <label>:5791                                    ; preds = %5288
  br label %5792

; <label>:5792                                    ; preds = %5791, %5049
  %5793 = phi i32 [ %5050, %5049 ], [ %5289, %5791 ]
  %5794 = phi i32 [ %5051, %5049 ], [ %5278, %5791 ]
  %5795 = phi i32 [ %5052, %5049 ], [ %5280, %5791 ]
  %5796 = phi i32 [ %5053, %5049 ], [ %5282, %5791 ]
  %5797 = phi i32 [ %5054, %5049 ], [ %5284, %5791 ]
  %5798 = phi i32 [ %5055, %5049 ], [ %5290, %5791 ]
  %5799 = phi i32 [ %5056, %5049 ], [ %5291, %5791 ]
  %5800 = phi i32 [ %5057, %5049 ], [ %5292, %5791 ]
  %5801 = phi i32 [ %5058, %5049 ], [ %5293, %5791 ]
  %5802 = phi float [ %5060, %5049 ], [ %5294, %5791 ]
  %5803 = phi float [ %5061, %5049 ], [ %5295, %5791 ]
  %5804 = phi float [ %5062, %5049 ], [ %5296, %5791 ]
  %5805 = phi float [ %5063, %5049 ], [ %5297, %5791 ]
  %5806 = phi float [ %5064, %5049 ], [ %5298, %5791 ]
  %5807 = phi float [ %5065, %5049 ], [ %5299, %5791 ]
  %5808 = phi float [ %5066, %5049 ], [ %5300, %5791 ]
  %5809 = phi float [ %5067, %5049 ], [ %5301, %5791 ]
  %5810 = phi float [ %5068, %5049 ], [ %5302, %5791 ]
  %5811 = phi float [ %5069, %5049 ], [ %5303, %5791 ]
  %5812 = phi float [ %5070, %5049 ], [ %5304, %5791 ]
  %5813 = phi float [ %5071, %5049 ], [ %5305, %5791 ]
  %5814 = phi float [ %5072, %5049 ], [ %5306, %5791 ]
  %5815 = phi float [ %5073, %5049 ], [ %5307, %5791 ]
  %5816 = phi float [ %5074, %5049 ], [ %5308, %5791 ]
  %5817 = phi float [ %5075, %5049 ], [ %5309, %5791 ]
  %5818 = phi float [ %5076, %5049 ], [ %5310, %5791 ]
  %5819 = phi float [ %5077, %5049 ], [ %5311, %5791 ]
  %5820 = add i32 %5059, 1
  %5821 = icmp ugt i32 %5820, %5046
  br i1 %5821, label %5822, label %5049

; <label>:5822                                    ; preds = %5792
  br label %5823

; <label>:5823                                    ; preds = %5822, %5027
  %5824 = phi i32 [ %5006, %5027 ], [ %5793, %5822 ]
  %5825 = phi i32 [ 0, %5027 ], [ %5794, %5822 ]
  %5826 = phi i32 [ 0, %5027 ], [ %5795, %5822 ]
  %5827 = phi i32 [ 0, %5027 ], [ %5796, %5822 ]
  %5828 = phi i32 [ 0, %5027 ], [ %5797, %5822 ]
  %5829 = phi i32 [ 0, %5027 ], [ %5798, %5822 ]
  %5830 = phi i32 [ 0, %5027 ], [ %5799, %5822 ]
  %5831 = phi i32 [ 0, %5027 ], [ %5800, %5822 ]
  %5832 = phi i32 [ 0, %5027 ], [ %5801, %5822 ]
  %5833 = phi float [ %5008, %5027 ], [ %5802, %5822 ]
  %5834 = phi float [ %5009, %5027 ], [ %5803, %5822 ]
  %5835 = phi float [ %5010, %5027 ], [ %5804, %5822 ]
  %5836 = phi float [ %5011, %5027 ], [ %5805, %5822 ]
  %5837 = phi float [ %5012, %5027 ], [ %5806, %5822 ]
  %5838 = phi float [ %5013, %5027 ], [ %5807, %5822 ]
  %5839 = phi float [ %5014, %5027 ], [ %5808, %5822 ]
  %5840 = phi float [ %5015, %5027 ], [ %5809, %5822 ]
  %5841 = phi float [ %5016, %5027 ], [ %5810, %5822 ]
  %5842 = phi float [ %5017, %5027 ], [ %5811, %5822 ]
  %5843 = phi float [ %5018, %5027 ], [ %5812, %5822 ]
  %5844 = phi float [ %5019, %5027 ], [ %5813, %5822 ]
  %5845 = phi float [ %5021, %5027 ], [ %5814, %5822 ]
  %5846 = phi float [ %5022, %5027 ], [ %5815, %5822 ]
  %5847 = phi float [ %5023, %5027 ], [ %5816, %5822 ]
  %5848 = phi float [ %5017, %5027 ], [ %5817, %5822 ]
  %5849 = phi float [ %5018, %5027 ], [ %5818, %5822 ]
  %5850 = phi float [ %5019, %5027 ], [ %5819, %5822 ]
  %5851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5852 = extractvalue %dx.types.CBufRet.f32 %5851, 1
  %5853 = bitcast float %5852 to i32
  %5854 = lshr i32 %5853, 24
  %5855 = uitofp i32 %5854 to float
  %5856 = fptoui float %5855 to i32
  %5857 = icmp eq i32 %5856, 1
  %5858 = select i1 %5857, i32 %5829, i32 %5825
  %5859 = uitofp i32 %5858 to float
  %5860 = fptoui float %5859 to i32
  %5861 = shl i32 %5860, 8
  %5862 = select i1 %5857, i32 %5830, i32 %5826
  %5863 = uitofp i32 %5862 to float
  %5864 = fptoui float %5863 to i32
  %5865 = shl i32 %5864, 16
  %5866 = and i32 %5861, 65280
  %5867 = or i32 %5866, %5007
  %5868 = select i1 %5857, i32 %5831, i32 %5827
  %5869 = uitofp i32 %5868 to float
  %5870 = fptoui float %5869 to i32
  %5871 = shl i32 %5870, 24
  %5872 = and i32 %5865, 16711680
  %5873 = or i32 %5867, %5872
  %5874 = or i32 %5873, %5871
  %5875 = select i1 %5857, i32 %5832, i32 %5828
  %5876 = uitofp i32 %5875 to float
  %5877 = fptoui float %5876 to i32
  %5878 = and i32 %5877, 255
  %5879 = and i32 %4641, -256
  %5880 = or i32 %5878, %5879
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = bitcast float %5882 to i32
  %5884 = lshr i32 %5883, 8
  %5885 = and i32 %5884, 255
  %5886 = uitofp i32 %5885 to float
  %5887 = fptoui float %5886 to i32
  %5888 = icmp eq i32 %5887, 12
  %5889 = select i1 %5888, i32 0, i32 %5824
  br label %5890

; <label>:5890                                    ; preds = %5823, %5005
  %5891 = phi i32 [ %4641, %5005 ], [ %5880, %5823 ]
  %5892 = phi i32 [ 0, %5005 ], [ %5874, %5823 ]
  %5893 = phi i32 [ %5006, %5005 ], [ %5889, %5823 ]
  %5894 = phi float [ %5008, %5005 ], [ %5833, %5823 ]
  %5895 = phi float [ %5009, %5005 ], [ %5834, %5823 ]
  %5896 = phi float [ %5010, %5005 ], [ %5835, %5823 ]
  %5897 = phi float [ %5011, %5005 ], [ %5836, %5823 ]
  %5898 = phi float [ %5012, %5005 ], [ %5837, %5823 ]
  %5899 = phi float [ %5013, %5005 ], [ %5838, %5823 ]
  %5900 = phi float [ %5014, %5005 ], [ %5839, %5823 ]
  %5901 = phi float [ %5015, %5005 ], [ %5840, %5823 ]
  %5902 = phi float [ %5016, %5005 ], [ %5841, %5823 ]
  %5903 = phi float [ %5017, %5005 ], [ %5842, %5823 ]
  %5904 = phi float [ %5018, %5005 ], [ %5843, %5823 ]
  %5905 = phi float [ %5019, %5005 ], [ %5844, %5823 ]
  %5906 = phi float [ %5021, %5005 ], [ %5845, %5823 ]
  %5907 = phi float [ %5022, %5005 ], [ %5846, %5823 ]
  %5908 = phi float [ %5023, %5005 ], [ %5847, %5823 ]
  %5909 = phi float [ %5017, %5005 ], [ %5848, %5823 ]
  %5910 = phi float [ %5018, %5005 ], [ %5849, %5823 ]
  %5911 = phi float [ %5019, %5005 ], [ %5850, %5823 ]
  br i1 %58, label %5912, label %6065

; <label>:5912                                    ; preds = %5890
  %5913 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.i32 %5913, 0
  %5915 = call i32 @dx.op.binary.i32(i32 40, i32 %160, i32 %5914)  ; UMin(a,b)
  %5916 = mul i32 %5915, 36
  %5917 = add i32 %5916, 4
  %5918 = add i32 %5917, %392
  %5919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5918, i32 undef)  ; BufferLoad(srv,index,wot)
  %5920 = extractvalue %dx.types.ResRet.i32 %5919, 0
  %5921 = and i32 %5920, 32767
  %5922 = mul nuw nsw i32 %5921, 928
  %5923 = add nuw nsw i32 %5922, 44
  %5924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5923, i32 undef)  ; BufferLoad(srv,index,wot)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 0
  %5926 = add nuw nsw i32 %5922, 48
  %5927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5926, i32 undef)  ; BufferLoad(srv,index,wot)
  %5928 = extractvalue %dx.types.ResRet.f32 %5927, 0
  %5929 = extractvalue %dx.types.ResRet.f32 %5927, 1
  %5930 = extractvalue %dx.types.ResRet.f32 %5927, 2
  %5931 = add nuw nsw i32 %5922, 60
  %5932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %5931, i32 undef)  ; BufferLoad(srv,index,wot)
  %5933 = extractvalue %dx.types.ResRet.f32 %5932, 0
  %5934 = extractvalue %dx.types.ResRet.f32 %5932, 1
  %5935 = extractvalue %dx.types.ResRet.f32 %5932, 2
  %5936 = fmul fast float %5928, 0x3F847AE140000000
  %5937 = fmul fast float %5929, 0x3F847AE140000000
  %5938 = fmul fast float %5930, 0x3F847AE140000000
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.CBufRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.CBufRet.f32 %5939, 2
  %5943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5944 = extractvalue %dx.types.CBufRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.CBufRet.f32 %5943, 1
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5940, float %5941, float %5942, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = select i1 %1787, float %5944, float %5940
  %5948 = select i1 %1787, float %5946, float %5941
  %5949 = select i1 %1787, float %5945, float %5942
  %5950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5951 = extractvalue %dx.types.CBufRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.CBufRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.CBufRet.f32 %5950, 2
  %5954 = fadd fast float %5933, %5928
  %5955 = fmul fast float %5954, 0x3F847AE140000000
  %5956 = fadd fast float %5934, %5929
  %5957 = fmul fast float %5956, 0x3F847AE140000000
  %5958 = fadd fast float %5935, %5930
  %5959 = fmul fast float %5958, 0x3F847AE140000000
  %5960 = call float @dx.op.dot3.f32(i32 55, float %5951, float %5952, float %5953, float %1629, float %1630, float %1631)  ; Dot3(ax,ay,az,bx,by,bz)
  %5961 = fcmp fast ogt float %5925, 0.000000e+00
  %5962 = select i1 %5961, float 1.000000e+00, float -1.000000e+00
  %5963 = fmul fast float %5962, 5.000000e-01
  %5964 = fmul fast float %5963, %5960
  %5965 = fmul fast float %5962, %5925
  %5966 = fadd fast float %5964, 4.921875e-01
  %5967 = fadd fast float %5965, -3.125000e-02
  %5968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %45, float %5966, float 0x3FB25F3060000000, float %5967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 0
  %5972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.f32 %5972, 0
  %5974 = fmul fast float %5973, %5971
  %5975 = extractvalue %dx.types.CBufRet.f32 %5972, 1
  %5976 = fadd fast float %5974, %5975
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = fmul fast float %5978, %5020
  %5980 = extractvalue %dx.types.CBufRet.f32 %5977, 1
  %5981 = fadd fast float %5979, %5980
  %5982 = call float @dx.op.unary.f32(i32 7, float %5981)  ; Saturate(value)
  %5983 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5984 = extractvalue %dx.types.CBufRet.f32 %5972, 2
  %5985 = fmul fast float %5984, %5983
  %5986 = extractvalue %dx.types.CBufRet.f32 %5972, 3
  %5987 = fadd fast float %5985, %5986
  %5988 = fmul fast float %5969, 0x400921FB60000000
  %5989 = fmul fast float %5988, %5976
  %5990 = fmul fast float %5989, %5982
  %5991 = call float @dx.op.binary.f32(i32 35, float %5955, float 0x3F10000000000000)  ; FMax(a,b)
  %5992 = call float @dx.op.binary.f32(i32 35, float %5957, float 0x3F10000000000000)  ; FMax(a,b)
  %5993 = call float @dx.op.binary.f32(i32 35, float %5959, float 0x3F10000000000000)  ; FMax(a,b)
  %5994 = fdiv fast float 1.000000e+00, %5991
  %5995 = fdiv fast float 1.000000e+00, %5992
  %5996 = fdiv fast float 1.000000e+00, %5993
  %5997 = fmul fast float %5954, 0xBF8D8BE060000000
  %5998 = fmul fast float %5956, 0xBF8D8BE060000000
  %5999 = fmul fast float %5958, 0xBF8D8BE060000000
  %6000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6001 = extractvalue %dx.types.CBufRet.f32 %6000, 3
  %6002 = call float @dx.op.dot3.f32(i32 55, float %5994, float %5995, float %5996, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = fmul fast float %6001, %6002
  %6004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6005 = extractvalue %dx.types.CBufRet.f32 %6004, 3
  %6006 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6005)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1662, float %1663, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = fdiv fast float 1.000000e+00, %6007
  %6009 = fmul fast float %6008, %6006
  %6010 = fcmp ogt float %1631, -0.000000e+00
  %6011 = select i1 %6010, float %6005, float %6009
  %6012 = call float @dx.op.binary.f32(i32 36, float %6011, float %6003)  ; FMin(a,b)
  %6013 = extractvalue %dx.types.CBufRet.f32 %6004, 0
  %6014 = fmul fast float %6013, %6012
  %6015 = fmul fast float %6014, %5997
  %6016 = fmul fast float %6014, %5998
  %6017 = fmul fast float %6014, %5999
  %6018 = call float @dx.op.unary.f32(i32 21, float %6015)  ; Exp(value)
  %6019 = call float @dx.op.unary.f32(i32 21, float %6016)  ; Exp(value)
  %6020 = call float @dx.op.unary.f32(i32 21, float %6017)  ; Exp(value)
  %6021 = fmul fast float %5990, %5947
  %6022 = fmul fast float %6021, %6018
  %6023 = fmul fast float %5990, %5948
  %6024 = fmul fast float %6023, %6019
  %6025 = fmul fast float %5990, %5949
  %6026 = fmul fast float %6025, %6020
  %6027 = extractvalue %dx.types.CBufRet.f32 %6004, 1
  %6028 = fmul fast float %6027, %6012
  %6029 = fmul fast float %6028, %5997
  %6030 = fmul fast float %6028, %5998
  %6031 = fmul fast float %6028, %5999
  %6032 = call float @dx.op.unary.f32(i32 21, float %6029)  ; Exp(value)
  %6033 = call float @dx.op.unary.f32(i32 21, float %6030)  ; Exp(value)
  %6034 = call float @dx.op.unary.f32(i32 21, float %6031)  ; Exp(value)
  %6035 = fmul fast float %5987, %2853
  %6036 = fmul fast float %6035, %6032
  %6037 = fmul fast float %5987, %2854
  %6038 = fmul fast float %6037, %6033
  %6039 = fmul fast float %5987, %2855
  %6040 = fmul fast float %6039, %6034
  %6041 = fadd fast float %6036, %6022
  %6042 = fmul fast float %5936, %6041
  %6043 = fadd fast float %6038, %6024
  %6044 = fmul fast float %5937, %6043
  %6045 = fadd fast float %6040, %6026
  %6046 = fmul fast float %5938, %6045
  %6047 = fmul fast float %6011, %5997
  %6048 = fmul fast float %6011, %5998
  %6049 = fmul fast float %6011, %5999
  %6050 = call float @dx.op.unary.f32(i32 21, float %6047)  ; Exp(value)
  %6051 = call float @dx.op.unary.f32(i32 21, float %6048)  ; Exp(value)
  %6052 = call float @dx.op.unary.f32(i32 21, float %6049)  ; Exp(value)
  %6053 = call float @dx.op.unary.f32(i32 7, float %6050)  ; Saturate(value)
  %6054 = call float @dx.op.unary.f32(i32 7, float %6051)  ; Saturate(value)
  %6055 = call float @dx.op.unary.f32(i32 7, float %6052)  ; Saturate(value)
  %6056 = fmul fast float %6053, %6042
  %6057 = fmul fast float %6054, %6044
  %6058 = fmul fast float %6055, %6046
  %6059 = fsub fast float %6042, %6056
  %6060 = fsub fast float %6044, %6057
  %6061 = fsub fast float %6046, %6058
  %6062 = fmul fast float %6059, %5994
  %6063 = fmul fast float %6060, %5995
  %6064 = fmul fast float %6061, %5996
  br label %6065

; <label>:6065                                    ; preds = %5912, %5890
  %6066 = phi float [ 0.000000e+00, %5890 ], [ %6062, %5912 ]
  %6067 = phi float [ 0.000000e+00, %5890 ], [ %6063, %5912 ]
  %6068 = phi float [ 0.000000e+00, %5890 ], [ %6064, %5912 ]
  %6069 = fmul fast float %6066, %2915
  %6070 = fmul fast float %6067, %2915
  %6071 = fmul fast float %6068, %2915
  %6072 = fadd fast float %6069, %5906
  %6073 = fadd fast float %6070, %5907
  %6074 = fadd fast float %6071, %5908
  %6075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6076 = extractvalue %dx.types.CBufRet.f32 %6075, 0
  %6077 = bitcast float %6076 to i32
  %6078 = and i32 %6077, 255
  %6079 = uitofp i32 %6078 to float
  %6080 = fptoui float %6079 to i32
  %6081 = icmp eq i32 %6080, 13
  br i1 %6081, label %6082, label %6102

; <label>:6082                                    ; preds = %6065
  %6083 = fadd fast float %1090, 2.000000e+00
  %6084 = fadd fast float %1092, 1.000000e+00
  %6085 = fsub fast float 1.000000e+00, %1093
  %6086 = fmul fast float %6083, 5.000000e-01
  %6087 = fmul fast float %6084, 5.000000e-01
  %6088 = fmul fast float %6085, 5.000000e-01
  %6089 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6090 = call float @dx.op.unary.f32(i32 7, float %6087)  ; Saturate(value)
  %6091 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6092 = fmul fast float %6089, 1.023000e+03
  %6093 = fmul fast float %6090, 1.023000e+03
  %6094 = fmul fast float %6091, 1.023000e+03
  %6095 = fptoui float %6092 to i32
  %6096 = fptoui float %6093 to i32
  %6097 = fptoui float %6094 to i32
  %6098 = shl i32 %6096, 10
  %6099 = or i32 %6098, %6095
  %6100 = shl i32 %6097, 20
  %6101 = or i32 %6099, %6100
  br label %6102

; <label>:6102                                    ; preds = %6082, %6065
  %6103 = phi i32 [ %6101, %6082 ], [ %5893, %6065 ]
  %6104 = icmp eq i32 %6080, 14
  br i1 %6104, label %6105, label %6125

; <label>:6105                                    ; preds = %6102
  %6106 = fadd fast float %1087, 1.000000e+00
  %6107 = fadd fast float %1097, 1.000000e+00
  %6108 = fsub fast float 1.000000e+00, %80
  %6109 = fmul fast float %6106, 5.000000e-01
  %6110 = fmul fast float %6107, 5.000000e-01
  %6111 = fmul fast float %6108, 5.000000e-01
  %6112 = call float @dx.op.unary.f32(i32 7, float %6109)  ; Saturate(value)
  %6113 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6114 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6115 = fmul fast float %6112, 1.023000e+03
  %6116 = fmul fast float %6113, 1.023000e+03
  %6117 = fmul fast float %6114, 1.023000e+03
  %6118 = fptoui float %6115 to i32
  %6119 = fptoui float %6116 to i32
  %6120 = fptoui float %6117 to i32
  %6121 = shl i32 %6119, 10
  %6122 = or i32 %6121, %6118
  %6123 = shl i32 %6120, 20
  %6124 = or i32 %6122, %6123
  br label %6125

; <label>:6125                                    ; preds = %6105, %6102
  %6126 = phi i32 [ %6124, %6105 ], [ %6103, %6102 ]
  %6127 = icmp eq i32 %6080, 15
  br i1 %6127, label %6128, label %6148

; <label>:6128                                    ; preds = %6125
  %6129 = fadd fast float %78, 1.000000e+00
  %6130 = fadd fast float %80, 1.000000e+00
  %6131 = fadd fast float %82, 1.000000e+00
  %6132 = fmul fast float %6129, 5.000000e-01
  %6133 = fmul fast float %6130, 5.000000e-01
  %6134 = fmul fast float %6131, 5.000000e-01
  %6135 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6136 = call float @dx.op.unary.f32(i32 7, float %6133)  ; Saturate(value)
  %6137 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6138 = fmul fast float %6135, 1.023000e+03
  %6139 = fmul fast float %6136, 1.023000e+03
  %6140 = fmul fast float %6137, 1.023000e+03
  %6141 = fptoui float %6138 to i32
  %6142 = fptoui float %6139 to i32
  %6143 = fptoui float %6140 to i32
  %6144 = shl i32 %6142, 10
  %6145 = or i32 %6144, %6141
  %6146 = shl i32 %6143, 20
  %6147 = or i32 %6145, %6146
  br label %6148

; <label>:6148                                    ; preds = %6128, %6125
  %6149 = phi i32 [ %6147, %6128 ], [ %6126, %6125 ]
  %6150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6151 = fadd fast float %5911, %1763
  %6152 = icmp eq i32 %6080, 39
  %6153 = icmp eq i32 %6080, 40
  %6154 = select i1 %6153, float %1761, float 0.000000e+00
  %6155 = select i1 %6152, float %6151, float %6154
  %6156 = call float @dx.op.unary.f32(i32 24, float %1613)  ; Sqrt(value)
  %6157 = call float @dx.op.unary.f32(i32 24, float %1614)  ; Sqrt(value)
  %6158 = call float @dx.op.unary.f32(i32 24, float %1615)  ; Sqrt(value)
  %6159 = fmul fast float %6156, %5909
  %6160 = fmul fast float %6157, %5910
  %6161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6162 = extractvalue %dx.types.CBufRet.f32 %6161, 0
  br i1 %1787, label %6163, label %6187

; <label>:6163                                    ; preds = %6148
  %6164 = extractvalue %dx.types.CBufRet.f32 %6150, 3
  %6165 = fmul fast float %1603, 2.000000e+00
  %6166 = fmul fast float %6165, %1640
  %6167 = fsub fast float %1631, %6166
  %6168 = call float @dx.op.unary.f32(i32 7, float %6167)  ; Saturate(value)
  %6169 = fsub fast float 1.000000e+00, %6168
  %6170 = fmul fast float %6164, %6169
  %6171 = fsub fast float 1.000000e+00, %1761
  %6172 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6173 = fmul fast float %6170, %6172
  %6174 = fmul fast float %6151, %1761
  %6175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6176 = extractvalue %dx.types.CBufRet.f32 %6175, 0
  %6177 = fsub fast float 1.000000e+00, %1666
  %6178 = fmul fast float %6176, %6177
  %6179 = fadd fast float %6160, %6159
  %6180 = extractvalue %dx.types.CBufRet.f32 %6150, 1
  %6181 = fsub fast float %6174, %6178
  %6182 = fadd fast float %6181, %6173
  %6183 = fsub fast float %6182, %6180
  %6184 = extractvalue %dx.types.CBufRet.f32 %6150, 2
  %6185 = fmul fast float %6183, %6184
  %6186 = call float @dx.op.unary.f32(i32 7, float %6185)  ; Saturate(value)
  br label %6191

; <label>:6187                                    ; preds = %6148
  %6188 = fmul fast float %6158, %5911
  %6189 = fmul fast float %6162, %6160
  %6190 = fmul fast float %6188, %6162
  br label %6191

; <label>:6191                                    ; preds = %6187, %6163
  %6192 = phi float [ %6179, %6163 ], [ %6159, %6187 ]
  %6193 = phi float [ %6186, %6163 ], [ %6189, %6187 ]
  %6194 = phi float [ 1.000000e+00, %6163 ], [ %6190, %6187 ]
  %6195 = fmul float %6162, %6192
  %6196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6197 = extractvalue %dx.types.CBufRet.f32 %6196, 0
  %6198 = fmul fast float %6197, %6073
  %6199 = fmul fast float %6197, %6074
  %6200 = fadd fast float %6073, %6072
  %6201 = select i1 %1787, float %6200, float %6072
  %6202 = fmul float %6201, %6197
  %6203 = select i1 %1787, float 0.000000e+00, float %6198
  %6204 = select i1 %1787, float 0.000000e+00, float %6199
  switch i32 %6080, label %6504 [
    i32 0, label %6519
    i32 1, label %6205
    i32 2, label %6206
    i32 3, label %6218
    i32 4, label %6227
    i32 5, label %6228
    i32 6, label %6229
    i32 12, label %6230
    i32 13, label %6231
    i32 14, label %6243
    i32 15, label %6255
    i32 16, label %6267
    i32 17, label %6268
    i32 63, label %6503
    i32 18, label %6269
    i32 25, label %6291
    i32 27, label %6292
    i32 28, label %6293
    i32 29, label %6294
    i32 31, label %6295
    i32 32, label %6318
    i32 33, label %6379
    i32 37, label %6397
    i32 38, label %6398
    i32 39, label %6407
    i32 40, label %6430
    i32 41, label %6434
    i32 52, label %6435
    i32 53, label %6436
    i32 54, label %6437
    i32 55, label %6438
    i32 56, label %6439
    i32 57, label %6441
    i32 58, label %6443
    i32 59, label %6481
    i32 60, label %6483
    i32 61, label %6485
    i32 64, label %6487
    i32 62, label %6502
  ]

; <label>:6205                                    ; preds = %6191
  br label %6504

; <label>:6206                                    ; preds = %6191
  %6207 = call float @dx.op.dot3.f32(i32 55, float %1601, float %1602, float %1603, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = call float @dx.op.unary.f32(i32 25, float %6207)  ; Rsqrt(value)
  %6209 = fmul fast float %1601, 5.000000e-01
  %6210 = fmul fast float %6209, %6208
  %6211 = fmul fast float %1602, 5.000000e-01
  %6212 = fmul fast float %6211, %6208
  %6213 = fmul fast float %1603, 5.000000e-01
  %6214 = fmul fast float %6213, %6208
  %6215 = fadd fast float %6210, 5.000000e-01
  %6216 = fadd fast float %6212, 5.000000e-01
  %6217 = fadd fast float %6214, 5.000000e-01
  br label %6504

; <label>:6218                                    ; preds = %6191
  %6219 = fcmp fast ole float %1745, 0x3FA4B5DCC0000000
  %6220 = fmul fast float %1745, 0x3FB3D07220000000
  %6221 = fadd fast float %1745, 0x3FAC28F5C0000000
  %6222 = fmul fast float %6221, 0x3FEE54EDE0000000
  %6223 = call float @dx.op.unary.f32(i32 23, float %6222)  ; Log(value)
  %6224 = fmul fast float %6223, 0x4003333340000000
  %6225 = call float @dx.op.unary.f32(i32 21, float %6224)  ; Exp(value)
  %6226 = select i1 %6219, float %6220, float %6225
  br label %6504

; <label>:6227                                    ; preds = %6191
  br label %6504

; <label>:6228                                    ; preds = %6191
  br label %6504

; <label>:6229                                    ; preds = %6191
  br label %6504

; <label>:6230                                    ; preds = %6191
  br label %6504

; <label>:6231                                    ; preds = %6191
  %6232 = and i32 %6149, 1023
  %6233 = uitofp i32 %6232 to float
  %6234 = lshr i32 %6149, 10
  %6235 = and i32 %6234, 1023
  %6236 = uitofp i32 %6235 to float
  %6237 = lshr i32 %6149, 20
  %6238 = and i32 %6237, 1023
  %6239 = uitofp i32 %6238 to float
  %6240 = fmul fast float %6233, 0x3F50040100000000
  %6241 = fmul fast float %6236, 0x3F50040100000000
  %6242 = fmul fast float %6239, 0x3F50040100000000
  br label %6504

; <label>:6243                                    ; preds = %6191
  %6244 = and i32 %6149, 1023
  %6245 = uitofp i32 %6244 to float
  %6246 = lshr i32 %6149, 10
  %6247 = and i32 %6246, 1023
  %6248 = uitofp i32 %6247 to float
  %6249 = lshr i32 %6149, 20
  %6250 = and i32 %6249, 1023
  %6251 = uitofp i32 %6250 to float
  %6252 = fmul fast float %6245, 0x3F50040100000000
  %6253 = fmul fast float %6248, 0x3F50040100000000
  %6254 = fmul fast float %6251, 0x3F50040100000000
  br label %6504

; <label>:6255                                    ; preds = %6191
  %6256 = and i32 %6149, 1023
  %6257 = uitofp i32 %6256 to float
  %6258 = lshr i32 %6149, 10
  %6259 = and i32 %6258, 1023
  %6260 = uitofp i32 %6259 to float
  %6261 = lshr i32 %6149, 20
  %6262 = and i32 %6261, 1023
  %6263 = uitofp i32 %6262 to float
  %6264 = fmul fast float %6257, 0x3F50040100000000
  %6265 = fmul fast float %6260, 0x3F50040100000000
  %6266 = fmul fast float %6263, 0x3F50040100000000
  br label %6504

; <label>:6267                                    ; preds = %6191
  br label %6504

; <label>:6268                                    ; preds = %6191
  br label %6504

; <label>:6269                                    ; preds = %6191
  %6270 = fcmp fast ogt float %1622, 0x3FB99999A0000000
  %6271 = fcmp fast ogt float %1623, 0x3FB99999A0000000
  %6272 = or i1 %6270, %6271
  %6273 = fcmp fast ogt float %1624, 0x3FB99999A0000000
  %6274 = or i1 %6272, %6273
  %6275 = fcmp fast olt float %1622, 0x3FB99999A0000000
  %6276 = fcmp fast olt float %1623, 0x3FB99999A0000000
  %6277 = or i1 %6275, %6276
  %6278 = fcmp fast olt float %1624, 0x3FB99999A0000000
  %6279 = or i1 %6277, %6278
  %6280 = fadd fast float %1622, %1613
  %6281 = fcmp fast ogt float %6280, 1.000000e+00
  %6282 = fadd fast float %1623, %1614
  %6283 = fcmp fast ogt float %6282, 1.000000e+00
  %6284 = or i1 %6281, %6283
  %6285 = fadd fast float %1624, %1615
  %6286 = fcmp fast ogt float %6285, 1.000000e+00
  %6287 = or i1 %6284, %6286
  %6288 = select i1 %6287, float 1.000000e+00, float 0.000000e+00
  %6289 = and i1 %6274, %6279
  %6290 = select i1 %6289, float 1.000000e+00, float 0.000000e+00
  br label %6504

; <label>:6291                                    ; preds = %6191
  br label %6504

; <label>:6292                                    ; preds = %6191
  br label %6504

; <label>:6293                                    ; preds = %6191
  br label %6504

; <label>:6294                                    ; preds = %6191
  br label %6504

; <label>:6295                                    ; preds = %6191
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.CBufRet.f32 %6296, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6296, 3
  %6300 = fcmp fast olt float %1745, %6297
  br i1 %6300, label %6301, label %6315

; <label>:6301                                    ; preds = %8191, %8189, %6315, %6295
  %6302 = phi i32 [ 0, %6295 ], [ 1, %6315 ], [ 2, %8189 ], [ 3, %8191 ]
  %6303 = mul i32 %6302, 3
  %6304 = add i32 0, %6303
  %6305 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6304
  %6306 = load float, float* %6305, align 4
  %6307 = mul i32 %6302, 3
  %6308 = add i32 1, %6307
  %6309 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6308
  %6310 = load float, float* %6309, align 4
  %6311 = mul i32 %6302, 3
  %6312 = add i32 2, %6311
  %6313 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6312
  %6314 = load float, float* %6313, align 4
  br label %6504

; <label>:6315                                    ; preds = %6295
  %6316 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6317 = fcmp fast olt float %1745, %6316
  br i1 %6317, label %6301, label %8189

; <label>:6318                                    ; preds = %6191
  %6319 = fcmp fast ole float %1613, 0x3F69A5C380000000
  %6320 = fcmp fast ole float %1614, 0x3F69A5C380000000
  %6321 = fcmp fast ole float %1615, 0x3F69A5C380000000
  %6322 = fmul fast float %1613, 0x4029D70A40000000
  %6323 = fmul fast float %1614, 0x4029D70A40000000
  %6324 = fmul fast float %1615, 0x4029D70A40000000
  %6325 = call float @dx.op.unary.f32(i32 23, float %1613)  ; Log(value)
  %6326 = call float @dx.op.unary.f32(i32 23, float %1614)  ; Log(value)
  %6327 = call float @dx.op.unary.f32(i32 23, float %1615)  ; Log(value)
  %6328 = fmul fast float %6325, 0x3FDAAAAAA0000000
  %6329 = fmul fast float %6326, 0x3FDAAAAAA0000000
  %6330 = fmul fast float %6327, 0x3FDAAAAAA0000000
  %6331 = call float @dx.op.unary.f32(i32 21, float %6328)  ; Exp(value)
  %6332 = call float @dx.op.unary.f32(i32 21, float %6329)  ; Exp(value)
  %6333 = call float @dx.op.unary.f32(i32 21, float %6330)  ; Exp(value)
  %6334 = fmul fast float %6331, 0x3FF0E147A0000000
  %6335 = fmul fast float %6332, 0x3FF0E147A0000000
  %6336 = fmul fast float %6333, 0x3FF0E147A0000000
  %6337 = fadd fast float %6334, 0xBFAC28F5C0000000
  %6338 = fadd fast float %6335, 0xBFAC28F5C0000000
  %6339 = fadd fast float %6336, 0xBFAC28F5C0000000
  %6340 = select i1 %6319, float %6322, float %6337
  %6341 = select i1 %6320, float %6323, float %6338
  %6342 = select i1 %6321, float %6324, float %6339
  %6343 = call float @dx.op.dot3.f32(i32 55, float %6340, float %6341, float %6342, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6344 = fcmp fast olt float %6343, 0x3FA0101020000000
  br i1 %6344, label %6353, label %6345

; <label>:6345                                    ; preds = %6318
  %6346 = fcmp fast ogt float %6343, 0x3FEEFEFF00000000
  br i1 %6346, label %6353, label %6347

; <label>:6347                                    ; preds = %6345
  %6348 = fcmp fast ogt float %6343, 0x3FEF5F5F60000000
  br i1 %6348, label %6353, label %6349

; <label>:6349                                    ; preds = %6347
  %6350 = fadd fast float %6343, %6343
  %6351 = fcmp fast ogt float %6350, 2.550000e+02
  br i1 %6351, label %6352, label %6353

; <label>:6352                                    ; preds = %6349
  br label %6353

; <label>:6353                                    ; preds = %6352, %6349, %6347, %6345, %6318
  %6354 = phi float [ 1.000000e+00, %6352 ], [ %6195, %6349 ], [ 1.000000e+00, %6318 ], [ 0x3FBD1D1D20000000, %6345 ], [ 0.000000e+00, %6347 ]
  %6355 = phi float [ 0.000000e+00, %6352 ], [ %6193, %6349 ], [ 0x3FE6666660000000, %6318 ], [ 1.000000e+00, %6345 ], [ 0.000000e+00, %6347 ]
  %6356 = phi float [ 1.000000e+00, %6352 ], [ %6194, %6349 ], [ 0.000000e+00, %6318 ], [ 0x3FDD5D5D60000000, %6345 ], [ 1.000000e+00, %6347 ]
  %6357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6358 = extractvalue %dx.types.CBufRet.f32 %6357, 3
  %6359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6360 = extractvalue %dx.types.CBufRet.f32 %6359, 3
  %6361 = fmul fast float %6360, 8.000000e+00
  %6362 = fmul fast float %73, 5.000000e+02
  %6363 = fmul fast float %6362, %6358
  %6364 = fsub fast float %6363, %6361
  %6365 = call float @dx.op.unary.f32(i32 13, float %6364)  ; Sin(value)
  %6366 = fmul fast float %6365, %6365
  %6367 = fmul fast float %6366, 2.000000e+00
  %6368 = fadd fast float %6367, -1.000000e+00
  %6369 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6370 = fsub fast float %6354, %6195
  %6371 = fsub fast float %6355, %6193
  %6372 = fsub fast float %6356, %6194
  %6373 = fmul fast float %6369, %6370
  %6374 = fmul fast float %6369, %6371
  %6375 = fmul fast float %6369, %6372
  %6376 = fadd fast float %6373, %6195
  %6377 = fadd fast float %6374, %6193
  %6378 = fadd fast float %6375, %6194
  br label %6504

; <label>:6379                                    ; preds = %6191
  %6380 = fcmp fast olt float %69, 1.280000e+02
  br i1 %6380, label %6381, label %6395

; <label>:6381                                    ; preds = %8207, %8205, %8203, %8201, %8199, %8197, %8195, %8193, %6395, %6379
  %6382 = phi i32 [ 0, %6379 ], [ 1, %6395 ], [ 2, %8193 ], [ 3, %8195 ], [ 4, %8197 ], [ 5, %8199 ], [ 6, %8201 ], [ 7, %8203 ], [ 8, %8205 ], [ 9, %8207 ]
  %6383 = mul i32 %6382, 3
  %6384 = add i32 0, %6383
  %6385 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6384
  %6386 = load float, float* %6385, align 4
  %6387 = mul i32 %6382, 3
  %6388 = add i32 1, %6387
  %6389 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6388
  %6390 = load float, float* %6389, align 4
  %6391 = mul i32 %6382, 3
  %6392 = add i32 2, %6391
  %6393 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6392
  %6394 = load float, float* %6393, align 4
  br label %6504

; <label>:6395                                    ; preds = %6379
  %6396 = fcmp fast olt float %69, 2.560000e+02
  br i1 %6396, label %6381, label %8193

; <label>:6397                                    ; preds = %6191
  br label %6504

; <label>:6398                                    ; preds = %6191
  %6399 = bitcast i32 %6149 to float
  %6400 = fcmp fast ogt float %6399, 0.000000e+00
  %6401 = select i1 %6400, float 0.000000e+00, float 1.000000e+00
  %6402 = fcmp fast olt float %6399, 1.000000e+00
  %6403 = select i1 %6402, float 1.000000e+00, float 0.000000e+00
  %6404 = select i1 %6402, float %6401, float 0.000000e+00
  %6405 = fmul fast float %6403, %1745
  %6406 = fmul fast float %6404, %1745
  br label %6504

; <label>:6407                                    ; preds = %6191
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6412 = fcmp fast olt float %6155, %6409
  br i1 %6412, label %6413, label %6427

; <label>:6413                                    ; preds = %8211, %8209, %6427, %6407
  %6414 = phi i32 [ 0, %6407 ], [ 1, %6427 ], [ 2, %8209 ], [ 3, %8211 ]
  %6415 = mul i32 %6414, 3
  %6416 = add i32 0, %6415
  %6417 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6416
  %6418 = load float, float* %6417, align 4
  %6419 = mul i32 %6414, 3
  %6420 = add i32 1, %6419
  %6421 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6420
  %6422 = load float, float* %6421, align 4
  %6423 = mul i32 %6414, 3
  %6424 = add i32 2, %6423
  %6425 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6424
  %6426 = load float, float* %6425, align 4
  br label %6504

; <label>:6427                                    ; preds = %6407
  %6428 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6429 = fcmp fast olt float %6155, %6428
  br i1 %6429, label %6413, label %8209

; <label>:6430                                    ; preds = %6191
  %6431 = fadd fast float %6155, -5.000000e-01
  %6432 = fmul fast float %6431, 2.000000e+00
  %6433 = call float @dx.op.unary.f32(i32 7, float %6432)  ; Saturate(value)
  br label %6504

; <label>:6434                                    ; preds = %6191
  br label %6504

; <label>:6435                                    ; preds = %6191
  br label %6504

; <label>:6436                                    ; preds = %6191
  br label %6504

; <label>:6437                                    ; preds = %6191
  br label %6504

; <label>:6438                                    ; preds = %6191
  br label %6504

; <label>:6439                                    ; preds = %6191
  %6440 = bitcast i32 %6149 to float
  br label %6504

; <label>:6441                                    ; preds = %6191
  %6442 = bitcast i32 %6149 to float
  br label %6504

; <label>:6443                                    ; preds = %6191
  %6444 = and i32 %6149, 65535
  %6445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6444)  ; LegacyF16ToF32(value)
  %6446 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6447 = fptosi float %6446 to i32
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  %6450 = extractvalue %dx.types.CBufRet.f32 %6448, 1
  %6451 = extractvalue %dx.types.CBufRet.f32 %6448, 2
  %6452 = fadd fast float %6449, %116
  %6453 = fadd fast float %6450, %117
  %6454 = fadd fast float %6451, %118
  %6455 = fptosi float %6452 to i32
  %6456 = fptosi float %6453 to i32
  %6457 = fptosi float %6454 to i32
  %6458 = xor i32 %6455, %6456
  %6459 = lshr i32 %6458, 1
  %6460 = and i32 %6459, 1
  %6461 = lshr i32 %6457, 1
  %6462 = and i32 %6461, 1
  %6463 = xor i32 %6462, 1
  %6464 = icmp ne i32 %6460, %6463
  switch i32 %6447, label %6504 [
    i32 -1, label %6465
    i32 -2, label %6466
    i32 -3, label %6468
    i32 -4, label %6470
    i32 -5, label %6472
    i32 -6, label %6473
    i32 -7, label %6474
  ]

; <label>:6465                                    ; preds = %6443
  br label %6504

; <label>:6466                                    ; preds = %6443
  %6467 = select i1 %6464, float 1.000000e+00, float 0.000000e+00
  br label %6504

; <label>:6468                                    ; preds = %6443
  %6469 = select i1 %6464, float 1.000000e+00, float 0.000000e+00
  br label %6504

; <label>:6470                                    ; preds = %6443
  %6471 = select i1 %6464, float 1.000000e+00, float 0.000000e+00
  br label %6504

; <label>:6472                                    ; preds = %6443
  br label %6504

; <label>:6473                                    ; preds = %6443
  br label %6504

; <label>:6474                                    ; preds = %6443
  %6475 = lshr i32 %6149, 16
  %6476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6475)  ; LegacyF16ToF32(value)
  %6477 = fmul fast float %6476, 0x3FD5555560000000
  %6478 = fsub fast float 1.000000e+00, %6477
  %6479 = fmul fast float %6477, %6445
  %6480 = fmul fast float %6478, %6445
  br label %6504

; <label>:6481                                    ; preds = %6191
  %6482 = bitcast i32 %6149 to float
  br label %6504

; <label>:6483                                    ; preds = %6191
  %6484 = bitcast i32 %6149 to float
  br label %6504

; <label>:6485                                    ; preds = %6191
  %6486 = bitcast i32 %6149 to float
  br label %6504

; <label>:6487                                    ; preds = %6191
  %6488 = and i32 %6149, 1023
  %6489 = uitofp i32 %6488 to float
  %6490 = lshr i32 %6149, 10
  %6491 = and i32 %6490, 1023
  %6492 = uitofp i32 %6491 to float
  %6493 = lshr i32 %6149, 20
  %6494 = and i32 %6493, 1023
  %6495 = uitofp i32 %6494 to float
  %6496 = fmul fast float %6489, 0x3F60040100000000
  %6497 = fmul fast float %6492, 0x3F60040100000000
  %6498 = fmul fast float %6495, 0x3F60040100000000
  %6499 = fadd fast float %6496, -1.000000e+00
  %6500 = fadd fast float %6497, -1.000000e+00
  %6501 = fadd fast float %6498, -1.000000e+00
  br label %6504

; <label>:6502                                    ; preds = %6191
  br label %6504

; <label>:6503                                    ; preds = %6191
  br label %6504

; <label>:6504                                    ; preds = %8211, %8207, %8191, %6503, %6502, %6487, %6485, %6483, %6481, %6474, %6473, %6472, %6470, %6468, %6466, %6465, %6443, %6441, %6439, %6438, %6437, %6436, %6435, %6434, %6430, %6413, %6398, %6397, %6381, %6353, %6301, %6294, %6293, %6292, %6291, %6269, %6268, %6267, %6255, %6243, %6231, %6230, %6229, %6228, %6227, %6218, %6206, %6205, %6191
  %6505 = phi float [ %6195, %6191 ], [ 0.000000e+00, %6502 ], [ %6499, %6487 ], [ %6486, %6485 ], [ %6484, %6483 ], [ %6482, %6481 ], [ %6195, %6443 ], [ 0.000000e+00, %6474 ], [ %6445, %6473 ], [ %6445, %6472 ], [ 0.000000e+00, %6470 ], [ %6469, %6468 ], [ %6467, %6466 ], [ %6445, %6465 ], [ %6442, %6441 ], [ %6440, %6439 ], [ 0.000000e+00, %6438 ], [ 0.000000e+00, %6437 ], [ 0.000000e+00, %6436 ], [ %116, %6434 ], [ %6433, %6430 ], [ %6405, %6398 ], [ 0.000000e+00, %6397 ], [ %6376, %6353 ], [ 0.000000e+00, %6294 ], [ 0.000000e+00, %6293 ], [ 0.000000e+00, %6292 ], [ 1.000000e+00, %6291 ], [ 0.000000e+00, %6503 ], [ 1.000000e+00, %6268 ], [ 5.000000e-01, %6267 ], [ %6264, %6255 ], [ %6252, %6243 ], [ %6240, %6231 ], [ %1748, %6230 ], [ %1746, %6229 ], [ %1622, %6228 ], [ %1559, %6227 ], [ %6226, %6218 ], [ %6215, %6206 ], [ %1613, %6205 ], [ %6306, %6301 ], [ %6386, %6381 ], [ %6418, %6413 ], [ 0.000000e+00, %6435 ], [ 1.000000e+00, %8191 ], [ 1.000000e+00, %8207 ], [ 1.000000e+00, %8211 ], [ %6288, %6269 ]
  %6506 = phi float [ %6193, %6191 ], [ 0.000000e+00, %6502 ], [ %6500, %6487 ], [ %6486, %6485 ], [ %6484, %6483 ], [ %6482, %6481 ], [ %6193, %6443 ], [ %6479, %6474 ], [ %6445, %6473 ], [ %6445, %6472 ], [ 0.000000e+00, %6470 ], [ 0.000000e+00, %6468 ], [ 0.000000e+00, %6466 ], [ %6445, %6465 ], [ %6442, %6441 ], [ %6440, %6439 ], [ 0.000000e+00, %6438 ], [ 0.000000e+00, %6437 ], [ 0.000000e+00, %6436 ], [ %117, %6434 ], [ %6433, %6430 ], [ %1745, %6398 ], [ 0.000000e+00, %6397 ], [ %6377, %6353 ], [ 1.000000e+00, %6294 ], [ 1.000000e+00, %6293 ], [ 1.000000e+00, %6292 ], [ 0x3FE6666660000000, %6291 ], [ 0.000000e+00, %6503 ], [ 1.000000e+00, %6268 ], [ 5.000000e-01, %6267 ], [ %6265, %6255 ], [ %6253, %6243 ], [ %6241, %6231 ], [ %1748, %6230 ], [ %1746, %6229 ], [ %1623, %6228 ], [ %1560, %6227 ], [ %6226, %6218 ], [ %6216, %6206 ], [ %1614, %6205 ], [ %6310, %6301 ], [ %6390, %6381 ], [ %6422, %6413 ], [ 0.000000e+00, %6435 ], [ 0.000000e+00, %8191 ], [ 0.000000e+00, %8207 ], [ 0.000000e+00, %8211 ], [ 0.000000e+00, %6269 ]
  %6507 = phi float [ %6194, %6191 ], [ 0.000000e+00, %6502 ], [ %6501, %6487 ], [ %6486, %6485 ], [ %6484, %6483 ], [ %6482, %6481 ], [ %6194, %6443 ], [ %6480, %6474 ], [ %6445, %6473 ], [ 0.000000e+00, %6472 ], [ %6471, %6470 ], [ 0.000000e+00, %6468 ], [ %6467, %6466 ], [ %6445, %6465 ], [ %6442, %6441 ], [ %6440, %6439 ], [ 0.000000e+00, %6438 ], [ 0.000000e+00, %6437 ], [ 0.000000e+00, %6436 ], [ %118, %6434 ], [ %6433, %6430 ], [ %6406, %6398 ], [ 0.000000e+00, %6397 ], [ %6378, %6353 ], [ 0.000000e+00, %6294 ], [ 0.000000e+00, %6293 ], [ 0.000000e+00, %6292 ], [ 0.000000e+00, %6291 ], [ 0.000000e+00, %6503 ], [ 1.000000e+00, %6268 ], [ 5.000000e-01, %6267 ], [ %6266, %6255 ], [ %6254, %6243 ], [ %6242, %6231 ], [ %1748, %6230 ], [ %1746, %6229 ], [ %1624, %6228 ], [ %1561, %6227 ], [ %6226, %6218 ], [ %6217, %6206 ], [ %1615, %6205 ], [ %6314, %6301 ], [ %6394, %6381 ], [ %6426, %6413 ], [ 1.000000e+00, %6435 ], [ 0.000000e+00, %8191 ], [ 0.000000e+00, %8207 ], [ 0.000000e+00, %8211 ], [ %6290, %6269 ]
  %6508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6509 = extractvalue %dx.types.CBufRet.f32 %6508, 3
  %6510 = fsub fast float %6505, %6195
  %6511 = fsub fast float %6506, %6193
  %6512 = fsub fast float %6507, %6194
  %6513 = fmul fast float %6509, %6510
  %6514 = fmul fast float %6509, %6511
  %6515 = fmul fast float %6509, %6512
  %6516 = fadd fast float %6513, %6195
  %6517 = fadd fast float %6514, %6193
  %6518 = fadd fast float %6515, %6194
  br label %6519

; <label>:6519                                    ; preds = %6504, %6191
  %6520 = phi float [ %6516, %6504 ], [ %6195, %6191 ]
  %6521 = phi float [ %6517, %6504 ], [ %6193, %6191 ]
  %6522 = phi float [ %6518, %6504 ], [ %6194, %6191 ]
  %6523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6524 = extractvalue %dx.types.CBufRet.f32 %6523, 0
  %6525 = bitcast float %6524 to i32
  %6526 = lshr i32 %6525, 8
  %6527 = and i32 %6526, 255
  %6528 = uitofp i32 %6527 to float
  %6529 = fptoui float %6528 to i32
  switch i32 %6529, label %6766 [
    i32 1, label %6530
    i32 2, label %6536
    i32 3, label %6542
    i32 4, label %6548
    i32 5, label %6554
    i32 6, label %6560
    i32 7, label %6566
    i32 8, label %6572
    i32 9, label %6578
    i32 10, label %6580
    i32 11, label %6601
    i32 12, label %6622
    i32 13, label %6634
    i32 14, label %6649
    i32 15, label %6654
    i32 16, label %6656
    i32 17, label %6658
    i32 18, label %6660
    i32 19, label %6662
    i32 20, label %6673
    i32 21, label %6684
    i32 22, label %6696
    i32 23, label %6730
    i32 24, label %6745
    i32 25, label %6760
    i32 26, label %6762
    i32 27, label %6764
  ]

; <label>:6530                                    ; preds = %6519
  %6531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6532 = extractvalue %dx.types.CBufRet.f32 %6531, 0
  %6533 = fmul fast float %6532, %5903
  %6534 = fmul fast float %6532, %5904
  %6535 = fmul fast float %6532, %5905
  br label %6766

; <label>:6536                                    ; preds = %6519
  %6537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6538 = extractvalue %dx.types.CBufRet.f32 %6537, 0
  %6539 = fmul fast float %6538, %5900
  %6540 = fmul fast float %6538, %5901
  %6541 = fmul fast float %6538, %5902
  br label %6766

; <label>:6542                                    ; preds = %6519
  %6543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6544 = extractvalue %dx.types.CBufRet.f32 %6543, 0
  %6545 = fmul fast float %6544, %1559
  %6546 = fmul fast float %6544, %1560
  %6547 = fmul fast float %6544, %1561
  br label %6766

; <label>:6548                                    ; preds = %6519
  %6549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6550 = extractvalue %dx.types.CBufRet.f32 %6549, 0
  %6551 = fmul fast float %6550, %5897
  %6552 = fmul fast float %6550, %5898
  %6553 = fmul fast float %6550, %5899
  br label %6766

; <label>:6554                                    ; preds = %6519
  %6555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6556 = extractvalue %dx.types.CBufRet.f32 %6555, 0
  %6557 = fmul fast float %6556, %5894
  %6558 = fmul fast float %6556, %5895
  %6559 = fmul fast float %6556, %5896
  br label %6766

; <label>:6560                                    ; preds = %6519
  %6561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6562 = extractvalue %dx.types.CBufRet.f32 %6561, 0
  %6563 = fmul fast float %6562, %4646
  %6564 = fmul fast float %6562, %4647
  %6565 = fmul fast float %6562, %4648
  br label %6766

; <label>:6566                                    ; preds = %6519
  %6567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6568 = extractvalue %dx.types.CBufRet.f32 %6567, 0
  %6569 = fmul fast float %6568, %4646
  %6570 = fmul fast float %6568, %4647
  %6571 = fmul fast float %6568, %4648
  br label %6766

; <label>:6572                                    ; preds = %6519
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  %6575 = fmul fast float %4649, %6574
  %6576 = fmul fast float %4650, %6574
  %6577 = fmul fast float %4651, %6574
  br label %6766

; <label>:6578                                    ; preds = %6519
  %6579 = bitcast i32 %6149 to float
  br label %6766

; <label>:6580                                    ; preds = %6519
  %6581 = and i32 %6149, 1023
  %6582 = uitofp i32 %6581 to float
  %6583 = lshr i32 %6149, 10
  %6584 = and i32 %6583, 1023
  %6585 = uitofp i32 %6584 to float
  %6586 = lshr i32 %6149, 20
  %6587 = and i32 %6586, 1023
  %6588 = uitofp i32 %6587 to float
  %6589 = fmul fast float %6582, 0x3F60040100000000
  %6590 = fmul fast float %6585, 0x3F60040100000000
  %6591 = fmul fast float %6588, 0x3F60040100000000
  %6592 = fadd fast float %6589, -1.000000e+00
  %6593 = fadd fast float %6590, -1.000000e+00
  %6594 = fadd fast float %6591, -1.000000e+00
  %6595 = fcmp fast ogt float %6592, 0.000000e+00
  %6596 = select i1 %6595, float 1.000000e+00, float 0.000000e+00
  %6597 = fcmp fast ogt float %6593, 0.000000e+00
  %6598 = select i1 %6597, float 1.000000e+00, float 0.000000e+00
  %6599 = fcmp fast ogt float %6594, 0.000000e+00
  %6600 = select i1 %6599, float 1.000000e+00, float 0.000000e+00
  br label %6766

; <label>:6601                                    ; preds = %6519
  %6602 = and i32 %6149, 1023
  %6603 = uitofp i32 %6602 to float
  %6604 = lshr i32 %6149, 10
  %6605 = and i32 %6604, 1023
  %6606 = uitofp i32 %6605 to float
  %6607 = lshr i32 %6149, 20
  %6608 = and i32 %6607, 1023
  %6609 = uitofp i32 %6608 to float
  %6610 = fmul fast float %6603, 0x3F60040100000000
  %6611 = fmul fast float %6606, 0x3F60040100000000
  %6612 = fmul fast float %6609, 0x3F60040100000000
  %6613 = fadd fast float %6610, -1.000000e+00
  %6614 = fadd fast float %6611, -1.000000e+00
  %6615 = fadd fast float %6612, -1.000000e+00
  %6616 = fmul fast float %6615, %6614
  %6617 = fsub fast float %6615, %6616
  %6618 = fmul fast float %6614, %6613
  %6619 = fmul fast float %6617, %6613
  %6620 = fsub fast float %6614, %6618
  %6621 = fsub fast float %6617, %6619
  br label %6766

; <label>:6622                                    ; preds = %6519
  %6623 = and i32 %6149, 255
  %6624 = uitofp i32 %6623 to float
  %6625 = fmul fast float %6624, 0x3F70101020000000
  %6626 = lshr i32 %6149, 8
  %6627 = and i32 %6626, 255
  %6628 = uitofp i32 %6627 to float
  %6629 = fmul fast float %6628, 0x3F70101020000000
  %6630 = lshr i32 %6149, 16
  %6631 = and i32 %6630, 255
  %6632 = uitofp i32 %6631 to float
  %6633 = fmul fast float %6632, 0x3F70101020000000
  br label %6766

; <label>:6634                                    ; preds = %6519
  %6635 = and i32 %6149, 1023
  %6636 = uitofp i32 %6635 to float
  %6637 = lshr i32 %6149, 10
  %6638 = and i32 %6637, 1023
  %6639 = uitofp i32 %6638 to float
  %6640 = lshr i32 %6149, 20
  %6641 = and i32 %6640, 1023
  %6642 = uitofp i32 %6641 to float
  %6643 = fmul fast float %6636, 0x3F60040100000000
  %6644 = fmul fast float %6639, 0x3F60040100000000
  %6645 = fmul fast float %6642, 0x3F60040100000000
  %6646 = fadd fast float %6643, -1.000000e+00
  %6647 = fadd fast float %6644, -1.000000e+00
  %6648 = fadd fast float %6645, -1.000000e+00
  br label %6766

; <label>:6649                                    ; preds = %6519
  %6650 = icmp ne i32 %6149, 0
  %6651 = select i1 %6650, float 1.000000e+00, float %6520
  %6652 = select i1 %6650, float 0.000000e+00, float %6521
  %6653 = select i1 %6650, float 0.000000e+00, float %6522
  br label %6766

; <label>:6654                                    ; preds = %6519
  %6655 = bitcast i32 %6149 to float
  br label %6766

; <label>:6656                                    ; preds = %6519
  %6657 = bitcast i32 %6149 to float
  br label %6766

; <label>:6658                                    ; preds = %6519
  %6659 = bitcast i32 %6149 to float
  br label %6766

; <label>:6660                                    ; preds = %6519
  %6661 = bitcast i32 %6149 to float
  br label %6766

; <label>:6662                                    ; preds = %6519
  %6663 = and i32 %6149, 65535
  %6664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6663)  ; LegacyF16ToF32(value)
  %6665 = lshr i32 %6149, 16
  %6666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6665)  ; LegacyF16ToF32(value)
  %6667 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6669 = extractvalue %dx.types.CBufRet.f32 %6668, 0
  %6670 = fmul fast float %6669, %6664
  %6671 = fmul fast float %6669, %6666
  %6672 = fmul fast float %6669, %6667
  br label %6766

; <label>:6673                                    ; preds = %6519
  %6674 = and i32 %6149, 65535
  %6675 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6674)  ; LegacyF16ToF32(value)
  %6676 = lshr i32 %6149, 16
  %6677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6676)  ; LegacyF16ToF32(value)
  %6678 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6680 = extractvalue %dx.types.CBufRet.f32 %6679, 0
  %6681 = fmul fast float %6680, %6675
  %6682 = fmul fast float %6680, %6677
  %6683 = fmul fast float %6680, %6678
  br label %6766

; <label>:6684                                    ; preds = %6519
  %6685 = and i32 %6149, 1023
  %6686 = uitofp i32 %6685 to float
  %6687 = lshr i32 %6149, 10
  %6688 = and i32 %6687, 1023
  %6689 = uitofp i32 %6688 to float
  %6690 = lshr i32 %6149, 20
  %6691 = and i32 %6690, 1023
  %6692 = uitofp i32 %6691 to float
  %6693 = fmul fast float %6686, 0x3F50040100000000
  %6694 = fmul fast float %6689, 0x3F50040100000000
  %6695 = fmul fast float %6692, 0x3F50040100000000
  br label %6766

; <label>:6696                                    ; preds = %6519
  %6697 = and i32 %6149, 1023
  %6698 = uitofp i32 %6697 to float
  %6699 = lshr i32 %6149, 10
  %6700 = and i32 %6699, 1023
  %6701 = uitofp i32 %6700 to float
  %6702 = lshr i32 %6149, 20
  %6703 = and i32 %6702, 1023
  %6704 = uitofp i32 %6703 to float
  %6705 = fmul fast float %6698, 0x3F60040100000000
  %6706 = fmul fast float %6701, 0x3F60040100000000
  %6707 = fmul fast float %6704, 0x3F60040100000000
  %6708 = fadd fast float %6705, -1.000000e+00
  %6709 = fadd fast float %6706, -1.000000e+00
  %6710 = fadd fast float %6707, -1.000000e+00
  %6711 = call float @dx.op.binary.f32(i32 35, float %6709, float %6710)  ; FMax(a,b)
  %6712 = call float @dx.op.binary.f32(i32 35, float %6708, float %6711)  ; FMax(a,b)
  %6713 = fmul fast float %6712, 2.000000e+00
  %6714 = call float @dx.op.unary.f32(i32 7, float %6713)  ; Saturate(value)
  %6715 = fmul fast float %6698, 0x3F94050140000000
  %6716 = fadd fast float %6715, -1.000000e+01
  %6717 = fmul fast float %6701, 0x3F94050140000000
  %6718 = fadd fast float %6717, -1.000000e+01
  %6719 = fmul fast float %6704, 0x3F94050140000000
  %6720 = fadd fast float %6719, -1.000000e+01
  %6721 = fsub fast float %6716, %6520
  %6722 = fsub fast float %6718, %6521
  %6723 = fsub fast float %6720, %6522
  %6724 = fmul fast float %6714, %6721
  %6725 = fmul fast float %6714, %6722
  %6726 = fmul fast float %6714, %6723
  %6727 = fadd fast float %6724, %6520
  %6728 = fadd fast float %6725, %6521
  %6729 = fadd fast float %6726, %6522
  br label %6766

; <label>:6730                                    ; preds = %6519
  %6731 = and i32 %6149, 1023
  %6732 = uitofp i32 %6731 to float
  %6733 = lshr i32 %6149, 10
  %6734 = and i32 %6733, 1023
  %6735 = uitofp i32 %6734 to float
  %6736 = lshr i32 %6149, 20
  %6737 = and i32 %6736, 1023
  %6738 = uitofp i32 %6737 to float
  %6739 = fmul fast float %6732, 0x3F60040100000000
  %6740 = fmul fast float %6735, 0x3F60040100000000
  %6741 = fmul fast float %6738, 0x3F60040100000000
  %6742 = fadd fast float %6739, -1.000000e+00
  %6743 = fadd fast float %6740, -1.000000e+00
  %6744 = fadd fast float %6741, -1.000000e+00
  br label %6766

; <label>:6745                                    ; preds = %6519
  %6746 = and i32 %6149, 1023
  %6747 = uitofp i32 %6746 to float
  %6748 = lshr i32 %6149, 10
  %6749 = and i32 %6748, 1023
  %6750 = uitofp i32 %6749 to float
  %6751 = lshr i32 %6149, 20
  %6752 = and i32 %6751, 1023
  %6753 = uitofp i32 %6752 to float
  %6754 = fmul fast float %6747, 0x3F60040100000000
  %6755 = fmul fast float %6750, 0x3F60040100000000
  %6756 = fmul fast float %6753, 0x3F60040100000000
  %6757 = fadd fast float %6754, -1.000000e+00
  %6758 = fadd fast float %6755, -1.000000e+00
  %6759 = fadd fast float %6756, -1.000000e+00
  br label %6766

; <label>:6760                                    ; preds = %6519
  %6761 = bitcast i32 %6149 to float
  br label %6766

; <label>:6762                                    ; preds = %6519
  %6763 = bitcast i32 %6149 to float
  br label %6766

; <label>:6764                                    ; preds = %6519
  %6765 = bitcast i32 %6149 to float
  br label %6766

; <label>:6766                                    ; preds = %6764, %6762, %6760, %6745, %6730, %6696, %6684, %6673, %6662, %6660, %6658, %6656, %6654, %6649, %6634, %6622, %6601, %6580, %6578, %6572, %6566, %6560, %6554, %6548, %6542, %6536, %6530, %6519
  %6767 = phi float [ %6520, %6519 ], [ %6765, %6764 ], [ %6763, %6762 ], [ %6761, %6760 ], [ %6757, %6745 ], [ %6742, %6730 ], [ %6727, %6696 ], [ %6693, %6684 ], [ %6681, %6673 ], [ %6670, %6662 ], [ %6661, %6660 ], [ %6659, %6658 ], [ %6657, %6656 ], [ %6655, %6654 ], [ %6646, %6634 ], [ %6625, %6622 ], [ %6613, %6601 ], [ %6596, %6580 ], [ %6579, %6578 ], [ %6575, %6572 ], [ %6569, %6566 ], [ %6563, %6560 ], [ %6557, %6554 ], [ %6551, %6548 ], [ %6545, %6542 ], [ %6539, %6536 ], [ %6533, %6530 ], [ %6651, %6649 ]
  %6768 = phi float [ %6521, %6519 ], [ %6765, %6764 ], [ %6763, %6762 ], [ %6761, %6760 ], [ %6758, %6745 ], [ %6743, %6730 ], [ %6728, %6696 ], [ %6694, %6684 ], [ %6682, %6673 ], [ %6671, %6662 ], [ %6661, %6660 ], [ %6659, %6658 ], [ %6657, %6656 ], [ %6655, %6654 ], [ %6647, %6634 ], [ %6629, %6622 ], [ %6620, %6601 ], [ %6598, %6580 ], [ %6579, %6578 ], [ %6576, %6572 ], [ %6570, %6566 ], [ %6564, %6560 ], [ %6558, %6554 ], [ %6552, %6548 ], [ %6546, %6542 ], [ %6540, %6536 ], [ %6534, %6530 ], [ %6652, %6649 ]
  %6769 = phi float [ %6522, %6519 ], [ %6765, %6764 ], [ %6763, %6762 ], [ %6761, %6760 ], [ %6759, %6745 ], [ %6744, %6730 ], [ %6729, %6696 ], [ %6695, %6684 ], [ %6683, %6673 ], [ %6672, %6662 ], [ %6661, %6660 ], [ %6659, %6658 ], [ %6657, %6656 ], [ %6655, %6654 ], [ %6648, %6634 ], [ %6633, %6622 ], [ %6621, %6601 ], [ %6600, %6580 ], [ %6579, %6578 ], [ %6577, %6572 ], [ %6571, %6566 ], [ %6565, %6560 ], [ %6559, %6554 ], [ %6553, %6548 ], [ %6547, %6542 ], [ %6541, %6536 ], [ %6535, %6530 ], [ %6653, %6649 ]
  %6770 = extractvalue %dx.types.CBufRet.f32 %6523, 3
  %6771 = fsub fast float %6767, %6520
  %6772 = fsub fast float %6768, %6521
  %6773 = fsub fast float %6769, %6522
  %6774 = fmul fast float %6770, %6771
  %6775 = fmul fast float %6770, %6772
  %6776 = fmul fast float %6770, %6773
  %6777 = fadd fast float %6774, %6520
  %6778 = fadd fast float %6775, %6521
  %6779 = fadd fast float %6776, %6522
  %6780 = lshr i32 %6525, 16
  %6781 = and i32 %6780, 255
  %6782 = uitofp i32 %6781 to float
  %6783 = fptoui float %6782 to i32
  switch i32 %6783, label %6830 [
    i32 16, label %6815
    i32 12, label %6814
    i32 3, label %6784
    i32 4, label %6785
    i32 15, label %6786
    i32 5, label %6795
    i32 6, label %6804
    i32 7, label %6813
    i32 11, label %6814
  ]

; <label>:6784                                    ; preds = %6766
  br label %6830

; <label>:6785                                    ; preds = %6766
  br label %6830

; <label>:6786                                    ; preds = %6766
  %6787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %6788 = extractvalue %dx.types.CBufRet.f32 %6787, 0
  %6789 = fadd fast float %6788, %6777
  %6790 = fadd fast float %6788, %6778
  %6791 = fadd fast float %6788, %6779
  %6792 = call float @dx.op.unary.f32(i32 7, float %6789)  ; Saturate(value)
  %6793 = call float @dx.op.unary.f32(i32 7, float %6790)  ; Saturate(value)
  %6794 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  br label %6830

; <label>:6795                                    ; preds = %6766
  %6796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6797 = extractvalue %dx.types.CBufRet.f32 %6796, 0
  %6798 = bitcast float %6797 to i32
  %6799 = and i32 %6798, 2130706432
  %6800 = icmp eq i32 %6799, 0
  %6801 = select i1 %6800, float 0.000000e+00, float %6777
  %6802 = select i1 %6800, float 0.000000e+00, float %6778
  %6803 = select i1 %6800, float 0.000000e+00, float %6779
  br label %6830

; <label>:6804                                    ; preds = %6766
  %6805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6806 = extractvalue %dx.types.CBufRet.f32 %6805, 0
  %6807 = bitcast float %6806 to i32
  %6808 = and i32 %6807, 2130706432
  %6809 = icmp eq i32 %6808, 0
  %6810 = select i1 %6809, float 0.000000e+00, float %6777
  %6811 = select i1 %6809, float 0.000000e+00, float %6778
  %6812 = select i1 %6809, float 0.000000e+00, float %6779
  br label %6830

; <label>:6813                                    ; preds = %6766
  br label %6830

; <label>:6814                                    ; preds = %6766, %6766
  br label %6830

; <label>:6815                                    ; preds = %6766
  %6816 = and i32 %6149, 1023
  %6817 = uitofp i32 %6816 to float
  %6818 = lshr i32 %6149, 10
  %6819 = and i32 %6818, 1023
  %6820 = uitofp i32 %6819 to float
  %6821 = lshr i32 %6149, 20
  %6822 = and i32 %6821, 1023
  %6823 = uitofp i32 %6822 to float
  %6824 = fmul fast float %6817, 0x3F60040100000000
  %6825 = fmul fast float %6820, 0x3F60040100000000
  %6826 = fmul fast float %6823, 0x3F60040100000000
  %6827 = fadd fast float %6824, -1.000000e+00
  %6828 = fadd fast float %6825, -1.000000e+00
  %6829 = fadd fast float %6826, -1.000000e+00
  br label %6830

; <label>:6830                                    ; preds = %6815, %6814, %6813, %6804, %6795, %6786, %6785, %6784, %6766
  %6831 = phi float [ 0.000000e+00, %6813 ], [ %6792, %6786 ], [ 0.000000e+00, %6785 ], [ %51, %6814 ], [ %6827, %6815 ], [ 0.000000e+00, %6784 ], [ %6801, %6795 ], [ %6810, %6804 ], [ %6777, %6766 ]
  %6832 = phi float [ 0.000000e+00, %6813 ], [ %6793, %6786 ], [ 0.000000e+00, %6785 ], [ %52, %6814 ], [ %6828, %6815 ], [ 0.000000e+00, %6784 ], [ %6802, %6795 ], [ %6811, %6804 ], [ %6778, %6766 ]
  %6833 = phi float [ 0.000000e+00, %6813 ], [ %6794, %6786 ], [ 1.000000e+00, %6785 ], [ %53, %6814 ], [ %6829, %6815 ], [ 0.000000e+00, %6784 ], [ %6803, %6795 ], [ %6812, %6804 ], [ %6779, %6766 ]
  %6834 = fsub fast float %6831, %6777
  %6835 = fsub fast float %6832, %6778
  %6836 = fsub fast float %6833, %6779
  %6837 = fmul fast float %6770, %6834
  %6838 = fmul fast float %6770, %6835
  %6839 = fmul fast float %6770, %6836
  %6840 = fadd fast float %6837, %6777
  %6841 = fadd fast float %6838, %6778
  %6842 = fadd fast float %6839, %6779
  %6843 = and i32 %5892, 255
  %6844 = uitofp i32 %6843 to float
  %6845 = fptoui float %6844 to i32
  %6846 = lshr i32 %5892, 8
  %6847 = and i32 %6846, 255
  %6848 = uitofp i32 %6847 to float
  %6849 = fptoui float %6848 to i32
  %6850 = lshr i32 %5892, 16
  %6851 = and i32 %6850, 255
  %6852 = uitofp i32 %6851 to float
  %6853 = fptoui float %6852 to i32
  %6854 = lshr i32 %5892, 24
  %6855 = uitofp i32 %6854 to float
  %6856 = fptoui float %6855 to i32
  %6857 = and i32 %5891, 255
  %6858 = uitofp i32 %6857 to float
  %6859 = fptoui float %6858 to i32
  %6860 = lshr i32 %5891, 16
  %6861 = and i32 %6860, 255
  %6862 = uitofp i32 %6861 to float
  %6863 = fptoui float %6862 to i32
  %6864 = lshr i32 %6525, 24
  %6865 = uitofp i32 %6864 to float
  %6866 = fptoui float %6865 to i32
  switch i32 %6866, label %7105 [
    i32 1, label %6867
    i32 2, label %6894
    i32 3, label %6919
    i32 4, label %6942
    i32 5, label %6965
    i32 6, label %6988
    i32 7, label %7012
    i32 8, label %7035
    i32 9, label %7058
    i32 12, label %7080
    i32 13, label %7081
    i32 14, label %7104
  ]

; <label>:6867                                    ; preds = %6830
  %6868 = add i32 %6845, %6859
  %6869 = add i32 %6868, %6856
  %6870 = add i32 %6869, %6849
  %6871 = add i32 %6870, %6853
  %6872 = uitofp i32 %6871 to float
  %6873 = fadd fast float %6872, -4.000000e+00
  %6874 = fmul fast float %6873, 0x3FB5555560000000
  %6875 = call float @dx.op.unary.f32(i32 7, float %6874)  ; Saturate(value)
  %6876 = icmp eq i32 %6871, 0
  %6877 = select i1 %6876, float 0.000000e+00, float %6875
  %6878 = icmp ult i32 %6871, 2
  %6879 = select i1 %6878, float 0.000000e+00, float %6875
  %6880 = add i32 %6871, -1
  %6881 = icmp ult i32 %6880, 2
  %6882 = select i1 %6881, float 1.000000e+00, float %6877
  %6883 = icmp ult i32 %6871, 4
  %6884 = select i1 %6883, float 0.000000e+00, float 1.000000e+00
  %6885 = and i32 %6871, -2
  %6886 = icmp eq i32 %6885, 2
  %6887 = icmp eq i32 %6871, 4
  %6888 = select i1 %6887, float 1.000000e+00, float %6884
  %6889 = or i1 %6887, %6886
  %6890 = select i1 %6889, float 1.000000e+00, float %6879
  %6891 = add i32 %6871, -3
  %6892 = icmp ult i32 %6891, 2
  %6893 = select i1 %6892, float 0.000000e+00, float %6882
  br label %7105

; <label>:6894                                    ; preds = %6830
  %6895 = add i32 %6849, %6845
  %6896 = add i32 %6895, %6853
  %6897 = uitofp i32 %6896 to float
  %6898 = fadd fast float %6897, -4.000000e+00
  %6899 = fmul fast float %6898, 0x3FB5555560000000
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = icmp eq i32 %6896, 0
  %6902 = select i1 %6901, float 0.000000e+00, float %6900
  %6903 = icmp ult i32 %6896, 2
  %6904 = select i1 %6903, float 0.000000e+00, float %6900
  %6905 = add i32 %6896, -1
  %6906 = icmp ult i32 %6905, 2
  %6907 = select i1 %6906, float 1.000000e+00, float %6902
  %6908 = icmp ult i32 %6896, 4
  %6909 = select i1 %6908, float 0.000000e+00, float 1.000000e+00
  %6910 = and i32 %6896, -2
  %6911 = icmp eq i32 %6910, 2
  %6912 = icmp eq i32 %6896, 4
  %6913 = select i1 %6912, float 1.000000e+00, float %6909
  %6914 = or i1 %6912, %6911
  %6915 = select i1 %6914, float 1.000000e+00, float %6904
  %6916 = add i32 %6896, -3
  %6917 = icmp ult i32 %6916, 2
  %6918 = select i1 %6917, float 0.000000e+00, float %6907
  br label %7105

; <label>:6919                                    ; preds = %6830
  %6920 = uitofp i32 %6845 to float
  %6921 = fadd fast float %6920, -4.000000e+00
  %6922 = fmul fast float %6921, 0x3FB5555560000000
  %6923 = call float @dx.op.unary.f32(i32 7, float %6922)  ; Saturate(value)
  %6924 = icmp eq i32 %6845, 0
  %6925 = select i1 %6924, float 0.000000e+00, float %6923
  %6926 = icmp ult i32 %6845, 2
  %6927 = select i1 %6926, float 0.000000e+00, float %6923
  %6928 = add i32 %6845, -1
  %6929 = icmp ult i32 %6928, 2
  %6930 = select i1 %6929, float 1.000000e+00, float %6925
  %6931 = icmp ult i32 %6845, 4
  %6932 = select i1 %6931, float 0.000000e+00, float 1.000000e+00
  %6933 = and i32 %6845, -2
  %6934 = icmp eq i32 %6933, 2
  %6935 = icmp eq i32 %6845, 4
  %6936 = select i1 %6935, float 1.000000e+00, float %6932
  %6937 = or i1 %6935, %6934
  %6938 = select i1 %6937, float 1.000000e+00, float %6927
  %6939 = add i32 %6845, -3
  %6940 = icmp ult i32 %6939, 2
  %6941 = select i1 %6940, float 0.000000e+00, float %6930
  br label %7105

; <label>:6942                                    ; preds = %6830
  %6943 = uitofp i32 %6849 to float
  %6944 = fadd fast float %6943, -4.000000e+00
  %6945 = fmul fast float %6944, 0x3FB5555560000000
  %6946 = call float @dx.op.unary.f32(i32 7, float %6945)  ; Saturate(value)
  %6947 = icmp eq i32 %6849, 0
  %6948 = select i1 %6947, float 0.000000e+00, float %6946
  %6949 = icmp ult i32 %6849, 2
  %6950 = select i1 %6949, float 0.000000e+00, float %6946
  %6951 = add i32 %6849, -1
  %6952 = icmp ult i32 %6951, 2
  %6953 = select i1 %6952, float 1.000000e+00, float %6948
  %6954 = icmp ult i32 %6849, 4
  %6955 = select i1 %6954, float 0.000000e+00, float 1.000000e+00
  %6956 = and i32 %6849, -2
  %6957 = icmp eq i32 %6956, 2
  %6958 = icmp eq i32 %6849, 4
  %6959 = select i1 %6958, float 1.000000e+00, float %6955
  %6960 = or i1 %6958, %6957
  %6961 = select i1 %6960, float 1.000000e+00, float %6950
  %6962 = add i32 %6849, -3
  %6963 = icmp ult i32 %6962, 2
  %6964 = select i1 %6963, float 0.000000e+00, float %6953
  br label %7105

; <label>:6965                                    ; preds = %6830
  %6966 = uitofp i32 %6853 to float
  %6967 = fadd fast float %6966, -4.000000e+00
  %6968 = fmul fast float %6967, 0x3FB5555560000000
  %6969 = call float @dx.op.unary.f32(i32 7, float %6968)  ; Saturate(value)
  %6970 = icmp eq i32 %6853, 0
  %6971 = select i1 %6970, float 0.000000e+00, float %6969
  %6972 = icmp ult i32 %6853, 2
  %6973 = select i1 %6972, float 0.000000e+00, float %6969
  %6974 = add i32 %6853, -1
  %6975 = icmp ult i32 %6974, 2
  %6976 = select i1 %6975, float 1.000000e+00, float %6971
  %6977 = icmp ult i32 %6853, 4
  %6978 = select i1 %6977, float 0.000000e+00, float 1.000000e+00
  %6979 = and i32 %6853, -2
  %6980 = icmp eq i32 %6979, 2
  %6981 = icmp eq i32 %6853, 4
  %6982 = select i1 %6981, float 1.000000e+00, float %6978
  %6983 = or i1 %6981, %6980
  %6984 = select i1 %6983, float 1.000000e+00, float %6973
  %6985 = add i32 %6853, -3
  %6986 = icmp ult i32 %6985, 2
  %6987 = select i1 %6986, float 0.000000e+00, float %6976
  br label %7105

; <label>:6988                                    ; preds = %6830
  %6989 = add i32 %6856, %6859
  %6990 = uitofp i32 %6989 to float
  %6991 = fadd fast float %6990, -4.000000e+00
  %6992 = fmul fast float %6991, 0x3FB5555560000000
  %6993 = call float @dx.op.unary.f32(i32 7, float %6992)  ; Saturate(value)
  %6994 = icmp eq i32 %6989, 0
  %6995 = select i1 %6994, float 0.000000e+00, float %6993
  %6996 = icmp ult i32 %6989, 2
  %6997 = select i1 %6996, float 0.000000e+00, float %6993
  %6998 = add i32 %6989, -1
  %6999 = icmp ult i32 %6998, 2
  %7000 = select i1 %6999, float 1.000000e+00, float %6995
  %7001 = icmp ult i32 %6989, 4
  %7002 = select i1 %7001, float 0.000000e+00, float 1.000000e+00
  %7003 = and i32 %6989, -2
  %7004 = icmp eq i32 %7003, 2
  %7005 = icmp eq i32 %6989, 4
  %7006 = select i1 %7005, float 1.000000e+00, float %7002
  %7007 = or i1 %7005, %7004
  %7008 = select i1 %7007, float 1.000000e+00, float %6997
  %7009 = add i32 %6989, -3
  %7010 = icmp ult i32 %7009, 2
  %7011 = select i1 %7010, float 0.000000e+00, float %7000
  br label %7105

; <label>:7012                                    ; preds = %6830
  %7013 = uitofp i32 %6856 to float
  %7014 = fadd fast float %7013, -4.000000e+00
  %7015 = fmul fast float %7014, 0x3FB5555560000000
  %7016 = call float @dx.op.unary.f32(i32 7, float %7015)  ; Saturate(value)
  %7017 = icmp eq i32 %6856, 0
  %7018 = select i1 %7017, float 0.000000e+00, float %7016
  %7019 = icmp ult i32 %6856, 2
  %7020 = select i1 %7019, float 0.000000e+00, float %7016
  %7021 = add i32 %6856, -1
  %7022 = icmp ult i32 %7021, 2
  %7023 = select i1 %7022, float 1.000000e+00, float %7018
  %7024 = icmp ult i32 %6856, 4
  %7025 = select i1 %7024, float 0.000000e+00, float 1.000000e+00
  %7026 = and i32 %6856, -2
  %7027 = icmp eq i32 %7026, 2
  %7028 = icmp eq i32 %6856, 4
  %7029 = select i1 %7028, float 1.000000e+00, float %7025
  %7030 = or i1 %7028, %7027
  %7031 = select i1 %7030, float 1.000000e+00, float %7020
  %7032 = add i32 %6856, -3
  %7033 = icmp ult i32 %7032, 2
  %7034 = select i1 %7033, float 0.000000e+00, float %7023
  br label %7105

; <label>:7035                                    ; preds = %6830
  %7036 = uitofp i32 %6859 to float
  %7037 = fadd fast float %7036, -4.000000e+00
  %7038 = fmul fast float %7037, 0x3FB5555560000000
  %7039 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7040 = icmp eq i32 %6859, 0
  %7041 = select i1 %7040, float 0.000000e+00, float %7039
  %7042 = icmp ult i32 %6859, 2
  %7043 = select i1 %7042, float 0.000000e+00, float %7039
  %7044 = add i32 %6859, -1
  %7045 = icmp ult i32 %7044, 2
  %7046 = select i1 %7045, float 1.000000e+00, float %7041
  %7047 = icmp ult i32 %6859, 4
  %7048 = select i1 %7047, float 0.000000e+00, float 1.000000e+00
  %7049 = and i32 %6859, -2
  %7050 = icmp eq i32 %7049, 2
  %7051 = icmp eq i32 %6859, 4
  %7052 = select i1 %7051, float 1.000000e+00, float %7048
  %7053 = or i1 %7051, %7050
  %7054 = select i1 %7053, float 1.000000e+00, float %7043
  %7055 = add i32 %6859, -3
  %7056 = icmp ult i32 %7055, 2
  %7057 = select i1 %7056, float 0.000000e+00, float %7046
  br label %7105

; <label>:7058                                    ; preds = %6830
  %7059 = lshr i32 %5891, 8
  %7060 = and i32 %7059, 255
  %7061 = uitofp i32 %7060 to float
  %7062 = fptoui float %7061 to i32
  %7063 = uitofp i32 %7062 to float
  %7064 = fcmp fast oge float %7063, 1.000000e+00
  %7065 = fcmp fast oge float %7063, 2.000000e+00
  %7066 = or i1 %7065, %7064
  %7067 = select i1 %7066, float 1.000000e+00, float 0.000000e+00
  %7068 = fcmp fast oge float %7063, 3.000000e+00
  %7069 = or i1 %7068, %7065
  %7070 = fcmp fast oge float %7063, 4.000000e+00
  %7071 = or i1 %7070, %7069
  %7072 = select i1 %7071, float 1.000000e+00, float 0.000000e+00
  %7073 = or i1 %7070, %7068
  %7074 = fcmp fast oge float %7063, 5.000000e+00
  %7075 = or i1 %7074, %7070
  %7076 = select i1 %7075, float 1.000000e+00, float 0.000000e+00
  %7077 = select i1 %7074, float 0.000000e+00, float %7072
  %7078 = or i1 %7074, %7073
  %7079 = select i1 %7078, float 0.000000e+00, float %7067
  br label %7105

; <label>:7080                                    ; preds = %6830
  br label %7105

; <label>:7081                                    ; preds = %6830
  %7082 = uitofp i32 %6863 to float
  %7083 = fadd fast float %7082, -4.000000e+00
  %7084 = fmul fast float %7083, 0x3FB5555560000000
  %7085 = call float @dx.op.unary.f32(i32 7, float %7084)  ; Saturate(value)
  %7086 = icmp eq i32 %6863, 0
  %7087 = select i1 %7086, float 0.000000e+00, float %7085
  %7088 = icmp ult i32 %6863, 2
  %7089 = select i1 %7088, float 0.000000e+00, float %7085
  %7090 = add i32 %6863, -1
  %7091 = icmp ult i32 %7090, 2
  %7092 = select i1 %7091, float 1.000000e+00, float %7087
  %7093 = icmp ult i32 %6863, 4
  %7094 = select i1 %7093, float 0.000000e+00, float 1.000000e+00
  %7095 = and i32 %6863, -2
  %7096 = icmp eq i32 %7095, 2
  %7097 = icmp eq i32 %6863, 4
  %7098 = select i1 %7097, float 1.000000e+00, float %7094
  %7099 = or i1 %7097, %7096
  %7100 = select i1 %7099, float 1.000000e+00, float %7089
  %7101 = add i32 %6863, -3
  %7102 = icmp ult i32 %7101, 2
  %7103 = select i1 %7102, float 0.000000e+00, float %7092
  br label %7105

; <label>:7104                                    ; preds = %6830
  br label %7105

; <label>:7105                                    ; preds = %7104, %7081, %7080, %7058, %7035, %7012, %6988, %6965, %6942, %6919, %6894, %6867, %6830
  %7106 = phi float [ %6840, %6830 ], [ 5.000000e-01, %7104 ], [ %7098, %7081 ], [ 0.000000e+00, %7080 ], [ %7076, %7058 ], [ %7052, %7035 ], [ %7029, %7012 ], [ %7006, %6988 ], [ %6982, %6965 ], [ %6959, %6942 ], [ %6936, %6919 ], [ %6913, %6894 ], [ %6888, %6867 ]
  %7107 = phi float [ %6841, %6830 ], [ 5.000000e-01, %7104 ], [ %7100, %7081 ], [ 0.000000e+00, %7080 ], [ %7077, %7058 ], [ %7054, %7035 ], [ %7031, %7012 ], [ %7008, %6988 ], [ %6984, %6965 ], [ %6961, %6942 ], [ %6938, %6919 ], [ %6915, %6894 ], [ %6890, %6867 ]
  %7108 = phi float [ %6842, %6830 ], [ 5.000000e-01, %7104 ], [ %7103, %7081 ], [ 0.000000e+00, %7080 ], [ %7079, %7058 ], [ %7057, %7035 ], [ %7034, %7012 ], [ %7011, %6988 ], [ %6987, %6965 ], [ %6964, %6942 ], [ %6941, %6919 ], [ %6918, %6894 ], [ %6893, %6867 ]
  %7109 = fsub fast float %7106, %6840
  %7110 = fsub fast float %7107, %6841
  %7111 = fsub fast float %7108, %6842
  %7112 = fmul fast float %7109, %6770
  %7113 = fmul fast float %7110, %6770
  %7114 = fmul fast float %7111, %6770
  %7115 = fadd fast float %7112, %6840
  %7116 = fadd fast float %7113, %6841
  %7117 = fadd fast float %7114, %6842
  %7118 = and i32 %6525, 255
  %7119 = uitofp i32 %7118 to float
  %7120 = fptoui float %7119 to i32
  %7121 = icmp ult i32 %7120, 25
  br i1 %7121, label %7122, label %7127

; <label>:7122                                    ; preds = %7105
  %7123 = trunc i32 %7120 to i25
  %7124 = lshr i25 1048574, %7123
  %7125 = and i25 %7124, 1
  %7126 = icmp ne i25 %7125, 0
  br label %7127

; <label>:7127                                    ; preds = %7122, %7105
  %7128 = phi i1 [ %7126, %7122 ], [ true, %7105 ]
  %7129 = or i32 %6783, %6529
  %7130 = or i32 %7129, %6866
  %7131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7132 = extractvalue %dx.types.CBufRet.f32 %7131, 3
  %7133 = bitcast float %7132 to i32
  %7134 = and i32 %7133, 255
  %7135 = uitofp i32 %7134 to float
  %7136 = fptoui float %7135 to i32
  %7137 = or i32 %7130, %7136
  %7138 = icmp ne i32 %7137, 0
  %7139 = or i1 %7128, %7138
  %7140 = extractvalue %dx.types.CBufRet.f32 %7131, 0
  %7141 = bitcast float %7140 to i32
  %7142 = icmp slt i32 %7141, 0
  %7143 = or i1 %7142, %7139
  br i1 %7143, label %7144, label %7162

; <label>:7144                                    ; preds = %7127
  %7145 = icmp eq i32 %6866, 14
  br i1 %7145, label %7162, label %7146

; <label>:7146                                    ; preds = %7144
  %7147 = fsub fast float 1.000000e+00, %6156
  %7148 = fsub fast float 1.000000e+00, %6157
  %7149 = fsub fast float 1.000000e+00, %6158
  %7150 = fmul fast float %6770, %7147
  %7151 = fmul fast float %6770, %7148
  %7152 = fmul fast float %6770, %7149
  %7153 = fadd fast float %7150, %6156
  %7154 = fadd fast float %7151, %6157
  %7155 = fadd fast float %7152, %6158
  %7156 = fmul fast float %6770, %6202
  %7157 = fmul fast float %6770, %6203
  %7158 = fmul fast float %6770, %6204
  %7159 = fsub fast float %6202, %7156
  %7160 = fsub fast float %6203, %7157
  %7161 = fsub fast float %6204, %7158
  br label %7162

; <label>:7162                                    ; preds = %7146, %7144, %7127
  %7163 = phi float [ %7159, %7146 ], [ %6202, %7127 ], [ 0.000000e+00, %7144 ]
  %7164 = phi float [ %7160, %7146 ], [ %6203, %7127 ], [ 0.000000e+00, %7144 ]
  %7165 = phi float [ %7161, %7146 ], [ %6204, %7127 ], [ 0.000000e+00, %7144 ]
  %7166 = phi float [ %7153, %7146 ], [ %6156, %7127 ], [ 1.000000e+00, %7144 ]
  %7167 = phi float [ %7154, %7146 ], [ %6157, %7127 ], [ 1.000000e+00, %7144 ]
  %7168 = phi float [ %7155, %7146 ], [ %6158, %7127 ], [ 1.000000e+00, %7144 ]
  %7169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.f32 %7169, 2
  %7171 = extractvalue %dx.types.CBufRet.f32 %7169, 3
  %7172 = fmul fast float %7170, %72
  %7173 = fmul fast float %7171, %73
  %7174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7175 = extractvalue %dx.types.CBufRet.f32 %7174, 0
  %7176 = fcmp fast oge float %7172, %7175
  %7177 = extractvalue %dx.types.CBufRet.f32 %7174, 2
  %7178 = fcmp fast ole float %7172, %7177
  %7179 = and i1 %7176, %7178
  %7180 = extractvalue %dx.types.CBufRet.f32 %7174, 1
  %7181 = fcmp fast oge float %7173, %7180
  %7182 = and i1 %7179, %7181
  %7183 = extractvalue %dx.types.CBufRet.f32 %7174, 3
  %7184 = fcmp fast ole float %7173, %7183
  %7185 = and i1 %7182, %7184
  %7186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.i32 %7186, 0
  %7188 = icmp ne i32 %7187, 0
  %7189 = icmp ne i32 %7187, 35
  %7190 = and i1 %7188, %7189
  %7191 = and i1 %7185, %7190
  br i1 %7191, label %7192, label %7205

; <label>:7192                                    ; preds = %7162
  %7193 = call float @dx.op.binary.f32(i32 36, float %7115, float 3.225500e+04)  ; FMin(a,b)
  %7194 = call float @dx.op.binary.f32(i32 36, float %7116, float 3.225500e+04)  ; FMin(a,b)
  %7195 = call float @dx.op.binary.f32(i32 36, float %7117, float 3.225500e+04)  ; FMin(a,b)
  %7196 = fmul fast float %7193, %7166
  %7197 = fmul fast float %7194, %7167
  %7198 = fmul fast float %7195, %7168
  %7199 = call float @dx.op.binary.f32(i32 36, float %7163, float 3.225500e+04)  ; FMin(a,b)
  %7200 = call float @dx.op.binary.f32(i32 36, float %7164, float 3.225500e+04)  ; FMin(a,b)
  %7201 = call float @dx.op.binary.f32(i32 36, float %7165, float 3.225500e+04)  ; FMin(a,b)
  %7202 = fadd fast float %7199, %7196
  %7203 = fadd fast float %7200, %7197
  %7204 = fadd fast float %7201, %7198
  br label %7205

; <label>:7205                                    ; preds = %7192, %7162
  %7206 = phi float [ %7202, %7192 ], [ %7115, %7162 ]
  %7207 = phi float [ %7203, %7192 ], [ %7116, %7162 ]
  %7208 = phi float [ %7204, %7192 ], [ %7117, %7162 ]
  %7209 = and i1 %7185, %7188
  br i1 %7209, label %7210, label %8132

; <label>:7210                                    ; preds = %7205
  %7211 = icmp eq i32 %7187, 1
  br i1 %7211, label %7212, label %7251

; <label>:7212                                    ; preds = %7210
  %7213 = uitofp i32 %160 to float
  %7214 = fmul fast float %7213, 0x3FE3C6EF40000000
  %7215 = call float @dx.op.unary.f32(i32 22, float %7214)  ; Frc(value)
  %7216 = fadd fast float %7215, 0x3FE5555560000000
  %7217 = fadd fast float %7215, 0x3FD5555560000000
  %7218 = fsub fast float -0.000000e+00, %7215
  %7219 = fsub fast float -0.000000e+00, %7216
  %7220 = fsub fast float -0.000000e+00, %7217
  %7221 = fcmp fast oge float %7215, %7218
  %7222 = fcmp fast oge float %7216, %7219
  %7223 = fcmp fast oge float %7217, %7220
  %7224 = call float @dx.op.unary.f32(i32 6, float %7215)  ; FAbs(value)
  %7225 = call float @dx.op.unary.f32(i32 6, float %7216)  ; FAbs(value)
  %7226 = call float @dx.op.unary.f32(i32 6, float %7217)  ; FAbs(value)
  %7227 = call float @dx.op.unary.f32(i32 22, float %7224)  ; Frc(value)
  %7228 = call float @dx.op.unary.f32(i32 22, float %7225)  ; Frc(value)
  %7229 = call float @dx.op.unary.f32(i32 22, float %7226)  ; Frc(value)
  %7230 = fsub fast float -0.000000e+00, %7227
  %7231 = fsub fast float -0.000000e+00, %7228
  %7232 = fsub fast float -0.000000e+00, %7229
  %7233 = select i1 %7221, float %7227, float %7230
  %7234 = select i1 %7222, float %7228, float %7231
  %7235 = select i1 %7223, float %7229, float %7232
  %7236 = fmul fast float %7233, 6.000000e+00
  %7237 = fmul fast float %7234, 6.000000e+00
  %7238 = fmul fast float %7235, 6.000000e+00
  %7239 = fadd fast float %7236, -3.000000e+00
  %7240 = fadd fast float %7237, -3.000000e+00
  %7241 = fadd fast float %7238, -3.000000e+00
  %7242 = call float @dx.op.unary.f32(i32 6, float %7239)  ; FAbs(value)
  %7243 = call float @dx.op.unary.f32(i32 6, float %7240)  ; FAbs(value)
  %7244 = call float @dx.op.unary.f32(i32 6, float %7241)  ; FAbs(value)
  %7245 = fadd fast float %7242, -1.000000e+00
  %7246 = fadd fast float %7243, -1.000000e+00
  %7247 = fadd fast float %7244, -1.000000e+00
  %7248 = call float @dx.op.unary.f32(i32 7, float %7245)  ; Saturate(value)
  %7249 = call float @dx.op.unary.f32(i32 7, float %7246)  ; Saturate(value)
  %7250 = call float @dx.op.unary.f32(i32 7, float %7247)  ; Saturate(value)
  br label %8132

; <label>:7251                                    ; preds = %7210
  %7252 = icmp eq i32 %7187, 2
  br i1 %7252, label %7253, label %7257

; <label>:7253                                    ; preds = %7251
  %7254 = fmul fast float %7206, %54
  %7255 = fmul fast float %7207, %55
  %7256 = fmul fast float %7208, %56
  br label %8132

; <label>:7257                                    ; preds = %7251
  %7258 = icmp eq i32 %7187, 3
  %7259 = icmp eq i32 %7187, 26
  %7260 = or i1 %7258, %7259
  br i1 %7260, label %7261, label %7361

; <label>:7261                                    ; preds = %7257
  br i1 %7258, label %7262, label %7273

; <label>:7262                                    ; preds = %7261
  %7263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %7264 = extractvalue %dx.types.CBufRet.f32 %7263, 3
  %7265 = fsub fast float %140, %7264
  %7266 = fmul fast float %7265, 0x3FD5555560000000
  %7267 = call float @dx.op.unary.f32(i32 7, float %7266)  ; Saturate(value)
  %7268 = fmul fast float %7267, 6.300000e+01
  %7269 = fptoui float %7268 to i32
  %7270 = uitofp i32 %7269 to float
  %7271 = fmul fast float %7270, 0x3FA8618620000000
  %7272 = fadd fast float %7271, %7264
  br label %7273

; <label>:7273                                    ; preds = %7262, %7261
  %7274 = phi float [ %7272, %7262 ], [ %54, %7261 ]
  %7275 = call float @dx.op.unary.f32(i32 27, float %7274)  ; Round_ni(value)
  %7276 = fadd fast float %7275, 1.000000e+00
  %7277 = call float @dx.op.unary.f32(i32 22, float %7274)  ; Frc(value)
  %7278 = fmul fast float %7275, 0x3FE3C6EF40000000
  %7279 = call float @dx.op.unary.f32(i32 22, float %7278)  ; Frc(value)
  %7280 = fadd fast float %7279, 0x3FE5555560000000
  %7281 = fadd fast float %7279, 0x3FD5555560000000
  %7282 = fsub fast float -0.000000e+00, %7279
  %7283 = fsub fast float -0.000000e+00, %7280
  %7284 = fsub fast float -0.000000e+00, %7281
  %7285 = fcmp fast oge float %7279, %7282
  %7286 = fcmp fast oge float %7280, %7283
  %7287 = fcmp fast oge float %7281, %7284
  %7288 = call float @dx.op.unary.f32(i32 6, float %7279)  ; FAbs(value)
  %7289 = call float @dx.op.unary.f32(i32 6, float %7280)  ; FAbs(value)
  %7290 = call float @dx.op.unary.f32(i32 6, float %7281)  ; FAbs(value)
  %7291 = call float @dx.op.unary.f32(i32 22, float %7288)  ; Frc(value)
  %7292 = call float @dx.op.unary.f32(i32 22, float %7289)  ; Frc(value)
  %7293 = call float @dx.op.unary.f32(i32 22, float %7290)  ; Frc(value)
  %7294 = fsub fast float -0.000000e+00, %7291
  %7295 = fsub fast float -0.000000e+00, %7292
  %7296 = fsub fast float -0.000000e+00, %7293
  %7297 = select i1 %7285, float %7291, float %7294
  %7298 = select i1 %7286, float %7292, float %7295
  %7299 = select i1 %7287, float %7293, float %7296
  %7300 = fmul fast float %7297, 6.000000e+00
  %7301 = fmul fast float %7298, 6.000000e+00
  %7302 = fmul fast float %7299, 6.000000e+00
  %7303 = fadd fast float %7300, -3.000000e+00
  %7304 = fadd fast float %7301, -3.000000e+00
  %7305 = fadd fast float %7302, -3.000000e+00
  %7306 = call float @dx.op.unary.f32(i32 6, float %7303)  ; FAbs(value)
  %7307 = call float @dx.op.unary.f32(i32 6, float %7304)  ; FAbs(value)
  %7308 = call float @dx.op.unary.f32(i32 6, float %7305)  ; FAbs(value)
  %7309 = fadd fast float %7306, -1.000000e+00
  %7310 = fadd fast float %7307, -1.000000e+00
  %7311 = fadd fast float %7308, -1.000000e+00
  %7312 = call float @dx.op.unary.f32(i32 7, float %7309)  ; Saturate(value)
  %7313 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7314 = call float @dx.op.unary.f32(i32 7, float %7311)  ; Saturate(value)
  %7315 = fmul fast float %7276, 0x3FE3C6EF40000000
  %7316 = call float @dx.op.unary.f32(i32 22, float %7315)  ; Frc(value)
  %7317 = fadd fast float %7316, 0x3FE5555560000000
  %7318 = fadd fast float %7316, 0x3FD5555560000000
  %7319 = fsub fast float -0.000000e+00, %7316
  %7320 = fsub fast float -0.000000e+00, %7317
  %7321 = fsub fast float -0.000000e+00, %7318
  %7322 = fcmp fast oge float %7316, %7319
  %7323 = fcmp fast oge float %7317, %7320
  %7324 = fcmp fast oge float %7318, %7321
  %7325 = call float @dx.op.unary.f32(i32 6, float %7316)  ; FAbs(value)
  %7326 = call float @dx.op.unary.f32(i32 6, float %7317)  ; FAbs(value)
  %7327 = call float @dx.op.unary.f32(i32 6, float %7318)  ; FAbs(value)
  %7328 = call float @dx.op.unary.f32(i32 22, float %7325)  ; Frc(value)
  %7329 = call float @dx.op.unary.f32(i32 22, float %7326)  ; Frc(value)
  %7330 = call float @dx.op.unary.f32(i32 22, float %7327)  ; Frc(value)
  %7331 = fsub fast float -0.000000e+00, %7328
  %7332 = fsub fast float -0.000000e+00, %7329
  %7333 = fsub fast float -0.000000e+00, %7330
  %7334 = select i1 %7322, float %7328, float %7331
  %7335 = select i1 %7323, float %7329, float %7332
  %7336 = select i1 %7324, float %7330, float %7333
  %7337 = fmul fast float %7334, 6.000000e+00
  %7338 = fmul fast float %7335, 6.000000e+00
  %7339 = fmul fast float %7336, 6.000000e+00
  %7340 = fadd fast float %7337, -3.000000e+00
  %7341 = fadd fast float %7338, -3.000000e+00
  %7342 = fadd fast float %7339, -3.000000e+00
  %7343 = call float @dx.op.unary.f32(i32 6, float %7340)  ; FAbs(value)
  %7344 = call float @dx.op.unary.f32(i32 6, float %7341)  ; FAbs(value)
  %7345 = call float @dx.op.unary.f32(i32 6, float %7342)  ; FAbs(value)
  %7346 = fadd fast float %7343, -1.000000e+00
  %7347 = fadd fast float %7344, -1.000000e+00
  %7348 = fadd fast float %7345, -1.000000e+00
  %7349 = call float @dx.op.unary.f32(i32 7, float %7346)  ; Saturate(value)
  %7350 = call float @dx.op.unary.f32(i32 7, float %7347)  ; Saturate(value)
  %7351 = call float @dx.op.unary.f32(i32 7, float %7348)  ; Saturate(value)
  %7352 = fsub fast float %7349, %7312
  %7353 = fsub fast float %7350, %7313
  %7354 = fsub fast float %7351, %7314
  %7355 = fmul fast float %7352, %7277
  %7356 = fmul fast float %7353, %7277
  %7357 = fmul fast float %7354, %7277
  %7358 = fadd fast float %7355, %7312
  %7359 = fadd fast float %7356, %7313
  %7360 = fadd fast float %7357, %7314
  br label %8132

; <label>:7361                                    ; preds = %7257
  %7362 = and i32 %7187, -2
  %7363 = icmp eq i32 %7362, 4
  br i1 %7363, label %7364, label %7373

; <label>:7364                                    ; preds = %7361
  %7365 = uitofp i32 %160 to float
  %7366 = fmul fast float %7365, 0x3FE3C6EF40000000
  %7367 = call float @dx.op.unary.f32(i32 22, float %7366)  ; Frc(value)
  %7368 = fmul fast float %7367, 5.000000e-01
  %7369 = fadd fast float %7368, 5.000000e-01
  %7370 = fmul fast float %7369, %54
  %7371 = fmul fast float %7369, %55
  %7372 = fmul fast float %7369, %56
  br label %8132

; <label>:7373                                    ; preds = %7361
  %7374 = icmp eq i32 %7187, 6
  br i1 %7374, label %8132, label %7375

; <label>:7375                                    ; preds = %7373
  %7376 = icmp eq i32 %7187, 7
  br i1 %7376, label %8132, label %7377

; <label>:7377                                    ; preds = %7375
  %7378 = icmp eq i32 %7187, 8
  br i1 %7378, label %8132, label %7379

; <label>:7379                                    ; preds = %7377
  %7380 = icmp eq i32 %7187, 9
  br i1 %7380, label %7381, label %7393

; <label>:7381                                    ; preds = %7379
  %7382 = fcmp fast ogt float %307, 0.000000e+00
  %7383 = call float @dx.op.dot2.f32(i32 54, float %302, float %303, float %302, float %303)  ; Dot2(ax,ay,bx,by)
  %7384 = call float @dx.op.unary.f32(i32 25, float %7383)  ; Rsqrt(value)
  %7385 = fmul fast float %302, 5.000000e-01
  %7386 = fmul fast float %7385, %7384
  %7387 = fmul fast float %303, 5.000000e-01
  %7388 = fmul fast float %7387, %7384
  %7389 = fadd fast float %7386, 5.000000e-01
  %7390 = select i1 %7382, float %7389, float 5.000000e-01
  %7391 = fadd fast float %7388, 5.000000e-01
  %7392 = select i1 %7382, float %7391, float 5.000000e-01
  br label %8132

; <label>:7393                                    ; preds = %7379
  %7394 = icmp eq i32 %7187, 10
  br i1 %7394, label %7395, label %7397

; <label>:7395                                    ; preds = %7393
  %7396 = fmul fast float %307, 0x3F747AE140000000
  br label %8132

; <label>:7397                                    ; preds = %7393
  %7398 = icmp eq i32 %7187, 11
  br i1 %7398, label %8132, label %7399

; <label>:7399                                    ; preds = %7397
  %7400 = icmp eq i32 %7187, 12
  br i1 %7400, label %8132, label %7401

; <label>:7401                                    ; preds = %7399
  %7402 = icmp eq i32 %7187, 13
  br i1 %7402, label %8132, label %7403

; <label>:7403                                    ; preds = %7401
  %7404 = icmp eq i32 %7187, 14
  br i1 %7404, label %8132, label %7405

; <label>:7405                                    ; preds = %7403
  %7406 = icmp eq i32 %7187, 15
  br i1 %7406, label %8132, label %7407

; <label>:7407                                    ; preds = %7405
  %7408 = icmp eq i32 %7187, 16
  br i1 %7408, label %8132, label %7409

; <label>:7409                                    ; preds = %7407
  %7410 = icmp eq i32 %7187, 17
  br i1 %7410, label %8132, label %7411

; <label>:7411                                    ; preds = %7409
  %7412 = icmp eq i32 %7187, 18
  br i1 %7412, label %8132, label %7413

; <label>:7413                                    ; preds = %7411
  %7414 = icmp eq i32 %7187, 19
  br i1 %7414, label %8132, label %7415

; <label>:7415                                    ; preds = %7413
  %7416 = icmp eq i32 %7187, 20
  br i1 %7416, label %7417, label %7422

; <label>:7417                                    ; preds = %7415
  %7418 = fmul fast float %787, 5.000000e-01
  %7419 = fmul fast float %788, 5.000000e-01
  %7420 = fadd fast float %7418, 5.000000e-01
  %7421 = fadd fast float %7419, 5.000000e-01
  br label %8132

; <label>:7422                                    ; preds = %7415
  %7423 = and i32 %7187, -9
  %7424 = icmp eq i32 %7423, 21
  br i1 %7424, label %8132, label %7425

; <label>:7425                                    ; preds = %7422
  %7426 = icmp eq i32 %7187, 22
  %7427 = icmp eq i32 %7187, 38
  %7428 = or i1 %7426, %7427
  br i1 %7428, label %7429, label %7543

; <label>:7429                                    ; preds = %7425
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7434 = fadd fast float %7431, %116
  %7435 = fadd fast float %7432, %117
  %7436 = fadd fast float %7433, %118
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 0
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7442 = extractvalue %dx.types.CBufRet.f32 %7441, 0
  %7443 = extractvalue %dx.types.CBufRet.f32 %7437, 1
  %7444 = extractvalue %dx.types.CBufRet.f32 %7439, 1
  %7445 = extractvalue %dx.types.CBufRet.f32 %7441, 1
  %7446 = extractvalue %dx.types.CBufRet.f32 %7437, 3
  %7447 = extractvalue %dx.types.CBufRet.f32 %7439, 3
  %7448 = extractvalue %dx.types.CBufRet.f32 %7441, 3
  %7449 = fadd fast float %7434, %7446
  %7450 = fadd fast float %7435, %7447
  %7451 = fadd fast float %7436, %7448
  %7452 = fmul fast float %7449, %7438
  %7453 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7440, float %7452)  ; FMad(a,b,c)
  %7454 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7442, float %7453)  ; FMad(a,b,c)
  %7455 = fmul fast float %7449, %7443
  %7456 = call float @dx.op.tertiary.f32(i32 46, float %7450, float %7444, float %7455)  ; FMad(a,b,c)
  %7457 = call float @dx.op.tertiary.f32(i32 46, float %7451, float %7445, float %7456)  ; FMad(a,b,c)
  %7458 = fsub fast float %7454, %7446
  %7459 = fsub fast float %7457, %7447
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %7461 = extractvalue %dx.types.CBufRet.f32 %7460, 0
  %7462 = extractvalue %dx.types.CBufRet.f32 %7460, 1
  %7463 = fsub fast float %7458, %7461
  %7464 = fsub fast float %7459, %7462
  %7465 = fmul fast float %7463, %7463
  %7466 = fmul fast float %7464, %7464
  %7467 = fadd fast float %7465, %7466
  %7468 = call float @dx.op.unary.f32(i32 24, float %7467)  ; Sqrt(value)
  %7469 = extractvalue %dx.types.CBufRet.f32 %7460, 2
  %7470 = fcmp fast olt float %7468, %7469
  br i1 %7470, label %7471, label %8132

; <label>:7471                                    ; preds = %7429
  %7472 = fadd fast float %7463, %7469
  %7473 = fadd fast float %7464, %7469
  %7474 = extractvalue %dx.types.CBufRet.f32 %7460, 3
  %7475 = fmul fast float %7472, %7474
  %7476 = fmul fast float %7473, %7474
  %7477 = call float @dx.op.unary.f32(i32 7, float %7475)  ; Saturate(value)
  %7478 = call float @dx.op.unary.f32(i32 7, float %7476)  ; Saturate(value)
  %7479 = fsub fast float 1.000000e+00, %7477
  %7480 = fsub fast float 1.000000e+00, %7478
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %45, float %7479, float %7480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = fcmp fast ugt float %7482, 0.000000e+00
  br i1 %7483, label %7484, label %8132

; <label>:7484                                    ; preds = %7471
  br i1 %7426, label %7485, label %7490

; <label>:7485                                    ; preds = %7484
  %7486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %37, %dx.types.Handle %45, float %7479, float %7480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.ResRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.ResRet.f32 %7486, 2
  br label %8132

; <label>:7490                                    ; preds = %7484
  %7491 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %38, i32 0)  ; GetDimensions(handle,mipLevel)
  %7492 = extractvalue %dx.types.Dimensions %7491, 0
  %7493 = sitofp i32 %7492 to float
  %7494 = extractvalue %dx.types.Dimensions %7491, 1
  %7495 = sitofp i32 %7494 to float
  %7496 = fmul fast float %7493, %7479
  %7497 = fmul fast float %7495, %7480
  %7498 = call float @dx.op.unary.f32(i32 27, float %7496)  ; Round_ni(value)
  %7499 = call float @dx.op.unary.f32(i32 27, float %7497)  ; Round_ni(value)
  %7500 = fptoui float %7493 to i32
  %7501 = uitofp i32 %7500 to float
  %7502 = fmul fast float %7501, %7499
  %7503 = fadd fast float %7502, %7498
  %7504 = fptoui float %7503 to i32
  %7505 = uitofp i32 %7504 to float
  %7506 = fmul fast float %7505, 0x3FE3C6EF40000000
  %7507 = call float @dx.op.unary.f32(i32 22, float %7506)  ; Frc(value)
  %7508 = fadd fast float %7507, 0x3FE5555560000000
  %7509 = fadd fast float %7507, 0x3FD5555560000000
  %7510 = fsub fast float -0.000000e+00, %7507
  %7511 = fsub fast float -0.000000e+00, %7508
  %7512 = fsub fast float -0.000000e+00, %7509
  %7513 = fcmp fast oge float %7507, %7510
  %7514 = fcmp fast oge float %7508, %7511
  %7515 = fcmp fast oge float %7509, %7512
  %7516 = call float @dx.op.unary.f32(i32 6, float %7507)  ; FAbs(value)
  %7517 = call float @dx.op.unary.f32(i32 6, float %7508)  ; FAbs(value)
  %7518 = call float @dx.op.unary.f32(i32 6, float %7509)  ; FAbs(value)
  %7519 = call float @dx.op.unary.f32(i32 22, float %7516)  ; Frc(value)
  %7520 = call float @dx.op.unary.f32(i32 22, float %7517)  ; Frc(value)
  %7521 = call float @dx.op.unary.f32(i32 22, float %7518)  ; Frc(value)
  %7522 = fsub fast float -0.000000e+00, %7519
  %7523 = fsub fast float -0.000000e+00, %7520
  %7524 = fsub fast float -0.000000e+00, %7521
  %7525 = select i1 %7513, float %7519, float %7522
  %7526 = select i1 %7514, float %7520, float %7523
  %7527 = select i1 %7515, float %7521, float %7524
  %7528 = fmul fast float %7525, 6.000000e+00
  %7529 = fmul fast float %7526, 6.000000e+00
  %7530 = fmul fast float %7527, 6.000000e+00
  %7531 = fadd fast float %7528, -3.000000e+00
  %7532 = fadd fast float %7529, -3.000000e+00
  %7533 = fadd fast float %7530, -3.000000e+00
  %7534 = call float @dx.op.unary.f32(i32 6, float %7531)  ; FAbs(value)
  %7535 = call float @dx.op.unary.f32(i32 6, float %7532)  ; FAbs(value)
  %7536 = call float @dx.op.unary.f32(i32 6, float %7533)  ; FAbs(value)
  %7537 = fadd fast float %7534, -1.000000e+00
  %7538 = fadd fast float %7535, -1.000000e+00
  %7539 = fadd fast float %7536, -1.000000e+00
  %7540 = call float @dx.op.unary.f32(i32 7, float %7537)  ; Saturate(value)
  %7541 = call float @dx.op.unary.f32(i32 7, float %7538)  ; Saturate(value)
  %7542 = call float @dx.op.unary.f32(i32 7, float %7539)  ; Saturate(value)
  br label %8132

; <label>:7543                                    ; preds = %7425
  %7544 = icmp eq i32 %7187, 39
  br i1 %7544, label %7545, label %7649

; <label>:7545                                    ; preds = %7543
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = fadd fast float %7547, %116
  %7551 = fadd fast float %7548, %117
  %7552 = fadd fast float %7549, %118
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 0
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %7558 = extractvalue %dx.types.CBufRet.f32 %7557, 0
  %7559 = extractvalue %dx.types.CBufRet.f32 %7553, 1
  %7560 = extractvalue %dx.types.CBufRet.f32 %7555, 1
  %7561 = extractvalue %dx.types.CBufRet.f32 %7557, 1
  %7562 = extractvalue %dx.types.CBufRet.f32 %7553, 3
  %7563 = extractvalue %dx.types.CBufRet.f32 %7555, 3
  %7564 = extractvalue %dx.types.CBufRet.f32 %7557, 3
  %7565 = fadd fast float %7550, %7562
  %7566 = fadd fast float %7551, %7563
  %7567 = fadd fast float %7552, %7564
  %7568 = fmul fast float %7565, %7554
  %7569 = call float @dx.op.tertiary.f32(i32 46, float %7566, float %7556, float %7568)  ; FMad(a,b,c)
  %7570 = call float @dx.op.tertiary.f32(i32 46, float %7567, float %7558, float %7569)  ; FMad(a,b,c)
  %7571 = fmul fast float %7565, %7559
  %7572 = call float @dx.op.tertiary.f32(i32 46, float %7566, float %7560, float %7571)  ; FMad(a,b,c)
  %7573 = call float @dx.op.tertiary.f32(i32 46, float %7567, float %7561, float %7572)  ; FMad(a,b,c)
  %7574 = fsub fast float %7570, %7562
  %7575 = fsub fast float %7573, %7563
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %7577 = extractvalue %dx.types.CBufRet.f32 %7576, 0
  %7578 = extractvalue %dx.types.CBufRet.f32 %7576, 1
  %7579 = fsub fast float %7574, %7577
  %7580 = fsub fast float %7575, %7578
  %7581 = fmul fast float %7579, %7579
  %7582 = fmul fast float %7580, %7580
  %7583 = fadd fast float %7581, %7582
  %7584 = call float @dx.op.unary.f32(i32 24, float %7583)  ; Sqrt(value)
  %7585 = extractvalue %dx.types.CBufRet.f32 %7576, 2
  %7586 = fcmp fast olt float %7584, %7585
  br i1 %7586, label %7587, label %8132

; <label>:7587                                    ; preds = %7545
  %7588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %36, i32 0)  ; GetDimensions(handle,mipLevel)
  %7589 = extractvalue %dx.types.Dimensions %7588, 0
  %7590 = sitofp i32 %7589 to float
  %7591 = extractvalue %dx.types.Dimensions %7588, 1
  %7592 = sitofp i32 %7591 to float
  %7593 = fadd fast float %7579, %7585
  %7594 = fadd fast float %7580, %7585
  %7595 = extractvalue %dx.types.CBufRet.f32 %7576, 3
  %7596 = fmul fast float %7593, %7595
  %7597 = fmul fast float %7594, %7595
  %7598 = call float @dx.op.unary.f32(i32 7, float %7596)  ; Saturate(value)
  %7599 = call float @dx.op.unary.f32(i32 7, float %7597)  ; Saturate(value)
  %7600 = fsub fast float 1.000000e+00, %7598
  %7601 = fsub fast float 1.000000e+00, %7599
  %7602 = fmul fast float %7600, %7590
  %7603 = fmul fast float %7601, %7592
  %7604 = call float @dx.op.unary.f32(i32 27, float %7602)  ; Round_ni(value)
  %7605 = call float @dx.op.unary.f32(i32 27, float %7603)  ; Round_ni(value)
  %7606 = fptoui float %7590 to i32
  %7607 = uitofp i32 %7606 to float
  %7608 = fmul fast float %7605, %7607
  %7609 = fadd fast float %7608, %7604
  %7610 = fptoui float %7609 to i32
  %7611 = uitofp i32 %7610 to float
  %7612 = fmul fast float %7611, 0x3FE3C6EF40000000
  %7613 = call float @dx.op.unary.f32(i32 22, float %7612)  ; Frc(value)
  %7614 = fadd fast float %7613, 0x3FE5555560000000
  %7615 = fadd fast float %7613, 0x3FD5555560000000
  %7616 = fsub fast float -0.000000e+00, %7613
  %7617 = fsub fast float -0.000000e+00, %7614
  %7618 = fsub fast float -0.000000e+00, %7615
  %7619 = fcmp fast oge float %7613, %7616
  %7620 = fcmp fast oge float %7614, %7617
  %7621 = fcmp fast oge float %7615, %7618
  %7622 = call float @dx.op.unary.f32(i32 6, float %7613)  ; FAbs(value)
  %7623 = call float @dx.op.unary.f32(i32 6, float %7614)  ; FAbs(value)
  %7624 = call float @dx.op.unary.f32(i32 6, float %7615)  ; FAbs(value)
  %7625 = call float @dx.op.unary.f32(i32 22, float %7622)  ; Frc(value)
  %7626 = call float @dx.op.unary.f32(i32 22, float %7623)  ; Frc(value)
  %7627 = call float @dx.op.unary.f32(i32 22, float %7624)  ; Frc(value)
  %7628 = fsub fast float -0.000000e+00, %7625
  %7629 = fsub fast float -0.000000e+00, %7626
  %7630 = fsub fast float -0.000000e+00, %7627
  %7631 = select i1 %7619, float %7625, float %7628
  %7632 = select i1 %7620, float %7626, float %7629
  %7633 = select i1 %7621, float %7627, float %7630
  %7634 = fmul fast float %7631, 6.000000e+00
  %7635 = fmul fast float %7632, 6.000000e+00
  %7636 = fmul fast float %7633, 6.000000e+00
  %7637 = fadd fast float %7634, -3.000000e+00
  %7638 = fadd fast float %7635, -3.000000e+00
  %7639 = fadd fast float %7636, -3.000000e+00
  %7640 = call float @dx.op.unary.f32(i32 6, float %7637)  ; FAbs(value)
  %7641 = call float @dx.op.unary.f32(i32 6, float %7638)  ; FAbs(value)
  %7642 = call float @dx.op.unary.f32(i32 6, float %7639)  ; FAbs(value)
  %7643 = fadd fast float %7640, -1.000000e+00
  %7644 = fadd fast float %7641, -1.000000e+00
  %7645 = fadd fast float %7642, -1.000000e+00
  %7646 = call float @dx.op.unary.f32(i32 7, float %7643)  ; Saturate(value)
  %7647 = call float @dx.op.unary.f32(i32 7, float %7644)  ; Saturate(value)
  %7648 = call float @dx.op.unary.f32(i32 7, float %7645)  ; Saturate(value)
  br label %8132

; <label>:7649                                    ; preds = %7543
  %7650 = icmp eq i32 %7187, 23
  br i1 %7650, label %8132, label %7651

; <label>:7651                                    ; preds = %7649
  %7652 = icmp eq i32 %7187, 24
  br i1 %7652, label %7653, label %7679

; <label>:7653                                    ; preds = %7651
  %7654 = and i32 %339, 255
  %7655 = uitofp i32 %7654 to float
  %7656 = fptoui float %7655 to i32
  %7657 = uitofp i32 %7656 to float
  %7658 = fadd fast float %7657, -4.000000e+00
  %7659 = fmul fast float %7658, 0x3FB5555560000000
  %7660 = call float @dx.op.unary.f32(i32 7, float %7659)  ; Saturate(value)
  %7661 = icmp eq i32 %7656, 0
  %7662 = select i1 %7661, float 0.000000e+00, float %7660
  %7663 = icmp ult i32 %7656, 2
  %7664 = select i1 %7663, float 0.000000e+00, float %7660
  %7665 = add i32 %7656, -1
  %7666 = icmp ult i32 %7665, 2
  %7667 = select i1 %7666, float 1.000000e+00, float %7662
  %7668 = icmp ult i32 %7656, 4
  %7669 = select i1 %7668, float 0.000000e+00, float 1.000000e+00
  %7670 = and i32 %7656, -2
  %7671 = icmp eq i32 %7670, 2
  %7672 = icmp eq i32 %7656, 4
  %7673 = select i1 %7672, float 1.000000e+00, float %7669
  %7674 = or i1 %7672, %7671
  %7675 = select i1 %7674, float 1.000000e+00, float %7664
  %7676 = add i32 %7656, -3
  %7677 = icmp ult i32 %7676, 2
  %7678 = select i1 %7677, float 0.000000e+00, float %7667
  br label %8132

; <label>:7679                                    ; preds = %7651
  %7680 = icmp eq i32 %7187, 25
  br i1 %7680, label %8132, label %7681

; <label>:7681                                    ; preds = %7679
  %7682 = icmp eq i32 %7187, 27
  br i1 %7682, label %7683, label %7738

; <label>:7683                                    ; preds = %7681
  %7684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7685 = extractvalue %dx.types.CBufRet.f32 %7684, 2
  %7686 = fptoui float %7685 to i32
  %7687 = fptoui float %140 to i32
  %7688 = and i32 %7687, 31
  %7689 = lshr i32 %7686, %7688
  %7690 = uitofp i32 %7689 to float
  %7691 = fmul fast float %7690, %61
  %7692 = fmul fast float %7690, %62
  %7693 = call float @dx.op.unary.f32(i32 27, float %7691)  ; Round_ni(value)
  %7694 = call float @dx.op.unary.f32(i32 27, float %7692)  ; Round_ni(value)
  %7695 = fptoui float %7693 to i32
  %7696 = fptoui float %7694 to i32
  %7697 = fptoui float %7690 to i32
  %7698 = mul i32 %7697, %7696
  %7699 = add i32 %7698, %7695
  %7700 = uitofp i32 %7699 to float
  %7701 = fmul fast float %7700, 0x3FE3C6EF40000000
  %7702 = call float @dx.op.unary.f32(i32 22, float %7701)  ; Frc(value)
  %7703 = fadd fast float %7702, 0x3FE5555560000000
  %7704 = fadd fast float %7702, 0x3FD5555560000000
  %7705 = fsub fast float -0.000000e+00, %7702
  %7706 = fsub fast float -0.000000e+00, %7703
  %7707 = fsub fast float -0.000000e+00, %7704
  %7708 = fcmp fast oge float %7702, %7705
  %7709 = fcmp fast oge float %7703, %7706
  %7710 = fcmp fast oge float %7704, %7707
  %7711 = call float @dx.op.unary.f32(i32 6, float %7702)  ; FAbs(value)
  %7712 = call float @dx.op.unary.f32(i32 6, float %7703)  ; FAbs(value)
  %7713 = call float @dx.op.unary.f32(i32 6, float %7704)  ; FAbs(value)
  %7714 = call float @dx.op.unary.f32(i32 22, float %7711)  ; Frc(value)
  %7715 = call float @dx.op.unary.f32(i32 22, float %7712)  ; Frc(value)
  %7716 = call float @dx.op.unary.f32(i32 22, float %7713)  ; Frc(value)
  %7717 = fsub fast float -0.000000e+00, %7714
  %7718 = fsub fast float -0.000000e+00, %7715
  %7719 = fsub fast float -0.000000e+00, %7716
  %7720 = select i1 %7708, float %7714, float %7717
  %7721 = select i1 %7709, float %7715, float %7718
  %7722 = select i1 %7710, float %7716, float %7719
  %7723 = fmul fast float %7720, 6.000000e+00
  %7724 = fmul fast float %7721, 6.000000e+00
  %7725 = fmul fast float %7722, 6.000000e+00
  %7726 = fadd fast float %7723, -3.000000e+00
  %7727 = fadd fast float %7724, -3.000000e+00
  %7728 = fadd fast float %7725, -3.000000e+00
  %7729 = call float @dx.op.unary.f32(i32 6, float %7726)  ; FAbs(value)
  %7730 = call float @dx.op.unary.f32(i32 6, float %7727)  ; FAbs(value)
  %7731 = call float @dx.op.unary.f32(i32 6, float %7728)  ; FAbs(value)
  %7732 = fadd fast float %7729, -1.000000e+00
  %7733 = fadd fast float %7730, -1.000000e+00
  %7734 = fadd fast float %7731, -1.000000e+00
  %7735 = call float @dx.op.unary.f32(i32 7, float %7732)  ; Saturate(value)
  %7736 = call float @dx.op.unary.f32(i32 7, float %7733)  ; Saturate(value)
  %7737 = call float @dx.op.unary.f32(i32 7, float %7734)  ; Saturate(value)
  br label %8132

; <label>:7738                                    ; preds = %7681
  %7739 = icmp eq i32 %7187, 30
  br i1 %7739, label %7740, label %7780

; <label>:7740                                    ; preds = %7738
  %7741 = fcmp fast olt float %389, 0.000000e+00
  br i1 %7741, label %8132, label %7742

; <label>:7742                                    ; preds = %7740
  %7743 = fmul fast float %389, 0x3FE3C6EF40000000
  %7744 = call float @dx.op.unary.f32(i32 22, float %7743)  ; Frc(value)
  %7745 = fadd fast float %7744, 0x3FE5555560000000
  %7746 = fadd fast float %7744, 0x3FD5555560000000
  %7747 = fsub fast float -0.000000e+00, %7744
  %7748 = fsub fast float -0.000000e+00, %7745
  %7749 = fsub fast float -0.000000e+00, %7746
  %7750 = fcmp fast oge float %7744, %7747
  %7751 = fcmp fast oge float %7745, %7748
  %7752 = fcmp fast oge float %7746, %7749
  %7753 = call float @dx.op.unary.f32(i32 6, float %7744)  ; FAbs(value)
  %7754 = call float @dx.op.unary.f32(i32 6, float %7745)  ; FAbs(value)
  %7755 = call float @dx.op.unary.f32(i32 6, float %7746)  ; FAbs(value)
  %7756 = call float @dx.op.unary.f32(i32 22, float %7753)  ; Frc(value)
  %7757 = call float @dx.op.unary.f32(i32 22, float %7754)  ; Frc(value)
  %7758 = call float @dx.op.unary.f32(i32 22, float %7755)  ; Frc(value)
  %7759 = fsub fast float -0.000000e+00, %7756
  %7760 = fsub fast float -0.000000e+00, %7757
  %7761 = fsub fast float -0.000000e+00, %7758
  %7762 = select i1 %7750, float %7756, float %7759
  %7763 = select i1 %7751, float %7757, float %7760
  %7764 = select i1 %7752, float %7758, float %7761
  %7765 = fmul fast float %7762, 6.000000e+00
  %7766 = fmul fast float %7763, 6.000000e+00
  %7767 = fmul fast float %7764, 6.000000e+00
  %7768 = fadd fast float %7765, -3.000000e+00
  %7769 = fadd fast float %7766, -3.000000e+00
  %7770 = fadd fast float %7767, -3.000000e+00
  %7771 = call float @dx.op.unary.f32(i32 6, float %7768)  ; FAbs(value)
  %7772 = call float @dx.op.unary.f32(i32 6, float %7769)  ; FAbs(value)
  %7773 = call float @dx.op.unary.f32(i32 6, float %7770)  ; FAbs(value)
  %7774 = fadd fast float %7771, -1.000000e+00
  %7775 = fadd fast float %7772, -1.000000e+00
  %7776 = fadd fast float %7773, -1.000000e+00
  %7777 = call float @dx.op.unary.f32(i32 7, float %7774)  ; Saturate(value)
  %7778 = call float @dx.op.unary.f32(i32 7, float %7775)  ; Saturate(value)
  %7779 = call float @dx.op.unary.f32(i32 7, float %7776)  ; Saturate(value)
  br label %8132

; <label>:7780                                    ; preds = %7738
  %7781 = add i32 %7187, -31
  %7782 = icmp ult i32 %7781, 2
  br i1 %7782, label %7783, label %7791

; <label>:7783                                    ; preds = %7780
  %7784 = fcmp fast olt float %390, 0.000000e+00
  %7785 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %7786 = fmul fast float %7785, 5.000000e-01
  %7787 = call float @dx.op.unary.f32(i32 7, float %7786)  ; Saturate(value)
  %7788 = select i1 %7784, float 0.000000e+00, float %7787
  %7789 = select i1 %7784, float %7787, float 0.000000e+00
  %7790 = fadd fast float %7787, 5.000000e-01
  br label %8132

; <label>:7791                                    ; preds = %7780
  %7792 = icmp eq i32 %7187, 36
  br i1 %7792, label %7793, label %7825

; <label>:7793                                    ; preds = %7791
  %7794 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.i32 %7794, 0
  %7796 = and i32 %7795, 2048
  %7797 = icmp ne i32 %7796, 0
  %7798 = call float @dx.op.binary.f32(i32 35, float %1710, float %1711)  ; FMax(a,b)
  %7799 = call float @dx.op.binary.f32(i32 35, float %1709, float %7798)  ; FMax(a,b)
  %7800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %7801 = extractvalue %dx.types.CBufRet.f32 %7800, 1
  %7802 = fcmp fast oge float %7799, %7801
  %7803 = and i1 %7797, %7802
  br i1 %7803, label %7804, label %7810

; <label>:7804                                    ; preds = %7793
  %7805 = fsub fast float 1.000000e+00, %7206
  %7806 = fmul fast float %7805, 5.000000e-01
  %7807 = fadd fast float %7806, %7206
  %7808 = fmul fast float %7207, 5.000000e-01
  %7809 = fmul fast float %7208, 5.000000e-01
  br label %8132

; <label>:7810                                    ; preds = %7793
  %7811 = call float @dx.op.dot3.f32(i32 55, float %1662, float %1663, float %1664, float %1601, float %1602, float %1603)  ; Dot3(ax,ay,az,bx,by,bz)
  %7812 = and i32 %7795, 1024
  %7813 = icmp ne i32 %7812, 0
  %7814 = extractvalue %dx.types.CBufRet.f32 %7800, 2
  %7815 = fcmp fast ole float %7811, %7814
  %7816 = and i1 %7813, %7815
  br i1 %7816, label %7817, label %8132

; <label>:7817                                    ; preds = %7810
  %7818 = fsub fast float 1.000000e+00, %7206
  %7819 = fsub fast float 1.000000e+00, %7207
  %7820 = fmul fast float %7818, 5.000000e-01
  %7821 = fmul fast float %7819, 5.000000e-01
  %7822 = fadd fast float %7820, %7206
  %7823 = fadd fast float %7821, %7207
  %7824 = fmul fast float %7208, 5.000000e-01
  br label %8132

; <label>:7825                                    ; preds = %7791
  %7826 = icmp eq i32 %7187, 40
  br i1 %7826, label %7827, label %8070

; <label>:7827                                    ; preds = %7825
  %7828 = fmul fast float %116, %116
  %7829 = fmul fast float %117, %117
  %7830 = fadd fast float %7829, %7828
  %7831 = fmul fast float %118, %118
  %7832 = fadd fast float %7830, %7831
  %7833 = call float @dx.op.unary.f32(i32 24, float %7832)  ; Sqrt(value)
  %7834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7835 = extractvalue %dx.types.CBufRet.f32 %7834, 0
  %7836 = fcmp fast ogt float %7833, %7835
  %7837 = zext i1 %7836 to i32
  %7838 = extractvalue %dx.types.CBufRet.f32 %7834, 1
  %7839 = fcmp fast ogt float %7833, %7838
  %7840 = zext i1 %7839 to i32
  %7841 = add nuw nsw i32 %7840, %7837
  %7842 = extractvalue %dx.types.CBufRet.f32 %7834, 2
  %7843 = fcmp fast ogt float %7833, %7842
  %7844 = zext i1 %7843 to i32
  %7845 = add nuw nsw i32 %7841, %7844
  %7846 = icmp ult i32 %7845, 3
  %7847 = zext i1 %7846 to i32
  %7848 = shl nuw nsw i32 %7845, 2
  %7849 = add nuw nsw i32 %7848, 48
  %7850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7849)  ; CBufferLoadLegacy(handle,regIndex)
  %7851 = extractvalue %dx.types.CBufRet.f32 %7850, 1
  %7852 = fcmp fast ogt float %7833, %7851
  %7853 = zext i1 %7852 to i32
  %7854 = or i32 %7848, 1
  %7855 = add nuw nsw i32 %7854, 48
  %7856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7855)  ; CBufferLoadLegacy(handle,regIndex)
  %7857 = extractvalue %dx.types.CBufRet.f32 %7856, 1
  %7858 = fcmp fast ogt float %7833, %7857
  %7859 = zext i1 %7858 to i32
  %7860 = add nuw nsw i32 %7859, %7853
  %7861 = or i32 %7848, 2
  %7862 = add nuw nsw i32 %7861, 48
  %7863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7862)  ; CBufferLoadLegacy(handle,regIndex)
  %7864 = extractvalue %dx.types.CBufRet.f32 %7863, 1
  %7865 = fcmp fast ogt float %7833, %7864
  %7866 = zext i1 %7865 to i32
  %7867 = add nuw nsw i32 %7860, %7866
  %7868 = call i32 @dx.op.binary.i32(i32 40, i32 %7867, i32 3)  ; UMin(a,b)
  %7869 = add i32 %7848, %7868
  %7870 = call i32 @dx.op.binary.i32(i32 40, i32 %7869, i32 12)  ; UMin(a,b)
  %7871 = add i32 %7870, 48
  %7872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7871)  ; CBufferLoadLegacy(handle,regIndex)
  %7873 = extractvalue %dx.types.CBufRet.f32 %7872, 0
  %7874 = fcmp fast oge float %7833, %7873
  %7875 = zext i1 %7874 to i32
  %7876 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %7847)  ; UMin(a,b)
  %7877 = call i32 @dx.op.binary.i32(i32 40, i32 %7875, i32 %7876)  ; UMin(a,b)
  %7878 = fmul fast float %7177, 7.500000e-01
  %7879 = fadd fast float %7878, %7175
  %7880 = fcmp fast ult float %7172, %7879
  br i1 %7880, label %7920, label %7881

; <label>:7881                                    ; preds = %7827
  %7882 = uitofp i32 %7870 to float
  %7883 = fmul fast float %7882, 0x3FE3C6EF40000000
  %7884 = call float @dx.op.unary.f32(i32 22, float %7883)  ; Frc(value)
  %7885 = fadd fast float %7884, 0x3FE5555560000000
  %7886 = fadd fast float %7884, 0x3FD5555560000000
  %7887 = fsub fast float -0.000000e+00, %7884
  %7888 = fsub fast float -0.000000e+00, %7885
  %7889 = fsub fast float -0.000000e+00, %7886
  %7890 = fcmp fast oge float %7884, %7887
  %7891 = fcmp fast oge float %7885, %7888
  %7892 = fcmp fast oge float %7886, %7889
  %7893 = call float @dx.op.unary.f32(i32 6, float %7884)  ; FAbs(value)
  %7894 = call float @dx.op.unary.f32(i32 6, float %7885)  ; FAbs(value)
  %7895 = call float @dx.op.unary.f32(i32 6, float %7886)  ; FAbs(value)
  %7896 = call float @dx.op.unary.f32(i32 22, float %7893)  ; Frc(value)
  %7897 = call float @dx.op.unary.f32(i32 22, float %7894)  ; Frc(value)
  %7898 = call float @dx.op.unary.f32(i32 22, float %7895)  ; Frc(value)
  %7899 = fsub fast float -0.000000e+00, %7896
  %7900 = fsub fast float -0.000000e+00, %7897
  %7901 = fsub fast float -0.000000e+00, %7898
  %7902 = select i1 %7890, float %7896, float %7899
  %7903 = select i1 %7891, float %7897, float %7900
  %7904 = select i1 %7892, float %7898, float %7901
  %7905 = fmul fast float %7902, 6.000000e+00
  %7906 = fmul fast float %7903, 6.000000e+00
  %7907 = fmul fast float %7904, 6.000000e+00
  %7908 = fadd fast float %7905, -3.000000e+00
  %7909 = fadd fast float %7906, -3.000000e+00
  %7910 = fadd fast float %7907, -3.000000e+00
  %7911 = call float @dx.op.unary.f32(i32 6, float %7908)  ; FAbs(value)
  %7912 = call float @dx.op.unary.f32(i32 6, float %7909)  ; FAbs(value)
  %7913 = call float @dx.op.unary.f32(i32 6, float %7910)  ; FAbs(value)
  %7914 = fadd fast float %7911, -1.000000e+00
  %7915 = fadd fast float %7912, -1.000000e+00
  %7916 = fadd fast float %7913, -1.000000e+00
  %7917 = call float @dx.op.unary.f32(i32 7, float %7914)  ; Saturate(value)
  %7918 = call float @dx.op.unary.f32(i32 7, float %7915)  ; Saturate(value)
  %7919 = call float @dx.op.unary.f32(i32 7, float %7916)  ; Saturate(value)
  br label %8057

; <label>:7920                                    ; preds = %7827
  %7921 = fmul fast float %7177, 5.000000e-01
  %7922 = fadd fast float %7921, %7175
  %7923 = fcmp fast ult float %7172, %7922
  br i1 %7923, label %7950, label %7924

; <label>:7924                                    ; preds = %7920
  %7925 = add i32 %7877, 4
  %7926 = icmp eq i32 %7925, 0
  br i1 %7926, label %8057, label %7927

; <label>:7927                                    ; preds = %7924
  br label %7928

; <label>:7928                                    ; preds = %7928, %7927
  %7929 = phi float [ %7945, %7928 ], [ 0.000000e+00, %7927 ]
  %7930 = phi i32 [ %7946, %7928 ], [ 0, %7927 ]
  %7931 = add i32 %7870, 32
  %7932 = add i32 %7931, %7930
  %7933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7932)  ; CBufferLoadLegacy(handle,regIndex)
  %7934 = extractvalue %dx.types.CBufRet.f32 %7933, 0
  %7935 = extractvalue %dx.types.CBufRet.f32 %7933, 1
  %7936 = extractvalue %dx.types.CBufRet.f32 %7933, 2
  %7937 = extractvalue %dx.types.CBufRet.f32 %7933, 3
  %7938 = fmul fast float %7934, %7833
  %7939 = fadd fast float %7938, %7935
  %7940 = call float @dx.op.unary.f32(i32 7, float %7939)  ; Saturate(value)
  %7941 = fmul fast float %7936, %7833
  %7942 = fadd fast float %7941, %7937
  %7943 = call float @dx.op.unary.f32(i32 7, float %7942)  ; Saturate(value)
  %7944 = call float @dx.op.binary.f32(i32 36, float %7940, float %7943)  ; FMin(a,b)
  %7945 = fadd fast float %7944, %7929
  %7946 = add nuw i32 %7930, 1
  %7947 = icmp eq i32 %7946, %7925
  br i1 %7947, label %7948, label %7928

; <label>:7948                                    ; preds = %7928
  %7949 = fmul float %7945, 2.500000e-01
  br label %8057

; <label>:7950                                    ; preds = %7920
  %7951 = fmul fast float %7177, 2.500000e-01
  %7952 = fadd fast float %7951, %7175
  %7953 = fcmp fast ult float %7172, %7952
  br i1 %7953, label %8053, label %7954

; <label>:7954                                    ; preds = %7950
  %7955 = add i32 %7870, 32
  %7956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %49, i32 %7955)  ; CBufferLoadLegacy(handle,regIndex)
  %7957 = extractvalue %dx.types.CBufRet.f32 %7956, 0
  %7958 = extractvalue %dx.types.CBufRet.f32 %7956, 1
  %7959 = extractvalue %dx.types.CBufRet.f32 %7956, 2
  %7960 = extractvalue %dx.types.CBufRet.f32 %7956, 3
  %7961 = fmul fast float %7957, %7833
  %7962 = fadd fast float %7961, %7958
  %7963 = call float @dx.op.unary.f32(i32 7, float %7962)  ; Saturate(value)
  %7964 = fmul fast float %7959, %7833
  %7965 = fadd fast float %7964, %7960
  %7966 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7967 = call float @dx.op.binary.f32(i32 36, float %7963, float %7966)  ; FMin(a,b)
  %7968 = uitofp i32 %7870 to float
  %7969 = fmul fast float %7968, 0x3FE3C6EF40000000
  %7970 = call float @dx.op.unary.f32(i32 22, float %7969)  ; Frc(value)
  %7971 = fadd fast float %7970, 0x3FE5555560000000
  %7972 = fadd fast float %7970, 0x3FD5555560000000
  %7973 = fsub fast float -0.000000e+00, %7970
  %7974 = fsub fast float -0.000000e+00, %7971
  %7975 = fsub fast float -0.000000e+00, %7972
  %7976 = fcmp fast oge float %7970, %7973
  %7977 = fcmp fast oge float %7971, %7974
  %7978 = fcmp fast oge float %7972, %7975
  %7979 = call float @dx.op.unary.f32(i32 6, float %7970)  ; FAbs(value)
  %7980 = call float @dx.op.unary.f32(i32 6, float %7971)  ; FAbs(value)
  %7981 = call float @dx.op.unary.f32(i32 6, float %7972)  ; FAbs(value)
  %7982 = call float @dx.op.unary.f32(i32 22, float %7979)  ; Frc(value)
  %7983 = call float @dx.op.unary.f32(i32 22, float %7980)  ; Frc(value)
  %7984 = call float @dx.op.unary.f32(i32 22, float %7981)  ; Frc(value)
  %7985 = fsub fast float -0.000000e+00, %7982
  %7986 = fsub fast float -0.000000e+00, %7983
  %7987 = fsub fast float -0.000000e+00, %7984
  %7988 = select i1 %7976, float %7982, float %7985
  %7989 = select i1 %7977, float %7983, float %7986
  %7990 = select i1 %7978, float %7984, float %7987
  %7991 = fmul fast float %7988, 6.000000e+00
  %7992 = fmul fast float %7989, 6.000000e+00
  %7993 = fmul fast float %7990, 6.000000e+00
  %7994 = fadd fast float %7991, -3.000000e+00
  %7995 = fadd fast float %7992, -3.000000e+00
  %7996 = fadd fast float %7993, -3.000000e+00
  %7997 = call float @dx.op.unary.f32(i32 6, float %7994)  ; FAbs(value)
  %7998 = call float @dx.op.unary.f32(i32 6, float %7995)  ; FAbs(value)
  %7999 = call float @dx.op.unary.f32(i32 6, float %7996)  ; FAbs(value)
  %8000 = fadd fast float %7997, -1.000000e+00
  %8001 = fadd fast float %7998, -1.000000e+00
  %8002 = fadd fast float %7999, -1.000000e+00
  %8003 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8004 = call float @dx.op.unary.f32(i32 7, float %8001)  ; Saturate(value)
  %8005 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8006 = fadd fast float %7968, 1.000000e+00
  %8007 = fmul fast float %8006, 0x3FE3C6EF40000000
  %8008 = call float @dx.op.unary.f32(i32 22, float %8007)  ; Frc(value)
  %8009 = fadd fast float %8008, 0x3FE5555560000000
  %8010 = fadd fast float %8008, 0x3FD5555560000000
  %8011 = fsub fast float -0.000000e+00, %8008
  %8012 = fsub fast float -0.000000e+00, %8009
  %8013 = fsub fast float -0.000000e+00, %8010
  %8014 = fcmp fast oge float %8008, %8011
  %8015 = fcmp fast oge float %8009, %8012
  %8016 = fcmp fast oge float %8010, %8013
  %8017 = call float @dx.op.unary.f32(i32 6, float %8008)  ; FAbs(value)
  %8018 = call float @dx.op.unary.f32(i32 6, float %8009)  ; FAbs(value)
  %8019 = call float @dx.op.unary.f32(i32 6, float %8010)  ; FAbs(value)
  %8020 = call float @dx.op.unary.f32(i32 22, float %8017)  ; Frc(value)
  %8021 = call float @dx.op.unary.f32(i32 22, float %8018)  ; Frc(value)
  %8022 = call float @dx.op.unary.f32(i32 22, float %8019)  ; Frc(value)
  %8023 = fsub fast float -0.000000e+00, %8020
  %8024 = fsub fast float -0.000000e+00, %8021
  %8025 = fsub fast float -0.000000e+00, %8022
  %8026 = select i1 %8014, float %8020, float %8023
  %8027 = select i1 %8015, float %8021, float %8024
  %8028 = select i1 %8016, float %8022, float %8025
  %8029 = fmul fast float %8026, 6.000000e+00
  %8030 = fmul fast float %8027, 6.000000e+00
  %8031 = fmul fast float %8028, 6.000000e+00
  %8032 = fadd fast float %8029, -3.000000e+00
  %8033 = fadd fast float %8030, -3.000000e+00
  %8034 = fadd fast float %8031, -3.000000e+00
  %8035 = call float @dx.op.unary.f32(i32 6, float %8032)  ; FAbs(value)
  %8036 = call float @dx.op.unary.f32(i32 6, float %8033)  ; FAbs(value)
  %8037 = call float @dx.op.unary.f32(i32 6, float %8034)  ; FAbs(value)
  %8038 = fadd fast float %8035, -1.000000e+00
  %8039 = fadd fast float %8036, -1.000000e+00
  %8040 = fadd fast float %8037, -1.000000e+00
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = call float @dx.op.unary.f32(i32 7, float %8039)  ; Saturate(value)
  %8043 = call float @dx.op.unary.f32(i32 7, float %8040)  ; Saturate(value)
  %8044 = fsub fast float %8041, %8003
  %8045 = fsub fast float %8042, %8004
  %8046 = fsub fast float %8043, %8005
  %8047 = fmul fast float %8044, %7967
  %8048 = fmul fast float %8045, %7967
  %8049 = fmul fast float %8046, %7967
  %8050 = fadd fast float %8047, %8003
  %8051 = fadd fast float %8048, %8004
  %8052 = fadd fast float %8049, %8005
  br label %8057

; <label>:8053                                    ; preds = %7950
  %8054 = icmp ne i32 %7877, 0
  %8055 = select i1 %8054, float 1.000000e+00, float 0.000000e+00
  %8056 = select i1 %8054, float 0.000000e+00, float 1.000000e+00
  br label %8057

; <label>:8057                                    ; preds = %8053, %7954, %7948, %7924, %7881
  %8058 = phi float [ %7917, %7881 ], [ %8050, %7954 ], [ %8055, %8053 ], [ 0.000000e+00, %7924 ], [ %7949, %7948 ]
  %8059 = phi float [ %7918, %7881 ], [ %8051, %7954 ], [ %8056, %8053 ], [ 0.000000e+00, %7924 ], [ %7949, %7948 ]
  %8060 = phi float [ %7919, %7881 ], [ %8052, %7954 ], [ 0.000000e+00, %8053 ], [ 0.000000e+00, %7924 ], [ %7949, %7948 ]
  %8061 = fsub fast float %8058, %7206
  %8062 = fsub fast float %8059, %7207
  %8063 = fsub fast float %8060, %7208
  %8064 = fmul fast float %8061, 5.000000e-01
  %8065 = fmul fast float %8062, 5.000000e-01
  %8066 = fmul fast float %8063, 5.000000e-01
  %8067 = fadd fast float %8064, %7206
  %8068 = fadd fast float %8065, %7207
  %8069 = fadd fast float %8066, %7208
  br label %8132

; <label>:8070                                    ; preds = %7825
  %8071 = icmp eq i32 %7187, 41
  br i1 %8071, label %8072, label %8124

; <label>:8072                                    ; preds = %8070
  %8073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %49, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %8074 = extractvalue %dx.types.CBufRet.i32 %8073, 0
  %8075 = icmp eq i32 %8074, 2
  %8076 = and i1 %792, %8075
  %8077 = icmp eq i32 %8074, 3
  %8078 = and i1 %793, %8077
  %8079 = or i1 %8078, %8076
  %8080 = icmp eq i32 %8074, 4
  %8081 = and i1 %795, %8080
  %8082 = or i1 %8081, %8079
  %8083 = icmp eq i32 %8074, 5
  %8084 = icmp ne i32 %872, 0
  %8085 = and i1 %8084, %8083
  %8086 = or i1 %8085, %8082
  %8087 = icmp eq i32 %8074, 13
  %8088 = and i32 %399, 64
  %8089 = icmp ne i32 %8088, 0
  %8090 = and i1 %8089, %8087
  %8091 = or i1 %8090, %8086
  %8092 = icmp eq i32 %8074, 14
  %8093 = and i1 %1031, %8092
  %8094 = or i1 %8093, %8091
  %8095 = icmp eq i32 %8074, 7
  %8096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %8097 = extractvalue %dx.types.ResRet.i32 %8096, 0
  %8098 = and i32 %8097, 1024
  %8099 = icmp ne i32 %8098, 0
  %8100 = and i1 %8095, %8099
  %8101 = or i1 %8100, %8094
  %8102 = icmp eq i32 %8074, 10
  %8103 = and i32 %8097, 2048
  %8104 = icmp ne i32 %8103, 0
  %8105 = and i1 %8102, %8104
  %8106 = or i1 %8105, %8101
  %8107 = icmp eq i32 %8074, 12
  %8108 = and i32 %8097, 3072
  %8109 = icmp ne i32 %8108, 0
  %8110 = and i1 %8107, %8109
  %8111 = or i1 %8110, %8106
  %8112 = icmp eq i32 %8074, 15
  %8113 = and i32 %8097, 4096
  %8114 = icmp ne i32 %8113, 0
  %8115 = and i1 %8112, %8114
  %8116 = or i1 %8115, %8111
  %8117 = select i1 %8116, float 5.000000e-01, float %7206
  %8118 = select i1 %8116, float 0x3FB99999A0000000, float %7207
  %8119 = select i1 %8116, float 0x3FB99999A0000000, float %7208
  %8120 = fcmp fast ogt float %54, 0.000000e+00
  %8121 = and i1 %8120, %8095
  %8122 = select i1 %8121, float 1.000000e+00, float %8118
  %8123 = select i1 %8121, float 1.000000e+00, float %8119
  br label %8132

; <label>:8124                                    ; preds = %8070
  %8125 = icmp eq i32 %7187, 45
  br i1 %8125, label %8126, label %8132

; <label>:8126                                    ; preds = %8124
  %8127 = fcmp fast ogt float %946, %961
  %8128 = fsub fast float %946, %961
  %8129 = call float @dx.op.unary.f32(i32 6, float %8128)  ; FAbs(value)
  %8130 = select i1 %8127, float %8129, float 0.000000e+00
  %8131 = select i1 %8127, float 0.000000e+00, float %8129
  br label %8132

; <label>:8132                                    ; preds = %8126, %8124, %8072, %8057, %7817, %7810, %7804, %7783, %7742, %7740, %7683, %7679, %7653, %7649, %7587, %7545, %7490, %7485, %7471, %7429, %7422, %7417, %7413, %7411, %7409, %7407, %7405, %7403, %7401, %7399, %7397, %7395, %7381, %7377, %7375, %7373, %7364, %7273, %7253, %7212, %7205
  %8133 = phi float [ %7248, %7212 ], [ %7254, %7253 ], [ %7358, %7273 ], [ %7370, %7364 ], [ %7390, %7381 ], [ %7396, %7395 ], [ %7420, %7417 ], [ %7487, %7485 ], [ %7540, %7490 ], [ %7646, %7587 ], [ %7673, %7653 ], [ %7735, %7683 ], [ %7777, %7742 ], [ %7790, %7783 ], [ %7807, %7804 ], [ %7822, %7817 ], [ %7206, %7810 ], [ %8067, %8057 ], [ %8117, %8072 ], [ %8130, %8126 ], [ %7206, %8124 ], [ %7206, %7205 ], [ 0.000000e+00, %7373 ], [ 0.000000e+00, %7411 ], [ %54, %7422 ], [ 1.000000e+00, %7471 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7545 ], [ 0.000000e+00, %7740 ], [ %265, %7375 ], [ %280, %7377 ], [ %320, %7397 ], [ %333, %7399 ], [ %498, %7401 ], [ %60, %7403 ], [ %790, %7405 ], [ %791, %7407 ], [ %985, %7409 ], [ %54, %7413 ], [ 0.000000e+00, %7649 ], [ 0.000000e+00, %7679 ]
  %8134 = phi float [ %7249, %7212 ], [ %7255, %7253 ], [ %7359, %7273 ], [ %7371, %7364 ], [ %7392, %7381 ], [ %7396, %7395 ], [ %7421, %7417 ], [ %7488, %7485 ], [ %7541, %7490 ], [ %7647, %7587 ], [ %7675, %7653 ], [ %7736, %7683 ], [ %7778, %7742 ], [ %7788, %7783 ], [ %7808, %7804 ], [ %7823, %7817 ], [ %7207, %7810 ], [ %8068, %8057 ], [ %8122, %8072 ], [ %8131, %8126 ], [ %7207, %8124 ], [ %7207, %7205 ], [ 0.000000e+00, %7373 ], [ 1.000000e+00, %7411 ], [ %55, %7422 ], [ 0.000000e+00, %7471 ], [ 1.000000e+00, %7429 ], [ 1.000000e+00, %7545 ], [ 1.000000e+00, %7740 ], [ %265, %7375 ], [ %280, %7377 ], [ %320, %7397 ], [ %333, %7399 ], [ %498, %7401 ], [ %60, %7403 ], [ %790, %7405 ], [ %791, %7407 ], [ %985, %7409 ], [ %55, %7413 ], [ 0.000000e+00, %7649 ], [ 0.000000e+00, %7679 ]
  %8135 = phi float [ %7250, %7212 ], [ %7256, %7253 ], [ %7360, %7273 ], [ %7372, %7364 ], [ 0.000000e+00, %7381 ], [ %7396, %7395 ], [ %789, %7417 ], [ %7489, %7485 ], [ %7542, %7490 ], [ %7648, %7587 ], [ %7678, %7653 ], [ %7737, %7683 ], [ %7779, %7742 ], [ %7789, %7783 ], [ %7809, %7804 ], [ %7824, %7817 ], [ %7208, %7810 ], [ %8069, %8057 ], [ %8123, %8072 ], [ 0.000000e+00, %8126 ], [ %7208, %8124 ], [ %7208, %7205 ], [ 0.000000e+00, %7373 ], [ 1.000000e+00, %7411 ], [ %56, %7422 ], [ 1.000000e+00, %7471 ], [ 1.000000e+00, %7429 ], [ 1.000000e+00, %7545 ], [ 0.000000e+00, %7740 ], [ %265, %7375 ], [ %280, %7377 ], [ %320, %7397 ], [ %333, %7399 ], [ %498, %7401 ], [ %60, %7403 ], [ %790, %7405 ], [ %791, %7407 ], [ %985, %7409 ], [ %56, %7413 ], [ 0.000000e+00, %7649 ], [ 1.000000e+00, %7679 ]
  %8136 = fadd fast float %1076, 0x3FE3C6EF40000000
  %8137 = call float @dx.op.unary.f32(i32 22, float %8136)  ; Frc(value)
  %8138 = call float @dx.op.unary.f32(i32 23, float %8133)  ; Log(value)
  %8139 = fadd fast float %8138, -7.000000e+00
  %8140 = call float @dx.op.unary.f32(i32 21, float %8139)  ; Exp(value)
  %8141 = fmul fast float %8137, 2.000000e+00
  %8142 = fadd fast float %8141, -1.000000e+00
  %8143 = fmul fast float %8140, %8142
  %8144 = fcmp fast ogt float %8133, 0.000000e+00
  %8145 = select i1 %8144, float %8143, float 0.000000e+00
  %8146 = fadd fast float %8145, %8133
  %8147 = fadd fast float %1076, 0x3FF3C6EF40000000
  %8148 = call float @dx.op.unary.f32(i32 22, float %8147)  ; Frc(value)
  %8149 = call float @dx.op.unary.f32(i32 23, float %8134)  ; Log(value)
  %8150 = fadd fast float %8149, -7.000000e+00
  %8151 = call float @dx.op.unary.f32(i32 21, float %8150)  ; Exp(value)
  %8152 = fmul fast float %8148, 2.000000e+00
  %8153 = fadd fast float %8152, -1.000000e+00
  %8154 = fmul fast float %8151, %8153
  %8155 = fcmp fast ogt float %8134, 0.000000e+00
  %8156 = select i1 %8155, float %8154, float 0.000000e+00
  %8157 = fadd fast float %8156, %8134
  %8158 = fadd fast float %1076, 0x3FFDAA66E0000000
  %8159 = call float @dx.op.unary.f32(i32 22, float %8158)  ; Frc(value)
  %8160 = call float @dx.op.unary.f32(i32 23, float %8135)  ; Log(value)
  %8161 = fadd fast float %8160, -6.000000e+00
  %8162 = call float @dx.op.unary.f32(i32 21, float %8161)  ; Exp(value)
  %8163 = fmul fast float %8159, 2.000000e+00
  %8164 = fadd fast float %8163, -1.000000e+00
  %8165 = fmul fast float %8162, %8164
  %8166 = fcmp fast ogt float %8135, 0.000000e+00
  %8167 = select i1 %8166, float %8165, float 0.000000e+00
  %8168 = fadd fast float %8167, %8135
  %8169 = call float @dx.op.binary.f32(i32 36, float %8146, float 3.225500e+04)  ; FMin(a,b)
  %8170 = call float @dx.op.binary.f32(i32 36, float %8157, float 3.225500e+04)  ; FMin(a,b)
  %8171 = call float @dx.op.binary.f32(i32 36, float %8168, float 3.225500e+04)  ; FMin(a,b)
  %8172 = call float @dx.op.binary.f32(i32 36, float %7163, float 3.225500e+04)  ; FMin(a,b)
  %8173 = call float @dx.op.binary.f32(i32 36, float %7164, float 3.225500e+04)  ; FMin(a,b)
  %8174 = call float @dx.op.binary.f32(i32 36, float %7165, float 3.225500e+04)  ; FMin(a,b)
  %8175 = fmul fast float %8169, %7166
  %8176 = fmul fast float %8170, %7167
  %8177 = fmul fast float %8171, %7168
  %8178 = fadd fast float %8172, %8175
  %8179 = fadd fast float %8173, %8176
  %8180 = fadd fast float %8174, %8177
  %8181 = select i1 %7191, float 0.000000e+00, float %8169
  %8182 = select i1 %7191, float 0.000000e+00, float %8170
  %8183 = select i1 %7191, float 0.000000e+00, float %8171
  %8184 = select i1 %7191, float %8169, float %8178
  %8185 = or i1 %7191, %1787
  %8186 = select i1 %8185, float %8170, float %8179
  %8187 = or i1 %7191, %1787
  %8188 = select i1 %8187, float %8171, float %8180
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1712, i32 %1718, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8184)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8186)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8188)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8181)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8182)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8183)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:8189                                    ; preds = %6315
  %8190 = fcmp fast olt float %1745, %6298
  br i1 %8190, label %6301, label %8191

; <label>:8191                                    ; preds = %8189
  %8192 = fcmp fast olt float %1745, %6299
  br i1 %8192, label %6301, label %6504

; <label>:8193                                    ; preds = %6395
  %8194 = fcmp fast olt float %69, 5.120000e+02
  br i1 %8194, label %6381, label %8195

; <label>:8195                                    ; preds = %8193
  %8196 = fcmp fast olt float %69, 1.024000e+03
  br i1 %8196, label %6381, label %8197

; <label>:8197                                    ; preds = %8195
  %8198 = fcmp fast olt float %69, 1.536000e+03
  br i1 %8198, label %6381, label %8199

; <label>:8199                                    ; preds = %8197
  %8200 = fcmp fast olt float %69, 2.048000e+03
  br i1 %8200, label %6381, label %8201

; <label>:8201                                    ; preds = %8199
  %8202 = fcmp fast olt float %69, 3.072000e+03
  br i1 %8202, label %6381, label %8203

; <label>:8203                                    ; preds = %8201
  %8204 = fcmp fast olt float %69, 4.096000e+03
  br i1 %8204, label %6381, label %8205

; <label>:8205                                    ; preds = %8203
  %8206 = fcmp fast olt float %69, 6.144000e+03
  br i1 %8206, label %6381, label %8207

; <label>:8207                                    ; preds = %8205
  %8208 = fcmp fast olt float %69, 8.192000e+03
  br i1 %8208, label %6381, label %6504

; <label>:8209                                    ; preds = %6427
  %8210 = fcmp fast olt float %6155, %6410
  br i1 %8210, label %6413, label %8211

; <label>:8211                                    ; preds = %8209
  %8212 = fcmp fast olt float %6155, %6411
  br i1 %8212, label %6413, label %6504
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!65}
!dx.entryPoints = !{!66}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !51, !55, !59}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
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
!36 = !{i32 27, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!40 = !{i32 31, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!41 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!42 = !{i32 33, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!48 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!49 = !{i32 40, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 5, i32 1, i32 7, i32 0, !7}
!51 = !{!52, !53}
!52 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!53 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !54}
!54 = !{i32 1, i32 1144}
!55 = !{!56, !57, !58}
!56 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!57 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!58 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!59 = !{!60, !61, !62, !63, !64}
!60 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!61 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!62 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!63 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!64 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!65 = !{[29 x i32] [i32 27, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 119, i32 34, i32 68, i32 0, i32 17, i32 34, i32 68]}
!66 = !{void ()* @ps_main, !"ps_main", !67, !4, !89}
!67 = !{!68, !86, null}
!68 = !{!69, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85}
!69 = !{i32 0, !"SV_Position", i8 9, i8 3, !70, i8 4, i32 1, i8 4, i32 0, i8 0, !71}
!70 = !{i32 0}
!71 = !{i32 3, i32 15}
!72 = !{i32 1, !"NORMAL", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 1, i8 0, !73}
!73 = !{i32 3, i32 7}
!74 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !70, i8 2, i32 1, i8 2, i32 2, i8 0, !75}
!75 = !{i32 3, i32 3}
!76 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !70, i8 2, i32 1, i8 1, i32 1, i8 3, !77}
!77 = !{i32 3, i32 1}
!78 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !70, i8 1, i32 1, i8 1, i32 3, i8 0, !77}
!79 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !70, i8 1, i32 1, i8 1, i32 3, i8 1, !77}
!80 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !70, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!81 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !82, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!82 = !{i32 1}
!83 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !70, i8 2, i32 1, i8 4, i32 5, i8 0, !73}
!84 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !70, i8 2, i32 1, i8 3, i32 6, i8 0, !73}
!85 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !70, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!86 = !{!87, !88}
!87 = !{i32 0, !"SV_Target", i8 9, i8 16, !70, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!88 = !{i32 1, !"SV_Target", i8 9, i8 16, !82, i8 0, i32 1, i8 4, i32 1, i8 0, !71}
!89 = !{i32 0, i64 24}
!90 = !{!91, !91, i64 0}
!91 = !{!"float", !92, i64 0}
!92 = !{!"omnipotent char", !93, i64 0}
!93 = !{!"Simple C/C++ TBAA"}
!94 = !{!95, !97, !98}
!95 = distinct !{!95, !96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!96 = distinct !{!96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!97 = distinct !{!97, !96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!98 = distinct !{!98, !96, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.unroll.disable"}
!107 = distinct !{!107, !"dx.controlflow.hints", i32 1}
!108 = distinct !{!108, !"dx.controlflow.hints", i32 1}
!109 = distinct !{!109, !"dx.controlflow.hints", i32 1}
!110 = distinct !{!110, !"dx.controlflow.hints", i32 1}
!111 = distinct !{!111, !"dx.controlflow.hints", i32 1}

