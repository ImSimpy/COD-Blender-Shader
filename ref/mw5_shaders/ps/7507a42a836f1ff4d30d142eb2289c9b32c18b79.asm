;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; DEBUG_VALUE              0   xyzw        1     NONE   float       
; WIREFRAME_COLOR          0   xyz         2     NONE   float   xyz 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 87230957299a66203a31775c302c3188
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
; DEBUG_VALUE              0                 linear       
; WIREFRAME_COLOR          0                 linear       
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
;                                   sampler      NA          NA      S1             s0     1
;                                   sampler      NA          NA      S2             s1     1
;                                   sampler      NA          NA      S3             s2     1
;                                   sampler      NA          NA      S4             s3     1
;                                   sampler      NA          NA      S5             s4     1
;                                   sampler      NA          NA      S6             s5     1
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
;                                   texture    byte         r/o     T12             t3     1
;                                   texture    byte         r/o     T13             t4     1
;                                   texture    byte         r/o     T14             t5     1
;                                   texture     f32          2d     T15             t2     1
;                                   texture     f32     2darray     T16     t16,space2     1
;                                   texture     f32          3d     T17     t15,space2     1
;                                   texture     f32          2d     T18     t13,space2     1
;                                   texture     u32          2d     T19     t17,space2     1
;                                   texture     f32          3d     T20     t18,space2     1
;                                   texture    byte         r/o     T21      t3,space1     1
;                                   texture    byte         r/o     T22      t4,space1     1
;                                   texture    byte         r/o     T23      t5,space1     1
;                                   texture    byte         r/o     T24      t6,space1     1
;                                   texture     f32          2d     T25     t37,space2     1
;                                   texture     f32          2d     T26             t6     1
;                                   texture     f32          2d     T27             t7     1
;                                   texture     f32          2d     T28     t50,space2     1
;                                   texture     f32          2d     T29             t9     1
;                                   texture     f32     2darray     T30     t35,space2     1
;                                   texture     f32          2d     T31     t34,space2     1
;                                   texture     f32          3d     T32     t31,space2     1
;                                   texture    byte         r/o     T33     t10,space1     1
;                                   texture    byte         r/o     T34      t1,space1     1
;                                   texture     f32          1d     T35     t32,space2     1
;                                   texture     f32          3d     T36     t82,space2     1
;                                   texture     f32          1d     T37     t30,space2     1
;                                   texture     f32          3d     T38     t44,space2     1
;                                   texture     f32          3d     T39     t45,space2     1
;                                   texture     f32     2darray     T40     t47,space2     1
;                                   texture     f32     2darray     T41      t8,space2     1
;                                   texture     f32          2d     T42      t2,space2     1
;                                   texture     f32          2d     T43      t3,space2     1
;                                   texture     f32          2d     T44      t4,space2     1
;                                   textureunorm_f32     2darray     T45     t80,space2     1
;                                   texture    byte         r/o     T46     t67,space1     1
;                                   texture     f32          2d     T47      t7,space2     1
;                                   texture     f32          2d     T48      t6,space2     1
;                                   texture     f32          2d     T49      t5,space2     1
;                                   texture     f32          2d     T50     t38,space2     1
;                                   texture    byte         r/o     T51     t12,space1     1
;                                   texture    byte         r/o     T52     t13,space1     1
;                                   texture     f32          2d     T53     t83,space2     1
;                                   texture     f32          2d     T54     t86,space2     1
;                                   texture    byte         r/o     T55     t16,space1     1
;                                   texture    byte         r/o     T56     t17,space1     1
;                                   texture     u32          2d     T57            t10     1
;                                   texture     f32          2d     T58             t8     1
;                                   texture     f32     2darray     T59            t11     1
;                                       UAV  struct         r/w      U0             u0     1
;
;
; ViewId state:
;
; Number of inputs: 11, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 8 }
;   output 1 depends on inputs: { 0, 1, 9 }
;   output 2 depends on inputs: { 0, 1, 10 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
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
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
%struct.SamplerComparisonState = type { i32 }

@PCF_OFFSETS_8.v.1dim = internal constant [16 x float] [float 0xBFE6A09020000000, float 0x3FE6A09020000000, float 0.000000e+00, float -8.750000e-01, float 0x3FE0F837C0000000, float 0x3FE0F837C0000000, float -6.250000e-01, float 0.000000e+00, float 0x3FD6A161E0000000, float 0xBFD6A161E0000000, float 0.000000e+00, float 3.750000e-01, float 0xBFC6A161E0000000, float 0xBFC6A161E0000000, float 1.250000e-01, float 0.000000e+00], align 4
@MSM_VOGEL_DISK.v.1dim = internal constant [32 x float] [float 0xBFD19D7780000000, float 0xBFA8ED4440000000, float 0xBFC0AF4F00000000, float 0x3FBE91B820000000, float 0x3FD088BDA0000000, float 0xBFC5090F80000000, float 0xBFB07314C0000000, float 0xBFDFBC1260000000, float 0xBFC4DBB5A0000000, float 0xBFD414A4E0000000, float 0xBFB5FAA700000000, float 0x3FD470B8C0000000, float 0x3FC3785720000000, float 0x3FC9652BE0000000, float 0x3FD68B32C0000000, float 0x3FC0773E20000000, float 0xBFD8F4E020000000, float 0xBFCCECF200000000, float 1.250000e-01, float 0.000000e+00, float 0x3FC0968940000000, float 0x3FDA714BA0000000, float 0xBFD76262C0000000, float 0x3FC34E3360000000, float 0x3FDD3C2DA0000000, float 0xBFB9B584C0000000, float 0xBFD1D1D8A0000000, float 0x3FD958C4C0000000, float 0x3F9361EA00000000, float 0xBFCB9B4DC0000000, float 0x3FC67DE500000000, float 0xBFD80828C0000000], align 4
@MSM_VOGEL_DISK_ROTATIONS.v.1dim = internal constant [128 x float] [float 1.000000e+00, float -0.000000e+00, float 0xBFE79886E0000000, float 0xBFE59D9D40000000, float 0x3FB6618480000000, float 0x3FEFE0A200000000, float 0x3FE3785520000000, float 0xBFE9652DE0000000, float 0xBFEF82C6E0000000, float 0x3FC64B9880000000, float 0x3FEB000A80000000, float 0x3FE12CE040000000, float 0xBFD09D5A20000000, float 0xBFEEE72320000000, float 0xBFDD7F8440000000, float 0x3FEC65F960000000, float 0x3FEE0EED00000000, float 0xBFD5F455A0000000, float 0xBFED943C00000000, float 0xBFD86B6E00000000, float 0x3FDB2046C0000000, float 0x3FECFBC800000000, float 0x3FD3277C40000000, float 0xBFEE888300000000, float 0xBFEBAFD120000000, float 0x3FE00B86C0000000, float 0x3FEF40EE00000000, float 0x3FCB7BFA40000000, float 0xBFE26772E0000000, float 0xBFEA2D9280000000, float 0xBFC07314C0000000, float 0x3FEFBC1260000000, float 0x3FE8780340000000, float 0xBFE49F4D40000000, float 0xBFEFF90100000000, float 0xBFA527CDA0000000, float 0x3FE6AEB800000000, float 0x3FE6927B20000000, float 0xBFA7A63080000000, float 0xBFEFF74260000000, float 0xBFE480B460000000, float 0x3FE891ADA0000000, float 0x3FEFB6D860000000, float 0xBFC11172E0000000, float 0xBFEA4475E0000000, float 0xBFE246B8C0000000, float 0x3FCC17E340000000, float 0x3FEF384120000000, float 0x3FDFD1D8A0000000, float 0xBFEBC3C180000000, float 0xBFEE7C7600000000, float 0x3FD373A360000000, float 0x3FED0C9DA0000000, float 0x3FDAD7DC00000000, float 0xBFD8B530C0000000, float 0xBFED84E840000000, float 0xBFD5A93F20000000, float 0x3FEE1C8860000000, float 0x3FEC537C20000000, float 0xBFDDC64BA0000000, float 0xBFEEF16900000000, float 0xBFD0502AC0000000, float 0x3FE14E8540000000, float 0x3FEAEA8540000000, float 0x3FC5AE3600000000, float 0xBFEF89A240000000, float 0xBFE94CCCC0000000, float 0x3FE397F840000000, float 0x3FEFE40640000000, float 0x3FB5232EE0000000, float 0xBFE5BAFFC0000000, float 0xBFE77D7A20000000, float 0x3F73F7DF00000000, float 0x3FEFFFE6E0000000, float 0x3FE5801B40000000, float 0xBFE7B36DE0000000, float 0xBFEFDD0B80000000, float 0x3FB79FB8A0000000, float 0x3FE97D6520000000, float 0x3FE3589480000000, float 0xBFC6E8D100000000, float 0xBFEF7BB940000000, float 0xBFE10B2200000000, float 0x3FEB1565C0000000, float 0x3FEEDCAD20000000, float 0xBFD0EA7040000000, float 0xBFEC784CA0000000, float 0xBFDD388A80000000, float 0x3FD63F4AA0000000, float 0x3FEE012160000000, float 0x3FD8218580000000, float 0xBFEDA361A0000000, float 0xBFECEAC420000000, float 0x3FDB688BE0000000, float 0x3FEE945FA0000000, float 0x3FD2DB37C0000000, float 0xBFE02E07E0000000, float 0xBFEB9BB4A0000000, float 0xBFCADFDF00000000, float 0x3FEF4968A0000000, float 0x3FEA168720000000, float 0xBFE28811C0000000, float 0xBFEFC11C20000000, float 0xBFBFA93B00000000, float 0x3FE4BDC6A0000000, float 0x3FE85E3320000000, float 0x3FA2A94CA0000000, float 0xBFEFFA8F80000000, float 0xBFE6761AA0000000, float 0x3FE6CAD360000000, float 0x3FEFF55160000000, float 0xBFAA246B20000000, float 0xBFE8AB3020000000, float 0xBFE461FA00000000, float 0x3FC1AFB7E0000000, float 0x3FEFB16C20000000, float 0x3FE225E360000000, float 0xBFEA5B3180000000, float 0xBFEF2F6620000000, float 0x3FCCB3AAC0000000, float 0x3FEBD78600000000, float 0x3FDF8C71A0000000, float 0xBFD3BFAD20000000, float 0xBFEE703B00000000, float 0xBFDA8F4300000000, float 0x3FED1D4740000000, float 0x3FED756640000000, float 0xBFD8FEC9A0000000], align 4
@"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim" = internal constant [8 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00], align 4
@"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [33 x float] [float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FD9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0x3FE9168720000000, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0x3FE9168720000000, float 1.000000e+00, float 0.000000e+00, float 0x3FD9168720000000, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4
@"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim" = internal constant [15 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00], align 4

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 59, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = alloca [4 x i32], align 4
  %70 = alloca [4 x i32], align 4
  %71 = alloca [4 x i32], align 4
  %72 = alloca [4 x i32], align 4
  %73 = alloca [4 x i32], align 4
  %74 = alloca [4 x i32], align 4
  %75 = alloca [4 x float], align 4
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef), !dx.precise !99  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef), !dx.precise !99  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = alloca [12 x float], align 4
  %82 = alloca [12 x float], align 4
  %83 = alloca [3 x float], align 4
  %84 = alloca [3 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [4 x float], align 4
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = fmul float %79, %90
  %92 = fmul float %80, %90
  %93 = fptosi float %91 to i32
  %94 = fptosi float %92 to i32
  %95 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %4, i32 0, i32 %93, i32 %94, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = and i32 %96, 8191
  %98 = lshr i32 %96, 13
  %99 = and i32 %98, 511
  %100 = lshr i32 %96, 22
  %101 = and i32 %100, 3
  %102 = and i32 %96, 16777216
  %103 = icmp ne i32 %102, 0
  %104 = and i32 %96, 33554432
  %105 = icmp ne i32 %104, 0
  %106 = lshr i32 %96, 26
  %107 = uitofp i32 %106 to float
  %108 = fmul fast float %107, 0x3FA8618620000000
  %109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.i32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.i32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.i32 %109, 2
  %113 = extractvalue %dx.types.CBufRet.i32 %109, 3
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 0
  store i32 %110, i32* %114, align 4
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 2
  store i32 %112, i32* %116, align 4
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 3
  store i32 %113, i32* %117, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %70, i32 0, i32 %101
  %119 = load i32, i32* %118, align 4, !tbaa !100, !noalias !104
  %120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.i32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.i32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.i32 %120, 2
  %124 = extractvalue %dx.types.CBufRet.i32 %120, 3
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 2
  store i32 %123, i32* %127, align 4
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 3
  store i32 %124, i32* %128, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 %101
  %130 = load i32, i32* %129, align 4, !tbaa !100, !noalias !104
  %131 = sub i32 %97, %119
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 196)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 0
  %134 = extractvalue %dx.types.CBufRet.i32 %132, 1
  %135 = extractvalue %dx.types.CBufRet.i32 %132, 2
  %136 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 1
  store i32 %134, i32* %138, align 4
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 2
  store i32 %135, i32* %139, align 4
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 3
  store i32 %136, i32* %140, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 %101
  %142 = load i32, i32* %141, align 4, !tbaa !100, !noalias !104
  %143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %142, i32 %131, i32 %130)  ; UMad(a,b,c)
  %144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 193)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.i32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.i32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.i32 %144, 2
  %148 = extractvalue %dx.types.CBufRet.i32 %144, 3
  %149 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 0
  store i32 %145, i32* %149, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 2
  store i32 %147, i32* %151, align 4
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 3
  store i32 %148, i32* %152, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 %101
  %154 = load i32, i32* %153, align 4, !tbaa !100, !noalias !104
  %155 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 195)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.i32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.i32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.i32 %155, 2
  %159 = extractvalue %dx.types.CBufRet.i32 %155, 3
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 0
  store i32 %156, i32* %160, align 4
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 1
  store i32 %157, i32* %161, align 4
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 2
  store i32 %158, i32* %162, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 3
  store i32 %159, i32* %163, align 4
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 %101
  %165 = load i32, i32* %164, align 4, !tbaa !100, !noalias !104
  %166 = lshr i32 %99, 1
  %167 = and i32 %165, 31
  %168 = lshr i32 %166, %167
  %169 = shl i32 %168, %167
  %170 = and i32 %98, 1
  %171 = add i32 %143, %166
  %172 = sub i32 %171, %169
  %173 = call i32 @dx.op.tertiary.i32(i32 49, i32 %168, i32 %154, i32 %172)  ; UMad(a,b,c)
  %174 = add i32 %173, %154
  %175 = add i32 %154, 1
  %176 = add i32 %175, %173
  %177 = add i32 %173, 1
  %178 = icmp ne i32 %170, 0
  %179 = select i1 %178, i32 %176, i32 %174
  %180 = select i1 %178, i32 %177, i32 %176
  %181 = mul i32 %173, 20
  %182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %181, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = extractvalue %dx.types.ResRet.f32 %182, 1
  %185 = extractvalue %dx.types.ResRet.f32 %182, 2
  %186 = add i32 %181, 12
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = add i32 %181, 16
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = mul i32 %179, 20
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = add i32 %192, 12
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = add i32 %192, 16
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = mul i32 %180, 20
  %204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = extractvalue %dx.types.ResRet.f32 %204, 1
  %207 = extractvalue %dx.types.ResRet.f32 %204, 2
  %208 = add i32 %203, 12
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = add i32 %203, 16
  %212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.i32 %212, 0
  %214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.f32 %214, 0
  %216 = extractvalue %dx.types.CBufRet.f32 %214, 1
  %217 = extractvalue %dx.types.CBufRet.f32 %214, 2
  %218 = extractvalue %dx.types.CBufRet.f32 %214, 3
  %219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %220 = extractvalue %dx.types.CBufRet.f32 %219, 0
  %221 = extractvalue %dx.types.CBufRet.f32 %219, 1
  %222 = extractvalue %dx.types.CBufRet.f32 %219, 2
  %223 = extractvalue %dx.types.CBufRet.f32 %219, 3
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 0
  %226 = extractvalue %dx.types.CBufRet.f32 %224, 1
  %227 = extractvalue %dx.types.CBufRet.f32 %224, 2
  %228 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %244 = select i1 %105, float %215, float %230
  %245 = select i1 %105, float %220, float %235
  %246 = select i1 %105, float %225, float %240
  %247 = select i1 %105, float %216, float %231
  %248 = select i1 %105, float %221, float %236
  %249 = select i1 %105, float %226, float %241
  %250 = select i1 %105, float %217, float %232
  %251 = select i1 %105, float %222, float %237
  %252 = select i1 %105, float %227, float %242
  %253 = select i1 %105, float %218, float %233
  %254 = select i1 %105, float %223, float %238
  %255 = select i1 %105, float %228, float %243
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 2
  %260 = fadd float %183, %257
  %261 = fadd float %184, %258
  %262 = fadd float %185, %259
  %263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %264 = extractvalue %dx.types.CBufRet.f32 %263, 0
  %265 = extractvalue %dx.types.CBufRet.f32 %263, 1
  %266 = extractvalue %dx.types.CBufRet.f32 %263, 2
  %267 = fsub float %260, %264
  %268 = fsub float %261, %265
  %269 = fsub float %262, %266
  %270 = fmul float %244, %267
  %271 = call float @dx.op.tertiary.f32(i32 46, float %268, float %247, float %270), !dx.precise !99  ; FMad(a,b,c)
  %272 = call float @dx.op.tertiary.f32(i32 46, float %269, float %250, float %271), !dx.precise !99  ; FMad(a,b,c)
  %273 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %253, float %272), !dx.precise !99  ; FMad(a,b,c)
  %274 = fmul float %245, %267
  %275 = call float @dx.op.tertiary.f32(i32 46, float %268, float %248, float %274), !dx.precise !99  ; FMad(a,b,c)
  %276 = call float @dx.op.tertiary.f32(i32 46, float %269, float %251, float %275), !dx.precise !99  ; FMad(a,b,c)
  %277 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %254, float %276), !dx.precise !99  ; FMad(a,b,c)
  %278 = fmul float %246, %267
  %279 = call float @dx.op.tertiary.f32(i32 46, float %268, float %249, float %278), !dx.precise !99  ; FMad(a,b,c)
  %280 = call float @dx.op.tertiary.f32(i32 46, float %269, float %252, float %279), !dx.precise !99  ; FMad(a,b,c)
  %281 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %255, float %280), !dx.precise !99  ; FMad(a,b,c)
  %282 = lshr i32 %191, 8
  %283 = and i32 %191, 255
  %284 = and i32 %282, 255
  %285 = uitofp i32 %283 to float
  %286 = uitofp i32 %284 to float
  %287 = fmul fast float %285, 0x3F80101020000000
  %288 = fmul fast float %286, 0x3F80101020000000
  %289 = fadd fast float %287, -1.000000e+00
  %290 = fadd fast float %288, -1.000000e+00
  %291 = call float @dx.op.unary.f32(i32 6, float %289)  ; FAbs(value)
  %292 = fsub fast float 1.000000e+00, %291
  %293 = call float @dx.op.unary.f32(i32 6, float %290)  ; FAbs(value)
  %294 = fsub fast float %292, %293
  %295 = fsub fast float -0.000000e+00, %294
  %296 = call float @dx.op.binary.f32(i32 35, float %295, float 0.000000e+00)  ; FMax(a,b)
  %297 = fcmp fast ogt float %289, 0.000000e+00
  %298 = fsub fast float -0.000000e+00, %296
  %299 = select i1 %297, float %298, float %296
  %300 = fadd fast float %299, %289
  %301 = fcmp fast ogt float %290, 0.000000e+00
  %302 = select i1 %301, float %298, float %296
  %303 = fadd fast float %302, %290
  %304 = and i32 %188, 65535
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3EF0001000000000
  %307 = lshr i32 %188, 16
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3EF0001000000000
  %310 = lshr i32 %191, 16
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = fadd float %194, %257
  %315 = fadd float %195, %258
  %316 = fadd float %196, %259
  %317 = fsub float %314, %264
  %318 = fsub float %315, %265
  %319 = fsub float %316, %266
  %320 = fmul float %244, %317
  %321 = call float @dx.op.tertiary.f32(i32 46, float %318, float %247, float %320), !dx.precise !99  ; FMad(a,b,c)
  %322 = call float @dx.op.tertiary.f32(i32 46, float %319, float %250, float %321), !dx.precise !99  ; FMad(a,b,c)
  %323 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %253, float %322), !dx.precise !99  ; FMad(a,b,c)
  %324 = fmul float %245, %317
  %325 = call float @dx.op.tertiary.f32(i32 46, float %318, float %248, float %324), !dx.precise !99  ; FMad(a,b,c)
  %326 = call float @dx.op.tertiary.f32(i32 46, float %319, float %251, float %325), !dx.precise !99  ; FMad(a,b,c)
  %327 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %254, float %326), !dx.precise !99  ; FMad(a,b,c)
  %328 = fmul float %246, %317
  %329 = call float @dx.op.tertiary.f32(i32 46, float %318, float %249, float %328), !dx.precise !99  ; FMad(a,b,c)
  %330 = call float @dx.op.tertiary.f32(i32 46, float %319, float %252, float %329), !dx.precise !99  ; FMad(a,b,c)
  %331 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %255, float %330), !dx.precise !99  ; FMad(a,b,c)
  %332 = lshr i32 %202, 8
  %333 = and i32 %202, 255
  %334 = and i32 %332, 255
  %335 = uitofp i32 %333 to float
  %336 = uitofp i32 %334 to float
  %337 = fmul fast float %335, 0x3F80101020000000
  %338 = fmul fast float %336, 0x3F80101020000000
  %339 = fadd fast float %337, -1.000000e+00
  %340 = fadd fast float %338, -1.000000e+00
  %341 = call float @dx.op.unary.f32(i32 6, float %339)  ; FAbs(value)
  %342 = fsub fast float 1.000000e+00, %341
  %343 = call float @dx.op.unary.f32(i32 6, float %340)  ; FAbs(value)
  %344 = fsub fast float %342, %343
  %345 = fsub fast float -0.000000e+00, %344
  %346 = call float @dx.op.binary.f32(i32 35, float %345, float 0.000000e+00)  ; FMax(a,b)
  %347 = fcmp fast ogt float %339, 0.000000e+00
  %348 = fsub fast float -0.000000e+00, %346
  %349 = select i1 %347, float %348, float %346
  %350 = fadd fast float %349, %339
  %351 = fcmp fast ogt float %340, 0.000000e+00
  %352 = select i1 %351, float %348, float %346
  %353 = fadd fast float %352, %340
  %354 = and i32 %199, 65535
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3EF0001000000000
  %357 = lshr i32 %199, 16
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3EF0001000000000
  %360 = lshr i32 %202, 16
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = fadd float %205, %257
  %365 = fadd float %206, %258
  %366 = fadd float %207, %259
  %367 = fsub float %364, %264
  %368 = fsub float %365, %265
  %369 = fsub float %366, %266
  %370 = fmul float %244, %367
  %371 = call float @dx.op.tertiary.f32(i32 46, float %368, float %247, float %370), !dx.precise !99  ; FMad(a,b,c)
  %372 = call float @dx.op.tertiary.f32(i32 46, float %369, float %250, float %371), !dx.precise !99  ; FMad(a,b,c)
  %373 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %253, float %372), !dx.precise !99  ; FMad(a,b,c)
  %374 = fmul float %245, %367
  %375 = call float @dx.op.tertiary.f32(i32 46, float %368, float %248, float %374), !dx.precise !99  ; FMad(a,b,c)
  %376 = call float @dx.op.tertiary.f32(i32 46, float %369, float %251, float %375), !dx.precise !99  ; FMad(a,b,c)
  %377 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %254, float %376), !dx.precise !99  ; FMad(a,b,c)
  %378 = fmul float %246, %367
  %379 = call float @dx.op.tertiary.f32(i32 46, float %368, float %249, float %378), !dx.precise !99  ; FMad(a,b,c)
  %380 = call float @dx.op.tertiary.f32(i32 46, float %369, float %252, float %379), !dx.precise !99  ; FMad(a,b,c)
  %381 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %255, float %380), !dx.precise !99  ; FMad(a,b,c)
  %382 = lshr i32 %213, 8
  %383 = and i32 %213, 255
  %384 = and i32 %382, 255
  %385 = uitofp i32 %383 to float
  %386 = uitofp i32 %384 to float
  %387 = fmul fast float %385, 0x3F80101020000000
  %388 = fmul fast float %386, 0x3F80101020000000
  %389 = fadd fast float %387, -1.000000e+00
  %390 = fadd fast float %388, -1.000000e+00
  %391 = call float @dx.op.unary.f32(i32 6, float %389)  ; FAbs(value)
  %392 = fsub fast float 1.000000e+00, %391
  %393 = call float @dx.op.unary.f32(i32 6, float %390)  ; FAbs(value)
  %394 = fsub fast float %392, %393
  %395 = fsub fast float -0.000000e+00, %394
  %396 = call float @dx.op.binary.f32(i32 35, float %395, float 0.000000e+00)  ; FMax(a,b)
  %397 = fcmp fast ogt float %389, 0.000000e+00
  %398 = fsub fast float -0.000000e+00, %396
  %399 = select i1 %397, float %398, float %396
  %400 = fadd fast float %399, %389
  %401 = fcmp fast ogt float %390, 0.000000e+00
  %402 = select i1 %401, float %398, float %396
  %403 = fadd fast float %402, %390
  %404 = and i32 %210, 65535
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3EF0001000000000
  %407 = lshr i32 %210, 16
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3EF0001000000000
  %410 = lshr i32 %213, 16
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %415 = extractvalue %dx.types.CBufRet.f32 %414, 2
  %416 = extractvalue %dx.types.CBufRet.f32 %414, 3
  %417 = fmul fast float %91, 2.000000e+00
  %418 = fmul fast float %417, %415
  %419 = fadd fast float %418, -1.000000e+00
  %420 = fmul fast float %92, 2.000000e+00
  %421 = fmul fast float %420, %416
  %422 = fsub fast float 1.000000e+00, %421
  %423 = fmul fast float %90, 2.000000e+00
  %424 = fmul fast float %90, -2.000000e+00
  %425 = fmul fast float %423, %415
  %426 = fmul fast float %424, %416
  %427 = fdiv fast float 1.000000e+00, %281
  %428 = fdiv fast float 1.000000e+00, %331
  %429 = fdiv fast float 1.000000e+00, %381
  %430 = fmul fast float %427, %273
  %431 = fmul fast float %427, %277
  %432 = fmul fast float %428, %323
  %433 = fmul fast float %428, %327
  %434 = fmul fast float %429, %373
  %435 = fmul fast float %429, %377
  %436 = fsub fast float %434, %432
  %437 = fsub fast float %435, %433
  %438 = fsub fast float %430, %432
  %439 = fsub fast float %431, %433
  %440 = fmul fast float %436, %439
  %441 = fmul fast float %437, %438
  %442 = fsub fast float %440, %441
  %443 = fdiv fast float 1.000000e+00, %442
  %444 = fsub fast float %433, %435
  %445 = fsub fast float %435, %431
  %446 = fmul fast float %443, %427
  %447 = fmul fast float %446, %444
  %448 = fmul fast float %443, %428
  %449 = fmul fast float %448, %445
  %450 = fmul fast float %443, %429
  %451 = fmul fast float %450, %439
  %452 = fsub fast float %430, %434
  %453 = fsub fast float %432, %430
  %454 = fmul fast float %446, %436
  %455 = fmul fast float %448, %452
  %456 = fmul fast float %450, %453
  %457 = call float @dx.op.dot3.f32(i32 55, float %447, float %449, float %451, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %458 = call float @dx.op.dot3.f32(i32 55, float %454, float %455, float %456, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %459 = fsub fast float %419, %430
  %460 = fsub fast float %422, %431
  %461 = fmul fast float %457, %459
  %462 = fadd fast float %461, %427
  %463 = fmul fast float %458, %460
  %464 = fadd fast float %462, %463
  %465 = fdiv fast float 1.000000e+00, %464
  %466 = fmul fast float %447, %459
  %467 = fadd fast float %466, %427
  %468 = fmul fast float %454, %460
  %469 = fadd fast float %467, %468
  %470 = fmul fast float %469, %465
  %471 = fmul fast float %449, %459
  %472 = fmul fast float %455, %460
  %473 = fadd fast float %471, %472
  %474 = fmul fast float %473, %465
  %475 = fmul fast float %451, %459
  %476 = fmul fast float %456, %460
  %477 = fadd fast float %475, %476
  %478 = fmul fast float %477, %465
  %479 = fmul fast float %447, %425
  %480 = fmul fast float %449, %425
  %481 = fmul fast float %451, %425
  %482 = fmul fast float %454, %426
  %483 = fmul fast float %455, %426
  %484 = fmul fast float %456, %426
  %485 = fmul fast float %457, %425
  %486 = fmul fast float %458, %426
  %487 = fadd fast float %464, %485
  %488 = fdiv fast float 1.000000e+00, %487
  %489 = fadd fast float %464, %486
  %490 = fdiv fast float 1.000000e+00, %489
  %491 = fmul fast float %470, %464
  %492 = fmul fast float %474, %464
  %493 = fmul fast float %478, %464
  %494 = fadd fast float %491, %479
  %495 = fadd fast float %492, %480
  %496 = fadd fast float %493, %481
  %497 = fmul fast float %494, %488
  %498 = fmul fast float %495, %488
  %499 = fmul fast float %496, %488
  %500 = fsub fast float %497, %470
  %501 = fsub fast float %498, %474
  %502 = fsub fast float %499, %478
  %503 = fadd fast float %491, %482
  %504 = fadd fast float %492, %483
  %505 = fadd fast float %493, %484
  %506 = fmul fast float %503, %490
  %507 = fmul fast float %504, %490
  %508 = fmul fast float %505, %490
  %509 = fsub fast float %506, %470
  %510 = fsub fast float %507, %474
  %511 = fsub fast float %508, %478
  %512 = call float @dx.op.dot3.f32(i32 55, float %300, float %350, float %400, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.dot3.f32(i32 55, float %303, float %353, float %403, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %514 = call float @dx.op.dot3.f32(i32 55, float %294, float %344, float %394, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call float @dx.op.dot3.f32(i32 55, float %512, float %513, float %514, float %512, float %513, float %514)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.unary.f32(i32 25, float %515)  ; Rsqrt(value)
  %517 = call float @dx.op.dot3.f32(i32 55, float %306, float %356, float %406, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = call float @dx.op.dot3.f32(i32 55, float %309, float %359, float %409, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %519 = call float @dx.op.dot3.f32(i32 55, float %306, float %356, float %406, float %500, float %501, float %502)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = call float @dx.op.dot3.f32(i32 55, float %309, float %359, float %409, float %500, float %501, float %502)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.dot3.f32(i32 55, float %306, float %356, float %406, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = call float @dx.op.dot3.f32(i32 55, float %309, float %359, float %409, float %509, float %510, float %511)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.dot3.f32(i32 55, float %313, float %363, float %413, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = call float @dx.op.dot3.f32(i32 55, float %281, float %331, float %381, float %470, float %474, float %478)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = select i1 %103, float 1.000000e+00, float -1.000000e+00
  %526 = fmul fast float %512, %525
  %527 = fmul fast float %526, %516
  %528 = fmul fast float %513, %525
  %529 = fmul fast float %528, %516
  %530 = fmul fast float %514, %525
  %531 = fmul fast float %530, %516
  %532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.f32 %532, 2
  %534 = extractvalue %dx.types.CBufRet.f32 %532, 3
  %535 = fmul fast float %417, %533
  %536 = fmul fast float %420, %534
  %537 = fsub fast float 1.000000e+00, %535
  %538 = fsub fast float 1.000000e+00, %536
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %542 = extractvalue %dx.types.CBufRet.f32 %539, 2
  %543 = fmul fast float %537, %540
  %544 = fmul fast float %537, %541
  %545 = fmul fast float %537, %542
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %550 = fmul fast float %538, %547
  %551 = fmul fast float %538, %548
  %552 = fmul fast float %538, %549
  %553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %554 = extractvalue %dx.types.CBufRet.f32 %553, 0
  %555 = extractvalue %dx.types.CBufRet.f32 %553, 1
  %556 = extractvalue %dx.types.CBufRet.f32 %553, 2
  %557 = fadd fast float %550, %554
  %558 = fadd fast float %557, %543
  %559 = fadd fast float %551, %555
  %560 = fadd fast float %559, %544
  %561 = fadd fast float %552, %556
  %562 = fadd fast float %561, %545
  %563 = fmul fast float %558, %524
  %564 = fmul fast float %560, %524
  %565 = fmul fast float %562, %524
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 3
  %568 = fadd fast float %567, %108
  %569 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %570 = shl i32 %569, 16
  %571 = or i32 %570, %569
  %572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.f32 %572, 0
  %574 = extractvalue %dx.types.CBufRet.f32 %572, 1
  %575 = fadd fast float %573, %563
  %576 = fadd fast float %574, %564
  %577 = fmul fast float %575, 0x3F53C37960000000
  %578 = fmul fast float %576, 0x3F53C37960000000
  %579 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %579, float %577, float %578, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %583 = extractvalue %dx.types.CBufRet.f32 %582, 2
  %584 = fmul fast float %583, %581
  %585 = shl nuw nsw i32 %97, 3
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 16383
  %589 = shl nuw nsw i32 %97, 2
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = and i32 %591, 255
  %593 = shl nuw nsw i32 %592, 16
  %594 = or i32 %593, %588
  %595 = mul nuw nsw i32 %588, 148
  %596 = add nuw nsw i32 %595, 4
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = add nuw nsw i32 %595, 8
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = add nuw nsw i32 %595, 48
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = add nuw nsw i32 %595, 60
  %606 = add nuw nsw i32 %595, 92
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = add nuw nsw i32 %595, 96
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.i32 %609, 0
  %611 = add nuw nsw i32 %595, 100
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = add nuw nsw i32 %595, 104
  %615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %616 = extractvalue %dx.types.ResRet.i32 %615, 0
  %617 = add nuw nsw i32 %595, 108
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = add nuw nsw i32 %595, 116
  %621 = fsub fast float 1.000000e+00, %518
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 2
  %624 = fmul fast float %623, %517
  %625 = fmul fast float %623, %621
  %626 = fadd fast float %624, %598
  %627 = fadd fast float %625, %601
  %628 = call float @dx.op.unary.f32(i32 84, float %626)  ; DerivCoarseY(value)
  %629 = call float @dx.op.unary.f32(i32 84, float %627)  ; DerivCoarseY(value)
  %630 = call float @dx.op.unary.f32(i32 83, float %626)  ; DerivCoarseX(value)
  %631 = call float @dx.op.unary.f32(i32 83, float %627)  ; DerivCoarseX(value)
  %632 = call float @dx.op.dot2.f32(i32 54, float %628, float %629, float %628, float %629)  ; Dot2(ax,ay,bx,by)
  %633 = call float @dx.op.dot2.f32(i32 54, float %630, float %631, float %630, float %631)  ; Dot2(ax,ay,bx,by)
  %634 = call float @dx.op.binary.f32(i32 35, float %633, float %632)  ; FMax(a,b)
  %635 = call float @dx.op.unary.f32(i32 23, float %634)  ; Log(value)
  %636 = fmul fast float %635, 5.000000e-01
  %637 = add nuw nsw i32 %595, 20
  %638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %637, i32 undef)  ; BufferLoad(srv,index,wot)
  %639 = extractvalue %dx.types.ResRet.f32 %638, 0
  %640 = add nuw nsw i32 %595, 24
  %641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %640, i32 undef)  ; BufferLoad(srv,index,wot)
  %642 = extractvalue %dx.types.ResRet.f32 %641, 0
  %643 = add nuw nsw i32 %595, 28
  %644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.f32 %644, 0
  %646 = add nuw nsw i32 %595, 32
  %647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = add nuw nsw i32 %595, 40
  %650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.f32 %650, 0
  %652 = add nuw nsw i32 %595, 44
  %653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.f32 %653, 0
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = add nuw nsw i32 %595, 52
  %658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.f32 %658, 0
  %660 = add nuw nsw i32 %595, 56
  %661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %660, i32 undef)  ; BufferLoad(srv,index,wot)
  %662 = extractvalue %dx.types.ResRet.f32 %661, 0
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %614, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = add nuw nsw i32 %595, 112
  %672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %671, i32 undef)  ; BufferLoad(srv,index,wot)
  %673 = extractvalue %dx.types.ResRet.i32 %672, 0
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 2
  %676 = fmul fast float %675, %517
  %677 = fmul fast float %675, %518
  %678 = extractvalue %dx.types.CBufRet.f32 %674, 3
  %679 = fadd fast float %676, %678
  %680 = fadd fast float %677, %678
  %681 = extractvalue %dx.types.CBufRet.f32 %674, 0
  %682 = fmul fast float %681, %517
  %683 = fmul fast float %681, %518
  %684 = extractvalue %dx.types.CBufRet.f32 %674, 1
  %685 = fadd fast float %682, %684
  %686 = fadd fast float %683, %684
  %687 = add i32 %664, 0
  %688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %689 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %688, i32 0)  ; GetDimensions(handle,mipLevel)
  %690 = extractvalue %dx.types.Dimensions %689, 0
  %691 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %690)  ; FirstbitLo(value)
  %692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.i32 %692, 1
  %694 = sub nsw i32 %693, %691
  %695 = sitofp i32 %694 to float
  %696 = fsub fast float %568, %695
  %697 = call float @dx.op.binary.f32(i32 35, float %696, float 0.000000e+00)  ; FMax(a,b)
  %698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %688, %dx.types.Handle %61, float %679, float %680, float %651, float undef, i32 0, i32 0, i32 undef, float %697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = fmul fast float %699, %639
  %701 = fadd fast float %700, %642
  %702 = add i32 %666, 0
  %703 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %702, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %704 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %703, i32 0)  ; GetDimensions(handle,mipLevel)
  %705 = extractvalue %dx.types.Dimensions %704, 0
  %706 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %705)  ; FirstbitLo(value)
  %707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.i32 %707, 1
  %709 = sub nsw i32 %708, %706
  %710 = sitofp i32 %709 to float
  %711 = fsub fast float %568, %710
  %712 = call float @dx.op.binary.f32(i32 35, float %711, float 0.000000e+00)  ; FMax(a,b)
  %713 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %703, %dx.types.Handle %61, float %685, float %686, float %654, float undef, i32 0, i32 0, i32 undef, float %712)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %714 = extractvalue %dx.types.ResRet.f32 %713, 0
  %715 = fmul fast float %714, %645
  %716 = fadd fast float %715, %648
  %717 = add i32 %668, 0
  %718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %719 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %718, i32 0)  ; GetDimensions(handle,mipLevel)
  %720 = extractvalue %dx.types.Dimensions %719, 0
  %721 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %720)  ; FirstbitLo(value)
  %722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %723 = extractvalue %dx.types.CBufRet.i32 %722, 1
  %724 = sub nsw i32 %723, %721
  %725 = sitofp i32 %724 to float
  %726 = fsub fast float %568, %725
  %727 = call float @dx.op.binary.f32(i32 35, float %726, float 0.000000e+00)  ; FMax(a,b)
  %728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %718, %dx.types.Handle %61, float %685, float %686, float %656, float undef, i32 0, i32 0, i32 undef, float %727)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %733 = fmul fast float %732, 2.000000e+00
  %734 = fmul fast float %733, %729
  %735 = fmul fast float %733, %730
  %736 = fsub fast float %734, %732
  %737 = fsub fast float %735, %732
  %738 = fmul fast float %736, %736
  %739 = fmul fast float %737, %737
  %740 = fadd fast float %738, %739
  %741 = call float @dx.op.unary.f32(i32 24, float %740)  ; Sqrt(value)
  %742 = add i32 %670, 0
  %743 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %742, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %744 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %743, i32 0)  ; GetDimensions(handle,mipLevel)
  %745 = extractvalue %dx.types.Dimensions %744, 0
  %746 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %745)  ; FirstbitLo(value)
  %747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.i32 %747, 1
  %749 = sub nsw i32 %748, %746
  %750 = sitofp i32 %749 to float
  %751 = fsub fast float %568, %750
  %752 = call float @dx.op.binary.f32(i32 35, float %751, float 0.000000e+00)  ; FMax(a,b)
  %753 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %743, %dx.types.Handle %61, float %685, float %686, float %659, float undef, i32 0, i32 0, i32 undef, float %752)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = add i32 %673, 0
  %756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %757 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %756, i32 0)  ; GetDimensions(handle,mipLevel)
  %758 = extractvalue %dx.types.Dimensions %757, 0
  %759 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %758)  ; FirstbitLo(value)
  %760 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.i32 %760, 1
  %762 = sub nsw i32 %761, %759
  %763 = sitofp i32 %762 to float
  %764 = fsub fast float %568, %763
  %765 = call float @dx.op.binary.f32(i32 35, float %764, float 0.000000e+00)  ; FMax(a,b)
  %766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %756, %dx.types.Handle %61, float %685, float %686, float %662, float undef, i32 0, i32 0, i32 undef, float %765)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.i32 %768, 0
  %770 = call i32 @dx.op.binary.i32(i32 40, i32 %588, i32 %769)  ; UMin(a,b)
  %771 = mul i32 %770, 36
  %772 = add i32 %771, 4
  %773 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %592)  ; Countbits(value)
  %774 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %775 = extractvalue %dx.types.CBufRet.i32 %774, 0
  %776 = icmp eq i32 %775, 32
  %777 = select i1 %776, float 0.000000e+00, float %568
  %778 = and i32 %775, -2
  %779 = icmp eq i32 %778, 30
  %780 = or i1 %779, %776
  br i1 %780, label %781, label %822

; <label>:781                                     ; preds = %0
  %782 = extractvalue %dx.types.ResRet.i32 %607, 0
  %783 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %784 = extractvalue %dx.types.CBufRet.i32 %783, 0
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %801, label %786

; <label>:786                                     ; preds = %781
  %787 = icmp eq i32 %784, 1
  br i1 %787, label %801, label %788

; <label>:788                                     ; preds = %786
  %789 = icmp eq i32 %784, 2
  br i1 %789, label %801, label %790

; <label>:790                                     ; preds = %788
  %791 = icmp eq i32 %784, 3
  br i1 %791, label %801, label %792

; <label>:792                                     ; preds = %790
  %793 = icmp eq i32 %784, 4
  br i1 %793, label %801, label %794

; <label>:794                                     ; preds = %792
  %795 = call i32 @dx.op.binary.i32(i32 39, i32 %784, i32 6)  ; UMax(a,b)
  %796 = call i32 @dx.op.binary.i32(i32 40, i32 %795, i32 13)  ; UMin(a,b)
  %797 = shl i32 %796, 2
  %798 = add i32 %606, %797
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  br label %801

; <label>:801                                     ; preds = %794, %792, %790, %788, %786, %781
  %802 = phi i32 [ %800, %794 ], [ %782, %781 ], [ %610, %786 ], [ %613, %788 ], [ %616, %790 ], [ %619, %792 ]
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %803, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %804, i32 0)  ; GetDimensions(handle,mipLevel)
  %806 = extractvalue %dx.types.Dimensions %805, 0
  %807 = icmp eq i32 %806, 1
  %808 = icmp eq i32 %806, 4
  %809 = or i1 %807, %808
  br i1 %809, label %816, label %810

; <label>:810                                     ; preds = %801
  %811 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %806)  ; FirstbitLo(value)
  %812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %813 = extractvalue %dx.types.CBufRet.i32 %812, 1
  %814 = sub nsw i32 %813, %811
  %815 = call i32 @dx.op.binary.i32(i32 37, i32 %814, i32 0)  ; IMax(a,b)
  br label %816

; <label>:816                                     ; preds = %810, %801
  %817 = phi i32 [ %815, %810 ], [ -1, %801 ]
  %818 = sitofp i32 %817 to float
  %819 = icmp slt i32 %817, 0
  %820 = fsub fast float %777, %818
  %821 = select i1 %819, float 0.000000e+00, float %820
  br label %822

; <label>:822                                     ; preds = %816, %0
  %823 = phi float [ 0.000000e+00, %0 ], [ %818, %816 ]
  %824 = phi float [ 0.000000e+00, %0 ], [ %821, %816 ]
  %825 = icmp eq i32 %592, 0
  br i1 %825, label %2361, label %826

; <label>:826                                     ; preds = %822
  br label %827

; <label>:827                                     ; preds = %2338, %826
  %828 = phi i32 [ %2339, %2338 ], [ %594, %826 ]
  %829 = phi i32 [ %2340, %2338 ], [ %571, %826 ]
  %830 = phi i32 [ %2341, %2338 ], [ %571, %826 ]
  %831 = phi float [ %2342, %2338 ], [ 0.000000e+00, %826 ]
  %832 = phi float [ %2343, %2338 ], [ 0.000000e+00, %826 ]
  %833 = phi float [ %2344, %2338 ], [ 0.000000e+00, %826 ]
  %834 = phi float [ %2345, %2338 ], [ 0.000000e+00, %826 ]
  %835 = phi float [ %2346, %2338 ], [ 0.000000e+00, %826 ]
  %836 = phi float [ %2347, %2338 ], [ 0.000000e+00, %826 ]
  %837 = phi float [ %2348, %2338 ], [ 0.000000e+00, %826 ]
  %838 = phi float [ %2349, %2338 ], [ 0.000000e+00, %826 ]
  %839 = phi i32 [ %2350, %2338 ], [ 0, %826 ]
  %840 = phi float [ %2351, %2338 ], [ 0.000000e+00, %826 ]
  %841 = phi i32 [ %2352, %2338 ], [ %571, %826 ]
  %842 = phi i32 [ %2353, %2338 ], [ %571, %826 ]
  %843 = phi float [ %2354, %2338 ], [ 0.000000e+00, %826 ]
  %844 = phi i32 [ %2355, %2338 ], [ 0, %826 ]
  %845 = phi float [ %2356, %2338 ], [ 0.000000e+00, %826 ]
  %846 = phi float [ %2357, %2338 ], [ 0.000000e+00, %826 ]
  %847 = phi float [ %2358, %2338 ], [ 0.000000e+00, %826 ]
  %848 = phi i32 [ %853, %2338 ], [ %592, %826 ]
  %849 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %848)  ; FirstbitLo(value)
  %850 = and i32 %849, 31
  %851 = shl i32 1, %850
  %852 = xor i32 %851, -1
  %853 = and i32 %848, %852
  %854 = shl i32 %849, 2
  %855 = add i32 %605, %854
  %856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %855, i32 undef)  ; BufferLoad(srv,index,wot)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = fmul fast float %859, %517
  %861 = fmul fast float %859, %518
  %862 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %863 = fadd fast float %860, %862
  %864 = fadd fast float %861, %862
  %865 = add i32 %854, %620
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = add i32 %867, 0
  %869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %868, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %870 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %869, i32 0)  ; GetDimensions(handle,mipLevel)
  %871 = extractvalue %dx.types.Dimensions %870, 0
  %872 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %871)  ; FirstbitLo(value)
  %873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %874 = extractvalue %dx.types.CBufRet.i32 %873, 1
  %875 = sub nsw i32 %874, %872
  %876 = sitofp i32 %875 to float
  %877 = fsub fast float %568, %876
  %878 = call float @dx.op.binary.f32(i32 35, float %877, float 0.000000e+00)  ; FMax(a,b)
  %879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %869, %dx.types.Handle %61, float %863, float %864, float %857, float undef, i32 0, i32 0, i32 undef, float %878)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = fcmp fast ogt float %880, 0.000000e+00
  br i1 %881, label %882, label %2338

; <label>:882                                     ; preds = %827
  %883 = add i32 %772, %854
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %883, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 32767
  %887 = add i32 %839, 1
  %888 = mul nuw nsw i32 %886, 928
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = or i32 %888, 8
  %892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = or i32 %888, 12
  %895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.f32 %895, 1
  %897 = or i32 %888, 20
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = or i32 %888, 24
  %901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.f32 %901, 0
  %903 = extractvalue %dx.types.ResRet.f32 %901, 1
  %904 = extractvalue %dx.types.ResRet.f32 %901, 2
  %905 = extractvalue %dx.types.ResRet.f32 %901, 3
  %906 = add nuw nsw i32 %888, 40
  %907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.f32 %907, 0
  %909 = add nuw nsw i32 %888, 72
  %910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = extractvalue %dx.types.ResRet.f32 %910, 1
  %913 = add nuw nsw i32 %888, 80
  %914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = add nuw nsw i32 %888, 228
  %917 = add nuw nsw i32 %888, 516
  %918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 1
  %920 = extractvalue %dx.types.ResRet.f32 %918, 2
  %921 = add nuw nsw i32 %888, 528
  %922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 0
  %924 = extractvalue %dx.types.ResRet.f32 %922, 1
  %925 = extractvalue %dx.types.ResRet.f32 %922, 2
  %926 = add nuw nsw i32 %888, 540
  %927 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %926, i32 undef)  ; BufferLoad(srv,index,wot)
  %928 = extractvalue %dx.types.ResRet.f32 %927, 0
  %929 = extractvalue %dx.types.ResRet.f32 %927, 1
  %930 = add nuw nsw i32 %888, 548
  %931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = add nuw nsw i32 %888, 552
  %934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = extractvalue %dx.types.ResRet.f32 %934, 2
  %938 = add nuw nsw i32 %888, 596
  %939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = extractvalue %dx.types.ResRet.f32 %939, 1
  %942 = add nuw nsw i32 %888, 620
  %943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = add nuw nsw i32 %888, 628
  %947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = extractvalue %dx.types.ResRet.f32 %947, 2
  %951 = extractvalue %dx.types.ResRet.f32 %947, 3
  %952 = add nuw nsw i32 %888, 644
  %953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = add nuw nsw i32 %888, 648
  %956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.f32 %956, 0
  %958 = add nuw nsw i32 %888, 652
  %959 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.f32 %959, 0
  %961 = add nuw nsw i32 %888, 656
  %962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.f32 %962, 0
  %964 = add nuw nsw i32 %888, 660
  %965 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = add nuw nsw i32 %888, 664
  %968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = add nuw nsw i32 %888, 676
  %973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %972, i32 undef)  ; BufferLoad(srv,index,wot)
  %974 = extractvalue %dx.types.ResRet.f32 %973, 0
  %975 = extractvalue %dx.types.ResRet.f32 %973, 1
  %976 = extractvalue %dx.types.ResRet.f32 %973, 2
  %977 = add nuw nsw i32 %888, 696
  %978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %977, i32 undef)  ; BufferLoad(srv,index,wot)
  %979 = extractvalue %dx.types.ResRet.f32 %978, 0
  %980 = extractvalue %dx.types.ResRet.f32 %978, 1
  %981 = add nuw nsw i32 %888, 704
  %982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = add nuw nsw i32 %888, 708
  %985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = add nuw nsw i32 %888, 716
  %989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = add nuw nsw i32 %888, 720
  %992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = add nuw nsw i32 %888, 732
  %997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 1
  %999 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1000 = add nuw nsw i32 %888, 744
  %1001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = add nuw nsw i32 %888, 748
  %1004 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.f32 %1004, 0
  %1006 = add nuw nsw i32 %888, 752
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = add nuw nsw i32 %888, 756
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = extractvalue %dx.types.ResRet.f32 %1010, 3
  %1015 = add nuw nsw i32 %888, 780
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = add nuw nsw i32 %888, 792
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = add nuw nsw i32 %888, 800
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = add nuw nsw i32 %888, 812
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = add nuw nsw i32 %888, 816
  %1032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1035 = add nuw nsw i32 %888, 852
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = add nuw nsw i32 %888, 860
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1041 = add nuw nsw i32 %888, 884
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = add nuw nsw i32 %888, 896
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = add nuw nsw i32 %888, 900
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = add nuw nsw i32 %888, 904
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = add nuw nsw i32 %888, 908
  %1056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.i32 %1056, 0
  %1058 = add nuw nsw i32 %888, 912
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = add nuw nsw i32 %888, 916
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = lshr i32 %828, 24
  %1065 = uitofp i32 %1064 to float
  %1066 = fmul fast float %1065, 0x3F70101020000000
  %1067 = and i32 %890, 128
  %1068 = icmp ne i32 %1067, 0
  %1069 = extractvalue %dx.types.CBufRet.i32 %873, 0
  %1070 = and i32 %1069, 512
  %1071 = icmp ne i32 %1070, 0
  %1072 = and i1 %1068, %1071
  %1073 = select i1 %1072, float 0.000000e+00, float %880
  %1074 = fadd fast float %1073, %1066
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  %1076 = fmul fast float %1075, 2.550000e+02
  %1077 = fptoui float %1076 to i32
  %1078 = shl i32 %1077, 24
  %1079 = and i32 %828, 16777215
  %1080 = or i32 %1078, %1079
  %1081 = fcmp fast ole float %523, 0x3FA4B5DCC0000000
  %1082 = fmul fast float %523, 0x3FB3D07220000000
  %1083 = fadd fast float %523, 0x3FAC28F5C0000000
  %1084 = fmul fast float %1083, 0x3FEE54EDE0000000
  %1085 = call float @dx.op.unary.f32(i32 23, float %1084)  ; Log(value)
  %1086 = fmul fast float %1085, 0x4003333340000000
  %1087 = call float @dx.op.unary.f32(i32 21, float %1086)  ; Exp(value)
  %1088 = select i1 %1081, float %1082, float %1087
  %1089 = call float @dx.op.unary.f32(i32 7, float %1088)  ; Saturate(value)
  %1090 = fmul fast float %940, %754
  %1091 = fadd fast float %1090, %941
  %1092 = call float @dx.op.unary.f32(i32 7, float %1091)  ; Saturate(value)
  %1093 = fmul fast float %1092, %880
  %1094 = fadd fast float %1093, %836
  %1095 = call float @dx.op.binary.f32(i32 35, float %1089, float %1092)  ; FMax(a,b)
  %1096 = add i32 %1051, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1096, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1099 = extractvalue %dx.types.CBufRet.i32 %1098, 0
  %1100 = and i32 %1099, 65536
  %1101 = icmp eq i32 %1100, 0
  %1102 = and i32 %1099, 262144
  %1103 = icmp ne i32 %1102, 0
  %1104 = and i32 %1099, 1048576
  %1105 = icmp ne i32 %1104, 0
  br i1 %1101, label %1380, label %1106

; <label>:1106                                    ; preds = %882
  %1107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1108 = extractvalue %dx.types.CBufRet.f32 %1107, 0
  %1109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1110 = extractvalue %dx.types.CBufRet.f32 %1109, 0
  %1111 = extractvalue %dx.types.CBufRet.f32 %1109, 1
  %1112 = fadd fast float %1110, %563
  %1113 = fadd fast float %1111, %564
  %1114 = fmul fast float %563, %563
  %1115 = fmul fast float %564, %564
  %1116 = fadd fast float %1114, %1115
  %1117 = fmul fast float %565, %565
  %1118 = fadd fast float %1116, %1117
  %1119 = call float @dx.op.unary.f32(i32 24, float %1118)  ; Sqrt(value)
  br i1 %1105, label %1120, label %1166

; <label>:1120                                    ; preds = %1106
  %1121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1122 = extractvalue %dx.types.CBufRet.f32 %1121, 0
  %1123 = fcmp fast ogt float %1119, %1122
  %1124 = zext i1 %1123 to i32
  %1125 = extractvalue %dx.types.CBufRet.f32 %1121, 1
  %1126 = fcmp fast ogt float %1119, %1125
  %1127 = zext i1 %1126 to i32
  %1128 = add nuw nsw i32 %1127, %1124
  %1129 = extractvalue %dx.types.CBufRet.f32 %1121, 2
  %1130 = fcmp fast ogt float %1119, %1129
  %1131 = zext i1 %1130 to i32
  %1132 = add nuw nsw i32 %1128, %1131
  %1133 = icmp ult i32 %1132, 3
  %1134 = zext i1 %1133 to i32
  %1135 = shl nuw nsw i32 %1132, 2
  %1136 = add nuw nsw i32 %1135, 48
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %1136)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 1
  %1139 = fcmp fast ogt float %1119, %1138
  %1140 = zext i1 %1139 to i32
  %1141 = or i32 %1135, 1
  %1142 = add nuw nsw i32 %1141, 48
  %1143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %1142)  ; CBufferLoadLegacy(handle,regIndex)
  %1144 = extractvalue %dx.types.CBufRet.f32 %1143, 1
  %1145 = fcmp fast ogt float %1119, %1144
  %1146 = zext i1 %1145 to i32
  %1147 = add nuw nsw i32 %1146, %1140
  %1148 = or i32 %1135, 2
  %1149 = add nuw nsw i32 %1148, 48
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %1149)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1152 = fcmp fast ogt float %1119, %1151
  %1153 = zext i1 %1152 to i32
  %1154 = add nuw nsw i32 %1147, %1153
  %1155 = add i32 %899, -1
  %1156 = call i32 @dx.op.binary.i32(i32 40, i32 %1154, i32 %1155)  ; UMin(a,b)
  %1157 = add i32 %1135, %1156
  %1158 = call i32 @dx.op.binary.i32(i32 40, i32 %1157, i32 12)  ; UMin(a,b)
  %1159 = add i32 %1158, 48
  %1160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %1159)  ; CBufferLoadLegacy(handle,regIndex)
  %1161 = extractvalue %dx.types.CBufRet.f32 %1160, 0
  %1162 = fcmp fast oge float %1119, %1161
  %1163 = zext i1 %1162 to i32
  %1164 = call i32 @dx.op.binary.i32(i32 40, i32 %899, i32 %1134)  ; UMin(a,b)
  %1165 = call i32 @dx.op.binary.i32(i32 40, i32 %1163, i32 %1164)  ; UMin(a,b)
  br label %1166

; <label>:1166                                    ; preds = %1120, %1106
  %1167 = phi i32 [ %1158, %1120 ], [ 0, %1106 ]
  %1168 = phi i32 [ %1165, %1120 ], [ 0, %1106 ]
  %1169 = add i32 %1168, %899
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1369, label %1171

; <label>:1171                                    ; preds = %1166
  br label %1172

; <label>:1172                                    ; preds = %1338, %1171
  %1173 = phi float [ %1365, %1338 ], [ 0.000000e+00, %1171 ]
  %1174 = phi float [ %1357, %1338 ], [ 0.000000e+00, %1171 ]
  %1175 = phi float [ %1358, %1338 ], [ 0.000000e+00, %1171 ]
  %1176 = phi i32 [ %1188, %1338 ], [ %1167, %1171 ]
  %1177 = phi i32 [ %1366, %1338 ], [ 0, %1171 ]
  %1178 = add i32 %1177, %1176
  br i1 %1105, label %1179, label %1187

; <label>:1179                                    ; preds = %1172
  %1180 = and i32 %1178, -4
  %1181 = add i32 %1180, %899
  %1182 = icmp uge i32 %1178, %1181
  %1183 = sub i32 4, %899
  %1184 = select i1 %1182, i32 %1183, i32 0
  %1185 = add i32 %1184, %1176
  %1186 = add i32 %1184, %1178
  br label %1187

; <label>:1187                                    ; preds = %1179, %1172
  %1188 = phi i32 [ %1185, %1179 ], [ %1176, %1172 ]
  %1189 = phi i32 [ %1186, %1179 ], [ %1178, %1172 ]
  %1190 = and i32 %1189, 3
  %1191 = select i1 %1105, i32 %1190, i32 %1177
  %1192 = lshr i32 %1189, 2
  %1193 = select i1 %1105, i32 %1192, i32 0
  %1194 = add i32 %1189, 32
  %1195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %1194)  ; CBufferLoadLegacy(handle,regIndex)
  %1196 = extractvalue %dx.types.CBufRet.f32 %1195, 0
  %1197 = extractvalue %dx.types.CBufRet.f32 %1195, 1
  %1198 = extractvalue %dx.types.CBufRet.f32 %1195, 2
  %1199 = extractvalue %dx.types.CBufRet.f32 %1195, 3
  %1200 = fmul fast float %1196, %1119
  %1201 = fadd fast float %1200, %1197
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1203 = fmul fast float %1198, %1119
  %1204 = fadd fast float %1203, %1199
  %1205 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1206 = call float @dx.op.binary.f32(i32 36, float %1202, float %1205)  ; FMin(a,b)
  %1207 = select i1 %1105, float %1206, float 1.000000e+00
  %1208 = mul i32 %1191, 72
  %1209 = add i32 %916, %1208
  %1210 = add i32 %1209, 16
  %1211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  %1213 = extractvalue %dx.types.ResRet.f32 %1211, 1
  %1214 = extractvalue %dx.types.ResRet.f32 %1211, 2
  %1215 = extractvalue %dx.types.ResRet.f32 %1211, 3
  %1216 = add i32 %1209, 36
  %1217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = add i32 %1209, 56
  %1220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = fmul fast float %741, 3.906250e-03
  %1223 = fmul fast float %1222, %915
  %1224 = fmul fast float %1223, %1218
  %1225 = fmul fast float %1224, %1221
  %1226 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1227 = fadd fast float %1225, %1226
  %1228 = call float @dx.op.binary.f32(i32 35, float %1227, float 0.000000e+00)  ; FMax(a,b)
  %1229 = add i32 %1209, 32
  %1230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.f32 %1230, 0
  br i1 %1103, label %1232, label %1265

; <label>:1232                                    ; preds = %1187
  %1233 = fmul fast float %1218, %736
  %1234 = fmul fast float %1218, %737
  %1235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1236 = extractvalue %dx.types.CBufRet.f32 %1235, 1
  %1237 = add i32 %1209, 40
  %1238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.f32 %1238, 0
  %1240 = extractvalue %dx.types.ResRet.f32 %1238, 1
  %1241 = extractvalue %dx.types.ResRet.f32 %1238, 2
  %1242 = extractvalue %dx.types.ResRet.f32 %1238, 3
  %1243 = fadd fast float %1236, %584
  %1244 = fadd fast float %1243, %1241
  %1245 = fmul fast float %1243, %1240
  %1246 = call float @dx.op.unary.f32(i32 29, float %1245)  ; Round_z(value)
  %1247 = fmul fast float %1239, %1246
  %1248 = fsub fast float %1243, %1247
  %1249 = fmul fast float %1244, %1240
  %1250 = call float @dx.op.unary.f32(i32 29, float %1249)  ; Round_z(value)
  %1251 = fmul fast float %1250, %1239
  %1252 = fsub fast float %1244, %1251
  %1253 = fmul fast float %1248, %1233
  %1254 = fmul fast float %1248, %1234
  %1255 = fmul fast float %1252, %1233
  %1256 = fmul fast float %1252, %1234
  %1257 = fsub fast float %1112, %1253
  %1258 = fsub fast float %1113, %1254
  %1259 = fsub fast float %1112, %1255
  %1260 = fsub fast float %1113, %1256
  %1261 = fsub fast float %1241, %1248
  %1262 = call float @dx.op.unary.f32(i32 6, float %1261)  ; FAbs(value)
  %1263 = fmul fast float %1262, %1242
  %1264 = call float @dx.op.unary.f32(i32 7, float %1263)  ; Saturate(value)
  br label %1265

; <label>:1265                                    ; preds = %1232, %1187
  %1266 = phi float [ %1257, %1232 ], [ %1112, %1187 ]
  %1267 = phi float [ %1258, %1232 ], [ %1113, %1187 ]
  %1268 = phi float [ %1259, %1232 ], [ %1112, %1187 ]
  %1269 = phi float [ %1260, %1232 ], [ %1113, %1187 ]
  %1270 = phi float [ %1264, %1232 ], [ 0.000000e+00, %1187 ]
  %1271 = fmul fast float %893, 4.000000e+00
  %1272 = uitofp i32 %1193 to float
  %1273 = fadd fast float %1272, %1271
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %1274, 2
  %1278 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1279 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 0
  store float %1275, float* %1279, align 4
  %1280 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 1
  store float %1276, float* %1280, align 4
  %1281 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 2
  store float %1277, float* %1281, align 4
  %1282 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 3
  store float %1278, float* %1282, align 4
  %1283 = getelementptr inbounds [4 x float], [4 x float]* %75, i32 0, i32 %1193
  %1284 = load float, float* %1283, align 4, !tbaa !107, !noalias !109
  %1285 = fmul fast float %1284, %896
  %1286 = select i1 %1105, float %1285, float %896
  %1287 = fmul fast float %1266, %1212
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1267, float %1287)  ; FMad(a,b,c)
  %1289 = fmul fast float %1266, %1214
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1267, float %1289)  ; FMad(a,b,c)
  %1291 = add i32 %1209, 8
  %1292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.f32 %1292, 0
  %1294 = extractvalue %dx.types.ResRet.f32 %1292, 1
  %1295 = fadd fast float %1293, %1288
  %1296 = fadd fast float %1294, %1290
  %1297 = fmul fast float %1295, %1286
  %1298 = fmul fast float %1296, %1286
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = fmul fast float %1297, %1300
  %1303 = fmul fast float %1298, %1301
  %1304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1305 = extractvalue %dx.types.CBufRet.f32 %1304, 2
  %1306 = fadd fast float %1302, %1305
  %1307 = fadd fast float %1303, %1305
  %1308 = fmul fast float %1268, %1212
  %1309 = call float @dx.op.tertiary.f32(i32 46, float %1213, float %1269, float %1308)  ; FMad(a,b,c)
  %1310 = fmul fast float %1268, %1214
  %1311 = call float @dx.op.tertiary.f32(i32 46, float %1215, float %1269, float %1310)  ; FMad(a,b,c)
  %1312 = fadd fast float %1293, %1309
  %1313 = fadd fast float %1294, %1311
  %1314 = fmul fast float %1312, %1286
  %1315 = fmul fast float %1313, %1286
  %1316 = fmul fast float %1314, %1300
  %1317 = fmul fast float %1315, %1301
  %1318 = fadd fast float %1316, %1305
  %1319 = fadd fast float %1317, %1305
  %1320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %62, float %1306, float %1307, float %1273, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.ResRet.f32 %1320, 1
  %1323 = extractvalue %dx.types.ResRet.f32 %1320, 3
  %1324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %62, float %1318, float %1319, float %1273, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %1103, label %1325, label %1338

; <label>:1325                                    ; preds = %1265
  %1326 = extractvalue %dx.types.ResRet.f32 %1324, 3
  %1327 = extractvalue %dx.types.ResRet.f32 %1324, 1
  %1328 = extractvalue %dx.types.ResRet.f32 %1324, 0
  %1329 = fsub fast float %1328, %1321
  %1330 = fsub fast float %1327, %1322
  %1331 = fsub fast float %1326, %1323
  %1332 = fmul fast float %1329, %1270
  %1333 = fmul fast float %1330, %1270
  %1334 = fmul fast float %1331, %1270
  %1335 = fadd fast float %1332, %1321
  %1336 = fadd fast float %1333, %1322
  %1337 = fadd fast float %1334, %1323
  br label %1338

; <label>:1338                                    ; preds = %1325, %1265
  %1339 = phi float [ %1335, %1325 ], [ %1321, %1265 ]
  %1340 = phi float [ %1336, %1325 ], [ %1322, %1265 ]
  %1341 = phi float [ %1337, %1325 ], [ %1323, %1265 ]
  %1342 = fmul fast float %1339, 2.000000e+00
  %1343 = fmul fast float %1340, 2.000000e+00
  %1344 = fadd fast float %1342, -1.000000e+00
  %1345 = fadd fast float %1343, -1.000000e+00
  %1346 = fmul fast float %1344, %1212
  %1347 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %1214, float %1346)  ; FMad(a,b,c)
  %1348 = fmul fast float %1344, %1213
  %1349 = call float @dx.op.tertiary.f32(i32 46, float %1345, float %1215, float %1348)  ; FMad(a,b,c)
  %1350 = fmul fast float %1207, %1108
  %1351 = fmul fast float %1350, %1228
  %1352 = fmul fast float %1351, %1231
  %1353 = fmul fast float %1347, %1352
  %1354 = fmul fast float %1353, %1300
  %1355 = fmul fast float %1349, %1352
  %1356 = fmul fast float %1355, %1301
  %1357 = fadd fast float %1354, %1174
  %1358 = fadd fast float %1356, %1175
  %1359 = add i32 %1209, 64
  %1360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.f32 %1360, 0
  %1362 = fmul fast float %1361, %1341
  %1363 = extractvalue %dx.types.ResRet.f32 %1360, 1
  %1364 = fadd fast float %1362, %1363
  %1365 = call float @dx.op.binary.f32(i32 35, float %1173, float %1364)  ; FMax(a,b)
  %1366 = add nuw i32 %1177, 1
  %1367 = icmp eq i32 %1366, %1169
  br i1 %1367, label %1368, label %1172

; <label>:1368                                    ; preds = %1338
  br label %1369

; <label>:1369                                    ; preds = %1368, %1166
  %1370 = phi float [ 0.000000e+00, %1166 ], [ %1365, %1368 ]
  %1371 = phi float [ 0.000000e+00, %1166 ], [ %1357, %1368 ]
  %1372 = phi float [ 0.000000e+00, %1166 ], [ %1358, %1368 ]
  %1373 = call float @dx.op.dot3.f32(i32 55, float %1371, float %1372, float 1.000000e+00, float %1371, float %1372, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1374 = call float @dx.op.unary.f32(i32 25, float %1373)  ; Rsqrt(value)
  %1375 = fmul fast float %1374, %1371
  %1376 = fmul fast float %1374, %1372
  %1377 = fmul fast float %1370, %944
  %1378 = fadd fast float %1377, %945
  %1379 = call float @dx.op.unary.f32(i32 7, float %1378)  ; Saturate(value)
  br label %1380

; <label>:1380                                    ; preds = %1369, %882
  %1381 = phi float [ %1375, %1369 ], [ 0.000000e+00, %882 ]
  %1382 = phi float [ %1376, %1369 ], [ 0.000000e+00, %882 ]
  %1383 = phi float [ %1374, %1369 ], [ 0.000000e+00, %882 ]
  %1384 = phi float [ %1379, %1369 ], [ 0.000000e+00, %882 ]
  %1385 = fmul fast float %1381, %880
  %1386 = fmul fast float %1382, %880
  %1387 = fadd fast float %1385, %831
  %1388 = fadd fast float %1386, %832
  %1389 = fadd fast float %1384, %1095
  %1390 = fmul fast float %1383, %880
  %1391 = fadd fast float %1385, %833
  %1392 = fadd fast float %1386, %834
  %1393 = fadd fast float %1390, %835
  %1394 = fmul fast float %1384, %880
  %1395 = fadd fast float %1394, %837
  %1396 = fmul fast float %1389, %880
  %1397 = fadd fast float %1396, %838
  %1398 = icmp ne i32 %899, 0
  %1399 = select i1 %1398, i32 2, i32 0
  %1400 = fcmp fast ogt float %1384, 0.000000e+00
  %1401 = select i1 %1400, i32 4, i32 0
  %1402 = fmul fast float %986, %741
  %1403 = fadd fast float %1402, %987
  %1404 = call float @dx.op.binary.f32(i32 35, float %1403, float 0.000000e+00)  ; FMax(a,b)
  %1405 = fmul fast float %1404, %979
  %1406 = fadd fast float %1405, %980
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fmul fast float %1407, %1389
  %1409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.f32 %1409, 1
  %1411 = fcmp fast oge float %1408, %1410
  %1412 = fmul fast float %1408, %880
  %1413 = fadd fast float %1412, %840
  %1414 = icmp ne i32 %1037, 0
  %1415 = select i1 %1414, i32 8, i32 0
  %1416 = shl i32 %890, 3
  %1417 = and i32 %1416, 16
  %1418 = and i32 %890, 2
  %1419 = icmp ne i32 %1418, 0
  %1420 = and i1 %1419, %1411
  %1421 = select i1 %1420, i32 32, i32 0
  %1422 = shl i32 %890, 2
  %1423 = and i32 %1422, 256
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = fmul fast float %1425, %524
  %1427 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1428 = fadd fast float %1426, %1427
  %1429 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.f32 %1430, 0
  %1432 = fmul fast float %1431, %1429
  %1433 = select i1 %1414, float %1432, float 0.000000e+00
  %1434 = fcmp fast ogt float %1433, 0.000000e+00
  %1435 = or i1 %1420, %1434
  br i1 %1435, label %1436, label %1745

; <label>:1436                                    ; preds = %1380
  %1437 = select i1 %1411, float %1389, float 0.000000e+00
  %1438 = add i32 %616, 0
  %1439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1438, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1440 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1439, i32 0)  ; GetDimensions(handle,mipLevel)
  %1441 = extractvalue %dx.types.Dimensions %1440, 0
  %1442 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1441)  ; FirstbitLo(value)
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 1
  %1445 = sub nsw i32 %1444, %1442
  %1446 = sitofp i32 %1445 to float
  %1447 = fsub fast float %937, %1446
  %1448 = call float @dx.op.binary.f32(i32 35, float %1447, float 0.000000e+00)  ; FMax(a,b)
  %1449 = fmul fast float %919, %626
  %1450 = fmul fast float %919, %627
  %1451 = fsub fast float %636, %920
  %1452 = fmul fast float %935, %517
  %1453 = fmul fast float %935, %518
  %1454 = call float @dx.op.unary.f32(i32 22, float %1452)  ; Frc(value)
  %1455 = call float @dx.op.unary.f32(i32 22, float %1453)  ; Frc(value)
  %1456 = fmul fast float %1454, 2.000000e+00
  %1457 = fmul fast float %1455, 2.000000e+00
  %1458 = fadd fast float %1456, -1.000000e+00
  %1459 = fadd fast float %1457, -1.000000e+00
  %1460 = call float @dx.op.unary.f32(i32 6, float %1458)  ; FAbs(value)
  %1461 = call float @dx.op.unary.f32(i32 6, float %1459)  ; FAbs(value)
  %1462 = fsub fast float 1.000000e+00, %1460
  %1463 = fmul fast float %1462, %1461
  %1464 = fsub fast float %1462, %1463
  %1465 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %1464, float* %1465, align 4, !tbaa !107, !noalias !114
  %1466 = fmul fast float %1461, %1460
  %1467 = fsub fast float %1460, %1466
  %1468 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %1467, float* %1468, align 4, !tbaa !107, !noalias !114
  %1469 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %1463, float* %1469, align 4, !tbaa !107, !noalias !114
  %1470 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %1466, float* %1470, align 4, !tbaa !107, !noalias !114
  br label %1471

; <label>:1471                                    ; preds = %1726, %1436
  %1472 = phi float [ 0.000000e+00, %1436 ], [ %1727, %1726 ]
  %1473 = phi float [ 0.000000e+00, %1436 ], [ %1728, %1726 ]
  %1474 = phi float [ 0.000000e+00, %1436 ], [ %1729, %1726 ]
  %1475 = phi float [ 0.000000e+00, %1436 ], [ %1730, %1726 ]
  %1476 = phi float [ 0.000000e+00, %1436 ], [ %1731, %1726 ]
  %1477 = phi i32 [ 0, %1436 ], [ %1732, %1726 ]
  %1478 = phi float [ %1387, %1436 ], [ %1581, %1726 ]
  %1479 = phi float [ %1388, %1436 ], [ %1582, %1726 ]
  %1480 = mul i32 %1477, 2
  %1481 = add i32 0, %1480
  %1482 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1481
  %1483 = load float, float* %1482, align 4
  %1484 = mul i32 %1477, 2
  %1485 = add i32 1, %1484
  %1486 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1485
  %1487 = load float, float* %1486, align 4
  %1488 = fmul fast float %1483, 5.000000e-01
  %1489 = fmul fast float %1487, 5.000000e-01
  %1490 = fsub fast float 1.000000e+00, %1483
  %1491 = fsub fast float 1.000000e+00, %1487
  %1492 = fmul fast float %1490, 5.000000e-01
  %1493 = fmul fast float %1491, 5.000000e-01
  %1494 = fadd fast float %1488, %1452
  %1495 = fadd fast float %1489, %1453
  %1496 = call float @dx.op.unary.f32(i32 27, float %1494)  ; Round_ni(value)
  %1497 = call float @dx.op.unary.f32(i32 27, float %1495)  ; Round_ni(value)
  %1498 = fadd fast float %1496, %1492
  %1499 = fadd fast float %1497, %1493
  %1500 = fmul fast float %1498, %936
  %1501 = fmul fast float %1499, %936
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = fmul fast float %1500, %1503
  %1505 = fmul fast float %1501, %1503
  %1506 = extractvalue %dx.types.CBufRet.f32 %1502, 1
  %1507 = fadd fast float %1504, %1506
  %1508 = fadd fast float %1505, %1506
  %1509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1439, %dx.types.Handle %64, float %1507, float %1508, float %604, float undef, i32 0, i32 0, i32 undef, float %1448)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = extractvalue %dx.types.ResRet.f32 %1509, 1
  %1512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.f32 %1512, 3
  %1514 = fmul fast float %1513, 2.000000e+00
  %1515 = fmul fast float %1514, %1510
  %1516 = fmul fast float %1514, %1511
  %1517 = fsub fast float %1515, %1513
  %1518 = fsub fast float %1516, %1513
  %1519 = fmul fast float %1517, %1517
  %1520 = fmul fast float %1518, %1518
  %1521 = fadd fast float %1519, %1520
  %1522 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %1523 = fcmp fast ogt float %1522, 0.000000e+00
  %1524 = fdiv fast float 1.000000e+00, %1522
  %1525 = fmul fast float %1517, %1524
  %1526 = fmul fast float %1518, %1524
  %1527 = select i1 %1523, float %1525, float 0.000000e+00
  %1528 = select i1 %1523, float %1526, float 0.000000e+00
  br i1 %1434, label %1529, label %1580

; <label>:1529                                    ; preds = %1471
  %1530 = add i32 %1037, 0
  %1531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1530, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.f32 %1532, 1
  %1534 = fmul fast float %932, %919
  %1535 = add i32 %1037, 0
  %1536 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1535, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1537 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1536, i32 0)  ; GetDimensions(handle,mipLevel)
  %1538 = extractvalue %dx.types.Dimensions %1537, 0
  %1539 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1538)  ; FirstbitLo(value)
  %1540 = uitofp i32 %1539 to float
  %1541 = fsub fast float %1451, %925
  %1542 = fadd fast float %1541, %1540
  %1543 = fmul fast float %1534, %1522
  %1544 = fsub fast float -0.000000e+00, %1527
  %1545 = fmul fast float %1528, %1449
  %1546 = call float @dx.op.tertiary.f32(i32 46, float %1544, float %1450, float %1545)  ; FMad(a,b,c)
  %1547 = fmul fast float %1527, %1449
  %1548 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1450, float %1547)  ; FMad(a,b,c)
  %1549 = fmul fast float %1543, %1533
  %1550 = fsub fast float %1548, %1549
  %1551 = fmul fast float %1546, %923
  %1552 = fmul fast float %1550, %924
  %1553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1531, %dx.types.Handle %1553, float %1551, float %1552, float undef, float undef, i32 0, i32 0, i32 undef, float %1542)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 1
  %1556 = extractvalue %dx.types.ResRet.f32 %1554, 3
  %1557 = fadd fast float %1555, %1556
  %1558 = fmul fast float %1557, %1040
  %1559 = fsub fast float %1558, %1040
  %1560 = fsub fast float %1555, %1556
  %1561 = fmul fast float %1560, %1040
  %1562 = fmul fast float %1559, %1528
  %1563 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1561, float %1562)  ; FMad(a,b,c)
  %1564 = fmul fast float %1559, %1544
  %1565 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1561, float %1564)  ; FMad(a,b,c)
  %1566 = fmul fast float %1563, %923
  %1567 = fmul fast float %1565, %924
  %1568 = fmul fast float %928, %741
  %1569 = fadd fast float %1568, %929
  %1570 = call float @dx.op.binary.f32(i32 35, float %1569, float 0.000000e+00)  ; FMax(a,b)
  %1571 = fmul fast float %1433, %880
  %1572 = fmul fast float %1571, %1570
  %1573 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %1477
  %1574 = load float, float* %1573, align 4, !tbaa !107, !noalias !114
  %1575 = fmul fast float %1572, %1574
  %1576 = fmul fast float %1566, %1575
  %1577 = fmul fast float %1567, %1575
  %1578 = fadd fast float %1576, %1478
  %1579 = fadd fast float %1577, %1479
  br label %1580

; <label>:1580                                    ; preds = %1529, %1471
  %1581 = phi float [ %1578, %1529 ], [ %1478, %1471 ]
  %1582 = phi float [ %1579, %1529 ], [ %1479, %1471 ]
  %1583 = fcmp fast ogt float %1437, 0.000000e+00
  %1584 = and i1 %1419, %1583
  br i1 %1584, label %1585, label %1726

; <label>:1585                                    ; preds = %1580
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 1
  %1588 = fmul fast float %983, %919
  %1589 = add i32 %1051, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1589, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1590, i32 0)  ; GetDimensions(handle,mipLevel)
  %1592 = extractvalue %dx.types.Dimensions %1591, 0
  %1593 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1592)  ; FirstbitLo(value)
  %1594 = uitofp i32 %1593 to float
  %1595 = fsub fast float %1451, %971
  %1596 = fadd fast float %1595, %1594
  %1597 = fmul fast float %1522, %1588
  %1598 = fsub fast float -0.000000e+00, %1527
  %1599 = fmul fast float %1528, %1449
  %1600 = call float @dx.op.tertiary.f32(i32 46, float %1598, float %1450, float %1599)  ; FMad(a,b,c)
  %1601 = fmul fast float %1527, %1449
  %1602 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1450, float %1601)  ; FMad(a,b,c)
  %1603 = fmul fast float %1597, %1587
  %1604 = fsub fast float %1602, %1603
  %1605 = fmul fast float %1600, %969
  %1606 = fmul fast float %1604, %970
  %1607 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1607, float %1605, float %1606, float undef, float undef, i32 0, i32 0, i32 undef, float %1596)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1609 = extractvalue %dx.types.ResRet.f32 %1608, 0
  %1610 = fmul fast float %1405, %1609
  %1611 = fadd fast float %1610, %980
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1614 = extractvalue %dx.types.CBufRet.f32 %1613, 2
  %1615 = fmul fast float %1614, %524
  %1616 = extractvalue %dx.types.CBufRet.f32 %1613, 3
  %1617 = fadd fast float %1615, %1616
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = fcmp fast ogt float %1612, 0.000000e+00
  %1620 = fcmp fast ogt float %1618, 0.000000e+00
  %1621 = and i1 %1619, %1620
  %1622 = and i32 %890, 64
  %1623 = icmp ne i32 %1622, 0
  %1624 = and i1 %1623, %1621
  br i1 %1624, label %1625, label %1708

; <label>:1625                                    ; preds = %1585
  %1626 = fsub fast float %1451, %976
  %1627 = add i32 %1057, 0
  %1628 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1627, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1629 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1628, i32 0)  ; GetDimensions(handle,mipLevel)
  %1630 = extractvalue %dx.types.Dimensions %1629, 0
  %1631 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1630)  ; FirstbitLo(value)
  %1632 = uitofp i32 %1631 to float
  %1633 = fadd fast float %1632, %1626
  %1634 = add i32 %1060, 0
  %1635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1636 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1635, i32 0)  ; GetDimensions(handle,mipLevel)
  %1637 = extractvalue %dx.types.Dimensions %1636, 0
  %1638 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1637)  ; FirstbitLo(value)
  %1639 = uitofp i32 %1638 to float
  %1640 = fadd fast float %1639, %1626
  %1641 = add i32 %1057, 0
  %1642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1641, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1643 = add i32 %1060, 0
  %1644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1645 = fmul fast float %1600, %974
  %1646 = fmul fast float %1604, %975
  %1647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1642, %dx.types.Handle %1607, float %1645, float %1646, float undef, float undef, i32 0, i32 0, i32 undef, float %1633)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1648 = extractvalue %dx.types.ResRet.f32 %1647, 0
  %1649 = extractvalue %dx.types.ResRet.f32 %1647, 1
  %1650 = extractvalue %dx.types.ResRet.f32 %1647, 2
  %1651 = extractvalue %dx.types.ResRet.f32 %1647, 3
  %1652 = fmul fast float %1648, %1043
  %1653 = fadd fast float %1652, %1044
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fadd fast float %1649, %1651
  %1656 = fmul fast float %1655, %1045
  %1657 = fsub fast float %1656, %1045
  %1658 = fsub fast float %1649, %1651
  %1659 = fmul fast float %1658, %1045
  %1660 = fmul fast float %1657, %1528
  %1661 = call float @dx.op.tertiary.f32(i32 46, float %1527, float %1659, float %1660)  ; FMad(a,b,c)
  %1662 = fmul fast float %1657, %1598
  %1663 = call float @dx.op.tertiary.f32(i32 46, float %1528, float %1659, float %1662)  ; FMad(a,b,c)
  %1664 = fmul fast float %1661, %974
  %1665 = fmul fast float %1663, %975
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1644, %dx.types.Handle %1607, float %1645, float %1646, float undef, float undef, i32 0, i32 0, i32 undef, float %1640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = fsub fast float 1.000000e+00, %1612
  %1669 = bitcast float %1612 to i32
  %1670 = sitofp i32 %1669 to float
  %1671 = fadd fast float %1670, 0xC1CFBF8940000000
  %1672 = fmul fast float %1671, %966
  %1673 = fadd fast float %1672, 0x41CFBF8940000000
  %1674 = fptosi float %1673 to i32
  %1675 = bitcast i32 %1674 to float
  %1676 = bitcast float %1668 to i32
  %1677 = sitofp i32 %1676 to float
  %1678 = fadd fast float %1677, 0xC1CFBF8940000000
  %1679 = fmul fast float %1678, %966
  %1680 = fadd fast float %1679, 0x41CFBF8940000000
  %1681 = fptosi float %1680 to i32
  %1682 = bitcast i32 %1681 to float
  %1683 = fmul fast float %1675, %963
  %1684 = fmul fast float %1682, %963
  %1685 = fsub fast float %1668, %1683
  %1686 = fadd fast float %1684, %1668
  %1687 = call float @dx.op.unary.f32(i32 7, float %1685)  ; Saturate(value)
  %1688 = call float @dx.op.unary.f32(i32 7, float %1686)  ; Saturate(value)
  %1689 = fsub fast float %1667, %1687
  %1690 = fsub fast float %1688, %1687
  %1691 = bitcast float %1690 to i32
  %1692 = sub nsw i32 2129859010, %1691
  %1693 = bitcast i32 %1692 to float
  %1694 = fmul fast float %1693, %1689
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fmul fast float %1618, %960
  %1697 = fmul fast float %1696, %1695
  %1698 = fmul fast float %1664, %1697
  %1699 = fmul fast float %1665, %1697
  %1700 = fadd fast float %1650, -1.000000e+00
  %1701 = fmul fast float %1697, %1700
  %1702 = fadd fast float %1701, 1.000000e+00
  %1703 = fsub fast float %1654, %954
  %1704 = fmul fast float %1697, %1703
  %1705 = fadd fast float %1704, %954
  %1706 = fmul fast float %1697, %1668
  %1707 = fadd fast float %1706, %1612
  br label %1708

; <label>:1708                                    ; preds = %1625, %1585
  %1709 = phi float [ %1707, %1625 ], [ %1612, %1585 ]
  %1710 = phi float [ %1705, %1625 ], [ %954, %1585 ]
  %1711 = phi float [ %1702, %1625 ], [ 1.000000e+00, %1585 ]
  %1712 = phi float [ %1698, %1625 ], [ 0.000000e+00, %1585 ]
  %1713 = phi float [ %1699, %1625 ], [ 0.000000e+00, %1585 ]
  %1714 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %1477
  %1715 = load float, float* %1714, align 4, !tbaa !107, !noalias !114
  %1716 = fmul fast float %1715, %1709
  %1717 = fmul fast float %1716, %1712
  %1718 = fmul fast float %1716, %1713
  %1719 = fadd fast float %1717, %1472
  %1720 = fadd fast float %1718, %1473
  %1721 = fmul fast float %1716, %1711
  %1722 = fadd fast float %1721, %1474
  %1723 = fmul fast float %1716, %1710
  %1724 = fadd fast float %1723, %1475
  %1725 = fadd fast float %1716, %1476
  br label %1726

; <label>:1726                                    ; preds = %1708, %1580
  %1727 = phi float [ %1719, %1708 ], [ %1472, %1580 ]
  %1728 = phi float [ %1720, %1708 ], [ %1473, %1580 ]
  %1729 = phi float [ %1722, %1708 ], [ %1474, %1580 ]
  %1730 = phi float [ %1724, %1708 ], [ %1475, %1580 ]
  %1731 = phi float [ %1725, %1708 ], [ %1476, %1580 ]
  %1732 = add nuw nsw i32 %1477, 1
  %1733 = icmp eq i32 %1732, 4
  br i1 %1733, label %1734, label %1471, !llvm.loop !121

; <label>:1734                                    ; preds = %1726
  %1735 = fmul fast float %1731, %1437
  %1736 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1735)  ; FMax(a,b)
  %1737 = fmul fast float %1731, %1727
  %1738 = fmul fast float %1731, %1728
  %1739 = fadd fast float %1729, -1.000000e+00
  %1740 = fmul fast float %1731, %1739
  %1741 = fadd fast float %1740, 1.000000e+00
  %1742 = fsub fast float %1730, %908
  %1743 = fmul fast float %1731, %1742
  %1744 = fadd fast float %1743, %908
  br label %1745

; <label>:1745                                    ; preds = %1734, %1380
  %1746 = phi float [ %1581, %1734 ], [ %1387, %1380 ]
  %1747 = phi float [ %1582, %1734 ], [ %1388, %1380 ]
  %1748 = phi float [ %1736, %1734 ], [ 0.000000e+00, %1380 ]
  %1749 = phi float [ %1737, %1734 ], [ 0.000000e+00, %1380 ]
  %1750 = phi float [ %1738, %1734 ], [ 0.000000e+00, %1380 ]
  %1751 = phi float [ %1741, %1734 ], [ 1.000000e+00, %1380 ]
  %1752 = phi float [ %1744, %1734 ], [ %908, %1380 ]
  %1753 = fmul fast float %1021, %741
  %1754 = fadd fast float %1753, %1022
  %1755 = call float @dx.op.binary.f32(i32 35, float %1754, float 0.000000e+00)  ; FMax(a,b)
  %1756 = fmul fast float %1755, %1017
  %1757 = fadd fast float %1756, %1018
  %1758 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  %1759 = fmul fast float %1758, %1389
  %1760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1761 = extractvalue %dx.types.CBufRet.f32 %1760, 1
  %1762 = fcmp fast oge float %1759, %1761
  %1763 = fmul fast float %1759, %880
  %1764 = fadd fast float %1763, %843
  %1765 = shl i32 %890, 4
  %1766 = and i32 %1765, 64
  %1767 = and i32 %890, 4
  %1768 = icmp ne i32 %1767, 0
  %1769 = and i1 %1768, %1762
  %1770 = select i1 %1769, i32 128, i32 0
  br i1 %1769, label %1771, label %2096

; <label>:1771                                    ; preds = %1745
  %1772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1773 = extractvalue %dx.types.CBufRet.f32 %1772, 0
  %1774 = extractvalue %dx.types.CBufRet.f32 %1772, 1
  %1775 = fsub fast float %563, %626
  %1776 = fadd fast float %1775, %1773
  %1777 = fsub fast float %564, %627
  %1778 = fadd fast float %1777, %1774
  %1779 = fmul fast float %1776, %990
  %1780 = fmul fast float %1778, %990
  %1781 = fadd fast float %1779, %626
  %1782 = fadd fast float %1780, %627
  %1783 = add i32 %1063, 0
  %1784 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1783, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1785 = add i32 %1063, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1785, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1786, i32 0)  ; GetDimensions(handle,mipLevel)
  %1788 = extractvalue %dx.types.Dimensions %1787, 0
  %1789 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1788)  ; FirstbitLo(value)
  %1790 = uitofp i32 %1789 to float
  %1791 = fsub fast float %636, %999
  %1792 = fadd fast float %1791, %1790
  %1793 = fmul fast float %1781, %998
  %1794 = fmul fast float %1782, %998
  %1795 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1796 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1784, %dx.types.Handle %1795, float %1793, float %1794, float undef, float undef, i32 0, i32 0, i32 undef, float %1792)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1797 = extractvalue %dx.types.ResRet.f32 %1796, 0
  %1798 = extractvalue %dx.types.ResRet.f32 %1796, 1
  %1799 = extractvalue %dx.types.ResRet.f32 %1796, 2
  %1800 = fmul fast float %1797, 2.000000e+00
  %1801 = fmul fast float %1798, 2.000000e+00
  %1802 = fadd fast float %1800, -1.000000e+00
  %1803 = fadd fast float %1801, -1.000000e+00
  %1804 = fmul fast float %1799, %993
  %1805 = fmul fast float %1804, %1008
  %1806 = fmul fast float %1805, %1802
  %1807 = fmul fast float %1805, %1803
  %1808 = fsub fast float %736, %1806
  %1809 = fsub fast float %737, %1807
  %1810 = fmul fast float %1808, %1005
  %1811 = fmul fast float %1809, %1005
  %1812 = fadd fast float %1810, %1806
  %1813 = fadd fast float %1811, %1807
  %1814 = fmul fast float %1812, %1008
  %1815 = fmul fast float %1813, %1008
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1818 = fmul fast float %1008, %584
  %1819 = fadd fast float %1817, %1818
  %1820 = fadd fast float %1819, %1013
  %1821 = fmul fast float %1819, %1012
  %1822 = call float @dx.op.unary.f32(i32 29, float %1821)  ; Round_z(value)
  %1823 = fmul fast float %1822, %1011
  %1824 = fsub fast float %1819, %1823
  %1825 = fmul fast float %1820, %1012
  %1826 = call float @dx.op.unary.f32(i32 29, float %1825)  ; Round_z(value)
  %1827 = fmul fast float %1826, %1011
  %1828 = fsub fast float %1820, %1827
  %1829 = fmul fast float %1814, %1824
  %1830 = fmul fast float %1815, %1824
  %1831 = fmul fast float %1814, %1828
  %1832 = fmul fast float %1815, %1828
  %1833 = fsub fast float %1781, %1829
  %1834 = fsub fast float %1782, %1830
  %1835 = fsub fast float %1781, %1831
  %1836 = fsub fast float %1782, %1832
  %1837 = fsub fast float %1013, %1824
  %1838 = call float @dx.op.unary.f32(i32 6, float %1837)  ; FAbs(value)
  %1839 = fmul fast float %1838, %1014
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fmul fast float %1833, %994
  %1842 = fmul fast float %1834, %994
  %1843 = fmul fast float %1835, %994
  %1844 = fmul fast float %1836, %994
  %1845 = fcmp fast ogt float %1002, 0.000000e+00
  %1846 = add i32 %1051, 0
  %1847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1846, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1848 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1847, i32 0)  ; GetDimensions(handle,mipLevel)
  %1849 = extractvalue %dx.types.Dimensions %1848, 0
  %1850 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1849)  ; FirstbitLo(value)
  %1851 = uitofp i32 %1850 to float
  %1852 = fsub fast float %636, %995
  %1853 = fadd fast float %1852, %1851
  br i1 %1845, label %1854, label %1941

; <label>:1854                                    ; preds = %1771
  %1855 = fmul fast float %1002, %584
  %1856 = fmul fast float %1855, 5.000000e-01
  %1857 = fadd fast float %1856, 5.000000e-01
  %1858 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1859 = call float @dx.op.unary.f32(i32 22, float %1856)  ; Frc(value)
  %1860 = call float @dx.op.unary.f32(i32 27, float %1857)  ; Round_ni(value)
  %1861 = call float @dx.op.unary.f32(i32 27, float %1856)  ; Round_ni(value)
  %1862 = fmul fast float %1860, 2.000000e+00
  %1863 = fmul fast float %1861, 2.000000e+00
  %1864 = fadd fast float %1863, 1.000000e+00
  %1865 = fsub fast float 1.000000e+00, %1858
  %1866 = fsub fast float 1.000000e+00, %1859
  %1867 = call float @dx.op.binary.f32(i32 36, float %1858, float %1865)  ; FMin(a,b)
  %1868 = call float @dx.op.binary.f32(i32 36, float %1859, float %1866)  ; FMin(a,b)
  %1869 = fmul fast float %1867, 2.000000e+00
  %1870 = fmul fast float %1868, 2.000000e+00
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1862, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.dot3.f32(i32 55, float %1862, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1862, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call float @dx.op.unary.f32(i32 13, float %1871)  ; Sin(value)
  %1875 = call float @dx.op.unary.f32(i32 13, float %1872)  ; Sin(value)
  %1876 = call float @dx.op.unary.f32(i32 13, float %1873)  ; Sin(value)
  %1877 = fmul fast float %1874, 0x40E55DD180000000
  %1878 = fmul fast float %1875, 0x40E55DD180000000
  %1879 = fmul fast float %1876, 0x40E55DD180000000
  %1880 = call float @dx.op.unary.f32(i32 22, float %1877)  ; Frc(value)
  %1881 = call float @dx.op.unary.f32(i32 22, float %1878)  ; Frc(value)
  %1882 = call float @dx.op.unary.f32(i32 22, float %1879)  ; Frc(value)
  %1883 = fmul fast float %1880, 0x401921FB60000000
  %1884 = call float @dx.op.unary.f32(i32 12, float %1883)  ; Cos(value)
  %1885 = call float @dx.op.unary.f32(i32 13, float %1883)  ; Sin(value)
  %1886 = fsub fast float -0.000000e+00, %1885
  %1887 = call float @dx.op.dot3.f32(i32 55, float %1864, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1888 = call float @dx.op.dot3.f32(i32 55, float %1864, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = call float @dx.op.dot3.f32(i32 55, float %1864, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1890 = call float @dx.op.unary.f32(i32 13, float %1887)  ; Sin(value)
  %1891 = call float @dx.op.unary.f32(i32 13, float %1888)  ; Sin(value)
  %1892 = call float @dx.op.unary.f32(i32 13, float %1889)  ; Sin(value)
  %1893 = fmul fast float %1890, 0x40E55DD180000000
  %1894 = fmul fast float %1891, 0x40E55DD180000000
  %1895 = fmul fast float %1892, 0x40E55DD180000000
  %1896 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1897 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1898 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1899 = fmul fast float %1896, 0x401921FB60000000
  %1900 = call float @dx.op.unary.f32(i32 12, float %1899)  ; Cos(value)
  %1901 = call float @dx.op.unary.f32(i32 13, float %1899)  ; Sin(value)
  %1902 = fsub fast float -0.000000e+00, %1901
  %1903 = fmul fast float %1884, %1841
  %1904 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1886, float %1903)  ; FMad(a,b,c)
  %1905 = fmul fast float %1885, %1841
  %1906 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1884, float %1905)  ; FMad(a,b,c)
  %1907 = fadd fast float %1904, %1881
  %1908 = fadd fast float %1906, %1882
  %1909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1795, float %1907, float %1908, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1910 = extractvalue %dx.types.ResRet.f32 %1909, 0
  %1911 = fmul fast float %1910, %1869
  %1912 = fmul fast float %1900, %1841
  %1913 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1902, float %1912)  ; FMad(a,b,c)
  %1914 = fmul fast float %1901, %1841
  %1915 = call float @dx.op.tertiary.f32(i32 46, float %1842, float %1900, float %1914)  ; FMad(a,b,c)
  %1916 = fadd fast float %1913, %1897
  %1917 = fadd fast float %1915, %1898
  %1918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1795, float %1916, float %1917, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = fmul fast float %1919, %1870
  %1921 = fadd fast float %1920, %1911
  %1922 = fmul fast float %1884, %1843
  %1923 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1886, float %1922)  ; FMad(a,b,c)
  %1924 = fmul fast float %1885, %1843
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1884, float %1924)  ; FMad(a,b,c)
  %1926 = fadd fast float %1923, %1881
  %1927 = fadd fast float %1925, %1882
  %1928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1795, float %1926, float %1927, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = fmul fast float %1929, %1869
  %1931 = fmul fast float %1900, %1843
  %1932 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1902, float %1931)  ; FMad(a,b,c)
  %1933 = fmul fast float %1901, %1843
  %1934 = call float @dx.op.tertiary.f32(i32 46, float %1844, float %1900, float %1933)  ; FMad(a,b,c)
  %1935 = fadd fast float %1932, %1897
  %1936 = fadd fast float %1934, %1898
  %1937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1795, float %1935, float %1936, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = fmul fast float %1938, %1870
  %1940 = fadd fast float %1939, %1930
  br label %1946

; <label>:1941                                    ; preds = %1771
  %1942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1795, float %1841, float %1842, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1943 = extractvalue %dx.types.ResRet.f32 %1942, 0
  %1944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %1795, float %1843, float %1844, float undef, float undef, i32 0, i32 0, i32 undef, float %1853)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  br label %1946

; <label>:1946                                    ; preds = %1941, %1854
  %1947 = phi float [ %1921, %1854 ], [ %1943, %1941 ]
  %1948 = phi float [ %1940, %1854 ], [ %1945, %1941 ]
  %1949 = fsub fast float %1948, %1947
  %1950 = fmul fast float %1949, %1840
  %1951 = fadd fast float %1950, %1947
  %1952 = fmul fast float %1756, %1951
  %1953 = fadd fast float %1952, %1018
  %1954 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 2
  %1957 = fmul fast float %1956, %524
  %1958 = extractvalue %dx.types.CBufRet.f32 %1955, 3
  %1959 = fadd fast float %1957, %1958
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = fcmp fast ogt float %1954, 0.000000e+00
  %1962 = fcmp fast ogt float %1960, 0.000000e+00
  %1963 = and i1 %1961, %1962
  %1964 = and i32 %890, 64
  %1965 = icmp ne i32 %1964, 0
  %1966 = and i1 %1965, %1963
  br i1 %1966, label %1967, label %2076

; <label>:1967                                    ; preds = %1946
  %1968 = add i32 %1057, 0
  %1969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1968, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1970 = add i32 %1060, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1970, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = fsub fast float %636, %1027
  %1973 = add i32 %1057, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1973, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1974, i32 0)  ; GetDimensions(handle,mipLevel)
  %1976 = extractvalue %dx.types.Dimensions %1975, 0
  %1977 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1976)  ; FirstbitLo(value)
  %1978 = uitofp i32 %1977 to float
  %1979 = fadd fast float %1978, %1972
  %1980 = add i32 %1060, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1981, i32 0)  ; GetDimensions(handle,mipLevel)
  %1983 = extractvalue %dx.types.Dimensions %1982, 0
  %1984 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1983)  ; FirstbitLo(value)
  %1985 = uitofp i32 %1984 to float
  %1986 = fadd fast float %1985, %1972
  %1987 = fmul fast float %1841, %1025
  %1988 = fmul fast float %1842, %1026
  %1989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1969, %dx.types.Handle %1795, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float %1979)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = extractvalue %dx.types.ResRet.f32 %1989, 1
  %1992 = extractvalue %dx.types.ResRet.f32 %1989, 2
  %1993 = extractvalue %dx.types.ResRet.f32 %1989, 3
  %1994 = fmul fast float %1990, %1043
  %1995 = fadd fast float %1994, %1044
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fadd fast float %1991, %1993
  %1998 = fmul fast float %1997, %1045
  %1999 = fsub fast float %1998, %1045
  %2000 = fsub fast float %1991, %1993
  %2001 = fmul fast float %2000, %1045
  %2002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1971, %dx.types.Handle %1795, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float %1979)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = fmul fast float %1843, %1025
  %2005 = fmul fast float %1844, %1026
  %2006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1969, %dx.types.Handle %1795, float %2004, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float %1979)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2009 = extractvalue %dx.types.ResRet.f32 %2006, 2
  %2010 = extractvalue %dx.types.ResRet.f32 %2006, 3
  %2011 = fmul fast float %2007, %1043
  %2012 = fadd fast float %2011, %1044
  %2013 = call float @dx.op.unary.f32(i32 7, float %2012)  ; Saturate(value)
  %2014 = fadd fast float %2008, %2010
  %2015 = fsub fast float %2008, %2010
  %2016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1971, %dx.types.Handle %1795, float %2004, float %2005, float undef, float undef, i32 0, i32 0, i32 undef, float %1986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = fsub fast float %2014, %1997
  %2019 = fsub fast float %2015, %2000
  %2020 = fmul fast float %1840, %1045
  %2021 = fmul fast float %2020, %2018
  %2022 = fmul fast float %2020, %2019
  %2023 = fadd fast float %2021, %1999
  %2024 = fmul fast float %1025, %2023
  %2025 = fadd fast float %2022, %2001
  %2026 = fmul fast float %1026, %2025
  %2027 = fsub fast float %2009, %1992
  %2028 = fmul fast float %2027, %1840
  %2029 = fsub fast float %2013, %1996
  %2030 = fmul fast float %2029, %1840
  %2031 = fsub fast float %2017, %2003
  %2032 = fmul fast float %2031, %1840
  %2033 = fsub fast float 1.000000e+00, %1954
  %2034 = bitcast float %1954 to i32
  %2035 = sitofp i32 %2034 to float
  %2036 = fadd fast float %2035, 0xC1CFBF8940000000
  %2037 = fmul fast float %2036, %966
  %2038 = fadd fast float %2037, 0x41CFBF8940000000
  %2039 = fptosi float %2038 to i32
  %2040 = bitcast i32 %2039 to float
  %2041 = bitcast float %2033 to i32
  %2042 = sitofp i32 %2041 to float
  %2043 = fadd fast float %2042, 0xC1CFBF8940000000
  %2044 = fmul fast float %2043, %966
  %2045 = fadd fast float %2044, 0x41CFBF8940000000
  %2046 = fptosi float %2045 to i32
  %2047 = bitcast i32 %2046 to float
  %2048 = fmul fast float %2040, %963
  %2049 = fmul fast float %2047, %963
  %2050 = fsub fast float %2033, %2048
  %2051 = fadd fast float %2049, %2033
  %2052 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2053 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  %2054 = fsub fast float %2003, %2052
  %2055 = fadd fast float %2054, %2032
  %2056 = fsub fast float %2053, %2052
  %2057 = bitcast float %2056 to i32
  %2058 = sub nsw i32 2129859010, %2057
  %2059 = bitcast i32 %2058 to float
  %2060 = fmul fast float %2059, %2055
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fmul fast float %1960, %960
  %2063 = fmul fast float %2062, %2061
  %2064 = fmul fast float %2024, %2063
  %2065 = fmul fast float %2026, %2063
  %2066 = fadd fast float %1992, -1.000000e+00
  %2067 = fadd fast float %2066, %2028
  %2068 = fmul fast float %2063, %2067
  %2069 = fadd fast float %2068, 1.000000e+00
  %2070 = fsub fast float %1996, %954
  %2071 = fadd fast float %2070, %2030
  %2072 = fmul fast float %2063, %2071
  %2073 = fadd fast float %2072, %954
  %2074 = fmul fast float %2063, %2033
  %2075 = fadd fast float %2074, %1954
  br label %2076

; <label>:2076                                    ; preds = %1967, %1946
  %2077 = phi float [ %2075, %1967 ], [ %1954, %1946 ]
  %2078 = phi float [ %2064, %1967 ], [ 0.000000e+00, %1946 ]
  %2079 = phi float [ %2065, %1967 ], [ 0.000000e+00, %1946 ]
  %2080 = phi float [ %2069, %1967 ], [ 1.000000e+00, %1946 ]
  %2081 = phi float [ %2073, %1967 ], [ %954, %1946 ]
  %2082 = fsub fast float %2078, %1749
  %2083 = fsub fast float %2079, %1750
  %2084 = fmul fast float %2082, %2077
  %2085 = fmul fast float %2083, %2077
  %2086 = fadd fast float %2084, %1749
  %2087 = fadd fast float %2085, %1750
  %2088 = fsub fast float %2080, %1751
  %2089 = fmul fast float %2088, %2077
  %2090 = fadd fast float %2089, %1751
  %2091 = fsub fast float %2081, %1752
  %2092 = fmul fast float %2091, %2077
  %2093 = fadd fast float %2092, %1752
  %2094 = fmul fast float %2077, %1389
  %2095 = call float @dx.op.binary.f32(i32 35, float %1748, float %2094)  ; FMax(a,b)
  br label %2096

; <label>:2096                                    ; preds = %2076, %1745
  %2097 = phi float [ %2095, %2076 ], [ %1748, %1745 ]
  %2098 = phi float [ %2086, %2076 ], [ %1749, %1745 ]
  %2099 = phi float [ %2087, %2076 ], [ %1750, %1745 ]
  %2100 = phi float [ %2090, %2076 ], [ %1751, %1745 ]
  %2101 = phi float [ %2093, %2076 ], [ %1752, %1745 ]
  %2102 = and i32 %890, 16
  %2103 = icmp eq i32 %2102, 0
  br i1 %2103, label %2104, label %2105

; <label>:2104                                    ; preds = %2096
  br label %2179

; <label>:2105                                    ; preds = %2096
  %2106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2106, 0
  %2108 = extractvalue %dx.types.CBufRet.f32 %2106, 1
  %2109 = fadd fast float %2107, %563
  %2110 = fadd fast float %2108, %564
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = fsub fast float %2109, %2112
  %2115 = fsub fast float %2110, %2113
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 2
  %2118 = fmul fast float %2114, %2117
  %2119 = fmul fast float %2115, %2117
  %2120 = fadd fast float %2118, 5.000000e-01
  %2121 = fadd fast float %2119, 5.000000e-01
  %2122 = fcmp fast olt float %2120, 0.000000e+00
  %2123 = fcmp fast olt float %2121, 0.000000e+00
  %2124 = or i1 %2122, %2123
  %2125 = fcmp fast oge float %2120, 1.000000e+00
  %2126 = fcmp fast oge float %2121, 1.000000e+00
  %2127 = or i1 %2125, %2126
  %2128 = or i1 %2124, %2127
  br i1 %2128, label %2162, label %2129

; <label>:2129                                    ; preds = %2105
  %2130 = extractvalue %dx.types.CBufRet.f32 %2106, 2
  %2131 = fadd fast float %2130, %565
  %2132 = fmul fast float %2117, %2109
  %2133 = fmul fast float %2117, %2110
  %2134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %2135 = extractvalue %dx.types.CBufRet.f32 %2134, 2
  %2136 = fsub fast float %2131, %2135
  %2137 = extractvalue %dx.types.CBufRet.f32 %2134, 1
  %2138 = fmul fast float %2136, %2137
  %2139 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2140 = call float @dx.op.binary.f32(i32 36, float %2121, float %2139)  ; FMin(a,b)
  %2141 = call float @dx.op.binary.f32(i32 36, float %2120, float %2140)  ; FMin(a,b)
  %2142 = call float @dx.op.binary.f32(i32 35, float %2121, float %2139)  ; FMax(a,b)
  %2143 = call float @dx.op.binary.f32(i32 35, float %2120, float %2142)  ; FMax(a,b)
  %2144 = fsub fast float 1.000000e+00, %2143
  %2145 = call float @dx.op.binary.f32(i32 36, float %2141, float %2144)  ; FMin(a,b)
  %2146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %2147 = extractvalue %dx.types.CBufRet.f32 %2146, 3
  %2148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2148, 1
  %2150 = call float @dx.op.binary.f32(i32 35, float %2149, float %2147)  ; FMax(a,b)
  %2151 = fsub fast float %2150, %2149
  %2152 = fsub fast float %2145, %2149
  %2153 = fdiv fast float %2152, %2151
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2155 = fmul fast float %2154, 2.000000e+00
  %2156 = fsub fast float 3.000000e+00, %2155
  %2157 = fmul fast float %2154, %2154
  %2158 = fmul fast float %2157, %2156
  %2159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %62, float %2132, float %2133, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = fmul fast float %2158, %2160
  br label %2162

; <label>:2162                                    ; preds = %2129, %2105
  %2163 = phi float [ %2161, %2129 ], [ 0.000000e+00, %2105 ]
  %2164 = add i32 %1051, 0
  %2165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2164, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2166 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2165, i32 0)  ; GetDimensions(handle,mipLevel)
  %2167 = extractvalue %dx.types.Dimensions %2166, 0
  %2168 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2167)  ; FirstbitLo(value)
  %2169 = uitofp i32 %2168 to float
  %2170 = fsub fast float %636, %1034
  %2171 = fadd fast float %2170, %2169
  %2172 = fmul fast float %1033, %626
  %2173 = fmul fast float %1033, %627
  %2174 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %2174, float %2172, float %2173, float undef, float undef, i32 0, i32 0, i32 undef, float %2171)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2176 = extractvalue %dx.types.ResRet.f32 %2175, 0
  %2177 = fmul fast float %2176, %2163
  %2178 = call float @dx.op.binary.f32(i32 35, float %2097, float %2177)  ; FMax(a,b)
  br label %2179

; <label>:2179                                    ; preds = %2162, %2104
  %2180 = phi float [ %2178, %2162 ], [ %2097, %2104 ]
  %2181 = fmul fast float %627, 3.906250e-03
  %2182 = fmul fast float %626, 7.812500e-03
  %2183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2184 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %1097, %dx.types.Handle %2183, float %2182, float %2181, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %2185 = add i32 %1051, 0
  %2186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2187 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2186, i32 0)  ; GetDimensions(handle,mipLevel)
  %2188 = extractvalue %dx.types.Dimensions %2187, 0
  %2189 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2188)  ; FirstbitLo(value)
  %2190 = uitofp i32 %2189 to float
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 2
  %2195 = fadd fast float %636, -7.000000e+00
  %2196 = fadd fast float %2195, %2190
  %2197 = fadd fast float %2196, %2192
  %2198 = fadd fast float %2197, %2194
  %2199 = call float @dx.op.binary.f32(i32 35, float %2198, float 0.000000e+00)  ; FMax(a,b)
  %2200 = and i32 %890, 8
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2218, label %2202

; <label>:2202                                    ; preds = %2179
  %2203 = fadd fast float %1030, 1.000000e+00
  %2204 = fmul fast float %1389, %2203
  %2205 = fsub fast float %2204, %1030
  %2206 = fsub fast float %2203, %2205
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = fsub fast float 1.000000e+00, %2204
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fsub fast float %2207, %2209
  %2211 = fsub fast float %2180, %2209
  %2212 = fdiv fast float %2211, %2210
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fmul fast float %2213, 2.000000e+00
  %2215 = fsub fast float 3.000000e+00, %2214
  %2216 = fmul fast float %2213, %2213
  %2217 = fmul fast float %2216, %2215
  br label %2218

; <label>:2218                                    ; preds = %2202, %2179
  %2219 = phi float [ %2217, %2202 ], [ %2180, %2179 ]
  %2220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2221 = extractvalue %dx.types.CBufRet.f32 %2220, 3
  %2222 = fmul fast float %2221, %2219
  %2223 = fmul fast float %2222, %880
  %2224 = fadd fast float %2223, %847
  %2225 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2226 = and i32 %890, 32
  %2227 = icmp eq i32 %2226, 0
  br i1 %2227, label %2244, label %2228

; <label>:2228                                    ; preds = %2218
  %2229 = add i32 %1054, 0
  %2230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2229, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2230, %dx.types.Handle %63, float %2222, float %957, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2232 = extractvalue %dx.types.ResRet.f32 %2231, 0
  %2233 = extractvalue %dx.types.ResRet.f32 %2231, 1
  %2234 = extractvalue %dx.types.ResRet.f32 %2231, 2
  %2235 = extractvalue %dx.types.ResRet.f32 %2231, 3
  %2236 = and i32 %1048, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = lshr i32 %1048, 8
  %2239 = and i32 %2238, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2235, %2237
  %2242 = fadd fast float %2241, %2240
  %2243 = fmul fast float %2242, 0x3F70101000000000
  br label %2244

; <label>:2244                                    ; preds = %2228, %2218
  %2245 = phi float [ %2232, %2228 ], [ %948, %2218 ]
  %2246 = phi float [ %2233, %2228 ], [ %949, %2218 ]
  %2247 = phi float [ %2234, %2228 ], [ %950, %2218 ]
  %2248 = phi float [ %2243, %2228 ], [ %951, %2218 ]
  %2249 = fsub fast float %2245, %902
  %2250 = fsub fast float %2246, %903
  %2251 = fsub fast float %2247, %904
  %2252 = fmul fast float %2249, %2222
  %2253 = fmul fast float %2250, %2222
  %2254 = fmul fast float %2251, %2222
  %2255 = fadd fast float %2252, %902
  %2256 = fadd fast float %2253, %903
  %2257 = fadd fast float %2254, %904
  %2258 = fsub fast float %2248, %905
  %2259 = fmul fast float %2258, %2222
  %2260 = fadd fast float %2259, %905
  %2261 = fsub fast float %2101, %908
  %2262 = fmul fast float %2222, %2261
  %2263 = fadd fast float %2262, %908
  %2264 = fadd fast float %2100, -1.000000e+00
  %2265 = fmul fast float %2222, %2264
  %2266 = fadd fast float %2265, 1.000000e+00
  %2267 = fmul fast float %2223, %2098
  %2268 = fmul fast float %2223, %2099
  %2269 = fadd fast float %2267, %1746
  %2270 = fadd fast float %2268, %1747
  %2271 = fmul fast float %911, %767
  %2272 = fadd fast float %2271, %912
  %2273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2274 = extractvalue %dx.types.CBufRet.f32 %2273, 2
  %2275 = fcmp fast oge float %2272, %2274
  %2276 = select i1 %2275, i32 512, i32 0
  %2277 = or i32 %1417, %844
  %2278 = or i32 %2277, %1423
  %2279 = or i32 %2278, %1766
  %2280 = or i32 %2279, %1399
  %2281 = or i32 %2280, %1415
  %2282 = or i32 %2281, %1401
  %2283 = or i32 %2282, %1421
  %2284 = or i32 %2283, %1770
  %2285 = or i32 %2284, %2276
  %2286 = and i32 %829, 65535
  %2287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2286)  ; LegacyF16ToF32(value)
  %2288 = lshr i32 %829, 16
  %2289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2288)  ; LegacyF16ToF32(value)
  %2290 = and i32 %830, 65535
  %2291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2290)  ; LegacyF16ToF32(value)
  %2292 = lshr i32 %830, 16
  %2293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2292)  ; LegacyF16ToF32(value)
  %2294 = fmul fast float %2255, %880
  %2295 = fmul fast float %2256, %880
  %2296 = fmul fast float %2257, %880
  %2297 = fmul fast float %2260, %880
  %2298 = fadd fast float %2287, %2294
  %2299 = fadd fast float %2289, %2295
  %2300 = fadd fast float %2291, %2296
  %2301 = fadd fast float %2293, %2297
  %2302 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2298)  ; LegacyF32ToF16(value)
  %2303 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2299)  ; LegacyF32ToF16(value)
  %2304 = shl i32 %2303, 16
  %2305 = or i32 %2304, %2302
  %2306 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2300)  ; LegacyF32ToF16(value)
  %2307 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2301)  ; LegacyF32ToF16(value)
  %2308 = shl i32 %2307, 16
  %2309 = or i32 %2308, %2306
  %2310 = and i32 %842, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = lshr i32 %842, 16
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = fmul fast float %2266, %880
  %2315 = fmul fast float %2263, %880
  %2316 = fadd fast float %2311, %2314
  %2317 = fadd fast float %2313, %2315
  %2318 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2316)  ; LegacyF32ToF16(value)
  %2319 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2317)  ; LegacyF32ToF16(value)
  %2320 = shl i32 %2319, 16
  %2321 = or i32 %2320, %2318
  %2322 = fcmp fast ogt float %2272, 0.000000e+00
  %2323 = select i1 %2322, float 1.000000e+00, float 0.000000e+00
  %2324 = and i32 %841, 65535
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = lshr i32 %841, 16
  %2327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2326)  ; LegacyF16ToF32(value)
  %2328 = fmul fast float %2272, %880
  %2329 = fmul fast float %2323, %880
  %2330 = fadd fast float %2325, %2328
  %2331 = fadd fast float %2327, %2329
  %2332 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2333 = call float @dx.op.unary.f32(i32 7, float %2331)  ; Saturate(value)
  %2334 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2332)  ; LegacyF32ToF16(value)
  %2335 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2333)  ; LegacyF32ToF16(value)
  %2336 = shl i32 %2335, 16
  %2337 = or i32 %2336, %2334
  br label %2338

; <label>:2338                                    ; preds = %2244, %827
  %2339 = phi i32 [ %1080, %2244 ], [ %828, %827 ]
  %2340 = phi i32 [ %2305, %2244 ], [ %829, %827 ]
  %2341 = phi i32 [ %2309, %2244 ], [ %830, %827 ]
  %2342 = phi float [ %2269, %2244 ], [ %831, %827 ]
  %2343 = phi float [ %2270, %2244 ], [ %832, %827 ]
  %2344 = phi float [ %1391, %2244 ], [ %833, %827 ]
  %2345 = phi float [ %1392, %2244 ], [ %834, %827 ]
  %2346 = phi float [ %1393, %2244 ], [ %835, %827 ]
  %2347 = phi float [ %1094, %2244 ], [ %836, %827 ]
  %2348 = phi float [ %1395, %2244 ], [ %837, %827 ]
  %2349 = phi float [ %1397, %2244 ], [ %838, %827 ]
  %2350 = phi i32 [ %887, %2244 ], [ %839, %827 ]
  %2351 = phi float [ %1413, %2244 ], [ %840, %827 ]
  %2352 = phi i32 [ %2337, %2244 ], [ %841, %827 ]
  %2353 = phi i32 [ %2321, %2244 ], [ %842, %827 ]
  %2354 = phi float [ %1764, %2244 ], [ %843, %827 ]
  %2355 = phi i32 [ %2285, %2244 ], [ %844, %827 ]
  %2356 = phi float [ %2184, %2244 ], [ %845, %827 ]
  %2357 = phi float [ %2199, %2244 ], [ %846, %827 ]
  %2358 = phi float [ %2225, %2244 ], [ %847, %827 ]
  %2359 = icmp eq i32 %853, 0
  br i1 %2359, label %2360, label %827

; <label>:2360                                    ; preds = %2338
  br label %2361

; <label>:2361                                    ; preds = %2360, %822
  %2362 = phi i32 [ %594, %822 ], [ %2339, %2360 ]
  %2363 = phi i32 [ %571, %822 ], [ %2340, %2360 ]
  %2364 = phi i32 [ %571, %822 ], [ %2341, %2360 ]
  %2365 = phi float [ 0.000000e+00, %822 ], [ %2342, %2360 ]
  %2366 = phi float [ 0.000000e+00, %822 ], [ %2343, %2360 ]
  %2367 = phi float [ 0.000000e+00, %822 ], [ %2344, %2360 ]
  %2368 = phi float [ 0.000000e+00, %822 ], [ %2345, %2360 ]
  %2369 = phi float [ 0.000000e+00, %822 ], [ %2346, %2360 ]
  %2370 = phi float [ 0.000000e+00, %822 ], [ %2347, %2360 ]
  %2371 = phi float [ 0.000000e+00, %822 ], [ %2348, %2360 ]
  %2372 = phi float [ 0.000000e+00, %822 ], [ %2349, %2360 ]
  %2373 = phi i32 [ 0, %822 ], [ %2350, %2360 ]
  %2374 = phi float [ 0.000000e+00, %822 ], [ %2351, %2360 ]
  %2375 = phi i32 [ %571, %822 ], [ %2352, %2360 ]
  %2376 = phi i32 [ %571, %822 ], [ %2353, %2360 ]
  %2377 = phi float [ 0.000000e+00, %822 ], [ %2354, %2360 ]
  %2378 = phi i32 [ 0, %822 ], [ %2355, %2360 ]
  %2379 = phi float [ 0.000000e+00, %822 ], [ %2356, %2360 ]
  %2380 = phi float [ 0.000000e+00, %822 ], [ %2357, %2360 ]
  %2381 = phi float [ 0.000000e+00, %822 ], [ %2358, %2360 ]
  %2382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2383 = extractvalue %dx.types.CBufRet.f32 %2382, 2
  %2384 = fmul fast float %2383, 0x3FE3C6EF40000000
  %2385 = frem fast float %91, 2.560000e+02
  %2386 = frem fast float %92, 2.560000e+02
  %2387 = fptoui float %2385 to i32
  %2388 = fptoui float %2386 to i32
  %2389 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %36, i32 0, i32 %2387, i32 %2388, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.ResRet.f32 %2389, 1
  %2392 = fadd fast float %2390, %2384
  %2393 = fadd fast float %2391, %2384
  %2394 = call float @dx.op.unary.f32(i32 22, float %2392)  ; Frc(value)
  %2395 = call float @dx.op.unary.f32(i32 22, float %2393)  ; Frc(value)
  %2396 = fcmp fast ogt float %531, 0.000000e+00
  %2397 = fcmp fast olt float %531, 0.000000e+00
  %2398 = zext i1 %2396 to i32
  %2399 = zext i1 %2397 to i32
  %2400 = sub nsw i32 %2398, %2399
  %2401 = sitofp i32 %2400 to float
  %2402 = fadd fast float %2401, %531
  %2403 = fdiv fast float -1.000000e+00, %2402
  %2404 = fmul fast float %527, %529
  %2405 = fmul fast float %2404, %2403
  %2406 = fmul fast float %527, %527
  %2407 = fmul fast float %2406, %2401
  %2408 = fmul fast float %2407, %2403
  %2409 = fadd fast float %2408, 1.000000e+00
  %2410 = fmul fast float %2405, %2401
  %2411 = fmul fast float %2401, %527
  %2412 = fsub fast float -0.000000e+00, %2411
  %2413 = fmul fast float %529, %529
  %2414 = fmul fast float %2413, %2403
  %2415 = fadd fast float %2414, %2401
  %2416 = fsub fast float -0.000000e+00, %529
  %2417 = and i32 %2363, 65535
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = lshr i32 %2363, 16
  %2420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2419)  ; LegacyF16ToF32(value)
  %2421 = and i32 %2364, 65535
  %2422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2421)  ; LegacyF16ToF32(value)
  %2423 = lshr i32 %2364, 16
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = and i32 %2376, 65535
  %2426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2425)  ; LegacyF16ToF32(value)
  %2427 = lshr i32 %2376, 16
  %2428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2427)  ; LegacyF16ToF32(value)
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = call float @dx.op.unary.f32(i32 83, float %563)  ; DerivCoarseX(value)
  %2431 = call float @dx.op.unary.f32(i32 83, float %564)  ; DerivCoarseX(value)
  %2432 = call float @dx.op.unary.f32(i32 83, float %565)  ; DerivCoarseX(value)
  %2433 = call float @dx.op.unary.f32(i32 84, float %563)  ; DerivCoarseY(value)
  %2434 = call float @dx.op.unary.f32(i32 84, float %564)  ; DerivCoarseY(value)
  %2435 = call float @dx.op.unary.f32(i32 84, float %565)  ; DerivCoarseY(value)
  %2436 = fadd fast float %2430, %563
  %2437 = fadd fast float %2431, %564
  %2438 = fadd fast float %2432, %565
  %2439 = fadd fast float %2433, %563
  %2440 = fadd fast float %2434, %564
  %2441 = fadd fast float %2435, %565
  %2442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2443 = extractvalue %dx.types.CBufRet.f32 %2442, 0
  %2444 = extractvalue %dx.types.CBufRet.f32 %2442, 1
  %2445 = extractvalue %dx.types.CBufRet.f32 %2442, 2
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2448 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2449 = fmul fast float %2443, %91
  %2450 = fmul fast float %2449, %2447
  %2451 = fmul fast float %2444, %92
  %2452 = fmul fast float %2451, %2448
  %2453 = fptoui float %2450 to i32
  %2454 = fptoui float %2452 to i32
  %2455 = fadd fast float %2443, -1.000000e+00
  %2456 = fadd fast float %2444, -1.000000e+00
  %2457 = fptoui float %2455 to i32
  %2458 = fptoui float %2456 to i32
  %2459 = call i32 @dx.op.binary.i32(i32 40, i32 %2453, i32 %2457)  ; UMin(a,b)
  %2460 = call i32 @dx.op.binary.i32(i32 40, i32 %2454, i32 %2458)  ; UMin(a,b)
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 2
  %2463 = extractvalue %dx.types.CBufRet.f32 %2461, 3
  %2464 = fmul fast float %2462, %524
  %2465 = fsub fast float %2464, %2463
  %2466 = fadd fast float %2445, -1.000000e+00
  %2467 = call float @dx.op.binary.f32(i32 36, float %2465, float %2466)  ; FMin(a,b)
  %2468 = fptoui float %2467 to i32
  %2469 = fptoui float %2443 to i32
  %2470 = fptoui float %2444 to i32
  %2471 = mul i32 %2468, %2470
  %2472 = add i32 %2471, %2460
  %2473 = mul i32 %2472, %2469
  %2474 = add i32 %2473, %2459
  %2475 = shl i32 %2474, 2
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = and i32 %2477, 1023
  %2479 = lshr i32 %2477, 10
  %2480 = icmp eq i32 %2478, 0
  br i1 %2480, label %2877, label %2481

; <label>:2481                                    ; preds = %2361
  %2482 = and i32 %2477, 1023
  br label %2483

; <label>:2483                                    ; preds = %2604, %2481
  %2484 = phi float [ %2605, %2604 ], [ 0.000000e+00, %2481 ]
  %2485 = phi float [ %2606, %2604 ], [ 0.000000e+00, %2481 ]
  %2486 = phi float [ %2607, %2604 ], [ 0.000000e+00, %2481 ]
  %2487 = phi float [ %2608, %2604 ], [ %2365, %2481 ]
  %2488 = phi float [ %2609, %2604 ], [ %2366, %2481 ]
  %2489 = phi float [ %2610, %2604 ], [ %2426, %2481 ]
  %2490 = phi float [ %2611, %2604 ], [ %2429, %2481 ]
  %2491 = phi float [ %2612, %2604 ], [ 0.000000e+00, %2481 ]
  %2492 = phi float [ %2613, %2604 ], [ %2424, %2481 ]
  %2493 = phi float [ %2614, %2604 ], [ %2418, %2481 ]
  %2494 = phi float [ %2615, %2604 ], [ %2420, %2481 ]
  %2495 = phi float [ %2616, %2604 ], [ %2422, %2481 ]
  %2496 = phi i32 [ %2617, %2604 ], [ 0, %2481 ]
  %2497 = phi i32 [ %2553, %2604 ], [ 0, %2481 ]
  %2498 = add nuw nsw i32 %2497, %2479
  %2499 = shl i32 %2498, 2
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = shl i32 %2501, 8
  %2503 = or i32 %2502, 48
  %2504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2503, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.f32 %2504, 0
  %2506 = extractvalue %dx.types.ResRet.f32 %2504, 1
  %2507 = extractvalue %dx.types.ResRet.f32 %2504, 2
  %2508 = extractvalue %dx.types.ResRet.f32 %2504, 3
  %2509 = or i32 %2502, 64
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = extractvalue %dx.types.ResRet.i32 %2510, 1
  %2513 = or i32 %2502, 80
  %2514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.f32 %2514, 2
  %2516 = extractvalue %dx.types.ResRet.f32 %2514, 3
  %2517 = or i32 %2502, 96
  %2518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2517, i32 undef)  ; BufferLoad(srv,index,wot)
  %2519 = extractvalue %dx.types.ResRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.ResRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.ResRet.f32 %2518, 2
  %2522 = extractvalue %dx.types.ResRet.f32 %2518, 3
  %2523 = or i32 %2502, 112
  %2524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2523, i32 undef)  ; BufferLoad(srv,index,wot)
  %2525 = extractvalue %dx.types.ResRet.f32 %2524, 2
  %2526 = or i32 %2502, 128
  %2527 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2526, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.f32 %2527, 0
  %2529 = extractvalue %dx.types.ResRet.f32 %2527, 1
  %2530 = extractvalue %dx.types.ResRet.f32 %2527, 2
  %2531 = extractvalue %dx.types.ResRet.f32 %2527, 3
  %2532 = or i32 %2502, 144
  %2533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = extractvalue %dx.types.ResRet.f32 %2533, 1
  %2536 = extractvalue %dx.types.ResRet.f32 %2533, 2
  %2537 = extractvalue %dx.types.ResRet.f32 %2533, 3
  %2538 = or i32 %2502, 160
  %2539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2538, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2542 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2543 = or i32 %2502, 192
  %2544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2543, i32 undef)  ; BufferLoad(srv,index,wot)
  %2545 = extractvalue %dx.types.ResRet.i32 %2544, 0
  %2546 = or i32 %2502, 208
  %2547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.f32 %2547, 0
  %2549 = or i32 %2502, 248
  %2550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2549, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.f32 %2550, 0
  %2552 = extractvalue %dx.types.ResRet.f32 %2550, 1
  %2553 = add nuw nsw i32 %2497, 1
  %2554 = bitcast float %2508 to i32
  %2555 = and i32 %2554, 512
  %2556 = icmp ne i32 %2555, 0
  %2557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.f32 %2557, 0
  %2559 = extractvalue %dx.types.ResRet.f32 %2557, 1
  %2560 = extractvalue %dx.types.ResRet.f32 %2557, 2
  %2561 = extractvalue %dx.types.ResRet.f32 %2557, 3
  %2562 = call float @dx.op.dot4.f32(i32 56, float %2558, float %2559, float %2560, float %2561, float %563, float %564, float %565, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2563 = or i32 %2502, 16
  %2564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.ResRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.ResRet.f32 %2564, 2
  %2568 = extractvalue %dx.types.ResRet.f32 %2564, 3
  %2569 = call float @dx.op.dot4.f32(i32 56, float %2565, float %2566, float %2567, float %2568, float %563, float %564, float %565, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2570 = or i32 %2502, 32
  %2571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2570, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.f32 %2571, 0
  %2573 = extractvalue %dx.types.ResRet.f32 %2571, 1
  %2574 = extractvalue %dx.types.ResRet.f32 %2571, 2
  %2575 = extractvalue %dx.types.ResRet.f32 %2571, 3
  %2576 = call float @dx.op.dot4.f32(i32 56, float %2572, float %2573, float %2574, float %2575, float %563, float %564, float %565, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2577 = call float @dx.op.unary.f32(i32 27, float %2562)  ; Round_ni(value)
  %2578 = call float @dx.op.unary.f32(i32 6, float %2577)  ; FAbs(value)
  %2579 = call float @dx.op.unary.f32(i32 27, float %2569)  ; Round_ni(value)
  %2580 = call float @dx.op.unary.f32(i32 6, float %2579)  ; FAbs(value)
  %2581 = call float @dx.op.unary.f32(i32 6, float %2576)  ; FAbs(value)
  %2582 = call float @dx.op.unary.f32(i32 27, float %2581)  ; Round_ni(value)
  %2583 = fadd fast float %2580, %2578
  %2584 = fadd fast float %2583, %2582
  %2585 = fcmp fast oeq float %2584, 0.000000e+00
  %2586 = call float @dx.op.dot4.f32(i32 56, float %2558, float %2559, float %2560, float %2561, float %2436, float %2437, float %2438, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2587 = call float @dx.op.dot4.f32(i32 56, float %2565, float %2566, float %2567, float %2568, float %2436, float %2437, float %2438, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2588 = call float @dx.op.dot4.f32(i32 56, float %2558, float %2559, float %2560, float %2561, float %2439, float %2440, float %2441, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2589 = call float @dx.op.dot4.f32(i32 56, float %2565, float %2566, float %2567, float %2568, float %2439, float %2440, float %2441, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2590 = fsub fast float %2586, %2562
  %2591 = fsub fast float %2588, %2562
  %2592 = fsub fast float %2587, %2569
  %2593 = fsub fast float %2589, %2569
  %2594 = call float @dx.op.dot3.f32(i32 55, float %2505, float %2506, float %2507, float %527, float %529, float %531)  ; Dot3(ax,ay,az,bx,by,bz)
  %2595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2596 = extractvalue %dx.types.CBufRet.f32 %2595, 2
  %2597 = call float @dx.op.unary.f32(i32 6, float %2594)  ; FAbs(value)
  %2598 = fadd fast float %2597, %2596
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2595, 0
  %2601 = fcmp fast ogt float %2599, %2600
  %2602 = and i1 %2585, %2601
  %2603 = and i1 %2556, %2602
  br i1 %2603, label %2619, label %2604

; <label>:2604                                    ; preds = %2863, %2701, %2619, %2483
  %2605 = phi float [ %2484, %2619 ], [ %2484, %2701 ], [ %2873, %2863 ], [ %2484, %2483 ]
  %2606 = phi float [ %2485, %2619 ], [ %2485, %2701 ], [ %2874, %2863 ], [ %2485, %2483 ]
  %2607 = phi float [ %2486, %2619 ], [ %2486, %2701 ], [ %2875, %2863 ], [ %2486, %2483 ]
  %2608 = phi float [ %2487, %2619 ], [ %2487, %2701 ], [ %2837, %2863 ], [ %2487, %2483 ]
  %2609 = phi float [ %2488, %2619 ], [ %2488, %2701 ], [ %2838, %2863 ], [ %2488, %2483 ]
  %2610 = phi float [ %2489, %2619 ], [ %2489, %2701 ], [ %2832, %2863 ], [ %2489, %2483 ]
  %2611 = phi float [ %2490, %2619 ], [ %2490, %2701 ], [ %2829, %2863 ], [ %2490, %2483 ]
  %2612 = phi float [ %2491, %2619 ], [ %2491, %2701 ], [ %2826, %2863 ], [ %2491, %2483 ]
  %2613 = phi float [ %2492, %2619 ], [ %2492, %2701 ], [ %2824, %2863 ], [ %2492, %2483 ]
  %2614 = phi float [ %2493, %2619 ], [ %2493, %2701 ], [ %2819, %2863 ], [ %2493, %2483 ]
  %2615 = phi float [ %2494, %2619 ], [ %2494, %2701 ], [ %2820, %2863 ], [ %2494, %2483 ]
  %2616 = phi float [ %2495, %2619 ], [ %2495, %2701 ], [ %2821, %2863 ], [ %2495, %2483 ]
  %2617 = phi i32 [ %2627, %2619 ], [ %2627, %2701 ], [ %2627, %2863 ], [ %2496, %2483 ]
  %2618 = icmp eq i32 %2553, %2482
  br i1 %2618, label %2876, label %2483

; <label>:2619                                    ; preds = %2483
  %2620 = extractvalue %dx.types.ResRet.f32 %2524, 3
  %2621 = extractvalue %dx.types.ResRet.f32 %2524, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2524, 0
  %2623 = extractvalue %dx.types.ResRet.f32 %2514, 1
  %2624 = extractvalue %dx.types.ResRet.f32 %2514, 0
  %2625 = extractvalue %dx.types.ResRet.i32 %2510, 3
  %2626 = extractvalue %dx.types.ResRet.i32 %2510, 2
  %2627 = add i32 %2496, 1
  %2628 = add i32 %2625, 0
  %2629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2631 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2629, %dx.types.Handle %2630, float %2562, float %2569, float undef, float undef, i32 0, i32 0, i32 undef, float %2590, float %2592, float undef, float %2591, float %2593, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2632 = extractvalue %dx.types.ResRet.f32 %2631, 0
  %2633 = fmul fast float %2632, %2624
  %2634 = fadd fast float %2633, %2623
  %2635 = call float @dx.op.unary.f32(i32 7, float %2634)  ; Saturate(value)
  %2636 = fmul fast float %2562, %2519
  %2637 = call float @dx.op.tertiary.f32(i32 46, float %2520, float %2569, float %2636)  ; FMad(a,b,c)
  %2638 = fadd fast float %2637, %2622
  %2639 = fmul fast float %2562, %2521
  %2640 = call float @dx.op.tertiary.f32(i32 46, float %2522, float %2569, float %2639)  ; FMad(a,b,c)
  %2641 = fadd fast float %2640, %2621
  %2642 = fmul fast float %2590, %2519
  %2643 = call float @dx.op.tertiary.f32(i32 46, float %2520, float %2592, float %2642)  ; FMad(a,b,c)
  %2644 = fmul fast float %2590, %2521
  %2645 = call float @dx.op.tertiary.f32(i32 46, float %2522, float %2592, float %2644)  ; FMad(a,b,c)
  %2646 = fmul fast float %2591, %2519
  %2647 = call float @dx.op.tertiary.f32(i32 46, float %2520, float %2593, float %2646)  ; FMad(a,b,c)
  %2648 = fmul fast float %2591, %2521
  %2649 = call float @dx.op.tertiary.f32(i32 46, float %2522, float %2593, float %2648)  ; FMad(a,b,c)
  %2650 = add i32 %2626, 0
  %2651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2650, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2652 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2651, %dx.types.Handle %2630, float %2638, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float %2643, float %2645, float undef, float %2647, float %2649, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2653 = extractvalue %dx.types.ResRet.f32 %2652, 0
  %2654 = and i32 %2554, 1024
  %2655 = icmp ne i32 %2654, 0
  %2656 = fcmp fast ogt float %2653, 0x3FE0101020000000
  %2657 = uitofp i1 %2656 to float
  %2658 = select i1 %2655, float %2657, float %2653
  %2659 = and i32 %2554, 8192
  %2660 = icmp ne i32 %2659, 0
  %2661 = select i1 %2660, float %2620, float 1.000000e+00
  %2662 = fmul fast float %2562, 2.000000e+00
  %2663 = fadd fast float %2662, -1.000000e+00
  %2664 = call float @dx.op.unary.f32(i32 6, float %2663)  ; FAbs(value)
  %2665 = fmul fast float %2664, %2551
  %2666 = fsub fast float %2665, %2551
  %2667 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2668 = fmul fast float %2569, 2.000000e+00
  %2669 = fadd fast float %2668, -1.000000e+00
  %2670 = call float @dx.op.unary.f32(i32 6, float %2669)  ; FAbs(value)
  %2671 = fmul fast float %2670, %2552
  %2672 = fsub fast float %2671, %2552
  %2673 = call float @dx.op.unary.f32(i32 7, float %2672)  ; Saturate(value)
  %2674 = fmul fast float %2581, %2515
  %2675 = fsub fast float %2674, %2515
  %2676 = call float @dx.op.unary.f32(i32 7, float %2675)  ; Saturate(value)
  %2677 = fmul fast float %2635, %2661
  %2678 = fmul fast float %2677, %2632
  %2679 = fmul fast float %2678, %2667
  %2680 = fmul fast float %2679, %2658
  %2681 = fmul fast float %2680, %2673
  %2682 = fmul fast float %2681, %2676
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2685 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2686 = fsub fast float %2599, %2685
  %2687 = fmul fast float %2686, %2684
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fmul fast float %2682, %2516
  %2690 = fadd fast float %2682, %2516
  %2691 = fmul fast float %2690, %2525
  %2692 = fsub fast float %2691, %2525
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = and i32 %2554, 128
  %2695 = icmp ne i32 %2694, 0
  %2696 = select i1 %2695, float %2693, float %2689
  %2697 = fmul fast float %2696, %2688
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = fcmp fast ugt float %2697, %2699
  br i1 %2700, label %2701, label %2604

; <label>:2701                                    ; preds = %2619
  br i1 %2660, label %2604, label %2702

; <label>:2702                                    ; preds = %2701
  %2703 = and i32 %2554, 4
  %2704 = and i32 %2554, 8
  %2705 = add i32 %2511, 0
  %2706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2705, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2708 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2706, %dx.types.Handle %2707, float %2638, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float %2643, float %2645, float undef, float %2647, float %2649, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2709 = extractvalue %dx.types.ResRet.f32 %2708, 0
  %2710 = extractvalue %dx.types.ResRet.f32 %2708, 1
  %2711 = extractvalue %dx.types.ResRet.f32 %2708, 2
  %2712 = extractvalue %dx.types.ResRet.f32 %2708, 3
  %2713 = bitcast float %2537 to i32
  %2714 = and i32 %2713, 255
  %2715 = uitofp i32 %2714 to float
  %2716 = lshr i32 %2713, 8
  %2717 = and i32 %2716, 255
  %2718 = uitofp i32 %2717 to float
  %2719 = fmul fast float %2712, %2715
  %2720 = fadd fast float %2719, %2718
  %2721 = fmul fast float %2720, 0x3F70101000000000
  %2722 = add i32 %2512, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2722, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2723, %dx.types.Handle %2707, float %2638, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float %2643, float %2645, float undef, float %2647, float %2649, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = extractvalue %dx.types.ResRet.f32 %2724, 3
  %2729 = bitcast float %2531 to i32
  %2730 = and i32 %2729, 255
  %2731 = uitofp i32 %2730 to float
  %2732 = lshr i32 %2729, 8
  %2733 = and i32 %2732, 255
  %2734 = uitofp i32 %2733 to float
  %2735 = lshr i32 %2729, 16
  %2736 = and i32 %2735, 255
  %2737 = uitofp i32 %2736 to float
  %2738 = fmul fast float %2737, 0x3F70101000000000
  %2739 = fmul fast float %2725, %2731
  %2740 = fadd fast float %2739, %2734
  %2741 = fmul fast float %2740, 0x3F70101000000000
  %2742 = fadd fast float %2726, -5.000000e-01
  %2743 = fadd fast float %2728, -5.000000e-01
  %2744 = fmul fast float %2742, %2738
  %2745 = fmul fast float %2743, %2738
  %2746 = fadd fast float %2744, 5.000000e-01
  %2747 = fadd fast float %2745, 5.000000e-01
  %2748 = fmul fast float %2709, %2540
  %2749 = fmul fast float %2710, %2541
  %2750 = fmul fast float %2711, %2542
  %2751 = fmul fast float %2746, 2.000000e+00
  %2752 = fadd fast float %2751, -1.000000e+00
  %2753 = fmul fast float %2747, 2.000000e+00
  %2754 = fadd fast float %2753, -1.000000e+00
  %2755 = fadd fast float %2752, %2754
  %2756 = fmul fast float %2755, 5.000000e-01
  %2757 = fsub fast float %2752, %2754
  %2758 = fmul fast float %2757, 5.000000e-01
  %2759 = call float @dx.op.unary.f32(i32 6, float %2756)  ; FAbs(value)
  %2760 = fsub fast float 1.000000e+00, %2759
  %2761 = call float @dx.op.unary.f32(i32 6, float %2758)  ; FAbs(value)
  %2762 = fsub fast float %2760, %2761
  %2763 = call float @dx.op.dot3.f32(i32 55, float %2756, float %2758, float %2762, float %2756, float %2758, float %2762)  ; Dot3(ax,ay,az,bx,by,bz)
  %2764 = call float @dx.op.unary.f32(i32 25, float %2763)  ; Rsqrt(value)
  %2765 = fmul fast float %2756, %2764
  %2766 = fmul fast float %2758, %2764
  %2767 = fmul fast float %2764, %2762
  %2768 = fmul fast float %2767, %2505
  %2769 = fmul fast float %2767, %2506
  %2770 = fmul fast float %2767, %2507
  %2771 = fmul fast float %2765, %2528
  %2772 = fmul fast float %2765, %2529
  %2773 = fmul fast float %2765, %2530
  %2774 = fadd fast float %2771, %2768
  %2775 = fadd fast float %2772, %2769
  %2776 = fadd fast float %2773, %2770
  %2777 = fmul fast float %2766, %2534
  %2778 = fmul fast float %2766, %2535
  %2779 = fmul fast float %2766, %2536
  %2780 = fadd fast float %2774, %2777
  %2781 = fadd fast float %2775, %2778
  %2782 = fadd fast float %2776, %2779
  %2783 = call float @dx.op.dot3.f32(i32 55, float %2780, float %2781, float %2782, float %2780, float %2781, float %2782)  ; Dot3(ax,ay,az,bx,by,bz)
  %2784 = call float @dx.op.unary.f32(i32 25, float %2783)  ; Rsqrt(value)
  %2785 = fmul fast float %2780, %2784
  %2786 = fmul fast float %2781, %2784
  %2787 = fmul fast float %2782, %2784
  %2788 = fcmp fast ogt float %2594, %2600
  %2789 = fsub fast float -0.000000e+00, %2785
  %2790 = fsub fast float -0.000000e+00, %2786
  %2791 = fsub fast float -0.000000e+00, %2787
  %2792 = select i1 %2788, float %2785, float %2789
  %2793 = select i1 %2788, float %2786, float %2790
  %2794 = select i1 %2788, float %2787, float %2791
  %2795 = fmul fast float %2792, %2409
  %2796 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2410, float %2795)  ; FMad(a,b,c)
  %2797 = call float @dx.op.tertiary.f32(i32 46, float %2794, float %2412, float %2796)  ; FMad(a,b,c)
  %2798 = fmul fast float %2792, %2405
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2415, float %2798)  ; FMad(a,b,c)
  %2800 = call float @dx.op.tertiary.f32(i32 46, float %2794, float %2416, float %2799)  ; FMad(a,b,c)
  %2801 = icmp ne i32 %2704, 0
  %2802 = select i1 %2801, float 1.000000e+00, float 0.000000e+00
  %2803 = fmul fast float %2697, %2802
  %2804 = and i32 %2554, 1
  %2805 = icmp ne i32 %2804, 0
  %2806 = fadd fast float %2797, %2487
  %2807 = fadd fast float %2800, %2488
  %2808 = select i1 %2805, float %2806, float %2797
  %2809 = select i1 %2805, float %2807, float %2800
  %2810 = icmp ne i32 %2703, 0
  %2811 = select i1 %2810, float 1.000000e+00, float 0.000000e+00
  %2812 = fmul fast float %2697, %2811
  %2813 = fsub fast float %2748, %2493
  %2814 = fsub fast float %2749, %2494
  %2815 = fsub fast float %2750, %2495
  %2816 = fmul fast float %2813, %2812
  %2817 = fmul fast float %2814, %2812
  %2818 = fmul fast float %2815, %2812
  %2819 = fadd fast float %2816, %2493
  %2820 = fadd fast float %2817, %2494
  %2821 = fadd fast float %2818, %2495
  %2822 = fsub fast float %2721, %2492
  %2823 = fmul fast float %2822, %2812
  %2824 = fadd fast float %2823, %2492
  %2825 = fadd fast float %2697, %2491
  %2826 = call float @dx.op.unary.f32(i32 7, float %2825)  ; Saturate(value)
  %2827 = fsub fast float %2741, %2490
  %2828 = fmul fast float %2827, %2803
  %2829 = fadd fast float %2828, %2490
  %2830 = fsub fast float %2727, %2489
  %2831 = fmul fast float %2830, %2803
  %2832 = fadd fast float %2831, %2489
  %2833 = fsub fast float %2808, %2487
  %2834 = fsub fast float %2809, %2488
  %2835 = fmul fast float %2833, %2803
  %2836 = fmul fast float %2834, %2803
  %2837 = fadd fast float %2835, %2487
  %2838 = fadd fast float %2836, %2488
  %2839 = and i32 %2554, 16
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2863, label %2841

; <label>:2841                                    ; preds = %2702
  %2842 = bitcast float %2548 to i32
  %2843 = add i32 %2545, 0
  %2844 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2843, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2845 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2844, %dx.types.Handle %2707, float %2638, float %2641, float undef, float undef, i32 0, i32 0, i32 undef, float %2643, float %2645, float undef, float %2647, float %2649, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2846 = extractvalue %dx.types.ResRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.ResRet.f32 %2845, 1
  %2848 = extractvalue %dx.types.ResRet.f32 %2845, 2
  %2849 = and i32 %2842, 65535
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = fmul fast float %2846, %2540
  %2852 = fmul fast float %2847, %2541
  %2853 = fmul fast float %2848, %2542
  %2854 = and i32 %2554, 16384
  %2855 = icmp ne i32 %2854, 0
  %2856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2857 = extractvalue %dx.types.CBufRet.f32 %2856, 0
  %2858 = select i1 %2855, float %2857, float 1.000000e+00
  %2859 = fmul fast float %2858, %2850
  %2860 = fmul fast float %2851, %2859
  %2861 = fmul fast float %2852, %2859
  %2862 = fmul fast float %2853, %2859
  br label %2863

; <label>:2863                                    ; preds = %2841, %2702
  %2864 = phi float [ %2860, %2841 ], [ 0.000000e+00, %2702 ]
  %2865 = phi float [ %2861, %2841 ], [ 0.000000e+00, %2702 ]
  %2866 = phi float [ %2862, %2841 ], [ 0.000000e+00, %2702 ]
  %2867 = fsub fast float %2864, %2484
  %2868 = fsub fast float %2865, %2485
  %2869 = fsub fast float %2866, %2486
  %2870 = fmul fast float %2867, %2697
  %2871 = fmul fast float %2868, %2697
  %2872 = fmul fast float %2869, %2697
  %2873 = fadd fast float %2870, %2484
  %2874 = fadd fast float %2871, %2485
  %2875 = fadd fast float %2872, %2486
  br label %2604

; <label>:2876                                    ; preds = %2604
  br label %2877

; <label>:2877                                    ; preds = %2876, %2361
  %2878 = phi float [ 0.000000e+00, %2361 ], [ %2605, %2876 ]
  %2879 = phi float [ 0.000000e+00, %2361 ], [ %2606, %2876 ]
  %2880 = phi float [ 0.000000e+00, %2361 ], [ %2607, %2876 ]
  %2881 = phi float [ %2365, %2361 ], [ %2608, %2876 ]
  %2882 = phi float [ %2366, %2361 ], [ %2609, %2876 ]
  %2883 = phi float [ %2426, %2361 ], [ %2610, %2876 ]
  %2884 = phi float [ %2429, %2361 ], [ %2611, %2876 ]
  %2885 = phi float [ 0.000000e+00, %2361 ], [ %2612, %2876 ]
  %2886 = phi float [ %2424, %2361 ], [ %2613, %2876 ]
  %2887 = phi float [ %2418, %2361 ], [ %2614, %2876 ]
  %2888 = phi float [ %2420, %2361 ], [ %2615, %2876 ]
  %2889 = phi float [ %2422, %2361 ], [ %2616, %2876 ]
  %2890 = phi i32 [ 0, %2361 ], [ %2617, %2876 ]
  %2891 = uitofp i32 %2890 to float
  %2892 = fptoui float %2891 to i32
  %2893 = shl i32 %2892, 16
  %2894 = and i32 %2893, 16711680
  %2895 = call float @dx.op.dot2.f32(i32 54, float %2881, float %2882, float %2881, float %2882)  ; Dot2(ax,ay,bx,by)
  %2896 = fmul fast float %2895, 0x3FE3333340000000
  %2897 = fsub fast float 1.000000e+00, %2896
  %2898 = call float @dx.op.dot3.f32(i32 55, float %2881, float %2882, float %2897, float %2881, float %2882, float %2897)  ; Dot3(ax,ay,az,bx,by,bz)
  %2899 = call float @dx.op.unary.f32(i32 25, float %2898)  ; Rsqrt(value)
  %2900 = fmul fast float %2899, %2881
  %2901 = fmul fast float %2899, %2882
  %2902 = fmul fast float %2897, %2899
  %2903 = fmul fast float %2902, %527
  %2904 = fmul fast float %2902, %529
  %2905 = fmul fast float %2902, %531
  %2906 = fmul fast float %2900, %2409
  %2907 = fmul fast float %2900, %2410
  %2908 = fmul fast float %2900, %2412
  %2909 = fadd fast float %2903, %2906
  %2910 = fadd fast float %2904, %2907
  %2911 = fadd fast float %2905, %2908
  %2912 = fmul fast float %2901, %2405
  %2913 = fmul fast float %2901, %2415
  %2914 = fmul fast float %2901, %2416
  %2915 = fadd fast float %2909, %2912
  %2916 = fadd fast float %2910, %2913
  %2917 = fadd fast float %2911, %2914
  %2918 = call float @dx.op.dot3.f32(i32 55, float %2915, float %2916, float %2917, float %2915, float %2916, float %2917)  ; Dot3(ax,ay,az,bx,by,bz)
  %2919 = call float @dx.op.unary.f32(i32 25, float %2918)  ; Rsqrt(value)
  %2920 = fmul fast float %2915, %2919
  %2921 = fmul fast float %2916, %2919
  %2922 = fmul fast float %2917, %2919
  %2923 = fadd fast float %2886, 0xBFB99999A0000000
  %2924 = call float @dx.op.unary.f32(i32 7, float %2923)  ; Saturate(value)
  %2925 = fmul fast float %2924, 0x3FF1C71C80000000
  %2926 = call float @dx.op.binary.f32(i32 36, float %2886, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2927 = fsub fast float 1.000000e+00, %2925
  %2928 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2929 = fmul fast float %2928, %2887
  %2930 = fmul fast float %2928, %2888
  %2931 = fmul fast float %2928, %2889
  %2932 = call float @dx.op.unary.f32(i32 7, float %2929)  ; Saturate(value)
  %2933 = call float @dx.op.unary.f32(i32 7, float %2930)  ; Saturate(value)
  %2934 = call float @dx.op.unary.f32(i32 7, float %2931)  ; Saturate(value)
  %2935 = fmul fast float %2925, %2887
  %2936 = fmul fast float %2925, %2888
  %2937 = fmul fast float %2925, %2889
  %2938 = fadd fast float %2935, %2926
  %2939 = fadd fast float %2936, %2926
  %2940 = fadd fast float %2937, %2926
  %2941 = call float @dx.op.unary.f32(i32 7, float %2938)  ; Saturate(value)
  %2942 = call float @dx.op.unary.f32(i32 7, float %2939)  ; Saturate(value)
  %2943 = call float @dx.op.unary.f32(i32 7, float %2940)  ; Saturate(value)
  %2944 = fmul fast float %2942, 0x401CF23780000000
  %2945 = fadd fast float %2944, 0x3FF32641C0000000
  %2946 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %563, float %564, float %565)  ; Dot3(ax,ay,az,bx,by,bz)
  %2947 = call float @dx.op.unary.f32(i32 25, float %2946)  ; Rsqrt(value)
  %2948 = fmul fast float %2947, %563
  %2949 = fmul fast float %2947, %564
  %2950 = fmul fast float %2947, %565
  %2951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2952 = extractvalue %dx.types.CBufRet.f32 %2951, 0
  %2953 = fdiv fast float 1.000000e+00, %2945
  %2954 = select i1 %103, float %2953, float %2945
  %2955 = fadd fast float %2954, -1.000000e+00
  %2956 = fadd fast float %2954, 1.000000e+00
  %2957 = fdiv fast float %2955, %2956
  %2958 = fmul fast float %2957, %2957
  %2959 = call float @dx.op.dot3.f32(i32 55, float %2948, float %2949, float %2950, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %2960 = select i1 %103, float 0.000000e+00, float %2952
  %2961 = fadd fast float %2959, %2960
  %2962 = call float @dx.op.binary.f32(i32 35, float %2961, float -1.000000e+00)  ; FMax(a,b)
  %2963 = call float @dx.op.binary.f32(i32 36, float %2962, float 1.000000e+00)  ; FMin(a,b)
  %2964 = fmul fast float %2954, %2954
  %2965 = fmul fast float %2963, %2963
  %2966 = fsub fast float 1.000000e+00, %2965
  %2967 = fmul fast float %2964, %2966
  %2968 = fsub fast float 1.000000e+00, %2967
  %2969 = fcmp fast olt float %2954, 1.000000e+00
  %2970 = select i1 %2969, float %2965, float %2968
  %2971 = fcmp fast ogt float %2968, 0.000000e+00
  %2972 = fsub fast float 1.000000e+00, %2958
  %2973 = call float @dx.op.unary.f32(i32 24, float %2970)  ; Sqrt(value)
  %2974 = fsub fast float 1.000000e+00, %2973
  %2975 = call float @dx.op.unary.f32(i32 23, float %2974)  ; Log(value)
  %2976 = fmul fast float %2975, 5.000000e+00
  %2977 = call float @dx.op.unary.f32(i32 21, float %2976)  ; Exp(value)
  %2978 = fmul fast float %2977, %2972
  %2979 = fadd fast float %2978, %2958
  %2980 = select i1 %2971, float %2979, float 1.000000e+00
  %2981 = select i1 %103, float %2980, float 0.000000e+00
  %2982 = lshr i32 %2362, 24
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = call float @dx.op.unary.f32(i32 7, float %2984)  ; Saturate(value)
  %2986 = fmul fast float %563, %563
  %2987 = fmul fast float %564, %564
  %2988 = fadd fast float %2987, %2986
  %2989 = fmul fast float %565, %565
  %2990 = fadd fast float %2988, %2989
  %2991 = call float @dx.op.unary.f32(i32 24, float %2990)  ; Sqrt(value)
  %2992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2993 = extractvalue %dx.types.CBufRet.f32 %2992, 0
  %2994 = fmul fast float %2993, %2991
  %2995 = extractvalue %dx.types.CBufRet.f32 %2992, 1
  %2996 = fadd fast float %2994, %2995
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  %2998 = fmul fast float %2985, 2.550000e+02
  %2999 = fmul fast float %2998, %2997
  %3000 = fptoui float %2999 to i32
  %3001 = fsub fast float -0.000000e+00, %2948
  %3002 = fsub fast float -0.000000e+00, %2949
  %3003 = fsub fast float -0.000000e+00, %2950
  %3004 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2922, float %3001, float %3002, float %3003)  ; Dot3(ax,ay,az,bx,by,bz)
  %3005 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3006 = fsub fast float 1.000000e+00, %2941
  %3007 = fsub fast float 1.000000e+00, %2942
  %3008 = fsub fast float 1.000000e+00, %2943
  %3009 = fmul fast float %2981, %3006
  %3010 = fmul fast float %2981, %3007
  %3011 = fmul fast float %2981, %3008
  %3012 = fadd fast float %3009, %2941
  %3013 = fadd fast float %3010, %2942
  %3014 = fadd fast float %3011, %2943
  %3015 = and i32 %2375, 65535
  %3016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3015)  ; LegacyF16ToF32(value)
  %3017 = lshr i32 %2375, 16
  %3018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3017)  ; LegacyF16ToF32(value)
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 1
  %3021 = fadd fast float %3020, %3016
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = fcmp fast ogt float %3022, 0.000000e+00
  %3024 = call float @dx.op.unary.f32(i32 6, float %3005)  ; FAbs(value)
  %3025 = select i1 %3023, float %3024, float 0.000000e+00
  %3026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3022, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  %3028 = extractvalue %dx.types.ResRet.f32 %3026, 1
  %3029 = extractvalue %dx.types.ResRet.f32 %3026, 2
  %3030 = fadd fast float %3027, -5.000000e-01
  %3031 = fadd fast float %3028, -5.000000e-01
  %3032 = fadd fast float %3029, -5.000000e-01
  %3033 = fmul fast float %2941, 4.000000e+00
  %3034 = fmul fast float %3033, %3006
  %3035 = fmul fast float %3034, %3018
  %3036 = fmul fast float %3035, %3030
  %3037 = fmul fast float %2942, 4.000000e+00
  %3038 = fmul fast float %3037, %3007
  %3039 = fmul fast float %3038, %3018
  %3040 = fmul fast float %3039, %3031
  %3041 = fmul fast float %2943, 4.000000e+00
  %3042 = fmul fast float %3041, %3008
  %3043 = fmul fast float %3042, %3018
  %3044 = fmul fast float %3043, %3032
  %3045 = fadd fast float %3012, %3036
  %3046 = fadd fast float %3013, %3040
  %3047 = fadd fast float %3014, %3044
  %3048 = call float @dx.op.unary.f32(i32 7, float %3045)  ; Saturate(value)
  %3049 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3050 = call float @dx.op.unary.f32(i32 7, float %3047)  ; Saturate(value)
  %3051 = fptoui float %91 to i32
  %3052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3053 = extractvalue %dx.types.CBufRet.f32 %3052, 0
  %3054 = fmul fast float %3053, 5.000000e-01
  %3055 = fptoui float %3054 to i32
  %3056 = icmp eq i32 %3051, %3055
  %3057 = fptoui float %92 to i32
  %3058 = extractvalue %dx.types.CBufRet.f32 %3052, 1
  %3059 = fmul fast float %3058, 5.000000e-01
  %3060 = fptoui float %3059 to i32
  %3061 = icmp eq i32 %3057, %3060
  %3062 = and i1 %3056, %3061
  br i1 %3062, label %3063, label %3096

; <label>:3063                                    ; preds = %2877
  %3064 = call float @dx.op.binary.f32(i32 35, float %3049, float %3050)  ; FMax(a,b)
  %3065 = call float @dx.op.binary.f32(i32 35, float %3048, float %3064)  ; FMax(a,b)
  %3066 = fsub fast float 1.000000e+00, %3065
  %3067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3068 = extractvalue %dx.types.CBufRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.CBufRet.f32 %3067, 1
  %3070 = extractvalue %dx.types.CBufRet.f32 %3067, 2
  %3071 = fadd fast float %3068, %563
  %3072 = fadd fast float %3069, %564
  %3073 = fadd fast float %3070, %565
  %3074 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %46, i32 0, i32 %3051, i32 %3057, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3075 = extractvalue %dx.types.ResRet.f32 %3074, 0
  %3076 = fcmp fast ogt float %3075, -1.000000e+00
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 1
  %3079 = select i1 %3076, float %3078, float 1.000000e+00
  %3080 = fadd fast float %3075, 1.000000e+00
  %3081 = fmul fast float %3079, %3080
  %3082 = call float @dx.op.unary.f32(i32 6, float %3081)  ; FAbs(value)
  %3083 = call float @dx.op.unary.f32(i32 83, float %517)  ; DerivCoarseX(value)
  %3084 = call float @dx.op.unary.f32(i32 83, float %518)  ; DerivCoarseX(value)
  %3085 = call float @dx.op.unary.f32(i32 84, float %517)  ; DerivCoarseY(value)
  %3086 = call float @dx.op.unary.f32(i32 84, float %518)  ; DerivCoarseY(value)
  %3087 = fadd fast float %3068, %267
  %3088 = fadd fast float %3069, %268
  %3089 = fadd fast float %3070, %269
  %3090 = fadd fast float %3068, %317
  %3091 = fadd fast float %3069, %318
  %3092 = fadd fast float %3070, %319
  %3093 = fadd fast float %3068, %367
  %3094 = fadd fast float %3069, %368
  %3095 = fadd fast float %3070, %369
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %3071, float %3072, float %3073, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %91, float %92, float 0.000000e+00, float %524, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %736, float %737, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %699, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %701, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %714, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %716, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %3082, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2981, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %3048, float %3049, float %3050, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %3066, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %588, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %97, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %2374, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %2377, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %3083, float %3084, float %3085, float %3086, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 180, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 196, i32 %97, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 200, i32 %99, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 204, i32 %101, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 208, i32 %173, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 212, i32 %179, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 216, i32 %180, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 220, float %3087, float %3088, float %3089, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 232, float %3090, float %3091, float %3092, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 244, float %3093, float %3094, float %3095, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 256, float %470, float %474, float %478, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 268, float %500, float %501, float %502, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 280, float %509, float %510, float %511, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 292, float %519, float %520, float %521, float %522, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 308, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %3096

; <label>:3096                                    ; preds = %3063, %2877
  %3097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3098 = extractvalue %dx.types.CBufRet.f32 %3097, 3
  %3099 = fmul fast float %3098, %2884
  %3100 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3101 = call float @dx.op.unary.f32(i32 7, float %2883)  ; Saturate(value)
  %3102 = fsub fast float 1.000000e+00, %2885
  %3103 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3102)  ; FMin(a,b)
  %3104 = fmul fast float %517, 6.553500e+04
  %3105 = call float @dx.op.unary.f32(i32 26, float %3104)  ; Round_ne(value)
  %3106 = fptosi float %3105 to i32
  %3107 = call i32 @dx.op.binary.i32(i32 37, i32 %3106, i32 0)  ; IMax(a,b)
  %3108 = call i32 @dx.op.binary.i32(i32 38, i32 %3107, i32 65535)  ; IMin(a,b)
  %3109 = fmul fast float %518, 6.553500e+04
  %3110 = call float @dx.op.unary.f32(i32 26, float %3109)  ; Round_ne(value)
  %3111 = fptosi float %3110 to i32
  %3112 = call i32 @dx.op.binary.i32(i32 37, i32 %3111, i32 0)  ; IMax(a,b)
  %3113 = call i32 @dx.op.binary.i32(i32 38, i32 %3112, i32 65535)  ; IMin(a,b)
  %3114 = shl i32 %3113, 16
  %3115 = or i32 %3114, %3108
  %3116 = call float @dx.op.dot3.f32(i32 55, float %2941, float %2942, float %2943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3117 = fsub fast float 1.000000e+00, %3116
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %58, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = and i32 %3119, 255
  %3121 = uitofp i32 %3120 to float
  %3122 = lshr i32 %3119, 8
  %3123 = and i32 %3122, 255
  %3124 = uitofp i32 %3123 to float
  %3125 = fmul fast float %3124, %3117
  %3126 = fadd fast float %3125, %3121
  %3127 = fmul fast float %3126, 0x3F70101020000000
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  %3129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3130 = extractvalue %dx.types.CBufRet.f32 %3129, 0
  %3131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3133 = extractvalue %dx.types.CBufRet.i32 %3132, 3
  %3134 = and i32 %3133, 3
  %3135 = icmp ne i32 %3134, 0
  %3136 = and i32 %3133, 4
  %3137 = icmp ne i32 %3136, 0
  %3138 = and i1 %3135, %3137
  br i1 %3138, label %3139, label %3150

; <label>:3139                                    ; preds = %3096
  %3140 = extractvalue %dx.types.CBufRet.f32 %3131, 3
  %3141 = fmul fast float %3140, %92
  %3142 = extractvalue %dx.types.CBufRet.f32 %3131, 2
  %3143 = fmul fast float %3142, %91
  %3144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %3143, float %3141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3145 = extractvalue %dx.types.ResRet.f32 %3144, 0
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 0
  %3149 = fcmp fast olt float %3146, %3148
  br label %3153

; <label>:3150                                    ; preds = %3096
  %3151 = icmp eq i32 %3136, 0
  %3152 = and i1 %3135, %3151
  br label %3153

; <label>:3153                                    ; preds = %3150, %3139
  %3154 = phi i1 [ %3149, %3139 ], [ %3152, %3150 ]
  %3155 = fsub fast float -0.000000e+00, %565
  %3156 = select i1 %3154, float 0.000000e+00, float %2943
  %3157 = fmul fast float %2959, 2.000000e+00
  %3158 = fmul fast float %3157, %2920
  %3159 = fmul fast float %3157, %2921
  %3160 = fmul fast float %3157, %2922
  %3161 = fsub fast float %2948, %3158
  %3162 = fsub fast float %2949, %3159
  %3163 = fsub fast float %2950, %3160
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 0
  %3166 = bitcast float %3165 to i32
  %3167 = lshr i32 %3166, 8
  %3168 = and i32 %3167, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = fptoui float %3169 to i32
  %3171 = and i32 %3170, 4
  %3172 = icmp ne i32 %3171, 0
  %3173 = select i1 %3172, float %3101, float 1.000000e+00
  %3174 = call float @dx.op.binary.f32(i32 36, float %3173, float 1.000000e+00)  ; FMin(a,b)
  %3175 = fsub fast float 1.000000e+00, %3174
  %3176 = bitcast float %3175 to i32
  %3177 = ashr i32 %3176, 1
  %3178 = add nsw i32 %3177, 532487669
  %3179 = bitcast i32 %3178 to float
  %3180 = fsub fast float 1.000000e+00, %3100
  %3181 = call float @dx.op.binary.f32(i32 35, float %3180, float 0x3F847AE140000000)  ; FMax(a,b)
  %3182 = fmul fast float %3181, %3181
  %3183 = fmul fast float %3182, %3182
  %3184 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %3179, float %3183, float %3184, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3186 = extractvalue %dx.types.ResRet.f32 %3185, 0
  %3187 = and i32 %3170, 1
  %3188 = icmp ne i32 %3187, 0
  %3189 = fsub fast float 1.000000e+00, %3173
  %3190 = bitcast float %3189 to i32
  %3191 = sub nsw i32 2129859010, %3190
  %3192 = bitcast i32 %3191 to float
  %3193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3194 = extractvalue %dx.types.CBufRet.i32 %3193, 0
  %3195 = icmp eq i32 %3194, 1
  %3196 = select i1 %3195, float 0.000000e+00, float 1.000000e+00
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3199 = fcmp fast ogt float %3198, 0.000000e+00
  %3200 = fcmp fast ogt float %3196, 0.000000e+00
  %3201 = and i1 %3199, %3200
  br i1 %3201, label %3202, label %3386, !dx.controlflow.hints !123

; <label>:3202                                    ; preds = %3153
  %3203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3204 = extractvalue %dx.types.CBufRet.f32 %3203, 0
  %3205 = extractvalue %dx.types.CBufRet.f32 %3203, 1
  %3206 = extractvalue %dx.types.CBufRet.f32 %3203, 2
  %3207 = fadd fast float %3204, %563
  %3208 = fadd fast float %3205, %564
  %3209 = fadd fast float %3206, %565
  %3210 = fmul fast float %2920, 3.200000e+01
  %3211 = fmul fast float %2921, 3.200000e+01
  %3212 = fadd fast float %3207, %3210
  %3213 = fadd fast float %3208, %3211
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3216 = extractvalue %dx.types.CBufRet.f32 %3214, 1
  %3217 = fsub fast float %3212, %3215
  %3218 = fsub fast float %3213, %3216
  %3219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3220 = extractvalue %dx.types.CBufRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.CBufRet.f32 %3219, 1
  %3222 = fmul fast float %3217, %3220
  %3223 = fmul fast float %3218, %3221
  %3224 = fmul fast float %563, %563
  %3225 = fmul fast float %564, %564
  %3226 = fadd fast float %3224, %3225
  %3227 = call float @dx.op.unary.f32(i32 24, float %3226)  ; Sqrt(value)
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = extractvalue %dx.types.CBufRet.f32 %3228, 1
  %3231 = fsub fast float %3227, %3229
  %3232 = fdiv fast float %3231, %3230
  %3233 = call float @dx.op.unary.f32(i32 7, float %3232)  ; Saturate(value)
  %3234 = fmul fast float %3233, 2.000000e+00
  %3235 = fsub fast float 3.000000e+00, %3234
  %3236 = fmul fast float %3233, %3233
  %3237 = fmul fast float %3236, %3235
  %3238 = fcmp fast oge float %3222, 0.000000e+00
  %3239 = fcmp fast ole float %3222, 1.000000e+00
  %3240 = and i1 %3239, %3238
  %3241 = fcmp fast oge float %3223, 0.000000e+00
  %3242 = and i1 %3241, %3240
  %3243 = fcmp fast ole float %3223, 1.000000e+00
  %3244 = and i1 %3243, %3242
  %3245 = fcmp fast ogt float %3237, 0.000000e+00
  %3246 = and i1 %3245, %3244
  br i1 %3246, label %3247, label %3370, !dx.controlflow.hints !124

; <label>:3247                                    ; preds = %3202
  %3248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3249 = extractvalue %dx.types.CBufRet.f32 %3248, 2
  %3250 = extractvalue %dx.types.CBufRet.f32 %3248, 3
  %3251 = fmul fast float %3249, %3222
  %3252 = fmul fast float %3250, %3223
  %3253 = call float @dx.op.unary.f32(i32 27, float %3251)  ; Round_ni(value)
  %3254 = call float @dx.op.unary.f32(i32 27, float %3252)  ; Round_ni(value)
  %3255 = fptosi float %3253 to i32
  %3256 = fptosi float %3254 to i32
  %3257 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %42, i32 0, i32 %3255, i32 %3256, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = lshr i32 %3258, 16
  %3260 = icmp eq i32 %3259, 65535
  br i1 %3260, label %3370, label %3261

; <label>:3261                                    ; preds = %3247
  %3262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3263 = extractvalue %dx.types.CBufRet.f32 %3262, 0
  %3264 = fmul fast float %3263, %3222
  %3265 = extractvalue %dx.types.CBufRet.f32 %3262, 1
  %3266 = fadd fast float %3264, %3265
  %3267 = extractvalue %dx.types.CBufRet.f32 %3262, 2
  %3268 = fmul fast float %3267, %3223
  %3269 = extractvalue %dx.types.CBufRet.f32 %3262, 3
  %3270 = fadd fast float %3268, %3269
  %3271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %63, float %3266, float %3270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3272 = extractvalue %dx.types.ResRet.f32 %3271, 0
  %3273 = extractvalue %dx.types.ResRet.f32 %3271, 1
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 1
  %3276 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3277 = fsub fast float %3275, %3276
  %3278 = fmul fast float %3277, %3272
  %3279 = fadd fast float %3278, %3276
  %3280 = extractvalue %dx.types.CBufRet.f32 %3274, 3
  %3281 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3282 = fsub fast float %3280, %3281
  %3283 = fmul fast float %3282, %3273
  %3284 = fadd fast float %3283, %3281
  %3285 = fsub fast float %3209, %3279
  %3286 = fsub fast float %3284, %3279
  %3287 = fdiv fast float %3285, %3286
  %3288 = call float @dx.op.unary.f32(i32 7, float %3287)  ; Saturate(value)
  %3289 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3290 = extractvalue %dx.types.CBufRet.f32 %3248, 0
  %3291 = extractvalue %dx.types.CBufRet.f32 %3248, 1
  %3292 = fmul fast float %3290, %3222
  %3293 = fmul fast float %3291, %3223
  %3294 = fmul fast float %3292, 1.250000e-01
  %3295 = fmul fast float %3293, 1.250000e-01
  %3296 = call float @dx.op.unary.f32(i32 27, float %3294)  ; Round_ni(value)
  %3297 = call float @dx.op.unary.f32(i32 27, float %3295)  ; Round_ni(value)
  %3298 = fmul fast float %3296, 8.000000e+00
  %3299 = fmul fast float %3297, 8.000000e+00
  %3300 = fsub fast float %3292, %3298
  %3301 = fsub fast float %3293, %3299
  %3302 = fadd fast float %3300, 5.000000e-01
  %3303 = fadd fast float %3301, 5.000000e-01
  %3304 = and i32 %3259, 255
  %3305 = lshr i32 %3258, 24
  %3306 = mul nuw nsw i32 %3304, 9
  %3307 = uitofp i32 %3306 to float
  %3308 = mul nuw nsw i32 %3305, 9
  %3309 = uitofp i32 %3308 to float
  %3310 = fadd fast float %3302, %3307
  %3311 = fadd fast float %3303, %3309
  %3312 = fdiv fast float %3310, %3198
  %3313 = fdiv fast float %3311, %3289
  %3314 = fmul fast float %3288, 4.375000e-01
  %3315 = fadd fast float %3314, 3.125000e-02
  %3316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %63, float %3312, float %3313, float %3315, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = fadd fast float %3314, 5.312500e-01
  %3321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %63, float %3312, float %3313, float %3320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3322 = extractvalue %dx.types.ResRet.f32 %3321, 0
  %3323 = extractvalue %dx.types.ResRet.f32 %3321, 1
  %3324 = extractvalue %dx.types.ResRet.f32 %3321, 2
  %3325 = fmul fast float %3322, 2.000000e+00
  %3326 = fmul fast float %3323, 2.000000e+00
  %3327 = fmul fast float %3324, 2.000000e+00
  %3328 = fadd fast float %3325, -1.000000e+00
  %3329 = fadd fast float %3326, -1.000000e+00
  %3330 = fadd fast float %3327, -1.000000e+00
  %3331 = fmul fast float %3328, %3328
  %3332 = fmul fast float %3329, %3329
  %3333 = fadd fast float %3331, %3332
  %3334 = fmul fast float %3330, %3330
  %3335 = fadd fast float %3333, %3334
  %3336 = call float @dx.op.unary.f32(i32 24, float %3335)  ; Sqrt(value)
  %3337 = fcmp fast ogt float %3336, 0.000000e+00
  br i1 %3337, label %3338, label %3342

; <label>:3338                                    ; preds = %3261
  %3339 = fdiv fast float %3328, %3336
  %3340 = fdiv fast float %3329, %3336
  %3341 = fdiv fast float %3330, %3336
  br label %3342

; <label>:3342                                    ; preds = %3338, %3261
  %3343 = phi float [ %3339, %3338 ], [ 0.000000e+00, %3261 ]
  %3344 = phi float [ %3340, %3338 ], [ 0.000000e+00, %3261 ]
  %3345 = phi float [ %3341, %3338 ], [ 0.000000e+00, %3261 ]
  %3346 = call float @dx.op.dot3.f32(i32 55, float %3343, float %3344, float %3345, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %3347 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3346)  ; FMax(a,b)
  %3348 = fmul fast float %3347, 0x400C5BF8A0000000
  %3349 = fmul fast float %3317, %3237
  %3350 = fmul fast float %3349, %3348
  %3351 = fmul fast float %3318, %3237
  %3352 = fmul fast float %3351, %3348
  %3353 = fmul fast float %3319, %3237
  %3354 = fmul fast float %3353, %3348
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 3
  %3357 = fmul fast float %3350, %3356
  %3358 = fmul fast float %3352, %3356
  %3359 = fmul fast float %3354, %3356
  %3360 = fcmp fast ogt float %3209, %3284
  br i1 %3360, label %3361, label %3370

; <label>:3361                                    ; preds = %3342
  %3362 = fmul fast float %3286, 0x3FC24924A0000000
  %3363 = fsub fast float %3209, %3284
  %3364 = fdiv fast float %3363, %3362
  %3365 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3357
  %3368 = fmul fast float %3366, %3358
  %3369 = fmul fast float %3366, %3359
  br label %3370

; <label>:3370                                    ; preds = %3361, %3342, %3247, %3202
  %3371 = phi float [ %3369, %3361 ], [ %3359, %3342 ], [ 0.000000e+00, %3247 ], [ 0.000000e+00, %3202 ]
  %3372 = phi float [ %3368, %3361 ], [ %3358, %3342 ], [ 0.000000e+00, %3247 ], [ 0.000000e+00, %3202 ]
  %3373 = phi float [ %3367, %3361 ], [ %3357, %3342 ], [ 0.000000e+00, %3247 ], [ 0.000000e+00, %3202 ]
  %3374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3373)  ; FMax(a,b)
  %3375 = fmul fast float %3374, 0x3FD20DD760000000
  %3376 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3372)  ; FMax(a,b)
  %3377 = fmul fast float %3376, 0x3FD20DD760000000
  %3378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3371)  ; FMax(a,b)
  %3379 = fmul fast float %3378, 0x3FD20DD760000000
  %3380 = call float @dx.op.binary.f32(i32 35, float %3375, float 0.000000e+00)  ; FMax(a,b)
  %3381 = call float @dx.op.binary.f32(i32 35, float %3377, float 0.000000e+00)  ; FMax(a,b)
  %3382 = call float @dx.op.binary.f32(i32 35, float %3379, float 0.000000e+00)  ; FMax(a,b)
  %3383 = fmul fast float %3380, %3196
  %3384 = fmul fast float %3381, %3196
  %3385 = fmul fast float %3382, %3196
  br label %3386

; <label>:3386                                    ; preds = %3370, %3153
  %3387 = phi float [ %3383, %3370 ], [ 0.000000e+00, %3153 ]
  %3388 = phi float [ %3384, %3370 ], [ 0.000000e+00, %3153 ]
  %3389 = phi float [ %3385, %3370 ], [ 0.000000e+00, %3153 ]
  br i1 %3195, label %3390, label %4182, !dx.controlflow.hints !125

; <label>:3390                                    ; preds = %3386
  %3391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3392 = extractvalue %dx.types.CBufRet.f32 %3391, 0
  %3393 = extractvalue %dx.types.CBufRet.f32 %3391, 1
  %3394 = extractvalue %dx.types.CBufRet.f32 %3391, 2
  %3395 = fadd fast float %3392, %563
  %3396 = fadd fast float %3393, %564
  %3397 = fadd fast float %3394, %565
  %3398 = fmul fast float %2920, 3.200000e+01
  %3399 = fmul fast float %2921, 3.200000e+01
  %3400 = fadd fast float %3395, %3398
  %3401 = fadd fast float %3396, %3399
  %3402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3403 = extractvalue %dx.types.CBufRet.f32 %3402, 0
  %3404 = extractvalue %dx.types.CBufRet.f32 %3402, 1
  %3405 = fsub fast float %3400, %3403
  %3406 = fsub fast float %3401, %3404
  %3407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3408 = extractvalue %dx.types.CBufRet.f32 %3407, 0
  %3409 = extractvalue %dx.types.CBufRet.f32 %3407, 1
  %3410 = fmul fast float %3405, %3408
  %3411 = fmul fast float %3406, %3409
  %3412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3413 = extractvalue %dx.types.CBufRet.f32 %3412, 0
  %3414 = fmul fast float %3410, %3413
  %3415 = extractvalue %dx.types.CBufRet.f32 %3412, 1
  %3416 = fadd fast float %3414, %3415
  %3417 = extractvalue %dx.types.CBufRet.f32 %3412, 2
  %3418 = fmul fast float %3417, %3411
  %3419 = extractvalue %dx.types.CBufRet.f32 %3412, 3
  %3420 = fadd fast float %3418, %3419
  %3421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %63, float %3416, float %3420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3422 = extractvalue %dx.types.ResRet.f32 %3421, 0
  %3423 = extractvalue %dx.types.ResRet.f32 %3421, 1
  %3424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3425 = extractvalue %dx.types.CBufRet.f32 %3424, 1
  %3426 = extractvalue %dx.types.CBufRet.f32 %3424, 0
  %3427 = fsub fast float %3425, %3426
  %3428 = fmul fast float %3427, %3422
  %3429 = fadd fast float %3428, %3426
  %3430 = extractvalue %dx.types.CBufRet.f32 %3424, 3
  %3431 = extractvalue %dx.types.CBufRet.f32 %3424, 2
  %3432 = fsub fast float %3430, %3431
  %3433 = fmul fast float %3432, %3423
  %3434 = fadd fast float %3433, %3431
  %3435 = fsub fast float %3397, %3429
  %3436 = fsub fast float %3434, %3429
  %3437 = fdiv fast float %3435, %3436
  %3438 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3440 = extractvalue %dx.types.CBufRet.f32 %3439, 0
  %3441 = fmul fast float %3440, %3438
  %3442 = extractvalue %dx.types.CBufRet.f32 %3439, 1
  %3443 = fadd fast float %3441, %3442
  %3444 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %3416, float %3420, float %3443, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3452 = fmul fast float %3449, %3445
  %3453 = fmul fast float %3450, %3446
  %3454 = fmul fast float %3451, %3447
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3457 = extractvalue %dx.types.CBufRet.f32 %3455, 1
  %3458 = extractvalue %dx.types.CBufRet.f32 %3455, 2
  %3459 = fadd fast float %3452, %3456
  %3460 = fadd fast float %3453, %3457
  %3461 = fadd fast float %3454, %3458
  %3462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3463 = extractvalue %dx.types.CBufRet.f32 %3462, 0
  %3464 = fmul fast float %3463, %3410
  %3465 = extractvalue %dx.types.CBufRet.f32 %3462, 1
  %3466 = fadd fast float %3464, %3465
  %3467 = extractvalue %dx.types.CBufRet.f32 %3462, 2
  %3468 = fmul fast float %3467, %3411
  %3469 = extractvalue %dx.types.CBufRet.f32 %3462, 3
  %3470 = fadd fast float %3468, %3469
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  %3473 = extractvalue %dx.types.CBufRet.f32 %3471, 1
  %3474 = extractvalue %dx.types.CBufRet.f32 %3471, 2
  %3475 = extractvalue %dx.types.CBufRet.f32 %3471, 3
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.CBufRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.CBufRet.f32 %3476, 2
  %3480 = extractvalue %dx.types.CBufRet.f32 %3476, 3
  %3481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %63, float %3466, float %3470, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = extractvalue %dx.types.ResRet.f32 %3481, 3
  %3486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %63, float %3466, float %3470, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 1
  %3489 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3490 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3491 = fmul fast float %3482, %3459
  %3492 = fmul fast float %3487, %3459
  %3493 = fmul fast float %3489, %3459
  %3494 = fmul fast float %3485, %3459
  %3495 = fadd fast float %3491, %3472
  %3496 = fadd fast float %3492, %3473
  %3497 = fadd fast float %3493, %3474
  %3498 = fadd fast float %3494, %3475
  %3499 = fmul fast float %3483, %3459
  %3500 = fmul fast float %3488, %3459
  %3501 = fadd fast float %3499, %3477
  %3502 = fadd fast float %3500, %3478
  %3503 = fmul fast float %3484, %3459
  %3504 = fmul fast float %3490, %3459
  %3505 = fadd fast float %3503, %3479
  %3506 = fadd fast float %3504, %3480
  %3507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %63, float %3466, float %3470, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3508 = extractvalue %dx.types.ResRet.f32 %3507, 0
  %3509 = extractvalue %dx.types.ResRet.f32 %3507, 1
  %3510 = extractvalue %dx.types.ResRet.f32 %3507, 2
  %3511 = extractvalue %dx.types.ResRet.f32 %3507, 3
  %3512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %63, float %3466, float %3470, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3513 = extractvalue %dx.types.ResRet.f32 %3512, 0
  %3514 = extractvalue %dx.types.ResRet.f32 %3512, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3512, 2
  %3516 = extractvalue %dx.types.ResRet.f32 %3512, 3
  %3517 = fmul fast float %3508, %3460
  %3518 = fmul fast float %3513, %3460
  %3519 = fmul fast float %3515, %3460
  %3520 = fmul fast float %3511, %3460
  %3521 = fadd fast float %3495, %3517
  %3522 = fadd fast float %3496, %3518
  %3523 = fadd fast float %3497, %3519
  %3524 = fadd fast float %3498, %3520
  %3525 = fmul fast float %3509, %3460
  %3526 = fmul fast float %3514, %3460
  %3527 = fadd fast float %3501, %3525
  %3528 = fadd fast float %3502, %3526
  %3529 = fmul fast float %3510, %3460
  %3530 = fmul fast float %3516, %3460
  %3531 = fadd fast float %3505, %3529
  %3532 = fadd fast float %3506, %3530
  %3533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %63, float %3466, float %3470, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.ResRet.f32 %3533, 1
  %3536 = extractvalue %dx.types.ResRet.f32 %3533, 2
  %3537 = extractvalue %dx.types.ResRet.f32 %3533, 3
  %3538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %63, float %3466, float %3470, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = extractvalue %dx.types.ResRet.f32 %3538, 3
  %3543 = fmul fast float %3534, %3461
  %3544 = fmul fast float %3539, %3461
  %3545 = fmul fast float %3541, %3461
  %3546 = fmul fast float %3537, %3461
  %3547 = fadd fast float %3521, %3543
  %3548 = fadd fast float %3522, %3544
  %3549 = fadd fast float %3523, %3545
  %3550 = fadd fast float %3524, %3546
  %3551 = fmul fast float %3535, %3461
  %3552 = fmul fast float %3540, %3461
  %3553 = fadd fast float %3527, %3551
  %3554 = fadd fast float %3528, %3552
  %3555 = fmul fast float %3536, %3461
  %3556 = fmul fast float %3542, %3461
  %3557 = fadd fast float %3531, %3555
  %3558 = fadd fast float %3532, %3556
  %3559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3560 = extractvalue %dx.types.CBufRet.f32 %3559, 0
  %3561 = fsub fast float %3395, %3560
  %3562 = fsub fast float %3403, %3395
  %3563 = call float @dx.op.binary.f32(i32 35, float %3562, float %3561)  ; FMax(a,b)
  %3564 = extractvalue %dx.types.CBufRet.f32 %3559, 1
  %3565 = fsub fast float %3396, %3564
  %3566 = fsub fast float %3404, %3396
  %3567 = call float @dx.op.binary.f32(i32 35, float %3566, float %3565)  ; FMax(a,b)
  %3568 = call float @dx.op.binary.f32(i32 35, float %3563, float %3567)  ; FMax(a,b)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3407, 3
  %3570 = fmul fast float %3569, %3568
  %3571 = call float @dx.op.unary.f32(i32 7, float %3570)  ; Saturate(value)
  %3572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.f32 %3572, 0
  %3574 = extractvalue %dx.types.CBufRet.f32 %3572, 1
  %3575 = extractvalue %dx.types.CBufRet.f32 %3572, 2
  %3576 = extractvalue %dx.types.CBufRet.f32 %3572, 3
  %3577 = fsub fast float %3573, %3547
  %3578 = fsub fast float %3574, %3548
  %3579 = fsub fast float %3575, %3549
  %3580 = fsub fast float %3576, %3550
  %3581 = fmul fast float %3577, %3571
  %3582 = fmul fast float %3578, %3571
  %3583 = fmul fast float %3579, %3571
  %3584 = fmul fast float %3580, %3571
  %3585 = fadd fast float %3581, %3547
  %3586 = fadd fast float %3582, %3548
  %3587 = fadd fast float %3583, %3549
  %3588 = fadd fast float %3584, %3550
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3591 = extractvalue %dx.types.CBufRet.f32 %3589, 1
  %3592 = fsub fast float %3590, %3553
  %3593 = fsub fast float %3591, %3554
  %3594 = fmul fast float %3592, %3571
  %3595 = fmul fast float %3593, %3571
  %3596 = fadd fast float %3594, %3553
  %3597 = fadd fast float %3595, %3554
  %3598 = extractvalue %dx.types.CBufRet.f32 %3589, 2
  %3599 = extractvalue %dx.types.CBufRet.f32 %3589, 3
  %3600 = fsub fast float %3598, %3557
  %3601 = fsub fast float %3599, %3558
  %3602 = fmul fast float %3600, %3571
  %3603 = fmul fast float %3601, %3571
  %3604 = fadd fast float %3602, %3557
  %3605 = fadd fast float %3603, %3558
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = fmul fast float %3607, %3585
  %3609 = fmul fast float %3607, %3586
  %3610 = fmul fast float %3607, %3587
  %3611 = fmul fast float %3607, %3588
  %3612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3613 = extractvalue %dx.types.CBufRet.f32 %3612, 0
  %3614 = fmul fast float %3613, %3596
  %3615 = fmul fast float %3613, %3597
  %3616 = fadd fast float %3614, %3608
  %3617 = fadd fast float %3615, %3610
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = fmul fast float %3619, %3604
  %3621 = fmul fast float %3619, %3605
  %3622 = fadd fast float %3616, %3620
  %3623 = fadd fast float %3617, %3621
  %3624 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3625 = fmul fast float %3624, %3585
  %3626 = fmul fast float %3624, %3586
  %3627 = fmul fast float %3624, %3587
  %3628 = fmul fast float %3624, %3588
  %3629 = extractvalue %dx.types.CBufRet.f32 %3612, 1
  %3630 = fmul fast float %3629, %3596
  %3631 = fmul fast float %3629, %3597
  %3632 = fadd fast float %3630, %3625
  %3633 = fadd fast float %3631, %3627
  %3634 = extractvalue %dx.types.CBufRet.f32 %3618, 1
  %3635 = fmul fast float %3634, %3604
  %3636 = fmul fast float %3634, %3605
  %3637 = fadd fast float %3632, %3635
  %3638 = fadd fast float %3633, %3636
  %3639 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3640 = fmul fast float %3639, %3585
  %3641 = fmul fast float %3639, %3586
  %3642 = fmul fast float %3639, %3587
  %3643 = fmul fast float %3639, %3588
  %3644 = extractvalue %dx.types.CBufRet.f32 %3612, 2
  %3645 = fmul fast float %3644, %3596
  %3646 = fmul fast float %3644, %3597
  %3647 = fadd fast float %3645, %3640
  %3648 = fadd fast float %3646, %3642
  %3649 = extractvalue %dx.types.CBufRet.f32 %3618, 2
  %3650 = fmul fast float %3649, %3604
  %3651 = fmul fast float %3649, %3605
  %3652 = fadd fast float %3647, %3650
  %3653 = fadd fast float %3648, %3651
  %3654 = fmul fast float %3641, %3641
  %3655 = fmul fast float %3653, %3653
  %3656 = fmul fast float %3643, %3643
  %3657 = fadd fast float %3656, %3654
  %3658 = fadd fast float %3657, %3655
  %3659 = call float @dx.op.unary.f32(i32 24, float %3658)  ; Sqrt(value)
  %3660 = fcmp fast ugt float %3659, 0.000000e+00
  br i1 %3660, label %3661, label %3676

; <label>:3661                                    ; preds = %3390
  %3662 = fsub fast float -0.000000e+00, %3643
  %3663 = fdiv fast float %3662, %3659
  %3664 = fsub fast float -0.000000e+00, %3641
  %3665 = fdiv fast float %3664, %3659
  %3666 = fdiv fast float %3653, %3659
  %3667 = fmul fast float %3652, 0x3FE279A760000000
  %3668 = fmul fast float %3665, %3641
  %3669 = fmul fast float %3666, %3653
  %3670 = fmul fast float %3663, %3643
  %3671 = fadd fast float %3668, %3670
  %3672 = fsub fast float %3671, %3669
  %3673 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3674 = fadd fast float %3673, 0x3DDB7CDFE0000000
  %3675 = fdiv fast float %3667, %3674
  br label %3676

; <label>:3676                                    ; preds = %3661, %3390
  %3677 = phi float [ %3675, %3661 ], [ 1.000000e+00, %3390 ]
  %3678 = fmul fast float %3626, %3626
  %3679 = fmul fast float %3638, %3638
  %3680 = fmul fast float %3628, %3628
  %3681 = fadd fast float %3680, %3678
  %3682 = fadd fast float %3681, %3679
  %3683 = call float @dx.op.unary.f32(i32 24, float %3682)  ; Sqrt(value)
  %3684 = fcmp fast ugt float %3683, 0.000000e+00
  br i1 %3684, label %3685, label %3700

; <label>:3685                                    ; preds = %3676
  %3686 = fsub fast float -0.000000e+00, %3628
  %3687 = fdiv fast float %3686, %3683
  %3688 = fsub fast float -0.000000e+00, %3626
  %3689 = fdiv fast float %3688, %3683
  %3690 = fdiv fast float %3638, %3683
  %3691 = fmul fast float %3637, 0x3FE279A760000000
  %3692 = fmul fast float %3689, %3626
  %3693 = fmul fast float %3690, %3638
  %3694 = fmul fast float %3687, %3628
  %3695 = fadd fast float %3692, %3694
  %3696 = fsub fast float %3695, %3693
  %3697 = call float @dx.op.unary.f32(i32 6, float %3696)  ; FAbs(value)
  %3698 = fadd fast float %3697, 0x3DDB7CDFE0000000
  %3699 = fdiv fast float %3691, %3698
  br label %3700

; <label>:3700                                    ; preds = %3685, %3676
  %3701 = phi float [ %3699, %3685 ], [ 1.000000e+00, %3676 ]
  %3702 = call float @dx.op.binary.f32(i32 36, float %3701, float %3677)  ; FMin(a,b)
  %3703 = fmul fast float %3609, %3609
  %3704 = fmul fast float %3623, %3623
  %3705 = fmul fast float %3611, %3611
  %3706 = fadd fast float %3705, %3703
  %3707 = fadd fast float %3706, %3704
  %3708 = call float @dx.op.unary.f32(i32 24, float %3707)  ; Sqrt(value)
  %3709 = fcmp fast ugt float %3708, 0.000000e+00
  br i1 %3709, label %3710, label %3725

; <label>:3710                                    ; preds = %3700
  %3711 = fsub fast float -0.000000e+00, %3611
  %3712 = fdiv fast float %3711, %3708
  %3713 = fsub fast float -0.000000e+00, %3609
  %3714 = fdiv fast float %3713, %3708
  %3715 = fdiv fast float %3623, %3708
  %3716 = fmul fast float %3622, 0x3FE279A760000000
  %3717 = fmul fast float %3714, %3609
  %3718 = fmul fast float %3715, %3623
  %3719 = fmul fast float %3712, %3611
  %3720 = fadd fast float %3717, %3719
  %3721 = fsub fast float %3720, %3718
  %3722 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3723 = fadd fast float %3722, 0x3DDB7CDFE0000000
  %3724 = fdiv fast float %3716, %3723
  br label %3725

; <label>:3725                                    ; preds = %3710, %3700
  %3726 = phi float [ %3724, %3710 ], [ 1.000000e+00, %3700 ]
  %3727 = call float @dx.op.binary.f32(i32 36, float %3726, float %3702)  ; FMin(a,b)
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = fcmp fast olt float %3728, 1.000000e+00
  br i1 %3729, label %3730, label %3740

; <label>:3730                                    ; preds = %3725
  %3731 = fmul fast float %3728, %3609
  %3732 = fmul fast float %3728, %3623
  %3733 = fmul fast float %3728, %3611
  %3734 = fmul fast float %3728, %3626
  %3735 = fmul fast float %3728, %3638
  %3736 = fmul fast float %3728, %3628
  %3737 = fmul fast float %3728, %3641
  %3738 = fmul fast float %3728, %3653
  %3739 = fmul fast float %3728, %3643
  br label %3740

; <label>:3740                                    ; preds = %3730, %3725
  %3741 = phi float [ %3737, %3730 ], [ %3641, %3725 ]
  %3742 = phi float [ %3738, %3730 ], [ %3653, %3725 ]
  %3743 = phi float [ %3739, %3730 ], [ %3643, %3725 ]
  %3744 = phi float [ %3734, %3730 ], [ %3626, %3725 ]
  %3745 = phi float [ %3735, %3730 ], [ %3638, %3725 ]
  %3746 = phi float [ %3736, %3730 ], [ %3628, %3725 ]
  %3747 = phi float [ %3731, %3730 ], [ %3609, %3725 ]
  %3748 = phi float [ %3732, %3730 ], [ %3623, %3725 ]
  %3749 = phi float [ %3733, %3730 ], [ %3611, %3725 ]
  %3750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3622)  ; FMax(a,b)
  %3751 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3637)  ; FMax(a,b)
  %3752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3652)  ; FMax(a,b)
  %3753 = fcmp fast oge float %3410, 0.000000e+00
  %3754 = and i1 %3753, %3199
  %3755 = fcmp fast ole float %3410, 1.000000e+00
  %3756 = and i1 %3755, %3754
  %3757 = fcmp fast oge float %3411, 0.000000e+00
  %3758 = and i1 %3757, %3756
  %3759 = fcmp fast ole float %3411, 1.000000e+00
  %3760 = and i1 %3759, %3758
  br i1 %3760, label %3761, label %3901, !dx.controlflow.hints !126

; <label>:3761                                    ; preds = %3740
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 2
  %3764 = extractvalue %dx.types.CBufRet.f32 %3762, 3
  %3765 = fmul fast float %3763, %3410
  %3766 = fmul fast float %3764, %3411
  %3767 = call float @dx.op.unary.f32(i32 27, float %3765)  ; Round_ni(value)
  %3768 = call float @dx.op.unary.f32(i32 27, float %3766)  ; Round_ni(value)
  %3769 = fptosi float %3767 to i32
  %3770 = fptosi float %3768 to i32
  %3771 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %42, i32 0, i32 %3769, i32 %3770, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = and i32 %3772, 65535
  %3774 = lshr i32 %3772, 16
  %3775 = icmp eq i32 %3773, 65535
  br i1 %3775, label %3812, label %3776

; <label>:3776                                    ; preds = %3761
  %3777 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3779 = extractvalue %dx.types.CBufRet.f32 %3762, 1
  %3780 = fmul fast float %3778, %3410
  %3781 = fmul fast float %3779, %3411
  %3782 = fmul fast float %3780, 1.250000e-01
  %3783 = fmul fast float %3781, 1.250000e-01
  %3784 = call float @dx.op.unary.f32(i32 27, float %3782)  ; Round_ni(value)
  %3785 = call float @dx.op.unary.f32(i32 27, float %3783)  ; Round_ni(value)
  %3786 = fmul fast float %3784, 8.000000e+00
  %3787 = fmul fast float %3785, 8.000000e+00
  %3788 = and i32 %3772, 255
  %3789 = lshr i32 %3772, 8
  %3790 = and i32 %3789, 255
  %3791 = mul nuw nsw i32 %3788, 9
  %3792 = uitofp i32 %3791 to float
  %3793 = mul nuw nsw i32 %3790, 9
  %3794 = uitofp i32 %3793 to float
  %3795 = fadd fast float %3792, 5.000000e-01
  %3796 = fadd fast float %3795, %3780
  %3797 = fsub fast float %3796, %3786
  %3798 = fadd fast float %3794, 5.000000e-01
  %3799 = fadd fast float %3798, %3781
  %3800 = fsub fast float %3799, %3787
  %3801 = fdiv fast float %3797, %3198
  %3802 = fdiv fast float %3800, %3777
  %3803 = fmul fast float %3438, 4.375000e-01
  %3804 = fadd fast float %3803, 3.125000e-02
  %3805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %63, float %3801, float %3802, float %3804, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3806 = extractvalue %dx.types.ResRet.f32 %3805, 0
  %3807 = extractvalue %dx.types.ResRet.f32 %3805, 1
  %3808 = extractvalue %dx.types.ResRet.f32 %3805, 2
  %3809 = fadd fast float %3806, %3750
  %3810 = fadd fast float %3807, %3751
  %3811 = fadd fast float %3808, %3752
  br label %3812

; <label>:3812                                    ; preds = %3776, %3761
  %3813 = phi float [ %3811, %3776 ], [ %3752, %3761 ]
  %3814 = phi float [ %3810, %3776 ], [ %3751, %3761 ]
  %3815 = phi float [ %3809, %3776 ], [ %3750, %3761 ]
  %3816 = icmp eq i32 %3774, 65535
  br i1 %3816, label %3901, label %3817

; <label>:3817                                    ; preds = %3812
  %3818 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3819 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3820 = extractvalue %dx.types.CBufRet.f32 %3762, 1
  %3821 = fmul fast float %3819, %3410
  %3822 = fmul fast float %3820, %3411
  %3823 = fmul fast float %3821, 1.250000e-01
  %3824 = fmul fast float %3822, 1.250000e-01
  %3825 = call float @dx.op.unary.f32(i32 27, float %3823)  ; Round_ni(value)
  %3826 = call float @dx.op.unary.f32(i32 27, float %3824)  ; Round_ni(value)
  %3827 = fmul fast float %3825, 8.000000e+00
  %3828 = fmul fast float %3826, 8.000000e+00
  %3829 = fsub fast float %3821, %3827
  %3830 = fsub fast float %3822, %3828
  %3831 = fadd fast float %3829, 5.000000e-01
  %3832 = fadd fast float %3830, 5.000000e-01
  %3833 = and i32 %3774, 255
  %3834 = lshr i32 %3772, 24
  %3835 = mul nuw nsw i32 %3833, 9
  %3836 = uitofp i32 %3835 to float
  %3837 = mul nuw nsw i32 %3834, 9
  %3838 = uitofp i32 %3837 to float
  %3839 = fadd fast float %3831, %3836
  %3840 = fadd fast float %3832, %3838
  %3841 = fdiv fast float %3839, %3198
  %3842 = fdiv fast float %3840, %3818
  %3843 = fmul fast float %3438, 4.375000e-01
  %3844 = fadd fast float %3843, 3.125000e-02
  %3845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %63, float %3841, float %3842, float %3844, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3846 = extractvalue %dx.types.ResRet.f32 %3845, 0
  %3847 = extractvalue %dx.types.ResRet.f32 %3845, 1
  %3848 = extractvalue %dx.types.ResRet.f32 %3845, 2
  %3849 = fadd fast float %3843, 5.312500e-01
  %3850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %63, float %3841, float %3842, float %3849, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3851 = extractvalue %dx.types.ResRet.f32 %3850, 0
  %3852 = extractvalue %dx.types.ResRet.f32 %3850, 1
  %3853 = extractvalue %dx.types.ResRet.f32 %3850, 2
  %3854 = fmul fast float %3851, 2.000000e+00
  %3855 = fmul fast float %3852, 2.000000e+00
  %3856 = fmul fast float %3853, 2.000000e+00
  %3857 = fadd fast float %3854, -1.000000e+00
  %3858 = fadd fast float %3855, -1.000000e+00
  %3859 = fadd fast float %3856, -1.000000e+00
  %3860 = fmul fast float %3857, %3857
  %3861 = fmul fast float %3858, %3858
  %3862 = fadd fast float %3860, %3861
  %3863 = fmul fast float %3859, %3859
  %3864 = fadd fast float %3862, %3863
  %3865 = call float @dx.op.unary.f32(i32 24, float %3864)  ; Sqrt(value)
  %3866 = fcmp fast ogt float %3865, 0.000000e+00
  br i1 %3866, label %3867, label %3871

; <label>:3867                                    ; preds = %3817
  %3868 = fdiv fast float %3857, %3865
  %3869 = fdiv fast float %3858, %3865
  %3870 = fdiv fast float %3859, %3865
  br label %3871

; <label>:3871                                    ; preds = %3867, %3817
  %3872 = phi float [ %3868, %3867 ], [ 0.000000e+00, %3817 ]
  %3873 = phi float [ %3869, %3867 ], [ 0.000000e+00, %3817 ]
  %3874 = phi float [ %3870, %3867 ], [ 0.000000e+00, %3817 ]
  %3875 = fmul fast float %563, %563
  %3876 = fmul fast float %564, %564
  %3877 = fadd fast float %3875, %3876
  %3878 = call float @dx.op.unary.f32(i32 24, float %3877)  ; Sqrt(value)
  %3879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.CBufRet.f32 %3879, 1
  %3882 = fsub fast float %3878, %3880
  %3883 = fdiv fast float %3882, %3881
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fmul fast float %3884, 2.000000e+00
  %3886 = fsub fast float 3.000000e+00, %3885
  %3887 = fmul fast float %3884, %3884
  %3888 = fmul fast float %3887, %3886
  %3889 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %3890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3889)  ; FMax(a,b)
  %3891 = fmul fast float %3890, 0x400C5BF8A0000000
  %3892 = fmul fast float %3888, %3846
  %3893 = fmul fast float %3892, %3891
  %3894 = fadd fast float %3893, %3815
  %3895 = fmul fast float %3888, %3847
  %3896 = fmul fast float %3895, %3891
  %3897 = fadd fast float %3896, %3814
  %3898 = fmul fast float %3888, %3848
  %3899 = fmul fast float %3898, %3891
  %3900 = fadd fast float %3899, %3813
  br label %3901

; <label>:3901                                    ; preds = %3871, %3812, %3740
  %3902 = phi float [ %3900, %3871 ], [ %3813, %3812 ], [ %3752, %3740 ]
  %3903 = phi float [ %3897, %3871 ], [ %3814, %3812 ], [ %3751, %3740 ]
  %3904 = phi float [ %3894, %3871 ], [ %3815, %3812 ], [ %3750, %3740 ]
  %3905 = fcmp fast ogt float %3397, %3434
  %3906 = and i1 %3753, %3905
  %3907 = and i1 %3755, %3906
  %3908 = and i1 %3757, %3907
  %3909 = and i1 %3759, %3908
  br i1 %3909, label %3910, label %3967, !dx.controlflow.hints !127

; <label>:3910                                    ; preds = %3901
  %3911 = fmul fast float %3436, 0x3FC24924A0000000
  %3912 = fsub fast float %3397, %3434
  %3913 = fdiv fast float %3912, %3911
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3920 = extractvalue %dx.types.CBufRet.f32 %3917, 2
  %3921 = fsub fast float %3916, %3904
  %3922 = fsub fast float %3918, %3747
  %3923 = fsub fast float %3919, %3748
  %3924 = fsub fast float %3920, %3749
  %3925 = fmul fast float %3921, %3914
  %3926 = fmul fast float %3922, %3914
  %3927 = fmul fast float %3923, %3914
  %3928 = fmul fast float %3924, %3914
  %3929 = fadd fast float %3925, %3904
  %3930 = fadd fast float %3926, %3747
  %3931 = fadd fast float %3927, %3748
  %3932 = fadd fast float %3928, %3749
  %3933 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3938 = fsub fast float %3933, %3903
  %3939 = fsub fast float %3935, %3744
  %3940 = fsub fast float %3936, %3745
  %3941 = fsub fast float %3937, %3746
  %3942 = fmul fast float %3938, %3914
  %3943 = fmul fast float %3939, %3914
  %3944 = fmul fast float %3940, %3914
  %3945 = fmul fast float %3941, %3914
  %3946 = fadd fast float %3942, %3903
  %3947 = fadd fast float %3943, %3744
  %3948 = fadd fast float %3944, %3745
  %3949 = fadd fast float %3945, %3746
  %3950 = extractvalue %dx.types.CBufRet.f32 %3915, 2
  %3951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3952 = extractvalue %dx.types.CBufRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.CBufRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.CBufRet.f32 %3951, 2
  %3955 = fsub fast float %3950, %3902
  %3956 = fsub fast float %3952, %3741
  %3957 = fsub fast float %3953, %3742
  %3958 = fsub fast float %3954, %3743
  %3959 = fmul fast float %3955, %3914
  %3960 = fmul fast float %3956, %3914
  %3961 = fmul fast float %3957, %3914
  %3962 = fmul fast float %3958, %3914
  %3963 = fadd fast float %3959, %3902
  %3964 = fadd fast float %3960, %3741
  %3965 = fadd fast float %3961, %3742
  %3966 = fadd fast float %3962, %3743
  br label %3967

; <label>:3967                                    ; preds = %3910, %3901
  %3968 = phi float [ %3963, %3910 ], [ %3902, %3901 ]
  %3969 = phi float [ %3964, %3910 ], [ %3741, %3901 ]
  %3970 = phi float [ %3965, %3910 ], [ %3742, %3901 ]
  %3971 = phi float [ %3966, %3910 ], [ %3743, %3901 ]
  %3972 = phi float [ %3946, %3910 ], [ %3903, %3901 ]
  %3973 = phi float [ %3947, %3910 ], [ %3744, %3901 ]
  %3974 = phi float [ %3948, %3910 ], [ %3745, %3901 ]
  %3975 = phi float [ %3949, %3910 ], [ %3746, %3901 ]
  %3976 = phi float [ %3929, %3910 ], [ %3904, %3901 ]
  %3977 = phi float [ %3930, %3910 ], [ %3747, %3901 ]
  %3978 = phi float [ %3931, %3910 ], [ %3748, %3901 ]
  %3979 = phi float [ %3932, %3910 ], [ %3749, %3901 ]
  %3980 = extractvalue %dx.types.CBufRet.f32 %3559, 3
  %3981 = fmul fast float %3980, %3976
  %3982 = fmul fast float %3980, %3972
  %3983 = fmul fast float %3980, %3968
  %3984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.f32 %3984, 3
  %3986 = fmul fast float %3981, %3985
  %3987 = fmul fast float %3982, %3985
  %3988 = fmul fast float %3983, %3985
  %3989 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3990 = fmul fast float %3989, 0x3FD20DD760000000
  %3991 = fmul fast float %3977, 1.500000e+00
  %3992 = fmul fast float %3991, %3980
  %3993 = fmul fast float %3992, %3985
  %3994 = fmul fast float %3978, 1.500000e+00
  %3995 = fmul fast float %3994, %3980
  %3996 = fmul fast float %3995, %3985
  %3997 = fmul fast float %3979, 1.500000e+00
  %3998 = fmul fast float %3997, %3980
  %3999 = fmul fast float %3998, %3985
  %4000 = fmul fast float %3973, 1.500000e+00
  %4001 = fmul fast float %4000, %3980
  %4002 = fmul fast float %4001, %3985
  %4003 = fmul fast float %3974, 1.500000e+00
  %4004 = fmul fast float %4003, %3980
  %4005 = fmul fast float %4004, %3985
  %4006 = fmul fast float %3975, 1.500000e+00
  %4007 = fmul fast float %4006, %3980
  %4008 = fmul fast float %4007, %3985
  %4009 = fmul fast float %3969, 1.500000e+00
  %4010 = fmul fast float %4009, %3980
  %4011 = fmul fast float %4010, %3985
  %4012 = fmul fast float %3970, 1.500000e+00
  %4013 = fmul fast float %4012, %3980
  %4014 = fmul fast float %4013, %3985
  %4015 = fmul fast float %3971, 1.500000e+00
  %4016 = fmul fast float %4015, %3980
  %4017 = fmul fast float %4016, %3985
  %4018 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3986)  ; FMax(a,b)
  %4019 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3996, float %3999, float %3993, float %3996, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4020 = fcmp fast oeq float %4019, 0.000000e+00
  %4021 = fcmp fast oeq float %4018, 0.000000e+00
  %4022 = or i1 %4021, %4020
  br i1 %4022, label %4052, label %4023

; <label>:4023                                    ; preds = %3967
  %4024 = fsub fast float -0.000000e+00, %3999
  %4025 = fsub fast float -0.000000e+00, %3993
  %4026 = call float @dx.op.unary.f32(i32 24, float %4019)  ; Sqrt(value)
  %4027 = fdiv fast float %4026, %4018
  %4028 = fcmp fast ogt float %4027, 0x3FFB6F8900000000
  %4029 = select i1 %4028, float 0x3FFB6F8900000000, float %4027
  %4030 = fmul fast float %4029, 0x3FE8A23460000000
  %4031 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4032 = call float @dx.op.binary.f32(i32 35, float %4029, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4033 = fmul fast float %4031, %4018
  %4034 = fmul fast float %4032, 0x3FF279A740000000
  %4035 = fadd fast float %4034, -1.000000e+00
  %4036 = call float @dx.op.dot3.f32(i32 55, float %4024, float %4025, float %3996, float %4024, float %4025, float %3996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = call float @dx.op.unary.f32(i32 25, float %4036)  ; Rsqrt(value)
  %4038 = fmul fast float %4037, %4024
  %4039 = fmul fast float %4037, %4025
  %4040 = fmul fast float %4037, %3996
  %4041 = fmul fast float %4035, %4035
  %4042 = fsub fast float 1.000000e+00, %4041
  %4043 = fmul fast float %4032, 0x40005F8BE0000000
  %4044 = fsub fast float 0x400C5BF8A0000000, %4043
  %4045 = fdiv fast float %4033, %4044
  %4046 = fmul fast float %4045, 0x3FEE31C3C0000000
  %4047 = fmul fast float %4046, %4042
  %4048 = fmul fast float %4032, 0x3FDACB7480000000
  %4049 = fadd fast float %4048, 0xBFD7347680000000
  %4050 = fmul fast float %4049, %4045
  %4051 = fmul fast float %4050, %4042
  br label %4052

; <label>:4052                                    ; preds = %4023, %3967
  %4053 = phi float [ %4038, %4023 ], [ 0.000000e+00, %3967 ]
  %4054 = phi float [ %4039, %4023 ], [ 0.000000e+00, %3967 ]
  %4055 = phi float [ %4040, %4023 ], [ 0.000000e+00, %3967 ]
  %4056 = phi float [ %4047, %4023 ], [ 0.000000e+00, %3967 ]
  %4057 = phi float [ %4051, %4023 ], [ 0.000000e+00, %3967 ]
  %4058 = call float @dx.op.dot3.f32(i32 55, float %4053, float %4054, float %4055, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4059 = fmul fast float %4058, %4058
  %4060 = fmul fast float %4059, 0x3FEE471020000000
  %4061 = fadd fast float %4060, 0xBFD42F6020000000
  %4062 = fmul fast float %4018, 0x3FD20DD760000000
  %4063 = fmul fast float %4061, %4057
  %4064 = fmul fast float %4056, 0x3FDF454380000000
  %4065 = fmul fast float %4064, %4058
  %4066 = fadd fast float %4065, %4062
  %4067 = fadd fast float %4066, %4063
  %4068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3987)  ; FMax(a,b)
  %4069 = call float @dx.op.dot3.f32(i32 55, float %4002, float %4005, float %4008, float %4002, float %4005, float %4008)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = fcmp fast oeq float %4069, 0.000000e+00
  %4071 = fcmp fast oeq float %4068, 0.000000e+00
  %4072 = or i1 %4071, %4070
  br i1 %4072, label %4102, label %4073

; <label>:4073                                    ; preds = %4052
  %4074 = fsub fast float -0.000000e+00, %4008
  %4075 = fsub fast float -0.000000e+00, %4002
  %4076 = call float @dx.op.unary.f32(i32 24, float %4069)  ; Sqrt(value)
  %4077 = fdiv fast float %4076, %4068
  %4078 = fcmp fast ogt float %4077, 0x3FFB6F8900000000
  %4079 = select i1 %4078, float 0x3FFB6F8900000000, float %4077
  %4080 = fmul fast float %4079, 0x3FE8A23460000000
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = call float @dx.op.binary.f32(i32 35, float %4079, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4083 = fmul fast float %4081, %4068
  %4084 = fmul fast float %4082, 0x3FF279A740000000
  %4085 = fadd fast float %4084, -1.000000e+00
  %4086 = call float @dx.op.dot3.f32(i32 55, float %4074, float %4075, float %4005, float %4074, float %4075, float %4005)  ; Dot3(ax,ay,az,bx,by,bz)
  %4087 = call float @dx.op.unary.f32(i32 25, float %4086)  ; Rsqrt(value)
  %4088 = fmul fast float %4087, %4074
  %4089 = fmul fast float %4087, %4075
  %4090 = fmul fast float %4087, %4005
  %4091 = fmul fast float %4085, %4085
  %4092 = fsub fast float 1.000000e+00, %4091
  %4093 = fmul fast float %4082, 0x40005F8BE0000000
  %4094 = fsub fast float 0x400C5BF8A0000000, %4093
  %4095 = fdiv fast float %4083, %4094
  %4096 = fmul fast float %4095, 0x3FEE31C3C0000000
  %4097 = fmul fast float %4096, %4092
  %4098 = fmul fast float %4082, 0x3FDACB7480000000
  %4099 = fadd fast float %4098, 0xBFD7347680000000
  %4100 = fmul fast float %4099, %4095
  %4101 = fmul fast float %4100, %4092
  br label %4102

; <label>:4102                                    ; preds = %4073, %4052
  %4103 = phi float [ %4088, %4073 ], [ 0.000000e+00, %4052 ]
  %4104 = phi float [ %4089, %4073 ], [ 0.000000e+00, %4052 ]
  %4105 = phi float [ %4090, %4073 ], [ 0.000000e+00, %4052 ]
  %4106 = phi float [ %4097, %4073 ], [ 0.000000e+00, %4052 ]
  %4107 = phi float [ %4101, %4073 ], [ 0.000000e+00, %4052 ]
  %4108 = call float @dx.op.dot3.f32(i32 55, float %4103, float %4104, float %4105, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4109 = fmul fast float %4108, %4108
  %4110 = fmul fast float %4109, 0x3FEE471020000000
  %4111 = fadd fast float %4110, 0xBFD42F6020000000
  %4112 = fmul fast float %4068, 0x3FD20DD760000000
  %4113 = fmul fast float %4111, %4107
  %4114 = fmul fast float %4106, 0x3FDF454380000000
  %4115 = fmul fast float %4114, %4108
  %4116 = fadd fast float %4115, %4112
  %4117 = fadd fast float %4116, %4113
  %4118 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3988)  ; FMax(a,b)
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4011, float %4014, float %4017, float %4011, float %4014, float %4017)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = fcmp fast oeq float %4119, 0.000000e+00
  %4121 = fcmp fast oeq float %4118, 0.000000e+00
  %4122 = or i1 %4121, %4120
  br i1 %4122, label %4152, label %4123

; <label>:4123                                    ; preds = %4102
  %4124 = fsub fast float -0.000000e+00, %4017
  %4125 = fsub fast float -0.000000e+00, %4011
  %4126 = call float @dx.op.unary.f32(i32 24, float %4119)  ; Sqrt(value)
  %4127 = fdiv fast float %4126, %4118
  %4128 = fcmp fast ogt float %4127, 0x3FFB6F8900000000
  %4129 = select i1 %4128, float 0x3FFB6F8900000000, float %4127
  %4130 = fmul fast float %4129, 0x3FE8A23460000000
  %4131 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4132 = call float @dx.op.binary.f32(i32 35, float %4129, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4133 = fmul fast float %4131, %4118
  %4134 = fmul fast float %4132, 0x3FF279A740000000
  %4135 = fadd fast float %4134, -1.000000e+00
  %4136 = call float @dx.op.dot3.f32(i32 55, float %4124, float %4125, float %4014, float %4124, float %4125, float %4014)  ; Dot3(ax,ay,az,bx,by,bz)
  %4137 = call float @dx.op.unary.f32(i32 25, float %4136)  ; Rsqrt(value)
  %4138 = fmul fast float %4137, %4124
  %4139 = fmul fast float %4137, %4125
  %4140 = fmul fast float %4137, %4014
  %4141 = fmul fast float %4135, %4135
  %4142 = fsub fast float 1.000000e+00, %4141
  %4143 = fmul fast float %4132, 0x40005F8BE0000000
  %4144 = fsub fast float 0x400C5BF8A0000000, %4143
  %4145 = fdiv fast float %4133, %4144
  %4146 = fmul fast float %4145, 0x3FEE31C3C0000000
  %4147 = fmul fast float %4146, %4142
  %4148 = fmul fast float %4132, 0x3FDACB7480000000
  %4149 = fadd fast float %4148, 0xBFD7347680000000
  %4150 = fmul fast float %4149, %4145
  %4151 = fmul fast float %4150, %4142
  br label %4152

; <label>:4152                                    ; preds = %4123, %4102
  %4153 = phi float [ %4138, %4123 ], [ 0.000000e+00, %4102 ]
  %4154 = phi float [ %4139, %4123 ], [ 0.000000e+00, %4102 ]
  %4155 = phi float [ %4140, %4123 ], [ 0.000000e+00, %4102 ]
  %4156 = phi float [ %4147, %4123 ], [ 0.000000e+00, %4102 ]
  %4157 = phi float [ %4151, %4123 ], [ 0.000000e+00, %4102 ]
  %4158 = call float @dx.op.dot3.f32(i32 55, float %4153, float %4154, float %4155, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %4159 = fmul fast float %4158, %4158
  %4160 = fmul fast float %4159, 0x3FEE471020000000
  %4161 = fadd fast float %4160, 0xBFD42F6020000000
  %4162 = fmul fast float %4118, 0x3FD20DD760000000
  %4163 = fmul fast float %4161, %4157
  %4164 = fmul fast float %4156, 0x3FDF454380000000
  %4165 = fmul fast float %4164, %4158
  %4166 = fadd fast float %4165, %4162
  %4167 = fadd fast float %4166, %4163
  %4168 = call float @dx.op.binary.f32(i32 35, float %4067, float 0.000000e+00)  ; FMax(a,b)
  %4169 = call float @dx.op.binary.f32(i32 35, float %4117, float 0.000000e+00)  ; FMax(a,b)
  %4170 = call float @dx.op.binary.f32(i32 35, float %4167, float 0.000000e+00)  ; FMax(a,b)
  %4171 = fsub fast float %3387, %4168
  %4172 = fsub fast float %3388, %4169
  %4173 = fsub fast float %3389, %4170
  %4174 = fmul fast float %4171, %3196
  %4175 = fmul fast float %4172, %3196
  %4176 = fmul fast float %4173, %3196
  %4177 = fadd fast float %4174, %4168
  %4178 = fadd fast float %4175, %4169
  %4179 = fadd fast float %4176, %4170
  %4180 = fmul fast float %3990, %3196
  %4181 = fsub fast float %3990, %4180
  br label %4182

; <label>:4182                                    ; preds = %4152, %3386
  %4183 = phi float [ %4177, %4152 ], [ %3387, %3386 ]
  %4184 = phi float [ %4178, %4152 ], [ %3388, %3386 ]
  %4185 = phi float [ %4179, %4152 ], [ %3389, %3386 ]
  %4186 = phi float [ %4181, %4152 ], [ 0.000000e+00, %3386 ]
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = call float @dx.op.binary.f32(i32 36, float %2932, float %4188)  ; FMin(a,b)
  %4190 = fmul fast float %4189, %3175
  %4191 = fsub fast float 1.000000e+00, %4190
  %4192 = bitcast float %4191 to i32
  %4193 = sub nsw i32 2129859010, %4192
  %4194 = bitcast i32 %4193 to float
  %4195 = call float @dx.op.binary.f32(i32 36, float %2933, float %4188)  ; FMin(a,b)
  %4196 = fmul fast float %4195, %3175
  %4197 = fsub fast float 1.000000e+00, %4196
  %4198 = bitcast float %4197 to i32
  %4199 = sub nsw i32 2129859010, %4198
  %4200 = bitcast i32 %4199 to float
  %4201 = call float @dx.op.binary.f32(i32 36, float %2934, float %4188)  ; FMin(a,b)
  %4202 = fmul fast float %4201, %3175
  %4203 = fsub fast float 1.000000e+00, %4202
  %4204 = bitcast float %4203 to i32
  %4205 = sub nsw i32 2129859010, %4204
  %4206 = bitcast i32 %4205 to float
  %4207 = fmul fast float %4183, %3174
  %4208 = fmul fast float %4207, %4194
  %4209 = fmul fast float %4184, %3174
  %4210 = fmul fast float %4209, %4200
  %4211 = fmul fast float %4185, %3174
  %4212 = fmul fast float %4211, %4206
  %4213 = extractvalue %dx.types.CBufRet.i32 %3193, 2
  %4214 = and i32 %4213, 1
  %4215 = icmp ne i32 %4214, 0
  %4216 = fsub fast float 1.000000e+00, %3196
  %4217 = select i1 %4215, float %3196, float %4208
  %4218 = select i1 %4215, float %4216, float %4210
  %4219 = select i1 %4215, float 0.000000e+00, float %4212
  %4220 = call float @dx.op.dot3.f32(i32 55, float %4217, float %4218, float %4219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4221 = select i1 %3154, float 0.000000e+00, float %4217
  %4222 = select i1 %3154, float %4220, float %4218
  %4223 = select i1 %3154, float 0.000000e+00, float %4219
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = bitcast float %4225 to i32
  %4227 = lshr i32 %4226, 8
  %4228 = and i32 %4227, 255
  %4229 = uitofp i32 %4228 to float
  %4230 = fptoui float %4229 to i32
  %4231 = icmp eq i32 %4230, 23
  br i1 %4231, label %4232, label %4255

; <label>:4232                                    ; preds = %4182
  %4233 = fmul fast float %4206, %3174
  %4234 = fmul fast float %4200, %3174
  %4235 = fmul fast float %4194, %3174
  %4236 = fadd fast float %4235, 1.000000e+00
  %4237 = fadd fast float %4234, 1.000000e+00
  %4238 = fadd fast float %4233, 1.000000e+00
  %4239 = fmul fast float %4236, 5.000000e-01
  %4240 = fmul fast float %4237, 5.000000e-01
  %4241 = fmul fast float %4238, 5.000000e-01
  %4242 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4243 = call float @dx.op.unary.f32(i32 7, float %4240)  ; Saturate(value)
  %4244 = call float @dx.op.unary.f32(i32 7, float %4241)  ; Saturate(value)
  %4245 = fmul fast float %4242, 1.023000e+03
  %4246 = fmul fast float %4243, 1.023000e+03
  %4247 = fmul fast float %4244, 1.023000e+03
  %4248 = fptoui float %4245 to i32
  %4249 = fptoui float %4246 to i32
  %4250 = fptoui float %4247 to i32
  %4251 = shl i32 %4249, 10
  %4252 = or i32 %4251, %4248
  %4253 = shl i32 %4250, 20
  %4254 = or i32 %4252, %4253
  br label %4255

; <label>:4255                                    ; preds = %4232, %4182
  %4256 = phi i32 [ %4254, %4232 ], [ 0, %4182 ]
  %4257 = fsub fast float 1.000000e+00, %3156
  %4258 = fmul fast float %4257, %2981
  %4259 = fadd fast float %4258, %3156
  %4260 = fcmp fast ogt float %3016, 0.000000e+00
  %4261 = select i1 %4260, float %3024, float 0.000000e+00
  %4262 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %4261, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4263 = extractvalue %dx.types.ResRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.ResRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.ResRet.f32 %4262, 2
  %4266 = fadd fast float %4263, -5.000000e-01
  %4267 = fadd fast float %4264, -5.000000e-01
  %4268 = fadd fast float %4265, -5.000000e-01
  %4269 = fmul fast float %3035, %4266
  %4270 = fmul fast float %3039, %4267
  %4271 = fmul fast float %3156, 4.000000e+00
  %4272 = fmul fast float %4271, %4257
  %4273 = fmul fast float %4272, %3018
  %4274 = fmul fast float %4273, %4268
  %4275 = fadd fast float %3012, %4269
  %4276 = fadd fast float %3013, %4270
  %4277 = fadd fast float %4259, %4274
  %4278 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4279 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4280 = call float @dx.op.unary.f32(i32 7, float %4277)  ; Saturate(value)
  %4281 = call float @dx.op.binary.f32(i32 35, float %4279, float %4280)  ; FMax(a,b)
  %4282 = call float @dx.op.binary.f32(i32 35, float %4278, float %4281)  ; FMax(a,b)
  %4283 = fsub fast float 1.000000e+00, %4282
  %4284 = extractvalue %dx.types.CBufRet.f32 %3164, 2
  %4285 = fcmp fast olt float %4284, 0.000000e+00
  br i1 %4285, label %4286, label %4997

; <label>:4286                                    ; preds = %4255
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4290 = fmul fast float %4288, %91
  %4291 = fmul fast float %4289, %92
  %4292 = fptoui float %4290 to i32
  %4293 = fptoui float %4291 to i32
  %4294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.CBufRet.f32 %4294, 2
  %4297 = extractvalue %dx.types.CBufRet.f32 %4294, 3
  %4298 = fadd fast float %524, -4.000000e+00
  %4299 = call float @dx.op.binary.f32(i32 35, float %4298, float 0.000000e+00)  ; FMax(a,b)
  %4300 = fadd fast float %4299, %4295
  %4301 = fmul fast float %4300, %4296
  %4302 = call float @dx.op.unary.f32(i32 23, float %4301)  ; Log(value)
  %4303 = fmul fast float %4302, %4297
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4306 = fmul fast float %4303, %4305
  %4307 = call float @dx.op.unary.f32(i32 7, float %4306)  ; Saturate(value)
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4310 = add i32 %4309, -1
  %4311 = uitofp i32 %4309 to float
  %4312 = fmul fast float %4311, %4307
  %4313 = fptoui float %4312 to i32
  %4314 = call i32 @dx.op.binary.i32(i32 40, i32 %4313, i32 %4310)  ; UMin(a,b)
  %4315 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.i32 %4315, 2
  %4317 = extractvalue %dx.types.CBufRet.i32 %4315, 3
  %4318 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4293, i32 %4316, i32 %4292)  ; UMad(a,b,c)
  %4319 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4314, i32 %4317, i32 %4318)  ; UMad(a,b,c)
  %4320 = call float @dx.op.binary.f32(i32 35, float %524, float 0.000000e+00)  ; FMax(a,b)
  %4321 = fptoui float %4320 to i32
  %4322 = lshr i32 %4321, 5
  %4323 = call i32 @dx.op.binary.i32(i32 40, i32 %4322, i32 8191)  ; UMin(a,b)
  %4324 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.i32 %4324, 2
  %4326 = add nsw i32 %4325, -1
  %4327 = call i32 @dx.op.binary.i32(i32 37, i32 %4326, i32 0)  ; IMax(a,b)
  %4328 = shl i32 %4323, 2
  %4329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4328, i32 undef)  ; BufferLoad(srv,index,wot)
  %4330 = extractvalue %dx.types.ResRet.i32 %4329, 0
  %4331 = lshr i32 %4330, 16
  %4332 = and i32 %4330, 65535
  %4333 = lshr i32 %4330, 21
  %4334 = lshr i32 %4332, 5
  %4335 = call i32 @dx.op.binary.i32(i32 40, i32 %4334, i32 %4327)  ; UMin(a,b)
  %4336 = icmp ugt i32 %4333, %4335
  br i1 %4336, label %4922, label %4337

; <label>:4337                                    ; preds = %4286
  br label %4338

; <label>:4338                                    ; preds = %4904, %4337
  %4339 = phi i32 [ %4905, %4904 ], [ %2894, %4337 ]
  %4340 = phi i32 [ %4906, %4904 ], [ %4256, %4337 ]
  %4341 = phi float [ %4907, %4904 ], [ 0.000000e+00, %4337 ]
  %4342 = phi float [ %4908, %4904 ], [ 0.000000e+00, %4337 ]
  %4343 = phi float [ %4909, %4904 ], [ 0.000000e+00, %4337 ]
  %4344 = phi float [ %4910, %4904 ], [ 0.000000e+00, %4337 ]
  %4345 = phi float [ %4911, %4904 ], [ 0.000000e+00, %4337 ]
  %4346 = phi float [ %4912, %4904 ], [ 0.000000e+00, %4337 ]
  %4347 = phi i32 [ %4913, %4904 ], [ 0, %4337 ]
  %4348 = phi float [ %4914, %4904 ], [ 0.000000e+00, %4337 ]
  %4349 = phi float [ %4915, %4904 ], [ 0.000000e+00, %4337 ]
  %4350 = phi float [ %4916, %4904 ], [ 0.000000e+00, %4337 ]
  %4351 = phi i32 [ %4917, %4904 ], [ 1, %4337 ]
  %4352 = phi float [ %4918, %4904 ], [ 1.000000e+00, %4337 ]
  %4353 = phi i32 [ %4919, %4904 ], [ %4333, %4337 ]
  %4354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.i32 %4354, 2
  %4356 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4319, i32 %4355, i32 %4353)  ; UMad(a,b,c)
  %4357 = shl i32 %4356, 2
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = shl i32 %4353, 5
  %4361 = sub nsw i32 %4331, %4360
  %4362 = call i32 @dx.op.binary.i32(i32 37, i32 %4361, i32 0)  ; IMax(a,b)
  %4363 = call i32 @dx.op.binary.i32(i32 38, i32 %4362, i32 31)  ; IMin(a,b)
  %4364 = sub nsw i32 1, %4331
  %4365 = add nsw i32 %4364, %4332
  %4366 = call i32 @dx.op.binary.i32(i32 37, i32 %4365, i32 0)  ; IMax(a,b)
  %4367 = call i32 @dx.op.binary.i32(i32 38, i32 %4366, i32 32)  ; IMin(a,b)
  %4368 = and i32 %4367, 31
  %4369 = shl i32 -1, %4368
  %4370 = xor i32 %4369, -1
  %4371 = and i32 %4363, 31
  %4372 = shl i32 %4370, %4371
  %4373 = icmp eq i32 %4367, 32
  %4374 = select i1 %4373, i32 -1, i32 %4372
  %4375 = and i32 %4374, %4359
  %4376 = icmp eq i32 %4375, 0
  br i1 %4376, label %4904, label %4377

; <label>:4377                                    ; preds = %4338
  br label %4378

; <label>:4378                                    ; preds = %4515, %4377
  %4379 = phi i32 [ %4516, %4515 ], [ %4339, %4377 ]
  %4380 = phi i32 [ %4517, %4515 ], [ %4340, %4377 ]
  %4381 = phi float [ %4518, %4515 ], [ %4341, %4377 ]
  %4382 = phi float [ %4519, %4515 ], [ %4342, %4377 ]
  %4383 = phi float [ %4520, %4515 ], [ %4343, %4377 ]
  %4384 = phi float [ %4521, %4515 ], [ %4344, %4377 ]
  %4385 = phi float [ %4522, %4515 ], [ %4345, %4377 ]
  %4386 = phi float [ %4523, %4515 ], [ %4346, %4377 ]
  %4387 = phi i32 [ %4524, %4515 ], [ %4347, %4377 ]
  %4388 = phi float [ %4525, %4515 ], [ %4348, %4377 ]
  %4389 = phi float [ %4526, %4515 ], [ %4349, %4377 ]
  %4390 = phi float [ %4527, %4515 ], [ %4350, %4377 ]
  %4391 = phi i32 [ %4528, %4515 ], [ %4351, %4377 ]
  %4392 = phi float [ %4529, %4515 ], [ %4352, %4377 ]
  %4393 = phi i32 [ %4398, %4515 ], [ %4375, %4377 ]
  %4394 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4393)  ; FirstbitLo(value)
  %4395 = add i32 %4394, %4360
  %4396 = and i32 %4394, 31
  %4397 = shl i32 1, %4396
  %4398 = xor i32 %4397, %4393
  %4399 = mul i32 %4395, 72
  %4400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4399, i32 undef)  ; BufferLoad(srv,index,wot)
  %4401 = extractvalue %dx.types.ResRet.f32 %4400, 0
  %4402 = extractvalue %dx.types.ResRet.f32 %4400, 1
  %4403 = extractvalue %dx.types.ResRet.f32 %4400, 2
  %4404 = add i32 %4399, 12
  %4405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %4404, i32 undef)  ; BufferLoad(srv,index,wot)
  %4406 = extractvalue %dx.types.ResRet.i32 %4405, 0
  %4407 = add i32 %4399, 16
  %4408 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.f32 %4408, 0
  %4410 = extractvalue %dx.types.ResRet.f32 %4408, 1
  %4411 = extractvalue %dx.types.ResRet.f32 %4408, 2
  %4412 = add i32 %4399, 28
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = add i32 %4399, 32
  %4416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4415, i32 undef)  ; BufferLoad(srv,index,wot)
  %4417 = extractvalue %dx.types.ResRet.f32 %4416, 0
  %4418 = extractvalue %dx.types.ResRet.f32 %4416, 1
  %4419 = extractvalue %dx.types.ResRet.f32 %4416, 2
  %4420 = extractvalue %dx.types.ResRet.f32 %4416, 3
  %4421 = add i32 %4399, 48
  %4422 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4421, i32 undef)  ; BufferLoad(srv,index,wot)
  %4423 = extractvalue %dx.types.ResRet.f32 %4422, 0
  %4424 = extractvalue %dx.types.ResRet.f32 %4422, 1
  %4425 = add i32 %4399, 56
  %4426 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4425, i32 undef)  ; BufferLoad(srv,index,wot)
  %4427 = extractvalue %dx.types.ResRet.f32 %4426, 0
  %4428 = extractvalue %dx.types.ResRet.f32 %4426, 1
  %4429 = add i32 %4399, 64
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = extractvalue %dx.types.ResRet.f32 %4430, 1
  %4433 = mul i32 %4395, 60
  %4434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = extractvalue %dx.types.ResRet.f32 %4434, 1
  %4437 = extractvalue %dx.types.ResRet.f32 %4434, 2
  %4438 = add i32 %4433, 12
  %4439 = add i32 %4433, 48
  %4440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4439, i32 undef)  ; BufferLoad(srv,index,wot)
  %4441 = extractvalue %dx.types.ResRet.f32 %4440, 0
  %4442 = extractvalue %dx.types.ResRet.f32 %4440, 1
  %4443 = extractvalue %dx.types.ResRet.f32 %4440, 2
  %4444 = and i32 %4406, 32767
  %4445 = bitcast float %4401 to i32
  %4446 = bitcast float %4402 to i32
  %4447 = and i32 %4406, 32768
  %4448 = icmp ne i32 %4447, 0
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 3
  %4451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.CBufRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.CBufRet.f32 %4451, 2
  %4455 = fsub fast float %4435, %4452
  %4456 = fsub fast float %4436, %4453
  %4457 = fsub fast float %4437, %4454
  %4458 = fsub fast float %563, %4455
  %4459 = fsub fast float %564, %4456
  %4460 = fsub fast float %565, %4457
  %4461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.ResRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.ResRet.f32 %4461, 2
  %4465 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4462, float %4463, float %4464)  ; Dot3(ax,ay,az,bx,by,bz)
  %4466 = add i32 %4433, 24
  %4467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4466, i32 undef)  ; BufferLoad(srv,index,wot)
  %4468 = extractvalue %dx.types.ResRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.ResRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.ResRet.f32 %4467, 2
  %4471 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4468, float %4469, float %4470)  ; Dot3(ax,ay,az,bx,by,bz)
  %4472 = add i32 %4433, 36
  %4473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4474, float %4475, float %4476)  ; Dot3(ax,ay,az,bx,by,bz)
  %4478 = call float @dx.op.unary.f32(i32 6, float %4465)  ; FAbs(value)
  %4479 = call float @dx.op.unary.f32(i32 6, float %4471)  ; FAbs(value)
  %4480 = call float @dx.op.unary.f32(i32 6, float %4477)  ; FAbs(value)
  %4481 = fsub fast float %4441, %4478
  %4482 = fsub fast float %4442, %4479
  %4483 = fsub fast float %4443, %4480
  %4484 = fmul fast float %4481, %4409
  %4485 = fmul fast float %4482, %4410
  %4486 = fmul fast float %4483, %4411
  %4487 = call float @dx.op.binary.f32(i32 36, float %4485, float %4486)  ; FMin(a,b)
  %4488 = call float @dx.op.binary.f32(i32 36, float %4484, float %4487)  ; FMin(a,b)
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = call float @dx.op.binary.f32(i32 36, float %4392, float %4489)  ; FMin(a,b)
  %4491 = uitofp i1 %4448 to float
  %4492 = select i1 %103, float 1.000000e+00, float 2.000000e+00
  %4493 = fsub fast float %4492, %4491
  %4494 = fmul fast float %4490, %4493
  %4495 = lshr i32 %4379, 8
  %4496 = and i32 %4495, 255
  %4497 = uitofp i32 %4496 to float
  %4498 = fptoui float %4497 to i32
  %4499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4500 = extractvalue %dx.types.CBufRet.f32 %4499, 1
  %4501 = bitcast float %4500 to i32
  %4502 = lshr i32 %4501, 24
  %4503 = uitofp i32 %4502 to float
  %4504 = fptoui float %4503 to i32
  %4505 = icmp ne i32 %4504, 1
  %4506 = zext i1 %4505 to i32
  %4507 = add i32 %4506, %4498
  %4508 = uitofp i32 %4507 to float
  %4509 = fptoui float %4508 to i32
  %4510 = shl i32 %4509, 8
  %4511 = and i32 %4510, 65280
  %4512 = and i32 %4379, -65281
  %4513 = or i32 %4511, %4512
  %4514 = fcmp fast ogt float %4494, 0.000000e+00
  br i1 %4514, label %4531, label %4515

; <label>:4515                                    ; preds = %4887, %4756, %4378
  %4516 = phi i32 [ %4834, %4756 ], [ %4513, %4378 ], [ %4834, %4887 ]
  %4517 = phi i32 [ %4380, %4756 ], [ %4380, %4378 ], [ %4902, %4887 ]
  %4518 = phi float [ %4820, %4756 ], [ %4381, %4378 ], [ %4820, %4887 ]
  %4519 = phi float [ %4821, %4756 ], [ %4382, %4378 ], [ %4821, %4887 ]
  %4520 = phi float [ %4822, %4756 ], [ %4383, %4378 ], [ %4822, %4887 ]
  %4521 = phi float [ %4881, %4756 ], [ %4384, %4378 ], [ %4881, %4887 ]
  %4522 = phi float [ %4882, %4756 ], [ %4385, %4378 ], [ %4882, %4887 ]
  %4523 = phi float [ %4883, %4756 ], [ %4386, %4378 ], [ %4883, %4887 ]
  %4524 = phi i32 [ %4885, %4756 ], [ %4387, %4378 ], [ %4885, %4887 ]
  %4525 = phi float [ %4838, %4756 ], [ %4388, %4378 ], [ %4838, %4887 ]
  %4526 = phi float [ %4839, %4756 ], [ %4389, %4378 ], [ %4839, %4887 ]
  %4527 = phi float [ %4840, %4756 ], [ %4390, %4378 ], [ %4840, %4887 ]
  %4528 = phi i32 [ 0, %4756 ], [ %4391, %4378 ], [ 0, %4887 ]
  %4529 = phi float [ %4823, %4756 ], [ %4392, %4378 ], [ %4823, %4887 ]
  %4530 = icmp eq i32 %4393, %4397
  br i1 %4530, label %4903, label %4378

; <label>:4531                                    ; preds = %4378
  %4532 = extractvalue %dx.types.CBufRet.f32 %4499, 0
  %4533 = bitcast float %4532 to i32
  %4534 = lshr i32 %4533, 8
  %4535 = and i32 %4534, 255
  %4536 = uitofp i32 %4535 to float
  %4537 = fptoui float %4536 to i32
  %4538 = and i32 %4537, 2
  %4539 = icmp eq i32 %4538, 0
  br i1 %4539, label %4546, label %4540

; <label>:4540                                    ; preds = %4531
  %4541 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %563, float %564, float %565)  ; Dot3(ax,ay,az,bx,by,bz)
  %4542 = call float @dx.op.unary.f32(i32 25, float %4541)  ; Rsqrt(value)
  %4543 = fmul fast float %4542, %563
  %4544 = fmul fast float %4542, %564
  %4545 = fmul fast float %4542, %565
  br label %4546

; <label>:4546                                    ; preds = %4540, %4531
  %4547 = phi float [ %4543, %4540 ], [ %2920, %4531 ]
  %4548 = phi float [ %4544, %4540 ], [ %2921, %4531 ]
  %4549 = phi float [ %4545, %4540 ], [ %2922, %4531 ]
  %4550 = icmp ne i32 %4445, -1
  %4551 = fcmp oeq float %4450, 0.000000e+00
  %4552 = and i1 %4551, %4550
  br i1 %4552, label %4553, label %4677

; <label>:4553                                    ; preds = %4546
  %4554 = fsub fast float -0.000000e+00, %4462
  %4555 = fsub fast float -0.000000e+00, %4463
  %4556 = fsub fast float -0.000000e+00, %4464
  %4557 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4558 = fsub fast float -0.000000e+00, %4557
  %4559 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %4560 = fadd fast float %4559, %4424
  %4561 = fadd fast float %4423, %4559
  %4562 = fsub fast float -0.000000e+00, %4561
  %4563 = fcmp ogt float %4557, -0.000000e+00
  %4564 = select i1 %4563, float %4562, float %4560
  %4565 = call float @dx.op.unary.f32(i32 6, float %4558)  ; FAbs(value)
  %4566 = fdiv fast float 1.000000e+00, %4565
  %4567 = fmul fast float %4564, %4566
  %4568 = call float @dx.op.binary.f32(i32 35, float %4567, float 0.000000e+00)  ; FMax(a,b)
  %4569 = fsub fast float -0.000000e+00, %4468
  %4570 = fsub fast float -0.000000e+00, %4469
  %4571 = fsub fast float -0.000000e+00, %4470
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float %4569, float %4570, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = fsub fast float -0.000000e+00, %4572
  %4574 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4569, float %4570, float %4571)  ; Dot3(ax,ay,az,bx,by,bz)
  %4575 = fadd fast float %4574, %4428
  %4576 = fadd fast float %4427, %4574
  %4577 = fsub fast float -0.000000e+00, %4576
  %4578 = fcmp ogt float %4572, -0.000000e+00
  %4579 = select i1 %4578, float %4577, float %4575
  %4580 = call float @dx.op.unary.f32(i32 6, float %4573)  ; FAbs(value)
  %4581 = fdiv fast float 1.000000e+00, %4580
  %4582 = fmul fast float %4579, %4581
  %4583 = call float @dx.op.binary.f32(i32 35, float %4582, float 0.000000e+00)  ; FMax(a,b)
  %4584 = fsub fast float -0.000000e+00, %4474
  %4585 = fsub fast float -0.000000e+00, %4475
  %4586 = fsub fast float -0.000000e+00, %4476
  %4587 = call float @dx.op.dot3.f32(i32 55, float %4547, float %4548, float %4549, float %4584, float %4585, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %4588 = fsub fast float -0.000000e+00, %4587
  %4589 = call float @dx.op.dot3.f32(i32 55, float %4458, float %4459, float %4460, float %4584, float %4585, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %4590 = fadd fast float %4589, %4432
  %4591 = fadd fast float %4431, %4589
  %4592 = fsub fast float -0.000000e+00, %4591
  %4593 = fcmp ogt float %4587, -0.000000e+00
  %4594 = select i1 %4593, float %4592, float %4590
  %4595 = call float @dx.op.unary.f32(i32 6, float %4588)  ; FAbs(value)
  %4596 = fdiv fast float 1.000000e+00, %4595
  %4597 = fmul fast float %4594, %4596
  %4598 = call float @dx.op.binary.f32(i32 35, float %4597, float 0.000000e+00)  ; FMax(a,b)
  %4599 = call float @dx.op.binary.f32(i32 36, float %4583, float %4598)  ; FMin(a,b)
  %4600 = call float @dx.op.binary.f32(i32 36, float %4568, float %4599)  ; FMin(a,b)
  %4601 = fmul fast float %4600, %4547
  %4602 = fmul fast float %4600, %4548
  %4603 = fmul fast float %4600, %4549
  %4604 = fadd fast float %4601, %563
  %4605 = fadd fast float %4602, %564
  %4606 = fadd fast float %4603, %565
  %4607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.f32 %4607, 0
  %4609 = extractvalue %dx.types.CBufRet.f32 %4607, 1
  %4610 = extractvalue %dx.types.CBufRet.f32 %4607, 2
  %4611 = fadd fast float %4604, %4608
  %4612 = fadd fast float %4605, %4609
  %4613 = fadd fast float %4606, %4610
  %4614 = fcmp fast olt float %4568, %4583
  %4615 = fcmp fast olt float %4568, %4598
  %4616 = and i1 %4614, %4615
  br i1 %4616, label %4620, label %4617

; <label>:4617                                    ; preds = %4553
  %4618 = fcmp fast olt float %4583, %4598
  br i1 %4618, label %4619, label %4620

; <label>:4619                                    ; preds = %4617
  br label %4620

; <label>:4620                                    ; preds = %4619, %4617, %4553
  %4621 = phi float [ 0.000000e+00, %4619 ], [ 0.000000e+00, %4617 ], [ 1.000000e+00, %4553 ]
  %4622 = phi float [ 1.000000e+00, %4619 ], [ 0.000000e+00, %4617 ], [ 0.000000e+00, %4553 ]
  %4623 = phi float [ 0.000000e+00, %4619 ], [ 1.000000e+00, %4617 ], [ 0.000000e+00, %4553 ]
  %4624 = phi float [ %4468, %4619 ], [ %4474, %4617 ], [ %4462, %4553 ]
  %4625 = phi float [ %4469, %4619 ], [ %4475, %4617 ], [ %4463, %4553 ]
  %4626 = phi float [ %4470, %4619 ], [ %4476, %4617 ], [ %4464, %4553 ]
  %4627 = call float @dx.op.unary.f32(i32 6, float %4626)  ; FAbs(value)
  %4628 = fcmp fast olt float %4627, 0x3FE276C8C0000000
  %4629 = select i1 %4628, float 0.000000e+00, float 1.000000e+00
  %4630 = select i1 %4628, float 1.000000e+00, float 0.000000e+00
  %4631 = fmul fast float %4630, %4625
  %4632 = fmul fast float %4629, %4626
  %4633 = fsub fast float %4631, %4632
  %4634 = fmul fast float %4624, %4630
  %4635 = fsub fast float -0.000000e+00, %4634
  %4636 = fmul fast float %4629, %4624
  %4637 = call float @dx.op.dot3.f32(i32 55, float %4633, float %4635, float %4636, float %4633, float %4635, float %4636)  ; Dot3(ax,ay,az,bx,by,bz)
  %4638 = call float @dx.op.unary.f32(i32 25, float %4637)  ; Rsqrt(value)
  %4639 = fmul fast float %4633, %4638
  %4640 = fmul fast float %4638, %4635
  %4641 = fmul fast float %4636, %4638
  %4642 = fmul fast float %4641, %4625
  %4643 = fmul fast float %4640, %4626
  %4644 = fsub fast float %4642, %4643
  %4645 = fmul fast float %4639, %4626
  %4646 = fmul fast float %4641, %4624
  %4647 = fsub fast float %4645, %4646
  %4648 = fmul fast float %4640, %4624
  %4649 = fmul fast float %4639, %4625
  %4650 = fsub fast float %4648, %4649
  %4651 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4647, float %4650, float %4644, float %4647, float %4650)  ; Dot3(ax,ay,az,bx,by,bz)
  %4652 = call float @dx.op.unary.f32(i32 25, float %4651)  ; Rsqrt(value)
  %4653 = fmul fast float %4644, %4652
  %4654 = fmul fast float %4647, %4652
  %4655 = fmul fast float %4650, %4652
  %4656 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %4639, float %4640, float %4641)  ; Dot3(ax,ay,az,bx,by,bz)
  %4657 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4612, float %4613, float %4653, float %4654, float %4655)  ; Dot3(ax,ay,az,bx,by,bz)
  %4658 = fmul fast float %4656, 0x3FA99999A0000000
  %4659 = fmul fast float %4657, 0x3FA99999A0000000
  %4660 = call float @dx.op.unary.f32(i32 22, float %4658)  ; Frc(value)
  %4661 = call float @dx.op.unary.f32(i32 22, float %4659)  ; Frc(value)
  %4662 = fadd fast float %4660, 0xBFB99999A0000000
  %4663 = fadd fast float %4661, 0xBFB99999A0000000
  %4664 = call float @dx.op.unary.f32(i32 6, float %4662)  ; FAbs(value)
  %4665 = call float @dx.op.unary.f32(i32 6, float %4663)  ; FAbs(value)
  %4666 = fmul fast float %4664, 1.000000e+01
  %4667 = fmul fast float %4665, 1.000000e+01
  %4668 = call float @dx.op.binary.f32(i32 36, float %4666, float %4667)  ; FMin(a,b)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = fmul fast float %4670, %4621
  %4672 = fmul fast float %4670, %4622
  %4673 = fmul fast float %4670, %4623
  %4674 = fsub fast float %4604, %4401
  %4675 = fsub fast float %4605, %4402
  %4676 = fsub fast float %4606, %4403
  br label %4684

; <label>:4677                                    ; preds = %4546
  %4678 = fmul fast float %4547, 8.096000e+03
  %4679 = fmul fast float %4548, 8.096000e+03
  %4680 = fmul fast float %4549, 8.096000e+03
  %4681 = fadd fast float %4678, %563
  %4682 = fadd fast float %4679, %564
  %4683 = fadd fast float %4680, %565
  br label %4684

; <label>:4684                                    ; preds = %4677, %4620
  %4685 = phi float [ %4547, %4677 ], [ %4674, %4620 ]
  %4686 = phi float [ %4548, %4677 ], [ %4675, %4620 ]
  %4687 = phi float [ %4549, %4677 ], [ %4676, %4620 ]
  %4688 = phi float [ %4681, %4677 ], [ %4604, %4620 ]
  %4689 = phi float [ %4682, %4677 ], [ %4605, %4620 ]
  %4690 = phi float [ %4683, %4677 ], [ %4606, %4620 ]
  %4691 = phi float [ 0.000000e+00, %4677 ], [ %4671, %4620 ]
  %4692 = phi float [ 0.000000e+00, %4677 ], [ %4672, %4620 ]
  %4693 = phi float [ 0.000000e+00, %4677 ], [ %4673, %4620 ]
  %4694 = fcmp fast olt float %4420, 1.000000e+00
  br i1 %4694, label %4695, label %4726, !dx.controlflow.hints !128

; <label>:4695                                    ; preds = %4684
  %4696 = fmul fast float %4687, %4418
  %4697 = fmul fast float %4686, %4419
  %4698 = fsub fast float %4696, %4697
  %4699 = fmul fast float %4685, %4419
  %4700 = fmul fast float %4687, %4417
  %4701 = fsub fast float %4699, %4700
  %4702 = fmul fast float %4686, %4417
  %4703 = fmul fast float %4685, %4418
  %4704 = fsub fast float %4702, %4703
  %4705 = fmul fast float %4698, 2.000000e+00
  %4706 = fmul fast float %4701, 2.000000e+00
  %4707 = fmul fast float %4704, 2.000000e+00
  %4708 = fmul fast float %4705, %4420
  %4709 = fmul fast float %4706, %4420
  %4710 = fmul fast float %4707, %4420
  %4711 = fmul fast float %4707, %4418
  %4712 = fmul fast float %4706, %4419
  %4713 = fmul fast float %4705, %4419
  %4714 = fmul fast float %4707, %4417
  %4715 = fmul fast float %4706, %4417
  %4716 = fmul fast float %4705, %4418
  %4717 = fadd fast float %4711, %4685
  %4718 = fadd fast float %4717, %4708
  %4719 = fsub fast float %4718, %4712
  %4720 = fsub fast float %4686, %4714
  %4721 = fadd fast float %4720, %4709
  %4722 = fadd fast float %4721, %4713
  %4723 = fadd fast float %4710, %4687
  %4724 = fsub fast float %4723, %4716
  %4725 = fadd fast float %4724, %4715
  br label %4726

; <label>:4726                                    ; preds = %4695, %4684
  %4727 = phi float [ %4719, %4695 ], [ %4685, %4684 ]
  %4728 = phi float [ %4722, %4695 ], [ %4686, %4684 ]
  %4729 = phi float [ %4725, %4695 ], [ %4687, %4684 ]
  br i1 %4552, label %4730, label %4753

; <label>:4730                                    ; preds = %4726
  %4731 = fsub fast float %4688, %563
  %4732 = fsub fast float %4689, %564
  %4733 = fsub fast float %4690, %565
  %4734 = fsub fast float %4688, %4401
  %4735 = fsub fast float %4689, %4402
  %4736 = fsub fast float %4690, %4403
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4733, float %4731, float %4732, float %4733)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.dot3.f32(i32 55, float %4734, float %4735, float %4736, float %4734, float %4735, float %4736)  ; Dot3(ax,ay,az,bx,by,bz)
  %4739 = fadd fast float %4738, 0x3EE4F8B580000000
  %4740 = fdiv fast float %4737, %4739
  %4741 = bitcast float %4740 to i32
  %4742 = ashr i32 %4741, 1
  %4743 = add nsw i32 %4742, 532487669
  %4744 = bitcast i32 %4743 to float
  %4745 = call float @dx.op.unary.f32(i32 7, float %4744)  ; Saturate(value)
  %4746 = fmul fast float %4745, 0x4009981AE0000000
  %4747 = fsub fast float 0x40111BBD80000000, %4746
  %4748 = fmul fast float %4747, %4745
  %4749 = fadd fast float %4748, 0xC0009F6020000000
  %4750 = fmul fast float %4749, %4745
  %4751 = fadd fast float %4750, 1.000000e+00
  %4752 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  br label %4756

; <label>:4753                                    ; preds = %4726
  %4754 = icmp ne i32 %4446, -1
  %4755 = zext i1 %4754 to i32
  br label %4756

; <label>:4756                                    ; preds = %4753, %4730
  %4757 = phi float [ 0.000000e+00, %4753 ], [ %4752, %4730 ]
  %4758 = phi i32 [ %4755, %4753 ], [ 0, %4730 ]
  %4759 = fmul float %4757, 5.000000e+00
  %4760 = fsub float 5.000000e+00, %4759
  %4761 = icmp ne i32 %4758, 0
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4764 = fadd fast float %4763, %4760
  %4765 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4764)  ; FMax(a,b)
  %4766 = call float @dx.op.unary.f32(i32 6, float %4727)  ; FAbs(value)
  %4767 = call float @dx.op.unary.f32(i32 6, float %4728)  ; FAbs(value)
  %4768 = fadd fast float %4767, %4766
  %4769 = call float @dx.op.unary.f32(i32 6, float %4729)  ; FAbs(value)
  %4770 = fadd fast float %4768, %4769
  %4771 = fcmp fast oeq float %4770, 0.000000e+00
  %4772 = fdiv fast float 1.000000e+00, %4770
  %4773 = select i1 %4771, float 1.000000e+00, float %4772
  %4774 = fmul fast float %4773, %4727
  %4775 = fmul fast float %4773, %4728
  %4776 = call float @dx.op.unary.f32(i32 6, float %4775)  ; FAbs(value)
  %4777 = call float @dx.op.unary.f32(i32 6, float %4774)  ; FAbs(value)
  %4778 = fsub fast float 1.000000e+00, %4776
  %4779 = fsub fast float 1.000000e+00, %4777
  %4780 = fcmp fast oge float %4774, 0.000000e+00
  %4781 = fcmp fast oge float %4775, 0.000000e+00
  %4782 = select i1 %4780, float 1.000000e+00, float -1.000000e+00
  %4783 = select i1 %4781, float 1.000000e+00, float -1.000000e+00
  %4784 = fcmp fast ole float %4729, 0.000000e+00
  %4785 = fmul fast float %4782, %4778
  %4786 = fmul fast float %4783, %4779
  %4787 = select i1 %4784, float %4785, float %4774
  %4788 = select i1 %4784, float %4786, float %4775
  %4789 = fmul fast float %4787, 5.000000e-01
  %4790 = fmul fast float %4788, 5.000000e-01
  %4791 = fadd fast float %4789, 5.000000e-01
  %4792 = fadd fast float %4790, 5.000000e-01
  %4793 = uitofp i32 %4444 to float
  %4794 = call float @dx.op.binary.f32(i32 36, float %4765, float 3.000000e+00)  ; FMin(a,b)
  %4795 = fadd fast float %4794, 2.000000e+00
  %4796 = call float @dx.op.unary.f32(i32 21, float %4795)  ; Exp(value)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4798 = fmul fast float %4797, %4796
  %4799 = fmul fast float %4798, 2.000000e+00
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = fmul fast float %4791, %4800
  %4802 = fmul fast float %4792, %4800
  %4803 = fadd fast float %4801, %4798
  %4804 = fadd fast float %4802, %4798
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %61, float %4803, float %4804, float %4793, float undef, i32 0, i32 0, i32 undef, float %4765)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.ResRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.ResRet.f32 %4805, 2
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 3
  %4811 = fmul fast float %4810, %4414
  %4812 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4811)  ; FMin(a,b)
  %4813 = select i1 %4761, float %4812, float %4811
  %4814 = fmul fast float %4806, %4494
  %4815 = fmul fast float %4814, %4813
  %4816 = fmul fast float %4807, %4494
  %4817 = fmul fast float %4816, %4813
  %4818 = fmul fast float %4808, %4494
  %4819 = fmul fast float %4818, %4813
  %4820 = fadd fast float %4815, %4381
  %4821 = fadd fast float %4817, %4382
  %4822 = fadd fast float %4819, %4383
  %4823 = fsub fast float %4392, %4494
  %4824 = and i32 %4509, 255
  %4825 = uitofp i32 %4824 to float
  %4826 = fptoui float %4825 to i32
  %4827 = icmp eq i32 %4504, 1
  %4828 = zext i1 %4827 to i32
  %4829 = add i32 %4828, %4826
  %4830 = uitofp i32 %4829 to float
  %4831 = fptoui float %4830 to i32
  %4832 = shl i32 %4831, 8
  %4833 = and i32 %4832, 65280
  %4834 = or i32 %4833, %4512
  %4835 = fmul fast float %4691, %4494
  %4836 = fmul fast float %4692, %4494
  %4837 = fmul fast float %4693, %4494
  %4838 = fadd fast float %4835, %4388
  %4839 = fadd fast float %4836, %4389
  %4840 = fadd fast float %4837, %4390
  %4841 = fmul fast float %4793, 0x3FE3C6EF40000000
  %4842 = call float @dx.op.unary.f32(i32 22, float %4841)  ; Frc(value)
  %4843 = fadd fast float %4842, 0x3FE5555560000000
  %4844 = fadd fast float %4842, 0x3FD5555560000000
  %4845 = fsub fast float -0.000000e+00, %4842
  %4846 = fsub fast float -0.000000e+00, %4843
  %4847 = fsub fast float -0.000000e+00, %4844
  %4848 = fcmp fast oge float %4842, %4845
  %4849 = fcmp fast oge float %4843, %4846
  %4850 = fcmp fast oge float %4844, %4847
  %4851 = call float @dx.op.unary.f32(i32 6, float %4842)  ; FAbs(value)
  %4852 = call float @dx.op.unary.f32(i32 6, float %4843)  ; FAbs(value)
  %4853 = call float @dx.op.unary.f32(i32 6, float %4844)  ; FAbs(value)
  %4854 = call float @dx.op.unary.f32(i32 22, float %4851)  ; Frc(value)
  %4855 = call float @dx.op.unary.f32(i32 22, float %4852)  ; Frc(value)
  %4856 = call float @dx.op.unary.f32(i32 22, float %4853)  ; Frc(value)
  %4857 = fsub fast float -0.000000e+00, %4854
  %4858 = fsub fast float -0.000000e+00, %4855
  %4859 = fsub fast float -0.000000e+00, %4856
  %4860 = select i1 %4848, float %4854, float %4857
  %4861 = select i1 %4849, float %4855, float %4858
  %4862 = select i1 %4850, float %4856, float %4859
  %4863 = fmul fast float %4860, 6.000000e+00
  %4864 = fmul fast float %4861, 6.000000e+00
  %4865 = fmul fast float %4862, 6.000000e+00
  %4866 = fadd fast float %4863, -3.000000e+00
  %4867 = fadd fast float %4864, -3.000000e+00
  %4868 = fadd fast float %4865, -3.000000e+00
  %4869 = call float @dx.op.unary.f32(i32 6, float %4866)  ; FAbs(value)
  %4870 = call float @dx.op.unary.f32(i32 6, float %4867)  ; FAbs(value)
  %4871 = call float @dx.op.unary.f32(i32 6, float %4868)  ; FAbs(value)
  %4872 = fadd fast float %4869, -1.000000e+00
  %4873 = fadd fast float %4870, -1.000000e+00
  %4874 = fadd fast float %4871, -1.000000e+00
  %4875 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4876 = call float @dx.op.unary.f32(i32 7, float %4873)  ; Saturate(value)
  %4877 = call float @dx.op.unary.f32(i32 7, float %4874)  ; Saturate(value)
  %4878 = fmul fast float %4875, %4494
  %4879 = fmul fast float %4876, %4494
  %4880 = fmul fast float %4877, %4494
  %4881 = fadd fast float %4878, %4384
  %4882 = fadd fast float %4879, %4385
  %4883 = fadd fast float %4880, %4386
  %4884 = icmp eq i32 %4444, 0
  %4885 = select i1 %4884, i32 1, i32 %4387
  %4886 = icmp eq i32 %4391, 0
  br i1 %4886, label %4515, label %4887

; <label>:4887                                    ; preds = %4756
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = bitcast float %4889 to i32
  %4891 = lshr i32 %4890, 8
  %4892 = and i32 %4891, 255
  %4893 = uitofp i32 %4892 to float
  %4894 = fptoui float %4893 to i32
  %4895 = icmp eq i32 %4894, 16
  %4896 = bitcast float %4811 to i32
  %4897 = select i1 %4895, i32 %4896, i32 %4380
  %4898 = icmp eq i32 %4894, 17
  %4899 = select i1 %4898, i32 1065353216, i32 %4897
  %4900 = icmp eq i32 %4894, 18
  %4901 = bitcast float %4813 to i32
  %4902 = select i1 %4900, i32 %4901, i32 %4899
  br label %4515

; <label>:4903                                    ; preds = %4515
  br label %4904

; <label>:4904                                    ; preds = %4903, %4338
  %4905 = phi i32 [ %4339, %4338 ], [ %4516, %4903 ]
  %4906 = phi i32 [ %4340, %4338 ], [ %4517, %4903 ]
  %4907 = phi float [ %4341, %4338 ], [ %4518, %4903 ]
  %4908 = phi float [ %4342, %4338 ], [ %4519, %4903 ]
  %4909 = phi float [ %4343, %4338 ], [ %4520, %4903 ]
  %4910 = phi float [ %4344, %4338 ], [ %4521, %4903 ]
  %4911 = phi float [ %4345, %4338 ], [ %4522, %4903 ]
  %4912 = phi float [ %4346, %4338 ], [ %4523, %4903 ]
  %4913 = phi i32 [ %4347, %4338 ], [ %4524, %4903 ]
  %4914 = phi float [ %4348, %4338 ], [ %4525, %4903 ]
  %4915 = phi float [ %4349, %4338 ], [ %4526, %4903 ]
  %4916 = phi float [ %4350, %4338 ], [ %4527, %4903 ]
  %4917 = phi i32 [ %4351, %4338 ], [ %4528, %4903 ]
  %4918 = phi float [ %4352, %4338 ], [ %4529, %4903 ]
  %4919 = add i32 %4353, 1
  %4920 = icmp ugt i32 %4919, %4335
  br i1 %4920, label %4921, label %4338, !llvm.loop !129

; <label>:4921                                    ; preds = %4904
  br label %4922

; <label>:4922                                    ; preds = %4921, %4286
  %4923 = phi i32 [ %2894, %4286 ], [ %4905, %4921 ]
  %4924 = phi i32 [ %4256, %4286 ], [ %4906, %4921 ]
  %4925 = phi float [ 0.000000e+00, %4286 ], [ %4907, %4921 ]
  %4926 = phi float [ 0.000000e+00, %4286 ], [ %4908, %4921 ]
  %4927 = phi float [ 0.000000e+00, %4286 ], [ %4909, %4921 ]
  %4928 = phi float [ 0.000000e+00, %4286 ], [ %4910, %4921 ]
  %4929 = phi float [ 0.000000e+00, %4286 ], [ %4911, %4921 ]
  %4930 = phi float [ 0.000000e+00, %4286 ], [ %4912, %4921 ]
  %4931 = phi i32 [ 0, %4286 ], [ %4913, %4921 ]
  %4932 = phi float [ 0.000000e+00, %4286 ], [ %4914, %4921 ]
  %4933 = phi float [ 0.000000e+00, %4286 ], [ %4915, %4921 ]
  %4934 = phi float [ 0.000000e+00, %4286 ], [ %4916, %4921 ]
  %4935 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4936 = select i1 %3154, float %4935, float %4926
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 0
  %4939 = bitcast float %4938 to i32
  %4940 = lshr i32 %4939, 8
  %4941 = and i32 %4940, 255
  %4942 = uitofp i32 %4941 to float
  %4943 = fptoui float %4942 to i32
  %4944 = icmp eq i32 %4943, 13
  br i1 %4944, label %4945, label %4965

; <label>:4945                                    ; preds = %4922
  %4946 = fadd fast float %4928, 1.000000e+00
  %4947 = fadd fast float %4929, 1.000000e+00
  %4948 = fadd fast float %4930, 1.000000e+00
  %4949 = fmul fast float %4946, 5.000000e-01
  %4950 = fmul fast float %4947, 5.000000e-01
  %4951 = fmul fast float %4948, 5.000000e-01
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4955 = fmul fast float %4952, 1.023000e+03
  %4956 = fmul fast float %4953, 1.023000e+03
  %4957 = fmul fast float %4954, 1.023000e+03
  %4958 = fptoui float %4955 to i32
  %4959 = fptoui float %4956 to i32
  %4960 = fptoui float %4957 to i32
  %4961 = shl i32 %4959, 10
  %4962 = or i32 %4961, %4958
  %4963 = shl i32 %4960, 20
  %4964 = or i32 %4962, %4963
  br label %4965

; <label>:4965                                    ; preds = %4945, %4922
  %4966 = phi i32 [ %4964, %4945 ], [ %4924, %4922 ]
  %4967 = icmp eq i32 %4943, 14
  %4968 = select i1 %4967, i32 %4931, i32 %4966
  %4969 = icmp eq i32 %4943, 22
  br i1 %4969, label %4970, label %4990

; <label>:4970                                    ; preds = %4965
  %4971 = fadd fast float %4932, 1.000000e+00
  %4972 = fadd fast float %4933, 1.000000e+00
  %4973 = fadd fast float %4934, 1.000000e+00
  %4974 = fmul fast float %4971, 5.000000e-01
  %4975 = fmul fast float %4972, 5.000000e-01
  %4976 = fmul fast float %4973, 5.000000e-01
  %4977 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  %4978 = call float @dx.op.unary.f32(i32 7, float %4975)  ; Saturate(value)
  %4979 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4980 = fmul fast float %4977, 1.023000e+03
  %4981 = fmul fast float %4978, 1.023000e+03
  %4982 = fmul fast float %4979, 1.023000e+03
  %4983 = fptoui float %4980 to i32
  %4984 = fptoui float %4981 to i32
  %4985 = fptoui float %4982 to i32
  %4986 = shl i32 %4984, 10
  %4987 = or i32 %4986, %4983
  %4988 = shl i32 %4985, 20
  %4989 = or i32 %4987, %4988
  br label %4990

; <label>:4990                                    ; preds = %4970, %4965
  %4991 = phi i32 [ %4989, %4970 ], [ %4968, %4965 ]
  %4992 = fmul fast float %4925, 0x3FD45F3060000000
  %4993 = select i1 %3154, float 0.000000e+00, float %4992
  %4994 = fmul fast float %4936, 0x3FD45F3060000000
  %4995 = fmul fast float %4927, 0x3FD45F3060000000
  %4996 = select i1 %3154, float 0.000000e+00, float %4995
  br label %4997

; <label>:4997                                    ; preds = %4990, %4255
  %4998 = phi i32 [ %4923, %4990 ], [ %2894, %4255 ]
  %4999 = phi i32 [ %4991, %4990 ], [ %4256, %4255 ]
  %5000 = phi float [ %4993, %4990 ], [ %4221, %4255 ]
  %5001 = phi float [ %4994, %4990 ], [ %4222, %4255 ]
  %5002 = phi float [ %4996, %4990 ], [ %4223, %4255 ]
  %5003 = phi i1 [ false, %4990 ], [ true, %4255 ]
  %5004 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.i32 %5004, 0
  %5006 = and i32 %5005, 524288
  %5007 = icmp ne i32 %5006, 0
  %5008 = select i1 %5007, float 0.000000e+00, float 1.000000e+00
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = bitcast float %5010 to i32
  %5012 = and i32 %5011, 255
  %5013 = uitofp i32 %5012 to float
  %5014 = fptoui float %5013 to i32
  %5015 = icmp eq i32 %5014, 38
  %5016 = select i1 %5015, i32 0, i32 %4999
  %5017 = lshr i32 %5011, 8
  %5018 = and i32 %5017, 255
  %5019 = uitofp i32 %5018 to float
  %5020 = fptoui float %5019 to i32
  %5021 = icmp eq i32 %5020, 24
  br i1 %5021, label %5022, label %5033

; <label>:5022                                    ; preds = %4997
  %5023 = fadd fast float %3186, 1.000000e+00
  %5024 = fmul fast float %5023, 5.000000e-01
  %5025 = select i1 %3188, float %5024, float 1.000000e+00
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = fmul fast float %5026, 1.023000e+03
  %5028 = fptoui float %5027 to i32
  %5029 = shl i32 %5028, 10
  %5030 = or i32 %5029, %5028
  %5031 = shl i32 %5028, 20
  %5032 = or i32 %5030, %5031
  br label %5033

; <label>:5033                                    ; preds = %5022, %4997
  %5034 = phi i32 [ %5016, %4997 ], [ %5032, %5022 ]
  %5035 = xor i1 %5007, true
  %5036 = zext i1 %5035 to i32
  br i1 %5007, label %5037, label %5321

; <label>:5037                                    ; preds = %5033
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.CBufRet.f32 %5043, 3
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = extractvalue %dx.types.CBufRet.f32 %5048, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5048, 3
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 0
  %5055 = extractvalue %dx.types.CBufRet.f32 %5053, 1
  %5056 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5057 = extractvalue %dx.types.CBufRet.f32 %5053, 3
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5067 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5068 = call float @dx.op.dot3.f32(i32 55, float %5064, float %5065, float %5066, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %5070 = extractvalue %dx.types.CBufRet.f32 %5069, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5069, 0
  %5072 = select i1 %103, float %5071, float %5070
  %5073 = fmul fast float %5068, 8.000000e+00
  %5074 = fmul fast float %5073, %5072
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fcmp fast ogt float %5075, 0.000000e+00
  br i1 %5076, label %5077, label %5295, !dx.controlflow.hints !130

; <label>:5077                                    ; preds = %5037
  %5078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5079 = extractvalue %dx.types.CBufRet.f32 %5078, 1
  %5080 = fmul fast float %2394, 2.000000e+00
  %5081 = fmul fast float %2395, 2.000000e+00
  %5082 = fadd fast float %5080, -1.000000e+00
  %5083 = fadd fast float %5081, -1.000000e+00
  %5084 = fmul fast float %5079, %5082
  %5085 = fmul fast float %5079, %5083
  %5086 = fadd fast float %5084, %91
  %5087 = fadd fast float %5085, %92
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 2
  %5090 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5091 = fmul fast float %5086, %5089
  %5092 = fmul fast float %5087, %5090
  %5093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %64, float %5091, float %5092, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5094 = extractvalue %dx.types.ResRet.f32 %5093, 0
  %5095 = fcmp fast une float %5094, 0xFFF0000000000000
  %5096 = fcmp fast une float %5094, 0x7FF0000000000000
  %5097 = and i1 %5095, %5096
  %5098 = call float @dx.op.unary.f32(i32 6, float %5094)  ; FAbs(value)
  %5099 = fsub fast float 1.000000e+00, %5098
  %5100 = select i1 %5097, float 1.000000e+00, float 0.000000e+00
  %5101 = fmul fast float %5100, %5075
  %5102 = fcmp fast ogt float %5101, 0.000000e+00
  br i1 %5102, label %5103, label %5295, !dx.controlflow.hints !131

; <label>:5103                                    ; preds = %5077
  %5104 = fmul fast float %5039, %563
  %5105 = call float @dx.op.tertiary.f32(i32 46, float %564, float %5040, float %5104)  ; FMad(a,b,c)
  %5106 = call float @dx.op.tertiary.f32(i32 46, float %565, float %5041, float %5105)  ; FMad(a,b,c)
  %5107 = fadd fast float %5106, %5042
  %5108 = fmul fast float %5044, %563
  %5109 = call float @dx.op.tertiary.f32(i32 46, float %564, float %5045, float %5108)  ; FMad(a,b,c)
  %5110 = call float @dx.op.tertiary.f32(i32 46, float %565, float %5046, float %5109)  ; FMad(a,b,c)
  %5111 = fadd fast float %5110, %5047
  %5112 = fmul fast float %5049, %563
  %5113 = call float @dx.op.tertiary.f32(i32 46, float %564, float %5050, float %5112)  ; FMad(a,b,c)
  %5114 = call float @dx.op.tertiary.f32(i32 46, float %565, float %5051, float %5113)  ; FMad(a,b,c)
  %5115 = fadd fast float %5114, %5052
  %5116 = fdiv fast float 1.000000e+00, %5115
  %5117 = fmul fast float %5116, %5107
  %5118 = fmul fast float %5116, %5111
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 1
  %5122 = fmul fast float %5117, %5120
  %5123 = fmul fast float %5118, %5121
  %5124 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5125 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5126 = fadd fast float %5122, %5124
  %5127 = fadd fast float %5123, %5125
  %5128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5129 = extractvalue %dx.types.CBufRet.f32 %5128, 3
  %5130 = fmul fast float %5129, %3161
  %5131 = fmul fast float %5129, %3162
  %5132 = fmul fast float %5129, %3163
  %5133 = fadd fast float %5130, %563
  %5134 = fadd fast float %5131, %564
  %5135 = fadd fast float %5132, %565
  %5136 = fmul fast float %5133, %5039
  %5137 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5040, float %5136)  ; FMad(a,b,c)
  %5138 = call float @dx.op.tertiary.f32(i32 46, float %5135, float %5041, float %5137)  ; FMad(a,b,c)
  %5139 = fadd fast float %5138, %5042
  %5140 = fmul fast float %5133, %5044
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5045, float %5140)  ; FMad(a,b,c)
  %5142 = call float @dx.op.tertiary.f32(i32 46, float %5135, float %5046, float %5141)  ; FMad(a,b,c)
  %5143 = fadd fast float %5142, %5047
  %5144 = fmul fast float %5133, %5049
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5050, float %5144)  ; FMad(a,b,c)
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5135, float %5051, float %5145)  ; FMad(a,b,c)
  %5147 = fadd fast float %5146, %5052
  %5148 = fdiv fast float 1.000000e+00, %5147
  %5149 = fmul fast float %5148, %5139
  %5150 = fmul fast float %5148, %5143
  %5151 = fmul fast float %5126, 2.000000e+00
  %5152 = fadd fast float %5151, -1.000000e+00
  %5153 = call float @dx.op.unary.f32(i32 6, float %5152)  ; FAbs(value)
  %5154 = fmul fast float %5153, 5.000000e+00
  %5155 = fadd fast float %5154, -4.000000e+00
  %5156 = call float @dx.op.unary.f32(i32 7, float %5155)  ; Saturate(value)
  %5157 = fsub fast float %5117, %5149
  %5158 = fmul fast float %5120, %5157
  %5159 = fmul fast float %5158, %5156
  %5160 = fsub fast float %5149, %5117
  %5161 = fmul fast float %5120, %5160
  %5162 = fadd fast float %5161, %5159
  %5163 = fsub fast float %5150, %5118
  %5164 = fmul fast float %5121, %5163
  %5165 = fmul fast float %5162, %5099
  %5166 = fmul fast float %5164, %5099
  %5167 = fadd fast float %5165, %5126
  %5168 = fadd fast float %5166, %5127
  %5169 = fsub fast float %5148, %5116
  %5170 = fmul fast float %5169, %5099
  %5171 = fadd fast float %5170, %5116
  %5172 = fdiv fast float 1.000000e+00, %5171
  %5173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %63, float %5167, float %5168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5174 = extractvalue %dx.types.ResRet.f32 %5173, 0
  %5175 = extractvalue %dx.types.ResRet.f32 %5173, 1
  %5176 = extractvalue %dx.types.ResRet.f32 %5173, 2
  %5177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5178 = extractvalue %dx.types.CBufRet.f32 %5177, 1
  %5179 = fmul fast float %5178, %5174
  %5180 = fmul fast float %5178, %5175
  %5181 = fmul fast float %5178, %5176
  %5182 = call float @dx.op.binary.f32(i32 35, float %5172, float 0x3810000000000000)  ; FMax(a,b)
  %5183 = fdiv fast float %5115, %5182
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5189 = fadd fast float %5186, %563
  %5190 = fadd fast float %5187, %564
  %5191 = fadd fast float %5188, %565
  %5192 = fmul fast float %5189, %5054
  %5193 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5055, float %5192)  ; FMad(a,b,c)
  %5194 = call float @dx.op.tertiary.f32(i32 46, float %5191, float %5056, float %5193)  ; FMad(a,b,c)
  %5195 = fadd fast float %5194, %5057
  %5196 = fmul fast float %5189, %5059
  %5197 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5060, float %5196)  ; FMad(a,b,c)
  %5198 = call float @dx.op.tertiary.f32(i32 46, float %5191, float %5061, float %5197)  ; FMad(a,b,c)
  %5199 = fadd fast float %5198, %5062
  %5200 = fmul fast float %5189, %5064
  %5201 = call float @dx.op.tertiary.f32(i32 46, float %5190, float %5065, float %5200)  ; FMad(a,b,c)
  %5202 = call float @dx.op.tertiary.f32(i32 46, float %5191, float %5066, float %5201)  ; FMad(a,b,c)
  %5203 = fadd fast float %5202, %5067
  %5204 = fdiv fast float 1.000000e+00, %5203
  %5205 = fmul fast float %5204, %5195
  %5206 = fmul fast float %5204, %5199
  %5207 = fmul fast float %5205, %5120
  %5208 = fmul fast float %5206, %5121
  %5209 = fadd fast float %5207, %5124
  %5210 = fadd fast float %5208, %5125
  %5211 = fadd fast float %5130, %5189
  %5212 = fadd fast float %5131, %5190
  %5213 = fadd fast float %5132, %5191
  %5214 = fmul fast float %5211, %5054
  %5215 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5055, float %5214)  ; FMad(a,b,c)
  %5216 = call float @dx.op.tertiary.f32(i32 46, float %5213, float %5056, float %5215)  ; FMad(a,b,c)
  %5217 = fadd fast float %5216, %5057
  %5218 = fmul fast float %5211, %5059
  %5219 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5060, float %5218)  ; FMad(a,b,c)
  %5220 = call float @dx.op.tertiary.f32(i32 46, float %5213, float %5061, float %5219)  ; FMad(a,b,c)
  %5221 = fadd fast float %5220, %5062
  %5222 = fmul fast float %5211, %5064
  %5223 = call float @dx.op.tertiary.f32(i32 46, float %5212, float %5065, float %5222)  ; FMad(a,b,c)
  %5224 = call float @dx.op.tertiary.f32(i32 46, float %5213, float %5066, float %5223)  ; FMad(a,b,c)
  %5225 = fadd fast float %5224, %5067
  %5226 = fdiv fast float 1.000000e+00, %5225
  %5227 = fmul fast float %5226, %5217
  %5228 = fmul fast float %5226, %5221
  %5229 = fmul fast float %5209, 2.000000e+00
  %5230 = fadd fast float %5229, -1.000000e+00
  %5231 = call float @dx.op.unary.f32(i32 6, float %5230)  ; FAbs(value)
  %5232 = fmul fast float %5231, 5.000000e+00
  %5233 = fadd fast float %5232, -4.000000e+00
  %5234 = call float @dx.op.unary.f32(i32 7, float %5233)  ; Saturate(value)
  %5235 = fsub fast float %5205, %5227
  %5236 = fmul fast float %5120, %5235
  %5237 = fmul fast float %5236, %5234
  %5238 = fsub fast float %5227, %5205
  %5239 = fmul fast float %5120, %5238
  %5240 = fadd fast float %5239, %5237
  %5241 = fsub fast float %5228, %5206
  %5242 = fmul fast float %5121, %5241
  %5243 = fmul fast float %5240, %5099
  %5244 = fmul fast float %5242, %5099
  %5245 = fadd fast float %5243, %5209
  %5246 = fadd fast float %5244, %5210
  %5247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %63, float %5245, float %5246, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = extractvalue %dx.types.CBufRet.f32 %5177, 2
  %5252 = fmul fast float %5251, %5248
  %5253 = fmul fast float %5251, %5249
  %5254 = fmul fast float %5251, %5250
  %5255 = and i32 %3000, 255
  %5256 = uitofp i32 %5255 to float
  %5257 = fmul fast float %5256, 0x3F70101020000000
  %5258 = fmul fast float %5257, %5184
  %5259 = extractvalue %dx.types.CBufRet.f32 %5069, 2
  %5260 = fadd fast float %5259, %5258
  %5261 = call float @dx.op.unary.f32(i32 7, float %5260)  ; Saturate(value)
  %5262 = call float @dx.op.binary.f32(i32 35, float %5179, float 0x3810000000000000)  ; FMax(a,b)
  %5263 = call float @dx.op.binary.f32(i32 35, float %5180, float 0x3810000000000000)  ; FMax(a,b)
  %5264 = call float @dx.op.binary.f32(i32 35, float %5181, float 0x3810000000000000)  ; FMax(a,b)
  %5265 = call float @dx.op.unary.f32(i32 23, float %5262)  ; Log(value)
  %5266 = call float @dx.op.unary.f32(i32 23, float %5263)  ; Log(value)
  %5267 = call float @dx.op.unary.f32(i32 23, float %5264)  ; Log(value)
  %5268 = call float @dx.op.binary.f32(i32 35, float %5252, float 0x3810000000000000)  ; FMax(a,b)
  %5269 = call float @dx.op.binary.f32(i32 35, float %5253, float 0x3810000000000000)  ; FMax(a,b)
  %5270 = call float @dx.op.binary.f32(i32 35, float %5254, float 0x3810000000000000)  ; FMax(a,b)
  %5271 = call float @dx.op.unary.f32(i32 23, float %5268)  ; Log(value)
  %5272 = call float @dx.op.unary.f32(i32 23, float %5269)  ; Log(value)
  %5273 = call float @dx.op.unary.f32(i32 23, float %5270)  ; Log(value)
  %5274 = fsub fast float %5265, %5271
  %5275 = fsub fast float %5266, %5272
  %5276 = fsub fast float %5267, %5273
  %5277 = fmul fast float %5274, %5261
  %5278 = fmul fast float %5275, %5261
  %5279 = fmul fast float %5276, %5261
  %5280 = fadd fast float %5277, %5271
  %5281 = fadd fast float %5278, %5272
  %5282 = fadd fast float %5279, %5273
  %5283 = call float @dx.op.unary.f32(i32 21, float %5280)  ; Exp(value)
  %5284 = call float @dx.op.unary.f32(i32 21, float %5281)  ; Exp(value)
  %5285 = call float @dx.op.unary.f32(i32 21, float %5282)  ; Exp(value)
  %5286 = select i1 %3154, float 0.000000e+00, float %5284
  %5287 = select i1 %3154, float 0.000000e+00, float %5285
  %5288 = fmul fast float %5246, 2.000000e+00
  %5289 = fadd fast float %5288, -1.000000e+00
  %5290 = fmul fast float %5289, %5289
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = fmul fast float %5293, %5101
  br label %5295

; <label>:5295                                    ; preds = %5103, %5077, %5037
  %5296 = phi float [ %5283, %5103 ], [ 0.000000e+00, %5077 ], [ 0.000000e+00, %5037 ]
  %5297 = phi float [ %5286, %5103 ], [ 0.000000e+00, %5077 ], [ 0.000000e+00, %5037 ]
  %5298 = phi float [ %5287, %5103 ], [ 0.000000e+00, %5077 ], [ 0.000000e+00, %5037 ]
  %5299 = phi float [ %5294, %5103 ], [ 0.000000e+00, %5077 ], [ 0.000000e+00, %5037 ]
  %5300 = phi float [ %5099, %5103 ], [ %5099, %5077 ], [ 0.000000e+00, %5037 ]
  %5301 = phi float [ %5294, %5103 ], [ %5101, %5077 ], [ 0.000000e+00, %5037 ]
  %5302 = icmp eq i32 %5020, 25
  br i1 %5302, label %5303, label %5306

; <label>:5303                                    ; preds = %5295
  %5304 = call float @dx.op.unary.f32(i32 6, float %5300)  ; FAbs(value)
  %5305 = bitcast float %5304 to i32
  br label %5306

; <label>:5306                                    ; preds = %5303, %5295
  %5307 = phi i32 [ %5305, %5303 ], [ %5034, %5295 ]
  %5308 = icmp eq i32 %5020, 26
  %5309 = bitcast float %5301 to i32
  %5310 = select i1 %5308, i32 %5309, i32 %5307
  %5311 = icmp eq i32 %5020, 27
  %5312 = select i1 %5311, i32 0, i32 %5310
  %5313 = fcmp fast olt float %5299, 1.000000e+00
  %5314 = or i1 %5313, %5035
  %5315 = zext i1 %5314 to i32
  %5316 = fmul fast float %5299, %5008
  %5317 = fsub fast float %5299, %5316
  %5318 = fmul fast float %5317, %5296
  %5319 = fmul fast float %5317, %5297
  %5320 = fmul fast float %5317, %5298
  br label %5321

; <label>:5321                                    ; preds = %5306, %5033
  %5322 = phi i32 [ %5034, %5033 ], [ %5312, %5306 ]
  %5323 = phi float [ 0.000000e+00, %5033 ], [ %5317, %5306 ]
  %5324 = phi float [ 0.000000e+00, %5033 ], [ %5318, %5306 ]
  %5325 = phi float [ 0.000000e+00, %5033 ], [ %5319, %5306 ]
  %5326 = phi float [ 0.000000e+00, %5033 ], [ %5320, %5306 ]
  %5327 = phi i32 [ %5036, %5033 ], [ %5315, %5306 ]
  %5328 = icmp ne i32 %5327, 0
  %5329 = add i32 %5020, -13
  %5330 = icmp ult i32 %5329, 2
  %5331 = or i1 %5330, %5328
  %5332 = icmp eq i32 %5020, 22
  %5333 = or i1 %5331, %5332
  br i1 %5333, label %5334, label %6068

; <label>:5334                                    ; preds = %5321
  %5335 = select i1 %5003, float %4186, float 1.000000e+00
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 2
  %5338 = extractvalue %dx.types.CBufRet.f32 %5336, 3
  %5339 = fmul fast float %5337, %91
  %5340 = fmul fast float %5338, %92
  %5341 = fptoui float %5339 to i32
  %5342 = fptoui float %5340 to i32
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5346 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5347 = fadd fast float %524, -4.000000e+00
  %5348 = call float @dx.op.binary.f32(i32 35, float %5347, float 0.000000e+00)  ; FMax(a,b)
  %5349 = fadd fast float %5348, %5344
  %5350 = fmul fast float %5349, %5345
  %5351 = call float @dx.op.unary.f32(i32 23, float %5350)  ; Log(value)
  %5352 = fmul fast float %5351, %5346
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5355 = fmul fast float %5352, %5354
  %5356 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  %5357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.i32 %5357, 1
  %5359 = add i32 %5358, -1
  %5360 = uitofp i32 %5358 to float
  %5361 = fmul fast float %5360, %5356
  %5362 = fptoui float %5361 to i32
  %5363 = call i32 @dx.op.binary.i32(i32 40, i32 %5362, i32 %5359)  ; UMin(a,b)
  %5364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5365 = extractvalue %dx.types.CBufRet.i32 %5364, 2
  %5366 = extractvalue %dx.types.CBufRet.i32 %5364, 3
  %5367 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5342, i32 %5365, i32 %5341)  ; UMad(a,b,c)
  %5368 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5363, i32 %5366, i32 %5367)  ; UMad(a,b,c)
  %5369 = call float @dx.op.binary.f32(i32 35, float %524, float 0.000000e+00)  ; FMax(a,b)
  %5370 = fptoui float %5369 to i32
  %5371 = lshr i32 %5370, 5
  %5372 = call i32 @dx.op.binary.i32(i32 40, i32 %5371, i32 8191)  ; UMin(a,b)
  %5373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.i32 %5373, 2
  %5375 = add nsw i32 %5374, -1
  %5376 = call i32 @dx.op.binary.i32(i32 37, i32 %5375, i32 0)  ; IMax(a,b)
  %5377 = shl i32 %5372, 2
  %5378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %5377, i32 undef)  ; BufferLoad(srv,index,wot)
  %5379 = extractvalue %dx.types.ResRet.i32 %5378, 0
  %5380 = lshr i32 %5379, 16
  %5381 = and i32 %5379, 65535
  %5382 = lshr i32 %5379, 21
  %5383 = lshr i32 %5381, 5
  %5384 = call i32 @dx.op.binary.i32(i32 40, i32 %5383, i32 %5376)  ; UMin(a,b)
  %5385 = icmp ugt i32 %5382, %5384
  br i1 %5385, label %5980, label %5386

; <label>:5386                                    ; preds = %5334
  br label %5387

; <label>:5387                                    ; preds = %5962, %5386
  %5388 = phi i32 [ %5963, %5962 ], [ %4998, %5386 ]
  %5389 = phi i32 [ %5964, %5962 ], [ %5322, %5386 ]
  %5390 = phi float [ %5965, %5962 ], [ 0.000000e+00, %5386 ]
  %5391 = phi float [ %5966, %5962 ], [ 0.000000e+00, %5386 ]
  %5392 = phi float [ %5967, %5962 ], [ 0.000000e+00, %5386 ]
  %5393 = phi float [ %5968, %5962 ], [ 0.000000e+00, %5386 ]
  %5394 = phi float [ %5969, %5962 ], [ 0.000000e+00, %5386 ]
  %5395 = phi float [ %5970, %5962 ], [ 0.000000e+00, %5386 ]
  %5396 = phi i32 [ %5971, %5962 ], [ 0, %5386 ]
  %5397 = phi float [ %5972, %5962 ], [ 0.000000e+00, %5386 ]
  %5398 = phi float [ %5973, %5962 ], [ 0.000000e+00, %5386 ]
  %5399 = phi float [ %5974, %5962 ], [ 0.000000e+00, %5386 ]
  %5400 = phi i32 [ %5975, %5962 ], [ 1, %5386 ]
  %5401 = phi float [ %5976, %5962 ], [ 1.000000e+00, %5386 ]
  %5402 = phi i32 [ %5977, %5962 ], [ %5382, %5386 ]
  %5403 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5404 = extractvalue %dx.types.CBufRet.i32 %5403, 2
  %5405 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5368, i32 %5404, i32 %5402)  ; UMad(a,b,c)
  %5406 = shl i32 %5405, 2
  %5407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.i32 %5407, 0
  %5409 = shl i32 %5402, 5
  %5410 = sub nsw i32 %5380, %5409
  %5411 = call i32 @dx.op.binary.i32(i32 37, i32 %5410, i32 0)  ; IMax(a,b)
  %5412 = call i32 @dx.op.binary.i32(i32 38, i32 %5411, i32 31)  ; IMin(a,b)
  %5413 = sub nsw i32 1, %5380
  %5414 = add nsw i32 %5413, %5381
  %5415 = call i32 @dx.op.binary.i32(i32 37, i32 %5414, i32 0)  ; IMax(a,b)
  %5416 = call i32 @dx.op.binary.i32(i32 38, i32 %5415, i32 32)  ; IMin(a,b)
  %5417 = and i32 %5416, 31
  %5418 = shl i32 -1, %5417
  %5419 = xor i32 %5418, -1
  %5420 = and i32 %5412, 31
  %5421 = shl i32 %5419, %5420
  %5422 = icmp eq i32 %5416, 32
  %5423 = select i1 %5422, i32 -1, i32 %5421
  %5424 = and i32 %5423, %5408
  %5425 = icmp eq i32 %5424, 0
  br i1 %5425, label %5962, label %5426

; <label>:5426                                    ; preds = %5387
  br label %5427

; <label>:5427                                    ; preds = %5564, %5426
  %5428 = phi i32 [ %5565, %5564 ], [ %5388, %5426 ]
  %5429 = phi i32 [ %5566, %5564 ], [ %5389, %5426 ]
  %5430 = phi float [ %5567, %5564 ], [ %5390, %5426 ]
  %5431 = phi float [ %5568, %5564 ], [ %5391, %5426 ]
  %5432 = phi float [ %5569, %5564 ], [ %5392, %5426 ]
  %5433 = phi float [ %5570, %5564 ], [ %5393, %5426 ]
  %5434 = phi float [ %5571, %5564 ], [ %5394, %5426 ]
  %5435 = phi float [ %5572, %5564 ], [ %5395, %5426 ]
  %5436 = phi i32 [ %5573, %5564 ], [ %5396, %5426 ]
  %5437 = phi float [ %5574, %5564 ], [ %5397, %5426 ]
  %5438 = phi float [ %5575, %5564 ], [ %5398, %5426 ]
  %5439 = phi float [ %5576, %5564 ], [ %5399, %5426 ]
  %5440 = phi i32 [ %5577, %5564 ], [ %5400, %5426 ]
  %5441 = phi float [ %5578, %5564 ], [ %5401, %5426 ]
  %5442 = phi i32 [ %5447, %5564 ], [ %5424, %5426 ]
  %5443 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5442)  ; FirstbitLo(value)
  %5444 = add i32 %5443, %5409
  %5445 = and i32 %5443, 31
  %5446 = shl i32 1, %5445
  %5447 = xor i32 %5446, %5442
  %5448 = mul i32 %5444, 72
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5448, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = add i32 %5448, 12
  %5454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %40, i32 %5453, i32 undef)  ; BufferLoad(srv,index,wot)
  %5455 = extractvalue %dx.types.ResRet.i32 %5454, 0
  %5456 = add i32 %5448, 16
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = add i32 %5448, 28
  %5462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5461, i32 undef)  ; BufferLoad(srv,index,wot)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = add i32 %5448, 32
  %5465 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5464, i32 undef)  ; BufferLoad(srv,index,wot)
  %5466 = extractvalue %dx.types.ResRet.f32 %5465, 0
  %5467 = extractvalue %dx.types.ResRet.f32 %5465, 1
  %5468 = extractvalue %dx.types.ResRet.f32 %5465, 2
  %5469 = extractvalue %dx.types.ResRet.f32 %5465, 3
  %5470 = add i32 %5448, 48
  %5471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5470, i32 undef)  ; BufferLoad(srv,index,wot)
  %5472 = extractvalue %dx.types.ResRet.f32 %5471, 0
  %5473 = extractvalue %dx.types.ResRet.f32 %5471, 1
  %5474 = add i32 %5448, 56
  %5475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5474, i32 undef)  ; BufferLoad(srv,index,wot)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 0
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 1
  %5478 = add i32 %5448, 64
  %5479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5478, i32 undef)  ; BufferLoad(srv,index,wot)
  %5480 = extractvalue %dx.types.ResRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.ResRet.f32 %5479, 1
  %5482 = mul i32 %5444, 60
  %5483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5482, i32 undef)  ; BufferLoad(srv,index,wot)
  %5484 = extractvalue %dx.types.ResRet.f32 %5483, 0
  %5485 = extractvalue %dx.types.ResRet.f32 %5483, 1
  %5486 = extractvalue %dx.types.ResRet.f32 %5483, 2
  %5487 = add i32 %5482, 12
  %5488 = add i32 %5482, 48
  %5489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5488, i32 undef)  ; BufferLoad(srv,index,wot)
  %5490 = extractvalue %dx.types.ResRet.f32 %5489, 0
  %5491 = extractvalue %dx.types.ResRet.f32 %5489, 1
  %5492 = extractvalue %dx.types.ResRet.f32 %5489, 2
  %5493 = and i32 %5455, 32767
  %5494 = bitcast float %5450 to i32
  %5495 = bitcast float %5451 to i32
  %5496 = and i32 %5455, 32768
  %5497 = icmp ne i32 %5496, 0
  %5498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %5499 = extractvalue %dx.types.CBufRet.f32 %5498, 3
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5500, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5504 = fsub fast float %5484, %5501
  %5505 = fsub fast float %5485, %5502
  %5506 = fsub fast float %5486, %5503
  %5507 = fsub fast float %563, %5504
  %5508 = fsub fast float %564, %5505
  %5509 = fsub fast float %565, %5506
  %5510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5487, i32 undef)  ; BufferLoad(srv,index,wot)
  %5511 = extractvalue %dx.types.ResRet.f32 %5510, 0
  %5512 = extractvalue %dx.types.ResRet.f32 %5510, 1
  %5513 = extractvalue %dx.types.ResRet.f32 %5510, 2
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = add i32 %5482, 24
  %5516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5515, i32 undef)  ; BufferLoad(srv,index,wot)
  %5517 = extractvalue %dx.types.ResRet.f32 %5516, 0
  %5518 = extractvalue %dx.types.ResRet.f32 %5516, 1
  %5519 = extractvalue %dx.types.ResRet.f32 %5516, 2
  %5520 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5517, float %5518, float %5519)  ; Dot3(ax,ay,az,bx,by,bz)
  %5521 = add i32 %5482, 36
  %5522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %5521, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.f32 %5522, 0
  %5524 = extractvalue %dx.types.ResRet.f32 %5522, 1
  %5525 = extractvalue %dx.types.ResRet.f32 %5522, 2
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5523, float %5524, float %5525)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5528 = call float @dx.op.unary.f32(i32 6, float %5520)  ; FAbs(value)
  %5529 = call float @dx.op.unary.f32(i32 6, float %5526)  ; FAbs(value)
  %5530 = fsub fast float %5490, %5527
  %5531 = fsub fast float %5491, %5528
  %5532 = fsub fast float %5492, %5529
  %5533 = fmul fast float %5530, %5458
  %5534 = fmul fast float %5531, %5459
  %5535 = fmul fast float %5532, %5460
  %5536 = call float @dx.op.binary.f32(i32 36, float %5534, float %5535)  ; FMin(a,b)
  %5537 = call float @dx.op.binary.f32(i32 36, float %5533, float %5536)  ; FMin(a,b)
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = call float @dx.op.binary.f32(i32 36, float %5441, float %5538)  ; FMin(a,b)
  %5540 = uitofp i1 %5497 to float
  %5541 = select i1 %103, float 1.000000e+00, float 2.000000e+00
  %5542 = fsub fast float %5541, %5540
  %5543 = fmul fast float %5539, %5542
  %5544 = lshr i32 %5428, 8
  %5545 = and i32 %5544, 255
  %5546 = uitofp i32 %5545 to float
  %5547 = fptoui float %5546 to i32
  %5548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.f32 %5548, 1
  %5550 = bitcast float %5549 to i32
  %5551 = lshr i32 %5550, 24
  %5552 = uitofp i32 %5551 to float
  %5553 = fptoui float %5552 to i32
  %5554 = icmp ne i32 %5553, 1
  %5555 = zext i1 %5554 to i32
  %5556 = add i32 %5555, %5547
  %5557 = uitofp i32 %5556 to float
  %5558 = fptoui float %5557 to i32
  %5559 = shl i32 %5558, 8
  %5560 = and i32 %5559, 65280
  %5561 = and i32 %5428, -65281
  %5562 = or i32 %5560, %5561
  %5563 = fcmp fast ogt float %5543, 0.000000e+00
  br i1 %5563, label %5580, label %5564

; <label>:5564                                    ; preds = %5944, %5813, %5427
  %5565 = phi i32 [ %5891, %5813 ], [ %5562, %5427 ], [ %5891, %5944 ]
  %5566 = phi i32 [ %5429, %5813 ], [ %5429, %5427 ], [ %5960, %5944 ]
  %5567 = phi float [ %5877, %5813 ], [ %5430, %5427 ], [ %5877, %5944 ]
  %5568 = phi float [ %5878, %5813 ], [ %5431, %5427 ], [ %5878, %5944 ]
  %5569 = phi float [ %5879, %5813 ], [ %5432, %5427 ], [ %5879, %5944 ]
  %5570 = phi float [ %5938, %5813 ], [ %5433, %5427 ], [ %5938, %5944 ]
  %5571 = phi float [ %5939, %5813 ], [ %5434, %5427 ], [ %5939, %5944 ]
  %5572 = phi float [ %5940, %5813 ], [ %5435, %5427 ], [ %5940, %5944 ]
  %5573 = phi i32 [ %5942, %5813 ], [ %5436, %5427 ], [ %5942, %5944 ]
  %5574 = phi float [ %5895, %5813 ], [ %5437, %5427 ], [ %5895, %5944 ]
  %5575 = phi float [ %5896, %5813 ], [ %5438, %5427 ], [ %5896, %5944 ]
  %5576 = phi float [ %5897, %5813 ], [ %5439, %5427 ], [ %5897, %5944 ]
  %5577 = phi i32 [ 0, %5813 ], [ %5440, %5427 ], [ 0, %5944 ]
  %5578 = phi float [ %5880, %5813 ], [ %5441, %5427 ], [ %5880, %5944 ]
  %5579 = icmp eq i32 %5442, %5446
  br i1 %5579, label %5961, label %5427

; <label>:5580                                    ; preds = %5427
  %5581 = extractvalue %dx.types.CBufRet.f32 %5548, 0
  %5582 = bitcast float %5581 to i32
  %5583 = lshr i32 %5582, 8
  %5584 = and i32 %5583, 255
  %5585 = uitofp i32 %5584 to float
  %5586 = fptoui float %5585 to i32
  %5587 = and i32 %5586, 2
  %5588 = icmp eq i32 %5587, 0
  br i1 %5588, label %5595, label %5589

; <label>:5589                                    ; preds = %5580
  %5590 = call float @dx.op.dot3.f32(i32 55, float %563, float %564, float %565, float %563, float %564, float %565)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = call float @dx.op.unary.f32(i32 25, float %5590)  ; Rsqrt(value)
  %5592 = fmul fast float %5591, %563
  %5593 = fmul fast float %5591, %564
  %5594 = fmul fast float %5591, %565
  br label %5595

; <label>:5595                                    ; preds = %5589, %5580
  %5596 = phi float [ %5592, %5589 ], [ %3161, %5580 ]
  %5597 = phi float [ %5593, %5589 ], [ %3162, %5580 ]
  %5598 = phi float [ %5594, %5589 ], [ %3163, %5580 ]
  %5599 = icmp ne i32 %5494, -1
  %5600 = fcmp oeq float %5499, 0.000000e+00
  %5601 = and i1 %5600, %5599
  br i1 %5601, label %5602, label %5726

; <label>:5602                                    ; preds = %5595
  %5603 = fsub fast float -0.000000e+00, %5511
  %5604 = fsub fast float -0.000000e+00, %5512
  %5605 = fsub fast float -0.000000e+00, %5513
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = fsub fast float -0.000000e+00, %5606
  %5608 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5603, float %5604, float %5605)  ; Dot3(ax,ay,az,bx,by,bz)
  %5609 = fadd fast float %5608, %5473
  %5610 = fadd fast float %5472, %5608
  %5611 = fsub fast float -0.000000e+00, %5610
  %5612 = fcmp ogt float %5606, -0.000000e+00
  %5613 = select i1 %5612, float %5611, float %5609
  %5614 = call float @dx.op.unary.f32(i32 6, float %5607)  ; FAbs(value)
  %5615 = fdiv fast float 1.000000e+00, %5614
  %5616 = fmul fast float %5613, %5615
  %5617 = call float @dx.op.binary.f32(i32 35, float %5616, float 0.000000e+00)  ; FMax(a,b)
  %5618 = fsub fast float -0.000000e+00, %5517
  %5619 = fsub fast float -0.000000e+00, %5518
  %5620 = fsub fast float -0.000000e+00, %5519
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = fsub fast float -0.000000e+00, %5621
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5618, float %5619, float %5620)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fadd fast float %5623, %5477
  %5625 = fadd fast float %5476, %5623
  %5626 = fsub fast float -0.000000e+00, %5625
  %5627 = fcmp ogt float %5621, -0.000000e+00
  %5628 = select i1 %5627, float %5626, float %5624
  %5629 = call float @dx.op.unary.f32(i32 6, float %5622)  ; FAbs(value)
  %5630 = fdiv fast float 1.000000e+00, %5629
  %5631 = fmul fast float %5628, %5630
  %5632 = call float @dx.op.binary.f32(i32 35, float %5631, float 0.000000e+00)  ; FMax(a,b)
  %5633 = fsub fast float -0.000000e+00, %5523
  %5634 = fsub fast float -0.000000e+00, %5524
  %5635 = fsub fast float -0.000000e+00, %5525
  %5636 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %5633, float %5634, float %5635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fsub fast float -0.000000e+00, %5636
  %5638 = call float @dx.op.dot3.f32(i32 55, float %5507, float %5508, float %5509, float %5633, float %5634, float %5635)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = fadd fast float %5638, %5481
  %5640 = fadd fast float %5480, %5638
  %5641 = fsub fast float -0.000000e+00, %5640
  %5642 = fcmp ogt float %5636, -0.000000e+00
  %5643 = select i1 %5642, float %5641, float %5639
  %5644 = call float @dx.op.unary.f32(i32 6, float %5637)  ; FAbs(value)
  %5645 = fdiv fast float 1.000000e+00, %5644
  %5646 = fmul fast float %5643, %5645
  %5647 = call float @dx.op.binary.f32(i32 35, float %5646, float 0.000000e+00)  ; FMax(a,b)
  %5648 = call float @dx.op.binary.f32(i32 36, float %5632, float %5647)  ; FMin(a,b)
  %5649 = call float @dx.op.binary.f32(i32 36, float %5617, float %5648)  ; FMin(a,b)
  %5650 = fmul fast float %5649, %5596
  %5651 = fmul fast float %5649, %5597
  %5652 = fmul fast float %5649, %5598
  %5653 = fadd fast float %5650, %563
  %5654 = fadd fast float %5651, %564
  %5655 = fadd fast float %5652, %565
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.CBufRet.f32 %5656, 1
  %5659 = extractvalue %dx.types.CBufRet.f32 %5656, 2
  %5660 = fadd fast float %5653, %5657
  %5661 = fadd fast float %5654, %5658
  %5662 = fadd fast float %5655, %5659
  %5663 = fcmp fast olt float %5617, %5632
  %5664 = fcmp fast olt float %5617, %5647
  %5665 = and i1 %5663, %5664
  br i1 %5665, label %5669, label %5666

; <label>:5666                                    ; preds = %5602
  %5667 = fcmp fast olt float %5632, %5647
  br i1 %5667, label %5668, label %5669

; <label>:5668                                    ; preds = %5666
  br label %5669

; <label>:5669                                    ; preds = %5668, %5666, %5602
  %5670 = phi float [ 0.000000e+00, %5668 ], [ 0.000000e+00, %5666 ], [ 1.000000e+00, %5602 ]
  %5671 = phi float [ 1.000000e+00, %5668 ], [ 0.000000e+00, %5666 ], [ 0.000000e+00, %5602 ]
  %5672 = phi float [ 0.000000e+00, %5668 ], [ 1.000000e+00, %5666 ], [ 0.000000e+00, %5602 ]
  %5673 = phi float [ %5517, %5668 ], [ %5523, %5666 ], [ %5511, %5602 ]
  %5674 = phi float [ %5518, %5668 ], [ %5524, %5666 ], [ %5512, %5602 ]
  %5675 = phi float [ %5519, %5668 ], [ %5525, %5666 ], [ %5513, %5602 ]
  %5676 = call float @dx.op.unary.f32(i32 6, float %5675)  ; FAbs(value)
  %5677 = fcmp fast olt float %5676, 0x3FE276C8C0000000
  %5678 = select i1 %5677, float 0.000000e+00, float 1.000000e+00
  %5679 = select i1 %5677, float 1.000000e+00, float 0.000000e+00
  %5680 = fmul fast float %5679, %5674
  %5681 = fmul fast float %5678, %5675
  %5682 = fsub fast float %5680, %5681
  %5683 = fmul fast float %5673, %5679
  %5684 = fsub fast float -0.000000e+00, %5683
  %5685 = fmul fast float %5678, %5673
  %5686 = call float @dx.op.dot3.f32(i32 55, float %5682, float %5684, float %5685, float %5682, float %5684, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5687 = call float @dx.op.unary.f32(i32 25, float %5686)  ; Rsqrt(value)
  %5688 = fmul fast float %5682, %5687
  %5689 = fmul fast float %5687, %5684
  %5690 = fmul fast float %5685, %5687
  %5691 = fmul fast float %5690, %5674
  %5692 = fmul fast float %5689, %5675
  %5693 = fsub fast float %5691, %5692
  %5694 = fmul fast float %5688, %5675
  %5695 = fmul fast float %5690, %5673
  %5696 = fsub fast float %5694, %5695
  %5697 = fmul fast float %5689, %5673
  %5698 = fmul fast float %5688, %5674
  %5699 = fsub fast float %5697, %5698
  %5700 = call float @dx.op.dot3.f32(i32 55, float %5693, float %5696, float %5699, float %5693, float %5696, float %5699)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = call float @dx.op.unary.f32(i32 25, float %5700)  ; Rsqrt(value)
  %5702 = fmul fast float %5693, %5701
  %5703 = fmul fast float %5696, %5701
  %5704 = fmul fast float %5699, %5701
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %5688, float %5689, float %5690)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = call float @dx.op.dot3.f32(i32 55, float %5660, float %5661, float %5662, float %5702, float %5703, float %5704)  ; Dot3(ax,ay,az,bx,by,bz)
  %5707 = fmul fast float %5705, 0x3FA99999A0000000
  %5708 = fmul fast float %5706, 0x3FA99999A0000000
  %5709 = call float @dx.op.unary.f32(i32 22, float %5707)  ; Frc(value)
  %5710 = call float @dx.op.unary.f32(i32 22, float %5708)  ; Frc(value)
  %5711 = fadd fast float %5709, 0xBFB99999A0000000
  %5712 = fadd fast float %5710, 0xBFB99999A0000000
  %5713 = call float @dx.op.unary.f32(i32 6, float %5711)  ; FAbs(value)
  %5714 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5715 = fmul fast float %5713, 1.000000e+01
  %5716 = fmul fast float %5714, 1.000000e+01
  %5717 = call float @dx.op.binary.f32(i32 36, float %5715, float %5716)  ; FMin(a,b)
  %5718 = call float @dx.op.unary.f32(i32 7, float %5717)  ; Saturate(value)
  %5719 = fsub fast float 1.000000e+00, %5718
  %5720 = fmul fast float %5719, %5670
  %5721 = fmul fast float %5719, %5671
  %5722 = fmul fast float %5719, %5672
  %5723 = fsub fast float %5653, %5450
  %5724 = fsub fast float %5654, %5451
  %5725 = fsub fast float %5655, %5452
  br label %5733

; <label>:5726                                    ; preds = %5595
  %5727 = fmul fast float %5596, 8.096000e+03
  %5728 = fmul fast float %5597, 8.096000e+03
  %5729 = fmul fast float %5598, 8.096000e+03
  %5730 = fadd fast float %5727, %563
  %5731 = fadd fast float %5728, %564
  %5732 = fadd fast float %5729, %565
  br label %5733

; <label>:5733                                    ; preds = %5726, %5669
  %5734 = phi float [ %5596, %5726 ], [ %5723, %5669 ]
  %5735 = phi float [ %5597, %5726 ], [ %5724, %5669 ]
  %5736 = phi float [ %5598, %5726 ], [ %5725, %5669 ]
  %5737 = phi float [ %5730, %5726 ], [ %5653, %5669 ]
  %5738 = phi float [ %5731, %5726 ], [ %5654, %5669 ]
  %5739 = phi float [ %5732, %5726 ], [ %5655, %5669 ]
  %5740 = phi float [ 0.000000e+00, %5726 ], [ %5720, %5669 ]
  %5741 = phi float [ 0.000000e+00, %5726 ], [ %5721, %5669 ]
  %5742 = phi float [ 0.000000e+00, %5726 ], [ %5722, %5669 ]
  %5743 = fcmp fast olt float %5469, 1.000000e+00
  br i1 %5743, label %5744, label %5775, !dx.controlflow.hints !128

; <label>:5744                                    ; preds = %5733
  %5745 = fmul fast float %5736, %5467
  %5746 = fmul fast float %5735, %5468
  %5747 = fsub fast float %5745, %5746
  %5748 = fmul fast float %5734, %5468
  %5749 = fmul fast float %5736, %5466
  %5750 = fsub fast float %5748, %5749
  %5751 = fmul fast float %5735, %5466
  %5752 = fmul fast float %5734, %5467
  %5753 = fsub fast float %5751, %5752
  %5754 = fmul fast float %5747, 2.000000e+00
  %5755 = fmul fast float %5750, 2.000000e+00
  %5756 = fmul fast float %5753, 2.000000e+00
  %5757 = fmul fast float %5754, %5469
  %5758 = fmul fast float %5755, %5469
  %5759 = fmul fast float %5756, %5469
  %5760 = fmul fast float %5756, %5467
  %5761 = fmul fast float %5755, %5468
  %5762 = fmul fast float %5754, %5468
  %5763 = fmul fast float %5756, %5466
  %5764 = fmul fast float %5755, %5466
  %5765 = fmul fast float %5754, %5467
  %5766 = fadd fast float %5760, %5734
  %5767 = fadd fast float %5766, %5757
  %5768 = fsub fast float %5767, %5761
  %5769 = fsub fast float %5735, %5763
  %5770 = fadd fast float %5769, %5758
  %5771 = fadd fast float %5770, %5762
  %5772 = fadd fast float %5759, %5736
  %5773 = fsub fast float %5772, %5765
  %5774 = fadd fast float %5773, %5764
  br label %5775

; <label>:5775                                    ; preds = %5744, %5733
  %5776 = phi float [ %5768, %5744 ], [ %5734, %5733 ]
  %5777 = phi float [ %5771, %5744 ], [ %5735, %5733 ]
  %5778 = phi float [ %5774, %5744 ], [ %5736, %5733 ]
  br i1 %5601, label %5779, label %5810

; <label>:5779                                    ; preds = %5775
  %5780 = fmul fast float %3100, 0x400187C840000000
  %5781 = fadd fast float %5780, 0xC00EFC2120000000
  %5782 = fmul fast float %5781, %3100
  %5783 = fadd fast float %5782, 0x3FE5D16340000000
  %5784 = fmul fast float %5783, %3100
  %5785 = fadd fast float %5784, 1.000000e+00
  %5786 = call float @dx.op.unary.f32(i32 7, float %5785)  ; Saturate(value)
  %5787 = fsub fast float %5737, %563
  %5788 = fsub fast float %5738, %564
  %5789 = fsub fast float %5739, %565
  %5790 = fsub fast float %5737, %5450
  %5791 = fsub fast float %5738, %5451
  %5792 = fsub fast float %5739, %5452
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = call float @dx.op.dot3.f32(i32 55, float %5790, float %5791, float %5792, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5795 = fadd fast float %5794, 0x3EE4F8B580000000
  %5796 = fdiv fast float %5793, %5795
  %5797 = bitcast float %5796 to i32
  %5798 = ashr i32 %5797, 1
  %5799 = add nsw i32 %5798, 532487669
  %5800 = bitcast i32 %5799 to float
  %5801 = fmul fast float %5800, %5786
  %5802 = call float @dx.op.unary.f32(i32 7, float %5801)  ; Saturate(value)
  %5803 = fmul fast float %5802, 0x4009981AE0000000
  %5804 = fsub fast float 0x40111BBD80000000, %5803
  %5805 = fmul fast float %5804, %5802
  %5806 = fadd fast float %5805, 0xC0009F6020000000
  %5807 = fmul fast float %5806, %5802
  %5808 = fadd fast float %5807, 1.000000e+00
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  br label %5813

; <label>:5810                                    ; preds = %5775
  %5811 = icmp ne i32 %5495, -1
  %5812 = zext i1 %5811 to i32
  br label %5813

; <label>:5813                                    ; preds = %5810, %5779
  %5814 = phi float [ %3100, %5810 ], [ %5809, %5779 ]
  %5815 = phi i32 [ %5812, %5810 ], [ 0, %5779 ]
  %5816 = fmul float %5814, 5.000000e+00
  %5817 = fsub float 5.000000e+00, %5816
  %5818 = icmp ne i32 %5815, 0
  %5819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5820 = extractvalue %dx.types.CBufRet.f32 %5819, 3
  %5821 = fadd fast float %5820, %5817
  %5822 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5821)  ; FMax(a,b)
  %5823 = call float @dx.op.unary.f32(i32 6, float %5776)  ; FAbs(value)
  %5824 = call float @dx.op.unary.f32(i32 6, float %5777)  ; FAbs(value)
  %5825 = fadd fast float %5824, %5823
  %5826 = call float @dx.op.unary.f32(i32 6, float %5778)  ; FAbs(value)
  %5827 = fadd fast float %5825, %5826
  %5828 = fcmp fast oeq float %5827, 0.000000e+00
  %5829 = fdiv fast float 1.000000e+00, %5827
  %5830 = select i1 %5828, float 1.000000e+00, float %5829
  %5831 = fmul fast float %5830, %5776
  %5832 = fmul fast float %5830, %5777
  %5833 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %5834 = call float @dx.op.unary.f32(i32 6, float %5831)  ; FAbs(value)
  %5835 = fsub fast float 1.000000e+00, %5833
  %5836 = fsub fast float 1.000000e+00, %5834
  %5837 = fcmp fast oge float %5831, 0.000000e+00
  %5838 = fcmp fast oge float %5832, 0.000000e+00
  %5839 = select i1 %5837, float 1.000000e+00, float -1.000000e+00
  %5840 = select i1 %5838, float 1.000000e+00, float -1.000000e+00
  %5841 = fcmp fast ole float %5778, 0.000000e+00
  %5842 = fmul fast float %5839, %5835
  %5843 = fmul fast float %5840, %5836
  %5844 = select i1 %5841, float %5842, float %5831
  %5845 = select i1 %5841, float %5843, float %5832
  %5846 = fmul fast float %5844, 5.000000e-01
  %5847 = fmul fast float %5845, 5.000000e-01
  %5848 = fadd fast float %5846, 5.000000e-01
  %5849 = fadd fast float %5847, 5.000000e-01
  %5850 = uitofp i32 %5493 to float
  %5851 = call float @dx.op.binary.f32(i32 36, float %5822, float 3.000000e+00)  ; FMin(a,b)
  %5852 = fadd fast float %5851, 2.000000e+00
  %5853 = call float @dx.op.unary.f32(i32 21, float %5852)  ; Exp(value)
  %5854 = extractvalue %dx.types.CBufRet.f32 %5819, 1
  %5855 = fmul fast float %5854, %5853
  %5856 = fmul fast float %5855, 2.000000e+00
  %5857 = fsub fast float 1.000000e+00, %5856
  %5858 = fmul fast float %5848, %5857
  %5859 = fmul fast float %5849, %5857
  %5860 = fadd fast float %5858, %5855
  %5861 = fadd fast float %5859, %5855
  %5862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %61, float %5860, float %5861, float %5850, float undef, i32 0, i32 0, i32 undef, float %5822)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5863 = extractvalue %dx.types.ResRet.f32 %5862, 0
  %5864 = extractvalue %dx.types.ResRet.f32 %5862, 1
  %5865 = extractvalue %dx.types.ResRet.f32 %5862, 2
  %5866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5867 = extractvalue %dx.types.CBufRet.f32 %5866, 3
  %5868 = fmul fast float %5867, %5463
  %5869 = call float @dx.op.binary.f32(i32 36, float %5335, float %5868)  ; FMin(a,b)
  %5870 = select i1 %5818, float %5869, float %5868
  %5871 = fmul fast float %5863, %5543
  %5872 = fmul fast float %5871, %5870
  %5873 = fmul fast float %5864, %5543
  %5874 = fmul fast float %5873, %5870
  %5875 = fmul fast float %5865, %5543
  %5876 = fmul fast float %5875, %5870
  %5877 = fadd fast float %5872, %5430
  %5878 = fadd fast float %5874, %5431
  %5879 = fadd fast float %5876, %5432
  %5880 = fsub fast float %5441, %5543
  %5881 = and i32 %5558, 255
  %5882 = uitofp i32 %5881 to float
  %5883 = fptoui float %5882 to i32
  %5884 = icmp eq i32 %5553, 1
  %5885 = zext i1 %5884 to i32
  %5886 = add i32 %5885, %5883
  %5887 = uitofp i32 %5886 to float
  %5888 = fptoui float %5887 to i32
  %5889 = shl i32 %5888, 8
  %5890 = and i32 %5889, 65280
  %5891 = or i32 %5890, %5561
  %5892 = fmul fast float %5740, %5543
  %5893 = fmul fast float %5741, %5543
  %5894 = fmul fast float %5742, %5543
  %5895 = fadd fast float %5892, %5437
  %5896 = fadd fast float %5893, %5438
  %5897 = fadd fast float %5894, %5439
  %5898 = fmul fast float %5850, 0x3FE3C6EF40000000
  %5899 = call float @dx.op.unary.f32(i32 22, float %5898)  ; Frc(value)
  %5900 = fadd fast float %5899, 0x3FE5555560000000
  %5901 = fadd fast float %5899, 0x3FD5555560000000
  %5902 = fsub fast float -0.000000e+00, %5899
  %5903 = fsub fast float -0.000000e+00, %5900
  %5904 = fsub fast float -0.000000e+00, %5901
  %5905 = fcmp fast oge float %5899, %5902
  %5906 = fcmp fast oge float %5900, %5903
  %5907 = fcmp fast oge float %5901, %5904
  %5908 = call float @dx.op.unary.f32(i32 6, float %5899)  ; FAbs(value)
  %5909 = call float @dx.op.unary.f32(i32 6, float %5900)  ; FAbs(value)
  %5910 = call float @dx.op.unary.f32(i32 6, float %5901)  ; FAbs(value)
  %5911 = call float @dx.op.unary.f32(i32 22, float %5908)  ; Frc(value)
  %5912 = call float @dx.op.unary.f32(i32 22, float %5909)  ; Frc(value)
  %5913 = call float @dx.op.unary.f32(i32 22, float %5910)  ; Frc(value)
  %5914 = fsub fast float -0.000000e+00, %5911
  %5915 = fsub fast float -0.000000e+00, %5912
  %5916 = fsub fast float -0.000000e+00, %5913
  %5917 = select i1 %5905, float %5911, float %5914
  %5918 = select i1 %5906, float %5912, float %5915
  %5919 = select i1 %5907, float %5913, float %5916
  %5920 = fmul fast float %5917, 6.000000e+00
  %5921 = fmul fast float %5918, 6.000000e+00
  %5922 = fmul fast float %5919, 6.000000e+00
  %5923 = fadd fast float %5920, -3.000000e+00
  %5924 = fadd fast float %5921, -3.000000e+00
  %5925 = fadd fast float %5922, -3.000000e+00
  %5926 = call float @dx.op.unary.f32(i32 6, float %5923)  ; FAbs(value)
  %5927 = call float @dx.op.unary.f32(i32 6, float %5924)  ; FAbs(value)
  %5928 = call float @dx.op.unary.f32(i32 6, float %5925)  ; FAbs(value)
  %5929 = fadd fast float %5926, -1.000000e+00
  %5930 = fadd fast float %5927, -1.000000e+00
  %5931 = fadd fast float %5928, -1.000000e+00
  %5932 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5934 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5935 = fmul fast float %5932, %5543
  %5936 = fmul fast float %5933, %5543
  %5937 = fmul fast float %5934, %5543
  %5938 = fadd fast float %5935, %5433
  %5939 = fadd fast float %5936, %5434
  %5940 = fadd fast float %5937, %5435
  %5941 = icmp eq i32 %5493, 0
  %5942 = select i1 %5941, i32 1, i32 %5436
  %5943 = icmp eq i32 %5440, 0
  br i1 %5943, label %5564, label %5944

; <label>:5944                                    ; preds = %5813
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = bitcast float %5946 to i32
  %5948 = lshr i32 %5947, 8
  %5949 = and i32 %5948, 255
  %5950 = uitofp i32 %5949 to float
  %5951 = fptoui float %5950 to i32
  %5952 = icmp eq i32 %5951, 16
  %5953 = bitcast float %5868 to i32
  %5954 = select i1 %5952, i32 %5953, i32 %5429
  %5955 = icmp eq i32 %5951, 17
  %5956 = bitcast float %5335 to i32
  %5957 = select i1 %5955, i32 %5956, i32 %5954
  %5958 = icmp eq i32 %5951, 18
  %5959 = bitcast float %5870 to i32
  %5960 = select i1 %5958, i32 %5959, i32 %5957
  br label %5564

; <label>:5961                                    ; preds = %5564
  br label %5962

; <label>:5962                                    ; preds = %5961, %5387
  %5963 = phi i32 [ %5388, %5387 ], [ %5565, %5961 ]
  %5964 = phi i32 [ %5389, %5387 ], [ %5566, %5961 ]
  %5965 = phi float [ %5390, %5387 ], [ %5567, %5961 ]
  %5966 = phi float [ %5391, %5387 ], [ %5568, %5961 ]
  %5967 = phi float [ %5392, %5387 ], [ %5569, %5961 ]
  %5968 = phi float [ %5393, %5387 ], [ %5570, %5961 ]
  %5969 = phi float [ %5394, %5387 ], [ %5571, %5961 ]
  %5970 = phi float [ %5395, %5387 ], [ %5572, %5961 ]
  %5971 = phi i32 [ %5396, %5387 ], [ %5573, %5961 ]
  %5972 = phi float [ %5397, %5387 ], [ %5574, %5961 ]
  %5973 = phi float [ %5398, %5387 ], [ %5575, %5961 ]
  %5974 = phi float [ %5399, %5387 ], [ %5576, %5961 ]
  %5975 = phi i32 [ %5400, %5387 ], [ %5577, %5961 ]
  %5976 = phi float [ %5401, %5387 ], [ %5578, %5961 ]
  %5977 = add i32 %5402, 1
  %5978 = icmp ugt i32 %5977, %5384
  br i1 %5978, label %5979, label %5387, !llvm.loop !129

; <label>:5979                                    ; preds = %5962
  br label %5980

; <label>:5980                                    ; preds = %5979, %5334
  %5981 = phi i32 [ %4998, %5334 ], [ %5963, %5979 ]
  %5982 = phi i32 [ %5322, %5334 ], [ %5964, %5979 ]
  %5983 = phi float [ 0.000000e+00, %5334 ], [ %5965, %5979 ]
  %5984 = phi float [ 0.000000e+00, %5334 ], [ %5966, %5979 ]
  %5985 = phi float [ 0.000000e+00, %5334 ], [ %5967, %5979 ]
  %5986 = phi float [ 0.000000e+00, %5334 ], [ %5968, %5979 ]
  %5987 = phi float [ 0.000000e+00, %5334 ], [ %5969, %5979 ]
  %5988 = phi float [ 0.000000e+00, %5334 ], [ %5970, %5979 ]
  %5989 = phi i32 [ 0, %5334 ], [ %5971, %5979 ]
  %5990 = phi float [ 0.000000e+00, %5334 ], [ %5972, %5979 ]
  %5991 = phi float [ 0.000000e+00, %5334 ], [ %5973, %5979 ]
  %5992 = phi float [ 0.000000e+00, %5334 ], [ %5974, %5979 ]
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5983, float %5984, float %5985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = select i1 %3154, float 0.000000e+00, float %5983
  %5995 = select i1 %3154, float %5993, float %5984
  %5996 = select i1 %3154, float 0.000000e+00, float %5985
  %5997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5997, 0
  %5999 = bitcast float %5998 to i32
  %6000 = lshr i32 %5999, 8
  %6001 = and i32 %6000, 255
  %6002 = uitofp i32 %6001 to float
  %6003 = fptoui float %6002 to i32
  %6004 = icmp eq i32 %6003, 13
  br i1 %6004, label %6005, label %6025

; <label>:6005                                    ; preds = %5980
  %6006 = fadd fast float %5986, 1.000000e+00
  %6007 = fadd fast float %5987, 1.000000e+00
  %6008 = fadd fast float %5988, 1.000000e+00
  %6009 = fmul fast float %6006, 5.000000e-01
  %6010 = fmul fast float %6007, 5.000000e-01
  %6011 = fmul fast float %6008, 5.000000e-01
  %6012 = call float @dx.op.unary.f32(i32 7, float %6009)  ; Saturate(value)
  %6013 = call float @dx.op.unary.f32(i32 7, float %6010)  ; Saturate(value)
  %6014 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6015 = fmul fast float %6012, 1.023000e+03
  %6016 = fmul fast float %6013, 1.023000e+03
  %6017 = fmul fast float %6014, 1.023000e+03
  %6018 = fptoui float %6015 to i32
  %6019 = fptoui float %6016 to i32
  %6020 = fptoui float %6017 to i32
  %6021 = shl i32 %6019, 10
  %6022 = or i32 %6021, %6018
  %6023 = shl i32 %6020, 20
  %6024 = or i32 %6022, %6023
  br label %6025

; <label>:6025                                    ; preds = %6005, %5980
  %6026 = phi i32 [ %6024, %6005 ], [ %5982, %5980 ]
  %6027 = icmp eq i32 %6003, 14
  %6028 = select i1 %6027, i32 %5989, i32 %6026
  %6029 = icmp eq i32 %6003, 22
  br i1 %6029, label %6030, label %6050

; <label>:6030                                    ; preds = %6025
  %6031 = fadd fast float %5990, 1.000000e+00
  %6032 = fadd fast float %5991, 1.000000e+00
  %6033 = fadd fast float %5992, 1.000000e+00
  %6034 = fmul fast float %6031, 5.000000e-01
  %6035 = fmul fast float %6032, 5.000000e-01
  %6036 = fmul fast float %6033, 5.000000e-01
  %6037 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6038 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6039 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6040 = fmul fast float %6037, 1.023000e+03
  %6041 = fmul fast float %6038, 1.023000e+03
  %6042 = fmul fast float %6039, 1.023000e+03
  %6043 = fptoui float %6040 to i32
  %6044 = fptoui float %6041 to i32
  %6045 = fptoui float %6042 to i32
  %6046 = shl i32 %6044, 10
  %6047 = or i32 %6046, %6043
  %6048 = shl i32 %6045, 20
  %6049 = or i32 %6047, %6048
  br label %6050

; <label>:6050                                    ; preds = %6030, %6025
  %6051 = phi i32 [ %6049, %6030 ], [ %6028, %6025 ]
  %6052 = fcmp fast olt float %5323, 0.000000e+00
  %6053 = call float @dx.op.unary.f32(i32 6, float %5323)  ; FAbs(value)
  %6054 = fmul fast float %6053, %5324
  %6055 = fmul fast float %6053, %5325
  %6056 = fmul fast float %6053, %5326
  %6057 = select i1 %6052, float %5324, float %6054
  %6058 = select i1 %6052, float %5325, float %6055
  %6059 = select i1 %6052, float %5326, float %6056
  %6060 = fsub fast float 1.000000e+00, %6053
  %6061 = call float @dx.op.unary.f32(i32 7, float %6060)  ; Saturate(value)
  %6062 = fmul fast float %6061, %5994
  %6063 = fmul fast float %6061, %5995
  %6064 = fmul fast float %6061, %5996
  %6065 = fadd fast float %6057, %6062
  %6066 = fadd fast float %6058, %6063
  %6067 = fadd fast float %6059, %6064
  br label %6068

; <label>:6068                                    ; preds = %6050, %5321
  %6069 = phi i32 [ %4998, %5321 ], [ %5981, %6050 ]
  %6070 = phi i32 [ %5322, %5321 ], [ %6051, %6050 ]
  %6071 = phi float [ %5324, %5321 ], [ %6065, %6050 ]
  %6072 = phi float [ %5325, %5321 ], [ %6066, %6050 ]
  %6073 = phi float [ %5326, %5321 ], [ %6067, %6050 ]
  %6074 = fmul fast float %4283, %3103
  %6075 = fmul fast float %5000, %4283
  %6076 = fmul fast float %5001, %4283
  %6077 = fmul fast float %5002, %4283
  %6078 = fmul fast float %6071, %4278
  %6079 = fmul fast float %6072, %4279
  %6080 = fmul fast float %6073, %4280
  %6081 = fadd fast float %6078, %2878
  %6082 = fadd fast float %6079, %2879
  %6083 = fadd fast float %6080, %2880
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 3
  %6086 = fcmp fast oeq float %6085, 0.000000e+00
  br i1 %6086, label %7925, label %6087

; <label>:6087                                    ; preds = %6068
  %6088 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6089 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6090 = extractvalue %dx.types.CBufRet.f32 %6084, 2
  %6091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6092 = extractvalue %dx.types.CBufRet.f32 %6091, 0
  %6093 = extractvalue %dx.types.CBufRet.f32 %6091, 1
  %6094 = extractvalue %dx.types.CBufRet.f32 %6091, 2
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6097 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6098 = call float @dx.op.dot3.f32(i32 55, float %6092, float %6093, float %6094, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6099 = select i1 %3154, float %6096, float %6092
  %6100 = select i1 %3154, float %6098, float %6093
  %6101 = select i1 %3154, float %6097, float %6094
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6106 = extractvalue %dx.types.CBufRet.f32 %6102, 3
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.CBufRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.CBufRet.f32 %6107, 3
  %6112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6113 = extractvalue %dx.types.CBufRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.CBufRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.CBufRet.f32 %6112, 2
  %6116 = extractvalue %dx.types.CBufRet.f32 %6112, 3
  %6117 = fmul fast float %6103, %563
  %6118 = call float @dx.op.tertiary.f32(i32 46, float %564, float %6104, float %6117)  ; FMad(a,b,c)
  %6119 = call float @dx.op.tertiary.f32(i32 46, float %565, float %6105, float %6118)  ; FMad(a,b,c)
  %6120 = fadd fast float %6119, %6106
  %6121 = fmul fast float %6108, %563
  %6122 = call float @dx.op.tertiary.f32(i32 46, float %564, float %6109, float %6121)  ; FMad(a,b,c)
  %6123 = call float @dx.op.tertiary.f32(i32 46, float %565, float %6110, float %6122)  ; FMad(a,b,c)
  %6124 = fadd fast float %6123, %6111
  %6125 = fmul fast float %6113, %563
  %6126 = call float @dx.op.tertiary.f32(i32 46, float %564, float %6114, float %6125)  ; FMad(a,b,c)
  %6127 = call float @dx.op.tertiary.f32(i32 46, float %565, float %6115, float %6126)  ; FMad(a,b,c)
  %6128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.CBufRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.CBufRet.f32 %6128, 3
  %6132 = fmul fast float %6131, %6120
  %6133 = fmul fast float %6131, %6124
  %6134 = fadd fast float %6132, %6129
  %6135 = fadd fast float %6133, %6130
  %6136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.f32 %6136, 0
  %6138 = extractvalue %dx.types.CBufRet.f32 %6136, 1
  %6139 = extractvalue %dx.types.CBufRet.f32 %6136, 3
  %6140 = fmul fast float %6139, %6120
  %6141 = fmul fast float %6139, %6124
  %6142 = fadd fast float %6140, %6137
  %6143 = fadd fast float %6141, %6138
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6146 = fsub fast float -0.000000e+00, %6116
  %6147 = fsub fast float %6146, %6127
  %6148 = fadd fast float %6147, %6145
  %6149 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6150 = fmul fast float %6148, %6149
  %6151 = fsub fast float 1.000000e+00, %6150
  %6152 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6156 = fsub fast float %6142, %6154
  %6157 = fsub fast float %6143, %6155
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.CBufRet.f32 %6159, 1
  %6162 = fsub fast float %6134, %6160
  %6163 = fsub fast float %6135, %6161
  %6164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6166 = extractvalue %dx.types.CBufRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.CBufRet.f32 %6165, 1
  %6168 = fsub fast float %6120, %6166
  %6169 = fsub fast float %6124, %6167
  %6170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6172 = extractvalue %dx.types.CBufRet.f32 %6171, 0
  %6173 = bitcast float %6172 to i32
  %6174 = lshr i32 %6173, 8
  %6175 = and i32 %6174, 255
  %6176 = uitofp i32 %6175 to float
  %6177 = fptoui float %6176 to i32
  %6178 = and i32 %6177, -2
  %6179 = icmp eq i32 %6178, 10
  br i1 %6179, label %6180, label %6250

; <label>:6180                                    ; preds = %6087
  %6181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6182 = extractvalue %dx.types.CBufRet.f32 %6181, 0
  %6183 = fcmp fast olt float %6168, 0.000000e+00
  %6184 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6185 = extractvalue %dx.types.CBufRet.f32 %6170, 2
  %6186 = select i1 %6183, float %6184, float %6185
  %6187 = fmul fast float %6186, %6168
  %6188 = call float @dx.op.unary.f32(i32 6, float %6187)  ; FAbs(value)
  %6189 = fcmp fast olt float %6169, 0.000000e+00
  %6190 = extractvalue %dx.types.CBufRet.f32 %6170, 1
  %6191 = extractvalue %dx.types.CBufRet.f32 %6170, 3
  %6192 = select i1 %6189, float %6190, float %6191
  %6193 = fmul fast float %6192, %6169
  %6194 = call float @dx.op.unary.f32(i32 6, float %6193)  ; FAbs(value)
  %6195 = call float @dx.op.binary.f32(i32 35, float %6188, float %6194)  ; FMax(a,b)
  %6196 = fsub fast float %6182, %6195
  %6197 = call float @dx.op.unary.f32(i32 7, float %6196)  ; Saturate(value)
  %6198 = fmul fast float %6197, %6152
  %6199 = fcmp fast olt float %6162, 0.000000e+00
  %6200 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6201 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6202 = select i1 %6199, float %6200, float %6201
  %6203 = fmul fast float %6202, %6162
  %6204 = call float @dx.op.unary.f32(i32 6, float %6203)  ; FAbs(value)
  %6205 = fcmp fast olt float %6163, 0.000000e+00
  %6206 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6207 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6208 = select i1 %6205, float %6206, float %6207
  %6209 = fmul fast float %6208, %6163
  %6210 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6211 = call float @dx.op.binary.f32(i32 35, float %6204, float %6210)  ; FMax(a,b)
  %6212 = fsub fast float %6182, %6211
  %6213 = call float @dx.op.unary.f32(i32 7, float %6212)  ; Saturate(value)
  %6214 = fmul fast float %6213, %6152
  %6215 = fcmp fast olt float %6156, 0.000000e+00
  %6216 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6217 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6218 = select i1 %6215, float %6216, float %6217
  %6219 = fmul fast float %6218, %6156
  %6220 = call float @dx.op.unary.f32(i32 6, float %6219)  ; FAbs(value)
  %6221 = fcmp fast olt float %6157, 0.000000e+00
  %6222 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6223 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6224 = select i1 %6221, float %6222, float %6223
  %6225 = fmul fast float %6224, %6157
  %6226 = call float @dx.op.unary.f32(i32 6, float %6225)  ; FAbs(value)
  %6227 = call float @dx.op.binary.f32(i32 35, float %6220, float %6226)  ; FMax(a,b)
  %6228 = fsub fast float %6182, %6227
  %6229 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6230 = fmul fast float %6229, %6152
  %6231 = fadd fast float %6198, 1.000000e+00
  %6232 = fadd fast float %6214, 1.000000e+00
  %6233 = fadd fast float %6230, 1.000000e+00
  %6234 = fmul fast float %6231, 5.000000e-01
  %6235 = fmul fast float %6232, 5.000000e-01
  %6236 = fmul fast float %6233, 5.000000e-01
  %6237 = call float @dx.op.unary.f32(i32 7, float %6234)  ; Saturate(value)
  %6238 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6239 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6240 = fmul fast float %6237, 1.023000e+03
  %6241 = fmul fast float %6238, 1.023000e+03
  %6242 = fmul fast float %6239, 1.023000e+03
  %6243 = fptoui float %6240 to i32
  %6244 = fptoui float %6241 to i32
  %6245 = fptoui float %6242 to i32
  %6246 = shl i32 %6244, 10
  %6247 = or i32 %6246, %6243
  %6248 = shl i32 %6245, 20
  %6249 = or i32 %6247, %6248
  br label %6250

; <label>:6250                                    ; preds = %6180, %6087
  %6251 = phi i32 [ %6249, %6180 ], [ %6070, %6087 ]
  %6252 = fcmp fast olt float %6085, 0.000000e+00
  br i1 %6252, label %7564, label %6253

; <label>:6253                                    ; preds = %6250
  %6254 = fadd fast float %6127, %6116
  %6255 = fsub fast float %6145, %6254
  %6256 = fmul fast float %6255, %6149
  %6257 = fsub fast float 1.000000e+00, %6256
  %6258 = call float @dx.op.unary.f32(i32 7, float %6257)  ; Saturate(value)
  %6259 = extractvalue %dx.types.CBufRet.f32 %6136, 2
  %6260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6261 = extractvalue %dx.types.CBufRet.f32 %6260, 2
  %6262 = fadd fast float %6261, %6259
  %6263 = fcmp fast ogt float %6262, 0.000000e+00
  br i1 %6263, label %6264, label %6283

; <label>:6264                                    ; preds = %6253
  %6265 = fcmp fast olt float %6156, 0.000000e+00
  %6266 = fcmp fast olt float %6157, 0.000000e+00
  %6267 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6268 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6269 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6270 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6271 = select i1 %6265, float %6267, float %6269
  %6272 = select i1 %6266, float %6268, float %6270
  %6273 = fmul fast float %6271, %6156
  %6274 = fmul fast float %6272, %6157
  %6275 = call float @dx.op.unary.f32(i32 6, float %6273)  ; FAbs(value)
  %6276 = call float @dx.op.unary.f32(i32 6, float %6274)  ; FAbs(value)
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 0
  %6279 = call float @dx.op.binary.f32(i32 35, float %6275, float %6276)  ; FMax(a,b)
  %6280 = fsub fast float %6278, %6279
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = fmul fast float %6281, %6258
  br label %6283

; <label>:6283                                    ; preds = %6264, %6253
  %6284 = phi float [ %6282, %6264 ], [ 0.000000e+00, %6253 ]
  %6285 = extractvalue %dx.types.CBufRet.f32 %6128, 2
  %6286 = extractvalue %dx.types.CBufRet.f32 %6260, 1
  %6287 = fadd fast float %6286, %6285
  %6288 = fcmp fast ogt float %6287, 0.000000e+00
  br i1 %6288, label %6289, label %6308

; <label>:6289                                    ; preds = %6283
  %6290 = fcmp fast olt float %6162, 0.000000e+00
  %6291 = fcmp fast olt float %6163, 0.000000e+00
  %6292 = extractvalue %dx.types.CBufRet.f32 %6164, 0
  %6293 = extractvalue %dx.types.CBufRet.f32 %6164, 1
  %6294 = extractvalue %dx.types.CBufRet.f32 %6164, 2
  %6295 = extractvalue %dx.types.CBufRet.f32 %6164, 3
  %6296 = select i1 %6290, float %6292, float %6294
  %6297 = select i1 %6291, float %6293, float %6295
  %6298 = fmul fast float %6296, %6162
  %6299 = fmul fast float %6297, %6163
  %6300 = call float @dx.op.unary.f32(i32 6, float %6298)  ; FAbs(value)
  %6301 = call float @dx.op.unary.f32(i32 6, float %6299)  ; FAbs(value)
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = call float @dx.op.binary.f32(i32 35, float %6300, float %6301)  ; FMax(a,b)
  %6305 = fsub fast float %6303, %6304
  %6306 = call float @dx.op.unary.f32(i32 7, float %6305)  ; Saturate(value)
  %6307 = fmul fast float %6306, %6258
  br label %6308

; <label>:6308                                    ; preds = %6289, %6283
  %6309 = phi float [ %6307, %6289 ], [ 0.000000e+00, %6283 ]
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6312 = call float @dx.op.unary.f32(i32 7, float %6311)  ; Saturate(value)
  %6313 = fcmp fast olt float %6168, 0.000000e+00
  %6314 = fcmp fast olt float %6169, 0.000000e+00
  %6315 = extractvalue %dx.types.CBufRet.f32 %6170, 0
  %6316 = extractvalue %dx.types.CBufRet.f32 %6170, 1
  %6317 = extractvalue %dx.types.CBufRet.f32 %6170, 2
  %6318 = extractvalue %dx.types.CBufRet.f32 %6170, 3
  %6319 = select i1 %6313, float %6315, float %6317
  %6320 = select i1 %6314, float %6316, float %6318
  %6321 = fmul fast float %6319, %6168
  %6322 = fmul fast float %6320, %6169
  %6323 = call float @dx.op.unary.f32(i32 6, float %6321)  ; FAbs(value)
  %6324 = call float @dx.op.unary.f32(i32 6, float %6322)  ; FAbs(value)
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = call float @dx.op.binary.f32(i32 35, float %6323, float %6324)  ; FMax(a,b)
  %6328 = fsub fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 7, float %6328)  ; Saturate(value)
  %6330 = call float @dx.op.binary.f32(i32 36, float %6329, float %6312)  ; FMin(a,b)
  %6331 = fmul fast float %6330, %6258
  %6332 = fsub fast float %6309, %6331
  %6333 = fsub fast float %6284, %6309
  %6334 = fsub fast float %6333, %6331
  %6335 = call float @dx.op.binary.f32(i32 35, float %6309, float %6284)  ; FMax(a,b)
  %6336 = call float @dx.op.binary.f32(i32 35, float %6331, float %6335)  ; FMax(a,b)
  %6337 = fcmp fast olt float %6336, 1.000000e+00
  br i1 %6337, label %6338, label %7009, !dx.controlflow.hints !132

; <label>:6338                                    ; preds = %6308
  %6339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6340 = extractvalue %dx.types.CBufRet.f32 %6339, 0
  %6341 = fcmp fast une float %6340, 0.000000e+00
  br i1 %6341, label %6342, label %7009, !dx.controlflow.hints !133

; <label>:6342                                    ; preds = %6338
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = extractvalue %dx.types.CBufRet.f32 %6343, 1
  %6346 = extractvalue %dx.types.CBufRet.f32 %6343, 2
  %6347 = extractvalue %dx.types.CBufRet.f32 %6343, 3
  %6348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6349 = extractvalue %dx.types.CBufRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.CBufRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.CBufRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.CBufRet.f32 %6348, 3
  %6353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6354 = extractvalue %dx.types.CBufRet.f32 %6353, 0
  %6355 = extractvalue %dx.types.CBufRet.f32 %6353, 1
  %6356 = extractvalue %dx.types.CBufRet.f32 %6353, 2
  %6357 = extractvalue %dx.types.CBufRet.f32 %6353, 3
  %6358 = fmul fast float %6344, %563
  %6359 = call float @dx.op.tertiary.f32(i32 46, float %564, float %6345, float %6358)  ; FMad(a,b,c)
  %6360 = call float @dx.op.tertiary.f32(i32 46, float %565, float %6346, float %6359)  ; FMad(a,b,c)
  %6361 = fadd fast float %6360, %6347
  %6362 = fmul fast float %6349, %563
  %6363 = call float @dx.op.tertiary.f32(i32 46, float %564, float %6350, float %6362)  ; FMad(a,b,c)
  %6364 = call float @dx.op.tertiary.f32(i32 46, float %565, float %6351, float %6363)  ; FMad(a,b,c)
  %6365 = fadd fast float %6364, %6352
  %6366 = fmul fast float %6354, %563
  %6367 = call float @dx.op.tertiary.f32(i32 46, float %564, float %6355, float %6366)  ; FMad(a,b,c)
  %6368 = call float @dx.op.tertiary.f32(i32 46, float %565, float %6356, float %6367)  ; FMad(a,b,c)
  %6369 = fadd fast float %6368, %6357
  %6370 = fcmp fast oge float %6361, 1.000000e+00
  %6371 = fcmp fast oge float %6365, 1.000000e+00
  %6372 = or i1 %6370, %6371
  %6373 = fcmp fast olt float %6361, 0.000000e+00
  %6374 = fcmp fast olt float %6365, 0.000000e+00
  %6375 = or i1 %6373, %6374
  %6376 = or i1 %6372, %6375
  br i1 %6376, label %7009, label %6377, !dx.controlflow.hints !134

; <label>:6377                                    ; preds = %6342
  %6378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6379 = extractvalue %dx.types.CBufRet.f32 %6378, 0
  %6380 = extractvalue %dx.types.CBufRet.f32 %6378, 1
  %6381 = extractvalue %dx.types.CBufRet.f32 %6378, 2
  %6382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6383 = extractvalue %dx.types.CBufRet.f32 %6382, 1
  %6384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6385 = extractvalue %dx.types.CBufRet.i32 %6384, 2
  %6386 = uitofp i32 %6385 to float
  %6387 = extractvalue %dx.types.CBufRet.i32 %6384, 3
  %6388 = uitofp i32 %6387 to float
  %6389 = extractvalue %dx.types.CBufRet.f32 %6378, 3
  %6390 = fmul fast float %6389, 2.000000e+00
  %6391 = fsub fast float %6361, %6379
  %6392 = fsub fast float %6365, %6380
  %6393 = fmul fast float %6390, %6391
  %6394 = fmul fast float %6390, %6392
  %6395 = fdiv fast float 1.000000e+00, %6090
  %6396 = fmul fast float %6394, %6395
  %6397 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6398 = fmul fast float %6381, %565
  %6399 = fmul fast float %6398, %6390
  %6400 = call float @dx.op.unary.f32(i32 6, float %6399)  ; FAbs(value)
  %6401 = call float @dx.op.unary.f32(i32 6, float %6393)  ; FAbs(value)
  %6402 = call float @dx.op.binary.f32(i32 35, float %6400, float %6397)  ; FMax(a,b)
  %6403 = call float @dx.op.binary.f32(i32 35, float %6401, float %6402)  ; FMax(a,b)
  %6404 = fmul fast float %6403, 2.000000e+00
  %6405 = call float @dx.op.unary.f32(i32 23, float %6404)  ; Log(value)
  %6406 = call float @dx.op.binary.f32(i32 35, float %6405, float %6386)  ; FMax(a,b)
  %6407 = call float @dx.op.unary.f32(i32 22, float %6406)  ; Frc(value)
  %6408 = fadd fast float %6407, 0xBFEA666660000000
  %6409 = fmul fast float %6408, 8.000000e+00
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = call float @dx.op.unary.f32(i32 27, float %6406)  ; Round_ni(value)
  %6412 = fadd fast float %6411, %6410
  %6413 = call float @dx.op.binary.f32(i32 36, float %6412, float %6388)  ; FMin(a,b)
  %6414 = call float @dx.op.unary.f32(i32 27, float %6413)  ; Round_ni(value)
  %6415 = fsub fast float -0.000000e+00, %6414
  %6416 = call float @dx.op.unary.f32(i32 21, float %6415)  ; Exp(value)
  %6417 = fmul fast float %6416, %6390
  %6418 = fmul fast float %6417, %6361
  %6419 = fmul fast float %6417, %6365
  %6420 = fmul fast float %6418, 5.000000e-01
  %6421 = fmul fast float %6419, 5.000000e-01
  %6422 = fadd fast float %6420, 5.000000e-01
  %6423 = fadd fast float %6421, 5.000000e-01
  %6424 = fmul fast float %6418, 2.500000e-01
  %6425 = fmul fast float %6419, 2.500000e-01
  %6426 = fadd fast float %6424, 5.000000e-01
  %6427 = fadd fast float %6425, 5.000000e-01
  %6428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6429 = extractvalue %dx.types.ResRet.i32 %6428, 0
  %6430 = and i32 %6429, 536870911
  %6431 = lshr i32 %6430, 9
  %6432 = uitofp i32 %6431 to float
  %6433 = fmul fast float %6432, %6361
  %6434 = fmul fast float %6432, %6365
  %6435 = call float @dx.op.unary.f32(i32 22, float %6433)  ; Frc(value)
  %6436 = call float @dx.op.unary.f32(i32 22, float %6434)  ; Frc(value)
  %6437 = call float @dx.op.unary.f32(i32 22, float %6410)  ; Frc(value)
  %6438 = fcmp fast une float %6437, 0.000000e+00
  br i1 %6438, label %6439, label %6537, !dx.controlflow.hints !135

; <label>:6439                                    ; preds = %6377
  %6440 = call float @dx.op.unary.f32(i32 21, float %6411)  ; Exp(value)
  %6441 = fmul fast float %6440, 1.953125e-03
  %6442 = fcmp fast olt float %6435, %6441
  %6443 = fcmp fast olt float %6436, %6441
  %6444 = or i1 %6442, %6443
  %6445 = fsub fast float 1.000000e+00, %6441
  %6446 = fcmp fast ogt float %6435, %6445
  %6447 = fcmp fast ogt float %6436, %6445
  %6448 = or i1 %6446, %6447
  %6449 = or i1 %6444, %6448
  br i1 %6449, label %6450, label %6616, !dx.controlflow.hints !136

; <label>:6450                                    ; preds = %6439
  %6451 = fmul fast float %6383, 5.000000e-01
  %6452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.i32 %6452, 0
  %6454 = fmul fast float %6365, 3.530000e+02
  %6455 = uitofp i32 %6430 to float
  %6456 = fmul fast float %6454, %6455
  %6457 = fmul fast float %6361, 6.130000e+02
  %6458 = fadd fast float %6456, %6457
  %6459 = fptoui float %6458 to i32
  %6460 = add i32 %6453, %6459
  %6461 = mul i32 %6460, -63
  %6462 = lshr i32 %6461, 17
  %6463 = xor i32 %6462, %6461
  %6464 = mul i32 %6463, -511
  %6465 = mul i32 %6463, -8176
  %6466 = xor i32 %6464, %6465
  %6467 = mul i32 %6466, -7
  %6468 = mul i32 %6466, -7168
  %6469 = xor i32 %6467, %6468
  %6470 = lshr i32 %6469, 15
  %6471 = xor i32 %6470, %6467
  %6472 = and i32 %6471, 15
  %6473 = mul i32 %6472, 2
  %6474 = add i32 0, %6473
  %6475 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6474
  %6476 = load float, float* %6475, align 4
  %6477 = mul i32 %6472, 2
  %6478 = add i32 1, %6477
  %6479 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6478
  %6480 = load float, float* %6479, align 4
  %6481 = fmul fast float %6365, 2.770000e+02
  %6482 = fmul fast float %6481, %6455
  %6483 = fmul fast float %6361, 5.990000e+02
  %6484 = fadd fast float %6482, %6483
  %6485 = fptoui float %6484 to i32
  %6486 = mul i32 %6485, -63
  %6487 = lshr i32 %6486, 17
  %6488 = xor i32 %6487, %6486
  %6489 = mul i32 %6488, -511
  %6490 = mul i32 %6488, -8176
  %6491 = xor i32 %6489, %6490
  %6492 = mul i32 %6491, -7
  %6493 = mul i32 %6491, -7168
  %6494 = xor i32 %6492, %6493
  %6495 = lshr i32 %6494, 15
  %6496 = xor i32 %6495, %6492
  %6497 = and i32 %6496, 63
  %6498 = mul i32 %6497, 2
  %6499 = add i32 0, %6498
  %6500 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6499
  %6501 = load float, float* %6500, align 4
  %6502 = mul i32 %6497, 2
  %6503 = add i32 1, %6502
  %6504 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6503
  %6505 = load float, float* %6504, align 4
  %6506 = call float @dx.op.dot2.f32(i32 54, float %6476, float %6480, float %6501, float %6505)  ; Dot2(ax,ay,bx,by)
  %6507 = fsub fast float -0.000000e+00, %6501
  %6508 = call float @dx.op.dot2.f32(i32 54, float %6476, float %6480, float %6507, float %6505)  ; Dot2(ax,ay,bx,by)
  %6509 = fmul fast float %6506, %6451
  %6510 = fmul fast float %6508, %6451
  %6511 = fdiv fast float 2.000000e+00, %6417
  %6512 = fmul fast float %6440, 9.765625e-04
  %6513 = fcmp fast olt float %6435, %6512
  %6514 = fcmp fast olt float %6436, %6512
  %6515 = or i1 %6513, %6514
  %6516 = fsub fast float 1.000000e+00, %6512
  %6517 = fcmp fast ogt float %6435, %6516
  %6518 = fcmp fast ogt float %6436, %6516
  %6519 = or i1 %6517, %6518
  %6520 = or i1 %6515, %6519
  %6521 = fmul fast float %6509, 2.000000e+00
  br i1 %6520, label %6522, label %6526

; <label>:6522                                    ; preds = %6450
  %6523 = fmul fast float %6510, 2.000000e+00
  %6524 = fadd fast float %6521, %6422
  %6525 = fadd fast float %6523, %6423
  br label %6526

; <label>:6526                                    ; preds = %6522, %6450
  %6527 = phi float [ %6524, %6522 ], [ %6422, %6450 ]
  %6528 = phi float [ %6525, %6522 ], [ %6423, %6450 ]
  %6529 = phi i32 [ 3, %6522 ], [ 2, %6450 ]
  %6530 = fadd fast float %6509, %6426
  %6531 = fadd fast float %6510, %6427
  %6532 = fmul fast float %6521, %6511
  %6533 = fmul fast float %6511, 2.000000e+00
  %6534 = fmul fast float %6533, %6510
  %6535 = fadd fast float %6532, %6361
  %6536 = fadd fast float %6534, %6365
  br label %6616

; <label>:6537                                    ; preds = %6377
  %6538 = call float @dx.op.unary.f32(i32 21, float %6414)  ; Exp(value)
  %6539 = fmul fast float %6538, 9.765625e-04
  %6540 = fcmp fast olt float %6435, %6539
  %6541 = fcmp fast olt float %6436, %6539
  %6542 = or i1 %6540, %6541
  %6543 = fsub fast float 1.000000e+00, %6539
  %6544 = fcmp fast ogt float %6435, %6543
  %6545 = fcmp fast ogt float %6436, %6543
  %6546 = or i1 %6544, %6545
  %6547 = or i1 %6542, %6546
  br i1 %6547, label %6548, label %6616, !dx.controlflow.hints !137

; <label>:6548                                    ; preds = %6537
  %6549 = fmul fast float %6383, 5.000000e-01
  %6550 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6551 = extractvalue %dx.types.CBufRet.i32 %6550, 0
  %6552 = fmul fast float %6365, 3.530000e+02
  %6553 = uitofp i32 %6430 to float
  %6554 = fmul fast float %6552, %6553
  %6555 = fmul fast float %6361, 6.130000e+02
  %6556 = fadd fast float %6554, %6555
  %6557 = fptoui float %6556 to i32
  %6558 = add i32 %6551, %6557
  %6559 = mul i32 %6558, -63
  %6560 = lshr i32 %6559, 17
  %6561 = xor i32 %6560, %6559
  %6562 = mul i32 %6561, -511
  %6563 = mul i32 %6561, -8176
  %6564 = xor i32 %6562, %6563
  %6565 = mul i32 %6564, -7
  %6566 = mul i32 %6564, -7168
  %6567 = xor i32 %6565, %6566
  %6568 = lshr i32 %6567, 15
  %6569 = xor i32 %6568, %6565
  %6570 = and i32 %6569, 15
  %6571 = mul i32 %6570, 2
  %6572 = add i32 0, %6571
  %6573 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6572
  %6574 = load float, float* %6573, align 4
  %6575 = mul i32 %6570, 2
  %6576 = add i32 1, %6575
  %6577 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6576
  %6578 = load float, float* %6577, align 4
  %6579 = fmul fast float %6365, 2.770000e+02
  %6580 = fmul fast float %6579, %6553
  %6581 = fmul fast float %6361, 5.990000e+02
  %6582 = fadd fast float %6580, %6581
  %6583 = fptoui float %6582 to i32
  %6584 = mul i32 %6583, -63
  %6585 = lshr i32 %6584, 17
  %6586 = xor i32 %6585, %6584
  %6587 = mul i32 %6586, -511
  %6588 = mul i32 %6586, -8176
  %6589 = xor i32 %6587, %6588
  %6590 = mul i32 %6589, -7
  %6591 = mul i32 %6589, -7168
  %6592 = xor i32 %6590, %6591
  %6593 = lshr i32 %6592, 15
  %6594 = xor i32 %6593, %6590
  %6595 = and i32 %6594, 63
  %6596 = mul i32 %6595, 2
  %6597 = add i32 0, %6596
  %6598 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6597
  %6599 = load float, float* %6598, align 4
  %6600 = mul i32 %6595, 2
  %6601 = add i32 1, %6600
  %6602 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6601
  %6603 = load float, float* %6602, align 4
  %6604 = call float @dx.op.dot2.f32(i32 54, float %6574, float %6578, float %6599, float %6603)  ; Dot2(ax,ay,bx,by)
  %6605 = fsub fast float -0.000000e+00, %6599
  %6606 = call float @dx.op.dot2.f32(i32 54, float %6574, float %6578, float %6605, float %6603)  ; Dot2(ax,ay,bx,by)
  %6607 = fmul fast float %6604, %6549
  %6608 = fmul fast float %6606, %6549
  %6609 = fadd fast float %6607, %6422
  %6610 = fadd fast float %6608, %6423
  %6611 = fdiv fast float 2.000000e+00, %6417
  %6612 = fmul fast float %6611, %6607
  %6613 = fmul fast float %6608, %6611
  %6614 = fadd fast float %6612, %6361
  %6615 = fadd fast float %6613, %6365
  br label %6616

; <label>:6616                                    ; preds = %6548, %6537, %6526, %6439
  %6617 = phi float [ %6530, %6526 ], [ %6426, %6439 ], [ %6426, %6548 ], [ %6426, %6537 ]
  %6618 = phi float [ %6531, %6526 ], [ %6427, %6439 ], [ %6427, %6548 ], [ %6427, %6537 ]
  %6619 = phi float [ %6527, %6526 ], [ %6422, %6439 ], [ %6609, %6548 ], [ %6422, %6537 ]
  %6620 = phi float [ %6528, %6526 ], [ %6423, %6439 ], [ %6610, %6548 ], [ %6423, %6537 ]
  %6621 = phi i32 [ %6529, %6526 ], [ 0, %6439 ], [ 1, %6548 ], [ 0, %6537 ]
  %6622 = phi float [ %6535, %6526 ], [ %6361, %6439 ], [ %6614, %6548 ], [ %6361, %6537 ]
  %6623 = phi float [ %6536, %6526 ], [ %6365, %6439 ], [ %6615, %6548 ], [ %6365, %6537 ]
  %6624 = fsub fast float %6388, %6386
  %6625 = fptoui float %6624 to i32
  %6626 = add i32 %6625, 320
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %6626)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 0
  %6629 = extractvalue %dx.types.CBufRet.f32 %6627, 1
  %6630 = fcmp fast une float %6413, %6388
  %6631 = fsub fast float %6622, %6628
  %6632 = fsub fast float %6623, %6629
  %6633 = call float @dx.op.unary.f32(i32 6, float %6631)  ; FAbs(value)
  %6634 = call float @dx.op.unary.f32(i32 6, float %6632)  ; FAbs(value)
  %6635 = fmul fast float %6633, %6417
  %6636 = fmul fast float %6634, %6417
  %6637 = fcmp fast olt float %6635, 1.000000e+00
  %6638 = fcmp fast olt float %6636, 1.000000e+00
  %6639 = and i1 %6637, %6638
  %6640 = or i1 %6630, %6639
  br i1 %6640, label %6641, label %7009, !dx.controlflow.hints !138

; <label>:6641                                    ; preds = %6616
  %6642 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6643 = extractvalue %dx.types.CBufRet.i32 %6642, 2
  %6644 = sitofp i32 %6643 to float
  %6645 = fsub fast float %6413, %6644
  %6646 = call float @dx.op.unary.f32(i32 27, float %6645)  ; Round_ni(value)
  %6647 = call float @dx.op.unary.f32(i32 22, float %6413)  ; Frc(value)
  %6648 = icmp eq i32 %6621, 0
  %6649 = call float @dx.op.unary.f32(i32 22, float %6619)  ; Frc(value)
  %6650 = call float @dx.op.unary.f32(i32 22, float %6620)  ; Frc(value)
  br i1 %6648, label %6721, label %6651, !dx.controlflow.hints !139

; <label>:6651                                    ; preds = %6641
  %6652 = and i32 %6621, 1
  %6653 = icmp eq i32 %6652, 0
  br i1 %6653, label %6667, label %6654, !dx.controlflow.hints !140

; <label>:6654                                    ; preds = %6651
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = fmul fast float %6649, %6656
  %6658 = fmul fast float %6650, %6656
  %6659 = fptoui float %6657 to i32
  %6660 = fptoui float %6658 to i32
  %6661 = fptoui float %6646 to i32
  %6662 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %6659, i32 %6660, i32 %6661, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = extractvalue %dx.types.ResRet.f32 %6662, 1
  %6665 = extractvalue %dx.types.ResRet.f32 %6662, 2
  %6666 = extractvalue %dx.types.ResRet.f32 %6662, 3
  br label %6673

; <label>:6667                                    ; preds = %6651
  %6668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6649, float %6650, float %6646, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6669 = extractvalue %dx.types.ResRet.f32 %6668, 0
  %6670 = extractvalue %dx.types.ResRet.f32 %6668, 1
  %6671 = extractvalue %dx.types.ResRet.f32 %6668, 2
  %6672 = extractvalue %dx.types.ResRet.f32 %6668, 3
  br label %6673

; <label>:6673                                    ; preds = %6667, %6654
  %6674 = phi float [ %6663, %6654 ], [ %6669, %6667 ]
  %6675 = phi float [ %6664, %6654 ], [ %6670, %6667 ]
  %6676 = phi float [ %6665, %6654 ], [ %6671, %6667 ]
  %6677 = phi float [ %6666, %6654 ], [ %6672, %6667 ]
  %6678 = fcmp fast ogt float %6647, 0.000000e+00
  br i1 %6678, label %6679, label %6749

; <label>:6679                                    ; preds = %6673
  %6680 = and i32 %6621, 2
  %6681 = icmp eq i32 %6680, 0
  %6682 = fadd fast float %6646, 1.000000e+00
  %6683 = call float @dx.op.unary.f32(i32 22, float %6617)  ; Frc(value)
  %6684 = call float @dx.op.unary.f32(i32 22, float %6618)  ; Frc(value)
  br i1 %6681, label %6698, label %6685, !dx.controlflow.hints !141

; <label>:6685                                    ; preds = %6679
  %6686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6687 = extractvalue %dx.types.CBufRet.f32 %6686, 0
  %6688 = fmul fast float %6683, %6687
  %6689 = fmul fast float %6684, %6687
  %6690 = fptoui float %6688 to i32
  %6691 = fptoui float %6689 to i32
  %6692 = fptoui float %6682 to i32
  %6693 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %6690, i32 %6691, i32 %6692, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6694 = extractvalue %dx.types.ResRet.f32 %6693, 0
  %6695 = extractvalue %dx.types.ResRet.f32 %6693, 1
  %6696 = extractvalue %dx.types.ResRet.f32 %6693, 2
  %6697 = extractvalue %dx.types.ResRet.f32 %6693, 3
  br label %6704

; <label>:6698                                    ; preds = %6679
  %6699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6683, float %6684, float %6682, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6700 = extractvalue %dx.types.ResRet.f32 %6699, 0
  %6701 = extractvalue %dx.types.ResRet.f32 %6699, 1
  %6702 = extractvalue %dx.types.ResRet.f32 %6699, 2
  %6703 = extractvalue %dx.types.ResRet.f32 %6699, 3
  br label %6704

; <label>:6704                                    ; preds = %6698, %6685
  %6705 = phi float [ %6694, %6685 ], [ %6700, %6698 ]
  %6706 = phi float [ %6695, %6685 ], [ %6701, %6698 ]
  %6707 = phi float [ %6696, %6685 ], [ %6702, %6698 ]
  %6708 = phi float [ %6697, %6685 ], [ %6703, %6698 ]
  %6709 = fsub fast float %6705, %6674
  %6710 = fsub fast float %6706, %6675
  %6711 = fsub fast float %6707, %6676
  %6712 = fsub fast float %6708, %6677
  %6713 = fmul fast float %6709, %6647
  %6714 = fmul fast float %6710, %6647
  %6715 = fmul fast float %6711, %6647
  %6716 = fmul fast float %6712, %6647
  %6717 = fadd fast float %6713, %6674
  %6718 = fadd fast float %6714, %6675
  %6719 = fadd fast float %6715, %6676
  %6720 = fadd fast float %6716, %6677
  br label %6749

; <label>:6721                                    ; preds = %6641
  %6722 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6649, float %6650, float %6646, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6723 = extractvalue %dx.types.ResRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.ResRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.ResRet.f32 %6722, 2
  %6726 = extractvalue %dx.types.ResRet.f32 %6722, 3
  %6727 = fcmp fast ogt float %6647, 0.000000e+00
  br i1 %6727, label %6728, label %6749, !dx.controlflow.hints !142

; <label>:6728                                    ; preds = %6721
  %6729 = fadd fast float %6646, 1.000000e+00
  %6730 = call float @dx.op.unary.f32(i32 22, float %6617)  ; Frc(value)
  %6731 = call float @dx.op.unary.f32(i32 22, float %6618)  ; Frc(value)
  %6732 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6730, float %6731, float %6729, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.ResRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.ResRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.ResRet.f32 %6732, 3
  %6737 = fsub fast float %6733, %6723
  %6738 = fsub fast float %6734, %6724
  %6739 = fsub fast float %6735, %6725
  %6740 = fsub fast float %6736, %6726
  %6741 = fmul fast float %6737, %6647
  %6742 = fmul fast float %6738, %6647
  %6743 = fmul fast float %6739, %6647
  %6744 = fmul fast float %6740, %6647
  %6745 = fadd fast float %6741, %6723
  %6746 = fadd fast float %6742, %6724
  %6747 = fadd fast float %6743, %6725
  %6748 = fadd fast float %6744, %6726
  br label %6749

; <label>:6749                                    ; preds = %6728, %6721, %6704, %6673
  %6750 = phi float [ %6717, %6704 ], [ %6674, %6673 ], [ %6745, %6728 ], [ %6723, %6721 ]
  %6751 = phi float [ %6718, %6704 ], [ %6675, %6673 ], [ %6746, %6728 ], [ %6724, %6721 ]
  %6752 = phi float [ %6719, %6704 ], [ %6676, %6673 ], [ %6747, %6728 ], [ %6725, %6721 ]
  %6753 = phi float [ %6720, %6704 ], [ %6677, %6673 ], [ %6748, %6728 ], [ %6726, %6721 ]
  %6754 = fadd fast float %6750, -5.000000e-01
  %6755 = fadd fast float %6752, -5.000000e-01
  %6756 = fmul fast float %6754, 0xBFD5555560000000
  %6757 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6755, float %6756)  ; FMad(a,b,c)
  %6758 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6751, float 0.000000e+00)  ; FMad(a,b,c)
  %6759 = fadd fast float %6758, %6753
  %6760 = fmul fast float %6754, -7.500000e-01
  %6761 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6755, float %6760)  ; FMad(a,b,c)
  %6762 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6751, float 0.000000e+00)  ; FMad(a,b,c)
  %6763 = fadd fast float %6762, %6753
  %6764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6765 = extractvalue %dx.types.CBufRet.f32 %6764, 0
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = extractvalue %dx.types.CBufRet.f32 %6766, 1
  %6769 = extractvalue %dx.types.CBufRet.f32 %6766, 2
  %6770 = extractvalue %dx.types.CBufRet.f32 %6766, 3
  %6771 = fsub fast float %6767, %6757
  %6772 = fsub fast float %6768, %6759
  %6773 = fsub fast float %6769, %6761
  %6774 = fsub fast float %6770, %6763
  %6775 = fmul fast float %6771, %6765
  %6776 = fmul fast float %6772, %6765
  %6777 = fmul fast float %6773, %6765
  %6778 = fmul fast float %6774, %6765
  %6779 = fadd fast float %6775, %6757
  %6780 = fadd fast float %6776, %6759
  %6781 = fadd fast float %6777, %6761
  %6782 = fadd fast float %6778, %6763
  %6783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6784 = extractvalue %dx.types.ResRet.i32 %6783, 0
  %6785 = and i32 %6784, 536870911
  %6786 = uitofp i32 %6785 to float
  %6787 = fmul fast float %6786, %6622
  %6788 = fmul fast float %6786, %6623
  %6789 = fptoui float %6787 to i32
  %6790 = fptoui float %6788 to i32
  %6791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.i32 %6791, 0
  %6793 = and i32 %6792, 31
  %6794 = lshr i32 %6789, %6793
  %6795 = lshr i32 %6790, %6793
  %6796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6797 = extractvalue %dx.types.ResRet.i32 %6796, 0
  %6798 = and i32 %6797, 31
  %6799 = shl i32 1, %6798
  %6800 = call i32 @dx.op.binary.i32(i32 40, i32 %6799, i32 4)  ; UMin(a,b)
  %6801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6802 = extractvalue %dx.types.ResRet.i32 %6801, 0
  %6803 = extractvalue %dx.types.ResRet.i32 %6801, 1
  %6804 = icmp eq i32 %6800, 0
  br i1 %6804, label %6846, label %6805

; <label>:6805                                    ; preds = %6749
  br label %6806

; <label>:6806                                    ; preds = %6834, %6805
  %6807 = phi i32 [ %6837, %6834 ], [ 0, %6805 ]
  %6808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6809 = extractvalue %dx.types.ResRet.i32 %6808, 0
  %6810 = lshr i32 %6809, 16
  %6811 = and i32 %6810, 31
  %6812 = shl i32 %6795, %6811
  %6813 = add i32 %6812, %6794
  %6814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6815 = extractvalue %dx.types.ResRet.i32 %6814, 0
  %6816 = and i32 %6815, 31
  %6817 = shl i32 %6813, %6816
  %6818 = add i32 %6817, %6807
  %6819 = shl i32 %6818, 2
  %6820 = add i32 %6819, 32
  %6821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6820, i32 undef)  ; BufferLoad(srv,index,wot)
  %6822 = extractvalue %dx.types.ResRet.i32 %6821, 0
  %6823 = icmp slt i32 %6822, 0
  %6824 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %6807
  %6825 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6807
  %6826 = bitcast float* %6824 to i32*
  %6827 = bitcast float* %6825 to i32*
  br i1 %6823, label %6828, label %6834

; <label>:6828                                    ; preds = %6806
  %6829 = and i32 %6822, 1073741823
  %6830 = add nuw nsw i32 %6829, 20
  %6831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6830, i32 undef)  ; BufferLoad(srv,index,wot)
  %6832 = extractvalue %dx.types.ResRet.i32 %6831, 0
  %6833 = extractvalue %dx.types.ResRet.i32 %6831, 1
  br label %6834

; <label>:6834                                    ; preds = %6828, %6806
  %6835 = phi i32 [ %6832, %6828 ], [ %6802, %6806 ]
  %6836 = phi i32 [ %6833, %6828 ], [ %6803, %6806 ]
  store i32 %6835, i32* %6826, align 4
  store i32 %6836, i32* %6827, align 4
  %6837 = add nuw i32 %6807, 1
  %6838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6839 = extractvalue %dx.types.CBufRet.i32 %6838, 2
  %6840 = icmp eq i32 %6839, 0
  %6841 = icmp ugt i32 %6822, -1073741825
  %6842 = and i1 %6841, %6840
  %6843 = icmp ult i32 %6837, %6800
  %6844 = and i1 %6842, %6843
  br i1 %6844, label %6806, label %6845

; <label>:6845                                    ; preds = %6834
  br label %6846

; <label>:6846                                    ; preds = %6845, %6749
  %6847 = phi i32 [ 0, %6749 ], [ %6837, %6845 ]
  %6848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6849 = extractvalue %dx.types.CBufRet.f32 %6848, 2
  %6850 = fptoui float %6849 to i32
  %6851 = icmp eq i32 %6850, 0
  br i1 %6851, label %6903, label %6852

; <label>:6852                                    ; preds = %6846
  br label %6853

; <label>:6853                                    ; preds = %6898, %6852
  %6854 = phi i32 [ %6899, %6898 ], [ %6847, %6852 ]
  %6855 = phi i32 [ %6900, %6898 ], [ 0, %6852 ]
  %6856 = lshr i32 %6855, 2
  %6857 = and i32 %6855, 3
  %6858 = add nuw nsw i32 %6856, 83
  %6859 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 %6858)  ; CBufferLoadLegacy(handle,regIndex)
  %6860 = extractvalue %dx.types.CBufRet.i32 %6859, 0
  %6861 = extractvalue %dx.types.CBufRet.i32 %6859, 1
  %6862 = extractvalue %dx.types.CBufRet.i32 %6859, 2
  %6863 = extractvalue %dx.types.CBufRet.i32 %6859, 3
  %6864 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %6860, i32* %6864, align 4
  %6865 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %6861, i32* %6865, align 4
  %6866 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %6862, i32* %6866, align 4
  %6867 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %6863, i32* %6867, align 4
  %6868 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %6857
  %6869 = load i32, i32* %6868, align 4, !tbaa !100, !noalias !143
  %6870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6871 = extractvalue %dx.types.ResRet.i32 %6870, 0
  %6872 = lshr i32 %6871, 16
  %6873 = and i32 %6872, 31
  %6874 = shl i32 %6795, %6873
  %6875 = add i32 %6874, %6794
  %6876 = shl i32 %6875, 2
  %6877 = add i32 %6876, %6869
  %6878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6877, i32 undef)  ; BufferLoad(srv,index,wot)
  %6879 = extractvalue %dx.types.ResRet.i32 %6878, 0
  %6880 = icmp eq i32 %6879, 0
  br i1 %6880, label %6898, label %6881

; <label>:6881                                    ; preds = %6853
  %6882 = icmp slt i32 %6879, 0
  %6883 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %6854
  %6884 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6854
  %6885 = bitcast float* %6883 to i32*
  %6886 = bitcast float* %6884 to i32*
  br i1 %6882, label %6887, label %6894

; <label>:6887                                    ; preds = %6881
  %6888 = and i32 %6879, 1073741823
  %6889 = add i32 %6869, 20
  %6890 = add i32 %6889, %6888
  %6891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6890, i32 undef)  ; BufferLoad(srv,index,wot)
  %6892 = extractvalue %dx.types.ResRet.i32 %6891, 0
  %6893 = extractvalue %dx.types.ResRet.i32 %6891, 1
  br label %6894

; <label>:6894                                    ; preds = %6887, %6881
  %6895 = phi i32 [ %6892, %6887 ], [ %6802, %6881 ]
  %6896 = phi i32 [ %6893, %6887 ], [ %6803, %6881 ]
  store i32 %6895, i32* %6885, align 4
  store i32 %6896, i32* %6886, align 4
  %6897 = add i32 %6854, 1
  br label %6898

; <label>:6898                                    ; preds = %6894, %6853
  %6899 = phi i32 [ %6854, %6853 ], [ %6897, %6894 ]
  %6900 = add nuw i32 %6855, 1
  %6901 = icmp eq i32 %6900, %6850
  br i1 %6901, label %6902, label %6853

; <label>:6902                                    ; preds = %6898
  br label %6903

; <label>:6903                                    ; preds = %6902, %6846
  %6904 = phi i32 [ %6847, %6846 ], [ %6899, %6902 ]
  %6905 = icmp eq i32 %6904, 1
  %6906 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 0
  %6907 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 0
  br i1 %6905, label %6908, label %6911

; <label>:6908                                    ; preds = %6903
  %6909 = load float, float* %6906, align 4
  %6910 = load float, float* %6907, align 4
  br label %6938

; <label>:6911                                    ; preds = %6903
  %6912 = load float, float* %6906, align 4
  %6913 = load float, float* %6907, align 4
  %6914 = fdiv fast float 1.000000e+00, %6913
  %6915 = fsub fast float %6912, %6914
  %6916 = icmp ugt i32 %6904, 1
  br i1 %6916, label %6917, label %6933

; <label>:6917                                    ; preds = %6911
  br label %6918

; <label>:6918                                    ; preds = %6918, %6917
  %6919 = phi float [ %6928, %6918 ], [ %6915, %6917 ]
  %6920 = phi float [ %6929, %6918 ], [ %6912, %6917 ]
  %6921 = phi i32 [ %6930, %6918 ], [ 1, %6917 ]
  %6922 = getelementptr [12 x float], [12 x float]* %81, i32 0, i32 %6921
  %6923 = load float, float* %6922, align 4
  %6924 = getelementptr [12 x float], [12 x float]* %82, i32 0, i32 %6921
  %6925 = load float, float* %6924, align 4
  %6926 = fdiv fast float 1.000000e+00, %6925
  %6927 = fsub fast float %6923, %6926
  %6928 = call float @dx.op.binary.f32(i32 36, float %6919, float %6927)  ; FMin(a,b)
  %6929 = call float @dx.op.binary.f32(i32 35, float %6920, float %6923)  ; FMax(a,b)
  %6930 = add nuw i32 %6921, 1
  %6931 = icmp eq i32 %6930, %6904
  br i1 %6931, label %6932, label %6918

; <label>:6932                                    ; preds = %6918
  br label %6933

; <label>:6933                                    ; preds = %6932, %6911
  %6934 = phi float [ %6915, %6911 ], [ %6928, %6932 ]
  %6935 = phi float [ %6912, %6911 ], [ %6929, %6932 ]
  %6936 = fsub fast float %6935, %6934
  %6937 = fdiv fast float 1.000000e+00, %6936
  br label %6938

; <label>:6938                                    ; preds = %6933, %6908
  %6939 = phi float [ %6909, %6908 ], [ %6935, %6933 ]
  %6940 = phi float [ %6910, %6908 ], [ %6937, %6933 ]
  %6941 = fadd fast float %6369, %6939
  %6942 = fmul fast float %6941, %6940
  %6943 = call float @dx.op.unary.f32(i32 7, float %6942)  ; Saturate(value)
  %6944 = fmul fast float %6943, 2.000000e+00
  %6945 = fsub fast float 1.000000e+00, %6944
  %6946 = fmul fast float %6779, %6779
  %6947 = fsub fast float %6780, %6946
  %6948 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6947)  ; FMax(a,b)
  %6949 = fdiv fast float 1.000000e+00, %6948
  %6950 = fmul fast float %6780, %6779
  %6951 = fsub fast float %6781, %6950
  %6952 = fsub fast float %6945, %6779
  %6953 = fmul fast float %6945, %6945
  %6954 = fsub fast float %6953, %6780
  %6955 = fmul fast float %6949, %6951
  %6956 = fmul fast float %6955, %6952
  %6957 = fsub fast float %6954, %6956
  %6958 = fmul fast float %6780, %6780
  %6959 = fsub fast float %6782, %6958
  %6960 = fmul fast float %6951, %6951
  %6961 = fmul fast float %6960, %6949
  %6962 = fsub fast float %6959, %6961
  %6963 = fdiv fast float %6957, %6962
  %6964 = fmul fast float %6963, %6951
  %6965 = fsub fast float %6952, %6964
  %6966 = fmul fast float %6965, %6949
  %6967 = fmul fast float %6966, %6779
  %6968 = fsub fast float 1.000000e+00, %6967
  %6969 = fmul fast float %6963, %6780
  %6970 = fsub fast float %6968, %6969
  %6971 = fmul fast float %6966, %6966
  %6972 = fmul fast float %6963, 4.000000e+00
  %6973 = fmul fast float %6972, %6970
  %6974 = fsub fast float %6971, %6973
  %6975 = call float @dx.op.unary.f32(i32 24, float %6974)  ; Sqrt(value)
  %6976 = fcmp fast oge float %6966, 0.000000e+00
  %6977 = fsub fast float -0.000000e+00, %6975
  %6978 = select i1 %6976, float %6977, float %6975
  %6979 = fsub fast float %6978, %6966
  %6980 = fdiv fast float %6979, %6963
  %6981 = fdiv fast float %6970, %6979
  %6982 = fmul fast float %6980, 5.000000e-01
  %6983 = fmul fast float %6981, 2.000000e+00
  %6984 = select i1 %6976, float %6982, float %6983
  %6985 = select i1 %6976, float %6983, float %6982
  %6986 = call float @dx.op.binary.f32(i32 35, float %6984, float %6985)  ; FMax(a,b)
  %6987 = call float @dx.op.binary.f32(i32 36, float %6984, float %6985)  ; FMin(a,b)
  %6988 = fcmp fast ogt float %6945, %6986
  %6989 = fsub fast float %6945, %6987
  %6990 = fsub fast float %6945, %6986
  %6991 = fsub fast float %6986, %6987
  %6992 = select i1 %6988, float %6990, float %6991
  %6993 = fmul float %6989, %6992
  %6994 = select i1 %6988, float %6987, float %6945
  %6995 = fcmp fast ogt float %6945, %6987
  %6996 = fmul fast float %6994, %6986
  %6997 = fadd fast float %6994, %6986
  %6998 = fmul fast float %6997, %6779
  %6999 = fadd fast float %6996, %6780
  %7000 = fsub fast float %6999, %6998
  %7001 = fdiv fast float %7000, %6993
  %7002 = select i1 %6995, float %7001, float 0.000000e+00
  %7003 = fsub fast float 1.000000e+00, %7002
  %7004 = select i1 %6988, float %7003, float %7002
  %7005 = call float @dx.op.unary.f32(i32 7, float %7004)  ; Saturate(value)
  %7006 = extractvalue %dx.types.CBufRet.f32 %6764, 3
  %7007 = fmul fast float %7006, %7005
  %7008 = fsub fast float 1.000000e+00, %7007
  br label %7009

; <label>:7009                                    ; preds = %6938, %6616, %6342, %6338, %6308
  %7010 = phi float [ 1.000000e+00, %6308 ], [ %7008, %6938 ], [ 1.000000e+00, %6342 ], [ 1.000000e+00, %6616 ], [ 1.000000e+00, %6338 ]
  %7011 = fcmp fast ogt float %6334, 0.000000e+00
  br i1 %7011, label %7012, label %7176, !dx.controlflow.hints !148

; <label>:7012                                    ; preds = %7009
  %7013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7014 = extractvalue %dx.types.CBufRet.f32 %7013, 2
  %7015 = fadd fast float %7014, %6254
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7016, 3
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 2
  %7021 = call float @dx.op.binary.f32(i32 35, float %7015, float 0.000000e+00)  ; FMax(a,b)
  %7022 = fadd fast float %7021, 0x3F10000000000000
  %7023 = fcmp fast oeq float %7020, 0.000000e+00
  br i1 %7023, label %7024, label %7091

; <label>:7024                                    ; preds = %7012
  %7025 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7026 = extractvalue %dx.types.CBufRet.f32 %7016, 0
  %7027 = fmul fast float %7026, %6142
  %7028 = fmul fast float %7025, %6143
  %7029 = fadd fast float %7027, 5.000000e-01
  %7030 = call float @dx.op.unary.f32(i32 27, float %7029)  ; Round_ni(value)
  %7031 = fadd fast float %7028, 5.000000e-01
  %7032 = call float @dx.op.unary.f32(i32 27, float %7031)  ; Round_ni(value)
  %7033 = fsub fast float %7029, %7030
  %7034 = fsub fast float %7031, %7032
  %7035 = fadd fast float %7030, -5.000000e-01
  %7036 = fadd fast float %7032, -5.000000e-01
  %7037 = fmul fast float %7033, 2.000000e+00
  %7038 = fsub fast float 3.000000e+00, %7037
  %7039 = fadd fast float %7037, 1.000000e+00
  %7040 = fsub fast float 2.000000e+00, %7033
  %7041 = bitcast float %7038 to i32
  %7042 = sub nsw i32 2129859010, %7041
  %7043 = bitcast i32 %7042 to float
  %7044 = fmul fast float %7043, %7040
  %7045 = fadd fast float %7044, -1.000000e+00
  %7046 = bitcast float %7039 to i32
  %7047 = sub nsw i32 2129859010, %7046
  %7048 = bitcast i32 %7047 to float
  %7049 = fmul fast float %7048, %7033
  %7050 = fadd fast float %7049, 1.000000e+00
  %7051 = fmul fast float %7034, 2.000000e+00
  %7052 = fsub fast float 3.000000e+00, %7051
  %7053 = fadd fast float %7051, 1.000000e+00
  %7054 = fsub fast float 2.000000e+00, %7034
  %7055 = bitcast float %7052 to i32
  %7056 = sub nsw i32 2129859010, %7055
  %7057 = bitcast i32 %7056 to float
  %7058 = fmul fast float %7057, %7054
  %7059 = fadd fast float %7058, -1.000000e+00
  %7060 = bitcast float %7053 to i32
  %7061 = sub nsw i32 2129859010, %7060
  %7062 = bitcast i32 %7061 to float
  %7063 = fmul fast float %7062, %7034
  %7064 = fadd fast float %7063, 1.000000e+00
  %7065 = fadd fast float %7045, %7035
  %7066 = fmul fast float %7065, %7017
  %7067 = fadd fast float %7059, %7036
  %7068 = fmul fast float %7067, %7018
  %7069 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %7066, float %7068, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7070 = extractvalue %dx.types.ResRet.f32 %7069, 0
  %7071 = fmul fast float %7070, %7038
  %7072 = fadd fast float %7050, %7035
  %7073 = fmul fast float %7072, %7017
  %7074 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %7073, float %7068, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7075 = extractvalue %dx.types.ResRet.f32 %7074, 0
  %7076 = fmul fast float %7075, %7039
  %7077 = fadd fast float %7064, %7036
  %7078 = fmul fast float %7077, %7018
  %7079 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %7066, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7080 = extractvalue %dx.types.ResRet.f32 %7079, 0
  %7081 = fmul fast float %7080, %7038
  %7082 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %7073, float %7078, float undef, float undef, i32 0, i32 0, i32 undef, float %7022)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7083 = extractvalue %dx.types.ResRet.f32 %7082, 0
  %7084 = fmul fast float %7083, %7039
  %7085 = fadd fast float %7084, %7081
  %7086 = fmul fast float %7085, %7053
  %7087 = fadd fast float %7076, %7071
  %7088 = fmul fast float %7087, %7052
  %7089 = fadd fast float %7088, %7086
  %7090 = fmul fast float %7089, 6.250000e-02
  br label %7176

; <label>:7091                                    ; preds = %7012
  %7092 = fmul fast float %2394, 0x401921FB60000000
  %7093 = call float @dx.op.unary.f32(i32 13, float %7092)  ; Sin(value)
  %7094 = call float @dx.op.unary.f32(i32 12, float %7092)  ; Cos(value)
  %7095 = fsub fast float -0.000000e+00, %7093
  br label %7096

; <label>:7096                                    ; preds = %7145, %7091
  %7097 = phi float [ 0.000000e+00, %7091 ], [ %7140, %7145 ]
  %7098 = phi float [ 0.000000e+00, %7091 ], [ %7142, %7145 ]
  %7099 = phi i32 [ 0, %7091 ], [ %7146, %7145 ]
  %7100 = mul i32 %7099, 2
  %7101 = add i32 0, %7100
  %7102 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7101
  %7103 = load float, float* %7102, align 4
  %7104 = mul i32 %7099, 2
  %7105 = add i32 1, %7104
  %7106 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7105
  %7107 = load float, float* %7106, align 4
  %7108 = fmul fast float %7103, %7094
  %7109 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7095, float %7108)  ; FMad(a,b,c)
  %7110 = fmul fast float %7103, %7093
  %7111 = call float @dx.op.tertiary.f32(i32 46, float %7107, float %7094, float %7110)  ; FMad(a,b,c)
  %7112 = fmul fast float %7109, %7020
  %7113 = fmul fast float %7111, %7020
  %7114 = fadd fast float %7112, %6142
  %7115 = fadd fast float %7113, %6143
  %7116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %64, float %7114, float %7115, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7117 = extractvalue %dx.types.ResRet.f32 %7116, 0
  %7118 = extractvalue %dx.types.ResRet.f32 %7116, 1
  %7119 = extractvalue %dx.types.ResRet.f32 %7116, 2
  %7120 = extractvalue %dx.types.ResRet.f32 %7116, 3
  %7121 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %7117, float* %7121, align 4
  %7122 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %7118, float* %7122, align 4
  %7123 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %7119, float* %7123, align 4
  %7124 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %7120, float* %7124, align 4
  %7125 = fsub fast float %7117, %7022
  %7126 = fcmp fast olt float %7125, 0.000000e+00
  %7127 = select i1 %7126, float 0.000000e+00, float 1.000000e+00
  %7128 = fadd fast float %7127, %7097
  %7129 = fmul fast float %7127, %7125
  %7130 = fadd fast float %7129, %7098
  br label %7131

; <label>:7131                                    ; preds = %7131, %7096
  %7132 = phi i32 [ 1, %7096 ], [ %7143, %7131 ]
  %7133 = phi float [ %7130, %7096 ], [ %7142, %7131 ]
  %7134 = phi float [ %7128, %7096 ], [ %7140, %7131 ]
  %7135 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %7132
  %7136 = load float, float* %7135, align 4, !tbaa !107, !noalias !149
  %7137 = fsub fast float %7136, %7022
  %7138 = fcmp fast olt float %7137, 0.000000e+00
  %7139 = select i1 %7138, float 0.000000e+00, float 1.000000e+00
  %7140 = fadd fast float %7139, %7134
  %7141 = fmul fast float %7139, %7137
  %7142 = fadd fast float %7141, %7133
  %7143 = add nuw nsw i32 %7132, 1
  %7144 = icmp eq i32 %7143, 4
  br i1 %7144, label %7145, label %7131, !llvm.loop !154

; <label>:7145                                    ; preds = %7131
  %7146 = add nuw nsw i32 %7099, 1
  %7147 = icmp eq i32 %7146, 8
  br i1 %7147, label %7148, label %7096, !llvm.loop !155

; <label>:7148                                    ; preds = %7145
  %7149 = fdiv fast float 1.000000e+00, %7140
  %7150 = fmul fast float %7149, %7142
  %7151 = fdiv fast float 1.000000e+00, %7022
  %7152 = fmul fast float %7150, %7151
  %7153 = call float @dx.op.unary.f32(i32 7, float %7152)  ; Saturate(value)
  %7154 = call float @dx.op.binary.f32(i32 35, float %7153, float 0.000000e+00)  ; FMax(a,b)
  %7155 = fmul fast float %7140, 3.125000e-02
  %7156 = call float @dx.op.unary.f32(i32 7, float %7155)  ; Saturate(value)
  %7157 = fmul fast float %7156, 2.000000e+00
  %7158 = fadd fast float %7157, -1.000000e+00
  %7159 = fcmp fast ogt float %7158, 0.000000e+00
  %7160 = fcmp fast olt float %7158, 0.000000e+00
  %7161 = zext i1 %7159 to i32
  %7162 = zext i1 %7160 to i32
  %7163 = sub nsw i32 %7161, %7162
  %7164 = sitofp i32 %7163 to float
  %7165 = fmul fast float %7164, %7158
  %7166 = fsub fast float 1.000000e+00, %7165
  %7167 = fmul fast float %7166, %7166
  %7168 = fmul fast float %7167, %7166
  %7169 = fsub fast float %7166, %7168
  %7170 = fmul fast float %7169, %7154
  %7171 = fsub fast float 1.000000e+00, %7168
  %7172 = fsub fast float %7171, %7170
  %7173 = fmul fast float %7164, 5.000000e-01
  %7174 = fmul fast float %7173, %7172
  %7175 = fsub fast float 5.000000e-01, %7174
  br label %7176

; <label>:7176                                    ; preds = %7148, %7024, %7009
  %7177 = phi float [ 1.000000e+00, %7009 ], [ %7090, %7024 ], [ %7175, %7148 ]
  %7178 = fcmp fast ogt float %6332, 0.000000e+00
  br i1 %7178, label %7179, label %7343, !dx.controlflow.hints !156

; <label>:7179                                    ; preds = %7176
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 1
  %7182 = fadd fast float %7181, %6254
  %7183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7184 = extractvalue %dx.types.CBufRet.f32 %7183, 2
  %7185 = extractvalue %dx.types.CBufRet.f32 %7183, 3
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 1
  %7188 = call float @dx.op.binary.f32(i32 35, float %7182, float 0.000000e+00)  ; FMax(a,b)
  %7189 = fadd fast float %7188, 0x3F10000000000000
  %7190 = fcmp fast oeq float %7187, 0.000000e+00
  br i1 %7190, label %7191, label %7258

; <label>:7191                                    ; preds = %7179
  %7192 = extractvalue %dx.types.CBufRet.f32 %7183, 1
  %7193 = extractvalue %dx.types.CBufRet.f32 %7183, 0
  %7194 = fmul fast float %7193, %6134
  %7195 = fmul fast float %7192, %6135
  %7196 = fadd fast float %7194, 5.000000e-01
  %7197 = call float @dx.op.unary.f32(i32 27, float %7196)  ; Round_ni(value)
  %7198 = fadd fast float %7195, 5.000000e-01
  %7199 = call float @dx.op.unary.f32(i32 27, float %7198)  ; Round_ni(value)
  %7200 = fsub fast float %7196, %7197
  %7201 = fsub fast float %7198, %7199
  %7202 = fadd fast float %7197, -5.000000e-01
  %7203 = fadd fast float %7199, -5.000000e-01
  %7204 = fmul fast float %7200, 2.000000e+00
  %7205 = fsub fast float 3.000000e+00, %7204
  %7206 = fadd fast float %7204, 1.000000e+00
  %7207 = fsub fast float 2.000000e+00, %7200
  %7208 = bitcast float %7205 to i32
  %7209 = sub nsw i32 2129859010, %7208
  %7210 = bitcast i32 %7209 to float
  %7211 = fmul fast float %7210, %7207
  %7212 = fadd fast float %7211, -1.000000e+00
  %7213 = bitcast float %7206 to i32
  %7214 = sub nsw i32 2129859010, %7213
  %7215 = bitcast i32 %7214 to float
  %7216 = fmul fast float %7215, %7200
  %7217 = fadd fast float %7216, 1.000000e+00
  %7218 = fmul fast float %7201, 2.000000e+00
  %7219 = fsub fast float 3.000000e+00, %7218
  %7220 = fadd fast float %7218, 1.000000e+00
  %7221 = fsub fast float 2.000000e+00, %7201
  %7222 = bitcast float %7219 to i32
  %7223 = sub nsw i32 2129859010, %7222
  %7224 = bitcast i32 %7223 to float
  %7225 = fmul fast float %7224, %7221
  %7226 = fadd fast float %7225, -1.000000e+00
  %7227 = bitcast float %7220 to i32
  %7228 = sub nsw i32 2129859010, %7227
  %7229 = bitcast i32 %7228 to float
  %7230 = fmul fast float %7229, %7201
  %7231 = fadd fast float %7230, 1.000000e+00
  %7232 = fadd fast float %7212, %7202
  %7233 = fmul fast float %7232, %7184
  %7234 = fadd fast float %7226, %7203
  %7235 = fmul fast float %7234, %7185
  %7236 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %7233, float %7235, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7237 = extractvalue %dx.types.ResRet.f32 %7236, 0
  %7238 = fmul fast float %7237, %7205
  %7239 = fadd fast float %7217, %7202
  %7240 = fmul fast float %7239, %7184
  %7241 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %7240, float %7235, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7242 = extractvalue %dx.types.ResRet.f32 %7241, 0
  %7243 = fmul fast float %7242, %7206
  %7244 = fadd fast float %7231, %7203
  %7245 = fmul fast float %7244, %7185
  %7246 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %7233, float %7245, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 0
  %7248 = fmul fast float %7247, %7205
  %7249 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %7240, float %7245, float undef, float undef, i32 0, i32 0, i32 undef, float %7189)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7250 = extractvalue %dx.types.ResRet.f32 %7249, 0
  %7251 = fmul fast float %7250, %7206
  %7252 = fadd fast float %7251, %7248
  %7253 = fmul fast float %7252, %7220
  %7254 = fadd fast float %7243, %7238
  %7255 = fmul fast float %7254, %7219
  %7256 = fadd fast float %7255, %7253
  %7257 = fmul fast float %7256, 6.250000e-02
  br label %7343

; <label>:7258                                    ; preds = %7179
  %7259 = fmul fast float %2394, 0x401921FB60000000
  %7260 = call float @dx.op.unary.f32(i32 13, float %7259)  ; Sin(value)
  %7261 = call float @dx.op.unary.f32(i32 12, float %7259)  ; Cos(value)
  %7262 = fsub fast float -0.000000e+00, %7260
  br label %7263

; <label>:7263                                    ; preds = %7312, %7258
  %7264 = phi float [ 0.000000e+00, %7258 ], [ %7307, %7312 ]
  %7265 = phi float [ 0.000000e+00, %7258 ], [ %7309, %7312 ]
  %7266 = phi i32 [ 0, %7258 ], [ %7313, %7312 ]
  %7267 = mul i32 %7266, 2
  %7268 = add i32 0, %7267
  %7269 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7268
  %7270 = load float, float* %7269, align 4
  %7271 = mul i32 %7266, 2
  %7272 = add i32 1, %7271
  %7273 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7272
  %7274 = load float, float* %7273, align 4
  %7275 = fmul fast float %7270, %7261
  %7276 = call float @dx.op.tertiary.f32(i32 46, float %7274, float %7262, float %7275)  ; FMad(a,b,c)
  %7277 = fmul fast float %7270, %7260
  %7278 = call float @dx.op.tertiary.f32(i32 46, float %7274, float %7261, float %7277)  ; FMad(a,b,c)
  %7279 = fmul fast float %7276, %7187
  %7280 = fmul fast float %7278, %7187
  %7281 = fadd fast float %7279, %6134
  %7282 = fadd fast float %7280, %6135
  %7283 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %64, float %7281, float %7282, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 0
  %7285 = extractvalue %dx.types.ResRet.f32 %7283, 1
  %7286 = extractvalue %dx.types.ResRet.f32 %7283, 2
  %7287 = extractvalue %dx.types.ResRet.f32 %7283, 3
  %7288 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  store float %7284, float* %7288, align 4
  %7289 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  store float %7285, float* %7289, align 4
  %7290 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  store float %7286, float* %7290, align 4
  %7291 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  store float %7287, float* %7291, align 4
  %7292 = fsub fast float %7284, %7189
  %7293 = fcmp fast olt float %7292, 0.000000e+00
  %7294 = select i1 %7293, float 0.000000e+00, float 1.000000e+00
  %7295 = fadd fast float %7294, %7264
  %7296 = fmul fast float %7294, %7292
  %7297 = fadd fast float %7296, %7265
  br label %7298

; <label>:7298                                    ; preds = %7298, %7263
  %7299 = phi i32 [ 1, %7263 ], [ %7310, %7298 ]
  %7300 = phi float [ %7297, %7263 ], [ %7309, %7298 ]
  %7301 = phi float [ %7295, %7263 ], [ %7307, %7298 ]
  %7302 = getelementptr [4 x float], [4 x float]* %86, i32 0, i32 %7299
  %7303 = load float, float* %7302, align 4, !tbaa !107, !noalias !149
  %7304 = fsub fast float %7303, %7189
  %7305 = fcmp fast olt float %7304, 0.000000e+00
  %7306 = select i1 %7305, float 0.000000e+00, float 1.000000e+00
  %7307 = fadd fast float %7306, %7301
  %7308 = fmul fast float %7306, %7304
  %7309 = fadd fast float %7308, %7300
  %7310 = add nuw nsw i32 %7299, 1
  %7311 = icmp eq i32 %7310, 4
  br i1 %7311, label %7312, label %7298, !llvm.loop !154

; <label>:7312                                    ; preds = %7298
  %7313 = add nuw nsw i32 %7266, 1
  %7314 = icmp eq i32 %7313, 8
  br i1 %7314, label %7315, label %7263, !llvm.loop !155

; <label>:7315                                    ; preds = %7312
  %7316 = fdiv fast float 1.000000e+00, %7307
  %7317 = fmul fast float %7316, %7309
  %7318 = fdiv fast float 1.000000e+00, %7189
  %7319 = fmul fast float %7317, %7318
  %7320 = call float @dx.op.unary.f32(i32 7, float %7319)  ; Saturate(value)
  %7321 = call float @dx.op.binary.f32(i32 35, float %7320, float 0.000000e+00)  ; FMax(a,b)
  %7322 = fmul fast float %7307, 3.125000e-02
  %7323 = call float @dx.op.unary.f32(i32 7, float %7322)  ; Saturate(value)
  %7324 = fmul fast float %7323, 2.000000e+00
  %7325 = fadd fast float %7324, -1.000000e+00
  %7326 = fcmp fast ogt float %7325, 0.000000e+00
  %7327 = fcmp fast olt float %7325, 0.000000e+00
  %7328 = zext i1 %7326 to i32
  %7329 = zext i1 %7327 to i32
  %7330 = sub nsw i32 %7328, %7329
  %7331 = sitofp i32 %7330 to float
  %7332 = fmul fast float %7331, %7325
  %7333 = fsub fast float 1.000000e+00, %7332
  %7334 = fmul fast float %7333, %7333
  %7335 = fmul fast float %7334, %7333
  %7336 = fsub fast float %7333, %7335
  %7337 = fmul fast float %7336, %7321
  %7338 = fsub fast float 1.000000e+00, %7335
  %7339 = fsub fast float %7338, %7337
  %7340 = fmul fast float %7331, 5.000000e-01
  %7341 = fmul fast float %7340, %7339
  %7342 = fsub fast float 5.000000e-01, %7341
  br label %7343

; <label>:7343                                    ; preds = %7315, %7191, %7176
  %7344 = phi float [ 1.000000e+00, %7176 ], [ %7257, %7191 ], [ %7342, %7315 ]
  %7345 = fcmp fast ogt float %6331, 0.000000e+00
  br i1 %7345, label %7346, label %7510, !dx.controlflow.hints !157

; <label>:7346                                    ; preds = %7343
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 0
  %7349 = fadd fast float %7348, %6254
  %7350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7351 = extractvalue %dx.types.CBufRet.f32 %7350, 2
  %7352 = extractvalue %dx.types.CBufRet.f32 %7350, 3
  %7353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7354 = extractvalue %dx.types.CBufRet.f32 %7353, 0
  %7355 = call float @dx.op.binary.f32(i32 35, float %7349, float 0.000000e+00)  ; FMax(a,b)
  %7356 = fadd fast float %7355, 0x3F10000000000000
  %7357 = fcmp fast oeq float %7354, 0.000000e+00
  br i1 %7357, label %7358, label %7425

; <label>:7358                                    ; preds = %7346
  %7359 = extractvalue %dx.types.CBufRet.f32 %7350, 1
  %7360 = extractvalue %dx.types.CBufRet.f32 %7350, 0
  %7361 = fmul fast float %7360, %6120
  %7362 = fmul fast float %7359, %6124
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
  %7403 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %7400, float %7402, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7404 = extractvalue %dx.types.ResRet.f32 %7403, 0
  %7405 = fmul fast float %7404, %7372
  %7406 = fadd fast float %7384, %7369
  %7407 = fmul fast float %7406, %7351
  %7408 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %7407, float %7402, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7409 = extractvalue %dx.types.ResRet.f32 %7408, 0
  %7410 = fmul fast float %7409, %7373
  %7411 = fadd fast float %7398, %7370
  %7412 = fmul fast float %7411, %7352
  %7413 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %7400, float %7412, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7414 = extractvalue %dx.types.ResRet.f32 %7413, 0
  %7415 = fmul fast float %7414, %7372
  %7416 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %7407, float %7412, float undef, float undef, i32 0, i32 0, i32 undef, float %7356)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
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
  %7426 = fmul fast float %2394, 0x401921FB60000000
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
  %7448 = fadd fast float %7446, %6120
  %7449 = fadd fast float %7447, %6124
  %7450 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %64, float %7448, float %7449, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7451 = extractvalue %dx.types.ResRet.f32 %7450, 0
  %7452 = extractvalue %dx.types.ResRet.f32 %7450, 1
  %7453 = extractvalue %dx.types.ResRet.f32 %7450, 2
  %7454 = extractvalue %dx.types.ResRet.f32 %7450, 3
  %7455 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  store float %7451, float* %7455, align 4
  %7456 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  store float %7452, float* %7456, align 4
  %7457 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  store float %7453, float* %7457, align 4
  %7458 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
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
  %7469 = getelementptr [4 x float], [4 x float]* %85, i32 0, i32 %7466
  %7470 = load float, float* %7469, align 4, !tbaa !107, !noalias !149
  %7471 = fsub fast float %7470, %7356
  %7472 = fcmp fast olt float %7471, 0.000000e+00
  %7473 = select i1 %7472, float 0.000000e+00, float 1.000000e+00
  %7474 = fadd fast float %7473, %7468
  %7475 = fmul fast float %7473, %7471
  %7476 = fadd fast float %7475, %7467
  %7477 = add nuw nsw i32 %7466, 1
  %7478 = icmp eq i32 %7477, 4
  br i1 %7478, label %7479, label %7465, !llvm.loop !154

; <label>:7479                                    ; preds = %7465
  %7480 = add nuw nsw i32 %7433, 1
  %7481 = icmp eq i32 %7480, 8
  br i1 %7481, label %7482, label %7430, !llvm.loop !155

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
  %7512 = fsub fast float %7177, %7010
  %7513 = fmul fast float %7512, %6284
  %7514 = fadd fast float %7513, %7010
  %7515 = fsub fast float %7344, %7514
  %7516 = fmul fast float %7515, %6309
  %7517 = fadd fast float %7516, %7514
  %7518 = fsub fast float %7511, %7517
  %7519 = fmul fast float %7518, %6331
  %7520 = fadd fast float %7519, %7517
  %7521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7522 = extractvalue %dx.types.CBufRet.f32 %7521, 2
  %7523 = fcmp fast ogt float %7522, 0.000000e+00
  br i1 %7523, label %7524, label %7564, !dx.controlflow.hints !158

; <label>:7524                                    ; preds = %7510
  %7525 = fcmp fast ugt float %7522, 0.000000e+00
  br i1 %7525, label %7526, label %7561

; <label>:7526                                    ; preds = %7524
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.f32 %7532, 0
  %7534 = extractvalue %dx.types.CBufRet.f32 %7532, 1
  %7535 = extractvalue %dx.types.CBufRet.f32 %7532, 2
  %7536 = extractvalue %dx.types.CBufRet.f32 %7532, 3
  %7537 = extractvalue %dx.types.CBufRet.f32 %7521, 0
  %7538 = extractvalue %dx.types.CBufRet.f32 %7521, 1
  %7539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7540 = extractvalue %dx.types.CBufRet.f32 %7539, 0
  %7541 = extractvalue %dx.types.CBufRet.f32 %7539, 1
  %7542 = extractvalue %dx.types.CBufRet.f32 %7539, 2
  %7543 = fadd fast float %7540, %563
  %7544 = fadd fast float %7541, %564
  %7545 = fadd fast float %7542, %565
  %7546 = fmul fast float %7543, %7528
  %7547 = call float @dx.op.tertiary.f32(i32 46, float %7529, float %7544, float %7546)  ; FMad(a,b,c)
  %7548 = call float @dx.op.tertiary.f32(i32 46, float %7530, float %7545, float %7547)  ; FMad(a,b,c)
  %7549 = fadd fast float %7548, %7531
  %7550 = fmul fast float %7543, %7533
  %7551 = call float @dx.op.tertiary.f32(i32 46, float %7534, float %7544, float %7550)  ; FMad(a,b,c)
  %7552 = call float @dx.op.tertiary.f32(i32 46, float %7535, float %7545, float %7551)  ; FMad(a,b,c)
  %7553 = fadd fast float %7552, %7536
  %7554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %60, float %7549, float %7553, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7555 = extractvalue %dx.types.ResRet.f32 %7554, 0
  %7556 = fmul fast float %7555, %7538
  %7557 = fadd fast float %7556, %7537
  %7558 = call float @dx.op.unary.f32(i32 7, float %7557)  ; Saturate(value)
  %7559 = fmul fast float %7558, %7522
  %7560 = fsub fast float 1.000000e+00, %7559
  br label %7561

; <label>:7561                                    ; preds = %7526, %7524
  %7562 = phi float [ %7560, %7526 ], [ 1.000000e+00, %7524 ]
  %7563 = fmul fast float %7562, %7520
  br label %7564

; <label>:7564                                    ; preds = %7561, %7510, %6250
  %7565 = phi float [ 1.000000e+00, %6250 ], [ %7563, %7561 ], [ %7520, %7510 ]
  %7566 = call float @dx.op.binary.f32(i32 36, float %7565, float %7565)  ; FMin(a,b)
  %7567 = call float @dx.op.binary.f32(i32 36, float %7565, float %7566)  ; FMin(a,b)
  %7568 = fcmp fast ogt float %7567, 0.000000e+00
  br i1 %7568, label %7569, label %7734, !dx.controlflow.hints !159

; <label>:7569                                    ; preds = %7564
  %7570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7571 = extractvalue %dx.types.CBufRet.f32 %7570, 0
  %7572 = extractvalue %dx.types.CBufRet.f32 %7570, 1
  %7573 = extractvalue %dx.types.CBufRet.f32 %7570, 2
  %7574 = extractvalue %dx.types.CBufRet.f32 %7570, 3
  %7575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7575, 0
  %7577 = extractvalue %dx.types.CBufRet.f32 %7575, 1
  %7578 = extractvalue %dx.types.CBufRet.f32 %7575, 2
  %7579 = extractvalue %dx.types.CBufRet.f32 %7575, 3
  %7580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7581 = extractvalue %dx.types.CBufRet.f32 %7580, 0
  %7582 = extractvalue %dx.types.CBufRet.f32 %7580, 1
  %7583 = extractvalue %dx.types.CBufRet.f32 %7580, 2
  %7584 = extractvalue %dx.types.CBufRet.f32 %7580, 3
  %7585 = fmul fast float %7571, %563
  %7586 = call float @dx.op.tertiary.f32(i32 46, float %564, float %7572, float %7585)  ; FMad(a,b,c)
  %7587 = call float @dx.op.tertiary.f32(i32 46, float %565, float %7573, float %7586)  ; FMad(a,b,c)
  %7588 = fadd fast float %7587, %7574
  %7589 = fmul fast float %7576, %563
  %7590 = call float @dx.op.tertiary.f32(i32 46, float %564, float %7577, float %7589)  ; FMad(a,b,c)
  %7591 = call float @dx.op.tertiary.f32(i32 46, float %565, float %7578, float %7590)  ; FMad(a,b,c)
  %7592 = fadd fast float %7591, %7579
  %7593 = fmul fast float %7581, %563
  %7594 = call float @dx.op.tertiary.f32(i32 46, float %564, float %7582, float %7593)  ; FMad(a,b,c)
  %7595 = call float @dx.op.tertiary.f32(i32 46, float %565, float %7583, float %7594)  ; FMad(a,b,c)
  %7596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7597 = extractvalue %dx.types.CBufRet.f32 %7596, 0
  %7598 = extractvalue %dx.types.CBufRet.f32 %7596, 1
  %7599 = extractvalue %dx.types.CBufRet.f32 %7596, 3
  %7600 = fmul fast float %7599, %7588
  %7601 = fmul fast float %7599, %7592
  %7602 = fadd fast float %7600, %7597
  %7603 = fadd fast float %7601, %7598
  %7604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7605 = extractvalue %dx.types.CBufRet.f32 %7604, 0
  %7606 = extractvalue %dx.types.CBufRet.f32 %7604, 1
  %7607 = fsub fast float %7602, %7605
  %7608 = fsub fast float %7603, %7606
  %7609 = fcmp fast olt float %7607, 0.000000e+00
  %7610 = fcmp fast olt float %7608, 0.000000e+00
  %7611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7612 = extractvalue %dx.types.CBufRet.f32 %7611, 0
  %7613 = extractvalue %dx.types.CBufRet.f32 %7611, 1
  %7614 = extractvalue %dx.types.CBufRet.f32 %7611, 2
  %7615 = extractvalue %dx.types.CBufRet.f32 %7611, 3
  %7616 = select i1 %7609, float %7612, float %7614
  %7617 = select i1 %7610, float %7613, float %7615
  %7618 = fmul fast float %7616, %7607
  %7619 = fmul fast float %7617, %7608
  %7620 = call float @dx.op.unary.f32(i32 6, float %7618)  ; FAbs(value)
  %7621 = call float @dx.op.unary.f32(i32 6, float %7619)  ; FAbs(value)
  %7622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7623 = extractvalue %dx.types.CBufRet.f32 %7622, 0
  %7624 = call float @dx.op.binary.f32(i32 35, float %7620, float %7621)  ; FMax(a,b)
  %7625 = fsub fast float %7623, %7624
  %7626 = call float @dx.op.unary.f32(i32 7, float %7625)  ; Saturate(value)
  %7627 = fcmp fast ogt float %7626, 0.000000e+00
  br i1 %7627, label %7628, label %7669, !dx.controlflow.hints !160

; <label>:7628                                    ; preds = %7569
  %7629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %63, float %7602, float %7603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7630 = extractvalue %dx.types.ResRet.f32 %7629, 1
  %7631 = fcmp fast ogt float %7630, 0.000000e+00
  br i1 %7631, label %7632, label %7664

; <label>:7632                                    ; preds = %7628
  %7633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %63, float %7602, float %7603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7634 = extractvalue %dx.types.ResRet.f32 %7633, 0
  %7635 = extractvalue %dx.types.ResRet.f32 %7633, 1
  %7636 = extractvalue %dx.types.ResRet.f32 %7633, 2
  %7637 = extractvalue %dx.types.ResRet.f32 %7633, 3
  %7638 = fsub fast float 1.000000e+00, %7584
  %7639 = fsub fast float %7638, %7595
  %7640 = fmul fast float %7639, 0x400921FB60000000
  %7641 = fadd fast float %7640, 0x3FF921FB60000000
  %7642 = call float @dx.op.unary.f32(i32 13, float %7641)  ; Sin(value)
  %7643 = fadd fast float %7642, -1.000000e+00
  %7644 = fmul fast float %7643, 0x3FD45F3060000000
  %7645 = fmul fast float %7639, 0x401921FB60000000
  %7646 = fadd fast float %7645, 0x400921FB60000000
  %7647 = call float @dx.op.unary.f32(i32 13, float %7646)  ; Sin(value)
  %7648 = fadd fast float %7647, 0x3E7777A5C0000000
  %7649 = fmul fast float %7648, 0x3FC45F3060000000
  %7650 = fmul fast float %7639, 0x4022D97C80000000
  %7651 = fadd fast float %7650, 0x4012D97C80000000
  %7652 = call float @dx.op.unary.f32(i32 13, float %7651)  ; Sin(value)
  %7653 = fadd fast float %7652, 1.000000e+00
  %7654 = fmul fast float %7653, 0x3FBB2995E0000000
  %7655 = fmul fast float %7639, 0x402921FB60000000
  %7656 = fadd fast float %7655, 0x401921FB60000000
  %7657 = call float @dx.op.unary.f32(i32 13, float %7656)  ; Sin(value)
  %7658 = fadd fast float %7657, 0xBE8777A5C0000000
  %7659 = fmul fast float %7658, 0x3FB45F3060000000
  %7660 = call float @dx.op.dot4.f32(i32 56, float %7634, float %7635, float %7636, float %7637, float %7644, float %7649, float %7654, float %7659)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7661 = fmul fast float %7660, 0xBFF7154760000000
  %7662 = call float @dx.op.unary.f32(i32 21, float %7661)  ; Exp(value)
  %7663 = call float @dx.op.unary.f32(i32 7, float %7662)  ; Saturate(value)
  br label %7664

; <label>:7664                                    ; preds = %7632, %7628
  %7665 = phi float [ %7663, %7632 ], [ 1.000000e+00, %7628 ]
  %7666 = fadd fast float %7665, -1.000000e+00
  %7667 = fmul fast float %7666, %7626
  %7668 = fadd fast float %7667, 1.000000e+00
  br label %7669

; <label>:7669                                    ; preds = %7664, %7569
  %7670 = phi float [ %7668, %7664 ], [ 1.000000e+00, %7569 ]
  %7671 = fmul fast float %7670, %7565
  %7672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7673 = extractvalue %dx.types.CBufRet.f32 %7672, 0
  %7674 = extractvalue %dx.types.CBufRet.f32 %7672, 1
  %7675 = extractvalue %dx.types.CBufRet.f32 %7672, 2
  %7676 = fadd fast float %7673, %563
  %7677 = fadd fast float %7674, %564
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7681 = extractvalue %dx.types.CBufRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.CBufRet.f32 %7680, 1
  %7683 = extractvalue %dx.types.CBufRet.f32 %7680, 2
  %7684 = fsub fast float -0.000000e+00, %7676
  %7685 = fsub fast float -0.000000e+00, %7677
  %7686 = fsub fast float %3155, %7675
  %7687 = fadd fast float %7686, %7679
  %7688 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7684, float %7685, float %7687)  ; Dot3(ax,ay,az,bx,by,bz)
  %7689 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7681, float %7682, float %7683)  ; Dot3(ax,ay,az,bx,by,bz)
  %7690 = fdiv fast float 1.000000e+00, %7689
  %7691 = fmul fast float %7690, %7688
  %7692 = fmul fast float %7681, %7691
  %7693 = fmul fast float %7682, %7691
  %7694 = fadd fast float %7692, %7676
  %7695 = fadd fast float %7693, %7677
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7699 = fsub fast float %7694, %7697
  %7700 = fsub fast float %7695, %7698
  %7701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7701, 2
  %7703 = extractvalue %dx.types.CBufRet.f32 %7701, 3
  %7704 = fmul fast float %7699, %7702
  %7705 = fmul fast float %7700, %7703
  %7706 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7707 = extractvalue %dx.types.CBufRet.i32 %7706, 3
  %7708 = icmp eq i32 %7707, 0
  br i1 %7708, label %7714, label %7709

; <label>:7709                                    ; preds = %7669
  %7710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %62, float %7704, float %7705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7711 = extractvalue %dx.types.ResRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.ResRet.f32 %7710, 1
  %7713 = extractvalue %dx.types.ResRet.f32 %7710, 2
  br label %7719

; <label>:7714                                    ; preds = %7669
  %7715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %63, float %7704, float %7705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.ResRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.ResRet.f32 %7715, 2
  br label %7719

; <label>:7719                                    ; preds = %7714, %7709
  %7720 = phi float [ %7711, %7709 ], [ %7716, %7714 ]
  %7721 = phi float [ %7712, %7709 ], [ %7717, %7714 ]
  %7722 = phi float [ %7713, %7709 ], [ %7718, %7714 ]
  %7723 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7724 = fmul fast float %7723, %7720
  %7725 = extractvalue %dx.types.CBufRet.f32 %7678, 0
  %7726 = fsub fast float %7691, %7725
  %7727 = fsub fast float %7726, %7724
  %7728 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7727)  ; FMax(a,b)
  %7729 = fmul fast float %7728, %7721
  %7730 = call float @dx.op.binary.f32(i32 36, float %7722, float %7729)  ; FMin(a,b)
  %7731 = fmul fast float %7730, 0xBFF7154760000000
  %7732 = call float @dx.op.unary.f32(i32 21, float %7731)  ; Exp(value)
  %7733 = fmul fast float %7671, %7732
  br label %7734

; <label>:7734                                    ; preds = %7719, %7564
  %7735 = phi float [ %7733, %7719 ], [ %7565, %7564 ]
  %7736 = call float @dx.op.binary.f32(i32 36, float %7735, float %7735)  ; FMin(a,b)
  %7737 = call float @dx.op.binary.f32(i32 36, float %7735, float %7736)  ; FMin(a,b)
  %7738 = fcmp fast ogt float %7737, 0.000000e+00
  br i1 %7738, label %7739, label %7925, !dx.controlflow.hints !161

; <label>:7739                                    ; preds = %7734
  %7740 = fmul fast float %7735, %6099
  %7741 = fmul fast float %7735, %6100
  %7742 = fmul fast float %7735, %6101
  %7743 = fsub fast float %6088, %2948
  %7744 = fsub fast float %6089, %2949
  %7745 = fsub fast float %6090, %2950
  %7746 = call float @dx.op.dot3.f32(i32 55, float %7743, float %7744, float %7745, float %7743, float %7744, float %7745)  ; Dot3(ax,ay,az,bx,by,bz)
  %7747 = call float @dx.op.unary.f32(i32 25, float %7746)  ; Rsqrt(value)
  %7748 = fmul fast float %7747, %7743
  %7749 = fmul fast float %7747, %7744
  %7750 = fmul fast float %7747, %7745
  %7751 = call float @dx.op.dot3.f32(i32 55, float %6088, float %6089, float %6090, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %7752 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %7748, float %7749, float %7750)  ; Dot3(ax,ay,az,bx,by,bz)
  %7753 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7754 = fmul fast float %7753, %7753
  %7755 = fmul fast float %7754, %3192
  %7756 = call float @dx.op.unary.f32(i32 7, float %7755)  ; Saturate(value)
  %7757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7758 = extractvalue %dx.types.CBufRet.f32 %7757, 0
  %7759 = bitcast float %7758 to i32
  %7760 = lshr i32 %7759, 8
  %7761 = and i32 %7760, 255
  %7762 = uitofp i32 %7761 to float
  %7763 = fptoui float %7762 to i32
  %7764 = and i32 %7763, 8
  %7765 = icmp ne i32 %7764, 0
  %7766 = select i1 %7765, float %7756, float 1.000000e+00
  %7767 = fmul fast float %7766, %7753
  %7768 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2922, float %7748, float %7749, float %7750)  ; Dot3(ax,ay,az,bx,by,bz)
  %7769 = fmul fast float %7768, %7768
  %7770 = call float @dx.op.unary.f32(i32 6, float %7751)  ; FAbs(value)
  %7771 = fsub fast float 1.000000e+00, %3183
  %7772 = fmul fast float %3005, %3005
  %7773 = fmul fast float %7772, %7771
  %7774 = fadd fast float %7773, %3183
  %7775 = bitcast float %7774 to i32
  %7776 = ashr i32 %7775, 1
  %7777 = add nsw i32 %7776, 532487669
  %7778 = bitcast i32 %7777 to float
  %7779 = fadd fast float %7778, %3005
  %7780 = fmul fast float %3183, %7769
  %7781 = fsub fast float 1.000000e+00, %7769
  %7782 = fadd fast float %7781, %7780
  %7783 = fmul fast float %7770, %7770
  %7784 = fmul fast float %7783, %7771
  %7785 = fadd fast float %7784, %3183
  %7786 = bitcast float %7785 to i32
  %7787 = ashr i32 %7786, 1
  %7788 = add nsw i32 %7787, 532487669
  %7789 = bitcast i32 %7788 to float
  %7790 = fadd fast float %7789, %7770
  %7791 = fmul fast float %7782, %7782
  %7792 = fmul fast float %7791, %7779
  %7793 = fmul fast float %7792, %7790
  %7794 = fdiv fast float 0x3FF0A00000000000, %7793
  %7795 = fmul fast float %7794, %3183
  %7796 = call float @dx.op.unary.f32(i32 6, float %7752)  ; FAbs(value)
  %7797 = fsub fast float 1.000000e+00, %7796
  %7798 = bitcast float %7797 to i32
  %7799 = sitofp i32 %7798 to float
  %7800 = fmul fast float %7799, 5.000000e+00
  %7801 = fadd fast float %7800, 0xC1EFBF8940000000
  %7802 = fptosi float %7801 to i32
  %7803 = bitcast i32 %7802 to float
  %7804 = fmul fast float %7803, %3006
  %7805 = fmul fast float %7803, %3007
  %7806 = fmul fast float %7803, %4257
  %7807 = fadd fast float %7804, %2941
  %7808 = fadd fast float %7805, %2942
  %7809 = fadd fast float %7806, %3156
  %7810 = select i1 %4260, float %7796, float 0.000000e+00
  %7811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %7810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7812 = extractvalue %dx.types.ResRet.f32 %7811, 0
  %7813 = extractvalue %dx.types.ResRet.f32 %7811, 1
  %7814 = extractvalue %dx.types.ResRet.f32 %7811, 2
  %7815 = fadd fast float %7812, -5.000000e-01
  %7816 = fadd fast float %7813, -5.000000e-01
  %7817 = fadd fast float %7814, -5.000000e-01
  %7818 = fmul fast float %3035, %7815
  %7819 = fmul fast float %3039, %7816
  %7820 = fmul fast float %4273, %7817
  %7821 = fadd fast float %7807, %7818
  %7822 = fadd fast float %7808, %7819
  %7823 = fadd fast float %7809, %7820
  %7824 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  %7825 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7826 = call float @dx.op.unary.f32(i32 7, float %7823)  ; Saturate(value)
  %7827 = fmul fast float %7751, 9.843750e-01
  %7828 = fmul fast float %3100, 9.843750e-01
  %7829 = fadd fast float %7827, 7.812500e-03
  %7830 = fadd fast float %7828, 7.812500e-03
  %7831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %63, float %7829, float %7830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7832 = extractvalue %dx.types.ResRet.f32 %7831, 2
  %7833 = extractvalue %dx.types.ResRet.f32 %7831, 3
  %7834 = select i1 %4260, float %7751, float 0.000000e+00
  %7835 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %7834, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7836 = extractvalue %dx.types.ResRet.f32 %7835, 0
  %7837 = extractvalue %dx.types.ResRet.f32 %7835, 1
  %7838 = extractvalue %dx.types.ResRet.f32 %7835, 2
  %7839 = fadd fast float %7836, -5.000000e-01
  %7840 = fadd fast float %7837, -5.000000e-01
  %7841 = fadd fast float %7838, -5.000000e-01
  %7842 = fmul fast float %3006, 4.000000e+00
  %7843 = fmul fast float %7842, %3018
  %7844 = fmul fast float %7843, %7839
  %7845 = fmul fast float %3007, 4.000000e+00
  %7846 = fmul fast float %7845, %3018
  %7847 = fmul fast float %7846, %7840
  %7848 = fmul fast float %4257, 4.000000e+00
  %7849 = fmul fast float %7848, %3018
  %7850 = fmul fast float %7849, %7841
  %7851 = fadd fast float %7844, %7832
  %7852 = fmul fast float %7851, %2941
  %7853 = fadd fast float %7852, %7833
  %7854 = fadd fast float %7847, %7832
  %7855 = fmul fast float %7854, %2942
  %7856 = fadd fast float %7855, %7833
  %7857 = fadd fast float %7850, %7832
  %7858 = fmul fast float %7857, %3156
  %7859 = fadd fast float %7858, %7833
  %7860 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7861 = call float @dx.op.unary.f32(i32 7, float %7856)  ; Saturate(value)
  %7862 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7863 = call float @dx.op.binary.f32(i32 35, float %7861, float %7862)  ; FMax(a,b)
  %7864 = call float @dx.op.binary.f32(i32 35, float %7860, float %7863)  ; FMax(a,b)
  %7865 = fsub fast float 1.000000e+00, %7864
  %7866 = fsub fast float -0.000000e+00, %2920
  %7867 = fsub fast float -0.000000e+00, %2921
  %7868 = fsub fast float -0.000000e+00, %2922
  %7869 = call float @dx.op.dot3.f32(i32 55, float %6088, float %6089, float %6090, float %7866, float %7867, float %7868)  ; Dot3(ax,ay,az,bx,by,bz)
  %7870 = call float @dx.op.unary.f32(i32 7, float %7869)  ; Saturate(value)
  %7871 = fmul fast float %7870, 9.843750e-01
  %7872 = fadd fast float %7871, 7.812500e-03
  %7873 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %63, float %7872, float %7830, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7874 = extractvalue %dx.types.ResRet.f32 %7873, 2
  %7875 = extractvalue %dx.types.ResRet.f32 %7873, 3
  %7876 = select i1 %4260, float %7870, float 0.000000e+00
  %7877 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %7876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7878 = extractvalue %dx.types.ResRet.f32 %7877, 0
  %7879 = extractvalue %dx.types.ResRet.f32 %7877, 1
  %7880 = extractvalue %dx.types.ResRet.f32 %7877, 2
  %7881 = fadd fast float %7878, -5.000000e-01
  %7882 = fadd fast float %7879, -5.000000e-01
  %7883 = fadd fast float %7880, -5.000000e-01
  %7884 = fmul fast float %7843, %7881
  %7885 = fmul fast float %7846, %7882
  %7886 = fmul fast float %7849, %7883
  %7887 = fadd fast float %7884, %7874
  %7888 = fmul fast float %7887, %2941
  %7889 = fadd fast float %7888, %7875
  %7890 = fadd fast float %7885, %7874
  %7891 = fmul fast float %7890, %2942
  %7892 = fadd fast float %7891, %7875
  %7893 = fadd fast float %7886, %7874
  %7894 = fmul fast float %7893, %3156
  %7895 = fadd fast float %7894, %7875
  %7896 = call float @dx.op.unary.f32(i32 7, float %7889)  ; Saturate(value)
  %7897 = call float @dx.op.unary.f32(i32 7, float %7892)  ; Saturate(value)
  %7898 = call float @dx.op.unary.f32(i32 7, float %7895)  ; Saturate(value)
  %7899 = call float @dx.op.binary.f32(i32 35, float %7897, float %7898)  ; FMax(a,b)
  %7900 = call float @dx.op.binary.f32(i32 35, float %7896, float %7899)  ; FMax(a,b)
  %7901 = fsub fast float 1.000000e+00, %7900
  %7902 = fmul fast float %7901, %7870
  %7903 = fmul fast float %7902, %3103
  %7904 = fmul fast float %7865, %7767
  %7905 = fmul fast float %7767, %7795
  %7906 = fmul fast float %7905, %7824
  %7907 = fmul fast float %7905, %7825
  %7908 = fmul fast float %7905, %7826
  %7909 = fadd fast float %7903, %7904
  %7910 = fmul fast float %7909, %7740
  %7911 = fmul fast float %7909, %7741
  %7912 = fmul fast float %7909, %7742
  %7913 = fadd fast float %7910, %6075
  %7914 = fadd fast float %7911, %6076
  %7915 = fadd fast float %7912, %6077
  %7916 = fmul fast float %7906, %7740
  %7917 = fmul fast float %7907, %7741
  %7918 = fmul fast float %7908, %7742
  %7919 = fadd fast float %7916, %6081
  %7920 = fadd fast float %7917, %6082
  %7921 = fadd fast float %7918, %6083
  %7922 = fadd fast float %7916, %6078
  %7923 = fadd fast float %7917, %6079
  %7924 = fadd fast float %7918, %6080
  br label %7925

; <label>:7925                                    ; preds = %7739, %7734, %6068
  %7926 = phi i32 [ %6251, %7739 ], [ %6070, %6068 ], [ %6251, %7734 ]
  %7927 = phi i32 [ 1, %7739 ], [ 0, %6068 ], [ 0, %7734 ]
  %7928 = phi float [ %7916, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7929 = phi float [ %7917, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7930 = phi float [ %7918, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7931 = phi float [ %7910, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7932 = phi float [ %7911, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7933 = phi float [ %7912, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7934 = phi float [ %7922, %7739 ], [ %6078, %6068 ], [ %6078, %7734 ]
  %7935 = phi float [ %7923, %7739 ], [ %6079, %6068 ], [ %6079, %7734 ]
  %7936 = phi float [ %7924, %7739 ], [ %6080, %6068 ], [ %6080, %7734 ]
  %7937 = phi float [ %7913, %7739 ], [ %6075, %6068 ], [ %6075, %7734 ]
  %7938 = phi float [ %7914, %7739 ], [ %6076, %6068 ], [ %6076, %7734 ]
  %7939 = phi float [ %7915, %7739 ], [ %6077, %6068 ], [ %6077, %7734 ]
  %7940 = phi float [ %7735, %7739 ], [ 0.000000e+00, %6068 ], [ 0.000000e+00, %7734 ]
  %7941 = phi float [ %7919, %7739 ], [ %6081, %6068 ], [ %6081, %7734 ]
  %7942 = phi float [ %7920, %7739 ], [ %6082, %6068 ], [ %6082, %7734 ]
  %7943 = phi float [ %7921, %7739 ], [ %6083, %6068 ], [ %6083, %7734 ]
  %7944 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7945 = extractvalue %dx.types.CBufRet.i32 %7944, 0
  %7946 = icmp eq i32 %7945, 0
  br i1 %7946, label %8886, label %7947

; <label>:7947                                    ; preds = %7925
  %7948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7949 = extractvalue %dx.types.CBufRet.f32 %7948, 2
  %7950 = extractvalue %dx.types.CBufRet.f32 %7948, 3
  %7951 = fmul fast float %7949, %91
  %7952 = fmul fast float %7950, %92
  %7953 = fptoui float %7951 to i32
  %7954 = fptoui float %7952 to i32
  %7955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7956 = extractvalue %dx.types.CBufRet.f32 %7955, 0
  %7957 = extractvalue %dx.types.CBufRet.f32 %7955, 2
  %7958 = extractvalue %dx.types.CBufRet.f32 %7955, 3
  %7959 = fadd fast float %524, -4.000000e+00
  %7960 = call float @dx.op.binary.f32(i32 35, float %7959, float 0.000000e+00)  ; FMax(a,b)
  %7961 = fadd fast float %7960, %7956
  %7962 = fmul fast float %7961, %7957
  %7963 = call float @dx.op.unary.f32(i32 23, float %7962)  ; Log(value)
  %7964 = fmul fast float %7963, %7958
  %7965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7966 = extractvalue %dx.types.CBufRet.f32 %7965, 2
  %7967 = fmul fast float %7964, %7966
  %7968 = call float @dx.op.unary.f32(i32 7, float %7967)  ; Saturate(value)
  %7969 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.i32 %7969, 1
  %7971 = add i32 %7970, -1
  %7972 = uitofp i32 %7970 to float
  %7973 = fmul fast float %7972, %7968
  %7974 = fptoui float %7973 to i32
  %7975 = call i32 @dx.op.binary.i32(i32 40, i32 %7974, i32 %7971)  ; UMin(a,b)
  %7976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7977 = extractvalue %dx.types.CBufRet.i32 %7976, 2
  %7978 = extractvalue %dx.types.CBufRet.i32 %7976, 3
  %7979 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7954, i32 %7977, i32 %7953)  ; UMad(a,b,c)
  %7980 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7975, i32 %7978, i32 %7979)  ; UMad(a,b,c)
  %7981 = add nsw i32 %7945, -1
  %7982 = call i32 @dx.op.binary.i32(i32 37, i32 %7981, i32 0)  ; IMax(a,b)
  %7983 = call float @dx.op.binary.f32(i32 35, float %524, float 0.000000e+00)  ; FMax(a,b)
  %7984 = fptoui float %7983 to i32
  %7985 = lshr i32 %7984, 5
  %7986 = call i32 @dx.op.binary.i32(i32 40, i32 %7985, i32 8191)  ; UMin(a,b)
  %7987 = shl i32 %7986, 2
  %7988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7987, i32 undef)  ; BufferLoad(srv,index,wot)
  %7989 = extractvalue %dx.types.ResRet.i32 %7988, 0
  %7990 = lshr i32 %7989, 16
  %7991 = and i32 %7989, 65535
  %7992 = lshr i32 %7989, 21
  %7993 = lshr i32 %7991, 5
  %7994 = call i32 @dx.op.binary.i32(i32 40, i32 %7993, i32 %7982)  ; UMin(a,b)
  %7995 = icmp ugt i32 %7992, %7994
  br i1 %7995, label %8819, label %7996

; <label>:7996                                    ; preds = %7947
  br label %7997

; <label>:7997                                    ; preds = %8788, %7996
  %7998 = phi i32 [ %8789, %8788 ], [ %7926, %7996 ]
  %7999 = phi i32 [ %8790, %8788 ], [ 0, %7996 ]
  %8000 = phi i32 [ %8791, %8788 ], [ 0, %7996 ]
  %8001 = phi i32 [ %8792, %8788 ], [ 0, %7996 ]
  %8002 = phi i32 [ %8793, %8788 ], [ 0, %7996 ]
  %8003 = phi i32 [ %8794, %8788 ], [ 0, %7996 ]
  %8004 = phi i32 [ %8795, %8788 ], [ 0, %7996 ]
  %8005 = phi i32 [ %8796, %8788 ], [ 0, %7996 ]
  %8006 = phi i32 [ %8797, %8788 ], [ 0, %7996 ]
  %8007 = phi i32 [ %8816, %8788 ], [ %7992, %7996 ]
  %8008 = phi float [ %8798, %8788 ], [ %7928, %7996 ]
  %8009 = phi float [ %8799, %8788 ], [ %7929, %7996 ]
  %8010 = phi float [ %8800, %8788 ], [ %7930, %7996 ]
  %8011 = phi float [ %8801, %8788 ], [ %7931, %7996 ]
  %8012 = phi float [ %8802, %8788 ], [ %7932, %7996 ]
  %8013 = phi float [ %8803, %8788 ], [ %7933, %7996 ]
  %8014 = phi float [ %8804, %8788 ], [ %7934, %7996 ]
  %8015 = phi float [ %8805, %8788 ], [ %7935, %7996 ]
  %8016 = phi float [ %8806, %8788 ], [ %7936, %7996 ]
  %8017 = phi float [ %8807, %8788 ], [ %7937, %7996 ]
  %8018 = phi float [ %8808, %8788 ], [ %7938, %7996 ]
  %8019 = phi float [ %8809, %8788 ], [ %7939, %7996 ]
  %8020 = phi float [ %8810, %8788 ], [ %7941, %7996 ]
  %8021 = phi float [ %8811, %8788 ], [ %7942, %7996 ]
  %8022 = phi float [ %8812, %8788 ], [ %7943, %7996 ]
  %8023 = phi float [ %8813, %8788 ], [ %7937, %7996 ]
  %8024 = phi float [ %8814, %8788 ], [ %7938, %7996 ]
  %8025 = phi float [ %8815, %8788 ], [ %7939, %7996 ]
  %8026 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8027 = extractvalue %dx.types.CBufRet.i32 %8026, 0
  %8028 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7980, i32 %8027, i32 %8007)  ; UMad(a,b,c)
  %8029 = shl i32 %8028, 2
  %8030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %8029, i32 undef)  ; BufferLoad(srv,index,wot)
  %8031 = extractvalue %dx.types.ResRet.i32 %8030, 0
  %8032 = shl i32 %8007, 5
  %8033 = sub nsw i32 %7990, %8032
  %8034 = call i32 @dx.op.binary.i32(i32 37, i32 %8033, i32 0)  ; IMax(a,b)
  %8035 = call i32 @dx.op.binary.i32(i32 38, i32 %8034, i32 31)  ; IMin(a,b)
  %8036 = sub nsw i32 1, %7990
  %8037 = add nsw i32 %8036, %7991
  %8038 = call i32 @dx.op.binary.i32(i32 37, i32 %8037, i32 0)  ; IMax(a,b)
  %8039 = call i32 @dx.op.binary.i32(i32 38, i32 %8038, i32 32)  ; IMin(a,b)
  %8040 = and i32 %8039, 31
  %8041 = shl i32 -1, %8040
  %8042 = xor i32 %8041, -1
  %8043 = and i32 %8035, 31
  %8044 = shl i32 %8042, %8043
  %8045 = icmp eq i32 %8039, 32
  %8046 = select i1 %8045, i32 -1, i32 %8044
  %8047 = and i32 %8046, %8031
  %8048 = icmp eq i32 %8047, 0
  br i1 %8048, label %8788, label %8049

; <label>:8049                                    ; preds = %7997
  br label %8050

; <label>:8050                                    ; preds = %8244, %8049
  %8051 = phi i32 [ %8245, %8244 ], [ %7998, %8049 ]
  %8052 = phi i32 [ %8234, %8244 ], [ %7999, %8049 ]
  %8053 = phi i32 [ %8236, %8244 ], [ %8000, %8049 ]
  %8054 = phi i32 [ %8238, %8244 ], [ %8001, %8049 ]
  %8055 = phi i32 [ %8240, %8244 ], [ %8002, %8049 ]
  %8056 = phi i32 [ %8246, %8244 ], [ %8003, %8049 ]
  %8057 = phi i32 [ %8247, %8244 ], [ %8004, %8049 ]
  %8058 = phi i32 [ %8248, %8244 ], [ %8005, %8049 ]
  %8059 = phi i32 [ %8249, %8244 ], [ %8006, %8049 ]
  %8060 = phi i32 [ %8083, %8244 ], [ %8047, %8049 ]
  %8061 = phi float [ %8250, %8244 ], [ %8008, %8049 ]
  %8062 = phi float [ %8251, %8244 ], [ %8009, %8049 ]
  %8063 = phi float [ %8252, %8244 ], [ %8010, %8049 ]
  %8064 = phi float [ %8253, %8244 ], [ %8011, %8049 ]
  %8065 = phi float [ %8254, %8244 ], [ %8012, %8049 ]
  %8066 = phi float [ %8255, %8244 ], [ %8013, %8049 ]
  %8067 = phi float [ %8256, %8244 ], [ %8014, %8049 ]
  %8068 = phi float [ %8257, %8244 ], [ %8015, %8049 ]
  %8069 = phi float [ %8258, %8244 ], [ %8016, %8049 ]
  %8070 = phi float [ %8259, %8244 ], [ %8017, %8049 ]
  %8071 = phi float [ %8260, %8244 ], [ %8018, %8049 ]
  %8072 = phi float [ %8261, %8244 ], [ %8019, %8049 ]
  %8073 = phi float [ %8262, %8244 ], [ %8020, %8049 ]
  %8074 = phi float [ %8263, %8244 ], [ %8021, %8049 ]
  %8075 = phi float [ %8264, %8244 ], [ %8022, %8049 ]
  %8076 = phi float [ %8265, %8244 ], [ %8023, %8049 ]
  %8077 = phi float [ %8266, %8244 ], [ %8024, %8049 ]
  %8078 = phi float [ %8267, %8244 ], [ %8025, %8049 ]
  %8079 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8060)  ; FirstbitLo(value)
  %8080 = add i32 %8079, %8032
  %8081 = and i32 %8079, 31
  %8082 = shl i32 1, %8081
  %8083 = xor i32 %8082, %8060
  %8084 = mul i32 %8080, 112
  %8085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8084, i32 undef)  ; BufferLoad(srv,index,wot)
  %8086 = extractvalue %dx.types.ResRet.f32 %8085, 0
  %8087 = extractvalue %dx.types.ResRet.f32 %8085, 1
  %8088 = extractvalue %dx.types.ResRet.f32 %8085, 2
  %8089 = or i32 %8084, 12
  %8090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8089, i32 undef)  ; BufferLoad(srv,index,wot)
  %8091 = extractvalue %dx.types.ResRet.f32 %8090, 0
  %8092 = add i32 %8084, 16
  %8093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8092, i32 undef)  ; BufferLoad(srv,index,wot)
  %8094 = extractvalue %dx.types.ResRet.f32 %8093, 0
  %8095 = extractvalue %dx.types.ResRet.f32 %8093, 1
  %8096 = extractvalue %dx.types.ResRet.f32 %8093, 2
  %8097 = add i32 %8084, 28
  %8098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %8097, i32 undef)  ; BufferLoad(srv,index,wot)
  %8099 = extractvalue %dx.types.ResRet.i32 %8098, 0
  %8100 = add i32 %8084, 32
  %8101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8100, i32 undef)  ; BufferLoad(srv,index,wot)
  %8102 = extractvalue %dx.types.ResRet.f32 %8101, 0
  %8103 = extractvalue %dx.types.ResRet.f32 %8101, 1
  %8104 = extractvalue %dx.types.ResRet.f32 %8101, 2
  %8105 = add i32 %8084, 44
  %8106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8105, i32 undef)  ; BufferLoad(srv,index,wot)
  %8107 = extractvalue %dx.types.ResRet.f32 %8106, 0
  %8108 = add i32 %8084, 48
  %8109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8108, i32 undef)  ; BufferLoad(srv,index,wot)
  %8110 = extractvalue %dx.types.ResRet.f32 %8109, 0
  %8111 = extractvalue %dx.types.ResRet.f32 %8109, 1
  %8112 = extractvalue %dx.types.ResRet.f32 %8109, 2
  %8113 = extractvalue %dx.types.ResRet.f32 %8109, 3
  %8114 = add i32 %8084, 64
  %8115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8114, i32 undef)  ; BufferLoad(srv,index,wot)
  %8116 = extractvalue %dx.types.ResRet.f32 %8115, 0
  %8117 = extractvalue %dx.types.ResRet.f32 %8115, 1
  %8118 = extractvalue %dx.types.ResRet.f32 %8115, 2
  %8119 = extractvalue %dx.types.ResRet.f32 %8115, 3
  %8120 = add i32 %8084, 80
  %8121 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8120, i32 undef)  ; BufferLoad(srv,index,wot)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 1
  %8123 = extractvalue %dx.types.ResRet.f32 %8121, 2
  %8124 = add i32 %8084, 92
  %8125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %8124, i32 undef)  ; BufferLoad(srv,index,wot)
  %8126 = extractvalue %dx.types.ResRet.i32 %8125, 0
  %8127 = call float @dx.op.dot3.f32(i32 55, float %8086, float %8087, float %8088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8128 = select i1 %3154, float %8122, float %8086
  %8129 = select i1 %3154, float %8127, float %8087
  %8130 = select i1 %3154, float %8123, float %8088
  %8131 = and i32 %8126, 65535
  %8132 = uitofp i32 %8131 to float
  %8133 = lshr i32 %8126, 16
  %8134 = uitofp i32 %8133 to float
  %8135 = and i32 %8099, 65535
  %8136 = lshr i32 %8099, 24
  %8137 = and i32 %8136, 3
  %8138 = and i32 %8099, 536870912
  %8139 = icmp ne i32 %8138, 0
  %8140 = icmp eq i32 %8137, 2
  %8141 = call float @dx.op.dot3.f32(i32 55, float %8102, float %8103, float %8104, float %8102, float %8103, float %8104)  ; Dot3(ax,ay,az,bx,by,bz)
  %8142 = fsub fast float %563, %8110
  %8143 = fsub fast float %564, %8111
  %8144 = fsub fast float %565, %8112
  %8145 = call float @dx.op.dot3.f32(i32 55, float %8142, float %8143, float %8144, float %8102, float %8103, float %8104)  ; Dot3(ax,ay,az,bx,by,bz)
  %8146 = fdiv fast float %8145, %8141
  %8147 = call float @dx.op.binary.f32(i32 35, float %8146, float -1.000000e+00)  ; FMax(a,b)
  %8148 = call float @dx.op.binary.f32(i32 36, float %8147, float 1.000000e+00)  ; FMin(a,b)
  %8149 = fmul fast float %8148, %8102
  %8150 = fmul fast float %8148, %8103
  %8151 = fmul fast float %8148, %8104
  %8152 = fadd fast float %8149, %8110
  %8153 = fadd fast float %8150, %8111
  %8154 = fadd fast float %8151, %8112
  %8155 = fsub fast float %8152, %563
  %8156 = fsub fast float %8153, %564
  %8157 = fsub fast float %8154, %565
  %8158 = call float @dx.op.dot3.f32(i32 55, float %8155, float %8156, float %8157, float %8155, float %8156, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8159 = call float @dx.op.unary.f32(i32 24, float %8158)  ; Sqrt(value)
  %8160 = fdiv fast float 1.000000e+00, %8159
  %8161 = fmul fast float %8155, %8160
  %8162 = fmul fast float %8156, %8160
  %8163 = fmul fast float %8157, %8160
  %8164 = fadd fast float %8159, %8091
  %8165 = fdiv fast float 1.000000e+00, %8164
  %8166 = fmul float %8107, %8165
  %8167 = fmul float %8166, %8166
  %8168 = call float @dx.op.unary.f32(i32 7, float %8167)  ; Saturate(value)
  br i1 %8140, label %8169, label %8193

; <label>:8169                                    ; preds = %8050
  %8170 = fmul fast float %8118, %8094
  %8171 = fmul fast float %8118, %8095
  %8172 = fmul fast float %8118, %8096
  %8173 = fsub fast float %8170, %563
  %8174 = fadd fast float %8173, %8152
  %8175 = fsub fast float %8171, %564
  %8176 = fadd fast float %8175, %8153
  %8177 = fsub fast float %8172, %565
  %8178 = fadd fast float %8177, %8154
  %8179 = call float @dx.op.dot3.f32(i32 55, float %8174, float %8176, float %8178, float %8174, float %8176, float %8178)  ; Dot3(ax,ay,az,bx,by,bz)
  %8180 = call float @dx.op.unary.f32(i32 25, float %8179)  ; Rsqrt(value)
  %8181 = fmul fast float %8180, %8174
  %8182 = fmul fast float %8180, %8176
  %8183 = fmul fast float %8180, %8178
  %8184 = fsub fast float %563, %8152
  %8185 = fsub fast float %564, %8153
  %8186 = fsub fast float %565, %8154
  %8187 = fsub fast float -0.000000e+00, %8184
  %8188 = fsub fast float -0.000000e+00, %8185
  %8189 = fsub fast float -0.000000e+00, %8186
  %8190 = call float @dx.op.dot3.f32(i32 55, float %8187, float %8188, float %8189, float %8094, float %8095, float %8096)  ; Dot3(ax,ay,az,bx,by,bz)
  %8191 = fcmp fast ogt float %8190, 0.000000e+00
  %8192 = uitofp i1 %8191 to float
  br label %8193

; <label>:8193                                    ; preds = %8169, %8050
  %8194 = phi float [ %8192, %8169 ], [ 1.000000e+00, %8050 ]
  %8195 = phi float [ %8181, %8169 ], [ %8161, %8050 ]
  %8196 = phi float [ %8182, %8169 ], [ %8162, %8050 ]
  %8197 = phi float [ %8183, %8169 ], [ %8163, %8050 ]
  %8198 = call float @dx.op.dot3.f32(i32 55, float %8094, float %8095, float %8096, float %8195, float %8196, float %8197)  ; Dot3(ax,ay,az,bx,by,bz)
  %8199 = fmul fast float %8198, %8198
  %8200 = call float @dx.op.unary.f32(i32 7, float %8199)  ; Saturate(value)
  %8201 = fsub fast float 1.000000e+00, %8200
  %8202 = fmul fast float %8201, 5.000000e-01
  %8203 = fcmp fast ogt float %8198, 0.000000e+00
  %8204 = fsub fast float 1.000000e+00, %8202
  %8205 = select i1 %8203, float %8202, float %8204
  %8206 = fmul fast float %8205, %8134
  %8207 = fadd fast float %8206, %8132
  %8208 = fmul fast float %8207, 0x3EF0001000000000
  %8209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %63, float %8208, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8210 = extractvalue %dx.types.ResRet.f32 %8209, 0
  %8211 = fmul fast float %8198, %8116
  %8212 = fadd fast float %8211, %8117
  %8213 = call float @dx.op.unary.f32(i32 7, float %8212)  ; Saturate(value)
  %8214 = select i1 %8140, float 1.000000e+00, float %8213
  %8215 = select i1 %8140, float %8213, float 1.000000e+00
  %8216 = fmul fast float %8159, %8113
  %8217 = fsub fast float 1.000000e+00, %8216
  %8218 = fmul fast float %8217, %8119
  %8219 = call float @dx.op.unary.f32(i32 7, float %8218)  ; Saturate(value)
  %8220 = fmul fast float %8219, %8215
  %8221 = fmul fast float %8220, 2.000000e+00
  %8222 = fsub fast float 3.000000e+00, %8221
  %8223 = fmul fast float %8210, %8194
  %8224 = fmul fast float %8220, %8220
  %8225 = fmul fast float %8224, %8223
  %8226 = fmul fast float %8225, %8222
  %8227 = xor i1 %8139, true
  %8228 = and i1 %8140, %8227
  %8229 = icmp ne i32 %8137, 2
  %8230 = and i1 %8229, %8227
  %8231 = and i1 %8139, %8140
  %8232 = and i1 %8139, %8229
  %8233 = zext i1 %8228 to i32
  %8234 = add i32 %8233, %8052
  %8235 = zext i1 %8230 to i32
  %8236 = add i32 %8235, %8053
  %8237 = zext i1 %8231 to i32
  %8238 = add i32 %8237, %8054
  %8239 = zext i1 %8232 to i32
  %8240 = add i32 %8239, %8055
  %8241 = call float @dx.op.binary.f32(i32 36, float %8226, float %8226)  ; FMin(a,b)
  %8242 = call float @dx.op.binary.f32(i32 36, float %8226, float %8241)  ; FMin(a,b)
  %8243 = fcmp fast ogt float %8242, 0.000000e+00
  br i1 %8243, label %8269, label %8244, !dx.controlflow.hints !162

; <label>:8244                                    ; preds = %8772, %8193
  %8245 = phi i32 [ %8782, %8772 ], [ %8051, %8193 ]
  %8246 = phi i32 [ %8783, %8772 ], [ %8056, %8193 ]
  %8247 = phi i32 [ %8784, %8772 ], [ %8057, %8193 ]
  %8248 = phi i32 [ %8785, %8772 ], [ %8058, %8193 ]
  %8249 = phi i32 [ %8786, %8772 ], [ %8059, %8193 ]
  %8250 = phi float [ %8743, %8772 ], [ %8061, %8193 ]
  %8251 = phi float [ %8744, %8772 ], [ %8062, %8193 ]
  %8252 = phi float [ %8745, %8772 ], [ %8063, %8193 ]
  %8253 = phi float [ %8746, %8772 ], [ %8064, %8193 ]
  %8254 = phi float [ %8747, %8772 ], [ %8065, %8193 ]
  %8255 = phi float [ %8748, %8772 ], [ %8066, %8193 ]
  %8256 = phi float [ %8749, %8772 ], [ %8067, %8193 ]
  %8257 = phi float [ %8750, %8772 ], [ %8068, %8193 ]
  %8258 = phi float [ %8751, %8772 ], [ %8069, %8193 ]
  %8259 = phi float [ %8752, %8772 ], [ %8070, %8193 ]
  %8260 = phi float [ %8753, %8772 ], [ %8071, %8193 ]
  %8261 = phi float [ %8754, %8772 ], [ %8072, %8193 ]
  %8262 = phi float [ %8755, %8772 ], [ %8073, %8193 ]
  %8263 = phi float [ %8756, %8772 ], [ %8074, %8193 ]
  %8264 = phi float [ %8757, %8772 ], [ %8075, %8193 ]
  %8265 = phi float [ %8758, %8772 ], [ %8076, %8193 ]
  %8266 = phi float [ %8759, %8772 ], [ %8077, %8193 ]
  %8267 = phi float [ %8760, %8772 ], [ %8078, %8193 ]
  %8268 = icmp eq i32 %8060, %8082
  br i1 %8268, label %8787, label %8050

; <label>:8269                                    ; preds = %8193
  %8270 = icmp eq i32 %8135, 255
  br i1 %8270, label %8408, label %8271, !dx.controlflow.hints !163

; <label>:8271                                    ; preds = %8269
  %8272 = mul nuw nsw i32 %8135, 176
  %8273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8272, i32 undef)  ; BufferLoad(srv,index,wot)
  %8274 = extractvalue %dx.types.ResRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.ResRet.f32 %8273, 1
  %8276 = extractvalue %dx.types.ResRet.f32 %8273, 2
  %8277 = extractvalue %dx.types.ResRet.f32 %8273, 3
  %8278 = add nuw nsw i32 %8272, 16
  %8279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8278, i32 undef)  ; BufferLoad(srv,index,wot)
  %8280 = extractvalue %dx.types.ResRet.f32 %8279, 0
  %8281 = extractvalue %dx.types.ResRet.f32 %8279, 1
  %8282 = add nuw nsw i32 %8272, 32
  %8283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8282, i32 undef)  ; BufferLoad(srv,index,wot)
  %8284 = extractvalue %dx.types.ResRet.f32 %8283, 0
  %8285 = extractvalue %dx.types.ResRet.f32 %8283, 1
  %8286 = add nuw nsw i32 %8272, 48
  %8287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8286, i32 undef)  ; BufferLoad(srv,index,wot)
  %8288 = extractvalue %dx.types.ResRet.f32 %8287, 0
  %8289 = extractvalue %dx.types.ResRet.f32 %8287, 1
  %8290 = extractvalue %dx.types.ResRet.f32 %8287, 2
  %8291 = extractvalue %dx.types.ResRet.f32 %8287, 3
  %8292 = add nuw nsw i32 %8272, 64
  %8293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8292, i32 undef)  ; BufferLoad(srv,index,wot)
  %8294 = extractvalue %dx.types.ResRet.f32 %8293, 0
  %8295 = extractvalue %dx.types.ResRet.f32 %8293, 1
  %8296 = extractvalue %dx.types.ResRet.f32 %8293, 2
  %8297 = extractvalue %dx.types.ResRet.f32 %8293, 3
  %8298 = add nuw nsw i32 %8272, 80
  %8299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8298, i32 undef)  ; BufferLoad(srv,index,wot)
  %8300 = extractvalue %dx.types.ResRet.f32 %8299, 0
  %8301 = extractvalue %dx.types.ResRet.f32 %8299, 1
  %8302 = extractvalue %dx.types.ResRet.f32 %8299, 2
  %8303 = extractvalue %dx.types.ResRet.f32 %8299, 3
  %8304 = add nuw nsw i32 %8272, 96
  %8305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %8304, i32 undef)  ; BufferLoad(srv,index,wot)
  %8306 = extractvalue %dx.types.ResRet.f32 %8305, 0
  %8307 = extractvalue %dx.types.ResRet.f32 %8305, 1
  %8308 = extractvalue %dx.types.ResRet.f32 %8305, 2
  %8309 = extractvalue %dx.types.ResRet.f32 %8305, 3
  %8310 = bitcast float %8281 to i32
  %8311 = fmul fast float %8288, %563
  %8312 = call float @dx.op.tertiary.f32(i32 46, float %564, float %8294, float %8311)  ; FMad(a,b,c)
  %8313 = call float @dx.op.tertiary.f32(i32 46, float %565, float %8300, float %8312)  ; FMad(a,b,c)
  %8314 = fadd fast float %8313, %8306
  %8315 = fmul fast float %8289, %563
  %8316 = call float @dx.op.tertiary.f32(i32 46, float %564, float %8295, float %8315)  ; FMad(a,b,c)
  %8317 = call float @dx.op.tertiary.f32(i32 46, float %565, float %8301, float %8316)  ; FMad(a,b,c)
  %8318 = fadd fast float %8317, %8307
  %8319 = fmul fast float %8290, %563
  %8320 = call float @dx.op.tertiary.f32(i32 46, float %564, float %8296, float %8319)  ; FMad(a,b,c)
  %8321 = call float @dx.op.tertiary.f32(i32 46, float %565, float %8302, float %8320)  ; FMad(a,b,c)
  %8322 = fadd fast float %8321, %8308
  %8323 = fmul fast float %8291, %563
  %8324 = call float @dx.op.tertiary.f32(i32 46, float %564, float %8297, float %8323)  ; FMad(a,b,c)
  %8325 = call float @dx.op.tertiary.f32(i32 46, float %565, float %8303, float %8324)  ; FMad(a,b,c)
  %8326 = fadd fast float %8325, %8309
  %8327 = fdiv fast float %8314, %8326
  %8328 = fdiv fast float %8318, %8326
  %8329 = fdiv fast float %8322, %8326
  %8330 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8329)  ; FMax(a,b)
  %8331 = fmul fast float %2394, 0x401921FB60000000
  %8332 = call float @dx.op.unary.f32(i32 13, float %8331)  ; Sin(value)
  %8333 = call float @dx.op.unary.f32(i32 12, float %8331)  ; Cos(value)
  %8334 = fmul fast float %8333, %8285
  %8335 = call float @dx.op.tertiary.f32(i32 46, float %8332, float %8285, float 0.000000e+00)  ; FMad(a,b,c)
  %8336 = fmul fast float %8285, %8332
  %8337 = fsub fast float -0.000000e+00, %8336
  %8338 = call float @dx.op.tertiary.f32(i32 46, float %8333, float %8285, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8339

; <label>:8339                                    ; preds = %8339, %8271
  %8340 = phi float [ 0.000000e+00, %8271 ], [ %8372, %8339 ]
  %8341 = phi float [ 0.000000e+00, %8271 ], [ %8374, %8339 ]
  %8342 = phi i32 [ 0, %8271 ], [ %8375, %8339 ]
  %8343 = mul i32 %8342, 2
  %8344 = add i32 0, %8343
  %8345 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8344
  %8346 = load float, float* %8345, align 4
  %8347 = mul i32 %8342, 2
  %8348 = add i32 1, %8347
  %8349 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8348
  %8350 = load float, float* %8349, align 4
  %8351 = fmul fast float %8334, %8346
  %8352 = call float @dx.op.tertiary.f32(i32 46, float %8350, float %8337, float %8351)  ; FMad(a,b,c)
  %8353 = fmul fast float %8346, %8335
  %8354 = call float @dx.op.tertiary.f32(i32 46, float %8350, float %8338, float %8353)  ; FMad(a,b,c)
  %8355 = fadd fast float %8352, %8327
  %8356 = fadd fast float %8354, %8328
  %8357 = fmul fast float %8355, %8280
  %8358 = fmul fast float %8356, %8280
  %8359 = call float @dx.op.binary.f32(i32 35, float %8357, float %8276)  ; FMax(a,b)
  %8360 = call float @dx.op.binary.f32(i32 35, float %8358, float %8276)  ; FMax(a,b)
  %8361 = call float @dx.op.binary.f32(i32 36, float %8359, float %8277)  ; FMin(a,b)
  %8362 = call float @dx.op.binary.f32(i32 36, float %8360, float %8277)  ; FMin(a,b)
  %8363 = fadd fast float %8361, %8274
  %8364 = fadd fast float %8362, %8275
  %8365 = uitofp i32 %8310 to float
  %8366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %8363, float %8364, float %8365, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8367 = extractvalue %dx.types.ResRet.f32 %8366, 0
  %8368 = fsub fast float %8367, %8330
  %8369 = fsub fast float %8368, %8284
  %8370 = fcmp fast ogt float %8369, 0.000000e+00
  %8371 = select i1 %8370, float 1.000000e+00, float 0.000000e+00
  %8372 = fadd fast float %8371, %8340
  %8373 = select i1 %8370, float %8369, float 0.000000e+00
  %8374 = fadd fast float %8373, %8341
  %8375 = add nuw nsw i32 %8342, 1
  %8376 = icmp eq i32 %8375, 8
  br i1 %8376, label %8377, label %8339

; <label>:8377                                    ; preds = %8339
  %8378 = fdiv fast float 1.000000e+00, %8372
  %8379 = fmul fast float %8378, %8374
  %8380 = fdiv fast float 1.000000e+00, %8330
  %8381 = fmul fast float %8379, %8380
  %8382 = call float @dx.op.unary.f32(i32 7, float %8381)  ; Saturate(value)
  %8383 = call float @dx.op.binary.f32(i32 35, float %8382, float 0.000000e+00)  ; FMax(a,b)
  %8384 = fmul fast float %8372, 1.250000e-01
  %8385 = call float @dx.op.unary.f32(i32 7, float %8384)  ; Saturate(value)
  %8386 = fmul fast float %8385, 2.000000e+00
  %8387 = fadd fast float %8386, -1.000000e+00
  %8388 = fcmp fast ogt float %8387, 0.000000e+00
  %8389 = fcmp fast olt float %8387, 0.000000e+00
  %8390 = zext i1 %8388 to i32
  %8391 = zext i1 %8389 to i32
  %8392 = sub nsw i32 %8390, %8391
  %8393 = sitofp i32 %8392 to float
  %8394 = fmul fast float %8393, %8387
  %8395 = fsub fast float 1.000000e+00, %8394
  %8396 = fmul fast float %8395, %8395
  %8397 = fmul fast float %8396, %8395
  %8398 = fsub fast float %8395, %8397
  %8399 = fmul fast float %8398, %8383
  %8400 = fsub fast float 1.000000e+00, %8397
  %8401 = fsub fast float %8400, %8399
  %8402 = fmul fast float %8393, 5.000000e-01
  %8403 = fmul fast float %8402, %8401
  %8404 = fsub fast float -5.000000e-01, %8403
  %8405 = fmul fast float %8404, %8214
  %8406 = fadd fast float %8405, 1.000000e+00
  %8407 = fmul fast float %8406, %8226
  br label %8408

; <label>:8408                                    ; preds = %8377, %8269
  %8409 = phi float [ %8407, %8377 ], [ %8226, %8269 ]
  %8410 = call float @dx.op.binary.f32(i32 36, float %8409, float %8409)  ; FMin(a,b)
  %8411 = call float @dx.op.binary.f32(i32 36, float %8409, float %8410)  ; FMin(a,b)
  %8412 = fcmp fast ogt float %8411, 0.000000e+00
  br i1 %8412, label %8413, label %8742, !dx.controlflow.hints !164

; <label>:8413                                    ; preds = %8408
  %8414 = fmul fast float %8409, %8128
  %8415 = fmul fast float %8409, %8129
  %8416 = fmul fast float %8409, %8130
  %8417 = fadd fast float %8161, %2920
  %8418 = fadd fast float %8162, %2921
  %8419 = fadd fast float %8163, %2922
  %8420 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8162, float %8163, float %8155, float %8156, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8421 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8162, float %8163, float %8417, float %8418, float %8419)  ; Dot3(ax,ay,az,bx,by,bz)
  %8422 = fdiv fast float 1.000000e+00, %8421
  %8423 = fmul fast float %8422, %8420
  %8424 = fmul fast float %8423, %8417
  %8425 = fmul fast float %8423, %8418
  %8426 = fmul fast float %8423, %8419
  %8427 = fadd fast float %8142, %8424
  %8428 = fadd fast float %8143, %8425
  %8429 = fadd fast float %8144, %8426
  %8430 = call float @dx.op.dot3.f32(i32 55, float %8427, float %8428, float %8429, float %8102, float %8103, float %8104)  ; Dot3(ax,ay,az,bx,by,bz)
  %8431 = fdiv fast float %8430, %8141
  %8432 = call float @dx.op.binary.f32(i32 35, float %8431, float -1.000000e+00)  ; FMax(a,b)
  %8433 = call float @dx.op.binary.f32(i32 36, float %8432, float 1.000000e+00)  ; FMin(a,b)
  %8434 = fmul fast float %8433, %8102
  %8435 = fmul fast float %8433, %8103
  %8436 = fmul fast float %8433, %8104
  %8437 = fsub fast float %8110, %563
  %8438 = fadd fast float %8437, %8434
  %8439 = fsub fast float %8111, %564
  %8440 = fadd fast float %8439, %8435
  %8441 = fsub fast float %8112, %565
  %8442 = fadd fast float %8441, %8436
  %8443 = call float @dx.op.dot3.f32(i32 55, float %8438, float %8440, float %8442, float %8438, float %8440, float %8442)  ; Dot3(ax,ay,az,bx,by,bz)
  %8444 = call float @dx.op.unary.f32(i32 25, float %8443)  ; Rsqrt(value)
  %8445 = fmul fast float %8438, %8444
  %8446 = fmul fast float %8440, %8444
  %8447 = fmul fast float %8442, %8444
  %8448 = fsub fast float %8445, %2948
  %8449 = fsub fast float %8446, %2949
  %8450 = fsub fast float %8447, %2950
  %8451 = call float @dx.op.dot3.f32(i32 55, float %8448, float %8449, float %8450, float %8448, float %8449, float %8450)  ; Dot3(ax,ay,az,bx,by,bz)
  %8452 = call float @dx.op.unary.f32(i32 25, float %8451)  ; Rsqrt(value)
  %8453 = fmul fast float %8448, %8452
  %8454 = fmul fast float %8449, %8452
  %8455 = fmul fast float %8450, %8452
  %8456 = call float @dx.op.dot3.f32(i32 55, float %8445, float %8446, float %8447, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %8457 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %8453, float %8454, float %8455)  ; Dot3(ax,ay,az,bx,by,bz)
  %8458 = fmul fast float %8444, %8107
  %8459 = fmul fast float %8458, %8458
  %8460 = bitcast float %8459 to i32
  %8461 = ashr i32 %8460, 1
  %8462 = sub nsw i32 1597463007, %8461
  %8463 = bitcast i32 %8462 to float
  %8464 = fmul fast float %8463, %8456
  %8465 = fmul fast float %8464, %8464
  %8466 = fsub fast float 1.000000e+00, %8465
  %8467 = fmul fast float %8456, %8459
  %8468 = call float @dx.op.unary.f32(i32 7, float %8467)  ; Saturate(value)
  %8469 = fmul fast float %8464, 5.000000e-01
  %8470 = fadd fast float %8469, 5.000000e-01
  %8471 = fmul fast float %8470, %8459
  %8472 = call float @dx.op.unary.f32(i32 7, float %8471)  ; Saturate(value)
  %8473 = bitcast float %8472 to i32
  %8474 = ashr i32 %8473, 1
  %8475 = add nsw i32 %8474, 532487669
  %8476 = bitcast i32 %8475 to float
  %8477 = fmul fast float %8476, %8472
  %8478 = fcmp fast ogt float %8466, 0.000000e+00
  %8479 = select i1 %8478, float %8477, float %8468
  %8480 = call float @dx.op.unary.f32(i32 7, float %8456)  ; Saturate(value)
  %8481 = fmul fast float %8480, %8480
  %8482 = fmul fast float %8481, %3192
  %8483 = call float @dx.op.unary.f32(i32 7, float %8482)  ; Saturate(value)
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 0
  %8486 = bitcast float %8485 to i32
  %8487 = lshr i32 %8486, 8
  %8488 = and i32 %8487, 255
  %8489 = uitofp i32 %8488 to float
  %8490 = fptoui float %8489 to i32
  %8491 = and i32 %8490, 8
  %8492 = icmp ne i32 %8491, 0
  %8493 = select i1 %8492, float %8483, float 1.000000e+00
  %8494 = fmul fast float %8493, %8479
  %8495 = call float @dx.op.dot3.f32(i32 55, float %8102, float %8103, float %8104, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %8496 = call float @dx.op.dot3.f32(i32 55, float %8102, float %8103, float %8104, float %8155, float %8156, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8497 = call float @dx.op.dot3.f32(i32 55, float %3161, float %3162, float %3163, float %8155, float %8156, float %8157)  ; Dot3(ax,ay,az,bx,by,bz)
  %8498 = fmul fast float %8495, %8495
  %8499 = fsub fast float %8141, %8498
  %8500 = fmul fast float %8497, %8495
  %8501 = fsub fast float %8500, %8496
  %8502 = fdiv fast float %8501, %8499
  %8503 = call float @dx.op.binary.f32(i32 35, float %8502, float -1.500000e+00)  ; FMax(a,b)
  %8504 = call float @dx.op.binary.f32(i32 36, float %8503, float 1.500000e+00)  ; FMin(a,b)
  %8505 = fmul fast float %8504, %8504
  %8506 = fmul fast float %8505, 0x3FC2F68380000000
  %8507 = fmul fast float %8506, %8504
  %8508 = fsub fast float %8504, %8507
  %8509 = fmul fast float %8508, %8102
  %8510 = fmul fast float %8508, %8103
  %8511 = fmul fast float %8508, %8104
  %8512 = fadd fast float %8509, %8152
  %8513 = fadd fast float %8510, %8153
  %8514 = fadd fast float %8511, %8154
  %8515 = fsub fast float %8512, %563
  %8516 = fsub fast float %8513, %564
  %8517 = fsub fast float %8514, %565
  %8518 = call float @dx.op.dot3.f32(i32 55, float %8515, float %8516, float %8517, float %3161, float %3162, float %3163)  ; Dot3(ax,ay,az,bx,by,bz)
  %8519 = fmul fast float %8518, %3161
  %8520 = fmul fast float %8518, %3162
  %8521 = fmul fast float %8518, %3163
  %8522 = fsub fast float %8519, %8515
  %8523 = fsub fast float %8520, %8516
  %8524 = fsub fast float %8521, %8517
  %8525 = call float @dx.op.dot3.f32(i32 55, float %8522, float %8523, float %8524, float %8522, float %8523, float %8524)  ; Dot3(ax,ay,az,bx,by,bz)
  %8526 = bitcast float %8525 to i32
  %8527 = ashr i32 %8526, 1
  %8528 = sub nsw i32 1597463007, %8527
  %8529 = bitcast i32 %8528 to float
  %8530 = fmul fast float %8529, %8107
  %8531 = call float @dx.op.dot3.f32(i32 55, float %8515, float %8516, float %8517, float %8515, float %8516, float %8517)  ; Dot3(ax,ay,az,bx,by,bz)
  %8532 = bitcast float %8531 to i32
  %8533 = ashr i32 %8532, 1
  %8534 = sub nsw i32 1597463007, %8533
  %8535 = bitcast i32 %8534 to float
  %8536 = fmul fast float %8530, %8530
  %8537 = fadd fast float %8536, 1.250000e-01
  %8538 = call float @dx.op.unary.f32(i32 25, float %8537)  ; Rsqrt(value)
  %8539 = fmul fast float %8530, %8538
  %8540 = fmul fast float %8522, %8539
  %8541 = fmul fast float %8523, %8539
  %8542 = fmul fast float %8524, %8539
  %8543 = fadd fast float %8515, %8540
  %8544 = fadd fast float %8516, %8541
  %8545 = fadd fast float %8517, %8542
  %8546 = call float @dx.op.dot3.f32(i32 55, float %8543, float %8544, float %8545, float %8543, float %8544, float %8545)  ; Dot3(ax,ay,az,bx,by,bz)
  %8547 = call float @dx.op.unary.f32(i32 25, float %8546)  ; Rsqrt(value)
  %8548 = fmul fast float %8543, %8547
  %8549 = fmul fast float %8544, %8547
  %8550 = fmul fast float %8545, %8547
  %8551 = fsub fast float %8548, %2948
  %8552 = fsub fast float %8549, %2949
  %8553 = fsub fast float %8550, %2950
  %8554 = call float @dx.op.dot3.f32(i32 55, float %8551, float %8552, float %8553, float %8551, float %8552, float %8553)  ; Dot3(ax,ay,az,bx,by,bz)
  %8555 = call float @dx.op.unary.f32(i32 25, float %8554)  ; Rsqrt(value)
  %8556 = fmul fast float %8551, %8555
  %8557 = fmul fast float %8552, %8555
  %8558 = fmul fast float %8553, %8555
  %8559 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2922, float %8556, float %8557, float %8558)  ; Dot3(ax,ay,az,bx,by,bz)
  %8560 = fmul fast float %8559, %8559
  %8561 = call float @dx.op.unary.f32(i32 6, float %8456)  ; FAbs(value)
  %8562 = fsub fast float 1.000000e+00, %3183
  %8563 = fmul fast float %3005, %3005
  %8564 = fmul fast float %8563, %8562
  %8565 = fadd fast float %8564, %3183
  %8566 = bitcast float %8565 to i32
  %8567 = ashr i32 %8566, 1
  %8568 = add nsw i32 %8567, 532487669
  %8569 = bitcast i32 %8568 to float
  %8570 = fadd fast float %8569, %3005
  %8571 = fmul fast float %3183, %8560
  %8572 = fsub fast float 1.000000e+00, %8560
  %8573 = fadd fast float %8572, %8571
  %8574 = fmul fast float %8561, %8561
  %8575 = fmul fast float %8574, %8562
  %8576 = fadd fast float %8575, %3183
  %8577 = bitcast float %8576 to i32
  %8578 = ashr i32 %8577, 1
  %8579 = add nsw i32 %8578, 532487669
  %8580 = bitcast i32 %8579 to float
  %8581 = fadd fast float %8580, %8561
  %8582 = fmul fast float %8573, %8573
  %8583 = fmul fast float %8582, %8570
  %8584 = fmul fast float %8583, %8581
  %8585 = fdiv fast float 1.000000e+00, %8584
  %8586 = bitcast float %3183 to i32
  %8587 = sitofp i32 %8586 to float
  %8588 = fmul fast float %8587, 0x3FE7F73180000000
  %8589 = fadd fast float %8588, 0x41AFE27C40000000
  %8590 = fptosi float %8589 to i32
  %8591 = bitcast i32 %8590 to float
  %8592 = fmul fast float %8107, 0x3FD80E9D60000000
  %8593 = fmul fast float %8592, %8535
  %8594 = fadd fast float %8591, %8593
  %8595 = bitcast float %8594 to i32
  %8596 = sub nsw i32 2129859010, %8595
  %8597 = bitcast i32 %8596 to float
  %8598 = fmul fast float %3183, %8585
  %8599 = fmul fast float %8598, %8591
  %8600 = fmul fast float %8599, %8597
  %8601 = call float @dx.op.unary.f32(i32 6, float %8457)  ; FAbs(value)
  %8602 = fsub fast float 1.000000e+00, %8601
  %8603 = bitcast float %8602 to i32
  %8604 = sitofp i32 %8603 to float
  %8605 = fmul fast float %8604, 5.000000e+00
  %8606 = fadd fast float %8605, 0xC1EFBF8940000000
  %8607 = fptosi float %8606 to i32
  %8608 = bitcast i32 %8607 to float
  %8609 = fmul fast float %8608, %3006
  %8610 = fmul fast float %8608, %3007
  %8611 = fmul fast float %8608, %4257
  %8612 = fadd fast float %8609, %2941
  %8613 = fadd fast float %8610, %2942
  %8614 = fadd fast float %8611, %3156
  %8615 = select i1 %4260, float %8601, float 0.000000e+00
  %8616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %8615, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8617 = extractvalue %dx.types.ResRet.f32 %8616, 0
  %8618 = extractvalue %dx.types.ResRet.f32 %8616, 1
  %8619 = extractvalue %dx.types.ResRet.f32 %8616, 2
  %8620 = fadd fast float %8617, -5.000000e-01
  %8621 = fadd fast float %8618, -5.000000e-01
  %8622 = fadd fast float %8619, -5.000000e-01
  %8623 = fmul fast float %3035, %8620
  %8624 = fmul fast float %3039, %8621
  %8625 = fmul fast float %4273, %8622
  %8626 = fadd fast float %8612, %8623
  %8627 = fadd fast float %8613, %8624
  %8628 = fadd fast float %8614, %8625
  %8629 = call float @dx.op.unary.f32(i32 7, float %8626)  ; Saturate(value)
  %8630 = call float @dx.op.unary.f32(i32 7, float %8627)  ; Saturate(value)
  %8631 = call float @dx.op.unary.f32(i32 7, float %8628)  ; Saturate(value)
  %8632 = fmul fast float %8456, 9.843750e-01
  %8633 = fmul fast float %3100, 9.843750e-01
  %8634 = fadd fast float %8632, 7.812500e-03
  %8635 = fadd fast float %8633, 7.812500e-03
  %8636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %63, float %8634, float %8635, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8637 = extractvalue %dx.types.ResRet.f32 %8636, 2
  %8638 = extractvalue %dx.types.ResRet.f32 %8636, 3
  %8639 = select i1 %4260, float %8456, float 0.000000e+00
  %8640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %8639, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8641 = extractvalue %dx.types.ResRet.f32 %8640, 0
  %8642 = extractvalue %dx.types.ResRet.f32 %8640, 1
  %8643 = extractvalue %dx.types.ResRet.f32 %8640, 2
  %8644 = fadd fast float %8641, -5.000000e-01
  %8645 = fadd fast float %8642, -5.000000e-01
  %8646 = fadd fast float %8643, -5.000000e-01
  %8647 = fmul fast float %3006, 4.000000e+00
  %8648 = fmul fast float %8647, %3018
  %8649 = fmul fast float %8648, %8644
  %8650 = fmul fast float %3007, 4.000000e+00
  %8651 = fmul fast float %8650, %3018
  %8652 = fmul fast float %8651, %8645
  %8653 = fmul fast float %4257, 4.000000e+00
  %8654 = fmul fast float %8653, %3018
  %8655 = fmul fast float %8654, %8646
  %8656 = fadd fast float %8649, %8637
  %8657 = fmul fast float %8656, %2941
  %8658 = fadd fast float %8657, %8638
  %8659 = fadd fast float %8652, %8637
  %8660 = fmul fast float %8659, %2942
  %8661 = fadd fast float %8660, %8638
  %8662 = fadd fast float %8655, %8637
  %8663 = fmul fast float %8662, %3156
  %8664 = fadd fast float %8663, %8638
  %8665 = call float @dx.op.unary.f32(i32 7, float %8658)  ; Saturate(value)
  %8666 = call float @dx.op.unary.f32(i32 7, float %8661)  ; Saturate(value)
  %8667 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8668 = call float @dx.op.binary.f32(i32 35, float %8666, float %8667)  ; FMax(a,b)
  %8669 = call float @dx.op.binary.f32(i32 35, float %8665, float %8668)  ; FMax(a,b)
  %8670 = fsub fast float 1.000000e+00, %8669
  %8671 = fsub fast float -0.000000e+00, %2920
  %8672 = fsub fast float -0.000000e+00, %2921
  %8673 = fsub fast float -0.000000e+00, %2922
  %8674 = call float @dx.op.dot3.f32(i32 55, float %8161, float %8162, float %8163, float %8671, float %8672, float %8673)  ; Dot3(ax,ay,az,bx,by,bz)
  %8675 = call float @dx.op.unary.f32(i32 7, float %8674)  ; Saturate(value)
  %8676 = fmul fast float %8675, %8168
  %8677 = fmul fast float %8675, 9.843750e-01
  %8678 = fadd fast float %8677, 7.812500e-03
  %8679 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %63, float %8678, float %8635, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8680 = extractvalue %dx.types.ResRet.f32 %8679, 2
  %8681 = extractvalue %dx.types.ResRet.f32 %8679, 3
  %8682 = select i1 %4260, float %8675, float 0.000000e+00
  %8683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %63, float %3016, float %8682, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8684 = extractvalue %dx.types.ResRet.f32 %8683, 0
  %8685 = extractvalue %dx.types.ResRet.f32 %8683, 1
  %8686 = extractvalue %dx.types.ResRet.f32 %8683, 2
  %8687 = fadd fast float %8684, -5.000000e-01
  %8688 = fadd fast float %8685, -5.000000e-01
  %8689 = fadd fast float %8686, -5.000000e-01
  %8690 = fmul fast float %8648, %8687
  %8691 = fmul fast float %8651, %8688
  %8692 = fmul fast float %8654, %8689
  %8693 = fadd fast float %8690, %8680
  %8694 = fmul fast float %8693, %2941
  %8695 = fadd fast float %8694, %8681
  %8696 = fadd fast float %8691, %8680
  %8697 = fmul fast float %8696, %2942
  %8698 = fadd fast float %8697, %8681
  %8699 = fadd fast float %8692, %8680
  %8700 = fmul fast float %8699, %3156
  %8701 = fadd fast float %8700, %8681
  %8702 = call float @dx.op.unary.f32(i32 7, float %8695)  ; Saturate(value)
  %8703 = call float @dx.op.unary.f32(i32 7, float %8698)  ; Saturate(value)
  %8704 = call float @dx.op.unary.f32(i32 7, float %8701)  ; Saturate(value)
  %8705 = call float @dx.op.binary.f32(i32 35, float %8703, float %8704)  ; FMax(a,b)
  %8706 = call float @dx.op.binary.f32(i32 35, float %8702, float %8705)  ; FMax(a,b)
  %8707 = fsub fast float 1.000000e+00, %8706
  %8708 = fmul fast float %8676, %8707
  %8709 = fmul fast float %8708, %3103
  %8710 = fmul fast float %8670, %8494
  %8711 = fmul fast float %8629, %8494
  %8712 = fmul fast float %8711, %8600
  %8713 = fmul fast float %8630, %8494
  %8714 = fmul fast float %8713, %8600
  %8715 = fmul fast float %8631, %8494
  %8716 = fmul fast float %8715, %8600
  %8717 = fadd fast float %8709, %8710
  %8718 = fmul fast float %8717, %8414
  %8719 = fmul fast float %8717, %8415
  %8720 = fmul fast float %8717, %8416
  %8721 = fadd fast float %8718, %8076
  %8722 = fadd fast float %8719, %8077
  %8723 = fadd fast float %8720, %8078
  %8724 = fmul fast float %8712, %8414
  %8725 = fmul fast float %8714, %8415
  %8726 = fmul fast float %8716, %8416
  %8727 = fadd fast float %8724, %8073
  %8728 = fadd fast float %8725, %8074
  %8729 = fadd fast float %8726, %8075
  %8730 = fadd fast float %8718, %8070
  %8731 = fadd fast float %8719, %8071
  %8732 = fadd fast float %8720, %8072
  %8733 = fadd fast float %8724, %8067
  %8734 = fadd fast float %8725, %8068
  %8735 = fadd fast float %8726, %8069
  %8736 = fadd fast float %8718, %8064
  %8737 = fadd fast float %8719, %8065
  %8738 = fadd fast float %8720, %8066
  %8739 = fadd fast float %8724, %8061
  %8740 = fadd fast float %8725, %8062
  %8741 = fadd fast float %8726, %8063
  br label %8742

; <label>:8742                                    ; preds = %8413, %8408
  %8743 = phi float [ %8061, %8408 ], [ %8739, %8413 ]
  %8744 = phi float [ %8062, %8408 ], [ %8740, %8413 ]
  %8745 = phi float [ %8063, %8408 ], [ %8741, %8413 ]
  %8746 = phi float [ %8064, %8408 ], [ %8736, %8413 ]
  %8747 = phi float [ %8065, %8408 ], [ %8737, %8413 ]
  %8748 = phi float [ %8066, %8408 ], [ %8738, %8413 ]
  %8749 = phi float [ %8067, %8408 ], [ %8733, %8413 ]
  %8750 = phi float [ %8068, %8408 ], [ %8734, %8413 ]
  %8751 = phi float [ %8069, %8408 ], [ %8735, %8413 ]
  %8752 = phi float [ %8070, %8408 ], [ %8730, %8413 ]
  %8753 = phi float [ %8071, %8408 ], [ %8731, %8413 ]
  %8754 = phi float [ %8072, %8408 ], [ %8732, %8413 ]
  %8755 = phi float [ %8073, %8408 ], [ %8727, %8413 ]
  %8756 = phi float [ %8074, %8408 ], [ %8728, %8413 ]
  %8757 = phi float [ %8075, %8408 ], [ %8729, %8413 ]
  %8758 = phi float [ %8076, %8408 ], [ %8721, %8413 ]
  %8759 = phi float [ %8077, %8408 ], [ %8722, %8413 ]
  %8760 = phi float [ %8078, %8408 ], [ %8723, %8413 ]
  %8761 = bitcast i32 %8051 to float
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 1
  %8764 = bitcast float %8763 to i32
  %8765 = and i32 %8764, 65535
  %8766 = icmp eq i32 %8765, 65535
  br i1 %8766, label %8767, label %8769

; <label>:8767                                    ; preds = %8742
  %8768 = call float @dx.op.binary.f32(i32 35, float %8761, float %8409)  ; FMax(a,b)
  br label %8772

; <label>:8769                                    ; preds = %8742
  %8770 = icmp eq i32 %8765, %8080
  %8771 = select i1 %8770, float %8409, float %8761
  br label %8772

; <label>:8772                                    ; preds = %8769, %8767
  %8773 = phi float [ %8768, %8767 ], [ %8771, %8769 ]
  %8774 = extractvalue %dx.types.CBufRet.f32 %8762, 0
  %8775 = bitcast float %8774 to i32
  %8776 = lshr i32 %8775, 8
  %8777 = and i32 %8776, 255
  %8778 = uitofp i32 %8777 to float
  %8779 = fptoui float %8778 to i32
  %8780 = icmp eq i32 %8779, 15
  %8781 = bitcast float %8773 to i32
  %8782 = select i1 %8780, i32 %8781, i32 %8051
  %8783 = add i32 %8233, %8056
  %8784 = add i32 %8235, %8057
  %8785 = add i32 %8237, %8058
  %8786 = add i32 %8239, %8059
  br label %8244

; <label>:8787                                    ; preds = %8244
  br label %8788

; <label>:8788                                    ; preds = %8787, %7997
  %8789 = phi i32 [ %7998, %7997 ], [ %8245, %8787 ]
  %8790 = phi i32 [ %7999, %7997 ], [ %8234, %8787 ]
  %8791 = phi i32 [ %8000, %7997 ], [ %8236, %8787 ]
  %8792 = phi i32 [ %8001, %7997 ], [ %8238, %8787 ]
  %8793 = phi i32 [ %8002, %7997 ], [ %8240, %8787 ]
  %8794 = phi i32 [ %8003, %7997 ], [ %8246, %8787 ]
  %8795 = phi i32 [ %8004, %7997 ], [ %8247, %8787 ]
  %8796 = phi i32 [ %8005, %7997 ], [ %8248, %8787 ]
  %8797 = phi i32 [ %8006, %7997 ], [ %8249, %8787 ]
  %8798 = phi float [ %8008, %7997 ], [ %8250, %8787 ]
  %8799 = phi float [ %8009, %7997 ], [ %8251, %8787 ]
  %8800 = phi float [ %8010, %7997 ], [ %8252, %8787 ]
  %8801 = phi float [ %8011, %7997 ], [ %8253, %8787 ]
  %8802 = phi float [ %8012, %7997 ], [ %8254, %8787 ]
  %8803 = phi float [ %8013, %7997 ], [ %8255, %8787 ]
  %8804 = phi float [ %8014, %7997 ], [ %8256, %8787 ]
  %8805 = phi float [ %8015, %7997 ], [ %8257, %8787 ]
  %8806 = phi float [ %8016, %7997 ], [ %8258, %8787 ]
  %8807 = phi float [ %8017, %7997 ], [ %8259, %8787 ]
  %8808 = phi float [ %8018, %7997 ], [ %8260, %8787 ]
  %8809 = phi float [ %8019, %7997 ], [ %8261, %8787 ]
  %8810 = phi float [ %8020, %7997 ], [ %8262, %8787 ]
  %8811 = phi float [ %8021, %7997 ], [ %8263, %8787 ]
  %8812 = phi float [ %8022, %7997 ], [ %8264, %8787 ]
  %8813 = phi float [ %8023, %7997 ], [ %8265, %8787 ]
  %8814 = phi float [ %8024, %7997 ], [ %8266, %8787 ]
  %8815 = phi float [ %8025, %7997 ], [ %8267, %8787 ]
  %8816 = add i32 %8007, 1
  %8817 = icmp ugt i32 %8816, %7994
  br i1 %8817, label %8818, label %7997

; <label>:8818                                    ; preds = %8788
  br label %8819

; <label>:8819                                    ; preds = %8818, %7947
  %8820 = phi i32 [ %7926, %7947 ], [ %8789, %8818 ]
  %8821 = phi i32 [ 0, %7947 ], [ %8790, %8818 ]
  %8822 = phi i32 [ 0, %7947 ], [ %8791, %8818 ]
  %8823 = phi i32 [ 0, %7947 ], [ %8792, %8818 ]
  %8824 = phi i32 [ 0, %7947 ], [ %8793, %8818 ]
  %8825 = phi i32 [ 0, %7947 ], [ %8794, %8818 ]
  %8826 = phi i32 [ 0, %7947 ], [ %8795, %8818 ]
  %8827 = phi i32 [ 0, %7947 ], [ %8796, %8818 ]
  %8828 = phi i32 [ 0, %7947 ], [ %8797, %8818 ]
  %8829 = phi float [ %7928, %7947 ], [ %8798, %8818 ]
  %8830 = phi float [ %7929, %7947 ], [ %8799, %8818 ]
  %8831 = phi float [ %7930, %7947 ], [ %8800, %8818 ]
  %8832 = phi float [ %7931, %7947 ], [ %8801, %8818 ]
  %8833 = phi float [ %7932, %7947 ], [ %8802, %8818 ]
  %8834 = phi float [ %7933, %7947 ], [ %8803, %8818 ]
  %8835 = phi float [ %7934, %7947 ], [ %8804, %8818 ]
  %8836 = phi float [ %7935, %7947 ], [ %8805, %8818 ]
  %8837 = phi float [ %7936, %7947 ], [ %8806, %8818 ]
  %8838 = phi float [ %7937, %7947 ], [ %8807, %8818 ]
  %8839 = phi float [ %7938, %7947 ], [ %8808, %8818 ]
  %8840 = phi float [ %7939, %7947 ], [ %8809, %8818 ]
  %8841 = phi float [ %7941, %7947 ], [ %8810, %8818 ]
  %8842 = phi float [ %7942, %7947 ], [ %8811, %8818 ]
  %8843 = phi float [ %7943, %7947 ], [ %8812, %8818 ]
  %8844 = phi float [ %7937, %7947 ], [ %8813, %8818 ]
  %8845 = phi float [ %7938, %7947 ], [ %8814, %8818 ]
  %8846 = phi float [ %7939, %7947 ], [ %8815, %8818 ]
  %8847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8848 = extractvalue %dx.types.CBufRet.f32 %8847, 1
  %8849 = bitcast float %8848 to i32
  %8850 = lshr i32 %8849, 24
  %8851 = uitofp i32 %8850 to float
  %8852 = fptoui float %8851 to i32
  %8853 = icmp eq i32 %8852, 1
  %8854 = select i1 %8853, i32 %8825, i32 %8821
  %8855 = uitofp i32 %8854 to float
  %8856 = fptoui float %8855 to i32
  %8857 = shl i32 %8856, 8
  %8858 = select i1 %8853, i32 %8826, i32 %8822
  %8859 = uitofp i32 %8858 to float
  %8860 = fptoui float %8859 to i32
  %8861 = shl i32 %8860, 16
  %8862 = and i32 %8857, 65280
  %8863 = or i32 %8862, %7927
  %8864 = select i1 %8853, i32 %8827, i32 %8823
  %8865 = uitofp i32 %8864 to float
  %8866 = fptoui float %8865 to i32
  %8867 = shl i32 %8866, 24
  %8868 = and i32 %8861, 16711680
  %8869 = or i32 %8863, %8868
  %8870 = or i32 %8869, %8867
  %8871 = select i1 %8853, i32 %8828, i32 %8824
  %8872 = uitofp i32 %8871 to float
  %8873 = fptoui float %8872 to i32
  %8874 = and i32 %8873, 255
  %8875 = and i32 %6069, -256
  %8876 = or i32 %8874, %8875
  %8877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8878 = extractvalue %dx.types.CBufRet.f32 %8877, 0
  %8879 = bitcast float %8878 to i32
  %8880 = lshr i32 %8879, 8
  %8881 = and i32 %8880, 255
  %8882 = uitofp i32 %8881 to float
  %8883 = fptoui float %8882 to i32
  %8884 = icmp eq i32 %8883, 12
  %8885 = select i1 %8884, i32 0, i32 %8820
  br label %8886

; <label>:8886                                    ; preds = %8819, %7925
  %8887 = phi i32 [ %6069, %7925 ], [ %8876, %8819 ]
  %8888 = phi i32 [ 0, %7925 ], [ %8870, %8819 ]
  %8889 = phi i32 [ %7926, %7925 ], [ %8885, %8819 ]
  %8890 = phi float [ %7928, %7925 ], [ %8829, %8819 ]
  %8891 = phi float [ %7929, %7925 ], [ %8830, %8819 ]
  %8892 = phi float [ %7930, %7925 ], [ %8831, %8819 ]
  %8893 = phi float [ %7931, %7925 ], [ %8832, %8819 ]
  %8894 = phi float [ %7932, %7925 ], [ %8833, %8819 ]
  %8895 = phi float [ %7933, %7925 ], [ %8834, %8819 ]
  %8896 = phi float [ %7934, %7925 ], [ %8835, %8819 ]
  %8897 = phi float [ %7935, %7925 ], [ %8836, %8819 ]
  %8898 = phi float [ %7936, %7925 ], [ %8837, %8819 ]
  %8899 = phi float [ %7937, %7925 ], [ %8838, %8819 ]
  %8900 = phi float [ %7938, %7925 ], [ %8839, %8819 ]
  %8901 = phi float [ %7939, %7925 ], [ %8840, %8819 ]
  %8902 = phi float [ %7941, %7925 ], [ %8841, %8819 ]
  %8903 = phi float [ %7942, %7925 ], [ %8842, %8819 ]
  %8904 = phi float [ %7943, %7925 ], [ %8843, %8819 ]
  %8905 = phi float [ %7937, %7925 ], [ %8844, %8819 ]
  %8906 = phi float [ %7938, %7925 ], [ %8845, %8819 ]
  %8907 = phi float [ %7939, %7925 ], [ %8846, %8819 ]
  %8908 = and i32 %3000, 255
  %8909 = uitofp i32 %8908 to float
  %8910 = fmul fast float %8909, 0x3F70101020000000
  %8911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8912 = extractvalue %dx.types.CBufRet.f32 %8911, 2
  %8913 = extractvalue %dx.types.CBufRet.f32 %8911, 3
  %8914 = fmul fast float %8912, %91
  %8915 = fmul fast float %8913, %92
  %8916 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %46, i32 0, i32 %3051, i32 %3057, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8917 = extractvalue %dx.types.ResRet.f32 %8916, 0
  %8918 = fcmp fast ogt float %8917, -1.000000e+00
  %8919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8920 = extractvalue %dx.types.CBufRet.f32 %8919, 1
  %8921 = select i1 %8918, float %8920, float 1.000000e+00
  %8922 = fadd fast float %8917, 1.000000e+00
  %8923 = fmul fast float %8921, %8922
  %8924 = call float @dx.op.unary.f32(i32 6, float %8923)  ; FAbs(value)
  br i1 %103, label %8925, label %9438

; <label>:8925                                    ; preds = %8886
  %8926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8927 = extractvalue %dx.types.CBufRet.f32 %8926, 0
  %8928 = extractvalue %dx.types.CBufRet.f32 %8926, 1
  %8929 = extractvalue %dx.types.CBufRet.f32 %8926, 2
  %8930 = fcmp fast oge float %8928, %524
  %8931 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.i32 %8931, 0
  %8933 = and i32 %8932, 65538
  %8934 = icmp eq i32 %8933, 65538
  %8935 = and i1 %8934, %8930
  br i1 %8935, label %8936, label %9020

; <label>:8936                                    ; preds = %8925
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 0
  %8939 = extractvalue %dx.types.CBufRet.f32 %8937, 1
  %8940 = fmul fast float %8938, %8914
  %8941 = fmul fast float %8939, %8915
  %8942 = extractvalue %dx.types.CBufRet.f32 %8937, 2
  %8943 = extractvalue %dx.types.CBufRet.f32 %8937, 3
  %8944 = fmul fast float %8940, %8942
  %8945 = fmul fast float %8941, %8943
  %8946 = call float @dx.op.unary.f32(i32 7, float %8944)  ; Saturate(value)
  %8947 = call float @dx.op.unary.f32(i32 7, float %8945)  ; Saturate(value)
  %8948 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %8946, float %8947, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8949 = extractvalue %dx.types.ResRet.f32 %8948, 0
  %8950 = extractvalue %dx.types.ResRet.f32 %8948, 1
  %8951 = extractvalue %dx.types.ResRet.f32 %8948, 2
  %8952 = extractvalue %dx.types.ResRet.f32 %8948, 3
  %8953 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %8946, float %8947, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8954 = extractvalue %dx.types.ResRet.f32 %8953, 0
  %8955 = extractvalue %dx.types.ResRet.f32 %8953, 1
  %8956 = extractvalue %dx.types.ResRet.f32 %8953, 2
  %8957 = extractvalue %dx.types.ResRet.f32 %8953, 3
  %8958 = call float @dx.op.binary.f32(i32 35, float %8950, float %8951)  ; FMax(a,b)
  %8959 = call float @dx.op.binary.f32(i32 35, float %8949, float %8958)  ; FMax(a,b)
  %8960 = call float @dx.op.binary.f32(i32 35, float %8959, float %8952)  ; FMax(a,b)
  %8961 = call float @dx.op.binary.f32(i32 36, float %8955, float %8956)  ; FMin(a,b)
  %8962 = call float @dx.op.binary.f32(i32 36, float %8954, float %8961)  ; FMin(a,b)
  %8963 = call float @dx.op.binary.f32(i32 36, float %8962, float %8957)  ; FMin(a,b)
  %8964 = fmul fast float %8960, 2.550000e+02
  %8965 = fadd fast float %8964, 0x3F70101020000000
  %8966 = fptoui float %8965 to i32
  %8967 = fmul fast float %8963, 2.550000e+02
  %8968 = fadd fast float %8967, 0x3F70101020000000
  %8969 = fptoui float %8968 to i32
  %8970 = icmp ult i32 %8966, %8969
  br i1 %8970, label %8971, label %9020

; <label>:8971                                    ; preds = %8936
  %8972 = fadd fast float %8924, -4.000000e+00
  %8973 = call float @dx.op.binary.f32(i32 35, float %8972, float 0.000000e+00)  ; FMax(a,b)
  %8974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8975 = extractvalue %dx.types.CBufRet.f32 %8974, 0
  %8976 = fadd fast float %8975, %8973
  %8977 = extractvalue %dx.types.CBufRet.f32 %8974, 2
  %8978 = fmul fast float %8976, %8977
  %8979 = call float @dx.op.unary.f32(i32 23, float %8978)  ; Log(value)
  %8980 = extractvalue %dx.types.CBufRet.f32 %8974, 3
  %8981 = fmul fast float %8980, %8979
  %8982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8983 = extractvalue %dx.types.CBufRet.f32 %8982, 2
  %8984 = fmul fast float %8981, %8983
  %8985 = call float @dx.op.unary.f32(i32 7, float %8984)  ; Saturate(value)
  %8986 = uitofp i32 %8966 to float
  %8987 = uitofp i32 %8969 to float
  %8988 = fadd fast float %8986, 5.000000e-01
  %8989 = fadd fast float %8987, 5.000000e-01
  %8990 = fmul fast float %8983, %8988
  %8991 = fmul fast float %8983, %8989
  %8992 = fadd fast float %8990, 0x3F0FFB4800000000
  %8993 = fadd fast float %8991, 0xBF0FFB4800000000
  %8994 = call float @dx.op.binary.f32(i32 35, float %8985, float %8992)  ; FMax(a,b)
  %8995 = call float @dx.op.binary.f32(i32 36, float %8994, float %8993)  ; FMin(a,b)
  %8996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8997 = extractvalue %dx.types.CBufRet.f32 %8996, 1
  %8998 = extractvalue %dx.types.CBufRet.f32 %8996, 2
  %8999 = extractvalue %dx.types.CBufRet.f32 %8996, 0
  %9000 = fmul fast float %8997, %8995
  %9001 = fadd fast float %8999, %9000
  %9002 = fadd fast float %8999, %8998
  %9003 = fsub fast float %8997, %8998
  %9004 = fadd fast float %9003, %8999
  %9005 = call float @dx.op.binary.f32(i32 35, float %9001, float %9002)  ; FMax(a,b)
  %9006 = call float @dx.op.binary.f32(i32 36, float %9005, float %9004)  ; FMin(a,b)
  %9007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %8946, float %8947, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9008 = extractvalue %dx.types.ResRet.f32 %9007, 0
  %9009 = extractvalue %dx.types.ResRet.f32 %9007, 1
  %9010 = extractvalue %dx.types.ResRet.f32 %9007, 2
  %9011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %8946, float %8947, float %9006, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9012 = extractvalue %dx.types.ResRet.f32 %9011, 0
  %9013 = extractvalue %dx.types.ResRet.f32 %9011, 1
  %9014 = extractvalue %dx.types.ResRet.f32 %9011, 2
  %9015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9016 = extractvalue %dx.types.CBufRet.f32 %9015, 1
  %9017 = fmul fast float %9016, %9012
  %9018 = fmul fast float %9016, %9013
  %9019 = fmul fast float %9016, %9014
  br label %9020

; <label>:9020                                    ; preds = %8971, %8936, %8925
  %9021 = phi float [ 0.000000e+00, %8925 ], [ %9017, %8971 ], [ 0.000000e+00, %8936 ]
  %9022 = phi float [ 0.000000e+00, %8925 ], [ %9018, %8971 ], [ 0.000000e+00, %8936 ]
  %9023 = phi float [ 0.000000e+00, %8925 ], [ %9019, %8971 ], [ 0.000000e+00, %8936 ]
  %9024 = phi float [ 1.000000e+00, %8925 ], [ %9008, %8971 ], [ 1.000000e+00, %8936 ]
  %9025 = phi float [ 1.000000e+00, %8925 ], [ %9009, %8971 ], [ 1.000000e+00, %8936 ]
  %9026 = phi float [ 1.000000e+00, %8925 ], [ %9010, %8971 ], [ 1.000000e+00, %8936 ]
  %9027 = fcmp fast olt float %8910, 1.000000e+00
  %9028 = fcmp fast olt float %8927, %8924
  %9029 = or i1 %9027, %9028
  br i1 %9029, label %9030, label %9194

; <label>:9030                                    ; preds = %9020
  %9031 = lshr i32 %3115, 16
  %9032 = uitofp i32 %9031 to float
  %9033 = fmul fast float %9032, 0x3EF0001000000000
  %9034 = and i32 %3108, 65535
  %9035 = uitofp i32 %9034 to float
  %9036 = fmul fast float %9035, 0x3EF0001000000000
  %9037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %9038 = extractvalue %dx.types.CBufRet.f32 %9037, 3
  %9039 = fadd fast float %9038, 3.000000e+00
  %9040 = and i32 %2362, 16383
  %9041 = lshr i32 %2362, 16
  %9042 = and i32 %9041, 255
  %9043 = mul nuw nsw i32 %9040, 148
  %9044 = add nuw nsw i32 %9043, 60
  %9045 = add nuw nsw i32 %9043, 116
  %9046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %9047 = extractvalue %dx.types.CBufRet.i32 %9046, 0
  %9048 = call i32 @dx.op.binary.i32(i32 40, i32 %9040, i32 %9047)  ; UMin(a,b)
  %9049 = mul i32 %9048, 36
  %9050 = add i32 %9049, 4
  %9051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %9052 = extractvalue %dx.types.CBufRet.f32 %9051, 0
  %9053 = fmul fast float %9036, %9052
  %9054 = fmul fast float %9033, %9052
  %9055 = extractvalue %dx.types.CBufRet.f32 %9051, 1
  %9056 = fadd fast float %9053, %9055
  %9057 = fadd fast float %9054, %9055
  %9058 = icmp eq i32 %9042, 0
  br i1 %9058, label %9119, label %9059

; <label>:9059                                    ; preds = %9030
  br label %9060

; <label>:9060                                    ; preds = %9060, %9059
  %9061 = phi float [ %9104, %9060 ], [ 0.000000e+00, %9059 ]
  %9062 = phi float [ %9114, %9060 ], [ 0.000000e+00, %9059 ]
  %9063 = phi float [ %9115, %9060 ], [ 0.000000e+00, %9059 ]
  %9064 = phi float [ %9116, %9060 ], [ 0.000000e+00, %9059 ]
  %9065 = phi float [ %9108, %9060 ], [ 0.000000e+00, %9059 ]
  %9066 = phi float [ %9109, %9060 ], [ 0.000000e+00, %9059 ]
  %9067 = phi float [ %9110, %9060 ], [ 0.000000e+00, %9059 ]
  %9068 = phi i32 [ %9073, %9060 ], [ %9042, %9059 ]
  %9069 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %9068)  ; FirstbitLo(value)
  %9070 = and i32 %9069, 31
  %9071 = shl i32 1, %9070
  %9072 = xor i32 %9071, -1
  %9073 = and i32 %9068, %9072
  %9074 = shl i32 %9069, 2
  %9075 = add i32 %9050, %9074
  %9076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %9075, i32 undef)  ; BufferLoad(srv,index,wot)
  %9077 = extractvalue %dx.types.ResRet.i32 %9076, 0
  %9078 = and i32 %9077, 32767
  %9079 = add i32 %9044, %9074
  %9080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %9079, i32 undef)  ; BufferLoad(srv,index,wot)
  %9081 = extractvalue %dx.types.ResRet.f32 %9080, 0
  %9082 = add i32 %9045, %9074
  %9083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9082, i32 undef)  ; BufferLoad(srv,index,wot)
  %9084 = extractvalue %dx.types.ResRet.i32 %9083, 0
  %9085 = add i32 %9084, 0
  %9086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %9085, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9086, %dx.types.Handle %61, float %9056, float %9057, float %9081, float undef, i32 0, i32 0, i32 undef, float %9039)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9088 = extractvalue %dx.types.ResRet.f32 %9087, 0
  %9089 = mul nuw nsw i32 %9078, 928
  %9090 = add nuw nsw i32 %9089, 44
  %9091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %9090, i32 undef)  ; BufferLoad(srv,index,wot)
  %9092 = extractvalue %dx.types.ResRet.f32 %9091, 0
  %9093 = add nuw nsw i32 %9089, 48
  %9094 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %9093, i32 undef)  ; BufferLoad(srv,index,wot)
  %9095 = extractvalue %dx.types.ResRet.f32 %9094, 0
  %9096 = extractvalue %dx.types.ResRet.f32 %9094, 1
  %9097 = extractvalue %dx.types.ResRet.f32 %9094, 2
  %9098 = add nuw nsw i32 %9089, 60
  %9099 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %9098, i32 undef)  ; BufferLoad(srv,index,wot)
  %9100 = extractvalue %dx.types.ResRet.f32 %9099, 0
  %9101 = extractvalue %dx.types.ResRet.f32 %9099, 1
  %9102 = extractvalue %dx.types.ResRet.f32 %9099, 2
  %9103 = fmul fast float %9092, %9088
  %9104 = fadd fast float %9103, %9061
  %9105 = fmul fast float %9095, %9088
  %9106 = fmul fast float %9096, %9088
  %9107 = fmul fast float %9097, %9088
  %9108 = fadd fast float %9105, %9065
  %9109 = fadd fast float %9106, %9066
  %9110 = fadd fast float %9107, %9067
  %9111 = fmul fast float %9100, %9088
  %9112 = fmul fast float %9101, %9088
  %9113 = fmul fast float %9102, %9088
  %9114 = fadd fast float %9111, %9062
  %9115 = fadd fast float %9112, %9063
  %9116 = fadd fast float %9113, %9064
  %9117 = icmp eq i32 %9073, 0
  br i1 %9117, label %9118, label %9060

; <label>:9118                                    ; preds = %9060
  br label %9119

; <label>:9119                                    ; preds = %9118, %9030
  %9120 = phi float [ 0.000000e+00, %9030 ], [ %9104, %9118 ]
  %9121 = phi float [ 0.000000e+00, %9030 ], [ %9114, %9118 ]
  %9122 = phi float [ 0.000000e+00, %9030 ], [ %9115, %9118 ]
  %9123 = phi float [ 0.000000e+00, %9030 ], [ %9116, %9118 ]
  %9124 = phi float [ 0.000000e+00, %9030 ], [ %9108, %9118 ]
  %9125 = phi float [ 0.000000e+00, %9030 ], [ %9109, %9118 ]
  %9126 = phi float [ 0.000000e+00, %9030 ], [ %9110, %9118 ]
  %9127 = fmul fast float %9124, 0x3F847AE140000000
  %9128 = fmul fast float %9125, 0x3F847AE140000000
  %9129 = fmul fast float %9126, 0x3F847AE140000000
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 0
  %9136 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9137 = call float @dx.op.dot3.f32(i32 55, float %9131, float %9132, float %9133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9138 = select i1 %3154, float %9135, float %9131
  %9139 = select i1 %3154, float %9137, float %9132
  %9140 = select i1 %3154, float %9136, float %9133
  %9141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %9142 = extractvalue %dx.types.CBufRet.f32 %9141, 0
  %9143 = extractvalue %dx.types.CBufRet.f32 %9141, 1
  %9144 = extractvalue %dx.types.CBufRet.f32 %9141, 2
  %9145 = fadd fast float %9124, %9121
  %9146 = fmul fast float %9145, 0x3F847AE140000000
  %9147 = fadd fast float %9125, %9122
  %9148 = fmul fast float %9147, 0x3F847AE140000000
  %9149 = fadd fast float %9126, %9123
  %9150 = fmul fast float %9149, 0x3F847AE140000000
  %9151 = call float @dx.op.dot3.f32(i32 55, float %9142, float %9143, float %9144, float %2948, float %2949, float %2950)  ; Dot3(ax,ay,az,bx,by,bz)
  %9152 = fcmp fast ogt float %9120, 0.000000e+00
  %9153 = select i1 %9152, float 1.000000e+00, float -1.000000e+00
  %9154 = fmul fast float %9153, 5.000000e-01
  %9155 = fmul fast float %9154, %9151
  %9156 = fmul fast float %9153, %9120
  %9157 = fadd fast float %9155, 4.921875e-01
  %9158 = fadd fast float %9156, -3.125000e-02
  %9159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %63, float %9157, float 0x3FB25F3060000000, float %9158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9160 = extractvalue %dx.types.ResRet.f32 %9159, 0
  %9161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %9162 = extractvalue %dx.types.CBufRet.f32 %9161, 0
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 0
  %9165 = fmul fast float %9164, %9162
  %9166 = extractvalue %dx.types.CBufRet.f32 %9163, 1
  %9167 = fadd fast float %9165, %9166
  %9168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %9169 = extractvalue %dx.types.CBufRet.f32 %9168, 0
  %9170 = fmul fast float %9169, %7940
  %9171 = extractvalue %dx.types.CBufRet.f32 %9168, 1
  %9172 = fadd fast float %9170, %9171
  %9173 = call float @dx.op.unary.f32(i32 7, float %9172)  ; Saturate(value)
  %9174 = extractvalue %dx.types.CBufRet.f32 %9161, 3
  %9175 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9176 = fmul fast float %9175, %9174
  %9177 = extractvalue %dx.types.CBufRet.f32 %9163, 3
  %9178 = fadd fast float %9176, %9177
  %9179 = fmul fast float %9160, 0x400921FB60000000
  %9180 = fmul fast float %9179, %9167
  %9181 = fmul fast float %9180, %9173
  %9182 = fmul fast float %9138, %9127
  %9183 = fmul fast float %9182, %9181
  %9184 = fmul fast float %9139, %9128
  %9185 = fmul fast float %9184, %9181
  %9186 = fmul fast float %9140, %9129
  %9187 = fmul fast float %9186, %9181
  %9188 = fmul fast float %9127, %4221
  %9189 = fmul fast float %9188, %9178
  %9190 = fmul fast float %9128, %4222
  %9191 = fmul fast float %9190, %9178
  %9192 = fmul fast float %9129, %4223
  %9193 = fmul fast float %9192, %9178
  br label %9194

; <label>:9194                                    ; preds = %9119, %9020
  %9195 = phi float [ %9146, %9119 ], [ 0.000000e+00, %9020 ]
  %9196 = phi float [ %9148, %9119 ], [ 0.000000e+00, %9020 ]
  %9197 = phi float [ %9150, %9119 ], [ 0.000000e+00, %9020 ]
  %9198 = phi float [ %9183, %9119 ], [ 0.000000e+00, %9020 ]
  %9199 = phi float [ %9185, %9119 ], [ 0.000000e+00, %9020 ]
  %9200 = phi float [ %9187, %9119 ], [ 0.000000e+00, %9020 ]
  %9201 = phi float [ %9189, %9119 ], [ 0.000000e+00, %9020 ]
  %9202 = phi float [ %9191, %9119 ], [ 0.000000e+00, %9020 ]
  %9203 = phi float [ %9193, %9119 ], [ 0.000000e+00, %9020 ]
  %9204 = call float @dx.op.binary.f32(i32 35, float %9195, float 0x3F10000000000000)  ; FMax(a,b)
  %9205 = call float @dx.op.binary.f32(i32 35, float %9196, float 0x3F10000000000000)  ; FMax(a,b)
  %9206 = call float @dx.op.binary.f32(i32 35, float %9197, float 0x3F10000000000000)  ; FMax(a,b)
  %9207 = fdiv fast float 1.000000e+00, %9204
  %9208 = fdiv fast float 1.000000e+00, %9205
  %9209 = fdiv fast float 1.000000e+00, %9206
  %9210 = fmul fast float %9195, 0xBFF7154760000000
  %9211 = fmul fast float %9196, 0xBFF7154760000000
  %9212 = fmul fast float %9197, 0xBFF7154760000000
  %9213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %9214 = extractvalue %dx.types.CBufRet.f32 %9213, 3
  %9215 = call float @dx.op.dot3.f32(i32 55, float %9207, float %9208, float %9209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9216 = fmul fast float %9214, %9215
  %9217 = call float @dx.op.binary.f32(i32 35, float %8928, float %524)  ; FMax(a,b)
  %9218 = fsub fast float %8924, %9217
  %9219 = call float @dx.op.binary.f32(i32 35, float %9218, float 0.000000e+00)  ; FMax(a,b)
  %9220 = fsub fast float %8924, %524
  %9221 = call float @dx.op.binary.f32(i32 35, float %9220, float 0.000000e+00)  ; FMax(a,b)
  %9222 = call float @dx.op.binary.f32(i32 36, float %9221, float %9216)  ; FMin(a,b)
  %9223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %9224 = extractvalue %dx.types.CBufRet.f32 %9223, 0
  %9225 = fmul fast float %9224, %9222
  %9226 = fmul fast float %9225, %9210
  %9227 = fmul fast float %9225, %9211
  %9228 = fmul fast float %9225, %9212
  %9229 = call float @dx.op.unary.f32(i32 21, float %9226)  ; Exp(value)
  %9230 = call float @dx.op.unary.f32(i32 21, float %9227)  ; Exp(value)
  %9231 = call float @dx.op.unary.f32(i32 21, float %9228)  ; Exp(value)
  %9232 = fmul fast float %9229, %9198
  %9233 = fmul fast float %9230, %9199
  %9234 = fmul fast float %9231, %9200
  %9235 = extractvalue %dx.types.CBufRet.f32 %9223, 1
  %9236 = fmul fast float %9235, %9222
  %9237 = fmul fast float %9236, %9210
  %9238 = fmul fast float %9236, %9211
  %9239 = fmul fast float %9236, %9212
  %9240 = call float @dx.op.unary.f32(i32 21, float %9237)  ; Exp(value)
  %9241 = call float @dx.op.unary.f32(i32 21, float %9238)  ; Exp(value)
  %9242 = call float @dx.op.unary.f32(i32 21, float %9239)  ; Exp(value)
  %9243 = fmul fast float %9240, %9201
  %9244 = fmul fast float %9241, %9202
  %9245 = fmul fast float %9242, %9203
  %9246 = fadd fast float %9243, %9232
  %9247 = fadd fast float %9244, %9233
  %9248 = fadd fast float %9245, %9234
  %9249 = fmul fast float %9219, %9210
  %9250 = fmul fast float %9219, %9211
  %9251 = fmul fast float %9219, %9212
  %9252 = call float @dx.op.unary.f32(i32 21, float %9249)  ; Exp(value)
  %9253 = call float @dx.op.unary.f32(i32 21, float %9250)  ; Exp(value)
  %9254 = call float @dx.op.unary.f32(i32 21, float %9251)  ; Exp(value)
  %9255 = call float @dx.op.unary.f32(i32 7, float %9252)  ; Saturate(value)
  %9256 = call float @dx.op.unary.f32(i32 7, float %9253)  ; Saturate(value)
  %9257 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  %9258 = fmul fast float %9255, %9246
  %9259 = fmul fast float %9256, %9247
  %9260 = fmul fast float %9257, %9248
  %9261 = fsub fast float %9246, %9258
  %9262 = fsub fast float %9247, %9259
  %9263 = fsub fast float %9248, %9260
  %9264 = fmul fast float %9207, %9024
  %9265 = fmul fast float %9264, %9261
  %9266 = fmul fast float %9208, %9025
  %9267 = fmul fast float %9266, %9262
  %9268 = fmul fast float %9209, %9026
  %9269 = fmul fast float %9268, %9263
  %9270 = fadd fast float %9265, %9021
  %9271 = fadd fast float %9267, %9022
  %9272 = fadd fast float %9269, %9023
  %9273 = fmul fast float %9255, %9024
  %9274 = fmul fast float %9256, %9025
  %9275 = fmul fast float %9257, %9026
  %9276 = fmul fast float %9221, %9210
  %9277 = fmul fast float %9221, %9211
  %9278 = fmul fast float %9221, %9212
  %9279 = call float @dx.op.unary.f32(i32 21, float %9276)  ; Exp(value)
  %9280 = call float @dx.op.unary.f32(i32 21, float %9277)  ; Exp(value)
  %9281 = call float @dx.op.unary.f32(i32 21, float %9278)  ; Exp(value)
  %9282 = call float @dx.op.unary.f32(i32 7, float %9279)  ; Saturate(value)
  %9283 = call float @dx.op.unary.f32(i32 7, float %9280)  ; Saturate(value)
  %9284 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9285 = fmul fast float %9282, %9246
  %9286 = fmul fast float %9283, %9247
  %9287 = fmul fast float %9284, %9248
  %9288 = fsub fast float %9246, %9285
  %9289 = fsub fast float %9247, %9286
  %9290 = fsub fast float %9248, %9287
  %9291 = fmul fast float %9288, %9207
  %9292 = fmul fast float %9289, %9208
  %9293 = fmul fast float %9290, %9209
  %9294 = fsub fast float %524, %8927
  %9295 = fmul fast float %8929, %9294
  %9296 = call float @dx.op.unary.f32(i32 7, float %9295)  ; Saturate(value)
  %9297 = fmul fast float %9296, %9296
  %9298 = fmul fast float %9296, 2.000000e+00
  %9299 = fsub fast float 3.000000e+00, %9298
  %9300 = fmul fast float %9297, %9299
  %9301 = fsub fast float %9291, %9270
  %9302 = fsub fast float %9292, %9271
  %9303 = fsub fast float %9293, %9272
  %9304 = fmul fast float %9300, %9301
  %9305 = fmul fast float %9300, %9302
  %9306 = fmul fast float %9300, %9303
  %9307 = fadd fast float %9304, %9270
  %9308 = fadd fast float %9305, %9271
  %9309 = fadd fast float %9306, %9272
  %9310 = fsub fast float %9282, %9273
  %9311 = fsub fast float %9283, %9274
  %9312 = fsub fast float %9284, %9275
  %9313 = fmul fast float %9300, %9310
  %9314 = fmul fast float %9300, %9311
  %9315 = fmul fast float %9300, %9312
  %9316 = fadd fast float %9313, %9273
  %9317 = fadd fast float %9314, %9274
  %9318 = fadd fast float %9315, %9275
  br i1 %9027, label %9319, label %9387

; <label>:9319                                    ; preds = %9194
  %9320 = extractvalue %dx.types.CBufRet.f32 %9223, 3
  %9321 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %9320)  ; Dot3(ax,ay,az,bx,by,bz)
  %9322 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3001, float %3002, float %3003)  ; Dot3(ax,ay,az,bx,by,bz)
  %9323 = fdiv fast float 1.000000e+00, %9322
  %9324 = fmul fast float %9323, %9321
  %9325 = fcmp ogt float %2950, -0.000000e+00
  %9326 = select i1 %9325, float %9320, float %9324
  %9327 = call float @dx.op.binary.f32(i32 36, float %9326, float %9216)  ; FMin(a,b)
  %9328 = fmul fast float %9224, %9327
  %9329 = fmul fast float %9328, %9210
  %9330 = fmul fast float %9328, %9211
  %9331 = fmul fast float %9328, %9212
  %9332 = call float @dx.op.unary.f32(i32 21, float %9329)  ; Exp(value)
  %9333 = call float @dx.op.unary.f32(i32 21, float %9330)  ; Exp(value)
  %9334 = call float @dx.op.unary.f32(i32 21, float %9331)  ; Exp(value)
  %9335 = fmul fast float %9332, %9198
  %9336 = fmul fast float %9333, %9199
  %9337 = fmul fast float %9334, %9200
  %9338 = fmul fast float %9235, %9327
  %9339 = fmul fast float %9338, %9210
  %9340 = fmul fast float %9338, %9211
  %9341 = fmul fast float %9338, %9212
  %9342 = call float @dx.op.unary.f32(i32 21, float %9339)  ; Exp(value)
  %9343 = call float @dx.op.unary.f32(i32 21, float %9340)  ; Exp(value)
  %9344 = call float @dx.op.unary.f32(i32 21, float %9341)  ; Exp(value)
  %9345 = fmul fast float %9342, %9201
  %9346 = fmul fast float %9343, %9202
  %9347 = fmul fast float %9344, %9203
  %9348 = fadd fast float %9345, %9335
  %9349 = fadd fast float %9346, %9336
  %9350 = fadd fast float %9347, %9337
  %9351 = fmul fast float %9326, %9210
  %9352 = fmul fast float %9326, %9211
  %9353 = fmul fast float %9326, %9212
  %9354 = call float @dx.op.unary.f32(i32 21, float %9351)  ; Exp(value)
  %9355 = call float @dx.op.unary.f32(i32 21, float %9352)  ; Exp(value)
  %9356 = call float @dx.op.unary.f32(i32 21, float %9353)  ; Exp(value)
  %9357 = call float @dx.op.unary.f32(i32 7, float %9354)  ; Saturate(value)
  %9358 = call float @dx.op.unary.f32(i32 7, float %9355)  ; Saturate(value)
  %9359 = call float @dx.op.unary.f32(i32 7, float %9356)  ; Saturate(value)
  %9360 = fmul fast float %9357, %9348
  %9361 = fmul fast float %9358, %9349
  %9362 = fmul fast float %9359, %9350
  %9363 = fsub fast float %9348, %9360
  %9364 = fsub fast float %9349, %9361
  %9365 = fsub fast float %9350, %9362
  %9366 = fmul fast float %9363, %9207
  %9367 = fmul fast float %9364, %9208
  %9368 = fmul fast float %9365, %9209
  %9369 = fsub fast float %9307, %9366
  %9370 = fsub fast float %9308, %9367
  %9371 = fsub fast float %9309, %9368
  %9372 = fmul fast float %9369, %8910
  %9373 = fmul fast float %9370, %8910
  %9374 = fmul fast float %9371, %8910
  %9375 = fadd fast float %9372, %9366
  %9376 = fadd fast float %9373, %9367
  %9377 = fadd fast float %9374, %9368
  %9378 = fsub fast float %9316, %9357
  %9379 = fsub fast float %9317, %9358
  %9380 = fsub fast float %9318, %9359
  %9381 = fmul fast float %9378, %8910
  %9382 = fmul fast float %9379, %8910
  %9383 = fmul fast float %9380, %8910
  %9384 = fadd fast float %9381, %9357
  %9385 = fadd fast float %9382, %9358
  %9386 = fadd fast float %9383, %9359
  br label %9387

; <label>:9387                                    ; preds = %9319, %9194
  %9388 = phi float [ %9375, %9319 ], [ %9307, %9194 ]
  %9389 = phi float [ %9376, %9319 ], [ %9308, %9194 ]
  %9390 = phi float [ %9377, %9319 ], [ %9309, %9194 ]
  %9391 = phi float [ %9384, %9319 ], [ %9316, %9194 ]
  %9392 = phi float [ %9385, %9319 ], [ %9317, %9194 ]
  %9393 = phi float [ %9386, %9319 ], [ %9318, %9194 ]
  %9394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9395 = extractvalue %dx.types.CBufRet.i32 %9394, 3
  %9396 = and i32 %9395, 3
  %9397 = icmp ne i32 %9396, 0
  %9398 = and i32 %9395, 4
  %9399 = icmp ne i32 %9398, 0
  %9400 = and i1 %9397, %9399
  br i1 %9400, label %9401, label %9408

; <label>:9401                                    ; preds = %9387
  %9402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8914, float %8915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9403 = extractvalue %dx.types.ResRet.f32 %9402, 0
  %9404 = fsub fast float 1.000000e+00, %9403
  %9405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %9406 = extractvalue %dx.types.CBufRet.f32 %9405, 0
  %9407 = fcmp fast olt float %9404, %9406
  br label %9411

; <label>:9408                                    ; preds = %9387
  %9409 = icmp eq i32 %9398, 0
  %9410 = and i1 %9397, %9409
  br label %9411

; <label>:9411                                    ; preds = %9408, %9401
  %9412 = phi i1 [ %9407, %9401 ], [ %9410, %9408 ]
  %9413 = xor i1 %3154, %9412
  %9414 = select i1 %9413, float 0.000000e+00, float %8910
  %9415 = fcmp fast ogt float %9414, 0.000000e+00
  %9416 = select i1 %9415, float %8914, float 0.000000e+00
  %9417 = select i1 %9415, float %8915, float 0.000000e+00
  %9418 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %63, float %9416, float %9417, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9419 = extractvalue %dx.types.ResRet.f32 %9418, 0
  %9420 = extractvalue %dx.types.ResRet.f32 %9418, 1
  %9421 = extractvalue %dx.types.ResRet.f32 %9418, 2
  %9422 = fmul fast float %9420, %9414
  %9423 = fmul fast float %9421, %9414
  %9424 = select i1 %3154, float 0.000000e+00, float %9422
  %9425 = select i1 %3154, float 0.000000e+00, float %9423
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 1
  %9428 = fmul fast float %9414, %9391
  %9429 = fmul fast float %9428, %9419
  %9430 = fmul fast float %9429, %9427
  %9431 = fmul fast float %9427, %9392
  %9432 = fmul fast float %9431, %9424
  %9433 = fmul fast float %9427, %9393
  %9434 = fmul fast float %9433, %9425
  %9435 = fadd fast float %9430, %9388
  %9436 = fadd fast float %9432, %9389
  %9437 = fadd fast float %9434, %9390
  br label %9477

; <label>:9438                                    ; preds = %8886
  %9439 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9440 = extractvalue %dx.types.CBufRet.i32 %9439, 3
  %9441 = and i32 %9440, 3
  %9442 = icmp ne i32 %9441, 0
  %9443 = and i32 %9440, 4
  %9444 = icmp ne i32 %9443, 0
  %9445 = and i1 %9442, %9444
  br i1 %9445, label %9446, label %9453

; <label>:9446                                    ; preds = %9438
  %9447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8914, float %8915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9448 = extractvalue %dx.types.ResRet.f32 %9447, 0
  %9449 = fsub fast float 1.000000e+00, %9448
  %9450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %9451 = extractvalue %dx.types.CBufRet.f32 %9450, 0
  %9452 = fcmp fast olt float %9449, %9451
  br label %9456

; <label>:9453                                    ; preds = %9438
  %9454 = icmp eq i32 %9443, 0
  %9455 = and i1 %9442, %9454
  br label %9456

; <label>:9456                                    ; preds = %9453, %9446
  %9457 = phi i1 [ %9452, %9446 ], [ %9455, %9453 ]
  %9458 = xor i1 %3154, %9457
  %9459 = select i1 %9458, float 0.000000e+00, float %8910
  %9460 = fcmp fast ogt float %9459, 0.000000e+00
  %9461 = select i1 %9460, float %8914, float 0.000000e+00
  %9462 = select i1 %9460, float %8915, float 0.000000e+00
  %9463 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %63, float %9461, float %9462, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9464 = extractvalue %dx.types.ResRet.f32 %9463, 0
  %9465 = extractvalue %dx.types.ResRet.f32 %9463, 1
  %9466 = extractvalue %dx.types.ResRet.f32 %9463, 2
  %9467 = fmul fast float %9464, %9459
  %9468 = fmul fast float %9465, %9459
  %9469 = fmul fast float %9466, %9459
  %9470 = select i1 %3154, float 0.000000e+00, float %9468
  %9471 = select i1 %3154, float 0.000000e+00, float %9469
  %9472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9473 = extractvalue %dx.types.CBufRet.f32 %9472, 1
  %9474 = fmul fast float %9467, %9473
  %9475 = fmul fast float %9470, %9473
  %9476 = fmul fast float %9471, %9473
  br label %9477

; <label>:9477                                    ; preds = %9456, %9411
  %9478 = phi float [ %9474, %9456 ], [ %9435, %9411 ]
  %9479 = phi float [ %9475, %9456 ], [ %9436, %9411 ]
  %9480 = phi float [ %9476, %9456 ], [ %9437, %9411 ]
  %9481 = fmul fast float %6074, %9478
  %9482 = fmul fast float %6074, %9479
  %9483 = fmul fast float %6074, %9480
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 0
  %9486 = bitcast float %9485 to i32
  %9487 = and i32 %9486, 255
  %9488 = uitofp i32 %9487 to float
  %9489 = fptoui float %9488 to i32
  %9490 = icmp eq i32 %9489, 13
  br i1 %9490, label %9491, label %9511

; <label>:9491                                    ; preds = %9477
  %9492 = fadd fast float %2408, 2.000000e+00
  %9493 = fadd fast float %2410, 1.000000e+00
  %9494 = fsub fast float 1.000000e+00, %2411
  %9495 = fmul fast float %9492, 5.000000e-01
  %9496 = fmul fast float %9493, 5.000000e-01
  %9497 = fmul fast float %9494, 5.000000e-01
  %9498 = call float @dx.op.unary.f32(i32 7, float %9495)  ; Saturate(value)
  %9499 = call float @dx.op.unary.f32(i32 7, float %9496)  ; Saturate(value)
  %9500 = call float @dx.op.unary.f32(i32 7, float %9497)  ; Saturate(value)
  %9501 = fmul fast float %9498, 1.023000e+03
  %9502 = fmul fast float %9499, 1.023000e+03
  %9503 = fmul fast float %9500, 1.023000e+03
  %9504 = fptoui float %9501 to i32
  %9505 = fptoui float %9502 to i32
  %9506 = fptoui float %9503 to i32
  %9507 = shl i32 %9505, 10
  %9508 = or i32 %9507, %9504
  %9509 = shl i32 %9506, 20
  %9510 = or i32 %9508, %9509
  br label %9511

; <label>:9511                                    ; preds = %9491, %9477
  %9512 = phi i32 [ %9510, %9491 ], [ %8889, %9477 ]
  %9513 = icmp eq i32 %9489, 14
  br i1 %9513, label %9514, label %9534

; <label>:9514                                    ; preds = %9511
  %9515 = fadd fast float %2405, 1.000000e+00
  %9516 = fadd fast float %2415, 1.000000e+00
  %9517 = fsub fast float 1.000000e+00, %529
  %9518 = fmul fast float %9515, 5.000000e-01
  %9519 = fmul fast float %9516, 5.000000e-01
  %9520 = fmul fast float %9517, 5.000000e-01
  %9521 = call float @dx.op.unary.f32(i32 7, float %9518)  ; Saturate(value)
  %9522 = call float @dx.op.unary.f32(i32 7, float %9519)  ; Saturate(value)
  %9523 = call float @dx.op.unary.f32(i32 7, float %9520)  ; Saturate(value)
  %9524 = fmul fast float %9521, 1.023000e+03
  %9525 = fmul fast float %9522, 1.023000e+03
  %9526 = fmul fast float %9523, 1.023000e+03
  %9527 = fptoui float %9524 to i32
  %9528 = fptoui float %9525 to i32
  %9529 = fptoui float %9526 to i32
  %9530 = shl i32 %9528, 10
  %9531 = or i32 %9530, %9527
  %9532 = shl i32 %9529, 20
  %9533 = or i32 %9531, %9532
  br label %9534

; <label>:9534                                    ; preds = %9514, %9511
  %9535 = phi i32 [ %9533, %9514 ], [ %9512, %9511 ]
  %9536 = icmp eq i32 %9489, 15
  br i1 %9536, label %9537, label %9557

; <label>:9537                                    ; preds = %9534
  %9538 = fadd fast float %527, 1.000000e+00
  %9539 = fadd fast float %529, 1.000000e+00
  %9540 = fadd fast float %531, 1.000000e+00
  %9541 = fmul fast float %9538, 5.000000e-01
  %9542 = fmul fast float %9539, 5.000000e-01
  %9543 = fmul fast float %9540, 5.000000e-01
  %9544 = call float @dx.op.unary.f32(i32 7, float %9541)  ; Saturate(value)
  %9545 = call float @dx.op.unary.f32(i32 7, float %9542)  ; Saturate(value)
  %9546 = call float @dx.op.unary.f32(i32 7, float %9543)  ; Saturate(value)
  %9547 = fmul fast float %9544, 1.023000e+03
  %9548 = fmul fast float %9545, 1.023000e+03
  %9549 = fmul fast float %9546, 1.023000e+03
  %9550 = fptoui float %9547 to i32
  %9551 = fptoui float %9548 to i32
  %9552 = fptoui float %9549 to i32
  %9553 = shl i32 %9551, 10
  %9554 = or i32 %9553, %9550
  %9555 = shl i32 %9552, 20
  %9556 = or i32 %9554, %9555
  br label %9557

; <label>:9557                                    ; preds = %9537, %9534
  %9558 = phi i32 [ %9556, %9537 ], [ %9535, %9534 ]
  %9559 = fsub fast float 1.000000e+00, %3005
  %9560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9561 = extractvalue %dx.types.CBufRet.f32 %9560, 0
  %9562 = fmul fast float %9561, %9559
  %9563 = fmul fast float %2922, 2.000000e+00
  %9564 = fmul fast float %9563, %2959
  %9565 = fsub fast float %2950, %9564
  %9566 = call float @dx.op.unary.f32(i32 7, float %9565)  ; Saturate(value)
  %9567 = fsub fast float 1.000000e+00, %9566
  %9568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9569 = extractvalue %dx.types.CBufRet.f32 %9568, 3
  %9570 = fmul fast float %9569, %9567
  %9571 = fsub fast float 1.000000e+00, %3128
  %9572 = call float @dx.op.unary.f32(i32 7, float %9571)  ; Saturate(value)
  %9573 = fadd fast float %8907, %3130
  %9574 = fmul fast float %9573, %3128
  %9575 = fmul fast float %9570, %9572
  %9576 = icmp eq i32 %9489, 39
  %9577 = icmp eq i32 %9489, 40
  %9578 = select i1 %9577, float %3128, float 0.000000e+00
  %9579 = select i1 %9576, float %9573, float %9578
  %9580 = fmul fast float %8905, %2932
  %9581 = fmul fast float %8906, %2933
  %9582 = fmul fast float %8907, %2934
  %9583 = fadd fast float %9580, %8902
  %9584 = fadd fast float %9583, %9481
  %9585 = fadd fast float %9581, %8903
  %9586 = fadd fast float %9585, %9482
  %9587 = fadd fast float %9582, %8904
  %9588 = fadd fast float %9587, %9483
  br i1 %103, label %9589, label %10391

; <label>:9589                                    ; preds = %9557
  %9590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9591 = extractvalue %dx.types.CBufRet.f32 %9590, 0
  %9592 = extractvalue %dx.types.CBufRet.f32 %9590, 1
  %9593 = extractvalue %dx.types.CBufRet.f32 %9590, 2
  %9594 = extractvalue %dx.types.CBufRet.f32 %9590, 3
  %9595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9596 = extractvalue %dx.types.CBufRet.f32 %9595, 0
  %9597 = extractvalue %dx.types.CBufRet.f32 %9595, 1
  %9598 = extractvalue %dx.types.CBufRet.f32 %9595, 2
  %9599 = extractvalue %dx.types.CBufRet.f32 %9595, 3
  %9600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9601 = extractvalue %dx.types.CBufRet.f32 %9600, 0
  %9602 = extractvalue %dx.types.CBufRet.f32 %9600, 1
  %9603 = extractvalue %dx.types.CBufRet.f32 %9600, 2
  %9604 = extractvalue %dx.types.CBufRet.f32 %9600, 3
  %9605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9606 = extractvalue %dx.types.CBufRet.f32 %9605, 0
  %9607 = extractvalue %dx.types.CBufRet.f32 %9605, 1
  %9608 = extractvalue %dx.types.CBufRet.f32 %9605, 2
  %9609 = extractvalue %dx.types.CBufRet.f32 %9605, 3
  %9610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9611 = extractvalue %dx.types.CBufRet.f32 %9610, 3
  %9612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9613 = extractvalue %dx.types.CBufRet.f32 %9612, 3
  %9614 = extractvalue %dx.types.CBufRet.f32 %9612, 0
  %9615 = extractvalue %dx.types.CBufRet.f32 %9612, 1
  %9616 = extractvalue %dx.types.CBufRet.f32 %9612, 2
  %9617 = fcmp fast olt float %9616, -5.000000e-01
  %9618 = fmul fast float %2947, %2946
  %9619 = fadd fast float %9618, %9594
  %9620 = call float @dx.op.dot3.f32(i32 55, float %2948, float %2949, float %2950, float %9591, float %9592, float %9593)  ; Dot3(ax,ay,az,bx,by,bz)
  %9621 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9622 = extractvalue %dx.types.CBufRet.i32 %9621, 1
  %9623 = and i32 %9622, 1
  %9624 = icmp ne i32 %9623, 0
  %9625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9626 = extractvalue %dx.types.CBufRet.f32 %9625, 2
  %9627 = fcmp fast ogt float %9626, 0.000000e+00
  %9628 = and i1 %9624, %9627
  br i1 %9628, label %9629, label %10035, !dx.controlflow.hints !165

; <label>:9629                                    ; preds = %9589
  %9630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9631 = extractvalue %dx.types.CBufRet.f32 %9630, 3
  %9632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9633 = extractvalue %dx.types.CBufRet.f32 %9632, 2
  %9634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9635 = extractvalue %dx.types.CBufRet.f32 %9634, 2
  %9636 = fsub fast float %9633, %9635
  %9637 = and i32 %9622, 2
  %9638 = extractvalue %dx.types.CBufRet.i32 %9621, 0
  %9639 = call i32 @dx.op.binary.i32(i32 40, i32 %9638, i32 3)  ; UMin(a,b)
  %9640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9641 = extractvalue %dx.types.CBufRet.f32 %9640, 0
  %9642 = extractvalue %dx.types.CBufRet.f32 %9640, 1
  %9643 = extractvalue %dx.types.CBufRet.f32 %9634, 0
  %9644 = extractvalue %dx.types.CBufRet.f32 %9634, 1
  %9645 = fsub fast float %9641, %9643
  %9646 = fsub fast float %9642, %9644
  %9647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9648 = extractvalue %dx.types.CBufRet.f32 %9647, 0
  %9649 = fcmp fast ogt float %9648, 0.000000e+00
  %9650 = fsub fast float -0.000000e+00, %9645
  %9651 = fsub fast float -0.000000e+00, %9646
  %9652 = call float @dx.op.dot2.f32(i32 54, float %2948, float %2949, float %2948, float %2949)  ; Dot2(ax,ay,bx,by)
  %9653 = call float @dx.op.dot2.f32(i32 54, float %2948, float %2949, float %9650, float %9651)  ; Dot2(ax,ay,bx,by)
  %9654 = fmul fast float %9653, 2.000000e+00
  %9655 = call float @dx.op.dot2.f32(i32 54, float %9650, float %9651, float %9650, float %9651)  ; Dot2(ax,ay,bx,by)
  %9656 = fmul fast float %9648, %9648
  %9657 = fsub fast float %9655, %9656
  %9658 = fmul fast float %9654, %9654
  %9659 = fmul fast float %9652, 4.000000e+00
  %9660 = fmul fast float %9659, %9657
  %9661 = fsub fast float %9658, %9660
  %9662 = fcmp fast ogt float %9661, 0.000000e+00
  br i1 %9662, label %9663, label %9678

; <label>:9663                                    ; preds = %9629
  %9664 = fcmp fast ogt float %9654, 0.000000e+00
  %9665 = call float @dx.op.unary.f32(i32 24, float %9661)  ; Sqrt(value)
  %9666 = fsub fast float -0.000000e+00, %9665
  %9667 = select i1 %9664, float %9665, float %9666
  %9668 = fadd fast float %9667, %9654
  %9669 = fmul float %9668, -5.000000e-01
  %9670 = fdiv fast float %9669, %9652
  %9671 = call float @dx.op.binary.f32(i32 35, float %9670, float 0.000000e+00)  ; FMax(a,b)
  %9672 = call float @dx.op.binary.f32(i32 36, float %9618, float %9671)  ; FMin(a,b)
  %9673 = fdiv fast float %9657, %9669
  %9674 = call float @dx.op.binary.f32(i32 35, float %9673, float 0.000000e+00)  ; FMax(a,b)
  %9675 = call float @dx.op.binary.f32(i32 36, float %9618, float %9674)  ; FMin(a,b)
  %9676 = call float @dx.op.binary.f32(i32 36, float %9672, float %9675)  ; FMin(a,b)
  %9677 = call float @dx.op.binary.f32(i32 35, float %9672, float %9675)  ; FMax(a,b)
  br label %9678

; <label>:9678                                    ; preds = %9663, %9629
  %9679 = phi float [ %9677, %9663 ], [ -1.000000e+00, %9629 ]
  %9680 = phi float [ %9676, %9663 ], [ -1.000000e+00, %9629 ]
  %9681 = phi i1 [ true, %9663 ], [ false, %9629 ]
  %9682 = and i1 %9649, %9681
  br i1 %9682, label %9683, label %9685

; <label>:9683                                    ; preds = %9678
  %9684 = fcmp fast oeq float %9680, %9679
  br i1 %9684, label %9988, label %9686

; <label>:9685                                    ; preds = %9678
  br i1 %9649, label %9988, label %9686

; <label>:9686                                    ; preds = %9685, %9683
  %9687 = phi float [ %9618, %9685 ], [ %9679, %9683 ]
  %9688 = phi float [ 0.000000e+00, %9685 ], [ %9680, %9683 ]
  %9689 = icmp ne i32 %9637, 0
  %9690 = fmul fast float %9687, %2950
  %9691 = fadd fast float %9690, %9631
  %9692 = fmul fast float %9691, %9687
  %9693 = select i1 %9689, float 0.000000e+00, float %9692
  %9694 = fcmp fast oeq float %2950, 0.000000e+00
  %9695 = fdiv fast float %9636, %2950
  %9696 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9695)  ; FMax(a,b)
  %9697 = select i1 %9694, float %9687, float %9696
  %9698 = call float @dx.op.binary.f32(i32 36, float %9687, float %9697)  ; FMin(a,b)
  %9699 = fcmp fast ogt float %2950, 0.000000e+00
  %9700 = fcmp fast olt float %9636, 0.000000e+00
  br i1 %9699, label %9701, label %9758

; <label>:9701                                    ; preds = %9686
  %9702 = icmp eq i32 %9637, 0
  br i1 %9700, label %9703, label %9747

; <label>:9703                                    ; preds = %9701
  %9704 = select i1 %9702, float %9687, float 0.000000e+00
  %9705 = fsub fast float -0.000000e+00, %9704
  %9706 = call float @dx.op.unary.f32(i32 6, float %9705)  ; FAbs(value)
  %9707 = fmul fast float %9704, %2950
  %9708 = fadd fast float %9707, %9631
  %9709 = fmul fast float %9706, %9708
  %9710 = fsub fast float %9693, %9709
  %9711 = fsub fast float %9687, %9706
  %9712 = select i1 %9702, float %9711, float 0.000000e+00
  %9713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9714 = extractvalue %dx.types.CBufRet.f32 %9713, 0
  %9715 = extractvalue %dx.types.CBufRet.f32 %9713, 1
  %9716 = extractvalue %dx.types.CBufRet.f32 %9713, 2
  %9717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9718 = extractvalue %dx.types.CBufRet.f32 %9717, 0
  %9719 = extractvalue %dx.types.CBufRet.f32 %9717, 1
  %9720 = extractvalue %dx.types.CBufRet.f32 %9717, 2
  %9721 = extractvalue %dx.types.CBufRet.f32 %9717, 3
  %9722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9723 = extractvalue %dx.types.CBufRet.f32 %9722, 3
  %9724 = call float @dx.op.binary.f32(i32 36, float %9710, float %9723)  ; FMin(a,b)
  %9725 = fmul fast float %9721, %9712
  %9726 = call float @dx.op.unary.f32(i32 7, float %9725)  ; Saturate(value)
  %9727 = fsub fast float %9718, %9714
  %9728 = fsub fast float %9719, %9715
  %9729 = fsub fast float %9720, %9716
  %9730 = fmul fast float %9726, %9727
  %9731 = fmul fast float %9726, %9728
  %9732 = fmul fast float %9726, %9729
  %9733 = fadd fast float %9730, %9714
  %9734 = fadd fast float %9731, %9715
  %9735 = fadd fast float %9732, %9716
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 0
  %9738 = extractvalue %dx.types.CBufRet.f32 %9736, 1
  %9739 = fadd fast float %9738, %9737
  %9740 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9741 = extractvalue %dx.types.CBufRet.f32 %9736, 2
  %9742 = extractvalue %dx.types.CBufRet.f32 %9736, 3
  %9743 = fadd fast float %9742, %9741
  %9744 = call float @dx.op.unary.f32(i32 7, float %9743)  ; Saturate(value)
  %9745 = fmul fast float %9740, %9724
  %9746 = fmul fast float %9745, %9744
  br label %9988

; <label>:9747                                    ; preds = %9701
  br i1 %9702, label %9748, label %9769

; <label>:9748                                    ; preds = %9747
  %9749 = call float @dx.op.binary.f32(i32 36, float %9698, float %9688)  ; FMin(a,b)
  %9750 = fsub fast float %9698, %9749
  %9751 = fsub fast float %9750, %9687
  %9752 = call float @dx.op.unary.f32(i32 6, float %9751)  ; FAbs(value)
  %9753 = fadd fast float %9750, %9687
  %9754 = fmul fast float %9753, %2950
  %9755 = fadd fast float %9754, %9631
  %9756 = fmul fast float %9755, %9752
  %9757 = fsub fast float %9693, %9756
  br label %9769

; <label>:9758                                    ; preds = %9686
  br i1 %9700, label %9759, label %9769

; <label>:9759                                    ; preds = %9758
  %9760 = call float @dx.op.binary.f32(i32 35, float %9688, float %9698)  ; FMax(a,b)
  %9761 = icmp eq i32 %9637, 0
  %9762 = select i1 %9761, float %9698, float 0.000000e+00
  %9763 = fsub fast float -0.000000e+00, %9762
  %9764 = call float @dx.op.unary.f32(i32 6, float %9763)  ; FAbs(value)
  %9765 = fmul fast float %9762, %2950
  %9766 = fadd fast float %9765, %9631
  %9767 = fmul fast float %9764, %9766
  %9768 = fsub fast float %9693, %9767
  br label %9769

; <label>:9769                                    ; preds = %9759, %9758, %9748, %9747
  %9770 = phi float [ %9688, %9747 ], [ %9688, %9748 ], [ %9760, %9759 ], [ %9688, %9758 ]
  %9771 = phi float [ 0.000000e+00, %9747 ], [ %9752, %9748 ], [ %9764, %9759 ], [ 0.000000e+00, %9758 ]
  %9772 = phi float [ %9693, %9747 ], [ %9757, %9748 ], [ %9768, %9759 ], [ %9693, %9758 ]
  %9773 = phi float [ %9698, %9747 ], [ %9698, %9748 ], [ %9687, %9759 ], [ %9687, %9758 ]
  %9774 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 0
  store float -1.000000e+00, float* %9774, align 4, !tbaa !107, !noalias !166
  %9775 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 1
  store float -1.000000e+00, float* %9775, align 4, !tbaa !107, !noalias !166
  %9776 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 2
  store float -1.000000e+00, float* %9776, align 4, !tbaa !107, !noalias !166
  %9777 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 0
  store float -1.000000e+00, float* %9777, align 4, !tbaa !107, !noalias !166
  %9778 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 1
  store float -1.000000e+00, float* %9778, align 4, !tbaa !107, !noalias !166
  %9779 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 2
  store float -1.000000e+00, float* %9779, align 4, !tbaa !107, !noalias !166
  %9780 = icmp sgt i32 %9639, 0
  br i1 %9780, label %9781, label %9842

; <label>:9781                                    ; preds = %9769
  br label %9782

; <label>:9782                                    ; preds = %9831, %9781
  %9783 = phi i32 [ %9832, %9831 ], [ 0, %9781 ]
  %9784 = phi i32 [ %9833, %9831 ], [ 0, %9781 ]
  %9785 = add nuw i32 %9784, 171
  %9786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %9785)  ; CBufferLoadLegacy(handle,regIndex)
  %9787 = extractvalue %dx.types.CBufRet.f32 %9786, 0
  %9788 = extractvalue %dx.types.CBufRet.f32 %9786, 1
  %9789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9790 = extractvalue %dx.types.CBufRet.f32 %9789, 0
  %9791 = extractvalue %dx.types.CBufRet.f32 %9789, 1
  %9792 = fsub fast float %9787, %9790
  %9793 = fsub fast float %9788, %9791
  %9794 = extractvalue %dx.types.CBufRet.f32 %9786, 2
  %9795 = fsub fast float -0.000000e+00, %9792
  %9796 = fsub fast float -0.000000e+00, %9793
  %9797 = call float @dx.op.dot2.f32(i32 54, float %2948, float %2949, float %9795, float %9796)  ; Dot2(ax,ay,bx,by)
  %9798 = fmul fast float %9797, 2.000000e+00
  %9799 = call float @dx.op.dot2.f32(i32 54, float %9795, float %9796, float %9795, float %9796)  ; Dot2(ax,ay,bx,by)
  %9800 = fmul fast float %9794, %9794
  %9801 = fsub fast float %9799, %9800
  %9802 = fmul fast float %9798, %9798
  %9803 = fmul fast float %9659, %9801
  %9804 = fsub fast float %9802, %9803
  %9805 = fcmp fast ogt float %9804, 0.000000e+00
  br i1 %9805, label %9806, label %9821

; <label>:9806                                    ; preds = %9782
  %9807 = fcmp fast ogt float %9798, 0.000000e+00
  %9808 = call float @dx.op.unary.f32(i32 24, float %9804)  ; Sqrt(value)
  %9809 = fsub fast float -0.000000e+00, %9808
  %9810 = select i1 %9807, float %9808, float %9809
  %9811 = fadd fast float %9810, %9798
  %9812 = fmul float %9811, -5.000000e-01
  %9813 = fdiv fast float %9812, %9652
  %9814 = call float @dx.op.binary.f32(i32 35, float %9813, float 0.000000e+00)  ; FMax(a,b)
  %9815 = call float @dx.op.binary.f32(i32 36, float %9687, float %9814)  ; FMin(a,b)
  %9816 = fdiv fast float %9801, %9812
  %9817 = call float @dx.op.binary.f32(i32 35, float %9816, float 0.000000e+00)  ; FMax(a,b)
  %9818 = call float @dx.op.binary.f32(i32 36, float %9687, float %9817)  ; FMin(a,b)
  %9819 = call float @dx.op.binary.f32(i32 36, float %9815, float %9818)  ; FMin(a,b)
  %9820 = call float @dx.op.binary.f32(i32 35, float %9815, float %9818)  ; FMax(a,b)
  br label %9821

; <label>:9821                                    ; preds = %9806, %9782
  %9822 = phi float [ %9820, %9806 ], [ -1.000000e+00, %9782 ]
  %9823 = phi float [ %9819, %9806 ], [ -1.000000e+00, %9782 ]
  %9824 = phi i1 [ true, %9806 ], [ false, %9782 ]
  br i1 %9824, label %9825, label %9831

; <label>:9825                                    ; preds = %9821
  %9826 = call float @dx.op.binary.f32(i32 35, float %9770, float %9823)  ; FMax(a,b)
  %9827 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %9784
  store float %9826, float* %9827, align 4, !tbaa !107, !noalias !166
  %9828 = call float @dx.op.binary.f32(i32 35, float %9770, float %9822)  ; FMax(a,b)
  %9829 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %9784
  store float %9828, float* %9829, align 4, !tbaa !107, !noalias !166
  %9830 = add nsw i32 %9783, 1
  br label %9831

; <label>:9831                                    ; preds = %9825, %9821
  %9832 = phi i32 [ %9830, %9825 ], [ %9783, %9821 ]
  %9833 = add nuw nsw i32 %9784, 1
  %9834 = icmp eq i32 %9833, %9639
  br i1 %9834, label %9835, label %9782

; <label>:9835                                    ; preds = %9831
  %9836 = load float, float* %9776, align 4, !tbaa !107, !alias.scope !182, !noalias !185
  %9837 = load float, float* %9775, align 4, !tbaa !107, !alias.scope !188, !noalias !189
  %9838 = load float, float* %9774, align 4, !tbaa !107, !alias.scope !190, !noalias !191
  %9839 = load float, float* %9779, align 4, !tbaa !107, !alias.scope !192, !noalias !195
  %9840 = load float, float* %9778, align 4, !tbaa !107, !alias.scope !198, !noalias !199
  %9841 = load float, float* %9777, align 4, !tbaa !107, !alias.scope !200, !noalias !201
  br label %9842

; <label>:9842                                    ; preds = %9835, %9769
  %9843 = phi float [ -1.000000e+00, %9769 ], [ %9841, %9835 ]
  %9844 = phi float [ -1.000000e+00, %9769 ], [ %9840, %9835 ]
  %9845 = phi float [ -1.000000e+00, %9769 ], [ %9839, %9835 ]
  %9846 = phi float [ -1.000000e+00, %9769 ], [ %9838, %9835 ]
  %9847 = phi float [ -1.000000e+00, %9769 ], [ %9837, %9835 ]
  %9848 = phi float [ -1.000000e+00, %9769 ], [ %9836, %9835 ]
  %9849 = phi i32 [ 0, %9769 ], [ %9832, %9835 ]
  %9850 = call float @dx.op.binary.f32(i32 36, float %9847, float %9848)  ; FMin(a,b)
  %9851 = call float @dx.op.binary.f32(i32 36, float %9846, float %9850)  ; FMin(a,b)
  %9852 = call float @dx.op.binary.f32(i32 35, float %9846, float %9847)  ; FMax(a,b)
  %9853 = call float @dx.op.binary.f32(i32 36, float %9852, float %9848)  ; FMin(a,b)
  %9854 = call float @dx.op.binary.f32(i32 36, float %9846, float %9847)  ; FMin(a,b)
  %9855 = call float @dx.op.binary.f32(i32 35, float %9854, float %9853)  ; FMax(a,b)
  %9856 = call float @dx.op.binary.f32(i32 35, float %9847, float %9848)  ; FMax(a,b)
  %9857 = call float @dx.op.binary.f32(i32 35, float %9846, float %9856)  ; FMax(a,b)
  store float %9851, float* %9774, align 4, !tbaa !107, !alias.scope !190, !noalias !191
  store float %9855, float* %9775, align 4, !tbaa !107, !alias.scope !188, !noalias !189
  store float %9857, float* %9776, align 4, !tbaa !107, !alias.scope !182, !noalias !185
  %9858 = call float @dx.op.binary.f32(i32 36, float %9844, float %9845)  ; FMin(a,b)
  %9859 = call float @dx.op.binary.f32(i32 36, float %9843, float %9858)  ; FMin(a,b)
  %9860 = call float @dx.op.binary.f32(i32 35, float %9843, float %9844)  ; FMax(a,b)
  %9861 = call float @dx.op.binary.f32(i32 36, float %9860, float %9845)  ; FMin(a,b)
  %9862 = call float @dx.op.binary.f32(i32 36, float %9843, float %9844)  ; FMin(a,b)
  %9863 = call float @dx.op.binary.f32(i32 35, float %9862, float %9861)  ; FMax(a,b)
  %9864 = call float @dx.op.binary.f32(i32 35, float %9844, float %9845)  ; FMax(a,b)
  %9865 = call float @dx.op.binary.f32(i32 35, float %9843, float %9864)  ; FMax(a,b)
  store float %9859, float* %9777, align 4, !tbaa !107, !alias.scope !200, !noalias !201
  store float %9863, float* %9778, align 4, !tbaa !107, !alias.scope !198, !noalias !199
  store float %9865, float* %9779, align 4, !tbaa !107, !alias.scope !192, !noalias !195
  %9866 = sub nsw i32 3, %9849
  %9867 = icmp sgt i32 %9866, 2
  br i1 %9867, label %9868, label %9906

; <label>:9868                                    ; preds = %9842
  %9869 = icmp eq i32 %9637, 0
  %9870 = fsub fast float %9687, %9771
  %9871 = select i1 %9869, float %9870, float %9771
  %9872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9873 = extractvalue %dx.types.CBufRet.f32 %9872, 0
  %9874 = extractvalue %dx.types.CBufRet.f32 %9872, 1
  %9875 = extractvalue %dx.types.CBufRet.f32 %9872, 2
  %9876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9877 = extractvalue %dx.types.CBufRet.f32 %9876, 0
  %9878 = extractvalue %dx.types.CBufRet.f32 %9876, 1
  %9879 = extractvalue %dx.types.CBufRet.f32 %9876, 2
  %9880 = extractvalue %dx.types.CBufRet.f32 %9876, 3
  %9881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9882 = extractvalue %dx.types.CBufRet.f32 %9881, 3
  %9883 = call float @dx.op.binary.f32(i32 36, float %9772, float %9882)  ; FMin(a,b)
  %9884 = fmul fast float %9880, %9871
  %9885 = call float @dx.op.unary.f32(i32 7, float %9884)  ; Saturate(value)
  %9886 = fsub fast float %9877, %9873
  %9887 = fsub fast float %9878, %9874
  %9888 = fsub fast float %9879, %9875
  %9889 = fmul fast float %9885, %9886
  %9890 = fmul fast float %9885, %9887
  %9891 = fmul fast float %9885, %9888
  %9892 = fadd fast float %9889, %9873
  %9893 = fadd fast float %9890, %9874
  %9894 = fadd fast float %9891, %9875
  %9895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9896 = extractvalue %dx.types.CBufRet.f32 %9895, 0
  %9897 = extractvalue %dx.types.CBufRet.f32 %9895, 1
  %9898 = fadd fast float %9897, %9896
  %9899 = call float @dx.op.unary.f32(i32 7, float %9898)  ; Saturate(value)
  %9900 = extractvalue %dx.types.CBufRet.f32 %9895, 2
  %9901 = extractvalue %dx.types.CBufRet.f32 %9895, 3
  %9902 = fadd fast float %9901, %9900
  %9903 = call float @dx.op.unary.f32(i32 7, float %9902)  ; Saturate(value)
  %9904 = fmul fast float %9899, %9883
  %9905 = fmul fast float %9904, %9903
  br label %9988

; <label>:9906                                    ; preds = %9842
  %9907 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %9866
  %9908 = load float, float* %9907, align 4, !tbaa !107, !noalias !166
  %9909 = fcmp fast olt float %9908, %9773
  %9910 = icmp sgt i32 %9849, 0
  %9911 = and i1 %9910, %9909
  br i1 %9911, label %9912, label %9949

; <label>:9912                                    ; preds = %9906
  br label %9913

; <label>:9913                                    ; preds = %9942, %9912
  %9914 = phi float [ %9943, %9942 ], [ %9771, %9912 ]
  %9915 = phi float [ %9944, %9942 ], [ %9772, %9912 ]
  %9916 = phi float [ %9924, %9942 ], [ %9908, %9912 ]
  %9917 = phi i32 [ %9921, %9942 ], [ %9866, %9912 ]
  %9918 = getelementptr inbounds [3 x float], [3 x float]* %84, i32 0, i32 %9917
  %9919 = load float, float* %9918, align 4, !tbaa !107, !noalias !166
  %9920 = icmp slt i32 %9917, 2
  %9921 = add nsw i32 %9917, 1
  %9922 = getelementptr inbounds [3 x float], [3 x float]* %83, i32 0, i32 %9921
  %9923 = load float, float* %9922, align 4, !tbaa !107, !noalias !166
  %9924 = select i1 %9920, float %9923, float %9687
  %9925 = call float @dx.op.binary.f32(i32 36, float %9924, float %9919)  ; FMin(a,b)
  %9926 = call float @dx.op.binary.f32(i32 36, float %9773, float %9925)  ; FMin(a,b)
  %9927 = icmp eq i32 %9637, 0
  %9928 = fadd fast float %9926, %9916
  %9929 = fmul fast float %9928, %2950
  %9930 = fadd fast float %9929, %9631
  br i1 %9927, label %9936, label %9931

; <label>:9931                                    ; preds = %9913
  %9932 = fsub fast float %9926, %9916
  %9933 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9932)  ; FMax(a,b)
  %9934 = fmul fast float %9933, %9930
  %9935 = fadd fast float %9934, %9915
  br label %9942

; <label>:9936                                    ; preds = %9913
  %9937 = fsub fast float %9916, %9926
  %9938 = call float @dx.op.unary.f32(i32 6, float %9937)  ; FAbs(value)
  %9939 = fadd fast float %9938, %9914
  %9940 = fmul fast float %9938, %9930
  %9941 = fsub fast float %9915, %9940
  br label %9942

; <label>:9942                                    ; preds = %9936, %9931
  %9943 = phi float [ %9933, %9931 ], [ %9939, %9936 ]
  %9944 = phi float [ %9935, %9931 ], [ %9941, %9936 ]
  %9945 = fcmp fast olt float %9924, %9773
  %9946 = icmp slt i32 %9921, 3
  %9947 = and i1 %9946, %9945
  br i1 %9947, label %9913, label %9948

; <label>:9948                                    ; preds = %9942
  br label %9949

; <label>:9949                                    ; preds = %9948, %9906
  %9950 = phi float [ %9771, %9906 ], [ %9943, %9948 ]
  %9951 = phi float [ %9772, %9906 ], [ %9944, %9948 ]
  %9952 = fsub fast float %9687, %9950
  %9953 = select i1 %9689, float %9950, float %9952
  %9954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9955 = extractvalue %dx.types.CBufRet.f32 %9954, 0
  %9956 = extractvalue %dx.types.CBufRet.f32 %9954, 1
  %9957 = extractvalue %dx.types.CBufRet.f32 %9954, 2
  %9958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9959 = extractvalue %dx.types.CBufRet.f32 %9958, 0
  %9960 = extractvalue %dx.types.CBufRet.f32 %9958, 1
  %9961 = extractvalue %dx.types.CBufRet.f32 %9958, 2
  %9962 = extractvalue %dx.types.CBufRet.f32 %9958, 3
  %9963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9964 = extractvalue %dx.types.CBufRet.f32 %9963, 3
  %9965 = call float @dx.op.binary.f32(i32 36, float %9951, float %9964)  ; FMin(a,b)
  %9966 = fmul fast float %9962, %9953
  %9967 = call float @dx.op.unary.f32(i32 7, float %9966)  ; Saturate(value)
  %9968 = fsub fast float %9959, %9955
  %9969 = fsub fast float %9960, %9956
  %9970 = fsub fast float %9961, %9957
  %9971 = fmul fast float %9967, %9968
  %9972 = fmul fast float %9967, %9969
  %9973 = fmul fast float %9967, %9970
  %9974 = fadd fast float %9971, %9955
  %9975 = fadd fast float %9972, %9956
  %9976 = fadd fast float %9973, %9957
  %9977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9978 = extractvalue %dx.types.CBufRet.f32 %9977, 0
  %9979 = extractvalue %dx.types.CBufRet.f32 %9977, 1
  %9980 = fadd fast float %9979, %9978
  %9981 = call float @dx.op.unary.f32(i32 7, float %9980)  ; Saturate(value)
  %9982 = extractvalue %dx.types.CBufRet.f32 %9977, 2
  %9983 = extractvalue %dx.types.CBufRet.f32 %9977, 3
  %9984 = fadd fast float %9983, %9982
  %9985 = call float @dx.op.unary.f32(i32 7, float %9984)  ; Saturate(value)
  %9986 = fmul fast float %9981, %9965
  %9987 = fmul fast float %9986, %9985
  br label %9988

; <label>:9988                                    ; preds = %9949, %9868, %9703, %9685, %9683
  %9989 = phi float [ %9712, %9703 ], [ %9871, %9868 ], [ %9953, %9949 ], [ 0.000000e+00, %9683 ], [ 0.000000e+00, %9685 ]
  %9990 = phi float [ %9746, %9703 ], [ %9905, %9868 ], [ %9987, %9949 ], [ 0.000000e+00, %9683 ], [ 0.000000e+00, %9685 ]
  %9991 = phi float [ %9733, %9703 ], [ %9892, %9868 ], [ %9974, %9949 ], [ 0.000000e+00, %9683 ], [ 0.000000e+00, %9685 ]
  %9992 = phi float [ %9734, %9703 ], [ %9893, %9868 ], [ %9975, %9949 ], [ 0.000000e+00, %9683 ], [ 0.000000e+00, %9685 ]
  %9993 = phi float [ %9735, %9703 ], [ %9894, %9868 ], [ %9976, %9949 ], [ 0.000000e+00, %9683 ], [ 0.000000e+00, %9685 ]
  %9994 = fmul fast float %9626, %9990
  %9995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9996 = extractvalue %dx.types.CBufRet.f32 %9995, 2
  %9997 = fsub fast float %9633, %9996
  %9998 = fcmp fast olt float %9994, -2.000000e+01
  %9999 = call float @dx.op.unary.f32(i32 21, float %9994)  ; Exp(value)
  %10000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10001 = extractvalue %dx.types.CBufRet.f32 %10000, 2
  %10002 = extractvalue %dx.types.CBufRet.f32 %10000, 3
  %10003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10004 = extractvalue %dx.types.CBufRet.f32 %10003, 2
  %10005 = fmul fast float %10002, %9997
  %10006 = call float @dx.op.unary.f32(i32 7, float %10005)  ; Saturate(value)
  %10007 = fsub fast float 1.000000e+00, %10006
  %10008 = fmul fast float %2950, 5.000000e-01
  %10009 = fadd fast float %10008, 5.000000e-01
  %10010 = call float @dx.op.unary.f32(i32 7, float %10009)  ; Saturate(value)
  %10011 = fsub fast float 1.000000e+00, %10010
  %10012 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10007)  ; FMax(a,b)
  %10013 = fdiv fast float %10011, %10012
  %10014 = fsub fast float %9997, %565
  %10015 = call float @dx.op.unary.f32(i32 6, float %10014)  ; FAbs(value)
  %10016 = fmul fast float %10015, %10001
  %10017 = call float @dx.op.unary.f32(i32 7, float %10013)  ; Saturate(value)
  %10018 = fsub fast float 1.000000e+00, %10016
  %10019 = fmul fast float %10018, %10017
  %10020 = fadd fast float %10019, %10016
  %10021 = fmul fast float %10004, %9997
  %10022 = call float @dx.op.unary.f32(i32 7, float %10021)  ; Saturate(value)
  %10023 = fsub fast float 1.000000e+00, %10020
  %10024 = fmul fast float %10023, %10022
  %10025 = fadd fast float %10024, %10020
  %10026 = call float @dx.op.unary.f32(i32 7, float %10025)  ; Saturate(value)
  %10027 = fadd fast float %9999, -1.000000e+00
  %10028 = select i1 %9998, float -1.000000e+00, float %10027
  %10029 = fmul fast float %10026, %10028
  %10030 = fadd fast float %10029, 1.000000e+00
  %10031 = fsub fast float -0.000000e+00, %10029
  %10032 = fmul fast float %9991, %10031
  %10033 = fmul fast float %9992, %10031
  %10034 = fmul fast float %9993, %10031
  br label %10035

; <label>:10035                                   ; preds = %9988, %9589
  %10036 = phi float [ %9989, %9988 ], [ 0.000000e+00, %9589 ]
  %10037 = phi float [ %10030, %9988 ], [ 1.000000e+00, %9589 ]
  %10038 = phi float [ %10032, %9988 ], [ 0.000000e+00, %9589 ]
  %10039 = phi float [ %10033, %9988 ], [ 0.000000e+00, %9589 ]
  %10040 = phi float [ %10034, %9988 ], [ 0.000000e+00, %9589 ]
  %10041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10042 = extractvalue %dx.types.CBufRet.f32 %10041, 1
  %10043 = fsub fast float 1.000000e+00, %10037
  %10044 = fmul fast float %10043, %9619
  %10045 = fmul fast float %10044, %10042
  %10046 = fsub fast float %9619, %10045
  br i1 %9617, label %10047, label %10076, !dx.controlflow.hints !202

; <label>:10047                                   ; preds = %10035
  %10048 = fmul fast float %9620, %9614
  %10049 = fadd fast float %10048, %9615
  %10050 = call float @dx.op.unary.f32(i32 7, float %10049)  ; Saturate(value)
  %10051 = fmul fast float %9596, %10046
  %10052 = fsub fast float -0.000000e+00, %10051
  %10053 = fmul fast float %9597, %10046
  %10054 = fsub fast float -0.000000e+00, %10053
  %10055 = call float @dx.op.unary.f32(i32 21, float %10052)  ; Exp(value)
  %10056 = call float @dx.op.unary.f32(i32 21, float %10054)  ; Exp(value)
  %10057 = call float @dx.op.binary.f32(i32 35, float %9604, float %10055)  ; FMax(a,b)
  %10058 = call float @dx.op.binary.f32(i32 35, float %9604, float %10056)  ; FMax(a,b)
  %10059 = fsub fast float %10058, %10057
  %10060 = fmul fast float %10059, %10050
  %10061 = fadd fast float %10060, %10057
  %10062 = call float @dx.op.unary.f32(i32 7, float %10061)  ; Saturate(value)
  %10063 = fsub fast float %9601, %9606
  %10064 = fsub fast float %9602, %9607
  %10065 = fsub fast float %9603, %9608
  %10066 = fmul fast float %10050, %10063
  %10067 = fmul fast float %10050, %10064
  %10068 = fmul fast float %10050, %10065
  %10069 = fadd fast float %10066, %9606
  %10070 = fadd fast float %10067, %9607
  %10071 = fadd fast float %10068, %9608
  %10072 = fsub fast float 1.000000e+00, %10062
  %10073 = fmul fast float %10072, %10069
  %10074 = fmul fast float %10072, %10070
  %10075 = fmul fast float %10072, %10071
  br label %10135

; <label>:10076                                   ; preds = %10035
  %10077 = fmul fast float %10046, %9613
  %10078 = call float @dx.op.unary.f32(i32 7, float %10077)  ; Saturate(value)
  %10079 = fsub fast float 2.000000e+00, %10078
  %10080 = fmul fast float %10078, 9.921875e-01
  %10081 = fmul fast float %10080, %10079
  %10082 = fadd fast float %10081, 3.906250e-03
  %10083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %63, float %10082, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10084 = extractvalue %dx.types.ResRet.f32 %10083, 0
  %10085 = fsub fast float %10078, %10084
  %10086 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10085)  ; FMax(a,b)
  %10087 = fmul fast float %9599, %565
  %10088 = call float @dx.op.unary.f32(i32 6, float %10087)  ; FAbs(value)
  %10089 = fcmp fast ogt float %10088, 0x3EB0C6F7A0000000
  br i1 %10089, label %10090, label %10096, !dx.controlflow.hints !203

; <label>:10090                                   ; preds = %10076
  %10091 = fmul fast float %10087, 0xBFF7154760000000
  %10092 = call float @dx.op.unary.f32(i32 21, float %10091)  ; Exp(value)
  %10093 = fsub fast float 1.000000e+00, %10092
  %10094 = fdiv fast float %10093, %10087
  %10095 = fmul fast float %10094, %9609
  br label %10096

; <label>:10096                                   ; preds = %10090, %10076
  %10097 = phi float [ %10095, %10090 ], [ %9609, %10076 ]
  %10098 = fadd fast float %10097, %9611
  %10099 = fmul fast float %10098, %10086
  %10100 = fmul fast float %9596, %10099
  %10101 = fsub fast float -0.000000e+00, %10100
  %10102 = fmul fast float %9597, %10099
  %10103 = fsub fast float -0.000000e+00, %10102
  %10104 = fmul fast float %9598, %10099
  %10105 = fsub fast float -0.000000e+00, %10104
  %10106 = call float @dx.op.unary.f32(i32 21, float %10101)  ; Exp(value)
  %10107 = call float @dx.op.unary.f32(i32 21, float %10103)  ; Exp(value)
  %10108 = call float @dx.op.unary.f32(i32 21, float %10105)  ; Exp(value)
  %10109 = fmul fast float %9620, %9620
  %10110 = fadd fast float %10109, 1.000000e+00
  %10111 = fmul fast float %10110, 0x3FAE8EC8A0000000
  %10112 = fmul fast float %10111, %9606
  %10113 = fmul fast float %10111, %9607
  %10114 = fmul fast float %10111, %9608
  %10115 = fmul fast float %9620, %9604
  %10116 = fsub fast float 1.000000e+00, %10115
  %10117 = fmul fast float %9604, %9604
  %10118 = fsub fast float 1.000000e+00, %10117
  %10119 = fmul fast float %10118, 0x3FB45F3060000000
  %10120 = fmul fast float %10116, %10116
  %10121 = fdiv fast float 1.000000e+00, %10120
  %10122 = fmul fast float %10119, %10121
  %10123 = fmul fast float %10122, %9601
  %10124 = fmul fast float %10122, %9602
  %10125 = fmul fast float %10122, %9603
  %10126 = fadd fast float %10123, %10112
  %10127 = fadd fast float %10124, %10113
  %10128 = fadd fast float %10125, %10114
  %10129 = fsub fast float 1.000000e+00, %10106
  %10130 = fsub fast float 1.000000e+00, %10107
  %10131 = fsub fast float 1.000000e+00, %10108
  %10132 = fmul fast float %10126, %10129
  %10133 = fmul fast float %10127, %10130
  %10134 = fmul fast float %10128, %10131
  br label %10135

; <label>:10135                                   ; preds = %10096, %10047
  %10136 = phi float [ %10073, %10047 ], [ %10132, %10096 ]
  %10137 = phi float [ %10074, %10047 ], [ %10133, %10096 ]
  %10138 = phi float [ %10075, %10047 ], [ %10134, %10096 ]
  %10139 = phi float [ %10062, %10047 ], [ %10106, %10096 ]
  %10140 = phi float [ %10062, %10047 ], [ %10107, %10096 ]
  %10141 = phi float [ %10062, %10047 ], [ %10108, %10096 ]
  br i1 %9628, label %10142, label %10340, !dx.controlflow.hints !204

; <label>:10142                                   ; preds = %10135
  %10143 = extractvalue %dx.types.CBufRet.f32 %10041, 0
  %10144 = fmul fast float %10143, %10043
  %10145 = fsub fast float %10038, %10136
  %10146 = fsub fast float %10039, %10137
  %10147 = fsub fast float %10040, %10138
  %10148 = fmul fast float %10144, %10145
  %10149 = fmul fast float %10144, %10146
  %10150 = fmul fast float %10144, %10147
  %10151 = fadd fast float %10148, %10136
  %10152 = fadd fast float %10149, %10137
  %10153 = fadd fast float %10150, %10138
  %10154 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10139)  ; FMax(a,b)
  %10155 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10140)  ; FMax(a,b)
  %10156 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10141)  ; FMax(a,b)
  %10157 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10037)  ; FMax(a,b)
  %10158 = call float @dx.op.binary.f32(i32 35, float %10036, float %10046)  ; FMax(a,b)
  %10159 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10158)  ; FMax(a,b)
  %10160 = fdiv fast float %10036, %10159
  %10161 = call float @dx.op.unary.f32(i32 7, float %10160)  ; Saturate(value)
  %10162 = fdiv fast float %10046, %10159
  %10163 = call float @dx.op.unary.f32(i32 7, float %10162)  ; Saturate(value)
  %10164 = fcmp fast une float %10157, 1.000000e+00
  br i1 %10164, label %10165, label %10178, !dx.controlflow.hints !205

; <label>:10165                                   ; preds = %10142
  %10166 = call float @dx.op.unary.f32(i32 23, float %10157)  ; Log(value)
  %10167 = fmul fast float %10166, 0x3FE62E4300000000
  %10168 = fmul fast float %10038, %10167
  %10169 = fsub fast float -0.000000e+00, %10168
  %10170 = fmul fast float %10039, %10167
  %10171 = fsub fast float -0.000000e+00, %10170
  %10172 = fmul fast float %10040, %10167
  %10173 = fsub fast float -0.000000e+00, %10172
  %10174 = fsub fast float 1.000000e+00, %10157
  %10175 = fdiv fast float %10169, %10174
  %10176 = fdiv fast float %10171, %10174
  %10177 = fdiv fast float %10173, %10174
  br label %10178

; <label>:10178                                   ; preds = %10165, %10142
  %10179 = phi float [ %10175, %10165 ], [ %10038, %10142 ]
  %10180 = phi float [ %10176, %10165 ], [ %10039, %10142 ]
  %10181 = phi float [ %10177, %10165 ], [ %10040, %10142 ]
  %10182 = phi float [ %10167, %10165 ], [ 0.000000e+00, %10142 ]
  %10183 = fcmp fast une float %10154, 1.000000e+00
  br i1 %10183, label %10184, label %10191, !dx.controlflow.hints !206

; <label>:10184                                   ; preds = %10178
  %10185 = call float @dx.op.unary.f32(i32 23, float %10154)  ; Log(value)
  %10186 = fmul fast float %10185, 0x3FE62E4300000000
  %10187 = fmul fast float %10151, %10186
  %10188 = fsub fast float -0.000000e+00, %10187
  %10189 = fsub fast float 1.000000e+00, %10154
  %10190 = fdiv fast float %10188, %10189
  br label %10191

; <label>:10191                                   ; preds = %10184, %10178
  %10192 = phi float [ %10190, %10184 ], [ %10151, %10178 ]
  %10193 = phi float [ %10186, %10184 ], [ 0.000000e+00, %10178 ]
  %10194 = fcmp fast une float %10155, 1.000000e+00
  br i1 %10194, label %10195, label %10202, !dx.controlflow.hints !206

; <label>:10195                                   ; preds = %10191
  %10196 = call float @dx.op.unary.f32(i32 23, float %10155)  ; Log(value)
  %10197 = fmul fast float %10196, 0x3FE62E4300000000
  %10198 = fmul fast float %10152, %10197
  %10199 = fsub fast float -0.000000e+00, %10198
  %10200 = fsub fast float 1.000000e+00, %10155
  %10201 = fdiv fast float %10199, %10200
  br label %10202

; <label>:10202                                   ; preds = %10195, %10191
  %10203 = phi float [ %10201, %10195 ], [ %10152, %10191 ]
  %10204 = phi float [ %10197, %10195 ], [ 0.000000e+00, %10191 ]
  %10205 = fcmp fast une float %10156, 1.000000e+00
  br i1 %10205, label %10206, label %10213, !dx.controlflow.hints !206

; <label>:10206                                   ; preds = %10202
  %10207 = call float @dx.op.unary.f32(i32 23, float %10156)  ; Log(value)
  %10208 = fmul fast float %10207, 0x3FE62E4300000000
  %10209 = fmul fast float %10153, %10208
  %10210 = fsub fast float -0.000000e+00, %10209
  %10211 = fsub fast float 1.000000e+00, %10156
  %10212 = fdiv fast float %10210, %10211
  br label %10213

; <label>:10213                                   ; preds = %10206, %10202
  %10214 = phi float [ %10212, %10206 ], [ %10153, %10202 ]
  %10215 = phi float [ %10208, %10206 ], [ 0.000000e+00, %10202 ]
  %10216 = fmul fast float %10179, %10163
  %10217 = fmul fast float %10180, %10163
  %10218 = fmul fast float %10181, %10163
  %10219 = fmul fast float %10182, %10163
  %10220 = fmul fast float %10192, %10161
  %10221 = fmul fast float %10203, %10161
  %10222 = fmul fast float %10214, %10161
  %10223 = fmul fast float %10193, %10161
  %10224 = fmul fast float %10204, %10161
  %10225 = fmul fast float %10215, %10161
  %10226 = fadd fast float %10220, %10216
  %10227 = fadd fast float %10221, %10217
  %10228 = fadd fast float %10222, %10218
  %10229 = fadd fast float %10223, %10219
  %10230 = fadd fast float %10224, %10219
  %10231 = fadd fast float %10225, %10219
  %10232 = fcmp fast une float %10229, 0.000000e+00
  br i1 %10232, label %10233, label %10240, !dx.controlflow.hints !207

; <label>:10233                                   ; preds = %10213
  %10234 = fmul fast float %10229, 0x3FF7154760000000
  %10235 = call float @dx.op.unary.f32(i32 21, float %10234)  ; Exp(value)
  %10236 = fsub fast float 1.000000e+00, %10235
  %10237 = fmul fast float %10226, %10236
  %10238 = fsub fast float -0.000000e+00, %10237
  %10239 = fdiv fast float %10238, %10229
  br label %10240

; <label>:10240                                   ; preds = %10233, %10213
  %10241 = phi float [ %10235, %10233 ], [ 1.000000e+00, %10213 ]
  %10242 = phi float [ %10239, %10233 ], [ %10226, %10213 ]
  %10243 = fcmp fast une float %10230, 0.000000e+00
  br i1 %10243, label %10244, label %10251, !dx.controlflow.hints !207

; <label>:10244                                   ; preds = %10240
  %10245 = fmul fast float %10230, 0x3FF7154760000000
  %10246 = call float @dx.op.unary.f32(i32 21, float %10245)  ; Exp(value)
  %10247 = fsub fast float 1.000000e+00, %10246
  %10248 = fmul fast float %10227, %10247
  %10249 = fsub fast float -0.000000e+00, %10248
  %10250 = fdiv fast float %10249, %10230
  br label %10251

; <label>:10251                                   ; preds = %10244, %10240
  %10252 = phi float [ %10246, %10244 ], [ 1.000000e+00, %10240 ]
  %10253 = phi float [ %10250, %10244 ], [ %10227, %10240 ]
  %10254 = fcmp fast une float %10231, 0.000000e+00
  br i1 %10254, label %10255, label %10262, !dx.controlflow.hints !207

; <label>:10255                                   ; preds = %10251
  %10256 = fmul fast float %10231, 0x3FF7154760000000
  %10257 = call float @dx.op.unary.f32(i32 21, float %10256)  ; Exp(value)
  %10258 = fsub fast float 1.000000e+00, %10257
  %10259 = fmul fast float %10228, %10258
  %10260 = fsub fast float -0.000000e+00, %10259
  %10261 = fdiv fast float %10260, %10231
  br label %10262

; <label>:10262                                   ; preds = %10255, %10251
  %10263 = phi float [ %10257, %10255 ], [ 1.000000e+00, %10251 ]
  %10264 = phi float [ %10261, %10255 ], [ %10228, %10251 ]
  %10265 = fcmp fast ogt float %10161, %10163
  br i1 %10265, label %10266, label %10286

; <label>:10266                                   ; preds = %10262
  %10267 = fsub fast float 1.000000e+00, %10163
  %10268 = fmul fast float %10179, %10267
  %10269 = fmul fast float %10180, %10267
  %10270 = fmul fast float %10181, %10267
  %10271 = fmul fast float %10182, %10267
  %10272 = fcmp fast une float %10271, 0.000000e+00
  br i1 %10272, label %10273, label %10324, !dx.controlflow.hints !208

; <label>:10273                                   ; preds = %10266
  %10274 = fmul fast float %10271, 0x3FF7154760000000
  %10275 = call float @dx.op.unary.f32(i32 21, float %10274)  ; Exp(value)
  %10276 = fsub fast float 1.000000e+00, %10275
  %10277 = fmul fast float %10268, %10276
  %10278 = fsub fast float -0.000000e+00, %10277
  %10279 = fmul fast float %10269, %10276
  %10280 = fsub fast float -0.000000e+00, %10279
  %10281 = fmul fast float %10270, %10276
  %10282 = fsub fast float -0.000000e+00, %10281
  %10283 = fdiv fast float %10278, %10271
  %10284 = fdiv fast float %10280, %10271
  %10285 = fdiv fast float %10282, %10271
  br label %10324

; <label>:10286                                   ; preds = %10262
  %10287 = fsub fast float 1.000000e+00, %10161
  %10288 = fmul fast float %10192, %10287
  %10289 = fmul fast float %10203, %10287
  %10290 = fmul fast float %10214, %10287
  %10291 = fmul fast float %10193, %10287
  %10292 = fmul fast float %10204, %10287
  %10293 = fmul fast float %10215, %10287
  %10294 = fcmp fast une float %10291, 0.000000e+00
  br i1 %10294, label %10295, label %10302, !dx.controlflow.hints !207

; <label>:10295                                   ; preds = %10286
  %10296 = fmul fast float %10291, 0x3FF7154760000000
  %10297 = call float @dx.op.unary.f32(i32 21, float %10296)  ; Exp(value)
  %10298 = fsub fast float 1.000000e+00, %10297
  %10299 = fmul fast float %10288, %10298
  %10300 = fsub fast float -0.000000e+00, %10299
  %10301 = fdiv fast float %10300, %10291
  br label %10302

; <label>:10302                                   ; preds = %10295, %10286
  %10303 = phi float [ %10301, %10295 ], [ %10288, %10286 ]
  %10304 = phi float [ %10297, %10295 ], [ 1.000000e+00, %10286 ]
  %10305 = fcmp fast une float %10292, 0.000000e+00
  br i1 %10305, label %10306, label %10313, !dx.controlflow.hints !207

; <label>:10306                                   ; preds = %10302
  %10307 = fmul fast float %10292, 0x3FF7154760000000
  %10308 = call float @dx.op.unary.f32(i32 21, float %10307)  ; Exp(value)
  %10309 = fsub fast float 1.000000e+00, %10308
  %10310 = fmul fast float %10289, %10309
  %10311 = fsub fast float -0.000000e+00, %10310
  %10312 = fdiv fast float %10311, %10292
  br label %10313

; <label>:10313                                   ; preds = %10306, %10302
  %10314 = phi float [ %10312, %10306 ], [ %10289, %10302 ]
  %10315 = phi float [ %10308, %10306 ], [ 1.000000e+00, %10302 ]
  %10316 = fcmp fast une float %10293, 0.000000e+00
  br i1 %10316, label %10317, label %10324, !dx.controlflow.hints !207

; <label>:10317                                   ; preds = %10313
  %10318 = fmul fast float %10293, 0x3FF7154760000000
  %10319 = call float @dx.op.unary.f32(i32 21, float %10318)  ; Exp(value)
  %10320 = fsub fast float 1.000000e+00, %10319
  %10321 = fmul fast float %10290, %10320
  %10322 = fsub fast float -0.000000e+00, %10321
  %10323 = fdiv fast float %10322, %10293
  br label %10324

; <label>:10324                                   ; preds = %10317, %10313, %10273, %10266
  %10325 = phi float [ %10323, %10317 ], [ %10285, %10273 ], [ %10270, %10266 ], [ %10290, %10313 ]
  %10326 = phi float [ %10314, %10317 ], [ %10284, %10273 ], [ %10269, %10266 ], [ %10314, %10313 ]
  %10327 = phi float [ %10303, %10317 ], [ %10283, %10273 ], [ %10268, %10266 ], [ %10303, %10313 ]
  %10328 = phi float [ %10319, %10317 ], [ %10275, %10273 ], [ 1.000000e+00, %10266 ], [ 1.000000e+00, %10313 ]
  %10329 = phi float [ %10315, %10317 ], [ %10275, %10273 ], [ 1.000000e+00, %10266 ], [ %10315, %10313 ]
  %10330 = phi float [ %10304, %10317 ], [ %10275, %10273 ], [ 1.000000e+00, %10266 ], [ %10304, %10313 ]
  %10331 = fmul fast float %10330, %10242
  %10332 = fmul fast float %10329, %10253
  %10333 = fmul fast float %10328, %10264
  %10334 = fadd fast float %10331, %10327
  %10335 = fadd fast float %10332, %10326
  %10336 = fadd fast float %10333, %10325
  %10337 = fmul fast float %10330, %10241
  %10338 = fmul fast float %10329, %10252
  %10339 = fmul fast float %10328, %10263
  br label %10340

; <label>:10340                                   ; preds = %10324, %10135
  %10341 = phi float [ %10339, %10324 ], [ %10141, %10135 ]
  %10342 = phi float [ %10338, %10324 ], [ %10140, %10135 ]
  %10343 = phi float [ %10337, %10324 ], [ %10139, %10135 ]
  %10344 = phi float [ %10336, %10324 ], [ %10138, %10135 ]
  %10345 = phi float [ %10335, %10324 ], [ %10137, %10135 ]
  %10346 = phi float [ %10334, %10324 ], [ %10136, %10135 ]
  %10347 = call float @dx.op.dot3.f32(i32 55, float %10343, float %10342, float %10341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10348 = call float @dx.op.dot3.f32(i32 55, float %10346, float %10345, float %10344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10349 = select i1 %3154, float %10347, float %10343
  %10350 = select i1 %3154, float %10347, float %10342
  %10351 = select i1 %3154, float 1.000000e+00, float %10341
  %10352 = select i1 %3154, float %10348, float %10346
  %10353 = select i1 %3154, float 0.000000e+00, float %10345
  %10354 = select i1 %3154, float 0.000000e+00, float %10344
  %10355 = fmul fast float %10349, %9584
  %10356 = fmul fast float %10350, %9586
  %10357 = fmul fast float %10351, %9588
  %10358 = fadd fast float %10355, %10352
  %10359 = fadd fast float %10356, %10353
  %10360 = fadd fast float %10354, %10357
  %10361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %10362 = extractvalue %dx.types.CBufRet.f32 %10361, 2
  %10363 = extractvalue %dx.types.CBufRet.f32 %10361, 3
  %10364 = fmul fast float %10362, %91
  %10365 = fmul fast float %10363, %92
  %10366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %63, float %10364, float %10365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10367 = extractvalue %dx.types.ResRet.f32 %10366, 0
  %10368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %63, float %10364, float %10365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10369 = extractvalue %dx.types.ResRet.f32 %10368, 0
  %10370 = extractvalue %dx.types.ResRet.f32 %10368, 1
  %10371 = extractvalue %dx.types.ResRet.f32 %10368, 2
  %10372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10373 = extractvalue %dx.types.CBufRet.f32 %10372, 1
  %10374 = fmul fast float %10373, %10369
  %10375 = fmul fast float %10373, %10370
  %10376 = fmul fast float %10373, %10371
  %10377 = fmul fast float %10367, %10343
  %10378 = call float @dx.op.dot3.f32(i32 55, float %10367, float %10367, float %10367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10379 = call float @dx.op.dot3.f32(i32 55, float %10374, float %10375, float %10376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10380 = select i1 %3154, float %10378, float %10367
  %10381 = select i1 %3154, float 1.000000e+00, float %10367
  %10382 = select i1 %3154, float %10379, float %10374
  %10383 = select i1 %3154, float 0.000000e+00, float %10375
  %10384 = select i1 %3154, float 0.000000e+00, float %10376
  %10385 = fmul fast float %10380, %10358
  %10386 = fmul fast float %10380, %10359
  %10387 = fmul fast float %10381, %10360
  %10388 = fadd fast float %10385, %10382
  %10389 = fadd fast float %10386, %10383
  %10390 = fadd fast float %10384, %10387
  br label %10391

; <label>:10391                                   ; preds = %10340, %9557
  %10392 = phi float [ %9584, %9557 ], [ %10388, %10340 ]
  %10393 = phi float [ %9586, %9557 ], [ %10389, %10340 ]
  %10394 = phi float [ %9588, %9557 ], [ %10390, %10340 ]
  %10395 = phi float [ 1.000000e+00, %9557 ], [ %10377, %10340 ]
  %10396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %10397 = extractvalue %dx.types.CBufRet.f32 %10396, 2
  %10398 = extractvalue %dx.types.CBufRet.f32 %10396, 3
  %10399 = fmul fast float %10397, %91
  %10400 = fmul fast float %10398, %92
  %10401 = call float @dx.op.unary.f32(i32 7, float %10399)  ; Saturate(value)
  %10402 = call float @dx.op.unary.f32(i32 7, float %10400)  ; Saturate(value)
  %10403 = lshr exact i32 %102, 23
  %10404 = xor i32 %10403, 2
  %10405 = or i32 %10404, 1
  %10406 = uitofp i32 %10405 to float
  %10407 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %10401, float %10402, float %10406, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10408 = extractvalue %dx.types.ResRet.f32 %10407, 0
  %10409 = extractvalue %dx.types.ResRet.f32 %10407, 1
  %10410 = extractvalue %dx.types.ResRet.f32 %10407, 2
  %10411 = extractvalue %dx.types.ResRet.f32 %10407, 3
  %10412 = add nuw nsw i32 %10404, 2
  %10413 = uitofp i32 %10412 to float
  %10414 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %10401, float %10402, float %10413, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10415 = extractvalue %dx.types.ResRet.f32 %10414, 0
  %10416 = extractvalue %dx.types.ResRet.f32 %10414, 1
  %10417 = extractvalue %dx.types.ResRet.f32 %10414, 2
  %10418 = extractvalue %dx.types.ResRet.f32 %10414, 3
  %10419 = call float @dx.op.binary.f32(i32 35, float %10409, float %10410)  ; FMax(a,b)
  %10420 = call float @dx.op.binary.f32(i32 35, float %10408, float %10419)  ; FMax(a,b)
  %10421 = call float @dx.op.binary.f32(i32 35, float %10420, float %10411)  ; FMax(a,b)
  %10422 = call float @dx.op.binary.f32(i32 36, float %10416, float %10417)  ; FMin(a,b)
  %10423 = call float @dx.op.binary.f32(i32 36, float %10415, float %10422)  ; FMin(a,b)
  %10424 = call float @dx.op.binary.f32(i32 36, float %10423, float %10418)  ; FMin(a,b)
  %10425 = fmul fast float %10421, 2.550000e+02
  %10426 = fadd fast float %10425, 0x3F70101020000000
  %10427 = fptoui float %10426 to i32
  %10428 = fmul fast float %10424, 2.550000e+02
  %10429 = fadd fast float %10428, 0x3F70101020000000
  %10430 = fptoui float %10429 to i32
  %10431 = icmp ult i32 %10427, %10430
  br i1 %10431, label %10432, label %10482

; <label>:10432                                   ; preds = %10391
  %10433 = fadd fast float %524, -4.000000e+00
  %10434 = call float @dx.op.binary.f32(i32 35, float %10433, float 0.000000e+00)  ; FMax(a,b)
  %10435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10436 = extractvalue %dx.types.CBufRet.f32 %10435, 0
  %10437 = fadd fast float %10436, %10434
  %10438 = extractvalue %dx.types.CBufRet.f32 %10435, 2
  %10439 = fmul fast float %10437, %10438
  %10440 = call float @dx.op.unary.f32(i32 23, float %10439)  ; Log(value)
  %10441 = extractvalue %dx.types.CBufRet.f32 %10435, 3
  %10442 = fmul fast float %10441, %10440
  %10443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10444 = extractvalue %dx.types.CBufRet.f32 %10443, 2
  %10445 = fmul fast float %10442, %10444
  %10446 = call float @dx.op.unary.f32(i32 7, float %10445)  ; Saturate(value)
  %10447 = uitofp i32 %10427 to float
  %10448 = uitofp i32 %10430 to float
  %10449 = fadd fast float %10447, 5.000000e-01
  %10450 = fadd fast float %10448, 5.000000e-01
  %10451 = fmul fast float %10444, %10449
  %10452 = fmul fast float %10444, %10450
  %10453 = fadd fast float %10451, 0x3F0FFB4800000000
  %10454 = fadd fast float %10452, 0xBF0FFB4800000000
  %10455 = call float @dx.op.binary.f32(i32 35, float %10446, float %10453)  ; FMax(a,b)
  %10456 = call float @dx.op.binary.f32(i32 36, float %10455, float %10454)  ; FMin(a,b)
  %10457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10458 = extractvalue %dx.types.CBufRet.f32 %10457, 1
  %10459 = extractvalue %dx.types.CBufRet.f32 %10457, 2
  %10460 = extractvalue %dx.types.CBufRet.f32 %10457, 0
  %10461 = select i1 %103, float 0.000000e+00, float %10460
  %10462 = fmul fast float %10458, %10456
  %10463 = fadd fast float %10461, %10462
  %10464 = fadd fast float %10461, %10459
  %10465 = fsub fast float %10458, %10459
  %10466 = fadd fast float %10465, %10461
  %10467 = call float @dx.op.binary.f32(i32 35, float %10463, float %10464)  ; FMax(a,b)
  %10468 = call float @dx.op.binary.f32(i32 36, float %10467, float %10466)  ; FMin(a,b)
  %10469 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %10401, float %10402, float %10468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10470 = extractvalue %dx.types.ResRet.f32 %10469, 0
  %10471 = extractvalue %dx.types.ResRet.f32 %10469, 1
  %10472 = extractvalue %dx.types.ResRet.f32 %10469, 2
  %10473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %10401, float %10402, float %10468, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10474 = extractvalue %dx.types.ResRet.f32 %10473, 0
  %10475 = extractvalue %dx.types.ResRet.f32 %10473, 1
  %10476 = extractvalue %dx.types.ResRet.f32 %10473, 2
  %10477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10478 = extractvalue %dx.types.CBufRet.f32 %10477, 1
  %10479 = fmul fast float %10478, %10474
  %10480 = fmul fast float %10478, %10475
  %10481 = fmul fast float %10478, %10476
  br label %10482

; <label>:10482                                   ; preds = %10432, %10391
  %10483 = phi float [ %10470, %10432 ], [ 1.000000e+00, %10391 ]
  %10484 = phi float [ %10471, %10432 ], [ 1.000000e+00, %10391 ]
  %10485 = phi float [ %10472, %10432 ], [ 1.000000e+00, %10391 ]
  %10486 = phi float [ %10479, %10432 ], [ 0.000000e+00, %10391 ]
  %10487 = phi float [ %10480, %10432 ], [ 0.000000e+00, %10391 ]
  %10488 = phi float [ %10481, %10432 ], [ 0.000000e+00, %10391 ]
  %10489 = fmul fast float %10483, %10395
  %10490 = call float @dx.op.dot3.f32(i32 55, float %10483, float %10484, float %10485, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10491 = call float @dx.op.dot3.f32(i32 55, float %10486, float %10487, float %10488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10492 = select i1 %3154, float %10490, float %10483
  %10493 = select i1 %3154, float %10490, float %10484
  %10494 = select i1 %3154, float 1.000000e+00, float %10485
  %10495 = select i1 %3154, float %10491, float %10486
  %10496 = select i1 %3154, float 0.000000e+00, float %10487
  %10497 = select i1 %3154, float 0.000000e+00, float %10488
  %10498 = fmul fast float %10492, %10392
  %10499 = fmul fast float %10493, %10393
  %10500 = fmul fast float %10494, %10394
  %10501 = fadd fast float %10498, %10495
  %10502 = fadd fast float %10499, %10496
  %10503 = fadd fast float %10497, %10500
  %10504 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10505 = extractvalue %dx.types.CBufRet.i32 %10504, 3
  %10506 = and i32 %10505, 3
  %10507 = icmp ne i32 %10506, 0
  %10508 = and i32 %10505, 4
  %10509 = icmp ne i32 %10508, 0
  %10510 = and i1 %10507, %10509
  %10511 = and i1 %3154, %10510
  br i1 %10511, label %10512, label %10518

; <label>:10512                                   ; preds = %10482
  %10513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10514 = extractvalue %dx.types.CBufRet.f32 %10513, 1
  %10515 = fadd fast float %10489, -1.000000e+00
  %10516 = fmul fast float %10514, %10515
  %10517 = fadd fast float %10516, 1.000000e+00
  br label %10518

; <label>:10518                                   ; preds = %10512, %10482
  %10519 = phi float [ %10517, %10512 ], [ %10489, %10482 ]
  %10520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10521 = extractvalue %dx.types.CBufRet.f32 %10520, 0
  br i1 %3154, label %10522, label %10536

; <label>:10522                                   ; preds = %10518
  %10523 = fadd fast float %10501, %10502
  %10524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10525 = extractvalue %dx.types.CBufRet.f32 %10524, 3
  %10526 = extractvalue %dx.types.CBufRet.f32 %9568, 1
  %10527 = fsub fast float %9574, %9562
  %10528 = fadd fast float %10527, %9575
  %10529 = fsub fast float %10528, %10526
  %10530 = extractvalue %dx.types.CBufRet.f32 %9568, 2
  %10531 = fmul fast float %10529, %10530
  %10532 = call float @dx.op.unary.f32(i32 7, float %10531)  ; Saturate(value)
  %10533 = fsub fast float %10532, %10525
  %10534 = fmul fast float %10533, %10519
  %10535 = fadd fast float %10534, %10525
  br label %10539

; <label>:10536                                   ; preds = %10518
  %10537 = fmul fast float %10521, %10502
  %10538 = fmul fast float %10521, %10503
  br label %10539

; <label>:10539                                   ; preds = %10536, %10522
  %10540 = phi float [ %10523, %10522 ], [ %10501, %10536 ]
  %10541 = phi float [ %10535, %10522 ], [ %10537, %10536 ]
  %10542 = phi float [ 1.000000e+00, %10522 ], [ %10538, %10536 ]
  %10543 = fmul float %10521, %10540
  switch i32 %9489, label %10841 [
    i32 0, label %10856
    i32 1, label %10544
    i32 2, label %10545
    i32 3, label %10557
    i32 4, label %10566
    i32 5, label %10567
    i32 6, label %10568
    i32 12, label %10569
    i32 13, label %10570
    i32 14, label %10582
    i32 15, label %10594
    i32 16, label %10606
    i32 17, label %10607
    i32 63, label %10840
    i32 18, label %10608
    i32 25, label %10630
    i32 27, label %10631
    i32 28, label %10632
    i32 29, label %10633
    i32 31, label %10634
    i32 32, label %10657
    i32 33, label %10716
    i32 37, label %10734
    i32 38, label %10735
    i32 39, label %10744
    i32 40, label %10767
    i32 41, label %10771
    i32 52, label %10772
    i32 53, label %10773
    i32 54, label %10774
    i32 55, label %10775
    i32 56, label %10776
    i32 57, label %10778
    i32 58, label %10780
    i32 59, label %10818
    i32 60, label %10820
    i32 61, label %10822
    i32 64, label %10824
    i32 62, label %10839
  ]

; <label>:10544                                   ; preds = %10539
  br label %10841

; <label>:10545                                   ; preds = %10539
  %10546 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2922, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %10547 = call float @dx.op.unary.f32(i32 25, float %10546)  ; Rsqrt(value)
  %10548 = fmul fast float %2920, 5.000000e-01
  %10549 = fmul fast float %10548, %10547
  %10550 = fmul fast float %2921, 5.000000e-01
  %10551 = fmul fast float %10550, %10547
  %10552 = fmul fast float %2922, 5.000000e-01
  %10553 = fmul fast float %10552, %10547
  %10554 = fadd fast float %10549, 5.000000e-01
  %10555 = fadd fast float %10551, 5.000000e-01
  %10556 = fadd fast float %10553, 5.000000e-01
  br label %10841

; <label>:10557                                   ; preds = %10539
  %10558 = fcmp fast ole float %3100, 0x3FA4B5DCC0000000
  %10559 = fmul fast float %3100, 0x3FB3D07220000000
  %10560 = fadd fast float %3100, 0x3FAC28F5C0000000
  %10561 = fmul fast float %10560, 0x3FEE54EDE0000000
  %10562 = call float @dx.op.unary.f32(i32 23, float %10561)  ; Log(value)
  %10563 = fmul fast float %10562, 0x4003333340000000
  %10564 = call float @dx.op.unary.f32(i32 21, float %10563)  ; Exp(value)
  %10565 = select i1 %10558, float %10559, float %10564
  br label %10841

; <label>:10566                                   ; preds = %10539
  br label %10841

; <label>:10567                                   ; preds = %10539
  br label %10841

; <label>:10568                                   ; preds = %10539
  br label %10841

; <label>:10569                                   ; preds = %10539
  br label %10841

; <label>:10570                                   ; preds = %10539
  %10571 = and i32 %9558, 1023
  %10572 = uitofp i32 %10571 to float
  %10573 = lshr i32 %9558, 10
  %10574 = and i32 %10573, 1023
  %10575 = uitofp i32 %10574 to float
  %10576 = lshr i32 %9558, 20
  %10577 = and i32 %10576, 1023
  %10578 = uitofp i32 %10577 to float
  %10579 = fmul fast float %10572, 0x3F50040100000000
  %10580 = fmul fast float %10575, 0x3F50040100000000
  %10581 = fmul fast float %10578, 0x3F50040100000000
  br label %10841

; <label>:10582                                   ; preds = %10539
  %10583 = and i32 %9558, 1023
  %10584 = uitofp i32 %10583 to float
  %10585 = lshr i32 %9558, 10
  %10586 = and i32 %10585, 1023
  %10587 = uitofp i32 %10586 to float
  %10588 = lshr i32 %9558, 20
  %10589 = and i32 %10588, 1023
  %10590 = uitofp i32 %10589 to float
  %10591 = fmul fast float %10584, 0x3F50040100000000
  %10592 = fmul fast float %10587, 0x3F50040100000000
  %10593 = fmul fast float %10590, 0x3F50040100000000
  br label %10841

; <label>:10594                                   ; preds = %10539
  %10595 = and i32 %9558, 1023
  %10596 = uitofp i32 %10595 to float
  %10597 = lshr i32 %9558, 10
  %10598 = and i32 %10597, 1023
  %10599 = uitofp i32 %10598 to float
  %10600 = lshr i32 %9558, 20
  %10601 = and i32 %10600, 1023
  %10602 = uitofp i32 %10601 to float
  %10603 = fmul fast float %10596, 0x3F50040100000000
  %10604 = fmul fast float %10599, 0x3F50040100000000
  %10605 = fmul fast float %10602, 0x3F50040100000000
  br label %10841

; <label>:10606                                   ; preds = %10539
  br label %10841

; <label>:10607                                   ; preds = %10539
  br label %10841

; <label>:10608                                   ; preds = %10539
  %10609 = fcmp fast ogt float %2941, 0x3FB99999A0000000
  %10610 = fcmp fast ogt float %2942, 0x3FB99999A0000000
  %10611 = or i1 %10609, %10610
  %10612 = fcmp fast ogt float %2943, 0x3FB99999A0000000
  %10613 = or i1 %10611, %10612
  %10614 = fcmp fast olt float %2941, 0x3FB99999A0000000
  %10615 = fcmp fast olt float %2942, 0x3FB99999A0000000
  %10616 = or i1 %10614, %10615
  %10617 = fcmp fast olt float %2943, 0x3FB99999A0000000
  %10618 = or i1 %10616, %10617
  %10619 = fadd fast float %2941, %2932
  %10620 = fcmp fast ogt float %10619, 1.000000e+00
  %10621 = fadd fast float %2942, %2933
  %10622 = fcmp fast ogt float %10621, 1.000000e+00
  %10623 = or i1 %10620, %10622
  %10624 = fadd fast float %2943, %2934
  %10625 = fcmp fast ogt float %10624, 1.000000e+00
  %10626 = or i1 %10623, %10625
  %10627 = select i1 %10626, float 1.000000e+00, float 0.000000e+00
  %10628 = and i1 %10613, %10618
  %10629 = select i1 %10628, float 1.000000e+00, float 0.000000e+00
  br label %10841

; <label>:10630                                   ; preds = %10539
  br label %10841

; <label>:10631                                   ; preds = %10539
  br label %10841

; <label>:10632                                   ; preds = %10539
  br label %10841

; <label>:10633                                   ; preds = %10539
  br label %10841

; <label>:10634                                   ; preds = %10539
  %10635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10636 = extractvalue %dx.types.CBufRet.f32 %10635, 0
  %10637 = extractvalue %dx.types.CBufRet.f32 %10635, 2
  %10638 = extractvalue %dx.types.CBufRet.f32 %10635, 3
  %10639 = fcmp fast olt float %3100, %10636
  br i1 %10639, label %10640, label %10654

; <label>:10640                                   ; preds = %12555, %12553, %10654, %10634
  %10641 = phi i32 [ 0, %10634 ], [ 1, %10654 ], [ 2, %12553 ], [ 3, %12555 ]
  %10642 = mul i32 %10641, 3
  %10643 = add i32 0, %10642
  %10644 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10643
  %10645 = load float, float* %10644, align 4
  %10646 = mul i32 %10641, 3
  %10647 = add i32 1, %10646
  %10648 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10647
  %10649 = load float, float* %10648, align 4
  %10650 = mul i32 %10641, 3
  %10651 = add i32 2, %10650
  %10652 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10651
  %10653 = load float, float* %10652, align 4
  br label %10841

; <label>:10654                                   ; preds = %10634
  %10655 = extractvalue %dx.types.CBufRet.f32 %10635, 1
  %10656 = fcmp fast olt float %3100, %10655
  br i1 %10656, label %10640, label %12553

; <label>:10657                                   ; preds = %10539
  %10658 = fcmp fast ole float %2932, 0x3F69A5C380000000
  %10659 = fcmp fast ole float %2933, 0x3F69A5C380000000
  %10660 = fcmp fast ole float %2934, 0x3F69A5C380000000
  %10661 = fmul fast float %2932, 0x4029D70A40000000
  %10662 = fmul fast float %2933, 0x4029D70A40000000
  %10663 = fmul fast float %2934, 0x4029D70A40000000
  %10664 = call float @dx.op.unary.f32(i32 23, float %2932)  ; Log(value)
  %10665 = call float @dx.op.unary.f32(i32 23, float %2933)  ; Log(value)
  %10666 = call float @dx.op.unary.f32(i32 23, float %2934)  ; Log(value)
  %10667 = fmul fast float %10664, 0x3FDAAAAAA0000000
  %10668 = fmul fast float %10665, 0x3FDAAAAAA0000000
  %10669 = fmul fast float %10666, 0x3FDAAAAAA0000000
  %10670 = call float @dx.op.unary.f32(i32 21, float %10667)  ; Exp(value)
  %10671 = call float @dx.op.unary.f32(i32 21, float %10668)  ; Exp(value)
  %10672 = call float @dx.op.unary.f32(i32 21, float %10669)  ; Exp(value)
  %10673 = fmul fast float %10670, 0x3FF0E147A0000000
  %10674 = fmul fast float %10671, 0x3FF0E147A0000000
  %10675 = fmul fast float %10672, 0x3FF0E147A0000000
  %10676 = fadd fast float %10673, 0xBFAC28F5C0000000
  %10677 = fadd fast float %10674, 0xBFAC28F5C0000000
  %10678 = fadd fast float %10675, 0xBFAC28F5C0000000
  %10679 = select i1 %10658, float %10661, float %10676
  %10680 = select i1 %10659, float %10662, float %10677
  %10681 = select i1 %10660, float %10663, float %10678
  %10682 = call float @dx.op.dot3.f32(i32 55, float %10679, float %10680, float %10681, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10683 = fcmp fast olt float %10682, 0x3FA0101020000000
  br i1 %10683, label %10692, label %10684

; <label>:10684                                   ; preds = %10657
  %10685 = fcmp fast ogt float %10682, 0x3FEEFEFF00000000
  br i1 %10685, label %10692, label %10686

; <label>:10686                                   ; preds = %10684
  %10687 = fcmp fast ogt float %10682, 0x3FEF5F5F60000000
  br i1 %10687, label %10692, label %10688

; <label>:10688                                   ; preds = %10686
  %10689 = fadd fast float %10682, %10682
  %10690 = fcmp fast ogt float %10689, 2.550000e+02
  br i1 %10690, label %10691, label %10692

; <label>:10691                                   ; preds = %10688
  br label %10692

; <label>:10692                                   ; preds = %10691, %10688, %10686, %10684, %10657
  %10693 = phi float [ 1.000000e+00, %10691 ], [ %10543, %10688 ], [ 1.000000e+00, %10657 ], [ 0x3FBD1D1D20000000, %10684 ], [ 0.000000e+00, %10686 ]
  %10694 = phi float [ 0.000000e+00, %10691 ], [ %10541, %10688 ], [ 0x3FE6666660000000, %10657 ], [ 1.000000e+00, %10684 ], [ 0.000000e+00, %10686 ]
  %10695 = phi float [ 1.000000e+00, %10691 ], [ %10542, %10688 ], [ 0.000000e+00, %10657 ], [ 0x3FDD5D5D60000000, %10684 ], [ 1.000000e+00, %10686 ]
  %10696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %10697 = extractvalue %dx.types.CBufRet.f32 %10696, 3
  %10698 = fmul fast float %10697, 8.000000e+00
  %10699 = fmul fast float %92, 5.000000e+02
  %10700 = fmul fast float %10699, %10398
  %10701 = fsub fast float %10700, %10698
  %10702 = call float @dx.op.unary.f32(i32 13, float %10701)  ; Sin(value)
  %10703 = fmul fast float %10702, %10702
  %10704 = fmul fast float %10703, 2.000000e+00
  %10705 = fadd fast float %10704, -1.000000e+00
  %10706 = call float @dx.op.unary.f32(i32 7, float %10705)  ; Saturate(value)
  %10707 = fsub fast float %10693, %10543
  %10708 = fsub fast float %10694, %10541
  %10709 = fsub fast float %10695, %10542
  %10710 = fmul fast float %10706, %10707
  %10711 = fmul fast float %10706, %10708
  %10712 = fmul fast float %10706, %10709
  %10713 = fadd fast float %10710, %10543
  %10714 = fadd fast float %10711, %10541
  %10715 = fadd fast float %10712, %10542
  br label %10841

; <label>:10716                                   ; preds = %10539
  %10717 = fcmp fast olt float %524, 1.280000e+02
  br i1 %10717, label %10718, label %10732

; <label>:10718                                   ; preds = %12571, %12569, %12567, %12565, %12563, %12561, %12559, %12557, %10732, %10716
  %10719 = phi i32 [ 0, %10716 ], [ 1, %10732 ], [ 2, %12557 ], [ 3, %12559 ], [ 4, %12561 ], [ 5, %12563 ], [ 6, %12565 ], [ 7, %12567 ], [ 8, %12569 ], [ 9, %12571 ]
  %10720 = mul i32 %10719, 3
  %10721 = add i32 0, %10720
  %10722 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10721
  %10723 = load float, float* %10722, align 4
  %10724 = mul i32 %10719, 3
  %10725 = add i32 1, %10724
  %10726 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10725
  %10727 = load float, float* %10726, align 4
  %10728 = mul i32 %10719, 3
  %10729 = add i32 2, %10728
  %10730 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10729
  %10731 = load float, float* %10730, align 4
  br label %10841

; <label>:10732                                   ; preds = %10716
  %10733 = fcmp fast olt float %524, 2.560000e+02
  br i1 %10733, label %10718, label %12557

; <label>:10734                                   ; preds = %10539
  br label %10841

; <label>:10735                                   ; preds = %10539
  %10736 = bitcast i32 %9558 to float
  %10737 = fcmp fast ogt float %10736, 0.000000e+00
  %10738 = select i1 %10737, float 0.000000e+00, float 1.000000e+00
  %10739 = fcmp fast olt float %10736, 1.000000e+00
  %10740 = select i1 %10739, float 1.000000e+00, float 0.000000e+00
  %10741 = select i1 %10739, float %10738, float 0.000000e+00
  %10742 = fmul fast float %10740, %3100
  %10743 = fmul fast float %10741, %3100
  br label %10841

; <label>:10744                                   ; preds = %10539
  %10745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10746 = extractvalue %dx.types.CBufRet.f32 %10745, 0
  %10747 = extractvalue %dx.types.CBufRet.f32 %10745, 2
  %10748 = extractvalue %dx.types.CBufRet.f32 %10745, 3
  %10749 = fcmp fast olt float %9579, %10746
  br i1 %10749, label %10750, label %10764

; <label>:10750                                   ; preds = %12575, %12573, %10764, %10744
  %10751 = phi i32 [ 0, %10744 ], [ 1, %10764 ], [ 2, %12573 ], [ 3, %12575 ]
  %10752 = mul i32 %10751, 3
  %10753 = add i32 0, %10752
  %10754 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10753
  %10755 = load float, float* %10754, align 4
  %10756 = mul i32 %10751, 3
  %10757 = add i32 1, %10756
  %10758 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10757
  %10759 = load float, float* %10758, align 4
  %10760 = mul i32 %10751, 3
  %10761 = add i32 2, %10760
  %10762 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10761
  %10763 = load float, float* %10762, align 4
  br label %10841

; <label>:10764                                   ; preds = %10744
  %10765 = extractvalue %dx.types.CBufRet.f32 %10745, 1
  %10766 = fcmp fast olt float %9579, %10765
  br i1 %10766, label %10750, label %12573

; <label>:10767                                   ; preds = %10539
  %10768 = fadd fast float %9579, -5.000000e-01
  %10769 = fmul fast float %10768, 2.000000e+00
  %10770 = call float @dx.op.unary.f32(i32 7, float %10769)  ; Saturate(value)
  br label %10841

; <label>:10771                                   ; preds = %10539
  br label %10841

; <label>:10772                                   ; preds = %10539
  br label %10841

; <label>:10773                                   ; preds = %10539
  br label %10841

; <label>:10774                                   ; preds = %10539
  br label %10841

; <label>:10775                                   ; preds = %10539
  br label %10841

; <label>:10776                                   ; preds = %10539
  %10777 = bitcast i32 %9558 to float
  br label %10841

; <label>:10778                                   ; preds = %10539
  %10779 = bitcast i32 %9558 to float
  br label %10841

; <label>:10780                                   ; preds = %10539
  %10781 = and i32 %9558, 65535
  %10782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10781)  ; LegacyF16ToF32(value)
  %10783 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10784 = fptosi float %10783 to i32
  %10785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10786 = extractvalue %dx.types.CBufRet.f32 %10785, 0
  %10787 = extractvalue %dx.types.CBufRet.f32 %10785, 1
  %10788 = extractvalue %dx.types.CBufRet.f32 %10785, 2
  %10789 = fadd fast float %10786, %563
  %10790 = fadd fast float %10787, %564
  %10791 = fadd fast float %10788, %565
  %10792 = fptosi float %10789 to i32
  %10793 = fptosi float %10790 to i32
  %10794 = fptosi float %10791 to i32
  %10795 = xor i32 %10792, %10793
  %10796 = lshr i32 %10795, 1
  %10797 = and i32 %10796, 1
  %10798 = lshr i32 %10794, 1
  %10799 = and i32 %10798, 1
  %10800 = xor i32 %10799, 1
  %10801 = icmp ne i32 %10797, %10800
  switch i32 %10784, label %10841 [
    i32 -1, label %10802
    i32 -2, label %10803
    i32 -3, label %10805
    i32 -4, label %10807
    i32 -5, label %10809
    i32 -6, label %10810
    i32 -7, label %10811
  ]

; <label>:10802                                   ; preds = %10780
  br label %10841

; <label>:10803                                   ; preds = %10780
  %10804 = select i1 %10801, float 1.000000e+00, float 0.000000e+00
  br label %10841

; <label>:10805                                   ; preds = %10780
  %10806 = select i1 %10801, float 1.000000e+00, float 0.000000e+00
  br label %10841

; <label>:10807                                   ; preds = %10780
  %10808 = select i1 %10801, float 1.000000e+00, float 0.000000e+00
  br label %10841

; <label>:10809                                   ; preds = %10780
  br label %10841

; <label>:10810                                   ; preds = %10780
  br label %10841

; <label>:10811                                   ; preds = %10780
  %10812 = lshr i32 %9558, 16
  %10813 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10812)  ; LegacyF16ToF32(value)
  %10814 = fmul fast float %10813, 0x3FD5555560000000
  %10815 = fsub fast float 1.000000e+00, %10814
  %10816 = fmul fast float %10814, %10782
  %10817 = fmul fast float %10815, %10782
  br label %10841

; <label>:10818                                   ; preds = %10539
  %10819 = bitcast i32 %9558 to float
  br label %10841

; <label>:10820                                   ; preds = %10539
  %10821 = bitcast i32 %9558 to float
  br label %10841

; <label>:10822                                   ; preds = %10539
  %10823 = bitcast i32 %9558 to float
  br label %10841

; <label>:10824                                   ; preds = %10539
  %10825 = and i32 %9558, 1023
  %10826 = uitofp i32 %10825 to float
  %10827 = lshr i32 %9558, 10
  %10828 = and i32 %10827, 1023
  %10829 = uitofp i32 %10828 to float
  %10830 = lshr i32 %9558, 20
  %10831 = and i32 %10830, 1023
  %10832 = uitofp i32 %10831 to float
  %10833 = fmul fast float %10826, 0x3F60040100000000
  %10834 = fmul fast float %10829, 0x3F60040100000000
  %10835 = fmul fast float %10832, 0x3F60040100000000
  %10836 = fadd fast float %10833, -1.000000e+00
  %10837 = fadd fast float %10834, -1.000000e+00
  %10838 = fadd fast float %10835, -1.000000e+00
  br label %10841

; <label>:10839                                   ; preds = %10539
  br label %10841

; <label>:10840                                   ; preds = %10539
  br label %10841

; <label>:10841                                   ; preds = %12575, %12571, %12555, %10840, %10839, %10824, %10822, %10820, %10818, %10811, %10810, %10809, %10807, %10805, %10803, %10802, %10780, %10778, %10776, %10775, %10774, %10773, %10772, %10771, %10767, %10750, %10735, %10734, %10718, %10692, %10640, %10633, %10632, %10631, %10630, %10608, %10607, %10606, %10594, %10582, %10570, %10569, %10568, %10567, %10566, %10557, %10545, %10544, %10539
  %10842 = phi float [ %10543, %10539 ], [ 0.000000e+00, %10839 ], [ %10836, %10824 ], [ %10823, %10822 ], [ %10821, %10820 ], [ %10819, %10818 ], [ %10543, %10780 ], [ 0.000000e+00, %10811 ], [ %10782, %10810 ], [ %10782, %10809 ], [ 0.000000e+00, %10807 ], [ %10806, %10805 ], [ %10804, %10803 ], [ %10782, %10802 ], [ %10779, %10778 ], [ %10777, %10776 ], [ 0.000000e+00, %10775 ], [ 0.000000e+00, %10774 ], [ 0.000000e+00, %10773 ], [ %563, %10771 ], [ %10770, %10767 ], [ %10742, %10735 ], [ 0.000000e+00, %10734 ], [ %10713, %10692 ], [ 0.000000e+00, %10633 ], [ 0.000000e+00, %10632 ], [ 0.000000e+00, %10631 ], [ 1.000000e+00, %10630 ], [ 0.000000e+00, %10840 ], [ 1.000000e+00, %10607 ], [ 5.000000e-01, %10606 ], [ %10603, %10594 ], [ %10591, %10582 ], [ %10579, %10570 ], [ %3103, %10569 ], [ %3101, %10568 ], [ %2941, %10567 ], [ %2878, %10566 ], [ %10565, %10557 ], [ %10554, %10545 ], [ %2932, %10544 ], [ %10645, %10640 ], [ %10723, %10718 ], [ %10755, %10750 ], [ 0.000000e+00, %10772 ], [ 1.000000e+00, %12555 ], [ 1.000000e+00, %12571 ], [ 1.000000e+00, %12575 ], [ %10627, %10608 ]
  %10843 = phi float [ %10541, %10539 ], [ 0.000000e+00, %10839 ], [ %10837, %10824 ], [ %10823, %10822 ], [ %10821, %10820 ], [ %10819, %10818 ], [ %10541, %10780 ], [ %10816, %10811 ], [ %10782, %10810 ], [ %10782, %10809 ], [ 0.000000e+00, %10807 ], [ 0.000000e+00, %10805 ], [ 0.000000e+00, %10803 ], [ %10782, %10802 ], [ %10779, %10778 ], [ %10777, %10776 ], [ 0.000000e+00, %10775 ], [ 0.000000e+00, %10774 ], [ 0.000000e+00, %10773 ], [ %564, %10771 ], [ %10770, %10767 ], [ %3100, %10735 ], [ 0.000000e+00, %10734 ], [ %10714, %10692 ], [ 1.000000e+00, %10633 ], [ 1.000000e+00, %10632 ], [ 1.000000e+00, %10631 ], [ 0x3FE6666660000000, %10630 ], [ 0.000000e+00, %10840 ], [ 1.000000e+00, %10607 ], [ 5.000000e-01, %10606 ], [ %10604, %10594 ], [ %10592, %10582 ], [ %10580, %10570 ], [ %3103, %10569 ], [ %3101, %10568 ], [ %2942, %10567 ], [ %2879, %10566 ], [ %10565, %10557 ], [ %10555, %10545 ], [ %2933, %10544 ], [ %10649, %10640 ], [ %10727, %10718 ], [ %10759, %10750 ], [ 0.000000e+00, %10772 ], [ 0.000000e+00, %12555 ], [ 0.000000e+00, %12571 ], [ 0.000000e+00, %12575 ], [ 0.000000e+00, %10608 ]
  %10844 = phi float [ %10542, %10539 ], [ 0.000000e+00, %10839 ], [ %10838, %10824 ], [ %10823, %10822 ], [ %10821, %10820 ], [ %10819, %10818 ], [ %10542, %10780 ], [ %10817, %10811 ], [ %10782, %10810 ], [ 0.000000e+00, %10809 ], [ %10808, %10807 ], [ 0.000000e+00, %10805 ], [ %10804, %10803 ], [ %10782, %10802 ], [ %10779, %10778 ], [ %10777, %10776 ], [ 0.000000e+00, %10775 ], [ 0.000000e+00, %10774 ], [ 0.000000e+00, %10773 ], [ %565, %10771 ], [ %10770, %10767 ], [ %10743, %10735 ], [ 0.000000e+00, %10734 ], [ %10715, %10692 ], [ 0.000000e+00, %10633 ], [ 0.000000e+00, %10632 ], [ 0.000000e+00, %10631 ], [ 0.000000e+00, %10630 ], [ 0.000000e+00, %10840 ], [ 1.000000e+00, %10607 ], [ 5.000000e-01, %10606 ], [ %10605, %10594 ], [ %10593, %10582 ], [ %10581, %10570 ], [ %3103, %10569 ], [ %3101, %10568 ], [ %2943, %10567 ], [ %2880, %10566 ], [ %10565, %10557 ], [ %10556, %10545 ], [ %2934, %10544 ], [ %10653, %10640 ], [ %10731, %10718 ], [ %10763, %10750 ], [ 1.000000e+00, %10772 ], [ 0.000000e+00, %12555 ], [ 0.000000e+00, %12571 ], [ 0.000000e+00, %12575 ], [ %10629, %10608 ]
  %10845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10846 = extractvalue %dx.types.CBufRet.f32 %10845, 3
  %10847 = fsub fast float %10842, %10543
  %10848 = fsub fast float %10843, %10541
  %10849 = fsub fast float %10844, %10542
  %10850 = fmul fast float %10846, %10847
  %10851 = fmul fast float %10846, %10848
  %10852 = fmul fast float %10846, %10849
  %10853 = fadd fast float %10850, %10543
  %10854 = fadd fast float %10851, %10541
  %10855 = fadd fast float %10852, %10542
  br label %10856

; <label>:10856                                   ; preds = %10841, %10539
  %10857 = phi float [ %10853, %10841 ], [ %10543, %10539 ]
  %10858 = phi float [ %10854, %10841 ], [ %10541, %10539 ]
  %10859 = phi float [ %10855, %10841 ], [ %10542, %10539 ]
  %10860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10861 = extractvalue %dx.types.CBufRet.f32 %10860, 0
  %10862 = bitcast float %10861 to i32
  %10863 = lshr i32 %10862, 8
  %10864 = and i32 %10863, 255
  %10865 = uitofp i32 %10864 to float
  %10866 = fptoui float %10865 to i32
  switch i32 %10866, label %11103 [
    i32 1, label %10867
    i32 2, label %10873
    i32 3, label %10879
    i32 4, label %10885
    i32 5, label %10891
    i32 6, label %10897
    i32 7, label %10903
    i32 8, label %10909
    i32 9, label %10915
    i32 10, label %10917
    i32 11, label %10938
    i32 12, label %10959
    i32 13, label %10971
    i32 14, label %10986
    i32 15, label %10991
    i32 16, label %10993
    i32 17, label %10995
    i32 18, label %10997
    i32 19, label %10999
    i32 20, label %11010
    i32 21, label %11021
    i32 22, label %11033
    i32 23, label %11067
    i32 24, label %11082
    i32 25, label %11097
    i32 26, label %11099
    i32 27, label %11101
  ]

; <label>:10867                                   ; preds = %10856
  %10868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10869 = extractvalue %dx.types.CBufRet.f32 %10868, 0
  %10870 = fmul fast float %10869, %8899
  %10871 = fmul fast float %10869, %8900
  %10872 = fmul fast float %10869, %8901
  br label %11103

; <label>:10873                                   ; preds = %10856
  %10874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10875 = extractvalue %dx.types.CBufRet.f32 %10874, 0
  %10876 = fmul fast float %10875, %8896
  %10877 = fmul fast float %10875, %8897
  %10878 = fmul fast float %10875, %8898
  br label %11103

; <label>:10879                                   ; preds = %10856
  %10880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10881 = extractvalue %dx.types.CBufRet.f32 %10880, 0
  %10882 = fmul fast float %10881, %2878
  %10883 = fmul fast float %10881, %2879
  %10884 = fmul fast float %10881, %2880
  br label %11103

; <label>:10885                                   ; preds = %10856
  %10886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10887 = extractvalue %dx.types.CBufRet.f32 %10886, 0
  %10888 = fmul fast float %10887, %8893
  %10889 = fmul fast float %10887, %8894
  %10890 = fmul fast float %10887, %8895
  br label %11103

; <label>:10891                                   ; preds = %10856
  %10892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10893 = extractvalue %dx.types.CBufRet.f32 %10892, 0
  %10894 = fmul fast float %10893, %8890
  %10895 = fmul fast float %10893, %8891
  %10896 = fmul fast float %10893, %8892
  br label %11103

; <label>:10897                                   ; preds = %10856
  %10898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10899 = extractvalue %dx.types.CBufRet.f32 %10898, 0
  %10900 = fmul fast float %10899, %6075
  %10901 = fmul fast float %10899, %6076
  %10902 = fmul fast float %10899, %6077
  br label %11103

; <label>:10903                                   ; preds = %10856
  %10904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10905 = extractvalue %dx.types.CBufRet.f32 %10904, 0
  %10906 = fmul fast float %10905, %6075
  %10907 = fmul fast float %10905, %6076
  %10908 = fmul fast float %10905, %6077
  br label %11103

; <label>:10909                                   ; preds = %10856
  %10910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10911 = extractvalue %dx.types.CBufRet.f32 %10910, 0
  %10912 = fmul fast float %6078, %10911
  %10913 = fmul fast float %6079, %10911
  %10914 = fmul fast float %6080, %10911
  br label %11103

; <label>:10915                                   ; preds = %10856
  %10916 = bitcast i32 %9558 to float
  br label %11103

; <label>:10917                                   ; preds = %10856
  %10918 = and i32 %9558, 1023
  %10919 = uitofp i32 %10918 to float
  %10920 = lshr i32 %9558, 10
  %10921 = and i32 %10920, 1023
  %10922 = uitofp i32 %10921 to float
  %10923 = lshr i32 %9558, 20
  %10924 = and i32 %10923, 1023
  %10925 = uitofp i32 %10924 to float
  %10926 = fmul fast float %10919, 0x3F60040100000000
  %10927 = fmul fast float %10922, 0x3F60040100000000
  %10928 = fmul fast float %10925, 0x3F60040100000000
  %10929 = fadd fast float %10926, -1.000000e+00
  %10930 = fadd fast float %10927, -1.000000e+00
  %10931 = fadd fast float %10928, -1.000000e+00
  %10932 = fcmp fast ogt float %10929, 0.000000e+00
  %10933 = select i1 %10932, float 1.000000e+00, float 0.000000e+00
  %10934 = fcmp fast ogt float %10930, 0.000000e+00
  %10935 = select i1 %10934, float 1.000000e+00, float 0.000000e+00
  %10936 = fcmp fast ogt float %10931, 0.000000e+00
  %10937 = select i1 %10936, float 1.000000e+00, float 0.000000e+00
  br label %11103

; <label>:10938                                   ; preds = %10856
  %10939 = and i32 %9558, 1023
  %10940 = uitofp i32 %10939 to float
  %10941 = lshr i32 %9558, 10
  %10942 = and i32 %10941, 1023
  %10943 = uitofp i32 %10942 to float
  %10944 = lshr i32 %9558, 20
  %10945 = and i32 %10944, 1023
  %10946 = uitofp i32 %10945 to float
  %10947 = fmul fast float %10940, 0x3F60040100000000
  %10948 = fmul fast float %10943, 0x3F60040100000000
  %10949 = fmul fast float %10946, 0x3F60040100000000
  %10950 = fadd fast float %10947, -1.000000e+00
  %10951 = fadd fast float %10948, -1.000000e+00
  %10952 = fadd fast float %10949, -1.000000e+00
  %10953 = fmul fast float %10952, %10951
  %10954 = fsub fast float %10952, %10953
  %10955 = fmul fast float %10951, %10950
  %10956 = fmul fast float %10954, %10950
  %10957 = fsub fast float %10951, %10955
  %10958 = fsub fast float %10954, %10956
  br label %11103

; <label>:10959                                   ; preds = %10856
  %10960 = and i32 %9558, 255
  %10961 = uitofp i32 %10960 to float
  %10962 = fmul fast float %10961, 0x3F70101020000000
  %10963 = lshr i32 %9558, 8
  %10964 = and i32 %10963, 255
  %10965 = uitofp i32 %10964 to float
  %10966 = fmul fast float %10965, 0x3F70101020000000
  %10967 = lshr i32 %9558, 16
  %10968 = and i32 %10967, 255
  %10969 = uitofp i32 %10968 to float
  %10970 = fmul fast float %10969, 0x3F70101020000000
  br label %11103

; <label>:10971                                   ; preds = %10856
  %10972 = and i32 %9558, 1023
  %10973 = uitofp i32 %10972 to float
  %10974 = lshr i32 %9558, 10
  %10975 = and i32 %10974, 1023
  %10976 = uitofp i32 %10975 to float
  %10977 = lshr i32 %9558, 20
  %10978 = and i32 %10977, 1023
  %10979 = uitofp i32 %10978 to float
  %10980 = fmul fast float %10973, 0x3F60040100000000
  %10981 = fmul fast float %10976, 0x3F60040100000000
  %10982 = fmul fast float %10979, 0x3F60040100000000
  %10983 = fadd fast float %10980, -1.000000e+00
  %10984 = fadd fast float %10981, -1.000000e+00
  %10985 = fadd fast float %10982, -1.000000e+00
  br label %11103

; <label>:10986                                   ; preds = %10856
  %10987 = icmp ne i32 %9558, 0
  %10988 = select i1 %10987, float 1.000000e+00, float %10857
  %10989 = select i1 %10987, float 0.000000e+00, float %10858
  %10990 = select i1 %10987, float 0.000000e+00, float %10859
  br label %11103

; <label>:10991                                   ; preds = %10856
  %10992 = bitcast i32 %9558 to float
  br label %11103

; <label>:10993                                   ; preds = %10856
  %10994 = bitcast i32 %9558 to float
  br label %11103

; <label>:10995                                   ; preds = %10856
  %10996 = bitcast i32 %9558 to float
  br label %11103

; <label>:10997                                   ; preds = %10856
  %10998 = bitcast i32 %9558 to float
  br label %11103

; <label>:10999                                   ; preds = %10856
  %11000 = and i32 %9558, 65535
  %11001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11000)  ; LegacyF16ToF32(value)
  %11002 = lshr i32 %9558, 16
  %11003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11002)  ; LegacyF16ToF32(value)
  %11004 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %11005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11006 = extractvalue %dx.types.CBufRet.f32 %11005, 0
  %11007 = fmul fast float %11006, %11001
  %11008 = fmul fast float %11006, %11003
  %11009 = fmul fast float %11006, %11004
  br label %11103

; <label>:11010                                   ; preds = %10856
  %11011 = and i32 %9558, 65535
  %11012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11011)  ; LegacyF16ToF32(value)
  %11013 = lshr i32 %9558, 16
  %11014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11013)  ; LegacyF16ToF32(value)
  %11015 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %11016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11017 = extractvalue %dx.types.CBufRet.f32 %11016, 0
  %11018 = fmul fast float %11017, %11012
  %11019 = fmul fast float %11017, %11014
  %11020 = fmul fast float %11017, %11015
  br label %11103

; <label>:11021                                   ; preds = %10856
  %11022 = and i32 %9558, 1023
  %11023 = uitofp i32 %11022 to float
  %11024 = lshr i32 %9558, 10
  %11025 = and i32 %11024, 1023
  %11026 = uitofp i32 %11025 to float
  %11027 = lshr i32 %9558, 20
  %11028 = and i32 %11027, 1023
  %11029 = uitofp i32 %11028 to float
  %11030 = fmul fast float %11023, 0x3F50040100000000
  %11031 = fmul fast float %11026, 0x3F50040100000000
  %11032 = fmul fast float %11029, 0x3F50040100000000
  br label %11103

; <label>:11033                                   ; preds = %10856
  %11034 = and i32 %9558, 1023
  %11035 = uitofp i32 %11034 to float
  %11036 = lshr i32 %9558, 10
  %11037 = and i32 %11036, 1023
  %11038 = uitofp i32 %11037 to float
  %11039 = lshr i32 %9558, 20
  %11040 = and i32 %11039, 1023
  %11041 = uitofp i32 %11040 to float
  %11042 = fmul fast float %11035, 0x3F60040100000000
  %11043 = fmul fast float %11038, 0x3F60040100000000
  %11044 = fmul fast float %11041, 0x3F60040100000000
  %11045 = fadd fast float %11042, -1.000000e+00
  %11046 = fadd fast float %11043, -1.000000e+00
  %11047 = fadd fast float %11044, -1.000000e+00
  %11048 = call float @dx.op.binary.f32(i32 35, float %11046, float %11047)  ; FMax(a,b)
  %11049 = call float @dx.op.binary.f32(i32 35, float %11045, float %11048)  ; FMax(a,b)
  %11050 = fmul fast float %11049, 2.000000e+00
  %11051 = call float @dx.op.unary.f32(i32 7, float %11050)  ; Saturate(value)
  %11052 = fmul fast float %11035, 0x3F94050140000000
  %11053 = fadd fast float %11052, -1.000000e+01
  %11054 = fmul fast float %11038, 0x3F94050140000000
  %11055 = fadd fast float %11054, -1.000000e+01
  %11056 = fmul fast float %11041, 0x3F94050140000000
  %11057 = fadd fast float %11056, -1.000000e+01
  %11058 = fsub fast float %11053, %10857
  %11059 = fsub fast float %11055, %10858
  %11060 = fsub fast float %11057, %10859
  %11061 = fmul fast float %11051, %11058
  %11062 = fmul fast float %11051, %11059
  %11063 = fmul fast float %11051, %11060
  %11064 = fadd fast float %11061, %10857
  %11065 = fadd fast float %11062, %10858
  %11066 = fadd fast float %11063, %10859
  br label %11103

; <label>:11067                                   ; preds = %10856
  %11068 = and i32 %9558, 1023
  %11069 = uitofp i32 %11068 to float
  %11070 = lshr i32 %9558, 10
  %11071 = and i32 %11070, 1023
  %11072 = uitofp i32 %11071 to float
  %11073 = lshr i32 %9558, 20
  %11074 = and i32 %11073, 1023
  %11075 = uitofp i32 %11074 to float
  %11076 = fmul fast float %11069, 0x3F60040100000000
  %11077 = fmul fast float %11072, 0x3F60040100000000
  %11078 = fmul fast float %11075, 0x3F60040100000000
  %11079 = fadd fast float %11076, -1.000000e+00
  %11080 = fadd fast float %11077, -1.000000e+00
  %11081 = fadd fast float %11078, -1.000000e+00
  br label %11103

; <label>:11082                                   ; preds = %10856
  %11083 = and i32 %9558, 1023
  %11084 = uitofp i32 %11083 to float
  %11085 = lshr i32 %9558, 10
  %11086 = and i32 %11085, 1023
  %11087 = uitofp i32 %11086 to float
  %11088 = lshr i32 %9558, 20
  %11089 = and i32 %11088, 1023
  %11090 = uitofp i32 %11089 to float
  %11091 = fmul fast float %11084, 0x3F60040100000000
  %11092 = fmul fast float %11087, 0x3F60040100000000
  %11093 = fmul fast float %11090, 0x3F60040100000000
  %11094 = fadd fast float %11091, -1.000000e+00
  %11095 = fadd fast float %11092, -1.000000e+00
  %11096 = fadd fast float %11093, -1.000000e+00
  br label %11103

; <label>:11097                                   ; preds = %10856
  %11098 = bitcast i32 %9558 to float
  br label %11103

; <label>:11099                                   ; preds = %10856
  %11100 = bitcast i32 %9558 to float
  br label %11103

; <label>:11101                                   ; preds = %10856
  %11102 = bitcast i32 %9558 to float
  br label %11103

; <label>:11103                                   ; preds = %11101, %11099, %11097, %11082, %11067, %11033, %11021, %11010, %10999, %10997, %10995, %10993, %10991, %10986, %10971, %10959, %10938, %10917, %10915, %10909, %10903, %10897, %10891, %10885, %10879, %10873, %10867, %10856
  %11104 = phi float [ %10857, %10856 ], [ %11102, %11101 ], [ %11100, %11099 ], [ %11098, %11097 ], [ %11094, %11082 ], [ %11079, %11067 ], [ %11064, %11033 ], [ %11030, %11021 ], [ %11018, %11010 ], [ %11007, %10999 ], [ %10998, %10997 ], [ %10996, %10995 ], [ %10994, %10993 ], [ %10992, %10991 ], [ %10983, %10971 ], [ %10962, %10959 ], [ %10950, %10938 ], [ %10933, %10917 ], [ %10916, %10915 ], [ %10912, %10909 ], [ %10906, %10903 ], [ %10900, %10897 ], [ %10894, %10891 ], [ %10888, %10885 ], [ %10882, %10879 ], [ %10876, %10873 ], [ %10870, %10867 ], [ %10988, %10986 ]
  %11105 = phi float [ %10858, %10856 ], [ %11102, %11101 ], [ %11100, %11099 ], [ %11098, %11097 ], [ %11095, %11082 ], [ %11080, %11067 ], [ %11065, %11033 ], [ %11031, %11021 ], [ %11019, %11010 ], [ %11008, %10999 ], [ %10998, %10997 ], [ %10996, %10995 ], [ %10994, %10993 ], [ %10992, %10991 ], [ %10984, %10971 ], [ %10966, %10959 ], [ %10957, %10938 ], [ %10935, %10917 ], [ %10916, %10915 ], [ %10913, %10909 ], [ %10907, %10903 ], [ %10901, %10897 ], [ %10895, %10891 ], [ %10889, %10885 ], [ %10883, %10879 ], [ %10877, %10873 ], [ %10871, %10867 ], [ %10989, %10986 ]
  %11106 = phi float [ %10859, %10856 ], [ %11102, %11101 ], [ %11100, %11099 ], [ %11098, %11097 ], [ %11096, %11082 ], [ %11081, %11067 ], [ %11066, %11033 ], [ %11032, %11021 ], [ %11020, %11010 ], [ %11009, %10999 ], [ %10998, %10997 ], [ %10996, %10995 ], [ %10994, %10993 ], [ %10992, %10991 ], [ %10985, %10971 ], [ %10970, %10959 ], [ %10958, %10938 ], [ %10937, %10917 ], [ %10916, %10915 ], [ %10914, %10909 ], [ %10908, %10903 ], [ %10902, %10897 ], [ %10896, %10891 ], [ %10890, %10885 ], [ %10884, %10879 ], [ %10878, %10873 ], [ %10872, %10867 ], [ %10990, %10986 ]
  %11107 = extractvalue %dx.types.CBufRet.f32 %10860, 3
  %11108 = fsub fast float %11104, %10857
  %11109 = fsub fast float %11105, %10858
  %11110 = fsub fast float %11106, %10859
  %11111 = fmul fast float %11107, %11108
  %11112 = fmul fast float %11107, %11109
  %11113 = fmul fast float %11107, %11110
  %11114 = fadd fast float %11111, %10857
  %11115 = fadd fast float %11112, %10858
  %11116 = fadd fast float %11113, %10859
  %11117 = lshr i32 %10862, 16
  %11118 = and i32 %11117, 255
  %11119 = uitofp i32 %11118 to float
  %11120 = fptoui float %11119 to i32
  switch i32 %11120, label %11167 [
    i32 16, label %11152
    i32 12, label %11151
    i32 3, label %11121
    i32 4, label %11122
    i32 15, label %11123
    i32 5, label %11132
    i32 6, label %11141
    i32 7, label %11150
    i32 11, label %11151
  ]

; <label>:11121                                   ; preds = %11103
  br label %11167

; <label>:11122                                   ; preds = %11103
  br label %11167

; <label>:11123                                   ; preds = %11103
  %11124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %11125 = extractvalue %dx.types.CBufRet.f32 %11124, 0
  %11126 = fadd fast float %11125, %11114
  %11127 = fadd fast float %11125, %11115
  %11128 = fadd fast float %11125, %11116
  %11129 = call float @dx.op.unary.f32(i32 7, float %11126)  ; Saturate(value)
  %11130 = call float @dx.op.unary.f32(i32 7, float %11127)  ; Saturate(value)
  %11131 = call float @dx.op.unary.f32(i32 7, float %11128)  ; Saturate(value)
  br label %11167

; <label>:11132                                   ; preds = %11103
  %11133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11134 = extractvalue %dx.types.CBufRet.f32 %11133, 0
  %11135 = bitcast float %11134 to i32
  %11136 = and i32 %11135, 2130706432
  %11137 = icmp eq i32 %11136, 0
  %11138 = select i1 %11137, float 0.000000e+00, float %11114
  %11139 = select i1 %11137, float 0.000000e+00, float %11115
  %11140 = select i1 %11137, float 0.000000e+00, float %11116
  br label %11167

; <label>:11141                                   ; preds = %11103
  %11142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11143 = extractvalue %dx.types.CBufRet.f32 %11142, 0
  %11144 = bitcast float %11143 to i32
  %11145 = and i32 %11144, 2130706432
  %11146 = icmp eq i32 %11145, 0
  %11147 = select i1 %11146, float 0.000000e+00, float %11114
  %11148 = select i1 %11146, float 0.000000e+00, float %11115
  %11149 = select i1 %11146, float 0.000000e+00, float %11116
  br label %11167

; <label>:11150                                   ; preds = %11103
  br label %11167

; <label>:11151                                   ; preds = %11103, %11103
  br label %11167

; <label>:11152                                   ; preds = %11103
  %11153 = and i32 %9558, 1023
  %11154 = uitofp i32 %11153 to float
  %11155 = lshr i32 %9558, 10
  %11156 = and i32 %11155, 1023
  %11157 = uitofp i32 %11156 to float
  %11158 = lshr i32 %9558, 20
  %11159 = and i32 %11158, 1023
  %11160 = uitofp i32 %11159 to float
  %11161 = fmul fast float %11154, 0x3F60040100000000
  %11162 = fmul fast float %11157, 0x3F60040100000000
  %11163 = fmul fast float %11160, 0x3F60040100000000
  %11164 = fadd fast float %11161, -1.000000e+00
  %11165 = fadd fast float %11162, -1.000000e+00
  %11166 = fadd fast float %11163, -1.000000e+00
  br label %11167

; <label>:11167                                   ; preds = %11152, %11151, %11150, %11141, %11132, %11123, %11122, %11121, %11103
  %11168 = phi float [ 0.000000e+00, %11150 ], [ %11129, %11123 ], [ 0.000000e+00, %11122 ], [ %76, %11151 ], [ %11164, %11152 ], [ 0.000000e+00, %11121 ], [ %11138, %11132 ], [ %11147, %11141 ], [ %11114, %11103 ]
  %11169 = phi float [ 0.000000e+00, %11150 ], [ %11130, %11123 ], [ 0.000000e+00, %11122 ], [ %77, %11151 ], [ %11165, %11152 ], [ 0.000000e+00, %11121 ], [ %11139, %11132 ], [ %11148, %11141 ], [ %11115, %11103 ]
  %11170 = phi float [ 0.000000e+00, %11150 ], [ %11131, %11123 ], [ 1.000000e+00, %11122 ], [ %78, %11151 ], [ %11166, %11152 ], [ 0.000000e+00, %11121 ], [ %11140, %11132 ], [ %11149, %11141 ], [ %11116, %11103 ]
  %11171 = fsub fast float %11168, %11114
  %11172 = fsub fast float %11169, %11115
  %11173 = fsub fast float %11170, %11116
  %11174 = fmul fast float %11107, %11171
  %11175 = fmul fast float %11107, %11172
  %11176 = fmul fast float %11107, %11173
  %11177 = fadd fast float %11174, %11114
  %11178 = fadd fast float %11175, %11115
  %11179 = fadd fast float %11176, %11116
  %11180 = and i32 %8888, 255
  %11181 = uitofp i32 %11180 to float
  %11182 = fptoui float %11181 to i32
  %11183 = lshr i32 %8888, 8
  %11184 = and i32 %11183, 255
  %11185 = uitofp i32 %11184 to float
  %11186 = fptoui float %11185 to i32
  %11187 = lshr i32 %8888, 16
  %11188 = and i32 %11187, 255
  %11189 = uitofp i32 %11188 to float
  %11190 = fptoui float %11189 to i32
  %11191 = lshr i32 %8888, 24
  %11192 = uitofp i32 %11191 to float
  %11193 = fptoui float %11192 to i32
  %11194 = and i32 %8887, 255
  %11195 = uitofp i32 %11194 to float
  %11196 = fptoui float %11195 to i32
  %11197 = lshr i32 %8887, 16
  %11198 = and i32 %11197, 255
  %11199 = uitofp i32 %11198 to float
  %11200 = fptoui float %11199 to i32
  %11201 = lshr i32 %10862, 24
  %11202 = uitofp i32 %11201 to float
  %11203 = fptoui float %11202 to i32
  switch i32 %11203, label %11442 [
    i32 1, label %11204
    i32 2, label %11231
    i32 3, label %11256
    i32 4, label %11279
    i32 5, label %11302
    i32 6, label %11325
    i32 7, label %11349
    i32 8, label %11372
    i32 9, label %11395
    i32 12, label %11417
    i32 13, label %11418
    i32 14, label %11441
  ]

; <label>:11204                                   ; preds = %11167
  %11205 = add i32 %11182, %11196
  %11206 = add i32 %11205, %11193
  %11207 = add i32 %11206, %11186
  %11208 = add i32 %11207, %11190
  %11209 = uitofp i32 %11208 to float
  %11210 = fadd fast float %11209, -4.000000e+00
  %11211 = fmul fast float %11210, 0x3FB5555560000000
  %11212 = call float @dx.op.unary.f32(i32 7, float %11211)  ; Saturate(value)
  %11213 = icmp eq i32 %11208, 0
  %11214 = select i1 %11213, float 0.000000e+00, float %11212
  %11215 = icmp ult i32 %11208, 2
  %11216 = select i1 %11215, float 0.000000e+00, float %11212
  %11217 = add i32 %11208, -1
  %11218 = icmp ult i32 %11217, 2
  %11219 = select i1 %11218, float 1.000000e+00, float %11214
  %11220 = icmp ult i32 %11208, 4
  %11221 = select i1 %11220, float 0.000000e+00, float 1.000000e+00
  %11222 = and i32 %11208, -2
  %11223 = icmp eq i32 %11222, 2
  %11224 = icmp eq i32 %11208, 4
  %11225 = select i1 %11224, float 1.000000e+00, float %11221
  %11226 = or i1 %11224, %11223
  %11227 = select i1 %11226, float 1.000000e+00, float %11216
  %11228 = add i32 %11208, -3
  %11229 = icmp ult i32 %11228, 2
  %11230 = select i1 %11229, float 0.000000e+00, float %11219
  br label %11442

; <label>:11231                                   ; preds = %11167
  %11232 = add i32 %11186, %11182
  %11233 = add i32 %11232, %11190
  %11234 = uitofp i32 %11233 to float
  %11235 = fadd fast float %11234, -4.000000e+00
  %11236 = fmul fast float %11235, 0x3FB5555560000000
  %11237 = call float @dx.op.unary.f32(i32 7, float %11236)  ; Saturate(value)
  %11238 = icmp eq i32 %11233, 0
  %11239 = select i1 %11238, float 0.000000e+00, float %11237
  %11240 = icmp ult i32 %11233, 2
  %11241 = select i1 %11240, float 0.000000e+00, float %11237
  %11242 = add i32 %11233, -1
  %11243 = icmp ult i32 %11242, 2
  %11244 = select i1 %11243, float 1.000000e+00, float %11239
  %11245 = icmp ult i32 %11233, 4
  %11246 = select i1 %11245, float 0.000000e+00, float 1.000000e+00
  %11247 = and i32 %11233, -2
  %11248 = icmp eq i32 %11247, 2
  %11249 = icmp eq i32 %11233, 4
  %11250 = select i1 %11249, float 1.000000e+00, float %11246
  %11251 = or i1 %11249, %11248
  %11252 = select i1 %11251, float 1.000000e+00, float %11241
  %11253 = add i32 %11233, -3
  %11254 = icmp ult i32 %11253, 2
  %11255 = select i1 %11254, float 0.000000e+00, float %11244
  br label %11442

; <label>:11256                                   ; preds = %11167
  %11257 = uitofp i32 %11182 to float
  %11258 = fadd fast float %11257, -4.000000e+00
  %11259 = fmul fast float %11258, 0x3FB5555560000000
  %11260 = call float @dx.op.unary.f32(i32 7, float %11259)  ; Saturate(value)
  %11261 = icmp eq i32 %11182, 0
  %11262 = select i1 %11261, float 0.000000e+00, float %11260
  %11263 = icmp ult i32 %11182, 2
  %11264 = select i1 %11263, float 0.000000e+00, float %11260
  %11265 = add i32 %11182, -1
  %11266 = icmp ult i32 %11265, 2
  %11267 = select i1 %11266, float 1.000000e+00, float %11262
  %11268 = icmp ult i32 %11182, 4
  %11269 = select i1 %11268, float 0.000000e+00, float 1.000000e+00
  %11270 = and i32 %11182, -2
  %11271 = icmp eq i32 %11270, 2
  %11272 = icmp eq i32 %11182, 4
  %11273 = select i1 %11272, float 1.000000e+00, float %11269
  %11274 = or i1 %11272, %11271
  %11275 = select i1 %11274, float 1.000000e+00, float %11264
  %11276 = add i32 %11182, -3
  %11277 = icmp ult i32 %11276, 2
  %11278 = select i1 %11277, float 0.000000e+00, float %11267
  br label %11442

; <label>:11279                                   ; preds = %11167
  %11280 = uitofp i32 %11186 to float
  %11281 = fadd fast float %11280, -4.000000e+00
  %11282 = fmul fast float %11281, 0x3FB5555560000000
  %11283 = call float @dx.op.unary.f32(i32 7, float %11282)  ; Saturate(value)
  %11284 = icmp eq i32 %11186, 0
  %11285 = select i1 %11284, float 0.000000e+00, float %11283
  %11286 = icmp ult i32 %11186, 2
  %11287 = select i1 %11286, float 0.000000e+00, float %11283
  %11288 = add i32 %11186, -1
  %11289 = icmp ult i32 %11288, 2
  %11290 = select i1 %11289, float 1.000000e+00, float %11285
  %11291 = icmp ult i32 %11186, 4
  %11292 = select i1 %11291, float 0.000000e+00, float 1.000000e+00
  %11293 = and i32 %11186, -2
  %11294 = icmp eq i32 %11293, 2
  %11295 = icmp eq i32 %11186, 4
  %11296 = select i1 %11295, float 1.000000e+00, float %11292
  %11297 = or i1 %11295, %11294
  %11298 = select i1 %11297, float 1.000000e+00, float %11287
  %11299 = add i32 %11186, -3
  %11300 = icmp ult i32 %11299, 2
  %11301 = select i1 %11300, float 0.000000e+00, float %11290
  br label %11442

; <label>:11302                                   ; preds = %11167
  %11303 = uitofp i32 %11190 to float
  %11304 = fadd fast float %11303, -4.000000e+00
  %11305 = fmul fast float %11304, 0x3FB5555560000000
  %11306 = call float @dx.op.unary.f32(i32 7, float %11305)  ; Saturate(value)
  %11307 = icmp eq i32 %11190, 0
  %11308 = select i1 %11307, float 0.000000e+00, float %11306
  %11309 = icmp ult i32 %11190, 2
  %11310 = select i1 %11309, float 0.000000e+00, float %11306
  %11311 = add i32 %11190, -1
  %11312 = icmp ult i32 %11311, 2
  %11313 = select i1 %11312, float 1.000000e+00, float %11308
  %11314 = icmp ult i32 %11190, 4
  %11315 = select i1 %11314, float 0.000000e+00, float 1.000000e+00
  %11316 = and i32 %11190, -2
  %11317 = icmp eq i32 %11316, 2
  %11318 = icmp eq i32 %11190, 4
  %11319 = select i1 %11318, float 1.000000e+00, float %11315
  %11320 = or i1 %11318, %11317
  %11321 = select i1 %11320, float 1.000000e+00, float %11310
  %11322 = add i32 %11190, -3
  %11323 = icmp ult i32 %11322, 2
  %11324 = select i1 %11323, float 0.000000e+00, float %11313
  br label %11442

; <label>:11325                                   ; preds = %11167
  %11326 = add i32 %11193, %11196
  %11327 = uitofp i32 %11326 to float
  %11328 = fadd fast float %11327, -4.000000e+00
  %11329 = fmul fast float %11328, 0x3FB5555560000000
  %11330 = call float @dx.op.unary.f32(i32 7, float %11329)  ; Saturate(value)
  %11331 = icmp eq i32 %11326, 0
  %11332 = select i1 %11331, float 0.000000e+00, float %11330
  %11333 = icmp ult i32 %11326, 2
  %11334 = select i1 %11333, float 0.000000e+00, float %11330
  %11335 = add i32 %11326, -1
  %11336 = icmp ult i32 %11335, 2
  %11337 = select i1 %11336, float 1.000000e+00, float %11332
  %11338 = icmp ult i32 %11326, 4
  %11339 = select i1 %11338, float 0.000000e+00, float 1.000000e+00
  %11340 = and i32 %11326, -2
  %11341 = icmp eq i32 %11340, 2
  %11342 = icmp eq i32 %11326, 4
  %11343 = select i1 %11342, float 1.000000e+00, float %11339
  %11344 = or i1 %11342, %11341
  %11345 = select i1 %11344, float 1.000000e+00, float %11334
  %11346 = add i32 %11326, -3
  %11347 = icmp ult i32 %11346, 2
  %11348 = select i1 %11347, float 0.000000e+00, float %11337
  br label %11442

; <label>:11349                                   ; preds = %11167
  %11350 = uitofp i32 %11193 to float
  %11351 = fadd fast float %11350, -4.000000e+00
  %11352 = fmul fast float %11351, 0x3FB5555560000000
  %11353 = call float @dx.op.unary.f32(i32 7, float %11352)  ; Saturate(value)
  %11354 = icmp eq i32 %11193, 0
  %11355 = select i1 %11354, float 0.000000e+00, float %11353
  %11356 = icmp ult i32 %11193, 2
  %11357 = select i1 %11356, float 0.000000e+00, float %11353
  %11358 = add i32 %11193, -1
  %11359 = icmp ult i32 %11358, 2
  %11360 = select i1 %11359, float 1.000000e+00, float %11355
  %11361 = icmp ult i32 %11193, 4
  %11362 = select i1 %11361, float 0.000000e+00, float 1.000000e+00
  %11363 = and i32 %11193, -2
  %11364 = icmp eq i32 %11363, 2
  %11365 = icmp eq i32 %11193, 4
  %11366 = select i1 %11365, float 1.000000e+00, float %11362
  %11367 = or i1 %11365, %11364
  %11368 = select i1 %11367, float 1.000000e+00, float %11357
  %11369 = add i32 %11193, -3
  %11370 = icmp ult i32 %11369, 2
  %11371 = select i1 %11370, float 0.000000e+00, float %11360
  br label %11442

; <label>:11372                                   ; preds = %11167
  %11373 = uitofp i32 %11196 to float
  %11374 = fadd fast float %11373, -4.000000e+00
  %11375 = fmul fast float %11374, 0x3FB5555560000000
  %11376 = call float @dx.op.unary.f32(i32 7, float %11375)  ; Saturate(value)
  %11377 = icmp eq i32 %11196, 0
  %11378 = select i1 %11377, float 0.000000e+00, float %11376
  %11379 = icmp ult i32 %11196, 2
  %11380 = select i1 %11379, float 0.000000e+00, float %11376
  %11381 = add i32 %11196, -1
  %11382 = icmp ult i32 %11381, 2
  %11383 = select i1 %11382, float 1.000000e+00, float %11378
  %11384 = icmp ult i32 %11196, 4
  %11385 = select i1 %11384, float 0.000000e+00, float 1.000000e+00
  %11386 = and i32 %11196, -2
  %11387 = icmp eq i32 %11386, 2
  %11388 = icmp eq i32 %11196, 4
  %11389 = select i1 %11388, float 1.000000e+00, float %11385
  %11390 = or i1 %11388, %11387
  %11391 = select i1 %11390, float 1.000000e+00, float %11380
  %11392 = add i32 %11196, -3
  %11393 = icmp ult i32 %11392, 2
  %11394 = select i1 %11393, float 0.000000e+00, float %11383
  br label %11442

; <label>:11395                                   ; preds = %11167
  %11396 = lshr i32 %8887, 8
  %11397 = and i32 %11396, 255
  %11398 = uitofp i32 %11397 to float
  %11399 = fptoui float %11398 to i32
  %11400 = uitofp i32 %11399 to float
  %11401 = fcmp fast oge float %11400, 1.000000e+00
  %11402 = fcmp fast oge float %11400, 2.000000e+00
  %11403 = or i1 %11402, %11401
  %11404 = select i1 %11403, float 1.000000e+00, float 0.000000e+00
  %11405 = fcmp fast oge float %11400, 3.000000e+00
  %11406 = or i1 %11405, %11402
  %11407 = fcmp fast oge float %11400, 4.000000e+00
  %11408 = or i1 %11407, %11406
  %11409 = select i1 %11408, float 1.000000e+00, float 0.000000e+00
  %11410 = or i1 %11407, %11405
  %11411 = fcmp fast oge float %11400, 5.000000e+00
  %11412 = or i1 %11411, %11407
  %11413 = select i1 %11412, float 1.000000e+00, float 0.000000e+00
  %11414 = select i1 %11411, float 0.000000e+00, float %11409
  %11415 = or i1 %11411, %11410
  %11416 = select i1 %11415, float 0.000000e+00, float %11404
  br label %11442

; <label>:11417                                   ; preds = %11167
  br label %11442

; <label>:11418                                   ; preds = %11167
  %11419 = uitofp i32 %11200 to float
  %11420 = fadd fast float %11419, -4.000000e+00
  %11421 = fmul fast float %11420, 0x3FB5555560000000
  %11422 = call float @dx.op.unary.f32(i32 7, float %11421)  ; Saturate(value)
  %11423 = icmp eq i32 %11200, 0
  %11424 = select i1 %11423, float 0.000000e+00, float %11422
  %11425 = icmp ult i32 %11200, 2
  %11426 = select i1 %11425, float 0.000000e+00, float %11422
  %11427 = add i32 %11200, -1
  %11428 = icmp ult i32 %11427, 2
  %11429 = select i1 %11428, float 1.000000e+00, float %11424
  %11430 = icmp ult i32 %11200, 4
  %11431 = select i1 %11430, float 0.000000e+00, float 1.000000e+00
  %11432 = and i32 %11200, -2
  %11433 = icmp eq i32 %11432, 2
  %11434 = icmp eq i32 %11200, 4
  %11435 = select i1 %11434, float 1.000000e+00, float %11431
  %11436 = or i1 %11434, %11433
  %11437 = select i1 %11436, float 1.000000e+00, float %11426
  %11438 = add i32 %11200, -3
  %11439 = icmp ult i32 %11438, 2
  %11440 = select i1 %11439, float 0.000000e+00, float %11429
  br label %11442

; <label>:11441                                   ; preds = %11167
  br label %11442

; <label>:11442                                   ; preds = %11441, %11418, %11417, %11395, %11372, %11349, %11325, %11302, %11279, %11256, %11231, %11204, %11167
  %11443 = phi float [ %11177, %11167 ], [ 5.000000e-01, %11441 ], [ %11435, %11418 ], [ 1.000000e+00, %11417 ], [ %11413, %11395 ], [ %11389, %11372 ], [ %11366, %11349 ], [ %11343, %11325 ], [ %11319, %11302 ], [ %11296, %11279 ], [ %11273, %11256 ], [ %11250, %11231 ], [ %11225, %11204 ]
  %11444 = phi float [ %11178, %11167 ], [ 5.000000e-01, %11441 ], [ %11437, %11418 ], [ 0.000000e+00, %11417 ], [ %11414, %11395 ], [ %11391, %11372 ], [ %11368, %11349 ], [ %11345, %11325 ], [ %11321, %11302 ], [ %11298, %11279 ], [ %11275, %11256 ], [ %11252, %11231 ], [ %11227, %11204 ]
  %11445 = phi float [ %11179, %11167 ], [ 5.000000e-01, %11441 ], [ %11440, %11418 ], [ 0.000000e+00, %11417 ], [ %11416, %11395 ], [ %11394, %11372 ], [ %11371, %11349 ], [ %11348, %11325 ], [ %11324, %11302 ], [ %11301, %11279 ], [ %11278, %11256 ], [ %11255, %11231 ], [ %11230, %11204 ]
  %11446 = fsub fast float %11443, %11177
  %11447 = fsub fast float %11444, %11178
  %11448 = fsub fast float %11445, %11179
  %11449 = fmul fast float %11446, %11107
  %11450 = fmul fast float %11447, %11107
  %11451 = fmul fast float %11448, %11107
  %11452 = fadd fast float %11449, %11177
  %11453 = fadd fast float %11450, %11178
  %11454 = fadd fast float %11451, %11179
  %11455 = and i32 %10862, 255
  %11456 = uitofp i32 %11455 to float
  %11457 = fptoui float %11456 to i32
  %11458 = icmp ult i32 %11457, 25
  br i1 %11458, label %11459, label %11464

; <label>:11459                                   ; preds = %11442
  %11460 = trunc i32 %11457 to i25
  %11461 = lshr i25 1048574, %11460
  %11462 = and i25 %11461, 1
  %11463 = icmp ne i25 %11462, 0
  br label %11464

; <label>:11464                                   ; preds = %11459, %11442
  %11465 = phi i1 [ %11463, %11459 ], [ true, %11442 ]
  %11466 = or i32 %11120, %10866
  %11467 = or i32 %11466, %11203
  %11468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11469 = extractvalue %dx.types.CBufRet.f32 %11468, 3
  %11470 = bitcast float %11469 to i32
  %11471 = and i32 %11470, 255
  %11472 = uitofp i32 %11471 to float
  %11473 = fptoui float %11472 to i32
  %11474 = or i32 %11467, %11473
  %11475 = icmp ne i32 %11474, 0
  %11476 = or i1 %11465, %11475
  %11477 = extractvalue %dx.types.CBufRet.f32 %11468, 0
  %11478 = bitcast float %11477 to i32
  %11479 = icmp slt i32 %11478, 0
  %11480 = or i1 %11479, %11476
  br i1 %11480, label %11481, label %11489

; <label>:11481                                   ; preds = %11464
  %11482 = icmp eq i32 %11203, 14
  %11483 = select i1 %11482, float 0.000000e+00, float 1.000000e+00
  %11484 = icmp eq i32 %11457, 0
  br i1 %11484, label %11489, label %11485

; <label>:11485                                   ; preds = %11481
  %11486 = fmul fast float %11483, %11452
  %11487 = fmul fast float %11483, %11453
  %11488 = fmul fast float %11483, %11454
  br label %11489

; <label>:11489                                   ; preds = %11485, %11481, %11464
  %11490 = phi float [ %11486, %11485 ], [ %11452, %11481 ], [ %11452, %11464 ]
  %11491 = phi float [ %11487, %11485 ], [ %11453, %11481 ], [ %11453, %11464 ]
  %11492 = phi float [ %11488, %11485 ], [ %11454, %11481 ], [ %11454, %11464 ]
  %11493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %11494 = extractvalue %dx.types.CBufRet.f32 %11493, 2
  %11495 = extractvalue %dx.types.CBufRet.f32 %11493, 3
  %11496 = fmul fast float %11494, %91
  %11497 = fmul fast float %11495, %92
  %11498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %11499 = extractvalue %dx.types.CBufRet.f32 %11498, 0
  %11500 = fcmp fast oge float %11496, %11499
  %11501 = extractvalue %dx.types.CBufRet.f32 %11498, 2
  %11502 = fcmp fast ole float %11496, %11501
  %11503 = and i1 %11500, %11502
  %11504 = extractvalue %dx.types.CBufRet.f32 %11498, 1
  %11505 = fcmp fast oge float %11497, %11504
  %11506 = and i1 %11503, %11505
  %11507 = extractvalue %dx.types.CBufRet.f32 %11498, 3
  %11508 = fcmp fast ole float %11497, %11507
  %11509 = and i1 %11506, %11508
  %11510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %11511 = extractvalue %dx.types.CBufRet.i32 %11510, 0
  %11512 = icmp ne i32 %11511, 0
  %11513 = and i1 %11512, %11509
  br i1 %11513, label %11514, label %12513

; <label>:11514                                   ; preds = %11489
  %11515 = icmp eq i32 %11511, 1
  br i1 %11515, label %11516, label %11555

; <label>:11516                                   ; preds = %11514
  %11517 = uitofp i32 %588 to float
  %11518 = fmul fast float %11517, 0x3FE3C6EF40000000
  %11519 = call float @dx.op.unary.f32(i32 22, float %11518)  ; Frc(value)
  %11520 = fadd fast float %11519, 0x3FE5555560000000
  %11521 = fadd fast float %11519, 0x3FD5555560000000
  %11522 = fsub fast float -0.000000e+00, %11519
  %11523 = fsub fast float -0.000000e+00, %11520
  %11524 = fsub fast float -0.000000e+00, %11521
  %11525 = fcmp fast oge float %11519, %11522
  %11526 = fcmp fast oge float %11520, %11523
  %11527 = fcmp fast oge float %11521, %11524
  %11528 = call float @dx.op.unary.f32(i32 6, float %11519)  ; FAbs(value)
  %11529 = call float @dx.op.unary.f32(i32 6, float %11520)  ; FAbs(value)
  %11530 = call float @dx.op.unary.f32(i32 6, float %11521)  ; FAbs(value)
  %11531 = call float @dx.op.unary.f32(i32 22, float %11528)  ; Frc(value)
  %11532 = call float @dx.op.unary.f32(i32 22, float %11529)  ; Frc(value)
  %11533 = call float @dx.op.unary.f32(i32 22, float %11530)  ; Frc(value)
  %11534 = fsub fast float -0.000000e+00, %11531
  %11535 = fsub fast float -0.000000e+00, %11532
  %11536 = fsub fast float -0.000000e+00, %11533
  %11537 = select i1 %11525, float %11531, float %11534
  %11538 = select i1 %11526, float %11532, float %11535
  %11539 = select i1 %11527, float %11533, float %11536
  %11540 = fmul fast float %11537, 6.000000e+00
  %11541 = fmul fast float %11538, 6.000000e+00
  %11542 = fmul fast float %11539, 6.000000e+00
  %11543 = fadd fast float %11540, -3.000000e+00
  %11544 = fadd fast float %11541, -3.000000e+00
  %11545 = fadd fast float %11542, -3.000000e+00
  %11546 = call float @dx.op.unary.f32(i32 6, float %11543)  ; FAbs(value)
  %11547 = call float @dx.op.unary.f32(i32 6, float %11544)  ; FAbs(value)
  %11548 = call float @dx.op.unary.f32(i32 6, float %11545)  ; FAbs(value)
  %11549 = fadd fast float %11546, -1.000000e+00
  %11550 = fadd fast float %11547, -1.000000e+00
  %11551 = fadd fast float %11548, -1.000000e+00
  %11552 = call float @dx.op.unary.f32(i32 7, float %11549)  ; Saturate(value)
  %11553 = call float @dx.op.unary.f32(i32 7, float %11550)  ; Saturate(value)
  %11554 = call float @dx.op.unary.f32(i32 7, float %11551)  ; Saturate(value)
  br label %12513

; <label>:11555                                   ; preds = %11514
  %11556 = icmp eq i32 %11511, 2
  br i1 %11556, label %12513, label %11557

; <label>:11557                                   ; preds = %11555
  %11558 = icmp eq i32 %11511, 3
  %11559 = icmp eq i32 %11511, 26
  %11560 = or i1 %11558, %11559
  br i1 %11560, label %11561, label %11661

; <label>:11561                                   ; preds = %11557
  br i1 %11558, label %11562, label %11573

; <label>:11562                                   ; preds = %11561
  %11563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %11564 = extractvalue %dx.types.CBufRet.f32 %11563, 3
  %11565 = fsub fast float %568, %11564
  %11566 = fmul fast float %11565, 0x3FD5555560000000
  %11567 = call float @dx.op.unary.f32(i32 7, float %11566)  ; Saturate(value)
  %11568 = fmul fast float %11567, 6.300000e+01
  %11569 = fptoui float %11568 to i32
  %11570 = uitofp i32 %11569 to float
  %11571 = fmul fast float %11570, 0x3FA8618620000000
  %11572 = fadd fast float %11571, %11564
  br label %11573

; <label>:11573                                   ; preds = %11562, %11561
  %11574 = phi float [ %11572, %11562 ], [ 0.000000e+00, %11561 ]
  %11575 = call float @dx.op.unary.f32(i32 27, float %11574)  ; Round_ni(value)
  %11576 = fadd fast float %11575, 1.000000e+00
  %11577 = call float @dx.op.unary.f32(i32 22, float %11574)  ; Frc(value)
  %11578 = fmul fast float %11575, 0x3FE3C6EF40000000
  %11579 = call float @dx.op.unary.f32(i32 22, float %11578)  ; Frc(value)
  %11580 = fadd fast float %11579, 0x3FE5555560000000
  %11581 = fadd fast float %11579, 0x3FD5555560000000
  %11582 = fsub fast float -0.000000e+00, %11579
  %11583 = fsub fast float -0.000000e+00, %11580
  %11584 = fsub fast float -0.000000e+00, %11581
  %11585 = fcmp fast oge float %11579, %11582
  %11586 = fcmp fast oge float %11580, %11583
  %11587 = fcmp fast oge float %11581, %11584
  %11588 = call float @dx.op.unary.f32(i32 6, float %11579)  ; FAbs(value)
  %11589 = call float @dx.op.unary.f32(i32 6, float %11580)  ; FAbs(value)
  %11590 = call float @dx.op.unary.f32(i32 6, float %11581)  ; FAbs(value)
  %11591 = call float @dx.op.unary.f32(i32 22, float %11588)  ; Frc(value)
  %11592 = call float @dx.op.unary.f32(i32 22, float %11589)  ; Frc(value)
  %11593 = call float @dx.op.unary.f32(i32 22, float %11590)  ; Frc(value)
  %11594 = fsub fast float -0.000000e+00, %11591
  %11595 = fsub fast float -0.000000e+00, %11592
  %11596 = fsub fast float -0.000000e+00, %11593
  %11597 = select i1 %11585, float %11591, float %11594
  %11598 = select i1 %11586, float %11592, float %11595
  %11599 = select i1 %11587, float %11593, float %11596
  %11600 = fmul fast float %11597, 6.000000e+00
  %11601 = fmul fast float %11598, 6.000000e+00
  %11602 = fmul fast float %11599, 6.000000e+00
  %11603 = fadd fast float %11600, -3.000000e+00
  %11604 = fadd fast float %11601, -3.000000e+00
  %11605 = fadd fast float %11602, -3.000000e+00
  %11606 = call float @dx.op.unary.f32(i32 6, float %11603)  ; FAbs(value)
  %11607 = call float @dx.op.unary.f32(i32 6, float %11604)  ; FAbs(value)
  %11608 = call float @dx.op.unary.f32(i32 6, float %11605)  ; FAbs(value)
  %11609 = fadd fast float %11606, -1.000000e+00
  %11610 = fadd fast float %11607, -1.000000e+00
  %11611 = fadd fast float %11608, -1.000000e+00
  %11612 = call float @dx.op.unary.f32(i32 7, float %11609)  ; Saturate(value)
  %11613 = call float @dx.op.unary.f32(i32 7, float %11610)  ; Saturate(value)
  %11614 = call float @dx.op.unary.f32(i32 7, float %11611)  ; Saturate(value)
  %11615 = fmul fast float %11576, 0x3FE3C6EF40000000
  %11616 = call float @dx.op.unary.f32(i32 22, float %11615)  ; Frc(value)
  %11617 = fadd fast float %11616, 0x3FE5555560000000
  %11618 = fadd fast float %11616, 0x3FD5555560000000
  %11619 = fsub fast float -0.000000e+00, %11616
  %11620 = fsub fast float -0.000000e+00, %11617
  %11621 = fsub fast float -0.000000e+00, %11618
  %11622 = fcmp fast oge float %11616, %11619
  %11623 = fcmp fast oge float %11617, %11620
  %11624 = fcmp fast oge float %11618, %11621
  %11625 = call float @dx.op.unary.f32(i32 6, float %11616)  ; FAbs(value)
  %11626 = call float @dx.op.unary.f32(i32 6, float %11617)  ; FAbs(value)
  %11627 = call float @dx.op.unary.f32(i32 6, float %11618)  ; FAbs(value)
  %11628 = call float @dx.op.unary.f32(i32 22, float %11625)  ; Frc(value)
  %11629 = call float @dx.op.unary.f32(i32 22, float %11626)  ; Frc(value)
  %11630 = call float @dx.op.unary.f32(i32 22, float %11627)  ; Frc(value)
  %11631 = fsub fast float -0.000000e+00, %11628
  %11632 = fsub fast float -0.000000e+00, %11629
  %11633 = fsub fast float -0.000000e+00, %11630
  %11634 = select i1 %11622, float %11628, float %11631
  %11635 = select i1 %11623, float %11629, float %11632
  %11636 = select i1 %11624, float %11630, float %11633
  %11637 = fmul fast float %11634, 6.000000e+00
  %11638 = fmul fast float %11635, 6.000000e+00
  %11639 = fmul fast float %11636, 6.000000e+00
  %11640 = fadd fast float %11637, -3.000000e+00
  %11641 = fadd fast float %11638, -3.000000e+00
  %11642 = fadd fast float %11639, -3.000000e+00
  %11643 = call float @dx.op.unary.f32(i32 6, float %11640)  ; FAbs(value)
  %11644 = call float @dx.op.unary.f32(i32 6, float %11641)  ; FAbs(value)
  %11645 = call float @dx.op.unary.f32(i32 6, float %11642)  ; FAbs(value)
  %11646 = fadd fast float %11643, -1.000000e+00
  %11647 = fadd fast float %11644, -1.000000e+00
  %11648 = fadd fast float %11645, -1.000000e+00
  %11649 = call float @dx.op.unary.f32(i32 7, float %11646)  ; Saturate(value)
  %11650 = call float @dx.op.unary.f32(i32 7, float %11647)  ; Saturate(value)
  %11651 = call float @dx.op.unary.f32(i32 7, float %11648)  ; Saturate(value)
  %11652 = fsub fast float %11649, %11612
  %11653 = fsub fast float %11650, %11613
  %11654 = fsub fast float %11651, %11614
  %11655 = fmul fast float %11652, %11577
  %11656 = fmul fast float %11653, %11577
  %11657 = fmul fast float %11654, %11577
  %11658 = fadd fast float %11655, %11612
  %11659 = fadd fast float %11656, %11613
  %11660 = fadd fast float %11657, %11614
  br label %12513

; <label>:11661                                   ; preds = %11557
  %11662 = and i32 %11511, -2
  %11663 = icmp eq i32 %11662, 4
  %11664 = icmp eq i32 %11511, 6
  %11665 = or i1 %11663, %11664
  br i1 %11665, label %12513, label %11666

; <label>:11666                                   ; preds = %11661
  %11667 = icmp eq i32 %11511, 7
  br i1 %11667, label %12513, label %11668

; <label>:11668                                   ; preds = %11666
  %11669 = icmp eq i32 %11511, 8
  br i1 %11669, label %12513, label %11670

; <label>:11670                                   ; preds = %11668
  %11671 = icmp eq i32 %11511, 9
  br i1 %11671, label %11672, label %11684

; <label>:11672                                   ; preds = %11670
  %11673 = fcmp fast ogt float %741, 0.000000e+00
  %11674 = call float @dx.op.dot2.f32(i32 54, float %736, float %737, float %736, float %737)  ; Dot2(ax,ay,bx,by)
  %11675 = call float @dx.op.unary.f32(i32 25, float %11674)  ; Rsqrt(value)
  %11676 = fmul fast float %736, 5.000000e-01
  %11677 = fmul fast float %11676, %11675
  %11678 = fmul fast float %737, 5.000000e-01
  %11679 = fmul fast float %11678, %11675
  %11680 = fadd fast float %11677, 5.000000e-01
  %11681 = select i1 %11673, float %11680, float 5.000000e-01
  %11682 = fadd fast float %11679, 5.000000e-01
  %11683 = select i1 %11673, float %11682, float 5.000000e-01
  br label %12513

; <label>:11684                                   ; preds = %11670
  %11685 = icmp eq i32 %11511, 10
  br i1 %11685, label %11686, label %11688

; <label>:11686                                   ; preds = %11684
  %11687 = fmul fast float %741, 0x3F747AE140000000
  br label %12513

; <label>:11688                                   ; preds = %11684
  %11689 = icmp eq i32 %11511, 11
  br i1 %11689, label %12513, label %11690

; <label>:11690                                   ; preds = %11688
  %11691 = icmp eq i32 %11511, 12
  br i1 %11691, label %12513, label %11692

; <label>:11692                                   ; preds = %11690
  %11693 = icmp eq i32 %11511, 13
  br i1 %11693, label %12513, label %11694

; <label>:11694                                   ; preds = %11692
  %11695 = icmp eq i32 %11511, 14
  br i1 %11695, label %12513, label %11696

; <label>:11696                                   ; preds = %11694
  %11697 = icmp eq i32 %11511, 15
  br i1 %11697, label %12513, label %11698

; <label>:11698                                   ; preds = %11696
  %11699 = icmp eq i32 %11511, 16
  br i1 %11699, label %12513, label %11700

; <label>:11700                                   ; preds = %11698
  %11701 = icmp eq i32 %11511, 17
  br i1 %11701, label %12513, label %11702

; <label>:11702                                   ; preds = %11700
  %11703 = icmp eq i32 %11511, 18
  br i1 %11703, label %12513, label %11704

; <label>:11704                                   ; preds = %11702
  %11705 = icmp eq i32 %11511, 19
  br i1 %11705, label %12513, label %11706

; <label>:11706                                   ; preds = %11704
  %11707 = icmp eq i32 %11511, 20
  br i1 %11707, label %11708, label %11715

; <label>:11708                                   ; preds = %11706
  %11709 = fmul fast float %2367, 5.000000e-01
  %11710 = fmul fast float %2368, 5.000000e-01
  %11711 = fmul fast float %2369, 5.000000e-01
  %11712 = fadd fast float %11709, 5.000000e-01
  %11713 = fadd fast float %11710, 5.000000e-01
  %11714 = fadd fast float %11711, 5.000000e-01
  br label %12513

; <label>:11715                                   ; preds = %11706
  %11716 = and i32 %11511, -9
  %11717 = icmp eq i32 %11716, 21
  br i1 %11717, label %12513, label %11718

; <label>:11718                                   ; preds = %11715
  %11719 = icmp eq i32 %11511, 22
  %11720 = icmp eq i32 %11511, 38
  %11721 = or i1 %11719, %11720
  br i1 %11721, label %11722, label %11836

; <label>:11722                                   ; preds = %11718
  %11723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11724 = extractvalue %dx.types.CBufRet.f32 %11723, 0
  %11725 = extractvalue %dx.types.CBufRet.f32 %11723, 1
  %11726 = extractvalue %dx.types.CBufRet.f32 %11723, 2
  %11727 = fadd fast float %11724, %563
  %11728 = fadd fast float %11725, %564
  %11729 = fadd fast float %11726, %565
  %11730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11731 = extractvalue %dx.types.CBufRet.f32 %11730, 0
  %11732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11733 = extractvalue %dx.types.CBufRet.f32 %11732, 0
  %11734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11735 = extractvalue %dx.types.CBufRet.f32 %11734, 0
  %11736 = extractvalue %dx.types.CBufRet.f32 %11730, 1
  %11737 = extractvalue %dx.types.CBufRet.f32 %11732, 1
  %11738 = extractvalue %dx.types.CBufRet.f32 %11734, 1
  %11739 = extractvalue %dx.types.CBufRet.f32 %11730, 3
  %11740 = extractvalue %dx.types.CBufRet.f32 %11732, 3
  %11741 = extractvalue %dx.types.CBufRet.f32 %11734, 3
  %11742 = fadd fast float %11727, %11739
  %11743 = fadd fast float %11728, %11740
  %11744 = fadd fast float %11729, %11741
  %11745 = fmul fast float %11742, %11731
  %11746 = call float @dx.op.tertiary.f32(i32 46, float %11743, float %11733, float %11745)  ; FMad(a,b,c)
  %11747 = call float @dx.op.tertiary.f32(i32 46, float %11744, float %11735, float %11746)  ; FMad(a,b,c)
  %11748 = fmul fast float %11742, %11736
  %11749 = call float @dx.op.tertiary.f32(i32 46, float %11743, float %11737, float %11748)  ; FMad(a,b,c)
  %11750 = call float @dx.op.tertiary.f32(i32 46, float %11744, float %11738, float %11749)  ; FMad(a,b,c)
  %11751 = fsub fast float %11747, %11739
  %11752 = fsub fast float %11750, %11740
  %11753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %11754 = extractvalue %dx.types.CBufRet.f32 %11753, 0
  %11755 = extractvalue %dx.types.CBufRet.f32 %11753, 1
  %11756 = fsub fast float %11751, %11754
  %11757 = fsub fast float %11752, %11755
  %11758 = fmul fast float %11756, %11756
  %11759 = fmul fast float %11757, %11757
  %11760 = fadd fast float %11758, %11759
  %11761 = call float @dx.op.unary.f32(i32 24, float %11760)  ; Sqrt(value)
  %11762 = extractvalue %dx.types.CBufRet.f32 %11753, 2
  %11763 = fcmp fast olt float %11761, %11762
  br i1 %11763, label %11764, label %12513

; <label>:11764                                   ; preds = %11722
  %11765 = fadd fast float %11756, %11762
  %11766 = fadd fast float %11757, %11762
  %11767 = extractvalue %dx.types.CBufRet.f32 %11753, 3
  %11768 = fmul fast float %11765, %11767
  %11769 = fmul fast float %11766, %11767
  %11770 = call float @dx.op.unary.f32(i32 7, float %11768)  ; Saturate(value)
  %11771 = call float @dx.op.unary.f32(i32 7, float %11769)  ; Saturate(value)
  %11772 = fsub fast float 1.000000e+00, %11770
  %11773 = fsub fast float 1.000000e+00, %11771
  %11774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %11772, float %11773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11775 = extractvalue %dx.types.ResRet.f32 %11774, 0
  %11776 = fcmp fast ugt float %11775, 0.000000e+00
  br i1 %11776, label %11777, label %12513

; <label>:11777                                   ; preds = %11764
  br i1 %11719, label %11778, label %11783

; <label>:11778                                   ; preds = %11777
  %11779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %63, float %11772, float %11773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11780 = extractvalue %dx.types.ResRet.f32 %11779, 0
  %11781 = extractvalue %dx.types.ResRet.f32 %11779, 1
  %11782 = extractvalue %dx.types.ResRet.f32 %11779, 2
  br label %12513

; <label>:11783                                   ; preds = %11777
  %11784 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %55, i32 0)  ; GetDimensions(handle,mipLevel)
  %11785 = extractvalue %dx.types.Dimensions %11784, 0
  %11786 = sitofp i32 %11785 to float
  %11787 = extractvalue %dx.types.Dimensions %11784, 1
  %11788 = sitofp i32 %11787 to float
  %11789 = fmul fast float %11786, %11772
  %11790 = fmul fast float %11788, %11773
  %11791 = call float @dx.op.unary.f32(i32 27, float %11789)  ; Round_ni(value)
  %11792 = call float @dx.op.unary.f32(i32 27, float %11790)  ; Round_ni(value)
  %11793 = fptoui float %11786 to i32
  %11794 = uitofp i32 %11793 to float
  %11795 = fmul fast float %11794, %11792
  %11796 = fadd fast float %11795, %11791
  %11797 = fptoui float %11796 to i32
  %11798 = uitofp i32 %11797 to float
  %11799 = fmul fast float %11798, 0x3FE3C6EF40000000
  %11800 = call float @dx.op.unary.f32(i32 22, float %11799)  ; Frc(value)
  %11801 = fadd fast float %11800, 0x3FE5555560000000
  %11802 = fadd fast float %11800, 0x3FD5555560000000
  %11803 = fsub fast float -0.000000e+00, %11800
  %11804 = fsub fast float -0.000000e+00, %11801
  %11805 = fsub fast float -0.000000e+00, %11802
  %11806 = fcmp fast oge float %11800, %11803
  %11807 = fcmp fast oge float %11801, %11804
  %11808 = fcmp fast oge float %11802, %11805
  %11809 = call float @dx.op.unary.f32(i32 6, float %11800)  ; FAbs(value)
  %11810 = call float @dx.op.unary.f32(i32 6, float %11801)  ; FAbs(value)
  %11811 = call float @dx.op.unary.f32(i32 6, float %11802)  ; FAbs(value)
  %11812 = call float @dx.op.unary.f32(i32 22, float %11809)  ; Frc(value)
  %11813 = call float @dx.op.unary.f32(i32 22, float %11810)  ; Frc(value)
  %11814 = call float @dx.op.unary.f32(i32 22, float %11811)  ; Frc(value)
  %11815 = fsub fast float -0.000000e+00, %11812
  %11816 = fsub fast float -0.000000e+00, %11813
  %11817 = fsub fast float -0.000000e+00, %11814
  %11818 = select i1 %11806, float %11812, float %11815
  %11819 = select i1 %11807, float %11813, float %11816
  %11820 = select i1 %11808, float %11814, float %11817
  %11821 = fmul fast float %11818, 6.000000e+00
  %11822 = fmul fast float %11819, 6.000000e+00
  %11823 = fmul fast float %11820, 6.000000e+00
  %11824 = fadd fast float %11821, -3.000000e+00
  %11825 = fadd fast float %11822, -3.000000e+00
  %11826 = fadd fast float %11823, -3.000000e+00
  %11827 = call float @dx.op.unary.f32(i32 6, float %11824)  ; FAbs(value)
  %11828 = call float @dx.op.unary.f32(i32 6, float %11825)  ; FAbs(value)
  %11829 = call float @dx.op.unary.f32(i32 6, float %11826)  ; FAbs(value)
  %11830 = fadd fast float %11827, -1.000000e+00
  %11831 = fadd fast float %11828, -1.000000e+00
  %11832 = fadd fast float %11829, -1.000000e+00
  %11833 = call float @dx.op.unary.f32(i32 7, float %11830)  ; Saturate(value)
  %11834 = call float @dx.op.unary.f32(i32 7, float %11831)  ; Saturate(value)
  %11835 = call float @dx.op.unary.f32(i32 7, float %11832)  ; Saturate(value)
  br label %12513

; <label>:11836                                   ; preds = %11718
  %11837 = icmp eq i32 %11511, 39
  br i1 %11837, label %11838, label %11942

; <label>:11838                                   ; preds = %11836
  %11839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11840 = extractvalue %dx.types.CBufRet.f32 %11839, 0
  %11841 = extractvalue %dx.types.CBufRet.f32 %11839, 1
  %11842 = extractvalue %dx.types.CBufRet.f32 %11839, 2
  %11843 = fadd fast float %11840, %563
  %11844 = fadd fast float %11841, %564
  %11845 = fadd fast float %11842, %565
  %11846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11847 = extractvalue %dx.types.CBufRet.f32 %11846, 0
  %11848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11849 = extractvalue %dx.types.CBufRet.f32 %11848, 0
  %11850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11851 = extractvalue %dx.types.CBufRet.f32 %11850, 0
  %11852 = extractvalue %dx.types.CBufRet.f32 %11846, 1
  %11853 = extractvalue %dx.types.CBufRet.f32 %11848, 1
  %11854 = extractvalue %dx.types.CBufRet.f32 %11850, 1
  %11855 = extractvalue %dx.types.CBufRet.f32 %11846, 3
  %11856 = extractvalue %dx.types.CBufRet.f32 %11848, 3
  %11857 = extractvalue %dx.types.CBufRet.f32 %11850, 3
  %11858 = fadd fast float %11843, %11855
  %11859 = fadd fast float %11844, %11856
  %11860 = fadd fast float %11845, %11857
  %11861 = fmul fast float %11858, %11847
  %11862 = call float @dx.op.tertiary.f32(i32 46, float %11859, float %11849, float %11861)  ; FMad(a,b,c)
  %11863 = call float @dx.op.tertiary.f32(i32 46, float %11860, float %11851, float %11862)  ; FMad(a,b,c)
  %11864 = fmul fast float %11858, %11852
  %11865 = call float @dx.op.tertiary.f32(i32 46, float %11859, float %11853, float %11864)  ; FMad(a,b,c)
  %11866 = call float @dx.op.tertiary.f32(i32 46, float %11860, float %11854, float %11865)  ; FMad(a,b,c)
  %11867 = fsub fast float %11863, %11855
  %11868 = fsub fast float %11866, %11856
  %11869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %11870 = extractvalue %dx.types.CBufRet.f32 %11869, 0
  %11871 = extractvalue %dx.types.CBufRet.f32 %11869, 1
  %11872 = fsub fast float %11867, %11870
  %11873 = fsub fast float %11868, %11871
  %11874 = fmul fast float %11872, %11872
  %11875 = fmul fast float %11873, %11873
  %11876 = fadd fast float %11874, %11875
  %11877 = call float @dx.op.unary.f32(i32 24, float %11876)  ; Sqrt(value)
  %11878 = extractvalue %dx.types.CBufRet.f32 %11869, 2
  %11879 = fcmp fast olt float %11877, %11878
  br i1 %11879, label %11880, label %12513

; <label>:11880                                   ; preds = %11838
  %11881 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %11882 = extractvalue %dx.types.Dimensions %11881, 0
  %11883 = sitofp i32 %11882 to float
  %11884 = extractvalue %dx.types.Dimensions %11881, 1
  %11885 = sitofp i32 %11884 to float
  %11886 = fadd fast float %11872, %11878
  %11887 = fadd fast float %11873, %11878
  %11888 = extractvalue %dx.types.CBufRet.f32 %11869, 3
  %11889 = fmul fast float %11886, %11888
  %11890 = fmul fast float %11887, %11888
  %11891 = call float @dx.op.unary.f32(i32 7, float %11889)  ; Saturate(value)
  %11892 = call float @dx.op.unary.f32(i32 7, float %11890)  ; Saturate(value)
  %11893 = fsub fast float 1.000000e+00, %11891
  %11894 = fsub fast float 1.000000e+00, %11892
  %11895 = fmul fast float %11893, %11883
  %11896 = fmul fast float %11894, %11885
  %11897 = call float @dx.op.unary.f32(i32 27, float %11895)  ; Round_ni(value)
  %11898 = call float @dx.op.unary.f32(i32 27, float %11896)  ; Round_ni(value)
  %11899 = fptoui float %11883 to i32
  %11900 = uitofp i32 %11899 to float
  %11901 = fmul fast float %11898, %11900
  %11902 = fadd fast float %11901, %11897
  %11903 = fptoui float %11902 to i32
  %11904 = uitofp i32 %11903 to float
  %11905 = fmul fast float %11904, 0x3FE3C6EF40000000
  %11906 = call float @dx.op.unary.f32(i32 22, float %11905)  ; Frc(value)
  %11907 = fadd fast float %11906, 0x3FE5555560000000
  %11908 = fadd fast float %11906, 0x3FD5555560000000
  %11909 = fsub fast float -0.000000e+00, %11906
  %11910 = fsub fast float -0.000000e+00, %11907
  %11911 = fsub fast float -0.000000e+00, %11908
  %11912 = fcmp fast oge float %11906, %11909
  %11913 = fcmp fast oge float %11907, %11910
  %11914 = fcmp fast oge float %11908, %11911
  %11915 = call float @dx.op.unary.f32(i32 6, float %11906)  ; FAbs(value)
  %11916 = call float @dx.op.unary.f32(i32 6, float %11907)  ; FAbs(value)
  %11917 = call float @dx.op.unary.f32(i32 6, float %11908)  ; FAbs(value)
  %11918 = call float @dx.op.unary.f32(i32 22, float %11915)  ; Frc(value)
  %11919 = call float @dx.op.unary.f32(i32 22, float %11916)  ; Frc(value)
  %11920 = call float @dx.op.unary.f32(i32 22, float %11917)  ; Frc(value)
  %11921 = fsub fast float -0.000000e+00, %11918
  %11922 = fsub fast float -0.000000e+00, %11919
  %11923 = fsub fast float -0.000000e+00, %11920
  %11924 = select i1 %11912, float %11918, float %11921
  %11925 = select i1 %11913, float %11919, float %11922
  %11926 = select i1 %11914, float %11920, float %11923
  %11927 = fmul fast float %11924, 6.000000e+00
  %11928 = fmul fast float %11925, 6.000000e+00
  %11929 = fmul fast float %11926, 6.000000e+00
  %11930 = fadd fast float %11927, -3.000000e+00
  %11931 = fadd fast float %11928, -3.000000e+00
  %11932 = fadd fast float %11929, -3.000000e+00
  %11933 = call float @dx.op.unary.f32(i32 6, float %11930)  ; FAbs(value)
  %11934 = call float @dx.op.unary.f32(i32 6, float %11931)  ; FAbs(value)
  %11935 = call float @dx.op.unary.f32(i32 6, float %11932)  ; FAbs(value)
  %11936 = fadd fast float %11933, -1.000000e+00
  %11937 = fadd fast float %11934, -1.000000e+00
  %11938 = fadd fast float %11935, -1.000000e+00
  %11939 = call float @dx.op.unary.f32(i32 7, float %11936)  ; Saturate(value)
  %11940 = call float @dx.op.unary.f32(i32 7, float %11937)  ; Saturate(value)
  %11941 = call float @dx.op.unary.f32(i32 7, float %11938)  ; Saturate(value)
  br label %12513

; <label>:11942                                   ; preds = %11836
  %11943 = icmp eq i32 %11511, 23
  br i1 %11943, label %12513, label %11944

; <label>:11944                                   ; preds = %11942
  %11945 = icmp eq i32 %11511, 24
  br i1 %11945, label %11946, label %11972

; <label>:11946                                   ; preds = %11944
  %11947 = and i32 %773, 255
  %11948 = uitofp i32 %11947 to float
  %11949 = fptoui float %11948 to i32
  %11950 = uitofp i32 %11949 to float
  %11951 = fadd fast float %11950, -4.000000e+00
  %11952 = fmul fast float %11951, 0x3FB5555560000000
  %11953 = call float @dx.op.unary.f32(i32 7, float %11952)  ; Saturate(value)
  %11954 = icmp eq i32 %11949, 0
  %11955 = select i1 %11954, float 0.000000e+00, float %11953
  %11956 = icmp ult i32 %11949, 2
  %11957 = select i1 %11956, float 0.000000e+00, float %11953
  %11958 = add i32 %11949, -1
  %11959 = icmp ult i32 %11958, 2
  %11960 = select i1 %11959, float 1.000000e+00, float %11955
  %11961 = icmp ult i32 %11949, 4
  %11962 = select i1 %11961, float 0.000000e+00, float 1.000000e+00
  %11963 = and i32 %11949, -2
  %11964 = icmp eq i32 %11963, 2
  %11965 = icmp eq i32 %11949, 4
  %11966 = select i1 %11965, float 1.000000e+00, float %11962
  %11967 = or i1 %11965, %11964
  %11968 = select i1 %11967, float 1.000000e+00, float %11957
  %11969 = add i32 %11949, -3
  %11970 = icmp ult i32 %11969, 2
  %11971 = select i1 %11970, float 0.000000e+00, float %11960
  br label %12513

; <label>:11972                                   ; preds = %11944
  %11973 = icmp eq i32 %11511, 25
  br i1 %11973, label %11974, label %12000

; <label>:11974                                   ; preds = %11972
  %11975 = and i32 %2373, 255
  %11976 = uitofp i32 %11975 to float
  %11977 = fptoui float %11976 to i32
  %11978 = uitofp i32 %11977 to float
  %11979 = fadd fast float %11978, -4.000000e+00
  %11980 = fmul fast float %11979, 0x3FB5555560000000
  %11981 = call float @dx.op.unary.f32(i32 7, float %11980)  ; Saturate(value)
  %11982 = icmp eq i32 %11977, 0
  %11983 = select i1 %11982, float 0.000000e+00, float %11981
  %11984 = icmp ult i32 %11977, 2
  %11985 = select i1 %11984, float 0.000000e+00, float %11981
  %11986 = add i32 %11977, -1
  %11987 = icmp ult i32 %11986, 2
  %11988 = select i1 %11987, float 1.000000e+00, float %11983
  %11989 = icmp ult i32 %11977, 4
  %11990 = select i1 %11989, float 0.000000e+00, float 1.000000e+00
  %11991 = and i32 %11977, -2
  %11992 = icmp eq i32 %11991, 2
  %11993 = icmp eq i32 %11977, 4
  %11994 = select i1 %11993, float 1.000000e+00, float %11990
  %11995 = or i1 %11993, %11992
  %11996 = select i1 %11995, float 1.000000e+00, float %11985
  %11997 = add i32 %11977, -3
  %11998 = icmp ult i32 %11997, 2
  %11999 = select i1 %11998, float 0.000000e+00, float %11988
  br label %12513

; <label>:12000                                   ; preds = %11972
  %12001 = icmp eq i32 %11511, 27
  br i1 %12001, label %12002, label %12057

; <label>:12002                                   ; preds = %12000
  %12003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %12004 = extractvalue %dx.types.CBufRet.f32 %12003, 2
  %12005 = fptoui float %12004 to i32
  %12006 = fptoui float %568 to i32
  %12007 = and i32 %12006, 31
  %12008 = lshr i32 %12005, %12007
  %12009 = uitofp i32 %12008 to float
  %12010 = fmul fast float %12009, %517
  %12011 = fmul fast float %12009, %518
  %12012 = call float @dx.op.unary.f32(i32 27, float %12010)  ; Round_ni(value)
  %12013 = call float @dx.op.unary.f32(i32 27, float %12011)  ; Round_ni(value)
  %12014 = fptoui float %12012 to i32
  %12015 = fptoui float %12013 to i32
  %12016 = fptoui float %12009 to i32
  %12017 = mul i32 %12016, %12015
  %12018 = add i32 %12017, %12014
  %12019 = uitofp i32 %12018 to float
  %12020 = fmul fast float %12019, 0x3FE3C6EF40000000
  %12021 = call float @dx.op.unary.f32(i32 22, float %12020)  ; Frc(value)
  %12022 = fadd fast float %12021, 0x3FE5555560000000
  %12023 = fadd fast float %12021, 0x3FD5555560000000
  %12024 = fsub fast float -0.000000e+00, %12021
  %12025 = fsub fast float -0.000000e+00, %12022
  %12026 = fsub fast float -0.000000e+00, %12023
  %12027 = fcmp fast oge float %12021, %12024
  %12028 = fcmp fast oge float %12022, %12025
  %12029 = fcmp fast oge float %12023, %12026
  %12030 = call float @dx.op.unary.f32(i32 6, float %12021)  ; FAbs(value)
  %12031 = call float @dx.op.unary.f32(i32 6, float %12022)  ; FAbs(value)
  %12032 = call float @dx.op.unary.f32(i32 6, float %12023)  ; FAbs(value)
  %12033 = call float @dx.op.unary.f32(i32 22, float %12030)  ; Frc(value)
  %12034 = call float @dx.op.unary.f32(i32 22, float %12031)  ; Frc(value)
  %12035 = call float @dx.op.unary.f32(i32 22, float %12032)  ; Frc(value)
  %12036 = fsub fast float -0.000000e+00, %12033
  %12037 = fsub fast float -0.000000e+00, %12034
  %12038 = fsub fast float -0.000000e+00, %12035
  %12039 = select i1 %12027, float %12033, float %12036
  %12040 = select i1 %12028, float %12034, float %12037
  %12041 = select i1 %12029, float %12035, float %12038
  %12042 = fmul fast float %12039, 6.000000e+00
  %12043 = fmul fast float %12040, 6.000000e+00
  %12044 = fmul fast float %12041, 6.000000e+00
  %12045 = fadd fast float %12042, -3.000000e+00
  %12046 = fadd fast float %12043, -3.000000e+00
  %12047 = fadd fast float %12044, -3.000000e+00
  %12048 = call float @dx.op.unary.f32(i32 6, float %12045)  ; FAbs(value)
  %12049 = call float @dx.op.unary.f32(i32 6, float %12046)  ; FAbs(value)
  %12050 = call float @dx.op.unary.f32(i32 6, float %12047)  ; FAbs(value)
  %12051 = fadd fast float %12048, -1.000000e+00
  %12052 = fadd fast float %12049, -1.000000e+00
  %12053 = fadd fast float %12050, -1.000000e+00
  %12054 = call float @dx.op.unary.f32(i32 7, float %12051)  ; Saturate(value)
  %12055 = call float @dx.op.unary.f32(i32 7, float %12052)  ; Saturate(value)
  %12056 = call float @dx.op.unary.f32(i32 7, float %12053)  ; Saturate(value)
  br label %12513

; <label>:12057                                   ; preds = %12000
  %12058 = icmp eq i32 %11511, 30
  br i1 %12058, label %12059, label %12099

; <label>:12059                                   ; preds = %12057
  %12060 = fcmp fast olt float %823, 0.000000e+00
  br i1 %12060, label %12513, label %12061

; <label>:12061                                   ; preds = %12059
  %12062 = fmul fast float %823, 0x3FE3C6EF40000000
  %12063 = call float @dx.op.unary.f32(i32 22, float %12062)  ; Frc(value)
  %12064 = fadd fast float %12063, 0x3FE5555560000000
  %12065 = fadd fast float %12063, 0x3FD5555560000000
  %12066 = fsub fast float -0.000000e+00, %12063
  %12067 = fsub fast float -0.000000e+00, %12064
  %12068 = fsub fast float -0.000000e+00, %12065
  %12069 = fcmp fast oge float %12063, %12066
  %12070 = fcmp fast oge float %12064, %12067
  %12071 = fcmp fast oge float %12065, %12068
  %12072 = call float @dx.op.unary.f32(i32 6, float %12063)  ; FAbs(value)
  %12073 = call float @dx.op.unary.f32(i32 6, float %12064)  ; FAbs(value)
  %12074 = call float @dx.op.unary.f32(i32 6, float %12065)  ; FAbs(value)
  %12075 = call float @dx.op.unary.f32(i32 22, float %12072)  ; Frc(value)
  %12076 = call float @dx.op.unary.f32(i32 22, float %12073)  ; Frc(value)
  %12077 = call float @dx.op.unary.f32(i32 22, float %12074)  ; Frc(value)
  %12078 = fsub fast float -0.000000e+00, %12075
  %12079 = fsub fast float -0.000000e+00, %12076
  %12080 = fsub fast float -0.000000e+00, %12077
  %12081 = select i1 %12069, float %12075, float %12078
  %12082 = select i1 %12070, float %12076, float %12079
  %12083 = select i1 %12071, float %12077, float %12080
  %12084 = fmul fast float %12081, 6.000000e+00
  %12085 = fmul fast float %12082, 6.000000e+00
  %12086 = fmul fast float %12083, 6.000000e+00
  %12087 = fadd fast float %12084, -3.000000e+00
  %12088 = fadd fast float %12085, -3.000000e+00
  %12089 = fadd fast float %12086, -3.000000e+00
  %12090 = call float @dx.op.unary.f32(i32 6, float %12087)  ; FAbs(value)
  %12091 = call float @dx.op.unary.f32(i32 6, float %12088)  ; FAbs(value)
  %12092 = call float @dx.op.unary.f32(i32 6, float %12089)  ; FAbs(value)
  %12093 = fadd fast float %12090, -1.000000e+00
  %12094 = fadd fast float %12091, -1.000000e+00
  %12095 = fadd fast float %12092, -1.000000e+00
  %12096 = call float @dx.op.unary.f32(i32 7, float %12093)  ; Saturate(value)
  %12097 = call float @dx.op.unary.f32(i32 7, float %12094)  ; Saturate(value)
  %12098 = call float @dx.op.unary.f32(i32 7, float %12095)  ; Saturate(value)
  br label %12513

; <label>:12099                                   ; preds = %12057
  %12100 = add i32 %11511, -31
  %12101 = icmp ult i32 %12100, 2
  br i1 %12101, label %12102, label %12110

; <label>:12102                                   ; preds = %12099
  %12103 = fcmp fast olt float %824, 0.000000e+00
  %12104 = call float @dx.op.unary.f32(i32 6, float %824)  ; FAbs(value)
  %12105 = fmul fast float %12104, 5.000000e-01
  %12106 = call float @dx.op.unary.f32(i32 7, float %12105)  ; Saturate(value)
  %12107 = select i1 %12103, float 0.000000e+00, float %12106
  %12108 = select i1 %12103, float %12106, float 0.000000e+00
  %12109 = fadd fast float %12106, 5.000000e-01
  br label %12513

; <label>:12110                                   ; preds = %12099
  %12111 = icmp eq i32 %11511, 36
  br i1 %12111, label %12112, label %12144

; <label>:12112                                   ; preds = %12110
  %12113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %12114 = extractvalue %dx.types.CBufRet.i32 %12113, 0
  %12115 = and i32 %12114, 2048
  %12116 = icmp ne i32 %12115, 0
  %12117 = call float @dx.op.binary.f32(i32 35, float %3049, float %3050)  ; FMax(a,b)
  %12118 = call float @dx.op.binary.f32(i32 35, float %3048, float %12117)  ; FMax(a,b)
  %12119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12120 = extractvalue %dx.types.CBufRet.f32 %12119, 1
  %12121 = fcmp fast oge float %12118, %12120
  %12122 = and i1 %12116, %12121
  br i1 %12122, label %12123, label %12129

; <label>:12123                                   ; preds = %12112
  %12124 = fsub fast float 1.000000e+00, %11490
  %12125 = fmul fast float %12124, 5.000000e-01
  %12126 = fadd fast float %12125, %11490
  %12127 = fmul fast float %11491, 5.000000e-01
  %12128 = fmul fast float %11492, 5.000000e-01
  br label %12513

; <label>:12129                                   ; preds = %12112
  %12130 = call float @dx.op.dot3.f32(i32 55, float %3001, float %3002, float %3003, float %2920, float %2921, float %2922)  ; Dot3(ax,ay,az,bx,by,bz)
  %12131 = and i32 %12114, 1024
  %12132 = icmp ne i32 %12131, 0
  %12133 = extractvalue %dx.types.CBufRet.f32 %12119, 2
  %12134 = fcmp fast ole float %12130, %12133
  %12135 = and i1 %12132, %12134
  br i1 %12135, label %12136, label %12513

; <label>:12136                                   ; preds = %12129
  %12137 = fsub fast float 1.000000e+00, %11490
  %12138 = fsub fast float 1.000000e+00, %11491
  %12139 = fmul fast float %12137, 5.000000e-01
  %12140 = fmul fast float %12138, 5.000000e-01
  %12141 = fadd fast float %12139, %11490
  %12142 = fadd fast float %12140, %11491
  %12143 = fmul fast float %11492, 5.000000e-01
  br label %12513

; <label>:12144                                   ; preds = %12110
  %12145 = icmp eq i32 %11511, 40
  br i1 %12145, label %12146, label %12383

; <label>:12146                                   ; preds = %12144
  %12147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %12148 = extractvalue %dx.types.CBufRet.f32 %12147, 0
  %12149 = fcmp fast ogt float %2991, %12148
  %12150 = zext i1 %12149 to i32
  %12151 = extractvalue %dx.types.CBufRet.f32 %12147, 1
  %12152 = fcmp fast ogt float %2991, %12151
  %12153 = zext i1 %12152 to i32
  %12154 = add nuw nsw i32 %12153, %12150
  %12155 = extractvalue %dx.types.CBufRet.f32 %12147, 2
  %12156 = fcmp fast ogt float %2991, %12155
  %12157 = zext i1 %12156 to i32
  %12158 = add nuw nsw i32 %12154, %12157
  %12159 = icmp ult i32 %12158, 3
  %12160 = zext i1 %12159 to i32
  %12161 = shl nuw nsw i32 %12158, 2
  %12162 = add nuw nsw i32 %12161, 48
  %12163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12162)  ; CBufferLoadLegacy(handle,regIndex)
  %12164 = extractvalue %dx.types.CBufRet.f32 %12163, 1
  %12165 = fcmp fast ogt float %2991, %12164
  %12166 = zext i1 %12165 to i32
  %12167 = or i32 %12161, 1
  %12168 = add nuw nsw i32 %12167, 48
  %12169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12168)  ; CBufferLoadLegacy(handle,regIndex)
  %12170 = extractvalue %dx.types.CBufRet.f32 %12169, 1
  %12171 = fcmp fast ogt float %2991, %12170
  %12172 = zext i1 %12171 to i32
  %12173 = add nuw nsw i32 %12172, %12166
  %12174 = or i32 %12161, 2
  %12175 = add nuw nsw i32 %12174, 48
  %12176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12175)  ; CBufferLoadLegacy(handle,regIndex)
  %12177 = extractvalue %dx.types.CBufRet.f32 %12176, 1
  %12178 = fcmp fast ogt float %2991, %12177
  %12179 = zext i1 %12178 to i32
  %12180 = add nuw nsw i32 %12173, %12179
  %12181 = call i32 @dx.op.binary.i32(i32 40, i32 %12180, i32 3)  ; UMin(a,b)
  %12182 = add i32 %12161, %12181
  %12183 = call i32 @dx.op.binary.i32(i32 40, i32 %12182, i32 12)  ; UMin(a,b)
  %12184 = add i32 %12183, 48
  %12185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12184)  ; CBufferLoadLegacy(handle,regIndex)
  %12186 = extractvalue %dx.types.CBufRet.f32 %12185, 0
  %12187 = fcmp fast oge float %2991, %12186
  %12188 = zext i1 %12187 to i32
  %12189 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %12160)  ; UMin(a,b)
  %12190 = call i32 @dx.op.binary.i32(i32 40, i32 %12188, i32 %12189)  ; UMin(a,b)
  %12191 = fmul fast float %11501, 7.500000e-01
  %12192 = fadd fast float %12191, %11499
  %12193 = fcmp fast ult float %11496, %12192
  br i1 %12193, label %12233, label %12194

; <label>:12194                                   ; preds = %12146
  %12195 = uitofp i32 %12183 to float
  %12196 = fmul fast float %12195, 0x3FE3C6EF40000000
  %12197 = call float @dx.op.unary.f32(i32 22, float %12196)  ; Frc(value)
  %12198 = fadd fast float %12197, 0x3FE5555560000000
  %12199 = fadd fast float %12197, 0x3FD5555560000000
  %12200 = fsub fast float -0.000000e+00, %12197
  %12201 = fsub fast float -0.000000e+00, %12198
  %12202 = fsub fast float -0.000000e+00, %12199
  %12203 = fcmp fast oge float %12197, %12200
  %12204 = fcmp fast oge float %12198, %12201
  %12205 = fcmp fast oge float %12199, %12202
  %12206 = call float @dx.op.unary.f32(i32 6, float %12197)  ; FAbs(value)
  %12207 = call float @dx.op.unary.f32(i32 6, float %12198)  ; FAbs(value)
  %12208 = call float @dx.op.unary.f32(i32 6, float %12199)  ; FAbs(value)
  %12209 = call float @dx.op.unary.f32(i32 22, float %12206)  ; Frc(value)
  %12210 = call float @dx.op.unary.f32(i32 22, float %12207)  ; Frc(value)
  %12211 = call float @dx.op.unary.f32(i32 22, float %12208)  ; Frc(value)
  %12212 = fsub fast float -0.000000e+00, %12209
  %12213 = fsub fast float -0.000000e+00, %12210
  %12214 = fsub fast float -0.000000e+00, %12211
  %12215 = select i1 %12203, float %12209, float %12212
  %12216 = select i1 %12204, float %12210, float %12213
  %12217 = select i1 %12205, float %12211, float %12214
  %12218 = fmul fast float %12215, 6.000000e+00
  %12219 = fmul fast float %12216, 6.000000e+00
  %12220 = fmul fast float %12217, 6.000000e+00
  %12221 = fadd fast float %12218, -3.000000e+00
  %12222 = fadd fast float %12219, -3.000000e+00
  %12223 = fadd fast float %12220, -3.000000e+00
  %12224 = call float @dx.op.unary.f32(i32 6, float %12221)  ; FAbs(value)
  %12225 = call float @dx.op.unary.f32(i32 6, float %12222)  ; FAbs(value)
  %12226 = call float @dx.op.unary.f32(i32 6, float %12223)  ; FAbs(value)
  %12227 = fadd fast float %12224, -1.000000e+00
  %12228 = fadd fast float %12225, -1.000000e+00
  %12229 = fadd fast float %12226, -1.000000e+00
  %12230 = call float @dx.op.unary.f32(i32 7, float %12227)  ; Saturate(value)
  %12231 = call float @dx.op.unary.f32(i32 7, float %12228)  ; Saturate(value)
  %12232 = call float @dx.op.unary.f32(i32 7, float %12229)  ; Saturate(value)
  br label %12370

; <label>:12233                                   ; preds = %12146
  %12234 = fmul fast float %11501, 5.000000e-01
  %12235 = fadd fast float %12234, %11499
  %12236 = fcmp fast ult float %11496, %12235
  br i1 %12236, label %12263, label %12237

; <label>:12237                                   ; preds = %12233
  %12238 = add i32 %12190, 4
  %12239 = icmp eq i32 %12238, 0
  br i1 %12239, label %12370, label %12240

; <label>:12240                                   ; preds = %12237
  br label %12241

; <label>:12241                                   ; preds = %12241, %12240
  %12242 = phi float [ %12258, %12241 ], [ 0.000000e+00, %12240 ]
  %12243 = phi i32 [ %12259, %12241 ], [ 0, %12240 ]
  %12244 = add i32 %12183, 32
  %12245 = add i32 %12244, %12243
  %12246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12245)  ; CBufferLoadLegacy(handle,regIndex)
  %12247 = extractvalue %dx.types.CBufRet.f32 %12246, 0
  %12248 = extractvalue %dx.types.CBufRet.f32 %12246, 1
  %12249 = extractvalue %dx.types.CBufRet.f32 %12246, 2
  %12250 = extractvalue %dx.types.CBufRet.f32 %12246, 3
  %12251 = fmul fast float %12247, %2991
  %12252 = fadd fast float %12251, %12248
  %12253 = call float @dx.op.unary.f32(i32 7, float %12252)  ; Saturate(value)
  %12254 = fmul fast float %12249, %2991
  %12255 = fadd fast float %12254, %12250
  %12256 = call float @dx.op.unary.f32(i32 7, float %12255)  ; Saturate(value)
  %12257 = call float @dx.op.binary.f32(i32 36, float %12253, float %12256)  ; FMin(a,b)
  %12258 = fadd fast float %12257, %12242
  %12259 = add nuw i32 %12243, 1
  %12260 = icmp eq i32 %12259, %12238
  br i1 %12260, label %12261, label %12241

; <label>:12261                                   ; preds = %12241
  %12262 = fmul float %12258, 2.500000e-01
  br label %12370

; <label>:12263                                   ; preds = %12233
  %12264 = fmul fast float %11501, 2.500000e-01
  %12265 = fadd fast float %12264, %11499
  %12266 = fcmp fast ult float %11496, %12265
  br i1 %12266, label %12366, label %12267

; <label>:12267                                   ; preds = %12263
  %12268 = add i32 %12183, 32
  %12269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %12268)  ; CBufferLoadLegacy(handle,regIndex)
  %12270 = extractvalue %dx.types.CBufRet.f32 %12269, 0
  %12271 = extractvalue %dx.types.CBufRet.f32 %12269, 1
  %12272 = extractvalue %dx.types.CBufRet.f32 %12269, 2
  %12273 = extractvalue %dx.types.CBufRet.f32 %12269, 3
  %12274 = fmul fast float %12270, %2991
  %12275 = fadd fast float %12274, %12271
  %12276 = call float @dx.op.unary.f32(i32 7, float %12275)  ; Saturate(value)
  %12277 = fmul fast float %12272, %2991
  %12278 = fadd fast float %12277, %12273
  %12279 = call float @dx.op.unary.f32(i32 7, float %12278)  ; Saturate(value)
  %12280 = call float @dx.op.binary.f32(i32 36, float %12276, float %12279)  ; FMin(a,b)
  %12281 = uitofp i32 %12183 to float
  %12282 = fmul fast float %12281, 0x3FE3C6EF40000000
  %12283 = call float @dx.op.unary.f32(i32 22, float %12282)  ; Frc(value)
  %12284 = fadd fast float %12283, 0x3FE5555560000000
  %12285 = fadd fast float %12283, 0x3FD5555560000000
  %12286 = fsub fast float -0.000000e+00, %12283
  %12287 = fsub fast float -0.000000e+00, %12284
  %12288 = fsub fast float -0.000000e+00, %12285
  %12289 = fcmp fast oge float %12283, %12286
  %12290 = fcmp fast oge float %12284, %12287
  %12291 = fcmp fast oge float %12285, %12288
  %12292 = call float @dx.op.unary.f32(i32 6, float %12283)  ; FAbs(value)
  %12293 = call float @dx.op.unary.f32(i32 6, float %12284)  ; FAbs(value)
  %12294 = call float @dx.op.unary.f32(i32 6, float %12285)  ; FAbs(value)
  %12295 = call float @dx.op.unary.f32(i32 22, float %12292)  ; Frc(value)
  %12296 = call float @dx.op.unary.f32(i32 22, float %12293)  ; Frc(value)
  %12297 = call float @dx.op.unary.f32(i32 22, float %12294)  ; Frc(value)
  %12298 = fsub fast float -0.000000e+00, %12295
  %12299 = fsub fast float -0.000000e+00, %12296
  %12300 = fsub fast float -0.000000e+00, %12297
  %12301 = select i1 %12289, float %12295, float %12298
  %12302 = select i1 %12290, float %12296, float %12299
  %12303 = select i1 %12291, float %12297, float %12300
  %12304 = fmul fast float %12301, 6.000000e+00
  %12305 = fmul fast float %12302, 6.000000e+00
  %12306 = fmul fast float %12303, 6.000000e+00
  %12307 = fadd fast float %12304, -3.000000e+00
  %12308 = fadd fast float %12305, -3.000000e+00
  %12309 = fadd fast float %12306, -3.000000e+00
  %12310 = call float @dx.op.unary.f32(i32 6, float %12307)  ; FAbs(value)
  %12311 = call float @dx.op.unary.f32(i32 6, float %12308)  ; FAbs(value)
  %12312 = call float @dx.op.unary.f32(i32 6, float %12309)  ; FAbs(value)
  %12313 = fadd fast float %12310, -1.000000e+00
  %12314 = fadd fast float %12311, -1.000000e+00
  %12315 = fadd fast float %12312, -1.000000e+00
  %12316 = call float @dx.op.unary.f32(i32 7, float %12313)  ; Saturate(value)
  %12317 = call float @dx.op.unary.f32(i32 7, float %12314)  ; Saturate(value)
  %12318 = call float @dx.op.unary.f32(i32 7, float %12315)  ; Saturate(value)
  %12319 = fadd fast float %12281, 1.000000e+00
  %12320 = fmul fast float %12319, 0x3FE3C6EF40000000
  %12321 = call float @dx.op.unary.f32(i32 22, float %12320)  ; Frc(value)
  %12322 = fadd fast float %12321, 0x3FE5555560000000
  %12323 = fadd fast float %12321, 0x3FD5555560000000
  %12324 = fsub fast float -0.000000e+00, %12321
  %12325 = fsub fast float -0.000000e+00, %12322
  %12326 = fsub fast float -0.000000e+00, %12323
  %12327 = fcmp fast oge float %12321, %12324
  %12328 = fcmp fast oge float %12322, %12325
  %12329 = fcmp fast oge float %12323, %12326
  %12330 = call float @dx.op.unary.f32(i32 6, float %12321)  ; FAbs(value)
  %12331 = call float @dx.op.unary.f32(i32 6, float %12322)  ; FAbs(value)
  %12332 = call float @dx.op.unary.f32(i32 6, float %12323)  ; FAbs(value)
  %12333 = call float @dx.op.unary.f32(i32 22, float %12330)  ; Frc(value)
  %12334 = call float @dx.op.unary.f32(i32 22, float %12331)  ; Frc(value)
  %12335 = call float @dx.op.unary.f32(i32 22, float %12332)  ; Frc(value)
  %12336 = fsub fast float -0.000000e+00, %12333
  %12337 = fsub fast float -0.000000e+00, %12334
  %12338 = fsub fast float -0.000000e+00, %12335
  %12339 = select i1 %12327, float %12333, float %12336
  %12340 = select i1 %12328, float %12334, float %12337
  %12341 = select i1 %12329, float %12335, float %12338
  %12342 = fmul fast float %12339, 6.000000e+00
  %12343 = fmul fast float %12340, 6.000000e+00
  %12344 = fmul fast float %12341, 6.000000e+00
  %12345 = fadd fast float %12342, -3.000000e+00
  %12346 = fadd fast float %12343, -3.000000e+00
  %12347 = fadd fast float %12344, -3.000000e+00
  %12348 = call float @dx.op.unary.f32(i32 6, float %12345)  ; FAbs(value)
  %12349 = call float @dx.op.unary.f32(i32 6, float %12346)  ; FAbs(value)
  %12350 = call float @dx.op.unary.f32(i32 6, float %12347)  ; FAbs(value)
  %12351 = fadd fast float %12348, -1.000000e+00
  %12352 = fadd fast float %12349, -1.000000e+00
  %12353 = fadd fast float %12350, -1.000000e+00
  %12354 = call float @dx.op.unary.f32(i32 7, float %12351)  ; Saturate(value)
  %12355 = call float @dx.op.unary.f32(i32 7, float %12352)  ; Saturate(value)
  %12356 = call float @dx.op.unary.f32(i32 7, float %12353)  ; Saturate(value)
  %12357 = fsub fast float %12354, %12316
  %12358 = fsub fast float %12355, %12317
  %12359 = fsub fast float %12356, %12318
  %12360 = fmul fast float %12357, %12280
  %12361 = fmul fast float %12358, %12280
  %12362 = fmul fast float %12359, %12280
  %12363 = fadd fast float %12360, %12316
  %12364 = fadd fast float %12361, %12317
  %12365 = fadd fast float %12362, %12318
  br label %12370

; <label>:12366                                   ; preds = %12263
  %12367 = icmp ne i32 %12190, 0
  %12368 = select i1 %12367, float 1.000000e+00, float 0.000000e+00
  %12369 = select i1 %12367, float 0.000000e+00, float 1.000000e+00
  br label %12370

; <label>:12370                                   ; preds = %12366, %12267, %12261, %12237, %12194
  %12371 = phi float [ %12230, %12194 ], [ %12363, %12267 ], [ %12368, %12366 ], [ 0.000000e+00, %12237 ], [ %12262, %12261 ]
  %12372 = phi float [ %12231, %12194 ], [ %12364, %12267 ], [ %12369, %12366 ], [ 0.000000e+00, %12237 ], [ %12262, %12261 ]
  %12373 = phi float [ %12232, %12194 ], [ %12365, %12267 ], [ 0.000000e+00, %12366 ], [ 0.000000e+00, %12237 ], [ %12262, %12261 ]
  %12374 = fsub fast float %12371, %11490
  %12375 = fsub fast float %12372, %11491
  %12376 = fsub fast float %12373, %11492
  %12377 = fmul fast float %12374, 5.000000e-01
  %12378 = fmul fast float %12375, 5.000000e-01
  %12379 = fmul fast float %12376, 5.000000e-01
  %12380 = fadd fast float %12377, %11490
  %12381 = fadd fast float %12378, %11491
  %12382 = fadd fast float %12379, %11492
  br label %12513

; <label>:12383                                   ; preds = %12144
  %12384 = icmp eq i32 %11511, 41
  br i1 %12384, label %12385, label %12462

; <label>:12385                                   ; preds = %12383
  %12386 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %12387 = extractvalue %dx.types.CBufRet.i32 %12386, 0
  %12388 = icmp eq i32 %12387, 2
  %12389 = and i32 %2378, 2
  %12390 = icmp ne i32 %12389, 0
  %12391 = and i1 %12390, %12388
  %12392 = icmp eq i32 %12387, 3
  %12393 = and i32 %2378, 4
  %12394 = icmp ne i32 %12393, 0
  %12395 = and i1 %12394, %12392
  %12396 = or i1 %12395, %12391
  %12397 = icmp eq i32 %12387, 4
  %12398 = and i32 %2378, 8
  %12399 = icmp ne i32 %12398, 0
  %12400 = and i1 %12399, %12397
  %12401 = or i1 %12400, %12396
  %12402 = icmp eq i32 %12387, 5
  %12403 = and i32 %2378, 16
  %12404 = icmp ne i32 %12403, 0
  %12405 = and i1 %12404, %12402
  %12406 = or i1 %12405, %12401
  %12407 = icmp eq i32 %12387, 6
  %12408 = and i32 %2378, 32
  %12409 = icmp ne i32 %12408, 0
  %12410 = and i1 %12409, %12407
  %12411 = or i1 %12410, %12406
  %12412 = icmp eq i32 %12387, 8
  %12413 = and i32 %2378, 64
  %12414 = icmp ne i32 %12413, 0
  %12415 = and i1 %12414, %12412
  %12416 = or i1 %12415, %12411
  %12417 = icmp eq i32 %12387, 9
  %12418 = and i32 %2378, 128
  %12419 = icmp ne i32 %12418, 0
  %12420 = and i1 %12419, %12417
  %12421 = or i1 %12420, %12416
  %12422 = icmp eq i32 %12387, 11
  %12423 = and i32 %2378, 160
  %12424 = icmp ne i32 %12423, 0
  %12425 = and i1 %12424, %12422
  %12426 = or i1 %12425, %12421
  %12427 = icmp eq i32 %12387, 13
  %12428 = and i32 %2378, 256
  %12429 = icmp ne i32 %12428, 0
  %12430 = and i1 %12429, %12427
  %12431 = or i1 %12430, %12426
  %12432 = icmp eq i32 %12387, 14
  %12433 = and i32 %2378, 512
  %12434 = icmp ne i32 %12433, 0
  %12435 = and i1 %12434, %12432
  %12436 = or i1 %12435, %12431
  %12437 = icmp eq i32 %12387, 7
  %12438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %12439 = extractvalue %dx.types.ResRet.i32 %12438, 0
  %12440 = and i32 %12439, 1024
  %12441 = icmp ne i32 %12440, 0
  %12442 = and i1 %12437, %12441
  %12443 = or i1 %12442, %12436
  %12444 = icmp eq i32 %12387, 10
  %12445 = and i32 %12439, 2048
  %12446 = icmp ne i32 %12445, 0
  %12447 = and i1 %12444, %12446
  %12448 = or i1 %12447, %12443
  %12449 = icmp eq i32 %12387, 12
  %12450 = and i32 %12439, 3072
  %12451 = icmp ne i32 %12450, 0
  %12452 = and i1 %12449, %12451
  %12453 = or i1 %12452, %12448
  %12454 = icmp eq i32 %12387, 15
  %12455 = and i32 %12439, 4096
  %12456 = icmp ne i32 %12455, 0
  %12457 = and i1 %12454, %12456
  %12458 = or i1 %12457, %12453
  %12459 = select i1 %12458, float 5.000000e-01, float %11490
  %12460 = select i1 %12458, float 0x3FB99999A0000000, float %11491
  %12461 = select i1 %12458, float 0x3FB99999A0000000, float %11492
  br label %12513

; <label>:12462                                   ; preds = %12383
  %12463 = icmp eq i32 %11511, 42
  br i1 %12463, label %12464, label %12503

; <label>:12464                                   ; preds = %12462
  %12465 = uitofp i32 %99 to float
  %12466 = fmul fast float %12465, 0x3FE3C6EF40000000
  %12467 = call float @dx.op.unary.f32(i32 22, float %12466)  ; Frc(value)
  %12468 = fadd fast float %12467, 0x3FE5555560000000
  %12469 = fadd fast float %12467, 0x3FD5555560000000
  %12470 = fsub fast float -0.000000e+00, %12467
  %12471 = fsub fast float -0.000000e+00, %12468
  %12472 = fsub fast float -0.000000e+00, %12469
  %12473 = fcmp fast oge float %12467, %12470
  %12474 = fcmp fast oge float %12468, %12471
  %12475 = fcmp fast oge float %12469, %12472
  %12476 = call float @dx.op.unary.f32(i32 6, float %12467)  ; FAbs(value)
  %12477 = call float @dx.op.unary.f32(i32 6, float %12468)  ; FAbs(value)
  %12478 = call float @dx.op.unary.f32(i32 6, float %12469)  ; FAbs(value)
  %12479 = call float @dx.op.unary.f32(i32 22, float %12476)  ; Frc(value)
  %12480 = call float @dx.op.unary.f32(i32 22, float %12477)  ; Frc(value)
  %12481 = call float @dx.op.unary.f32(i32 22, float %12478)  ; Frc(value)
  %12482 = fsub fast float -0.000000e+00, %12479
  %12483 = fsub fast float -0.000000e+00, %12480
  %12484 = fsub fast float -0.000000e+00, %12481
  %12485 = select i1 %12473, float %12479, float %12482
  %12486 = select i1 %12474, float %12480, float %12483
  %12487 = select i1 %12475, float %12481, float %12484
  %12488 = fmul fast float %12485, 6.000000e+00
  %12489 = fmul fast float %12486, 6.000000e+00
  %12490 = fmul fast float %12487, 6.000000e+00
  %12491 = fadd fast float %12488, -3.000000e+00
  %12492 = fadd fast float %12489, -3.000000e+00
  %12493 = fadd fast float %12490, -3.000000e+00
  %12494 = call float @dx.op.unary.f32(i32 6, float %12491)  ; FAbs(value)
  %12495 = call float @dx.op.unary.f32(i32 6, float %12492)  ; FAbs(value)
  %12496 = call float @dx.op.unary.f32(i32 6, float %12493)  ; FAbs(value)
  %12497 = fadd fast float %12494, -1.000000e+00
  %12498 = fadd fast float %12495, -1.000000e+00
  %12499 = fadd fast float %12496, -1.000000e+00
  %12500 = call float @dx.op.unary.f32(i32 7, float %12497)  ; Saturate(value)
  %12501 = call float @dx.op.unary.f32(i32 7, float %12498)  ; Saturate(value)
  %12502 = call float @dx.op.unary.f32(i32 7, float %12499)  ; Saturate(value)
  br label %12513

; <label>:12503                                   ; preds = %12462
  %12504 = icmp eq i32 %11511, 43
  br i1 %12504, label %12513, label %12505

; <label>:12505                                   ; preds = %12503
  %12506 = icmp eq i32 %11511, 45
  br i1 %12506, label %12507, label %12513

; <label>:12507                                   ; preds = %12505
  %12508 = fcmp fast ogt float %2379, %2380
  %12509 = fsub fast float %2379, %2380
  %12510 = call float @dx.op.unary.f32(i32 6, float %12509)  ; FAbs(value)
  %12511 = select i1 %12508, float %12510, float 0.000000e+00
  %12512 = select i1 %12508, float 0.000000e+00, float %12510
  br label %12513

; <label>:12513                                   ; preds = %12507, %12505, %12503, %12464, %12385, %12370, %12136, %12129, %12123, %12102, %12061, %12059, %12002, %11974, %11946, %11942, %11880, %11838, %11783, %11778, %11764, %11722, %11715, %11708, %11704, %11702, %11700, %11698, %11696, %11694, %11692, %11690, %11688, %11686, %11672, %11668, %11666, %11661, %11573, %11555, %11516, %11489
  %12514 = phi float [ %11552, %11516 ], [ %11658, %11573 ], [ %11681, %11672 ], [ %11687, %11686 ], [ %11712, %11708 ], [ %11780, %11778 ], [ %11833, %11783 ], [ %11939, %11880 ], [ %11966, %11946 ], [ %11994, %11974 ], [ %12054, %12002 ], [ %12096, %12061 ], [ %12109, %12102 ], [ %12126, %12123 ], [ %12141, %12136 ], [ %11490, %12129 ], [ %12380, %12370 ], [ %12459, %12385 ], [ %12500, %12464 ], [ %12511, %12507 ], [ %11490, %12505 ], [ %11490, %11489 ], [ 0.000000e+00, %11702 ], [ 0.000000e+00, %11704 ], [ 0.000000e+00, %11715 ], [ 1.000000e+00, %11764 ], [ 0.000000e+00, %11722 ], [ 0.000000e+00, %11838 ], [ 0.000000e+00, %12059 ], [ 0.000000e+00, %11555 ], [ 0.000000e+00, %11661 ], [ %699, %11666 ], [ %714, %11668 ], [ %754, %11688 ], [ %767, %11690 ], [ %2370, %11692 ], [ %523, %11694 ], [ %2371, %11696 ], [ %2372, %11698 ], [ %2381, %11700 ], [ %517, %12503 ], [ 0.000000e+00, %11942 ]
  %12515 = phi float [ %11553, %11516 ], [ %11659, %11573 ], [ %11683, %11672 ], [ %11687, %11686 ], [ %11713, %11708 ], [ %11781, %11778 ], [ %11834, %11783 ], [ %11940, %11880 ], [ %11968, %11946 ], [ %11996, %11974 ], [ %12055, %12002 ], [ %12097, %12061 ], [ %12107, %12102 ], [ %12127, %12123 ], [ %12142, %12136 ], [ %11491, %12129 ], [ %12381, %12370 ], [ %12460, %12385 ], [ %12501, %12464 ], [ %12512, %12507 ], [ %11491, %12505 ], [ %11491, %11489 ], [ 1.000000e+00, %11702 ], [ 0.000000e+00, %11704 ], [ 0.000000e+00, %11715 ], [ 0.000000e+00, %11764 ], [ 1.000000e+00, %11722 ], [ 1.000000e+00, %11838 ], [ 1.000000e+00, %12059 ], [ 0.000000e+00, %11555 ], [ 0.000000e+00, %11661 ], [ %699, %11666 ], [ %714, %11668 ], [ %754, %11688 ], [ %767, %11690 ], [ %2370, %11692 ], [ %523, %11694 ], [ %2371, %11696 ], [ %2372, %11698 ], [ %2381, %11700 ], [ %518, %12503 ], [ 0.000000e+00, %11942 ]
  %12516 = phi float [ %11554, %11516 ], [ %11660, %11573 ], [ 0.000000e+00, %11672 ], [ %11687, %11686 ], [ %11714, %11708 ], [ %11782, %11778 ], [ %11835, %11783 ], [ %11941, %11880 ], [ %11971, %11946 ], [ %11999, %11974 ], [ %12056, %12002 ], [ %12098, %12061 ], [ %12108, %12102 ], [ %12128, %12123 ], [ %12143, %12136 ], [ %11492, %12129 ], [ %12382, %12370 ], [ %12461, %12385 ], [ %12502, %12464 ], [ 0.000000e+00, %12507 ], [ %11492, %12505 ], [ %11492, %11489 ], [ 1.000000e+00, %11702 ], [ 0.000000e+00, %11704 ], [ 0.000000e+00, %11715 ], [ 1.000000e+00, %11764 ], [ 1.000000e+00, %11722 ], [ 1.000000e+00, %11838 ], [ 0.000000e+00, %12059 ], [ 0.000000e+00, %11555 ], [ 0.000000e+00, %11661 ], [ %699, %11666 ], [ %714, %11668 ], [ %754, %11688 ], [ %767, %11690 ], [ %2370, %11692 ], [ %523, %11694 ], [ %2371, %11696 ], [ %2372, %11698 ], [ %2381, %11700 ], [ 0.000000e+00, %12503 ], [ 0.000000e+00, %11942 ]
  %12517 = fadd fast float %2394, 0x3FE3C6EF40000000
  %12518 = call float @dx.op.unary.f32(i32 22, float %12517)  ; Frc(value)
  %12519 = call float @dx.op.unary.f32(i32 23, float %12514)  ; Log(value)
  %12520 = fadd fast float %12519, -7.000000e+00
  %12521 = call float @dx.op.unary.f32(i32 21, float %12520)  ; Exp(value)
  %12522 = fmul fast float %12518, 2.000000e+00
  %12523 = fadd fast float %12522, -1.000000e+00
  %12524 = fmul fast float %12521, %12523
  %12525 = fcmp fast ogt float %12514, 0.000000e+00
  %12526 = select i1 %12525, float %12524, float 0.000000e+00
  %12527 = fadd fast float %12526, %12514
  %12528 = fadd fast float %2394, 0x3FF3C6EF40000000
  %12529 = call float @dx.op.unary.f32(i32 22, float %12528)  ; Frc(value)
  %12530 = call float @dx.op.unary.f32(i32 23, float %12515)  ; Log(value)
  %12531 = fadd fast float %12530, -7.000000e+00
  %12532 = call float @dx.op.unary.f32(i32 21, float %12531)  ; Exp(value)
  %12533 = fmul fast float %12529, 2.000000e+00
  %12534 = fadd fast float %12533, -1.000000e+00
  %12535 = fmul fast float %12532, %12534
  %12536 = fcmp fast ogt float %12515, 0.000000e+00
  %12537 = select i1 %12536, float %12535, float 0.000000e+00
  %12538 = fadd fast float %12537, %12515
  %12539 = fadd fast float %2394, 0x3FFDAA66E0000000
  %12540 = call float @dx.op.unary.f32(i32 22, float %12539)  ; Frc(value)
  %12541 = call float @dx.op.unary.f32(i32 23, float %12516)  ; Log(value)
  %12542 = fadd fast float %12541, -6.000000e+00
  %12543 = call float @dx.op.unary.f32(i32 21, float %12542)  ; Exp(value)
  %12544 = fmul fast float %12540, 2.000000e+00
  %12545 = fadd fast float %12544, -1.000000e+00
  %12546 = fmul fast float %12543, %12545
  %12547 = fcmp fast ogt float %12516, 0.000000e+00
  %12548 = select i1 %12547, float %12546, float 0.000000e+00
  %12549 = fadd fast float %12548, %12516
  %12550 = call float @dx.op.binary.f32(i32 36, float %12527, float 3.225500e+04)  ; FMin(a,b)
  %12551 = call float @dx.op.binary.f32(i32 36, float %12538, float 3.225500e+04)  ; FMin(a,b)
  %12552 = call float @dx.op.binary.f32(i32 36, float %12549, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %12550)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %12551)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %12552)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:12553                                   ; preds = %10654
  %12554 = fcmp fast olt float %3100, %10637
  br i1 %12554, label %10640, label %12555

; <label>:12555                                   ; preds = %12553
  %12556 = fcmp fast olt float %3100, %10638
  br i1 %12556, label %10640, label %10841

; <label>:12557                                   ; preds = %10732
  %12558 = fcmp fast olt float %524, 5.120000e+02
  br i1 %12558, label %10718, label %12559

; <label>:12559                                   ; preds = %12557
  %12560 = fcmp fast olt float %524, 1.024000e+03
  br i1 %12560, label %10718, label %12561

; <label>:12561                                   ; preds = %12559
  %12562 = fcmp fast olt float %524, 1.536000e+03
  br i1 %12562, label %10718, label %12563

; <label>:12563                                   ; preds = %12561
  %12564 = fcmp fast olt float %524, 2.048000e+03
  br i1 %12564, label %10718, label %12565

; <label>:12565                                   ; preds = %12563
  %12566 = fcmp fast olt float %524, 3.072000e+03
  br i1 %12566, label %10718, label %12567

; <label>:12567                                   ; preds = %12565
  %12568 = fcmp fast olt float %524, 4.096000e+03
  br i1 %12568, label %10718, label %12569

; <label>:12569                                   ; preds = %12567
  %12570 = fcmp fast olt float %524, 6.144000e+03
  br i1 %12570, label %10718, label %12571

; <label>:12571                                   ; preds = %12569
  %12572 = fcmp fast olt float %524, 8.192000e+03
  br i1 %12572, label %10718, label %10841

; <label>:12573                                   ; preds = %10764
  %12574 = fcmp fast olt float %9579, %10747
  br i1 %12574, label %10750, label %12575

; <label>:12575                                   ; preds = %12573
  %12576 = fcmp fast olt float %9579, %10748
  br i1 %12576, label %10750, label %10841
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

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
!dx.viewIdState = !{!84}
!dx.entryPoints = !{!85}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !69, !72, !76}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
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
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !28}
!28 = !{i32 0, i32 5}
!29 = !{i32 20, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!30 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 6, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 50, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!40 = !{i32 31, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!41 = !{i32 32, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!45 = !{i32 36, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!46 = !{i32 37, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!55 = !{i32 46, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!56 = !{i32 47, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!62 = !{i32 53, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!64 = !{i32 55, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!65 = !{i32 56, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!66 = !{i32 57, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !28}
!67 = !{i32 58, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!68 = !{i32 59, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!69 = !{!70}
!70 = !{i32 0, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !71}
!71 = !{i32 1, i32 1144}
!72 = !{!73, !74, !75}
!73 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!74 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!75 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!76 = !{!77, !78, !79, !80, !81, !82, !83}
!77 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!78 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!79 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!80 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!81 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!82 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!83 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!84 = !{[13 x i32] [i32 11, i32 4, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 4]}
!85 = !{void ()* @ps_main, !"ps_main", !86, !4, !98}
!86 = !{!87, !95, null}
!87 = !{!88, !91, !92, !94}
!88 = !{i32 0, !"SV_Position", i8 9, i8 3, !89, i8 4, i32 1, i8 4, i32 0, i8 0, !90}
!89 = !{i32 0}
!90 = !{i32 3, i32 3}
!91 = !{i32 1, !"DEBUG_VALUE", i8 9, i8 0, !89, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!92 = !{i32 2, !"WIREFRAME_COLOR", i8 9, i8 0, !89, i8 2, i32 1, i8 3, i32 2, i8 0, !93}
!93 = !{i32 3, i32 7}
!94 = !{i32 3, !"SV_SampleIndex", i8 5, i8 12, !89, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!95 = !{!96}
!96 = !{i32 0, !"SV_Target", i8 9, i8 16, !89, i8 0, i32 1, i8 4, i32 0, i8 0, !97}
!97 = !{i32 3, i32 15}
!98 = !{i32 0, i64 24}
!99 = !{i32 1}
!100 = !{!101, !101, i64 0}
!101 = !{!"int", !102, i64 0}
!102 = !{!"omnipotent char", !103, i64 0}
!103 = !{!"Simple C/C++ TBAA"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"\01?Water_VisBuf_GetVertexIndices@@YAXIIIY02$$CAI@Z: %outVertexIndices"}
!106 = distinct !{!106, !"\01?Water_VisBuf_GetVertexIndices@@YAXIIIY02$$CAI@Z"}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !102, i64 0}
!109 = !{!110, !112, !113}
!110 = distinct !{!110, !111, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!111 = distinct !{!111, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!112 = distinct !{!112, !111, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!113 = distinct !{!113, !111, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!114 = !{!115, !117, !118, !119, !120}
!115 = distinct !{!115, !116, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!116 = distinct !{!116, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!117 = distinct !{!117, !116, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!118 = distinct !{!118, !116, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!119 = distinct !{!119, !116, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!120 = distinct !{!120, !116, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !122}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !"dx.controlflow.hints", i32 1}
!134 = distinct !{!134, !"dx.controlflow.hints", i32 1}
!135 = distinct !{!135, !"dx.controlflow.hints", i32 1}
!136 = distinct !{!136, !"dx.controlflow.hints", i32 1}
!137 = distinct !{!137, !"dx.controlflow.hints", i32 1}
!138 = distinct !{!138, !"dx.controlflow.hints", i32 1}
!139 = distinct !{!139, !"dx.controlflow.hints", i32 1}
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = distinct !{!141, !"dx.controlflow.hints", i32 1}
!142 = distinct !{!142, !"dx.controlflow.hints", i32 1}
!143 = !{!144, !146}
!144 = distinct !{!144, !145, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!145 = distinct !{!145, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!146 = distinct !{!146, !147, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!147 = distinct !{!147, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!148 = distinct !{!148, !"dx.controlflow.hints", i32 1}
!149 = !{!144, !146, !150, !152}
!150 = distinct !{!150, !151, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!151 = distinct !{!151, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!152 = distinct !{!152, !153, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!153 = distinct !{!153, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!154 = distinct !{!154, !122}
!155 = distinct !{!155, !122}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = !{!167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!167 = distinct !{!167, !168, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!168 = distinct !{!168, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!169 = distinct !{!169, !170, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!170 = distinct !{!170, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!171 = distinct !{!171, !170, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!172 = distinct !{!172, !173, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!173 = distinct !{!173, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!174 = distinct !{!174, !173, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!175 = distinct !{!175, !173, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!176 = distinct !{!176, !177, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!177 = distinct !{!177, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!178 = distinct !{!178, !177, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!179 = distinct !{!179, !177, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!180 = distinct !{!180, !181, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!181 = distinct !{!181, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"\01?sort@@YAXAIAM00@Z: %c"}
!184 = distinct !{!184, !"\01?sort@@YAXAIAM00@Z"}
!185 = !{!186, !187, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!186 = distinct !{!186, !184, !"\01?sort@@YAXAIAM00@Z: %a"}
!187 = distinct !{!187, !184, !"\01?sort@@YAXAIAM00@Z: %b"}
!188 = !{!187}
!189 = !{!186, !183, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!190 = !{!186}
!191 = !{!187, !183, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!192 = !{!193}
!193 = distinct !{!193, !194, !"\01?sort@@YAXAIAM00@Z: %c"}
!194 = distinct !{!194, !"\01?sort@@YAXAIAM00@Z"}
!195 = !{!196, !197, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!196 = distinct !{!196, !194, !"\01?sort@@YAXAIAM00@Z: %a"}
!197 = distinct !{!197, !194, !"\01?sort@@YAXAIAM00@Z: %b"}
!198 = !{!197}
!199 = !{!196, !193, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!200 = !{!196}
!201 = !{!197, !193, !167, !169, !171, !172, !174, !175, !176, !178, !179, !180}
!202 = distinct !{!202, !"dx.controlflow.hints", i32 1}
!203 = distinct !{!203, !"dx.controlflow.hints", i32 2}
!204 = distinct !{!204, !"dx.controlflow.hints", i32 1}
!205 = distinct !{!205, !"dx.controlflow.hints", i32 1}
!206 = distinct !{!206, !"dx.controlflow.hints", i32 1}
!207 = distinct !{!207, !"dx.controlflow.hints", i32 1}
!208 = distinct !{!208, !"dx.controlflow.hints", i32 1}

