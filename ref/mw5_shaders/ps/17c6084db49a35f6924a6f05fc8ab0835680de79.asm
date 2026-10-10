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
; shader hash: 73578daddd4e1834cc58ce987d8b3b2a
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
;   [4 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T5             t3     1
;                                   texture     f32          2d      T6     t33,space2     1
;                                   texture     f32          2d      T7     t58,space2     1
;                                   texture     f32          2d      T8     t59,space2     1
;                                   texture     f32          2d      T9     t61,space2     1
;                                   texture    byte         r/o     T10     t45,space1     1
;                                   texture    byte         r/o     T11     t46,space1     1
;                                   texture    byte         r/o     T12     t47,space1     1
;                                   texture    byte         r/o     T13             t4     1
;                                   texture    byte         r/o     T14             t5     1
;                                   texture    byte         r/o     T15             t6     1
;                                   texture     f32          2d     T16             t2     1
;                                   texture     f32     2darray     T17     t16,space2     1
;                                   texture     f32          3d     T18     t15,space2     1
;                                   texture     f32          2d     T19     t13,space2     1
;                                   texture     u32          2d     T20     t17,space2     1
;                                   texture     f32          3d     T21     t18,space2     1
;                                   texture    byte         r/o     T22      t3,space1     1
;                                   texture    byte         r/o     T23      t4,space1     1
;                                   texture    byte         r/o     T24      t5,space1     1
;                                   texture    byte         r/o     T25      t6,space1     1
;                                   texture     f32          2d     T26     t37,space2     1
;                                   texture     f32          2d     T27             t7     1
;                                   texture     f32          2d     T28             t9     1
;                                   texture     f32          2d     T29     t50,space2     1
;                                   texture     f32          2d     T30            t10     1
;                                   texture     f32     2darray     T31     t35,space2     1
;                                   texture     f32          2d     T32     t34,space2     1
;                                   texture     f32          3d     T33     t31,space2     1
;                                   texture    byte         r/o     T34     t10,space1     1
;                                   texture    byte         r/o     T35      t1,space1     1
;                                   texture     f32          1d     T36     t32,space2     1
;                                   texture     f32          3d     T37     t82,space2     1
;                                   texture     f32          1d     T38     t30,space2     1
;                                   texture     f32          3d     T39     t44,space2     1
;                                   texture     f32          3d     T40     t45,space2     1
;                                   texture     f32     2darray     T41     t47,space2     1
;                                   texture     f32     2darray     T42      t8,space2     1
;                                   texture     f32          2d     T43      t2,space2     1
;                                   texture     f32          2d     T44      t3,space2     1
;                                   texture     f32          2d     T45      t4,space2     1
;                                   textureunorm_f32     2darray     T46     t80,space2     1
;                                   texture    byte         r/o     T47     t67,space1     1
;                                   texture     f32          2d     T48      t7,space2     1
;                                   texture     f32          2d     T49      t6,space2     1
;                                   texture     f32          2d     T50      t5,space2     1
;                                   texture     f32          2d     T51     t38,space2     1
;                                   texture    byte         r/o     T52     t12,space1     1
;                                   texture    byte         r/o     T53     t13,space1     1
;                                   texture     f32          2d     T54     t83,space2     1
;                                   texture     f32          2d     T55     t86,space2     1
;                                   texture    byte         r/o     T56     t16,space1     1
;                                   texture    byte         r/o     T57     t17,space1     1
;                                   texture     u32          2d     T58            t11     1
;                                   texture     f32          2d     T59             t8     1
;                                   texture     f32     2darray     T60            t12     1
;                                       UAV  struct         r/w      U0             u9     1
;                                       UAV  struct         r/w      U1             u0     1
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
;   output 3 depends on inputs: { 0, 1 }
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
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 60, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 59, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = alloca [4 x i32], align 4
  %72 = alloca [4 x i32], align 4
  %73 = alloca [4 x i32], align 4
  %74 = alloca [4 x i32], align 4
  %75 = alloca [4 x i32], align 4
  %76 = alloca [4 x i32], align 4
  %77 = alloca [4 x float], align 4
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef), !dx.precise !102  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef), !dx.precise !102  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = alloca [12 x float], align 4
  %84 = alloca [12 x float], align 4
  %85 = alloca [3 x float], align 4
  %86 = alloca [3 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [4 x float], align 4
  %89 = alloca [4 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = fmul float %81, %92
  %94 = fmul float %82, %92
  %95 = fptosi float %93 to i32
  %96 = fptosi float %94 to i32
  %97 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %5, i32 0, i32 %95, i32 %96, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 0
  %99 = and i32 %98, 8191
  %100 = lshr i32 %98, 13
  %101 = and i32 %100, 511
  %102 = lshr i32 %98, 22
  %103 = and i32 %102, 3
  %104 = and i32 %98, 16777216
  %105 = icmp ne i32 %104, 0
  %106 = and i32 %98, 33554432
  %107 = icmp ne i32 %106, 0
  %108 = lshr i32 %98, 26
  %109 = uitofp i32 %108 to float
  %110 = fmul fast float %109, 0x3FA8618620000000
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.i32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.i32 %111, 2
  %115 = extractvalue %dx.types.CBufRet.i32 %111, 3
  %116 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 0
  store i32 %112, i32* %116, align 4
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 2
  store i32 %114, i32* %118, align 4
  %119 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 3
  store i32 %115, i32* %119, align 4
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %72, i32 0, i32 %103
  %121 = load i32, i32* %120, align 4, !tbaa !103, !noalias !107
  %122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.i32 %122, 0
  %124 = extractvalue %dx.types.CBufRet.i32 %122, 1
  %125 = extractvalue %dx.types.CBufRet.i32 %122, 2
  %126 = extractvalue %dx.types.CBufRet.i32 %122, 3
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 0
  store i32 %123, i32* %127, align 4
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 2
  store i32 %125, i32* %129, align 4
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 3
  store i32 %126, i32* %130, align 4
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %73, i32 0, i32 %103
  %132 = load i32, i32* %131, align 4, !tbaa !103, !noalias !107
  %133 = sub i32 %99, %121
  %134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 196)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.i32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.i32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.i32 %134, 2
  %138 = extractvalue %dx.types.CBufRet.i32 %134, 3
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 0
  store i32 %135, i32* %139, align 4
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 1
  store i32 %136, i32* %140, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 2
  store i32 %137, i32* %141, align 4
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 3
  store i32 %138, i32* %142, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i32 0, i32 %103
  %144 = load i32, i32* %143, align 4, !tbaa !103, !noalias !107
  %145 = call i32 @dx.op.tertiary.i32(i32 49, i32 %144, i32 %133, i32 %132)  ; UMad(a,b,c)
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 193)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 0
  %148 = extractvalue %dx.types.CBufRet.i32 %146, 1
  %149 = extractvalue %dx.types.CBufRet.i32 %146, 2
  %150 = extractvalue %dx.types.CBufRet.i32 %146, 3
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i32 0, i32 0
  store i32 %147, i32* %151, align 4
  %152 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i32 0, i32 1
  store i32 %148, i32* %152, align 4
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i32 0, i32 2
  store i32 %149, i32* %153, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i32 0, i32 3
  store i32 %150, i32* %154, align 4
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i32 0, i32 %103
  %156 = load i32, i32* %155, align 4, !tbaa !103, !noalias !107
  %157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 195)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.i32 %157, 0
  %159 = extractvalue %dx.types.CBufRet.i32 %157, 1
  %160 = extractvalue %dx.types.CBufRet.i32 %157, 2
  %161 = extractvalue %dx.types.CBufRet.i32 %157, 3
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i32 0, i32 0
  store i32 %158, i32* %162, align 4
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i32 0, i32 1
  store i32 %159, i32* %163, align 4
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i32 0, i32 2
  store i32 %160, i32* %164, align 4
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i32 0, i32 3
  store i32 %161, i32* %165, align 4
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i32 0, i32 %103
  %167 = load i32, i32* %166, align 4, !tbaa !103, !noalias !107
  %168 = lshr i32 %101, 1
  %169 = and i32 %167, 31
  %170 = lshr i32 %168, %169
  %171 = shl i32 %170, %169
  %172 = and i32 %100, 1
  %173 = add i32 %145, %168
  %174 = sub i32 %173, %171
  %175 = call i32 @dx.op.tertiary.i32(i32 49, i32 %170, i32 %156, i32 %174)  ; UMad(a,b,c)
  %176 = add i32 %175, %156
  %177 = add i32 %156, 1
  %178 = add i32 %177, %175
  %179 = add i32 %175, 1
  %180 = icmp ne i32 %172, 0
  %181 = select i1 %180, i32 %178, i32 %176
  %182 = select i1 %180, i32 %179, i32 %178
  %183 = mul i32 %175, 20
  %184 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = extractvalue %dx.types.ResRet.f32 %184, 1
  %187 = extractvalue %dx.types.ResRet.f32 %184, 2
  %188 = add i32 %183, 12
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = add i32 %183, 16
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = mul i32 %181, 20
  %195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = extractvalue %dx.types.ResRet.f32 %195, 2
  %199 = add i32 %194, 12
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = add i32 %194, 16
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = mul i32 %182, 20
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = extractvalue %dx.types.ResRet.f32 %206, 2
  %210 = add i32 %205, 12
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = add i32 %205, 16
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %217 = extractvalue %dx.types.CBufRet.f32 %216, 0
  %218 = extractvalue %dx.types.CBufRet.f32 %216, 1
  %219 = extractvalue %dx.types.CBufRet.f32 %216, 2
  %220 = extractvalue %dx.types.CBufRet.f32 %216, 3
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 0
  %223 = extractvalue %dx.types.CBufRet.f32 %221, 1
  %224 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %225 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %227 = extractvalue %dx.types.CBufRet.f32 %226, 0
  %228 = extractvalue %dx.types.CBufRet.f32 %226, 1
  %229 = extractvalue %dx.types.CBufRet.f32 %226, 2
  %230 = extractvalue %dx.types.CBufRet.f32 %226, 3
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 0
  %233 = extractvalue %dx.types.CBufRet.f32 %231, 1
  %234 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %235 = extractvalue %dx.types.CBufRet.f32 %231, 3
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = extractvalue %dx.types.CBufRet.f32 %236, 3
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 0
  %243 = extractvalue %dx.types.CBufRet.f32 %241, 1
  %244 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %245 = extractvalue %dx.types.CBufRet.f32 %241, 3
  %246 = select i1 %107, float %217, float %232
  %247 = select i1 %107, float %222, float %237
  %248 = select i1 %107, float %227, float %242
  %249 = select i1 %107, float %218, float %233
  %250 = select i1 %107, float %223, float %238
  %251 = select i1 %107, float %228, float %243
  %252 = select i1 %107, float %219, float %234
  %253 = select i1 %107, float %224, float %239
  %254 = select i1 %107, float %229, float %244
  %255 = select i1 %107, float %220, float %235
  %256 = select i1 %107, float %225, float %240
  %257 = select i1 %107, float %230, float %245
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = extractvalue %dx.types.CBufRet.f32 %258, 1
  %261 = extractvalue %dx.types.CBufRet.f32 %258, 2
  %262 = fadd float %185, %259
  %263 = fadd float %186, %260
  %264 = fadd float %187, %261
  %265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %266 = extractvalue %dx.types.CBufRet.f32 %265, 0
  %267 = extractvalue %dx.types.CBufRet.f32 %265, 1
  %268 = extractvalue %dx.types.CBufRet.f32 %265, 2
  %269 = fsub float %262, %266
  %270 = fsub float %263, %267
  %271 = fsub float %264, %268
  %272 = fmul float %246, %269
  %273 = call float @dx.op.tertiary.f32(i32 46, float %270, float %249, float %272), !dx.precise !102  ; FMad(a,b,c)
  %274 = call float @dx.op.tertiary.f32(i32 46, float %271, float %252, float %273), !dx.precise !102  ; FMad(a,b,c)
  %275 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %255, float %274), !dx.precise !102  ; FMad(a,b,c)
  %276 = fmul float %247, %269
  %277 = call float @dx.op.tertiary.f32(i32 46, float %270, float %250, float %276), !dx.precise !102  ; FMad(a,b,c)
  %278 = call float @dx.op.tertiary.f32(i32 46, float %271, float %253, float %277), !dx.precise !102  ; FMad(a,b,c)
  %279 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %256, float %278), !dx.precise !102  ; FMad(a,b,c)
  %280 = fmul float %248, %269
  %281 = call float @dx.op.tertiary.f32(i32 46, float %270, float %251, float %280), !dx.precise !102  ; FMad(a,b,c)
  %282 = call float @dx.op.tertiary.f32(i32 46, float %271, float %254, float %281), !dx.precise !102  ; FMad(a,b,c)
  %283 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %257, float %282), !dx.precise !102  ; FMad(a,b,c)
  %284 = lshr i32 %193, 8
  %285 = and i32 %193, 255
  %286 = and i32 %284, 255
  %287 = uitofp i32 %285 to float
  %288 = uitofp i32 %286 to float
  %289 = fmul fast float %287, 0x3F80101020000000
  %290 = fmul fast float %288, 0x3F80101020000000
  %291 = fadd fast float %289, -1.000000e+00
  %292 = fadd fast float %290, -1.000000e+00
  %293 = call float @dx.op.unary.f32(i32 6, float %291)  ; FAbs(value)
  %294 = fsub fast float 1.000000e+00, %293
  %295 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %296 = fsub fast float %294, %295
  %297 = fsub fast float -0.000000e+00, %296
  %298 = call float @dx.op.binary.f32(i32 35, float %297, float 0.000000e+00)  ; FMax(a,b)
  %299 = fcmp fast ogt float %291, 0.000000e+00
  %300 = fsub fast float -0.000000e+00, %298
  %301 = select i1 %299, float %300, float %298
  %302 = fadd fast float %301, %291
  %303 = fcmp fast ogt float %292, 0.000000e+00
  %304 = select i1 %303, float %300, float %298
  %305 = fadd fast float %304, %292
  %306 = and i32 %190, 65535
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3EF0001000000000
  %309 = lshr i32 %190, 16
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3EF0001000000000
  %312 = lshr i32 %193, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = fadd float %196, %259
  %317 = fadd float %197, %260
  %318 = fadd float %198, %261
  %319 = fsub float %316, %266
  %320 = fsub float %317, %267
  %321 = fsub float %318, %268
  %322 = fmul float %246, %319
  %323 = call float @dx.op.tertiary.f32(i32 46, float %320, float %249, float %322), !dx.precise !102  ; FMad(a,b,c)
  %324 = call float @dx.op.tertiary.f32(i32 46, float %321, float %252, float %323), !dx.precise !102  ; FMad(a,b,c)
  %325 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %255, float %324), !dx.precise !102  ; FMad(a,b,c)
  %326 = fmul float %247, %319
  %327 = call float @dx.op.tertiary.f32(i32 46, float %320, float %250, float %326), !dx.precise !102  ; FMad(a,b,c)
  %328 = call float @dx.op.tertiary.f32(i32 46, float %321, float %253, float %327), !dx.precise !102  ; FMad(a,b,c)
  %329 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %256, float %328), !dx.precise !102  ; FMad(a,b,c)
  %330 = fmul float %248, %319
  %331 = call float @dx.op.tertiary.f32(i32 46, float %320, float %251, float %330), !dx.precise !102  ; FMad(a,b,c)
  %332 = call float @dx.op.tertiary.f32(i32 46, float %321, float %254, float %331), !dx.precise !102  ; FMad(a,b,c)
  %333 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %257, float %332), !dx.precise !102  ; FMad(a,b,c)
  %334 = lshr i32 %204, 8
  %335 = and i32 %204, 255
  %336 = and i32 %334, 255
  %337 = uitofp i32 %335 to float
  %338 = uitofp i32 %336 to float
  %339 = fmul fast float %337, 0x3F80101020000000
  %340 = fmul fast float %338, 0x3F80101020000000
  %341 = fadd fast float %339, -1.000000e+00
  %342 = fadd fast float %340, -1.000000e+00
  %343 = call float @dx.op.unary.f32(i32 6, float %341)  ; FAbs(value)
  %344 = fsub fast float 1.000000e+00, %343
  %345 = call float @dx.op.unary.f32(i32 6, float %342)  ; FAbs(value)
  %346 = fsub fast float %344, %345
  %347 = fsub fast float -0.000000e+00, %346
  %348 = call float @dx.op.binary.f32(i32 35, float %347, float 0.000000e+00)  ; FMax(a,b)
  %349 = fcmp fast ogt float %341, 0.000000e+00
  %350 = fsub fast float -0.000000e+00, %348
  %351 = select i1 %349, float %350, float %348
  %352 = fadd fast float %351, %341
  %353 = fcmp fast ogt float %342, 0.000000e+00
  %354 = select i1 %353, float %350, float %348
  %355 = fadd fast float %354, %342
  %356 = and i32 %201, 65535
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3EF0001000000000
  %359 = lshr i32 %201, 16
  %360 = uitofp i32 %359 to float
  %361 = fmul fast float %360, 0x3EF0001000000000
  %362 = lshr i32 %204, 16
  %363 = and i32 %362, 255
  %364 = uitofp i32 %363 to float
  %365 = fmul fast float %364, 0x3F70101020000000
  %366 = fadd float %207, %259
  %367 = fadd float %208, %260
  %368 = fadd float %209, %261
  %369 = fsub float %366, %266
  %370 = fsub float %367, %267
  %371 = fsub float %368, %268
  %372 = fmul float %246, %369
  %373 = call float @dx.op.tertiary.f32(i32 46, float %370, float %249, float %372), !dx.precise !102  ; FMad(a,b,c)
  %374 = call float @dx.op.tertiary.f32(i32 46, float %371, float %252, float %373), !dx.precise !102  ; FMad(a,b,c)
  %375 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %255, float %374), !dx.precise !102  ; FMad(a,b,c)
  %376 = fmul float %247, %369
  %377 = call float @dx.op.tertiary.f32(i32 46, float %370, float %250, float %376), !dx.precise !102  ; FMad(a,b,c)
  %378 = call float @dx.op.tertiary.f32(i32 46, float %371, float %253, float %377), !dx.precise !102  ; FMad(a,b,c)
  %379 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %256, float %378), !dx.precise !102  ; FMad(a,b,c)
  %380 = fmul float %248, %369
  %381 = call float @dx.op.tertiary.f32(i32 46, float %370, float %251, float %380), !dx.precise !102  ; FMad(a,b,c)
  %382 = call float @dx.op.tertiary.f32(i32 46, float %371, float %254, float %381), !dx.precise !102  ; FMad(a,b,c)
  %383 = call float @dx.op.tertiary.f32(i32 46, float 1.000000e+00, float %257, float %382), !dx.precise !102  ; FMad(a,b,c)
  %384 = lshr i32 %215, 8
  %385 = and i32 %215, 255
  %386 = and i32 %384, 255
  %387 = uitofp i32 %385 to float
  %388 = uitofp i32 %386 to float
  %389 = fmul fast float %387, 0x3F80101020000000
  %390 = fmul fast float %388, 0x3F80101020000000
  %391 = fadd fast float %389, -1.000000e+00
  %392 = fadd fast float %390, -1.000000e+00
  %393 = call float @dx.op.unary.f32(i32 6, float %391)  ; FAbs(value)
  %394 = fsub fast float 1.000000e+00, %393
  %395 = call float @dx.op.unary.f32(i32 6, float %392)  ; FAbs(value)
  %396 = fsub fast float %394, %395
  %397 = fsub fast float -0.000000e+00, %396
  %398 = call float @dx.op.binary.f32(i32 35, float %397, float 0.000000e+00)  ; FMax(a,b)
  %399 = fcmp fast ogt float %391, 0.000000e+00
  %400 = fsub fast float -0.000000e+00, %398
  %401 = select i1 %399, float %400, float %398
  %402 = fadd fast float %401, %391
  %403 = fcmp fast ogt float %392, 0.000000e+00
  %404 = select i1 %403, float %400, float %398
  %405 = fadd fast float %404, %392
  %406 = and i32 %212, 65535
  %407 = uitofp i32 %406 to float
  %408 = fmul fast float %407, 0x3EF0001000000000
  %409 = lshr i32 %212, 16
  %410 = uitofp i32 %409 to float
  %411 = fmul fast float %410, 0x3EF0001000000000
  %412 = lshr i32 %215, 16
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %417 = extractvalue %dx.types.CBufRet.f32 %416, 2
  %418 = extractvalue %dx.types.CBufRet.f32 %416, 3
  %419 = fmul fast float %93, 2.000000e+00
  %420 = fmul fast float %419, %417
  %421 = fadd fast float %420, -1.000000e+00
  %422 = fmul fast float %94, 2.000000e+00
  %423 = fmul fast float %422, %418
  %424 = fsub fast float 1.000000e+00, %423
  %425 = fmul fast float %92, 2.000000e+00
  %426 = fmul fast float %92, -2.000000e+00
  %427 = fmul fast float %425, %417
  %428 = fmul fast float %426, %418
  %429 = fdiv fast float 1.000000e+00, %283
  %430 = fdiv fast float 1.000000e+00, %333
  %431 = fdiv fast float 1.000000e+00, %383
  %432 = fmul fast float %429, %275
  %433 = fmul fast float %429, %279
  %434 = fmul fast float %430, %325
  %435 = fmul fast float %430, %329
  %436 = fmul fast float %431, %375
  %437 = fmul fast float %431, %379
  %438 = fsub fast float %436, %434
  %439 = fsub fast float %437, %435
  %440 = fsub fast float %432, %434
  %441 = fsub fast float %433, %435
  %442 = fmul fast float %438, %441
  %443 = fmul fast float %439, %440
  %444 = fsub fast float %442, %443
  %445 = fdiv fast float 1.000000e+00, %444
  %446 = fsub fast float %435, %437
  %447 = fsub fast float %437, %433
  %448 = fmul fast float %445, %429
  %449 = fmul fast float %448, %446
  %450 = fmul fast float %445, %430
  %451 = fmul fast float %450, %447
  %452 = fmul fast float %445, %431
  %453 = fmul fast float %452, %441
  %454 = fsub fast float %432, %436
  %455 = fsub fast float %434, %432
  %456 = fmul fast float %448, %438
  %457 = fmul fast float %450, %454
  %458 = fmul fast float %452, %455
  %459 = call float @dx.op.dot3.f32(i32 55, float %449, float %451, float %453, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %460 = call float @dx.op.dot3.f32(i32 55, float %456, float %457, float %458, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %461 = fsub fast float %421, %432
  %462 = fsub fast float %424, %433
  %463 = fmul fast float %459, %461
  %464 = fadd fast float %463, %429
  %465 = fmul fast float %460, %462
  %466 = fadd fast float %464, %465
  %467 = fdiv fast float 1.000000e+00, %466
  %468 = fmul fast float %449, %461
  %469 = fadd fast float %468, %429
  %470 = fmul fast float %456, %462
  %471 = fadd fast float %469, %470
  %472 = fmul fast float %471, %467
  %473 = fmul fast float %451, %461
  %474 = fmul fast float %457, %462
  %475 = fadd fast float %473, %474
  %476 = fmul fast float %475, %467
  %477 = fmul fast float %453, %461
  %478 = fmul fast float %458, %462
  %479 = fadd fast float %477, %478
  %480 = fmul fast float %479, %467
  %481 = fmul fast float %449, %427
  %482 = fmul fast float %451, %427
  %483 = fmul fast float %453, %427
  %484 = fmul fast float %456, %428
  %485 = fmul fast float %457, %428
  %486 = fmul fast float %458, %428
  %487 = fmul fast float %459, %427
  %488 = fmul fast float %460, %428
  %489 = fadd fast float %466, %487
  %490 = fdiv fast float 1.000000e+00, %489
  %491 = fadd fast float %466, %488
  %492 = fdiv fast float 1.000000e+00, %491
  %493 = fmul fast float %472, %466
  %494 = fmul fast float %476, %466
  %495 = fmul fast float %480, %466
  %496 = fadd fast float %493, %481
  %497 = fadd fast float %494, %482
  %498 = fadd fast float %495, %483
  %499 = fmul fast float %496, %490
  %500 = fmul fast float %497, %490
  %501 = fmul fast float %498, %490
  %502 = fsub fast float %499, %472
  %503 = fsub fast float %500, %476
  %504 = fsub fast float %501, %480
  %505 = fadd fast float %493, %484
  %506 = fadd fast float %494, %485
  %507 = fadd fast float %495, %486
  %508 = fmul fast float %505, %492
  %509 = fmul fast float %506, %492
  %510 = fmul fast float %507, %492
  %511 = fsub fast float %508, %472
  %512 = fsub fast float %509, %476
  %513 = fsub fast float %510, %480
  %514 = call float @dx.op.dot3.f32(i32 55, float %302, float %352, float %402, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %515 = call float @dx.op.dot3.f32(i32 55, float %305, float %355, float %405, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %516 = call float @dx.op.dot3.f32(i32 55, float %296, float %346, float %396, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %517 = call float @dx.op.dot3.f32(i32 55, float %514, float %515, float %516, float %514, float %515, float %516)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = call float @dx.op.unary.f32(i32 25, float %517)  ; Rsqrt(value)
  %519 = call float @dx.op.dot3.f32(i32 55, float %308, float %358, float %408, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %520 = call float @dx.op.dot3.f32(i32 55, float %311, float %361, float %411, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.dot3.f32(i32 55, float %308, float %358, float %408, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %522 = call float @dx.op.dot3.f32(i32 55, float %311, float %361, float %411, float %502, float %503, float %504)  ; Dot3(ax,ay,az,bx,by,bz)
  %523 = call float @dx.op.dot3.f32(i32 55, float %308, float %358, float %408, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %524 = call float @dx.op.dot3.f32(i32 55, float %311, float %361, float %411, float %511, float %512, float %513)  ; Dot3(ax,ay,az,bx,by,bz)
  %525 = call float @dx.op.dot3.f32(i32 55, float %315, float %365, float %415, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call float @dx.op.dot3.f32(i32 55, float %283, float %333, float %383, float %472, float %476, float %480)  ; Dot3(ax,ay,az,bx,by,bz)
  %527 = select i1 %105, float 1.000000e+00, float -1.000000e+00
  %528 = fmul fast float %514, %527
  %529 = fmul fast float %528, %518
  %530 = fmul fast float %515, %527
  %531 = fmul fast float %530, %518
  %532 = fmul fast float %516, %527
  %533 = fmul fast float %532, %518
  %534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %535 = extractvalue %dx.types.CBufRet.f32 %534, 2
  %536 = extractvalue %dx.types.CBufRet.f32 %534, 3
  %537 = fmul fast float %419, %535
  %538 = fmul fast float %422, %536
  %539 = fsub fast float 1.000000e+00, %537
  %540 = fsub fast float 1.000000e+00, %538
  %541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %542 = extractvalue %dx.types.CBufRet.f32 %541, 0
  %543 = extractvalue %dx.types.CBufRet.f32 %541, 1
  %544 = extractvalue %dx.types.CBufRet.f32 %541, 2
  %545 = fmul fast float %539, %542
  %546 = fmul fast float %539, %543
  %547 = fmul fast float %539, %544
  %548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.f32 %548, 0
  %550 = extractvalue %dx.types.CBufRet.f32 %548, 1
  %551 = extractvalue %dx.types.CBufRet.f32 %548, 2
  %552 = fmul fast float %540, %549
  %553 = fmul fast float %540, %550
  %554 = fmul fast float %540, %551
  %555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %556 = extractvalue %dx.types.CBufRet.f32 %555, 0
  %557 = extractvalue %dx.types.CBufRet.f32 %555, 1
  %558 = extractvalue %dx.types.CBufRet.f32 %555, 2
  %559 = fadd fast float %552, %556
  %560 = fadd fast float %559, %545
  %561 = fadd fast float %553, %557
  %562 = fadd fast float %561, %546
  %563 = fadd fast float %554, %558
  %564 = fadd fast float %563, %547
  %565 = fmul fast float %560, %526
  %566 = fmul fast float %562, %526
  %567 = fmul fast float %564, %526
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 3
  %570 = fadd fast float %569, %110
  %571 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %572 = shl i32 %571, 16
  %573 = or i32 %572, %571
  %574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %575 = extractvalue %dx.types.CBufRet.f32 %574, 0
  %576 = extractvalue %dx.types.CBufRet.f32 %574, 1
  %577 = fadd fast float %575, %565
  %578 = fadd fast float %576, %566
  %579 = fmul fast float %577, 0x3F53C37960000000
  %580 = fmul fast float %578, 0x3F53C37960000000
  %581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %581, float %579, float %580, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.f32 %584, 2
  %586 = fmul fast float %585, %583
  %587 = shl nuw nsw i32 %99, 3
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 16383
  %591 = shl nuw nsw i32 %99, 2
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 255
  %595 = shl nuw nsw i32 %594, 16
  %596 = or i32 %595, %590
  %597 = mul nuw nsw i32 %590, 148
  %598 = add nuw nsw i32 %597, 4
  %599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.f32 %599, 0
  %601 = add nuw nsw i32 %597, 8
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = add nuw nsw i32 %597, 48
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = add nuw nsw i32 %597, 60
  %608 = add nuw nsw i32 %597, 92
  %609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = add nuw nsw i32 %597, 96
  %611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.i32 %611, 0
  %613 = add nuw nsw i32 %597, 100
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = add nuw nsw i32 %597, 104
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = add nuw nsw i32 %597, 108
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = add nuw nsw i32 %597, 116
  %623 = fsub fast float 1.000000e+00, %520
  %624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %625 = extractvalue %dx.types.CBufRet.f32 %624, 2
  %626 = fmul fast float %625, %519
  %627 = fmul fast float %625, %623
  %628 = fadd fast float %626, %600
  %629 = fadd fast float %627, %603
  %630 = call float @dx.op.unary.f32(i32 84, float %628)  ; DerivCoarseY(value)
  %631 = call float @dx.op.unary.f32(i32 84, float %629)  ; DerivCoarseY(value)
  %632 = call float @dx.op.unary.f32(i32 83, float %628)  ; DerivCoarseX(value)
  %633 = call float @dx.op.unary.f32(i32 83, float %629)  ; DerivCoarseX(value)
  %634 = call float @dx.op.dot2.f32(i32 54, float %630, float %631, float %630, float %631)  ; Dot2(ax,ay,bx,by)
  %635 = call float @dx.op.dot2.f32(i32 54, float %632, float %633, float %632, float %633)  ; Dot2(ax,ay,bx,by)
  %636 = call float @dx.op.binary.f32(i32 35, float %635, float %634)  ; FMax(a,b)
  %637 = call float @dx.op.unary.f32(i32 23, float %636)  ; Log(value)
  %638 = fmul fast float %637, 5.000000e-01
  %639 = add nuw nsw i32 %597, 20
  %640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %639, i32 undef)  ; BufferLoad(srv,index,wot)
  %641 = extractvalue %dx.types.ResRet.f32 %640, 0
  %642 = add nuw nsw i32 %597, 24
  %643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %642, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.f32 %643, 0
  %645 = add nuw nsw i32 %597, 28
  %646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %645, i32 undef)  ; BufferLoad(srv,index,wot)
  %647 = extractvalue %dx.types.ResRet.f32 %646, 0
  %648 = add nuw nsw i32 %597, 32
  %649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %648, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.f32 %649, 0
  %651 = add nuw nsw i32 %597, 40
  %652 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.f32 %652, 0
  %654 = add nuw nsw i32 %597, 44
  %655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.f32 %655, 0
  %657 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %658 = extractvalue %dx.types.ResRet.f32 %657, 0
  %659 = add nuw nsw i32 %597, 52
  %660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = add nuw nsw i32 %597, 56
  %663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.f32 %663, 0
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %619, i32 undef)  ; BufferLoad(srv,index,wot)
  %672 = extractvalue %dx.types.ResRet.i32 %671, 0
  %673 = add nuw nsw i32 %597, 112
  %674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %673, i32 undef)  ; BufferLoad(srv,index,wot)
  %675 = extractvalue %dx.types.ResRet.i32 %674, 0
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 2
  %678 = fmul fast float %677, %519
  %679 = fmul fast float %677, %520
  %680 = extractvalue %dx.types.CBufRet.f32 %676, 3
  %681 = fadd fast float %678, %680
  %682 = fadd fast float %679, %680
  %683 = extractvalue %dx.types.CBufRet.f32 %676, 0
  %684 = fmul fast float %683, %519
  %685 = fmul fast float %683, %520
  %686 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %687 = fadd fast float %684, %686
  %688 = fadd fast float %685, %686
  %689 = add i32 %666, 0
  %690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %691 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %690, i32 0)  ; GetDimensions(handle,mipLevel)
  %692 = extractvalue %dx.types.Dimensions %691, 0
  %693 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %692)  ; FirstbitLo(value)
  %694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.i32 %694, 1
  %696 = sub nsw i32 %695, %693
  %697 = sitofp i32 %696 to float
  %698 = fsub fast float %570, %697
  %699 = call float @dx.op.binary.f32(i32 35, float %698, float 0.000000e+00)  ; FMax(a,b)
  %700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %690, %dx.types.Handle %63, float %681, float %682, float %653, float undef, i32 0, i32 0, i32 undef, float %699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %701 = extractvalue %dx.types.ResRet.f32 %700, 0
  %702 = fmul fast float %701, %641
  %703 = fadd fast float %702, %644
  %704 = add i32 %668, 0
  %705 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %704, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %706 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %705, i32 0)  ; GetDimensions(handle,mipLevel)
  %707 = extractvalue %dx.types.Dimensions %706, 0
  %708 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %707)  ; FirstbitLo(value)
  %709 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.i32 %709, 1
  %711 = sub nsw i32 %710, %708
  %712 = sitofp i32 %711 to float
  %713 = fsub fast float %570, %712
  %714 = call float @dx.op.binary.f32(i32 35, float %713, float 0.000000e+00)  ; FMax(a,b)
  %715 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %705, %dx.types.Handle %63, float %687, float %688, float %656, float undef, i32 0, i32 0, i32 undef, float %714)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %716 = extractvalue %dx.types.ResRet.f32 %715, 0
  %717 = fmul fast float %716, %647
  %718 = fadd fast float %717, %650
  %719 = add i32 %670, 0
  %720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %719, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %721 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %720, i32 0)  ; GetDimensions(handle,mipLevel)
  %722 = extractvalue %dx.types.Dimensions %721, 0
  %723 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %722)  ; FirstbitLo(value)
  %724 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.i32 %724, 1
  %726 = sub nsw i32 %725, %723
  %727 = sitofp i32 %726 to float
  %728 = fsub fast float %570, %727
  %729 = call float @dx.op.binary.f32(i32 35, float %728, float 0.000000e+00)  ; FMax(a,b)
  %730 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %720, %dx.types.Handle %63, float %687, float %688, float %658, float undef, i32 0, i32 0, i32 undef, float %729)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %735 = fmul fast float %734, 2.000000e+00
  %736 = fmul fast float %735, %731
  %737 = fmul fast float %735, %732
  %738 = fsub fast float %736, %734
  %739 = fsub fast float %737, %734
  %740 = fmul fast float %738, %738
  %741 = fmul fast float %739, %739
  %742 = fadd fast float %740, %741
  %743 = call float @dx.op.unary.f32(i32 24, float %742)  ; Sqrt(value)
  %744 = add i32 %672, 0
  %745 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %744, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %746 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %745, i32 0)  ; GetDimensions(handle,mipLevel)
  %747 = extractvalue %dx.types.Dimensions %746, 0
  %748 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %747)  ; FirstbitLo(value)
  %749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.i32 %749, 1
  %751 = sub nsw i32 %750, %748
  %752 = sitofp i32 %751 to float
  %753 = fsub fast float %570, %752
  %754 = call float @dx.op.binary.f32(i32 35, float %753, float 0.000000e+00)  ; FMax(a,b)
  %755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %745, %dx.types.Handle %63, float %687, float %688, float %661, float undef, i32 0, i32 0, i32 undef, float %754)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = add i32 %675, 0
  %758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %757, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %759 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %758, i32 0)  ; GetDimensions(handle,mipLevel)
  %760 = extractvalue %dx.types.Dimensions %759, 0
  %761 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %760)  ; FirstbitLo(value)
  %762 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.i32 %762, 1
  %764 = sub nsw i32 %763, %761
  %765 = sitofp i32 %764 to float
  %766 = fsub fast float %570, %765
  %767 = call float @dx.op.binary.f32(i32 35, float %766, float 0.000000e+00)  ; FMax(a,b)
  %768 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %758, %dx.types.Handle %63, float %687, float %688, float %664, float undef, i32 0, i32 0, i32 undef, float %767)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %771 = extractvalue %dx.types.CBufRet.i32 %770, 0
  %772 = call i32 @dx.op.binary.i32(i32 40, i32 %590, i32 %771)  ; UMin(a,b)
  %773 = mul i32 %772, 36
  %774 = add i32 %773, 4
  %775 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %594)  ; Countbits(value)
  %776 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %777 = extractvalue %dx.types.CBufRet.i32 %776, 0
  %778 = icmp eq i32 %777, 32
  %779 = select i1 %778, float 0.000000e+00, float %570
  %780 = and i32 %777, -2
  %781 = icmp eq i32 %780, 30
  %782 = or i1 %781, %778
  br i1 %782, label %783, label %824

; <label>:783                                     ; preds = %0
  %784 = extractvalue %dx.types.ResRet.i32 %609, 0
  %785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %786 = extractvalue %dx.types.CBufRet.i32 %785, 0
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %803, label %788

; <label>:788                                     ; preds = %783
  %789 = icmp eq i32 %786, 1
  br i1 %789, label %803, label %790

; <label>:790                                     ; preds = %788
  %791 = icmp eq i32 %786, 2
  br i1 %791, label %803, label %792

; <label>:792                                     ; preds = %790
  %793 = icmp eq i32 %786, 3
  br i1 %793, label %803, label %794

; <label>:794                                     ; preds = %792
  %795 = icmp eq i32 %786, 4
  br i1 %795, label %803, label %796

; <label>:796                                     ; preds = %794
  %797 = call i32 @dx.op.binary.i32(i32 39, i32 %786, i32 6)  ; UMax(a,b)
  %798 = call i32 @dx.op.binary.i32(i32 40, i32 %797, i32 13)  ; UMin(a,b)
  %799 = shl i32 %798, 2
  %800 = add i32 %608, %799
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  br label %803

; <label>:803                                     ; preds = %796, %794, %792, %790, %788, %783
  %804 = phi i32 [ %802, %796 ], [ %784, %783 ], [ %612, %788 ], [ %615, %790 ], [ %618, %792 ], [ %621, %794 ]
  %805 = add i32 %804, 0
  %806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %805, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %807 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %806, i32 0)  ; GetDimensions(handle,mipLevel)
  %808 = extractvalue %dx.types.Dimensions %807, 0
  %809 = icmp eq i32 %808, 1
  %810 = icmp eq i32 %808, 4
  %811 = or i1 %809, %810
  br i1 %811, label %818, label %812

; <label>:812                                     ; preds = %803
  %813 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %808)  ; FirstbitLo(value)
  %814 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %815 = extractvalue %dx.types.CBufRet.i32 %814, 1
  %816 = sub nsw i32 %815, %813
  %817 = call i32 @dx.op.binary.i32(i32 37, i32 %816, i32 0)  ; IMax(a,b)
  br label %818

; <label>:818                                     ; preds = %812, %803
  %819 = phi i32 [ %817, %812 ], [ -1, %803 ]
  %820 = sitofp i32 %819 to float
  %821 = icmp slt i32 %819, 0
  %822 = fsub fast float %779, %820
  %823 = select i1 %821, float 0.000000e+00, float %822
  br label %824

; <label>:824                                     ; preds = %818, %0
  %825 = phi float [ 0.000000e+00, %0 ], [ %820, %818 ]
  %826 = phi float [ 0.000000e+00, %0 ], [ %823, %818 ]
  %827 = icmp eq i32 %594, 0
  br i1 %827, label %2370, label %828

; <label>:828                                     ; preds = %824
  br label %829

; <label>:829                                     ; preds = %2345, %828
  %830 = phi i32 [ %2346, %2345 ], [ %596, %828 ]
  %831 = phi i32 [ %2347, %2345 ], [ %573, %828 ]
  %832 = phi i32 [ %2348, %2345 ], [ %573, %828 ]
  %833 = phi float [ %2349, %2345 ], [ 0.000000e+00, %828 ]
  %834 = phi float [ %2350, %2345 ], [ 0.000000e+00, %828 ]
  %835 = phi float [ %2351, %2345 ], [ 0.000000e+00, %828 ]
  %836 = phi float [ %2352, %2345 ], [ 0.000000e+00, %828 ]
  %837 = phi float [ %2353, %2345 ], [ 0.000000e+00, %828 ]
  %838 = phi float [ %2354, %2345 ], [ 0.000000e+00, %828 ]
  %839 = phi float [ %2355, %2345 ], [ 0.000000e+00, %828 ]
  %840 = phi float [ %2356, %2345 ], [ 0.000000e+00, %828 ]
  %841 = phi i32 [ %2357, %2345 ], [ 0, %828 ]
  %842 = phi float [ %2358, %2345 ], [ 0.000000e+00, %828 ]
  %843 = phi float [ %2359, %2345 ], [ 0.000000e+00, %828 ]
  %844 = phi i32 [ %2360, %2345 ], [ 0, %828 ]
  %845 = phi float [ %2361, %2345 ], [ 0.000000e+00, %828 ]
  %846 = phi float [ %2362, %2345 ], [ 0.000000e+00, %828 ]
  %847 = phi float [ %2363, %2345 ], [ 0.000000e+00, %828 ]
  %848 = phi i32 [ %2364, %2345 ], [ -1, %828 ]
  %849 = phi float [ %2365, %2345 ], [ 0.000000e+00, %828 ]
  %850 = phi i32 [ %857, %2345 ], [ %594, %828 ]
  %851 = phi i32 [ %2366, %2345 ], [ %573, %828 ]
  %852 = phi i32 [ %2367, %2345 ], [ %573, %828 ]
  %853 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %850)  ; FirstbitLo(value)
  %854 = and i32 %853, 31
  %855 = shl i32 1, %854
  %856 = xor i32 %855, -1
  %857 = and i32 %850, %856
  %858 = shl i32 %853, 2
  %859 = add i32 %774, %858
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = and i32 %861, 32767
  %863 = add i32 %607, %858
  %864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.f32 %864, 0
  %866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %867 = extractvalue %dx.types.CBufRet.f32 %866, 0
  %868 = fmul fast float %867, %519
  %869 = fmul fast float %867, %520
  %870 = extractvalue %dx.types.CBufRet.f32 %866, 1
  %871 = fadd fast float %868, %870
  %872 = fadd fast float %869, %870
  %873 = add i32 %858, %622
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = add i32 %875, 0
  %877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %876, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %878 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %877, i32 0)  ; GetDimensions(handle,mipLevel)
  %879 = extractvalue %dx.types.Dimensions %878, 0
  %880 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %879)  ; FirstbitLo(value)
  %881 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %882 = extractvalue %dx.types.CBufRet.i32 %881, 1
  %883 = sub nsw i32 %882, %880
  %884 = sitofp i32 %883 to float
  %885 = fsub fast float %570, %884
  %886 = call float @dx.op.binary.f32(i32 35, float %885, float 0.000000e+00)  ; FMax(a,b)
  %887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %877, %dx.types.Handle %63, float %871, float %872, float %865, float undef, i32 0, i32 0, i32 undef, float %886)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = fcmp fast ogt float %888, 0.000000e+00
  br i1 %889, label %890, label %2345

; <label>:890                                     ; preds = %829
  %891 = add i32 %841, 1
  %892 = mul nuw nsw i32 %862, 928
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = or i32 %892, 8
  %896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = or i32 %892, 12
  %899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 1
  %901 = or i32 %892, 20
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = or i32 %892, 24
  %905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.f32 %905, 0
  %907 = extractvalue %dx.types.ResRet.f32 %905, 1
  %908 = extractvalue %dx.types.ResRet.f32 %905, 2
  %909 = extractvalue %dx.types.ResRet.f32 %905, 3
  %910 = add nuw nsw i32 %892, 40
  %911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.f32 %911, 0
  %913 = add nuw nsw i32 %892, 72
  %914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.f32 %914, 0
  %916 = extractvalue %dx.types.ResRet.f32 %914, 1
  %917 = add nuw nsw i32 %892, 80
  %918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = add nuw nsw i32 %892, 228
  %921 = add nuw nsw i32 %892, 516
  %922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.f32 %922, 1
  %924 = extractvalue %dx.types.ResRet.f32 %922, 2
  %925 = add nuw nsw i32 %892, 528
  %926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.f32 %926, 0
  %928 = extractvalue %dx.types.ResRet.f32 %926, 1
  %929 = extractvalue %dx.types.ResRet.f32 %926, 2
  %930 = add nuw nsw i32 %892, 540
  %931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.f32 %931, 0
  %933 = extractvalue %dx.types.ResRet.f32 %931, 1
  %934 = add nuw nsw i32 %892, 548
  %935 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = add nuw nsw i32 %892, 552
  %938 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.f32 %938, 0
  %940 = extractvalue %dx.types.ResRet.f32 %938, 1
  %941 = extractvalue %dx.types.ResRet.f32 %938, 2
  %942 = add nuw nsw i32 %892, 596
  %943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = extractvalue %dx.types.ResRet.f32 %943, 1
  %946 = add nuw nsw i32 %892, 620
  %947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = extractvalue %dx.types.ResRet.f32 %947, 1
  %950 = add nuw nsw i32 %892, 628
  %951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %950, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.f32 %951, 0
  %953 = extractvalue %dx.types.ResRet.f32 %951, 1
  %954 = extractvalue %dx.types.ResRet.f32 %951, 2
  %955 = extractvalue %dx.types.ResRet.f32 %951, 3
  %956 = add nuw nsw i32 %892, 644
  %957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.f32 %957, 0
  %959 = add nuw nsw i32 %892, 648
  %960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = add nuw nsw i32 %892, 652
  %963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = add nuw nsw i32 %892, 656
  %966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.f32 %966, 0
  %968 = add nuw nsw i32 %892, 660
  %969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = add nuw nsw i32 %892, 664
  %972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = add nuw nsw i32 %892, 676
  %977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.f32 %977, 0
  %979 = extractvalue %dx.types.ResRet.f32 %977, 1
  %980 = extractvalue %dx.types.ResRet.f32 %977, 2
  %981 = add nuw nsw i32 %892, 696
  %982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.f32 %982, 0
  %984 = extractvalue %dx.types.ResRet.f32 %982, 1
  %985 = add nuw nsw i32 %892, 704
  %986 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %985, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = add nuw nsw i32 %892, 708
  %989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.f32 %989, 0
  %991 = extractvalue %dx.types.ResRet.f32 %989, 1
  %992 = add nuw nsw i32 %892, 716
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = add nuw nsw i32 %892, 720
  %996 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %995, i32 undef)  ; BufferLoad(srv,index,wot)
  %997 = extractvalue %dx.types.ResRet.f32 %996, 0
  %998 = extractvalue %dx.types.ResRet.f32 %996, 1
  %999 = extractvalue %dx.types.ResRet.f32 %996, 2
  %1000 = add nuw nsw i32 %892, 732
  %1001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 2
  %1004 = add nuw nsw i32 %892, 744
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = add nuw nsw i32 %892, 748
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = add nuw nsw i32 %892, 752
  %1011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = add nuw nsw i32 %892, 756
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = extractvalue %dx.types.ResRet.f32 %1014, 3
  %1019 = add nuw nsw i32 %892, 780
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = add nuw nsw i32 %892, 792
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = add nuw nsw i32 %892, 800
  %1028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.f32 %1028, 0
  %1030 = extractvalue %dx.types.ResRet.f32 %1028, 1
  %1031 = extractvalue %dx.types.ResRet.f32 %1028, 2
  %1032 = add nuw nsw i32 %892, 812
  %1033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = add nuw nsw i32 %892, 816
  %1036 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.f32 %1036, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1036, 2
  %1039 = add nuw nsw i32 %892, 852
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = add nuw nsw i32 %892, 860
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1045 = add nuw nsw i32 %892, 884
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = add nuw nsw i32 %892, 896
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = add nuw nsw i32 %892, 900
  %1054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.i32 %1054, 0
  %1056 = add nuw nsw i32 %892, 904
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add nuw nsw i32 %892, 908
  %1060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1059, i32 undef)  ; BufferLoad(srv,index,wot)
  %1061 = extractvalue %dx.types.ResRet.i32 %1060, 0
  %1062 = add nuw nsw i32 %892, 912
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = add nuw nsw i32 %892, 916
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %53, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = lshr i32 %830, 24
  %1069 = uitofp i32 %1068 to float
  %1070 = fmul fast float %1069, 0x3F70101020000000
  %1071 = and i32 %894, 128
  %1072 = icmp ne i32 %1071, 0
  %1073 = extractvalue %dx.types.CBufRet.i32 %881, 0
  %1074 = and i32 %1073, 512
  %1075 = icmp ne i32 %1074, 0
  %1076 = and i1 %1072, %1075
  %1077 = select i1 %1076, float 0.000000e+00, float %888
  %1078 = fadd fast float %1077, %1070
  %1079 = call float @dx.op.unary.f32(i32 7, float %1078)  ; Saturate(value)
  %1080 = fmul fast float %1079, 2.550000e+02
  %1081 = fptoui float %1080 to i32
  %1082 = shl i32 %1081, 24
  %1083 = and i32 %830, 16777215
  %1084 = or i32 %1082, %1083
  %1085 = fcmp fast ogt float %888, %849
  %1086 = select i1 %1085, i32 %862, i32 %848
  %1087 = select i1 %1085, float %888, float %849
  %1088 = fcmp fast ole float %525, 0x3FA4B5DCC0000000
  %1089 = fmul fast float %525, 0x3FB3D07220000000
  %1090 = fadd fast float %525, 0x3FAC28F5C0000000
  %1091 = fmul fast float %1090, 0x3FEE54EDE0000000
  %1092 = call float @dx.op.unary.f32(i32 23, float %1091)  ; Log(value)
  %1093 = fmul fast float %1092, 0x4003333340000000
  %1094 = call float @dx.op.unary.f32(i32 21, float %1093)  ; Exp(value)
  %1095 = select i1 %1088, float %1089, float %1094
  %1096 = call float @dx.op.unary.f32(i32 7, float %1095)  ; Saturate(value)
  %1097 = fmul fast float %944, %756
  %1098 = fadd fast float %1097, %945
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = fmul fast float %1099, %888
  %1101 = fadd fast float %1100, %838
  %1102 = call float @dx.op.binary.f32(i32 35, float %1096, float %1099)  ; FMax(a,b)
  %1103 = add i32 %1055, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1106 = extractvalue %dx.types.CBufRet.i32 %1105, 0
  %1107 = and i32 %1106, 65536
  %1108 = icmp eq i32 %1107, 0
  %1109 = and i32 %1106, 262144
  %1110 = icmp ne i32 %1109, 0
  %1111 = and i32 %1106, 1048576
  %1112 = icmp ne i32 %1111, 0
  br i1 %1108, label %1387, label %1113

; <label>:1113                                    ; preds = %890
  %1114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1115 = extractvalue %dx.types.CBufRet.f32 %1114, 0
  %1116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1117 = extractvalue %dx.types.CBufRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.CBufRet.f32 %1116, 1
  %1119 = fadd fast float %1117, %565
  %1120 = fadd fast float %1118, %566
  %1121 = fmul fast float %565, %565
  %1122 = fmul fast float %566, %566
  %1123 = fadd fast float %1121, %1122
  %1124 = fmul fast float %567, %567
  %1125 = fadd fast float %1123, %1124
  %1126 = call float @dx.op.unary.f32(i32 24, float %1125)  ; Sqrt(value)
  br i1 %1112, label %1127, label %1173

; <label>:1127                                    ; preds = %1113
  %1128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %1129 = extractvalue %dx.types.CBufRet.f32 %1128, 0
  %1130 = fcmp fast ogt float %1126, %1129
  %1131 = zext i1 %1130 to i32
  %1132 = extractvalue %dx.types.CBufRet.f32 %1128, 1
  %1133 = fcmp fast ogt float %1126, %1132
  %1134 = zext i1 %1133 to i32
  %1135 = add nuw nsw i32 %1134, %1131
  %1136 = extractvalue %dx.types.CBufRet.f32 %1128, 2
  %1137 = fcmp fast ogt float %1126, %1136
  %1138 = zext i1 %1137 to i32
  %1139 = add nuw nsw i32 %1135, %1138
  %1140 = icmp ult i32 %1139, 3
  %1141 = zext i1 %1140 to i32
  %1142 = shl nuw nsw i32 %1139, 2
  %1143 = add nuw nsw i32 %1142, 48
  %1144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %1143)  ; CBufferLoadLegacy(handle,regIndex)
  %1145 = extractvalue %dx.types.CBufRet.f32 %1144, 1
  %1146 = fcmp fast ogt float %1126, %1145
  %1147 = zext i1 %1146 to i32
  %1148 = or i32 %1142, 1
  %1149 = add nuw nsw i32 %1148, 48
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %1149)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1152 = fcmp fast ogt float %1126, %1151
  %1153 = zext i1 %1152 to i32
  %1154 = add nuw nsw i32 %1153, %1147
  %1155 = or i32 %1142, 2
  %1156 = add nuw nsw i32 %1155, 48
  %1157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %1156)  ; CBufferLoadLegacy(handle,regIndex)
  %1158 = extractvalue %dx.types.CBufRet.f32 %1157, 1
  %1159 = fcmp fast ogt float %1126, %1158
  %1160 = zext i1 %1159 to i32
  %1161 = add nuw nsw i32 %1154, %1160
  %1162 = add i32 %903, -1
  %1163 = call i32 @dx.op.binary.i32(i32 40, i32 %1161, i32 %1162)  ; UMin(a,b)
  %1164 = add i32 %1142, %1163
  %1165 = call i32 @dx.op.binary.i32(i32 40, i32 %1164, i32 12)  ; UMin(a,b)
  %1166 = add i32 %1165, 48
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %1166)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 0
  %1169 = fcmp fast oge float %1126, %1168
  %1170 = zext i1 %1169 to i32
  %1171 = call i32 @dx.op.binary.i32(i32 40, i32 %903, i32 %1141)  ; UMin(a,b)
  %1172 = call i32 @dx.op.binary.i32(i32 40, i32 %1170, i32 %1171)  ; UMin(a,b)
  br label %1173

; <label>:1173                                    ; preds = %1127, %1113
  %1174 = phi i32 [ %1165, %1127 ], [ 0, %1113 ]
  %1175 = phi i32 [ %1172, %1127 ], [ 0, %1113 ]
  %1176 = add i32 %1175, %903
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1376, label %1178

; <label>:1178                                    ; preds = %1173
  br label %1179

; <label>:1179                                    ; preds = %1345, %1178
  %1180 = phi float [ %1372, %1345 ], [ 0.000000e+00, %1178 ]
  %1181 = phi float [ %1364, %1345 ], [ 0.000000e+00, %1178 ]
  %1182 = phi float [ %1365, %1345 ], [ 0.000000e+00, %1178 ]
  %1183 = phi i32 [ %1195, %1345 ], [ %1174, %1178 ]
  %1184 = phi i32 [ %1373, %1345 ], [ 0, %1178 ]
  %1185 = add i32 %1184, %1183
  br i1 %1112, label %1186, label %1194

; <label>:1186                                    ; preds = %1179
  %1187 = and i32 %1185, -4
  %1188 = add i32 %1187, %903
  %1189 = icmp uge i32 %1185, %1188
  %1190 = sub i32 4, %903
  %1191 = select i1 %1189, i32 %1190, i32 0
  %1192 = add i32 %1191, %1183
  %1193 = add i32 %1191, %1185
  br label %1194

; <label>:1194                                    ; preds = %1186, %1179
  %1195 = phi i32 [ %1192, %1186 ], [ %1183, %1179 ]
  %1196 = phi i32 [ %1193, %1186 ], [ %1185, %1179 ]
  %1197 = and i32 %1196, 3
  %1198 = select i1 %1112, i32 %1197, i32 %1184
  %1199 = lshr i32 %1196, 2
  %1200 = select i1 %1112, i32 %1199, i32 0
  %1201 = add i32 %1196, 32
  %1202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %1201)  ; CBufferLoadLegacy(handle,regIndex)
  %1203 = extractvalue %dx.types.CBufRet.f32 %1202, 0
  %1204 = extractvalue %dx.types.CBufRet.f32 %1202, 1
  %1205 = extractvalue %dx.types.CBufRet.f32 %1202, 2
  %1206 = extractvalue %dx.types.CBufRet.f32 %1202, 3
  %1207 = fmul fast float %1203, %1126
  %1208 = fadd fast float %1207, %1204
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = fmul fast float %1205, %1126
  %1211 = fadd fast float %1210, %1206
  %1212 = call float @dx.op.unary.f32(i32 7, float %1211)  ; Saturate(value)
  %1213 = call float @dx.op.binary.f32(i32 36, float %1209, float %1212)  ; FMin(a,b)
  %1214 = select i1 %1112, float %1213, float 1.000000e+00
  %1215 = mul i32 %1198, 72
  %1216 = add i32 %920, %1215
  %1217 = add i32 %1216, 16
  %1218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = add i32 %1216, 36
  %1224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = add i32 %1216, 56
  %1227 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.f32 %1227, 0
  %1229 = fmul fast float %743, 3.906250e-03
  %1230 = fmul fast float %1229, %919
  %1231 = fmul fast float %1230, %1225
  %1232 = fmul fast float %1231, %1228
  %1233 = extractvalue %dx.types.ResRet.f32 %1227, 1
  %1234 = fadd fast float %1232, %1233
  %1235 = call float @dx.op.binary.f32(i32 35, float %1234, float 0.000000e+00)  ; FMax(a,b)
  %1236 = add i32 %1216, 32
  %1237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  br i1 %1110, label %1239, label %1272

; <label>:1239                                    ; preds = %1194
  %1240 = fmul fast float %1225, %738
  %1241 = fmul fast float %1225, %739
  %1242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1242, 1
  %1244 = add i32 %1216, 40
  %1245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = fadd fast float %1243, %586
  %1251 = fadd fast float %1250, %1248
  %1252 = fmul fast float %1250, %1247
  %1253 = call float @dx.op.unary.f32(i32 29, float %1252)  ; Round_z(value)
  %1254 = fmul fast float %1246, %1253
  %1255 = fsub fast float %1250, %1254
  %1256 = fmul fast float %1251, %1247
  %1257 = call float @dx.op.unary.f32(i32 29, float %1256)  ; Round_z(value)
  %1258 = fmul fast float %1257, %1246
  %1259 = fsub fast float %1251, %1258
  %1260 = fmul fast float %1255, %1240
  %1261 = fmul fast float %1255, %1241
  %1262 = fmul fast float %1259, %1240
  %1263 = fmul fast float %1259, %1241
  %1264 = fsub fast float %1119, %1260
  %1265 = fsub fast float %1120, %1261
  %1266 = fsub fast float %1119, %1262
  %1267 = fsub fast float %1120, %1263
  %1268 = fsub fast float %1248, %1255
  %1269 = call float @dx.op.unary.f32(i32 6, float %1268)  ; FAbs(value)
  %1270 = fmul fast float %1269, %1249
  %1271 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  br label %1272

; <label>:1272                                    ; preds = %1239, %1194
  %1273 = phi float [ %1264, %1239 ], [ %1119, %1194 ]
  %1274 = phi float [ %1265, %1239 ], [ %1120, %1194 ]
  %1275 = phi float [ %1266, %1239 ], [ %1119, %1194 ]
  %1276 = phi float [ %1267, %1239 ], [ %1120, %1194 ]
  %1277 = phi float [ %1271, %1239 ], [ 0.000000e+00, %1194 ]
  %1278 = fmul fast float %897, 4.000000e+00
  %1279 = uitofp i32 %1200 to float
  %1280 = fadd fast float %1279, %1278
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1285 = extractvalue %dx.types.CBufRet.f32 %1281, 3
  %1286 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 0
  store float %1282, float* %1286, align 4
  %1287 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 1
  store float %1283, float* %1287, align 4
  %1288 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 2
  store float %1284, float* %1288, align 4
  %1289 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 3
  store float %1285, float* %1289, align 4
  %1290 = getelementptr inbounds [4 x float], [4 x float]* %77, i32 0, i32 %1200
  %1291 = load float, float* %1290, align 4, !tbaa !110, !noalias !112
  %1292 = fmul fast float %1291, %900
  %1293 = select i1 %1112, float %1292, float %900
  %1294 = fmul fast float %1273, %1219
  %1295 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1274, float %1294)  ; FMad(a,b,c)
  %1296 = fmul fast float %1273, %1221
  %1297 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1274, float %1296)  ; FMad(a,b,c)
  %1298 = add i32 %1216, 8
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = fadd fast float %1300, %1295
  %1303 = fadd fast float %1301, %1297
  %1304 = fmul fast float %1302, %1293
  %1305 = fmul fast float %1303, %1293
  %1306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = fmul fast float %1304, %1307
  %1310 = fmul fast float %1305, %1308
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 2
  %1313 = fadd fast float %1309, %1312
  %1314 = fadd fast float %1310, %1312
  %1315 = fmul fast float %1275, %1219
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1220, float %1276, float %1315)  ; FMad(a,b,c)
  %1317 = fmul fast float %1275, %1221
  %1318 = call float @dx.op.tertiary.f32(i32 46, float %1222, float %1276, float %1317)  ; FMad(a,b,c)
  %1319 = fadd fast float %1300, %1316
  %1320 = fadd fast float %1301, %1318
  %1321 = fmul fast float %1319, %1293
  %1322 = fmul fast float %1320, %1293
  %1323 = fmul fast float %1321, %1307
  %1324 = fmul fast float %1322, %1308
  %1325 = fadd fast float %1323, %1312
  %1326 = fadd fast float %1324, %1312
  %1327 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %1313, float %1314, float %1280, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1327, 3
  %1331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %64, float %1325, float %1326, float %1280, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %1110, label %1332, label %1345

; <label>:1332                                    ; preds = %1272
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 3
  %1334 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1335 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1336 = fsub fast float %1335, %1328
  %1337 = fsub fast float %1334, %1329
  %1338 = fsub fast float %1333, %1330
  %1339 = fmul fast float %1336, %1277
  %1340 = fmul fast float %1337, %1277
  %1341 = fmul fast float %1338, %1277
  %1342 = fadd fast float %1339, %1328
  %1343 = fadd fast float %1340, %1329
  %1344 = fadd fast float %1341, %1330
  br label %1345

; <label>:1345                                    ; preds = %1332, %1272
  %1346 = phi float [ %1342, %1332 ], [ %1328, %1272 ]
  %1347 = phi float [ %1343, %1332 ], [ %1329, %1272 ]
  %1348 = phi float [ %1344, %1332 ], [ %1330, %1272 ]
  %1349 = fmul fast float %1346, 2.000000e+00
  %1350 = fmul fast float %1347, 2.000000e+00
  %1351 = fadd fast float %1349, -1.000000e+00
  %1352 = fadd fast float %1350, -1.000000e+00
  %1353 = fmul fast float %1351, %1219
  %1354 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1221, float %1353)  ; FMad(a,b,c)
  %1355 = fmul fast float %1351, %1220
  %1356 = call float @dx.op.tertiary.f32(i32 46, float %1352, float %1222, float %1355)  ; FMad(a,b,c)
  %1357 = fmul fast float %1214, %1115
  %1358 = fmul fast float %1357, %1235
  %1359 = fmul fast float %1358, %1238
  %1360 = fmul fast float %1354, %1359
  %1361 = fmul fast float %1360, %1307
  %1362 = fmul fast float %1356, %1359
  %1363 = fmul fast float %1362, %1308
  %1364 = fadd fast float %1361, %1181
  %1365 = fadd fast float %1363, %1182
  %1366 = add i32 %1216, 64
  %1367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = fmul fast float %1368, %1348
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1371 = fadd fast float %1369, %1370
  %1372 = call float @dx.op.binary.f32(i32 35, float %1180, float %1371)  ; FMax(a,b)
  %1373 = add nuw i32 %1184, 1
  %1374 = icmp eq i32 %1373, %1176
  br i1 %1374, label %1375, label %1179

; <label>:1375                                    ; preds = %1345
  br label %1376

; <label>:1376                                    ; preds = %1375, %1173
  %1377 = phi float [ 0.000000e+00, %1173 ], [ %1372, %1375 ]
  %1378 = phi float [ 0.000000e+00, %1173 ], [ %1364, %1375 ]
  %1379 = phi float [ 0.000000e+00, %1173 ], [ %1365, %1375 ]
  %1380 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float 1.000000e+00, float %1378, float %1379, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1381 = call float @dx.op.unary.f32(i32 25, float %1380)  ; Rsqrt(value)
  %1382 = fmul fast float %1381, %1378
  %1383 = fmul fast float %1381, %1379
  %1384 = fmul fast float %1377, %948
  %1385 = fadd fast float %1384, %949
  %1386 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  br label %1387

; <label>:1387                                    ; preds = %1376, %890
  %1388 = phi float [ %1382, %1376 ], [ 0.000000e+00, %890 ]
  %1389 = phi float [ %1383, %1376 ], [ 0.000000e+00, %890 ]
  %1390 = phi float [ %1381, %1376 ], [ 0.000000e+00, %890 ]
  %1391 = phi float [ %1386, %1376 ], [ 0.000000e+00, %890 ]
  %1392 = fmul fast float %1388, %888
  %1393 = fmul fast float %1389, %888
  %1394 = fadd fast float %1392, %833
  %1395 = fadd fast float %1393, %834
  %1396 = fadd fast float %1391, %1102
  %1397 = fmul fast float %1390, %888
  %1398 = fadd fast float %1392, %835
  %1399 = fadd fast float %1393, %836
  %1400 = fadd fast float %1397, %837
  %1401 = fmul fast float %1391, %888
  %1402 = fadd fast float %1401, %839
  %1403 = fmul fast float %1396, %888
  %1404 = fadd fast float %1403, %840
  %1405 = icmp ne i32 %903, 0
  %1406 = select i1 %1405, i32 2, i32 0
  %1407 = fcmp fast ogt float %1391, 0.000000e+00
  %1408 = select i1 %1407, i32 4, i32 0
  %1409 = fmul fast float %990, %743
  %1410 = fadd fast float %1409, %991
  %1411 = call float @dx.op.binary.f32(i32 35, float %1410, float 0.000000e+00)  ; FMax(a,b)
  %1412 = fmul fast float %1411, %983
  %1413 = fadd fast float %1412, %984
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = fmul fast float %1414, %1396
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1418 = fcmp fast oge float %1415, %1417
  %1419 = fmul fast float %1415, %888
  %1420 = fadd fast float %1419, %842
  %1421 = icmp ne i32 %1041, 0
  %1422 = select i1 %1421, i32 8, i32 0
  %1423 = shl i32 %894, 3
  %1424 = and i32 %1423, 16
  %1425 = and i32 %894, 2
  %1426 = icmp ne i32 %1425, 0
  %1427 = and i1 %1426, %1418
  %1428 = select i1 %1427, i32 32, i32 0
  %1429 = shl i32 %894, 2
  %1430 = and i32 %1429, 256
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1433 = fmul fast float %1432, %526
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1435 = fadd fast float %1433, %1434
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1438 = extractvalue %dx.types.CBufRet.f32 %1437, 0
  %1439 = fmul fast float %1438, %1436
  %1440 = select i1 %1421, float %1439, float 0.000000e+00
  %1441 = fcmp fast ogt float %1440, 0.000000e+00
  %1442 = or i1 %1427, %1441
  br i1 %1442, label %1443, label %1752

; <label>:1443                                    ; preds = %1387
  %1444 = select i1 %1418, float %1396, float 0.000000e+00
  %1445 = add i32 %618, 0
  %1446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1445, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1447 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1446, i32 0)  ; GetDimensions(handle,mipLevel)
  %1448 = extractvalue %dx.types.Dimensions %1447, 0
  %1449 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1448)  ; FirstbitLo(value)
  %1450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.i32 %1450, 1
  %1452 = sub nsw i32 %1451, %1449
  %1453 = sitofp i32 %1452 to float
  %1454 = fsub fast float %941, %1453
  %1455 = call float @dx.op.binary.f32(i32 35, float %1454, float 0.000000e+00)  ; FMax(a,b)
  %1456 = fmul fast float %923, %628
  %1457 = fmul fast float %923, %629
  %1458 = fsub fast float %638, %924
  %1459 = fmul fast float %939, %519
  %1460 = fmul fast float %939, %520
  %1461 = call float @dx.op.unary.f32(i32 22, float %1459)  ; Frc(value)
  %1462 = call float @dx.op.unary.f32(i32 22, float %1460)  ; Frc(value)
  %1463 = fmul fast float %1461, 2.000000e+00
  %1464 = fmul fast float %1462, 2.000000e+00
  %1465 = fadd fast float %1463, -1.000000e+00
  %1466 = fadd fast float %1464, -1.000000e+00
  %1467 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1468 = call float @dx.op.unary.f32(i32 6, float %1466)  ; FAbs(value)
  %1469 = fsub fast float 1.000000e+00, %1467
  %1470 = fmul fast float %1469, %1468
  %1471 = fsub fast float %1469, %1470
  %1472 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 0
  store float %1471, float* %1472, align 4, !tbaa !110, !noalias !117
  %1473 = fmul fast float %1468, %1467
  %1474 = fsub fast float %1467, %1473
  %1475 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 1
  store float %1474, float* %1475, align 4, !tbaa !110, !noalias !117
  %1476 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 2
  store float %1470, float* %1476, align 4, !tbaa !110, !noalias !117
  %1477 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 3
  store float %1473, float* %1477, align 4, !tbaa !110, !noalias !117
  br label %1478

; <label>:1478                                    ; preds = %1733, %1443
  %1479 = phi float [ 0.000000e+00, %1443 ], [ %1734, %1733 ]
  %1480 = phi float [ 0.000000e+00, %1443 ], [ %1735, %1733 ]
  %1481 = phi float [ 0.000000e+00, %1443 ], [ %1736, %1733 ]
  %1482 = phi float [ 0.000000e+00, %1443 ], [ %1737, %1733 ]
  %1483 = phi float [ 0.000000e+00, %1443 ], [ %1738, %1733 ]
  %1484 = phi i32 [ 0, %1443 ], [ %1739, %1733 ]
  %1485 = phi float [ %1394, %1443 ], [ %1588, %1733 ]
  %1486 = phi float [ %1395, %1443 ], [ %1589, %1733 ]
  %1487 = mul i32 %1484, 2
  %1488 = add i32 0, %1487
  %1489 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1488
  %1490 = load float, float* %1489, align 4
  %1491 = mul i32 %1484, 2
  %1492 = add i32 1, %1491
  %1493 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1492
  %1494 = load float, float* %1493, align 4
  %1495 = fmul fast float %1490, 5.000000e-01
  %1496 = fmul fast float %1494, 5.000000e-01
  %1497 = fsub fast float 1.000000e+00, %1490
  %1498 = fsub fast float 1.000000e+00, %1494
  %1499 = fmul fast float %1497, 5.000000e-01
  %1500 = fmul fast float %1498, 5.000000e-01
  %1501 = fadd fast float %1495, %1459
  %1502 = fadd fast float %1496, %1460
  %1503 = call float @dx.op.unary.f32(i32 27, float %1501)  ; Round_ni(value)
  %1504 = call float @dx.op.unary.f32(i32 27, float %1502)  ; Round_ni(value)
  %1505 = fadd fast float %1503, %1499
  %1506 = fadd fast float %1504, %1500
  %1507 = fmul fast float %1505, %940
  %1508 = fmul fast float %1506, %940
  %1509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1510 = extractvalue %dx.types.CBufRet.f32 %1509, 0
  %1511 = fmul fast float %1507, %1510
  %1512 = fmul fast float %1508, %1510
  %1513 = extractvalue %dx.types.CBufRet.f32 %1509, 1
  %1514 = fadd fast float %1511, %1513
  %1515 = fadd fast float %1512, %1513
  %1516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1446, %dx.types.Handle %66, float %1514, float %1515, float %606, float undef, i32 0, i32 0, i32 undef, float %1455)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = extractvalue %dx.types.ResRet.f32 %1516, 1
  %1519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1520 = extractvalue %dx.types.CBufRet.f32 %1519, 3
  %1521 = fmul fast float %1520, 2.000000e+00
  %1522 = fmul fast float %1521, %1517
  %1523 = fmul fast float %1521, %1518
  %1524 = fsub fast float %1522, %1520
  %1525 = fsub fast float %1523, %1520
  %1526 = fmul fast float %1524, %1524
  %1527 = fmul fast float %1525, %1525
  %1528 = fadd fast float %1526, %1527
  %1529 = call float @dx.op.unary.f32(i32 24, float %1528)  ; Sqrt(value)
  %1530 = fcmp fast ogt float %1529, 0.000000e+00
  %1531 = fdiv fast float 1.000000e+00, %1529
  %1532 = fmul fast float %1524, %1531
  %1533 = fmul fast float %1525, %1531
  %1534 = select i1 %1530, float %1532, float 0.000000e+00
  %1535 = select i1 %1530, float %1533, float 0.000000e+00
  br i1 %1441, label %1536, label %1587

; <label>:1536                                    ; preds = %1478
  %1537 = add i32 %1041, 0
  %1538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1537, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1540 = extractvalue %dx.types.CBufRet.f32 %1539, 1
  %1541 = fmul fast float %936, %923
  %1542 = add i32 %1041, 0
  %1543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1542, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1544 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1543, i32 0)  ; GetDimensions(handle,mipLevel)
  %1545 = extractvalue %dx.types.Dimensions %1544, 0
  %1546 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1545)  ; FirstbitLo(value)
  %1547 = uitofp i32 %1546 to float
  %1548 = fsub fast float %1458, %929
  %1549 = fadd fast float %1548, %1547
  %1550 = fmul fast float %1541, %1529
  %1551 = fsub fast float -0.000000e+00, %1534
  %1552 = fmul fast float %1535, %1456
  %1553 = call float @dx.op.tertiary.f32(i32 46, float %1551, float %1457, float %1552)  ; FMad(a,b,c)
  %1554 = fmul fast float %1534, %1456
  %1555 = call float @dx.op.tertiary.f32(i32 46, float %1535, float %1457, float %1554)  ; FMad(a,b,c)
  %1556 = fmul fast float %1550, %1540
  %1557 = fsub fast float %1555, %1556
  %1558 = fmul fast float %1553, %927
  %1559 = fmul fast float %1557, %928
  %1560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1538, %dx.types.Handle %1560, float %1558, float %1559, float undef, float undef, i32 0, i32 0, i32 undef, float %1549)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 3
  %1564 = fadd fast float %1562, %1563
  %1565 = fmul fast float %1564, %1044
  %1566 = fsub fast float %1565, %1044
  %1567 = fsub fast float %1562, %1563
  %1568 = fmul fast float %1567, %1044
  %1569 = fmul fast float %1566, %1535
  %1570 = call float @dx.op.tertiary.f32(i32 46, float %1534, float %1568, float %1569)  ; FMad(a,b,c)
  %1571 = fmul fast float %1566, %1551
  %1572 = call float @dx.op.tertiary.f32(i32 46, float %1535, float %1568, float %1571)  ; FMad(a,b,c)
  %1573 = fmul fast float %1570, %927
  %1574 = fmul fast float %1572, %928
  %1575 = fmul fast float %932, %743
  %1576 = fadd fast float %1575, %933
  %1577 = call float @dx.op.binary.f32(i32 35, float %1576, float 0.000000e+00)  ; FMax(a,b)
  %1578 = fmul fast float %1440, %888
  %1579 = fmul fast float %1578, %1577
  %1580 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %1484
  %1581 = load float, float* %1580, align 4, !tbaa !110, !noalias !117
  %1582 = fmul fast float %1579, %1581
  %1583 = fmul fast float %1573, %1582
  %1584 = fmul fast float %1574, %1582
  %1585 = fadd fast float %1583, %1485
  %1586 = fadd fast float %1584, %1486
  br label %1587

; <label>:1587                                    ; preds = %1536, %1478
  %1588 = phi float [ %1585, %1536 ], [ %1485, %1478 ]
  %1589 = phi float [ %1586, %1536 ], [ %1486, %1478 ]
  %1590 = fcmp fast ogt float %1444, 0.000000e+00
  %1591 = and i1 %1426, %1590
  br i1 %1591, label %1592, label %1733

; <label>:1592                                    ; preds = %1587
  %1593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1594 = extractvalue %dx.types.CBufRet.f32 %1593, 1
  %1595 = fmul fast float %987, %923
  %1596 = add i32 %1055, 0
  %1597 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1596, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1598 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1597, i32 0)  ; GetDimensions(handle,mipLevel)
  %1599 = extractvalue %dx.types.Dimensions %1598, 0
  %1600 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1599)  ; FirstbitLo(value)
  %1601 = uitofp i32 %1600 to float
  %1602 = fsub fast float %1458, %975
  %1603 = fadd fast float %1602, %1601
  %1604 = fmul fast float %1529, %1595
  %1605 = fsub fast float -0.000000e+00, %1534
  %1606 = fmul fast float %1535, %1456
  %1607 = call float @dx.op.tertiary.f32(i32 46, float %1605, float %1457, float %1606)  ; FMad(a,b,c)
  %1608 = fmul fast float %1534, %1456
  %1609 = call float @dx.op.tertiary.f32(i32 46, float %1535, float %1457, float %1608)  ; FMad(a,b,c)
  %1610 = fmul fast float %1604, %1594
  %1611 = fsub fast float %1609, %1610
  %1612 = fmul fast float %1607, %973
  %1613 = fmul fast float %1611, %974
  %1614 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1615 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1614, float %1612, float %1613, float undef, float undef, i32 0, i32 0, i32 undef, float %1603)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = fmul fast float %1412, %1616
  %1618 = fadd fast float %1617, %984
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1621 = extractvalue %dx.types.CBufRet.f32 %1620, 2
  %1622 = fmul fast float %1621, %526
  %1623 = extractvalue %dx.types.CBufRet.f32 %1620, 3
  %1624 = fadd fast float %1622, %1623
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = fcmp fast ogt float %1619, 0.000000e+00
  %1627 = fcmp fast ogt float %1625, 0.000000e+00
  %1628 = and i1 %1626, %1627
  %1629 = and i32 %894, 64
  %1630 = icmp ne i32 %1629, 0
  %1631 = and i1 %1630, %1628
  br i1 %1631, label %1632, label %1715

; <label>:1632                                    ; preds = %1592
  %1633 = fsub fast float %1458, %980
  %1634 = add i32 %1061, 0
  %1635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1636 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1635, i32 0)  ; GetDimensions(handle,mipLevel)
  %1637 = extractvalue %dx.types.Dimensions %1636, 0
  %1638 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1637)  ; FirstbitLo(value)
  %1639 = uitofp i32 %1638 to float
  %1640 = fadd fast float %1639, %1633
  %1641 = add i32 %1064, 0
  %1642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1641, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1643 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1642, i32 0)  ; GetDimensions(handle,mipLevel)
  %1644 = extractvalue %dx.types.Dimensions %1643, 0
  %1645 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1644)  ; FirstbitLo(value)
  %1646 = uitofp i32 %1645 to float
  %1647 = fadd fast float %1646, %1633
  %1648 = add i32 %1061, 0
  %1649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1648, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1650 = add i32 %1064, 0
  %1651 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1650, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1652 = fmul fast float %1607, %978
  %1653 = fmul fast float %1611, %979
  %1654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1649, %dx.types.Handle %1614, float %1652, float %1653, float undef, float undef, i32 0, i32 0, i32 undef, float %1640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1655 = extractvalue %dx.types.ResRet.f32 %1654, 0
  %1656 = extractvalue %dx.types.ResRet.f32 %1654, 1
  %1657 = extractvalue %dx.types.ResRet.f32 %1654, 2
  %1658 = extractvalue %dx.types.ResRet.f32 %1654, 3
  %1659 = fmul fast float %1655, %1047
  %1660 = fadd fast float %1659, %1048
  %1661 = call float @dx.op.unary.f32(i32 7, float %1660)  ; Saturate(value)
  %1662 = fadd fast float %1656, %1658
  %1663 = fmul fast float %1662, %1049
  %1664 = fsub fast float %1663, %1049
  %1665 = fsub fast float %1656, %1658
  %1666 = fmul fast float %1665, %1049
  %1667 = fmul fast float %1664, %1535
  %1668 = call float @dx.op.tertiary.f32(i32 46, float %1534, float %1666, float %1667)  ; FMad(a,b,c)
  %1669 = fmul fast float %1664, %1605
  %1670 = call float @dx.op.tertiary.f32(i32 46, float %1535, float %1666, float %1669)  ; FMad(a,b,c)
  %1671 = fmul fast float %1668, %978
  %1672 = fmul fast float %1670, %979
  %1673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1651, %dx.types.Handle %1614, float %1652, float %1653, float undef, float undef, i32 0, i32 0, i32 undef, float %1647)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = fsub fast float 1.000000e+00, %1619
  %1676 = bitcast float %1619 to i32
  %1677 = sitofp i32 %1676 to float
  %1678 = fadd fast float %1677, 0xC1CFBF8940000000
  %1679 = fmul fast float %1678, %970
  %1680 = fadd fast float %1679, 0x41CFBF8940000000
  %1681 = fptosi float %1680 to i32
  %1682 = bitcast i32 %1681 to float
  %1683 = bitcast float %1675 to i32
  %1684 = sitofp i32 %1683 to float
  %1685 = fadd fast float %1684, 0xC1CFBF8940000000
  %1686 = fmul fast float %1685, %970
  %1687 = fadd fast float %1686, 0x41CFBF8940000000
  %1688 = fptosi float %1687 to i32
  %1689 = bitcast i32 %1688 to float
  %1690 = fmul fast float %1682, %967
  %1691 = fmul fast float %1689, %967
  %1692 = fsub fast float %1675, %1690
  %1693 = fadd fast float %1691, %1675
  %1694 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1695 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1696 = fsub fast float %1674, %1694
  %1697 = fsub fast float %1695, %1694
  %1698 = bitcast float %1697 to i32
  %1699 = sub nsw i32 2129859010, %1698
  %1700 = bitcast i32 %1699 to float
  %1701 = fmul fast float %1700, %1696
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = fmul fast float %1625, %964
  %1704 = fmul fast float %1703, %1702
  %1705 = fmul fast float %1671, %1704
  %1706 = fmul fast float %1672, %1704
  %1707 = fadd fast float %1657, -1.000000e+00
  %1708 = fmul fast float %1704, %1707
  %1709 = fadd fast float %1708, 1.000000e+00
  %1710 = fsub fast float %1661, %958
  %1711 = fmul fast float %1704, %1710
  %1712 = fadd fast float %1711, %958
  %1713 = fmul fast float %1704, %1675
  %1714 = fadd fast float %1713, %1619
  br label %1715

; <label>:1715                                    ; preds = %1632, %1592
  %1716 = phi float [ %1714, %1632 ], [ %1619, %1592 ]
  %1717 = phi float [ %1712, %1632 ], [ %958, %1592 ]
  %1718 = phi float [ %1709, %1632 ], [ 1.000000e+00, %1592 ]
  %1719 = phi float [ %1705, %1632 ], [ 0.000000e+00, %1592 ]
  %1720 = phi float [ %1706, %1632 ], [ 0.000000e+00, %1592 ]
  %1721 = getelementptr [4 x float], [4 x float]* %90, i32 0, i32 %1484
  %1722 = load float, float* %1721, align 4, !tbaa !110, !noalias !117
  %1723 = fmul fast float %1722, %1716
  %1724 = fmul fast float %1723, %1719
  %1725 = fmul fast float %1723, %1720
  %1726 = fadd fast float %1724, %1479
  %1727 = fadd fast float %1725, %1480
  %1728 = fmul fast float %1723, %1718
  %1729 = fadd fast float %1728, %1481
  %1730 = fmul fast float %1723, %1717
  %1731 = fadd fast float %1730, %1482
  %1732 = fadd fast float %1723, %1483
  br label %1733

; <label>:1733                                    ; preds = %1715, %1587
  %1734 = phi float [ %1726, %1715 ], [ %1479, %1587 ]
  %1735 = phi float [ %1727, %1715 ], [ %1480, %1587 ]
  %1736 = phi float [ %1729, %1715 ], [ %1481, %1587 ]
  %1737 = phi float [ %1731, %1715 ], [ %1482, %1587 ]
  %1738 = phi float [ %1732, %1715 ], [ %1483, %1587 ]
  %1739 = add nuw nsw i32 %1484, 1
  %1740 = icmp eq i32 %1739, 4
  br i1 %1740, label %1741, label %1478, !llvm.loop !124

; <label>:1741                                    ; preds = %1733
  %1742 = fmul fast float %1738, %1444
  %1743 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1742)  ; FMax(a,b)
  %1744 = fmul fast float %1738, %1734
  %1745 = fmul fast float %1738, %1735
  %1746 = fadd fast float %1736, -1.000000e+00
  %1747 = fmul fast float %1738, %1746
  %1748 = fadd fast float %1747, 1.000000e+00
  %1749 = fsub fast float %1737, %912
  %1750 = fmul fast float %1738, %1749
  %1751 = fadd fast float %1750, %912
  br label %1752

; <label>:1752                                    ; preds = %1741, %1387
  %1753 = phi float [ %1588, %1741 ], [ %1394, %1387 ]
  %1754 = phi float [ %1589, %1741 ], [ %1395, %1387 ]
  %1755 = phi float [ %1743, %1741 ], [ 0.000000e+00, %1387 ]
  %1756 = phi float [ %1744, %1741 ], [ 0.000000e+00, %1387 ]
  %1757 = phi float [ %1745, %1741 ], [ 0.000000e+00, %1387 ]
  %1758 = phi float [ %1748, %1741 ], [ 1.000000e+00, %1387 ]
  %1759 = phi float [ %1751, %1741 ], [ %912, %1387 ]
  %1760 = fmul fast float %1025, %743
  %1761 = fadd fast float %1760, %1026
  %1762 = call float @dx.op.binary.f32(i32 35, float %1761, float 0.000000e+00)  ; FMax(a,b)
  %1763 = fmul fast float %1762, %1021
  %1764 = fadd fast float %1763, %1022
  %1765 = call float @dx.op.unary.f32(i32 7, float %1764)  ; Saturate(value)
  %1766 = fmul fast float %1765, %1396
  %1767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1768 = extractvalue %dx.types.CBufRet.f32 %1767, 1
  %1769 = fcmp fast oge float %1766, %1768
  %1770 = fmul fast float %1766, %888
  %1771 = fadd fast float %1770, %843
  %1772 = shl i32 %894, 4
  %1773 = and i32 %1772, 64
  %1774 = and i32 %894, 4
  %1775 = icmp ne i32 %1774, 0
  %1776 = and i1 %1775, %1769
  %1777 = select i1 %1776, i32 128, i32 0
  br i1 %1776, label %1778, label %2103

; <label>:1778                                    ; preds = %1752
  %1779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1780 = extractvalue %dx.types.CBufRet.f32 %1779, 0
  %1781 = extractvalue %dx.types.CBufRet.f32 %1779, 1
  %1782 = fsub fast float %565, %628
  %1783 = fadd fast float %1782, %1780
  %1784 = fsub fast float %566, %629
  %1785 = fadd fast float %1784, %1781
  %1786 = fmul fast float %1783, %994
  %1787 = fmul fast float %1785, %994
  %1788 = fadd fast float %1786, %628
  %1789 = fadd fast float %1787, %629
  %1790 = add i32 %1067, 0
  %1791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1790, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1792 = add i32 %1067, 0
  %1793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1794 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1793, i32 0)  ; GetDimensions(handle,mipLevel)
  %1795 = extractvalue %dx.types.Dimensions %1794, 0
  %1796 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1795)  ; FirstbitLo(value)
  %1797 = uitofp i32 %1796 to float
  %1798 = fsub fast float %638, %1003
  %1799 = fadd fast float %1798, %1797
  %1800 = fmul fast float %1788, %1002
  %1801 = fmul fast float %1789, %1002
  %1802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1791, %dx.types.Handle %1802, float %1800, float %1801, float undef, float undef, i32 0, i32 0, i32 undef, float %1799)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.ResRet.f32 %1803, 2
  %1807 = fmul fast float %1804, 2.000000e+00
  %1808 = fmul fast float %1805, 2.000000e+00
  %1809 = fadd fast float %1807, -1.000000e+00
  %1810 = fadd fast float %1808, -1.000000e+00
  %1811 = fmul fast float %1806, %997
  %1812 = fmul fast float %1811, %1012
  %1813 = fmul fast float %1812, %1809
  %1814 = fmul fast float %1812, %1810
  %1815 = fsub fast float %738, %1813
  %1816 = fsub fast float %739, %1814
  %1817 = fmul fast float %1815, %1009
  %1818 = fmul fast float %1816, %1009
  %1819 = fadd fast float %1817, %1813
  %1820 = fadd fast float %1818, %1814
  %1821 = fmul fast float %1819, %1012
  %1822 = fmul fast float %1820, %1012
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1825 = fmul fast float %1012, %586
  %1826 = fadd fast float %1824, %1825
  %1827 = fadd fast float %1826, %1017
  %1828 = fmul fast float %1826, %1016
  %1829 = call float @dx.op.unary.f32(i32 29, float %1828)  ; Round_z(value)
  %1830 = fmul fast float %1829, %1015
  %1831 = fsub fast float %1826, %1830
  %1832 = fmul fast float %1827, %1016
  %1833 = call float @dx.op.unary.f32(i32 29, float %1832)  ; Round_z(value)
  %1834 = fmul fast float %1833, %1015
  %1835 = fsub fast float %1827, %1834
  %1836 = fmul fast float %1821, %1831
  %1837 = fmul fast float %1822, %1831
  %1838 = fmul fast float %1821, %1835
  %1839 = fmul fast float %1822, %1835
  %1840 = fsub fast float %1788, %1836
  %1841 = fsub fast float %1789, %1837
  %1842 = fsub fast float %1788, %1838
  %1843 = fsub fast float %1789, %1839
  %1844 = fsub fast float %1017, %1831
  %1845 = call float @dx.op.unary.f32(i32 6, float %1844)  ; FAbs(value)
  %1846 = fmul fast float %1845, %1018
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1848 = fmul fast float %1840, %998
  %1849 = fmul fast float %1841, %998
  %1850 = fmul fast float %1842, %998
  %1851 = fmul fast float %1843, %998
  %1852 = fcmp fast ogt float %1006, 0.000000e+00
  %1853 = add i32 %1055, 0
  %1854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1853, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1855 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1854, i32 0)  ; GetDimensions(handle,mipLevel)
  %1856 = extractvalue %dx.types.Dimensions %1855, 0
  %1857 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1856)  ; FirstbitLo(value)
  %1858 = uitofp i32 %1857 to float
  %1859 = fsub fast float %638, %999
  %1860 = fadd fast float %1859, %1858
  br i1 %1852, label %1861, label %1948

; <label>:1861                                    ; preds = %1778
  %1862 = fmul fast float %1006, %586
  %1863 = fmul fast float %1862, 5.000000e-01
  %1864 = fadd fast float %1863, 5.000000e-01
  %1865 = call float @dx.op.unary.f32(i32 22, float %1864)  ; Frc(value)
  %1866 = call float @dx.op.unary.f32(i32 22, float %1863)  ; Frc(value)
  %1867 = call float @dx.op.unary.f32(i32 27, float %1864)  ; Round_ni(value)
  %1868 = call float @dx.op.unary.f32(i32 27, float %1863)  ; Round_ni(value)
  %1869 = fmul fast float %1867, 2.000000e+00
  %1870 = fmul fast float %1868, 2.000000e+00
  %1871 = fadd fast float %1870, 1.000000e+00
  %1872 = fsub fast float 1.000000e+00, %1865
  %1873 = fsub fast float 1.000000e+00, %1866
  %1874 = call float @dx.op.binary.f32(i32 36, float %1865, float %1872)  ; FMin(a,b)
  %1875 = call float @dx.op.binary.f32(i32 36, float %1866, float %1873)  ; FMin(a,b)
  %1876 = fmul fast float %1874, 2.000000e+00
  %1877 = fmul fast float %1875, 2.000000e+00
  %1878 = call float @dx.op.dot3.f32(i32 55, float %1869, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1869, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1869, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.unary.f32(i32 13, float %1878)  ; Sin(value)
  %1882 = call float @dx.op.unary.f32(i32 13, float %1879)  ; Sin(value)
  %1883 = call float @dx.op.unary.f32(i32 13, float %1880)  ; Sin(value)
  %1884 = fmul fast float %1881, 0x40E55DD180000000
  %1885 = fmul fast float %1882, 0x40E55DD180000000
  %1886 = fmul fast float %1883, 0x40E55DD180000000
  %1887 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1888 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1889 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1890 = fmul fast float %1887, 0x401921FB60000000
  %1891 = call float @dx.op.unary.f32(i32 12, float %1890)  ; Cos(value)
  %1892 = call float @dx.op.unary.f32(i32 13, float %1890)  ; Sin(value)
  %1893 = fsub fast float -0.000000e+00, %1892
  %1894 = call float @dx.op.dot3.f32(i32 55, float %1871, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1895 = call float @dx.op.dot3.f32(i32 55, float %1871, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1896 = call float @dx.op.dot3.f32(i32 55, float %1871, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1897 = call float @dx.op.unary.f32(i32 13, float %1894)  ; Sin(value)
  %1898 = call float @dx.op.unary.f32(i32 13, float %1895)  ; Sin(value)
  %1899 = call float @dx.op.unary.f32(i32 13, float %1896)  ; Sin(value)
  %1900 = fmul fast float %1897, 0x40E55DD180000000
  %1901 = fmul fast float %1898, 0x40E55DD180000000
  %1902 = fmul fast float %1899, 0x40E55DD180000000
  %1903 = call float @dx.op.unary.f32(i32 22, float %1900)  ; Frc(value)
  %1904 = call float @dx.op.unary.f32(i32 22, float %1901)  ; Frc(value)
  %1905 = call float @dx.op.unary.f32(i32 22, float %1902)  ; Frc(value)
  %1906 = fmul fast float %1903, 0x401921FB60000000
  %1907 = call float @dx.op.unary.f32(i32 12, float %1906)  ; Cos(value)
  %1908 = call float @dx.op.unary.f32(i32 13, float %1906)  ; Sin(value)
  %1909 = fsub fast float -0.000000e+00, %1908
  %1910 = fmul fast float %1891, %1848
  %1911 = call float @dx.op.tertiary.f32(i32 46, float %1849, float %1893, float %1910)  ; FMad(a,b,c)
  %1912 = fmul fast float %1892, %1848
  %1913 = call float @dx.op.tertiary.f32(i32 46, float %1849, float %1891, float %1912)  ; FMad(a,b,c)
  %1914 = fadd fast float %1911, %1888
  %1915 = fadd fast float %1913, %1889
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1802, float %1914, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = fmul fast float %1917, %1876
  %1919 = fmul fast float %1907, %1848
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1849, float %1909, float %1919)  ; FMad(a,b,c)
  %1921 = fmul fast float %1908, %1848
  %1922 = call float @dx.op.tertiary.f32(i32 46, float %1849, float %1907, float %1921)  ; FMad(a,b,c)
  %1923 = fadd fast float %1920, %1904
  %1924 = fadd fast float %1922, %1905
  %1925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1802, float %1923, float %1924, float undef, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = fmul fast float %1926, %1877
  %1928 = fadd fast float %1927, %1918
  %1929 = fmul fast float %1891, %1850
  %1930 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1893, float %1929)  ; FMad(a,b,c)
  %1931 = fmul fast float %1892, %1850
  %1932 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1891, float %1931)  ; FMad(a,b,c)
  %1933 = fadd fast float %1930, %1888
  %1934 = fadd fast float %1932, %1889
  %1935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1802, float %1933, float %1934, float undef, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = fmul fast float %1936, %1876
  %1938 = fmul fast float %1907, %1850
  %1939 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1909, float %1938)  ; FMad(a,b,c)
  %1940 = fmul fast float %1908, %1850
  %1941 = call float @dx.op.tertiary.f32(i32 46, float %1851, float %1907, float %1940)  ; FMad(a,b,c)
  %1942 = fadd fast float %1939, %1904
  %1943 = fadd fast float %1941, %1905
  %1944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1802, float %1942, float %1943, float undef, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = fmul fast float %1945, %1877
  %1947 = fadd fast float %1946, %1937
  br label %1953

; <label>:1948                                    ; preds = %1778
  %1949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1802, float %1848, float %1849, float undef, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %1802, float %1850, float %1851, float undef, float undef, i32 0, i32 0, i32 undef, float %1860)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1952 = extractvalue %dx.types.ResRet.f32 %1951, 0
  br label %1953

; <label>:1953                                    ; preds = %1948, %1861
  %1954 = phi float [ %1928, %1861 ], [ %1950, %1948 ]
  %1955 = phi float [ %1947, %1861 ], [ %1952, %1948 ]
  %1956 = fsub fast float %1955, %1954
  %1957 = fmul fast float %1956, %1847
  %1958 = fadd fast float %1957, %1954
  %1959 = fmul fast float %1763, %1958
  %1960 = fadd fast float %1959, %1022
  %1961 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1963 = extractvalue %dx.types.CBufRet.f32 %1962, 2
  %1964 = fmul fast float %1963, %526
  %1965 = extractvalue %dx.types.CBufRet.f32 %1962, 3
  %1966 = fadd fast float %1964, %1965
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = fcmp fast ogt float %1961, 0.000000e+00
  %1969 = fcmp fast ogt float %1967, 0.000000e+00
  %1970 = and i1 %1968, %1969
  %1971 = and i32 %894, 64
  %1972 = icmp ne i32 %1971, 0
  %1973 = and i1 %1972, %1970
  br i1 %1973, label %1974, label %2083

; <label>:1974                                    ; preds = %1953
  %1975 = add i32 %1061, 0
  %1976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1975, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1977 = add i32 %1064, 0
  %1978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1977, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1979 = fsub fast float %638, %1031
  %1980 = add i32 %1061, 0
  %1981 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1980, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1982 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1981, i32 0)  ; GetDimensions(handle,mipLevel)
  %1983 = extractvalue %dx.types.Dimensions %1982, 0
  %1984 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1983)  ; FirstbitLo(value)
  %1985 = uitofp i32 %1984 to float
  %1986 = fadd fast float %1985, %1979
  %1987 = add i32 %1064, 0
  %1988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1987, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1989 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1988, i32 0)  ; GetDimensions(handle,mipLevel)
  %1990 = extractvalue %dx.types.Dimensions %1989, 0
  %1991 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1990)  ; FirstbitLo(value)
  %1992 = uitofp i32 %1991 to float
  %1993 = fadd fast float %1992, %1979
  %1994 = fmul fast float %1848, %1029
  %1995 = fmul fast float %1849, %1030
  %1996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1976, %dx.types.Handle %1802, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float %1986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = extractvalue %dx.types.ResRet.f32 %1996, 1
  %1999 = extractvalue %dx.types.ResRet.f32 %1996, 2
  %2000 = extractvalue %dx.types.ResRet.f32 %1996, 3
  %2001 = fmul fast float %1997, %1047
  %2002 = fadd fast float %2001, %1048
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = fadd fast float %1998, %2000
  %2005 = fmul fast float %2004, %1049
  %2006 = fsub fast float %2005, %1049
  %2007 = fsub fast float %1998, %2000
  %2008 = fmul fast float %2007, %1049
  %2009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1978, %dx.types.Handle %1802, float %1994, float %1995, float undef, float undef, i32 0, i32 0, i32 undef, float %1986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = fmul fast float %1850, %1029
  %2012 = fmul fast float %1851, %1030
  %2013 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1976, %dx.types.Handle %1802, float %2011, float %2012, float undef, float undef, i32 0, i32 0, i32 undef, float %1986)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.ResRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.ResRet.f32 %2013, 2
  %2017 = extractvalue %dx.types.ResRet.f32 %2013, 3
  %2018 = fmul fast float %2014, %1047
  %2019 = fadd fast float %2018, %1048
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2021 = fadd fast float %2015, %2017
  %2022 = fsub fast float %2015, %2017
  %2023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1978, %dx.types.Handle %1802, float %2011, float %2012, float undef, float undef, i32 0, i32 0, i32 undef, float %1993)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = fsub fast float %2021, %2004
  %2026 = fsub fast float %2022, %2007
  %2027 = fmul fast float %1847, %1049
  %2028 = fmul fast float %2027, %2025
  %2029 = fmul fast float %2027, %2026
  %2030 = fadd fast float %2028, %2006
  %2031 = fmul fast float %1029, %2030
  %2032 = fadd fast float %2029, %2008
  %2033 = fmul fast float %1030, %2032
  %2034 = fsub fast float %2016, %1999
  %2035 = fmul fast float %2034, %1847
  %2036 = fsub fast float %2020, %2003
  %2037 = fmul fast float %2036, %1847
  %2038 = fsub fast float %2024, %2010
  %2039 = fmul fast float %2038, %1847
  %2040 = fsub fast float 1.000000e+00, %1961
  %2041 = bitcast float %1961 to i32
  %2042 = sitofp i32 %2041 to float
  %2043 = fadd fast float %2042, 0xC1CFBF8940000000
  %2044 = fmul fast float %2043, %970
  %2045 = fadd fast float %2044, 0x41CFBF8940000000
  %2046 = fptosi float %2045 to i32
  %2047 = bitcast i32 %2046 to float
  %2048 = bitcast float %2040 to i32
  %2049 = sitofp i32 %2048 to float
  %2050 = fadd fast float %2049, 0xC1CFBF8940000000
  %2051 = fmul fast float %2050, %970
  %2052 = fadd fast float %2051, 0x41CFBF8940000000
  %2053 = fptosi float %2052 to i32
  %2054 = bitcast i32 %2053 to float
  %2055 = fmul fast float %2047, %967
  %2056 = fmul fast float %2054, %967
  %2057 = fsub fast float %2040, %2055
  %2058 = fadd fast float %2056, %2040
  %2059 = call float @dx.op.unary.f32(i32 7, float %2057)  ; Saturate(value)
  %2060 = call float @dx.op.unary.f32(i32 7, float %2058)  ; Saturate(value)
  %2061 = fsub fast float %2010, %2059
  %2062 = fadd fast float %2061, %2039
  %2063 = fsub fast float %2060, %2059
  %2064 = bitcast float %2063 to i32
  %2065 = sub nsw i32 2129859010, %2064
  %2066 = bitcast i32 %2065 to float
  %2067 = fmul fast float %2066, %2062
  %2068 = call float @dx.op.unary.f32(i32 7, float %2067)  ; Saturate(value)
  %2069 = fmul fast float %1967, %964
  %2070 = fmul fast float %2069, %2068
  %2071 = fmul fast float %2031, %2070
  %2072 = fmul fast float %2033, %2070
  %2073 = fadd fast float %1999, -1.000000e+00
  %2074 = fadd fast float %2073, %2035
  %2075 = fmul fast float %2070, %2074
  %2076 = fadd fast float %2075, 1.000000e+00
  %2077 = fsub fast float %2003, %958
  %2078 = fadd fast float %2077, %2037
  %2079 = fmul fast float %2070, %2078
  %2080 = fadd fast float %2079, %958
  %2081 = fmul fast float %2070, %2040
  %2082 = fadd fast float %2081, %1961
  br label %2083

; <label>:2083                                    ; preds = %1974, %1953
  %2084 = phi float [ %2082, %1974 ], [ %1961, %1953 ]
  %2085 = phi float [ %2071, %1974 ], [ 0.000000e+00, %1953 ]
  %2086 = phi float [ %2072, %1974 ], [ 0.000000e+00, %1953 ]
  %2087 = phi float [ %2076, %1974 ], [ 1.000000e+00, %1953 ]
  %2088 = phi float [ %2080, %1974 ], [ %958, %1953 ]
  %2089 = fsub fast float %2085, %1756
  %2090 = fsub fast float %2086, %1757
  %2091 = fmul fast float %2089, %2084
  %2092 = fmul fast float %2090, %2084
  %2093 = fadd fast float %2091, %1756
  %2094 = fadd fast float %2092, %1757
  %2095 = fsub fast float %2087, %1758
  %2096 = fmul fast float %2095, %2084
  %2097 = fadd fast float %2096, %1758
  %2098 = fsub fast float %2088, %1759
  %2099 = fmul fast float %2098, %2084
  %2100 = fadd fast float %2099, %1759
  %2101 = fmul fast float %2084, %1396
  %2102 = call float @dx.op.binary.f32(i32 35, float %1755, float %2101)  ; FMax(a,b)
  br label %2103

; <label>:2103                                    ; preds = %2083, %1752
  %2104 = phi float [ %2102, %2083 ], [ %1755, %1752 ]
  %2105 = phi float [ %2093, %2083 ], [ %1756, %1752 ]
  %2106 = phi float [ %2094, %2083 ], [ %1757, %1752 ]
  %2107 = phi float [ %2097, %2083 ], [ %1758, %1752 ]
  %2108 = phi float [ %2100, %2083 ], [ %1759, %1752 ]
  %2109 = and i32 %894, 16
  %2110 = icmp eq i32 %2109, 0
  br i1 %2110, label %2111, label %2112

; <label>:2111                                    ; preds = %2103
  br label %2186

; <label>:2112                                    ; preds = %2103
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = fadd fast float %2114, %565
  %2117 = fadd fast float %2115, %566
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2121 = fsub fast float %2116, %2119
  %2122 = fsub fast float %2117, %2120
  %2123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %2124 = extractvalue %dx.types.CBufRet.f32 %2123, 2
  %2125 = fmul fast float %2121, %2124
  %2126 = fmul fast float %2122, %2124
  %2127 = fadd fast float %2125, 5.000000e-01
  %2128 = fadd fast float %2126, 5.000000e-01
  %2129 = fcmp fast olt float %2127, 0.000000e+00
  %2130 = fcmp fast olt float %2128, 0.000000e+00
  %2131 = or i1 %2129, %2130
  %2132 = fcmp fast oge float %2127, 1.000000e+00
  %2133 = fcmp fast oge float %2128, 1.000000e+00
  %2134 = or i1 %2132, %2133
  %2135 = or i1 %2131, %2134
  br i1 %2135, label %2169, label %2136

; <label>:2136                                    ; preds = %2112
  %2137 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2138 = fadd fast float %2137, %567
  %2139 = fmul fast float %2124, %2116
  %2140 = fmul fast float %2124, %2117
  %2141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %2142 = extractvalue %dx.types.CBufRet.f32 %2141, 2
  %2143 = fsub fast float %2138, %2142
  %2144 = extractvalue %dx.types.CBufRet.f32 %2141, 1
  %2145 = fmul fast float %2143, %2144
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = call float @dx.op.binary.f32(i32 36, float %2128, float %2146)  ; FMin(a,b)
  %2148 = call float @dx.op.binary.f32(i32 36, float %2127, float %2147)  ; FMin(a,b)
  %2149 = call float @dx.op.binary.f32(i32 35, float %2128, float %2146)  ; FMax(a,b)
  %2150 = call float @dx.op.binary.f32(i32 35, float %2127, float %2149)  ; FMax(a,b)
  %2151 = fsub fast float 1.000000e+00, %2150
  %2152 = call float @dx.op.binary.f32(i32 36, float %2148, float %2151)  ; FMin(a,b)
  %2153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %2154 = extractvalue %dx.types.CBufRet.f32 %2153, 3
  %2155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %2156 = extractvalue %dx.types.CBufRet.f32 %2155, 1
  %2157 = call float @dx.op.binary.f32(i32 35, float %2156, float %2154)  ; FMax(a,b)
  %2158 = fsub fast float %2157, %2156
  %2159 = fsub fast float %2152, %2156
  %2160 = fdiv fast float %2159, %2158
  %2161 = call float @dx.op.unary.f32(i32 7, float %2160)  ; Saturate(value)
  %2162 = fmul fast float %2161, 2.000000e+00
  %2163 = fsub fast float 3.000000e+00, %2162
  %2164 = fmul fast float %2161, %2161
  %2165 = fmul fast float %2164, %2163
  %2166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %64, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = fmul fast float %2165, %2167
  br label %2169

; <label>:2169                                    ; preds = %2136, %2112
  %2170 = phi float [ %2168, %2136 ], [ 0.000000e+00, %2112 ]
  %2171 = add i32 %1055, 0
  %2172 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2171, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2173 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2172, i32 0)  ; GetDimensions(handle,mipLevel)
  %2174 = extractvalue %dx.types.Dimensions %2173, 0
  %2175 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2174)  ; FirstbitLo(value)
  %2176 = uitofp i32 %2175 to float
  %2177 = fsub fast float %638, %1038
  %2178 = fadd fast float %2177, %2176
  %2179 = fmul fast float %1037, %628
  %2180 = fmul fast float %1037, %629
  %2181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1104, %dx.types.Handle %2181, float %2179, float %2180, float undef, float undef, i32 0, i32 0, i32 undef, float %2178)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2183 = extractvalue %dx.types.ResRet.f32 %2182, 0
  %2184 = fmul fast float %2183, %2170
  %2185 = call float @dx.op.binary.f32(i32 35, float %2104, float %2184)  ; FMax(a,b)
  br label %2186

; <label>:2186                                    ; preds = %2169, %2111
  %2187 = phi float [ %2185, %2169 ], [ %2104, %2111 ]
  %2188 = fmul fast float %629, 3.906250e-03
  %2189 = fmul fast float %628, 7.812500e-03
  %2190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2191 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %1104, %dx.types.Handle %2190, float %2189, float %2188, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %2192 = add i32 %1055, 0
  %2193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2194 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2193, i32 0)  ; GetDimensions(handle,mipLevel)
  %2195 = extractvalue %dx.types.Dimensions %2194, 0
  %2196 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2195)  ; FirstbitLo(value)
  %2197 = uitofp i32 %2196 to float
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %2201 = extractvalue %dx.types.CBufRet.f32 %2200, 2
  %2202 = fadd fast float %638, -7.000000e+00
  %2203 = fadd fast float %2202, %2197
  %2204 = fadd fast float %2203, %2199
  %2205 = fadd fast float %2204, %2201
  %2206 = call float @dx.op.binary.f32(i32 35, float %2205, float 0.000000e+00)  ; FMax(a,b)
  %2207 = and i32 %894, 8
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2225, label %2209

; <label>:2209                                    ; preds = %2186
  %2210 = fadd fast float %1034, 1.000000e+00
  %2211 = fmul fast float %1396, %2210
  %2212 = fsub fast float %2211, %1034
  %2213 = fsub fast float %2210, %2212
  %2214 = call float @dx.op.unary.f32(i32 7, float %2213)  ; Saturate(value)
  %2215 = fsub fast float 1.000000e+00, %2211
  %2216 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2217 = fsub fast float %2214, %2216
  %2218 = fsub fast float %2187, %2216
  %2219 = fdiv fast float %2218, %2217
  %2220 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2221 = fmul fast float %2220, 2.000000e+00
  %2222 = fsub fast float 3.000000e+00, %2221
  %2223 = fmul fast float %2220, %2220
  %2224 = fmul fast float %2223, %2222
  br label %2225

; <label>:2225                                    ; preds = %2209, %2186
  %2226 = phi float [ %2224, %2209 ], [ %2187, %2186 ]
  %2227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %2228 = extractvalue %dx.types.CBufRet.f32 %2227, 3
  %2229 = fmul fast float %2228, %2226
  %2230 = fmul fast float %2229, %888
  %2231 = fadd fast float %2230, %847
  %2232 = call float @dx.op.unary.f32(i32 7, float %2231)  ; Saturate(value)
  %2233 = and i32 %894, 32
  %2234 = icmp eq i32 %2233, 0
  br i1 %2234, label %2251, label %2235

; <label>:2235                                    ; preds = %2225
  %2236 = add i32 %1058, 0
  %2237 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2236, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2237, %dx.types.Handle %65, float %2229, float %961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2239 = extractvalue %dx.types.ResRet.f32 %2238, 0
  %2240 = extractvalue %dx.types.ResRet.f32 %2238, 1
  %2241 = extractvalue %dx.types.ResRet.f32 %2238, 2
  %2242 = extractvalue %dx.types.ResRet.f32 %2238, 3
  %2243 = and i32 %1052, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = lshr i32 %1052, 8
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2242, %2244
  %2249 = fadd fast float %2248, %2247
  %2250 = fmul fast float %2249, 0x3F70101000000000
  br label %2251

; <label>:2251                                    ; preds = %2235, %2225
  %2252 = phi float [ %2239, %2235 ], [ %952, %2225 ]
  %2253 = phi float [ %2240, %2235 ], [ %953, %2225 ]
  %2254 = phi float [ %2241, %2235 ], [ %954, %2225 ]
  %2255 = phi float [ %2250, %2235 ], [ %955, %2225 ]
  %2256 = fsub fast float %2252, %906
  %2257 = fsub fast float %2253, %907
  %2258 = fsub fast float %2254, %908
  %2259 = fmul fast float %2256, %2229
  %2260 = fmul fast float %2257, %2229
  %2261 = fmul fast float %2258, %2229
  %2262 = fadd fast float %2259, %906
  %2263 = fadd fast float %2260, %907
  %2264 = fadd fast float %2261, %908
  %2265 = fsub fast float %2255, %909
  %2266 = fmul fast float %2265, %2229
  %2267 = fadd fast float %2266, %909
  %2268 = fsub fast float %2108, %912
  %2269 = fmul fast float %2229, %2268
  %2270 = fadd fast float %2269, %912
  %2271 = fadd fast float %2107, -1.000000e+00
  %2272 = fmul fast float %2229, %2271
  %2273 = fadd fast float %2272, 1.000000e+00
  %2274 = fmul fast float %2230, %2105
  %2275 = fmul fast float %2230, %2106
  %2276 = fadd fast float %2274, %1753
  %2277 = fadd fast float %2275, %1754
  %2278 = fmul fast float %915, %769
  %2279 = fadd fast float %2278, %916
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 2
  %2282 = fcmp fast oge float %2279, %2281
  %2283 = select i1 %2282, i32 512, i32 0
  %2284 = or i32 %1424, %844
  %2285 = or i32 %2284, %1430
  %2286 = or i32 %2285, %1773
  %2287 = or i32 %2286, %1406
  %2288 = or i32 %2287, %1422
  %2289 = or i32 %2288, %1408
  %2290 = or i32 %2289, %1428
  %2291 = or i32 %2290, %1777
  %2292 = or i32 %2291, %2283
  %2293 = and i32 %831, 65535
  %2294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2293)  ; LegacyF16ToF32(value)
  %2295 = lshr i32 %831, 16
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = and i32 %832, 65535
  %2298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2297)  ; LegacyF16ToF32(value)
  %2299 = lshr i32 %832, 16
  %2300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2299)  ; LegacyF16ToF32(value)
  %2301 = fmul fast float %2262, %888
  %2302 = fmul fast float %2263, %888
  %2303 = fmul fast float %2264, %888
  %2304 = fmul fast float %2267, %888
  %2305 = fadd fast float %2294, %2301
  %2306 = fadd fast float %2296, %2302
  %2307 = fadd fast float %2298, %2303
  %2308 = fadd fast float %2300, %2304
  %2309 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2305)  ; LegacyF32ToF16(value)
  %2310 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2306)  ; LegacyF32ToF16(value)
  %2311 = shl i32 %2310, 16
  %2312 = or i32 %2311, %2309
  %2313 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2307)  ; LegacyF32ToF16(value)
  %2314 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2308)  ; LegacyF32ToF16(value)
  %2315 = shl i32 %2314, 16
  %2316 = or i32 %2315, %2313
  %2317 = and i32 %852, 65535
  %2318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2317)  ; LegacyF16ToF32(value)
  %2319 = lshr i32 %852, 16
  %2320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2319)  ; LegacyF16ToF32(value)
  %2321 = fmul fast float %2273, %888
  %2322 = fmul fast float %2270, %888
  %2323 = fadd fast float %2318, %2321
  %2324 = fadd fast float %2320, %2322
  %2325 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2323)  ; LegacyF32ToF16(value)
  %2326 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2324)  ; LegacyF32ToF16(value)
  %2327 = shl i32 %2326, 16
  %2328 = or i32 %2327, %2325
  %2329 = fcmp fast ogt float %2279, 0.000000e+00
  %2330 = select i1 %2329, float 1.000000e+00, float 0.000000e+00
  %2331 = and i32 %851, 65535
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = lshr i32 %851, 16
  %2334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2333)  ; LegacyF16ToF32(value)
  %2335 = fmul fast float %2279, %888
  %2336 = fmul fast float %2330, %888
  %2337 = fadd fast float %2332, %2335
  %2338 = fadd fast float %2334, %2336
  %2339 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2340 = call float @dx.op.unary.f32(i32 7, float %2338)  ; Saturate(value)
  %2341 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2339)  ; LegacyF32ToF16(value)
  %2342 = call i32 @dx.op.legacyF32ToF16(i32 130, float %2340)  ; LegacyF32ToF16(value)
  %2343 = shl i32 %2342, 16
  %2344 = or i32 %2343, %2341
  br label %2345

; <label>:2345                                    ; preds = %2251, %829
  %2346 = phi i32 [ %1084, %2251 ], [ %830, %829 ]
  %2347 = phi i32 [ %2312, %2251 ], [ %831, %829 ]
  %2348 = phi i32 [ %2316, %2251 ], [ %832, %829 ]
  %2349 = phi float [ %2276, %2251 ], [ %833, %829 ]
  %2350 = phi float [ %2277, %2251 ], [ %834, %829 ]
  %2351 = phi float [ %1398, %2251 ], [ %835, %829 ]
  %2352 = phi float [ %1399, %2251 ], [ %836, %829 ]
  %2353 = phi float [ %1400, %2251 ], [ %837, %829 ]
  %2354 = phi float [ %1101, %2251 ], [ %838, %829 ]
  %2355 = phi float [ %1402, %2251 ], [ %839, %829 ]
  %2356 = phi float [ %1404, %2251 ], [ %840, %829 ]
  %2357 = phi i32 [ %891, %2251 ], [ %841, %829 ]
  %2358 = phi float [ %1420, %2251 ], [ %842, %829 ]
  %2359 = phi float [ %1771, %2251 ], [ %843, %829 ]
  %2360 = phi i32 [ %2292, %2251 ], [ %844, %829 ]
  %2361 = phi float [ %2191, %2251 ], [ %845, %829 ]
  %2362 = phi float [ %2206, %2251 ], [ %846, %829 ]
  %2363 = phi float [ %2232, %2251 ], [ %847, %829 ]
  %2364 = phi i32 [ %1086, %2251 ], [ %848, %829 ]
  %2365 = phi float [ %1087, %2251 ], [ %849, %829 ]
  %2366 = phi i32 [ %2344, %2251 ], [ %851, %829 ]
  %2367 = phi i32 [ %2328, %2251 ], [ %852, %829 ]
  %2368 = icmp eq i32 %857, 0
  br i1 %2368, label %2369, label %829

; <label>:2369                                    ; preds = %2345
  br label %2370

; <label>:2370                                    ; preds = %2369, %824
  %2371 = phi i32 [ %596, %824 ], [ %2346, %2369 ]
  %2372 = phi i32 [ %573, %824 ], [ %2347, %2369 ]
  %2373 = phi i32 [ %573, %824 ], [ %2348, %2369 ]
  %2374 = phi float [ 0.000000e+00, %824 ], [ %2349, %2369 ]
  %2375 = phi float [ 0.000000e+00, %824 ], [ %2350, %2369 ]
  %2376 = phi float [ 0.000000e+00, %824 ], [ %2351, %2369 ]
  %2377 = phi float [ 0.000000e+00, %824 ], [ %2352, %2369 ]
  %2378 = phi float [ 0.000000e+00, %824 ], [ %2353, %2369 ]
  %2379 = phi float [ 0.000000e+00, %824 ], [ %2354, %2369 ]
  %2380 = phi float [ 0.000000e+00, %824 ], [ %2355, %2369 ]
  %2381 = phi float [ 0.000000e+00, %824 ], [ %2356, %2369 ]
  %2382 = phi i32 [ 0, %824 ], [ %2357, %2369 ]
  %2383 = phi float [ 0.000000e+00, %824 ], [ %2358, %2369 ]
  %2384 = phi float [ 0.000000e+00, %824 ], [ %2359, %2369 ]
  %2385 = phi i32 [ 0, %824 ], [ %2360, %2369 ]
  %2386 = phi float [ 0.000000e+00, %824 ], [ %2361, %2369 ]
  %2387 = phi float [ 0.000000e+00, %824 ], [ %2362, %2369 ]
  %2388 = phi float [ 0.000000e+00, %824 ], [ %2363, %2369 ]
  %2389 = phi i32 [ -1, %824 ], [ %2364, %2369 ]
  %2390 = phi i32 [ %573, %824 ], [ %2366, %2369 ]
  %2391 = phi i32 [ %573, %824 ], [ %2367, %2369 ]
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = extractvalue %dx.types.CBufRet.f32 %2392, 1
  %2395 = extractvalue %dx.types.CBufRet.f32 %2392, 2
  %2396 = fadd fast float %2393, %565
  %2397 = fadd fast float %2394, %566
  %2398 = fadd fast float %2395, %567
  %2399 = call float @dx.op.unary.f32(i32 83, float %2396)  ; DerivCoarseX(value)
  %2400 = call float @dx.op.unary.f32(i32 83, float %2397)  ; DerivCoarseX(value)
  %2401 = call float @dx.op.unary.f32(i32 83, float %2398)  ; DerivCoarseX(value)
  %2402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2403 = extractvalue %dx.types.CBufRet.f32 %2402, 2
  %2404 = fmul fast float %2403, %2399
  %2405 = fmul fast float %2403, %2400
  %2406 = fmul fast float %2403, %2401
  %2407 = call float @dx.op.unary.f32(i32 84, float %2396)  ; DerivCoarseY(value)
  %2408 = call float @dx.op.unary.f32(i32 84, float %2397)  ; DerivCoarseY(value)
  %2409 = call float @dx.op.unary.f32(i32 84, float %2398)  ; DerivCoarseY(value)
  %2410 = fmul fast float %2403, %2407
  %2411 = fmul fast float %2403, %2408
  %2412 = fmul fast float %2403, %2409
  %2413 = fmul fast float %2412, %2405
  %2414 = fmul fast float %2411, %2406
  %2415 = fsub fast float %2413, %2414
  %2416 = fmul fast float %2410, %2406
  %2417 = fmul fast float %2412, %2404
  %2418 = fsub fast float %2416, %2417
  %2419 = fmul fast float %2411, %2404
  %2420 = fmul fast float %2410, %2405
  %2421 = fsub fast float %2419, %2420
  %2422 = fmul fast float %2415, %2415
  %2423 = fmul fast float %2418, %2418
  %2424 = fadd fast float %2422, %2423
  %2425 = fmul fast float %2421, %2421
  %2426 = fadd fast float %2424, %2425
  %2427 = call float @dx.op.unary.f32(i32 24, float %2426)  ; Sqrt(value)
  %2428 = icmp eq i32 %2389, -1
  br i1 %2428, label %2523, label %2429

; <label>:2429                                    ; preds = %2370
  %2430 = mul i32 %2389, 928
  %2431 = add i32 %2430, 832
  %2432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.f32 %2432, 0
  %2434 = add i32 %2430, 836
  %2435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %2434, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = add i32 %2430, 920
  %2438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %2437, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = add i32 %2430, 924
  %2441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.f32 %2441, 0
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = fmul fast float %2444, %2436
  %2446 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2447 = fadd fast float %2445, %2446
  %2448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %2449 = extractvalue %dx.types.CBufRet.f32 %2448, 0
  %2450 = fadd fast float %2449, %2433
  %2451 = fcmp fast ogt float %2447, 0.000000e+00
  %2452 = fcmp fast ogt float %2388, %2450
  %2453 = and i1 %2451, %2452
  br i1 %2453, label %2454, label %2523

; <label>:2454                                    ; preds = %2429
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 3
  %2457 = fmul fast float %2396, 7.000000e+00
  %2458 = fadd fast float %2457, 9.175040e+05
  %2459 = fmul fast float %2397, 9.000000e+00
  %2460 = fadd fast float %2459, 1.179648e+06
  %2461 = fmul fast float %2456, 1.370000e+02
  %2462 = bitcast float %2458 to i32
  %2463 = bitcast float %2460 to i32
  %2464 = bitcast float %2461 to i32
  %2465 = shl i32 %2463, 17
  %2466 = xor i32 %2465, %2462
  %2467 = xor i32 %2466, %2464
  %2468 = xor i32 %2467, 61
  %2469 = lshr i32 %2467, 16
  %2470 = xor i32 %2468, %2469
  %2471 = mul i32 %2470, 9
  %2472 = lshr i32 %2471, 4
  %2473 = xor i32 %2472, %2471
  %2474 = mul i32 %2473, 668265261
  %2475 = lshr i32 %2474, 15
  %2476 = xor i32 %2475, %2474
  %2477 = uitofp i32 %2476 to float
  %2478 = fmul fast float %2477, 0x3DF0000000000000
  %2479 = fmul fast float %2447, %2427
  %2480 = fcmp fast ugt float %2478, %2479
  br i1 %2480, label %2523, label %2481

; <label>:2481                                    ; preds = %2454
  %2482 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2483 = add i32 %2482, 6
  %2484 = icmp ugt i32 %2483, 4095
  br i1 %2484, label %2485, label %2488

; <label>:2485                                    ; preds = %2481
  %2486 = icmp ult i32 %2482, 4096
  br i1 %2486, label %2487, label %2488

; <label>:2487                                    ; preds = %2485
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2482, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2488

; <label>:2488                                    ; preds = %2487, %2485, %2481
  %2489 = phi i32 [ %2482, %2481 ], [ 0, %2487 ], [ 0, %2485 ]
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2523, label %2491

; <label>:2491                                    ; preds = %2488
  %2492 = fsub fast float %2398, %703
  %2493 = shl i32 %2389, 16
  %2494 = or i32 %2493, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2489, i32 0, i32 %2494, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2495 = bitcast float %2492 to i32
  %2496 = add i32 %2489, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2496, i32 0, i32 %2495, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2497 = bitcast float %2396 to i32
  %2498 = add i32 %2489, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2498, i32 0, i32 %2497, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2499 = bitcast float %2397 to i32
  %2500 = add i32 %2489, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2500, i32 0, i32 %2499, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2501 = bitcast float %2398 to i32
  %2502 = add i32 %2489, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2502, i32 0, i32 %2501, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %2503 = fadd fast float %529, 1.000000e+00
  %2504 = fadd fast float %531, 1.000000e+00
  %2505 = fadd fast float %533, 1.000000e+00
  %2506 = fmul fast float %2503, 5.000000e-01
  %2507 = fmul fast float %2504, 5.000000e-01
  %2508 = fmul fast float %2505, 5.000000e-01
  %2509 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2510 = call float @dx.op.unary.f32(i32 7, float %2507)  ; Saturate(value)
  %2511 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2512 = fmul fast float %2509, 1.023000e+03
  %2513 = fmul fast float %2510, 1.023000e+03
  %2514 = fmul fast float %2511, 1.023000e+03
  %2515 = fptoui float %2512 to i32
  %2516 = fptoui float %2513 to i32
  %2517 = fptoui float %2514 to i32
  %2518 = shl i32 %2516, 10
  %2519 = or i32 %2518, %2515
  %2520 = shl i32 %2517, 20
  %2521 = or i32 %2519, %2520
  %2522 = add i32 %2489, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %2522, i32 0, i32 %2521, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2523

; <label>:2523                                    ; preds = %2491, %2488, %2454, %2429, %2370
  %2524 = phi float [ %2439, %2491 ], [ %2439, %2488 ], [ %2439, %2454 ], [ %2439, %2429 ], [ 0.000000e+00, %2370 ]
  %2525 = phi float [ %2442, %2491 ], [ %2442, %2488 ], [ %2442, %2454 ], [ %2442, %2429 ], [ 0.000000e+00, %2370 ]
  %2526 = phi i32 [ 1, %2491 ], [ 1, %2488 ], [ 1, %2454 ], [ 0, %2429 ], [ 0, %2370 ]
  %2527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %2528 = extractvalue %dx.types.CBufRet.f32 %2527, 2
  %2529 = fmul fast float %2528, 0x3FE3C6EF40000000
  %2530 = frem fast float %93, 2.560000e+02
  %2531 = frem fast float %94, 2.560000e+02
  %2532 = fptoui float %2530 to i32
  %2533 = fptoui float %2531 to i32
  %2534 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %37, i32 0, i32 %2532, i32 %2533, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2535 = extractvalue %dx.types.ResRet.f32 %2534, 0
  %2536 = extractvalue %dx.types.ResRet.f32 %2534, 1
  %2537 = fadd fast float %2535, %2529
  %2538 = fadd fast float %2536, %2529
  %2539 = call float @dx.op.unary.f32(i32 22, float %2537)  ; Frc(value)
  %2540 = call float @dx.op.unary.f32(i32 22, float %2538)  ; Frc(value)
  %2541 = fcmp fast ogt float %533, 0.000000e+00
  %2542 = fcmp fast olt float %533, 0.000000e+00
  %2543 = zext i1 %2541 to i32
  %2544 = zext i1 %2542 to i32
  %2545 = sub nsw i32 %2543, %2544
  %2546 = sitofp i32 %2545 to float
  %2547 = fadd fast float %2546, %533
  %2548 = fdiv fast float -1.000000e+00, %2547
  %2549 = fmul fast float %529, %531
  %2550 = fmul fast float %2549, %2548
  %2551 = fmul fast float %529, %529
  %2552 = fmul fast float %2551, %2546
  %2553 = fmul fast float %2552, %2548
  %2554 = fadd fast float %2553, 1.000000e+00
  %2555 = fmul fast float %2550, %2546
  %2556 = fmul fast float %2546, %529
  %2557 = fsub fast float -0.000000e+00, %2556
  %2558 = fmul fast float %531, %531
  %2559 = fmul fast float %2558, %2548
  %2560 = fadd fast float %2559, %2546
  %2561 = fsub fast float -0.000000e+00, %531
  %2562 = and i32 %2372, 65535
  %2563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2562)  ; LegacyF16ToF32(value)
  %2564 = lshr i32 %2372, 16
  %2565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2564)  ; LegacyF16ToF32(value)
  %2566 = and i32 %2373, 65535
  %2567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2566)  ; LegacyF16ToF32(value)
  %2568 = lshr i32 %2373, 16
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = and i32 %2391, 65535
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = lshr i32 %2391, 16
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = call float @dx.op.unary.f32(i32 7, float %2573)  ; Saturate(value)
  %2575 = call float @dx.op.unary.f32(i32 83, float %565)  ; DerivCoarseX(value)
  %2576 = call float @dx.op.unary.f32(i32 83, float %566)  ; DerivCoarseX(value)
  %2577 = call float @dx.op.unary.f32(i32 83, float %567)  ; DerivCoarseX(value)
  %2578 = call float @dx.op.unary.f32(i32 84, float %565)  ; DerivCoarseY(value)
  %2579 = call float @dx.op.unary.f32(i32 84, float %566)  ; DerivCoarseY(value)
  %2580 = call float @dx.op.unary.f32(i32 84, float %567)  ; DerivCoarseY(value)
  %2581 = fadd fast float %2575, %565
  %2582 = fadd fast float %2576, %566
  %2583 = fadd fast float %2577, %567
  %2584 = fadd fast float %2578, %565
  %2585 = fadd fast float %2579, %566
  %2586 = fadd fast float %2580, %567
  %2587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.f32 %2587, 0
  %2589 = extractvalue %dx.types.CBufRet.f32 %2587, 1
  %2590 = extractvalue %dx.types.CBufRet.f32 %2587, 2
  %2591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2591, 2
  %2593 = extractvalue %dx.types.CBufRet.f32 %2591, 3
  %2594 = fmul fast float %2588, %93
  %2595 = fmul fast float %2594, %2592
  %2596 = fmul fast float %2589, %94
  %2597 = fmul fast float %2596, %2593
  %2598 = fptoui float %2595 to i32
  %2599 = fptoui float %2597 to i32
  %2600 = fadd fast float %2588, -1.000000e+00
  %2601 = fadd fast float %2589, -1.000000e+00
  %2602 = fptoui float %2600 to i32
  %2603 = fptoui float %2601 to i32
  %2604 = call i32 @dx.op.binary.i32(i32 40, i32 %2598, i32 %2602)  ; UMin(a,b)
  %2605 = call i32 @dx.op.binary.i32(i32 40, i32 %2599, i32 %2603)  ; UMin(a,b)
  %2606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2607 = extractvalue %dx.types.CBufRet.f32 %2606, 2
  %2608 = extractvalue %dx.types.CBufRet.f32 %2606, 3
  %2609 = fmul fast float %2607, %526
  %2610 = fsub fast float %2609, %2608
  %2611 = fadd fast float %2590, -1.000000e+00
  %2612 = call float @dx.op.binary.f32(i32 36, float %2610, float %2611)  ; FMin(a,b)
  %2613 = fptoui float %2612 to i32
  %2614 = fptoui float %2588 to i32
  %2615 = fptoui float %2589 to i32
  %2616 = mul i32 %2613, %2615
  %2617 = add i32 %2616, %2605
  %2618 = mul i32 %2617, %2614
  %2619 = add i32 %2618, %2604
  %2620 = shl i32 %2619, 2
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2620, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 1023
  %2624 = lshr i32 %2622, 10
  %2625 = icmp eq i32 %2623, 0
  br i1 %2625, label %3022, label %2626

; <label>:2626                                    ; preds = %2523
  %2627 = and i32 %2622, 1023
  br label %2628

; <label>:2628                                    ; preds = %2749, %2626
  %2629 = phi float [ %2750, %2749 ], [ 0.000000e+00, %2626 ]
  %2630 = phi float [ %2751, %2749 ], [ 0.000000e+00, %2626 ]
  %2631 = phi float [ %2752, %2749 ], [ 0.000000e+00, %2626 ]
  %2632 = phi float [ %2753, %2749 ], [ %2374, %2626 ]
  %2633 = phi float [ %2754, %2749 ], [ %2375, %2626 ]
  %2634 = phi float [ %2755, %2749 ], [ %2571, %2626 ]
  %2635 = phi float [ %2756, %2749 ], [ %2574, %2626 ]
  %2636 = phi float [ %2757, %2749 ], [ 0.000000e+00, %2626 ]
  %2637 = phi float [ %2758, %2749 ], [ %2569, %2626 ]
  %2638 = phi float [ %2759, %2749 ], [ %2563, %2626 ]
  %2639 = phi float [ %2760, %2749 ], [ %2565, %2626 ]
  %2640 = phi float [ %2761, %2749 ], [ %2567, %2626 ]
  %2641 = phi i32 [ %2762, %2749 ], [ 0, %2626 ]
  %2642 = phi i32 [ %2698, %2749 ], [ 0, %2626 ]
  %2643 = add nuw nsw i32 %2642, %2624
  %2644 = shl i32 %2643, 2
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = shl i32 %2646, 8
  %2648 = or i32 %2647, 48
  %2649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.ResRet.f32 %2649, 1
  %2652 = extractvalue %dx.types.ResRet.f32 %2649, 2
  %2653 = extractvalue %dx.types.ResRet.f32 %2649, 3
  %2654 = or i32 %2647, 64
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = extractvalue %dx.types.ResRet.i32 %2655, 1
  %2658 = or i32 %2647, 80
  %2659 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.f32 %2659, 2
  %2661 = extractvalue %dx.types.ResRet.f32 %2659, 3
  %2662 = or i32 %2647, 96
  %2663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.ResRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.ResRet.f32 %2663, 2
  %2667 = extractvalue %dx.types.ResRet.f32 %2663, 3
  %2668 = or i32 %2647, 112
  %2669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 2
  %2671 = or i32 %2647, 128
  %2672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2671, i32 undef)  ; BufferLoad(srv,index,wot)
  %2673 = extractvalue %dx.types.ResRet.f32 %2672, 0
  %2674 = extractvalue %dx.types.ResRet.f32 %2672, 1
  %2675 = extractvalue %dx.types.ResRet.f32 %2672, 2
  %2676 = extractvalue %dx.types.ResRet.f32 %2672, 3
  %2677 = or i32 %2647, 144
  %2678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2677, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.f32 %2678, 0
  %2680 = extractvalue %dx.types.ResRet.f32 %2678, 1
  %2681 = extractvalue %dx.types.ResRet.f32 %2678, 2
  %2682 = extractvalue %dx.types.ResRet.f32 %2678, 3
  %2683 = or i32 %2647, 160
  %2684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.f32 %2684, 0
  %2686 = extractvalue %dx.types.ResRet.f32 %2684, 1
  %2687 = extractvalue %dx.types.ResRet.f32 %2684, 2
  %2688 = or i32 %2647, 192
  %2689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %2688, i32 undef)  ; BufferLoad(srv,index,wot)
  %2690 = extractvalue %dx.types.ResRet.i32 %2689, 0
  %2691 = or i32 %2647, 208
  %2692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = or i32 %2647, 248
  %2695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2694, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.ResRet.f32 %2695, 1
  %2698 = add nuw nsw i32 %2642, 1
  %2699 = bitcast float %2653 to i32
  %2700 = and i32 %2699, 512
  %2701 = icmp ne i32 %2700, 0
  %2702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.ResRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.ResRet.f32 %2702, 2
  %2706 = extractvalue %dx.types.ResRet.f32 %2702, 3
  %2707 = call float @dx.op.dot4.f32(i32 56, float %2703, float %2704, float %2705, float %2706, float %565, float %566, float %567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2708 = or i32 %2647, 16
  %2709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2711 = extractvalue %dx.types.ResRet.f32 %2709, 1
  %2712 = extractvalue %dx.types.ResRet.f32 %2709, 2
  %2713 = extractvalue %dx.types.ResRet.f32 %2709, 3
  %2714 = call float @dx.op.dot4.f32(i32 56, float %2710, float %2711, float %2712, float %2713, float %565, float %566, float %567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2715 = or i32 %2647, 32
  %2716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.ResRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.ResRet.f32 %2716, 2
  %2720 = extractvalue %dx.types.ResRet.f32 %2716, 3
  %2721 = call float @dx.op.dot4.f32(i32 56, float %2717, float %2718, float %2719, float %2720, float %565, float %566, float %567, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2722 = call float @dx.op.unary.f32(i32 27, float %2707)  ; Round_ni(value)
  %2723 = call float @dx.op.unary.f32(i32 6, float %2722)  ; FAbs(value)
  %2724 = call float @dx.op.unary.f32(i32 27, float %2714)  ; Round_ni(value)
  %2725 = call float @dx.op.unary.f32(i32 6, float %2724)  ; FAbs(value)
  %2726 = call float @dx.op.unary.f32(i32 6, float %2721)  ; FAbs(value)
  %2727 = call float @dx.op.unary.f32(i32 27, float %2726)  ; Round_ni(value)
  %2728 = fadd fast float %2725, %2723
  %2729 = fadd fast float %2728, %2727
  %2730 = fcmp fast oeq float %2729, 0.000000e+00
  %2731 = call float @dx.op.dot4.f32(i32 56, float %2703, float %2704, float %2705, float %2706, float %2581, float %2582, float %2583, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2732 = call float @dx.op.dot4.f32(i32 56, float %2710, float %2711, float %2712, float %2713, float %2581, float %2582, float %2583, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2733 = call float @dx.op.dot4.f32(i32 56, float %2703, float %2704, float %2705, float %2706, float %2584, float %2585, float %2586, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2734 = call float @dx.op.dot4.f32(i32 56, float %2710, float %2711, float %2712, float %2713, float %2584, float %2585, float %2586, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2735 = fsub fast float %2731, %2707
  %2736 = fsub fast float %2733, %2707
  %2737 = fsub fast float %2732, %2714
  %2738 = fsub fast float %2734, %2714
  %2739 = call float @dx.op.dot3.f32(i32 55, float %2650, float %2651, float %2652, float %529, float %531, float %533)  ; Dot3(ax,ay,az,bx,by,bz)
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 2
  %2742 = call float @dx.op.unary.f32(i32 6, float %2739)  ; FAbs(value)
  %2743 = fadd fast float %2742, %2741
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  %2745 = extractvalue %dx.types.CBufRet.f32 %2740, 0
  %2746 = fcmp fast ogt float %2744, %2745
  %2747 = and i1 %2730, %2746
  %2748 = and i1 %2701, %2747
  br i1 %2748, label %2764, label %2749

; <label>:2749                                    ; preds = %3008, %2846, %2764, %2628
  %2750 = phi float [ %2629, %2764 ], [ %2629, %2846 ], [ %3018, %3008 ], [ %2629, %2628 ]
  %2751 = phi float [ %2630, %2764 ], [ %2630, %2846 ], [ %3019, %3008 ], [ %2630, %2628 ]
  %2752 = phi float [ %2631, %2764 ], [ %2631, %2846 ], [ %3020, %3008 ], [ %2631, %2628 ]
  %2753 = phi float [ %2632, %2764 ], [ %2632, %2846 ], [ %2982, %3008 ], [ %2632, %2628 ]
  %2754 = phi float [ %2633, %2764 ], [ %2633, %2846 ], [ %2983, %3008 ], [ %2633, %2628 ]
  %2755 = phi float [ %2634, %2764 ], [ %2634, %2846 ], [ %2977, %3008 ], [ %2634, %2628 ]
  %2756 = phi float [ %2635, %2764 ], [ %2635, %2846 ], [ %2974, %3008 ], [ %2635, %2628 ]
  %2757 = phi float [ %2636, %2764 ], [ %2636, %2846 ], [ %2971, %3008 ], [ %2636, %2628 ]
  %2758 = phi float [ %2637, %2764 ], [ %2637, %2846 ], [ %2969, %3008 ], [ %2637, %2628 ]
  %2759 = phi float [ %2638, %2764 ], [ %2638, %2846 ], [ %2964, %3008 ], [ %2638, %2628 ]
  %2760 = phi float [ %2639, %2764 ], [ %2639, %2846 ], [ %2965, %3008 ], [ %2639, %2628 ]
  %2761 = phi float [ %2640, %2764 ], [ %2640, %2846 ], [ %2966, %3008 ], [ %2640, %2628 ]
  %2762 = phi i32 [ %2772, %2764 ], [ %2772, %2846 ], [ %2772, %3008 ], [ %2641, %2628 ]
  %2763 = icmp eq i32 %2698, %2627
  br i1 %2763, label %3021, label %2628

; <label>:2764                                    ; preds = %2628
  %2765 = extractvalue %dx.types.ResRet.f32 %2669, 3
  %2766 = extractvalue %dx.types.ResRet.f32 %2669, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2768 = extractvalue %dx.types.ResRet.f32 %2659, 1
  %2769 = extractvalue %dx.types.ResRet.f32 %2659, 0
  %2770 = extractvalue %dx.types.ResRet.i32 %2655, 3
  %2771 = extractvalue %dx.types.ResRet.i32 %2655, 2
  %2772 = add i32 %2641, 1
  %2773 = add i32 %2770, 0
  %2774 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2773, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2775 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2776 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2774, %dx.types.Handle %2775, float %2707, float %2714, float undef, float undef, i32 0, i32 0, i32 undef, float %2735, float %2737, float undef, float %2736, float %2738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2778 = fmul fast float %2777, %2769
  %2779 = fadd fast float %2778, %2768
  %2780 = call float @dx.op.unary.f32(i32 7, float %2779)  ; Saturate(value)
  %2781 = fmul fast float %2707, %2664
  %2782 = call float @dx.op.tertiary.f32(i32 46, float %2665, float %2714, float %2781)  ; FMad(a,b,c)
  %2783 = fadd fast float %2782, %2767
  %2784 = fmul fast float %2707, %2666
  %2785 = call float @dx.op.tertiary.f32(i32 46, float %2667, float %2714, float %2784)  ; FMad(a,b,c)
  %2786 = fadd fast float %2785, %2766
  %2787 = fmul fast float %2735, %2664
  %2788 = call float @dx.op.tertiary.f32(i32 46, float %2665, float %2737, float %2787)  ; FMad(a,b,c)
  %2789 = fmul fast float %2735, %2666
  %2790 = call float @dx.op.tertiary.f32(i32 46, float %2667, float %2737, float %2789)  ; FMad(a,b,c)
  %2791 = fmul fast float %2736, %2664
  %2792 = call float @dx.op.tertiary.f32(i32 46, float %2665, float %2738, float %2791)  ; FMad(a,b,c)
  %2793 = fmul fast float %2736, %2666
  %2794 = call float @dx.op.tertiary.f32(i32 46, float %2667, float %2738, float %2793)  ; FMad(a,b,c)
  %2795 = add i32 %2771, 0
  %2796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2795, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2797 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2796, %dx.types.Handle %2775, float %2783, float %2786, float undef, float undef, i32 0, i32 0, i32 undef, float %2788, float %2790, float undef, float %2792, float %2794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  %2799 = and i32 %2699, 1024
  %2800 = icmp ne i32 %2799, 0
  %2801 = fcmp fast ogt float %2798, 0x3FE0101020000000
  %2802 = uitofp i1 %2801 to float
  %2803 = select i1 %2800, float %2802, float %2798
  %2804 = and i32 %2699, 8192
  %2805 = icmp ne i32 %2804, 0
  %2806 = select i1 %2805, float %2765, float 1.000000e+00
  %2807 = fmul fast float %2707, 2.000000e+00
  %2808 = fadd fast float %2807, -1.000000e+00
  %2809 = call float @dx.op.unary.f32(i32 6, float %2808)  ; FAbs(value)
  %2810 = fmul fast float %2809, %2696
  %2811 = fsub fast float %2810, %2696
  %2812 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2813 = fmul fast float %2714, 2.000000e+00
  %2814 = fadd fast float %2813, -1.000000e+00
  %2815 = call float @dx.op.unary.f32(i32 6, float %2814)  ; FAbs(value)
  %2816 = fmul fast float %2815, %2697
  %2817 = fsub fast float %2816, %2697
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = fmul fast float %2726, %2660
  %2820 = fsub fast float %2819, %2660
  %2821 = call float @dx.op.unary.f32(i32 7, float %2820)  ; Saturate(value)
  %2822 = fmul fast float %2780, %2806
  %2823 = fmul fast float %2822, %2777
  %2824 = fmul fast float %2823, %2812
  %2825 = fmul fast float %2824, %2803
  %2826 = fmul fast float %2825, %2818
  %2827 = fmul fast float %2826, %2821
  %2828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2829 = extractvalue %dx.types.CBufRet.f32 %2828, 1
  %2830 = extractvalue %dx.types.CBufRet.f32 %2828, 0
  %2831 = fsub fast float %2744, %2830
  %2832 = fmul fast float %2831, %2829
  %2833 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2834 = fmul fast float %2827, %2661
  %2835 = fadd fast float %2827, %2661
  %2836 = fmul fast float %2835, %2670
  %2837 = fsub fast float %2836, %2670
  %2838 = call float @dx.op.unary.f32(i32 7, float %2837)  ; Saturate(value)
  %2839 = and i32 %2699, 128
  %2840 = icmp ne i32 %2839, 0
  %2841 = select i1 %2840, float %2838, float %2834
  %2842 = fmul fast float %2841, %2833
  %2843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2844 = extractvalue %dx.types.CBufRet.f32 %2843, 0
  %2845 = fcmp fast ugt float %2842, %2844
  br i1 %2845, label %2846, label %2749

; <label>:2846                                    ; preds = %2764
  br i1 %2805, label %2749, label %2847

; <label>:2847                                    ; preds = %2846
  %2848 = and i32 %2699, 4
  %2849 = and i32 %2699, 8
  %2850 = add i32 %2656, 0
  %2851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2850, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2852 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2853 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2851, %dx.types.Handle %2852, float %2783, float %2786, float undef, float undef, i32 0, i32 0, i32 undef, float %2788, float %2790, float undef, float %2792, float %2794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2854 = extractvalue %dx.types.ResRet.f32 %2853, 0
  %2855 = extractvalue %dx.types.ResRet.f32 %2853, 1
  %2856 = extractvalue %dx.types.ResRet.f32 %2853, 2
  %2857 = extractvalue %dx.types.ResRet.f32 %2853, 3
  %2858 = bitcast float %2682 to i32
  %2859 = and i32 %2858, 255
  %2860 = uitofp i32 %2859 to float
  %2861 = lshr i32 %2858, 8
  %2862 = and i32 %2861, 255
  %2863 = uitofp i32 %2862 to float
  %2864 = fmul fast float %2857, %2860
  %2865 = fadd fast float %2864, %2863
  %2866 = fmul fast float %2865, 0x3F70101000000000
  %2867 = add i32 %2657, 0
  %2868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2867, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2869 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2868, %dx.types.Handle %2852, float %2783, float %2786, float undef, float undef, i32 0, i32 0, i32 undef, float %2788, float %2790, float undef, float %2792, float %2794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.ResRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.ResRet.f32 %2869, 2
  %2873 = extractvalue %dx.types.ResRet.f32 %2869, 3
  %2874 = bitcast float %2676 to i32
  %2875 = and i32 %2874, 255
  %2876 = uitofp i32 %2875 to float
  %2877 = lshr i32 %2874, 8
  %2878 = and i32 %2877, 255
  %2879 = uitofp i32 %2878 to float
  %2880 = lshr i32 %2874, 16
  %2881 = and i32 %2880, 255
  %2882 = uitofp i32 %2881 to float
  %2883 = fmul fast float %2882, 0x3F70101000000000
  %2884 = fmul fast float %2870, %2876
  %2885 = fadd fast float %2884, %2879
  %2886 = fmul fast float %2885, 0x3F70101000000000
  %2887 = fadd fast float %2871, -5.000000e-01
  %2888 = fadd fast float %2873, -5.000000e-01
  %2889 = fmul fast float %2887, %2883
  %2890 = fmul fast float %2888, %2883
  %2891 = fadd fast float %2889, 5.000000e-01
  %2892 = fadd fast float %2890, 5.000000e-01
  %2893 = fmul fast float %2854, %2685
  %2894 = fmul fast float %2855, %2686
  %2895 = fmul fast float %2856, %2687
  %2896 = fmul fast float %2891, 2.000000e+00
  %2897 = fadd fast float %2896, -1.000000e+00
  %2898 = fmul fast float %2892, 2.000000e+00
  %2899 = fadd fast float %2898, -1.000000e+00
  %2900 = fadd fast float %2897, %2899
  %2901 = fmul fast float %2900, 5.000000e-01
  %2902 = fsub fast float %2897, %2899
  %2903 = fmul fast float %2902, 5.000000e-01
  %2904 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2905 = fsub fast float 1.000000e+00, %2904
  %2906 = call float @dx.op.unary.f32(i32 6, float %2903)  ; FAbs(value)
  %2907 = fsub fast float %2905, %2906
  %2908 = call float @dx.op.dot3.f32(i32 55, float %2901, float %2903, float %2907, float %2901, float %2903, float %2907)  ; Dot3(ax,ay,az,bx,by,bz)
  %2909 = call float @dx.op.unary.f32(i32 25, float %2908)  ; Rsqrt(value)
  %2910 = fmul fast float %2901, %2909
  %2911 = fmul fast float %2903, %2909
  %2912 = fmul fast float %2909, %2907
  %2913 = fmul fast float %2912, %2650
  %2914 = fmul fast float %2912, %2651
  %2915 = fmul fast float %2912, %2652
  %2916 = fmul fast float %2910, %2673
  %2917 = fmul fast float %2910, %2674
  %2918 = fmul fast float %2910, %2675
  %2919 = fadd fast float %2916, %2913
  %2920 = fadd fast float %2917, %2914
  %2921 = fadd fast float %2918, %2915
  %2922 = fmul fast float %2911, %2679
  %2923 = fmul fast float %2911, %2680
  %2924 = fmul fast float %2911, %2681
  %2925 = fadd fast float %2919, %2922
  %2926 = fadd fast float %2920, %2923
  %2927 = fadd fast float %2921, %2924
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2925, float %2926, float %2927, float %2925, float %2926, float %2927)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = call float @dx.op.unary.f32(i32 25, float %2928)  ; Rsqrt(value)
  %2930 = fmul fast float %2925, %2929
  %2931 = fmul fast float %2926, %2929
  %2932 = fmul fast float %2927, %2929
  %2933 = fcmp fast ogt float %2739, %2745
  %2934 = fsub fast float -0.000000e+00, %2930
  %2935 = fsub fast float -0.000000e+00, %2931
  %2936 = fsub fast float -0.000000e+00, %2932
  %2937 = select i1 %2933, float %2930, float %2934
  %2938 = select i1 %2933, float %2931, float %2935
  %2939 = select i1 %2933, float %2932, float %2936
  %2940 = fmul fast float %2937, %2554
  %2941 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2555, float %2940)  ; FMad(a,b,c)
  %2942 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2557, float %2941)  ; FMad(a,b,c)
  %2943 = fmul fast float %2937, %2550
  %2944 = call float @dx.op.tertiary.f32(i32 46, float %2938, float %2560, float %2943)  ; FMad(a,b,c)
  %2945 = call float @dx.op.tertiary.f32(i32 46, float %2939, float %2561, float %2944)  ; FMad(a,b,c)
  %2946 = icmp ne i32 %2849, 0
  %2947 = select i1 %2946, float 1.000000e+00, float 0.000000e+00
  %2948 = fmul fast float %2842, %2947
  %2949 = and i32 %2699, 1
  %2950 = icmp ne i32 %2949, 0
  %2951 = fadd fast float %2942, %2632
  %2952 = fadd fast float %2945, %2633
  %2953 = select i1 %2950, float %2951, float %2942
  %2954 = select i1 %2950, float %2952, float %2945
  %2955 = icmp ne i32 %2848, 0
  %2956 = select i1 %2955, float 1.000000e+00, float 0.000000e+00
  %2957 = fmul fast float %2842, %2956
  %2958 = fsub fast float %2893, %2638
  %2959 = fsub fast float %2894, %2639
  %2960 = fsub fast float %2895, %2640
  %2961 = fmul fast float %2958, %2957
  %2962 = fmul fast float %2959, %2957
  %2963 = fmul fast float %2960, %2957
  %2964 = fadd fast float %2961, %2638
  %2965 = fadd fast float %2962, %2639
  %2966 = fadd fast float %2963, %2640
  %2967 = fsub fast float %2866, %2637
  %2968 = fmul fast float %2967, %2957
  %2969 = fadd fast float %2968, %2637
  %2970 = fadd fast float %2842, %2636
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fsub fast float %2886, %2635
  %2973 = fmul fast float %2972, %2948
  %2974 = fadd fast float %2973, %2635
  %2975 = fsub fast float %2872, %2634
  %2976 = fmul fast float %2975, %2948
  %2977 = fadd fast float %2976, %2634
  %2978 = fsub fast float %2953, %2632
  %2979 = fsub fast float %2954, %2633
  %2980 = fmul fast float %2978, %2948
  %2981 = fmul fast float %2979, %2948
  %2982 = fadd fast float %2980, %2632
  %2983 = fadd fast float %2981, %2633
  %2984 = and i32 %2699, 16
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %3008, label %2986

; <label>:2986                                    ; preds = %2847
  %2987 = bitcast float %2693 to i32
  %2988 = add i32 %2690, 0
  %2989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2989, %dx.types.Handle %2852, float %2783, float %2786, float undef, float undef, i32 0, i32 0, i32 undef, float %2788, float %2790, float undef, float %2792, float %2794, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2991 = extractvalue %dx.types.ResRet.f32 %2990, 0
  %2992 = extractvalue %dx.types.ResRet.f32 %2990, 1
  %2993 = extractvalue %dx.types.ResRet.f32 %2990, 2
  %2994 = and i32 %2987, 65535
  %2995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2994)  ; LegacyF16ToF32(value)
  %2996 = fmul fast float %2991, %2685
  %2997 = fmul fast float %2992, %2686
  %2998 = fmul fast float %2993, %2687
  %2999 = and i32 %2699, 16384
  %3000 = icmp ne i32 %2999, 0
  %3001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3002 = extractvalue %dx.types.CBufRet.f32 %3001, 0
  %3003 = select i1 %3000, float %3002, float 1.000000e+00
  %3004 = fmul fast float %3003, %2995
  %3005 = fmul fast float %2996, %3004
  %3006 = fmul fast float %2997, %3004
  %3007 = fmul fast float %2998, %3004
  br label %3008

; <label>:3008                                    ; preds = %2986, %2847
  %3009 = phi float [ %3005, %2986 ], [ 0.000000e+00, %2847 ]
  %3010 = phi float [ %3006, %2986 ], [ 0.000000e+00, %2847 ]
  %3011 = phi float [ %3007, %2986 ], [ 0.000000e+00, %2847 ]
  %3012 = fsub fast float %3009, %2629
  %3013 = fsub fast float %3010, %2630
  %3014 = fsub fast float %3011, %2631
  %3015 = fmul fast float %3012, %2842
  %3016 = fmul fast float %3013, %2842
  %3017 = fmul fast float %3014, %2842
  %3018 = fadd fast float %3015, %2629
  %3019 = fadd fast float %3016, %2630
  %3020 = fadd fast float %3017, %2631
  br label %2749

; <label>:3021                                    ; preds = %2749
  br label %3022

; <label>:3022                                    ; preds = %3021, %2523
  %3023 = phi float [ 0.000000e+00, %2523 ], [ %2750, %3021 ]
  %3024 = phi float [ 0.000000e+00, %2523 ], [ %2751, %3021 ]
  %3025 = phi float [ 0.000000e+00, %2523 ], [ %2752, %3021 ]
  %3026 = phi float [ %2374, %2523 ], [ %2753, %3021 ]
  %3027 = phi float [ %2375, %2523 ], [ %2754, %3021 ]
  %3028 = phi float [ %2571, %2523 ], [ %2755, %3021 ]
  %3029 = phi float [ %2574, %2523 ], [ %2756, %3021 ]
  %3030 = phi float [ 0.000000e+00, %2523 ], [ %2757, %3021 ]
  %3031 = phi float [ %2569, %2523 ], [ %2758, %3021 ]
  %3032 = phi float [ %2563, %2523 ], [ %2759, %3021 ]
  %3033 = phi float [ %2565, %2523 ], [ %2760, %3021 ]
  %3034 = phi float [ %2567, %2523 ], [ %2761, %3021 ]
  %3035 = phi i32 [ 0, %2523 ], [ %2762, %3021 ]
  %3036 = uitofp i32 %3035 to float
  %3037 = fptoui float %3036 to i32
  %3038 = shl i32 %3037, 16
  %3039 = and i32 %3038, 16711680
  %3040 = call float @dx.op.dot2.f32(i32 54, float %3026, float %3027, float %3026, float %3027)  ; Dot2(ax,ay,bx,by)
  %3041 = fmul fast float %3040, 0x3FE3333340000000
  %3042 = fsub fast float 1.000000e+00, %3041
  %3043 = call float @dx.op.dot3.f32(i32 55, float %3026, float %3027, float %3042, float %3026, float %3027, float %3042)  ; Dot3(ax,ay,az,bx,by,bz)
  %3044 = call float @dx.op.unary.f32(i32 25, float %3043)  ; Rsqrt(value)
  %3045 = fmul fast float %3044, %3026
  %3046 = fmul fast float %3044, %3027
  %3047 = fmul fast float %3042, %3044
  %3048 = fmul fast float %3047, %529
  %3049 = fmul fast float %3047, %531
  %3050 = fmul fast float %3047, %533
  %3051 = fmul fast float %3045, %2554
  %3052 = fmul fast float %3045, %2555
  %3053 = fmul fast float %3045, %2557
  %3054 = fadd fast float %3048, %3051
  %3055 = fadd fast float %3049, %3052
  %3056 = fadd fast float %3050, %3053
  %3057 = fmul fast float %3046, %2550
  %3058 = fmul fast float %3046, %2560
  %3059 = fmul fast float %3046, %2561
  %3060 = fadd fast float %3054, %3057
  %3061 = fadd fast float %3055, %3058
  %3062 = fadd fast float %3056, %3059
  %3063 = call float @dx.op.dot3.f32(i32 55, float %3060, float %3061, float %3062, float %3060, float %3061, float %3062)  ; Dot3(ax,ay,az,bx,by,bz)
  %3064 = call float @dx.op.unary.f32(i32 25, float %3063)  ; Rsqrt(value)
  %3065 = fmul fast float %3060, %3064
  %3066 = fmul fast float %3061, %3064
  %3067 = fmul fast float %3062, %3064
  %3068 = fadd fast float %3031, 0xBFB99999A0000000
  %3069 = call float @dx.op.unary.f32(i32 7, float %3068)  ; Saturate(value)
  %3070 = fmul fast float %3069, 0x3FF1C71C80000000
  %3071 = call float @dx.op.binary.f32(i32 36, float %3031, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3072 = fsub fast float 1.000000e+00, %3070
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3074 = fmul fast float %3073, %3032
  %3075 = fmul fast float %3073, %3033
  %3076 = fmul fast float %3073, %3034
  %3077 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  %3078 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3080 = fmul fast float %3070, %3032
  %3081 = fmul fast float %3070, %3033
  %3082 = fmul fast float %3070, %3034
  %3083 = fadd fast float %3080, %3071
  %3084 = fadd fast float %3081, %3071
  %3085 = fadd fast float %3082, %3071
  %3086 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3087 = call float @dx.op.unary.f32(i32 7, float %3084)  ; Saturate(value)
  %3088 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  %3089 = fmul fast float %3087, 0x401CF23780000000
  %3090 = fadd fast float %3089, 0x3FF32641C0000000
  %3091 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %565, float %566, float %567)  ; Dot3(ax,ay,az,bx,by,bz)
  %3092 = call float @dx.op.unary.f32(i32 25, float %3091)  ; Rsqrt(value)
  %3093 = fmul fast float %3092, %565
  %3094 = fmul fast float %3092, %566
  %3095 = fmul fast float %3092, %567
  %3096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %3097 = extractvalue %dx.types.CBufRet.f32 %3096, 0
  %3098 = fdiv fast float 1.000000e+00, %3090
  %3099 = select i1 %105, float %3098, float %3090
  %3100 = fadd fast float %3099, -1.000000e+00
  %3101 = fadd fast float %3099, 1.000000e+00
  %3102 = fdiv fast float %3100, %3101
  %3103 = fmul fast float %3102, %3102
  %3104 = call float @dx.op.dot3.f32(i32 55, float %3093, float %3094, float %3095, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %3105 = select i1 %105, float 0.000000e+00, float %3097
  %3106 = fadd fast float %3104, %3105
  %3107 = call float @dx.op.binary.f32(i32 35, float %3106, float -1.000000e+00)  ; FMax(a,b)
  %3108 = call float @dx.op.binary.f32(i32 36, float %3107, float 1.000000e+00)  ; FMin(a,b)
  %3109 = fmul fast float %3099, %3099
  %3110 = fmul fast float %3108, %3108
  %3111 = fsub fast float 1.000000e+00, %3110
  %3112 = fmul fast float %3109, %3111
  %3113 = fsub fast float 1.000000e+00, %3112
  %3114 = fcmp fast olt float %3099, 1.000000e+00
  %3115 = select i1 %3114, float %3110, float %3113
  %3116 = fcmp fast ogt float %3113, 0.000000e+00
  %3117 = fsub fast float 1.000000e+00, %3103
  %3118 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = call float @dx.op.unary.f32(i32 23, float %3119)  ; Log(value)
  %3121 = fmul fast float %3120, 5.000000e+00
  %3122 = call float @dx.op.unary.f32(i32 21, float %3121)  ; Exp(value)
  %3123 = fmul fast float %3122, %3117
  %3124 = fadd fast float %3123, %3103
  %3125 = select i1 %3116, float %3124, float 1.000000e+00
  %3126 = lshr i32 %2371, 24
  %3127 = uitofp i32 %3126 to float
  %3128 = fmul fast float %3127, 0x3F70101020000000
  %3129 = call float @dx.op.unary.f32(i32 7, float %3128)  ; Saturate(value)
  %3130 = fmul fast float %565, %565
  %3131 = fmul fast float %566, %566
  %3132 = fadd fast float %3131, %3130
  %3133 = fmul fast float %567, %567
  %3134 = fadd fast float %3132, %3133
  %3135 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %3137 = extractvalue %dx.types.CBufRet.f32 %3136, 0
  %3138 = fmul fast float %3137, %3135
  %3139 = extractvalue %dx.types.CBufRet.f32 %3136, 1
  %3140 = fadd fast float %3138, %3139
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3142 = fmul fast float %3129, 2.550000e+02
  %3143 = fmul fast float %3142, %3141
  %3144 = fptoui float %3143 to i32
  %3145 = fsub fast float -0.000000e+00, %3093
  %3146 = fsub fast float -0.000000e+00, %3094
  %3147 = fsub fast float -0.000000e+00, %3095
  %3148 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3145, float %3146, float %3147)  ; Dot3(ax,ay,az,bx,by,bz)
  %3149 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3150 = fsub fast float 1.000000e+00, %3086
  %3151 = fsub fast float 1.000000e+00, %3087
  %3152 = fsub fast float 1.000000e+00, %3088
  %3153 = fmul fast float %3125, %3150
  %3154 = fmul fast float %3125, %3151
  %3155 = fmul fast float %3125, %3152
  %3156 = fadd fast float %3153, %3086
  %3157 = fadd fast float %3154, %3087
  %3158 = fadd fast float %3155, %3088
  %3159 = and i32 %2390, 65535
  %3160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3159)  ; LegacyF16ToF32(value)
  %3161 = lshr i32 %2390, 16
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 1
  %3165 = fadd fast float %3164, %3160
  %3166 = call float @dx.op.unary.f32(i32 7, float %3165)  ; Saturate(value)
  %3167 = fcmp fast ogt float %3166, 0.000000e+00
  %3168 = call float @dx.op.unary.f32(i32 6, float %3149)  ; FAbs(value)
  %3169 = select i1 %3167, float %3168, float 0.000000e+00
  %3170 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3166, float %3169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.ResRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.ResRet.f32 %3170, 2
  %3174 = fadd fast float %3171, -5.000000e-01
  %3175 = fadd fast float %3172, -5.000000e-01
  %3176 = fadd fast float %3173, -5.000000e-01
  %3177 = fmul fast float %3086, 4.000000e+00
  %3178 = fmul fast float %3177, %3150
  %3179 = fmul fast float %3178, %3162
  %3180 = fmul fast float %3179, %3174
  %3181 = fmul fast float %3087, 4.000000e+00
  %3182 = fmul fast float %3181, %3151
  %3183 = fmul fast float %3182, %3162
  %3184 = fmul fast float %3183, %3175
  %3185 = fmul fast float %3088, 4.000000e+00
  %3186 = fmul fast float %3185, %3152
  %3187 = fmul fast float %3186, %3162
  %3188 = fmul fast float %3187, %3176
  %3189 = fadd fast float %3156, %3180
  %3190 = fadd fast float %3157, %3184
  %3191 = fadd fast float %3158, %3188
  %3192 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  %3193 = call float @dx.op.unary.f32(i32 7, float %3190)  ; Saturate(value)
  %3194 = call float @dx.op.unary.f32(i32 7, float %3191)  ; Saturate(value)
  %3195 = fptoui float %93 to i32
  %3196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3197 = extractvalue %dx.types.CBufRet.f32 %3196, 0
  %3198 = fmul fast float %3197, 5.000000e-01
  %3199 = fptoui float %3198 to i32
  %3200 = icmp eq i32 %3195, %3199
  %3201 = fptoui float %94 to i32
  %3202 = extractvalue %dx.types.CBufRet.f32 %3196, 1
  %3203 = fmul fast float %3202, 5.000000e-01
  %3204 = fptoui float %3203 to i32
  %3205 = icmp eq i32 %3201, %3204
  %3206 = and i1 %3200, %3205
  br i1 %3206, label %3207, label %3240

; <label>:3207                                    ; preds = %3022
  %3208 = call float @dx.op.binary.f32(i32 35, float %3193, float %3194)  ; FMax(a,b)
  %3209 = call float @dx.op.binary.f32(i32 35, float %3192, float %3208)  ; FMax(a,b)
  %3210 = fsub fast float 1.000000e+00, %3209
  %3211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3212 = extractvalue %dx.types.CBufRet.f32 %3211, 0
  %3213 = extractvalue %dx.types.CBufRet.f32 %3211, 1
  %3214 = extractvalue %dx.types.CBufRet.f32 %3211, 2
  %3215 = fadd fast float %3212, %565
  %3216 = fadd fast float %3213, %566
  %3217 = fadd fast float %3214, %567
  %3218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %47, i32 0, i32 %3195, i32 %3201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3219 = extractvalue %dx.types.ResRet.f32 %3218, 0
  %3220 = fcmp fast ogt float %3219, -1.000000e+00
  %3221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3222 = extractvalue %dx.types.CBufRet.f32 %3221, 1
  %3223 = select i1 %3220, float %3222, float 1.000000e+00
  %3224 = fadd fast float %3219, 1.000000e+00
  %3225 = fmul fast float %3223, %3224
  %3226 = call float @dx.op.unary.f32(i32 6, float %3225)  ; FAbs(value)
  %3227 = call float @dx.op.unary.f32(i32 83, float %519)  ; DerivCoarseX(value)
  %3228 = call float @dx.op.unary.f32(i32 83, float %520)  ; DerivCoarseX(value)
  %3229 = call float @dx.op.unary.f32(i32 84, float %519)  ; DerivCoarseY(value)
  %3230 = call float @dx.op.unary.f32(i32 84, float %520)  ; DerivCoarseY(value)
  %3231 = fadd fast float %3212, %269
  %3232 = fadd fast float %3213, %270
  %3233 = fadd fast float %3214, %271
  %3234 = fadd fast float %3212, %319
  %3235 = fadd fast float %3213, %320
  %3236 = fadd fast float %3214, %321
  %3237 = fadd fast float %3212, %369
  %3238 = fadd fast float %3213, %370
  %3239 = fadd fast float %3214, %371
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %3215, float %3216, float %3217, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %93, float %94, float 0.000000e+00, float %526, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %738, float %739, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %701, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %703, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %716, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %718, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %3226, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %3125, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %3192, float %3193, float %3194, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %3210, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %590, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %99, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %2383, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %2384, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %3227, float %3228, float %3229, float %3230, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 180, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 196, i32 %99, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 200, i32 %101, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 204, i32 %103, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 208, i32 %175, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 212, i32 %181, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 216, i32 %182, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 220, float %3231, float %3232, float %3233, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 232, float %3234, float %3235, float %3236, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 244, float %3237, float %3238, float %3239, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 256, float %472, float %476, float %480, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 268, float %502, float %503, float %504, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 280, float %511, float %512, float %513, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 292, float %521, float %522, float %523, float %524, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 308, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %3240

; <label>:3240                                    ; preds = %3207, %3022
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 3
  %3243 = fmul fast float %3242, %3029
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3245 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3246 = fsub fast float 1.000000e+00, %3030
  %3247 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3246)  ; FMin(a,b)
  %3248 = fmul fast float %519, 6.553500e+04
  %3249 = call float @dx.op.unary.f32(i32 26, float %3248)  ; Round_ne(value)
  %3250 = fptosi float %3249 to i32
  %3251 = call i32 @dx.op.binary.i32(i32 37, i32 %3250, i32 0)  ; IMax(a,b)
  %3252 = call i32 @dx.op.binary.i32(i32 38, i32 %3251, i32 65535)  ; IMin(a,b)
  %3253 = fmul fast float %520, 6.553500e+04
  %3254 = call float @dx.op.unary.f32(i32 26, float %3253)  ; Round_ne(value)
  %3255 = fptosi float %3254 to i32
  %3256 = call i32 @dx.op.binary.i32(i32 37, i32 %3255, i32 0)  ; IMax(a,b)
  %3257 = call i32 @dx.op.binary.i32(i32 38, i32 %3256, i32 65535)  ; IMin(a,b)
  %3258 = shl i32 %3257, 16
  %3259 = or i32 %3258, %3252
  %3260 = call float @dx.op.dot3.f32(i32 55, float %3086, float %3087, float %3088, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3261 = fsub fast float 1.000000e+00, %3260
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %60, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = lshr i32 %3263, 8
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = fmul fast float %3268, %3261
  %3270 = fadd fast float %3269, %3265
  %3271 = fmul fast float %3270, 0x3F70101020000000
  %3272 = call float @dx.op.unary.f32(i32 7, float %3271)  ; Saturate(value)
  %3273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3274 = extractvalue %dx.types.CBufRet.f32 %3273, 0
  %3275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3277 = extractvalue %dx.types.CBufRet.i32 %3276, 3
  %3278 = and i32 %3277, 3
  %3279 = icmp ne i32 %3278, 0
  %3280 = and i32 %3277, 4
  %3281 = icmp ne i32 %3280, 0
  %3282 = and i1 %3279, %3281
  br i1 %3282, label %3283, label %3294

; <label>:3283                                    ; preds = %3240
  %3284 = extractvalue %dx.types.CBufRet.f32 %3275, 3
  %3285 = fmul fast float %3284, %94
  %3286 = extractvalue %dx.types.CBufRet.f32 %3275, 2
  %3287 = fmul fast float %3286, %93
  %3288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %61, %dx.types.Handle %65, float %3287, float %3285, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3289 = extractvalue %dx.types.ResRet.f32 %3288, 0
  %3290 = fsub fast float 1.000000e+00, %3289
  %3291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %3292 = extractvalue %dx.types.CBufRet.f32 %3291, 0
  %3293 = fcmp fast olt float %3290, %3292
  br label %3297

; <label>:3294                                    ; preds = %3240
  %3295 = icmp eq i32 %3280, 0
  %3296 = and i1 %3279, %3295
  br label %3297

; <label>:3297                                    ; preds = %3294, %3283
  %3298 = phi i1 [ %3293, %3283 ], [ %3296, %3294 ]
  %3299 = fsub fast float -0.000000e+00, %567
  %3300 = select i1 %3298, float 0.000000e+00, float %3088
  %3301 = fmul fast float %3104, 2.000000e+00
  %3302 = fmul fast float %3301, %3065
  %3303 = fmul fast float %3301, %3066
  %3304 = fmul fast float %3301, %3067
  %3305 = fsub fast float %3093, %3302
  %3306 = fsub fast float %3094, %3303
  %3307 = fsub fast float %3095, %3304
  %3308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3309 = extractvalue %dx.types.CBufRet.f32 %3308, 0
  %3310 = bitcast float %3309 to i32
  %3311 = lshr i32 %3310, 8
  %3312 = and i32 %3311, 255
  %3313 = uitofp i32 %3312 to float
  %3314 = fptoui float %3313 to i32
  %3315 = and i32 %3314, 4
  %3316 = icmp ne i32 %3315, 0
  %3317 = select i1 %3316, float %3245, float 1.000000e+00
  %3318 = call float @dx.op.binary.f32(i32 36, float %3317, float 1.000000e+00)  ; FMin(a,b)
  %3319 = fsub fast float 1.000000e+00, %3318
  %3320 = bitcast float %3319 to i32
  %3321 = ashr i32 %3320, 1
  %3322 = add nsw i32 %3321, 532487669
  %3323 = bitcast i32 %3322 to float
  %3324 = fsub fast float 1.000000e+00, %3244
  %3325 = call float @dx.op.binary.f32(i32 35, float %3324, float 0x3F847AE140000000)  ; FMax(a,b)
  %3326 = fmul fast float %3325, %3325
  %3327 = fmul fast float %3326, %3326
  %3328 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %65, float %3323, float %3327, float %3328, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3330 = extractvalue %dx.types.ResRet.f32 %3329, 0
  %3331 = and i32 %3314, 1
  %3332 = icmp ne i32 %3331, 0
  %3333 = fsub fast float 1.000000e+00, %3317
  %3334 = bitcast float %3333 to i32
  %3335 = sub nsw i32 2129859010, %3334
  %3336 = bitcast i32 %3335 to float
  %3337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %3338 = extractvalue %dx.types.CBufRet.i32 %3337, 0
  %3339 = icmp eq i32 %3338, 1
  %3340 = select i1 %3339, float 0.000000e+00, float 1.000000e+00
  %3341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %3342 = extractvalue %dx.types.CBufRet.f32 %3341, 0
  %3343 = fcmp fast ogt float %3342, 0.000000e+00
  %3344 = fcmp fast ogt float %3340, 0.000000e+00
  %3345 = and i1 %3343, %3344
  br i1 %3345, label %3346, label %3530, !dx.controlflow.hints !126

; <label>:3346                                    ; preds = %3297
  %3347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3348 = extractvalue %dx.types.CBufRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.CBufRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.CBufRet.f32 %3347, 2
  %3351 = fadd fast float %3348, %565
  %3352 = fadd fast float %3349, %566
  %3353 = fadd fast float %3350, %567
  %3354 = fmul fast float %3065, 3.200000e+01
  %3355 = fmul fast float %3066, 3.200000e+01
  %3356 = fadd fast float %3351, %3354
  %3357 = fadd fast float %3352, %3355
  %3358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3359 = extractvalue %dx.types.CBufRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.CBufRet.f32 %3358, 1
  %3361 = fsub fast float %3356, %3359
  %3362 = fsub fast float %3357, %3360
  %3363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3364 = extractvalue %dx.types.CBufRet.f32 %3363, 0
  %3365 = extractvalue %dx.types.CBufRet.f32 %3363, 1
  %3366 = fmul fast float %3361, %3364
  %3367 = fmul fast float %3362, %3365
  %3368 = fmul fast float %565, %565
  %3369 = fmul fast float %566, %566
  %3370 = fadd fast float %3368, %3369
  %3371 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3373 = extractvalue %dx.types.CBufRet.f32 %3372, 0
  %3374 = extractvalue %dx.types.CBufRet.f32 %3372, 1
  %3375 = fsub fast float %3371, %3373
  %3376 = fdiv fast float %3375, %3374
  %3377 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3378 = fmul fast float %3377, 2.000000e+00
  %3379 = fsub fast float 3.000000e+00, %3378
  %3380 = fmul fast float %3377, %3377
  %3381 = fmul fast float %3380, %3379
  %3382 = fcmp fast oge float %3366, 0.000000e+00
  %3383 = fcmp fast ole float %3366, 1.000000e+00
  %3384 = and i1 %3383, %3382
  %3385 = fcmp fast oge float %3367, 0.000000e+00
  %3386 = and i1 %3385, %3384
  %3387 = fcmp fast ole float %3367, 1.000000e+00
  %3388 = and i1 %3387, %3386
  %3389 = fcmp fast ogt float %3381, 0.000000e+00
  %3390 = and i1 %3389, %3388
  br i1 %3390, label %3391, label %3514, !dx.controlflow.hints !127

; <label>:3391                                    ; preds = %3346
  %3392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3393 = extractvalue %dx.types.CBufRet.f32 %3392, 2
  %3394 = extractvalue %dx.types.CBufRet.f32 %3392, 3
  %3395 = fmul fast float %3393, %3366
  %3396 = fmul fast float %3394, %3367
  %3397 = call float @dx.op.unary.f32(i32 27, float %3395)  ; Round_ni(value)
  %3398 = call float @dx.op.unary.f32(i32 27, float %3396)  ; Round_ni(value)
  %3399 = fptosi float %3397 to i32
  %3400 = fptosi float %3398 to i32
  %3401 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %43, i32 0, i32 %3399, i32 %3400, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = lshr i32 %3402, 16
  %3404 = icmp eq i32 %3403, 65535
  br i1 %3404, label %3514, label %3405

; <label>:3405                                    ; preds = %3391
  %3406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3407 = extractvalue %dx.types.CBufRet.f32 %3406, 0
  %3408 = fmul fast float %3407, %3366
  %3409 = extractvalue %dx.types.CBufRet.f32 %3406, 1
  %3410 = fadd fast float %3408, %3409
  %3411 = extractvalue %dx.types.CBufRet.f32 %3406, 2
  %3412 = fmul fast float %3411, %3367
  %3413 = extractvalue %dx.types.CBufRet.f32 %3406, 3
  %3414 = fadd fast float %3412, %3413
  %3415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %65, float %3410, float %3414, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3416 = extractvalue %dx.types.ResRet.f32 %3415, 0
  %3417 = extractvalue %dx.types.ResRet.f32 %3415, 1
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 1
  %3420 = extractvalue %dx.types.CBufRet.f32 %3418, 0
  %3421 = fsub fast float %3419, %3420
  %3422 = fmul fast float %3421, %3416
  %3423 = fadd fast float %3422, %3420
  %3424 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3425 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3426 = fsub fast float %3424, %3425
  %3427 = fmul fast float %3426, %3417
  %3428 = fadd fast float %3427, %3425
  %3429 = fsub fast float %3353, %3423
  %3430 = fsub fast float %3428, %3423
  %3431 = fdiv fast float %3429, %3430
  %3432 = call float @dx.op.unary.f32(i32 7, float %3431)  ; Saturate(value)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3434 = extractvalue %dx.types.CBufRet.f32 %3392, 0
  %3435 = extractvalue %dx.types.CBufRet.f32 %3392, 1
  %3436 = fmul fast float %3434, %3366
  %3437 = fmul fast float %3435, %3367
  %3438 = fmul fast float %3436, 1.250000e-01
  %3439 = fmul fast float %3437, 1.250000e-01
  %3440 = call float @dx.op.unary.f32(i32 27, float %3438)  ; Round_ni(value)
  %3441 = call float @dx.op.unary.f32(i32 27, float %3439)  ; Round_ni(value)
  %3442 = fmul fast float %3440, 8.000000e+00
  %3443 = fmul fast float %3441, 8.000000e+00
  %3444 = fsub fast float %3436, %3442
  %3445 = fsub fast float %3437, %3443
  %3446 = fadd fast float %3444, 5.000000e-01
  %3447 = fadd fast float %3445, 5.000000e-01
  %3448 = and i32 %3403, 255
  %3449 = lshr i32 %3402, 24
  %3450 = mul nuw nsw i32 %3448, 9
  %3451 = uitofp i32 %3450 to float
  %3452 = mul nuw nsw i32 %3449, 9
  %3453 = uitofp i32 %3452 to float
  %3454 = fadd fast float %3446, %3451
  %3455 = fadd fast float %3447, %3453
  %3456 = fdiv fast float %3454, %3342
  %3457 = fdiv fast float %3455, %3433
  %3458 = fmul fast float %3432, 4.375000e-01
  %3459 = fadd fast float %3458, 3.125000e-02
  %3460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %65, float %3456, float %3457, float %3459, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3461 = extractvalue %dx.types.ResRet.f32 %3460, 0
  %3462 = extractvalue %dx.types.ResRet.f32 %3460, 1
  %3463 = extractvalue %dx.types.ResRet.f32 %3460, 2
  %3464 = fadd fast float %3458, 5.312500e-01
  %3465 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %65, float %3456, float %3457, float %3464, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3466 = extractvalue %dx.types.ResRet.f32 %3465, 0
  %3467 = extractvalue %dx.types.ResRet.f32 %3465, 1
  %3468 = extractvalue %dx.types.ResRet.f32 %3465, 2
  %3469 = fmul fast float %3466, 2.000000e+00
  %3470 = fmul fast float %3467, 2.000000e+00
  %3471 = fmul fast float %3468, 2.000000e+00
  %3472 = fadd fast float %3469, -1.000000e+00
  %3473 = fadd fast float %3470, -1.000000e+00
  %3474 = fadd fast float %3471, -1.000000e+00
  %3475 = fmul fast float %3472, %3472
  %3476 = fmul fast float %3473, %3473
  %3477 = fadd fast float %3475, %3476
  %3478 = fmul fast float %3474, %3474
  %3479 = fadd fast float %3477, %3478
  %3480 = call float @dx.op.unary.f32(i32 24, float %3479)  ; Sqrt(value)
  %3481 = fcmp fast ogt float %3480, 0.000000e+00
  br i1 %3481, label %3482, label %3486

; <label>:3482                                    ; preds = %3405
  %3483 = fdiv fast float %3472, %3480
  %3484 = fdiv fast float %3473, %3480
  %3485 = fdiv fast float %3474, %3480
  br label %3486

; <label>:3486                                    ; preds = %3482, %3405
  %3487 = phi float [ %3483, %3482 ], [ 0.000000e+00, %3405 ]
  %3488 = phi float [ %3484, %3482 ], [ 0.000000e+00, %3405 ]
  %3489 = phi float [ %3485, %3482 ], [ 0.000000e+00, %3405 ]
  %3490 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %3491 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3490)  ; FMax(a,b)
  %3492 = fmul fast float %3491, 0x400C5BF8A0000000
  %3493 = fmul fast float %3461, %3381
  %3494 = fmul fast float %3493, %3492
  %3495 = fmul fast float %3462, %3381
  %3496 = fmul fast float %3495, %3492
  %3497 = fmul fast float %3463, %3381
  %3498 = fmul fast float %3497, %3492
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3501 = fmul fast float %3494, %3500
  %3502 = fmul fast float %3496, %3500
  %3503 = fmul fast float %3498, %3500
  %3504 = fcmp fast ogt float %3353, %3428
  br i1 %3504, label %3505, label %3514

; <label>:3505                                    ; preds = %3486
  %3506 = fmul fast float %3430, 0x3FC24924A0000000
  %3507 = fsub fast float %3353, %3428
  %3508 = fdiv fast float %3507, %3506
  %3509 = call float @dx.op.unary.f32(i32 7, float %3508)  ; Saturate(value)
  %3510 = fsub fast float 1.000000e+00, %3509
  %3511 = fmul fast float %3510, %3501
  %3512 = fmul fast float %3510, %3502
  %3513 = fmul fast float %3510, %3503
  br label %3514

; <label>:3514                                    ; preds = %3505, %3486, %3391, %3346
  %3515 = phi float [ %3513, %3505 ], [ %3503, %3486 ], [ 0.000000e+00, %3391 ], [ 0.000000e+00, %3346 ]
  %3516 = phi float [ %3512, %3505 ], [ %3502, %3486 ], [ 0.000000e+00, %3391 ], [ 0.000000e+00, %3346 ]
  %3517 = phi float [ %3511, %3505 ], [ %3501, %3486 ], [ 0.000000e+00, %3391 ], [ 0.000000e+00, %3346 ]
  %3518 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3517)  ; FMax(a,b)
  %3519 = fmul fast float %3518, 0x3FD20DD760000000
  %3520 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3516)  ; FMax(a,b)
  %3521 = fmul fast float %3520, 0x3FD20DD760000000
  %3522 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3515)  ; FMax(a,b)
  %3523 = fmul fast float %3522, 0x3FD20DD760000000
  %3524 = call float @dx.op.binary.f32(i32 35, float %3519, float 0.000000e+00)  ; FMax(a,b)
  %3525 = call float @dx.op.binary.f32(i32 35, float %3521, float 0.000000e+00)  ; FMax(a,b)
  %3526 = call float @dx.op.binary.f32(i32 35, float %3523, float 0.000000e+00)  ; FMax(a,b)
  %3527 = fmul fast float %3524, %3340
  %3528 = fmul fast float %3525, %3340
  %3529 = fmul fast float %3526, %3340
  br label %3530

; <label>:3530                                    ; preds = %3514, %3297
  %3531 = phi float [ %3527, %3514 ], [ 0.000000e+00, %3297 ]
  %3532 = phi float [ %3528, %3514 ], [ 0.000000e+00, %3297 ]
  %3533 = phi float [ %3529, %3514 ], [ 0.000000e+00, %3297 ]
  br i1 %3339, label %3534, label %4326, !dx.controlflow.hints !128

; <label>:3534                                    ; preds = %3530
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.CBufRet.f32 %3535, 1
  %3538 = extractvalue %dx.types.CBufRet.f32 %3535, 2
  %3539 = fadd fast float %3536, %565
  %3540 = fadd fast float %3537, %566
  %3541 = fadd fast float %3538, %567
  %3542 = fmul fast float %3065, 3.200000e+01
  %3543 = fmul fast float %3066, 3.200000e+01
  %3544 = fadd fast float %3539, %3542
  %3545 = fadd fast float %3540, %3543
  %3546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3547 = extractvalue %dx.types.CBufRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.CBufRet.f32 %3546, 1
  %3549 = fsub fast float %3544, %3547
  %3550 = fsub fast float %3545, %3548
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 0
  %3553 = extractvalue %dx.types.CBufRet.f32 %3551, 1
  %3554 = fmul fast float %3549, %3552
  %3555 = fmul fast float %3550, %3553
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3558 = fmul fast float %3554, %3557
  %3559 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3560 = fadd fast float %3558, %3559
  %3561 = extractvalue %dx.types.CBufRet.f32 %3556, 2
  %3562 = fmul fast float %3561, %3555
  %3563 = extractvalue %dx.types.CBufRet.f32 %3556, 3
  %3564 = fadd fast float %3562, %3563
  %3565 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %65, float %3560, float %3564, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3566 = extractvalue %dx.types.ResRet.f32 %3565, 0
  %3567 = extractvalue %dx.types.ResRet.f32 %3565, 1
  %3568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3569 = extractvalue %dx.types.CBufRet.f32 %3568, 1
  %3570 = extractvalue %dx.types.CBufRet.f32 %3568, 0
  %3571 = fsub fast float %3569, %3570
  %3572 = fmul fast float %3571, %3566
  %3573 = fadd fast float %3572, %3570
  %3574 = extractvalue %dx.types.CBufRet.f32 %3568, 3
  %3575 = extractvalue %dx.types.CBufRet.f32 %3568, 2
  %3576 = fsub fast float %3574, %3575
  %3577 = fmul fast float %3576, %3567
  %3578 = fadd fast float %3577, %3575
  %3579 = fsub fast float %3541, %3573
  %3580 = fsub fast float %3578, %3573
  %3581 = fdiv fast float %3579, %3580
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3584 = extractvalue %dx.types.CBufRet.f32 %3583, 0
  %3585 = fmul fast float %3584, %3582
  %3586 = extractvalue %dx.types.CBufRet.f32 %3583, 1
  %3587 = fadd fast float %3585, %3586
  %3588 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %45, %dx.types.Handle %65, float %3560, float %3564, float %3587, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3593 = extractvalue %dx.types.CBufRet.f32 %3592, 0
  %3594 = extractvalue %dx.types.CBufRet.f32 %3592, 1
  %3595 = extractvalue %dx.types.CBufRet.f32 %3592, 2
  %3596 = fmul fast float %3593, %3589
  %3597 = fmul fast float %3594, %3590
  %3598 = fmul fast float %3595, %3591
  %3599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3600 = extractvalue %dx.types.CBufRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.CBufRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.CBufRet.f32 %3599, 2
  %3603 = fadd fast float %3596, %3600
  %3604 = fadd fast float %3597, %3601
  %3605 = fadd fast float %3598, %3602
  %3606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.f32 %3606, 0
  %3608 = fmul fast float %3607, %3554
  %3609 = extractvalue %dx.types.CBufRet.f32 %3606, 1
  %3610 = fadd fast float %3608, %3609
  %3611 = extractvalue %dx.types.CBufRet.f32 %3606, 2
  %3612 = fmul fast float %3611, %3555
  %3613 = extractvalue %dx.types.CBufRet.f32 %3606, 3
  %3614 = fadd fast float %3612, %3613
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.CBufRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.CBufRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3621 = extractvalue %dx.types.CBufRet.f32 %3620, 0
  %3622 = extractvalue %dx.types.CBufRet.f32 %3620, 1
  %3623 = extractvalue %dx.types.CBufRet.f32 %3620, 2
  %3624 = extractvalue %dx.types.CBufRet.f32 %3620, 3
  %3625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %65, float %3610, float %3614, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %65, float %3610, float %3614, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3631 = extractvalue %dx.types.ResRet.f32 %3630, 0
  %3632 = extractvalue %dx.types.ResRet.f32 %3630, 1
  %3633 = extractvalue %dx.types.ResRet.f32 %3630, 2
  %3634 = extractvalue %dx.types.ResRet.f32 %3630, 3
  %3635 = fmul fast float %3626, %3603
  %3636 = fmul fast float %3631, %3603
  %3637 = fmul fast float %3633, %3603
  %3638 = fmul fast float %3629, %3603
  %3639 = fadd fast float %3635, %3616
  %3640 = fadd fast float %3636, %3617
  %3641 = fadd fast float %3637, %3618
  %3642 = fadd fast float %3638, %3619
  %3643 = fmul fast float %3627, %3603
  %3644 = fmul fast float %3632, %3603
  %3645 = fadd fast float %3643, %3621
  %3646 = fadd fast float %3644, %3622
  %3647 = fmul fast float %3628, %3603
  %3648 = fmul fast float %3634, %3603
  %3649 = fadd fast float %3647, %3623
  %3650 = fadd fast float %3648, %3624
  %3651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %65, float %3610, float %3614, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3655 = extractvalue %dx.types.ResRet.f32 %3651, 3
  %3656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %65, float %3610, float %3614, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.ResRet.f32 %3656, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3656, 3
  %3661 = fmul fast float %3652, %3604
  %3662 = fmul fast float %3657, %3604
  %3663 = fmul fast float %3659, %3604
  %3664 = fmul fast float %3655, %3604
  %3665 = fadd fast float %3639, %3661
  %3666 = fadd fast float %3640, %3662
  %3667 = fadd fast float %3641, %3663
  %3668 = fadd fast float %3642, %3664
  %3669 = fmul fast float %3653, %3604
  %3670 = fmul fast float %3658, %3604
  %3671 = fadd fast float %3645, %3669
  %3672 = fadd fast float %3646, %3670
  %3673 = fmul fast float %3654, %3604
  %3674 = fmul fast float %3660, %3604
  %3675 = fadd fast float %3649, %3673
  %3676 = fadd fast float %3650, %3674
  %3677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %65, float %3610, float %3614, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %46, %dx.types.Handle %65, float %3610, float %3614, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = extractvalue %dx.types.ResRet.f32 %3682, 3
  %3687 = fmul fast float %3678, %3605
  %3688 = fmul fast float %3683, %3605
  %3689 = fmul fast float %3685, %3605
  %3690 = fmul fast float %3681, %3605
  %3691 = fadd fast float %3665, %3687
  %3692 = fadd fast float %3666, %3688
  %3693 = fadd fast float %3667, %3689
  %3694 = fadd fast float %3668, %3690
  %3695 = fmul fast float %3679, %3605
  %3696 = fmul fast float %3684, %3605
  %3697 = fadd fast float %3671, %3695
  %3698 = fadd fast float %3672, %3696
  %3699 = fmul fast float %3680, %3605
  %3700 = fmul fast float %3686, %3605
  %3701 = fadd fast float %3675, %3699
  %3702 = fadd fast float %3676, %3700
  %3703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3704 = extractvalue %dx.types.CBufRet.f32 %3703, 0
  %3705 = fsub fast float %3539, %3704
  %3706 = fsub fast float %3547, %3539
  %3707 = call float @dx.op.binary.f32(i32 35, float %3706, float %3705)  ; FMax(a,b)
  %3708 = extractvalue %dx.types.CBufRet.f32 %3703, 1
  %3709 = fsub fast float %3540, %3708
  %3710 = fsub fast float %3548, %3540
  %3711 = call float @dx.op.binary.f32(i32 35, float %3710, float %3709)  ; FMax(a,b)
  %3712 = call float @dx.op.binary.f32(i32 35, float %3707, float %3711)  ; FMax(a,b)
  %3713 = extractvalue %dx.types.CBufRet.f32 %3551, 3
  %3714 = fmul fast float %3713, %3712
  %3715 = call float @dx.op.unary.f32(i32 7, float %3714)  ; Saturate(value)
  %3716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3717 = extractvalue %dx.types.CBufRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.CBufRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.CBufRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.CBufRet.f32 %3716, 3
  %3721 = fsub fast float %3717, %3691
  %3722 = fsub fast float %3718, %3692
  %3723 = fsub fast float %3719, %3693
  %3724 = fsub fast float %3720, %3694
  %3725 = fmul fast float %3721, %3715
  %3726 = fmul fast float %3722, %3715
  %3727 = fmul fast float %3723, %3715
  %3728 = fmul fast float %3724, %3715
  %3729 = fadd fast float %3725, %3691
  %3730 = fadd fast float %3726, %3692
  %3731 = fadd fast float %3727, %3693
  %3732 = fadd fast float %3728, %3694
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3736 = fsub fast float %3734, %3697
  %3737 = fsub fast float %3735, %3698
  %3738 = fmul fast float %3736, %3715
  %3739 = fmul fast float %3737, %3715
  %3740 = fadd fast float %3738, %3697
  %3741 = fadd fast float %3739, %3698
  %3742 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3743 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3744 = fsub fast float %3742, %3701
  %3745 = fsub fast float %3743, %3702
  %3746 = fmul fast float %3744, %3715
  %3747 = fmul fast float %3745, %3715
  %3748 = fadd fast float %3746, %3701
  %3749 = fadd fast float %3747, %3702
  %3750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3751 = extractvalue %dx.types.CBufRet.f32 %3750, 0
  %3752 = fmul fast float %3751, %3729
  %3753 = fmul fast float %3751, %3730
  %3754 = fmul fast float %3751, %3731
  %3755 = fmul fast float %3751, %3732
  %3756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3757 = extractvalue %dx.types.CBufRet.f32 %3756, 0
  %3758 = fmul fast float %3757, %3740
  %3759 = fmul fast float %3757, %3741
  %3760 = fadd fast float %3758, %3752
  %3761 = fadd fast float %3759, %3754
  %3762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3763 = extractvalue %dx.types.CBufRet.f32 %3762, 0
  %3764 = fmul fast float %3763, %3748
  %3765 = fmul fast float %3763, %3749
  %3766 = fadd fast float %3760, %3764
  %3767 = fadd fast float %3761, %3765
  %3768 = extractvalue %dx.types.CBufRet.f32 %3750, 1
  %3769 = fmul fast float %3768, %3729
  %3770 = fmul fast float %3768, %3730
  %3771 = fmul fast float %3768, %3731
  %3772 = fmul fast float %3768, %3732
  %3773 = extractvalue %dx.types.CBufRet.f32 %3756, 1
  %3774 = fmul fast float %3773, %3740
  %3775 = fmul fast float %3773, %3741
  %3776 = fadd fast float %3774, %3769
  %3777 = fadd fast float %3775, %3771
  %3778 = extractvalue %dx.types.CBufRet.f32 %3762, 1
  %3779 = fmul fast float %3778, %3748
  %3780 = fmul fast float %3778, %3749
  %3781 = fadd fast float %3776, %3779
  %3782 = fadd fast float %3777, %3780
  %3783 = extractvalue %dx.types.CBufRet.f32 %3750, 2
  %3784 = fmul fast float %3783, %3729
  %3785 = fmul fast float %3783, %3730
  %3786 = fmul fast float %3783, %3731
  %3787 = fmul fast float %3783, %3732
  %3788 = extractvalue %dx.types.CBufRet.f32 %3756, 2
  %3789 = fmul fast float %3788, %3740
  %3790 = fmul fast float %3788, %3741
  %3791 = fadd fast float %3789, %3784
  %3792 = fadd fast float %3790, %3786
  %3793 = extractvalue %dx.types.CBufRet.f32 %3762, 2
  %3794 = fmul fast float %3793, %3748
  %3795 = fmul fast float %3793, %3749
  %3796 = fadd fast float %3791, %3794
  %3797 = fadd fast float %3792, %3795
  %3798 = fmul fast float %3785, %3785
  %3799 = fmul fast float %3797, %3797
  %3800 = fmul fast float %3787, %3787
  %3801 = fadd fast float %3800, %3798
  %3802 = fadd fast float %3801, %3799
  %3803 = call float @dx.op.unary.f32(i32 24, float %3802)  ; Sqrt(value)
  %3804 = fcmp fast ugt float %3803, 0.000000e+00
  br i1 %3804, label %3805, label %3820

; <label>:3805                                    ; preds = %3534
  %3806 = fsub fast float -0.000000e+00, %3787
  %3807 = fdiv fast float %3806, %3803
  %3808 = fsub fast float -0.000000e+00, %3785
  %3809 = fdiv fast float %3808, %3803
  %3810 = fdiv fast float %3797, %3803
  %3811 = fmul fast float %3796, 0x3FE279A760000000
  %3812 = fmul fast float %3809, %3785
  %3813 = fmul fast float %3810, %3797
  %3814 = fmul fast float %3807, %3787
  %3815 = fadd fast float %3812, %3814
  %3816 = fsub fast float %3815, %3813
  %3817 = call float @dx.op.unary.f32(i32 6, float %3816)  ; FAbs(value)
  %3818 = fadd fast float %3817, 0x3DDB7CDFE0000000
  %3819 = fdiv fast float %3811, %3818
  br label %3820

; <label>:3820                                    ; preds = %3805, %3534
  %3821 = phi float [ %3819, %3805 ], [ 1.000000e+00, %3534 ]
  %3822 = fmul fast float %3770, %3770
  %3823 = fmul fast float %3782, %3782
  %3824 = fmul fast float %3772, %3772
  %3825 = fadd fast float %3824, %3822
  %3826 = fadd fast float %3825, %3823
  %3827 = call float @dx.op.unary.f32(i32 24, float %3826)  ; Sqrt(value)
  %3828 = fcmp fast ugt float %3827, 0.000000e+00
  br i1 %3828, label %3829, label %3844

; <label>:3829                                    ; preds = %3820
  %3830 = fsub fast float -0.000000e+00, %3772
  %3831 = fdiv fast float %3830, %3827
  %3832 = fsub fast float -0.000000e+00, %3770
  %3833 = fdiv fast float %3832, %3827
  %3834 = fdiv fast float %3782, %3827
  %3835 = fmul fast float %3781, 0x3FE279A760000000
  %3836 = fmul fast float %3833, %3770
  %3837 = fmul fast float %3834, %3782
  %3838 = fmul fast float %3831, %3772
  %3839 = fadd fast float %3836, %3838
  %3840 = fsub fast float %3839, %3837
  %3841 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3842 = fadd fast float %3841, 0x3DDB7CDFE0000000
  %3843 = fdiv fast float %3835, %3842
  br label %3844

; <label>:3844                                    ; preds = %3829, %3820
  %3845 = phi float [ %3843, %3829 ], [ 1.000000e+00, %3820 ]
  %3846 = call float @dx.op.binary.f32(i32 36, float %3845, float %3821)  ; FMin(a,b)
  %3847 = fmul fast float %3753, %3753
  %3848 = fmul fast float %3767, %3767
  %3849 = fmul fast float %3755, %3755
  %3850 = fadd fast float %3849, %3847
  %3851 = fadd fast float %3850, %3848
  %3852 = call float @dx.op.unary.f32(i32 24, float %3851)  ; Sqrt(value)
  %3853 = fcmp fast ugt float %3852, 0.000000e+00
  br i1 %3853, label %3854, label %3869

; <label>:3854                                    ; preds = %3844
  %3855 = fsub fast float -0.000000e+00, %3755
  %3856 = fdiv fast float %3855, %3852
  %3857 = fsub fast float -0.000000e+00, %3753
  %3858 = fdiv fast float %3857, %3852
  %3859 = fdiv fast float %3767, %3852
  %3860 = fmul fast float %3766, 0x3FE279A760000000
  %3861 = fmul fast float %3858, %3753
  %3862 = fmul fast float %3859, %3767
  %3863 = fmul fast float %3856, %3755
  %3864 = fadd fast float %3861, %3863
  %3865 = fsub fast float %3864, %3862
  %3866 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3867 = fadd fast float %3866, 0x3DDB7CDFE0000000
  %3868 = fdiv fast float %3860, %3867
  br label %3869

; <label>:3869                                    ; preds = %3854, %3844
  %3870 = phi float [ %3868, %3854 ], [ 1.000000e+00, %3844 ]
  %3871 = call float @dx.op.binary.f32(i32 36, float %3870, float %3846)  ; FMin(a,b)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = fcmp fast olt float %3872, 1.000000e+00
  br i1 %3873, label %3874, label %3884

; <label>:3874                                    ; preds = %3869
  %3875 = fmul fast float %3872, %3753
  %3876 = fmul fast float %3872, %3767
  %3877 = fmul fast float %3872, %3755
  %3878 = fmul fast float %3872, %3770
  %3879 = fmul fast float %3872, %3782
  %3880 = fmul fast float %3872, %3772
  %3881 = fmul fast float %3872, %3785
  %3882 = fmul fast float %3872, %3797
  %3883 = fmul fast float %3872, %3787
  br label %3884

; <label>:3884                                    ; preds = %3874, %3869
  %3885 = phi float [ %3881, %3874 ], [ %3785, %3869 ]
  %3886 = phi float [ %3882, %3874 ], [ %3797, %3869 ]
  %3887 = phi float [ %3883, %3874 ], [ %3787, %3869 ]
  %3888 = phi float [ %3878, %3874 ], [ %3770, %3869 ]
  %3889 = phi float [ %3879, %3874 ], [ %3782, %3869 ]
  %3890 = phi float [ %3880, %3874 ], [ %3772, %3869 ]
  %3891 = phi float [ %3875, %3874 ], [ %3753, %3869 ]
  %3892 = phi float [ %3876, %3874 ], [ %3767, %3869 ]
  %3893 = phi float [ %3877, %3874 ], [ %3755, %3869 ]
  %3894 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3766)  ; FMax(a,b)
  %3895 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3781)  ; FMax(a,b)
  %3896 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3796)  ; FMax(a,b)
  %3897 = fcmp fast oge float %3554, 0.000000e+00
  %3898 = and i1 %3897, %3343
  %3899 = fcmp fast ole float %3554, 1.000000e+00
  %3900 = and i1 %3899, %3898
  %3901 = fcmp fast oge float %3555, 0.000000e+00
  %3902 = and i1 %3901, %3900
  %3903 = fcmp fast ole float %3555, 1.000000e+00
  %3904 = and i1 %3903, %3902
  br i1 %3904, label %3905, label %4045, !dx.controlflow.hints !129

; <label>:3905                                    ; preds = %3884
  %3906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3907 = extractvalue %dx.types.CBufRet.f32 %3906, 2
  %3908 = extractvalue %dx.types.CBufRet.f32 %3906, 3
  %3909 = fmul fast float %3907, %3554
  %3910 = fmul fast float %3908, %3555
  %3911 = call float @dx.op.unary.f32(i32 27, float %3909)  ; Round_ni(value)
  %3912 = call float @dx.op.unary.f32(i32 27, float %3910)  ; Round_ni(value)
  %3913 = fptosi float %3911 to i32
  %3914 = fptosi float %3912 to i32
  %3915 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %43, i32 0, i32 %3913, i32 %3914, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = and i32 %3916, 65535
  %3918 = lshr i32 %3916, 16
  %3919 = icmp eq i32 %3917, 65535
  br i1 %3919, label %3956, label %3920

; <label>:3920                                    ; preds = %3905
  %3921 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3923 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3924 = fmul fast float %3922, %3554
  %3925 = fmul fast float %3923, %3555
  %3926 = fmul fast float %3924, 1.250000e-01
  %3927 = fmul fast float %3925, 1.250000e-01
  %3928 = call float @dx.op.unary.f32(i32 27, float %3926)  ; Round_ni(value)
  %3929 = call float @dx.op.unary.f32(i32 27, float %3927)  ; Round_ni(value)
  %3930 = fmul fast float %3928, 8.000000e+00
  %3931 = fmul fast float %3929, 8.000000e+00
  %3932 = and i32 %3916, 255
  %3933 = lshr i32 %3916, 8
  %3934 = and i32 %3933, 255
  %3935 = mul nuw nsw i32 %3932, 9
  %3936 = uitofp i32 %3935 to float
  %3937 = mul nuw nsw i32 %3934, 9
  %3938 = uitofp i32 %3937 to float
  %3939 = fadd fast float %3936, 5.000000e-01
  %3940 = fadd fast float %3939, %3924
  %3941 = fsub fast float %3940, %3930
  %3942 = fadd fast float %3938, 5.000000e-01
  %3943 = fadd fast float %3942, %3925
  %3944 = fsub fast float %3943, %3931
  %3945 = fdiv fast float %3941, %3342
  %3946 = fdiv fast float %3944, %3921
  %3947 = fmul fast float %3582, 4.375000e-01
  %3948 = fadd fast float %3947, 3.125000e-02
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %65, float %3945, float %3946, float %3948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = fadd fast float %3950, %3894
  %3954 = fadd fast float %3951, %3895
  %3955 = fadd fast float %3952, %3896
  br label %3956

; <label>:3956                                    ; preds = %3920, %3905
  %3957 = phi float [ %3955, %3920 ], [ %3896, %3905 ]
  %3958 = phi float [ %3954, %3920 ], [ %3895, %3905 ]
  %3959 = phi float [ %3953, %3920 ], [ %3894, %3905 ]
  %3960 = icmp eq i32 %3918, 65535
  br i1 %3960, label %4045, label %3961

; <label>:3961                                    ; preds = %3956
  %3962 = extractvalue %dx.types.CBufRet.f32 %3341, 1
  %3963 = extractvalue %dx.types.CBufRet.f32 %3906, 0
  %3964 = extractvalue %dx.types.CBufRet.f32 %3906, 1
  %3965 = fmul fast float %3963, %3554
  %3966 = fmul fast float %3964, %3555
  %3967 = fmul fast float %3965, 1.250000e-01
  %3968 = fmul fast float %3966, 1.250000e-01
  %3969 = call float @dx.op.unary.f32(i32 27, float %3967)  ; Round_ni(value)
  %3970 = call float @dx.op.unary.f32(i32 27, float %3968)  ; Round_ni(value)
  %3971 = fmul fast float %3969, 8.000000e+00
  %3972 = fmul fast float %3970, 8.000000e+00
  %3973 = fsub fast float %3965, %3971
  %3974 = fsub fast float %3966, %3972
  %3975 = fadd fast float %3973, 5.000000e-01
  %3976 = fadd fast float %3974, 5.000000e-01
  %3977 = and i32 %3918, 255
  %3978 = lshr i32 %3916, 24
  %3979 = mul nuw nsw i32 %3977, 9
  %3980 = uitofp i32 %3979 to float
  %3981 = mul nuw nsw i32 %3978, 9
  %3982 = uitofp i32 %3981 to float
  %3983 = fadd fast float %3975, %3980
  %3984 = fadd fast float %3976, %3982
  %3985 = fdiv fast float %3983, %3342
  %3986 = fdiv fast float %3984, %3962
  %3987 = fmul fast float %3582, 4.375000e-01
  %3988 = fadd fast float %3987, 3.125000e-02
  %3989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %65, float %3985, float %3986, float %3988, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3990 = extractvalue %dx.types.ResRet.f32 %3989, 0
  %3991 = extractvalue %dx.types.ResRet.f32 %3989, 1
  %3992 = extractvalue %dx.types.ResRet.f32 %3989, 2
  %3993 = fadd fast float %3987, 5.312500e-01
  %3994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %65, float %3985, float %3986, float %3993, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3995 = extractvalue %dx.types.ResRet.f32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.f32 %3994, 1
  %3997 = extractvalue %dx.types.ResRet.f32 %3994, 2
  %3998 = fmul fast float %3995, 2.000000e+00
  %3999 = fmul fast float %3996, 2.000000e+00
  %4000 = fmul fast float %3997, 2.000000e+00
  %4001 = fadd fast float %3998, -1.000000e+00
  %4002 = fadd fast float %3999, -1.000000e+00
  %4003 = fadd fast float %4000, -1.000000e+00
  %4004 = fmul fast float %4001, %4001
  %4005 = fmul fast float %4002, %4002
  %4006 = fadd fast float %4004, %4005
  %4007 = fmul fast float %4003, %4003
  %4008 = fadd fast float %4006, %4007
  %4009 = call float @dx.op.unary.f32(i32 24, float %4008)  ; Sqrt(value)
  %4010 = fcmp fast ogt float %4009, 0.000000e+00
  br i1 %4010, label %4011, label %4015

; <label>:4011                                    ; preds = %3961
  %4012 = fdiv fast float %4001, %4009
  %4013 = fdiv fast float %4002, %4009
  %4014 = fdiv fast float %4003, %4009
  br label %4015

; <label>:4015                                    ; preds = %4011, %3961
  %4016 = phi float [ %4012, %4011 ], [ 0.000000e+00, %3961 ]
  %4017 = phi float [ %4013, %4011 ], [ 0.000000e+00, %3961 ]
  %4018 = phi float [ %4014, %4011 ], [ 0.000000e+00, %3961 ]
  %4019 = fmul fast float %565, %565
  %4020 = fmul fast float %566, %566
  %4021 = fadd fast float %4019, %4020
  %4022 = call float @dx.op.unary.f32(i32 24, float %4021)  ; Sqrt(value)
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = extractvalue %dx.types.CBufRet.f32 %4023, 1
  %4026 = fsub fast float %4022, %4024
  %4027 = fdiv fast float %4026, %4025
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fmul fast float %4028, 2.000000e+00
  %4030 = fsub fast float 3.000000e+00, %4029
  %4031 = fmul fast float %4028, %4028
  %4032 = fmul fast float %4031, %4030
  %4033 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4018, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4034 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4033)  ; FMax(a,b)
  %4035 = fmul fast float %4034, 0x400C5BF8A0000000
  %4036 = fmul fast float %4032, %3990
  %4037 = fmul fast float %4036, %4035
  %4038 = fadd fast float %4037, %3959
  %4039 = fmul fast float %4032, %3991
  %4040 = fmul fast float %4039, %4035
  %4041 = fadd fast float %4040, %3958
  %4042 = fmul fast float %4032, %3992
  %4043 = fmul fast float %4042, %4035
  %4044 = fadd fast float %4043, %3957
  br label %4045

; <label>:4045                                    ; preds = %4015, %3956, %3884
  %4046 = phi float [ %4044, %4015 ], [ %3957, %3956 ], [ %3896, %3884 ]
  %4047 = phi float [ %4041, %4015 ], [ %3958, %3956 ], [ %3895, %3884 ]
  %4048 = phi float [ %4038, %4015 ], [ %3959, %3956 ], [ %3894, %3884 ]
  %4049 = fcmp fast ogt float %3541, %3578
  %4050 = and i1 %3897, %4049
  %4051 = and i1 %3899, %4050
  %4052 = and i1 %3901, %4051
  %4053 = and i1 %3903, %4052
  br i1 %4053, label %4054, label %4111, !dx.controlflow.hints !130

; <label>:4054                                    ; preds = %4045
  %4055 = fmul fast float %3580, 0x3FC24924A0000000
  %4056 = fsub fast float %3541, %3578
  %4057 = fdiv fast float %4056, %4055
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.f32 %4059, 0
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4065 = fsub fast float %4060, %4048
  %4066 = fsub fast float %4062, %3891
  %4067 = fsub fast float %4063, %3892
  %4068 = fsub fast float %4064, %3893
  %4069 = fmul fast float %4065, %4058
  %4070 = fmul fast float %4066, %4058
  %4071 = fmul fast float %4067, %4058
  %4072 = fmul fast float %4068, %4058
  %4073 = fadd fast float %4069, %4048
  %4074 = fadd fast float %4070, %3891
  %4075 = fadd fast float %4071, %3892
  %4076 = fadd fast float %4072, %3893
  %4077 = extractvalue %dx.types.CBufRet.f32 %4059, 1
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4082 = fsub fast float %4077, %4047
  %4083 = fsub fast float %4079, %3888
  %4084 = fsub fast float %4080, %3889
  %4085 = fsub fast float %4081, %3890
  %4086 = fmul fast float %4082, %4058
  %4087 = fmul fast float %4083, %4058
  %4088 = fmul fast float %4084, %4058
  %4089 = fmul fast float %4085, %4058
  %4090 = fadd fast float %4086, %4047
  %4091 = fadd fast float %4087, %3888
  %4092 = fadd fast float %4088, %3889
  %4093 = fadd fast float %4089, %3890
  %4094 = extractvalue %dx.types.CBufRet.f32 %4059, 2
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4095, 2
  %4099 = fsub fast float %4094, %4046
  %4100 = fsub fast float %4096, %3885
  %4101 = fsub fast float %4097, %3886
  %4102 = fsub fast float %4098, %3887
  %4103 = fmul fast float %4099, %4058
  %4104 = fmul fast float %4100, %4058
  %4105 = fmul fast float %4101, %4058
  %4106 = fmul fast float %4102, %4058
  %4107 = fadd fast float %4103, %4046
  %4108 = fadd fast float %4104, %3885
  %4109 = fadd fast float %4105, %3886
  %4110 = fadd fast float %4106, %3887
  br label %4111

; <label>:4111                                    ; preds = %4054, %4045
  %4112 = phi float [ %4107, %4054 ], [ %4046, %4045 ]
  %4113 = phi float [ %4108, %4054 ], [ %3885, %4045 ]
  %4114 = phi float [ %4109, %4054 ], [ %3886, %4045 ]
  %4115 = phi float [ %4110, %4054 ], [ %3887, %4045 ]
  %4116 = phi float [ %4090, %4054 ], [ %4047, %4045 ]
  %4117 = phi float [ %4091, %4054 ], [ %3888, %4045 ]
  %4118 = phi float [ %4092, %4054 ], [ %3889, %4045 ]
  %4119 = phi float [ %4093, %4054 ], [ %3890, %4045 ]
  %4120 = phi float [ %4073, %4054 ], [ %4048, %4045 ]
  %4121 = phi float [ %4074, %4054 ], [ %3891, %4045 ]
  %4122 = phi float [ %4075, %4054 ], [ %3892, %4045 ]
  %4123 = phi float [ %4076, %4054 ], [ %3893, %4045 ]
  %4124 = extractvalue %dx.types.CBufRet.f32 %3703, 3
  %4125 = fmul fast float %4124, %4120
  %4126 = fmul fast float %4124, %4116
  %4127 = fmul fast float %4124, %4112
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4130 = fmul fast float %4125, %4129
  %4131 = fmul fast float %4126, %4129
  %4132 = fmul fast float %4127, %4129
  %4133 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4134 = fmul fast float %4133, 0x3FD20DD760000000
  %4135 = fmul fast float %4121, 1.500000e+00
  %4136 = fmul fast float %4135, %4124
  %4137 = fmul fast float %4136, %4129
  %4138 = fmul fast float %4122, 1.500000e+00
  %4139 = fmul fast float %4138, %4124
  %4140 = fmul fast float %4139, %4129
  %4141 = fmul fast float %4123, 1.500000e+00
  %4142 = fmul fast float %4141, %4124
  %4143 = fmul fast float %4142, %4129
  %4144 = fmul fast float %4117, 1.500000e+00
  %4145 = fmul fast float %4144, %4124
  %4146 = fmul fast float %4145, %4129
  %4147 = fmul fast float %4118, 1.500000e+00
  %4148 = fmul fast float %4147, %4124
  %4149 = fmul fast float %4148, %4129
  %4150 = fmul fast float %4119, 1.500000e+00
  %4151 = fmul fast float %4150, %4124
  %4152 = fmul fast float %4151, %4129
  %4153 = fmul fast float %4113, 1.500000e+00
  %4154 = fmul fast float %4153, %4124
  %4155 = fmul fast float %4154, %4129
  %4156 = fmul fast float %4114, 1.500000e+00
  %4157 = fmul fast float %4156, %4124
  %4158 = fmul fast float %4157, %4129
  %4159 = fmul fast float %4115, 1.500000e+00
  %4160 = fmul fast float %4159, %4124
  %4161 = fmul fast float %4160, %4129
  %4162 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4130)  ; FMax(a,b)
  %4163 = call float @dx.op.dot3.f32(i32 55, float %4137, float %4140, float %4143, float %4137, float %4140, float %4143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4164 = fcmp fast oeq float %4163, 0.000000e+00
  %4165 = fcmp fast oeq float %4162, 0.000000e+00
  %4166 = or i1 %4165, %4164
  br i1 %4166, label %4196, label %4167

; <label>:4167                                    ; preds = %4111
  %4168 = fsub fast float -0.000000e+00, %4143
  %4169 = fsub fast float -0.000000e+00, %4137
  %4170 = call float @dx.op.unary.f32(i32 24, float %4163)  ; Sqrt(value)
  %4171 = fdiv fast float %4170, %4162
  %4172 = fcmp fast ogt float %4171, 0x3FFB6F8900000000
  %4173 = select i1 %4172, float 0x3FFB6F8900000000, float %4171
  %4174 = fmul fast float %4173, 0x3FE8A23460000000
  %4175 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4176 = call float @dx.op.binary.f32(i32 35, float %4173, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4177 = fmul fast float %4175, %4162
  %4178 = fmul fast float %4176, 0x3FF279A740000000
  %4179 = fadd fast float %4178, -1.000000e+00
  %4180 = call float @dx.op.dot3.f32(i32 55, float %4168, float %4169, float %4140, float %4168, float %4169, float %4140)  ; Dot3(ax,ay,az,bx,by,bz)
  %4181 = call float @dx.op.unary.f32(i32 25, float %4180)  ; Rsqrt(value)
  %4182 = fmul fast float %4181, %4168
  %4183 = fmul fast float %4181, %4169
  %4184 = fmul fast float %4181, %4140
  %4185 = fmul fast float %4179, %4179
  %4186 = fsub fast float 1.000000e+00, %4185
  %4187 = fmul fast float %4176, 0x40005F8BE0000000
  %4188 = fsub fast float 0x400C5BF8A0000000, %4187
  %4189 = fdiv fast float %4177, %4188
  %4190 = fmul fast float %4189, 0x3FEE31C3C0000000
  %4191 = fmul fast float %4190, %4186
  %4192 = fmul fast float %4176, 0x3FDACB7480000000
  %4193 = fadd fast float %4192, 0xBFD7347680000000
  %4194 = fmul fast float %4193, %4189
  %4195 = fmul fast float %4194, %4186
  br label %4196

; <label>:4196                                    ; preds = %4167, %4111
  %4197 = phi float [ %4182, %4167 ], [ 0.000000e+00, %4111 ]
  %4198 = phi float [ %4183, %4167 ], [ 0.000000e+00, %4111 ]
  %4199 = phi float [ %4184, %4167 ], [ 0.000000e+00, %4111 ]
  %4200 = phi float [ %4191, %4167 ], [ 0.000000e+00, %4111 ]
  %4201 = phi float [ %4195, %4167 ], [ 0.000000e+00, %4111 ]
  %4202 = call float @dx.op.dot3.f32(i32 55, float %4197, float %4198, float %4199, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4203 = fmul fast float %4202, %4202
  %4204 = fmul fast float %4203, 0x3FEE471020000000
  %4205 = fadd fast float %4204, 0xBFD42F6020000000
  %4206 = fmul fast float %4162, 0x3FD20DD760000000
  %4207 = fmul fast float %4205, %4201
  %4208 = fmul fast float %4200, 0x3FDF454380000000
  %4209 = fmul fast float %4208, %4202
  %4210 = fadd fast float %4209, %4206
  %4211 = fadd fast float %4210, %4207
  %4212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4131)  ; FMax(a,b)
  %4213 = call float @dx.op.dot3.f32(i32 55, float %4146, float %4149, float %4152, float %4146, float %4149, float %4152)  ; Dot3(ax,ay,az,bx,by,bz)
  %4214 = fcmp fast oeq float %4213, 0.000000e+00
  %4215 = fcmp fast oeq float %4212, 0.000000e+00
  %4216 = or i1 %4215, %4214
  br i1 %4216, label %4246, label %4217

; <label>:4217                                    ; preds = %4196
  %4218 = fsub fast float -0.000000e+00, %4152
  %4219 = fsub fast float -0.000000e+00, %4146
  %4220 = call float @dx.op.unary.f32(i32 24, float %4213)  ; Sqrt(value)
  %4221 = fdiv fast float %4220, %4212
  %4222 = fcmp fast ogt float %4221, 0x3FFB6F8900000000
  %4223 = select i1 %4222, float 0x3FFB6F8900000000, float %4221
  %4224 = fmul fast float %4223, 0x3FE8A23460000000
  %4225 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4226 = call float @dx.op.binary.f32(i32 35, float %4223, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4227 = fmul fast float %4225, %4212
  %4228 = fmul fast float %4226, 0x3FF279A740000000
  %4229 = fadd fast float %4228, -1.000000e+00
  %4230 = call float @dx.op.dot3.f32(i32 55, float %4218, float %4219, float %4149, float %4218, float %4219, float %4149)  ; Dot3(ax,ay,az,bx,by,bz)
  %4231 = call float @dx.op.unary.f32(i32 25, float %4230)  ; Rsqrt(value)
  %4232 = fmul fast float %4231, %4218
  %4233 = fmul fast float %4231, %4219
  %4234 = fmul fast float %4231, %4149
  %4235 = fmul fast float %4229, %4229
  %4236 = fsub fast float 1.000000e+00, %4235
  %4237 = fmul fast float %4226, 0x40005F8BE0000000
  %4238 = fsub fast float 0x400C5BF8A0000000, %4237
  %4239 = fdiv fast float %4227, %4238
  %4240 = fmul fast float %4239, 0x3FEE31C3C0000000
  %4241 = fmul fast float %4240, %4236
  %4242 = fmul fast float %4226, 0x3FDACB7480000000
  %4243 = fadd fast float %4242, 0xBFD7347680000000
  %4244 = fmul fast float %4243, %4239
  %4245 = fmul fast float %4244, %4236
  br label %4246

; <label>:4246                                    ; preds = %4217, %4196
  %4247 = phi float [ %4232, %4217 ], [ 0.000000e+00, %4196 ]
  %4248 = phi float [ %4233, %4217 ], [ 0.000000e+00, %4196 ]
  %4249 = phi float [ %4234, %4217 ], [ 0.000000e+00, %4196 ]
  %4250 = phi float [ %4241, %4217 ], [ 0.000000e+00, %4196 ]
  %4251 = phi float [ %4245, %4217 ], [ 0.000000e+00, %4196 ]
  %4252 = call float @dx.op.dot3.f32(i32 55, float %4247, float %4248, float %4249, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4253 = fmul fast float %4252, %4252
  %4254 = fmul fast float %4253, 0x3FEE471020000000
  %4255 = fadd fast float %4254, 0xBFD42F6020000000
  %4256 = fmul fast float %4212, 0x3FD20DD760000000
  %4257 = fmul fast float %4255, %4251
  %4258 = fmul fast float %4250, 0x3FDF454380000000
  %4259 = fmul fast float %4258, %4252
  %4260 = fadd fast float %4259, %4256
  %4261 = fadd fast float %4260, %4257
  %4262 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4132)  ; FMax(a,b)
  %4263 = call float @dx.op.dot3.f32(i32 55, float %4155, float %4158, float %4161, float %4155, float %4158, float %4161)  ; Dot3(ax,ay,az,bx,by,bz)
  %4264 = fcmp fast oeq float %4263, 0.000000e+00
  %4265 = fcmp fast oeq float %4262, 0.000000e+00
  %4266 = or i1 %4265, %4264
  br i1 %4266, label %4296, label %4267

; <label>:4267                                    ; preds = %4246
  %4268 = fsub fast float -0.000000e+00, %4161
  %4269 = fsub fast float -0.000000e+00, %4155
  %4270 = call float @dx.op.unary.f32(i32 24, float %4263)  ; Sqrt(value)
  %4271 = fdiv fast float %4270, %4262
  %4272 = fcmp fast ogt float %4271, 0x3FFB6F8900000000
  %4273 = select i1 %4272, float 0x3FFB6F8900000000, float %4271
  %4274 = fmul fast float %4273, 0x3FE8A23460000000
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = call float @dx.op.binary.f32(i32 35, float %4273, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4277 = fmul fast float %4275, %4262
  %4278 = fmul fast float %4276, 0x3FF279A740000000
  %4279 = fadd fast float %4278, -1.000000e+00
  %4280 = call float @dx.op.dot3.f32(i32 55, float %4268, float %4269, float %4158, float %4268, float %4269, float %4158)  ; Dot3(ax,ay,az,bx,by,bz)
  %4281 = call float @dx.op.unary.f32(i32 25, float %4280)  ; Rsqrt(value)
  %4282 = fmul fast float %4281, %4268
  %4283 = fmul fast float %4281, %4269
  %4284 = fmul fast float %4281, %4158
  %4285 = fmul fast float %4279, %4279
  %4286 = fsub fast float 1.000000e+00, %4285
  %4287 = fmul fast float %4276, 0x40005F8BE0000000
  %4288 = fsub fast float 0x400C5BF8A0000000, %4287
  %4289 = fdiv fast float %4277, %4288
  %4290 = fmul fast float %4289, 0x3FEE31C3C0000000
  %4291 = fmul fast float %4290, %4286
  %4292 = fmul fast float %4276, 0x3FDACB7480000000
  %4293 = fadd fast float %4292, 0xBFD7347680000000
  %4294 = fmul fast float %4293, %4289
  %4295 = fmul fast float %4294, %4286
  br label %4296

; <label>:4296                                    ; preds = %4267, %4246
  %4297 = phi float [ %4282, %4267 ], [ 0.000000e+00, %4246 ]
  %4298 = phi float [ %4283, %4267 ], [ 0.000000e+00, %4246 ]
  %4299 = phi float [ %4284, %4267 ], [ 0.000000e+00, %4246 ]
  %4300 = phi float [ %4291, %4267 ], [ 0.000000e+00, %4246 ]
  %4301 = phi float [ %4295, %4267 ], [ 0.000000e+00, %4246 ]
  %4302 = call float @dx.op.dot3.f32(i32 55, float %4297, float %4298, float %4299, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %4303 = fmul fast float %4302, %4302
  %4304 = fmul fast float %4303, 0x3FEE471020000000
  %4305 = fadd fast float %4304, 0xBFD42F6020000000
  %4306 = fmul fast float %4262, 0x3FD20DD760000000
  %4307 = fmul fast float %4305, %4301
  %4308 = fmul fast float %4300, 0x3FDF454380000000
  %4309 = fmul fast float %4308, %4302
  %4310 = fadd fast float %4309, %4306
  %4311 = fadd fast float %4310, %4307
  %4312 = call float @dx.op.binary.f32(i32 35, float %4211, float 0.000000e+00)  ; FMax(a,b)
  %4313 = call float @dx.op.binary.f32(i32 35, float %4261, float 0.000000e+00)  ; FMax(a,b)
  %4314 = call float @dx.op.binary.f32(i32 35, float %4311, float 0.000000e+00)  ; FMax(a,b)
  %4315 = fsub fast float %3531, %4312
  %4316 = fsub fast float %3532, %4313
  %4317 = fsub fast float %3533, %4314
  %4318 = fmul fast float %4315, %3340
  %4319 = fmul fast float %4316, %3340
  %4320 = fmul fast float %4317, %3340
  %4321 = fadd fast float %4318, %4312
  %4322 = fadd fast float %4319, %4313
  %4323 = fadd fast float %4320, %4314
  %4324 = fmul fast float %4134, %3340
  %4325 = fsub fast float %4134, %4324
  br label %4326

; <label>:4326                                    ; preds = %4296, %3530
  %4327 = phi float [ %4321, %4296 ], [ %3531, %3530 ]
  %4328 = phi float [ %4322, %4296 ], [ %3532, %3530 ]
  %4329 = phi float [ %4323, %4296 ], [ %3533, %3530 ]
  %4330 = phi float [ %4325, %4296 ], [ 0.000000e+00, %3530 ]
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = call float @dx.op.binary.f32(i32 36, float %3077, float %4332)  ; FMin(a,b)
  %4334 = fmul fast float %4333, %3319
  %4335 = fsub fast float 1.000000e+00, %4334
  %4336 = bitcast float %4335 to i32
  %4337 = sub nsw i32 2129859010, %4336
  %4338 = bitcast i32 %4337 to float
  %4339 = call float @dx.op.binary.f32(i32 36, float %3078, float %4332)  ; FMin(a,b)
  %4340 = fmul fast float %4339, %3319
  %4341 = fsub fast float 1.000000e+00, %4340
  %4342 = bitcast float %4341 to i32
  %4343 = sub nsw i32 2129859010, %4342
  %4344 = bitcast i32 %4343 to float
  %4345 = call float @dx.op.binary.f32(i32 36, float %3079, float %4332)  ; FMin(a,b)
  %4346 = fmul fast float %4345, %3319
  %4347 = fsub fast float 1.000000e+00, %4346
  %4348 = bitcast float %4347 to i32
  %4349 = sub nsw i32 2129859010, %4348
  %4350 = bitcast i32 %4349 to float
  %4351 = fmul fast float %4327, %3318
  %4352 = fmul fast float %4351, %4338
  %4353 = fmul fast float %4328, %3318
  %4354 = fmul fast float %4353, %4344
  %4355 = fmul fast float %4329, %3318
  %4356 = fmul fast float %4355, %4350
  %4357 = extractvalue %dx.types.CBufRet.i32 %3337, 2
  %4358 = and i32 %4357, 1
  %4359 = icmp ne i32 %4358, 0
  %4360 = fsub fast float 1.000000e+00, %3340
  %4361 = select i1 %4359, float %3340, float %4352
  %4362 = select i1 %4359, float %4360, float %4354
  %4363 = select i1 %4359, float 0.000000e+00, float %4356
  %4364 = call float @dx.op.dot3.f32(i32 55, float %4361, float %4362, float %4363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4365 = select i1 %3298, float 0.000000e+00, float %4361
  %4366 = select i1 %3298, float %4364, float %4362
  %4367 = select i1 %3298, float 0.000000e+00, float %4363
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = bitcast float %4369 to i32
  %4371 = lshr i32 %4370, 8
  %4372 = and i32 %4371, 255
  %4373 = uitofp i32 %4372 to float
  %4374 = fptoui float %4373 to i32
  %4375 = icmp eq i32 %4374, 23
  br i1 %4375, label %4376, label %4399

; <label>:4376                                    ; preds = %4326
  %4377 = fmul fast float %4350, %3318
  %4378 = fmul fast float %4344, %3318
  %4379 = fmul fast float %4338, %3318
  %4380 = fadd fast float %4379, 1.000000e+00
  %4381 = fadd fast float %4378, 1.000000e+00
  %4382 = fadd fast float %4377, 1.000000e+00
  %4383 = fmul fast float %4380, 5.000000e-01
  %4384 = fmul fast float %4381, 5.000000e-01
  %4385 = fmul fast float %4382, 5.000000e-01
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4384)  ; Saturate(value)
  %4388 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4389 = fmul fast float %4386, 1.023000e+03
  %4390 = fmul fast float %4387, 1.023000e+03
  %4391 = fmul fast float %4388, 1.023000e+03
  %4392 = fptoui float %4389 to i32
  %4393 = fptoui float %4390 to i32
  %4394 = fptoui float %4391 to i32
  %4395 = shl i32 %4393, 10
  %4396 = or i32 %4395, %4392
  %4397 = shl i32 %4394, 20
  %4398 = or i32 %4396, %4397
  br label %4399

; <label>:4399                                    ; preds = %4376, %4326
  %4400 = phi i32 [ %4398, %4376 ], [ 0, %4326 ]
  %4401 = fsub fast float 1.000000e+00, %3300
  %4402 = fmul fast float %4401, %3125
  %4403 = fadd fast float %4402, %3300
  %4404 = fcmp fast ogt float %3160, 0.000000e+00
  %4405 = select i1 %4404, float %3168, float 0.000000e+00
  %4406 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %4405, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4407 = extractvalue %dx.types.ResRet.f32 %4406, 0
  %4408 = extractvalue %dx.types.ResRet.f32 %4406, 1
  %4409 = extractvalue %dx.types.ResRet.f32 %4406, 2
  %4410 = fadd fast float %4407, -5.000000e-01
  %4411 = fadd fast float %4408, -5.000000e-01
  %4412 = fadd fast float %4409, -5.000000e-01
  %4413 = fmul fast float %3179, %4410
  %4414 = fmul fast float %3183, %4411
  %4415 = fmul fast float %3300, 4.000000e+00
  %4416 = fmul fast float %4415, %4401
  %4417 = fmul fast float %4416, %3162
  %4418 = fmul fast float %4417, %4412
  %4419 = fadd fast float %3156, %4413
  %4420 = fadd fast float %3157, %4414
  %4421 = fadd fast float %4403, %4418
  %4422 = call float @dx.op.unary.f32(i32 7, float %4419)  ; Saturate(value)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4421)  ; Saturate(value)
  %4425 = call float @dx.op.binary.f32(i32 35, float %4423, float %4424)  ; FMax(a,b)
  %4426 = call float @dx.op.binary.f32(i32 35, float %4422, float %4425)  ; FMax(a,b)
  %4427 = fsub fast float 1.000000e+00, %4426
  %4428 = extractvalue %dx.types.CBufRet.f32 %3308, 2
  %4429 = fcmp fast olt float %4428, 0.000000e+00
  br i1 %4429, label %4430, label %5141

; <label>:4430                                    ; preds = %4399
  %4431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4432 = extractvalue %dx.types.CBufRet.f32 %4431, 2
  %4433 = extractvalue %dx.types.CBufRet.f32 %4431, 3
  %4434 = fmul fast float %4432, %93
  %4435 = fmul fast float %4433, %94
  %4436 = fptoui float %4434 to i32
  %4437 = fptoui float %4435 to i32
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4441 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4442 = fadd fast float %526, -4.000000e+00
  %4443 = call float @dx.op.binary.f32(i32 35, float %4442, float 0.000000e+00)  ; FMax(a,b)
  %4444 = fadd fast float %4443, %4439
  %4445 = fmul fast float %4444, %4440
  %4446 = call float @dx.op.unary.f32(i32 23, float %4445)  ; Log(value)
  %4447 = fmul fast float %4446, %4441
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 2
  %4450 = fmul fast float %4447, %4449
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 1
  %4454 = add i32 %4453, -1
  %4455 = uitofp i32 %4453 to float
  %4456 = fmul fast float %4455, %4451
  %4457 = fptoui float %4456 to i32
  %4458 = call i32 @dx.op.binary.i32(i32 40, i32 %4457, i32 %4454)  ; UMin(a,b)
  %4459 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.i32 %4459, 2
  %4461 = extractvalue %dx.types.CBufRet.i32 %4459, 3
  %4462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4437, i32 %4460, i32 %4436)  ; UMad(a,b,c)
  %4463 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4458, i32 %4461, i32 %4462)  ; UMad(a,b,c)
  %4464 = call float @dx.op.binary.f32(i32 35, float %526, float 0.000000e+00)  ; FMax(a,b)
  %4465 = fptoui float %4464 to i32
  %4466 = lshr i32 %4465, 5
  %4467 = call i32 @dx.op.binary.i32(i32 40, i32 %4466, i32 8191)  ; UMin(a,b)
  %4468 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.i32 %4468, 2
  %4470 = add nsw i32 %4469, -1
  %4471 = call i32 @dx.op.binary.i32(i32 37, i32 %4470, i32 0)  ; IMax(a,b)
  %4472 = shl i32 %4467, 2
  %4473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4472, i32 undef)  ; BufferLoad(srv,index,wot)
  %4474 = extractvalue %dx.types.ResRet.i32 %4473, 0
  %4475 = lshr i32 %4474, 16
  %4476 = and i32 %4474, 65535
  %4477 = lshr i32 %4474, 21
  %4478 = lshr i32 %4476, 5
  %4479 = call i32 @dx.op.binary.i32(i32 40, i32 %4478, i32 %4471)  ; UMin(a,b)
  %4480 = icmp ugt i32 %4477, %4479
  br i1 %4480, label %5066, label %4481

; <label>:4481                                    ; preds = %4430
  br label %4482

; <label>:4482                                    ; preds = %5048, %4481
  %4483 = phi i32 [ %5049, %5048 ], [ %3039, %4481 ]
  %4484 = phi i32 [ %5050, %5048 ], [ %4400, %4481 ]
  %4485 = phi float [ %5051, %5048 ], [ 0.000000e+00, %4481 ]
  %4486 = phi float [ %5052, %5048 ], [ 0.000000e+00, %4481 ]
  %4487 = phi float [ %5053, %5048 ], [ 0.000000e+00, %4481 ]
  %4488 = phi float [ %5054, %5048 ], [ 0.000000e+00, %4481 ]
  %4489 = phi float [ %5055, %5048 ], [ 0.000000e+00, %4481 ]
  %4490 = phi float [ %5056, %5048 ], [ 0.000000e+00, %4481 ]
  %4491 = phi i32 [ %5057, %5048 ], [ 0, %4481 ]
  %4492 = phi float [ %5058, %5048 ], [ 0.000000e+00, %4481 ]
  %4493 = phi float [ %5059, %5048 ], [ 0.000000e+00, %4481 ]
  %4494 = phi float [ %5060, %5048 ], [ 0.000000e+00, %4481 ]
  %4495 = phi i32 [ %5061, %5048 ], [ 1, %4481 ]
  %4496 = phi float [ %5062, %5048 ], [ 1.000000e+00, %4481 ]
  %4497 = phi i32 [ %5063, %5048 ], [ %4477, %4481 ]
  %4498 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.i32 %4498, 2
  %4500 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4463, i32 %4499, i32 %4497)  ; UMad(a,b,c)
  %4501 = shl i32 %4500, 2
  %4502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.i32 %4502, 0
  %4504 = shl i32 %4497, 5
  %4505 = sub nsw i32 %4475, %4504
  %4506 = call i32 @dx.op.binary.i32(i32 37, i32 %4505, i32 0)  ; IMax(a,b)
  %4507 = call i32 @dx.op.binary.i32(i32 38, i32 %4506, i32 31)  ; IMin(a,b)
  %4508 = sub nsw i32 1, %4475
  %4509 = add nsw i32 %4508, %4476
  %4510 = call i32 @dx.op.binary.i32(i32 37, i32 %4509, i32 0)  ; IMax(a,b)
  %4511 = call i32 @dx.op.binary.i32(i32 38, i32 %4510, i32 32)  ; IMin(a,b)
  %4512 = and i32 %4511, 31
  %4513 = shl i32 -1, %4512
  %4514 = xor i32 %4513, -1
  %4515 = and i32 %4507, 31
  %4516 = shl i32 %4514, %4515
  %4517 = icmp eq i32 %4511, 32
  %4518 = select i1 %4517, i32 -1, i32 %4516
  %4519 = and i32 %4518, %4503
  %4520 = icmp eq i32 %4519, 0
  br i1 %4520, label %5048, label %4521

; <label>:4521                                    ; preds = %4482
  br label %4522

; <label>:4522                                    ; preds = %4659, %4521
  %4523 = phi i32 [ %4660, %4659 ], [ %4483, %4521 ]
  %4524 = phi i32 [ %4661, %4659 ], [ %4484, %4521 ]
  %4525 = phi float [ %4662, %4659 ], [ %4485, %4521 ]
  %4526 = phi float [ %4663, %4659 ], [ %4486, %4521 ]
  %4527 = phi float [ %4664, %4659 ], [ %4487, %4521 ]
  %4528 = phi float [ %4665, %4659 ], [ %4488, %4521 ]
  %4529 = phi float [ %4666, %4659 ], [ %4489, %4521 ]
  %4530 = phi float [ %4667, %4659 ], [ %4490, %4521 ]
  %4531 = phi i32 [ %4668, %4659 ], [ %4491, %4521 ]
  %4532 = phi float [ %4669, %4659 ], [ %4492, %4521 ]
  %4533 = phi float [ %4670, %4659 ], [ %4493, %4521 ]
  %4534 = phi float [ %4671, %4659 ], [ %4494, %4521 ]
  %4535 = phi i32 [ %4672, %4659 ], [ %4495, %4521 ]
  %4536 = phi float [ %4673, %4659 ], [ %4496, %4521 ]
  %4537 = phi i32 [ %4542, %4659 ], [ %4519, %4521 ]
  %4538 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4537)  ; FirstbitLo(value)
  %4539 = add i32 %4538, %4504
  %4540 = and i32 %4538, 31
  %4541 = shl i32 1, %4540
  %4542 = xor i32 %4541, %4537
  %4543 = mul i32 %4539, 72
  %4544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4543, i32 undef)  ; BufferLoad(srv,index,wot)
  %4545 = extractvalue %dx.types.ResRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.ResRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.ResRet.f32 %4544, 2
  %4548 = add i32 %4543, 12
  %4549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %4548, i32 undef)  ; BufferLoad(srv,index,wot)
  %4550 = extractvalue %dx.types.ResRet.i32 %4549, 0
  %4551 = add i32 %4543, 16
  %4552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4551, i32 undef)  ; BufferLoad(srv,index,wot)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.ResRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.ResRet.f32 %4552, 2
  %4556 = add i32 %4543, 28
  %4557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4556, i32 undef)  ; BufferLoad(srv,index,wot)
  %4558 = extractvalue %dx.types.ResRet.f32 %4557, 0
  %4559 = add i32 %4543, 32
  %4560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4559, i32 undef)  ; BufferLoad(srv,index,wot)
  %4561 = extractvalue %dx.types.ResRet.f32 %4560, 0
  %4562 = extractvalue %dx.types.ResRet.f32 %4560, 1
  %4563 = extractvalue %dx.types.ResRet.f32 %4560, 2
  %4564 = extractvalue %dx.types.ResRet.f32 %4560, 3
  %4565 = add i32 %4543, 48
  %4566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4565, i32 undef)  ; BufferLoad(srv,index,wot)
  %4567 = extractvalue %dx.types.ResRet.f32 %4566, 0
  %4568 = extractvalue %dx.types.ResRet.f32 %4566, 1
  %4569 = add i32 %4543, 56
  %4570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.f32 %4570, 0
  %4572 = extractvalue %dx.types.ResRet.f32 %4570, 1
  %4573 = add i32 %4543, 64
  %4574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %4573, i32 undef)  ; BufferLoad(srv,index,wot)
  %4575 = extractvalue %dx.types.ResRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.ResRet.f32 %4574, 1
  %4577 = mul i32 %4539, 60
  %4578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4577, i32 undef)  ; BufferLoad(srv,index,wot)
  %4579 = extractvalue %dx.types.ResRet.f32 %4578, 0
  %4580 = extractvalue %dx.types.ResRet.f32 %4578, 1
  %4581 = extractvalue %dx.types.ResRet.f32 %4578, 2
  %4582 = add i32 %4577, 12
  %4583 = add i32 %4577, 48
  %4584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4583, i32 undef)  ; BufferLoad(srv,index,wot)
  %4585 = extractvalue %dx.types.ResRet.f32 %4584, 0
  %4586 = extractvalue %dx.types.ResRet.f32 %4584, 1
  %4587 = extractvalue %dx.types.ResRet.f32 %4584, 2
  %4588 = and i32 %4550, 32767
  %4589 = bitcast float %4545 to i32
  %4590 = bitcast float %4546 to i32
  %4591 = and i32 %4550, 32768
  %4592 = icmp ne i32 %4591, 0
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 3
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 0
  %4597 = extractvalue %dx.types.CBufRet.f32 %4595, 1
  %4598 = extractvalue %dx.types.CBufRet.f32 %4595, 2
  %4599 = fsub fast float %4579, %4596
  %4600 = fsub fast float %4580, %4597
  %4601 = fsub fast float %4581, %4598
  %4602 = fsub fast float %565, %4599
  %4603 = fsub fast float %566, %4600
  %4604 = fsub fast float %567, %4601
  %4605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4582, i32 undef)  ; BufferLoad(srv,index,wot)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4606, float %4607, float %4608)  ; Dot3(ax,ay,az,bx,by,bz)
  %4610 = add i32 %4577, 24
  %4611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4610, i32 undef)  ; BufferLoad(srv,index,wot)
  %4612 = extractvalue %dx.types.ResRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.ResRet.f32 %4611, 1
  %4614 = extractvalue %dx.types.ResRet.f32 %4611, 2
  %4615 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4612, float %4613, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4616 = add i32 %4577, 36
  %4617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %4616, i32 undef)  ; BufferLoad(srv,index,wot)
  %4618 = extractvalue %dx.types.ResRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.ResRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.ResRet.f32 %4617, 2
  %4621 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4618, float %4619, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 6, float %4609)  ; FAbs(value)
  %4623 = call float @dx.op.unary.f32(i32 6, float %4615)  ; FAbs(value)
  %4624 = call float @dx.op.unary.f32(i32 6, float %4621)  ; FAbs(value)
  %4625 = fsub fast float %4585, %4622
  %4626 = fsub fast float %4586, %4623
  %4627 = fsub fast float %4587, %4624
  %4628 = fmul fast float %4625, %4553
  %4629 = fmul fast float %4626, %4554
  %4630 = fmul fast float %4627, %4555
  %4631 = call float @dx.op.binary.f32(i32 36, float %4629, float %4630)  ; FMin(a,b)
  %4632 = call float @dx.op.binary.f32(i32 36, float %4628, float %4631)  ; FMin(a,b)
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = call float @dx.op.binary.f32(i32 36, float %4536, float %4633)  ; FMin(a,b)
  %4635 = uitofp i1 %4592 to float
  %4636 = select i1 %105, float 1.000000e+00, float 2.000000e+00
  %4637 = fsub fast float %4636, %4635
  %4638 = fmul fast float %4634, %4637
  %4639 = lshr i32 %4523, 8
  %4640 = and i32 %4639, 255
  %4641 = uitofp i32 %4640 to float
  %4642 = fptoui float %4641 to i32
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4645 = bitcast float %4644 to i32
  %4646 = lshr i32 %4645, 24
  %4647 = uitofp i32 %4646 to float
  %4648 = fptoui float %4647 to i32
  %4649 = icmp ne i32 %4648, 1
  %4650 = zext i1 %4649 to i32
  %4651 = add i32 %4650, %4642
  %4652 = uitofp i32 %4651 to float
  %4653 = fptoui float %4652 to i32
  %4654 = shl i32 %4653, 8
  %4655 = and i32 %4654, 65280
  %4656 = and i32 %4523, -65281
  %4657 = or i32 %4655, %4656
  %4658 = fcmp fast ogt float %4638, 0.000000e+00
  br i1 %4658, label %4675, label %4659

; <label>:4659                                    ; preds = %5031, %4900, %4522
  %4660 = phi i32 [ %4978, %4900 ], [ %4657, %4522 ], [ %4978, %5031 ]
  %4661 = phi i32 [ %4524, %4900 ], [ %4524, %4522 ], [ %5046, %5031 ]
  %4662 = phi float [ %4964, %4900 ], [ %4525, %4522 ], [ %4964, %5031 ]
  %4663 = phi float [ %4965, %4900 ], [ %4526, %4522 ], [ %4965, %5031 ]
  %4664 = phi float [ %4966, %4900 ], [ %4527, %4522 ], [ %4966, %5031 ]
  %4665 = phi float [ %5025, %4900 ], [ %4528, %4522 ], [ %5025, %5031 ]
  %4666 = phi float [ %5026, %4900 ], [ %4529, %4522 ], [ %5026, %5031 ]
  %4667 = phi float [ %5027, %4900 ], [ %4530, %4522 ], [ %5027, %5031 ]
  %4668 = phi i32 [ %5029, %4900 ], [ %4531, %4522 ], [ %5029, %5031 ]
  %4669 = phi float [ %4982, %4900 ], [ %4532, %4522 ], [ %4982, %5031 ]
  %4670 = phi float [ %4983, %4900 ], [ %4533, %4522 ], [ %4983, %5031 ]
  %4671 = phi float [ %4984, %4900 ], [ %4534, %4522 ], [ %4984, %5031 ]
  %4672 = phi i32 [ 0, %4900 ], [ %4535, %4522 ], [ 0, %5031 ]
  %4673 = phi float [ %4967, %4900 ], [ %4536, %4522 ], [ %4967, %5031 ]
  %4674 = icmp eq i32 %4537, %4541
  br i1 %4674, label %5047, label %4522

; <label>:4675                                    ; preds = %4522
  %4676 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4677 = bitcast float %4676 to i32
  %4678 = lshr i32 %4677, 8
  %4679 = and i32 %4678, 255
  %4680 = uitofp i32 %4679 to float
  %4681 = fptoui float %4680 to i32
  %4682 = and i32 %4681, 2
  %4683 = icmp eq i32 %4682, 0
  br i1 %4683, label %4690, label %4684

; <label>:4684                                    ; preds = %4675
  %4685 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %565, float %566, float %567)  ; Dot3(ax,ay,az,bx,by,bz)
  %4686 = call float @dx.op.unary.f32(i32 25, float %4685)  ; Rsqrt(value)
  %4687 = fmul fast float %4686, %565
  %4688 = fmul fast float %4686, %566
  %4689 = fmul fast float %4686, %567
  br label %4690

; <label>:4690                                    ; preds = %4684, %4675
  %4691 = phi float [ %4687, %4684 ], [ %3065, %4675 ]
  %4692 = phi float [ %4688, %4684 ], [ %3066, %4675 ]
  %4693 = phi float [ %4689, %4684 ], [ %3067, %4675 ]
  %4694 = icmp ne i32 %4589, -1
  %4695 = fcmp oeq float %4594, 0.000000e+00
  %4696 = and i1 %4695, %4694
  br i1 %4696, label %4697, label %4821

; <label>:4697                                    ; preds = %4690
  %4698 = fsub fast float -0.000000e+00, %4606
  %4699 = fsub fast float -0.000000e+00, %4607
  %4700 = fsub fast float -0.000000e+00, %4608
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = fsub fast float -0.000000e+00, %4701
  %4703 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4704 = fadd fast float %4703, %4568
  %4705 = fadd fast float %4567, %4703
  %4706 = fsub fast float -0.000000e+00, %4705
  %4707 = fcmp ogt float %4701, -0.000000e+00
  %4708 = select i1 %4707, float %4706, float %4704
  %4709 = call float @dx.op.unary.f32(i32 6, float %4702)  ; FAbs(value)
  %4710 = fdiv fast float 1.000000e+00, %4709
  %4711 = fmul fast float %4708, %4710
  %4712 = call float @dx.op.binary.f32(i32 35, float %4711, float 0.000000e+00)  ; FMax(a,b)
  %4713 = fsub fast float -0.000000e+00, %4612
  %4714 = fsub fast float -0.000000e+00, %4613
  %4715 = fsub fast float -0.000000e+00, %4614
  %4716 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4713, float %4714, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = fsub fast float -0.000000e+00, %4716
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4713, float %4714, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = fadd fast float %4718, %4572
  %4720 = fadd fast float %4571, %4718
  %4721 = fsub fast float -0.000000e+00, %4720
  %4722 = fcmp ogt float %4716, -0.000000e+00
  %4723 = select i1 %4722, float %4721, float %4719
  %4724 = call float @dx.op.unary.f32(i32 6, float %4717)  ; FAbs(value)
  %4725 = fdiv fast float 1.000000e+00, %4724
  %4726 = fmul fast float %4723, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float %4726, float 0.000000e+00)  ; FMax(a,b)
  %4728 = fsub fast float -0.000000e+00, %4618
  %4729 = fsub fast float -0.000000e+00, %4619
  %4730 = fsub fast float -0.000000e+00, %4620
  %4731 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4692, float %4693, float %4728, float %4729, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = fsub fast float -0.000000e+00, %4731
  %4733 = call float @dx.op.dot3.f32(i32 55, float %4602, float %4603, float %4604, float %4728, float %4729, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = fadd fast float %4733, %4576
  %4735 = fadd fast float %4575, %4733
  %4736 = fsub fast float -0.000000e+00, %4735
  %4737 = fcmp ogt float %4731, -0.000000e+00
  %4738 = select i1 %4737, float %4736, float %4734
  %4739 = call float @dx.op.unary.f32(i32 6, float %4732)  ; FAbs(value)
  %4740 = fdiv fast float 1.000000e+00, %4739
  %4741 = fmul fast float %4738, %4740
  %4742 = call float @dx.op.binary.f32(i32 35, float %4741, float 0.000000e+00)  ; FMax(a,b)
  %4743 = call float @dx.op.binary.f32(i32 36, float %4727, float %4742)  ; FMin(a,b)
  %4744 = call float @dx.op.binary.f32(i32 36, float %4712, float %4743)  ; FMin(a,b)
  %4745 = fmul fast float %4744, %4691
  %4746 = fmul fast float %4744, %4692
  %4747 = fmul fast float %4744, %4693
  %4748 = fadd fast float %4745, %565
  %4749 = fadd fast float %4746, %566
  %4750 = fadd fast float %4747, %567
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4753 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4754 = extractvalue %dx.types.CBufRet.f32 %4751, 2
  %4755 = fadd fast float %4748, %4752
  %4756 = fadd fast float %4749, %4753
  %4757 = fadd fast float %4750, %4754
  %4758 = fcmp fast olt float %4712, %4727
  %4759 = fcmp fast olt float %4712, %4742
  %4760 = and i1 %4758, %4759
  br i1 %4760, label %4764, label %4761

; <label>:4761                                    ; preds = %4697
  %4762 = fcmp fast olt float %4727, %4742
  br i1 %4762, label %4763, label %4764

; <label>:4763                                    ; preds = %4761
  br label %4764

; <label>:4764                                    ; preds = %4763, %4761, %4697
  %4765 = phi float [ 0.000000e+00, %4763 ], [ 0.000000e+00, %4761 ], [ 1.000000e+00, %4697 ]
  %4766 = phi float [ 1.000000e+00, %4763 ], [ 0.000000e+00, %4761 ], [ 0.000000e+00, %4697 ]
  %4767 = phi float [ 0.000000e+00, %4763 ], [ 1.000000e+00, %4761 ], [ 0.000000e+00, %4697 ]
  %4768 = phi float [ %4612, %4763 ], [ %4618, %4761 ], [ %4606, %4697 ]
  %4769 = phi float [ %4613, %4763 ], [ %4619, %4761 ], [ %4607, %4697 ]
  %4770 = phi float [ %4614, %4763 ], [ %4620, %4761 ], [ %4608, %4697 ]
  %4771 = call float @dx.op.unary.f32(i32 6, float %4770)  ; FAbs(value)
  %4772 = fcmp fast olt float %4771, 0x3FE276C8C0000000
  %4773 = select i1 %4772, float 0.000000e+00, float 1.000000e+00
  %4774 = select i1 %4772, float 1.000000e+00, float 0.000000e+00
  %4775 = fmul fast float %4774, %4769
  %4776 = fmul fast float %4773, %4770
  %4777 = fsub fast float %4775, %4776
  %4778 = fmul fast float %4768, %4774
  %4779 = fsub fast float -0.000000e+00, %4778
  %4780 = fmul fast float %4773, %4768
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4779, float %4780, float %4777, float %4779, float %4780)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = call float @dx.op.unary.f32(i32 25, float %4781)  ; Rsqrt(value)
  %4783 = fmul fast float %4777, %4782
  %4784 = fmul fast float %4782, %4779
  %4785 = fmul fast float %4780, %4782
  %4786 = fmul fast float %4785, %4769
  %4787 = fmul fast float %4784, %4770
  %4788 = fsub fast float %4786, %4787
  %4789 = fmul fast float %4783, %4770
  %4790 = fmul fast float %4785, %4768
  %4791 = fsub fast float %4789, %4790
  %4792 = fmul fast float %4784, %4768
  %4793 = fmul fast float %4783, %4769
  %4794 = fsub fast float %4792, %4793
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4791, float %4794, float %4788, float %4791, float %4794)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = call float @dx.op.unary.f32(i32 25, float %4795)  ; Rsqrt(value)
  %4797 = fmul fast float %4788, %4796
  %4798 = fmul fast float %4791, %4796
  %4799 = fmul fast float %4794, %4796
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %4783, float %4784, float %4785)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %4797, float %4798, float %4799)  ; Dot3(ax,ay,az,bx,by,bz)
  %4802 = fmul fast float %4800, 0x3FA99999A0000000
  %4803 = fmul fast float %4801, 0x3FA99999A0000000
  %4804 = call float @dx.op.unary.f32(i32 22, float %4802)  ; Frc(value)
  %4805 = call float @dx.op.unary.f32(i32 22, float %4803)  ; Frc(value)
  %4806 = fadd fast float %4804, 0xBFB99999A0000000
  %4807 = fadd fast float %4805, 0xBFB99999A0000000
  %4808 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4809 = call float @dx.op.unary.f32(i32 6, float %4807)  ; FAbs(value)
  %4810 = fmul fast float %4808, 1.000000e+01
  %4811 = fmul fast float %4809, 1.000000e+01
  %4812 = call float @dx.op.binary.f32(i32 36, float %4810, float %4811)  ; FMin(a,b)
  %4813 = call float @dx.op.unary.f32(i32 7, float %4812)  ; Saturate(value)
  %4814 = fsub fast float 1.000000e+00, %4813
  %4815 = fmul fast float %4814, %4765
  %4816 = fmul fast float %4814, %4766
  %4817 = fmul fast float %4814, %4767
  %4818 = fsub fast float %4748, %4545
  %4819 = fsub fast float %4749, %4546
  %4820 = fsub fast float %4750, %4547
  br label %4828

; <label>:4821                                    ; preds = %4690
  %4822 = fmul fast float %4691, 8.096000e+03
  %4823 = fmul fast float %4692, 8.096000e+03
  %4824 = fmul fast float %4693, 8.096000e+03
  %4825 = fadd fast float %4822, %565
  %4826 = fadd fast float %4823, %566
  %4827 = fadd fast float %4824, %567
  br label %4828

; <label>:4828                                    ; preds = %4821, %4764
  %4829 = phi float [ %4691, %4821 ], [ %4818, %4764 ]
  %4830 = phi float [ %4692, %4821 ], [ %4819, %4764 ]
  %4831 = phi float [ %4693, %4821 ], [ %4820, %4764 ]
  %4832 = phi float [ %4825, %4821 ], [ %4748, %4764 ]
  %4833 = phi float [ %4826, %4821 ], [ %4749, %4764 ]
  %4834 = phi float [ %4827, %4821 ], [ %4750, %4764 ]
  %4835 = phi float [ 0.000000e+00, %4821 ], [ %4815, %4764 ]
  %4836 = phi float [ 0.000000e+00, %4821 ], [ %4816, %4764 ]
  %4837 = phi float [ 0.000000e+00, %4821 ], [ %4817, %4764 ]
  %4838 = fcmp fast olt float %4564, 1.000000e+00
  br i1 %4838, label %4839, label %4870, !dx.controlflow.hints !131

; <label>:4839                                    ; preds = %4828
  %4840 = fmul fast float %4831, %4562
  %4841 = fmul fast float %4830, %4563
  %4842 = fsub fast float %4840, %4841
  %4843 = fmul fast float %4829, %4563
  %4844 = fmul fast float %4831, %4561
  %4845 = fsub fast float %4843, %4844
  %4846 = fmul fast float %4830, %4561
  %4847 = fmul fast float %4829, %4562
  %4848 = fsub fast float %4846, %4847
  %4849 = fmul fast float %4842, 2.000000e+00
  %4850 = fmul fast float %4845, 2.000000e+00
  %4851 = fmul fast float %4848, 2.000000e+00
  %4852 = fmul fast float %4849, %4564
  %4853 = fmul fast float %4850, %4564
  %4854 = fmul fast float %4851, %4564
  %4855 = fmul fast float %4851, %4562
  %4856 = fmul fast float %4850, %4563
  %4857 = fmul fast float %4849, %4563
  %4858 = fmul fast float %4851, %4561
  %4859 = fmul fast float %4850, %4561
  %4860 = fmul fast float %4849, %4562
  %4861 = fadd fast float %4855, %4829
  %4862 = fadd fast float %4861, %4852
  %4863 = fsub fast float %4862, %4856
  %4864 = fsub fast float %4830, %4858
  %4865 = fadd fast float %4864, %4853
  %4866 = fadd fast float %4865, %4857
  %4867 = fadd fast float %4854, %4831
  %4868 = fsub fast float %4867, %4860
  %4869 = fadd fast float %4868, %4859
  br label %4870

; <label>:4870                                    ; preds = %4839, %4828
  %4871 = phi float [ %4863, %4839 ], [ %4829, %4828 ]
  %4872 = phi float [ %4866, %4839 ], [ %4830, %4828 ]
  %4873 = phi float [ %4869, %4839 ], [ %4831, %4828 ]
  br i1 %4696, label %4874, label %4897

; <label>:4874                                    ; preds = %4870
  %4875 = fsub fast float %4832, %565
  %4876 = fsub fast float %4833, %566
  %4877 = fsub fast float %4834, %567
  %4878 = fsub fast float %4832, %4545
  %4879 = fsub fast float %4833, %4546
  %4880 = fsub fast float %4834, %4547
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4876, float %4877, float %4875, float %4876, float %4877)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4878, float %4879, float %4880)  ; Dot3(ax,ay,az,bx,by,bz)
  %4883 = fadd fast float %4882, 0x3EE4F8B580000000
  %4884 = fdiv fast float %4881, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = ashr i32 %4885, 1
  %4887 = add nsw i32 %4886, 532487669
  %4888 = bitcast i32 %4887 to float
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fmul fast float %4889, 0x4009981AE0000000
  %4891 = fsub fast float 0x40111BBD80000000, %4890
  %4892 = fmul fast float %4891, %4889
  %4893 = fadd fast float %4892, 0xC0009F6020000000
  %4894 = fmul fast float %4893, %4889
  %4895 = fadd fast float %4894, 1.000000e+00
  %4896 = call float @dx.op.unary.f32(i32 7, float %4895)  ; Saturate(value)
  br label %4900

; <label>:4897                                    ; preds = %4870
  %4898 = icmp ne i32 %4590, -1
  %4899 = zext i1 %4898 to i32
  br label %4900

; <label>:4900                                    ; preds = %4897, %4874
  %4901 = phi float [ 0.000000e+00, %4897 ], [ %4896, %4874 ]
  %4902 = phi i32 [ %4899, %4897 ], [ 0, %4874 ]
  %4903 = fmul float %4901, 5.000000e+00
  %4904 = fsub float 5.000000e+00, %4903
  %4905 = icmp ne i32 %4902, 0
  %4906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4907 = extractvalue %dx.types.CBufRet.f32 %4906, 3
  %4908 = fadd fast float %4907, %4904
  %4909 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4908)  ; FMax(a,b)
  %4910 = call float @dx.op.unary.f32(i32 6, float %4871)  ; FAbs(value)
  %4911 = call float @dx.op.unary.f32(i32 6, float %4872)  ; FAbs(value)
  %4912 = fadd fast float %4911, %4910
  %4913 = call float @dx.op.unary.f32(i32 6, float %4873)  ; FAbs(value)
  %4914 = fadd fast float %4912, %4913
  %4915 = fcmp fast oeq float %4914, 0.000000e+00
  %4916 = fdiv fast float 1.000000e+00, %4914
  %4917 = select i1 %4915, float 1.000000e+00, float %4916
  %4918 = fmul fast float %4917, %4871
  %4919 = fmul fast float %4917, %4872
  %4920 = call float @dx.op.unary.f32(i32 6, float %4919)  ; FAbs(value)
  %4921 = call float @dx.op.unary.f32(i32 6, float %4918)  ; FAbs(value)
  %4922 = fsub fast float 1.000000e+00, %4920
  %4923 = fsub fast float 1.000000e+00, %4921
  %4924 = fcmp fast oge float %4918, 0.000000e+00
  %4925 = fcmp fast oge float %4919, 0.000000e+00
  %4926 = select i1 %4924, float 1.000000e+00, float -1.000000e+00
  %4927 = select i1 %4925, float 1.000000e+00, float -1.000000e+00
  %4928 = fcmp fast ole float %4873, 0.000000e+00
  %4929 = fmul fast float %4926, %4922
  %4930 = fmul fast float %4927, %4923
  %4931 = select i1 %4928, float %4929, float %4918
  %4932 = select i1 %4928, float %4930, float %4919
  %4933 = fmul fast float %4931, 5.000000e-01
  %4934 = fmul fast float %4932, 5.000000e-01
  %4935 = fadd fast float %4933, 5.000000e-01
  %4936 = fadd fast float %4934, 5.000000e-01
  %4937 = uitofp i32 %4588 to float
  %4938 = call float @dx.op.binary.f32(i32 36, float %4909, float 3.000000e+00)  ; FMin(a,b)
  %4939 = fadd fast float %4938, 2.000000e+00
  %4940 = call float @dx.op.unary.f32(i32 21, float %4939)  ; Exp(value)
  %4941 = extractvalue %dx.types.CBufRet.f32 %4906, 1
  %4942 = fmul fast float %4941, %4940
  %4943 = fmul fast float %4942, 2.000000e+00
  %4944 = fsub fast float 1.000000e+00, %4943
  %4945 = fmul fast float %4935, %4944
  %4946 = fmul fast float %4936, %4944
  %4947 = fadd fast float %4945, %4942
  %4948 = fadd fast float %4946, %4942
  %4949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %63, float %4947, float %4948, float %4937, float undef, i32 0, i32 0, i32 undef, float %4909)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.ResRet.f32 %4949, 1
  %4952 = extractvalue %dx.types.ResRet.f32 %4949, 2
  %4953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4954 = extractvalue %dx.types.CBufRet.f32 %4953, 3
  %4955 = fmul fast float %4954, %4558
  %4956 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4955)  ; FMin(a,b)
  %4957 = select i1 %4905, float %4956, float %4955
  %4958 = fmul fast float %4950, %4638
  %4959 = fmul fast float %4958, %4957
  %4960 = fmul fast float %4951, %4638
  %4961 = fmul fast float %4960, %4957
  %4962 = fmul fast float %4952, %4638
  %4963 = fmul fast float %4962, %4957
  %4964 = fadd fast float %4959, %4525
  %4965 = fadd fast float %4961, %4526
  %4966 = fadd fast float %4963, %4527
  %4967 = fsub fast float %4536, %4638
  %4968 = and i32 %4653, 255
  %4969 = uitofp i32 %4968 to float
  %4970 = fptoui float %4969 to i32
  %4971 = icmp eq i32 %4648, 1
  %4972 = zext i1 %4971 to i32
  %4973 = add i32 %4972, %4970
  %4974 = uitofp i32 %4973 to float
  %4975 = fptoui float %4974 to i32
  %4976 = shl i32 %4975, 8
  %4977 = and i32 %4976, 65280
  %4978 = or i32 %4977, %4656
  %4979 = fmul fast float %4835, %4638
  %4980 = fmul fast float %4836, %4638
  %4981 = fmul fast float %4837, %4638
  %4982 = fadd fast float %4979, %4532
  %4983 = fadd fast float %4980, %4533
  %4984 = fadd fast float %4981, %4534
  %4985 = fmul fast float %4937, 0x3FE3C6EF40000000
  %4986 = call float @dx.op.unary.f32(i32 22, float %4985)  ; Frc(value)
  %4987 = fadd fast float %4986, 0x3FE5555560000000
  %4988 = fadd fast float %4986, 0x3FD5555560000000
  %4989 = fsub fast float -0.000000e+00, %4986
  %4990 = fsub fast float -0.000000e+00, %4987
  %4991 = fsub fast float -0.000000e+00, %4988
  %4992 = fcmp fast oge float %4986, %4989
  %4993 = fcmp fast oge float %4987, %4990
  %4994 = fcmp fast oge float %4988, %4991
  %4995 = call float @dx.op.unary.f32(i32 6, float %4986)  ; FAbs(value)
  %4996 = call float @dx.op.unary.f32(i32 6, float %4987)  ; FAbs(value)
  %4997 = call float @dx.op.unary.f32(i32 6, float %4988)  ; FAbs(value)
  %4998 = call float @dx.op.unary.f32(i32 22, float %4995)  ; Frc(value)
  %4999 = call float @dx.op.unary.f32(i32 22, float %4996)  ; Frc(value)
  %5000 = call float @dx.op.unary.f32(i32 22, float %4997)  ; Frc(value)
  %5001 = fsub fast float -0.000000e+00, %4998
  %5002 = fsub fast float -0.000000e+00, %4999
  %5003 = fsub fast float -0.000000e+00, %5000
  %5004 = select i1 %4992, float %4998, float %5001
  %5005 = select i1 %4993, float %4999, float %5002
  %5006 = select i1 %4994, float %5000, float %5003
  %5007 = fmul fast float %5004, 6.000000e+00
  %5008 = fmul fast float %5005, 6.000000e+00
  %5009 = fmul fast float %5006, 6.000000e+00
  %5010 = fadd fast float %5007, -3.000000e+00
  %5011 = fadd fast float %5008, -3.000000e+00
  %5012 = fadd fast float %5009, -3.000000e+00
  %5013 = call float @dx.op.unary.f32(i32 6, float %5010)  ; FAbs(value)
  %5014 = call float @dx.op.unary.f32(i32 6, float %5011)  ; FAbs(value)
  %5015 = call float @dx.op.unary.f32(i32 6, float %5012)  ; FAbs(value)
  %5016 = fadd fast float %5013, -1.000000e+00
  %5017 = fadd fast float %5014, -1.000000e+00
  %5018 = fadd fast float %5015, -1.000000e+00
  %5019 = call float @dx.op.unary.f32(i32 7, float %5016)  ; Saturate(value)
  %5020 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5021 = call float @dx.op.unary.f32(i32 7, float %5018)  ; Saturate(value)
  %5022 = fmul fast float %5019, %4638
  %5023 = fmul fast float %5020, %4638
  %5024 = fmul fast float %5021, %4638
  %5025 = fadd fast float %5022, %4528
  %5026 = fadd fast float %5023, %4529
  %5027 = fadd fast float %5024, %4530
  %5028 = icmp eq i32 %4588, 0
  %5029 = select i1 %5028, i32 1, i32 %4531
  %5030 = icmp eq i32 %4535, 0
  br i1 %5030, label %4659, label %5031

; <label>:5031                                    ; preds = %4900
  %5032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.f32 %5032, 0
  %5034 = bitcast float %5033 to i32
  %5035 = lshr i32 %5034, 8
  %5036 = and i32 %5035, 255
  %5037 = uitofp i32 %5036 to float
  %5038 = fptoui float %5037 to i32
  %5039 = icmp eq i32 %5038, 16
  %5040 = bitcast float %4955 to i32
  %5041 = select i1 %5039, i32 %5040, i32 %4524
  %5042 = icmp eq i32 %5038, 17
  %5043 = select i1 %5042, i32 1065353216, i32 %5041
  %5044 = icmp eq i32 %5038, 18
  %5045 = bitcast float %4957 to i32
  %5046 = select i1 %5044, i32 %5045, i32 %5043
  br label %4659

; <label>:5047                                    ; preds = %4659
  br label %5048

; <label>:5048                                    ; preds = %5047, %4482
  %5049 = phi i32 [ %4483, %4482 ], [ %4660, %5047 ]
  %5050 = phi i32 [ %4484, %4482 ], [ %4661, %5047 ]
  %5051 = phi float [ %4485, %4482 ], [ %4662, %5047 ]
  %5052 = phi float [ %4486, %4482 ], [ %4663, %5047 ]
  %5053 = phi float [ %4487, %4482 ], [ %4664, %5047 ]
  %5054 = phi float [ %4488, %4482 ], [ %4665, %5047 ]
  %5055 = phi float [ %4489, %4482 ], [ %4666, %5047 ]
  %5056 = phi float [ %4490, %4482 ], [ %4667, %5047 ]
  %5057 = phi i32 [ %4491, %4482 ], [ %4668, %5047 ]
  %5058 = phi float [ %4492, %4482 ], [ %4669, %5047 ]
  %5059 = phi float [ %4493, %4482 ], [ %4670, %5047 ]
  %5060 = phi float [ %4494, %4482 ], [ %4671, %5047 ]
  %5061 = phi i32 [ %4495, %4482 ], [ %4672, %5047 ]
  %5062 = phi float [ %4496, %4482 ], [ %4673, %5047 ]
  %5063 = add i32 %4497, 1
  %5064 = icmp ugt i32 %5063, %4479
  br i1 %5064, label %5065, label %4482, !llvm.loop !132

; <label>:5065                                    ; preds = %5048
  br label %5066

; <label>:5066                                    ; preds = %5065, %4430
  %5067 = phi i32 [ %3039, %4430 ], [ %5049, %5065 ]
  %5068 = phi i32 [ %4400, %4430 ], [ %5050, %5065 ]
  %5069 = phi float [ 0.000000e+00, %4430 ], [ %5051, %5065 ]
  %5070 = phi float [ 0.000000e+00, %4430 ], [ %5052, %5065 ]
  %5071 = phi float [ 0.000000e+00, %4430 ], [ %5053, %5065 ]
  %5072 = phi float [ 0.000000e+00, %4430 ], [ %5054, %5065 ]
  %5073 = phi float [ 0.000000e+00, %4430 ], [ %5055, %5065 ]
  %5074 = phi float [ 0.000000e+00, %4430 ], [ %5056, %5065 ]
  %5075 = phi i32 [ 0, %4430 ], [ %5057, %5065 ]
  %5076 = phi float [ 0.000000e+00, %4430 ], [ %5058, %5065 ]
  %5077 = phi float [ 0.000000e+00, %4430 ], [ %5059, %5065 ]
  %5078 = phi float [ 0.000000e+00, %4430 ], [ %5060, %5065 ]
  %5079 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = select i1 %3298, float %5079, float %5070
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = bitcast float %5082 to i32
  %5084 = lshr i32 %5083, 8
  %5085 = and i32 %5084, 255
  %5086 = uitofp i32 %5085 to float
  %5087 = fptoui float %5086 to i32
  %5088 = icmp eq i32 %5087, 13
  br i1 %5088, label %5089, label %5109

; <label>:5089                                    ; preds = %5066
  %5090 = fadd fast float %5072, 1.000000e+00
  %5091 = fadd fast float %5073, 1.000000e+00
  %5092 = fadd fast float %5074, 1.000000e+00
  %5093 = fmul fast float %5090, 5.000000e-01
  %5094 = fmul fast float %5091, 5.000000e-01
  %5095 = fmul fast float %5092, 5.000000e-01
  %5096 = call float @dx.op.unary.f32(i32 7, float %5093)  ; Saturate(value)
  %5097 = call float @dx.op.unary.f32(i32 7, float %5094)  ; Saturate(value)
  %5098 = call float @dx.op.unary.f32(i32 7, float %5095)  ; Saturate(value)
  %5099 = fmul fast float %5096, 1.023000e+03
  %5100 = fmul fast float %5097, 1.023000e+03
  %5101 = fmul fast float %5098, 1.023000e+03
  %5102 = fptoui float %5099 to i32
  %5103 = fptoui float %5100 to i32
  %5104 = fptoui float %5101 to i32
  %5105 = shl i32 %5103, 10
  %5106 = or i32 %5105, %5102
  %5107 = shl i32 %5104, 20
  %5108 = or i32 %5106, %5107
  br label %5109

; <label>:5109                                    ; preds = %5089, %5066
  %5110 = phi i32 [ %5108, %5089 ], [ %5068, %5066 ]
  %5111 = icmp eq i32 %5087, 14
  %5112 = select i1 %5111, i32 %5075, i32 %5110
  %5113 = icmp eq i32 %5087, 22
  br i1 %5113, label %5114, label %5134

; <label>:5114                                    ; preds = %5109
  %5115 = fadd fast float %5076, 1.000000e+00
  %5116 = fadd fast float %5077, 1.000000e+00
  %5117 = fadd fast float %5078, 1.000000e+00
  %5118 = fmul fast float %5115, 5.000000e-01
  %5119 = fmul fast float %5116, 5.000000e-01
  %5120 = fmul fast float %5117, 5.000000e-01
  %5121 = call float @dx.op.unary.f32(i32 7, float %5118)  ; Saturate(value)
  %5122 = call float @dx.op.unary.f32(i32 7, float %5119)  ; Saturate(value)
  %5123 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5124 = fmul fast float %5121, 1.023000e+03
  %5125 = fmul fast float %5122, 1.023000e+03
  %5126 = fmul fast float %5123, 1.023000e+03
  %5127 = fptoui float %5124 to i32
  %5128 = fptoui float %5125 to i32
  %5129 = fptoui float %5126 to i32
  %5130 = shl i32 %5128, 10
  %5131 = or i32 %5130, %5127
  %5132 = shl i32 %5129, 20
  %5133 = or i32 %5131, %5132
  br label %5134

; <label>:5134                                    ; preds = %5114, %5109
  %5135 = phi i32 [ %5133, %5114 ], [ %5112, %5109 ]
  %5136 = fmul fast float %5069, 0x3FD45F3060000000
  %5137 = select i1 %3298, float 0.000000e+00, float %5136
  %5138 = fmul fast float %5080, 0x3FD45F3060000000
  %5139 = fmul fast float %5071, 0x3FD45F3060000000
  %5140 = select i1 %3298, float 0.000000e+00, float %5139
  br label %5141

; <label>:5141                                    ; preds = %5134, %4399
  %5142 = phi i32 [ %5067, %5134 ], [ %3039, %4399 ]
  %5143 = phi i32 [ %5135, %5134 ], [ %4400, %4399 ]
  %5144 = phi float [ %5137, %5134 ], [ %4365, %4399 ]
  %5145 = phi float [ %5138, %5134 ], [ %4366, %4399 ]
  %5146 = phi float [ %5140, %5134 ], [ %4367, %4399 ]
  %5147 = phi i1 [ false, %5134 ], [ true, %4399 ]
  %5148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.i32 %5148, 0
  %5150 = and i32 %5149, 524288
  %5151 = icmp ne i32 %5150, 0
  %5152 = select i1 %5151, float 0.000000e+00, float 1.000000e+00
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = bitcast float %5154 to i32
  %5156 = and i32 %5155, 255
  %5157 = uitofp i32 %5156 to float
  %5158 = fptoui float %5157 to i32
  %5159 = icmp eq i32 %5158, 38
  %5160 = select i1 %5159, i32 0, i32 %5143
  %5161 = lshr i32 %5155, 8
  %5162 = and i32 %5161, 255
  %5163 = uitofp i32 %5162 to float
  %5164 = fptoui float %5163 to i32
  %5165 = icmp eq i32 %5164, 24
  br i1 %5165, label %5166, label %5177

; <label>:5166                                    ; preds = %5141
  %5167 = fadd fast float %3330, 1.000000e+00
  %5168 = fmul fast float %5167, 5.000000e-01
  %5169 = select i1 %3332, float %5168, float 1.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5171 = fmul fast float %5170, 1.023000e+03
  %5172 = fptoui float %5171 to i32
  %5173 = shl i32 %5172, 10
  %5174 = or i32 %5173, %5172
  %5175 = shl i32 %5172, 20
  %5176 = or i32 %5174, %5175
  br label %5177

; <label>:5177                                    ; preds = %5166, %5141
  %5178 = phi i32 [ %5160, %5141 ], [ %5176, %5166 ]
  %5179 = xor i1 %5151, true
  %5180 = zext i1 %5179 to i32
  br i1 %5151, label %5181, label %5465

; <label>:5181                                    ; preds = %5177
  %5182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.f32 %5182, 0
  %5184 = extractvalue %dx.types.CBufRet.f32 %5182, 1
  %5185 = extractvalue %dx.types.CBufRet.f32 %5182, 2
  %5186 = extractvalue %dx.types.CBufRet.f32 %5182, 3
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 0
  %5189 = extractvalue %dx.types.CBufRet.f32 %5187, 1
  %5190 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5191 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.f32 %5192, 0
  %5194 = extractvalue %dx.types.CBufRet.f32 %5192, 1
  %5195 = extractvalue %dx.types.CBufRet.f32 %5192, 2
  %5196 = extractvalue %dx.types.CBufRet.f32 %5192, 3
  %5197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5198 = extractvalue %dx.types.CBufRet.f32 %5197, 0
  %5199 = extractvalue %dx.types.CBufRet.f32 %5197, 1
  %5200 = extractvalue %dx.types.CBufRet.f32 %5197, 2
  %5201 = extractvalue %dx.types.CBufRet.f32 %5197, 3
  %5202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.CBufRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.CBufRet.f32 %5202, 2
  %5206 = extractvalue %dx.types.CBufRet.f32 %5202, 3
  %5207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5208 = extractvalue %dx.types.CBufRet.f32 %5207, 0
  %5209 = extractvalue %dx.types.CBufRet.f32 %5207, 1
  %5210 = extractvalue %dx.types.CBufRet.f32 %5207, 2
  %5211 = extractvalue %dx.types.CBufRet.f32 %5207, 3
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5208, float %5209, float %5210, float %3305, float %3306, float %3307)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.f32 %5213, 1
  %5215 = extractvalue %dx.types.CBufRet.f32 %5213, 0
  %5216 = select i1 %105, float %5215, float %5214
  %5217 = fmul fast float %5212, 8.000000e+00
  %5218 = fmul fast float %5217, %5216
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fcmp fast ogt float %5219, 0.000000e+00
  br i1 %5220, label %5221, label %5439, !dx.controlflow.hints !133

; <label>:5221                                    ; preds = %5181
  %5222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5223 = extractvalue %dx.types.CBufRet.f32 %5222, 1
  %5224 = fmul fast float %2539, 2.000000e+00
  %5225 = fmul fast float %2540, 2.000000e+00
  %5226 = fadd fast float %5224, -1.000000e+00
  %5227 = fadd fast float %5225, -1.000000e+00
  %5228 = fmul fast float %5223, %5226
  %5229 = fmul fast float %5223, %5227
  %5230 = fadd fast float %5228, %93
  %5231 = fadd fast float %5229, %94
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 2
  %5234 = extractvalue %dx.types.CBufRet.f32 %5232, 3
  %5235 = fmul fast float %5230, %5233
  %5236 = fmul fast float %5231, %5234
  %5237 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %66, float %5235, float %5236, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = fcmp fast une float %5238, 0xFFF0000000000000
  %5240 = fcmp fast une float %5238, 0x7FF0000000000000
  %5241 = and i1 %5239, %5240
  %5242 = call float @dx.op.unary.f32(i32 6, float %5238)  ; FAbs(value)
  %5243 = fsub fast float 1.000000e+00, %5242
  %5244 = select i1 %5241, float 1.000000e+00, float 0.000000e+00
  %5245 = fmul fast float %5244, %5219
  %5246 = fcmp fast ogt float %5245, 0.000000e+00
  br i1 %5246, label %5247, label %5439, !dx.controlflow.hints !134

; <label>:5247                                    ; preds = %5221
  %5248 = fmul fast float %5183, %565
  %5249 = call float @dx.op.tertiary.f32(i32 46, float %566, float %5184, float %5248)  ; FMad(a,b,c)
  %5250 = call float @dx.op.tertiary.f32(i32 46, float %567, float %5185, float %5249)  ; FMad(a,b,c)
  %5251 = fadd fast float %5250, %5186
  %5252 = fmul fast float %5188, %565
  %5253 = call float @dx.op.tertiary.f32(i32 46, float %566, float %5189, float %5252)  ; FMad(a,b,c)
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %567, float %5190, float %5253)  ; FMad(a,b,c)
  %5255 = fadd fast float %5254, %5191
  %5256 = fmul fast float %5193, %565
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %566, float %5194, float %5256)  ; FMad(a,b,c)
  %5258 = call float @dx.op.tertiary.f32(i32 46, float %567, float %5195, float %5257)  ; FMad(a,b,c)
  %5259 = fadd fast float %5258, %5196
  %5260 = fdiv fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5260, %5251
  %5262 = fmul fast float %5260, %5255
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5266 = fmul fast float %5261, %5264
  %5267 = fmul fast float %5262, %5265
  %5268 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5269 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5270 = fadd fast float %5266, %5268
  %5271 = fadd fast float %5267, %5269
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5274 = fmul fast float %5273, %3305
  %5275 = fmul fast float %5273, %3306
  %5276 = fmul fast float %5273, %3307
  %5277 = fadd fast float %5274, %565
  %5278 = fadd fast float %5275, %566
  %5279 = fadd fast float %5276, %567
  %5280 = fmul fast float %5277, %5183
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5184, float %5280)  ; FMad(a,b,c)
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5185, float %5281)  ; FMad(a,b,c)
  %5283 = fadd fast float %5282, %5186
  %5284 = fmul fast float %5277, %5188
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5189, float %5284)  ; FMad(a,b,c)
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5190, float %5285)  ; FMad(a,b,c)
  %5287 = fadd fast float %5286, %5191
  %5288 = fmul fast float %5277, %5193
  %5289 = call float @dx.op.tertiary.f32(i32 46, float %5278, float %5194, float %5288)  ; FMad(a,b,c)
  %5290 = call float @dx.op.tertiary.f32(i32 46, float %5279, float %5195, float %5289)  ; FMad(a,b,c)
  %5291 = fadd fast float %5290, %5196
  %5292 = fdiv fast float 1.000000e+00, %5291
  %5293 = fmul fast float %5292, %5283
  %5294 = fmul fast float %5292, %5287
  %5295 = fmul fast float %5270, 2.000000e+00
  %5296 = fadd fast float %5295, -1.000000e+00
  %5297 = call float @dx.op.unary.f32(i32 6, float %5296)  ; FAbs(value)
  %5298 = fmul fast float %5297, 5.000000e+00
  %5299 = fadd fast float %5298, -4.000000e+00
  %5300 = call float @dx.op.unary.f32(i32 7, float %5299)  ; Saturate(value)
  %5301 = fsub fast float %5261, %5293
  %5302 = fmul fast float %5264, %5301
  %5303 = fmul fast float %5302, %5300
  %5304 = fsub fast float %5293, %5261
  %5305 = fmul fast float %5264, %5304
  %5306 = fadd fast float %5305, %5303
  %5307 = fsub fast float %5294, %5262
  %5308 = fmul fast float %5265, %5307
  %5309 = fmul fast float %5306, %5243
  %5310 = fmul fast float %5308, %5243
  %5311 = fadd fast float %5309, %5270
  %5312 = fadd fast float %5310, %5271
  %5313 = fsub fast float %5292, %5260
  %5314 = fmul fast float %5313, %5243
  %5315 = fadd fast float %5314, %5260
  %5316 = fdiv fast float 1.000000e+00, %5315
  %5317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %65, float %5311, float %5312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5322 = extractvalue %dx.types.CBufRet.f32 %5321, 1
  %5323 = fmul fast float %5322, %5318
  %5324 = fmul fast float %5322, %5319
  %5325 = fmul fast float %5322, %5320
  %5326 = call float @dx.op.binary.f32(i32 35, float %5316, float 0x3810000000000000)  ; FMax(a,b)
  %5327 = fdiv fast float %5259, %5326
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.CBufRet.f32 %5329, 1
  %5332 = extractvalue %dx.types.CBufRet.f32 %5329, 2
  %5333 = fadd fast float %5330, %565
  %5334 = fadd fast float %5331, %566
  %5335 = fadd fast float %5332, %567
  %5336 = fmul fast float %5333, %5198
  %5337 = call float @dx.op.tertiary.f32(i32 46, float %5334, float %5199, float %5336)  ; FMad(a,b,c)
  %5338 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5200, float %5337)  ; FMad(a,b,c)
  %5339 = fadd fast float %5338, %5201
  %5340 = fmul fast float %5333, %5203
  %5341 = call float @dx.op.tertiary.f32(i32 46, float %5334, float %5204, float %5340)  ; FMad(a,b,c)
  %5342 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5205, float %5341)  ; FMad(a,b,c)
  %5343 = fadd fast float %5342, %5206
  %5344 = fmul fast float %5333, %5208
  %5345 = call float @dx.op.tertiary.f32(i32 46, float %5334, float %5209, float %5344)  ; FMad(a,b,c)
  %5346 = call float @dx.op.tertiary.f32(i32 46, float %5335, float %5210, float %5345)  ; FMad(a,b,c)
  %5347 = fadd fast float %5346, %5211
  %5348 = fdiv fast float 1.000000e+00, %5347
  %5349 = fmul fast float %5348, %5339
  %5350 = fmul fast float %5348, %5343
  %5351 = fmul fast float %5349, %5264
  %5352 = fmul fast float %5350, %5265
  %5353 = fadd fast float %5351, %5268
  %5354 = fadd fast float %5352, %5269
  %5355 = fadd fast float %5274, %5333
  %5356 = fadd fast float %5275, %5334
  %5357 = fadd fast float %5276, %5335
  %5358 = fmul fast float %5355, %5198
  %5359 = call float @dx.op.tertiary.f32(i32 46, float %5356, float %5199, float %5358)  ; FMad(a,b,c)
  %5360 = call float @dx.op.tertiary.f32(i32 46, float %5357, float %5200, float %5359)  ; FMad(a,b,c)
  %5361 = fadd fast float %5360, %5201
  %5362 = fmul fast float %5355, %5203
  %5363 = call float @dx.op.tertiary.f32(i32 46, float %5356, float %5204, float %5362)  ; FMad(a,b,c)
  %5364 = call float @dx.op.tertiary.f32(i32 46, float %5357, float %5205, float %5363)  ; FMad(a,b,c)
  %5365 = fadd fast float %5364, %5206
  %5366 = fmul fast float %5355, %5208
  %5367 = call float @dx.op.tertiary.f32(i32 46, float %5356, float %5209, float %5366)  ; FMad(a,b,c)
  %5368 = call float @dx.op.tertiary.f32(i32 46, float %5357, float %5210, float %5367)  ; FMad(a,b,c)
  %5369 = fadd fast float %5368, %5211
  %5370 = fdiv fast float 1.000000e+00, %5369
  %5371 = fmul fast float %5370, %5361
  %5372 = fmul fast float %5370, %5365
  %5373 = fmul fast float %5353, 2.000000e+00
  %5374 = fadd fast float %5373, -1.000000e+00
  %5375 = call float @dx.op.unary.f32(i32 6, float %5374)  ; FAbs(value)
  %5376 = fmul fast float %5375, 5.000000e+00
  %5377 = fadd fast float %5376, -4.000000e+00
  %5378 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5379 = fsub fast float %5349, %5371
  %5380 = fmul fast float %5264, %5379
  %5381 = fmul fast float %5380, %5378
  %5382 = fsub fast float %5371, %5349
  %5383 = fmul fast float %5264, %5382
  %5384 = fadd fast float %5383, %5381
  %5385 = fsub fast float %5372, %5350
  %5386 = fmul fast float %5265, %5385
  %5387 = fmul fast float %5384, %5243
  %5388 = fmul fast float %5386, %5243
  %5389 = fadd fast float %5387, %5353
  %5390 = fadd fast float %5388, %5354
  %5391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %65, float %5389, float %5390, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5395 = extractvalue %dx.types.CBufRet.f32 %5321, 2
  %5396 = fmul fast float %5395, %5392
  %5397 = fmul fast float %5395, %5393
  %5398 = fmul fast float %5395, %5394
  %5399 = and i32 %3144, 255
  %5400 = uitofp i32 %5399 to float
  %5401 = fmul fast float %5400, 0x3F70101020000000
  %5402 = fmul fast float %5401, %5328
  %5403 = extractvalue %dx.types.CBufRet.f32 %5213, 2
  %5404 = fadd fast float %5403, %5402
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = call float @dx.op.binary.f32(i32 35, float %5323, float 0x3810000000000000)  ; FMax(a,b)
  %5407 = call float @dx.op.binary.f32(i32 35, float %5324, float 0x3810000000000000)  ; FMax(a,b)
  %5408 = call float @dx.op.binary.f32(i32 35, float %5325, float 0x3810000000000000)  ; FMax(a,b)
  %5409 = call float @dx.op.unary.f32(i32 23, float %5406)  ; Log(value)
  %5410 = call float @dx.op.unary.f32(i32 23, float %5407)  ; Log(value)
  %5411 = call float @dx.op.unary.f32(i32 23, float %5408)  ; Log(value)
  %5412 = call float @dx.op.binary.f32(i32 35, float %5396, float 0x3810000000000000)  ; FMax(a,b)
  %5413 = call float @dx.op.binary.f32(i32 35, float %5397, float 0x3810000000000000)  ; FMax(a,b)
  %5414 = call float @dx.op.binary.f32(i32 35, float %5398, float 0x3810000000000000)  ; FMax(a,b)
  %5415 = call float @dx.op.unary.f32(i32 23, float %5412)  ; Log(value)
  %5416 = call float @dx.op.unary.f32(i32 23, float %5413)  ; Log(value)
  %5417 = call float @dx.op.unary.f32(i32 23, float %5414)  ; Log(value)
  %5418 = fsub fast float %5409, %5415
  %5419 = fsub fast float %5410, %5416
  %5420 = fsub fast float %5411, %5417
  %5421 = fmul fast float %5418, %5405
  %5422 = fmul fast float %5419, %5405
  %5423 = fmul fast float %5420, %5405
  %5424 = fadd fast float %5421, %5415
  %5425 = fadd fast float %5422, %5416
  %5426 = fadd fast float %5423, %5417
  %5427 = call float @dx.op.unary.f32(i32 21, float %5424)  ; Exp(value)
  %5428 = call float @dx.op.unary.f32(i32 21, float %5425)  ; Exp(value)
  %5429 = call float @dx.op.unary.f32(i32 21, float %5426)  ; Exp(value)
  %5430 = select i1 %3298, float 0.000000e+00, float %5428
  %5431 = select i1 %3298, float 0.000000e+00, float %5429
  %5432 = fmul fast float %5390, 2.000000e+00
  %5433 = fadd fast float %5432, -1.000000e+00
  %5434 = fmul fast float %5433, %5433
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = call float @dx.op.unary.f32(i32 7, float %5435)  ; Saturate(value)
  %5437 = call float @dx.op.unary.f32(i32 7, float %5436)  ; Saturate(value)
  %5438 = fmul fast float %5437, %5245
  br label %5439

; <label>:5439                                    ; preds = %5247, %5221, %5181
  %5440 = phi float [ %5427, %5247 ], [ 0.000000e+00, %5221 ], [ 0.000000e+00, %5181 ]
  %5441 = phi float [ %5430, %5247 ], [ 0.000000e+00, %5221 ], [ 0.000000e+00, %5181 ]
  %5442 = phi float [ %5431, %5247 ], [ 0.000000e+00, %5221 ], [ 0.000000e+00, %5181 ]
  %5443 = phi float [ %5438, %5247 ], [ 0.000000e+00, %5221 ], [ 0.000000e+00, %5181 ]
  %5444 = phi float [ %5243, %5247 ], [ %5243, %5221 ], [ 0.000000e+00, %5181 ]
  %5445 = phi float [ %5438, %5247 ], [ %5245, %5221 ], [ 0.000000e+00, %5181 ]
  %5446 = icmp eq i32 %5164, 25
  br i1 %5446, label %5447, label %5450

; <label>:5447                                    ; preds = %5439
  %5448 = call float @dx.op.unary.f32(i32 6, float %5444)  ; FAbs(value)
  %5449 = bitcast float %5448 to i32
  br label %5450

; <label>:5450                                    ; preds = %5447, %5439
  %5451 = phi i32 [ %5449, %5447 ], [ %5178, %5439 ]
  %5452 = icmp eq i32 %5164, 26
  %5453 = bitcast float %5445 to i32
  %5454 = select i1 %5452, i32 %5453, i32 %5451
  %5455 = icmp eq i32 %5164, 27
  %5456 = select i1 %5455, i32 0, i32 %5454
  %5457 = fcmp fast olt float %5443, 1.000000e+00
  %5458 = or i1 %5457, %5179
  %5459 = zext i1 %5458 to i32
  %5460 = fmul fast float %5443, %5152
  %5461 = fsub fast float %5443, %5460
  %5462 = fmul fast float %5461, %5440
  %5463 = fmul fast float %5461, %5441
  %5464 = fmul fast float %5461, %5442
  br label %5465

; <label>:5465                                    ; preds = %5450, %5177
  %5466 = phi i32 [ %5178, %5177 ], [ %5456, %5450 ]
  %5467 = phi float [ 0.000000e+00, %5177 ], [ %5461, %5450 ]
  %5468 = phi float [ 0.000000e+00, %5177 ], [ %5462, %5450 ]
  %5469 = phi float [ 0.000000e+00, %5177 ], [ %5463, %5450 ]
  %5470 = phi float [ 0.000000e+00, %5177 ], [ %5464, %5450 ]
  %5471 = phi i32 [ %5180, %5177 ], [ %5459, %5450 ]
  %5472 = icmp ne i32 %5471, 0
  %5473 = add i32 %5164, -13
  %5474 = icmp ult i32 %5473, 2
  %5475 = or i1 %5474, %5472
  %5476 = icmp eq i32 %5164, 22
  %5477 = or i1 %5475, %5476
  br i1 %5477, label %5478, label %6212

; <label>:5478                                    ; preds = %5465
  %5479 = select i1 %5147, float %4330, float 1.000000e+00
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5483 = fmul fast float %5481, %93
  %5484 = fmul fast float %5482, %94
  %5485 = fptoui float %5483 to i32
  %5486 = fptoui float %5484 to i32
  %5487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.f32 %5487, 0
  %5489 = extractvalue %dx.types.CBufRet.f32 %5487, 2
  %5490 = extractvalue %dx.types.CBufRet.f32 %5487, 3
  %5491 = fadd fast float %526, -4.000000e+00
  %5492 = call float @dx.op.binary.f32(i32 35, float %5491, float 0.000000e+00)  ; FMax(a,b)
  %5493 = fadd fast float %5492, %5488
  %5494 = fmul fast float %5493, %5489
  %5495 = call float @dx.op.unary.f32(i32 23, float %5494)  ; Log(value)
  %5496 = fmul fast float %5495, %5490
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 2
  %5499 = fmul fast float %5496, %5498
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5502 = extractvalue %dx.types.CBufRet.i32 %5501, 1
  %5503 = add i32 %5502, -1
  %5504 = uitofp i32 %5502 to float
  %5505 = fmul fast float %5504, %5500
  %5506 = fptoui float %5505 to i32
  %5507 = call i32 @dx.op.binary.i32(i32 40, i32 %5506, i32 %5503)  ; UMin(a,b)
  %5508 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.i32 %5508, 2
  %5510 = extractvalue %dx.types.CBufRet.i32 %5508, 3
  %5511 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5486, i32 %5509, i32 %5485)  ; UMad(a,b,c)
  %5512 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5507, i32 %5510, i32 %5511)  ; UMad(a,b,c)
  %5513 = call float @dx.op.binary.f32(i32 35, float %526, float 0.000000e+00)  ; FMax(a,b)
  %5514 = fptoui float %5513 to i32
  %5515 = lshr i32 %5514, 5
  %5516 = call i32 @dx.op.binary.i32(i32 40, i32 %5515, i32 8191)  ; UMin(a,b)
  %5517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5518 = extractvalue %dx.types.CBufRet.i32 %5517, 2
  %5519 = add nsw i32 %5518, -1
  %5520 = call i32 @dx.op.binary.i32(i32 37, i32 %5519, i32 0)  ; IMax(a,b)
  %5521 = shl i32 %5516, 2
  %5522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %5521, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.i32 %5522, 0
  %5524 = lshr i32 %5523, 16
  %5525 = and i32 %5523, 65535
  %5526 = lshr i32 %5523, 21
  %5527 = lshr i32 %5525, 5
  %5528 = call i32 @dx.op.binary.i32(i32 40, i32 %5527, i32 %5520)  ; UMin(a,b)
  %5529 = icmp ugt i32 %5526, %5528
  br i1 %5529, label %6124, label %5530

; <label>:5530                                    ; preds = %5478
  br label %5531

; <label>:5531                                    ; preds = %6106, %5530
  %5532 = phi i32 [ %6107, %6106 ], [ %5142, %5530 ]
  %5533 = phi i32 [ %6108, %6106 ], [ %5466, %5530 ]
  %5534 = phi float [ %6109, %6106 ], [ 0.000000e+00, %5530 ]
  %5535 = phi float [ %6110, %6106 ], [ 0.000000e+00, %5530 ]
  %5536 = phi float [ %6111, %6106 ], [ 0.000000e+00, %5530 ]
  %5537 = phi float [ %6112, %6106 ], [ 0.000000e+00, %5530 ]
  %5538 = phi float [ %6113, %6106 ], [ 0.000000e+00, %5530 ]
  %5539 = phi float [ %6114, %6106 ], [ 0.000000e+00, %5530 ]
  %5540 = phi i32 [ %6115, %6106 ], [ 0, %5530 ]
  %5541 = phi float [ %6116, %6106 ], [ 0.000000e+00, %5530 ]
  %5542 = phi float [ %6117, %6106 ], [ 0.000000e+00, %5530 ]
  %5543 = phi float [ %6118, %6106 ], [ 0.000000e+00, %5530 ]
  %5544 = phi i32 [ %6119, %6106 ], [ 1, %5530 ]
  %5545 = phi float [ %6120, %6106 ], [ 1.000000e+00, %5530 ]
  %5546 = phi i32 [ %6121, %6106 ], [ %5526, %5530 ]
  %5547 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5548 = extractvalue %dx.types.CBufRet.i32 %5547, 2
  %5549 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5512, i32 %5548, i32 %5546)  ; UMad(a,b,c)
  %5550 = shl i32 %5549, 2
  %5551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %5550, i32 undef)  ; BufferLoad(srv,index,wot)
  %5552 = extractvalue %dx.types.ResRet.i32 %5551, 0
  %5553 = shl i32 %5546, 5
  %5554 = sub nsw i32 %5524, %5553
  %5555 = call i32 @dx.op.binary.i32(i32 37, i32 %5554, i32 0)  ; IMax(a,b)
  %5556 = call i32 @dx.op.binary.i32(i32 38, i32 %5555, i32 31)  ; IMin(a,b)
  %5557 = sub nsw i32 1, %5524
  %5558 = add nsw i32 %5557, %5525
  %5559 = call i32 @dx.op.binary.i32(i32 37, i32 %5558, i32 0)  ; IMax(a,b)
  %5560 = call i32 @dx.op.binary.i32(i32 38, i32 %5559, i32 32)  ; IMin(a,b)
  %5561 = and i32 %5560, 31
  %5562 = shl i32 -1, %5561
  %5563 = xor i32 %5562, -1
  %5564 = and i32 %5556, 31
  %5565 = shl i32 %5563, %5564
  %5566 = icmp eq i32 %5560, 32
  %5567 = select i1 %5566, i32 -1, i32 %5565
  %5568 = and i32 %5567, %5552
  %5569 = icmp eq i32 %5568, 0
  br i1 %5569, label %6106, label %5570

; <label>:5570                                    ; preds = %5531
  br label %5571

; <label>:5571                                    ; preds = %5708, %5570
  %5572 = phi i32 [ %5709, %5708 ], [ %5532, %5570 ]
  %5573 = phi i32 [ %5710, %5708 ], [ %5533, %5570 ]
  %5574 = phi float [ %5711, %5708 ], [ %5534, %5570 ]
  %5575 = phi float [ %5712, %5708 ], [ %5535, %5570 ]
  %5576 = phi float [ %5713, %5708 ], [ %5536, %5570 ]
  %5577 = phi float [ %5714, %5708 ], [ %5537, %5570 ]
  %5578 = phi float [ %5715, %5708 ], [ %5538, %5570 ]
  %5579 = phi float [ %5716, %5708 ], [ %5539, %5570 ]
  %5580 = phi i32 [ %5717, %5708 ], [ %5540, %5570 ]
  %5581 = phi float [ %5718, %5708 ], [ %5541, %5570 ]
  %5582 = phi float [ %5719, %5708 ], [ %5542, %5570 ]
  %5583 = phi float [ %5720, %5708 ], [ %5543, %5570 ]
  %5584 = phi i32 [ %5721, %5708 ], [ %5544, %5570 ]
  %5585 = phi float [ %5722, %5708 ], [ %5545, %5570 ]
  %5586 = phi i32 [ %5591, %5708 ], [ %5568, %5570 ]
  %5587 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5586)  ; FirstbitLo(value)
  %5588 = add i32 %5587, %5553
  %5589 = and i32 %5587, 31
  %5590 = shl i32 1, %5589
  %5591 = xor i32 %5590, %5586
  %5592 = mul i32 %5588, 72
  %5593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 0
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 1
  %5596 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5597 = add i32 %5592, 12
  %5598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %41, i32 %5597, i32 undef)  ; BufferLoad(srv,index,wot)
  %5599 = extractvalue %dx.types.ResRet.i32 %5598, 0
  %5600 = add i32 %5592, 16
  %5601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5600, i32 undef)  ; BufferLoad(srv,index,wot)
  %5602 = extractvalue %dx.types.ResRet.f32 %5601, 0
  %5603 = extractvalue %dx.types.ResRet.f32 %5601, 1
  %5604 = extractvalue %dx.types.ResRet.f32 %5601, 2
  %5605 = add i32 %5592, 28
  %5606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5605, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.f32 %5606, 0
  %5608 = add i32 %5592, 32
  %5609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5608, i32 undef)  ; BufferLoad(srv,index,wot)
  %5610 = extractvalue %dx.types.ResRet.f32 %5609, 0
  %5611 = extractvalue %dx.types.ResRet.f32 %5609, 1
  %5612 = extractvalue %dx.types.ResRet.f32 %5609, 2
  %5613 = extractvalue %dx.types.ResRet.f32 %5609, 3
  %5614 = add i32 %5592, 48
  %5615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5614, i32 undef)  ; BufferLoad(srv,index,wot)
  %5616 = extractvalue %dx.types.ResRet.f32 %5615, 0
  %5617 = extractvalue %dx.types.ResRet.f32 %5615, 1
  %5618 = add i32 %5592, 56
  %5619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5618, i32 undef)  ; BufferLoad(srv,index,wot)
  %5620 = extractvalue %dx.types.ResRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.ResRet.f32 %5619, 1
  %5622 = add i32 %5592, 64
  %5623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %41, i32 %5622, i32 undef)  ; BufferLoad(srv,index,wot)
  %5624 = extractvalue %dx.types.ResRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.ResRet.f32 %5623, 1
  %5626 = mul i32 %5588, 60
  %5627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5626, i32 undef)  ; BufferLoad(srv,index,wot)
  %5628 = extractvalue %dx.types.ResRet.f32 %5627, 0
  %5629 = extractvalue %dx.types.ResRet.f32 %5627, 1
  %5630 = extractvalue %dx.types.ResRet.f32 %5627, 2
  %5631 = add i32 %5626, 12
  %5632 = add i32 %5626, 48
  %5633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5632, i32 undef)  ; BufferLoad(srv,index,wot)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 0
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 1
  %5636 = extractvalue %dx.types.ResRet.f32 %5633, 2
  %5637 = and i32 %5599, 32767
  %5638 = bitcast float %5594 to i32
  %5639 = bitcast float %5595 to i32
  %5640 = and i32 %5599, 32768
  %5641 = icmp ne i32 %5640, 0
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5648 = fsub fast float %5628, %5645
  %5649 = fsub fast float %5629, %5646
  %5650 = fsub fast float %5630, %5647
  %5651 = fsub fast float %565, %5648
  %5652 = fsub fast float %566, %5649
  %5653 = fsub fast float %567, %5650
  %5654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5631, i32 undef)  ; BufferLoad(srv,index,wot)
  %5655 = extractvalue %dx.types.ResRet.f32 %5654, 0
  %5656 = extractvalue %dx.types.ResRet.f32 %5654, 1
  %5657 = extractvalue %dx.types.ResRet.f32 %5654, 2
  %5658 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5655, float %5656, float %5657)  ; Dot3(ax,ay,az,bx,by,bz)
  %5659 = add i32 %5626, 24
  %5660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5659, i32 undef)  ; BufferLoad(srv,index,wot)
  %5661 = extractvalue %dx.types.ResRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.ResRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.ResRet.f32 %5660, 2
  %5664 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5661, float %5662, float %5663)  ; Dot3(ax,ay,az,bx,by,bz)
  %5665 = add i32 %5626, 36
  %5666 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %40, i32 %5665, i32 undef)  ; BufferLoad(srv,index,wot)
  %5667 = extractvalue %dx.types.ResRet.f32 %5666, 0
  %5668 = extractvalue %dx.types.ResRet.f32 %5666, 1
  %5669 = extractvalue %dx.types.ResRet.f32 %5666, 2
  %5670 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5667, float %5668, float %5669)  ; Dot3(ax,ay,az,bx,by,bz)
  %5671 = call float @dx.op.unary.f32(i32 6, float %5658)  ; FAbs(value)
  %5672 = call float @dx.op.unary.f32(i32 6, float %5664)  ; FAbs(value)
  %5673 = call float @dx.op.unary.f32(i32 6, float %5670)  ; FAbs(value)
  %5674 = fsub fast float %5634, %5671
  %5675 = fsub fast float %5635, %5672
  %5676 = fsub fast float %5636, %5673
  %5677 = fmul fast float %5674, %5602
  %5678 = fmul fast float %5675, %5603
  %5679 = fmul fast float %5676, %5604
  %5680 = call float @dx.op.binary.f32(i32 36, float %5678, float %5679)  ; FMin(a,b)
  %5681 = call float @dx.op.binary.f32(i32 36, float %5677, float %5680)  ; FMin(a,b)
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = call float @dx.op.binary.f32(i32 36, float %5585, float %5682)  ; FMin(a,b)
  %5684 = uitofp i1 %5641 to float
  %5685 = select i1 %105, float 1.000000e+00, float 2.000000e+00
  %5686 = fsub fast float %5685, %5684
  %5687 = fmul fast float %5683, %5686
  %5688 = lshr i32 %5572, 8
  %5689 = and i32 %5688, 255
  %5690 = uitofp i32 %5689 to float
  %5691 = fptoui float %5690 to i32
  %5692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %5693 = extractvalue %dx.types.CBufRet.f32 %5692, 1
  %5694 = bitcast float %5693 to i32
  %5695 = lshr i32 %5694, 24
  %5696 = uitofp i32 %5695 to float
  %5697 = fptoui float %5696 to i32
  %5698 = icmp ne i32 %5697, 1
  %5699 = zext i1 %5698 to i32
  %5700 = add i32 %5699, %5691
  %5701 = uitofp i32 %5700 to float
  %5702 = fptoui float %5701 to i32
  %5703 = shl i32 %5702, 8
  %5704 = and i32 %5703, 65280
  %5705 = and i32 %5572, -65281
  %5706 = or i32 %5704, %5705
  %5707 = fcmp fast ogt float %5687, 0.000000e+00
  br i1 %5707, label %5724, label %5708

; <label>:5708                                    ; preds = %6088, %5957, %5571
  %5709 = phi i32 [ %6035, %5957 ], [ %5706, %5571 ], [ %6035, %6088 ]
  %5710 = phi i32 [ %5573, %5957 ], [ %5573, %5571 ], [ %6104, %6088 ]
  %5711 = phi float [ %6021, %5957 ], [ %5574, %5571 ], [ %6021, %6088 ]
  %5712 = phi float [ %6022, %5957 ], [ %5575, %5571 ], [ %6022, %6088 ]
  %5713 = phi float [ %6023, %5957 ], [ %5576, %5571 ], [ %6023, %6088 ]
  %5714 = phi float [ %6082, %5957 ], [ %5577, %5571 ], [ %6082, %6088 ]
  %5715 = phi float [ %6083, %5957 ], [ %5578, %5571 ], [ %6083, %6088 ]
  %5716 = phi float [ %6084, %5957 ], [ %5579, %5571 ], [ %6084, %6088 ]
  %5717 = phi i32 [ %6086, %5957 ], [ %5580, %5571 ], [ %6086, %6088 ]
  %5718 = phi float [ %6039, %5957 ], [ %5581, %5571 ], [ %6039, %6088 ]
  %5719 = phi float [ %6040, %5957 ], [ %5582, %5571 ], [ %6040, %6088 ]
  %5720 = phi float [ %6041, %5957 ], [ %5583, %5571 ], [ %6041, %6088 ]
  %5721 = phi i32 [ 0, %5957 ], [ %5584, %5571 ], [ 0, %6088 ]
  %5722 = phi float [ %6024, %5957 ], [ %5585, %5571 ], [ %6024, %6088 ]
  %5723 = icmp eq i32 %5586, %5590
  br i1 %5723, label %6105, label %5571

; <label>:5724                                    ; preds = %5571
  %5725 = extractvalue %dx.types.CBufRet.f32 %5692, 0
  %5726 = bitcast float %5725 to i32
  %5727 = lshr i32 %5726, 8
  %5728 = and i32 %5727, 255
  %5729 = uitofp i32 %5728 to float
  %5730 = fptoui float %5729 to i32
  %5731 = and i32 %5730, 2
  %5732 = icmp eq i32 %5731, 0
  br i1 %5732, label %5739, label %5733

; <label>:5733                                    ; preds = %5724
  %5734 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %567, float %565, float %566, float %567)  ; Dot3(ax,ay,az,bx,by,bz)
  %5735 = call float @dx.op.unary.f32(i32 25, float %5734)  ; Rsqrt(value)
  %5736 = fmul fast float %5735, %565
  %5737 = fmul fast float %5735, %566
  %5738 = fmul fast float %5735, %567
  br label %5739

; <label>:5739                                    ; preds = %5733, %5724
  %5740 = phi float [ %5736, %5733 ], [ %3305, %5724 ]
  %5741 = phi float [ %5737, %5733 ], [ %3306, %5724 ]
  %5742 = phi float [ %5738, %5733 ], [ %3307, %5724 ]
  %5743 = icmp ne i32 %5638, -1
  %5744 = fcmp oeq float %5643, 0.000000e+00
  %5745 = and i1 %5744, %5743
  br i1 %5745, label %5746, label %5870

; <label>:5746                                    ; preds = %5739
  %5747 = fsub fast float -0.000000e+00, %5655
  %5748 = fsub fast float -0.000000e+00, %5656
  %5749 = fsub fast float -0.000000e+00, %5657
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = fsub fast float -0.000000e+00, %5750
  %5752 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = fadd fast float %5752, %5617
  %5754 = fadd fast float %5616, %5752
  %5755 = fsub fast float -0.000000e+00, %5754
  %5756 = fcmp ogt float %5750, -0.000000e+00
  %5757 = select i1 %5756, float %5755, float %5753
  %5758 = call float @dx.op.unary.f32(i32 6, float %5751)  ; FAbs(value)
  %5759 = fdiv fast float 1.000000e+00, %5758
  %5760 = fmul fast float %5757, %5759
  %5761 = call float @dx.op.binary.f32(i32 35, float %5760, float 0.000000e+00)  ; FMax(a,b)
  %5762 = fsub fast float -0.000000e+00, %5661
  %5763 = fsub fast float -0.000000e+00, %5662
  %5764 = fsub fast float -0.000000e+00, %5663
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5762, float %5763, float %5764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fsub fast float -0.000000e+00, %5765
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5762, float %5763, float %5764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = fadd fast float %5767, %5621
  %5769 = fadd fast float %5620, %5767
  %5770 = fsub fast float -0.000000e+00, %5769
  %5771 = fcmp ogt float %5765, -0.000000e+00
  %5772 = select i1 %5771, float %5770, float %5768
  %5773 = call float @dx.op.unary.f32(i32 6, float %5766)  ; FAbs(value)
  %5774 = fdiv fast float 1.000000e+00, %5773
  %5775 = fmul fast float %5772, %5774
  %5776 = call float @dx.op.binary.f32(i32 35, float %5775, float 0.000000e+00)  ; FMax(a,b)
  %5777 = fsub fast float -0.000000e+00, %5667
  %5778 = fsub fast float -0.000000e+00, %5668
  %5779 = fsub fast float -0.000000e+00, %5669
  %5780 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5781 = fsub fast float -0.000000e+00, %5780
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5651, float %5652, float %5653, float %5777, float %5778, float %5779)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = fadd fast float %5782, %5625
  %5784 = fadd fast float %5624, %5782
  %5785 = fsub fast float -0.000000e+00, %5784
  %5786 = fcmp ogt float %5780, -0.000000e+00
  %5787 = select i1 %5786, float %5785, float %5783
  %5788 = call float @dx.op.unary.f32(i32 6, float %5781)  ; FAbs(value)
  %5789 = fdiv fast float 1.000000e+00, %5788
  %5790 = fmul fast float %5787, %5789
  %5791 = call float @dx.op.binary.f32(i32 35, float %5790, float 0.000000e+00)  ; FMax(a,b)
  %5792 = call float @dx.op.binary.f32(i32 36, float %5776, float %5791)  ; FMin(a,b)
  %5793 = call float @dx.op.binary.f32(i32 36, float %5761, float %5792)  ; FMin(a,b)
  %5794 = fmul fast float %5793, %5740
  %5795 = fmul fast float %5793, %5741
  %5796 = fmul fast float %5793, %5742
  %5797 = fadd fast float %5794, %565
  %5798 = fadd fast float %5795, %566
  %5799 = fadd fast float %5796, %567
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5804 = fadd fast float %5797, %5801
  %5805 = fadd fast float %5798, %5802
  %5806 = fadd fast float %5799, %5803
  %5807 = fcmp fast olt float %5761, %5776
  %5808 = fcmp fast olt float %5761, %5791
  %5809 = and i1 %5807, %5808
  br i1 %5809, label %5813, label %5810

; <label>:5810                                    ; preds = %5746
  %5811 = fcmp fast olt float %5776, %5791
  br i1 %5811, label %5812, label %5813

; <label>:5812                                    ; preds = %5810
  br label %5813

; <label>:5813                                    ; preds = %5812, %5810, %5746
  %5814 = phi float [ 0.000000e+00, %5812 ], [ 0.000000e+00, %5810 ], [ 1.000000e+00, %5746 ]
  %5815 = phi float [ 1.000000e+00, %5812 ], [ 0.000000e+00, %5810 ], [ 0.000000e+00, %5746 ]
  %5816 = phi float [ 0.000000e+00, %5812 ], [ 1.000000e+00, %5810 ], [ 0.000000e+00, %5746 ]
  %5817 = phi float [ %5661, %5812 ], [ %5667, %5810 ], [ %5655, %5746 ]
  %5818 = phi float [ %5662, %5812 ], [ %5668, %5810 ], [ %5656, %5746 ]
  %5819 = phi float [ %5663, %5812 ], [ %5669, %5810 ], [ %5657, %5746 ]
  %5820 = call float @dx.op.unary.f32(i32 6, float %5819)  ; FAbs(value)
  %5821 = fcmp fast olt float %5820, 0x3FE276C8C0000000
  %5822 = select i1 %5821, float 0.000000e+00, float 1.000000e+00
  %5823 = select i1 %5821, float 1.000000e+00, float 0.000000e+00
  %5824 = fmul fast float %5823, %5818
  %5825 = fmul fast float %5822, %5819
  %5826 = fsub fast float %5824, %5825
  %5827 = fmul fast float %5817, %5823
  %5828 = fsub fast float -0.000000e+00, %5827
  %5829 = fmul fast float %5822, %5817
  %5830 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5828, float %5829, float %5826, float %5828, float %5829)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.unary.f32(i32 25, float %5830)  ; Rsqrt(value)
  %5832 = fmul fast float %5826, %5831
  %5833 = fmul fast float %5831, %5828
  %5834 = fmul fast float %5829, %5831
  %5835 = fmul fast float %5834, %5818
  %5836 = fmul fast float %5833, %5819
  %5837 = fsub fast float %5835, %5836
  %5838 = fmul fast float %5832, %5819
  %5839 = fmul fast float %5834, %5817
  %5840 = fsub fast float %5838, %5839
  %5841 = fmul fast float %5833, %5817
  %5842 = fmul fast float %5832, %5818
  %5843 = fsub fast float %5841, %5842
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5840, float %5843, float %5837, float %5840, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.unary.f32(i32 25, float %5844)  ; Rsqrt(value)
  %5846 = fmul fast float %5837, %5845
  %5847 = fmul fast float %5840, %5845
  %5848 = fmul fast float %5843, %5845
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5832, float %5833, float %5834)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = call float @dx.op.dot3.f32(i32 55, float %5804, float %5805, float %5806, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fmul fast float %5849, 0x3FA99999A0000000
  %5852 = fmul fast float %5850, 0x3FA99999A0000000
  %5853 = call float @dx.op.unary.f32(i32 22, float %5851)  ; Frc(value)
  %5854 = call float @dx.op.unary.f32(i32 22, float %5852)  ; Frc(value)
  %5855 = fadd fast float %5853, 0xBFB99999A0000000
  %5856 = fadd fast float %5854, 0xBFB99999A0000000
  %5857 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5858 = call float @dx.op.unary.f32(i32 6, float %5856)  ; FAbs(value)
  %5859 = fmul fast float %5857, 1.000000e+01
  %5860 = fmul fast float %5858, 1.000000e+01
  %5861 = call float @dx.op.binary.f32(i32 36, float %5859, float %5860)  ; FMin(a,b)
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = fsub fast float 1.000000e+00, %5862
  %5864 = fmul fast float %5863, %5814
  %5865 = fmul fast float %5863, %5815
  %5866 = fmul fast float %5863, %5816
  %5867 = fsub fast float %5797, %5594
  %5868 = fsub fast float %5798, %5595
  %5869 = fsub fast float %5799, %5596
  br label %5877

; <label>:5870                                    ; preds = %5739
  %5871 = fmul fast float %5740, 8.096000e+03
  %5872 = fmul fast float %5741, 8.096000e+03
  %5873 = fmul fast float %5742, 8.096000e+03
  %5874 = fadd fast float %5871, %565
  %5875 = fadd fast float %5872, %566
  %5876 = fadd fast float %5873, %567
  br label %5877

; <label>:5877                                    ; preds = %5870, %5813
  %5878 = phi float [ %5740, %5870 ], [ %5867, %5813 ]
  %5879 = phi float [ %5741, %5870 ], [ %5868, %5813 ]
  %5880 = phi float [ %5742, %5870 ], [ %5869, %5813 ]
  %5881 = phi float [ %5874, %5870 ], [ %5797, %5813 ]
  %5882 = phi float [ %5875, %5870 ], [ %5798, %5813 ]
  %5883 = phi float [ %5876, %5870 ], [ %5799, %5813 ]
  %5884 = phi float [ 0.000000e+00, %5870 ], [ %5864, %5813 ]
  %5885 = phi float [ 0.000000e+00, %5870 ], [ %5865, %5813 ]
  %5886 = phi float [ 0.000000e+00, %5870 ], [ %5866, %5813 ]
  %5887 = fcmp fast olt float %5613, 1.000000e+00
  br i1 %5887, label %5888, label %5919, !dx.controlflow.hints !131

; <label>:5888                                    ; preds = %5877
  %5889 = fmul fast float %5880, %5611
  %5890 = fmul fast float %5879, %5612
  %5891 = fsub fast float %5889, %5890
  %5892 = fmul fast float %5878, %5612
  %5893 = fmul fast float %5880, %5610
  %5894 = fsub fast float %5892, %5893
  %5895 = fmul fast float %5879, %5610
  %5896 = fmul fast float %5878, %5611
  %5897 = fsub fast float %5895, %5896
  %5898 = fmul fast float %5891, 2.000000e+00
  %5899 = fmul fast float %5894, 2.000000e+00
  %5900 = fmul fast float %5897, 2.000000e+00
  %5901 = fmul fast float %5898, %5613
  %5902 = fmul fast float %5899, %5613
  %5903 = fmul fast float %5900, %5613
  %5904 = fmul fast float %5900, %5611
  %5905 = fmul fast float %5899, %5612
  %5906 = fmul fast float %5898, %5612
  %5907 = fmul fast float %5900, %5610
  %5908 = fmul fast float %5899, %5610
  %5909 = fmul fast float %5898, %5611
  %5910 = fadd fast float %5904, %5878
  %5911 = fadd fast float %5910, %5901
  %5912 = fsub fast float %5911, %5905
  %5913 = fsub fast float %5879, %5907
  %5914 = fadd fast float %5913, %5902
  %5915 = fadd fast float %5914, %5906
  %5916 = fadd fast float %5903, %5880
  %5917 = fsub fast float %5916, %5909
  %5918 = fadd fast float %5917, %5908
  br label %5919

; <label>:5919                                    ; preds = %5888, %5877
  %5920 = phi float [ %5912, %5888 ], [ %5878, %5877 ]
  %5921 = phi float [ %5915, %5888 ], [ %5879, %5877 ]
  %5922 = phi float [ %5918, %5888 ], [ %5880, %5877 ]
  br i1 %5745, label %5923, label %5954

; <label>:5923                                    ; preds = %5919
  %5924 = fmul fast float %3244, 0x400187C840000000
  %5925 = fadd fast float %5924, 0xC00EFC2120000000
  %5926 = fmul fast float %5925, %3244
  %5927 = fadd fast float %5926, 0x3FE5D16340000000
  %5928 = fmul fast float %5927, %3244
  %5929 = fadd fast float %5928, 1.000000e+00
  %5930 = call float @dx.op.unary.f32(i32 7, float %5929)  ; Saturate(value)
  %5931 = fsub fast float %5881, %565
  %5932 = fsub fast float %5882, %566
  %5933 = fsub fast float %5883, %567
  %5934 = fsub fast float %5881, %5594
  %5935 = fsub fast float %5882, %5595
  %5936 = fsub fast float %5883, %5596
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5931, float %5932, float %5933, float %5931, float %5932, float %5933)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5935, float %5936, float %5934, float %5935, float %5936)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = fadd fast float %5938, 0x3EE4F8B580000000
  %5940 = fdiv fast float %5937, %5939
  %5941 = bitcast float %5940 to i32
  %5942 = ashr i32 %5941, 1
  %5943 = add nsw i32 %5942, 532487669
  %5944 = bitcast i32 %5943 to float
  %5945 = fmul fast float %5944, %5930
  %5946 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5947 = fmul fast float %5946, 0x4009981AE0000000
  %5948 = fsub fast float 0x40111BBD80000000, %5947
  %5949 = fmul fast float %5948, %5946
  %5950 = fadd fast float %5949, 0xC0009F6020000000
  %5951 = fmul fast float %5950, %5946
  %5952 = fadd fast float %5951, 1.000000e+00
  %5953 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  br label %5957

; <label>:5954                                    ; preds = %5919
  %5955 = icmp ne i32 %5639, -1
  %5956 = zext i1 %5955 to i32
  br label %5957

; <label>:5957                                    ; preds = %5954, %5923
  %5958 = phi float [ %3244, %5954 ], [ %5953, %5923 ]
  %5959 = phi i32 [ %5956, %5954 ], [ 0, %5923 ]
  %5960 = fmul float %5958, 5.000000e+00
  %5961 = fsub float 5.000000e+00, %5960
  %5962 = icmp ne i32 %5959, 0
  %5963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.f32 %5963, 3
  %5965 = fadd fast float %5964, %5961
  %5966 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5965)  ; FMax(a,b)
  %5967 = call float @dx.op.unary.f32(i32 6, float %5920)  ; FAbs(value)
  %5968 = call float @dx.op.unary.f32(i32 6, float %5921)  ; FAbs(value)
  %5969 = fadd fast float %5968, %5967
  %5970 = call float @dx.op.unary.f32(i32 6, float %5922)  ; FAbs(value)
  %5971 = fadd fast float %5969, %5970
  %5972 = fcmp fast oeq float %5971, 0.000000e+00
  %5973 = fdiv fast float 1.000000e+00, %5971
  %5974 = select i1 %5972, float 1.000000e+00, float %5973
  %5975 = fmul fast float %5974, %5920
  %5976 = fmul fast float %5974, %5921
  %5977 = call float @dx.op.unary.f32(i32 6, float %5976)  ; FAbs(value)
  %5978 = call float @dx.op.unary.f32(i32 6, float %5975)  ; FAbs(value)
  %5979 = fsub fast float 1.000000e+00, %5977
  %5980 = fsub fast float 1.000000e+00, %5978
  %5981 = fcmp fast oge float %5975, 0.000000e+00
  %5982 = fcmp fast oge float %5976, 0.000000e+00
  %5983 = select i1 %5981, float 1.000000e+00, float -1.000000e+00
  %5984 = select i1 %5982, float 1.000000e+00, float -1.000000e+00
  %5985 = fcmp fast ole float %5922, 0.000000e+00
  %5986 = fmul fast float %5983, %5979
  %5987 = fmul fast float %5984, %5980
  %5988 = select i1 %5985, float %5986, float %5975
  %5989 = select i1 %5985, float %5987, float %5976
  %5990 = fmul fast float %5988, 5.000000e-01
  %5991 = fmul fast float %5989, 5.000000e-01
  %5992 = fadd fast float %5990, 5.000000e-01
  %5993 = fadd fast float %5991, 5.000000e-01
  %5994 = uitofp i32 %5637 to float
  %5995 = call float @dx.op.binary.f32(i32 36, float %5966, float 3.000000e+00)  ; FMin(a,b)
  %5996 = fadd fast float %5995, 2.000000e+00
  %5997 = call float @dx.op.unary.f32(i32 21, float %5996)  ; Exp(value)
  %5998 = extractvalue %dx.types.CBufRet.f32 %5963, 1
  %5999 = fmul fast float %5998, %5997
  %6000 = fmul fast float %5999, 2.000000e+00
  %6001 = fsub fast float 1.000000e+00, %6000
  %6002 = fmul fast float %5992, %6001
  %6003 = fmul fast float %5993, %6001
  %6004 = fadd fast float %6002, %5999
  %6005 = fadd fast float %6003, %5999
  %6006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %63, float %6004, float %6005, float %5994, float undef, i32 0, i32 0, i32 undef, float %5966)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.ResRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6006, 2
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 3
  %6012 = fmul fast float %6011, %5607
  %6013 = call float @dx.op.binary.f32(i32 36, float %5479, float %6012)  ; FMin(a,b)
  %6014 = select i1 %5962, float %6013, float %6012
  %6015 = fmul fast float %6007, %5687
  %6016 = fmul fast float %6015, %6014
  %6017 = fmul fast float %6008, %5687
  %6018 = fmul fast float %6017, %6014
  %6019 = fmul fast float %6009, %5687
  %6020 = fmul fast float %6019, %6014
  %6021 = fadd fast float %6016, %5574
  %6022 = fadd fast float %6018, %5575
  %6023 = fadd fast float %6020, %5576
  %6024 = fsub fast float %5585, %5687
  %6025 = and i32 %5702, 255
  %6026 = uitofp i32 %6025 to float
  %6027 = fptoui float %6026 to i32
  %6028 = icmp eq i32 %5697, 1
  %6029 = zext i1 %6028 to i32
  %6030 = add i32 %6029, %6027
  %6031 = uitofp i32 %6030 to float
  %6032 = fptoui float %6031 to i32
  %6033 = shl i32 %6032, 8
  %6034 = and i32 %6033, 65280
  %6035 = or i32 %6034, %5705
  %6036 = fmul fast float %5884, %5687
  %6037 = fmul fast float %5885, %5687
  %6038 = fmul fast float %5886, %5687
  %6039 = fadd fast float %6036, %5581
  %6040 = fadd fast float %6037, %5582
  %6041 = fadd fast float %6038, %5583
  %6042 = fmul fast float %5994, 0x3FE3C6EF40000000
  %6043 = call float @dx.op.unary.f32(i32 22, float %6042)  ; Frc(value)
  %6044 = fadd fast float %6043, 0x3FE5555560000000
  %6045 = fadd fast float %6043, 0x3FD5555560000000
  %6046 = fsub fast float -0.000000e+00, %6043
  %6047 = fsub fast float -0.000000e+00, %6044
  %6048 = fsub fast float -0.000000e+00, %6045
  %6049 = fcmp fast oge float %6043, %6046
  %6050 = fcmp fast oge float %6044, %6047
  %6051 = fcmp fast oge float %6045, %6048
  %6052 = call float @dx.op.unary.f32(i32 6, float %6043)  ; FAbs(value)
  %6053 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6054 = call float @dx.op.unary.f32(i32 6, float %6045)  ; FAbs(value)
  %6055 = call float @dx.op.unary.f32(i32 22, float %6052)  ; Frc(value)
  %6056 = call float @dx.op.unary.f32(i32 22, float %6053)  ; Frc(value)
  %6057 = call float @dx.op.unary.f32(i32 22, float %6054)  ; Frc(value)
  %6058 = fsub fast float -0.000000e+00, %6055
  %6059 = fsub fast float -0.000000e+00, %6056
  %6060 = fsub fast float -0.000000e+00, %6057
  %6061 = select i1 %6049, float %6055, float %6058
  %6062 = select i1 %6050, float %6056, float %6059
  %6063 = select i1 %6051, float %6057, float %6060
  %6064 = fmul fast float %6061, 6.000000e+00
  %6065 = fmul fast float %6062, 6.000000e+00
  %6066 = fmul fast float %6063, 6.000000e+00
  %6067 = fadd fast float %6064, -3.000000e+00
  %6068 = fadd fast float %6065, -3.000000e+00
  %6069 = fadd fast float %6066, -3.000000e+00
  %6070 = call float @dx.op.unary.f32(i32 6, float %6067)  ; FAbs(value)
  %6071 = call float @dx.op.unary.f32(i32 6, float %6068)  ; FAbs(value)
  %6072 = call float @dx.op.unary.f32(i32 6, float %6069)  ; FAbs(value)
  %6073 = fadd fast float %6070, -1.000000e+00
  %6074 = fadd fast float %6071, -1.000000e+00
  %6075 = fadd fast float %6072, -1.000000e+00
  %6076 = call float @dx.op.unary.f32(i32 7, float %6073)  ; Saturate(value)
  %6077 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = fmul fast float %6076, %5687
  %6080 = fmul fast float %6077, %5687
  %6081 = fmul fast float %6078, %5687
  %6082 = fadd fast float %6079, %5577
  %6083 = fadd fast float %6080, %5578
  %6084 = fadd fast float %6081, %5579
  %6085 = icmp eq i32 %5637, 0
  %6086 = select i1 %6085, i32 1, i32 %5580
  %6087 = icmp eq i32 %5584, 0
  br i1 %6087, label %5708, label %6088

; <label>:6088                                    ; preds = %5957
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = bitcast float %6090 to i32
  %6092 = lshr i32 %6091, 8
  %6093 = and i32 %6092, 255
  %6094 = uitofp i32 %6093 to float
  %6095 = fptoui float %6094 to i32
  %6096 = icmp eq i32 %6095, 16
  %6097 = bitcast float %6012 to i32
  %6098 = select i1 %6096, i32 %6097, i32 %5573
  %6099 = icmp eq i32 %6095, 17
  %6100 = bitcast float %5479 to i32
  %6101 = select i1 %6099, i32 %6100, i32 %6098
  %6102 = icmp eq i32 %6095, 18
  %6103 = bitcast float %6014 to i32
  %6104 = select i1 %6102, i32 %6103, i32 %6101
  br label %5708

; <label>:6105                                    ; preds = %5708
  br label %6106

; <label>:6106                                    ; preds = %6105, %5531
  %6107 = phi i32 [ %5532, %5531 ], [ %5709, %6105 ]
  %6108 = phi i32 [ %5533, %5531 ], [ %5710, %6105 ]
  %6109 = phi float [ %5534, %5531 ], [ %5711, %6105 ]
  %6110 = phi float [ %5535, %5531 ], [ %5712, %6105 ]
  %6111 = phi float [ %5536, %5531 ], [ %5713, %6105 ]
  %6112 = phi float [ %5537, %5531 ], [ %5714, %6105 ]
  %6113 = phi float [ %5538, %5531 ], [ %5715, %6105 ]
  %6114 = phi float [ %5539, %5531 ], [ %5716, %6105 ]
  %6115 = phi i32 [ %5540, %5531 ], [ %5717, %6105 ]
  %6116 = phi float [ %5541, %5531 ], [ %5718, %6105 ]
  %6117 = phi float [ %5542, %5531 ], [ %5719, %6105 ]
  %6118 = phi float [ %5543, %5531 ], [ %5720, %6105 ]
  %6119 = phi i32 [ %5544, %5531 ], [ %5721, %6105 ]
  %6120 = phi float [ %5545, %5531 ], [ %5722, %6105 ]
  %6121 = add i32 %5546, 1
  %6122 = icmp ugt i32 %6121, %5528
  br i1 %6122, label %6123, label %5531, !llvm.loop !132

; <label>:6123                                    ; preds = %6106
  br label %6124

; <label>:6124                                    ; preds = %6123, %5478
  %6125 = phi i32 [ %5142, %5478 ], [ %6107, %6123 ]
  %6126 = phi i32 [ %5466, %5478 ], [ %6108, %6123 ]
  %6127 = phi float [ 0.000000e+00, %5478 ], [ %6109, %6123 ]
  %6128 = phi float [ 0.000000e+00, %5478 ], [ %6110, %6123 ]
  %6129 = phi float [ 0.000000e+00, %5478 ], [ %6111, %6123 ]
  %6130 = phi float [ 0.000000e+00, %5478 ], [ %6112, %6123 ]
  %6131 = phi float [ 0.000000e+00, %5478 ], [ %6113, %6123 ]
  %6132 = phi float [ 0.000000e+00, %5478 ], [ %6114, %6123 ]
  %6133 = phi i32 [ 0, %5478 ], [ %6115, %6123 ]
  %6134 = phi float [ 0.000000e+00, %5478 ], [ %6116, %6123 ]
  %6135 = phi float [ 0.000000e+00, %5478 ], [ %6117, %6123 ]
  %6136 = phi float [ 0.000000e+00, %5478 ], [ %6118, %6123 ]
  %6137 = call float @dx.op.dot3.f32(i32 55, float %6127, float %6128, float %6129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = select i1 %3298, float 0.000000e+00, float %6127
  %6139 = select i1 %3298, float %6137, float %6128
  %6140 = select i1 %3298, float 0.000000e+00, float %6129
  %6141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.f32 %6141, 0
  %6143 = bitcast float %6142 to i32
  %6144 = lshr i32 %6143, 8
  %6145 = and i32 %6144, 255
  %6146 = uitofp i32 %6145 to float
  %6147 = fptoui float %6146 to i32
  %6148 = icmp eq i32 %6147, 13
  br i1 %6148, label %6149, label %6169

; <label>:6149                                    ; preds = %6124
  %6150 = fadd fast float %6130, 1.000000e+00
  %6151 = fadd fast float %6131, 1.000000e+00
  %6152 = fadd fast float %6132, 1.000000e+00
  %6153 = fmul fast float %6150, 5.000000e-01
  %6154 = fmul fast float %6151, 5.000000e-01
  %6155 = fmul fast float %6152, 5.000000e-01
  %6156 = call float @dx.op.unary.f32(i32 7, float %6153)  ; Saturate(value)
  %6157 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6158 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6159 = fmul fast float %6156, 1.023000e+03
  %6160 = fmul fast float %6157, 1.023000e+03
  %6161 = fmul fast float %6158, 1.023000e+03
  %6162 = fptoui float %6159 to i32
  %6163 = fptoui float %6160 to i32
  %6164 = fptoui float %6161 to i32
  %6165 = shl i32 %6163, 10
  %6166 = or i32 %6165, %6162
  %6167 = shl i32 %6164, 20
  %6168 = or i32 %6166, %6167
  br label %6169

; <label>:6169                                    ; preds = %6149, %6124
  %6170 = phi i32 [ %6168, %6149 ], [ %6126, %6124 ]
  %6171 = icmp eq i32 %6147, 14
  %6172 = select i1 %6171, i32 %6133, i32 %6170
  %6173 = icmp eq i32 %6147, 22
  br i1 %6173, label %6174, label %6194

; <label>:6174                                    ; preds = %6169
  %6175 = fadd fast float %6134, 1.000000e+00
  %6176 = fadd fast float %6135, 1.000000e+00
  %6177 = fadd fast float %6136, 1.000000e+00
  %6178 = fmul fast float %6175, 5.000000e-01
  %6179 = fmul fast float %6176, 5.000000e-01
  %6180 = fmul fast float %6177, 5.000000e-01
  %6181 = call float @dx.op.unary.f32(i32 7, float %6178)  ; Saturate(value)
  %6182 = call float @dx.op.unary.f32(i32 7, float %6179)  ; Saturate(value)
  %6183 = call float @dx.op.unary.f32(i32 7, float %6180)  ; Saturate(value)
  %6184 = fmul fast float %6181, 1.023000e+03
  %6185 = fmul fast float %6182, 1.023000e+03
  %6186 = fmul fast float %6183, 1.023000e+03
  %6187 = fptoui float %6184 to i32
  %6188 = fptoui float %6185 to i32
  %6189 = fptoui float %6186 to i32
  %6190 = shl i32 %6188, 10
  %6191 = or i32 %6190, %6187
  %6192 = shl i32 %6189, 20
  %6193 = or i32 %6191, %6192
  br label %6194

; <label>:6194                                    ; preds = %6174, %6169
  %6195 = phi i32 [ %6193, %6174 ], [ %6172, %6169 ]
  %6196 = fcmp fast olt float %5467, 0.000000e+00
  %6197 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %6198 = fmul fast float %6197, %5468
  %6199 = fmul fast float %6197, %5469
  %6200 = fmul fast float %6197, %5470
  %6201 = select i1 %6196, float %5468, float %6198
  %6202 = select i1 %6196, float %5469, float %6199
  %6203 = select i1 %6196, float %5470, float %6200
  %6204 = fsub fast float 1.000000e+00, %6197
  %6205 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6206 = fmul fast float %6205, %6138
  %6207 = fmul fast float %6205, %6139
  %6208 = fmul fast float %6205, %6140
  %6209 = fadd fast float %6201, %6206
  %6210 = fadd fast float %6202, %6207
  %6211 = fadd fast float %6203, %6208
  br label %6212

; <label>:6212                                    ; preds = %6194, %5465
  %6213 = phi i32 [ %5142, %5465 ], [ %6125, %6194 ]
  %6214 = phi i32 [ %5466, %5465 ], [ %6195, %6194 ]
  %6215 = phi float [ %5468, %5465 ], [ %6209, %6194 ]
  %6216 = phi float [ %5469, %5465 ], [ %6210, %6194 ]
  %6217 = phi float [ %5470, %5465 ], [ %6211, %6194 ]
  %6218 = fmul fast float %5144, %4427
  %6219 = fmul fast float %5145, %4427
  %6220 = fmul fast float %5146, %4427
  %6221 = fmul fast float %6215, %4422
  %6222 = fmul fast float %6216, %4423
  %6223 = fmul fast float %6217, %4424
  %6224 = fadd fast float %6221, %3023
  %6225 = fadd fast float %6222, %3024
  %6226 = fadd fast float %6223, %3025
  %6227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6228 = extractvalue %dx.types.CBufRet.f32 %6227, 3
  %6229 = fcmp fast oeq float %6228, 0.000000e+00
  br i1 %6229, label %8112, label %6230

; <label>:6230                                    ; preds = %6212
  %6231 = extractvalue %dx.types.CBufRet.f32 %6227, 0
  %6232 = extractvalue %dx.types.CBufRet.f32 %6227, 1
  %6233 = extractvalue %dx.types.CBufRet.f32 %6227, 2
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = extractvalue %dx.types.CBufRet.f32 %6234, 1
  %6237 = extractvalue %dx.types.CBufRet.f32 %6234, 2
  %6238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6239 = extractvalue %dx.types.CBufRet.f32 %6238, 0
  %6240 = extractvalue %dx.types.CBufRet.f32 %6238, 1
  %6241 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6242 = select i1 %3298, float %6239, float %6235
  %6243 = select i1 %3298, float %6241, float %6236
  %6244 = select i1 %3298, float %6240, float %6237
  %6245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.CBufRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.CBufRet.f32 %6245, 2
  %6249 = extractvalue %dx.types.CBufRet.f32 %6245, 3
  %6250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6250, 0
  %6252 = extractvalue %dx.types.CBufRet.f32 %6250, 1
  %6253 = extractvalue %dx.types.CBufRet.f32 %6250, 2
  %6254 = extractvalue %dx.types.CBufRet.f32 %6250, 3
  %6255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6256 = extractvalue %dx.types.CBufRet.f32 %6255, 0
  %6257 = extractvalue %dx.types.CBufRet.f32 %6255, 1
  %6258 = extractvalue %dx.types.CBufRet.f32 %6255, 2
  %6259 = extractvalue %dx.types.CBufRet.f32 %6255, 3
  %6260 = fmul fast float %6246, %565
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %566, float %6247, float %6260)  ; FMad(a,b,c)
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %567, float %6248, float %6261)  ; FMad(a,b,c)
  %6263 = fadd fast float %6262, %6249
  %6264 = fmul fast float %6251, %565
  %6265 = call float @dx.op.tertiary.f32(i32 46, float %566, float %6252, float %6264)  ; FMad(a,b,c)
  %6266 = call float @dx.op.tertiary.f32(i32 46, float %567, float %6253, float %6265)  ; FMad(a,b,c)
  %6267 = fadd fast float %6266, %6254
  %6268 = fmul fast float %6256, %565
  %6269 = call float @dx.op.tertiary.f32(i32 46, float %566, float %6257, float %6268)  ; FMad(a,b,c)
  %6270 = call float @dx.op.tertiary.f32(i32 46, float %567, float %6258, float %6269)  ; FMad(a,b,c)
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6275 = fmul fast float %6274, %6263
  %6276 = fmul fast float %6274, %6267
  %6277 = fadd fast float %6275, %6272
  %6278 = fadd fast float %6276, %6273
  %6279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %6280 = extractvalue %dx.types.CBufRet.f32 %6279, 0
  %6281 = extractvalue %dx.types.CBufRet.f32 %6279, 1
  %6282 = extractvalue %dx.types.CBufRet.f32 %6279, 3
  %6283 = fmul fast float %6282, %6263
  %6284 = fmul fast float %6282, %6267
  %6285 = fadd fast float %6283, %6280
  %6286 = fadd fast float %6284, %6281
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 1
  %6289 = fsub fast float -0.000000e+00, %6259
  %6290 = fsub fast float %6289, %6270
  %6291 = fadd fast float %6290, %6288
  %6292 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6293 = fmul fast float %6291, %6292
  %6294 = fsub fast float 1.000000e+00, %6293
  %6295 = call float @dx.op.unary.f32(i32 7, float %6294)  ; Saturate(value)
  %6296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %6297 = extractvalue %dx.types.CBufRet.f32 %6296, 0
  %6298 = extractvalue %dx.types.CBufRet.f32 %6296, 1
  %6299 = fsub fast float %6285, %6297
  %6300 = fsub fast float %6286, %6298
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %6303 = extractvalue %dx.types.CBufRet.f32 %6302, 0
  %6304 = extractvalue %dx.types.CBufRet.f32 %6302, 1
  %6305 = fsub fast float %6277, %6303
  %6306 = fsub fast float %6278, %6304
  %6307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.CBufRet.f32 %6308, 1
  %6311 = fsub fast float %6263, %6309
  %6312 = fsub fast float %6267, %6310
  %6313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %6314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %6315 = extractvalue %dx.types.CBufRet.f32 %6314, 0
  %6316 = bitcast float %6315 to i32
  %6317 = lshr i32 %6316, 8
  %6318 = and i32 %6317, 255
  %6319 = uitofp i32 %6318 to float
  %6320 = fptoui float %6319 to i32
  %6321 = and i32 %6320, -2
  %6322 = icmp eq i32 %6321, 10
  br i1 %6322, label %6323, label %6393

; <label>:6323                                    ; preds = %6230
  %6324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6325 = extractvalue %dx.types.CBufRet.f32 %6324, 0
  %6326 = fcmp fast olt float %6311, 0.000000e+00
  %6327 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6329 = select i1 %6326, float %6327, float %6328
  %6330 = fmul fast float %6329, %6311
  %6331 = call float @dx.op.unary.f32(i32 6, float %6330)  ; FAbs(value)
  %6332 = fcmp fast olt float %6312, 0.000000e+00
  %6333 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6334 = extractvalue %dx.types.CBufRet.f32 %6313, 3
  %6335 = select i1 %6332, float %6333, float %6334
  %6336 = fmul fast float %6335, %6312
  %6337 = call float @dx.op.unary.f32(i32 6, float %6336)  ; FAbs(value)
  %6338 = call float @dx.op.binary.f32(i32 35, float %6331, float %6337)  ; FMax(a,b)
  %6339 = fsub fast float %6325, %6338
  %6340 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6341 = fmul fast float %6340, %6295
  %6342 = fcmp fast olt float %6305, 0.000000e+00
  %6343 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6344 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6345 = select i1 %6342, float %6343, float %6344
  %6346 = fmul fast float %6345, %6305
  %6347 = call float @dx.op.unary.f32(i32 6, float %6346)  ; FAbs(value)
  %6348 = fcmp fast olt float %6306, 0.000000e+00
  %6349 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6350 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6351 = select i1 %6348, float %6349, float %6350
  %6352 = fmul fast float %6351, %6306
  %6353 = call float @dx.op.unary.f32(i32 6, float %6352)  ; FAbs(value)
  %6354 = call float @dx.op.binary.f32(i32 35, float %6347, float %6353)  ; FMax(a,b)
  %6355 = fsub fast float %6325, %6354
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6356, %6295
  %6358 = fcmp fast olt float %6299, 0.000000e+00
  %6359 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6360 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6361 = select i1 %6358, float %6359, float %6360
  %6362 = fmul fast float %6361, %6299
  %6363 = call float @dx.op.unary.f32(i32 6, float %6362)  ; FAbs(value)
  %6364 = fcmp fast olt float %6300, 0.000000e+00
  %6365 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6301, 3
  %6367 = select i1 %6364, float %6365, float %6366
  %6368 = fmul fast float %6367, %6300
  %6369 = call float @dx.op.unary.f32(i32 6, float %6368)  ; FAbs(value)
  %6370 = call float @dx.op.binary.f32(i32 35, float %6363, float %6369)  ; FMax(a,b)
  %6371 = fsub fast float %6325, %6370
  %6372 = call float @dx.op.unary.f32(i32 7, float %6371)  ; Saturate(value)
  %6373 = fmul fast float %6372, %6295
  %6374 = fadd fast float %6341, 1.000000e+00
  %6375 = fadd fast float %6357, 1.000000e+00
  %6376 = fadd fast float %6373, 1.000000e+00
  %6377 = fmul fast float %6374, 5.000000e-01
  %6378 = fmul fast float %6375, 5.000000e-01
  %6379 = fmul fast float %6376, 5.000000e-01
  %6380 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6383 = fmul fast float %6380, 1.023000e+03
  %6384 = fmul fast float %6381, 1.023000e+03
  %6385 = fmul fast float %6382, 1.023000e+03
  %6386 = fptoui float %6383 to i32
  %6387 = fptoui float %6384 to i32
  %6388 = fptoui float %6385 to i32
  %6389 = shl i32 %6387, 10
  %6390 = or i32 %6389, %6386
  %6391 = shl i32 %6388, 20
  %6392 = or i32 %6390, %6391
  br label %6393

; <label>:6393                                    ; preds = %6323, %6230
  %6394 = phi i32 [ %6392, %6323 ], [ %6214, %6230 ]
  %6395 = fcmp fast olt float %6228, 0.000000e+00
  br i1 %6395, label %7707, label %6396

; <label>:6396                                    ; preds = %6393
  %6397 = fadd fast float %6270, %6259
  %6398 = fsub fast float %6288, %6397
  %6399 = fmul fast float %6398, %6292
  %6400 = fsub fast float 1.000000e+00, %6399
  %6401 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  %6402 = extractvalue %dx.types.CBufRet.f32 %6279, 2
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6405 = fadd fast float %6404, %6402
  %6406 = fcmp fast ogt float %6405, 0.000000e+00
  br i1 %6406, label %6407, label %6426

; <label>:6407                                    ; preds = %6396
  %6408 = fcmp fast olt float %6299, 0.000000e+00
  %6409 = fcmp fast olt float %6300, 0.000000e+00
  %6410 = extractvalue %dx.types.CBufRet.f32 %6301, 0
  %6411 = extractvalue %dx.types.CBufRet.f32 %6301, 1
  %6412 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6413 = extractvalue %dx.types.CBufRet.f32 %6301, 3
  %6414 = select i1 %6408, float %6410, float %6412
  %6415 = select i1 %6409, float %6411, float %6413
  %6416 = fmul fast float %6414, %6299
  %6417 = fmul fast float %6415, %6300
  %6418 = call float @dx.op.unary.f32(i32 6, float %6416)  ; FAbs(value)
  %6419 = call float @dx.op.unary.f32(i32 6, float %6417)  ; FAbs(value)
  %6420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.f32 %6420, 0
  %6422 = call float @dx.op.binary.f32(i32 35, float %6418, float %6419)  ; FMax(a,b)
  %6423 = fsub fast float %6421, %6422
  %6424 = call float @dx.op.unary.f32(i32 7, float %6423)  ; Saturate(value)
  %6425 = fmul fast float %6424, %6401
  br label %6426

; <label>:6426                                    ; preds = %6407, %6396
  %6427 = phi float [ %6425, %6407 ], [ 0.000000e+00, %6396 ]
  %6428 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6429 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6430 = fadd fast float %6429, %6428
  %6431 = fcmp fast ogt float %6430, 0.000000e+00
  br i1 %6431, label %6432, label %6451

; <label>:6432                                    ; preds = %6426
  %6433 = fcmp fast olt float %6305, 0.000000e+00
  %6434 = fcmp fast olt float %6306, 0.000000e+00
  %6435 = extractvalue %dx.types.CBufRet.f32 %6307, 0
  %6436 = extractvalue %dx.types.CBufRet.f32 %6307, 1
  %6437 = extractvalue %dx.types.CBufRet.f32 %6307, 2
  %6438 = extractvalue %dx.types.CBufRet.f32 %6307, 3
  %6439 = select i1 %6433, float %6435, float %6437
  %6440 = select i1 %6434, float %6436, float %6438
  %6441 = fmul fast float %6439, %6305
  %6442 = fmul fast float %6440, %6306
  %6443 = call float @dx.op.unary.f32(i32 6, float %6441)  ; FAbs(value)
  %6444 = call float @dx.op.unary.f32(i32 6, float %6442)  ; FAbs(value)
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = call float @dx.op.binary.f32(i32 35, float %6443, float %6444)  ; FMax(a,b)
  %6448 = fsub fast float %6446, %6447
  %6449 = call float @dx.op.unary.f32(i32 7, float %6448)  ; Saturate(value)
  %6450 = fmul fast float %6449, %6401
  br label %6451

; <label>:6451                                    ; preds = %6432, %6426
  %6452 = phi float [ %6450, %6432 ], [ 0.000000e+00, %6426 ]
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6455 = call float @dx.op.unary.f32(i32 7, float %6454)  ; Saturate(value)
  %6456 = fcmp fast olt float %6311, 0.000000e+00
  %6457 = fcmp fast olt float %6312, 0.000000e+00
  %6458 = extractvalue %dx.types.CBufRet.f32 %6313, 0
  %6459 = extractvalue %dx.types.CBufRet.f32 %6313, 1
  %6460 = extractvalue %dx.types.CBufRet.f32 %6313, 2
  %6461 = extractvalue %dx.types.CBufRet.f32 %6313, 3
  %6462 = select i1 %6456, float %6458, float %6460
  %6463 = select i1 %6457, float %6459, float %6461
  %6464 = fmul fast float %6462, %6311
  %6465 = fmul fast float %6463, %6312
  %6466 = call float @dx.op.unary.f32(i32 6, float %6464)  ; FAbs(value)
  %6467 = call float @dx.op.unary.f32(i32 6, float %6465)  ; FAbs(value)
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 0
  %6470 = call float @dx.op.binary.f32(i32 35, float %6466, float %6467)  ; FMax(a,b)
  %6471 = fsub fast float %6469, %6470
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6473 = call float @dx.op.binary.f32(i32 36, float %6472, float %6455)  ; FMin(a,b)
  %6474 = fmul fast float %6473, %6401
  %6475 = fsub fast float %6452, %6474
  %6476 = fsub fast float %6427, %6452
  %6477 = fsub fast float %6476, %6474
  %6478 = call float @dx.op.binary.f32(i32 35, float %6452, float %6427)  ; FMax(a,b)
  %6479 = call float @dx.op.binary.f32(i32 35, float %6474, float %6478)  ; FMax(a,b)
  %6480 = fcmp fast olt float %6479, 1.000000e+00
  br i1 %6480, label %6481, label %7152, !dx.controlflow.hints !135

; <label>:6481                                    ; preds = %6451
  %6482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6483 = extractvalue %dx.types.CBufRet.f32 %6482, 0
  %6484 = fcmp fast une float %6483, 0.000000e+00
  br i1 %6484, label %6485, label %7152, !dx.controlflow.hints !136

; <label>:6485                                    ; preds = %6481
  %6486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %6487 = extractvalue %dx.types.CBufRet.f32 %6486, 0
  %6488 = extractvalue %dx.types.CBufRet.f32 %6486, 1
  %6489 = extractvalue %dx.types.CBufRet.f32 %6486, 2
  %6490 = extractvalue %dx.types.CBufRet.f32 %6486, 3
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.CBufRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.CBufRet.f32 %6491, 2
  %6495 = extractvalue %dx.types.CBufRet.f32 %6491, 3
  %6496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %6497 = extractvalue %dx.types.CBufRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.CBufRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.CBufRet.f32 %6496, 2
  %6500 = extractvalue %dx.types.CBufRet.f32 %6496, 3
  %6501 = fmul fast float %6487, %565
  %6502 = call float @dx.op.tertiary.f32(i32 46, float %566, float %6488, float %6501)  ; FMad(a,b,c)
  %6503 = call float @dx.op.tertiary.f32(i32 46, float %567, float %6489, float %6502)  ; FMad(a,b,c)
  %6504 = fadd fast float %6503, %6490
  %6505 = fmul fast float %6492, %565
  %6506 = call float @dx.op.tertiary.f32(i32 46, float %566, float %6493, float %6505)  ; FMad(a,b,c)
  %6507 = call float @dx.op.tertiary.f32(i32 46, float %567, float %6494, float %6506)  ; FMad(a,b,c)
  %6508 = fadd fast float %6507, %6495
  %6509 = fmul fast float %6497, %565
  %6510 = call float @dx.op.tertiary.f32(i32 46, float %566, float %6498, float %6509)  ; FMad(a,b,c)
  %6511 = call float @dx.op.tertiary.f32(i32 46, float %567, float %6499, float %6510)  ; FMad(a,b,c)
  %6512 = fadd fast float %6511, %6500
  %6513 = fcmp fast oge float %6504, 1.000000e+00
  %6514 = fcmp fast oge float %6508, 1.000000e+00
  %6515 = or i1 %6513, %6514
  %6516 = fcmp fast olt float %6504, 0.000000e+00
  %6517 = fcmp fast olt float %6508, 0.000000e+00
  %6518 = or i1 %6516, %6517
  %6519 = or i1 %6515, %6518
  br i1 %6519, label %7152, label %6520, !dx.controlflow.hints !137

; <label>:6520                                    ; preds = %6485
  %6521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %6522 = extractvalue %dx.types.CBufRet.f32 %6521, 0
  %6523 = extractvalue %dx.types.CBufRet.f32 %6521, 1
  %6524 = extractvalue %dx.types.CBufRet.f32 %6521, 2
  %6525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6526 = extractvalue %dx.types.CBufRet.f32 %6525, 1
  %6527 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6528 = extractvalue %dx.types.CBufRet.i32 %6527, 2
  %6529 = uitofp i32 %6528 to float
  %6530 = extractvalue %dx.types.CBufRet.i32 %6527, 3
  %6531 = uitofp i32 %6530 to float
  %6532 = extractvalue %dx.types.CBufRet.f32 %6521, 3
  %6533 = fmul fast float %6532, 2.000000e+00
  %6534 = fsub fast float %6504, %6522
  %6535 = fsub fast float %6508, %6523
  %6536 = fmul fast float %6533, %6534
  %6537 = fmul fast float %6533, %6535
  %6538 = fdiv fast float 1.000000e+00, %6233
  %6539 = fmul fast float %6537, %6538
  %6540 = call float @dx.op.unary.f32(i32 6, float %6539)  ; FAbs(value)
  %6541 = fmul fast float %6524, %567
  %6542 = fmul fast float %6541, %6533
  %6543 = call float @dx.op.unary.f32(i32 6, float %6542)  ; FAbs(value)
  %6544 = call float @dx.op.unary.f32(i32 6, float %6536)  ; FAbs(value)
  %6545 = call float @dx.op.binary.f32(i32 35, float %6543, float %6540)  ; FMax(a,b)
  %6546 = call float @dx.op.binary.f32(i32 35, float %6544, float %6545)  ; FMax(a,b)
  %6547 = fmul fast float %6546, 2.000000e+00
  %6548 = call float @dx.op.unary.f32(i32 23, float %6547)  ; Log(value)
  %6549 = call float @dx.op.binary.f32(i32 35, float %6548, float %6529)  ; FMax(a,b)
  %6550 = call float @dx.op.unary.f32(i32 22, float %6549)  ; Frc(value)
  %6551 = fadd fast float %6550, 0xBFEA666660000000
  %6552 = fmul fast float %6551, 8.000000e+00
  %6553 = call float @dx.op.unary.f32(i32 7, float %6552)  ; Saturate(value)
  %6554 = call float @dx.op.unary.f32(i32 27, float %6549)  ; Round_ni(value)
  %6555 = fadd fast float %6554, %6553
  %6556 = call float @dx.op.binary.f32(i32 36, float %6555, float %6531)  ; FMin(a,b)
  %6557 = call float @dx.op.unary.f32(i32 27, float %6556)  ; Round_ni(value)
  %6558 = fsub fast float -0.000000e+00, %6557
  %6559 = call float @dx.op.unary.f32(i32 21, float %6558)  ; Exp(value)
  %6560 = fmul fast float %6559, %6533
  %6561 = fmul fast float %6560, %6504
  %6562 = fmul fast float %6560, %6508
  %6563 = fmul fast float %6561, 5.000000e-01
  %6564 = fmul fast float %6562, 5.000000e-01
  %6565 = fadd fast float %6563, 5.000000e-01
  %6566 = fadd fast float %6564, 5.000000e-01
  %6567 = fmul fast float %6561, 2.500000e-01
  %6568 = fmul fast float %6562, 2.500000e-01
  %6569 = fadd fast float %6567, 5.000000e-01
  %6570 = fadd fast float %6568, 5.000000e-01
  %6571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6572 = extractvalue %dx.types.ResRet.i32 %6571, 0
  %6573 = and i32 %6572, 536870911
  %6574 = lshr i32 %6573, 9
  %6575 = uitofp i32 %6574 to float
  %6576 = fmul fast float %6575, %6504
  %6577 = fmul fast float %6575, %6508
  %6578 = call float @dx.op.unary.f32(i32 22, float %6576)  ; Frc(value)
  %6579 = call float @dx.op.unary.f32(i32 22, float %6577)  ; Frc(value)
  %6580 = call float @dx.op.unary.f32(i32 22, float %6553)  ; Frc(value)
  %6581 = fcmp fast une float %6580, 0.000000e+00
  br i1 %6581, label %6582, label %6680, !dx.controlflow.hints !138

; <label>:6582                                    ; preds = %6520
  %6583 = call float @dx.op.unary.f32(i32 21, float %6554)  ; Exp(value)
  %6584 = fmul fast float %6583, 1.953125e-03
  %6585 = fcmp fast olt float %6578, %6584
  %6586 = fcmp fast olt float %6579, %6584
  %6587 = or i1 %6585, %6586
  %6588 = fsub fast float 1.000000e+00, %6584
  %6589 = fcmp fast ogt float %6578, %6588
  %6590 = fcmp fast ogt float %6579, %6588
  %6591 = or i1 %6589, %6590
  %6592 = or i1 %6587, %6591
  br i1 %6592, label %6593, label %6759, !dx.controlflow.hints !139

; <label>:6593                                    ; preds = %6582
  %6594 = fmul fast float %6526, 5.000000e-01
  %6595 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6596 = extractvalue %dx.types.CBufRet.i32 %6595, 0
  %6597 = fmul fast float %6508, 3.530000e+02
  %6598 = uitofp i32 %6573 to float
  %6599 = fmul fast float %6597, %6598
  %6600 = fmul fast float %6504, 6.130000e+02
  %6601 = fadd fast float %6599, %6600
  %6602 = fptoui float %6601 to i32
  %6603 = add i32 %6596, %6602
  %6604 = mul i32 %6603, -63
  %6605 = lshr i32 %6604, 17
  %6606 = xor i32 %6605, %6604
  %6607 = mul i32 %6606, -511
  %6608 = mul i32 %6606, -8176
  %6609 = xor i32 %6607, %6608
  %6610 = mul i32 %6609, -7
  %6611 = mul i32 %6609, -7168
  %6612 = xor i32 %6610, %6611
  %6613 = lshr i32 %6612, 15
  %6614 = xor i32 %6613, %6610
  %6615 = and i32 %6614, 15
  %6616 = mul i32 %6615, 2
  %6617 = add i32 0, %6616
  %6618 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6617
  %6619 = load float, float* %6618, align 4
  %6620 = mul i32 %6615, 2
  %6621 = add i32 1, %6620
  %6622 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6621
  %6623 = load float, float* %6622, align 4
  %6624 = fmul fast float %6508, 2.770000e+02
  %6625 = fmul fast float %6624, %6598
  %6626 = fmul fast float %6504, 5.990000e+02
  %6627 = fadd fast float %6625, %6626
  %6628 = fptoui float %6627 to i32
  %6629 = mul i32 %6628, -63
  %6630 = lshr i32 %6629, 17
  %6631 = xor i32 %6630, %6629
  %6632 = mul i32 %6631, -511
  %6633 = mul i32 %6631, -8176
  %6634 = xor i32 %6632, %6633
  %6635 = mul i32 %6634, -7
  %6636 = mul i32 %6634, -7168
  %6637 = xor i32 %6635, %6636
  %6638 = lshr i32 %6637, 15
  %6639 = xor i32 %6638, %6635
  %6640 = and i32 %6639, 63
  %6641 = mul i32 %6640, 2
  %6642 = add i32 0, %6641
  %6643 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6642
  %6644 = load float, float* %6643, align 4
  %6645 = mul i32 %6640, 2
  %6646 = add i32 1, %6645
  %6647 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6646
  %6648 = load float, float* %6647, align 4
  %6649 = call float @dx.op.dot2.f32(i32 54, float %6619, float %6623, float %6644, float %6648)  ; Dot2(ax,ay,bx,by)
  %6650 = fsub fast float -0.000000e+00, %6644
  %6651 = call float @dx.op.dot2.f32(i32 54, float %6619, float %6623, float %6650, float %6648)  ; Dot2(ax,ay,bx,by)
  %6652 = fmul fast float %6649, %6594
  %6653 = fmul fast float %6651, %6594
  %6654 = fdiv fast float 2.000000e+00, %6560
  %6655 = fmul fast float %6583, 9.765625e-04
  %6656 = fcmp fast olt float %6578, %6655
  %6657 = fcmp fast olt float %6579, %6655
  %6658 = or i1 %6656, %6657
  %6659 = fsub fast float 1.000000e+00, %6655
  %6660 = fcmp fast ogt float %6578, %6659
  %6661 = fcmp fast ogt float %6579, %6659
  %6662 = or i1 %6660, %6661
  %6663 = or i1 %6658, %6662
  %6664 = fmul fast float %6652, 2.000000e+00
  br i1 %6663, label %6665, label %6669

; <label>:6665                                    ; preds = %6593
  %6666 = fmul fast float %6653, 2.000000e+00
  %6667 = fadd fast float %6664, %6565
  %6668 = fadd fast float %6666, %6566
  br label %6669

; <label>:6669                                    ; preds = %6665, %6593
  %6670 = phi float [ %6667, %6665 ], [ %6565, %6593 ]
  %6671 = phi float [ %6668, %6665 ], [ %6566, %6593 ]
  %6672 = phi i32 [ 3, %6665 ], [ 2, %6593 ]
  %6673 = fadd fast float %6652, %6569
  %6674 = fadd fast float %6653, %6570
  %6675 = fmul fast float %6664, %6654
  %6676 = fmul fast float %6654, 2.000000e+00
  %6677 = fmul fast float %6676, %6653
  %6678 = fadd fast float %6675, %6504
  %6679 = fadd fast float %6677, %6508
  br label %6759

; <label>:6680                                    ; preds = %6520
  %6681 = call float @dx.op.unary.f32(i32 21, float %6557)  ; Exp(value)
  %6682 = fmul fast float %6681, 9.765625e-04
  %6683 = fcmp fast olt float %6578, %6682
  %6684 = fcmp fast olt float %6579, %6682
  %6685 = or i1 %6683, %6684
  %6686 = fsub fast float 1.000000e+00, %6682
  %6687 = fcmp fast ogt float %6578, %6686
  %6688 = fcmp fast ogt float %6579, %6686
  %6689 = or i1 %6687, %6688
  %6690 = or i1 %6685, %6689
  br i1 %6690, label %6691, label %6759, !dx.controlflow.hints !140

; <label>:6691                                    ; preds = %6680
  %6692 = fmul fast float %6526, 5.000000e-01
  %6693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6694 = extractvalue %dx.types.CBufRet.i32 %6693, 0
  %6695 = fmul fast float %6508, 3.530000e+02
  %6696 = uitofp i32 %6573 to float
  %6697 = fmul fast float %6695, %6696
  %6698 = fmul fast float %6504, 6.130000e+02
  %6699 = fadd fast float %6697, %6698
  %6700 = fptoui float %6699 to i32
  %6701 = add i32 %6694, %6700
  %6702 = mul i32 %6701, -63
  %6703 = lshr i32 %6702, 17
  %6704 = xor i32 %6703, %6702
  %6705 = mul i32 %6704, -511
  %6706 = mul i32 %6704, -8176
  %6707 = xor i32 %6705, %6706
  %6708 = mul i32 %6707, -7
  %6709 = mul i32 %6707, -7168
  %6710 = xor i32 %6708, %6709
  %6711 = lshr i32 %6710, 15
  %6712 = xor i32 %6711, %6708
  %6713 = and i32 %6712, 15
  %6714 = mul i32 %6713, 2
  %6715 = add i32 0, %6714
  %6716 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6715
  %6717 = load float, float* %6716, align 4
  %6718 = mul i32 %6713, 2
  %6719 = add i32 1, %6718
  %6720 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6719
  %6721 = load float, float* %6720, align 4
  %6722 = fmul fast float %6508, 2.770000e+02
  %6723 = fmul fast float %6722, %6696
  %6724 = fmul fast float %6504, 5.990000e+02
  %6725 = fadd fast float %6723, %6724
  %6726 = fptoui float %6725 to i32
  %6727 = mul i32 %6726, -63
  %6728 = lshr i32 %6727, 17
  %6729 = xor i32 %6728, %6727
  %6730 = mul i32 %6729, -511
  %6731 = mul i32 %6729, -8176
  %6732 = xor i32 %6730, %6731
  %6733 = mul i32 %6732, -7
  %6734 = mul i32 %6732, -7168
  %6735 = xor i32 %6733, %6734
  %6736 = lshr i32 %6735, 15
  %6737 = xor i32 %6736, %6733
  %6738 = and i32 %6737, 63
  %6739 = mul i32 %6738, 2
  %6740 = add i32 0, %6739
  %6741 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6740
  %6742 = load float, float* %6741, align 4
  %6743 = mul i32 %6738, 2
  %6744 = add i32 1, %6743
  %6745 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6744
  %6746 = load float, float* %6745, align 4
  %6747 = call float @dx.op.dot2.f32(i32 54, float %6717, float %6721, float %6742, float %6746)  ; Dot2(ax,ay,bx,by)
  %6748 = fsub fast float -0.000000e+00, %6742
  %6749 = call float @dx.op.dot2.f32(i32 54, float %6717, float %6721, float %6748, float %6746)  ; Dot2(ax,ay,bx,by)
  %6750 = fmul fast float %6747, %6692
  %6751 = fmul fast float %6749, %6692
  %6752 = fadd fast float %6750, %6565
  %6753 = fadd fast float %6751, %6566
  %6754 = fdiv fast float 2.000000e+00, %6560
  %6755 = fmul fast float %6754, %6750
  %6756 = fmul fast float %6751, %6754
  %6757 = fadd fast float %6755, %6504
  %6758 = fadd fast float %6756, %6508
  br label %6759

; <label>:6759                                    ; preds = %6691, %6680, %6669, %6582
  %6760 = phi float [ %6673, %6669 ], [ %6569, %6582 ], [ %6569, %6691 ], [ %6569, %6680 ]
  %6761 = phi float [ %6674, %6669 ], [ %6570, %6582 ], [ %6570, %6691 ], [ %6570, %6680 ]
  %6762 = phi float [ %6670, %6669 ], [ %6565, %6582 ], [ %6752, %6691 ], [ %6565, %6680 ]
  %6763 = phi float [ %6671, %6669 ], [ %6566, %6582 ], [ %6753, %6691 ], [ %6566, %6680 ]
  %6764 = phi i32 [ %6672, %6669 ], [ 0, %6582 ], [ 1, %6691 ], [ 0, %6680 ]
  %6765 = phi float [ %6678, %6669 ], [ %6504, %6582 ], [ %6757, %6691 ], [ %6504, %6680 ]
  %6766 = phi float [ %6679, %6669 ], [ %6508, %6582 ], [ %6758, %6691 ], [ %6508, %6680 ]
  %6767 = fsub fast float %6531, %6529
  %6768 = fptoui float %6767 to i32
  %6769 = add i32 %6768, 320
  %6770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 %6769)  ; CBufferLoadLegacy(handle,regIndex)
  %6771 = extractvalue %dx.types.CBufRet.f32 %6770, 0
  %6772 = extractvalue %dx.types.CBufRet.f32 %6770, 1
  %6773 = fcmp fast une float %6556, %6531
  %6774 = fsub fast float %6765, %6771
  %6775 = fsub fast float %6766, %6772
  %6776 = call float @dx.op.unary.f32(i32 6, float %6774)  ; FAbs(value)
  %6777 = call float @dx.op.unary.f32(i32 6, float %6775)  ; FAbs(value)
  %6778 = fmul fast float %6776, %6560
  %6779 = fmul fast float %6777, %6560
  %6780 = fcmp fast olt float %6778, 1.000000e+00
  %6781 = fcmp fast olt float %6779, 1.000000e+00
  %6782 = and i1 %6780, %6781
  %6783 = or i1 %6773, %6782
  br i1 %6783, label %6784, label %7152, !dx.controlflow.hints !141

; <label>:6784                                    ; preds = %6759
  %6785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6786 = extractvalue %dx.types.CBufRet.i32 %6785, 2
  %6787 = sitofp i32 %6786 to float
  %6788 = fsub fast float %6556, %6787
  %6789 = call float @dx.op.unary.f32(i32 27, float %6788)  ; Round_ni(value)
  %6790 = call float @dx.op.unary.f32(i32 22, float %6556)  ; Frc(value)
  %6791 = icmp eq i32 %6764, 0
  %6792 = call float @dx.op.unary.f32(i32 22, float %6762)  ; Frc(value)
  %6793 = call float @dx.op.unary.f32(i32 22, float %6763)  ; Frc(value)
  br i1 %6791, label %6864, label %6794, !dx.controlflow.hints !142

; <label>:6794                                    ; preds = %6784
  %6795 = and i32 %6764, 1
  %6796 = icmp eq i32 %6795, 0
  br i1 %6796, label %6810, label %6797, !dx.controlflow.hints !143

; <label>:6797                                    ; preds = %6794
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = fmul fast float %6792, %6799
  %6801 = fmul fast float %6793, %6799
  %6802 = fptoui float %6800 to i32
  %6803 = fptoui float %6801 to i32
  %6804 = fptoui float %6789 to i32
  %6805 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %6802, i32 %6803, i32 %6804, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6806 = extractvalue %dx.types.ResRet.f32 %6805, 0
  %6807 = extractvalue %dx.types.ResRet.f32 %6805, 1
  %6808 = extractvalue %dx.types.ResRet.f32 %6805, 2
  %6809 = extractvalue %dx.types.ResRet.f32 %6805, 3
  br label %6816

; <label>:6810                                    ; preds = %6794
  %6811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %64, float %6792, float %6793, float %6789, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6812 = extractvalue %dx.types.ResRet.f32 %6811, 0
  %6813 = extractvalue %dx.types.ResRet.f32 %6811, 1
  %6814 = extractvalue %dx.types.ResRet.f32 %6811, 2
  %6815 = extractvalue %dx.types.ResRet.f32 %6811, 3
  br label %6816

; <label>:6816                                    ; preds = %6810, %6797
  %6817 = phi float [ %6806, %6797 ], [ %6812, %6810 ]
  %6818 = phi float [ %6807, %6797 ], [ %6813, %6810 ]
  %6819 = phi float [ %6808, %6797 ], [ %6814, %6810 ]
  %6820 = phi float [ %6809, %6797 ], [ %6815, %6810 ]
  %6821 = fcmp fast ogt float %6790, 0.000000e+00
  br i1 %6821, label %6822, label %6892

; <label>:6822                                    ; preds = %6816
  %6823 = and i32 %6764, 2
  %6824 = icmp eq i32 %6823, 0
  %6825 = fadd fast float %6789, 1.000000e+00
  %6826 = call float @dx.op.unary.f32(i32 22, float %6760)  ; Frc(value)
  %6827 = call float @dx.op.unary.f32(i32 22, float %6761)  ; Frc(value)
  br i1 %6824, label %6841, label %6828, !dx.controlflow.hints !144

; <label>:6828                                    ; preds = %6822
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 0
  %6831 = fmul fast float %6826, %6830
  %6832 = fmul fast float %6827, %6830
  %6833 = fptoui float %6831 to i32
  %6834 = fptoui float %6832 to i32
  %6835 = fptoui float %6825 to i32
  %6836 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %6833, i32 %6834, i32 %6835, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = extractvalue %dx.types.ResRet.f32 %6836, 1
  %6839 = extractvalue %dx.types.ResRet.f32 %6836, 2
  %6840 = extractvalue %dx.types.ResRet.f32 %6836, 3
  br label %6847

; <label>:6841                                    ; preds = %6822
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %64, float %6826, float %6827, float %6825, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = extractvalue %dx.types.ResRet.f32 %6842, 1
  %6845 = extractvalue %dx.types.ResRet.f32 %6842, 2
  %6846 = extractvalue %dx.types.ResRet.f32 %6842, 3
  br label %6847

; <label>:6847                                    ; preds = %6841, %6828
  %6848 = phi float [ %6837, %6828 ], [ %6843, %6841 ]
  %6849 = phi float [ %6838, %6828 ], [ %6844, %6841 ]
  %6850 = phi float [ %6839, %6828 ], [ %6845, %6841 ]
  %6851 = phi float [ %6840, %6828 ], [ %6846, %6841 ]
  %6852 = fsub fast float %6848, %6817
  %6853 = fsub fast float %6849, %6818
  %6854 = fsub fast float %6850, %6819
  %6855 = fsub fast float %6851, %6820
  %6856 = fmul fast float %6852, %6790
  %6857 = fmul fast float %6853, %6790
  %6858 = fmul fast float %6854, %6790
  %6859 = fmul fast float %6855, %6790
  %6860 = fadd fast float %6856, %6817
  %6861 = fadd fast float %6857, %6818
  %6862 = fadd fast float %6858, %6819
  %6863 = fadd fast float %6859, %6820
  br label %6892

; <label>:6864                                    ; preds = %6784
  %6865 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %64, float %6792, float %6793, float %6789, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6866 = extractvalue %dx.types.ResRet.f32 %6865, 0
  %6867 = extractvalue %dx.types.ResRet.f32 %6865, 1
  %6868 = extractvalue %dx.types.ResRet.f32 %6865, 2
  %6869 = extractvalue %dx.types.ResRet.f32 %6865, 3
  %6870 = fcmp fast ogt float %6790, 0.000000e+00
  br i1 %6870, label %6871, label %6892, !dx.controlflow.hints !145

; <label>:6871                                    ; preds = %6864
  %6872 = fadd fast float %6789, 1.000000e+00
  %6873 = call float @dx.op.unary.f32(i32 22, float %6760)  ; Frc(value)
  %6874 = call float @dx.op.unary.f32(i32 22, float %6761)  ; Frc(value)
  %6875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %64, float %6873, float %6874, float %6872, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6876 = extractvalue %dx.types.ResRet.f32 %6875, 0
  %6877 = extractvalue %dx.types.ResRet.f32 %6875, 1
  %6878 = extractvalue %dx.types.ResRet.f32 %6875, 2
  %6879 = extractvalue %dx.types.ResRet.f32 %6875, 3
  %6880 = fsub fast float %6876, %6866
  %6881 = fsub fast float %6877, %6867
  %6882 = fsub fast float %6878, %6868
  %6883 = fsub fast float %6879, %6869
  %6884 = fmul fast float %6880, %6790
  %6885 = fmul fast float %6881, %6790
  %6886 = fmul fast float %6882, %6790
  %6887 = fmul fast float %6883, %6790
  %6888 = fadd fast float %6884, %6866
  %6889 = fadd fast float %6885, %6867
  %6890 = fadd fast float %6886, %6868
  %6891 = fadd fast float %6887, %6869
  br label %6892

; <label>:6892                                    ; preds = %6871, %6864, %6847, %6816
  %6893 = phi float [ %6860, %6847 ], [ %6817, %6816 ], [ %6888, %6871 ], [ %6866, %6864 ]
  %6894 = phi float [ %6861, %6847 ], [ %6818, %6816 ], [ %6889, %6871 ], [ %6867, %6864 ]
  %6895 = phi float [ %6862, %6847 ], [ %6819, %6816 ], [ %6890, %6871 ], [ %6868, %6864 ]
  %6896 = phi float [ %6863, %6847 ], [ %6820, %6816 ], [ %6891, %6871 ], [ %6869, %6864 ]
  %6897 = fadd fast float %6893, -5.000000e-01
  %6898 = fadd fast float %6895, -5.000000e-01
  %6899 = fmul fast float %6897, 0xBFD5555560000000
  %6900 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6898, float %6899)  ; FMad(a,b,c)
  %6901 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6894, float 0.000000e+00)  ; FMad(a,b,c)
  %6902 = fadd fast float %6901, %6896
  %6903 = fmul fast float %6897, -7.500000e-01
  %6904 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6898, float %6903)  ; FMad(a,b,c)
  %6905 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6894, float 0.000000e+00)  ; FMad(a,b,c)
  %6906 = fadd fast float %6905, %6896
  %6907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6908 = extractvalue %dx.types.CBufRet.f32 %6907, 0
  %6909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6910 = extractvalue %dx.types.CBufRet.f32 %6909, 0
  %6911 = extractvalue %dx.types.CBufRet.f32 %6909, 1
  %6912 = extractvalue %dx.types.CBufRet.f32 %6909, 2
  %6913 = extractvalue %dx.types.CBufRet.f32 %6909, 3
  %6914 = fsub fast float %6910, %6900
  %6915 = fsub fast float %6911, %6902
  %6916 = fsub fast float %6912, %6904
  %6917 = fsub fast float %6913, %6906
  %6918 = fmul fast float %6914, %6908
  %6919 = fmul fast float %6915, %6908
  %6920 = fmul fast float %6916, %6908
  %6921 = fmul fast float %6917, %6908
  %6922 = fadd fast float %6918, %6900
  %6923 = fadd fast float %6919, %6902
  %6924 = fadd fast float %6920, %6904
  %6925 = fadd fast float %6921, %6906
  %6926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6927 = extractvalue %dx.types.ResRet.i32 %6926, 0
  %6928 = and i32 %6927, 536870911
  %6929 = uitofp i32 %6928 to float
  %6930 = fmul fast float %6929, %6765
  %6931 = fmul fast float %6929, %6766
  %6932 = fptoui float %6930 to i32
  %6933 = fptoui float %6931 to i32
  %6934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6935 = extractvalue %dx.types.ResRet.i32 %6934, 0
  %6936 = and i32 %6935, 31
  %6937 = lshr i32 %6932, %6936
  %6938 = lshr i32 %6933, %6936
  %6939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6940 = extractvalue %dx.types.ResRet.i32 %6939, 0
  %6941 = and i32 %6940, 31
  %6942 = shl i32 1, %6941
  %6943 = call i32 @dx.op.binary.i32(i32 40, i32 %6942, i32 4)  ; UMin(a,b)
  %6944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6945 = extractvalue %dx.types.ResRet.i32 %6944, 0
  %6946 = extractvalue %dx.types.ResRet.i32 %6944, 1
  %6947 = icmp eq i32 %6943, 0
  br i1 %6947, label %6989, label %6948

; <label>:6948                                    ; preds = %6892
  br label %6949

; <label>:6949                                    ; preds = %6977, %6948
  %6950 = phi i32 [ %6980, %6977 ], [ 0, %6948 ]
  %6951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6952 = extractvalue %dx.types.ResRet.i32 %6951, 0
  %6953 = lshr i32 %6952, 16
  %6954 = and i32 %6953, 31
  %6955 = shl i32 %6938, %6954
  %6956 = add i32 %6955, %6937
  %6957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6958 = extractvalue %dx.types.ResRet.i32 %6957, 0
  %6959 = and i32 %6958, 31
  %6960 = shl i32 %6956, %6959
  %6961 = add i32 %6960, %6950
  %6962 = shl i32 %6961, 2
  %6963 = add i32 %6962, 32
  %6964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %6963, i32 undef)  ; BufferLoad(srv,index,wot)
  %6965 = extractvalue %dx.types.ResRet.i32 %6964, 0
  %6966 = icmp slt i32 %6965, 0
  %6967 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6950
  %6968 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %6950
  %6969 = bitcast float* %6967 to i32*
  %6970 = bitcast float* %6968 to i32*
  br i1 %6966, label %6971, label %6977

; <label>:6971                                    ; preds = %6949
  %6972 = and i32 %6965, 1073741823
  %6973 = add nuw nsw i32 %6972, 20
  %6974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %6973, i32 undef)  ; BufferLoad(srv,index,wot)
  %6975 = extractvalue %dx.types.ResRet.i32 %6974, 0
  %6976 = extractvalue %dx.types.ResRet.i32 %6974, 1
  br label %6977

; <label>:6977                                    ; preds = %6971, %6949
  %6978 = phi i32 [ %6975, %6971 ], [ %6945, %6949 ]
  %6979 = phi i32 [ %6976, %6971 ], [ %6946, %6949 ]
  store i32 %6978, i32* %6969, align 4
  store i32 %6979, i32* %6970, align 4
  %6980 = add nuw i32 %6950, 1
  %6981 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6982 = extractvalue %dx.types.CBufRet.i32 %6981, 2
  %6983 = icmp eq i32 %6982, 0
  %6984 = icmp ugt i32 %6965, -1073741825
  %6985 = and i1 %6984, %6983
  %6986 = icmp ult i32 %6980, %6943
  %6987 = and i1 %6985, %6986
  br i1 %6987, label %6949, label %6988

; <label>:6988                                    ; preds = %6977
  br label %6989

; <label>:6989                                    ; preds = %6988, %6892
  %6990 = phi i32 [ 0, %6892 ], [ %6980, %6988 ]
  %6991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6992 = extractvalue %dx.types.CBufRet.f32 %6991, 2
  %6993 = fptoui float %6992 to i32
  %6994 = icmp eq i32 %6993, 0
  br i1 %6994, label %7046, label %6995

; <label>:6995                                    ; preds = %6989
  br label %6996

; <label>:6996                                    ; preds = %7041, %6995
  %6997 = phi i32 [ %7042, %7041 ], [ %6990, %6995 ]
  %6998 = phi i32 [ %7043, %7041 ], [ 0, %6995 ]
  %6999 = lshr i32 %6998, 2
  %7000 = and i32 %6998, 3
  %7001 = add nuw nsw i32 %6999, 83
  %7002 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 %7001)  ; CBufferLoadLegacy(handle,regIndex)
  %7003 = extractvalue %dx.types.CBufRet.i32 %7002, 0
  %7004 = extractvalue %dx.types.CBufRet.i32 %7002, 1
  %7005 = extractvalue %dx.types.CBufRet.i32 %7002, 2
  %7006 = extractvalue %dx.types.CBufRet.i32 %7002, 3
  %7007 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 0
  store i32 %7003, i32* %7007, align 4
  %7008 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 1
  store i32 %7004, i32* %7008, align 4
  %7009 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 2
  store i32 %7005, i32* %7009, align 4
  %7010 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 3
  store i32 %7006, i32* %7010, align 4
  %7011 = getelementptr inbounds [4 x i32], [4 x i32]* %71, i32 0, i32 %7000
  %7012 = load i32, i32* %7011, align 4, !tbaa !103, !noalias !146
  %7013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %7014 = extractvalue %dx.types.ResRet.i32 %7013, 0
  %7015 = lshr i32 %7014, 16
  %7016 = and i32 %7015, 31
  %7017 = shl i32 %6938, %7016
  %7018 = add i32 %7017, %6937
  %7019 = shl i32 %7018, 2
  %7020 = add i32 %7019, %7012
  %7021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %7020, i32 undef)  ; BufferLoad(srv,index,wot)
  %7022 = extractvalue %dx.types.ResRet.i32 %7021, 0
  %7023 = icmp eq i32 %7022, 0
  br i1 %7023, label %7041, label %7024

; <label>:7024                                    ; preds = %6996
  %7025 = icmp slt i32 %7022, 0
  %7026 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %6997
  %7027 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %6997
  %7028 = bitcast float* %7026 to i32*
  %7029 = bitcast float* %7027 to i32*
  br i1 %7025, label %7030, label %7037

; <label>:7030                                    ; preds = %7024
  %7031 = and i32 %7022, 1073741823
  %7032 = add i32 %7012, 20
  %7033 = add i32 %7032, %7031
  %7034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %7033, i32 undef)  ; BufferLoad(srv,index,wot)
  %7035 = extractvalue %dx.types.ResRet.i32 %7034, 0
  %7036 = extractvalue %dx.types.ResRet.i32 %7034, 1
  br label %7037

; <label>:7037                                    ; preds = %7030, %7024
  %7038 = phi i32 [ %7035, %7030 ], [ %6945, %7024 ]
  %7039 = phi i32 [ %7036, %7030 ], [ %6946, %7024 ]
  store i32 %7038, i32* %7028, align 4
  store i32 %7039, i32* %7029, align 4
  %7040 = add i32 %6997, 1
  br label %7041

; <label>:7041                                    ; preds = %7037, %6996
  %7042 = phi i32 [ %6997, %6996 ], [ %7040, %7037 ]
  %7043 = add nuw i32 %6998, 1
  %7044 = icmp eq i32 %7043, %6993
  br i1 %7044, label %7045, label %6996

; <label>:7045                                    ; preds = %7041
  br label %7046

; <label>:7046                                    ; preds = %7045, %6989
  %7047 = phi i32 [ %6990, %6989 ], [ %7042, %7045 ]
  %7048 = icmp eq i32 %7047, 1
  %7049 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 0
  %7050 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 0
  br i1 %7048, label %7051, label %7054

; <label>:7051                                    ; preds = %7046
  %7052 = load float, float* %7049, align 4
  %7053 = load float, float* %7050, align 4
  br label %7081

; <label>:7054                                    ; preds = %7046
  %7055 = load float, float* %7049, align 4
  %7056 = load float, float* %7050, align 4
  %7057 = fdiv fast float 1.000000e+00, %7056
  %7058 = fsub fast float %7055, %7057
  %7059 = icmp ugt i32 %7047, 1
  br i1 %7059, label %7060, label %7076

; <label>:7060                                    ; preds = %7054
  br label %7061

; <label>:7061                                    ; preds = %7061, %7060
  %7062 = phi float [ %7071, %7061 ], [ %7058, %7060 ]
  %7063 = phi float [ %7072, %7061 ], [ %7055, %7060 ]
  %7064 = phi i32 [ %7073, %7061 ], [ 1, %7060 ]
  %7065 = getelementptr [12 x float], [12 x float]* %83, i32 0, i32 %7064
  %7066 = load float, float* %7065, align 4
  %7067 = getelementptr [12 x float], [12 x float]* %84, i32 0, i32 %7064
  %7068 = load float, float* %7067, align 4
  %7069 = fdiv fast float 1.000000e+00, %7068
  %7070 = fsub fast float %7066, %7069
  %7071 = call float @dx.op.binary.f32(i32 36, float %7062, float %7070)  ; FMin(a,b)
  %7072 = call float @dx.op.binary.f32(i32 35, float %7063, float %7066)  ; FMax(a,b)
  %7073 = add nuw i32 %7064, 1
  %7074 = icmp eq i32 %7073, %7047
  br i1 %7074, label %7075, label %7061

; <label>:7075                                    ; preds = %7061
  br label %7076

; <label>:7076                                    ; preds = %7075, %7054
  %7077 = phi float [ %7058, %7054 ], [ %7071, %7075 ]
  %7078 = phi float [ %7055, %7054 ], [ %7072, %7075 ]
  %7079 = fsub fast float %7078, %7077
  %7080 = fdiv fast float 1.000000e+00, %7079
  br label %7081

; <label>:7081                                    ; preds = %7076, %7051
  %7082 = phi float [ %7052, %7051 ], [ %7078, %7076 ]
  %7083 = phi float [ %7053, %7051 ], [ %7080, %7076 ]
  %7084 = fadd fast float %6512, %7082
  %7085 = fmul fast float %7084, %7083
  %7086 = call float @dx.op.unary.f32(i32 7, float %7085)  ; Saturate(value)
  %7087 = fmul fast float %7086, 2.000000e+00
  %7088 = fsub fast float 1.000000e+00, %7087
  %7089 = fmul fast float %6922, %6922
  %7090 = fsub fast float %6923, %7089
  %7091 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %7090)  ; FMax(a,b)
  %7092 = fdiv fast float 1.000000e+00, %7091
  %7093 = fmul fast float %6923, %6922
  %7094 = fsub fast float %6924, %7093
  %7095 = fsub fast float %7088, %6922
  %7096 = fmul fast float %7088, %7088
  %7097 = fsub fast float %7096, %6923
  %7098 = fmul fast float %7092, %7094
  %7099 = fmul fast float %7098, %7095
  %7100 = fsub fast float %7097, %7099
  %7101 = fmul fast float %6923, %6923
  %7102 = fsub fast float %6925, %7101
  %7103 = fmul fast float %7094, %7094
  %7104 = fmul fast float %7103, %7092
  %7105 = fsub fast float %7102, %7104
  %7106 = fdiv fast float %7100, %7105
  %7107 = fmul fast float %7106, %7094
  %7108 = fsub fast float %7095, %7107
  %7109 = fmul fast float %7108, %7092
  %7110 = fmul fast float %7109, %6922
  %7111 = fsub fast float 1.000000e+00, %7110
  %7112 = fmul fast float %7106, %6923
  %7113 = fsub fast float %7111, %7112
  %7114 = fmul fast float %7109, %7109
  %7115 = fmul fast float %7106, 4.000000e+00
  %7116 = fmul fast float %7115, %7113
  %7117 = fsub fast float %7114, %7116
  %7118 = call float @dx.op.unary.f32(i32 24, float %7117)  ; Sqrt(value)
  %7119 = fcmp fast oge float %7109, 0.000000e+00
  %7120 = fsub fast float -0.000000e+00, %7118
  %7121 = select i1 %7119, float %7120, float %7118
  %7122 = fsub fast float %7121, %7109
  %7123 = fdiv fast float %7122, %7106
  %7124 = fdiv fast float %7113, %7122
  %7125 = fmul fast float %7123, 5.000000e-01
  %7126 = fmul fast float %7124, 2.000000e+00
  %7127 = select i1 %7119, float %7125, float %7126
  %7128 = select i1 %7119, float %7126, float %7125
  %7129 = call float @dx.op.binary.f32(i32 35, float %7127, float %7128)  ; FMax(a,b)
  %7130 = call float @dx.op.binary.f32(i32 36, float %7127, float %7128)  ; FMin(a,b)
  %7131 = fcmp fast ogt float %7088, %7129
  %7132 = fsub fast float %7088, %7130
  %7133 = fsub fast float %7088, %7129
  %7134 = fsub fast float %7129, %7130
  %7135 = select i1 %7131, float %7133, float %7134
  %7136 = fmul float %7132, %7135
  %7137 = select i1 %7131, float %7130, float %7088
  %7138 = fcmp fast ogt float %7088, %7130
  %7139 = fmul fast float %7137, %7129
  %7140 = fadd fast float %7137, %7129
  %7141 = fmul fast float %7140, %6922
  %7142 = fadd fast float %7139, %6923
  %7143 = fsub fast float %7142, %7141
  %7144 = fdiv fast float %7143, %7136
  %7145 = select i1 %7138, float %7144, float 0.000000e+00
  %7146 = fsub fast float 1.000000e+00, %7145
  %7147 = select i1 %7131, float %7146, float %7145
  %7148 = call float @dx.op.unary.f32(i32 7, float %7147)  ; Saturate(value)
  %7149 = extractvalue %dx.types.CBufRet.f32 %6907, 3
  %7150 = fmul fast float %7149, %7148
  %7151 = fsub fast float 1.000000e+00, %7150
  br label %7152

; <label>:7152                                    ; preds = %7081, %6759, %6485, %6481, %6451
  %7153 = phi float [ 1.000000e+00, %6451 ], [ %7151, %7081 ], [ 1.000000e+00, %6485 ], [ 1.000000e+00, %6759 ], [ 1.000000e+00, %6481 ]
  %7154 = fcmp fast ogt float %6477, 0.000000e+00
  br i1 %7154, label %7155, label %7319, !dx.controlflow.hints !151

; <label>:7155                                    ; preds = %7152
  %7156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7157 = extractvalue %dx.types.CBufRet.f32 %7156, 2
  %7158 = fadd fast float %7157, %6397
  %7159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7160 = extractvalue %dx.types.CBufRet.f32 %7159, 2
  %7161 = extractvalue %dx.types.CBufRet.f32 %7159, 3
  %7162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7163 = extractvalue %dx.types.CBufRet.f32 %7162, 2
  %7164 = call float @dx.op.binary.f32(i32 35, float %7158, float 0.000000e+00)  ; FMax(a,b)
  %7165 = fadd fast float %7164, 0x3F10000000000000
  %7166 = fcmp fast oeq float %7163, 0.000000e+00
  br i1 %7166, label %7167, label %7234

; <label>:7167                                    ; preds = %7155
  %7168 = extractvalue %dx.types.CBufRet.f32 %7159, 1
  %7169 = extractvalue %dx.types.CBufRet.f32 %7159, 0
  %7170 = fmul fast float %7169, %6285
  %7171 = fmul fast float %7168, %6286
  %7172 = fadd fast float %7170, 5.000000e-01
  %7173 = call float @dx.op.unary.f32(i32 27, float %7172)  ; Round_ni(value)
  %7174 = fadd fast float %7171, 5.000000e-01
  %7175 = call float @dx.op.unary.f32(i32 27, float %7174)  ; Round_ni(value)
  %7176 = fsub fast float %7172, %7173
  %7177 = fsub fast float %7174, %7175
  %7178 = fadd fast float %7173, -5.000000e-01
  %7179 = fadd fast float %7175, -5.000000e-01
  %7180 = fmul fast float %7176, 2.000000e+00
  %7181 = fsub fast float 3.000000e+00, %7180
  %7182 = fadd fast float %7180, 1.000000e+00
  %7183 = fsub fast float 2.000000e+00, %7176
  %7184 = bitcast float %7181 to i32
  %7185 = sub nsw i32 2129859010, %7184
  %7186 = bitcast i32 %7185 to float
  %7187 = fmul fast float %7186, %7183
  %7188 = fadd fast float %7187, -1.000000e+00
  %7189 = bitcast float %7182 to i32
  %7190 = sub nsw i32 2129859010, %7189
  %7191 = bitcast i32 %7190 to float
  %7192 = fmul fast float %7191, %7176
  %7193 = fadd fast float %7192, 1.000000e+00
  %7194 = fmul fast float %7177, 2.000000e+00
  %7195 = fsub fast float 3.000000e+00, %7194
  %7196 = fadd fast float %7194, 1.000000e+00
  %7197 = fsub fast float 2.000000e+00, %7177
  %7198 = bitcast float %7195 to i32
  %7199 = sub nsw i32 2129859010, %7198
  %7200 = bitcast i32 %7199 to float
  %7201 = fmul fast float %7200, %7197
  %7202 = fadd fast float %7201, -1.000000e+00
  %7203 = bitcast float %7196 to i32
  %7204 = sub nsw i32 2129859010, %7203
  %7205 = bitcast i32 %7204 to float
  %7206 = fmul fast float %7205, %7177
  %7207 = fadd fast float %7206, 1.000000e+00
  %7208 = fadd fast float %7188, %7178
  %7209 = fmul fast float %7208, %7160
  %7210 = fadd fast float %7202, %7179
  %7211 = fmul fast float %7210, %7161
  %7212 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %7209, float %7211, float undef, float undef, i32 0, i32 0, i32 undef, float %7165)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7213 = extractvalue %dx.types.ResRet.f32 %7212, 0
  %7214 = fmul fast float %7213, %7181
  %7215 = fadd fast float %7193, %7178
  %7216 = fmul fast float %7215, %7160
  %7217 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %7216, float %7211, float undef, float undef, i32 0, i32 0, i32 undef, float %7165)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7218 = extractvalue %dx.types.ResRet.f32 %7217, 0
  %7219 = fmul fast float %7218, %7182
  %7220 = fadd fast float %7207, %7179
  %7221 = fmul fast float %7220, %7161
  %7222 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %7209, float %7221, float undef, float undef, i32 0, i32 0, i32 undef, float %7165)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7223 = extractvalue %dx.types.ResRet.f32 %7222, 0
  %7224 = fmul fast float %7223, %7181
  %7225 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %67, float %7216, float %7221, float undef, float undef, i32 0, i32 0, i32 undef, float %7165)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7226 = extractvalue %dx.types.ResRet.f32 %7225, 0
  %7227 = fmul fast float %7226, %7182
  %7228 = fadd fast float %7227, %7224
  %7229 = fmul fast float %7228, %7196
  %7230 = fadd fast float %7219, %7214
  %7231 = fmul fast float %7230, %7195
  %7232 = fadd fast float %7231, %7229
  %7233 = fmul fast float %7232, 6.250000e-02
  br label %7319

; <label>:7234                                    ; preds = %7155
  %7235 = fmul fast float %2539, 0x401921FB60000000
  %7236 = call float @dx.op.unary.f32(i32 13, float %7235)  ; Sin(value)
  %7237 = call float @dx.op.unary.f32(i32 12, float %7235)  ; Cos(value)
  %7238 = fsub fast float -0.000000e+00, %7236
  br label %7239

; <label>:7239                                    ; preds = %7288, %7234
  %7240 = phi float [ 0.000000e+00, %7234 ], [ %7283, %7288 ]
  %7241 = phi float [ 0.000000e+00, %7234 ], [ %7285, %7288 ]
  %7242 = phi i32 [ 0, %7234 ], [ %7289, %7288 ]
  %7243 = mul i32 %7242, 2
  %7244 = add i32 0, %7243
  %7245 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7244
  %7246 = load float, float* %7245, align 4
  %7247 = mul i32 %7242, 2
  %7248 = add i32 1, %7247
  %7249 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7248
  %7250 = load float, float* %7249, align 4
  %7251 = fmul fast float %7246, %7237
  %7252 = call float @dx.op.tertiary.f32(i32 46, float %7250, float %7238, float %7251)  ; FMad(a,b,c)
  %7253 = fmul fast float %7246, %7236
  %7254 = call float @dx.op.tertiary.f32(i32 46, float %7250, float %7237, float %7253)  ; FMad(a,b,c)
  %7255 = fmul fast float %7252, %7163
  %7256 = fmul fast float %7254, %7163
  %7257 = fadd fast float %7255, %6285
  %7258 = fadd fast float %7256, %6286
  %7259 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %66, float %7257, float %7258, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7260 = extractvalue %dx.types.ResRet.f32 %7259, 0
  %7261 = extractvalue %dx.types.ResRet.f32 %7259, 1
  %7262 = extractvalue %dx.types.ResRet.f32 %7259, 2
  %7263 = extractvalue %dx.types.ResRet.f32 %7259, 3
  %7264 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  store float %7260, float* %7264, align 4
  %7265 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  store float %7261, float* %7265, align 4
  %7266 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  store float %7262, float* %7266, align 4
  %7267 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  store float %7263, float* %7267, align 4
  %7268 = fsub fast float %7260, %7165
  %7269 = fcmp fast olt float %7268, 0.000000e+00
  %7270 = select i1 %7269, float 0.000000e+00, float 1.000000e+00
  %7271 = fadd fast float %7270, %7240
  %7272 = fmul fast float %7270, %7268
  %7273 = fadd fast float %7272, %7241
  br label %7274

; <label>:7274                                    ; preds = %7274, %7239
  %7275 = phi i32 [ 1, %7239 ], [ %7286, %7274 ]
  %7276 = phi float [ %7273, %7239 ], [ %7285, %7274 ]
  %7277 = phi float [ %7271, %7239 ], [ %7283, %7274 ]
  %7278 = getelementptr [4 x float], [4 x float]* %89, i32 0, i32 %7275
  %7279 = load float, float* %7278, align 4, !tbaa !110, !noalias !152
  %7280 = fsub fast float %7279, %7165
  %7281 = fcmp fast olt float %7280, 0.000000e+00
  %7282 = select i1 %7281, float 0.000000e+00, float 1.000000e+00
  %7283 = fadd fast float %7282, %7277
  %7284 = fmul fast float %7282, %7280
  %7285 = fadd fast float %7284, %7276
  %7286 = add nuw nsw i32 %7275, 1
  %7287 = icmp eq i32 %7286, 4
  br i1 %7287, label %7288, label %7274, !llvm.loop !157

; <label>:7288                                    ; preds = %7274
  %7289 = add nuw nsw i32 %7242, 1
  %7290 = icmp eq i32 %7289, 8
  br i1 %7290, label %7291, label %7239, !llvm.loop !158

; <label>:7291                                    ; preds = %7288
  %7292 = fdiv fast float 1.000000e+00, %7283
  %7293 = fmul fast float %7292, %7285
  %7294 = fdiv fast float 1.000000e+00, %7165
  %7295 = fmul fast float %7293, %7294
  %7296 = call float @dx.op.unary.f32(i32 7, float %7295)  ; Saturate(value)
  %7297 = call float @dx.op.binary.f32(i32 35, float %7296, float 0.000000e+00)  ; FMax(a,b)
  %7298 = fmul fast float %7283, 3.125000e-02
  %7299 = call float @dx.op.unary.f32(i32 7, float %7298)  ; Saturate(value)
  %7300 = fmul fast float %7299, 2.000000e+00
  %7301 = fadd fast float %7300, -1.000000e+00
  %7302 = fcmp fast ogt float %7301, 0.000000e+00
  %7303 = fcmp fast olt float %7301, 0.000000e+00
  %7304 = zext i1 %7302 to i32
  %7305 = zext i1 %7303 to i32
  %7306 = sub nsw i32 %7304, %7305
  %7307 = sitofp i32 %7306 to float
  %7308 = fmul fast float %7307, %7301
  %7309 = fsub fast float 1.000000e+00, %7308
  %7310 = fmul fast float %7309, %7309
  %7311 = fmul fast float %7310, %7309
  %7312 = fsub fast float %7309, %7311
  %7313 = fmul fast float %7312, %7297
  %7314 = fsub fast float 1.000000e+00, %7311
  %7315 = fsub fast float %7314, %7313
  %7316 = fmul fast float %7307, 5.000000e-01
  %7317 = fmul fast float %7316, %7315
  %7318 = fsub fast float 5.000000e-01, %7317
  br label %7319

; <label>:7319                                    ; preds = %7291, %7167, %7152
  %7320 = phi float [ 1.000000e+00, %7152 ], [ %7233, %7167 ], [ %7318, %7291 ]
  %7321 = fcmp fast ogt float %6475, 0.000000e+00
  br i1 %7321, label %7322, label %7486, !dx.controlflow.hints !159

; <label>:7322                                    ; preds = %7319
  %7323 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7324 = extractvalue %dx.types.CBufRet.f32 %7323, 1
  %7325 = fadd fast float %7324, %6397
  %7326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.f32 %7326, 2
  %7328 = extractvalue %dx.types.CBufRet.f32 %7326, 3
  %7329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7330 = extractvalue %dx.types.CBufRet.f32 %7329, 1
  %7331 = call float @dx.op.binary.f32(i32 35, float %7325, float 0.000000e+00)  ; FMax(a,b)
  %7332 = fadd fast float %7331, 0x3F10000000000000
  %7333 = fcmp fast oeq float %7330, 0.000000e+00
  br i1 %7333, label %7334, label %7401

; <label>:7334                                    ; preds = %7322
  %7335 = extractvalue %dx.types.CBufRet.f32 %7326, 1
  %7336 = extractvalue %dx.types.CBufRet.f32 %7326, 0
  %7337 = fmul fast float %7336, %6277
  %7338 = fmul fast float %7335, %6278
  %7339 = fadd fast float %7337, 5.000000e-01
  %7340 = call float @dx.op.unary.f32(i32 27, float %7339)  ; Round_ni(value)
  %7341 = fadd fast float %7338, 5.000000e-01
  %7342 = call float @dx.op.unary.f32(i32 27, float %7341)  ; Round_ni(value)
  %7343 = fsub fast float %7339, %7340
  %7344 = fsub fast float %7341, %7342
  %7345 = fadd fast float %7340, -5.000000e-01
  %7346 = fadd fast float %7342, -5.000000e-01
  %7347 = fmul fast float %7343, 2.000000e+00
  %7348 = fsub fast float 3.000000e+00, %7347
  %7349 = fadd fast float %7347, 1.000000e+00
  %7350 = fsub fast float 2.000000e+00, %7343
  %7351 = bitcast float %7348 to i32
  %7352 = sub nsw i32 2129859010, %7351
  %7353 = bitcast i32 %7352 to float
  %7354 = fmul fast float %7353, %7350
  %7355 = fadd fast float %7354, -1.000000e+00
  %7356 = bitcast float %7349 to i32
  %7357 = sub nsw i32 2129859010, %7356
  %7358 = bitcast i32 %7357 to float
  %7359 = fmul fast float %7358, %7343
  %7360 = fadd fast float %7359, 1.000000e+00
  %7361 = fmul fast float %7344, 2.000000e+00
  %7362 = fsub fast float 3.000000e+00, %7361
  %7363 = fadd fast float %7361, 1.000000e+00
  %7364 = fsub fast float 2.000000e+00, %7344
  %7365 = bitcast float %7362 to i32
  %7366 = sub nsw i32 2129859010, %7365
  %7367 = bitcast i32 %7366 to float
  %7368 = fmul fast float %7367, %7364
  %7369 = fadd fast float %7368, -1.000000e+00
  %7370 = bitcast float %7363 to i32
  %7371 = sub nsw i32 2129859010, %7370
  %7372 = bitcast i32 %7371 to float
  %7373 = fmul fast float %7372, %7344
  %7374 = fadd fast float %7373, 1.000000e+00
  %7375 = fadd fast float %7355, %7345
  %7376 = fmul fast float %7375, %7327
  %7377 = fadd fast float %7369, %7346
  %7378 = fmul fast float %7377, %7328
  %7379 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %67, float %7376, float %7378, float undef, float undef, i32 0, i32 0, i32 undef, float %7332)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7380 = extractvalue %dx.types.ResRet.f32 %7379, 0
  %7381 = fmul fast float %7380, %7348
  %7382 = fadd fast float %7360, %7345
  %7383 = fmul fast float %7382, %7327
  %7384 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %67, float %7383, float %7378, float undef, float undef, i32 0, i32 0, i32 undef, float %7332)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7385 = extractvalue %dx.types.ResRet.f32 %7384, 0
  %7386 = fmul fast float %7385, %7349
  %7387 = fadd fast float %7374, %7346
  %7388 = fmul fast float %7387, %7328
  %7389 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %67, float %7376, float %7388, float undef, float undef, i32 0, i32 0, i32 undef, float %7332)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7390 = extractvalue %dx.types.ResRet.f32 %7389, 0
  %7391 = fmul fast float %7390, %7348
  %7392 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %67, float %7383, float %7388, float undef, float undef, i32 0, i32 0, i32 undef, float %7332)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7393 = extractvalue %dx.types.ResRet.f32 %7392, 0
  %7394 = fmul fast float %7393, %7349
  %7395 = fadd fast float %7394, %7391
  %7396 = fmul fast float %7395, %7363
  %7397 = fadd fast float %7386, %7381
  %7398 = fmul fast float %7397, %7362
  %7399 = fadd fast float %7398, %7396
  %7400 = fmul fast float %7399, 6.250000e-02
  br label %7486

; <label>:7401                                    ; preds = %7322
  %7402 = fmul fast float %2539, 0x401921FB60000000
  %7403 = call float @dx.op.unary.f32(i32 13, float %7402)  ; Sin(value)
  %7404 = call float @dx.op.unary.f32(i32 12, float %7402)  ; Cos(value)
  %7405 = fsub fast float -0.000000e+00, %7403
  br label %7406

; <label>:7406                                    ; preds = %7455, %7401
  %7407 = phi float [ 0.000000e+00, %7401 ], [ %7450, %7455 ]
  %7408 = phi float [ 0.000000e+00, %7401 ], [ %7452, %7455 ]
  %7409 = phi i32 [ 0, %7401 ], [ %7456, %7455 ]
  %7410 = mul i32 %7409, 2
  %7411 = add i32 0, %7410
  %7412 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7411
  %7413 = load float, float* %7412, align 4
  %7414 = mul i32 %7409, 2
  %7415 = add i32 1, %7414
  %7416 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7415
  %7417 = load float, float* %7416, align 4
  %7418 = fmul fast float %7413, %7404
  %7419 = call float @dx.op.tertiary.f32(i32 46, float %7417, float %7405, float %7418)  ; FMad(a,b,c)
  %7420 = fmul fast float %7413, %7403
  %7421 = call float @dx.op.tertiary.f32(i32 46, float %7417, float %7404, float %7420)  ; FMad(a,b,c)
  %7422 = fmul fast float %7419, %7330
  %7423 = fmul fast float %7421, %7330
  %7424 = fadd fast float %7422, %6277
  %7425 = fadd fast float %7423, %6278
  %7426 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %66, float %7424, float %7425, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7427 = extractvalue %dx.types.ResRet.f32 %7426, 0
  %7428 = extractvalue %dx.types.ResRet.f32 %7426, 1
  %7429 = extractvalue %dx.types.ResRet.f32 %7426, 2
  %7430 = extractvalue %dx.types.ResRet.f32 %7426, 3
  %7431 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  store float %7427, float* %7431, align 4
  %7432 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  store float %7428, float* %7432, align 4
  %7433 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  store float %7429, float* %7433, align 4
  %7434 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  store float %7430, float* %7434, align 4
  %7435 = fsub fast float %7427, %7332
  %7436 = fcmp fast olt float %7435, 0.000000e+00
  %7437 = select i1 %7436, float 0.000000e+00, float 1.000000e+00
  %7438 = fadd fast float %7437, %7407
  %7439 = fmul fast float %7437, %7435
  %7440 = fadd fast float %7439, %7408
  br label %7441

; <label>:7441                                    ; preds = %7441, %7406
  %7442 = phi i32 [ 1, %7406 ], [ %7453, %7441 ]
  %7443 = phi float [ %7440, %7406 ], [ %7452, %7441 ]
  %7444 = phi float [ %7438, %7406 ], [ %7450, %7441 ]
  %7445 = getelementptr [4 x float], [4 x float]* %88, i32 0, i32 %7442
  %7446 = load float, float* %7445, align 4, !tbaa !110, !noalias !152
  %7447 = fsub fast float %7446, %7332
  %7448 = fcmp fast olt float %7447, 0.000000e+00
  %7449 = select i1 %7448, float 0.000000e+00, float 1.000000e+00
  %7450 = fadd fast float %7449, %7444
  %7451 = fmul fast float %7449, %7447
  %7452 = fadd fast float %7451, %7443
  %7453 = add nuw nsw i32 %7442, 1
  %7454 = icmp eq i32 %7453, 4
  br i1 %7454, label %7455, label %7441, !llvm.loop !157

; <label>:7455                                    ; preds = %7441
  %7456 = add nuw nsw i32 %7409, 1
  %7457 = icmp eq i32 %7456, 8
  br i1 %7457, label %7458, label %7406, !llvm.loop !158

; <label>:7458                                    ; preds = %7455
  %7459 = fdiv fast float 1.000000e+00, %7450
  %7460 = fmul fast float %7459, %7452
  %7461 = fdiv fast float 1.000000e+00, %7332
  %7462 = fmul fast float %7460, %7461
  %7463 = call float @dx.op.unary.f32(i32 7, float %7462)  ; Saturate(value)
  %7464 = call float @dx.op.binary.f32(i32 35, float %7463, float 0.000000e+00)  ; FMax(a,b)
  %7465 = fmul fast float %7450, 3.125000e-02
  %7466 = call float @dx.op.unary.f32(i32 7, float %7465)  ; Saturate(value)
  %7467 = fmul fast float %7466, 2.000000e+00
  %7468 = fadd fast float %7467, -1.000000e+00
  %7469 = fcmp fast ogt float %7468, 0.000000e+00
  %7470 = fcmp fast olt float %7468, 0.000000e+00
  %7471 = zext i1 %7469 to i32
  %7472 = zext i1 %7470 to i32
  %7473 = sub nsw i32 %7471, %7472
  %7474 = sitofp i32 %7473 to float
  %7475 = fmul fast float %7474, %7468
  %7476 = fsub fast float 1.000000e+00, %7475
  %7477 = fmul fast float %7476, %7476
  %7478 = fmul fast float %7477, %7476
  %7479 = fsub fast float %7476, %7478
  %7480 = fmul fast float %7479, %7464
  %7481 = fsub fast float 1.000000e+00, %7478
  %7482 = fsub fast float %7481, %7480
  %7483 = fmul fast float %7474, 5.000000e-01
  %7484 = fmul fast float %7483, %7482
  %7485 = fsub fast float 5.000000e-01, %7484
  br label %7486

; <label>:7486                                    ; preds = %7458, %7334, %7319
  %7487 = phi float [ 1.000000e+00, %7319 ], [ %7400, %7334 ], [ %7485, %7458 ]
  %7488 = fcmp fast ogt float %6474, 0.000000e+00
  br i1 %7488, label %7489, label %7653, !dx.controlflow.hints !160

; <label>:7489                                    ; preds = %7486
  %7490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %7491 = extractvalue %dx.types.CBufRet.f32 %7490, 0
  %7492 = fadd fast float %7491, %6397
  %7493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %7494 = extractvalue %dx.types.CBufRet.f32 %7493, 2
  %7495 = extractvalue %dx.types.CBufRet.f32 %7493, 3
  %7496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %7497 = extractvalue %dx.types.CBufRet.f32 %7496, 0
  %7498 = call float @dx.op.binary.f32(i32 35, float %7492, float 0.000000e+00)  ; FMax(a,b)
  %7499 = fadd fast float %7498, 0x3F10000000000000
  %7500 = fcmp fast oeq float %7497, 0.000000e+00
  br i1 %7500, label %7501, label %7568

; <label>:7501                                    ; preds = %7489
  %7502 = extractvalue %dx.types.CBufRet.f32 %7493, 1
  %7503 = extractvalue %dx.types.CBufRet.f32 %7493, 0
  %7504 = fmul fast float %7503, %6263
  %7505 = fmul fast float %7502, %6267
  %7506 = fadd fast float %7504, 5.000000e-01
  %7507 = call float @dx.op.unary.f32(i32 27, float %7506)  ; Round_ni(value)
  %7508 = fadd fast float %7505, 5.000000e-01
  %7509 = call float @dx.op.unary.f32(i32 27, float %7508)  ; Round_ni(value)
  %7510 = fsub fast float %7506, %7507
  %7511 = fsub fast float %7508, %7509
  %7512 = fadd fast float %7507, -5.000000e-01
  %7513 = fadd fast float %7509, -5.000000e-01
  %7514 = fmul fast float %7510, 2.000000e+00
  %7515 = fsub fast float 3.000000e+00, %7514
  %7516 = fadd fast float %7514, 1.000000e+00
  %7517 = fsub fast float 2.000000e+00, %7510
  %7518 = bitcast float %7515 to i32
  %7519 = sub nsw i32 2129859010, %7518
  %7520 = bitcast i32 %7519 to float
  %7521 = fmul fast float %7520, %7517
  %7522 = fadd fast float %7521, -1.000000e+00
  %7523 = bitcast float %7516 to i32
  %7524 = sub nsw i32 2129859010, %7523
  %7525 = bitcast i32 %7524 to float
  %7526 = fmul fast float %7525, %7510
  %7527 = fadd fast float %7526, 1.000000e+00
  %7528 = fmul fast float %7511, 2.000000e+00
  %7529 = fsub fast float 3.000000e+00, %7528
  %7530 = fadd fast float %7528, 1.000000e+00
  %7531 = fsub fast float 2.000000e+00, %7511
  %7532 = bitcast float %7529 to i32
  %7533 = sub nsw i32 2129859010, %7532
  %7534 = bitcast i32 %7533 to float
  %7535 = fmul fast float %7534, %7531
  %7536 = fadd fast float %7535, -1.000000e+00
  %7537 = bitcast float %7530 to i32
  %7538 = sub nsw i32 2129859010, %7537
  %7539 = bitcast i32 %7538 to float
  %7540 = fmul fast float %7539, %7511
  %7541 = fadd fast float %7540, 1.000000e+00
  %7542 = fadd fast float %7522, %7512
  %7543 = fmul fast float %7542, %7494
  %7544 = fadd fast float %7536, %7513
  %7545 = fmul fast float %7544, %7495
  %7546 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %67, float %7543, float %7545, float undef, float undef, i32 0, i32 0, i32 undef, float %7499)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7547 = extractvalue %dx.types.ResRet.f32 %7546, 0
  %7548 = fmul fast float %7547, %7515
  %7549 = fadd fast float %7527, %7512
  %7550 = fmul fast float %7549, %7494
  %7551 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %67, float %7550, float %7545, float undef, float undef, i32 0, i32 0, i32 undef, float %7499)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7552 = extractvalue %dx.types.ResRet.f32 %7551, 0
  %7553 = fmul fast float %7552, %7516
  %7554 = fadd fast float %7541, %7513
  %7555 = fmul fast float %7554, %7495
  %7556 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %67, float %7543, float %7555, float undef, float undef, i32 0, i32 0, i32 undef, float %7499)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7557 = extractvalue %dx.types.ResRet.f32 %7556, 0
  %7558 = fmul fast float %7557, %7515
  %7559 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %20, %dx.types.Handle %67, float %7550, float %7555, float undef, float undef, i32 0, i32 0, i32 undef, float %7499)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %7560 = extractvalue %dx.types.ResRet.f32 %7559, 0
  %7561 = fmul fast float %7560, %7516
  %7562 = fadd fast float %7561, %7558
  %7563 = fmul fast float %7562, %7530
  %7564 = fadd fast float %7553, %7548
  %7565 = fmul fast float %7564, %7529
  %7566 = fadd fast float %7565, %7563
  %7567 = fmul fast float %7566, 6.250000e-02
  br label %7653

; <label>:7568                                    ; preds = %7489
  %7569 = fmul fast float %2539, 0x401921FB60000000
  %7570 = call float @dx.op.unary.f32(i32 13, float %7569)  ; Sin(value)
  %7571 = call float @dx.op.unary.f32(i32 12, float %7569)  ; Cos(value)
  %7572 = fsub fast float -0.000000e+00, %7570
  br label %7573

; <label>:7573                                    ; preds = %7622, %7568
  %7574 = phi float [ 0.000000e+00, %7568 ], [ %7617, %7622 ]
  %7575 = phi float [ 0.000000e+00, %7568 ], [ %7619, %7622 ]
  %7576 = phi i32 [ 0, %7568 ], [ %7623, %7622 ]
  %7577 = mul i32 %7576, 2
  %7578 = add i32 0, %7577
  %7579 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7578
  %7580 = load float, float* %7579, align 4
  %7581 = mul i32 %7576, 2
  %7582 = add i32 1, %7581
  %7583 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7582
  %7584 = load float, float* %7583, align 4
  %7585 = fmul fast float %7580, %7571
  %7586 = call float @dx.op.tertiary.f32(i32 46, float %7584, float %7572, float %7585)  ; FMad(a,b,c)
  %7587 = fmul fast float %7580, %7570
  %7588 = call float @dx.op.tertiary.f32(i32 46, float %7584, float %7571, float %7587)  ; FMad(a,b,c)
  %7589 = fmul fast float %7586, %7497
  %7590 = fmul fast float %7588, %7497
  %7591 = fadd fast float %7589, %6263
  %7592 = fadd fast float %7590, %6267
  %7593 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %66, float %7591, float %7592, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7594 = extractvalue %dx.types.ResRet.f32 %7593, 0
  %7595 = extractvalue %dx.types.ResRet.f32 %7593, 1
  %7596 = extractvalue %dx.types.ResRet.f32 %7593, 2
  %7597 = extractvalue %dx.types.ResRet.f32 %7593, 3
  %7598 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  store float %7594, float* %7598, align 4
  %7599 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  store float %7595, float* %7599, align 4
  %7600 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  store float %7596, float* %7600, align 4
  %7601 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  store float %7597, float* %7601, align 4
  %7602 = fsub fast float %7594, %7499
  %7603 = fcmp fast olt float %7602, 0.000000e+00
  %7604 = select i1 %7603, float 0.000000e+00, float 1.000000e+00
  %7605 = fadd fast float %7604, %7574
  %7606 = fmul fast float %7604, %7602
  %7607 = fadd fast float %7606, %7575
  br label %7608

; <label>:7608                                    ; preds = %7608, %7573
  %7609 = phi i32 [ 1, %7573 ], [ %7620, %7608 ]
  %7610 = phi float [ %7607, %7573 ], [ %7619, %7608 ]
  %7611 = phi float [ %7605, %7573 ], [ %7617, %7608 ]
  %7612 = getelementptr [4 x float], [4 x float]* %87, i32 0, i32 %7609
  %7613 = load float, float* %7612, align 4, !tbaa !110, !noalias !152
  %7614 = fsub fast float %7613, %7499
  %7615 = fcmp fast olt float %7614, 0.000000e+00
  %7616 = select i1 %7615, float 0.000000e+00, float 1.000000e+00
  %7617 = fadd fast float %7616, %7611
  %7618 = fmul fast float %7616, %7614
  %7619 = fadd fast float %7618, %7610
  %7620 = add nuw nsw i32 %7609, 1
  %7621 = icmp eq i32 %7620, 4
  br i1 %7621, label %7622, label %7608, !llvm.loop !157

; <label>:7622                                    ; preds = %7608
  %7623 = add nuw nsw i32 %7576, 1
  %7624 = icmp eq i32 %7623, 8
  br i1 %7624, label %7625, label %7573, !llvm.loop !158

; <label>:7625                                    ; preds = %7622
  %7626 = fdiv fast float 1.000000e+00, %7617
  %7627 = fmul fast float %7626, %7619
  %7628 = fdiv fast float 1.000000e+00, %7499
  %7629 = fmul fast float %7627, %7628
  %7630 = call float @dx.op.unary.f32(i32 7, float %7629)  ; Saturate(value)
  %7631 = call float @dx.op.binary.f32(i32 35, float %7630, float 0.000000e+00)  ; FMax(a,b)
  %7632 = fmul fast float %7617, 3.125000e-02
  %7633 = call float @dx.op.unary.f32(i32 7, float %7632)  ; Saturate(value)
  %7634 = fmul fast float %7633, 2.000000e+00
  %7635 = fadd fast float %7634, -1.000000e+00
  %7636 = fcmp fast ogt float %7635, 0.000000e+00
  %7637 = fcmp fast olt float %7635, 0.000000e+00
  %7638 = zext i1 %7636 to i32
  %7639 = zext i1 %7637 to i32
  %7640 = sub nsw i32 %7638, %7639
  %7641 = sitofp i32 %7640 to float
  %7642 = fmul fast float %7641, %7635
  %7643 = fsub fast float 1.000000e+00, %7642
  %7644 = fmul fast float %7643, %7643
  %7645 = fmul fast float %7644, %7643
  %7646 = fsub fast float %7643, %7645
  %7647 = fmul fast float %7646, %7631
  %7648 = fsub fast float 1.000000e+00, %7645
  %7649 = fsub fast float %7648, %7647
  %7650 = fmul fast float %7641, 5.000000e-01
  %7651 = fmul fast float %7650, %7649
  %7652 = fsub fast float 5.000000e-01, %7651
  br label %7653

; <label>:7653                                    ; preds = %7625, %7501, %7486
  %7654 = phi float [ 1.000000e+00, %7486 ], [ %7567, %7501 ], [ %7652, %7625 ]
  %7655 = fsub fast float %7320, %7153
  %7656 = fmul fast float %7655, %6427
  %7657 = fadd fast float %7656, %7153
  %7658 = fsub fast float %7487, %7657
  %7659 = fmul fast float %7658, %6452
  %7660 = fadd fast float %7659, %7657
  %7661 = fsub fast float %7654, %7660
  %7662 = fmul fast float %7661, %6474
  %7663 = fadd fast float %7662, %7660
  %7664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %7665 = extractvalue %dx.types.CBufRet.f32 %7664, 2
  %7666 = fcmp fast ogt float %7665, 0.000000e+00
  br i1 %7666, label %7667, label %7707, !dx.controlflow.hints !161

; <label>:7667                                    ; preds = %7653
  %7668 = fcmp fast ugt float %7665, 0.000000e+00
  br i1 %7668, label %7669, label %7704

; <label>:7669                                    ; preds = %7667
  %7670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %7671 = extractvalue %dx.types.CBufRet.f32 %7670, 0
  %7672 = extractvalue %dx.types.CBufRet.f32 %7670, 1
  %7673 = extractvalue %dx.types.CBufRet.f32 %7670, 2
  %7674 = extractvalue %dx.types.CBufRet.f32 %7670, 3
  %7675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %7676 = extractvalue %dx.types.CBufRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.CBufRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.CBufRet.f32 %7675, 2
  %7679 = extractvalue %dx.types.CBufRet.f32 %7675, 3
  %7680 = extractvalue %dx.types.CBufRet.f32 %7664, 0
  %7681 = extractvalue %dx.types.CBufRet.f32 %7664, 1
  %7682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7683 = extractvalue %dx.types.CBufRet.f32 %7682, 0
  %7684 = extractvalue %dx.types.CBufRet.f32 %7682, 1
  %7685 = extractvalue %dx.types.CBufRet.f32 %7682, 2
  %7686 = fadd fast float %7683, %565
  %7687 = fadd fast float %7684, %566
  %7688 = fadd fast float %7685, %567
  %7689 = fmul fast float %7686, %7671
  %7690 = call float @dx.op.tertiary.f32(i32 46, float %7672, float %7687, float %7689)  ; FMad(a,b,c)
  %7691 = call float @dx.op.tertiary.f32(i32 46, float %7673, float %7688, float %7690)  ; FMad(a,b,c)
  %7692 = fadd fast float %7691, %7674
  %7693 = fmul fast float %7686, %7676
  %7694 = call float @dx.op.tertiary.f32(i32 46, float %7677, float %7687, float %7693)  ; FMad(a,b,c)
  %7695 = call float @dx.op.tertiary.f32(i32 46, float %7678, float %7688, float %7694)  ; FMad(a,b,c)
  %7696 = fadd fast float %7695, %7679
  %7697 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %15, %dx.types.Handle %62, float %7692, float %7696, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %7698 = extractvalue %dx.types.ResRet.f32 %7697, 0
  %7699 = fmul fast float %7698, %7681
  %7700 = fadd fast float %7699, %7680
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = fmul fast float %7701, %7665
  %7703 = fsub fast float 1.000000e+00, %7702
  br label %7704

; <label>:7704                                    ; preds = %7669, %7667
  %7705 = phi float [ %7703, %7669 ], [ 1.000000e+00, %7667 ]
  %7706 = fmul fast float %7705, %7663
  br label %7707

; <label>:7707                                    ; preds = %7704, %7653, %6393
  %7708 = phi float [ 1.000000e+00, %6393 ], [ %7706, %7704 ], [ %7663, %7653 ]
  %7709 = call float @dx.op.binary.f32(i32 36, float %7708, float %7708)  ; FMin(a,b)
  %7710 = call float @dx.op.binary.f32(i32 36, float %7708, float %7709)  ; FMin(a,b)
  %7711 = fcmp fast ogt float %7710, 0.000000e+00
  br i1 %7711, label %7712, label %7877, !dx.controlflow.hints !162

; <label>:7712                                    ; preds = %7707
  %7713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7714 = extractvalue %dx.types.CBufRet.f32 %7713, 0
  %7715 = extractvalue %dx.types.CBufRet.f32 %7713, 1
  %7716 = extractvalue %dx.types.CBufRet.f32 %7713, 2
  %7717 = extractvalue %dx.types.CBufRet.f32 %7713, 3
  %7718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7719 = extractvalue %dx.types.CBufRet.f32 %7718, 0
  %7720 = extractvalue %dx.types.CBufRet.f32 %7718, 1
  %7721 = extractvalue %dx.types.CBufRet.f32 %7718, 2
  %7722 = extractvalue %dx.types.CBufRet.f32 %7718, 3
  %7723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7724 = extractvalue %dx.types.CBufRet.f32 %7723, 0
  %7725 = extractvalue %dx.types.CBufRet.f32 %7723, 1
  %7726 = extractvalue %dx.types.CBufRet.f32 %7723, 2
  %7727 = extractvalue %dx.types.CBufRet.f32 %7723, 3
  %7728 = fmul fast float %7714, %565
  %7729 = call float @dx.op.tertiary.f32(i32 46, float %566, float %7715, float %7728)  ; FMad(a,b,c)
  %7730 = call float @dx.op.tertiary.f32(i32 46, float %567, float %7716, float %7729)  ; FMad(a,b,c)
  %7731 = fadd fast float %7730, %7717
  %7732 = fmul fast float %7719, %565
  %7733 = call float @dx.op.tertiary.f32(i32 46, float %566, float %7720, float %7732)  ; FMad(a,b,c)
  %7734 = call float @dx.op.tertiary.f32(i32 46, float %567, float %7721, float %7733)  ; FMad(a,b,c)
  %7735 = fadd fast float %7734, %7722
  %7736 = fmul fast float %7724, %565
  %7737 = call float @dx.op.tertiary.f32(i32 46, float %566, float %7725, float %7736)  ; FMad(a,b,c)
  %7738 = call float @dx.op.tertiary.f32(i32 46, float %567, float %7726, float %7737)  ; FMad(a,b,c)
  %7739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7740 = extractvalue %dx.types.CBufRet.f32 %7739, 0
  %7741 = extractvalue %dx.types.CBufRet.f32 %7739, 1
  %7742 = extractvalue %dx.types.CBufRet.f32 %7739, 3
  %7743 = fmul fast float %7742, %7731
  %7744 = fmul fast float %7742, %7735
  %7745 = fadd fast float %7743, %7740
  %7746 = fadd fast float %7744, %7741
  %7747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7748 = extractvalue %dx.types.CBufRet.f32 %7747, 0
  %7749 = extractvalue %dx.types.CBufRet.f32 %7747, 1
  %7750 = fsub fast float %7745, %7748
  %7751 = fsub fast float %7746, %7749
  %7752 = fcmp fast olt float %7750, 0.000000e+00
  %7753 = fcmp fast olt float %7751, 0.000000e+00
  %7754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7755 = extractvalue %dx.types.CBufRet.f32 %7754, 0
  %7756 = extractvalue %dx.types.CBufRet.f32 %7754, 1
  %7757 = extractvalue %dx.types.CBufRet.f32 %7754, 2
  %7758 = extractvalue %dx.types.CBufRet.f32 %7754, 3
  %7759 = select i1 %7752, float %7755, float %7757
  %7760 = select i1 %7753, float %7756, float %7758
  %7761 = fmul fast float %7759, %7750
  %7762 = fmul fast float %7760, %7751
  %7763 = call float @dx.op.unary.f32(i32 6, float %7761)  ; FAbs(value)
  %7764 = call float @dx.op.unary.f32(i32 6, float %7762)  ; FAbs(value)
  %7765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7766 = extractvalue %dx.types.CBufRet.f32 %7765, 0
  %7767 = call float @dx.op.binary.f32(i32 35, float %7763, float %7764)  ; FMax(a,b)
  %7768 = fsub fast float %7766, %7767
  %7769 = call float @dx.op.unary.f32(i32 7, float %7768)  ; Saturate(value)
  %7770 = fcmp fast ogt float %7769, 0.000000e+00
  br i1 %7770, label %7771, label %7812, !dx.controlflow.hints !163

; <label>:7771                                    ; preds = %7712
  %7772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %65, float %7745, float %7746, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7773 = extractvalue %dx.types.ResRet.f32 %7772, 1
  %7774 = fcmp fast ogt float %7773, 0.000000e+00
  br i1 %7774, label %7775, label %7807

; <label>:7775                                    ; preds = %7771
  %7776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %65, float %7745, float %7746, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7777 = extractvalue %dx.types.ResRet.f32 %7776, 0
  %7778 = extractvalue %dx.types.ResRet.f32 %7776, 1
  %7779 = extractvalue %dx.types.ResRet.f32 %7776, 2
  %7780 = extractvalue %dx.types.ResRet.f32 %7776, 3
  %7781 = fsub fast float 1.000000e+00, %7727
  %7782 = fsub fast float %7781, %7738
  %7783 = fmul fast float %7782, 0x400921FB60000000
  %7784 = fadd fast float %7783, 0x3FF921FB60000000
  %7785 = call float @dx.op.unary.f32(i32 13, float %7784)  ; Sin(value)
  %7786 = fadd fast float %7785, -1.000000e+00
  %7787 = fmul fast float %7786, 0x3FD45F3060000000
  %7788 = fmul fast float %7782, 0x401921FB60000000
  %7789 = fadd fast float %7788, 0x400921FB60000000
  %7790 = call float @dx.op.unary.f32(i32 13, float %7789)  ; Sin(value)
  %7791 = fadd fast float %7790, 0x3E7777A5C0000000
  %7792 = fmul fast float %7791, 0x3FC45F3060000000
  %7793 = fmul fast float %7782, 0x4022D97C80000000
  %7794 = fadd fast float %7793, 0x4012D97C80000000
  %7795 = call float @dx.op.unary.f32(i32 13, float %7794)  ; Sin(value)
  %7796 = fadd fast float %7795, 1.000000e+00
  %7797 = fmul fast float %7796, 0x3FBB2995E0000000
  %7798 = fmul fast float %7782, 0x402921FB60000000
  %7799 = fadd fast float %7798, 0x401921FB60000000
  %7800 = call float @dx.op.unary.f32(i32 13, float %7799)  ; Sin(value)
  %7801 = fadd fast float %7800, 0xBE8777A5C0000000
  %7802 = fmul fast float %7801, 0x3FB45F3060000000
  %7803 = call float @dx.op.dot4.f32(i32 56, float %7777, float %7778, float %7779, float %7780, float %7787, float %7792, float %7797, float %7802)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7804 = fmul fast float %7803, 0xBFF7154760000000
  %7805 = call float @dx.op.unary.f32(i32 21, float %7804)  ; Exp(value)
  %7806 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  br label %7807

; <label>:7807                                    ; preds = %7775, %7771
  %7808 = phi float [ %7806, %7775 ], [ 1.000000e+00, %7771 ]
  %7809 = fadd fast float %7808, -1.000000e+00
  %7810 = fmul fast float %7809, %7769
  %7811 = fadd fast float %7810, 1.000000e+00
  br label %7812

; <label>:7812                                    ; preds = %7807, %7712
  %7813 = phi float [ %7811, %7807 ], [ 1.000000e+00, %7712 ]
  %7814 = fmul fast float %7813, %7708
  %7815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7816 = extractvalue %dx.types.CBufRet.f32 %7815, 0
  %7817 = extractvalue %dx.types.CBufRet.f32 %7815, 1
  %7818 = extractvalue %dx.types.CBufRet.f32 %7815, 2
  %7819 = fadd fast float %7816, %565
  %7820 = fadd fast float %7817, %566
  %7821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7822 = extractvalue %dx.types.CBufRet.f32 %7821, 1
  %7823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7824 = extractvalue %dx.types.CBufRet.f32 %7823, 0
  %7825 = extractvalue %dx.types.CBufRet.f32 %7823, 1
  %7826 = extractvalue %dx.types.CBufRet.f32 %7823, 2
  %7827 = fsub fast float -0.000000e+00, %7819
  %7828 = fsub fast float -0.000000e+00, %7820
  %7829 = fsub fast float %3299, %7818
  %7830 = fadd fast float %7829, %7822
  %7831 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7827, float %7828, float %7830)  ; Dot3(ax,ay,az,bx,by,bz)
  %7832 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7824, float %7825, float %7826)  ; Dot3(ax,ay,az,bx,by,bz)
  %7833 = fdiv fast float 1.000000e+00, %7832
  %7834 = fmul fast float %7833, %7831
  %7835 = fmul fast float %7824, %7834
  %7836 = fmul fast float %7825, %7834
  %7837 = fadd fast float %7835, %7819
  %7838 = fadd fast float %7836, %7820
  %7839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7840 = extractvalue %dx.types.CBufRet.f32 %7839, 0
  %7841 = extractvalue %dx.types.CBufRet.f32 %7839, 1
  %7842 = fsub fast float %7837, %7840
  %7843 = fsub fast float %7838, %7841
  %7844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7845 = extractvalue %dx.types.CBufRet.f32 %7844, 2
  %7846 = extractvalue %dx.types.CBufRet.f32 %7844, 3
  %7847 = fmul fast float %7842, %7845
  %7848 = fmul fast float %7843, %7846
  %7849 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7850 = extractvalue %dx.types.CBufRet.i32 %7849, 3
  %7851 = icmp eq i32 %7850, 0
  br i1 %7851, label %7857, label %7852

; <label>:7852                                    ; preds = %7812
  %7853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %64, float %7847, float %7848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7854 = extractvalue %dx.types.ResRet.f32 %7853, 0
  %7855 = extractvalue %dx.types.ResRet.f32 %7853, 1
  %7856 = extractvalue %dx.types.ResRet.f32 %7853, 2
  br label %7862

; <label>:7857                                    ; preds = %7812
  %7858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %65, float %7847, float %7848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7859 = extractvalue %dx.types.ResRet.f32 %7858, 0
  %7860 = extractvalue %dx.types.ResRet.f32 %7858, 1
  %7861 = extractvalue %dx.types.ResRet.f32 %7858, 2
  br label %7862

; <label>:7862                                    ; preds = %7857, %7852
  %7863 = phi float [ %7854, %7852 ], [ %7859, %7857 ]
  %7864 = phi float [ %7855, %7852 ], [ %7860, %7857 ]
  %7865 = phi float [ %7856, %7852 ], [ %7861, %7857 ]
  %7866 = extractvalue %dx.types.CBufRet.f32 %7821, 2
  %7867 = fmul fast float %7866, %7863
  %7868 = extractvalue %dx.types.CBufRet.f32 %7821, 0
  %7869 = fsub fast float %7834, %7868
  %7870 = fsub fast float %7869, %7867
  %7871 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7870)  ; FMax(a,b)
  %7872 = fmul fast float %7871, %7864
  %7873 = call float @dx.op.binary.f32(i32 36, float %7865, float %7872)  ; FMin(a,b)
  %7874 = fmul fast float %7873, 0xBFF7154760000000
  %7875 = call float @dx.op.unary.f32(i32 21, float %7874)  ; Exp(value)
  %7876 = fmul fast float %7814, %7875
  br label %7877

; <label>:7877                                    ; preds = %7862, %7707
  %7878 = phi float [ %7876, %7862 ], [ %7708, %7707 ]
  %7879 = call float @dx.op.binary.f32(i32 36, float %7878, float %7878)  ; FMin(a,b)
  %7880 = call float @dx.op.binary.f32(i32 36, float %7878, float %7879)  ; FMin(a,b)
  %7881 = fcmp fast ogt float %7880, 0.000000e+00
  br i1 %7881, label %7882, label %8112, !dx.controlflow.hints !164

; <label>:7882                                    ; preds = %7877
  %7883 = fmul fast float %7878, %6242
  %7884 = fmul fast float %7878, %6243
  %7885 = fmul fast float %7878, %6244
  %7886 = fsub fast float %6231, %3093
  %7887 = fsub fast float %6232, %3094
  %7888 = fsub fast float %6233, %3095
  %7889 = call float @dx.op.dot3.f32(i32 55, float %7886, float %7887, float %7888, float %7886, float %7887, float %7888)  ; Dot3(ax,ay,az,bx,by,bz)
  %7890 = call float @dx.op.unary.f32(i32 25, float %7889)  ; Rsqrt(value)
  %7891 = fmul fast float %7890, %7886
  %7892 = fmul fast float %7890, %7887
  %7893 = fmul fast float %7890, %7888
  %7894 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6232, float %6233, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %7895 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3146, float %3147, float %7891, float %7892, float %7893)  ; Dot3(ax,ay,az,bx,by,bz)
  %7896 = call float @dx.op.unary.f32(i32 7, float %7894)  ; Saturate(value)
  %7897 = fmul fast float %7896, %7896
  %7898 = fmul fast float %7897, %3336
  %7899 = call float @dx.op.unary.f32(i32 7, float %7898)  ; Saturate(value)
  %7900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7901 = extractvalue %dx.types.CBufRet.f32 %7900, 0
  %7902 = bitcast float %7901 to i32
  %7903 = lshr i32 %7902, 8
  %7904 = and i32 %7903, 255
  %7905 = uitofp i32 %7904 to float
  %7906 = fptoui float %7905 to i32
  %7907 = and i32 %7906, 8
  %7908 = icmp ne i32 %7907, 0
  %7909 = select i1 %7908, float %7899, float 1.000000e+00
  %7910 = fmul fast float %7909, %7896
  %7911 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %7891, float %7892, float %7893)  ; Dot3(ax,ay,az,bx,by,bz)
  %7912 = fmul fast float %7911, %7911
  %7913 = call float @dx.op.unary.f32(i32 6, float %7894)  ; FAbs(value)
  %7914 = fsub fast float 1.000000e+00, %3327
  %7915 = fmul fast float %3149, %3149
  %7916 = fmul fast float %7915, %7914
  %7917 = fadd fast float %7916, %3327
  %7918 = bitcast float %7917 to i32
  %7919 = ashr i32 %7918, 1
  %7920 = add nsw i32 %7919, 532487669
  %7921 = bitcast i32 %7920 to float
  %7922 = fadd fast float %7921, %3149
  %7923 = fmul fast float %3327, %7912
  %7924 = fsub fast float 1.000000e+00, %7912
  %7925 = fadd fast float %7924, %7923
  %7926 = fmul fast float %7913, %7913
  %7927 = fmul fast float %7926, %7914
  %7928 = fadd fast float %7927, %3327
  %7929 = bitcast float %7928 to i32
  %7930 = ashr i32 %7929, 1
  %7931 = add nsw i32 %7930, 532487669
  %7932 = bitcast i32 %7931 to float
  %7933 = fadd fast float %7932, %7913
  %7934 = fmul fast float %7925, %7925
  %7935 = fmul fast float %7934, %7922
  %7936 = fmul fast float %7935, %7933
  %7937 = fdiv fast float 0x3FF0A00000000000, %7936
  %7938 = fmul fast float %7937, %3327
  %7939 = call float @dx.op.unary.f32(i32 6, float %7895)  ; FAbs(value)
  %7940 = fsub fast float 1.000000e+00, %7939
  %7941 = bitcast float %7940 to i32
  %7942 = sitofp i32 %7941 to float
  %7943 = fmul fast float %7942, 5.000000e+00
  %7944 = fadd fast float %7943, 0xC1EFBF8940000000
  %7945 = fptosi float %7944 to i32
  %7946 = bitcast i32 %7945 to float
  %7947 = fmul fast float %7946, %3150
  %7948 = fmul fast float %7946, %3151
  %7949 = fmul fast float %7946, %4401
  %7950 = fadd fast float %7947, %3086
  %7951 = fadd fast float %7948, %3087
  %7952 = fadd fast float %7949, %3300
  %7953 = select i1 %4404, float %7939, float 0.000000e+00
  %7954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %7953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7955 = extractvalue %dx.types.ResRet.f32 %7954, 0
  %7956 = extractvalue %dx.types.ResRet.f32 %7954, 1
  %7957 = extractvalue %dx.types.ResRet.f32 %7954, 2
  %7958 = fadd fast float %7955, -5.000000e-01
  %7959 = fadd fast float %7956, -5.000000e-01
  %7960 = fadd fast float %7957, -5.000000e-01
  %7961 = fmul fast float %3179, %7958
  %7962 = fmul fast float %3183, %7959
  %7963 = fmul fast float %4417, %7960
  %7964 = fadd fast float %7950, %7961
  %7965 = fadd fast float %7951, %7962
  %7966 = fadd fast float %7952, %7963
  %7967 = call float @dx.op.unary.f32(i32 7, float %7964)  ; Saturate(value)
  %7968 = call float @dx.op.unary.f32(i32 7, float %7965)  ; Saturate(value)
  %7969 = call float @dx.op.unary.f32(i32 7, float %7966)  ; Saturate(value)
  %7970 = fmul fast float %7894, 9.843750e-01
  %7971 = fmul fast float %3244, 9.843750e-01
  %7972 = fadd fast float %7970, 7.812500e-03
  %7973 = fadd fast float %7971, 7.812500e-03
  %7974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %65, float %7972, float %7973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 2
  %7976 = extractvalue %dx.types.ResRet.f32 %7974, 3
  %7977 = select i1 %4404, float %7894, float 0.000000e+00
  %7978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %7977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7979 = extractvalue %dx.types.ResRet.f32 %7978, 0
  %7980 = extractvalue %dx.types.ResRet.f32 %7978, 1
  %7981 = extractvalue %dx.types.ResRet.f32 %7978, 2
  %7982 = fadd fast float %7979, -5.000000e-01
  %7983 = fadd fast float %7980, -5.000000e-01
  %7984 = fadd fast float %7981, -5.000000e-01
  %7985 = fmul fast float %3150, 4.000000e+00
  %7986 = fmul fast float %7985, %3162
  %7987 = fmul fast float %7986, %7982
  %7988 = fmul fast float %3151, 4.000000e+00
  %7989 = fmul fast float %7988, %3162
  %7990 = fmul fast float %7989, %7983
  %7991 = fmul fast float %4401, 4.000000e+00
  %7992 = fmul fast float %7991, %3162
  %7993 = fmul fast float %7992, %7984
  %7994 = fadd fast float %7987, %7975
  %7995 = fmul fast float %7994, %3086
  %7996 = fadd fast float %7995, %7976
  %7997 = fadd fast float %7990, %7975
  %7998 = fmul fast float %7997, %3087
  %7999 = fadd fast float %7998, %7976
  %8000 = fadd fast float %7993, %7975
  %8001 = fmul fast float %8000, %3300
  %8002 = fadd fast float %8001, %7976
  %8003 = call float @dx.op.unary.f32(i32 7, float %7996)  ; Saturate(value)
  %8004 = call float @dx.op.unary.f32(i32 7, float %7999)  ; Saturate(value)
  %8005 = call float @dx.op.unary.f32(i32 7, float %8002)  ; Saturate(value)
  %8006 = call float @dx.op.binary.f32(i32 35, float %8004, float %8005)  ; FMax(a,b)
  %8007 = call float @dx.op.binary.f32(i32 35, float %8003, float %8006)  ; FMax(a,b)
  %8008 = fsub fast float 1.000000e+00, %8007
  %8009 = fsub fast float -0.000000e+00, %3065
  %8010 = fsub fast float -0.000000e+00, %3066
  %8011 = fsub fast float -0.000000e+00, %3067
  %8012 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6232, float %6233, float %8009, float %8010, float %8011)  ; Dot3(ax,ay,az,bx,by,bz)
  %8013 = call float @dx.op.unary.f32(i32 7, float %8012)  ; Saturate(value)
  %8014 = fmul fast float %8013, 9.843750e-01
  %8015 = fadd fast float %8014, 7.812500e-03
  %8016 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %65, float %8015, float %7973, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8017 = extractvalue %dx.types.ResRet.f32 %8016, 2
  %8018 = extractvalue %dx.types.ResRet.f32 %8016, 3
  %8019 = select i1 %4404, float %8013, float 0.000000e+00
  %8020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %8019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8021 = extractvalue %dx.types.ResRet.f32 %8020, 0
  %8022 = extractvalue %dx.types.ResRet.f32 %8020, 1
  %8023 = extractvalue %dx.types.ResRet.f32 %8020, 2
  %8024 = fadd fast float %8021, -5.000000e-01
  %8025 = fadd fast float %8022, -5.000000e-01
  %8026 = fadd fast float %8023, -5.000000e-01
  %8027 = fmul fast float %7986, %8024
  %8028 = fmul fast float %7989, %8025
  %8029 = fmul fast float %7992, %8026
  %8030 = fadd fast float %8027, %8017
  %8031 = fmul fast float %8030, %3086
  %8032 = fadd fast float %8031, %8018
  %8033 = fadd fast float %8028, %8017
  %8034 = fmul fast float %8033, %3087
  %8035 = fadd fast float %8034, %8018
  %8036 = fadd fast float %8029, %8017
  %8037 = fmul fast float %8036, %3300
  %8038 = fadd fast float %8037, %8018
  %8039 = call float @dx.op.unary.f32(i32 7, float %8032)  ; Saturate(value)
  %8040 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8041 = call float @dx.op.unary.f32(i32 7, float %8038)  ; Saturate(value)
  %8042 = call float @dx.op.binary.f32(i32 35, float %8040, float %8041)  ; FMax(a,b)
  %8043 = call float @dx.op.binary.f32(i32 35, float %8039, float %8042)  ; FMax(a,b)
  %8044 = fsub fast float 1.000000e+00, %8043
  %8045 = fmul fast float %3087, 0x4012D0A400000000
  %8046 = fadd fast float %8045, 0x3FDB6377A0000000
  %8047 = fmul fast float %3324, %8046
  %8048 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8049 = fsub fast float %6231, %3305
  %8050 = fsub fast float %6232, %3306
  %8051 = fsub fast float %6233, %3307
  %8052 = call float @dx.op.dot3.f32(i32 55, float %8049, float %8050, float %8051, float %8049, float %8050, float %8051)  ; Dot3(ax,ay,az,bx,by,bz)
  %8053 = call float @dx.op.unary.f32(i32 25, float %8052)  ; Rsqrt(value)
  %8054 = fmul fast float %8053, %8049
  %8055 = fmul fast float %8053, %8050
  %8056 = fmul fast float %8053, %8051
  %8057 = call float @dx.op.dot3.f32(i32 55, float %8009, float %8010, float %8011, float %8054, float %8055, float %8056)  ; Dot3(ax,ay,az,bx,by,bz)
  %8058 = fmul fast float %8057, %8057
  %8059 = call float @dx.op.unary.f32(i32 6, float %8013)  ; FAbs(value)
  %8060 = call float @dx.op.binary.f32(i32 35, float %8048, float 0x3F847AE140000000)  ; FMax(a,b)
  %8061 = fmul fast float %8060, %8060
  %8062 = fmul fast float %8061, %8061
  %8063 = fsub fast float 1.000000e+00, %8062
  %8064 = fmul fast float %7915, %8063
  %8065 = fadd fast float %8064, %8062
  %8066 = bitcast float %8065 to i32
  %8067 = ashr i32 %8066, 1
  %8068 = add nsw i32 %8067, 532487669
  %8069 = bitcast i32 %8068 to float
  %8070 = fadd fast float %8069, %3149
  %8071 = fmul fast float %8062, %8058
  %8072 = fsub fast float 1.000000e+00, %8058
  %8073 = fadd fast float %8072, %8071
  %8074 = fmul fast float %8059, %8059
  %8075 = fmul fast float %8074, %8063
  %8076 = fadd fast float %8075, %8062
  %8077 = bitcast float %8076 to i32
  %8078 = ashr i32 %8077, 1
  %8079 = add nsw i32 %8078, 532487669
  %8080 = bitcast i32 %8079 to float
  %8081 = fadd fast float %8080, %8059
  %8082 = fmul fast float %8073, %8073
  %8083 = fmul fast float %8082, %8070
  %8084 = fmul fast float %8083, %8081
  %8085 = fdiv fast float 0x3FF0A00000000000, %8084
  %8086 = fmul fast float %8085, %8062
  %8087 = fmul fast float %8044, %8013
  %8088 = fmul fast float %8087, %8086
  %8089 = fmul fast float %8008, %7910
  %8090 = fmul fast float %7910, %7938
  %8091 = fmul fast float %8090, %7967
  %8092 = fmul fast float %8090, %7968
  %8093 = fmul fast float %8090, %7969
  %8094 = fadd fast float %8088, %8091
  %8095 = fadd fast float %8088, %8092
  %8096 = fadd fast float %8088, %8093
  %8097 = fmul fast float %8089, %7883
  %8098 = fmul fast float %8089, %7884
  %8099 = fmul fast float %8089, %7885
  %8100 = fadd fast float %8097, %6218
  %8101 = fadd fast float %8098, %6219
  %8102 = fadd fast float %8099, %6220
  %8103 = fmul fast float %8094, %7883
  %8104 = fmul fast float %8095, %7884
  %8105 = fmul fast float %8096, %7885
  %8106 = fadd fast float %8103, %6224
  %8107 = fadd fast float %8104, %6225
  %8108 = fadd fast float %8105, %6226
  %8109 = fadd fast float %8103, %6221
  %8110 = fadd fast float %8104, %6222
  %8111 = fadd fast float %8105, %6223
  br label %8112

; <label>:8112                                    ; preds = %7882, %7877, %6212
  %8113 = phi i32 [ %6394, %7882 ], [ %6214, %6212 ], [ %6394, %7877 ]
  %8114 = phi i32 [ 1, %7882 ], [ 0, %6212 ], [ 0, %7877 ]
  %8115 = phi float [ %8103, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8116 = phi float [ %8104, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8117 = phi float [ %8105, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8118 = phi float [ %8097, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8119 = phi float [ %8098, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8120 = phi float [ %8099, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8121 = phi float [ %8109, %7882 ], [ %6221, %6212 ], [ %6221, %7877 ]
  %8122 = phi float [ %8110, %7882 ], [ %6222, %6212 ], [ %6222, %7877 ]
  %8123 = phi float [ %8111, %7882 ], [ %6223, %6212 ], [ %6223, %7877 ]
  %8124 = phi float [ %8100, %7882 ], [ %6218, %6212 ], [ %6218, %7877 ]
  %8125 = phi float [ %8101, %7882 ], [ %6219, %6212 ], [ %6219, %7877 ]
  %8126 = phi float [ %8102, %7882 ], [ %6220, %6212 ], [ %6220, %7877 ]
  %8127 = phi float [ %7878, %7882 ], [ 0.000000e+00, %6212 ], [ 0.000000e+00, %7877 ]
  %8128 = phi float [ %8106, %7882 ], [ %6224, %6212 ], [ %6224, %7877 ]
  %8129 = phi float [ %8107, %7882 ], [ %6225, %6212 ], [ %6225, %7877 ]
  %8130 = phi float [ %8108, %7882 ], [ %6226, %6212 ], [ %6226, %7877 ]
  %8131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8132 = extractvalue %dx.types.CBufRet.i32 %8131, 0
  %8133 = icmp eq i32 %8132, 0
  br i1 %8133, label %9189, label %8134

; <label>:8134                                    ; preds = %8112
  %8135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %8136 = extractvalue %dx.types.CBufRet.f32 %8135, 2
  %8137 = extractvalue %dx.types.CBufRet.f32 %8135, 3
  %8138 = fmul fast float %8136, %93
  %8139 = fmul fast float %8137, %94
  %8140 = fptoui float %8138 to i32
  %8141 = fptoui float %8139 to i32
  %8142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8142, 0
  %8144 = extractvalue %dx.types.CBufRet.f32 %8142, 2
  %8145 = extractvalue %dx.types.CBufRet.f32 %8142, 3
  %8146 = fadd fast float %526, -4.000000e+00
  %8147 = call float @dx.op.binary.f32(i32 35, float %8146, float 0.000000e+00)  ; FMax(a,b)
  %8148 = fadd fast float %8147, %8143
  %8149 = fmul fast float %8148, %8144
  %8150 = call float @dx.op.unary.f32(i32 23, float %8149)  ; Log(value)
  %8151 = fmul fast float %8150, %8145
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 2
  %8154 = fmul fast float %8151, %8153
  %8155 = call float @dx.op.unary.f32(i32 7, float %8154)  ; Saturate(value)
  %8156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.i32 %8156, 1
  %8158 = add i32 %8157, -1
  %8159 = uitofp i32 %8157 to float
  %8160 = fmul fast float %8159, %8155
  %8161 = fptoui float %8160 to i32
  %8162 = call i32 @dx.op.binary.i32(i32 40, i32 %8161, i32 %8158)  ; UMin(a,b)
  %8163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %8164 = extractvalue %dx.types.CBufRet.i32 %8163, 2
  %8165 = extractvalue %dx.types.CBufRet.i32 %8163, 3
  %8166 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8141, i32 %8164, i32 %8140)  ; UMad(a,b,c)
  %8167 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8162, i32 %8165, i32 %8166)  ; UMad(a,b,c)
  %8168 = add nsw i32 %8132, -1
  %8169 = call i32 @dx.op.binary.i32(i32 37, i32 %8168, i32 0)  ; IMax(a,b)
  %8170 = call float @dx.op.binary.f32(i32 35, float %526, float 0.000000e+00)  ; FMax(a,b)
  %8171 = fptoui float %8170 to i32
  %8172 = lshr i32 %8171, 5
  %8173 = call i32 @dx.op.binary.i32(i32 40, i32 %8172, i32 8191)  ; UMin(a,b)
  %8174 = shl i32 %8173, 2
  %8175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %8174, i32 undef)  ; BufferLoad(srv,index,wot)
  %8176 = extractvalue %dx.types.ResRet.i32 %8175, 0
  %8177 = lshr i32 %8176, 16
  %8178 = and i32 %8176, 65535
  %8179 = lshr i32 %8176, 21
  %8180 = lshr i32 %8178, 5
  %8181 = call i32 @dx.op.binary.i32(i32 40, i32 %8180, i32 %8169)  ; UMin(a,b)
  %8182 = icmp ugt i32 %8179, %8181
  br i1 %8182, label %9122, label %8183

; <label>:8183                                    ; preds = %8134
  br label %8184

; <label>:8184                                    ; preds = %9091, %8183
  %8185 = phi i32 [ %9092, %9091 ], [ %8113, %8183 ]
  %8186 = phi i32 [ %9093, %9091 ], [ 0, %8183 ]
  %8187 = phi i32 [ %9094, %9091 ], [ 0, %8183 ]
  %8188 = phi i32 [ %9095, %9091 ], [ 0, %8183 ]
  %8189 = phi i32 [ %9096, %9091 ], [ 0, %8183 ]
  %8190 = phi i32 [ %9097, %9091 ], [ 0, %8183 ]
  %8191 = phi i32 [ %9098, %9091 ], [ 0, %8183 ]
  %8192 = phi i32 [ %9099, %9091 ], [ 0, %8183 ]
  %8193 = phi i32 [ %9100, %9091 ], [ 0, %8183 ]
  %8194 = phi i32 [ %9119, %9091 ], [ %8179, %8183 ]
  %8195 = phi float [ %9101, %9091 ], [ %8115, %8183 ]
  %8196 = phi float [ %9102, %9091 ], [ %8116, %8183 ]
  %8197 = phi float [ %9103, %9091 ], [ %8117, %8183 ]
  %8198 = phi float [ %9104, %9091 ], [ %8118, %8183 ]
  %8199 = phi float [ %9105, %9091 ], [ %8119, %8183 ]
  %8200 = phi float [ %9106, %9091 ], [ %8120, %8183 ]
  %8201 = phi float [ %9107, %9091 ], [ %8121, %8183 ]
  %8202 = phi float [ %9108, %9091 ], [ %8122, %8183 ]
  %8203 = phi float [ %9109, %9091 ], [ %8123, %8183 ]
  %8204 = phi float [ %9110, %9091 ], [ %8124, %8183 ]
  %8205 = phi float [ %9111, %9091 ], [ %8125, %8183 ]
  %8206 = phi float [ %9112, %9091 ], [ %8126, %8183 ]
  %8207 = phi float [ %9113, %9091 ], [ %8128, %8183 ]
  %8208 = phi float [ %9114, %9091 ], [ %8129, %8183 ]
  %8209 = phi float [ %9115, %9091 ], [ %8130, %8183 ]
  %8210 = phi float [ %9116, %9091 ], [ %8124, %8183 ]
  %8211 = phi float [ %9117, %9091 ], [ %8125, %8183 ]
  %8212 = phi float [ %9118, %9091 ], [ %8126, %8183 ]
  %8213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %8214 = extractvalue %dx.types.CBufRet.i32 %8213, 0
  %8215 = call i32 @dx.op.tertiary.i32(i32 49, i32 %8167, i32 %8214, i32 %8194)  ; UMad(a,b,c)
  %8216 = shl i32 %8215, 2
  %8217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %8216, i32 undef)  ; BufferLoad(srv,index,wot)
  %8218 = extractvalue %dx.types.ResRet.i32 %8217, 0
  %8219 = shl i32 %8194, 5
  %8220 = sub nsw i32 %8177, %8219
  %8221 = call i32 @dx.op.binary.i32(i32 37, i32 %8220, i32 0)  ; IMax(a,b)
  %8222 = call i32 @dx.op.binary.i32(i32 38, i32 %8221, i32 31)  ; IMin(a,b)
  %8223 = sub nsw i32 1, %8177
  %8224 = add nsw i32 %8223, %8178
  %8225 = call i32 @dx.op.binary.i32(i32 37, i32 %8224, i32 0)  ; IMax(a,b)
  %8226 = call i32 @dx.op.binary.i32(i32 38, i32 %8225, i32 32)  ; IMin(a,b)
  %8227 = and i32 %8226, 31
  %8228 = shl i32 -1, %8227
  %8229 = xor i32 %8228, -1
  %8230 = and i32 %8222, 31
  %8231 = shl i32 %8229, %8230
  %8232 = icmp eq i32 %8226, 32
  %8233 = select i1 %8232, i32 -1, i32 %8231
  %8234 = and i32 %8233, %8218
  %8235 = icmp eq i32 %8234, 0
  br i1 %8235, label %9091, label %8236

; <label>:8236                                    ; preds = %8184
  br label %8237

; <label>:8237                                    ; preds = %8432, %8236
  %8238 = phi i32 [ %8433, %8432 ], [ %8185, %8236 ]
  %8239 = phi i32 [ %8422, %8432 ], [ %8186, %8236 ]
  %8240 = phi i32 [ %8424, %8432 ], [ %8187, %8236 ]
  %8241 = phi i32 [ %8426, %8432 ], [ %8188, %8236 ]
  %8242 = phi i32 [ %8428, %8432 ], [ %8189, %8236 ]
  %8243 = phi i32 [ %8434, %8432 ], [ %8190, %8236 ]
  %8244 = phi i32 [ %8435, %8432 ], [ %8191, %8236 ]
  %8245 = phi i32 [ %8436, %8432 ], [ %8192, %8236 ]
  %8246 = phi i32 [ %8437, %8432 ], [ %8193, %8236 ]
  %8247 = phi i32 [ %8270, %8432 ], [ %8234, %8236 ]
  %8248 = phi float [ %8438, %8432 ], [ %8195, %8236 ]
  %8249 = phi float [ %8439, %8432 ], [ %8196, %8236 ]
  %8250 = phi float [ %8440, %8432 ], [ %8197, %8236 ]
  %8251 = phi float [ %8441, %8432 ], [ %8198, %8236 ]
  %8252 = phi float [ %8442, %8432 ], [ %8199, %8236 ]
  %8253 = phi float [ %8443, %8432 ], [ %8200, %8236 ]
  %8254 = phi float [ %8444, %8432 ], [ %8201, %8236 ]
  %8255 = phi float [ %8445, %8432 ], [ %8202, %8236 ]
  %8256 = phi float [ %8446, %8432 ], [ %8203, %8236 ]
  %8257 = phi float [ %8447, %8432 ], [ %8204, %8236 ]
  %8258 = phi float [ %8448, %8432 ], [ %8205, %8236 ]
  %8259 = phi float [ %8449, %8432 ], [ %8206, %8236 ]
  %8260 = phi float [ %8450, %8432 ], [ %8207, %8236 ]
  %8261 = phi float [ %8451, %8432 ], [ %8208, %8236 ]
  %8262 = phi float [ %8452, %8432 ], [ %8209, %8236 ]
  %8263 = phi float [ %8453, %8432 ], [ %8210, %8236 ]
  %8264 = phi float [ %8454, %8432 ], [ %8211, %8236 ]
  %8265 = phi float [ %8455, %8432 ], [ %8212, %8236 ]
  %8266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8247)  ; FirstbitLo(value)
  %8267 = add i32 %8266, %8219
  %8268 = and i32 %8266, 31
  %8269 = shl i32 1, %8268
  %8270 = xor i32 %8269, %8247
  %8271 = mul i32 %8267, 112
  %8272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8271, i32 undef)  ; BufferLoad(srv,index,wot)
  %8273 = extractvalue %dx.types.ResRet.f32 %8272, 0
  %8274 = extractvalue %dx.types.ResRet.f32 %8272, 1
  %8275 = extractvalue %dx.types.ResRet.f32 %8272, 2
  %8276 = or i32 %8271, 12
  %8277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8276, i32 undef)  ; BufferLoad(srv,index,wot)
  %8278 = extractvalue %dx.types.ResRet.f32 %8277, 0
  %8279 = add i32 %8271, 16
  %8280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8279, i32 undef)  ; BufferLoad(srv,index,wot)
  %8281 = extractvalue %dx.types.ResRet.f32 %8280, 0
  %8282 = extractvalue %dx.types.ResRet.f32 %8280, 1
  %8283 = extractvalue %dx.types.ResRet.f32 %8280, 2
  %8284 = add i32 %8271, 28
  %8285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %8284, i32 undef)  ; BufferLoad(srv,index,wot)
  %8286 = extractvalue %dx.types.ResRet.i32 %8285, 0
  %8287 = add i32 %8271, 32
  %8288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8287, i32 undef)  ; BufferLoad(srv,index,wot)
  %8289 = extractvalue %dx.types.ResRet.f32 %8288, 0
  %8290 = extractvalue %dx.types.ResRet.f32 %8288, 1
  %8291 = extractvalue %dx.types.ResRet.f32 %8288, 2
  %8292 = add i32 %8271, 44
  %8293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8292, i32 undef)  ; BufferLoad(srv,index,wot)
  %8294 = extractvalue %dx.types.ResRet.f32 %8293, 0
  %8295 = add i32 %8271, 48
  %8296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8295, i32 undef)  ; BufferLoad(srv,index,wot)
  %8297 = extractvalue %dx.types.ResRet.f32 %8296, 0
  %8298 = extractvalue %dx.types.ResRet.f32 %8296, 1
  %8299 = extractvalue %dx.types.ResRet.f32 %8296, 2
  %8300 = extractvalue %dx.types.ResRet.f32 %8296, 3
  %8301 = add i32 %8271, 64
  %8302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8301, i32 undef)  ; BufferLoad(srv,index,wot)
  %8303 = extractvalue %dx.types.ResRet.f32 %8302, 0
  %8304 = extractvalue %dx.types.ResRet.f32 %8302, 1
  %8305 = extractvalue %dx.types.ResRet.f32 %8302, 2
  %8306 = extractvalue %dx.types.ResRet.f32 %8302, 3
  %8307 = add i32 %8271, 80
  %8308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %29, i32 %8307, i32 undef)  ; BufferLoad(srv,index,wot)
  %8309 = extractvalue %dx.types.ResRet.f32 %8308, 1
  %8310 = extractvalue %dx.types.ResRet.f32 %8308, 2
  %8311 = add i32 %8271, 92
  %8312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %8311, i32 undef)  ; BufferLoad(srv,index,wot)
  %8313 = extractvalue %dx.types.ResRet.i32 %8312, 0
  %8314 = call float @dx.op.dot3.f32(i32 55, float %8273, float %8274, float %8275, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8315 = select i1 %3298, float %8309, float %8273
  %8316 = select i1 %3298, float %8314, float %8274
  %8317 = select i1 %3298, float %8310, float %8275
  %8318 = and i32 %8313, 65535
  %8319 = uitofp i32 %8318 to float
  %8320 = lshr i32 %8313, 16
  %8321 = uitofp i32 %8320 to float
  %8322 = and i32 %8286, 65535
  %8323 = lshr i32 %8286, 24
  %8324 = and i32 %8323, 3
  %8325 = and i32 %8286, 536870912
  %8326 = icmp ne i32 %8325, 0
  %8327 = icmp slt i32 %8286, 0
  %8328 = icmp eq i32 %8324, 2
  %8329 = call float @dx.op.dot3.f32(i32 55, float %8289, float %8290, float %8291, float %8289, float %8290, float %8291)  ; Dot3(ax,ay,az,bx,by,bz)
  %8330 = fsub fast float %565, %8297
  %8331 = fsub fast float %566, %8298
  %8332 = fsub fast float %567, %8299
  %8333 = call float @dx.op.dot3.f32(i32 55, float %8330, float %8331, float %8332, float %8289, float %8290, float %8291)  ; Dot3(ax,ay,az,bx,by,bz)
  %8334 = fdiv fast float %8333, %8329
  %8335 = call float @dx.op.binary.f32(i32 35, float %8334, float -1.000000e+00)  ; FMax(a,b)
  %8336 = call float @dx.op.binary.f32(i32 36, float %8335, float 1.000000e+00)  ; FMin(a,b)
  %8337 = fmul fast float %8336, %8289
  %8338 = fmul fast float %8336, %8290
  %8339 = fmul fast float %8336, %8291
  %8340 = fadd fast float %8337, %8297
  %8341 = fadd fast float %8338, %8298
  %8342 = fadd fast float %8339, %8299
  %8343 = fsub fast float %8340, %565
  %8344 = fsub fast float %8341, %566
  %8345 = fsub fast float %8342, %567
  %8346 = call float @dx.op.dot3.f32(i32 55, float %8343, float %8344, float %8345, float %8343, float %8344, float %8345)  ; Dot3(ax,ay,az,bx,by,bz)
  %8347 = call float @dx.op.unary.f32(i32 24, float %8346)  ; Sqrt(value)
  %8348 = fdiv fast float 1.000000e+00, %8347
  %8349 = fmul fast float %8343, %8348
  %8350 = fmul fast float %8344, %8348
  %8351 = fmul fast float %8345, %8348
  %8352 = fadd fast float %8347, %8278
  %8353 = fdiv fast float 1.000000e+00, %8352
  %8354 = fmul float %8294, %8353
  %8355 = fmul float %8354, %8354
  %8356 = call float @dx.op.unary.f32(i32 7, float %8355)  ; Saturate(value)
  br i1 %8328, label %8357, label %8381

; <label>:8357                                    ; preds = %8237
  %8358 = fmul fast float %8305, %8281
  %8359 = fmul fast float %8305, %8282
  %8360 = fmul fast float %8305, %8283
  %8361 = fsub fast float %8358, %565
  %8362 = fadd fast float %8361, %8340
  %8363 = fsub fast float %8359, %566
  %8364 = fadd fast float %8363, %8341
  %8365 = fsub fast float %8360, %567
  %8366 = fadd fast float %8365, %8342
  %8367 = call float @dx.op.dot3.f32(i32 55, float %8362, float %8364, float %8366, float %8362, float %8364, float %8366)  ; Dot3(ax,ay,az,bx,by,bz)
  %8368 = call float @dx.op.unary.f32(i32 25, float %8367)  ; Rsqrt(value)
  %8369 = fmul fast float %8368, %8362
  %8370 = fmul fast float %8368, %8364
  %8371 = fmul fast float %8368, %8366
  %8372 = fsub fast float %565, %8340
  %8373 = fsub fast float %566, %8341
  %8374 = fsub fast float %567, %8342
  %8375 = fsub fast float -0.000000e+00, %8372
  %8376 = fsub fast float -0.000000e+00, %8373
  %8377 = fsub fast float -0.000000e+00, %8374
  %8378 = call float @dx.op.dot3.f32(i32 55, float %8375, float %8376, float %8377, float %8281, float %8282, float %8283)  ; Dot3(ax,ay,az,bx,by,bz)
  %8379 = fcmp fast ogt float %8378, 0.000000e+00
  %8380 = uitofp i1 %8379 to float
  br label %8381

; <label>:8381                                    ; preds = %8357, %8237
  %8382 = phi float [ %8380, %8357 ], [ 1.000000e+00, %8237 ]
  %8383 = phi float [ %8369, %8357 ], [ %8349, %8237 ]
  %8384 = phi float [ %8370, %8357 ], [ %8350, %8237 ]
  %8385 = phi float [ %8371, %8357 ], [ %8351, %8237 ]
  %8386 = call float @dx.op.dot3.f32(i32 55, float %8281, float %8282, float %8283, float %8383, float %8384, float %8385)  ; Dot3(ax,ay,az,bx,by,bz)
  %8387 = fmul fast float %8386, %8386
  %8388 = call float @dx.op.unary.f32(i32 7, float %8387)  ; Saturate(value)
  %8389 = fsub fast float 1.000000e+00, %8388
  %8390 = fmul fast float %8389, 5.000000e-01
  %8391 = fcmp fast ogt float %8386, 0.000000e+00
  %8392 = fsub fast float 1.000000e+00, %8390
  %8393 = select i1 %8391, float %8390, float %8392
  %8394 = fmul fast float %8393, %8321
  %8395 = fadd fast float %8394, %8319
  %8396 = fmul fast float %8395, 0x3EF0001000000000
  %8397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %65, float %8396, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8398 = extractvalue %dx.types.ResRet.f32 %8397, 0
  %8399 = fmul fast float %8386, %8303
  %8400 = fadd fast float %8399, %8304
  %8401 = call float @dx.op.unary.f32(i32 7, float %8400)  ; Saturate(value)
  %8402 = select i1 %8328, float 1.000000e+00, float %8401
  %8403 = select i1 %8328, float %8401, float 1.000000e+00
  %8404 = fmul fast float %8347, %8300
  %8405 = fsub fast float 1.000000e+00, %8404
  %8406 = fmul fast float %8405, %8306
  %8407 = call float @dx.op.unary.f32(i32 7, float %8406)  ; Saturate(value)
  %8408 = fmul fast float %8407, %8403
  %8409 = fmul fast float %8408, 2.000000e+00
  %8410 = fsub fast float 3.000000e+00, %8409
  %8411 = fmul fast float %8398, %8382
  %8412 = fmul fast float %8408, %8408
  %8413 = fmul fast float %8412, %8411
  %8414 = fmul fast float %8413, %8410
  %8415 = xor i1 %8326, true
  %8416 = and i1 %8328, %8415
  %8417 = icmp ne i32 %8324, 2
  %8418 = and i1 %8417, %8415
  %8419 = and i1 %8326, %8328
  %8420 = and i1 %8326, %8417
  %8421 = zext i1 %8416 to i32
  %8422 = add i32 %8421, %8239
  %8423 = zext i1 %8418 to i32
  %8424 = add i32 %8423, %8240
  %8425 = zext i1 %8419 to i32
  %8426 = add i32 %8425, %8241
  %8427 = zext i1 %8420 to i32
  %8428 = add i32 %8427, %8242
  %8429 = call float @dx.op.binary.f32(i32 36, float %8414, float %8414)  ; FMin(a,b)
  %8430 = call float @dx.op.binary.f32(i32 36, float %8414, float %8429)  ; FMin(a,b)
  %8431 = fcmp fast ogt float %8430, 0.000000e+00
  br i1 %8431, label %8457, label %8432, !dx.controlflow.hints !165

; <label>:8432                                    ; preds = %9075, %8381
  %8433 = phi i32 [ %9085, %9075 ], [ %8238, %8381 ]
  %8434 = phi i32 [ %9086, %9075 ], [ %8243, %8381 ]
  %8435 = phi i32 [ %9087, %9075 ], [ %8244, %8381 ]
  %8436 = phi i32 [ %9088, %9075 ], [ %8245, %8381 ]
  %8437 = phi i32 [ %9089, %9075 ], [ %8246, %8381 ]
  %8438 = phi float [ %9046, %9075 ], [ %8248, %8381 ]
  %8439 = phi float [ %9047, %9075 ], [ %8249, %8381 ]
  %8440 = phi float [ %9048, %9075 ], [ %8250, %8381 ]
  %8441 = phi float [ %9049, %9075 ], [ %8251, %8381 ]
  %8442 = phi float [ %9050, %9075 ], [ %8252, %8381 ]
  %8443 = phi float [ %9051, %9075 ], [ %8253, %8381 ]
  %8444 = phi float [ %9052, %9075 ], [ %8254, %8381 ]
  %8445 = phi float [ %9053, %9075 ], [ %8255, %8381 ]
  %8446 = phi float [ %9054, %9075 ], [ %8256, %8381 ]
  %8447 = phi float [ %9055, %9075 ], [ %8257, %8381 ]
  %8448 = phi float [ %9056, %9075 ], [ %8258, %8381 ]
  %8449 = phi float [ %9057, %9075 ], [ %8259, %8381 ]
  %8450 = phi float [ %9058, %9075 ], [ %8260, %8381 ]
  %8451 = phi float [ %9059, %9075 ], [ %8261, %8381 ]
  %8452 = phi float [ %9060, %9075 ], [ %8262, %8381 ]
  %8453 = phi float [ %9061, %9075 ], [ %8263, %8381 ]
  %8454 = phi float [ %9062, %9075 ], [ %8264, %8381 ]
  %8455 = phi float [ %9063, %9075 ], [ %8265, %8381 ]
  %8456 = icmp eq i32 %8247, %8269
  br i1 %8456, label %9090, label %8237

; <label>:8457                                    ; preds = %8381
  %8458 = icmp eq i32 %8322, 255
  br i1 %8458, label %8596, label %8459, !dx.controlflow.hints !166

; <label>:8459                                    ; preds = %8457
  %8460 = mul nuw nsw i32 %8322, 176
  %8461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8460, i32 undef)  ; BufferLoad(srv,index,wot)
  %8462 = extractvalue %dx.types.ResRet.f32 %8461, 0
  %8463 = extractvalue %dx.types.ResRet.f32 %8461, 1
  %8464 = extractvalue %dx.types.ResRet.f32 %8461, 2
  %8465 = extractvalue %dx.types.ResRet.f32 %8461, 3
  %8466 = add nuw nsw i32 %8460, 16
  %8467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8466, i32 undef)  ; BufferLoad(srv,index,wot)
  %8468 = extractvalue %dx.types.ResRet.f32 %8467, 0
  %8469 = extractvalue %dx.types.ResRet.f32 %8467, 1
  %8470 = add nuw nsw i32 %8460, 32
  %8471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8470, i32 undef)  ; BufferLoad(srv,index,wot)
  %8472 = extractvalue %dx.types.ResRet.f32 %8471, 0
  %8473 = extractvalue %dx.types.ResRet.f32 %8471, 1
  %8474 = add nuw nsw i32 %8460, 48
  %8475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8474, i32 undef)  ; BufferLoad(srv,index,wot)
  %8476 = extractvalue %dx.types.ResRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.ResRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.ResRet.f32 %8475, 2
  %8479 = extractvalue %dx.types.ResRet.f32 %8475, 3
  %8480 = add nuw nsw i32 %8460, 64
  %8481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8480, i32 undef)  ; BufferLoad(srv,index,wot)
  %8482 = extractvalue %dx.types.ResRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.ResRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.ResRet.f32 %8481, 2
  %8485 = extractvalue %dx.types.ResRet.f32 %8481, 3
  %8486 = add nuw nsw i32 %8460, 80
  %8487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8486, i32 undef)  ; BufferLoad(srv,index,wot)
  %8488 = extractvalue %dx.types.ResRet.f32 %8487, 0
  %8489 = extractvalue %dx.types.ResRet.f32 %8487, 1
  %8490 = extractvalue %dx.types.ResRet.f32 %8487, 2
  %8491 = extractvalue %dx.types.ResRet.f32 %8487, 3
  %8492 = add nuw nsw i32 %8460, 96
  %8493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %8492, i32 undef)  ; BufferLoad(srv,index,wot)
  %8494 = extractvalue %dx.types.ResRet.f32 %8493, 0
  %8495 = extractvalue %dx.types.ResRet.f32 %8493, 1
  %8496 = extractvalue %dx.types.ResRet.f32 %8493, 2
  %8497 = extractvalue %dx.types.ResRet.f32 %8493, 3
  %8498 = bitcast float %8469 to i32
  %8499 = fmul fast float %8476, %565
  %8500 = call float @dx.op.tertiary.f32(i32 46, float %566, float %8482, float %8499)  ; FMad(a,b,c)
  %8501 = call float @dx.op.tertiary.f32(i32 46, float %567, float %8488, float %8500)  ; FMad(a,b,c)
  %8502 = fadd fast float %8501, %8494
  %8503 = fmul fast float %8477, %565
  %8504 = call float @dx.op.tertiary.f32(i32 46, float %566, float %8483, float %8503)  ; FMad(a,b,c)
  %8505 = call float @dx.op.tertiary.f32(i32 46, float %567, float %8489, float %8504)  ; FMad(a,b,c)
  %8506 = fadd fast float %8505, %8495
  %8507 = fmul fast float %8478, %565
  %8508 = call float @dx.op.tertiary.f32(i32 46, float %566, float %8484, float %8507)  ; FMad(a,b,c)
  %8509 = call float @dx.op.tertiary.f32(i32 46, float %567, float %8490, float %8508)  ; FMad(a,b,c)
  %8510 = fadd fast float %8509, %8496
  %8511 = fmul fast float %8479, %565
  %8512 = call float @dx.op.tertiary.f32(i32 46, float %566, float %8485, float %8511)  ; FMad(a,b,c)
  %8513 = call float @dx.op.tertiary.f32(i32 46, float %567, float %8491, float %8512)  ; FMad(a,b,c)
  %8514 = fadd fast float %8513, %8497
  %8515 = fdiv fast float %8502, %8514
  %8516 = fdiv fast float %8506, %8514
  %8517 = fdiv fast float %8510, %8514
  %8518 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %8517)  ; FMax(a,b)
  %8519 = fmul fast float %2539, 0x401921FB60000000
  %8520 = call float @dx.op.unary.f32(i32 13, float %8519)  ; Sin(value)
  %8521 = call float @dx.op.unary.f32(i32 12, float %8519)  ; Cos(value)
  %8522 = fmul fast float %8521, %8473
  %8523 = call float @dx.op.tertiary.f32(i32 46, float %8520, float %8473, float 0.000000e+00)  ; FMad(a,b,c)
  %8524 = fmul fast float %8473, %8520
  %8525 = fsub fast float -0.000000e+00, %8524
  %8526 = call float @dx.op.tertiary.f32(i32 46, float %8521, float %8473, float 0.000000e+00)  ; FMad(a,b,c)
  br label %8527

; <label>:8527                                    ; preds = %8527, %8459
  %8528 = phi float [ 0.000000e+00, %8459 ], [ %8560, %8527 ]
  %8529 = phi float [ 0.000000e+00, %8459 ], [ %8562, %8527 ]
  %8530 = phi i32 [ 0, %8459 ], [ %8563, %8527 ]
  %8531 = mul i32 %8530, 2
  %8532 = add i32 0, %8531
  %8533 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8532
  %8534 = load float, float* %8533, align 4
  %8535 = mul i32 %8530, 2
  %8536 = add i32 1, %8535
  %8537 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %8536
  %8538 = load float, float* %8537, align 4
  %8539 = fmul fast float %8522, %8534
  %8540 = call float @dx.op.tertiary.f32(i32 46, float %8538, float %8525, float %8539)  ; FMad(a,b,c)
  %8541 = fmul fast float %8534, %8523
  %8542 = call float @dx.op.tertiary.f32(i32 46, float %8538, float %8526, float %8541)  ; FMad(a,b,c)
  %8543 = fadd fast float %8540, %8515
  %8544 = fadd fast float %8542, %8516
  %8545 = fmul fast float %8543, %8468
  %8546 = fmul fast float %8544, %8468
  %8547 = call float @dx.op.binary.f32(i32 35, float %8545, float %8464)  ; FMax(a,b)
  %8548 = call float @dx.op.binary.f32(i32 35, float %8546, float %8464)  ; FMax(a,b)
  %8549 = call float @dx.op.binary.f32(i32 36, float %8547, float %8465)  ; FMin(a,b)
  %8550 = call float @dx.op.binary.f32(i32 36, float %8548, float %8465)  ; FMin(a,b)
  %8551 = fadd fast float %8549, %8462
  %8552 = fadd fast float %8550, %8463
  %8553 = uitofp i32 %8498 to float
  %8554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %66, float %8551, float %8552, float %8553, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8555 = extractvalue %dx.types.ResRet.f32 %8554, 0
  %8556 = fsub fast float %8555, %8518
  %8557 = fsub fast float %8556, %8472
  %8558 = fcmp fast ogt float %8557, 0.000000e+00
  %8559 = select i1 %8558, float 1.000000e+00, float 0.000000e+00
  %8560 = fadd fast float %8559, %8528
  %8561 = select i1 %8558, float %8557, float 0.000000e+00
  %8562 = fadd fast float %8561, %8529
  %8563 = add nuw nsw i32 %8530, 1
  %8564 = icmp eq i32 %8563, 8
  br i1 %8564, label %8565, label %8527

; <label>:8565                                    ; preds = %8527
  %8566 = fdiv fast float 1.000000e+00, %8560
  %8567 = fmul fast float %8566, %8562
  %8568 = fdiv fast float 1.000000e+00, %8518
  %8569 = fmul fast float %8567, %8568
  %8570 = call float @dx.op.unary.f32(i32 7, float %8569)  ; Saturate(value)
  %8571 = call float @dx.op.binary.f32(i32 35, float %8570, float 0.000000e+00)  ; FMax(a,b)
  %8572 = fmul fast float %8560, 1.250000e-01
  %8573 = call float @dx.op.unary.f32(i32 7, float %8572)  ; Saturate(value)
  %8574 = fmul fast float %8573, 2.000000e+00
  %8575 = fadd fast float %8574, -1.000000e+00
  %8576 = fcmp fast ogt float %8575, 0.000000e+00
  %8577 = fcmp fast olt float %8575, 0.000000e+00
  %8578 = zext i1 %8576 to i32
  %8579 = zext i1 %8577 to i32
  %8580 = sub nsw i32 %8578, %8579
  %8581 = sitofp i32 %8580 to float
  %8582 = fmul fast float %8581, %8575
  %8583 = fsub fast float 1.000000e+00, %8582
  %8584 = fmul fast float %8583, %8583
  %8585 = fmul fast float %8584, %8583
  %8586 = fsub fast float %8583, %8585
  %8587 = fmul fast float %8586, %8571
  %8588 = fsub fast float 1.000000e+00, %8585
  %8589 = fsub fast float %8588, %8587
  %8590 = fmul fast float %8581, 5.000000e-01
  %8591 = fmul fast float %8590, %8589
  %8592 = fsub fast float -5.000000e-01, %8591
  %8593 = fmul fast float %8592, %8402
  %8594 = fadd fast float %8593, 1.000000e+00
  %8595 = fmul fast float %8594, %8414
  br label %8596

; <label>:8596                                    ; preds = %8565, %8457
  %8597 = phi float [ %8595, %8565 ], [ %8414, %8457 ]
  %8598 = call float @dx.op.binary.f32(i32 36, float %8597, float %8597)  ; FMin(a,b)
  %8599 = call float @dx.op.binary.f32(i32 36, float %8597, float %8598)  ; FMin(a,b)
  %8600 = fcmp fast ogt float %8599, 0.000000e+00
  br i1 %8600, label %8601, label %9045, !dx.controlflow.hints !167

; <label>:8601                                    ; preds = %8596
  %8602 = fmul fast float %8597, %8315
  %8603 = fmul fast float %8597, %8316
  %8604 = fmul fast float %8597, %8317
  %8605 = fadd fast float %8349, %3065
  %8606 = fadd fast float %8350, %3066
  %8607 = fadd fast float %8351, %3067
  %8608 = call float @dx.op.dot3.f32(i32 55, float %8349, float %8350, float %8351, float %8343, float %8344, float %8345)  ; Dot3(ax,ay,az,bx,by,bz)
  %8609 = call float @dx.op.dot3.f32(i32 55, float %8349, float %8350, float %8351, float %8605, float %8606, float %8607)  ; Dot3(ax,ay,az,bx,by,bz)
  %8610 = fdiv fast float 1.000000e+00, %8609
  %8611 = fmul fast float %8610, %8608
  %8612 = fmul fast float %8611, %8605
  %8613 = fmul fast float %8611, %8606
  %8614 = fmul fast float %8611, %8607
  %8615 = fadd fast float %8330, %8612
  %8616 = fadd fast float %8331, %8613
  %8617 = fadd fast float %8332, %8614
  %8618 = call float @dx.op.dot3.f32(i32 55, float %8615, float %8616, float %8617, float %8289, float %8290, float %8291)  ; Dot3(ax,ay,az,bx,by,bz)
  %8619 = fdiv fast float %8618, %8329
  %8620 = call float @dx.op.binary.f32(i32 35, float %8619, float -1.000000e+00)  ; FMax(a,b)
  %8621 = call float @dx.op.binary.f32(i32 36, float %8620, float 1.000000e+00)  ; FMin(a,b)
  %8622 = fmul fast float %8621, %8289
  %8623 = fmul fast float %8621, %8290
  %8624 = fmul fast float %8621, %8291
  %8625 = fsub fast float %8297, %565
  %8626 = fadd fast float %8625, %8622
  %8627 = fsub fast float %8298, %566
  %8628 = fadd fast float %8627, %8623
  %8629 = fsub fast float %8299, %567
  %8630 = fadd fast float %8629, %8624
  %8631 = call float @dx.op.dot3.f32(i32 55, float %8626, float %8628, float %8630, float %8626, float %8628, float %8630)  ; Dot3(ax,ay,az,bx,by,bz)
  %8632 = call float @dx.op.unary.f32(i32 25, float %8631)  ; Rsqrt(value)
  %8633 = fmul fast float %8626, %8632
  %8634 = fmul fast float %8628, %8632
  %8635 = fmul fast float %8630, %8632
  %8636 = fsub fast float %8633, %3093
  %8637 = fsub fast float %8634, %3094
  %8638 = fsub fast float %8635, %3095
  %8639 = call float @dx.op.dot3.f32(i32 55, float %8636, float %8637, float %8638, float %8636, float %8637, float %8638)  ; Dot3(ax,ay,az,bx,by,bz)
  %8640 = call float @dx.op.unary.f32(i32 25, float %8639)  ; Rsqrt(value)
  %8641 = fmul fast float %8636, %8640
  %8642 = fmul fast float %8637, %8640
  %8643 = fmul fast float %8638, %8640
  %8644 = call float @dx.op.dot3.f32(i32 55, float %8633, float %8634, float %8635, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %8645 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3146, float %3147, float %8641, float %8642, float %8643)  ; Dot3(ax,ay,az,bx,by,bz)
  %8646 = fmul fast float %8632, %8294
  %8647 = fmul fast float %8646, %8646
  %8648 = bitcast float %8647 to i32
  %8649 = ashr i32 %8648, 1
  %8650 = sub nsw i32 1597463007, %8649
  %8651 = bitcast i32 %8650 to float
  %8652 = fmul fast float %8651, %8644
  %8653 = fmul fast float %8652, %8652
  %8654 = fsub fast float 1.000000e+00, %8653
  %8655 = fmul fast float %8644, %8647
  %8656 = call float @dx.op.unary.f32(i32 7, float %8655)  ; Saturate(value)
  %8657 = fmul fast float %8652, 5.000000e-01
  %8658 = fadd fast float %8657, 5.000000e-01
  %8659 = fmul fast float %8658, %8647
  %8660 = call float @dx.op.unary.f32(i32 7, float %8659)  ; Saturate(value)
  %8661 = bitcast float %8660 to i32
  %8662 = ashr i32 %8661, 1
  %8663 = add nsw i32 %8662, 532487669
  %8664 = bitcast i32 %8663 to float
  %8665 = fmul fast float %8664, %8660
  %8666 = fcmp fast ogt float %8654, 0.000000e+00
  %8667 = select i1 %8666, float %8665, float %8656
  %8668 = call float @dx.op.unary.f32(i32 7, float %8644)  ; Saturate(value)
  %8669 = fmul fast float %8668, %8668
  %8670 = fmul fast float %8669, %3336
  %8671 = call float @dx.op.unary.f32(i32 7, float %8670)  ; Saturate(value)
  %8672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8673 = extractvalue %dx.types.CBufRet.f32 %8672, 0
  %8674 = bitcast float %8673 to i32
  %8675 = lshr i32 %8674, 8
  %8676 = and i32 %8675, 255
  %8677 = uitofp i32 %8676 to float
  %8678 = fptoui float %8677 to i32
  %8679 = and i32 %8678, 8
  %8680 = icmp ne i32 %8679, 0
  %8681 = select i1 %8680, float %8671, float 1.000000e+00
  %8682 = fmul fast float %8681, %8667
  %8683 = call float @dx.op.dot3.f32(i32 55, float %8289, float %8290, float %8291, float %3305, float %3306, float %3307)  ; Dot3(ax,ay,az,bx,by,bz)
  %8684 = call float @dx.op.dot3.f32(i32 55, float %8289, float %8290, float %8291, float %8343, float %8344, float %8345)  ; Dot3(ax,ay,az,bx,by,bz)
  %8685 = call float @dx.op.dot3.f32(i32 55, float %3305, float %3306, float %3307, float %8343, float %8344, float %8345)  ; Dot3(ax,ay,az,bx,by,bz)
  %8686 = fmul fast float %8683, %8683
  %8687 = fsub fast float %8329, %8686
  %8688 = fmul fast float %8685, %8683
  %8689 = fsub fast float %8688, %8684
  %8690 = fdiv fast float %8689, %8687
  %8691 = call float @dx.op.binary.f32(i32 35, float %8690, float -1.500000e+00)  ; FMax(a,b)
  %8692 = call float @dx.op.binary.f32(i32 36, float %8691, float 1.500000e+00)  ; FMin(a,b)
  %8693 = fmul fast float %8692, %8692
  %8694 = fmul fast float %8693, 0x3FC2F68380000000
  %8695 = fmul fast float %8694, %8692
  %8696 = fsub fast float %8692, %8695
  %8697 = fmul fast float %8696, %8289
  %8698 = fmul fast float %8696, %8290
  %8699 = fmul fast float %8696, %8291
  %8700 = fadd fast float %8697, %8340
  %8701 = fadd fast float %8698, %8341
  %8702 = fadd fast float %8699, %8342
  %8703 = fsub fast float %8700, %565
  %8704 = fsub fast float %8701, %566
  %8705 = fsub fast float %8702, %567
  %8706 = call float @dx.op.dot3.f32(i32 55, float %8703, float %8704, float %8705, float %3305, float %3306, float %3307)  ; Dot3(ax,ay,az,bx,by,bz)
  %8707 = fmul fast float %8706, %3305
  %8708 = fmul fast float %8706, %3306
  %8709 = fmul fast float %8706, %3307
  %8710 = fsub fast float %8707, %8703
  %8711 = fsub fast float %8708, %8704
  %8712 = fsub fast float %8709, %8705
  %8713 = call float @dx.op.dot3.f32(i32 55, float %8710, float %8711, float %8712, float %8710, float %8711, float %8712)  ; Dot3(ax,ay,az,bx,by,bz)
  %8714 = bitcast float %8713 to i32
  %8715 = ashr i32 %8714, 1
  %8716 = sub nsw i32 1597463007, %8715
  %8717 = bitcast i32 %8716 to float
  %8718 = fmul fast float %8717, %8294
  %8719 = call float @dx.op.dot3.f32(i32 55, float %8703, float %8704, float %8705, float %8703, float %8704, float %8705)  ; Dot3(ax,ay,az,bx,by,bz)
  %8720 = bitcast float %8719 to i32
  %8721 = ashr i32 %8720, 1
  %8722 = sub nsw i32 1597463007, %8721
  %8723 = bitcast i32 %8722 to float
  %8724 = fmul fast float %8718, %8718
  %8725 = fadd fast float %8724, 1.250000e-01
  %8726 = call float @dx.op.unary.f32(i32 25, float %8725)  ; Rsqrt(value)
  %8727 = fmul fast float %8718, %8726
  %8728 = fmul fast float %8710, %8727
  %8729 = fmul fast float %8711, %8727
  %8730 = fmul fast float %8712, %8727
  %8731 = fadd fast float %8703, %8728
  %8732 = fadd fast float %8704, %8729
  %8733 = fadd fast float %8705, %8730
  %8734 = call float @dx.op.dot3.f32(i32 55, float %8731, float %8732, float %8733, float %8731, float %8732, float %8733)  ; Dot3(ax,ay,az,bx,by,bz)
  %8735 = call float @dx.op.unary.f32(i32 25, float %8734)  ; Rsqrt(value)
  %8736 = fmul fast float %8731, %8735
  %8737 = fmul fast float %8732, %8735
  %8738 = fmul fast float %8733, %8735
  %8739 = fsub fast float %8736, %3093
  %8740 = fsub fast float %8737, %3094
  %8741 = fsub fast float %8738, %3095
  %8742 = call float @dx.op.dot3.f32(i32 55, float %8739, float %8740, float %8741, float %8739, float %8740, float %8741)  ; Dot3(ax,ay,az,bx,by,bz)
  %8743 = call float @dx.op.unary.f32(i32 25, float %8742)  ; Rsqrt(value)
  %8744 = fmul fast float %8739, %8743
  %8745 = fmul fast float %8740, %8743
  %8746 = fmul fast float %8741, %8743
  %8747 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %8744, float %8745, float %8746)  ; Dot3(ax,ay,az,bx,by,bz)
  %8748 = fmul fast float %8747, %8747
  %8749 = call float @dx.op.unary.f32(i32 6, float %8644)  ; FAbs(value)
  %8750 = fsub fast float 1.000000e+00, %3327
  %8751 = fmul fast float %3149, %3149
  %8752 = fmul fast float %8751, %8750
  %8753 = fadd fast float %8752, %3327
  %8754 = bitcast float %8753 to i32
  %8755 = ashr i32 %8754, 1
  %8756 = add nsw i32 %8755, 532487669
  %8757 = bitcast i32 %8756 to float
  %8758 = fadd fast float %8757, %3149
  %8759 = fmul fast float %3327, %8748
  %8760 = fsub fast float 1.000000e+00, %8748
  %8761 = fadd fast float %8760, %8759
  %8762 = fmul fast float %8749, %8749
  %8763 = fmul fast float %8762, %8750
  %8764 = fadd fast float %8763, %3327
  %8765 = bitcast float %8764 to i32
  %8766 = ashr i32 %8765, 1
  %8767 = add nsw i32 %8766, 532487669
  %8768 = bitcast i32 %8767 to float
  %8769 = fadd fast float %8768, %8749
  %8770 = fmul fast float %8761, %8761
  %8771 = fmul fast float %8770, %8758
  %8772 = fmul fast float %8771, %8769
  %8773 = fdiv fast float 1.000000e+00, %8772
  %8774 = bitcast float %3327 to i32
  %8775 = sitofp i32 %8774 to float
  %8776 = fmul fast float %8775, 0x3FE7F73180000000
  %8777 = fadd fast float %8776, 0x41AFE27C40000000
  %8778 = fptosi float %8777 to i32
  %8779 = bitcast i32 %8778 to float
  %8780 = fmul fast float %8294, 0x3FD80E9D60000000
  %8781 = fmul fast float %8780, %8723
  %8782 = fadd fast float %8779, %8781
  %8783 = bitcast float %8782 to i32
  %8784 = sub nsw i32 2129859010, %8783
  %8785 = bitcast i32 %8784 to float
  %8786 = fmul fast float %3327, %8773
  %8787 = fmul fast float %8786, %8779
  %8788 = fmul fast float %8787, %8785
  %8789 = call float @dx.op.unary.f32(i32 6, float %8645)  ; FAbs(value)
  %8790 = fsub fast float 1.000000e+00, %8789
  %8791 = bitcast float %8790 to i32
  %8792 = sitofp i32 %8791 to float
  %8793 = fmul fast float %8792, 5.000000e+00
  %8794 = fadd fast float %8793, 0xC1EFBF8940000000
  %8795 = fptosi float %8794 to i32
  %8796 = bitcast i32 %8795 to float
  %8797 = fmul fast float %8796, %3150
  %8798 = fmul fast float %8796, %3151
  %8799 = fmul fast float %8796, %4401
  %8800 = fadd fast float %8797, %3086
  %8801 = fadd fast float %8798, %3087
  %8802 = fadd fast float %8799, %3300
  %8803 = select i1 %4404, float %8789, float 0.000000e+00
  %8804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %8803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8805 = extractvalue %dx.types.ResRet.f32 %8804, 0
  %8806 = extractvalue %dx.types.ResRet.f32 %8804, 1
  %8807 = extractvalue %dx.types.ResRet.f32 %8804, 2
  %8808 = fadd fast float %8805, -5.000000e-01
  %8809 = fadd fast float %8806, -5.000000e-01
  %8810 = fadd fast float %8807, -5.000000e-01
  %8811 = fmul fast float %3179, %8808
  %8812 = fmul fast float %3183, %8809
  %8813 = fmul fast float %4417, %8810
  %8814 = fadd fast float %8800, %8811
  %8815 = fadd fast float %8801, %8812
  %8816 = fadd fast float %8802, %8813
  %8817 = call float @dx.op.unary.f32(i32 7, float %8814)  ; Saturate(value)
  %8818 = call float @dx.op.unary.f32(i32 7, float %8815)  ; Saturate(value)
  %8819 = call float @dx.op.unary.f32(i32 7, float %8816)  ; Saturate(value)
  %8820 = fmul fast float %8644, 9.843750e-01
  %8821 = fmul fast float %3244, 9.843750e-01
  %8822 = fadd fast float %8820, 7.812500e-03
  %8823 = fadd fast float %8821, 7.812500e-03
  %8824 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %65, float %8822, float %8823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8825 = extractvalue %dx.types.ResRet.f32 %8824, 2
  %8826 = extractvalue %dx.types.ResRet.f32 %8824, 3
  %8827 = select i1 %4404, float %8644, float 0.000000e+00
  %8828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %8827, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8829 = extractvalue %dx.types.ResRet.f32 %8828, 0
  %8830 = extractvalue %dx.types.ResRet.f32 %8828, 1
  %8831 = extractvalue %dx.types.ResRet.f32 %8828, 2
  %8832 = fadd fast float %8829, -5.000000e-01
  %8833 = fadd fast float %8830, -5.000000e-01
  %8834 = fadd fast float %8831, -5.000000e-01
  %8835 = fmul fast float %3150, 4.000000e+00
  %8836 = fmul fast float %8835, %3162
  %8837 = fmul fast float %8836, %8832
  %8838 = fmul fast float %3151, 4.000000e+00
  %8839 = fmul fast float %8838, %3162
  %8840 = fmul fast float %8839, %8833
  %8841 = fmul fast float %4401, 4.000000e+00
  %8842 = fmul fast float %8841, %3162
  %8843 = fmul fast float %8842, %8834
  %8844 = fadd fast float %8837, %8825
  %8845 = fmul fast float %8844, %3086
  %8846 = fadd fast float %8845, %8826
  %8847 = fadd fast float %8840, %8825
  %8848 = fmul fast float %8847, %3087
  %8849 = fadd fast float %8848, %8826
  %8850 = fadd fast float %8843, %8825
  %8851 = fmul fast float %8850, %3300
  %8852 = fadd fast float %8851, %8826
  %8853 = call float @dx.op.unary.f32(i32 7, float %8846)  ; Saturate(value)
  %8854 = call float @dx.op.unary.f32(i32 7, float %8849)  ; Saturate(value)
  %8855 = call float @dx.op.unary.f32(i32 7, float %8852)  ; Saturate(value)
  %8856 = call float @dx.op.binary.f32(i32 35, float %8854, float %8855)  ; FMax(a,b)
  %8857 = call float @dx.op.binary.f32(i32 35, float %8853, float %8856)  ; FMax(a,b)
  %8858 = fsub fast float 1.000000e+00, %8857
  %8859 = fsub fast float -0.000000e+00, %3065
  %8860 = fsub fast float -0.000000e+00, %3066
  %8861 = fsub fast float -0.000000e+00, %3067
  %8862 = call float @dx.op.dot3.f32(i32 55, float %8349, float %8350, float %8351, float %8859, float %8860, float %8861)  ; Dot3(ax,ay,az,bx,by,bz)
  %8863 = call float @dx.op.unary.f32(i32 7, float %8862)  ; Saturate(value)
  %8864 = fmul fast float %8863, 9.843750e-01
  %8865 = fadd fast float %8864, 7.812500e-03
  %8866 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %65, float %8865, float %8823, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8867 = extractvalue %dx.types.ResRet.f32 %8866, 2
  %8868 = extractvalue %dx.types.ResRet.f32 %8866, 3
  %8869 = select i1 %4404, float %8863, float 0.000000e+00
  %8870 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %65, float %3160, float %8869, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8871 = fmul fast float %3087, 0x4012D0A400000000
  %8872 = fadd fast float %8871, 0x3FDB6377A0000000
  %8873 = fmul fast float %3324, %8872
  %8874 = call float @dx.op.unary.f32(i32 7, float %8873)  ; Saturate(value)
  %8875 = call float @dx.op.dot3.f32(i32 55, float %8289, float %8290, float %8291, float %3093, float %3094, float %3095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8876 = call float @dx.op.dot3.f32(i32 55, float %3093, float %3094, float %3095, float %8343, float %8344, float %8345)  ; Dot3(ax,ay,az,bx,by,bz)
  %8877 = fmul fast float %8875, %8875
  %8878 = fsub fast float %8329, %8877
  %8879 = fmul fast float %8876, %8875
  %8880 = fsub fast float %8879, %8684
  %8881 = fdiv fast float %8880, %8878
  %8882 = call float @dx.op.binary.f32(i32 35, float %8881, float -1.500000e+00)  ; FMax(a,b)
  %8883 = call float @dx.op.binary.f32(i32 36, float %8882, float 1.500000e+00)  ; FMin(a,b)
  %8884 = fmul fast float %8883, %8883
  %8885 = fmul fast float %8884, 0x3FC2F68380000000
  %8886 = fmul fast float %8885, %8883
  %8887 = fsub fast float %8883, %8886
  %8888 = fmul fast float %8887, %8289
  %8889 = fmul fast float %8887, %8290
  %8890 = fmul fast float %8887, %8291
  %8891 = fadd fast float %8888, %8340
  %8892 = fadd fast float %8889, %8341
  %8893 = fadd fast float %8890, %8342
  %8894 = fsub fast float %8891, %565
  %8895 = fsub fast float %8892, %566
  %8896 = fsub fast float %8893, %567
  %8897 = call float @dx.op.dot3.f32(i32 55, float %8894, float %8895, float %8896, float %3093, float %3094, float %3095)  ; Dot3(ax,ay,az,bx,by,bz)
  %8898 = fmul fast float %8897, %3093
  %8899 = fmul fast float %8897, %3094
  %8900 = fmul fast float %8897, %3095
  %8901 = fsub fast float %8898, %8894
  %8902 = fsub fast float %8899, %8895
  %8903 = fsub fast float %8900, %8896
  %8904 = call float @dx.op.dot3.f32(i32 55, float %8901, float %8902, float %8903, float %8901, float %8902, float %8903)  ; Dot3(ax,ay,az,bx,by,bz)
  %8905 = bitcast float %8904 to i32
  %8906 = ashr i32 %8905, 1
  %8907 = sub nsw i32 1597463007, %8906
  %8908 = bitcast i32 %8907 to float
  %8909 = fmul fast float %8908, %8294
  %8910 = fmul fast float %8909, %8909
  %8911 = fadd fast float %8910, 1.250000e-01
  %8912 = call float @dx.op.unary.f32(i32 25, float %8911)  ; Rsqrt(value)
  %8913 = fmul fast float %8909, %8912
  %8914 = fmul fast float %8901, %8913
  %8915 = fmul fast float %8902, %8913
  %8916 = fmul fast float %8903, %8913
  %8917 = fadd fast float %8894, %8914
  %8918 = fadd fast float %8895, %8915
  %8919 = fadd fast float %8896, %8916
  %8920 = call float @dx.op.dot3.f32(i32 55, float %8917, float %8918, float %8919, float %8917, float %8918, float %8919)  ; Dot3(ax,ay,az,bx,by,bz)
  %8921 = call float @dx.op.unary.f32(i32 25, float %8920)  ; Rsqrt(value)
  %8922 = fmul fast float %8917, %8921
  %8923 = fmul fast float %8918, %8921
  %8924 = fmul fast float %8919, %8921
  %8925 = fsub fast float %8922, %3305
  %8926 = fsub fast float %8923, %3306
  %8927 = fsub fast float %8924, %3307
  %8928 = call float @dx.op.dot3.f32(i32 55, float %8925, float %8926, float %8927, float %8925, float %8926, float %8927)  ; Dot3(ax,ay,az,bx,by,bz)
  %8929 = call float @dx.op.unary.f32(i32 25, float %8928)  ; Rsqrt(value)
  %8930 = fmul fast float %8925, %8929
  %8931 = fmul fast float %8926, %8929
  %8932 = fmul fast float %8927, %8929
  %8933 = call float @dx.op.dot3.f32(i32 55, float %8859, float %8860, float %8861, float %8930, float %8931, float %8932)  ; Dot3(ax,ay,az,bx,by,bz)
  %8934 = fmul fast float %8933, %8933
  %8935 = call float @dx.op.unary.f32(i32 6, float %8863)  ; FAbs(value)
  %8936 = call float @dx.op.binary.f32(i32 35, float %8874, float 0x3F847AE140000000)  ; FMax(a,b)
  %8937 = fmul fast float %8936, %8936
  %8938 = fmul fast float %8937, %8937
  %8939 = fsub fast float 1.000000e+00, %8938
  %8940 = fmul fast float %8938, %8934
  %8941 = fsub fast float 1.000000e+00, %8934
  %8942 = fadd fast float %8941, %8940
  %8943 = bitcast float %8938 to i32
  %8944 = sitofp i32 %8943 to float
  %8945 = fmul fast float %8944, 0x3FE7F73180000000
  %8946 = fadd fast float %8945, 0x41AFE27C40000000
  %8947 = fptosi float %8946 to i32
  %8948 = bitcast i32 %8947 to float
  br i1 %8327, label %8949, label %9009

; <label>:8949                                    ; preds = %8601
  %8950 = fmul fast float %8942, %8942
  %8951 = fmul fast float %8751, %8939
  %8952 = fadd fast float %8951, %8938
  %8953 = bitcast float %8952 to i32
  %8954 = ashr i32 %8953, 1
  %8955 = add nsw i32 %8954, 532487669
  %8956 = bitcast i32 %8955 to float
  %8957 = fadd fast float %8956, %3149
  %8958 = fmul fast float %8950, %8957
  %8959 = fmul fast float %8935, %8935
  %8960 = fmul fast float %8959, %8939
  %8961 = fadd fast float %8960, %8938
  %8962 = bitcast float %8961 to i32
  %8963 = ashr i32 %8962, 1
  %8964 = add nsw i32 %8963, 532487669
  %8965 = bitcast i32 %8964 to float
  %8966 = fadd fast float %8965, %8935
  %8967 = fmul fast float %8958, %8966
  %8968 = fdiv fast float 1.000000e+00, %8967
  %8969 = fmul fast float %8938, %8968
  %8970 = fmul fast float %8969, %8948
  %8971 = call float @dx.op.dot3.f32(i32 55, float %8894, float %8895, float %8896, float %8894, float %8895, float %8896)  ; Dot3(ax,ay,az,bx,by,bz)
  %8972 = bitcast float %8971 to i32
  %8973 = ashr i32 %8972, 1
  %8974 = sub nsw i32 1597463007, %8973
  %8975 = bitcast i32 %8974 to float
  %8976 = fmul fast float %8780, %8975
  %8977 = fadd fast float %8948, %8976
  %8978 = bitcast float %8977 to i32
  %8979 = sub nsw i32 2129859010, %8978
  %8980 = bitcast i32 %8979 to float
  %8981 = fmul fast float %8970, %8980
  %8982 = extractvalue %dx.types.ResRet.f32 %8870, 0
  %8983 = fadd fast float %8982, -5.000000e-01
  %8984 = fmul fast float %8836, %8983
  %8985 = fadd fast float %8984, %8867
  %8986 = fmul fast float %8985, %3086
  %8987 = fadd fast float %8986, %8868
  %8988 = call float @dx.op.unary.f32(i32 7, float %8987)  ; Saturate(value)
  %8989 = extractvalue %dx.types.ResRet.f32 %8870, 1
  %8990 = fadd fast float %8989, -5.000000e-01
  %8991 = fmul fast float %8839, %8990
  %8992 = fadd fast float %8991, %8867
  %8993 = fmul fast float %8992, %3087
  %8994 = fadd fast float %8993, %8868
  %8995 = call float @dx.op.unary.f32(i32 7, float %8994)  ; Saturate(value)
  %8996 = extractvalue %dx.types.ResRet.f32 %8870, 2
  %8997 = fadd fast float %8996, -5.000000e-01
  %8998 = fmul fast float %8842, %8997
  %8999 = fadd fast float %8998, %8867
  %9000 = fmul fast float %8999, %3300
  %9001 = fadd fast float %9000, %8868
  %9002 = call float @dx.op.unary.f32(i32 7, float %9001)  ; Saturate(value)
  %9003 = call float @dx.op.binary.f32(i32 35, float %8995, float %9002)  ; FMax(a,b)
  %9004 = call float @dx.op.binary.f32(i32 35, float %8988, float %9003)  ; FMax(a,b)
  %9005 = fsub fast float 1.000000e+00, %9004
  %9006 = fmul fast float %8863, %8356
  %9007 = fmul fast float %9006, %9005
  %9008 = fmul fast float %9007, %8981
  br label %9009

; <label>:9009                                    ; preds = %8949, %8601
  %9010 = phi float [ %9008, %8949 ], [ 0.000000e+00, %8601 ]
  %9011 = fmul fast float %8858, %8682
  %9012 = fmul fast float %8817, %8682
  %9013 = fmul fast float %9012, %8788
  %9014 = fmul fast float %8818, %8682
  %9015 = fmul fast float %9014, %8788
  %9016 = fmul fast float %8819, %8682
  %9017 = fmul fast float %9016, %8788
  %9018 = fadd fast float %9010, %9013
  %9019 = fadd fast float %9010, %9015
  %9020 = fadd fast float %9010, %9017
  %9021 = fmul fast float %9011, %8602
  %9022 = fmul fast float %9011, %8603
  %9023 = fmul fast float %9011, %8604
  %9024 = fadd fast float %9021, %8263
  %9025 = fadd fast float %9022, %8264
  %9026 = fadd fast float %9023, %8265
  %9027 = fmul fast float %9018, %8602
  %9028 = fmul fast float %9019, %8603
  %9029 = fmul fast float %9020, %8604
  %9030 = fadd fast float %9027, %8260
  %9031 = fadd fast float %9028, %8261
  %9032 = fadd fast float %9029, %8262
  %9033 = fadd fast float %9021, %8257
  %9034 = fadd fast float %9022, %8258
  %9035 = fadd fast float %9023, %8259
  %9036 = fadd fast float %9027, %8254
  %9037 = fadd fast float %9028, %8255
  %9038 = fadd fast float %9029, %8256
  %9039 = fadd fast float %9021, %8251
  %9040 = fadd fast float %9022, %8252
  %9041 = fadd fast float %9023, %8253
  %9042 = fadd fast float %9027, %8248
  %9043 = fadd fast float %9028, %8249
  %9044 = fadd fast float %9029, %8250
  br label %9045

; <label>:9045                                    ; preds = %9009, %8596
  %9046 = phi float [ %8248, %8596 ], [ %9042, %9009 ]
  %9047 = phi float [ %8249, %8596 ], [ %9043, %9009 ]
  %9048 = phi float [ %8250, %8596 ], [ %9044, %9009 ]
  %9049 = phi float [ %8251, %8596 ], [ %9039, %9009 ]
  %9050 = phi float [ %8252, %8596 ], [ %9040, %9009 ]
  %9051 = phi float [ %8253, %8596 ], [ %9041, %9009 ]
  %9052 = phi float [ %8254, %8596 ], [ %9036, %9009 ]
  %9053 = phi float [ %8255, %8596 ], [ %9037, %9009 ]
  %9054 = phi float [ %8256, %8596 ], [ %9038, %9009 ]
  %9055 = phi float [ %8257, %8596 ], [ %9033, %9009 ]
  %9056 = phi float [ %8258, %8596 ], [ %9034, %9009 ]
  %9057 = phi float [ %8259, %8596 ], [ %9035, %9009 ]
  %9058 = phi float [ %8260, %8596 ], [ %9030, %9009 ]
  %9059 = phi float [ %8261, %8596 ], [ %9031, %9009 ]
  %9060 = phi float [ %8262, %8596 ], [ %9032, %9009 ]
  %9061 = phi float [ %8263, %8596 ], [ %9024, %9009 ]
  %9062 = phi float [ %8264, %8596 ], [ %9025, %9009 ]
  %9063 = phi float [ %8265, %8596 ], [ %9026, %9009 ]
  %9064 = bitcast i32 %8238 to float
  %9065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9065, 1
  %9067 = bitcast float %9066 to i32
  %9068 = and i32 %9067, 65535
  %9069 = icmp eq i32 %9068, 65535
  br i1 %9069, label %9070, label %9072

; <label>:9070                                    ; preds = %9045
  %9071 = call float @dx.op.binary.f32(i32 35, float %9064, float %8597)  ; FMax(a,b)
  br label %9075

; <label>:9072                                    ; preds = %9045
  %9073 = icmp eq i32 %9068, %8267
  %9074 = select i1 %9073, float %8597, float %9064
  br label %9075

; <label>:9075                                    ; preds = %9072, %9070
  %9076 = phi float [ %9071, %9070 ], [ %9074, %9072 ]
  %9077 = extractvalue %dx.types.CBufRet.f32 %9065, 0
  %9078 = bitcast float %9077 to i32
  %9079 = lshr i32 %9078, 8
  %9080 = and i32 %9079, 255
  %9081 = uitofp i32 %9080 to float
  %9082 = fptoui float %9081 to i32
  %9083 = icmp eq i32 %9082, 15
  %9084 = bitcast float %9076 to i32
  %9085 = select i1 %9083, i32 %9084, i32 %8238
  %9086 = add i32 %8421, %8243
  %9087 = add i32 %8423, %8244
  %9088 = add i32 %8425, %8245
  %9089 = add i32 %8427, %8246
  br label %8432

; <label>:9090                                    ; preds = %8432
  br label %9091

; <label>:9091                                    ; preds = %9090, %8184
  %9092 = phi i32 [ %8185, %8184 ], [ %8433, %9090 ]
  %9093 = phi i32 [ %8186, %8184 ], [ %8422, %9090 ]
  %9094 = phi i32 [ %8187, %8184 ], [ %8424, %9090 ]
  %9095 = phi i32 [ %8188, %8184 ], [ %8426, %9090 ]
  %9096 = phi i32 [ %8189, %8184 ], [ %8428, %9090 ]
  %9097 = phi i32 [ %8190, %8184 ], [ %8434, %9090 ]
  %9098 = phi i32 [ %8191, %8184 ], [ %8435, %9090 ]
  %9099 = phi i32 [ %8192, %8184 ], [ %8436, %9090 ]
  %9100 = phi i32 [ %8193, %8184 ], [ %8437, %9090 ]
  %9101 = phi float [ %8195, %8184 ], [ %8438, %9090 ]
  %9102 = phi float [ %8196, %8184 ], [ %8439, %9090 ]
  %9103 = phi float [ %8197, %8184 ], [ %8440, %9090 ]
  %9104 = phi float [ %8198, %8184 ], [ %8441, %9090 ]
  %9105 = phi float [ %8199, %8184 ], [ %8442, %9090 ]
  %9106 = phi float [ %8200, %8184 ], [ %8443, %9090 ]
  %9107 = phi float [ %8201, %8184 ], [ %8444, %9090 ]
  %9108 = phi float [ %8202, %8184 ], [ %8445, %9090 ]
  %9109 = phi float [ %8203, %8184 ], [ %8446, %9090 ]
  %9110 = phi float [ %8204, %8184 ], [ %8447, %9090 ]
  %9111 = phi float [ %8205, %8184 ], [ %8448, %9090 ]
  %9112 = phi float [ %8206, %8184 ], [ %8449, %9090 ]
  %9113 = phi float [ %8207, %8184 ], [ %8450, %9090 ]
  %9114 = phi float [ %8208, %8184 ], [ %8451, %9090 ]
  %9115 = phi float [ %8209, %8184 ], [ %8452, %9090 ]
  %9116 = phi float [ %8210, %8184 ], [ %8453, %9090 ]
  %9117 = phi float [ %8211, %8184 ], [ %8454, %9090 ]
  %9118 = phi float [ %8212, %8184 ], [ %8455, %9090 ]
  %9119 = add i32 %8194, 1
  %9120 = icmp ugt i32 %9119, %8181
  br i1 %9120, label %9121, label %8184

; <label>:9121                                    ; preds = %9091
  br label %9122

; <label>:9122                                    ; preds = %9121, %8134
  %9123 = phi i32 [ %8113, %8134 ], [ %9092, %9121 ]
  %9124 = phi i32 [ 0, %8134 ], [ %9093, %9121 ]
  %9125 = phi i32 [ 0, %8134 ], [ %9094, %9121 ]
  %9126 = phi i32 [ 0, %8134 ], [ %9095, %9121 ]
  %9127 = phi i32 [ 0, %8134 ], [ %9096, %9121 ]
  %9128 = phi i32 [ 0, %8134 ], [ %9097, %9121 ]
  %9129 = phi i32 [ 0, %8134 ], [ %9098, %9121 ]
  %9130 = phi i32 [ 0, %8134 ], [ %9099, %9121 ]
  %9131 = phi i32 [ 0, %8134 ], [ %9100, %9121 ]
  %9132 = phi float [ %8115, %8134 ], [ %9101, %9121 ]
  %9133 = phi float [ %8116, %8134 ], [ %9102, %9121 ]
  %9134 = phi float [ %8117, %8134 ], [ %9103, %9121 ]
  %9135 = phi float [ %8118, %8134 ], [ %9104, %9121 ]
  %9136 = phi float [ %8119, %8134 ], [ %9105, %9121 ]
  %9137 = phi float [ %8120, %8134 ], [ %9106, %9121 ]
  %9138 = phi float [ %8121, %8134 ], [ %9107, %9121 ]
  %9139 = phi float [ %8122, %8134 ], [ %9108, %9121 ]
  %9140 = phi float [ %8123, %8134 ], [ %9109, %9121 ]
  %9141 = phi float [ %8124, %8134 ], [ %9110, %9121 ]
  %9142 = phi float [ %8125, %8134 ], [ %9111, %9121 ]
  %9143 = phi float [ %8126, %8134 ], [ %9112, %9121 ]
  %9144 = phi float [ %8128, %8134 ], [ %9113, %9121 ]
  %9145 = phi float [ %8129, %8134 ], [ %9114, %9121 ]
  %9146 = phi float [ %8130, %8134 ], [ %9115, %9121 ]
  %9147 = phi float [ %8124, %8134 ], [ %9116, %9121 ]
  %9148 = phi float [ %8125, %8134 ], [ %9117, %9121 ]
  %9149 = phi float [ %8126, %8134 ], [ %9118, %9121 ]
  %9150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9151 = extractvalue %dx.types.CBufRet.f32 %9150, 1
  %9152 = bitcast float %9151 to i32
  %9153 = lshr i32 %9152, 24
  %9154 = uitofp i32 %9153 to float
  %9155 = fptoui float %9154 to i32
  %9156 = icmp eq i32 %9155, 1
  %9157 = select i1 %9156, i32 %9128, i32 %9124
  %9158 = uitofp i32 %9157 to float
  %9159 = fptoui float %9158 to i32
  %9160 = shl i32 %9159, 8
  %9161 = select i1 %9156, i32 %9129, i32 %9125
  %9162 = uitofp i32 %9161 to float
  %9163 = fptoui float %9162 to i32
  %9164 = shl i32 %9163, 16
  %9165 = and i32 %9160, 65280
  %9166 = or i32 %9165, %8114
  %9167 = select i1 %9156, i32 %9130, i32 %9126
  %9168 = uitofp i32 %9167 to float
  %9169 = fptoui float %9168 to i32
  %9170 = shl i32 %9169, 24
  %9171 = and i32 %9164, 16711680
  %9172 = or i32 %9166, %9171
  %9173 = or i32 %9172, %9170
  %9174 = select i1 %9156, i32 %9131, i32 %9127
  %9175 = uitofp i32 %9174 to float
  %9176 = fptoui float %9175 to i32
  %9177 = and i32 %9176, 255
  %9178 = and i32 %6213, -256
  %9179 = or i32 %9177, %9178
  %9180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9181 = extractvalue %dx.types.CBufRet.f32 %9180, 0
  %9182 = bitcast float %9181 to i32
  %9183 = lshr i32 %9182, 8
  %9184 = and i32 %9183, 255
  %9185 = uitofp i32 %9184 to float
  %9186 = fptoui float %9185 to i32
  %9187 = icmp eq i32 %9186, 12
  %9188 = select i1 %9187, i32 0, i32 %9123
  br label %9189

; <label>:9189                                    ; preds = %9122, %8112
  %9190 = phi i32 [ %6213, %8112 ], [ %9179, %9122 ]
  %9191 = phi i32 [ 0, %8112 ], [ %9173, %9122 ]
  %9192 = phi i32 [ %8113, %8112 ], [ %9188, %9122 ]
  %9193 = phi float [ %8115, %8112 ], [ %9132, %9122 ]
  %9194 = phi float [ %8116, %8112 ], [ %9133, %9122 ]
  %9195 = phi float [ %8117, %8112 ], [ %9134, %9122 ]
  %9196 = phi float [ %8118, %8112 ], [ %9135, %9122 ]
  %9197 = phi float [ %8119, %8112 ], [ %9136, %9122 ]
  %9198 = phi float [ %8120, %8112 ], [ %9137, %9122 ]
  %9199 = phi float [ %8121, %8112 ], [ %9138, %9122 ]
  %9200 = phi float [ %8122, %8112 ], [ %9139, %9122 ]
  %9201 = phi float [ %8123, %8112 ], [ %9140, %9122 ]
  %9202 = phi float [ %8124, %8112 ], [ %9141, %9122 ]
  %9203 = phi float [ %8125, %8112 ], [ %9142, %9122 ]
  %9204 = phi float [ %8126, %8112 ], [ %9143, %9122 ]
  %9205 = phi float [ %8128, %8112 ], [ %9144, %9122 ]
  %9206 = phi float [ %8129, %8112 ], [ %9145, %9122 ]
  %9207 = phi float [ %8130, %8112 ], [ %9146, %9122 ]
  %9208 = phi float [ %8124, %8112 ], [ %9147, %9122 ]
  %9209 = phi float [ %8125, %8112 ], [ %9148, %9122 ]
  %9210 = phi float [ %8126, %8112 ], [ %9149, %9122 ]
  %9211 = and i32 %3144, 255
  %9212 = uitofp i32 %9211 to float
  %9213 = fmul fast float %9212, 0x3F70101020000000
  %9214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9215 = extractvalue %dx.types.CBufRet.f32 %9214, 2
  %9216 = extractvalue %dx.types.CBufRet.f32 %9214, 3
  %9217 = fmul fast float %419, %9215
  %9218 = fmul fast float %422, %9216
  %9219 = fsub fast float 1.000000e+00, %9217
  %9220 = fsub fast float 1.000000e+00, %9218
  %9221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %9222 = extractvalue %dx.types.CBufRet.f32 %9221, 0
  %9223 = extractvalue %dx.types.CBufRet.f32 %9221, 1
  %9224 = extractvalue %dx.types.CBufRet.f32 %9221, 2
  %9225 = fmul fast float %9219, %9222
  %9226 = fmul fast float %9219, %9223
  %9227 = fmul fast float %9219, %9224
  %9228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %9229 = extractvalue %dx.types.CBufRet.f32 %9228, 0
  %9230 = extractvalue %dx.types.CBufRet.f32 %9228, 1
  %9231 = extractvalue %dx.types.CBufRet.f32 %9228, 2
  %9232 = fmul fast float %9220, %9229
  %9233 = fmul fast float %9220, %9230
  %9234 = fmul fast float %9220, %9231
  %9235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %9236 = extractvalue %dx.types.CBufRet.f32 %9235, 0
  %9237 = extractvalue %dx.types.CBufRet.f32 %9235, 1
  %9238 = extractvalue %dx.types.CBufRet.f32 %9235, 2
  %9239 = fadd fast float %9232, %9236
  %9240 = fadd fast float %9239, %9225
  %9241 = fadd fast float %9233, %9237
  %9242 = fadd fast float %9241, %9226
  %9243 = fadd fast float %9234, %9238
  %9244 = fadd fast float %9243, %9227
  %9245 = fmul fast float %9240, %526
  %9246 = fmul fast float %9242, %526
  %9247 = fmul fast float %9244, %526
  %9248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %9249 = extractvalue %dx.types.CBufRet.f32 %9248, 2
  %9250 = extractvalue %dx.types.CBufRet.f32 %9248, 3
  %9251 = fmul fast float %9249, %93
  %9252 = fmul fast float %9250, %94
  %9253 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %47, i32 0, i32 %3195, i32 %3201, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %9254 = extractvalue %dx.types.ResRet.f32 %9253, 0
  %9255 = fcmp fast olt float %9254, -1.000000e+00
  %9256 = fcmp fast ogt float %9254, -1.000000e+00
  %9257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %9258 = extractvalue %dx.types.CBufRet.f32 %9257, 1
  %9259 = select i1 %9256, float %9258, float 1.000000e+00
  %9260 = fadd fast float %9254, 1.000000e+00
  %9261 = fmul fast float %9259, %9260
  %9262 = call float @dx.op.unary.f32(i32 6, float %9261)  ; FAbs(value)
  %9263 = fsub fast float %9262, %526
  %9264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %9265 = extractvalue %dx.types.CBufRet.f32 %9264, 2
  %9266 = fsub fast float %9263, %9265
  %9267 = extractvalue %dx.types.CBufRet.f32 %9264, 3
  %9268 = fmul fast float %9267, %9213
  %9269 = fmul fast float %9268, %9266
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %9272 = extractvalue %dx.types.CBufRet.f32 %9271, 1
  %9273 = extractvalue %dx.types.CBufRet.f32 %9271, 0
  %9274 = extractvalue %dx.types.CBufRet.f32 %9271, 3
  %9275 = extractvalue %dx.types.CBufRet.f32 %9271, 2
  %9276 = select i1 %9255, float %9272, float %9274
  %9277 = select i1 %9255, float %9273, float %9275
  %9278 = fsub fast float %9263, %9277
  %9279 = fmul fast float %9278, %9276
  %9280 = fsub fast float 1.000000e+00, %9213
  %9281 = fadd fast float %9280, %9279
  %9282 = call float @dx.op.unary.f32(i32 7, float %9281)  ; Saturate(value)
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 1
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9286 = fsub fast float 1.000000e+00, %9252
  %9287 = fsub fast float 1.000000e+00, %9251
  %9288 = fmul fast float %9252, %9251
  %9289 = fmul fast float %9288, %9286
  %9290 = fmul fast float %9289, %9287
  %9291 = fmul fast float %9290, %9284
  %9292 = call float @dx.op.unary.f32(i32 23, float %9291)  ; Log(value)
  %9293 = fmul fast float %9292, %9285
  %9294 = call float @dx.op.unary.f32(i32 21, float %9293)  ; Exp(value)
  %9295 = call float @dx.op.unary.f32(i32 7, float %9294)  ; Saturate(value)
  %9296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %9297 = extractvalue %dx.types.CBufRet.f32 %9296, 2
  %9298 = extractvalue %dx.types.CBufRet.f32 %9296, 3
  %9299 = extractvalue %dx.types.CBufRet.f32 %9296, 0
  %9300 = fsub fast float %526, %9299
  %9301 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  %9302 = fmul fast float %9300, %9301
  %9303 = call float @dx.op.unary.f32(i32 7, float %9302)  ; Saturate(value)
  %9304 = fsub fast float %9298, %9297
  %9305 = fmul fast float %9303, %9304
  %9306 = fadd fast float %9305, %9297
  %9307 = fmul fast float %9306, %9270
  %9308 = fmul fast float %9307, %3065
  %9309 = fmul fast float %9307, %3066
  %9310 = fadd fast float %9308, %9245
  %9311 = fadd fast float %9309, %9246
  %9312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %9313 = extractvalue %dx.types.CBufRet.f32 %9312, 0
  %9314 = extractvalue %dx.types.CBufRet.f32 %9312, 1
  %9315 = extractvalue %dx.types.CBufRet.f32 %9312, 2
  %9316 = extractvalue %dx.types.CBufRet.f32 %9312, 3
  %9317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %9318 = extractvalue %dx.types.CBufRet.f32 %9317, 0
  %9319 = extractvalue %dx.types.CBufRet.f32 %9317, 1
  %9320 = extractvalue %dx.types.CBufRet.f32 %9317, 2
  %9321 = extractvalue %dx.types.CBufRet.f32 %9317, 3
  %9322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %9323 = extractvalue %dx.types.CBufRet.f32 %9322, 0
  %9324 = extractvalue %dx.types.CBufRet.f32 %9322, 1
  %9325 = extractvalue %dx.types.CBufRet.f32 %9322, 2
  %9326 = extractvalue %dx.types.CBufRet.f32 %9322, 3
  %9327 = fmul fast float %9310, %9313
  %9328 = call float @dx.op.tertiary.f32(i32 46, float %9311, float %9314, float %9327)  ; FMad(a,b,c)
  %9329 = call float @dx.op.tertiary.f32(i32 46, float %9247, float %9315, float %9328)  ; FMad(a,b,c)
  %9330 = fadd fast float %9329, %9316
  %9331 = fmul fast float %9310, %9318
  %9332 = call float @dx.op.tertiary.f32(i32 46, float %9311, float %9319, float %9331)  ; FMad(a,b,c)
  %9333 = call float @dx.op.tertiary.f32(i32 46, float %9247, float %9320, float %9332)  ; FMad(a,b,c)
  %9334 = fadd fast float %9333, %9321
  %9335 = fmul fast float %9310, %9323
  %9336 = call float @dx.op.tertiary.f32(i32 46, float %9311, float %9324, float %9335)  ; FMad(a,b,c)
  %9337 = call float @dx.op.tertiary.f32(i32 46, float %9247, float %9325, float %9336)  ; FMad(a,b,c)
  %9338 = fadd fast float %9337, %9326
  %9339 = fdiv fast float %9330, %9338
  %9340 = fdiv fast float %9334, %9338
  %9341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %9342 = extractvalue %dx.types.CBufRet.f32 %9341, 0
  %9343 = extractvalue %dx.types.CBufRet.f32 %9341, 1
  %9344 = fmul fast float %9342, %9339
  %9345 = fmul fast float %9343, %9340
  %9346 = extractvalue %dx.types.CBufRet.f32 %9341, 2
  %9347 = extractvalue %dx.types.CBufRet.f32 %9341, 3
  %9348 = fadd fast float %9344, %9346
  %9349 = fadd fast float %9345, %9347
  %9350 = call float @dx.op.unary.f32(i32 7, float %9348)  ; Saturate(value)
  %9351 = call float @dx.op.unary.f32(i32 7, float %9349)  ; Saturate(value)
  %9352 = fsub fast float %9350, %9251
  %9353 = fsub fast float %9351, %9252
  %9354 = fmul fast float %9352, %9295
  %9355 = fmul fast float %9353, %9295
  %9356 = fadd fast float %9354, %9251
  %9357 = fadd fast float %9355, %9252
  %9358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %66, float %9356, float %9357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9359 = extractvalue %dx.types.ResRet.f32 %9358, 0
  %9360 = fcmp fast ogt float %9359, -1.000000e+00
  %9361 = select i1 %9360, float %9258, float 1.000000e+00
  %9362 = fadd fast float %9359, 1.000000e+00
  %9363 = fmul fast float %9361, %9362
  %9364 = call float @dx.op.unary.f32(i32 6, float %9363)  ; FAbs(value)
  %9365 = fcmp fast ugt float %9364, %9338
  br i1 %9365, label %9367, label %9366

; <label>:9366                                    ; preds = %9189
  br label %9367

; <label>:9367                                    ; preds = %9366, %9189
  %9368 = phi float [ %9251, %9366 ], [ %9356, %9189 ]
  %9369 = phi float [ %9252, %9366 ], [ %9357, %9189 ]
  %9370 = phi float [ %526, %9366 ], [ %9338, %9189 ]
  %9371 = phi float [ %9262, %9366 ], [ %9364, %9189 ]
  br i1 %105, label %9372, label %9882

; <label>:9372                                    ; preds = %9367
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 0
  %9375 = extractvalue %dx.types.CBufRet.f32 %9373, 1
  %9376 = extractvalue %dx.types.CBufRet.f32 %9373, 2
  %9377 = fcmp fast oge float %9375, %9370
  %9378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %9379 = extractvalue %dx.types.CBufRet.i32 %9378, 0
  %9380 = and i32 %9379, 65538
  %9381 = icmp eq i32 %9380, 65538
  %9382 = and i1 %9381, %9377
  br i1 %9382, label %9383, label %9464

; <label>:9383                                    ; preds = %9372
  %9384 = extractvalue %dx.types.CBufRet.f32 %9214, 0
  %9385 = extractvalue %dx.types.CBufRet.f32 %9214, 1
  %9386 = fmul fast float %9384, %9368
  %9387 = fmul fast float %9385, %9369
  %9388 = fmul fast float %9386, %9215
  %9389 = fmul fast float %9387, %9216
  %9390 = call float @dx.op.unary.f32(i32 7, float %9388)  ; Saturate(value)
  %9391 = call float @dx.op.unary.f32(i32 7, float %9389)  ; Saturate(value)
  %9392 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %65, float %9390, float %9391, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9393 = extractvalue %dx.types.ResRet.f32 %9392, 0
  %9394 = extractvalue %dx.types.ResRet.f32 %9392, 1
  %9395 = extractvalue %dx.types.ResRet.f32 %9392, 2
  %9396 = extractvalue %dx.types.ResRet.f32 %9392, 3
  %9397 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %65, float %9390, float %9391, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9398 = extractvalue %dx.types.ResRet.f32 %9397, 0
  %9399 = extractvalue %dx.types.ResRet.f32 %9397, 1
  %9400 = extractvalue %dx.types.ResRet.f32 %9397, 2
  %9401 = extractvalue %dx.types.ResRet.f32 %9397, 3
  %9402 = call float @dx.op.binary.f32(i32 35, float %9394, float %9395)  ; FMax(a,b)
  %9403 = call float @dx.op.binary.f32(i32 35, float %9393, float %9402)  ; FMax(a,b)
  %9404 = call float @dx.op.binary.f32(i32 35, float %9403, float %9396)  ; FMax(a,b)
  %9405 = call float @dx.op.binary.f32(i32 36, float %9399, float %9400)  ; FMin(a,b)
  %9406 = call float @dx.op.binary.f32(i32 36, float %9398, float %9405)  ; FMin(a,b)
  %9407 = call float @dx.op.binary.f32(i32 36, float %9406, float %9401)  ; FMin(a,b)
  %9408 = fmul fast float %9404, 2.550000e+02
  %9409 = fadd fast float %9408, 0x3F70101020000000
  %9410 = fptoui float %9409 to i32
  %9411 = fmul fast float %9407, 2.550000e+02
  %9412 = fadd fast float %9411, 0x3F70101020000000
  %9413 = fptoui float %9412 to i32
  %9414 = icmp ult i32 %9410, %9413
  br i1 %9414, label %9415, label %9464

; <label>:9415                                    ; preds = %9383
  %9416 = fadd fast float %9371, -4.000000e+00
  %9417 = call float @dx.op.binary.f32(i32 35, float %9416, float 0.000000e+00)  ; FMax(a,b)
  %9418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9419 = extractvalue %dx.types.CBufRet.f32 %9418, 0
  %9420 = fadd fast float %9419, %9417
  %9421 = extractvalue %dx.types.CBufRet.f32 %9418, 2
  %9422 = fmul fast float %9420, %9421
  %9423 = call float @dx.op.unary.f32(i32 23, float %9422)  ; Log(value)
  %9424 = extractvalue %dx.types.CBufRet.f32 %9418, 3
  %9425 = fmul fast float %9424, %9423
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 2
  %9428 = fmul fast float %9425, %9427
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = uitofp i32 %9410 to float
  %9431 = uitofp i32 %9413 to float
  %9432 = fadd fast float %9430, 5.000000e-01
  %9433 = fadd fast float %9431, 5.000000e-01
  %9434 = fmul fast float %9427, %9432
  %9435 = fmul fast float %9427, %9433
  %9436 = fadd fast float %9434, 0x3F0FFB4800000000
  %9437 = fadd fast float %9435, 0xBF0FFB4800000000
  %9438 = call float @dx.op.binary.f32(i32 35, float %9429, float %9436)  ; FMax(a,b)
  %9439 = call float @dx.op.binary.f32(i32 36, float %9438, float %9437)  ; FMin(a,b)
  %9440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9441 = extractvalue %dx.types.CBufRet.f32 %9440, 1
  %9442 = extractvalue %dx.types.CBufRet.f32 %9440, 2
  %9443 = extractvalue %dx.types.CBufRet.f32 %9440, 0
  %9444 = fmul fast float %9441, %9439
  %9445 = fadd fast float %9443, %9444
  %9446 = fadd fast float %9443, %9442
  %9447 = fsub fast float %9441, %9442
  %9448 = fadd fast float %9447, %9443
  %9449 = call float @dx.op.binary.f32(i32 35, float %9445, float %9446)  ; FMax(a,b)
  %9450 = call float @dx.op.binary.f32(i32 36, float %9449, float %9448)  ; FMin(a,b)
  %9451 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %63, float %9390, float %9391, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9452 = extractvalue %dx.types.ResRet.f32 %9451, 0
  %9453 = extractvalue %dx.types.ResRet.f32 %9451, 1
  %9454 = extractvalue %dx.types.ResRet.f32 %9451, 2
  %9455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %63, float %9390, float %9391, float %9450, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9456 = extractvalue %dx.types.ResRet.f32 %9455, 0
  %9457 = extractvalue %dx.types.ResRet.f32 %9455, 1
  %9458 = extractvalue %dx.types.ResRet.f32 %9455, 2
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 1
  %9461 = fmul fast float %9460, %9456
  %9462 = fmul fast float %9460, %9457
  %9463 = fmul fast float %9460, %9458
  br label %9464

; <label>:9464                                    ; preds = %9415, %9383, %9372
  %9465 = phi float [ 0.000000e+00, %9372 ], [ %9461, %9415 ], [ 0.000000e+00, %9383 ]
  %9466 = phi float [ 0.000000e+00, %9372 ], [ %9462, %9415 ], [ 0.000000e+00, %9383 ]
  %9467 = phi float [ 0.000000e+00, %9372 ], [ %9463, %9415 ], [ 0.000000e+00, %9383 ]
  %9468 = phi float [ 1.000000e+00, %9372 ], [ %9452, %9415 ], [ 1.000000e+00, %9383 ]
  %9469 = phi float [ 1.000000e+00, %9372 ], [ %9453, %9415 ], [ 1.000000e+00, %9383 ]
  %9470 = phi float [ 1.000000e+00, %9372 ], [ %9454, %9415 ], [ 1.000000e+00, %9383 ]
  %9471 = fcmp fast olt float %9213, 1.000000e+00
  %9472 = fcmp fast olt float %9374, %9371
  %9473 = or i1 %9471, %9472
  br i1 %9473, label %9474, label %9638

; <label>:9474                                    ; preds = %9464
  %9475 = lshr i32 %3259, 16
  %9476 = uitofp i32 %9475 to float
  %9477 = fmul fast float %9476, 0x3EF0001000000000
  %9478 = and i32 %3252, 65535
  %9479 = uitofp i32 %9478 to float
  %9480 = fmul fast float %9479, 0x3EF0001000000000
  %9481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %9482 = extractvalue %dx.types.CBufRet.f32 %9481, 3
  %9483 = fadd fast float %9482, 3.000000e+00
  %9484 = and i32 %2371, 16383
  %9485 = lshr i32 %2371, 16
  %9486 = and i32 %9485, 255
  %9487 = mul nuw nsw i32 %9484, 148
  %9488 = add nuw nsw i32 %9487, 60
  %9489 = add nuw nsw i32 %9487, 116
  %9490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.i32 %9490, 0
  %9492 = call i32 @dx.op.binary.i32(i32 40, i32 %9484, i32 %9491)  ; UMin(a,b)
  %9493 = mul i32 %9492, 36
  %9494 = add i32 %9493, 4
  %9495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %9496 = extractvalue %dx.types.CBufRet.f32 %9495, 0
  %9497 = fmul fast float %9480, %9496
  %9498 = fmul fast float %9477, %9496
  %9499 = extractvalue %dx.types.CBufRet.f32 %9495, 1
  %9500 = fadd fast float %9497, %9499
  %9501 = fadd fast float %9498, %9499
  %9502 = icmp eq i32 %9486, 0
  br i1 %9502, label %9563, label %9503

; <label>:9503                                    ; preds = %9474
  br label %9504

; <label>:9504                                    ; preds = %9504, %9503
  %9505 = phi float [ %9548, %9504 ], [ 0.000000e+00, %9503 ]
  %9506 = phi float [ %9558, %9504 ], [ 0.000000e+00, %9503 ]
  %9507 = phi float [ %9559, %9504 ], [ 0.000000e+00, %9503 ]
  %9508 = phi float [ %9560, %9504 ], [ 0.000000e+00, %9503 ]
  %9509 = phi float [ %9552, %9504 ], [ 0.000000e+00, %9503 ]
  %9510 = phi float [ %9553, %9504 ], [ 0.000000e+00, %9503 ]
  %9511 = phi float [ %9554, %9504 ], [ 0.000000e+00, %9503 ]
  %9512 = phi i32 [ %9517, %9504 ], [ %9486, %9503 ]
  %9513 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %9512)  ; FirstbitLo(value)
  %9514 = and i32 %9513, 31
  %9515 = shl i32 1, %9514
  %9516 = xor i32 %9515, -1
  %9517 = and i32 %9512, %9516
  %9518 = shl i32 %9513, 2
  %9519 = add i32 %9494, %9518
  %9520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %9519, i32 undef)  ; BufferLoad(srv,index,wot)
  %9521 = extractvalue %dx.types.ResRet.i32 %9520, 0
  %9522 = and i32 %9521, 32767
  %9523 = add i32 %9488, %9518
  %9524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %52, i32 %9523, i32 undef)  ; BufferLoad(srv,index,wot)
  %9525 = extractvalue %dx.types.ResRet.f32 %9524, 0
  %9526 = add i32 %9489, %9518
  %9527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %52, i32 %9526, i32 undef)  ; BufferLoad(srv,index,wot)
  %9528 = extractvalue %dx.types.ResRet.i32 %9527, 0
  %9529 = add i32 %9528, 0
  %9530 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %9529, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9530, %dx.types.Handle %63, float %9500, float %9501, float %9525, float undef, i32 0, i32 0, i32 undef, float %9483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9532 = extractvalue %dx.types.ResRet.f32 %9531, 0
  %9533 = mul nuw nsw i32 %9522, 928
  %9534 = add nuw nsw i32 %9533, 44
  %9535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %9534, i32 undef)  ; BufferLoad(srv,index,wot)
  %9536 = extractvalue %dx.types.ResRet.f32 %9535, 0
  %9537 = add nuw nsw i32 %9533, 48
  %9538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %9537, i32 undef)  ; BufferLoad(srv,index,wot)
  %9539 = extractvalue %dx.types.ResRet.f32 %9538, 0
  %9540 = extractvalue %dx.types.ResRet.f32 %9538, 1
  %9541 = extractvalue %dx.types.ResRet.f32 %9538, 2
  %9542 = add nuw nsw i32 %9533, 60
  %9543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %53, i32 %9542, i32 undef)  ; BufferLoad(srv,index,wot)
  %9544 = extractvalue %dx.types.ResRet.f32 %9543, 0
  %9545 = extractvalue %dx.types.ResRet.f32 %9543, 1
  %9546 = extractvalue %dx.types.ResRet.f32 %9543, 2
  %9547 = fmul fast float %9536, %9532
  %9548 = fadd fast float %9547, %9505
  %9549 = fmul fast float %9539, %9532
  %9550 = fmul fast float %9540, %9532
  %9551 = fmul fast float %9541, %9532
  %9552 = fadd fast float %9549, %9509
  %9553 = fadd fast float %9550, %9510
  %9554 = fadd fast float %9551, %9511
  %9555 = fmul fast float %9544, %9532
  %9556 = fmul fast float %9545, %9532
  %9557 = fmul fast float %9546, %9532
  %9558 = fadd fast float %9555, %9506
  %9559 = fadd fast float %9556, %9507
  %9560 = fadd fast float %9557, %9508
  %9561 = icmp eq i32 %9517, 0
  br i1 %9561, label %9562, label %9504

; <label>:9562                                    ; preds = %9504
  br label %9563

; <label>:9563                                    ; preds = %9562, %9474
  %9564 = phi float [ 0.000000e+00, %9474 ], [ %9548, %9562 ]
  %9565 = phi float [ 0.000000e+00, %9474 ], [ %9558, %9562 ]
  %9566 = phi float [ 0.000000e+00, %9474 ], [ %9559, %9562 ]
  %9567 = phi float [ 0.000000e+00, %9474 ], [ %9560, %9562 ]
  %9568 = phi float [ 0.000000e+00, %9474 ], [ %9552, %9562 ]
  %9569 = phi float [ 0.000000e+00, %9474 ], [ %9553, %9562 ]
  %9570 = phi float [ 0.000000e+00, %9474 ], [ %9554, %9562 ]
  %9571 = fmul fast float %9568, 0x3F847AE140000000
  %9572 = fmul fast float %9569, 0x3F847AE140000000
  %9573 = fmul fast float %9570, 0x3F847AE140000000
  %9574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %9575 = extractvalue %dx.types.CBufRet.f32 %9574, 0
  %9576 = extractvalue %dx.types.CBufRet.f32 %9574, 1
  %9577 = extractvalue %dx.types.CBufRet.f32 %9574, 2
  %9578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %9579 = extractvalue %dx.types.CBufRet.f32 %9578, 0
  %9580 = extractvalue %dx.types.CBufRet.f32 %9578, 1
  %9581 = call float @dx.op.dot3.f32(i32 55, float %9575, float %9576, float %9577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9582 = select i1 %3298, float %9579, float %9575
  %9583 = select i1 %3298, float %9581, float %9576
  %9584 = select i1 %3298, float %9580, float %9577
  %9585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %9586 = extractvalue %dx.types.CBufRet.f32 %9585, 0
  %9587 = extractvalue %dx.types.CBufRet.f32 %9585, 1
  %9588 = extractvalue %dx.types.CBufRet.f32 %9585, 2
  %9589 = fadd fast float %9568, %9565
  %9590 = fmul fast float %9589, 0x3F847AE140000000
  %9591 = fadd fast float %9569, %9566
  %9592 = fmul fast float %9591, 0x3F847AE140000000
  %9593 = fadd fast float %9570, %9567
  %9594 = fmul fast float %9593, 0x3F847AE140000000
  %9595 = call float @dx.op.dot3.f32(i32 55, float %9586, float %9587, float %9588, float %3093, float %3094, float %3095)  ; Dot3(ax,ay,az,bx,by,bz)
  %9596 = fcmp fast ogt float %9564, 0.000000e+00
  %9597 = select i1 %9596, float 1.000000e+00, float -1.000000e+00
  %9598 = fmul fast float %9597, 5.000000e-01
  %9599 = fmul fast float %9598, %9595
  %9600 = fmul fast float %9597, %9564
  %9601 = fadd fast float %9599, 4.921875e-01
  %9602 = fadd fast float %9600, -3.125000e-02
  %9603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %65, float %9601, float 0x3FB25F3060000000, float %9602, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9604 = extractvalue %dx.types.ResRet.f32 %9603, 0
  %9605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %9606 = extractvalue %dx.types.CBufRet.f32 %9605, 0
  %9607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %9608 = extractvalue %dx.types.CBufRet.f32 %9607, 0
  %9609 = fmul fast float %9608, %9606
  %9610 = extractvalue %dx.types.CBufRet.f32 %9607, 1
  %9611 = fadd fast float %9609, %9610
  %9612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %9613 = extractvalue %dx.types.CBufRet.f32 %9612, 0
  %9614 = fmul fast float %9613, %8127
  %9615 = extractvalue %dx.types.CBufRet.f32 %9612, 1
  %9616 = fadd fast float %9614, %9615
  %9617 = call float @dx.op.unary.f32(i32 7, float %9616)  ; Saturate(value)
  %9618 = extractvalue %dx.types.CBufRet.f32 %9605, 3
  %9619 = extractvalue %dx.types.CBufRet.f32 %9607, 2
  %9620 = fmul fast float %9619, %9618
  %9621 = extractvalue %dx.types.CBufRet.f32 %9607, 3
  %9622 = fadd fast float %9620, %9621
  %9623 = fmul fast float %9604, 0x400921FB60000000
  %9624 = fmul fast float %9623, %9611
  %9625 = fmul fast float %9624, %9617
  %9626 = fmul fast float %9582, %9571
  %9627 = fmul fast float %9626, %9625
  %9628 = fmul fast float %9583, %9572
  %9629 = fmul fast float %9628, %9625
  %9630 = fmul fast float %9584, %9573
  %9631 = fmul fast float %9630, %9625
  %9632 = fmul fast float %9571, %4365
  %9633 = fmul fast float %9632, %9622
  %9634 = fmul fast float %9572, %4366
  %9635 = fmul fast float %9634, %9622
  %9636 = fmul fast float %9573, %4367
  %9637 = fmul fast float %9636, %9622
  br label %9638

; <label>:9638                                    ; preds = %9563, %9464
  %9639 = phi float [ %9590, %9563 ], [ 0.000000e+00, %9464 ]
  %9640 = phi float [ %9592, %9563 ], [ 0.000000e+00, %9464 ]
  %9641 = phi float [ %9594, %9563 ], [ 0.000000e+00, %9464 ]
  %9642 = phi float [ %9627, %9563 ], [ 0.000000e+00, %9464 ]
  %9643 = phi float [ %9629, %9563 ], [ 0.000000e+00, %9464 ]
  %9644 = phi float [ %9631, %9563 ], [ 0.000000e+00, %9464 ]
  %9645 = phi float [ %9633, %9563 ], [ 0.000000e+00, %9464 ]
  %9646 = phi float [ %9635, %9563 ], [ 0.000000e+00, %9464 ]
  %9647 = phi float [ %9637, %9563 ], [ 0.000000e+00, %9464 ]
  %9648 = call float @dx.op.binary.f32(i32 35, float %9639, float 0x3F10000000000000)  ; FMax(a,b)
  %9649 = call float @dx.op.binary.f32(i32 35, float %9640, float 0x3F10000000000000)  ; FMax(a,b)
  %9650 = call float @dx.op.binary.f32(i32 35, float %9641, float 0x3F10000000000000)  ; FMax(a,b)
  %9651 = fdiv fast float 1.000000e+00, %9648
  %9652 = fdiv fast float 1.000000e+00, %9649
  %9653 = fdiv fast float 1.000000e+00, %9650
  %9654 = fmul fast float %9639, 0xBFF7154760000000
  %9655 = fmul fast float %9640, 0xBFF7154760000000
  %9656 = fmul fast float %9641, 0xBFF7154760000000
  %9657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %9658 = extractvalue %dx.types.CBufRet.f32 %9657, 3
  %9659 = call float @dx.op.dot3.f32(i32 55, float %9651, float %9652, float %9653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9660 = fmul fast float %9658, %9659
  %9661 = call float @dx.op.binary.f32(i32 35, float %9375, float %9370)  ; FMax(a,b)
  %9662 = fsub fast float %9371, %9661
  %9663 = call float @dx.op.binary.f32(i32 35, float %9662, float 0.000000e+00)  ; FMax(a,b)
  %9664 = fsub fast float %9371, %9370
  %9665 = call float @dx.op.binary.f32(i32 35, float %9664, float 0.000000e+00)  ; FMax(a,b)
  %9666 = call float @dx.op.binary.f32(i32 36, float %9665, float %9660)  ; FMin(a,b)
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 0
  %9669 = fmul fast float %9668, %9666
  %9670 = fmul fast float %9669, %9654
  %9671 = fmul fast float %9669, %9655
  %9672 = fmul fast float %9669, %9656
  %9673 = call float @dx.op.unary.f32(i32 21, float %9670)  ; Exp(value)
  %9674 = call float @dx.op.unary.f32(i32 21, float %9671)  ; Exp(value)
  %9675 = call float @dx.op.unary.f32(i32 21, float %9672)  ; Exp(value)
  %9676 = fmul fast float %9673, %9642
  %9677 = fmul fast float %9674, %9643
  %9678 = fmul fast float %9675, %9644
  %9679 = extractvalue %dx.types.CBufRet.f32 %9667, 1
  %9680 = fmul fast float %9679, %9666
  %9681 = fmul fast float %9680, %9654
  %9682 = fmul fast float %9680, %9655
  %9683 = fmul fast float %9680, %9656
  %9684 = call float @dx.op.unary.f32(i32 21, float %9681)  ; Exp(value)
  %9685 = call float @dx.op.unary.f32(i32 21, float %9682)  ; Exp(value)
  %9686 = call float @dx.op.unary.f32(i32 21, float %9683)  ; Exp(value)
  %9687 = fmul fast float %9684, %9645
  %9688 = fmul fast float %9685, %9646
  %9689 = fmul fast float %9686, %9647
  %9690 = fadd fast float %9687, %9676
  %9691 = fadd fast float %9688, %9677
  %9692 = fadd fast float %9689, %9678
  %9693 = fmul fast float %9663, %9654
  %9694 = fmul fast float %9663, %9655
  %9695 = fmul fast float %9663, %9656
  %9696 = call float @dx.op.unary.f32(i32 21, float %9693)  ; Exp(value)
  %9697 = call float @dx.op.unary.f32(i32 21, float %9694)  ; Exp(value)
  %9698 = call float @dx.op.unary.f32(i32 21, float %9695)  ; Exp(value)
  %9699 = call float @dx.op.unary.f32(i32 7, float %9696)  ; Saturate(value)
  %9700 = call float @dx.op.unary.f32(i32 7, float %9697)  ; Saturate(value)
  %9701 = call float @dx.op.unary.f32(i32 7, float %9698)  ; Saturate(value)
  %9702 = fmul fast float %9699, %9690
  %9703 = fmul fast float %9700, %9691
  %9704 = fmul fast float %9701, %9692
  %9705 = fsub fast float %9690, %9702
  %9706 = fsub fast float %9691, %9703
  %9707 = fsub fast float %9692, %9704
  %9708 = fmul fast float %9651, %9468
  %9709 = fmul fast float %9708, %9705
  %9710 = fmul fast float %9652, %9469
  %9711 = fmul fast float %9710, %9706
  %9712 = fmul fast float %9653, %9470
  %9713 = fmul fast float %9712, %9707
  %9714 = fadd fast float %9709, %9465
  %9715 = fadd fast float %9711, %9466
  %9716 = fadd fast float %9713, %9467
  %9717 = fmul fast float %9699, %9468
  %9718 = fmul fast float %9700, %9469
  %9719 = fmul fast float %9701, %9470
  %9720 = fmul fast float %9665, %9654
  %9721 = fmul fast float %9665, %9655
  %9722 = fmul fast float %9665, %9656
  %9723 = call float @dx.op.unary.f32(i32 21, float %9720)  ; Exp(value)
  %9724 = call float @dx.op.unary.f32(i32 21, float %9721)  ; Exp(value)
  %9725 = call float @dx.op.unary.f32(i32 21, float %9722)  ; Exp(value)
  %9726 = call float @dx.op.unary.f32(i32 7, float %9723)  ; Saturate(value)
  %9727 = call float @dx.op.unary.f32(i32 7, float %9724)  ; Saturate(value)
  %9728 = call float @dx.op.unary.f32(i32 7, float %9725)  ; Saturate(value)
  %9729 = fmul fast float %9726, %9690
  %9730 = fmul fast float %9727, %9691
  %9731 = fmul fast float %9728, %9692
  %9732 = fsub fast float %9690, %9729
  %9733 = fsub fast float %9691, %9730
  %9734 = fsub fast float %9692, %9731
  %9735 = fmul fast float %9732, %9651
  %9736 = fmul fast float %9733, %9652
  %9737 = fmul fast float %9734, %9653
  %9738 = fsub fast float %9370, %9374
  %9739 = fmul fast float %9376, %9738
  %9740 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9741 = fmul fast float %9740, %9740
  %9742 = fmul fast float %9740, 2.000000e+00
  %9743 = fsub fast float 3.000000e+00, %9742
  %9744 = fmul fast float %9741, %9743
  %9745 = fsub fast float %9735, %9714
  %9746 = fsub fast float %9736, %9715
  %9747 = fsub fast float %9737, %9716
  %9748 = fmul fast float %9744, %9745
  %9749 = fmul fast float %9744, %9746
  %9750 = fmul fast float %9744, %9747
  %9751 = fadd fast float %9748, %9714
  %9752 = fadd fast float %9749, %9715
  %9753 = fadd fast float %9750, %9716
  %9754 = fsub fast float %9726, %9717
  %9755 = fsub fast float %9727, %9718
  %9756 = fsub fast float %9728, %9719
  %9757 = fmul fast float %9744, %9754
  %9758 = fmul fast float %9744, %9755
  %9759 = fmul fast float %9744, %9756
  %9760 = fadd fast float %9757, %9717
  %9761 = fadd fast float %9758, %9718
  %9762 = fadd fast float %9759, %9719
  br i1 %9471, label %9763, label %9831

; <label>:9763                                    ; preds = %9638
  %9764 = extractvalue %dx.types.CBufRet.f32 %9667, 3
  %9765 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %9764)  ; Dot3(ax,ay,az,bx,by,bz)
  %9766 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3145, float %3146, float %3147)  ; Dot3(ax,ay,az,bx,by,bz)
  %9767 = fdiv fast float 1.000000e+00, %9766
  %9768 = fmul fast float %9767, %9765
  %9769 = fcmp ogt float %3095, -0.000000e+00
  %9770 = select i1 %9769, float %9764, float %9768
  %9771 = call float @dx.op.binary.f32(i32 36, float %9770, float %9660)  ; FMin(a,b)
  %9772 = fmul fast float %9668, %9771
  %9773 = fmul fast float %9772, %9654
  %9774 = fmul fast float %9772, %9655
  %9775 = fmul fast float %9772, %9656
  %9776 = call float @dx.op.unary.f32(i32 21, float %9773)  ; Exp(value)
  %9777 = call float @dx.op.unary.f32(i32 21, float %9774)  ; Exp(value)
  %9778 = call float @dx.op.unary.f32(i32 21, float %9775)  ; Exp(value)
  %9779 = fmul fast float %9776, %9642
  %9780 = fmul fast float %9777, %9643
  %9781 = fmul fast float %9778, %9644
  %9782 = fmul fast float %9679, %9771
  %9783 = fmul fast float %9782, %9654
  %9784 = fmul fast float %9782, %9655
  %9785 = fmul fast float %9782, %9656
  %9786 = call float @dx.op.unary.f32(i32 21, float %9783)  ; Exp(value)
  %9787 = call float @dx.op.unary.f32(i32 21, float %9784)  ; Exp(value)
  %9788 = call float @dx.op.unary.f32(i32 21, float %9785)  ; Exp(value)
  %9789 = fmul fast float %9786, %9645
  %9790 = fmul fast float %9787, %9646
  %9791 = fmul fast float %9788, %9647
  %9792 = fadd fast float %9789, %9779
  %9793 = fadd fast float %9790, %9780
  %9794 = fadd fast float %9791, %9781
  %9795 = fmul fast float %9770, %9654
  %9796 = fmul fast float %9770, %9655
  %9797 = fmul fast float %9770, %9656
  %9798 = call float @dx.op.unary.f32(i32 21, float %9795)  ; Exp(value)
  %9799 = call float @dx.op.unary.f32(i32 21, float %9796)  ; Exp(value)
  %9800 = call float @dx.op.unary.f32(i32 21, float %9797)  ; Exp(value)
  %9801 = call float @dx.op.unary.f32(i32 7, float %9798)  ; Saturate(value)
  %9802 = call float @dx.op.unary.f32(i32 7, float %9799)  ; Saturate(value)
  %9803 = call float @dx.op.unary.f32(i32 7, float %9800)  ; Saturate(value)
  %9804 = fmul fast float %9801, %9792
  %9805 = fmul fast float %9802, %9793
  %9806 = fmul fast float %9803, %9794
  %9807 = fsub fast float %9792, %9804
  %9808 = fsub fast float %9793, %9805
  %9809 = fsub fast float %9794, %9806
  %9810 = fmul fast float %9807, %9651
  %9811 = fmul fast float %9808, %9652
  %9812 = fmul fast float %9809, %9653
  %9813 = fsub fast float %9751, %9810
  %9814 = fsub fast float %9752, %9811
  %9815 = fsub fast float %9753, %9812
  %9816 = fmul fast float %9813, %9213
  %9817 = fmul fast float %9814, %9213
  %9818 = fmul fast float %9815, %9213
  %9819 = fadd fast float %9816, %9810
  %9820 = fadd fast float %9817, %9811
  %9821 = fadd fast float %9818, %9812
  %9822 = fsub fast float %9760, %9801
  %9823 = fsub fast float %9761, %9802
  %9824 = fsub fast float %9762, %9803
  %9825 = fmul fast float %9822, %9213
  %9826 = fmul fast float %9823, %9213
  %9827 = fmul fast float %9824, %9213
  %9828 = fadd fast float %9825, %9801
  %9829 = fadd fast float %9826, %9802
  %9830 = fadd fast float %9827, %9803
  br label %9831

; <label>:9831                                    ; preds = %9763, %9638
  %9832 = phi float [ %9819, %9763 ], [ %9751, %9638 ]
  %9833 = phi float [ %9820, %9763 ], [ %9752, %9638 ]
  %9834 = phi float [ %9821, %9763 ], [ %9753, %9638 ]
  %9835 = phi float [ %9828, %9763 ], [ %9760, %9638 ]
  %9836 = phi float [ %9829, %9763 ], [ %9761, %9638 ]
  %9837 = phi float [ %9830, %9763 ], [ %9762, %9638 ]
  %9838 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9839 = extractvalue %dx.types.CBufRet.i32 %9838, 3
  %9840 = and i32 %9839, 3
  %9841 = icmp ne i32 %9840, 0
  %9842 = and i32 %9839, 4
  %9843 = icmp ne i32 %9842, 0
  %9844 = and i1 %9841, %9843
  br i1 %9844, label %9845, label %9852

; <label>:9845                                    ; preds = %9831
  %9846 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %61, %dx.types.Handle %65, float %9368, float %9369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9847 = extractvalue %dx.types.ResRet.f32 %9846, 0
  %9848 = fsub fast float 1.000000e+00, %9847
  %9849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %9850 = extractvalue %dx.types.CBufRet.f32 %9849, 0
  %9851 = fcmp fast olt float %9848, %9850
  br label %9855

; <label>:9852                                    ; preds = %9831
  %9853 = icmp eq i32 %9842, 0
  %9854 = and i1 %9841, %9853
  br label %9855

; <label>:9855                                    ; preds = %9852, %9845
  %9856 = phi i1 [ %9851, %9845 ], [ %9854, %9852 ]
  %9857 = xor i1 %3298, %9856
  %9858 = select i1 %9857, float 0.000000e+00, float %9213
  %9859 = fcmp fast ogt float %9858, 0.000000e+00
  %9860 = select i1 %9859, float %9368, float 0.000000e+00
  %9861 = select i1 %9859, float %9369, float 0.000000e+00
  %9862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %65, float %9860, float %9861, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9863 = extractvalue %dx.types.ResRet.f32 %9862, 0
  %9864 = extractvalue %dx.types.ResRet.f32 %9862, 1
  %9865 = extractvalue %dx.types.ResRet.f32 %9862, 2
  %9866 = fmul fast float %9864, %9858
  %9867 = fmul fast float %9865, %9858
  %9868 = select i1 %3298, float 0.000000e+00, float %9866
  %9869 = select i1 %3298, float 0.000000e+00, float %9867
  %9870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9871 = extractvalue %dx.types.CBufRet.f32 %9870, 1
  %9872 = fmul fast float %9858, %9835
  %9873 = fmul fast float %9872, %9863
  %9874 = fmul fast float %9873, %9871
  %9875 = fmul fast float %9871, %9836
  %9876 = fmul fast float %9875, %9868
  %9877 = fmul fast float %9871, %9837
  %9878 = fmul fast float %9877, %9869
  %9879 = fadd fast float %9874, %9832
  %9880 = fadd fast float %9876, %9833
  %9881 = fadd fast float %9878, %9834
  br label %9921

; <label>:9882                                    ; preds = %9367
  %9883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9884 = extractvalue %dx.types.CBufRet.i32 %9883, 3
  %9885 = and i32 %9884, 3
  %9886 = icmp ne i32 %9885, 0
  %9887 = and i32 %9884, 4
  %9888 = icmp ne i32 %9887, 0
  %9889 = and i1 %9886, %9888
  br i1 %9889, label %9890, label %9897

; <label>:9890                                    ; preds = %9882
  %9891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %61, %dx.types.Handle %65, float %9368, float %9369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9892 = extractvalue %dx.types.ResRet.f32 %9891, 0
  %9893 = fsub fast float 1.000000e+00, %9892
  %9894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %9895 = extractvalue %dx.types.CBufRet.f32 %9894, 0
  %9896 = fcmp fast olt float %9893, %9895
  br label %9900

; <label>:9897                                    ; preds = %9882
  %9898 = icmp eq i32 %9887, 0
  %9899 = and i1 %9886, %9898
  br label %9900

; <label>:9900                                    ; preds = %9897, %9890
  %9901 = phi i1 [ %9896, %9890 ], [ %9899, %9897 ]
  %9902 = xor i1 %3298, %9901
  %9903 = select i1 %9902, float 0.000000e+00, float %9213
  %9904 = fcmp fast ogt float %9903, 0.000000e+00
  %9905 = select i1 %9904, float %9368, float 0.000000e+00
  %9906 = select i1 %9904, float %9369, float 0.000000e+00
  %9907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %36, %dx.types.Handle %65, float %9905, float %9906, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9908 = extractvalue %dx.types.ResRet.f32 %9907, 0
  %9909 = extractvalue %dx.types.ResRet.f32 %9907, 1
  %9910 = extractvalue %dx.types.ResRet.f32 %9907, 2
  %9911 = fmul fast float %9908, %9903
  %9912 = fmul fast float %9909, %9903
  %9913 = fmul fast float %9910, %9903
  %9914 = select i1 %3298, float 0.000000e+00, float %9912
  %9915 = select i1 %3298, float 0.000000e+00, float %9913
  %9916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9917 = extractvalue %dx.types.CBufRet.f32 %9916, 1
  %9918 = fmul fast float %9911, %9917
  %9919 = fmul fast float %9914, %9917
  %9920 = fmul fast float %9915, %9917
  br label %9921

; <label>:9921                                    ; preds = %9900, %9855
  %9922 = phi float [ %9918, %9900 ], [ %9879, %9855 ]
  %9923 = phi float [ %9919, %9900 ], [ %9880, %9855 ]
  %9924 = phi float [ %9920, %9900 ], [ %9881, %9855 ]
  %9925 = fmul fast float %9922, %4427
  %9926 = fmul fast float %9923, %4427
  %9927 = fmul fast float %9924, %4427
  %9928 = select i1 %105, float %9282, float 1.000000e+00
  %9929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9930 = extractvalue %dx.types.CBufRet.f32 %9929, 0
  %9931 = bitcast float %9930 to i32
  %9932 = and i32 %9931, 255
  %9933 = uitofp i32 %9932 to float
  %9934 = fptoui float %9933 to i32
  %9935 = icmp eq i32 %9934, 13
  br i1 %9935, label %9936, label %9956

; <label>:9936                                    ; preds = %9921
  %9937 = fadd fast float %2553, 2.000000e+00
  %9938 = fadd fast float %2555, 1.000000e+00
  %9939 = fsub fast float 1.000000e+00, %2556
  %9940 = fmul fast float %9937, 5.000000e-01
  %9941 = fmul fast float %9938, 5.000000e-01
  %9942 = fmul fast float %9939, 5.000000e-01
  %9943 = call float @dx.op.unary.f32(i32 7, float %9940)  ; Saturate(value)
  %9944 = call float @dx.op.unary.f32(i32 7, float %9941)  ; Saturate(value)
  %9945 = call float @dx.op.unary.f32(i32 7, float %9942)  ; Saturate(value)
  %9946 = fmul fast float %9943, 1.023000e+03
  %9947 = fmul fast float %9944, 1.023000e+03
  %9948 = fmul fast float %9945, 1.023000e+03
  %9949 = fptoui float %9946 to i32
  %9950 = fptoui float %9947 to i32
  %9951 = fptoui float %9948 to i32
  %9952 = shl i32 %9950, 10
  %9953 = or i32 %9952, %9949
  %9954 = shl i32 %9951, 20
  %9955 = or i32 %9953, %9954
  br label %9956

; <label>:9956                                    ; preds = %9936, %9921
  %9957 = phi i32 [ %9955, %9936 ], [ %9192, %9921 ]
  %9958 = icmp eq i32 %9934, 14
  br i1 %9958, label %9959, label %9979

; <label>:9959                                    ; preds = %9956
  %9960 = fadd fast float %2550, 1.000000e+00
  %9961 = fadd fast float %2560, 1.000000e+00
  %9962 = fsub fast float 1.000000e+00, %531
  %9963 = fmul fast float %9960, 5.000000e-01
  %9964 = fmul fast float %9961, 5.000000e-01
  %9965 = fmul fast float %9962, 5.000000e-01
  %9966 = call float @dx.op.unary.f32(i32 7, float %9963)  ; Saturate(value)
  %9967 = call float @dx.op.unary.f32(i32 7, float %9964)  ; Saturate(value)
  %9968 = call float @dx.op.unary.f32(i32 7, float %9965)  ; Saturate(value)
  %9969 = fmul fast float %9966, 1.023000e+03
  %9970 = fmul fast float %9967, 1.023000e+03
  %9971 = fmul fast float %9968, 1.023000e+03
  %9972 = fptoui float %9969 to i32
  %9973 = fptoui float %9970 to i32
  %9974 = fptoui float %9971 to i32
  %9975 = shl i32 %9973, 10
  %9976 = or i32 %9975, %9972
  %9977 = shl i32 %9974, 20
  %9978 = or i32 %9976, %9977
  br label %9979

; <label>:9979                                    ; preds = %9959, %9956
  %9980 = phi i32 [ %9978, %9959 ], [ %9957, %9956 ]
  %9981 = icmp eq i32 %9934, 15
  br i1 %9981, label %9982, label %10002

; <label>:9982                                    ; preds = %9979
  %9983 = fadd fast float %529, 1.000000e+00
  %9984 = fadd fast float %531, 1.000000e+00
  %9985 = fadd fast float %533, 1.000000e+00
  %9986 = fmul fast float %9983, 5.000000e-01
  %9987 = fmul fast float %9984, 5.000000e-01
  %9988 = fmul fast float %9985, 5.000000e-01
  %9989 = call float @dx.op.unary.f32(i32 7, float %9986)  ; Saturate(value)
  %9990 = call float @dx.op.unary.f32(i32 7, float %9987)  ; Saturate(value)
  %9991 = call float @dx.op.unary.f32(i32 7, float %9988)  ; Saturate(value)
  %9992 = fmul fast float %9989, 1.023000e+03
  %9993 = fmul fast float %9990, 1.023000e+03
  %9994 = fmul fast float %9991, 1.023000e+03
  %9995 = fptoui float %9992 to i32
  %9996 = fptoui float %9993 to i32
  %9997 = fptoui float %9994 to i32
  %9998 = shl i32 %9996, 10
  %9999 = or i32 %9998, %9995
  %10000 = shl i32 %9997, 20
  %10001 = or i32 %9999, %10000
  br label %10002

; <label>:10002                                   ; preds = %9982, %9979
  %10003 = phi i32 [ %10001, %9982 ], [ %9980, %9979 ]
  %10004 = fsub fast float 1.000000e+00, %3149
  %10005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10006 = extractvalue %dx.types.CBufRet.f32 %10005, 0
  %10007 = fmul fast float %10006, %10004
  %10008 = fmul fast float %3067, 2.000000e+00
  %10009 = fmul fast float %10008, %3104
  %10010 = fsub fast float %3095, %10009
  %10011 = call float @dx.op.unary.f32(i32 7, float %10010)  ; Saturate(value)
  %10012 = fsub fast float 1.000000e+00, %10011
  %10013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %10014 = extractvalue %dx.types.CBufRet.f32 %10013, 3
  %10015 = fmul fast float %10014, %10012
  %10016 = fsub fast float 1.000000e+00, %3272
  %10017 = call float @dx.op.unary.f32(i32 7, float %10016)  ; Saturate(value)
  %10018 = fadd fast float %9210, %3274
  %10019 = fmul fast float %10018, %3272
  %10020 = fmul fast float %10015, %10017
  %10021 = icmp eq i32 %9934, 39
  %10022 = icmp eq i32 %9934, 40
  %10023 = select i1 %10022, float %3272, float 0.000000e+00
  %10024 = select i1 %10021, float %10018, float %10023
  %10025 = fmul fast float %9208, %3077
  %10026 = fmul fast float %9209, %3078
  %10027 = fmul fast float %9210, %3079
  %10028 = fadd fast float %10025, %9205
  %10029 = fadd fast float %10028, %9925
  %10030 = fadd fast float %10026, %9206
  %10031 = fadd fast float %10030, %9926
  %10032 = fadd fast float %10027, %9207
  %10033 = fadd fast float %10032, %9927
  br i1 %105, label %10034, label %10836

; <label>:10034                                   ; preds = %10002
  %10035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %10036 = extractvalue %dx.types.CBufRet.f32 %10035, 0
  %10037 = extractvalue %dx.types.CBufRet.f32 %10035, 1
  %10038 = extractvalue %dx.types.CBufRet.f32 %10035, 2
  %10039 = extractvalue %dx.types.CBufRet.f32 %10035, 3
  %10040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %10041 = extractvalue %dx.types.CBufRet.f32 %10040, 0
  %10042 = extractvalue %dx.types.CBufRet.f32 %10040, 1
  %10043 = extractvalue %dx.types.CBufRet.f32 %10040, 2
  %10044 = extractvalue %dx.types.CBufRet.f32 %10040, 3
  %10045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %10046 = extractvalue %dx.types.CBufRet.f32 %10045, 0
  %10047 = extractvalue %dx.types.CBufRet.f32 %10045, 1
  %10048 = extractvalue %dx.types.CBufRet.f32 %10045, 2
  %10049 = extractvalue %dx.types.CBufRet.f32 %10045, 3
  %10050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %10051 = extractvalue %dx.types.CBufRet.f32 %10050, 0
  %10052 = extractvalue %dx.types.CBufRet.f32 %10050, 1
  %10053 = extractvalue %dx.types.CBufRet.f32 %10050, 2
  %10054 = extractvalue %dx.types.CBufRet.f32 %10050, 3
  %10055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %10056 = extractvalue %dx.types.CBufRet.f32 %10055, 3
  %10057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %10058 = extractvalue %dx.types.CBufRet.f32 %10057, 3
  %10059 = extractvalue %dx.types.CBufRet.f32 %10057, 0
  %10060 = extractvalue %dx.types.CBufRet.f32 %10057, 1
  %10061 = extractvalue %dx.types.CBufRet.f32 %10057, 2
  %10062 = fcmp fast olt float %10061, -5.000000e-01
  %10063 = fmul fast float %3092, %3091
  %10064 = fadd fast float %10063, %10039
  %10065 = call float @dx.op.dot3.f32(i32 55, float %3093, float %3094, float %3095, float %10036, float %10037, float %10038)  ; Dot3(ax,ay,az,bx,by,bz)
  %10066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %10067 = extractvalue %dx.types.CBufRet.i32 %10066, 1
  %10068 = and i32 %10067, 1
  %10069 = icmp ne i32 %10068, 0
  %10070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %10071 = extractvalue %dx.types.CBufRet.f32 %10070, 2
  %10072 = fcmp fast ogt float %10071, 0.000000e+00
  %10073 = and i1 %10069, %10072
  br i1 %10073, label %10074, label %10480, !dx.controlflow.hints !168

; <label>:10074                                   ; preds = %10034
  %10075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %10076 = extractvalue %dx.types.CBufRet.f32 %10075, 3
  %10077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %10078 = extractvalue %dx.types.CBufRet.f32 %10077, 2
  %10079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10080 = extractvalue %dx.types.CBufRet.f32 %10079, 2
  %10081 = fsub fast float %10078, %10080
  %10082 = and i32 %10067, 2
  %10083 = extractvalue %dx.types.CBufRet.i32 %10066, 0
  %10084 = call i32 @dx.op.binary.i32(i32 40, i32 %10083, i32 3)  ; UMin(a,b)
  %10085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %10086 = extractvalue %dx.types.CBufRet.f32 %10085, 0
  %10087 = extractvalue %dx.types.CBufRet.f32 %10085, 1
  %10088 = extractvalue %dx.types.CBufRet.f32 %10079, 0
  %10089 = extractvalue %dx.types.CBufRet.f32 %10079, 1
  %10090 = fsub fast float %10086, %10088
  %10091 = fsub fast float %10087, %10089
  %10092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %10093 = extractvalue %dx.types.CBufRet.f32 %10092, 0
  %10094 = fcmp fast ogt float %10093, 0.000000e+00
  %10095 = fsub fast float -0.000000e+00, %10090
  %10096 = fsub fast float -0.000000e+00, %10091
  %10097 = call float @dx.op.dot2.f32(i32 54, float %3093, float %3094, float %3093, float %3094)  ; Dot2(ax,ay,bx,by)
  %10098 = call float @dx.op.dot2.f32(i32 54, float %3093, float %3094, float %10095, float %10096)  ; Dot2(ax,ay,bx,by)
  %10099 = fmul fast float %10098, 2.000000e+00
  %10100 = call float @dx.op.dot2.f32(i32 54, float %10095, float %10096, float %10095, float %10096)  ; Dot2(ax,ay,bx,by)
  %10101 = fmul fast float %10093, %10093
  %10102 = fsub fast float %10100, %10101
  %10103 = fmul fast float %10099, %10099
  %10104 = fmul fast float %10097, 4.000000e+00
  %10105 = fmul fast float %10104, %10102
  %10106 = fsub fast float %10103, %10105
  %10107 = fcmp fast ogt float %10106, 0.000000e+00
  br i1 %10107, label %10108, label %10123

; <label>:10108                                   ; preds = %10074
  %10109 = fcmp fast ogt float %10099, 0.000000e+00
  %10110 = call float @dx.op.unary.f32(i32 24, float %10106)  ; Sqrt(value)
  %10111 = fsub fast float -0.000000e+00, %10110
  %10112 = select i1 %10109, float %10110, float %10111
  %10113 = fadd fast float %10112, %10099
  %10114 = fmul float %10113, -5.000000e-01
  %10115 = fdiv fast float %10114, %10097
  %10116 = call float @dx.op.binary.f32(i32 35, float %10115, float 0.000000e+00)  ; FMax(a,b)
  %10117 = call float @dx.op.binary.f32(i32 36, float %10063, float %10116)  ; FMin(a,b)
  %10118 = fdiv fast float %10102, %10114
  %10119 = call float @dx.op.binary.f32(i32 35, float %10118, float 0.000000e+00)  ; FMax(a,b)
  %10120 = call float @dx.op.binary.f32(i32 36, float %10063, float %10119)  ; FMin(a,b)
  %10121 = call float @dx.op.binary.f32(i32 36, float %10117, float %10120)  ; FMin(a,b)
  %10122 = call float @dx.op.binary.f32(i32 35, float %10117, float %10120)  ; FMax(a,b)
  br label %10123

; <label>:10123                                   ; preds = %10108, %10074
  %10124 = phi float [ %10122, %10108 ], [ -1.000000e+00, %10074 ]
  %10125 = phi float [ %10121, %10108 ], [ -1.000000e+00, %10074 ]
  %10126 = phi i1 [ true, %10108 ], [ false, %10074 ]
  %10127 = and i1 %10094, %10126
  br i1 %10127, label %10128, label %10130

; <label>:10128                                   ; preds = %10123
  %10129 = fcmp fast oeq float %10125, %10124
  br i1 %10129, label %10433, label %10131

; <label>:10130                                   ; preds = %10123
  br i1 %10094, label %10433, label %10131

; <label>:10131                                   ; preds = %10130, %10128
  %10132 = phi float [ %10063, %10130 ], [ %10124, %10128 ]
  %10133 = phi float [ 0.000000e+00, %10130 ], [ %10125, %10128 ]
  %10134 = icmp ne i32 %10082, 0
  %10135 = fmul fast float %10132, %3095
  %10136 = fadd fast float %10135, %10076
  %10137 = fmul fast float %10136, %10132
  %10138 = select i1 %10134, float 0.000000e+00, float %10137
  %10139 = fcmp fast oeq float %3095, 0.000000e+00
  %10140 = fdiv fast float %10081, %3095
  %10141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10140)  ; FMax(a,b)
  %10142 = select i1 %10139, float %10132, float %10141
  %10143 = call float @dx.op.binary.f32(i32 36, float %10132, float %10142)  ; FMin(a,b)
  %10144 = fcmp fast ogt float %3095, 0.000000e+00
  %10145 = fcmp fast olt float %10081, 0.000000e+00
  br i1 %10144, label %10146, label %10203

; <label>:10146                                   ; preds = %10131
  %10147 = icmp eq i32 %10082, 0
  br i1 %10145, label %10148, label %10192

; <label>:10148                                   ; preds = %10146
  %10149 = select i1 %10147, float %10132, float 0.000000e+00
  %10150 = fsub fast float -0.000000e+00, %10149
  %10151 = call float @dx.op.unary.f32(i32 6, float %10150)  ; FAbs(value)
  %10152 = fmul fast float %10149, %3095
  %10153 = fadd fast float %10152, %10076
  %10154 = fmul fast float %10151, %10153
  %10155 = fsub fast float %10138, %10154
  %10156 = fsub fast float %10132, %10151
  %10157 = select i1 %10147, float %10156, float 0.000000e+00
  %10158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10159 = extractvalue %dx.types.CBufRet.f32 %10158, 0
  %10160 = extractvalue %dx.types.CBufRet.f32 %10158, 1
  %10161 = extractvalue %dx.types.CBufRet.f32 %10158, 2
  %10162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10163 = extractvalue %dx.types.CBufRet.f32 %10162, 0
  %10164 = extractvalue %dx.types.CBufRet.f32 %10162, 1
  %10165 = extractvalue %dx.types.CBufRet.f32 %10162, 2
  %10166 = extractvalue %dx.types.CBufRet.f32 %10162, 3
  %10167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10168 = extractvalue %dx.types.CBufRet.f32 %10167, 3
  %10169 = call float @dx.op.binary.f32(i32 36, float %10155, float %10168)  ; FMin(a,b)
  %10170 = fmul fast float %10166, %10157
  %10171 = call float @dx.op.unary.f32(i32 7, float %10170)  ; Saturate(value)
  %10172 = fsub fast float %10163, %10159
  %10173 = fsub fast float %10164, %10160
  %10174 = fsub fast float %10165, %10161
  %10175 = fmul fast float %10171, %10172
  %10176 = fmul fast float %10171, %10173
  %10177 = fmul fast float %10171, %10174
  %10178 = fadd fast float %10175, %10159
  %10179 = fadd fast float %10176, %10160
  %10180 = fadd fast float %10177, %10161
  %10181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10182 = extractvalue %dx.types.CBufRet.f32 %10181, 0
  %10183 = extractvalue %dx.types.CBufRet.f32 %10181, 1
  %10184 = fadd fast float %10183, %10182
  %10185 = call float @dx.op.unary.f32(i32 7, float %10184)  ; Saturate(value)
  %10186 = extractvalue %dx.types.CBufRet.f32 %10181, 2
  %10187 = extractvalue %dx.types.CBufRet.f32 %10181, 3
  %10188 = fadd fast float %10187, %10186
  %10189 = call float @dx.op.unary.f32(i32 7, float %10188)  ; Saturate(value)
  %10190 = fmul fast float %10185, %10169
  %10191 = fmul fast float %10190, %10189
  br label %10433

; <label>:10192                                   ; preds = %10146
  br i1 %10147, label %10193, label %10214

; <label>:10193                                   ; preds = %10192
  %10194 = call float @dx.op.binary.f32(i32 36, float %10143, float %10133)  ; FMin(a,b)
  %10195 = fsub fast float %10143, %10194
  %10196 = fsub fast float %10195, %10132
  %10197 = call float @dx.op.unary.f32(i32 6, float %10196)  ; FAbs(value)
  %10198 = fadd fast float %10195, %10132
  %10199 = fmul fast float %10198, %3095
  %10200 = fadd fast float %10199, %10076
  %10201 = fmul fast float %10200, %10197
  %10202 = fsub fast float %10138, %10201
  br label %10214

; <label>:10203                                   ; preds = %10131
  br i1 %10145, label %10204, label %10214

; <label>:10204                                   ; preds = %10203
  %10205 = call float @dx.op.binary.f32(i32 35, float %10133, float %10143)  ; FMax(a,b)
  %10206 = icmp eq i32 %10082, 0
  %10207 = select i1 %10206, float %10143, float 0.000000e+00
  %10208 = fsub fast float -0.000000e+00, %10207
  %10209 = call float @dx.op.unary.f32(i32 6, float %10208)  ; FAbs(value)
  %10210 = fmul fast float %10207, %3095
  %10211 = fadd fast float %10210, %10076
  %10212 = fmul fast float %10209, %10211
  %10213 = fsub fast float %10138, %10212
  br label %10214

; <label>:10214                                   ; preds = %10204, %10203, %10193, %10192
  %10215 = phi float [ %10133, %10192 ], [ %10133, %10193 ], [ %10205, %10204 ], [ %10133, %10203 ]
  %10216 = phi float [ 0.000000e+00, %10192 ], [ %10197, %10193 ], [ %10209, %10204 ], [ 0.000000e+00, %10203 ]
  %10217 = phi float [ %10138, %10192 ], [ %10202, %10193 ], [ %10213, %10204 ], [ %10138, %10203 ]
  %10218 = phi float [ %10143, %10192 ], [ %10143, %10193 ], [ %10132, %10204 ], [ %10132, %10203 ]
  %10219 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 0
  store float -1.000000e+00, float* %10219, align 4, !tbaa !110, !noalias !169
  %10220 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 1
  store float -1.000000e+00, float* %10220, align 4, !tbaa !110, !noalias !169
  %10221 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 2
  store float -1.000000e+00, float* %10221, align 4, !tbaa !110, !noalias !169
  %10222 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 0
  store float -1.000000e+00, float* %10222, align 4, !tbaa !110, !noalias !169
  %10223 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 1
  store float -1.000000e+00, float* %10223, align 4, !tbaa !110, !noalias !169
  %10224 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 2
  store float -1.000000e+00, float* %10224, align 4, !tbaa !110, !noalias !169
  %10225 = icmp sgt i32 %10084, 0
  br i1 %10225, label %10226, label %10287

; <label>:10226                                   ; preds = %10214
  br label %10227

; <label>:10227                                   ; preds = %10276, %10226
  %10228 = phi i32 [ %10277, %10276 ], [ 0, %10226 ]
  %10229 = phi i32 [ %10278, %10276 ], [ 0, %10226 ]
  %10230 = add nuw i32 %10229, 171
  %10231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 %10230)  ; CBufferLoadLegacy(handle,regIndex)
  %10232 = extractvalue %dx.types.CBufRet.f32 %10231, 0
  %10233 = extractvalue %dx.types.CBufRet.f32 %10231, 1
  %10234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10235 = extractvalue %dx.types.CBufRet.f32 %10234, 0
  %10236 = extractvalue %dx.types.CBufRet.f32 %10234, 1
  %10237 = fsub fast float %10232, %10235
  %10238 = fsub fast float %10233, %10236
  %10239 = extractvalue %dx.types.CBufRet.f32 %10231, 2
  %10240 = fsub fast float -0.000000e+00, %10237
  %10241 = fsub fast float -0.000000e+00, %10238
  %10242 = call float @dx.op.dot2.f32(i32 54, float %3093, float %3094, float %10240, float %10241)  ; Dot2(ax,ay,bx,by)
  %10243 = fmul fast float %10242, 2.000000e+00
  %10244 = call float @dx.op.dot2.f32(i32 54, float %10240, float %10241, float %10240, float %10241)  ; Dot2(ax,ay,bx,by)
  %10245 = fmul fast float %10239, %10239
  %10246 = fsub fast float %10244, %10245
  %10247 = fmul fast float %10243, %10243
  %10248 = fmul fast float %10104, %10246
  %10249 = fsub fast float %10247, %10248
  %10250 = fcmp fast ogt float %10249, 0.000000e+00
  br i1 %10250, label %10251, label %10266

; <label>:10251                                   ; preds = %10227
  %10252 = fcmp fast ogt float %10243, 0.000000e+00
  %10253 = call float @dx.op.unary.f32(i32 24, float %10249)  ; Sqrt(value)
  %10254 = fsub fast float -0.000000e+00, %10253
  %10255 = select i1 %10252, float %10253, float %10254
  %10256 = fadd fast float %10255, %10243
  %10257 = fmul float %10256, -5.000000e-01
  %10258 = fdiv fast float %10257, %10097
  %10259 = call float @dx.op.binary.f32(i32 35, float %10258, float 0.000000e+00)  ; FMax(a,b)
  %10260 = call float @dx.op.binary.f32(i32 36, float %10132, float %10259)  ; FMin(a,b)
  %10261 = fdiv fast float %10246, %10257
  %10262 = call float @dx.op.binary.f32(i32 35, float %10261, float 0.000000e+00)  ; FMax(a,b)
  %10263 = call float @dx.op.binary.f32(i32 36, float %10132, float %10262)  ; FMin(a,b)
  %10264 = call float @dx.op.binary.f32(i32 36, float %10260, float %10263)  ; FMin(a,b)
  %10265 = call float @dx.op.binary.f32(i32 35, float %10260, float %10263)  ; FMax(a,b)
  br label %10266

; <label>:10266                                   ; preds = %10251, %10227
  %10267 = phi float [ %10265, %10251 ], [ -1.000000e+00, %10227 ]
  %10268 = phi float [ %10264, %10251 ], [ -1.000000e+00, %10227 ]
  %10269 = phi i1 [ true, %10251 ], [ false, %10227 ]
  br i1 %10269, label %10270, label %10276

; <label>:10270                                   ; preds = %10266
  %10271 = call float @dx.op.binary.f32(i32 35, float %10215, float %10268)  ; FMax(a,b)
  %10272 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %10229
  store float %10271, float* %10272, align 4, !tbaa !110, !noalias !169
  %10273 = call float @dx.op.binary.f32(i32 35, float %10215, float %10267)  ; FMax(a,b)
  %10274 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %10229
  store float %10273, float* %10274, align 4, !tbaa !110, !noalias !169
  %10275 = add nsw i32 %10228, 1
  br label %10276

; <label>:10276                                   ; preds = %10270, %10266
  %10277 = phi i32 [ %10275, %10270 ], [ %10228, %10266 ]
  %10278 = add nuw nsw i32 %10229, 1
  %10279 = icmp eq i32 %10278, %10084
  br i1 %10279, label %10280, label %10227

; <label>:10280                                   ; preds = %10276
  %10281 = load float, float* %10221, align 4, !tbaa !110, !alias.scope !185, !noalias !188
  %10282 = load float, float* %10220, align 4, !tbaa !110, !alias.scope !191, !noalias !192
  %10283 = load float, float* %10219, align 4, !tbaa !110, !alias.scope !193, !noalias !194
  %10284 = load float, float* %10224, align 4, !tbaa !110, !alias.scope !195, !noalias !198
  %10285 = load float, float* %10223, align 4, !tbaa !110, !alias.scope !201, !noalias !202
  %10286 = load float, float* %10222, align 4, !tbaa !110, !alias.scope !203, !noalias !204
  br label %10287

; <label>:10287                                   ; preds = %10280, %10214
  %10288 = phi float [ -1.000000e+00, %10214 ], [ %10286, %10280 ]
  %10289 = phi float [ -1.000000e+00, %10214 ], [ %10285, %10280 ]
  %10290 = phi float [ -1.000000e+00, %10214 ], [ %10284, %10280 ]
  %10291 = phi float [ -1.000000e+00, %10214 ], [ %10283, %10280 ]
  %10292 = phi float [ -1.000000e+00, %10214 ], [ %10282, %10280 ]
  %10293 = phi float [ -1.000000e+00, %10214 ], [ %10281, %10280 ]
  %10294 = phi i32 [ 0, %10214 ], [ %10277, %10280 ]
  %10295 = call float @dx.op.binary.f32(i32 36, float %10292, float %10293)  ; FMin(a,b)
  %10296 = call float @dx.op.binary.f32(i32 36, float %10291, float %10295)  ; FMin(a,b)
  %10297 = call float @dx.op.binary.f32(i32 35, float %10291, float %10292)  ; FMax(a,b)
  %10298 = call float @dx.op.binary.f32(i32 36, float %10297, float %10293)  ; FMin(a,b)
  %10299 = call float @dx.op.binary.f32(i32 36, float %10291, float %10292)  ; FMin(a,b)
  %10300 = call float @dx.op.binary.f32(i32 35, float %10299, float %10298)  ; FMax(a,b)
  %10301 = call float @dx.op.binary.f32(i32 35, float %10292, float %10293)  ; FMax(a,b)
  %10302 = call float @dx.op.binary.f32(i32 35, float %10291, float %10301)  ; FMax(a,b)
  store float %10296, float* %10219, align 4, !tbaa !110, !alias.scope !193, !noalias !194
  store float %10300, float* %10220, align 4, !tbaa !110, !alias.scope !191, !noalias !192
  store float %10302, float* %10221, align 4, !tbaa !110, !alias.scope !185, !noalias !188
  %10303 = call float @dx.op.binary.f32(i32 36, float %10289, float %10290)  ; FMin(a,b)
  %10304 = call float @dx.op.binary.f32(i32 36, float %10288, float %10303)  ; FMin(a,b)
  %10305 = call float @dx.op.binary.f32(i32 35, float %10288, float %10289)  ; FMax(a,b)
  %10306 = call float @dx.op.binary.f32(i32 36, float %10305, float %10290)  ; FMin(a,b)
  %10307 = call float @dx.op.binary.f32(i32 36, float %10288, float %10289)  ; FMin(a,b)
  %10308 = call float @dx.op.binary.f32(i32 35, float %10307, float %10306)  ; FMax(a,b)
  %10309 = call float @dx.op.binary.f32(i32 35, float %10289, float %10290)  ; FMax(a,b)
  %10310 = call float @dx.op.binary.f32(i32 35, float %10288, float %10309)  ; FMax(a,b)
  store float %10304, float* %10222, align 4, !tbaa !110, !alias.scope !203, !noalias !204
  store float %10308, float* %10223, align 4, !tbaa !110, !alias.scope !201, !noalias !202
  store float %10310, float* %10224, align 4, !tbaa !110, !alias.scope !195, !noalias !198
  %10311 = sub nsw i32 3, %10294
  %10312 = icmp sgt i32 %10311, 2
  br i1 %10312, label %10313, label %10351

; <label>:10313                                   ; preds = %10287
  %10314 = icmp eq i32 %10082, 0
  %10315 = fsub fast float %10132, %10216
  %10316 = select i1 %10314, float %10315, float %10216
  %10317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10318 = extractvalue %dx.types.CBufRet.f32 %10317, 0
  %10319 = extractvalue %dx.types.CBufRet.f32 %10317, 1
  %10320 = extractvalue %dx.types.CBufRet.f32 %10317, 2
  %10321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10322 = extractvalue %dx.types.CBufRet.f32 %10321, 0
  %10323 = extractvalue %dx.types.CBufRet.f32 %10321, 1
  %10324 = extractvalue %dx.types.CBufRet.f32 %10321, 2
  %10325 = extractvalue %dx.types.CBufRet.f32 %10321, 3
  %10326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10327 = extractvalue %dx.types.CBufRet.f32 %10326, 3
  %10328 = call float @dx.op.binary.f32(i32 36, float %10217, float %10327)  ; FMin(a,b)
  %10329 = fmul fast float %10325, %10316
  %10330 = call float @dx.op.unary.f32(i32 7, float %10329)  ; Saturate(value)
  %10331 = fsub fast float %10322, %10318
  %10332 = fsub fast float %10323, %10319
  %10333 = fsub fast float %10324, %10320
  %10334 = fmul fast float %10330, %10331
  %10335 = fmul fast float %10330, %10332
  %10336 = fmul fast float %10330, %10333
  %10337 = fadd fast float %10334, %10318
  %10338 = fadd fast float %10335, %10319
  %10339 = fadd fast float %10336, %10320
  %10340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10341 = extractvalue %dx.types.CBufRet.f32 %10340, 0
  %10342 = extractvalue %dx.types.CBufRet.f32 %10340, 1
  %10343 = fadd fast float %10342, %10341
  %10344 = call float @dx.op.unary.f32(i32 7, float %10343)  ; Saturate(value)
  %10345 = extractvalue %dx.types.CBufRet.f32 %10340, 2
  %10346 = extractvalue %dx.types.CBufRet.f32 %10340, 3
  %10347 = fadd fast float %10346, %10345
  %10348 = call float @dx.op.unary.f32(i32 7, float %10347)  ; Saturate(value)
  %10349 = fmul fast float %10344, %10328
  %10350 = fmul fast float %10349, %10348
  br label %10433

; <label>:10351                                   ; preds = %10287
  %10352 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %10311
  %10353 = load float, float* %10352, align 4, !tbaa !110, !noalias !169
  %10354 = fcmp fast olt float %10353, %10218
  %10355 = icmp sgt i32 %10294, 0
  %10356 = and i1 %10355, %10354
  br i1 %10356, label %10357, label %10394

; <label>:10357                                   ; preds = %10351
  br label %10358

; <label>:10358                                   ; preds = %10387, %10357
  %10359 = phi float [ %10388, %10387 ], [ %10216, %10357 ]
  %10360 = phi float [ %10389, %10387 ], [ %10217, %10357 ]
  %10361 = phi float [ %10369, %10387 ], [ %10353, %10357 ]
  %10362 = phi i32 [ %10366, %10387 ], [ %10311, %10357 ]
  %10363 = getelementptr inbounds [3 x float], [3 x float]* %86, i32 0, i32 %10362
  %10364 = load float, float* %10363, align 4, !tbaa !110, !noalias !169
  %10365 = icmp slt i32 %10362, 2
  %10366 = add nsw i32 %10362, 1
  %10367 = getelementptr inbounds [3 x float], [3 x float]* %85, i32 0, i32 %10366
  %10368 = load float, float* %10367, align 4, !tbaa !110, !noalias !169
  %10369 = select i1 %10365, float %10368, float %10132
  %10370 = call float @dx.op.binary.f32(i32 36, float %10369, float %10364)  ; FMin(a,b)
  %10371 = call float @dx.op.binary.f32(i32 36, float %10218, float %10370)  ; FMin(a,b)
  %10372 = icmp eq i32 %10082, 0
  %10373 = fadd fast float %10371, %10361
  %10374 = fmul fast float %10373, %3095
  %10375 = fadd fast float %10374, %10076
  br i1 %10372, label %10381, label %10376

; <label>:10376                                   ; preds = %10358
  %10377 = fsub fast float %10371, %10361
  %10378 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10377)  ; FMax(a,b)
  %10379 = fmul fast float %10378, %10375
  %10380 = fadd fast float %10379, %10360
  br label %10387

; <label>:10381                                   ; preds = %10358
  %10382 = fsub fast float %10361, %10371
  %10383 = call float @dx.op.unary.f32(i32 6, float %10382)  ; FAbs(value)
  %10384 = fadd fast float %10383, %10359
  %10385 = fmul fast float %10383, %10375
  %10386 = fsub fast float %10360, %10385
  br label %10387

; <label>:10387                                   ; preds = %10381, %10376
  %10388 = phi float [ %10378, %10376 ], [ %10384, %10381 ]
  %10389 = phi float [ %10380, %10376 ], [ %10386, %10381 ]
  %10390 = fcmp fast olt float %10369, %10218
  %10391 = icmp slt i32 %10366, 3
  %10392 = and i1 %10391, %10390
  br i1 %10392, label %10358, label %10393

; <label>:10393                                   ; preds = %10387
  br label %10394

; <label>:10394                                   ; preds = %10393, %10351
  %10395 = phi float [ %10216, %10351 ], [ %10388, %10393 ]
  %10396 = phi float [ %10217, %10351 ], [ %10389, %10393 ]
  %10397 = fsub fast float %10132, %10395
  %10398 = select i1 %10134, float %10395, float %10397
  %10399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %10400 = extractvalue %dx.types.CBufRet.f32 %10399, 0
  %10401 = extractvalue %dx.types.CBufRet.f32 %10399, 1
  %10402 = extractvalue %dx.types.CBufRet.f32 %10399, 2
  %10403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %10404 = extractvalue %dx.types.CBufRet.f32 %10403, 0
  %10405 = extractvalue %dx.types.CBufRet.f32 %10403, 1
  %10406 = extractvalue %dx.types.CBufRet.f32 %10403, 2
  %10407 = extractvalue %dx.types.CBufRet.f32 %10403, 3
  %10408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %10409 = extractvalue %dx.types.CBufRet.f32 %10408, 3
  %10410 = call float @dx.op.binary.f32(i32 36, float %10396, float %10409)  ; FMin(a,b)
  %10411 = fmul fast float %10407, %10398
  %10412 = call float @dx.op.unary.f32(i32 7, float %10411)  ; Saturate(value)
  %10413 = fsub fast float %10404, %10400
  %10414 = fsub fast float %10405, %10401
  %10415 = fsub fast float %10406, %10402
  %10416 = fmul fast float %10412, %10413
  %10417 = fmul fast float %10412, %10414
  %10418 = fmul fast float %10412, %10415
  %10419 = fadd fast float %10416, %10400
  %10420 = fadd fast float %10417, %10401
  %10421 = fadd fast float %10418, %10402
  %10422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %10423 = extractvalue %dx.types.CBufRet.f32 %10422, 0
  %10424 = extractvalue %dx.types.CBufRet.f32 %10422, 1
  %10425 = fadd fast float %10424, %10423
  %10426 = call float @dx.op.unary.f32(i32 7, float %10425)  ; Saturate(value)
  %10427 = extractvalue %dx.types.CBufRet.f32 %10422, 2
  %10428 = extractvalue %dx.types.CBufRet.f32 %10422, 3
  %10429 = fadd fast float %10428, %10427
  %10430 = call float @dx.op.unary.f32(i32 7, float %10429)  ; Saturate(value)
  %10431 = fmul fast float %10426, %10410
  %10432 = fmul fast float %10431, %10430
  br label %10433

; <label>:10433                                   ; preds = %10394, %10313, %10148, %10130, %10128
  %10434 = phi float [ %10157, %10148 ], [ %10316, %10313 ], [ %10398, %10394 ], [ 0.000000e+00, %10128 ], [ 0.000000e+00, %10130 ]
  %10435 = phi float [ %10191, %10148 ], [ %10350, %10313 ], [ %10432, %10394 ], [ 0.000000e+00, %10128 ], [ 0.000000e+00, %10130 ]
  %10436 = phi float [ %10178, %10148 ], [ %10337, %10313 ], [ %10419, %10394 ], [ 0.000000e+00, %10128 ], [ 0.000000e+00, %10130 ]
  %10437 = phi float [ %10179, %10148 ], [ %10338, %10313 ], [ %10420, %10394 ], [ 0.000000e+00, %10128 ], [ 0.000000e+00, %10130 ]
  %10438 = phi float [ %10180, %10148 ], [ %10339, %10313 ], [ %10421, %10394 ], [ 0.000000e+00, %10128 ], [ 0.000000e+00, %10130 ]
  %10439 = fmul fast float %10071, %10435
  %10440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10441 = extractvalue %dx.types.CBufRet.f32 %10440, 2
  %10442 = fsub fast float %10078, %10441
  %10443 = fcmp fast olt float %10439, -2.000000e+01
  %10444 = call float @dx.op.unary.f32(i32 21, float %10439)  ; Exp(value)
  %10445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10446 = extractvalue %dx.types.CBufRet.f32 %10445, 2
  %10447 = extractvalue %dx.types.CBufRet.f32 %10445, 3
  %10448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10449 = extractvalue %dx.types.CBufRet.f32 %10448, 2
  %10450 = fmul fast float %10447, %10442
  %10451 = call float @dx.op.unary.f32(i32 7, float %10450)  ; Saturate(value)
  %10452 = fsub fast float 1.000000e+00, %10451
  %10453 = fmul fast float %3095, 5.000000e-01
  %10454 = fadd fast float %10453, 5.000000e-01
  %10455 = call float @dx.op.unary.f32(i32 7, float %10454)  ; Saturate(value)
  %10456 = fsub fast float 1.000000e+00, %10455
  %10457 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10452)  ; FMax(a,b)
  %10458 = fdiv fast float %10456, %10457
  %10459 = fsub fast float %10442, %567
  %10460 = call float @dx.op.unary.f32(i32 6, float %10459)  ; FAbs(value)
  %10461 = fmul fast float %10460, %10446
  %10462 = call float @dx.op.unary.f32(i32 7, float %10458)  ; Saturate(value)
  %10463 = fsub fast float 1.000000e+00, %10461
  %10464 = fmul fast float %10463, %10462
  %10465 = fadd fast float %10464, %10461
  %10466 = fmul fast float %10449, %10442
  %10467 = call float @dx.op.unary.f32(i32 7, float %10466)  ; Saturate(value)
  %10468 = fsub fast float 1.000000e+00, %10465
  %10469 = fmul fast float %10468, %10467
  %10470 = fadd fast float %10469, %10465
  %10471 = call float @dx.op.unary.f32(i32 7, float %10470)  ; Saturate(value)
  %10472 = fadd fast float %10444, -1.000000e+00
  %10473 = select i1 %10443, float -1.000000e+00, float %10472
  %10474 = fmul fast float %10471, %10473
  %10475 = fadd fast float %10474, 1.000000e+00
  %10476 = fsub fast float -0.000000e+00, %10474
  %10477 = fmul fast float %10436, %10476
  %10478 = fmul fast float %10437, %10476
  %10479 = fmul fast float %10438, %10476
  br label %10480

; <label>:10480                                   ; preds = %10433, %10034
  %10481 = phi float [ %10434, %10433 ], [ 0.000000e+00, %10034 ]
  %10482 = phi float [ %10475, %10433 ], [ 1.000000e+00, %10034 ]
  %10483 = phi float [ %10477, %10433 ], [ 0.000000e+00, %10034 ]
  %10484 = phi float [ %10478, %10433 ], [ 0.000000e+00, %10034 ]
  %10485 = phi float [ %10479, %10433 ], [ 0.000000e+00, %10034 ]
  %10486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %10487 = extractvalue %dx.types.CBufRet.f32 %10486, 1
  %10488 = fsub fast float 1.000000e+00, %10482
  %10489 = fmul fast float %10488, %10064
  %10490 = fmul fast float %10489, %10487
  %10491 = fsub fast float %10064, %10490
  br i1 %10062, label %10492, label %10521, !dx.controlflow.hints !205

; <label>:10492                                   ; preds = %10480
  %10493 = fmul fast float %10065, %10059
  %10494 = fadd fast float %10493, %10060
  %10495 = call float @dx.op.unary.f32(i32 7, float %10494)  ; Saturate(value)
  %10496 = fmul fast float %10041, %10491
  %10497 = fsub fast float -0.000000e+00, %10496
  %10498 = fmul fast float %10042, %10491
  %10499 = fsub fast float -0.000000e+00, %10498
  %10500 = call float @dx.op.unary.f32(i32 21, float %10497)  ; Exp(value)
  %10501 = call float @dx.op.unary.f32(i32 21, float %10499)  ; Exp(value)
  %10502 = call float @dx.op.binary.f32(i32 35, float %10049, float %10500)  ; FMax(a,b)
  %10503 = call float @dx.op.binary.f32(i32 35, float %10049, float %10501)  ; FMax(a,b)
  %10504 = fsub fast float %10503, %10502
  %10505 = fmul fast float %10504, %10495
  %10506 = fadd fast float %10505, %10502
  %10507 = call float @dx.op.unary.f32(i32 7, float %10506)  ; Saturate(value)
  %10508 = fsub fast float %10046, %10051
  %10509 = fsub fast float %10047, %10052
  %10510 = fsub fast float %10048, %10053
  %10511 = fmul fast float %10495, %10508
  %10512 = fmul fast float %10495, %10509
  %10513 = fmul fast float %10495, %10510
  %10514 = fadd fast float %10511, %10051
  %10515 = fadd fast float %10512, %10052
  %10516 = fadd fast float %10513, %10053
  %10517 = fsub fast float 1.000000e+00, %10507
  %10518 = fmul fast float %10517, %10514
  %10519 = fmul fast float %10517, %10515
  %10520 = fmul fast float %10517, %10516
  br label %10580

; <label>:10521                                   ; preds = %10480
  %10522 = fmul fast float %10491, %10058
  %10523 = call float @dx.op.unary.f32(i32 7, float %10522)  ; Saturate(value)
  %10524 = fsub fast float 2.000000e+00, %10523
  %10525 = fmul fast float %10523, 9.921875e-01
  %10526 = fmul fast float %10525, %10524
  %10527 = fadd fast float %10526, 3.906250e-03
  %10528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %65, float %10527, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10529 = extractvalue %dx.types.ResRet.f32 %10528, 0
  %10530 = fsub fast float %10523, %10529
  %10531 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %10530)  ; FMax(a,b)
  %10532 = fmul fast float %10044, %567
  %10533 = call float @dx.op.unary.f32(i32 6, float %10532)  ; FAbs(value)
  %10534 = fcmp fast ogt float %10533, 0x3EB0C6F7A0000000
  br i1 %10534, label %10535, label %10541, !dx.controlflow.hints !206

; <label>:10535                                   ; preds = %10521
  %10536 = fmul fast float %10532, 0xBFF7154760000000
  %10537 = call float @dx.op.unary.f32(i32 21, float %10536)  ; Exp(value)
  %10538 = fsub fast float 1.000000e+00, %10537
  %10539 = fdiv fast float %10538, %10532
  %10540 = fmul fast float %10539, %10054
  br label %10541

; <label>:10541                                   ; preds = %10535, %10521
  %10542 = phi float [ %10540, %10535 ], [ %10054, %10521 ]
  %10543 = fadd fast float %10542, %10056
  %10544 = fmul fast float %10543, %10531
  %10545 = fmul fast float %10041, %10544
  %10546 = fsub fast float -0.000000e+00, %10545
  %10547 = fmul fast float %10042, %10544
  %10548 = fsub fast float -0.000000e+00, %10547
  %10549 = fmul fast float %10043, %10544
  %10550 = fsub fast float -0.000000e+00, %10549
  %10551 = call float @dx.op.unary.f32(i32 21, float %10546)  ; Exp(value)
  %10552 = call float @dx.op.unary.f32(i32 21, float %10548)  ; Exp(value)
  %10553 = call float @dx.op.unary.f32(i32 21, float %10550)  ; Exp(value)
  %10554 = fmul fast float %10065, %10065
  %10555 = fadd fast float %10554, 1.000000e+00
  %10556 = fmul fast float %10555, 0x3FAE8EC8A0000000
  %10557 = fmul fast float %10556, %10051
  %10558 = fmul fast float %10556, %10052
  %10559 = fmul fast float %10556, %10053
  %10560 = fmul fast float %10065, %10049
  %10561 = fsub fast float 1.000000e+00, %10560
  %10562 = fmul fast float %10049, %10049
  %10563 = fsub fast float 1.000000e+00, %10562
  %10564 = fmul fast float %10563, 0x3FB45F3060000000
  %10565 = fmul fast float %10561, %10561
  %10566 = fdiv fast float 1.000000e+00, %10565
  %10567 = fmul fast float %10564, %10566
  %10568 = fmul fast float %10567, %10046
  %10569 = fmul fast float %10567, %10047
  %10570 = fmul fast float %10567, %10048
  %10571 = fadd fast float %10568, %10557
  %10572 = fadd fast float %10569, %10558
  %10573 = fadd fast float %10570, %10559
  %10574 = fsub fast float 1.000000e+00, %10551
  %10575 = fsub fast float 1.000000e+00, %10552
  %10576 = fsub fast float 1.000000e+00, %10553
  %10577 = fmul fast float %10571, %10574
  %10578 = fmul fast float %10572, %10575
  %10579 = fmul fast float %10573, %10576
  br label %10580

; <label>:10580                                   ; preds = %10541, %10492
  %10581 = phi float [ %10518, %10492 ], [ %10577, %10541 ]
  %10582 = phi float [ %10519, %10492 ], [ %10578, %10541 ]
  %10583 = phi float [ %10520, %10492 ], [ %10579, %10541 ]
  %10584 = phi float [ %10507, %10492 ], [ %10551, %10541 ]
  %10585 = phi float [ %10507, %10492 ], [ %10552, %10541 ]
  %10586 = phi float [ %10507, %10492 ], [ %10553, %10541 ]
  br i1 %10073, label %10587, label %10785, !dx.controlflow.hints !207

; <label>:10587                                   ; preds = %10580
  %10588 = extractvalue %dx.types.CBufRet.f32 %10486, 0
  %10589 = fmul fast float %10588, %10488
  %10590 = fsub fast float %10483, %10581
  %10591 = fsub fast float %10484, %10582
  %10592 = fsub fast float %10485, %10583
  %10593 = fmul fast float %10589, %10590
  %10594 = fmul fast float %10589, %10591
  %10595 = fmul fast float %10589, %10592
  %10596 = fadd fast float %10593, %10581
  %10597 = fadd fast float %10594, %10582
  %10598 = fadd fast float %10595, %10583
  %10599 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10584)  ; FMax(a,b)
  %10600 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10585)  ; FMax(a,b)
  %10601 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10586)  ; FMax(a,b)
  %10602 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %10482)  ; FMax(a,b)
  %10603 = call float @dx.op.binary.f32(i32 35, float %10481, float %10491)  ; FMax(a,b)
  %10604 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %10603)  ; FMax(a,b)
  %10605 = fdiv fast float %10481, %10604
  %10606 = call float @dx.op.unary.f32(i32 7, float %10605)  ; Saturate(value)
  %10607 = fdiv fast float %10491, %10604
  %10608 = call float @dx.op.unary.f32(i32 7, float %10607)  ; Saturate(value)
  %10609 = fcmp fast une float %10602, 1.000000e+00
  br i1 %10609, label %10610, label %10623, !dx.controlflow.hints !208

; <label>:10610                                   ; preds = %10587
  %10611 = call float @dx.op.unary.f32(i32 23, float %10602)  ; Log(value)
  %10612 = fmul fast float %10611, 0x3FE62E4300000000
  %10613 = fmul fast float %10483, %10612
  %10614 = fsub fast float -0.000000e+00, %10613
  %10615 = fmul fast float %10484, %10612
  %10616 = fsub fast float -0.000000e+00, %10615
  %10617 = fmul fast float %10485, %10612
  %10618 = fsub fast float -0.000000e+00, %10617
  %10619 = fsub fast float 1.000000e+00, %10602
  %10620 = fdiv fast float %10614, %10619
  %10621 = fdiv fast float %10616, %10619
  %10622 = fdiv fast float %10618, %10619
  br label %10623

; <label>:10623                                   ; preds = %10610, %10587
  %10624 = phi float [ %10620, %10610 ], [ %10483, %10587 ]
  %10625 = phi float [ %10621, %10610 ], [ %10484, %10587 ]
  %10626 = phi float [ %10622, %10610 ], [ %10485, %10587 ]
  %10627 = phi float [ %10612, %10610 ], [ 0.000000e+00, %10587 ]
  %10628 = fcmp fast une float %10599, 1.000000e+00
  br i1 %10628, label %10629, label %10636, !dx.controlflow.hints !209

; <label>:10629                                   ; preds = %10623
  %10630 = call float @dx.op.unary.f32(i32 23, float %10599)  ; Log(value)
  %10631 = fmul fast float %10630, 0x3FE62E4300000000
  %10632 = fmul fast float %10596, %10631
  %10633 = fsub fast float -0.000000e+00, %10632
  %10634 = fsub fast float 1.000000e+00, %10599
  %10635 = fdiv fast float %10633, %10634
  br label %10636

; <label>:10636                                   ; preds = %10629, %10623
  %10637 = phi float [ %10635, %10629 ], [ %10596, %10623 ]
  %10638 = phi float [ %10631, %10629 ], [ 0.000000e+00, %10623 ]
  %10639 = fcmp fast une float %10600, 1.000000e+00
  br i1 %10639, label %10640, label %10647, !dx.controlflow.hints !209

; <label>:10640                                   ; preds = %10636
  %10641 = call float @dx.op.unary.f32(i32 23, float %10600)  ; Log(value)
  %10642 = fmul fast float %10641, 0x3FE62E4300000000
  %10643 = fmul fast float %10597, %10642
  %10644 = fsub fast float -0.000000e+00, %10643
  %10645 = fsub fast float 1.000000e+00, %10600
  %10646 = fdiv fast float %10644, %10645
  br label %10647

; <label>:10647                                   ; preds = %10640, %10636
  %10648 = phi float [ %10646, %10640 ], [ %10597, %10636 ]
  %10649 = phi float [ %10642, %10640 ], [ 0.000000e+00, %10636 ]
  %10650 = fcmp fast une float %10601, 1.000000e+00
  br i1 %10650, label %10651, label %10658, !dx.controlflow.hints !209

; <label>:10651                                   ; preds = %10647
  %10652 = call float @dx.op.unary.f32(i32 23, float %10601)  ; Log(value)
  %10653 = fmul fast float %10652, 0x3FE62E4300000000
  %10654 = fmul fast float %10598, %10653
  %10655 = fsub fast float -0.000000e+00, %10654
  %10656 = fsub fast float 1.000000e+00, %10601
  %10657 = fdiv fast float %10655, %10656
  br label %10658

; <label>:10658                                   ; preds = %10651, %10647
  %10659 = phi float [ %10657, %10651 ], [ %10598, %10647 ]
  %10660 = phi float [ %10653, %10651 ], [ 0.000000e+00, %10647 ]
  %10661 = fmul fast float %10624, %10608
  %10662 = fmul fast float %10625, %10608
  %10663 = fmul fast float %10626, %10608
  %10664 = fmul fast float %10627, %10608
  %10665 = fmul fast float %10637, %10606
  %10666 = fmul fast float %10648, %10606
  %10667 = fmul fast float %10659, %10606
  %10668 = fmul fast float %10638, %10606
  %10669 = fmul fast float %10649, %10606
  %10670 = fmul fast float %10660, %10606
  %10671 = fadd fast float %10665, %10661
  %10672 = fadd fast float %10666, %10662
  %10673 = fadd fast float %10667, %10663
  %10674 = fadd fast float %10668, %10664
  %10675 = fadd fast float %10669, %10664
  %10676 = fadd fast float %10670, %10664
  %10677 = fcmp fast une float %10674, 0.000000e+00
  br i1 %10677, label %10678, label %10685, !dx.controlflow.hints !210

; <label>:10678                                   ; preds = %10658
  %10679 = fmul fast float %10674, 0x3FF7154760000000
  %10680 = call float @dx.op.unary.f32(i32 21, float %10679)  ; Exp(value)
  %10681 = fsub fast float 1.000000e+00, %10680
  %10682 = fmul fast float %10671, %10681
  %10683 = fsub fast float -0.000000e+00, %10682
  %10684 = fdiv fast float %10683, %10674
  br label %10685

; <label>:10685                                   ; preds = %10678, %10658
  %10686 = phi float [ %10680, %10678 ], [ 1.000000e+00, %10658 ]
  %10687 = phi float [ %10684, %10678 ], [ %10671, %10658 ]
  %10688 = fcmp fast une float %10675, 0.000000e+00
  br i1 %10688, label %10689, label %10696, !dx.controlflow.hints !210

; <label>:10689                                   ; preds = %10685
  %10690 = fmul fast float %10675, 0x3FF7154760000000
  %10691 = call float @dx.op.unary.f32(i32 21, float %10690)  ; Exp(value)
  %10692 = fsub fast float 1.000000e+00, %10691
  %10693 = fmul fast float %10672, %10692
  %10694 = fsub fast float -0.000000e+00, %10693
  %10695 = fdiv fast float %10694, %10675
  br label %10696

; <label>:10696                                   ; preds = %10689, %10685
  %10697 = phi float [ %10691, %10689 ], [ 1.000000e+00, %10685 ]
  %10698 = phi float [ %10695, %10689 ], [ %10672, %10685 ]
  %10699 = fcmp fast une float %10676, 0.000000e+00
  br i1 %10699, label %10700, label %10707, !dx.controlflow.hints !210

; <label>:10700                                   ; preds = %10696
  %10701 = fmul fast float %10676, 0x3FF7154760000000
  %10702 = call float @dx.op.unary.f32(i32 21, float %10701)  ; Exp(value)
  %10703 = fsub fast float 1.000000e+00, %10702
  %10704 = fmul fast float %10673, %10703
  %10705 = fsub fast float -0.000000e+00, %10704
  %10706 = fdiv fast float %10705, %10676
  br label %10707

; <label>:10707                                   ; preds = %10700, %10696
  %10708 = phi float [ %10702, %10700 ], [ 1.000000e+00, %10696 ]
  %10709 = phi float [ %10706, %10700 ], [ %10673, %10696 ]
  %10710 = fcmp fast ogt float %10606, %10608
  br i1 %10710, label %10711, label %10731

; <label>:10711                                   ; preds = %10707
  %10712 = fsub fast float 1.000000e+00, %10608
  %10713 = fmul fast float %10624, %10712
  %10714 = fmul fast float %10625, %10712
  %10715 = fmul fast float %10626, %10712
  %10716 = fmul fast float %10627, %10712
  %10717 = fcmp fast une float %10716, 0.000000e+00
  br i1 %10717, label %10718, label %10769, !dx.controlflow.hints !211

; <label>:10718                                   ; preds = %10711
  %10719 = fmul fast float %10716, 0x3FF7154760000000
  %10720 = call float @dx.op.unary.f32(i32 21, float %10719)  ; Exp(value)
  %10721 = fsub fast float 1.000000e+00, %10720
  %10722 = fmul fast float %10713, %10721
  %10723 = fsub fast float -0.000000e+00, %10722
  %10724 = fmul fast float %10714, %10721
  %10725 = fsub fast float -0.000000e+00, %10724
  %10726 = fmul fast float %10715, %10721
  %10727 = fsub fast float -0.000000e+00, %10726
  %10728 = fdiv fast float %10723, %10716
  %10729 = fdiv fast float %10725, %10716
  %10730 = fdiv fast float %10727, %10716
  br label %10769

; <label>:10731                                   ; preds = %10707
  %10732 = fsub fast float 1.000000e+00, %10606
  %10733 = fmul fast float %10637, %10732
  %10734 = fmul fast float %10648, %10732
  %10735 = fmul fast float %10659, %10732
  %10736 = fmul fast float %10638, %10732
  %10737 = fmul fast float %10649, %10732
  %10738 = fmul fast float %10660, %10732
  %10739 = fcmp fast une float %10736, 0.000000e+00
  br i1 %10739, label %10740, label %10747, !dx.controlflow.hints !210

; <label>:10740                                   ; preds = %10731
  %10741 = fmul fast float %10736, 0x3FF7154760000000
  %10742 = call float @dx.op.unary.f32(i32 21, float %10741)  ; Exp(value)
  %10743 = fsub fast float 1.000000e+00, %10742
  %10744 = fmul fast float %10733, %10743
  %10745 = fsub fast float -0.000000e+00, %10744
  %10746 = fdiv fast float %10745, %10736
  br label %10747

; <label>:10747                                   ; preds = %10740, %10731
  %10748 = phi float [ %10746, %10740 ], [ %10733, %10731 ]
  %10749 = phi float [ %10742, %10740 ], [ 1.000000e+00, %10731 ]
  %10750 = fcmp fast une float %10737, 0.000000e+00
  br i1 %10750, label %10751, label %10758, !dx.controlflow.hints !210

; <label>:10751                                   ; preds = %10747
  %10752 = fmul fast float %10737, 0x3FF7154760000000
  %10753 = call float @dx.op.unary.f32(i32 21, float %10752)  ; Exp(value)
  %10754 = fsub fast float 1.000000e+00, %10753
  %10755 = fmul fast float %10734, %10754
  %10756 = fsub fast float -0.000000e+00, %10755
  %10757 = fdiv fast float %10756, %10737
  br label %10758

; <label>:10758                                   ; preds = %10751, %10747
  %10759 = phi float [ %10757, %10751 ], [ %10734, %10747 ]
  %10760 = phi float [ %10753, %10751 ], [ 1.000000e+00, %10747 ]
  %10761 = fcmp fast une float %10738, 0.000000e+00
  br i1 %10761, label %10762, label %10769, !dx.controlflow.hints !210

; <label>:10762                                   ; preds = %10758
  %10763 = fmul fast float %10738, 0x3FF7154760000000
  %10764 = call float @dx.op.unary.f32(i32 21, float %10763)  ; Exp(value)
  %10765 = fsub fast float 1.000000e+00, %10764
  %10766 = fmul fast float %10735, %10765
  %10767 = fsub fast float -0.000000e+00, %10766
  %10768 = fdiv fast float %10767, %10738
  br label %10769

; <label>:10769                                   ; preds = %10762, %10758, %10718, %10711
  %10770 = phi float [ %10768, %10762 ], [ %10730, %10718 ], [ %10715, %10711 ], [ %10735, %10758 ]
  %10771 = phi float [ %10759, %10762 ], [ %10729, %10718 ], [ %10714, %10711 ], [ %10759, %10758 ]
  %10772 = phi float [ %10748, %10762 ], [ %10728, %10718 ], [ %10713, %10711 ], [ %10748, %10758 ]
  %10773 = phi float [ %10764, %10762 ], [ %10720, %10718 ], [ 1.000000e+00, %10711 ], [ 1.000000e+00, %10758 ]
  %10774 = phi float [ %10760, %10762 ], [ %10720, %10718 ], [ 1.000000e+00, %10711 ], [ %10760, %10758 ]
  %10775 = phi float [ %10749, %10762 ], [ %10720, %10718 ], [ 1.000000e+00, %10711 ], [ %10749, %10758 ]
  %10776 = fmul fast float %10775, %10687
  %10777 = fmul fast float %10774, %10698
  %10778 = fmul fast float %10773, %10709
  %10779 = fadd fast float %10776, %10772
  %10780 = fadd fast float %10777, %10771
  %10781 = fadd fast float %10778, %10770
  %10782 = fmul fast float %10775, %10686
  %10783 = fmul fast float %10774, %10697
  %10784 = fmul fast float %10773, %10708
  br label %10785

; <label>:10785                                   ; preds = %10769, %10580
  %10786 = phi float [ %10784, %10769 ], [ %10586, %10580 ]
  %10787 = phi float [ %10783, %10769 ], [ %10585, %10580 ]
  %10788 = phi float [ %10782, %10769 ], [ %10584, %10580 ]
  %10789 = phi float [ %10781, %10769 ], [ %10583, %10580 ]
  %10790 = phi float [ %10780, %10769 ], [ %10582, %10580 ]
  %10791 = phi float [ %10779, %10769 ], [ %10581, %10580 ]
  %10792 = call float @dx.op.dot3.f32(i32 55, float %10788, float %10787, float %10786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10793 = call float @dx.op.dot3.f32(i32 55, float %10791, float %10790, float %10789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10794 = select i1 %3298, float %10792, float %10788
  %10795 = select i1 %3298, float %10792, float %10787
  %10796 = select i1 %3298, float 1.000000e+00, float %10786
  %10797 = select i1 %3298, float %10793, float %10791
  %10798 = select i1 %3298, float 0.000000e+00, float %10790
  %10799 = select i1 %3298, float 0.000000e+00, float %10789
  %10800 = fmul fast float %10794, %10029
  %10801 = fmul fast float %10795, %10031
  %10802 = fmul fast float %10796, %10033
  %10803 = fadd fast float %10800, %10797
  %10804 = fadd fast float %10801, %10798
  %10805 = fadd fast float %10799, %10802
  %10806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %10807 = extractvalue %dx.types.CBufRet.f32 %10806, 2
  %10808 = extractvalue %dx.types.CBufRet.f32 %10806, 3
  %10809 = fmul fast float %10807, %93
  %10810 = fmul fast float %10808, %94
  %10811 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %65, float %10809, float %10810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10812 = extractvalue %dx.types.ResRet.f32 %10811, 0
  %10813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %65, float %10809, float %10810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10814 = extractvalue %dx.types.ResRet.f32 %10813, 0
  %10815 = extractvalue %dx.types.ResRet.f32 %10813, 1
  %10816 = extractvalue %dx.types.ResRet.f32 %10813, 2
  %10817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10818 = extractvalue %dx.types.CBufRet.f32 %10817, 1
  %10819 = fmul fast float %10818, %10814
  %10820 = fmul fast float %10818, %10815
  %10821 = fmul fast float %10818, %10816
  %10822 = fmul fast float %10812, %10788
  %10823 = call float @dx.op.dot3.f32(i32 55, float %10812, float %10812, float %10812, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10824 = call float @dx.op.dot3.f32(i32 55, float %10819, float %10820, float %10821, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10825 = select i1 %3298, float %10823, float %10812
  %10826 = select i1 %3298, float 1.000000e+00, float %10812
  %10827 = select i1 %3298, float %10824, float %10819
  %10828 = select i1 %3298, float 0.000000e+00, float %10820
  %10829 = select i1 %3298, float 0.000000e+00, float %10821
  %10830 = fmul fast float %10825, %10803
  %10831 = fmul fast float %10825, %10804
  %10832 = fmul fast float %10826, %10805
  %10833 = fadd fast float %10830, %10827
  %10834 = fadd fast float %10831, %10828
  %10835 = fadd fast float %10829, %10832
  br label %10836

; <label>:10836                                   ; preds = %10785, %10002
  %10837 = phi float [ %10029, %10002 ], [ %10833, %10785 ]
  %10838 = phi float [ %10031, %10002 ], [ %10834, %10785 ]
  %10839 = phi float [ %10033, %10002 ], [ %10835, %10785 ]
  %10840 = phi float [ 1.000000e+00, %10002 ], [ %10822, %10785 ]
  %10841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %10842 = extractvalue %dx.types.CBufRet.f32 %10841, 2
  %10843 = extractvalue %dx.types.CBufRet.f32 %10841, 3
  %10844 = fmul fast float %10842, %93
  %10845 = fmul fast float %10843, %94
  %10846 = call float @dx.op.unary.f32(i32 7, float %10844)  ; Saturate(value)
  %10847 = call float @dx.op.unary.f32(i32 7, float %10845)  ; Saturate(value)
  %10848 = lshr exact i32 %104, 23
  %10849 = xor i32 %10848, 2
  %10850 = or i32 %10849, 1
  %10851 = uitofp i32 %10850 to float
  %10852 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %65, float %10846, float %10847, float %10851, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10853 = extractvalue %dx.types.ResRet.f32 %10852, 0
  %10854 = extractvalue %dx.types.ResRet.f32 %10852, 1
  %10855 = extractvalue %dx.types.ResRet.f32 %10852, 2
  %10856 = extractvalue %dx.types.ResRet.f32 %10852, 3
  %10857 = add nuw nsw i32 %10849, 2
  %10858 = uitofp i32 %10857 to float
  %10859 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %22, %dx.types.Handle %65, float %10846, float %10847, float %10858, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %10860 = extractvalue %dx.types.ResRet.f32 %10859, 0
  %10861 = extractvalue %dx.types.ResRet.f32 %10859, 1
  %10862 = extractvalue %dx.types.ResRet.f32 %10859, 2
  %10863 = extractvalue %dx.types.ResRet.f32 %10859, 3
  %10864 = call float @dx.op.binary.f32(i32 35, float %10854, float %10855)  ; FMax(a,b)
  %10865 = call float @dx.op.binary.f32(i32 35, float %10853, float %10864)  ; FMax(a,b)
  %10866 = call float @dx.op.binary.f32(i32 35, float %10865, float %10856)  ; FMax(a,b)
  %10867 = call float @dx.op.binary.f32(i32 36, float %10861, float %10862)  ; FMin(a,b)
  %10868 = call float @dx.op.binary.f32(i32 36, float %10860, float %10867)  ; FMin(a,b)
  %10869 = call float @dx.op.binary.f32(i32 36, float %10868, float %10863)  ; FMin(a,b)
  %10870 = fmul fast float %10866, 2.550000e+02
  %10871 = fadd fast float %10870, 0x3F70101020000000
  %10872 = fptoui float %10871 to i32
  %10873 = fmul fast float %10869, 2.550000e+02
  %10874 = fadd fast float %10873, 0x3F70101020000000
  %10875 = fptoui float %10874 to i32
  %10876 = icmp ult i32 %10872, %10875
  br i1 %10876, label %10877, label %10927

; <label>:10877                                   ; preds = %10836
  %10878 = fadd fast float %526, -4.000000e+00
  %10879 = call float @dx.op.binary.f32(i32 35, float %10878, float 0.000000e+00)  ; FMax(a,b)
  %10880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %10881 = extractvalue %dx.types.CBufRet.f32 %10880, 0
  %10882 = fadd fast float %10881, %10879
  %10883 = extractvalue %dx.types.CBufRet.f32 %10880, 2
  %10884 = fmul fast float %10882, %10883
  %10885 = call float @dx.op.unary.f32(i32 23, float %10884)  ; Log(value)
  %10886 = extractvalue %dx.types.CBufRet.f32 %10880, 3
  %10887 = fmul fast float %10886, %10885
  %10888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %10889 = extractvalue %dx.types.CBufRet.f32 %10888, 2
  %10890 = fmul fast float %10887, %10889
  %10891 = call float @dx.op.unary.f32(i32 7, float %10890)  ; Saturate(value)
  %10892 = uitofp i32 %10872 to float
  %10893 = uitofp i32 %10875 to float
  %10894 = fadd fast float %10892, 5.000000e-01
  %10895 = fadd fast float %10893, 5.000000e-01
  %10896 = fmul fast float %10889, %10894
  %10897 = fmul fast float %10889, %10895
  %10898 = fadd fast float %10896, 0x3F0FFB4800000000
  %10899 = fadd fast float %10897, 0xBF0FFB4800000000
  %10900 = call float @dx.op.binary.f32(i32 35, float %10891, float %10898)  ; FMax(a,b)
  %10901 = call float @dx.op.binary.f32(i32 36, float %10900, float %10899)  ; FMin(a,b)
  %10902 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %10903 = extractvalue %dx.types.CBufRet.f32 %10902, 1
  %10904 = extractvalue %dx.types.CBufRet.f32 %10902, 2
  %10905 = extractvalue %dx.types.CBufRet.f32 %10902, 0
  %10906 = select i1 %105, float 0.000000e+00, float %10905
  %10907 = fmul fast float %10903, %10901
  %10908 = fadd fast float %10906, %10907
  %10909 = fadd fast float %10906, %10904
  %10910 = fsub fast float %10903, %10904
  %10911 = fadd fast float %10910, %10906
  %10912 = call float @dx.op.binary.f32(i32 35, float %10908, float %10909)  ; FMax(a,b)
  %10913 = call float @dx.op.binary.f32(i32 36, float %10912, float %10911)  ; FMin(a,b)
  %10914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %63, float %10846, float %10847, float %10913, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10915 = extractvalue %dx.types.ResRet.f32 %10914, 0
  %10916 = extractvalue %dx.types.ResRet.f32 %10914, 1
  %10917 = extractvalue %dx.types.ResRet.f32 %10914, 2
  %10918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %63, float %10846, float %10847, float %10913, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10919 = extractvalue %dx.types.ResRet.f32 %10918, 0
  %10920 = extractvalue %dx.types.ResRet.f32 %10918, 1
  %10921 = extractvalue %dx.types.ResRet.f32 %10918, 2
  %10922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10923 = extractvalue %dx.types.CBufRet.f32 %10922, 1
  %10924 = fmul fast float %10923, %10919
  %10925 = fmul fast float %10923, %10920
  %10926 = fmul fast float %10923, %10921
  br label %10927

; <label>:10927                                   ; preds = %10877, %10836
  %10928 = phi float [ %10915, %10877 ], [ 1.000000e+00, %10836 ]
  %10929 = phi float [ %10916, %10877 ], [ 1.000000e+00, %10836 ]
  %10930 = phi float [ %10917, %10877 ], [ 1.000000e+00, %10836 ]
  %10931 = phi float [ %10924, %10877 ], [ 0.000000e+00, %10836 ]
  %10932 = phi float [ %10925, %10877 ], [ 0.000000e+00, %10836 ]
  %10933 = phi float [ %10926, %10877 ], [ 0.000000e+00, %10836 ]
  %10934 = fmul fast float %10928, %10840
  %10935 = call float @dx.op.dot3.f32(i32 55, float %10928, float %10929, float %10930, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10936 = call float @dx.op.dot3.f32(i32 55, float %10931, float %10932, float %10933, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10937 = select i1 %3298, float %10935, float %10928
  %10938 = select i1 %3298, float %10935, float %10929
  %10939 = select i1 %3298, float 1.000000e+00, float %10930
  %10940 = select i1 %3298, float %10936, float %10931
  %10941 = select i1 %3298, float 0.000000e+00, float %10932
  %10942 = select i1 %3298, float 0.000000e+00, float %10933
  %10943 = fmul fast float %10937, %10837
  %10944 = fmul fast float %10938, %10838
  %10945 = fmul fast float %10939, %10839
  %10946 = fadd fast float %10943, %10940
  %10947 = fadd fast float %10944, %10941
  %10948 = fadd fast float %10942, %10945
  %10949 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10950 = extractvalue %dx.types.CBufRet.i32 %10949, 3
  %10951 = and i32 %10950, 3
  %10952 = icmp ne i32 %10951, 0
  %10953 = and i32 %10950, 4
  %10954 = icmp ne i32 %10953, 0
  %10955 = and i1 %10952, %10954
  %10956 = and i1 %3298, %10955
  br i1 %10956, label %10957, label %10963

; <label>:10957                                   ; preds = %10927
  %10958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10959 = extractvalue %dx.types.CBufRet.f32 %10958, 1
  %10960 = fadd fast float %10934, -1.000000e+00
  %10961 = fmul fast float %10959, %10960
  %10962 = fadd fast float %10961, 1.000000e+00
  br label %10963

; <label>:10963                                   ; preds = %10957, %10927
  %10964 = phi float [ %10962, %10957 ], [ %10934, %10927 ]
  %10965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10966 = extractvalue %dx.types.CBufRet.f32 %10965, 0
  br i1 %3298, label %10967, label %10981

; <label>:10967                                   ; preds = %10963
  %10968 = fadd fast float %10946, %10947
  %10969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10970 = extractvalue %dx.types.CBufRet.f32 %10969, 3
  %10971 = extractvalue %dx.types.CBufRet.f32 %10013, 1
  %10972 = fsub fast float %10019, %10007
  %10973 = fadd fast float %10972, %10020
  %10974 = fsub fast float %10973, %10971
  %10975 = extractvalue %dx.types.CBufRet.f32 %10013, 2
  %10976 = fmul fast float %10974, %10975
  %10977 = call float @dx.op.unary.f32(i32 7, float %10976)  ; Saturate(value)
  %10978 = fsub fast float %10977, %10970
  %10979 = fmul fast float %10978, %10964
  %10980 = fadd fast float %10979, %10970
  br label %10984

; <label>:10981                                   ; preds = %10963
  %10982 = fmul fast float %10966, %10947
  %10983 = fmul fast float %10966, %10948
  br label %10984

; <label>:10984                                   ; preds = %10981, %10967
  %10985 = phi float [ %10968, %10967 ], [ %10946, %10981 ]
  %10986 = phi float [ %10980, %10967 ], [ %10982, %10981 ]
  %10987 = phi float [ 1.000000e+00, %10967 ], [ %10983, %10981 ]
  %10988 = fmul float %10966, %10985
  switch i32 %9934, label %11286 [
    i32 0, label %11301
    i32 1, label %10989
    i32 2, label %10990
    i32 3, label %11002
    i32 4, label %11011
    i32 5, label %11012
    i32 6, label %11013
    i32 12, label %11014
    i32 13, label %11015
    i32 14, label %11027
    i32 15, label %11039
    i32 16, label %11051
    i32 17, label %11052
    i32 63, label %11285
    i32 18, label %11053
    i32 25, label %11075
    i32 27, label %11076
    i32 28, label %11077
    i32 29, label %11078
    i32 31, label %11079
    i32 32, label %11102
    i32 33, label %11161
    i32 37, label %11179
    i32 38, label %11180
    i32 39, label %11189
    i32 40, label %11212
    i32 41, label %11216
    i32 52, label %11217
    i32 53, label %11218
    i32 54, label %11219
    i32 55, label %11220
    i32 56, label %11221
    i32 57, label %11223
    i32 58, label %11225
    i32 59, label %11263
    i32 60, label %11265
    i32 61, label %11267
    i32 64, label %11269
    i32 62, label %11284
  ]

; <label>:10989                                   ; preds = %10984
  br label %11286

; <label>:10990                                   ; preds = %10984
  %10991 = call float @dx.op.dot3.f32(i32 55, float %3065, float %3066, float %3067, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %10992 = call float @dx.op.unary.f32(i32 25, float %10991)  ; Rsqrt(value)
  %10993 = fmul fast float %3065, 5.000000e-01
  %10994 = fmul fast float %10993, %10992
  %10995 = fmul fast float %3066, 5.000000e-01
  %10996 = fmul fast float %10995, %10992
  %10997 = fmul fast float %3067, 5.000000e-01
  %10998 = fmul fast float %10997, %10992
  %10999 = fadd fast float %10994, 5.000000e-01
  %11000 = fadd fast float %10996, 5.000000e-01
  %11001 = fadd fast float %10998, 5.000000e-01
  br label %11286

; <label>:11002                                   ; preds = %10984
  %11003 = fcmp fast ole float %3244, 0x3FA4B5DCC0000000
  %11004 = fmul fast float %3244, 0x3FB3D07220000000
  %11005 = fadd fast float %3244, 0x3FAC28F5C0000000
  %11006 = fmul fast float %11005, 0x3FEE54EDE0000000
  %11007 = call float @dx.op.unary.f32(i32 23, float %11006)  ; Log(value)
  %11008 = fmul fast float %11007, 0x4003333340000000
  %11009 = call float @dx.op.unary.f32(i32 21, float %11008)  ; Exp(value)
  %11010 = select i1 %11003, float %11004, float %11009
  br label %11286

; <label>:11011                                   ; preds = %10984
  br label %11286

; <label>:11012                                   ; preds = %10984
  br label %11286

; <label>:11013                                   ; preds = %10984
  br label %11286

; <label>:11014                                   ; preds = %10984
  br label %11286

; <label>:11015                                   ; preds = %10984
  %11016 = and i32 %10003, 1023
  %11017 = uitofp i32 %11016 to float
  %11018 = lshr i32 %10003, 10
  %11019 = and i32 %11018, 1023
  %11020 = uitofp i32 %11019 to float
  %11021 = lshr i32 %10003, 20
  %11022 = and i32 %11021, 1023
  %11023 = uitofp i32 %11022 to float
  %11024 = fmul fast float %11017, 0x3F50040100000000
  %11025 = fmul fast float %11020, 0x3F50040100000000
  %11026 = fmul fast float %11023, 0x3F50040100000000
  br label %11286

; <label>:11027                                   ; preds = %10984
  %11028 = and i32 %10003, 1023
  %11029 = uitofp i32 %11028 to float
  %11030 = lshr i32 %10003, 10
  %11031 = and i32 %11030, 1023
  %11032 = uitofp i32 %11031 to float
  %11033 = lshr i32 %10003, 20
  %11034 = and i32 %11033, 1023
  %11035 = uitofp i32 %11034 to float
  %11036 = fmul fast float %11029, 0x3F50040100000000
  %11037 = fmul fast float %11032, 0x3F50040100000000
  %11038 = fmul fast float %11035, 0x3F50040100000000
  br label %11286

; <label>:11039                                   ; preds = %10984
  %11040 = and i32 %10003, 1023
  %11041 = uitofp i32 %11040 to float
  %11042 = lshr i32 %10003, 10
  %11043 = and i32 %11042, 1023
  %11044 = uitofp i32 %11043 to float
  %11045 = lshr i32 %10003, 20
  %11046 = and i32 %11045, 1023
  %11047 = uitofp i32 %11046 to float
  %11048 = fmul fast float %11041, 0x3F50040100000000
  %11049 = fmul fast float %11044, 0x3F50040100000000
  %11050 = fmul fast float %11047, 0x3F50040100000000
  br label %11286

; <label>:11051                                   ; preds = %10984
  br label %11286

; <label>:11052                                   ; preds = %10984
  br label %11286

; <label>:11053                                   ; preds = %10984
  %11054 = fcmp fast ogt float %3086, 0x3FB99999A0000000
  %11055 = fcmp fast ogt float %3087, 0x3FB99999A0000000
  %11056 = or i1 %11054, %11055
  %11057 = fcmp fast ogt float %3088, 0x3FB99999A0000000
  %11058 = or i1 %11056, %11057
  %11059 = fcmp fast olt float %3086, 0x3FB99999A0000000
  %11060 = fcmp fast olt float %3087, 0x3FB99999A0000000
  %11061 = or i1 %11059, %11060
  %11062 = fcmp fast olt float %3088, 0x3FB99999A0000000
  %11063 = or i1 %11061, %11062
  %11064 = fadd fast float %3086, %3077
  %11065 = fcmp fast ogt float %11064, 1.000000e+00
  %11066 = fadd fast float %3087, %3078
  %11067 = fcmp fast ogt float %11066, 1.000000e+00
  %11068 = or i1 %11065, %11067
  %11069 = fadd fast float %3088, %3079
  %11070 = fcmp fast ogt float %11069, 1.000000e+00
  %11071 = or i1 %11068, %11070
  %11072 = select i1 %11071, float 1.000000e+00, float 0.000000e+00
  %11073 = and i1 %11058, %11063
  %11074 = select i1 %11073, float 1.000000e+00, float 0.000000e+00
  br label %11286

; <label>:11075                                   ; preds = %10984
  br label %11286

; <label>:11076                                   ; preds = %10984
  br label %11286

; <label>:11077                                   ; preds = %10984
  br label %11286

; <label>:11078                                   ; preds = %10984
  br label %11286

; <label>:11079                                   ; preds = %10984
  %11080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %11081 = extractvalue %dx.types.CBufRet.f32 %11080, 0
  %11082 = extractvalue %dx.types.CBufRet.f32 %11080, 2
  %11083 = extractvalue %dx.types.CBufRet.f32 %11080, 3
  %11084 = fcmp fast olt float %3244, %11081
  br i1 %11084, label %11085, label %11099

; <label>:11085                                   ; preds = %13019, %13017, %11099, %11079
  %11086 = phi i32 [ 0, %11079 ], [ 1, %11099 ], [ 2, %13017 ], [ 3, %13019 ]
  %11087 = mul i32 %11086, 3
  %11088 = add i32 0, %11087
  %11089 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11088
  %11090 = load float, float* %11089, align 4
  %11091 = mul i32 %11086, 3
  %11092 = add i32 1, %11091
  %11093 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11092
  %11094 = load float, float* %11093, align 4
  %11095 = mul i32 %11086, 3
  %11096 = add i32 2, %11095
  %11097 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11096
  %11098 = load float, float* %11097, align 4
  br label %11286

; <label>:11099                                   ; preds = %11079
  %11100 = extractvalue %dx.types.CBufRet.f32 %11080, 1
  %11101 = fcmp fast olt float %3244, %11100
  br i1 %11101, label %11085, label %13017

; <label>:11102                                   ; preds = %10984
  %11103 = fcmp fast ole float %3077, 0x3F69A5C380000000
  %11104 = fcmp fast ole float %3078, 0x3F69A5C380000000
  %11105 = fcmp fast ole float %3079, 0x3F69A5C380000000
  %11106 = fmul fast float %3077, 0x4029D70A40000000
  %11107 = fmul fast float %3078, 0x4029D70A40000000
  %11108 = fmul fast float %3079, 0x4029D70A40000000
  %11109 = call float @dx.op.unary.f32(i32 23, float %3077)  ; Log(value)
  %11110 = call float @dx.op.unary.f32(i32 23, float %3078)  ; Log(value)
  %11111 = call float @dx.op.unary.f32(i32 23, float %3079)  ; Log(value)
  %11112 = fmul fast float %11109, 0x3FDAAAAAA0000000
  %11113 = fmul fast float %11110, 0x3FDAAAAAA0000000
  %11114 = fmul fast float %11111, 0x3FDAAAAAA0000000
  %11115 = call float @dx.op.unary.f32(i32 21, float %11112)  ; Exp(value)
  %11116 = call float @dx.op.unary.f32(i32 21, float %11113)  ; Exp(value)
  %11117 = call float @dx.op.unary.f32(i32 21, float %11114)  ; Exp(value)
  %11118 = fmul fast float %11115, 0x3FF0E147A0000000
  %11119 = fmul fast float %11116, 0x3FF0E147A0000000
  %11120 = fmul fast float %11117, 0x3FF0E147A0000000
  %11121 = fadd fast float %11118, 0xBFAC28F5C0000000
  %11122 = fadd fast float %11119, 0xBFAC28F5C0000000
  %11123 = fadd fast float %11120, 0xBFAC28F5C0000000
  %11124 = select i1 %11103, float %11106, float %11121
  %11125 = select i1 %11104, float %11107, float %11122
  %11126 = select i1 %11105, float %11108, float %11123
  %11127 = call float @dx.op.dot3.f32(i32 55, float %11124, float %11125, float %11126, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %11128 = fcmp fast olt float %11127, 0x3FA0101020000000
  br i1 %11128, label %11137, label %11129

; <label>:11129                                   ; preds = %11102
  %11130 = fcmp fast ogt float %11127, 0x3FEEFEFF00000000
  br i1 %11130, label %11137, label %11131

; <label>:11131                                   ; preds = %11129
  %11132 = fcmp fast ogt float %11127, 0x3FEF5F5F60000000
  br i1 %11132, label %11137, label %11133

; <label>:11133                                   ; preds = %11131
  %11134 = fadd fast float %11127, %11127
  %11135 = fcmp fast ogt float %11134, 2.550000e+02
  br i1 %11135, label %11136, label %11137

; <label>:11136                                   ; preds = %11133
  br label %11137

; <label>:11137                                   ; preds = %11136, %11133, %11131, %11129, %11102
  %11138 = phi float [ 1.000000e+00, %11136 ], [ %10988, %11133 ], [ 1.000000e+00, %11102 ], [ 0x3FBD1D1D20000000, %11129 ], [ 0.000000e+00, %11131 ]
  %11139 = phi float [ 0.000000e+00, %11136 ], [ %10986, %11133 ], [ 0x3FE6666660000000, %11102 ], [ 1.000000e+00, %11129 ], [ 0.000000e+00, %11131 ]
  %11140 = phi float [ 1.000000e+00, %11136 ], [ %10987, %11133 ], [ 0.000000e+00, %11102 ], [ 0x3FDD5D5D60000000, %11129 ], [ 1.000000e+00, %11131 ]
  %11141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %11142 = extractvalue %dx.types.CBufRet.f32 %11141, 3
  %11143 = fmul fast float %11142, 8.000000e+00
  %11144 = fmul fast float %94, 5.000000e+02
  %11145 = fmul fast float %11144, %10843
  %11146 = fsub fast float %11145, %11143
  %11147 = call float @dx.op.unary.f32(i32 13, float %11146)  ; Sin(value)
  %11148 = fmul fast float %11147, %11147
  %11149 = fmul fast float %11148, 2.000000e+00
  %11150 = fadd fast float %11149, -1.000000e+00
  %11151 = call float @dx.op.unary.f32(i32 7, float %11150)  ; Saturate(value)
  %11152 = fsub fast float %11138, %10988
  %11153 = fsub fast float %11139, %10986
  %11154 = fsub fast float %11140, %10987
  %11155 = fmul fast float %11151, %11152
  %11156 = fmul fast float %11151, %11153
  %11157 = fmul fast float %11151, %11154
  %11158 = fadd fast float %11155, %10988
  %11159 = fadd fast float %11156, %10986
  %11160 = fadd fast float %11157, %10987
  br label %11286

; <label>:11161                                   ; preds = %10984
  %11162 = fcmp fast olt float %526, 1.280000e+02
  br i1 %11162, label %11163, label %11177

; <label>:11163                                   ; preds = %13035, %13033, %13031, %13029, %13027, %13025, %13023, %13021, %11177, %11161
  %11164 = phi i32 [ 0, %11161 ], [ 1, %11177 ], [ 2, %13021 ], [ 3, %13023 ], [ 4, %13025 ], [ 5, %13027 ], [ 6, %13029 ], [ 7, %13031 ], [ 8, %13033 ], [ 9, %13035 ]
  %11165 = mul i32 %11164, 3
  %11166 = add i32 0, %11165
  %11167 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11166
  %11168 = load float, float* %11167, align 4
  %11169 = mul i32 %11164, 3
  %11170 = add i32 1, %11169
  %11171 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11170
  %11172 = load float, float* %11171, align 4
  %11173 = mul i32 %11164, 3
  %11174 = add i32 2, %11173
  %11175 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11174
  %11176 = load float, float* %11175, align 4
  br label %11286

; <label>:11177                                   ; preds = %11161
  %11178 = fcmp fast olt float %526, 2.560000e+02
  br i1 %11178, label %11163, label %13021

; <label>:11179                                   ; preds = %10984
  br label %11286

; <label>:11180                                   ; preds = %10984
  %11181 = bitcast i32 %10003 to float
  %11182 = fcmp fast ogt float %11181, 0.000000e+00
  %11183 = select i1 %11182, float 0.000000e+00, float 1.000000e+00
  %11184 = fcmp fast olt float %11181, 1.000000e+00
  %11185 = select i1 %11184, float 1.000000e+00, float 0.000000e+00
  %11186 = select i1 %11184, float %11183, float 0.000000e+00
  %11187 = fmul fast float %11185, %3244
  %11188 = fmul fast float %11186, %3244
  br label %11286

; <label>:11189                                   ; preds = %10984
  %11190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %11191 = extractvalue %dx.types.CBufRet.f32 %11190, 0
  %11192 = extractvalue %dx.types.CBufRet.f32 %11190, 2
  %11193 = extractvalue %dx.types.CBufRet.f32 %11190, 3
  %11194 = fcmp fast olt float %10024, %11191
  br i1 %11194, label %11195, label %11209

; <label>:11195                                   ; preds = %13039, %13037, %11209, %11189
  %11196 = phi i32 [ 0, %11189 ], [ 1, %11209 ], [ 2, %13037 ], [ 3, %13039 ]
  %11197 = mul i32 %11196, 3
  %11198 = add i32 0, %11197
  %11199 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11198
  %11200 = load float, float* %11199, align 4
  %11201 = mul i32 %11196, 3
  %11202 = add i32 1, %11201
  %11203 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11202
  %11204 = load float, float* %11203, align 4
  %11205 = mul i32 %11196, 3
  %11206 = add i32 2, %11205
  %11207 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %11206
  %11208 = load float, float* %11207, align 4
  br label %11286

; <label>:11209                                   ; preds = %11189
  %11210 = extractvalue %dx.types.CBufRet.f32 %11190, 1
  %11211 = fcmp fast olt float %10024, %11210
  br i1 %11211, label %11195, label %13037

; <label>:11212                                   ; preds = %10984
  %11213 = fadd fast float %10024, -5.000000e-01
  %11214 = fmul fast float %11213, 2.000000e+00
  %11215 = call float @dx.op.unary.f32(i32 7, float %11214)  ; Saturate(value)
  br label %11286

; <label>:11216                                   ; preds = %10984
  br label %11286

; <label>:11217                                   ; preds = %10984
  br label %11286

; <label>:11218                                   ; preds = %10984
  br label %11286

; <label>:11219                                   ; preds = %10984
  br label %11286

; <label>:11220                                   ; preds = %10984
  br label %11286

; <label>:11221                                   ; preds = %10984
  %11222 = bitcast i32 %10003 to float
  br label %11286

; <label>:11223                                   ; preds = %10984
  %11224 = bitcast i32 %10003 to float
  br label %11286

; <label>:11225                                   ; preds = %10984
  %11226 = and i32 %10003, 65535
  %11227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11226)  ; LegacyF16ToF32(value)
  %11228 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %11229 = fptosi float %11228 to i32
  %11230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %11231 = extractvalue %dx.types.CBufRet.f32 %11230, 0
  %11232 = extractvalue %dx.types.CBufRet.f32 %11230, 1
  %11233 = extractvalue %dx.types.CBufRet.f32 %11230, 2
  %11234 = fadd fast float %11231, %565
  %11235 = fadd fast float %11232, %566
  %11236 = fadd fast float %11233, %567
  %11237 = fptosi float %11234 to i32
  %11238 = fptosi float %11235 to i32
  %11239 = fptosi float %11236 to i32
  %11240 = xor i32 %11237, %11238
  %11241 = lshr i32 %11240, 1
  %11242 = and i32 %11241, 1
  %11243 = lshr i32 %11239, 1
  %11244 = and i32 %11243, 1
  %11245 = xor i32 %11244, 1
  %11246 = icmp ne i32 %11242, %11245
  switch i32 %11229, label %11286 [
    i32 -1, label %11247
    i32 -2, label %11248
    i32 -3, label %11250
    i32 -4, label %11252
    i32 -5, label %11254
    i32 -6, label %11255
    i32 -7, label %11256
  ]

; <label>:11247                                   ; preds = %11225
  br label %11286

; <label>:11248                                   ; preds = %11225
  %11249 = select i1 %11246, float 1.000000e+00, float 0.000000e+00
  br label %11286

; <label>:11250                                   ; preds = %11225
  %11251 = select i1 %11246, float 1.000000e+00, float 0.000000e+00
  br label %11286

; <label>:11252                                   ; preds = %11225
  %11253 = select i1 %11246, float 1.000000e+00, float 0.000000e+00
  br label %11286

; <label>:11254                                   ; preds = %11225
  br label %11286

; <label>:11255                                   ; preds = %11225
  br label %11286

; <label>:11256                                   ; preds = %11225
  %11257 = lshr i32 %10003, 16
  %11258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11257)  ; LegacyF16ToF32(value)
  %11259 = fmul fast float %11258, 0x3FD5555560000000
  %11260 = fsub fast float 1.000000e+00, %11259
  %11261 = fmul fast float %11259, %11227
  %11262 = fmul fast float %11260, %11227
  br label %11286

; <label>:11263                                   ; preds = %10984
  %11264 = bitcast i32 %10003 to float
  br label %11286

; <label>:11265                                   ; preds = %10984
  %11266 = bitcast i32 %10003 to float
  br label %11286

; <label>:11267                                   ; preds = %10984
  %11268 = bitcast i32 %10003 to float
  br label %11286

; <label>:11269                                   ; preds = %10984
  %11270 = and i32 %10003, 1023
  %11271 = uitofp i32 %11270 to float
  %11272 = lshr i32 %10003, 10
  %11273 = and i32 %11272, 1023
  %11274 = uitofp i32 %11273 to float
  %11275 = lshr i32 %10003, 20
  %11276 = and i32 %11275, 1023
  %11277 = uitofp i32 %11276 to float
  %11278 = fmul fast float %11271, 0x3F60040100000000
  %11279 = fmul fast float %11274, 0x3F60040100000000
  %11280 = fmul fast float %11277, 0x3F60040100000000
  %11281 = fadd fast float %11278, -1.000000e+00
  %11282 = fadd fast float %11279, -1.000000e+00
  %11283 = fadd fast float %11280, -1.000000e+00
  br label %11286

; <label>:11284                                   ; preds = %10984
  br label %11286

; <label>:11285                                   ; preds = %10984
  br label %11286

; <label>:11286                                   ; preds = %13039, %13035, %13019, %11285, %11284, %11269, %11267, %11265, %11263, %11256, %11255, %11254, %11252, %11250, %11248, %11247, %11225, %11223, %11221, %11220, %11219, %11218, %11217, %11216, %11212, %11195, %11180, %11179, %11163, %11137, %11085, %11078, %11077, %11076, %11075, %11053, %11052, %11051, %11039, %11027, %11015, %11014, %11013, %11012, %11011, %11002, %10990, %10989, %10984
  %11287 = phi float [ %10988, %10984 ], [ 0.000000e+00, %11284 ], [ %11281, %11269 ], [ %11268, %11267 ], [ %11266, %11265 ], [ %11264, %11263 ], [ %10988, %11225 ], [ 0.000000e+00, %11256 ], [ %11227, %11255 ], [ %11227, %11254 ], [ 0.000000e+00, %11252 ], [ %11251, %11250 ], [ %11249, %11248 ], [ %11227, %11247 ], [ %11224, %11223 ], [ %11222, %11221 ], [ 0.000000e+00, %11220 ], [ 0.000000e+00, %11219 ], [ 0.000000e+00, %11218 ], [ %565, %11216 ], [ %11215, %11212 ], [ %11187, %11180 ], [ 0.000000e+00, %11179 ], [ %11158, %11137 ], [ 0.000000e+00, %11078 ], [ 0.000000e+00, %11077 ], [ 0.000000e+00, %11076 ], [ 1.000000e+00, %11075 ], [ 0.000000e+00, %11285 ], [ 1.000000e+00, %11052 ], [ 5.000000e-01, %11051 ], [ %11048, %11039 ], [ %11036, %11027 ], [ %11024, %11015 ], [ %3247, %11014 ], [ %3245, %11013 ], [ %3086, %11012 ], [ %3023, %11011 ], [ %11010, %11002 ], [ %10999, %10990 ], [ %3077, %10989 ], [ %11090, %11085 ], [ %11168, %11163 ], [ %11200, %11195 ], [ 0.000000e+00, %11217 ], [ 1.000000e+00, %13019 ], [ 1.000000e+00, %13035 ], [ 1.000000e+00, %13039 ], [ %11072, %11053 ]
  %11288 = phi float [ %10986, %10984 ], [ 0.000000e+00, %11284 ], [ %11282, %11269 ], [ %11268, %11267 ], [ %11266, %11265 ], [ %11264, %11263 ], [ %10986, %11225 ], [ %11261, %11256 ], [ %11227, %11255 ], [ %11227, %11254 ], [ 0.000000e+00, %11252 ], [ 0.000000e+00, %11250 ], [ 0.000000e+00, %11248 ], [ %11227, %11247 ], [ %11224, %11223 ], [ %11222, %11221 ], [ 0.000000e+00, %11220 ], [ 0.000000e+00, %11219 ], [ 0.000000e+00, %11218 ], [ %566, %11216 ], [ %11215, %11212 ], [ %3244, %11180 ], [ 0.000000e+00, %11179 ], [ %11159, %11137 ], [ 1.000000e+00, %11078 ], [ 1.000000e+00, %11077 ], [ 1.000000e+00, %11076 ], [ 0x3FE6666660000000, %11075 ], [ 0.000000e+00, %11285 ], [ 1.000000e+00, %11052 ], [ 5.000000e-01, %11051 ], [ %11049, %11039 ], [ %11037, %11027 ], [ %11025, %11015 ], [ %3247, %11014 ], [ %3245, %11013 ], [ %3087, %11012 ], [ %3024, %11011 ], [ %11010, %11002 ], [ %11000, %10990 ], [ %3078, %10989 ], [ %11094, %11085 ], [ %11172, %11163 ], [ %11204, %11195 ], [ 0.000000e+00, %11217 ], [ 0.000000e+00, %13019 ], [ 0.000000e+00, %13035 ], [ 0.000000e+00, %13039 ], [ 0.000000e+00, %11053 ]
  %11289 = phi float [ %10987, %10984 ], [ 0.000000e+00, %11284 ], [ %11283, %11269 ], [ %11268, %11267 ], [ %11266, %11265 ], [ %11264, %11263 ], [ %10987, %11225 ], [ %11262, %11256 ], [ %11227, %11255 ], [ 0.000000e+00, %11254 ], [ %11253, %11252 ], [ 0.000000e+00, %11250 ], [ %11249, %11248 ], [ %11227, %11247 ], [ %11224, %11223 ], [ %11222, %11221 ], [ 0.000000e+00, %11220 ], [ 0.000000e+00, %11219 ], [ 0.000000e+00, %11218 ], [ %567, %11216 ], [ %11215, %11212 ], [ %11188, %11180 ], [ 0.000000e+00, %11179 ], [ %11160, %11137 ], [ 0.000000e+00, %11078 ], [ 0.000000e+00, %11077 ], [ 0.000000e+00, %11076 ], [ 0.000000e+00, %11075 ], [ 0.000000e+00, %11285 ], [ 1.000000e+00, %11052 ], [ 5.000000e-01, %11051 ], [ %11050, %11039 ], [ %11038, %11027 ], [ %11026, %11015 ], [ %3247, %11014 ], [ %3245, %11013 ], [ %3088, %11012 ], [ %3025, %11011 ], [ %11010, %11002 ], [ %11001, %10990 ], [ %3079, %10989 ], [ %11098, %11085 ], [ %11176, %11163 ], [ %11208, %11195 ], [ 1.000000e+00, %11217 ], [ 0.000000e+00, %13019 ], [ 0.000000e+00, %13035 ], [ 0.000000e+00, %13039 ], [ %11074, %11053 ]
  %11290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %11291 = extractvalue %dx.types.CBufRet.f32 %11290, 3
  %11292 = fsub fast float %11287, %10988
  %11293 = fsub fast float %11288, %10986
  %11294 = fsub fast float %11289, %10987
  %11295 = fmul fast float %11291, %11292
  %11296 = fmul fast float %11291, %11293
  %11297 = fmul fast float %11291, %11294
  %11298 = fadd fast float %11295, %10988
  %11299 = fadd fast float %11296, %10986
  %11300 = fadd fast float %11297, %10987
  br label %11301

; <label>:11301                                   ; preds = %11286, %10984
  %11302 = phi float [ %11298, %11286 ], [ %10988, %10984 ]
  %11303 = phi float [ %11299, %11286 ], [ %10986, %10984 ]
  %11304 = phi float [ %11300, %11286 ], [ %10987, %10984 ]
  %11305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %11306 = extractvalue %dx.types.CBufRet.f32 %11305, 0
  %11307 = bitcast float %11306 to i32
  %11308 = lshr i32 %11307, 8
  %11309 = and i32 %11308, 255
  %11310 = uitofp i32 %11309 to float
  %11311 = fptoui float %11310 to i32
  switch i32 %11311, label %11548 [
    i32 1, label %11312
    i32 2, label %11318
    i32 3, label %11324
    i32 4, label %11330
    i32 5, label %11336
    i32 6, label %11342
    i32 7, label %11348
    i32 8, label %11354
    i32 9, label %11360
    i32 10, label %11362
    i32 11, label %11383
    i32 12, label %11404
    i32 13, label %11416
    i32 14, label %11431
    i32 15, label %11436
    i32 16, label %11438
    i32 17, label %11440
    i32 18, label %11442
    i32 19, label %11444
    i32 20, label %11455
    i32 21, label %11466
    i32 22, label %11478
    i32 23, label %11512
    i32 24, label %11527
    i32 25, label %11542
    i32 26, label %11544
    i32 27, label %11546
  ]

; <label>:11312                                   ; preds = %11301
  %11313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11314 = extractvalue %dx.types.CBufRet.f32 %11313, 0
  %11315 = fmul fast float %11314, %9202
  %11316 = fmul fast float %11314, %9203
  %11317 = fmul fast float %11314, %9204
  br label %11548

; <label>:11318                                   ; preds = %11301
  %11319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11320 = extractvalue %dx.types.CBufRet.f32 %11319, 0
  %11321 = fmul fast float %11320, %9199
  %11322 = fmul fast float %11320, %9200
  %11323 = fmul fast float %11320, %9201
  br label %11548

; <label>:11324                                   ; preds = %11301
  %11325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11326 = extractvalue %dx.types.CBufRet.f32 %11325, 0
  %11327 = fmul fast float %11326, %3023
  %11328 = fmul fast float %11326, %3024
  %11329 = fmul fast float %11326, %3025
  br label %11548

; <label>:11330                                   ; preds = %11301
  %11331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11332 = extractvalue %dx.types.CBufRet.f32 %11331, 0
  %11333 = fmul fast float %11332, %9196
  %11334 = fmul fast float %11332, %9197
  %11335 = fmul fast float %11332, %9198
  br label %11548

; <label>:11336                                   ; preds = %11301
  %11337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11338 = extractvalue %dx.types.CBufRet.f32 %11337, 0
  %11339 = fmul fast float %11338, %9193
  %11340 = fmul fast float %11338, %9194
  %11341 = fmul fast float %11338, %9195
  br label %11548

; <label>:11342                                   ; preds = %11301
  %11343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11344 = extractvalue %dx.types.CBufRet.f32 %11343, 0
  %11345 = fmul fast float %11344, %6218
  %11346 = fmul fast float %11344, %6219
  %11347 = fmul fast float %11344, %6220
  br label %11548

; <label>:11348                                   ; preds = %11301
  %11349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11350 = extractvalue %dx.types.CBufRet.f32 %11349, 0
  %11351 = fmul fast float %11350, %6218
  %11352 = fmul fast float %11350, %6219
  %11353 = fmul fast float %11350, %6220
  br label %11548

; <label>:11354                                   ; preds = %11301
  %11355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11356 = extractvalue %dx.types.CBufRet.f32 %11355, 0
  %11357 = fmul fast float %6221, %11356
  %11358 = fmul fast float %6222, %11356
  %11359 = fmul fast float %6223, %11356
  br label %11548

; <label>:11360                                   ; preds = %11301
  %11361 = bitcast i32 %10003 to float
  br label %11548

; <label>:11362                                   ; preds = %11301
  %11363 = and i32 %10003, 1023
  %11364 = uitofp i32 %11363 to float
  %11365 = lshr i32 %10003, 10
  %11366 = and i32 %11365, 1023
  %11367 = uitofp i32 %11366 to float
  %11368 = lshr i32 %10003, 20
  %11369 = and i32 %11368, 1023
  %11370 = uitofp i32 %11369 to float
  %11371 = fmul fast float %11364, 0x3F60040100000000
  %11372 = fmul fast float %11367, 0x3F60040100000000
  %11373 = fmul fast float %11370, 0x3F60040100000000
  %11374 = fadd fast float %11371, -1.000000e+00
  %11375 = fadd fast float %11372, -1.000000e+00
  %11376 = fadd fast float %11373, -1.000000e+00
  %11377 = fcmp fast ogt float %11374, 0.000000e+00
  %11378 = select i1 %11377, float 1.000000e+00, float 0.000000e+00
  %11379 = fcmp fast ogt float %11375, 0.000000e+00
  %11380 = select i1 %11379, float 1.000000e+00, float 0.000000e+00
  %11381 = fcmp fast ogt float %11376, 0.000000e+00
  %11382 = select i1 %11381, float 1.000000e+00, float 0.000000e+00
  br label %11548

; <label>:11383                                   ; preds = %11301
  %11384 = and i32 %10003, 1023
  %11385 = uitofp i32 %11384 to float
  %11386 = lshr i32 %10003, 10
  %11387 = and i32 %11386, 1023
  %11388 = uitofp i32 %11387 to float
  %11389 = lshr i32 %10003, 20
  %11390 = and i32 %11389, 1023
  %11391 = uitofp i32 %11390 to float
  %11392 = fmul fast float %11385, 0x3F60040100000000
  %11393 = fmul fast float %11388, 0x3F60040100000000
  %11394 = fmul fast float %11391, 0x3F60040100000000
  %11395 = fadd fast float %11392, -1.000000e+00
  %11396 = fadd fast float %11393, -1.000000e+00
  %11397 = fadd fast float %11394, -1.000000e+00
  %11398 = fmul fast float %11397, %11396
  %11399 = fsub fast float %11397, %11398
  %11400 = fmul fast float %11396, %11395
  %11401 = fmul fast float %11399, %11395
  %11402 = fsub fast float %11396, %11400
  %11403 = fsub fast float %11399, %11401
  br label %11548

; <label>:11404                                   ; preds = %11301
  %11405 = and i32 %10003, 255
  %11406 = uitofp i32 %11405 to float
  %11407 = fmul fast float %11406, 0x3F70101020000000
  %11408 = lshr i32 %10003, 8
  %11409 = and i32 %11408, 255
  %11410 = uitofp i32 %11409 to float
  %11411 = fmul fast float %11410, 0x3F70101020000000
  %11412 = lshr i32 %10003, 16
  %11413 = and i32 %11412, 255
  %11414 = uitofp i32 %11413 to float
  %11415 = fmul fast float %11414, 0x3F70101020000000
  br label %11548

; <label>:11416                                   ; preds = %11301
  %11417 = and i32 %10003, 1023
  %11418 = uitofp i32 %11417 to float
  %11419 = lshr i32 %10003, 10
  %11420 = and i32 %11419, 1023
  %11421 = uitofp i32 %11420 to float
  %11422 = lshr i32 %10003, 20
  %11423 = and i32 %11422, 1023
  %11424 = uitofp i32 %11423 to float
  %11425 = fmul fast float %11418, 0x3F60040100000000
  %11426 = fmul fast float %11421, 0x3F60040100000000
  %11427 = fmul fast float %11424, 0x3F60040100000000
  %11428 = fadd fast float %11425, -1.000000e+00
  %11429 = fadd fast float %11426, -1.000000e+00
  %11430 = fadd fast float %11427, -1.000000e+00
  br label %11548

; <label>:11431                                   ; preds = %11301
  %11432 = icmp ne i32 %10003, 0
  %11433 = select i1 %11432, float 1.000000e+00, float %11302
  %11434 = select i1 %11432, float 0.000000e+00, float %11303
  %11435 = select i1 %11432, float 0.000000e+00, float %11304
  br label %11548

; <label>:11436                                   ; preds = %11301
  %11437 = bitcast i32 %10003 to float
  br label %11548

; <label>:11438                                   ; preds = %11301
  %11439 = bitcast i32 %10003 to float
  br label %11548

; <label>:11440                                   ; preds = %11301
  %11441 = bitcast i32 %10003 to float
  br label %11548

; <label>:11442                                   ; preds = %11301
  %11443 = bitcast i32 %10003 to float
  br label %11548

; <label>:11444                                   ; preds = %11301
  %11445 = and i32 %10003, 65535
  %11446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11445)  ; LegacyF16ToF32(value)
  %11447 = lshr i32 %10003, 16
  %11448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11447)  ; LegacyF16ToF32(value)
  %11449 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %11450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11451 = extractvalue %dx.types.CBufRet.f32 %11450, 0
  %11452 = fmul fast float %11451, %11446
  %11453 = fmul fast float %11451, %11448
  %11454 = fmul fast float %11451, %11449
  br label %11548

; <label>:11455                                   ; preds = %11301
  %11456 = and i32 %10003, 65535
  %11457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11456)  ; LegacyF16ToF32(value)
  %11458 = lshr i32 %10003, 16
  %11459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %11458)  ; LegacyF16ToF32(value)
  %11460 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %11461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %11462 = extractvalue %dx.types.CBufRet.f32 %11461, 0
  %11463 = fmul fast float %11462, %11457
  %11464 = fmul fast float %11462, %11459
  %11465 = fmul fast float %11462, %11460
  br label %11548

; <label>:11466                                   ; preds = %11301
  %11467 = and i32 %10003, 1023
  %11468 = uitofp i32 %11467 to float
  %11469 = lshr i32 %10003, 10
  %11470 = and i32 %11469, 1023
  %11471 = uitofp i32 %11470 to float
  %11472 = lshr i32 %10003, 20
  %11473 = and i32 %11472, 1023
  %11474 = uitofp i32 %11473 to float
  %11475 = fmul fast float %11468, 0x3F50040100000000
  %11476 = fmul fast float %11471, 0x3F50040100000000
  %11477 = fmul fast float %11474, 0x3F50040100000000
  br label %11548

; <label>:11478                                   ; preds = %11301
  %11479 = and i32 %10003, 1023
  %11480 = uitofp i32 %11479 to float
  %11481 = lshr i32 %10003, 10
  %11482 = and i32 %11481, 1023
  %11483 = uitofp i32 %11482 to float
  %11484 = lshr i32 %10003, 20
  %11485 = and i32 %11484, 1023
  %11486 = uitofp i32 %11485 to float
  %11487 = fmul fast float %11480, 0x3F60040100000000
  %11488 = fmul fast float %11483, 0x3F60040100000000
  %11489 = fmul fast float %11486, 0x3F60040100000000
  %11490 = fadd fast float %11487, -1.000000e+00
  %11491 = fadd fast float %11488, -1.000000e+00
  %11492 = fadd fast float %11489, -1.000000e+00
  %11493 = call float @dx.op.binary.f32(i32 35, float %11491, float %11492)  ; FMax(a,b)
  %11494 = call float @dx.op.binary.f32(i32 35, float %11490, float %11493)  ; FMax(a,b)
  %11495 = fmul fast float %11494, 2.000000e+00
  %11496 = call float @dx.op.unary.f32(i32 7, float %11495)  ; Saturate(value)
  %11497 = fmul fast float %11480, 0x3F94050140000000
  %11498 = fadd fast float %11497, -1.000000e+01
  %11499 = fmul fast float %11483, 0x3F94050140000000
  %11500 = fadd fast float %11499, -1.000000e+01
  %11501 = fmul fast float %11486, 0x3F94050140000000
  %11502 = fadd fast float %11501, -1.000000e+01
  %11503 = fsub fast float %11498, %11302
  %11504 = fsub fast float %11500, %11303
  %11505 = fsub fast float %11502, %11304
  %11506 = fmul fast float %11496, %11503
  %11507 = fmul fast float %11496, %11504
  %11508 = fmul fast float %11496, %11505
  %11509 = fadd fast float %11506, %11302
  %11510 = fadd fast float %11507, %11303
  %11511 = fadd fast float %11508, %11304
  br label %11548

; <label>:11512                                   ; preds = %11301
  %11513 = and i32 %10003, 1023
  %11514 = uitofp i32 %11513 to float
  %11515 = lshr i32 %10003, 10
  %11516 = and i32 %11515, 1023
  %11517 = uitofp i32 %11516 to float
  %11518 = lshr i32 %10003, 20
  %11519 = and i32 %11518, 1023
  %11520 = uitofp i32 %11519 to float
  %11521 = fmul fast float %11514, 0x3F60040100000000
  %11522 = fmul fast float %11517, 0x3F60040100000000
  %11523 = fmul fast float %11520, 0x3F60040100000000
  %11524 = fadd fast float %11521, -1.000000e+00
  %11525 = fadd fast float %11522, -1.000000e+00
  %11526 = fadd fast float %11523, -1.000000e+00
  br label %11548

; <label>:11527                                   ; preds = %11301
  %11528 = and i32 %10003, 1023
  %11529 = uitofp i32 %11528 to float
  %11530 = lshr i32 %10003, 10
  %11531 = and i32 %11530, 1023
  %11532 = uitofp i32 %11531 to float
  %11533 = lshr i32 %10003, 20
  %11534 = and i32 %11533, 1023
  %11535 = uitofp i32 %11534 to float
  %11536 = fmul fast float %11529, 0x3F60040100000000
  %11537 = fmul fast float %11532, 0x3F60040100000000
  %11538 = fmul fast float %11535, 0x3F60040100000000
  %11539 = fadd fast float %11536, -1.000000e+00
  %11540 = fadd fast float %11537, -1.000000e+00
  %11541 = fadd fast float %11538, -1.000000e+00
  br label %11548

; <label>:11542                                   ; preds = %11301
  %11543 = bitcast i32 %10003 to float
  br label %11548

; <label>:11544                                   ; preds = %11301
  %11545 = bitcast i32 %10003 to float
  br label %11548

; <label>:11546                                   ; preds = %11301
  %11547 = bitcast i32 %10003 to float
  br label %11548

; <label>:11548                                   ; preds = %11546, %11544, %11542, %11527, %11512, %11478, %11466, %11455, %11444, %11442, %11440, %11438, %11436, %11431, %11416, %11404, %11383, %11362, %11360, %11354, %11348, %11342, %11336, %11330, %11324, %11318, %11312, %11301
  %11549 = phi float [ %11302, %11301 ], [ %11547, %11546 ], [ %11545, %11544 ], [ %11543, %11542 ], [ %11539, %11527 ], [ %11524, %11512 ], [ %11509, %11478 ], [ %11475, %11466 ], [ %11463, %11455 ], [ %11452, %11444 ], [ %11443, %11442 ], [ %11441, %11440 ], [ %11439, %11438 ], [ %11437, %11436 ], [ %11428, %11416 ], [ %11407, %11404 ], [ %11395, %11383 ], [ %11378, %11362 ], [ %11361, %11360 ], [ %11357, %11354 ], [ %11351, %11348 ], [ %11345, %11342 ], [ %11339, %11336 ], [ %11333, %11330 ], [ %11327, %11324 ], [ %11321, %11318 ], [ %11315, %11312 ], [ %11433, %11431 ]
  %11550 = phi float [ %11303, %11301 ], [ %11547, %11546 ], [ %11545, %11544 ], [ %11543, %11542 ], [ %11540, %11527 ], [ %11525, %11512 ], [ %11510, %11478 ], [ %11476, %11466 ], [ %11464, %11455 ], [ %11453, %11444 ], [ %11443, %11442 ], [ %11441, %11440 ], [ %11439, %11438 ], [ %11437, %11436 ], [ %11429, %11416 ], [ %11411, %11404 ], [ %11402, %11383 ], [ %11380, %11362 ], [ %11361, %11360 ], [ %11358, %11354 ], [ %11352, %11348 ], [ %11346, %11342 ], [ %11340, %11336 ], [ %11334, %11330 ], [ %11328, %11324 ], [ %11322, %11318 ], [ %11316, %11312 ], [ %11434, %11431 ]
  %11551 = phi float [ %11304, %11301 ], [ %11547, %11546 ], [ %11545, %11544 ], [ %11543, %11542 ], [ %11541, %11527 ], [ %11526, %11512 ], [ %11511, %11478 ], [ %11477, %11466 ], [ %11465, %11455 ], [ %11454, %11444 ], [ %11443, %11442 ], [ %11441, %11440 ], [ %11439, %11438 ], [ %11437, %11436 ], [ %11430, %11416 ], [ %11415, %11404 ], [ %11403, %11383 ], [ %11382, %11362 ], [ %11361, %11360 ], [ %11359, %11354 ], [ %11353, %11348 ], [ %11347, %11342 ], [ %11341, %11336 ], [ %11335, %11330 ], [ %11329, %11324 ], [ %11323, %11318 ], [ %11317, %11312 ], [ %11435, %11431 ]
  %11552 = extractvalue %dx.types.CBufRet.f32 %11305, 3
  %11553 = fsub fast float %11549, %11302
  %11554 = fsub fast float %11550, %11303
  %11555 = fsub fast float %11551, %11304
  %11556 = fmul fast float %11552, %11553
  %11557 = fmul fast float %11552, %11554
  %11558 = fmul fast float %11552, %11555
  %11559 = fadd fast float %11556, %11302
  %11560 = fadd fast float %11557, %11303
  %11561 = fadd fast float %11558, %11304
  %11562 = lshr i32 %11307, 16
  %11563 = and i32 %11562, 255
  %11564 = uitofp i32 %11563 to float
  %11565 = fptoui float %11564 to i32
  switch i32 %11565, label %11612 [
    i32 16, label %11597
    i32 12, label %11596
    i32 3, label %11566
    i32 4, label %11567
    i32 15, label %11568
    i32 5, label %11577
    i32 6, label %11586
    i32 7, label %11595
    i32 11, label %11596
  ]

; <label>:11566                                   ; preds = %11548
  br label %11612

; <label>:11567                                   ; preds = %11548
  br label %11612

; <label>:11568                                   ; preds = %11548
  %11569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %11570 = extractvalue %dx.types.CBufRet.f32 %11569, 0
  %11571 = fadd fast float %11570, %11559
  %11572 = fadd fast float %11570, %11560
  %11573 = fadd fast float %11570, %11561
  %11574 = call float @dx.op.unary.f32(i32 7, float %11571)  ; Saturate(value)
  %11575 = call float @dx.op.unary.f32(i32 7, float %11572)  ; Saturate(value)
  %11576 = call float @dx.op.unary.f32(i32 7, float %11573)  ; Saturate(value)
  br label %11612

; <label>:11577                                   ; preds = %11548
  %11578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11579 = extractvalue %dx.types.CBufRet.f32 %11578, 0
  %11580 = bitcast float %11579 to i32
  %11581 = and i32 %11580, 2130706432
  %11582 = icmp eq i32 %11581, 0
  %11583 = select i1 %11582, float 0.000000e+00, float %11559
  %11584 = select i1 %11582, float 0.000000e+00, float %11560
  %11585 = select i1 %11582, float 0.000000e+00, float %11561
  br label %11612

; <label>:11586                                   ; preds = %11548
  %11587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11588 = extractvalue %dx.types.CBufRet.f32 %11587, 0
  %11589 = bitcast float %11588 to i32
  %11590 = and i32 %11589, 2130706432
  %11591 = icmp eq i32 %11590, 0
  %11592 = select i1 %11591, float 0.000000e+00, float %11559
  %11593 = select i1 %11591, float 0.000000e+00, float %11560
  %11594 = select i1 %11591, float 0.000000e+00, float %11561
  br label %11612

; <label>:11595                                   ; preds = %11548
  br label %11612

; <label>:11596                                   ; preds = %11548, %11548
  br label %11612

; <label>:11597                                   ; preds = %11548
  %11598 = and i32 %10003, 1023
  %11599 = uitofp i32 %11598 to float
  %11600 = lshr i32 %10003, 10
  %11601 = and i32 %11600, 1023
  %11602 = uitofp i32 %11601 to float
  %11603 = lshr i32 %10003, 20
  %11604 = and i32 %11603, 1023
  %11605 = uitofp i32 %11604 to float
  %11606 = fmul fast float %11599, 0x3F60040100000000
  %11607 = fmul fast float %11602, 0x3F60040100000000
  %11608 = fmul fast float %11605, 0x3F60040100000000
  %11609 = fadd fast float %11606, -1.000000e+00
  %11610 = fadd fast float %11607, -1.000000e+00
  %11611 = fadd fast float %11608, -1.000000e+00
  br label %11612

; <label>:11612                                   ; preds = %11597, %11596, %11595, %11586, %11577, %11568, %11567, %11566, %11548
  %11613 = phi float [ 0.000000e+00, %11595 ], [ %11574, %11568 ], [ 0.000000e+00, %11567 ], [ %78, %11596 ], [ %11609, %11597 ], [ 0.000000e+00, %11566 ], [ %11583, %11577 ], [ %11592, %11586 ], [ %11559, %11548 ]
  %11614 = phi float [ 0.000000e+00, %11595 ], [ %11575, %11568 ], [ 0.000000e+00, %11567 ], [ %79, %11596 ], [ %11610, %11597 ], [ 0.000000e+00, %11566 ], [ %11584, %11577 ], [ %11593, %11586 ], [ %11560, %11548 ]
  %11615 = phi float [ 0.000000e+00, %11595 ], [ %11576, %11568 ], [ 1.000000e+00, %11567 ], [ %80, %11596 ], [ %11611, %11597 ], [ 0.000000e+00, %11566 ], [ %11585, %11577 ], [ %11594, %11586 ], [ %11561, %11548 ]
  %11616 = fsub fast float %11613, %11559
  %11617 = fsub fast float %11614, %11560
  %11618 = fsub fast float %11615, %11561
  %11619 = fmul fast float %11552, %11616
  %11620 = fmul fast float %11552, %11617
  %11621 = fmul fast float %11552, %11618
  %11622 = fadd fast float %11619, %11559
  %11623 = fadd fast float %11620, %11560
  %11624 = fadd fast float %11621, %11561
  %11625 = and i32 %9191, 255
  %11626 = uitofp i32 %11625 to float
  %11627 = fptoui float %11626 to i32
  %11628 = lshr i32 %9191, 8
  %11629 = and i32 %11628, 255
  %11630 = uitofp i32 %11629 to float
  %11631 = fptoui float %11630 to i32
  %11632 = lshr i32 %9191, 16
  %11633 = and i32 %11632, 255
  %11634 = uitofp i32 %11633 to float
  %11635 = fptoui float %11634 to i32
  %11636 = lshr i32 %9191, 24
  %11637 = uitofp i32 %11636 to float
  %11638 = fptoui float %11637 to i32
  %11639 = and i32 %9190, 255
  %11640 = uitofp i32 %11639 to float
  %11641 = fptoui float %11640 to i32
  %11642 = lshr i32 %9190, 16
  %11643 = and i32 %11642, 255
  %11644 = uitofp i32 %11643 to float
  %11645 = fptoui float %11644 to i32
  %11646 = lshr i32 %11307, 24
  %11647 = uitofp i32 %11646 to float
  %11648 = fptoui float %11647 to i32
  switch i32 %11648, label %11887 [
    i32 1, label %11649
    i32 2, label %11676
    i32 3, label %11701
    i32 4, label %11724
    i32 5, label %11747
    i32 6, label %11770
    i32 7, label %11794
    i32 8, label %11817
    i32 9, label %11840
    i32 12, label %11862
    i32 13, label %11863
    i32 14, label %11886
  ]

; <label>:11649                                   ; preds = %11612
  %11650 = add i32 %11627, %11641
  %11651 = add i32 %11650, %11638
  %11652 = add i32 %11651, %11631
  %11653 = add i32 %11652, %11635
  %11654 = uitofp i32 %11653 to float
  %11655 = fadd fast float %11654, -4.000000e+00
  %11656 = fmul fast float %11655, 0x3FB5555560000000
  %11657 = call float @dx.op.unary.f32(i32 7, float %11656)  ; Saturate(value)
  %11658 = icmp eq i32 %11653, 0
  %11659 = select i1 %11658, float 0.000000e+00, float %11657
  %11660 = icmp ult i32 %11653, 2
  %11661 = select i1 %11660, float 0.000000e+00, float %11657
  %11662 = add i32 %11653, -1
  %11663 = icmp ult i32 %11662, 2
  %11664 = select i1 %11663, float 1.000000e+00, float %11659
  %11665 = icmp ult i32 %11653, 4
  %11666 = select i1 %11665, float 0.000000e+00, float 1.000000e+00
  %11667 = and i32 %11653, -2
  %11668 = icmp eq i32 %11667, 2
  %11669 = icmp eq i32 %11653, 4
  %11670 = select i1 %11669, float 1.000000e+00, float %11666
  %11671 = or i1 %11669, %11668
  %11672 = select i1 %11671, float 1.000000e+00, float %11661
  %11673 = add i32 %11653, -3
  %11674 = icmp ult i32 %11673, 2
  %11675 = select i1 %11674, float 0.000000e+00, float %11664
  br label %11887

; <label>:11676                                   ; preds = %11612
  %11677 = add i32 %11631, %11627
  %11678 = add i32 %11677, %11635
  %11679 = uitofp i32 %11678 to float
  %11680 = fadd fast float %11679, -4.000000e+00
  %11681 = fmul fast float %11680, 0x3FB5555560000000
  %11682 = call float @dx.op.unary.f32(i32 7, float %11681)  ; Saturate(value)
  %11683 = icmp eq i32 %11678, 0
  %11684 = select i1 %11683, float 0.000000e+00, float %11682
  %11685 = icmp ult i32 %11678, 2
  %11686 = select i1 %11685, float 0.000000e+00, float %11682
  %11687 = add i32 %11678, -1
  %11688 = icmp ult i32 %11687, 2
  %11689 = select i1 %11688, float 1.000000e+00, float %11684
  %11690 = icmp ult i32 %11678, 4
  %11691 = select i1 %11690, float 0.000000e+00, float 1.000000e+00
  %11692 = and i32 %11678, -2
  %11693 = icmp eq i32 %11692, 2
  %11694 = icmp eq i32 %11678, 4
  %11695 = select i1 %11694, float 1.000000e+00, float %11691
  %11696 = or i1 %11694, %11693
  %11697 = select i1 %11696, float 1.000000e+00, float %11686
  %11698 = add i32 %11678, -3
  %11699 = icmp ult i32 %11698, 2
  %11700 = select i1 %11699, float 0.000000e+00, float %11689
  br label %11887

; <label>:11701                                   ; preds = %11612
  %11702 = uitofp i32 %11627 to float
  %11703 = fadd fast float %11702, -4.000000e+00
  %11704 = fmul fast float %11703, 0x3FB5555560000000
  %11705 = call float @dx.op.unary.f32(i32 7, float %11704)  ; Saturate(value)
  %11706 = icmp eq i32 %11627, 0
  %11707 = select i1 %11706, float 0.000000e+00, float %11705
  %11708 = icmp ult i32 %11627, 2
  %11709 = select i1 %11708, float 0.000000e+00, float %11705
  %11710 = add i32 %11627, -1
  %11711 = icmp ult i32 %11710, 2
  %11712 = select i1 %11711, float 1.000000e+00, float %11707
  %11713 = icmp ult i32 %11627, 4
  %11714 = select i1 %11713, float 0.000000e+00, float 1.000000e+00
  %11715 = and i32 %11627, -2
  %11716 = icmp eq i32 %11715, 2
  %11717 = icmp eq i32 %11627, 4
  %11718 = select i1 %11717, float 1.000000e+00, float %11714
  %11719 = or i1 %11717, %11716
  %11720 = select i1 %11719, float 1.000000e+00, float %11709
  %11721 = add i32 %11627, -3
  %11722 = icmp ult i32 %11721, 2
  %11723 = select i1 %11722, float 0.000000e+00, float %11712
  br label %11887

; <label>:11724                                   ; preds = %11612
  %11725 = uitofp i32 %11631 to float
  %11726 = fadd fast float %11725, -4.000000e+00
  %11727 = fmul fast float %11726, 0x3FB5555560000000
  %11728 = call float @dx.op.unary.f32(i32 7, float %11727)  ; Saturate(value)
  %11729 = icmp eq i32 %11631, 0
  %11730 = select i1 %11729, float 0.000000e+00, float %11728
  %11731 = icmp ult i32 %11631, 2
  %11732 = select i1 %11731, float 0.000000e+00, float %11728
  %11733 = add i32 %11631, -1
  %11734 = icmp ult i32 %11733, 2
  %11735 = select i1 %11734, float 1.000000e+00, float %11730
  %11736 = icmp ult i32 %11631, 4
  %11737 = select i1 %11736, float 0.000000e+00, float 1.000000e+00
  %11738 = and i32 %11631, -2
  %11739 = icmp eq i32 %11738, 2
  %11740 = icmp eq i32 %11631, 4
  %11741 = select i1 %11740, float 1.000000e+00, float %11737
  %11742 = or i1 %11740, %11739
  %11743 = select i1 %11742, float 1.000000e+00, float %11732
  %11744 = add i32 %11631, -3
  %11745 = icmp ult i32 %11744, 2
  %11746 = select i1 %11745, float 0.000000e+00, float %11735
  br label %11887

; <label>:11747                                   ; preds = %11612
  %11748 = uitofp i32 %11635 to float
  %11749 = fadd fast float %11748, -4.000000e+00
  %11750 = fmul fast float %11749, 0x3FB5555560000000
  %11751 = call float @dx.op.unary.f32(i32 7, float %11750)  ; Saturate(value)
  %11752 = icmp eq i32 %11635, 0
  %11753 = select i1 %11752, float 0.000000e+00, float %11751
  %11754 = icmp ult i32 %11635, 2
  %11755 = select i1 %11754, float 0.000000e+00, float %11751
  %11756 = add i32 %11635, -1
  %11757 = icmp ult i32 %11756, 2
  %11758 = select i1 %11757, float 1.000000e+00, float %11753
  %11759 = icmp ult i32 %11635, 4
  %11760 = select i1 %11759, float 0.000000e+00, float 1.000000e+00
  %11761 = and i32 %11635, -2
  %11762 = icmp eq i32 %11761, 2
  %11763 = icmp eq i32 %11635, 4
  %11764 = select i1 %11763, float 1.000000e+00, float %11760
  %11765 = or i1 %11763, %11762
  %11766 = select i1 %11765, float 1.000000e+00, float %11755
  %11767 = add i32 %11635, -3
  %11768 = icmp ult i32 %11767, 2
  %11769 = select i1 %11768, float 0.000000e+00, float %11758
  br label %11887

; <label>:11770                                   ; preds = %11612
  %11771 = add i32 %11638, %11641
  %11772 = uitofp i32 %11771 to float
  %11773 = fadd fast float %11772, -4.000000e+00
  %11774 = fmul fast float %11773, 0x3FB5555560000000
  %11775 = call float @dx.op.unary.f32(i32 7, float %11774)  ; Saturate(value)
  %11776 = icmp eq i32 %11771, 0
  %11777 = select i1 %11776, float 0.000000e+00, float %11775
  %11778 = icmp ult i32 %11771, 2
  %11779 = select i1 %11778, float 0.000000e+00, float %11775
  %11780 = add i32 %11771, -1
  %11781 = icmp ult i32 %11780, 2
  %11782 = select i1 %11781, float 1.000000e+00, float %11777
  %11783 = icmp ult i32 %11771, 4
  %11784 = select i1 %11783, float 0.000000e+00, float 1.000000e+00
  %11785 = and i32 %11771, -2
  %11786 = icmp eq i32 %11785, 2
  %11787 = icmp eq i32 %11771, 4
  %11788 = select i1 %11787, float 1.000000e+00, float %11784
  %11789 = or i1 %11787, %11786
  %11790 = select i1 %11789, float 1.000000e+00, float %11779
  %11791 = add i32 %11771, -3
  %11792 = icmp ult i32 %11791, 2
  %11793 = select i1 %11792, float 0.000000e+00, float %11782
  br label %11887

; <label>:11794                                   ; preds = %11612
  %11795 = uitofp i32 %11638 to float
  %11796 = fadd fast float %11795, -4.000000e+00
  %11797 = fmul fast float %11796, 0x3FB5555560000000
  %11798 = call float @dx.op.unary.f32(i32 7, float %11797)  ; Saturate(value)
  %11799 = icmp eq i32 %11638, 0
  %11800 = select i1 %11799, float 0.000000e+00, float %11798
  %11801 = icmp ult i32 %11638, 2
  %11802 = select i1 %11801, float 0.000000e+00, float %11798
  %11803 = add i32 %11638, -1
  %11804 = icmp ult i32 %11803, 2
  %11805 = select i1 %11804, float 1.000000e+00, float %11800
  %11806 = icmp ult i32 %11638, 4
  %11807 = select i1 %11806, float 0.000000e+00, float 1.000000e+00
  %11808 = and i32 %11638, -2
  %11809 = icmp eq i32 %11808, 2
  %11810 = icmp eq i32 %11638, 4
  %11811 = select i1 %11810, float 1.000000e+00, float %11807
  %11812 = or i1 %11810, %11809
  %11813 = select i1 %11812, float 1.000000e+00, float %11802
  %11814 = add i32 %11638, -3
  %11815 = icmp ult i32 %11814, 2
  %11816 = select i1 %11815, float 0.000000e+00, float %11805
  br label %11887

; <label>:11817                                   ; preds = %11612
  %11818 = uitofp i32 %11641 to float
  %11819 = fadd fast float %11818, -4.000000e+00
  %11820 = fmul fast float %11819, 0x3FB5555560000000
  %11821 = call float @dx.op.unary.f32(i32 7, float %11820)  ; Saturate(value)
  %11822 = icmp eq i32 %11641, 0
  %11823 = select i1 %11822, float 0.000000e+00, float %11821
  %11824 = icmp ult i32 %11641, 2
  %11825 = select i1 %11824, float 0.000000e+00, float %11821
  %11826 = add i32 %11641, -1
  %11827 = icmp ult i32 %11826, 2
  %11828 = select i1 %11827, float 1.000000e+00, float %11823
  %11829 = icmp ult i32 %11641, 4
  %11830 = select i1 %11829, float 0.000000e+00, float 1.000000e+00
  %11831 = and i32 %11641, -2
  %11832 = icmp eq i32 %11831, 2
  %11833 = icmp eq i32 %11641, 4
  %11834 = select i1 %11833, float 1.000000e+00, float %11830
  %11835 = or i1 %11833, %11832
  %11836 = select i1 %11835, float 1.000000e+00, float %11825
  %11837 = add i32 %11641, -3
  %11838 = icmp ult i32 %11837, 2
  %11839 = select i1 %11838, float 0.000000e+00, float %11828
  br label %11887

; <label>:11840                                   ; preds = %11612
  %11841 = lshr i32 %9190, 8
  %11842 = and i32 %11841, 255
  %11843 = uitofp i32 %11842 to float
  %11844 = fptoui float %11843 to i32
  %11845 = uitofp i32 %11844 to float
  %11846 = fcmp fast oge float %11845, 1.000000e+00
  %11847 = fcmp fast oge float %11845, 2.000000e+00
  %11848 = or i1 %11847, %11846
  %11849 = select i1 %11848, float 1.000000e+00, float 0.000000e+00
  %11850 = fcmp fast oge float %11845, 3.000000e+00
  %11851 = or i1 %11850, %11847
  %11852 = fcmp fast oge float %11845, 4.000000e+00
  %11853 = or i1 %11852, %11851
  %11854 = select i1 %11853, float 1.000000e+00, float 0.000000e+00
  %11855 = or i1 %11852, %11850
  %11856 = fcmp fast oge float %11845, 5.000000e+00
  %11857 = or i1 %11856, %11852
  %11858 = select i1 %11857, float 1.000000e+00, float 0.000000e+00
  %11859 = select i1 %11856, float 0.000000e+00, float %11854
  %11860 = or i1 %11856, %11855
  %11861 = select i1 %11860, float 0.000000e+00, float %11849
  br label %11887

; <label>:11862                                   ; preds = %11612
  br label %11887

; <label>:11863                                   ; preds = %11612
  %11864 = uitofp i32 %11645 to float
  %11865 = fadd fast float %11864, -4.000000e+00
  %11866 = fmul fast float %11865, 0x3FB5555560000000
  %11867 = call float @dx.op.unary.f32(i32 7, float %11866)  ; Saturate(value)
  %11868 = icmp eq i32 %11645, 0
  %11869 = select i1 %11868, float 0.000000e+00, float %11867
  %11870 = icmp ult i32 %11645, 2
  %11871 = select i1 %11870, float 0.000000e+00, float %11867
  %11872 = add i32 %11645, -1
  %11873 = icmp ult i32 %11872, 2
  %11874 = select i1 %11873, float 1.000000e+00, float %11869
  %11875 = icmp ult i32 %11645, 4
  %11876 = select i1 %11875, float 0.000000e+00, float 1.000000e+00
  %11877 = and i32 %11645, -2
  %11878 = icmp eq i32 %11877, 2
  %11879 = icmp eq i32 %11645, 4
  %11880 = select i1 %11879, float 1.000000e+00, float %11876
  %11881 = or i1 %11879, %11878
  %11882 = select i1 %11881, float 1.000000e+00, float %11871
  %11883 = add i32 %11645, -3
  %11884 = icmp ult i32 %11883, 2
  %11885 = select i1 %11884, float 0.000000e+00, float %11874
  br label %11887

; <label>:11886                                   ; preds = %11612
  br label %11887

; <label>:11887                                   ; preds = %11886, %11863, %11862, %11840, %11817, %11794, %11770, %11747, %11724, %11701, %11676, %11649, %11612
  %11888 = phi float [ %11622, %11612 ], [ 5.000000e-01, %11886 ], [ %11880, %11863 ], [ 1.000000e+00, %11862 ], [ %11858, %11840 ], [ %11834, %11817 ], [ %11811, %11794 ], [ %11788, %11770 ], [ %11764, %11747 ], [ %11741, %11724 ], [ %11718, %11701 ], [ %11695, %11676 ], [ %11670, %11649 ]
  %11889 = phi float [ %11623, %11612 ], [ 5.000000e-01, %11886 ], [ %11882, %11863 ], [ 0.000000e+00, %11862 ], [ %11859, %11840 ], [ %11836, %11817 ], [ %11813, %11794 ], [ %11790, %11770 ], [ %11766, %11747 ], [ %11743, %11724 ], [ %11720, %11701 ], [ %11697, %11676 ], [ %11672, %11649 ]
  %11890 = phi float [ %11624, %11612 ], [ 5.000000e-01, %11886 ], [ %11885, %11863 ], [ 0.000000e+00, %11862 ], [ %11861, %11840 ], [ %11839, %11817 ], [ %11816, %11794 ], [ %11793, %11770 ], [ %11769, %11747 ], [ %11746, %11724 ], [ %11723, %11701 ], [ %11700, %11676 ], [ %11675, %11649 ]
  %11891 = fsub fast float %11888, %11622
  %11892 = fsub fast float %11889, %11623
  %11893 = fsub fast float %11890, %11624
  %11894 = fmul fast float %11891, %11552
  %11895 = fmul fast float %11892, %11552
  %11896 = fmul fast float %11893, %11552
  %11897 = fadd fast float %11894, %11622
  %11898 = fadd fast float %11895, %11623
  %11899 = fadd fast float %11896, %11624
  %11900 = and i32 %11307, 255
  %11901 = uitofp i32 %11900 to float
  %11902 = fptoui float %11901 to i32
  %11903 = icmp ult i32 %11902, 25
  br i1 %11903, label %11904, label %11909

; <label>:11904                                   ; preds = %11887
  %11905 = trunc i32 %11902 to i25
  %11906 = lshr i25 1048574, %11905
  %11907 = and i25 %11906, 1
  %11908 = icmp ne i25 %11907, 0
  br label %11909

; <label>:11909                                   ; preds = %11904, %11887
  %11910 = phi i1 [ %11908, %11904 ], [ true, %11887 ]
  %11911 = or i32 %11565, %11311
  %11912 = or i32 %11911, %11648
  %11913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %11914 = extractvalue %dx.types.CBufRet.f32 %11913, 3
  %11915 = bitcast float %11914 to i32
  %11916 = and i32 %11915, 255
  %11917 = uitofp i32 %11916 to float
  %11918 = fptoui float %11917 to i32
  %11919 = or i32 %11912, %11918
  %11920 = icmp ne i32 %11919, 0
  %11921 = or i1 %11910, %11920
  %11922 = extractvalue %dx.types.CBufRet.f32 %11913, 0
  %11923 = bitcast float %11922 to i32
  %11924 = icmp slt i32 %11923, 0
  %11925 = or i1 %11924, %11921
  br i1 %11925, label %11926, label %11934

; <label>:11926                                   ; preds = %11909
  %11927 = icmp eq i32 %11648, 14
  %11928 = select i1 %11927, float 0.000000e+00, float 1.000000e+00
  %11929 = icmp eq i32 %11902, 0
  br i1 %11929, label %11934, label %11930

; <label>:11930                                   ; preds = %11926
  %11931 = fmul fast float %11928, %11897
  %11932 = fmul fast float %11928, %11898
  %11933 = fmul fast float %11928, %11899
  br label %11934

; <label>:11934                                   ; preds = %11930, %11926, %11909
  %11935 = phi float [ %11931, %11930 ], [ %11897, %11926 ], [ %11897, %11909 ]
  %11936 = phi float [ %11932, %11930 ], [ %11898, %11926 ], [ %11898, %11909 ]
  %11937 = phi float [ %11933, %11930 ], [ %11899, %11926 ], [ %11899, %11909 ]
  %11938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %11939 = extractvalue %dx.types.CBufRet.f32 %11938, 2
  %11940 = extractvalue %dx.types.CBufRet.f32 %11938, 3
  %11941 = fmul fast float %11939, %93
  %11942 = fmul fast float %11940, %94
  %11943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %11944 = extractvalue %dx.types.CBufRet.f32 %11943, 0
  %11945 = fcmp fast oge float %11941, %11944
  %11946 = extractvalue %dx.types.CBufRet.f32 %11943, 2
  %11947 = fcmp fast ole float %11941, %11946
  %11948 = and i1 %11945, %11947
  %11949 = extractvalue %dx.types.CBufRet.f32 %11943, 1
  %11950 = fcmp fast oge float %11942, %11949
  %11951 = and i1 %11948, %11950
  %11952 = extractvalue %dx.types.CBufRet.f32 %11943, 3
  %11953 = fcmp fast ole float %11942, %11952
  %11954 = and i1 %11951, %11953
  %11955 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %11956 = extractvalue %dx.types.CBufRet.i32 %11955, 0
  %11957 = icmp ne i32 %11956, 0
  %11958 = and i1 %11957, %11954
  br i1 %11958, label %11959, label %12974

; <label>:11959                                   ; preds = %11934
  %11960 = icmp eq i32 %11956, 1
  br i1 %11960, label %11961, label %12000

; <label>:11961                                   ; preds = %11959
  %11962 = uitofp i32 %590 to float
  %11963 = fmul fast float %11962, 0x3FE3C6EF40000000
  %11964 = call float @dx.op.unary.f32(i32 22, float %11963)  ; Frc(value)
  %11965 = fadd fast float %11964, 0x3FE5555560000000
  %11966 = fadd fast float %11964, 0x3FD5555560000000
  %11967 = fsub fast float -0.000000e+00, %11964
  %11968 = fsub fast float -0.000000e+00, %11965
  %11969 = fsub fast float -0.000000e+00, %11966
  %11970 = fcmp fast oge float %11964, %11967
  %11971 = fcmp fast oge float %11965, %11968
  %11972 = fcmp fast oge float %11966, %11969
  %11973 = call float @dx.op.unary.f32(i32 6, float %11964)  ; FAbs(value)
  %11974 = call float @dx.op.unary.f32(i32 6, float %11965)  ; FAbs(value)
  %11975 = call float @dx.op.unary.f32(i32 6, float %11966)  ; FAbs(value)
  %11976 = call float @dx.op.unary.f32(i32 22, float %11973)  ; Frc(value)
  %11977 = call float @dx.op.unary.f32(i32 22, float %11974)  ; Frc(value)
  %11978 = call float @dx.op.unary.f32(i32 22, float %11975)  ; Frc(value)
  %11979 = fsub fast float -0.000000e+00, %11976
  %11980 = fsub fast float -0.000000e+00, %11977
  %11981 = fsub fast float -0.000000e+00, %11978
  %11982 = select i1 %11970, float %11976, float %11979
  %11983 = select i1 %11971, float %11977, float %11980
  %11984 = select i1 %11972, float %11978, float %11981
  %11985 = fmul fast float %11982, 6.000000e+00
  %11986 = fmul fast float %11983, 6.000000e+00
  %11987 = fmul fast float %11984, 6.000000e+00
  %11988 = fadd fast float %11985, -3.000000e+00
  %11989 = fadd fast float %11986, -3.000000e+00
  %11990 = fadd fast float %11987, -3.000000e+00
  %11991 = call float @dx.op.unary.f32(i32 6, float %11988)  ; FAbs(value)
  %11992 = call float @dx.op.unary.f32(i32 6, float %11989)  ; FAbs(value)
  %11993 = call float @dx.op.unary.f32(i32 6, float %11990)  ; FAbs(value)
  %11994 = fadd fast float %11991, -1.000000e+00
  %11995 = fadd fast float %11992, -1.000000e+00
  %11996 = fadd fast float %11993, -1.000000e+00
  %11997 = call float @dx.op.unary.f32(i32 7, float %11994)  ; Saturate(value)
  %11998 = call float @dx.op.unary.f32(i32 7, float %11995)  ; Saturate(value)
  %11999 = call float @dx.op.unary.f32(i32 7, float %11996)  ; Saturate(value)
  br label %12974

; <label>:12000                                   ; preds = %11959
  %12001 = icmp eq i32 %11956, 2
  br i1 %12001, label %12974, label %12002

; <label>:12002                                   ; preds = %12000
  %12003 = icmp eq i32 %11956, 3
  %12004 = icmp eq i32 %11956, 26
  %12005 = or i1 %12003, %12004
  br i1 %12005, label %12006, label %12106

; <label>:12006                                   ; preds = %12002
  br i1 %12003, label %12007, label %12018

; <label>:12007                                   ; preds = %12006
  %12008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %12009 = extractvalue %dx.types.CBufRet.f32 %12008, 3
  %12010 = fsub fast float %570, %12009
  %12011 = fmul fast float %12010, 0x3FD5555560000000
  %12012 = call float @dx.op.unary.f32(i32 7, float %12011)  ; Saturate(value)
  %12013 = fmul fast float %12012, 6.300000e+01
  %12014 = fptoui float %12013 to i32
  %12015 = uitofp i32 %12014 to float
  %12016 = fmul fast float %12015, 0x3FA8618620000000
  %12017 = fadd fast float %12016, %12009
  br label %12018

; <label>:12018                                   ; preds = %12007, %12006
  %12019 = phi float [ %12017, %12007 ], [ 0.000000e+00, %12006 ]
  %12020 = call float @dx.op.unary.f32(i32 27, float %12019)  ; Round_ni(value)
  %12021 = fadd fast float %12020, 1.000000e+00
  %12022 = call float @dx.op.unary.f32(i32 22, float %12019)  ; Frc(value)
  %12023 = fmul fast float %12020, 0x3FE3C6EF40000000
  %12024 = call float @dx.op.unary.f32(i32 22, float %12023)  ; Frc(value)
  %12025 = fadd fast float %12024, 0x3FE5555560000000
  %12026 = fadd fast float %12024, 0x3FD5555560000000
  %12027 = fsub fast float -0.000000e+00, %12024
  %12028 = fsub fast float -0.000000e+00, %12025
  %12029 = fsub fast float -0.000000e+00, %12026
  %12030 = fcmp fast oge float %12024, %12027
  %12031 = fcmp fast oge float %12025, %12028
  %12032 = fcmp fast oge float %12026, %12029
  %12033 = call float @dx.op.unary.f32(i32 6, float %12024)  ; FAbs(value)
  %12034 = call float @dx.op.unary.f32(i32 6, float %12025)  ; FAbs(value)
  %12035 = call float @dx.op.unary.f32(i32 6, float %12026)  ; FAbs(value)
  %12036 = call float @dx.op.unary.f32(i32 22, float %12033)  ; Frc(value)
  %12037 = call float @dx.op.unary.f32(i32 22, float %12034)  ; Frc(value)
  %12038 = call float @dx.op.unary.f32(i32 22, float %12035)  ; Frc(value)
  %12039 = fsub fast float -0.000000e+00, %12036
  %12040 = fsub fast float -0.000000e+00, %12037
  %12041 = fsub fast float -0.000000e+00, %12038
  %12042 = select i1 %12030, float %12036, float %12039
  %12043 = select i1 %12031, float %12037, float %12040
  %12044 = select i1 %12032, float %12038, float %12041
  %12045 = fmul fast float %12042, 6.000000e+00
  %12046 = fmul fast float %12043, 6.000000e+00
  %12047 = fmul fast float %12044, 6.000000e+00
  %12048 = fadd fast float %12045, -3.000000e+00
  %12049 = fadd fast float %12046, -3.000000e+00
  %12050 = fadd fast float %12047, -3.000000e+00
  %12051 = call float @dx.op.unary.f32(i32 6, float %12048)  ; FAbs(value)
  %12052 = call float @dx.op.unary.f32(i32 6, float %12049)  ; FAbs(value)
  %12053 = call float @dx.op.unary.f32(i32 6, float %12050)  ; FAbs(value)
  %12054 = fadd fast float %12051, -1.000000e+00
  %12055 = fadd fast float %12052, -1.000000e+00
  %12056 = fadd fast float %12053, -1.000000e+00
  %12057 = call float @dx.op.unary.f32(i32 7, float %12054)  ; Saturate(value)
  %12058 = call float @dx.op.unary.f32(i32 7, float %12055)  ; Saturate(value)
  %12059 = call float @dx.op.unary.f32(i32 7, float %12056)  ; Saturate(value)
  %12060 = fmul fast float %12021, 0x3FE3C6EF40000000
  %12061 = call float @dx.op.unary.f32(i32 22, float %12060)  ; Frc(value)
  %12062 = fadd fast float %12061, 0x3FE5555560000000
  %12063 = fadd fast float %12061, 0x3FD5555560000000
  %12064 = fsub fast float -0.000000e+00, %12061
  %12065 = fsub fast float -0.000000e+00, %12062
  %12066 = fsub fast float -0.000000e+00, %12063
  %12067 = fcmp fast oge float %12061, %12064
  %12068 = fcmp fast oge float %12062, %12065
  %12069 = fcmp fast oge float %12063, %12066
  %12070 = call float @dx.op.unary.f32(i32 6, float %12061)  ; FAbs(value)
  %12071 = call float @dx.op.unary.f32(i32 6, float %12062)  ; FAbs(value)
  %12072 = call float @dx.op.unary.f32(i32 6, float %12063)  ; FAbs(value)
  %12073 = call float @dx.op.unary.f32(i32 22, float %12070)  ; Frc(value)
  %12074 = call float @dx.op.unary.f32(i32 22, float %12071)  ; Frc(value)
  %12075 = call float @dx.op.unary.f32(i32 22, float %12072)  ; Frc(value)
  %12076 = fsub fast float -0.000000e+00, %12073
  %12077 = fsub fast float -0.000000e+00, %12074
  %12078 = fsub fast float -0.000000e+00, %12075
  %12079 = select i1 %12067, float %12073, float %12076
  %12080 = select i1 %12068, float %12074, float %12077
  %12081 = select i1 %12069, float %12075, float %12078
  %12082 = fmul fast float %12079, 6.000000e+00
  %12083 = fmul fast float %12080, 6.000000e+00
  %12084 = fmul fast float %12081, 6.000000e+00
  %12085 = fadd fast float %12082, -3.000000e+00
  %12086 = fadd fast float %12083, -3.000000e+00
  %12087 = fadd fast float %12084, -3.000000e+00
  %12088 = call float @dx.op.unary.f32(i32 6, float %12085)  ; FAbs(value)
  %12089 = call float @dx.op.unary.f32(i32 6, float %12086)  ; FAbs(value)
  %12090 = call float @dx.op.unary.f32(i32 6, float %12087)  ; FAbs(value)
  %12091 = fadd fast float %12088, -1.000000e+00
  %12092 = fadd fast float %12089, -1.000000e+00
  %12093 = fadd fast float %12090, -1.000000e+00
  %12094 = call float @dx.op.unary.f32(i32 7, float %12091)  ; Saturate(value)
  %12095 = call float @dx.op.unary.f32(i32 7, float %12092)  ; Saturate(value)
  %12096 = call float @dx.op.unary.f32(i32 7, float %12093)  ; Saturate(value)
  %12097 = fsub fast float %12094, %12057
  %12098 = fsub fast float %12095, %12058
  %12099 = fsub fast float %12096, %12059
  %12100 = fmul fast float %12097, %12022
  %12101 = fmul fast float %12098, %12022
  %12102 = fmul fast float %12099, %12022
  %12103 = fadd fast float %12100, %12057
  %12104 = fadd fast float %12101, %12058
  %12105 = fadd fast float %12102, %12059
  br label %12974

; <label>:12106                                   ; preds = %12002
  %12107 = and i32 %11956, -2
  %12108 = icmp eq i32 %12107, 4
  %12109 = icmp eq i32 %11956, 6
  %12110 = or i1 %12108, %12109
  br i1 %12110, label %12974, label %12111

; <label>:12111                                   ; preds = %12106
  %12112 = icmp eq i32 %11956, 7
  br i1 %12112, label %12974, label %12113

; <label>:12113                                   ; preds = %12111
  %12114 = icmp eq i32 %11956, 8
  br i1 %12114, label %12974, label %12115

; <label>:12115                                   ; preds = %12113
  %12116 = icmp eq i32 %11956, 9
  br i1 %12116, label %12117, label %12129

; <label>:12117                                   ; preds = %12115
  %12118 = fcmp fast ogt float %743, 0.000000e+00
  %12119 = call float @dx.op.dot2.f32(i32 54, float %738, float %739, float %738, float %739)  ; Dot2(ax,ay,bx,by)
  %12120 = call float @dx.op.unary.f32(i32 25, float %12119)  ; Rsqrt(value)
  %12121 = fmul fast float %738, 5.000000e-01
  %12122 = fmul fast float %12121, %12120
  %12123 = fmul fast float %739, 5.000000e-01
  %12124 = fmul fast float %12123, %12120
  %12125 = fadd fast float %12122, 5.000000e-01
  %12126 = select i1 %12118, float %12125, float 5.000000e-01
  %12127 = fadd fast float %12124, 5.000000e-01
  %12128 = select i1 %12118, float %12127, float 5.000000e-01
  br label %12974

; <label>:12129                                   ; preds = %12115
  %12130 = icmp eq i32 %11956, 10
  br i1 %12130, label %12131, label %12133

; <label>:12131                                   ; preds = %12129
  %12132 = fmul fast float %743, 0x3F747AE140000000
  br label %12974

; <label>:12133                                   ; preds = %12129
  %12134 = icmp eq i32 %11956, 11
  br i1 %12134, label %12974, label %12135

; <label>:12135                                   ; preds = %12133
  %12136 = icmp eq i32 %11956, 12
  br i1 %12136, label %12974, label %12137

; <label>:12137                                   ; preds = %12135
  %12138 = icmp eq i32 %11956, 13
  br i1 %12138, label %12974, label %12139

; <label>:12139                                   ; preds = %12137
  %12140 = icmp eq i32 %11956, 14
  br i1 %12140, label %12974, label %12141

; <label>:12141                                   ; preds = %12139
  %12142 = icmp eq i32 %11956, 15
  br i1 %12142, label %12974, label %12143

; <label>:12143                                   ; preds = %12141
  %12144 = icmp eq i32 %11956, 16
  br i1 %12144, label %12974, label %12145

; <label>:12145                                   ; preds = %12143
  %12146 = icmp eq i32 %11956, 17
  br i1 %12146, label %12974, label %12147

; <label>:12147                                   ; preds = %12145
  %12148 = icmp eq i32 %11956, 18
  br i1 %12148, label %12974, label %12149

; <label>:12149                                   ; preds = %12147
  %12150 = icmp eq i32 %11956, 19
  br i1 %12150, label %12974, label %12151

; <label>:12151                                   ; preds = %12149
  %12152 = icmp eq i32 %11956, 20
  br i1 %12152, label %12153, label %12160

; <label>:12153                                   ; preds = %12151
  %12154 = fmul fast float %2376, 5.000000e-01
  %12155 = fmul fast float %2377, 5.000000e-01
  %12156 = fmul fast float %2378, 5.000000e-01
  %12157 = fadd fast float %12154, 5.000000e-01
  %12158 = fadd fast float %12155, 5.000000e-01
  %12159 = fadd fast float %12156, 5.000000e-01
  br label %12974

; <label>:12160                                   ; preds = %12151
  %12161 = and i32 %11956, -9
  %12162 = icmp eq i32 %12161, 21
  br i1 %12162, label %12974, label %12163

; <label>:12163                                   ; preds = %12160
  %12164 = icmp eq i32 %11956, 22
  %12165 = icmp eq i32 %11956, 38
  %12166 = or i1 %12164, %12165
  br i1 %12166, label %12167, label %12281

; <label>:12167                                   ; preds = %12163
  %12168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %12169 = extractvalue %dx.types.CBufRet.f32 %12168, 0
  %12170 = extractvalue %dx.types.CBufRet.f32 %12168, 1
  %12171 = extractvalue %dx.types.CBufRet.f32 %12168, 2
  %12172 = fadd fast float %12169, %565
  %12173 = fadd fast float %12170, %566
  %12174 = fadd fast float %12171, %567
  %12175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %12176 = extractvalue %dx.types.CBufRet.f32 %12175, 0
  %12177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %12178 = extractvalue %dx.types.CBufRet.f32 %12177, 0
  %12179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %12180 = extractvalue %dx.types.CBufRet.f32 %12179, 0
  %12181 = extractvalue %dx.types.CBufRet.f32 %12175, 1
  %12182 = extractvalue %dx.types.CBufRet.f32 %12177, 1
  %12183 = extractvalue %dx.types.CBufRet.f32 %12179, 1
  %12184 = extractvalue %dx.types.CBufRet.f32 %12175, 3
  %12185 = extractvalue %dx.types.CBufRet.f32 %12177, 3
  %12186 = extractvalue %dx.types.CBufRet.f32 %12179, 3
  %12187 = fadd fast float %12172, %12184
  %12188 = fadd fast float %12173, %12185
  %12189 = fadd fast float %12174, %12186
  %12190 = fmul fast float %12187, %12176
  %12191 = call float @dx.op.tertiary.f32(i32 46, float %12188, float %12178, float %12190)  ; FMad(a,b,c)
  %12192 = call float @dx.op.tertiary.f32(i32 46, float %12189, float %12180, float %12191)  ; FMad(a,b,c)
  %12193 = fmul fast float %12187, %12181
  %12194 = call float @dx.op.tertiary.f32(i32 46, float %12188, float %12182, float %12193)  ; FMad(a,b,c)
  %12195 = call float @dx.op.tertiary.f32(i32 46, float %12189, float %12183, float %12194)  ; FMad(a,b,c)
  %12196 = fsub fast float %12192, %12184
  %12197 = fsub fast float %12195, %12185
  %12198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %12199 = extractvalue %dx.types.CBufRet.f32 %12198, 0
  %12200 = extractvalue %dx.types.CBufRet.f32 %12198, 1
  %12201 = fsub fast float %12196, %12199
  %12202 = fsub fast float %12197, %12200
  %12203 = fmul fast float %12201, %12201
  %12204 = fmul fast float %12202, %12202
  %12205 = fadd fast float %12203, %12204
  %12206 = call float @dx.op.unary.f32(i32 24, float %12205)  ; Sqrt(value)
  %12207 = extractvalue %dx.types.CBufRet.f32 %12198, 2
  %12208 = fcmp fast olt float %12206, %12207
  br i1 %12208, label %12209, label %12974

; <label>:12209                                   ; preds = %12167
  %12210 = fadd fast float %12201, %12207
  %12211 = fadd fast float %12202, %12207
  %12212 = extractvalue %dx.types.CBufRet.f32 %12198, 3
  %12213 = fmul fast float %12210, %12212
  %12214 = fmul fast float %12211, %12212
  %12215 = call float @dx.op.unary.f32(i32 7, float %12213)  ; Saturate(value)
  %12216 = call float @dx.op.unary.f32(i32 7, float %12214)  ; Saturate(value)
  %12217 = fsub fast float 1.000000e+00, %12215
  %12218 = fsub fast float 1.000000e+00, %12216
  %12219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %65, float %12217, float %12218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12220 = extractvalue %dx.types.ResRet.f32 %12219, 0
  %12221 = fcmp fast ugt float %12220, 0.000000e+00
  br i1 %12221, label %12222, label %12974

; <label>:12222                                   ; preds = %12209
  br i1 %12164, label %12223, label %12228

; <label>:12223                                   ; preds = %12222
  %12224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %65, float %12217, float %12218, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %12225 = extractvalue %dx.types.ResRet.f32 %12224, 0
  %12226 = extractvalue %dx.types.ResRet.f32 %12224, 1
  %12227 = extractvalue %dx.types.ResRet.f32 %12224, 2
  br label %12974

; <label>:12228                                   ; preds = %12222
  %12229 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %56, i32 0)  ; GetDimensions(handle,mipLevel)
  %12230 = extractvalue %dx.types.Dimensions %12229, 0
  %12231 = sitofp i32 %12230 to float
  %12232 = extractvalue %dx.types.Dimensions %12229, 1
  %12233 = sitofp i32 %12232 to float
  %12234 = fmul fast float %12231, %12217
  %12235 = fmul fast float %12233, %12218
  %12236 = call float @dx.op.unary.f32(i32 27, float %12234)  ; Round_ni(value)
  %12237 = call float @dx.op.unary.f32(i32 27, float %12235)  ; Round_ni(value)
  %12238 = fptoui float %12231 to i32
  %12239 = uitofp i32 %12238 to float
  %12240 = fmul fast float %12239, %12237
  %12241 = fadd fast float %12240, %12236
  %12242 = fptoui float %12241 to i32
  %12243 = uitofp i32 %12242 to float
  %12244 = fmul fast float %12243, 0x3FE3C6EF40000000
  %12245 = call float @dx.op.unary.f32(i32 22, float %12244)  ; Frc(value)
  %12246 = fadd fast float %12245, 0x3FE5555560000000
  %12247 = fadd fast float %12245, 0x3FD5555560000000
  %12248 = fsub fast float -0.000000e+00, %12245
  %12249 = fsub fast float -0.000000e+00, %12246
  %12250 = fsub fast float -0.000000e+00, %12247
  %12251 = fcmp fast oge float %12245, %12248
  %12252 = fcmp fast oge float %12246, %12249
  %12253 = fcmp fast oge float %12247, %12250
  %12254 = call float @dx.op.unary.f32(i32 6, float %12245)  ; FAbs(value)
  %12255 = call float @dx.op.unary.f32(i32 6, float %12246)  ; FAbs(value)
  %12256 = call float @dx.op.unary.f32(i32 6, float %12247)  ; FAbs(value)
  %12257 = call float @dx.op.unary.f32(i32 22, float %12254)  ; Frc(value)
  %12258 = call float @dx.op.unary.f32(i32 22, float %12255)  ; Frc(value)
  %12259 = call float @dx.op.unary.f32(i32 22, float %12256)  ; Frc(value)
  %12260 = fsub fast float -0.000000e+00, %12257
  %12261 = fsub fast float -0.000000e+00, %12258
  %12262 = fsub fast float -0.000000e+00, %12259
  %12263 = select i1 %12251, float %12257, float %12260
  %12264 = select i1 %12252, float %12258, float %12261
  %12265 = select i1 %12253, float %12259, float %12262
  %12266 = fmul fast float %12263, 6.000000e+00
  %12267 = fmul fast float %12264, 6.000000e+00
  %12268 = fmul fast float %12265, 6.000000e+00
  %12269 = fadd fast float %12266, -3.000000e+00
  %12270 = fadd fast float %12267, -3.000000e+00
  %12271 = fadd fast float %12268, -3.000000e+00
  %12272 = call float @dx.op.unary.f32(i32 6, float %12269)  ; FAbs(value)
  %12273 = call float @dx.op.unary.f32(i32 6, float %12270)  ; FAbs(value)
  %12274 = call float @dx.op.unary.f32(i32 6, float %12271)  ; FAbs(value)
  %12275 = fadd fast float %12272, -1.000000e+00
  %12276 = fadd fast float %12273, -1.000000e+00
  %12277 = fadd fast float %12274, -1.000000e+00
  %12278 = call float @dx.op.unary.f32(i32 7, float %12275)  ; Saturate(value)
  %12279 = call float @dx.op.unary.f32(i32 7, float %12276)  ; Saturate(value)
  %12280 = call float @dx.op.unary.f32(i32 7, float %12277)  ; Saturate(value)
  br label %12974

; <label>:12281                                   ; preds = %12163
  %12282 = icmp eq i32 %11956, 39
  br i1 %12282, label %12283, label %12387

; <label>:12283                                   ; preds = %12281
  %12284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %12285 = extractvalue %dx.types.CBufRet.f32 %12284, 0
  %12286 = extractvalue %dx.types.CBufRet.f32 %12284, 1
  %12287 = extractvalue %dx.types.CBufRet.f32 %12284, 2
  %12288 = fadd fast float %12285, %565
  %12289 = fadd fast float %12286, %566
  %12290 = fadd fast float %12287, %567
  %12291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %12292 = extractvalue %dx.types.CBufRet.f32 %12291, 0
  %12293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %12294 = extractvalue %dx.types.CBufRet.f32 %12293, 0
  %12295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %12296 = extractvalue %dx.types.CBufRet.f32 %12295, 0
  %12297 = extractvalue %dx.types.CBufRet.f32 %12291, 1
  %12298 = extractvalue %dx.types.CBufRet.f32 %12293, 1
  %12299 = extractvalue %dx.types.CBufRet.f32 %12295, 1
  %12300 = extractvalue %dx.types.CBufRet.f32 %12291, 3
  %12301 = extractvalue %dx.types.CBufRet.f32 %12293, 3
  %12302 = extractvalue %dx.types.CBufRet.f32 %12295, 3
  %12303 = fadd fast float %12288, %12300
  %12304 = fadd fast float %12289, %12301
  %12305 = fadd fast float %12290, %12302
  %12306 = fmul fast float %12303, %12292
  %12307 = call float @dx.op.tertiary.f32(i32 46, float %12304, float %12294, float %12306)  ; FMad(a,b,c)
  %12308 = call float @dx.op.tertiary.f32(i32 46, float %12305, float %12296, float %12307)  ; FMad(a,b,c)
  %12309 = fmul fast float %12303, %12297
  %12310 = call float @dx.op.tertiary.f32(i32 46, float %12304, float %12298, float %12309)  ; FMad(a,b,c)
  %12311 = call float @dx.op.tertiary.f32(i32 46, float %12305, float %12299, float %12310)  ; FMad(a,b,c)
  %12312 = fsub fast float %12308, %12300
  %12313 = fsub fast float %12311, %12301
  %12314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %12315 = extractvalue %dx.types.CBufRet.f32 %12314, 0
  %12316 = extractvalue %dx.types.CBufRet.f32 %12314, 1
  %12317 = fsub fast float %12312, %12315
  %12318 = fsub fast float %12313, %12316
  %12319 = fmul fast float %12317, %12317
  %12320 = fmul fast float %12318, %12318
  %12321 = fadd fast float %12319, %12320
  %12322 = call float @dx.op.unary.f32(i32 24, float %12321)  ; Sqrt(value)
  %12323 = extractvalue %dx.types.CBufRet.f32 %12314, 2
  %12324 = fcmp fast olt float %12322, %12323
  br i1 %12324, label %12325, label %12974

; <label>:12325                                   ; preds = %12283
  %12326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %54, i32 0)  ; GetDimensions(handle,mipLevel)
  %12327 = extractvalue %dx.types.Dimensions %12326, 0
  %12328 = sitofp i32 %12327 to float
  %12329 = extractvalue %dx.types.Dimensions %12326, 1
  %12330 = sitofp i32 %12329 to float
  %12331 = fadd fast float %12317, %12323
  %12332 = fadd fast float %12318, %12323
  %12333 = extractvalue %dx.types.CBufRet.f32 %12314, 3
  %12334 = fmul fast float %12331, %12333
  %12335 = fmul fast float %12332, %12333
  %12336 = call float @dx.op.unary.f32(i32 7, float %12334)  ; Saturate(value)
  %12337 = call float @dx.op.unary.f32(i32 7, float %12335)  ; Saturate(value)
  %12338 = fsub fast float 1.000000e+00, %12336
  %12339 = fsub fast float 1.000000e+00, %12337
  %12340 = fmul fast float %12338, %12328
  %12341 = fmul fast float %12339, %12330
  %12342 = call float @dx.op.unary.f32(i32 27, float %12340)  ; Round_ni(value)
  %12343 = call float @dx.op.unary.f32(i32 27, float %12341)  ; Round_ni(value)
  %12344 = fptoui float %12328 to i32
  %12345 = uitofp i32 %12344 to float
  %12346 = fmul fast float %12343, %12345
  %12347 = fadd fast float %12346, %12342
  %12348 = fptoui float %12347 to i32
  %12349 = uitofp i32 %12348 to float
  %12350 = fmul fast float %12349, 0x3FE3C6EF40000000
  %12351 = call float @dx.op.unary.f32(i32 22, float %12350)  ; Frc(value)
  %12352 = fadd fast float %12351, 0x3FE5555560000000
  %12353 = fadd fast float %12351, 0x3FD5555560000000
  %12354 = fsub fast float -0.000000e+00, %12351
  %12355 = fsub fast float -0.000000e+00, %12352
  %12356 = fsub fast float -0.000000e+00, %12353
  %12357 = fcmp fast oge float %12351, %12354
  %12358 = fcmp fast oge float %12352, %12355
  %12359 = fcmp fast oge float %12353, %12356
  %12360 = call float @dx.op.unary.f32(i32 6, float %12351)  ; FAbs(value)
  %12361 = call float @dx.op.unary.f32(i32 6, float %12352)  ; FAbs(value)
  %12362 = call float @dx.op.unary.f32(i32 6, float %12353)  ; FAbs(value)
  %12363 = call float @dx.op.unary.f32(i32 22, float %12360)  ; Frc(value)
  %12364 = call float @dx.op.unary.f32(i32 22, float %12361)  ; Frc(value)
  %12365 = call float @dx.op.unary.f32(i32 22, float %12362)  ; Frc(value)
  %12366 = fsub fast float -0.000000e+00, %12363
  %12367 = fsub fast float -0.000000e+00, %12364
  %12368 = fsub fast float -0.000000e+00, %12365
  %12369 = select i1 %12357, float %12363, float %12366
  %12370 = select i1 %12358, float %12364, float %12367
  %12371 = select i1 %12359, float %12365, float %12368
  %12372 = fmul fast float %12369, 6.000000e+00
  %12373 = fmul fast float %12370, 6.000000e+00
  %12374 = fmul fast float %12371, 6.000000e+00
  %12375 = fadd fast float %12372, -3.000000e+00
  %12376 = fadd fast float %12373, -3.000000e+00
  %12377 = fadd fast float %12374, -3.000000e+00
  %12378 = call float @dx.op.unary.f32(i32 6, float %12375)  ; FAbs(value)
  %12379 = call float @dx.op.unary.f32(i32 6, float %12376)  ; FAbs(value)
  %12380 = call float @dx.op.unary.f32(i32 6, float %12377)  ; FAbs(value)
  %12381 = fadd fast float %12378, -1.000000e+00
  %12382 = fadd fast float %12379, -1.000000e+00
  %12383 = fadd fast float %12380, -1.000000e+00
  %12384 = call float @dx.op.unary.f32(i32 7, float %12381)  ; Saturate(value)
  %12385 = call float @dx.op.unary.f32(i32 7, float %12382)  ; Saturate(value)
  %12386 = call float @dx.op.unary.f32(i32 7, float %12383)  ; Saturate(value)
  br label %12974

; <label>:12387                                   ; preds = %12281
  %12388 = icmp eq i32 %11956, 23
  br i1 %12388, label %12974, label %12389

; <label>:12389                                   ; preds = %12387
  %12390 = icmp eq i32 %11956, 24
  br i1 %12390, label %12391, label %12417

; <label>:12391                                   ; preds = %12389
  %12392 = and i32 %775, 255
  %12393 = uitofp i32 %12392 to float
  %12394 = fptoui float %12393 to i32
  %12395 = uitofp i32 %12394 to float
  %12396 = fadd fast float %12395, -4.000000e+00
  %12397 = fmul fast float %12396, 0x3FB5555560000000
  %12398 = call float @dx.op.unary.f32(i32 7, float %12397)  ; Saturate(value)
  %12399 = icmp eq i32 %12394, 0
  %12400 = select i1 %12399, float 0.000000e+00, float %12398
  %12401 = icmp ult i32 %12394, 2
  %12402 = select i1 %12401, float 0.000000e+00, float %12398
  %12403 = add i32 %12394, -1
  %12404 = icmp ult i32 %12403, 2
  %12405 = select i1 %12404, float 1.000000e+00, float %12400
  %12406 = icmp ult i32 %12394, 4
  %12407 = select i1 %12406, float 0.000000e+00, float 1.000000e+00
  %12408 = and i32 %12394, -2
  %12409 = icmp eq i32 %12408, 2
  %12410 = icmp eq i32 %12394, 4
  %12411 = select i1 %12410, float 1.000000e+00, float %12407
  %12412 = or i1 %12410, %12409
  %12413 = select i1 %12412, float 1.000000e+00, float %12402
  %12414 = add i32 %12394, -3
  %12415 = icmp ult i32 %12414, 2
  %12416 = select i1 %12415, float 0.000000e+00, float %12405
  br label %12974

; <label>:12417                                   ; preds = %12389
  %12418 = icmp eq i32 %11956, 25
  br i1 %12418, label %12419, label %12445

; <label>:12419                                   ; preds = %12417
  %12420 = and i32 %2382, 255
  %12421 = uitofp i32 %12420 to float
  %12422 = fptoui float %12421 to i32
  %12423 = uitofp i32 %12422 to float
  %12424 = fadd fast float %12423, -4.000000e+00
  %12425 = fmul fast float %12424, 0x3FB5555560000000
  %12426 = call float @dx.op.unary.f32(i32 7, float %12425)  ; Saturate(value)
  %12427 = icmp eq i32 %12422, 0
  %12428 = select i1 %12427, float 0.000000e+00, float %12426
  %12429 = icmp ult i32 %12422, 2
  %12430 = select i1 %12429, float 0.000000e+00, float %12426
  %12431 = add i32 %12422, -1
  %12432 = icmp ult i32 %12431, 2
  %12433 = select i1 %12432, float 1.000000e+00, float %12428
  %12434 = icmp ult i32 %12422, 4
  %12435 = select i1 %12434, float 0.000000e+00, float 1.000000e+00
  %12436 = and i32 %12422, -2
  %12437 = icmp eq i32 %12436, 2
  %12438 = icmp eq i32 %12422, 4
  %12439 = select i1 %12438, float 1.000000e+00, float %12435
  %12440 = or i1 %12438, %12437
  %12441 = select i1 %12440, float 1.000000e+00, float %12430
  %12442 = add i32 %12422, -3
  %12443 = icmp ult i32 %12442, 2
  %12444 = select i1 %12443, float 0.000000e+00, float %12433
  br label %12974

; <label>:12445                                   ; preds = %12417
  %12446 = icmp eq i32 %11956, 27
  br i1 %12446, label %12447, label %12502

; <label>:12447                                   ; preds = %12445
  %12448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %12449 = extractvalue %dx.types.CBufRet.f32 %12448, 2
  %12450 = fptoui float %12449 to i32
  %12451 = fptoui float %570 to i32
  %12452 = and i32 %12451, 31
  %12453 = lshr i32 %12450, %12452
  %12454 = uitofp i32 %12453 to float
  %12455 = fmul fast float %12454, %519
  %12456 = fmul fast float %12454, %520
  %12457 = call float @dx.op.unary.f32(i32 27, float %12455)  ; Round_ni(value)
  %12458 = call float @dx.op.unary.f32(i32 27, float %12456)  ; Round_ni(value)
  %12459 = fptoui float %12457 to i32
  %12460 = fptoui float %12458 to i32
  %12461 = fptoui float %12454 to i32
  %12462 = mul i32 %12461, %12460
  %12463 = add i32 %12462, %12459
  %12464 = uitofp i32 %12463 to float
  %12465 = fmul fast float %12464, 0x3FE3C6EF40000000
  %12466 = call float @dx.op.unary.f32(i32 22, float %12465)  ; Frc(value)
  %12467 = fadd fast float %12466, 0x3FE5555560000000
  %12468 = fadd fast float %12466, 0x3FD5555560000000
  %12469 = fsub fast float -0.000000e+00, %12466
  %12470 = fsub fast float -0.000000e+00, %12467
  %12471 = fsub fast float -0.000000e+00, %12468
  %12472 = fcmp fast oge float %12466, %12469
  %12473 = fcmp fast oge float %12467, %12470
  %12474 = fcmp fast oge float %12468, %12471
  %12475 = call float @dx.op.unary.f32(i32 6, float %12466)  ; FAbs(value)
  %12476 = call float @dx.op.unary.f32(i32 6, float %12467)  ; FAbs(value)
  %12477 = call float @dx.op.unary.f32(i32 6, float %12468)  ; FAbs(value)
  %12478 = call float @dx.op.unary.f32(i32 22, float %12475)  ; Frc(value)
  %12479 = call float @dx.op.unary.f32(i32 22, float %12476)  ; Frc(value)
  %12480 = call float @dx.op.unary.f32(i32 22, float %12477)  ; Frc(value)
  %12481 = fsub fast float -0.000000e+00, %12478
  %12482 = fsub fast float -0.000000e+00, %12479
  %12483 = fsub fast float -0.000000e+00, %12480
  %12484 = select i1 %12472, float %12478, float %12481
  %12485 = select i1 %12473, float %12479, float %12482
  %12486 = select i1 %12474, float %12480, float %12483
  %12487 = fmul fast float %12484, 6.000000e+00
  %12488 = fmul fast float %12485, 6.000000e+00
  %12489 = fmul fast float %12486, 6.000000e+00
  %12490 = fadd fast float %12487, -3.000000e+00
  %12491 = fadd fast float %12488, -3.000000e+00
  %12492 = fadd fast float %12489, -3.000000e+00
  %12493 = call float @dx.op.unary.f32(i32 6, float %12490)  ; FAbs(value)
  %12494 = call float @dx.op.unary.f32(i32 6, float %12491)  ; FAbs(value)
  %12495 = call float @dx.op.unary.f32(i32 6, float %12492)  ; FAbs(value)
  %12496 = fadd fast float %12493, -1.000000e+00
  %12497 = fadd fast float %12494, -1.000000e+00
  %12498 = fadd fast float %12495, -1.000000e+00
  %12499 = call float @dx.op.unary.f32(i32 7, float %12496)  ; Saturate(value)
  %12500 = call float @dx.op.unary.f32(i32 7, float %12497)  ; Saturate(value)
  %12501 = call float @dx.op.unary.f32(i32 7, float %12498)  ; Saturate(value)
  br label %12974

; <label>:12502                                   ; preds = %12445
  %12503 = icmp eq i32 %11956, 30
  br i1 %12503, label %12504, label %12544

; <label>:12504                                   ; preds = %12502
  %12505 = fcmp fast olt float %825, 0.000000e+00
  br i1 %12505, label %12974, label %12506

; <label>:12506                                   ; preds = %12504
  %12507 = fmul fast float %825, 0x3FE3C6EF40000000
  %12508 = call float @dx.op.unary.f32(i32 22, float %12507)  ; Frc(value)
  %12509 = fadd fast float %12508, 0x3FE5555560000000
  %12510 = fadd fast float %12508, 0x3FD5555560000000
  %12511 = fsub fast float -0.000000e+00, %12508
  %12512 = fsub fast float -0.000000e+00, %12509
  %12513 = fsub fast float -0.000000e+00, %12510
  %12514 = fcmp fast oge float %12508, %12511
  %12515 = fcmp fast oge float %12509, %12512
  %12516 = fcmp fast oge float %12510, %12513
  %12517 = call float @dx.op.unary.f32(i32 6, float %12508)  ; FAbs(value)
  %12518 = call float @dx.op.unary.f32(i32 6, float %12509)  ; FAbs(value)
  %12519 = call float @dx.op.unary.f32(i32 6, float %12510)  ; FAbs(value)
  %12520 = call float @dx.op.unary.f32(i32 22, float %12517)  ; Frc(value)
  %12521 = call float @dx.op.unary.f32(i32 22, float %12518)  ; Frc(value)
  %12522 = call float @dx.op.unary.f32(i32 22, float %12519)  ; Frc(value)
  %12523 = fsub fast float -0.000000e+00, %12520
  %12524 = fsub fast float -0.000000e+00, %12521
  %12525 = fsub fast float -0.000000e+00, %12522
  %12526 = select i1 %12514, float %12520, float %12523
  %12527 = select i1 %12515, float %12521, float %12524
  %12528 = select i1 %12516, float %12522, float %12525
  %12529 = fmul fast float %12526, 6.000000e+00
  %12530 = fmul fast float %12527, 6.000000e+00
  %12531 = fmul fast float %12528, 6.000000e+00
  %12532 = fadd fast float %12529, -3.000000e+00
  %12533 = fadd fast float %12530, -3.000000e+00
  %12534 = fadd fast float %12531, -3.000000e+00
  %12535 = call float @dx.op.unary.f32(i32 6, float %12532)  ; FAbs(value)
  %12536 = call float @dx.op.unary.f32(i32 6, float %12533)  ; FAbs(value)
  %12537 = call float @dx.op.unary.f32(i32 6, float %12534)  ; FAbs(value)
  %12538 = fadd fast float %12535, -1.000000e+00
  %12539 = fadd fast float %12536, -1.000000e+00
  %12540 = fadd fast float %12537, -1.000000e+00
  %12541 = call float @dx.op.unary.f32(i32 7, float %12538)  ; Saturate(value)
  %12542 = call float @dx.op.unary.f32(i32 7, float %12539)  ; Saturate(value)
  %12543 = call float @dx.op.unary.f32(i32 7, float %12540)  ; Saturate(value)
  br label %12974

; <label>:12544                                   ; preds = %12502
  %12545 = add i32 %11956, -31
  %12546 = icmp ult i32 %12545, 2
  br i1 %12546, label %12547, label %12555

; <label>:12547                                   ; preds = %12544
  %12548 = fcmp fast olt float %826, 0.000000e+00
  %12549 = call float @dx.op.unary.f32(i32 6, float %826)  ; FAbs(value)
  %12550 = fmul fast float %12549, 5.000000e-01
  %12551 = call float @dx.op.unary.f32(i32 7, float %12550)  ; Saturate(value)
  %12552 = select i1 %12548, float 0.000000e+00, float %12551
  %12553 = select i1 %12548, float %12551, float 0.000000e+00
  %12554 = fadd fast float %12551, 5.000000e-01
  br label %12974

; <label>:12555                                   ; preds = %12544
  %12556 = icmp eq i32 %11956, 33
  br i1 %12556, label %12557, label %12560

; <label>:12557                                   ; preds = %12555
  %12558 = icmp ne i32 %2526, 0
  %12559 = uitofp i1 %12558 to float
  br label %12974

; <label>:12560                                   ; preds = %12555
  %12561 = icmp eq i32 %11956, 34
  br i1 %12561, label %12562, label %12571

; <label>:12562                                   ; preds = %12560
  %12563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %69, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %12564 = extractvalue %dx.types.CBufRet.f32 %12563, 2
  %12565 = fsub fast float %567, %703
  %12566 = fadd fast float %12565, %12564
  %12567 = fcmp fast ult float %12566, %2525
  br i1 %12567, label %12568, label %12974

; <label>:12568                                   ; preds = %12562
  %12569 = fcmp fast ult float %12566, %2524
  br i1 %12569, label %12570, label %12974

; <label>:12570                                   ; preds = %12568
  br label %12974

; <label>:12571                                   ; preds = %12560
  %12572 = icmp eq i32 %11956, 36
  br i1 %12572, label %12573, label %12605

; <label>:12573                                   ; preds = %12571
  %12574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %69, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %12575 = extractvalue %dx.types.CBufRet.i32 %12574, 0
  %12576 = and i32 %12575, 2048
  %12577 = icmp ne i32 %12576, 0
  %12578 = call float @dx.op.binary.f32(i32 35, float %3193, float %3194)  ; FMax(a,b)
  %12579 = call float @dx.op.binary.f32(i32 35, float %3192, float %12578)  ; FMax(a,b)
  %12580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %12581 = extractvalue %dx.types.CBufRet.f32 %12580, 1
  %12582 = fcmp fast oge float %12579, %12581
  %12583 = and i1 %12577, %12582
  br i1 %12583, label %12584, label %12590

; <label>:12584                                   ; preds = %12573
  %12585 = fsub fast float 1.000000e+00, %11935
  %12586 = fmul fast float %12585, 5.000000e-01
  %12587 = fadd fast float %12586, %11935
  %12588 = fmul fast float %11936, 5.000000e-01
  %12589 = fmul fast float %11937, 5.000000e-01
  br label %12974

; <label>:12590                                   ; preds = %12573
  %12591 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3146, float %3147, float %3065, float %3066, float %3067)  ; Dot3(ax,ay,az,bx,by,bz)
  %12592 = and i32 %12575, 1024
  %12593 = icmp ne i32 %12592, 0
  %12594 = extractvalue %dx.types.CBufRet.f32 %12580, 2
  %12595 = fcmp fast ole float %12591, %12594
  %12596 = and i1 %12593, %12595
  br i1 %12596, label %12597, label %12974

; <label>:12597                                   ; preds = %12590
  %12598 = fsub fast float 1.000000e+00, %11935
  %12599 = fsub fast float 1.000000e+00, %11936
  %12600 = fmul fast float %12598, 5.000000e-01
  %12601 = fmul fast float %12599, 5.000000e-01
  %12602 = fadd fast float %12600, %11935
  %12603 = fadd fast float %12601, %11936
  %12604 = fmul fast float %11937, 5.000000e-01
  br label %12974

; <label>:12605                                   ; preds = %12571
  %12606 = icmp eq i32 %11956, 40
  br i1 %12606, label %12607, label %12844

; <label>:12607                                   ; preds = %12605
  %12608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %12609 = extractvalue %dx.types.CBufRet.f32 %12608, 0
  %12610 = fcmp fast ogt float %3135, %12609
  %12611 = zext i1 %12610 to i32
  %12612 = extractvalue %dx.types.CBufRet.f32 %12608, 1
  %12613 = fcmp fast ogt float %3135, %12612
  %12614 = zext i1 %12613 to i32
  %12615 = add nuw nsw i32 %12614, %12611
  %12616 = extractvalue %dx.types.CBufRet.f32 %12608, 2
  %12617 = fcmp fast ogt float %3135, %12616
  %12618 = zext i1 %12617 to i32
  %12619 = add nuw nsw i32 %12615, %12618
  %12620 = icmp ult i32 %12619, 3
  %12621 = zext i1 %12620 to i32
  %12622 = shl nuw nsw i32 %12619, 2
  %12623 = add nuw nsw i32 %12622, 48
  %12624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %12623)  ; CBufferLoadLegacy(handle,regIndex)
  %12625 = extractvalue %dx.types.CBufRet.f32 %12624, 1
  %12626 = fcmp fast ogt float %3135, %12625
  %12627 = zext i1 %12626 to i32
  %12628 = or i32 %12622, 1
  %12629 = add nuw nsw i32 %12628, 48
  %12630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %12629)  ; CBufferLoadLegacy(handle,regIndex)
  %12631 = extractvalue %dx.types.CBufRet.f32 %12630, 1
  %12632 = fcmp fast ogt float %3135, %12631
  %12633 = zext i1 %12632 to i32
  %12634 = add nuw nsw i32 %12633, %12627
  %12635 = or i32 %12622, 2
  %12636 = add nuw nsw i32 %12635, 48
  %12637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %12636)  ; CBufferLoadLegacy(handle,regIndex)
  %12638 = extractvalue %dx.types.CBufRet.f32 %12637, 1
  %12639 = fcmp fast ogt float %3135, %12638
  %12640 = zext i1 %12639 to i32
  %12641 = add nuw nsw i32 %12634, %12640
  %12642 = call i32 @dx.op.binary.i32(i32 40, i32 %12641, i32 3)  ; UMin(a,b)
  %12643 = add i32 %12622, %12642
  %12644 = call i32 @dx.op.binary.i32(i32 40, i32 %12643, i32 12)  ; UMin(a,b)
  %12645 = add i32 %12644, 48
  %12646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %12645)  ; CBufferLoadLegacy(handle,regIndex)
  %12647 = extractvalue %dx.types.CBufRet.f32 %12646, 0
  %12648 = fcmp fast oge float %3135, %12647
  %12649 = zext i1 %12648 to i32
  %12650 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %12621)  ; UMin(a,b)
  %12651 = call i32 @dx.op.binary.i32(i32 40, i32 %12649, i32 %12650)  ; UMin(a,b)
  %12652 = fmul fast float %11946, 7.500000e-01
  %12653 = fadd fast float %12652, %11944
  %12654 = fcmp fast ult float %11941, %12653
  br i1 %12654, label %12694, label %12655

; <label>:12655                                   ; preds = %12607
  %12656 = uitofp i32 %12644 to float
  %12657 = fmul fast float %12656, 0x3FE3C6EF40000000
  %12658 = call float @dx.op.unary.f32(i32 22, float %12657)  ; Frc(value)
  %12659 = fadd fast float %12658, 0x3FE5555560000000
  %12660 = fadd fast float %12658, 0x3FD5555560000000
  %12661 = fsub fast float -0.000000e+00, %12658
  %12662 = fsub fast float -0.000000e+00, %12659
  %12663 = fsub fast float -0.000000e+00, %12660
  %12664 = fcmp fast oge float %12658, %12661
  %12665 = fcmp fast oge float %12659, %12662
  %12666 = fcmp fast oge float %12660, %12663
  %12667 = call float @dx.op.unary.f32(i32 6, float %12658)  ; FAbs(value)
  %12668 = call float @dx.op.unary.f32(i32 6, float %12659)  ; FAbs(value)
  %12669 = call float @dx.op.unary.f32(i32 6, float %12660)  ; FAbs(value)
  %12670 = call float @dx.op.unary.f32(i32 22, float %12667)  ; Frc(value)
  %12671 = call float @dx.op.unary.f32(i32 22, float %12668)  ; Frc(value)
  %12672 = call float @dx.op.unary.f32(i32 22, float %12669)  ; Frc(value)
  %12673 = fsub fast float -0.000000e+00, %12670
  %12674 = fsub fast float -0.000000e+00, %12671
  %12675 = fsub fast float -0.000000e+00, %12672
  %12676 = select i1 %12664, float %12670, float %12673
  %12677 = select i1 %12665, float %12671, float %12674
  %12678 = select i1 %12666, float %12672, float %12675
  %12679 = fmul fast float %12676, 6.000000e+00
  %12680 = fmul fast float %12677, 6.000000e+00
  %12681 = fmul fast float %12678, 6.000000e+00
  %12682 = fadd fast float %12679, -3.000000e+00
  %12683 = fadd fast float %12680, -3.000000e+00
  %12684 = fadd fast float %12681, -3.000000e+00
  %12685 = call float @dx.op.unary.f32(i32 6, float %12682)  ; FAbs(value)
  %12686 = call float @dx.op.unary.f32(i32 6, float %12683)  ; FAbs(value)
  %12687 = call float @dx.op.unary.f32(i32 6, float %12684)  ; FAbs(value)
  %12688 = fadd fast float %12685, -1.000000e+00
  %12689 = fadd fast float %12686, -1.000000e+00
  %12690 = fadd fast float %12687, -1.000000e+00
  %12691 = call float @dx.op.unary.f32(i32 7, float %12688)  ; Saturate(value)
  %12692 = call float @dx.op.unary.f32(i32 7, float %12689)  ; Saturate(value)
  %12693 = call float @dx.op.unary.f32(i32 7, float %12690)  ; Saturate(value)
  br label %12831

; <label>:12694                                   ; preds = %12607
  %12695 = fmul fast float %11946, 5.000000e-01
  %12696 = fadd fast float %12695, %11944
  %12697 = fcmp fast ult float %11941, %12696
  br i1 %12697, label %12724, label %12698

; <label>:12698                                   ; preds = %12694
  %12699 = add i32 %12651, 4
  %12700 = icmp eq i32 %12699, 0
  br i1 %12700, label %12831, label %12701

; <label>:12701                                   ; preds = %12698
  br label %12702

; <label>:12702                                   ; preds = %12702, %12701
  %12703 = phi float [ %12719, %12702 ], [ 0.000000e+00, %12701 ]
  %12704 = phi i32 [ %12720, %12702 ], [ 0, %12701 ]
  %12705 = add i32 %12644, 32
  %12706 = add i32 %12705, %12704
  %12707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %12706)  ; CBufferLoadLegacy(handle,regIndex)
  %12708 = extractvalue %dx.types.CBufRet.f32 %12707, 0
  %12709 = extractvalue %dx.types.CBufRet.f32 %12707, 1
  %12710 = extractvalue %dx.types.CBufRet.f32 %12707, 2
  %12711 = extractvalue %dx.types.CBufRet.f32 %12707, 3
  %12712 = fmul fast float %12708, %3135
  %12713 = fadd fast float %12712, %12709
  %12714 = call float @dx.op.unary.f32(i32 7, float %12713)  ; Saturate(value)
  %12715 = fmul fast float %12710, %3135
  %12716 = fadd fast float %12715, %12711
  %12717 = call float @dx.op.unary.f32(i32 7, float %12716)  ; Saturate(value)
  %12718 = call float @dx.op.binary.f32(i32 36, float %12714, float %12717)  ; FMin(a,b)
  %12719 = fadd fast float %12718, %12703
  %12720 = add nuw i32 %12704, 1
  %12721 = icmp eq i32 %12720, %12699
  br i1 %12721, label %12722, label %12702

; <label>:12722                                   ; preds = %12702
  %12723 = fmul float %12719, 2.500000e-01
  br label %12831

; <label>:12724                                   ; preds = %12694
  %12725 = fmul fast float %11946, 2.500000e-01
  %12726 = fadd fast float %12725, %11944
  %12727 = fcmp fast ult float %11941, %12726
  br i1 %12727, label %12827, label %12728

; <label>:12728                                   ; preds = %12724
  %12729 = add i32 %12644, 32
  %12730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %70, i32 %12729)  ; CBufferLoadLegacy(handle,regIndex)
  %12731 = extractvalue %dx.types.CBufRet.f32 %12730, 0
  %12732 = extractvalue %dx.types.CBufRet.f32 %12730, 1
  %12733 = extractvalue %dx.types.CBufRet.f32 %12730, 2
  %12734 = extractvalue %dx.types.CBufRet.f32 %12730, 3
  %12735 = fmul fast float %12731, %3135
  %12736 = fadd fast float %12735, %12732
  %12737 = call float @dx.op.unary.f32(i32 7, float %12736)  ; Saturate(value)
  %12738 = fmul fast float %12733, %3135
  %12739 = fadd fast float %12738, %12734
  %12740 = call float @dx.op.unary.f32(i32 7, float %12739)  ; Saturate(value)
  %12741 = call float @dx.op.binary.f32(i32 36, float %12737, float %12740)  ; FMin(a,b)
  %12742 = uitofp i32 %12644 to float
  %12743 = fmul fast float %12742, 0x3FE3C6EF40000000
  %12744 = call float @dx.op.unary.f32(i32 22, float %12743)  ; Frc(value)
  %12745 = fadd fast float %12744, 0x3FE5555560000000
  %12746 = fadd fast float %12744, 0x3FD5555560000000
  %12747 = fsub fast float -0.000000e+00, %12744
  %12748 = fsub fast float -0.000000e+00, %12745
  %12749 = fsub fast float -0.000000e+00, %12746
  %12750 = fcmp fast oge float %12744, %12747
  %12751 = fcmp fast oge float %12745, %12748
  %12752 = fcmp fast oge float %12746, %12749
  %12753 = call float @dx.op.unary.f32(i32 6, float %12744)  ; FAbs(value)
  %12754 = call float @dx.op.unary.f32(i32 6, float %12745)  ; FAbs(value)
  %12755 = call float @dx.op.unary.f32(i32 6, float %12746)  ; FAbs(value)
  %12756 = call float @dx.op.unary.f32(i32 22, float %12753)  ; Frc(value)
  %12757 = call float @dx.op.unary.f32(i32 22, float %12754)  ; Frc(value)
  %12758 = call float @dx.op.unary.f32(i32 22, float %12755)  ; Frc(value)
  %12759 = fsub fast float -0.000000e+00, %12756
  %12760 = fsub fast float -0.000000e+00, %12757
  %12761 = fsub fast float -0.000000e+00, %12758
  %12762 = select i1 %12750, float %12756, float %12759
  %12763 = select i1 %12751, float %12757, float %12760
  %12764 = select i1 %12752, float %12758, float %12761
  %12765 = fmul fast float %12762, 6.000000e+00
  %12766 = fmul fast float %12763, 6.000000e+00
  %12767 = fmul fast float %12764, 6.000000e+00
  %12768 = fadd fast float %12765, -3.000000e+00
  %12769 = fadd fast float %12766, -3.000000e+00
  %12770 = fadd fast float %12767, -3.000000e+00
  %12771 = call float @dx.op.unary.f32(i32 6, float %12768)  ; FAbs(value)
  %12772 = call float @dx.op.unary.f32(i32 6, float %12769)  ; FAbs(value)
  %12773 = call float @dx.op.unary.f32(i32 6, float %12770)  ; FAbs(value)
  %12774 = fadd fast float %12771, -1.000000e+00
  %12775 = fadd fast float %12772, -1.000000e+00
  %12776 = fadd fast float %12773, -1.000000e+00
  %12777 = call float @dx.op.unary.f32(i32 7, float %12774)  ; Saturate(value)
  %12778 = call float @dx.op.unary.f32(i32 7, float %12775)  ; Saturate(value)
  %12779 = call float @dx.op.unary.f32(i32 7, float %12776)  ; Saturate(value)
  %12780 = fadd fast float %12742, 1.000000e+00
  %12781 = fmul fast float %12780, 0x3FE3C6EF40000000
  %12782 = call float @dx.op.unary.f32(i32 22, float %12781)  ; Frc(value)
  %12783 = fadd fast float %12782, 0x3FE5555560000000
  %12784 = fadd fast float %12782, 0x3FD5555560000000
  %12785 = fsub fast float -0.000000e+00, %12782
  %12786 = fsub fast float -0.000000e+00, %12783
  %12787 = fsub fast float -0.000000e+00, %12784
  %12788 = fcmp fast oge float %12782, %12785
  %12789 = fcmp fast oge float %12783, %12786
  %12790 = fcmp fast oge float %12784, %12787
  %12791 = call float @dx.op.unary.f32(i32 6, float %12782)  ; FAbs(value)
  %12792 = call float @dx.op.unary.f32(i32 6, float %12783)  ; FAbs(value)
  %12793 = call float @dx.op.unary.f32(i32 6, float %12784)  ; FAbs(value)
  %12794 = call float @dx.op.unary.f32(i32 22, float %12791)  ; Frc(value)
  %12795 = call float @dx.op.unary.f32(i32 22, float %12792)  ; Frc(value)
  %12796 = call float @dx.op.unary.f32(i32 22, float %12793)  ; Frc(value)
  %12797 = fsub fast float -0.000000e+00, %12794
  %12798 = fsub fast float -0.000000e+00, %12795
  %12799 = fsub fast float -0.000000e+00, %12796
  %12800 = select i1 %12788, float %12794, float %12797
  %12801 = select i1 %12789, float %12795, float %12798
  %12802 = select i1 %12790, float %12796, float %12799
  %12803 = fmul fast float %12800, 6.000000e+00
  %12804 = fmul fast float %12801, 6.000000e+00
  %12805 = fmul fast float %12802, 6.000000e+00
  %12806 = fadd fast float %12803, -3.000000e+00
  %12807 = fadd fast float %12804, -3.000000e+00
  %12808 = fadd fast float %12805, -3.000000e+00
  %12809 = call float @dx.op.unary.f32(i32 6, float %12806)  ; FAbs(value)
  %12810 = call float @dx.op.unary.f32(i32 6, float %12807)  ; FAbs(value)
  %12811 = call float @dx.op.unary.f32(i32 6, float %12808)  ; FAbs(value)
  %12812 = fadd fast float %12809, -1.000000e+00
  %12813 = fadd fast float %12810, -1.000000e+00
  %12814 = fadd fast float %12811, -1.000000e+00
  %12815 = call float @dx.op.unary.f32(i32 7, float %12812)  ; Saturate(value)
  %12816 = call float @dx.op.unary.f32(i32 7, float %12813)  ; Saturate(value)
  %12817 = call float @dx.op.unary.f32(i32 7, float %12814)  ; Saturate(value)
  %12818 = fsub fast float %12815, %12777
  %12819 = fsub fast float %12816, %12778
  %12820 = fsub fast float %12817, %12779
  %12821 = fmul fast float %12818, %12741
  %12822 = fmul fast float %12819, %12741
  %12823 = fmul fast float %12820, %12741
  %12824 = fadd fast float %12821, %12777
  %12825 = fadd fast float %12822, %12778
  %12826 = fadd fast float %12823, %12779
  br label %12831

; <label>:12827                                   ; preds = %12724
  %12828 = icmp ne i32 %12651, 0
  %12829 = select i1 %12828, float 1.000000e+00, float 0.000000e+00
  %12830 = select i1 %12828, float 0.000000e+00, float 1.000000e+00
  br label %12831

; <label>:12831                                   ; preds = %12827, %12728, %12722, %12698, %12655
  %12832 = phi float [ %12691, %12655 ], [ %12824, %12728 ], [ %12829, %12827 ], [ 0.000000e+00, %12698 ], [ %12723, %12722 ]
  %12833 = phi float [ %12692, %12655 ], [ %12825, %12728 ], [ %12830, %12827 ], [ 0.000000e+00, %12698 ], [ %12723, %12722 ]
  %12834 = phi float [ %12693, %12655 ], [ %12826, %12728 ], [ 0.000000e+00, %12827 ], [ 0.000000e+00, %12698 ], [ %12723, %12722 ]
  %12835 = fsub fast float %12832, %11935
  %12836 = fsub fast float %12833, %11936
  %12837 = fsub fast float %12834, %11937
  %12838 = fmul fast float %12835, 5.000000e-01
  %12839 = fmul fast float %12836, 5.000000e-01
  %12840 = fmul fast float %12837, 5.000000e-01
  %12841 = fadd fast float %12838, %11935
  %12842 = fadd fast float %12839, %11936
  %12843 = fadd fast float %12840, %11937
  br label %12974

; <label>:12844                                   ; preds = %12605
  %12845 = icmp eq i32 %11956, 41
  br i1 %12845, label %12846, label %12923

; <label>:12846                                   ; preds = %12844
  %12847 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %70, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %12848 = extractvalue %dx.types.CBufRet.i32 %12847, 0
  %12849 = icmp eq i32 %12848, 2
  %12850 = and i32 %2385, 2
  %12851 = icmp ne i32 %12850, 0
  %12852 = and i1 %12851, %12849
  %12853 = icmp eq i32 %12848, 3
  %12854 = and i32 %2385, 4
  %12855 = icmp ne i32 %12854, 0
  %12856 = and i1 %12855, %12853
  %12857 = or i1 %12856, %12852
  %12858 = icmp eq i32 %12848, 4
  %12859 = and i32 %2385, 8
  %12860 = icmp ne i32 %12859, 0
  %12861 = and i1 %12860, %12858
  %12862 = or i1 %12861, %12857
  %12863 = icmp eq i32 %12848, 5
  %12864 = and i32 %2385, 16
  %12865 = icmp ne i32 %12864, 0
  %12866 = and i1 %12865, %12863
  %12867 = or i1 %12866, %12862
  %12868 = icmp eq i32 %12848, 6
  %12869 = and i32 %2385, 32
  %12870 = icmp ne i32 %12869, 0
  %12871 = and i1 %12870, %12868
  %12872 = or i1 %12871, %12867
  %12873 = icmp eq i32 %12848, 8
  %12874 = and i32 %2385, 64
  %12875 = icmp ne i32 %12874, 0
  %12876 = and i1 %12875, %12873
  %12877 = or i1 %12876, %12872
  %12878 = icmp eq i32 %12848, 9
  %12879 = and i32 %2385, 128
  %12880 = icmp ne i32 %12879, 0
  %12881 = and i1 %12880, %12878
  %12882 = or i1 %12881, %12877
  %12883 = icmp eq i32 %12848, 11
  %12884 = and i32 %2385, 160
  %12885 = icmp ne i32 %12884, 0
  %12886 = and i1 %12885, %12883
  %12887 = or i1 %12886, %12882
  %12888 = icmp eq i32 %12848, 13
  %12889 = and i32 %2385, 256
  %12890 = icmp ne i32 %12889, 0
  %12891 = and i1 %12890, %12888
  %12892 = or i1 %12891, %12887
  %12893 = icmp eq i32 %12848, 14
  %12894 = and i32 %2385, 512
  %12895 = icmp ne i32 %12894, 0
  %12896 = and i1 %12895, %12893
  %12897 = or i1 %12896, %12892
  %12898 = icmp eq i32 %12848, 7
  %12899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %12900 = extractvalue %dx.types.ResRet.i32 %12899, 0
  %12901 = and i32 %12900, 1024
  %12902 = icmp ne i32 %12901, 0
  %12903 = and i1 %12898, %12902
  %12904 = or i1 %12903, %12897
  %12905 = icmp eq i32 %12848, 10
  %12906 = and i32 %12900, 2048
  %12907 = icmp ne i32 %12906, 0
  %12908 = and i1 %12905, %12907
  %12909 = or i1 %12908, %12904
  %12910 = icmp eq i32 %12848, 12
  %12911 = and i32 %12900, 3072
  %12912 = icmp ne i32 %12911, 0
  %12913 = and i1 %12910, %12912
  %12914 = or i1 %12913, %12909
  %12915 = icmp eq i32 %12848, 15
  %12916 = and i32 %12900, 4096
  %12917 = icmp ne i32 %12916, 0
  %12918 = and i1 %12915, %12917
  %12919 = or i1 %12918, %12914
  %12920 = select i1 %12919, float 5.000000e-01, float %11935
  %12921 = select i1 %12919, float 0x3FB99999A0000000, float %11936
  %12922 = select i1 %12919, float 0x3FB99999A0000000, float %11937
  br label %12974

; <label>:12923                                   ; preds = %12844
  %12924 = icmp eq i32 %11956, 42
  br i1 %12924, label %12925, label %12964

; <label>:12925                                   ; preds = %12923
  %12926 = uitofp i32 %101 to float
  %12927 = fmul fast float %12926, 0x3FE3C6EF40000000
  %12928 = call float @dx.op.unary.f32(i32 22, float %12927)  ; Frc(value)
  %12929 = fadd fast float %12928, 0x3FE5555560000000
  %12930 = fadd fast float %12928, 0x3FD5555560000000
  %12931 = fsub fast float -0.000000e+00, %12928
  %12932 = fsub fast float -0.000000e+00, %12929
  %12933 = fsub fast float -0.000000e+00, %12930
  %12934 = fcmp fast oge float %12928, %12931
  %12935 = fcmp fast oge float %12929, %12932
  %12936 = fcmp fast oge float %12930, %12933
  %12937 = call float @dx.op.unary.f32(i32 6, float %12928)  ; FAbs(value)
  %12938 = call float @dx.op.unary.f32(i32 6, float %12929)  ; FAbs(value)
  %12939 = call float @dx.op.unary.f32(i32 6, float %12930)  ; FAbs(value)
  %12940 = call float @dx.op.unary.f32(i32 22, float %12937)  ; Frc(value)
  %12941 = call float @dx.op.unary.f32(i32 22, float %12938)  ; Frc(value)
  %12942 = call float @dx.op.unary.f32(i32 22, float %12939)  ; Frc(value)
  %12943 = fsub fast float -0.000000e+00, %12940
  %12944 = fsub fast float -0.000000e+00, %12941
  %12945 = fsub fast float -0.000000e+00, %12942
  %12946 = select i1 %12934, float %12940, float %12943
  %12947 = select i1 %12935, float %12941, float %12944
  %12948 = select i1 %12936, float %12942, float %12945
  %12949 = fmul fast float %12946, 6.000000e+00
  %12950 = fmul fast float %12947, 6.000000e+00
  %12951 = fmul fast float %12948, 6.000000e+00
  %12952 = fadd fast float %12949, -3.000000e+00
  %12953 = fadd fast float %12950, -3.000000e+00
  %12954 = fadd fast float %12951, -3.000000e+00
  %12955 = call float @dx.op.unary.f32(i32 6, float %12952)  ; FAbs(value)
  %12956 = call float @dx.op.unary.f32(i32 6, float %12953)  ; FAbs(value)
  %12957 = call float @dx.op.unary.f32(i32 6, float %12954)  ; FAbs(value)
  %12958 = fadd fast float %12955, -1.000000e+00
  %12959 = fadd fast float %12956, -1.000000e+00
  %12960 = fadd fast float %12957, -1.000000e+00
  %12961 = call float @dx.op.unary.f32(i32 7, float %12958)  ; Saturate(value)
  %12962 = call float @dx.op.unary.f32(i32 7, float %12959)  ; Saturate(value)
  %12963 = call float @dx.op.unary.f32(i32 7, float %12960)  ; Saturate(value)
  br label %12974

; <label>:12964                                   ; preds = %12923
  %12965 = icmp eq i32 %11956, 43
  br i1 %12965, label %12974, label %12966

; <label>:12966                                   ; preds = %12964
  %12967 = icmp eq i32 %11956, 45
  br i1 %12967, label %12968, label %12974

; <label>:12968                                   ; preds = %12966
  %12969 = fcmp fast ogt float %2386, %2387
  %12970 = fsub fast float %2386, %2387
  %12971 = call float @dx.op.unary.f32(i32 6, float %12970)  ; FAbs(value)
  %12972 = select i1 %12969, float %12971, float 0.000000e+00
  %12973 = select i1 %12969, float 0.000000e+00, float %12971
  br label %12974

; <label>:12974                                   ; preds = %12968, %12966, %12964, %12925, %12846, %12831, %12597, %12590, %12584, %12570, %12568, %12562, %12557, %12547, %12506, %12504, %12447, %12419, %12391, %12387, %12325, %12283, %12228, %12223, %12209, %12167, %12160, %12153, %12149, %12147, %12145, %12143, %12141, %12139, %12137, %12135, %12133, %12131, %12117, %12113, %12111, %12106, %12018, %12000, %11961, %11934
  %12975 = phi float [ %11997, %11961 ], [ %12103, %12018 ], [ %12126, %12117 ], [ %12132, %12131 ], [ %12157, %12153 ], [ %12225, %12223 ], [ %12278, %12228 ], [ %12384, %12325 ], [ %12411, %12391 ], [ %12439, %12419 ], [ %12499, %12447 ], [ %12541, %12506 ], [ %12554, %12547 ], [ %12559, %12557 ], [ 1.000000e+00, %12570 ], [ %12587, %12584 ], [ %12602, %12597 ], [ %11935, %12590 ], [ %12841, %12831 ], [ %12920, %12846 ], [ %12961, %12925 ], [ %12972, %12968 ], [ %11935, %12966 ], [ %11935, %11934 ], [ 0.000000e+00, %12147 ], [ 0.000000e+00, %12149 ], [ 0.000000e+00, %12160 ], [ 1.000000e+00, %12209 ], [ 0.000000e+00, %12167 ], [ 0.000000e+00, %12283 ], [ 0.000000e+00, %12504 ], [ 0.000000e+00, %12562 ], [ 0.000000e+00, %12568 ], [ 0.000000e+00, %12000 ], [ 0.000000e+00, %12106 ], [ %701, %12111 ], [ %716, %12113 ], [ %756, %12133 ], [ %769, %12135 ], [ %2379, %12137 ], [ %525, %12139 ], [ %2380, %12141 ], [ %2381, %12143 ], [ %2388, %12145 ], [ %519, %12964 ], [ 0.000000e+00, %12387 ]
  %12976 = phi float [ %11998, %11961 ], [ %12104, %12018 ], [ %12128, %12117 ], [ %12132, %12131 ], [ %12158, %12153 ], [ %12226, %12223 ], [ %12279, %12228 ], [ %12385, %12325 ], [ %12413, %12391 ], [ %12441, %12419 ], [ %12500, %12447 ], [ %12542, %12506 ], [ %12552, %12547 ], [ %12559, %12557 ], [ 0.000000e+00, %12570 ], [ %12588, %12584 ], [ %12603, %12597 ], [ %11936, %12590 ], [ %12842, %12831 ], [ %12921, %12846 ], [ %12962, %12925 ], [ %12973, %12968 ], [ %11936, %12966 ], [ %11936, %11934 ], [ 1.000000e+00, %12147 ], [ 0.000000e+00, %12149 ], [ 0.000000e+00, %12160 ], [ 0.000000e+00, %12209 ], [ 1.000000e+00, %12167 ], [ 1.000000e+00, %12283 ], [ 1.000000e+00, %12504 ], [ 0.000000e+00, %12562 ], [ 1.000000e+00, %12568 ], [ 0.000000e+00, %12000 ], [ 0.000000e+00, %12106 ], [ %701, %12111 ], [ %716, %12113 ], [ %756, %12133 ], [ %769, %12135 ], [ %2379, %12137 ], [ %525, %12139 ], [ %2380, %12141 ], [ %2381, %12143 ], [ %2388, %12145 ], [ %520, %12964 ], [ 0.000000e+00, %12387 ]
  %12977 = phi float [ %11999, %11961 ], [ %12105, %12018 ], [ 0.000000e+00, %12117 ], [ %12132, %12131 ], [ %12159, %12153 ], [ %12227, %12223 ], [ %12280, %12228 ], [ %12386, %12325 ], [ %12416, %12391 ], [ %12444, %12419 ], [ %12501, %12447 ], [ %12543, %12506 ], [ %12553, %12547 ], [ %12559, %12557 ], [ 0.000000e+00, %12570 ], [ %12589, %12584 ], [ %12604, %12597 ], [ %11937, %12590 ], [ %12843, %12831 ], [ %12922, %12846 ], [ %12963, %12925 ], [ 0.000000e+00, %12968 ], [ %11937, %12966 ], [ %11937, %11934 ], [ 1.000000e+00, %12147 ], [ 0.000000e+00, %12149 ], [ 0.000000e+00, %12160 ], [ 1.000000e+00, %12209 ], [ 1.000000e+00, %12167 ], [ 1.000000e+00, %12283 ], [ 0.000000e+00, %12504 ], [ 1.000000e+00, %12562 ], [ 0.000000e+00, %12568 ], [ 0.000000e+00, %12000 ], [ 0.000000e+00, %12106 ], [ %701, %12111 ], [ %716, %12113 ], [ %756, %12133 ], [ %769, %12135 ], [ %2379, %12137 ], [ %525, %12139 ], [ %2380, %12141 ], [ %2381, %12143 ], [ %2388, %12145 ], [ 0.000000e+00, %12964 ], [ 0.000000e+00, %12387 ]
  %12978 = fadd fast float %2539, 0x3FE3C6EF40000000
  %12979 = call float @dx.op.unary.f32(i32 22, float %12978)  ; Frc(value)
  %12980 = call float @dx.op.unary.f32(i32 23, float %12975)  ; Log(value)
  %12981 = fadd fast float %12980, -7.000000e+00
  %12982 = call float @dx.op.unary.f32(i32 21, float %12981)  ; Exp(value)
  %12983 = fmul fast float %12979, 2.000000e+00
  %12984 = fadd fast float %12983, -1.000000e+00
  %12985 = fmul fast float %12982, %12984
  %12986 = fcmp fast ogt float %12975, 0.000000e+00
  %12987 = select i1 %12986, float %12985, float 0.000000e+00
  %12988 = fadd fast float %12987, %12975
  %12989 = fadd fast float %2539, 0x3FF3C6EF40000000
  %12990 = call float @dx.op.unary.f32(i32 22, float %12989)  ; Frc(value)
  %12991 = call float @dx.op.unary.f32(i32 23, float %12976)  ; Log(value)
  %12992 = fadd fast float %12991, -7.000000e+00
  %12993 = call float @dx.op.unary.f32(i32 21, float %12992)  ; Exp(value)
  %12994 = fmul fast float %12990, 2.000000e+00
  %12995 = fadd fast float %12994, -1.000000e+00
  %12996 = fmul fast float %12993, %12995
  %12997 = fcmp fast ogt float %12976, 0.000000e+00
  %12998 = select i1 %12997, float %12996, float 0.000000e+00
  %12999 = fadd fast float %12998, %12976
  %13000 = fadd fast float %2539, 0x3FFDAA66E0000000
  %13001 = call float @dx.op.unary.f32(i32 22, float %13000)  ; Frc(value)
  %13002 = call float @dx.op.unary.f32(i32 23, float %12977)  ; Log(value)
  %13003 = fadd fast float %13002, -6.000000e+00
  %13004 = call float @dx.op.unary.f32(i32 21, float %13003)  ; Exp(value)
  %13005 = fmul fast float %13001, 2.000000e+00
  %13006 = fadd fast float %13005, -1.000000e+00
  %13007 = fmul fast float %13004, %13006
  %13008 = fcmp fast ogt float %12977, 0.000000e+00
  %13009 = select i1 %13008, float %13007, float 0.000000e+00
  %13010 = fadd fast float %13009, %12977
  %13011 = call float @dx.op.binary.f32(i32 36, float %12988, float 3.225500e+04)  ; FMin(a,b)
  %13012 = call float @dx.op.binary.f32(i32 36, float %12999, float 3.225500e+04)  ; FMin(a,b)
  %13013 = call float @dx.op.binary.f32(i32 36, float %13010, float 3.225500e+04)  ; FMin(a,b)
  %13014 = fmul fast float %13011, %9928
  %13015 = fmul fast float %13012, %9928
  %13016 = fmul fast float %13013, %9928
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %13014)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %13015)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %13016)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:13017                                   ; preds = %11099
  %13018 = fcmp fast olt float %3244, %11082
  br i1 %13018, label %11085, label %13019

; <label>:13019                                   ; preds = %13017
  %13020 = fcmp fast olt float %3244, %11083
  br i1 %13020, label %11085, label %11286

; <label>:13021                                   ; preds = %11177
  %13022 = fcmp fast olt float %526, 5.120000e+02
  br i1 %13022, label %11163, label %13023

; <label>:13023                                   ; preds = %13021
  %13024 = fcmp fast olt float %526, 1.024000e+03
  br i1 %13024, label %11163, label %13025

; <label>:13025                                   ; preds = %13023
  %13026 = fcmp fast olt float %526, 1.536000e+03
  br i1 %13026, label %11163, label %13027

; <label>:13027                                   ; preds = %13025
  %13028 = fcmp fast olt float %526, 2.048000e+03
  br i1 %13028, label %11163, label %13029

; <label>:13029                                   ; preds = %13027
  %13030 = fcmp fast olt float %526, 3.072000e+03
  br i1 %13030, label %11163, label %13031

; <label>:13031                                   ; preds = %13029
  %13032 = fcmp fast olt float %526, 4.096000e+03
  br i1 %13032, label %11163, label %13033

; <label>:13033                                   ; preds = %13031
  %13034 = fcmp fast olt float %526, 6.144000e+03
  br i1 %13034, label %11163, label %13035

; <label>:13035                                   ; preds = %13033
  %13036 = fcmp fast olt float %526, 8.192000e+03
  br i1 %13036, label %11163, label %11286

; <label>:13037                                   ; preds = %11209
  %13038 = fcmp fast olt float %10024, %11192
  br i1 %13038, label %11195, label %13039

; <label>:13039                                   ; preds = %13037
  %13040 = fcmp fast olt float %10024, %11193
  br i1 %13040, label %11195, label %11286
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

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!87}
!dx.entryPoints = !{!88}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !70, !75, !79}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 14}
!13 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 61, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!26 = !{i32 18, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !29}
!29 = !{i32 0, i32 5}
!30 = !{i32 21, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!31 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!32 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!33 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!34 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!35 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!36 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 7, i32 1, i32 2, i32 0, !7}
!37 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 9, i32 1, i32 2, i32 0, !7}
!38 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 50, i32 1, i32 2, i32 0, !7}
!39 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !7}
!40 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!41 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!42 = !{i32 33, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!43 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!44 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!45 = !{i32 36, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!48 = !{i32 39, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!49 = !{i32 40, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!50 = !{i32 41, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!51 = !{i32 42, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!54 = !{i32 45, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!55 = !{i32 46, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!56 = !{i32 47, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!57 = !{i32 48, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!60 = !{i32 51, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!61 = !{i32 52, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!62 = !{i32 53, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!63 = !{i32 54, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!64 = !{i32 55, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!65 = !{i32 56, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!66 = !{i32 57, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!67 = !{i32 58, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 11, i32 1, i32 2, i32 0, !29}
!68 = !{i32 59, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!69 = !{i32 60, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 12, i32 1, i32 7, i32 0, !7}
!70 = !{!71, !73}
!71 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !72}
!72 = !{i32 1, i32 4}
!73 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !74}
!74 = !{i32 1, i32 1144}
!75 = !{!76, !77, !78}
!76 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!77 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!78 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!79 = !{!80, !81, !82, !83, !84, !85, !86}
!80 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!81 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!82 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!83 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!84 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!85 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!86 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!87 = !{[13 x i32] [i32 11, i32 4, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 2, i32 4]}
!88 = !{void ()* @ps_main, !"ps_main", !89, !4, !101}
!89 = !{!90, !98, null}
!90 = !{!91, !94, !95, !97}
!91 = !{i32 0, !"SV_Position", i8 9, i8 3, !92, i8 4, i32 1, i8 4, i32 0, i8 0, !93}
!92 = !{i32 0}
!93 = !{i32 3, i32 3}
!94 = !{i32 1, !"DEBUG_VALUE", i8 9, i8 0, !92, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!95 = !{i32 2, !"WIREFRAME_COLOR", i8 9, i8 0, !92, i8 2, i32 1, i8 3, i32 2, i8 0, !96}
!96 = !{i32 3, i32 7}
!97 = !{i32 3, !"SV_SampleIndex", i8 5, i8 12, !92, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!98 = !{!99}
!99 = !{i32 0, !"SV_Target", i8 9, i8 16, !92, i8 0, i32 1, i8 4, i32 0, i8 0, !100}
!100 = !{i32 3, i32 15}
!101 = !{i32 0, i64 24}
!102 = !{i32 1}
!103 = !{!104, !104, i64 0}
!104 = !{!"int", !105, i64 0}
!105 = !{!"omnipotent char", !106, i64 0}
!106 = !{!"Simple C/C++ TBAA"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"\01?Water_VisBuf_GetVertexIndices@@YAXIIIY02$$CAI@Z: %outVertexIndices"}
!109 = distinct !{!109, !"\01?Water_VisBuf_GetVertexIndices@@YAXIIIY02$$CAI@Z"}
!110 = !{!111, !111, i64 0}
!111 = !{!"float", !105, i64 0}
!112 = !{!113, !115, !116}
!113 = distinct !{!113, !114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!114 = distinct !{!114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!115 = distinct !{!115, !114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!116 = distinct !{!116, !114, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!117 = !{!118, !120, !121, !122, !123}
!118 = distinct !{!118, !119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!119 = distinct !{!119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!120 = distinct !{!120, !119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!121 = distinct !{!121, !119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!122 = distinct !{!122, !119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!123 = distinct !{!123, !119, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!124 = distinct !{!124, !125}
!125 = !{!"llvm.loop.unroll.disable"}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !125}
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
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = distinct !{!144, !"dx.controlflow.hints", i32 1}
!145 = distinct !{!145, !"dx.controlflow.hints", i32 1}
!146 = !{!147, !149}
!147 = distinct !{!147, !148, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!148 = distinct !{!148, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!149 = distinct !{!149, !150, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!150 = distinct !{!150, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!151 = distinct !{!151, !"dx.controlflow.hints", i32 1}
!152 = !{!147, !149, !153, !155}
!153 = distinct !{!153, !154, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!154 = distinct !{!154, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!155 = distinct !{!155, !156, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!156 = distinct !{!156, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!157 = distinct !{!157, !125}
!158 = distinct !{!158, !125}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = !{!170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!170 = distinct !{!170, !171, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!171 = distinct !{!171, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!172 = distinct !{!172, !173, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!173 = distinct !{!173, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!174 = distinct !{!174, !173, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!175 = distinct !{!175, !176, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!176 = distinct !{!176, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!177 = distinct !{!177, !176, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!178 = distinct !{!178, !176, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!179 = distinct !{!179, !180, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!180 = distinct !{!180, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!181 = distinct !{!181, !180, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!182 = distinct !{!182, !180, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!183 = distinct !{!183, !184, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!184 = distinct !{!184, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"\01?sort@@YAXAIAM00@Z: %c"}
!187 = distinct !{!187, !"\01?sort@@YAXAIAM00@Z"}
!188 = !{!189, !190, !170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!189 = distinct !{!189, !187, !"\01?sort@@YAXAIAM00@Z: %a"}
!190 = distinct !{!190, !187, !"\01?sort@@YAXAIAM00@Z: %b"}
!191 = !{!190}
!192 = !{!189, !186, !170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!193 = !{!189}
!194 = !{!190, !186, !170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!195 = !{!196}
!196 = distinct !{!196, !197, !"\01?sort@@YAXAIAM00@Z: %c"}
!197 = distinct !{!197, !"\01?sort@@YAXAIAM00@Z"}
!198 = !{!199, !200, !170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!199 = distinct !{!199, !197, !"\01?sort@@YAXAIAM00@Z: %a"}
!200 = distinct !{!200, !197, !"\01?sort@@YAXAIAM00@Z: %b"}
!201 = !{!200}
!202 = !{!199, !196, !170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!203 = !{!199}
!204 = !{!200, !196, !170, !172, !174, !175, !177, !178, !179, !181, !182, !183}
!205 = distinct !{!205, !"dx.controlflow.hints", i32 1}
!206 = distinct !{!206, !"dx.controlflow.hints", i32 2}
!207 = distinct !{!207, !"dx.controlflow.hints", i32 1}
!208 = distinct !{!208, !"dx.controlflow.hints", i32 1}
!209 = distinct !{!209, !"dx.controlflow.hints", i32 1}
!210 = distinct !{!210, !"dx.controlflow.hints", i32 1}
!211 = distinct !{!211, !"dx.controlflow.hints", i32 1}

