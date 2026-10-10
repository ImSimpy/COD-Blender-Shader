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
; shader hash: 1dd371c300e094464f6be0f586f5ac29
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
; cbuffer 
; {
;
;   [32 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB3            cb0     1
;                                   sampler      NA          NA      S0             s7     4
;                                   sampler      NA          NA      S1             s1     1
;                                   sampler      NA          NA      S2             s2     1
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space4unbounded
;                                   texture     f32          2d      T1     t69,space2     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32          2d      T4     t58,space2     1
;                                   texture     f32          2d      T5     t59,space2     1
;                                   texture     f32          2d      T6     t61,space2     1
;                                   texture    byte         r/o      T7     t45,space1     1
;                                   texture     f32     2darray      T8     t16,space2     1
;                                   texture     f32          3d      T9     t15,space2     1
;                                   texture     f32          2d     T10     t13,space2     1
;                                   texture     u32          2d     T11     t17,space2     1
;                                   texture     f32          3d     T12     t18,space2     1
;                                   texture    byte         r/o     T13      t3,space1     1
;                                   texture    byte         r/o     T14      t4,space1     1
;                                   texture    byte         r/o     T15      t5,space1     1
;                                   texture    byte         r/o     T16      t6,space1     1
;                                   texture     f32          2d     T17     t37,space2     1
;                                   texture     f32          2d     T18             t1     1
;                                   texture     f32     2darray     T19     t49,space2     1
;                                   texture     f32     2darray     T20     t35,space2     1
;                                   texture     f32          3d     T21     t31,space2     1
;                                   texture    byte         r/o     T22     t10,space1     1
;                                   texture    byte         r/o     T23      t1,space1     1
;                                   texture     f32          1d     T24     t32,space2     1
;                                   texture     f32          3d     T25     t82,space2     1
;                                   texture     f32     2darray     T26      t8,space2     1
;                                   texture    byte         r/o     T27     t68,space1     1
;                                   texture     f32          2d     T28      t0,space2     1
;                                   texture    byte         r/o     T29     t11,space1     1
;                                   texture    byte         r/o     T30     t13,space1     1
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
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
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
%perPrim = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4
@"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [33 x float] [float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [15 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = fmul fast float %51, %46
  %53 = fmul fast float %51, %47
  %54 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %55 = call float @dx.op.unary.f32(i32 25, float %54)  ; Rsqrt(value)
  %56 = fmul fast float %55, %43
  %57 = fmul fast float %55, %44
  %58 = fmul fast float %55, %45
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %52, 2.000000e+00
  %63 = fmul fast float %62, %60
  %64 = fmul fast float %53, 2.000000e+00
  %65 = fmul fast float %64, %61
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %66, %69
  %73 = fmul fast float %66, %70
  %74 = fmul fast float %66, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %67, %76
  %80 = fmul fast float %67, %77
  %81 = fmul fast float %67, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fadd fast float %79, %83
  %87 = fadd fast float %86, %72
  %88 = fadd fast float %80, %84
  %89 = fadd fast float %88, %73
  %90 = fadd fast float %81, %85
  %91 = fadd fast float %90, %74
  %92 = fmul fast float %87, %49
  %93 = fmul fast float %89, %49
  %94 = fmul fast float %91, %49
  %95 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %96 = shl i32 %95, 16
  %97 = or i32 %96, %95
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 3
  %100 = bitcast float %99 to i32
  %101 = mul i32 %100, 928
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = or i32 %101, 24
  %105 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %104, i32 undef)  ; BufferLoad(srv,index,wot)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = extractvalue %dx.types.ResRet.f32 %105, 1
  %108 = extractvalue %dx.types.ResRet.f32 %105, 2
  %109 = extractvalue %dx.types.ResRet.f32 %105, 3
  %110 = add i32 %101, 40
  %111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.f32 %111, 0
  %113 = add i32 %101, 72
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 1
  %116 = add i32 %101, 564
  %117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %116, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 1
  %119 = add i32 %101, 580
  %120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 1
  %122 = add i32 %101, 596
  %123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %122, i32 undef)  ; BufferLoad(srv,index,wot)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 1
  %125 = add i32 %101, 696
  %126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %125, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.f32 %126, 0
  %128 = extractvalue %dx.types.ResRet.f32 %126, 1
  %129 = add i32 %101, 708
  %130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %129, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 1
  %132 = add i32 %101, 812
  %133 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %132, i32 undef)  ; BufferLoad(srv,index,wot)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = add i32 %101, 852
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = add i32 %101, 860
  %139 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %138, i32 undef)  ; BufferLoad(srv,index,wot)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = extractvalue %dx.types.ResRet.f32 %139, 1
  %142 = extractvalue %dx.types.ResRet.f32 %139, 2
  %143 = and i32 %103, 512
  %144 = call float @dx.op.unary.f32(i32 7, float %124)  ; Saturate(value)
  %145 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %144)  ; FMax(a,b)
  %146 = icmp ne i32 %143, 0
  %147 = icmp ne i32 %137, 0
  %148 = and i1 %146, %147
  br i1 %148, label %149, label %216

; <label>:149                                     ; preds = %0
  %150 = extractvalue %dx.types.ResRet.f32 %120, 3
  %151 = extractvalue %dx.types.ResRet.f32 %120, 2
  %152 = extractvalue %dx.types.ResRet.f32 %120, 0
  %153 = extractvalue %dx.types.ResRet.f32 %117, 3
  %154 = extractvalue %dx.types.ResRet.f32 %117, 2
  %155 = extractvalue %dx.types.ResRet.f32 %117, 0
  %156 = add i32 %137, 0
  %157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %156, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = extractvalue %dx.types.CBufRet.f32 %160, 1
  %163 = fadd fast float %161, %92
  %164 = fadd fast float %162, %93
  %165 = fmul fast float %163, %118
  %166 = fmul fast float %164, %118
  %167 = fmul fast float %159, %154
  %168 = fmul fast float %159, %153
  %169 = fadd fast float %165, %167
  %170 = fadd fast float %166, %168
  %171 = fmul fast float %163, %121
  %172 = fmul fast float %164, %121
  %173 = fmul fast float %159, %151
  %174 = fmul fast float %159, %150
  %175 = fadd fast float %171, %173
  %176 = fadd fast float %172, %174
  %177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %157, %dx.types.Handle %177, float %169, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = extractvalue %dx.types.ResRet.f32 %178, 2
  %182 = extractvalue %dx.types.ResRet.f32 %178, 3
  %183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %157, %dx.types.Handle %177, float %175, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = extractvalue %dx.types.ResRet.f32 %183, 3
  %188 = fmul fast float %179, %140
  %189 = fadd fast float %188, %141
  %190 = call float @dx.op.unary.f32(i32 7, float %189)  ; Saturate(value)
  %191 = fadd fast float %180, %182
  %192 = fmul fast float %191, %142
  %193 = fsub fast float %192, %142
  %194 = fsub fast float %180, %182
  %195 = fmul fast float %184, %140
  %196 = fadd fast float %195, %141
  %197 = call float @dx.op.unary.f32(i32 7, float %196)  ; Saturate(value)
  %198 = fadd fast float %185, %187
  %199 = fmul fast float %198, %142
  %200 = fsub fast float %199, %142
  %201 = fsub fast float %185, %187
  %202 = fmul fast float %193, %155
  %203 = fmul fast float %194, %155
  %204 = fmul fast float %200, %152
  %205 = fmul fast float %201, %152
  %206 = fadd fast float %204, %202
  %207 = fadd fast float %205, %203
  %208 = fmul fast float %207, %142
  %209 = fmul fast float %181, %155
  %210 = fmul fast float %186, %152
  %211 = fmul fast float %190, %155
  %212 = fmul fast float %197, %152
  %213 = fadd fast float %212, %211
  %214 = fadd fast float %209, 1.000000e+00
  %215 = fadd fast float %214, %210
  br label %216

; <label>:216                                     ; preds = %149, %0
  %217 = phi float [ %206, %149 ], [ 0.000000e+00, %0 ]
  %218 = phi float [ %208, %149 ], [ 0.000000e+00, %0 ]
  %219 = phi float [ %215, %149 ], [ 1.000000e+00, %0 ]
  %220 = phi float [ %213, %149 ], [ %112, %0 ]
  %221 = call float @dx.op.binary.f32(i32 35, float %131, float 0.000000e+00)  ; FMax(a,b)
  %222 = fmul fast float %221, %127
  %223 = fadd fast float %222, %128
  %224 = call float @dx.op.unary.f32(i32 7, float %223)  ; Saturate(value)
  %225 = fmul fast float %224, %145
  %226 = and i32 %103, 2
  %227 = and i32 %103, 64
  %228 = and i32 %103, 8
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %246, label %230

; <label>:230                                     ; preds = %216
  %231 = fadd fast float %134, 1.000000e+00
  %232 = fmul fast float %145, %231
  %233 = fsub fast float %232, %134
  %234 = fsub fast float %231, %233
  %235 = call float @dx.op.unary.f32(i32 7, float %234)  ; Saturate(value)
  %236 = fsub fast float 1.000000e+00, %232
  %237 = call float @dx.op.unary.f32(i32 7, float %236)  ; Saturate(value)
  %238 = fsub fast float %235, %237
  %239 = fsub fast float -0.000000e+00, %237
  %240 = fdiv fast float %239, %238
  %241 = call float @dx.op.unary.f32(i32 7, float %240)  ; Saturate(value)
  %242 = fmul fast float %241, 2.000000e+00
  %243 = fsub fast float 3.000000e+00, %242
  %244 = fmul fast float %241, %241
  %245 = fmul fast float %244, %243
  br label %246

; <label>:246                                     ; preds = %230, %216
  %247 = phi float [ %245, %230 ], [ 0.000000e+00, %216 ]
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %250 = fmul fast float %249, %247
  %251 = call float @dx.op.unary.f32(i32 7, float %250)  ; Saturate(value)
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 2
  %254 = fcmp fast oge float %115, %253
  %255 = and i32 %95, 65535
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %97, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fadd fast float %256, %106
  %260 = fadd fast float %258, %107
  %261 = fadd fast float %256, %108
  %262 = fadd fast float %258, %109
  %263 = call i32 @dx.op.legacyF32ToF16(i32 130, float %259)  ; LegacyF32ToF16(value)
  %264 = call i32 @dx.op.legacyF32ToF16(i32 130, float %260)  ; LegacyF32ToF16(value)
  %265 = shl i32 %264, 16
  %266 = or i32 %265, %263
  %267 = call i32 @dx.op.legacyF32ToF16(i32 130, float %261)  ; LegacyF32ToF16(value)
  %268 = call i32 @dx.op.legacyF32ToF16(i32 130, float %262)  ; LegacyF32ToF16(value)
  %269 = shl i32 %268, 16
  %270 = or i32 %269, %267
  %271 = fadd fast float %256, %219
  %272 = fadd fast float %258, %220
  %273 = call i32 @dx.op.legacyF32ToF16(i32 130, float %271)  ; LegacyF32ToF16(value)
  %274 = call i32 @dx.op.legacyF32ToF16(i32 130, float %272)  ; LegacyF32ToF16(value)
  %275 = shl i32 %274, 16
  %276 = or i32 %275, %273
  %277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %278 = extractvalue %dx.types.CBufRet.f32 %277, 2
  %279 = fmul fast float %278, 0x3FE3C6EF40000000
  %280 = frem fast float %52, 2.560000e+02
  %281 = frem fast float %53, 2.560000e+02
  %282 = fptoui float %280 to i32
  %283 = fptoui float %281 to i32
  %284 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %282, i32 %283, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %285 = extractvalue %dx.types.ResRet.f32 %284, 0
  %286 = extractvalue %dx.types.ResRet.f32 %284, 1
  %287 = fadd fast float %285, %279
  %288 = fadd fast float %286, %279
  %289 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  %290 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %291 = fcmp fast ogt float %58, 0.000000e+00
  %292 = fcmp fast olt float %58, 0.000000e+00
  %293 = zext i1 %291 to i32
  %294 = zext i1 %292 to i32
  %295 = sub nsw i32 %293, %294
  %296 = sitofp i32 %295 to float
  %297 = fadd fast float %296, %58
  %298 = fdiv fast float -1.000000e+00, %297
  %299 = fmul fast float %56, %57
  %300 = fmul fast float %299, %298
  %301 = fmul fast float %56, %56
  %302 = fmul fast float %301, %296
  %303 = fmul fast float %302, %298
  %304 = fadd fast float %303, 1.000000e+00
  %305 = fmul fast float %300, %296
  %306 = fmul fast float %296, %56
  %307 = fmul fast float %57, %57
  %308 = fmul fast float %307, %298
  %309 = fadd fast float %308, %296
  %310 = and i32 %263, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %266, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = and i32 %267, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %270, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = and i32 %273, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %276, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = call float @dx.op.dot2.f32(i32 54, float %217, float %218, float %217, float %218)  ; Dot2(ax,ay,bx,by)
  %323 = fmul fast float %322, 0x3FE3333340000000
  %324 = fsub fast float 1.000000e+00, %323
  %325 = call float @dx.op.dot3.f32(i32 55, float %217, float %218, float %324, float %217, float %218, float %324)  ; Dot3(ax,ay,az,bx,by,bz)
  %326 = call float @dx.op.unary.f32(i32 25, float %325)  ; Rsqrt(value)
  %327 = fmul fast float %326, %217
  %328 = fmul fast float %326, %218
  %329 = fmul fast float %324, %326
  %330 = fmul fast float %329, %56
  %331 = fmul fast float %329, %57
  %332 = fmul fast float %329, %58
  %333 = fmul fast float %327, %304
  %334 = fmul fast float %327, %305
  %335 = fmul fast float %327, %306
  %336 = fadd fast float %330, %333
  %337 = fadd fast float %331, %334
  %338 = fsub fast float %332, %335
  %339 = fmul fast float %328, %300
  %340 = fmul fast float %328, %309
  %341 = fmul fast float %328, %57
  %342 = fadd fast float %336, %339
  %343 = fadd fast float %337, %340
  %344 = fsub fast float %338, %341
  %345 = call float @dx.op.dot3.f32(i32 55, float %342, float %343, float %344, float %342, float %343, float %344)  ; Dot3(ax,ay,az,bx,by,bz)
  %346 = call float @dx.op.unary.f32(i32 25, float %345)  ; Rsqrt(value)
  %347 = fmul fast float %342, %346
  %348 = fmul fast float %343, %346
  %349 = fmul fast float %344, %346
  %350 = fadd fast float %317, 0xBFB99999A0000000
  %351 = call float @dx.op.unary.f32(i32 7, float %350)  ; Saturate(value)
  %352 = fmul fast float %351, 0x3FF1C71C80000000
  %353 = call float @dx.op.binary.f32(i32 36, float %317, float 0x3FB99999A0000000)  ; FMin(a,b)
  %354 = fsub fast float 1.000000e+00, %352
  %355 = call float @dx.op.unary.f32(i32 7, float %354)  ; Saturate(value)
  %356 = fmul fast float %355, %311
  %357 = fmul fast float %355, %313
  %358 = fmul fast float %355, %315
  %359 = call float @dx.op.unary.f32(i32 7, float %356)  ; Saturate(value)
  %360 = call float @dx.op.unary.f32(i32 7, float %357)  ; Saturate(value)
  %361 = call float @dx.op.unary.f32(i32 7, float %358)  ; Saturate(value)
  %362 = fmul fast float %352, %311
  %363 = fmul fast float %352, %313
  %364 = fmul fast float %352, %315
  %365 = fadd fast float %362, %353
  %366 = fadd fast float %363, %353
  %367 = fadd fast float %364, %353
  %368 = call float @dx.op.unary.f32(i32 7, float %365)  ; Saturate(value)
  %369 = call float @dx.op.unary.f32(i32 7, float %366)  ; Saturate(value)
  %370 = call float @dx.op.unary.f32(i32 7, float %367)  ; Saturate(value)
  %371 = fmul fast float %369, 0x401CF23780000000
  %372 = fadd fast float %371, 0x3FF32641C0000000
  %373 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %374 = call float @dx.op.unary.f32(i32 25, float %373)  ; Rsqrt(value)
  %375 = fmul fast float %374, %92
  %376 = fmul fast float %374, %93
  %377 = fmul fast float %374, %94
  %378 = fdiv fast float 1.000000e+00, %372
  %379 = fadd fast float %378, -1.000000e+00
  %380 = fadd fast float %378, 1.000000e+00
  %381 = fdiv fast float %379, %380
  %382 = fmul fast float %381, %381
  %383 = call float @dx.op.dot3.f32(i32 55, float %375, float %376, float %377, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %384 = call float @dx.op.binary.f32(i32 35, float %383, float -1.000000e+00)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 36, float %384, float 1.000000e+00)  ; FMin(a,b)
  %386 = fmul fast float %378, %378
  %387 = fmul fast float %385, %385
  %388 = fsub fast float 1.000000e+00, %387
  %389 = fmul fast float %386, %388
  %390 = fsub fast float 1.000000e+00, %389
  %391 = fcmp fast olt float %378, 1.000000e+00
  %392 = select i1 %391, float %387, float %390
  %393 = fcmp fast ogt float %390, 0.000000e+00
  %394 = fsub fast float 1.000000e+00, %382
  %395 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %396 = fsub fast float 1.000000e+00, %395
  %397 = call float @dx.op.unary.f32(i32 23, float %396)  ; Log(value)
  %398 = fmul fast float %397, 5.000000e+00
  %399 = call float @dx.op.unary.f32(i32 21, float %398)  ; Exp(value)
  %400 = fmul fast float %399, %394
  %401 = fadd fast float %400, %382
  %402 = select i1 %393, float %401, float 1.000000e+00
  %403 = fsub fast float 1.000000e+00, %368
  %404 = fsub fast float 1.000000e+00, %369
  %405 = fsub fast float 1.000000e+00, %370
  %406 = fmul fast float %402, %403
  %407 = fmul fast float %402, %404
  %408 = fmul fast float %402, %405
  %409 = fadd fast float %406, %368
  %410 = fadd fast float %407, %369
  %411 = fadd fast float %408, %370
  %412 = fptoui float %52 to i32
  %413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %414 = extractvalue %dx.types.CBufRet.f32 %413, 0
  %415 = fmul fast float %414, 5.000000e-01
  %416 = fptoui float %415 to i32
  %417 = icmp eq i32 %412, %416
  %418 = fptoui float %53 to i32
  %419 = extractvalue %dx.types.CBufRet.f32 %413, 1
  %420 = fmul fast float %419, 5.000000e-01
  %421 = fptoui float %420 to i32
  %422 = icmp eq i32 %418, %421
  %423 = and i1 %417, %422
  br i1 %423, label %424, label %443

; <label>:424                                     ; preds = %246
  %425 = call float @dx.op.binary.f32(i32 35, float %410, float %411)  ; FMax(a,b)
  %426 = call float @dx.op.binary.f32(i32 35, float %409, float %425)  ; FMax(a,b)
  %427 = fsub fast float 1.000000e+00, %426
  %428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %429 = extractvalue %dx.types.CBufRet.f32 %428, 0
  %430 = extractvalue %dx.types.CBufRet.f32 %428, 1
  %431 = extractvalue %dx.types.CBufRet.f32 %428, 2
  %432 = fadd fast float %429, %92
  %433 = fadd fast float %430, %93
  %434 = fadd fast float %431, %94
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = bitcast float %438 to i32
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 199)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 0
  %442 = extractvalue %dx.types.CBufRet.f32 %440, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %432, float %433, float %434, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %52, float %53, float %48, float %49, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %441, float %442, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float -1.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %434, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float -1.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float -1.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %436, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %402, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %409, float %410, float %411, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %427, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 %439, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %225, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %443

; <label>:443                                     ; preds = %424, %246
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = fmul fast float %445, %321
  %447 = call float @dx.op.unary.f32(i32 7, float %446)  ; Saturate(value)
  %448 = call float @dx.op.unary.f32(i32 7, float %319)  ; Saturate(value)
  %449 = call float @dx.op.dot3.f32(i32 55, float %368, float %369, float %370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %450 = fsub fast float 1.000000e+00, %449
  %451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.i32 %451, 0
  %453 = and i32 %452, 255
  %454 = uitofp i32 %453 to float
  %455 = lshr i32 %452, 8
  %456 = and i32 %455, 255
  %457 = uitofp i32 %456 to float
  %458 = fmul fast float %457, %450
  %459 = fadd fast float %458, %454
  %460 = fmul fast float %459, 0x3F70101020000000
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %463 = extractvalue %dx.types.CBufRet.f32 %462, 0
  %464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %465 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.i32 %465, 3
  %467 = and i32 %466, 3
  %468 = icmp ne i32 %467, 0
  %469 = and i32 %466, 4
  %470 = icmp ne i32 %469, 0
  %471 = and i1 %468, %470
  br i1 %471, label %472, label %483

; <label>:472                                     ; preds = %443
  %473 = extractvalue %dx.types.CBufRet.f32 %464, 3
  %474 = fmul fast float %473, %53
  %475 = extractvalue %dx.types.CBufRet.f32 %464, 2
  %476 = fmul fast float %475, %52
  %477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %34, float %476, float %474, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = fsub fast float 1.000000e+00, %478
  %480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.f32 %480, 0
  %482 = fcmp fast olt float %479, %481
  br label %486

; <label>:483                                     ; preds = %443
  %484 = icmp eq i32 %469, 0
  %485 = and i1 %468, %484
  br label %486

; <label>:486                                     ; preds = %483, %472
  %487 = phi i1 [ %482, %472 ], [ %485, %483 ]
  %488 = fsub fast float -0.000000e+00, %375
  %489 = fsub fast float -0.000000e+00, %376
  %490 = fsub fast float -0.000000e+00, %377
  %491 = select i1 %487, float 0.000000e+00, float %370
  %492 = call float @dx.op.dot3.f32(i32 55, float %347, float %348, float %349, float %488, float %489, float %490)  ; Dot3(ax,ay,az,bx,by,bz)
  %493 = call float @dx.op.unary.f32(i32 7, float %492)  ; Saturate(value)
  %494 = fmul fast float %383, 2.000000e+00
  %495 = fmul fast float %494, %347
  %496 = fmul fast float %494, %348
  %497 = fmul fast float %494, %349
  %498 = fsub fast float %375, %495
  %499 = fsub fast float %376, %496
  %500 = fsub fast float %377, %497
  %501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %502 = extractvalue %dx.types.CBufRet.f32 %501, 0
  %503 = bitcast float %502 to i32
  %504 = lshr i32 %503, 8
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = fptoui float %506 to i32
  %508 = and i32 %507, 4
  %509 = icmp ne i32 %508, 0
  %510 = select i1 %509, float %448, float 1.000000e+00
  %511 = call float @dx.op.binary.f32(i32 36, float %510, float 1.000000e+00)  ; FMin(a,b)
  %512 = fsub fast float 1.000000e+00, %511
  %513 = bitcast float %512 to i32
  %514 = ashr i32 %513, 1
  %515 = add nsw i32 %514, 532487669
  %516 = bitcast i32 %515 to float
  %517 = fsub fast float 1.000000e+00, %447
  %518 = call float @dx.op.binary.f32(i32 35, float %517, float 0x3F847AE140000000)  ; FMax(a,b)
  %519 = fmul fast float %518, %518
  %520 = fmul fast float %519, %519
  %521 = call float @dx.op.unary.f32(i32 7, float %493)  ; Saturate(value)
  %522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %34, float %516, float %520, float %521, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = and i32 %507, 1
  %525 = icmp ne i32 %524, 0
  %526 = fsub fast float 1.000000e+00, %510
  %527 = bitcast float %526 to i32
  %528 = sub nsw i32 2129859010, %527
  %529 = bitcast i32 %528 to float
  %530 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %531 = extractvalue %dx.types.CBufRet.i32 %530, 0
  %532 = icmp eq i32 %531, 1
  %533 = select i1 %532, float 0.000000e+00, float 1.000000e+00
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 0
  %536 = fcmp fast ogt float %535, 0.000000e+00
  %537 = fcmp fast ogt float %533, 0.000000e+00
  %538 = and i1 %536, %537
  br i1 %538, label %539, label %723, !dx.controlflow.hints !70

; <label>:539                                     ; preds = %486
  %540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %541 = extractvalue %dx.types.CBufRet.f32 %540, 0
  %542 = extractvalue %dx.types.CBufRet.f32 %540, 1
  %543 = extractvalue %dx.types.CBufRet.f32 %540, 2
  %544 = fadd fast float %541, %92
  %545 = fadd fast float %542, %93
  %546 = fadd fast float %543, %94
  %547 = fmul fast float %347, 3.200000e+01
  %548 = fmul fast float %348, 3.200000e+01
  %549 = fadd fast float %544, %547
  %550 = fadd fast float %545, %548
  %551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %552 = extractvalue %dx.types.CBufRet.f32 %551, 0
  %553 = extractvalue %dx.types.CBufRet.f32 %551, 1
  %554 = fsub fast float %549, %552
  %555 = fsub fast float %550, %553
  %556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.f32 %556, 0
  %558 = extractvalue %dx.types.CBufRet.f32 %556, 1
  %559 = fmul fast float %554, %557
  %560 = fmul fast float %555, %558
  %561 = fmul fast float %92, %92
  %562 = fmul fast float %93, %93
  %563 = fadd fast float %561, %562
  %564 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = extractvalue %dx.types.CBufRet.f32 %565, 1
  %568 = fsub fast float %564, %566
  %569 = fdiv fast float %568, %567
  %570 = call float @dx.op.unary.f32(i32 7, float %569)  ; Saturate(value)
  %571 = fmul fast float %570, 2.000000e+00
  %572 = fsub fast float 3.000000e+00, %571
  %573 = fmul fast float %570, %570
  %574 = fmul fast float %573, %572
  %575 = fcmp fast oge float %559, 0.000000e+00
  %576 = fcmp fast ole float %559, 1.000000e+00
  %577 = and i1 %576, %575
  %578 = fcmp fast oge float %560, 0.000000e+00
  %579 = and i1 %578, %577
  %580 = fcmp fast ole float %560, 1.000000e+00
  %581 = and i1 %580, %579
  %582 = fcmp fast ogt float %574, 0.000000e+00
  %583 = and i1 %582, %581
  br i1 %583, label %584, label %707, !dx.controlflow.hints !71

; <label>:584                                     ; preds = %539
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %587 = extractvalue %dx.types.CBufRet.f32 %585, 3
  %588 = fmul fast float %586, %559
  %589 = fmul fast float %587, %560
  %590 = call float @dx.op.unary.f32(i32 27, float %588)  ; Round_ni(value)
  %591 = call float @dx.op.unary.f32(i32 27, float %589)  ; Round_ni(value)
  %592 = fptosi float %590 to i32
  %593 = fptosi float %591 to i32
  %594 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %592, i32 %593, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = lshr i32 %595, 16
  %597 = icmp eq i32 %596, 65535
  br i1 %597, label %707, label %598

; <label>:598                                     ; preds = %584
  %599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %600 = extractvalue %dx.types.CBufRet.f32 %599, 0
  %601 = fmul fast float %600, %559
  %602 = extractvalue %dx.types.CBufRet.f32 %599, 1
  %603 = fadd fast float %601, %602
  %604 = extractvalue %dx.types.CBufRet.f32 %599, 2
  %605 = fmul fast float %604, %560
  %606 = extractvalue %dx.types.CBufRet.f32 %599, 3
  %607 = fadd fast float %605, %606
  %608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %603, float %607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %609 = extractvalue %dx.types.ResRet.f32 %608, 0
  %610 = extractvalue %dx.types.ResRet.f32 %608, 1
  %611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %612 = extractvalue %dx.types.CBufRet.f32 %611, 1
  %613 = extractvalue %dx.types.CBufRet.f32 %611, 0
  %614 = fsub fast float %612, %613
  %615 = fmul fast float %614, %609
  %616 = fadd fast float %615, %613
  %617 = extractvalue %dx.types.CBufRet.f32 %611, 3
  %618 = extractvalue %dx.types.CBufRet.f32 %611, 2
  %619 = fsub fast float %617, %618
  %620 = fmul fast float %619, %610
  %621 = fadd fast float %620, %618
  %622 = fsub fast float %546, %616
  %623 = fsub fast float %621, %616
  %624 = fdiv fast float %622, %623
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %627 = extractvalue %dx.types.CBufRet.f32 %585, 0
  %628 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %629 = fmul fast float %627, %559
  %630 = fmul fast float %628, %560
  %631 = fmul fast float %629, 1.250000e-01
  %632 = fmul fast float %630, 1.250000e-01
  %633 = call float @dx.op.unary.f32(i32 27, float %631)  ; Round_ni(value)
  %634 = call float @dx.op.unary.f32(i32 27, float %632)  ; Round_ni(value)
  %635 = fmul fast float %633, 8.000000e+00
  %636 = fmul fast float %634, 8.000000e+00
  %637 = fsub fast float %629, %635
  %638 = fsub fast float %630, %636
  %639 = fadd fast float %637, 5.000000e-01
  %640 = fadd fast float %638, 5.000000e-01
  %641 = and i32 %596, 255
  %642 = lshr i32 %595, 24
  %643 = mul nuw nsw i32 %641, 9
  %644 = uitofp i32 %643 to float
  %645 = mul nuw nsw i32 %642, 9
  %646 = uitofp i32 %645 to float
  %647 = fadd fast float %639, %644
  %648 = fadd fast float %640, %646
  %649 = fdiv fast float %647, %535
  %650 = fdiv fast float %648, %626
  %651 = fmul fast float %625, 4.375000e-01
  %652 = fadd fast float %651, 3.125000e-02
  %653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %34, float %649, float %650, float %652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = extractvalue %dx.types.ResRet.f32 %653, 1
  %656 = extractvalue %dx.types.ResRet.f32 %653, 2
  %657 = fadd fast float %651, 5.312500e-01
  %658 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %34, float %649, float %650, float %657, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = extractvalue %dx.types.ResRet.f32 %658, 1
  %661 = extractvalue %dx.types.ResRet.f32 %658, 2
  %662 = fmul fast float %659, 2.000000e+00
  %663 = fmul fast float %660, 2.000000e+00
  %664 = fmul fast float %661, 2.000000e+00
  %665 = fadd fast float %662, -1.000000e+00
  %666 = fadd fast float %663, -1.000000e+00
  %667 = fadd fast float %664, -1.000000e+00
  %668 = fmul fast float %665, %665
  %669 = fmul fast float %666, %666
  %670 = fadd fast float %668, %669
  %671 = fmul fast float %667, %667
  %672 = fadd fast float %670, %671
  %673 = call float @dx.op.unary.f32(i32 24, float %672)  ; Sqrt(value)
  %674 = fcmp fast ogt float %673, 0.000000e+00
  br i1 %674, label %675, label %679

; <label>:675                                     ; preds = %598
  %676 = fdiv fast float %665, %673
  %677 = fdiv fast float %666, %673
  %678 = fdiv fast float %667, %673
  br label %679

; <label>:679                                     ; preds = %675, %598
  %680 = phi float [ %676, %675 ], [ 0.000000e+00, %598 ]
  %681 = phi float [ %677, %675 ], [ 0.000000e+00, %598 ]
  %682 = phi float [ %678, %675 ], [ 0.000000e+00, %598 ]
  %683 = call float @dx.op.dot3.f32(i32 55, float %680, float %681, float %682, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %684 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %683)  ; FMax(a,b)
  %685 = fmul fast float %684, 0x400C5BF8A0000000
  %686 = fmul fast float %654, %574
  %687 = fmul fast float %686, %685
  %688 = fmul fast float %655, %574
  %689 = fmul fast float %688, %685
  %690 = fmul fast float %656, %574
  %691 = fmul fast float %690, %685
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 3
  %694 = fmul fast float %687, %693
  %695 = fmul fast float %689, %693
  %696 = fmul fast float %691, %693
  %697 = fcmp fast ogt float %546, %621
  br i1 %697, label %698, label %707

; <label>:698                                     ; preds = %679
  %699 = fmul fast float %623, 0x3FC24924A0000000
  %700 = fsub fast float %546, %621
  %701 = fdiv fast float %700, %699
  %702 = call float @dx.op.unary.f32(i32 7, float %701)  ; Saturate(value)
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %694
  %705 = fmul fast float %703, %695
  %706 = fmul fast float %703, %696
  br label %707

; <label>:707                                     ; preds = %698, %679, %584, %539
  %708 = phi float [ %706, %698 ], [ %696, %679 ], [ 0.000000e+00, %584 ], [ 0.000000e+00, %539 ]
  %709 = phi float [ %705, %698 ], [ %695, %679 ], [ 0.000000e+00, %584 ], [ 0.000000e+00, %539 ]
  %710 = phi float [ %704, %698 ], [ %694, %679 ], [ 0.000000e+00, %584 ], [ 0.000000e+00, %539 ]
  %711 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %710)  ; FMax(a,b)
  %712 = fmul fast float %711, 0x3FD20DD760000000
  %713 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %709)  ; FMax(a,b)
  %714 = fmul fast float %713, 0x3FD20DD760000000
  %715 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %708)  ; FMax(a,b)
  %716 = fmul fast float %715, 0x3FD20DD760000000
  %717 = call float @dx.op.binary.f32(i32 35, float %712, float 0.000000e+00)  ; FMax(a,b)
  %718 = call float @dx.op.binary.f32(i32 35, float %714, float 0.000000e+00)  ; FMax(a,b)
  %719 = call float @dx.op.binary.f32(i32 35, float %716, float 0.000000e+00)  ; FMax(a,b)
  %720 = fmul fast float %717, %533
  %721 = fmul fast float %718, %533
  %722 = fmul fast float %719, %533
  br label %723

; <label>:723                                     ; preds = %707, %486
  %724 = phi float [ %720, %707 ], [ 0.000000e+00, %486 ]
  %725 = phi float [ %721, %707 ], [ 0.000000e+00, %486 ]
  %726 = phi float [ %722, %707 ], [ 0.000000e+00, %486 ]
  br i1 %532, label %727, label %1519, !dx.controlflow.hints !72

; <label>:727                                     ; preds = %723
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = extractvalue %dx.types.CBufRet.f32 %728, 1
  %731 = extractvalue %dx.types.CBufRet.f32 %728, 2
  %732 = fadd fast float %729, %92
  %733 = fadd fast float %730, %93
  %734 = fadd fast float %731, %94
  %735 = fmul fast float %347, 3.200000e+01
  %736 = fmul fast float %348, 3.200000e+01
  %737 = fadd fast float %732, %735
  %738 = fadd fast float %733, %736
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 0
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 1
  %742 = fsub fast float %737, %740
  %743 = fsub fast float %738, %741
  %744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %745 = extractvalue %dx.types.CBufRet.f32 %744, 0
  %746 = extractvalue %dx.types.CBufRet.f32 %744, 1
  %747 = fmul fast float %742, %745
  %748 = fmul fast float %743, %746
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = fmul fast float %747, %750
  %752 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %753 = fadd fast float %751, %752
  %754 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %755 = fmul fast float %754, %748
  %756 = extractvalue %dx.types.CBufRet.f32 %749, 3
  %757 = fadd fast float %755, %756
  %758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %753, float %757, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = extractvalue %dx.types.ResRet.f32 %758, 1
  %761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %762 = extractvalue %dx.types.CBufRet.f32 %761, 1
  %763 = extractvalue %dx.types.CBufRet.f32 %761, 0
  %764 = fsub fast float %762, %763
  %765 = fmul fast float %764, %759
  %766 = fadd fast float %765, %763
  %767 = extractvalue %dx.types.CBufRet.f32 %761, 3
  %768 = extractvalue %dx.types.CBufRet.f32 %761, 2
  %769 = fsub fast float %767, %768
  %770 = fmul fast float %769, %760
  %771 = fadd fast float %770, %768
  %772 = fsub fast float %734, %766
  %773 = fsub fast float %771, %766
  %774 = fdiv fast float %772, %773
  %775 = call float @dx.op.unary.f32(i32 7, float %774)  ; Saturate(value)
  %776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.f32 %776, 0
  %778 = fmul fast float %777, %775
  %779 = extractvalue %dx.types.CBufRet.f32 %776, 1
  %780 = fadd fast float %778, %779
  %781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %753, float %757, float %780, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.f32 %785, 0
  %787 = extractvalue %dx.types.CBufRet.f32 %785, 1
  %788 = extractvalue %dx.types.CBufRet.f32 %785, 2
  %789 = fmul fast float %786, %782
  %790 = fmul fast float %787, %783
  %791 = fmul fast float %788, %784
  %792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %793 = extractvalue %dx.types.CBufRet.f32 %792, 0
  %794 = extractvalue %dx.types.CBufRet.f32 %792, 1
  %795 = extractvalue %dx.types.CBufRet.f32 %792, 2
  %796 = fadd fast float %789, %793
  %797 = fadd fast float %790, %794
  %798 = fadd fast float %791, %795
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 0
  %801 = fmul fast float %800, %747
  %802 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %803 = fadd fast float %801, %802
  %804 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %805 = fmul fast float %804, %748
  %806 = extractvalue %dx.types.CBufRet.f32 %799, 3
  %807 = fadd fast float %805, %806
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %814 = extractvalue %dx.types.CBufRet.f32 %813, 0
  %815 = extractvalue %dx.types.CBufRet.f32 %813, 1
  %816 = extractvalue %dx.types.CBufRet.f32 %813, 2
  %817 = extractvalue %dx.types.CBufRet.f32 %813, 3
  %818 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %803, float %807, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = extractvalue %dx.types.ResRet.f32 %818, 3
  %823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %803, float %807, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = extractvalue %dx.types.ResRet.f32 %823, 3
  %828 = fmul fast float %819, %796
  %829 = fmul fast float %824, %796
  %830 = fmul fast float %826, %796
  %831 = fmul fast float %822, %796
  %832 = fadd fast float %828, %809
  %833 = fadd fast float %829, %810
  %834 = fadd fast float %830, %811
  %835 = fadd fast float %831, %812
  %836 = fmul fast float %820, %796
  %837 = fmul fast float %825, %796
  %838 = fadd fast float %836, %814
  %839 = fadd fast float %837, %815
  %840 = fmul fast float %821, %796
  %841 = fmul fast float %827, %796
  %842 = fadd fast float %840, %816
  %843 = fadd fast float %841, %817
  %844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %803, float %807, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %845 = extractvalue %dx.types.ResRet.f32 %844, 0
  %846 = extractvalue %dx.types.ResRet.f32 %844, 1
  %847 = extractvalue %dx.types.ResRet.f32 %844, 2
  %848 = extractvalue %dx.types.ResRet.f32 %844, 3
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %803, float %807, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 0
  %851 = extractvalue %dx.types.ResRet.f32 %849, 1
  %852 = extractvalue %dx.types.ResRet.f32 %849, 2
  %853 = extractvalue %dx.types.ResRet.f32 %849, 3
  %854 = fmul fast float %845, %797
  %855 = fmul fast float %850, %797
  %856 = fmul fast float %852, %797
  %857 = fmul fast float %848, %797
  %858 = fadd fast float %832, %854
  %859 = fadd fast float %833, %855
  %860 = fadd fast float %834, %856
  %861 = fadd fast float %835, %857
  %862 = fmul fast float %846, %797
  %863 = fmul fast float %851, %797
  %864 = fadd fast float %838, %862
  %865 = fadd fast float %839, %863
  %866 = fmul fast float %847, %797
  %867 = fmul fast float %853, %797
  %868 = fadd fast float %842, %866
  %869 = fadd fast float %843, %867
  %870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %803, float %807, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %871 = extractvalue %dx.types.ResRet.f32 %870, 0
  %872 = extractvalue %dx.types.ResRet.f32 %870, 1
  %873 = extractvalue %dx.types.ResRet.f32 %870, 2
  %874 = extractvalue %dx.types.ResRet.f32 %870, 3
  %875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %803, float %807, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = extractvalue %dx.types.ResRet.f32 %875, 1
  %878 = extractvalue %dx.types.ResRet.f32 %875, 2
  %879 = extractvalue %dx.types.ResRet.f32 %875, 3
  %880 = fmul fast float %871, %798
  %881 = fmul fast float %876, %798
  %882 = fmul fast float %878, %798
  %883 = fmul fast float %874, %798
  %884 = fadd fast float %858, %880
  %885 = fadd fast float %859, %881
  %886 = fadd fast float %860, %882
  %887 = fadd fast float %861, %883
  %888 = fmul fast float %872, %798
  %889 = fmul fast float %877, %798
  %890 = fadd fast float %864, %888
  %891 = fadd fast float %865, %889
  %892 = fmul fast float %873, %798
  %893 = fmul fast float %879, %798
  %894 = fadd fast float %868, %892
  %895 = fadd fast float %869, %893
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = fsub fast float %732, %897
  %899 = fsub fast float %740, %732
  %900 = call float @dx.op.binary.f32(i32 35, float %899, float %898)  ; FMax(a,b)
  %901 = extractvalue %dx.types.CBufRet.f32 %896, 1
  %902 = fsub fast float %733, %901
  %903 = fsub fast float %741, %733
  %904 = call float @dx.op.binary.f32(i32 35, float %903, float %902)  ; FMax(a,b)
  %905 = call float @dx.op.binary.f32(i32 35, float %900, float %904)  ; FMax(a,b)
  %906 = extractvalue %dx.types.CBufRet.f32 %744, 3
  %907 = fmul fast float %906, %905
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %910 = extractvalue %dx.types.CBufRet.f32 %909, 0
  %911 = extractvalue %dx.types.CBufRet.f32 %909, 1
  %912 = extractvalue %dx.types.CBufRet.f32 %909, 2
  %913 = extractvalue %dx.types.CBufRet.f32 %909, 3
  %914 = fsub fast float %910, %884
  %915 = fsub fast float %911, %885
  %916 = fsub fast float %912, %886
  %917 = fsub fast float %913, %887
  %918 = fmul fast float %914, %908
  %919 = fmul fast float %915, %908
  %920 = fmul fast float %916, %908
  %921 = fmul fast float %917, %908
  %922 = fadd fast float %918, %884
  %923 = fadd fast float %919, %885
  %924 = fadd fast float %920, %886
  %925 = fadd fast float %921, %887
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 0
  %928 = extractvalue %dx.types.CBufRet.f32 %926, 1
  %929 = fsub fast float %927, %890
  %930 = fsub fast float %928, %891
  %931 = fmul fast float %929, %908
  %932 = fmul fast float %930, %908
  %933 = fadd fast float %931, %890
  %934 = fadd fast float %932, %891
  %935 = extractvalue %dx.types.CBufRet.f32 %926, 2
  %936 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %937 = fsub fast float %935, %894
  %938 = fsub fast float %936, %895
  %939 = fmul fast float %937, %908
  %940 = fmul fast float %938, %908
  %941 = fadd fast float %939, %894
  %942 = fadd fast float %940, %895
  %943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %944 = extractvalue %dx.types.CBufRet.f32 %943, 0
  %945 = fmul fast float %944, %922
  %946 = fmul fast float %944, %923
  %947 = fmul fast float %944, %924
  %948 = fmul fast float %944, %925
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fmul fast float %950, %933
  %952 = fmul fast float %950, %934
  %953 = fadd fast float %951, %945
  %954 = fadd fast float %952, %947
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = fmul fast float %956, %941
  %958 = fmul fast float %956, %942
  %959 = fadd fast float %953, %957
  %960 = fadd fast float %954, %958
  %961 = extractvalue %dx.types.CBufRet.f32 %943, 1
  %962 = fmul fast float %961, %922
  %963 = fmul fast float %961, %923
  %964 = fmul fast float %961, %924
  %965 = fmul fast float %961, %925
  %966 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %967 = fmul fast float %966, %933
  %968 = fmul fast float %966, %934
  %969 = fadd fast float %967, %962
  %970 = fadd fast float %968, %964
  %971 = extractvalue %dx.types.CBufRet.f32 %955, 1
  %972 = fmul fast float %971, %941
  %973 = fmul fast float %971, %942
  %974 = fadd fast float %969, %972
  %975 = fadd fast float %970, %973
  %976 = extractvalue %dx.types.CBufRet.f32 %943, 2
  %977 = fmul fast float %976, %922
  %978 = fmul fast float %976, %923
  %979 = fmul fast float %976, %924
  %980 = fmul fast float %976, %925
  %981 = extractvalue %dx.types.CBufRet.f32 %949, 2
  %982 = fmul fast float %981, %933
  %983 = fmul fast float %981, %934
  %984 = fadd fast float %982, %977
  %985 = fadd fast float %983, %979
  %986 = extractvalue %dx.types.CBufRet.f32 %955, 2
  %987 = fmul fast float %986, %941
  %988 = fmul fast float %986, %942
  %989 = fadd fast float %984, %987
  %990 = fadd fast float %985, %988
  %991 = fmul fast float %978, %978
  %992 = fmul fast float %990, %990
  %993 = fmul fast float %980, %980
  %994 = fadd fast float %993, %991
  %995 = fadd fast float %994, %992
  %996 = call float @dx.op.unary.f32(i32 24, float %995)  ; Sqrt(value)
  %997 = fcmp fast ugt float %996, 0.000000e+00
  br i1 %997, label %998, label %1013

; <label>:998                                     ; preds = %727
  %999 = fsub fast float -0.000000e+00, %980
  %1000 = fdiv fast float %999, %996
  %1001 = fsub fast float -0.000000e+00, %978
  %1002 = fdiv fast float %1001, %996
  %1003 = fdiv fast float %990, %996
  %1004 = fmul fast float %989, 0x3FE279A760000000
  %1005 = fmul fast float %1002, %978
  %1006 = fmul fast float %1003, %990
  %1007 = fmul fast float %1000, %980
  %1008 = fadd fast float %1005, %1007
  %1009 = fsub fast float %1008, %1006
  %1010 = call float @dx.op.unary.f32(i32 6, float %1009)  ; FAbs(value)
  %1011 = fadd fast float %1010, 0x3DDB7CDFE0000000
  %1012 = fdiv fast float %1004, %1011
  br label %1013

; <label>:1013                                    ; preds = %998, %727
  %1014 = phi float [ %1012, %998 ], [ 1.000000e+00, %727 ]
  %1015 = fmul fast float %963, %963
  %1016 = fmul fast float %975, %975
  %1017 = fmul fast float %965, %965
  %1018 = fadd fast float %1017, %1015
  %1019 = fadd fast float %1018, %1016
  %1020 = call float @dx.op.unary.f32(i32 24, float %1019)  ; Sqrt(value)
  %1021 = fcmp fast ugt float %1020, 0.000000e+00
  br i1 %1021, label %1022, label %1037

; <label>:1022                                    ; preds = %1013
  %1023 = fsub fast float -0.000000e+00, %965
  %1024 = fdiv fast float %1023, %1020
  %1025 = fsub fast float -0.000000e+00, %963
  %1026 = fdiv fast float %1025, %1020
  %1027 = fdiv fast float %975, %1020
  %1028 = fmul fast float %974, 0x3FE279A760000000
  %1029 = fmul fast float %1026, %963
  %1030 = fmul fast float %1027, %975
  %1031 = fmul fast float %1024, %965
  %1032 = fadd fast float %1029, %1031
  %1033 = fsub fast float %1032, %1030
  %1034 = call float @dx.op.unary.f32(i32 6, float %1033)  ; FAbs(value)
  %1035 = fadd fast float %1034, 0x3DDB7CDFE0000000
  %1036 = fdiv fast float %1028, %1035
  br label %1037

; <label>:1037                                    ; preds = %1022, %1013
  %1038 = phi float [ %1036, %1022 ], [ 1.000000e+00, %1013 ]
  %1039 = call float @dx.op.binary.f32(i32 36, float %1038, float %1014)  ; FMin(a,b)
  %1040 = fmul fast float %946, %946
  %1041 = fmul fast float %960, %960
  %1042 = fmul fast float %948, %948
  %1043 = fadd fast float %1042, %1040
  %1044 = fadd fast float %1043, %1041
  %1045 = call float @dx.op.unary.f32(i32 24, float %1044)  ; Sqrt(value)
  %1046 = fcmp fast ugt float %1045, 0.000000e+00
  br i1 %1046, label %1047, label %1062

; <label>:1047                                    ; preds = %1037
  %1048 = fsub fast float -0.000000e+00, %948
  %1049 = fdiv fast float %1048, %1045
  %1050 = fsub fast float -0.000000e+00, %946
  %1051 = fdiv fast float %1050, %1045
  %1052 = fdiv fast float %960, %1045
  %1053 = fmul fast float %959, 0x3FE279A760000000
  %1054 = fmul fast float %1051, %946
  %1055 = fmul fast float %1052, %960
  %1056 = fmul fast float %1049, %948
  %1057 = fadd fast float %1054, %1056
  %1058 = fsub fast float %1057, %1055
  %1059 = call float @dx.op.unary.f32(i32 6, float %1058)  ; FAbs(value)
  %1060 = fadd fast float %1059, 0x3DDB7CDFE0000000
  %1061 = fdiv fast float %1053, %1060
  br label %1062

; <label>:1062                                    ; preds = %1047, %1037
  %1063 = phi float [ %1061, %1047 ], [ 1.000000e+00, %1037 ]
  %1064 = call float @dx.op.binary.f32(i32 36, float %1063, float %1039)  ; FMin(a,b)
  %1065 = call float @dx.op.unary.f32(i32 7, float %1064)  ; Saturate(value)
  %1066 = fcmp fast olt float %1065, 1.000000e+00
  br i1 %1066, label %1067, label %1077

; <label>:1067                                    ; preds = %1062
  %1068 = fmul fast float %1065, %946
  %1069 = fmul fast float %1065, %960
  %1070 = fmul fast float %1065, %948
  %1071 = fmul fast float %1065, %963
  %1072 = fmul fast float %1065, %975
  %1073 = fmul fast float %1065, %965
  %1074 = fmul fast float %1065, %978
  %1075 = fmul fast float %1065, %990
  %1076 = fmul fast float %1065, %980
  br label %1077

; <label>:1077                                    ; preds = %1067, %1062
  %1078 = phi float [ %1074, %1067 ], [ %978, %1062 ]
  %1079 = phi float [ %1075, %1067 ], [ %990, %1062 ]
  %1080 = phi float [ %1076, %1067 ], [ %980, %1062 ]
  %1081 = phi float [ %1071, %1067 ], [ %963, %1062 ]
  %1082 = phi float [ %1072, %1067 ], [ %975, %1062 ]
  %1083 = phi float [ %1073, %1067 ], [ %965, %1062 ]
  %1084 = phi float [ %1068, %1067 ], [ %946, %1062 ]
  %1085 = phi float [ %1069, %1067 ], [ %960, %1062 ]
  %1086 = phi float [ %1070, %1067 ], [ %948, %1062 ]
  %1087 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %959)  ; FMax(a,b)
  %1088 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %974)  ; FMax(a,b)
  %1089 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %989)  ; FMax(a,b)
  %1090 = fcmp fast oge float %747, 0.000000e+00
  %1091 = and i1 %1090, %536
  %1092 = fcmp fast ole float %747, 1.000000e+00
  %1093 = and i1 %1092, %1091
  %1094 = fcmp fast oge float %748, 0.000000e+00
  %1095 = and i1 %1094, %1093
  %1096 = fcmp fast ole float %748, 1.000000e+00
  %1097 = and i1 %1096, %1095
  br i1 %1097, label %1098, label %1238, !dx.controlflow.hints !73

; <label>:1098                                    ; preds = %1077
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 2
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 3
  %1102 = fmul fast float %1100, %747
  %1103 = fmul fast float %1101, %748
  %1104 = call float @dx.op.unary.f32(i32 27, float %1102)  ; Round_ni(value)
  %1105 = call float @dx.op.unary.f32(i32 27, float %1103)  ; Round_ni(value)
  %1106 = fptosi float %1104 to i32
  %1107 = fptosi float %1105 to i32
  %1108 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %1106, i32 %1107, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = and i32 %1109, 65535
  %1111 = lshr i32 %1109, 16
  %1112 = icmp eq i32 %1110, 65535
  br i1 %1112, label %1149, label %1113

; <label>:1113                                    ; preds = %1098
  %1114 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %1115 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1116 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1117 = fmul fast float %1115, %747
  %1118 = fmul fast float %1116, %748
  %1119 = fmul fast float %1117, 1.250000e-01
  %1120 = fmul fast float %1118, 1.250000e-01
  %1121 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1122 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1123 = fmul fast float %1121, 8.000000e+00
  %1124 = fmul fast float %1122, 8.000000e+00
  %1125 = and i32 %1109, 255
  %1126 = lshr i32 %1109, 8
  %1127 = and i32 %1126, 255
  %1128 = mul nuw nsw i32 %1125, 9
  %1129 = uitofp i32 %1128 to float
  %1130 = mul nuw nsw i32 %1127, 9
  %1131 = uitofp i32 %1130 to float
  %1132 = fadd fast float %1129, 5.000000e-01
  %1133 = fadd fast float %1132, %1117
  %1134 = fsub fast float %1133, %1123
  %1135 = fadd fast float %1131, 5.000000e-01
  %1136 = fadd fast float %1135, %1118
  %1137 = fsub fast float %1136, %1124
  %1138 = fdiv fast float %1134, %535
  %1139 = fdiv fast float %1137, %1114
  %1140 = fmul fast float %775, 4.375000e-01
  %1141 = fadd fast float %1140, 3.125000e-02
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %34, float %1138, float %1139, float %1141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = extractvalue %dx.types.ResRet.f32 %1142, 1
  %1145 = extractvalue %dx.types.ResRet.f32 %1142, 2
  %1146 = fadd fast float %1143, %1087
  %1147 = fadd fast float %1144, %1088
  %1148 = fadd fast float %1145, %1089
  br label %1149

; <label>:1149                                    ; preds = %1113, %1098
  %1150 = phi float [ %1148, %1113 ], [ %1089, %1098 ]
  %1151 = phi float [ %1147, %1113 ], [ %1088, %1098 ]
  %1152 = phi float [ %1146, %1113 ], [ %1087, %1098 ]
  %1153 = icmp eq i32 %1111, 65535
  br i1 %1153, label %1238, label %1154

; <label>:1154                                    ; preds = %1149
  %1155 = extractvalue %dx.types.CBufRet.f32 %534, 1
  %1156 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1157 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1158 = fmul fast float %1156, %747
  %1159 = fmul fast float %1157, %748
  %1160 = fmul fast float %1158, 1.250000e-01
  %1161 = fmul fast float %1159, 1.250000e-01
  %1162 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1163 = call float @dx.op.unary.f32(i32 27, float %1161)  ; Round_ni(value)
  %1164 = fmul fast float %1162, 8.000000e+00
  %1165 = fmul fast float %1163, 8.000000e+00
  %1166 = fsub fast float %1158, %1164
  %1167 = fsub fast float %1159, %1165
  %1168 = fadd fast float %1166, 5.000000e-01
  %1169 = fadd fast float %1167, 5.000000e-01
  %1170 = and i32 %1111, 255
  %1171 = lshr i32 %1109, 24
  %1172 = mul nuw nsw i32 %1170, 9
  %1173 = uitofp i32 %1172 to float
  %1174 = mul nuw nsw i32 %1171, 9
  %1175 = uitofp i32 %1174 to float
  %1176 = fadd fast float %1168, %1173
  %1177 = fadd fast float %1169, %1175
  %1178 = fdiv fast float %1176, %535
  %1179 = fdiv fast float %1177, %1155
  %1180 = fmul fast float %775, 4.375000e-01
  %1181 = fadd fast float %1180, 3.125000e-02
  %1182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %34, float %1178, float %1179, float %1181, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = fadd fast float %1180, 5.312500e-01
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %34, float %1178, float %1179, float %1186, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  %1189 = extractvalue %dx.types.ResRet.f32 %1187, 1
  %1190 = extractvalue %dx.types.ResRet.f32 %1187, 2
  %1191 = fmul fast float %1188, 2.000000e+00
  %1192 = fmul fast float %1189, 2.000000e+00
  %1193 = fmul fast float %1190, 2.000000e+00
  %1194 = fadd fast float %1191, -1.000000e+00
  %1195 = fadd fast float %1192, -1.000000e+00
  %1196 = fadd fast float %1193, -1.000000e+00
  %1197 = fmul fast float %1194, %1194
  %1198 = fmul fast float %1195, %1195
  %1199 = fadd fast float %1197, %1198
  %1200 = fmul fast float %1196, %1196
  %1201 = fadd fast float %1199, %1200
  %1202 = call float @dx.op.unary.f32(i32 24, float %1201)  ; Sqrt(value)
  %1203 = fcmp fast ogt float %1202, 0.000000e+00
  br i1 %1203, label %1204, label %1208

; <label>:1204                                    ; preds = %1154
  %1205 = fdiv fast float %1194, %1202
  %1206 = fdiv fast float %1195, %1202
  %1207 = fdiv fast float %1196, %1202
  br label %1208

; <label>:1208                                    ; preds = %1204, %1154
  %1209 = phi float [ %1205, %1204 ], [ 0.000000e+00, %1154 ]
  %1210 = phi float [ %1206, %1204 ], [ 0.000000e+00, %1154 ]
  %1211 = phi float [ %1207, %1204 ], [ 0.000000e+00, %1154 ]
  %1212 = fmul fast float %92, %92
  %1213 = fmul fast float %93, %93
  %1214 = fadd fast float %1212, %1213
  %1215 = call float @dx.op.unary.f32(i32 24, float %1214)  ; Sqrt(value)
  %1216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1217 = extractvalue %dx.types.CBufRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.CBufRet.f32 %1216, 1
  %1219 = fsub fast float %1215, %1217
  %1220 = fdiv fast float %1219, %1218
  %1221 = call float @dx.op.unary.f32(i32 7, float %1220)  ; Saturate(value)
  %1222 = fmul fast float %1221, 2.000000e+00
  %1223 = fsub fast float 3.000000e+00, %1222
  %1224 = fmul fast float %1221, %1221
  %1225 = fmul fast float %1224, %1223
  %1226 = call float @dx.op.dot3.f32(i32 55, float %1209, float %1210, float %1211, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %1227 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1226)  ; FMax(a,b)
  %1228 = fmul fast float %1227, 0x400C5BF8A0000000
  %1229 = fmul fast float %1225, %1183
  %1230 = fmul fast float %1229, %1228
  %1231 = fadd fast float %1230, %1152
  %1232 = fmul fast float %1225, %1184
  %1233 = fmul fast float %1232, %1228
  %1234 = fadd fast float %1233, %1151
  %1235 = fmul fast float %1225, %1185
  %1236 = fmul fast float %1235, %1228
  %1237 = fadd fast float %1236, %1150
  br label %1238

; <label>:1238                                    ; preds = %1208, %1149, %1077
  %1239 = phi float [ %1237, %1208 ], [ %1150, %1149 ], [ %1089, %1077 ]
  %1240 = phi float [ %1234, %1208 ], [ %1151, %1149 ], [ %1088, %1077 ]
  %1241 = phi float [ %1231, %1208 ], [ %1152, %1149 ], [ %1087, %1077 ]
  %1242 = fcmp fast ogt float %734, %771
  %1243 = and i1 %1090, %1242
  %1244 = and i1 %1092, %1243
  %1245 = and i1 %1094, %1244
  %1246 = and i1 %1096, %1245
  br i1 %1246, label %1247, label %1304, !dx.controlflow.hints !74

; <label>:1247                                    ; preds = %1238
  %1248 = fmul fast float %773, 0x3FC24924A0000000
  %1249 = fsub fast float %734, %771
  %1250 = fdiv fast float %1249, %1248
  %1251 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 0
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 0
  %1256 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1257 = extractvalue %dx.types.CBufRet.f32 %1254, 2
  %1258 = fsub fast float %1253, %1241
  %1259 = fsub fast float %1255, %1084
  %1260 = fsub fast float %1256, %1085
  %1261 = fsub fast float %1257, %1086
  %1262 = fmul fast float %1258, %1251
  %1263 = fmul fast float %1259, %1251
  %1264 = fmul fast float %1260, %1251
  %1265 = fmul fast float %1261, %1251
  %1266 = fadd fast float %1262, %1241
  %1267 = fadd fast float %1263, %1084
  %1268 = fadd fast float %1264, %1085
  %1269 = fadd fast float %1265, %1086
  %1270 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %1272 = extractvalue %dx.types.CBufRet.f32 %1271, 0
  %1273 = extractvalue %dx.types.CBufRet.f32 %1271, 1
  %1274 = extractvalue %dx.types.CBufRet.f32 %1271, 2
  %1275 = fsub fast float %1270, %1240
  %1276 = fsub fast float %1272, %1081
  %1277 = fsub fast float %1273, %1082
  %1278 = fsub fast float %1274, %1083
  %1279 = fmul fast float %1275, %1251
  %1280 = fmul fast float %1276, %1251
  %1281 = fmul fast float %1277, %1251
  %1282 = fmul fast float %1278, %1251
  %1283 = fadd fast float %1279, %1240
  %1284 = fadd fast float %1280, %1081
  %1285 = fadd fast float %1281, %1082
  %1286 = fadd fast float %1282, %1083
  %1287 = extractvalue %dx.types.CBufRet.f32 %1252, 2
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = extractvalue %dx.types.CBufRet.f32 %1288, 1
  %1291 = extractvalue %dx.types.CBufRet.f32 %1288, 2
  %1292 = fsub fast float %1287, %1239
  %1293 = fsub fast float %1289, %1078
  %1294 = fsub fast float %1290, %1079
  %1295 = fsub fast float %1291, %1080
  %1296 = fmul fast float %1292, %1251
  %1297 = fmul fast float %1293, %1251
  %1298 = fmul fast float %1294, %1251
  %1299 = fmul fast float %1295, %1251
  %1300 = fadd fast float %1296, %1239
  %1301 = fadd fast float %1297, %1078
  %1302 = fadd fast float %1298, %1079
  %1303 = fadd fast float %1299, %1080
  br label %1304

; <label>:1304                                    ; preds = %1247, %1238
  %1305 = phi float [ %1300, %1247 ], [ %1239, %1238 ]
  %1306 = phi float [ %1301, %1247 ], [ %1078, %1238 ]
  %1307 = phi float [ %1302, %1247 ], [ %1079, %1238 ]
  %1308 = phi float [ %1303, %1247 ], [ %1080, %1238 ]
  %1309 = phi float [ %1283, %1247 ], [ %1240, %1238 ]
  %1310 = phi float [ %1284, %1247 ], [ %1081, %1238 ]
  %1311 = phi float [ %1285, %1247 ], [ %1082, %1238 ]
  %1312 = phi float [ %1286, %1247 ], [ %1083, %1238 ]
  %1313 = phi float [ %1266, %1247 ], [ %1241, %1238 ]
  %1314 = phi float [ %1267, %1247 ], [ %1084, %1238 ]
  %1315 = phi float [ %1268, %1247 ], [ %1085, %1238 ]
  %1316 = phi float [ %1269, %1247 ], [ %1086, %1238 ]
  %1317 = extractvalue %dx.types.CBufRet.f32 %896, 3
  %1318 = fmul fast float %1317, %1313
  %1319 = fmul fast float %1317, %1309
  %1320 = fmul fast float %1317, %1305
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 3
  %1323 = fmul fast float %1318, %1322
  %1324 = fmul fast float %1319, %1322
  %1325 = fmul fast float %1320, %1322
  %1326 = call float @dx.op.dot3.f32(i32 55, float %1323, float %1324, float %1325, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1327 = fmul fast float %1326, 0x3FD20DD760000000
  %1328 = fmul fast float %1314, 1.500000e+00
  %1329 = fmul fast float %1328, %1317
  %1330 = fmul fast float %1329, %1322
  %1331 = fmul fast float %1315, 1.500000e+00
  %1332 = fmul fast float %1331, %1317
  %1333 = fmul fast float %1332, %1322
  %1334 = fmul fast float %1316, 1.500000e+00
  %1335 = fmul fast float %1334, %1317
  %1336 = fmul fast float %1335, %1322
  %1337 = fmul fast float %1310, 1.500000e+00
  %1338 = fmul fast float %1337, %1317
  %1339 = fmul fast float %1338, %1322
  %1340 = fmul fast float %1311, 1.500000e+00
  %1341 = fmul fast float %1340, %1317
  %1342 = fmul fast float %1341, %1322
  %1343 = fmul fast float %1312, 1.500000e+00
  %1344 = fmul fast float %1343, %1317
  %1345 = fmul fast float %1344, %1322
  %1346 = fmul fast float %1306, 1.500000e+00
  %1347 = fmul fast float %1346, %1317
  %1348 = fmul fast float %1347, %1322
  %1349 = fmul fast float %1307, 1.500000e+00
  %1350 = fmul fast float %1349, %1317
  %1351 = fmul fast float %1350, %1322
  %1352 = fmul fast float %1308, 1.500000e+00
  %1353 = fmul fast float %1352, %1317
  %1354 = fmul fast float %1353, %1322
  %1355 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1323)  ; FMax(a,b)
  %1356 = call float @dx.op.dot3.f32(i32 55, float %1330, float %1333, float %1336, float %1330, float %1333, float %1336)  ; Dot3(ax,ay,az,bx,by,bz)
  %1357 = fcmp fast oeq float %1356, 0.000000e+00
  %1358 = fcmp fast oeq float %1355, 0.000000e+00
  %1359 = or i1 %1358, %1357
  br i1 %1359, label %1389, label %1360

; <label>:1360                                    ; preds = %1304
  %1361 = fsub fast float -0.000000e+00, %1336
  %1362 = fsub fast float -0.000000e+00, %1330
  %1363 = call float @dx.op.unary.f32(i32 24, float %1356)  ; Sqrt(value)
  %1364 = fdiv fast float %1363, %1355
  %1365 = fcmp fast ogt float %1364, 0x3FFB6F8900000000
  %1366 = select i1 %1365, float 0x3FFB6F8900000000, float %1364
  %1367 = fmul fast float %1366, 0x3FE8A23460000000
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = call float @dx.op.binary.f32(i32 35, float %1366, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1370 = fmul fast float %1368, %1355
  %1371 = fmul fast float %1369, 0x3FF279A740000000
  %1372 = fadd fast float %1371, -1.000000e+00
  %1373 = call float @dx.op.dot3.f32(i32 55, float %1361, float %1362, float %1333, float %1361, float %1362, float %1333)  ; Dot3(ax,ay,az,bx,by,bz)
  %1374 = call float @dx.op.unary.f32(i32 25, float %1373)  ; Rsqrt(value)
  %1375 = fmul fast float %1374, %1361
  %1376 = fmul fast float %1374, %1362
  %1377 = fmul fast float %1374, %1333
  %1378 = fmul fast float %1372, %1372
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = fmul fast float %1369, 0x40005F8BE0000000
  %1381 = fsub fast float 0x400C5BF8A0000000, %1380
  %1382 = fdiv fast float %1370, %1381
  %1383 = fmul fast float %1382, 0x3FEE31C3C0000000
  %1384 = fmul fast float %1383, %1379
  %1385 = fmul fast float %1369, 0x3FDACB7480000000
  %1386 = fadd fast float %1385, 0xBFD7347680000000
  %1387 = fmul fast float %1386, %1382
  %1388 = fmul fast float %1387, %1379
  br label %1389

; <label>:1389                                    ; preds = %1360, %1304
  %1390 = phi float [ %1375, %1360 ], [ 0.000000e+00, %1304 ]
  %1391 = phi float [ %1376, %1360 ], [ 0.000000e+00, %1304 ]
  %1392 = phi float [ %1377, %1360 ], [ 0.000000e+00, %1304 ]
  %1393 = phi float [ %1384, %1360 ], [ 0.000000e+00, %1304 ]
  %1394 = phi float [ %1388, %1360 ], [ 0.000000e+00, %1304 ]
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1391, float %1392, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = fmul fast float %1395, %1395
  %1397 = fmul fast float %1396, 0x3FEE471020000000
  %1398 = fadd fast float %1397, 0xBFD42F6020000000
  %1399 = fmul fast float %1355, 0x3FD20DD760000000
  %1400 = fmul fast float %1398, %1394
  %1401 = fmul fast float %1393, 0x3FDF454380000000
  %1402 = fmul fast float %1401, %1395
  %1403 = fadd fast float %1402, %1399
  %1404 = fadd fast float %1403, %1400
  %1405 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1324)  ; FMax(a,b)
  %1406 = call float @dx.op.dot3.f32(i32 55, float %1339, float %1342, float %1345, float %1339, float %1342, float %1345)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = fcmp fast oeq float %1406, 0.000000e+00
  %1408 = fcmp fast oeq float %1405, 0.000000e+00
  %1409 = or i1 %1408, %1407
  br i1 %1409, label %1439, label %1410

; <label>:1410                                    ; preds = %1389
  %1411 = fsub fast float -0.000000e+00, %1345
  %1412 = fsub fast float -0.000000e+00, %1339
  %1413 = call float @dx.op.unary.f32(i32 24, float %1406)  ; Sqrt(value)
  %1414 = fdiv fast float %1413, %1405
  %1415 = fcmp fast ogt float %1414, 0x3FFB6F8900000000
  %1416 = select i1 %1415, float 0x3FFB6F8900000000, float %1414
  %1417 = fmul fast float %1416, 0x3FE8A23460000000
  %1418 = call float @dx.op.unary.f32(i32 7, float %1417)  ; Saturate(value)
  %1419 = call float @dx.op.binary.f32(i32 35, float %1416, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1420 = fmul fast float %1418, %1405
  %1421 = fmul fast float %1419, 0x3FF279A740000000
  %1422 = fadd fast float %1421, -1.000000e+00
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1411, float %1412, float %1342, float %1411, float %1412, float %1342)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = call float @dx.op.unary.f32(i32 25, float %1423)  ; Rsqrt(value)
  %1425 = fmul fast float %1424, %1411
  %1426 = fmul fast float %1424, %1412
  %1427 = fmul fast float %1424, %1342
  %1428 = fmul fast float %1422, %1422
  %1429 = fsub fast float 1.000000e+00, %1428
  %1430 = fmul fast float %1419, 0x40005F8BE0000000
  %1431 = fsub fast float 0x400C5BF8A0000000, %1430
  %1432 = fdiv fast float %1420, %1431
  %1433 = fmul fast float %1432, 0x3FEE31C3C0000000
  %1434 = fmul fast float %1433, %1429
  %1435 = fmul fast float %1419, 0x3FDACB7480000000
  %1436 = fadd fast float %1435, 0xBFD7347680000000
  %1437 = fmul fast float %1436, %1432
  %1438 = fmul fast float %1437, %1429
  br label %1439

; <label>:1439                                    ; preds = %1410, %1389
  %1440 = phi float [ %1425, %1410 ], [ 0.000000e+00, %1389 ]
  %1441 = phi float [ %1426, %1410 ], [ 0.000000e+00, %1389 ]
  %1442 = phi float [ %1427, %1410 ], [ 0.000000e+00, %1389 ]
  %1443 = phi float [ %1434, %1410 ], [ 0.000000e+00, %1389 ]
  %1444 = phi float [ %1438, %1410 ], [ 0.000000e+00, %1389 ]
  %1445 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1441, float %1442, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %1446 = fmul fast float %1445, %1445
  %1447 = fmul fast float %1446, 0x3FEE471020000000
  %1448 = fadd fast float %1447, 0xBFD42F6020000000
  %1449 = fmul fast float %1405, 0x3FD20DD760000000
  %1450 = fmul fast float %1448, %1444
  %1451 = fmul fast float %1443, 0x3FDF454380000000
  %1452 = fmul fast float %1451, %1445
  %1453 = fadd fast float %1452, %1449
  %1454 = fadd fast float %1453, %1450
  %1455 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1325)  ; FMax(a,b)
  %1456 = call float @dx.op.dot3.f32(i32 55, float %1348, float %1351, float %1354, float %1348, float %1351, float %1354)  ; Dot3(ax,ay,az,bx,by,bz)
  %1457 = fcmp fast oeq float %1456, 0.000000e+00
  %1458 = fcmp fast oeq float %1455, 0.000000e+00
  %1459 = or i1 %1458, %1457
  br i1 %1459, label %1489, label %1460

; <label>:1460                                    ; preds = %1439
  %1461 = fsub fast float -0.000000e+00, %1354
  %1462 = fsub fast float -0.000000e+00, %1348
  %1463 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1464 = fdiv fast float %1463, %1455
  %1465 = fcmp fast ogt float %1464, 0x3FFB6F8900000000
  %1466 = select i1 %1465, float 0x3FFB6F8900000000, float %1464
  %1467 = fmul fast float %1466, 0x3FE8A23460000000
  %1468 = call float @dx.op.unary.f32(i32 7, float %1467)  ; Saturate(value)
  %1469 = call float @dx.op.binary.f32(i32 35, float %1466, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1470 = fmul fast float %1468, %1455
  %1471 = fmul fast float %1469, 0x3FF279A740000000
  %1472 = fadd fast float %1471, -1.000000e+00
  %1473 = call float @dx.op.dot3.f32(i32 55, float %1461, float %1462, float %1351, float %1461, float %1462, float %1351)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = call float @dx.op.unary.f32(i32 25, float %1473)  ; Rsqrt(value)
  %1475 = fmul fast float %1474, %1461
  %1476 = fmul fast float %1474, %1462
  %1477 = fmul fast float %1474, %1351
  %1478 = fmul fast float %1472, %1472
  %1479 = fsub fast float 1.000000e+00, %1478
  %1480 = fmul fast float %1469, 0x40005F8BE0000000
  %1481 = fsub fast float 0x400C5BF8A0000000, %1480
  %1482 = fdiv fast float %1470, %1481
  %1483 = fmul fast float %1482, 0x3FEE31C3C0000000
  %1484 = fmul fast float %1483, %1479
  %1485 = fmul fast float %1469, 0x3FDACB7480000000
  %1486 = fadd fast float %1485, 0xBFD7347680000000
  %1487 = fmul fast float %1486, %1482
  %1488 = fmul fast float %1487, %1479
  br label %1489

; <label>:1489                                    ; preds = %1460, %1439
  %1490 = phi float [ %1475, %1460 ], [ 0.000000e+00, %1439 ]
  %1491 = phi float [ %1476, %1460 ], [ 0.000000e+00, %1439 ]
  %1492 = phi float [ %1477, %1460 ], [ 0.000000e+00, %1439 ]
  %1493 = phi float [ %1484, %1460 ], [ 0.000000e+00, %1439 ]
  %1494 = phi float [ %1488, %1460 ], [ 0.000000e+00, %1439 ]
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1490, float %1491, float %1492, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = fmul fast float %1495, %1495
  %1497 = fmul fast float %1496, 0x3FEE471020000000
  %1498 = fadd fast float %1497, 0xBFD42F6020000000
  %1499 = fmul fast float %1455, 0x3FD20DD760000000
  %1500 = fmul fast float %1498, %1494
  %1501 = fmul fast float %1493, 0x3FDF454380000000
  %1502 = fmul fast float %1501, %1495
  %1503 = fadd fast float %1502, %1499
  %1504 = fadd fast float %1503, %1500
  %1505 = call float @dx.op.binary.f32(i32 35, float %1404, float 0.000000e+00)  ; FMax(a,b)
  %1506 = call float @dx.op.binary.f32(i32 35, float %1454, float 0.000000e+00)  ; FMax(a,b)
  %1507 = call float @dx.op.binary.f32(i32 35, float %1504, float 0.000000e+00)  ; FMax(a,b)
  %1508 = fsub fast float %724, %1505
  %1509 = fsub fast float %725, %1506
  %1510 = fsub fast float %726, %1507
  %1511 = fmul fast float %1508, %533
  %1512 = fmul fast float %1509, %533
  %1513 = fmul fast float %1510, %533
  %1514 = fadd fast float %1511, %1505
  %1515 = fadd fast float %1512, %1506
  %1516 = fadd fast float %1513, %1507
  %1517 = fmul fast float %1327, %533
  %1518 = fsub fast float %1327, %1517
  br label %1519

; <label>:1519                                    ; preds = %1489, %723
  %1520 = phi float [ %1514, %1489 ], [ %724, %723 ]
  %1521 = phi float [ %1515, %1489 ], [ %725, %723 ]
  %1522 = phi float [ %1516, %1489 ], [ %726, %723 ]
  %1523 = phi float [ %1518, %1489 ], [ 0.000000e+00, %723 ]
  %1524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1525 = extractvalue %dx.types.CBufRet.f32 %1524, 0
  %1526 = call float @dx.op.binary.f32(i32 36, float %359, float %1525)  ; FMin(a,b)
  %1527 = fmul fast float %1526, %512
  %1528 = fsub fast float 1.000000e+00, %1527
  %1529 = bitcast float %1528 to i32
  %1530 = sub nsw i32 2129859010, %1529
  %1531 = bitcast i32 %1530 to float
  %1532 = call float @dx.op.binary.f32(i32 36, float %360, float %1525)  ; FMin(a,b)
  %1533 = fmul fast float %1532, %512
  %1534 = fsub fast float 1.000000e+00, %1533
  %1535 = bitcast float %1534 to i32
  %1536 = sub nsw i32 2129859010, %1535
  %1537 = bitcast i32 %1536 to float
  %1538 = call float @dx.op.binary.f32(i32 36, float %361, float %1525)  ; FMin(a,b)
  %1539 = fmul fast float %1538, %512
  %1540 = fsub fast float 1.000000e+00, %1539
  %1541 = bitcast float %1540 to i32
  %1542 = sub nsw i32 2129859010, %1541
  %1543 = bitcast i32 %1542 to float
  %1544 = fmul fast float %1520, %511
  %1545 = fmul fast float %1544, %1531
  %1546 = fmul fast float %1521, %511
  %1547 = fmul fast float %1546, %1537
  %1548 = fmul fast float %1522, %511
  %1549 = fmul fast float %1548, %1543
  %1550 = extractvalue %dx.types.CBufRet.i32 %530, 2
  %1551 = and i32 %1550, 1
  %1552 = icmp ne i32 %1551, 0
  %1553 = fsub fast float 1.000000e+00, %533
  %1554 = select i1 %1552, float %533, float %1545
  %1555 = select i1 %1552, float %1553, float %1547
  %1556 = select i1 %1552, float 0.000000e+00, float %1549
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1554, float %1555, float %1556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = select i1 %487, float 0.000000e+00, float %1554
  %1559 = select i1 %487, float %1557, float %1555
  %1560 = select i1 %487, float 0.000000e+00, float %1556
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = bitcast float %1562 to i32
  %1564 = lshr i32 %1563, 8
  %1565 = and i32 %1564, 255
  %1566 = uitofp i32 %1565 to float
  %1567 = fptoui float %1566 to i32
  %1568 = icmp eq i32 %1567, 23
  br i1 %1568, label %1569, label %1592

; <label>:1569                                    ; preds = %1519
  %1570 = fmul fast float %1543, %511
  %1571 = fmul fast float %1537, %511
  %1572 = fmul fast float %1531, %511
  %1573 = fadd fast float %1572, 1.000000e+00
  %1574 = fadd fast float %1571, 1.000000e+00
  %1575 = fadd fast float %1570, 1.000000e+00
  %1576 = fmul fast float %1573, 5.000000e-01
  %1577 = fmul fast float %1574, 5.000000e-01
  %1578 = fmul fast float %1575, 5.000000e-01
  %1579 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1580 = call float @dx.op.unary.f32(i32 7, float %1577)  ; Saturate(value)
  %1581 = call float @dx.op.unary.f32(i32 7, float %1578)  ; Saturate(value)
  %1582 = fmul fast float %1579, 1.023000e+03
  %1583 = fmul fast float %1580, 1.023000e+03
  %1584 = fmul fast float %1581, 1.023000e+03
  %1585 = fptoui float %1582 to i32
  %1586 = fptoui float %1583 to i32
  %1587 = fptoui float %1584 to i32
  %1588 = shl i32 %1586, 10
  %1589 = or i32 %1588, %1585
  %1590 = shl i32 %1587, 20
  %1591 = or i32 %1589, %1590
  br label %1592

; <label>:1592                                    ; preds = %1569, %1519
  %1593 = phi i32 [ %1591, %1569 ], [ 0, %1519 ]
  %1594 = fsub fast float 1.000000e+00, %491
  %1595 = fmul fast float %1594, %402
  %1596 = fadd fast float %1595, %491
  %1597 = call float @dx.op.binary.f32(i32 35, float %410, float %1596)  ; FMax(a,b)
  %1598 = call float @dx.op.binary.f32(i32 35, float %409, float %1597)  ; FMax(a,b)
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = extractvalue %dx.types.CBufRet.f32 %501, 2
  %1601 = fcmp fast olt float %1600, 0.000000e+00
  br i1 %1601, label %1602, label %2305

; <label>:1602                                    ; preds = %1592
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 2
  %1605 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1606 = fmul fast float %1604, %52
  %1607 = fmul fast float %1605, %53
  %1608 = fptoui float %1606 to i32
  %1609 = fptoui float %1607 to i32
  %1610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1611 = extractvalue %dx.types.CBufRet.f32 %1610, 0
  %1612 = extractvalue %dx.types.CBufRet.f32 %1610, 2
  %1613 = extractvalue %dx.types.CBufRet.f32 %1610, 3
  %1614 = fadd fast float %49, -4.000000e+00
  %1615 = call float @dx.op.binary.f32(i32 35, float %1614, float 0.000000e+00)  ; FMax(a,b)
  %1616 = fadd fast float %1615, %1611
  %1617 = fmul fast float %1616, %1612
  %1618 = call float @dx.op.unary.f32(i32 23, float %1617)  ; Log(value)
  %1619 = fmul fast float %1618, %1613
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1622 = fmul fast float %1619, %1621
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.i32 %1624, 1
  %1626 = add i32 %1625, -1
  %1627 = uitofp i32 %1625 to float
  %1628 = fmul fast float %1627, %1623
  %1629 = fptoui float %1628 to i32
  %1630 = call i32 @dx.op.binary.i32(i32 40, i32 %1629, i32 %1626)  ; UMin(a,b)
  %1631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.i32 %1631, 2
  %1633 = extractvalue %dx.types.CBufRet.i32 %1631, 3
  %1634 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1609, i32 %1632, i32 %1608)  ; UMad(a,b,c)
  %1635 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1630, i32 %1633, i32 %1634)  ; UMad(a,b,c)
  %1636 = call float @dx.op.binary.f32(i32 35, float %49, float 0.000000e+00)  ; FMax(a,b)
  %1637 = fptoui float %1636 to i32
  %1638 = lshr i32 %1637, 5
  %1639 = call i32 @dx.op.binary.i32(i32 40, i32 %1638, i32 8191)  ; UMin(a,b)
  %1640 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.i32 %1640, 2
  %1642 = add nsw i32 %1641, -1
  %1643 = call i32 @dx.op.binary.i32(i32 37, i32 %1642, i32 0)  ; IMax(a,b)
  %1644 = shl i32 %1639, 2
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1644, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = lshr i32 %1646, 16
  %1648 = and i32 %1646, 65535
  %1649 = lshr i32 %1646, 21
  %1650 = lshr i32 %1648, 5
  %1651 = call i32 @dx.op.binary.i32(i32 40, i32 %1650, i32 %1643)  ; UMin(a,b)
  %1652 = icmp ugt i32 %1649, %1651
  br i1 %1652, label %2230, label %1653

; <label>:1653                                    ; preds = %1602
  br label %1654

; <label>:1654                                    ; preds = %2212, %1653
  %1655 = phi i32 [ %2213, %2212 ], [ 0, %1653 ]
  %1656 = phi i32 [ %2214, %2212 ], [ %1593, %1653 ]
  %1657 = phi float [ %2215, %2212 ], [ 0.000000e+00, %1653 ]
  %1658 = phi float [ %2216, %2212 ], [ 0.000000e+00, %1653 ]
  %1659 = phi float [ %2217, %2212 ], [ 0.000000e+00, %1653 ]
  %1660 = phi float [ %2218, %2212 ], [ 0.000000e+00, %1653 ]
  %1661 = phi float [ %2219, %2212 ], [ 0.000000e+00, %1653 ]
  %1662 = phi float [ %2220, %2212 ], [ 0.000000e+00, %1653 ]
  %1663 = phi i32 [ %2221, %2212 ], [ 0, %1653 ]
  %1664 = phi float [ %2222, %2212 ], [ 0.000000e+00, %1653 ]
  %1665 = phi float [ %2223, %2212 ], [ 0.000000e+00, %1653 ]
  %1666 = phi float [ %2224, %2212 ], [ 0.000000e+00, %1653 ]
  %1667 = phi i32 [ %2225, %2212 ], [ 1, %1653 ]
  %1668 = phi float [ %2226, %2212 ], [ 1.000000e+00, %1653 ]
  %1669 = phi i32 [ %2227, %2212 ], [ %1649, %1653 ]
  %1670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %1671 = extractvalue %dx.types.CBufRet.i32 %1670, 2
  %1672 = call i32 @dx.op.tertiary.i32(i32 49, i32 %1635, i32 %1671, i32 %1669)  ; UMad(a,b,c)
  %1673 = shl i32 %1672, 2
  %1674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1673, i32 undef)  ; BufferLoad(srv,index,wot)
  %1675 = extractvalue %dx.types.ResRet.i32 %1674, 0
  %1676 = shl i32 %1669, 5
  %1677 = sub nsw i32 %1647, %1676
  %1678 = call i32 @dx.op.binary.i32(i32 37, i32 %1677, i32 0)  ; IMax(a,b)
  %1679 = call i32 @dx.op.binary.i32(i32 38, i32 %1678, i32 31)  ; IMin(a,b)
  %1680 = sub nsw i32 1, %1647
  %1681 = add nsw i32 %1680, %1648
  %1682 = call i32 @dx.op.binary.i32(i32 37, i32 %1681, i32 0)  ; IMax(a,b)
  %1683 = call i32 @dx.op.binary.i32(i32 38, i32 %1682, i32 32)  ; IMin(a,b)
  %1684 = and i32 %1683, 31
  %1685 = shl i32 -1, %1684
  %1686 = xor i32 %1685, -1
  %1687 = and i32 %1679, 31
  %1688 = shl i32 %1686, %1687
  %1689 = icmp eq i32 %1683, 32
  %1690 = select i1 %1689, i32 -1, i32 %1688
  %1691 = and i32 %1690, %1675
  %1692 = icmp eq i32 %1691, 0
  br i1 %1692, label %2212, label %1693

; <label>:1693                                    ; preds = %1654
  br label %1694

; <label>:1694                                    ; preds = %1827, %1693
  %1695 = phi i32 [ %1828, %1827 ], [ %1655, %1693 ]
  %1696 = phi i32 [ %1829, %1827 ], [ %1656, %1693 ]
  %1697 = phi float [ %1830, %1827 ], [ %1657, %1693 ]
  %1698 = phi float [ %1831, %1827 ], [ %1658, %1693 ]
  %1699 = phi float [ %1832, %1827 ], [ %1659, %1693 ]
  %1700 = phi float [ %1833, %1827 ], [ %1660, %1693 ]
  %1701 = phi float [ %1834, %1827 ], [ %1661, %1693 ]
  %1702 = phi float [ %1835, %1827 ], [ %1662, %1693 ]
  %1703 = phi i32 [ %1836, %1827 ], [ %1663, %1693 ]
  %1704 = phi float [ %1837, %1827 ], [ %1664, %1693 ]
  %1705 = phi float [ %1838, %1827 ], [ %1665, %1693 ]
  %1706 = phi float [ %1839, %1827 ], [ %1666, %1693 ]
  %1707 = phi i32 [ %1840, %1827 ], [ %1667, %1693 ]
  %1708 = phi float [ %1841, %1827 ], [ %1668, %1693 ]
  %1709 = phi i32 [ %1714, %1827 ], [ %1691, %1693 ]
  %1710 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1709)  ; FirstbitLo(value)
  %1711 = add i32 %1710, %1676
  %1712 = and i32 %1710, 31
  %1713 = shl i32 1, %1712
  %1714 = xor i32 %1713, %1709
  %1715 = mul i32 %1711, 72
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = add i32 %1715, 12
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = add i32 %1715, 16
  %1724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1723, i32 undef)  ; BufferLoad(srv,index,wot)
  %1725 = extractvalue %dx.types.ResRet.f32 %1724, 0
  %1726 = extractvalue %dx.types.ResRet.f32 %1724, 1
  %1727 = extractvalue %dx.types.ResRet.f32 %1724, 2
  %1728 = add i32 %1715, 28
  %1729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.f32 %1729, 0
  %1731 = add i32 %1715, 32
  %1732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.ResRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.ResRet.f32 %1732, 2
  %1736 = extractvalue %dx.types.ResRet.f32 %1732, 3
  %1737 = add i32 %1715, 48
  %1738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.f32 %1738, 0
  %1740 = extractvalue %dx.types.ResRet.f32 %1738, 1
  %1741 = add i32 %1715, 56
  %1742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.f32 %1742, 0
  %1744 = extractvalue %dx.types.ResRet.f32 %1742, 1
  %1745 = add i32 %1715, 64
  %1746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.f32 %1746, 0
  %1748 = extractvalue %dx.types.ResRet.f32 %1746, 1
  %1749 = mul i32 %1711, 60
  %1750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = extractvalue %dx.types.ResRet.f32 %1750, 1
  %1753 = extractvalue %dx.types.ResRet.f32 %1750, 2
  %1754 = add i32 %1749, 12
  %1755 = add i32 %1749, 48
  %1756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.f32 %1756, 0
  %1758 = extractvalue %dx.types.ResRet.f32 %1756, 1
  %1759 = extractvalue %dx.types.ResRet.f32 %1756, 2
  %1760 = and i32 %1722, 32767
  %1761 = bitcast float %1718 to i32
  %1762 = and i32 %1722, 32768
  %1763 = icmp ne i32 %1762, 0
  %1764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1765 = extractvalue %dx.types.CBufRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.CBufRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.CBufRet.f32 %1764, 2
  %1768 = fsub fast float %1751, %1765
  %1769 = fsub fast float %1752, %1766
  %1770 = fsub fast float %1753, %1767
  %1771 = fsub fast float %92, %1768
  %1772 = fsub fast float %93, %1769
  %1773 = fsub fast float %94, %1770
  %1774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.f32 %1774, 0
  %1776 = extractvalue %dx.types.ResRet.f32 %1774, 1
  %1777 = extractvalue %dx.types.ResRet.f32 %1774, 2
  %1778 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float %1775, float %1776, float %1777)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = add i32 %1749, 24
  %1780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float %1781, float %1782, float %1783)  ; Dot3(ax,ay,az,bx,by,bz)
  %1785 = add i32 %1749, 36
  %1786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.f32 %1786, 0
  %1788 = extractvalue %dx.types.ResRet.f32 %1786, 1
  %1789 = extractvalue %dx.types.ResRet.f32 %1786, 2
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float %1787, float %1788, float %1789)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = call float @dx.op.unary.f32(i32 6, float %1778)  ; FAbs(value)
  %1792 = call float @dx.op.unary.f32(i32 6, float %1784)  ; FAbs(value)
  %1793 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1794 = fsub fast float %1757, %1791
  %1795 = fsub fast float %1758, %1792
  %1796 = fsub fast float %1759, %1793
  %1797 = fmul fast float %1794, %1725
  %1798 = fmul fast float %1795, %1726
  %1799 = fmul fast float %1796, %1727
  %1800 = call float @dx.op.binary.f32(i32 36, float %1798, float %1799)  ; FMin(a,b)
  %1801 = call float @dx.op.binary.f32(i32 36, float %1797, float %1800)  ; FMin(a,b)
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1803 = call float @dx.op.binary.f32(i32 36, float %1708, float %1802)  ; FMin(a,b)
  %1804 = uitofp i1 %1763 to float
  %1805 = fsub fast float 1.000000e+00, %1804
  %1806 = fmul fast float %1803, %1805
  %1807 = lshr i32 %1695, 8
  %1808 = and i32 %1807, 255
  %1809 = uitofp i32 %1808 to float
  %1810 = fptoui float %1809 to i32
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 1
  %1813 = bitcast float %1812 to i32
  %1814 = lshr i32 %1813, 24
  %1815 = uitofp i32 %1814 to float
  %1816 = fptoui float %1815 to i32
  %1817 = icmp ne i32 %1816, 1
  %1818 = zext i1 %1817 to i32
  %1819 = add i32 %1818, %1810
  %1820 = uitofp i32 %1819 to float
  %1821 = fptoui float %1820 to i32
  %1822 = shl i32 %1821, 8
  %1823 = and i32 %1822, 65280
  %1824 = and i32 %1695, -65281
  %1825 = or i32 %1823, %1824
  %1826 = fcmp fast ogt float %1806, 0.000000e+00
  br i1 %1826, label %1843, label %1827

; <label>:1827                                    ; preds = %2195, %2064, %1694
  %1828 = phi i32 [ %2142, %2064 ], [ %1825, %1694 ], [ %2142, %2195 ]
  %1829 = phi i32 [ %1696, %2064 ], [ %1696, %1694 ], [ %2210, %2195 ]
  %1830 = phi float [ %2128, %2064 ], [ %1697, %1694 ], [ %2128, %2195 ]
  %1831 = phi float [ %2129, %2064 ], [ %1698, %1694 ], [ %2129, %2195 ]
  %1832 = phi float [ %2130, %2064 ], [ %1699, %1694 ], [ %2130, %2195 ]
  %1833 = phi float [ %2189, %2064 ], [ %1700, %1694 ], [ %2189, %2195 ]
  %1834 = phi float [ %2190, %2064 ], [ %1701, %1694 ], [ %2190, %2195 ]
  %1835 = phi float [ %2191, %2064 ], [ %1702, %1694 ], [ %2191, %2195 ]
  %1836 = phi i32 [ %2193, %2064 ], [ %1703, %1694 ], [ %2193, %2195 ]
  %1837 = phi float [ %2146, %2064 ], [ %1704, %1694 ], [ %2146, %2195 ]
  %1838 = phi float [ %2147, %2064 ], [ %1705, %1694 ], [ %2147, %2195 ]
  %1839 = phi float [ %2148, %2064 ], [ %1706, %1694 ], [ %2148, %2195 ]
  %1840 = phi i32 [ 0, %2064 ], [ %1707, %1694 ], [ 0, %2195 ]
  %1841 = phi float [ %2131, %2064 ], [ %1708, %1694 ], [ %2131, %2195 ]
  %1842 = icmp eq i32 %1709, %1713
  br i1 %1842, label %2211, label %1694

; <label>:1843                                    ; preds = %1694
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 3
  %1846 = bitcast float %1717 to i32
  %1847 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1848 = bitcast float %1847 to i32
  %1849 = lshr i32 %1848, 8
  %1850 = and i32 %1849, 255
  %1851 = uitofp i32 %1850 to float
  %1852 = fptoui float %1851 to i32
  %1853 = and i32 %1852, 2
  %1854 = icmp eq i32 %1853, 0
  %1855 = select i1 %1854, float %347, float %375
  %1856 = select i1 %1854, float %348, float %376
  %1857 = select i1 %1854, float %349, float %377
  %1858 = icmp ne i32 %1846, -1
  %1859 = fcmp oeq float %1845, 0.000000e+00
  %1860 = and i1 %1859, %1858
  br i1 %1860, label %1861, label %1985

; <label>:1861                                    ; preds = %1843
  %1862 = fsub fast float -0.000000e+00, %1775
  %1863 = fsub fast float -0.000000e+00, %1776
  %1864 = fsub fast float -0.000000e+00, %1777
  %1865 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1856, float %1857, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1866 = fsub fast float -0.000000e+00, %1865
  %1867 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1868 = fadd fast float %1867, %1740
  %1869 = fadd fast float %1739, %1867
  %1870 = fsub fast float -0.000000e+00, %1869
  %1871 = fcmp ogt float %1865, -0.000000e+00
  %1872 = select i1 %1871, float %1870, float %1868
  %1873 = call float @dx.op.unary.f32(i32 6, float %1866)  ; FAbs(value)
  %1874 = fdiv fast float 1.000000e+00, %1873
  %1875 = fmul fast float %1872, %1874
  %1876 = call float @dx.op.binary.f32(i32 35, float %1875, float 0.000000e+00)  ; FMax(a,b)
  %1877 = fsub fast float -0.000000e+00, %1781
  %1878 = fsub fast float -0.000000e+00, %1782
  %1879 = fsub fast float -0.000000e+00, %1783
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1856, float %1857, float %1877, float %1878, float %1879)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = fsub fast float -0.000000e+00, %1880
  %1882 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float %1877, float %1878, float %1879)  ; Dot3(ax,ay,az,bx,by,bz)
  %1883 = fadd fast float %1882, %1744
  %1884 = fadd fast float %1743, %1882
  %1885 = fsub fast float -0.000000e+00, %1884
  %1886 = fcmp ogt float %1880, -0.000000e+00
  %1887 = select i1 %1886, float %1885, float %1883
  %1888 = call float @dx.op.unary.f32(i32 6, float %1881)  ; FAbs(value)
  %1889 = fdiv fast float 1.000000e+00, %1888
  %1890 = fmul fast float %1887, %1889
  %1891 = call float @dx.op.binary.f32(i32 35, float %1890, float 0.000000e+00)  ; FMax(a,b)
  %1892 = fsub fast float -0.000000e+00, %1787
  %1893 = fsub fast float -0.000000e+00, %1788
  %1894 = fsub fast float -0.000000e+00, %1789
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1856, float %1857, float %1892, float %1893, float %1894)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = fsub fast float -0.000000e+00, %1895
  %1897 = call float @dx.op.dot3.f32(i32 55, float %1771, float %1772, float %1773, float %1892, float %1893, float %1894)  ; Dot3(ax,ay,az,bx,by,bz)
  %1898 = fadd fast float %1897, %1748
  %1899 = fadd fast float %1747, %1897
  %1900 = fsub fast float -0.000000e+00, %1899
  %1901 = fcmp ogt float %1895, -0.000000e+00
  %1902 = select i1 %1901, float %1900, float %1898
  %1903 = call float @dx.op.unary.f32(i32 6, float %1896)  ; FAbs(value)
  %1904 = fdiv fast float 1.000000e+00, %1903
  %1905 = fmul fast float %1902, %1904
  %1906 = call float @dx.op.binary.f32(i32 35, float %1905, float 0.000000e+00)  ; FMax(a,b)
  %1907 = call float @dx.op.binary.f32(i32 36, float %1891, float %1906)  ; FMin(a,b)
  %1908 = call float @dx.op.binary.f32(i32 36, float %1876, float %1907)  ; FMin(a,b)
  %1909 = fmul fast float %1908, %1855
  %1910 = fmul fast float %1908, %1856
  %1911 = fmul fast float %1908, %1857
  %1912 = fadd fast float %1909, %92
  %1913 = fadd fast float %1910, %93
  %1914 = fadd fast float %1911, %94
  %1915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1916 = extractvalue %dx.types.CBufRet.f32 %1915, 0
  %1917 = extractvalue %dx.types.CBufRet.f32 %1915, 1
  %1918 = extractvalue %dx.types.CBufRet.f32 %1915, 2
  %1919 = fadd fast float %1912, %1916
  %1920 = fadd fast float %1913, %1917
  %1921 = fadd fast float %1914, %1918
  %1922 = fcmp fast olt float %1876, %1891
  %1923 = fcmp fast olt float %1876, %1906
  %1924 = and i1 %1922, %1923
  br i1 %1924, label %1928, label %1925

; <label>:1925                                    ; preds = %1861
  %1926 = fcmp fast olt float %1891, %1906
  br i1 %1926, label %1927, label %1928

; <label>:1927                                    ; preds = %1925
  br label %1928

; <label>:1928                                    ; preds = %1927, %1925, %1861
  %1929 = phi float [ 0.000000e+00, %1927 ], [ 0.000000e+00, %1925 ], [ 1.000000e+00, %1861 ]
  %1930 = phi float [ 1.000000e+00, %1927 ], [ 0.000000e+00, %1925 ], [ 0.000000e+00, %1861 ]
  %1931 = phi float [ 0.000000e+00, %1927 ], [ 1.000000e+00, %1925 ], [ 0.000000e+00, %1861 ]
  %1932 = phi float [ %1781, %1927 ], [ %1787, %1925 ], [ %1775, %1861 ]
  %1933 = phi float [ %1782, %1927 ], [ %1788, %1925 ], [ %1776, %1861 ]
  %1934 = phi float [ %1783, %1927 ], [ %1789, %1925 ], [ %1777, %1861 ]
  %1935 = call float @dx.op.unary.f32(i32 6, float %1934)  ; FAbs(value)
  %1936 = fcmp fast olt float %1935, 0x3FE276C8C0000000
  %1937 = select i1 %1936, float 0.000000e+00, float 1.000000e+00
  %1938 = select i1 %1936, float 1.000000e+00, float 0.000000e+00
  %1939 = fmul fast float %1938, %1933
  %1940 = fmul fast float %1937, %1934
  %1941 = fsub fast float %1939, %1940
  %1942 = fmul fast float %1932, %1938
  %1943 = fsub fast float -0.000000e+00, %1942
  %1944 = fmul fast float %1937, %1932
  %1945 = call float @dx.op.dot3.f32(i32 55, float %1941, float %1943, float %1944, float %1941, float %1943, float %1944)  ; Dot3(ax,ay,az,bx,by,bz)
  %1946 = call float @dx.op.unary.f32(i32 25, float %1945)  ; Rsqrt(value)
  %1947 = fmul fast float %1941, %1946
  %1948 = fmul fast float %1946, %1943
  %1949 = fmul fast float %1944, %1946
  %1950 = fmul fast float %1949, %1933
  %1951 = fmul fast float %1948, %1934
  %1952 = fsub fast float %1950, %1951
  %1953 = fmul fast float %1947, %1934
  %1954 = fmul fast float %1949, %1932
  %1955 = fsub fast float %1953, %1954
  %1956 = fmul fast float %1948, %1932
  %1957 = fmul fast float %1947, %1933
  %1958 = fsub fast float %1956, %1957
  %1959 = call float @dx.op.dot3.f32(i32 55, float %1952, float %1955, float %1958, float %1952, float %1955, float %1958)  ; Dot3(ax,ay,az,bx,by,bz)
  %1960 = call float @dx.op.unary.f32(i32 25, float %1959)  ; Rsqrt(value)
  %1961 = fmul fast float %1952, %1960
  %1962 = fmul fast float %1955, %1960
  %1963 = fmul fast float %1958, %1960
  %1964 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %1947, float %1948, float %1949)  ; Dot3(ax,ay,az,bx,by,bz)
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1919, float %1920, float %1921, float %1961, float %1962, float %1963)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = fmul fast float %1964, 0x3FA99999A0000000
  %1967 = fmul fast float %1965, 0x3FA99999A0000000
  %1968 = call float @dx.op.unary.f32(i32 22, float %1966)  ; Frc(value)
  %1969 = call float @dx.op.unary.f32(i32 22, float %1967)  ; Frc(value)
  %1970 = fadd fast float %1968, 0xBFB99999A0000000
  %1971 = fadd fast float %1969, 0xBFB99999A0000000
  %1972 = call float @dx.op.unary.f32(i32 6, float %1970)  ; FAbs(value)
  %1973 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1974 = fmul fast float %1972, 1.000000e+01
  %1975 = fmul fast float %1973, 1.000000e+01
  %1976 = call float @dx.op.binary.f32(i32 36, float %1974, float %1975)  ; FMin(a,b)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fsub fast float 1.000000e+00, %1977
  %1979 = fmul fast float %1978, %1929
  %1980 = fmul fast float %1978, %1930
  %1981 = fmul fast float %1978, %1931
  %1982 = fsub fast float %1912, %1717
  %1983 = fsub fast float %1913, %1718
  %1984 = fsub fast float %1914, %1719
  br label %1992

; <label>:1985                                    ; preds = %1843
  %1986 = fmul fast float %1855, 8.096000e+03
  %1987 = fmul fast float %1856, 8.096000e+03
  %1988 = fmul fast float %1857, 8.096000e+03
  %1989 = fadd fast float %1986, %92
  %1990 = fadd fast float %1987, %93
  %1991 = fadd fast float %1988, %94
  br label %1992

; <label>:1992                                    ; preds = %1985, %1928
  %1993 = phi float [ %1855, %1985 ], [ %1982, %1928 ]
  %1994 = phi float [ %1856, %1985 ], [ %1983, %1928 ]
  %1995 = phi float [ %1857, %1985 ], [ %1984, %1928 ]
  %1996 = phi float [ %1989, %1985 ], [ %1912, %1928 ]
  %1997 = phi float [ %1990, %1985 ], [ %1913, %1928 ]
  %1998 = phi float [ %1991, %1985 ], [ %1914, %1928 ]
  %1999 = phi float [ 0.000000e+00, %1985 ], [ %1979, %1928 ]
  %2000 = phi float [ 0.000000e+00, %1985 ], [ %1980, %1928 ]
  %2001 = phi float [ 0.000000e+00, %1985 ], [ %1981, %1928 ]
  %2002 = fcmp fast olt float %1736, 1.000000e+00
  br i1 %2002, label %2003, label %2034, !dx.controlflow.hints !75

; <label>:2003                                    ; preds = %1992
  %2004 = fmul fast float %1995, %1734
  %2005 = fmul fast float %1994, %1735
  %2006 = fsub fast float %2004, %2005
  %2007 = fmul fast float %1993, %1735
  %2008 = fmul fast float %1995, %1733
  %2009 = fsub fast float %2007, %2008
  %2010 = fmul fast float %1994, %1733
  %2011 = fmul fast float %1993, %1734
  %2012 = fsub fast float %2010, %2011
  %2013 = fmul fast float %2006, 2.000000e+00
  %2014 = fmul fast float %2009, 2.000000e+00
  %2015 = fmul fast float %2012, 2.000000e+00
  %2016 = fmul fast float %2013, %1736
  %2017 = fmul fast float %2014, %1736
  %2018 = fmul fast float %2015, %1736
  %2019 = fmul fast float %2015, %1734
  %2020 = fmul fast float %2014, %1735
  %2021 = fmul fast float %2013, %1735
  %2022 = fmul fast float %2015, %1733
  %2023 = fmul fast float %2014, %1733
  %2024 = fmul fast float %2013, %1734
  %2025 = fadd fast float %2019, %1993
  %2026 = fadd fast float %2025, %2016
  %2027 = fsub fast float %2026, %2020
  %2028 = fsub fast float %1994, %2022
  %2029 = fadd fast float %2028, %2017
  %2030 = fadd fast float %2029, %2021
  %2031 = fadd fast float %2018, %1995
  %2032 = fsub fast float %2031, %2024
  %2033 = fadd fast float %2032, %2023
  br label %2034

; <label>:2034                                    ; preds = %2003, %1992
  %2035 = phi float [ %2027, %2003 ], [ %1993, %1992 ]
  %2036 = phi float [ %2030, %2003 ], [ %1994, %1992 ]
  %2037 = phi float [ %2033, %2003 ], [ %1995, %1992 ]
  br i1 %1860, label %2038, label %2061

; <label>:2038                                    ; preds = %2034
  %2039 = fsub fast float %1996, %92
  %2040 = fsub fast float %1997, %93
  %2041 = fsub fast float %1998, %94
  %2042 = fsub fast float %1996, %1717
  %2043 = fsub fast float %1997, %1718
  %2044 = fsub fast float %1998, %1719
  %2045 = call float @dx.op.dot3.f32(i32 55, float %2039, float %2040, float %2041, float %2039, float %2040, float %2041)  ; Dot3(ax,ay,az,bx,by,bz)
  %2046 = call float @dx.op.dot3.f32(i32 55, float %2042, float %2043, float %2044, float %2042, float %2043, float %2044)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = fadd fast float %2046, 0x3EE4F8B580000000
  %2048 = fdiv fast float %2045, %2047
  %2049 = bitcast float %2048 to i32
  %2050 = ashr i32 %2049, 1
  %2051 = add nsw i32 %2050, 532487669
  %2052 = bitcast i32 %2051 to float
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fmul fast float %2053, 0x4009981AE0000000
  %2055 = fsub fast float 0x40111BBD80000000, %2054
  %2056 = fmul fast float %2055, %2053
  %2057 = fadd fast float %2056, 0xC0009F6020000000
  %2058 = fmul fast float %2057, %2053
  %2059 = fadd fast float %2058, 1.000000e+00
  %2060 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  br label %2064

; <label>:2061                                    ; preds = %2034
  %2062 = icmp ne i32 %1761, -1
  %2063 = zext i1 %2062 to i32
  br label %2064

; <label>:2064                                    ; preds = %2061, %2038
  %2065 = phi float [ 0.000000e+00, %2061 ], [ %2060, %2038 ]
  %2066 = phi i32 [ %2063, %2061 ], [ 0, %2038 ]
  %2067 = fmul float %2065, 5.000000e+00
  %2068 = fsub float 5.000000e+00, %2067
  %2069 = icmp ne i32 %2066, 0
  %2070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %2071 = extractvalue %dx.types.CBufRet.f32 %2070, 3
  %2072 = fadd fast float %2071, %2068
  %2073 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2072)  ; FMax(a,b)
  %2074 = call float @dx.op.unary.f32(i32 6, float %2035)  ; FAbs(value)
  %2075 = call float @dx.op.unary.f32(i32 6, float %2036)  ; FAbs(value)
  %2076 = fadd fast float %2075, %2074
  %2077 = call float @dx.op.unary.f32(i32 6, float %2037)  ; FAbs(value)
  %2078 = fadd fast float %2076, %2077
  %2079 = fcmp fast oeq float %2078, 0.000000e+00
  %2080 = fdiv fast float 1.000000e+00, %2078
  %2081 = select i1 %2079, float 1.000000e+00, float %2080
  %2082 = fmul fast float %2081, %2035
  %2083 = fmul fast float %2081, %2036
  %2084 = call float @dx.op.unary.f32(i32 6, float %2083)  ; FAbs(value)
  %2085 = call float @dx.op.unary.f32(i32 6, float %2082)  ; FAbs(value)
  %2086 = fsub fast float 1.000000e+00, %2084
  %2087 = fsub fast float 1.000000e+00, %2085
  %2088 = fcmp fast oge float %2082, 0.000000e+00
  %2089 = fcmp fast oge float %2083, 0.000000e+00
  %2090 = select i1 %2088, float 1.000000e+00, float -1.000000e+00
  %2091 = select i1 %2089, float 1.000000e+00, float -1.000000e+00
  %2092 = fcmp fast ole float %2037, 0.000000e+00
  %2093 = fmul fast float %2090, %2086
  %2094 = fmul fast float %2091, %2087
  %2095 = select i1 %2092, float %2093, float %2082
  %2096 = select i1 %2092, float %2094, float %2083
  %2097 = fmul fast float %2095, 5.000000e-01
  %2098 = fmul fast float %2096, 5.000000e-01
  %2099 = fadd fast float %2097, 5.000000e-01
  %2100 = fadd fast float %2098, 5.000000e-01
  %2101 = uitofp i32 %1760 to float
  %2102 = call float @dx.op.binary.f32(i32 36, float %2073, float 3.000000e+00)  ; FMin(a,b)
  %2103 = fadd fast float %2102, 2.000000e+00
  %2104 = call float @dx.op.unary.f32(i32 21, float %2103)  ; Exp(value)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2070, 1
  %2106 = fmul fast float %2105, %2104
  %2107 = fmul fast float %2106, 2.000000e+00
  %2108 = fsub fast float 1.000000e+00, %2107
  %2109 = fmul fast float %2099, %2108
  %2110 = fmul fast float %2100, %2108
  %2111 = fadd fast float %2109, %2106
  %2112 = fadd fast float %2110, %2106
  %2113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %33, float %2111, float %2112, float %2101, float undef, i32 0, i32 0, i32 undef, float %2073)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2114 = extractvalue %dx.types.ResRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.ResRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.ResRet.f32 %2113, 2
  %2117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2118 = extractvalue %dx.types.CBufRet.f32 %2117, 3
  %2119 = fmul fast float %2118, %1730
  %2120 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2119)  ; FMin(a,b)
  %2121 = select i1 %2069, float %2120, float %2119
  %2122 = fmul fast float %2114, %1806
  %2123 = fmul fast float %2122, %2121
  %2124 = fmul fast float %2115, %1806
  %2125 = fmul fast float %2124, %2121
  %2126 = fmul fast float %2116, %1806
  %2127 = fmul fast float %2126, %2121
  %2128 = fadd fast float %2123, %1697
  %2129 = fadd fast float %2125, %1698
  %2130 = fadd fast float %2127, %1699
  %2131 = fsub fast float %1708, %1806
  %2132 = and i32 %1821, 255
  %2133 = uitofp i32 %2132 to float
  %2134 = fptoui float %2133 to i32
  %2135 = icmp eq i32 %1816, 1
  %2136 = zext i1 %2135 to i32
  %2137 = add i32 %2136, %2134
  %2138 = uitofp i32 %2137 to float
  %2139 = fptoui float %2138 to i32
  %2140 = shl i32 %2139, 8
  %2141 = and i32 %2140, 65280
  %2142 = or i32 %2141, %1824
  %2143 = fmul fast float %1999, %1806
  %2144 = fmul fast float %2000, %1806
  %2145 = fmul fast float %2001, %1806
  %2146 = fadd fast float %2143, %1704
  %2147 = fadd fast float %2144, %1705
  %2148 = fadd fast float %2145, %1706
  %2149 = fmul fast float %2101, 0x3FE3C6EF40000000
  %2150 = call float @dx.op.unary.f32(i32 22, float %2149)  ; Frc(value)
  %2151 = fadd fast float %2150, 0x3FE5555560000000
  %2152 = fadd fast float %2150, 0x3FD5555560000000
  %2153 = fsub fast float -0.000000e+00, %2150
  %2154 = fsub fast float -0.000000e+00, %2151
  %2155 = fsub fast float -0.000000e+00, %2152
  %2156 = fcmp fast oge float %2150, %2153
  %2157 = fcmp fast oge float %2151, %2154
  %2158 = fcmp fast oge float %2152, %2155
  %2159 = call float @dx.op.unary.f32(i32 6, float %2150)  ; FAbs(value)
  %2160 = call float @dx.op.unary.f32(i32 6, float %2151)  ; FAbs(value)
  %2161 = call float @dx.op.unary.f32(i32 6, float %2152)  ; FAbs(value)
  %2162 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2163 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2164 = call float @dx.op.unary.f32(i32 22, float %2161)  ; Frc(value)
  %2165 = fsub fast float -0.000000e+00, %2162
  %2166 = fsub fast float -0.000000e+00, %2163
  %2167 = fsub fast float -0.000000e+00, %2164
  %2168 = select i1 %2156, float %2162, float %2165
  %2169 = select i1 %2157, float %2163, float %2166
  %2170 = select i1 %2158, float %2164, float %2167
  %2171 = fmul fast float %2168, 6.000000e+00
  %2172 = fmul fast float %2169, 6.000000e+00
  %2173 = fmul fast float %2170, 6.000000e+00
  %2174 = fadd fast float %2171, -3.000000e+00
  %2175 = fadd fast float %2172, -3.000000e+00
  %2176 = fadd fast float %2173, -3.000000e+00
  %2177 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2178 = call float @dx.op.unary.f32(i32 6, float %2175)  ; FAbs(value)
  %2179 = call float @dx.op.unary.f32(i32 6, float %2176)  ; FAbs(value)
  %2180 = fadd fast float %2177, -1.000000e+00
  %2181 = fadd fast float %2178, -1.000000e+00
  %2182 = fadd fast float %2179, -1.000000e+00
  %2183 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2184 = call float @dx.op.unary.f32(i32 7, float %2181)  ; Saturate(value)
  %2185 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2186 = fmul fast float %2183, %1806
  %2187 = fmul fast float %2184, %1806
  %2188 = fmul fast float %2185, %1806
  %2189 = fadd fast float %2186, %1700
  %2190 = fadd fast float %2187, %1701
  %2191 = fadd fast float %2188, %1702
  %2192 = icmp eq i32 %1760, 0
  %2193 = select i1 %2192, i32 1, i32 %1703
  %2194 = icmp eq i32 %1707, 0
  br i1 %2194, label %1827, label %2195

; <label>:2195                                    ; preds = %2064
  %2196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2197 = extractvalue %dx.types.CBufRet.f32 %2196, 0
  %2198 = bitcast float %2197 to i32
  %2199 = lshr i32 %2198, 8
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = fptoui float %2201 to i32
  %2203 = icmp eq i32 %2202, 16
  %2204 = bitcast float %2119 to i32
  %2205 = select i1 %2203, i32 %2204, i32 %1696
  %2206 = icmp eq i32 %2202, 17
  %2207 = select i1 %2206, i32 1065353216, i32 %2205
  %2208 = icmp eq i32 %2202, 18
  %2209 = bitcast float %2121 to i32
  %2210 = select i1 %2208, i32 %2209, i32 %2207
  br label %1827

; <label>:2211                                    ; preds = %1827
  br label %2212

; <label>:2212                                    ; preds = %2211, %1654
  %2213 = phi i32 [ %1655, %1654 ], [ %1828, %2211 ]
  %2214 = phi i32 [ %1656, %1654 ], [ %1829, %2211 ]
  %2215 = phi float [ %1657, %1654 ], [ %1830, %2211 ]
  %2216 = phi float [ %1658, %1654 ], [ %1831, %2211 ]
  %2217 = phi float [ %1659, %1654 ], [ %1832, %2211 ]
  %2218 = phi float [ %1660, %1654 ], [ %1833, %2211 ]
  %2219 = phi float [ %1661, %1654 ], [ %1834, %2211 ]
  %2220 = phi float [ %1662, %1654 ], [ %1835, %2211 ]
  %2221 = phi i32 [ %1663, %1654 ], [ %1836, %2211 ]
  %2222 = phi float [ %1664, %1654 ], [ %1837, %2211 ]
  %2223 = phi float [ %1665, %1654 ], [ %1838, %2211 ]
  %2224 = phi float [ %1666, %1654 ], [ %1839, %2211 ]
  %2225 = phi i32 [ %1667, %1654 ], [ %1840, %2211 ]
  %2226 = phi float [ %1668, %1654 ], [ %1841, %2211 ]
  %2227 = add i32 %1669, 1
  %2228 = icmp ugt i32 %2227, %1651
  br i1 %2228, label %2229, label %1654, !llvm.loop !76

; <label>:2229                                    ; preds = %2212
  br label %2230

; <label>:2230                                    ; preds = %2229, %1602
  %2231 = phi i32 [ 0, %1602 ], [ %2213, %2229 ]
  %2232 = phi i32 [ %1593, %1602 ], [ %2214, %2229 ]
  %2233 = phi float [ 0.000000e+00, %1602 ], [ %2215, %2229 ]
  %2234 = phi float [ 0.000000e+00, %1602 ], [ %2216, %2229 ]
  %2235 = phi float [ 0.000000e+00, %1602 ], [ %2217, %2229 ]
  %2236 = phi float [ 0.000000e+00, %1602 ], [ %2218, %2229 ]
  %2237 = phi float [ 0.000000e+00, %1602 ], [ %2219, %2229 ]
  %2238 = phi float [ 0.000000e+00, %1602 ], [ %2220, %2229 ]
  %2239 = phi i32 [ 0, %1602 ], [ %2221, %2229 ]
  %2240 = phi float [ 0.000000e+00, %1602 ], [ %2222, %2229 ]
  %2241 = phi float [ 0.000000e+00, %1602 ], [ %2223, %2229 ]
  %2242 = phi float [ 0.000000e+00, %1602 ], [ %2224, %2229 ]
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2233, float %2234, float %2235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = select i1 %487, float %2243, float %2234
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = bitcast float %2246 to i32
  %2248 = lshr i32 %2247, 8
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fptoui float %2250 to i32
  %2252 = icmp eq i32 %2251, 13
  br i1 %2252, label %2253, label %2273

; <label>:2253                                    ; preds = %2230
  %2254 = fadd fast float %2236, 1.000000e+00
  %2255 = fadd fast float %2237, 1.000000e+00
  %2256 = fadd fast float %2238, 1.000000e+00
  %2257 = fmul fast float %2254, 5.000000e-01
  %2258 = fmul fast float %2255, 5.000000e-01
  %2259 = fmul fast float %2256, 5.000000e-01
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = fmul fast float %2260, 1.023000e+03
  %2264 = fmul fast float %2261, 1.023000e+03
  %2265 = fmul fast float %2262, 1.023000e+03
  %2266 = fptoui float %2263 to i32
  %2267 = fptoui float %2264 to i32
  %2268 = fptoui float %2265 to i32
  %2269 = shl i32 %2267, 10
  %2270 = or i32 %2269, %2266
  %2271 = shl i32 %2268, 20
  %2272 = or i32 %2270, %2271
  br label %2273

; <label>:2273                                    ; preds = %2253, %2230
  %2274 = phi i32 [ %2272, %2253 ], [ %2232, %2230 ]
  %2275 = icmp eq i32 %2251, 14
  %2276 = select i1 %2275, i32 %2239, i32 %2274
  %2277 = icmp eq i32 %2251, 22
  br i1 %2277, label %2278, label %2298

; <label>:2278                                    ; preds = %2273
  %2279 = fadd fast float %2240, 1.000000e+00
  %2280 = fadd fast float %2241, 1.000000e+00
  %2281 = fadd fast float %2242, 1.000000e+00
  %2282 = fmul fast float %2279, 5.000000e-01
  %2283 = fmul fast float %2280, 5.000000e-01
  %2284 = fmul fast float %2281, 5.000000e-01
  %2285 = call float @dx.op.unary.f32(i32 7, float %2282)  ; Saturate(value)
  %2286 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2287 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2288 = fmul fast float %2285, 1.023000e+03
  %2289 = fmul fast float %2286, 1.023000e+03
  %2290 = fmul fast float %2287, 1.023000e+03
  %2291 = fptoui float %2288 to i32
  %2292 = fptoui float %2289 to i32
  %2293 = fptoui float %2290 to i32
  %2294 = shl i32 %2292, 10
  %2295 = or i32 %2294, %2291
  %2296 = shl i32 %2293, 20
  %2297 = or i32 %2295, %2296
  br label %2298

; <label>:2298                                    ; preds = %2278, %2273
  %2299 = phi i32 [ %2297, %2278 ], [ %2276, %2273 ]
  %2300 = fmul fast float %2233, 0x3FD45F3060000000
  %2301 = select i1 %487, float 0.000000e+00, float %2300
  %2302 = fmul fast float %2244, 0x3FD45F3060000000
  %2303 = fmul fast float %2235, 0x3FD45F3060000000
  %2304 = select i1 %487, float 0.000000e+00, float %2303
  br label %2305

; <label>:2305                                    ; preds = %2298, %1592
  %2306 = phi i32 [ %2231, %2298 ], [ 0, %1592 ]
  %2307 = phi i32 [ %2299, %2298 ], [ %1593, %1592 ]
  %2308 = phi float [ %2301, %2298 ], [ %1558, %1592 ]
  %2309 = phi float [ %2302, %2298 ], [ %1559, %1592 ]
  %2310 = phi float [ %2304, %2298 ], [ %1560, %1592 ]
  %2311 = phi i1 [ false, %2298 ], [ true, %1592 ]
  %2312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.i32 %2312, 0
  %2314 = and i32 %2313, 524288
  %2315 = icmp ne i32 %2314, 0
  %2316 = select i1 %2315, float 0.000000e+00, float 1.000000e+00
  %2317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2318 = extractvalue %dx.types.CBufRet.f32 %2317, 0
  %2319 = bitcast float %2318 to i32
  %2320 = and i32 %2319, 255
  %2321 = uitofp i32 %2320 to float
  %2322 = fptoui float %2321 to i32
  %2323 = icmp eq i32 %2322, 38
  %2324 = select i1 %2323, i32 0, i32 %2307
  %2325 = lshr i32 %2319, 8
  %2326 = and i32 %2325, 255
  %2327 = uitofp i32 %2326 to float
  %2328 = fptoui float %2327 to i32
  %2329 = icmp eq i32 %2328, 24
  br i1 %2329, label %2330, label %2341

; <label>:2330                                    ; preds = %2305
  %2331 = fadd fast float %523, 1.000000e+00
  %2332 = fmul fast float %2331, 5.000000e-01
  %2333 = select i1 %525, float %2332, float 1.000000e+00
  %2334 = call float @dx.op.unary.f32(i32 7, float %2333)  ; Saturate(value)
  %2335 = fmul fast float %2334, 1.023000e+03
  %2336 = fptoui float %2335 to i32
  %2337 = shl i32 %2336, 10
  %2338 = or i32 %2337, %2336
  %2339 = shl i32 %2336, 20
  %2340 = or i32 %2338, %2339
  br label %2341

; <label>:2341                                    ; preds = %2330, %2305
  %2342 = phi i32 [ %2324, %2305 ], [ %2340, %2330 ]
  %2343 = xor i1 %2315, true
  %2344 = zext i1 %2343 to i32
  br i1 %2315, label %2345, label %2581

; <label>:2345                                    ; preds = %2341
  %2346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %2347 = extractvalue %dx.types.CBufRet.f32 %2346, 0
  %2348 = extractvalue %dx.types.CBufRet.f32 %2346, 1
  %2349 = extractvalue %dx.types.CBufRet.f32 %2346, 2
  %2350 = extractvalue %dx.types.CBufRet.f32 %2346, 3
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.CBufRet.f32 %2351, 2
  %2355 = extractvalue %dx.types.CBufRet.f32 %2351, 3
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.CBufRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.CBufRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.CBufRet.f32 %2361, 2
  %2365 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.CBufRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.CBufRet.f32 %2366, 2
  %2370 = extractvalue %dx.types.CBufRet.f32 %2366, 3
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2373 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2374 = extractvalue %dx.types.CBufRet.f32 %2371, 2
  %2375 = extractvalue %dx.types.CBufRet.f32 %2371, 3
  %2376 = call float @dx.op.dot3.f32(i32 55, float %2372, float %2373, float %2374, float %498, float %499, float %500)  ; Dot3(ax,ay,az,bx,by,bz)
  %2377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.f32 %2377, 0
  %2379 = fmul fast float %2376, 8.000000e+00
  %2380 = fmul fast float %2379, %2378
  %2381 = call float @dx.op.unary.f32(i32 7, float %2380)  ; Saturate(value)
  %2382 = fcmp fast ogt float %2381, 0.000000e+00
  br i1 %2382, label %2383, label %2552, !dx.controlflow.hints !78

; <label>:2383                                    ; preds = %2345
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2386 = fmul fast float %289, 2.000000e+00
  %2387 = fmul fast float %290, 2.000000e+00
  %2388 = fadd fast float %2386, -1.000000e+00
  %2389 = fadd fast float %2387, -1.000000e+00
  %2390 = fmul fast float %2385, %2388
  %2391 = fmul fast float %2385, %2389
  %2392 = fadd fast float %2390, %52
  %2393 = fadd fast float %2391, %53
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 2
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 3
  %2397 = fmul fast float %2392, %2395
  %2398 = fmul fast float %2393, %2396
  %2399 = fadd fast float %447, 0xBFE3333340000000
  %2400 = fmul fast float %2399, 0x4004000020000000
  %2401 = fsub fast float 1.000000e+00, %2400
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2403 = fmul fast float %2402, 3.000000e+00
  %2404 = fadd fast float %2403, %289
  %2405 = call float @dx.op.unary.f32(i32 27, float %2404)  ; Round_ni(value)
  %2406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %35, float %2397, float %2398, float %2405, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2407 = extractvalue %dx.types.ResRet.f32 %2406, 0
  %2408 = fcmp fast une float %2407, 0xFFF0000000000000
  %2409 = fcmp fast une float %2407, 0x7FF0000000000000
  %2410 = and i1 %2408, %2409
  %2411 = fcmp fast olt float %2407, 0.000000e+00
  %2412 = call float @dx.op.unary.f32(i32 6, float %2407)  ; FAbs(value)
  %2413 = fsub fast float 1.000000e+00, %2412
  %2414 = select i1 %2410, float 1.000000e+00, float 0.000000e+00
  %2415 = fmul fast float %2414, %2381
  %2416 = fcmp fast ogt float %2415, 0.000000e+00
  br i1 %2416, label %2417, label %2552, !dx.controlflow.hints !79

; <label>:2417                                    ; preds = %2383
  %2418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %2419 = extractvalue %dx.types.CBufRet.f32 %2418, 0
  %2420 = extractvalue %dx.types.CBufRet.f32 %2418, 1
  %2421 = extractvalue %dx.types.CBufRet.f32 %2418, 2
  %2422 = select i1 %2411, float 0.000000e+00, float %2419
  %2423 = select i1 %2411, float 0.000000e+00, float %2420
  %2424 = select i1 %2411, float 0.000000e+00, float %2421
  %2425 = select i1 %2411, float %2347, float %2362
  %2426 = select i1 %2411, float %2352, float %2367
  %2427 = select i1 %2411, float %2357, float %2372
  %2428 = select i1 %2411, float %2348, float %2363
  %2429 = select i1 %2411, float %2353, float %2368
  %2430 = select i1 %2411, float %2358, float %2373
  %2431 = select i1 %2411, float %2349, float %2364
  %2432 = select i1 %2411, float %2354, float %2369
  %2433 = select i1 %2411, float %2359, float %2374
  %2434 = select i1 %2411, float %2350, float %2365
  %2435 = select i1 %2411, float %2355, float %2370
  %2436 = select i1 %2411, float %2360, float %2375
  %2437 = fadd fast float %2422, %92
  %2438 = fadd fast float %2423, %93
  %2439 = fadd fast float %2424, %94
  %2440 = fmul fast float %2437, %2425
  %2441 = call float @dx.op.tertiary.f32(i32 46, float %2438, float %2428, float %2440)  ; FMad(a,b,c)
  %2442 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2431, float %2441)  ; FMad(a,b,c)
  %2443 = fadd fast float %2442, %2434
  %2444 = fmul fast float %2437, %2426
  %2445 = call float @dx.op.tertiary.f32(i32 46, float %2438, float %2429, float %2444)  ; FMad(a,b,c)
  %2446 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2432, float %2445)  ; FMad(a,b,c)
  %2447 = fadd fast float %2446, %2435
  %2448 = fmul fast float %2437, %2427
  %2449 = call float @dx.op.tertiary.f32(i32 46, float %2438, float %2430, float %2448)  ; FMad(a,b,c)
  %2450 = call float @dx.op.tertiary.f32(i32 46, float %2439, float %2433, float %2449)  ; FMad(a,b,c)
  %2451 = fadd fast float %2450, %2436
  %2452 = fdiv fast float 1.000000e+00, %2451
  %2453 = fmul fast float %2452, %2443
  %2454 = fmul fast float %2452, %2447
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2458 = fmul fast float %2453, %2456
  %2459 = fmul fast float %2454, %2457
  %2460 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2461 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2462 = fadd fast float %2458, %2460
  %2463 = fadd fast float %2459, %2461
  %2464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2465 = extractvalue %dx.types.CBufRet.f32 %2464, 3
  %2466 = fmul fast float %2465, %498
  %2467 = fmul fast float %2465, %499
  %2468 = fmul fast float %2465, %500
  %2469 = fadd fast float %2466, %2437
  %2470 = fadd fast float %2467, %2438
  %2471 = fadd fast float %2468, %2439
  %2472 = fmul fast float %2469, %2425
  %2473 = call float @dx.op.tertiary.f32(i32 46, float %2470, float %2428, float %2472)  ; FMad(a,b,c)
  %2474 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2431, float %2473)  ; FMad(a,b,c)
  %2475 = fadd fast float %2474, %2434
  %2476 = fmul fast float %2469, %2426
  %2477 = call float @dx.op.tertiary.f32(i32 46, float %2470, float %2429, float %2476)  ; FMad(a,b,c)
  %2478 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2432, float %2477)  ; FMad(a,b,c)
  %2479 = fadd fast float %2478, %2435
  %2480 = fmul fast float %2469, %2427
  %2481 = call float @dx.op.tertiary.f32(i32 46, float %2470, float %2430, float %2480)  ; FMad(a,b,c)
  %2482 = call float @dx.op.tertiary.f32(i32 46, float %2471, float %2433, float %2481)  ; FMad(a,b,c)
  %2483 = fadd fast float %2482, %2436
  %2484 = fdiv fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2484, %2475
  %2486 = fmul fast float %2484, %2479
  %2487 = fmul fast float %2462, 2.000000e+00
  %2488 = fadd fast float %2487, -1.000000e+00
  %2489 = call float @dx.op.unary.f32(i32 6, float %2488)  ; FAbs(value)
  %2490 = fmul fast float %2489, 5.000000e+00
  %2491 = fadd fast float %2490, -4.000000e+00
  %2492 = call float @dx.op.unary.f32(i32 7, float %2491)  ; Saturate(value)
  %2493 = fsub fast float %2453, %2485
  %2494 = fmul fast float %2456, %2493
  %2495 = fmul fast float %2494, %2492
  %2496 = fsub fast float %2485, %2453
  %2497 = fmul fast float %2456, %2496
  %2498 = fadd fast float %2497, %2495
  %2499 = fsub fast float %2486, %2454
  %2500 = fmul fast float %2457, %2499
  %2501 = fmul fast float %2498, %2413
  %2502 = fmul fast float %2500, %2413
  %2503 = fadd fast float %2501, %2462
  %2504 = fadd fast float %2502, %2463
  %2505 = fsub fast float %2484, %2452
  %2506 = fmul fast float %2505, %2413
  %2507 = fadd fast float %2506, %2452
  %2508 = fdiv fast float 1.000000e+00, %2507
  %2509 = extractvalue %dx.types.CBufRet.f32 %2377, 3
  %2510 = fadd fast float %447, -1.000000e+00
  %2511 = fsub fast float %2508, %2451
  %2512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %2513 = extractvalue %dx.types.CBufRet.f32 %2512, 2
  %2514 = fmul fast float %2513, %2508
  %2515 = fdiv fast float 1.600000e+02, %2514
  %2516 = fmul fast float %2510, %2510
  %2517 = fmul fast float %2516, 0xBFB5B17960000000
  %2518 = fmul fast float %2517, %2511
  %2519 = fmul fast float %2518, %2515
  %2520 = call float @dx.op.unary.f32(i32 21, float %2519)  ; Exp(value)
  %2521 = fmul fast float %2520, 0x3FF04B2960000000
  %2522 = fsub fast float 0x3FF04B2960000000, %2521
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  %2524 = fmul fast float %2523, 4.000000e+00
  %2525 = fadd fast float %2524, %2509
  %2526 = fadd fast float %289, -5.000000e-01
  %2527 = fadd fast float %290, -5.000000e-01
  %2528 = fmul fast float %2525, 0x3F9EB851E0000000
  %2529 = call float @dx.op.unary.f32(i32 7, float %2528)  ; Saturate(value)
  %2530 = fmul fast float %2529, %2526
  %2531 = fmul fast float %2529, %2527
  %2532 = fadd fast float %2503, %2530
  %2533 = fadd fast float %2504, %2531
  %2534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %33, float %2532, float %2533, float undef, float undef, i32 0, i32 0, i32 undef, float %2525)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = extractvalue %dx.types.ResRet.f32 %2534, 2
  %2538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2539 = extractvalue %dx.types.CBufRet.f32 %2538, 2
  %2540 = fmul fast float %2539, %2535
  %2541 = fmul fast float %2539, %2536
  %2542 = fmul fast float %2539, %2537
  %2543 = select i1 %487, float 0.000000e+00, float %2541
  %2544 = select i1 %487, float 0.000000e+00, float %2542
  %2545 = fmul fast float %2533, 2.000000e+00
  %2546 = fadd fast float %2545, -1.000000e+00
  %2547 = fmul fast float %2546, %2546
  %2548 = fsub fast float 1.000000e+00, %2547
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fmul fast float %2550, %2415
  br label %2552

; <label>:2552                                    ; preds = %2417, %2383, %2345
  %2553 = phi float [ %2540, %2417 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2345 ]
  %2554 = phi float [ %2543, %2417 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2345 ]
  %2555 = phi float [ %2544, %2417 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2345 ]
  %2556 = phi float [ %2551, %2417 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2345 ]
  %2557 = phi float [ %2413, %2417 ], [ %2413, %2383 ], [ 0.000000e+00, %2345 ]
  %2558 = phi float [ %2551, %2417 ], [ %2415, %2383 ], [ 0.000000e+00, %2345 ]
  %2559 = phi float [ %2525, %2417 ], [ 0.000000e+00, %2383 ], [ 0.000000e+00, %2345 ]
  %2560 = icmp eq i32 %2328, 25
  br i1 %2560, label %2561, label %2564

; <label>:2561                                    ; preds = %2552
  %2562 = call float @dx.op.unary.f32(i32 6, float %2557)  ; FAbs(value)
  %2563 = bitcast float %2562 to i32
  br label %2564

; <label>:2564                                    ; preds = %2561, %2552
  %2565 = phi i32 [ %2563, %2561 ], [ %2342, %2552 ]
  %2566 = icmp eq i32 %2328, 26
  %2567 = bitcast float %2558 to i32
  %2568 = select i1 %2566, i32 %2567, i32 %2565
  %2569 = icmp eq i32 %2328, 27
  %2570 = fmul fast float %2559, 2.500000e-01
  %2571 = bitcast float %2570 to i32
  %2572 = select i1 %2569, i32 %2571, i32 %2568
  %2573 = fcmp fast olt float %2556, 1.000000e+00
  %2574 = or i1 %2573, %2343
  %2575 = zext i1 %2574 to i32
  %2576 = fmul fast float %2556, %2316
  %2577 = fsub fast float %2556, %2576
  %2578 = fmul fast float %2577, %2553
  %2579 = fmul fast float %2577, %2554
  %2580 = fmul fast float %2577, %2555
  br label %2581

; <label>:2581                                    ; preds = %2564, %2341
  %2582 = phi i32 [ %2342, %2341 ], [ %2572, %2564 ]
  %2583 = phi float [ 0.000000e+00, %2341 ], [ %2577, %2564 ]
  %2584 = phi float [ 0.000000e+00, %2341 ], [ %2578, %2564 ]
  %2585 = phi float [ 0.000000e+00, %2341 ], [ %2579, %2564 ]
  %2586 = phi float [ 0.000000e+00, %2341 ], [ %2580, %2564 ]
  %2587 = phi i32 [ %2344, %2341 ], [ %2575, %2564 ]
  %2588 = icmp ne i32 %2587, 0
  %2589 = add i32 %2328, -13
  %2590 = icmp ult i32 %2589, 2
  %2591 = or i1 %2590, %2588
  %2592 = icmp eq i32 %2328, 22
  %2593 = or i1 %2591, %2592
  br i1 %2593, label %2594, label %3320

; <label>:2594                                    ; preds = %2581
  %2595 = select i1 %2311, float %1523, float 1.000000e+00
  %2596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %2597 = extractvalue %dx.types.CBufRet.f32 %2596, 2
  %2598 = extractvalue %dx.types.CBufRet.f32 %2596, 3
  %2599 = fmul fast float %2597, %52
  %2600 = fmul fast float %2598, %53
  %2601 = fptoui float %2599 to i32
  %2602 = fptoui float %2600 to i32
  %2603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2604 = extractvalue %dx.types.CBufRet.f32 %2603, 0
  %2605 = extractvalue %dx.types.CBufRet.f32 %2603, 2
  %2606 = extractvalue %dx.types.CBufRet.f32 %2603, 3
  %2607 = fadd fast float %49, -4.000000e+00
  %2608 = call float @dx.op.binary.f32(i32 35, float %2607, float 0.000000e+00)  ; FMax(a,b)
  %2609 = fadd fast float %2608, %2604
  %2610 = fmul fast float %2609, %2605
  %2611 = call float @dx.op.unary.f32(i32 23, float %2610)  ; Log(value)
  %2612 = fmul fast float %2611, %2606
  %2613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2614 = extractvalue %dx.types.CBufRet.f32 %2613, 2
  %2615 = fmul fast float %2612, %2614
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %2618 = extractvalue %dx.types.CBufRet.i32 %2617, 1
  %2619 = add i32 %2618, -1
  %2620 = uitofp i32 %2618 to float
  %2621 = fmul fast float %2620, %2616
  %2622 = fptoui float %2621 to i32
  %2623 = call i32 @dx.op.binary.i32(i32 40, i32 %2622, i32 %2619)  ; UMin(a,b)
  %2624 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.i32 %2624, 2
  %2626 = extractvalue %dx.types.CBufRet.i32 %2624, 3
  %2627 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2602, i32 %2625, i32 %2601)  ; UMad(a,b,c)
  %2628 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2623, i32 %2626, i32 %2627)  ; UMad(a,b,c)
  %2629 = call float @dx.op.binary.f32(i32 35, float %49, float 0.000000e+00)  ; FMax(a,b)
  %2630 = fptoui float %2629 to i32
  %2631 = lshr i32 %2630, 5
  %2632 = call i32 @dx.op.binary.i32(i32 40, i32 %2631, i32 8191)  ; UMin(a,b)
  %2633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2634 = extractvalue %dx.types.CBufRet.i32 %2633, 2
  %2635 = add nsw i32 %2634, -1
  %2636 = call i32 @dx.op.binary.i32(i32 37, i32 %2635, i32 0)  ; IMax(a,b)
  %2637 = shl i32 %2632, 2
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 16
  %2641 = and i32 %2639, 65535
  %2642 = lshr i32 %2639, 21
  %2643 = lshr i32 %2641, 5
  %2644 = call i32 @dx.op.binary.i32(i32 40, i32 %2643, i32 %2636)  ; UMin(a,b)
  %2645 = icmp ugt i32 %2642, %2644
  br i1 %2645, label %3232, label %2646

; <label>:2646                                    ; preds = %2594
  br label %2647

; <label>:2647                                    ; preds = %3214, %2646
  %2648 = phi i32 [ %3215, %3214 ], [ %2306, %2646 ]
  %2649 = phi i32 [ %3216, %3214 ], [ %2582, %2646 ]
  %2650 = phi float [ %3217, %3214 ], [ 0.000000e+00, %2646 ]
  %2651 = phi float [ %3218, %3214 ], [ 0.000000e+00, %2646 ]
  %2652 = phi float [ %3219, %3214 ], [ 0.000000e+00, %2646 ]
  %2653 = phi float [ %3220, %3214 ], [ 0.000000e+00, %2646 ]
  %2654 = phi float [ %3221, %3214 ], [ 0.000000e+00, %2646 ]
  %2655 = phi float [ %3222, %3214 ], [ 0.000000e+00, %2646 ]
  %2656 = phi i32 [ %3223, %3214 ], [ 0, %2646 ]
  %2657 = phi float [ %3224, %3214 ], [ 0.000000e+00, %2646 ]
  %2658 = phi float [ %3225, %3214 ], [ 0.000000e+00, %2646 ]
  %2659 = phi float [ %3226, %3214 ], [ 0.000000e+00, %2646 ]
  %2660 = phi i32 [ %3227, %3214 ], [ 1, %2646 ]
  %2661 = phi float [ %3228, %3214 ], [ 1.000000e+00, %2646 ]
  %2662 = phi i32 [ %3229, %3214 ], [ %2642, %2646 ]
  %2663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.i32 %2663, 2
  %2665 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2628, i32 %2664, i32 %2662)  ; UMad(a,b,c)
  %2666 = shl i32 %2665, 2
  %2667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2666, i32 undef)  ; BufferLoad(srv,index,wot)
  %2668 = extractvalue %dx.types.ResRet.i32 %2667, 0
  %2669 = shl i32 %2662, 5
  %2670 = sub nsw i32 %2640, %2669
  %2671 = call i32 @dx.op.binary.i32(i32 37, i32 %2670, i32 0)  ; IMax(a,b)
  %2672 = call i32 @dx.op.binary.i32(i32 38, i32 %2671, i32 31)  ; IMin(a,b)
  %2673 = sub nsw i32 1, %2640
  %2674 = add nsw i32 %2673, %2641
  %2675 = call i32 @dx.op.binary.i32(i32 37, i32 %2674, i32 0)  ; IMax(a,b)
  %2676 = call i32 @dx.op.binary.i32(i32 38, i32 %2675, i32 32)  ; IMin(a,b)
  %2677 = and i32 %2676, 31
  %2678 = shl i32 -1, %2677
  %2679 = xor i32 %2678, -1
  %2680 = and i32 %2672, 31
  %2681 = shl i32 %2679, %2680
  %2682 = icmp eq i32 %2676, 32
  %2683 = select i1 %2682, i32 -1, i32 %2681
  %2684 = and i32 %2683, %2668
  %2685 = icmp eq i32 %2684, 0
  br i1 %2685, label %3214, label %2686

; <label>:2686                                    ; preds = %2647
  br label %2687

; <label>:2687                                    ; preds = %2820, %2686
  %2688 = phi i32 [ %2821, %2820 ], [ %2648, %2686 ]
  %2689 = phi i32 [ %2822, %2820 ], [ %2649, %2686 ]
  %2690 = phi float [ %2823, %2820 ], [ %2650, %2686 ]
  %2691 = phi float [ %2824, %2820 ], [ %2651, %2686 ]
  %2692 = phi float [ %2825, %2820 ], [ %2652, %2686 ]
  %2693 = phi float [ %2826, %2820 ], [ %2653, %2686 ]
  %2694 = phi float [ %2827, %2820 ], [ %2654, %2686 ]
  %2695 = phi float [ %2828, %2820 ], [ %2655, %2686 ]
  %2696 = phi i32 [ %2829, %2820 ], [ %2656, %2686 ]
  %2697 = phi float [ %2830, %2820 ], [ %2657, %2686 ]
  %2698 = phi float [ %2831, %2820 ], [ %2658, %2686 ]
  %2699 = phi float [ %2832, %2820 ], [ %2659, %2686 ]
  %2700 = phi i32 [ %2833, %2820 ], [ %2660, %2686 ]
  %2701 = phi float [ %2834, %2820 ], [ %2661, %2686 ]
  %2702 = phi i32 [ %2707, %2820 ], [ %2684, %2686 ]
  %2703 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2702)  ; FirstbitLo(value)
  %2704 = add i32 %2703, %2669
  %2705 = and i32 %2703, 31
  %2706 = shl i32 1, %2705
  %2707 = xor i32 %2706, %2702
  %2708 = mul i32 %2704, 72
  %2709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.ResRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.ResRet.f32 %2709, 2
  %2713 = add i32 %2708, 12
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = add i32 %2708, 16
  %2717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2716, i32 undef)  ; BufferLoad(srv,index,wot)
  %2718 = extractvalue %dx.types.ResRet.f32 %2717, 0
  %2719 = extractvalue %dx.types.ResRet.f32 %2717, 1
  %2720 = extractvalue %dx.types.ResRet.f32 %2717, 2
  %2721 = add i32 %2708, 28
  %2722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = add i32 %2708, 32
  %2725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2729 = extractvalue %dx.types.ResRet.f32 %2725, 3
  %2730 = add i32 %2708, 48
  %2731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = add i32 %2708, 56
  %2735 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.f32 %2735, 0
  %2737 = extractvalue %dx.types.ResRet.f32 %2735, 1
  %2738 = add i32 %2708, 64
  %2739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %2738, i32 undef)  ; BufferLoad(srv,index,wot)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2742 = mul i32 %2704, 60
  %2743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2744 = extractvalue %dx.types.ResRet.f32 %2743, 0
  %2745 = extractvalue %dx.types.ResRet.f32 %2743, 1
  %2746 = extractvalue %dx.types.ResRet.f32 %2743, 2
  %2747 = add i32 %2742, 12
  %2748 = add i32 %2742, 48
  %2749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.f32 %2749, 0
  %2751 = extractvalue %dx.types.ResRet.f32 %2749, 1
  %2752 = extractvalue %dx.types.ResRet.f32 %2749, 2
  %2753 = and i32 %2715, 32767
  %2754 = bitcast float %2711 to i32
  %2755 = and i32 %2715, 32768
  %2756 = icmp ne i32 %2755, 0
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2760 = extractvalue %dx.types.CBufRet.f32 %2757, 2
  %2761 = fsub fast float %2744, %2758
  %2762 = fsub fast float %2745, %2759
  %2763 = fsub fast float %2746, %2760
  %2764 = fsub fast float %92, %2761
  %2765 = fsub fast float %93, %2762
  %2766 = fsub fast float %94, %2763
  %2767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = extractvalue %dx.types.ResRet.f32 %2767, 1
  %2770 = extractvalue %dx.types.ResRet.f32 %2767, 2
  %2771 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float %2768, float %2769, float %2770)  ; Dot3(ax,ay,az,bx,by,bz)
  %2772 = add i32 %2742, 24
  %2773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.f32 %2773, 0
  %2775 = extractvalue %dx.types.ResRet.f32 %2773, 1
  %2776 = extractvalue %dx.types.ResRet.f32 %2773, 2
  %2777 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float %2774, float %2775, float %2776)  ; Dot3(ax,ay,az,bx,by,bz)
  %2778 = add i32 %2742, 36
  %2779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.ResRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.ResRet.f32 %2779, 2
  %2783 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float %2780, float %2781, float %2782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2784 = call float @dx.op.unary.f32(i32 6, float %2771)  ; FAbs(value)
  %2785 = call float @dx.op.unary.f32(i32 6, float %2777)  ; FAbs(value)
  %2786 = call float @dx.op.unary.f32(i32 6, float %2783)  ; FAbs(value)
  %2787 = fsub fast float %2750, %2784
  %2788 = fsub fast float %2751, %2785
  %2789 = fsub fast float %2752, %2786
  %2790 = fmul fast float %2787, %2718
  %2791 = fmul fast float %2788, %2719
  %2792 = fmul fast float %2789, %2720
  %2793 = call float @dx.op.binary.f32(i32 36, float %2791, float %2792)  ; FMin(a,b)
  %2794 = call float @dx.op.binary.f32(i32 36, float %2790, float %2793)  ; FMin(a,b)
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  %2796 = call float @dx.op.binary.f32(i32 36, float %2701, float %2795)  ; FMin(a,b)
  %2797 = uitofp i1 %2756 to float
  %2798 = fsub fast float 1.000000e+00, %2797
  %2799 = fmul fast float %2796, %2798
  %2800 = lshr i32 %2688, 8
  %2801 = and i32 %2800, 255
  %2802 = uitofp i32 %2801 to float
  %2803 = fptoui float %2802 to i32
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2806 = bitcast float %2805 to i32
  %2807 = lshr i32 %2806, 24
  %2808 = uitofp i32 %2807 to float
  %2809 = fptoui float %2808 to i32
  %2810 = icmp ne i32 %2809, 1
  %2811 = zext i1 %2810 to i32
  %2812 = add i32 %2811, %2803
  %2813 = uitofp i32 %2812 to float
  %2814 = fptoui float %2813 to i32
  %2815 = shl i32 %2814, 8
  %2816 = and i32 %2815, 65280
  %2817 = and i32 %2688, -65281
  %2818 = or i32 %2816, %2817
  %2819 = fcmp fast ogt float %2799, 0.000000e+00
  br i1 %2819, label %2836, label %2820

; <label>:2820                                    ; preds = %3196, %3065, %2687
  %2821 = phi i32 [ %3143, %3065 ], [ %2818, %2687 ], [ %3143, %3196 ]
  %2822 = phi i32 [ %2689, %3065 ], [ %2689, %2687 ], [ %3212, %3196 ]
  %2823 = phi float [ %3129, %3065 ], [ %2690, %2687 ], [ %3129, %3196 ]
  %2824 = phi float [ %3130, %3065 ], [ %2691, %2687 ], [ %3130, %3196 ]
  %2825 = phi float [ %3131, %3065 ], [ %2692, %2687 ], [ %3131, %3196 ]
  %2826 = phi float [ %3190, %3065 ], [ %2693, %2687 ], [ %3190, %3196 ]
  %2827 = phi float [ %3191, %3065 ], [ %2694, %2687 ], [ %3191, %3196 ]
  %2828 = phi float [ %3192, %3065 ], [ %2695, %2687 ], [ %3192, %3196 ]
  %2829 = phi i32 [ %3194, %3065 ], [ %2696, %2687 ], [ %3194, %3196 ]
  %2830 = phi float [ %3147, %3065 ], [ %2697, %2687 ], [ %3147, %3196 ]
  %2831 = phi float [ %3148, %3065 ], [ %2698, %2687 ], [ %3148, %3196 ]
  %2832 = phi float [ %3149, %3065 ], [ %2699, %2687 ], [ %3149, %3196 ]
  %2833 = phi i32 [ 0, %3065 ], [ %2700, %2687 ], [ 0, %3196 ]
  %2834 = phi float [ %3132, %3065 ], [ %2701, %2687 ], [ %3132, %3196 ]
  %2835 = icmp eq i32 %2702, %2706
  br i1 %2835, label %3213, label %2687

; <label>:2836                                    ; preds = %2687
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 3
  %2839 = bitcast float %2710 to i32
  %2840 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2841 = bitcast float %2840 to i32
  %2842 = lshr i32 %2841, 8
  %2843 = and i32 %2842, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = fptoui float %2844 to i32
  %2846 = and i32 %2845, 2
  %2847 = icmp eq i32 %2846, 0
  %2848 = select i1 %2847, float %498, float %375
  %2849 = select i1 %2847, float %499, float %376
  %2850 = select i1 %2847, float %500, float %377
  %2851 = icmp ne i32 %2839, -1
  %2852 = fcmp oeq float %2838, 0.000000e+00
  %2853 = and i1 %2852, %2851
  br i1 %2853, label %2854, label %2978

; <label>:2854                                    ; preds = %2836
  %2855 = fsub fast float -0.000000e+00, %2768
  %2856 = fsub fast float -0.000000e+00, %2769
  %2857 = fsub fast float -0.000000e+00, %2770
  %2858 = call float @dx.op.dot3.f32(i32 55, float %2848, float %2849, float %2850, float %2855, float %2856, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2859 = fsub fast float -0.000000e+00, %2858
  %2860 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float %2855, float %2856, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2861 = fadd fast float %2860, %2733
  %2862 = fadd fast float %2732, %2860
  %2863 = fsub fast float -0.000000e+00, %2862
  %2864 = fcmp ogt float %2858, -0.000000e+00
  %2865 = select i1 %2864, float %2863, float %2861
  %2866 = call float @dx.op.unary.f32(i32 6, float %2859)  ; FAbs(value)
  %2867 = fdiv fast float 1.000000e+00, %2866
  %2868 = fmul fast float %2865, %2867
  %2869 = call float @dx.op.binary.f32(i32 35, float %2868, float 0.000000e+00)  ; FMax(a,b)
  %2870 = fsub fast float -0.000000e+00, %2774
  %2871 = fsub fast float -0.000000e+00, %2775
  %2872 = fsub fast float -0.000000e+00, %2776
  %2873 = call float @dx.op.dot3.f32(i32 55, float %2848, float %2849, float %2850, float %2870, float %2871, float %2872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2874 = fsub fast float -0.000000e+00, %2873
  %2875 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float %2870, float %2871, float %2872)  ; Dot3(ax,ay,az,bx,by,bz)
  %2876 = fadd fast float %2875, %2737
  %2877 = fadd fast float %2736, %2875
  %2878 = fsub fast float -0.000000e+00, %2877
  %2879 = fcmp ogt float %2873, -0.000000e+00
  %2880 = select i1 %2879, float %2878, float %2876
  %2881 = call float @dx.op.unary.f32(i32 6, float %2874)  ; FAbs(value)
  %2882 = fdiv fast float 1.000000e+00, %2881
  %2883 = fmul fast float %2880, %2882
  %2884 = call float @dx.op.binary.f32(i32 35, float %2883, float 0.000000e+00)  ; FMax(a,b)
  %2885 = fsub fast float -0.000000e+00, %2780
  %2886 = fsub fast float -0.000000e+00, %2781
  %2887 = fsub fast float -0.000000e+00, %2782
  %2888 = call float @dx.op.dot3.f32(i32 55, float %2848, float %2849, float %2850, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %2889 = fsub fast float -0.000000e+00, %2888
  %2890 = call float @dx.op.dot3.f32(i32 55, float %2764, float %2765, float %2766, float %2885, float %2886, float %2887)  ; Dot3(ax,ay,az,bx,by,bz)
  %2891 = fadd fast float %2890, %2741
  %2892 = fadd fast float %2740, %2890
  %2893 = fsub fast float -0.000000e+00, %2892
  %2894 = fcmp ogt float %2888, -0.000000e+00
  %2895 = select i1 %2894, float %2893, float %2891
  %2896 = call float @dx.op.unary.f32(i32 6, float %2889)  ; FAbs(value)
  %2897 = fdiv fast float 1.000000e+00, %2896
  %2898 = fmul fast float %2895, %2897
  %2899 = call float @dx.op.binary.f32(i32 35, float %2898, float 0.000000e+00)  ; FMax(a,b)
  %2900 = call float @dx.op.binary.f32(i32 36, float %2884, float %2899)  ; FMin(a,b)
  %2901 = call float @dx.op.binary.f32(i32 36, float %2869, float %2900)  ; FMin(a,b)
  %2902 = fmul fast float %2901, %2848
  %2903 = fmul fast float %2901, %2849
  %2904 = fmul fast float %2901, %2850
  %2905 = fadd fast float %2902, %92
  %2906 = fadd fast float %2903, %93
  %2907 = fadd fast float %2904, %94
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.CBufRet.f32 %2908, 2
  %2912 = fadd fast float %2905, %2909
  %2913 = fadd fast float %2906, %2910
  %2914 = fadd fast float %2907, %2911
  %2915 = fcmp fast olt float %2869, %2884
  %2916 = fcmp fast olt float %2869, %2899
  %2917 = and i1 %2915, %2916
  br i1 %2917, label %2921, label %2918

; <label>:2918                                    ; preds = %2854
  %2919 = fcmp fast olt float %2884, %2899
  br i1 %2919, label %2920, label %2921

; <label>:2920                                    ; preds = %2918
  br label %2921

; <label>:2921                                    ; preds = %2920, %2918, %2854
  %2922 = phi float [ 0.000000e+00, %2920 ], [ 0.000000e+00, %2918 ], [ 1.000000e+00, %2854 ]
  %2923 = phi float [ 1.000000e+00, %2920 ], [ 0.000000e+00, %2918 ], [ 0.000000e+00, %2854 ]
  %2924 = phi float [ 0.000000e+00, %2920 ], [ 1.000000e+00, %2918 ], [ 0.000000e+00, %2854 ]
  %2925 = phi float [ %2774, %2920 ], [ %2780, %2918 ], [ %2768, %2854 ]
  %2926 = phi float [ %2775, %2920 ], [ %2781, %2918 ], [ %2769, %2854 ]
  %2927 = phi float [ %2776, %2920 ], [ %2782, %2918 ], [ %2770, %2854 ]
  %2928 = call float @dx.op.unary.f32(i32 6, float %2927)  ; FAbs(value)
  %2929 = fcmp fast olt float %2928, 0x3FE276C8C0000000
  %2930 = select i1 %2929, float 0.000000e+00, float 1.000000e+00
  %2931 = select i1 %2929, float 1.000000e+00, float 0.000000e+00
  %2932 = fmul fast float %2931, %2926
  %2933 = fmul fast float %2930, %2927
  %2934 = fsub fast float %2932, %2933
  %2935 = fmul fast float %2925, %2931
  %2936 = fsub fast float -0.000000e+00, %2935
  %2937 = fmul fast float %2930, %2925
  %2938 = call float @dx.op.dot3.f32(i32 55, float %2934, float %2936, float %2937, float %2934, float %2936, float %2937)  ; Dot3(ax,ay,az,bx,by,bz)
  %2939 = call float @dx.op.unary.f32(i32 25, float %2938)  ; Rsqrt(value)
  %2940 = fmul fast float %2934, %2939
  %2941 = fmul fast float %2939, %2936
  %2942 = fmul fast float %2937, %2939
  %2943 = fmul fast float %2942, %2926
  %2944 = fmul fast float %2941, %2927
  %2945 = fsub fast float %2943, %2944
  %2946 = fmul fast float %2940, %2927
  %2947 = fmul fast float %2942, %2925
  %2948 = fsub fast float %2946, %2947
  %2949 = fmul fast float %2941, %2925
  %2950 = fmul fast float %2940, %2926
  %2951 = fsub fast float %2949, %2950
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2945, float %2948, float %2951, float %2945, float %2948, float %2951)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = call float @dx.op.unary.f32(i32 25, float %2952)  ; Rsqrt(value)
  %2954 = fmul fast float %2945, %2953
  %2955 = fmul fast float %2948, %2953
  %2956 = fmul fast float %2951, %2953
  %2957 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float %2940, float %2941, float %2942)  ; Dot3(ax,ay,az,bx,by,bz)
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2912, float %2913, float %2914, float %2954, float %2955, float %2956)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = fmul fast float %2957, 0x3FA99999A0000000
  %2960 = fmul fast float %2958, 0x3FA99999A0000000
  %2961 = call float @dx.op.unary.f32(i32 22, float %2959)  ; Frc(value)
  %2962 = call float @dx.op.unary.f32(i32 22, float %2960)  ; Frc(value)
  %2963 = fadd fast float %2961, 0xBFB99999A0000000
  %2964 = fadd fast float %2962, 0xBFB99999A0000000
  %2965 = call float @dx.op.unary.f32(i32 6, float %2963)  ; FAbs(value)
  %2966 = call float @dx.op.unary.f32(i32 6, float %2964)  ; FAbs(value)
  %2967 = fmul fast float %2965, 1.000000e+01
  %2968 = fmul fast float %2966, 1.000000e+01
  %2969 = call float @dx.op.binary.f32(i32 36, float %2967, float %2968)  ; FMin(a,b)
  %2970 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  %2971 = fsub fast float 1.000000e+00, %2970
  %2972 = fmul fast float %2971, %2922
  %2973 = fmul fast float %2971, %2923
  %2974 = fmul fast float %2971, %2924
  %2975 = fsub fast float %2905, %2710
  %2976 = fsub fast float %2906, %2711
  %2977 = fsub fast float %2907, %2712
  br label %2985

; <label>:2978                                    ; preds = %2836
  %2979 = fmul fast float %2848, 8.096000e+03
  %2980 = fmul fast float %2849, 8.096000e+03
  %2981 = fmul fast float %2850, 8.096000e+03
  %2982 = fadd fast float %2979, %92
  %2983 = fadd fast float %2980, %93
  %2984 = fadd fast float %2981, %94
  br label %2985

; <label>:2985                                    ; preds = %2978, %2921
  %2986 = phi float [ %2848, %2978 ], [ %2975, %2921 ]
  %2987 = phi float [ %2849, %2978 ], [ %2976, %2921 ]
  %2988 = phi float [ %2850, %2978 ], [ %2977, %2921 ]
  %2989 = phi float [ %2982, %2978 ], [ %2905, %2921 ]
  %2990 = phi float [ %2983, %2978 ], [ %2906, %2921 ]
  %2991 = phi float [ %2984, %2978 ], [ %2907, %2921 ]
  %2992 = phi float [ 0.000000e+00, %2978 ], [ %2972, %2921 ]
  %2993 = phi float [ 0.000000e+00, %2978 ], [ %2973, %2921 ]
  %2994 = phi float [ 0.000000e+00, %2978 ], [ %2974, %2921 ]
  %2995 = fcmp fast olt float %2729, 1.000000e+00
  br i1 %2995, label %2996, label %3027, !dx.controlflow.hints !75

; <label>:2996                                    ; preds = %2985
  %2997 = fmul fast float %2988, %2727
  %2998 = fmul fast float %2987, %2728
  %2999 = fsub fast float %2997, %2998
  %3000 = fmul fast float %2986, %2728
  %3001 = fmul fast float %2988, %2726
  %3002 = fsub fast float %3000, %3001
  %3003 = fmul fast float %2987, %2726
  %3004 = fmul fast float %2986, %2727
  %3005 = fsub fast float %3003, %3004
  %3006 = fmul fast float %2999, 2.000000e+00
  %3007 = fmul fast float %3002, 2.000000e+00
  %3008 = fmul fast float %3005, 2.000000e+00
  %3009 = fmul fast float %3006, %2729
  %3010 = fmul fast float %3007, %2729
  %3011 = fmul fast float %3008, %2729
  %3012 = fmul fast float %3008, %2727
  %3013 = fmul fast float %3007, %2728
  %3014 = fmul fast float %3006, %2728
  %3015 = fmul fast float %3008, %2726
  %3016 = fmul fast float %3007, %2726
  %3017 = fmul fast float %3006, %2727
  %3018 = fadd fast float %3012, %2986
  %3019 = fadd fast float %3018, %3009
  %3020 = fsub fast float %3019, %3013
  %3021 = fsub fast float %2987, %3015
  %3022 = fadd fast float %3021, %3010
  %3023 = fadd fast float %3022, %3014
  %3024 = fadd fast float %3011, %2988
  %3025 = fsub fast float %3024, %3017
  %3026 = fadd fast float %3025, %3016
  br label %3027

; <label>:3027                                    ; preds = %2996, %2985
  %3028 = phi float [ %3020, %2996 ], [ %2986, %2985 ]
  %3029 = phi float [ %3023, %2996 ], [ %2987, %2985 ]
  %3030 = phi float [ %3026, %2996 ], [ %2988, %2985 ]
  br i1 %2853, label %3031, label %3062

; <label>:3031                                    ; preds = %3027
  %3032 = fmul fast float %447, 0x400187C840000000
  %3033 = fadd fast float %3032, 0xC00EFC2120000000
  %3034 = fmul fast float %3033, %447
  %3035 = fadd fast float %3034, 0x3FE5D16340000000
  %3036 = fmul fast float %3035, %447
  %3037 = fadd fast float %3036, 1.000000e+00
  %3038 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3039 = fsub fast float %2989, %92
  %3040 = fsub fast float %2990, %93
  %3041 = fsub fast float %2991, %94
  %3042 = fsub fast float %2989, %2710
  %3043 = fsub fast float %2990, %2711
  %3044 = fsub fast float %2991, %2712
  %3045 = call float @dx.op.dot3.f32(i32 55, float %3039, float %3040, float %3041, float %3039, float %3040, float %3041)  ; Dot3(ax,ay,az,bx,by,bz)
  %3046 = call float @dx.op.dot3.f32(i32 55, float %3042, float %3043, float %3044, float %3042, float %3043, float %3044)  ; Dot3(ax,ay,az,bx,by,bz)
  %3047 = fadd fast float %3046, 0x3EE4F8B580000000
  %3048 = fdiv fast float %3045, %3047
  %3049 = bitcast float %3048 to i32
  %3050 = ashr i32 %3049, 1
  %3051 = add nsw i32 %3050, 532487669
  %3052 = bitcast i32 %3051 to float
  %3053 = fmul fast float %3052, %3038
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  %3055 = fmul fast float %3054, 0x4009981AE0000000
  %3056 = fsub fast float 0x40111BBD80000000, %3055
  %3057 = fmul fast float %3056, %3054
  %3058 = fadd fast float %3057, 0xC0009F6020000000
  %3059 = fmul fast float %3058, %3054
  %3060 = fadd fast float %3059, 1.000000e+00
  %3061 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  br label %3065

; <label>:3062                                    ; preds = %3027
  %3063 = icmp ne i32 %2754, -1
  %3064 = zext i1 %3063 to i32
  br label %3065

; <label>:3065                                    ; preds = %3062, %3031
  %3066 = phi float [ %447, %3062 ], [ %3061, %3031 ]
  %3067 = phi i32 [ %3064, %3062 ], [ 0, %3031 ]
  %3068 = fmul float %3066, 5.000000e+00
  %3069 = fsub float 5.000000e+00, %3068
  %3070 = icmp ne i32 %3067, 0
  %3071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3072 = extractvalue %dx.types.CBufRet.f32 %3071, 3
  %3073 = fadd fast float %3072, %3069
  %3074 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3073)  ; FMax(a,b)
  %3075 = call float @dx.op.unary.f32(i32 6, float %3028)  ; FAbs(value)
  %3076 = call float @dx.op.unary.f32(i32 6, float %3029)  ; FAbs(value)
  %3077 = fadd fast float %3076, %3075
  %3078 = call float @dx.op.unary.f32(i32 6, float %3030)  ; FAbs(value)
  %3079 = fadd fast float %3077, %3078
  %3080 = fcmp fast oeq float %3079, 0.000000e+00
  %3081 = fdiv fast float 1.000000e+00, %3079
  %3082 = select i1 %3080, float 1.000000e+00, float %3081
  %3083 = fmul fast float %3082, %3028
  %3084 = fmul fast float %3082, %3029
  %3085 = call float @dx.op.unary.f32(i32 6, float %3084)  ; FAbs(value)
  %3086 = call float @dx.op.unary.f32(i32 6, float %3083)  ; FAbs(value)
  %3087 = fsub fast float 1.000000e+00, %3085
  %3088 = fsub fast float 1.000000e+00, %3086
  %3089 = fcmp fast oge float %3083, 0.000000e+00
  %3090 = fcmp fast oge float %3084, 0.000000e+00
  %3091 = select i1 %3089, float 1.000000e+00, float -1.000000e+00
  %3092 = select i1 %3090, float 1.000000e+00, float -1.000000e+00
  %3093 = fcmp fast ole float %3030, 0.000000e+00
  %3094 = fmul fast float %3091, %3087
  %3095 = fmul fast float %3092, %3088
  %3096 = select i1 %3093, float %3094, float %3083
  %3097 = select i1 %3093, float %3095, float %3084
  %3098 = fmul fast float %3096, 5.000000e-01
  %3099 = fmul fast float %3097, 5.000000e-01
  %3100 = fadd fast float %3098, 5.000000e-01
  %3101 = fadd fast float %3099, 5.000000e-01
  %3102 = uitofp i32 %2753 to float
  %3103 = call float @dx.op.binary.f32(i32 36, float %3074, float 3.000000e+00)  ; FMin(a,b)
  %3104 = fadd fast float %3103, 2.000000e+00
  %3105 = call float @dx.op.unary.f32(i32 21, float %3104)  ; Exp(value)
  %3106 = extractvalue %dx.types.CBufRet.f32 %3071, 1
  %3107 = fmul fast float %3106, %3105
  %3108 = fmul fast float %3107, 2.000000e+00
  %3109 = fsub fast float 1.000000e+00, %3108
  %3110 = fmul fast float %3100, %3109
  %3111 = fmul fast float %3101, %3109
  %3112 = fadd fast float %3110, %3107
  %3113 = fadd fast float %3111, %3107
  %3114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %33, float %3112, float %3113, float %3102, float undef, i32 0, i32 0, i32 undef, float %3074)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3119 = extractvalue %dx.types.CBufRet.f32 %3118, 3
  %3120 = fmul fast float %3119, %2723
  %3121 = call float @dx.op.binary.f32(i32 36, float %2595, float %3120)  ; FMin(a,b)
  %3122 = select i1 %3070, float %3121, float %3120
  %3123 = fmul fast float %3115, %2799
  %3124 = fmul fast float %3123, %3122
  %3125 = fmul fast float %3116, %2799
  %3126 = fmul fast float %3125, %3122
  %3127 = fmul fast float %3117, %2799
  %3128 = fmul fast float %3127, %3122
  %3129 = fadd fast float %3124, %2690
  %3130 = fadd fast float %3126, %2691
  %3131 = fadd fast float %3128, %2692
  %3132 = fsub fast float %2701, %2799
  %3133 = and i32 %2814, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fptoui float %3134 to i32
  %3136 = icmp eq i32 %2809, 1
  %3137 = zext i1 %3136 to i32
  %3138 = add i32 %3137, %3135
  %3139 = uitofp i32 %3138 to float
  %3140 = fptoui float %3139 to i32
  %3141 = shl i32 %3140, 8
  %3142 = and i32 %3141, 65280
  %3143 = or i32 %3142, %2817
  %3144 = fmul fast float %2992, %2799
  %3145 = fmul fast float %2993, %2799
  %3146 = fmul fast float %2994, %2799
  %3147 = fadd fast float %3144, %2697
  %3148 = fadd fast float %3145, %2698
  %3149 = fadd fast float %3146, %2699
  %3150 = fmul fast float %3102, 0x3FE3C6EF40000000
  %3151 = call float @dx.op.unary.f32(i32 22, float %3150)  ; Frc(value)
  %3152 = fadd fast float %3151, 0x3FE5555560000000
  %3153 = fadd fast float %3151, 0x3FD5555560000000
  %3154 = fsub fast float -0.000000e+00, %3151
  %3155 = fsub fast float -0.000000e+00, %3152
  %3156 = fsub fast float -0.000000e+00, %3153
  %3157 = fcmp fast oge float %3151, %3154
  %3158 = fcmp fast oge float %3152, %3155
  %3159 = fcmp fast oge float %3153, %3156
  %3160 = call float @dx.op.unary.f32(i32 6, float %3151)  ; FAbs(value)
  %3161 = call float @dx.op.unary.f32(i32 6, float %3152)  ; FAbs(value)
  %3162 = call float @dx.op.unary.f32(i32 6, float %3153)  ; FAbs(value)
  %3163 = call float @dx.op.unary.f32(i32 22, float %3160)  ; Frc(value)
  %3164 = call float @dx.op.unary.f32(i32 22, float %3161)  ; Frc(value)
  %3165 = call float @dx.op.unary.f32(i32 22, float %3162)  ; Frc(value)
  %3166 = fsub fast float -0.000000e+00, %3163
  %3167 = fsub fast float -0.000000e+00, %3164
  %3168 = fsub fast float -0.000000e+00, %3165
  %3169 = select i1 %3157, float %3163, float %3166
  %3170 = select i1 %3158, float %3164, float %3167
  %3171 = select i1 %3159, float %3165, float %3168
  %3172 = fmul fast float %3169, 6.000000e+00
  %3173 = fmul fast float %3170, 6.000000e+00
  %3174 = fmul fast float %3171, 6.000000e+00
  %3175 = fadd fast float %3172, -3.000000e+00
  %3176 = fadd fast float %3173, -3.000000e+00
  %3177 = fadd fast float %3174, -3.000000e+00
  %3178 = call float @dx.op.unary.f32(i32 6, float %3175)  ; FAbs(value)
  %3179 = call float @dx.op.unary.f32(i32 6, float %3176)  ; FAbs(value)
  %3180 = call float @dx.op.unary.f32(i32 6, float %3177)  ; FAbs(value)
  %3181 = fadd fast float %3178, -1.000000e+00
  %3182 = fadd fast float %3179, -1.000000e+00
  %3183 = fadd fast float %3180, -1.000000e+00
  %3184 = call float @dx.op.unary.f32(i32 7, float %3181)  ; Saturate(value)
  %3185 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3186 = call float @dx.op.unary.f32(i32 7, float %3183)  ; Saturate(value)
  %3187 = fmul fast float %3184, %2799
  %3188 = fmul fast float %3185, %2799
  %3189 = fmul fast float %3186, %2799
  %3190 = fadd fast float %3187, %2693
  %3191 = fadd fast float %3188, %2694
  %3192 = fadd fast float %3189, %2695
  %3193 = icmp eq i32 %2753, 0
  %3194 = select i1 %3193, i32 1, i32 %2696
  %3195 = icmp eq i32 %2700, 0
  br i1 %3195, label %2820, label %3196

; <label>:3196                                    ; preds = %3065
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3199 = bitcast float %3198 to i32
  %3200 = lshr i32 %3199, 8
  %3201 = and i32 %3200, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fptoui float %3202 to i32
  %3204 = icmp eq i32 %3203, 16
  %3205 = bitcast float %3120 to i32
  %3206 = select i1 %3204, i32 %3205, i32 %2689
  %3207 = icmp eq i32 %3203, 17
  %3208 = bitcast float %2595 to i32
  %3209 = select i1 %3207, i32 %3208, i32 %3206
  %3210 = icmp eq i32 %3203, 18
  %3211 = bitcast float %3122 to i32
  %3212 = select i1 %3210, i32 %3211, i32 %3209
  br label %2820

; <label>:3213                                    ; preds = %2820
  br label %3214

; <label>:3214                                    ; preds = %3213, %2647
  %3215 = phi i32 [ %2648, %2647 ], [ %2821, %3213 ]
  %3216 = phi i32 [ %2649, %2647 ], [ %2822, %3213 ]
  %3217 = phi float [ %2650, %2647 ], [ %2823, %3213 ]
  %3218 = phi float [ %2651, %2647 ], [ %2824, %3213 ]
  %3219 = phi float [ %2652, %2647 ], [ %2825, %3213 ]
  %3220 = phi float [ %2653, %2647 ], [ %2826, %3213 ]
  %3221 = phi float [ %2654, %2647 ], [ %2827, %3213 ]
  %3222 = phi float [ %2655, %2647 ], [ %2828, %3213 ]
  %3223 = phi i32 [ %2656, %2647 ], [ %2829, %3213 ]
  %3224 = phi float [ %2657, %2647 ], [ %2830, %3213 ]
  %3225 = phi float [ %2658, %2647 ], [ %2831, %3213 ]
  %3226 = phi float [ %2659, %2647 ], [ %2832, %3213 ]
  %3227 = phi i32 [ %2660, %2647 ], [ %2833, %3213 ]
  %3228 = phi float [ %2661, %2647 ], [ %2834, %3213 ]
  %3229 = add i32 %2662, 1
  %3230 = icmp ugt i32 %3229, %2644
  br i1 %3230, label %3231, label %2647, !llvm.loop !76

; <label>:3231                                    ; preds = %3214
  br label %3232

; <label>:3232                                    ; preds = %3231, %2594
  %3233 = phi i32 [ %2306, %2594 ], [ %3215, %3231 ]
  %3234 = phi i32 [ %2582, %2594 ], [ %3216, %3231 ]
  %3235 = phi float [ 0.000000e+00, %2594 ], [ %3217, %3231 ]
  %3236 = phi float [ 0.000000e+00, %2594 ], [ %3218, %3231 ]
  %3237 = phi float [ 0.000000e+00, %2594 ], [ %3219, %3231 ]
  %3238 = phi float [ 0.000000e+00, %2594 ], [ %3220, %3231 ]
  %3239 = phi float [ 0.000000e+00, %2594 ], [ %3221, %3231 ]
  %3240 = phi float [ 0.000000e+00, %2594 ], [ %3222, %3231 ]
  %3241 = phi i32 [ 0, %2594 ], [ %3223, %3231 ]
  %3242 = phi float [ 0.000000e+00, %2594 ], [ %3224, %3231 ]
  %3243 = phi float [ 0.000000e+00, %2594 ], [ %3225, %3231 ]
  %3244 = phi float [ 0.000000e+00, %2594 ], [ %3226, %3231 ]
  %3245 = call float @dx.op.dot3.f32(i32 55, float %3235, float %3236, float %3237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3246 = select i1 %487, float 0.000000e+00, float %3235
  %3247 = select i1 %487, float %3245, float %3236
  %3248 = select i1 %487, float 0.000000e+00, float %3237
  %3249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3250 = extractvalue %dx.types.CBufRet.f32 %3249, 0
  %3251 = bitcast float %3250 to i32
  %3252 = lshr i32 %3251, 8
  %3253 = and i32 %3252, 255
  %3254 = uitofp i32 %3253 to float
  %3255 = fptoui float %3254 to i32
  %3256 = icmp eq i32 %3255, 13
  br i1 %3256, label %3257, label %3277

; <label>:3257                                    ; preds = %3232
  %3258 = fadd fast float %3238, 1.000000e+00
  %3259 = fadd fast float %3239, 1.000000e+00
  %3260 = fadd fast float %3240, 1.000000e+00
  %3261 = fmul fast float %3258, 5.000000e-01
  %3262 = fmul fast float %3259, 5.000000e-01
  %3263 = fmul fast float %3260, 5.000000e-01
  %3264 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3265 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = fmul fast float %3264, 1.023000e+03
  %3268 = fmul fast float %3265, 1.023000e+03
  %3269 = fmul fast float %3266, 1.023000e+03
  %3270 = fptoui float %3267 to i32
  %3271 = fptoui float %3268 to i32
  %3272 = fptoui float %3269 to i32
  %3273 = shl i32 %3271, 10
  %3274 = or i32 %3273, %3270
  %3275 = shl i32 %3272, 20
  %3276 = or i32 %3274, %3275
  br label %3277

; <label>:3277                                    ; preds = %3257, %3232
  %3278 = phi i32 [ %3276, %3257 ], [ %3234, %3232 ]
  %3279 = icmp eq i32 %3255, 14
  %3280 = select i1 %3279, i32 %3241, i32 %3278
  %3281 = icmp eq i32 %3255, 22
  br i1 %3281, label %3282, label %3302

; <label>:3282                                    ; preds = %3277
  %3283 = fadd fast float %3242, 1.000000e+00
  %3284 = fadd fast float %3243, 1.000000e+00
  %3285 = fadd fast float %3244, 1.000000e+00
  %3286 = fmul fast float %3283, 5.000000e-01
  %3287 = fmul fast float %3284, 5.000000e-01
  %3288 = fmul fast float %3285, 5.000000e-01
  %3289 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3290 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3291 = call float @dx.op.unary.f32(i32 7, float %3288)  ; Saturate(value)
  %3292 = fmul fast float %3289, 1.023000e+03
  %3293 = fmul fast float %3290, 1.023000e+03
  %3294 = fmul fast float %3291, 1.023000e+03
  %3295 = fptoui float %3292 to i32
  %3296 = fptoui float %3293 to i32
  %3297 = fptoui float %3294 to i32
  %3298 = shl i32 %3296, 10
  %3299 = or i32 %3298, %3295
  %3300 = shl i32 %3297, 20
  %3301 = or i32 %3299, %3300
  br label %3302

; <label>:3302                                    ; preds = %3282, %3277
  %3303 = phi i32 [ %3301, %3282 ], [ %3280, %3277 ]
  %3304 = fcmp fast olt float %2583, 0.000000e+00
  %3305 = call float @dx.op.unary.f32(i32 6, float %2583)  ; FAbs(value)
  %3306 = fmul fast float %3305, %2584
  %3307 = fmul fast float %3305, %2585
  %3308 = fmul fast float %3305, %2586
  %3309 = select i1 %3304, float %2584, float %3306
  %3310 = select i1 %3304, float %2585, float %3307
  %3311 = select i1 %3304, float %2586, float %3308
  %3312 = fsub fast float 1.000000e+00, %3305
  %3313 = call float @dx.op.unary.f32(i32 7, float %3312)  ; Saturate(value)
  %3314 = fmul fast float %3313, %3246
  %3315 = fmul fast float %3313, %3247
  %3316 = fmul fast float %3313, %3248
  %3317 = fadd fast float %3309, %3314
  %3318 = fadd fast float %3310, %3315
  %3319 = fadd fast float %3311, %3316
  br label %3320

; <label>:3320                                    ; preds = %3302, %2581
  %3321 = phi i32 [ %2306, %2581 ], [ %3233, %3302 ]
  %3322 = phi i32 [ %2582, %2581 ], [ %3303, %3302 ]
  %3323 = phi float [ %2584, %2581 ], [ %3317, %3302 ]
  %3324 = phi float [ %2585, %2581 ], [ %3318, %3302 ]
  %3325 = phi float [ %2586, %2581 ], [ %3319, %3302 ]
  %3326 = fmul fast float %2308, %1599
  %3327 = fmul fast float %2309, %1599
  %3328 = fmul fast float %2310, %1599
  %3329 = fmul fast float %3323, %409
  %3330 = fmul fast float %3324, %410
  %3331 = fmul fast float %3325, %1596
  %3332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.f32 %3332, 3
  %3334 = fcmp fast oeq float %3333, 0.000000e+00
  br i1 %3334, label %3639, label %3335

; <label>:3335                                    ; preds = %3320
  %3336 = extractvalue %dx.types.CBufRet.f32 %3332, 0
  %3337 = extractvalue %dx.types.CBufRet.f32 %3332, 1
  %3338 = extractvalue %dx.types.CBufRet.f32 %3332, 2
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.CBufRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.CBufRet.f32 %3339, 2
  %3343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.CBufRet.f32 %3343, 1
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = select i1 %487, float %3344, float %3340
  %3348 = select i1 %487, float %3346, float %3341
  %3349 = select i1 %487, float %3345, float %3342
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 0
  %3352 = extractvalue %dx.types.CBufRet.f32 %3350, 1
  %3353 = extractvalue %dx.types.CBufRet.f32 %3350, 2
  %3354 = extractvalue %dx.types.CBufRet.f32 %3350, 3
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 0
  %3357 = extractvalue %dx.types.CBufRet.f32 %3355, 1
  %3358 = extractvalue %dx.types.CBufRet.f32 %3355, 2
  %3359 = extractvalue %dx.types.CBufRet.f32 %3355, 3
  %3360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %3361 = extractvalue %dx.types.CBufRet.f32 %3360, 0
  %3362 = extractvalue %dx.types.CBufRet.f32 %3360, 1
  %3363 = extractvalue %dx.types.CBufRet.f32 %3360, 2
  %3364 = extractvalue %dx.types.CBufRet.f32 %3360, 3
  %3365 = fmul fast float %3351, %92
  %3366 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3352, float %3365)  ; FMad(a,b,c)
  %3367 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3353, float %3366)  ; FMad(a,b,c)
  %3368 = fadd fast float %3367, %3354
  %3369 = fmul fast float %3356, %92
  %3370 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3357, float %3369)  ; FMad(a,b,c)
  %3371 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3358, float %3370)  ; FMad(a,b,c)
  %3372 = fadd fast float %3371, %3359
  %3373 = fmul fast float %3361, %92
  %3374 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3362, float %3373)  ; FMad(a,b,c)
  %3375 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3363, float %3374)  ; FMad(a,b,c)
  %3376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %3377 = extractvalue %dx.types.CBufRet.f32 %3376, 0
  %3378 = extractvalue %dx.types.CBufRet.f32 %3376, 1
  %3379 = extractvalue %dx.types.CBufRet.f32 %3376, 3
  %3380 = fmul fast float %3379, %3368
  %3381 = fmul fast float %3379, %3372
  %3382 = fadd fast float %3380, %3377
  %3383 = fadd fast float %3381, %3378
  %3384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %3385 = extractvalue %dx.types.CBufRet.f32 %3384, 0
  %3386 = extractvalue %dx.types.CBufRet.f32 %3384, 1
  %3387 = extractvalue %dx.types.CBufRet.f32 %3384, 3
  %3388 = fmul fast float %3387, %3368
  %3389 = fmul fast float %3387, %3372
  %3390 = fadd fast float %3388, %3385
  %3391 = fadd fast float %3389, %3386
  %3392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %3393 = extractvalue %dx.types.CBufRet.f32 %3392, 1
  %3394 = fsub fast float -0.000000e+00, %3364
  %3395 = fsub fast float %3394, %3375
  %3396 = fadd fast float %3395, %3393
  %3397 = extractvalue %dx.types.CBufRet.f32 %3392, 2
  %3398 = fmul fast float %3396, %3397
  %3399 = fsub fast float 1.000000e+00, %3398
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3401, 0
  %3403 = extractvalue %dx.types.CBufRet.f32 %3401, 1
  %3404 = fsub fast float %3390, %3402
  %3405 = fsub fast float %3391, %3403
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.CBufRet.f32 %3407, 1
  %3410 = fsub fast float %3382, %3408
  %3411 = fsub fast float %3383, %3409
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %3414 = extractvalue %dx.types.CBufRet.f32 %3413, 0
  %3415 = extractvalue %dx.types.CBufRet.f32 %3413, 1
  %3416 = fsub fast float %3368, %3414
  %3417 = fsub fast float %3372, %3415
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 0
  %3421 = bitcast float %3420 to i32
  %3422 = lshr i32 %3421, 8
  %3423 = and i32 %3422, 255
  %3424 = uitofp i32 %3423 to float
  %3425 = fptoui float %3424 to i32
  %3426 = and i32 %3425, -2
  %3427 = icmp eq i32 %3426, 10
  br i1 %3427, label %3428, label %3498

; <label>:3428                                    ; preds = %3335
  %3429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %3430 = extractvalue %dx.types.CBufRet.f32 %3429, 0
  %3431 = fcmp fast olt float %3416, 0.000000e+00
  %3432 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3433 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3434 = select i1 %3431, float %3432, float %3433
  %3435 = fmul fast float %3434, %3416
  %3436 = call float @dx.op.unary.f32(i32 6, float %3435)  ; FAbs(value)
  %3437 = fcmp fast olt float %3417, 0.000000e+00
  %3438 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3439 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3440 = select i1 %3437, float %3438, float %3439
  %3441 = fmul fast float %3440, %3417
  %3442 = call float @dx.op.unary.f32(i32 6, float %3441)  ; FAbs(value)
  %3443 = call float @dx.op.binary.f32(i32 35, float %3436, float %3442)  ; FMax(a,b)
  %3444 = fsub fast float %3430, %3443
  %3445 = call float @dx.op.unary.f32(i32 7, float %3444)  ; Saturate(value)
  %3446 = fmul fast float %3445, %3400
  %3447 = fcmp fast olt float %3410, 0.000000e+00
  %3448 = extractvalue %dx.types.CBufRet.f32 %3412, 0
  %3449 = extractvalue %dx.types.CBufRet.f32 %3412, 2
  %3450 = select i1 %3447, float %3448, float %3449
  %3451 = fmul fast float %3450, %3410
  %3452 = call float @dx.op.unary.f32(i32 6, float %3451)  ; FAbs(value)
  %3453 = fcmp fast olt float %3411, 0.000000e+00
  %3454 = extractvalue %dx.types.CBufRet.f32 %3412, 1
  %3455 = extractvalue %dx.types.CBufRet.f32 %3412, 3
  %3456 = select i1 %3453, float %3454, float %3455
  %3457 = fmul fast float %3456, %3411
  %3458 = call float @dx.op.unary.f32(i32 6, float %3457)  ; FAbs(value)
  %3459 = call float @dx.op.binary.f32(i32 35, float %3452, float %3458)  ; FMax(a,b)
  %3460 = fsub fast float %3430, %3459
  %3461 = call float @dx.op.unary.f32(i32 7, float %3460)  ; Saturate(value)
  %3462 = fmul fast float %3461, %3400
  %3463 = fcmp fast olt float %3404, 0.000000e+00
  %3464 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3465 = extractvalue %dx.types.CBufRet.f32 %3406, 2
  %3466 = select i1 %3463, float %3464, float %3465
  %3467 = fmul fast float %3466, %3404
  %3468 = call float @dx.op.unary.f32(i32 6, float %3467)  ; FAbs(value)
  %3469 = fcmp fast olt float %3405, 0.000000e+00
  %3470 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3471 = extractvalue %dx.types.CBufRet.f32 %3406, 3
  %3472 = select i1 %3469, float %3470, float %3471
  %3473 = fmul fast float %3472, %3405
  %3474 = call float @dx.op.unary.f32(i32 6, float %3473)  ; FAbs(value)
  %3475 = call float @dx.op.binary.f32(i32 35, float %3468, float %3474)  ; FMax(a,b)
  %3476 = fsub fast float %3430, %3475
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = fmul fast float %3477, %3400
  %3479 = fadd fast float %3446, 1.000000e+00
  %3480 = fadd fast float %3462, 1.000000e+00
  %3481 = fadd fast float %3478, 1.000000e+00
  %3482 = fmul fast float %3479, 5.000000e-01
  %3483 = fmul fast float %3480, 5.000000e-01
  %3484 = fmul fast float %3481, 5.000000e-01
  %3485 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3486 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3487 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3488 = fmul fast float %3485, 1.023000e+03
  %3489 = fmul fast float %3486, 1.023000e+03
  %3490 = fmul fast float %3487, 1.023000e+03
  %3491 = fptoui float %3488 to i32
  %3492 = fptoui float %3489 to i32
  %3493 = fptoui float %3490 to i32
  %3494 = shl i32 %3492, 10
  %3495 = or i32 %3494, %3491
  %3496 = shl i32 %3493, 20
  %3497 = or i32 %3495, %3496
  br label %3498

; <label>:3498                                    ; preds = %3428, %3335
  %3499 = phi i32 [ %3497, %3428 ], [ %3322, %3335 ]
  %3500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3501 = extractvalue %dx.types.CBufRet.f32 %3500, 1
  %3502 = fcmp fast une float %3501, 0.000000e+00
  br i1 %3502, label %3503, label %3518

; <label>:3503                                    ; preds = %3498
  %3504 = lshr i32 %412, 4
  %3505 = lshr i32 %418, 4
  %3506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3507 = extractvalue %dx.types.CBufRet.f32 %3506, 0
  %3508 = fptoui float %3507 to i32
  %3509 = add i32 %3508, 15
  %3510 = lshr i32 %3509, 4
  %3511 = mul i32 %3510, %3505
  %3512 = add i32 %3511, %3504
  %3513 = shl i32 %3512, 3
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, -268435456
  %3517 = icmp eq i32 %3516, -1342177280
  br i1 %3517, label %3528, label %3518

; <label>:3518                                    ; preds = %3503, %3498
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3522 = fmul fast float %3520, %52
  %3523 = fmul fast float %3521, %53
  %3524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %35, float %3522, float %3523, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3525 = extractvalue %dx.types.ResRet.f32 %3524, 0
  %3526 = extractvalue %dx.types.ResRet.f32 %3524, 1
  %3527 = extractvalue %dx.types.ResRet.f32 %3524, 2
  br label %3528

; <label>:3528                                    ; preds = %3518, %3503
  %3529 = phi float [ %3525, %3518 ], [ 0.000000e+00, %3503 ]
  %3530 = phi float [ %3526, %3518 ], [ 0.000000e+00, %3503 ]
  %3531 = phi float [ %3527, %3518 ], [ 0.000000e+00, %3503 ]
  %3532 = call float @dx.op.binary.f32(i32 36, float %3530, float %3531)  ; FMin(a,b)
  %3533 = call float @dx.op.binary.f32(i32 36, float %3529, float %3532)  ; FMin(a,b)
  %3534 = fcmp fast ogt float %3533, 0.000000e+00
  br i1 %3534, label %3535, label %3639, !dx.controlflow.hints !80

; <label>:3535                                    ; preds = %3528
  %3536 = fmul fast float %3529, %3347
  %3537 = fmul fast float %3530, %3348
  %3538 = fmul fast float %3531, %3349
  %3539 = fsub fast float %3336, %375
  %3540 = fsub fast float %3337, %376
  %3541 = fsub fast float %3338, %377
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3539, float %3540, float %3541, float %3539, float %3540, float %3541)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = call float @dx.op.unary.f32(i32 25, float %3542)  ; Rsqrt(value)
  %3544 = fmul fast float %3543, %3539
  %3545 = fmul fast float %3543, %3540
  %3546 = fmul fast float %3543, %3541
  %3547 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %3548 = call float @dx.op.dot3.f32(i32 55, float %488, float %489, float %490, float %3544, float %3545, float %3546)  ; Dot3(ax,ay,az,bx,by,bz)
  %3549 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3550 = fmul fast float %3549, %3549
  %3551 = fmul fast float %3550, %529
  %3552 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = bitcast float %3554 to i32
  %3556 = lshr i32 %3555, 8
  %3557 = and i32 %3556, 255
  %3558 = uitofp i32 %3557 to float
  %3559 = fptoui float %3558 to i32
  %3560 = and i32 %3559, 8
  %3561 = icmp ne i32 %3560, 0
  %3562 = select i1 %3561, float %3552, float 1.000000e+00
  %3563 = fmul fast float %3562, %3549
  %3564 = call float @dx.op.dot3.f32(i32 55, float %347, float %348, float %349, float %3544, float %3545, float %3546)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = fmul fast float %3564, %3564
  %3566 = call float @dx.op.unary.f32(i32 6, float %3547)  ; FAbs(value)
  %3567 = fsub fast float 1.000000e+00, %520
  %3568 = fmul fast float %493, %493
  %3569 = fmul fast float %3568, %3567
  %3570 = fadd fast float %3569, %520
  %3571 = bitcast float %3570 to i32
  %3572 = ashr i32 %3571, 1
  %3573 = add nsw i32 %3572, 532487669
  %3574 = bitcast i32 %3573 to float
  %3575 = fadd fast float %3574, %493
  %3576 = fmul fast float %520, %3565
  %3577 = fsub fast float 1.000000e+00, %3565
  %3578 = fadd fast float %3577, %3576
  %3579 = fmul fast float %3566, %3566
  %3580 = fmul fast float %3579, %3567
  %3581 = fadd fast float %3580, %520
  %3582 = bitcast float %3581 to i32
  %3583 = ashr i32 %3582, 1
  %3584 = add nsw i32 %3583, 532487669
  %3585 = bitcast i32 %3584 to float
  %3586 = fadd fast float %3585, %3566
  %3587 = fmul fast float %3578, %3578
  %3588 = fmul fast float %3587, %3575
  %3589 = fmul fast float %3588, %3586
  %3590 = fdiv fast float 0x3FF0A00000000000, %3589
  %3591 = fmul fast float %3590, %520
  %3592 = call float @dx.op.unary.f32(i32 6, float %3548)  ; FAbs(value)
  %3593 = fsub fast float 1.000000e+00, %3592
  %3594 = bitcast float %3593 to i32
  %3595 = sitofp i32 %3594 to float
  %3596 = fmul fast float %3595, 5.000000e+00
  %3597 = fadd fast float %3596, 0xC1EFBF8940000000
  %3598 = fptosi float %3597 to i32
  %3599 = bitcast i32 %3598 to float
  %3600 = fmul fast float %3599, %403
  %3601 = fmul fast float %3599, %404
  %3602 = fmul fast float %3599, %1594
  %3603 = fadd fast float %3600, %368
  %3604 = fadd fast float %3601, %369
  %3605 = fadd fast float %3602, %491
  %3606 = fmul fast float %3547, 9.843750e-01
  %3607 = fmul fast float %447, 9.843750e-01
  %3608 = fadd fast float %3606, 7.812500e-03
  %3609 = fadd fast float %3607, 7.812500e-03
  %3610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %3608, float %3609, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 3
  %3613 = fmul fast float %3611, %368
  %3614 = fmul fast float %3611, %369
  %3615 = fmul fast float %3611, %491
  %3616 = fadd fast float %3613, %3612
  %3617 = fadd fast float %3614, %3612
  %3618 = fadd fast float %3615, %3612
  %3619 = call float @dx.op.binary.f32(i32 35, float %3617, float %3618)  ; FMax(a,b)
  %3620 = call float @dx.op.binary.f32(i32 35, float %3616, float %3619)  ; FMax(a,b)
  %3621 = fsub fast float 1.000000e+00, %3620
  %3622 = fmul fast float %3621, %3563
  %3623 = fmul fast float %3563, %3591
  %3624 = fmul fast float %3623, %3603
  %3625 = fmul fast float %3623, %3604
  %3626 = fmul fast float %3623, %3605
  %3627 = fmul fast float %3622, %3536
  %3628 = fmul fast float %3622, %3537
  %3629 = fmul fast float %3622, %3538
  %3630 = fadd fast float %3627, %3326
  %3631 = fadd fast float %3628, %3327
  %3632 = fadd fast float %3629, %3328
  %3633 = fmul fast float %3624, %3536
  %3634 = fmul fast float %3625, %3537
  %3635 = fmul fast float %3626, %3538
  %3636 = fadd fast float %3633, %3329
  %3637 = fadd fast float %3634, %3330
  %3638 = fadd fast float %3635, %3331
  br label %3639

; <label>:3639                                    ; preds = %3535, %3528, %3320
  %3640 = phi i32 [ %3499, %3535 ], [ %3322, %3320 ], [ %3499, %3528 ]
  %3641 = phi i32 [ 1, %3535 ], [ 0, %3320 ], [ 0, %3528 ]
  %3642 = phi float [ %3633, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3643 = phi float [ %3634, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3644 = phi float [ %3635, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3645 = phi float [ %3627, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3646 = phi float [ %3628, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3647 = phi float [ %3629, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3648 = phi float [ %3636, %3535 ], [ %3329, %3320 ], [ %3329, %3528 ]
  %3649 = phi float [ %3637, %3535 ], [ %3330, %3320 ], [ %3330, %3528 ]
  %3650 = phi float [ %3638, %3535 ], [ %3331, %3320 ], [ %3331, %3528 ]
  %3651 = phi float [ %3630, %3535 ], [ %3326, %3320 ], [ %3326, %3528 ]
  %3652 = phi float [ %3631, %3535 ], [ %3327, %3320 ], [ %3327, %3528 ]
  %3653 = phi float [ %3632, %3535 ], [ %3328, %3320 ], [ %3328, %3528 ]
  %3654 = phi float [ %3529, %3535 ], [ 0.000000e+00, %3320 ], [ 0.000000e+00, %3528 ]
  %3655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.i32 %3655, 0
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %4481, label %3658

; <label>:3658                                    ; preds = %3639
  %3659 = lshr i32 %412, 4
  %3660 = lshr i32 %418, 4
  %3661 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3662 = extractvalue %dx.types.CBufRet.i32 %3661, 0
  %3663 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3660, i32 %3662, i32 %3659)  ; UMad(a,b,c)
  %3664 = add nsw i32 %3656, -1
  %3665 = call i32 @dx.op.binary.i32(i32 37, i32 %3664, i32 0)  ; IMax(a,b)
  %3666 = call float @dx.op.binary.f32(i32 35, float %49, float 0.000000e+00)  ; FMax(a,b)
  %3667 = fptoui float %3666 to i32
  %3668 = lshr i32 %3667, 5
  %3669 = call i32 @dx.op.binary.i32(i32 40, i32 %3668, i32 8191)  ; UMin(a,b)
  %3670 = shl i32 %3669, 2
  %3671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.i32 %3671, 0
  %3673 = lshr i32 %3672, 16
  %3674 = and i32 %3672, 65535
  %3675 = lshr i32 %3672, 21
  %3676 = lshr i32 %3674, 5
  %3677 = call i32 @dx.op.binary.i32(i32 40, i32 %3676, i32 %3665)  ; UMin(a,b)
  %3678 = icmp ugt i32 %3675, %3677
  br i1 %3678, label %4414, label %3679

; <label>:3679                                    ; preds = %3658
  br label %3680

; <label>:3680                                    ; preds = %4383, %3679
  %3681 = phi i32 [ %4384, %4383 ], [ %3640, %3679 ]
  %3682 = phi i32 [ %4385, %4383 ], [ 0, %3679 ]
  %3683 = phi i32 [ %4386, %4383 ], [ 0, %3679 ]
  %3684 = phi i32 [ %4387, %4383 ], [ 0, %3679 ]
  %3685 = phi i32 [ %4388, %4383 ], [ 0, %3679 ]
  %3686 = phi i32 [ %4389, %4383 ], [ 0, %3679 ]
  %3687 = phi i32 [ %4390, %4383 ], [ 0, %3679 ]
  %3688 = phi i32 [ %4391, %4383 ], [ 0, %3679 ]
  %3689 = phi i32 [ %4392, %4383 ], [ 0, %3679 ]
  %3690 = phi i32 [ %4411, %4383 ], [ %3675, %3679 ]
  %3691 = phi float [ %4393, %4383 ], [ %3642, %3679 ]
  %3692 = phi float [ %4394, %4383 ], [ %3643, %3679 ]
  %3693 = phi float [ %4395, %4383 ], [ %3644, %3679 ]
  %3694 = phi float [ %4396, %4383 ], [ %3645, %3679 ]
  %3695 = phi float [ %4397, %4383 ], [ %3646, %3679 ]
  %3696 = phi float [ %4398, %4383 ], [ %3647, %3679 ]
  %3697 = phi float [ %4399, %4383 ], [ %3648, %3679 ]
  %3698 = phi float [ %4400, %4383 ], [ %3649, %3679 ]
  %3699 = phi float [ %4401, %4383 ], [ %3650, %3679 ]
  %3700 = phi float [ %4402, %4383 ], [ %3651, %3679 ]
  %3701 = phi float [ %4403, %4383 ], [ %3652, %3679 ]
  %3702 = phi float [ %4404, %4383 ], [ %3653, %3679 ]
  %3703 = phi float [ %4405, %4383 ], [ %3648, %3679 ]
  %3704 = phi float [ %4406, %4383 ], [ %3649, %3679 ]
  %3705 = phi float [ %4407, %4383 ], [ %3650, %3679 ]
  %3706 = phi float [ %4408, %4383 ], [ %3651, %3679 ]
  %3707 = phi float [ %4409, %4383 ], [ %3652, %3679 ]
  %3708 = phi float [ %4410, %4383 ], [ %3653, %3679 ]
  %3709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3710 = extractvalue %dx.types.CBufRet.i32 %3709, 0
  %3711 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3663, i32 %3710, i32 %3690)  ; UMad(a,b,c)
  %3712 = shl i32 %3711, 2
  %3713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3712, i32 undef)  ; BufferLoad(srv,index,wot)
  %3714 = extractvalue %dx.types.ResRet.i32 %3713, 0
  %3715 = shl i32 %3690, 5
  %3716 = sub nsw i32 %3673, %3715
  %3717 = call i32 @dx.op.binary.i32(i32 37, i32 %3716, i32 0)  ; IMax(a,b)
  %3718 = call i32 @dx.op.binary.i32(i32 38, i32 %3717, i32 31)  ; IMin(a,b)
  %3719 = sub nsw i32 1, %3673
  %3720 = add nsw i32 %3719, %3674
  %3721 = call i32 @dx.op.binary.i32(i32 37, i32 %3720, i32 0)  ; IMax(a,b)
  %3722 = call i32 @dx.op.binary.i32(i32 38, i32 %3721, i32 32)  ; IMin(a,b)
  %3723 = and i32 %3722, 31
  %3724 = shl i32 -1, %3723
  %3725 = xor i32 %3724, -1
  %3726 = and i32 %3718, 31
  %3727 = shl i32 %3725, %3726
  %3728 = icmp eq i32 %3722, 32
  %3729 = select i1 %3728, i32 -1, i32 %3727
  %3730 = and i32 %3729, %3714
  %3731 = icmp eq i32 %3730, 0
  br i1 %3731, label %4383, label %3732

; <label>:3732                                    ; preds = %3680
  br label %3733

; <label>:3733                                    ; preds = %3919, %3732
  %3734 = phi i32 [ %3920, %3919 ], [ %3681, %3732 ]
  %3735 = phi i32 [ %3909, %3919 ], [ %3682, %3732 ]
  %3736 = phi i32 [ %3911, %3919 ], [ %3683, %3732 ]
  %3737 = phi i32 [ %3913, %3919 ], [ %3684, %3732 ]
  %3738 = phi i32 [ %3915, %3919 ], [ %3685, %3732 ]
  %3739 = phi i32 [ %3921, %3919 ], [ %3686, %3732 ]
  %3740 = phi i32 [ %3922, %3919 ], [ %3687, %3732 ]
  %3741 = phi i32 [ %3923, %3919 ], [ %3688, %3732 ]
  %3742 = phi i32 [ %3924, %3919 ], [ %3689, %3732 ]
  %3743 = phi i32 [ %3766, %3919 ], [ %3730, %3732 ]
  %3744 = phi float [ %3925, %3919 ], [ %3691, %3732 ]
  %3745 = phi float [ %3926, %3919 ], [ %3692, %3732 ]
  %3746 = phi float [ %3927, %3919 ], [ %3693, %3732 ]
  %3747 = phi float [ %3928, %3919 ], [ %3694, %3732 ]
  %3748 = phi float [ %3929, %3919 ], [ %3695, %3732 ]
  %3749 = phi float [ %3930, %3919 ], [ %3696, %3732 ]
  %3750 = phi float [ %3931, %3919 ], [ %3697, %3732 ]
  %3751 = phi float [ %3932, %3919 ], [ %3698, %3732 ]
  %3752 = phi float [ %3933, %3919 ], [ %3699, %3732 ]
  %3753 = phi float [ %3934, %3919 ], [ %3700, %3732 ]
  %3754 = phi float [ %3935, %3919 ], [ %3701, %3732 ]
  %3755 = phi float [ %3936, %3919 ], [ %3702, %3732 ]
  %3756 = phi float [ %3937, %3919 ], [ %3703, %3732 ]
  %3757 = phi float [ %3938, %3919 ], [ %3704, %3732 ]
  %3758 = phi float [ %3939, %3919 ], [ %3705, %3732 ]
  %3759 = phi float [ %3940, %3919 ], [ %3706, %3732 ]
  %3760 = phi float [ %3941, %3919 ], [ %3707, %3732 ]
  %3761 = phi float [ %3942, %3919 ], [ %3708, %3732 ]
  %3762 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3743)  ; FirstbitLo(value)
  %3763 = add i32 %3762, %3715
  %3764 = and i32 %3762, 31
  %3765 = shl i32 1, %3764
  %3766 = xor i32 %3765, %3743
  %3767 = mul i32 %3763, 112
  %3768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.ResRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3768, 2
  %3772 = add i32 %3767, 16
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = add i32 %3767, 28
  %3778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.i32 %3778, 0
  %3780 = add i32 %3767, 32
  %3781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = extractvalue %dx.types.ResRet.f32 %3781, 2
  %3785 = add i32 %3767, 44
  %3786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3785, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.f32 %3786, 0
  %3788 = add i32 %3767, 48
  %3789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3788, i32 undef)  ; BufferLoad(srv,index,wot)
  %3790 = extractvalue %dx.types.ResRet.f32 %3789, 0
  %3791 = extractvalue %dx.types.ResRet.f32 %3789, 1
  %3792 = extractvalue %dx.types.ResRet.f32 %3789, 2
  %3793 = extractvalue %dx.types.ResRet.f32 %3789, 3
  %3794 = add i32 %3767, 64
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = add i32 %3767, 80
  %3801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3800, i32 undef)  ; BufferLoad(srv,index,wot)
  %3802 = extractvalue %dx.types.ResRet.f32 %3801, 1
  %3803 = extractvalue %dx.types.ResRet.f32 %3801, 2
  %3804 = add i32 %3767, 92
  %3805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3806 = extractvalue %dx.types.ResRet.i32 %3805, 0
  %3807 = call float @dx.op.dot3.f32(i32 55, float %3769, float %3770, float %3771, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3808 = select i1 %487, float %3802, float %3769
  %3809 = select i1 %487, float %3807, float %3770
  %3810 = select i1 %487, float %3803, float %3771
  %3811 = and i32 %3806, 65535
  %3812 = uitofp i32 %3811 to float
  %3813 = lshr i32 %3806, 16
  %3814 = uitofp i32 %3813 to float
  %3815 = and i32 %3779, 65535
  %3816 = lshr i32 %3779, 24
  %3817 = and i32 %3816, 3
  %3818 = and i32 %3779, 536870912
  %3819 = icmp ne i32 %3818, 0
  %3820 = icmp eq i32 %3817, 2
  %3821 = call float @dx.op.dot3.f32(i32 55, float %3782, float %3783, float %3784, float %3782, float %3783, float %3784)  ; Dot3(ax,ay,az,bx,by,bz)
  %3822 = fsub fast float %92, %3790
  %3823 = fsub fast float %93, %3791
  %3824 = fsub fast float %94, %3792
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float %3782, float %3783, float %3784)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = fdiv fast float %3825, %3821
  %3827 = call float @dx.op.binary.f32(i32 35, float %3826, float -1.000000e+00)  ; FMax(a,b)
  %3828 = call float @dx.op.binary.f32(i32 36, float %3827, float 1.000000e+00)  ; FMin(a,b)
  %3829 = fmul fast float %3828, %3782
  %3830 = fmul fast float %3828, %3783
  %3831 = fmul fast float %3828, %3784
  %3832 = fadd fast float %3829, %3790
  %3833 = fadd fast float %3830, %3791
  %3834 = fadd fast float %3831, %3792
  %3835 = fsub fast float %3832, %92
  %3836 = fsub fast float %3833, %93
  %3837 = fsub fast float %3834, %94
  %3838 = call float @dx.op.dot3.f32(i32 55, float %3835, float %3836, float %3837, float %3835, float %3836, float %3837)  ; Dot3(ax,ay,az,bx,by,bz)
  %3839 = call float @dx.op.unary.f32(i32 24, float %3838)  ; Sqrt(value)
  %3840 = fdiv fast float 1.000000e+00, %3839
  %3841 = fmul fast float %3835, %3840
  %3842 = fmul fast float %3836, %3840
  %3843 = fmul fast float %3837, %3840
  br i1 %3820, label %3844, label %3868

; <label>:3844                                    ; preds = %3733
  %3845 = fmul fast float %3798, %3774
  %3846 = fmul fast float %3798, %3775
  %3847 = fmul fast float %3798, %3776
  %3848 = fsub fast float %3845, %92
  %3849 = fadd fast float %3848, %3832
  %3850 = fsub fast float %3846, %93
  %3851 = fadd fast float %3850, %3833
  %3852 = fsub fast float %3847, %94
  %3853 = fadd fast float %3852, %3834
  %3854 = call float @dx.op.dot3.f32(i32 55, float %3849, float %3851, float %3853, float %3849, float %3851, float %3853)  ; Dot3(ax,ay,az,bx,by,bz)
  %3855 = call float @dx.op.unary.f32(i32 25, float %3854)  ; Rsqrt(value)
  %3856 = fmul fast float %3855, %3849
  %3857 = fmul fast float %3855, %3851
  %3858 = fmul fast float %3855, %3853
  %3859 = fsub fast float %92, %3832
  %3860 = fsub fast float %93, %3833
  %3861 = fsub fast float %94, %3834
  %3862 = fsub fast float -0.000000e+00, %3859
  %3863 = fsub fast float -0.000000e+00, %3860
  %3864 = fsub fast float -0.000000e+00, %3861
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3862, float %3863, float %3864, float %3774, float %3775, float %3776)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = fcmp fast ogt float %3865, 0.000000e+00
  %3867 = uitofp i1 %3866 to float
  br label %3868

; <label>:3868                                    ; preds = %3844, %3733
  %3869 = phi float [ %3867, %3844 ], [ 1.000000e+00, %3733 ]
  %3870 = phi float [ %3856, %3844 ], [ %3841, %3733 ]
  %3871 = phi float [ %3857, %3844 ], [ %3842, %3733 ]
  %3872 = phi float [ %3858, %3844 ], [ %3843, %3733 ]
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3774, float %3775, float %3776, float %3870, float %3871, float %3872)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = fmul fast float %3873, %3873
  %3875 = call float @dx.op.unary.f32(i32 7, float %3874)  ; Saturate(value)
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = fmul fast float %3876, 5.000000e-01
  %3878 = fcmp fast ogt float %3873, 0.000000e+00
  %3879 = fsub fast float 1.000000e+00, %3877
  %3880 = select i1 %3878, float %3877, float %3879
  %3881 = fmul fast float %3880, %3814
  %3882 = fadd fast float %3881, %3812
  %3883 = fmul fast float %3882, 0x3EF0001000000000
  %3884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %34, float %3883, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = fmul fast float %3873, %3796
  %3887 = fadd fast float %3886, %3797
  %3888 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3889 = select i1 %3820, float 1.000000e+00, float %3888
  %3890 = select i1 %3820, float %3888, float 1.000000e+00
  %3891 = fmul fast float %3839, %3793
  %3892 = fsub fast float 1.000000e+00, %3891
  %3893 = fmul fast float %3892, %3799
  %3894 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3895 = fmul fast float %3894, %3890
  %3896 = fmul fast float %3895, 2.000000e+00
  %3897 = fsub fast float 3.000000e+00, %3896
  %3898 = fmul fast float %3885, %3869
  %3899 = fmul fast float %3895, %3895
  %3900 = fmul fast float %3899, %3898
  %3901 = fmul fast float %3900, %3897
  %3902 = xor i1 %3819, true
  %3903 = and i1 %3820, %3902
  %3904 = icmp ne i32 %3817, 2
  %3905 = and i1 %3904, %3902
  %3906 = and i1 %3819, %3820
  %3907 = and i1 %3819, %3904
  %3908 = zext i1 %3903 to i32
  %3909 = add i32 %3908, %3735
  %3910 = zext i1 %3905 to i32
  %3911 = add i32 %3910, %3736
  %3912 = zext i1 %3906 to i32
  %3913 = add i32 %3912, %3737
  %3914 = zext i1 %3907 to i32
  %3915 = add i32 %3914, %3738
  %3916 = call float @dx.op.binary.f32(i32 36, float %3901, float %3901)  ; FMin(a,b)
  %3917 = call float @dx.op.binary.f32(i32 36, float %3901, float %3916)  ; FMin(a,b)
  %3918 = fcmp fast ogt float %3917, 0.000000e+00
  br i1 %3918, label %3944, label %3919, !dx.controlflow.hints !81

; <label>:3919                                    ; preds = %4367, %3868
  %3920 = phi i32 [ %4377, %4367 ], [ %3734, %3868 ]
  %3921 = phi i32 [ %4378, %4367 ], [ %3739, %3868 ]
  %3922 = phi i32 [ %4379, %4367 ], [ %3740, %3868 ]
  %3923 = phi i32 [ %4380, %4367 ], [ %3741, %3868 ]
  %3924 = phi i32 [ %4381, %4367 ], [ %3742, %3868 ]
  %3925 = phi float [ %4338, %4367 ], [ %3744, %3868 ]
  %3926 = phi float [ %4339, %4367 ], [ %3745, %3868 ]
  %3927 = phi float [ %4340, %4367 ], [ %3746, %3868 ]
  %3928 = phi float [ %4341, %4367 ], [ %3747, %3868 ]
  %3929 = phi float [ %4342, %4367 ], [ %3748, %3868 ]
  %3930 = phi float [ %4343, %4367 ], [ %3749, %3868 ]
  %3931 = phi float [ %4344, %4367 ], [ %3750, %3868 ]
  %3932 = phi float [ %4345, %4367 ], [ %3751, %3868 ]
  %3933 = phi float [ %4346, %4367 ], [ %3752, %3868 ]
  %3934 = phi float [ %4347, %4367 ], [ %3753, %3868 ]
  %3935 = phi float [ %4348, %4367 ], [ %3754, %3868 ]
  %3936 = phi float [ %4349, %4367 ], [ %3755, %3868 ]
  %3937 = phi float [ %4350, %4367 ], [ %3756, %3868 ]
  %3938 = phi float [ %4351, %4367 ], [ %3757, %3868 ]
  %3939 = phi float [ %4352, %4367 ], [ %3758, %3868 ]
  %3940 = phi float [ %4353, %4367 ], [ %3759, %3868 ]
  %3941 = phi float [ %4354, %4367 ], [ %3760, %3868 ]
  %3942 = phi float [ %4355, %4367 ], [ %3761, %3868 ]
  %3943 = icmp eq i32 %3743, %3765
  br i1 %3943, label %4382, label %3733

; <label>:3944                                    ; preds = %3868
  %3945 = icmp eq i32 %3815, 255
  br i1 %3945, label %4083, label %3946, !dx.controlflow.hints !82

; <label>:3946                                    ; preds = %3944
  %3947 = mul nuw nsw i32 %3815, 176
  %3948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3948, 3
  %3953 = add nuw nsw i32 %3947, 16
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = add nuw nsw i32 %3947, 32
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = add nuw nsw i32 %3947, 48
  %3962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3961, i32 undef)  ; BufferLoad(srv,index,wot)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.ResRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3962, 2
  %3966 = extractvalue %dx.types.ResRet.f32 %3962, 3
  %3967 = add nuw nsw i32 %3947, 64
  %3968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3967, i32 undef)  ; BufferLoad(srv,index,wot)
  %3969 = extractvalue %dx.types.ResRet.f32 %3968, 0
  %3970 = extractvalue %dx.types.ResRet.f32 %3968, 1
  %3971 = extractvalue %dx.types.ResRet.f32 %3968, 2
  %3972 = extractvalue %dx.types.ResRet.f32 %3968, 3
  %3973 = add nuw nsw i32 %3947, 80
  %3974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3973, i32 undef)  ; BufferLoad(srv,index,wot)
  %3975 = extractvalue %dx.types.ResRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.ResRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.ResRet.f32 %3974, 2
  %3978 = extractvalue %dx.types.ResRet.f32 %3974, 3
  %3979 = add nuw nsw i32 %3947, 96
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = bitcast float %3956 to i32
  %3986 = fmul fast float %3963, %92
  %3987 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3969, float %3986)  ; FMad(a,b,c)
  %3988 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3975, float %3987)  ; FMad(a,b,c)
  %3989 = fadd fast float %3988, %3981
  %3990 = fmul fast float %3964, %92
  %3991 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3970, float %3990)  ; FMad(a,b,c)
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3976, float %3991)  ; FMad(a,b,c)
  %3993 = fadd fast float %3992, %3982
  %3994 = fmul fast float %3965, %92
  %3995 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3971, float %3994)  ; FMad(a,b,c)
  %3996 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3977, float %3995)  ; FMad(a,b,c)
  %3997 = fadd fast float %3996, %3983
  %3998 = fmul fast float %3966, %92
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %93, float %3972, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %94, float %3978, float %3999)  ; FMad(a,b,c)
  %4001 = fadd fast float %4000, %3984
  %4002 = fdiv fast float %3989, %4001
  %4003 = fdiv fast float %3993, %4001
  %4004 = fdiv fast float %3997, %4001
  %4005 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %4004)  ; FMax(a,b)
  %4006 = fmul fast float %289, 0x401921FB60000000
  %4007 = call float @dx.op.unary.f32(i32 13, float %4006)  ; Sin(value)
  %4008 = call float @dx.op.unary.f32(i32 12, float %4006)  ; Cos(value)
  %4009 = fmul fast float %4008, %3960
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %3960, float 0.000000e+00)  ; FMad(a,b,c)
  %4011 = fmul fast float %3960, %4007
  %4012 = fsub fast float -0.000000e+00, %4011
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %4008, float %3960, float 0.000000e+00)  ; FMad(a,b,c)
  br label %4014

; <label>:4014                                    ; preds = %4014, %3946
  %4015 = phi float [ 0.000000e+00, %3946 ], [ %4047, %4014 ]
  %4016 = phi float [ 0.000000e+00, %3946 ], [ %4049, %4014 ]
  %4017 = phi i32 [ 0, %3946 ], [ %4050, %4014 ]
  %4018 = mul i32 %4017, 2
  %4019 = add i32 0, %4018
  %4020 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4019
  %4021 = load float, float* %4020, align 4
  %4022 = mul i32 %4017, 2
  %4023 = add i32 1, %4022
  %4024 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %4023
  %4025 = load float, float* %4024, align 4
  %4026 = fmul fast float %4009, %4021
  %4027 = call float @dx.op.tertiary.f32(i32 46, float %4025, float %4012, float %4026)  ; FMad(a,b,c)
  %4028 = fmul fast float %4021, %4010
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %4025, float %4013, float %4028)  ; FMad(a,b,c)
  %4030 = fadd fast float %4027, %4002
  %4031 = fadd fast float %4029, %4003
  %4032 = fmul fast float %4030, %3955
  %4033 = fmul fast float %4031, %3955
  %4034 = call float @dx.op.binary.f32(i32 35, float %4032, float %3951)  ; FMax(a,b)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4033, float %3951)  ; FMax(a,b)
  %4036 = call float @dx.op.binary.f32(i32 36, float %4034, float %3952)  ; FMin(a,b)
  %4037 = call float @dx.op.binary.f32(i32 36, float %4035, float %3952)  ; FMin(a,b)
  %4038 = fadd fast float %4036, %3949
  %4039 = fadd fast float %4037, %3950
  %4040 = uitofp i32 %3985 to float
  %4041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %35, float %4038, float %4039, float %4040, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = fsub fast float %4042, %4005
  %4044 = fsub fast float %4043, %3959
  %4045 = fcmp fast ogt float %4044, 0.000000e+00
  %4046 = select i1 %4045, float 1.000000e+00, float 0.000000e+00
  %4047 = fadd fast float %4046, %4015
  %4048 = select i1 %4045, float %4044, float 0.000000e+00
  %4049 = fadd fast float %4048, %4016
  %4050 = add nuw nsw i32 %4017, 1
  %4051 = icmp eq i32 %4050, 8
  br i1 %4051, label %4052, label %4014

; <label>:4052                                    ; preds = %4014
  %4053 = fdiv fast float 1.000000e+00, %4047
  %4054 = fmul fast float %4053, %4049
  %4055 = fdiv fast float 1.000000e+00, %4005
  %4056 = fmul fast float %4054, %4055
  %4057 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4058 = call float @dx.op.binary.f32(i32 35, float %4057, float 0.000000e+00)  ; FMax(a,b)
  %4059 = fmul fast float %4047, 1.250000e-01
  %4060 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4061 = fmul fast float %4060, 2.000000e+00
  %4062 = fadd fast float %4061, -1.000000e+00
  %4063 = fcmp fast ogt float %4062, 0.000000e+00
  %4064 = fcmp fast olt float %4062, 0.000000e+00
  %4065 = zext i1 %4063 to i32
  %4066 = zext i1 %4064 to i32
  %4067 = sub nsw i32 %4065, %4066
  %4068 = sitofp i32 %4067 to float
  %4069 = fmul fast float %4068, %4062
  %4070 = fsub fast float 1.000000e+00, %4069
  %4071 = fmul fast float %4070, %4070
  %4072 = fmul fast float %4071, %4070
  %4073 = fsub fast float %4070, %4072
  %4074 = fmul fast float %4073, %4058
  %4075 = fsub fast float 1.000000e+00, %4072
  %4076 = fsub fast float %4075, %4074
  %4077 = fmul fast float %4068, 5.000000e-01
  %4078 = fmul fast float %4077, %4076
  %4079 = fsub fast float -5.000000e-01, %4078
  %4080 = fmul fast float %4079, %3889
  %4081 = fadd fast float %4080, 1.000000e+00
  %4082 = fmul fast float %4081, %3901
  br label %4083

; <label>:4083                                    ; preds = %4052, %3944
  %4084 = phi float [ %4082, %4052 ], [ %3901, %3944 ]
  %4085 = call float @dx.op.binary.f32(i32 36, float %4084, float %4084)  ; FMin(a,b)
  %4086 = call float @dx.op.binary.f32(i32 36, float %4084, float %4085)  ; FMin(a,b)
  %4087 = fcmp fast ogt float %4086, 0.000000e+00
  br i1 %4087, label %4088, label %4337

; <label>:4088                                    ; preds = %4083
  %4089 = fmul fast float %4084, %3808
  %4090 = fmul fast float %4084, %3809
  %4091 = fmul fast float %4084, %3810
  %4092 = fadd fast float %3841, %347
  %4093 = fadd fast float %3842, %348
  %4094 = fadd fast float %3843, %349
  %4095 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %3835, float %3836, float %3837)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3842, float %3843, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = fdiv fast float 1.000000e+00, %4096
  %4098 = fmul fast float %4097, %4095
  %4099 = fmul fast float %4098, %4092
  %4100 = fmul fast float %4098, %4093
  %4101 = fmul fast float %4098, %4094
  %4102 = fadd fast float %3822, %4099
  %4103 = fadd fast float %3823, %4100
  %4104 = fadd fast float %3824, %4101
  %4105 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %3782, float %3783, float %3784)  ; Dot3(ax,ay,az,bx,by,bz)
  %4106 = fdiv fast float %4105, %3821
  %4107 = call float @dx.op.binary.f32(i32 35, float %4106, float -1.000000e+00)  ; FMax(a,b)
  %4108 = call float @dx.op.binary.f32(i32 36, float %4107, float 1.000000e+00)  ; FMin(a,b)
  %4109 = fmul fast float %4108, %3782
  %4110 = fmul fast float %4108, %3783
  %4111 = fmul fast float %4108, %3784
  %4112 = fsub fast float %3790, %92
  %4113 = fadd fast float %4112, %4109
  %4114 = fsub fast float %3791, %93
  %4115 = fadd fast float %4114, %4110
  %4116 = fsub fast float %3792, %94
  %4117 = fadd fast float %4116, %4111
  %4118 = call float @dx.op.dot3.f32(i32 55, float %4113, float %4115, float %4117, float %4113, float %4115, float %4117)  ; Dot3(ax,ay,az,bx,by,bz)
  %4119 = call float @dx.op.unary.f32(i32 25, float %4118)  ; Rsqrt(value)
  %4120 = fmul fast float %4113, %4119
  %4121 = fmul fast float %4115, %4119
  %4122 = fmul fast float %4117, %4119
  %4123 = fsub fast float %4120, %375
  %4124 = fsub fast float %4121, %376
  %4125 = fsub fast float %4122, %377
  %4126 = call float @dx.op.dot3.f32(i32 55, float %4123, float %4124, float %4125, float %4123, float %4124, float %4125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4127 = call float @dx.op.unary.f32(i32 25, float %4126)  ; Rsqrt(value)
  %4128 = fmul fast float %4123, %4127
  %4129 = fmul fast float %4124, %4127
  %4130 = fmul fast float %4125, %4127
  %4131 = call float @dx.op.dot3.f32(i32 55, float %4120, float %4121, float %4122, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %4132 = call float @dx.op.dot3.f32(i32 55, float %488, float %489, float %490, float %4128, float %4129, float %4130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = fmul fast float %4119, %3787
  %4134 = fmul fast float %4133, %4133
  %4135 = bitcast float %4134 to i32
  %4136 = ashr i32 %4135, 1
  %4137 = sub nsw i32 1597463007, %4136
  %4138 = bitcast i32 %4137 to float
  %4139 = fmul fast float %4138, %4131
  %4140 = fmul fast float %4139, %4139
  %4141 = fsub fast float 1.000000e+00, %4140
  %4142 = fmul fast float %4131, %4134
  %4143 = call float @dx.op.unary.f32(i32 7, float %4142)  ; Saturate(value)
  %4144 = fmul fast float %4139, 5.000000e-01
  %4145 = fadd fast float %4144, 5.000000e-01
  %4146 = fmul fast float %4145, %4134
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = bitcast float %4147 to i32
  %4149 = ashr i32 %4148, 1
  %4150 = add nsw i32 %4149, 532487669
  %4151 = bitcast i32 %4150 to float
  %4152 = fmul fast float %4151, %4147
  %4153 = fcmp fast ogt float %4141, 0.000000e+00
  %4154 = select i1 %4153, float %4152, float %4143
  %4155 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4156 = fmul fast float %4155, %4155
  %4157 = fmul fast float %4156, %529
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 0
  %4161 = bitcast float %4160 to i32
  %4162 = lshr i32 %4161, 8
  %4163 = and i32 %4162, 255
  %4164 = uitofp i32 %4163 to float
  %4165 = fptoui float %4164 to i32
  %4166 = and i32 %4165, 8
  %4167 = icmp ne i32 %4166, 0
  %4168 = select i1 %4167, float %4158, float 1.000000e+00
  %4169 = fmul fast float %4168, %4154
  %4170 = call float @dx.op.dot3.f32(i32 55, float %3782, float %3783, float %3784, float %498, float %499, float %500)  ; Dot3(ax,ay,az,bx,by,bz)
  %4171 = call float @dx.op.dot3.f32(i32 55, float %3782, float %3783, float %3784, float %3835, float %3836, float %3837)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.dot3.f32(i32 55, float %498, float %499, float %500, float %3835, float %3836, float %3837)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = fmul fast float %4170, %4170
  %4174 = fsub fast float %3821, %4173
  %4175 = fmul fast float %4172, %4170
  %4176 = fsub fast float %4175, %4171
  %4177 = fdiv fast float %4176, %4174
  %4178 = call float @dx.op.binary.f32(i32 35, float %4177, float -1.500000e+00)  ; FMax(a,b)
  %4179 = call float @dx.op.binary.f32(i32 36, float %4178, float 1.500000e+00)  ; FMin(a,b)
  %4180 = fmul fast float %4179, %4179
  %4181 = fmul fast float %4180, 0x3FC2F68380000000
  %4182 = fmul fast float %4181, %4179
  %4183 = fsub fast float %4179, %4182
  %4184 = fmul fast float %4183, %3782
  %4185 = fmul fast float %4183, %3783
  %4186 = fmul fast float %4183, %3784
  %4187 = fadd fast float %4184, %3832
  %4188 = fadd fast float %4185, %3833
  %4189 = fadd fast float %4186, %3834
  %4190 = fsub fast float %4187, %92
  %4191 = fsub fast float %4188, %93
  %4192 = fsub fast float %4189, %94
  %4193 = call float @dx.op.dot3.f32(i32 55, float %4190, float %4191, float %4192, float %498, float %499, float %500)  ; Dot3(ax,ay,az,bx,by,bz)
  %4194 = fmul fast float %4193, %498
  %4195 = fmul fast float %4193, %499
  %4196 = fmul fast float %4193, %500
  %4197 = fsub fast float %4194, %4190
  %4198 = fsub fast float %4195, %4191
  %4199 = fsub fast float %4196, %4192
  %4200 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %4197, float %4198, float %4199)  ; Dot3(ax,ay,az,bx,by,bz)
  %4201 = bitcast float %4200 to i32
  %4202 = ashr i32 %4201, 1
  %4203 = sub nsw i32 1597463007, %4202
  %4204 = bitcast i32 %4203 to float
  %4205 = fmul fast float %4204, %3787
  %4206 = call float @dx.op.dot3.f32(i32 55, float %4190, float %4191, float %4192, float %4190, float %4191, float %4192)  ; Dot3(ax,ay,az,bx,by,bz)
  %4207 = bitcast float %4206 to i32
  %4208 = ashr i32 %4207, 1
  %4209 = sub nsw i32 1597463007, %4208
  %4210 = bitcast i32 %4209 to float
  %4211 = fmul fast float %4205, %4205
  %4212 = fadd fast float %4211, 1.250000e-01
  %4213 = call float @dx.op.unary.f32(i32 25, float %4212)  ; Rsqrt(value)
  %4214 = fmul fast float %4205, %4213
  %4215 = fmul fast float %4197, %4214
  %4216 = fmul fast float %4198, %4214
  %4217 = fmul fast float %4199, %4214
  %4218 = fadd fast float %4190, %4215
  %4219 = fadd fast float %4191, %4216
  %4220 = fadd fast float %4192, %4217
  %4221 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4220, float %4218, float %4219, float %4220)  ; Dot3(ax,ay,az,bx,by,bz)
  %4222 = call float @dx.op.unary.f32(i32 25, float %4221)  ; Rsqrt(value)
  %4223 = fmul fast float %4218, %4222
  %4224 = fmul fast float %4219, %4222
  %4225 = fmul fast float %4220, %4222
  %4226 = fsub fast float %4223, %375
  %4227 = fsub fast float %4224, %376
  %4228 = fsub fast float %4225, %377
  %4229 = call float @dx.op.dot3.f32(i32 55, float %4226, float %4227, float %4228, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = call float @dx.op.unary.f32(i32 25, float %4229)  ; Rsqrt(value)
  %4231 = fmul fast float %4226, %4230
  %4232 = fmul fast float %4227, %4230
  %4233 = fmul fast float %4228, %4230
  %4234 = call float @dx.op.dot3.f32(i32 55, float %347, float %348, float %349, float %4231, float %4232, float %4233)  ; Dot3(ax,ay,az,bx,by,bz)
  %4235 = fmul fast float %4234, %4234
  %4236 = call float @dx.op.unary.f32(i32 6, float %4131)  ; FAbs(value)
  %4237 = fsub fast float 1.000000e+00, %520
  %4238 = fmul fast float %493, %493
  %4239 = fmul fast float %4238, %4237
  %4240 = fadd fast float %4239, %520
  %4241 = bitcast float %4240 to i32
  %4242 = ashr i32 %4241, 1
  %4243 = add nsw i32 %4242, 532487669
  %4244 = bitcast i32 %4243 to float
  %4245 = fadd fast float %4244, %493
  %4246 = fmul fast float %520, %4235
  %4247 = fsub fast float 1.000000e+00, %4235
  %4248 = fadd fast float %4247, %4246
  %4249 = fmul fast float %4236, %4236
  %4250 = fmul fast float %4249, %4237
  %4251 = fadd fast float %4250, %520
  %4252 = bitcast float %4251 to i32
  %4253 = ashr i32 %4252, 1
  %4254 = add nsw i32 %4253, 532487669
  %4255 = bitcast i32 %4254 to float
  %4256 = fadd fast float %4255, %4236
  %4257 = fmul fast float %4248, %4248
  %4258 = fmul fast float %4257, %4245
  %4259 = fmul fast float %4258, %4256
  %4260 = fdiv fast float 1.000000e+00, %4259
  %4261 = bitcast float %520 to i32
  %4262 = sitofp i32 %4261 to float
  %4263 = fmul fast float %4262, 0x3FE7F73180000000
  %4264 = fadd fast float %4263, 0x41AFE27C40000000
  %4265 = fptosi float %4264 to i32
  %4266 = bitcast i32 %4265 to float
  %4267 = fmul fast float %3787, 0x3FD80E9D60000000
  %4268 = fmul fast float %4267, %4210
  %4269 = fadd fast float %4266, %4268
  %4270 = bitcast float %4269 to i32
  %4271 = sub nsw i32 2129859010, %4270
  %4272 = bitcast i32 %4271 to float
  %4273 = fmul fast float %520, %4260
  %4274 = fmul fast float %4273, %4266
  %4275 = fmul fast float %4274, %4272
  %4276 = call float @dx.op.unary.f32(i32 6, float %4132)  ; FAbs(value)
  %4277 = fsub fast float 1.000000e+00, %4276
  %4278 = bitcast float %4277 to i32
  %4279 = sitofp i32 %4278 to float
  %4280 = fmul fast float %4279, 5.000000e+00
  %4281 = fadd fast float %4280, 0xC1EFBF8940000000
  %4282 = fptosi float %4281 to i32
  %4283 = bitcast i32 %4282 to float
  %4284 = fmul fast float %4283, %403
  %4285 = fmul fast float %4283, %404
  %4286 = fmul fast float %4283, %1594
  %4287 = fadd fast float %4284, %368
  %4288 = fadd fast float %4285, %369
  %4289 = fadd fast float %4286, %491
  %4290 = fmul fast float %4131, 9.843750e-01
  %4291 = fmul fast float %447, 9.843750e-01
  %4292 = fadd fast float %4290, 7.812500e-03
  %4293 = fadd fast float %4291, 7.812500e-03
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %4292, float %4293, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 3
  %4297 = fmul fast float %4295, %368
  %4298 = fmul fast float %4295, %369
  %4299 = fmul fast float %4295, %491
  %4300 = fadd fast float %4297, %4296
  %4301 = fadd fast float %4298, %4296
  %4302 = fadd fast float %4299, %4296
  %4303 = call float @dx.op.binary.f32(i32 35, float %4301, float %4302)  ; FMax(a,b)
  %4304 = call float @dx.op.binary.f32(i32 35, float %4300, float %4303)  ; FMax(a,b)
  %4305 = fsub fast float 1.000000e+00, %4304
  %4306 = fmul fast float %4305, %4169
  %4307 = fmul fast float %4287, %4169
  %4308 = fmul fast float %4307, %4275
  %4309 = fmul fast float %4288, %4169
  %4310 = fmul fast float %4309, %4275
  %4311 = fmul fast float %4289, %4169
  %4312 = fmul fast float %4311, %4275
  %4313 = fmul fast float %4306, %4089
  %4314 = fmul fast float %4306, %4090
  %4315 = fmul fast float %4306, %4091
  %4316 = fadd fast float %4313, %3759
  %4317 = fadd fast float %4314, %3760
  %4318 = fadd fast float %4315, %3761
  %4319 = fmul fast float %4308, %4089
  %4320 = fmul fast float %4310, %4090
  %4321 = fmul fast float %4312, %4091
  %4322 = fadd fast float %4319, %3756
  %4323 = fadd fast float %4320, %3757
  %4324 = fadd fast float %4321, %3758
  %4325 = fadd fast float %4313, %3753
  %4326 = fadd fast float %4314, %3754
  %4327 = fadd fast float %4315, %3755
  %4328 = fadd fast float %4319, %3750
  %4329 = fadd fast float %4320, %3751
  %4330 = fadd fast float %4321, %3752
  %4331 = fadd fast float %4313, %3747
  %4332 = fadd fast float %4314, %3748
  %4333 = fadd fast float %4315, %3749
  %4334 = fadd fast float %4319, %3744
  %4335 = fadd fast float %4320, %3745
  %4336 = fadd fast float %4321, %3746
  br label %4337

; <label>:4337                                    ; preds = %4088, %4083
  %4338 = phi float [ %3744, %4083 ], [ %4334, %4088 ]
  %4339 = phi float [ %3745, %4083 ], [ %4335, %4088 ]
  %4340 = phi float [ %3746, %4083 ], [ %4336, %4088 ]
  %4341 = phi float [ %3747, %4083 ], [ %4331, %4088 ]
  %4342 = phi float [ %3748, %4083 ], [ %4332, %4088 ]
  %4343 = phi float [ %3749, %4083 ], [ %4333, %4088 ]
  %4344 = phi float [ %3750, %4083 ], [ %4328, %4088 ]
  %4345 = phi float [ %3751, %4083 ], [ %4329, %4088 ]
  %4346 = phi float [ %3752, %4083 ], [ %4330, %4088 ]
  %4347 = phi float [ %3753, %4083 ], [ %4325, %4088 ]
  %4348 = phi float [ %3754, %4083 ], [ %4326, %4088 ]
  %4349 = phi float [ %3755, %4083 ], [ %4327, %4088 ]
  %4350 = phi float [ %3756, %4083 ], [ %4322, %4088 ]
  %4351 = phi float [ %3757, %4083 ], [ %4323, %4088 ]
  %4352 = phi float [ %3758, %4083 ], [ %4324, %4088 ]
  %4353 = phi float [ %3759, %4083 ], [ %4316, %4088 ]
  %4354 = phi float [ %3760, %4083 ], [ %4317, %4088 ]
  %4355 = phi float [ %3761, %4083 ], [ %4318, %4088 ]
  %4356 = bitcast i32 %3734 to float
  %4357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4358 = extractvalue %dx.types.CBufRet.f32 %4357, 1
  %4359 = bitcast float %4358 to i32
  %4360 = and i32 %4359, 65535
  %4361 = icmp eq i32 %4360, 65535
  br i1 %4361, label %4362, label %4364

; <label>:4362                                    ; preds = %4337
  %4363 = call float @dx.op.binary.f32(i32 35, float %4356, float %4084)  ; FMax(a,b)
  br label %4367

; <label>:4364                                    ; preds = %4337
  %4365 = icmp eq i32 %4360, %3763
  %4366 = select i1 %4365, float %4084, float %4356
  br label %4367

; <label>:4367                                    ; preds = %4364, %4362
  %4368 = phi float [ %4363, %4362 ], [ %4366, %4364 ]
  %4369 = extractvalue %dx.types.CBufRet.f32 %4357, 0
  %4370 = bitcast float %4369 to i32
  %4371 = lshr i32 %4370, 8
  %4372 = and i32 %4371, 255
  %4373 = uitofp i32 %4372 to float
  %4374 = fptoui float %4373 to i32
  %4375 = icmp eq i32 %4374, 15
  %4376 = bitcast float %4368 to i32
  %4377 = select i1 %4375, i32 %4376, i32 %3734
  %4378 = add i32 %3908, %3739
  %4379 = add i32 %3910, %3740
  %4380 = add i32 %3912, %3741
  %4381 = add i32 %3914, %3742
  br label %3919

; <label>:4382                                    ; preds = %3919
  br label %4383

; <label>:4383                                    ; preds = %4382, %3680
  %4384 = phi i32 [ %3681, %3680 ], [ %3920, %4382 ]
  %4385 = phi i32 [ %3682, %3680 ], [ %3909, %4382 ]
  %4386 = phi i32 [ %3683, %3680 ], [ %3911, %4382 ]
  %4387 = phi i32 [ %3684, %3680 ], [ %3913, %4382 ]
  %4388 = phi i32 [ %3685, %3680 ], [ %3915, %4382 ]
  %4389 = phi i32 [ %3686, %3680 ], [ %3921, %4382 ]
  %4390 = phi i32 [ %3687, %3680 ], [ %3922, %4382 ]
  %4391 = phi i32 [ %3688, %3680 ], [ %3923, %4382 ]
  %4392 = phi i32 [ %3689, %3680 ], [ %3924, %4382 ]
  %4393 = phi float [ %3691, %3680 ], [ %3925, %4382 ]
  %4394 = phi float [ %3692, %3680 ], [ %3926, %4382 ]
  %4395 = phi float [ %3693, %3680 ], [ %3927, %4382 ]
  %4396 = phi float [ %3694, %3680 ], [ %3928, %4382 ]
  %4397 = phi float [ %3695, %3680 ], [ %3929, %4382 ]
  %4398 = phi float [ %3696, %3680 ], [ %3930, %4382 ]
  %4399 = phi float [ %3697, %3680 ], [ %3931, %4382 ]
  %4400 = phi float [ %3698, %3680 ], [ %3932, %4382 ]
  %4401 = phi float [ %3699, %3680 ], [ %3933, %4382 ]
  %4402 = phi float [ %3700, %3680 ], [ %3934, %4382 ]
  %4403 = phi float [ %3701, %3680 ], [ %3935, %4382 ]
  %4404 = phi float [ %3702, %3680 ], [ %3936, %4382 ]
  %4405 = phi float [ %3703, %3680 ], [ %3937, %4382 ]
  %4406 = phi float [ %3704, %3680 ], [ %3938, %4382 ]
  %4407 = phi float [ %3705, %3680 ], [ %3939, %4382 ]
  %4408 = phi float [ %3706, %3680 ], [ %3940, %4382 ]
  %4409 = phi float [ %3707, %3680 ], [ %3941, %4382 ]
  %4410 = phi float [ %3708, %3680 ], [ %3942, %4382 ]
  %4411 = add i32 %3690, 1
  %4412 = icmp ugt i32 %4411, %3677
  br i1 %4412, label %4413, label %3680

; <label>:4413                                    ; preds = %4383
  br label %4414

; <label>:4414                                    ; preds = %4413, %3658
  %4415 = phi i32 [ %3640, %3658 ], [ %4384, %4413 ]
  %4416 = phi i32 [ 0, %3658 ], [ %4385, %4413 ]
  %4417 = phi i32 [ 0, %3658 ], [ %4386, %4413 ]
  %4418 = phi i32 [ 0, %3658 ], [ %4387, %4413 ]
  %4419 = phi i32 [ 0, %3658 ], [ %4388, %4413 ]
  %4420 = phi i32 [ 0, %3658 ], [ %4389, %4413 ]
  %4421 = phi i32 [ 0, %3658 ], [ %4390, %4413 ]
  %4422 = phi i32 [ 0, %3658 ], [ %4391, %4413 ]
  %4423 = phi i32 [ 0, %3658 ], [ %4392, %4413 ]
  %4424 = phi float [ %3642, %3658 ], [ %4393, %4413 ]
  %4425 = phi float [ %3643, %3658 ], [ %4394, %4413 ]
  %4426 = phi float [ %3644, %3658 ], [ %4395, %4413 ]
  %4427 = phi float [ %3645, %3658 ], [ %4396, %4413 ]
  %4428 = phi float [ %3646, %3658 ], [ %4397, %4413 ]
  %4429 = phi float [ %3647, %3658 ], [ %4398, %4413 ]
  %4430 = phi float [ %3648, %3658 ], [ %4399, %4413 ]
  %4431 = phi float [ %3649, %3658 ], [ %4400, %4413 ]
  %4432 = phi float [ %3650, %3658 ], [ %4401, %4413 ]
  %4433 = phi float [ %3651, %3658 ], [ %4402, %4413 ]
  %4434 = phi float [ %3652, %3658 ], [ %4403, %4413 ]
  %4435 = phi float [ %3653, %3658 ], [ %4404, %4413 ]
  %4436 = phi float [ %3648, %3658 ], [ %4405, %4413 ]
  %4437 = phi float [ %3649, %3658 ], [ %4406, %4413 ]
  %4438 = phi float [ %3650, %3658 ], [ %4407, %4413 ]
  %4439 = phi float [ %3651, %3658 ], [ %4408, %4413 ]
  %4440 = phi float [ %3652, %3658 ], [ %4409, %4413 ]
  %4441 = phi float [ %3653, %3658 ], [ %4410, %4413 ]
  %4442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.f32 %4442, 1
  %4444 = bitcast float %4443 to i32
  %4445 = lshr i32 %4444, 24
  %4446 = uitofp i32 %4445 to float
  %4447 = fptoui float %4446 to i32
  %4448 = icmp eq i32 %4447, 1
  %4449 = select i1 %4448, i32 %4420, i32 %4416
  %4450 = uitofp i32 %4449 to float
  %4451 = fptoui float %4450 to i32
  %4452 = shl i32 %4451, 8
  %4453 = select i1 %4448, i32 %4421, i32 %4417
  %4454 = uitofp i32 %4453 to float
  %4455 = fptoui float %4454 to i32
  %4456 = shl i32 %4455, 16
  %4457 = and i32 %4452, 65280
  %4458 = or i32 %4457, %3641
  %4459 = select i1 %4448, i32 %4422, i32 %4418
  %4460 = uitofp i32 %4459 to float
  %4461 = fptoui float %4460 to i32
  %4462 = shl i32 %4461, 24
  %4463 = and i32 %4456, 16711680
  %4464 = or i32 %4458, %4463
  %4465 = or i32 %4464, %4462
  %4466 = select i1 %4448, i32 %4423, i32 %4419
  %4467 = uitofp i32 %4466 to float
  %4468 = fptoui float %4467 to i32
  %4469 = and i32 %4468, 255
  %4470 = and i32 %3321, -256
  %4471 = or i32 %4469, %4470
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = bitcast float %4473 to i32
  %4475 = lshr i32 %4474, 8
  %4476 = and i32 %4475, 255
  %4477 = uitofp i32 %4476 to float
  %4478 = fptoui float %4477 to i32
  %4479 = icmp eq i32 %4478, 12
  %4480 = select i1 %4479, i32 0, i32 %4415
  br label %4481

; <label>:4481                                    ; preds = %4414, %3639
  %4482 = phi i32 [ %3321, %3639 ], [ %4471, %4414 ]
  %4483 = phi i32 [ 0, %3639 ], [ %4465, %4414 ]
  %4484 = phi i32 [ %3640, %3639 ], [ %4480, %4414 ]
  %4485 = phi float [ %3642, %3639 ], [ %4424, %4414 ]
  %4486 = phi float [ %3643, %3639 ], [ %4425, %4414 ]
  %4487 = phi float [ %3644, %3639 ], [ %4426, %4414 ]
  %4488 = phi float [ %3645, %3639 ], [ %4427, %4414 ]
  %4489 = phi float [ %3646, %3639 ], [ %4428, %4414 ]
  %4490 = phi float [ %3647, %3639 ], [ %4429, %4414 ]
  %4491 = phi float [ %3648, %3639 ], [ %4430, %4414 ]
  %4492 = phi float [ %3649, %3639 ], [ %4431, %4414 ]
  %4493 = phi float [ %3650, %3639 ], [ %4432, %4414 ]
  %4494 = phi float [ %3651, %3639 ], [ %4433, %4414 ]
  %4495 = phi float [ %3652, %3639 ], [ %4434, %4414 ]
  %4496 = phi float [ %3653, %3639 ], [ %4435, %4414 ]
  %4497 = phi float [ %3648, %3639 ], [ %4436, %4414 ]
  %4498 = phi float [ %3649, %3639 ], [ %4437, %4414 ]
  %4499 = phi float [ %3650, %3639 ], [ %4438, %4414 ]
  %4500 = phi float [ %3651, %3639 ], [ %4439, %4414 ]
  %4501 = phi float [ %3652, %3639 ], [ %4440, %4414 ]
  %4502 = phi float [ %3653, %3639 ], [ %4441, %4414 ]
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4505 = bitcast float %4504 to i32
  %4506 = mul i32 %4505, 928
  %4507 = add i32 %4506, 44
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4506, 48
  %4511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.ResRet.f32 %4511, 1
  %4514 = extractvalue %dx.types.ResRet.f32 %4511, 2
  %4515 = add i32 %4506, 60
  %4516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %4515, i32 undef)  ; BufferLoad(srv,index,wot)
  %4517 = extractvalue %dx.types.ResRet.f32 %4516, 0
  %4518 = extractvalue %dx.types.ResRet.f32 %4516, 1
  %4519 = extractvalue %dx.types.ResRet.f32 %4516, 2
  %4520 = fmul fast float %4512, 0x3F847AE140000000
  %4521 = fmul fast float %4513, 0x3F847AE140000000
  %4522 = fmul fast float %4514, 0x3F847AE140000000
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 0
  %4529 = extractvalue %dx.types.CBufRet.f32 %4527, 1
  %4530 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4525, float %4526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4531 = select i1 %487, float %4528, float %4524
  %4532 = select i1 %487, float %4530, float %4525
  %4533 = select i1 %487, float %4529, float %4526
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.CBufRet.f32 %4534, 2
  %4538 = fadd fast float %4517, %4512
  %4539 = fmul fast float %4538, 0x3F847AE140000000
  %4540 = fadd fast float %4518, %4513
  %4541 = fmul fast float %4540, 0x3F847AE140000000
  %4542 = fadd fast float %4519, %4514
  %4543 = fmul fast float %4542, 0x3F847AE140000000
  %4544 = call float @dx.op.dot3.f32(i32 55, float %4535, float %4536, float %4537, float %375, float %376, float %377)  ; Dot3(ax,ay,az,bx,by,bz)
  %4545 = fcmp fast ogt float %4509, 0.000000e+00
  %4546 = select i1 %4545, float 1.000000e+00, float -1.000000e+00
  %4547 = fmul fast float %4546, 5.000000e-01
  %4548 = fmul fast float %4547, %4544
  %4549 = fmul fast float %4546, %4509
  %4550 = fadd fast float %4548, 4.921875e-01
  %4551 = fadd fast float %4549, -3.125000e-02
  %4552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %4550, float 0x3FB25F3060000000, float %4551, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 0
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4558 = fmul fast float %4557, %4555
  %4559 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4560 = fadd fast float %4558, %4559
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = fmul fast float %4562, %3654
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4565 = fadd fast float %4563, %4564
  %4566 = call float @dx.op.unary.f32(i32 7, float %4565)  ; Saturate(value)
  %4567 = extractvalue %dx.types.CBufRet.f32 %4554, 3
  %4568 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4569 = fmul fast float %4568, %4567
  %4570 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4571 = fadd fast float %4569, %4570
  %4572 = fmul fast float %4553, 0x400921FB60000000
  %4573 = fmul fast float %4572, %4560
  %4574 = fmul fast float %4573, %4566
  %4575 = call float @dx.op.binary.f32(i32 35, float %4539, float 0x3F10000000000000)  ; FMax(a,b)
  %4576 = call float @dx.op.binary.f32(i32 35, float %4541, float 0x3F10000000000000)  ; FMax(a,b)
  %4577 = call float @dx.op.binary.f32(i32 35, float %4543, float 0x3F10000000000000)  ; FMax(a,b)
  %4578 = fdiv fast float 1.000000e+00, %4575
  %4579 = fdiv fast float 1.000000e+00, %4576
  %4580 = fdiv fast float 1.000000e+00, %4577
  %4581 = fmul fast float %4538, 0xBF8D8BE060000000
  %4582 = fmul fast float %4540, 0xBF8D8BE060000000
  %4583 = fmul fast float %4542, 0xBF8D8BE060000000
  %4584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %4585 = extractvalue %dx.types.CBufRet.f32 %4584, 3
  %4586 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4587 = fmul fast float %4585, %4586
  %4588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.f32 %4588, 3
  %4590 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4589)  ; Dot3(ax,ay,az,bx,by,bz)
  %4591 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %488, float %489, float %490)  ; Dot3(ax,ay,az,bx,by,bz)
  %4592 = fdiv fast float 1.000000e+00, %4591
  %4593 = fmul fast float %4592, %4590
  %4594 = fcmp ogt float %377, -0.000000e+00
  %4595 = select i1 %4594, float %4589, float %4593
  %4596 = call float @dx.op.binary.f32(i32 36, float %4595, float %4587)  ; FMin(a,b)
  %4597 = extractvalue %dx.types.CBufRet.f32 %4588, 0
  %4598 = fmul fast float %4597, %4596
  %4599 = fmul fast float %4598, %4581
  %4600 = fmul fast float %4598, %4582
  %4601 = fmul fast float %4598, %4583
  %4602 = call float @dx.op.unary.f32(i32 21, float %4599)  ; Exp(value)
  %4603 = call float @dx.op.unary.f32(i32 21, float %4600)  ; Exp(value)
  %4604 = call float @dx.op.unary.f32(i32 21, float %4601)  ; Exp(value)
  %4605 = fmul fast float %4574, %4531
  %4606 = fmul fast float %4605, %4602
  %4607 = fmul fast float %4574, %4532
  %4608 = fmul fast float %4607, %4603
  %4609 = fmul fast float %4574, %4533
  %4610 = fmul fast float %4609, %4604
  %4611 = extractvalue %dx.types.CBufRet.f32 %4588, 1
  %4612 = fmul fast float %4611, %4596
  %4613 = fmul fast float %4612, %4581
  %4614 = fmul fast float %4612, %4582
  %4615 = fmul fast float %4612, %4583
  %4616 = call float @dx.op.unary.f32(i32 21, float %4613)  ; Exp(value)
  %4617 = call float @dx.op.unary.f32(i32 21, float %4614)  ; Exp(value)
  %4618 = call float @dx.op.unary.f32(i32 21, float %4615)  ; Exp(value)
  %4619 = fmul fast float %4571, %1558
  %4620 = fmul fast float %4619, %4616
  %4621 = fmul fast float %4571, %1559
  %4622 = fmul fast float %4621, %4617
  %4623 = fmul fast float %4571, %1560
  %4624 = fmul fast float %4623, %4618
  %4625 = fadd fast float %4620, %4606
  %4626 = fmul fast float %4520, %4625
  %4627 = fadd fast float %4622, %4608
  %4628 = fmul fast float %4521, %4627
  %4629 = fadd fast float %4624, %4610
  %4630 = fmul fast float %4522, %4629
  %4631 = fmul fast float %4595, %4581
  %4632 = fmul fast float %4595, %4582
  %4633 = fmul fast float %4595, %4583
  %4634 = call float @dx.op.unary.f32(i32 21, float %4631)  ; Exp(value)
  %4635 = call float @dx.op.unary.f32(i32 21, float %4632)  ; Exp(value)
  %4636 = call float @dx.op.unary.f32(i32 21, float %4633)  ; Exp(value)
  %4637 = call float @dx.op.unary.f32(i32 7, float %4634)  ; Saturate(value)
  %4638 = call float @dx.op.unary.f32(i32 7, float %4635)  ; Saturate(value)
  %4639 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4640 = fmul fast float %4637, %4626
  %4641 = fmul fast float %4638, %4628
  %4642 = fmul fast float %4639, %4630
  %4643 = fsub fast float %4626, %4640
  %4644 = fsub fast float %4628, %4641
  %4645 = fsub fast float %4630, %4642
  %4646 = fmul fast float %4578, %1599
  %4647 = fmul fast float %4646, %4643
  %4648 = fmul fast float %4579, %1599
  %4649 = fmul fast float %4648, %4644
  %4650 = fmul fast float %4580, %1599
  %4651 = fmul fast float %4650, %4645
  %4652 = fadd fast float %4647, %4497
  %4653 = fadd fast float %4649, %4498
  %4654 = fadd fast float %4651, %4499
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = bitcast float %4656 to i32
  %4658 = and i32 %4657, 255
  %4659 = uitofp i32 %4658 to float
  %4660 = fptoui float %4659 to i32
  %4661 = icmp eq i32 %4660, 13
  br i1 %4661, label %4662, label %4682

; <label>:4662                                    ; preds = %4481
  %4663 = fadd fast float %303, 2.000000e+00
  %4664 = fadd fast float %305, 1.000000e+00
  %4665 = fsub fast float 1.000000e+00, %306
  %4666 = fmul fast float %4663, 5.000000e-01
  %4667 = fmul fast float %4664, 5.000000e-01
  %4668 = fmul fast float %4665, 5.000000e-01
  %4669 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4670 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4672 = fmul fast float %4669, 1.023000e+03
  %4673 = fmul fast float %4670, 1.023000e+03
  %4674 = fmul fast float %4671, 1.023000e+03
  %4675 = fptoui float %4672 to i32
  %4676 = fptoui float %4673 to i32
  %4677 = fptoui float %4674 to i32
  %4678 = shl i32 %4676, 10
  %4679 = or i32 %4678, %4675
  %4680 = shl i32 %4677, 20
  %4681 = or i32 %4679, %4680
  br label %4682

; <label>:4682                                    ; preds = %4662, %4481
  %4683 = phi i32 [ %4681, %4662 ], [ %4484, %4481 ]
  %4684 = icmp eq i32 %4660, 14
  br i1 %4684, label %4685, label %4705

; <label>:4685                                    ; preds = %4682
  %4686 = fadd fast float %300, 1.000000e+00
  %4687 = fadd fast float %309, 1.000000e+00
  %4688 = fsub fast float 1.000000e+00, %57
  %4689 = fmul fast float %4686, 5.000000e-01
  %4690 = fmul fast float %4687, 5.000000e-01
  %4691 = fmul fast float %4688, 5.000000e-01
  %4692 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4695 = fmul fast float %4692, 1.023000e+03
  %4696 = fmul fast float %4693, 1.023000e+03
  %4697 = fmul fast float %4694, 1.023000e+03
  %4698 = fptoui float %4695 to i32
  %4699 = fptoui float %4696 to i32
  %4700 = fptoui float %4697 to i32
  %4701 = shl i32 %4699, 10
  %4702 = or i32 %4701, %4698
  %4703 = shl i32 %4700, 20
  %4704 = or i32 %4702, %4703
  br label %4705

; <label>:4705                                    ; preds = %4685, %4682
  %4706 = phi i32 [ %4704, %4685 ], [ %4683, %4682 ]
  %4707 = icmp eq i32 %4660, 15
  br i1 %4707, label %4708, label %4728

; <label>:4708                                    ; preds = %4705
  %4709 = fadd fast float %56, 1.000000e+00
  %4710 = fadd fast float %57, 1.000000e+00
  %4711 = fadd fast float %58, 1.000000e+00
  %4712 = fmul fast float %4709, 5.000000e-01
  %4713 = fmul fast float %4710, 5.000000e-01
  %4714 = fmul fast float %4711, 5.000000e-01
  %4715 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = fmul fast float %4715, 1.023000e+03
  %4719 = fmul fast float %4716, 1.023000e+03
  %4720 = fmul fast float %4717, 1.023000e+03
  %4721 = fptoui float %4718 to i32
  %4722 = fptoui float %4719 to i32
  %4723 = fptoui float %4720 to i32
  %4724 = shl i32 %4722, 10
  %4725 = or i32 %4724, %4721
  %4726 = shl i32 %4723, 20
  %4727 = or i32 %4725, %4726
  br label %4728

; <label>:4728                                    ; preds = %4708, %4705
  %4729 = phi i32 [ %4727, %4708 ], [ %4706, %4705 ]
  %4730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4731 = fadd fast float %4502, %463
  %4732 = icmp eq i32 %4660, 39
  %4733 = icmp eq i32 %4660, 40
  %4734 = select i1 %4733, float %461, float 0.000000e+00
  %4735 = select i1 %4732, float %4731, float %4734
  %4736 = call float @dx.op.unary.f32(i32 24, float %359)  ; Sqrt(value)
  %4737 = call float @dx.op.unary.f32(i32 24, float %360)  ; Sqrt(value)
  %4738 = call float @dx.op.unary.f32(i32 24, float %361)  ; Sqrt(value)
  %4739 = fmul fast float %4736, %4500
  %4740 = fmul fast float %4737, %4501
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 0
  br i1 %487, label %4743, label %4767

; <label>:4743                                    ; preds = %4728
  %4744 = extractvalue %dx.types.CBufRet.f32 %4730, 3
  %4745 = fmul fast float %349, 2.000000e+00
  %4746 = fmul fast float %4745, %383
  %4747 = fsub fast float %377, %4746
  %4748 = call float @dx.op.unary.f32(i32 7, float %4747)  ; Saturate(value)
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = fmul fast float %4744, %4749
  %4751 = fsub fast float 1.000000e+00, %461
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4753 = fmul fast float %4750, %4752
  %4754 = fmul fast float %4731, %461
  %4755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4756 = extractvalue %dx.types.CBufRet.f32 %4755, 0
  %4757 = fsub fast float 1.000000e+00, %493
  %4758 = fmul fast float %4756, %4757
  %4759 = fadd fast float %4740, %4739
  %4760 = extractvalue %dx.types.CBufRet.f32 %4730, 1
  %4761 = fsub fast float %4754, %4758
  %4762 = fadd fast float %4761, %4753
  %4763 = fsub fast float %4762, %4760
  %4764 = extractvalue %dx.types.CBufRet.f32 %4730, 2
  %4765 = fmul fast float %4763, %4764
  %4766 = call float @dx.op.unary.f32(i32 7, float %4765)  ; Saturate(value)
  br label %4771

; <label>:4767                                    ; preds = %4728
  %4768 = fmul fast float %4738, %4502
  %4769 = fmul fast float %4742, %4740
  %4770 = fmul fast float %4768, %4742
  br label %4771

; <label>:4771                                    ; preds = %4767, %4743
  %4772 = phi float [ %4759, %4743 ], [ %4739, %4767 ]
  %4773 = phi float [ %4766, %4743 ], [ %4769, %4767 ]
  %4774 = phi float [ 1.000000e+00, %4743 ], [ %4770, %4767 ]
  %4775 = fmul float %4742, %4772
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = fmul fast float %4777, %4653
  %4779 = fmul fast float %4777, %4654
  %4780 = fadd fast float %4653, %4652
  %4781 = select i1 %487, float %4780, float %4652
  %4782 = fmul float %4781, %4777
  %4783 = select i1 %487, float 0.000000e+00, float %4778
  %4784 = select i1 %487, float 0.000000e+00, float %4779
  switch i32 %4660, label %5084 [
    i32 0, label %5099
    i32 1, label %4785
    i32 2, label %4786
    i32 3, label %4798
    i32 4, label %4807
    i32 5, label %4808
    i32 6, label %4809
    i32 12, label %4810
    i32 13, label %4811
    i32 14, label %4823
    i32 15, label %4835
    i32 16, label %4847
    i32 17, label %4848
    i32 63, label %5083
    i32 18, label %4849
    i32 25, label %4871
    i32 27, label %4872
    i32 28, label %4873
    i32 29, label %4874
    i32 31, label %4875
    i32 32, label %4898
    i32 33, label %4959
    i32 37, label %4977
    i32 38, label %4978
    i32 39, label %4987
    i32 40, label %5010
    i32 41, label %5014
    i32 52, label %5015
    i32 53, label %5016
    i32 54, label %5017
    i32 55, label %5018
    i32 56, label %5019
    i32 57, label %5021
    i32 58, label %5023
    i32 59, label %5061
    i32 60, label %5063
    i32 61, label %5065
    i32 64, label %5067
    i32 62, label %5082
  ]

; <label>:4785                                    ; preds = %4771
  br label %5084

; <label>:4786                                    ; preds = %4771
  %4787 = call float @dx.op.dot3.f32(i32 55, float %347, float %348, float %349, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = call float @dx.op.unary.f32(i32 25, float %4787)  ; Rsqrt(value)
  %4789 = fmul fast float %347, 5.000000e-01
  %4790 = fmul fast float %4789, %4788
  %4791 = fmul fast float %348, 5.000000e-01
  %4792 = fmul fast float %4791, %4788
  %4793 = fmul fast float %349, 5.000000e-01
  %4794 = fmul fast float %4793, %4788
  %4795 = fadd fast float %4790, 5.000000e-01
  %4796 = fadd fast float %4792, 5.000000e-01
  %4797 = fadd fast float %4794, 5.000000e-01
  br label %5084

; <label>:4798                                    ; preds = %4771
  %4799 = fcmp fast ole float %447, 0x3FA4B5DCC0000000
  %4800 = fmul fast float %447, 0x3FB3D07220000000
  %4801 = fadd fast float %447, 0x3FAC28F5C0000000
  %4802 = fmul fast float %4801, 0x3FEE54EDE0000000
  %4803 = call float @dx.op.unary.f32(i32 23, float %4802)  ; Log(value)
  %4804 = fmul fast float %4803, 0x4003333340000000
  %4805 = call float @dx.op.unary.f32(i32 21, float %4804)  ; Exp(value)
  %4806 = select i1 %4799, float %4800, float %4805
  br label %5084

; <label>:4807                                    ; preds = %4771
  br label %5084

; <label>:4808                                    ; preds = %4771
  br label %5084

; <label>:4809                                    ; preds = %4771
  br label %5084

; <label>:4810                                    ; preds = %4771
  br label %5084

; <label>:4811                                    ; preds = %4771
  %4812 = and i32 %4729, 1023
  %4813 = uitofp i32 %4812 to float
  %4814 = lshr i32 %4729, 10
  %4815 = and i32 %4814, 1023
  %4816 = uitofp i32 %4815 to float
  %4817 = lshr i32 %4729, 20
  %4818 = and i32 %4817, 1023
  %4819 = uitofp i32 %4818 to float
  %4820 = fmul fast float %4813, 0x3F50040100000000
  %4821 = fmul fast float %4816, 0x3F50040100000000
  %4822 = fmul fast float %4819, 0x3F50040100000000
  br label %5084

; <label>:4823                                    ; preds = %4771
  %4824 = and i32 %4729, 1023
  %4825 = uitofp i32 %4824 to float
  %4826 = lshr i32 %4729, 10
  %4827 = and i32 %4826, 1023
  %4828 = uitofp i32 %4827 to float
  %4829 = lshr i32 %4729, 20
  %4830 = and i32 %4829, 1023
  %4831 = uitofp i32 %4830 to float
  %4832 = fmul fast float %4825, 0x3F50040100000000
  %4833 = fmul fast float %4828, 0x3F50040100000000
  %4834 = fmul fast float %4831, 0x3F50040100000000
  br label %5084

; <label>:4835                                    ; preds = %4771
  %4836 = and i32 %4729, 1023
  %4837 = uitofp i32 %4836 to float
  %4838 = lshr i32 %4729, 10
  %4839 = and i32 %4838, 1023
  %4840 = uitofp i32 %4839 to float
  %4841 = lshr i32 %4729, 20
  %4842 = and i32 %4841, 1023
  %4843 = uitofp i32 %4842 to float
  %4844 = fmul fast float %4837, 0x3F50040100000000
  %4845 = fmul fast float %4840, 0x3F50040100000000
  %4846 = fmul fast float %4843, 0x3F50040100000000
  br label %5084

; <label>:4847                                    ; preds = %4771
  br label %5084

; <label>:4848                                    ; preds = %4771
  br label %5084

; <label>:4849                                    ; preds = %4771
  %4850 = fcmp fast ogt float %368, 0x3FB99999A0000000
  %4851 = fcmp fast ogt float %369, 0x3FB99999A0000000
  %4852 = or i1 %4850, %4851
  %4853 = fcmp fast ogt float %370, 0x3FB99999A0000000
  %4854 = or i1 %4852, %4853
  %4855 = fcmp fast olt float %368, 0x3FB99999A0000000
  %4856 = fcmp fast olt float %369, 0x3FB99999A0000000
  %4857 = or i1 %4855, %4856
  %4858 = fcmp fast olt float %370, 0x3FB99999A0000000
  %4859 = or i1 %4857, %4858
  %4860 = fadd fast float %368, %359
  %4861 = fcmp fast ogt float %4860, 1.000000e+00
  %4862 = fadd fast float %369, %360
  %4863 = fcmp fast ogt float %4862, 1.000000e+00
  %4864 = or i1 %4861, %4863
  %4865 = fadd fast float %370, %361
  %4866 = fcmp fast ogt float %4865, 1.000000e+00
  %4867 = or i1 %4864, %4866
  %4868 = select i1 %4867, float 1.000000e+00, float 0.000000e+00
  %4869 = and i1 %4854, %4859
  %4870 = select i1 %4869, float 1.000000e+00, float 0.000000e+00
  br label %5084

; <label>:4871                                    ; preds = %4771
  br label %5084

; <label>:4872                                    ; preds = %4771
  br label %5084

; <label>:4873                                    ; preds = %4771
  br label %5084

; <label>:4874                                    ; preds = %4771
  br label %5084

; <label>:4875                                    ; preds = %4771
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 2
  %4879 = extractvalue %dx.types.CBufRet.f32 %4876, 3
  %4880 = fcmp fast olt float %447, %4877
  br i1 %4880, label %4881, label %4895

; <label>:4881                                    ; preds = %6426, %6424, %4895, %4875
  %4882 = phi i32 [ 0, %4875 ], [ 1, %4895 ], [ 2, %6424 ], [ 3, %6426 ]
  %4883 = mul i32 %4882, 3
  %4884 = add i32 0, %4883
  %4885 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4884
  %4886 = load float, float* %4885, align 4
  %4887 = mul i32 %4882, 3
  %4888 = add i32 1, %4887
  %4889 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4888
  %4890 = load float, float* %4889, align 4
  %4891 = mul i32 %4882, 3
  %4892 = add i32 2, %4891
  %4893 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4892
  %4894 = load float, float* %4893, align 4
  br label %5084

; <label>:4895                                    ; preds = %4875
  %4896 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4897 = fcmp fast olt float %447, %4896
  br i1 %4897, label %4881, label %6424

; <label>:4898                                    ; preds = %4771
  %4899 = fcmp fast ole float %359, 0x3F69A5C380000000
  %4900 = fcmp fast ole float %360, 0x3F69A5C380000000
  %4901 = fcmp fast ole float %361, 0x3F69A5C380000000
  %4902 = fmul fast float %359, 0x4029D70A40000000
  %4903 = fmul fast float %360, 0x4029D70A40000000
  %4904 = fmul fast float %361, 0x4029D70A40000000
  %4905 = call float @dx.op.unary.f32(i32 23, float %359)  ; Log(value)
  %4906 = call float @dx.op.unary.f32(i32 23, float %360)  ; Log(value)
  %4907 = call float @dx.op.unary.f32(i32 23, float %361)  ; Log(value)
  %4908 = fmul fast float %4905, 0x3FDAAAAAA0000000
  %4909 = fmul fast float %4906, 0x3FDAAAAAA0000000
  %4910 = fmul fast float %4907, 0x3FDAAAAAA0000000
  %4911 = call float @dx.op.unary.f32(i32 21, float %4908)  ; Exp(value)
  %4912 = call float @dx.op.unary.f32(i32 21, float %4909)  ; Exp(value)
  %4913 = call float @dx.op.unary.f32(i32 21, float %4910)  ; Exp(value)
  %4914 = fmul fast float %4911, 0x3FF0E147A0000000
  %4915 = fmul fast float %4912, 0x3FF0E147A0000000
  %4916 = fmul fast float %4913, 0x3FF0E147A0000000
  %4917 = fadd fast float %4914, 0xBFAC28F5C0000000
  %4918 = fadd fast float %4915, 0xBFAC28F5C0000000
  %4919 = fadd fast float %4916, 0xBFAC28F5C0000000
  %4920 = select i1 %4899, float %4902, float %4917
  %4921 = select i1 %4900, float %4903, float %4918
  %4922 = select i1 %4901, float %4904, float %4919
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4920, float %4921, float %4922, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = fcmp fast olt float %4923, 0x3FA0101020000000
  br i1 %4924, label %4933, label %4925

; <label>:4925                                    ; preds = %4898
  %4926 = fcmp fast ogt float %4923, 0x3FEEFEFF00000000
  br i1 %4926, label %4933, label %4927

; <label>:4927                                    ; preds = %4925
  %4928 = fcmp fast ogt float %4923, 0x3FEF5F5F60000000
  br i1 %4928, label %4933, label %4929

; <label>:4929                                    ; preds = %4927
  %4930 = fadd fast float %4923, %4923
  %4931 = fcmp fast ogt float %4930, 2.550000e+02
  br i1 %4931, label %4932, label %4933

; <label>:4932                                    ; preds = %4929
  br label %4933

; <label>:4933                                    ; preds = %4932, %4929, %4927, %4925, %4898
  %4934 = phi float [ 1.000000e+00, %4932 ], [ %4775, %4929 ], [ 1.000000e+00, %4898 ], [ 0x3FBD1D1D20000000, %4925 ], [ 0.000000e+00, %4927 ]
  %4935 = phi float [ 0.000000e+00, %4932 ], [ %4773, %4929 ], [ 0x3FE6666660000000, %4898 ], [ 1.000000e+00, %4925 ], [ 0.000000e+00, %4927 ]
  %4936 = phi float [ 1.000000e+00, %4932 ], [ %4774, %4929 ], [ 0.000000e+00, %4898 ], [ 0x3FDD5D5D60000000, %4925 ], [ 1.000000e+00, %4927 ]
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 3
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 3
  %4941 = fmul fast float %4940, 8.000000e+00
  %4942 = fmul fast float %53, 5.000000e+02
  %4943 = fmul fast float %4942, %4938
  %4944 = fsub fast float %4943, %4941
  %4945 = call float @dx.op.unary.f32(i32 13, float %4944)  ; Sin(value)
  %4946 = fmul fast float %4945, %4945
  %4947 = fmul fast float %4946, 2.000000e+00
  %4948 = fadd fast float %4947, -1.000000e+00
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fsub fast float %4934, %4775
  %4951 = fsub fast float %4935, %4773
  %4952 = fsub fast float %4936, %4774
  %4953 = fmul fast float %4949, %4950
  %4954 = fmul fast float %4949, %4951
  %4955 = fmul fast float %4949, %4952
  %4956 = fadd fast float %4953, %4775
  %4957 = fadd fast float %4954, %4773
  %4958 = fadd fast float %4955, %4774
  br label %5084

; <label>:4959                                    ; preds = %4771
  %4960 = fcmp fast olt float %49, 1.280000e+02
  br i1 %4960, label %4961, label %4975

; <label>:4961                                    ; preds = %6442, %6440, %6438, %6436, %6434, %6432, %6430, %6428, %4975, %4959
  %4962 = phi i32 [ 0, %4959 ], [ 1, %4975 ], [ 2, %6428 ], [ 3, %6430 ], [ 4, %6432 ], [ 5, %6434 ], [ 6, %6436 ], [ 7, %6438 ], [ 8, %6440 ], [ 9, %6442 ]
  %4963 = mul i32 %4962, 3
  %4964 = add i32 0, %4963
  %4965 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4964
  %4966 = load float, float* %4965, align 4
  %4967 = mul i32 %4962, 3
  %4968 = add i32 1, %4967
  %4969 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4968
  %4970 = load float, float* %4969, align 4
  %4971 = mul i32 %4962, 3
  %4972 = add i32 2, %4971
  %4973 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4972
  %4974 = load float, float* %4973, align 4
  br label %5084

; <label>:4975                                    ; preds = %4959
  %4976 = fcmp fast olt float %49, 2.560000e+02
  br i1 %4976, label %4961, label %6428

; <label>:4977                                    ; preds = %4771
  br label %5084

; <label>:4978                                    ; preds = %4771
  %4979 = bitcast i32 %4729 to float
  %4980 = fcmp fast ogt float %4979, 0.000000e+00
  %4981 = select i1 %4980, float 0.000000e+00, float 1.000000e+00
  %4982 = fcmp fast olt float %4979, 1.000000e+00
  %4983 = select i1 %4982, float 1.000000e+00, float 0.000000e+00
  %4984 = select i1 %4982, float %4981, float 0.000000e+00
  %4985 = fmul fast float %4983, %447
  %4986 = fmul fast float %4984, %447
  br label %5084

; <label>:4987                                    ; preds = %4771
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.CBufRet.f32 %4988, 2
  %4991 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4992 = fcmp fast olt float %4735, %4989
  br i1 %4992, label %4993, label %5007

; <label>:4993                                    ; preds = %6446, %6444, %5007, %4987
  %4994 = phi i32 [ 0, %4987 ], [ 1, %5007 ], [ 2, %6444 ], [ 3, %6446 ]
  %4995 = mul i32 %4994, 3
  %4996 = add i32 0, %4995
  %4997 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %4996
  %4998 = load float, float* %4997, align 4
  %4999 = mul i32 %4994, 3
  %5000 = add i32 1, %4999
  %5001 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %5000
  %5002 = load float, float* %5001, align 4
  %5003 = mul i32 %4994, 3
  %5004 = add i32 2, %5003
  %5005 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %5004
  %5006 = load float, float* %5005, align 4
  br label %5084

; <label>:5007                                    ; preds = %4987
  %5008 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %5009 = fcmp fast olt float %4735, %5008
  br i1 %5009, label %4993, label %6444

; <label>:5010                                    ; preds = %4771
  %5011 = fadd fast float %4735, -5.000000e-01
  %5012 = fmul fast float %5011, 2.000000e+00
  %5013 = call float @dx.op.unary.f32(i32 7, float %5012)  ; Saturate(value)
  br label %5084

; <label>:5014                                    ; preds = %4771
  br label %5084

; <label>:5015                                    ; preds = %4771
  br label %5084

; <label>:5016                                    ; preds = %4771
  br label %5084

; <label>:5017                                    ; preds = %4771
  br label %5084

; <label>:5018                                    ; preds = %4771
  br label %5084

; <label>:5019                                    ; preds = %4771
  %5020 = bitcast i32 %4729 to float
  br label %5084

; <label>:5021                                    ; preds = %4771
  %5022 = bitcast i32 %4729 to float
  br label %5084

; <label>:5023                                    ; preds = %4771
  %5024 = and i32 %4729, 65535
  %5025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5024)  ; LegacyF16ToF32(value)
  %5026 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %5027 = fptosi float %5026 to i32
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.CBufRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5032 = fadd fast float %5029, %92
  %5033 = fadd fast float %5030, %93
  %5034 = fadd fast float %5031, %94
  %5035 = fptosi float %5032 to i32
  %5036 = fptosi float %5033 to i32
  %5037 = fptosi float %5034 to i32
  %5038 = xor i32 %5035, %5036
  %5039 = lshr i32 %5038, 1
  %5040 = and i32 %5039, 1
  %5041 = lshr i32 %5037, 1
  %5042 = and i32 %5041, 1
  %5043 = xor i32 %5042, 1
  %5044 = icmp ne i32 %5040, %5043
  switch i32 %5027, label %5084 [
    i32 -1, label %5045
    i32 -2, label %5046
    i32 -3, label %5048
    i32 -4, label %5050
    i32 -5, label %5052
    i32 -6, label %5053
    i32 -7, label %5054
  ]

; <label>:5045                                    ; preds = %5023
  br label %5084

; <label>:5046                                    ; preds = %5023
  %5047 = select i1 %5044, float 1.000000e+00, float 0.000000e+00
  br label %5084

; <label>:5048                                    ; preds = %5023
  %5049 = select i1 %5044, float 1.000000e+00, float 0.000000e+00
  br label %5084

; <label>:5050                                    ; preds = %5023
  %5051 = select i1 %5044, float 1.000000e+00, float 0.000000e+00
  br label %5084

; <label>:5052                                    ; preds = %5023
  br label %5084

; <label>:5053                                    ; preds = %5023
  br label %5084

; <label>:5054                                    ; preds = %5023
  %5055 = lshr i32 %4729, 16
  %5056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5055)  ; LegacyF16ToF32(value)
  %5057 = fmul fast float %5056, 0x3FD5555560000000
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = fmul fast float %5057, %5025
  %5060 = fmul fast float %5058, %5025
  br label %5084

; <label>:5061                                    ; preds = %4771
  %5062 = bitcast i32 %4729 to float
  br label %5084

; <label>:5063                                    ; preds = %4771
  %5064 = bitcast i32 %4729 to float
  br label %5084

; <label>:5065                                    ; preds = %4771
  %5066 = bitcast i32 %4729 to float
  br label %5084

; <label>:5067                                    ; preds = %4771
  %5068 = and i32 %4729, 1023
  %5069 = uitofp i32 %5068 to float
  %5070 = lshr i32 %4729, 10
  %5071 = and i32 %5070, 1023
  %5072 = uitofp i32 %5071 to float
  %5073 = lshr i32 %4729, 20
  %5074 = and i32 %5073, 1023
  %5075 = uitofp i32 %5074 to float
  %5076 = fmul fast float %5069, 0x3F60040100000000
  %5077 = fmul fast float %5072, 0x3F60040100000000
  %5078 = fmul fast float %5075, 0x3F60040100000000
  %5079 = fadd fast float %5076, -1.000000e+00
  %5080 = fadd fast float %5077, -1.000000e+00
  %5081 = fadd fast float %5078, -1.000000e+00
  br label %5084

; <label>:5082                                    ; preds = %4771
  br label %5084

; <label>:5083                                    ; preds = %4771
  br label %5084

; <label>:5084                                    ; preds = %6446, %6442, %6426, %5083, %5082, %5067, %5065, %5063, %5061, %5054, %5053, %5052, %5050, %5048, %5046, %5045, %5023, %5021, %5019, %5018, %5017, %5016, %5015, %5014, %5010, %4993, %4978, %4977, %4961, %4933, %4881, %4874, %4873, %4872, %4871, %4849, %4848, %4847, %4835, %4823, %4811, %4810, %4809, %4808, %4807, %4798, %4786, %4785, %4771
  %5085 = phi float [ %4775, %4771 ], [ 0.000000e+00, %5082 ], [ %5079, %5067 ], [ %5066, %5065 ], [ %5064, %5063 ], [ %5062, %5061 ], [ %4775, %5023 ], [ 0.000000e+00, %5054 ], [ %5025, %5053 ], [ %5025, %5052 ], [ 0.000000e+00, %5050 ], [ %5049, %5048 ], [ %5047, %5046 ], [ %5025, %5045 ], [ %5022, %5021 ], [ %5020, %5019 ], [ 0.000000e+00, %5018 ], [ 0.000000e+00, %5017 ], [ 0.000000e+00, %5016 ], [ %92, %5014 ], [ %5013, %5010 ], [ %4985, %4978 ], [ 0.000000e+00, %4977 ], [ %4956, %4933 ], [ 0.000000e+00, %4874 ], [ 0.000000e+00, %4873 ], [ 0.000000e+00, %4872 ], [ 1.000000e+00, %4871 ], [ 0.000000e+00, %5083 ], [ 1.000000e+00, %4848 ], [ 5.000000e-01, %4847 ], [ %4844, %4835 ], [ %4832, %4823 ], [ %4820, %4811 ], [ 0.000000e+00, %4810 ], [ %448, %4809 ], [ %368, %4808 ], [ 0.000000e+00, %4807 ], [ %4806, %4798 ], [ %4795, %4786 ], [ %359, %4785 ], [ %4886, %4881 ], [ %4966, %4961 ], [ %4998, %4993 ], [ 0.000000e+00, %5015 ], [ 1.000000e+00, %6426 ], [ 1.000000e+00, %6442 ], [ 1.000000e+00, %6446 ], [ %4868, %4849 ]
  %5086 = phi float [ %4773, %4771 ], [ 0.000000e+00, %5082 ], [ %5080, %5067 ], [ %5066, %5065 ], [ %5064, %5063 ], [ %5062, %5061 ], [ %4773, %5023 ], [ %5059, %5054 ], [ %5025, %5053 ], [ %5025, %5052 ], [ 0.000000e+00, %5050 ], [ 0.000000e+00, %5048 ], [ 0.000000e+00, %5046 ], [ %5025, %5045 ], [ %5022, %5021 ], [ %5020, %5019 ], [ 0.000000e+00, %5018 ], [ 0.000000e+00, %5017 ], [ 0.000000e+00, %5016 ], [ %93, %5014 ], [ %5013, %5010 ], [ %447, %4978 ], [ 0.000000e+00, %4977 ], [ %4957, %4933 ], [ 1.000000e+00, %4874 ], [ 1.000000e+00, %4873 ], [ 1.000000e+00, %4872 ], [ 0x3FE6666660000000, %4871 ], [ 0.000000e+00, %5083 ], [ 1.000000e+00, %4848 ], [ 5.000000e-01, %4847 ], [ %4845, %4835 ], [ %4833, %4823 ], [ %4821, %4811 ], [ 0.000000e+00, %4810 ], [ %448, %4809 ], [ %369, %4808 ], [ 0.000000e+00, %4807 ], [ %4806, %4798 ], [ %4796, %4786 ], [ %360, %4785 ], [ %4890, %4881 ], [ %4970, %4961 ], [ %5002, %4993 ], [ 0.000000e+00, %5015 ], [ 0.000000e+00, %6426 ], [ 0.000000e+00, %6442 ], [ 0.000000e+00, %6446 ], [ 0.000000e+00, %4849 ]
  %5087 = phi float [ %4774, %4771 ], [ 0.000000e+00, %5082 ], [ %5081, %5067 ], [ %5066, %5065 ], [ %5064, %5063 ], [ %5062, %5061 ], [ %4774, %5023 ], [ %5060, %5054 ], [ %5025, %5053 ], [ 0.000000e+00, %5052 ], [ %5051, %5050 ], [ 0.000000e+00, %5048 ], [ %5047, %5046 ], [ %5025, %5045 ], [ %5022, %5021 ], [ %5020, %5019 ], [ 0.000000e+00, %5018 ], [ 0.000000e+00, %5017 ], [ 0.000000e+00, %5016 ], [ %94, %5014 ], [ %5013, %5010 ], [ %4986, %4978 ], [ 0.000000e+00, %4977 ], [ %4958, %4933 ], [ 0.000000e+00, %4874 ], [ 0.000000e+00, %4873 ], [ 0.000000e+00, %4872 ], [ 0.000000e+00, %4871 ], [ 0.000000e+00, %5083 ], [ 1.000000e+00, %4848 ], [ 5.000000e-01, %4847 ], [ %4846, %4835 ], [ %4834, %4823 ], [ %4822, %4811 ], [ 0.000000e+00, %4810 ], [ %448, %4809 ], [ %370, %4808 ], [ 0.000000e+00, %4807 ], [ %4806, %4798 ], [ %4797, %4786 ], [ %361, %4785 ], [ %4894, %4881 ], [ %4974, %4961 ], [ %5006, %4993 ], [ 1.000000e+00, %5015 ], [ 0.000000e+00, %6426 ], [ 0.000000e+00, %6442 ], [ 0.000000e+00, %6446 ], [ %4870, %4849 ]
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5090 = fsub fast float %5085, %4775
  %5091 = fsub fast float %5086, %4773
  %5092 = fsub fast float %5087, %4774
  %5093 = fmul fast float %5089, %5090
  %5094 = fmul fast float %5089, %5091
  %5095 = fmul fast float %5089, %5092
  %5096 = fadd fast float %5093, %4775
  %5097 = fadd fast float %5094, %4773
  %5098 = fadd fast float %5095, %4774
  br label %5099

; <label>:5099                                    ; preds = %5084, %4771
  %5100 = phi float [ %5096, %5084 ], [ %4775, %4771 ]
  %5101 = phi float [ %5097, %5084 ], [ %4773, %4771 ]
  %5102 = phi float [ %5098, %5084 ], [ %4774, %4771 ]
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 0
  %5105 = bitcast float %5104 to i32
  %5106 = lshr i32 %5105, 8
  %5107 = and i32 %5106, 255
  %5108 = uitofp i32 %5107 to float
  %5109 = fptoui float %5108 to i32
  switch i32 %5109, label %5341 [
    i32 1, label %5110
    i32 2, label %5116
    i32 3, label %5122
    i32 4, label %5123
    i32 5, label %5129
    i32 6, label %5135
    i32 7, label %5141
    i32 8, label %5147
    i32 9, label %5153
    i32 10, label %5155
    i32 11, label %5176
    i32 12, label %5197
    i32 13, label %5209
    i32 14, label %5224
    i32 15, label %5229
    i32 16, label %5231
    i32 17, label %5233
    i32 18, label %5235
    i32 19, label %5237
    i32 20, label %5248
    i32 21, label %5259
    i32 22, label %5271
    i32 23, label %5305
    i32 24, label %5320
    i32 25, label %5335
    i32 26, label %5337
    i32 27, label %5339
  ]

; <label>:5110                                    ; preds = %5099
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  %5113 = fmul fast float %5112, %4494
  %5114 = fmul fast float %5112, %4495
  %5115 = fmul fast float %5112, %4496
  br label %5341

; <label>:5116                                    ; preds = %5099
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = fmul fast float %5118, %4491
  %5120 = fmul fast float %5118, %4492
  %5121 = fmul fast float %5118, %4493
  br label %5341

; <label>:5122                                    ; preds = %5099
  br label %5341

; <label>:5123                                    ; preds = %5099
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = fmul fast float %5125, %4488
  %5127 = fmul fast float %5125, %4489
  %5128 = fmul fast float %5125, %4490
  br label %5341

; <label>:5129                                    ; preds = %5099
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5132 = fmul fast float %5131, %4485
  %5133 = fmul fast float %5131, %4486
  %5134 = fmul fast float %5131, %4487
  br label %5341

; <label>:5135                                    ; preds = %5099
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5138 = fmul fast float %5137, %3326
  %5139 = fmul fast float %5137, %3327
  %5140 = fmul fast float %5137, %3328
  br label %5341

; <label>:5141                                    ; preds = %5099
  %5142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5143 = extractvalue %dx.types.CBufRet.f32 %5142, 0
  %5144 = fmul fast float %5143, %3326
  %5145 = fmul fast float %5143, %3327
  %5146 = fmul fast float %5143, %3328
  br label %5341

; <label>:5147                                    ; preds = %5099
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = fmul fast float %3329, %5149
  %5151 = fmul fast float %3330, %5149
  %5152 = fmul fast float %3331, %5149
  br label %5341

; <label>:5153                                    ; preds = %5099
  %5154 = bitcast i32 %4729 to float
  br label %5341

; <label>:5155                                    ; preds = %5099
  %5156 = and i32 %4729, 1023
  %5157 = uitofp i32 %5156 to float
  %5158 = lshr i32 %4729, 10
  %5159 = and i32 %5158, 1023
  %5160 = uitofp i32 %5159 to float
  %5161 = lshr i32 %4729, 20
  %5162 = and i32 %5161, 1023
  %5163 = uitofp i32 %5162 to float
  %5164 = fmul fast float %5157, 0x3F60040100000000
  %5165 = fmul fast float %5160, 0x3F60040100000000
  %5166 = fmul fast float %5163, 0x3F60040100000000
  %5167 = fadd fast float %5164, -1.000000e+00
  %5168 = fadd fast float %5165, -1.000000e+00
  %5169 = fadd fast float %5166, -1.000000e+00
  %5170 = fcmp fast ogt float %5167, 0.000000e+00
  %5171 = select i1 %5170, float 1.000000e+00, float 0.000000e+00
  %5172 = fcmp fast ogt float %5168, 0.000000e+00
  %5173 = select i1 %5172, float 1.000000e+00, float 0.000000e+00
  %5174 = fcmp fast ogt float %5169, 0.000000e+00
  %5175 = select i1 %5174, float 1.000000e+00, float 0.000000e+00
  br label %5341

; <label>:5176                                    ; preds = %5099
  %5177 = and i32 %4729, 1023
  %5178 = uitofp i32 %5177 to float
  %5179 = lshr i32 %4729, 10
  %5180 = and i32 %5179, 1023
  %5181 = uitofp i32 %5180 to float
  %5182 = lshr i32 %4729, 20
  %5183 = and i32 %5182, 1023
  %5184 = uitofp i32 %5183 to float
  %5185 = fmul fast float %5178, 0x3F60040100000000
  %5186 = fmul fast float %5181, 0x3F60040100000000
  %5187 = fmul fast float %5184, 0x3F60040100000000
  %5188 = fadd fast float %5185, -1.000000e+00
  %5189 = fadd fast float %5186, -1.000000e+00
  %5190 = fadd fast float %5187, -1.000000e+00
  %5191 = fmul fast float %5190, %5189
  %5192 = fsub fast float %5190, %5191
  %5193 = fmul fast float %5189, %5188
  %5194 = fmul fast float %5192, %5188
  %5195 = fsub fast float %5189, %5193
  %5196 = fsub fast float %5192, %5194
  br label %5341

; <label>:5197                                    ; preds = %5099
  %5198 = and i32 %4729, 255
  %5199 = uitofp i32 %5198 to float
  %5200 = fmul fast float %5199, 0x3F70101020000000
  %5201 = lshr i32 %4729, 8
  %5202 = and i32 %5201, 255
  %5203 = uitofp i32 %5202 to float
  %5204 = fmul fast float %5203, 0x3F70101020000000
  %5205 = lshr i32 %4729, 16
  %5206 = and i32 %5205, 255
  %5207 = uitofp i32 %5206 to float
  %5208 = fmul fast float %5207, 0x3F70101020000000
  br label %5341

; <label>:5209                                    ; preds = %5099
  %5210 = and i32 %4729, 1023
  %5211 = uitofp i32 %5210 to float
  %5212 = lshr i32 %4729, 10
  %5213 = and i32 %5212, 1023
  %5214 = uitofp i32 %5213 to float
  %5215 = lshr i32 %4729, 20
  %5216 = and i32 %5215, 1023
  %5217 = uitofp i32 %5216 to float
  %5218 = fmul fast float %5211, 0x3F60040100000000
  %5219 = fmul fast float %5214, 0x3F60040100000000
  %5220 = fmul fast float %5217, 0x3F60040100000000
  %5221 = fadd fast float %5218, -1.000000e+00
  %5222 = fadd fast float %5219, -1.000000e+00
  %5223 = fadd fast float %5220, -1.000000e+00
  br label %5341

; <label>:5224                                    ; preds = %5099
  %5225 = icmp ne i32 %4729, 0
  %5226 = select i1 %5225, float 1.000000e+00, float %5100
  %5227 = select i1 %5225, float 0.000000e+00, float %5101
  %5228 = select i1 %5225, float 0.000000e+00, float %5102
  br label %5341

; <label>:5229                                    ; preds = %5099
  %5230 = bitcast i32 %4729 to float
  br label %5341

; <label>:5231                                    ; preds = %5099
  %5232 = bitcast i32 %4729 to float
  br label %5341

; <label>:5233                                    ; preds = %5099
  %5234 = bitcast i32 %4729 to float
  br label %5341

; <label>:5235                                    ; preds = %5099
  %5236 = bitcast i32 %4729 to float
  br label %5341

; <label>:5237                                    ; preds = %5099
  %5238 = and i32 %4729, 65535
  %5239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5238)  ; LegacyF16ToF32(value)
  %5240 = lshr i32 %4729, 16
  %5241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5240)  ; LegacyF16ToF32(value)
  %5242 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5245 = fmul fast float %5244, %5239
  %5246 = fmul fast float %5244, %5241
  %5247 = fmul fast float %5244, %5242
  br label %5341

; <label>:5248                                    ; preds = %5099
  %5249 = and i32 %4729, 65535
  %5250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5249)  ; LegacyF16ToF32(value)
  %5251 = lshr i32 %4729, 16
  %5252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5251)  ; LegacyF16ToF32(value)
  %5253 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = fmul fast float %5255, %5250
  %5257 = fmul fast float %5255, %5252
  %5258 = fmul fast float %5255, %5253
  br label %5341

; <label>:5259                                    ; preds = %5099
  %5260 = and i32 %4729, 1023
  %5261 = uitofp i32 %5260 to float
  %5262 = lshr i32 %4729, 10
  %5263 = and i32 %5262, 1023
  %5264 = uitofp i32 %5263 to float
  %5265 = lshr i32 %4729, 20
  %5266 = and i32 %5265, 1023
  %5267 = uitofp i32 %5266 to float
  %5268 = fmul fast float %5261, 0x3F50040100000000
  %5269 = fmul fast float %5264, 0x3F50040100000000
  %5270 = fmul fast float %5267, 0x3F50040100000000
  br label %5341

; <label>:5271                                    ; preds = %5099
  %5272 = and i32 %4729, 1023
  %5273 = uitofp i32 %5272 to float
  %5274 = lshr i32 %4729, 10
  %5275 = and i32 %5274, 1023
  %5276 = uitofp i32 %5275 to float
  %5277 = lshr i32 %4729, 20
  %5278 = and i32 %5277, 1023
  %5279 = uitofp i32 %5278 to float
  %5280 = fmul fast float %5273, 0x3F60040100000000
  %5281 = fmul fast float %5276, 0x3F60040100000000
  %5282 = fmul fast float %5279, 0x3F60040100000000
  %5283 = fadd fast float %5280, -1.000000e+00
  %5284 = fadd fast float %5281, -1.000000e+00
  %5285 = fadd fast float %5282, -1.000000e+00
  %5286 = call float @dx.op.binary.f32(i32 35, float %5284, float %5285)  ; FMax(a,b)
  %5287 = call float @dx.op.binary.f32(i32 35, float %5283, float %5286)  ; FMax(a,b)
  %5288 = fmul fast float %5287, 2.000000e+00
  %5289 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5290 = fmul fast float %5273, 0x3F94050140000000
  %5291 = fadd fast float %5290, -1.000000e+01
  %5292 = fmul fast float %5276, 0x3F94050140000000
  %5293 = fadd fast float %5292, -1.000000e+01
  %5294 = fmul fast float %5279, 0x3F94050140000000
  %5295 = fadd fast float %5294, -1.000000e+01
  %5296 = fsub fast float %5291, %5100
  %5297 = fsub fast float %5293, %5101
  %5298 = fsub fast float %5295, %5102
  %5299 = fmul fast float %5289, %5296
  %5300 = fmul fast float %5289, %5297
  %5301 = fmul fast float %5289, %5298
  %5302 = fadd fast float %5299, %5100
  %5303 = fadd fast float %5300, %5101
  %5304 = fadd fast float %5301, %5102
  br label %5341

; <label>:5305                                    ; preds = %5099
  %5306 = and i32 %4729, 1023
  %5307 = uitofp i32 %5306 to float
  %5308 = lshr i32 %4729, 10
  %5309 = and i32 %5308, 1023
  %5310 = uitofp i32 %5309 to float
  %5311 = lshr i32 %4729, 20
  %5312 = and i32 %5311, 1023
  %5313 = uitofp i32 %5312 to float
  %5314 = fmul fast float %5307, 0x3F60040100000000
  %5315 = fmul fast float %5310, 0x3F60040100000000
  %5316 = fmul fast float %5313, 0x3F60040100000000
  %5317 = fadd fast float %5314, -1.000000e+00
  %5318 = fadd fast float %5315, -1.000000e+00
  %5319 = fadd fast float %5316, -1.000000e+00
  br label %5341

; <label>:5320                                    ; preds = %5099
  %5321 = and i32 %4729, 1023
  %5322 = uitofp i32 %5321 to float
  %5323 = lshr i32 %4729, 10
  %5324 = and i32 %5323, 1023
  %5325 = uitofp i32 %5324 to float
  %5326 = lshr i32 %4729, 20
  %5327 = and i32 %5326, 1023
  %5328 = uitofp i32 %5327 to float
  %5329 = fmul fast float %5322, 0x3F60040100000000
  %5330 = fmul fast float %5325, 0x3F60040100000000
  %5331 = fmul fast float %5328, 0x3F60040100000000
  %5332 = fadd fast float %5329, -1.000000e+00
  %5333 = fadd fast float %5330, -1.000000e+00
  %5334 = fadd fast float %5331, -1.000000e+00
  br label %5341

; <label>:5335                                    ; preds = %5099
  %5336 = bitcast i32 %4729 to float
  br label %5341

; <label>:5337                                    ; preds = %5099
  %5338 = bitcast i32 %4729 to float
  br label %5341

; <label>:5339                                    ; preds = %5099
  %5340 = bitcast i32 %4729 to float
  br label %5341

; <label>:5341                                    ; preds = %5339, %5337, %5335, %5320, %5305, %5271, %5259, %5248, %5237, %5235, %5233, %5231, %5229, %5224, %5209, %5197, %5176, %5155, %5153, %5147, %5141, %5135, %5129, %5123, %5122, %5116, %5110, %5099
  %5342 = phi float [ %5100, %5099 ], [ %5340, %5339 ], [ %5338, %5337 ], [ %5336, %5335 ], [ %5332, %5320 ], [ %5317, %5305 ], [ %5302, %5271 ], [ %5268, %5259 ], [ %5256, %5248 ], [ %5245, %5237 ], [ %5236, %5235 ], [ %5234, %5233 ], [ %5232, %5231 ], [ %5230, %5229 ], [ %5221, %5209 ], [ %5200, %5197 ], [ %5188, %5176 ], [ %5171, %5155 ], [ %5154, %5153 ], [ %5150, %5147 ], [ %5144, %5141 ], [ %5138, %5135 ], [ %5132, %5129 ], [ %5126, %5123 ], [ 0.000000e+00, %5122 ], [ %5119, %5116 ], [ %5113, %5110 ], [ %5226, %5224 ]
  %5343 = phi float [ %5101, %5099 ], [ %5340, %5339 ], [ %5338, %5337 ], [ %5336, %5335 ], [ %5333, %5320 ], [ %5318, %5305 ], [ %5303, %5271 ], [ %5269, %5259 ], [ %5257, %5248 ], [ %5246, %5237 ], [ %5236, %5235 ], [ %5234, %5233 ], [ %5232, %5231 ], [ %5230, %5229 ], [ %5222, %5209 ], [ %5204, %5197 ], [ %5195, %5176 ], [ %5173, %5155 ], [ %5154, %5153 ], [ %5151, %5147 ], [ %5145, %5141 ], [ %5139, %5135 ], [ %5133, %5129 ], [ %5127, %5123 ], [ 0.000000e+00, %5122 ], [ %5120, %5116 ], [ %5114, %5110 ], [ %5227, %5224 ]
  %5344 = phi float [ %5102, %5099 ], [ %5340, %5339 ], [ %5338, %5337 ], [ %5336, %5335 ], [ %5334, %5320 ], [ %5319, %5305 ], [ %5304, %5271 ], [ %5270, %5259 ], [ %5258, %5248 ], [ %5247, %5237 ], [ %5236, %5235 ], [ %5234, %5233 ], [ %5232, %5231 ], [ %5230, %5229 ], [ %5223, %5209 ], [ %5208, %5197 ], [ %5196, %5176 ], [ %5175, %5155 ], [ %5154, %5153 ], [ %5152, %5147 ], [ %5146, %5141 ], [ %5140, %5135 ], [ %5134, %5129 ], [ %5128, %5123 ], [ 0.000000e+00, %5122 ], [ %5121, %5116 ], [ %5115, %5110 ], [ %5228, %5224 ]
  %5345 = extractvalue %dx.types.CBufRet.f32 %5103, 3
  %5346 = fsub fast float %5342, %5100
  %5347 = fsub fast float %5343, %5101
  %5348 = fsub fast float %5344, %5102
  %5349 = fmul fast float %5345, %5346
  %5350 = fmul fast float %5345, %5347
  %5351 = fmul fast float %5345, %5348
  %5352 = fadd fast float %5349, %5100
  %5353 = fadd fast float %5350, %5101
  %5354 = fadd fast float %5351, %5102
  %5355 = lshr i32 %5105, 16
  %5356 = and i32 %5355, 255
  %5357 = uitofp i32 %5356 to float
  %5358 = fptoui float %5357 to i32
  switch i32 %5358, label %5405 [
    i32 16, label %5390
    i32 12, label %5389
    i32 3, label %5359
    i32 4, label %5360
    i32 15, label %5361
    i32 5, label %5370
    i32 6, label %5379
    i32 7, label %5388
    i32 11, label %5389
  ]

; <label>:5359                                    ; preds = %5341
  br label %5405

; <label>:5360                                    ; preds = %5341
  br label %5405

; <label>:5361                                    ; preds = %5341
  %5362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %5363 = extractvalue %dx.types.CBufRet.f32 %5362, 0
  %5364 = fadd fast float %5363, %5352
  %5365 = fadd fast float %5363, %5353
  %5366 = fadd fast float %5363, %5354
  %5367 = call float @dx.op.unary.f32(i32 7, float %5364)  ; Saturate(value)
  %5368 = call float @dx.op.unary.f32(i32 7, float %5365)  ; Saturate(value)
  %5369 = call float @dx.op.unary.f32(i32 7, float %5366)  ; Saturate(value)
  br label %5405

; <label>:5370                                    ; preds = %5341
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 0
  %5373 = bitcast float %5372 to i32
  %5374 = and i32 %5373, 2130706432
  %5375 = icmp eq i32 %5374, 0
  %5376 = select i1 %5375, float 0.000000e+00, float %5352
  %5377 = select i1 %5375, float 0.000000e+00, float %5353
  %5378 = select i1 %5375, float 0.000000e+00, float %5354
  br label %5405

; <label>:5379                                    ; preds = %5341
  %5380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5381 = extractvalue %dx.types.CBufRet.f32 %5380, 0
  %5382 = bitcast float %5381 to i32
  %5383 = and i32 %5382, 2130706432
  %5384 = icmp eq i32 %5383, 0
  %5385 = select i1 %5384, float 0.000000e+00, float %5352
  %5386 = select i1 %5384, float 0.000000e+00, float %5353
  %5387 = select i1 %5384, float 0.000000e+00, float %5354
  br label %5405

; <label>:5388                                    ; preds = %5341
  br label %5405

; <label>:5389                                    ; preds = %5341, %5341
  br label %5405

; <label>:5390                                    ; preds = %5341
  %5391 = and i32 %4729, 1023
  %5392 = uitofp i32 %5391 to float
  %5393 = lshr i32 %4729, 10
  %5394 = and i32 %5393, 1023
  %5395 = uitofp i32 %5394 to float
  %5396 = lshr i32 %4729, 20
  %5397 = and i32 %5396, 1023
  %5398 = uitofp i32 %5397 to float
  %5399 = fmul fast float %5392, 0x3F60040100000000
  %5400 = fmul fast float %5395, 0x3F60040100000000
  %5401 = fmul fast float %5398, 0x3F60040100000000
  %5402 = fadd fast float %5399, -1.000000e+00
  %5403 = fadd fast float %5400, -1.000000e+00
  %5404 = fadd fast float %5401, -1.000000e+00
  br label %5405

; <label>:5405                                    ; preds = %5390, %5389, %5388, %5379, %5370, %5361, %5360, %5359, %5341
  %5406 = phi float [ 0.000000e+00, %5388 ], [ %5367, %5361 ], [ 0.000000e+00, %5360 ], [ %40, %5389 ], [ %5402, %5390 ], [ 0.000000e+00, %5359 ], [ %5376, %5370 ], [ %5385, %5379 ], [ %5352, %5341 ]
  %5407 = phi float [ 0.000000e+00, %5388 ], [ %5368, %5361 ], [ 0.000000e+00, %5360 ], [ %41, %5389 ], [ %5403, %5390 ], [ 0.000000e+00, %5359 ], [ %5377, %5370 ], [ %5386, %5379 ], [ %5353, %5341 ]
  %5408 = phi float [ 0.000000e+00, %5388 ], [ %5369, %5361 ], [ 1.000000e+00, %5360 ], [ %42, %5389 ], [ %5404, %5390 ], [ 0.000000e+00, %5359 ], [ %5378, %5370 ], [ %5387, %5379 ], [ %5354, %5341 ]
  %5409 = fsub fast float %5406, %5352
  %5410 = fsub fast float %5407, %5353
  %5411 = fsub fast float %5408, %5354
  %5412 = fmul fast float %5345, %5409
  %5413 = fmul fast float %5345, %5410
  %5414 = fmul fast float %5345, %5411
  %5415 = fadd fast float %5412, %5352
  %5416 = fadd fast float %5413, %5353
  %5417 = fadd fast float %5414, %5354
  %5418 = and i32 %4483, 255
  %5419 = uitofp i32 %5418 to float
  %5420 = fptoui float %5419 to i32
  %5421 = lshr i32 %4483, 8
  %5422 = and i32 %5421, 255
  %5423 = uitofp i32 %5422 to float
  %5424 = fptoui float %5423 to i32
  %5425 = lshr i32 %4483, 16
  %5426 = and i32 %5425, 255
  %5427 = uitofp i32 %5426 to float
  %5428 = fptoui float %5427 to i32
  %5429 = lshr i32 %4483, 24
  %5430 = uitofp i32 %5429 to float
  %5431 = fptoui float %5430 to i32
  %5432 = and i32 %4482, 255
  %5433 = uitofp i32 %5432 to float
  %5434 = fptoui float %5433 to i32
  %5435 = lshr i32 %4482, 16
  %5436 = and i32 %5435, 255
  %5437 = uitofp i32 %5436 to float
  %5438 = fptoui float %5437 to i32
  %5439 = lshr i32 %5105, 24
  %5440 = uitofp i32 %5439 to float
  %5441 = fptoui float %5440 to i32
  switch i32 %5441, label %5680 [
    i32 1, label %5442
    i32 2, label %5469
    i32 3, label %5494
    i32 4, label %5517
    i32 5, label %5540
    i32 6, label %5563
    i32 7, label %5587
    i32 8, label %5610
    i32 9, label %5633
    i32 12, label %5655
    i32 13, label %5656
    i32 14, label %5679
  ]

; <label>:5442                                    ; preds = %5405
  %5443 = add i32 %5420, %5434
  %5444 = add i32 %5443, %5431
  %5445 = add i32 %5444, %5424
  %5446 = add i32 %5445, %5428
  %5447 = uitofp i32 %5446 to float
  %5448 = fadd fast float %5447, -4.000000e+00
  %5449 = fmul fast float %5448, 0x3FB5555560000000
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = icmp eq i32 %5446, 0
  %5452 = select i1 %5451, float 0.000000e+00, float %5450
  %5453 = icmp ult i32 %5446, 2
  %5454 = select i1 %5453, float 0.000000e+00, float %5450
  %5455 = add i32 %5446, -1
  %5456 = icmp ult i32 %5455, 2
  %5457 = select i1 %5456, float 1.000000e+00, float %5452
  %5458 = icmp ult i32 %5446, 4
  %5459 = select i1 %5458, float 0.000000e+00, float 1.000000e+00
  %5460 = and i32 %5446, -2
  %5461 = icmp eq i32 %5460, 2
  %5462 = icmp eq i32 %5446, 4
  %5463 = select i1 %5462, float 1.000000e+00, float %5459
  %5464 = or i1 %5462, %5461
  %5465 = select i1 %5464, float 1.000000e+00, float %5454
  %5466 = add i32 %5446, -3
  %5467 = icmp ult i32 %5466, 2
  %5468 = select i1 %5467, float 0.000000e+00, float %5457
  br label %5680

; <label>:5469                                    ; preds = %5405
  %5470 = add i32 %5424, %5420
  %5471 = add i32 %5470, %5428
  %5472 = uitofp i32 %5471 to float
  %5473 = fadd fast float %5472, -4.000000e+00
  %5474 = fmul fast float %5473, 0x3FB5555560000000
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = icmp eq i32 %5471, 0
  %5477 = select i1 %5476, float 0.000000e+00, float %5475
  %5478 = icmp ult i32 %5471, 2
  %5479 = select i1 %5478, float 0.000000e+00, float %5475
  %5480 = add i32 %5471, -1
  %5481 = icmp ult i32 %5480, 2
  %5482 = select i1 %5481, float 1.000000e+00, float %5477
  %5483 = icmp ult i32 %5471, 4
  %5484 = select i1 %5483, float 0.000000e+00, float 1.000000e+00
  %5485 = and i32 %5471, -2
  %5486 = icmp eq i32 %5485, 2
  %5487 = icmp eq i32 %5471, 4
  %5488 = select i1 %5487, float 1.000000e+00, float %5484
  %5489 = or i1 %5487, %5486
  %5490 = select i1 %5489, float 1.000000e+00, float %5479
  %5491 = add i32 %5471, -3
  %5492 = icmp ult i32 %5491, 2
  %5493 = select i1 %5492, float 0.000000e+00, float %5482
  br label %5680

; <label>:5494                                    ; preds = %5405
  %5495 = uitofp i32 %5420 to float
  %5496 = fadd fast float %5495, -4.000000e+00
  %5497 = fmul fast float %5496, 0x3FB5555560000000
  %5498 = call float @dx.op.unary.f32(i32 7, float %5497)  ; Saturate(value)
  %5499 = icmp eq i32 %5420, 0
  %5500 = select i1 %5499, float 0.000000e+00, float %5498
  %5501 = icmp ult i32 %5420, 2
  %5502 = select i1 %5501, float 0.000000e+00, float %5498
  %5503 = add i32 %5420, -1
  %5504 = icmp ult i32 %5503, 2
  %5505 = select i1 %5504, float 1.000000e+00, float %5500
  %5506 = icmp ult i32 %5420, 4
  %5507 = select i1 %5506, float 0.000000e+00, float 1.000000e+00
  %5508 = and i32 %5420, -2
  %5509 = icmp eq i32 %5508, 2
  %5510 = icmp eq i32 %5420, 4
  %5511 = select i1 %5510, float 1.000000e+00, float %5507
  %5512 = or i1 %5510, %5509
  %5513 = select i1 %5512, float 1.000000e+00, float %5502
  %5514 = add i32 %5420, -3
  %5515 = icmp ult i32 %5514, 2
  %5516 = select i1 %5515, float 0.000000e+00, float %5505
  br label %5680

; <label>:5517                                    ; preds = %5405
  %5518 = uitofp i32 %5424 to float
  %5519 = fadd fast float %5518, -4.000000e+00
  %5520 = fmul fast float %5519, 0x3FB5555560000000
  %5521 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5522 = icmp eq i32 %5424, 0
  %5523 = select i1 %5522, float 0.000000e+00, float %5521
  %5524 = icmp ult i32 %5424, 2
  %5525 = select i1 %5524, float 0.000000e+00, float %5521
  %5526 = add i32 %5424, -1
  %5527 = icmp ult i32 %5526, 2
  %5528 = select i1 %5527, float 1.000000e+00, float %5523
  %5529 = icmp ult i32 %5424, 4
  %5530 = select i1 %5529, float 0.000000e+00, float 1.000000e+00
  %5531 = and i32 %5424, -2
  %5532 = icmp eq i32 %5531, 2
  %5533 = icmp eq i32 %5424, 4
  %5534 = select i1 %5533, float 1.000000e+00, float %5530
  %5535 = or i1 %5533, %5532
  %5536 = select i1 %5535, float 1.000000e+00, float %5525
  %5537 = add i32 %5424, -3
  %5538 = icmp ult i32 %5537, 2
  %5539 = select i1 %5538, float 0.000000e+00, float %5528
  br label %5680

; <label>:5540                                    ; preds = %5405
  %5541 = uitofp i32 %5428 to float
  %5542 = fadd fast float %5541, -4.000000e+00
  %5543 = fmul fast float %5542, 0x3FB5555560000000
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = icmp eq i32 %5428, 0
  %5546 = select i1 %5545, float 0.000000e+00, float %5544
  %5547 = icmp ult i32 %5428, 2
  %5548 = select i1 %5547, float 0.000000e+00, float %5544
  %5549 = add i32 %5428, -1
  %5550 = icmp ult i32 %5549, 2
  %5551 = select i1 %5550, float 1.000000e+00, float %5546
  %5552 = icmp ult i32 %5428, 4
  %5553 = select i1 %5552, float 0.000000e+00, float 1.000000e+00
  %5554 = and i32 %5428, -2
  %5555 = icmp eq i32 %5554, 2
  %5556 = icmp eq i32 %5428, 4
  %5557 = select i1 %5556, float 1.000000e+00, float %5553
  %5558 = or i1 %5556, %5555
  %5559 = select i1 %5558, float 1.000000e+00, float %5548
  %5560 = add i32 %5428, -3
  %5561 = icmp ult i32 %5560, 2
  %5562 = select i1 %5561, float 0.000000e+00, float %5551
  br label %5680

; <label>:5563                                    ; preds = %5405
  %5564 = add i32 %5431, %5434
  %5565 = uitofp i32 %5564 to float
  %5566 = fadd fast float %5565, -4.000000e+00
  %5567 = fmul fast float %5566, 0x3FB5555560000000
  %5568 = call float @dx.op.unary.f32(i32 7, float %5567)  ; Saturate(value)
  %5569 = icmp eq i32 %5564, 0
  %5570 = select i1 %5569, float 0.000000e+00, float %5568
  %5571 = icmp ult i32 %5564, 2
  %5572 = select i1 %5571, float 0.000000e+00, float %5568
  %5573 = add i32 %5564, -1
  %5574 = icmp ult i32 %5573, 2
  %5575 = select i1 %5574, float 1.000000e+00, float %5570
  %5576 = icmp ult i32 %5564, 4
  %5577 = select i1 %5576, float 0.000000e+00, float 1.000000e+00
  %5578 = and i32 %5564, -2
  %5579 = icmp eq i32 %5578, 2
  %5580 = icmp eq i32 %5564, 4
  %5581 = select i1 %5580, float 1.000000e+00, float %5577
  %5582 = or i1 %5580, %5579
  %5583 = select i1 %5582, float 1.000000e+00, float %5572
  %5584 = add i32 %5564, -3
  %5585 = icmp ult i32 %5584, 2
  %5586 = select i1 %5585, float 0.000000e+00, float %5575
  br label %5680

; <label>:5587                                    ; preds = %5405
  %5588 = uitofp i32 %5431 to float
  %5589 = fadd fast float %5588, -4.000000e+00
  %5590 = fmul fast float %5589, 0x3FB5555560000000
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = icmp eq i32 %5431, 0
  %5593 = select i1 %5592, float 0.000000e+00, float %5591
  %5594 = icmp ult i32 %5431, 2
  %5595 = select i1 %5594, float 0.000000e+00, float %5591
  %5596 = add i32 %5431, -1
  %5597 = icmp ult i32 %5596, 2
  %5598 = select i1 %5597, float 1.000000e+00, float %5593
  %5599 = icmp ult i32 %5431, 4
  %5600 = select i1 %5599, float 0.000000e+00, float 1.000000e+00
  %5601 = and i32 %5431, -2
  %5602 = icmp eq i32 %5601, 2
  %5603 = icmp eq i32 %5431, 4
  %5604 = select i1 %5603, float 1.000000e+00, float %5600
  %5605 = or i1 %5603, %5602
  %5606 = select i1 %5605, float 1.000000e+00, float %5595
  %5607 = add i32 %5431, -3
  %5608 = icmp ult i32 %5607, 2
  %5609 = select i1 %5608, float 0.000000e+00, float %5598
  br label %5680

; <label>:5610                                    ; preds = %5405
  %5611 = uitofp i32 %5434 to float
  %5612 = fadd fast float %5611, -4.000000e+00
  %5613 = fmul fast float %5612, 0x3FB5555560000000
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = icmp eq i32 %5434, 0
  %5616 = select i1 %5615, float 0.000000e+00, float %5614
  %5617 = icmp ult i32 %5434, 2
  %5618 = select i1 %5617, float 0.000000e+00, float %5614
  %5619 = add i32 %5434, -1
  %5620 = icmp ult i32 %5619, 2
  %5621 = select i1 %5620, float 1.000000e+00, float %5616
  %5622 = icmp ult i32 %5434, 4
  %5623 = select i1 %5622, float 0.000000e+00, float 1.000000e+00
  %5624 = and i32 %5434, -2
  %5625 = icmp eq i32 %5624, 2
  %5626 = icmp eq i32 %5434, 4
  %5627 = select i1 %5626, float 1.000000e+00, float %5623
  %5628 = or i1 %5626, %5625
  %5629 = select i1 %5628, float 1.000000e+00, float %5618
  %5630 = add i32 %5434, -3
  %5631 = icmp ult i32 %5630, 2
  %5632 = select i1 %5631, float 0.000000e+00, float %5621
  br label %5680

; <label>:5633                                    ; preds = %5405
  %5634 = lshr i32 %4482, 8
  %5635 = and i32 %5634, 255
  %5636 = uitofp i32 %5635 to float
  %5637 = fptoui float %5636 to i32
  %5638 = uitofp i32 %5637 to float
  %5639 = fcmp fast oge float %5638, 1.000000e+00
  %5640 = fcmp fast oge float %5638, 2.000000e+00
  %5641 = or i1 %5640, %5639
  %5642 = select i1 %5641, float 1.000000e+00, float 0.000000e+00
  %5643 = fcmp fast oge float %5638, 3.000000e+00
  %5644 = or i1 %5643, %5640
  %5645 = fcmp fast oge float %5638, 4.000000e+00
  %5646 = or i1 %5645, %5644
  %5647 = select i1 %5646, float 1.000000e+00, float 0.000000e+00
  %5648 = or i1 %5645, %5643
  %5649 = fcmp fast oge float %5638, 5.000000e+00
  %5650 = or i1 %5649, %5645
  %5651 = select i1 %5650, float 1.000000e+00, float 0.000000e+00
  %5652 = select i1 %5649, float 0.000000e+00, float %5647
  %5653 = or i1 %5649, %5648
  %5654 = select i1 %5653, float 0.000000e+00, float %5642
  br label %5680

; <label>:5655                                    ; preds = %5405
  br label %5680

; <label>:5656                                    ; preds = %5405
  %5657 = uitofp i32 %5438 to float
  %5658 = fadd fast float %5657, -4.000000e+00
  %5659 = fmul fast float %5658, 0x3FB5555560000000
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = icmp eq i32 %5438, 0
  %5662 = select i1 %5661, float 0.000000e+00, float %5660
  %5663 = icmp ult i32 %5438, 2
  %5664 = select i1 %5663, float 0.000000e+00, float %5660
  %5665 = add i32 %5438, -1
  %5666 = icmp ult i32 %5665, 2
  %5667 = select i1 %5666, float 1.000000e+00, float %5662
  %5668 = icmp ult i32 %5438, 4
  %5669 = select i1 %5668, float 0.000000e+00, float 1.000000e+00
  %5670 = and i32 %5438, -2
  %5671 = icmp eq i32 %5670, 2
  %5672 = icmp eq i32 %5438, 4
  %5673 = select i1 %5672, float 1.000000e+00, float %5669
  %5674 = or i1 %5672, %5671
  %5675 = select i1 %5674, float 1.000000e+00, float %5664
  %5676 = add i32 %5438, -3
  %5677 = icmp ult i32 %5676, 2
  %5678 = select i1 %5677, float 0.000000e+00, float %5667
  br label %5680

; <label>:5679                                    ; preds = %5405
  br label %5680

; <label>:5680                                    ; preds = %5679, %5656, %5655, %5633, %5610, %5587, %5563, %5540, %5517, %5494, %5469, %5442, %5405
  %5681 = phi float [ %5415, %5405 ], [ 5.000000e-01, %5679 ], [ %5673, %5656 ], [ 0.000000e+00, %5655 ], [ %5651, %5633 ], [ %5627, %5610 ], [ %5604, %5587 ], [ %5581, %5563 ], [ %5557, %5540 ], [ %5534, %5517 ], [ %5511, %5494 ], [ %5488, %5469 ], [ %5463, %5442 ]
  %5682 = phi float [ %5416, %5405 ], [ 5.000000e-01, %5679 ], [ %5675, %5656 ], [ 0.000000e+00, %5655 ], [ %5652, %5633 ], [ %5629, %5610 ], [ %5606, %5587 ], [ %5583, %5563 ], [ %5559, %5540 ], [ %5536, %5517 ], [ %5513, %5494 ], [ %5490, %5469 ], [ %5465, %5442 ]
  %5683 = phi float [ %5417, %5405 ], [ 5.000000e-01, %5679 ], [ %5678, %5656 ], [ 0.000000e+00, %5655 ], [ %5654, %5633 ], [ %5632, %5610 ], [ %5609, %5587 ], [ %5586, %5563 ], [ %5562, %5540 ], [ %5539, %5517 ], [ %5516, %5494 ], [ %5493, %5469 ], [ %5468, %5442 ]
  %5684 = fsub fast float %5681, %5415
  %5685 = fsub fast float %5682, %5416
  %5686 = fsub fast float %5683, %5417
  %5687 = fmul fast float %5684, %5345
  %5688 = fmul fast float %5685, %5345
  %5689 = fmul fast float %5686, %5345
  %5690 = fadd fast float %5687, %5415
  %5691 = fadd fast float %5688, %5416
  %5692 = fadd fast float %5689, %5417
  %5693 = and i32 %5105, 255
  %5694 = uitofp i32 %5693 to float
  %5695 = fptoui float %5694 to i32
  %5696 = icmp ult i32 %5695, 25
  br i1 %5696, label %5697, label %5702

; <label>:5697                                    ; preds = %5680
  %5698 = trunc i32 %5695 to i25
  %5699 = lshr i25 1048574, %5698
  %5700 = and i25 %5699, 1
  %5701 = icmp ne i25 %5700, 0
  br label %5702

; <label>:5702                                    ; preds = %5697, %5680
  %5703 = phi i1 [ %5701, %5697 ], [ true, %5680 ]
  %5704 = or i32 %5358, %5109
  %5705 = or i32 %5704, %5441
  %5706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5706, 3
  %5708 = bitcast float %5707 to i32
  %5709 = and i32 %5708, 255
  %5710 = uitofp i32 %5709 to float
  %5711 = fptoui float %5710 to i32
  %5712 = or i32 %5705, %5711
  %5713 = icmp ne i32 %5712, 0
  %5714 = or i1 %5703, %5713
  %5715 = extractvalue %dx.types.CBufRet.f32 %5706, 0
  %5716 = bitcast float %5715 to i32
  %5717 = icmp slt i32 %5716, 0
  %5718 = or i1 %5717, %5714
  br i1 %5718, label %5719, label %5737

; <label>:5719                                    ; preds = %5702
  %5720 = icmp eq i32 %5441, 14
  br i1 %5720, label %5737, label %5721

; <label>:5721                                    ; preds = %5719
  %5722 = fsub fast float 1.000000e+00, %4736
  %5723 = fsub fast float 1.000000e+00, %4737
  %5724 = fsub fast float 1.000000e+00, %4738
  %5725 = fmul fast float %5345, %5722
  %5726 = fmul fast float %5345, %5723
  %5727 = fmul fast float %5345, %5724
  %5728 = fadd fast float %5725, %4736
  %5729 = fadd fast float %5726, %4737
  %5730 = fadd fast float %5727, %4738
  %5731 = fmul fast float %5345, %4782
  %5732 = fmul fast float %5345, %4783
  %5733 = fmul fast float %5345, %4784
  %5734 = fsub fast float %4782, %5731
  %5735 = fsub fast float %4783, %5732
  %5736 = fsub fast float %4784, %5733
  br label %5737

; <label>:5737                                    ; preds = %5721, %5719, %5702
  %5738 = phi float [ %5734, %5721 ], [ %4782, %5702 ], [ 0.000000e+00, %5719 ]
  %5739 = phi float [ %5735, %5721 ], [ %4783, %5702 ], [ 0.000000e+00, %5719 ]
  %5740 = phi float [ %5736, %5721 ], [ %4784, %5702 ], [ 0.000000e+00, %5719 ]
  %5741 = phi float [ %5728, %5721 ], [ %4736, %5702 ], [ 1.000000e+00, %5719 ]
  %5742 = phi float [ %5729, %5721 ], [ %4737, %5702 ], [ 1.000000e+00, %5719 ]
  %5743 = phi float [ %5730, %5721 ], [ %4738, %5702 ], [ 1.000000e+00, %5719 ]
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 2
  %5746 = extractvalue %dx.types.CBufRet.f32 %5744, 3
  %5747 = fmul fast float %5745, %52
  %5748 = fmul fast float %5746, %53
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 0
  %5751 = fcmp fast oge float %5747, %5750
  %5752 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5753 = fcmp fast ole float %5747, %5752
  %5754 = and i1 %5751, %5753
  %5755 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5756 = fcmp fast oge float %5748, %5755
  %5757 = and i1 %5754, %5756
  %5758 = extractvalue %dx.types.CBufRet.f32 %5749, 3
  %5759 = fcmp fast ole float %5748, %5758
  %5760 = and i1 %5757, %5759
  %5761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.i32 %5761, 0
  %5763 = icmp ne i32 %5762, 0
  %5764 = icmp ne i32 %5762, 35
  %5765 = and i1 %5763, %5764
  %5766 = and i1 %5760, %5765
  br i1 %5766, label %5767, label %5780

; <label>:5767                                    ; preds = %5737
  %5768 = call float @dx.op.binary.f32(i32 36, float %5690, float 3.225500e+04)  ; FMin(a,b)
  %5769 = call float @dx.op.binary.f32(i32 36, float %5691, float 3.225500e+04)  ; FMin(a,b)
  %5770 = call float @dx.op.binary.f32(i32 36, float %5692, float 3.225500e+04)  ; FMin(a,b)
  %5771 = fmul fast float %5768, %5741
  %5772 = fmul fast float %5769, %5742
  %5773 = fmul fast float %5770, %5743
  %5774 = call float @dx.op.binary.f32(i32 36, float %5738, float 3.225500e+04)  ; FMin(a,b)
  %5775 = call float @dx.op.binary.f32(i32 36, float %5739, float 3.225500e+04)  ; FMin(a,b)
  %5776 = call float @dx.op.binary.f32(i32 36, float %5740, float 3.225500e+04)  ; FMin(a,b)
  %5777 = fadd fast float %5774, %5771
  %5778 = fadd fast float %5775, %5772
  %5779 = fadd fast float %5776, %5773
  br label %5780

; <label>:5780                                    ; preds = %5767, %5737
  %5781 = phi float [ %5777, %5767 ], [ %5690, %5737 ]
  %5782 = phi float [ %5778, %5767 ], [ %5691, %5737 ]
  %5783 = phi float [ %5779, %5767 ], [ %5692, %5737 ]
  %5784 = and i1 %5760, %5763
  br i1 %5784, label %5785, label %6367

; <label>:5785                                    ; preds = %5780
  %5786 = icmp eq i32 %5762, 1
  br i1 %5786, label %6367, label %5787

; <label>:5787                                    ; preds = %5785
  %5788 = icmp eq i32 %5762, 2
  br i1 %5788, label %6367, label %5789

; <label>:5789                                    ; preds = %5787
  %5790 = icmp eq i32 %5762, 3
  %5791 = icmp eq i32 %5762, 26
  %5792 = or i1 %5790, %5791
  %5793 = and i32 %5762, -2
  %5794 = icmp eq i32 %5793, 4
  %5795 = or i1 %5792, %5794
  br i1 %5795, label %6367, label %5796

; <label>:5796                                    ; preds = %5789
  %5797 = and i32 %5762, -2
  %5798 = icmp eq i32 %5797, 6
  %5799 = icmp eq i32 %5762, 8
  %5800 = or i1 %5798, %5799
  br i1 %5800, label %6367, label %5801

; <label>:5801                                    ; preds = %5796
  %5802 = icmp eq i32 %5762, 9
  br i1 %5802, label %6367, label %5803

; <label>:5803                                    ; preds = %5801
  %5804 = and i32 %5762, -2
  %5805 = icmp eq i32 %5804, 10
  %5806 = icmp eq i32 %5762, 12
  %5807 = or i1 %5805, %5806
  br i1 %5807, label %6367, label %5808

; <label>:5808                                    ; preds = %5803
  %5809 = icmp eq i32 %5762, 13
  br i1 %5809, label %6367, label %5810

; <label>:5810                                    ; preds = %5808
  %5811 = and i32 %5762, -2
  %5812 = icmp eq i32 %5811, 14
  %5813 = icmp eq i32 %5762, 16
  %5814 = or i1 %5812, %5813
  br i1 %5814, label %6367, label %5815

; <label>:5815                                    ; preds = %5810
  %5816 = icmp eq i32 %5762, 17
  br i1 %5816, label %6367, label %5817

; <label>:5817                                    ; preds = %5815
  %5818 = icmp eq i32 %5762, 18
  br i1 %5818, label %6367, label %5819

; <label>:5819                                    ; preds = %5817
  %5820 = icmp eq i32 %5762, 19
  br i1 %5820, label %6367, label %5821

; <label>:5821                                    ; preds = %5819
  %5822 = icmp eq i32 %5762, 20
  br i1 %5822, label %6367, label %5823

; <label>:5823                                    ; preds = %5821
  %5824 = and i32 %5762, -9
  %5825 = icmp eq i32 %5824, 21
  br i1 %5825, label %6367, label %5826

; <label>:5826                                    ; preds = %5823
  %5827 = icmp eq i32 %5762, 22
  %5828 = icmp eq i32 %5762, 38
  %5829 = or i1 %5827, %5828
  br i1 %5829, label %5830, label %5944

; <label>:5830                                    ; preds = %5826
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.CBufRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5835 = fadd fast float %5832, %92
  %5836 = fadd fast float %5833, %93
  %5837 = fadd fast float %5834, %94
  %5838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5839 = extractvalue %dx.types.CBufRet.f32 %5838, 0
  %5840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5841 = extractvalue %dx.types.CBufRet.f32 %5840, 0
  %5842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5843 = extractvalue %dx.types.CBufRet.f32 %5842, 0
  %5844 = extractvalue %dx.types.CBufRet.f32 %5838, 1
  %5845 = extractvalue %dx.types.CBufRet.f32 %5840, 1
  %5846 = extractvalue %dx.types.CBufRet.f32 %5842, 1
  %5847 = extractvalue %dx.types.CBufRet.f32 %5838, 3
  %5848 = extractvalue %dx.types.CBufRet.f32 %5840, 3
  %5849 = extractvalue %dx.types.CBufRet.f32 %5842, 3
  %5850 = fadd fast float %5835, %5847
  %5851 = fadd fast float %5836, %5848
  %5852 = fadd fast float %5837, %5849
  %5853 = fmul fast float %5850, %5839
  %5854 = call float @dx.op.tertiary.f32(i32 46, float %5851, float %5841, float %5853)  ; FMad(a,b,c)
  %5855 = call float @dx.op.tertiary.f32(i32 46, float %5852, float %5843, float %5854)  ; FMad(a,b,c)
  %5856 = fmul fast float %5850, %5844
  %5857 = call float @dx.op.tertiary.f32(i32 46, float %5851, float %5845, float %5856)  ; FMad(a,b,c)
  %5858 = call float @dx.op.tertiary.f32(i32 46, float %5852, float %5846, float %5857)  ; FMad(a,b,c)
  %5859 = fsub fast float %5855, %5847
  %5860 = fsub fast float %5858, %5848
  %5861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5862 = extractvalue %dx.types.CBufRet.f32 %5861, 0
  %5863 = extractvalue %dx.types.CBufRet.f32 %5861, 1
  %5864 = fsub fast float %5859, %5862
  %5865 = fsub fast float %5860, %5863
  %5866 = fmul fast float %5864, %5864
  %5867 = fmul fast float %5865, %5865
  %5868 = fadd fast float %5866, %5867
  %5869 = call float @dx.op.unary.f32(i32 24, float %5868)  ; Sqrt(value)
  %5870 = extractvalue %dx.types.CBufRet.f32 %5861, 2
  %5871 = fcmp fast olt float %5869, %5870
  br i1 %5871, label %5872, label %6367

; <label>:5872                                    ; preds = %5830
  %5873 = fadd fast float %5864, %5870
  %5874 = fadd fast float %5865, %5870
  %5875 = extractvalue %dx.types.CBufRet.f32 %5861, 3
  %5876 = fmul fast float %5873, %5875
  %5877 = fmul fast float %5874, %5875
  %5878 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  %5880 = fsub fast float 1.000000e+00, %5878
  %5881 = fsub fast float 1.000000e+00, %5879
  %5882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5880, float %5881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = fcmp fast ugt float %5883, 0.000000e+00
  br i1 %5884, label %5885, label %6367

; <label>:5885                                    ; preds = %5872
  br i1 %5827, label %5886, label %5891

; <label>:5886                                    ; preds = %5885
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %5880, float %5881, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 0
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 1
  %5890 = extractvalue %dx.types.ResRet.f32 %5887, 2
  br label %6367

; <label>:5891                                    ; preds = %5885
  %5892 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %29, i32 0)  ; GetDimensions(handle,mipLevel)
  %5893 = extractvalue %dx.types.Dimensions %5892, 0
  %5894 = sitofp i32 %5893 to float
  %5895 = extractvalue %dx.types.Dimensions %5892, 1
  %5896 = sitofp i32 %5895 to float
  %5897 = fmul fast float %5894, %5880
  %5898 = fmul fast float %5896, %5881
  %5899 = call float @dx.op.unary.f32(i32 27, float %5897)  ; Round_ni(value)
  %5900 = call float @dx.op.unary.f32(i32 27, float %5898)  ; Round_ni(value)
  %5901 = fptoui float %5894 to i32
  %5902 = uitofp i32 %5901 to float
  %5903 = fmul fast float %5902, %5900
  %5904 = fadd fast float %5903, %5899
  %5905 = fptoui float %5904 to i32
  %5906 = uitofp i32 %5905 to float
  %5907 = fmul fast float %5906, 0x3FE3C6EF40000000
  %5908 = call float @dx.op.unary.f32(i32 22, float %5907)  ; Frc(value)
  %5909 = fadd fast float %5908, 0x3FE5555560000000
  %5910 = fadd fast float %5908, 0x3FD5555560000000
  %5911 = fsub fast float -0.000000e+00, %5908
  %5912 = fsub fast float -0.000000e+00, %5909
  %5913 = fsub fast float -0.000000e+00, %5910
  %5914 = fcmp fast oge float %5908, %5911
  %5915 = fcmp fast oge float %5909, %5912
  %5916 = fcmp fast oge float %5910, %5913
  %5917 = call float @dx.op.unary.f32(i32 6, float %5908)  ; FAbs(value)
  %5918 = call float @dx.op.unary.f32(i32 6, float %5909)  ; FAbs(value)
  %5919 = call float @dx.op.unary.f32(i32 6, float %5910)  ; FAbs(value)
  %5920 = call float @dx.op.unary.f32(i32 22, float %5917)  ; Frc(value)
  %5921 = call float @dx.op.unary.f32(i32 22, float %5918)  ; Frc(value)
  %5922 = call float @dx.op.unary.f32(i32 22, float %5919)  ; Frc(value)
  %5923 = fsub fast float -0.000000e+00, %5920
  %5924 = fsub fast float -0.000000e+00, %5921
  %5925 = fsub fast float -0.000000e+00, %5922
  %5926 = select i1 %5914, float %5920, float %5923
  %5927 = select i1 %5915, float %5921, float %5924
  %5928 = select i1 %5916, float %5922, float %5925
  %5929 = fmul fast float %5926, 6.000000e+00
  %5930 = fmul fast float %5927, 6.000000e+00
  %5931 = fmul fast float %5928, 6.000000e+00
  %5932 = fadd fast float %5929, -3.000000e+00
  %5933 = fadd fast float %5930, -3.000000e+00
  %5934 = fadd fast float %5931, -3.000000e+00
  %5935 = call float @dx.op.unary.f32(i32 6, float %5932)  ; FAbs(value)
  %5936 = call float @dx.op.unary.f32(i32 6, float %5933)  ; FAbs(value)
  %5937 = call float @dx.op.unary.f32(i32 6, float %5934)  ; FAbs(value)
  %5938 = fadd fast float %5935, -1.000000e+00
  %5939 = fadd fast float %5936, -1.000000e+00
  %5940 = fadd fast float %5937, -1.000000e+00
  %5941 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  %5942 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5943 = call float @dx.op.unary.f32(i32 7, float %5940)  ; Saturate(value)
  br label %6367

; <label>:5944                                    ; preds = %5826
  %5945 = icmp eq i32 %5762, 39
  br i1 %5945, label %5946, label %6050

; <label>:5946                                    ; preds = %5944
  %5947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %5948 = extractvalue %dx.types.CBufRet.f32 %5947, 0
  %5949 = extractvalue %dx.types.CBufRet.f32 %5947, 1
  %5950 = extractvalue %dx.types.CBufRet.f32 %5947, 2
  %5951 = fadd fast float %5948, %92
  %5952 = fadd fast float %5949, %93
  %5953 = fadd fast float %5950, %94
  %5954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.f32 %5954, 0
  %5956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5957 = extractvalue %dx.types.CBufRet.f32 %5956, 0
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.f32 %5954, 1
  %5961 = extractvalue %dx.types.CBufRet.f32 %5956, 1
  %5962 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5963 = extractvalue %dx.types.CBufRet.f32 %5954, 3
  %5964 = extractvalue %dx.types.CBufRet.f32 %5956, 3
  %5965 = extractvalue %dx.types.CBufRet.f32 %5958, 3
  %5966 = fadd fast float %5951, %5963
  %5967 = fadd fast float %5952, %5964
  %5968 = fadd fast float %5953, %5965
  %5969 = fmul fast float %5966, %5955
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5967, float %5957, float %5969)  ; FMad(a,b,c)
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5968, float %5959, float %5970)  ; FMad(a,b,c)
  %5972 = fmul fast float %5966, %5960
  %5973 = call float @dx.op.tertiary.f32(i32 46, float %5967, float %5961, float %5972)  ; FMad(a,b,c)
  %5974 = call float @dx.op.tertiary.f32(i32 46, float %5968, float %5962, float %5973)  ; FMad(a,b,c)
  %5975 = fsub fast float %5971, %5963
  %5976 = fsub fast float %5974, %5964
  %5977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %5978 = extractvalue %dx.types.CBufRet.f32 %5977, 0
  %5979 = extractvalue %dx.types.CBufRet.f32 %5977, 1
  %5980 = fsub fast float %5975, %5978
  %5981 = fsub fast float %5976, %5979
  %5982 = fmul fast float %5980, %5980
  %5983 = fmul fast float %5981, %5981
  %5984 = fadd fast float %5982, %5983
  %5985 = call float @dx.op.unary.f32(i32 24, float %5984)  ; Sqrt(value)
  %5986 = extractvalue %dx.types.CBufRet.f32 %5977, 2
  %5987 = fcmp fast olt float %5985, %5986
  br i1 %5987, label %5988, label %6367

; <label>:5988                                    ; preds = %5946
  %5989 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %27, i32 0)  ; GetDimensions(handle,mipLevel)
  %5990 = extractvalue %dx.types.Dimensions %5989, 0
  %5991 = sitofp i32 %5990 to float
  %5992 = extractvalue %dx.types.Dimensions %5989, 1
  %5993 = sitofp i32 %5992 to float
  %5994 = fadd fast float %5980, %5986
  %5995 = fadd fast float %5981, %5986
  %5996 = extractvalue %dx.types.CBufRet.f32 %5977, 3
  %5997 = fmul fast float %5994, %5996
  %5998 = fmul fast float %5995, %5996
  %5999 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %6000 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6001 = fsub fast float 1.000000e+00, %5999
  %6002 = fsub fast float 1.000000e+00, %6000
  %6003 = fmul fast float %6001, %5991
  %6004 = fmul fast float %6002, %5993
  %6005 = call float @dx.op.unary.f32(i32 27, float %6003)  ; Round_ni(value)
  %6006 = call float @dx.op.unary.f32(i32 27, float %6004)  ; Round_ni(value)
  %6007 = fptoui float %5991 to i32
  %6008 = uitofp i32 %6007 to float
  %6009 = fmul fast float %6006, %6008
  %6010 = fadd fast float %6009, %6005
  %6011 = fptoui float %6010 to i32
  %6012 = uitofp i32 %6011 to float
  %6013 = fmul fast float %6012, 0x3FE3C6EF40000000
  %6014 = call float @dx.op.unary.f32(i32 22, float %6013)  ; Frc(value)
  %6015 = fadd fast float %6014, 0x3FE5555560000000
  %6016 = fadd fast float %6014, 0x3FD5555560000000
  %6017 = fsub fast float -0.000000e+00, %6014
  %6018 = fsub fast float -0.000000e+00, %6015
  %6019 = fsub fast float -0.000000e+00, %6016
  %6020 = fcmp fast oge float %6014, %6017
  %6021 = fcmp fast oge float %6015, %6018
  %6022 = fcmp fast oge float %6016, %6019
  %6023 = call float @dx.op.unary.f32(i32 6, float %6014)  ; FAbs(value)
  %6024 = call float @dx.op.unary.f32(i32 6, float %6015)  ; FAbs(value)
  %6025 = call float @dx.op.unary.f32(i32 6, float %6016)  ; FAbs(value)
  %6026 = call float @dx.op.unary.f32(i32 22, float %6023)  ; Frc(value)
  %6027 = call float @dx.op.unary.f32(i32 22, float %6024)  ; Frc(value)
  %6028 = call float @dx.op.unary.f32(i32 22, float %6025)  ; Frc(value)
  %6029 = fsub fast float -0.000000e+00, %6026
  %6030 = fsub fast float -0.000000e+00, %6027
  %6031 = fsub fast float -0.000000e+00, %6028
  %6032 = select i1 %6020, float %6026, float %6029
  %6033 = select i1 %6021, float %6027, float %6030
  %6034 = select i1 %6022, float %6028, float %6031
  %6035 = fmul fast float %6032, 6.000000e+00
  %6036 = fmul fast float %6033, 6.000000e+00
  %6037 = fmul fast float %6034, 6.000000e+00
  %6038 = fadd fast float %6035, -3.000000e+00
  %6039 = fadd fast float %6036, -3.000000e+00
  %6040 = fadd fast float %6037, -3.000000e+00
  %6041 = call float @dx.op.unary.f32(i32 6, float %6038)  ; FAbs(value)
  %6042 = call float @dx.op.unary.f32(i32 6, float %6039)  ; FAbs(value)
  %6043 = call float @dx.op.unary.f32(i32 6, float %6040)  ; FAbs(value)
  %6044 = fadd fast float %6041, -1.000000e+00
  %6045 = fadd fast float %6042, -1.000000e+00
  %6046 = fadd fast float %6043, -1.000000e+00
  %6047 = call float @dx.op.unary.f32(i32 7, float %6044)  ; Saturate(value)
  %6048 = call float @dx.op.unary.f32(i32 7, float %6045)  ; Saturate(value)
  %6049 = call float @dx.op.unary.f32(i32 7, float %6046)  ; Saturate(value)
  br label %6367

; <label>:6050                                    ; preds = %5944
  %6051 = add i32 %5762, -23
  %6052 = icmp ult i32 %6051, 2
  br i1 %6052, label %6367, label %6053

; <label>:6053                                    ; preds = %6050
  %6054 = icmp eq i32 %5762, 25
  br i1 %6054, label %6367, label %6055

; <label>:6055                                    ; preds = %6053
  %6056 = icmp eq i32 %5762, 27
  br i1 %6056, label %6367, label %6057

; <label>:6057                                    ; preds = %6055
  %6058 = icmp eq i32 %5762, 30
  br i1 %6058, label %6367, label %6059

; <label>:6059                                    ; preds = %6057
  %6060 = add i32 %5762, -31
  %6061 = icmp ult i32 %6060, 2
  br i1 %6061, label %6367, label %6062

; <label>:6062                                    ; preds = %6059
  %6063 = icmp eq i32 %5762, 36
  br i1 %6063, label %6064, label %6096

; <label>:6064                                    ; preds = %6062
  %6065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.i32 %6065, 0
  %6067 = and i32 %6066, 2048
  %6068 = icmp ne i32 %6067, 0
  %6069 = call float @dx.op.binary.f32(i32 35, float %410, float %411)  ; FMax(a,b)
  %6070 = call float @dx.op.binary.f32(i32 35, float %409, float %6069)  ; FMax(a,b)
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6073 = fcmp fast oge float %6070, %6072
  %6074 = and i1 %6068, %6073
  br i1 %6074, label %6075, label %6081

; <label>:6075                                    ; preds = %6064
  %6076 = fsub fast float 1.000000e+00, %5781
  %6077 = fmul fast float %6076, 5.000000e-01
  %6078 = fadd fast float %6077, %5781
  %6079 = fmul fast float %5782, 5.000000e-01
  %6080 = fmul fast float %5783, 5.000000e-01
  br label %6367

; <label>:6081                                    ; preds = %6064
  %6082 = call float @dx.op.dot3.f32(i32 55, float %488, float %489, float %490, float %347, float %348, float %349)  ; Dot3(ax,ay,az,bx,by,bz)
  %6083 = and i32 %6066, 1024
  %6084 = icmp ne i32 %6083, 0
  %6085 = extractvalue %dx.types.CBufRet.f32 %6071, 2
  %6086 = fcmp fast ole float %6082, %6085
  %6087 = and i1 %6084, %6086
  br i1 %6087, label %6088, label %6367

; <label>:6088                                    ; preds = %6081
  %6089 = fsub fast float 1.000000e+00, %5781
  %6090 = fsub fast float 1.000000e+00, %5782
  %6091 = fmul fast float %6089, 5.000000e-01
  %6092 = fmul fast float %6090, 5.000000e-01
  %6093 = fadd fast float %6091, %5781
  %6094 = fadd fast float %6092, %5782
  %6095 = fmul fast float %5783, 5.000000e-01
  br label %6367

; <label>:6096                                    ; preds = %6062
  %6097 = icmp eq i32 %5762, 40
  br i1 %6097, label %6098, label %6341

; <label>:6098                                    ; preds = %6096
  %6099 = fmul fast float %92, %92
  %6100 = fmul fast float %93, %93
  %6101 = fadd fast float %6099, %6100
  %6102 = fmul fast float %94, %94
  %6103 = fadd fast float %6101, %6102
  %6104 = call float @dx.op.unary.f32(i32 24, float %6103)  ; Sqrt(value)
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 0
  %6107 = fcmp fast ogt float %6104, %6106
  %6108 = zext i1 %6107 to i32
  %6109 = extractvalue %dx.types.CBufRet.f32 %6105, 1
  %6110 = fcmp fast ogt float %6104, %6109
  %6111 = zext i1 %6110 to i32
  %6112 = add nuw nsw i32 %6111, %6108
  %6113 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6114 = fcmp fast ogt float %6104, %6113
  %6115 = zext i1 %6114 to i32
  %6116 = add nuw nsw i32 %6112, %6115
  %6117 = icmp ult i32 %6116, 3
  %6118 = zext i1 %6117 to i32
  %6119 = shl nuw nsw i32 %6116, 2
  %6120 = add nuw nsw i32 %6119, 48
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6120)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6123 = fcmp fast ogt float %6104, %6122
  %6124 = zext i1 %6123 to i32
  %6125 = or i32 %6119, 1
  %6126 = add nuw nsw i32 %6125, 48
  %6127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6126)  ; CBufferLoadLegacy(handle,regIndex)
  %6128 = extractvalue %dx.types.CBufRet.f32 %6127, 1
  %6129 = fcmp fast ogt float %6104, %6128
  %6130 = zext i1 %6129 to i32
  %6131 = add nuw nsw i32 %6130, %6124
  %6132 = or i32 %6119, 2
  %6133 = add nuw nsw i32 %6132, 48
  %6134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6133)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.f32 %6134, 1
  %6136 = fcmp fast ogt float %6104, %6135
  %6137 = zext i1 %6136 to i32
  %6138 = add nuw nsw i32 %6131, %6137
  %6139 = call i32 @dx.op.binary.i32(i32 40, i32 %6138, i32 3)  ; UMin(a,b)
  %6140 = add i32 %6119, %6139
  %6141 = call i32 @dx.op.binary.i32(i32 40, i32 %6140, i32 12)  ; UMin(a,b)
  %6142 = add i32 %6141, 48
  %6143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6142)  ; CBufferLoadLegacy(handle,regIndex)
  %6144 = extractvalue %dx.types.CBufRet.f32 %6143, 0
  %6145 = fcmp fast oge float %6104, %6144
  %6146 = zext i1 %6145 to i32
  %6147 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %6118)  ; UMin(a,b)
  %6148 = call i32 @dx.op.binary.i32(i32 40, i32 %6146, i32 %6147)  ; UMin(a,b)
  %6149 = fmul fast float %5752, 7.500000e-01
  %6150 = fadd fast float %6149, %5750
  %6151 = fcmp fast ult float %5747, %6150
  br i1 %6151, label %6191, label %6152

; <label>:6152                                    ; preds = %6098
  %6153 = uitofp i32 %6141 to float
  %6154 = fmul fast float %6153, 0x3FE3C6EF40000000
  %6155 = call float @dx.op.unary.f32(i32 22, float %6154)  ; Frc(value)
  %6156 = fadd fast float %6155, 0x3FE5555560000000
  %6157 = fadd fast float %6155, 0x3FD5555560000000
  %6158 = fsub fast float -0.000000e+00, %6155
  %6159 = fsub fast float -0.000000e+00, %6156
  %6160 = fsub fast float -0.000000e+00, %6157
  %6161 = fcmp fast oge float %6155, %6158
  %6162 = fcmp fast oge float %6156, %6159
  %6163 = fcmp fast oge float %6157, %6160
  %6164 = call float @dx.op.unary.f32(i32 6, float %6155)  ; FAbs(value)
  %6165 = call float @dx.op.unary.f32(i32 6, float %6156)  ; FAbs(value)
  %6166 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6167 = call float @dx.op.unary.f32(i32 22, float %6164)  ; Frc(value)
  %6168 = call float @dx.op.unary.f32(i32 22, float %6165)  ; Frc(value)
  %6169 = call float @dx.op.unary.f32(i32 22, float %6166)  ; Frc(value)
  %6170 = fsub fast float -0.000000e+00, %6167
  %6171 = fsub fast float -0.000000e+00, %6168
  %6172 = fsub fast float -0.000000e+00, %6169
  %6173 = select i1 %6161, float %6167, float %6170
  %6174 = select i1 %6162, float %6168, float %6171
  %6175 = select i1 %6163, float %6169, float %6172
  %6176 = fmul fast float %6173, 6.000000e+00
  %6177 = fmul fast float %6174, 6.000000e+00
  %6178 = fmul fast float %6175, 6.000000e+00
  %6179 = fadd fast float %6176, -3.000000e+00
  %6180 = fadd fast float %6177, -3.000000e+00
  %6181 = fadd fast float %6178, -3.000000e+00
  %6182 = call float @dx.op.unary.f32(i32 6, float %6179)  ; FAbs(value)
  %6183 = call float @dx.op.unary.f32(i32 6, float %6180)  ; FAbs(value)
  %6184 = call float @dx.op.unary.f32(i32 6, float %6181)  ; FAbs(value)
  %6185 = fadd fast float %6182, -1.000000e+00
  %6186 = fadd fast float %6183, -1.000000e+00
  %6187 = fadd fast float %6184, -1.000000e+00
  %6188 = call float @dx.op.unary.f32(i32 7, float %6185)  ; Saturate(value)
  %6189 = call float @dx.op.unary.f32(i32 7, float %6186)  ; Saturate(value)
  %6190 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  br label %6328

; <label>:6191                                    ; preds = %6098
  %6192 = fmul fast float %5752, 5.000000e-01
  %6193 = fadd fast float %6192, %5750
  %6194 = fcmp fast ult float %5747, %6193
  br i1 %6194, label %6221, label %6195

; <label>:6195                                    ; preds = %6191
  %6196 = add i32 %6148, 4
  %6197 = icmp eq i32 %6196, 0
  br i1 %6197, label %6328, label %6198

; <label>:6198                                    ; preds = %6195
  br label %6199

; <label>:6199                                    ; preds = %6199, %6198
  %6200 = phi float [ %6216, %6199 ], [ 0.000000e+00, %6198 ]
  %6201 = phi i32 [ %6217, %6199 ], [ 0, %6198 ]
  %6202 = add i32 %6141, 32
  %6203 = add i32 %6202, %6201
  %6204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6203)  ; CBufferLoadLegacy(handle,regIndex)
  %6205 = extractvalue %dx.types.CBufRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.CBufRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.CBufRet.f32 %6204, 2
  %6208 = extractvalue %dx.types.CBufRet.f32 %6204, 3
  %6209 = fmul fast float %6205, %6104
  %6210 = fadd fast float %6209, %6206
  %6211 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6212 = fmul fast float %6207, %6104
  %6213 = fadd fast float %6212, %6208
  %6214 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6215 = call float @dx.op.binary.f32(i32 36, float %6211, float %6214)  ; FMin(a,b)
  %6216 = fadd fast float %6215, %6200
  %6217 = add nuw i32 %6201, 1
  %6218 = icmp eq i32 %6217, %6196
  br i1 %6218, label %6219, label %6199

; <label>:6219                                    ; preds = %6199
  %6220 = fmul float %6216, 2.500000e-01
  br label %6328

; <label>:6221                                    ; preds = %6191
  %6222 = fmul fast float %5752, 2.500000e-01
  %6223 = fadd fast float %6222, %5750
  %6224 = fcmp fast ult float %5747, %6223
  br i1 %6224, label %6324, label %6225

; <label>:6225                                    ; preds = %6221
  %6226 = add i32 %6141, 32
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 %6226)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6229 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6230 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6231 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6232 = fmul fast float %6228, %6104
  %6233 = fadd fast float %6232, %6229
  %6234 = call float @dx.op.unary.f32(i32 7, float %6233)  ; Saturate(value)
  %6235 = fmul fast float %6230, %6104
  %6236 = fadd fast float %6235, %6231
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = call float @dx.op.binary.f32(i32 36, float %6234, float %6237)  ; FMin(a,b)
  %6239 = uitofp i32 %6141 to float
  %6240 = fmul fast float %6239, 0x3FE3C6EF40000000
  %6241 = call float @dx.op.unary.f32(i32 22, float %6240)  ; Frc(value)
  %6242 = fadd fast float %6241, 0x3FE5555560000000
  %6243 = fadd fast float %6241, 0x3FD5555560000000
  %6244 = fsub fast float -0.000000e+00, %6241
  %6245 = fsub fast float -0.000000e+00, %6242
  %6246 = fsub fast float -0.000000e+00, %6243
  %6247 = fcmp fast oge float %6241, %6244
  %6248 = fcmp fast oge float %6242, %6245
  %6249 = fcmp fast oge float %6243, %6246
  %6250 = call float @dx.op.unary.f32(i32 6, float %6241)  ; FAbs(value)
  %6251 = call float @dx.op.unary.f32(i32 6, float %6242)  ; FAbs(value)
  %6252 = call float @dx.op.unary.f32(i32 6, float %6243)  ; FAbs(value)
  %6253 = call float @dx.op.unary.f32(i32 22, float %6250)  ; Frc(value)
  %6254 = call float @dx.op.unary.f32(i32 22, float %6251)  ; Frc(value)
  %6255 = call float @dx.op.unary.f32(i32 22, float %6252)  ; Frc(value)
  %6256 = fsub fast float -0.000000e+00, %6253
  %6257 = fsub fast float -0.000000e+00, %6254
  %6258 = fsub fast float -0.000000e+00, %6255
  %6259 = select i1 %6247, float %6253, float %6256
  %6260 = select i1 %6248, float %6254, float %6257
  %6261 = select i1 %6249, float %6255, float %6258
  %6262 = fmul fast float %6259, 6.000000e+00
  %6263 = fmul fast float %6260, 6.000000e+00
  %6264 = fmul fast float %6261, 6.000000e+00
  %6265 = fadd fast float %6262, -3.000000e+00
  %6266 = fadd fast float %6263, -3.000000e+00
  %6267 = fadd fast float %6264, -3.000000e+00
  %6268 = call float @dx.op.unary.f32(i32 6, float %6265)  ; FAbs(value)
  %6269 = call float @dx.op.unary.f32(i32 6, float %6266)  ; FAbs(value)
  %6270 = call float @dx.op.unary.f32(i32 6, float %6267)  ; FAbs(value)
  %6271 = fadd fast float %6268, -1.000000e+00
  %6272 = fadd fast float %6269, -1.000000e+00
  %6273 = fadd fast float %6270, -1.000000e+00
  %6274 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6275 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6276 = call float @dx.op.unary.f32(i32 7, float %6273)  ; Saturate(value)
  %6277 = fadd fast float %6239, 1.000000e+00
  %6278 = fmul fast float %6277, 0x3FE3C6EF40000000
  %6279 = call float @dx.op.unary.f32(i32 22, float %6278)  ; Frc(value)
  %6280 = fadd fast float %6279, 0x3FE5555560000000
  %6281 = fadd fast float %6279, 0x3FD5555560000000
  %6282 = fsub fast float -0.000000e+00, %6279
  %6283 = fsub fast float -0.000000e+00, %6280
  %6284 = fsub fast float -0.000000e+00, %6281
  %6285 = fcmp fast oge float %6279, %6282
  %6286 = fcmp fast oge float %6280, %6283
  %6287 = fcmp fast oge float %6281, %6284
  %6288 = call float @dx.op.unary.f32(i32 6, float %6279)  ; FAbs(value)
  %6289 = call float @dx.op.unary.f32(i32 6, float %6280)  ; FAbs(value)
  %6290 = call float @dx.op.unary.f32(i32 6, float %6281)  ; FAbs(value)
  %6291 = call float @dx.op.unary.f32(i32 22, float %6288)  ; Frc(value)
  %6292 = call float @dx.op.unary.f32(i32 22, float %6289)  ; Frc(value)
  %6293 = call float @dx.op.unary.f32(i32 22, float %6290)  ; Frc(value)
  %6294 = fsub fast float -0.000000e+00, %6291
  %6295 = fsub fast float -0.000000e+00, %6292
  %6296 = fsub fast float -0.000000e+00, %6293
  %6297 = select i1 %6285, float %6291, float %6294
  %6298 = select i1 %6286, float %6292, float %6295
  %6299 = select i1 %6287, float %6293, float %6296
  %6300 = fmul fast float %6297, 6.000000e+00
  %6301 = fmul fast float %6298, 6.000000e+00
  %6302 = fmul fast float %6299, 6.000000e+00
  %6303 = fadd fast float %6300, -3.000000e+00
  %6304 = fadd fast float %6301, -3.000000e+00
  %6305 = fadd fast float %6302, -3.000000e+00
  %6306 = call float @dx.op.unary.f32(i32 6, float %6303)  ; FAbs(value)
  %6307 = call float @dx.op.unary.f32(i32 6, float %6304)  ; FAbs(value)
  %6308 = call float @dx.op.unary.f32(i32 6, float %6305)  ; FAbs(value)
  %6309 = fadd fast float %6306, -1.000000e+00
  %6310 = fadd fast float %6307, -1.000000e+00
  %6311 = fadd fast float %6308, -1.000000e+00
  %6312 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  %6313 = call float @dx.op.unary.f32(i32 7, float %6310)  ; Saturate(value)
  %6314 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6315 = fsub fast float %6312, %6274
  %6316 = fsub fast float %6313, %6275
  %6317 = fsub fast float %6314, %6276
  %6318 = fmul fast float %6315, %6238
  %6319 = fmul fast float %6316, %6238
  %6320 = fmul fast float %6317, %6238
  %6321 = fadd fast float %6318, %6274
  %6322 = fadd fast float %6319, %6275
  %6323 = fadd fast float %6320, %6276
  br label %6328

; <label>:6324                                    ; preds = %6221
  %6325 = icmp ne i32 %6148, 0
  %6326 = select i1 %6325, float 1.000000e+00, float 0.000000e+00
  %6327 = select i1 %6325, float 0.000000e+00, float 1.000000e+00
  br label %6328

; <label>:6328                                    ; preds = %6324, %6225, %6219, %6195, %6152
  %6329 = phi float [ %6188, %6152 ], [ %6321, %6225 ], [ %6326, %6324 ], [ 0.000000e+00, %6195 ], [ %6220, %6219 ]
  %6330 = phi float [ %6189, %6152 ], [ %6322, %6225 ], [ %6327, %6324 ], [ 0.000000e+00, %6195 ], [ %6220, %6219 ]
  %6331 = phi float [ %6190, %6152 ], [ %6323, %6225 ], [ 0.000000e+00, %6324 ], [ 0.000000e+00, %6195 ], [ %6220, %6219 ]
  %6332 = fsub fast float %6329, %5781
  %6333 = fsub fast float %6330, %5782
  %6334 = fsub fast float %6331, %5783
  %6335 = fmul fast float %6332, 5.000000e-01
  %6336 = fmul fast float %6333, 5.000000e-01
  %6337 = fmul fast float %6334, 5.000000e-01
  %6338 = fadd fast float %6335, %5781
  %6339 = fadd fast float %6336, %5782
  %6340 = fadd fast float %6337, %5783
  br label %6367

; <label>:6341                                    ; preds = %6096
  %6342 = icmp eq i32 %5762, 41
  br i1 %6342, label %6343, label %6362

; <label>:6343                                    ; preds = %6341
  %6344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %6345 = extractvalue %dx.types.CBufRet.i32 %6344, 0
  %6346 = icmp eq i32 %6345, 4
  %6347 = and i1 %147, %6346
  %6348 = icmp eq i32 %6345, 5
  %6349 = icmp ne i32 %226, 0
  %6350 = and i1 %6349, %6348
  %6351 = or i1 %6350, %6347
  %6352 = icmp eq i32 %6345, 13
  %6353 = icmp ne i32 %227, 0
  %6354 = and i1 %6353, %6352
  %6355 = or i1 %6354, %6351
  %6356 = icmp eq i32 %6345, 14
  %6357 = and i1 %254, %6356
  %6358 = or i1 %6357, %6355
  %6359 = select i1 %6358, float 5.000000e-01, float %5781
  %6360 = select i1 %6358, float 0x3FB99999A0000000, float %5782
  %6361 = select i1 %6358, float 0x3FB99999A0000000, float %5783
  br label %6367

; <label>:6362                                    ; preds = %6341
  %6363 = icmp eq i32 %5762, 45
  %6364 = select i1 %6363, float 0.000000e+00, float %5781
  %6365 = select i1 %6363, float 0.000000e+00, float %5782
  %6366 = select i1 %6363, float 0.000000e+00, float %5783
  br label %6367

; <label>:6367                                    ; preds = %6362, %6343, %6328, %6088, %6081, %6075, %6059, %6057, %6055, %6053, %6050, %5988, %5946, %5891, %5886, %5872, %5830, %5823, %5821, %5819, %5817, %5815, %5810, %5808, %5803, %5801, %5796, %5789, %5787, %5785, %5780
  %6368 = phi float [ %5781, %5789 ], [ %5888, %5886 ], [ %5941, %5891 ], [ %6047, %5988 ], [ %5781, %6055 ], [ %6078, %6075 ], [ %6093, %6088 ], [ %5781, %6081 ], [ %6338, %6328 ], [ %6359, %6343 ], [ %5781, %5780 ], [ 0.000000e+00, %5796 ], [ 5.000000e-01, %5801 ], [ 0.000000e+00, %5803 ], [ 0.000000e+00, %5810 ], [ 0.000000e+00, %5817 ], [ 0.000000e+00, %5819 ], [ 5.000000e-01, %5821 ], [ 0.000000e+00, %5823 ], [ 1.000000e+00, %5872 ], [ 0.000000e+00, %5830 ], [ 0.000000e+00, %5946 ], [ 0.000000e+00, %6050 ], [ 0.000000e+00, %6053 ], [ 2.500000e-01, %6057 ], [ 1.000000e+00, %5785 ], [ 0.000000e+00, %5787 ], [ %144, %5808 ], [ %251, %5815 ], [ 5.000000e-01, %6059 ], [ %6364, %6362 ]
  %6369 = phi float [ %5782, %5789 ], [ %5889, %5886 ], [ %5942, %5891 ], [ %6048, %5988 ], [ %5782, %6055 ], [ %6079, %6075 ], [ %6094, %6088 ], [ %5782, %6081 ], [ %6339, %6328 ], [ %6360, %6343 ], [ %5782, %5780 ], [ 0.000000e+00, %5796 ], [ 5.000000e-01, %5801 ], [ 0.000000e+00, %5803 ], [ 0.000000e+00, %5810 ], [ 1.000000e+00, %5817 ], [ 0.000000e+00, %5819 ], [ 5.000000e-01, %5821 ], [ 0.000000e+00, %5823 ], [ 0.000000e+00, %5872 ], [ 1.000000e+00, %5830 ], [ 1.000000e+00, %5946 ], [ 0.000000e+00, %6050 ], [ 0.000000e+00, %6053 ], [ 2.500000e-01, %6057 ], [ 0.000000e+00, %5785 ], [ 0.000000e+00, %5787 ], [ %144, %5808 ], [ %251, %5815 ], [ 0.000000e+00, %6059 ], [ %6365, %6362 ]
  %6370 = phi float [ %5783, %5789 ], [ %5890, %5886 ], [ %5943, %5891 ], [ %6049, %5988 ], [ %5783, %6055 ], [ %6080, %6075 ], [ %6095, %6088 ], [ %5783, %6081 ], [ %6340, %6328 ], [ %6361, %6343 ], [ %5783, %5780 ], [ 0.000000e+00, %5796 ], [ 0.000000e+00, %5801 ], [ 0.000000e+00, %5803 ], [ 0.000000e+00, %5810 ], [ 1.000000e+00, %5817 ], [ 0.000000e+00, %5819 ], [ 5.000000e-01, %5821 ], [ 0.000000e+00, %5823 ], [ 1.000000e+00, %5872 ], [ 1.000000e+00, %5830 ], [ 1.000000e+00, %5946 ], [ 0.000000e+00, %6050 ], [ 1.000000e+00, %6053 ], [ 2.500000e-01, %6057 ], [ 0.000000e+00, %5785 ], [ 0.000000e+00, %5787 ], [ %144, %5808 ], [ %251, %5815 ], [ 0.000000e+00, %6059 ], [ %6366, %6362 ]
  %6371 = fadd fast float %289, 0x3FE3C6EF40000000
  %6372 = call float @dx.op.unary.f32(i32 22, float %6371)  ; Frc(value)
  %6373 = call float @dx.op.unary.f32(i32 23, float %6368)  ; Log(value)
  %6374 = fadd fast float %6373, -7.000000e+00
  %6375 = call float @dx.op.unary.f32(i32 21, float %6374)  ; Exp(value)
  %6376 = fmul fast float %6372, 2.000000e+00
  %6377 = fadd fast float %6376, -1.000000e+00
  %6378 = fmul fast float %6375, %6377
  %6379 = fcmp fast ogt float %6368, 0.000000e+00
  %6380 = select i1 %6379, float %6378, float 0.000000e+00
  %6381 = fadd fast float %6380, %6368
  %6382 = fadd fast float %289, 0x3FF3C6EF40000000
  %6383 = call float @dx.op.unary.f32(i32 22, float %6382)  ; Frc(value)
  %6384 = call float @dx.op.unary.f32(i32 23, float %6369)  ; Log(value)
  %6385 = fadd fast float %6384, -7.000000e+00
  %6386 = call float @dx.op.unary.f32(i32 21, float %6385)  ; Exp(value)
  %6387 = fmul fast float %6383, 2.000000e+00
  %6388 = fadd fast float %6387, -1.000000e+00
  %6389 = fmul fast float %6386, %6388
  %6390 = fcmp fast ogt float %6369, 0.000000e+00
  %6391 = select i1 %6390, float %6389, float 0.000000e+00
  %6392 = fadd fast float %6391, %6369
  %6393 = fadd fast float %289, 0x3FFDAA66E0000000
  %6394 = call float @dx.op.unary.f32(i32 22, float %6393)  ; Frc(value)
  %6395 = call float @dx.op.unary.f32(i32 23, float %6370)  ; Log(value)
  %6396 = fadd fast float %6395, -6.000000e+00
  %6397 = call float @dx.op.unary.f32(i32 21, float %6396)  ; Exp(value)
  %6398 = fmul fast float %6394, 2.000000e+00
  %6399 = fadd fast float %6398, -1.000000e+00
  %6400 = fmul fast float %6397, %6399
  %6401 = fcmp fast ogt float %6370, 0.000000e+00
  %6402 = select i1 %6401, float %6400, float 0.000000e+00
  %6403 = fadd fast float %6402, %6370
  %6404 = call float @dx.op.binary.f32(i32 36, float %6381, float 3.225500e+04)  ; FMin(a,b)
  %6405 = call float @dx.op.binary.f32(i32 36, float %6392, float 3.225500e+04)  ; FMin(a,b)
  %6406 = call float @dx.op.binary.f32(i32 36, float %6403, float 3.225500e+04)  ; FMin(a,b)
  %6407 = call float @dx.op.binary.f32(i32 36, float %5738, float 3.225500e+04)  ; FMin(a,b)
  %6408 = call float @dx.op.binary.f32(i32 36, float %5739, float 3.225500e+04)  ; FMin(a,b)
  %6409 = call float @dx.op.binary.f32(i32 36, float %5740, float 3.225500e+04)  ; FMin(a,b)
  %6410 = fmul fast float %6404, %5741
  %6411 = fmul fast float %6405, %5742
  %6412 = fmul fast float %6406, %5743
  %6413 = fadd fast float %6407, %6410
  %6414 = fadd fast float %6408, %6411
  %6415 = fadd fast float %6409, %6412
  %6416 = select i1 %5766, float 0.000000e+00, float %6404
  %6417 = select i1 %5766, float 0.000000e+00, float %6405
  %6418 = select i1 %5766, float 0.000000e+00, float %6406
  %6419 = select i1 %5766, float %6404, float %6413
  %6420 = or i1 %5766, %487
  %6421 = select i1 %6420, float %6405, float %6414
  %6422 = or i1 %5766, %487
  %6423 = select i1 %6422, float %6406, float %6415
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %412, i32 %418, i32 undef, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6419)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6421)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6423)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 0, float %6416)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 1, float %6417)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 2, float %6418)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 1, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:6424                                    ; preds = %4895
  %6425 = fcmp fast olt float %447, %4878
  br i1 %6425, label %4881, label %6426

; <label>:6426                                    ; preds = %6424
  %6427 = fcmp fast olt float %447, %4879
  br i1 %6427, label %4881, label %5084

; <label>:6428                                    ; preds = %4975
  %6429 = fcmp fast olt float %49, 5.120000e+02
  br i1 %6429, label %4961, label %6430

; <label>:6430                                    ; preds = %6428
  %6431 = fcmp fast olt float %49, 1.024000e+03
  br i1 %6431, label %4961, label %6432

; <label>:6432                                    ; preds = %6430
  %6433 = fcmp fast olt float %49, 1.536000e+03
  br i1 %6433, label %4961, label %6434

; <label>:6434                                    ; preds = %6432
  %6435 = fcmp fast olt float %49, 2.048000e+03
  br i1 %6435, label %4961, label %6436

; <label>:6436                                    ; preds = %6434
  %6437 = fcmp fast olt float %49, 3.072000e+03
  br i1 %6437, label %4961, label %6438

; <label>:6438                                    ; preds = %6436
  %6439 = fcmp fast olt float %49, 4.096000e+03
  br i1 %6439, label %4961, label %6440

; <label>:6440                                    ; preds = %6438
  %6441 = fcmp fast olt float %49, 6.144000e+03
  br i1 %6441, label %4961, label %6442

; <label>:6442                                    ; preds = %6440
  %6443 = fcmp fast olt float %49, 8.192000e+03
  br i1 %6443, label %4961, label %5084

; <label>:6444                                    ; preds = %5007
  %6445 = fcmp fast olt float %4735, %4990
  br i1 %6445, label %4993, label %6446

; <label>:6446                                    ; preds = %6444
  %6447 = fcmp fast olt float %4735, %4991
  br i1 %6447, label %4993, label %5084
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

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
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !39, !43, !48}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !19}
!19 = !{i32 0, i32 5}
!20 = !{i32 12, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!29 = !{i32 21, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!33 = !{i32 25, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!34 = !{i32 26, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!39 = !{!40, !41}
!40 = !{i32 0, %"class.RWTexture2D<vector<float, 2> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!41 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !42}
!42 = !{i32 1, i32 1144}
!43 = !{!44, !45, !46, !47}
!44 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!45 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!47 = !{i32 3, %perPrim* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!48 = !{!49, !50, !51, !52}
!49 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!50 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!51 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!52 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{[17 x i32] [i32 15, i32 8, i32 119, i32 119, i32 0, i32 119, i32 119, i32 119, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, i32 17, i32 34, i32 68]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !69}
!55 = !{!56, !65, null}
!56 = !{!57, !60, !62, !63, !64}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 15}
!60 = !{i32 1, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 1, i8 0, !61}
!61 = !{i32 3, i32 7}
!62 = !{i32 2, !"DEBUG_VALUE", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, null}
!63 = !{i32 3, !"WIREFRAME_COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !61}
!64 = !{i32 4, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!65 = !{!66, !67}
!66 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !59}
!67 = !{i32 1, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 1, i8 0, !59}
!68 = !{i32 1}
!69 = !{i32 0, i64 24}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 1}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}

