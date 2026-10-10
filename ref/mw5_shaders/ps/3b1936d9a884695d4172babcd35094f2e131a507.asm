;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xyzw
; NORMAL                   0   xyz         1     NONE   float   xyz 
; DEBUG_VALUE              0   xyzw        2     NONE   float       
; WIREFRAME_COLOR          0   xyz         3     NONE   float   xyz 
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
; shader hash: 6ff68f1997ea8823f40ffcda886d05d4
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
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t58,space2     1
;                                   texture     f32          2d      T6     t59,space2     1
;                                   texture     f32          2d      T7     t61,space2     1
;                                   texture    byte         r/o      T8     t45,space1     1
;                                   texture    byte         r/o      T9     t46,space1     1
;                                   texture    byte         r/o     T10     t47,space1     1
;                                   texture    byte         r/o     T11     t48,space1     1
;                                   texture     f32     2darray     T12     t16,space2     1
;                                   texture     f32          3d     T13     t15,space2     1
;                                   texture     f32          2d     T14     t13,space2     1
;                                   texture     u32          2d     T15     t17,space2     1
;                                   texture     f32          3d     T16     t18,space2     1
;                                   texture    byte         r/o     T17      t3,space1     1
;                                   texture    byte         r/o     T18      t4,space1     1
;                                   texture    byte         r/o     T19      t5,space1     1
;                                   texture    byte         r/o     T20      t6,space1     1
;                                   texture     f32          2d     T21     t37,space2     1
;                                   texture     f32          2d     T22             t1     1
;                                   texture     f32     2darray     T23     t49,space2     1
;                                   texture     f32     2darray     T24     t35,space2     1
;                                   texture     f32          2d     T25     t34,space2     1
;                                   texture     f32          3d     T26     t31,space2     1
;                                   texture    byte         r/o     T27     t10,space1     1
;                                   texture    byte         r/o     T28      t1,space1     1
;                                   texture     f32          1d     T29     t32,space2     1
;                                   texture     f32          3d     T30     t82,space2     1
;                                   texture     f32     2darray     T31      t8,space2     1
;                                   texture    byte         r/o     T32     t68,space1     1
;                                   texture     f32          2d     T33      t0,space2     1
;                                   texture    byte         r/o     T34     t11,space1     1
;                                   texture    byte         r/o     T35     t13,space1     1
;                                   texture     f32          2d     T36             t8     1
;                                   texture     f32     2darray     T37             t2     1
;                                       UAV     f32          2d      U0             u7     1
;                                       UAV  struct         r/w      U1             u0     1
;
;
; ViewId state:
;
; Number of inputs: 15, outputs: 8
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 6, 12 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 6, 13 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 6, 14 }
;   output 4 depends on inputs: { 0, 1, 3, 4, 5, 6, 12 }
;   output 5 depends on inputs: { 0, 1, 3, 4, 5, 6, 13 }
;   output 6 depends on inputs: { 0, 1, 3, 4, 5, 6, 14 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [33 x float] [float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [15 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = alloca [4 x float], align 4
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = alloca [4 x float], align 4
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = fmul fast float %59, %53
  %61 = fmul fast float %59, %54
  %62 = call float @dx.op.dot3.f32(i32 55, float %50, float %51, float %52, float %50, float %51, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %63 = call float @dx.op.unary.f32(i32 25, float %62)  ; Rsqrt(value)
  %64 = fmul fast float %63, %50
  %65 = fmul fast float %63, %51
  %66 = fmul fast float %63, %52
  %67 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.f32 %67, 2
  %69 = extractvalue %dx.types.CBufRet.f32 %67, 3
  %70 = fmul fast float %60, 2.000000e+00
  %71 = fmul fast float %70, %68
  %72 = fmul fast float %61, 2.000000e+00
  %73 = fmul fast float %72, %69
  %74 = fsub fast float 1.000000e+00, %71
  %75 = fsub fast float 1.000000e+00, %73
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fmul fast float %74, %77
  %81 = fmul fast float %74, %78
  %82 = fmul fast float %74, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %75, %84
  %88 = fmul fast float %75, %85
  %89 = fmul fast float %75, %86
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = fadd fast float %87, %91
  %95 = fadd fast float %94, %80
  %96 = fadd fast float %88, %92
  %97 = fadd fast float %96, %81
  %98 = fadd fast float %89, %93
  %99 = fadd fast float %98, %82
  %100 = fmul fast float %95, %56
  %101 = fmul fast float %97, %56
  %102 = fmul fast float %99, %56
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = fadd fast float %104, %100
  %107 = fadd fast float %105, %101
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = fsub fast float %106, %109
  %112 = fsub fast float %107, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 3
  %115 = fmul fast float %111, %114
  %116 = fmul fast float %112, %114
  %117 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %118 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %119 = fsub fast float 1.000000e+00, %118
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = call float @dx.op.unary.f32(i32 83, float %115)  ; DerivCoarseX(value)
  %123 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %124 = call float @dx.op.unary.f32(i32 84, float %115)  ; DerivCoarseY(value)
  %125 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %126 = fmul fast float %122, %121
  %127 = fmul fast float %123, %121
  %128 = fmul fast float %124, %121
  %129 = fmul fast float %125, %121
  %130 = call float @dx.op.dot2.f32(i32 54, float %128, float %129, float %128, float %129)  ; Dot2(ax,ay,bx,by)
  %131 = call float @dx.op.dot2.f32(i32 54, float %126, float %127, float %126, float %127)  ; Dot2(ax,ay,bx,by)
  %132 = call float @dx.op.binary.f32(i32 35, float %131, float %130)  ; FMax(a,b)
  %133 = call float @dx.op.unary.f32(i32 23, float %132)  ; Log(value)
  %134 = fmul fast float %133, 5.000000e-01
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %137 = fadd fast float %136, %134
  %138 = call float @dx.op.binary.f32(i32 35, float %137, float 0.000000e+00)  ; FMax(a,b)
  %139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.f32 %139, 3
  %141 = fadd fast float %140, %138
  %142 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %143 = shl i32 %142, 16
  %144 = or i32 %143, %142
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = fadd fast float %146, %100
  %149 = fadd fast float %147, %101
  %150 = fmul fast float %148, 0x3F53C37960000000
  %151 = fmul fast float %149, 0x3F53C37960000000
  %152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %152, float %150, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = fmul fast float %156, %154
  %158 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.i32 %158, 0
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = fadd fast float %161, %100
  %164 = fadd fast float %162, %101
  %165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.f32 %165, 0
  %167 = extractvalue %dx.types.CBufRet.f32 %165, 1
  %168 = extractvalue %dx.types.CBufRet.f32 %165, 2
  %169 = extractvalue %dx.types.CBufRet.f32 %165, 3
  %170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.f32 %170, 3
  %172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.i32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.i32 %172, 1
  %175 = udiv i32 %174, %173
  %176 = fsub fast float %163, %166
  %177 = fsub fast float %164, %167
  %178 = call float @dx.op.binary.f32(i32 35, float %176, float 0.000000e+00)  ; FMax(a,b)
  %179 = call float @dx.op.binary.f32(i32 35, float %177, float 0.000000e+00)  ; FMax(a,b)
  %180 = call float @dx.op.binary.f32(i32 36, float %178, float %168)  ; FMin(a,b)
  %181 = call float @dx.op.binary.f32(i32 36, float %179, float %169)  ; FMin(a,b)
  %182 = add i32 %173, -1
  %183 = add i32 %175, -1
  %184 = fmul fast float %180, %171
  %185 = fmul fast float %181, %171
  %186 = fptoui float %184 to i32
  %187 = fptoui float %185 to i32
  %188 = call i32 @dx.op.binary.i32(i32 40, i32 %186, i32 %182)  ; UMin(a,b)
  %189 = call i32 @dx.op.binary.i32(i32 40, i32 %187, i32 %183)  ; UMin(a,b)
  %190 = mul i32 %189, %173
  %191 = add i32 %190, %188
  %192 = shl i32 %191, 2
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = call i32 @dx.op.binary.i32(i32 40, i32 %194, i32 %159)  ; UMin(a,b)
  %196 = mul i32 %195, 148
  %197 = add i32 %196, 4
  %198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = add i32 %196, 8
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = add i32 %196, 48
  %204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = add i32 %196, 60
  %207 = add i32 %196, 92
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = add i32 %196, 96
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = add i32 %196, 100
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = add i32 %196, 104
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add i32 %196, 108
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add i32 %196, 116
  %222 = fsub fast float 1.000000e+00, %119
  %223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %224 = extractvalue %dx.types.CBufRet.f32 %223, 2
  %225 = fmul fast float %224, %117
  %226 = fmul fast float %224, %222
  %227 = fadd fast float %225, %199
  %228 = fadd fast float %226, %202
  %229 = call float @dx.op.unary.f32(i32 84, float %227)  ; DerivCoarseY(value)
  %230 = call float @dx.op.unary.f32(i32 84, float %228)  ; DerivCoarseY(value)
  %231 = call float @dx.op.unary.f32(i32 83, float %227)  ; DerivCoarseX(value)
  %232 = call float @dx.op.unary.f32(i32 83, float %228)  ; DerivCoarseX(value)
  %233 = call float @dx.op.dot2.f32(i32 54, float %229, float %230, float %229, float %230)  ; Dot2(ax,ay,bx,by)
  %234 = call float @dx.op.dot2.f32(i32 54, float %231, float %232, float %231, float %232)  ; Dot2(ax,ay,bx,by)
  %235 = call float @dx.op.binary.f32(i32 35, float %234, float %233)  ; FMax(a,b)
  %236 = call float @dx.op.unary.f32(i32 23, float %235)  ; Log(value)
  %237 = fmul fast float %236, 5.000000e-01
  %238 = add i32 %196, 20
  %239 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = add i32 %196, 24
  %242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.f32 %242, 0
  %244 = add i32 %196, 28
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = add i32 %196, 32
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = add i32 %196, 40
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = add i32 %196, 44
  %254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = add i32 %196, 52
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = add i32 %196, 56
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.i32 %264, 0
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = add i32 %196, 112
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %276 = extractvalue %dx.types.CBufRet.f32 %275, 2
  %277 = fmul fast float %276, %117
  %278 = fmul fast float %276, %119
  %279 = extractvalue %dx.types.CBufRet.f32 %275, 3
  %280 = fadd fast float %277, %279
  %281 = fadd fast float %278, %279
  %282 = extractvalue %dx.types.CBufRet.f32 %275, 0
  %283 = fmul fast float %282, %117
  %284 = fmul fast float %282, %119
  %285 = extractvalue %dx.types.CBufRet.f32 %275, 1
  %286 = fadd fast float %283, %285
  %287 = fadd fast float %284, %285
  %288 = add i32 %265, 0
  %289 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %288, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %290 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %289, i32 0)  ; GetDimensions(handle,mipLevel)
  %291 = extractvalue %dx.types.Dimensions %290, 0
  %292 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %291)  ; FirstbitLo(value)
  %293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %294 = extractvalue %dx.types.CBufRet.i32 %293, 1
  %295 = sub nsw i32 %294, %292
  %296 = sitofp i32 %295 to float
  %297 = fsub fast float %141, %296
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float 0.000000e+00)  ; FMax(a,b)
  %299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %289, %dx.types.Handle %39, float %280, float %281, float %252, float undef, i32 0, i32 0, i32 undef, float %298)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %300 = extractvalue %dx.types.ResRet.f32 %299, 0
  %301 = fmul fast float %300, %240
  %302 = fadd fast float %301, %243
  %303 = add i32 %267, 0
  %304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %304, i32 0)  ; GetDimensions(handle,mipLevel)
  %306 = extractvalue %dx.types.Dimensions %305, 0
  %307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %306)  ; FirstbitLo(value)
  %308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %309 = extractvalue %dx.types.CBufRet.i32 %308, 1
  %310 = sub nsw i32 %309, %307
  %311 = sitofp i32 %310 to float
  %312 = fsub fast float %141, %311
  %313 = call float @dx.op.binary.f32(i32 35, float %312, float 0.000000e+00)  ; FMax(a,b)
  %314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %304, %dx.types.Handle %39, float %286, float %287, float %255, float undef, i32 0, i32 0, i32 undef, float %313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %315 = extractvalue %dx.types.ResRet.f32 %314, 0
  %316 = fmul fast float %315, %246
  %317 = fadd fast float %316, %249
  %318 = add i32 %269, 0
  %319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %318, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %320 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %319, i32 0)  ; GetDimensions(handle,mipLevel)
  %321 = extractvalue %dx.types.Dimensions %320, 0
  %322 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %321)  ; FirstbitLo(value)
  %323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %324 = extractvalue %dx.types.CBufRet.i32 %323, 1
  %325 = sub nsw i32 %324, %322
  %326 = sitofp i32 %325 to float
  %327 = fsub fast float %141, %326
  %328 = call float @dx.op.binary.f32(i32 35, float %327, float 0.000000e+00)  ; FMax(a,b)
  %329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %319, %dx.types.Handle %39, float %286, float %287, float %257, float undef, i32 0, i32 0, i32 undef, float %328)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %330 = extractvalue %dx.types.ResRet.f32 %329, 0
  %331 = extractvalue %dx.types.ResRet.f32 %329, 1
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 3
  %334 = fmul fast float %333, 2.000000e+00
  %335 = fmul fast float %334, %330
  %336 = fmul fast float %334, %331
  %337 = fsub fast float %335, %333
  %338 = fsub fast float %336, %333
  %339 = fmul fast float %337, %337
  %340 = fmul fast float %338, %338
  %341 = fadd fast float %339, %340
  %342 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %343 = add i32 %271, 0
  %344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %343, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %345 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %344, i32 0)  ; GetDimensions(handle,mipLevel)
  %346 = extractvalue %dx.types.Dimensions %345, 0
  %347 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %346)  ; FirstbitLo(value)
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 1
  %350 = sub nsw i32 %349, %347
  %351 = sitofp i32 %350 to float
  %352 = fsub fast float %141, %351
  %353 = call float @dx.op.binary.f32(i32 35, float %352, float 0.000000e+00)  ; FMax(a,b)
  %354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %344, %dx.types.Handle %39, float %286, float %287, float %260, float undef, i32 0, i32 0, i32 undef, float %353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %355 = extractvalue %dx.types.ResRet.f32 %354, 0
  %356 = add i32 %274, 0
  %357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %356, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %358 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %357, i32 0)  ; GetDimensions(handle,mipLevel)
  %359 = extractvalue %dx.types.Dimensions %358, 0
  %360 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %359)  ; FirstbitLo(value)
  %361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %362 = extractvalue %dx.types.CBufRet.i32 %361, 1
  %363 = sub nsw i32 %362, %360
  %364 = sitofp i32 %363 to float
  %365 = fsub fast float %141, %364
  %366 = call float @dx.op.binary.f32(i32 35, float %365, float 0.000000e+00)  ; FMax(a,b)
  %367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %357, %dx.types.Handle %39, float %286, float %287, float %263, float undef, i32 0, i32 0, i32 undef, float %366)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %368 = extractvalue %dx.types.ResRet.f32 %367, 0
  %369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.i32 %369, 0
  %371 = call i32 @dx.op.binary.i32(i32 40, i32 %195, i32 %370)  ; UMin(a,b)
  %372 = mul i32 %371, 36
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = add i32 %372, 4
  %376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %377 = extractvalue %dx.types.CBufRet.i32 %376, 0
  %378 = icmp eq i32 %377, 32
  %379 = select i1 %378, float 0.000000e+00, float %141
  %380 = and i32 %377, -2
  %381 = icmp eq i32 %380, 30
  %382 = or i1 %381, %378
  br i1 %382, label %383, label %424

; <label>:383                                     ; preds = %0
  %384 = extractvalue %dx.types.ResRet.i32 %208, 0
  %385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %386 = extractvalue %dx.types.CBufRet.i32 %385, 0
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %403, label %388

; <label>:388                                     ; preds = %383
  %389 = icmp eq i32 %386, 1
  br i1 %389, label %403, label %390

; <label>:390                                     ; preds = %388
  %391 = icmp eq i32 %386, 2
  br i1 %391, label %403, label %392

; <label>:392                                     ; preds = %390
  %393 = icmp eq i32 %386, 3
  br i1 %393, label %403, label %394

; <label>:394                                     ; preds = %392
  %395 = icmp eq i32 %386, 4
  br i1 %395, label %403, label %396

; <label>:396                                     ; preds = %394
  %397 = call i32 @dx.op.binary.i32(i32 39, i32 %386, i32 6)  ; UMax(a,b)
  %398 = call i32 @dx.op.binary.i32(i32 40, i32 %397, i32 13)  ; UMin(a,b)
  %399 = shl i32 %398, 2
  %400 = add i32 %207, %399
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  br label %403

; <label>:403                                     ; preds = %396, %394, %392, %390, %388, %383
  %404 = phi i32 [ %402, %396 ], [ %384, %383 ], [ %211, %388 ], [ %214, %390 ], [ %217, %392 ], [ %220, %394 ]
  %405 = add i32 %404, 0
  %406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %405, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %407 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %406, i32 0)  ; GetDimensions(handle,mipLevel)
  %408 = extractvalue %dx.types.Dimensions %407, 0
  %409 = icmp eq i32 %408, 1
  %410 = icmp eq i32 %408, 4
  %411 = or i1 %409, %410
  br i1 %411, label %418, label %412

; <label>:412                                     ; preds = %403
  %413 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %408)  ; FirstbitLo(value)
  %414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.i32 %414, 1
  %416 = sub nsw i32 %415, %413
  %417 = call i32 @dx.op.binary.i32(i32 37, i32 %416, i32 0)  ; IMax(a,b)
  br label %418

; <label>:418                                     ; preds = %412, %403
  %419 = phi i32 [ %417, %412 ], [ -1, %403 ]
  %420 = icmp slt i32 %419, 0
  br i1 %420, label %424, label %421

; <label>:421                                     ; preds = %418
  %422 = sitofp i32 %419 to float
  %423 = fsub fast float %379, %422
  br label %424

; <label>:424                                     ; preds = %421, %418, %0
  %425 = phi float [ %423, %421 ], [ 0.000000e+00, %0 ], [ 0.000000e+00, %418 ]
  %426 = icmp eq i32 %374, 0
  br i1 %426, label %1575, label %427

; <label>:427                                     ; preds = %424
  br label %428

; <label>:428                                     ; preds = %1552, %427
  %429 = phi float [ %1553, %1552 ], [ 0.000000e+00, %427 ]
  %430 = phi float [ %1554, %1552 ], [ 0.000000e+00, %427 ]
  %431 = phi i32 [ %1555, %1552 ], [ %144, %427 ]
  %432 = phi i32 [ %1556, %1552 ], [ %144, %427 ]
  %433 = phi float [ %1557, %1552 ], [ 0.000000e+00, %427 ]
  %434 = phi float [ %1558, %1552 ], [ 0.000000e+00, %427 ]
  %435 = phi float [ %1559, %1552 ], [ 0.000000e+00, %427 ]
  %436 = phi float [ %1560, %1552 ], [ 0.000000e+00, %427 ]
  %437 = phi float [ %1561, %1552 ], [ 0.000000e+00, %427 ]
  %438 = phi float [ %1562, %1552 ], [ 0.000000e+00, %427 ]
  %439 = phi i32 [ %1563, %1552 ], [ 0, %427 ]
  %440 = phi float [ %1564, %1552 ], [ 0.000000e+00, %427 ]
  %441 = phi float [ %1565, %1552 ], [ 0.000000e+00, %427 ]
  %442 = phi i32 [ %1566, %1552 ], [ 0, %427 ]
  %443 = phi float [ %1567, %1552 ], [ 0.000000e+00, %427 ]
  %444 = phi float [ %1568, %1552 ], [ 0.000000e+00, %427 ]
  %445 = phi float [ %1569, %1552 ], [ 0.000000e+00, %427 ]
  %446 = phi i32 [ %1572, %1552 ], [ 0, %427 ]
  %447 = phi i32 [ %1570, %1552 ], [ %144, %427 ]
  %448 = phi i32 [ %1571, %1552 ], [ %144, %427 ]
  %449 = shl i32 %446, 2
  %450 = add i32 %206, %449
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %454 = extractvalue %dx.types.CBufRet.f32 %453, 0
  %455 = fmul fast float %454, %117
  %456 = fmul fast float %454, %119
  %457 = extractvalue %dx.types.CBufRet.f32 %453, 1
  %458 = fadd fast float %455, %457
  %459 = fadd fast float %456, %457
  %460 = add i32 %449, %221
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = add i32 %462, 0
  %464 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %463, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %465 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %464, i32 0)  ; GetDimensions(handle,mipLevel)
  %466 = extractvalue %dx.types.Dimensions %465, 0
  %467 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %466)  ; FirstbitLo(value)
  %468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %469 = extractvalue %dx.types.CBufRet.i32 %468, 1
  %470 = sub nsw i32 %469, %467
  %471 = sitofp i32 %470 to float
  %472 = fsub fast float %141, %471
  %473 = call float @dx.op.binary.f32(i32 35, float %472, float 0.000000e+00)  ; FMax(a,b)
  %474 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %464, %dx.types.Handle %39, float %458, float %459, float %452, float undef, i32 0, i32 0, i32 undef, float %473)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = fcmp fast ogt float %475, 0.000000e+00
  br i1 %476, label %477, label %1552

; <label>:477                                     ; preds = %428
  %478 = add i32 %375, %449
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = and i32 %480, 32767
  %482 = add i32 %439, 1
  %483 = mul nuw nsw i32 %481, 928
  %484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %483, i32 undef)  ; BufferLoad(srv,index,wot)
  %485 = extractvalue %dx.types.ResRet.i32 %484, 0
  %486 = or i32 %483, 8
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = or i32 %483, 12
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 1
  %492 = or i32 %483, 20
  %493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.i32 %493, 0
  %495 = or i32 %483, 24
  %496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.f32 %496, 0
  %498 = extractvalue %dx.types.ResRet.f32 %496, 1
  %499 = extractvalue %dx.types.ResRet.f32 %496, 2
  %500 = extractvalue %dx.types.ResRet.f32 %496, 3
  %501 = add nuw nsw i32 %483, 40
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = add nuw nsw i32 %483, 72
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = add nuw nsw i32 %483, 80
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = add nuw nsw i32 %483, 228
  %512 = add nuw nsw i32 %483, 516
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 1
  %515 = extractvalue %dx.types.ResRet.f32 %513, 2
  %516 = add nuw nsw i32 %483, 552
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = extractvalue %dx.types.ResRet.f32 %517, 2
  %521 = add nuw nsw i32 %483, 564
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = extractvalue %dx.types.ResRet.f32 %522, 2
  %526 = extractvalue %dx.types.ResRet.f32 %522, 3
  %527 = add nuw nsw i32 %483, 580
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = add nuw nsw i32 %483, 596
  %534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.f32 %534, 0
  %536 = extractvalue %dx.types.ResRet.f32 %534, 1
  %537 = add nuw nsw i32 %483, 620
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = add nuw nsw i32 %483, 628
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 2
  %546 = extractvalue %dx.types.ResRet.f32 %542, 3
  %547 = add nuw nsw i32 %483, 644
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = add nuw nsw i32 %483, 648
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = add nuw nsw i32 %483, 664
  %554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = add nuw nsw i32 %483, 696
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = add nuw nsw i32 %483, 704
  %563 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.f32 %563, 0
  %565 = add nuw nsw i32 %483, 708
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = add nuw nsw i32 %483, 716
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = add nuw nsw i32 %483, 720
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 0
  %575 = extractvalue %dx.types.ResRet.f32 %573, 1
  %576 = extractvalue %dx.types.ResRet.f32 %573, 2
  %577 = add nuw nsw i32 %483, 732
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 1
  %580 = extractvalue %dx.types.ResRet.f32 %578, 2
  %581 = add nuw nsw i32 %483, 744
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = add nuw nsw i32 %483, 748
  %585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = add nuw nsw i32 %483, 752
  %588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.f32 %588, 0
  %590 = add nuw nsw i32 %483, 756
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = extractvalue %dx.types.ResRet.f32 %591, 3
  %596 = add nuw nsw i32 %483, 780
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = add nuw nsw i32 %483, 792
  %601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.f32 %601, 0
  %603 = extractvalue %dx.types.ResRet.f32 %601, 1
  %604 = add nuw nsw i32 %483, 812
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = add nuw nsw i32 %483, 852
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = add nuw nsw i32 %483, 860
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add nuw nsw i32 %483, 896
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add nuw nsw i32 %483, 900
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %618, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = add nuw nsw i32 %483, 904
  %622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.i32 %622, 0
  %624 = add nuw nsw i32 %483, 916
  %625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %624, i32 undef)  ; BufferLoad(srv,index,wot)
  %626 = extractvalue %dx.types.ResRet.i32 %625, 0
  %627 = and i32 %485, 512
  %628 = fmul fast float %535, %355
  %629 = fadd fast float %628, %536
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = fmul fast float %630, %475
  %632 = fadd fast float %631, %436
  %633 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %630)  ; FMax(a,b)
  %634 = add i32 %620, 0
  %635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %637 = extractvalue %dx.types.CBufRet.i32 %636, 0
  %638 = and i32 %637, 65536
  %639 = icmp eq i32 %638, 0
  %640 = and i32 %637, 262144
  %641 = icmp ne i32 %640, 0
  %642 = and i32 %637, 1048576
  %643 = icmp ne i32 %642, 0
  br i1 %639, label %918, label %644

; <label>:644                                     ; preds = %477
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 0
  %649 = extractvalue %dx.types.CBufRet.f32 %647, 1
  %650 = fadd fast float %648, %100
  %651 = fadd fast float %649, %101
  %652 = fmul fast float %100, %100
  %653 = fmul fast float %101, %101
  %654 = fadd fast float %652, %653
  %655 = fmul fast float %102, %102
  %656 = fadd fast float %654, %655
  %657 = call float @dx.op.unary.f32(i32 24, float %656)  ; Sqrt(value)
  br i1 %643, label %658, label %704

; <label>:658                                     ; preds = %644
  %659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %660 = extractvalue %dx.types.CBufRet.f32 %659, 0
  %661 = fcmp fast ogt float %657, %660
  %662 = zext i1 %661 to i32
  %663 = extractvalue %dx.types.CBufRet.f32 %659, 1
  %664 = fcmp fast ogt float %657, %663
  %665 = zext i1 %664 to i32
  %666 = add nuw nsw i32 %665, %662
  %667 = extractvalue %dx.types.CBufRet.f32 %659, 2
  %668 = fcmp fast ogt float %657, %667
  %669 = zext i1 %668 to i32
  %670 = add nuw nsw i32 %666, %669
  %671 = icmp ult i32 %670, 3
  %672 = zext i1 %671 to i32
  %673 = shl nuw nsw i32 %670, 2
  %674 = add nuw nsw i32 %673, 48
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %674)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %677 = fcmp fast ogt float %657, %676
  %678 = zext i1 %677 to i32
  %679 = or i32 %673, 1
  %680 = add nuw nsw i32 %679, 48
  %681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %680)  ; CBufferLoadLegacy(handle,regIndex)
  %682 = extractvalue %dx.types.CBufRet.f32 %681, 1
  %683 = fcmp fast ogt float %657, %682
  %684 = zext i1 %683 to i32
  %685 = add nuw nsw i32 %684, %678
  %686 = or i32 %673, 2
  %687 = add nuw nsw i32 %686, 48
  %688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %687)  ; CBufferLoadLegacy(handle,regIndex)
  %689 = extractvalue %dx.types.CBufRet.f32 %688, 1
  %690 = fcmp fast ogt float %657, %689
  %691 = zext i1 %690 to i32
  %692 = add nuw nsw i32 %685, %691
  %693 = add i32 %494, -1
  %694 = call i32 @dx.op.binary.i32(i32 40, i32 %692, i32 %693)  ; UMin(a,b)
  %695 = add i32 %673, %694
  %696 = call i32 @dx.op.binary.i32(i32 40, i32 %695, i32 12)  ; UMin(a,b)
  %697 = add i32 %696, 48
  %698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %697)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.f32 %698, 0
  %700 = fcmp fast oge float %657, %699
  %701 = zext i1 %700 to i32
  %702 = call i32 @dx.op.binary.i32(i32 40, i32 %494, i32 %672)  ; UMin(a,b)
  %703 = call i32 @dx.op.binary.i32(i32 40, i32 %701, i32 %702)  ; UMin(a,b)
  br label %704

; <label>:704                                     ; preds = %658, %644
  %705 = phi i32 [ %696, %658 ], [ 0, %644 ]
  %706 = phi i32 [ %703, %658 ], [ 0, %644 ]
  %707 = add i32 %706, %494
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %907, label %709

; <label>:709                                     ; preds = %704
  br label %710

; <label>:710                                     ; preds = %876, %709
  %711 = phi float [ %903, %876 ], [ 0.000000e+00, %709 ]
  %712 = phi float [ %895, %876 ], [ 0.000000e+00, %709 ]
  %713 = phi float [ %896, %876 ], [ 0.000000e+00, %709 ]
  %714 = phi i32 [ %726, %876 ], [ %705, %709 ]
  %715 = phi i32 [ %904, %876 ], [ 0, %709 ]
  %716 = add i32 %715, %714
  br i1 %643, label %717, label %725

; <label>:717                                     ; preds = %710
  %718 = and i32 %716, -4
  %719 = add i32 %718, %494
  %720 = icmp uge i32 %716, %719
  %721 = sub i32 4, %494
  %722 = select i1 %720, i32 %721, i32 0
  %723 = add i32 %722, %714
  %724 = add i32 %722, %716
  br label %725

; <label>:725                                     ; preds = %717, %710
  %726 = phi i32 [ %723, %717 ], [ %714, %710 ]
  %727 = phi i32 [ %724, %717 ], [ %716, %710 ]
  %728 = and i32 %727, 3
  %729 = select i1 %643, i32 %728, i32 %715
  %730 = lshr i32 %727, 2
  %731 = select i1 %643, i32 %730, i32 0
  %732 = add i32 %727, 32
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %732)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %738 = fmul fast float %734, %657
  %739 = fadd fast float %738, %735
  %740 = call float @dx.op.unary.f32(i32 7, float %739)  ; Saturate(value)
  %741 = fmul fast float %736, %657
  %742 = fadd fast float %741, %737
  %743 = call float @dx.op.unary.f32(i32 7, float %742)  ; Saturate(value)
  %744 = call float @dx.op.binary.f32(i32 36, float %740, float %743)  ; FMin(a,b)
  %745 = select i1 %643, float %744, float 1.000000e+00
  %746 = mul i32 %729, 72
  %747 = add i32 %511, %746
  %748 = add i32 %747, 16
  %749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = add i32 %747, 36
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = add i32 %747, 56
  %758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = fmul fast float %342, 3.906250e-03
  %761 = fmul fast float %760, %510
  %762 = fmul fast float %761, %756
  %763 = fmul fast float %762, %759
  %764 = extractvalue %dx.types.ResRet.f32 %758, 1
  %765 = fadd fast float %763, %764
  %766 = call float @dx.op.binary.f32(i32 35, float %765, float 0.000000e+00)  ; FMax(a,b)
  %767 = add i32 %747, 32
  %768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  br i1 %641, label %770, label %803

; <label>:770                                     ; preds = %725
  %771 = fmul fast float %756, %337
  %772 = fmul fast float %756, %338
  %773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %774 = extractvalue %dx.types.CBufRet.f32 %773, 1
  %775 = add i32 %747, 40
  %776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.f32 %776, 0
  %778 = extractvalue %dx.types.ResRet.f32 %776, 1
  %779 = extractvalue %dx.types.ResRet.f32 %776, 2
  %780 = extractvalue %dx.types.ResRet.f32 %776, 3
  %781 = fadd fast float %774, %157
  %782 = fadd fast float %781, %779
  %783 = fmul fast float %781, %778
  %784 = call float @dx.op.unary.f32(i32 29, float %783)  ; Round_z(value)
  %785 = fmul fast float %777, %784
  %786 = fsub fast float %781, %785
  %787 = fmul fast float %782, %778
  %788 = call float @dx.op.unary.f32(i32 29, float %787)  ; Round_z(value)
  %789 = fmul fast float %788, %777
  %790 = fsub fast float %782, %789
  %791 = fmul fast float %786, %771
  %792 = fmul fast float %786, %772
  %793 = fmul fast float %790, %771
  %794 = fmul fast float %790, %772
  %795 = fsub fast float %650, %791
  %796 = fsub fast float %651, %792
  %797 = fsub fast float %650, %793
  %798 = fsub fast float %651, %794
  %799 = fsub fast float %779, %786
  %800 = call float @dx.op.unary.f32(i32 6, float %799)  ; FAbs(value)
  %801 = fmul fast float %800, %780
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  br label %803

; <label>:803                                     ; preds = %770, %725
  %804 = phi float [ %795, %770 ], [ %650, %725 ]
  %805 = phi float [ %796, %770 ], [ %651, %725 ]
  %806 = phi float [ %797, %770 ], [ %650, %725 ]
  %807 = phi float [ %798, %770 ], [ %651, %725 ]
  %808 = phi float [ %802, %770 ], [ 0.000000e+00, %725 ]
  %809 = fmul fast float %488, 4.000000e+00
  %810 = uitofp i32 %731 to float
  %811 = fadd fast float %810, %809
  %812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.f32 %812, 0
  %814 = extractvalue %dx.types.CBufRet.f32 %812, 1
  %815 = extractvalue %dx.types.CBufRet.f32 %812, 2
  %816 = extractvalue %dx.types.CBufRet.f32 %812, 3
  %817 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 0
  store float %813, float* %817, align 4
  %818 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 1
  store float %814, float* %818, align 4
  %819 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 2
  store float %815, float* %819, align 4
  %820 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 3
  store float %816, float* %820, align 4
  %821 = getelementptr inbounds [4 x float], [4 x float]* %46, i32 0, i32 %731
  %822 = load float, float* %821, align 4, !tbaa !77, !noalias !81
  %823 = fmul fast float %822, %491
  %824 = select i1 %643, float %823, float %491
  %825 = fmul fast float %804, %750
  %826 = call float @dx.op.tertiary.f32(i32 46, float %751, float %805, float %825)  ; FMad(a,b,c)
  %827 = fmul fast float %804, %752
  %828 = call float @dx.op.tertiary.f32(i32 46, float %753, float %805, float %827)  ; FMad(a,b,c)
  %829 = add i32 %747, 8
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  %832 = extractvalue %dx.types.ResRet.f32 %830, 1
  %833 = fadd fast float %831, %826
  %834 = fadd fast float %832, %828
  %835 = fmul fast float %833, %824
  %836 = fmul fast float %834, %824
  %837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %747, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = fmul fast float %835, %838
  %841 = fmul fast float %836, %839
  %842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %843 = extractvalue %dx.types.CBufRet.f32 %842, 2
  %844 = fadd fast float %840, %843
  %845 = fadd fast float %841, %843
  %846 = fmul fast float %806, %750
  %847 = call float @dx.op.tertiary.f32(i32 46, float %751, float %807, float %846)  ; FMad(a,b,c)
  %848 = fmul fast float %806, %752
  %849 = call float @dx.op.tertiary.f32(i32 46, float %753, float %807, float %848)  ; FMad(a,b,c)
  %850 = fadd fast float %831, %847
  %851 = fadd fast float %832, %849
  %852 = fmul fast float %850, %824
  %853 = fmul fast float %851, %824
  %854 = fmul fast float %852, %838
  %855 = fmul fast float %853, %839
  %856 = fadd fast float %854, %843
  %857 = fadd fast float %855, %843
  %858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %844, float %845, float %811, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = extractvalue %dx.types.ResRet.f32 %858, 1
  %861 = extractvalue %dx.types.ResRet.f32 %858, 3
  %862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %856, float %857, float %811, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %641, label %863, label %876

; <label>:863                                     ; preds = %803
  %864 = extractvalue %dx.types.ResRet.f32 %862, 3
  %865 = extractvalue %dx.types.ResRet.f32 %862, 1
  %866 = extractvalue %dx.types.ResRet.f32 %862, 0
  %867 = fsub fast float %866, %859
  %868 = fsub fast float %865, %860
  %869 = fsub fast float %864, %861
  %870 = fmul fast float %867, %808
  %871 = fmul fast float %868, %808
  %872 = fmul fast float %869, %808
  %873 = fadd fast float %870, %859
  %874 = fadd fast float %871, %860
  %875 = fadd fast float %872, %861
  br label %876

; <label>:876                                     ; preds = %863, %803
  %877 = phi float [ %873, %863 ], [ %859, %803 ]
  %878 = phi float [ %874, %863 ], [ %860, %803 ]
  %879 = phi float [ %875, %863 ], [ %861, %803 ]
  %880 = fmul fast float %877, 2.000000e+00
  %881 = fmul fast float %878, 2.000000e+00
  %882 = fadd fast float %880, -1.000000e+00
  %883 = fadd fast float %881, -1.000000e+00
  %884 = fmul fast float %882, %750
  %885 = call float @dx.op.tertiary.f32(i32 46, float %883, float %752, float %884)  ; FMad(a,b,c)
  %886 = fmul fast float %882, %751
  %887 = call float @dx.op.tertiary.f32(i32 46, float %883, float %753, float %886)  ; FMad(a,b,c)
  %888 = fmul fast float %745, %646
  %889 = fmul fast float %888, %766
  %890 = fmul fast float %889, %769
  %891 = fmul fast float %885, %890
  %892 = fmul fast float %891, %838
  %893 = fmul fast float %887, %890
  %894 = fmul fast float %893, %839
  %895 = fadd fast float %892, %712
  %896 = fadd fast float %894, %713
  %897 = add i32 %747, 64
  %898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = fmul fast float %899, %879
  %901 = extractvalue %dx.types.ResRet.f32 %898, 1
  %902 = fadd fast float %900, %901
  %903 = call float @dx.op.binary.f32(i32 35, float %711, float %902)  ; FMax(a,b)
  %904 = add nuw i32 %715, 1
  %905 = icmp eq i32 %904, %707
  br i1 %905, label %906, label %710

; <label>:906                                     ; preds = %876
  br label %907

; <label>:907                                     ; preds = %906, %704
  %908 = phi float [ 0.000000e+00, %704 ], [ %903, %906 ]
  %909 = phi float [ 0.000000e+00, %704 ], [ %895, %906 ]
  %910 = phi float [ 0.000000e+00, %704 ], [ %896, %906 ]
  %911 = call float @dx.op.dot3.f32(i32 55, float %909, float %910, float 1.000000e+00, float %909, float %910, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %912 = call float @dx.op.unary.f32(i32 25, float %911)  ; Rsqrt(value)
  %913 = fmul fast float %912, %909
  %914 = fmul fast float %912, %910
  %915 = fmul fast float %908, %539
  %916 = fadd fast float %915, %540
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  br label %918

; <label>:918                                     ; preds = %907, %477
  %919 = phi float [ %913, %907 ], [ 0.000000e+00, %477 ]
  %920 = phi float [ %914, %907 ], [ 0.000000e+00, %477 ]
  %921 = phi float [ %912, %907 ], [ 0.000000e+00, %477 ]
  %922 = phi float [ %917, %907 ], [ 0.000000e+00, %477 ]
  %923 = fmul fast float %919, %475
  %924 = fmul fast float %920, %475
  %925 = fadd fast float %923, %429
  %926 = fadd fast float %924, %430
  %927 = fadd fast float %922, %633
  %928 = fmul fast float %921, %475
  %929 = fadd fast float %923, %433
  %930 = fadd fast float %924, %434
  %931 = fadd fast float %928, %435
  %932 = fmul fast float %922, %475
  %933 = fadd fast float %932, %437
  %934 = fmul fast float %927, %475
  %935 = fadd fast float %934, %438
  %936 = icmp ne i32 %494, 0
  %937 = select i1 %936, i32 2, i32 0
  %938 = fcmp fast ogt float %922, 0.000000e+00
  %939 = select i1 %938, i32 4, i32 0
  %940 = icmp ne i32 %627, 0
  %941 = icmp ne i32 %609, 0
  %942 = and i1 %940, %941
  br i1 %942, label %943, label %1011

; <label>:943                                     ; preds = %918
  %944 = add i32 %609, 0
  %945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %944, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %949 = extractvalue %dx.types.CBufRet.f32 %948, 0
  %950 = extractvalue %dx.types.CBufRet.f32 %948, 1
  %951 = fadd fast float %949, %100
  %952 = fadd fast float %950, %101
  %953 = fmul fast float %951, %524
  %954 = fmul fast float %952, %524
  %955 = fmul fast float %947, %525
  %956 = fmul fast float %947, %526
  %957 = fadd fast float %953, %955
  %958 = fadd fast float %954, %956
  %959 = fmul fast float %951, %530
  %960 = fmul fast float %952, %530
  %961 = fmul fast float %947, %531
  %962 = fmul fast float %947, %532
  %963 = fadd fast float %959, %961
  %964 = fadd fast float %960, %962
  %965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %966 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %945, %dx.types.Handle %965, float %957, float %958, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = extractvalue %dx.types.ResRet.f32 %966, 1
  %969 = extractvalue %dx.types.ResRet.f32 %966, 2
  %970 = extractvalue %dx.types.ResRet.f32 %966, 3
  %971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %945, %dx.types.Handle %965, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 0
  %973 = extractvalue %dx.types.ResRet.f32 %971, 1
  %974 = extractvalue %dx.types.ResRet.f32 %971, 2
  %975 = extractvalue %dx.types.ResRet.f32 %971, 3
  %976 = fmul fast float %967, %612
  %977 = fadd fast float %976, %613
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = fadd fast float %968, %970
  %980 = fmul fast float %979, %614
  %981 = fsub fast float %980, %614
  %982 = fsub fast float %968, %970
  %983 = fmul fast float %982, %614
  %984 = fmul fast float %972, %612
  %985 = fadd fast float %984, %613
  %986 = call float @dx.op.unary.f32(i32 7, float %985)  ; Saturate(value)
  %987 = fadd fast float %973, %975
  %988 = fmul fast float %987, %614
  %989 = fsub fast float %988, %614
  %990 = fsub fast float %973, %975
  %991 = fmul fast float %990, %614
  %992 = fmul fast float %981, %523
  %993 = fmul fast float %983, %523
  %994 = fmul fast float %989, %529
  %995 = fmul fast float %991, %529
  %996 = fadd fast float %994, %992
  %997 = fadd fast float %995, %993
  %998 = fmul fast float %969, %523
  %999 = fmul fast float %974, %529
  %1000 = fadd fast float %999, %998
  %1001 = fmul fast float %978, %523
  %1002 = fmul fast float %986, %529
  %1003 = fadd fast float %1002, %1001
  %1004 = fmul fast float %996, %475
  %1005 = fmul fast float %997, %475
  %1006 = fadd fast float %1004, %925
  %1007 = fadd fast float %1005, %926
  %1008 = fmul fast float %1000, %475
  %1009 = fadd fast float %1008, 1.000000e+00
  %1010 = fmul fast float %1003, %475
  br label %1011

; <label>:1011                                    ; preds = %943, %918
  %1012 = phi float [ %1006, %943 ], [ %925, %918 ]
  %1013 = phi float [ %1007, %943 ], [ %926, %918 ]
  %1014 = phi float [ %1009, %943 ], [ 1.000000e+00, %918 ]
  %1015 = phi float [ %1010, %943 ], [ %503, %918 ]
  %1016 = fmul fast float %567, %342
  %1017 = fadd fast float %1016, %568
  %1018 = call float @dx.op.binary.f32(i32 35, float %1017, float 0.000000e+00)  ; FMax(a,b)
  %1019 = fmul fast float %1018, %560
  %1020 = fadd fast float %1019, %561
  %1021 = call float @dx.op.unary.f32(i32 7, float %1020)  ; Saturate(value)
  %1022 = fmul fast float %1021, %927
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1025 = fcmp fast oge float %1022, %1024
  %1026 = fmul fast float %1022, %475
  %1027 = fadd fast float %1026, %440
  %1028 = select i1 %941, i32 8, i32 0
  %1029 = shl i32 %485, 3
  %1030 = and i32 %1029, 16
  %1031 = and i32 %485, 2
  %1032 = icmp ne i32 %1031, 0
  %1033 = and i1 %1032, %1025
  %1034 = select i1 %1033, i32 32, i32 0
  %1035 = shl i32 %485, 2
  %1036 = and i32 %1035, 256
  %1037 = and i32 %485, 514
  %1038 = icmp eq i32 %1037, 2
  %1039 = and i1 %1038, %1025
  br i1 %1039, label %1040, label %1180

; <label>:1040                                    ; preds = %1011
  %1041 = add i32 %217, 0
  %1042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1043 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1042, i32 0)  ; GetDimensions(handle,mipLevel)
  %1044 = extractvalue %dx.types.Dimensions %1043, 0
  %1045 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1044)  ; FirstbitLo(value)
  %1046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.i32 %1046, 1
  %1048 = sub nsw i32 %1047, %1045
  %1049 = sitofp i32 %1048 to float
  %1050 = fsub fast float %520, %1049
  %1051 = call float @dx.op.binary.f32(i32 35, float %1050, float 0.000000e+00)  ; FMax(a,b)
  %1052 = fmul fast float %514, %227
  %1053 = fmul fast float %514, %228
  %1054 = fsub fast float %237, %515
  %1055 = fmul fast float %518, %117
  %1056 = fmul fast float %518, %119
  %1057 = call float @dx.op.unary.f32(i32 22, float %1055)  ; Frc(value)
  %1058 = call float @dx.op.unary.f32(i32 22, float %1056)  ; Frc(value)
  %1059 = fmul fast float %1057, 2.000000e+00
  %1060 = fmul fast float %1058, 2.000000e+00
  %1061 = fadd fast float %1059, -1.000000e+00
  %1062 = fadd fast float %1060, -1.000000e+00
  %1063 = call float @dx.op.unary.f32(i32 6, float %1061)  ; FAbs(value)
  %1064 = call float @dx.op.unary.f32(i32 6, float %1062)  ; FAbs(value)
  %1065 = fsub fast float 1.000000e+00, %1063
  %1066 = fmul fast float %1065, %1064
  %1067 = fsub fast float %1065, %1066
  %1068 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 0
  store float %1067, float* %1068, align 4, !tbaa !77, !noalias !86
  %1069 = fmul fast float %1064, %1063
  %1070 = fsub fast float %1063, %1069
  %1071 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 1
  store float %1070, float* %1071, align 4, !tbaa !77, !noalias !86
  %1072 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 2
  store float %1066, float* %1072, align 4, !tbaa !77, !noalias !86
  %1073 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 3
  store float %1069, float* %1073, align 4, !tbaa !77, !noalias !86
  br label %1074

; <label>:1074                                    ; preds = %1165, %1040
  %1075 = phi float [ 0.000000e+00, %1040 ], [ %1166, %1165 ]
  %1076 = phi float [ 0.000000e+00, %1040 ], [ %1167, %1165 ]
  %1077 = phi float [ 0.000000e+00, %1040 ], [ %1168, %1165 ]
  %1078 = phi i32 [ 0, %1040 ], [ %1169, %1165 ]
  %1079 = mul i32 %1078, 2
  %1080 = add i32 0, %1079
  %1081 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1080
  %1082 = load float, float* %1081, align 4
  %1083 = mul i32 %1078, 2
  %1084 = add i32 1, %1083
  %1085 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1084
  %1086 = load float, float* %1085, align 4
  %1087 = fmul fast float %1082, 5.000000e-01
  %1088 = fmul fast float %1086, 5.000000e-01
  %1089 = fsub fast float 1.000000e+00, %1082
  %1090 = fsub fast float 1.000000e+00, %1086
  %1091 = fmul fast float %1089, 5.000000e-01
  %1092 = fmul fast float %1090, 5.000000e-01
  %1093 = fadd fast float %1087, %1055
  %1094 = fadd fast float %1088, %1056
  %1095 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1097 = fadd fast float %1095, %1091
  %1098 = fadd fast float %1096, %1092
  %1099 = fmul fast float %1097, %519
  %1100 = fmul fast float %1098, %519
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = fmul fast float %1099, %1102
  %1104 = fmul fast float %1100, %1102
  %1105 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1106 = fadd fast float %1103, %1105
  %1107 = fadd fast float %1104, %1105
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1042, %dx.types.Handle %42, float %1106, float %1107, float %205, float undef, i32 0, i32 0, i32 undef, float %1051)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1113 = fmul fast float %1112, 2.000000e+00
  %1114 = fmul fast float %1113, %1109
  %1115 = fmul fast float %1113, %1110
  %1116 = fsub fast float %1114, %1112
  %1117 = fsub fast float %1115, %1112
  %1118 = fmul fast float %1116, %1116
  %1119 = fmul fast float %1117, %1117
  %1120 = fadd fast float %1118, %1119
  %1121 = call float @dx.op.unary.f32(i32 24, float %1120)  ; Sqrt(value)
  %1122 = fcmp fast ogt float %1121, 0.000000e+00
  %1123 = fdiv fast float 1.000000e+00, %1121
  %1124 = fmul fast float %1116, %1123
  %1125 = fmul fast float %1117, %1123
  %1126 = select i1 %1122, float %1124, float 0.000000e+00
  %1127 = select i1 %1122, float %1125, float 0.000000e+00
  %1128 = fcmp fast ogt float %927, 0.000000e+00
  %1129 = and i1 %1032, %1128
  br i1 %1129, label %1130, label %1165

; <label>:1130                                    ; preds = %1074
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1133 = fmul fast float %564, %514
  %1134 = add i32 %620, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1134, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1135, i32 0)  ; GetDimensions(handle,mipLevel)
  %1137 = extractvalue %dx.types.Dimensions %1136, 0
  %1138 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1137)  ; FirstbitLo(value)
  %1139 = uitofp i32 %1138 to float
  %1140 = fsub fast float %1054, %557
  %1141 = fadd fast float %1140, %1139
  %1142 = fmul fast float %1133, %1121
  %1143 = fsub fast float -0.000000e+00, %1126
  %1144 = fmul fast float %1127, %1052
  %1145 = call float @dx.op.tertiary.f32(i32 46, float %1143, float %1053, float %1144)  ; FMad(a,b,c)
  %1146 = fmul fast float %1126, %1052
  %1147 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1053, float %1146)  ; FMad(a,b,c)
  %1148 = fmul fast float %1142, %1132
  %1149 = fsub fast float %1147, %1148
  %1150 = fmul fast float %1145, %555
  %1151 = fmul fast float %1149, %556
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1152, float %1150, float %1151, float undef, float undef, i32 0, i32 0, i32 undef, float %1141)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  %1155 = fmul fast float %1019, %1154
  %1156 = fadd fast float %1155, %561
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = getelementptr [4 x float], [4 x float]* %57, i32 0, i32 %1078
  %1159 = load float, float* %1158, align 4, !tbaa !77, !noalias !86
  %1160 = fmul fast float %1159, %1157
  %1161 = fadd fast float %1160, %1075
  %1162 = fmul fast float %1160, %549
  %1163 = fadd fast float %1162, %1076
  %1164 = fadd fast float %1160, %1077
  br label %1165

; <label>:1165                                    ; preds = %1130, %1074
  %1166 = phi float [ %1161, %1130 ], [ %1075, %1074 ]
  %1167 = phi float [ %1163, %1130 ], [ %1076, %1074 ]
  %1168 = phi float [ %1164, %1130 ], [ %1077, %1074 ]
  %1169 = add nuw nsw i32 %1078, 1
  %1170 = icmp eq i32 %1169, 4
  br i1 %1170, label %1171, label %1074, !llvm.loop !92

; <label>:1171                                    ; preds = %1165
  %1172 = fmul fast float %1168, %927
  %1173 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1172)  ; FMax(a,b)
  %1174 = fadd fast float %1166, -1.000000e+00
  %1175 = fmul fast float %1168, %1174
  %1176 = fadd fast float %1175, 1.000000e+00
  %1177 = fsub fast float %1167, %503
  %1178 = fmul fast float %1168, %1177
  %1179 = fadd fast float %1178, %503
  br label %1180

; <label>:1180                                    ; preds = %1171, %1011
  %1181 = phi float [ %1173, %1171 ], [ 0.000000e+00, %1011 ]
  %1182 = phi float [ %1176, %1171 ], [ 1.000000e+00, %1011 ]
  %1183 = phi float [ %1179, %1171 ], [ %503, %1011 ]
  %1184 = fmul fast float %602, %342
  %1185 = fadd fast float %1184, %603
  %1186 = call float @dx.op.binary.f32(i32 35, float %1185, float 0.000000e+00)  ; FMax(a,b)
  %1187 = fmul fast float %1186, %598
  %1188 = fadd fast float %1187, %599
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = fmul fast float %1189, %927
  %1191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1192 = extractvalue %dx.types.CBufRet.f32 %1191, 1
  %1193 = fcmp fast oge float %1190, %1192
  %1194 = fmul fast float %1190, %475
  %1195 = fadd fast float %1194, %441
  %1196 = shl i32 %485, 4
  %1197 = and i32 %1196, 64
  %1198 = and i32 %485, 4
  %1199 = icmp ne i32 %1198, 0
  %1200 = and i1 %1199, %1193
  %1201 = select i1 %1200, i32 128, i32 0
  %1202 = add i32 %620, 0
  %1203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1202, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  br i1 %1200, label %1205, label %1204

; <label>:1204                                    ; preds = %1180
  br label %1395

; <label>:1205                                    ; preds = %1180
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = fsub fast float %100, %227
  %1210 = fadd fast float %1209, %1207
  %1211 = fsub fast float %101, %228
  %1212 = fadd fast float %1211, %1208
  %1213 = fmul fast float %1210, %571
  %1214 = fmul fast float %1212, %571
  %1215 = fadd fast float %1213, %227
  %1216 = fadd fast float %1214, %228
  %1217 = add i32 %626, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = add i32 %626, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1219, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1220, i32 0)  ; GetDimensions(handle,mipLevel)
  %1222 = extractvalue %dx.types.Dimensions %1221, 0
  %1223 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1222)  ; FirstbitLo(value)
  %1224 = uitofp i32 %1223 to float
  %1225 = fsub fast float %237, %580
  %1226 = fadd fast float %1225, %1224
  %1227 = fmul fast float %1215, %579
  %1228 = fmul fast float %1216, %579
  %1229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1218, %dx.types.Handle %1229, float %1227, float %1228, float undef, float undef, i32 0, i32 0, i32 undef, float %1226)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  %1232 = extractvalue %dx.types.ResRet.f32 %1230, 1
  %1233 = extractvalue %dx.types.ResRet.f32 %1230, 2
  %1234 = fmul fast float %1231, 2.000000e+00
  %1235 = fmul fast float %1232, 2.000000e+00
  %1236 = fadd fast float %1234, -1.000000e+00
  %1237 = fadd fast float %1235, -1.000000e+00
  %1238 = fmul fast float %1233, %574
  %1239 = fmul fast float %1238, %589
  %1240 = fmul fast float %1239, %1236
  %1241 = fmul fast float %1239, %1237
  %1242 = fsub fast float %337, %1240
  %1243 = fsub fast float %338, %1241
  %1244 = fmul fast float %1242, %586
  %1245 = fmul fast float %1243, %586
  %1246 = fadd fast float %1244, %1240
  %1247 = fadd fast float %1245, %1241
  %1248 = fmul fast float %1246, %589
  %1249 = fmul fast float %1247, %589
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1252 = fmul fast float %589, %157
  %1253 = fadd fast float %1251, %1252
  %1254 = fadd fast float %1253, %594
  %1255 = fmul fast float %1253, %593
  %1256 = call float @dx.op.unary.f32(i32 29, float %1255)  ; Round_z(value)
  %1257 = fmul fast float %1256, %592
  %1258 = fsub fast float %1253, %1257
  %1259 = fmul fast float %1254, %593
  %1260 = call float @dx.op.unary.f32(i32 29, float %1259)  ; Round_z(value)
  %1261 = fmul fast float %1260, %592
  %1262 = fsub fast float %1254, %1261
  %1263 = fmul fast float %1248, %1258
  %1264 = fmul fast float %1249, %1258
  %1265 = fmul fast float %1248, %1262
  %1266 = fmul fast float %1249, %1262
  %1267 = fsub fast float %1215, %1263
  %1268 = fsub fast float %1216, %1264
  %1269 = fsub fast float %1215, %1265
  %1270 = fsub fast float %1216, %1266
  %1271 = fsub fast float %594, %1258
  %1272 = call float @dx.op.unary.f32(i32 6, float %1271)  ; FAbs(value)
  %1273 = fmul fast float %1272, %595
  %1274 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1275 = fmul fast float %1267, %575
  %1276 = fmul fast float %1268, %575
  %1277 = fmul fast float %1269, %575
  %1278 = fmul fast float %1270, %575
  %1279 = fcmp fast ogt float %583, 0.000000e+00
  %1280 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1203, i32 0)  ; GetDimensions(handle,mipLevel)
  %1281 = extractvalue %dx.types.Dimensions %1280, 0
  %1282 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1281)  ; FirstbitLo(value)
  %1283 = uitofp i32 %1282 to float
  %1284 = fsub fast float %237, %576
  %1285 = fadd fast float %1284, %1283
  br i1 %1279, label %1286, label %1373

; <label>:1286                                    ; preds = %1205
  %1287 = fmul fast float %583, %157
  %1288 = fmul fast float %1287, 5.000000e-01
  %1289 = fadd fast float %1288, 5.000000e-01
  %1290 = call float @dx.op.unary.f32(i32 22, float %1289)  ; Frc(value)
  %1291 = call float @dx.op.unary.f32(i32 22, float %1288)  ; Frc(value)
  %1292 = call float @dx.op.unary.f32(i32 27, float %1289)  ; Round_ni(value)
  %1293 = call float @dx.op.unary.f32(i32 27, float %1288)  ; Round_ni(value)
  %1294 = fmul fast float %1292, 2.000000e+00
  %1295 = fmul fast float %1293, 2.000000e+00
  %1296 = fadd fast float %1295, 1.000000e+00
  %1297 = fsub fast float 1.000000e+00, %1290
  %1298 = fsub fast float 1.000000e+00, %1291
  %1299 = call float @dx.op.binary.f32(i32 36, float %1290, float %1297)  ; FMin(a,b)
  %1300 = call float @dx.op.binary.f32(i32 36, float %1291, float %1298)  ; FMin(a,b)
  %1301 = fmul fast float %1299, 2.000000e+00
  %1302 = fmul fast float %1300, 2.000000e+00
  %1303 = call float @dx.op.dot3.f32(i32 55, float %1294, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1304 = call float @dx.op.dot3.f32(i32 55, float %1294, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1294, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = call float @dx.op.unary.f32(i32 13, float %1303)  ; Sin(value)
  %1307 = call float @dx.op.unary.f32(i32 13, float %1304)  ; Sin(value)
  %1308 = call float @dx.op.unary.f32(i32 13, float %1305)  ; Sin(value)
  %1309 = fmul fast float %1306, 0x40E55DD180000000
  %1310 = fmul fast float %1307, 0x40E55DD180000000
  %1311 = fmul fast float %1308, 0x40E55DD180000000
  %1312 = call float @dx.op.unary.f32(i32 22, float %1309)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 22, float %1310)  ; Frc(value)
  %1314 = call float @dx.op.unary.f32(i32 22, float %1311)  ; Frc(value)
  %1315 = fmul fast float %1312, 0x401921FB60000000
  %1316 = call float @dx.op.unary.f32(i32 12, float %1315)  ; Cos(value)
  %1317 = call float @dx.op.unary.f32(i32 13, float %1315)  ; Sin(value)
  %1318 = fsub fast float -0.000000e+00, %1317
  %1319 = call float @dx.op.dot3.f32(i32 55, float %1296, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1320 = call float @dx.op.dot3.f32(i32 55, float %1296, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1321 = call float @dx.op.dot3.f32(i32 55, float %1296, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1322 = call float @dx.op.unary.f32(i32 13, float %1319)  ; Sin(value)
  %1323 = call float @dx.op.unary.f32(i32 13, float %1320)  ; Sin(value)
  %1324 = call float @dx.op.unary.f32(i32 13, float %1321)  ; Sin(value)
  %1325 = fmul fast float %1322, 0x40E55DD180000000
  %1326 = fmul fast float %1323, 0x40E55DD180000000
  %1327 = fmul fast float %1324, 0x40E55DD180000000
  %1328 = call float @dx.op.unary.f32(i32 22, float %1325)  ; Frc(value)
  %1329 = call float @dx.op.unary.f32(i32 22, float %1326)  ; Frc(value)
  %1330 = call float @dx.op.unary.f32(i32 22, float %1327)  ; Frc(value)
  %1331 = fmul fast float %1328, 0x401921FB60000000
  %1332 = call float @dx.op.unary.f32(i32 12, float %1331)  ; Cos(value)
  %1333 = call float @dx.op.unary.f32(i32 13, float %1331)  ; Sin(value)
  %1334 = fsub fast float -0.000000e+00, %1333
  %1335 = fmul fast float %1316, %1275
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1318, float %1335)  ; FMad(a,b,c)
  %1337 = fmul fast float %1317, %1275
  %1338 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1316, float %1337)  ; FMad(a,b,c)
  %1339 = fadd fast float %1336, %1313
  %1340 = fadd fast float %1338, %1314
  %1341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1229, float %1339, float %1340, float undef, float undef, i32 0, i32 0, i32 undef, float %1285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = fmul fast float %1342, %1301
  %1344 = fmul fast float %1332, %1275
  %1345 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1334, float %1344)  ; FMad(a,b,c)
  %1346 = fmul fast float %1333, %1275
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1276, float %1332, float %1346)  ; FMad(a,b,c)
  %1348 = fadd fast float %1345, %1329
  %1349 = fadd fast float %1347, %1330
  %1350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1229, float %1348, float %1349, float undef, float undef, i32 0, i32 0, i32 undef, float %1285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1351 = extractvalue %dx.types.ResRet.f32 %1350, 0
  %1352 = fmul fast float %1351, %1302
  %1353 = fadd fast float %1352, %1343
  %1354 = fmul fast float %1316, %1277
  %1355 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1318, float %1354)  ; FMad(a,b,c)
  %1356 = fmul fast float %1317, %1277
  %1357 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1316, float %1356)  ; FMad(a,b,c)
  %1358 = fadd fast float %1355, %1313
  %1359 = fadd fast float %1357, %1314
  %1360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1229, float %1358, float %1359, float undef, float undef, i32 0, i32 0, i32 undef, float %1285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = fmul fast float %1361, %1301
  %1363 = fmul fast float %1332, %1277
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1334, float %1363)  ; FMad(a,b,c)
  %1365 = fmul fast float %1333, %1277
  %1366 = call float @dx.op.tertiary.f32(i32 46, float %1278, float %1332, float %1365)  ; FMad(a,b,c)
  %1367 = fadd fast float %1364, %1329
  %1368 = fadd fast float %1366, %1330
  %1369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1229, float %1367, float %1368, float undef, float undef, i32 0, i32 0, i32 undef, float %1285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = fmul fast float %1370, %1302
  %1372 = fadd fast float %1371, %1362
  br label %1378

; <label>:1373                                    ; preds = %1205
  %1374 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1229, float %1275, float %1276, float undef, float undef, i32 0, i32 0, i32 undef, float %1285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %635, %dx.types.Handle %1229, float %1277, float %1278, float undef, float undef, i32 0, i32 0, i32 undef, float %1285)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  br label %1378

; <label>:1378                                    ; preds = %1373, %1286
  %1379 = phi float [ %1353, %1286 ], [ %1375, %1373 ]
  %1380 = phi float [ %1372, %1286 ], [ %1377, %1373 ]
  %1381 = fsub fast float %1380, %1379
  %1382 = fmul fast float %1381, %1274
  %1383 = fadd fast float %1382, %1379
  %1384 = fmul fast float %1187, %1383
  %1385 = fadd fast float %1384, %599
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1387 = fsub fast float 1.000000e+00, %1182
  %1388 = fmul fast float %1386, %1387
  %1389 = fadd fast float %1388, %1182
  %1390 = fsub fast float %549, %1183
  %1391 = fmul fast float %1386, %1390
  %1392 = fadd fast float %1391, %1183
  %1393 = fmul fast float %1386, %927
  %1394 = call float @dx.op.binary.f32(i32 35, float %1181, float %1393)  ; FMax(a,b)
  br label %1395

; <label>:1395                                    ; preds = %1378, %1204
  %1396 = phi float [ %1394, %1378 ], [ %1181, %1204 ]
  %1397 = phi float [ %1389, %1378 ], [ %1182, %1204 ]
  %1398 = phi float [ %1392, %1378 ], [ %1183, %1204 ]
  %1399 = fmul fast float %228, 3.906250e-03
  %1400 = fmul fast float %227, 7.812500e-03
  %1401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1402 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %635, %dx.types.Handle %1401, float %1400, float %1399, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1403 = add i32 %620, 0
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1403, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1404, i32 0)  ; GetDimensions(handle,mipLevel)
  %1406 = extractvalue %dx.types.Dimensions %1405, 0
  %1407 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1406)  ; FirstbitLo(value)
  %1408 = uitofp i32 %1407 to float
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.f32 %1411, 2
  %1413 = fadd fast float %237, -7.000000e+00
  %1414 = fadd fast float %1413, %1408
  %1415 = fadd fast float %1414, %1410
  %1416 = fadd fast float %1415, %1412
  %1417 = call float @dx.op.binary.f32(i32 35, float %1416, float 0.000000e+00)  ; FMax(a,b)
  %1418 = and i32 %485, 8
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1436, label %1420

; <label>:1420                                    ; preds = %1395
  %1421 = fadd fast float %606, 1.000000e+00
  %1422 = fmul fast float %927, %1421
  %1423 = fsub fast float %1422, %606
  %1424 = fsub fast float %1421, %1423
  %1425 = call float @dx.op.unary.f32(i32 7, float %1424)  ; Saturate(value)
  %1426 = fsub fast float 1.000000e+00, %1422
  %1427 = call float @dx.op.unary.f32(i32 7, float %1426)  ; Saturate(value)
  %1428 = fsub fast float %1425, %1427
  %1429 = fsub fast float %1396, %1427
  %1430 = fdiv fast float %1429, %1428
  %1431 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1432 = fmul fast float %1431, 2.000000e+00
  %1433 = fsub fast float 3.000000e+00, %1432
  %1434 = fmul fast float %1431, %1431
  %1435 = fmul fast float %1434, %1433
  br label %1436

; <label>:1436                                    ; preds = %1420, %1395
  %1437 = phi float [ %1435, %1420 ], [ %1396, %1395 ]
  %1438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1439 = extractvalue %dx.types.CBufRet.f32 %1438, 3
  %1440 = fmul fast float %1439, %1437
  %1441 = fmul fast float %1440, %475
  %1442 = fadd fast float %1441, %445
  %1443 = call float @dx.op.unary.f32(i32 7, float %1442)  ; Saturate(value)
  %1444 = and i32 %485, 32
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1462, label %1446

; <label>:1446                                    ; preds = %1436
  %1447 = add i32 %623, 0
  %1448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1447, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1449 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1448, %dx.types.Handle %41, float %1440, float %552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1450 = extractvalue %dx.types.ResRet.f32 %1449, 0
  %1451 = extractvalue %dx.types.ResRet.f32 %1449, 1
  %1452 = extractvalue %dx.types.ResRet.f32 %1449, 2
  %1453 = extractvalue %dx.types.ResRet.f32 %1449, 3
  %1454 = and i32 %617, 255
  %1455 = uitofp i32 %1454 to float
  %1456 = lshr i32 %617, 8
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = fmul fast float %1453, %1455
  %1460 = fadd fast float %1459, %1458
  %1461 = fmul fast float %1460, 0x3F70101000000000
  br label %1462

; <label>:1462                                    ; preds = %1446, %1436
  %1463 = phi float [ %1450, %1446 ], [ %543, %1436 ]
  %1464 = phi float [ %1451, %1446 ], [ %544, %1436 ]
  %1465 = phi float [ %1452, %1446 ], [ %545, %1436 ]
  %1466 = phi float [ %1461, %1446 ], [ %546, %1436 ]
  %1467 = fsub fast float %1463, %497
  %1468 = fsub fast float %1464, %498
  %1469 = fsub fast float %1465, %499
  %1470 = fmul fast float %1467, %1440
  %1471 = fmul fast float %1468, %1440
  %1472 = fmul fast float %1469, %1440
  %1473 = fadd fast float %1470, %497
  %1474 = fadd fast float %1471, %498
  %1475 = fadd fast float %1472, %499
  %1476 = fsub fast float %1466, %500
  %1477 = fmul fast float %1476, %1440
  %1478 = fadd fast float %1477, %500
  %1479 = fsub fast float %1398, %1015
  %1480 = fmul fast float %1440, %1479
  %1481 = fadd fast float %1480, %1015
  %1482 = fsub fast float %1397, %1014
  %1483 = fmul fast float %1440, %1482
  %1484 = fadd fast float %1483, %1014
  %1485 = fmul fast float %506, %368
  %1486 = fadd fast float %1485, %507
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1489 = fcmp fast oge float %1486, %1488
  %1490 = select i1 %1489, i32 512, i32 0
  %1491 = or i32 %1030, %442
  %1492 = or i32 %1491, %1036
  %1493 = or i32 %1492, %1197
  %1494 = or i32 %1493, %937
  %1495 = or i32 %1494, %1028
  %1496 = or i32 %1495, %939
  %1497 = or i32 %1496, %1034
  %1498 = or i32 %1497, %1201
  %1499 = or i32 %1498, %1490
  %1500 = and i32 %431, 65535
  %1501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1500)  ; LegacyF16ToF32(value)
  %1502 = lshr i32 %431, 16
  %1503 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1502)  ; LegacyF16ToF32(value)
  %1504 = and i32 %432, 65535
  %1505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1504)  ; LegacyF16ToF32(value)
  %1506 = lshr i32 %432, 16
  %1507 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1506)  ; LegacyF16ToF32(value)
  %1508 = fmul fast float %1473, %475
  %1509 = fmul fast float %1474, %475
  %1510 = fmul fast float %1475, %475
  %1511 = fmul fast float %1478, %475
  %1512 = fadd fast float %1501, %1508
  %1513 = fadd fast float %1503, %1509
  %1514 = fadd fast float %1505, %1510
  %1515 = fadd fast float %1507, %1511
  %1516 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1512)  ; LegacyF32ToF16(value)
  %1517 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1513)  ; LegacyF32ToF16(value)
  %1518 = shl i32 %1517, 16
  %1519 = or i32 %1518, %1516
  %1520 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1514)  ; LegacyF32ToF16(value)
  %1521 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1515)  ; LegacyF32ToF16(value)
  %1522 = shl i32 %1521, 16
  %1523 = or i32 %1522, %1520
  %1524 = and i32 %448, 65535
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = lshr i32 %448, 16
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = fmul fast float %1484, %475
  %1529 = fmul fast float %1481, %475
  %1530 = fadd fast float %1525, %1528
  %1531 = fadd fast float %1527, %1529
  %1532 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1530)  ; LegacyF32ToF16(value)
  %1533 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1531)  ; LegacyF32ToF16(value)
  %1534 = shl i32 %1533, 16
  %1535 = or i32 %1534, %1532
  %1536 = fcmp fast ogt float %1486, 0.000000e+00
  %1537 = select i1 %1536, float 1.000000e+00, float 0.000000e+00
  %1538 = and i32 %447, 65535
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = lshr i32 %447, 16
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = fmul fast float %1486, %475
  %1543 = fmul fast float %1537, %475
  %1544 = fadd fast float %1539, %1542
  %1545 = fadd fast float %1541, %1543
  %1546 = call float @dx.op.unary.f32(i32 7, float %1544)  ; Saturate(value)
  %1547 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1548 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1546)  ; LegacyF32ToF16(value)
  %1549 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1547)  ; LegacyF32ToF16(value)
  %1550 = shl i32 %1549, 16
  %1551 = or i32 %1550, %1548
  br label %1552

; <label>:1552                                    ; preds = %1462, %428
  %1553 = phi float [ %1012, %1462 ], [ %429, %428 ]
  %1554 = phi float [ %1013, %1462 ], [ %430, %428 ]
  %1555 = phi i32 [ %1519, %1462 ], [ %431, %428 ]
  %1556 = phi i32 [ %1523, %1462 ], [ %432, %428 ]
  %1557 = phi float [ %929, %1462 ], [ %433, %428 ]
  %1558 = phi float [ %930, %1462 ], [ %434, %428 ]
  %1559 = phi float [ %931, %1462 ], [ %435, %428 ]
  %1560 = phi float [ %632, %1462 ], [ %436, %428 ]
  %1561 = phi float [ %933, %1462 ], [ %437, %428 ]
  %1562 = phi float [ %935, %1462 ], [ %438, %428 ]
  %1563 = phi i32 [ %482, %1462 ], [ %439, %428 ]
  %1564 = phi float [ %1027, %1462 ], [ %440, %428 ]
  %1565 = phi float [ %1195, %1462 ], [ %441, %428 ]
  %1566 = phi i32 [ %1499, %1462 ], [ %442, %428 ]
  %1567 = phi float [ %1402, %1462 ], [ %443, %428 ]
  %1568 = phi float [ %1417, %1462 ], [ %444, %428 ]
  %1569 = phi float [ %1443, %1462 ], [ %445, %428 ]
  %1570 = phi i32 [ %1551, %1462 ], [ %447, %428 ]
  %1571 = phi i32 [ %1535, %1462 ], [ %448, %428 ]
  %1572 = add nuw i32 %446, 1
  %1573 = icmp eq i32 %1572, %374
  br i1 %1573, label %1574, label %428

; <label>:1574                                    ; preds = %1552
  br label %1575

; <label>:1575                                    ; preds = %1574, %424
  %1576 = phi float [ 0.000000e+00, %424 ], [ %1553, %1574 ]
  %1577 = phi float [ 0.000000e+00, %424 ], [ %1554, %1574 ]
  %1578 = phi i32 [ %144, %424 ], [ %1555, %1574 ]
  %1579 = phi i32 [ %144, %424 ], [ %1556, %1574 ]
  %1580 = phi float [ 0.000000e+00, %424 ], [ %1557, %1574 ]
  %1581 = phi float [ 0.000000e+00, %424 ], [ %1558, %1574 ]
  %1582 = phi float [ 0.000000e+00, %424 ], [ %1559, %1574 ]
  %1583 = phi float [ 0.000000e+00, %424 ], [ %1560, %1574 ]
  %1584 = phi float [ 0.000000e+00, %424 ], [ %1561, %1574 ]
  %1585 = phi float [ 0.000000e+00, %424 ], [ %1562, %1574 ]
  %1586 = phi i32 [ 0, %424 ], [ %1563, %1574 ]
  %1587 = phi float [ 0.000000e+00, %424 ], [ %1564, %1574 ]
  %1588 = phi float [ 0.000000e+00, %424 ], [ %1565, %1574 ]
  %1589 = phi i32 [ 0, %424 ], [ %1566, %1574 ]
  %1590 = phi float [ 0.000000e+00, %424 ], [ %1567, %1574 ]
  %1591 = phi float [ 0.000000e+00, %424 ], [ %1568, %1574 ]
  %1592 = phi float [ 0.000000e+00, %424 ], [ %1569, %1574 ]
  %1593 = phi i32 [ %144, %424 ], [ %1570, %1574 ]
  %1594 = phi i32 [ %144, %424 ], [ %1571, %1574 ]
  %1595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1596 = extractvalue %dx.types.CBufRet.f32 %1595, 2
  %1597 = fmul fast float %1596, 0x3FE3C6EF40000000
  %1598 = frem fast float %60, 2.560000e+02
  %1599 = frem fast float %61, 2.560000e+02
  %1600 = fptoui float %1598 to i32
  %1601 = fptoui float %1599 to i32
  %1602 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %1600, i32 %1601, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1603 = extractvalue %dx.types.ResRet.f32 %1602, 0
  %1604 = extractvalue %dx.types.ResRet.f32 %1602, 1
  %1605 = fadd fast float %1603, %1597
  %1606 = fadd fast float %1604, %1597
  %1607 = call float @dx.op.unary.f32(i32 22, float %1605)  ; Frc(value)
  %1608 = call float @dx.op.unary.f32(i32 22, float %1606)  ; Frc(value)
  %1609 = fcmp fast ogt float %66, 0.000000e+00
  %1610 = fcmp fast olt float %66, 0.000000e+00
  %1611 = zext i1 %1609 to i32
  %1612 = zext i1 %1610 to i32
  %1613 = sub nsw i32 %1611, %1612
  %1614 = sitofp i32 %1613 to float
  %1615 = fadd fast float %1614, %66
  %1616 = fdiv fast float -1.000000e+00, %1615
  %1617 = fmul fast float %64, %65
  %1618 = fmul fast float %1617, %1616
  %1619 = fmul fast float %64, %64
  %1620 = fmul fast float %1619, %1614
  %1621 = fmul fast float %1620, %1616
  %1622 = fadd fast float %1621, 1.000000e+00
  %1623 = fmul fast float %1618, %1614
  %1624 = fmul fast float %1614, %64
  %1625 = fmul fast float %65, %65
  %1626 = fmul fast float %1625, %1616
  %1627 = fadd fast float %1626, %1614
  %1628 = and i32 %1578, 65535
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = lshr i32 %1578, 16
  %1631 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1630)  ; LegacyF16ToF32(value)
  %1632 = and i32 %1579, 65535
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = lshr i32 %1579, 16
  %1635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1634)  ; LegacyF16ToF32(value)
  %1636 = and i32 %1594, 65535
  %1637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1636)  ; LegacyF16ToF32(value)
  %1638 = lshr i32 %1594, 16
  %1639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1638)  ; LegacyF16ToF32(value)
  %1640 = call float @dx.op.dot2.f32(i32 54, float %1576, float %1577, float %1576, float %1577)  ; Dot2(ax,ay,bx,by)
  %1641 = fmul fast float %1640, 0x3FE3333340000000
  %1642 = fsub fast float 1.000000e+00, %1641
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1577, float %1642, float %1576, float %1577, float %1642)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = call float @dx.op.unary.f32(i32 25, float %1643)  ; Rsqrt(value)
  %1645 = fmul fast float %1644, %1576
  %1646 = fmul fast float %1644, %1577
  %1647 = fmul fast float %1642, %1644
  %1648 = fmul fast float %1647, %64
  %1649 = fmul fast float %1647, %65
  %1650 = fmul fast float %1647, %66
  %1651 = fmul fast float %1645, %1622
  %1652 = fmul fast float %1645, %1623
  %1653 = fmul fast float %1645, %1624
  %1654 = fadd fast float %1648, %1651
  %1655 = fadd fast float %1649, %1652
  %1656 = fsub fast float %1650, %1653
  %1657 = fmul fast float %1646, %1618
  %1658 = fmul fast float %1646, %1627
  %1659 = fmul fast float %1646, %65
  %1660 = fadd fast float %1654, %1657
  %1661 = fadd fast float %1655, %1658
  %1662 = fsub fast float %1656, %1659
  %1663 = call float @dx.op.dot3.f32(i32 55, float %1660, float %1661, float %1662, float %1660, float %1661, float %1662)  ; Dot3(ax,ay,az,bx,by,bz)
  %1664 = call float @dx.op.unary.f32(i32 25, float %1663)  ; Rsqrt(value)
  %1665 = fmul fast float %1660, %1664
  %1666 = fmul fast float %1661, %1664
  %1667 = fmul fast float %1662, %1664
  %1668 = fadd fast float %1635, 0xBFB99999A0000000
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fmul fast float %1669, 0x3FF1C71C80000000
  %1671 = call float @dx.op.binary.f32(i32 36, float %1635, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1672 = fsub fast float 1.000000e+00, %1670
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fmul fast float %1673, %1629
  %1675 = fmul fast float %1673, %1631
  %1676 = fmul fast float %1673, %1633
  %1677 = call float @dx.op.unary.f32(i32 7, float %1674)  ; Saturate(value)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1679 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1680 = fmul fast float %1670, %1629
  %1681 = fmul fast float %1670, %1631
  %1682 = fmul fast float %1670, %1633
  %1683 = fadd fast float %1680, %1671
  %1684 = fadd fast float %1681, %1671
  %1685 = fadd fast float %1682, %1671
  %1686 = call float @dx.op.unary.f32(i32 7, float %1683)  ; Saturate(value)
  %1687 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1688 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1689 = fmul fast float %1687, 0x401CF23780000000
  %1690 = fadd fast float %1689, 0x3FF32641C0000000
  %1691 = call float @dx.op.dot3.f32(i32 55, float %100, float %101, float %102, float %100, float %101, float %102)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = call float @dx.op.unary.f32(i32 25, float %1691)  ; Rsqrt(value)
  %1693 = fmul fast float %1692, %100
  %1694 = fmul fast float %1692, %101
  %1695 = fmul fast float %1692, %102
  %1696 = fdiv fast float 1.000000e+00, %1690
  %1697 = fadd fast float %1696, -1.000000e+00
  %1698 = fadd fast float %1696, 1.000000e+00
  %1699 = fdiv fast float %1697, %1698
  %1700 = fmul fast float %1699, %1699
  %1701 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %1702 = call float @dx.op.binary.f32(i32 35, float %1701, float -1.000000e+00)  ; FMax(a,b)
  %1703 = call float @dx.op.binary.f32(i32 36, float %1702, float 1.000000e+00)  ; FMin(a,b)
  %1704 = fmul fast float %1696, %1696
  %1705 = fmul fast float %1703, %1703
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = fmul fast float %1704, %1706
  %1708 = fsub fast float 1.000000e+00, %1707
  %1709 = fcmp fast olt float %1696, 1.000000e+00
  %1710 = select i1 %1709, float %1705, float %1708
  %1711 = fcmp fast ogt float %1708, 0.000000e+00
  %1712 = fsub fast float 1.000000e+00, %1700
  %1713 = call float @dx.op.unary.f32(i32 24, float %1710)  ; Sqrt(value)
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = call float @dx.op.unary.f32(i32 23, float %1714)  ; Log(value)
  %1716 = fmul fast float %1715, 5.000000e+00
  %1717 = call float @dx.op.unary.f32(i32 21, float %1716)  ; Exp(value)
  %1718 = fmul fast float %1717, %1712
  %1719 = fadd fast float %1718, %1700
  %1720 = select i1 %1711, float %1719, float 1.000000e+00
  %1721 = fsub fast float -0.000000e+00, %1693
  %1722 = fsub fast float -0.000000e+00, %1694
  %1723 = fsub fast float -0.000000e+00, %1695
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %1721, float %1722, float %1723)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1726 = fsub fast float 1.000000e+00, %1686
  %1727 = fsub fast float 1.000000e+00, %1687
  %1728 = fsub fast float 1.000000e+00, %1688
  %1729 = fmul fast float %1720, %1726
  %1730 = fmul fast float %1720, %1727
  %1731 = fmul fast float %1720, %1728
  %1732 = fadd fast float %1729, %1686
  %1733 = fadd fast float %1730, %1687
  %1734 = fadd fast float %1731, %1688
  %1735 = and i32 %1593, 65535
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = lshr i32 %1593, 16
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1740 = extractvalue %dx.types.CBufRet.f32 %1739, 1
  %1741 = fadd fast float %1740, %1736
  %1742 = call float @dx.op.unary.f32(i32 7, float %1741)  ; Saturate(value)
  %1743 = fcmp fast ogt float %1742, 0.000000e+00
  %1744 = call float @dx.op.unary.f32(i32 6, float %1725)  ; FAbs(value)
  %1745 = select i1 %1743, float %1744, float 0.000000e+00
  %1746 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %41, float %1742, float %1745, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = extractvalue %dx.types.ResRet.f32 %1746, 2
  %1750 = fadd fast float %1747, -5.000000e-01
  %1751 = fadd fast float %1748, -5.000000e-01
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fmul fast float %1686, 4.000000e+00
  %1754 = fmul fast float %1753, %1726
  %1755 = fmul fast float %1754, %1738
  %1756 = fmul fast float %1755, %1750
  %1757 = fmul fast float %1687, 4.000000e+00
  %1758 = fmul fast float %1757, %1727
  %1759 = fmul fast float %1758, %1738
  %1760 = fmul fast float %1759, %1751
  %1761 = fmul fast float %1688, 4.000000e+00
  %1762 = fmul fast float %1761, %1728
  %1763 = fmul fast float %1762, %1738
  %1764 = fmul fast float %1763, %1752
  %1765 = fadd fast float %1732, %1756
  %1766 = fadd fast float %1733, %1760
  %1767 = fadd fast float %1734, %1764
  %1768 = call float @dx.op.unary.f32(i32 7, float %1765)  ; Saturate(value)
  %1769 = call float @dx.op.unary.f32(i32 7, float %1766)  ; Saturate(value)
  %1770 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1771 = fptoui float %60 to i32
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = fmul fast float %1773, 5.000000e-01
  %1775 = fptoui float %1774 to i32
  %1776 = icmp eq i32 %1771, %1775
  %1777 = fptoui float %61 to i32
  %1778 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1779 = fmul fast float %1778, 5.000000e-01
  %1780 = fptoui float %1779 to i32
  %1781 = icmp eq i32 %1777, %1780
  %1782 = and i1 %1776, %1781
  br i1 %1782, label %1783, label %1796

; <label>:1783                                    ; preds = %1575
  %1784 = call float @dx.op.binary.f32(i32 35, float %1769, float %1770)  ; FMax(a,b)
  %1785 = call float @dx.op.binary.f32(i32 35, float %1768, float %1784)  ; FMax(a,b)
  %1786 = fsub fast float 1.000000e+00, %1785
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 2
  %1791 = fadd fast float %1788, %100
  %1792 = fadd fast float %1789, %101
  %1793 = fadd fast float %1790, %102
  %1794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1795 = extractvalue %dx.types.CBufRet.f32 %1794, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1791, float %1792, float %1793, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %60, float %61, float %55, float %56, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %337, float %338, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %300, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %302, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %315, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %317, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1795, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1720, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1768, float %1769, float %1770, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1786, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %195, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %195, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %1587, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1588, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %1796

; <label>:1796                                    ; preds = %1783, %1575
  %1797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1798 = extractvalue %dx.types.CBufRet.f32 %1797, 3
  %1799 = fmul fast float %1798, %1639
  %1800 = call float @dx.op.unary.f32(i32 7, float %1799)  ; Saturate(value)
  %1801 = call float @dx.op.unary.f32(i32 7, float %1637)  ; Saturate(value)
  %1802 = fmul fast float %117, 6.553500e+04
  %1803 = call float @dx.op.unary.f32(i32 26, float %1802)  ; Round_ne(value)
  %1804 = fptosi float %1803 to i32
  %1805 = call i32 @dx.op.binary.i32(i32 37, i32 %1804, i32 0)  ; IMax(a,b)
  %1806 = call i32 @dx.op.binary.i32(i32 38, i32 %1805, i32 65535)  ; IMin(a,b)
  %1807 = fmul fast float %119, 6.553500e+04
  %1808 = call float @dx.op.unary.f32(i32 26, float %1807)  ; Round_ne(value)
  %1809 = fptosi float %1808 to i32
  %1810 = call i32 @dx.op.binary.i32(i32 37, i32 %1809, i32 0)  ; IMax(a,b)
  %1811 = call i32 @dx.op.binary.i32(i32 38, i32 %1810, i32 65535)  ; IMin(a,b)
  %1812 = shl i32 %1811, 16
  %1813 = or i32 %1812, %1806
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1686, float %1687, float %1688, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = fsub fast float 1.000000e+00, %1814
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = and i32 %1817, 255
  %1819 = uitofp i32 %1818 to float
  %1820 = lshr i32 %1817, 8
  %1821 = and i32 %1820, 255
  %1822 = uitofp i32 %1821 to float
  %1823 = fmul fast float %1822, %1815
  %1824 = fadd fast float %1823, %1819
  %1825 = fmul fast float %1824, 0x3F70101020000000
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.i32 %1830, 3
  %1832 = and i32 %1831, 3
  %1833 = icmp ne i32 %1832, 0
  %1834 = and i32 %1831, 4
  %1835 = icmp ne i32 %1834, 0
  %1836 = and i1 %1833, %1835
  br i1 %1836, label %1837, label %1848

; <label>:1837                                    ; preds = %1796
  %1838 = extractvalue %dx.types.CBufRet.f32 %1829, 3
  %1839 = fmul fast float %1838, %61
  %1840 = extractvalue %dx.types.CBufRet.f32 %1829, 2
  %1841 = fmul fast float %1840, %60
  %1842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %41, float %1841, float %1839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1843 = extractvalue %dx.types.ResRet.f32 %1842, 0
  %1844 = fsub fast float 1.000000e+00, %1843
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = fcmp fast olt float %1844, %1846
  br label %1851

; <label>:1848                                    ; preds = %1796
  %1849 = icmp eq i32 %1834, 0
  %1850 = and i1 %1833, %1849
  br label %1851

; <label>:1851                                    ; preds = %1848, %1837
  %1852 = phi i1 [ %1847, %1837 ], [ %1850, %1848 ]
  %1853 = select i1 %1852, float 0.000000e+00, float %1688
  %1854 = fmul fast float %1701, 2.000000e+00
  %1855 = fmul fast float %1854, %1665
  %1856 = fmul fast float %1854, %1666
  %1857 = fmul fast float %1854, %1667
  %1858 = fsub fast float %1693, %1855
  %1859 = fsub fast float %1694, %1856
  %1860 = fsub fast float %1695, %1857
  %1861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %1862 = extractvalue %dx.types.CBufRet.f32 %1861, 0
  %1863 = bitcast float %1862 to i32
  %1864 = lshr i32 %1863, 8
  %1865 = and i32 %1864, 255
  %1866 = uitofp i32 %1865 to float
  %1867 = fptoui float %1866 to i32
  %1868 = and i32 %1867, 4
  %1869 = icmp ne i32 %1868, 0
  %1870 = select i1 %1869, float %1801, float 1.000000e+00
  %1871 = call float @dx.op.binary.f32(i32 36, float %1870, float 1.000000e+00)  ; FMin(a,b)
  %1872 = fsub fast float 1.000000e+00, %1871
  %1873 = bitcast float %1872 to i32
  %1874 = ashr i32 %1873, 1
  %1875 = add nsw i32 %1874, 532487669
  %1876 = bitcast i32 %1875 to float
  %1877 = fsub fast float 1.000000e+00, %1800
  %1878 = call float @dx.op.binary.f32(i32 35, float %1877, float 0x3F847AE140000000)  ; FMax(a,b)
  %1879 = fmul fast float %1878, %1878
  %1880 = fmul fast float %1879, %1879
  %1881 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %41, float %1876, float %1880, float %1881, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = and i32 %1867, 1
  %1885 = icmp ne i32 %1884, 0
  %1886 = fsub fast float 1.000000e+00, %1870
  %1887 = bitcast float %1886 to i32
  %1888 = sub nsw i32 2129859010, %1887
  %1889 = bitcast i32 %1888 to float
  %1890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.i32 %1890, 0
  %1892 = icmp eq i32 %1891, 1
  %1893 = select i1 %1892, float 0.000000e+00, float 1.000000e+00
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = fcmp fast ogt float %1895, 0.000000e+00
  %1897 = fcmp fast ogt float %1893, 0.000000e+00
  %1898 = and i1 %1896, %1897
  br i1 %1898, label %1899, label %2083, !dx.controlflow.hints !94

; <label>:1899                                    ; preds = %1851
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.CBufRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %1904 = fadd fast float %1901, %100
  %1905 = fadd fast float %1902, %101
  %1906 = fadd fast float %1903, %102
  %1907 = fmul fast float %1665, 3.200000e+01
  %1908 = fmul fast float %1666, 3.200000e+01
  %1909 = fadd fast float %1904, %1907
  %1910 = fadd fast float %1905, %1908
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = fsub fast float %1909, %1912
  %1915 = fsub fast float %1910, %1913
  %1916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1917 = extractvalue %dx.types.CBufRet.f32 %1916, 0
  %1918 = extractvalue %dx.types.CBufRet.f32 %1916, 1
  %1919 = fmul fast float %1914, %1917
  %1920 = fmul fast float %1915, %1918
  %1921 = fmul fast float %100, %100
  %1922 = fmul fast float %101, %101
  %1923 = fadd fast float %1921, %1922
  %1924 = call float @dx.op.unary.f32(i32 24, float %1923)  ; Sqrt(value)
  %1925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1926 = extractvalue %dx.types.CBufRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.CBufRet.f32 %1925, 1
  %1928 = fsub fast float %1924, %1926
  %1929 = fdiv fast float %1928, %1927
  %1930 = call float @dx.op.unary.f32(i32 7, float %1929)  ; Saturate(value)
  %1931 = fmul fast float %1930, 2.000000e+00
  %1932 = fsub fast float 3.000000e+00, %1931
  %1933 = fmul fast float %1930, %1930
  %1934 = fmul fast float %1933, %1932
  %1935 = fcmp fast oge float %1919, 0.000000e+00
  %1936 = fcmp fast ole float %1919, 1.000000e+00
  %1937 = and i1 %1936, %1935
  %1938 = fcmp fast oge float %1920, 0.000000e+00
  %1939 = and i1 %1938, %1937
  %1940 = fcmp fast ole float %1920, 1.000000e+00
  %1941 = and i1 %1940, %1939
  %1942 = fcmp fast ogt float %1934, 0.000000e+00
  %1943 = and i1 %1942, %1941
  br i1 %1943, label %1944, label %2067, !dx.controlflow.hints !95

; <label>:1944                                    ; preds = %1899
  %1945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1946 = extractvalue %dx.types.CBufRet.f32 %1945, 2
  %1947 = extractvalue %dx.types.CBufRet.f32 %1945, 3
  %1948 = fmul fast float %1946, %1919
  %1949 = fmul fast float %1947, %1920
  %1950 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1951 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1952 = fptosi float %1950 to i32
  %1953 = fptosi float %1951 to i32
  %1954 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %1952, i32 %1953, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = lshr i32 %1955, 16
  %1957 = icmp eq i32 %1956, 65535
  br i1 %1957, label %2067, label %1958

; <label>:1958                                    ; preds = %1944
  %1959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1960 = extractvalue %dx.types.CBufRet.f32 %1959, 0
  %1961 = fmul fast float %1960, %1919
  %1962 = extractvalue %dx.types.CBufRet.f32 %1959, 1
  %1963 = fadd fast float %1961, %1962
  %1964 = extractvalue %dx.types.CBufRet.f32 %1959, 2
  %1965 = fmul fast float %1964, %1920
  %1966 = extractvalue %dx.types.CBufRet.f32 %1959, 3
  %1967 = fadd fast float %1965, %1966
  %1968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %1963, float %1967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.ResRet.f32 %1968, 1
  %1971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1972 = extractvalue %dx.types.CBufRet.f32 %1971, 1
  %1973 = extractvalue %dx.types.CBufRet.f32 %1971, 0
  %1974 = fsub fast float %1972, %1973
  %1975 = fmul fast float %1974, %1969
  %1976 = fadd fast float %1975, %1973
  %1977 = extractvalue %dx.types.CBufRet.f32 %1971, 3
  %1978 = extractvalue %dx.types.CBufRet.f32 %1971, 2
  %1979 = fsub fast float %1977, %1978
  %1980 = fmul fast float %1979, %1970
  %1981 = fadd fast float %1980, %1978
  %1982 = fsub fast float %1906, %1976
  %1983 = fsub fast float %1981, %1976
  %1984 = fdiv fast float %1982, %1983
  %1985 = call float @dx.op.unary.f32(i32 7, float %1984)  ; Saturate(value)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1987 = extractvalue %dx.types.CBufRet.f32 %1945, 0
  %1988 = extractvalue %dx.types.CBufRet.f32 %1945, 1
  %1989 = fmul fast float %1987, %1919
  %1990 = fmul fast float %1988, %1920
  %1991 = fmul fast float %1989, 1.250000e-01
  %1992 = fmul fast float %1990, 1.250000e-01
  %1993 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1995 = fmul fast float %1993, 8.000000e+00
  %1996 = fmul fast float %1994, 8.000000e+00
  %1997 = fsub fast float %1989, %1995
  %1998 = fsub fast float %1990, %1996
  %1999 = fadd fast float %1997, 5.000000e-01
  %2000 = fadd fast float %1998, 5.000000e-01
  %2001 = and i32 %1956, 255
  %2002 = lshr i32 %1955, 24
  %2003 = mul nuw nsw i32 %2001, 9
  %2004 = uitofp i32 %2003 to float
  %2005 = mul nuw nsw i32 %2002, 9
  %2006 = uitofp i32 %2005 to float
  %2007 = fadd fast float %1999, %2004
  %2008 = fadd fast float %2000, %2006
  %2009 = fdiv fast float %2007, %1895
  %2010 = fdiv fast float %2008, %1986
  %2011 = fmul fast float %1985, 4.375000e-01
  %2012 = fadd fast float %2011, 3.125000e-02
  %2013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %2009, float %2010, float %2012, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.ResRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.ResRet.f32 %2013, 2
  %2017 = fadd fast float %2011, 5.312500e-01
  %2018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %2009, float %2010, float %2017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.ResRet.f32 %2018, 2
  %2022 = fmul fast float %2019, 2.000000e+00
  %2023 = fmul fast float %2020, 2.000000e+00
  %2024 = fmul fast float %2021, 2.000000e+00
  %2025 = fadd fast float %2022, -1.000000e+00
  %2026 = fadd fast float %2023, -1.000000e+00
  %2027 = fadd fast float %2024, -1.000000e+00
  %2028 = fmul fast float %2025, %2025
  %2029 = fmul fast float %2026, %2026
  %2030 = fadd fast float %2028, %2029
  %2031 = fmul fast float %2027, %2027
  %2032 = fadd fast float %2030, %2031
  %2033 = call float @dx.op.unary.f32(i32 24, float %2032)  ; Sqrt(value)
  %2034 = fcmp fast ogt float %2033, 0.000000e+00
  br i1 %2034, label %2035, label %2039

; <label>:2035                                    ; preds = %1958
  %2036 = fdiv fast float %2025, %2033
  %2037 = fdiv fast float %2026, %2033
  %2038 = fdiv fast float %2027, %2033
  br label %2039

; <label>:2039                                    ; preds = %2035, %1958
  %2040 = phi float [ %2036, %2035 ], [ 0.000000e+00, %1958 ]
  %2041 = phi float [ %2037, %2035 ], [ 0.000000e+00, %1958 ]
  %2042 = phi float [ %2038, %2035 ], [ 0.000000e+00, %1958 ]
  %2043 = call float @dx.op.dot3.f32(i32 55, float %2040, float %2041, float %2042, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %2044 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2043)  ; FMax(a,b)
  %2045 = fmul fast float %2044, 0x400C5BF8A0000000
  %2046 = fmul fast float %2014, %1934
  %2047 = fmul fast float %2046, %2045
  %2048 = fmul fast float %2015, %1934
  %2049 = fmul fast float %2048, %2045
  %2050 = fmul fast float %2016, %1934
  %2051 = fmul fast float %2050, %2045
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 3
  %2054 = fmul fast float %2047, %2053
  %2055 = fmul fast float %2049, %2053
  %2056 = fmul fast float %2051, %2053
  %2057 = fcmp fast ogt float %1906, %1981
  br i1 %2057, label %2058, label %2067

; <label>:2058                                    ; preds = %2039
  %2059 = fmul fast float %1983, 0x3FC24924A0000000
  %2060 = fsub fast float %1906, %1981
  %2061 = fdiv fast float %2060, %2059
  %2062 = call float @dx.op.unary.f32(i32 7, float %2061)  ; Saturate(value)
  %2063 = fsub fast float 1.000000e+00, %2062
  %2064 = fmul fast float %2063, %2054
  %2065 = fmul fast float %2063, %2055
  %2066 = fmul fast float %2063, %2056
  br label %2067

; <label>:2067                                    ; preds = %2058, %2039, %1944, %1899
  %2068 = phi float [ %2066, %2058 ], [ %2056, %2039 ], [ 0.000000e+00, %1944 ], [ 0.000000e+00, %1899 ]
  %2069 = phi float [ %2065, %2058 ], [ %2055, %2039 ], [ 0.000000e+00, %1944 ], [ 0.000000e+00, %1899 ]
  %2070 = phi float [ %2064, %2058 ], [ %2054, %2039 ], [ 0.000000e+00, %1944 ], [ 0.000000e+00, %1899 ]
  %2071 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2070)  ; FMax(a,b)
  %2072 = fmul fast float %2071, 0x3FD20DD760000000
  %2073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2069)  ; FMax(a,b)
  %2074 = fmul fast float %2073, 0x3FD20DD760000000
  %2075 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2068)  ; FMax(a,b)
  %2076 = fmul fast float %2075, 0x3FD20DD760000000
  %2077 = call float @dx.op.binary.f32(i32 35, float %2072, float 0.000000e+00)  ; FMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %2074, float 0.000000e+00)  ; FMax(a,b)
  %2079 = call float @dx.op.binary.f32(i32 35, float %2076, float 0.000000e+00)  ; FMax(a,b)
  %2080 = fmul fast float %2077, %1893
  %2081 = fmul fast float %2078, %1893
  %2082 = fmul fast float %2079, %1893
  br label %2083

; <label>:2083                                    ; preds = %2067, %1851
  %2084 = phi float [ %2080, %2067 ], [ 0.000000e+00, %1851 ]
  %2085 = phi float [ %2081, %2067 ], [ 0.000000e+00, %1851 ]
  %2086 = phi float [ %2082, %2067 ], [ 0.000000e+00, %1851 ]
  br i1 %1892, label %2087, label %2879, !dx.controlflow.hints !96

; <label>:2087                                    ; preds = %2083
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.CBufRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2092 = fadd fast float %2089, %100
  %2093 = fadd fast float %2090, %101
  %2094 = fadd fast float %2091, %102
  %2095 = fmul fast float %1665, 3.200000e+01
  %2096 = fmul fast float %1666, 3.200000e+01
  %2097 = fadd fast float %2092, %2095
  %2098 = fadd fast float %2093, %2096
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2101 = extractvalue %dx.types.CBufRet.f32 %2099, 1
  %2102 = fsub fast float %2097, %2100
  %2103 = fsub fast float %2098, %2101
  %2104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2104, 0
  %2106 = extractvalue %dx.types.CBufRet.f32 %2104, 1
  %2107 = fmul fast float %2102, %2105
  %2108 = fmul fast float %2103, %2106
  %2109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.f32 %2109, 0
  %2111 = fmul fast float %2107, %2110
  %2112 = extractvalue %dx.types.CBufRet.f32 %2109, 1
  %2113 = fadd fast float %2111, %2112
  %2114 = extractvalue %dx.types.CBufRet.f32 %2109, 2
  %2115 = fmul fast float %2114, %2108
  %2116 = extractvalue %dx.types.CBufRet.f32 %2109, 3
  %2117 = fadd fast float %2115, %2116
  %2118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %41, float %2113, float %2117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.ResRet.f32 %2118, 1
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 1
  %2123 = extractvalue %dx.types.CBufRet.f32 %2121, 0
  %2124 = fsub fast float %2122, %2123
  %2125 = fmul fast float %2124, %2119
  %2126 = fadd fast float %2125, %2123
  %2127 = extractvalue %dx.types.CBufRet.f32 %2121, 3
  %2128 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2129 = fsub fast float %2127, %2128
  %2130 = fmul fast float %2129, %2120
  %2131 = fadd fast float %2130, %2128
  %2132 = fsub fast float %2094, %2126
  %2133 = fsub fast float %2131, %2126
  %2134 = fdiv fast float %2132, %2133
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2137 = extractvalue %dx.types.CBufRet.f32 %2136, 0
  %2138 = fmul fast float %2137, %2135
  %2139 = extractvalue %dx.types.CBufRet.f32 %2136, 1
  %2140 = fadd fast float %2138, %2139
  %2141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %41, float %2113, float %2117, float %2140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2142 = extractvalue %dx.types.ResRet.f32 %2141, 0
  %2143 = extractvalue %dx.types.ResRet.f32 %2141, 1
  %2144 = extractvalue %dx.types.ResRet.f32 %2141, 2
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2149 = fmul fast float %2146, %2142
  %2150 = fmul fast float %2147, %2143
  %2151 = fmul fast float %2148, %2144
  %2152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2153 = extractvalue %dx.types.CBufRet.f32 %2152, 0
  %2154 = extractvalue %dx.types.CBufRet.f32 %2152, 1
  %2155 = extractvalue %dx.types.CBufRet.f32 %2152, 2
  %2156 = fadd fast float %2149, %2153
  %2157 = fadd fast float %2150, %2154
  %2158 = fadd fast float %2151, %2155
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = fmul fast float %2160, %2107
  %2162 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2163 = fadd fast float %2161, %2162
  %2164 = extractvalue %dx.types.CBufRet.f32 %2159, 2
  %2165 = fmul fast float %2164, %2108
  %2166 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2167 = fadd fast float %2165, %2166
  %2168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2169 = extractvalue %dx.types.CBufRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.CBufRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.CBufRet.f32 %2168, 2
  %2172 = extractvalue %dx.types.CBufRet.f32 %2168, 3
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.CBufRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.CBufRet.f32 %2173, 2
  %2177 = extractvalue %dx.types.CBufRet.f32 %2173, 3
  %2178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %2163, float %2167, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.ResRet.f32 %2178, 1
  %2181 = extractvalue %dx.types.ResRet.f32 %2178, 2
  %2182 = extractvalue %dx.types.ResRet.f32 %2178, 3
  %2183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %2163, float %2167, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.ResRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.ResRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.ResRet.f32 %2183, 3
  %2188 = fmul fast float %2179, %2156
  %2189 = fmul fast float %2184, %2156
  %2190 = fmul fast float %2186, %2156
  %2191 = fmul fast float %2182, %2156
  %2192 = fadd fast float %2188, %2169
  %2193 = fadd fast float %2189, %2170
  %2194 = fadd fast float %2190, %2171
  %2195 = fadd fast float %2191, %2172
  %2196 = fmul fast float %2180, %2156
  %2197 = fmul fast float %2185, %2156
  %2198 = fadd fast float %2196, %2174
  %2199 = fadd fast float %2197, %2175
  %2200 = fmul fast float %2181, %2156
  %2201 = fmul fast float %2187, %2156
  %2202 = fadd fast float %2200, %2176
  %2203 = fadd fast float %2201, %2177
  %2204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %2163, float %2167, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2205 = extractvalue %dx.types.ResRet.f32 %2204, 0
  %2206 = extractvalue %dx.types.ResRet.f32 %2204, 1
  %2207 = extractvalue %dx.types.ResRet.f32 %2204, 2
  %2208 = extractvalue %dx.types.ResRet.f32 %2204, 3
  %2209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %2163, float %2167, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  %2211 = extractvalue %dx.types.ResRet.f32 %2209, 1
  %2212 = extractvalue %dx.types.ResRet.f32 %2209, 2
  %2213 = extractvalue %dx.types.ResRet.f32 %2209, 3
  %2214 = fmul fast float %2205, %2157
  %2215 = fmul fast float %2210, %2157
  %2216 = fmul fast float %2212, %2157
  %2217 = fmul fast float %2208, %2157
  %2218 = fadd fast float %2192, %2214
  %2219 = fadd fast float %2193, %2215
  %2220 = fadd fast float %2194, %2216
  %2221 = fadd fast float %2195, %2217
  %2222 = fmul fast float %2206, %2157
  %2223 = fmul fast float %2211, %2157
  %2224 = fadd fast float %2198, %2222
  %2225 = fadd fast float %2199, %2223
  %2226 = fmul fast float %2207, %2157
  %2227 = fmul fast float %2213, %2157
  %2228 = fadd fast float %2202, %2226
  %2229 = fadd fast float %2203, %2227
  %2230 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %2163, float %2167, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2231 = extractvalue %dx.types.ResRet.f32 %2230, 0
  %2232 = extractvalue %dx.types.ResRet.f32 %2230, 1
  %2233 = extractvalue %dx.types.ResRet.f32 %2230, 2
  %2234 = extractvalue %dx.types.ResRet.f32 %2230, 3
  %2235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %41, float %2163, float %2167, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2236 = extractvalue %dx.types.ResRet.f32 %2235, 0
  %2237 = extractvalue %dx.types.ResRet.f32 %2235, 1
  %2238 = extractvalue %dx.types.ResRet.f32 %2235, 2
  %2239 = extractvalue %dx.types.ResRet.f32 %2235, 3
  %2240 = fmul fast float %2231, %2158
  %2241 = fmul fast float %2236, %2158
  %2242 = fmul fast float %2238, %2158
  %2243 = fmul fast float %2234, %2158
  %2244 = fadd fast float %2218, %2240
  %2245 = fadd fast float %2219, %2241
  %2246 = fadd fast float %2220, %2242
  %2247 = fadd fast float %2221, %2243
  %2248 = fmul fast float %2232, %2158
  %2249 = fmul fast float %2237, %2158
  %2250 = fadd fast float %2224, %2248
  %2251 = fadd fast float %2225, %2249
  %2252 = fmul fast float %2233, %2158
  %2253 = fmul fast float %2239, %2158
  %2254 = fadd fast float %2228, %2252
  %2255 = fadd fast float %2229, %2253
  %2256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2257 = extractvalue %dx.types.CBufRet.f32 %2256, 0
  %2258 = fsub fast float %2092, %2257
  %2259 = fsub fast float %2100, %2092
  %2260 = call float @dx.op.binary.f32(i32 35, float %2259, float %2258)  ; FMax(a,b)
  %2261 = extractvalue %dx.types.CBufRet.f32 %2256, 1
  %2262 = fsub fast float %2093, %2261
  %2263 = fsub fast float %2101, %2093
  %2264 = call float @dx.op.binary.f32(i32 35, float %2263, float %2262)  ; FMax(a,b)
  %2265 = call float @dx.op.binary.f32(i32 35, float %2260, float %2264)  ; FMax(a,b)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2104, 3
  %2267 = fmul fast float %2266, %2265
  %2268 = call float @dx.op.unary.f32(i32 7, float %2267)  ; Saturate(value)
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2274 = fsub fast float %2270, %2244
  %2275 = fsub fast float %2271, %2245
  %2276 = fsub fast float %2272, %2246
  %2277 = fsub fast float %2273, %2247
  %2278 = fmul fast float %2274, %2268
  %2279 = fmul fast float %2275, %2268
  %2280 = fmul fast float %2276, %2268
  %2281 = fmul fast float %2277, %2268
  %2282 = fadd fast float %2278, %2244
  %2283 = fadd fast float %2279, %2245
  %2284 = fadd fast float %2280, %2246
  %2285 = fadd fast float %2281, %2247
  %2286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2287 = extractvalue %dx.types.CBufRet.f32 %2286, 0
  %2288 = extractvalue %dx.types.CBufRet.f32 %2286, 1
  %2289 = fsub fast float %2287, %2250
  %2290 = fsub fast float %2288, %2251
  %2291 = fmul fast float %2289, %2268
  %2292 = fmul fast float %2290, %2268
  %2293 = fadd fast float %2291, %2250
  %2294 = fadd fast float %2292, %2251
  %2295 = extractvalue %dx.types.CBufRet.f32 %2286, 2
  %2296 = extractvalue %dx.types.CBufRet.f32 %2286, 3
  %2297 = fsub fast float %2295, %2254
  %2298 = fsub fast float %2296, %2255
  %2299 = fmul fast float %2297, %2268
  %2300 = fmul fast float %2298, %2268
  %2301 = fadd fast float %2299, %2254
  %2302 = fadd fast float %2300, %2255
  %2303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.f32 %2303, 0
  %2305 = fmul fast float %2304, %2282
  %2306 = fmul fast float %2304, %2283
  %2307 = fmul fast float %2304, %2284
  %2308 = fmul fast float %2304, %2285
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = fmul fast float %2310, %2293
  %2312 = fmul fast float %2310, %2294
  %2313 = fadd fast float %2311, %2305
  %2314 = fadd fast float %2312, %2307
  %2315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2316 = extractvalue %dx.types.CBufRet.f32 %2315, 0
  %2317 = fmul fast float %2316, %2301
  %2318 = fmul fast float %2316, %2302
  %2319 = fadd fast float %2313, %2317
  %2320 = fadd fast float %2314, %2318
  %2321 = extractvalue %dx.types.CBufRet.f32 %2303, 1
  %2322 = fmul fast float %2321, %2282
  %2323 = fmul fast float %2321, %2283
  %2324 = fmul fast float %2321, %2284
  %2325 = fmul fast float %2321, %2285
  %2326 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2327 = fmul fast float %2326, %2293
  %2328 = fmul fast float %2326, %2294
  %2329 = fadd fast float %2327, %2322
  %2330 = fadd fast float %2328, %2324
  %2331 = extractvalue %dx.types.CBufRet.f32 %2315, 1
  %2332 = fmul fast float %2331, %2301
  %2333 = fmul fast float %2331, %2302
  %2334 = fadd fast float %2329, %2332
  %2335 = fadd fast float %2330, %2333
  %2336 = extractvalue %dx.types.CBufRet.f32 %2303, 2
  %2337 = fmul fast float %2336, %2282
  %2338 = fmul fast float %2336, %2283
  %2339 = fmul fast float %2336, %2284
  %2340 = fmul fast float %2336, %2285
  %2341 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2342 = fmul fast float %2341, %2293
  %2343 = fmul fast float %2341, %2294
  %2344 = fadd fast float %2342, %2337
  %2345 = fadd fast float %2343, %2339
  %2346 = extractvalue %dx.types.CBufRet.f32 %2315, 2
  %2347 = fmul fast float %2346, %2301
  %2348 = fmul fast float %2346, %2302
  %2349 = fadd fast float %2344, %2347
  %2350 = fadd fast float %2345, %2348
  %2351 = fmul fast float %2338, %2338
  %2352 = fmul fast float %2350, %2350
  %2353 = fmul fast float %2340, %2340
  %2354 = fadd fast float %2353, %2351
  %2355 = fadd fast float %2354, %2352
  %2356 = call float @dx.op.unary.f32(i32 24, float %2355)  ; Sqrt(value)
  %2357 = fcmp fast ugt float %2356, 0.000000e+00
  br i1 %2357, label %2358, label %2373

; <label>:2358                                    ; preds = %2087
  %2359 = fsub fast float -0.000000e+00, %2340
  %2360 = fdiv fast float %2359, %2356
  %2361 = fsub fast float -0.000000e+00, %2338
  %2362 = fdiv fast float %2361, %2356
  %2363 = fdiv fast float %2350, %2356
  %2364 = fmul fast float %2349, 0x3FE279A760000000
  %2365 = fmul fast float %2362, %2338
  %2366 = fmul fast float %2363, %2350
  %2367 = fmul fast float %2360, %2340
  %2368 = fadd fast float %2365, %2367
  %2369 = fsub fast float %2368, %2366
  %2370 = call float @dx.op.unary.f32(i32 6, float %2369)  ; FAbs(value)
  %2371 = fadd fast float %2370, 0x3DDB7CDFE0000000
  %2372 = fdiv fast float %2364, %2371
  br label %2373

; <label>:2373                                    ; preds = %2358, %2087
  %2374 = phi float [ %2372, %2358 ], [ 1.000000e+00, %2087 ]
  %2375 = fmul fast float %2323, %2323
  %2376 = fmul fast float %2335, %2335
  %2377 = fmul fast float %2325, %2325
  %2378 = fadd fast float %2377, %2375
  %2379 = fadd fast float %2378, %2376
  %2380 = call float @dx.op.unary.f32(i32 24, float %2379)  ; Sqrt(value)
  %2381 = fcmp fast ugt float %2380, 0.000000e+00
  br i1 %2381, label %2382, label %2397

; <label>:2382                                    ; preds = %2373
  %2383 = fsub fast float -0.000000e+00, %2325
  %2384 = fdiv fast float %2383, %2380
  %2385 = fsub fast float -0.000000e+00, %2323
  %2386 = fdiv fast float %2385, %2380
  %2387 = fdiv fast float %2335, %2380
  %2388 = fmul fast float %2334, 0x3FE279A760000000
  %2389 = fmul fast float %2386, %2323
  %2390 = fmul fast float %2387, %2335
  %2391 = fmul fast float %2384, %2325
  %2392 = fadd fast float %2389, %2391
  %2393 = fsub fast float %2392, %2390
  %2394 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2395 = fadd fast float %2394, 0x3DDB7CDFE0000000
  %2396 = fdiv fast float %2388, %2395
  br label %2397

; <label>:2397                                    ; preds = %2382, %2373
  %2398 = phi float [ %2396, %2382 ], [ 1.000000e+00, %2373 ]
  %2399 = call float @dx.op.binary.f32(i32 36, float %2398, float %2374)  ; FMin(a,b)
  %2400 = fmul fast float %2306, %2306
  %2401 = fmul fast float %2320, %2320
  %2402 = fmul fast float %2308, %2308
  %2403 = fadd fast float %2402, %2400
  %2404 = fadd fast float %2403, %2401
  %2405 = call float @dx.op.unary.f32(i32 24, float %2404)  ; Sqrt(value)
  %2406 = fcmp fast ugt float %2405, 0.000000e+00
  br i1 %2406, label %2407, label %2422

; <label>:2407                                    ; preds = %2397
  %2408 = fsub fast float -0.000000e+00, %2308
  %2409 = fdiv fast float %2408, %2405
  %2410 = fsub fast float -0.000000e+00, %2306
  %2411 = fdiv fast float %2410, %2405
  %2412 = fdiv fast float %2320, %2405
  %2413 = fmul fast float %2319, 0x3FE279A760000000
  %2414 = fmul fast float %2411, %2306
  %2415 = fmul fast float %2412, %2320
  %2416 = fmul fast float %2409, %2308
  %2417 = fadd fast float %2414, %2416
  %2418 = fsub fast float %2417, %2415
  %2419 = call float @dx.op.unary.f32(i32 6, float %2418)  ; FAbs(value)
  %2420 = fadd fast float %2419, 0x3DDB7CDFE0000000
  %2421 = fdiv fast float %2413, %2420
  br label %2422

; <label>:2422                                    ; preds = %2407, %2397
  %2423 = phi float [ %2421, %2407 ], [ 1.000000e+00, %2397 ]
  %2424 = call float @dx.op.binary.f32(i32 36, float %2423, float %2399)  ; FMin(a,b)
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2426 = fcmp fast olt float %2425, 1.000000e+00
  br i1 %2426, label %2427, label %2437

; <label>:2427                                    ; preds = %2422
  %2428 = fmul fast float %2425, %2306
  %2429 = fmul fast float %2425, %2320
  %2430 = fmul fast float %2425, %2308
  %2431 = fmul fast float %2425, %2323
  %2432 = fmul fast float %2425, %2335
  %2433 = fmul fast float %2425, %2325
  %2434 = fmul fast float %2425, %2338
  %2435 = fmul fast float %2425, %2350
  %2436 = fmul fast float %2425, %2340
  br label %2437

; <label>:2437                                    ; preds = %2427, %2422
  %2438 = phi float [ %2434, %2427 ], [ %2338, %2422 ]
  %2439 = phi float [ %2435, %2427 ], [ %2350, %2422 ]
  %2440 = phi float [ %2436, %2427 ], [ %2340, %2422 ]
  %2441 = phi float [ %2431, %2427 ], [ %2323, %2422 ]
  %2442 = phi float [ %2432, %2427 ], [ %2335, %2422 ]
  %2443 = phi float [ %2433, %2427 ], [ %2325, %2422 ]
  %2444 = phi float [ %2428, %2427 ], [ %2306, %2422 ]
  %2445 = phi float [ %2429, %2427 ], [ %2320, %2422 ]
  %2446 = phi float [ %2430, %2427 ], [ %2308, %2422 ]
  %2447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2319)  ; FMax(a,b)
  %2448 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2334)  ; FMax(a,b)
  %2449 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2349)  ; FMax(a,b)
  %2450 = fcmp fast oge float %2107, 0.000000e+00
  %2451 = and i1 %2450, %1896
  %2452 = fcmp fast ole float %2107, 1.000000e+00
  %2453 = and i1 %2452, %2451
  %2454 = fcmp fast oge float %2108, 0.000000e+00
  %2455 = and i1 %2454, %2453
  %2456 = fcmp fast ole float %2108, 1.000000e+00
  %2457 = and i1 %2456, %2455
  br i1 %2457, label %2458, label %2598, !dx.controlflow.hints !97

; <label>:2458                                    ; preds = %2437
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 2
  %2461 = extractvalue %dx.types.CBufRet.f32 %2459, 3
  %2462 = fmul fast float %2460, %2107
  %2463 = fmul fast float %2461, %2108
  %2464 = call float @dx.op.unary.f32(i32 27, float %2462)  ; Round_ni(value)
  %2465 = call float @dx.op.unary.f32(i32 27, float %2463)  ; Round_ni(value)
  %2466 = fptosi float %2464 to i32
  %2467 = fptosi float %2465 to i32
  %2468 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %25, i32 0, i32 %2466, i32 %2467, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = and i32 %2469, 65535
  %2471 = lshr i32 %2469, 16
  %2472 = icmp eq i32 %2470, 65535
  br i1 %2472, label %2509, label %2473

; <label>:2473                                    ; preds = %2458
  %2474 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %2475 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2476 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2477 = fmul fast float %2475, %2107
  %2478 = fmul fast float %2476, %2108
  %2479 = fmul fast float %2477, 1.250000e-01
  %2480 = fmul fast float %2478, 1.250000e-01
  %2481 = call float @dx.op.unary.f32(i32 27, float %2479)  ; Round_ni(value)
  %2482 = call float @dx.op.unary.f32(i32 27, float %2480)  ; Round_ni(value)
  %2483 = fmul fast float %2481, 8.000000e+00
  %2484 = fmul fast float %2482, 8.000000e+00
  %2485 = and i32 %2469, 255
  %2486 = lshr i32 %2469, 8
  %2487 = and i32 %2486, 255
  %2488 = mul nuw nsw i32 %2485, 9
  %2489 = uitofp i32 %2488 to float
  %2490 = mul nuw nsw i32 %2487, 9
  %2491 = uitofp i32 %2490 to float
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2492, %2477
  %2494 = fsub fast float %2493, %2483
  %2495 = fadd fast float %2491, 5.000000e-01
  %2496 = fadd fast float %2495, %2478
  %2497 = fsub fast float %2496, %2484
  %2498 = fdiv fast float %2494, %1895
  %2499 = fdiv fast float %2497, %2474
  %2500 = fmul fast float %2135, 4.375000e-01
  %2501 = fadd fast float %2500, 3.125000e-02
  %2502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %2498, float %2499, float %2501, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = fadd fast float %2503, %2447
  %2507 = fadd fast float %2504, %2448
  %2508 = fadd fast float %2505, %2449
  br label %2509

; <label>:2509                                    ; preds = %2473, %2458
  %2510 = phi float [ %2508, %2473 ], [ %2449, %2458 ]
  %2511 = phi float [ %2507, %2473 ], [ %2448, %2458 ]
  %2512 = phi float [ %2506, %2473 ], [ %2447, %2458 ]
  %2513 = icmp eq i32 %2471, 65535
  br i1 %2513, label %2598, label %2514

; <label>:2514                                    ; preds = %2509
  %2515 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %2516 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2517 = extractvalue %dx.types.CBufRet.f32 %2459, 1
  %2518 = fmul fast float %2516, %2107
  %2519 = fmul fast float %2517, %2108
  %2520 = fmul fast float %2518, 1.250000e-01
  %2521 = fmul fast float %2519, 1.250000e-01
  %2522 = call float @dx.op.unary.f32(i32 27, float %2520)  ; Round_ni(value)
  %2523 = call float @dx.op.unary.f32(i32 27, float %2521)  ; Round_ni(value)
  %2524 = fmul fast float %2522, 8.000000e+00
  %2525 = fmul fast float %2523, 8.000000e+00
  %2526 = fsub fast float %2518, %2524
  %2527 = fsub fast float %2519, %2525
  %2528 = fadd fast float %2526, 5.000000e-01
  %2529 = fadd fast float %2527, 5.000000e-01
  %2530 = and i32 %2471, 255
  %2531 = lshr i32 %2469, 24
  %2532 = mul nuw nsw i32 %2530, 9
  %2533 = uitofp i32 %2532 to float
  %2534 = mul nuw nsw i32 %2531, 9
  %2535 = uitofp i32 %2534 to float
  %2536 = fadd fast float %2528, %2533
  %2537 = fadd fast float %2529, %2535
  %2538 = fdiv fast float %2536, %1895
  %2539 = fdiv fast float %2537, %2515
  %2540 = fmul fast float %2135, 4.375000e-01
  %2541 = fadd fast float %2540, 3.125000e-02
  %2542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %2538, float %2539, float %2541, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2543 = extractvalue %dx.types.ResRet.f32 %2542, 0
  %2544 = extractvalue %dx.types.ResRet.f32 %2542, 1
  %2545 = extractvalue %dx.types.ResRet.f32 %2542, 2
  %2546 = fadd fast float %2540, 5.312500e-01
  %2547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %41, float %2538, float %2539, float %2546, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2548 = extractvalue %dx.types.ResRet.f32 %2547, 0
  %2549 = extractvalue %dx.types.ResRet.f32 %2547, 1
  %2550 = extractvalue %dx.types.ResRet.f32 %2547, 2
  %2551 = fmul fast float %2548, 2.000000e+00
  %2552 = fmul fast float %2549, 2.000000e+00
  %2553 = fmul fast float %2550, 2.000000e+00
  %2554 = fadd fast float %2551, -1.000000e+00
  %2555 = fadd fast float %2552, -1.000000e+00
  %2556 = fadd fast float %2553, -1.000000e+00
  %2557 = fmul fast float %2554, %2554
  %2558 = fmul fast float %2555, %2555
  %2559 = fadd fast float %2557, %2558
  %2560 = fmul fast float %2556, %2556
  %2561 = fadd fast float %2559, %2560
  %2562 = call float @dx.op.unary.f32(i32 24, float %2561)  ; Sqrt(value)
  %2563 = fcmp fast ogt float %2562, 0.000000e+00
  br i1 %2563, label %2564, label %2568

; <label>:2564                                    ; preds = %2514
  %2565 = fdiv fast float %2554, %2562
  %2566 = fdiv fast float %2555, %2562
  %2567 = fdiv fast float %2556, %2562
  br label %2568

; <label>:2568                                    ; preds = %2564, %2514
  %2569 = phi float [ %2565, %2564 ], [ 0.000000e+00, %2514 ]
  %2570 = phi float [ %2566, %2564 ], [ 0.000000e+00, %2514 ]
  %2571 = phi float [ %2567, %2564 ], [ 0.000000e+00, %2514 ]
  %2572 = fmul fast float %100, %100
  %2573 = fmul fast float %101, %101
  %2574 = fadd fast float %2572, %2573
  %2575 = call float @dx.op.unary.f32(i32 24, float %2574)  ; Sqrt(value)
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2578 = extractvalue %dx.types.CBufRet.f32 %2576, 1
  %2579 = fsub fast float %2575, %2577
  %2580 = fdiv fast float %2579, %2578
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2582 = fmul fast float %2581, 2.000000e+00
  %2583 = fsub fast float 3.000000e+00, %2582
  %2584 = fmul fast float %2581, %2581
  %2585 = fmul fast float %2584, %2583
  %2586 = call float @dx.op.dot3.f32(i32 55, float %2569, float %2570, float %2571, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %2587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2586)  ; FMax(a,b)
  %2588 = fmul fast float %2587, 0x400C5BF8A0000000
  %2589 = fmul fast float %2585, %2543
  %2590 = fmul fast float %2589, %2588
  %2591 = fadd fast float %2590, %2512
  %2592 = fmul fast float %2585, %2544
  %2593 = fmul fast float %2592, %2588
  %2594 = fadd fast float %2593, %2511
  %2595 = fmul fast float %2585, %2545
  %2596 = fmul fast float %2595, %2588
  %2597 = fadd fast float %2596, %2510
  br label %2598

; <label>:2598                                    ; preds = %2568, %2509, %2437
  %2599 = phi float [ %2597, %2568 ], [ %2510, %2509 ], [ %2449, %2437 ]
  %2600 = phi float [ %2594, %2568 ], [ %2511, %2509 ], [ %2448, %2437 ]
  %2601 = phi float [ %2591, %2568 ], [ %2512, %2509 ], [ %2447, %2437 ]
  %2602 = fcmp fast ogt float %2094, %2131
  %2603 = and i1 %2450, %2602
  %2604 = and i1 %2452, %2603
  %2605 = and i1 %2454, %2604
  %2606 = and i1 %2456, %2605
  br i1 %2606, label %2607, label %2664, !dx.controlflow.hints !98

; <label>:2607                                    ; preds = %2598
  %2608 = fmul fast float %2133, 0x3FC24924A0000000
  %2609 = fsub fast float %2094, %2131
  %2610 = fdiv fast float %2609, %2608
  %2611 = call float @dx.op.unary.f32(i32 7, float %2610)  ; Saturate(value)
  %2612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2613 = extractvalue %dx.types.CBufRet.f32 %2612, 0
  %2614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2615 = extractvalue %dx.types.CBufRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.CBufRet.f32 %2614, 2
  %2618 = fsub fast float %2613, %2601
  %2619 = fsub fast float %2615, %2444
  %2620 = fsub fast float %2616, %2445
  %2621 = fsub fast float %2617, %2446
  %2622 = fmul fast float %2618, %2611
  %2623 = fmul fast float %2619, %2611
  %2624 = fmul fast float %2620, %2611
  %2625 = fmul fast float %2621, %2611
  %2626 = fadd fast float %2622, %2601
  %2627 = fadd fast float %2623, %2444
  %2628 = fadd fast float %2624, %2445
  %2629 = fadd fast float %2625, %2446
  %2630 = extractvalue %dx.types.CBufRet.f32 %2612, 1
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 0
  %2633 = extractvalue %dx.types.CBufRet.f32 %2631, 1
  %2634 = extractvalue %dx.types.CBufRet.f32 %2631, 2
  %2635 = fsub fast float %2630, %2600
  %2636 = fsub fast float %2632, %2441
  %2637 = fsub fast float %2633, %2442
  %2638 = fsub fast float %2634, %2443
  %2639 = fmul fast float %2635, %2611
  %2640 = fmul fast float %2636, %2611
  %2641 = fmul fast float %2637, %2611
  %2642 = fmul fast float %2638, %2611
  %2643 = fadd fast float %2639, %2600
  %2644 = fadd fast float %2640, %2441
  %2645 = fadd fast float %2641, %2442
  %2646 = fadd fast float %2642, %2443
  %2647 = extractvalue %dx.types.CBufRet.f32 %2612, 2
  %2648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2649 = extractvalue %dx.types.CBufRet.f32 %2648, 0
  %2650 = extractvalue %dx.types.CBufRet.f32 %2648, 1
  %2651 = extractvalue %dx.types.CBufRet.f32 %2648, 2
  %2652 = fsub fast float %2647, %2599
  %2653 = fsub fast float %2649, %2438
  %2654 = fsub fast float %2650, %2439
  %2655 = fsub fast float %2651, %2440
  %2656 = fmul fast float %2652, %2611
  %2657 = fmul fast float %2653, %2611
  %2658 = fmul fast float %2654, %2611
  %2659 = fmul fast float %2655, %2611
  %2660 = fadd fast float %2656, %2599
  %2661 = fadd fast float %2657, %2438
  %2662 = fadd fast float %2658, %2439
  %2663 = fadd fast float %2659, %2440
  br label %2664

; <label>:2664                                    ; preds = %2607, %2598
  %2665 = phi float [ %2660, %2607 ], [ %2599, %2598 ]
  %2666 = phi float [ %2661, %2607 ], [ %2438, %2598 ]
  %2667 = phi float [ %2662, %2607 ], [ %2439, %2598 ]
  %2668 = phi float [ %2663, %2607 ], [ %2440, %2598 ]
  %2669 = phi float [ %2643, %2607 ], [ %2600, %2598 ]
  %2670 = phi float [ %2644, %2607 ], [ %2441, %2598 ]
  %2671 = phi float [ %2645, %2607 ], [ %2442, %2598 ]
  %2672 = phi float [ %2646, %2607 ], [ %2443, %2598 ]
  %2673 = phi float [ %2626, %2607 ], [ %2601, %2598 ]
  %2674 = phi float [ %2627, %2607 ], [ %2444, %2598 ]
  %2675 = phi float [ %2628, %2607 ], [ %2445, %2598 ]
  %2676 = phi float [ %2629, %2607 ], [ %2446, %2598 ]
  %2677 = extractvalue %dx.types.CBufRet.f32 %2256, 3
  %2678 = fmul fast float %2677, %2673
  %2679 = fmul fast float %2677, %2669
  %2680 = fmul fast float %2677, %2665
  %2681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2682 = extractvalue %dx.types.CBufRet.f32 %2681, 3
  %2683 = fmul fast float %2678, %2682
  %2684 = fmul fast float %2679, %2682
  %2685 = fmul fast float %2680, %2682
  %2686 = call float @dx.op.dot3.f32(i32 55, float %2683, float %2684, float %2685, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2687 = fmul fast float %2686, 0x3FD20DD760000000
  %2688 = fmul fast float %2674, 1.500000e+00
  %2689 = fmul fast float %2688, %2677
  %2690 = fmul fast float %2689, %2682
  %2691 = fmul fast float %2675, 1.500000e+00
  %2692 = fmul fast float %2691, %2677
  %2693 = fmul fast float %2692, %2682
  %2694 = fmul fast float %2676, 1.500000e+00
  %2695 = fmul fast float %2694, %2677
  %2696 = fmul fast float %2695, %2682
  %2697 = fmul fast float %2670, 1.500000e+00
  %2698 = fmul fast float %2697, %2677
  %2699 = fmul fast float %2698, %2682
  %2700 = fmul fast float %2671, 1.500000e+00
  %2701 = fmul fast float %2700, %2677
  %2702 = fmul fast float %2701, %2682
  %2703 = fmul fast float %2672, 1.500000e+00
  %2704 = fmul fast float %2703, %2677
  %2705 = fmul fast float %2704, %2682
  %2706 = fmul fast float %2666, 1.500000e+00
  %2707 = fmul fast float %2706, %2677
  %2708 = fmul fast float %2707, %2682
  %2709 = fmul fast float %2667, 1.500000e+00
  %2710 = fmul fast float %2709, %2677
  %2711 = fmul fast float %2710, %2682
  %2712 = fmul fast float %2668, 1.500000e+00
  %2713 = fmul fast float %2712, %2677
  %2714 = fmul fast float %2713, %2682
  %2715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2683)  ; FMax(a,b)
  %2716 = call float @dx.op.dot3.f32(i32 55, float %2690, float %2693, float %2696, float %2690, float %2693, float %2696)  ; Dot3(ax,ay,az,bx,by,bz)
  %2717 = fcmp fast oeq float %2716, 0.000000e+00
  %2718 = fcmp fast oeq float %2715, 0.000000e+00
  %2719 = or i1 %2718, %2717
  br i1 %2719, label %2749, label %2720

; <label>:2720                                    ; preds = %2664
  %2721 = fsub fast float -0.000000e+00, %2696
  %2722 = fsub fast float -0.000000e+00, %2690
  %2723 = call float @dx.op.unary.f32(i32 24, float %2716)  ; Sqrt(value)
  %2724 = fdiv fast float %2723, %2715
  %2725 = fcmp fast ogt float %2724, 0x3FFB6F8900000000
  %2726 = select i1 %2725, float 0x3FFB6F8900000000, float %2724
  %2727 = fmul fast float %2726, 0x3FE8A23460000000
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = call float @dx.op.binary.f32(i32 35, float %2726, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2730 = fmul fast float %2728, %2715
  %2731 = fmul fast float %2729, 0x3FF279A740000000
  %2732 = fadd fast float %2731, -1.000000e+00
  %2733 = call float @dx.op.dot3.f32(i32 55, float %2721, float %2722, float %2693, float %2721, float %2722, float %2693)  ; Dot3(ax,ay,az,bx,by,bz)
  %2734 = call float @dx.op.unary.f32(i32 25, float %2733)  ; Rsqrt(value)
  %2735 = fmul fast float %2734, %2721
  %2736 = fmul fast float %2734, %2722
  %2737 = fmul fast float %2734, %2693
  %2738 = fmul fast float %2732, %2732
  %2739 = fsub fast float 1.000000e+00, %2738
  %2740 = fmul fast float %2729, 0x40005F8BE0000000
  %2741 = fsub fast float 0x400C5BF8A0000000, %2740
  %2742 = fdiv fast float %2730, %2741
  %2743 = fmul fast float %2742, 0x3FEE31C3C0000000
  %2744 = fmul fast float %2743, %2739
  %2745 = fmul fast float %2729, 0x3FDACB7480000000
  %2746 = fadd fast float %2745, 0xBFD7347680000000
  %2747 = fmul fast float %2746, %2742
  %2748 = fmul fast float %2747, %2739
  br label %2749

; <label>:2749                                    ; preds = %2720, %2664
  %2750 = phi float [ %2735, %2720 ], [ 0.000000e+00, %2664 ]
  %2751 = phi float [ %2736, %2720 ], [ 0.000000e+00, %2664 ]
  %2752 = phi float [ %2737, %2720 ], [ 0.000000e+00, %2664 ]
  %2753 = phi float [ %2744, %2720 ], [ 0.000000e+00, %2664 ]
  %2754 = phi float [ %2748, %2720 ], [ 0.000000e+00, %2664 ]
  %2755 = call float @dx.op.dot3.f32(i32 55, float %2750, float %2751, float %2752, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %2756 = fmul fast float %2755, %2755
  %2757 = fmul fast float %2756, 0x3FEE471020000000
  %2758 = fadd fast float %2757, 0xBFD42F6020000000
  %2759 = fmul fast float %2715, 0x3FD20DD760000000
  %2760 = fmul fast float %2758, %2754
  %2761 = fmul fast float %2753, 0x3FDF454380000000
  %2762 = fmul fast float %2761, %2755
  %2763 = fadd fast float %2762, %2759
  %2764 = fadd fast float %2763, %2760
  %2765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2684)  ; FMax(a,b)
  %2766 = call float @dx.op.dot3.f32(i32 55, float %2699, float %2702, float %2705, float %2699, float %2702, float %2705)  ; Dot3(ax,ay,az,bx,by,bz)
  %2767 = fcmp fast oeq float %2766, 0.000000e+00
  %2768 = fcmp fast oeq float %2765, 0.000000e+00
  %2769 = or i1 %2768, %2767
  br i1 %2769, label %2799, label %2770

; <label>:2770                                    ; preds = %2749
  %2771 = fsub fast float -0.000000e+00, %2705
  %2772 = fsub fast float -0.000000e+00, %2699
  %2773 = call float @dx.op.unary.f32(i32 24, float %2766)  ; Sqrt(value)
  %2774 = fdiv fast float %2773, %2765
  %2775 = fcmp fast ogt float %2774, 0x3FFB6F8900000000
  %2776 = select i1 %2775, float 0x3FFB6F8900000000, float %2774
  %2777 = fmul fast float %2776, 0x3FE8A23460000000
  %2778 = call float @dx.op.unary.f32(i32 7, float %2777)  ; Saturate(value)
  %2779 = call float @dx.op.binary.f32(i32 35, float %2776, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2780 = fmul fast float %2778, %2765
  %2781 = fmul fast float %2779, 0x3FF279A740000000
  %2782 = fadd fast float %2781, -1.000000e+00
  %2783 = call float @dx.op.dot3.f32(i32 55, float %2771, float %2772, float %2702, float %2771, float %2772, float %2702)  ; Dot3(ax,ay,az,bx,by,bz)
  %2784 = call float @dx.op.unary.f32(i32 25, float %2783)  ; Rsqrt(value)
  %2785 = fmul fast float %2784, %2771
  %2786 = fmul fast float %2784, %2772
  %2787 = fmul fast float %2784, %2702
  %2788 = fmul fast float %2782, %2782
  %2789 = fsub fast float 1.000000e+00, %2788
  %2790 = fmul fast float %2779, 0x40005F8BE0000000
  %2791 = fsub fast float 0x400C5BF8A0000000, %2790
  %2792 = fdiv fast float %2780, %2791
  %2793 = fmul fast float %2792, 0x3FEE31C3C0000000
  %2794 = fmul fast float %2793, %2789
  %2795 = fmul fast float %2779, 0x3FDACB7480000000
  %2796 = fadd fast float %2795, 0xBFD7347680000000
  %2797 = fmul fast float %2796, %2792
  %2798 = fmul fast float %2797, %2789
  br label %2799

; <label>:2799                                    ; preds = %2770, %2749
  %2800 = phi float [ %2785, %2770 ], [ 0.000000e+00, %2749 ]
  %2801 = phi float [ %2786, %2770 ], [ 0.000000e+00, %2749 ]
  %2802 = phi float [ %2787, %2770 ], [ 0.000000e+00, %2749 ]
  %2803 = phi float [ %2794, %2770 ], [ 0.000000e+00, %2749 ]
  %2804 = phi float [ %2798, %2770 ], [ 0.000000e+00, %2749 ]
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2800, float %2801, float %2802, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = fmul fast float %2805, %2805
  %2807 = fmul fast float %2806, 0x3FEE471020000000
  %2808 = fadd fast float %2807, 0xBFD42F6020000000
  %2809 = fmul fast float %2765, 0x3FD20DD760000000
  %2810 = fmul fast float %2808, %2804
  %2811 = fmul fast float %2803, 0x3FDF454380000000
  %2812 = fmul fast float %2811, %2805
  %2813 = fadd fast float %2812, %2809
  %2814 = fadd fast float %2813, %2810
  %2815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2685)  ; FMax(a,b)
  %2816 = call float @dx.op.dot3.f32(i32 55, float %2708, float %2711, float %2714, float %2708, float %2711, float %2714)  ; Dot3(ax,ay,az,bx,by,bz)
  %2817 = fcmp fast oeq float %2816, 0.000000e+00
  %2818 = fcmp fast oeq float %2815, 0.000000e+00
  %2819 = or i1 %2818, %2817
  br i1 %2819, label %2849, label %2820

; <label>:2820                                    ; preds = %2799
  %2821 = fsub fast float -0.000000e+00, %2714
  %2822 = fsub fast float -0.000000e+00, %2708
  %2823 = call float @dx.op.unary.f32(i32 24, float %2816)  ; Sqrt(value)
  %2824 = fdiv fast float %2823, %2815
  %2825 = fcmp fast ogt float %2824, 0x3FFB6F8900000000
  %2826 = select i1 %2825, float 0x3FFB6F8900000000, float %2824
  %2827 = fmul fast float %2826, 0x3FE8A23460000000
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = call float @dx.op.binary.f32(i32 35, float %2826, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2830 = fmul fast float %2828, %2815
  %2831 = fmul fast float %2829, 0x3FF279A740000000
  %2832 = fadd fast float %2831, -1.000000e+00
  %2833 = call float @dx.op.dot3.f32(i32 55, float %2821, float %2822, float %2711, float %2821, float %2822, float %2711)  ; Dot3(ax,ay,az,bx,by,bz)
  %2834 = call float @dx.op.unary.f32(i32 25, float %2833)  ; Rsqrt(value)
  %2835 = fmul fast float %2834, %2821
  %2836 = fmul fast float %2834, %2822
  %2837 = fmul fast float %2834, %2711
  %2838 = fmul fast float %2832, %2832
  %2839 = fsub fast float 1.000000e+00, %2838
  %2840 = fmul fast float %2829, 0x40005F8BE0000000
  %2841 = fsub fast float 0x400C5BF8A0000000, %2840
  %2842 = fdiv fast float %2830, %2841
  %2843 = fmul fast float %2842, 0x3FEE31C3C0000000
  %2844 = fmul fast float %2843, %2839
  %2845 = fmul fast float %2829, 0x3FDACB7480000000
  %2846 = fadd fast float %2845, 0xBFD7347680000000
  %2847 = fmul fast float %2846, %2842
  %2848 = fmul fast float %2847, %2839
  br label %2849

; <label>:2849                                    ; preds = %2820, %2799
  %2850 = phi float [ %2835, %2820 ], [ 0.000000e+00, %2799 ]
  %2851 = phi float [ %2836, %2820 ], [ 0.000000e+00, %2799 ]
  %2852 = phi float [ %2837, %2820 ], [ 0.000000e+00, %2799 ]
  %2853 = phi float [ %2844, %2820 ], [ 0.000000e+00, %2799 ]
  %2854 = phi float [ %2848, %2820 ], [ 0.000000e+00, %2799 ]
  %2855 = call float @dx.op.dot3.f32(i32 55, float %2850, float %2851, float %2852, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = fmul fast float %2855, %2855
  %2857 = fmul fast float %2856, 0x3FEE471020000000
  %2858 = fadd fast float %2857, 0xBFD42F6020000000
  %2859 = fmul fast float %2815, 0x3FD20DD760000000
  %2860 = fmul fast float %2858, %2854
  %2861 = fmul fast float %2853, 0x3FDF454380000000
  %2862 = fmul fast float %2861, %2855
  %2863 = fadd fast float %2862, %2859
  %2864 = fadd fast float %2863, %2860
  %2865 = call float @dx.op.binary.f32(i32 35, float %2764, float 0.000000e+00)  ; FMax(a,b)
  %2866 = call float @dx.op.binary.f32(i32 35, float %2814, float 0.000000e+00)  ; FMax(a,b)
  %2867 = call float @dx.op.binary.f32(i32 35, float %2864, float 0.000000e+00)  ; FMax(a,b)
  %2868 = fsub fast float %2084, %2865
  %2869 = fsub fast float %2085, %2866
  %2870 = fsub fast float %2086, %2867
  %2871 = fmul fast float %2868, %1893
  %2872 = fmul fast float %2869, %1893
  %2873 = fmul fast float %2870, %1893
  %2874 = fadd fast float %2871, %2865
  %2875 = fadd fast float %2872, %2866
  %2876 = fadd fast float %2873, %2867
  %2877 = fmul fast float %2687, %1893
  %2878 = fsub fast float %2687, %2877
  br label %2879

; <label>:2879                                    ; preds = %2849, %2083
  %2880 = phi float [ %2878, %2849 ], [ 0.000000e+00, %2083 ]
  %2881 = phi float [ %2874, %2849 ], [ %2084, %2083 ]
  %2882 = phi float [ %2875, %2849 ], [ %2085, %2083 ]
  %2883 = phi float [ %2876, %2849 ], [ %2086, %2083 ]
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2886 = call float @dx.op.binary.f32(i32 36, float %1677, float %2885)  ; FMin(a,b)
  %2887 = fmul fast float %2886, %1872
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = bitcast float %2888 to i32
  %2890 = sub nsw i32 2129859010, %2889
  %2891 = bitcast i32 %2890 to float
  %2892 = call float @dx.op.binary.f32(i32 36, float %1678, float %2885)  ; FMin(a,b)
  %2893 = fmul fast float %2892, %1872
  %2894 = fsub fast float 1.000000e+00, %2893
  %2895 = bitcast float %2894 to i32
  %2896 = sub nsw i32 2129859010, %2895
  %2897 = bitcast i32 %2896 to float
  %2898 = call float @dx.op.binary.f32(i32 36, float %1679, float %2885)  ; FMin(a,b)
  %2899 = fmul fast float %2898, %1872
  %2900 = fsub fast float 1.000000e+00, %2899
  %2901 = bitcast float %2900 to i32
  %2902 = sub nsw i32 2129859010, %2901
  %2903 = bitcast i32 %2902 to float
  %2904 = fmul fast float %2881, %1871
  %2905 = fmul fast float %2904, %2891
  %2906 = fmul fast float %2882, %1871
  %2907 = fmul fast float %2906, %2897
  %2908 = fmul fast float %2883, %1871
  %2909 = fmul fast float %2908, %2903
  %2910 = extractvalue %dx.types.CBufRet.i32 %1890, 2
  %2911 = and i32 %2910, 1
  %2912 = icmp ne i32 %2911, 0
  %2913 = fsub fast float 1.000000e+00, %1893
  %2914 = select i1 %2912, float %1893, float %2905
  %2915 = select i1 %2912, float %2913, float %2907
  %2916 = select i1 %2912, float 0.000000e+00, float %2909
  %2917 = call float @dx.op.dot3.f32(i32 55, float %2914, float %2915, float %2916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2918 = select i1 %1852, float 0.000000e+00, float %2914
  %2919 = select i1 %1852, float %2917, float %2915
  %2920 = select i1 %1852, float 0.000000e+00, float %2916
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = bitcast float %2922 to i32
  %2924 = lshr i32 %2923, 8
  %2925 = and i32 %2924, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fptoui float %2926 to i32
  %2928 = icmp eq i32 %2927, 23
  br i1 %2928, label %2929, label %2952

; <label>:2929                                    ; preds = %2879
  %2930 = fmul fast float %2903, %1871
  %2931 = fmul fast float %2897, %1871
  %2932 = fmul fast float %2891, %1871
  %2933 = fadd fast float %2932, 1.000000e+00
  %2934 = fadd fast float %2931, 1.000000e+00
  %2935 = fadd fast float %2930, 1.000000e+00
  %2936 = fmul fast float %2933, 5.000000e-01
  %2937 = fmul fast float %2934, 5.000000e-01
  %2938 = fmul fast float %2935, 5.000000e-01
  %2939 = call float @dx.op.unary.f32(i32 7, float %2936)  ; Saturate(value)
  %2940 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2941 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2942 = fmul fast float %2939, 1.023000e+03
  %2943 = fmul fast float %2940, 1.023000e+03
  %2944 = fmul fast float %2941, 1.023000e+03
  %2945 = fptoui float %2942 to i32
  %2946 = fptoui float %2943 to i32
  %2947 = fptoui float %2944 to i32
  %2948 = shl i32 %2946, 10
  %2949 = or i32 %2948, %2945
  %2950 = shl i32 %2947, 20
  %2951 = or i32 %2949, %2950
  br label %2952

; <label>:2952                                    ; preds = %2929, %2879
  %2953 = phi i32 [ %2951, %2929 ], [ 0, %2879 ]
  %2954 = fsub fast float 1.000000e+00, %1853
  %2955 = fmul fast float %2954, %1720
  %2956 = fadd fast float %2955, %1853
  %2957 = fcmp fast ogt float %1736, 0.000000e+00
  %2958 = select i1 %2957, float %1744, float 0.000000e+00
  %2959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %41, float %1736, float %2958, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2960 = extractvalue %dx.types.ResRet.f32 %2959, 0
  %2961 = extractvalue %dx.types.ResRet.f32 %2959, 1
  %2962 = extractvalue %dx.types.ResRet.f32 %2959, 2
  %2963 = fadd fast float %2960, -5.000000e-01
  %2964 = fadd fast float %2961, -5.000000e-01
  %2965 = fadd fast float %2962, -5.000000e-01
  %2966 = fmul fast float %1755, %2963
  %2967 = fmul fast float %1759, %2964
  %2968 = fmul fast float %1853, 4.000000e+00
  %2969 = fmul fast float %2968, %2954
  %2970 = fmul fast float %2969, %1738
  %2971 = fmul fast float %2970, %2965
  %2972 = fadd fast float %1732, %2966
  %2973 = fadd fast float %1733, %2967
  %2974 = fadd fast float %2956, %2971
  %2975 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2976 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2977 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2978 = call float @dx.op.binary.f32(i32 35, float %2976, float %2977)  ; FMax(a,b)
  %2979 = call float @dx.op.binary.f32(i32 35, float %2975, float %2978)  ; FMax(a,b)
  %2980 = fsub fast float 1.000000e+00, %2979
  %2981 = extractvalue %dx.types.CBufRet.f32 %1861, 2
  %2982 = fcmp fast olt float %2981, 0.000000e+00
  br i1 %2982, label %2983, label %3686

; <label>:2983                                    ; preds = %2952
  %2984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2985 = extractvalue %dx.types.CBufRet.f32 %2984, 2
  %2986 = extractvalue %dx.types.CBufRet.f32 %2984, 3
  %2987 = fmul fast float %2985, %60
  %2988 = fmul fast float %2986, %61
  %2989 = fptoui float %2987 to i32
  %2990 = fptoui float %2988 to i32
  %2991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2992 = extractvalue %dx.types.CBufRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.CBufRet.f32 %2991, 2
  %2994 = extractvalue %dx.types.CBufRet.f32 %2991, 3
  %2995 = fadd fast float %56, -4.000000e+00
  %2996 = call float @dx.op.binary.f32(i32 35, float %2995, float 0.000000e+00)  ; FMax(a,b)
  %2997 = fadd fast float %2996, %2992
  %2998 = fmul fast float %2997, %2993
  %2999 = call float @dx.op.unary.f32(i32 23, float %2998)  ; Log(value)
  %3000 = fmul fast float %2999, %2994
  %3001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.f32 %3001, 2
  %3003 = fmul fast float %3000, %3002
  %3004 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3006 = extractvalue %dx.types.CBufRet.i32 %3005, 1
  %3007 = add i32 %3006, -1
  %3008 = uitofp i32 %3006 to float
  %3009 = fmul fast float %3008, %3004
  %3010 = fptoui float %3009 to i32
  %3011 = call i32 @dx.op.binary.i32(i32 40, i32 %3010, i32 %3007)  ; UMin(a,b)
  %3012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.i32 %3012, 2
  %3014 = extractvalue %dx.types.CBufRet.i32 %3012, 3
  %3015 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2990, i32 %3013, i32 %2989)  ; UMad(a,b,c)
  %3016 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3011, i32 %3014, i32 %3015)  ; UMad(a,b,c)
  %3017 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %3018 = fptoui float %3017 to i32
  %3019 = lshr i32 %3018, 5
  %3020 = call i32 @dx.op.binary.i32(i32 40, i32 %3019, i32 8191)  ; UMin(a,b)
  %3021 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3022 = extractvalue %dx.types.CBufRet.i32 %3021, 2
  %3023 = add nsw i32 %3022, -1
  %3024 = call i32 @dx.op.binary.i32(i32 37, i32 %3023, i32 0)  ; IMax(a,b)
  %3025 = shl i32 %3020, 2
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = lshr i32 %3027, 16
  %3029 = and i32 %3027, 65535
  %3030 = lshr i32 %3027, 21
  %3031 = lshr i32 %3029, 5
  %3032 = call i32 @dx.op.binary.i32(i32 40, i32 %3031, i32 %3024)  ; UMin(a,b)
  %3033 = icmp ugt i32 %3030, %3032
  br i1 %3033, label %3611, label %3034

; <label>:3034                                    ; preds = %2983
  br label %3035

; <label>:3035                                    ; preds = %3593, %3034
  %3036 = phi i32 [ %3594, %3593 ], [ 0, %3034 ]
  %3037 = phi i32 [ %3595, %3593 ], [ %2953, %3034 ]
  %3038 = phi float [ %3596, %3593 ], [ 0.000000e+00, %3034 ]
  %3039 = phi float [ %3597, %3593 ], [ 0.000000e+00, %3034 ]
  %3040 = phi float [ %3598, %3593 ], [ 0.000000e+00, %3034 ]
  %3041 = phi float [ %3599, %3593 ], [ 0.000000e+00, %3034 ]
  %3042 = phi float [ %3600, %3593 ], [ 0.000000e+00, %3034 ]
  %3043 = phi float [ %3601, %3593 ], [ 0.000000e+00, %3034 ]
  %3044 = phi i32 [ %3602, %3593 ], [ 0, %3034 ]
  %3045 = phi float [ %3603, %3593 ], [ 0.000000e+00, %3034 ]
  %3046 = phi float [ %3604, %3593 ], [ 0.000000e+00, %3034 ]
  %3047 = phi float [ %3605, %3593 ], [ 0.000000e+00, %3034 ]
  %3048 = phi i32 [ %3606, %3593 ], [ 1, %3034 ]
  %3049 = phi float [ %3607, %3593 ], [ 1.000000e+00, %3034 ]
  %3050 = phi i32 [ %3608, %3593 ], [ %3030, %3034 ]
  %3051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3052 = extractvalue %dx.types.CBufRet.i32 %3051, 2
  %3053 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3016, i32 %3052, i32 %3050)  ; UMad(a,b,c)
  %3054 = shl i32 %3053, 2
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = shl i32 %3050, 5
  %3058 = sub nsw i32 %3028, %3057
  %3059 = call i32 @dx.op.binary.i32(i32 37, i32 %3058, i32 0)  ; IMax(a,b)
  %3060 = call i32 @dx.op.binary.i32(i32 38, i32 %3059, i32 31)  ; IMin(a,b)
  %3061 = sub nsw i32 1, %3028
  %3062 = add nsw i32 %3061, %3029
  %3063 = call i32 @dx.op.binary.i32(i32 37, i32 %3062, i32 0)  ; IMax(a,b)
  %3064 = call i32 @dx.op.binary.i32(i32 38, i32 %3063, i32 32)  ; IMin(a,b)
  %3065 = and i32 %3064, 31
  %3066 = shl i32 -1, %3065
  %3067 = xor i32 %3066, -1
  %3068 = and i32 %3060, 31
  %3069 = shl i32 %3067, %3068
  %3070 = icmp eq i32 %3064, 32
  %3071 = select i1 %3070, i32 -1, i32 %3069
  %3072 = and i32 %3071, %3056
  %3073 = icmp eq i32 %3072, 0
  br i1 %3073, label %3593, label %3074

; <label>:3074                                    ; preds = %3035
  br label %3075

; <label>:3075                                    ; preds = %3208, %3074
  %3076 = phi i32 [ %3209, %3208 ], [ %3036, %3074 ]
  %3077 = phi i32 [ %3210, %3208 ], [ %3037, %3074 ]
  %3078 = phi float [ %3211, %3208 ], [ %3038, %3074 ]
  %3079 = phi float [ %3212, %3208 ], [ %3039, %3074 ]
  %3080 = phi float [ %3213, %3208 ], [ %3040, %3074 ]
  %3081 = phi float [ %3214, %3208 ], [ %3041, %3074 ]
  %3082 = phi float [ %3215, %3208 ], [ %3042, %3074 ]
  %3083 = phi float [ %3216, %3208 ], [ %3043, %3074 ]
  %3084 = phi i32 [ %3217, %3208 ], [ %3044, %3074 ]
  %3085 = phi float [ %3218, %3208 ], [ %3045, %3074 ]
  %3086 = phi float [ %3219, %3208 ], [ %3046, %3074 ]
  %3087 = phi float [ %3220, %3208 ], [ %3047, %3074 ]
  %3088 = phi i32 [ %3221, %3208 ], [ %3048, %3074 ]
  %3089 = phi float [ %3222, %3208 ], [ %3049, %3074 ]
  %3090 = phi i32 [ %3095, %3208 ], [ %3072, %3074 ]
  %3091 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3090)  ; FirstbitLo(value)
  %3092 = add i32 %3091, %3057
  %3093 = and i32 %3091, 31
  %3094 = shl i32 1, %3093
  %3095 = xor i32 %3094, %3090
  %3096 = mul i32 %3092, 72
  %3097 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.f32 %3097, 0
  %3099 = extractvalue %dx.types.ResRet.f32 %3097, 1
  %3100 = extractvalue %dx.types.ResRet.f32 %3097, 2
  %3101 = add i32 %3096, 12
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3101, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = add i32 %3096, 16
  %3105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.f32 %3105, 0
  %3107 = extractvalue %dx.types.ResRet.f32 %3105, 1
  %3108 = extractvalue %dx.types.ResRet.f32 %3105, 2
  %3109 = add i32 %3096, 28
  %3110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = add i32 %3096, 32
  %3113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.f32 %3113, 0
  %3115 = extractvalue %dx.types.ResRet.f32 %3113, 1
  %3116 = extractvalue %dx.types.ResRet.f32 %3113, 2
  %3117 = extractvalue %dx.types.ResRet.f32 %3113, 3
  %3118 = add i32 %3096, 48
  %3119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3118, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.f32 %3119, 0
  %3121 = extractvalue %dx.types.ResRet.f32 %3119, 1
  %3122 = add i32 %3096, 56
  %3123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = add i32 %3096, 64
  %3127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.f32 %3127, 0
  %3129 = extractvalue %dx.types.ResRet.f32 %3127, 1
  %3130 = mul i32 %3092, 60
  %3131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = add i32 %3130, 12
  %3136 = add i32 %3130, 48
  %3137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = extractvalue %dx.types.ResRet.f32 %3137, 1
  %3140 = extractvalue %dx.types.ResRet.f32 %3137, 2
  %3141 = and i32 %3103, 32767
  %3142 = bitcast float %3099 to i32
  %3143 = and i32 %3103, 32768
  %3144 = icmp ne i32 %3143, 0
  %3145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3146 = extractvalue %dx.types.CBufRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.CBufRet.f32 %3145, 1
  %3148 = extractvalue %dx.types.CBufRet.f32 %3145, 2
  %3149 = fsub fast float %3132, %3146
  %3150 = fsub fast float %3133, %3147
  %3151 = fsub fast float %3134, %3148
  %3152 = fsub fast float %100, %3149
  %3153 = fsub fast float %101, %3150
  %3154 = fsub fast float %102, %3151
  %3155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3135, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  %3159 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float %3156, float %3157, float %3158)  ; Dot3(ax,ay,az,bx,by,bz)
  %3160 = add i32 %3130, 24
  %3161 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  %3163 = extractvalue %dx.types.ResRet.f32 %3161, 1
  %3164 = extractvalue %dx.types.ResRet.f32 %3161, 2
  %3165 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float %3162, float %3163, float %3164)  ; Dot3(ax,ay,az,bx,by,bz)
  %3166 = add i32 %3130, 36
  %3167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.ResRet.f32 %3167, 2
  %3171 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float %3168, float %3169, float %3170)  ; Dot3(ax,ay,az,bx,by,bz)
  %3172 = call float @dx.op.unary.f32(i32 6, float %3159)  ; FAbs(value)
  %3173 = call float @dx.op.unary.f32(i32 6, float %3165)  ; FAbs(value)
  %3174 = call float @dx.op.unary.f32(i32 6, float %3171)  ; FAbs(value)
  %3175 = fsub fast float %3138, %3172
  %3176 = fsub fast float %3139, %3173
  %3177 = fsub fast float %3140, %3174
  %3178 = fmul fast float %3175, %3106
  %3179 = fmul fast float %3176, %3107
  %3180 = fmul fast float %3177, %3108
  %3181 = call float @dx.op.binary.f32(i32 36, float %3179, float %3180)  ; FMin(a,b)
  %3182 = call float @dx.op.binary.f32(i32 36, float %3178, float %3181)  ; FMin(a,b)
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3184 = call float @dx.op.binary.f32(i32 36, float %3089, float %3183)  ; FMin(a,b)
  %3185 = uitofp i1 %3144 to float
  %3186 = fsub fast float 1.000000e+00, %3185
  %3187 = fmul fast float %3184, %3186
  %3188 = lshr i32 %3076, 8
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fptoui float %3190 to i32
  %3192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3193 = extractvalue %dx.types.CBufRet.f32 %3192, 1
  %3194 = bitcast float %3193 to i32
  %3195 = lshr i32 %3194, 24
  %3196 = uitofp i32 %3195 to float
  %3197 = fptoui float %3196 to i32
  %3198 = icmp ne i32 %3197, 1
  %3199 = zext i1 %3198 to i32
  %3200 = add i32 %3199, %3191
  %3201 = uitofp i32 %3200 to float
  %3202 = fptoui float %3201 to i32
  %3203 = shl i32 %3202, 8
  %3204 = and i32 %3203, 65280
  %3205 = and i32 %3076, -65281
  %3206 = or i32 %3204, %3205
  %3207 = fcmp fast ogt float %3187, 0.000000e+00
  br i1 %3207, label %3224, label %3208

; <label>:3208                                    ; preds = %3576, %3445, %3075
  %3209 = phi i32 [ %3523, %3445 ], [ %3206, %3075 ], [ %3523, %3576 ]
  %3210 = phi i32 [ %3077, %3445 ], [ %3077, %3075 ], [ %3591, %3576 ]
  %3211 = phi float [ %3509, %3445 ], [ %3078, %3075 ], [ %3509, %3576 ]
  %3212 = phi float [ %3510, %3445 ], [ %3079, %3075 ], [ %3510, %3576 ]
  %3213 = phi float [ %3511, %3445 ], [ %3080, %3075 ], [ %3511, %3576 ]
  %3214 = phi float [ %3570, %3445 ], [ %3081, %3075 ], [ %3570, %3576 ]
  %3215 = phi float [ %3571, %3445 ], [ %3082, %3075 ], [ %3571, %3576 ]
  %3216 = phi float [ %3572, %3445 ], [ %3083, %3075 ], [ %3572, %3576 ]
  %3217 = phi i32 [ %3574, %3445 ], [ %3084, %3075 ], [ %3574, %3576 ]
  %3218 = phi float [ %3527, %3445 ], [ %3085, %3075 ], [ %3527, %3576 ]
  %3219 = phi float [ %3528, %3445 ], [ %3086, %3075 ], [ %3528, %3576 ]
  %3220 = phi float [ %3529, %3445 ], [ %3087, %3075 ], [ %3529, %3576 ]
  %3221 = phi i32 [ 0, %3445 ], [ %3088, %3075 ], [ 0, %3576 ]
  %3222 = phi float [ %3512, %3445 ], [ %3089, %3075 ], [ %3512, %3576 ]
  %3223 = icmp eq i32 %3090, %3094
  br i1 %3223, label %3592, label %3075

; <label>:3224                                    ; preds = %3075
  %3225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3226 = extractvalue %dx.types.CBufRet.f32 %3225, 3
  %3227 = bitcast float %3098 to i32
  %3228 = extractvalue %dx.types.CBufRet.f32 %3192, 0
  %3229 = bitcast float %3228 to i32
  %3230 = lshr i32 %3229, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = fptoui float %3232 to i32
  %3234 = and i32 %3233, 2
  %3235 = icmp eq i32 %3234, 0
  %3236 = select i1 %3235, float %1665, float %1693
  %3237 = select i1 %3235, float %1666, float %1694
  %3238 = select i1 %3235, float %1667, float %1695
  %3239 = icmp ne i32 %3227, -1
  %3240 = fcmp oeq float %3226, 0.000000e+00
  %3241 = and i1 %3240, %3239
  br i1 %3241, label %3242, label %3366

; <label>:3242                                    ; preds = %3224
  %3243 = fsub fast float -0.000000e+00, %3156
  %3244 = fsub fast float -0.000000e+00, %3157
  %3245 = fsub fast float -0.000000e+00, %3158
  %3246 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %3243, float %3244, float %3245)  ; Dot3(ax,ay,az,bx,by,bz)
  %3247 = fsub fast float -0.000000e+00, %3246
  %3248 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float %3243, float %3244, float %3245)  ; Dot3(ax,ay,az,bx,by,bz)
  %3249 = fadd fast float %3248, %3121
  %3250 = fadd fast float %3120, %3248
  %3251 = fsub fast float -0.000000e+00, %3250
  %3252 = fcmp ogt float %3246, -0.000000e+00
  %3253 = select i1 %3252, float %3251, float %3249
  %3254 = call float @dx.op.unary.f32(i32 6, float %3247)  ; FAbs(value)
  %3255 = fdiv fast float 1.000000e+00, %3254
  %3256 = fmul fast float %3253, %3255
  %3257 = call float @dx.op.binary.f32(i32 35, float %3256, float 0.000000e+00)  ; FMax(a,b)
  %3258 = fsub fast float -0.000000e+00, %3162
  %3259 = fsub fast float -0.000000e+00, %3163
  %3260 = fsub fast float -0.000000e+00, %3164
  %3261 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %3258, float %3259, float %3260)  ; Dot3(ax,ay,az,bx,by,bz)
  %3262 = fsub fast float -0.000000e+00, %3261
  %3263 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float %3258, float %3259, float %3260)  ; Dot3(ax,ay,az,bx,by,bz)
  %3264 = fadd fast float %3263, %3125
  %3265 = fadd fast float %3124, %3263
  %3266 = fsub fast float -0.000000e+00, %3265
  %3267 = fcmp ogt float %3261, -0.000000e+00
  %3268 = select i1 %3267, float %3266, float %3264
  %3269 = call float @dx.op.unary.f32(i32 6, float %3262)  ; FAbs(value)
  %3270 = fdiv fast float 1.000000e+00, %3269
  %3271 = fmul fast float %3268, %3270
  %3272 = call float @dx.op.binary.f32(i32 35, float %3271, float 0.000000e+00)  ; FMax(a,b)
  %3273 = fsub fast float -0.000000e+00, %3168
  %3274 = fsub fast float -0.000000e+00, %3169
  %3275 = fsub fast float -0.000000e+00, %3170
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3236, float %3237, float %3238, float %3273, float %3274, float %3275)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = fsub fast float -0.000000e+00, %3276
  %3278 = call float @dx.op.dot3.f32(i32 55, float %3152, float %3153, float %3154, float %3273, float %3274, float %3275)  ; Dot3(ax,ay,az,bx,by,bz)
  %3279 = fadd fast float %3278, %3129
  %3280 = fadd fast float %3128, %3278
  %3281 = fsub fast float -0.000000e+00, %3280
  %3282 = fcmp ogt float %3276, -0.000000e+00
  %3283 = select i1 %3282, float %3281, float %3279
  %3284 = call float @dx.op.unary.f32(i32 6, float %3277)  ; FAbs(value)
  %3285 = fdiv fast float 1.000000e+00, %3284
  %3286 = fmul fast float %3283, %3285
  %3287 = call float @dx.op.binary.f32(i32 35, float %3286, float 0.000000e+00)  ; FMax(a,b)
  %3288 = call float @dx.op.binary.f32(i32 36, float %3272, float %3287)  ; FMin(a,b)
  %3289 = call float @dx.op.binary.f32(i32 36, float %3257, float %3288)  ; FMin(a,b)
  %3290 = fmul fast float %3289, %3236
  %3291 = fmul fast float %3289, %3237
  %3292 = fmul fast float %3289, %3238
  %3293 = fadd fast float %3290, %100
  %3294 = fadd fast float %3291, %101
  %3295 = fadd fast float %3292, %102
  %3296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3297 = extractvalue %dx.types.CBufRet.f32 %3296, 0
  %3298 = extractvalue %dx.types.CBufRet.f32 %3296, 1
  %3299 = extractvalue %dx.types.CBufRet.f32 %3296, 2
  %3300 = fadd fast float %3293, %3297
  %3301 = fadd fast float %3294, %3298
  %3302 = fadd fast float %3295, %3299
  %3303 = fcmp fast olt float %3257, %3272
  %3304 = fcmp fast olt float %3257, %3287
  %3305 = and i1 %3303, %3304
  br i1 %3305, label %3309, label %3306

; <label>:3306                                    ; preds = %3242
  %3307 = fcmp fast olt float %3272, %3287
  br i1 %3307, label %3308, label %3309

; <label>:3308                                    ; preds = %3306
  br label %3309

; <label>:3309                                    ; preds = %3308, %3306, %3242
  %3310 = phi float [ 0.000000e+00, %3308 ], [ 0.000000e+00, %3306 ], [ 1.000000e+00, %3242 ]
  %3311 = phi float [ 1.000000e+00, %3308 ], [ 0.000000e+00, %3306 ], [ 0.000000e+00, %3242 ]
  %3312 = phi float [ 0.000000e+00, %3308 ], [ 1.000000e+00, %3306 ], [ 0.000000e+00, %3242 ]
  %3313 = phi float [ %3162, %3308 ], [ %3168, %3306 ], [ %3156, %3242 ]
  %3314 = phi float [ %3163, %3308 ], [ %3169, %3306 ], [ %3157, %3242 ]
  %3315 = phi float [ %3164, %3308 ], [ %3170, %3306 ], [ %3158, %3242 ]
  %3316 = call float @dx.op.unary.f32(i32 6, float %3315)  ; FAbs(value)
  %3317 = fcmp fast olt float %3316, 0x3FE276C8C0000000
  %3318 = select i1 %3317, float 0.000000e+00, float 1.000000e+00
  %3319 = select i1 %3317, float 1.000000e+00, float 0.000000e+00
  %3320 = fmul fast float %3319, %3314
  %3321 = fmul fast float %3318, %3315
  %3322 = fsub fast float %3320, %3321
  %3323 = fmul fast float %3313, %3319
  %3324 = fsub fast float -0.000000e+00, %3323
  %3325 = fmul fast float %3318, %3313
  %3326 = call float @dx.op.dot3.f32(i32 55, float %3322, float %3324, float %3325, float %3322, float %3324, float %3325)  ; Dot3(ax,ay,az,bx,by,bz)
  %3327 = call float @dx.op.unary.f32(i32 25, float %3326)  ; Rsqrt(value)
  %3328 = fmul fast float %3322, %3327
  %3329 = fmul fast float %3327, %3324
  %3330 = fmul fast float %3325, %3327
  %3331 = fmul fast float %3330, %3314
  %3332 = fmul fast float %3329, %3315
  %3333 = fsub fast float %3331, %3332
  %3334 = fmul fast float %3328, %3315
  %3335 = fmul fast float %3330, %3313
  %3336 = fsub fast float %3334, %3335
  %3337 = fmul fast float %3329, %3313
  %3338 = fmul fast float %3328, %3314
  %3339 = fsub fast float %3337, %3338
  %3340 = call float @dx.op.dot3.f32(i32 55, float %3333, float %3336, float %3339, float %3333, float %3336, float %3339)  ; Dot3(ax,ay,az,bx,by,bz)
  %3341 = call float @dx.op.unary.f32(i32 25, float %3340)  ; Rsqrt(value)
  %3342 = fmul fast float %3333, %3341
  %3343 = fmul fast float %3336, %3341
  %3344 = fmul fast float %3339, %3341
  %3345 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float %3328, float %3329, float %3330)  ; Dot3(ax,ay,az,bx,by,bz)
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3300, float %3301, float %3302, float %3342, float %3343, float %3344)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = fmul fast float %3345, 0x3FA99999A0000000
  %3348 = fmul fast float %3346, 0x3FA99999A0000000
  %3349 = call float @dx.op.unary.f32(i32 22, float %3347)  ; Frc(value)
  %3350 = call float @dx.op.unary.f32(i32 22, float %3348)  ; Frc(value)
  %3351 = fadd fast float %3349, 0xBFB99999A0000000
  %3352 = fadd fast float %3350, 0xBFB99999A0000000
  %3353 = call float @dx.op.unary.f32(i32 6, float %3351)  ; FAbs(value)
  %3354 = call float @dx.op.unary.f32(i32 6, float %3352)  ; FAbs(value)
  %3355 = fmul fast float %3353, 1.000000e+01
  %3356 = fmul fast float %3354, 1.000000e+01
  %3357 = call float @dx.op.binary.f32(i32 36, float %3355, float %3356)  ; FMin(a,b)
  %3358 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  %3359 = fsub fast float 1.000000e+00, %3358
  %3360 = fmul fast float %3359, %3310
  %3361 = fmul fast float %3359, %3311
  %3362 = fmul fast float %3359, %3312
  %3363 = fsub fast float %3293, %3098
  %3364 = fsub fast float %3294, %3099
  %3365 = fsub fast float %3295, %3100
  br label %3373

; <label>:3366                                    ; preds = %3224
  %3367 = fmul fast float %3236, 8.096000e+03
  %3368 = fmul fast float %3237, 8.096000e+03
  %3369 = fmul fast float %3238, 8.096000e+03
  %3370 = fadd fast float %3367, %100
  %3371 = fadd fast float %3368, %101
  %3372 = fadd fast float %3369, %102
  br label %3373

; <label>:3373                                    ; preds = %3366, %3309
  %3374 = phi float [ %3236, %3366 ], [ %3363, %3309 ]
  %3375 = phi float [ %3237, %3366 ], [ %3364, %3309 ]
  %3376 = phi float [ %3238, %3366 ], [ %3365, %3309 ]
  %3377 = phi float [ %3370, %3366 ], [ %3293, %3309 ]
  %3378 = phi float [ %3371, %3366 ], [ %3294, %3309 ]
  %3379 = phi float [ %3372, %3366 ], [ %3295, %3309 ]
  %3380 = phi float [ 0.000000e+00, %3366 ], [ %3360, %3309 ]
  %3381 = phi float [ 0.000000e+00, %3366 ], [ %3361, %3309 ]
  %3382 = phi float [ 0.000000e+00, %3366 ], [ %3362, %3309 ]
  %3383 = fcmp fast olt float %3117, 1.000000e+00
  br i1 %3383, label %3384, label %3415, !dx.controlflow.hints !99

; <label>:3384                                    ; preds = %3373
  %3385 = fmul fast float %3376, %3115
  %3386 = fmul fast float %3375, %3116
  %3387 = fsub fast float %3385, %3386
  %3388 = fmul fast float %3374, %3116
  %3389 = fmul fast float %3376, %3114
  %3390 = fsub fast float %3388, %3389
  %3391 = fmul fast float %3375, %3114
  %3392 = fmul fast float %3374, %3115
  %3393 = fsub fast float %3391, %3392
  %3394 = fmul fast float %3387, 2.000000e+00
  %3395 = fmul fast float %3390, 2.000000e+00
  %3396 = fmul fast float %3393, 2.000000e+00
  %3397 = fmul fast float %3394, %3117
  %3398 = fmul fast float %3395, %3117
  %3399 = fmul fast float %3396, %3117
  %3400 = fmul fast float %3396, %3115
  %3401 = fmul fast float %3395, %3116
  %3402 = fmul fast float %3394, %3116
  %3403 = fmul fast float %3396, %3114
  %3404 = fmul fast float %3395, %3114
  %3405 = fmul fast float %3394, %3115
  %3406 = fadd fast float %3400, %3374
  %3407 = fadd fast float %3406, %3397
  %3408 = fsub fast float %3407, %3401
  %3409 = fsub fast float %3375, %3403
  %3410 = fadd fast float %3409, %3398
  %3411 = fadd fast float %3410, %3402
  %3412 = fadd fast float %3399, %3376
  %3413 = fsub fast float %3412, %3405
  %3414 = fadd fast float %3413, %3404
  br label %3415

; <label>:3415                                    ; preds = %3384, %3373
  %3416 = phi float [ %3408, %3384 ], [ %3374, %3373 ]
  %3417 = phi float [ %3411, %3384 ], [ %3375, %3373 ]
  %3418 = phi float [ %3414, %3384 ], [ %3376, %3373 ]
  br i1 %3241, label %3419, label %3442

; <label>:3419                                    ; preds = %3415
  %3420 = fsub fast float %3377, %100
  %3421 = fsub fast float %3378, %101
  %3422 = fsub fast float %3379, %102
  %3423 = fsub fast float %3377, %3098
  %3424 = fsub fast float %3378, %3099
  %3425 = fsub fast float %3379, %3100
  %3426 = call float @dx.op.dot3.f32(i32 55, float %3420, float %3421, float %3422, float %3420, float %3421, float %3422)  ; Dot3(ax,ay,az,bx,by,bz)
  %3427 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %3423, float %3424, float %3425)  ; Dot3(ax,ay,az,bx,by,bz)
  %3428 = fadd fast float %3427, 0x3EE4F8B580000000
  %3429 = fdiv fast float %3426, %3428
  %3430 = bitcast float %3429 to i32
  %3431 = ashr i32 %3430, 1
  %3432 = add nsw i32 %3431, 532487669
  %3433 = bitcast i32 %3432 to float
  %3434 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3435 = fmul fast float %3434, 0x4009981AE0000000
  %3436 = fsub fast float 0x40111BBD80000000, %3435
  %3437 = fmul fast float %3436, %3434
  %3438 = fadd fast float %3437, 0xC0009F6020000000
  %3439 = fmul fast float %3438, %3434
  %3440 = fadd fast float %3439, 1.000000e+00
  %3441 = call float @dx.op.unary.f32(i32 7, float %3440)  ; Saturate(value)
  br label %3445

; <label>:3442                                    ; preds = %3415
  %3443 = icmp ne i32 %3142, -1
  %3444 = zext i1 %3443 to i32
  br label %3445

; <label>:3445                                    ; preds = %3442, %3419
  %3446 = phi float [ 0.000000e+00, %3442 ], [ %3441, %3419 ]
  %3447 = phi i32 [ %3444, %3442 ], [ 0, %3419 ]
  %3448 = fmul float %3446, 5.000000e+00
  %3449 = fsub float 5.000000e+00, %3448
  %3450 = icmp ne i32 %3447, 0
  %3451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3452 = extractvalue %dx.types.CBufRet.f32 %3451, 3
  %3453 = fadd fast float %3452, %3449
  %3454 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3453)  ; FMax(a,b)
  %3455 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3456 = call float @dx.op.unary.f32(i32 6, float %3417)  ; FAbs(value)
  %3457 = fadd fast float %3456, %3455
  %3458 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3459 = fadd fast float %3457, %3458
  %3460 = fcmp fast oeq float %3459, 0.000000e+00
  %3461 = fdiv fast float 1.000000e+00, %3459
  %3462 = select i1 %3460, float 1.000000e+00, float %3461
  %3463 = fmul fast float %3462, %3416
  %3464 = fmul fast float %3462, %3417
  %3465 = call float @dx.op.unary.f32(i32 6, float %3464)  ; FAbs(value)
  %3466 = call float @dx.op.unary.f32(i32 6, float %3463)  ; FAbs(value)
  %3467 = fsub fast float 1.000000e+00, %3465
  %3468 = fsub fast float 1.000000e+00, %3466
  %3469 = fcmp fast oge float %3463, 0.000000e+00
  %3470 = fcmp fast oge float %3464, 0.000000e+00
  %3471 = select i1 %3469, float 1.000000e+00, float -1.000000e+00
  %3472 = select i1 %3470, float 1.000000e+00, float -1.000000e+00
  %3473 = fcmp fast ole float %3418, 0.000000e+00
  %3474 = fmul fast float %3471, %3467
  %3475 = fmul fast float %3472, %3468
  %3476 = select i1 %3473, float %3474, float %3463
  %3477 = select i1 %3473, float %3475, float %3464
  %3478 = fmul fast float %3476, 5.000000e-01
  %3479 = fmul fast float %3477, 5.000000e-01
  %3480 = fadd fast float %3478, 5.000000e-01
  %3481 = fadd fast float %3479, 5.000000e-01
  %3482 = uitofp i32 %3141 to float
  %3483 = call float @dx.op.binary.f32(i32 36, float %3454, float 3.000000e+00)  ; FMin(a,b)
  %3484 = fadd fast float %3483, 2.000000e+00
  %3485 = call float @dx.op.unary.f32(i32 21, float %3484)  ; Exp(value)
  %3486 = extractvalue %dx.types.CBufRet.f32 %3451, 1
  %3487 = fmul fast float %3486, %3485
  %3488 = fmul fast float %3487, 2.000000e+00
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = fmul fast float %3480, %3489
  %3491 = fmul fast float %3481, %3489
  %3492 = fadd fast float %3490, %3487
  %3493 = fadd fast float %3491, %3487
  %3494 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %3492, float %3493, float %3482, float undef, i32 0, i32 0, i32 undef, float %3454)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3495 = extractvalue %dx.types.ResRet.f32 %3494, 0
  %3496 = extractvalue %dx.types.ResRet.f32 %3494, 1
  %3497 = extractvalue %dx.types.ResRet.f32 %3494, 2
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 3
  %3500 = fmul fast float %3499, %3111
  %3501 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3500)  ; FMin(a,b)
  %3502 = select i1 %3450, float %3501, float %3500
  %3503 = fmul fast float %3495, %3187
  %3504 = fmul fast float %3503, %3502
  %3505 = fmul fast float %3496, %3187
  %3506 = fmul fast float %3505, %3502
  %3507 = fmul fast float %3497, %3187
  %3508 = fmul fast float %3507, %3502
  %3509 = fadd fast float %3504, %3078
  %3510 = fadd fast float %3506, %3079
  %3511 = fadd fast float %3508, %3080
  %3512 = fsub fast float %3089, %3187
  %3513 = and i32 %3202, 255
  %3514 = uitofp i32 %3513 to float
  %3515 = fptoui float %3514 to i32
  %3516 = icmp eq i32 %3197, 1
  %3517 = zext i1 %3516 to i32
  %3518 = add i32 %3517, %3515
  %3519 = uitofp i32 %3518 to float
  %3520 = fptoui float %3519 to i32
  %3521 = shl i32 %3520, 8
  %3522 = and i32 %3521, 65280
  %3523 = or i32 %3522, %3205
  %3524 = fmul fast float %3380, %3187
  %3525 = fmul fast float %3381, %3187
  %3526 = fmul fast float %3382, %3187
  %3527 = fadd fast float %3524, %3085
  %3528 = fadd fast float %3525, %3086
  %3529 = fadd fast float %3526, %3087
  %3530 = fmul fast float %3482, 0x3FE3C6EF40000000
  %3531 = call float @dx.op.unary.f32(i32 22, float %3530)  ; Frc(value)
  %3532 = fadd fast float %3531, 0x3FE5555560000000
  %3533 = fadd fast float %3531, 0x3FD5555560000000
  %3534 = fsub fast float -0.000000e+00, %3531
  %3535 = fsub fast float -0.000000e+00, %3532
  %3536 = fsub fast float -0.000000e+00, %3533
  %3537 = fcmp fast oge float %3531, %3534
  %3538 = fcmp fast oge float %3532, %3535
  %3539 = fcmp fast oge float %3533, %3536
  %3540 = call float @dx.op.unary.f32(i32 6, float %3531)  ; FAbs(value)
  %3541 = call float @dx.op.unary.f32(i32 6, float %3532)  ; FAbs(value)
  %3542 = call float @dx.op.unary.f32(i32 6, float %3533)  ; FAbs(value)
  %3543 = call float @dx.op.unary.f32(i32 22, float %3540)  ; Frc(value)
  %3544 = call float @dx.op.unary.f32(i32 22, float %3541)  ; Frc(value)
  %3545 = call float @dx.op.unary.f32(i32 22, float %3542)  ; Frc(value)
  %3546 = fsub fast float -0.000000e+00, %3543
  %3547 = fsub fast float -0.000000e+00, %3544
  %3548 = fsub fast float -0.000000e+00, %3545
  %3549 = select i1 %3537, float %3543, float %3546
  %3550 = select i1 %3538, float %3544, float %3547
  %3551 = select i1 %3539, float %3545, float %3548
  %3552 = fmul fast float %3549, 6.000000e+00
  %3553 = fmul fast float %3550, 6.000000e+00
  %3554 = fmul fast float %3551, 6.000000e+00
  %3555 = fadd fast float %3552, -3.000000e+00
  %3556 = fadd fast float %3553, -3.000000e+00
  %3557 = fadd fast float %3554, -3.000000e+00
  %3558 = call float @dx.op.unary.f32(i32 6, float %3555)  ; FAbs(value)
  %3559 = call float @dx.op.unary.f32(i32 6, float %3556)  ; FAbs(value)
  %3560 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3561 = fadd fast float %3558, -1.000000e+00
  %3562 = fadd fast float %3559, -1.000000e+00
  %3563 = fadd fast float %3560, -1.000000e+00
  %3564 = call float @dx.op.unary.f32(i32 7, float %3561)  ; Saturate(value)
  %3565 = call float @dx.op.unary.f32(i32 7, float %3562)  ; Saturate(value)
  %3566 = call float @dx.op.unary.f32(i32 7, float %3563)  ; Saturate(value)
  %3567 = fmul fast float %3564, %3187
  %3568 = fmul fast float %3565, %3187
  %3569 = fmul fast float %3566, %3187
  %3570 = fadd fast float %3567, %3081
  %3571 = fadd fast float %3568, %3082
  %3572 = fadd fast float %3569, %3083
  %3573 = icmp eq i32 %3141, 0
  %3574 = select i1 %3573, i32 1, i32 %3084
  %3575 = icmp eq i32 %3088, 0
  br i1 %3575, label %3208, label %3576

; <label>:3576                                    ; preds = %3445
  %3577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3578 = extractvalue %dx.types.CBufRet.f32 %3577, 0
  %3579 = bitcast float %3578 to i32
  %3580 = lshr i32 %3579, 8
  %3581 = and i32 %3580, 255
  %3582 = uitofp i32 %3581 to float
  %3583 = fptoui float %3582 to i32
  %3584 = icmp eq i32 %3583, 16
  %3585 = bitcast float %3500 to i32
  %3586 = select i1 %3584, i32 %3585, i32 %3077
  %3587 = icmp eq i32 %3583, 17
  %3588 = select i1 %3587, i32 1065353216, i32 %3586
  %3589 = icmp eq i32 %3583, 18
  %3590 = bitcast float %3502 to i32
  %3591 = select i1 %3589, i32 %3590, i32 %3588
  br label %3208

; <label>:3592                                    ; preds = %3208
  br label %3593

; <label>:3593                                    ; preds = %3592, %3035
  %3594 = phi i32 [ %3036, %3035 ], [ %3209, %3592 ]
  %3595 = phi i32 [ %3037, %3035 ], [ %3210, %3592 ]
  %3596 = phi float [ %3038, %3035 ], [ %3211, %3592 ]
  %3597 = phi float [ %3039, %3035 ], [ %3212, %3592 ]
  %3598 = phi float [ %3040, %3035 ], [ %3213, %3592 ]
  %3599 = phi float [ %3041, %3035 ], [ %3214, %3592 ]
  %3600 = phi float [ %3042, %3035 ], [ %3215, %3592 ]
  %3601 = phi float [ %3043, %3035 ], [ %3216, %3592 ]
  %3602 = phi i32 [ %3044, %3035 ], [ %3217, %3592 ]
  %3603 = phi float [ %3045, %3035 ], [ %3218, %3592 ]
  %3604 = phi float [ %3046, %3035 ], [ %3219, %3592 ]
  %3605 = phi float [ %3047, %3035 ], [ %3220, %3592 ]
  %3606 = phi i32 [ %3048, %3035 ], [ %3221, %3592 ]
  %3607 = phi float [ %3049, %3035 ], [ %3222, %3592 ]
  %3608 = add i32 %3050, 1
  %3609 = icmp ugt i32 %3608, %3032
  br i1 %3609, label %3610, label %3035, !llvm.loop !100

; <label>:3610                                    ; preds = %3593
  br label %3611

; <label>:3611                                    ; preds = %3610, %2983
  %3612 = phi i32 [ 0, %2983 ], [ %3594, %3610 ]
  %3613 = phi i32 [ %2953, %2983 ], [ %3595, %3610 ]
  %3614 = phi float [ 0.000000e+00, %2983 ], [ %3596, %3610 ]
  %3615 = phi float [ 0.000000e+00, %2983 ], [ %3597, %3610 ]
  %3616 = phi float [ 0.000000e+00, %2983 ], [ %3598, %3610 ]
  %3617 = phi float [ 0.000000e+00, %2983 ], [ %3599, %3610 ]
  %3618 = phi float [ 0.000000e+00, %2983 ], [ %3600, %3610 ]
  %3619 = phi float [ 0.000000e+00, %2983 ], [ %3601, %3610 ]
  %3620 = phi i32 [ 0, %2983 ], [ %3602, %3610 ]
  %3621 = phi float [ 0.000000e+00, %2983 ], [ %3603, %3610 ]
  %3622 = phi float [ 0.000000e+00, %2983 ], [ %3604, %3610 ]
  %3623 = phi float [ 0.000000e+00, %2983 ], [ %3605, %3610 ]
  %3624 = call float @dx.op.dot3.f32(i32 55, float %3614, float %3615, float %3616, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3625 = select i1 %1852, float %3624, float %3615
  %3626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3627 = extractvalue %dx.types.CBufRet.f32 %3626, 0
  %3628 = bitcast float %3627 to i32
  %3629 = lshr i32 %3628, 8
  %3630 = and i32 %3629, 255
  %3631 = uitofp i32 %3630 to float
  %3632 = fptoui float %3631 to i32
  %3633 = icmp eq i32 %3632, 13
  br i1 %3633, label %3634, label %3654

; <label>:3634                                    ; preds = %3611
  %3635 = fadd fast float %3617, 1.000000e+00
  %3636 = fadd fast float %3618, 1.000000e+00
  %3637 = fadd fast float %3619, 1.000000e+00
  %3638 = fmul fast float %3635, 5.000000e-01
  %3639 = fmul fast float %3636, 5.000000e-01
  %3640 = fmul fast float %3637, 5.000000e-01
  %3641 = call float @dx.op.unary.f32(i32 7, float %3638)  ; Saturate(value)
  %3642 = call float @dx.op.unary.f32(i32 7, float %3639)  ; Saturate(value)
  %3643 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3644 = fmul fast float %3641, 1.023000e+03
  %3645 = fmul fast float %3642, 1.023000e+03
  %3646 = fmul fast float %3643, 1.023000e+03
  %3647 = fptoui float %3644 to i32
  %3648 = fptoui float %3645 to i32
  %3649 = fptoui float %3646 to i32
  %3650 = shl i32 %3648, 10
  %3651 = or i32 %3650, %3647
  %3652 = shl i32 %3649, 20
  %3653 = or i32 %3651, %3652
  br label %3654

; <label>:3654                                    ; preds = %3634, %3611
  %3655 = phi i32 [ %3653, %3634 ], [ %3613, %3611 ]
  %3656 = icmp eq i32 %3632, 14
  %3657 = select i1 %3656, i32 %3620, i32 %3655
  %3658 = icmp eq i32 %3632, 22
  br i1 %3658, label %3659, label %3679

; <label>:3659                                    ; preds = %3654
  %3660 = fadd fast float %3621, 1.000000e+00
  %3661 = fadd fast float %3622, 1.000000e+00
  %3662 = fadd fast float %3623, 1.000000e+00
  %3663 = fmul fast float %3660, 5.000000e-01
  %3664 = fmul fast float %3661, 5.000000e-01
  %3665 = fmul fast float %3662, 5.000000e-01
  %3666 = call float @dx.op.unary.f32(i32 7, float %3663)  ; Saturate(value)
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3669 = fmul fast float %3666, 1.023000e+03
  %3670 = fmul fast float %3667, 1.023000e+03
  %3671 = fmul fast float %3668, 1.023000e+03
  %3672 = fptoui float %3669 to i32
  %3673 = fptoui float %3670 to i32
  %3674 = fptoui float %3671 to i32
  %3675 = shl i32 %3673, 10
  %3676 = or i32 %3675, %3672
  %3677 = shl i32 %3674, 20
  %3678 = or i32 %3676, %3677
  br label %3679

; <label>:3679                                    ; preds = %3659, %3654
  %3680 = phi i32 [ %3678, %3659 ], [ %3657, %3654 ]
  %3681 = fmul fast float %3614, 0x3FD45F3060000000
  %3682 = select i1 %1852, float 0.000000e+00, float %3681
  %3683 = fmul fast float %3625, 0x3FD45F3060000000
  %3684 = fmul fast float %3616, 0x3FD45F3060000000
  %3685 = select i1 %1852, float 0.000000e+00, float %3684
  br label %3686

; <label>:3686                                    ; preds = %3679, %2952
  %3687 = phi i32 [ %3612, %3679 ], [ 0, %2952 ]
  %3688 = phi i32 [ %3680, %3679 ], [ %2953, %2952 ]
  %3689 = phi float [ %3682, %3679 ], [ %2918, %2952 ]
  %3690 = phi float [ %3683, %3679 ], [ %2919, %2952 ]
  %3691 = phi float [ %3685, %3679 ], [ %2920, %2952 ]
  %3692 = phi i1 [ false, %3679 ], [ true, %2952 ]
  %3693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3694 = extractvalue %dx.types.CBufRet.i32 %3693, 0
  %3695 = and i32 %3694, 524288
  %3696 = icmp ne i32 %3695, 0
  %3697 = select i1 %3696, float 0.000000e+00, float 1.000000e+00
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3700 = bitcast float %3699 to i32
  %3701 = and i32 %3700, 255
  %3702 = uitofp i32 %3701 to float
  %3703 = fptoui float %3702 to i32
  %3704 = icmp eq i32 %3703, 38
  %3705 = select i1 %3704, i32 0, i32 %3688
  %3706 = lshr i32 %3700, 8
  %3707 = and i32 %3706, 255
  %3708 = uitofp i32 %3707 to float
  %3709 = fptoui float %3708 to i32
  %3710 = icmp eq i32 %3709, 24
  br i1 %3710, label %3711, label %3722

; <label>:3711                                    ; preds = %3686
  %3712 = fadd fast float %1883, 1.000000e+00
  %3713 = fmul fast float %3712, 5.000000e-01
  %3714 = select i1 %1885, float %3713, float 1.000000e+00
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = fmul fast float %3715, 1.023000e+03
  %3717 = fptoui float %3716 to i32
  %3718 = shl i32 %3717, 10
  %3719 = or i32 %3718, %3717
  %3720 = shl i32 %3717, 20
  %3721 = or i32 %3719, %3720
  br label %3722

; <label>:3722                                    ; preds = %3711, %3686
  %3723 = phi i32 [ %3705, %3686 ], [ %3721, %3711 ]
  %3724 = xor i1 %3696, true
  %3725 = zext i1 %3724 to i32
  br i1 %3696, label %3726, label %3962

; <label>:3726                                    ; preds = %3722
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 0
  %3729 = extractvalue %dx.types.CBufRet.f32 %3727, 1
  %3730 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3731 = extractvalue %dx.types.CBufRet.f32 %3727, 3
  %3732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3733 = extractvalue %dx.types.CBufRet.f32 %3732, 0
  %3734 = extractvalue %dx.types.CBufRet.f32 %3732, 1
  %3735 = extractvalue %dx.types.CBufRet.f32 %3732, 2
  %3736 = extractvalue %dx.types.CBufRet.f32 %3732, 3
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3740 = extractvalue %dx.types.CBufRet.f32 %3737, 2
  %3741 = extractvalue %dx.types.CBufRet.f32 %3737, 3
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3746 = extractvalue %dx.types.CBufRet.f32 %3742, 3
  %3747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.f32 %3747, 0
  %3749 = extractvalue %dx.types.CBufRet.f32 %3747, 1
  %3750 = extractvalue %dx.types.CBufRet.f32 %3747, 2
  %3751 = extractvalue %dx.types.CBufRet.f32 %3747, 3
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.CBufRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.CBufRet.f32 %3752, 2
  %3756 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3757 = call float @dx.op.dot3.f32(i32 55, float %3753, float %3754, float %3755, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = fmul fast float %3757, 8.000000e+00
  %3761 = fmul fast float %3760, %3759
  %3762 = call float @dx.op.unary.f32(i32 7, float %3761)  ; Saturate(value)
  %3763 = fcmp fast ogt float %3762, 0.000000e+00
  br i1 %3763, label %3764, label %3933, !dx.controlflow.hints !101

; <label>:3764                                    ; preds = %3726
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3767 = fmul fast float %1607, 2.000000e+00
  %3768 = fmul fast float %1608, 2.000000e+00
  %3769 = fadd fast float %3767, -1.000000e+00
  %3770 = fadd fast float %3768, -1.000000e+00
  %3771 = fmul fast float %3766, %3769
  %3772 = fmul fast float %3766, %3770
  %3773 = fadd fast float %3771, %60
  %3774 = fadd fast float %3772, %61
  %3775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3776 = extractvalue %dx.types.CBufRet.f32 %3775, 2
  %3777 = extractvalue %dx.types.CBufRet.f32 %3775, 3
  %3778 = fmul fast float %3773, %3776
  %3779 = fmul fast float %3774, %3777
  %3780 = fadd fast float %1800, 0xBFE3333340000000
  %3781 = fmul fast float %3780, 0x4004000020000000
  %3782 = fsub fast float 1.000000e+00, %3781
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fmul fast float %3783, 3.000000e+00
  %3785 = fadd fast float %3784, %1607
  %3786 = call float @dx.op.unary.f32(i32 27, float %3785)  ; Round_ni(value)
  %3787 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %42, float %3778, float %3779, float %3786, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = fcmp fast une float %3788, 0xFFF0000000000000
  %3790 = fcmp fast une float %3788, 0x7FF0000000000000
  %3791 = and i1 %3789, %3790
  %3792 = fcmp fast olt float %3788, 0.000000e+00
  %3793 = call float @dx.op.unary.f32(i32 6, float %3788)  ; FAbs(value)
  %3794 = fsub fast float 1.000000e+00, %3793
  %3795 = select i1 %3791, float 1.000000e+00, float 0.000000e+00
  %3796 = fmul fast float %3795, %3762
  %3797 = fcmp fast ogt float %3796, 0.000000e+00
  br i1 %3797, label %3798, label %3933, !dx.controlflow.hints !102

; <label>:3798                                    ; preds = %3764
  %3799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3800 = extractvalue %dx.types.CBufRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.CBufRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.CBufRet.f32 %3799, 2
  %3803 = select i1 %3792, float 0.000000e+00, float %3800
  %3804 = select i1 %3792, float 0.000000e+00, float %3801
  %3805 = select i1 %3792, float 0.000000e+00, float %3802
  %3806 = select i1 %3792, float %3728, float %3743
  %3807 = select i1 %3792, float %3733, float %3748
  %3808 = select i1 %3792, float %3738, float %3753
  %3809 = select i1 %3792, float %3729, float %3744
  %3810 = select i1 %3792, float %3734, float %3749
  %3811 = select i1 %3792, float %3739, float %3754
  %3812 = select i1 %3792, float %3730, float %3745
  %3813 = select i1 %3792, float %3735, float %3750
  %3814 = select i1 %3792, float %3740, float %3755
  %3815 = select i1 %3792, float %3731, float %3746
  %3816 = select i1 %3792, float %3736, float %3751
  %3817 = select i1 %3792, float %3741, float %3756
  %3818 = fadd fast float %3803, %100
  %3819 = fadd fast float %3804, %101
  %3820 = fadd fast float %3805, %102
  %3821 = fmul fast float %3818, %3806
  %3822 = call float @dx.op.tertiary.f32(i32 46, float %3819, float %3809, float %3821)  ; FMad(a,b,c)
  %3823 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3812, float %3822)  ; FMad(a,b,c)
  %3824 = fadd fast float %3823, %3815
  %3825 = fmul fast float %3818, %3807
  %3826 = call float @dx.op.tertiary.f32(i32 46, float %3819, float %3810, float %3825)  ; FMad(a,b,c)
  %3827 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3813, float %3826)  ; FMad(a,b,c)
  %3828 = fadd fast float %3827, %3816
  %3829 = fmul fast float %3818, %3808
  %3830 = call float @dx.op.tertiary.f32(i32 46, float %3819, float %3811, float %3829)  ; FMad(a,b,c)
  %3831 = call float @dx.op.tertiary.f32(i32 46, float %3820, float %3814, float %3830)  ; FMad(a,b,c)
  %3832 = fadd fast float %3831, %3817
  %3833 = fdiv fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3833, %3824
  %3835 = fmul fast float %3833, %3828
  %3836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3837 = extractvalue %dx.types.CBufRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.CBufRet.f32 %3836, 1
  %3839 = fmul fast float %3834, %3837
  %3840 = fmul fast float %3835, %3838
  %3841 = extractvalue %dx.types.CBufRet.f32 %3836, 2
  %3842 = extractvalue %dx.types.CBufRet.f32 %3836, 3
  %3843 = fadd fast float %3839, %3841
  %3844 = fadd fast float %3840, %3842
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 3
  %3847 = fmul fast float %3846, %1858
  %3848 = fmul fast float %3846, %1859
  %3849 = fmul fast float %3846, %1860
  %3850 = fadd fast float %3847, %3818
  %3851 = fadd fast float %3848, %3819
  %3852 = fadd fast float %3849, %3820
  %3853 = fmul fast float %3850, %3806
  %3854 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3809, float %3853)  ; FMad(a,b,c)
  %3855 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3812, float %3854)  ; FMad(a,b,c)
  %3856 = fadd fast float %3855, %3815
  %3857 = fmul fast float %3850, %3807
  %3858 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3810, float %3857)  ; FMad(a,b,c)
  %3859 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3813, float %3858)  ; FMad(a,b,c)
  %3860 = fadd fast float %3859, %3816
  %3861 = fmul fast float %3850, %3808
  %3862 = call float @dx.op.tertiary.f32(i32 46, float %3851, float %3811, float %3861)  ; FMad(a,b,c)
  %3863 = call float @dx.op.tertiary.f32(i32 46, float %3852, float %3814, float %3862)  ; FMad(a,b,c)
  %3864 = fadd fast float %3863, %3817
  %3865 = fdiv fast float 1.000000e+00, %3864
  %3866 = fmul fast float %3865, %3856
  %3867 = fmul fast float %3865, %3860
  %3868 = fmul fast float %3843, 2.000000e+00
  %3869 = fadd fast float %3868, -1.000000e+00
  %3870 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3871 = fmul fast float %3870, 5.000000e+00
  %3872 = fadd fast float %3871, -4.000000e+00
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fsub fast float %3834, %3866
  %3875 = fmul fast float %3837, %3874
  %3876 = fmul fast float %3875, %3873
  %3877 = fsub fast float %3866, %3834
  %3878 = fmul fast float %3837, %3877
  %3879 = fadd fast float %3878, %3876
  %3880 = fsub fast float %3867, %3835
  %3881 = fmul fast float %3838, %3880
  %3882 = fmul fast float %3879, %3794
  %3883 = fmul fast float %3881, %3794
  %3884 = fadd fast float %3882, %3843
  %3885 = fadd fast float %3883, %3844
  %3886 = fsub fast float %3865, %3833
  %3887 = fmul fast float %3886, %3794
  %3888 = fadd fast float %3887, %3833
  %3889 = fdiv fast float 1.000000e+00, %3888
  %3890 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3891 = fadd fast float %1800, -1.000000e+00
  %3892 = fsub fast float %3889, %3832
  %3893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %3894 = extractvalue %dx.types.CBufRet.f32 %3893, 2
  %3895 = fmul fast float %3894, %3889
  %3896 = fdiv fast float 1.600000e+02, %3895
  %3897 = fmul fast float %3891, %3891
  %3898 = fmul fast float %3897, 0xBFB5B17960000000
  %3899 = fmul fast float %3898, %3892
  %3900 = fmul fast float %3899, %3896
  %3901 = call float @dx.op.unary.f32(i32 21, float %3900)  ; Exp(value)
  %3902 = fmul fast float %3901, 0x3FF04B2960000000
  %3903 = fsub fast float 0x3FF04B2960000000, %3902
  %3904 = call float @dx.op.unary.f32(i32 7, float %3903)  ; Saturate(value)
  %3905 = fmul fast float %3904, 4.000000e+00
  %3906 = fadd fast float %3905, %3890
  %3907 = fadd fast float %1607, -5.000000e-01
  %3908 = fadd fast float %1608, -5.000000e-01
  %3909 = fmul fast float %3906, 0x3F9EB851E0000000
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fmul fast float %3910, %3907
  %3912 = fmul fast float %3910, %3908
  %3913 = fadd fast float %3884, %3911
  %3914 = fadd fast float %3885, %3912
  %3915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %3913, float %3914, float undef, float undef, i32 0, i32 0, i32 undef, float %3906)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3921 = fmul fast float %3920, %3916
  %3922 = fmul fast float %3920, %3917
  %3923 = fmul fast float %3920, %3918
  %3924 = select i1 %1852, float 0.000000e+00, float %3922
  %3925 = select i1 %1852, float 0.000000e+00, float %3923
  %3926 = fmul fast float %3914, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = fmul fast float %3927, %3927
  %3929 = fsub fast float 1.000000e+00, %3928
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = fmul fast float %3931, %3796
  br label %3933

; <label>:3933                                    ; preds = %3798, %3764, %3726
  %3934 = phi float [ %3921, %3798 ], [ 0.000000e+00, %3764 ], [ 0.000000e+00, %3726 ]
  %3935 = phi float [ %3924, %3798 ], [ 0.000000e+00, %3764 ], [ 0.000000e+00, %3726 ]
  %3936 = phi float [ %3925, %3798 ], [ 0.000000e+00, %3764 ], [ 0.000000e+00, %3726 ]
  %3937 = phi float [ %3932, %3798 ], [ 0.000000e+00, %3764 ], [ 0.000000e+00, %3726 ]
  %3938 = phi float [ %3794, %3798 ], [ %3794, %3764 ], [ 0.000000e+00, %3726 ]
  %3939 = phi float [ %3932, %3798 ], [ %3796, %3764 ], [ 0.000000e+00, %3726 ]
  %3940 = phi float [ %3906, %3798 ], [ 0.000000e+00, %3764 ], [ 0.000000e+00, %3726 ]
  %3941 = icmp eq i32 %3709, 25
  br i1 %3941, label %3942, label %3945

; <label>:3942                                    ; preds = %3933
  %3943 = call float @dx.op.unary.f32(i32 6, float %3938)  ; FAbs(value)
  %3944 = bitcast float %3943 to i32
  br label %3945

; <label>:3945                                    ; preds = %3942, %3933
  %3946 = phi i32 [ %3944, %3942 ], [ %3723, %3933 ]
  %3947 = icmp eq i32 %3709, 26
  %3948 = bitcast float %3939 to i32
  %3949 = select i1 %3947, i32 %3948, i32 %3946
  %3950 = icmp eq i32 %3709, 27
  %3951 = fmul fast float %3940, 2.500000e-01
  %3952 = bitcast float %3951 to i32
  %3953 = select i1 %3950, i32 %3952, i32 %3949
  %3954 = fcmp fast olt float %3937, 1.000000e+00
  %3955 = or i1 %3954, %3724
  %3956 = zext i1 %3955 to i32
  %3957 = fmul fast float %3937, %3697
  %3958 = fsub fast float %3937, %3957
  %3959 = fmul fast float %3958, %3934
  %3960 = fmul fast float %3958, %3935
  %3961 = fmul fast float %3958, %3936
  br label %3962

; <label>:3962                                    ; preds = %3945, %3722
  %3963 = phi i32 [ %3723, %3722 ], [ %3953, %3945 ]
  %3964 = phi float [ 0.000000e+00, %3722 ], [ %3958, %3945 ]
  %3965 = phi float [ 0.000000e+00, %3722 ], [ %3959, %3945 ]
  %3966 = phi float [ 0.000000e+00, %3722 ], [ %3960, %3945 ]
  %3967 = phi float [ 0.000000e+00, %3722 ], [ %3961, %3945 ]
  %3968 = phi i32 [ %3725, %3722 ], [ %3956, %3945 ]
  %3969 = icmp ne i32 %3968, 0
  %3970 = add i32 %3709, -13
  %3971 = icmp ult i32 %3970, 2
  %3972 = or i1 %3971, %3969
  %3973 = icmp eq i32 %3709, 22
  %3974 = or i1 %3972, %3973
  br i1 %3974, label %3975, label %4701

; <label>:3975                                    ; preds = %3962
  %3976 = select i1 %3692, float %2880, float 1.000000e+00
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %3979 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3980 = fmul fast float %3978, %60
  %3981 = fmul fast float %3979, %61
  %3982 = fptoui float %3980 to i32
  %3983 = fptoui float %3981 to i32
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 0
  %3986 = extractvalue %dx.types.CBufRet.f32 %3984, 2
  %3987 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3988 = fadd fast float %56, -4.000000e+00
  %3989 = call float @dx.op.binary.f32(i32 35, float %3988, float 0.000000e+00)  ; FMax(a,b)
  %3990 = fadd fast float %3989, %3985
  %3991 = fmul fast float %3990, %3986
  %3992 = call float @dx.op.unary.f32(i32 23, float %3991)  ; Log(value)
  %3993 = fmul fast float %3992, %3987
  %3994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3995 = extractvalue %dx.types.CBufRet.f32 %3994, 2
  %3996 = fmul fast float %3993, %3995
  %3997 = call float @dx.op.unary.f32(i32 7, float %3996)  ; Saturate(value)
  %3998 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.i32 %3998, 1
  %4000 = add i32 %3999, -1
  %4001 = uitofp i32 %3999 to float
  %4002 = fmul fast float %4001, %3997
  %4003 = fptoui float %4002 to i32
  %4004 = call i32 @dx.op.binary.i32(i32 40, i32 %4003, i32 %4000)  ; UMin(a,b)
  %4005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.i32 %4005, 2
  %4007 = extractvalue %dx.types.CBufRet.i32 %4005, 3
  %4008 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3983, i32 %4006, i32 %3982)  ; UMad(a,b,c)
  %4009 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4004, i32 %4007, i32 %4008)  ; UMad(a,b,c)
  %4010 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %4011 = fptoui float %4010 to i32
  %4012 = lshr i32 %4011, 5
  %4013 = call i32 @dx.op.binary.i32(i32 40, i32 %4012, i32 8191)  ; UMin(a,b)
  %4014 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.i32 %4014, 2
  %4016 = add nsw i32 %4015, -1
  %4017 = call i32 @dx.op.binary.i32(i32 37, i32 %4016, i32 0)  ; IMax(a,b)
  %4018 = shl i32 %4013, 2
  %4019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %4018, i32 undef)  ; BufferLoad(srv,index,wot)
  %4020 = extractvalue %dx.types.ResRet.i32 %4019, 0
  %4021 = lshr i32 %4020, 16
  %4022 = and i32 %4020, 65535
  %4023 = lshr i32 %4020, 21
  %4024 = lshr i32 %4022, 5
  %4025 = call i32 @dx.op.binary.i32(i32 40, i32 %4024, i32 %4017)  ; UMin(a,b)
  %4026 = icmp ugt i32 %4023, %4025
  br i1 %4026, label %4613, label %4027

; <label>:4027                                    ; preds = %3975
  br label %4028

; <label>:4028                                    ; preds = %4595, %4027
  %4029 = phi i32 [ %4596, %4595 ], [ %3687, %4027 ]
  %4030 = phi i32 [ %4597, %4595 ], [ %3963, %4027 ]
  %4031 = phi float [ %4598, %4595 ], [ 0.000000e+00, %4027 ]
  %4032 = phi float [ %4599, %4595 ], [ 0.000000e+00, %4027 ]
  %4033 = phi float [ %4600, %4595 ], [ 0.000000e+00, %4027 ]
  %4034 = phi float [ %4601, %4595 ], [ 0.000000e+00, %4027 ]
  %4035 = phi float [ %4602, %4595 ], [ 0.000000e+00, %4027 ]
  %4036 = phi float [ %4603, %4595 ], [ 0.000000e+00, %4027 ]
  %4037 = phi i32 [ %4604, %4595 ], [ 0, %4027 ]
  %4038 = phi float [ %4605, %4595 ], [ 0.000000e+00, %4027 ]
  %4039 = phi float [ %4606, %4595 ], [ 0.000000e+00, %4027 ]
  %4040 = phi float [ %4607, %4595 ], [ 0.000000e+00, %4027 ]
  %4041 = phi i32 [ %4608, %4595 ], [ 1, %4027 ]
  %4042 = phi float [ %4609, %4595 ], [ 1.000000e+00, %4027 ]
  %4043 = phi i32 [ %4610, %4595 ], [ %4023, %4027 ]
  %4044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.i32 %4044, 2
  %4046 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4009, i32 %4045, i32 %4043)  ; UMad(a,b,c)
  %4047 = shl i32 %4046, 2
  %4048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %4047, i32 undef)  ; BufferLoad(srv,index,wot)
  %4049 = extractvalue %dx.types.ResRet.i32 %4048, 0
  %4050 = shl i32 %4043, 5
  %4051 = sub nsw i32 %4021, %4050
  %4052 = call i32 @dx.op.binary.i32(i32 37, i32 %4051, i32 0)  ; IMax(a,b)
  %4053 = call i32 @dx.op.binary.i32(i32 38, i32 %4052, i32 31)  ; IMin(a,b)
  %4054 = sub nsw i32 1, %4021
  %4055 = add nsw i32 %4054, %4022
  %4056 = call i32 @dx.op.binary.i32(i32 37, i32 %4055, i32 0)  ; IMax(a,b)
  %4057 = call i32 @dx.op.binary.i32(i32 38, i32 %4056, i32 32)  ; IMin(a,b)
  %4058 = and i32 %4057, 31
  %4059 = shl i32 -1, %4058
  %4060 = xor i32 %4059, -1
  %4061 = and i32 %4053, 31
  %4062 = shl i32 %4060, %4061
  %4063 = icmp eq i32 %4057, 32
  %4064 = select i1 %4063, i32 -1, i32 %4062
  %4065 = and i32 %4064, %4049
  %4066 = icmp eq i32 %4065, 0
  br i1 %4066, label %4595, label %4067

; <label>:4067                                    ; preds = %4028
  br label %4068

; <label>:4068                                    ; preds = %4201, %4067
  %4069 = phi i32 [ %4202, %4201 ], [ %4029, %4067 ]
  %4070 = phi i32 [ %4203, %4201 ], [ %4030, %4067 ]
  %4071 = phi float [ %4204, %4201 ], [ %4031, %4067 ]
  %4072 = phi float [ %4205, %4201 ], [ %4032, %4067 ]
  %4073 = phi float [ %4206, %4201 ], [ %4033, %4067 ]
  %4074 = phi float [ %4207, %4201 ], [ %4034, %4067 ]
  %4075 = phi float [ %4208, %4201 ], [ %4035, %4067 ]
  %4076 = phi float [ %4209, %4201 ], [ %4036, %4067 ]
  %4077 = phi i32 [ %4210, %4201 ], [ %4037, %4067 ]
  %4078 = phi float [ %4211, %4201 ], [ %4038, %4067 ]
  %4079 = phi float [ %4212, %4201 ], [ %4039, %4067 ]
  %4080 = phi float [ %4213, %4201 ], [ %4040, %4067 ]
  %4081 = phi i32 [ %4214, %4201 ], [ %4041, %4067 ]
  %4082 = phi float [ %4215, %4201 ], [ %4042, %4067 ]
  %4083 = phi i32 [ %4088, %4201 ], [ %4065, %4067 ]
  %4084 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4083)  ; FirstbitLo(value)
  %4085 = add i32 %4084, %4050
  %4086 = and i32 %4084, 31
  %4087 = shl i32 1, %4086
  %4088 = xor i32 %4087, %4083
  %4089 = mul i32 %4085, 72
  %4090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4089, i32 undef)  ; BufferLoad(srv,index,wot)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.ResRet.f32 %4090, 1
  %4093 = extractvalue %dx.types.ResRet.f32 %4090, 2
  %4094 = add i32 %4089, 12
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %4094, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = add i32 %4089, 16
  %4098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4097, i32 undef)  ; BufferLoad(srv,index,wot)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  %4102 = add i32 %4089, 28
  %4103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = add i32 %4089, 32
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4111 = add i32 %4089, 48
  %4112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4111, i32 undef)  ; BufferLoad(srv,index,wot)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = extractvalue %dx.types.ResRet.f32 %4112, 1
  %4115 = add i32 %4089, 56
  %4116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = add i32 %4089, 64
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = mul i32 %4085, 60
  %4124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4123, i32 undef)  ; BufferLoad(srv,index,wot)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = extractvalue %dx.types.ResRet.f32 %4124, 1
  %4127 = extractvalue %dx.types.ResRet.f32 %4124, 2
  %4128 = add i32 %4123, 12
  %4129 = add i32 %4123, 48
  %4130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = and i32 %4096, 32767
  %4135 = bitcast float %4092 to i32
  %4136 = and i32 %4096, 32768
  %4137 = icmp ne i32 %4136, 0
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4142 = fsub fast float %4125, %4139
  %4143 = fsub fast float %4126, %4140
  %4144 = fsub fast float %4127, %4141
  %4145 = fsub fast float %100, %4142
  %4146 = fsub fast float %101, %4143
  %4147 = fsub fast float %102, %4144
  %4148 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4128, i32 undef)  ; BufferLoad(srv,index,wot)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4149, float %4150, float %4151)  ; Dot3(ax,ay,az,bx,by,bz)
  %4153 = add i32 %4123, 24
  %4154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4158 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4155, float %4156, float %4157)  ; Dot3(ax,ay,az,bx,by,bz)
  %4159 = add i32 %4123, 36
  %4160 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %22, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.f32 %4160, 0
  %4162 = extractvalue %dx.types.ResRet.f32 %4160, 1
  %4163 = extractvalue %dx.types.ResRet.f32 %4160, 2
  %4164 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4161, float %4162, float %4163)  ; Dot3(ax,ay,az,bx,by,bz)
  %4165 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4166 = call float @dx.op.unary.f32(i32 6, float %4158)  ; FAbs(value)
  %4167 = call float @dx.op.unary.f32(i32 6, float %4164)  ; FAbs(value)
  %4168 = fsub fast float %4131, %4165
  %4169 = fsub fast float %4132, %4166
  %4170 = fsub fast float %4133, %4167
  %4171 = fmul fast float %4168, %4099
  %4172 = fmul fast float %4169, %4100
  %4173 = fmul fast float %4170, %4101
  %4174 = call float @dx.op.binary.f32(i32 36, float %4172, float %4173)  ; FMin(a,b)
  %4175 = call float @dx.op.binary.f32(i32 36, float %4171, float %4174)  ; FMin(a,b)
  %4176 = call float @dx.op.unary.f32(i32 7, float %4175)  ; Saturate(value)
  %4177 = call float @dx.op.binary.f32(i32 36, float %4082, float %4176)  ; FMin(a,b)
  %4178 = uitofp i1 %4137 to float
  %4179 = fsub fast float 1.000000e+00, %4178
  %4180 = fmul fast float %4177, %4179
  %4181 = lshr i32 %4069, 8
  %4182 = and i32 %4181, 255
  %4183 = uitofp i32 %4182 to float
  %4184 = fptoui float %4183 to i32
  %4185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4186 = extractvalue %dx.types.CBufRet.f32 %4185, 1
  %4187 = bitcast float %4186 to i32
  %4188 = lshr i32 %4187, 24
  %4189 = uitofp i32 %4188 to float
  %4190 = fptoui float %4189 to i32
  %4191 = icmp ne i32 %4190, 1
  %4192 = zext i1 %4191 to i32
  %4193 = add i32 %4192, %4184
  %4194 = uitofp i32 %4193 to float
  %4195 = fptoui float %4194 to i32
  %4196 = shl i32 %4195, 8
  %4197 = and i32 %4196, 65280
  %4198 = and i32 %4069, -65281
  %4199 = or i32 %4197, %4198
  %4200 = fcmp fast ogt float %4180, 0.000000e+00
  br i1 %4200, label %4217, label %4201

; <label>:4201                                    ; preds = %4577, %4446, %4068
  %4202 = phi i32 [ %4524, %4446 ], [ %4199, %4068 ], [ %4524, %4577 ]
  %4203 = phi i32 [ %4070, %4446 ], [ %4070, %4068 ], [ %4593, %4577 ]
  %4204 = phi float [ %4510, %4446 ], [ %4071, %4068 ], [ %4510, %4577 ]
  %4205 = phi float [ %4511, %4446 ], [ %4072, %4068 ], [ %4511, %4577 ]
  %4206 = phi float [ %4512, %4446 ], [ %4073, %4068 ], [ %4512, %4577 ]
  %4207 = phi float [ %4571, %4446 ], [ %4074, %4068 ], [ %4571, %4577 ]
  %4208 = phi float [ %4572, %4446 ], [ %4075, %4068 ], [ %4572, %4577 ]
  %4209 = phi float [ %4573, %4446 ], [ %4076, %4068 ], [ %4573, %4577 ]
  %4210 = phi i32 [ %4575, %4446 ], [ %4077, %4068 ], [ %4575, %4577 ]
  %4211 = phi float [ %4528, %4446 ], [ %4078, %4068 ], [ %4528, %4577 ]
  %4212 = phi float [ %4529, %4446 ], [ %4079, %4068 ], [ %4529, %4577 ]
  %4213 = phi float [ %4530, %4446 ], [ %4080, %4068 ], [ %4530, %4577 ]
  %4214 = phi i32 [ 0, %4446 ], [ %4081, %4068 ], [ 0, %4577 ]
  %4215 = phi float [ %4513, %4446 ], [ %4082, %4068 ], [ %4513, %4577 ]
  %4216 = icmp eq i32 %4083, %4087
  br i1 %4216, label %4594, label %4068

; <label>:4217                                    ; preds = %4068
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4220 = bitcast float %4091 to i32
  %4221 = extractvalue %dx.types.CBufRet.f32 %4185, 0
  %4222 = bitcast float %4221 to i32
  %4223 = lshr i32 %4222, 8
  %4224 = and i32 %4223, 255
  %4225 = uitofp i32 %4224 to float
  %4226 = fptoui float %4225 to i32
  %4227 = and i32 %4226, 2
  %4228 = icmp eq i32 %4227, 0
  %4229 = select i1 %4228, float %1858, float %1693
  %4230 = select i1 %4228, float %1859, float %1694
  %4231 = select i1 %4228, float %1860, float %1695
  %4232 = icmp ne i32 %4220, -1
  %4233 = fcmp oeq float %4219, 0.000000e+00
  %4234 = and i1 %4233, %4232
  br i1 %4234, label %4235, label %4359

; <label>:4235                                    ; preds = %4217
  %4236 = fsub fast float -0.000000e+00, %4149
  %4237 = fsub fast float -0.000000e+00, %4150
  %4238 = fsub fast float -0.000000e+00, %4151
  %4239 = call float @dx.op.dot3.f32(i32 55, float %4229, float %4230, float %4231, float %4236, float %4237, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4240 = fsub fast float -0.000000e+00, %4239
  %4241 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4236, float %4237, float %4238)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = fadd fast float %4241, %4114
  %4243 = fadd fast float %4113, %4241
  %4244 = fsub fast float -0.000000e+00, %4243
  %4245 = fcmp ogt float %4239, -0.000000e+00
  %4246 = select i1 %4245, float %4244, float %4242
  %4247 = call float @dx.op.unary.f32(i32 6, float %4240)  ; FAbs(value)
  %4248 = fdiv fast float 1.000000e+00, %4247
  %4249 = fmul fast float %4246, %4248
  %4250 = call float @dx.op.binary.f32(i32 35, float %4249, float 0.000000e+00)  ; FMax(a,b)
  %4251 = fsub fast float -0.000000e+00, %4155
  %4252 = fsub fast float -0.000000e+00, %4156
  %4253 = fsub fast float -0.000000e+00, %4157
  %4254 = call float @dx.op.dot3.f32(i32 55, float %4229, float %4230, float %4231, float %4251, float %4252, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4255 = fsub fast float -0.000000e+00, %4254
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4251, float %4252, float %4253)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = fadd fast float %4256, %4118
  %4258 = fadd fast float %4117, %4256
  %4259 = fsub fast float -0.000000e+00, %4258
  %4260 = fcmp ogt float %4254, -0.000000e+00
  %4261 = select i1 %4260, float %4259, float %4257
  %4262 = call float @dx.op.unary.f32(i32 6, float %4255)  ; FAbs(value)
  %4263 = fdiv fast float 1.000000e+00, %4262
  %4264 = fmul fast float %4261, %4263
  %4265 = call float @dx.op.binary.f32(i32 35, float %4264, float 0.000000e+00)  ; FMax(a,b)
  %4266 = fsub fast float -0.000000e+00, %4161
  %4267 = fsub fast float -0.000000e+00, %4162
  %4268 = fsub fast float -0.000000e+00, %4163
  %4269 = call float @dx.op.dot3.f32(i32 55, float %4229, float %4230, float %4231, float %4266, float %4267, float %4268)  ; Dot3(ax,ay,az,bx,by,bz)
  %4270 = fsub fast float -0.000000e+00, %4269
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4266, float %4267, float %4268)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = fadd fast float %4271, %4122
  %4273 = fadd fast float %4121, %4271
  %4274 = fsub fast float -0.000000e+00, %4273
  %4275 = fcmp ogt float %4269, -0.000000e+00
  %4276 = select i1 %4275, float %4274, float %4272
  %4277 = call float @dx.op.unary.f32(i32 6, float %4270)  ; FAbs(value)
  %4278 = fdiv fast float 1.000000e+00, %4277
  %4279 = fmul fast float %4276, %4278
  %4280 = call float @dx.op.binary.f32(i32 35, float %4279, float 0.000000e+00)  ; FMax(a,b)
  %4281 = call float @dx.op.binary.f32(i32 36, float %4265, float %4280)  ; FMin(a,b)
  %4282 = call float @dx.op.binary.f32(i32 36, float %4250, float %4281)  ; FMin(a,b)
  %4283 = fmul fast float %4282, %4229
  %4284 = fmul fast float %4282, %4230
  %4285 = fmul fast float %4282, %4231
  %4286 = fadd fast float %4283, %100
  %4287 = fadd fast float %4284, %101
  %4288 = fadd fast float %4285, %102
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.CBufRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4293 = fadd fast float %4286, %4290
  %4294 = fadd fast float %4287, %4291
  %4295 = fadd fast float %4288, %4292
  %4296 = fcmp fast olt float %4250, %4265
  %4297 = fcmp fast olt float %4250, %4280
  %4298 = and i1 %4296, %4297
  br i1 %4298, label %4302, label %4299

; <label>:4299                                    ; preds = %4235
  %4300 = fcmp fast olt float %4265, %4280
  br i1 %4300, label %4301, label %4302

; <label>:4301                                    ; preds = %4299
  br label %4302

; <label>:4302                                    ; preds = %4301, %4299, %4235
  %4303 = phi float [ 0.000000e+00, %4301 ], [ 0.000000e+00, %4299 ], [ 1.000000e+00, %4235 ]
  %4304 = phi float [ 1.000000e+00, %4301 ], [ 0.000000e+00, %4299 ], [ 0.000000e+00, %4235 ]
  %4305 = phi float [ 0.000000e+00, %4301 ], [ 1.000000e+00, %4299 ], [ 0.000000e+00, %4235 ]
  %4306 = phi float [ %4155, %4301 ], [ %4161, %4299 ], [ %4149, %4235 ]
  %4307 = phi float [ %4156, %4301 ], [ %4162, %4299 ], [ %4150, %4235 ]
  %4308 = phi float [ %4157, %4301 ], [ %4163, %4299 ], [ %4151, %4235 ]
  %4309 = call float @dx.op.unary.f32(i32 6, float %4308)  ; FAbs(value)
  %4310 = fcmp fast olt float %4309, 0x3FE276C8C0000000
  %4311 = select i1 %4310, float 0.000000e+00, float 1.000000e+00
  %4312 = select i1 %4310, float 1.000000e+00, float 0.000000e+00
  %4313 = fmul fast float %4312, %4307
  %4314 = fmul fast float %4311, %4308
  %4315 = fsub fast float %4313, %4314
  %4316 = fmul fast float %4306, %4312
  %4317 = fsub fast float -0.000000e+00, %4316
  %4318 = fmul fast float %4311, %4306
  %4319 = call float @dx.op.dot3.f32(i32 55, float %4315, float %4317, float %4318, float %4315, float %4317, float %4318)  ; Dot3(ax,ay,az,bx,by,bz)
  %4320 = call float @dx.op.unary.f32(i32 25, float %4319)  ; Rsqrt(value)
  %4321 = fmul fast float %4315, %4320
  %4322 = fmul fast float %4320, %4317
  %4323 = fmul fast float %4318, %4320
  %4324 = fmul fast float %4323, %4307
  %4325 = fmul fast float %4322, %4308
  %4326 = fsub fast float %4324, %4325
  %4327 = fmul fast float %4321, %4308
  %4328 = fmul fast float %4323, %4306
  %4329 = fsub fast float %4327, %4328
  %4330 = fmul fast float %4322, %4306
  %4331 = fmul fast float %4321, %4307
  %4332 = fsub fast float %4330, %4331
  %4333 = call float @dx.op.dot3.f32(i32 55, float %4326, float %4329, float %4332, float %4326, float %4329, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %4334 = call float @dx.op.unary.f32(i32 25, float %4333)  ; Rsqrt(value)
  %4335 = fmul fast float %4326, %4334
  %4336 = fmul fast float %4329, %4334
  %4337 = fmul fast float %4332, %4334
  %4338 = call float @dx.op.dot3.f32(i32 55, float %4293, float %4294, float %4295, float %4321, float %4322, float %4323)  ; Dot3(ax,ay,az,bx,by,bz)
  %4339 = call float @dx.op.dot3.f32(i32 55, float %4293, float %4294, float %4295, float %4335, float %4336, float %4337)  ; Dot3(ax,ay,az,bx,by,bz)
  %4340 = fmul fast float %4338, 0x3FA99999A0000000
  %4341 = fmul fast float %4339, 0x3FA99999A0000000
  %4342 = call float @dx.op.unary.f32(i32 22, float %4340)  ; Frc(value)
  %4343 = call float @dx.op.unary.f32(i32 22, float %4341)  ; Frc(value)
  %4344 = fadd fast float %4342, 0xBFB99999A0000000
  %4345 = fadd fast float %4343, 0xBFB99999A0000000
  %4346 = call float @dx.op.unary.f32(i32 6, float %4344)  ; FAbs(value)
  %4347 = call float @dx.op.unary.f32(i32 6, float %4345)  ; FAbs(value)
  %4348 = fmul fast float %4346, 1.000000e+01
  %4349 = fmul fast float %4347, 1.000000e+01
  %4350 = call float @dx.op.binary.f32(i32 36, float %4348, float %4349)  ; FMin(a,b)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = fsub fast float 1.000000e+00, %4351
  %4353 = fmul fast float %4352, %4303
  %4354 = fmul fast float %4352, %4304
  %4355 = fmul fast float %4352, %4305
  %4356 = fsub fast float %4286, %4091
  %4357 = fsub fast float %4287, %4092
  %4358 = fsub fast float %4288, %4093
  br label %4366

; <label>:4359                                    ; preds = %4217
  %4360 = fmul fast float %4229, 8.096000e+03
  %4361 = fmul fast float %4230, 8.096000e+03
  %4362 = fmul fast float %4231, 8.096000e+03
  %4363 = fadd fast float %4360, %100
  %4364 = fadd fast float %4361, %101
  %4365 = fadd fast float %4362, %102
  br label %4366

; <label>:4366                                    ; preds = %4359, %4302
  %4367 = phi float [ %4229, %4359 ], [ %4356, %4302 ]
  %4368 = phi float [ %4230, %4359 ], [ %4357, %4302 ]
  %4369 = phi float [ %4231, %4359 ], [ %4358, %4302 ]
  %4370 = phi float [ %4363, %4359 ], [ %4286, %4302 ]
  %4371 = phi float [ %4364, %4359 ], [ %4287, %4302 ]
  %4372 = phi float [ %4365, %4359 ], [ %4288, %4302 ]
  %4373 = phi float [ 0.000000e+00, %4359 ], [ %4353, %4302 ]
  %4374 = phi float [ 0.000000e+00, %4359 ], [ %4354, %4302 ]
  %4375 = phi float [ 0.000000e+00, %4359 ], [ %4355, %4302 ]
  %4376 = fcmp fast olt float %4110, 1.000000e+00
  br i1 %4376, label %4377, label %4408, !dx.controlflow.hints !99

; <label>:4377                                    ; preds = %4366
  %4378 = fmul fast float %4369, %4108
  %4379 = fmul fast float %4368, %4109
  %4380 = fsub fast float %4378, %4379
  %4381 = fmul fast float %4367, %4109
  %4382 = fmul fast float %4369, %4107
  %4383 = fsub fast float %4381, %4382
  %4384 = fmul fast float %4368, %4107
  %4385 = fmul fast float %4367, %4108
  %4386 = fsub fast float %4384, %4385
  %4387 = fmul fast float %4380, 2.000000e+00
  %4388 = fmul fast float %4383, 2.000000e+00
  %4389 = fmul fast float %4386, 2.000000e+00
  %4390 = fmul fast float %4387, %4110
  %4391 = fmul fast float %4388, %4110
  %4392 = fmul fast float %4389, %4110
  %4393 = fmul fast float %4389, %4108
  %4394 = fmul fast float %4388, %4109
  %4395 = fmul fast float %4387, %4109
  %4396 = fmul fast float %4389, %4107
  %4397 = fmul fast float %4388, %4107
  %4398 = fmul fast float %4387, %4108
  %4399 = fadd fast float %4393, %4367
  %4400 = fadd fast float %4399, %4390
  %4401 = fsub fast float %4400, %4394
  %4402 = fsub fast float %4368, %4396
  %4403 = fadd fast float %4402, %4391
  %4404 = fadd fast float %4403, %4395
  %4405 = fadd fast float %4392, %4369
  %4406 = fsub fast float %4405, %4398
  %4407 = fadd fast float %4406, %4397
  br label %4408

; <label>:4408                                    ; preds = %4377, %4366
  %4409 = phi float [ %4401, %4377 ], [ %4367, %4366 ]
  %4410 = phi float [ %4404, %4377 ], [ %4368, %4366 ]
  %4411 = phi float [ %4407, %4377 ], [ %4369, %4366 ]
  br i1 %4234, label %4412, label %4443

; <label>:4412                                    ; preds = %4408
  %4413 = fmul fast float %1800, 0x400187C840000000
  %4414 = fadd fast float %4413, 0xC00EFC2120000000
  %4415 = fmul fast float %4414, %1800
  %4416 = fadd fast float %4415, 0x3FE5D16340000000
  %4417 = fmul fast float %4416, %1800
  %4418 = fadd fast float %4417, 1.000000e+00
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = fsub fast float %4370, %100
  %4421 = fsub fast float %4371, %101
  %4422 = fsub fast float %4372, %102
  %4423 = fsub fast float %4370, %4091
  %4424 = fsub fast float %4371, %4092
  %4425 = fsub fast float %4372, %4093
  %4426 = call float @dx.op.dot3.f32(i32 55, float %4420, float %4421, float %4422, float %4420, float %4421, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %4427 = call float @dx.op.dot3.f32(i32 55, float %4423, float %4424, float %4425, float %4423, float %4424, float %4425)  ; Dot3(ax,ay,az,bx,by,bz)
  %4428 = fadd fast float %4427, 0x3EE4F8B580000000
  %4429 = fdiv fast float %4426, %4428
  %4430 = bitcast float %4429 to i32
  %4431 = ashr i32 %4430, 1
  %4432 = add nsw i32 %4431, 532487669
  %4433 = bitcast i32 %4432 to float
  %4434 = fmul fast float %4433, %4419
  %4435 = call float @dx.op.unary.f32(i32 7, float %4434)  ; Saturate(value)
  %4436 = fmul fast float %4435, 0x4009981AE0000000
  %4437 = fsub fast float 0x40111BBD80000000, %4436
  %4438 = fmul fast float %4437, %4435
  %4439 = fadd fast float %4438, 0xC0009F6020000000
  %4440 = fmul fast float %4439, %4435
  %4441 = fadd fast float %4440, 1.000000e+00
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  br label %4446

; <label>:4443                                    ; preds = %4408
  %4444 = icmp ne i32 %4135, -1
  %4445 = zext i1 %4444 to i32
  br label %4446

; <label>:4446                                    ; preds = %4443, %4412
  %4447 = phi float [ %1800, %4443 ], [ %4442, %4412 ]
  %4448 = phi i32 [ %4445, %4443 ], [ 0, %4412 ]
  %4449 = fmul float %4447, 5.000000e+00
  %4450 = fsub float 5.000000e+00, %4449
  %4451 = icmp ne i32 %4448, 0
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4454 = fadd fast float %4453, %4450
  %4455 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4454)  ; FMax(a,b)
  %4456 = call float @dx.op.unary.f32(i32 6, float %4409)  ; FAbs(value)
  %4457 = call float @dx.op.unary.f32(i32 6, float %4410)  ; FAbs(value)
  %4458 = fadd fast float %4457, %4456
  %4459 = call float @dx.op.unary.f32(i32 6, float %4411)  ; FAbs(value)
  %4460 = fadd fast float %4458, %4459
  %4461 = fcmp fast oeq float %4460, 0.000000e+00
  %4462 = fdiv fast float 1.000000e+00, %4460
  %4463 = select i1 %4461, float 1.000000e+00, float %4462
  %4464 = fmul fast float %4463, %4409
  %4465 = fmul fast float %4463, %4410
  %4466 = call float @dx.op.unary.f32(i32 6, float %4465)  ; FAbs(value)
  %4467 = call float @dx.op.unary.f32(i32 6, float %4464)  ; FAbs(value)
  %4468 = fsub fast float 1.000000e+00, %4466
  %4469 = fsub fast float 1.000000e+00, %4467
  %4470 = fcmp fast oge float %4464, 0.000000e+00
  %4471 = fcmp fast oge float %4465, 0.000000e+00
  %4472 = select i1 %4470, float 1.000000e+00, float -1.000000e+00
  %4473 = select i1 %4471, float 1.000000e+00, float -1.000000e+00
  %4474 = fcmp fast ole float %4411, 0.000000e+00
  %4475 = fmul fast float %4472, %4468
  %4476 = fmul fast float %4473, %4469
  %4477 = select i1 %4474, float %4475, float %4464
  %4478 = select i1 %4474, float %4476, float %4465
  %4479 = fmul fast float %4477, 5.000000e-01
  %4480 = fmul fast float %4478, 5.000000e-01
  %4481 = fadd fast float %4479, 5.000000e-01
  %4482 = fadd fast float %4480, 5.000000e-01
  %4483 = uitofp i32 %4134 to float
  %4484 = call float @dx.op.binary.f32(i32 36, float %4455, float 3.000000e+00)  ; FMin(a,b)
  %4485 = fadd fast float %4484, 2.000000e+00
  %4486 = call float @dx.op.unary.f32(i32 21, float %4485)  ; Exp(value)
  %4487 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4488 = fmul fast float %4487, %4486
  %4489 = fmul fast float %4488, 2.000000e+00
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = fmul fast float %4481, %4490
  %4492 = fmul fast float %4482, %4490
  %4493 = fadd fast float %4491, %4488
  %4494 = fadd fast float %4492, %4488
  %4495 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4493, float %4494, float %4483, float undef, i32 0, i32 0, i32 undef, float %4455)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.ResRet.f32 %4495, 1
  %4498 = extractvalue %dx.types.ResRet.f32 %4495, 2
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 3
  %4501 = fmul fast float %4500, %4104
  %4502 = call float @dx.op.binary.f32(i32 36, float %3976, float %4501)  ; FMin(a,b)
  %4503 = select i1 %4451, float %4502, float %4501
  %4504 = fmul fast float %4496, %4180
  %4505 = fmul fast float %4504, %4503
  %4506 = fmul fast float %4497, %4180
  %4507 = fmul fast float %4506, %4503
  %4508 = fmul fast float %4498, %4180
  %4509 = fmul fast float %4508, %4503
  %4510 = fadd fast float %4505, %4071
  %4511 = fadd fast float %4507, %4072
  %4512 = fadd fast float %4509, %4073
  %4513 = fsub fast float %4082, %4180
  %4514 = and i32 %4195, 255
  %4515 = uitofp i32 %4514 to float
  %4516 = fptoui float %4515 to i32
  %4517 = icmp eq i32 %4190, 1
  %4518 = zext i1 %4517 to i32
  %4519 = add i32 %4518, %4516
  %4520 = uitofp i32 %4519 to float
  %4521 = fptoui float %4520 to i32
  %4522 = shl i32 %4521, 8
  %4523 = and i32 %4522, 65280
  %4524 = or i32 %4523, %4198
  %4525 = fmul fast float %4373, %4180
  %4526 = fmul fast float %4374, %4180
  %4527 = fmul fast float %4375, %4180
  %4528 = fadd fast float %4525, %4078
  %4529 = fadd fast float %4526, %4079
  %4530 = fadd fast float %4527, %4080
  %4531 = fmul fast float %4483, 0x3FE3C6EF40000000
  %4532 = call float @dx.op.unary.f32(i32 22, float %4531)  ; Frc(value)
  %4533 = fadd fast float %4532, 0x3FE5555560000000
  %4534 = fadd fast float %4532, 0x3FD5555560000000
  %4535 = fsub fast float -0.000000e+00, %4532
  %4536 = fsub fast float -0.000000e+00, %4533
  %4537 = fsub fast float -0.000000e+00, %4534
  %4538 = fcmp fast oge float %4532, %4535
  %4539 = fcmp fast oge float %4533, %4536
  %4540 = fcmp fast oge float %4534, %4537
  %4541 = call float @dx.op.unary.f32(i32 6, float %4532)  ; FAbs(value)
  %4542 = call float @dx.op.unary.f32(i32 6, float %4533)  ; FAbs(value)
  %4543 = call float @dx.op.unary.f32(i32 6, float %4534)  ; FAbs(value)
  %4544 = call float @dx.op.unary.f32(i32 22, float %4541)  ; Frc(value)
  %4545 = call float @dx.op.unary.f32(i32 22, float %4542)  ; Frc(value)
  %4546 = call float @dx.op.unary.f32(i32 22, float %4543)  ; Frc(value)
  %4547 = fsub fast float -0.000000e+00, %4544
  %4548 = fsub fast float -0.000000e+00, %4545
  %4549 = fsub fast float -0.000000e+00, %4546
  %4550 = select i1 %4538, float %4544, float %4547
  %4551 = select i1 %4539, float %4545, float %4548
  %4552 = select i1 %4540, float %4546, float %4549
  %4553 = fmul fast float %4550, 6.000000e+00
  %4554 = fmul fast float %4551, 6.000000e+00
  %4555 = fmul fast float %4552, 6.000000e+00
  %4556 = fadd fast float %4553, -3.000000e+00
  %4557 = fadd fast float %4554, -3.000000e+00
  %4558 = fadd fast float %4555, -3.000000e+00
  %4559 = call float @dx.op.unary.f32(i32 6, float %4556)  ; FAbs(value)
  %4560 = call float @dx.op.unary.f32(i32 6, float %4557)  ; FAbs(value)
  %4561 = call float @dx.op.unary.f32(i32 6, float %4558)  ; FAbs(value)
  %4562 = fadd fast float %4559, -1.000000e+00
  %4563 = fadd fast float %4560, -1.000000e+00
  %4564 = fadd fast float %4561, -1.000000e+00
  %4565 = call float @dx.op.unary.f32(i32 7, float %4562)  ; Saturate(value)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4567 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4568 = fmul fast float %4565, %4180
  %4569 = fmul fast float %4566, %4180
  %4570 = fmul fast float %4567, %4180
  %4571 = fadd fast float %4568, %4074
  %4572 = fadd fast float %4569, %4075
  %4573 = fadd fast float %4570, %4076
  %4574 = icmp eq i32 %4134, 0
  %4575 = select i1 %4574, i32 1, i32 %4077
  %4576 = icmp eq i32 %4081, 0
  br i1 %4576, label %4201, label %4577

; <label>:4577                                    ; preds = %4446
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = bitcast float %4579 to i32
  %4581 = lshr i32 %4580, 8
  %4582 = and i32 %4581, 255
  %4583 = uitofp i32 %4582 to float
  %4584 = fptoui float %4583 to i32
  %4585 = icmp eq i32 %4584, 16
  %4586 = bitcast float %4501 to i32
  %4587 = select i1 %4585, i32 %4586, i32 %4070
  %4588 = icmp eq i32 %4584, 17
  %4589 = bitcast float %3976 to i32
  %4590 = select i1 %4588, i32 %4589, i32 %4587
  %4591 = icmp eq i32 %4584, 18
  %4592 = bitcast float %4503 to i32
  %4593 = select i1 %4591, i32 %4592, i32 %4590
  br label %4201

; <label>:4594                                    ; preds = %4201
  br label %4595

; <label>:4595                                    ; preds = %4594, %4028
  %4596 = phi i32 [ %4029, %4028 ], [ %4202, %4594 ]
  %4597 = phi i32 [ %4030, %4028 ], [ %4203, %4594 ]
  %4598 = phi float [ %4031, %4028 ], [ %4204, %4594 ]
  %4599 = phi float [ %4032, %4028 ], [ %4205, %4594 ]
  %4600 = phi float [ %4033, %4028 ], [ %4206, %4594 ]
  %4601 = phi float [ %4034, %4028 ], [ %4207, %4594 ]
  %4602 = phi float [ %4035, %4028 ], [ %4208, %4594 ]
  %4603 = phi float [ %4036, %4028 ], [ %4209, %4594 ]
  %4604 = phi i32 [ %4037, %4028 ], [ %4210, %4594 ]
  %4605 = phi float [ %4038, %4028 ], [ %4211, %4594 ]
  %4606 = phi float [ %4039, %4028 ], [ %4212, %4594 ]
  %4607 = phi float [ %4040, %4028 ], [ %4213, %4594 ]
  %4608 = phi i32 [ %4041, %4028 ], [ %4214, %4594 ]
  %4609 = phi float [ %4042, %4028 ], [ %4215, %4594 ]
  %4610 = add i32 %4043, 1
  %4611 = icmp ugt i32 %4610, %4025
  br i1 %4611, label %4612, label %4028, !llvm.loop !100

; <label>:4612                                    ; preds = %4595
  br label %4613

; <label>:4613                                    ; preds = %4612, %3975
  %4614 = phi i32 [ %3687, %3975 ], [ %4596, %4612 ]
  %4615 = phi i32 [ %3963, %3975 ], [ %4597, %4612 ]
  %4616 = phi float [ 0.000000e+00, %3975 ], [ %4598, %4612 ]
  %4617 = phi float [ 0.000000e+00, %3975 ], [ %4599, %4612 ]
  %4618 = phi float [ 0.000000e+00, %3975 ], [ %4600, %4612 ]
  %4619 = phi float [ 0.000000e+00, %3975 ], [ %4601, %4612 ]
  %4620 = phi float [ 0.000000e+00, %3975 ], [ %4602, %4612 ]
  %4621 = phi float [ 0.000000e+00, %3975 ], [ %4603, %4612 ]
  %4622 = phi i32 [ 0, %3975 ], [ %4604, %4612 ]
  %4623 = phi float [ 0.000000e+00, %3975 ], [ %4605, %4612 ]
  %4624 = phi float [ 0.000000e+00, %3975 ], [ %4606, %4612 ]
  %4625 = phi float [ 0.000000e+00, %3975 ], [ %4607, %4612 ]
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = select i1 %1852, float 0.000000e+00, float %4616
  %4628 = select i1 %1852, float %4626, float %4617
  %4629 = select i1 %1852, float 0.000000e+00, float %4618
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 0
  %4632 = bitcast float %4631 to i32
  %4633 = lshr i32 %4632, 8
  %4634 = and i32 %4633, 255
  %4635 = uitofp i32 %4634 to float
  %4636 = fptoui float %4635 to i32
  %4637 = icmp eq i32 %4636, 13
  br i1 %4637, label %4638, label %4658

; <label>:4638                                    ; preds = %4613
  %4639 = fadd fast float %4619, 1.000000e+00
  %4640 = fadd fast float %4620, 1.000000e+00
  %4641 = fadd fast float %4621, 1.000000e+00
  %4642 = fmul fast float %4639, 5.000000e-01
  %4643 = fmul fast float %4640, 5.000000e-01
  %4644 = fmul fast float %4641, 5.000000e-01
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4647 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4648 = fmul fast float %4645, 1.023000e+03
  %4649 = fmul fast float %4646, 1.023000e+03
  %4650 = fmul fast float %4647, 1.023000e+03
  %4651 = fptoui float %4648 to i32
  %4652 = fptoui float %4649 to i32
  %4653 = fptoui float %4650 to i32
  %4654 = shl i32 %4652, 10
  %4655 = or i32 %4654, %4651
  %4656 = shl i32 %4653, 20
  %4657 = or i32 %4655, %4656
  br label %4658

; <label>:4658                                    ; preds = %4638, %4613
  %4659 = phi i32 [ %4657, %4638 ], [ %4615, %4613 ]
  %4660 = icmp eq i32 %4636, 14
  %4661 = select i1 %4660, i32 %4622, i32 %4659
  %4662 = icmp eq i32 %4636, 22
  br i1 %4662, label %4663, label %4683

; <label>:4663                                    ; preds = %4658
  %4664 = fadd fast float %4623, 1.000000e+00
  %4665 = fadd fast float %4624, 1.000000e+00
  %4666 = fadd fast float %4625, 1.000000e+00
  %4667 = fmul fast float %4664, 5.000000e-01
  %4668 = fmul fast float %4665, 5.000000e-01
  %4669 = fmul fast float %4666, 5.000000e-01
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4673 = fmul fast float %4670, 1.023000e+03
  %4674 = fmul fast float %4671, 1.023000e+03
  %4675 = fmul fast float %4672, 1.023000e+03
  %4676 = fptoui float %4673 to i32
  %4677 = fptoui float %4674 to i32
  %4678 = fptoui float %4675 to i32
  %4679 = shl i32 %4677, 10
  %4680 = or i32 %4679, %4676
  %4681 = shl i32 %4678, 20
  %4682 = or i32 %4680, %4681
  br label %4683

; <label>:4683                                    ; preds = %4663, %4658
  %4684 = phi i32 [ %4682, %4663 ], [ %4661, %4658 ]
  %4685 = fcmp fast olt float %3964, 0.000000e+00
  %4686 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %4687 = fmul fast float %4686, %3965
  %4688 = fmul fast float %4686, %3966
  %4689 = fmul fast float %4686, %3967
  %4690 = select i1 %4685, float %3965, float %4687
  %4691 = select i1 %4685, float %3966, float %4688
  %4692 = select i1 %4685, float %3967, float %4689
  %4693 = fsub fast float 1.000000e+00, %4686
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4694, %4627
  %4696 = fmul fast float %4694, %4628
  %4697 = fmul fast float %4694, %4629
  %4698 = fadd fast float %4690, %4695
  %4699 = fadd fast float %4691, %4696
  %4700 = fadd fast float %4692, %4697
  br label %4701

; <label>:4701                                    ; preds = %4683, %3962
  %4702 = phi i32 [ %3687, %3962 ], [ %4614, %4683 ]
  %4703 = phi i32 [ %3963, %3962 ], [ %4684, %4683 ]
  %4704 = phi float [ %3965, %3962 ], [ %4698, %4683 ]
  %4705 = phi float [ %3966, %3962 ], [ %4699, %4683 ]
  %4706 = phi float [ %3967, %3962 ], [ %4700, %4683 ]
  %4707 = fmul fast float %3689, %2980
  %4708 = fmul fast float %3690, %2980
  %4709 = fmul fast float %3691, %2980
  %4710 = fmul fast float %4704, %2975
  %4711 = fmul fast float %4705, %2976
  %4712 = fmul fast float %4706, %2977
  %4713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4714 = extractvalue %dx.types.CBufRet.f32 %4713, 3
  %4715 = fcmp fast oeq float %4714, 0.000000e+00
  br i1 %4715, label %5060, label %4716

; <label>:4716                                    ; preds = %4701
  %4717 = extractvalue %dx.types.CBufRet.f32 %4713, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4713, 1
  %4719 = extractvalue %dx.types.CBufRet.f32 %4713, 2
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4723 = extractvalue %dx.types.CBufRet.f32 %4720, 2
  %4724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4724, 0
  %4726 = extractvalue %dx.types.CBufRet.f32 %4724, 1
  %4727 = call float @dx.op.dot3.f32(i32 55, float %4721, float %4722, float %4723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4728 = select i1 %1852, float %4725, float %4721
  %4729 = select i1 %1852, float %4727, float %4722
  %4730 = select i1 %1852, float %4726, float %4723
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.CBufRet.f32 %4731, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4731, 2
  %4735 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4739 = extractvalue %dx.types.CBufRet.f32 %4736, 2
  %4740 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4745 = extractvalue %dx.types.CBufRet.f32 %4741, 3
  %4746 = fmul fast float %4732, %100
  %4747 = call float @dx.op.tertiary.f32(i32 46, float %101, float %4733, float %4746)  ; FMad(a,b,c)
  %4748 = call float @dx.op.tertiary.f32(i32 46, float %102, float %4734, float %4747)  ; FMad(a,b,c)
  %4749 = fadd fast float %4748, %4735
  %4750 = fmul fast float %4737, %100
  %4751 = call float @dx.op.tertiary.f32(i32 46, float %101, float %4738, float %4750)  ; FMad(a,b,c)
  %4752 = call float @dx.op.tertiary.f32(i32 46, float %102, float %4739, float %4751)  ; FMad(a,b,c)
  %4753 = fadd fast float %4752, %4740
  %4754 = fmul fast float %4742, %100
  %4755 = call float @dx.op.tertiary.f32(i32 46, float %101, float %4743, float %4754)  ; FMad(a,b,c)
  %4756 = call float @dx.op.tertiary.f32(i32 46, float %102, float %4744, float %4755)  ; FMad(a,b,c)
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4757, 3
  %4761 = fmul fast float %4760, %4749
  %4762 = fmul fast float %4760, %4753
  %4763 = fadd fast float %4761, %4758
  %4764 = fadd fast float %4762, %4759
  %4765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4766 = extractvalue %dx.types.CBufRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.CBufRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.CBufRet.f32 %4765, 3
  %4769 = fmul fast float %4768, %4749
  %4770 = fmul fast float %4768, %4753
  %4771 = fadd fast float %4769, %4766
  %4772 = fadd fast float %4770, %4767
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4775 = fsub fast float -0.000000e+00, %4745
  %4776 = fsub fast float %4775, %4756
  %4777 = fadd fast float %4776, %4774
  %4778 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4779 = fmul fast float %4777, %4778
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = call float @dx.op.unary.f32(i32 7, float %4780)  ; Saturate(value)
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4785 = fsub fast float %4771, %4783
  %4786 = fsub fast float %4772, %4784
  %4787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4790 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4791 = fsub fast float %4763, %4789
  %4792 = fsub fast float %4764, %4790
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4797 = fsub fast float %4749, %4795
  %4798 = fsub fast float %4753, %4796
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = bitcast float %4801 to i32
  %4803 = lshr i32 %4802, 8
  %4804 = and i32 %4803, 255
  %4805 = uitofp i32 %4804 to float
  %4806 = fptoui float %4805 to i32
  %4807 = and i32 %4806, -2
  %4808 = icmp eq i32 %4807, 10
  br i1 %4808, label %4809, label %4879

; <label>:4809                                    ; preds = %4716
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = fcmp fast olt float %4797, 0.000000e+00
  %4813 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4814 = extractvalue %dx.types.CBufRet.f32 %4799, 2
  %4815 = select i1 %4812, float %4813, float %4814
  %4816 = fmul fast float %4815, %4797
  %4817 = call float @dx.op.unary.f32(i32 6, float %4816)  ; FAbs(value)
  %4818 = fcmp fast olt float %4798, 0.000000e+00
  %4819 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4820 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4821 = select i1 %4818, float %4819, float %4820
  %4822 = fmul fast float %4821, %4798
  %4823 = call float @dx.op.unary.f32(i32 6, float %4822)  ; FAbs(value)
  %4824 = call float @dx.op.binary.f32(i32 35, float %4817, float %4823)  ; FMax(a,b)
  %4825 = fsub fast float %4811, %4824
  %4826 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4827 = fmul fast float %4826, %4781
  %4828 = fcmp fast olt float %4791, 0.000000e+00
  %4829 = extractvalue %dx.types.CBufRet.f32 %4793, 0
  %4830 = extractvalue %dx.types.CBufRet.f32 %4793, 2
  %4831 = select i1 %4828, float %4829, float %4830
  %4832 = fmul fast float %4831, %4791
  %4833 = call float @dx.op.unary.f32(i32 6, float %4832)  ; FAbs(value)
  %4834 = fcmp fast olt float %4792, 0.000000e+00
  %4835 = extractvalue %dx.types.CBufRet.f32 %4793, 1
  %4836 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4837 = select i1 %4834, float %4835, float %4836
  %4838 = fmul fast float %4837, %4792
  %4839 = call float @dx.op.unary.f32(i32 6, float %4838)  ; FAbs(value)
  %4840 = call float @dx.op.binary.f32(i32 35, float %4833, float %4839)  ; FMax(a,b)
  %4841 = fsub fast float %4811, %4840
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fmul fast float %4842, %4781
  %4844 = fcmp fast olt float %4785, 0.000000e+00
  %4845 = extractvalue %dx.types.CBufRet.f32 %4787, 0
  %4846 = extractvalue %dx.types.CBufRet.f32 %4787, 2
  %4847 = select i1 %4844, float %4845, float %4846
  %4848 = fmul fast float %4847, %4785
  %4849 = call float @dx.op.unary.f32(i32 6, float %4848)  ; FAbs(value)
  %4850 = fcmp fast olt float %4786, 0.000000e+00
  %4851 = extractvalue %dx.types.CBufRet.f32 %4787, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4787, 3
  %4853 = select i1 %4850, float %4851, float %4852
  %4854 = fmul fast float %4853, %4786
  %4855 = call float @dx.op.unary.f32(i32 6, float %4854)  ; FAbs(value)
  %4856 = call float @dx.op.binary.f32(i32 35, float %4849, float %4855)  ; FMax(a,b)
  %4857 = fsub fast float %4811, %4856
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fmul fast float %4858, %4781
  %4860 = fadd fast float %4827, 1.000000e+00
  %4861 = fadd fast float %4843, 1.000000e+00
  %4862 = fadd fast float %4859, 1.000000e+00
  %4863 = fmul fast float %4860, 5.000000e-01
  %4864 = fmul fast float %4861, 5.000000e-01
  %4865 = fmul fast float %4862, 5.000000e-01
  %4866 = call float @dx.op.unary.f32(i32 7, float %4863)  ; Saturate(value)
  %4867 = call float @dx.op.unary.f32(i32 7, float %4864)  ; Saturate(value)
  %4868 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4869 = fmul fast float %4866, 1.023000e+03
  %4870 = fmul fast float %4867, 1.023000e+03
  %4871 = fmul fast float %4868, 1.023000e+03
  %4872 = fptoui float %4869 to i32
  %4873 = fptoui float %4870 to i32
  %4874 = fptoui float %4871 to i32
  %4875 = shl i32 %4873, 10
  %4876 = or i32 %4875, %4872
  %4877 = shl i32 %4874, 20
  %4878 = or i32 %4876, %4877
  br label %4879

; <label>:4879                                    ; preds = %4809, %4716
  %4880 = phi i32 [ %4878, %4809 ], [ %4703, %4716 ]
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4883 = fcmp fast une float %4882, 0.000000e+00
  br i1 %4883, label %4884, label %4899

; <label>:4884                                    ; preds = %4879
  %4885 = lshr i32 %1771, 4
  %4886 = lshr i32 %1777, 4
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = fptoui float %4888 to i32
  %4890 = add i32 %4889, 15
  %4891 = lshr i32 %4890, 4
  %4892 = mul i32 %4891, %4886
  %4893 = add i32 %4892, %4885
  %4894 = shl i32 %4893, 3
  %4895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4894, i32 undef)  ; BufferLoad(srv,index,wot)
  %4896 = extractvalue %dx.types.ResRet.i32 %4895, 0
  %4897 = and i32 %4896, -268435456
  %4898 = icmp eq i32 %4897, -1342177280
  br i1 %4898, label %4909, label %4899

; <label>:4899                                    ; preds = %4884, %4879
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 2
  %4902 = extractvalue %dx.types.CBufRet.f32 %4900, 3
  %4903 = fmul fast float %4901, %60
  %4904 = fmul fast float %4902, %61
  %4905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %42, float %4903, float %4904, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4906 = extractvalue %dx.types.ResRet.f32 %4905, 0
  %4907 = extractvalue %dx.types.ResRet.f32 %4905, 1
  %4908 = extractvalue %dx.types.ResRet.f32 %4905, 2
  br label %4909

; <label>:4909                                    ; preds = %4899, %4884
  %4910 = phi float [ %4906, %4899 ], [ 0.000000e+00, %4884 ]
  %4911 = phi float [ %4907, %4899 ], [ 0.000000e+00, %4884 ]
  %4912 = phi float [ %4908, %4899 ], [ 0.000000e+00, %4884 ]
  %4913 = call float @dx.op.binary.f32(i32 36, float %4911, float %4912)  ; FMin(a,b)
  %4914 = call float @dx.op.binary.f32(i32 36, float %4910, float %4913)  ; FMin(a,b)
  %4915 = fcmp fast ogt float %4914, 0.000000e+00
  br i1 %4915, label %4916, label %5060, !dx.controlflow.hints !103

; <label>:4916                                    ; preds = %4909
  %4917 = fmul fast float %4910, %4728
  %4918 = fmul fast float %4911, %4729
  %4919 = fmul fast float %4912, %4730
  %4920 = fsub fast float %4717, %1693
  %4921 = fsub fast float %4718, %1694
  %4922 = fsub fast float %4719, %1695
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float %4920, float %4921, float %4922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = call float @dx.op.unary.f32(i32 25, float %4923)  ; Rsqrt(value)
  %4925 = fmul fast float %4924, %4920
  %4926 = fmul fast float %4924, %4921
  %4927 = fmul fast float %4924, %4922
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = call float @dx.op.dot3.f32(i32 55, float %1721, float %1722, float %1723, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4928)  ; Saturate(value)
  %4931 = fmul fast float %4930, %4930
  %4932 = fmul fast float %4931, %1889
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4934, 0
  %4936 = bitcast float %4935 to i32
  %4937 = lshr i32 %4936, 8
  %4938 = and i32 %4937, 255
  %4939 = uitofp i32 %4938 to float
  %4940 = fptoui float %4939 to i32
  %4941 = and i32 %4940, 8
  %4942 = icmp ne i32 %4941, 0
  %4943 = select i1 %4942, float %4933, float 1.000000e+00
  %4944 = fmul fast float %4943, %4930
  %4945 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = fmul fast float %4945, %4945
  %4947 = call float @dx.op.unary.f32(i32 6, float %4928)  ; FAbs(value)
  %4948 = fsub fast float 1.000000e+00, %1880
  %4949 = fmul fast float %1725, %1725
  %4950 = fmul fast float %4949, %4948
  %4951 = fadd fast float %4950, %1880
  %4952 = bitcast float %4951 to i32
  %4953 = ashr i32 %4952, 1
  %4954 = add nsw i32 %4953, 532487669
  %4955 = bitcast i32 %4954 to float
  %4956 = fadd fast float %4955, %1725
  %4957 = fmul fast float %1880, %4946
  %4958 = fsub fast float 1.000000e+00, %4946
  %4959 = fadd fast float %4958, %4957
  %4960 = fmul fast float %4947, %4947
  %4961 = fmul fast float %4960, %4948
  %4962 = fadd fast float %4961, %1880
  %4963 = bitcast float %4962 to i32
  %4964 = ashr i32 %4963, 1
  %4965 = add nsw i32 %4964, 532487669
  %4966 = bitcast i32 %4965 to float
  %4967 = fadd fast float %4966, %4947
  %4968 = fmul fast float %4959, %4959
  %4969 = fmul fast float %4968, %4956
  %4970 = fmul fast float %4969, %4967
  %4971 = fdiv fast float 0x3FF0A00000000000, %4970
  %4972 = fmul fast float %4971, %1880
  %4973 = call float @dx.op.unary.f32(i32 6, float %4929)  ; FAbs(value)
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = bitcast float %4974 to i32
  %4976 = sitofp i32 %4975 to float
  %4977 = fmul fast float %4976, 5.000000e+00
  %4978 = fadd fast float %4977, 0xC1EFBF8940000000
  %4979 = fptosi float %4978 to i32
  %4980 = bitcast i32 %4979 to float
  %4981 = fmul fast float %4980, %1726
  %4982 = fmul fast float %4980, %1727
  %4983 = fmul fast float %4980, %2954
  %4984 = fadd fast float %4981, %1686
  %4985 = fadd fast float %4982, %1687
  %4986 = fadd fast float %4983, %1853
  %4987 = select i1 %2957, float %4973, float 0.000000e+00
  %4988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %41, float %1736, float %4987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4989 = extractvalue %dx.types.ResRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.ResRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.ResRet.f32 %4988, 2
  %4992 = fadd fast float %4989, -5.000000e-01
  %4993 = fadd fast float %4990, -5.000000e-01
  %4994 = fadd fast float %4991, -5.000000e-01
  %4995 = fmul fast float %1755, %4992
  %4996 = fmul fast float %1759, %4993
  %4997 = fmul fast float %2970, %4994
  %4998 = fadd fast float %4984, %4995
  %4999 = fadd fast float %4985, %4996
  %5000 = fadd fast float %4986, %4997
  %5001 = call float @dx.op.unary.f32(i32 7, float %4998)  ; Saturate(value)
  %5002 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5003 = call float @dx.op.unary.f32(i32 7, float %5000)  ; Saturate(value)
  %5004 = fmul fast float %4928, 9.843750e-01
  %5005 = fmul fast float %1800, 9.843750e-01
  %5006 = fadd fast float %5004, 7.812500e-03
  %5007 = fadd fast float %5005, 7.812500e-03
  %5008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %5006, float %5007, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5009 = extractvalue %dx.types.ResRet.f32 %5008, 2
  %5010 = extractvalue %dx.types.ResRet.f32 %5008, 3
  %5011 = select i1 %2957, float %4928, float 0.000000e+00
  %5012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %41, float %1736, float %5011, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5013 = extractvalue %dx.types.ResRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.ResRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.ResRet.f32 %5012, 2
  %5016 = fadd fast float %5013, -5.000000e-01
  %5017 = fadd fast float %5014, -5.000000e-01
  %5018 = fadd fast float %5015, -5.000000e-01
  %5019 = fmul fast float %1726, 4.000000e+00
  %5020 = fmul fast float %5019, %1738
  %5021 = fmul fast float %5020, %5016
  %5022 = fmul fast float %1727, 4.000000e+00
  %5023 = fmul fast float %5022, %1738
  %5024 = fmul fast float %5023, %5017
  %5025 = fmul fast float %2954, 4.000000e+00
  %5026 = fmul fast float %5025, %1738
  %5027 = fmul fast float %5026, %5018
  %5028 = fadd fast float %5021, %5009
  %5029 = fmul fast float %5028, %1686
  %5030 = fadd fast float %5029, %5010
  %5031 = fadd fast float %5024, %5009
  %5032 = fmul fast float %5031, %1687
  %5033 = fadd fast float %5032, %5010
  %5034 = fadd fast float %5027, %5009
  %5035 = fmul fast float %5034, %1853
  %5036 = fadd fast float %5035, %5010
  %5037 = call float @dx.op.unary.f32(i32 7, float %5030)  ; Saturate(value)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5033)  ; Saturate(value)
  %5039 = call float @dx.op.unary.f32(i32 7, float %5036)  ; Saturate(value)
  %5040 = call float @dx.op.binary.f32(i32 35, float %5038, float %5039)  ; FMax(a,b)
  %5041 = call float @dx.op.binary.f32(i32 35, float %5037, float %5040)  ; FMax(a,b)
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = fmul fast float %5042, %4944
  %5044 = fmul fast float %4944, %4972
  %5045 = fmul fast float %5044, %5001
  %5046 = fmul fast float %5044, %5002
  %5047 = fmul fast float %5044, %5003
  %5048 = fmul fast float %5043, %4917
  %5049 = fmul fast float %5043, %4918
  %5050 = fmul fast float %5043, %4919
  %5051 = fadd fast float %5048, %4707
  %5052 = fadd fast float %5049, %4708
  %5053 = fadd fast float %5050, %4709
  %5054 = fmul fast float %5045, %4917
  %5055 = fmul fast float %5046, %4918
  %5056 = fmul fast float %5047, %4919
  %5057 = fadd fast float %5054, %4710
  %5058 = fadd fast float %5055, %4711
  %5059 = fadd fast float %5056, %4712
  br label %5060

; <label>:5060                                    ; preds = %4916, %4909, %4701
  %5061 = phi i32 [ %4880, %4916 ], [ %4703, %4701 ], [ %4880, %4909 ]
  %5062 = phi i32 [ 1, %4916 ], [ 0, %4701 ], [ 0, %4909 ]
  %5063 = phi float [ %5054, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5064 = phi float [ %5055, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5065 = phi float [ %5056, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5066 = phi float [ %5048, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5067 = phi float [ %5049, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5068 = phi float [ %5050, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5069 = phi float [ %5057, %4916 ], [ %4710, %4701 ], [ %4710, %4909 ]
  %5070 = phi float [ %5058, %4916 ], [ %4711, %4701 ], [ %4711, %4909 ]
  %5071 = phi float [ %5059, %4916 ], [ %4712, %4701 ], [ %4712, %4909 ]
  %5072 = phi float [ %5051, %4916 ], [ %4707, %4701 ], [ %4707, %4909 ]
  %5073 = phi float [ %5052, %4916 ], [ %4708, %4701 ], [ %4708, %4909 ]
  %5074 = phi float [ %5053, %4916 ], [ %4709, %4701 ], [ %4709, %4909 ]
  %5075 = phi float [ %4910, %4916 ], [ 0.000000e+00, %4701 ], [ 0.000000e+00, %4909 ]
  %5076 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.i32 %5076, 0
  %5078 = icmp eq i32 %5077, 0
  br i1 %5078, label %5942, label %5079

; <label>:5079                                    ; preds = %5060
  %5080 = lshr i32 %1771, 4
  %5081 = lshr i32 %1777, 4
  %5082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5083 = extractvalue %dx.types.CBufRet.i32 %5082, 0
  %5084 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5081, i32 %5083, i32 %5080)  ; UMad(a,b,c)
  %5085 = add nsw i32 %5077, -1
  %5086 = call i32 @dx.op.binary.i32(i32 37, i32 %5085, i32 0)  ; IMax(a,b)
  %5087 = call float @dx.op.binary.f32(i32 35, float %56, float 0.000000e+00)  ; FMax(a,b)
  %5088 = fptoui float %5087 to i32
  %5089 = lshr i32 %5088, 5
  %5090 = call i32 @dx.op.binary.i32(i32 40, i32 %5089, i32 8191)  ; UMin(a,b)
  %5091 = shl i32 %5090, 2
  %5092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5091, i32 undef)  ; BufferLoad(srv,index,wot)
  %5093 = extractvalue %dx.types.ResRet.i32 %5092, 0
  %5094 = lshr i32 %5093, 16
  %5095 = and i32 %5093, 65535
  %5096 = lshr i32 %5093, 21
  %5097 = lshr i32 %5095, 5
  %5098 = call i32 @dx.op.binary.i32(i32 40, i32 %5097, i32 %5086)  ; UMin(a,b)
  %5099 = icmp ugt i32 %5096, %5098
  br i1 %5099, label %5875, label %5100

; <label>:5100                                    ; preds = %5079
  br label %5101

; <label>:5101                                    ; preds = %5844, %5100
  %5102 = phi i32 [ %5845, %5844 ], [ %5061, %5100 ]
  %5103 = phi i32 [ %5846, %5844 ], [ 0, %5100 ]
  %5104 = phi i32 [ %5847, %5844 ], [ 0, %5100 ]
  %5105 = phi i32 [ %5848, %5844 ], [ 0, %5100 ]
  %5106 = phi i32 [ %5849, %5844 ], [ 0, %5100 ]
  %5107 = phi i32 [ %5850, %5844 ], [ 0, %5100 ]
  %5108 = phi i32 [ %5851, %5844 ], [ 0, %5100 ]
  %5109 = phi i32 [ %5852, %5844 ], [ 0, %5100 ]
  %5110 = phi i32 [ %5853, %5844 ], [ 0, %5100 ]
  %5111 = phi i32 [ %5872, %5844 ], [ %5096, %5100 ]
  %5112 = phi float [ %5854, %5844 ], [ %5063, %5100 ]
  %5113 = phi float [ %5855, %5844 ], [ %5064, %5100 ]
  %5114 = phi float [ %5856, %5844 ], [ %5065, %5100 ]
  %5115 = phi float [ %5857, %5844 ], [ %5066, %5100 ]
  %5116 = phi float [ %5858, %5844 ], [ %5067, %5100 ]
  %5117 = phi float [ %5859, %5844 ], [ %5068, %5100 ]
  %5118 = phi float [ %5860, %5844 ], [ %5069, %5100 ]
  %5119 = phi float [ %5861, %5844 ], [ %5070, %5100 ]
  %5120 = phi float [ %5862, %5844 ], [ %5071, %5100 ]
  %5121 = phi float [ %5863, %5844 ], [ %5072, %5100 ]
  %5122 = phi float [ %5864, %5844 ], [ %5073, %5100 ]
  %5123 = phi float [ %5865, %5844 ], [ %5074, %5100 ]
  %5124 = phi float [ %5866, %5844 ], [ %5069, %5100 ]
  %5125 = phi float [ %5867, %5844 ], [ %5070, %5100 ]
  %5126 = phi float [ %5868, %5844 ], [ %5071, %5100 ]
  %5127 = phi float [ %5869, %5844 ], [ %5072, %5100 ]
  %5128 = phi float [ %5870, %5844 ], [ %5073, %5100 ]
  %5129 = phi float [ %5871, %5844 ], [ %5074, %5100 ]
  %5130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.i32 %5130, 0
  %5132 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5084, i32 %5131, i32 %5111)  ; UMad(a,b,c)
  %5133 = shl i32 %5132, 2
  %5134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %5133, i32 undef)  ; BufferLoad(srv,index,wot)
  %5135 = extractvalue %dx.types.ResRet.i32 %5134, 0
  %5136 = shl i32 %5111, 5
  %5137 = sub nsw i32 %5094, %5136
  %5138 = call i32 @dx.op.binary.i32(i32 37, i32 %5137, i32 0)  ; IMax(a,b)
  %5139 = call i32 @dx.op.binary.i32(i32 38, i32 %5138, i32 31)  ; IMin(a,b)
  %5140 = sub nsw i32 1, %5094
  %5141 = add nsw i32 %5140, %5095
  %5142 = call i32 @dx.op.binary.i32(i32 37, i32 %5141, i32 0)  ; IMax(a,b)
  %5143 = call i32 @dx.op.binary.i32(i32 38, i32 %5142, i32 32)  ; IMin(a,b)
  %5144 = and i32 %5143, 31
  %5145 = shl i32 -1, %5144
  %5146 = xor i32 %5145, -1
  %5147 = and i32 %5139, 31
  %5148 = shl i32 %5146, %5147
  %5149 = icmp eq i32 %5143, 32
  %5150 = select i1 %5149, i32 -1, i32 %5148
  %5151 = and i32 %5150, %5135
  %5152 = icmp eq i32 %5151, 0
  br i1 %5152, label %5844, label %5153

; <label>:5153                                    ; preds = %5101
  br label %5154

; <label>:5154                                    ; preds = %5340, %5153
  %5155 = phi i32 [ %5341, %5340 ], [ %5102, %5153 ]
  %5156 = phi i32 [ %5330, %5340 ], [ %5103, %5153 ]
  %5157 = phi i32 [ %5332, %5340 ], [ %5104, %5153 ]
  %5158 = phi i32 [ %5334, %5340 ], [ %5105, %5153 ]
  %5159 = phi i32 [ %5336, %5340 ], [ %5106, %5153 ]
  %5160 = phi i32 [ %5342, %5340 ], [ %5107, %5153 ]
  %5161 = phi i32 [ %5343, %5340 ], [ %5108, %5153 ]
  %5162 = phi i32 [ %5344, %5340 ], [ %5109, %5153 ]
  %5163 = phi i32 [ %5345, %5340 ], [ %5110, %5153 ]
  %5164 = phi i32 [ %5187, %5340 ], [ %5151, %5153 ]
  %5165 = phi float [ %5346, %5340 ], [ %5112, %5153 ]
  %5166 = phi float [ %5347, %5340 ], [ %5113, %5153 ]
  %5167 = phi float [ %5348, %5340 ], [ %5114, %5153 ]
  %5168 = phi float [ %5349, %5340 ], [ %5115, %5153 ]
  %5169 = phi float [ %5350, %5340 ], [ %5116, %5153 ]
  %5170 = phi float [ %5351, %5340 ], [ %5117, %5153 ]
  %5171 = phi float [ %5352, %5340 ], [ %5118, %5153 ]
  %5172 = phi float [ %5353, %5340 ], [ %5119, %5153 ]
  %5173 = phi float [ %5354, %5340 ], [ %5120, %5153 ]
  %5174 = phi float [ %5355, %5340 ], [ %5121, %5153 ]
  %5175 = phi float [ %5356, %5340 ], [ %5122, %5153 ]
  %5176 = phi float [ %5357, %5340 ], [ %5123, %5153 ]
  %5177 = phi float [ %5358, %5340 ], [ %5124, %5153 ]
  %5178 = phi float [ %5359, %5340 ], [ %5125, %5153 ]
  %5179 = phi float [ %5360, %5340 ], [ %5126, %5153 ]
  %5180 = phi float [ %5361, %5340 ], [ %5127, %5153 ]
  %5181 = phi float [ %5362, %5340 ], [ %5128, %5153 ]
  %5182 = phi float [ %5363, %5340 ], [ %5129, %5153 ]
  %5183 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5164)  ; FirstbitLo(value)
  %5184 = add i32 %5183, %5136
  %5185 = and i32 %5183, 31
  %5186 = shl i32 1, %5185
  %5187 = xor i32 %5186, %5164
  %5188 = mul i32 %5184, 112
  %5189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5188, i32 undef)  ; BufferLoad(srv,index,wot)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.ResRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.ResRet.f32 %5189, 2
  %5193 = add i32 %5188, 16
  %5194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5193, i32 undef)  ; BufferLoad(srv,index,wot)
  %5195 = extractvalue %dx.types.ResRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.ResRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.ResRet.f32 %5194, 2
  %5198 = add i32 %5188, 28
  %5199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5198, i32 undef)  ; BufferLoad(srv,index,wot)
  %5200 = extractvalue %dx.types.ResRet.i32 %5199, 0
  %5201 = add i32 %5188, 32
  %5202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5201, i32 undef)  ; BufferLoad(srv,index,wot)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5206 = add i32 %5188, 44
  %5207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5206, i32 undef)  ; BufferLoad(srv,index,wot)
  %5208 = extractvalue %dx.types.ResRet.f32 %5207, 0
  %5209 = add i32 %5188, 48
  %5210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5209, i32 undef)  ; BufferLoad(srv,index,wot)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  %5214 = extractvalue %dx.types.ResRet.f32 %5210, 3
  %5215 = add i32 %5188, 64
  %5216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5215, i32 undef)  ; BufferLoad(srv,index,wot)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.f32 %5216, 1
  %5219 = extractvalue %dx.types.ResRet.f32 %5216, 2
  %5220 = extractvalue %dx.types.ResRet.f32 %5216, 3
  %5221 = add i32 %5188, 80
  %5222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5225 = add i32 %5188, 92
  %5226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %5225, i32 undef)  ; BufferLoad(srv,index,wot)
  %5227 = extractvalue %dx.types.ResRet.i32 %5226, 0
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5191, float %5192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = select i1 %1852, float %5223, float %5190
  %5230 = select i1 %1852, float %5228, float %5191
  %5231 = select i1 %1852, float %5224, float %5192
  %5232 = and i32 %5227, 65535
  %5233 = uitofp i32 %5232 to float
  %5234 = lshr i32 %5227, 16
  %5235 = uitofp i32 %5234 to float
  %5236 = and i32 %5200, 65535
  %5237 = lshr i32 %5200, 24
  %5238 = and i32 %5237, 3
  %5239 = and i32 %5200, 536870912
  %5240 = icmp ne i32 %5239, 0
  %5241 = icmp eq i32 %5238, 2
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fsub fast float %100, %5211
  %5244 = fsub fast float %101, %5212
  %5245 = fsub fast float %102, %5213
  %5246 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5244, float %5245, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5247 = fdiv fast float %5246, %5242
  %5248 = call float @dx.op.binary.f32(i32 35, float %5247, float -1.000000e+00)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 36, float %5248, float 1.000000e+00)  ; FMin(a,b)
  %5250 = fmul fast float %5249, %5203
  %5251 = fmul fast float %5249, %5204
  %5252 = fmul fast float %5249, %5205
  %5253 = fadd fast float %5250, %5211
  %5254 = fadd fast float %5251, %5212
  %5255 = fadd fast float %5252, %5213
  %5256 = fsub fast float %5253, %100
  %5257 = fsub fast float %5254, %101
  %5258 = fsub fast float %5255, %102
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5258, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = call float @dx.op.unary.f32(i32 24, float %5259)  ; Sqrt(value)
  %5261 = fdiv fast float 1.000000e+00, %5260
  %5262 = fmul fast float %5256, %5261
  %5263 = fmul fast float %5257, %5261
  %5264 = fmul fast float %5258, %5261
  br i1 %5241, label %5265, label %5289

; <label>:5265                                    ; preds = %5154
  %5266 = fmul fast float %5219, %5195
  %5267 = fmul fast float %5219, %5196
  %5268 = fmul fast float %5219, %5197
  %5269 = fsub fast float %5266, %100
  %5270 = fadd fast float %5269, %5253
  %5271 = fsub fast float %5267, %101
  %5272 = fadd fast float %5271, %5254
  %5273 = fsub fast float %5268, %102
  %5274 = fadd fast float %5273, %5255
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5272, float %5274, float %5270, float %5272, float %5274)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = call float @dx.op.unary.f32(i32 25, float %5275)  ; Rsqrt(value)
  %5277 = fmul fast float %5276, %5270
  %5278 = fmul fast float %5276, %5272
  %5279 = fmul fast float %5276, %5274
  %5280 = fsub fast float %100, %5253
  %5281 = fsub fast float %101, %5254
  %5282 = fsub fast float %102, %5255
  %5283 = fsub fast float -0.000000e+00, %5280
  %5284 = fsub fast float -0.000000e+00, %5281
  %5285 = fsub fast float -0.000000e+00, %5282
  %5286 = call float @dx.op.dot3.f32(i32 55, float %5283, float %5284, float %5285, float %5195, float %5196, float %5197)  ; Dot3(ax,ay,az,bx,by,bz)
  %5287 = fcmp fast ogt float %5286, 0.000000e+00
  %5288 = uitofp i1 %5287 to float
  br label %5289

; <label>:5289                                    ; preds = %5265, %5154
  %5290 = phi float [ %5288, %5265 ], [ 1.000000e+00, %5154 ]
  %5291 = phi float [ %5277, %5265 ], [ %5262, %5154 ]
  %5292 = phi float [ %5278, %5265 ], [ %5263, %5154 ]
  %5293 = phi float [ %5279, %5265 ], [ %5264, %5154 ]
  %5294 = call float @dx.op.dot3.f32(i32 55, float %5195, float %5196, float %5197, float %5291, float %5292, float %5293)  ; Dot3(ax,ay,az,bx,by,bz)
  %5295 = fmul fast float %5294, %5294
  %5296 = call float @dx.op.unary.f32(i32 7, float %5295)  ; Saturate(value)
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fmul fast float %5297, 5.000000e-01
  %5299 = fcmp fast ogt float %5294, 0.000000e+00
  %5300 = fsub fast float 1.000000e+00, %5298
  %5301 = select i1 %5299, float %5298, float %5300
  %5302 = fmul fast float %5301, %5235
  %5303 = fadd fast float %5302, %5233
  %5304 = fmul fast float %5303, 0x3EF0001000000000
  %5305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %41, float %5304, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = fmul fast float %5294, %5217
  %5308 = fadd fast float %5307, %5218
  %5309 = call float @dx.op.unary.f32(i32 7, float %5308)  ; Saturate(value)
  %5310 = select i1 %5241, float 1.000000e+00, float %5309
  %5311 = select i1 %5241, float %5309, float 1.000000e+00
  %5312 = fmul fast float %5260, %5214
  %5313 = fsub fast float 1.000000e+00, %5312
  %5314 = fmul fast float %5313, %5220
  %5315 = call float @dx.op.unary.f32(i32 7, float %5314)  ; Saturate(value)
  %5316 = fmul fast float %5315, %5311
  %5317 = fmul fast float %5316, 2.000000e+00
  %5318 = fsub fast float 3.000000e+00, %5317
  %5319 = fmul fast float %5306, %5290
  %5320 = fmul fast float %5316, %5316
  %5321 = fmul fast float %5320, %5319
  %5322 = fmul fast float %5321, %5318
  %5323 = xor i1 %5240, true
  %5324 = and i1 %5241, %5323
  %5325 = icmp ne i32 %5238, 2
  %5326 = and i1 %5325, %5323
  %5327 = and i1 %5240, %5241
  %5328 = and i1 %5240, %5325
  %5329 = zext i1 %5324 to i32
  %5330 = add i32 %5329, %5156
  %5331 = zext i1 %5326 to i32
  %5332 = add i32 %5331, %5157
  %5333 = zext i1 %5327 to i32
  %5334 = add i32 %5333, %5158
  %5335 = zext i1 %5328 to i32
  %5336 = add i32 %5335, %5159
  %5337 = call float @dx.op.binary.f32(i32 36, float %5322, float %5322)  ; FMin(a,b)
  %5338 = call float @dx.op.binary.f32(i32 36, float %5322, float %5337)  ; FMin(a,b)
  %5339 = fcmp fast ogt float %5338, 0.000000e+00
  br i1 %5339, label %5365, label %5340, !dx.controlflow.hints !104

; <label>:5340                                    ; preds = %5828, %5289
  %5341 = phi i32 [ %5838, %5828 ], [ %5155, %5289 ]
  %5342 = phi i32 [ %5839, %5828 ], [ %5160, %5289 ]
  %5343 = phi i32 [ %5840, %5828 ], [ %5161, %5289 ]
  %5344 = phi i32 [ %5841, %5828 ], [ %5162, %5289 ]
  %5345 = phi i32 [ %5842, %5828 ], [ %5163, %5289 ]
  %5346 = phi float [ %5799, %5828 ], [ %5165, %5289 ]
  %5347 = phi float [ %5800, %5828 ], [ %5166, %5289 ]
  %5348 = phi float [ %5801, %5828 ], [ %5167, %5289 ]
  %5349 = phi float [ %5802, %5828 ], [ %5168, %5289 ]
  %5350 = phi float [ %5803, %5828 ], [ %5169, %5289 ]
  %5351 = phi float [ %5804, %5828 ], [ %5170, %5289 ]
  %5352 = phi float [ %5805, %5828 ], [ %5171, %5289 ]
  %5353 = phi float [ %5806, %5828 ], [ %5172, %5289 ]
  %5354 = phi float [ %5807, %5828 ], [ %5173, %5289 ]
  %5355 = phi float [ %5808, %5828 ], [ %5174, %5289 ]
  %5356 = phi float [ %5809, %5828 ], [ %5175, %5289 ]
  %5357 = phi float [ %5810, %5828 ], [ %5176, %5289 ]
  %5358 = phi float [ %5811, %5828 ], [ %5177, %5289 ]
  %5359 = phi float [ %5812, %5828 ], [ %5178, %5289 ]
  %5360 = phi float [ %5813, %5828 ], [ %5179, %5289 ]
  %5361 = phi float [ %5814, %5828 ], [ %5180, %5289 ]
  %5362 = phi float [ %5815, %5828 ], [ %5181, %5289 ]
  %5363 = phi float [ %5816, %5828 ], [ %5182, %5289 ]
  %5364 = icmp eq i32 %5164, %5186
  br i1 %5364, label %5843, label %5154

; <label>:5365                                    ; preds = %5289
  %5366 = icmp eq i32 %5236, 255
  br i1 %5366, label %5504, label %5367, !dx.controlflow.hints !105

; <label>:5367                                    ; preds = %5365
  %5368 = mul nuw nsw i32 %5236, 176
  %5369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = extractvalue %dx.types.ResRet.f32 %5369, 3
  %5374 = add nuw nsw i32 %5368, 16
  %5375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = add nuw nsw i32 %5368, 32
  %5379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5378, i32 undef)  ; BufferLoad(srv,index,wot)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = add nuw nsw i32 %5368, 48
  %5383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5382, i32 undef)  ; BufferLoad(srv,index,wot)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.ResRet.f32 %5383, 3
  %5388 = add nuw nsw i32 %5368, 64
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.ResRet.f32 %5389, 3
  %5394 = add nuw nsw i32 %5368, 80
  %5395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.ResRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.ResRet.f32 %5395, 2
  %5399 = extractvalue %dx.types.ResRet.f32 %5395, 3
  %5400 = add nuw nsw i32 %5368, 96
  %5401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.ResRet.f32 %5401, 2
  %5405 = extractvalue %dx.types.ResRet.f32 %5401, 3
  %5406 = bitcast float %5377 to i32
  %5407 = fmul fast float %5384, %100
  %5408 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5390, float %5407)  ; FMad(a,b,c)
  %5409 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5396, float %5408)  ; FMad(a,b,c)
  %5410 = fadd fast float %5409, %5402
  %5411 = fmul fast float %5385, %100
  %5412 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5391, float %5411)  ; FMad(a,b,c)
  %5413 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5397, float %5412)  ; FMad(a,b,c)
  %5414 = fadd fast float %5413, %5403
  %5415 = fmul fast float %5386, %100
  %5416 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5392, float %5415)  ; FMad(a,b,c)
  %5417 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5398, float %5416)  ; FMad(a,b,c)
  %5418 = fadd fast float %5417, %5404
  %5419 = fmul fast float %5387, %100
  %5420 = call float @dx.op.tertiary.f32(i32 46, float %101, float %5393, float %5419)  ; FMad(a,b,c)
  %5421 = call float @dx.op.tertiary.f32(i32 46, float %102, float %5399, float %5420)  ; FMad(a,b,c)
  %5422 = fadd fast float %5421, %5405
  %5423 = fdiv fast float %5410, %5422
  %5424 = fdiv fast float %5414, %5422
  %5425 = fdiv fast float %5418, %5422
  %5426 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %5425)  ; FMax(a,b)
  %5427 = fmul fast float %1607, 0x401921FB60000000
  %5428 = call float @dx.op.unary.f32(i32 13, float %5427)  ; Sin(value)
  %5429 = call float @dx.op.unary.f32(i32 12, float %5427)  ; Cos(value)
  %5430 = fmul fast float %5429, %5381
  %5431 = call float @dx.op.tertiary.f32(i32 46, float %5428, float %5381, float 0.000000e+00)  ; FMad(a,b,c)
  %5432 = fmul fast float %5381, %5428
  %5433 = fsub fast float -0.000000e+00, %5432
  %5434 = call float @dx.op.tertiary.f32(i32 46, float %5429, float %5381, float 0.000000e+00)  ; FMad(a,b,c)
  br label %5435

; <label>:5435                                    ; preds = %5435, %5367
  %5436 = phi float [ 0.000000e+00, %5367 ], [ %5468, %5435 ]
  %5437 = phi float [ 0.000000e+00, %5367 ], [ %5470, %5435 ]
  %5438 = phi i32 [ 0, %5367 ], [ %5471, %5435 ]
  %5439 = mul i32 %5438, 2
  %5440 = add i32 0, %5439
  %5441 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5440
  %5442 = load float, float* %5441, align 4
  %5443 = mul i32 %5438, 2
  %5444 = add i32 1, %5443
  %5445 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5444
  %5446 = load float, float* %5445, align 4
  %5447 = fmul fast float %5430, %5442
  %5448 = call float @dx.op.tertiary.f32(i32 46, float %5446, float %5433, float %5447)  ; FMad(a,b,c)
  %5449 = fmul fast float %5442, %5431
  %5450 = call float @dx.op.tertiary.f32(i32 46, float %5446, float %5434, float %5449)  ; FMad(a,b,c)
  %5451 = fadd fast float %5448, %5423
  %5452 = fadd fast float %5450, %5424
  %5453 = fmul fast float %5451, %5376
  %5454 = fmul fast float %5452, %5376
  %5455 = call float @dx.op.binary.f32(i32 35, float %5453, float %5372)  ; FMax(a,b)
  %5456 = call float @dx.op.binary.f32(i32 35, float %5454, float %5372)  ; FMax(a,b)
  %5457 = call float @dx.op.binary.f32(i32 36, float %5455, float %5373)  ; FMin(a,b)
  %5458 = call float @dx.op.binary.f32(i32 36, float %5456, float %5373)  ; FMin(a,b)
  %5459 = fadd fast float %5457, %5370
  %5460 = fadd fast float %5458, %5371
  %5461 = uitofp i32 %5406 to float
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %42, float %5459, float %5460, float %5461, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = fsub fast float %5463, %5426
  %5465 = fsub fast float %5464, %5380
  %5466 = fcmp fast ogt float %5465, 0.000000e+00
  %5467 = select i1 %5466, float 1.000000e+00, float 0.000000e+00
  %5468 = fadd fast float %5467, %5436
  %5469 = select i1 %5466, float %5465, float 0.000000e+00
  %5470 = fadd fast float %5469, %5437
  %5471 = add nuw nsw i32 %5438, 1
  %5472 = icmp eq i32 %5471, 8
  br i1 %5472, label %5473, label %5435

; <label>:5473                                    ; preds = %5435
  %5474 = fdiv fast float 1.000000e+00, %5468
  %5475 = fmul fast float %5474, %5470
  %5476 = fdiv fast float 1.000000e+00, %5426
  %5477 = fmul fast float %5475, %5476
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = call float @dx.op.binary.f32(i32 35, float %5478, float 0.000000e+00)  ; FMax(a,b)
  %5480 = fmul fast float %5468, 1.250000e-01
  %5481 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5482 = fmul fast float %5481, 2.000000e+00
  %5483 = fadd fast float %5482, -1.000000e+00
  %5484 = fcmp fast ogt float %5483, 0.000000e+00
  %5485 = fcmp fast olt float %5483, 0.000000e+00
  %5486 = zext i1 %5484 to i32
  %5487 = zext i1 %5485 to i32
  %5488 = sub nsw i32 %5486, %5487
  %5489 = sitofp i32 %5488 to float
  %5490 = fmul fast float %5489, %5483
  %5491 = fsub fast float 1.000000e+00, %5490
  %5492 = fmul fast float %5491, %5491
  %5493 = fmul fast float %5492, %5491
  %5494 = fsub fast float %5491, %5493
  %5495 = fmul fast float %5494, %5479
  %5496 = fsub fast float 1.000000e+00, %5493
  %5497 = fsub fast float %5496, %5495
  %5498 = fmul fast float %5489, 5.000000e-01
  %5499 = fmul fast float %5498, %5497
  %5500 = fsub fast float -5.000000e-01, %5499
  %5501 = fmul fast float %5500, %5310
  %5502 = fadd fast float %5501, 1.000000e+00
  %5503 = fmul fast float %5502, %5322
  br label %5504

; <label>:5504                                    ; preds = %5473, %5365
  %5505 = phi float [ %5503, %5473 ], [ %5322, %5365 ]
  %5506 = call float @dx.op.binary.f32(i32 36, float %5505, float %5505)  ; FMin(a,b)
  %5507 = call float @dx.op.binary.f32(i32 36, float %5505, float %5506)  ; FMin(a,b)
  %5508 = fcmp fast ogt float %5507, 0.000000e+00
  br i1 %5508, label %5509, label %5798

; <label>:5509                                    ; preds = %5504
  %5510 = fmul fast float %5505, %5229
  %5511 = fmul fast float %5505, %5230
  %5512 = fmul fast float %5505, %5231
  %5513 = fadd fast float %5262, %1665
  %5514 = fadd fast float %5263, %1666
  %5515 = fadd fast float %5264, %1667
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5262, float %5263, float %5264, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fdiv fast float 1.000000e+00, %5517
  %5519 = fmul fast float %5518, %5516
  %5520 = fmul fast float %5519, %5513
  %5521 = fmul fast float %5519, %5514
  %5522 = fmul fast float %5519, %5515
  %5523 = fadd fast float %5243, %5520
  %5524 = fadd fast float %5244, %5521
  %5525 = fadd fast float %5245, %5522
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5523, float %5524, float %5525, float %5203, float %5204, float %5205)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fdiv fast float %5526, %5242
  %5528 = call float @dx.op.binary.f32(i32 35, float %5527, float -1.000000e+00)  ; FMax(a,b)
  %5529 = call float @dx.op.binary.f32(i32 36, float %5528, float 1.000000e+00)  ; FMin(a,b)
  %5530 = fmul fast float %5529, %5203
  %5531 = fmul fast float %5529, %5204
  %5532 = fmul fast float %5529, %5205
  %5533 = fsub fast float %5211, %100
  %5534 = fadd fast float %5533, %5530
  %5535 = fsub fast float %5212, %101
  %5536 = fadd fast float %5535, %5531
  %5537 = fsub fast float %5213, %102
  %5538 = fadd fast float %5537, %5532
  %5539 = call float @dx.op.dot3.f32(i32 55, float %5534, float %5536, float %5538, float %5534, float %5536, float %5538)  ; Dot3(ax,ay,az,bx,by,bz)
  %5540 = call float @dx.op.unary.f32(i32 25, float %5539)  ; Rsqrt(value)
  %5541 = fmul fast float %5534, %5540
  %5542 = fmul fast float %5536, %5540
  %5543 = fmul fast float %5538, %5540
  %5544 = fsub fast float %5541, %1693
  %5545 = fsub fast float %5542, %1694
  %5546 = fsub fast float %5543, %1695
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %5544, float %5545, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = call float @dx.op.unary.f32(i32 25, float %5547)  ; Rsqrt(value)
  %5549 = fmul fast float %5544, %5548
  %5550 = fmul fast float %5545, %5548
  %5551 = fmul fast float %5546, %5548
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5541, float %5542, float %5543, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = call float @dx.op.dot3.f32(i32 55, float %1721, float %1722, float %1723, float %5549, float %5550, float %5551)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = fmul fast float %5540, %5208
  %5555 = fmul fast float %5554, %5554
  %5556 = bitcast float %5555 to i32
  %5557 = ashr i32 %5556, 1
  %5558 = sub nsw i32 1597463007, %5557
  %5559 = bitcast i32 %5558 to float
  %5560 = fmul fast float %5559, %5552
  %5561 = fmul fast float %5560, %5560
  %5562 = fsub fast float 1.000000e+00, %5561
  %5563 = fmul fast float %5552, %5555
  %5564 = call float @dx.op.unary.f32(i32 7, float %5563)  ; Saturate(value)
  %5565 = fmul fast float %5560, 5.000000e-01
  %5566 = fadd fast float %5565, 5.000000e-01
  %5567 = fmul fast float %5566, %5555
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = bitcast float %5568 to i32
  %5570 = ashr i32 %5569, 1
  %5571 = add nsw i32 %5570, 532487669
  %5572 = bitcast i32 %5571 to float
  %5573 = fmul fast float %5572, %5568
  %5574 = fcmp fast ogt float %5562, 0.000000e+00
  %5575 = select i1 %5574, float %5573, float %5564
  %5576 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5577 = fmul fast float %5576, %5576
  %5578 = fmul fast float %5577, %1889
  %5579 = call float @dx.op.unary.f32(i32 7, float %5578)  ; Saturate(value)
  %5580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5581 = extractvalue %dx.types.CBufRet.f32 %5580, 0
  %5582 = bitcast float %5581 to i32
  %5583 = lshr i32 %5582, 8
  %5584 = and i32 %5583, 255
  %5585 = uitofp i32 %5584 to float
  %5586 = fptoui float %5585 to i32
  %5587 = and i32 %5586, 8
  %5588 = icmp ne i32 %5587, 0
  %5589 = select i1 %5588, float %5579, float 1.000000e+00
  %5590 = fmul fast float %5589, %5575
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = call float @dx.op.dot3.f32(i32 55, float %5203, float %5204, float %5205, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5593 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1859, float %1860, float %5256, float %5257, float %5258)  ; Dot3(ax,ay,az,bx,by,bz)
  %5594 = fmul fast float %5591, %5591
  %5595 = fsub fast float %5242, %5594
  %5596 = fmul fast float %5593, %5591
  %5597 = fsub fast float %5596, %5592
  %5598 = fdiv fast float %5597, %5595
  %5599 = call float @dx.op.binary.f32(i32 35, float %5598, float -1.500000e+00)  ; FMax(a,b)
  %5600 = call float @dx.op.binary.f32(i32 36, float %5599, float 1.500000e+00)  ; FMin(a,b)
  %5601 = fmul fast float %5600, %5600
  %5602 = fmul fast float %5601, 0x3FC2F68380000000
  %5603 = fmul fast float %5602, %5600
  %5604 = fsub fast float %5600, %5603
  %5605 = fmul fast float %5604, %5203
  %5606 = fmul fast float %5604, %5204
  %5607 = fmul fast float %5604, %5205
  %5608 = fadd fast float %5605, %5253
  %5609 = fadd fast float %5606, %5254
  %5610 = fadd fast float %5607, %5255
  %5611 = fsub fast float %5608, %100
  %5612 = fsub fast float %5609, %101
  %5613 = fsub fast float %5610, %102
  %5614 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %5615 = fmul fast float %5614, %1858
  %5616 = fmul fast float %5614, %1859
  %5617 = fmul fast float %5614, %1860
  %5618 = fsub fast float %5615, %5611
  %5619 = fsub fast float %5616, %5612
  %5620 = fsub fast float %5617, %5613
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5618, float %5619, float %5620, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = bitcast float %5621 to i32
  %5623 = ashr i32 %5622, 1
  %5624 = sub nsw i32 1597463007, %5623
  %5625 = bitcast i32 %5624 to float
  %5626 = fmul fast float %5625, %5208
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = bitcast float %5627 to i32
  %5629 = ashr i32 %5628, 1
  %5630 = sub nsw i32 1597463007, %5629
  %5631 = bitcast i32 %5630 to float
  %5632 = fmul fast float %5626, %5626
  %5633 = fadd fast float %5632, 1.250000e-01
  %5634 = call float @dx.op.unary.f32(i32 25, float %5633)  ; Rsqrt(value)
  %5635 = fmul fast float %5626, %5634
  %5636 = fmul fast float %5618, %5635
  %5637 = fmul fast float %5619, %5635
  %5638 = fmul fast float %5620, %5635
  %5639 = fadd fast float %5611, %5636
  %5640 = fadd fast float %5612, %5637
  %5641 = fadd fast float %5613, %5638
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %5639, float %5640, float %5641)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = call float @dx.op.unary.f32(i32 25, float %5642)  ; Rsqrt(value)
  %5644 = fmul fast float %5639, %5643
  %5645 = fmul fast float %5640, %5643
  %5646 = fmul fast float %5641, %5643
  %5647 = fsub fast float %5644, %1693
  %5648 = fsub fast float %5645, %1694
  %5649 = fsub fast float %5646, %1695
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5647, float %5648, float %5649, float %5647, float %5648, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = call float @dx.op.unary.f32(i32 25, float %5650)  ; Rsqrt(value)
  %5652 = fmul fast float %5647, %5651
  %5653 = fmul fast float %5648, %5651
  %5654 = fmul fast float %5649, %5651
  %5655 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %5652, float %5653, float %5654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fmul fast float %5655, %5655
  %5657 = call float @dx.op.unary.f32(i32 6, float %5552)  ; FAbs(value)
  %5658 = fsub fast float 1.000000e+00, %1880
  %5659 = fmul fast float %1725, %1725
  %5660 = fmul fast float %5659, %5658
  %5661 = fadd fast float %5660, %1880
  %5662 = bitcast float %5661 to i32
  %5663 = ashr i32 %5662, 1
  %5664 = add nsw i32 %5663, 532487669
  %5665 = bitcast i32 %5664 to float
  %5666 = fadd fast float %5665, %1725
  %5667 = fmul fast float %1880, %5656
  %5668 = fsub fast float 1.000000e+00, %5656
  %5669 = fadd fast float %5668, %5667
  %5670 = fmul fast float %5657, %5657
  %5671 = fmul fast float %5670, %5658
  %5672 = fadd fast float %5671, %1880
  %5673 = bitcast float %5672 to i32
  %5674 = ashr i32 %5673, 1
  %5675 = add nsw i32 %5674, 532487669
  %5676 = bitcast i32 %5675 to float
  %5677 = fadd fast float %5676, %5657
  %5678 = fmul fast float %5669, %5669
  %5679 = fmul fast float %5678, %5666
  %5680 = fmul fast float %5679, %5677
  %5681 = fdiv fast float 1.000000e+00, %5680
  %5682 = bitcast float %1880 to i32
  %5683 = sitofp i32 %5682 to float
  %5684 = fmul fast float %5683, 0x3FE7F73180000000
  %5685 = fadd fast float %5684, 0x41AFE27C40000000
  %5686 = fptosi float %5685 to i32
  %5687 = bitcast i32 %5686 to float
  %5688 = fmul fast float %5208, 0x3FD80E9D60000000
  %5689 = fmul fast float %5688, %5631
  %5690 = fadd fast float %5687, %5689
  %5691 = bitcast float %5690 to i32
  %5692 = sub nsw i32 2129859010, %5691
  %5693 = bitcast i32 %5692 to float
  %5694 = fmul fast float %1880, %5681
  %5695 = fmul fast float %5694, %5687
  %5696 = fmul fast float %5695, %5693
  %5697 = call float @dx.op.unary.f32(i32 6, float %5553)  ; FAbs(value)
  %5698 = fsub fast float 1.000000e+00, %5697
  %5699 = bitcast float %5698 to i32
  %5700 = sitofp i32 %5699 to float
  %5701 = fmul fast float %5700, 5.000000e+00
  %5702 = fadd fast float %5701, 0xC1EFBF8940000000
  %5703 = fptosi float %5702 to i32
  %5704 = bitcast i32 %5703 to float
  %5705 = fmul fast float %5704, %1726
  %5706 = fmul fast float %5704, %1727
  %5707 = fmul fast float %5704, %2954
  %5708 = fadd fast float %5705, %1686
  %5709 = fadd fast float %5706, %1687
  %5710 = fadd fast float %5707, %1853
  %5711 = select i1 %2957, float %5697, float 0.000000e+00
  %5712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %41, float %1736, float %5711, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5713 = extractvalue %dx.types.ResRet.f32 %5712, 0
  %5714 = extractvalue %dx.types.ResRet.f32 %5712, 1
  %5715 = extractvalue %dx.types.ResRet.f32 %5712, 2
  %5716 = fadd fast float %5713, -5.000000e-01
  %5717 = fadd fast float %5714, -5.000000e-01
  %5718 = fadd fast float %5715, -5.000000e-01
  %5719 = fmul fast float %1755, %5716
  %5720 = fmul fast float %1759, %5717
  %5721 = fmul fast float %2970, %5718
  %5722 = fadd fast float %5708, %5719
  %5723 = fadd fast float %5709, %5720
  %5724 = fadd fast float %5710, %5721
  %5725 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5726 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5728 = fmul fast float %5552, 9.843750e-01
  %5729 = fmul fast float %1800, 9.843750e-01
  %5730 = fadd fast float %5728, 7.812500e-03
  %5731 = fadd fast float %5729, 7.812500e-03
  %5732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %41, float %5730, float %5731, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5733 = extractvalue %dx.types.ResRet.f32 %5732, 2
  %5734 = extractvalue %dx.types.ResRet.f32 %5732, 3
  %5735 = select i1 %2957, float %5552, float 0.000000e+00
  %5736 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %41, float %1736, float %5735, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5737 = extractvalue %dx.types.ResRet.f32 %5736, 0
  %5738 = extractvalue %dx.types.ResRet.f32 %5736, 1
  %5739 = extractvalue %dx.types.ResRet.f32 %5736, 2
  %5740 = fadd fast float %5737, -5.000000e-01
  %5741 = fadd fast float %5738, -5.000000e-01
  %5742 = fadd fast float %5739, -5.000000e-01
  %5743 = fmul fast float %1726, 4.000000e+00
  %5744 = fmul fast float %5743, %1738
  %5745 = fmul fast float %5744, %5740
  %5746 = fmul fast float %1727, 4.000000e+00
  %5747 = fmul fast float %5746, %1738
  %5748 = fmul fast float %5747, %5741
  %5749 = fmul fast float %2954, 4.000000e+00
  %5750 = fmul fast float %5749, %1738
  %5751 = fmul fast float %5750, %5742
  %5752 = fadd fast float %5745, %5733
  %5753 = fmul fast float %5752, %1686
  %5754 = fadd fast float %5753, %5734
  %5755 = fadd fast float %5748, %5733
  %5756 = fmul fast float %5755, %1687
  %5757 = fadd fast float %5756, %5734
  %5758 = fadd fast float %5751, %5733
  %5759 = fmul fast float %5758, %1853
  %5760 = fadd fast float %5759, %5734
  %5761 = call float @dx.op.unary.f32(i32 7, float %5754)  ; Saturate(value)
  %5762 = call float @dx.op.unary.f32(i32 7, float %5757)  ; Saturate(value)
  %5763 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5764 = call float @dx.op.binary.f32(i32 35, float %5762, float %5763)  ; FMax(a,b)
  %5765 = call float @dx.op.binary.f32(i32 35, float %5761, float %5764)  ; FMax(a,b)
  %5766 = fsub fast float 1.000000e+00, %5765
  %5767 = fmul fast float %5766, %5590
  %5768 = fmul fast float %5725, %5590
  %5769 = fmul fast float %5768, %5696
  %5770 = fmul fast float %5726, %5590
  %5771 = fmul fast float %5770, %5696
  %5772 = fmul fast float %5727, %5590
  %5773 = fmul fast float %5772, %5696
  %5774 = fmul fast float %5767, %5510
  %5775 = fmul fast float %5767, %5511
  %5776 = fmul fast float %5767, %5512
  %5777 = fadd fast float %5774, %5180
  %5778 = fadd fast float %5775, %5181
  %5779 = fadd fast float %5776, %5182
  %5780 = fmul fast float %5769, %5510
  %5781 = fmul fast float %5771, %5511
  %5782 = fmul fast float %5773, %5512
  %5783 = fadd fast float %5780, %5177
  %5784 = fadd fast float %5781, %5178
  %5785 = fadd fast float %5782, %5179
  %5786 = fadd fast float %5774, %5174
  %5787 = fadd fast float %5775, %5175
  %5788 = fadd fast float %5776, %5176
  %5789 = fadd fast float %5780, %5171
  %5790 = fadd fast float %5781, %5172
  %5791 = fadd fast float %5782, %5173
  %5792 = fadd fast float %5774, %5168
  %5793 = fadd fast float %5775, %5169
  %5794 = fadd fast float %5776, %5170
  %5795 = fadd fast float %5780, %5165
  %5796 = fadd fast float %5781, %5166
  %5797 = fadd fast float %5782, %5167
  br label %5798

; <label>:5798                                    ; preds = %5509, %5504
  %5799 = phi float [ %5165, %5504 ], [ %5795, %5509 ]
  %5800 = phi float [ %5166, %5504 ], [ %5796, %5509 ]
  %5801 = phi float [ %5167, %5504 ], [ %5797, %5509 ]
  %5802 = phi float [ %5168, %5504 ], [ %5792, %5509 ]
  %5803 = phi float [ %5169, %5504 ], [ %5793, %5509 ]
  %5804 = phi float [ %5170, %5504 ], [ %5794, %5509 ]
  %5805 = phi float [ %5171, %5504 ], [ %5789, %5509 ]
  %5806 = phi float [ %5172, %5504 ], [ %5790, %5509 ]
  %5807 = phi float [ %5173, %5504 ], [ %5791, %5509 ]
  %5808 = phi float [ %5174, %5504 ], [ %5786, %5509 ]
  %5809 = phi float [ %5175, %5504 ], [ %5787, %5509 ]
  %5810 = phi float [ %5176, %5504 ], [ %5788, %5509 ]
  %5811 = phi float [ %5177, %5504 ], [ %5783, %5509 ]
  %5812 = phi float [ %5178, %5504 ], [ %5784, %5509 ]
  %5813 = phi float [ %5179, %5504 ], [ %5785, %5509 ]
  %5814 = phi float [ %5180, %5504 ], [ %5777, %5509 ]
  %5815 = phi float [ %5181, %5504 ], [ %5778, %5509 ]
  %5816 = phi float [ %5182, %5504 ], [ %5779, %5509 ]
  %5817 = bitcast i32 %5155 to float
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5820 = bitcast float %5819 to i32
  %5821 = and i32 %5820, 65535
  %5822 = icmp eq i32 %5821, 65535
  br i1 %5822, label %5823, label %5825

; <label>:5823                                    ; preds = %5798
  %5824 = call float @dx.op.binary.f32(i32 35, float %5817, float %5505)  ; FMax(a,b)
  br label %5828

; <label>:5825                                    ; preds = %5798
  %5826 = icmp eq i32 %5821, %5184
  %5827 = select i1 %5826, float %5505, float %5817
  br label %5828

; <label>:5828                                    ; preds = %5825, %5823
  %5829 = phi float [ %5824, %5823 ], [ %5827, %5825 ]
  %5830 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5831 = bitcast float %5830 to i32
  %5832 = lshr i32 %5831, 8
  %5833 = and i32 %5832, 255
  %5834 = uitofp i32 %5833 to float
  %5835 = fptoui float %5834 to i32
  %5836 = icmp eq i32 %5835, 15
  %5837 = bitcast float %5829 to i32
  %5838 = select i1 %5836, i32 %5837, i32 %5155
  %5839 = add i32 %5329, %5160
  %5840 = add i32 %5331, %5161
  %5841 = add i32 %5333, %5162
  %5842 = add i32 %5335, %5163
  br label %5340

; <label>:5843                                    ; preds = %5340
  br label %5844

; <label>:5844                                    ; preds = %5843, %5101
  %5845 = phi i32 [ %5102, %5101 ], [ %5341, %5843 ]
  %5846 = phi i32 [ %5103, %5101 ], [ %5330, %5843 ]
  %5847 = phi i32 [ %5104, %5101 ], [ %5332, %5843 ]
  %5848 = phi i32 [ %5105, %5101 ], [ %5334, %5843 ]
  %5849 = phi i32 [ %5106, %5101 ], [ %5336, %5843 ]
  %5850 = phi i32 [ %5107, %5101 ], [ %5342, %5843 ]
  %5851 = phi i32 [ %5108, %5101 ], [ %5343, %5843 ]
  %5852 = phi i32 [ %5109, %5101 ], [ %5344, %5843 ]
  %5853 = phi i32 [ %5110, %5101 ], [ %5345, %5843 ]
  %5854 = phi float [ %5112, %5101 ], [ %5346, %5843 ]
  %5855 = phi float [ %5113, %5101 ], [ %5347, %5843 ]
  %5856 = phi float [ %5114, %5101 ], [ %5348, %5843 ]
  %5857 = phi float [ %5115, %5101 ], [ %5349, %5843 ]
  %5858 = phi float [ %5116, %5101 ], [ %5350, %5843 ]
  %5859 = phi float [ %5117, %5101 ], [ %5351, %5843 ]
  %5860 = phi float [ %5118, %5101 ], [ %5352, %5843 ]
  %5861 = phi float [ %5119, %5101 ], [ %5353, %5843 ]
  %5862 = phi float [ %5120, %5101 ], [ %5354, %5843 ]
  %5863 = phi float [ %5121, %5101 ], [ %5355, %5843 ]
  %5864 = phi float [ %5122, %5101 ], [ %5356, %5843 ]
  %5865 = phi float [ %5123, %5101 ], [ %5357, %5843 ]
  %5866 = phi float [ %5124, %5101 ], [ %5358, %5843 ]
  %5867 = phi float [ %5125, %5101 ], [ %5359, %5843 ]
  %5868 = phi float [ %5126, %5101 ], [ %5360, %5843 ]
  %5869 = phi float [ %5127, %5101 ], [ %5361, %5843 ]
  %5870 = phi float [ %5128, %5101 ], [ %5362, %5843 ]
  %5871 = phi float [ %5129, %5101 ], [ %5363, %5843 ]
  %5872 = add i32 %5111, 1
  %5873 = icmp ugt i32 %5872, %5098
  br i1 %5873, label %5874, label %5101

; <label>:5874                                    ; preds = %5844
  br label %5875

; <label>:5875                                    ; preds = %5874, %5079
  %5876 = phi i32 [ %5061, %5079 ], [ %5845, %5874 ]
  %5877 = phi i32 [ 0, %5079 ], [ %5846, %5874 ]
  %5878 = phi i32 [ 0, %5079 ], [ %5847, %5874 ]
  %5879 = phi i32 [ 0, %5079 ], [ %5848, %5874 ]
  %5880 = phi i32 [ 0, %5079 ], [ %5849, %5874 ]
  %5881 = phi i32 [ 0, %5079 ], [ %5850, %5874 ]
  %5882 = phi i32 [ 0, %5079 ], [ %5851, %5874 ]
  %5883 = phi i32 [ 0, %5079 ], [ %5852, %5874 ]
  %5884 = phi i32 [ 0, %5079 ], [ %5853, %5874 ]
  %5885 = phi float [ %5063, %5079 ], [ %5854, %5874 ]
  %5886 = phi float [ %5064, %5079 ], [ %5855, %5874 ]
  %5887 = phi float [ %5065, %5079 ], [ %5856, %5874 ]
  %5888 = phi float [ %5066, %5079 ], [ %5857, %5874 ]
  %5889 = phi float [ %5067, %5079 ], [ %5858, %5874 ]
  %5890 = phi float [ %5068, %5079 ], [ %5859, %5874 ]
  %5891 = phi float [ %5069, %5079 ], [ %5860, %5874 ]
  %5892 = phi float [ %5070, %5079 ], [ %5861, %5874 ]
  %5893 = phi float [ %5071, %5079 ], [ %5862, %5874 ]
  %5894 = phi float [ %5072, %5079 ], [ %5863, %5874 ]
  %5895 = phi float [ %5073, %5079 ], [ %5864, %5874 ]
  %5896 = phi float [ %5074, %5079 ], [ %5865, %5874 ]
  %5897 = phi float [ %5069, %5079 ], [ %5866, %5874 ]
  %5898 = phi float [ %5070, %5079 ], [ %5867, %5874 ]
  %5899 = phi float [ %5071, %5079 ], [ %5868, %5874 ]
  %5900 = phi float [ %5072, %5079 ], [ %5869, %5874 ]
  %5901 = phi float [ %5073, %5079 ], [ %5870, %5874 ]
  %5902 = phi float [ %5074, %5079 ], [ %5871, %5874 ]
  %5903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5904 = extractvalue %dx.types.CBufRet.f32 %5903, 1
  %5905 = bitcast float %5904 to i32
  %5906 = lshr i32 %5905, 24
  %5907 = uitofp i32 %5906 to float
  %5908 = fptoui float %5907 to i32
  %5909 = icmp eq i32 %5908, 1
  %5910 = select i1 %5909, i32 %5881, i32 %5877
  %5911 = uitofp i32 %5910 to float
  %5912 = fptoui float %5911 to i32
  %5913 = shl i32 %5912, 8
  %5914 = select i1 %5909, i32 %5882, i32 %5878
  %5915 = uitofp i32 %5914 to float
  %5916 = fptoui float %5915 to i32
  %5917 = shl i32 %5916, 16
  %5918 = and i32 %5913, 65280
  %5919 = or i32 %5918, %5062
  %5920 = select i1 %5909, i32 %5883, i32 %5879
  %5921 = uitofp i32 %5920 to float
  %5922 = fptoui float %5921 to i32
  %5923 = shl i32 %5922, 24
  %5924 = and i32 %5917, 16711680
  %5925 = or i32 %5919, %5924
  %5926 = or i32 %5925, %5923
  %5927 = select i1 %5909, i32 %5884, i32 %5880
  %5928 = uitofp i32 %5927 to float
  %5929 = fptoui float %5928 to i32
  %5930 = and i32 %5929, 255
  %5931 = and i32 %4702, -256
  %5932 = or i32 %5930, %5931
  %5933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5934 = extractvalue %dx.types.CBufRet.f32 %5933, 0
  %5935 = bitcast float %5934 to i32
  %5936 = lshr i32 %5935, 8
  %5937 = and i32 %5936, 255
  %5938 = uitofp i32 %5937 to float
  %5939 = fptoui float %5938 to i32
  %5940 = icmp eq i32 %5939, 12
  %5941 = select i1 %5940, i32 0, i32 %5876
  br label %5942

; <label>:5942                                    ; preds = %5875, %5060
  %5943 = phi i32 [ %4702, %5060 ], [ %5932, %5875 ]
  %5944 = phi i32 [ 0, %5060 ], [ %5926, %5875 ]
  %5945 = phi i32 [ %5061, %5060 ], [ %5941, %5875 ]
  %5946 = phi float [ %5063, %5060 ], [ %5885, %5875 ]
  %5947 = phi float [ %5064, %5060 ], [ %5886, %5875 ]
  %5948 = phi float [ %5065, %5060 ], [ %5887, %5875 ]
  %5949 = phi float [ %5066, %5060 ], [ %5888, %5875 ]
  %5950 = phi float [ %5067, %5060 ], [ %5889, %5875 ]
  %5951 = phi float [ %5068, %5060 ], [ %5890, %5875 ]
  %5952 = phi float [ %5069, %5060 ], [ %5891, %5875 ]
  %5953 = phi float [ %5070, %5060 ], [ %5892, %5875 ]
  %5954 = phi float [ %5071, %5060 ], [ %5893, %5875 ]
  %5955 = phi float [ %5072, %5060 ], [ %5894, %5875 ]
  %5956 = phi float [ %5073, %5060 ], [ %5895, %5875 ]
  %5957 = phi float [ %5074, %5060 ], [ %5896, %5875 ]
  %5958 = phi float [ %5069, %5060 ], [ %5897, %5875 ]
  %5959 = phi float [ %5070, %5060 ], [ %5898, %5875 ]
  %5960 = phi float [ %5071, %5060 ], [ %5899, %5875 ]
  %5961 = phi float [ %5072, %5060 ], [ %5900, %5875 ]
  %5962 = phi float [ %5073, %5060 ], [ %5901, %5875 ]
  %5963 = phi float [ %5074, %5060 ], [ %5902, %5875 ]
  %5964 = and i32 %1806, 65535
  %5965 = uitofp i32 %5964 to float
  %5966 = fmul fast float %5965, 0x3EF0001000000000
  %5967 = lshr i32 %1813, 16
  %5968 = uitofp i32 %5967 to float
  %5969 = fmul fast float %5968, 0x3EF0001000000000
  %5970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5971 = extractvalue %dx.types.CBufRet.f32 %5970, 3
  %5972 = fadd fast float %5971, 3.000000e+00
  %5973 = and i32 %195, 16383
  %5974 = mul nuw nsw i32 %5973, 148
  %5975 = add nuw nsw i32 %5974, 60
  %5976 = add nuw nsw i32 %5974, 116
  %5977 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.i32 %5977, 0
  %5979 = call i32 @dx.op.binary.i32(i32 40, i32 %5973, i32 %5978)  ; UMin(a,b)
  %5980 = mul i32 %5979, 36
  %5981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5980, i32 undef)  ; BufferLoad(srv,index,wot)
  %5982 = extractvalue %dx.types.ResRet.i32 %5981, 0
  %5983 = add i32 %5980, 4
  %5984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5985 = extractvalue %dx.types.CBufRet.f32 %5984, 0
  %5986 = fmul fast float %5966, %5985
  %5987 = fmul fast float %5969, %5985
  %5988 = extractvalue %dx.types.CBufRet.f32 %5984, 1
  %5989 = fadd fast float %5986, %5988
  %5990 = fadd fast float %5987, %5988
  %5991 = icmp eq i32 %5982, 0
  br i1 %5991, label %6048, label %5992

; <label>:5992                                    ; preds = %5942
  br label %5993

; <label>:5993                                    ; preds = %5993, %5992
  %5994 = phi float [ %6032, %5993 ], [ 0.000000e+00, %5992 ]
  %5995 = phi float [ %6042, %5993 ], [ 0.000000e+00, %5992 ]
  %5996 = phi float [ %6043, %5993 ], [ 0.000000e+00, %5992 ]
  %5997 = phi float [ %6044, %5993 ], [ 0.000000e+00, %5992 ]
  %5998 = phi float [ %6036, %5993 ], [ 0.000000e+00, %5992 ]
  %5999 = phi float [ %6037, %5993 ], [ 0.000000e+00, %5992 ]
  %6000 = phi float [ %6038, %5993 ], [ 0.000000e+00, %5992 ]
  %6001 = phi i32 [ %6045, %5993 ], [ 0, %5992 ]
  %6002 = shl i32 %6001, 2
  %6003 = add i32 %5983, %6002
  %6004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %6003, i32 undef)  ; BufferLoad(srv,index,wot)
  %6005 = extractvalue %dx.types.ResRet.i32 %6004, 0
  %6006 = and i32 %6005, 32767
  %6007 = add i32 %5975, %6002
  %6008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %6007, i32 undef)  ; BufferLoad(srv,index,wot)
  %6009 = extractvalue %dx.types.ResRet.f32 %6008, 0
  %6010 = add i32 %5976, %6002
  %6011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.i32 %6011, 0
  %6013 = add i32 %6012, 0
  %6014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %6013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6014, %dx.types.Handle %39, float %5989, float %5990, float %6009, float undef, i32 0, i32 0, i32 undef, float %5972)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = mul nuw nsw i32 %6006, 928
  %6018 = add nuw nsw i32 %6017, 44
  %6019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %6018, i32 undef)  ; BufferLoad(srv,index,wot)
  %6020 = extractvalue %dx.types.ResRet.f32 %6019, 0
  %6021 = add nuw nsw i32 %6017, 48
  %6022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %6021, i32 undef)  ; BufferLoad(srv,index,wot)
  %6023 = extractvalue %dx.types.ResRet.f32 %6022, 0
  %6024 = extractvalue %dx.types.ResRet.f32 %6022, 1
  %6025 = extractvalue %dx.types.ResRet.f32 %6022, 2
  %6026 = add nuw nsw i32 %6017, 60
  %6027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %6026, i32 undef)  ; BufferLoad(srv,index,wot)
  %6028 = extractvalue %dx.types.ResRet.f32 %6027, 0
  %6029 = extractvalue %dx.types.ResRet.f32 %6027, 1
  %6030 = extractvalue %dx.types.ResRet.f32 %6027, 2
  %6031 = fmul fast float %6020, %6016
  %6032 = fadd fast float %6031, %5994
  %6033 = fmul fast float %6023, %6016
  %6034 = fmul fast float %6024, %6016
  %6035 = fmul fast float %6025, %6016
  %6036 = fadd fast float %6033, %5998
  %6037 = fadd fast float %6034, %5999
  %6038 = fadd fast float %6035, %6000
  %6039 = fmul fast float %6028, %6016
  %6040 = fmul fast float %6029, %6016
  %6041 = fmul fast float %6030, %6016
  %6042 = fadd fast float %6039, %5995
  %6043 = fadd fast float %6040, %5996
  %6044 = fadd fast float %6041, %5997
  %6045 = add nuw i32 %6001, 1
  %6046 = icmp eq i32 %6045, %5982
  br i1 %6046, label %6047, label %5993

; <label>:6047                                    ; preds = %5993
  br label %6048

; <label>:6048                                    ; preds = %6047, %5942
  %6049 = phi float [ 0.000000e+00, %5942 ], [ %6032, %6047 ]
  %6050 = phi float [ 0.000000e+00, %5942 ], [ %6042, %6047 ]
  %6051 = phi float [ 0.000000e+00, %5942 ], [ %6043, %6047 ]
  %6052 = phi float [ 0.000000e+00, %5942 ], [ %6044, %6047 ]
  %6053 = phi float [ 0.000000e+00, %5942 ], [ %6036, %6047 ]
  %6054 = phi float [ 0.000000e+00, %5942 ], [ %6037, %6047 ]
  %6055 = phi float [ 0.000000e+00, %5942 ], [ %6038, %6047 ]
  %6056 = fmul fast float %6053, 0x3F847AE140000000
  %6057 = fmul fast float %6054, 0x3F847AE140000000
  %6058 = fmul fast float %6055, 0x3F847AE140000000
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.CBufRet.f32 %6059, 2
  %6063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6064 = extractvalue %dx.types.CBufRet.f32 %6063, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6063, 1
  %6066 = call float @dx.op.dot3.f32(i32 55, float %6060, float %6061, float %6062, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6067 = select i1 %1852, float %6064, float %6060
  %6068 = select i1 %1852, float %6066, float %6061
  %6069 = select i1 %1852, float %6065, float %6062
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = extractvalue %dx.types.CBufRet.f32 %6070, 1
  %6073 = extractvalue %dx.types.CBufRet.f32 %6070, 2
  %6074 = fadd fast float %6053, %6050
  %6075 = fmul fast float %6074, 0x3F847AE140000000
  %6076 = fadd fast float %6054, %6051
  %6077 = fmul fast float %6076, 0x3F847AE140000000
  %6078 = fadd fast float %6055, %6052
  %6079 = fmul fast float %6078, 0x3F847AE140000000
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6071, float %6072, float %6073, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = fcmp fast ogt float %6049, 0.000000e+00
  %6082 = select i1 %6081, float 1.000000e+00, float -1.000000e+00
  %6083 = fmul fast float %6082, 5.000000e-01
  %6084 = fmul fast float %6083, %6080
  %6085 = fmul fast float %6082, %6049
  %6086 = fadd fast float %6084, 4.921875e-01
  %6087 = fadd fast float %6085, -3.125000e-02
  %6088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %41, float %6086, float 0x3FB25F3060000000, float %6087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6089 = extractvalue %dx.types.ResRet.f32 %6088, 0
  %6090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %6091 = extractvalue %dx.types.CBufRet.f32 %6090, 0
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = fmul fast float %6093, %6091
  %6095 = extractvalue %dx.types.CBufRet.f32 %6092, 1
  %6096 = fadd fast float %6094, %6095
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 0
  %6099 = fmul fast float %6098, %5075
  %6100 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6101 = fadd fast float %6099, %6100
  %6102 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6090, 3
  %6104 = extractvalue %dx.types.CBufRet.f32 %6092, 2
  %6105 = fmul fast float %6104, %6103
  %6106 = extractvalue %dx.types.CBufRet.f32 %6092, 3
  %6107 = fadd fast float %6105, %6106
  %6108 = fmul fast float %6089, 0x400921FB60000000
  %6109 = fmul fast float %6108, %6096
  %6110 = fmul fast float %6109, %6102
  %6111 = call float @dx.op.binary.f32(i32 35, float %6075, float 0x3F10000000000000)  ; FMax(a,b)
  %6112 = call float @dx.op.binary.f32(i32 35, float %6077, float 0x3F10000000000000)  ; FMax(a,b)
  %6113 = call float @dx.op.binary.f32(i32 35, float %6079, float 0x3F10000000000000)  ; FMax(a,b)
  %6114 = fdiv fast float 1.000000e+00, %6111
  %6115 = fdiv fast float 1.000000e+00, %6112
  %6116 = fdiv fast float 1.000000e+00, %6113
  %6117 = fmul fast float %6074, 0xBF8D8BE060000000
  %6118 = fmul fast float %6076, 0xBF8D8BE060000000
  %6119 = fmul fast float %6078, 0xBF8D8BE060000000
  %6120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.f32 %6120, 3
  %6122 = call float @dx.op.dot3.f32(i32 55, float %6114, float %6115, float %6116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6123 = fmul fast float %6121, %6122
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 3
  %6126 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6125)  ; Dot3(ax,ay,az,bx,by,bz)
  %6127 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1721, float %1722, float %1723)  ; Dot3(ax,ay,az,bx,by,bz)
  %6128 = fdiv fast float 1.000000e+00, %6127
  %6129 = fmul fast float %6128, %6126
  %6130 = fcmp ogt float %1695, -0.000000e+00
  %6131 = select i1 %6130, float %6125, float %6129
  %6132 = call float @dx.op.binary.f32(i32 36, float %6131, float %6123)  ; FMin(a,b)
  %6133 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6134 = fmul fast float %6133, %6132
  %6135 = fmul fast float %6134, %6117
  %6136 = fmul fast float %6134, %6118
  %6137 = fmul fast float %6134, %6119
  %6138 = call float @dx.op.unary.f32(i32 21, float %6135)  ; Exp(value)
  %6139 = call float @dx.op.unary.f32(i32 21, float %6136)  ; Exp(value)
  %6140 = call float @dx.op.unary.f32(i32 21, float %6137)  ; Exp(value)
  %6141 = fmul fast float %6110, %6067
  %6142 = fmul fast float %6141, %6138
  %6143 = fmul fast float %6110, %6068
  %6144 = fmul fast float %6143, %6139
  %6145 = fmul fast float %6110, %6069
  %6146 = fmul fast float %6145, %6140
  %6147 = extractvalue %dx.types.CBufRet.f32 %6124, 1
  %6148 = fmul fast float %6147, %6132
  %6149 = fmul fast float %6148, %6117
  %6150 = fmul fast float %6148, %6118
  %6151 = fmul fast float %6148, %6119
  %6152 = call float @dx.op.unary.f32(i32 21, float %6149)  ; Exp(value)
  %6153 = call float @dx.op.unary.f32(i32 21, float %6150)  ; Exp(value)
  %6154 = call float @dx.op.unary.f32(i32 21, float %6151)  ; Exp(value)
  %6155 = fmul fast float %6107, %2918
  %6156 = fmul fast float %6155, %6152
  %6157 = fmul fast float %6107, %2919
  %6158 = fmul fast float %6157, %6153
  %6159 = fmul fast float %6107, %2920
  %6160 = fmul fast float %6159, %6154
  %6161 = fadd fast float %6156, %6142
  %6162 = fmul fast float %6056, %6161
  %6163 = fadd fast float %6158, %6144
  %6164 = fmul fast float %6057, %6163
  %6165 = fadd fast float %6160, %6146
  %6166 = fmul fast float %6058, %6165
  %6167 = fmul fast float %6131, %6117
  %6168 = fmul fast float %6131, %6118
  %6169 = fmul fast float %6131, %6119
  %6170 = call float @dx.op.unary.f32(i32 21, float %6167)  ; Exp(value)
  %6171 = call float @dx.op.unary.f32(i32 21, float %6168)  ; Exp(value)
  %6172 = call float @dx.op.unary.f32(i32 21, float %6169)  ; Exp(value)
  %6173 = call float @dx.op.unary.f32(i32 7, float %6170)  ; Saturate(value)
  %6174 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6176 = fmul fast float %6173, %6162
  %6177 = fmul fast float %6174, %6164
  %6178 = fmul fast float %6175, %6166
  %6179 = fsub fast float %6162, %6176
  %6180 = fsub fast float %6164, %6177
  %6181 = fsub fast float %6166, %6178
  %6182 = fmul fast float %6114, %2980
  %6183 = fmul fast float %6182, %6179
  %6184 = fmul fast float %6115, %2980
  %6185 = fmul fast float %6184, %6180
  %6186 = fmul fast float %6116, %2980
  %6187 = fmul fast float %6186, %6181
  %6188 = fadd fast float %6183, %5958
  %6189 = fadd fast float %6185, %5959
  %6190 = fadd fast float %6187, %5960
  %6191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6192 = extractvalue %dx.types.CBufRet.f32 %6191, 0
  %6193 = bitcast float %6192 to i32
  %6194 = and i32 %6193, 255
  %6195 = uitofp i32 %6194 to float
  %6196 = fptoui float %6195 to i32
  %6197 = icmp eq i32 %6196, 13
  br i1 %6197, label %6198, label %6218

; <label>:6198                                    ; preds = %6048
  %6199 = fadd fast float %1621, 2.000000e+00
  %6200 = fadd fast float %1623, 1.000000e+00
  %6201 = fsub fast float 1.000000e+00, %1624
  %6202 = fmul fast float %6199, 5.000000e-01
  %6203 = fmul fast float %6200, 5.000000e-01
  %6204 = fmul fast float %6201, 5.000000e-01
  %6205 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6206 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6207 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6208 = fmul fast float %6205, 1.023000e+03
  %6209 = fmul fast float %6206, 1.023000e+03
  %6210 = fmul fast float %6207, 1.023000e+03
  %6211 = fptoui float %6208 to i32
  %6212 = fptoui float %6209 to i32
  %6213 = fptoui float %6210 to i32
  %6214 = shl i32 %6212, 10
  %6215 = or i32 %6214, %6211
  %6216 = shl i32 %6213, 20
  %6217 = or i32 %6215, %6216
  br label %6218

; <label>:6218                                    ; preds = %6198, %6048
  %6219 = phi i32 [ %6217, %6198 ], [ %5945, %6048 ]
  %6220 = icmp eq i32 %6196, 14
  br i1 %6220, label %6221, label %6241

; <label>:6221                                    ; preds = %6218
  %6222 = fadd fast float %1618, 1.000000e+00
  %6223 = fadd fast float %1627, 1.000000e+00
  %6224 = fsub fast float 1.000000e+00, %65
  %6225 = fmul fast float %6222, 5.000000e-01
  %6226 = fmul fast float %6223, 5.000000e-01
  %6227 = fmul fast float %6224, 5.000000e-01
  %6228 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6229 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6230 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6231 = fmul fast float %6228, 1.023000e+03
  %6232 = fmul fast float %6229, 1.023000e+03
  %6233 = fmul fast float %6230, 1.023000e+03
  %6234 = fptoui float %6231 to i32
  %6235 = fptoui float %6232 to i32
  %6236 = fptoui float %6233 to i32
  %6237 = shl i32 %6235, 10
  %6238 = or i32 %6237, %6234
  %6239 = shl i32 %6236, 20
  %6240 = or i32 %6238, %6239
  br label %6241

; <label>:6241                                    ; preds = %6221, %6218
  %6242 = phi i32 [ %6240, %6221 ], [ %6219, %6218 ]
  %6243 = icmp eq i32 %6196, 15
  br i1 %6243, label %6244, label %6264

; <label>:6244                                    ; preds = %6241
  %6245 = fadd fast float %64, 1.000000e+00
  %6246 = fadd fast float %65, 1.000000e+00
  %6247 = fadd fast float %66, 1.000000e+00
  %6248 = fmul fast float %6245, 5.000000e-01
  %6249 = fmul fast float %6246, 5.000000e-01
  %6250 = fmul fast float %6247, 5.000000e-01
  %6251 = call float @dx.op.unary.f32(i32 7, float %6248)  ; Saturate(value)
  %6252 = call float @dx.op.unary.f32(i32 7, float %6249)  ; Saturate(value)
  %6253 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6254 = fmul fast float %6251, 1.023000e+03
  %6255 = fmul fast float %6252, 1.023000e+03
  %6256 = fmul fast float %6253, 1.023000e+03
  %6257 = fptoui float %6254 to i32
  %6258 = fptoui float %6255 to i32
  %6259 = fptoui float %6256 to i32
  %6260 = shl i32 %6258, 10
  %6261 = or i32 %6260, %6257
  %6262 = shl i32 %6259, 20
  %6263 = or i32 %6261, %6262
  br label %6264

; <label>:6264                                    ; preds = %6244, %6241
  %6265 = phi i32 [ %6263, %6244 ], [ %6242, %6241 ]
  %6266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6267 = fadd fast float %5963, %1828
  %6268 = icmp eq i32 %6196, 39
  %6269 = icmp eq i32 %6196, 40
  %6270 = select i1 %6269, float %1826, float 0.000000e+00
  %6271 = select i1 %6268, float %6267, float %6270
  %6272 = call float @dx.op.unary.f32(i32 24, float %1677)  ; Sqrt(value)
  %6273 = call float @dx.op.unary.f32(i32 24, float %1678)  ; Sqrt(value)
  %6274 = call float @dx.op.unary.f32(i32 24, float %1679)  ; Sqrt(value)
  %6275 = fmul fast float %6272, %5961
  %6276 = fmul fast float %6273, %5962
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 0
  br i1 %1852, label %6279, label %6303

; <label>:6279                                    ; preds = %6264
  %6280 = extractvalue %dx.types.CBufRet.f32 %6266, 3
  %6281 = fmul fast float %1667, 2.000000e+00
  %6282 = fmul fast float %6281, %1701
  %6283 = fsub fast float %1695, %6282
  %6284 = call float @dx.op.unary.f32(i32 7, float %6283)  ; Saturate(value)
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = fmul fast float %6280, %6285
  %6287 = fsub fast float 1.000000e+00, %1826
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6289 = fmul fast float %6286, %6288
  %6290 = fmul fast float %6267, %1826
  %6291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6292 = extractvalue %dx.types.CBufRet.f32 %6291, 0
  %6293 = fsub fast float 1.000000e+00, %1725
  %6294 = fmul fast float %6292, %6293
  %6295 = fadd fast float %6276, %6275
  %6296 = extractvalue %dx.types.CBufRet.f32 %6266, 1
  %6297 = fsub fast float %6290, %6294
  %6298 = fadd fast float %6297, %6289
  %6299 = fsub fast float %6298, %6296
  %6300 = extractvalue %dx.types.CBufRet.f32 %6266, 2
  %6301 = fmul fast float %6299, %6300
  %6302 = call float @dx.op.unary.f32(i32 7, float %6301)  ; Saturate(value)
  br label %6307

; <label>:6303                                    ; preds = %6264
  %6304 = fmul fast float %6274, %5963
  %6305 = fmul fast float %6278, %6276
  %6306 = fmul fast float %6304, %6278
  br label %6307

; <label>:6307                                    ; preds = %6303, %6279
  %6308 = phi float [ %6295, %6279 ], [ %6275, %6303 ]
  %6309 = phi float [ %6302, %6279 ], [ %6305, %6303 ]
  %6310 = phi float [ 1.000000e+00, %6279 ], [ %6306, %6303 ]
  %6311 = fmul float %6278, %6308
  %6312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6313 = extractvalue %dx.types.CBufRet.f32 %6312, 0
  %6314 = fmul fast float %6313, %6189
  %6315 = fmul fast float %6313, %6190
  %6316 = fadd fast float %6189, %6188
  %6317 = select i1 %1852, float %6316, float %6188
  %6318 = fmul float %6317, %6313
  %6319 = select i1 %1852, float 0.000000e+00, float %6314
  %6320 = select i1 %1852, float 0.000000e+00, float %6315
  switch i32 %6196, label %6620 [
    i32 0, label %6635
    i32 1, label %6321
    i32 2, label %6322
    i32 3, label %6334
    i32 4, label %6343
    i32 5, label %6344
    i32 6, label %6345
    i32 12, label %6346
    i32 13, label %6347
    i32 14, label %6359
    i32 15, label %6371
    i32 16, label %6383
    i32 17, label %6384
    i32 63, label %6619
    i32 18, label %6385
    i32 25, label %6407
    i32 27, label %6408
    i32 28, label %6409
    i32 29, label %6410
    i32 31, label %6411
    i32 32, label %6434
    i32 33, label %6495
    i32 37, label %6513
    i32 38, label %6514
    i32 39, label %6523
    i32 40, label %6546
    i32 41, label %6550
    i32 52, label %6551
    i32 53, label %6552
    i32 54, label %6553
    i32 55, label %6554
    i32 56, label %6555
    i32 57, label %6557
    i32 58, label %6559
    i32 59, label %6597
    i32 60, label %6599
    i32 61, label %6601
    i32 64, label %6603
    i32 62, label %6618
  ]

; <label>:6321                                    ; preds = %6307
  br label %6620

; <label>:6322                                    ; preds = %6307
  %6323 = call float @dx.op.dot3.f32(i32 55, float %1665, float %1666, float %1667, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %6324 = call float @dx.op.unary.f32(i32 25, float %6323)  ; Rsqrt(value)
  %6325 = fmul fast float %1665, 5.000000e-01
  %6326 = fmul fast float %6325, %6324
  %6327 = fmul fast float %1666, 5.000000e-01
  %6328 = fmul fast float %6327, %6324
  %6329 = fmul fast float %1667, 5.000000e-01
  %6330 = fmul fast float %6329, %6324
  %6331 = fadd fast float %6326, 5.000000e-01
  %6332 = fadd fast float %6328, 5.000000e-01
  %6333 = fadd fast float %6330, 5.000000e-01
  br label %6620

; <label>:6334                                    ; preds = %6307
  %6335 = fcmp fast ole float %1800, 0x3FA4B5DCC0000000
  %6336 = fmul fast float %1800, 0x3FB3D07220000000
  %6337 = fadd fast float %1800, 0x3FAC28F5C0000000
  %6338 = fmul fast float %6337, 0x3FEE54EDE0000000
  %6339 = call float @dx.op.unary.f32(i32 23, float %6338)  ; Log(value)
  %6340 = fmul fast float %6339, 0x4003333340000000
  %6341 = call float @dx.op.unary.f32(i32 21, float %6340)  ; Exp(value)
  %6342 = select i1 %6335, float %6336, float %6341
  br label %6620

; <label>:6343                                    ; preds = %6307
  br label %6620

; <label>:6344                                    ; preds = %6307
  br label %6620

; <label>:6345                                    ; preds = %6307
  br label %6620

; <label>:6346                                    ; preds = %6307
  br label %6620

; <label>:6347                                    ; preds = %6307
  %6348 = and i32 %6265, 1023
  %6349 = uitofp i32 %6348 to float
  %6350 = lshr i32 %6265, 10
  %6351 = and i32 %6350, 1023
  %6352 = uitofp i32 %6351 to float
  %6353 = lshr i32 %6265, 20
  %6354 = and i32 %6353, 1023
  %6355 = uitofp i32 %6354 to float
  %6356 = fmul fast float %6349, 0x3F50040100000000
  %6357 = fmul fast float %6352, 0x3F50040100000000
  %6358 = fmul fast float %6355, 0x3F50040100000000
  br label %6620

; <label>:6359                                    ; preds = %6307
  %6360 = and i32 %6265, 1023
  %6361 = uitofp i32 %6360 to float
  %6362 = lshr i32 %6265, 10
  %6363 = and i32 %6362, 1023
  %6364 = uitofp i32 %6363 to float
  %6365 = lshr i32 %6265, 20
  %6366 = and i32 %6365, 1023
  %6367 = uitofp i32 %6366 to float
  %6368 = fmul fast float %6361, 0x3F50040100000000
  %6369 = fmul fast float %6364, 0x3F50040100000000
  %6370 = fmul fast float %6367, 0x3F50040100000000
  br label %6620

; <label>:6371                                    ; preds = %6307
  %6372 = and i32 %6265, 1023
  %6373 = uitofp i32 %6372 to float
  %6374 = lshr i32 %6265, 10
  %6375 = and i32 %6374, 1023
  %6376 = uitofp i32 %6375 to float
  %6377 = lshr i32 %6265, 20
  %6378 = and i32 %6377, 1023
  %6379 = uitofp i32 %6378 to float
  %6380 = fmul fast float %6373, 0x3F50040100000000
  %6381 = fmul fast float %6376, 0x3F50040100000000
  %6382 = fmul fast float %6379, 0x3F50040100000000
  br label %6620

; <label>:6383                                    ; preds = %6307
  br label %6620

; <label>:6384                                    ; preds = %6307
  br label %6620

; <label>:6385                                    ; preds = %6307
  %6386 = fcmp fast ogt float %1686, 0x3FB99999A0000000
  %6387 = fcmp fast ogt float %1687, 0x3FB99999A0000000
  %6388 = or i1 %6386, %6387
  %6389 = fcmp fast ogt float %1688, 0x3FB99999A0000000
  %6390 = or i1 %6388, %6389
  %6391 = fcmp fast olt float %1686, 0x3FB99999A0000000
  %6392 = fcmp fast olt float %1687, 0x3FB99999A0000000
  %6393 = or i1 %6391, %6392
  %6394 = fcmp fast olt float %1688, 0x3FB99999A0000000
  %6395 = or i1 %6393, %6394
  %6396 = fadd fast float %1686, %1677
  %6397 = fcmp fast ogt float %6396, 1.000000e+00
  %6398 = fadd fast float %1687, %1678
  %6399 = fcmp fast ogt float %6398, 1.000000e+00
  %6400 = or i1 %6397, %6399
  %6401 = fadd fast float %1688, %1679
  %6402 = fcmp fast ogt float %6401, 1.000000e+00
  %6403 = or i1 %6400, %6402
  %6404 = select i1 %6403, float 1.000000e+00, float 0.000000e+00
  %6405 = and i1 %6390, %6395
  %6406 = select i1 %6405, float 1.000000e+00, float 0.000000e+00
  br label %6620

; <label>:6407                                    ; preds = %6307
  br label %6620

; <label>:6408                                    ; preds = %6307
  br label %6620

; <label>:6409                                    ; preds = %6307
  br label %6620

; <label>:6410                                    ; preds = %6307
  br label %6620

; <label>:6411                                    ; preds = %6307
  %6412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6413 = extractvalue %dx.types.CBufRet.f32 %6412, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6412, 2
  %6415 = extractvalue %dx.types.CBufRet.f32 %6412, 3
  %6416 = fcmp fast olt float %1800, %6413
  br i1 %6416, label %6417, label %6431

; <label>:6417                                    ; preds = %8125, %8123, %6431, %6411
  %6418 = phi i32 [ 0, %6411 ], [ 1, %6431 ], [ 2, %8123 ], [ 3, %8125 ]
  %6419 = mul i32 %6418, 3
  %6420 = add i32 0, %6419
  %6421 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6420
  %6422 = load float, float* %6421, align 4
  %6423 = mul i32 %6418, 3
  %6424 = add i32 1, %6423
  %6425 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6424
  %6426 = load float, float* %6425, align 4
  %6427 = mul i32 %6418, 3
  %6428 = add i32 2, %6427
  %6429 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6428
  %6430 = load float, float* %6429, align 4
  br label %6620

; <label>:6431                                    ; preds = %6411
  %6432 = extractvalue %dx.types.CBufRet.f32 %6412, 1
  %6433 = fcmp fast olt float %1800, %6432
  br i1 %6433, label %6417, label %8123

; <label>:6434                                    ; preds = %6307
  %6435 = fcmp fast ole float %1677, 0x3F69A5C380000000
  %6436 = fcmp fast ole float %1678, 0x3F69A5C380000000
  %6437 = fcmp fast ole float %1679, 0x3F69A5C380000000
  %6438 = fmul fast float %1677, 0x4029D70A40000000
  %6439 = fmul fast float %1678, 0x4029D70A40000000
  %6440 = fmul fast float %1679, 0x4029D70A40000000
  %6441 = call float @dx.op.unary.f32(i32 23, float %1677)  ; Log(value)
  %6442 = call float @dx.op.unary.f32(i32 23, float %1678)  ; Log(value)
  %6443 = call float @dx.op.unary.f32(i32 23, float %1679)  ; Log(value)
  %6444 = fmul fast float %6441, 0x3FDAAAAAA0000000
  %6445 = fmul fast float %6442, 0x3FDAAAAAA0000000
  %6446 = fmul fast float %6443, 0x3FDAAAAAA0000000
  %6447 = call float @dx.op.unary.f32(i32 21, float %6444)  ; Exp(value)
  %6448 = call float @dx.op.unary.f32(i32 21, float %6445)  ; Exp(value)
  %6449 = call float @dx.op.unary.f32(i32 21, float %6446)  ; Exp(value)
  %6450 = fmul fast float %6447, 0x3FF0E147A0000000
  %6451 = fmul fast float %6448, 0x3FF0E147A0000000
  %6452 = fmul fast float %6449, 0x3FF0E147A0000000
  %6453 = fadd fast float %6450, 0xBFAC28F5C0000000
  %6454 = fadd fast float %6451, 0xBFAC28F5C0000000
  %6455 = fadd fast float %6452, 0xBFAC28F5C0000000
  %6456 = select i1 %6435, float %6438, float %6453
  %6457 = select i1 %6436, float %6439, float %6454
  %6458 = select i1 %6437, float %6440, float %6455
  %6459 = call float @dx.op.dot3.f32(i32 55, float %6456, float %6457, float %6458, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6460 = fcmp fast olt float %6459, 0x3FA0101020000000
  br i1 %6460, label %6469, label %6461

; <label>:6461                                    ; preds = %6434
  %6462 = fcmp fast ogt float %6459, 0x3FEEFEFF00000000
  br i1 %6462, label %6469, label %6463

; <label>:6463                                    ; preds = %6461
  %6464 = fcmp fast ogt float %6459, 0x3FEF5F5F60000000
  br i1 %6464, label %6469, label %6465

; <label>:6465                                    ; preds = %6463
  %6466 = fadd fast float %6459, %6459
  %6467 = fcmp fast ogt float %6466, 2.550000e+02
  br i1 %6467, label %6468, label %6469

; <label>:6468                                    ; preds = %6465
  br label %6469

; <label>:6469                                    ; preds = %6468, %6465, %6463, %6461, %6434
  %6470 = phi float [ 1.000000e+00, %6468 ], [ %6311, %6465 ], [ 1.000000e+00, %6434 ], [ 0x3FBD1D1D20000000, %6461 ], [ 0.000000e+00, %6463 ]
  %6471 = phi float [ 0.000000e+00, %6468 ], [ %6309, %6465 ], [ 0x3FE6666660000000, %6434 ], [ 1.000000e+00, %6461 ], [ 0.000000e+00, %6463 ]
  %6472 = phi float [ 1.000000e+00, %6468 ], [ %6310, %6465 ], [ 0.000000e+00, %6434 ], [ 0x3FDD5D5D60000000, %6461 ], [ 1.000000e+00, %6463 ]
  %6473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6474 = extractvalue %dx.types.CBufRet.f32 %6473, 3
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 3
  %6477 = fmul fast float %6476, 8.000000e+00
  %6478 = fmul fast float %61, 5.000000e+02
  %6479 = fmul fast float %6478, %6474
  %6480 = fsub fast float %6479, %6477
  %6481 = call float @dx.op.unary.f32(i32 13, float %6480)  ; Sin(value)
  %6482 = fmul fast float %6481, %6481
  %6483 = fmul fast float %6482, 2.000000e+00
  %6484 = fadd fast float %6483, -1.000000e+00
  %6485 = call float @dx.op.unary.f32(i32 7, float %6484)  ; Saturate(value)
  %6486 = fsub fast float %6470, %6311
  %6487 = fsub fast float %6471, %6309
  %6488 = fsub fast float %6472, %6310
  %6489 = fmul fast float %6485, %6486
  %6490 = fmul fast float %6485, %6487
  %6491 = fmul fast float %6485, %6488
  %6492 = fadd fast float %6489, %6311
  %6493 = fadd fast float %6490, %6309
  %6494 = fadd fast float %6491, %6310
  br label %6620

; <label>:6495                                    ; preds = %6307
  %6496 = fcmp fast olt float %56, 1.280000e+02
  br i1 %6496, label %6497, label %6511

; <label>:6497                                    ; preds = %8141, %8139, %8137, %8135, %8133, %8131, %8129, %8127, %6511, %6495
  %6498 = phi i32 [ 0, %6495 ], [ 1, %6511 ], [ 2, %8127 ], [ 3, %8129 ], [ 4, %8131 ], [ 5, %8133 ], [ 6, %8135 ], [ 7, %8137 ], [ 8, %8139 ], [ 9, %8141 ]
  %6499 = mul i32 %6498, 3
  %6500 = add i32 0, %6499
  %6501 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6500
  %6502 = load float, float* %6501, align 4
  %6503 = mul i32 %6498, 3
  %6504 = add i32 1, %6503
  %6505 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6504
  %6506 = load float, float* %6505, align 4
  %6507 = mul i32 %6498, 3
  %6508 = add i32 2, %6507
  %6509 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6508
  %6510 = load float, float* %6509, align 4
  br label %6620

; <label>:6511                                    ; preds = %6495
  %6512 = fcmp fast olt float %56, 2.560000e+02
  br i1 %6512, label %6497, label %8127

; <label>:6513                                    ; preds = %6307
  br label %6620

; <label>:6514                                    ; preds = %6307
  %6515 = bitcast i32 %6265 to float
  %6516 = fcmp fast ogt float %6515, 0.000000e+00
  %6517 = select i1 %6516, float 0.000000e+00, float 1.000000e+00
  %6518 = fcmp fast olt float %6515, 1.000000e+00
  %6519 = select i1 %6518, float 1.000000e+00, float 0.000000e+00
  %6520 = select i1 %6518, float %6517, float 0.000000e+00
  %6521 = fmul fast float %6519, %1800
  %6522 = fmul fast float %6520, %1800
  br label %6620

; <label>:6523                                    ; preds = %6307
  %6524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %6525 = extractvalue %dx.types.CBufRet.f32 %6524, 0
  %6526 = extractvalue %dx.types.CBufRet.f32 %6524, 2
  %6527 = extractvalue %dx.types.CBufRet.f32 %6524, 3
  %6528 = fcmp fast olt float %6271, %6525
  br i1 %6528, label %6529, label %6543

; <label>:6529                                    ; preds = %8145, %8143, %6543, %6523
  %6530 = phi i32 [ 0, %6523 ], [ 1, %6543 ], [ 2, %8143 ], [ 3, %8145 ]
  %6531 = mul i32 %6530, 3
  %6532 = add i32 0, %6531
  %6533 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6532
  %6534 = load float, float* %6533, align 4
  %6535 = mul i32 %6530, 3
  %6536 = add i32 1, %6535
  %6537 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6536
  %6538 = load float, float* %6537, align 4
  %6539 = mul i32 %6530, 3
  %6540 = add i32 2, %6539
  %6541 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %6540
  %6542 = load float, float* %6541, align 4
  br label %6620

; <label>:6543                                    ; preds = %6523
  %6544 = extractvalue %dx.types.CBufRet.f32 %6524, 1
  %6545 = fcmp fast olt float %6271, %6544
  br i1 %6545, label %6529, label %8143

; <label>:6546                                    ; preds = %6307
  %6547 = fadd fast float %6271, -5.000000e-01
  %6548 = fmul fast float %6547, 2.000000e+00
  %6549 = call float @dx.op.unary.f32(i32 7, float %6548)  ; Saturate(value)
  br label %6620

; <label>:6550                                    ; preds = %6307
  br label %6620

; <label>:6551                                    ; preds = %6307
  br label %6620

; <label>:6552                                    ; preds = %6307
  br label %6620

; <label>:6553                                    ; preds = %6307
  br label %6620

; <label>:6554                                    ; preds = %6307
  br label %6620

; <label>:6555                                    ; preds = %6307
  %6556 = bitcast i32 %6265 to float
  br label %6620

; <label>:6557                                    ; preds = %6307
  %6558 = bitcast i32 %6265 to float
  br label %6620

; <label>:6559                                    ; preds = %6307
  %6560 = and i32 %6265, 65535
  %6561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6560)  ; LegacyF16ToF32(value)
  %6562 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6563 = fptosi float %6562 to i32
  %6564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6565 = extractvalue %dx.types.CBufRet.f32 %6564, 0
  %6566 = extractvalue %dx.types.CBufRet.f32 %6564, 1
  %6567 = extractvalue %dx.types.CBufRet.f32 %6564, 2
  %6568 = fadd fast float %6565, %100
  %6569 = fadd fast float %6566, %101
  %6570 = fadd fast float %6567, %102
  %6571 = fptosi float %6568 to i32
  %6572 = fptosi float %6569 to i32
  %6573 = fptosi float %6570 to i32
  %6574 = xor i32 %6571, %6572
  %6575 = lshr i32 %6574, 1
  %6576 = and i32 %6575, 1
  %6577 = lshr i32 %6573, 1
  %6578 = and i32 %6577, 1
  %6579 = xor i32 %6578, 1
  %6580 = icmp ne i32 %6576, %6579
  switch i32 %6563, label %6620 [
    i32 -1, label %6581
    i32 -2, label %6582
    i32 -3, label %6584
    i32 -4, label %6586
    i32 -5, label %6588
    i32 -6, label %6589
    i32 -7, label %6590
  ]

; <label>:6581                                    ; preds = %6559
  br label %6620

; <label>:6582                                    ; preds = %6559
  %6583 = select i1 %6580, float 1.000000e+00, float 0.000000e+00
  br label %6620

; <label>:6584                                    ; preds = %6559
  %6585 = select i1 %6580, float 1.000000e+00, float 0.000000e+00
  br label %6620

; <label>:6586                                    ; preds = %6559
  %6587 = select i1 %6580, float 1.000000e+00, float 0.000000e+00
  br label %6620

; <label>:6588                                    ; preds = %6559
  br label %6620

; <label>:6589                                    ; preds = %6559
  br label %6620

; <label>:6590                                    ; preds = %6559
  %6591 = lshr i32 %6265, 16
  %6592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6591)  ; LegacyF16ToF32(value)
  %6593 = fmul fast float %6592, 0x3FD5555560000000
  %6594 = fsub fast float 1.000000e+00, %6593
  %6595 = fmul fast float %6593, %6561
  %6596 = fmul fast float %6594, %6561
  br label %6620

; <label>:6597                                    ; preds = %6307
  %6598 = bitcast i32 %6265 to float
  br label %6620

; <label>:6599                                    ; preds = %6307
  %6600 = bitcast i32 %6265 to float
  br label %6620

; <label>:6601                                    ; preds = %6307
  %6602 = bitcast i32 %6265 to float
  br label %6620

; <label>:6603                                    ; preds = %6307
  %6604 = and i32 %6265, 1023
  %6605 = uitofp i32 %6604 to float
  %6606 = lshr i32 %6265, 10
  %6607 = and i32 %6606, 1023
  %6608 = uitofp i32 %6607 to float
  %6609 = lshr i32 %6265, 20
  %6610 = and i32 %6609, 1023
  %6611 = uitofp i32 %6610 to float
  %6612 = fmul fast float %6605, 0x3F60040100000000
  %6613 = fmul fast float %6608, 0x3F60040100000000
  %6614 = fmul fast float %6611, 0x3F60040100000000
  %6615 = fadd fast float %6612, -1.000000e+00
  %6616 = fadd fast float %6613, -1.000000e+00
  %6617 = fadd fast float %6614, -1.000000e+00
  br label %6620

; <label>:6618                                    ; preds = %6307
  br label %6620

; <label>:6619                                    ; preds = %6307
  br label %6620

; <label>:6620                                    ; preds = %8145, %8141, %8125, %6619, %6618, %6603, %6601, %6599, %6597, %6590, %6589, %6588, %6586, %6584, %6582, %6581, %6559, %6557, %6555, %6554, %6553, %6552, %6551, %6550, %6546, %6529, %6514, %6513, %6497, %6469, %6417, %6410, %6409, %6408, %6407, %6385, %6384, %6383, %6371, %6359, %6347, %6346, %6345, %6344, %6343, %6334, %6322, %6321, %6307
  %6621 = phi float [ %6311, %6307 ], [ 0.000000e+00, %6618 ], [ %6615, %6603 ], [ %6602, %6601 ], [ %6600, %6599 ], [ %6598, %6597 ], [ %6311, %6559 ], [ 0.000000e+00, %6590 ], [ %6561, %6589 ], [ %6561, %6588 ], [ 0.000000e+00, %6586 ], [ %6585, %6584 ], [ %6583, %6582 ], [ %6561, %6581 ], [ %6558, %6557 ], [ %6556, %6555 ], [ 0.000000e+00, %6554 ], [ 0.000000e+00, %6553 ], [ 0.000000e+00, %6552 ], [ %100, %6550 ], [ %6549, %6546 ], [ %6521, %6514 ], [ 0.000000e+00, %6513 ], [ %6492, %6469 ], [ 0.000000e+00, %6410 ], [ 0.000000e+00, %6409 ], [ 0.000000e+00, %6408 ], [ 1.000000e+00, %6407 ], [ 0.000000e+00, %6619 ], [ 1.000000e+00, %6384 ], [ 5.000000e-01, %6383 ], [ %6380, %6371 ], [ %6368, %6359 ], [ %6356, %6347 ], [ 0.000000e+00, %6346 ], [ %1801, %6345 ], [ %1686, %6344 ], [ 0.000000e+00, %6343 ], [ %6342, %6334 ], [ %6331, %6322 ], [ %1677, %6321 ], [ %6422, %6417 ], [ %6502, %6497 ], [ %6534, %6529 ], [ 0.000000e+00, %6551 ], [ 1.000000e+00, %8125 ], [ 1.000000e+00, %8141 ], [ 1.000000e+00, %8145 ], [ %6404, %6385 ]
  %6622 = phi float [ %6309, %6307 ], [ 0.000000e+00, %6618 ], [ %6616, %6603 ], [ %6602, %6601 ], [ %6600, %6599 ], [ %6598, %6597 ], [ %6309, %6559 ], [ %6595, %6590 ], [ %6561, %6589 ], [ %6561, %6588 ], [ 0.000000e+00, %6586 ], [ 0.000000e+00, %6584 ], [ 0.000000e+00, %6582 ], [ %6561, %6581 ], [ %6558, %6557 ], [ %6556, %6555 ], [ 0.000000e+00, %6554 ], [ 0.000000e+00, %6553 ], [ 0.000000e+00, %6552 ], [ %101, %6550 ], [ %6549, %6546 ], [ %1800, %6514 ], [ 0.000000e+00, %6513 ], [ %6493, %6469 ], [ 1.000000e+00, %6410 ], [ 1.000000e+00, %6409 ], [ 1.000000e+00, %6408 ], [ 0x3FE6666660000000, %6407 ], [ 0.000000e+00, %6619 ], [ 1.000000e+00, %6384 ], [ 5.000000e-01, %6383 ], [ %6381, %6371 ], [ %6369, %6359 ], [ %6357, %6347 ], [ 0.000000e+00, %6346 ], [ %1801, %6345 ], [ %1687, %6344 ], [ 0.000000e+00, %6343 ], [ %6342, %6334 ], [ %6332, %6322 ], [ %1678, %6321 ], [ %6426, %6417 ], [ %6506, %6497 ], [ %6538, %6529 ], [ 0.000000e+00, %6551 ], [ 0.000000e+00, %8125 ], [ 0.000000e+00, %8141 ], [ 0.000000e+00, %8145 ], [ 0.000000e+00, %6385 ]
  %6623 = phi float [ %6310, %6307 ], [ 0.000000e+00, %6618 ], [ %6617, %6603 ], [ %6602, %6601 ], [ %6600, %6599 ], [ %6598, %6597 ], [ %6310, %6559 ], [ %6596, %6590 ], [ %6561, %6589 ], [ 0.000000e+00, %6588 ], [ %6587, %6586 ], [ 0.000000e+00, %6584 ], [ %6583, %6582 ], [ %6561, %6581 ], [ %6558, %6557 ], [ %6556, %6555 ], [ 0.000000e+00, %6554 ], [ 0.000000e+00, %6553 ], [ 0.000000e+00, %6552 ], [ %102, %6550 ], [ %6549, %6546 ], [ %6522, %6514 ], [ 0.000000e+00, %6513 ], [ %6494, %6469 ], [ 0.000000e+00, %6410 ], [ 0.000000e+00, %6409 ], [ 0.000000e+00, %6408 ], [ 0.000000e+00, %6407 ], [ 0.000000e+00, %6619 ], [ 1.000000e+00, %6384 ], [ 5.000000e-01, %6383 ], [ %6382, %6371 ], [ %6370, %6359 ], [ %6358, %6347 ], [ 0.000000e+00, %6346 ], [ %1801, %6345 ], [ %1688, %6344 ], [ 0.000000e+00, %6343 ], [ %6342, %6334 ], [ %6333, %6322 ], [ %1679, %6321 ], [ %6430, %6417 ], [ %6510, %6497 ], [ %6542, %6529 ], [ 1.000000e+00, %6551 ], [ 0.000000e+00, %8125 ], [ 0.000000e+00, %8141 ], [ 0.000000e+00, %8145 ], [ %6406, %6385 ]
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 3
  %6626 = fsub fast float %6621, %6311
  %6627 = fsub fast float %6622, %6309
  %6628 = fsub fast float %6623, %6310
  %6629 = fmul fast float %6625, %6626
  %6630 = fmul fast float %6625, %6627
  %6631 = fmul fast float %6625, %6628
  %6632 = fadd fast float %6629, %6311
  %6633 = fadd fast float %6630, %6309
  %6634 = fadd fast float %6631, %6310
  br label %6635

; <label>:6635                                    ; preds = %6620, %6307
  %6636 = phi float [ %6632, %6620 ], [ %6311, %6307 ]
  %6637 = phi float [ %6633, %6620 ], [ %6309, %6307 ]
  %6638 = phi float [ %6634, %6620 ], [ %6310, %6307 ]
  %6639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6640 = extractvalue %dx.types.CBufRet.f32 %6639, 0
  %6641 = bitcast float %6640 to i32
  %6642 = lshr i32 %6641, 8
  %6643 = and i32 %6642, 255
  %6644 = uitofp i32 %6643 to float
  %6645 = fptoui float %6644 to i32
  switch i32 %6645, label %6877 [
    i32 1, label %6646
    i32 2, label %6652
    i32 3, label %6658
    i32 4, label %6659
    i32 5, label %6665
    i32 6, label %6671
    i32 7, label %6677
    i32 8, label %6683
    i32 9, label %6689
    i32 10, label %6691
    i32 11, label %6712
    i32 12, label %6733
    i32 13, label %6745
    i32 14, label %6760
    i32 15, label %6765
    i32 16, label %6767
    i32 17, label %6769
    i32 18, label %6771
    i32 19, label %6773
    i32 20, label %6784
    i32 21, label %6795
    i32 22, label %6807
    i32 23, label %6841
    i32 24, label %6856
    i32 25, label %6871
    i32 26, label %6873
    i32 27, label %6875
  ]

; <label>:6646                                    ; preds = %6635
  %6647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6648 = extractvalue %dx.types.CBufRet.f32 %6647, 0
  %6649 = fmul fast float %6648, %5955
  %6650 = fmul fast float %6648, %5956
  %6651 = fmul fast float %6648, %5957
  br label %6877

; <label>:6652                                    ; preds = %6635
  %6653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6654 = extractvalue %dx.types.CBufRet.f32 %6653, 0
  %6655 = fmul fast float %6654, %5952
  %6656 = fmul fast float %6654, %5953
  %6657 = fmul fast float %6654, %5954
  br label %6877

; <label>:6658                                    ; preds = %6635
  br label %6877

; <label>:6659                                    ; preds = %6635
  %6660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6661 = extractvalue %dx.types.CBufRet.f32 %6660, 0
  %6662 = fmul fast float %6661, %5949
  %6663 = fmul fast float %6661, %5950
  %6664 = fmul fast float %6661, %5951
  br label %6877

; <label>:6665                                    ; preds = %6635
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 0
  %6668 = fmul fast float %6667, %5946
  %6669 = fmul fast float %6667, %5947
  %6670 = fmul fast float %6667, %5948
  br label %6877

; <label>:6671                                    ; preds = %6635
  %6672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6673 = extractvalue %dx.types.CBufRet.f32 %6672, 0
  %6674 = fmul fast float %6673, %4707
  %6675 = fmul fast float %6673, %4708
  %6676 = fmul fast float %6673, %4709
  br label %6877

; <label>:6677                                    ; preds = %6635
  %6678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6679 = extractvalue %dx.types.CBufRet.f32 %6678, 0
  %6680 = fmul fast float %6679, %4707
  %6681 = fmul fast float %6679, %4708
  %6682 = fmul fast float %6679, %4709
  br label %6877

; <label>:6683                                    ; preds = %6635
  %6684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.f32 %6684, 0
  %6686 = fmul fast float %4710, %6685
  %6687 = fmul fast float %4711, %6685
  %6688 = fmul fast float %4712, %6685
  br label %6877

; <label>:6689                                    ; preds = %6635
  %6690 = bitcast i32 %6265 to float
  br label %6877

; <label>:6691                                    ; preds = %6635
  %6692 = and i32 %6265, 1023
  %6693 = uitofp i32 %6692 to float
  %6694 = lshr i32 %6265, 10
  %6695 = and i32 %6694, 1023
  %6696 = uitofp i32 %6695 to float
  %6697 = lshr i32 %6265, 20
  %6698 = and i32 %6697, 1023
  %6699 = uitofp i32 %6698 to float
  %6700 = fmul fast float %6693, 0x3F60040100000000
  %6701 = fmul fast float %6696, 0x3F60040100000000
  %6702 = fmul fast float %6699, 0x3F60040100000000
  %6703 = fadd fast float %6700, -1.000000e+00
  %6704 = fadd fast float %6701, -1.000000e+00
  %6705 = fadd fast float %6702, -1.000000e+00
  %6706 = fcmp fast ogt float %6703, 0.000000e+00
  %6707 = select i1 %6706, float 1.000000e+00, float 0.000000e+00
  %6708 = fcmp fast ogt float %6704, 0.000000e+00
  %6709 = select i1 %6708, float 1.000000e+00, float 0.000000e+00
  %6710 = fcmp fast ogt float %6705, 0.000000e+00
  %6711 = select i1 %6710, float 1.000000e+00, float 0.000000e+00
  br label %6877

; <label>:6712                                    ; preds = %6635
  %6713 = and i32 %6265, 1023
  %6714 = uitofp i32 %6713 to float
  %6715 = lshr i32 %6265, 10
  %6716 = and i32 %6715, 1023
  %6717 = uitofp i32 %6716 to float
  %6718 = lshr i32 %6265, 20
  %6719 = and i32 %6718, 1023
  %6720 = uitofp i32 %6719 to float
  %6721 = fmul fast float %6714, 0x3F60040100000000
  %6722 = fmul fast float %6717, 0x3F60040100000000
  %6723 = fmul fast float %6720, 0x3F60040100000000
  %6724 = fadd fast float %6721, -1.000000e+00
  %6725 = fadd fast float %6722, -1.000000e+00
  %6726 = fadd fast float %6723, -1.000000e+00
  %6727 = fmul fast float %6726, %6725
  %6728 = fsub fast float %6726, %6727
  %6729 = fmul fast float %6725, %6724
  %6730 = fmul fast float %6728, %6724
  %6731 = fsub fast float %6725, %6729
  %6732 = fsub fast float %6728, %6730
  br label %6877

; <label>:6733                                    ; preds = %6635
  %6734 = and i32 %6265, 255
  %6735 = uitofp i32 %6734 to float
  %6736 = fmul fast float %6735, 0x3F70101020000000
  %6737 = lshr i32 %6265, 8
  %6738 = and i32 %6737, 255
  %6739 = uitofp i32 %6738 to float
  %6740 = fmul fast float %6739, 0x3F70101020000000
  %6741 = lshr i32 %6265, 16
  %6742 = and i32 %6741, 255
  %6743 = uitofp i32 %6742 to float
  %6744 = fmul fast float %6743, 0x3F70101020000000
  br label %6877

; <label>:6745                                    ; preds = %6635
  %6746 = and i32 %6265, 1023
  %6747 = uitofp i32 %6746 to float
  %6748 = lshr i32 %6265, 10
  %6749 = and i32 %6748, 1023
  %6750 = uitofp i32 %6749 to float
  %6751 = lshr i32 %6265, 20
  %6752 = and i32 %6751, 1023
  %6753 = uitofp i32 %6752 to float
  %6754 = fmul fast float %6747, 0x3F60040100000000
  %6755 = fmul fast float %6750, 0x3F60040100000000
  %6756 = fmul fast float %6753, 0x3F60040100000000
  %6757 = fadd fast float %6754, -1.000000e+00
  %6758 = fadd fast float %6755, -1.000000e+00
  %6759 = fadd fast float %6756, -1.000000e+00
  br label %6877

; <label>:6760                                    ; preds = %6635
  %6761 = icmp ne i32 %6265, 0
  %6762 = select i1 %6761, float 1.000000e+00, float %6636
  %6763 = select i1 %6761, float 0.000000e+00, float %6637
  %6764 = select i1 %6761, float 0.000000e+00, float %6638
  br label %6877

; <label>:6765                                    ; preds = %6635
  %6766 = bitcast i32 %6265 to float
  br label %6877

; <label>:6767                                    ; preds = %6635
  %6768 = bitcast i32 %6265 to float
  br label %6877

; <label>:6769                                    ; preds = %6635
  %6770 = bitcast i32 %6265 to float
  br label %6877

; <label>:6771                                    ; preds = %6635
  %6772 = bitcast i32 %6265 to float
  br label %6877

; <label>:6773                                    ; preds = %6635
  %6774 = and i32 %6265, 65535
  %6775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6774)  ; LegacyF16ToF32(value)
  %6776 = lshr i32 %6265, 16
  %6777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6776)  ; LegacyF16ToF32(value)
  %6778 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6780 = extractvalue %dx.types.CBufRet.f32 %6779, 0
  %6781 = fmul fast float %6780, %6775
  %6782 = fmul fast float %6780, %6777
  %6783 = fmul fast float %6780, %6778
  br label %6877

; <label>:6784                                    ; preds = %6635
  %6785 = and i32 %6265, 65535
  %6786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6785)  ; LegacyF16ToF32(value)
  %6787 = lshr i32 %6265, 16
  %6788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %6787)  ; LegacyF16ToF32(value)
  %6789 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %6790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6791 = extractvalue %dx.types.CBufRet.f32 %6790, 0
  %6792 = fmul fast float %6791, %6786
  %6793 = fmul fast float %6791, %6788
  %6794 = fmul fast float %6791, %6789
  br label %6877

; <label>:6795                                    ; preds = %6635
  %6796 = and i32 %6265, 1023
  %6797 = uitofp i32 %6796 to float
  %6798 = lshr i32 %6265, 10
  %6799 = and i32 %6798, 1023
  %6800 = uitofp i32 %6799 to float
  %6801 = lshr i32 %6265, 20
  %6802 = and i32 %6801, 1023
  %6803 = uitofp i32 %6802 to float
  %6804 = fmul fast float %6797, 0x3F50040100000000
  %6805 = fmul fast float %6800, 0x3F50040100000000
  %6806 = fmul fast float %6803, 0x3F50040100000000
  br label %6877

; <label>:6807                                    ; preds = %6635
  %6808 = and i32 %6265, 1023
  %6809 = uitofp i32 %6808 to float
  %6810 = lshr i32 %6265, 10
  %6811 = and i32 %6810, 1023
  %6812 = uitofp i32 %6811 to float
  %6813 = lshr i32 %6265, 20
  %6814 = and i32 %6813, 1023
  %6815 = uitofp i32 %6814 to float
  %6816 = fmul fast float %6809, 0x3F60040100000000
  %6817 = fmul fast float %6812, 0x3F60040100000000
  %6818 = fmul fast float %6815, 0x3F60040100000000
  %6819 = fadd fast float %6816, -1.000000e+00
  %6820 = fadd fast float %6817, -1.000000e+00
  %6821 = fadd fast float %6818, -1.000000e+00
  %6822 = call float @dx.op.binary.f32(i32 35, float %6820, float %6821)  ; FMax(a,b)
  %6823 = call float @dx.op.binary.f32(i32 35, float %6819, float %6822)  ; FMax(a,b)
  %6824 = fmul fast float %6823, 2.000000e+00
  %6825 = call float @dx.op.unary.f32(i32 7, float %6824)  ; Saturate(value)
  %6826 = fmul fast float %6809, 0x3F94050140000000
  %6827 = fadd fast float %6826, -1.000000e+01
  %6828 = fmul fast float %6812, 0x3F94050140000000
  %6829 = fadd fast float %6828, -1.000000e+01
  %6830 = fmul fast float %6815, 0x3F94050140000000
  %6831 = fadd fast float %6830, -1.000000e+01
  %6832 = fsub fast float %6827, %6636
  %6833 = fsub fast float %6829, %6637
  %6834 = fsub fast float %6831, %6638
  %6835 = fmul fast float %6825, %6832
  %6836 = fmul fast float %6825, %6833
  %6837 = fmul fast float %6825, %6834
  %6838 = fadd fast float %6835, %6636
  %6839 = fadd fast float %6836, %6637
  %6840 = fadd fast float %6837, %6638
  br label %6877

; <label>:6841                                    ; preds = %6635
  %6842 = and i32 %6265, 1023
  %6843 = uitofp i32 %6842 to float
  %6844 = lshr i32 %6265, 10
  %6845 = and i32 %6844, 1023
  %6846 = uitofp i32 %6845 to float
  %6847 = lshr i32 %6265, 20
  %6848 = and i32 %6847, 1023
  %6849 = uitofp i32 %6848 to float
  %6850 = fmul fast float %6843, 0x3F60040100000000
  %6851 = fmul fast float %6846, 0x3F60040100000000
  %6852 = fmul fast float %6849, 0x3F60040100000000
  %6853 = fadd fast float %6850, -1.000000e+00
  %6854 = fadd fast float %6851, -1.000000e+00
  %6855 = fadd fast float %6852, -1.000000e+00
  br label %6877

; <label>:6856                                    ; preds = %6635
  %6857 = and i32 %6265, 1023
  %6858 = uitofp i32 %6857 to float
  %6859 = lshr i32 %6265, 10
  %6860 = and i32 %6859, 1023
  %6861 = uitofp i32 %6860 to float
  %6862 = lshr i32 %6265, 20
  %6863 = and i32 %6862, 1023
  %6864 = uitofp i32 %6863 to float
  %6865 = fmul fast float %6858, 0x3F60040100000000
  %6866 = fmul fast float %6861, 0x3F60040100000000
  %6867 = fmul fast float %6864, 0x3F60040100000000
  %6868 = fadd fast float %6865, -1.000000e+00
  %6869 = fadd fast float %6866, -1.000000e+00
  %6870 = fadd fast float %6867, -1.000000e+00
  br label %6877

; <label>:6871                                    ; preds = %6635
  %6872 = bitcast i32 %6265 to float
  br label %6877

; <label>:6873                                    ; preds = %6635
  %6874 = bitcast i32 %6265 to float
  br label %6877

; <label>:6875                                    ; preds = %6635
  %6876 = bitcast i32 %6265 to float
  br label %6877

; <label>:6877                                    ; preds = %6875, %6873, %6871, %6856, %6841, %6807, %6795, %6784, %6773, %6771, %6769, %6767, %6765, %6760, %6745, %6733, %6712, %6691, %6689, %6683, %6677, %6671, %6665, %6659, %6658, %6652, %6646, %6635
  %6878 = phi float [ %6636, %6635 ], [ %6876, %6875 ], [ %6874, %6873 ], [ %6872, %6871 ], [ %6868, %6856 ], [ %6853, %6841 ], [ %6838, %6807 ], [ %6804, %6795 ], [ %6792, %6784 ], [ %6781, %6773 ], [ %6772, %6771 ], [ %6770, %6769 ], [ %6768, %6767 ], [ %6766, %6765 ], [ %6757, %6745 ], [ %6736, %6733 ], [ %6724, %6712 ], [ %6707, %6691 ], [ %6690, %6689 ], [ %6686, %6683 ], [ %6680, %6677 ], [ %6674, %6671 ], [ %6668, %6665 ], [ %6662, %6659 ], [ 0.000000e+00, %6658 ], [ %6655, %6652 ], [ %6649, %6646 ], [ %6762, %6760 ]
  %6879 = phi float [ %6637, %6635 ], [ %6876, %6875 ], [ %6874, %6873 ], [ %6872, %6871 ], [ %6869, %6856 ], [ %6854, %6841 ], [ %6839, %6807 ], [ %6805, %6795 ], [ %6793, %6784 ], [ %6782, %6773 ], [ %6772, %6771 ], [ %6770, %6769 ], [ %6768, %6767 ], [ %6766, %6765 ], [ %6758, %6745 ], [ %6740, %6733 ], [ %6731, %6712 ], [ %6709, %6691 ], [ %6690, %6689 ], [ %6687, %6683 ], [ %6681, %6677 ], [ %6675, %6671 ], [ %6669, %6665 ], [ %6663, %6659 ], [ 0.000000e+00, %6658 ], [ %6656, %6652 ], [ %6650, %6646 ], [ %6763, %6760 ]
  %6880 = phi float [ %6638, %6635 ], [ %6876, %6875 ], [ %6874, %6873 ], [ %6872, %6871 ], [ %6870, %6856 ], [ %6855, %6841 ], [ %6840, %6807 ], [ %6806, %6795 ], [ %6794, %6784 ], [ %6783, %6773 ], [ %6772, %6771 ], [ %6770, %6769 ], [ %6768, %6767 ], [ %6766, %6765 ], [ %6759, %6745 ], [ %6744, %6733 ], [ %6732, %6712 ], [ %6711, %6691 ], [ %6690, %6689 ], [ %6688, %6683 ], [ %6682, %6677 ], [ %6676, %6671 ], [ %6670, %6665 ], [ %6664, %6659 ], [ 0.000000e+00, %6658 ], [ %6657, %6652 ], [ %6651, %6646 ], [ %6764, %6760 ]
  %6881 = extractvalue %dx.types.CBufRet.f32 %6639, 3
  %6882 = fsub fast float %6878, %6636
  %6883 = fsub fast float %6879, %6637
  %6884 = fsub fast float %6880, %6638
  %6885 = fmul fast float %6881, %6882
  %6886 = fmul fast float %6881, %6883
  %6887 = fmul fast float %6881, %6884
  %6888 = fadd fast float %6885, %6636
  %6889 = fadd fast float %6886, %6637
  %6890 = fadd fast float %6887, %6638
  %6891 = lshr i32 %6641, 16
  %6892 = and i32 %6891, 255
  %6893 = uitofp i32 %6892 to float
  %6894 = fptoui float %6893 to i32
  switch i32 %6894, label %6941 [
    i32 16, label %6926
    i32 12, label %6925
    i32 3, label %6895
    i32 4, label %6896
    i32 15, label %6897
    i32 5, label %6906
    i32 6, label %6915
    i32 7, label %6924
    i32 11, label %6925
  ]

; <label>:6895                                    ; preds = %6877
  br label %6941

; <label>:6896                                    ; preds = %6877
  br label %6941

; <label>:6897                                    ; preds = %6877
  %6898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %6899 = extractvalue %dx.types.CBufRet.f32 %6898, 0
  %6900 = fadd fast float %6899, %6888
  %6901 = fadd fast float %6899, %6889
  %6902 = fadd fast float %6899, %6890
  %6903 = call float @dx.op.unary.f32(i32 7, float %6900)  ; Saturate(value)
  %6904 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6905 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  br label %6941

; <label>:6906                                    ; preds = %6877
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 0
  %6909 = bitcast float %6908 to i32
  %6910 = and i32 %6909, 2130706432
  %6911 = icmp eq i32 %6910, 0
  %6912 = select i1 %6911, float 0.000000e+00, float %6888
  %6913 = select i1 %6911, float 0.000000e+00, float %6889
  %6914 = select i1 %6911, float 0.000000e+00, float %6890
  br label %6941

; <label>:6915                                    ; preds = %6877
  %6916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6917 = extractvalue %dx.types.CBufRet.f32 %6916, 0
  %6918 = bitcast float %6917 to i32
  %6919 = and i32 %6918, 2130706432
  %6920 = icmp eq i32 %6919, 0
  %6921 = select i1 %6920, float 0.000000e+00, float %6888
  %6922 = select i1 %6920, float 0.000000e+00, float %6889
  %6923 = select i1 %6920, float 0.000000e+00, float %6890
  br label %6941

; <label>:6924                                    ; preds = %6877
  br label %6941

; <label>:6925                                    ; preds = %6877, %6877
  br label %6941

; <label>:6926                                    ; preds = %6877
  %6927 = and i32 %6265, 1023
  %6928 = uitofp i32 %6927 to float
  %6929 = lshr i32 %6265, 10
  %6930 = and i32 %6929, 1023
  %6931 = uitofp i32 %6930 to float
  %6932 = lshr i32 %6265, 20
  %6933 = and i32 %6932, 1023
  %6934 = uitofp i32 %6933 to float
  %6935 = fmul fast float %6928, 0x3F60040100000000
  %6936 = fmul fast float %6931, 0x3F60040100000000
  %6937 = fmul fast float %6934, 0x3F60040100000000
  %6938 = fadd fast float %6935, -1.000000e+00
  %6939 = fadd fast float %6936, -1.000000e+00
  %6940 = fadd fast float %6937, -1.000000e+00
  br label %6941

; <label>:6941                                    ; preds = %6926, %6925, %6924, %6915, %6906, %6897, %6896, %6895, %6877
  %6942 = phi float [ 0.000000e+00, %6924 ], [ %6903, %6897 ], [ 0.000000e+00, %6896 ], [ %47, %6925 ], [ %6938, %6926 ], [ 0.000000e+00, %6895 ], [ %6912, %6906 ], [ %6921, %6915 ], [ %6888, %6877 ]
  %6943 = phi float [ 0.000000e+00, %6924 ], [ %6904, %6897 ], [ 0.000000e+00, %6896 ], [ %48, %6925 ], [ %6939, %6926 ], [ 0.000000e+00, %6895 ], [ %6913, %6906 ], [ %6922, %6915 ], [ %6889, %6877 ]
  %6944 = phi float [ 0.000000e+00, %6924 ], [ %6905, %6897 ], [ 1.000000e+00, %6896 ], [ %49, %6925 ], [ %6940, %6926 ], [ 0.000000e+00, %6895 ], [ %6914, %6906 ], [ %6923, %6915 ], [ %6890, %6877 ]
  %6945 = fsub fast float %6942, %6888
  %6946 = fsub fast float %6943, %6889
  %6947 = fsub fast float %6944, %6890
  %6948 = fmul fast float %6881, %6945
  %6949 = fmul fast float %6881, %6946
  %6950 = fmul fast float %6881, %6947
  %6951 = fadd fast float %6948, %6888
  %6952 = fadd fast float %6949, %6889
  %6953 = fadd fast float %6950, %6890
  %6954 = and i32 %5944, 255
  %6955 = uitofp i32 %6954 to float
  %6956 = fptoui float %6955 to i32
  %6957 = lshr i32 %5944, 8
  %6958 = and i32 %6957, 255
  %6959 = uitofp i32 %6958 to float
  %6960 = fptoui float %6959 to i32
  %6961 = lshr i32 %5944, 16
  %6962 = and i32 %6961, 255
  %6963 = uitofp i32 %6962 to float
  %6964 = fptoui float %6963 to i32
  %6965 = lshr i32 %5944, 24
  %6966 = uitofp i32 %6965 to float
  %6967 = fptoui float %6966 to i32
  %6968 = and i32 %5943, 255
  %6969 = uitofp i32 %6968 to float
  %6970 = fptoui float %6969 to i32
  %6971 = lshr i32 %5943, 16
  %6972 = and i32 %6971, 255
  %6973 = uitofp i32 %6972 to float
  %6974 = fptoui float %6973 to i32
  %6975 = lshr i32 %6641, 24
  %6976 = uitofp i32 %6975 to float
  %6977 = fptoui float %6976 to i32
  switch i32 %6977, label %7216 [
    i32 1, label %6978
    i32 2, label %7005
    i32 3, label %7030
    i32 4, label %7053
    i32 5, label %7076
    i32 6, label %7099
    i32 7, label %7123
    i32 8, label %7146
    i32 9, label %7169
    i32 12, label %7191
    i32 13, label %7192
    i32 14, label %7215
  ]

; <label>:6978                                    ; preds = %6941
  %6979 = add i32 %6956, %6970
  %6980 = add i32 %6979, %6967
  %6981 = add i32 %6980, %6960
  %6982 = add i32 %6981, %6964
  %6983 = uitofp i32 %6982 to float
  %6984 = fadd fast float %6983, -4.000000e+00
  %6985 = fmul fast float %6984, 0x3FB5555560000000
  %6986 = call float @dx.op.unary.f32(i32 7, float %6985)  ; Saturate(value)
  %6987 = icmp eq i32 %6982, 0
  %6988 = select i1 %6987, float 0.000000e+00, float %6986
  %6989 = icmp ult i32 %6982, 2
  %6990 = select i1 %6989, float 0.000000e+00, float %6986
  %6991 = add i32 %6982, -1
  %6992 = icmp ult i32 %6991, 2
  %6993 = select i1 %6992, float 1.000000e+00, float %6988
  %6994 = icmp ult i32 %6982, 4
  %6995 = select i1 %6994, float 0.000000e+00, float 1.000000e+00
  %6996 = and i32 %6982, -2
  %6997 = icmp eq i32 %6996, 2
  %6998 = icmp eq i32 %6982, 4
  %6999 = select i1 %6998, float 1.000000e+00, float %6995
  %7000 = or i1 %6998, %6997
  %7001 = select i1 %7000, float 1.000000e+00, float %6990
  %7002 = add i32 %6982, -3
  %7003 = icmp ult i32 %7002, 2
  %7004 = select i1 %7003, float 0.000000e+00, float %6993
  br label %7216

; <label>:7005                                    ; preds = %6941
  %7006 = add i32 %6960, %6956
  %7007 = add i32 %7006, %6964
  %7008 = uitofp i32 %7007 to float
  %7009 = fadd fast float %7008, -4.000000e+00
  %7010 = fmul fast float %7009, 0x3FB5555560000000
  %7011 = call float @dx.op.unary.f32(i32 7, float %7010)  ; Saturate(value)
  %7012 = icmp eq i32 %7007, 0
  %7013 = select i1 %7012, float 0.000000e+00, float %7011
  %7014 = icmp ult i32 %7007, 2
  %7015 = select i1 %7014, float 0.000000e+00, float %7011
  %7016 = add i32 %7007, -1
  %7017 = icmp ult i32 %7016, 2
  %7018 = select i1 %7017, float 1.000000e+00, float %7013
  %7019 = icmp ult i32 %7007, 4
  %7020 = select i1 %7019, float 0.000000e+00, float 1.000000e+00
  %7021 = and i32 %7007, -2
  %7022 = icmp eq i32 %7021, 2
  %7023 = icmp eq i32 %7007, 4
  %7024 = select i1 %7023, float 1.000000e+00, float %7020
  %7025 = or i1 %7023, %7022
  %7026 = select i1 %7025, float 1.000000e+00, float %7015
  %7027 = add i32 %7007, -3
  %7028 = icmp ult i32 %7027, 2
  %7029 = select i1 %7028, float 0.000000e+00, float %7018
  br label %7216

; <label>:7030                                    ; preds = %6941
  %7031 = uitofp i32 %6956 to float
  %7032 = fadd fast float %7031, -4.000000e+00
  %7033 = fmul fast float %7032, 0x3FB5555560000000
  %7034 = call float @dx.op.unary.f32(i32 7, float %7033)  ; Saturate(value)
  %7035 = icmp eq i32 %6956, 0
  %7036 = select i1 %7035, float 0.000000e+00, float %7034
  %7037 = icmp ult i32 %6956, 2
  %7038 = select i1 %7037, float 0.000000e+00, float %7034
  %7039 = add i32 %6956, -1
  %7040 = icmp ult i32 %7039, 2
  %7041 = select i1 %7040, float 1.000000e+00, float %7036
  %7042 = icmp ult i32 %6956, 4
  %7043 = select i1 %7042, float 0.000000e+00, float 1.000000e+00
  %7044 = and i32 %6956, -2
  %7045 = icmp eq i32 %7044, 2
  %7046 = icmp eq i32 %6956, 4
  %7047 = select i1 %7046, float 1.000000e+00, float %7043
  %7048 = or i1 %7046, %7045
  %7049 = select i1 %7048, float 1.000000e+00, float %7038
  %7050 = add i32 %6956, -3
  %7051 = icmp ult i32 %7050, 2
  %7052 = select i1 %7051, float 0.000000e+00, float %7041
  br label %7216

; <label>:7053                                    ; preds = %6941
  %7054 = uitofp i32 %6960 to float
  %7055 = fadd fast float %7054, -4.000000e+00
  %7056 = fmul fast float %7055, 0x3FB5555560000000
  %7057 = call float @dx.op.unary.f32(i32 7, float %7056)  ; Saturate(value)
  %7058 = icmp eq i32 %6960, 0
  %7059 = select i1 %7058, float 0.000000e+00, float %7057
  %7060 = icmp ult i32 %6960, 2
  %7061 = select i1 %7060, float 0.000000e+00, float %7057
  %7062 = add i32 %6960, -1
  %7063 = icmp ult i32 %7062, 2
  %7064 = select i1 %7063, float 1.000000e+00, float %7059
  %7065 = icmp ult i32 %6960, 4
  %7066 = select i1 %7065, float 0.000000e+00, float 1.000000e+00
  %7067 = and i32 %6960, -2
  %7068 = icmp eq i32 %7067, 2
  %7069 = icmp eq i32 %6960, 4
  %7070 = select i1 %7069, float 1.000000e+00, float %7066
  %7071 = or i1 %7069, %7068
  %7072 = select i1 %7071, float 1.000000e+00, float %7061
  %7073 = add i32 %6960, -3
  %7074 = icmp ult i32 %7073, 2
  %7075 = select i1 %7074, float 0.000000e+00, float %7064
  br label %7216

; <label>:7076                                    ; preds = %6941
  %7077 = uitofp i32 %6964 to float
  %7078 = fadd fast float %7077, -4.000000e+00
  %7079 = fmul fast float %7078, 0x3FB5555560000000
  %7080 = call float @dx.op.unary.f32(i32 7, float %7079)  ; Saturate(value)
  %7081 = icmp eq i32 %6964, 0
  %7082 = select i1 %7081, float 0.000000e+00, float %7080
  %7083 = icmp ult i32 %6964, 2
  %7084 = select i1 %7083, float 0.000000e+00, float %7080
  %7085 = add i32 %6964, -1
  %7086 = icmp ult i32 %7085, 2
  %7087 = select i1 %7086, float 1.000000e+00, float %7082
  %7088 = icmp ult i32 %6964, 4
  %7089 = select i1 %7088, float 0.000000e+00, float 1.000000e+00
  %7090 = and i32 %6964, -2
  %7091 = icmp eq i32 %7090, 2
  %7092 = icmp eq i32 %6964, 4
  %7093 = select i1 %7092, float 1.000000e+00, float %7089
  %7094 = or i1 %7092, %7091
  %7095 = select i1 %7094, float 1.000000e+00, float %7084
  %7096 = add i32 %6964, -3
  %7097 = icmp ult i32 %7096, 2
  %7098 = select i1 %7097, float 0.000000e+00, float %7087
  br label %7216

; <label>:7099                                    ; preds = %6941
  %7100 = add i32 %6967, %6970
  %7101 = uitofp i32 %7100 to float
  %7102 = fadd fast float %7101, -4.000000e+00
  %7103 = fmul fast float %7102, 0x3FB5555560000000
  %7104 = call float @dx.op.unary.f32(i32 7, float %7103)  ; Saturate(value)
  %7105 = icmp eq i32 %7100, 0
  %7106 = select i1 %7105, float 0.000000e+00, float %7104
  %7107 = icmp ult i32 %7100, 2
  %7108 = select i1 %7107, float 0.000000e+00, float %7104
  %7109 = add i32 %7100, -1
  %7110 = icmp ult i32 %7109, 2
  %7111 = select i1 %7110, float 1.000000e+00, float %7106
  %7112 = icmp ult i32 %7100, 4
  %7113 = select i1 %7112, float 0.000000e+00, float 1.000000e+00
  %7114 = and i32 %7100, -2
  %7115 = icmp eq i32 %7114, 2
  %7116 = icmp eq i32 %7100, 4
  %7117 = select i1 %7116, float 1.000000e+00, float %7113
  %7118 = or i1 %7116, %7115
  %7119 = select i1 %7118, float 1.000000e+00, float %7108
  %7120 = add i32 %7100, -3
  %7121 = icmp ult i32 %7120, 2
  %7122 = select i1 %7121, float 0.000000e+00, float %7111
  br label %7216

; <label>:7123                                    ; preds = %6941
  %7124 = uitofp i32 %6967 to float
  %7125 = fadd fast float %7124, -4.000000e+00
  %7126 = fmul fast float %7125, 0x3FB5555560000000
  %7127 = call float @dx.op.unary.f32(i32 7, float %7126)  ; Saturate(value)
  %7128 = icmp eq i32 %6967, 0
  %7129 = select i1 %7128, float 0.000000e+00, float %7127
  %7130 = icmp ult i32 %6967, 2
  %7131 = select i1 %7130, float 0.000000e+00, float %7127
  %7132 = add i32 %6967, -1
  %7133 = icmp ult i32 %7132, 2
  %7134 = select i1 %7133, float 1.000000e+00, float %7129
  %7135 = icmp ult i32 %6967, 4
  %7136 = select i1 %7135, float 0.000000e+00, float 1.000000e+00
  %7137 = and i32 %6967, -2
  %7138 = icmp eq i32 %7137, 2
  %7139 = icmp eq i32 %6967, 4
  %7140 = select i1 %7139, float 1.000000e+00, float %7136
  %7141 = or i1 %7139, %7138
  %7142 = select i1 %7141, float 1.000000e+00, float %7131
  %7143 = add i32 %6967, -3
  %7144 = icmp ult i32 %7143, 2
  %7145 = select i1 %7144, float 0.000000e+00, float %7134
  br label %7216

; <label>:7146                                    ; preds = %6941
  %7147 = uitofp i32 %6970 to float
  %7148 = fadd fast float %7147, -4.000000e+00
  %7149 = fmul fast float %7148, 0x3FB5555560000000
  %7150 = call float @dx.op.unary.f32(i32 7, float %7149)  ; Saturate(value)
  %7151 = icmp eq i32 %6970, 0
  %7152 = select i1 %7151, float 0.000000e+00, float %7150
  %7153 = icmp ult i32 %6970, 2
  %7154 = select i1 %7153, float 0.000000e+00, float %7150
  %7155 = add i32 %6970, -1
  %7156 = icmp ult i32 %7155, 2
  %7157 = select i1 %7156, float 1.000000e+00, float %7152
  %7158 = icmp ult i32 %6970, 4
  %7159 = select i1 %7158, float 0.000000e+00, float 1.000000e+00
  %7160 = and i32 %6970, -2
  %7161 = icmp eq i32 %7160, 2
  %7162 = icmp eq i32 %6970, 4
  %7163 = select i1 %7162, float 1.000000e+00, float %7159
  %7164 = or i1 %7162, %7161
  %7165 = select i1 %7164, float 1.000000e+00, float %7154
  %7166 = add i32 %6970, -3
  %7167 = icmp ult i32 %7166, 2
  %7168 = select i1 %7167, float 0.000000e+00, float %7157
  br label %7216

; <label>:7169                                    ; preds = %6941
  %7170 = lshr i32 %5943, 8
  %7171 = and i32 %7170, 255
  %7172 = uitofp i32 %7171 to float
  %7173 = fptoui float %7172 to i32
  %7174 = uitofp i32 %7173 to float
  %7175 = fcmp fast oge float %7174, 1.000000e+00
  %7176 = fcmp fast oge float %7174, 2.000000e+00
  %7177 = or i1 %7176, %7175
  %7178 = select i1 %7177, float 1.000000e+00, float 0.000000e+00
  %7179 = fcmp fast oge float %7174, 3.000000e+00
  %7180 = or i1 %7179, %7176
  %7181 = fcmp fast oge float %7174, 4.000000e+00
  %7182 = or i1 %7181, %7180
  %7183 = select i1 %7182, float 1.000000e+00, float 0.000000e+00
  %7184 = or i1 %7181, %7179
  %7185 = fcmp fast oge float %7174, 5.000000e+00
  %7186 = or i1 %7185, %7181
  %7187 = select i1 %7186, float 1.000000e+00, float 0.000000e+00
  %7188 = select i1 %7185, float 0.000000e+00, float %7183
  %7189 = or i1 %7185, %7184
  %7190 = select i1 %7189, float 0.000000e+00, float %7178
  br label %7216

; <label>:7191                                    ; preds = %6941
  br label %7216

; <label>:7192                                    ; preds = %6941
  %7193 = uitofp i32 %6974 to float
  %7194 = fadd fast float %7193, -4.000000e+00
  %7195 = fmul fast float %7194, 0x3FB5555560000000
  %7196 = call float @dx.op.unary.f32(i32 7, float %7195)  ; Saturate(value)
  %7197 = icmp eq i32 %6974, 0
  %7198 = select i1 %7197, float 0.000000e+00, float %7196
  %7199 = icmp ult i32 %6974, 2
  %7200 = select i1 %7199, float 0.000000e+00, float %7196
  %7201 = add i32 %6974, -1
  %7202 = icmp ult i32 %7201, 2
  %7203 = select i1 %7202, float 1.000000e+00, float %7198
  %7204 = icmp ult i32 %6974, 4
  %7205 = select i1 %7204, float 0.000000e+00, float 1.000000e+00
  %7206 = and i32 %6974, -2
  %7207 = icmp eq i32 %7206, 2
  %7208 = icmp eq i32 %6974, 4
  %7209 = select i1 %7208, float 1.000000e+00, float %7205
  %7210 = or i1 %7208, %7207
  %7211 = select i1 %7210, float 1.000000e+00, float %7200
  %7212 = add i32 %6974, -3
  %7213 = icmp ult i32 %7212, 2
  %7214 = select i1 %7213, float 0.000000e+00, float %7203
  br label %7216

; <label>:7215                                    ; preds = %6941
  br label %7216

; <label>:7216                                    ; preds = %7215, %7192, %7191, %7169, %7146, %7123, %7099, %7076, %7053, %7030, %7005, %6978, %6941
  %7217 = phi float [ %6951, %6941 ], [ 5.000000e-01, %7215 ], [ %7209, %7192 ], [ 0.000000e+00, %7191 ], [ %7187, %7169 ], [ %7163, %7146 ], [ %7140, %7123 ], [ %7117, %7099 ], [ %7093, %7076 ], [ %7070, %7053 ], [ %7047, %7030 ], [ %7024, %7005 ], [ %6999, %6978 ]
  %7218 = phi float [ %6952, %6941 ], [ 5.000000e-01, %7215 ], [ %7211, %7192 ], [ 0.000000e+00, %7191 ], [ %7188, %7169 ], [ %7165, %7146 ], [ %7142, %7123 ], [ %7119, %7099 ], [ %7095, %7076 ], [ %7072, %7053 ], [ %7049, %7030 ], [ %7026, %7005 ], [ %7001, %6978 ]
  %7219 = phi float [ %6953, %6941 ], [ 5.000000e-01, %7215 ], [ %7214, %7192 ], [ 0.000000e+00, %7191 ], [ %7190, %7169 ], [ %7168, %7146 ], [ %7145, %7123 ], [ %7122, %7099 ], [ %7098, %7076 ], [ %7075, %7053 ], [ %7052, %7030 ], [ %7029, %7005 ], [ %7004, %6978 ]
  %7220 = fsub fast float %7217, %6951
  %7221 = fsub fast float %7218, %6952
  %7222 = fsub fast float %7219, %6953
  %7223 = fmul fast float %7220, %6881
  %7224 = fmul fast float %7221, %6881
  %7225 = fmul fast float %7222, %6881
  %7226 = fadd fast float %7223, %6951
  %7227 = fadd fast float %7224, %6952
  %7228 = fadd fast float %7225, %6953
  %7229 = and i32 %6641, 255
  %7230 = uitofp i32 %7229 to float
  %7231 = fptoui float %7230 to i32
  %7232 = icmp ult i32 %7231, 25
  br i1 %7232, label %7233, label %7238

; <label>:7233                                    ; preds = %7216
  %7234 = trunc i32 %7231 to i25
  %7235 = lshr i25 1048574, %7234
  %7236 = and i25 %7235, 1
  %7237 = icmp ne i25 %7236, 0
  br label %7238

; <label>:7238                                    ; preds = %7233, %7216
  %7239 = phi i1 [ %7237, %7233 ], [ true, %7216 ]
  %7240 = or i32 %6894, %6645
  %7241 = or i32 %7240, %6977
  %7242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7243 = extractvalue %dx.types.CBufRet.f32 %7242, 3
  %7244 = bitcast float %7243 to i32
  %7245 = and i32 %7244, 255
  %7246 = uitofp i32 %7245 to float
  %7247 = fptoui float %7246 to i32
  %7248 = or i32 %7241, %7247
  %7249 = icmp ne i32 %7248, 0
  %7250 = or i1 %7239, %7249
  %7251 = extractvalue %dx.types.CBufRet.f32 %7242, 0
  %7252 = bitcast float %7251 to i32
  %7253 = icmp slt i32 %7252, 0
  %7254 = or i1 %7253, %7250
  br i1 %7254, label %7255, label %7273

; <label>:7255                                    ; preds = %7238
  %7256 = icmp eq i32 %6977, 14
  br i1 %7256, label %7273, label %7257

; <label>:7257                                    ; preds = %7255
  %7258 = fsub fast float 1.000000e+00, %6272
  %7259 = fsub fast float 1.000000e+00, %6273
  %7260 = fsub fast float 1.000000e+00, %6274
  %7261 = fmul fast float %6881, %7258
  %7262 = fmul fast float %6881, %7259
  %7263 = fmul fast float %6881, %7260
  %7264 = fadd fast float %7261, %6272
  %7265 = fadd fast float %7262, %6273
  %7266 = fadd fast float %7263, %6274
  %7267 = fmul fast float %6881, %6318
  %7268 = fmul fast float %6881, %6319
  %7269 = fmul fast float %6881, %6320
  %7270 = fsub fast float %6318, %7267
  %7271 = fsub fast float %6319, %7268
  %7272 = fsub fast float %6320, %7269
  br label %7273

; <label>:7273                                    ; preds = %7257, %7255, %7238
  %7274 = phi float [ %7270, %7257 ], [ %6318, %7238 ], [ 0.000000e+00, %7255 ]
  %7275 = phi float [ %7271, %7257 ], [ %6319, %7238 ], [ 0.000000e+00, %7255 ]
  %7276 = phi float [ %7272, %7257 ], [ %6320, %7238 ], [ 0.000000e+00, %7255 ]
  %7277 = phi float [ %7264, %7257 ], [ %6272, %7238 ], [ 1.000000e+00, %7255 ]
  %7278 = phi float [ %7265, %7257 ], [ %6273, %7238 ], [ 1.000000e+00, %7255 ]
  %7279 = phi float [ %7266, %7257 ], [ %6274, %7238 ], [ 1.000000e+00, %7255 ]
  %7280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %43, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7281 = extractvalue %dx.types.CBufRet.f32 %7280, 2
  %7282 = extractvalue %dx.types.CBufRet.f32 %7280, 3
  %7283 = fmul fast float %7281, %60
  %7284 = fmul fast float %7282, %61
  %7285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %7286 = extractvalue %dx.types.CBufRet.f32 %7285, 0
  %7287 = fcmp fast oge float %7283, %7286
  %7288 = extractvalue %dx.types.CBufRet.f32 %7285, 2
  %7289 = fcmp fast ole float %7283, %7288
  %7290 = and i1 %7287, %7289
  %7291 = extractvalue %dx.types.CBufRet.f32 %7285, 1
  %7292 = fcmp fast oge float %7284, %7291
  %7293 = and i1 %7290, %7292
  %7294 = extractvalue %dx.types.CBufRet.f32 %7285, 3
  %7295 = fcmp fast ole float %7284, %7294
  %7296 = and i1 %7293, %7295
  %7297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %7298 = extractvalue %dx.types.CBufRet.i32 %7297, 0
  %7299 = icmp ne i32 %7298, 0
  %7300 = icmp ne i32 %7298, 35
  %7301 = and i1 %7299, %7300
  %7302 = and i1 %7296, %7301
  br i1 %7302, label %7303, label %7316

; <label>:7303                                    ; preds = %7273
  %7304 = call float @dx.op.binary.f32(i32 36, float %7226, float 3.225500e+04)  ; FMin(a,b)
  %7305 = call float @dx.op.binary.f32(i32 36, float %7227, float 3.225500e+04)  ; FMin(a,b)
  %7306 = call float @dx.op.binary.f32(i32 36, float %7228, float 3.225500e+04)  ; FMin(a,b)
  %7307 = fmul fast float %7304, %7277
  %7308 = fmul fast float %7305, %7278
  %7309 = fmul fast float %7306, %7279
  %7310 = call float @dx.op.binary.f32(i32 36, float %7274, float 3.225500e+04)  ; FMin(a,b)
  %7311 = call float @dx.op.binary.f32(i32 36, float %7275, float 3.225500e+04)  ; FMin(a,b)
  %7312 = call float @dx.op.binary.f32(i32 36, float %7276, float 3.225500e+04)  ; FMin(a,b)
  %7313 = fadd fast float %7310, %7307
  %7314 = fadd fast float %7311, %7308
  %7315 = fadd fast float %7312, %7309
  br label %7316

; <label>:7316                                    ; preds = %7303, %7273
  %7317 = phi float [ %7313, %7303 ], [ %7226, %7273 ]
  %7318 = phi float [ %7314, %7303 ], [ %7227, %7273 ]
  %7319 = phi float [ %7315, %7303 ], [ %7228, %7273 ]
  %7320 = and i1 %7296, %7299
  br i1 %7320, label %7321, label %8066

; <label>:7321                                    ; preds = %7316
  %7322 = icmp eq i32 %7298, 1
  br i1 %7322, label %7323, label %7362

; <label>:7323                                    ; preds = %7321
  %7324 = uitofp i32 %195 to float
  %7325 = fmul fast float %7324, 0x3FE3C6EF40000000
  %7326 = call float @dx.op.unary.f32(i32 22, float %7325)  ; Frc(value)
  %7327 = fadd fast float %7326, 0x3FE5555560000000
  %7328 = fadd fast float %7326, 0x3FD5555560000000
  %7329 = fsub fast float -0.000000e+00, %7326
  %7330 = fsub fast float -0.000000e+00, %7327
  %7331 = fsub fast float -0.000000e+00, %7328
  %7332 = fcmp fast oge float %7326, %7329
  %7333 = fcmp fast oge float %7327, %7330
  %7334 = fcmp fast oge float %7328, %7331
  %7335 = call float @dx.op.unary.f32(i32 6, float %7326)  ; FAbs(value)
  %7336 = call float @dx.op.unary.f32(i32 6, float %7327)  ; FAbs(value)
  %7337 = call float @dx.op.unary.f32(i32 6, float %7328)  ; FAbs(value)
  %7338 = call float @dx.op.unary.f32(i32 22, float %7335)  ; Frc(value)
  %7339 = call float @dx.op.unary.f32(i32 22, float %7336)  ; Frc(value)
  %7340 = call float @dx.op.unary.f32(i32 22, float %7337)  ; Frc(value)
  %7341 = fsub fast float -0.000000e+00, %7338
  %7342 = fsub fast float -0.000000e+00, %7339
  %7343 = fsub fast float -0.000000e+00, %7340
  %7344 = select i1 %7332, float %7338, float %7341
  %7345 = select i1 %7333, float %7339, float %7342
  %7346 = select i1 %7334, float %7340, float %7343
  %7347 = fmul fast float %7344, 6.000000e+00
  %7348 = fmul fast float %7345, 6.000000e+00
  %7349 = fmul fast float %7346, 6.000000e+00
  %7350 = fadd fast float %7347, -3.000000e+00
  %7351 = fadd fast float %7348, -3.000000e+00
  %7352 = fadd fast float %7349, -3.000000e+00
  %7353 = call float @dx.op.unary.f32(i32 6, float %7350)  ; FAbs(value)
  %7354 = call float @dx.op.unary.f32(i32 6, float %7351)  ; FAbs(value)
  %7355 = call float @dx.op.unary.f32(i32 6, float %7352)  ; FAbs(value)
  %7356 = fadd fast float %7353, -1.000000e+00
  %7357 = fadd fast float %7354, -1.000000e+00
  %7358 = fadd fast float %7355, -1.000000e+00
  %7359 = call float @dx.op.unary.f32(i32 7, float %7356)  ; Saturate(value)
  %7360 = call float @dx.op.unary.f32(i32 7, float %7357)  ; Saturate(value)
  %7361 = call float @dx.op.unary.f32(i32 7, float %7358)  ; Saturate(value)
  br label %8066

; <label>:7362                                    ; preds = %7321
  %7363 = icmp eq i32 %7298, 2
  br i1 %7363, label %8066, label %7364

; <label>:7364                                    ; preds = %7362
  %7365 = icmp eq i32 %7298, 3
  %7366 = icmp eq i32 %7298, 26
  %7367 = or i1 %7365, %7366
  %7368 = and i32 %7298, -2
  %7369 = icmp eq i32 %7368, 4
  %7370 = or i1 %7367, %7369
  br i1 %7370, label %8066, label %7371

; <label>:7371                                    ; preds = %7364
  %7372 = icmp eq i32 %7298, 6
  br i1 %7372, label %8066, label %7373

; <label>:7373                                    ; preds = %7371
  %7374 = icmp eq i32 %7298, 7
  br i1 %7374, label %8066, label %7375

; <label>:7375                                    ; preds = %7373
  %7376 = icmp eq i32 %7298, 8
  br i1 %7376, label %8066, label %7377

; <label>:7377                                    ; preds = %7375
  %7378 = icmp eq i32 %7298, 9
  br i1 %7378, label %7379, label %7391

; <label>:7379                                    ; preds = %7377
  %7380 = fcmp fast ogt float %342, 0.000000e+00
  %7381 = call float @dx.op.dot2.f32(i32 54, float %337, float %338, float %337, float %338)  ; Dot2(ax,ay,bx,by)
  %7382 = call float @dx.op.unary.f32(i32 25, float %7381)  ; Rsqrt(value)
  %7383 = fmul fast float %337, 5.000000e-01
  %7384 = fmul fast float %7383, %7382
  %7385 = fmul fast float %338, 5.000000e-01
  %7386 = fmul fast float %7385, %7382
  %7387 = fadd fast float %7384, 5.000000e-01
  %7388 = select i1 %7380, float %7387, float 5.000000e-01
  %7389 = fadd fast float %7386, 5.000000e-01
  %7390 = select i1 %7380, float %7389, float 5.000000e-01
  br label %8066

; <label>:7391                                    ; preds = %7377
  %7392 = icmp eq i32 %7298, 10
  br i1 %7392, label %7393, label %7395

; <label>:7393                                    ; preds = %7391
  %7394 = fmul fast float %342, 0x3F747AE140000000
  br label %8066

; <label>:7395                                    ; preds = %7391
  %7396 = icmp eq i32 %7298, 11
  br i1 %7396, label %8066, label %7397

; <label>:7397                                    ; preds = %7395
  %7398 = icmp eq i32 %7298, 12
  br i1 %7398, label %8066, label %7399

; <label>:7399                                    ; preds = %7397
  %7400 = icmp eq i32 %7298, 13
  br i1 %7400, label %8066, label %7401

; <label>:7401                                    ; preds = %7399
  %7402 = icmp eq i32 %7298, 14
  br i1 %7402, label %8066, label %7403

; <label>:7403                                    ; preds = %7401
  %7404 = icmp eq i32 %7298, 15
  br i1 %7404, label %8066, label %7405

; <label>:7405                                    ; preds = %7403
  %7406 = icmp eq i32 %7298, 16
  br i1 %7406, label %8066, label %7407

; <label>:7407                                    ; preds = %7405
  %7408 = icmp eq i32 %7298, 17
  br i1 %7408, label %8066, label %7409

; <label>:7409                                    ; preds = %7407
  %7410 = icmp eq i32 %7298, 18
  br i1 %7410, label %8066, label %7411

; <label>:7411                                    ; preds = %7409
  %7412 = icmp eq i32 %7298, 19
  br i1 %7412, label %8066, label %7413

; <label>:7413                                    ; preds = %7411
  %7414 = icmp eq i32 %7298, 20
  br i1 %7414, label %7415, label %7422

; <label>:7415                                    ; preds = %7413
  %7416 = fmul fast float %1580, 5.000000e-01
  %7417 = fmul fast float %1581, 5.000000e-01
  %7418 = fmul fast float %1582, 5.000000e-01
  %7419 = fadd fast float %7416, 5.000000e-01
  %7420 = fadd fast float %7417, 5.000000e-01
  %7421 = fadd fast float %7418, 5.000000e-01
  br label %8066

; <label>:7422                                    ; preds = %7413
  %7423 = and i32 %7298, -9
  %7424 = icmp eq i32 %7423, 21
  br i1 %7424, label %8066, label %7425

; <label>:7425                                    ; preds = %7422
  %7426 = icmp eq i32 %7298, 22
  %7427 = icmp eq i32 %7298, 38
  %7428 = or i1 %7426, %7427
  br i1 %7428, label %7429, label %7543

; <label>:7429                                    ; preds = %7425
  %7430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7431 = extractvalue %dx.types.CBufRet.f32 %7430, 0
  %7432 = extractvalue %dx.types.CBufRet.f32 %7430, 1
  %7433 = extractvalue %dx.types.CBufRet.f32 %7430, 2
  %7434 = fadd fast float %7431, %100
  %7435 = fadd fast float %7432, %101
  %7436 = fadd fast float %7433, %102
  %7437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7438 = extractvalue %dx.types.CBufRet.f32 %7437, 0
  %7439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7440 = extractvalue %dx.types.CBufRet.f32 %7439, 0
  %7441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %7460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %7470, label %7471, label %8066

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
  %7481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %41, float %7479, float %7480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7482 = extractvalue %dx.types.ResRet.f32 %7481, 0
  %7483 = fcmp fast ugt float %7482, 0.000000e+00
  br i1 %7483, label %7484, label %8066

; <label>:7484                                    ; preds = %7471
  br i1 %7426, label %7485, label %7490

; <label>:7485                                    ; preds = %7484
  %7486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %41, float %7479, float %7480, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7487 = extractvalue %dx.types.ResRet.f32 %7486, 0
  %7488 = extractvalue %dx.types.ResRet.f32 %7486, 1
  %7489 = extractvalue %dx.types.ResRet.f32 %7486, 2
  br label %8066

; <label>:7490                                    ; preds = %7484
  %7491 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %35, i32 0)  ; GetDimensions(handle,mipLevel)
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
  br label %8066

; <label>:7543                                    ; preds = %7425
  %7544 = icmp eq i32 %7298, 39
  br i1 %7544, label %7545, label %7649

; <label>:7545                                    ; preds = %7543
  %7546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %7547 = extractvalue %dx.types.CBufRet.f32 %7546, 0
  %7548 = extractvalue %dx.types.CBufRet.f32 %7546, 1
  %7549 = extractvalue %dx.types.CBufRet.f32 %7546, 2
  %7550 = fadd fast float %7547, %100
  %7551 = fadd fast float %7548, %101
  %7552 = fadd fast float %7549, %102
  %7553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %7554 = extractvalue %dx.types.CBufRet.f32 %7553, 0
  %7555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %7556 = extractvalue %dx.types.CBufRet.f32 %7555, 0
  %7557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %7576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %7586, label %7587, label %8066

; <label>:7587                                    ; preds = %7545
  %7588 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %33, i32 0)  ; GetDimensions(handle,mipLevel)
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
  br label %8066

; <label>:7649                                    ; preds = %7543
  %7650 = icmp eq i32 %7298, 23
  br i1 %7650, label %8066, label %7651

; <label>:7651                                    ; preds = %7649
  %7652 = icmp eq i32 %7298, 24
  br i1 %7652, label %7653, label %7679

; <label>:7653                                    ; preds = %7651
  %7654 = and i32 %374, 255
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
  br label %8066

; <label>:7679                                    ; preds = %7651
  %7680 = icmp eq i32 %7298, 25
  br i1 %7680, label %7681, label %7707

; <label>:7681                                    ; preds = %7679
  %7682 = and i32 %1586, 255
  %7683 = uitofp i32 %7682 to float
  %7684 = fptoui float %7683 to i32
  %7685 = uitofp i32 %7684 to float
  %7686 = fadd fast float %7685, -4.000000e+00
  %7687 = fmul fast float %7686, 0x3FB5555560000000
  %7688 = call float @dx.op.unary.f32(i32 7, float %7687)  ; Saturate(value)
  %7689 = icmp eq i32 %7684, 0
  %7690 = select i1 %7689, float 0.000000e+00, float %7688
  %7691 = icmp ult i32 %7684, 2
  %7692 = select i1 %7691, float 0.000000e+00, float %7688
  %7693 = add i32 %7684, -1
  %7694 = icmp ult i32 %7693, 2
  %7695 = select i1 %7694, float 1.000000e+00, float %7690
  %7696 = icmp ult i32 %7684, 4
  %7697 = select i1 %7696, float 0.000000e+00, float 1.000000e+00
  %7698 = and i32 %7684, -2
  %7699 = icmp eq i32 %7698, 2
  %7700 = icmp eq i32 %7684, 4
  %7701 = select i1 %7700, float 1.000000e+00, float %7697
  %7702 = or i1 %7700, %7699
  %7703 = select i1 %7702, float 1.000000e+00, float %7692
  %7704 = add i32 %7684, -3
  %7705 = icmp ult i32 %7704, 2
  %7706 = select i1 %7705, float 0.000000e+00, float %7695
  br label %8066

; <label>:7707                                    ; preds = %7679
  %7708 = icmp eq i32 %7298, 27
  br i1 %7708, label %8066, label %7709

; <label>:7709                                    ; preds = %7707
  %7710 = icmp eq i32 %7298, 30
  br i1 %7710, label %8066, label %7711

; <label>:7711                                    ; preds = %7709
  %7712 = add i32 %7298, -31
  %7713 = icmp ult i32 %7712, 2
  br i1 %7713, label %7714, label %7722

; <label>:7714                                    ; preds = %7711
  %7715 = fcmp fast olt float %425, 0.000000e+00
  %7716 = call float @dx.op.unary.f32(i32 6, float %425)  ; FAbs(value)
  %7717 = fmul fast float %7716, 5.000000e-01
  %7718 = call float @dx.op.unary.f32(i32 7, float %7717)  ; Saturate(value)
  %7719 = select i1 %7715, float 0.000000e+00, float %7718
  %7720 = select i1 %7715, float %7718, float 0.000000e+00
  %7721 = fadd fast float %7718, 5.000000e-01
  br label %8066

; <label>:7722                                    ; preds = %7711
  %7723 = icmp eq i32 %7298, 36
  br i1 %7723, label %7724, label %7756

; <label>:7724                                    ; preds = %7722
  %7725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %44, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7726 = extractvalue %dx.types.CBufRet.i32 %7725, 0
  %7727 = and i32 %7726, 2048
  %7728 = icmp ne i32 %7727, 0
  %7729 = call float @dx.op.binary.f32(i32 35, float %1769, float %1770)  ; FMax(a,b)
  %7730 = call float @dx.op.binary.f32(i32 35, float %1768, float %7729)  ; FMax(a,b)
  %7731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %7732 = extractvalue %dx.types.CBufRet.f32 %7731, 1
  %7733 = fcmp fast oge float %7730, %7732
  %7734 = and i1 %7728, %7733
  br i1 %7734, label %7735, label %7741

; <label>:7735                                    ; preds = %7724
  %7736 = fsub fast float 1.000000e+00, %7317
  %7737 = fmul fast float %7736, 5.000000e-01
  %7738 = fadd fast float %7737, %7317
  %7739 = fmul fast float %7318, 5.000000e-01
  %7740 = fmul fast float %7319, 5.000000e-01
  br label %8066

; <label>:7741                                    ; preds = %7724
  %7742 = call float @dx.op.dot3.f32(i32 55, float %1721, float %1722, float %1723, float %1665, float %1666, float %1667)  ; Dot3(ax,ay,az,bx,by,bz)
  %7743 = and i32 %7726, 1024
  %7744 = icmp ne i32 %7743, 0
  %7745 = extractvalue %dx.types.CBufRet.f32 %7731, 2
  %7746 = fcmp fast ole float %7742, %7745
  %7747 = and i1 %7744, %7746
  br i1 %7747, label %7748, label %8066

; <label>:7748                                    ; preds = %7741
  %7749 = fsub fast float 1.000000e+00, %7317
  %7750 = fsub fast float 1.000000e+00, %7318
  %7751 = fmul fast float %7749, 5.000000e-01
  %7752 = fmul fast float %7750, 5.000000e-01
  %7753 = fadd fast float %7751, %7317
  %7754 = fadd fast float %7752, %7318
  %7755 = fmul fast float %7319, 5.000000e-01
  br label %8066

; <label>:7756                                    ; preds = %7722
  %7757 = icmp eq i32 %7298, 40
  br i1 %7757, label %7758, label %8001

; <label>:7758                                    ; preds = %7756
  %7759 = fmul fast float %100, %100
  %7760 = fmul fast float %101, %101
  %7761 = fadd fast float %7760, %7759
  %7762 = fmul fast float %102, %102
  %7763 = fadd fast float %7761, %7762
  %7764 = call float @dx.op.unary.f32(i32 24, float %7763)  ; Sqrt(value)
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = fcmp fast ogt float %7764, %7766
  %7768 = zext i1 %7767 to i32
  %7769 = extractvalue %dx.types.CBufRet.f32 %7765, 1
  %7770 = fcmp fast ogt float %7764, %7769
  %7771 = zext i1 %7770 to i32
  %7772 = add nuw nsw i32 %7771, %7768
  %7773 = extractvalue %dx.types.CBufRet.f32 %7765, 2
  %7774 = fcmp fast ogt float %7764, %7773
  %7775 = zext i1 %7774 to i32
  %7776 = add nuw nsw i32 %7772, %7775
  %7777 = icmp ult i32 %7776, 3
  %7778 = zext i1 %7777 to i32
  %7779 = shl nuw nsw i32 %7776, 2
  %7780 = add nuw nsw i32 %7779, 48
  %7781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %7780)  ; CBufferLoadLegacy(handle,regIndex)
  %7782 = extractvalue %dx.types.CBufRet.f32 %7781, 1
  %7783 = fcmp fast ogt float %7764, %7782
  %7784 = zext i1 %7783 to i32
  %7785 = or i32 %7779, 1
  %7786 = add nuw nsw i32 %7785, 48
  %7787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %7786)  ; CBufferLoadLegacy(handle,regIndex)
  %7788 = extractvalue %dx.types.CBufRet.f32 %7787, 1
  %7789 = fcmp fast ogt float %7764, %7788
  %7790 = zext i1 %7789 to i32
  %7791 = add nuw nsw i32 %7790, %7784
  %7792 = or i32 %7779, 2
  %7793 = add nuw nsw i32 %7792, 48
  %7794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %7793)  ; CBufferLoadLegacy(handle,regIndex)
  %7795 = extractvalue %dx.types.CBufRet.f32 %7794, 1
  %7796 = fcmp fast ogt float %7764, %7795
  %7797 = zext i1 %7796 to i32
  %7798 = add nuw nsw i32 %7791, %7797
  %7799 = call i32 @dx.op.binary.i32(i32 40, i32 %7798, i32 3)  ; UMin(a,b)
  %7800 = add i32 %7779, %7799
  %7801 = call i32 @dx.op.binary.i32(i32 40, i32 %7800, i32 12)  ; UMin(a,b)
  %7802 = add i32 %7801, 48
  %7803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %7802)  ; CBufferLoadLegacy(handle,regIndex)
  %7804 = extractvalue %dx.types.CBufRet.f32 %7803, 0
  %7805 = fcmp fast oge float %7764, %7804
  %7806 = zext i1 %7805 to i32
  %7807 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %7778)  ; UMin(a,b)
  %7808 = call i32 @dx.op.binary.i32(i32 40, i32 %7806, i32 %7807)  ; UMin(a,b)
  %7809 = fmul fast float %7288, 7.500000e-01
  %7810 = fadd fast float %7809, %7286
  %7811 = fcmp fast ult float %7283, %7810
  br i1 %7811, label %7851, label %7812

; <label>:7812                                    ; preds = %7758
  %7813 = uitofp i32 %7801 to float
  %7814 = fmul fast float %7813, 0x3FE3C6EF40000000
  %7815 = call float @dx.op.unary.f32(i32 22, float %7814)  ; Frc(value)
  %7816 = fadd fast float %7815, 0x3FE5555560000000
  %7817 = fadd fast float %7815, 0x3FD5555560000000
  %7818 = fsub fast float -0.000000e+00, %7815
  %7819 = fsub fast float -0.000000e+00, %7816
  %7820 = fsub fast float -0.000000e+00, %7817
  %7821 = fcmp fast oge float %7815, %7818
  %7822 = fcmp fast oge float %7816, %7819
  %7823 = fcmp fast oge float %7817, %7820
  %7824 = call float @dx.op.unary.f32(i32 6, float %7815)  ; FAbs(value)
  %7825 = call float @dx.op.unary.f32(i32 6, float %7816)  ; FAbs(value)
  %7826 = call float @dx.op.unary.f32(i32 6, float %7817)  ; FAbs(value)
  %7827 = call float @dx.op.unary.f32(i32 22, float %7824)  ; Frc(value)
  %7828 = call float @dx.op.unary.f32(i32 22, float %7825)  ; Frc(value)
  %7829 = call float @dx.op.unary.f32(i32 22, float %7826)  ; Frc(value)
  %7830 = fsub fast float -0.000000e+00, %7827
  %7831 = fsub fast float -0.000000e+00, %7828
  %7832 = fsub fast float -0.000000e+00, %7829
  %7833 = select i1 %7821, float %7827, float %7830
  %7834 = select i1 %7822, float %7828, float %7831
  %7835 = select i1 %7823, float %7829, float %7832
  %7836 = fmul fast float %7833, 6.000000e+00
  %7837 = fmul fast float %7834, 6.000000e+00
  %7838 = fmul fast float %7835, 6.000000e+00
  %7839 = fadd fast float %7836, -3.000000e+00
  %7840 = fadd fast float %7837, -3.000000e+00
  %7841 = fadd fast float %7838, -3.000000e+00
  %7842 = call float @dx.op.unary.f32(i32 6, float %7839)  ; FAbs(value)
  %7843 = call float @dx.op.unary.f32(i32 6, float %7840)  ; FAbs(value)
  %7844 = call float @dx.op.unary.f32(i32 6, float %7841)  ; FAbs(value)
  %7845 = fadd fast float %7842, -1.000000e+00
  %7846 = fadd fast float %7843, -1.000000e+00
  %7847 = fadd fast float %7844, -1.000000e+00
  %7848 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7849 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  %7850 = call float @dx.op.unary.f32(i32 7, float %7847)  ; Saturate(value)
  br label %7988

; <label>:7851                                    ; preds = %7758
  %7852 = fmul fast float %7288, 5.000000e-01
  %7853 = fadd fast float %7852, %7286
  %7854 = fcmp fast ult float %7283, %7853
  br i1 %7854, label %7881, label %7855

; <label>:7855                                    ; preds = %7851
  %7856 = add i32 %7808, 4
  %7857 = icmp eq i32 %7856, 0
  br i1 %7857, label %7988, label %7858

; <label>:7858                                    ; preds = %7855
  br label %7859

; <label>:7859                                    ; preds = %7859, %7858
  %7860 = phi float [ %7876, %7859 ], [ 0.000000e+00, %7858 ]
  %7861 = phi i32 [ %7877, %7859 ], [ 0, %7858 ]
  %7862 = add i32 %7801, 32
  %7863 = add i32 %7862, %7861
  %7864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %7863)  ; CBufferLoadLegacy(handle,regIndex)
  %7865 = extractvalue %dx.types.CBufRet.f32 %7864, 0
  %7866 = extractvalue %dx.types.CBufRet.f32 %7864, 1
  %7867 = extractvalue %dx.types.CBufRet.f32 %7864, 2
  %7868 = extractvalue %dx.types.CBufRet.f32 %7864, 3
  %7869 = fmul fast float %7865, %7764
  %7870 = fadd fast float %7869, %7866
  %7871 = call float @dx.op.unary.f32(i32 7, float %7870)  ; Saturate(value)
  %7872 = fmul fast float %7867, %7764
  %7873 = fadd fast float %7872, %7868
  %7874 = call float @dx.op.unary.f32(i32 7, float %7873)  ; Saturate(value)
  %7875 = call float @dx.op.binary.f32(i32 36, float %7871, float %7874)  ; FMin(a,b)
  %7876 = fadd fast float %7875, %7860
  %7877 = add nuw i32 %7861, 1
  %7878 = icmp eq i32 %7877, %7856
  br i1 %7878, label %7879, label %7859

; <label>:7879                                    ; preds = %7859
  %7880 = fmul float %7876, 2.500000e-01
  br label %7988

; <label>:7881                                    ; preds = %7851
  %7882 = fmul fast float %7288, 2.500000e-01
  %7883 = fadd fast float %7882, %7286
  %7884 = fcmp fast ult float %7283, %7883
  br i1 %7884, label %7984, label %7885

; <label>:7885                                    ; preds = %7881
  %7886 = add i32 %7801, 32
  %7887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 %7886)  ; CBufferLoadLegacy(handle,regIndex)
  %7888 = extractvalue %dx.types.CBufRet.f32 %7887, 0
  %7889 = extractvalue %dx.types.CBufRet.f32 %7887, 1
  %7890 = extractvalue %dx.types.CBufRet.f32 %7887, 2
  %7891 = extractvalue %dx.types.CBufRet.f32 %7887, 3
  %7892 = fmul fast float %7888, %7764
  %7893 = fadd fast float %7892, %7889
  %7894 = call float @dx.op.unary.f32(i32 7, float %7893)  ; Saturate(value)
  %7895 = fmul fast float %7890, %7764
  %7896 = fadd fast float %7895, %7891
  %7897 = call float @dx.op.unary.f32(i32 7, float %7896)  ; Saturate(value)
  %7898 = call float @dx.op.binary.f32(i32 36, float %7894, float %7897)  ; FMin(a,b)
  %7899 = uitofp i32 %7801 to float
  %7900 = fmul fast float %7899, 0x3FE3C6EF40000000
  %7901 = call float @dx.op.unary.f32(i32 22, float %7900)  ; Frc(value)
  %7902 = fadd fast float %7901, 0x3FE5555560000000
  %7903 = fadd fast float %7901, 0x3FD5555560000000
  %7904 = fsub fast float -0.000000e+00, %7901
  %7905 = fsub fast float -0.000000e+00, %7902
  %7906 = fsub fast float -0.000000e+00, %7903
  %7907 = fcmp fast oge float %7901, %7904
  %7908 = fcmp fast oge float %7902, %7905
  %7909 = fcmp fast oge float %7903, %7906
  %7910 = call float @dx.op.unary.f32(i32 6, float %7901)  ; FAbs(value)
  %7911 = call float @dx.op.unary.f32(i32 6, float %7902)  ; FAbs(value)
  %7912 = call float @dx.op.unary.f32(i32 6, float %7903)  ; FAbs(value)
  %7913 = call float @dx.op.unary.f32(i32 22, float %7910)  ; Frc(value)
  %7914 = call float @dx.op.unary.f32(i32 22, float %7911)  ; Frc(value)
  %7915 = call float @dx.op.unary.f32(i32 22, float %7912)  ; Frc(value)
  %7916 = fsub fast float -0.000000e+00, %7913
  %7917 = fsub fast float -0.000000e+00, %7914
  %7918 = fsub fast float -0.000000e+00, %7915
  %7919 = select i1 %7907, float %7913, float %7916
  %7920 = select i1 %7908, float %7914, float %7917
  %7921 = select i1 %7909, float %7915, float %7918
  %7922 = fmul fast float %7919, 6.000000e+00
  %7923 = fmul fast float %7920, 6.000000e+00
  %7924 = fmul fast float %7921, 6.000000e+00
  %7925 = fadd fast float %7922, -3.000000e+00
  %7926 = fadd fast float %7923, -3.000000e+00
  %7927 = fadd fast float %7924, -3.000000e+00
  %7928 = call float @dx.op.unary.f32(i32 6, float %7925)  ; FAbs(value)
  %7929 = call float @dx.op.unary.f32(i32 6, float %7926)  ; FAbs(value)
  %7930 = call float @dx.op.unary.f32(i32 6, float %7927)  ; FAbs(value)
  %7931 = fadd fast float %7928, -1.000000e+00
  %7932 = fadd fast float %7929, -1.000000e+00
  %7933 = fadd fast float %7930, -1.000000e+00
  %7934 = call float @dx.op.unary.f32(i32 7, float %7931)  ; Saturate(value)
  %7935 = call float @dx.op.unary.f32(i32 7, float %7932)  ; Saturate(value)
  %7936 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7937 = fadd fast float %7899, 1.000000e+00
  %7938 = fmul fast float %7937, 0x3FE3C6EF40000000
  %7939 = call float @dx.op.unary.f32(i32 22, float %7938)  ; Frc(value)
  %7940 = fadd fast float %7939, 0x3FE5555560000000
  %7941 = fadd fast float %7939, 0x3FD5555560000000
  %7942 = fsub fast float -0.000000e+00, %7939
  %7943 = fsub fast float -0.000000e+00, %7940
  %7944 = fsub fast float -0.000000e+00, %7941
  %7945 = fcmp fast oge float %7939, %7942
  %7946 = fcmp fast oge float %7940, %7943
  %7947 = fcmp fast oge float %7941, %7944
  %7948 = call float @dx.op.unary.f32(i32 6, float %7939)  ; FAbs(value)
  %7949 = call float @dx.op.unary.f32(i32 6, float %7940)  ; FAbs(value)
  %7950 = call float @dx.op.unary.f32(i32 6, float %7941)  ; FAbs(value)
  %7951 = call float @dx.op.unary.f32(i32 22, float %7948)  ; Frc(value)
  %7952 = call float @dx.op.unary.f32(i32 22, float %7949)  ; Frc(value)
  %7953 = call float @dx.op.unary.f32(i32 22, float %7950)  ; Frc(value)
  %7954 = fsub fast float -0.000000e+00, %7951
  %7955 = fsub fast float -0.000000e+00, %7952
  %7956 = fsub fast float -0.000000e+00, %7953
  %7957 = select i1 %7945, float %7951, float %7954
  %7958 = select i1 %7946, float %7952, float %7955
  %7959 = select i1 %7947, float %7953, float %7956
  %7960 = fmul fast float %7957, 6.000000e+00
  %7961 = fmul fast float %7958, 6.000000e+00
  %7962 = fmul fast float %7959, 6.000000e+00
  %7963 = fadd fast float %7960, -3.000000e+00
  %7964 = fadd fast float %7961, -3.000000e+00
  %7965 = fadd fast float %7962, -3.000000e+00
  %7966 = call float @dx.op.unary.f32(i32 6, float %7963)  ; FAbs(value)
  %7967 = call float @dx.op.unary.f32(i32 6, float %7964)  ; FAbs(value)
  %7968 = call float @dx.op.unary.f32(i32 6, float %7965)  ; FAbs(value)
  %7969 = fadd fast float %7966, -1.000000e+00
  %7970 = fadd fast float %7967, -1.000000e+00
  %7971 = fadd fast float %7968, -1.000000e+00
  %7972 = call float @dx.op.unary.f32(i32 7, float %7969)  ; Saturate(value)
  %7973 = call float @dx.op.unary.f32(i32 7, float %7970)  ; Saturate(value)
  %7974 = call float @dx.op.unary.f32(i32 7, float %7971)  ; Saturate(value)
  %7975 = fsub fast float %7972, %7934
  %7976 = fsub fast float %7973, %7935
  %7977 = fsub fast float %7974, %7936
  %7978 = fmul fast float %7975, %7898
  %7979 = fmul fast float %7976, %7898
  %7980 = fmul fast float %7977, %7898
  %7981 = fadd fast float %7978, %7934
  %7982 = fadd fast float %7979, %7935
  %7983 = fadd fast float %7980, %7936
  br label %7988

; <label>:7984                                    ; preds = %7881
  %7985 = icmp ne i32 %7808, 0
  %7986 = select i1 %7985, float 1.000000e+00, float 0.000000e+00
  %7987 = select i1 %7985, float 0.000000e+00, float 1.000000e+00
  br label %7988

; <label>:7988                                    ; preds = %7984, %7885, %7879, %7855, %7812
  %7989 = phi float [ %7848, %7812 ], [ %7981, %7885 ], [ %7986, %7984 ], [ 0.000000e+00, %7855 ], [ %7880, %7879 ]
  %7990 = phi float [ %7849, %7812 ], [ %7982, %7885 ], [ %7987, %7984 ], [ 0.000000e+00, %7855 ], [ %7880, %7879 ]
  %7991 = phi float [ %7850, %7812 ], [ %7983, %7885 ], [ 0.000000e+00, %7984 ], [ 0.000000e+00, %7855 ], [ %7880, %7879 ]
  %7992 = fsub fast float %7989, %7317
  %7993 = fsub fast float %7990, %7318
  %7994 = fsub fast float %7991, %7319
  %7995 = fmul fast float %7992, 5.000000e-01
  %7996 = fmul fast float %7993, 5.000000e-01
  %7997 = fmul fast float %7994, 5.000000e-01
  %7998 = fadd fast float %7995, %7317
  %7999 = fadd fast float %7996, %7318
  %8000 = fadd fast float %7997, %7319
  br label %8066

; <label>:8001                                    ; preds = %7756
  %8002 = icmp eq i32 %7298, 41
  br i1 %8002, label %8003, label %8058

; <label>:8003                                    ; preds = %8001
  %8004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %8005 = extractvalue %dx.types.CBufRet.i32 %8004, 0
  %8006 = icmp eq i32 %8005, 2
  %8007 = and i32 %1589, 2
  %8008 = icmp ne i32 %8007, 0
  %8009 = and i1 %8008, %8006
  %8010 = icmp eq i32 %8005, 3
  %8011 = and i32 %1589, 4
  %8012 = icmp ne i32 %8011, 0
  %8013 = and i1 %8012, %8010
  %8014 = or i1 %8013, %8009
  %8015 = icmp eq i32 %8005, 4
  %8016 = and i32 %1589, 8
  %8017 = icmp ne i32 %8016, 0
  %8018 = and i1 %8017, %8015
  %8019 = or i1 %8018, %8014
  %8020 = icmp eq i32 %8005, 5
  %8021 = and i32 %1589, 16
  %8022 = icmp ne i32 %8021, 0
  %8023 = and i1 %8022, %8020
  %8024 = or i1 %8023, %8019
  %8025 = icmp eq i32 %8005, 6
  %8026 = and i32 %1589, 32
  %8027 = icmp ne i32 %8026, 0
  %8028 = and i1 %8027, %8025
  %8029 = or i1 %8028, %8024
  %8030 = icmp eq i32 %8005, 8
  %8031 = and i32 %1589, 64
  %8032 = icmp ne i32 %8031, 0
  %8033 = and i1 %8032, %8030
  %8034 = or i1 %8033, %8029
  %8035 = icmp eq i32 %8005, 9
  %8036 = and i32 %1589, 128
  %8037 = icmp ne i32 %8036, 0
  %8038 = and i1 %8037, %8035
  %8039 = or i1 %8038, %8034
  %8040 = icmp eq i32 %8005, 11
  %8041 = and i32 %1589, 160
  %8042 = icmp ne i32 %8041, 0
  %8043 = and i1 %8042, %8040
  %8044 = or i1 %8043, %8039
  %8045 = icmp eq i32 %8005, 13
  %8046 = and i32 %1589, 256
  %8047 = icmp ne i32 %8046, 0
  %8048 = and i1 %8047, %8045
  %8049 = or i1 %8048, %8044
  %8050 = icmp eq i32 %8005, 14
  %8051 = and i32 %1589, 512
  %8052 = icmp ne i32 %8051, 0
  %8053 = and i1 %8052, %8050
  %8054 = or i1 %8053, %8049
  %8055 = select i1 %8054, float 5.000000e-01, float %7317
  %8056 = select i1 %8054, float 0x3FB99999A0000000, float %7318
  %8057 = select i1 %8054, float 0x3FB99999A0000000, float %7319
  br label %8066

; <label>:8058                                    ; preds = %8001
  %8059 = icmp eq i32 %7298, 45
  br i1 %8059, label %8060, label %8066

; <label>:8060                                    ; preds = %8058
  %8061 = fcmp fast ogt float %1590, %1591
  %8062 = fsub fast float %1590, %1591
  %8063 = call float @dx.op.unary.f32(i32 6, float %8062)  ; FAbs(value)
  %8064 = select i1 %8061, float %8063, float 0.000000e+00
  %8065 = select i1 %8061, float 0.000000e+00, float %8063
  br label %8066

; <label>:8066                                    ; preds = %8060, %8058, %8003, %7988, %7748, %7741, %7735, %7714, %7709, %7707, %7681, %7653, %7649, %7587, %7545, %7490, %7485, %7471, %7429, %7422, %7415, %7411, %7409, %7407, %7405, %7403, %7401, %7399, %7397, %7395, %7393, %7379, %7375, %7373, %7371, %7364, %7362, %7323, %7316
  %8067 = phi float [ %7359, %7323 ], [ %7317, %7364 ], [ %7388, %7379 ], [ %7394, %7393 ], [ %7419, %7415 ], [ %7487, %7485 ], [ %7540, %7490 ], [ %7646, %7587 ], [ %7673, %7653 ], [ %7701, %7681 ], [ %7317, %7707 ], [ %7721, %7714 ], [ %7738, %7735 ], [ %7753, %7748 ], [ %7317, %7741 ], [ %7998, %7988 ], [ %8055, %8003 ], [ %8064, %8060 ], [ %7317, %8058 ], [ %7317, %7316 ], [ 0.000000e+00, %7371 ], [ 0.000000e+00, %7401 ], [ 0.000000e+00, %7409 ], [ 0.000000e+00, %7411 ], [ 0.000000e+00, %7422 ], [ 1.000000e+00, %7471 ], [ 0.000000e+00, %7429 ], [ 0.000000e+00, %7545 ], [ 2.500000e-01, %7709 ], [ 0.000000e+00, %7362 ], [ %300, %7373 ], [ %315, %7375 ], [ %355, %7395 ], [ %368, %7397 ], [ %1583, %7399 ], [ %1584, %7403 ], [ %1585, %7405 ], [ %1592, %7407 ], [ 0.000000e+00, %7649 ]
  %8068 = phi float [ %7360, %7323 ], [ %7318, %7364 ], [ %7390, %7379 ], [ %7394, %7393 ], [ %7420, %7415 ], [ %7488, %7485 ], [ %7541, %7490 ], [ %7647, %7587 ], [ %7675, %7653 ], [ %7703, %7681 ], [ %7318, %7707 ], [ %7719, %7714 ], [ %7739, %7735 ], [ %7754, %7748 ], [ %7318, %7741 ], [ %7999, %7988 ], [ %8056, %8003 ], [ %8065, %8060 ], [ %7318, %8058 ], [ %7318, %7316 ], [ 0.000000e+00, %7371 ], [ 0.000000e+00, %7401 ], [ 1.000000e+00, %7409 ], [ 0.000000e+00, %7411 ], [ 0.000000e+00, %7422 ], [ 0.000000e+00, %7471 ], [ 1.000000e+00, %7429 ], [ 1.000000e+00, %7545 ], [ 2.500000e-01, %7709 ], [ 0.000000e+00, %7362 ], [ %300, %7373 ], [ %315, %7375 ], [ %355, %7395 ], [ %368, %7397 ], [ %1583, %7399 ], [ %1584, %7403 ], [ %1585, %7405 ], [ %1592, %7407 ], [ 0.000000e+00, %7649 ]
  %8069 = phi float [ %7361, %7323 ], [ %7319, %7364 ], [ 0.000000e+00, %7379 ], [ %7394, %7393 ], [ %7421, %7415 ], [ %7489, %7485 ], [ %7542, %7490 ], [ %7648, %7587 ], [ %7678, %7653 ], [ %7706, %7681 ], [ %7319, %7707 ], [ %7720, %7714 ], [ %7740, %7735 ], [ %7755, %7748 ], [ %7319, %7741 ], [ %8000, %7988 ], [ %8057, %8003 ], [ 0.000000e+00, %8060 ], [ %7319, %8058 ], [ %7319, %7316 ], [ 0.000000e+00, %7371 ], [ 0.000000e+00, %7401 ], [ 1.000000e+00, %7409 ], [ 0.000000e+00, %7411 ], [ 0.000000e+00, %7422 ], [ 1.000000e+00, %7471 ], [ 1.000000e+00, %7429 ], [ 1.000000e+00, %7545 ], [ 2.500000e-01, %7709 ], [ 0.000000e+00, %7362 ], [ %300, %7373 ], [ %315, %7375 ], [ %355, %7395 ], [ %368, %7397 ], [ %1583, %7399 ], [ %1584, %7403 ], [ %1585, %7405 ], [ %1592, %7407 ], [ 0.000000e+00, %7649 ]
  %8070 = fadd fast float %1607, 0x3FE3C6EF40000000
  %8071 = call float @dx.op.unary.f32(i32 22, float %8070)  ; Frc(value)
  %8072 = call float @dx.op.unary.f32(i32 23, float %8067)  ; Log(value)
  %8073 = fadd fast float %8072, -7.000000e+00
  %8074 = call float @dx.op.unary.f32(i32 21, float %8073)  ; Exp(value)
  %8075 = fmul fast float %8071, 2.000000e+00
  %8076 = fadd fast float %8075, -1.000000e+00
  %8077 = fmul fast float %8074, %8076
  %8078 = fcmp fast ogt float %8067, 0.000000e+00
  %8079 = select i1 %8078, float %8077, float 0.000000e+00
  %8080 = fadd fast float %8079, %8067
  %8081 = fadd fast float %1607, 0x3FF3C6EF40000000
  %8082 = call float @dx.op.unary.f32(i32 22, float %8081)  ; Frc(value)
  %8083 = call float @dx.op.unary.f32(i32 23, float %8068)  ; Log(value)
  %8084 = fadd fast float %8083, -7.000000e+00
  %8085 = call float @dx.op.unary.f32(i32 21, float %8084)  ; Exp(value)
  %8086 = fmul fast float %8082, 2.000000e+00
  %8087 = fadd fast float %8086, -1.000000e+00
  %8088 = fmul fast float %8085, %8087
  %8089 = fcmp fast ogt float %8068, 0.000000e+00
  %8090 = select i1 %8089, float %8088, float 0.000000e+00
  %8091 = fadd fast float %8090, %8068
  %8092 = fadd fast float %1607, 0x3FFDAA66E0000000
  %8093 = call float @dx.op.unary.f32(i32 22, float %8092)  ; Frc(value)
  %8094 = call float @dx.op.unary.f32(i32 23, float %8069)  ; Log(value)
  %8095 = fadd fast float %8094, -6.000000e+00
  %8096 = call float @dx.op.unary.f32(i32 21, float %8095)  ; Exp(value)
  %8097 = fmul fast float %8093, 2.000000e+00
  %8098 = fadd fast float %8097, -1.000000e+00
  %8099 = fmul fast float %8096, %8098
  %8100 = fcmp fast ogt float %8069, 0.000000e+00
  %8101 = select i1 %8100, float %8099, float 0.000000e+00
  %8102 = fadd fast float %8101, %8069
  %8103 = call float @dx.op.binary.f32(i32 36, float %8080, float 3.225500e+04)  ; FMin(a,b)
  %8104 = call float @dx.op.binary.f32(i32 36, float %8091, float 3.225500e+04)  ; FMin(a,b)
  %8105 = call float @dx.op.binary.f32(i32 36, float %8102, float 3.225500e+04)  ; FMin(a,b)
  %8106 = call float @dx.op.binary.f32(i32 36, float %7274, float 3.225500e+04)  ; FMin(a,b)
  %8107 = call float @dx.op.binary.f32(i32 36, float %7275, float 3.225500e+04)  ; FMin(a,b)
  %8108 = call float @dx.op.binary.f32(i32 36, float %7276, float 3.225500e+04)  ; FMin(a,b)
  %8109 = fmul fast float %8103, %7277
  %8110 = fmul fast float %8104, %7278
  %8111 = fmul fast float %8105, %7279
  %8112 = fadd fast float %8106, %8109
  %8113 = fadd fast float %8107, %8110
  %8114 = fadd fast float %8108, %8111
  %8115 = select i1 %7302, float 0.000000e+00, float %8103
  %8116 = select i1 %7302, float 0.000000e+00, float %8104
  %8117 = select i1 %7302, float 0.000000e+00, float %8105
  %8118 = select i1 %7302, float %8103, float %8112
  %8119 = or i1 %7302, %1852
  %8120 = select i1 %8119, float %8104, float %8113
  %8121 = or i1 %7302, %1852
  %8122 = select i1 %8121, float %8105, float %8114
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %1771, i32 %1777, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %8118)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %8120)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %8122)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %8115)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %8116)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %8117)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:8123                                    ; preds = %6431
  %8124 = fcmp fast olt float %1800, %6414
  br i1 %8124, label %6417, label %8125

; <label>:8125                                    ; preds = %8123
  %8126 = fcmp fast olt float %1800, %6415
  br i1 %8126, label %6417, label %6620

; <label>:8127                                    ; preds = %6511
  %8128 = fcmp fast olt float %56, 5.120000e+02
  br i1 %8128, label %6497, label %8129

; <label>:8129                                    ; preds = %8127
  %8130 = fcmp fast olt float %56, 1.024000e+03
  br i1 %8130, label %6497, label %8131

; <label>:8131                                    ; preds = %8129
  %8132 = fcmp fast olt float %56, 1.536000e+03
  br i1 %8132, label %6497, label %8133

; <label>:8133                                    ; preds = %8131
  %8134 = fcmp fast olt float %56, 2.048000e+03
  br i1 %8134, label %6497, label %8135

; <label>:8135                                    ; preds = %8133
  %8136 = fcmp fast olt float %56, 3.072000e+03
  br i1 %8136, label %6497, label %8137

; <label>:8137                                    ; preds = %8135
  %8138 = fcmp fast olt float %56, 4.096000e+03
  br i1 %8138, label %6497, label %8139

; <label>:8139                                    ; preds = %8137
  %8140 = fcmp fast olt float %56, 6.144000e+03
  br i1 %8140, label %6497, label %8141

; <label>:8141                                    ; preds = %8139
  %8142 = fcmp fast olt float %56, 8.192000e+03
  br i1 %8142, label %6497, label %6620

; <label>:8143                                    ; preds = %6543
  %8144 = fcmp fast olt float %6271, %6526
  br i1 %8144, label %6529, label %8145

; <label>:8145                                    ; preds = %8143
  %8146 = fcmp fast olt float %6271, %6527
  br i1 %8146, label %6529, label %6620
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!60}
!dx.entryPoints = !{!61}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !46, !50, !54}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!20 = !{i32 13, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!21 = !{i32 14, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!22 = !{i32 15, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !23}
!23 = !{i32 0, i32 5}
!24 = !{i32 16, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!32 = !{i32 24, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!38 = !{i32 30, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i32 0, !7}
!46 = !{!47, !48}
!47 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!48 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !49}
!49 = !{i32 1, i32 1144}
!50 = !{!51, !52, !53}
!51 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!52 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!53 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!54 = !{!55, !56, !57, !58, !59}
!55 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!56 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!57 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!58 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!59 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!60 = !{[17 x i32] [i32 15, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 34, i32 68]}
!61 = !{void ()* @ps_main, !"ps_main", !62, !4, !76}
!62 = !{!63, !72, null}
!63 = !{!64, !67, !69, !70, !71}
!64 = !{i32 0, !"SV_Position", i8 9, i8 3, !65, i8 4, i32 1, i8 4, i32 0, i8 0, !66}
!65 = !{i32 0}
!66 = !{i32 3, i32 15}
!67 = !{i32 1, !"NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 1, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 2, !"DEBUG_VALUE", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 2, i8 0, null}
!70 = !{i32 3, !"WIREFRAME_COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!71 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !65, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73, !74}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !65, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!74 = !{i32 1, !"SV_Target", i8 9, i8 16, !75, i8 0, i32 1, i8 4, i32 1, i8 0, !66}
!75 = !{i32 1}
!76 = !{i32 0, i64 24}
!77 = !{!78, !78, i64 0}
!78 = !{!"float", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!82, !84, !85}
!82 = distinct !{!82, !83, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!83 = distinct !{!83, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!84 = distinct !{!84, !83, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!85 = distinct !{!85, !83, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!86 = !{!87, !89, !90, !91}
!87 = distinct !{!87, !88, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!88 = distinct !{!88, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!89 = distinct !{!89, !88, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!90 = distinct !{!90, !88, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!91 = distinct !{!91, !88, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!92 = distinct !{!92, !93}
!93 = !{!"llvm.loop.unroll.disable"}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}
!95 = distinct !{!95, !"dx.controlflow.hints", i32 1}
!96 = distinct !{!96, !"dx.controlflow.hints", i32 1}
!97 = distinct !{!97, !"dx.controlflow.hints", i32 1}
!98 = distinct !{!98, !"dx.controlflow.hints", i32 1}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !93}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}

