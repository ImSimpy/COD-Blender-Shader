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
;
; shader hash: 2d40f4e3541b671376a348568452dea5
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
;                                   texture     f32          3d     T31     t31,space2     1
;                                   texture    byte         r/o     T32     t10,space1     1
;                                   texture    byte         r/o     T33      t1,space1     1
;                                   texture     f32          1d     T34     t32,space2     1
;                                   texture     f32          3d     T35     t82,space2     1
;                                   texture     f32          1d     T36     t30,space2     1
;                                   texture     f32          3d     T37     t44,space2     1
;                                   texture     f32          3d     T38     t45,space2     1
;                                   texture     f32     2darray     T39     t47,space2     1
;                                   texture     f32     2darray     T40      t8,space2     1
;                                   texture     f32          2d     T41      t2,space2     1
;                                   texture     f32          2d     T42      t3,space2     1
;                                   texture     f32          2d     T43      t4,space2     1
;                                   textureunorm_f32     2darray     T44     t80,space2     1
;                                   texture    byte         r/o     T45     t67,space1     1
;                                   texture     f32          2d     T46      t7,space2     1
;                                   texture     f32          2d     T47      t6,space2     1
;                                   texture     f32          2d     T48      t5,space2     1
;                                   texture     f32          2d     T49     t38,space2     1
;                                   texture    byte         r/o     T50     t12,space1     1
;                                   texture    byte         r/o     T51     t13,space1     1
;                                   texture     f32          2d     T52     t83,space2     1
;                                   texture     f32          2d     T53     t86,space2     1
;                                   texture    byte         r/o     T54     t16,space1     1
;                                   texture    byte         r/o     T55     t17,space1     1
;                                   texture     f32          2d     T56             t8     1
;                                   texture     f32     2darray     T57            t10     1
;                                       UAV  struct         r/w      U0             u0     1
;
;
; ViewId state:
;
; Number of inputs: 27, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 24 }
;   output 1 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 21, 25 }
;   output 2 depends on inputs: { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 13, 20, 22, 26 }
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = alloca [4 x i32], align 4
  %68 = alloca [4 x float], align 4
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = icmp ne i32 %75, 0
  %77 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = alloca [12 x float], align 4
  %89 = alloca [12 x float], align 4
  %90 = alloca [3 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [4 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = fmul fast float %97, %84
  %99 = fmul fast float %97, %85
  %100 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = call float @dx.op.unary.f32(i32 25, float %100)  ; Rsqrt(value)
  %102 = fmul fast float %101, %81
  %103 = fmul fast float %101, %82
  %104 = fmul fast float %101, %83
  %105 = xor i1 %76, true
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = icmp eq i32 %107, 0
  %109 = and i1 %108, %105
  %110 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.i32 %110, 0
  %112 = and i32 %111, 256
  %113 = icmp ne i32 %112, 0
  %114 = and i1 %109, %113
  %115 = or i1 %76, %114
  %116 = select i1 %115, float 1.000000e+00, float -1.000000e+00
  %117 = fmul fast float %102, %116
  %118 = fmul fast float %103, %116
  %119 = fmul fast float %104, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fmul fast float %98, 2.000000e+00
  %124 = fmul fast float %123, %121
  %125 = fmul fast float %99, 2.000000e+00
  %126 = fmul fast float %125, %122
  %127 = fsub fast float 1.000000e+00, %124
  %128 = fsub fast float 1.000000e+00, %126
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 0
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 1
  %132 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %133 = fmul fast float %127, %130
  %134 = fmul fast float %127, %131
  %135 = fmul fast float %127, %132
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fmul fast float %128, %137
  %141 = fmul fast float %128, %138
  %142 = fmul fast float %128, %139
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %147 = fadd fast float %140, %144
  %148 = fadd fast float %147, %133
  %149 = fadd fast float %141, %145
  %150 = fadd fast float %149, %134
  %151 = fadd fast float %142, %146
  %152 = fadd fast float %151, %135
  %153 = fmul fast float %148, %87
  %154 = fmul fast float %150, %87
  %155 = fmul fast float %152, %87
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 2
  %158 = call float @dx.op.unary.f32(i32 83, float %79)  ; DerivCoarseX(value)
  %159 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %160 = call float @dx.op.unary.f32(i32 84, float %79)  ; DerivCoarseY(value)
  %161 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  %162 = fmul fast float %158, %157
  %163 = fmul fast float %159, %157
  %164 = fmul fast float %160, %157
  %165 = fmul fast float %161, %157
  %166 = call float @dx.op.dot2.f32(i32 54, float %164, float %165, float %164, float %165)  ; Dot2(ax,ay,bx,by)
  %167 = call float @dx.op.dot2.f32(i32 54, float %162, float %163, float %162, float %163)  ; Dot2(ax,ay,bx,by)
  %168 = call float @dx.op.binary.f32(i32 35, float %167, float %166)  ; FMax(a,b)
  %169 = call float @dx.op.unary.f32(i32 23, float %168)  ; Log(value)
  %170 = fmul fast float %169, 5.000000e-01
  %171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %172 = extractvalue %dx.types.CBufRet.f32 %171, 1
  %173 = fadd fast float %172, %170
  %174 = call float @dx.op.binary.f32(i32 35, float %173, float 0.000000e+00)  ; FMax(a,b)
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %177 = fadd fast float %176, %174
  %178 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %179 = shl i32 %178, 16
  %180 = or i32 %179, %178
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = fadd fast float %182, %153
  %185 = fadd fast float %183, %154
  %186 = fmul fast float %184, 0x3F53C37960000000
  %187 = fmul fast float %185, 0x3F53C37960000000
  %188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %188, float %186, float %187, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %193 = fmul fast float %192, %190
  %194 = shl i32 %77, 3
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 16383
  %198 = shl i32 %77, 2
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 255
  %202 = mul nuw nsw i32 %197, 148
  %203 = add nuw nsw i32 %202, 4
  %204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = add nuw nsw i32 %202, 8
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = add nuw nsw i32 %202, 48
  %210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.f32 %210, 0
  %212 = add nuw nsw i32 %202, 92
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = add nuw nsw i32 %202, 96
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = add nuw nsw i32 %202, 100
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = add nuw nsw i32 %202, 104
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = add nuw nsw i32 %202, 108
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = fsub fast float 1.000000e+00, %80
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %229 = fmul fast float %228, %79
  %230 = fmul fast float %228, %226
  %231 = fadd fast float %229, %205
  %232 = fadd fast float %230, %208
  %233 = call float @dx.op.unary.f32(i32 84, float %231)  ; DerivCoarseY(value)
  %234 = call float @dx.op.unary.f32(i32 84, float %232)  ; DerivCoarseY(value)
  %235 = call float @dx.op.unary.f32(i32 83, float %231)  ; DerivCoarseX(value)
  %236 = call float @dx.op.unary.f32(i32 83, float %232)  ; DerivCoarseX(value)
  %237 = call float @dx.op.dot2.f32(i32 54, float %233, float %234, float %233, float %234)  ; Dot2(ax,ay,bx,by)
  %238 = call float @dx.op.dot2.f32(i32 54, float %235, float %236, float %235, float %236)  ; Dot2(ax,ay,bx,by)
  %239 = call float @dx.op.binary.f32(i32 35, float %238, float %237)  ; FMax(a,b)
  %240 = call float @dx.op.unary.f32(i32 23, float %239)  ; Log(value)
  %241 = fmul fast float %240, 5.000000e-01
  %242 = add nuw nsw i32 %202, 20
  %243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.f32 %243, 0
  %245 = add nuw nsw i32 %202, 24
  %246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = add nuw nsw i32 %202, 28
  %249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.f32 %249, 0
  %251 = add nuw nsw i32 %202, 32
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = add nuw nsw i32 %202, 40
  %255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.f32 %255, 0
  %257 = add nuw nsw i32 %202, 44
  %258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.f32 %258, 0
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = add nuw nsw i32 %202, 52
  %263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.f32 %263, 0
  %265 = add nuw nsw i32 %202, 56
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = add nuw nsw i32 %202, 112
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %280 = extractvalue %dx.types.CBufRet.f32 %279, 2
  %281 = fmul fast float %280, %79
  %282 = fmul fast float %280, %80
  %283 = extractvalue %dx.types.CBufRet.f32 %279, 3
  %284 = fadd fast float %281, %283
  %285 = fadd fast float %282, %283
  %286 = extractvalue %dx.types.CBufRet.f32 %279, 0
  %287 = fmul fast float %286, %79
  %288 = fmul fast float %286, %80
  %289 = extractvalue %dx.types.CBufRet.f32 %279, 1
  %290 = fadd fast float %287, %289
  %291 = fadd fast float %288, %289
  %292 = add i32 %269, 0
  %293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %292, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %294 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %293, i32 0)  ; GetDimensions(handle,mipLevel)
  %295 = extractvalue %dx.types.Dimensions %294, 0
  %296 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %295)  ; FirstbitLo(value)
  %297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.i32 %297, 1
  %299 = sub nsw i32 %298, %296
  %300 = sitofp i32 %299 to float
  %301 = fsub fast float %177, %300
  %302 = call float @dx.op.binary.f32(i32 35, float %301, float 0.000000e+00)  ; FMax(a,b)
  %303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %293, %dx.types.Handle %59, float %284, float %285, float %256, float undef, i32 0, i32 0, i32 undef, float %302)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = fmul fast float %304, %244
  %306 = fadd fast float %305, %247
  %307 = add i32 %271, 0
  %308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %307, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %309 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %308, i32 0)  ; GetDimensions(handle,mipLevel)
  %310 = extractvalue %dx.types.Dimensions %309, 0
  %311 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %310)  ; FirstbitLo(value)
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 1
  %314 = sub nsw i32 %313, %311
  %315 = sitofp i32 %314 to float
  %316 = fsub fast float %177, %315
  %317 = call float @dx.op.binary.f32(i32 35, float %316, float 0.000000e+00)  ; FMax(a,b)
  %318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %308, %dx.types.Handle %59, float %290, float %291, float %259, float undef, i32 0, i32 0, i32 undef, float %317)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %319 = extractvalue %dx.types.ResRet.f32 %318, 0
  %320 = fmul fast float %319, %250
  %321 = fadd fast float %320, %253
  %322 = add i32 %273, 0
  %323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %323, i32 0)  ; GetDimensions(handle,mipLevel)
  %325 = extractvalue %dx.types.Dimensions %324, 0
  %326 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %325)  ; FirstbitLo(value)
  %327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %328 = extractvalue %dx.types.CBufRet.i32 %327, 1
  %329 = sub nsw i32 %328, %326
  %330 = sitofp i32 %329 to float
  %331 = fsub fast float %177, %330
  %332 = call float @dx.op.binary.f32(i32 35, float %331, float 0.000000e+00)  ; FMax(a,b)
  %333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %323, %dx.types.Handle %59, float %290, float %291, float %261, float undef, i32 0, i32 0, i32 undef, float %332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %334 = extractvalue %dx.types.ResRet.f32 %333, 0
  %335 = extractvalue %dx.types.ResRet.f32 %333, 1
  %336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %337 = extractvalue %dx.types.CBufRet.f32 %336, 3
  %338 = fmul fast float %337, 2.000000e+00
  %339 = fmul fast float %338, %334
  %340 = fmul fast float %338, %335
  %341 = fsub fast float %339, %337
  %342 = fsub fast float %340, %337
  %343 = fmul fast float %341, %341
  %344 = fmul fast float %342, %342
  %345 = fadd fast float %343, %344
  %346 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %347 = add i32 %275, 0
  %348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %347, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %349 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %348, i32 0)  ; GetDimensions(handle,mipLevel)
  %350 = extractvalue %dx.types.Dimensions %349, 0
  %351 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %350)  ; FirstbitLo(value)
  %352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.i32 %352, 1
  %354 = sub nsw i32 %353, %351
  %355 = sitofp i32 %354 to float
  %356 = fsub fast float %177, %355
  %357 = call float @dx.op.binary.f32(i32 35, float %356, float 0.000000e+00)  ; FMax(a,b)
  %358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %348, %dx.types.Handle %59, float %290, float %291, float %264, float undef, i32 0, i32 0, i32 undef, float %357)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = add i32 %278, 0
  %361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %361, i32 0)  ; GetDimensions(handle,mipLevel)
  %363 = extractvalue %dx.types.Dimensions %362, 0
  %364 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %363)  ; FirstbitLo(value)
  %365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %366 = extractvalue %dx.types.CBufRet.i32 %365, 1
  %367 = sub nsw i32 %366, %364
  %368 = sitofp i32 %367 to float
  %369 = fsub fast float %177, %368
  %370 = call float @dx.op.binary.f32(i32 35, float %369, float 0.000000e+00)  ; FMax(a,b)
  %371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %361, %dx.types.Handle %59, float %290, float %291, float %267, float undef, i32 0, i32 0, i32 undef, float %370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %372 = extractvalue %dx.types.ResRet.f32 %371, 0
  %373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %374 = extractvalue %dx.types.CBufRet.i32 %373, 0
  %375 = call i32 @dx.op.binary.i32(i32 40, i32 %197, i32 %374)  ; UMin(a,b)
  %376 = mul i32 %375, 36
  %377 = add i32 %376, 4
  %378 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %201)  ; Countbits(value)
  %379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.i32 %379, 0
  %381 = icmp eq i32 %380, 32
  %382 = select i1 %381, float %72, float %177
  %383 = and i32 %380, -2
  %384 = icmp eq i32 %383, 30
  %385 = or i1 %384, %381
  br i1 %385, label %386, label %427

; <label>:386                                     ; preds = %0
  %387 = extractvalue %dx.types.ResRet.i32 %213, 0
  %388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %389 = extractvalue %dx.types.CBufRet.i32 %388, 0
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %406, label %391

; <label>:391                                     ; preds = %386
  %392 = icmp eq i32 %389, 1
  br i1 %392, label %406, label %393

; <label>:393                                     ; preds = %391
  %394 = icmp eq i32 %389, 2
  br i1 %394, label %406, label %395

; <label>:395                                     ; preds = %393
  %396 = icmp eq i32 %389, 3
  br i1 %396, label %406, label %397

; <label>:397                                     ; preds = %395
  %398 = icmp eq i32 %389, 4
  br i1 %398, label %406, label %399

; <label>:399                                     ; preds = %397
  %400 = call i32 @dx.op.binary.i32(i32 39, i32 %389, i32 6)  ; UMax(a,b)
  %401 = call i32 @dx.op.binary.i32(i32 40, i32 %400, i32 13)  ; UMin(a,b)
  %402 = shl i32 %401, 2
  %403 = add i32 %212, %402
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  br label %406

; <label>:406                                     ; preds = %399, %397, %395, %393, %391, %386
  %407 = phi i32 [ %405, %399 ], [ %387, %386 ], [ %216, %391 ], [ %219, %393 ], [ %222, %395 ], [ %225, %397 ]
  %408 = add i32 %407, 0
  %409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %410 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %409, i32 0)  ; GetDimensions(handle,mipLevel)
  %411 = extractvalue %dx.types.Dimensions %410, 0
  %412 = icmp eq i32 %411, 1
  %413 = icmp eq i32 %411, 4
  %414 = or i1 %412, %413
  br i1 %414, label %421, label %415

; <label>:415                                     ; preds = %406
  %416 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %411)  ; FirstbitLo(value)
  %417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.i32 %417, 1
  %419 = sub nsw i32 %418, %416
  %420 = call i32 @dx.op.binary.i32(i32 37, i32 %419, i32 0)  ; IMax(a,b)
  br label %421

; <label>:421                                     ; preds = %415, %406
  %422 = phi i32 [ %420, %415 ], [ -1, %406 ]
  %423 = sitofp i32 %422 to float
  %424 = icmp slt i32 %422, 0
  %425 = fsub fast float %382, %423
  %426 = select i1 %424, float 0.000000e+00, float %425
  br label %427

; <label>:427                                     ; preds = %421, %0
  %428 = phi float [ 0.000000e+00, %0 ], [ %423, %421 ]
  %429 = phi float [ 0.000000e+00, %0 ], [ %426, %421 ]
  %430 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %201)  ; FirstbitLo(value)
  %431 = shl i32 %430, 2
  %432 = add i32 %377, %431
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 32767
  %436 = mul nuw nsw i32 %435, 928
  %437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %436, i32 undef)  ; BufferLoad(srv,index,wot)
  %438 = extractvalue %dx.types.ResRet.i32 %437, 0
  %439 = or i32 %436, 8
  %440 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.f32 %440, 0
  %442 = or i32 %436, 12
  %443 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.f32 %443, 1
  %445 = or i32 %436, 20
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = or i32 %436, 24
  %449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.f32 %449, 0
  %451 = extractvalue %dx.types.ResRet.f32 %449, 1
  %452 = extractvalue %dx.types.ResRet.f32 %449, 2
  %453 = extractvalue %dx.types.ResRet.f32 %449, 3
  %454 = add nuw nsw i32 %436, 40
  %455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.f32 %455, 0
  %457 = add nuw nsw i32 %436, 72
  %458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.f32 %458, 0
  %460 = extractvalue %dx.types.ResRet.f32 %458, 1
  %461 = add nuw nsw i32 %436, 80
  %462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.f32 %462, 0
  %464 = add nuw nsw i32 %436, 228
  %465 = add nuw nsw i32 %436, 516
  %466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.f32 %466, 1
  %468 = add nuw nsw i32 %436, 528
  %469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.f32 %469, 0
  %471 = extractvalue %dx.types.ResRet.f32 %469, 1
  %472 = add nuw nsw i32 %436, 540
  %473 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.f32 %473, 0
  %475 = extractvalue %dx.types.ResRet.f32 %473, 1
  %476 = add nuw nsw i32 %436, 548
  %477 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %476, i32 undef)  ; BufferLoad(srv,index,wot)
  %478 = extractvalue %dx.types.ResRet.f32 %477, 0
  %479 = add nuw nsw i32 %436, 552
  %480 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %479, i32 undef)  ; BufferLoad(srv,index,wot)
  %481 = extractvalue %dx.types.ResRet.f32 %480, 0
  %482 = extractvalue %dx.types.ResRet.f32 %480, 1
  %483 = extractvalue %dx.types.ResRet.f32 %480, 2
  %484 = add nuw nsw i32 %436, 596
  %485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %484, i32 undef)  ; BufferLoad(srv,index,wot)
  %486 = extractvalue %dx.types.ResRet.f32 %485, 0
  %487 = extractvalue %dx.types.ResRet.f32 %485, 1
  %488 = add nuw nsw i32 %436, 620
  %489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.f32 %489, 0
  %491 = extractvalue %dx.types.ResRet.f32 %489, 1
  %492 = add nuw nsw i32 %436, 628
  %493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %492, i32 undef)  ; BufferLoad(srv,index,wot)
  %494 = extractvalue %dx.types.ResRet.f32 %493, 0
  %495 = extractvalue %dx.types.ResRet.f32 %493, 1
  %496 = extractvalue %dx.types.ResRet.f32 %493, 2
  %497 = extractvalue %dx.types.ResRet.f32 %493, 3
  %498 = add nuw nsw i32 %436, 644
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = add nuw nsw i32 %436, 648
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = add nuw nsw i32 %436, 652
  %505 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = add nuw nsw i32 %436, 656
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = add nuw nsw i32 %436, 660
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = add nuw nsw i32 %436, 664
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = extractvalue %dx.types.ResRet.f32 %514, 1
  %517 = add nuw nsw i32 %436, 676
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = add nuw nsw i32 %436, 696
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = extractvalue %dx.types.ResRet.f32 %522, 1
  %525 = add nuw nsw i32 %436, 704
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  %528 = add nuw nsw i32 %436, 708
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = add nuw nsw i32 %436, 716
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = add nuw nsw i32 %436, 720
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = add nuw nsw i32 %436, 732
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 1
  %542 = add nuw nsw i32 %436, 744
  %543 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = add nuw nsw i32 %436, 748
  %546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = add nuw nsw i32 %436, 752
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = add nuw nsw i32 %436, 756
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = extractvalue %dx.types.ResRet.f32 %552, 3
  %557 = add nuw nsw i32 %436, 780
  %558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = add nuw nsw i32 %436, 792
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = extractvalue %dx.types.ResRet.f32 %562, 1
  %565 = add nuw nsw i32 %436, 800
  %566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = add nuw nsw i32 %436, 812
  %570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = add nuw nsw i32 %436, 816
  %573 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %572, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.f32 %573, 1
  %575 = add nuw nsw i32 %436, 852
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = add nuw nsw i32 %436, 860
  %579 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.f32 %579, 2
  %581 = add nuw nsw i32 %436, 884
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = extractvalue %dx.types.ResRet.f32 %582, 2
  %586 = add nuw nsw i32 %436, 896
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add nuw nsw i32 %436, 900
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %589, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = add nuw nsw i32 %436, 904
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add nuw nsw i32 %436, 908
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = add nuw nsw i32 %436, 912
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  %601 = add nuw nsw i32 %436, 916
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %438, 128
  %605 = icmp ne i32 %604, 0
  %606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %607 = extractvalue %dx.types.CBufRet.i32 %606, 0
  %608 = and i32 %607, 512
  %609 = icmp ne i32 %608, 0
  %610 = and i1 %605, %609
  %611 = select i1 %610, float 0.000000e+00, float 1.000000e+00
  %612 = call float @dx.op.unary.f32(i32 7, float %611)  ; Saturate(value)
  %613 = fmul fast float %612, 2.550000e+02
  %614 = fptoui float %613 to i32
  %615 = fcmp fast ole float %78, 0x3FA4B5DCC0000000
  %616 = fmul fast float %78, 0x3FB3D07220000000
  %617 = fadd fast float %78, 0x3FAC28F5C0000000
  %618 = fmul fast float %617, 0x3FEE54EDE0000000
  %619 = call float @dx.op.unary.f32(i32 23, float %618)  ; Log(value)
  %620 = fmul fast float %619, 0x4003333340000000
  %621 = call float @dx.op.unary.f32(i32 21, float %620)  ; Exp(value)
  %622 = select i1 %615, float %616, float %621
  %623 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %624 = fmul fast float %486, %359
  %625 = fadd fast float %624, %487
  %626 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %627 = call float @dx.op.binary.f32(i32 35, float %623, float %626)  ; FMax(a,b)
  %628 = add i32 %591, 0
  %629 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %628, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %630 = fmul fast float %463, %346
  %631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %632 = extractvalue %dx.types.CBufRet.i32 %631, 0
  %633 = and i32 %632, 65536
  %634 = icmp eq i32 %633, 0
  %635 = and i32 %632, 262144
  %636 = icmp ne i32 %635, 0
  %637 = and i32 %632, 1048576
  %638 = icmp ne i32 %637, 0
  br i1 %634, label %914, label %639

; <label>:639                                     ; preds = %427
  %640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %641 = extractvalue %dx.types.CBufRet.f32 %640, 0
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = extractvalue %dx.types.CBufRet.f32 %642, 1
  %645 = fadd fast float %643, %153
  %646 = fadd fast float %644, %154
  %647 = fmul fast float %153, %153
  %648 = fmul fast float %154, %154
  %649 = fadd fast float %647, %648
  %650 = fmul fast float %155, %155
  %651 = fadd fast float %649, %650
  %652 = call float @dx.op.unary.f32(i32 24, float %651)  ; Sqrt(value)
  br i1 %638, label %653, label %699

; <label>:653                                     ; preds = %639
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = fcmp fast ogt float %652, %655
  %657 = zext i1 %656 to i32
  %658 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %659 = fcmp fast ogt float %652, %658
  %660 = zext i1 %659 to i32
  %661 = add nuw nsw i32 %660, %657
  %662 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %663 = fcmp fast ogt float %652, %662
  %664 = zext i1 %663 to i32
  %665 = add nuw nsw i32 %661, %664
  %666 = icmp ult i32 %665, 3
  %667 = zext i1 %666 to i32
  %668 = shl nuw nsw i32 %665, 2
  %669 = add nuw nsw i32 %668, 48
  %670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %669)  ; CBufferLoadLegacy(handle,regIndex)
  %671 = extractvalue %dx.types.CBufRet.f32 %670, 1
  %672 = fcmp fast ogt float %652, %671
  %673 = zext i1 %672 to i32
  %674 = or i32 %668, 1
  %675 = add nuw nsw i32 %674, 48
  %676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %675)  ; CBufferLoadLegacy(handle,regIndex)
  %677 = extractvalue %dx.types.CBufRet.f32 %676, 1
  %678 = fcmp fast ogt float %652, %677
  %679 = zext i1 %678 to i32
  %680 = add nuw nsw i32 %679, %673
  %681 = or i32 %668, 2
  %682 = add nuw nsw i32 %681, 48
  %683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %682)  ; CBufferLoadLegacy(handle,regIndex)
  %684 = extractvalue %dx.types.CBufRet.f32 %683, 1
  %685 = fcmp fast ogt float %652, %684
  %686 = zext i1 %685 to i32
  %687 = add nuw nsw i32 %680, %686
  %688 = add i32 %447, -1
  %689 = call i32 @dx.op.binary.i32(i32 40, i32 %687, i32 %688)  ; UMin(a,b)
  %690 = add i32 %668, %689
  %691 = call i32 @dx.op.binary.i32(i32 40, i32 %690, i32 12)  ; UMin(a,b)
  %692 = add i32 %691, 48
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %692)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 0
  %695 = fcmp fast oge float %652, %694
  %696 = zext i1 %695 to i32
  %697 = call i32 @dx.op.binary.i32(i32 40, i32 %447, i32 %667)  ; UMin(a,b)
  %698 = call i32 @dx.op.binary.i32(i32 40, i32 %696, i32 %697)  ; UMin(a,b)
  br label %699

; <label>:699                                     ; preds = %653, %639
  %700 = phi i32 [ %691, %653 ], [ 0, %639 ]
  %701 = phi i32 [ %698, %653 ], [ 0, %639 ]
  %702 = fmul fast float %630, 3.906250e-03
  %703 = add i32 %701, %447
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %901, label %705

; <label>:705                                     ; preds = %699
  br label %706

; <label>:706                                     ; preds = %870, %705
  %707 = phi float [ %897, %870 ], [ 0.000000e+00, %705 ]
  %708 = phi float [ %889, %870 ], [ 0.000000e+00, %705 ]
  %709 = phi float [ %890, %870 ], [ 0.000000e+00, %705 ]
  %710 = phi i32 [ %722, %870 ], [ %700, %705 ]
  %711 = phi i32 [ %898, %870 ], [ 0, %705 ]
  %712 = add i32 %711, %710
  br i1 %638, label %713, label %721

; <label>:713                                     ; preds = %706
  %714 = and i32 %712, -4
  %715 = add i32 %714, %447
  %716 = icmp uge i32 %712, %715
  %717 = sub i32 4, %447
  %718 = select i1 %716, i32 %717, i32 0
  %719 = add i32 %718, %710
  %720 = add i32 %718, %712
  br label %721

; <label>:721                                     ; preds = %713, %706
  %722 = phi i32 [ %719, %713 ], [ %710, %706 ]
  %723 = phi i32 [ %720, %713 ], [ %712, %706 ]
  %724 = and i32 %723, 3
  %725 = select i1 %638, i32 %724, i32 %711
  %726 = lshr i32 %723, 2
  %727 = select i1 %638, i32 %726, i32 0
  %728 = add i32 %723, 32
  %729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %728)  ; CBufferLoadLegacy(handle,regIndex)
  %730 = extractvalue %dx.types.CBufRet.f32 %729, 0
  %731 = extractvalue %dx.types.CBufRet.f32 %729, 1
  %732 = extractvalue %dx.types.CBufRet.f32 %729, 2
  %733 = extractvalue %dx.types.CBufRet.f32 %729, 3
  %734 = fmul fast float %730, %652
  %735 = fadd fast float %734, %731
  %736 = call float @dx.op.unary.f32(i32 7, float %735)  ; Saturate(value)
  %737 = fmul fast float %732, %652
  %738 = fadd fast float %737, %733
  %739 = call float @dx.op.unary.f32(i32 7, float %738)  ; Saturate(value)
  %740 = call float @dx.op.binary.f32(i32 36, float %736, float %739)  ; FMin(a,b)
  %741 = select i1 %638, float %740, float 1.000000e+00
  %742 = mul i32 %725, 72
  %743 = add i32 %464, %742
  %744 = add i32 %743, 16
  %745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = extractvalue %dx.types.ResRet.f32 %745, 1
  %748 = extractvalue %dx.types.ResRet.f32 %745, 2
  %749 = extractvalue %dx.types.ResRet.f32 %745, 3
  %750 = add i32 %743, 36
  %751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = fmul fast float %702, %752
  %754 = add i32 %743, 56
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  %757 = fmul fast float %753, %756
  %758 = extractvalue %dx.types.ResRet.f32 %755, 1
  %759 = fadd fast float %757, %758
  %760 = call float @dx.op.binary.f32(i32 35, float %759, float 0.000000e+00)  ; FMax(a,b)
  %761 = add i32 %743, 32
  %762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  br i1 %636, label %764, label %797

; <label>:764                                     ; preds = %721
  %765 = fmul fast float %752, %341
  %766 = fmul fast float %752, %342
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 1
  %769 = add i32 %743, 40
  %770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  %772 = extractvalue %dx.types.ResRet.f32 %770, 1
  %773 = extractvalue %dx.types.ResRet.f32 %770, 2
  %774 = extractvalue %dx.types.ResRet.f32 %770, 3
  %775 = fadd fast float %768, %193
  %776 = fadd fast float %775, %773
  %777 = fmul fast float %775, %772
  %778 = call float @dx.op.unary.f32(i32 29, float %777)  ; Round_z(value)
  %779 = fmul fast float %771, %778
  %780 = fsub fast float %775, %779
  %781 = fmul fast float %776, %772
  %782 = call float @dx.op.unary.f32(i32 29, float %781)  ; Round_z(value)
  %783 = fmul fast float %782, %771
  %784 = fsub fast float %776, %783
  %785 = fmul fast float %780, %765
  %786 = fmul fast float %780, %766
  %787 = fmul fast float %784, %765
  %788 = fmul fast float %784, %766
  %789 = fsub fast float %645, %785
  %790 = fsub fast float %646, %786
  %791 = fsub fast float %645, %787
  %792 = fsub fast float %646, %788
  %793 = fsub fast float %773, %780
  %794 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %795 = fmul fast float %794, %774
  %796 = call float @dx.op.unary.f32(i32 7, float %795)  ; Saturate(value)
  br label %797

; <label>:797                                     ; preds = %764, %721
  %798 = phi float [ %789, %764 ], [ %645, %721 ]
  %799 = phi float [ %790, %764 ], [ %646, %721 ]
  %800 = phi float [ %791, %764 ], [ %645, %721 ]
  %801 = phi float [ %792, %764 ], [ %646, %721 ]
  %802 = phi float [ %796, %764 ], [ 0.000000e+00, %721 ]
  %803 = fmul fast float %441, 4.000000e+00
  %804 = uitofp i32 %727 to float
  %805 = fadd fast float %804, %803
  %806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %807 = extractvalue %dx.types.CBufRet.f32 %806, 0
  %808 = extractvalue %dx.types.CBufRet.f32 %806, 1
  %809 = extractvalue %dx.types.CBufRet.f32 %806, 2
  %810 = extractvalue %dx.types.CBufRet.f32 %806, 3
  %811 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %807, float* %811, align 4
  %812 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %808, float* %812, align 4
  %813 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %809, float* %813, align 4
  %814 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %810, float* %814, align 4
  %815 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 %727
  %816 = load float, float* %815, align 4, !tbaa !106, !noalias !110
  %817 = fmul fast float %816, %444
  %818 = select i1 %638, float %817, float %444
  %819 = fmul fast float %798, %746
  %820 = call float @dx.op.tertiary.f32(i32 46, float %747, float %799, float %819)  ; FMad(a,b,c)
  %821 = fmul fast float %798, %748
  %822 = call float @dx.op.tertiary.f32(i32 46, float %749, float %799, float %821)  ; FMad(a,b,c)
  %823 = add i32 %743, 8
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = fadd fast float %825, %820
  %828 = fadd fast float %826, %822
  %829 = fmul fast float %827, %818
  %830 = fmul fast float %828, %818
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %743, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = fmul fast float %829, %832
  %835 = fmul fast float %830, %833
  %836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %837 = extractvalue %dx.types.CBufRet.f32 %836, 2
  %838 = fadd fast float %834, %837
  %839 = fadd fast float %835, %837
  %840 = fmul fast float %800, %746
  %841 = call float @dx.op.tertiary.f32(i32 46, float %747, float %801, float %840)  ; FMad(a,b,c)
  %842 = fmul fast float %800, %748
  %843 = call float @dx.op.tertiary.f32(i32 46, float %749, float %801, float %842)  ; FMad(a,b,c)
  %844 = fadd fast float %825, %841
  %845 = fadd fast float %826, %843
  %846 = fmul fast float %844, %818
  %847 = fmul fast float %845, %818
  %848 = fmul fast float %846, %832
  %849 = fmul fast float %847, %833
  %850 = fadd fast float %848, %837
  %851 = fadd fast float %849, %837
  %852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %838, float %839, float %805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 3
  %856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %850, float %851, float %805, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %636, label %857, label %870

; <label>:857                                     ; preds = %797
  %858 = extractvalue %dx.types.ResRet.f32 %856, 3
  %859 = extractvalue %dx.types.ResRet.f32 %856, 1
  %860 = extractvalue %dx.types.ResRet.f32 %856, 0
  %861 = fsub fast float %860, %853
  %862 = fsub fast float %859, %854
  %863 = fsub fast float %858, %855
  %864 = fmul fast float %861, %802
  %865 = fmul fast float %862, %802
  %866 = fmul fast float %863, %802
  %867 = fadd fast float %864, %853
  %868 = fadd fast float %865, %854
  %869 = fadd fast float %866, %855
  br label %870

; <label>:870                                     ; preds = %857, %797
  %871 = phi float [ %867, %857 ], [ %853, %797 ]
  %872 = phi float [ %868, %857 ], [ %854, %797 ]
  %873 = phi float [ %869, %857 ], [ %855, %797 ]
  %874 = fmul fast float %871, 2.000000e+00
  %875 = fmul fast float %872, 2.000000e+00
  %876 = fadd fast float %874, -1.000000e+00
  %877 = fadd fast float %875, -1.000000e+00
  %878 = fmul fast float %876, %746
  %879 = call float @dx.op.tertiary.f32(i32 46, float %877, float %748, float %878)  ; FMad(a,b,c)
  %880 = fmul fast float %876, %747
  %881 = call float @dx.op.tertiary.f32(i32 46, float %877, float %749, float %880)  ; FMad(a,b,c)
  %882 = fmul fast float %741, %641
  %883 = fmul fast float %882, %760
  %884 = fmul fast float %883, %763
  %885 = fmul fast float %879, %884
  %886 = fmul fast float %885, %832
  %887 = fmul fast float %881, %884
  %888 = fmul fast float %887, %833
  %889 = fadd fast float %886, %708
  %890 = fadd fast float %888, %709
  %891 = add i32 %743, 64
  %892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = fmul fast float %893, %873
  %895 = extractvalue %dx.types.ResRet.f32 %892, 1
  %896 = fadd fast float %894, %895
  %897 = call float @dx.op.binary.f32(i32 35, float %707, float %896)  ; FMax(a,b)
  %898 = add nuw i32 %711, 1
  %899 = icmp eq i32 %898, %703
  br i1 %899, label %900, label %706

; <label>:900                                     ; preds = %870
  br label %901

; <label>:901                                     ; preds = %900, %699
  %902 = phi float [ 0.000000e+00, %699 ], [ %897, %900 ]
  %903 = phi float [ 0.000000e+00, %699 ], [ %889, %900 ]
  %904 = phi float [ 0.000000e+00, %699 ], [ %890, %900 ]
  %905 = call float @dx.op.dot3.f32(i32 55, float %903, float %904, float 1.000000e+00, float %903, float %904, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.unary.f32(i32 25, float %905)  ; Rsqrt(value)
  %907 = fmul fast float %906, %903
  %908 = fmul fast float %906, %904
  %909 = fmul fast float %902, %490
  %910 = fadd fast float %909, %491
  %911 = call float @dx.op.unary.f32(i32 7, float %910)  ; Saturate(value)
  %912 = fmul float %906, 5.000000e-01
  %913 = fadd float %912, 5.000000e-01
  br label %914

; <label>:914                                     ; preds = %901, %427
  %915 = phi float [ %907, %901 ], [ 0.000000e+00, %427 ]
  %916 = phi float [ %908, %901 ], [ 0.000000e+00, %427 ]
  %917 = phi float [ %913, %901 ], [ 5.000000e-01, %427 ]
  %918 = phi float [ %911, %901 ], [ 0.000000e+00, %427 ]
  %919 = fadd fast float %918, %627
  %920 = icmp ne i32 %447, 0
  %921 = select i1 %920, i32 2, i32 0
  %922 = fcmp fast ogt float %918, 0.000000e+00
  %923 = select i1 %922, i32 4, i32 0
  %924 = fmul fast float %530, %346
  %925 = fadd fast float %924, %531
  %926 = call float @dx.op.binary.f32(i32 35, float %925, float 0.000000e+00)  ; FMax(a,b)
  %927 = fmul fast float %926, %523
  %928 = fadd fast float %927, %524
  %929 = call float @dx.op.unary.f32(i32 7, float %928)  ; Saturate(value)
  %930 = fmul fast float %929, %919
  %931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %932 = extractvalue %dx.types.CBufRet.f32 %931, 1
  %933 = fcmp fast oge float %930, %932
  %934 = icmp ne i32 %577, 0
  %935 = select i1 %934, i32 8, i32 0
  %936 = shl i32 %438, 3
  %937 = and i32 %936, 16
  %938 = and i32 %438, 2
  %939 = icmp ne i32 %938, 0
  %940 = and i1 %939, %933
  %941 = select i1 %940, i32 32, i32 0
  %942 = shl i32 %438, 2
  %943 = and i32 %942, 256
  %944 = or i32 %943, %937
  %945 = or i32 %944, %921
  %946 = or i32 %945, %935
  %947 = or i32 %946, %923
  %948 = or i32 %947, %941
  %949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %950 = extractvalue %dx.types.CBufRet.f32 %949, 0
  %951 = fmul fast float %950, %87
  %952 = extractvalue %dx.types.CBufRet.f32 %949, 1
  %953 = fadd fast float %951, %952
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 0
  %957 = fmul fast float %956, %954
  %958 = select i1 %934, float %957, float 0.000000e+00
  %959 = fcmp fast ogt float %958, 0.000000e+00
  %960 = or i1 %940, %959
  br i1 %960, label %961, label %1237

; <label>:961                                     ; preds = %914
  %962 = select i1 %933, float %919, float 0.000000e+00
  %963 = add i32 %222, 0
  %964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %965 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %964, i32 0)  ; GetDimensions(handle,mipLevel)
  %966 = extractvalue %dx.types.Dimensions %965, 0
  %967 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %966)  ; FirstbitLo(value)
  %968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.i32 %968, 1
  %970 = sub nsw i32 %969, %967
  %971 = sitofp i32 %970 to float
  %972 = fsub fast float %483, %971
  %973 = call float @dx.op.binary.f32(i32 35, float %972, float 0.000000e+00)  ; FMax(a,b)
  %974 = fmul fast float %467, %231
  %975 = fmul fast float %467, %232
  %976 = fmul fast float %481, %79
  %977 = fmul fast float %481, %80
  %978 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %979 = call float @dx.op.unary.f32(i32 22, float %977)  ; Frc(value)
  %980 = fmul fast float %978, 2.000000e+00
  %981 = fmul fast float %979, 2.000000e+00
  %982 = fadd fast float %980, -1.000000e+00
  %983 = fadd fast float %981, -1.000000e+00
  %984 = call float @dx.op.unary.f32(i32 6, float %982)  ; FAbs(value)
  %985 = call float @dx.op.unary.f32(i32 6, float %983)  ; FAbs(value)
  %986 = fsub fast float 1.000000e+00, %984
  %987 = fmul fast float %986, %985
  %988 = fsub fast float %986, %987
  %989 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %988, float* %989, align 4, !tbaa !106, !noalias !115
  %990 = fmul fast float %985, %984
  %991 = fsub fast float %984, %990
  %992 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %991, float* %992, align 4, !tbaa !106, !noalias !115
  %993 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %987, float* %993, align 4, !tbaa !106, !noalias !115
  %994 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %990, float* %994, align 4, !tbaa !106, !noalias !115
  br label %995

; <label>:995                                     ; preds = %1218, %961
  %996 = phi float [ 0.000000e+00, %961 ], [ %1219, %1218 ]
  %997 = phi float [ 0.000000e+00, %961 ], [ %1220, %1218 ]
  %998 = phi float [ 0.000000e+00, %961 ], [ %1221, %1218 ]
  %999 = phi float [ 0.000000e+00, %961 ], [ %1222, %1218 ]
  %1000 = phi float [ 0.000000e+00, %961 ], [ %1223, %1218 ]
  %1001 = phi i32 [ 0, %961 ], [ %1224, %1218 ]
  %1002 = phi float [ %915, %961 ], [ %1096, %1218 ]
  %1003 = phi float [ %916, %961 ], [ %1097, %1218 ]
  %1004 = mul i32 %1001, 2
  %1005 = add i32 0, %1004
  %1006 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1005
  %1007 = load float, float* %1006, align 4
  %1008 = mul i32 %1001, 2
  %1009 = add i32 1, %1008
  %1010 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1009
  %1011 = load float, float* %1010, align 4
  %1012 = fmul fast float %1007, 5.000000e-01
  %1013 = fmul fast float %1011, 5.000000e-01
  %1014 = fsub fast float 1.000000e+00, %1007
  %1015 = fsub fast float 1.000000e+00, %1011
  %1016 = fmul fast float %1014, 5.000000e-01
  %1017 = fmul fast float %1015, 5.000000e-01
  %1018 = fadd fast float %1012, %976
  %1019 = fadd fast float %1013, %977
  %1020 = call float @dx.op.unary.f32(i32 27, float %1018)  ; Round_ni(value)
  %1021 = call float @dx.op.unary.f32(i32 27, float %1019)  ; Round_ni(value)
  %1022 = fadd fast float %1020, %1016
  %1023 = fadd fast float %1021, %1017
  %1024 = fmul fast float %1022, %482
  %1025 = fmul fast float %1023, %482
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = fmul fast float %1024, %1027
  %1029 = fmul fast float %1025, %1027
  %1030 = extractvalue %dx.types.CBufRet.f32 %1026, 1
  %1031 = fadd fast float %1028, %1030
  %1032 = fadd fast float %1029, %1030
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %964, %dx.types.Handle %62, float %1031, float %1032, float %211, float undef, i32 0, i32 0, i32 undef, float %973)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 3
  %1038 = fmul fast float %1037, 2.000000e+00
  %1039 = fmul fast float %1038, %1034
  %1040 = fmul fast float %1038, %1035
  %1041 = fsub fast float %1039, %1037
  %1042 = fsub fast float %1040, %1037
  %1043 = fmul fast float %1041, %1041
  %1044 = fmul fast float %1042, %1042
  %1045 = fadd fast float %1043, %1044
  %1046 = call float @dx.op.unary.f32(i32 24, float %1045)  ; Sqrt(value)
  %1047 = fcmp fast ogt float %1046, 0.000000e+00
  %1048 = fdiv fast float 1.000000e+00, %1046
  %1049 = fmul fast float %1041, %1048
  %1050 = fmul fast float %1042, %1048
  %1051 = select i1 %1047, float %1049, float 0.000000e+00
  %1052 = select i1 %1047, float %1050, float 0.000000e+00
  br i1 %959, label %1053, label %1095

; <label>:1053                                    ; preds = %995
  %1054 = add i32 %577, 0
  %1055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1054, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 1
  %1058 = fmul fast float %478, %467
  %1059 = fmul fast float %1058, %1046
  %1060 = fsub fast float -0.000000e+00, %1051
  %1061 = fmul fast float %1052, %974
  %1062 = call float @dx.op.tertiary.f32(i32 46, float %1060, float %975, float %1061)  ; FMad(a,b,c)
  %1063 = fmul fast float %1051, %974
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %975, float %1063)  ; FMad(a,b,c)
  %1065 = fmul fast float %1059, %1057
  %1066 = fsub fast float %1064, %1065
  %1067 = fmul fast float %1062, %470
  %1068 = fmul fast float %1066, %471
  %1069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1055, %dx.types.Handle %1069, float %1067, float %1068, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1070, 3
  %1073 = fadd fast float %1071, %1072
  %1074 = fmul fast float %1073, %580
  %1075 = fsub fast float %1074, %580
  %1076 = fsub fast float %1071, %1072
  %1077 = fmul fast float %1076, %580
  %1078 = fmul fast float %1075, %1052
  %1079 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %1077, float %1078)  ; FMad(a,b,c)
  %1080 = fmul fast float %1075, %1060
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1077, float %1080)  ; FMad(a,b,c)
  %1082 = fmul fast float %1079, %470
  %1083 = fmul fast float %1081, %471
  %1084 = fmul fast float %474, %346
  %1085 = fadd fast float %1084, %475
  %1086 = call float @dx.op.binary.f32(i32 35, float %1085, float 0.000000e+00)  ; FMax(a,b)
  %1087 = fmul fast float %1086, %958
  %1088 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %1001
  %1089 = load float, float* %1088, align 4, !tbaa !106, !noalias !115
  %1090 = fmul fast float %1087, %1089
  %1091 = fmul fast float %1082, %1090
  %1092 = fmul fast float %1083, %1090
  %1093 = fadd fast float %1091, %1002
  %1094 = fadd fast float %1092, %1003
  br label %1095

; <label>:1095                                    ; preds = %1053, %995
  %1096 = phi float [ %1093, %1053 ], [ %1002, %995 ]
  %1097 = phi float [ %1094, %1053 ], [ %1003, %995 ]
  %1098 = fcmp fast ogt float %962, 0.000000e+00
  %1099 = and i1 %939, %1098
  br i1 %1099, label %1100, label %1218

; <label>:1100                                    ; preds = %1095
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1103 = fmul fast float %527, %467
  %1104 = fmul fast float %1046, %1103
  %1105 = fsub fast float -0.000000e+00, %1051
  %1106 = fmul fast float %1052, %974
  %1107 = call float @dx.op.tertiary.f32(i32 46, float %1105, float %975, float %1106)  ; FMad(a,b,c)
  %1108 = fmul fast float %1051, %974
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %975, float %1108)  ; FMad(a,b,c)
  %1110 = fmul fast float %1104, %1102
  %1111 = fsub fast float %1109, %1110
  %1112 = fmul fast float %1107, %515
  %1113 = fmul fast float %1111, %516
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1114, float %1112, float %1113, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = fmul fast float %927, %1116
  %1118 = fadd fast float %1117, %524
  %1119 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1121 = extractvalue %dx.types.CBufRet.f32 %1120, 2
  %1122 = fmul fast float %1121, %87
  %1123 = extractvalue %dx.types.CBufRet.f32 %1120, 3
  %1124 = fadd fast float %1122, %1123
  %1125 = call float @dx.op.unary.f32(i32 7, float %1124)  ; Saturate(value)
  %1126 = fcmp fast ogt float %1119, 0.000000e+00
  %1127 = fcmp fast ogt float %1125, 0.000000e+00
  %1128 = and i1 %1126, %1127
  %1129 = and i32 %438, 64
  %1130 = icmp ne i32 %1129, 0
  %1131 = and i1 %1130, %1128
  br i1 %1131, label %1132, label %1200

; <label>:1132                                    ; preds = %1100
  %1133 = add i32 %597, 0
  %1134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1133, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1135 = add i32 %600, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = fmul fast float %1107, %519
  %1138 = fmul fast float %1111, %520
  %1139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1134, %dx.types.Handle %1114, float %1137, float %1138, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = extractvalue %dx.types.ResRet.f32 %1139, 1
  %1142 = extractvalue %dx.types.ResRet.f32 %1139, 2
  %1143 = extractvalue %dx.types.ResRet.f32 %1139, 3
  %1144 = fmul fast float %1140, %583
  %1145 = fadd fast float %1144, %584
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  %1147 = fadd fast float %1141, %1143
  %1148 = fmul fast float %1147, %585
  %1149 = fsub fast float %1148, %585
  %1150 = fsub fast float %1141, %1143
  %1151 = fmul fast float %1150, %585
  %1152 = fmul fast float %1149, %1052
  %1153 = call float @dx.op.tertiary.f32(i32 46, float %1051, float %1151, float %1152)  ; FMad(a,b,c)
  %1154 = fmul fast float %1149, %1105
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1052, float %1151, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1153, %519
  %1157 = fmul fast float %1155, %520
  %1158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %1114, float %1137, float %1138, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = fsub fast float 1.000000e+00, %1119
  %1161 = bitcast float %1119 to i32
  %1162 = sitofp i32 %1161 to float
  %1163 = fadd fast float %1162, 0xC1CFBF8940000000
  %1164 = fmul fast float %1163, %512
  %1165 = fadd fast float %1164, 0x41CFBF8940000000
  %1166 = fptosi float %1165 to i32
  %1167 = bitcast i32 %1166 to float
  %1168 = bitcast float %1160 to i32
  %1169 = sitofp i32 %1168 to float
  %1170 = fadd fast float %1169, 0xC1CFBF8940000000
  %1171 = fmul fast float %1170, %512
  %1172 = fadd fast float %1171, 0x41CFBF8940000000
  %1173 = fptosi float %1172 to i32
  %1174 = bitcast i32 %1173 to float
  %1175 = fmul fast float %1167, %509
  %1176 = fmul fast float %1174, %509
  %1177 = fsub fast float %1160, %1175
  %1178 = fadd fast float %1176, %1160
  %1179 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  %1180 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  %1181 = fsub fast float %1159, %1179
  %1182 = fsub fast float %1180, %1179
  %1183 = bitcast float %1182 to i32
  %1184 = sub nsw i32 2129859010, %1183
  %1185 = bitcast i32 %1184 to float
  %1186 = fmul fast float %1185, %1181
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1125, %506
  %1189 = fmul fast float %1188, %1187
  %1190 = fmul fast float %1156, %1189
  %1191 = fmul fast float %1157, %1189
  %1192 = fadd fast float %1142, -1.000000e+00
  %1193 = fmul fast float %1189, %1192
  %1194 = fadd fast float %1193, 1.000000e+00
  %1195 = fsub fast float %1146, %500
  %1196 = fmul fast float %1189, %1195
  %1197 = fadd fast float %1196, %500
  %1198 = fmul fast float %1189, %1160
  %1199 = fadd fast float %1198, %1119
  br label %1200

; <label>:1200                                    ; preds = %1132, %1100
  %1201 = phi float [ %1199, %1132 ], [ %1119, %1100 ]
  %1202 = phi float [ %1197, %1132 ], [ %500, %1100 ]
  %1203 = phi float [ %1194, %1132 ], [ 1.000000e+00, %1100 ]
  %1204 = phi float [ %1190, %1132 ], [ 0.000000e+00, %1100 ]
  %1205 = phi float [ %1191, %1132 ], [ 0.000000e+00, %1100 ]
  %1206 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %1001
  %1207 = load float, float* %1206, align 4, !tbaa !106, !noalias !115
  %1208 = fmul fast float %1207, %1201
  %1209 = fmul fast float %1208, %1204
  %1210 = fmul fast float %1208, %1205
  %1211 = fadd fast float %1209, %996
  %1212 = fadd fast float %1210, %997
  %1213 = fmul fast float %1208, %1203
  %1214 = fadd fast float %1213, %998
  %1215 = fmul fast float %1208, %1202
  %1216 = fadd fast float %1215, %999
  %1217 = fadd fast float %1208, %1000
  br label %1218

; <label>:1218                                    ; preds = %1200, %1095
  %1219 = phi float [ %1211, %1200 ], [ %996, %1095 ]
  %1220 = phi float [ %1212, %1200 ], [ %997, %1095 ]
  %1221 = phi float [ %1214, %1200 ], [ %998, %1095 ]
  %1222 = phi float [ %1216, %1200 ], [ %999, %1095 ]
  %1223 = phi float [ %1217, %1200 ], [ %1000, %1095 ]
  %1224 = add nuw nsw i32 %1001, 1
  %1225 = icmp eq i32 %1224, 4
  br i1 %1225, label %1226, label %995, !llvm.loop !122

; <label>:1226                                    ; preds = %1218
  %1227 = fmul fast float %1223, %962
  %1228 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1227)  ; FMax(a,b)
  %1229 = fmul fast float %1223, %1219
  %1230 = fmul fast float %1223, %1220
  %1231 = fadd fast float %1221, -1.000000e+00
  %1232 = fmul fast float %1223, %1231
  %1233 = fadd fast float %1232, 1.000000e+00
  %1234 = fsub fast float %1222, %456
  %1235 = fmul fast float %1223, %1234
  %1236 = fadd fast float %1235, %456
  br label %1237

; <label>:1237                                    ; preds = %1226, %914
  %1238 = phi float [ %1096, %1226 ], [ %915, %914 ]
  %1239 = phi float [ %1097, %1226 ], [ %916, %914 ]
  %1240 = phi float [ %1228, %1226 ], [ 0.000000e+00, %914 ]
  %1241 = phi float [ %1229, %1226 ], [ 0.000000e+00, %914 ]
  %1242 = phi float [ %1230, %1226 ], [ 0.000000e+00, %914 ]
  %1243 = phi float [ %1233, %1226 ], [ 1.000000e+00, %914 ]
  %1244 = phi float [ %1236, %1226 ], [ %456, %914 ]
  %1245 = fmul fast float %563, %346
  %1246 = fadd fast float %1245, %564
  %1247 = call float @dx.op.binary.f32(i32 35, float %1246, float 0.000000e+00)  ; FMax(a,b)
  %1248 = fmul fast float %1247, %559
  %1249 = fadd fast float %1248, %560
  %1250 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1251 = fmul fast float %1250, %919
  %1252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1253 = extractvalue %dx.types.CBufRet.f32 %1252, 1
  %1254 = fcmp fast oge float %1251, %1253
  %1255 = shl i32 %438, 4
  %1256 = and i32 %1255, 64
  %1257 = or i32 %948, %1256
  %1258 = and i32 %438, 4
  %1259 = icmp ne i32 %1258, 0
  %1260 = and i1 %1259, %1254
  %1261 = select i1 %1260, i32 128, i32 0
  %1262 = or i32 %1261, %1257
  br i1 %1260, label %1263, label %1552

; <label>:1263                                    ; preds = %1237
  %1264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.f32 %1264, 0
  %1266 = extractvalue %dx.types.CBufRet.f32 %1264, 1
  %1267 = fsub fast float %153, %231
  %1268 = fadd fast float %1267, %1265
  %1269 = fsub fast float %154, %232
  %1270 = fadd fast float %1269, %1266
  %1271 = fmul fast float %1268, %534
  %1272 = fmul fast float %1270, %534
  %1273 = fadd fast float %1271, %231
  %1274 = fadd fast float %1272, %232
  %1275 = add i32 %603, 0
  %1276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1275, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1277 = fmul fast float %1273, %541
  %1278 = fmul fast float %1274, %541
  %1279 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1280 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1276, %dx.types.Handle %1279, float %1277, float %1278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = extractvalue %dx.types.ResRet.f32 %1280, 1
  %1283 = extractvalue %dx.types.ResRet.f32 %1280, 2
  %1284 = fmul fast float %1281, 2.000000e+00
  %1285 = fmul fast float %1282, 2.000000e+00
  %1286 = fadd fast float %1284, -1.000000e+00
  %1287 = fadd fast float %1285, -1.000000e+00
  %1288 = fmul fast float %1283, %537
  %1289 = fmul fast float %1288, %550
  %1290 = fmul fast float %1289, %1286
  %1291 = fmul fast float %1289, %1287
  %1292 = fsub fast float %341, %1290
  %1293 = fsub fast float %342, %1291
  %1294 = fmul fast float %1292, %547
  %1295 = fmul fast float %1293, %547
  %1296 = fadd fast float %1294, %1290
  %1297 = fadd fast float %1295, %1291
  %1298 = fmul fast float %1296, %550
  %1299 = fmul fast float %1297, %550
  %1300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1301 = extractvalue %dx.types.CBufRet.f32 %1300, 1
  %1302 = fmul fast float %550, %193
  %1303 = fadd fast float %1301, %1302
  %1304 = fadd fast float %1303, %555
  %1305 = fmul fast float %1303, %554
  %1306 = call float @dx.op.unary.f32(i32 29, float %1305)  ; Round_z(value)
  %1307 = fmul fast float %1306, %553
  %1308 = fsub fast float %1303, %1307
  %1309 = fmul fast float %1304, %554
  %1310 = call float @dx.op.unary.f32(i32 29, float %1309)  ; Round_z(value)
  %1311 = fmul fast float %1310, %553
  %1312 = fsub fast float %1304, %1311
  %1313 = fmul fast float %1298, %1308
  %1314 = fmul fast float %1299, %1308
  %1315 = fmul fast float %1298, %1312
  %1316 = fmul fast float %1299, %1312
  %1317 = fsub fast float %1273, %1313
  %1318 = fsub fast float %1274, %1314
  %1319 = fsub fast float %1273, %1315
  %1320 = fsub fast float %1274, %1316
  %1321 = fsub fast float %555, %1308
  %1322 = call float @dx.op.unary.f32(i32 6, float %1321)  ; FAbs(value)
  %1323 = fmul fast float %1322, %556
  %1324 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1325 = fmul fast float %1317, %538
  %1326 = fmul fast float %1318, %538
  %1327 = fmul fast float %1319, %538
  %1328 = fmul fast float %1320, %538
  %1329 = fcmp fast ogt float %544, 0.000000e+00
  br i1 %1329, label %1330, label %1417

; <label>:1330                                    ; preds = %1263
  %1331 = fmul fast float %544, %193
  %1332 = fmul fast float %1331, 5.000000e-01
  %1333 = fadd fast float %1332, 5.000000e-01
  %1334 = call float @dx.op.unary.f32(i32 22, float %1333)  ; Frc(value)
  %1335 = call float @dx.op.unary.f32(i32 22, float %1332)  ; Frc(value)
  %1336 = call float @dx.op.unary.f32(i32 27, float %1333)  ; Round_ni(value)
  %1337 = call float @dx.op.unary.f32(i32 27, float %1332)  ; Round_ni(value)
  %1338 = fmul fast float %1336, 2.000000e+00
  %1339 = fmul fast float %1337, 2.000000e+00
  %1340 = fadd fast float %1339, 1.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1334
  %1342 = fsub fast float 1.000000e+00, %1335
  %1343 = call float @dx.op.binary.f32(i32 36, float %1334, float %1341)  ; FMin(a,b)
  %1344 = call float @dx.op.binary.f32(i32 36, float %1335, float %1342)  ; FMin(a,b)
  %1345 = fmul fast float %1343, 2.000000e+00
  %1346 = fmul fast float %1344, 2.000000e+00
  %1347 = call float @dx.op.dot3.f32(i32 55, float %1338, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1348 = call float @dx.op.dot3.f32(i32 55, float %1338, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1338, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.unary.f32(i32 13, float %1347)  ; Sin(value)
  %1351 = call float @dx.op.unary.f32(i32 13, float %1348)  ; Sin(value)
  %1352 = call float @dx.op.unary.f32(i32 13, float %1349)  ; Sin(value)
  %1353 = fmul fast float %1350, 0x40E55DD180000000
  %1354 = fmul fast float %1351, 0x40E55DD180000000
  %1355 = fmul fast float %1352, 0x40E55DD180000000
  %1356 = call float @dx.op.unary.f32(i32 22, float %1353)  ; Frc(value)
  %1357 = call float @dx.op.unary.f32(i32 22, float %1354)  ; Frc(value)
  %1358 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1359 = fmul fast float %1356, 0x401921FB60000000
  %1360 = call float @dx.op.unary.f32(i32 12, float %1359)  ; Cos(value)
  %1361 = call float @dx.op.unary.f32(i32 13, float %1359)  ; Sin(value)
  %1362 = fsub fast float -0.000000e+00, %1361
  %1363 = call float @dx.op.dot3.f32(i32 55, float %1340, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1364 = call float @dx.op.dot3.f32(i32 55, float %1340, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1365 = call float @dx.op.dot3.f32(i32 55, float %1340, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1366 = call float @dx.op.unary.f32(i32 13, float %1363)  ; Sin(value)
  %1367 = call float @dx.op.unary.f32(i32 13, float %1364)  ; Sin(value)
  %1368 = call float @dx.op.unary.f32(i32 13, float %1365)  ; Sin(value)
  %1369 = fmul fast float %1366, 0x40E55DD180000000
  %1370 = fmul fast float %1367, 0x40E55DD180000000
  %1371 = fmul fast float %1368, 0x40E55DD180000000
  %1372 = call float @dx.op.unary.f32(i32 22, float %1369)  ; Frc(value)
  %1373 = call float @dx.op.unary.f32(i32 22, float %1370)  ; Frc(value)
  %1374 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1375 = fmul fast float %1372, 0x401921FB60000000
  %1376 = call float @dx.op.unary.f32(i32 12, float %1375)  ; Cos(value)
  %1377 = call float @dx.op.unary.f32(i32 13, float %1375)  ; Sin(value)
  %1378 = fsub fast float -0.000000e+00, %1377
  %1379 = fmul fast float %1360, %1325
  %1380 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1362, float %1379)  ; FMad(a,b,c)
  %1381 = fmul fast float %1361, %1325
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1360, float %1381)  ; FMad(a,b,c)
  %1383 = fadd fast float %1380, %1357
  %1384 = fadd fast float %1382, %1358
  %1385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1279, float %1383, float %1384, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1386 = extractvalue %dx.types.ResRet.f32 %1385, 0
  %1387 = fmul fast float %1386, %1345
  %1388 = fmul fast float %1376, %1325
  %1389 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1378, float %1388)  ; FMad(a,b,c)
  %1390 = fmul fast float %1377, %1325
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1326, float %1376, float %1390)  ; FMad(a,b,c)
  %1392 = fadd fast float %1389, %1373
  %1393 = fadd fast float %1391, %1374
  %1394 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1279, float %1392, float %1393, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1395 = extractvalue %dx.types.ResRet.f32 %1394, 0
  %1396 = fmul fast float %1395, %1346
  %1397 = fadd fast float %1396, %1387
  %1398 = fmul fast float %1360, %1327
  %1399 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1362, float %1398)  ; FMad(a,b,c)
  %1400 = fmul fast float %1361, %1327
  %1401 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1360, float %1400)  ; FMad(a,b,c)
  %1402 = fadd fast float %1399, %1357
  %1403 = fadd fast float %1401, %1358
  %1404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1279, float %1402, float %1403, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1405 = extractvalue %dx.types.ResRet.f32 %1404, 0
  %1406 = fmul fast float %1405, %1345
  %1407 = fmul fast float %1376, %1327
  %1408 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1378, float %1407)  ; FMad(a,b,c)
  %1409 = fmul fast float %1377, %1327
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1376, float %1409)  ; FMad(a,b,c)
  %1411 = fadd fast float %1408, %1373
  %1412 = fadd fast float %1410, %1374
  %1413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1279, float %1411, float %1412, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1414 = extractvalue %dx.types.ResRet.f32 %1413, 0
  %1415 = fmul fast float %1414, %1346
  %1416 = fadd fast float %1415, %1406
  br label %1422

; <label>:1417                                    ; preds = %1263
  %1418 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1279, float %1325, float %1326, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1419 = extractvalue %dx.types.ResRet.f32 %1418, 0
  %1420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1279, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  br label %1422

; <label>:1422                                    ; preds = %1417, %1330
  %1423 = phi float [ %1397, %1330 ], [ %1419, %1417 ]
  %1424 = phi float [ %1416, %1330 ], [ %1421, %1417 ]
  %1425 = fsub fast float %1424, %1423
  %1426 = fmul fast float %1425, %1324
  %1427 = fadd fast float %1426, %1423
  %1428 = fmul fast float %1248, %1427
  %1429 = fadd fast float %1428, %560
  %1430 = call float @dx.op.unary.f32(i32 7, float %1429)  ; Saturate(value)
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1433 = fmul fast float %1432, %87
  %1434 = extractvalue %dx.types.CBufRet.f32 %1431, 3
  %1435 = fadd fast float %1433, %1434
  %1436 = call float @dx.op.unary.f32(i32 7, float %1435)  ; Saturate(value)
  %1437 = fcmp fast ogt float %1430, 0.000000e+00
  %1438 = fcmp fast ogt float %1436, 0.000000e+00
  %1439 = and i1 %1437, %1438
  %1440 = and i32 %438, 64
  %1441 = icmp ne i32 %1440, 0
  %1442 = and i1 %1441, %1439
  br i1 %1442, label %1443, label %1532

; <label>:1443                                    ; preds = %1422
  %1444 = add i32 %597, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = fmul fast float %1325, %567
  %1447 = fmul fast float %1326, %568
  %1448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %1279, float %1446, float %1447, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.ResRet.f32 %1448, 3
  %1453 = fmul fast float %1449, %583
  %1454 = fadd fast float %1453, %584
  %1455 = call float @dx.op.unary.f32(i32 7, float %1454)  ; Saturate(value)
  %1456 = fadd fast float %1450, %1452
  %1457 = fmul fast float %1456, %585
  %1458 = fsub fast float %1457, %585
  %1459 = fsub fast float %1450, %1452
  %1460 = fmul fast float %1327, %567
  %1461 = fmul fast float %1328, %568
  %1462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1445, %dx.types.Handle %1279, float %1460, float %1461, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.ResRet.f32 %1462, 3
  %1467 = fmul fast float %1463, %583
  %1468 = fadd fast float %1467, %584
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fsub fast float %1466, %1456
  %1471 = fadd fast float %1470, %1464
  %1472 = fsub fast float -0.000000e+00, %1459
  %1473 = fsub fast float %1472, %1466
  %1474 = fadd fast float %1473, %1464
  %1475 = fmul fast float %1324, %585
  %1476 = fmul fast float %1475, %1471
  %1477 = fmul fast float %1474, %1324
  %1478 = fadd fast float %1476, %1458
  %1479 = fmul fast float %567, %1478
  %1480 = fadd fast float %1477, %1459
  %1481 = fmul fast float %585, %1480
  %1482 = fmul fast float %568, %1481
  %1483 = fsub fast float %1465, %1451
  %1484 = fmul fast float %1483, %1324
  %1485 = fsub fast float %1469, %1455
  %1486 = fmul fast float %1485, %1324
  %1487 = fsub fast float %1463, %1449
  %1488 = fmul fast float %1487, %1324
  %1489 = fsub fast float 1.000000e+00, %1430
  %1490 = bitcast float %1430 to i32
  %1491 = sitofp i32 %1490 to float
  %1492 = fadd fast float %1491, 0xC1CFBF8940000000
  %1493 = fmul fast float %1492, %512
  %1494 = fadd fast float %1493, 0x41CFBF8940000000
  %1495 = fptosi float %1494 to i32
  %1496 = bitcast i32 %1495 to float
  %1497 = bitcast float %1489 to i32
  %1498 = sitofp i32 %1497 to float
  %1499 = fadd fast float %1498, 0xC1CFBF8940000000
  %1500 = fmul fast float %1499, %512
  %1501 = fadd fast float %1500, 0x41CFBF8940000000
  %1502 = fptosi float %1501 to i32
  %1503 = bitcast i32 %1502 to float
  %1504 = fmul fast float %1496, %509
  %1505 = fmul fast float %1503, %509
  %1506 = fsub fast float %1489, %1504
  %1507 = fadd fast float %1505, %1489
  %1508 = call float @dx.op.unary.f32(i32 7, float %1506)  ; Saturate(value)
  %1509 = call float @dx.op.unary.f32(i32 7, float %1507)  ; Saturate(value)
  %1510 = fsub fast float %1449, %1508
  %1511 = fadd fast float %1510, %1488
  %1512 = fsub fast float %1509, %1508
  %1513 = bitcast float %1512 to i32
  %1514 = sub nsw i32 2129859010, %1513
  %1515 = bitcast i32 %1514 to float
  %1516 = fmul fast float %1515, %1511
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  %1518 = fmul fast float %1436, %506
  %1519 = fmul fast float %1518, %1517
  %1520 = fmul fast float %1479, %1519
  %1521 = fmul fast float %1482, %1519
  %1522 = fadd fast float %1451, -1.000000e+00
  %1523 = fadd fast float %1522, %1484
  %1524 = fmul fast float %1519, %1523
  %1525 = fadd fast float %1524, 1.000000e+00
  %1526 = fsub fast float %1455, %500
  %1527 = fadd fast float %1526, %1486
  %1528 = fmul fast float %1519, %1527
  %1529 = fadd fast float %1528, %500
  %1530 = fmul fast float %1519, %1489
  %1531 = fadd fast float %1530, %1430
  br label %1532

; <label>:1532                                    ; preds = %1443, %1422
  %1533 = phi float [ %1531, %1443 ], [ %1430, %1422 ]
  %1534 = phi float [ %1520, %1443 ], [ 0.000000e+00, %1422 ]
  %1535 = phi float [ %1521, %1443 ], [ 0.000000e+00, %1422 ]
  %1536 = phi float [ %1525, %1443 ], [ 1.000000e+00, %1422 ]
  %1537 = phi float [ %1529, %1443 ], [ %500, %1422 ]
  %1538 = fsub fast float %1534, %1241
  %1539 = fsub fast float %1535, %1242
  %1540 = fmul fast float %1538, %1533
  %1541 = fmul fast float %1539, %1533
  %1542 = fadd fast float %1540, %1241
  %1543 = fadd fast float %1541, %1242
  %1544 = fsub fast float %1536, %1243
  %1545 = fmul fast float %1544, %1533
  %1546 = fadd fast float %1545, %1243
  %1547 = fsub fast float %1537, %1244
  %1548 = fmul fast float %1547, %1533
  %1549 = fadd fast float %1548, %1244
  %1550 = fmul fast float %1533, %919
  %1551 = call float @dx.op.binary.f32(i32 35, float %1240, float %1550)  ; FMax(a,b)
  br label %1552

; <label>:1552                                    ; preds = %1532, %1237
  %1553 = phi float [ %1551, %1532 ], [ %1240, %1237 ]
  %1554 = phi float [ %1542, %1532 ], [ %1241, %1237 ]
  %1555 = phi float [ %1543, %1532 ], [ %1242, %1237 ]
  %1556 = phi float [ %1546, %1532 ], [ %1243, %1237 ]
  %1557 = phi float [ %1549, %1532 ], [ %1244, %1237 ]
  %1558 = and i32 %438, 16
  %1559 = icmp eq i32 %1558, 0
  br i1 %1559, label %1626, label %1560

; <label>:1560                                    ; preds = %1552
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1564 = fadd fast float %1562, %153
  %1565 = fadd fast float %1563, %154
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.CBufRet.f32 %1566, 1
  %1569 = fsub fast float %1564, %1567
  %1570 = fsub fast float %1565, %1568
  %1571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1572 = extractvalue %dx.types.CBufRet.f32 %1571, 2
  %1573 = fmul fast float %1569, %1572
  %1574 = fmul fast float %1570, %1572
  %1575 = fadd fast float %1573, 5.000000e-01
  %1576 = fadd fast float %1574, 5.000000e-01
  %1577 = fcmp fast olt float %1575, 0.000000e+00
  %1578 = fcmp fast olt float %1576, 0.000000e+00
  %1579 = or i1 %1577, %1578
  %1580 = fcmp fast oge float %1575, 1.000000e+00
  %1581 = fcmp fast oge float %1576, 1.000000e+00
  %1582 = or i1 %1580, %1581
  %1583 = or i1 %1579, %1582
  br i1 %1583, label %1617, label %1584

; <label>:1584                                    ; preds = %1560
  %1585 = extractvalue %dx.types.CBufRet.f32 %1561, 2
  %1586 = fadd fast float %1585, %155
  %1587 = fmul fast float %1572, %1564
  %1588 = fmul fast float %1572, %1565
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 2
  %1591 = fsub fast float %1586, %1590
  %1592 = extractvalue %dx.types.CBufRet.f32 %1589, 1
  %1593 = fmul fast float %1591, %1592
  %1594 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1595 = call float @dx.op.binary.f32(i32 36, float %1576, float %1594)  ; FMin(a,b)
  %1596 = call float @dx.op.binary.f32(i32 36, float %1575, float %1595)  ; FMin(a,b)
  %1597 = call float @dx.op.binary.f32(i32 35, float %1576, float %1594)  ; FMax(a,b)
  %1598 = call float @dx.op.binary.f32(i32 35, float %1575, float %1597)  ; FMax(a,b)
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = call float @dx.op.binary.f32(i32 36, float %1596, float %1599)  ; FMin(a,b)
  %1601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1602 = extractvalue %dx.types.CBufRet.f32 %1601, 3
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 1
  %1605 = call float @dx.op.binary.f32(i32 35, float %1604, float %1602)  ; FMax(a,b)
  %1606 = fsub fast float %1605, %1604
  %1607 = fsub fast float %1600, %1604
  %1608 = fdiv fast float %1607, %1606
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = fmul fast float %1609, 2.000000e+00
  %1611 = fsub fast float 3.000000e+00, %1610
  %1612 = fmul fast float %1609, %1609
  %1613 = fmul fast float %1612, %1611
  %1614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %60, float %1587, float %1588, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1615 = extractvalue %dx.types.ResRet.f32 %1614, 0
  %1616 = fmul fast float %1613, %1615
  br label %1617

; <label>:1617                                    ; preds = %1584, %1560
  %1618 = phi float [ %1616, %1584 ], [ 0.000000e+00, %1560 ]
  %1619 = fmul fast float %574, %231
  %1620 = fmul fast float %574, %232
  %1621 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1622 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %629, %dx.types.Handle %1621, float %1619, float %1620, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1623 = extractvalue %dx.types.ResRet.f32 %1622, 0
  %1624 = fmul fast float %1623, %1618
  %1625 = call float @dx.op.binary.f32(i32 35, float %1553, float %1624)  ; FMax(a,b)
  br label %1626

; <label>:1626                                    ; preds = %1617, %1552
  %1627 = phi float [ %1625, %1617 ], [ %1553, %1552 ]
  %1628 = fmul fast float %232, 3.906250e-03
  %1629 = fmul fast float %231, 7.812500e-03
  %1630 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1631 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %629, %dx.types.Handle %1630, float %1629, float %1628, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1632 = add i32 %591, 0
  %1633 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1632, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1634 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1633, i32 0)  ; GetDimensions(handle,mipLevel)
  %1635 = extractvalue %dx.types.Dimensions %1634, 0
  %1636 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1635)  ; FirstbitLo(value)
  %1637 = uitofp i32 %1636 to float
  %1638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1639 = extractvalue %dx.types.CBufRet.f32 %1638, 1
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 2
  %1642 = fadd fast float %241, -7.000000e+00
  %1643 = fadd fast float %1642, %1637
  %1644 = fadd fast float %1643, %1639
  %1645 = fadd fast float %1644, %1641
  %1646 = call float @dx.op.binary.f32(i32 35, float %1645, float 0.000000e+00)  ; FMax(a,b)
  %1647 = and i32 %438, 8
  %1648 = icmp eq i32 %1647, 0
  br i1 %1648, label %1665, label %1649

; <label>:1649                                    ; preds = %1626
  %1650 = fadd fast float %571, 1.000000e+00
  %1651 = fmul fast float %919, %1650
  %1652 = fsub fast float %1651, %571
  %1653 = fsub fast float %1650, %1652
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fsub fast float 1.000000e+00, %1651
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = fsub fast float %1654, %1656
  %1658 = fsub fast float %1627, %1656
  %1659 = fdiv fast float %1658, %1657
  %1660 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1661 = fmul fast float %1660, 2.000000e+00
  %1662 = fsub fast float 3.000000e+00, %1661
  %1663 = fmul fast float %1660, %1660
  %1664 = fmul fast float %1663, %1662
  br label %1665

; <label>:1665                                    ; preds = %1649, %1626
  %1666 = phi float [ %1664, %1649 ], [ %1627, %1626 ]
  %1667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1668 = extractvalue %dx.types.CBufRet.f32 %1667, 3
  %1669 = fmul fast float %1668, %1666
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = and i32 %438, 32
  %1672 = icmp eq i32 %1671, 0
  br i1 %1672, label %1689, label %1673

; <label>:1673                                    ; preds = %1665
  %1674 = add i32 %594, 0
  %1675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1674, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1675, %dx.types.Handle %61, float %1669, float %503, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1677 = extractvalue %dx.types.ResRet.f32 %1676, 0
  %1678 = extractvalue %dx.types.ResRet.f32 %1676, 1
  %1679 = extractvalue %dx.types.ResRet.f32 %1676, 2
  %1680 = extractvalue %dx.types.ResRet.f32 %1676, 3
  %1681 = and i32 %588, 255
  %1682 = uitofp i32 %1681 to float
  %1683 = lshr i32 %588, 8
  %1684 = and i32 %1683, 255
  %1685 = uitofp i32 %1684 to float
  %1686 = fmul fast float %1680, %1682
  %1687 = fadd fast float %1686, %1685
  %1688 = fmul fast float %1687, 0x3F70101000000000
  br label %1689

; <label>:1689                                    ; preds = %1673, %1665
  %1690 = phi float [ %1677, %1673 ], [ %494, %1665 ]
  %1691 = phi float [ %1678, %1673 ], [ %495, %1665 ]
  %1692 = phi float [ %1679, %1673 ], [ %496, %1665 ]
  %1693 = phi float [ %1688, %1673 ], [ %497, %1665 ]
  %1694 = fsub fast float %1690, %450
  %1695 = fsub fast float %1691, %451
  %1696 = fsub fast float %1692, %452
  %1697 = fmul fast float %1694, %1669
  %1698 = fmul fast float %1695, %1669
  %1699 = fmul fast float %1696, %1669
  %1700 = fadd fast float %1697, %450
  %1701 = fadd fast float %1698, %451
  %1702 = fadd fast float %1699, %452
  %1703 = fsub fast float %1693, %453
  %1704 = fmul fast float %1703, %1669
  %1705 = fadd fast float %1704, %453
  %1706 = fsub fast float %1557, %456
  %1707 = fmul fast float %1669, %1706
  %1708 = fadd fast float %1707, %456
  %1709 = fadd fast float %1556, -1.000000e+00
  %1710 = fmul fast float %1669, %1709
  %1711 = fadd fast float %1710, 1.000000e+00
  %1712 = fmul fast float %1669, %1554
  %1713 = fmul fast float %1669, %1555
  %1714 = fadd fast float %1712, %1238
  %1715 = fadd fast float %1713, %1239
  %1716 = fmul fast float %459, %372
  %1717 = fadd fast float %1716, %460
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1720 = fcmp fast oge float %1717, %1719
  %1721 = and i32 %178, 65535
  %1722 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1721)  ; LegacyF16ToF32(value)
  %1723 = lshr i32 %180, 16
  %1724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1723)  ; LegacyF16ToF32(value)
  %1725 = fadd fast float %1700, %1722
  %1726 = fadd fast float %1701, %1724
  %1727 = fadd fast float %1702, %1722
  %1728 = fadd fast float %1705, %1724
  %1729 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1725)  ; LegacyF32ToF16(value)
  %1730 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1726)  ; LegacyF32ToF16(value)
  %1731 = shl i32 %1730, 16
  %1732 = or i32 %1731, %1729
  %1733 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1727)  ; LegacyF32ToF16(value)
  %1734 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1728)  ; LegacyF32ToF16(value)
  %1735 = shl i32 %1734, 16
  %1736 = or i32 %1735, %1733
  %1737 = fadd fast float %1711, %1722
  %1738 = fadd fast float %1708, %1724
  %1739 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1737)  ; LegacyF32ToF16(value)
  %1740 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1738)  ; LegacyF32ToF16(value)
  %1741 = shl i32 %1740, 16
  %1742 = or i32 %1741, %1739
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 2
  %1745 = fmul fast float %1744, 0x3FE3C6EF40000000
  %1746 = frem fast float %98, 2.560000e+02
  %1747 = frem fast float %99, 2.560000e+02
  %1748 = fptoui float %1746 to i32
  %1749 = fptoui float %1747 to i32
  %1750 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %1748, i32 %1749, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1751 = extractvalue %dx.types.ResRet.f32 %1750, 0
  %1752 = extractvalue %dx.types.ResRet.f32 %1750, 1
  %1753 = fadd fast float %1751, %1745
  %1754 = fadd fast float %1752, %1745
  %1755 = call float @dx.op.unary.f32(i32 22, float %1753)  ; Frc(value)
  %1756 = call float @dx.op.unary.f32(i32 22, float %1754)  ; Frc(value)
  %1757 = fcmp fast ogt float %119, 0.000000e+00
  %1758 = fcmp fast olt float %119, 0.000000e+00
  %1759 = zext i1 %1757 to i32
  %1760 = zext i1 %1758 to i32
  %1761 = sub nsw i32 %1759, %1760
  %1762 = sitofp i32 %1761 to float
  %1763 = fadd fast float %1762, %119
  %1764 = fdiv fast float -1.000000e+00, %1763
  %1765 = fmul fast float %117, %118
  %1766 = fmul fast float %1765, %1764
  %1767 = fmul fast float %117, %117
  %1768 = fmul fast float %1767, %1762
  %1769 = fmul fast float %1768, %1764
  %1770 = fadd fast float %1769, 1.000000e+00
  %1771 = fmul fast float %1766, %1762
  %1772 = fmul fast float %1762, %117
  %1773 = fsub fast float -0.000000e+00, %1772
  %1774 = fmul fast float %118, %118
  %1775 = fmul fast float %1774, %1764
  %1776 = fadd fast float %1775, %1762
  %1777 = fsub fast float -0.000000e+00, %118
  %1778 = and i32 %1729, 65535
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = lshr i32 %1732, 16
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = and i32 %1733, 65535
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = lshr i32 %1736, 16
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = and i32 %1739, 65535
  %1787 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1786)  ; LegacyF16ToF32(value)
  %1788 = lshr i32 %1742, 16
  %1789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1788)  ; LegacyF16ToF32(value)
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %1792 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1793 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1794 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %1795 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1796 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1797 = fadd fast float %1791, %153
  %1798 = fadd fast float %1792, %154
  %1799 = fadd fast float %1793, %155
  %1800 = fadd fast float %1794, %153
  %1801 = fadd fast float %1795, %154
  %1802 = fadd fast float %1796, %155
  %1803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1804 = extractvalue %dx.types.CBufRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.CBufRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.CBufRet.f32 %1803, 2
  %1807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1808 = extractvalue %dx.types.CBufRet.f32 %1807, 2
  %1809 = extractvalue %dx.types.CBufRet.f32 %1807, 3
  %1810 = fmul fast float %1804, %98
  %1811 = fmul fast float %1810, %1808
  %1812 = fmul fast float %1805, %99
  %1813 = fmul fast float %1812, %1809
  %1814 = fptoui float %1811 to i32
  %1815 = fptoui float %1813 to i32
  %1816 = fadd fast float %1804, -1.000000e+00
  %1817 = fadd fast float %1805, -1.000000e+00
  %1818 = fptoui float %1816 to i32
  %1819 = fptoui float %1817 to i32
  %1820 = call i32 @dx.op.binary.i32(i32 40, i32 %1814, i32 %1818)  ; UMin(a,b)
  %1821 = call i32 @dx.op.binary.i32(i32 40, i32 %1815, i32 %1819)  ; UMin(a,b)
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 2
  %1824 = extractvalue %dx.types.CBufRet.f32 %1822, 3
  %1825 = fmul fast float %1823, %87
  %1826 = fsub fast float %1825, %1824
  %1827 = fadd fast float %1806, -1.000000e+00
  %1828 = call float @dx.op.binary.f32(i32 36, float %1826, float %1827)  ; FMin(a,b)
  %1829 = fptoui float %1828 to i32
  %1830 = fptoui float %1804 to i32
  %1831 = fptoui float %1805 to i32
  %1832 = mul i32 %1829, %1831
  %1833 = add i32 %1832, %1821
  %1834 = mul i32 %1833, %1830
  %1835 = add i32 %1834, %1820
  %1836 = shl i32 %1835, 2
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = and i32 %1838, 1023
  %1840 = lshr i32 %1838, 10
  %1841 = icmp eq i32 %1839, 0
  br i1 %1841, label %2237, label %1842

; <label>:1842                                    ; preds = %1689
  %1843 = and i32 %1838, 1023
  br label %1844

; <label>:1844                                    ; preds = %1965, %1842
  %1845 = phi float [ %1966, %1965 ], [ 0.000000e+00, %1842 ]
  %1846 = phi float [ %1967, %1965 ], [ 0.000000e+00, %1842 ]
  %1847 = phi float [ %1968, %1965 ], [ 0.000000e+00, %1842 ]
  %1848 = phi float [ %1969, %1965 ], [ %1714, %1842 ]
  %1849 = phi float [ %1970, %1965 ], [ %1715, %1842 ]
  %1850 = phi float [ %1971, %1965 ], [ %1787, %1842 ]
  %1851 = phi float [ %1972, %1965 ], [ %1790, %1842 ]
  %1852 = phi float [ %1973, %1965 ], [ 0.000000e+00, %1842 ]
  %1853 = phi float [ %1974, %1965 ], [ %1785, %1842 ]
  %1854 = phi float [ %1975, %1965 ], [ %1779, %1842 ]
  %1855 = phi float [ %1976, %1965 ], [ %1781, %1842 ]
  %1856 = phi float [ %1977, %1965 ], [ %1783, %1842 ]
  %1857 = phi i32 [ %1978, %1965 ], [ 0, %1842 ]
  %1858 = phi i32 [ %1914, %1965 ], [ 0, %1842 ]
  %1859 = add nuw nsw i32 %1858, %1840
  %1860 = shl i32 %1859, 2
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = shl i32 %1862, 8
  %1864 = or i32 %1863, 48
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.ResRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.ResRet.f32 %1865, 2
  %1869 = extractvalue %dx.types.ResRet.f32 %1865, 3
  %1870 = or i32 %1863, 64
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.i32 %1871, 1
  %1874 = or i32 %1863, 80
  %1875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 3
  %1878 = or i32 %1863, 96
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = extractvalue %dx.types.ResRet.f32 %1879, 3
  %1884 = or i32 %1863, 112
  %1885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1884, i32 undef)  ; BufferLoad(srv,index,wot)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1887 = or i32 %1863, 128
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = extractvalue %dx.types.ResRet.f32 %1888, 3
  %1893 = or i32 %1863, 144
  %1894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = extractvalue %dx.types.ResRet.f32 %1894, 2
  %1898 = extractvalue %dx.types.ResRet.f32 %1894, 3
  %1899 = or i32 %1863, 160
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = or i32 %1863, 192
  %1905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.i32 %1905, 0
  %1907 = or i32 %1863, 208
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = or i32 %1863, 248
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = add nuw nsw i32 %1858, 1
  %1915 = bitcast float %1869 to i32
  %1916 = and i32 %1915, 512
  %1917 = icmp ne i32 %1916, 0
  %1918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1919 = extractvalue %dx.types.ResRet.f32 %1918, 0
  %1920 = extractvalue %dx.types.ResRet.f32 %1918, 1
  %1921 = extractvalue %dx.types.ResRet.f32 %1918, 2
  %1922 = extractvalue %dx.types.ResRet.f32 %1918, 3
  %1923 = call float @dx.op.dot4.f32(i32 56, float %1919, float %1920, float %1921, float %1922, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1924 = or i32 %1863, 16
  %1925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = extractvalue %dx.types.ResRet.f32 %1925, 2
  %1929 = extractvalue %dx.types.ResRet.f32 %1925, 3
  %1930 = call float @dx.op.dot4.f32(i32 56, float %1926, float %1927, float %1928, float %1929, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1931 = or i32 %1863, 32
  %1932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.ResRet.f32 %1932, 1
  %1935 = extractvalue %dx.types.ResRet.f32 %1932, 2
  %1936 = extractvalue %dx.types.ResRet.f32 %1932, 3
  %1937 = call float @dx.op.dot4.f32(i32 56, float %1933, float %1934, float %1935, float %1936, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1938 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1939 = call float @dx.op.unary.f32(i32 6, float %1938)  ; FAbs(value)
  %1940 = call float @dx.op.unary.f32(i32 27, float %1930)  ; Round_ni(value)
  %1941 = call float @dx.op.unary.f32(i32 6, float %1940)  ; FAbs(value)
  %1942 = call float @dx.op.unary.f32(i32 6, float %1937)  ; FAbs(value)
  %1943 = call float @dx.op.unary.f32(i32 27, float %1942)  ; Round_ni(value)
  %1944 = fadd fast float %1941, %1939
  %1945 = fadd fast float %1944, %1943
  %1946 = fcmp fast oeq float %1945, 0.000000e+00
  %1947 = call float @dx.op.dot4.f32(i32 56, float %1919, float %1920, float %1921, float %1922, float %1797, float %1798, float %1799, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1948 = call float @dx.op.dot4.f32(i32 56, float %1926, float %1927, float %1928, float %1929, float %1797, float %1798, float %1799, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1949 = call float @dx.op.dot4.f32(i32 56, float %1919, float %1920, float %1921, float %1922, float %1800, float %1801, float %1802, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1950 = call float @dx.op.dot4.f32(i32 56, float %1926, float %1927, float %1928, float %1929, float %1800, float %1801, float %1802, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1951 = fsub fast float %1947, %1923
  %1952 = fsub fast float %1949, %1923
  %1953 = fsub fast float %1948, %1930
  %1954 = fsub fast float %1950, %1930
  %1955 = call float @dx.op.dot3.f32(i32 55, float %1866, float %1867, float %1868, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1957 = extractvalue %dx.types.CBufRet.f32 %1956, 2
  %1958 = call float @dx.op.unary.f32(i32 6, float %1955)  ; FAbs(value)
  %1959 = fadd fast float %1958, %1957
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1956, 0
  %1962 = fcmp fast ogt float %1960, %1961
  %1963 = and i1 %1946, %1962
  %1964 = and i1 %1917, %1963
  br i1 %1964, label %1980, label %1965

; <label>:1965                                    ; preds = %2223, %2061, %1980, %1844
  %1966 = phi float [ %1845, %1980 ], [ %1845, %2061 ], [ %2233, %2223 ], [ %1845, %1844 ]
  %1967 = phi float [ %1846, %1980 ], [ %1846, %2061 ], [ %2234, %2223 ], [ %1846, %1844 ]
  %1968 = phi float [ %1847, %1980 ], [ %1847, %2061 ], [ %2235, %2223 ], [ %1847, %1844 ]
  %1969 = phi float [ %1848, %1980 ], [ %1848, %2061 ], [ %2197, %2223 ], [ %1848, %1844 ]
  %1970 = phi float [ %1849, %1980 ], [ %1849, %2061 ], [ %2198, %2223 ], [ %1849, %1844 ]
  %1971 = phi float [ %1850, %1980 ], [ %1850, %2061 ], [ %2192, %2223 ], [ %1850, %1844 ]
  %1972 = phi float [ %1851, %1980 ], [ %1851, %2061 ], [ %2189, %2223 ], [ %1851, %1844 ]
  %1973 = phi float [ %1852, %1980 ], [ %1852, %2061 ], [ %2186, %2223 ], [ %1852, %1844 ]
  %1974 = phi float [ %1853, %1980 ], [ %1853, %2061 ], [ %2184, %2223 ], [ %1853, %1844 ]
  %1975 = phi float [ %1854, %1980 ], [ %1854, %2061 ], [ %2179, %2223 ], [ %1854, %1844 ]
  %1976 = phi float [ %1855, %1980 ], [ %1855, %2061 ], [ %2180, %2223 ], [ %1855, %1844 ]
  %1977 = phi float [ %1856, %1980 ], [ %1856, %2061 ], [ %2181, %2223 ], [ %1856, %1844 ]
  %1978 = phi i32 [ %1988, %1980 ], [ %1988, %2061 ], [ %1988, %2223 ], [ %1857, %1844 ]
  %1979 = icmp eq i32 %1914, %1843
  br i1 %1979, label %2236, label %1844

; <label>:1980                                    ; preds = %1844
  %1981 = extractvalue %dx.types.ResRet.f32 %1885, 3
  %1982 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1984 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1985 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1986 = extractvalue %dx.types.ResRet.i32 %1871, 3
  %1987 = extractvalue %dx.types.ResRet.i32 %1871, 2
  %1988 = add i32 %1857, 1
  %1989 = add i32 %1986, 0
  %1990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1989, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1991 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1990, %dx.types.Handle %1630, float %1923, float %1930, float undef, float undef, i32 0, i32 0, i32 undef, float %1951, float %1953, float undef, float %1952, float %1954, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = fmul fast float %1992, %1985
  %1994 = fadd fast float %1993, %1984
  %1995 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1996 = fmul fast float %1923, %1880
  %1997 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1930, float %1996)  ; FMad(a,b,c)
  %1998 = fadd fast float %1997, %1983
  %1999 = fmul fast float %1923, %1882
  %2000 = call float @dx.op.tertiary.f32(i32 46, float %1883, float %1930, float %1999)  ; FMad(a,b,c)
  %2001 = fadd fast float %2000, %1982
  %2002 = fmul fast float %1951, %1880
  %2003 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1953, float %2002)  ; FMad(a,b,c)
  %2004 = fmul fast float %1951, %1882
  %2005 = call float @dx.op.tertiary.f32(i32 46, float %1883, float %1953, float %2004)  ; FMad(a,b,c)
  %2006 = fmul fast float %1952, %1880
  %2007 = call float @dx.op.tertiary.f32(i32 46, float %1881, float %1954, float %2006)  ; FMad(a,b,c)
  %2008 = fmul fast float %1952, %1882
  %2009 = call float @dx.op.tertiary.f32(i32 46, float %1883, float %1954, float %2008)  ; FMad(a,b,c)
  %2010 = add i32 %1987, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2011, %dx.types.Handle %1630, float %1998, float %2001, float undef, float undef, i32 0, i32 0, i32 undef, float %2003, float %2005, float undef, float %2007, float %2009, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = and i32 %1915, 1024
  %2015 = icmp ne i32 %2014, 0
  %2016 = fcmp fast ogt float %2013, 0x3FE0101020000000
  %2017 = uitofp i1 %2016 to float
  %2018 = select i1 %2015, float %2017, float %2013
  %2019 = and i32 %1915, 8192
  %2020 = icmp ne i32 %2019, 0
  %2021 = select i1 %2020, float %1981, float 1.000000e+00
  %2022 = fmul fast float %1923, 2.000000e+00
  %2023 = fadd fast float %2022, -1.000000e+00
  %2024 = call float @dx.op.unary.f32(i32 6, float %2023)  ; FAbs(value)
  %2025 = fmul fast float %2024, %1912
  %2026 = fsub fast float %2025, %1912
  %2027 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2028 = fmul fast float %1930, 2.000000e+00
  %2029 = fadd fast float %2028, -1.000000e+00
  %2030 = call float @dx.op.unary.f32(i32 6, float %2029)  ; FAbs(value)
  %2031 = fmul fast float %2030, %1913
  %2032 = fsub fast float %2031, %1913
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = fmul fast float %1942, %1876
  %2035 = fsub fast float %2034, %1876
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  %2037 = fmul fast float %1995, %2021
  %2038 = fmul fast float %2037, %1992
  %2039 = fmul fast float %2038, %2027
  %2040 = fmul fast float %2039, %2018
  %2041 = fmul fast float %2040, %2033
  %2042 = fmul fast float %2041, %2036
  %2043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2044 = extractvalue %dx.types.CBufRet.f32 %2043, 1
  %2045 = extractvalue %dx.types.CBufRet.f32 %2043, 0
  %2046 = fsub fast float %1960, %2045
  %2047 = fmul fast float %2046, %2044
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  %2049 = fmul fast float %2042, %1877
  %2050 = fadd fast float %2042, %1877
  %2051 = fmul fast float %2050, %1886
  %2052 = fsub fast float %2051, %1886
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = and i32 %1915, 128
  %2055 = icmp ne i32 %2054, 0
  %2056 = select i1 %2055, float %2053, float %2049
  %2057 = fmul fast float %2056, %2048
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 0
  %2060 = fcmp fast ugt float %2057, %2059
  br i1 %2060, label %2061, label %1965

; <label>:2061                                    ; preds = %1980
  br i1 %2020, label %1965, label %2062

; <label>:2062                                    ; preds = %2061
  %2063 = and i32 %1915, 4
  %2064 = and i32 %1915, 8
  %2065 = add i32 %1872, 0
  %2066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2065, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2066, %dx.types.Handle %2067, float %1998, float %2001, float undef, float undef, i32 0, i32 0, i32 undef, float %2003, float %2005, float undef, float %2007, float %2009, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = extractvalue %dx.types.ResRet.f32 %2068, 1
  %2071 = extractvalue %dx.types.ResRet.f32 %2068, 2
  %2072 = extractvalue %dx.types.ResRet.f32 %2068, 3
  %2073 = bitcast float %1898 to i32
  %2074 = and i32 %2073, 255
  %2075 = uitofp i32 %2074 to float
  %2076 = lshr i32 %2073, 8
  %2077 = and i32 %2076, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = fmul fast float %2072, %2075
  %2080 = fadd fast float %2079, %2078
  %2081 = fmul fast float %2080, 0x3F70101000000000
  %2082 = add i32 %1873, 0
  %2083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2082, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2083, %dx.types.Handle %2067, float %1998, float %2001, float undef, float undef, i32 0, i32 0, i32 undef, float %2003, float %2005, float undef, float %2007, float %2009, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  %2086 = extractvalue %dx.types.ResRet.f32 %2084, 1
  %2087 = extractvalue %dx.types.ResRet.f32 %2084, 2
  %2088 = extractvalue %dx.types.ResRet.f32 %2084, 3
  %2089 = bitcast float %1892 to i32
  %2090 = and i32 %2089, 255
  %2091 = uitofp i32 %2090 to float
  %2092 = lshr i32 %2089, 8
  %2093 = and i32 %2092, 255
  %2094 = uitofp i32 %2093 to float
  %2095 = lshr i32 %2089, 16
  %2096 = and i32 %2095, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101000000000
  %2099 = fmul fast float %2085, %2091
  %2100 = fadd fast float %2099, %2094
  %2101 = fmul fast float %2100, 0x3F70101000000000
  %2102 = fadd fast float %2086, -5.000000e-01
  %2103 = fadd fast float %2088, -5.000000e-01
  %2104 = fmul fast float %2102, %2098
  %2105 = fmul fast float %2103, %2098
  %2106 = fadd fast float %2104, 5.000000e-01
  %2107 = fadd fast float %2105, 5.000000e-01
  %2108 = fmul fast float %2069, %1901
  %2109 = fmul fast float %2070, %1902
  %2110 = fmul fast float %2071, %1903
  %2111 = fmul fast float %2106, 2.000000e+00
  %2112 = fadd fast float %2111, -1.000000e+00
  %2113 = fmul fast float %2107, 2.000000e+00
  %2114 = fadd fast float %2113, -1.000000e+00
  %2115 = fadd fast float %2112, %2114
  %2116 = fmul fast float %2115, 5.000000e-01
  %2117 = fsub fast float %2112, %2114
  %2118 = fmul fast float %2117, 5.000000e-01
  %2119 = call float @dx.op.unary.f32(i32 6, float %2116)  ; FAbs(value)
  %2120 = fsub fast float 1.000000e+00, %2119
  %2121 = call float @dx.op.unary.f32(i32 6, float %2118)  ; FAbs(value)
  %2122 = fsub fast float %2120, %2121
  %2123 = call float @dx.op.dot3.f32(i32 55, float %2116, float %2118, float %2122, float %2116, float %2118, float %2122)  ; Dot3(ax,ay,az,bx,by,bz)
  %2124 = call float @dx.op.unary.f32(i32 25, float %2123)  ; Rsqrt(value)
  %2125 = fmul fast float %2116, %2124
  %2126 = fmul fast float %2118, %2124
  %2127 = fmul fast float %2124, %2122
  %2128 = fmul fast float %2127, %1866
  %2129 = fmul fast float %2127, %1867
  %2130 = fmul fast float %2127, %1868
  %2131 = fmul fast float %2125, %1889
  %2132 = fmul fast float %2125, %1890
  %2133 = fmul fast float %2125, %1891
  %2134 = fadd fast float %2131, %2128
  %2135 = fadd fast float %2132, %2129
  %2136 = fadd fast float %2133, %2130
  %2137 = fmul fast float %2126, %1895
  %2138 = fmul fast float %2126, %1896
  %2139 = fmul fast float %2126, %1897
  %2140 = fadd fast float %2134, %2137
  %2141 = fadd fast float %2135, %2138
  %2142 = fadd fast float %2136, %2139
  %2143 = call float @dx.op.dot3.f32(i32 55, float %2140, float %2141, float %2142, float %2140, float %2141, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2144 = call float @dx.op.unary.f32(i32 25, float %2143)  ; Rsqrt(value)
  %2145 = fmul fast float %2140, %2144
  %2146 = fmul fast float %2141, %2144
  %2147 = fmul fast float %2142, %2144
  %2148 = fcmp fast ogt float %1955, %1961
  %2149 = fsub fast float -0.000000e+00, %2145
  %2150 = fsub fast float -0.000000e+00, %2146
  %2151 = fsub fast float -0.000000e+00, %2147
  %2152 = select i1 %2148, float %2145, float %2149
  %2153 = select i1 %2148, float %2146, float %2150
  %2154 = select i1 %2148, float %2147, float %2151
  %2155 = fmul fast float %2152, %1770
  %2156 = call float @dx.op.tertiary.f32(i32 46, float %2153, float %1771, float %2155)  ; FMad(a,b,c)
  %2157 = call float @dx.op.tertiary.f32(i32 46, float %2154, float %1773, float %2156)  ; FMad(a,b,c)
  %2158 = fmul fast float %2152, %1766
  %2159 = call float @dx.op.tertiary.f32(i32 46, float %2153, float %1776, float %2158)  ; FMad(a,b,c)
  %2160 = call float @dx.op.tertiary.f32(i32 46, float %2154, float %1777, float %2159)  ; FMad(a,b,c)
  %2161 = icmp ne i32 %2064, 0
  %2162 = select i1 %2161, float 1.000000e+00, float 0.000000e+00
  %2163 = fmul fast float %2057, %2162
  %2164 = and i32 %1915, 1
  %2165 = icmp ne i32 %2164, 0
  %2166 = fadd fast float %2157, %1848
  %2167 = fadd fast float %2160, %1849
  %2168 = select i1 %2165, float %2166, float %2157
  %2169 = select i1 %2165, float %2167, float %2160
  %2170 = icmp ne i32 %2063, 0
  %2171 = select i1 %2170, float 1.000000e+00, float 0.000000e+00
  %2172 = fmul fast float %2057, %2171
  %2173 = fsub fast float %2108, %1854
  %2174 = fsub fast float %2109, %1855
  %2175 = fsub fast float %2110, %1856
  %2176 = fmul fast float %2173, %2172
  %2177 = fmul fast float %2174, %2172
  %2178 = fmul fast float %2175, %2172
  %2179 = fadd fast float %2176, %1854
  %2180 = fadd fast float %2177, %1855
  %2181 = fadd fast float %2178, %1856
  %2182 = fsub fast float %2081, %1853
  %2183 = fmul fast float %2182, %2172
  %2184 = fadd fast float %2183, %1853
  %2185 = fadd fast float %2057, %1852
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = fsub fast float %2101, %1851
  %2188 = fmul fast float %2187, %2163
  %2189 = fadd fast float %2188, %1851
  %2190 = fsub fast float %2087, %1850
  %2191 = fmul fast float %2190, %2163
  %2192 = fadd fast float %2191, %1850
  %2193 = fsub fast float %2168, %1848
  %2194 = fsub fast float %2169, %1849
  %2195 = fmul fast float %2193, %2163
  %2196 = fmul fast float %2194, %2163
  %2197 = fadd fast float %2195, %1848
  %2198 = fadd fast float %2196, %1849
  %2199 = and i32 %1915, 16
  %2200 = icmp eq i32 %2199, 0
  br i1 %2200, label %2223, label %2201

; <label>:2201                                    ; preds = %2062
  %2202 = bitcast float %1909 to i32
  %2203 = add i32 %1906, 0
  %2204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2205 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2204, %dx.types.Handle %2067, float %1998, float %2001, float undef, float undef, i32 0, i32 0, i32 undef, float %2003, float %2005, float undef, float %2007, float %2009, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2206 = extractvalue %dx.types.ResRet.f32 %2205, 0
  %2207 = extractvalue %dx.types.ResRet.f32 %2205, 1
  %2208 = extractvalue %dx.types.ResRet.f32 %2205, 2
  %2209 = and i32 %2202, 65535
  %2210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2209)  ; LegacyF16ToF32(value)
  %2211 = fmul fast float %2206, %1901
  %2212 = fmul fast float %2207, %1902
  %2213 = fmul fast float %2208, %1903
  %2214 = and i32 %1915, 16384
  %2215 = icmp ne i32 %2214, 0
  %2216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2217 = extractvalue %dx.types.CBufRet.f32 %2216, 0
  %2218 = select i1 %2215, float %2217, float 1.000000e+00
  %2219 = fmul fast float %2218, %2210
  %2220 = fmul fast float %2211, %2219
  %2221 = fmul fast float %2212, %2219
  %2222 = fmul fast float %2213, %2219
  br label %2223

; <label>:2223                                    ; preds = %2201, %2062
  %2224 = phi float [ %2220, %2201 ], [ 0.000000e+00, %2062 ]
  %2225 = phi float [ %2221, %2201 ], [ 0.000000e+00, %2062 ]
  %2226 = phi float [ %2222, %2201 ], [ 0.000000e+00, %2062 ]
  %2227 = fsub fast float %2224, %1845
  %2228 = fsub fast float %2225, %1846
  %2229 = fsub fast float %2226, %1847
  %2230 = fmul fast float %2227, %2057
  %2231 = fmul fast float %2228, %2057
  %2232 = fmul fast float %2229, %2057
  %2233 = fadd fast float %2230, %1845
  %2234 = fadd fast float %2231, %1846
  %2235 = fadd fast float %2232, %1847
  br label %1965

; <label>:2236                                    ; preds = %1965
  br label %2237

; <label>:2237                                    ; preds = %2236, %1689
  %2238 = phi float [ 0.000000e+00, %1689 ], [ %1966, %2236 ]
  %2239 = phi float [ 0.000000e+00, %1689 ], [ %1967, %2236 ]
  %2240 = phi float [ 0.000000e+00, %1689 ], [ %1968, %2236 ]
  %2241 = phi float [ %1714, %1689 ], [ %1969, %2236 ]
  %2242 = phi float [ %1715, %1689 ], [ %1970, %2236 ]
  %2243 = phi float [ %1787, %1689 ], [ %1971, %2236 ]
  %2244 = phi float [ %1790, %1689 ], [ %1972, %2236 ]
  %2245 = phi float [ 0.000000e+00, %1689 ], [ %1973, %2236 ]
  %2246 = phi float [ %1785, %1689 ], [ %1974, %2236 ]
  %2247 = phi float [ %1779, %1689 ], [ %1975, %2236 ]
  %2248 = phi float [ %1781, %1689 ], [ %1976, %2236 ]
  %2249 = phi float [ %1783, %1689 ], [ %1977, %2236 ]
  %2250 = phi i32 [ 0, %1689 ], [ %1978, %2236 ]
  %2251 = uitofp i32 %2250 to float
  %2252 = fptoui float %2251 to i32
  %2253 = shl i32 %2252, 16
  %2254 = and i32 %2253, 16711680
  %2255 = call float @dx.op.dot2.f32(i32 54, float %2241, float %2242, float %2241, float %2242)  ; Dot2(ax,ay,bx,by)
  %2256 = fmul fast float %2255, 0x3FE3333340000000
  %2257 = fsub fast float 1.000000e+00, %2256
  %2258 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2242, float %2257, float %2241, float %2242, float %2257)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call float @dx.op.unary.f32(i32 25, float %2258)  ; Rsqrt(value)
  %2260 = fmul fast float %2259, %2241
  %2261 = fmul fast float %2259, %2242
  %2262 = fmul fast float %2257, %2259
  %2263 = fmul fast float %2262, %117
  %2264 = fmul fast float %2262, %118
  %2265 = fmul fast float %2262, %119
  %2266 = fmul fast float %2260, %1770
  %2267 = fmul fast float %2260, %1771
  %2268 = fmul fast float %2260, %1773
  %2269 = fadd fast float %2263, %2266
  %2270 = fadd fast float %2264, %2267
  %2271 = fadd fast float %2265, %2268
  %2272 = fmul fast float %2261, %1766
  %2273 = fmul fast float %2261, %1776
  %2274 = fmul fast float %2261, %1777
  %2275 = fadd fast float %2269, %2272
  %2276 = fadd fast float %2270, %2273
  %2277 = fadd fast float %2271, %2274
  %2278 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float %2275, float %2276, float %2277)  ; Dot3(ax,ay,az,bx,by,bz)
  %2279 = call float @dx.op.unary.f32(i32 25, float %2278)  ; Rsqrt(value)
  %2280 = fmul fast float %2275, %2279
  %2281 = fmul fast float %2276, %2279
  %2282 = fmul fast float %2277, %2279
  %2283 = fadd fast float %2246, 0xBFB99999A0000000
  %2284 = call float @dx.op.unary.f32(i32 7, float %2283)  ; Saturate(value)
  %2285 = fmul fast float %2284, 0x3FF1C71C80000000
  %2286 = call float @dx.op.binary.f32(i32 36, float %2246, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2287 = fsub fast float 1.000000e+00, %2285
  %2288 = call float @dx.op.unary.f32(i32 7, float %2287)  ; Saturate(value)
  %2289 = fmul fast float %2288, %2247
  %2290 = fmul fast float %2288, %2248
  %2291 = fmul fast float %2288, %2249
  %2292 = call float @dx.op.unary.f32(i32 7, float %2289)  ; Saturate(value)
  %2293 = call float @dx.op.unary.f32(i32 7, float %2290)  ; Saturate(value)
  %2294 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2295 = fmul fast float %2285, %2247
  %2296 = fmul fast float %2285, %2248
  %2297 = fmul fast float %2285, %2249
  %2298 = fadd fast float %2295, %2286
  %2299 = fadd fast float %2296, %2286
  %2300 = fadd fast float %2297, %2286
  %2301 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2302 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2304 = fmul fast float %2302, 0x401CF23780000000
  %2305 = fadd fast float %2304, 0x3FF32641C0000000
  %2306 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %2307 = call float @dx.op.unary.f32(i32 25, float %2306)  ; Rsqrt(value)
  %2308 = fmul fast float %2307, %153
  %2309 = fmul fast float %2307, %154
  %2310 = fmul fast float %2307, %155
  %2311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2312 = extractvalue %dx.types.CBufRet.f32 %2311, 0
  %2313 = fdiv fast float 1.000000e+00, %2305
  %2314 = select i1 %115, float %2313, float %2305
  %2315 = fadd fast float %2314, -1.000000e+00
  %2316 = fadd fast float %2314, 1.000000e+00
  %2317 = fdiv fast float %2315, %2316
  %2318 = fmul fast float %2317, %2317
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2309, float %2310, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = select i1 %115, float 0.000000e+00, float %2312
  %2321 = fadd fast float %2319, %2320
  %2322 = call float @dx.op.binary.f32(i32 35, float %2321, float -1.000000e+00)  ; FMax(a,b)
  %2323 = call float @dx.op.binary.f32(i32 36, float %2322, float 1.000000e+00)  ; FMin(a,b)
  %2324 = fmul fast float %2314, %2314
  %2325 = fmul fast float %2323, %2323
  %2326 = fsub fast float 1.000000e+00, %2325
  %2327 = fmul fast float %2324, %2326
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = fcmp fast olt float %2314, 1.000000e+00
  %2330 = select i1 %2329, float %2325, float %2328
  %2331 = fcmp fast ogt float %2328, 0.000000e+00
  %2332 = fsub fast float 1.000000e+00, %2318
  %2333 = call float @dx.op.unary.f32(i32 24, float %2330)  ; Sqrt(value)
  %2334 = fsub fast float 1.000000e+00, %2333
  %2335 = call float @dx.op.unary.f32(i32 23, float %2334)  ; Log(value)
  %2336 = fmul fast float %2335, 5.000000e+00
  %2337 = call float @dx.op.unary.f32(i32 21, float %2336)  ; Exp(value)
  %2338 = fmul fast float %2337, %2332
  %2339 = fadd fast float %2338, %2318
  %2340 = select i1 %2331, float %2339, float 1.000000e+00
  %2341 = select i1 %115, float %2340, float 0.000000e+00
  %2342 = and i32 %614, 255
  %2343 = uitofp i32 %2342 to float
  %2344 = fmul fast float %2343, 0x3F70101020000000
  %2345 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2346 = fmul fast float %153, %153
  %2347 = fmul fast float %154, %154
  %2348 = fadd fast float %2347, %2346
  %2349 = fmul fast float %155, %155
  %2350 = fadd fast float %2348, %2349
  %2351 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = fmul fast float %2353, %2351
  %2355 = extractvalue %dx.types.CBufRet.f32 %2352, 1
  %2356 = fadd fast float %2354, %2355
  %2357 = call float @dx.op.unary.f32(i32 7, float %2356)  ; Saturate(value)
  %2358 = fmul fast float %2345, 2.550000e+02
  %2359 = fmul fast float %2358, %2357
  %2360 = fptoui float %2359 to i32
  %2361 = fsub fast float 1.000000e+00, %2301
  %2362 = fsub fast float 1.000000e+00, %2302
  %2363 = fsub fast float 1.000000e+00, %2303
  %2364 = fmul fast float %2341, %2361
  %2365 = fmul fast float %2341, %2362
  %2366 = fmul fast float %2341, %2363
  %2367 = fadd fast float %2364, %2301
  %2368 = fadd fast float %2365, %2302
  %2369 = fadd fast float %2366, %2303
  %2370 = fptoui float %98 to i32
  %2371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2372 = extractvalue %dx.types.CBufRet.f32 %2371, 0
  %2373 = fmul fast float %2372, 5.000000e-01
  %2374 = fptoui float %2373 to i32
  %2375 = icmp eq i32 %2370, %2374
  %2376 = fptoui float %99 to i32
  %2377 = extractvalue %dx.types.CBufRet.f32 %2371, 1
  %2378 = fmul fast float %2377, 5.000000e-01
  %2379 = fptoui float %2378 to i32
  %2380 = icmp eq i32 %2376, %2379
  %2381 = and i1 %2375, %2380
  br i1 %2381, label %2382, label %2406

; <label>:2382                                    ; preds = %2237
  %2383 = call float @dx.op.binary.f32(i32 35, float %2368, float %2369)  ; FMax(a,b)
  %2384 = call float @dx.op.binary.f32(i32 35, float %2367, float %2383)  ; FMax(a,b)
  %2385 = fsub fast float 1.000000e+00, %2384
  %2386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2387 = extractvalue %dx.types.CBufRet.f32 %2386, 0
  %2388 = extractvalue %dx.types.CBufRet.f32 %2386, 1
  %2389 = extractvalue %dx.types.CBufRet.f32 %2386, 2
  %2390 = fadd fast float %2387, %153
  %2391 = fadd fast float %2388, %154
  %2392 = fadd fast float %2389, %155
  %2393 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %2370, i32 %2376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = fcmp fast ogt float %2394, -1.000000e+00
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 1
  %2398 = select i1 %2395, float %2397, float 1.000000e+00
  %2399 = fadd fast float %2394, 1.000000e+00
  %2400 = fmul fast float %2398, %2399
  %2401 = call float @dx.op.unary.f32(i32 6, float %2400)  ; FAbs(value)
  %2402 = call float @dx.op.unary.f32(i32 83, float %79)  ; DerivCoarseX(value)
  %2403 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %2404 = call float @dx.op.unary.f32(i32 84, float %79)  ; DerivCoarseY(value)
  %2405 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2390, float %2391, float %2392, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %98, float %99, float %86, float %87, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %341, float %342, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %304, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %306, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %319, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %321, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2401, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2341, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2367, float %2368, float %2369, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2385, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %197, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %77, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %930, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1251, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2402, float %2403, float %2404, float %2405, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2406

; <label>:2406                                    ; preds = %2382, %2237
  %2407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2408 = extractvalue %dx.types.CBufRet.f32 %2407, 3
  %2409 = fmul fast float %2408, %2244
  %2410 = call float @dx.op.unary.f32(i32 7, float %2409)  ; Saturate(value)
  %2411 = call float @dx.op.unary.f32(i32 7, float %2243)  ; Saturate(value)
  %2412 = fsub fast float 1.000000e+00, %2245
  %2413 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2412)  ; FMin(a,b)
  %2414 = call float @dx.op.dot3.f32(i32 55, float %2301, float %2302, float %2303, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = fsub fast float 1.000000e+00, %2414
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %56, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = lshr i32 %2417, 8
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = fmul fast float %2422, %2415
  %2424 = fadd fast float %2423, %2419
  %2425 = fmul fast float %2424, 0x3F70101020000000
  %2426 = call float @dx.op.unary.f32(i32 7, float %2425)  ; Saturate(value)
  %2427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2428 = extractvalue %dx.types.CBufRet.f32 %2427, 0
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2431 = extractvalue %dx.types.CBufRet.i32 %2430, 3
  %2432 = and i32 %2431, 3
  %2433 = icmp ne i32 %2432, 0
  %2434 = and i32 %2431, 4
  %2435 = icmp ne i32 %2434, 0
  %2436 = and i1 %2433, %2435
  br i1 %2436, label %2437, label %2448

; <label>:2437                                    ; preds = %2406
  %2438 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2439 = fmul fast float %2438, %99
  %2440 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2441 = fmul fast float %2440, %98
  %2442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %2441, float %2439, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2443 = extractvalue %dx.types.ResRet.f32 %2442, 0
  %2444 = fsub fast float 1.000000e+00, %2443
  %2445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2446 = extractvalue %dx.types.CBufRet.f32 %2445, 0
  %2447 = fcmp fast olt float %2444, %2446
  br label %2451

; <label>:2448                                    ; preds = %2406
  %2449 = icmp eq i32 %2434, 0
  %2450 = and i1 %2433, %2449
  br label %2451

; <label>:2451                                    ; preds = %2448, %2437
  %2452 = phi i1 [ %2447, %2437 ], [ %2450, %2448 ]
  %2453 = fsub fast float -0.000000e+00, %155
  %2454 = fsub fast float -0.000000e+00, %2308
  %2455 = fsub fast float -0.000000e+00, %2309
  %2456 = fsub fast float -0.000000e+00, %2310
  %2457 = select i1 %2452, float 0.000000e+00, float %2303
  %2458 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %2459 = call float @dx.op.unary.f32(i32 7, float %2458)  ; Saturate(value)
  %2460 = fmul fast float %2319, 2.000000e+00
  %2461 = fmul fast float %2460, %2280
  %2462 = fmul fast float %2460, %2281
  %2463 = fmul fast float %2460, %2282
  %2464 = fsub fast float %2308, %2461
  %2465 = fsub fast float %2309, %2462
  %2466 = fsub fast float %2310, %2463
  %2467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2468 = extractvalue %dx.types.CBufRet.f32 %2467, 0
  %2469 = bitcast float %2468 to i32
  %2470 = lshr i32 %2469, 8
  %2471 = and i32 %2470, 255
  %2472 = uitofp i32 %2471 to float
  %2473 = fptoui float %2472 to i32
  %2474 = and i32 %2473, 4
  %2475 = icmp ne i32 %2474, 0
  %2476 = select i1 %2475, float %2411, float 1.000000e+00
  %2477 = call float @dx.op.binary.f32(i32 36, float %2476, float 1.000000e+00)  ; FMin(a,b)
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = bitcast float %2478 to i32
  %2480 = ashr i32 %2479, 1
  %2481 = add nsw i32 %2480, 532487669
  %2482 = bitcast i32 %2481 to float
  %2483 = fsub fast float 1.000000e+00, %2410
  %2484 = call float @dx.op.binary.f32(i32 35, float %2483, float 0x3F847AE140000000)  ; FMax(a,b)
  %2485 = fmul fast float %2484, %2484
  %2486 = fmul fast float %2485, %2485
  %2487 = call float @dx.op.unary.f32(i32 7, float %2459)  ; Saturate(value)
  %2488 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %61, float %2482, float %2486, float %2487, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2489 = extractvalue %dx.types.ResRet.f32 %2488, 0
  %2490 = and i32 %2473, 1
  %2491 = icmp ne i32 %2490, 0
  %2492 = fsub fast float 1.000000e+00, %2476
  %2493 = bitcast float %2492 to i32
  %2494 = sub nsw i32 2129859010, %2493
  %2495 = bitcast i32 %2494 to float
  %2496 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2497 = extractvalue %dx.types.CBufRet.i32 %2496, 0
  %2498 = icmp eq i32 %2497, 1
  %2499 = select i1 %2498, float 0.000000e+00, float 1.000000e+00
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = fcmp fast ogt float %2501, 0.000000e+00
  %2503 = fcmp fast ogt float %2499, 0.000000e+00
  %2504 = and i1 %2502, %2503
  br i1 %2504, label %2505, label %2689, !dx.controlflow.hints !124

; <label>:2505                                    ; preds = %2451
  %2506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2507 = extractvalue %dx.types.CBufRet.f32 %2506, 0
  %2508 = extractvalue %dx.types.CBufRet.f32 %2506, 1
  %2509 = extractvalue %dx.types.CBufRet.f32 %2506, 2
  %2510 = fadd fast float %2507, %153
  %2511 = fadd fast float %2508, %154
  %2512 = fadd fast float %2509, %155
  %2513 = fmul fast float %2280, 3.200000e+01
  %2514 = fmul fast float %2281, 3.200000e+01
  %2515 = fadd fast float %2510, %2513
  %2516 = fadd fast float %2511, %2514
  %2517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2518 = extractvalue %dx.types.CBufRet.f32 %2517, 0
  %2519 = extractvalue %dx.types.CBufRet.f32 %2517, 1
  %2520 = fsub fast float %2515, %2518
  %2521 = fsub fast float %2516, %2519
  %2522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2523 = extractvalue %dx.types.CBufRet.f32 %2522, 0
  %2524 = extractvalue %dx.types.CBufRet.f32 %2522, 1
  %2525 = fmul fast float %2520, %2523
  %2526 = fmul fast float %2521, %2524
  %2527 = fmul fast float %153, %153
  %2528 = fmul fast float %154, %154
  %2529 = fadd fast float %2527, %2528
  %2530 = call float @dx.op.unary.f32(i32 24, float %2529)  ; Sqrt(value)
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.CBufRet.f32 %2531, 1
  %2534 = fsub fast float %2530, %2532
  %2535 = fdiv fast float %2534, %2533
  %2536 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  %2537 = fmul fast float %2536, 2.000000e+00
  %2538 = fsub fast float 3.000000e+00, %2537
  %2539 = fmul fast float %2536, %2536
  %2540 = fmul fast float %2539, %2538
  %2541 = fcmp fast oge float %2525, 0.000000e+00
  %2542 = fcmp fast ole float %2525, 1.000000e+00
  %2543 = and i1 %2542, %2541
  %2544 = fcmp fast oge float %2526, 0.000000e+00
  %2545 = and i1 %2544, %2543
  %2546 = fcmp fast ole float %2526, 1.000000e+00
  %2547 = and i1 %2546, %2545
  %2548 = fcmp fast ogt float %2540, 0.000000e+00
  %2549 = and i1 %2548, %2547
  br i1 %2549, label %2550, label %2673, !dx.controlflow.hints !125

; <label>:2550                                    ; preds = %2505
  %2551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2552 = extractvalue %dx.types.CBufRet.f32 %2551, 2
  %2553 = extractvalue %dx.types.CBufRet.f32 %2551, 3
  %2554 = fmul fast float %2552, %2525
  %2555 = fmul fast float %2553, %2526
  %2556 = call float @dx.op.unary.f32(i32 27, float %2554)  ; Round_ni(value)
  %2557 = call float @dx.op.unary.f32(i32 27, float %2555)  ; Round_ni(value)
  %2558 = fptosi float %2556 to i32
  %2559 = fptosi float %2557 to i32
  %2560 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %2558, i32 %2559, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = lshr i32 %2561, 16
  %2563 = icmp eq i32 %2562, 65535
  br i1 %2563, label %2673, label %2564

; <label>:2564                                    ; preds = %2550
  %2565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2566 = extractvalue %dx.types.CBufRet.f32 %2565, 0
  %2567 = fmul fast float %2566, %2525
  %2568 = extractvalue %dx.types.CBufRet.f32 %2565, 1
  %2569 = fadd fast float %2567, %2568
  %2570 = extractvalue %dx.types.CBufRet.f32 %2565, 2
  %2571 = fmul fast float %2570, %2526
  %2572 = extractvalue %dx.types.CBufRet.f32 %2565, 3
  %2573 = fadd fast float %2571, %2572
  %2574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2569, float %2573, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = extractvalue %dx.types.ResRet.f32 %2574, 1
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 1
  %2579 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2580 = fsub fast float %2578, %2579
  %2581 = fmul fast float %2580, %2575
  %2582 = fadd fast float %2581, %2579
  %2583 = extractvalue %dx.types.CBufRet.f32 %2577, 3
  %2584 = extractvalue %dx.types.CBufRet.f32 %2577, 2
  %2585 = fsub fast float %2583, %2584
  %2586 = fmul fast float %2585, %2576
  %2587 = fadd fast float %2586, %2584
  %2588 = fsub fast float %2512, %2582
  %2589 = fsub fast float %2587, %2582
  %2590 = fdiv fast float %2588, %2589
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %2593 = extractvalue %dx.types.CBufRet.f32 %2551, 0
  %2594 = extractvalue %dx.types.CBufRet.f32 %2551, 1
  %2595 = fmul fast float %2593, %2525
  %2596 = fmul fast float %2594, %2526
  %2597 = fmul fast float %2595, 1.250000e-01
  %2598 = fmul fast float %2596, 1.250000e-01
  %2599 = call float @dx.op.unary.f32(i32 27, float %2597)  ; Round_ni(value)
  %2600 = call float @dx.op.unary.f32(i32 27, float %2598)  ; Round_ni(value)
  %2601 = fmul fast float %2599, 8.000000e+00
  %2602 = fmul fast float %2600, 8.000000e+00
  %2603 = fsub fast float %2595, %2601
  %2604 = fsub fast float %2596, %2602
  %2605 = fadd fast float %2603, 5.000000e-01
  %2606 = fadd fast float %2604, 5.000000e-01
  %2607 = and i32 %2562, 255
  %2608 = lshr i32 %2561, 24
  %2609 = mul nuw nsw i32 %2607, 9
  %2610 = uitofp i32 %2609 to float
  %2611 = mul nuw nsw i32 %2608, 9
  %2612 = uitofp i32 %2611 to float
  %2613 = fadd fast float %2605, %2610
  %2614 = fadd fast float %2606, %2612
  %2615 = fdiv fast float %2613, %2501
  %2616 = fdiv fast float %2614, %2592
  %2617 = fmul fast float %2591, 4.375000e-01
  %2618 = fadd fast float %2617, 3.125000e-02
  %2619 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2615, float %2616, float %2618, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2620 = extractvalue %dx.types.ResRet.f32 %2619, 0
  %2621 = extractvalue %dx.types.ResRet.f32 %2619, 1
  %2622 = extractvalue %dx.types.ResRet.f32 %2619, 2
  %2623 = fadd fast float %2617, 5.312500e-01
  %2624 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2615, float %2616, float %2623, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2625 = extractvalue %dx.types.ResRet.f32 %2624, 0
  %2626 = extractvalue %dx.types.ResRet.f32 %2624, 1
  %2627 = extractvalue %dx.types.ResRet.f32 %2624, 2
  %2628 = fmul fast float %2625, 2.000000e+00
  %2629 = fmul fast float %2626, 2.000000e+00
  %2630 = fmul fast float %2627, 2.000000e+00
  %2631 = fadd fast float %2628, -1.000000e+00
  %2632 = fadd fast float %2629, -1.000000e+00
  %2633 = fadd fast float %2630, -1.000000e+00
  %2634 = fmul fast float %2631, %2631
  %2635 = fmul fast float %2632, %2632
  %2636 = fadd fast float %2634, %2635
  %2637 = fmul fast float %2633, %2633
  %2638 = fadd fast float %2636, %2637
  %2639 = call float @dx.op.unary.f32(i32 24, float %2638)  ; Sqrt(value)
  %2640 = fcmp fast ogt float %2639, 0.000000e+00
  br i1 %2640, label %2641, label %2645

; <label>:2641                                    ; preds = %2564
  %2642 = fdiv fast float %2631, %2639
  %2643 = fdiv fast float %2632, %2639
  %2644 = fdiv fast float %2633, %2639
  br label %2645

; <label>:2645                                    ; preds = %2641, %2564
  %2646 = phi float [ %2642, %2641 ], [ 0.000000e+00, %2564 ]
  %2647 = phi float [ %2643, %2641 ], [ 0.000000e+00, %2564 ]
  %2648 = phi float [ %2644, %2641 ], [ 0.000000e+00, %2564 ]
  %2649 = call float @dx.op.dot3.f32(i32 55, float %2646, float %2647, float %2648, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %2650 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2649)  ; FMax(a,b)
  %2651 = fmul fast float %2650, 0x400C5BF8A0000000
  %2652 = fmul fast float %2620, %2540
  %2653 = fmul fast float %2652, %2651
  %2654 = fmul fast float %2621, %2540
  %2655 = fmul fast float %2654, %2651
  %2656 = fmul fast float %2622, %2540
  %2657 = fmul fast float %2656, %2651
  %2658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2659 = extractvalue %dx.types.CBufRet.f32 %2658, 3
  %2660 = fmul fast float %2653, %2659
  %2661 = fmul fast float %2655, %2659
  %2662 = fmul fast float %2657, %2659
  %2663 = fcmp fast ogt float %2512, %2587
  br i1 %2663, label %2664, label %2673

; <label>:2664                                    ; preds = %2645
  %2665 = fmul fast float %2589, 0x3FC24924A0000000
  %2666 = fsub fast float %2512, %2587
  %2667 = fdiv fast float %2666, %2665
  %2668 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = fmul fast float %2669, %2660
  %2671 = fmul fast float %2669, %2661
  %2672 = fmul fast float %2669, %2662
  br label %2673

; <label>:2673                                    ; preds = %2664, %2645, %2550, %2505
  %2674 = phi float [ %2672, %2664 ], [ %2662, %2645 ], [ 0.000000e+00, %2550 ], [ 0.000000e+00, %2505 ]
  %2675 = phi float [ %2671, %2664 ], [ %2661, %2645 ], [ 0.000000e+00, %2550 ], [ 0.000000e+00, %2505 ]
  %2676 = phi float [ %2670, %2664 ], [ %2660, %2645 ], [ 0.000000e+00, %2550 ], [ 0.000000e+00, %2505 ]
  %2677 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2676)  ; FMax(a,b)
  %2678 = fmul fast float %2677, 0x3FD20DD760000000
  %2679 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2675)  ; FMax(a,b)
  %2680 = fmul fast float %2679, 0x3FD20DD760000000
  %2681 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2674)  ; FMax(a,b)
  %2682 = fmul fast float %2681, 0x3FD20DD760000000
  %2683 = call float @dx.op.binary.f32(i32 35, float %2678, float 0.000000e+00)  ; FMax(a,b)
  %2684 = call float @dx.op.binary.f32(i32 35, float %2680, float 0.000000e+00)  ; FMax(a,b)
  %2685 = call float @dx.op.binary.f32(i32 35, float %2682, float 0.000000e+00)  ; FMax(a,b)
  %2686 = fmul fast float %2683, %2499
  %2687 = fmul fast float %2684, %2499
  %2688 = fmul fast float %2685, %2499
  br label %2689

; <label>:2689                                    ; preds = %2673, %2451
  %2690 = phi float [ %2686, %2673 ], [ 0.000000e+00, %2451 ]
  %2691 = phi float [ %2687, %2673 ], [ 0.000000e+00, %2451 ]
  %2692 = phi float [ %2688, %2673 ], [ 0.000000e+00, %2451 ]
  br i1 %2498, label %2693, label %3485, !dx.controlflow.hints !126

; <label>:2693                                    ; preds = %2689
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2698 = fadd fast float %2695, %153
  %2699 = fadd fast float %2696, %154
  %2700 = fadd fast float %2697, %155
  %2701 = fmul fast float %2280, 3.200000e+01
  %2702 = fmul fast float %2281, 3.200000e+01
  %2703 = fadd fast float %2698, %2701
  %2704 = fadd fast float %2699, %2702
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = extractvalue %dx.types.CBufRet.f32 %2705, 1
  %2708 = fsub fast float %2703, %2706
  %2709 = fsub fast float %2704, %2707
  %2710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2711 = extractvalue %dx.types.CBufRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.CBufRet.f32 %2710, 1
  %2713 = fmul fast float %2708, %2711
  %2714 = fmul fast float %2709, %2712
  %2715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2716 = extractvalue %dx.types.CBufRet.f32 %2715, 0
  %2717 = fmul fast float %2713, %2716
  %2718 = extractvalue %dx.types.CBufRet.f32 %2715, 1
  %2719 = fadd fast float %2717, %2718
  %2720 = extractvalue %dx.types.CBufRet.f32 %2715, 2
  %2721 = fmul fast float %2720, %2714
  %2722 = extractvalue %dx.types.CBufRet.f32 %2715, 3
  %2723 = fadd fast float %2721, %2722
  %2724 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2719, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2727, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2727, 0
  %2730 = fsub fast float %2728, %2729
  %2731 = fmul fast float %2730, %2725
  %2732 = fadd fast float %2731, %2729
  %2733 = extractvalue %dx.types.CBufRet.f32 %2727, 3
  %2734 = extractvalue %dx.types.CBufRet.f32 %2727, 2
  %2735 = fsub fast float %2733, %2734
  %2736 = fmul fast float %2735, %2726
  %2737 = fadd fast float %2736, %2734
  %2738 = fsub fast float %2700, %2732
  %2739 = fsub fast float %2737, %2732
  %2740 = fdiv fast float %2738, %2739
  %2741 = call float @dx.op.unary.f32(i32 7, float %2740)  ; Saturate(value)
  %2742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2743 = extractvalue %dx.types.CBufRet.f32 %2742, 0
  %2744 = fmul fast float %2743, %2741
  %2745 = extractvalue %dx.types.CBufRet.f32 %2742, 1
  %2746 = fadd fast float %2744, %2745
  %2747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %61, float %2719, float %2723, float %2746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2752 = extractvalue %dx.types.CBufRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.CBufRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.CBufRet.f32 %2751, 2
  %2755 = fmul fast float %2752, %2748
  %2756 = fmul fast float %2753, %2749
  %2757 = fmul fast float %2754, %2750
  %2758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2759 = extractvalue %dx.types.CBufRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.CBufRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.CBufRet.f32 %2758, 2
  %2762 = fadd fast float %2755, %2759
  %2763 = fadd fast float %2756, %2760
  %2764 = fadd fast float %2757, %2761
  %2765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2766 = extractvalue %dx.types.CBufRet.f32 %2765, 0
  %2767 = fmul fast float %2766, %2713
  %2768 = extractvalue %dx.types.CBufRet.f32 %2765, 1
  %2769 = fadd fast float %2767, %2768
  %2770 = extractvalue %dx.types.CBufRet.f32 %2765, 2
  %2771 = fmul fast float %2770, %2714
  %2772 = extractvalue %dx.types.CBufRet.f32 %2765, 3
  %2773 = fadd fast float %2771, %2772
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 0
  %2776 = extractvalue %dx.types.CBufRet.f32 %2774, 1
  %2777 = extractvalue %dx.types.CBufRet.f32 %2774, 2
  %2778 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = extractvalue %dx.types.CBufRet.f32 %2779, 3
  %2784 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2769, float %2773, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2785 = extractvalue %dx.types.ResRet.f32 %2784, 0
  %2786 = extractvalue %dx.types.ResRet.f32 %2784, 1
  %2787 = extractvalue %dx.types.ResRet.f32 %2784, 2
  %2788 = extractvalue %dx.types.ResRet.f32 %2784, 3
  %2789 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2769, float %2773, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2790 = extractvalue %dx.types.ResRet.f32 %2789, 0
  %2791 = extractvalue %dx.types.ResRet.f32 %2789, 1
  %2792 = extractvalue %dx.types.ResRet.f32 %2789, 2
  %2793 = extractvalue %dx.types.ResRet.f32 %2789, 3
  %2794 = fmul fast float %2785, %2762
  %2795 = fmul fast float %2790, %2762
  %2796 = fmul fast float %2792, %2762
  %2797 = fmul fast float %2788, %2762
  %2798 = fadd fast float %2794, %2775
  %2799 = fadd fast float %2795, %2776
  %2800 = fadd fast float %2796, %2777
  %2801 = fadd fast float %2797, %2778
  %2802 = fmul fast float %2786, %2762
  %2803 = fmul fast float %2791, %2762
  %2804 = fadd fast float %2802, %2780
  %2805 = fadd fast float %2803, %2781
  %2806 = fmul fast float %2787, %2762
  %2807 = fmul fast float %2793, %2762
  %2808 = fadd fast float %2806, %2782
  %2809 = fadd fast float %2807, %2783
  %2810 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2769, float %2773, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2811 = extractvalue %dx.types.ResRet.f32 %2810, 0
  %2812 = extractvalue %dx.types.ResRet.f32 %2810, 1
  %2813 = extractvalue %dx.types.ResRet.f32 %2810, 2
  %2814 = extractvalue %dx.types.ResRet.f32 %2810, 3
  %2815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2769, float %2773, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.ResRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.ResRet.f32 %2815, 2
  %2819 = extractvalue %dx.types.ResRet.f32 %2815, 3
  %2820 = fmul fast float %2811, %2763
  %2821 = fmul fast float %2816, %2763
  %2822 = fmul fast float %2818, %2763
  %2823 = fmul fast float %2814, %2763
  %2824 = fadd fast float %2798, %2820
  %2825 = fadd fast float %2799, %2821
  %2826 = fadd fast float %2800, %2822
  %2827 = fadd fast float %2801, %2823
  %2828 = fmul fast float %2812, %2763
  %2829 = fmul fast float %2817, %2763
  %2830 = fadd fast float %2804, %2828
  %2831 = fadd fast float %2805, %2829
  %2832 = fmul fast float %2813, %2763
  %2833 = fmul fast float %2819, %2763
  %2834 = fadd fast float %2808, %2832
  %2835 = fadd fast float %2809, %2833
  %2836 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2769, float %2773, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2837 = extractvalue %dx.types.ResRet.f32 %2836, 0
  %2838 = extractvalue %dx.types.ResRet.f32 %2836, 1
  %2839 = extractvalue %dx.types.ResRet.f32 %2836, 2
  %2840 = extractvalue %dx.types.ResRet.f32 %2836, 3
  %2841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2769, float %2773, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2842 = extractvalue %dx.types.ResRet.f32 %2841, 0
  %2843 = extractvalue %dx.types.ResRet.f32 %2841, 1
  %2844 = extractvalue %dx.types.ResRet.f32 %2841, 2
  %2845 = extractvalue %dx.types.ResRet.f32 %2841, 3
  %2846 = fmul fast float %2837, %2764
  %2847 = fmul fast float %2842, %2764
  %2848 = fmul fast float %2844, %2764
  %2849 = fmul fast float %2840, %2764
  %2850 = fadd fast float %2824, %2846
  %2851 = fadd fast float %2825, %2847
  %2852 = fadd fast float %2826, %2848
  %2853 = fadd fast float %2827, %2849
  %2854 = fmul fast float %2838, %2764
  %2855 = fmul fast float %2843, %2764
  %2856 = fadd fast float %2830, %2854
  %2857 = fadd fast float %2831, %2855
  %2858 = fmul fast float %2839, %2764
  %2859 = fmul fast float %2845, %2764
  %2860 = fadd fast float %2834, %2858
  %2861 = fadd fast float %2835, %2859
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 0
  %2864 = fsub fast float %2698, %2863
  %2865 = fsub fast float %2706, %2698
  %2866 = call float @dx.op.binary.f32(i32 35, float %2865, float %2864)  ; FMax(a,b)
  %2867 = extractvalue %dx.types.CBufRet.f32 %2862, 1
  %2868 = fsub fast float %2699, %2867
  %2869 = fsub fast float %2707, %2699
  %2870 = call float @dx.op.binary.f32(i32 35, float %2869, float %2868)  ; FMax(a,b)
  %2871 = call float @dx.op.binary.f32(i32 35, float %2866, float %2870)  ; FMax(a,b)
  %2872 = extractvalue %dx.types.CBufRet.f32 %2710, 3
  %2873 = fmul fast float %2872, %2871
  %2874 = call float @dx.op.unary.f32(i32 7, float %2873)  ; Saturate(value)
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 0
  %2877 = extractvalue %dx.types.CBufRet.f32 %2875, 1
  %2878 = extractvalue %dx.types.CBufRet.f32 %2875, 2
  %2879 = extractvalue %dx.types.CBufRet.f32 %2875, 3
  %2880 = fsub fast float %2876, %2850
  %2881 = fsub fast float %2877, %2851
  %2882 = fsub fast float %2878, %2852
  %2883 = fsub fast float %2879, %2853
  %2884 = fmul fast float %2880, %2874
  %2885 = fmul fast float %2881, %2874
  %2886 = fmul fast float %2882, %2874
  %2887 = fmul fast float %2883, %2874
  %2888 = fadd fast float %2884, %2850
  %2889 = fadd fast float %2885, %2851
  %2890 = fadd fast float %2886, %2852
  %2891 = fadd fast float %2887, %2853
  %2892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2893 = extractvalue %dx.types.CBufRet.f32 %2892, 0
  %2894 = extractvalue %dx.types.CBufRet.f32 %2892, 1
  %2895 = fsub fast float %2893, %2856
  %2896 = fsub fast float %2894, %2857
  %2897 = fmul fast float %2895, %2874
  %2898 = fmul fast float %2896, %2874
  %2899 = fadd fast float %2897, %2856
  %2900 = fadd fast float %2898, %2857
  %2901 = extractvalue %dx.types.CBufRet.f32 %2892, 2
  %2902 = extractvalue %dx.types.CBufRet.f32 %2892, 3
  %2903 = fsub fast float %2901, %2860
  %2904 = fsub fast float %2902, %2861
  %2905 = fmul fast float %2903, %2874
  %2906 = fmul fast float %2904, %2874
  %2907 = fadd fast float %2905, %2860
  %2908 = fadd fast float %2906, %2861
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 0
  %2911 = fmul fast float %2910, %2888
  %2912 = fmul fast float %2910, %2889
  %2913 = fmul fast float %2910, %2890
  %2914 = fmul fast float %2910, %2891
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = fmul fast float %2916, %2899
  %2918 = fmul fast float %2916, %2900
  %2919 = fadd fast float %2917, %2911
  %2920 = fadd fast float %2918, %2913
  %2921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2922 = extractvalue %dx.types.CBufRet.f32 %2921, 0
  %2923 = fmul fast float %2922, %2907
  %2924 = fmul fast float %2922, %2908
  %2925 = fadd fast float %2919, %2923
  %2926 = fadd fast float %2920, %2924
  %2927 = extractvalue %dx.types.CBufRet.f32 %2909, 1
  %2928 = fmul fast float %2927, %2888
  %2929 = fmul fast float %2927, %2889
  %2930 = fmul fast float %2927, %2890
  %2931 = fmul fast float %2927, %2891
  %2932 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2933 = fmul fast float %2932, %2899
  %2934 = fmul fast float %2932, %2900
  %2935 = fadd fast float %2933, %2928
  %2936 = fadd fast float %2934, %2930
  %2937 = extractvalue %dx.types.CBufRet.f32 %2921, 1
  %2938 = fmul fast float %2937, %2907
  %2939 = fmul fast float %2937, %2908
  %2940 = fadd fast float %2935, %2938
  %2941 = fadd fast float %2936, %2939
  %2942 = extractvalue %dx.types.CBufRet.f32 %2909, 2
  %2943 = fmul fast float %2942, %2888
  %2944 = fmul fast float %2942, %2889
  %2945 = fmul fast float %2942, %2890
  %2946 = fmul fast float %2942, %2891
  %2947 = extractvalue %dx.types.CBufRet.f32 %2915, 2
  %2948 = fmul fast float %2947, %2899
  %2949 = fmul fast float %2947, %2900
  %2950 = fadd fast float %2948, %2943
  %2951 = fadd fast float %2949, %2945
  %2952 = extractvalue %dx.types.CBufRet.f32 %2921, 2
  %2953 = fmul fast float %2952, %2907
  %2954 = fmul fast float %2952, %2908
  %2955 = fadd fast float %2950, %2953
  %2956 = fadd fast float %2951, %2954
  %2957 = fmul fast float %2944, %2944
  %2958 = fmul fast float %2956, %2956
  %2959 = fmul fast float %2946, %2946
  %2960 = fadd fast float %2959, %2957
  %2961 = fadd fast float %2960, %2958
  %2962 = call float @dx.op.unary.f32(i32 24, float %2961)  ; Sqrt(value)
  %2963 = fcmp fast ugt float %2962, 0.000000e+00
  br i1 %2963, label %2964, label %2979

; <label>:2964                                    ; preds = %2693
  %2965 = fsub fast float -0.000000e+00, %2946
  %2966 = fdiv fast float %2965, %2962
  %2967 = fsub fast float -0.000000e+00, %2944
  %2968 = fdiv fast float %2967, %2962
  %2969 = fdiv fast float %2956, %2962
  %2970 = fmul fast float %2955, 0x3FE279A760000000
  %2971 = fmul fast float %2968, %2944
  %2972 = fmul fast float %2969, %2956
  %2973 = fmul fast float %2966, %2946
  %2974 = fadd fast float %2971, %2973
  %2975 = fsub fast float %2974, %2972
  %2976 = call float @dx.op.unary.f32(i32 6, float %2975)  ; FAbs(value)
  %2977 = fadd fast float %2976, 0x3DDB7CDFE0000000
  %2978 = fdiv fast float %2970, %2977
  br label %2979

; <label>:2979                                    ; preds = %2964, %2693
  %2980 = phi float [ %2978, %2964 ], [ 1.000000e+00, %2693 ]
  %2981 = fmul fast float %2929, %2929
  %2982 = fmul fast float %2941, %2941
  %2983 = fmul fast float %2931, %2931
  %2984 = fadd fast float %2983, %2981
  %2985 = fadd fast float %2984, %2982
  %2986 = call float @dx.op.unary.f32(i32 24, float %2985)  ; Sqrt(value)
  %2987 = fcmp fast ugt float %2986, 0.000000e+00
  br i1 %2987, label %2988, label %3003

; <label>:2988                                    ; preds = %2979
  %2989 = fsub fast float -0.000000e+00, %2931
  %2990 = fdiv fast float %2989, %2986
  %2991 = fsub fast float -0.000000e+00, %2929
  %2992 = fdiv fast float %2991, %2986
  %2993 = fdiv fast float %2941, %2986
  %2994 = fmul fast float %2940, 0x3FE279A760000000
  %2995 = fmul fast float %2992, %2929
  %2996 = fmul fast float %2993, %2941
  %2997 = fmul fast float %2990, %2931
  %2998 = fadd fast float %2995, %2997
  %2999 = fsub fast float %2998, %2996
  %3000 = call float @dx.op.unary.f32(i32 6, float %2999)  ; FAbs(value)
  %3001 = fadd fast float %3000, 0x3DDB7CDFE0000000
  %3002 = fdiv fast float %2994, %3001
  br label %3003

; <label>:3003                                    ; preds = %2988, %2979
  %3004 = phi float [ %3002, %2988 ], [ 1.000000e+00, %2979 ]
  %3005 = call float @dx.op.binary.f32(i32 36, float %3004, float %2980)  ; FMin(a,b)
  %3006 = fmul fast float %2912, %2912
  %3007 = fmul fast float %2926, %2926
  %3008 = fmul fast float %2914, %2914
  %3009 = fadd fast float %3008, %3006
  %3010 = fadd fast float %3009, %3007
  %3011 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3012 = fcmp fast ugt float %3011, 0.000000e+00
  br i1 %3012, label %3013, label %3028

; <label>:3013                                    ; preds = %3003
  %3014 = fsub fast float -0.000000e+00, %2914
  %3015 = fdiv fast float %3014, %3011
  %3016 = fsub fast float -0.000000e+00, %2912
  %3017 = fdiv fast float %3016, %3011
  %3018 = fdiv fast float %2926, %3011
  %3019 = fmul fast float %2925, 0x3FE279A760000000
  %3020 = fmul fast float %3017, %2912
  %3021 = fmul fast float %3018, %2926
  %3022 = fmul fast float %3015, %2914
  %3023 = fadd fast float %3020, %3022
  %3024 = fsub fast float %3023, %3021
  %3025 = call float @dx.op.unary.f32(i32 6, float %3024)  ; FAbs(value)
  %3026 = fadd fast float %3025, 0x3DDB7CDFE0000000
  %3027 = fdiv fast float %3019, %3026
  br label %3028

; <label>:3028                                    ; preds = %3013, %3003
  %3029 = phi float [ %3027, %3013 ], [ 1.000000e+00, %3003 ]
  %3030 = call float @dx.op.binary.f32(i32 36, float %3029, float %3005)  ; FMin(a,b)
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = fcmp fast olt float %3031, 1.000000e+00
  br i1 %3032, label %3033, label %3043

; <label>:3033                                    ; preds = %3028
  %3034 = fmul fast float %3031, %2912
  %3035 = fmul fast float %3031, %2926
  %3036 = fmul fast float %3031, %2914
  %3037 = fmul fast float %3031, %2929
  %3038 = fmul fast float %3031, %2941
  %3039 = fmul fast float %3031, %2931
  %3040 = fmul fast float %3031, %2944
  %3041 = fmul fast float %3031, %2956
  %3042 = fmul fast float %3031, %2946
  br label %3043

; <label>:3043                                    ; preds = %3033, %3028
  %3044 = phi float [ %3040, %3033 ], [ %2944, %3028 ]
  %3045 = phi float [ %3041, %3033 ], [ %2956, %3028 ]
  %3046 = phi float [ %3042, %3033 ], [ %2946, %3028 ]
  %3047 = phi float [ %3037, %3033 ], [ %2929, %3028 ]
  %3048 = phi float [ %3038, %3033 ], [ %2941, %3028 ]
  %3049 = phi float [ %3039, %3033 ], [ %2931, %3028 ]
  %3050 = phi float [ %3034, %3033 ], [ %2912, %3028 ]
  %3051 = phi float [ %3035, %3033 ], [ %2926, %3028 ]
  %3052 = phi float [ %3036, %3033 ], [ %2914, %3028 ]
  %3053 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2925)  ; FMax(a,b)
  %3054 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2940)  ; FMax(a,b)
  %3055 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2955)  ; FMax(a,b)
  %3056 = fcmp fast oge float %2713, 0.000000e+00
  %3057 = and i1 %3056, %2502
  %3058 = fcmp fast ole float %2713, 1.000000e+00
  %3059 = and i1 %3058, %3057
  %3060 = fcmp fast oge float %2714, 0.000000e+00
  %3061 = and i1 %3060, %3059
  %3062 = fcmp fast ole float %2714, 1.000000e+00
  %3063 = and i1 %3062, %3061
  br i1 %3063, label %3064, label %3204, !dx.controlflow.hints !127

; <label>:3064                                    ; preds = %3043
  %3065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3066 = extractvalue %dx.types.CBufRet.f32 %3065, 2
  %3067 = extractvalue %dx.types.CBufRet.f32 %3065, 3
  %3068 = fmul fast float %3066, %2713
  %3069 = fmul fast float %3067, %2714
  %3070 = call float @dx.op.unary.f32(i32 27, float %3068)  ; Round_ni(value)
  %3071 = call float @dx.op.unary.f32(i32 27, float %3069)  ; Round_ni(value)
  %3072 = fptosi float %3070 to i32
  %3073 = fptosi float %3071 to i32
  %3074 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %3072, i32 %3073, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3075 = extractvalue %dx.types.ResRet.i32 %3074, 0
  %3076 = and i32 %3075, 65535
  %3077 = lshr i32 %3075, 16
  %3078 = icmp eq i32 %3076, 65535
  br i1 %3078, label %3115, label %3079

; <label>:3079                                    ; preds = %3064
  %3080 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %3081 = extractvalue %dx.types.CBufRet.f32 %3065, 0
  %3082 = extractvalue %dx.types.CBufRet.f32 %3065, 1
  %3083 = fmul fast float %3081, %2713
  %3084 = fmul fast float %3082, %2714
  %3085 = fmul fast float %3083, 1.250000e-01
  %3086 = fmul fast float %3084, 1.250000e-01
  %3087 = call float @dx.op.unary.f32(i32 27, float %3085)  ; Round_ni(value)
  %3088 = call float @dx.op.unary.f32(i32 27, float %3086)  ; Round_ni(value)
  %3089 = fmul fast float %3087, 8.000000e+00
  %3090 = fmul fast float %3088, 8.000000e+00
  %3091 = and i32 %3075, 255
  %3092 = lshr i32 %3075, 8
  %3093 = and i32 %3092, 255
  %3094 = mul nuw nsw i32 %3091, 9
  %3095 = uitofp i32 %3094 to float
  %3096 = mul nuw nsw i32 %3093, 9
  %3097 = uitofp i32 %3096 to float
  %3098 = fadd fast float %3095, 5.000000e-01
  %3099 = fadd fast float %3098, %3083
  %3100 = fsub fast float %3099, %3089
  %3101 = fadd fast float %3097, 5.000000e-01
  %3102 = fadd fast float %3101, %3084
  %3103 = fsub fast float %3102, %3090
  %3104 = fdiv fast float %3100, %2501
  %3105 = fdiv fast float %3103, %3080
  %3106 = fmul fast float %2741, 4.375000e-01
  %3107 = fadd fast float %3106, 3.125000e-02
  %3108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %3104, float %3105, float %3107, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3109 = extractvalue %dx.types.ResRet.f32 %3108, 0
  %3110 = extractvalue %dx.types.ResRet.f32 %3108, 1
  %3111 = extractvalue %dx.types.ResRet.f32 %3108, 2
  %3112 = fadd fast float %3109, %3053
  %3113 = fadd fast float %3110, %3054
  %3114 = fadd fast float %3111, %3055
  br label %3115

; <label>:3115                                    ; preds = %3079, %3064
  %3116 = phi float [ %3114, %3079 ], [ %3055, %3064 ]
  %3117 = phi float [ %3113, %3079 ], [ %3054, %3064 ]
  %3118 = phi float [ %3112, %3079 ], [ %3053, %3064 ]
  %3119 = icmp eq i32 %3077, 65535
  br i1 %3119, label %3204, label %3120

; <label>:3120                                    ; preds = %3115
  %3121 = extractvalue %dx.types.CBufRet.f32 %2500, 1
  %3122 = extractvalue %dx.types.CBufRet.f32 %3065, 0
  %3123 = extractvalue %dx.types.CBufRet.f32 %3065, 1
  %3124 = fmul fast float %3122, %2713
  %3125 = fmul fast float %3123, %2714
  %3126 = fmul fast float %3124, 1.250000e-01
  %3127 = fmul fast float %3125, 1.250000e-01
  %3128 = call float @dx.op.unary.f32(i32 27, float %3126)  ; Round_ni(value)
  %3129 = call float @dx.op.unary.f32(i32 27, float %3127)  ; Round_ni(value)
  %3130 = fmul fast float %3128, 8.000000e+00
  %3131 = fmul fast float %3129, 8.000000e+00
  %3132 = fsub fast float %3124, %3130
  %3133 = fsub fast float %3125, %3131
  %3134 = fadd fast float %3132, 5.000000e-01
  %3135 = fadd fast float %3133, 5.000000e-01
  %3136 = and i32 %3077, 255
  %3137 = lshr i32 %3075, 24
  %3138 = mul nuw nsw i32 %3136, 9
  %3139 = uitofp i32 %3138 to float
  %3140 = mul nuw nsw i32 %3137, 9
  %3141 = uitofp i32 %3140 to float
  %3142 = fadd fast float %3134, %3139
  %3143 = fadd fast float %3135, %3141
  %3144 = fdiv fast float %3142, %2501
  %3145 = fdiv fast float %3143, %3121
  %3146 = fmul fast float %2741, 4.375000e-01
  %3147 = fadd fast float %3146, 3.125000e-02
  %3148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %3144, float %3145, float %3147, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  %3150 = extractvalue %dx.types.ResRet.f32 %3148, 1
  %3151 = extractvalue %dx.types.ResRet.f32 %3148, 2
  %3152 = fadd fast float %3146, 5.312500e-01
  %3153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %3144, float %3145, float %3152, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3154 = extractvalue %dx.types.ResRet.f32 %3153, 0
  %3155 = extractvalue %dx.types.ResRet.f32 %3153, 1
  %3156 = extractvalue %dx.types.ResRet.f32 %3153, 2
  %3157 = fmul fast float %3154, 2.000000e+00
  %3158 = fmul fast float %3155, 2.000000e+00
  %3159 = fmul fast float %3156, 2.000000e+00
  %3160 = fadd fast float %3157, -1.000000e+00
  %3161 = fadd fast float %3158, -1.000000e+00
  %3162 = fadd fast float %3159, -1.000000e+00
  %3163 = fmul fast float %3160, %3160
  %3164 = fmul fast float %3161, %3161
  %3165 = fadd fast float %3163, %3164
  %3166 = fmul fast float %3162, %3162
  %3167 = fadd fast float %3165, %3166
  %3168 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3169 = fcmp fast ogt float %3168, 0.000000e+00
  br i1 %3169, label %3170, label %3174

; <label>:3170                                    ; preds = %3120
  %3171 = fdiv fast float %3160, %3168
  %3172 = fdiv fast float %3161, %3168
  %3173 = fdiv fast float %3162, %3168
  br label %3174

; <label>:3174                                    ; preds = %3170, %3120
  %3175 = phi float [ %3171, %3170 ], [ 0.000000e+00, %3120 ]
  %3176 = phi float [ %3172, %3170 ], [ 0.000000e+00, %3120 ]
  %3177 = phi float [ %3173, %3170 ], [ 0.000000e+00, %3120 ]
  %3178 = fmul fast float %153, %153
  %3179 = fmul fast float %154, %154
  %3180 = fadd fast float %3178, %3179
  %3181 = call float @dx.op.unary.f32(i32 24, float %3180)  ; Sqrt(value)
  %3182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3183 = extractvalue %dx.types.CBufRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.CBufRet.f32 %3182, 1
  %3185 = fsub fast float %3181, %3183
  %3186 = fdiv fast float %3185, %3184
  %3187 = call float @dx.op.unary.f32(i32 7, float %3186)  ; Saturate(value)
  %3188 = fmul fast float %3187, 2.000000e+00
  %3189 = fsub fast float 3.000000e+00, %3188
  %3190 = fmul fast float %3187, %3187
  %3191 = fmul fast float %3190, %3189
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3176, float %3177, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3192)  ; FMax(a,b)
  %3194 = fmul fast float %3193, 0x400C5BF8A0000000
  %3195 = fmul fast float %3191, %3149
  %3196 = fmul fast float %3195, %3194
  %3197 = fadd fast float %3196, %3118
  %3198 = fmul fast float %3191, %3150
  %3199 = fmul fast float %3198, %3194
  %3200 = fadd fast float %3199, %3117
  %3201 = fmul fast float %3191, %3151
  %3202 = fmul fast float %3201, %3194
  %3203 = fadd fast float %3202, %3116
  br label %3204

; <label>:3204                                    ; preds = %3174, %3115, %3043
  %3205 = phi float [ %3203, %3174 ], [ %3116, %3115 ], [ %3055, %3043 ]
  %3206 = phi float [ %3200, %3174 ], [ %3117, %3115 ], [ %3054, %3043 ]
  %3207 = phi float [ %3197, %3174 ], [ %3118, %3115 ], [ %3053, %3043 ]
  %3208 = fcmp fast ogt float %2700, %2737
  %3209 = and i1 %3056, %3208
  %3210 = and i1 %3058, %3209
  %3211 = and i1 %3060, %3210
  %3212 = and i1 %3062, %3211
  br i1 %3212, label %3213, label %3270, !dx.controlflow.hints !128

; <label>:3213                                    ; preds = %3204
  %3214 = fmul fast float %2739, 0x3FC24924A0000000
  %3215 = fsub fast float %2700, %2737
  %3216 = fdiv fast float %3215, %3214
  %3217 = call float @dx.op.unary.f32(i32 7, float %3216)  ; Saturate(value)
  %3218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3219 = extractvalue %dx.types.CBufRet.f32 %3218, 0
  %3220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3221 = extractvalue %dx.types.CBufRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.CBufRet.f32 %3220, 1
  %3223 = extractvalue %dx.types.CBufRet.f32 %3220, 2
  %3224 = fsub fast float %3219, %3207
  %3225 = fsub fast float %3221, %3050
  %3226 = fsub fast float %3222, %3051
  %3227 = fsub fast float %3223, %3052
  %3228 = fmul fast float %3224, %3217
  %3229 = fmul fast float %3225, %3217
  %3230 = fmul fast float %3226, %3217
  %3231 = fmul fast float %3227, %3217
  %3232 = fadd fast float %3228, %3207
  %3233 = fadd fast float %3229, %3050
  %3234 = fadd fast float %3230, %3051
  %3235 = fadd fast float %3231, %3052
  %3236 = extractvalue %dx.types.CBufRet.f32 %3218, 1
  %3237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3238 = extractvalue %dx.types.CBufRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.CBufRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.CBufRet.f32 %3237, 2
  %3241 = fsub fast float %3236, %3206
  %3242 = fsub fast float %3238, %3047
  %3243 = fsub fast float %3239, %3048
  %3244 = fsub fast float %3240, %3049
  %3245 = fmul fast float %3241, %3217
  %3246 = fmul fast float %3242, %3217
  %3247 = fmul fast float %3243, %3217
  %3248 = fmul fast float %3244, %3217
  %3249 = fadd fast float %3245, %3206
  %3250 = fadd fast float %3246, %3047
  %3251 = fadd fast float %3247, %3048
  %3252 = fadd fast float %3248, %3049
  %3253 = extractvalue %dx.types.CBufRet.f32 %3218, 2
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 0
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 1
  %3257 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3258 = fsub fast float %3253, %3205
  %3259 = fsub fast float %3255, %3044
  %3260 = fsub fast float %3256, %3045
  %3261 = fsub fast float %3257, %3046
  %3262 = fmul fast float %3258, %3217
  %3263 = fmul fast float %3259, %3217
  %3264 = fmul fast float %3260, %3217
  %3265 = fmul fast float %3261, %3217
  %3266 = fadd fast float %3262, %3205
  %3267 = fadd fast float %3263, %3044
  %3268 = fadd fast float %3264, %3045
  %3269 = fadd fast float %3265, %3046
  br label %3270

; <label>:3270                                    ; preds = %3213, %3204
  %3271 = phi float [ %3266, %3213 ], [ %3205, %3204 ]
  %3272 = phi float [ %3267, %3213 ], [ %3044, %3204 ]
  %3273 = phi float [ %3268, %3213 ], [ %3045, %3204 ]
  %3274 = phi float [ %3269, %3213 ], [ %3046, %3204 ]
  %3275 = phi float [ %3249, %3213 ], [ %3206, %3204 ]
  %3276 = phi float [ %3250, %3213 ], [ %3047, %3204 ]
  %3277 = phi float [ %3251, %3213 ], [ %3048, %3204 ]
  %3278 = phi float [ %3252, %3213 ], [ %3049, %3204 ]
  %3279 = phi float [ %3232, %3213 ], [ %3207, %3204 ]
  %3280 = phi float [ %3233, %3213 ], [ %3050, %3204 ]
  %3281 = phi float [ %3234, %3213 ], [ %3051, %3204 ]
  %3282 = phi float [ %3235, %3213 ], [ %3052, %3204 ]
  %3283 = extractvalue %dx.types.CBufRet.f32 %2862, 3
  %3284 = fmul fast float %3283, %3279
  %3285 = fmul fast float %3283, %3275
  %3286 = fmul fast float %3283, %3271
  %3287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3288 = extractvalue %dx.types.CBufRet.f32 %3287, 3
  %3289 = fmul fast float %3284, %3288
  %3290 = fmul fast float %3285, %3288
  %3291 = fmul fast float %3286, %3288
  %3292 = call float @dx.op.dot3.f32(i32 55, float %3289, float %3290, float %3291, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3293 = fmul fast float %3292, 0x3FD20DD760000000
  %3294 = fmul fast float %3280, 1.500000e+00
  %3295 = fmul fast float %3294, %3283
  %3296 = fmul fast float %3295, %3288
  %3297 = fmul fast float %3281, 1.500000e+00
  %3298 = fmul fast float %3297, %3283
  %3299 = fmul fast float %3298, %3288
  %3300 = fmul fast float %3282, 1.500000e+00
  %3301 = fmul fast float %3300, %3283
  %3302 = fmul fast float %3301, %3288
  %3303 = fmul fast float %3276, 1.500000e+00
  %3304 = fmul fast float %3303, %3283
  %3305 = fmul fast float %3304, %3288
  %3306 = fmul fast float %3277, 1.500000e+00
  %3307 = fmul fast float %3306, %3283
  %3308 = fmul fast float %3307, %3288
  %3309 = fmul fast float %3278, 1.500000e+00
  %3310 = fmul fast float %3309, %3283
  %3311 = fmul fast float %3310, %3288
  %3312 = fmul fast float %3272, 1.500000e+00
  %3313 = fmul fast float %3312, %3283
  %3314 = fmul fast float %3313, %3288
  %3315 = fmul fast float %3273, 1.500000e+00
  %3316 = fmul fast float %3315, %3283
  %3317 = fmul fast float %3316, %3288
  %3318 = fmul fast float %3274, 1.500000e+00
  %3319 = fmul fast float %3318, %3283
  %3320 = fmul fast float %3319, %3288
  %3321 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3289)  ; FMax(a,b)
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3296, float %3299, float %3302, float %3296, float %3299, float %3302)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = fcmp fast oeq float %3322, 0.000000e+00
  %3324 = fcmp fast oeq float %3321, 0.000000e+00
  %3325 = or i1 %3324, %3323
  br i1 %3325, label %3355, label %3326

; <label>:3326                                    ; preds = %3270
  %3327 = fsub fast float -0.000000e+00, %3302
  %3328 = fsub fast float -0.000000e+00, %3296
  %3329 = call float @dx.op.unary.f32(i32 24, float %3322)  ; Sqrt(value)
  %3330 = fdiv fast float %3329, %3321
  %3331 = fcmp fast ogt float %3330, 0x3FFB6F8900000000
  %3332 = select i1 %3331, float 0x3FFB6F8900000000, float %3330
  %3333 = fmul fast float %3332, 0x3FE8A23460000000
  %3334 = call float @dx.op.unary.f32(i32 7, float %3333)  ; Saturate(value)
  %3335 = call float @dx.op.binary.f32(i32 35, float %3332, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3336 = fmul fast float %3334, %3321
  %3337 = fmul fast float %3335, 0x3FF279A740000000
  %3338 = fadd fast float %3337, -1.000000e+00
  %3339 = call float @dx.op.dot3.f32(i32 55, float %3327, float %3328, float %3299, float %3327, float %3328, float %3299)  ; Dot3(ax,ay,az,bx,by,bz)
  %3340 = call float @dx.op.unary.f32(i32 25, float %3339)  ; Rsqrt(value)
  %3341 = fmul fast float %3340, %3327
  %3342 = fmul fast float %3340, %3328
  %3343 = fmul fast float %3340, %3299
  %3344 = fmul fast float %3338, %3338
  %3345 = fsub fast float 1.000000e+00, %3344
  %3346 = fmul fast float %3335, 0x40005F8BE0000000
  %3347 = fsub fast float 0x400C5BF8A0000000, %3346
  %3348 = fdiv fast float %3336, %3347
  %3349 = fmul fast float %3348, 0x3FEE31C3C0000000
  %3350 = fmul fast float %3349, %3345
  %3351 = fmul fast float %3335, 0x3FDACB7480000000
  %3352 = fadd fast float %3351, 0xBFD7347680000000
  %3353 = fmul fast float %3352, %3348
  %3354 = fmul fast float %3353, %3345
  br label %3355

; <label>:3355                                    ; preds = %3326, %3270
  %3356 = phi float [ %3341, %3326 ], [ 0.000000e+00, %3270 ]
  %3357 = phi float [ %3342, %3326 ], [ 0.000000e+00, %3270 ]
  %3358 = phi float [ %3343, %3326 ], [ 0.000000e+00, %3270 ]
  %3359 = phi float [ %3350, %3326 ], [ 0.000000e+00, %3270 ]
  %3360 = phi float [ %3354, %3326 ], [ 0.000000e+00, %3270 ]
  %3361 = call float @dx.op.dot3.f32(i32 55, float %3356, float %3357, float %3358, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3362 = fmul fast float %3361, %3361
  %3363 = fmul fast float %3362, 0x3FEE471020000000
  %3364 = fadd fast float %3363, 0xBFD42F6020000000
  %3365 = fmul fast float %3321, 0x3FD20DD760000000
  %3366 = fmul fast float %3364, %3360
  %3367 = fmul fast float %3359, 0x3FDF454380000000
  %3368 = fmul fast float %3367, %3361
  %3369 = fadd fast float %3368, %3365
  %3370 = fadd fast float %3369, %3366
  %3371 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3290)  ; FMax(a,b)
  %3372 = call float @dx.op.dot3.f32(i32 55, float %3305, float %3308, float %3311, float %3305, float %3308, float %3311)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = fcmp fast oeq float %3372, 0.000000e+00
  %3374 = fcmp fast oeq float %3371, 0.000000e+00
  %3375 = or i1 %3374, %3373
  br i1 %3375, label %3405, label %3376

; <label>:3376                                    ; preds = %3355
  %3377 = fsub fast float -0.000000e+00, %3311
  %3378 = fsub fast float -0.000000e+00, %3305
  %3379 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3380 = fdiv fast float %3379, %3371
  %3381 = fcmp fast ogt float %3380, 0x3FFB6F8900000000
  %3382 = select i1 %3381, float 0x3FFB6F8900000000, float %3380
  %3383 = fmul fast float %3382, 0x3FE8A23460000000
  %3384 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3385 = call float @dx.op.binary.f32(i32 35, float %3382, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3386 = fmul fast float %3384, %3371
  %3387 = fmul fast float %3385, 0x3FF279A740000000
  %3388 = fadd fast float %3387, -1.000000e+00
  %3389 = call float @dx.op.dot3.f32(i32 55, float %3377, float %3378, float %3308, float %3377, float %3378, float %3308)  ; Dot3(ax,ay,az,bx,by,bz)
  %3390 = call float @dx.op.unary.f32(i32 25, float %3389)  ; Rsqrt(value)
  %3391 = fmul fast float %3390, %3377
  %3392 = fmul fast float %3390, %3378
  %3393 = fmul fast float %3390, %3308
  %3394 = fmul fast float %3388, %3388
  %3395 = fsub fast float 1.000000e+00, %3394
  %3396 = fmul fast float %3385, 0x40005F8BE0000000
  %3397 = fsub fast float 0x400C5BF8A0000000, %3396
  %3398 = fdiv fast float %3386, %3397
  %3399 = fmul fast float %3398, 0x3FEE31C3C0000000
  %3400 = fmul fast float %3399, %3395
  %3401 = fmul fast float %3385, 0x3FDACB7480000000
  %3402 = fadd fast float %3401, 0xBFD7347680000000
  %3403 = fmul fast float %3402, %3398
  %3404 = fmul fast float %3403, %3395
  br label %3405

; <label>:3405                                    ; preds = %3376, %3355
  %3406 = phi float [ %3391, %3376 ], [ 0.000000e+00, %3355 ]
  %3407 = phi float [ %3392, %3376 ], [ 0.000000e+00, %3355 ]
  %3408 = phi float [ %3393, %3376 ], [ 0.000000e+00, %3355 ]
  %3409 = phi float [ %3400, %3376 ], [ 0.000000e+00, %3355 ]
  %3410 = phi float [ %3404, %3376 ], [ 0.000000e+00, %3355 ]
  %3411 = call float @dx.op.dot3.f32(i32 55, float %3406, float %3407, float %3408, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3412 = fmul fast float %3411, %3411
  %3413 = fmul fast float %3412, 0x3FEE471020000000
  %3414 = fadd fast float %3413, 0xBFD42F6020000000
  %3415 = fmul fast float %3371, 0x3FD20DD760000000
  %3416 = fmul fast float %3414, %3410
  %3417 = fmul fast float %3409, 0x3FDF454380000000
  %3418 = fmul fast float %3417, %3411
  %3419 = fadd fast float %3418, %3415
  %3420 = fadd fast float %3419, %3416
  %3421 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3291)  ; FMax(a,b)
  %3422 = call float @dx.op.dot3.f32(i32 55, float %3314, float %3317, float %3320, float %3314, float %3317, float %3320)  ; Dot3(ax,ay,az,bx,by,bz)
  %3423 = fcmp fast oeq float %3422, 0.000000e+00
  %3424 = fcmp fast oeq float %3421, 0.000000e+00
  %3425 = or i1 %3424, %3423
  br i1 %3425, label %3455, label %3426

; <label>:3426                                    ; preds = %3405
  %3427 = fsub fast float -0.000000e+00, %3320
  %3428 = fsub fast float -0.000000e+00, %3314
  %3429 = call float @dx.op.unary.f32(i32 24, float %3422)  ; Sqrt(value)
  %3430 = fdiv fast float %3429, %3421
  %3431 = fcmp fast ogt float %3430, 0x3FFB6F8900000000
  %3432 = select i1 %3431, float 0x3FFB6F8900000000, float %3430
  %3433 = fmul fast float %3432, 0x3FE8A23460000000
  %3434 = call float @dx.op.unary.f32(i32 7, float %3433)  ; Saturate(value)
  %3435 = call float @dx.op.binary.f32(i32 35, float %3432, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3436 = fmul fast float %3434, %3421
  %3437 = fmul fast float %3435, 0x3FF279A740000000
  %3438 = fadd fast float %3437, -1.000000e+00
  %3439 = call float @dx.op.dot3.f32(i32 55, float %3427, float %3428, float %3317, float %3427, float %3428, float %3317)  ; Dot3(ax,ay,az,bx,by,bz)
  %3440 = call float @dx.op.unary.f32(i32 25, float %3439)  ; Rsqrt(value)
  %3441 = fmul fast float %3440, %3427
  %3442 = fmul fast float %3440, %3428
  %3443 = fmul fast float %3440, %3317
  %3444 = fmul fast float %3438, %3438
  %3445 = fsub fast float 1.000000e+00, %3444
  %3446 = fmul fast float %3435, 0x40005F8BE0000000
  %3447 = fsub fast float 0x400C5BF8A0000000, %3446
  %3448 = fdiv fast float %3436, %3447
  %3449 = fmul fast float %3448, 0x3FEE31C3C0000000
  %3450 = fmul fast float %3449, %3445
  %3451 = fmul fast float %3435, 0x3FDACB7480000000
  %3452 = fadd fast float %3451, 0xBFD7347680000000
  %3453 = fmul fast float %3452, %3448
  %3454 = fmul fast float %3453, %3445
  br label %3455

; <label>:3455                                    ; preds = %3426, %3405
  %3456 = phi float [ %3441, %3426 ], [ 0.000000e+00, %3405 ]
  %3457 = phi float [ %3442, %3426 ], [ 0.000000e+00, %3405 ]
  %3458 = phi float [ %3443, %3426 ], [ 0.000000e+00, %3405 ]
  %3459 = phi float [ %3450, %3426 ], [ 0.000000e+00, %3405 ]
  %3460 = phi float [ %3454, %3426 ], [ 0.000000e+00, %3405 ]
  %3461 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3458, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %3462 = fmul fast float %3461, %3461
  %3463 = fmul fast float %3462, 0x3FEE471020000000
  %3464 = fadd fast float %3463, 0xBFD42F6020000000
  %3465 = fmul fast float %3421, 0x3FD20DD760000000
  %3466 = fmul fast float %3464, %3460
  %3467 = fmul fast float %3459, 0x3FDF454380000000
  %3468 = fmul fast float %3467, %3461
  %3469 = fadd fast float %3468, %3465
  %3470 = fadd fast float %3469, %3466
  %3471 = call float @dx.op.binary.f32(i32 35, float %3370, float 0.000000e+00)  ; FMax(a,b)
  %3472 = call float @dx.op.binary.f32(i32 35, float %3420, float 0.000000e+00)  ; FMax(a,b)
  %3473 = call float @dx.op.binary.f32(i32 35, float %3470, float 0.000000e+00)  ; FMax(a,b)
  %3474 = fsub fast float %2690, %3471
  %3475 = fsub fast float %2691, %3472
  %3476 = fsub fast float %2692, %3473
  %3477 = fmul fast float %3474, %2499
  %3478 = fmul fast float %3475, %2499
  %3479 = fmul fast float %3476, %2499
  %3480 = fadd fast float %3477, %3471
  %3481 = fadd fast float %3478, %3472
  %3482 = fadd fast float %3479, %3473
  %3483 = fmul fast float %3293, %2499
  %3484 = fsub fast float %3293, %3483
  br label %3485

; <label>:3485                                    ; preds = %3455, %2689
  %3486 = phi float [ %3484, %3455 ], [ 0.000000e+00, %2689 ]
  %3487 = phi float [ %3480, %3455 ], [ %2690, %2689 ]
  %3488 = phi float [ %3481, %3455 ], [ %2691, %2689 ]
  %3489 = phi float [ %3482, %3455 ], [ %2692, %2689 ]
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = call float @dx.op.binary.f32(i32 36, float %2292, float %3491)  ; FMin(a,b)
  %3493 = fmul fast float %3492, %2478
  %3494 = fsub fast float 1.000000e+00, %3493
  %3495 = bitcast float %3494 to i32
  %3496 = sub nsw i32 2129859010, %3495
  %3497 = bitcast i32 %3496 to float
  %3498 = call float @dx.op.binary.f32(i32 36, float %2293, float %3491)  ; FMin(a,b)
  %3499 = fmul fast float %3498, %2478
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = bitcast float %3500 to i32
  %3502 = sub nsw i32 2129859010, %3501
  %3503 = bitcast i32 %3502 to float
  %3504 = call float @dx.op.binary.f32(i32 36, float %2294, float %3491)  ; FMin(a,b)
  %3505 = fmul fast float %3504, %2478
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = bitcast float %3506 to i32
  %3508 = sub nsw i32 2129859010, %3507
  %3509 = bitcast i32 %3508 to float
  %3510 = fmul fast float %3487, %2477
  %3511 = fmul fast float %3510, %3497
  %3512 = fmul fast float %3488, %2477
  %3513 = fmul fast float %3512, %3503
  %3514 = fmul fast float %3489, %2477
  %3515 = fmul fast float %3514, %3509
  %3516 = extractvalue %dx.types.CBufRet.i32 %2496, 2
  %3517 = and i32 %3516, 1
  %3518 = icmp ne i32 %3517, 0
  %3519 = fsub fast float 1.000000e+00, %2499
  %3520 = select i1 %3518, float %2499, float %3511
  %3521 = select i1 %3518, float %3519, float %3513
  %3522 = select i1 %3518, float 0.000000e+00, float %3515
  %3523 = call float @dx.op.dot3.f32(i32 55, float %3520, float %3521, float %3522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3524 = select i1 %2452, float 0.000000e+00, float %3520
  %3525 = select i1 %2452, float %3523, float %3521
  %3526 = select i1 %2452, float 0.000000e+00, float %3522
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = bitcast float %3528 to i32
  %3530 = lshr i32 %3529, 8
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = fptoui float %3532 to i32
  %3534 = icmp eq i32 %3533, 23
  br i1 %3534, label %3535, label %3558

; <label>:3535                                    ; preds = %3485
  %3536 = fmul fast float %3509, %2477
  %3537 = fmul fast float %3503, %2477
  %3538 = fmul fast float %3497, %2477
  %3539 = fadd fast float %3538, 1.000000e+00
  %3540 = fadd fast float %3537, 1.000000e+00
  %3541 = fadd fast float %3536, 1.000000e+00
  %3542 = fmul fast float %3539, 5.000000e-01
  %3543 = fmul fast float %3540, 5.000000e-01
  %3544 = fmul fast float %3541, 5.000000e-01
  %3545 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  %3546 = call float @dx.op.unary.f32(i32 7, float %3543)  ; Saturate(value)
  %3547 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3548 = fmul fast float %3545, 1.023000e+03
  %3549 = fmul fast float %3546, 1.023000e+03
  %3550 = fmul fast float %3547, 1.023000e+03
  %3551 = fptoui float %3548 to i32
  %3552 = fptoui float %3549 to i32
  %3553 = fptoui float %3550 to i32
  %3554 = shl i32 %3552, 10
  %3555 = or i32 %3554, %3551
  %3556 = shl i32 %3553, 20
  %3557 = or i32 %3555, %3556
  br label %3558

; <label>:3558                                    ; preds = %3535, %3485
  %3559 = phi i32 [ %3557, %3535 ], [ 0, %3485 ]
  %3560 = fsub fast float 1.000000e+00, %2457
  %3561 = fmul fast float %3560, %2341
  %3562 = fadd fast float %3561, %2457
  %3563 = call float @dx.op.binary.f32(i32 35, float %2368, float %3562)  ; FMax(a,b)
  %3564 = call float @dx.op.binary.f32(i32 35, float %2367, float %3563)  ; FMax(a,b)
  %3565 = fsub fast float 1.000000e+00, %3564
  %3566 = extractvalue %dx.types.CBufRet.f32 %2467, 2
  %3567 = fcmp fast olt float %3566, 0.000000e+00
  br i1 %3567, label %3568, label %4279

; <label>:3568                                    ; preds = %3558
  %3569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3570 = extractvalue %dx.types.CBufRet.f32 %3569, 2
  %3571 = extractvalue %dx.types.CBufRet.f32 %3569, 3
  %3572 = fmul fast float %3570, %98
  %3573 = fmul fast float %3571, %99
  %3574 = fptoui float %3572 to i32
  %3575 = fptoui float %3573 to i32
  %3576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.CBufRet.f32 %3576, 2
  %3579 = extractvalue %dx.types.CBufRet.f32 %3576, 3
  %3580 = fadd fast float %87, -4.000000e+00
  %3581 = call float @dx.op.binary.f32(i32 35, float %3580, float 0.000000e+00)  ; FMax(a,b)
  %3582 = fadd fast float %3581, %3577
  %3583 = fmul fast float %3582, %3578
  %3584 = call float @dx.op.unary.f32(i32 23, float %3583)  ; Log(value)
  %3585 = fmul fast float %3584, %3579
  %3586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.f32 %3586, 2
  %3588 = fmul fast float %3585, %3587
  %3589 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3591 = extractvalue %dx.types.CBufRet.i32 %3590, 1
  %3592 = add i32 %3591, -1
  %3593 = uitofp i32 %3591 to float
  %3594 = fmul fast float %3593, %3589
  %3595 = fptoui float %3594 to i32
  %3596 = call i32 @dx.op.binary.i32(i32 40, i32 %3595, i32 %3592)  ; UMin(a,b)
  %3597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.i32 %3597, 2
  %3599 = extractvalue %dx.types.CBufRet.i32 %3597, 3
  %3600 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3575, i32 %3598, i32 %3574)  ; UMad(a,b,c)
  %3601 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3596, i32 %3599, i32 %3600)  ; UMad(a,b,c)
  %3602 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3603 = fptoui float %3602 to i32
  %3604 = lshr i32 %3603, 5
  %3605 = call i32 @dx.op.binary.i32(i32 40, i32 %3604, i32 8191)  ; UMin(a,b)
  %3606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3607 = extractvalue %dx.types.CBufRet.i32 %3606, 2
  %3608 = add nsw i32 %3607, -1
  %3609 = call i32 @dx.op.binary.i32(i32 37, i32 %3608, i32 0)  ; IMax(a,b)
  %3610 = shl i32 %3605, 2
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = lshr i32 %3612, 16
  %3614 = and i32 %3612, 65535
  %3615 = lshr i32 %3612, 21
  %3616 = lshr i32 %3614, 5
  %3617 = call i32 @dx.op.binary.i32(i32 40, i32 %3616, i32 %3609)  ; UMin(a,b)
  %3618 = icmp ugt i32 %3615, %3617
  br i1 %3618, label %4204, label %3619

; <label>:3619                                    ; preds = %3568
  br label %3620

; <label>:3620                                    ; preds = %4186, %3619
  %3621 = phi i32 [ %4187, %4186 ], [ %2254, %3619 ]
  %3622 = phi i32 [ %4188, %4186 ], [ %3559, %3619 ]
  %3623 = phi float [ %4189, %4186 ], [ 0.000000e+00, %3619 ]
  %3624 = phi float [ %4190, %4186 ], [ 0.000000e+00, %3619 ]
  %3625 = phi float [ %4191, %4186 ], [ 0.000000e+00, %3619 ]
  %3626 = phi float [ %4192, %4186 ], [ 0.000000e+00, %3619 ]
  %3627 = phi float [ %4193, %4186 ], [ 0.000000e+00, %3619 ]
  %3628 = phi float [ %4194, %4186 ], [ 0.000000e+00, %3619 ]
  %3629 = phi i32 [ %4195, %4186 ], [ 0, %3619 ]
  %3630 = phi float [ %4196, %4186 ], [ 0.000000e+00, %3619 ]
  %3631 = phi float [ %4197, %4186 ], [ 0.000000e+00, %3619 ]
  %3632 = phi float [ %4198, %4186 ], [ 0.000000e+00, %3619 ]
  %3633 = phi i32 [ %4199, %4186 ], [ 1, %3619 ]
  %3634 = phi float [ %4200, %4186 ], [ 1.000000e+00, %3619 ]
  %3635 = phi i32 [ %4201, %4186 ], [ %3615, %3619 ]
  %3636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3637 = extractvalue %dx.types.CBufRet.i32 %3636, 2
  %3638 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3601, i32 %3637, i32 %3635)  ; UMad(a,b,c)
  %3639 = shl i32 %3638, 2
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = shl i32 %3635, 5
  %3643 = sub nsw i32 %3613, %3642
  %3644 = call i32 @dx.op.binary.i32(i32 37, i32 %3643, i32 0)  ; IMax(a,b)
  %3645 = call i32 @dx.op.binary.i32(i32 38, i32 %3644, i32 31)  ; IMin(a,b)
  %3646 = sub nsw i32 1, %3613
  %3647 = add nsw i32 %3646, %3614
  %3648 = call i32 @dx.op.binary.i32(i32 37, i32 %3647, i32 0)  ; IMax(a,b)
  %3649 = call i32 @dx.op.binary.i32(i32 38, i32 %3648, i32 32)  ; IMin(a,b)
  %3650 = and i32 %3649, 31
  %3651 = shl i32 -1, %3650
  %3652 = xor i32 %3651, -1
  %3653 = and i32 %3645, 31
  %3654 = shl i32 %3652, %3653
  %3655 = icmp eq i32 %3649, 32
  %3656 = select i1 %3655, i32 -1, i32 %3654
  %3657 = and i32 %3656, %3641
  %3658 = icmp eq i32 %3657, 0
  br i1 %3658, label %4186, label %3659

; <label>:3659                                    ; preds = %3620
  br label %3660

; <label>:3660                                    ; preds = %3797, %3659
  %3661 = phi i32 [ %3798, %3797 ], [ %3621, %3659 ]
  %3662 = phi i32 [ %3799, %3797 ], [ %3622, %3659 ]
  %3663 = phi float [ %3800, %3797 ], [ %3623, %3659 ]
  %3664 = phi float [ %3801, %3797 ], [ %3624, %3659 ]
  %3665 = phi float [ %3802, %3797 ], [ %3625, %3659 ]
  %3666 = phi float [ %3803, %3797 ], [ %3626, %3659 ]
  %3667 = phi float [ %3804, %3797 ], [ %3627, %3659 ]
  %3668 = phi float [ %3805, %3797 ], [ %3628, %3659 ]
  %3669 = phi i32 [ %3806, %3797 ], [ %3629, %3659 ]
  %3670 = phi float [ %3807, %3797 ], [ %3630, %3659 ]
  %3671 = phi float [ %3808, %3797 ], [ %3631, %3659 ]
  %3672 = phi float [ %3809, %3797 ], [ %3632, %3659 ]
  %3673 = phi i32 [ %3810, %3797 ], [ %3633, %3659 ]
  %3674 = phi float [ %3811, %3797 ], [ %3634, %3659 ]
  %3675 = phi i32 [ %3680, %3797 ], [ %3657, %3659 ]
  %3676 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3675)  ; FirstbitLo(value)
  %3677 = add i32 %3676, %3642
  %3678 = and i32 %3676, 31
  %3679 = shl i32 1, %3678
  %3680 = xor i32 %3679, %3675
  %3681 = mul i32 %3677, 72
  %3682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3681, i32 undef)  ; BufferLoad(srv,index,wot)
  %3683 = extractvalue %dx.types.ResRet.f32 %3682, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3682, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3682, 2
  %3686 = add i32 %3681, 12
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = add i32 %3681, 16
  %3690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3689, i32 undef)  ; BufferLoad(srv,index,wot)
  %3691 = extractvalue %dx.types.ResRet.f32 %3690, 0
  %3692 = extractvalue %dx.types.ResRet.f32 %3690, 1
  %3693 = extractvalue %dx.types.ResRet.f32 %3690, 2
  %3694 = add i32 %3681, 28
  %3695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = add i32 %3681, 32
  %3698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3697, i32 undef)  ; BufferLoad(srv,index,wot)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = extractvalue %dx.types.ResRet.f32 %3698, 1
  %3701 = extractvalue %dx.types.ResRet.f32 %3698, 2
  %3702 = extractvalue %dx.types.ResRet.f32 %3698, 3
  %3703 = add i32 %3681, 48
  %3704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3703, i32 undef)  ; BufferLoad(srv,index,wot)
  %3705 = extractvalue %dx.types.ResRet.f32 %3704, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3704, 1
  %3707 = add i32 %3681, 56
  %3708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3707, i32 undef)  ; BufferLoad(srv,index,wot)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = add i32 %3681, 64
  %3712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = extractvalue %dx.types.ResRet.f32 %3712, 1
  %3715 = mul i32 %3677, 60
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = add i32 %3715, 12
  %3721 = add i32 %3715, 48
  %3722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3721, i32 undef)  ; BufferLoad(srv,index,wot)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = extractvalue %dx.types.ResRet.f32 %3722, 1
  %3725 = extractvalue %dx.types.ResRet.f32 %3722, 2
  %3726 = and i32 %3688, 32767
  %3727 = bitcast float %3683 to i32
  %3728 = bitcast float %3684 to i32
  %3729 = and i32 %3688, 32768
  %3730 = icmp ne i32 %3729, 0
  %3731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3732 = extractvalue %dx.types.CBufRet.f32 %3731, 3
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 1
  %3736 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3737 = fsub fast float %3717, %3734
  %3738 = fsub fast float %3718, %3735
  %3739 = fsub fast float %3719, %3736
  %3740 = fsub fast float %153, %3737
  %3741 = fsub fast float %154, %3738
  %3742 = fsub fast float %155, %3739
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = extractvalue %dx.types.ResRet.f32 %3743, 2
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %3744, float %3745, float %3746)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = add i32 %3715, 24
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = extractvalue %dx.types.ResRet.f32 %3749, 1
  %3752 = extractvalue %dx.types.ResRet.f32 %3749, 2
  %3753 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %3750, float %3751, float %3752)  ; Dot3(ax,ay,az,bx,by,bz)
  %3754 = add i32 %3715, 36
  %3755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3754, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.f32 %3755, 0
  %3757 = extractvalue %dx.types.ResRet.f32 %3755, 1
  %3758 = extractvalue %dx.types.ResRet.f32 %3755, 2
  %3759 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %3756, float %3757, float %3758)  ; Dot3(ax,ay,az,bx,by,bz)
  %3760 = call float @dx.op.unary.f32(i32 6, float %3747)  ; FAbs(value)
  %3761 = call float @dx.op.unary.f32(i32 6, float %3753)  ; FAbs(value)
  %3762 = call float @dx.op.unary.f32(i32 6, float %3759)  ; FAbs(value)
  %3763 = fsub fast float %3723, %3760
  %3764 = fsub fast float %3724, %3761
  %3765 = fsub fast float %3725, %3762
  %3766 = fmul fast float %3763, %3691
  %3767 = fmul fast float %3764, %3692
  %3768 = fmul fast float %3765, %3693
  %3769 = call float @dx.op.binary.f32(i32 36, float %3767, float %3768)  ; FMin(a,b)
  %3770 = call float @dx.op.binary.f32(i32 36, float %3766, float %3769)  ; FMin(a,b)
  %3771 = call float @dx.op.unary.f32(i32 7, float %3770)  ; Saturate(value)
  %3772 = call float @dx.op.binary.f32(i32 36, float %3674, float %3771)  ; FMin(a,b)
  %3773 = uitofp i1 %3730 to float
  %3774 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %3775 = fsub fast float %3774, %3773
  %3776 = fmul fast float %3772, %3775
  %3777 = lshr i32 %3661, 8
  %3778 = and i32 %3777, 255
  %3779 = uitofp i32 %3778 to float
  %3780 = fptoui float %3779 to i32
  %3781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3782 = extractvalue %dx.types.CBufRet.f32 %3781, 1
  %3783 = bitcast float %3782 to i32
  %3784 = lshr i32 %3783, 24
  %3785 = uitofp i32 %3784 to float
  %3786 = fptoui float %3785 to i32
  %3787 = icmp ne i32 %3786, 1
  %3788 = zext i1 %3787 to i32
  %3789 = add i32 %3788, %3780
  %3790 = uitofp i32 %3789 to float
  %3791 = fptoui float %3790 to i32
  %3792 = shl i32 %3791, 8
  %3793 = and i32 %3792, 65280
  %3794 = and i32 %3661, -65281
  %3795 = or i32 %3793, %3794
  %3796 = fcmp fast ogt float %3776, 0.000000e+00
  br i1 %3796, label %3813, label %3797

; <label>:3797                                    ; preds = %4169, %4038, %3660
  %3798 = phi i32 [ %4116, %4038 ], [ %3795, %3660 ], [ %4116, %4169 ]
  %3799 = phi i32 [ %3662, %4038 ], [ %3662, %3660 ], [ %4184, %4169 ]
  %3800 = phi float [ %4102, %4038 ], [ %3663, %3660 ], [ %4102, %4169 ]
  %3801 = phi float [ %4103, %4038 ], [ %3664, %3660 ], [ %4103, %4169 ]
  %3802 = phi float [ %4104, %4038 ], [ %3665, %3660 ], [ %4104, %4169 ]
  %3803 = phi float [ %4163, %4038 ], [ %3666, %3660 ], [ %4163, %4169 ]
  %3804 = phi float [ %4164, %4038 ], [ %3667, %3660 ], [ %4164, %4169 ]
  %3805 = phi float [ %4165, %4038 ], [ %3668, %3660 ], [ %4165, %4169 ]
  %3806 = phi i32 [ %4167, %4038 ], [ %3669, %3660 ], [ %4167, %4169 ]
  %3807 = phi float [ %4120, %4038 ], [ %3670, %3660 ], [ %4120, %4169 ]
  %3808 = phi float [ %4121, %4038 ], [ %3671, %3660 ], [ %4121, %4169 ]
  %3809 = phi float [ %4122, %4038 ], [ %3672, %3660 ], [ %4122, %4169 ]
  %3810 = phi i32 [ 0, %4038 ], [ %3673, %3660 ], [ 0, %4169 ]
  %3811 = phi float [ %4105, %4038 ], [ %3674, %3660 ], [ %4105, %4169 ]
  %3812 = icmp eq i32 %3675, %3679
  br i1 %3812, label %4185, label %3660

; <label>:3813                                    ; preds = %3660
  %3814 = extractvalue %dx.types.CBufRet.f32 %3781, 0
  %3815 = bitcast float %3814 to i32
  %3816 = lshr i32 %3815, 8
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = fptoui float %3818 to i32
  %3820 = and i32 %3819, 2
  %3821 = icmp eq i32 %3820, 0
  br i1 %3821, label %3828, label %3822

; <label>:3822                                    ; preds = %3813
  %3823 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call float @dx.op.unary.f32(i32 25, float %3823)  ; Rsqrt(value)
  %3825 = fmul fast float %3824, %153
  %3826 = fmul fast float %3824, %154
  %3827 = fmul fast float %3824, %155
  br label %3828

; <label>:3828                                    ; preds = %3822, %3813
  %3829 = phi float [ %3825, %3822 ], [ %2280, %3813 ]
  %3830 = phi float [ %3826, %3822 ], [ %2281, %3813 ]
  %3831 = phi float [ %3827, %3822 ], [ %2282, %3813 ]
  %3832 = icmp ne i32 %3727, -1
  %3833 = fcmp oeq float %3732, 0.000000e+00
  %3834 = and i1 %3833, %3832
  br i1 %3834, label %3835, label %3959

; <label>:3835                                    ; preds = %3828
  %3836 = fsub fast float -0.000000e+00, %3744
  %3837 = fsub fast float -0.000000e+00, %3745
  %3838 = fsub fast float -0.000000e+00, %3746
  %3839 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3836, float %3837, float %3838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3840 = fsub fast float -0.000000e+00, %3839
  %3841 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %3836, float %3837, float %3838)  ; Dot3(ax,ay,az,bx,by,bz)
  %3842 = fadd fast float %3841, %3706
  %3843 = fadd fast float %3705, %3841
  %3844 = fsub fast float -0.000000e+00, %3843
  %3845 = fcmp ogt float %3839, -0.000000e+00
  %3846 = select i1 %3845, float %3844, float %3842
  %3847 = call float @dx.op.unary.f32(i32 6, float %3840)  ; FAbs(value)
  %3848 = fdiv fast float 1.000000e+00, %3847
  %3849 = fmul fast float %3846, %3848
  %3850 = call float @dx.op.binary.f32(i32 35, float %3849, float 0.000000e+00)  ; FMax(a,b)
  %3851 = fsub fast float -0.000000e+00, %3750
  %3852 = fsub fast float -0.000000e+00, %3751
  %3853 = fsub fast float -0.000000e+00, %3752
  %3854 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3851, float %3852, float %3853)  ; Dot3(ax,ay,az,bx,by,bz)
  %3855 = fsub fast float -0.000000e+00, %3854
  %3856 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %3851, float %3852, float %3853)  ; Dot3(ax,ay,az,bx,by,bz)
  %3857 = fadd fast float %3856, %3710
  %3858 = fadd fast float %3709, %3856
  %3859 = fsub fast float -0.000000e+00, %3858
  %3860 = fcmp ogt float %3854, -0.000000e+00
  %3861 = select i1 %3860, float %3859, float %3857
  %3862 = call float @dx.op.unary.f32(i32 6, float %3855)  ; FAbs(value)
  %3863 = fdiv fast float 1.000000e+00, %3862
  %3864 = fmul fast float %3861, %3863
  %3865 = call float @dx.op.binary.f32(i32 35, float %3864, float 0.000000e+00)  ; FMax(a,b)
  %3866 = fsub fast float -0.000000e+00, %3756
  %3867 = fsub fast float -0.000000e+00, %3757
  %3868 = fsub fast float -0.000000e+00, %3758
  %3869 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3870 = fsub fast float -0.000000e+00, %3869
  %3871 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3741, float %3742, float %3866, float %3867, float %3868)  ; Dot3(ax,ay,az,bx,by,bz)
  %3872 = fadd fast float %3871, %3714
  %3873 = fadd fast float %3713, %3871
  %3874 = fsub fast float -0.000000e+00, %3873
  %3875 = fcmp ogt float %3869, -0.000000e+00
  %3876 = select i1 %3875, float %3874, float %3872
  %3877 = call float @dx.op.unary.f32(i32 6, float %3870)  ; FAbs(value)
  %3878 = fdiv fast float 1.000000e+00, %3877
  %3879 = fmul fast float %3876, %3878
  %3880 = call float @dx.op.binary.f32(i32 35, float %3879, float 0.000000e+00)  ; FMax(a,b)
  %3881 = call float @dx.op.binary.f32(i32 36, float %3865, float %3880)  ; FMin(a,b)
  %3882 = call float @dx.op.binary.f32(i32 36, float %3850, float %3881)  ; FMin(a,b)
  %3883 = fmul fast float %3882, %3829
  %3884 = fmul fast float %3882, %3830
  %3885 = fmul fast float %3882, %3831
  %3886 = fadd fast float %3883, %153
  %3887 = fadd fast float %3884, %154
  %3888 = fadd fast float %3885, %155
  %3889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3890 = extractvalue %dx.types.CBufRet.f32 %3889, 0
  %3891 = extractvalue %dx.types.CBufRet.f32 %3889, 1
  %3892 = extractvalue %dx.types.CBufRet.f32 %3889, 2
  %3893 = fadd fast float %3886, %3890
  %3894 = fadd fast float %3887, %3891
  %3895 = fadd fast float %3888, %3892
  %3896 = fcmp fast olt float %3850, %3865
  %3897 = fcmp fast olt float %3850, %3880
  %3898 = and i1 %3896, %3897
  br i1 %3898, label %3902, label %3899

; <label>:3899                                    ; preds = %3835
  %3900 = fcmp fast olt float %3865, %3880
  br i1 %3900, label %3901, label %3902

; <label>:3901                                    ; preds = %3899
  br label %3902

; <label>:3902                                    ; preds = %3901, %3899, %3835
  %3903 = phi float [ 0.000000e+00, %3901 ], [ 0.000000e+00, %3899 ], [ 1.000000e+00, %3835 ]
  %3904 = phi float [ 1.000000e+00, %3901 ], [ 0.000000e+00, %3899 ], [ 0.000000e+00, %3835 ]
  %3905 = phi float [ 0.000000e+00, %3901 ], [ 1.000000e+00, %3899 ], [ 0.000000e+00, %3835 ]
  %3906 = phi float [ %3750, %3901 ], [ %3756, %3899 ], [ %3744, %3835 ]
  %3907 = phi float [ %3751, %3901 ], [ %3757, %3899 ], [ %3745, %3835 ]
  %3908 = phi float [ %3752, %3901 ], [ %3758, %3899 ], [ %3746, %3835 ]
  %3909 = call float @dx.op.unary.f32(i32 6, float %3908)  ; FAbs(value)
  %3910 = fcmp fast olt float %3909, 0x3FE276C8C0000000
  %3911 = select i1 %3910, float 0.000000e+00, float 1.000000e+00
  %3912 = select i1 %3910, float 1.000000e+00, float 0.000000e+00
  %3913 = fmul fast float %3912, %3907
  %3914 = fmul fast float %3911, %3908
  %3915 = fsub fast float %3913, %3914
  %3916 = fmul fast float %3906, %3912
  %3917 = fsub fast float -0.000000e+00, %3916
  %3918 = fmul fast float %3911, %3906
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3917, float %3918, float %3915, float %3917, float %3918)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call float @dx.op.unary.f32(i32 25, float %3919)  ; Rsqrt(value)
  %3921 = fmul fast float %3915, %3920
  %3922 = fmul fast float %3920, %3917
  %3923 = fmul fast float %3918, %3920
  %3924 = fmul fast float %3923, %3907
  %3925 = fmul fast float %3922, %3908
  %3926 = fsub fast float %3924, %3925
  %3927 = fmul fast float %3921, %3908
  %3928 = fmul fast float %3923, %3906
  %3929 = fsub fast float %3927, %3928
  %3930 = fmul fast float %3922, %3906
  %3931 = fmul fast float %3921, %3907
  %3932 = fsub fast float %3930, %3931
  %3933 = call float @dx.op.dot3.f32(i32 55, float %3926, float %3929, float %3932, float %3926, float %3929, float %3932)  ; Dot3(ax,ay,az,bx,by,bz)
  %3934 = call float @dx.op.unary.f32(i32 25, float %3933)  ; Rsqrt(value)
  %3935 = fmul fast float %3926, %3934
  %3936 = fmul fast float %3929, %3934
  %3937 = fmul fast float %3932, %3934
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %3921, float %3922, float %3923)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %3935, float %3936, float %3937)  ; Dot3(ax,ay,az,bx,by,bz)
  %3940 = fmul fast float %3938, 0x3FA99999A0000000
  %3941 = fmul fast float %3939, 0x3FA99999A0000000
  %3942 = call float @dx.op.unary.f32(i32 22, float %3940)  ; Frc(value)
  %3943 = call float @dx.op.unary.f32(i32 22, float %3941)  ; Frc(value)
  %3944 = fadd fast float %3942, 0xBFB99999A0000000
  %3945 = fadd fast float %3943, 0xBFB99999A0000000
  %3946 = call float @dx.op.unary.f32(i32 6, float %3944)  ; FAbs(value)
  %3947 = call float @dx.op.unary.f32(i32 6, float %3945)  ; FAbs(value)
  %3948 = fmul fast float %3946, 1.000000e+01
  %3949 = fmul fast float %3947, 1.000000e+01
  %3950 = call float @dx.op.binary.f32(i32 36, float %3948, float %3949)  ; FMin(a,b)
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fsub fast float 1.000000e+00, %3951
  %3953 = fmul fast float %3952, %3903
  %3954 = fmul fast float %3952, %3904
  %3955 = fmul fast float %3952, %3905
  %3956 = fsub fast float %3886, %3683
  %3957 = fsub fast float %3887, %3684
  %3958 = fsub fast float %3888, %3685
  br label %3966

; <label>:3959                                    ; preds = %3828
  %3960 = fmul fast float %3829, 8.096000e+03
  %3961 = fmul fast float %3830, 8.096000e+03
  %3962 = fmul fast float %3831, 8.096000e+03
  %3963 = fadd fast float %3960, %153
  %3964 = fadd fast float %3961, %154
  %3965 = fadd fast float %3962, %155
  br label %3966

; <label>:3966                                    ; preds = %3959, %3902
  %3967 = phi float [ %3829, %3959 ], [ %3956, %3902 ]
  %3968 = phi float [ %3830, %3959 ], [ %3957, %3902 ]
  %3969 = phi float [ %3831, %3959 ], [ %3958, %3902 ]
  %3970 = phi float [ %3963, %3959 ], [ %3886, %3902 ]
  %3971 = phi float [ %3964, %3959 ], [ %3887, %3902 ]
  %3972 = phi float [ %3965, %3959 ], [ %3888, %3902 ]
  %3973 = phi float [ 0.000000e+00, %3959 ], [ %3953, %3902 ]
  %3974 = phi float [ 0.000000e+00, %3959 ], [ %3954, %3902 ]
  %3975 = phi float [ 0.000000e+00, %3959 ], [ %3955, %3902 ]
  %3976 = fcmp fast olt float %3702, 1.000000e+00
  br i1 %3976, label %3977, label %4008, !dx.controlflow.hints !129

; <label>:3977                                    ; preds = %3966
  %3978 = fmul fast float %3969, %3700
  %3979 = fmul fast float %3968, %3701
  %3980 = fsub fast float %3978, %3979
  %3981 = fmul fast float %3967, %3701
  %3982 = fmul fast float %3969, %3699
  %3983 = fsub fast float %3981, %3982
  %3984 = fmul fast float %3968, %3699
  %3985 = fmul fast float %3967, %3700
  %3986 = fsub fast float %3984, %3985
  %3987 = fmul fast float %3980, 2.000000e+00
  %3988 = fmul fast float %3983, 2.000000e+00
  %3989 = fmul fast float %3986, 2.000000e+00
  %3990 = fmul fast float %3987, %3702
  %3991 = fmul fast float %3988, %3702
  %3992 = fmul fast float %3989, %3702
  %3993 = fmul fast float %3989, %3700
  %3994 = fmul fast float %3988, %3701
  %3995 = fmul fast float %3987, %3701
  %3996 = fmul fast float %3989, %3699
  %3997 = fmul fast float %3988, %3699
  %3998 = fmul fast float %3987, %3700
  %3999 = fadd fast float %3993, %3967
  %4000 = fadd fast float %3999, %3990
  %4001 = fsub fast float %4000, %3994
  %4002 = fsub fast float %3968, %3996
  %4003 = fadd fast float %4002, %3991
  %4004 = fadd fast float %4003, %3995
  %4005 = fadd fast float %3992, %3969
  %4006 = fsub fast float %4005, %3998
  %4007 = fadd fast float %4006, %3997
  br label %4008

; <label>:4008                                    ; preds = %3977, %3966
  %4009 = phi float [ %4001, %3977 ], [ %3967, %3966 ]
  %4010 = phi float [ %4004, %3977 ], [ %3968, %3966 ]
  %4011 = phi float [ %4007, %3977 ], [ %3969, %3966 ]
  br i1 %3834, label %4012, label %4035

; <label>:4012                                    ; preds = %4008
  %4013 = fsub fast float %3970, %153
  %4014 = fsub fast float %3971, %154
  %4015 = fsub fast float %3972, %155
  %4016 = fsub fast float %3970, %3683
  %4017 = fsub fast float %3971, %3684
  %4018 = fsub fast float %3972, %3685
  %4019 = call float @dx.op.dot3.f32(i32 55, float %4013, float %4014, float %4015, float %4013, float %4014, float %4015)  ; Dot3(ax,ay,az,bx,by,bz)
  %4020 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4018, float %4016, float %4017, float %4018)  ; Dot3(ax,ay,az,bx,by,bz)
  %4021 = fadd fast float %4020, 0x3EE4F8B580000000
  %4022 = fdiv fast float %4019, %4021
  %4023 = bitcast float %4022 to i32
  %4024 = ashr i32 %4023, 1
  %4025 = add nsw i32 %4024, 532487669
  %4026 = bitcast i32 %4025 to float
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = fmul fast float %4027, 0x4009981AE0000000
  %4029 = fsub fast float 0x40111BBD80000000, %4028
  %4030 = fmul fast float %4029, %4027
  %4031 = fadd fast float %4030, 0xC0009F6020000000
  %4032 = fmul fast float %4031, %4027
  %4033 = fadd fast float %4032, 1.000000e+00
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  br label %4038

; <label>:4035                                    ; preds = %4008
  %4036 = icmp ne i32 %3728, -1
  %4037 = zext i1 %4036 to i32
  br label %4038

; <label>:4038                                    ; preds = %4035, %4012
  %4039 = phi float [ 0.000000e+00, %4035 ], [ %4034, %4012 ]
  %4040 = phi i32 [ %4037, %4035 ], [ 0, %4012 ]
  %4041 = fmul float %4039, 5.000000e+00
  %4042 = fsub float 5.000000e+00, %4041
  %4043 = icmp ne i32 %4040, 0
  %4044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4044, 3
  %4046 = fadd fast float %4045, %4042
  %4047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4046)  ; FMax(a,b)
  %4048 = call float @dx.op.unary.f32(i32 6, float %4009)  ; FAbs(value)
  %4049 = call float @dx.op.unary.f32(i32 6, float %4010)  ; FAbs(value)
  %4050 = fadd fast float %4049, %4048
  %4051 = call float @dx.op.unary.f32(i32 6, float %4011)  ; FAbs(value)
  %4052 = fadd fast float %4050, %4051
  %4053 = fcmp fast oeq float %4052, 0.000000e+00
  %4054 = fdiv fast float 1.000000e+00, %4052
  %4055 = select i1 %4053, float 1.000000e+00, float %4054
  %4056 = fmul fast float %4055, %4009
  %4057 = fmul fast float %4055, %4010
  %4058 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4059 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4060 = fsub fast float 1.000000e+00, %4058
  %4061 = fsub fast float 1.000000e+00, %4059
  %4062 = fcmp fast oge float %4056, 0.000000e+00
  %4063 = fcmp fast oge float %4057, 0.000000e+00
  %4064 = select i1 %4062, float 1.000000e+00, float -1.000000e+00
  %4065 = select i1 %4063, float 1.000000e+00, float -1.000000e+00
  %4066 = fcmp fast ole float %4011, 0.000000e+00
  %4067 = fmul fast float %4064, %4060
  %4068 = fmul fast float %4065, %4061
  %4069 = select i1 %4066, float %4067, float %4056
  %4070 = select i1 %4066, float %4068, float %4057
  %4071 = fmul fast float %4069, 5.000000e-01
  %4072 = fmul fast float %4070, 5.000000e-01
  %4073 = fadd fast float %4071, 5.000000e-01
  %4074 = fadd fast float %4072, 5.000000e-01
  %4075 = uitofp i32 %3726 to float
  %4076 = call float @dx.op.binary.f32(i32 36, float %4047, float 3.000000e+00)  ; FMin(a,b)
  %4077 = fadd fast float %4076, 2.000000e+00
  %4078 = call float @dx.op.unary.f32(i32 21, float %4077)  ; Exp(value)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4044, 1
  %4080 = fmul fast float %4079, %4078
  %4081 = fmul fast float %4080, 2.000000e+00
  %4082 = fsub fast float 1.000000e+00, %4081
  %4083 = fmul fast float %4073, %4082
  %4084 = fmul fast float %4074, %4082
  %4085 = fadd fast float %4083, %4080
  %4086 = fadd fast float %4084, %4080
  %4087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %4085, float %4086, float %4075, float undef, i32 0, i32 0, i32 undef, float %4047)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4088 = extractvalue %dx.types.ResRet.f32 %4087, 0
  %4089 = extractvalue %dx.types.ResRet.f32 %4087, 1
  %4090 = extractvalue %dx.types.ResRet.f32 %4087, 2
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4093 = fmul fast float %4092, %3696
  %4094 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4093)  ; FMin(a,b)
  %4095 = select i1 %4043, float %4094, float %4093
  %4096 = fmul fast float %4088, %3776
  %4097 = fmul fast float %4096, %4095
  %4098 = fmul fast float %4089, %3776
  %4099 = fmul fast float %4098, %4095
  %4100 = fmul fast float %4090, %3776
  %4101 = fmul fast float %4100, %4095
  %4102 = fadd fast float %4097, %3663
  %4103 = fadd fast float %4099, %3664
  %4104 = fadd fast float %4101, %3665
  %4105 = fsub fast float %3674, %3776
  %4106 = and i32 %3791, 255
  %4107 = uitofp i32 %4106 to float
  %4108 = fptoui float %4107 to i32
  %4109 = icmp eq i32 %3786, 1
  %4110 = zext i1 %4109 to i32
  %4111 = add i32 %4110, %4108
  %4112 = uitofp i32 %4111 to float
  %4113 = fptoui float %4112 to i32
  %4114 = shl i32 %4113, 8
  %4115 = and i32 %4114, 65280
  %4116 = or i32 %4115, %3794
  %4117 = fmul fast float %3973, %3776
  %4118 = fmul fast float %3974, %3776
  %4119 = fmul fast float %3975, %3776
  %4120 = fadd fast float %4117, %3670
  %4121 = fadd fast float %4118, %3671
  %4122 = fadd fast float %4119, %3672
  %4123 = fmul fast float %4075, 0x3FE3C6EF40000000
  %4124 = call float @dx.op.unary.f32(i32 22, float %4123)  ; Frc(value)
  %4125 = fadd fast float %4124, 0x3FE5555560000000
  %4126 = fadd fast float %4124, 0x3FD5555560000000
  %4127 = fsub fast float -0.000000e+00, %4124
  %4128 = fsub fast float -0.000000e+00, %4125
  %4129 = fsub fast float -0.000000e+00, %4126
  %4130 = fcmp fast oge float %4124, %4127
  %4131 = fcmp fast oge float %4125, %4128
  %4132 = fcmp fast oge float %4126, %4129
  %4133 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4134 = call float @dx.op.unary.f32(i32 6, float %4125)  ; FAbs(value)
  %4135 = call float @dx.op.unary.f32(i32 6, float %4126)  ; FAbs(value)
  %4136 = call float @dx.op.unary.f32(i32 22, float %4133)  ; Frc(value)
  %4137 = call float @dx.op.unary.f32(i32 22, float %4134)  ; Frc(value)
  %4138 = call float @dx.op.unary.f32(i32 22, float %4135)  ; Frc(value)
  %4139 = fsub fast float -0.000000e+00, %4136
  %4140 = fsub fast float -0.000000e+00, %4137
  %4141 = fsub fast float -0.000000e+00, %4138
  %4142 = select i1 %4130, float %4136, float %4139
  %4143 = select i1 %4131, float %4137, float %4140
  %4144 = select i1 %4132, float %4138, float %4141
  %4145 = fmul fast float %4142, 6.000000e+00
  %4146 = fmul fast float %4143, 6.000000e+00
  %4147 = fmul fast float %4144, 6.000000e+00
  %4148 = fadd fast float %4145, -3.000000e+00
  %4149 = fadd fast float %4146, -3.000000e+00
  %4150 = fadd fast float %4147, -3.000000e+00
  %4151 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4152 = call float @dx.op.unary.f32(i32 6, float %4149)  ; FAbs(value)
  %4153 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4154 = fadd fast float %4151, -1.000000e+00
  %4155 = fadd fast float %4152, -1.000000e+00
  %4156 = fadd fast float %4153, -1.000000e+00
  %4157 = call float @dx.op.unary.f32(i32 7, float %4154)  ; Saturate(value)
  %4158 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4159 = call float @dx.op.unary.f32(i32 7, float %4156)  ; Saturate(value)
  %4160 = fmul fast float %4157, %3776
  %4161 = fmul fast float %4158, %3776
  %4162 = fmul fast float %4159, %3776
  %4163 = fadd fast float %4160, %3666
  %4164 = fadd fast float %4161, %3667
  %4165 = fadd fast float %4162, %3668
  %4166 = icmp eq i32 %3726, 0
  %4167 = select i1 %4166, i32 1, i32 %3669
  %4168 = icmp eq i32 %3673, 0
  br i1 %4168, label %3797, label %4169

; <label>:4169                                    ; preds = %4038
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 0
  %4172 = bitcast float %4171 to i32
  %4173 = lshr i32 %4172, 8
  %4174 = and i32 %4173, 255
  %4175 = uitofp i32 %4174 to float
  %4176 = fptoui float %4175 to i32
  %4177 = icmp eq i32 %4176, 16
  %4178 = bitcast float %4093 to i32
  %4179 = select i1 %4177, i32 %4178, i32 %3662
  %4180 = icmp eq i32 %4176, 17
  %4181 = select i1 %4180, i32 1065353216, i32 %4179
  %4182 = icmp eq i32 %4176, 18
  %4183 = bitcast float %4095 to i32
  %4184 = select i1 %4182, i32 %4183, i32 %4181
  br label %3797

; <label>:4185                                    ; preds = %3797
  br label %4186

; <label>:4186                                    ; preds = %4185, %3620
  %4187 = phi i32 [ %3621, %3620 ], [ %3798, %4185 ]
  %4188 = phi i32 [ %3622, %3620 ], [ %3799, %4185 ]
  %4189 = phi float [ %3623, %3620 ], [ %3800, %4185 ]
  %4190 = phi float [ %3624, %3620 ], [ %3801, %4185 ]
  %4191 = phi float [ %3625, %3620 ], [ %3802, %4185 ]
  %4192 = phi float [ %3626, %3620 ], [ %3803, %4185 ]
  %4193 = phi float [ %3627, %3620 ], [ %3804, %4185 ]
  %4194 = phi float [ %3628, %3620 ], [ %3805, %4185 ]
  %4195 = phi i32 [ %3629, %3620 ], [ %3806, %4185 ]
  %4196 = phi float [ %3630, %3620 ], [ %3807, %4185 ]
  %4197 = phi float [ %3631, %3620 ], [ %3808, %4185 ]
  %4198 = phi float [ %3632, %3620 ], [ %3809, %4185 ]
  %4199 = phi i32 [ %3633, %3620 ], [ %3810, %4185 ]
  %4200 = phi float [ %3634, %3620 ], [ %3811, %4185 ]
  %4201 = add i32 %3635, 1
  %4202 = icmp ugt i32 %4201, %3617
  br i1 %4202, label %4203, label %3620, !llvm.loop !130

; <label>:4203                                    ; preds = %4186
  br label %4204

; <label>:4204                                    ; preds = %4203, %3568
  %4205 = phi i32 [ %2254, %3568 ], [ %4187, %4203 ]
  %4206 = phi i32 [ %3559, %3568 ], [ %4188, %4203 ]
  %4207 = phi float [ 0.000000e+00, %3568 ], [ %4189, %4203 ]
  %4208 = phi float [ 0.000000e+00, %3568 ], [ %4190, %4203 ]
  %4209 = phi float [ 0.000000e+00, %3568 ], [ %4191, %4203 ]
  %4210 = phi float [ 0.000000e+00, %3568 ], [ %4192, %4203 ]
  %4211 = phi float [ 0.000000e+00, %3568 ], [ %4193, %4203 ]
  %4212 = phi float [ 0.000000e+00, %3568 ], [ %4194, %4203 ]
  %4213 = phi i32 [ 0, %3568 ], [ %4195, %4203 ]
  %4214 = phi float [ 0.000000e+00, %3568 ], [ %4196, %4203 ]
  %4215 = phi float [ 0.000000e+00, %3568 ], [ %4197, %4203 ]
  %4216 = phi float [ 0.000000e+00, %3568 ], [ %4198, %4203 ]
  %4217 = call float @dx.op.dot3.f32(i32 55, float %4207, float %4208, float %4209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4218 = select i1 %2452, float %4217, float %4208
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = bitcast float %4220 to i32
  %4222 = lshr i32 %4221, 8
  %4223 = and i32 %4222, 255
  %4224 = uitofp i32 %4223 to float
  %4225 = fptoui float %4224 to i32
  %4226 = icmp eq i32 %4225, 13
  br i1 %4226, label %4227, label %4247

; <label>:4227                                    ; preds = %4204
  %4228 = fadd fast float %4210, 1.000000e+00
  %4229 = fadd fast float %4211, 1.000000e+00
  %4230 = fadd fast float %4212, 1.000000e+00
  %4231 = fmul fast float %4228, 5.000000e-01
  %4232 = fmul fast float %4229, 5.000000e-01
  %4233 = fmul fast float %4230, 5.000000e-01
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = fmul fast float %4234, 1.023000e+03
  %4238 = fmul fast float %4235, 1.023000e+03
  %4239 = fmul fast float %4236, 1.023000e+03
  %4240 = fptoui float %4237 to i32
  %4241 = fptoui float %4238 to i32
  %4242 = fptoui float %4239 to i32
  %4243 = shl i32 %4241, 10
  %4244 = or i32 %4243, %4240
  %4245 = shl i32 %4242, 20
  %4246 = or i32 %4244, %4245
  br label %4247

; <label>:4247                                    ; preds = %4227, %4204
  %4248 = phi i32 [ %4246, %4227 ], [ %4206, %4204 ]
  %4249 = icmp eq i32 %4225, 14
  %4250 = select i1 %4249, i32 %4213, i32 %4248
  %4251 = icmp eq i32 %4225, 22
  br i1 %4251, label %4252, label %4272

; <label>:4252                                    ; preds = %4247
  %4253 = fadd fast float %4214, 1.000000e+00
  %4254 = fadd fast float %4215, 1.000000e+00
  %4255 = fadd fast float %4216, 1.000000e+00
  %4256 = fmul fast float %4253, 5.000000e-01
  %4257 = fmul fast float %4254, 5.000000e-01
  %4258 = fmul fast float %4255, 5.000000e-01
  %4259 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4260 = call float @dx.op.unary.f32(i32 7, float %4257)  ; Saturate(value)
  %4261 = call float @dx.op.unary.f32(i32 7, float %4258)  ; Saturate(value)
  %4262 = fmul fast float %4259, 1.023000e+03
  %4263 = fmul fast float %4260, 1.023000e+03
  %4264 = fmul fast float %4261, 1.023000e+03
  %4265 = fptoui float %4262 to i32
  %4266 = fptoui float %4263 to i32
  %4267 = fptoui float %4264 to i32
  %4268 = shl i32 %4266, 10
  %4269 = or i32 %4268, %4265
  %4270 = shl i32 %4267, 20
  %4271 = or i32 %4269, %4270
  br label %4272

; <label>:4272                                    ; preds = %4252, %4247
  %4273 = phi i32 [ %4271, %4252 ], [ %4250, %4247 ]
  %4274 = fmul fast float %4207, 0x3FD45F3060000000
  %4275 = select i1 %2452, float 0.000000e+00, float %4274
  %4276 = fmul fast float %4218, 0x3FD45F3060000000
  %4277 = fmul fast float %4209, 0x3FD45F3060000000
  %4278 = select i1 %2452, float 0.000000e+00, float %4277
  br label %4279

; <label>:4279                                    ; preds = %4272, %3558
  %4280 = phi i32 [ %4205, %4272 ], [ %2254, %3558 ]
  %4281 = phi i32 [ %4273, %4272 ], [ %3559, %3558 ]
  %4282 = phi float [ %4275, %4272 ], [ %3524, %3558 ]
  %4283 = phi float [ %4276, %4272 ], [ %3525, %3558 ]
  %4284 = phi float [ %4278, %4272 ], [ %3526, %3558 ]
  %4285 = phi i1 [ false, %4272 ], [ true, %3558 ]
  %4286 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.i32 %4286, 0
  %4288 = and i32 %4287, 524288
  %4289 = icmp ne i32 %4288, 0
  %4290 = select i1 %4289, float 0.000000e+00, float 1.000000e+00
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = bitcast float %4292 to i32
  %4294 = and i32 %4293, 255
  %4295 = uitofp i32 %4294 to float
  %4296 = fptoui float %4295 to i32
  %4297 = icmp eq i32 %4296, 38
  %4298 = select i1 %4297, i32 0, i32 %4281
  %4299 = lshr i32 %4293, 8
  %4300 = and i32 %4299, 255
  %4301 = uitofp i32 %4300 to float
  %4302 = fptoui float %4301 to i32
  %4303 = icmp eq i32 %4302, 24
  br i1 %4303, label %4304, label %4315

; <label>:4304                                    ; preds = %4279
  %4305 = fadd fast float %2489, 1.000000e+00
  %4306 = fmul fast float %4305, 5.000000e-01
  %4307 = select i1 %2491, float %4306, float 1.000000e+00
  %4308 = call float @dx.op.unary.f32(i32 7, float %4307)  ; Saturate(value)
  %4309 = fmul fast float %4308, 1.023000e+03
  %4310 = fptoui float %4309 to i32
  %4311 = shl i32 %4310, 10
  %4312 = or i32 %4311, %4310
  %4313 = shl i32 %4310, 20
  %4314 = or i32 %4312, %4313
  br label %4315

; <label>:4315                                    ; preds = %4304, %4279
  %4316 = phi i32 [ %4298, %4279 ], [ %4314, %4304 ]
  %4317 = xor i1 %4289, true
  %4318 = zext i1 %4317 to i32
  br i1 %4289, label %4319, label %4603

; <label>:4319                                    ; preds = %4315
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 0
  %4322 = extractvalue %dx.types.CBufRet.f32 %4320, 1
  %4323 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4324 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.CBufRet.f32 %4325, 1
  %4328 = extractvalue %dx.types.CBufRet.f32 %4325, 2
  %4329 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.CBufRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4330, 2
  %4334 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %4338 = extractvalue %dx.types.CBufRet.f32 %4335, 2
  %4339 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.f32 %4340, 0
  %4342 = extractvalue %dx.types.CBufRet.f32 %4340, 1
  %4343 = extractvalue %dx.types.CBufRet.f32 %4340, 2
  %4344 = extractvalue %dx.types.CBufRet.f32 %4340, 3
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.CBufRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4349 = extractvalue %dx.types.CBufRet.f32 %4345, 3
  %4350 = call float @dx.op.dot3.f32(i32 55, float %4346, float %4347, float %4348, float %2464, float %2465, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 1
  %4353 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4354 = select i1 %115, float %4353, float %4352
  %4355 = fmul fast float %4350, 8.000000e+00
  %4356 = fmul fast float %4355, %4354
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = fcmp fast ogt float %4357, 0.000000e+00
  br i1 %4358, label %4359, label %4577, !dx.controlflow.hints !131

; <label>:4359                                    ; preds = %4319
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 1
  %4362 = fmul fast float %1755, 2.000000e+00
  %4363 = fmul fast float %1756, 2.000000e+00
  %4364 = fadd fast float %4362, -1.000000e+00
  %4365 = fadd fast float %4363, -1.000000e+00
  %4366 = fmul fast float %4361, %4364
  %4367 = fmul fast float %4361, %4365
  %4368 = fadd fast float %4366, %98
  %4369 = fadd fast float %4367, %99
  %4370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.f32 %4370, 2
  %4372 = extractvalue %dx.types.CBufRet.f32 %4370, 3
  %4373 = fmul fast float %4368, %4371
  %4374 = fmul fast float %4369, %4372
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %62, float %4373, float %4374, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = fcmp fast une float %4376, 0xFFF0000000000000
  %4378 = fcmp fast une float %4376, 0x7FF0000000000000
  %4379 = and i1 %4377, %4378
  %4380 = call float @dx.op.unary.f32(i32 6, float %4376)  ; FAbs(value)
  %4381 = fsub fast float 1.000000e+00, %4380
  %4382 = select i1 %4379, float 1.000000e+00, float 0.000000e+00
  %4383 = fmul fast float %4382, %4357
  %4384 = fcmp fast ogt float %4383, 0.000000e+00
  br i1 %4384, label %4385, label %4577, !dx.controlflow.hints !132

; <label>:4385                                    ; preds = %4359
  %4386 = fmul fast float %4321, %153
  %4387 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4322, float %4386)  ; FMad(a,b,c)
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4323, float %4387)  ; FMad(a,b,c)
  %4389 = fadd fast float %4388, %4324
  %4390 = fmul fast float %4326, %153
  %4391 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4327, float %4390)  ; FMad(a,b,c)
  %4392 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4328, float %4391)  ; FMad(a,b,c)
  %4393 = fadd fast float %4392, %4329
  %4394 = fmul fast float %4331, %153
  %4395 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4332, float %4394)  ; FMad(a,b,c)
  %4396 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4333, float %4395)  ; FMad(a,b,c)
  %4397 = fadd fast float %4396, %4334
  %4398 = fdiv fast float 1.000000e+00, %4397
  %4399 = fmul fast float %4398, %4389
  %4400 = fmul fast float %4398, %4393
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4404 = fmul fast float %4399, %4402
  %4405 = fmul fast float %4400, %4403
  %4406 = extractvalue %dx.types.CBufRet.f32 %4401, 2
  %4407 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4408 = fadd fast float %4404, %4406
  %4409 = fadd fast float %4405, %4407
  %4410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.f32 %4410, 3
  %4412 = fmul fast float %4411, %2464
  %4413 = fmul fast float %4411, %2465
  %4414 = fmul fast float %4411, %2466
  %4415 = fadd fast float %4412, %153
  %4416 = fadd fast float %4413, %154
  %4417 = fadd fast float %4414, %155
  %4418 = fmul fast float %4415, %4321
  %4419 = call float @dx.op.tertiary.f32(i32 46, float %4416, float %4322, float %4418)  ; FMad(a,b,c)
  %4420 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4323, float %4419)  ; FMad(a,b,c)
  %4421 = fadd fast float %4420, %4324
  %4422 = fmul fast float %4415, %4326
  %4423 = call float @dx.op.tertiary.f32(i32 46, float %4416, float %4327, float %4422)  ; FMad(a,b,c)
  %4424 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4328, float %4423)  ; FMad(a,b,c)
  %4425 = fadd fast float %4424, %4329
  %4426 = fmul fast float %4415, %4331
  %4427 = call float @dx.op.tertiary.f32(i32 46, float %4416, float %4332, float %4426)  ; FMad(a,b,c)
  %4428 = call float @dx.op.tertiary.f32(i32 46, float %4417, float %4333, float %4427)  ; FMad(a,b,c)
  %4429 = fadd fast float %4428, %4334
  %4430 = fdiv fast float 1.000000e+00, %4429
  %4431 = fmul fast float %4430, %4421
  %4432 = fmul fast float %4430, %4425
  %4433 = fmul fast float %4408, 2.000000e+00
  %4434 = fadd fast float %4433, -1.000000e+00
  %4435 = call float @dx.op.unary.f32(i32 6, float %4434)  ; FAbs(value)
  %4436 = fmul fast float %4435, 5.000000e+00
  %4437 = fadd fast float %4436, -4.000000e+00
  %4438 = call float @dx.op.unary.f32(i32 7, float %4437)  ; Saturate(value)
  %4439 = fsub fast float %4399, %4431
  %4440 = fmul fast float %4402, %4439
  %4441 = fmul fast float %4440, %4438
  %4442 = fsub fast float %4431, %4399
  %4443 = fmul fast float %4402, %4442
  %4444 = fadd fast float %4443, %4441
  %4445 = fsub fast float %4432, %4400
  %4446 = fmul fast float %4403, %4445
  %4447 = fmul fast float %4444, %4381
  %4448 = fmul fast float %4446, %4381
  %4449 = fadd fast float %4447, %4408
  %4450 = fadd fast float %4448, %4409
  %4451 = fsub fast float %4430, %4398
  %4452 = fmul fast float %4451, %4381
  %4453 = fadd fast float %4452, %4398
  %4454 = fdiv fast float 1.000000e+00, %4453
  %4455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %4449, float %4450, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = extractvalue %dx.types.ResRet.f32 %4455, 1
  %4458 = extractvalue %dx.types.ResRet.f32 %4455, 2
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 1
  %4461 = fmul fast float %4460, %4456
  %4462 = fmul fast float %4460, %4457
  %4463 = fmul fast float %4460, %4458
  %4464 = call float @dx.op.binary.f32(i32 35, float %4454, float 0x3810000000000000)  ; FMax(a,b)
  %4465 = fdiv fast float %4397, %4464
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4471 = fadd fast float %4468, %153
  %4472 = fadd fast float %4469, %154
  %4473 = fadd fast float %4470, %155
  %4474 = fmul fast float %4471, %4336
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4337, float %4474)  ; FMad(a,b,c)
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4338, float %4475)  ; FMad(a,b,c)
  %4477 = fadd fast float %4476, %4339
  %4478 = fmul fast float %4471, %4341
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4342, float %4478)  ; FMad(a,b,c)
  %4480 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4343, float %4479)  ; FMad(a,b,c)
  %4481 = fadd fast float %4480, %4344
  %4482 = fmul fast float %4471, %4346
  %4483 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4347, float %4482)  ; FMad(a,b,c)
  %4484 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4348, float %4483)  ; FMad(a,b,c)
  %4485 = fadd fast float %4484, %4349
  %4486 = fdiv fast float 1.000000e+00, %4485
  %4487 = fmul fast float %4486, %4477
  %4488 = fmul fast float %4486, %4481
  %4489 = fmul fast float %4487, %4402
  %4490 = fmul fast float %4488, %4403
  %4491 = fadd fast float %4489, %4406
  %4492 = fadd fast float %4490, %4407
  %4493 = fadd fast float %4412, %4471
  %4494 = fadd fast float %4413, %4472
  %4495 = fadd fast float %4414, %4473
  %4496 = fmul fast float %4493, %4336
  %4497 = call float @dx.op.tertiary.f32(i32 46, float %4494, float %4337, float %4496)  ; FMad(a,b,c)
  %4498 = call float @dx.op.tertiary.f32(i32 46, float %4495, float %4338, float %4497)  ; FMad(a,b,c)
  %4499 = fadd fast float %4498, %4339
  %4500 = fmul fast float %4493, %4341
  %4501 = call float @dx.op.tertiary.f32(i32 46, float %4494, float %4342, float %4500)  ; FMad(a,b,c)
  %4502 = call float @dx.op.tertiary.f32(i32 46, float %4495, float %4343, float %4501)  ; FMad(a,b,c)
  %4503 = fadd fast float %4502, %4344
  %4504 = fmul fast float %4493, %4346
  %4505 = call float @dx.op.tertiary.f32(i32 46, float %4494, float %4347, float %4504)  ; FMad(a,b,c)
  %4506 = call float @dx.op.tertiary.f32(i32 46, float %4495, float %4348, float %4505)  ; FMad(a,b,c)
  %4507 = fadd fast float %4506, %4349
  %4508 = fdiv fast float 1.000000e+00, %4507
  %4509 = fmul fast float %4508, %4499
  %4510 = fmul fast float %4508, %4503
  %4511 = fmul fast float %4491, 2.000000e+00
  %4512 = fadd fast float %4511, -1.000000e+00
  %4513 = call float @dx.op.unary.f32(i32 6, float %4512)  ; FAbs(value)
  %4514 = fmul fast float %4513, 5.000000e+00
  %4515 = fadd fast float %4514, -4.000000e+00
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = fsub fast float %4487, %4509
  %4518 = fmul fast float %4402, %4517
  %4519 = fmul fast float %4518, %4516
  %4520 = fsub fast float %4509, %4487
  %4521 = fmul fast float %4402, %4520
  %4522 = fadd fast float %4521, %4519
  %4523 = fsub fast float %4510, %4488
  %4524 = fmul fast float %4403, %4523
  %4525 = fmul fast float %4522, %4381
  %4526 = fmul fast float %4524, %4381
  %4527 = fadd fast float %4525, %4491
  %4528 = fadd fast float %4526, %4492
  %4529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %61, float %4527, float %4528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4530 = extractvalue %dx.types.ResRet.f32 %4529, 0
  %4531 = extractvalue %dx.types.ResRet.f32 %4529, 1
  %4532 = extractvalue %dx.types.ResRet.f32 %4529, 2
  %4533 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4534 = fmul fast float %4533, %4530
  %4535 = fmul fast float %4533, %4531
  %4536 = fmul fast float %4533, %4532
  %4537 = and i32 %2360, 255
  %4538 = uitofp i32 %4537 to float
  %4539 = fmul fast float %4538, 0x3F70101020000000
  %4540 = fmul fast float %4539, %4466
  %4541 = extractvalue %dx.types.CBufRet.f32 %4351, 2
  %4542 = fadd fast float %4541, %4540
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = call float @dx.op.binary.f32(i32 35, float %4461, float 0x3810000000000000)  ; FMax(a,b)
  %4545 = call float @dx.op.binary.f32(i32 35, float %4462, float 0x3810000000000000)  ; FMax(a,b)
  %4546 = call float @dx.op.binary.f32(i32 35, float %4463, float 0x3810000000000000)  ; FMax(a,b)
  %4547 = call float @dx.op.unary.f32(i32 23, float %4544)  ; Log(value)
  %4548 = call float @dx.op.unary.f32(i32 23, float %4545)  ; Log(value)
  %4549 = call float @dx.op.unary.f32(i32 23, float %4546)  ; Log(value)
  %4550 = call float @dx.op.binary.f32(i32 35, float %4534, float 0x3810000000000000)  ; FMax(a,b)
  %4551 = call float @dx.op.binary.f32(i32 35, float %4535, float 0x3810000000000000)  ; FMax(a,b)
  %4552 = call float @dx.op.binary.f32(i32 35, float %4536, float 0x3810000000000000)  ; FMax(a,b)
  %4553 = call float @dx.op.unary.f32(i32 23, float %4550)  ; Log(value)
  %4554 = call float @dx.op.unary.f32(i32 23, float %4551)  ; Log(value)
  %4555 = call float @dx.op.unary.f32(i32 23, float %4552)  ; Log(value)
  %4556 = fsub fast float %4547, %4553
  %4557 = fsub fast float %4548, %4554
  %4558 = fsub fast float %4549, %4555
  %4559 = fmul fast float %4556, %4543
  %4560 = fmul fast float %4557, %4543
  %4561 = fmul fast float %4558, %4543
  %4562 = fadd fast float %4559, %4553
  %4563 = fadd fast float %4560, %4554
  %4564 = fadd fast float %4561, %4555
  %4565 = call float @dx.op.unary.f32(i32 21, float %4562)  ; Exp(value)
  %4566 = call float @dx.op.unary.f32(i32 21, float %4563)  ; Exp(value)
  %4567 = call float @dx.op.unary.f32(i32 21, float %4564)  ; Exp(value)
  %4568 = select i1 %2452, float 0.000000e+00, float %4566
  %4569 = select i1 %2452, float 0.000000e+00, float %4567
  %4570 = fmul fast float %4528, 2.000000e+00
  %4571 = fadd fast float %4570, -1.000000e+00
  %4572 = fmul fast float %4571, %4571
  %4573 = fsub fast float 1.000000e+00, %4572
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fmul fast float %4575, %4383
  br label %4577

; <label>:4577                                    ; preds = %4385, %4359, %4319
  %4578 = phi float [ %4565, %4385 ], [ 0.000000e+00, %4359 ], [ 0.000000e+00, %4319 ]
  %4579 = phi float [ %4568, %4385 ], [ 0.000000e+00, %4359 ], [ 0.000000e+00, %4319 ]
  %4580 = phi float [ %4569, %4385 ], [ 0.000000e+00, %4359 ], [ 0.000000e+00, %4319 ]
  %4581 = phi float [ %4576, %4385 ], [ 0.000000e+00, %4359 ], [ 0.000000e+00, %4319 ]
  %4582 = phi float [ %4381, %4385 ], [ %4381, %4359 ], [ 0.000000e+00, %4319 ]
  %4583 = phi float [ %4576, %4385 ], [ %4383, %4359 ], [ 0.000000e+00, %4319 ]
  %4584 = icmp eq i32 %4302, 25
  br i1 %4584, label %4585, label %4588

; <label>:4585                                    ; preds = %4577
  %4586 = call float @dx.op.unary.f32(i32 6, float %4582)  ; FAbs(value)
  %4587 = bitcast float %4586 to i32
  br label %4588

; <label>:4588                                    ; preds = %4585, %4577
  %4589 = phi i32 [ %4587, %4585 ], [ %4316, %4577 ]
  %4590 = icmp eq i32 %4302, 26
  %4591 = bitcast float %4583 to i32
  %4592 = select i1 %4590, i32 %4591, i32 %4589
  %4593 = icmp eq i32 %4302, 27
  %4594 = select i1 %4593, i32 0, i32 %4592
  %4595 = fcmp fast olt float %4581, 1.000000e+00
  %4596 = or i1 %4595, %4317
  %4597 = zext i1 %4596 to i32
  %4598 = fmul fast float %4581, %4290
  %4599 = fsub fast float %4581, %4598
  %4600 = fmul fast float %4599, %4578
  %4601 = fmul fast float %4599, %4579
  %4602 = fmul fast float %4599, %4580
  br label %4603

; <label>:4603                                    ; preds = %4588, %4315
  %4604 = phi i32 [ %4316, %4315 ], [ %4594, %4588 ]
  %4605 = phi float [ 0.000000e+00, %4315 ], [ %4599, %4588 ]
  %4606 = phi float [ 0.000000e+00, %4315 ], [ %4600, %4588 ]
  %4607 = phi float [ 0.000000e+00, %4315 ], [ %4601, %4588 ]
  %4608 = phi float [ 0.000000e+00, %4315 ], [ %4602, %4588 ]
  %4609 = phi i32 [ %4318, %4315 ], [ %4597, %4588 ]
  %4610 = icmp ne i32 %4609, 0
  %4611 = add i32 %4302, -13
  %4612 = icmp ult i32 %4611, 2
  %4613 = or i1 %4612, %4610
  %4614 = icmp eq i32 %4302, 22
  %4615 = or i1 %4613, %4614
  br i1 %4615, label %4616, label %5350

; <label>:4616                                    ; preds = %4603
  %4617 = select i1 %4285, float %3486, float 1.000000e+00
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 3
  %4621 = fmul fast float %4619, %98
  %4622 = fmul fast float %4620, %99
  %4623 = fptoui float %4621 to i32
  %4624 = fptoui float %4622 to i32
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 3
  %4629 = fadd fast float %87, -4.000000e+00
  %4630 = call float @dx.op.binary.f32(i32 35, float %4629, float 0.000000e+00)  ; FMax(a,b)
  %4631 = fadd fast float %4630, %4626
  %4632 = fmul fast float %4631, %4627
  %4633 = call float @dx.op.unary.f32(i32 23, float %4632)  ; Log(value)
  %4634 = fmul fast float %4633, %4628
  %4635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4636 = extractvalue %dx.types.CBufRet.f32 %4635, 2
  %4637 = fmul fast float %4634, %4636
  %4638 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4640 = extractvalue %dx.types.CBufRet.i32 %4639, 1
  %4641 = add i32 %4640, -1
  %4642 = uitofp i32 %4640 to float
  %4643 = fmul fast float %4642, %4638
  %4644 = fptoui float %4643 to i32
  %4645 = call i32 @dx.op.binary.i32(i32 40, i32 %4644, i32 %4641)  ; UMin(a,b)
  %4646 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.i32 %4646, 2
  %4648 = extractvalue %dx.types.CBufRet.i32 %4646, 3
  %4649 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4624, i32 %4647, i32 %4623)  ; UMad(a,b,c)
  %4650 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4645, i32 %4648, i32 %4649)  ; UMad(a,b,c)
  %4651 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %4652 = fptoui float %4651 to i32
  %4653 = lshr i32 %4652, 5
  %4654 = call i32 @dx.op.binary.i32(i32 40, i32 %4653, i32 8191)  ; UMin(a,b)
  %4655 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.i32 %4655, 2
  %4657 = add nsw i32 %4656, -1
  %4658 = call i32 @dx.op.binary.i32(i32 37, i32 %4657, i32 0)  ; IMax(a,b)
  %4659 = shl i32 %4654, 2
  %4660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %4659, i32 undef)  ; BufferLoad(srv,index,wot)
  %4661 = extractvalue %dx.types.ResRet.i32 %4660, 0
  %4662 = lshr i32 %4661, 16
  %4663 = and i32 %4661, 65535
  %4664 = lshr i32 %4661, 21
  %4665 = lshr i32 %4663, 5
  %4666 = call i32 @dx.op.binary.i32(i32 40, i32 %4665, i32 %4658)  ; UMin(a,b)
  %4667 = icmp ugt i32 %4664, %4666
  br i1 %4667, label %5262, label %4668

; <label>:4668                                    ; preds = %4616
  br label %4669

; <label>:4669                                    ; preds = %5244, %4668
  %4670 = phi i32 [ %5245, %5244 ], [ %4280, %4668 ]
  %4671 = phi i32 [ %5246, %5244 ], [ %4604, %4668 ]
  %4672 = phi float [ %5247, %5244 ], [ 0.000000e+00, %4668 ]
  %4673 = phi float [ %5248, %5244 ], [ 0.000000e+00, %4668 ]
  %4674 = phi float [ %5249, %5244 ], [ 0.000000e+00, %4668 ]
  %4675 = phi float [ %5250, %5244 ], [ 0.000000e+00, %4668 ]
  %4676 = phi float [ %5251, %5244 ], [ 0.000000e+00, %4668 ]
  %4677 = phi float [ %5252, %5244 ], [ 0.000000e+00, %4668 ]
  %4678 = phi i32 [ %5253, %5244 ], [ 0, %4668 ]
  %4679 = phi float [ %5254, %5244 ], [ 0.000000e+00, %4668 ]
  %4680 = phi float [ %5255, %5244 ], [ 0.000000e+00, %4668 ]
  %4681 = phi float [ %5256, %5244 ], [ 0.000000e+00, %4668 ]
  %4682 = phi i32 [ %5257, %5244 ], [ 1, %4668 ]
  %4683 = phi float [ %5258, %5244 ], [ 1.000000e+00, %4668 ]
  %4684 = phi i32 [ %5259, %5244 ], [ %4664, %4668 ]
  %4685 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.i32 %4685, 2
  %4687 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4650, i32 %4686, i32 %4684)  ; UMad(a,b,c)
  %4688 = shl i32 %4687, 2
  %4689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4688, i32 undef)  ; BufferLoad(srv,index,wot)
  %4690 = extractvalue %dx.types.ResRet.i32 %4689, 0
  %4691 = shl i32 %4684, 5
  %4692 = sub nsw i32 %4662, %4691
  %4693 = call i32 @dx.op.binary.i32(i32 37, i32 %4692, i32 0)  ; IMax(a,b)
  %4694 = call i32 @dx.op.binary.i32(i32 38, i32 %4693, i32 31)  ; IMin(a,b)
  %4695 = sub nsw i32 1, %4662
  %4696 = add nsw i32 %4695, %4663
  %4697 = call i32 @dx.op.binary.i32(i32 37, i32 %4696, i32 0)  ; IMax(a,b)
  %4698 = call i32 @dx.op.binary.i32(i32 38, i32 %4697, i32 32)  ; IMin(a,b)
  %4699 = and i32 %4698, 31
  %4700 = shl i32 -1, %4699
  %4701 = xor i32 %4700, -1
  %4702 = and i32 %4694, 31
  %4703 = shl i32 %4701, %4702
  %4704 = icmp eq i32 %4698, 32
  %4705 = select i1 %4704, i32 -1, i32 %4703
  %4706 = and i32 %4705, %4690
  %4707 = icmp eq i32 %4706, 0
  br i1 %4707, label %5244, label %4708

; <label>:4708                                    ; preds = %4669
  br label %4709

; <label>:4709                                    ; preds = %4846, %4708
  %4710 = phi i32 [ %4847, %4846 ], [ %4670, %4708 ]
  %4711 = phi i32 [ %4848, %4846 ], [ %4671, %4708 ]
  %4712 = phi float [ %4849, %4846 ], [ %4672, %4708 ]
  %4713 = phi float [ %4850, %4846 ], [ %4673, %4708 ]
  %4714 = phi float [ %4851, %4846 ], [ %4674, %4708 ]
  %4715 = phi float [ %4852, %4846 ], [ %4675, %4708 ]
  %4716 = phi float [ %4853, %4846 ], [ %4676, %4708 ]
  %4717 = phi float [ %4854, %4846 ], [ %4677, %4708 ]
  %4718 = phi i32 [ %4855, %4846 ], [ %4678, %4708 ]
  %4719 = phi float [ %4856, %4846 ], [ %4679, %4708 ]
  %4720 = phi float [ %4857, %4846 ], [ %4680, %4708 ]
  %4721 = phi float [ %4858, %4846 ], [ %4681, %4708 ]
  %4722 = phi i32 [ %4859, %4846 ], [ %4682, %4708 ]
  %4723 = phi float [ %4860, %4846 ], [ %4683, %4708 ]
  %4724 = phi i32 [ %4729, %4846 ], [ %4706, %4708 ]
  %4725 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4724)  ; FirstbitLo(value)
  %4726 = add i32 %4725, %4691
  %4727 = and i32 %4725, 31
  %4728 = shl i32 1, %4727
  %4729 = xor i32 %4728, %4724
  %4730 = mul i32 %4726, 72
  %4731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4730, i32 undef)  ; BufferLoad(srv,index,wot)
  %4732 = extractvalue %dx.types.ResRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.ResRet.f32 %4731, 1
  %4734 = extractvalue %dx.types.ResRet.f32 %4731, 2
  %4735 = add i32 %4730, 12
  %4736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4735, i32 undef)  ; BufferLoad(srv,index,wot)
  %4737 = extractvalue %dx.types.ResRet.i32 %4736, 0
  %4738 = add i32 %4730, 16
  %4739 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4738, i32 undef)  ; BufferLoad(srv,index,wot)
  %4740 = extractvalue %dx.types.ResRet.f32 %4739, 0
  %4741 = extractvalue %dx.types.ResRet.f32 %4739, 1
  %4742 = extractvalue %dx.types.ResRet.f32 %4739, 2
  %4743 = add i32 %4730, 28
  %4744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4743, i32 undef)  ; BufferLoad(srv,index,wot)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 0
  %4746 = add i32 %4730, 32
  %4747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4746, i32 undef)  ; BufferLoad(srv,index,wot)
  %4748 = extractvalue %dx.types.ResRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.ResRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.ResRet.f32 %4747, 2
  %4751 = extractvalue %dx.types.ResRet.f32 %4747, 3
  %4752 = add i32 %4730, 48
  %4753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4752, i32 undef)  ; BufferLoad(srv,index,wot)
  %4754 = extractvalue %dx.types.ResRet.f32 %4753, 0
  %4755 = extractvalue %dx.types.ResRet.f32 %4753, 1
  %4756 = add i32 %4730, 56
  %4757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4756, i32 undef)  ; BufferLoad(srv,index,wot)
  %4758 = extractvalue %dx.types.ResRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.ResRet.f32 %4757, 1
  %4760 = add i32 %4730, 64
  %4761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4760, i32 undef)  ; BufferLoad(srv,index,wot)
  %4762 = extractvalue %dx.types.ResRet.f32 %4761, 0
  %4763 = extractvalue %dx.types.ResRet.f32 %4761, 1
  %4764 = mul i32 %4726, 60
  %4765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4764, i32 undef)  ; BufferLoad(srv,index,wot)
  %4766 = extractvalue %dx.types.ResRet.f32 %4765, 0
  %4767 = extractvalue %dx.types.ResRet.f32 %4765, 1
  %4768 = extractvalue %dx.types.ResRet.f32 %4765, 2
  %4769 = add i32 %4764, 12
  %4770 = add i32 %4764, 48
  %4771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4770, i32 undef)  ; BufferLoad(srv,index,wot)
  %4772 = extractvalue %dx.types.ResRet.f32 %4771, 0
  %4773 = extractvalue %dx.types.ResRet.f32 %4771, 1
  %4774 = extractvalue %dx.types.ResRet.f32 %4771, 2
  %4775 = and i32 %4737, 32767
  %4776 = bitcast float %4732 to i32
  %4777 = bitcast float %4733 to i32
  %4778 = and i32 %4737, 32768
  %4779 = icmp ne i32 %4778, 0
  %4780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.f32 %4780, 3
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4785 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4786 = fsub fast float %4766, %4783
  %4787 = fsub fast float %4767, %4784
  %4788 = fsub fast float %4768, %4785
  %4789 = fsub fast float %153, %4786
  %4790 = fsub fast float %154, %4787
  %4791 = fsub fast float %155, %4788
  %4792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4769, i32 undef)  ; BufferLoad(srv,index,wot)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.ResRet.f32 %4792, 1
  %4795 = extractvalue %dx.types.ResRet.f32 %4792, 2
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = add i32 %4764, 24
  %4798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.ResRet.f32 %4798, 1
  %4801 = extractvalue %dx.types.ResRet.f32 %4798, 2
  %4802 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4799, float %4800, float %4801)  ; Dot3(ax,ay,az,bx,by,bz)
  %4803 = add i32 %4764, 36
  %4804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4803, i32 undef)  ; BufferLoad(srv,index,wot)
  %4805 = extractvalue %dx.types.ResRet.f32 %4804, 0
  %4806 = extractvalue %dx.types.ResRet.f32 %4804, 1
  %4807 = extractvalue %dx.types.ResRet.f32 %4804, 2
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4805, float %4806, float %4807)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = call float @dx.op.unary.f32(i32 6, float %4796)  ; FAbs(value)
  %4810 = call float @dx.op.unary.f32(i32 6, float %4802)  ; FAbs(value)
  %4811 = call float @dx.op.unary.f32(i32 6, float %4808)  ; FAbs(value)
  %4812 = fsub fast float %4772, %4809
  %4813 = fsub fast float %4773, %4810
  %4814 = fsub fast float %4774, %4811
  %4815 = fmul fast float %4812, %4740
  %4816 = fmul fast float %4813, %4741
  %4817 = fmul fast float %4814, %4742
  %4818 = call float @dx.op.binary.f32(i32 36, float %4816, float %4817)  ; FMin(a,b)
  %4819 = call float @dx.op.binary.f32(i32 36, float %4815, float %4818)  ; FMin(a,b)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4819)  ; Saturate(value)
  %4821 = call float @dx.op.binary.f32(i32 36, float %4723, float %4820)  ; FMin(a,b)
  %4822 = uitofp i1 %4779 to float
  %4823 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %4824 = fsub fast float %4823, %4822
  %4825 = fmul fast float %4821, %4824
  %4826 = lshr i32 %4710, 8
  %4827 = and i32 %4826, 255
  %4828 = uitofp i32 %4827 to float
  %4829 = fptoui float %4828 to i32
  %4830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4831 = extractvalue %dx.types.CBufRet.f32 %4830, 1
  %4832 = bitcast float %4831 to i32
  %4833 = lshr i32 %4832, 24
  %4834 = uitofp i32 %4833 to float
  %4835 = fptoui float %4834 to i32
  %4836 = icmp ne i32 %4835, 1
  %4837 = zext i1 %4836 to i32
  %4838 = add i32 %4837, %4829
  %4839 = uitofp i32 %4838 to float
  %4840 = fptoui float %4839 to i32
  %4841 = shl i32 %4840, 8
  %4842 = and i32 %4841, 65280
  %4843 = and i32 %4710, -65281
  %4844 = or i32 %4842, %4843
  %4845 = fcmp fast ogt float %4825, 0.000000e+00
  br i1 %4845, label %4862, label %4846

; <label>:4846                                    ; preds = %5226, %5095, %4709
  %4847 = phi i32 [ %5173, %5095 ], [ %4844, %4709 ], [ %5173, %5226 ]
  %4848 = phi i32 [ %4711, %5095 ], [ %4711, %4709 ], [ %5242, %5226 ]
  %4849 = phi float [ %5159, %5095 ], [ %4712, %4709 ], [ %5159, %5226 ]
  %4850 = phi float [ %5160, %5095 ], [ %4713, %4709 ], [ %5160, %5226 ]
  %4851 = phi float [ %5161, %5095 ], [ %4714, %4709 ], [ %5161, %5226 ]
  %4852 = phi float [ %5220, %5095 ], [ %4715, %4709 ], [ %5220, %5226 ]
  %4853 = phi float [ %5221, %5095 ], [ %4716, %4709 ], [ %5221, %5226 ]
  %4854 = phi float [ %5222, %5095 ], [ %4717, %4709 ], [ %5222, %5226 ]
  %4855 = phi i32 [ %5224, %5095 ], [ %4718, %4709 ], [ %5224, %5226 ]
  %4856 = phi float [ %5177, %5095 ], [ %4719, %4709 ], [ %5177, %5226 ]
  %4857 = phi float [ %5178, %5095 ], [ %4720, %4709 ], [ %5178, %5226 ]
  %4858 = phi float [ %5179, %5095 ], [ %4721, %4709 ], [ %5179, %5226 ]
  %4859 = phi i32 [ 0, %5095 ], [ %4722, %4709 ], [ 0, %5226 ]
  %4860 = phi float [ %5162, %5095 ], [ %4723, %4709 ], [ %5162, %5226 ]
  %4861 = icmp eq i32 %4724, %4728
  br i1 %4861, label %5243, label %4709

; <label>:4862                                    ; preds = %4709
  %4863 = extractvalue %dx.types.CBufRet.f32 %4830, 0
  %4864 = bitcast float %4863 to i32
  %4865 = lshr i32 %4864, 8
  %4866 = and i32 %4865, 255
  %4867 = uitofp i32 %4866 to float
  %4868 = fptoui float %4867 to i32
  %4869 = and i32 %4868, 2
  %4870 = icmp eq i32 %4869, 0
  br i1 %4870, label %4877, label %4871

; <label>:4871                                    ; preds = %4862
  %4872 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call float @dx.op.unary.f32(i32 25, float %4872)  ; Rsqrt(value)
  %4874 = fmul fast float %4873, %153
  %4875 = fmul fast float %4873, %154
  %4876 = fmul fast float %4873, %155
  br label %4877

; <label>:4877                                    ; preds = %4871, %4862
  %4878 = phi float [ %4874, %4871 ], [ %2464, %4862 ]
  %4879 = phi float [ %4875, %4871 ], [ %2465, %4862 ]
  %4880 = phi float [ %4876, %4871 ], [ %2466, %4862 ]
  %4881 = icmp ne i32 %4776, -1
  %4882 = fcmp oeq float %4781, 0.000000e+00
  %4883 = and i1 %4882, %4881
  br i1 %4883, label %4884, label %5008

; <label>:4884                                    ; preds = %4877
  %4885 = fsub fast float -0.000000e+00, %4793
  %4886 = fsub fast float -0.000000e+00, %4794
  %4887 = fsub fast float -0.000000e+00, %4795
  %4888 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4889 = fsub fast float -0.000000e+00, %4888
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4885, float %4886, float %4887)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = fadd fast float %4890, %4755
  %4892 = fadd fast float %4754, %4890
  %4893 = fsub fast float -0.000000e+00, %4892
  %4894 = fcmp ogt float %4888, -0.000000e+00
  %4895 = select i1 %4894, float %4893, float %4891
  %4896 = call float @dx.op.unary.f32(i32 6, float %4889)  ; FAbs(value)
  %4897 = fdiv fast float 1.000000e+00, %4896
  %4898 = fmul fast float %4895, %4897
  %4899 = call float @dx.op.binary.f32(i32 35, float %4898, float 0.000000e+00)  ; FMax(a,b)
  %4900 = fsub fast float -0.000000e+00, %4799
  %4901 = fsub fast float -0.000000e+00, %4800
  %4902 = fsub fast float -0.000000e+00, %4801
  %4903 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = fsub fast float -0.000000e+00, %4903
  %4905 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4900, float %4901, float %4902)  ; Dot3(ax,ay,az,bx,by,bz)
  %4906 = fadd fast float %4905, %4759
  %4907 = fadd fast float %4758, %4905
  %4908 = fsub fast float -0.000000e+00, %4907
  %4909 = fcmp ogt float %4903, -0.000000e+00
  %4910 = select i1 %4909, float %4908, float %4906
  %4911 = call float @dx.op.unary.f32(i32 6, float %4904)  ; FAbs(value)
  %4912 = fdiv fast float 1.000000e+00, %4911
  %4913 = fmul fast float %4910, %4912
  %4914 = call float @dx.op.binary.f32(i32 35, float %4913, float 0.000000e+00)  ; FMax(a,b)
  %4915 = fsub fast float -0.000000e+00, %4805
  %4916 = fsub fast float -0.000000e+00, %4806
  %4917 = fsub fast float -0.000000e+00, %4807
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4879, float %4880, float %4915, float %4916, float %4917)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = fsub fast float -0.000000e+00, %4918
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4790, float %4791, float %4915, float %4916, float %4917)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = fadd fast float %4920, %4763
  %4922 = fadd fast float %4762, %4920
  %4923 = fsub fast float -0.000000e+00, %4922
  %4924 = fcmp ogt float %4918, -0.000000e+00
  %4925 = select i1 %4924, float %4923, float %4921
  %4926 = call float @dx.op.unary.f32(i32 6, float %4919)  ; FAbs(value)
  %4927 = fdiv fast float 1.000000e+00, %4926
  %4928 = fmul fast float %4925, %4927
  %4929 = call float @dx.op.binary.f32(i32 35, float %4928, float 0.000000e+00)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 36, float %4914, float %4929)  ; FMin(a,b)
  %4931 = call float @dx.op.binary.f32(i32 36, float %4899, float %4930)  ; FMin(a,b)
  %4932 = fmul fast float %4931, %4878
  %4933 = fmul fast float %4931, %4879
  %4934 = fmul fast float %4931, %4880
  %4935 = fadd fast float %4932, %153
  %4936 = fadd fast float %4933, %154
  %4937 = fadd fast float %4934, %155
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.CBufRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4942 = fadd fast float %4935, %4939
  %4943 = fadd fast float %4936, %4940
  %4944 = fadd fast float %4937, %4941
  %4945 = fcmp fast olt float %4899, %4914
  %4946 = fcmp fast olt float %4899, %4929
  %4947 = and i1 %4945, %4946
  br i1 %4947, label %4951, label %4948

; <label>:4948                                    ; preds = %4884
  %4949 = fcmp fast olt float %4914, %4929
  br i1 %4949, label %4950, label %4951

; <label>:4950                                    ; preds = %4948
  br label %4951

; <label>:4951                                    ; preds = %4950, %4948, %4884
  %4952 = phi float [ 0.000000e+00, %4950 ], [ 0.000000e+00, %4948 ], [ 1.000000e+00, %4884 ]
  %4953 = phi float [ 1.000000e+00, %4950 ], [ 0.000000e+00, %4948 ], [ 0.000000e+00, %4884 ]
  %4954 = phi float [ 0.000000e+00, %4950 ], [ 1.000000e+00, %4948 ], [ 0.000000e+00, %4884 ]
  %4955 = phi float [ %4799, %4950 ], [ %4805, %4948 ], [ %4793, %4884 ]
  %4956 = phi float [ %4800, %4950 ], [ %4806, %4948 ], [ %4794, %4884 ]
  %4957 = phi float [ %4801, %4950 ], [ %4807, %4948 ], [ %4795, %4884 ]
  %4958 = call float @dx.op.unary.f32(i32 6, float %4957)  ; FAbs(value)
  %4959 = fcmp fast olt float %4958, 0x3FE276C8C0000000
  %4960 = select i1 %4959, float 0.000000e+00, float 1.000000e+00
  %4961 = select i1 %4959, float 1.000000e+00, float 0.000000e+00
  %4962 = fmul fast float %4961, %4956
  %4963 = fmul fast float %4960, %4957
  %4964 = fsub fast float %4962, %4963
  %4965 = fmul fast float %4955, %4961
  %4966 = fsub fast float -0.000000e+00, %4965
  %4967 = fmul fast float %4960, %4955
  %4968 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4966, float %4967, float %4964, float %4966, float %4967)  ; Dot3(ax,ay,az,bx,by,bz)
  %4969 = call float @dx.op.unary.f32(i32 25, float %4968)  ; Rsqrt(value)
  %4970 = fmul fast float %4964, %4969
  %4971 = fmul fast float %4969, %4966
  %4972 = fmul fast float %4967, %4969
  %4973 = fmul fast float %4972, %4956
  %4974 = fmul fast float %4971, %4957
  %4975 = fsub fast float %4973, %4974
  %4976 = fmul fast float %4970, %4957
  %4977 = fmul fast float %4972, %4955
  %4978 = fsub fast float %4976, %4977
  %4979 = fmul fast float %4971, %4955
  %4980 = fmul fast float %4970, %4956
  %4981 = fsub fast float %4979, %4980
  %4982 = call float @dx.op.dot3.f32(i32 55, float %4975, float %4978, float %4981, float %4975, float %4978, float %4981)  ; Dot3(ax,ay,az,bx,by,bz)
  %4983 = call float @dx.op.unary.f32(i32 25, float %4982)  ; Rsqrt(value)
  %4984 = fmul fast float %4975, %4983
  %4985 = fmul fast float %4978, %4983
  %4986 = fmul fast float %4981, %4983
  %4987 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float %4970, float %4971, float %4972)  ; Dot3(ax,ay,az,bx,by,bz)
  %4988 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float %4984, float %4985, float %4986)  ; Dot3(ax,ay,az,bx,by,bz)
  %4989 = fmul fast float %4987, 0x3FA99999A0000000
  %4990 = fmul fast float %4988, 0x3FA99999A0000000
  %4991 = call float @dx.op.unary.f32(i32 22, float %4989)  ; Frc(value)
  %4992 = call float @dx.op.unary.f32(i32 22, float %4990)  ; Frc(value)
  %4993 = fadd fast float %4991, 0xBFB99999A0000000
  %4994 = fadd fast float %4992, 0xBFB99999A0000000
  %4995 = call float @dx.op.unary.f32(i32 6, float %4993)  ; FAbs(value)
  %4996 = call float @dx.op.unary.f32(i32 6, float %4994)  ; FAbs(value)
  %4997 = fmul fast float %4995, 1.000000e+01
  %4998 = fmul fast float %4996, 1.000000e+01
  %4999 = call float @dx.op.binary.f32(i32 36, float %4997, float %4998)  ; FMin(a,b)
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = fmul fast float %5001, %4952
  %5003 = fmul fast float %5001, %4953
  %5004 = fmul fast float %5001, %4954
  %5005 = fsub fast float %4935, %4732
  %5006 = fsub fast float %4936, %4733
  %5007 = fsub fast float %4937, %4734
  br label %5015

; <label>:5008                                    ; preds = %4877
  %5009 = fmul fast float %4878, 8.096000e+03
  %5010 = fmul fast float %4879, 8.096000e+03
  %5011 = fmul fast float %4880, 8.096000e+03
  %5012 = fadd fast float %5009, %153
  %5013 = fadd fast float %5010, %154
  %5014 = fadd fast float %5011, %155
  br label %5015

; <label>:5015                                    ; preds = %5008, %4951
  %5016 = phi float [ %4878, %5008 ], [ %5005, %4951 ]
  %5017 = phi float [ %4879, %5008 ], [ %5006, %4951 ]
  %5018 = phi float [ %4880, %5008 ], [ %5007, %4951 ]
  %5019 = phi float [ %5012, %5008 ], [ %4935, %4951 ]
  %5020 = phi float [ %5013, %5008 ], [ %4936, %4951 ]
  %5021 = phi float [ %5014, %5008 ], [ %4937, %4951 ]
  %5022 = phi float [ 0.000000e+00, %5008 ], [ %5002, %4951 ]
  %5023 = phi float [ 0.000000e+00, %5008 ], [ %5003, %4951 ]
  %5024 = phi float [ 0.000000e+00, %5008 ], [ %5004, %4951 ]
  %5025 = fcmp fast olt float %4751, 1.000000e+00
  br i1 %5025, label %5026, label %5057, !dx.controlflow.hints !129

; <label>:5026                                    ; preds = %5015
  %5027 = fmul fast float %5018, %4749
  %5028 = fmul fast float %5017, %4750
  %5029 = fsub fast float %5027, %5028
  %5030 = fmul fast float %5016, %4750
  %5031 = fmul fast float %5018, %4748
  %5032 = fsub fast float %5030, %5031
  %5033 = fmul fast float %5017, %4748
  %5034 = fmul fast float %5016, %4749
  %5035 = fsub fast float %5033, %5034
  %5036 = fmul fast float %5029, 2.000000e+00
  %5037 = fmul fast float %5032, 2.000000e+00
  %5038 = fmul fast float %5035, 2.000000e+00
  %5039 = fmul fast float %5036, %4751
  %5040 = fmul fast float %5037, %4751
  %5041 = fmul fast float %5038, %4751
  %5042 = fmul fast float %5038, %4749
  %5043 = fmul fast float %5037, %4750
  %5044 = fmul fast float %5036, %4750
  %5045 = fmul fast float %5038, %4748
  %5046 = fmul fast float %5037, %4748
  %5047 = fmul fast float %5036, %4749
  %5048 = fadd fast float %5042, %5016
  %5049 = fadd fast float %5048, %5039
  %5050 = fsub fast float %5049, %5043
  %5051 = fsub fast float %5017, %5045
  %5052 = fadd fast float %5051, %5040
  %5053 = fadd fast float %5052, %5044
  %5054 = fadd fast float %5041, %5018
  %5055 = fsub fast float %5054, %5047
  %5056 = fadd fast float %5055, %5046
  br label %5057

; <label>:5057                                    ; preds = %5026, %5015
  %5058 = phi float [ %5050, %5026 ], [ %5016, %5015 ]
  %5059 = phi float [ %5053, %5026 ], [ %5017, %5015 ]
  %5060 = phi float [ %5056, %5026 ], [ %5018, %5015 ]
  br i1 %4883, label %5061, label %5092

; <label>:5061                                    ; preds = %5057
  %5062 = fmul fast float %2410, 0x400187C840000000
  %5063 = fadd fast float %5062, 0xC00EFC2120000000
  %5064 = fmul fast float %5063, %2410
  %5065 = fadd fast float %5064, 0x3FE5D16340000000
  %5066 = fmul fast float %5065, %2410
  %5067 = fadd fast float %5066, 1.000000e+00
  %5068 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5069 = fsub fast float %5019, %153
  %5070 = fsub fast float %5020, %154
  %5071 = fsub fast float %5021, %155
  %5072 = fsub fast float %5019, %4732
  %5073 = fsub fast float %5020, %4733
  %5074 = fsub fast float %5021, %4734
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5069, float %5070, float %5071, float %5069, float %5070, float %5071)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = call float @dx.op.dot3.f32(i32 55, float %5072, float %5073, float %5074, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5077 = fadd fast float %5076, 0x3EE4F8B580000000
  %5078 = fdiv fast float %5075, %5077
  %5079 = bitcast float %5078 to i32
  %5080 = ashr i32 %5079, 1
  %5081 = add nsw i32 %5080, 532487669
  %5082 = bitcast i32 %5081 to float
  %5083 = fmul fast float %5082, %5068
  %5084 = call float @dx.op.unary.f32(i32 7, float %5083)  ; Saturate(value)
  %5085 = fmul fast float %5084, 0x4009981AE0000000
  %5086 = fsub fast float 0x40111BBD80000000, %5085
  %5087 = fmul fast float %5086, %5084
  %5088 = fadd fast float %5087, 0xC0009F6020000000
  %5089 = fmul fast float %5088, %5084
  %5090 = fadd fast float %5089, 1.000000e+00
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  br label %5095

; <label>:5092                                    ; preds = %5057
  %5093 = icmp ne i32 %4777, -1
  %5094 = zext i1 %5093 to i32
  br label %5095

; <label>:5095                                    ; preds = %5092, %5061
  %5096 = phi float [ %2410, %5092 ], [ %5091, %5061 ]
  %5097 = phi i32 [ %5094, %5092 ], [ 0, %5061 ]
  %5098 = fmul float %5096, 5.000000e+00
  %5099 = fsub float 5.000000e+00, %5098
  %5100 = icmp ne i32 %5097, 0
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5103 = fadd fast float %5102, %5099
  %5104 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5103)  ; FMax(a,b)
  %5105 = call float @dx.op.unary.f32(i32 6, float %5058)  ; FAbs(value)
  %5106 = call float @dx.op.unary.f32(i32 6, float %5059)  ; FAbs(value)
  %5107 = fadd fast float %5106, %5105
  %5108 = call float @dx.op.unary.f32(i32 6, float %5060)  ; FAbs(value)
  %5109 = fadd fast float %5107, %5108
  %5110 = fcmp fast oeq float %5109, 0.000000e+00
  %5111 = fdiv fast float 1.000000e+00, %5109
  %5112 = select i1 %5110, float 1.000000e+00, float %5111
  %5113 = fmul fast float %5112, %5058
  %5114 = fmul fast float %5112, %5059
  %5115 = call float @dx.op.unary.f32(i32 6, float %5114)  ; FAbs(value)
  %5116 = call float @dx.op.unary.f32(i32 6, float %5113)  ; FAbs(value)
  %5117 = fsub fast float 1.000000e+00, %5115
  %5118 = fsub fast float 1.000000e+00, %5116
  %5119 = fcmp fast oge float %5113, 0.000000e+00
  %5120 = fcmp fast oge float %5114, 0.000000e+00
  %5121 = select i1 %5119, float 1.000000e+00, float -1.000000e+00
  %5122 = select i1 %5120, float 1.000000e+00, float -1.000000e+00
  %5123 = fcmp fast ole float %5060, 0.000000e+00
  %5124 = fmul fast float %5121, %5117
  %5125 = fmul fast float %5122, %5118
  %5126 = select i1 %5123, float %5124, float %5113
  %5127 = select i1 %5123, float %5125, float %5114
  %5128 = fmul fast float %5126, 5.000000e-01
  %5129 = fmul fast float %5127, 5.000000e-01
  %5130 = fadd fast float %5128, 5.000000e-01
  %5131 = fadd fast float %5129, 5.000000e-01
  %5132 = uitofp i32 %4775 to float
  %5133 = call float @dx.op.binary.f32(i32 36, float %5104, float 3.000000e+00)  ; FMin(a,b)
  %5134 = fadd fast float %5133, 2.000000e+00
  %5135 = call float @dx.op.unary.f32(i32 21, float %5134)  ; Exp(value)
  %5136 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5137 = fmul fast float %5136, %5135
  %5138 = fmul fast float %5137, 2.000000e+00
  %5139 = fsub fast float 1.000000e+00, %5138
  %5140 = fmul fast float %5130, %5139
  %5141 = fmul fast float %5131, %5139
  %5142 = fadd fast float %5140, %5137
  %5143 = fadd fast float %5141, %5137
  %5144 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %5142, float %5143, float %5132, float undef, i32 0, i32 0, i32 undef, float %5104)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5145 = extractvalue %dx.types.ResRet.f32 %5144, 0
  %5146 = extractvalue %dx.types.ResRet.f32 %5144, 1
  %5147 = extractvalue %dx.types.ResRet.f32 %5144, 2
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5150 = fmul fast float %5149, %4745
  %5151 = call float @dx.op.binary.f32(i32 36, float %4617, float %5150)  ; FMin(a,b)
  %5152 = select i1 %5100, float %5151, float %5150
  %5153 = fmul fast float %5145, %4825
  %5154 = fmul fast float %5153, %5152
  %5155 = fmul fast float %5146, %4825
  %5156 = fmul fast float %5155, %5152
  %5157 = fmul fast float %5147, %4825
  %5158 = fmul fast float %5157, %5152
  %5159 = fadd fast float %5154, %4712
  %5160 = fadd fast float %5156, %4713
  %5161 = fadd fast float %5158, %4714
  %5162 = fsub fast float %4723, %4825
  %5163 = and i32 %4840, 255
  %5164 = uitofp i32 %5163 to float
  %5165 = fptoui float %5164 to i32
  %5166 = icmp eq i32 %4835, 1
  %5167 = zext i1 %5166 to i32
  %5168 = add i32 %5167, %5165
  %5169 = uitofp i32 %5168 to float
  %5170 = fptoui float %5169 to i32
  %5171 = shl i32 %5170, 8
  %5172 = and i32 %5171, 65280
  %5173 = or i32 %5172, %4843
  %5174 = fmul fast float %5022, %4825
  %5175 = fmul fast float %5023, %4825
  %5176 = fmul fast float %5024, %4825
  %5177 = fadd fast float %5174, %4719
  %5178 = fadd fast float %5175, %4720
  %5179 = fadd fast float %5176, %4721
  %5180 = fmul fast float %5132, 0x3FE3C6EF40000000
  %5181 = call float @dx.op.unary.f32(i32 22, float %5180)  ; Frc(value)
  %5182 = fadd fast float %5181, 0x3FE5555560000000
  %5183 = fadd fast float %5181, 0x3FD5555560000000
  %5184 = fsub fast float -0.000000e+00, %5181
  %5185 = fsub fast float -0.000000e+00, %5182
  %5186 = fsub fast float -0.000000e+00, %5183
  %5187 = fcmp fast oge float %5181, %5184
  %5188 = fcmp fast oge float %5182, %5185
  %5189 = fcmp fast oge float %5183, %5186
  %5190 = call float @dx.op.unary.f32(i32 6, float %5181)  ; FAbs(value)
  %5191 = call float @dx.op.unary.f32(i32 6, float %5182)  ; FAbs(value)
  %5192 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5193 = call float @dx.op.unary.f32(i32 22, float %5190)  ; Frc(value)
  %5194 = call float @dx.op.unary.f32(i32 22, float %5191)  ; Frc(value)
  %5195 = call float @dx.op.unary.f32(i32 22, float %5192)  ; Frc(value)
  %5196 = fsub fast float -0.000000e+00, %5193
  %5197 = fsub fast float -0.000000e+00, %5194
  %5198 = fsub fast float -0.000000e+00, %5195
  %5199 = select i1 %5187, float %5193, float %5196
  %5200 = select i1 %5188, float %5194, float %5197
  %5201 = select i1 %5189, float %5195, float %5198
  %5202 = fmul fast float %5199, 6.000000e+00
  %5203 = fmul fast float %5200, 6.000000e+00
  %5204 = fmul fast float %5201, 6.000000e+00
  %5205 = fadd fast float %5202, -3.000000e+00
  %5206 = fadd fast float %5203, -3.000000e+00
  %5207 = fadd fast float %5204, -3.000000e+00
  %5208 = call float @dx.op.unary.f32(i32 6, float %5205)  ; FAbs(value)
  %5209 = call float @dx.op.unary.f32(i32 6, float %5206)  ; FAbs(value)
  %5210 = call float @dx.op.unary.f32(i32 6, float %5207)  ; FAbs(value)
  %5211 = fadd fast float %5208, -1.000000e+00
  %5212 = fadd fast float %5209, -1.000000e+00
  %5213 = fadd fast float %5210, -1.000000e+00
  %5214 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5215 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5216 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5217 = fmul fast float %5214, %4825
  %5218 = fmul fast float %5215, %4825
  %5219 = fmul fast float %5216, %4825
  %5220 = fadd fast float %5217, %4715
  %5221 = fadd fast float %5218, %4716
  %5222 = fadd fast float %5219, %4717
  %5223 = icmp eq i32 %4775, 0
  %5224 = select i1 %5223, i32 1, i32 %4718
  %5225 = icmp eq i32 %4722, 0
  br i1 %5225, label %4846, label %5226

; <label>:5226                                    ; preds = %5095
  %5227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5228 = extractvalue %dx.types.CBufRet.f32 %5227, 0
  %5229 = bitcast float %5228 to i32
  %5230 = lshr i32 %5229, 8
  %5231 = and i32 %5230, 255
  %5232 = uitofp i32 %5231 to float
  %5233 = fptoui float %5232 to i32
  %5234 = icmp eq i32 %5233, 16
  %5235 = bitcast float %5150 to i32
  %5236 = select i1 %5234, i32 %5235, i32 %4711
  %5237 = icmp eq i32 %5233, 17
  %5238 = bitcast float %4617 to i32
  %5239 = select i1 %5237, i32 %5238, i32 %5236
  %5240 = icmp eq i32 %5233, 18
  %5241 = bitcast float %5152 to i32
  %5242 = select i1 %5240, i32 %5241, i32 %5239
  br label %4846

; <label>:5243                                    ; preds = %4846
  br label %5244

; <label>:5244                                    ; preds = %5243, %4669
  %5245 = phi i32 [ %4670, %4669 ], [ %4847, %5243 ]
  %5246 = phi i32 [ %4671, %4669 ], [ %4848, %5243 ]
  %5247 = phi float [ %4672, %4669 ], [ %4849, %5243 ]
  %5248 = phi float [ %4673, %4669 ], [ %4850, %5243 ]
  %5249 = phi float [ %4674, %4669 ], [ %4851, %5243 ]
  %5250 = phi float [ %4675, %4669 ], [ %4852, %5243 ]
  %5251 = phi float [ %4676, %4669 ], [ %4853, %5243 ]
  %5252 = phi float [ %4677, %4669 ], [ %4854, %5243 ]
  %5253 = phi i32 [ %4678, %4669 ], [ %4855, %5243 ]
  %5254 = phi float [ %4679, %4669 ], [ %4856, %5243 ]
  %5255 = phi float [ %4680, %4669 ], [ %4857, %5243 ]
  %5256 = phi float [ %4681, %4669 ], [ %4858, %5243 ]
  %5257 = phi i32 [ %4682, %4669 ], [ %4859, %5243 ]
  %5258 = phi float [ %4683, %4669 ], [ %4860, %5243 ]
  %5259 = add i32 %4684, 1
  %5260 = icmp ugt i32 %5259, %4666
  br i1 %5260, label %5261, label %4669, !llvm.loop !130

; <label>:5261                                    ; preds = %5244
  br label %5262

; <label>:5262                                    ; preds = %5261, %4616
  %5263 = phi i32 [ %4280, %4616 ], [ %5245, %5261 ]
  %5264 = phi i32 [ %4604, %4616 ], [ %5246, %5261 ]
  %5265 = phi float [ 0.000000e+00, %4616 ], [ %5247, %5261 ]
  %5266 = phi float [ 0.000000e+00, %4616 ], [ %5248, %5261 ]
  %5267 = phi float [ 0.000000e+00, %4616 ], [ %5249, %5261 ]
  %5268 = phi float [ 0.000000e+00, %4616 ], [ %5250, %5261 ]
  %5269 = phi float [ 0.000000e+00, %4616 ], [ %5251, %5261 ]
  %5270 = phi float [ 0.000000e+00, %4616 ], [ %5252, %5261 ]
  %5271 = phi i32 [ 0, %4616 ], [ %5253, %5261 ]
  %5272 = phi float [ 0.000000e+00, %4616 ], [ %5254, %5261 ]
  %5273 = phi float [ 0.000000e+00, %4616 ], [ %5255, %5261 ]
  %5274 = phi float [ 0.000000e+00, %4616 ], [ %5256, %5261 ]
  %5275 = call float @dx.op.dot3.f32(i32 55, float %5265, float %5266, float %5267, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5276 = select i1 %2452, float 0.000000e+00, float %5265
  %5277 = select i1 %2452, float %5275, float %5266
  %5278 = select i1 %2452, float 0.000000e+00, float %5267
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = bitcast float %5280 to i32
  %5282 = lshr i32 %5281, 8
  %5283 = and i32 %5282, 255
  %5284 = uitofp i32 %5283 to float
  %5285 = fptoui float %5284 to i32
  %5286 = icmp eq i32 %5285, 13
  br i1 %5286, label %5287, label %5307

; <label>:5287                                    ; preds = %5262
  %5288 = fadd fast float %5268, 1.000000e+00
  %5289 = fadd fast float %5269, 1.000000e+00
  %5290 = fadd fast float %5270, 1.000000e+00
  %5291 = fmul fast float %5288, 5.000000e-01
  %5292 = fmul fast float %5289, 5.000000e-01
  %5293 = fmul fast float %5290, 5.000000e-01
  %5294 = call float @dx.op.unary.f32(i32 7, float %5291)  ; Saturate(value)
  %5295 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5296 = call float @dx.op.unary.f32(i32 7, float %5293)  ; Saturate(value)
  %5297 = fmul fast float %5294, 1.023000e+03
  %5298 = fmul fast float %5295, 1.023000e+03
  %5299 = fmul fast float %5296, 1.023000e+03
  %5300 = fptoui float %5297 to i32
  %5301 = fptoui float %5298 to i32
  %5302 = fptoui float %5299 to i32
  %5303 = shl i32 %5301, 10
  %5304 = or i32 %5303, %5300
  %5305 = shl i32 %5302, 20
  %5306 = or i32 %5304, %5305
  br label %5307

; <label>:5307                                    ; preds = %5287, %5262
  %5308 = phi i32 [ %5306, %5287 ], [ %5264, %5262 ]
  %5309 = icmp eq i32 %5285, 14
  %5310 = select i1 %5309, i32 %5271, i32 %5308
  %5311 = icmp eq i32 %5285, 22
  br i1 %5311, label %5312, label %5332

; <label>:5312                                    ; preds = %5307
  %5313 = fadd fast float %5272, 1.000000e+00
  %5314 = fadd fast float %5273, 1.000000e+00
  %5315 = fadd fast float %5274, 1.000000e+00
  %5316 = fmul fast float %5313, 5.000000e-01
  %5317 = fmul fast float %5314, 5.000000e-01
  %5318 = fmul fast float %5315, 5.000000e-01
  %5319 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5320 = call float @dx.op.unary.f32(i32 7, float %5317)  ; Saturate(value)
  %5321 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5322 = fmul fast float %5319, 1.023000e+03
  %5323 = fmul fast float %5320, 1.023000e+03
  %5324 = fmul fast float %5321, 1.023000e+03
  %5325 = fptoui float %5322 to i32
  %5326 = fptoui float %5323 to i32
  %5327 = fptoui float %5324 to i32
  %5328 = shl i32 %5326, 10
  %5329 = or i32 %5328, %5325
  %5330 = shl i32 %5327, 20
  %5331 = or i32 %5329, %5330
  br label %5332

; <label>:5332                                    ; preds = %5312, %5307
  %5333 = phi i32 [ %5331, %5312 ], [ %5310, %5307 ]
  %5334 = fcmp fast olt float %4605, 0.000000e+00
  %5335 = call float @dx.op.unary.f32(i32 6, float %4605)  ; FAbs(value)
  %5336 = fmul fast float %5335, %4606
  %5337 = fmul fast float %5335, %4607
  %5338 = fmul fast float %5335, %4608
  %5339 = select i1 %5334, float %4606, float %5336
  %5340 = select i1 %5334, float %4607, float %5337
  %5341 = select i1 %5334, float %4608, float %5338
  %5342 = fsub fast float 1.000000e+00, %5335
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, %5276
  %5345 = fmul fast float %5343, %5277
  %5346 = fmul fast float %5343, %5278
  %5347 = fadd fast float %5339, %5344
  %5348 = fadd fast float %5340, %5345
  %5349 = fadd fast float %5341, %5346
  br label %5350

; <label>:5350                                    ; preds = %5332, %4603
  %5351 = phi i32 [ %4280, %4603 ], [ %5263, %5332 ]
  %5352 = phi i32 [ %4604, %4603 ], [ %5333, %5332 ]
  %5353 = phi float [ %4606, %4603 ], [ %5347, %5332 ]
  %5354 = phi float [ %4607, %4603 ], [ %5348, %5332 ]
  %5355 = phi float [ %4608, %4603 ], [ %5349, %5332 ]
  %5356 = fmul fast float %3565, %2413
  %5357 = fmul fast float %4282, %3565
  %5358 = fmul fast float %4283, %3565
  %5359 = fmul fast float %4284, %3565
  %5360 = fmul fast float %5353, %2367
  %5361 = fmul fast float %5354, %2368
  %5362 = fmul fast float %5355, %3562
  %5363 = fadd fast float %5360, %2238
  %5364 = fadd fast float %5361, %2239
  %5365 = fadd fast float %5362, %2240
  %5366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5367 = extractvalue %dx.types.CBufRet.f32 %5366, 3
  %5368 = fcmp fast oeq float %5367, 0.000000e+00
  br i1 %5368, label %7150, label %5369

; <label>:5369                                    ; preds = %5350
  %5370 = extractvalue %dx.types.CBufRet.f32 %5366, 0
  %5371 = extractvalue %dx.types.CBufRet.f32 %5366, 1
  %5372 = extractvalue %dx.types.CBufRet.f32 %5366, 2
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 0
  %5375 = extractvalue %dx.types.CBufRet.f32 %5373, 1
  %5376 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5378 = extractvalue %dx.types.CBufRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.CBufRet.f32 %5377, 1
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5374, float %5375, float %5376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = select i1 %2452, float %5378, float %5374
  %5382 = select i1 %2452, float %5380, float %5375
  %5383 = select i1 %2452, float %5379, float %5376
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.CBufRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.CBufRet.f32 %5384, 2
  %5388 = extractvalue %dx.types.CBufRet.f32 %5384, 3
  %5389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5390 = extractvalue %dx.types.CBufRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.CBufRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.CBufRet.f32 %5389, 2
  %5393 = extractvalue %dx.types.CBufRet.f32 %5389, 3
  %5394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5395 = extractvalue %dx.types.CBufRet.f32 %5394, 0
  %5396 = extractvalue %dx.types.CBufRet.f32 %5394, 1
  %5397 = extractvalue %dx.types.CBufRet.f32 %5394, 2
  %5398 = extractvalue %dx.types.CBufRet.f32 %5394, 3
  %5399 = fmul fast float %5385, %153
  %5400 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5386, float %5399)  ; FMad(a,b,c)
  %5401 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5387, float %5400)  ; FMad(a,b,c)
  %5402 = fadd fast float %5401, %5388
  %5403 = fmul fast float %5390, %153
  %5404 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5391, float %5403)  ; FMad(a,b,c)
  %5405 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5392, float %5404)  ; FMad(a,b,c)
  %5406 = fadd fast float %5405, %5393
  %5407 = fmul fast float %5395, %153
  %5408 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5396, float %5407)  ; FMad(a,b,c)
  %5409 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5397, float %5408)  ; FMad(a,b,c)
  %5410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5411 = extractvalue %dx.types.CBufRet.f32 %5410, 0
  %5412 = extractvalue %dx.types.CBufRet.f32 %5410, 1
  %5413 = extractvalue %dx.types.CBufRet.f32 %5410, 3
  %5414 = fmul fast float %5413, %5402
  %5415 = fmul fast float %5413, %5406
  %5416 = fadd fast float %5414, %5411
  %5417 = fadd fast float %5415, %5412
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 0
  %5420 = extractvalue %dx.types.CBufRet.f32 %5418, 1
  %5421 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5422 = fmul fast float %5421, %5402
  %5423 = fmul fast float %5421, %5406
  %5424 = fadd fast float %5422, %5419
  %5425 = fadd fast float %5423, %5420
  %5426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.f32 %5426, 1
  %5428 = fsub fast float -0.000000e+00, %5398
  %5429 = fsub fast float %5428, %5409
  %5430 = fadd fast float %5429, %5427
  %5431 = extractvalue %dx.types.CBufRet.f32 %5426, 2
  %5432 = fmul fast float %5430, %5431
  %5433 = fsub fast float 1.000000e+00, %5432
  %5434 = call float @dx.op.unary.f32(i32 7, float %5433)  ; Saturate(value)
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = fsub fast float %5424, %5436
  %5439 = fsub fast float %5425, %5437
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = fsub fast float %5416, %5442
  %5445 = fsub fast float %5417, %5443
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = fsub fast float %5402, %5448
  %5451 = fsub fast float %5406, %5449
  %5452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 0
  %5455 = bitcast float %5454 to i32
  %5456 = lshr i32 %5455, 8
  %5457 = and i32 %5456, 255
  %5458 = uitofp i32 %5457 to float
  %5459 = fptoui float %5458 to i32
  %5460 = and i32 %5459, -2
  %5461 = icmp eq i32 %5460, 10
  br i1 %5461, label %5462, label %5532

; <label>:5462                                    ; preds = %5369
  %5463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5464 = extractvalue %dx.types.CBufRet.f32 %5463, 0
  %5465 = fcmp fast olt float %5450, 0.000000e+00
  %5466 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5467 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5468 = select i1 %5465, float %5466, float %5467
  %5469 = fmul fast float %5468, %5450
  %5470 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5471 = fcmp fast olt float %5451, 0.000000e+00
  %5472 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5473 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5474 = select i1 %5471, float %5472, float %5473
  %5475 = fmul fast float %5474, %5451
  %5476 = call float @dx.op.unary.f32(i32 6, float %5475)  ; FAbs(value)
  %5477 = call float @dx.op.binary.f32(i32 35, float %5470, float %5476)  ; FMax(a,b)
  %5478 = fsub fast float %5464, %5477
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = fmul fast float %5479, %5434
  %5481 = fcmp fast olt float %5444, 0.000000e+00
  %5482 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5484 = select i1 %5481, float %5482, float %5483
  %5485 = fmul fast float %5484, %5444
  %5486 = call float @dx.op.unary.f32(i32 6, float %5485)  ; FAbs(value)
  %5487 = fcmp fast olt float %5445, 0.000000e+00
  %5488 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5490 = select i1 %5487, float %5488, float %5489
  %5491 = fmul fast float %5490, %5445
  %5492 = call float @dx.op.unary.f32(i32 6, float %5491)  ; FAbs(value)
  %5493 = call float @dx.op.binary.f32(i32 35, float %5486, float %5492)  ; FMax(a,b)
  %5494 = fsub fast float %5464, %5493
  %5495 = call float @dx.op.unary.f32(i32 7, float %5494)  ; Saturate(value)
  %5496 = fmul fast float %5495, %5434
  %5497 = fcmp fast olt float %5438, 0.000000e+00
  %5498 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5499 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5500 = select i1 %5497, float %5498, float %5499
  %5501 = fmul fast float %5500, %5438
  %5502 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5503 = fcmp fast olt float %5439, 0.000000e+00
  %5504 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5505 = extractvalue %dx.types.CBufRet.f32 %5440, 3
  %5506 = select i1 %5503, float %5504, float %5505
  %5507 = fmul fast float %5506, %5439
  %5508 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5509 = call float @dx.op.binary.f32(i32 35, float %5502, float %5508)  ; FMax(a,b)
  %5510 = fsub fast float %5464, %5509
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = fmul fast float %5511, %5434
  %5513 = fadd fast float %5480, 1.000000e+00
  %5514 = fadd fast float %5496, 1.000000e+00
  %5515 = fadd fast float %5512, 1.000000e+00
  %5516 = fmul fast float %5513, 5.000000e-01
  %5517 = fmul fast float %5514, 5.000000e-01
  %5518 = fmul fast float %5515, 5.000000e-01
  %5519 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5520 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5522 = fmul fast float %5519, 1.023000e+03
  %5523 = fmul fast float %5520, 1.023000e+03
  %5524 = fmul fast float %5521, 1.023000e+03
  %5525 = fptoui float %5522 to i32
  %5526 = fptoui float %5523 to i32
  %5527 = fptoui float %5524 to i32
  %5528 = shl i32 %5526, 10
  %5529 = or i32 %5528, %5525
  %5530 = shl i32 %5527, 20
  %5531 = or i32 %5529, %5530
  br label %5532

; <label>:5532                                    ; preds = %5462, %5369
  %5533 = phi i32 [ %5531, %5462 ], [ %5352, %5369 ]
  %5534 = fcmp fast olt float %5367, 0.000000e+00
  br i1 %5534, label %6846, label %5535

; <label>:5535                                    ; preds = %5532
  %5536 = fadd fast float %5409, %5398
  %5537 = fsub fast float %5427, %5536
  %5538 = fmul fast float %5537, %5431
  %5539 = fsub fast float 1.000000e+00, %5538
  %5540 = call float @dx.op.unary.f32(i32 7, float %5539)  ; Saturate(value)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5418, 2
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 2
  %5544 = fadd fast float %5543, %5541
  %5545 = fcmp fast ogt float %5544, 0.000000e+00
  br i1 %5545, label %5546, label %5565

; <label>:5546                                    ; preds = %5535
  %5547 = fcmp fast olt float %5438, 0.000000e+00
  %5548 = fcmp fast olt float %5439, 0.000000e+00
  %5549 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5550 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5551 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5552 = extractvalue %dx.types.CBufRet.f32 %5440, 3
  %5553 = select i1 %5547, float %5549, float %5551
  %5554 = select i1 %5548, float %5550, float %5552
  %5555 = fmul fast float %5553, %5438
  %5556 = fmul fast float %5554, %5439
  %5557 = call float @dx.op.unary.f32(i32 6, float %5555)  ; FAbs(value)
  %5558 = call float @dx.op.unary.f32(i32 6, float %5556)  ; FAbs(value)
  %5559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5560 = extractvalue %dx.types.CBufRet.f32 %5559, 0
  %5561 = call float @dx.op.binary.f32(i32 35, float %5557, float %5558)  ; FMax(a,b)
  %5562 = fsub fast float %5560, %5561
  %5563 = call float @dx.op.unary.f32(i32 7, float %5562)  ; Saturate(value)
  %5564 = fmul fast float %5563, %5540
  br label %5565

; <label>:5565                                    ; preds = %5546, %5535
  %5566 = phi float [ %5564, %5546 ], [ 0.000000e+00, %5535 ]
  %5567 = extractvalue %dx.types.CBufRet.f32 %5410, 2
  %5568 = extractvalue %dx.types.CBufRet.f32 %5542, 1
  %5569 = fadd fast float %5568, %5567
  %5570 = fcmp fast ogt float %5569, 0.000000e+00
  br i1 %5570, label %5571, label %5590

; <label>:5571                                    ; preds = %5565
  %5572 = fcmp fast olt float %5444, 0.000000e+00
  %5573 = fcmp fast olt float %5445, 0.000000e+00
  %5574 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5575 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5576 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5577 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5578 = select i1 %5572, float %5574, float %5576
  %5579 = select i1 %5573, float %5575, float %5577
  %5580 = fmul fast float %5578, %5444
  %5581 = fmul fast float %5579, %5445
  %5582 = call float @dx.op.unary.f32(i32 6, float %5580)  ; FAbs(value)
  %5583 = call float @dx.op.unary.f32(i32 6, float %5581)  ; FAbs(value)
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = call float @dx.op.binary.f32(i32 35, float %5582, float %5583)  ; FMax(a,b)
  %5587 = fsub fast float %5585, %5586
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fmul fast float %5588, %5540
  br label %5590

; <label>:5590                                    ; preds = %5571, %5565
  %5591 = phi float [ %5589, %5571 ], [ 0.000000e+00, %5565 ]
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5594 = call float @dx.op.unary.f32(i32 7, float %5593)  ; Saturate(value)
  %5595 = fcmp fast olt float %5450, 0.000000e+00
  %5596 = fcmp fast olt float %5451, 0.000000e+00
  %5597 = extractvalue %dx.types.CBufRet.f32 %5452, 0
  %5598 = extractvalue %dx.types.CBufRet.f32 %5452, 1
  %5599 = extractvalue %dx.types.CBufRet.f32 %5452, 2
  %5600 = extractvalue %dx.types.CBufRet.f32 %5452, 3
  %5601 = select i1 %5595, float %5597, float %5599
  %5602 = select i1 %5596, float %5598, float %5600
  %5603 = fmul fast float %5601, %5450
  %5604 = fmul fast float %5602, %5451
  %5605 = call float @dx.op.unary.f32(i32 6, float %5603)  ; FAbs(value)
  %5606 = call float @dx.op.unary.f32(i32 6, float %5604)  ; FAbs(value)
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = call float @dx.op.binary.f32(i32 35, float %5605, float %5606)  ; FMax(a,b)
  %5610 = fsub fast float %5608, %5609
  %5611 = call float @dx.op.unary.f32(i32 7, float %5610)  ; Saturate(value)
  %5612 = call float @dx.op.binary.f32(i32 36, float %5611, float %5594)  ; FMin(a,b)
  %5613 = fmul fast float %5612, %5540
  %5614 = fsub fast float %5591, %5613
  %5615 = fsub fast float %5566, %5591
  %5616 = fsub fast float %5615, %5613
  %5617 = call float @dx.op.binary.f32(i32 35, float %5591, float %5566)  ; FMax(a,b)
  %5618 = call float @dx.op.binary.f32(i32 35, float %5613, float %5617)  ; FMax(a,b)
  %5619 = fcmp fast olt float %5618, 1.000000e+00
  br i1 %5619, label %5620, label %6291, !dx.controlflow.hints !133

; <label>:5620                                    ; preds = %5590
  %5621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5622 = extractvalue %dx.types.CBufRet.f32 %5621, 0
  %5623 = fcmp fast une float %5622, 0.000000e+00
  br i1 %5623, label %5624, label %6291, !dx.controlflow.hints !134

; <label>:5624                                    ; preds = %5620
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5629 = extractvalue %dx.types.CBufRet.f32 %5625, 3
  %5630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5631 = extractvalue %dx.types.CBufRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.CBufRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.CBufRet.f32 %5630, 2
  %5634 = extractvalue %dx.types.CBufRet.f32 %5630, 3
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5639 = extractvalue %dx.types.CBufRet.f32 %5635, 3
  %5640 = fmul fast float %5626, %153
  %5641 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5627, float %5640)  ; FMad(a,b,c)
  %5642 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5628, float %5641)  ; FMad(a,b,c)
  %5643 = fadd fast float %5642, %5629
  %5644 = fmul fast float %5631, %153
  %5645 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5632, float %5644)  ; FMad(a,b,c)
  %5646 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5633, float %5645)  ; FMad(a,b,c)
  %5647 = fadd fast float %5646, %5634
  %5648 = fmul fast float %5636, %153
  %5649 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5637, float %5648)  ; FMad(a,b,c)
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5638, float %5649)  ; FMad(a,b,c)
  %5651 = fadd fast float %5650, %5639
  %5652 = fcmp fast oge float %5643, 1.000000e+00
  %5653 = fcmp fast oge float %5647, 1.000000e+00
  %5654 = or i1 %5652, %5653
  %5655 = fcmp fast olt float %5643, 0.000000e+00
  %5656 = fcmp fast olt float %5647, 0.000000e+00
  %5657 = or i1 %5655, %5656
  %5658 = or i1 %5654, %5657
  br i1 %5658, label %6291, label %5659, !dx.controlflow.hints !135

; <label>:5659                                    ; preds = %5624
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 1
  %5666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5667 = extractvalue %dx.types.CBufRet.i32 %5666, 2
  %5668 = uitofp i32 %5667 to float
  %5669 = extractvalue %dx.types.CBufRet.i32 %5666, 3
  %5670 = uitofp i32 %5669 to float
  %5671 = extractvalue %dx.types.CBufRet.f32 %5660, 3
  %5672 = fmul fast float %5671, 2.000000e+00
  %5673 = fsub fast float %5643, %5661
  %5674 = fsub fast float %5647, %5662
  %5675 = fmul fast float %5672, %5673
  %5676 = fmul fast float %5672, %5674
  %5677 = fdiv fast float 1.000000e+00, %5372
  %5678 = fmul fast float %5676, %5677
  %5679 = call float @dx.op.unary.f32(i32 6, float %5678)  ; FAbs(value)
  %5680 = fmul fast float %5663, %155
  %5681 = fmul fast float %5680, %5672
  %5682 = call float @dx.op.unary.f32(i32 6, float %5681)  ; FAbs(value)
  %5683 = call float @dx.op.unary.f32(i32 6, float %5675)  ; FAbs(value)
  %5684 = call float @dx.op.binary.f32(i32 35, float %5682, float %5679)  ; FMax(a,b)
  %5685 = call float @dx.op.binary.f32(i32 35, float %5683, float %5684)  ; FMax(a,b)
  %5686 = fmul fast float %5685, 2.000000e+00
  %5687 = call float @dx.op.unary.f32(i32 23, float %5686)  ; Log(value)
  %5688 = call float @dx.op.binary.f32(i32 35, float %5687, float %5668)  ; FMax(a,b)
  %5689 = call float @dx.op.unary.f32(i32 22, float %5688)  ; Frc(value)
  %5690 = fadd fast float %5689, 0xBFEA666660000000
  %5691 = fmul fast float %5690, 8.000000e+00
  %5692 = call float @dx.op.unary.f32(i32 7, float %5691)  ; Saturate(value)
  %5693 = call float @dx.op.unary.f32(i32 27, float %5688)  ; Round_ni(value)
  %5694 = fadd fast float %5693, %5692
  %5695 = call float @dx.op.binary.f32(i32 36, float %5694, float %5670)  ; FMin(a,b)
  %5696 = call float @dx.op.unary.f32(i32 27, float %5695)  ; Round_ni(value)
  %5697 = fsub fast float -0.000000e+00, %5696
  %5698 = call float @dx.op.unary.f32(i32 21, float %5697)  ; Exp(value)
  %5699 = fmul fast float %5698, %5672
  %5700 = fmul fast float %5699, %5643
  %5701 = fmul fast float %5699, %5647
  %5702 = fmul fast float %5700, 5.000000e-01
  %5703 = fmul fast float %5701, 5.000000e-01
  %5704 = fadd fast float %5702, 5.000000e-01
  %5705 = fadd fast float %5703, 5.000000e-01
  %5706 = fmul fast float %5700, 2.500000e-01
  %5707 = fmul fast float %5701, 2.500000e-01
  %5708 = fadd fast float %5706, 5.000000e-01
  %5709 = fadd fast float %5707, 5.000000e-01
  %5710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5711 = extractvalue %dx.types.ResRet.i32 %5710, 0
  %5712 = and i32 %5711, 536870911
  %5713 = lshr i32 %5712, 9
  %5714 = uitofp i32 %5713 to float
  %5715 = fmul fast float %5714, %5643
  %5716 = fmul fast float %5714, %5647
  %5717 = call float @dx.op.unary.f32(i32 22, float %5715)  ; Frc(value)
  %5718 = call float @dx.op.unary.f32(i32 22, float %5716)  ; Frc(value)
  %5719 = call float @dx.op.unary.f32(i32 22, float %5692)  ; Frc(value)
  %5720 = fcmp fast une float %5719, 0.000000e+00
  br i1 %5720, label %5721, label %5819, !dx.controlflow.hints !136

; <label>:5721                                    ; preds = %5659
  %5722 = call float @dx.op.unary.f32(i32 21, float %5693)  ; Exp(value)
  %5723 = fmul fast float %5722, 1.953125e-03
  %5724 = fcmp fast olt float %5717, %5723
  %5725 = fcmp fast olt float %5718, %5723
  %5726 = or i1 %5724, %5725
  %5727 = fsub fast float 1.000000e+00, %5723
  %5728 = fcmp fast ogt float %5717, %5727
  %5729 = fcmp fast ogt float %5718, %5727
  %5730 = or i1 %5728, %5729
  %5731 = or i1 %5726, %5730
  br i1 %5731, label %5732, label %5898, !dx.controlflow.hints !137

; <label>:5732                                    ; preds = %5721
  %5733 = fmul fast float %5665, 5.000000e-01
  %5734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.i32 %5734, 0
  %5736 = fmul fast float %5647, 3.530000e+02
  %5737 = uitofp i32 %5712 to float
  %5738 = fmul fast float %5736, %5737
  %5739 = fmul fast float %5643, 6.130000e+02
  %5740 = fadd fast float %5738, %5739
  %5741 = fptoui float %5740 to i32
  %5742 = add i32 %5735, %5741
  %5743 = mul i32 %5742, -63
  %5744 = lshr i32 %5743, 17
  %5745 = xor i32 %5744, %5743
  %5746 = mul i32 %5745, -511
  %5747 = mul i32 %5745, -8176
  %5748 = xor i32 %5746, %5747
  %5749 = mul i32 %5748, -7
  %5750 = mul i32 %5748, -7168
  %5751 = xor i32 %5749, %5750
  %5752 = lshr i32 %5751, 15
  %5753 = xor i32 %5752, %5749
  %5754 = and i32 %5753, 15
  %5755 = mul i32 %5754, 2
  %5756 = add i32 0, %5755
  %5757 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5756
  %5758 = load float, float* %5757, align 4
  %5759 = mul i32 %5754, 2
  %5760 = add i32 1, %5759
  %5761 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5760
  %5762 = load float, float* %5761, align 4
  %5763 = fmul fast float %5647, 2.770000e+02
  %5764 = fmul fast float %5763, %5737
  %5765 = fmul fast float %5643, 5.990000e+02
  %5766 = fadd fast float %5764, %5765
  %5767 = fptoui float %5766 to i32
  %5768 = mul i32 %5767, -63
  %5769 = lshr i32 %5768, 17
  %5770 = xor i32 %5769, %5768
  %5771 = mul i32 %5770, -511
  %5772 = mul i32 %5770, -8176
  %5773 = xor i32 %5771, %5772
  %5774 = mul i32 %5773, -7
  %5775 = mul i32 %5773, -7168
  %5776 = xor i32 %5774, %5775
  %5777 = lshr i32 %5776, 15
  %5778 = xor i32 %5777, %5774
  %5779 = and i32 %5778, 63
  %5780 = mul i32 %5779, 2
  %5781 = add i32 0, %5780
  %5782 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5781
  %5783 = load float, float* %5782, align 4
  %5784 = mul i32 %5779, 2
  %5785 = add i32 1, %5784
  %5786 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5785
  %5787 = load float, float* %5786, align 4
  %5788 = call float @dx.op.dot2.f32(i32 54, float %5758, float %5762, float %5783, float %5787)  ; Dot2(ax,ay,bx,by)
  %5789 = fsub fast float -0.000000e+00, %5783
  %5790 = call float @dx.op.dot2.f32(i32 54, float %5758, float %5762, float %5789, float %5787)  ; Dot2(ax,ay,bx,by)
  %5791 = fmul fast float %5788, %5733
  %5792 = fmul fast float %5790, %5733
  %5793 = fdiv fast float 2.000000e+00, %5699
  %5794 = fmul fast float %5722, 9.765625e-04
  %5795 = fcmp fast olt float %5717, %5794
  %5796 = fcmp fast olt float %5718, %5794
  %5797 = or i1 %5795, %5796
  %5798 = fsub fast float 1.000000e+00, %5794
  %5799 = fcmp fast ogt float %5717, %5798
  %5800 = fcmp fast ogt float %5718, %5798
  %5801 = or i1 %5799, %5800
  %5802 = or i1 %5797, %5801
  %5803 = fmul fast float %5791, 2.000000e+00
  br i1 %5802, label %5804, label %5808

; <label>:5804                                    ; preds = %5732
  %5805 = fmul fast float %5792, 2.000000e+00
  %5806 = fadd fast float %5803, %5704
  %5807 = fadd fast float %5805, %5705
  br label %5808

; <label>:5808                                    ; preds = %5804, %5732
  %5809 = phi float [ %5806, %5804 ], [ %5704, %5732 ]
  %5810 = phi float [ %5807, %5804 ], [ %5705, %5732 ]
  %5811 = phi i32 [ 3, %5804 ], [ 2, %5732 ]
  %5812 = fadd fast float %5791, %5708
  %5813 = fadd fast float %5792, %5709
  %5814 = fmul fast float %5803, %5793
  %5815 = fmul fast float %5793, 2.000000e+00
  %5816 = fmul fast float %5815, %5792
  %5817 = fadd fast float %5814, %5643
  %5818 = fadd fast float %5816, %5647
  br label %5898

; <label>:5819                                    ; preds = %5659
  %5820 = call float @dx.op.unary.f32(i32 21, float %5696)  ; Exp(value)
  %5821 = fmul fast float %5820, 9.765625e-04
  %5822 = fcmp fast olt float %5717, %5821
  %5823 = fcmp fast olt float %5718, %5821
  %5824 = or i1 %5822, %5823
  %5825 = fsub fast float 1.000000e+00, %5821
  %5826 = fcmp fast ogt float %5717, %5825
  %5827 = fcmp fast ogt float %5718, %5825
  %5828 = or i1 %5826, %5827
  %5829 = or i1 %5824, %5828
  br i1 %5829, label %5830, label %5898, !dx.controlflow.hints !138

; <label>:5830                                    ; preds = %5819
  %5831 = fmul fast float %5665, 5.000000e-01
  %5832 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5833 = extractvalue %dx.types.CBufRet.i32 %5832, 0
  %5834 = fmul fast float %5647, 3.530000e+02
  %5835 = uitofp i32 %5712 to float
  %5836 = fmul fast float %5834, %5835
  %5837 = fmul fast float %5643, 6.130000e+02
  %5838 = fadd fast float %5836, %5837
  %5839 = fptoui float %5838 to i32
  %5840 = add i32 %5833, %5839
  %5841 = mul i32 %5840, -63
  %5842 = lshr i32 %5841, 17
  %5843 = xor i32 %5842, %5841
  %5844 = mul i32 %5843, -511
  %5845 = mul i32 %5843, -8176
  %5846 = xor i32 %5844, %5845
  %5847 = mul i32 %5846, -7
  %5848 = mul i32 %5846, -7168
  %5849 = xor i32 %5847, %5848
  %5850 = lshr i32 %5849, 15
  %5851 = xor i32 %5850, %5847
  %5852 = and i32 %5851, 15
  %5853 = mul i32 %5852, 2
  %5854 = add i32 0, %5853
  %5855 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5854
  %5856 = load float, float* %5855, align 4
  %5857 = mul i32 %5852, 2
  %5858 = add i32 1, %5857
  %5859 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5858
  %5860 = load float, float* %5859, align 4
  %5861 = fmul fast float %5647, 2.770000e+02
  %5862 = fmul fast float %5861, %5835
  %5863 = fmul fast float %5643, 5.990000e+02
  %5864 = fadd fast float %5862, %5863
  %5865 = fptoui float %5864 to i32
  %5866 = mul i32 %5865, -63
  %5867 = lshr i32 %5866, 17
  %5868 = xor i32 %5867, %5866
  %5869 = mul i32 %5868, -511
  %5870 = mul i32 %5868, -8176
  %5871 = xor i32 %5869, %5870
  %5872 = mul i32 %5871, -7
  %5873 = mul i32 %5871, -7168
  %5874 = xor i32 %5872, %5873
  %5875 = lshr i32 %5874, 15
  %5876 = xor i32 %5875, %5872
  %5877 = and i32 %5876, 63
  %5878 = mul i32 %5877, 2
  %5879 = add i32 0, %5878
  %5880 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5879
  %5881 = load float, float* %5880, align 4
  %5882 = mul i32 %5877, 2
  %5883 = add i32 1, %5882
  %5884 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5883
  %5885 = load float, float* %5884, align 4
  %5886 = call float @dx.op.dot2.f32(i32 54, float %5856, float %5860, float %5881, float %5885)  ; Dot2(ax,ay,bx,by)
  %5887 = fsub fast float -0.000000e+00, %5881
  %5888 = call float @dx.op.dot2.f32(i32 54, float %5856, float %5860, float %5887, float %5885)  ; Dot2(ax,ay,bx,by)
  %5889 = fmul fast float %5886, %5831
  %5890 = fmul fast float %5888, %5831
  %5891 = fadd fast float %5889, %5704
  %5892 = fadd fast float %5890, %5705
  %5893 = fdiv fast float 2.000000e+00, %5699
  %5894 = fmul fast float %5893, %5889
  %5895 = fmul fast float %5890, %5893
  %5896 = fadd fast float %5894, %5643
  %5897 = fadd fast float %5895, %5647
  br label %5898

; <label>:5898                                    ; preds = %5830, %5819, %5808, %5721
  %5899 = phi float [ %5812, %5808 ], [ %5708, %5721 ], [ %5708, %5830 ], [ %5708, %5819 ]
  %5900 = phi float [ %5813, %5808 ], [ %5709, %5721 ], [ %5709, %5830 ], [ %5709, %5819 ]
  %5901 = phi float [ %5809, %5808 ], [ %5704, %5721 ], [ %5891, %5830 ], [ %5704, %5819 ]
  %5902 = phi float [ %5810, %5808 ], [ %5705, %5721 ], [ %5892, %5830 ], [ %5705, %5819 ]
  %5903 = phi i32 [ %5811, %5808 ], [ 0, %5721 ], [ 1, %5830 ], [ 0, %5819 ]
  %5904 = phi float [ %5817, %5808 ], [ %5643, %5721 ], [ %5896, %5830 ], [ %5643, %5819 ]
  %5905 = phi float [ %5818, %5808 ], [ %5647, %5721 ], [ %5897, %5830 ], [ %5647, %5819 ]
  %5906 = fsub fast float %5670, %5668
  %5907 = fptoui float %5906 to i32
  %5908 = add i32 %5907, 320
  %5909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %5908)  ; CBufferLoadLegacy(handle,regIndex)
  %5910 = extractvalue %dx.types.CBufRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.CBufRet.f32 %5909, 1
  %5912 = fcmp fast une float %5695, %5670
  %5913 = fsub fast float %5904, %5910
  %5914 = fsub fast float %5905, %5911
  %5915 = call float @dx.op.unary.f32(i32 6, float %5913)  ; FAbs(value)
  %5916 = call float @dx.op.unary.f32(i32 6, float %5914)  ; FAbs(value)
  %5917 = fmul fast float %5915, %5699
  %5918 = fmul fast float %5916, %5699
  %5919 = fcmp fast olt float %5917, 1.000000e+00
  %5920 = fcmp fast olt float %5918, 1.000000e+00
  %5921 = and i1 %5919, %5920
  %5922 = or i1 %5912, %5921
  br i1 %5922, label %5923, label %6291, !dx.controlflow.hints !139

; <label>:5923                                    ; preds = %5898
  %5924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.i32 %5924, 2
  %5926 = sitofp i32 %5925 to float
  %5927 = fsub fast float %5695, %5926
  %5928 = call float @dx.op.unary.f32(i32 27, float %5927)  ; Round_ni(value)
  %5929 = call float @dx.op.unary.f32(i32 22, float %5695)  ; Frc(value)
  %5930 = icmp eq i32 %5903, 0
  %5931 = call float @dx.op.unary.f32(i32 22, float %5901)  ; Frc(value)
  %5932 = call float @dx.op.unary.f32(i32 22, float %5902)  ; Frc(value)
  br i1 %5930, label %6003, label %5933, !dx.controlflow.hints !140

; <label>:5933                                    ; preds = %5923
  %5934 = and i32 %5903, 1
  %5935 = icmp eq i32 %5934, 0
  br i1 %5935, label %5949, label %5936, !dx.controlflow.hints !141

; <label>:5936                                    ; preds = %5933
  %5937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5938 = extractvalue %dx.types.CBufRet.f32 %5937, 0
  %5939 = fmul fast float %5931, %5938
  %5940 = fmul fast float %5932, %5938
  %5941 = fptoui float %5939 to i32
  %5942 = fptoui float %5940 to i32
  %5943 = fptoui float %5928 to i32
  %5944 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5941, i32 %5942, i32 %5943, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  %5948 = extractvalue %dx.types.ResRet.f32 %5944, 3
  br label %5955

; <label>:5949                                    ; preds = %5933
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5931, float %5932, float %5928, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = extractvalue %dx.types.ResRet.f32 %5950, 1
  %5953 = extractvalue %dx.types.ResRet.f32 %5950, 2
  %5954 = extractvalue %dx.types.ResRet.f32 %5950, 3
  br label %5955

; <label>:5955                                    ; preds = %5949, %5936
  %5956 = phi float [ %5945, %5936 ], [ %5951, %5949 ]
  %5957 = phi float [ %5946, %5936 ], [ %5952, %5949 ]
  %5958 = phi float [ %5947, %5936 ], [ %5953, %5949 ]
  %5959 = phi float [ %5948, %5936 ], [ %5954, %5949 ]
  %5960 = fcmp fast ogt float %5929, 0.000000e+00
  br i1 %5960, label %5961, label %6031

; <label>:5961                                    ; preds = %5955
  %5962 = and i32 %5903, 2
  %5963 = icmp eq i32 %5962, 0
  %5964 = fadd fast float %5928, 1.000000e+00
  %5965 = call float @dx.op.unary.f32(i32 22, float %5899)  ; Frc(value)
  %5966 = call float @dx.op.unary.f32(i32 22, float %5900)  ; Frc(value)
  br i1 %5963, label %5980, label %5967, !dx.controlflow.hints !142

; <label>:5967                                    ; preds = %5961
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = fmul fast float %5965, %5969
  %5971 = fmul fast float %5966, %5969
  %5972 = fptoui float %5970 to i32
  %5973 = fptoui float %5971 to i32
  %5974 = fptoui float %5964 to i32
  %5975 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5972, i32 %5973, i32 %5974, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5976 = extractvalue %dx.types.ResRet.f32 %5975, 0
  %5977 = extractvalue %dx.types.ResRet.f32 %5975, 1
  %5978 = extractvalue %dx.types.ResRet.f32 %5975, 2
  %5979 = extractvalue %dx.types.ResRet.f32 %5975, 3
  br label %5986

; <label>:5980                                    ; preds = %5961
  %5981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5965, float %5966, float %5964, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5982 = extractvalue %dx.types.ResRet.f32 %5981, 0
  %5983 = extractvalue %dx.types.ResRet.f32 %5981, 1
  %5984 = extractvalue %dx.types.ResRet.f32 %5981, 2
  %5985 = extractvalue %dx.types.ResRet.f32 %5981, 3
  br label %5986

; <label>:5986                                    ; preds = %5980, %5967
  %5987 = phi float [ %5976, %5967 ], [ %5982, %5980 ]
  %5988 = phi float [ %5977, %5967 ], [ %5983, %5980 ]
  %5989 = phi float [ %5978, %5967 ], [ %5984, %5980 ]
  %5990 = phi float [ %5979, %5967 ], [ %5985, %5980 ]
  %5991 = fsub fast float %5987, %5956
  %5992 = fsub fast float %5988, %5957
  %5993 = fsub fast float %5989, %5958
  %5994 = fsub fast float %5990, %5959
  %5995 = fmul fast float %5991, %5929
  %5996 = fmul fast float %5992, %5929
  %5997 = fmul fast float %5993, %5929
  %5998 = fmul fast float %5994, %5929
  %5999 = fadd fast float %5995, %5956
  %6000 = fadd fast float %5996, %5957
  %6001 = fadd fast float %5997, %5958
  %6002 = fadd fast float %5998, %5959
  br label %6031

; <label>:6003                                    ; preds = %5923
  %6004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5931, float %5932, float %5928, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  %6008 = extractvalue %dx.types.ResRet.f32 %6004, 3
  %6009 = fcmp fast ogt float %5929, 0.000000e+00
  br i1 %6009, label %6010, label %6031, !dx.controlflow.hints !143

; <label>:6010                                    ; preds = %6003
  %6011 = fadd fast float %5928, 1.000000e+00
  %6012 = call float @dx.op.unary.f32(i32 22, float %5899)  ; Frc(value)
  %6013 = call float @dx.op.unary.f32(i32 22, float %5900)  ; Frc(value)
  %6014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %6012, float %6013, float %6011, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.ResRet.f32 %6014, 2
  %6018 = extractvalue %dx.types.ResRet.f32 %6014, 3
  %6019 = fsub fast float %6015, %6005
  %6020 = fsub fast float %6016, %6006
  %6021 = fsub fast float %6017, %6007
  %6022 = fsub fast float %6018, %6008
  %6023 = fmul fast float %6019, %5929
  %6024 = fmul fast float %6020, %5929
  %6025 = fmul fast float %6021, %5929
  %6026 = fmul fast float %6022, %5929
  %6027 = fadd fast float %6023, %6005
  %6028 = fadd fast float %6024, %6006
  %6029 = fadd fast float %6025, %6007
  %6030 = fadd fast float %6026, %6008
  br label %6031

; <label>:6031                                    ; preds = %6010, %6003, %5986, %5955
  %6032 = phi float [ %5999, %5986 ], [ %5956, %5955 ], [ %6027, %6010 ], [ %6005, %6003 ]
  %6033 = phi float [ %6000, %5986 ], [ %5957, %5955 ], [ %6028, %6010 ], [ %6006, %6003 ]
  %6034 = phi float [ %6001, %5986 ], [ %5958, %5955 ], [ %6029, %6010 ], [ %6007, %6003 ]
  %6035 = phi float [ %6002, %5986 ], [ %5959, %5955 ], [ %6030, %6010 ], [ %6008, %6003 ]
  %6036 = fadd fast float %6032, -5.000000e-01
  %6037 = fadd fast float %6034, -5.000000e-01
  %6038 = fmul fast float %6036, 0xBFD5555560000000
  %6039 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6037, float %6038)  ; FMad(a,b,c)
  %6040 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6033, float 0.000000e+00)  ; FMad(a,b,c)
  %6041 = fadd fast float %6040, %6035
  %6042 = fmul fast float %6036, -7.500000e-01
  %6043 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6037, float %6042)  ; FMad(a,b,c)
  %6044 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6033, float 0.000000e+00)  ; FMad(a,b,c)
  %6045 = fadd fast float %6044, %6035
  %6046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.f32 %6046, 0
  %6048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6049 = extractvalue %dx.types.CBufRet.f32 %6048, 0
  %6050 = extractvalue %dx.types.CBufRet.f32 %6048, 1
  %6051 = extractvalue %dx.types.CBufRet.f32 %6048, 2
  %6052 = extractvalue %dx.types.CBufRet.f32 %6048, 3
  %6053 = fsub fast float %6049, %6039
  %6054 = fsub fast float %6050, %6041
  %6055 = fsub fast float %6051, %6043
  %6056 = fsub fast float %6052, %6045
  %6057 = fmul fast float %6053, %6047
  %6058 = fmul fast float %6054, %6047
  %6059 = fmul fast float %6055, %6047
  %6060 = fmul fast float %6056, %6047
  %6061 = fadd fast float %6057, %6039
  %6062 = fadd fast float %6058, %6041
  %6063 = fadd fast float %6059, %6043
  %6064 = fadd fast float %6060, %6045
  %6065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6066 = extractvalue %dx.types.ResRet.i32 %6065, 0
  %6067 = and i32 %6066, 536870911
  %6068 = uitofp i32 %6067 to float
  %6069 = fmul fast float %6068, %5904
  %6070 = fmul fast float %6068, %5905
  %6071 = fptoui float %6069 to i32
  %6072 = fptoui float %6070 to i32
  %6073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.i32 %6073, 0
  %6075 = and i32 %6074, 31
  %6076 = lshr i32 %6071, %6075
  %6077 = lshr i32 %6072, %6075
  %6078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.i32 %6078, 0
  %6080 = and i32 %6079, 31
  %6081 = shl i32 1, %6080
  %6082 = call i32 @dx.op.binary.i32(i32 40, i32 %6081, i32 4)  ; UMin(a,b)
  %6083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6084 = extractvalue %dx.types.ResRet.i32 %6083, 0
  %6085 = extractvalue %dx.types.ResRet.i32 %6083, 1
  %6086 = icmp eq i32 %6082, 0
  br i1 %6086, label %6128, label %6087

; <label>:6087                                    ; preds = %6031
  br label %6088

; <label>:6088                                    ; preds = %6116, %6087
  %6089 = phi i32 [ %6119, %6116 ], [ 0, %6087 ]
  %6090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6091 = extractvalue %dx.types.ResRet.i32 %6090, 0
  %6092 = lshr i32 %6091, 16
  %6093 = and i32 %6092, 31
  %6094 = shl i32 %6077, %6093
  %6095 = add i32 %6094, %6076
  %6096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6097 = extractvalue %dx.types.ResRet.i32 %6096, 0
  %6098 = and i32 %6097, 31
  %6099 = shl i32 %6095, %6098
  %6100 = add i32 %6099, %6089
  %6101 = shl i32 %6100, 2
  %6102 = add i32 %6101, 32
  %6103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6102, i32 undef)  ; BufferLoad(srv,index,wot)
  %6104 = extractvalue %dx.types.ResRet.i32 %6103, 0
  %6105 = icmp slt i32 %6104, 0
  %6106 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6089
  %6107 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6089
  %6108 = bitcast float* %6106 to i32*
  %6109 = bitcast float* %6107 to i32*
  br i1 %6105, label %6110, label %6116

; <label>:6110                                    ; preds = %6088
  %6111 = and i32 %6104, 1073741823
  %6112 = add nuw nsw i32 %6111, 20
  %6113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6112, i32 undef)  ; BufferLoad(srv,index,wot)
  %6114 = extractvalue %dx.types.ResRet.i32 %6113, 0
  %6115 = extractvalue %dx.types.ResRet.i32 %6113, 1
  br label %6116

; <label>:6116                                    ; preds = %6110, %6088
  %6117 = phi i32 [ %6114, %6110 ], [ %6084, %6088 ]
  %6118 = phi i32 [ %6115, %6110 ], [ %6085, %6088 ]
  store i32 %6117, i32* %6108, align 4
  store i32 %6118, i32* %6109, align 4
  %6119 = add nuw i32 %6089, 1
  %6120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6121 = extractvalue %dx.types.CBufRet.i32 %6120, 2
  %6122 = icmp eq i32 %6121, 0
  %6123 = icmp ugt i32 %6104, -1073741825
  %6124 = and i1 %6123, %6122
  %6125 = icmp ult i32 %6119, %6082
  %6126 = and i1 %6124, %6125
  br i1 %6126, label %6088, label %6127

; <label>:6127                                    ; preds = %6116
  br label %6128

; <label>:6128                                    ; preds = %6127, %6031
  %6129 = phi i32 [ 0, %6031 ], [ %6119, %6127 ]
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6132 = fptoui float %6131 to i32
  %6133 = icmp eq i32 %6132, 0
  br i1 %6133, label %6185, label %6134

; <label>:6134                                    ; preds = %6128
  br label %6135

; <label>:6135                                    ; preds = %6180, %6134
  %6136 = phi i32 [ %6181, %6180 ], [ %6129, %6134 ]
  %6137 = phi i32 [ %6182, %6180 ], [ 0, %6134 ]
  %6138 = lshr i32 %6137, 2
  %6139 = and i32 %6137, 3
  %6140 = add nuw nsw i32 %6138, 83
  %6141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 %6140)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.i32 %6141, 0
  %6143 = extractvalue %dx.types.CBufRet.i32 %6141, 1
  %6144 = extractvalue %dx.types.CBufRet.i32 %6141, 2
  %6145 = extractvalue %dx.types.CBufRet.i32 %6141, 3
  %6146 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 0
  store i32 %6142, i32* %6146, align 4
  %6147 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 1
  store i32 %6143, i32* %6147, align 4
  %6148 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 2
  store i32 %6144, i32* %6148, align 4
  %6149 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 3
  store i32 %6145, i32* %6149, align 4
  %6150 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 %6139
  %6151 = load i32, i32* %6150, align 4, !tbaa !144, !noalias !146
  %6152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.i32 %6152, 0
  %6154 = lshr i32 %6153, 16
  %6155 = and i32 %6154, 31
  %6156 = shl i32 %6077, %6155
  %6157 = add i32 %6156, %6076
  %6158 = shl i32 %6157, 2
  %6159 = add i32 %6158, %6151
  %6160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6159, i32 undef)  ; BufferLoad(srv,index,wot)
  %6161 = extractvalue %dx.types.ResRet.i32 %6160, 0
  %6162 = icmp eq i32 %6161, 0
  br i1 %6162, label %6180, label %6163

; <label>:6163                                    ; preds = %6135
  %6164 = icmp slt i32 %6161, 0
  %6165 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6136
  %6166 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6136
  %6167 = bitcast float* %6165 to i32*
  %6168 = bitcast float* %6166 to i32*
  br i1 %6164, label %6169, label %6176

; <label>:6169                                    ; preds = %6163
  %6170 = and i32 %6161, 1073741823
  %6171 = add i32 %6151, 20
  %6172 = add i32 %6171, %6170
  %6173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6172, i32 undef)  ; BufferLoad(srv,index,wot)
  %6174 = extractvalue %dx.types.ResRet.i32 %6173, 0
  %6175 = extractvalue %dx.types.ResRet.i32 %6173, 1
  br label %6176

; <label>:6176                                    ; preds = %6169, %6163
  %6177 = phi i32 [ %6174, %6169 ], [ %6084, %6163 ]
  %6178 = phi i32 [ %6175, %6169 ], [ %6085, %6163 ]
  store i32 %6177, i32* %6167, align 4
  store i32 %6178, i32* %6168, align 4
  %6179 = add i32 %6136, 1
  br label %6180

; <label>:6180                                    ; preds = %6176, %6135
  %6181 = phi i32 [ %6136, %6135 ], [ %6179, %6176 ]
  %6182 = add nuw i32 %6137, 1
  %6183 = icmp eq i32 %6182, %6132
  br i1 %6183, label %6184, label %6135

; <label>:6184                                    ; preds = %6180
  br label %6185

; <label>:6185                                    ; preds = %6184, %6128
  %6186 = phi i32 [ %6129, %6128 ], [ %6181, %6184 ]
  %6187 = icmp eq i32 %6186, 1
  %6188 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %6189 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %6187, label %6190, label %6193

; <label>:6190                                    ; preds = %6185
  %6191 = load float, float* %6188, align 4
  %6192 = load float, float* %6189, align 4
  br label %6220

; <label>:6193                                    ; preds = %6185
  %6194 = load float, float* %6188, align 4
  %6195 = load float, float* %6189, align 4
  %6196 = fdiv fast float 1.000000e+00, %6195
  %6197 = fsub fast float %6194, %6196
  %6198 = icmp ugt i32 %6186, 1
  br i1 %6198, label %6199, label %6215

; <label>:6199                                    ; preds = %6193
  br label %6200

; <label>:6200                                    ; preds = %6200, %6199
  %6201 = phi float [ %6210, %6200 ], [ %6197, %6199 ]
  %6202 = phi float [ %6211, %6200 ], [ %6194, %6199 ]
  %6203 = phi i32 [ %6212, %6200 ], [ 1, %6199 ]
  %6204 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6203
  %6205 = load float, float* %6204, align 4
  %6206 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6203
  %6207 = load float, float* %6206, align 4
  %6208 = fdiv fast float 1.000000e+00, %6207
  %6209 = fsub fast float %6205, %6208
  %6210 = call float @dx.op.binary.f32(i32 36, float %6201, float %6209)  ; FMin(a,b)
  %6211 = call float @dx.op.binary.f32(i32 35, float %6202, float %6205)  ; FMax(a,b)
  %6212 = add nuw i32 %6203, 1
  %6213 = icmp eq i32 %6212, %6186
  br i1 %6213, label %6214, label %6200

; <label>:6214                                    ; preds = %6200
  br label %6215

; <label>:6215                                    ; preds = %6214, %6193
  %6216 = phi float [ %6197, %6193 ], [ %6210, %6214 ]
  %6217 = phi float [ %6194, %6193 ], [ %6211, %6214 ]
  %6218 = fsub fast float %6217, %6216
  %6219 = fdiv fast float 1.000000e+00, %6218
  br label %6220

; <label>:6220                                    ; preds = %6215, %6190
  %6221 = phi float [ %6191, %6190 ], [ %6217, %6215 ]
  %6222 = phi float [ %6192, %6190 ], [ %6219, %6215 ]
  %6223 = fadd fast float %5651, %6221
  %6224 = fmul fast float %6223, %6222
  %6225 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6226 = fmul fast float %6225, 2.000000e+00
  %6227 = fsub fast float 1.000000e+00, %6226
  %6228 = fmul fast float %6061, %6061
  %6229 = fsub fast float %6062, %6228
  %6230 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6229)  ; FMax(a,b)
  %6231 = fdiv fast float 1.000000e+00, %6230
  %6232 = fmul fast float %6062, %6061
  %6233 = fsub fast float %6063, %6232
  %6234 = fsub fast float %6227, %6061
  %6235 = fmul fast float %6227, %6227
  %6236 = fsub fast float %6235, %6062
  %6237 = fmul fast float %6231, %6233
  %6238 = fmul fast float %6237, %6234
  %6239 = fsub fast float %6236, %6238
  %6240 = fmul fast float %6062, %6062
  %6241 = fsub fast float %6064, %6240
  %6242 = fmul fast float %6233, %6233
  %6243 = fmul fast float %6242, %6231
  %6244 = fsub fast float %6241, %6243
  %6245 = fdiv fast float %6239, %6244
  %6246 = fmul fast float %6245, %6233
  %6247 = fsub fast float %6234, %6246
  %6248 = fmul fast float %6247, %6231
  %6249 = fmul fast float %6248, %6061
  %6250 = fsub fast float 1.000000e+00, %6249
  %6251 = fmul fast float %6245, %6062
  %6252 = fsub fast float %6250, %6251
  %6253 = fmul fast float %6248, %6248
  %6254 = fmul fast float %6245, 4.000000e+00
  %6255 = fmul fast float %6254, %6252
  %6256 = fsub fast float %6253, %6255
  %6257 = call float @dx.op.unary.f32(i32 24, float %6256)  ; Sqrt(value)
  %6258 = fcmp fast oge float %6248, 0.000000e+00
  %6259 = fsub fast float -0.000000e+00, %6257
  %6260 = select i1 %6258, float %6259, float %6257
  %6261 = fsub fast float %6260, %6248
  %6262 = fdiv fast float %6261, %6245
  %6263 = fdiv fast float %6252, %6261
  %6264 = fmul fast float %6262, 5.000000e-01
  %6265 = fmul fast float %6263, 2.000000e+00
  %6266 = select i1 %6258, float %6264, float %6265
  %6267 = select i1 %6258, float %6265, float %6264
  %6268 = call float @dx.op.binary.f32(i32 35, float %6266, float %6267)  ; FMax(a,b)
  %6269 = call float @dx.op.binary.f32(i32 36, float %6266, float %6267)  ; FMin(a,b)
  %6270 = fcmp fast ogt float %6227, %6268
  %6271 = fsub fast float %6227, %6269
  %6272 = fsub fast float %6227, %6268
  %6273 = fsub fast float %6268, %6269
  %6274 = select i1 %6270, float %6272, float %6273
  %6275 = fmul float %6271, %6274
  %6276 = select i1 %6270, float %6269, float %6227
  %6277 = fcmp fast ogt float %6227, %6269
  %6278 = fmul fast float %6276, %6268
  %6279 = fadd fast float %6276, %6268
  %6280 = fmul fast float %6279, %6061
  %6281 = fadd fast float %6278, %6062
  %6282 = fsub fast float %6281, %6280
  %6283 = fdiv fast float %6282, %6275
  %6284 = select i1 %6277, float %6283, float 0.000000e+00
  %6285 = fsub fast float 1.000000e+00, %6284
  %6286 = select i1 %6270, float %6285, float %6284
  %6287 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6046, 3
  %6289 = fmul fast float %6288, %6287
  %6290 = fsub fast float 1.000000e+00, %6289
  br label %6291

; <label>:6291                                    ; preds = %6220, %5898, %5624, %5620, %5590
  %6292 = phi float [ 1.000000e+00, %5590 ], [ %6290, %6220 ], [ 1.000000e+00, %5624 ], [ 1.000000e+00, %5898 ], [ 1.000000e+00, %5620 ]
  %6293 = fcmp fast ogt float %5616, 0.000000e+00
  br i1 %6293, label %6294, label %6458, !dx.controlflow.hints !151

; <label>:6294                                    ; preds = %6291
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6297 = fadd fast float %6296, %5536
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6300 = extractvalue %dx.types.CBufRet.f32 %6298, 3
  %6301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6302 = extractvalue %dx.types.CBufRet.f32 %6301, 2
  %6303 = call float @dx.op.binary.f32(i32 35, float %6297, float 0.000000e+00)  ; FMax(a,b)
  %6304 = fadd fast float %6303, 0x3F10000000000000
  %6305 = fcmp fast oeq float %6302, 0.000000e+00
  br i1 %6305, label %6306, label %6373

; <label>:6306                                    ; preds = %6294
  %6307 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6308 = extractvalue %dx.types.CBufRet.f32 %6298, 0
  %6309 = fmul fast float %6308, %5424
  %6310 = fmul fast float %6307, %5425
  %6311 = fadd fast float %6309, 5.000000e-01
  %6312 = call float @dx.op.unary.f32(i32 27, float %6311)  ; Round_ni(value)
  %6313 = fadd fast float %6310, 5.000000e-01
  %6314 = call float @dx.op.unary.f32(i32 27, float %6313)  ; Round_ni(value)
  %6315 = fsub fast float %6311, %6312
  %6316 = fsub fast float %6313, %6314
  %6317 = fadd fast float %6312, -5.000000e-01
  %6318 = fadd fast float %6314, -5.000000e-01
  %6319 = fmul fast float %6315, 2.000000e+00
  %6320 = fsub fast float 3.000000e+00, %6319
  %6321 = fadd fast float %6319, 1.000000e+00
  %6322 = fsub fast float 2.000000e+00, %6315
  %6323 = bitcast float %6320 to i32
  %6324 = sub nsw i32 2129859010, %6323
  %6325 = bitcast i32 %6324 to float
  %6326 = fmul fast float %6325, %6322
  %6327 = fadd fast float %6326, -1.000000e+00
  %6328 = bitcast float %6321 to i32
  %6329 = sub nsw i32 2129859010, %6328
  %6330 = bitcast i32 %6329 to float
  %6331 = fmul fast float %6330, %6315
  %6332 = fadd fast float %6331, 1.000000e+00
  %6333 = fmul fast float %6316, 2.000000e+00
  %6334 = fsub fast float 3.000000e+00, %6333
  %6335 = fadd fast float %6333, 1.000000e+00
  %6336 = fsub fast float 2.000000e+00, %6316
  %6337 = bitcast float %6334 to i32
  %6338 = sub nsw i32 2129859010, %6337
  %6339 = bitcast i32 %6338 to float
  %6340 = fmul fast float %6339, %6336
  %6341 = fadd fast float %6340, -1.000000e+00
  %6342 = bitcast float %6335 to i32
  %6343 = sub nsw i32 2129859010, %6342
  %6344 = bitcast i32 %6343 to float
  %6345 = fmul fast float %6344, %6316
  %6346 = fadd fast float %6345, 1.000000e+00
  %6347 = fadd fast float %6327, %6317
  %6348 = fmul fast float %6347, %6299
  %6349 = fadd fast float %6341, %6318
  %6350 = fmul fast float %6349, %6300
  %6351 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6348, float %6350, float undef, float undef, i32 0, i32 0, i32 undef, float %6304)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6352 = extractvalue %dx.types.ResRet.f32 %6351, 0
  %6353 = fmul fast float %6352, %6320
  %6354 = fadd fast float %6332, %6317
  %6355 = fmul fast float %6354, %6299
  %6356 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6355, float %6350, float undef, float undef, i32 0, i32 0, i32 undef, float %6304)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6357 = extractvalue %dx.types.ResRet.f32 %6356, 0
  %6358 = fmul fast float %6357, %6321
  %6359 = fadd fast float %6346, %6318
  %6360 = fmul fast float %6359, %6300
  %6361 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6348, float %6360, float undef, float undef, i32 0, i32 0, i32 undef, float %6304)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6362 = extractvalue %dx.types.ResRet.f32 %6361, 0
  %6363 = fmul fast float %6362, %6320
  %6364 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6355, float %6360, float undef, float undef, i32 0, i32 0, i32 undef, float %6304)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6365 = extractvalue %dx.types.ResRet.f32 %6364, 0
  %6366 = fmul fast float %6365, %6321
  %6367 = fadd fast float %6366, %6363
  %6368 = fmul fast float %6367, %6335
  %6369 = fadd fast float %6358, %6353
  %6370 = fmul fast float %6369, %6334
  %6371 = fadd fast float %6370, %6368
  %6372 = fmul fast float %6371, 6.250000e-02
  br label %6458

; <label>:6373                                    ; preds = %6294
  %6374 = fmul fast float %1755, 0x401921FB60000000
  %6375 = call float @dx.op.unary.f32(i32 13, float %6374)  ; Sin(value)
  %6376 = call float @dx.op.unary.f32(i32 12, float %6374)  ; Cos(value)
  %6377 = fsub fast float -0.000000e+00, %6375
  br label %6378

; <label>:6378                                    ; preds = %6427, %6373
  %6379 = phi float [ 0.000000e+00, %6373 ], [ %6422, %6427 ]
  %6380 = phi float [ 0.000000e+00, %6373 ], [ %6424, %6427 ]
  %6381 = phi i32 [ 0, %6373 ], [ %6428, %6427 ]
  %6382 = mul i32 %6381, 2
  %6383 = add i32 0, %6382
  %6384 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6383
  %6385 = load float, float* %6384, align 4
  %6386 = mul i32 %6381, 2
  %6387 = add i32 1, %6386
  %6388 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6387
  %6389 = load float, float* %6388, align 4
  %6390 = fmul fast float %6385, %6376
  %6391 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6377, float %6390)  ; FMad(a,b,c)
  %6392 = fmul fast float %6385, %6375
  %6393 = call float @dx.op.tertiary.f32(i32 46, float %6389, float %6376, float %6392)  ; FMad(a,b,c)
  %6394 = fmul fast float %6391, %6302
  %6395 = fmul fast float %6393, %6302
  %6396 = fadd fast float %6394, %5424
  %6397 = fadd fast float %6395, %5425
  %6398 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %62, float %6396, float %6397, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = extractvalue %dx.types.ResRet.f32 %6398, 1
  %6401 = extractvalue %dx.types.ResRet.f32 %6398, 2
  %6402 = extractvalue %dx.types.ResRet.f32 %6398, 3
  %6403 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6399, float* %6403, align 4
  %6404 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6400, float* %6404, align 4
  %6405 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6401, float* %6405, align 4
  %6406 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6402, float* %6406, align 4
  %6407 = fsub fast float %6399, %6304
  %6408 = fcmp fast olt float %6407, 0.000000e+00
  %6409 = select i1 %6408, float 0.000000e+00, float 1.000000e+00
  %6410 = fadd fast float %6409, %6379
  %6411 = fmul fast float %6409, %6407
  %6412 = fadd fast float %6411, %6380
  br label %6413

; <label>:6413                                    ; preds = %6413, %6378
  %6414 = phi i32 [ 1, %6378 ], [ %6425, %6413 ]
  %6415 = phi float [ %6412, %6378 ], [ %6424, %6413 ]
  %6416 = phi float [ %6410, %6378 ], [ %6422, %6413 ]
  %6417 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6414
  %6418 = load float, float* %6417, align 4, !tbaa !106, !noalias !152
  %6419 = fsub fast float %6418, %6304
  %6420 = fcmp fast olt float %6419, 0.000000e+00
  %6421 = select i1 %6420, float 0.000000e+00, float 1.000000e+00
  %6422 = fadd fast float %6421, %6416
  %6423 = fmul fast float %6421, %6419
  %6424 = fadd fast float %6423, %6415
  %6425 = add nuw nsw i32 %6414, 1
  %6426 = icmp eq i32 %6425, 4
  br i1 %6426, label %6427, label %6413, !llvm.loop !157

; <label>:6427                                    ; preds = %6413
  %6428 = add nuw nsw i32 %6381, 1
  %6429 = icmp eq i32 %6428, 8
  br i1 %6429, label %6430, label %6378, !llvm.loop !158

; <label>:6430                                    ; preds = %6427
  %6431 = fdiv fast float 1.000000e+00, %6422
  %6432 = fmul fast float %6431, %6424
  %6433 = fdiv fast float 1.000000e+00, %6304
  %6434 = fmul fast float %6432, %6433
  %6435 = call float @dx.op.unary.f32(i32 7, float %6434)  ; Saturate(value)
  %6436 = call float @dx.op.binary.f32(i32 35, float %6435, float 0.000000e+00)  ; FMax(a,b)
  %6437 = fmul fast float %6422, 3.125000e-02
  %6438 = call float @dx.op.unary.f32(i32 7, float %6437)  ; Saturate(value)
  %6439 = fmul fast float %6438, 2.000000e+00
  %6440 = fadd fast float %6439, -1.000000e+00
  %6441 = fcmp fast ogt float %6440, 0.000000e+00
  %6442 = fcmp fast olt float %6440, 0.000000e+00
  %6443 = zext i1 %6441 to i32
  %6444 = zext i1 %6442 to i32
  %6445 = sub nsw i32 %6443, %6444
  %6446 = sitofp i32 %6445 to float
  %6447 = fmul fast float %6446, %6440
  %6448 = fsub fast float 1.000000e+00, %6447
  %6449 = fmul fast float %6448, %6448
  %6450 = fmul fast float %6449, %6448
  %6451 = fsub fast float %6448, %6450
  %6452 = fmul fast float %6451, %6436
  %6453 = fsub fast float 1.000000e+00, %6450
  %6454 = fsub fast float %6453, %6452
  %6455 = fmul fast float %6446, 5.000000e-01
  %6456 = fmul fast float %6455, %6454
  %6457 = fsub fast float 5.000000e-01, %6456
  br label %6458

; <label>:6458                                    ; preds = %6430, %6306, %6291
  %6459 = phi float [ 1.000000e+00, %6291 ], [ %6372, %6306 ], [ %6457, %6430 ]
  %6460 = fcmp fast ogt float %5614, 0.000000e+00
  br i1 %6460, label %6461, label %6625, !dx.controlflow.hints !159

; <label>:6461                                    ; preds = %6458
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 1
  %6464 = fadd fast float %6463, %5536
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 2
  %6467 = extractvalue %dx.types.CBufRet.f32 %6465, 3
  %6468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6469 = extractvalue %dx.types.CBufRet.f32 %6468, 1
  %6470 = call float @dx.op.binary.f32(i32 35, float %6464, float 0.000000e+00)  ; FMax(a,b)
  %6471 = fadd fast float %6470, 0x3F10000000000000
  %6472 = fcmp fast oeq float %6469, 0.000000e+00
  br i1 %6472, label %6473, label %6540

; <label>:6473                                    ; preds = %6461
  %6474 = extractvalue %dx.types.CBufRet.f32 %6465, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  %6476 = fmul fast float %6475, %5416
  %6477 = fmul fast float %6474, %5417
  %6478 = fadd fast float %6476, 5.000000e-01
  %6479 = call float @dx.op.unary.f32(i32 27, float %6478)  ; Round_ni(value)
  %6480 = fadd fast float %6477, 5.000000e-01
  %6481 = call float @dx.op.unary.f32(i32 27, float %6480)  ; Round_ni(value)
  %6482 = fsub fast float %6478, %6479
  %6483 = fsub fast float %6480, %6481
  %6484 = fadd fast float %6479, -5.000000e-01
  %6485 = fadd fast float %6481, -5.000000e-01
  %6486 = fmul fast float %6482, 2.000000e+00
  %6487 = fsub fast float 3.000000e+00, %6486
  %6488 = fadd fast float %6486, 1.000000e+00
  %6489 = fsub fast float 2.000000e+00, %6482
  %6490 = bitcast float %6487 to i32
  %6491 = sub nsw i32 2129859010, %6490
  %6492 = bitcast i32 %6491 to float
  %6493 = fmul fast float %6492, %6489
  %6494 = fadd fast float %6493, -1.000000e+00
  %6495 = bitcast float %6488 to i32
  %6496 = sub nsw i32 2129859010, %6495
  %6497 = bitcast i32 %6496 to float
  %6498 = fmul fast float %6497, %6482
  %6499 = fadd fast float %6498, 1.000000e+00
  %6500 = fmul fast float %6483, 2.000000e+00
  %6501 = fsub fast float 3.000000e+00, %6500
  %6502 = fadd fast float %6500, 1.000000e+00
  %6503 = fsub fast float 2.000000e+00, %6483
  %6504 = bitcast float %6501 to i32
  %6505 = sub nsw i32 2129859010, %6504
  %6506 = bitcast i32 %6505 to float
  %6507 = fmul fast float %6506, %6503
  %6508 = fadd fast float %6507, -1.000000e+00
  %6509 = bitcast float %6502 to i32
  %6510 = sub nsw i32 2129859010, %6509
  %6511 = bitcast i32 %6510 to float
  %6512 = fmul fast float %6511, %6483
  %6513 = fadd fast float %6512, 1.000000e+00
  %6514 = fadd fast float %6494, %6484
  %6515 = fmul fast float %6514, %6466
  %6516 = fadd fast float %6508, %6485
  %6517 = fmul fast float %6516, %6467
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6515, float %6517, float undef, float undef, i32 0, i32 0, i32 undef, float %6471)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = fmul fast float %6519, %6487
  %6521 = fadd fast float %6499, %6484
  %6522 = fmul fast float %6521, %6466
  %6523 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6522, float %6517, float undef, float undef, i32 0, i32 0, i32 undef, float %6471)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6524 = extractvalue %dx.types.ResRet.f32 %6523, 0
  %6525 = fmul fast float %6524, %6488
  %6526 = fadd fast float %6513, %6485
  %6527 = fmul fast float %6526, %6467
  %6528 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6515, float %6527, float undef, float undef, i32 0, i32 0, i32 undef, float %6471)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6529 = extractvalue %dx.types.ResRet.f32 %6528, 0
  %6530 = fmul fast float %6529, %6487
  %6531 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6522, float %6527, float undef, float undef, i32 0, i32 0, i32 undef, float %6471)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6532 = extractvalue %dx.types.ResRet.f32 %6531, 0
  %6533 = fmul fast float %6532, %6488
  %6534 = fadd fast float %6533, %6530
  %6535 = fmul fast float %6534, %6502
  %6536 = fadd fast float %6525, %6520
  %6537 = fmul fast float %6536, %6501
  %6538 = fadd fast float %6537, %6535
  %6539 = fmul fast float %6538, 6.250000e-02
  br label %6625

; <label>:6540                                    ; preds = %6461
  %6541 = fmul fast float %1755, 0x401921FB60000000
  %6542 = call float @dx.op.unary.f32(i32 13, float %6541)  ; Sin(value)
  %6543 = call float @dx.op.unary.f32(i32 12, float %6541)  ; Cos(value)
  %6544 = fsub fast float -0.000000e+00, %6542
  br label %6545

; <label>:6545                                    ; preds = %6594, %6540
  %6546 = phi float [ 0.000000e+00, %6540 ], [ %6589, %6594 ]
  %6547 = phi float [ 0.000000e+00, %6540 ], [ %6591, %6594 ]
  %6548 = phi i32 [ 0, %6540 ], [ %6595, %6594 ]
  %6549 = mul i32 %6548, 2
  %6550 = add i32 0, %6549
  %6551 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6550
  %6552 = load float, float* %6551, align 4
  %6553 = mul i32 %6548, 2
  %6554 = add i32 1, %6553
  %6555 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6554
  %6556 = load float, float* %6555, align 4
  %6557 = fmul fast float %6552, %6543
  %6558 = call float @dx.op.tertiary.f32(i32 46, float %6556, float %6544, float %6557)  ; FMad(a,b,c)
  %6559 = fmul fast float %6552, %6542
  %6560 = call float @dx.op.tertiary.f32(i32 46, float %6556, float %6543, float %6559)  ; FMad(a,b,c)
  %6561 = fmul fast float %6558, %6469
  %6562 = fmul fast float %6560, %6469
  %6563 = fadd fast float %6561, %5416
  %6564 = fadd fast float %6562, %5417
  %6565 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %62, float %6563, float %6564, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6566 = extractvalue %dx.types.ResRet.f32 %6565, 0
  %6567 = extractvalue %dx.types.ResRet.f32 %6565, 1
  %6568 = extractvalue %dx.types.ResRet.f32 %6565, 2
  %6569 = extractvalue %dx.types.ResRet.f32 %6565, 3
  %6570 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %6566, float* %6570, align 4
  %6571 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6567, float* %6571, align 4
  %6572 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6568, float* %6572, align 4
  %6573 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6569, float* %6573, align 4
  %6574 = fsub fast float %6566, %6471
  %6575 = fcmp fast olt float %6574, 0.000000e+00
  %6576 = select i1 %6575, float 0.000000e+00, float 1.000000e+00
  %6577 = fadd fast float %6576, %6546
  %6578 = fmul fast float %6576, %6574
  %6579 = fadd fast float %6578, %6547
  br label %6580

; <label>:6580                                    ; preds = %6580, %6545
  %6581 = phi i32 [ 1, %6545 ], [ %6592, %6580 ]
  %6582 = phi float [ %6579, %6545 ], [ %6591, %6580 ]
  %6583 = phi float [ %6577, %6545 ], [ %6589, %6580 ]
  %6584 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6581
  %6585 = load float, float* %6584, align 4, !tbaa !106, !noalias !152
  %6586 = fsub fast float %6585, %6471
  %6587 = fcmp fast olt float %6586, 0.000000e+00
  %6588 = select i1 %6587, float 0.000000e+00, float 1.000000e+00
  %6589 = fadd fast float %6588, %6583
  %6590 = fmul fast float %6588, %6586
  %6591 = fadd fast float %6590, %6582
  %6592 = add nuw nsw i32 %6581, 1
  %6593 = icmp eq i32 %6592, 4
  br i1 %6593, label %6594, label %6580, !llvm.loop !157

; <label>:6594                                    ; preds = %6580
  %6595 = add nuw nsw i32 %6548, 1
  %6596 = icmp eq i32 %6595, 8
  br i1 %6596, label %6597, label %6545, !llvm.loop !158

; <label>:6597                                    ; preds = %6594
  %6598 = fdiv fast float 1.000000e+00, %6589
  %6599 = fmul fast float %6598, %6591
  %6600 = fdiv fast float 1.000000e+00, %6471
  %6601 = fmul fast float %6599, %6600
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = call float @dx.op.binary.f32(i32 35, float %6602, float 0.000000e+00)  ; FMax(a,b)
  %6604 = fmul fast float %6589, 3.125000e-02
  %6605 = call float @dx.op.unary.f32(i32 7, float %6604)  ; Saturate(value)
  %6606 = fmul fast float %6605, 2.000000e+00
  %6607 = fadd fast float %6606, -1.000000e+00
  %6608 = fcmp fast ogt float %6607, 0.000000e+00
  %6609 = fcmp fast olt float %6607, 0.000000e+00
  %6610 = zext i1 %6608 to i32
  %6611 = zext i1 %6609 to i32
  %6612 = sub nsw i32 %6610, %6611
  %6613 = sitofp i32 %6612 to float
  %6614 = fmul fast float %6613, %6607
  %6615 = fsub fast float 1.000000e+00, %6614
  %6616 = fmul fast float %6615, %6615
  %6617 = fmul fast float %6616, %6615
  %6618 = fsub fast float %6615, %6617
  %6619 = fmul fast float %6618, %6603
  %6620 = fsub fast float 1.000000e+00, %6617
  %6621 = fsub fast float %6620, %6619
  %6622 = fmul fast float %6613, 5.000000e-01
  %6623 = fmul fast float %6622, %6621
  %6624 = fsub fast float 5.000000e-01, %6623
  br label %6625

; <label>:6625                                    ; preds = %6597, %6473, %6458
  %6626 = phi float [ 1.000000e+00, %6458 ], [ %6539, %6473 ], [ %6624, %6597 ]
  %6627 = fcmp fast ogt float %5613, 0.000000e+00
  br i1 %6627, label %6628, label %6792, !dx.controlflow.hints !160

; <label>:6628                                    ; preds = %6625
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 0
  %6631 = fadd fast float %6630, %5536
  %6632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6633 = extractvalue %dx.types.CBufRet.f32 %6632, 2
  %6634 = extractvalue %dx.types.CBufRet.f32 %6632, 3
  %6635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6636 = extractvalue %dx.types.CBufRet.f32 %6635, 0
  %6637 = call float @dx.op.binary.f32(i32 35, float %6631, float 0.000000e+00)  ; FMax(a,b)
  %6638 = fadd fast float %6637, 0x3F10000000000000
  %6639 = fcmp fast oeq float %6636, 0.000000e+00
  br i1 %6639, label %6640, label %6707

; <label>:6640                                    ; preds = %6628
  %6641 = extractvalue %dx.types.CBufRet.f32 %6632, 1
  %6642 = extractvalue %dx.types.CBufRet.f32 %6632, 0
  %6643 = fmul fast float %6642, %5402
  %6644 = fmul fast float %6641, %5406
  %6645 = fadd fast float %6643, 5.000000e-01
  %6646 = call float @dx.op.unary.f32(i32 27, float %6645)  ; Round_ni(value)
  %6647 = fadd fast float %6644, 5.000000e-01
  %6648 = call float @dx.op.unary.f32(i32 27, float %6647)  ; Round_ni(value)
  %6649 = fsub fast float %6645, %6646
  %6650 = fsub fast float %6647, %6648
  %6651 = fadd fast float %6646, -5.000000e-01
  %6652 = fadd fast float %6648, -5.000000e-01
  %6653 = fmul fast float %6649, 2.000000e+00
  %6654 = fsub fast float 3.000000e+00, %6653
  %6655 = fadd fast float %6653, 1.000000e+00
  %6656 = fsub fast float 2.000000e+00, %6649
  %6657 = bitcast float %6654 to i32
  %6658 = sub nsw i32 2129859010, %6657
  %6659 = bitcast i32 %6658 to float
  %6660 = fmul fast float %6659, %6656
  %6661 = fadd fast float %6660, -1.000000e+00
  %6662 = bitcast float %6655 to i32
  %6663 = sub nsw i32 2129859010, %6662
  %6664 = bitcast i32 %6663 to float
  %6665 = fmul fast float %6664, %6649
  %6666 = fadd fast float %6665, 1.000000e+00
  %6667 = fmul fast float %6650, 2.000000e+00
  %6668 = fsub fast float 3.000000e+00, %6667
  %6669 = fadd fast float %6667, 1.000000e+00
  %6670 = fsub fast float 2.000000e+00, %6650
  %6671 = bitcast float %6668 to i32
  %6672 = sub nsw i32 2129859010, %6671
  %6673 = bitcast i32 %6672 to float
  %6674 = fmul fast float %6673, %6670
  %6675 = fadd fast float %6674, -1.000000e+00
  %6676 = bitcast float %6669 to i32
  %6677 = sub nsw i32 2129859010, %6676
  %6678 = bitcast i32 %6677 to float
  %6679 = fmul fast float %6678, %6650
  %6680 = fadd fast float %6679, 1.000000e+00
  %6681 = fadd fast float %6661, %6651
  %6682 = fmul fast float %6681, %6633
  %6683 = fadd fast float %6675, %6652
  %6684 = fmul fast float %6683, %6634
  %6685 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6682, float %6684, float undef, float undef, i32 0, i32 0, i32 undef, float %6638)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6686 = extractvalue %dx.types.ResRet.f32 %6685, 0
  %6687 = fmul fast float %6686, %6654
  %6688 = fadd fast float %6666, %6651
  %6689 = fmul fast float %6688, %6633
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6689, float %6684, float undef, float undef, i32 0, i32 0, i32 undef, float %6638)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 0
  %6692 = fmul fast float %6691, %6655
  %6693 = fadd fast float %6680, %6652
  %6694 = fmul fast float %6693, %6634
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6682, float %6694, float undef, float undef, i32 0, i32 0, i32 undef, float %6638)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = fmul fast float %6696, %6654
  %6698 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6689, float %6694, float undef, float undef, i32 0, i32 0, i32 undef, float %6638)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6699 = extractvalue %dx.types.ResRet.f32 %6698, 0
  %6700 = fmul fast float %6699, %6655
  %6701 = fadd fast float %6700, %6697
  %6702 = fmul fast float %6701, %6669
  %6703 = fadd fast float %6692, %6687
  %6704 = fmul fast float %6703, %6668
  %6705 = fadd fast float %6704, %6702
  %6706 = fmul fast float %6705, 6.250000e-02
  br label %6792

; <label>:6707                                    ; preds = %6628
  %6708 = fmul fast float %1755, 0x401921FB60000000
  %6709 = call float @dx.op.unary.f32(i32 13, float %6708)  ; Sin(value)
  %6710 = call float @dx.op.unary.f32(i32 12, float %6708)  ; Cos(value)
  %6711 = fsub fast float -0.000000e+00, %6709
  br label %6712

; <label>:6712                                    ; preds = %6761, %6707
  %6713 = phi float [ 0.000000e+00, %6707 ], [ %6756, %6761 ]
  %6714 = phi float [ 0.000000e+00, %6707 ], [ %6758, %6761 ]
  %6715 = phi i32 [ 0, %6707 ], [ %6762, %6761 ]
  %6716 = mul i32 %6715, 2
  %6717 = add i32 0, %6716
  %6718 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6717
  %6719 = load float, float* %6718, align 4
  %6720 = mul i32 %6715, 2
  %6721 = add i32 1, %6720
  %6722 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6721
  %6723 = load float, float* %6722, align 4
  %6724 = fmul fast float %6719, %6710
  %6725 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6711, float %6724)  ; FMad(a,b,c)
  %6726 = fmul fast float %6719, %6709
  %6727 = call float @dx.op.tertiary.f32(i32 46, float %6723, float %6710, float %6726)  ; FMad(a,b,c)
  %6728 = fmul fast float %6725, %6636
  %6729 = fmul fast float %6727, %6636
  %6730 = fadd fast float %6728, %5402
  %6731 = fadd fast float %6729, %5406
  %6732 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %62, float %6730, float %6731, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6733 = extractvalue %dx.types.ResRet.f32 %6732, 0
  %6734 = extractvalue %dx.types.ResRet.f32 %6732, 1
  %6735 = extractvalue %dx.types.ResRet.f32 %6732, 2
  %6736 = extractvalue %dx.types.ResRet.f32 %6732, 3
  %6737 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %6733, float* %6737, align 4
  %6738 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %6734, float* %6738, align 4
  %6739 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %6735, float* %6739, align 4
  %6740 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %6736, float* %6740, align 4
  %6741 = fsub fast float %6733, %6638
  %6742 = fcmp fast olt float %6741, 0.000000e+00
  %6743 = select i1 %6742, float 0.000000e+00, float 1.000000e+00
  %6744 = fadd fast float %6743, %6713
  %6745 = fmul fast float %6743, %6741
  %6746 = fadd fast float %6745, %6714
  br label %6747

; <label>:6747                                    ; preds = %6747, %6712
  %6748 = phi i32 [ 1, %6712 ], [ %6759, %6747 ]
  %6749 = phi float [ %6746, %6712 ], [ %6758, %6747 ]
  %6750 = phi float [ %6744, %6712 ], [ %6756, %6747 ]
  %6751 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %6748
  %6752 = load float, float* %6751, align 4, !tbaa !106, !noalias !152
  %6753 = fsub fast float %6752, %6638
  %6754 = fcmp fast olt float %6753, 0.000000e+00
  %6755 = select i1 %6754, float 0.000000e+00, float 1.000000e+00
  %6756 = fadd fast float %6755, %6750
  %6757 = fmul fast float %6755, %6753
  %6758 = fadd fast float %6757, %6749
  %6759 = add nuw nsw i32 %6748, 1
  %6760 = icmp eq i32 %6759, 4
  br i1 %6760, label %6761, label %6747, !llvm.loop !157

; <label>:6761                                    ; preds = %6747
  %6762 = add nuw nsw i32 %6715, 1
  %6763 = icmp eq i32 %6762, 8
  br i1 %6763, label %6764, label %6712, !llvm.loop !158

; <label>:6764                                    ; preds = %6761
  %6765 = fdiv fast float 1.000000e+00, %6756
  %6766 = fmul fast float %6765, %6758
  %6767 = fdiv fast float 1.000000e+00, %6638
  %6768 = fmul fast float %6766, %6767
  %6769 = call float @dx.op.unary.f32(i32 7, float %6768)  ; Saturate(value)
  %6770 = call float @dx.op.binary.f32(i32 35, float %6769, float 0.000000e+00)  ; FMax(a,b)
  %6771 = fmul fast float %6756, 3.125000e-02
  %6772 = call float @dx.op.unary.f32(i32 7, float %6771)  ; Saturate(value)
  %6773 = fmul fast float %6772, 2.000000e+00
  %6774 = fadd fast float %6773, -1.000000e+00
  %6775 = fcmp fast ogt float %6774, 0.000000e+00
  %6776 = fcmp fast olt float %6774, 0.000000e+00
  %6777 = zext i1 %6775 to i32
  %6778 = zext i1 %6776 to i32
  %6779 = sub nsw i32 %6777, %6778
  %6780 = sitofp i32 %6779 to float
  %6781 = fmul fast float %6780, %6774
  %6782 = fsub fast float 1.000000e+00, %6781
  %6783 = fmul fast float %6782, %6782
  %6784 = fmul fast float %6783, %6782
  %6785 = fsub fast float %6782, %6784
  %6786 = fmul fast float %6785, %6770
  %6787 = fsub fast float 1.000000e+00, %6784
  %6788 = fsub fast float %6787, %6786
  %6789 = fmul fast float %6780, 5.000000e-01
  %6790 = fmul fast float %6789, %6788
  %6791 = fsub fast float 5.000000e-01, %6790
  br label %6792

; <label>:6792                                    ; preds = %6764, %6640, %6625
  %6793 = phi float [ 1.000000e+00, %6625 ], [ %6706, %6640 ], [ %6791, %6764 ]
  %6794 = fsub fast float %6459, %6292
  %6795 = fmul fast float %6794, %5566
  %6796 = fadd fast float %6795, %6292
  %6797 = fsub fast float %6626, %6796
  %6798 = fmul fast float %6797, %5591
  %6799 = fadd fast float %6798, %6796
  %6800 = fsub fast float %6793, %6799
  %6801 = fmul fast float %6800, %5613
  %6802 = fadd fast float %6801, %6799
  %6803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6804 = extractvalue %dx.types.CBufRet.f32 %6803, 2
  %6805 = fcmp fast ogt float %6804, 0.000000e+00
  br i1 %6805, label %6806, label %6846, !dx.controlflow.hints !161

; <label>:6806                                    ; preds = %6792
  %6807 = fcmp fast ugt float %6804, 0.000000e+00
  br i1 %6807, label %6808, label %6843

; <label>:6808                                    ; preds = %6806
  %6809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6810 = extractvalue %dx.types.CBufRet.f32 %6809, 0
  %6811 = extractvalue %dx.types.CBufRet.f32 %6809, 1
  %6812 = extractvalue %dx.types.CBufRet.f32 %6809, 2
  %6813 = extractvalue %dx.types.CBufRet.f32 %6809, 3
  %6814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6815 = extractvalue %dx.types.CBufRet.f32 %6814, 0
  %6816 = extractvalue %dx.types.CBufRet.f32 %6814, 1
  %6817 = extractvalue %dx.types.CBufRet.f32 %6814, 2
  %6818 = extractvalue %dx.types.CBufRet.f32 %6814, 3
  %6819 = extractvalue %dx.types.CBufRet.f32 %6803, 0
  %6820 = extractvalue %dx.types.CBufRet.f32 %6803, 1
  %6821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6822 = extractvalue %dx.types.CBufRet.f32 %6821, 0
  %6823 = extractvalue %dx.types.CBufRet.f32 %6821, 1
  %6824 = extractvalue %dx.types.CBufRet.f32 %6821, 2
  %6825 = fadd fast float %6822, %153
  %6826 = fadd fast float %6823, %154
  %6827 = fadd fast float %6824, %155
  %6828 = fmul fast float %6825, %6810
  %6829 = call float @dx.op.tertiary.f32(i32 46, float %6811, float %6826, float %6828)  ; FMad(a,b,c)
  %6830 = call float @dx.op.tertiary.f32(i32 46, float %6812, float %6827, float %6829)  ; FMad(a,b,c)
  %6831 = fadd fast float %6830, %6813
  %6832 = fmul fast float %6825, %6815
  %6833 = call float @dx.op.tertiary.f32(i32 46, float %6816, float %6826, float %6832)  ; FMad(a,b,c)
  %6834 = call float @dx.op.tertiary.f32(i32 46, float %6817, float %6827, float %6833)  ; FMad(a,b,c)
  %6835 = fadd fast float %6834, %6818
  %6836 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %58, float %6831, float %6835, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6837 = extractvalue %dx.types.ResRet.f32 %6836, 0
  %6838 = fmul fast float %6837, %6820
  %6839 = fadd fast float %6838, %6819
  %6840 = call float @dx.op.unary.f32(i32 7, float %6839)  ; Saturate(value)
  %6841 = fmul fast float %6840, %6804
  %6842 = fsub fast float 1.000000e+00, %6841
  br label %6843

; <label>:6843                                    ; preds = %6808, %6806
  %6844 = phi float [ %6842, %6808 ], [ 1.000000e+00, %6806 ]
  %6845 = fmul fast float %6844, %6802
  br label %6846

; <label>:6846                                    ; preds = %6843, %6792, %5532
  %6847 = phi float [ 1.000000e+00, %5532 ], [ %6845, %6843 ], [ %6802, %6792 ]
  %6848 = call float @dx.op.binary.f32(i32 36, float %6847, float %6847)  ; FMin(a,b)
  %6849 = call float @dx.op.binary.f32(i32 36, float %6847, float %6848)  ; FMin(a,b)
  %6850 = fcmp fast ogt float %6849, 0.000000e+00
  br i1 %6850, label %6851, label %7016, !dx.controlflow.hints !162

; <label>:6851                                    ; preds = %6846
  %6852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6853 = extractvalue %dx.types.CBufRet.f32 %6852, 0
  %6854 = extractvalue %dx.types.CBufRet.f32 %6852, 1
  %6855 = extractvalue %dx.types.CBufRet.f32 %6852, 2
  %6856 = extractvalue %dx.types.CBufRet.f32 %6852, 3
  %6857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6858 = extractvalue %dx.types.CBufRet.f32 %6857, 0
  %6859 = extractvalue %dx.types.CBufRet.f32 %6857, 1
  %6860 = extractvalue %dx.types.CBufRet.f32 %6857, 2
  %6861 = extractvalue %dx.types.CBufRet.f32 %6857, 3
  %6862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6863 = extractvalue %dx.types.CBufRet.f32 %6862, 0
  %6864 = extractvalue %dx.types.CBufRet.f32 %6862, 1
  %6865 = extractvalue %dx.types.CBufRet.f32 %6862, 2
  %6866 = extractvalue %dx.types.CBufRet.f32 %6862, 3
  %6867 = fmul fast float %6853, %153
  %6868 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6854, float %6867)  ; FMad(a,b,c)
  %6869 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6855, float %6868)  ; FMad(a,b,c)
  %6870 = fadd fast float %6869, %6856
  %6871 = fmul fast float %6858, %153
  %6872 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6859, float %6871)  ; FMad(a,b,c)
  %6873 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6860, float %6872)  ; FMad(a,b,c)
  %6874 = fadd fast float %6873, %6861
  %6875 = fmul fast float %6863, %153
  %6876 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6864, float %6875)  ; FMad(a,b,c)
  %6877 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6865, float %6876)  ; FMad(a,b,c)
  %6878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6879 = extractvalue %dx.types.CBufRet.f32 %6878, 0
  %6880 = extractvalue %dx.types.CBufRet.f32 %6878, 1
  %6881 = extractvalue %dx.types.CBufRet.f32 %6878, 3
  %6882 = fmul fast float %6881, %6870
  %6883 = fmul fast float %6881, %6874
  %6884 = fadd fast float %6882, %6879
  %6885 = fadd fast float %6883, %6880
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = extractvalue %dx.types.CBufRet.f32 %6886, 1
  %6889 = fsub fast float %6884, %6887
  %6890 = fsub fast float %6885, %6888
  %6891 = fcmp fast olt float %6889, 0.000000e+00
  %6892 = fcmp fast olt float %6890, 0.000000e+00
  %6893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6894 = extractvalue %dx.types.CBufRet.f32 %6893, 0
  %6895 = extractvalue %dx.types.CBufRet.f32 %6893, 1
  %6896 = extractvalue %dx.types.CBufRet.f32 %6893, 2
  %6897 = extractvalue %dx.types.CBufRet.f32 %6893, 3
  %6898 = select i1 %6891, float %6894, float %6896
  %6899 = select i1 %6892, float %6895, float %6897
  %6900 = fmul fast float %6898, %6889
  %6901 = fmul fast float %6899, %6890
  %6902 = call float @dx.op.unary.f32(i32 6, float %6900)  ; FAbs(value)
  %6903 = call float @dx.op.unary.f32(i32 6, float %6901)  ; FAbs(value)
  %6904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6905 = extractvalue %dx.types.CBufRet.f32 %6904, 0
  %6906 = call float @dx.op.binary.f32(i32 35, float %6902, float %6903)  ; FMax(a,b)
  %6907 = fsub fast float %6905, %6906
  %6908 = call float @dx.op.unary.f32(i32 7, float %6907)  ; Saturate(value)
  %6909 = fcmp fast ogt float %6908, 0.000000e+00
  br i1 %6909, label %6910, label %6951, !dx.controlflow.hints !163

; <label>:6910                                    ; preds = %6851
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %61, float %6884, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 1
  %6913 = fcmp fast ogt float %6912, 0.000000e+00
  br i1 %6913, label %6914, label %6946

; <label>:6914                                    ; preds = %6910
  %6915 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %61, float %6884, float %6885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6916 = extractvalue %dx.types.ResRet.f32 %6915, 0
  %6917 = extractvalue %dx.types.ResRet.f32 %6915, 1
  %6918 = extractvalue %dx.types.ResRet.f32 %6915, 2
  %6919 = extractvalue %dx.types.ResRet.f32 %6915, 3
  %6920 = fsub fast float 1.000000e+00, %6866
  %6921 = fsub fast float %6920, %6877
  %6922 = fmul fast float %6921, 0x400921FB60000000
  %6923 = fadd fast float %6922, 0x3FF921FB60000000
  %6924 = call float @dx.op.unary.f32(i32 13, float %6923)  ; Sin(value)
  %6925 = fadd fast float %6924, -1.000000e+00
  %6926 = fmul fast float %6925, 0x3FD45F3060000000
  %6927 = fmul fast float %6921, 0x401921FB60000000
  %6928 = fadd fast float %6927, 0x400921FB60000000
  %6929 = call float @dx.op.unary.f32(i32 13, float %6928)  ; Sin(value)
  %6930 = fadd fast float %6929, 0x3E7777A5C0000000
  %6931 = fmul fast float %6930, 0x3FC45F3060000000
  %6932 = fmul fast float %6921, 0x4022D97C80000000
  %6933 = fadd fast float %6932, 0x4012D97C80000000
  %6934 = call float @dx.op.unary.f32(i32 13, float %6933)  ; Sin(value)
  %6935 = fadd fast float %6934, 1.000000e+00
  %6936 = fmul fast float %6935, 0x3FBB2995E0000000
  %6937 = fmul fast float %6921, 0x402921FB60000000
  %6938 = fadd fast float %6937, 0x401921FB60000000
  %6939 = call float @dx.op.unary.f32(i32 13, float %6938)  ; Sin(value)
  %6940 = fadd fast float %6939, 0xBE8777A5C0000000
  %6941 = fmul fast float %6940, 0x3FB45F3060000000
  %6942 = call float @dx.op.dot4.f32(i32 56, float %6916, float %6917, float %6918, float %6919, float %6926, float %6931, float %6936, float %6941)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6943 = fmul fast float %6942, 0xBFF7154760000000
  %6944 = call float @dx.op.unary.f32(i32 21, float %6943)  ; Exp(value)
  %6945 = call float @dx.op.unary.f32(i32 7, float %6944)  ; Saturate(value)
  br label %6946

; <label>:6946                                    ; preds = %6914, %6910
  %6947 = phi float [ %6945, %6914 ], [ 1.000000e+00, %6910 ]
  %6948 = fadd fast float %6947, -1.000000e+00
  %6949 = fmul fast float %6948, %6908
  %6950 = fadd fast float %6949, 1.000000e+00
  br label %6951

; <label>:6951                                    ; preds = %6946, %6851
  %6952 = phi float [ %6950, %6946 ], [ 1.000000e+00, %6851 ]
  %6953 = fmul fast float %6952, %6847
  %6954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6955 = extractvalue %dx.types.CBufRet.f32 %6954, 0
  %6956 = extractvalue %dx.types.CBufRet.f32 %6954, 1
  %6957 = extractvalue %dx.types.CBufRet.f32 %6954, 2
  %6958 = fadd fast float %6955, %153
  %6959 = fadd fast float %6956, %154
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6963 = extractvalue %dx.types.CBufRet.f32 %6962, 0
  %6964 = extractvalue %dx.types.CBufRet.f32 %6962, 1
  %6965 = extractvalue %dx.types.CBufRet.f32 %6962, 2
  %6966 = fsub fast float -0.000000e+00, %6958
  %6967 = fsub fast float -0.000000e+00, %6959
  %6968 = fsub fast float %2453, %6957
  %6969 = fadd fast float %6968, %6961
  %6970 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6966, float %6967, float %6969)  ; Dot3(ax,ay,az,bx,by,bz)
  %6971 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6963, float %6964, float %6965)  ; Dot3(ax,ay,az,bx,by,bz)
  %6972 = fdiv fast float 1.000000e+00, %6971
  %6973 = fmul fast float %6972, %6970
  %6974 = fmul fast float %6963, %6973
  %6975 = fmul fast float %6964, %6973
  %6976 = fadd fast float %6974, %6958
  %6977 = fadd fast float %6975, %6959
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.CBufRet.f32 %6978, 1
  %6981 = fsub fast float %6976, %6979
  %6982 = fsub fast float %6977, %6980
  %6983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.f32 %6983, 2
  %6985 = extractvalue %dx.types.CBufRet.f32 %6983, 3
  %6986 = fmul fast float %6981, %6984
  %6987 = fmul fast float %6982, %6985
  %6988 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.i32 %6988, 3
  %6990 = icmp eq i32 %6989, 0
  br i1 %6990, label %6996, label %6991

; <label>:6991                                    ; preds = %6951
  %6992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %60, float %6986, float %6987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6993 = extractvalue %dx.types.ResRet.f32 %6992, 0
  %6994 = extractvalue %dx.types.ResRet.f32 %6992, 1
  %6995 = extractvalue %dx.types.ResRet.f32 %6992, 2
  br label %7001

; <label>:6996                                    ; preds = %6951
  %6997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %6986, float %6987, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6998 = extractvalue %dx.types.ResRet.f32 %6997, 0
  %6999 = extractvalue %dx.types.ResRet.f32 %6997, 1
  %7000 = extractvalue %dx.types.ResRet.f32 %6997, 2
  br label %7001

; <label>:7001                                    ; preds = %6996, %6991
  %7002 = phi float [ %6993, %6991 ], [ %6998, %6996 ]
  %7003 = phi float [ %6994, %6991 ], [ %6999, %6996 ]
  %7004 = phi float [ %6995, %6991 ], [ %7000, %6996 ]
  %7005 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %7006 = fmul fast float %7005, %7002
  %7007 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %7008 = fsub fast float %6973, %7007
  %7009 = fsub fast float %7008, %7006
  %7010 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7009)  ; FMax(a,b)
  %7011 = fmul fast float %7010, %7003
  %7012 = call float @dx.op.binary.f32(i32 36, float %7004, float %7011)  ; FMin(a,b)
  %7013 = fmul fast float %7012, 0xBFF7154760000000
  %7014 = call float @dx.op.unary.f32(i32 21, float %7013)  ; Exp(value)
  %7015 = fmul fast float %6953, %7014
  br label %7016

; <label>:7016                                    ; preds = %7001, %6846
  %7017 = phi float [ %7015, %7001 ], [ %6847, %6846 ]
  %7018 = call float @dx.op.binary.f32(i32 36, float %7017, float %7017)  ; FMin(a,b)
  %7019 = call float @dx.op.binary.f32(i32 36, float %7017, float %7018)  ; FMin(a,b)
  %7020 = fcmp fast ogt float %7019, 0.000000e+00
  br i1 %7020, label %7021, label %7150, !dx.controlflow.hints !164

; <label>:7021                                    ; preds = %7016
  %7022 = fmul fast float %7017, %5381
  %7023 = fmul fast float %7017, %5382
  %7024 = fmul fast float %7017, %5383
  %7025 = fsub fast float %5370, %2308
  %7026 = fsub fast float %5371, %2309
  %7027 = fsub fast float %5372, %2310
  %7028 = call float @dx.op.dot3.f32(i32 55, float %7025, float %7026, float %7027, float %7025, float %7026, float %7027)  ; Dot3(ax,ay,az,bx,by,bz)
  %7029 = call float @dx.op.unary.f32(i32 25, float %7028)  ; Rsqrt(value)
  %7030 = fmul fast float %7029, %7025
  %7031 = fmul fast float %7029, %7026
  %7032 = fmul fast float %7029, %7027
  %7033 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %7034 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %7030, float %7031, float %7032)  ; Dot3(ax,ay,az,bx,by,bz)
  %7035 = call float @dx.op.unary.f32(i32 7, float %7033)  ; Saturate(value)
  %7036 = fmul fast float %7035, %7035
  %7037 = fmul fast float %7036, %2495
  %7038 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  %7039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7040 = extractvalue %dx.types.CBufRet.f32 %7039, 0
  %7041 = bitcast float %7040 to i32
  %7042 = lshr i32 %7041, 8
  %7043 = and i32 %7042, 255
  %7044 = uitofp i32 %7043 to float
  %7045 = fptoui float %7044 to i32
  %7046 = and i32 %7045, 8
  %7047 = icmp ne i32 %7046, 0
  %7048 = select i1 %7047, float %7038, float 1.000000e+00
  %7049 = fmul fast float %7048, %7035
  %7050 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float %7030, float %7031, float %7032)  ; Dot3(ax,ay,az,bx,by,bz)
  %7051 = fmul fast float %7050, %7050
  %7052 = call float @dx.op.unary.f32(i32 6, float %7033)  ; FAbs(value)
  %7053 = fsub fast float 1.000000e+00, %2486
  %7054 = fmul fast float %2459, %2459
  %7055 = fmul fast float %7054, %7053
  %7056 = fadd fast float %7055, %2486
  %7057 = bitcast float %7056 to i32
  %7058 = ashr i32 %7057, 1
  %7059 = add nsw i32 %7058, 532487669
  %7060 = bitcast i32 %7059 to float
  %7061 = fadd fast float %7060, %2459
  %7062 = fmul fast float %2486, %7051
  %7063 = fsub fast float 1.000000e+00, %7051
  %7064 = fadd fast float %7063, %7062
  %7065 = fmul fast float %7052, %7052
  %7066 = fmul fast float %7065, %7053
  %7067 = fadd fast float %7066, %2486
  %7068 = bitcast float %7067 to i32
  %7069 = ashr i32 %7068, 1
  %7070 = add nsw i32 %7069, 532487669
  %7071 = bitcast i32 %7070 to float
  %7072 = fadd fast float %7071, %7052
  %7073 = fmul fast float %7064, %7064
  %7074 = fmul fast float %7073, %7061
  %7075 = fmul fast float %7074, %7072
  %7076 = fdiv fast float 0x3FF0A00000000000, %7075
  %7077 = fmul fast float %7076, %2486
  %7078 = call float @dx.op.unary.f32(i32 6, float %7034)  ; FAbs(value)
  %7079 = fsub fast float 1.000000e+00, %7078
  %7080 = bitcast float %7079 to i32
  %7081 = sitofp i32 %7080 to float
  %7082 = fmul fast float %7081, 5.000000e+00
  %7083 = fadd fast float %7082, 0xC1EFBF8940000000
  %7084 = fptosi float %7083 to i32
  %7085 = bitcast i32 %7084 to float
  %7086 = fmul fast float %7085, %2361
  %7087 = fmul fast float %7085, %2362
  %7088 = fmul fast float %7085, %3560
  %7089 = fadd fast float %7086, %2301
  %7090 = fadd fast float %7087, %2302
  %7091 = fadd fast float %7088, %2457
  %7092 = fmul fast float %7033, 9.843750e-01
  %7093 = fmul fast float %2410, 9.843750e-01
  %7094 = fadd fast float %7092, 7.812500e-03
  %7095 = fadd fast float %7093, 7.812500e-03
  %7096 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7094, float %7095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7097 = extractvalue %dx.types.ResRet.f32 %7096, 2
  %7098 = extractvalue %dx.types.ResRet.f32 %7096, 3
  %7099 = fmul fast float %7097, %2301
  %7100 = fmul fast float %7097, %2302
  %7101 = fmul fast float %7097, %2457
  %7102 = fadd fast float %7099, %7098
  %7103 = fadd fast float %7100, %7098
  %7104 = fadd fast float %7101, %7098
  %7105 = call float @dx.op.binary.f32(i32 35, float %7103, float %7104)  ; FMax(a,b)
  %7106 = call float @dx.op.binary.f32(i32 35, float %7102, float %7105)  ; FMax(a,b)
  %7107 = fsub fast float 1.000000e+00, %7106
  %7108 = fsub fast float -0.000000e+00, %2280
  %7109 = fsub fast float -0.000000e+00, %2281
  %7110 = fsub fast float -0.000000e+00, %2282
  %7111 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5371, float %5372, float %7108, float %7109, float %7110)  ; Dot3(ax,ay,az,bx,by,bz)
  %7112 = call float @dx.op.unary.f32(i32 7, float %7111)  ; Saturate(value)
  %7113 = fmul fast float %7112, 9.843750e-01
  %7114 = fadd fast float %7113, 7.812500e-03
  %7115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7114, float %7095, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7116 = extractvalue %dx.types.ResRet.f32 %7115, 2
  %7117 = extractvalue %dx.types.ResRet.f32 %7115, 3
  %7118 = fmul fast float %7116, %2301
  %7119 = fmul fast float %7116, %2302
  %7120 = fmul fast float %7116, %2457
  %7121 = fadd fast float %7118, %7117
  %7122 = fadd fast float %7119, %7117
  %7123 = fadd fast float %7120, %7117
  %7124 = call float @dx.op.binary.f32(i32 35, float %7122, float %7123)  ; FMax(a,b)
  %7125 = call float @dx.op.binary.f32(i32 35, float %7121, float %7124)  ; FMax(a,b)
  %7126 = fsub fast float 1.000000e+00, %7125
  %7127 = fmul fast float %7126, %7112
  %7128 = fmul fast float %7127, %2413
  %7129 = fmul fast float %7107, %7049
  %7130 = fmul fast float %7049, %7077
  %7131 = fmul fast float %7130, %7089
  %7132 = fmul fast float %7130, %7090
  %7133 = fmul fast float %7130, %7091
  %7134 = fadd fast float %7128, %7129
  %7135 = fmul fast float %7134, %7022
  %7136 = fmul fast float %7134, %7023
  %7137 = fmul fast float %7134, %7024
  %7138 = fadd fast float %7135, %5357
  %7139 = fadd fast float %7136, %5358
  %7140 = fadd fast float %7137, %5359
  %7141 = fmul fast float %7131, %7022
  %7142 = fmul fast float %7132, %7023
  %7143 = fmul fast float %7133, %7024
  %7144 = fadd fast float %7141, %5363
  %7145 = fadd fast float %7142, %5364
  %7146 = fadd fast float %7143, %5365
  %7147 = fadd fast float %7141, %5360
  %7148 = fadd fast float %7142, %5361
  %7149 = fadd fast float %7143, %5362
  br label %7150

; <label>:7150                                    ; preds = %7021, %7016, %5350
  %7151 = phi i32 [ %5533, %7021 ], [ %5352, %5350 ], [ %5533, %7016 ]
  %7152 = phi i32 [ 1, %7021 ], [ 0, %5350 ], [ 0, %7016 ]
  %7153 = phi float [ %7141, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7154 = phi float [ %7142, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7155 = phi float [ %7143, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7156 = phi float [ %7135, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7157 = phi float [ %7136, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7158 = phi float [ %7137, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7159 = phi float [ %7147, %7021 ], [ %5360, %5350 ], [ %5360, %7016 ]
  %7160 = phi float [ %7148, %7021 ], [ %5361, %5350 ], [ %5361, %7016 ]
  %7161 = phi float [ %7149, %7021 ], [ %5362, %5350 ], [ %5362, %7016 ]
  %7162 = phi float [ %7138, %7021 ], [ %5357, %5350 ], [ %5357, %7016 ]
  %7163 = phi float [ %7139, %7021 ], [ %5358, %5350 ], [ %5358, %7016 ]
  %7164 = phi float [ %7140, %7021 ], [ %5359, %5350 ], [ %5359, %7016 ]
  %7165 = phi float [ %7017, %7021 ], [ 0.000000e+00, %5350 ], [ 0.000000e+00, %7016 ]
  %7166 = phi float [ %7144, %7021 ], [ %5363, %5350 ], [ %5363, %7016 ]
  %7167 = phi float [ %7145, %7021 ], [ %5364, %5350 ], [ %5364, %7016 ]
  %7168 = phi float [ %7146, %7021 ], [ %5365, %5350 ], [ %5365, %7016 ]
  %7169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7170 = extractvalue %dx.types.CBufRet.i32 %7169, 0
  %7171 = icmp eq i32 %7170, 0
  br i1 %7171, label %8054, label %7172

; <label>:7172                                    ; preds = %7150
  %7173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7174 = extractvalue %dx.types.CBufRet.f32 %7173, 2
  %7175 = extractvalue %dx.types.CBufRet.f32 %7173, 3
  %7176 = fmul fast float %7174, %98
  %7177 = fmul fast float %7175, %99
  %7178 = fptoui float %7176 to i32
  %7179 = fptoui float %7177 to i32
  %7180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7181 = extractvalue %dx.types.CBufRet.f32 %7180, 0
  %7182 = extractvalue %dx.types.CBufRet.f32 %7180, 2
  %7183 = extractvalue %dx.types.CBufRet.f32 %7180, 3
  %7184 = fadd fast float %87, -4.000000e+00
  %7185 = call float @dx.op.binary.f32(i32 35, float %7184, float 0.000000e+00)  ; FMax(a,b)
  %7186 = fadd fast float %7185, %7181
  %7187 = fmul fast float %7186, %7182
  %7188 = call float @dx.op.unary.f32(i32 23, float %7187)  ; Log(value)
  %7189 = fmul fast float %7188, %7183
  %7190 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7191 = extractvalue %dx.types.CBufRet.f32 %7190, 2
  %7192 = fmul fast float %7189, %7191
  %7193 = call float @dx.op.unary.f32(i32 7, float %7192)  ; Saturate(value)
  %7194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.i32 %7194, 1
  %7196 = add i32 %7195, -1
  %7197 = uitofp i32 %7195 to float
  %7198 = fmul fast float %7197, %7193
  %7199 = fptoui float %7198 to i32
  %7200 = call i32 @dx.op.binary.i32(i32 40, i32 %7199, i32 %7196)  ; UMin(a,b)
  %7201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7202 = extractvalue %dx.types.CBufRet.i32 %7201, 2
  %7203 = extractvalue %dx.types.CBufRet.i32 %7201, 3
  %7204 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7179, i32 %7202, i32 %7178)  ; UMad(a,b,c)
  %7205 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7200, i32 %7203, i32 %7204)  ; UMad(a,b,c)
  %7206 = add nsw i32 %7170, -1
  %7207 = call i32 @dx.op.binary.i32(i32 37, i32 %7206, i32 0)  ; IMax(a,b)
  %7208 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %7209 = fptoui float %7208 to i32
  %7210 = lshr i32 %7209, 5
  %7211 = call i32 @dx.op.binary.i32(i32 40, i32 %7210, i32 8191)  ; UMin(a,b)
  %7212 = shl i32 %7211, 2
  %7213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7212, i32 undef)  ; BufferLoad(srv,index,wot)
  %7214 = extractvalue %dx.types.ResRet.i32 %7213, 0
  %7215 = lshr i32 %7214, 16
  %7216 = and i32 %7214, 65535
  %7217 = lshr i32 %7214, 21
  %7218 = lshr i32 %7216, 5
  %7219 = call i32 @dx.op.binary.i32(i32 40, i32 %7218, i32 %7207)  ; UMin(a,b)
  %7220 = icmp ugt i32 %7217, %7219
  br i1 %7220, label %7987, label %7221

; <label>:7221                                    ; preds = %7172
  br label %7222

; <label>:7222                                    ; preds = %7956, %7221
  %7223 = phi i32 [ %7957, %7956 ], [ %7151, %7221 ]
  %7224 = phi i32 [ %7958, %7956 ], [ 0, %7221 ]
  %7225 = phi i32 [ %7959, %7956 ], [ 0, %7221 ]
  %7226 = phi i32 [ %7960, %7956 ], [ 0, %7221 ]
  %7227 = phi i32 [ %7961, %7956 ], [ 0, %7221 ]
  %7228 = phi i32 [ %7962, %7956 ], [ 0, %7221 ]
  %7229 = phi i32 [ %7963, %7956 ], [ 0, %7221 ]
  %7230 = phi i32 [ %7964, %7956 ], [ 0, %7221 ]
  %7231 = phi i32 [ %7965, %7956 ], [ 0, %7221 ]
  %7232 = phi i32 [ %7984, %7956 ], [ %7217, %7221 ]
  %7233 = phi float [ %7966, %7956 ], [ %7153, %7221 ]
  %7234 = phi float [ %7967, %7956 ], [ %7154, %7221 ]
  %7235 = phi float [ %7968, %7956 ], [ %7155, %7221 ]
  %7236 = phi float [ %7969, %7956 ], [ %7156, %7221 ]
  %7237 = phi float [ %7970, %7956 ], [ %7157, %7221 ]
  %7238 = phi float [ %7971, %7956 ], [ %7158, %7221 ]
  %7239 = phi float [ %7972, %7956 ], [ %7159, %7221 ]
  %7240 = phi float [ %7973, %7956 ], [ %7160, %7221 ]
  %7241 = phi float [ %7974, %7956 ], [ %7161, %7221 ]
  %7242 = phi float [ %7975, %7956 ], [ %7162, %7221 ]
  %7243 = phi float [ %7976, %7956 ], [ %7163, %7221 ]
  %7244 = phi float [ %7977, %7956 ], [ %7164, %7221 ]
  %7245 = phi float [ %7978, %7956 ], [ %7166, %7221 ]
  %7246 = phi float [ %7979, %7956 ], [ %7167, %7221 ]
  %7247 = phi float [ %7980, %7956 ], [ %7168, %7221 ]
  %7248 = phi float [ %7981, %7956 ], [ %7162, %7221 ]
  %7249 = phi float [ %7982, %7956 ], [ %7163, %7221 ]
  %7250 = phi float [ %7983, %7956 ], [ %7164, %7221 ]
  %7251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7252 = extractvalue %dx.types.CBufRet.i32 %7251, 0
  %7253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7205, i32 %7252, i32 %7232)  ; UMad(a,b,c)
  %7254 = shl i32 %7253, 2
  %7255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7254, i32 undef)  ; BufferLoad(srv,index,wot)
  %7256 = extractvalue %dx.types.ResRet.i32 %7255, 0
  %7257 = shl i32 %7232, 5
  %7258 = sub nsw i32 %7215, %7257
  %7259 = call i32 @dx.op.binary.i32(i32 37, i32 %7258, i32 0)  ; IMax(a,b)
  %7260 = call i32 @dx.op.binary.i32(i32 38, i32 %7259, i32 31)  ; IMin(a,b)
  %7261 = sub nsw i32 1, %7215
  %7262 = add nsw i32 %7261, %7216
  %7263 = call i32 @dx.op.binary.i32(i32 37, i32 %7262, i32 0)  ; IMax(a,b)
  %7264 = call i32 @dx.op.binary.i32(i32 38, i32 %7263, i32 32)  ; IMin(a,b)
  %7265 = and i32 %7264, 31
  %7266 = shl i32 -1, %7265
  %7267 = xor i32 %7266, -1
  %7268 = and i32 %7260, 31
  %7269 = shl i32 %7267, %7268
  %7270 = icmp eq i32 %7264, 32
  %7271 = select i1 %7270, i32 -1, i32 %7269
  %7272 = and i32 %7271, %7256
  %7273 = icmp eq i32 %7272, 0
  br i1 %7273, label %7956, label %7274

; <label>:7274                                    ; preds = %7222
  br label %7275

; <label>:7275                                    ; preds = %7469, %7274
  %7276 = phi i32 [ %7470, %7469 ], [ %7223, %7274 ]
  %7277 = phi i32 [ %7459, %7469 ], [ %7224, %7274 ]
  %7278 = phi i32 [ %7461, %7469 ], [ %7225, %7274 ]
  %7279 = phi i32 [ %7463, %7469 ], [ %7226, %7274 ]
  %7280 = phi i32 [ %7465, %7469 ], [ %7227, %7274 ]
  %7281 = phi i32 [ %7471, %7469 ], [ %7228, %7274 ]
  %7282 = phi i32 [ %7472, %7469 ], [ %7229, %7274 ]
  %7283 = phi i32 [ %7473, %7469 ], [ %7230, %7274 ]
  %7284 = phi i32 [ %7474, %7469 ], [ %7231, %7274 ]
  %7285 = phi i32 [ %7308, %7469 ], [ %7272, %7274 ]
  %7286 = phi float [ %7475, %7469 ], [ %7233, %7274 ]
  %7287 = phi float [ %7476, %7469 ], [ %7234, %7274 ]
  %7288 = phi float [ %7477, %7469 ], [ %7235, %7274 ]
  %7289 = phi float [ %7478, %7469 ], [ %7236, %7274 ]
  %7290 = phi float [ %7479, %7469 ], [ %7237, %7274 ]
  %7291 = phi float [ %7480, %7469 ], [ %7238, %7274 ]
  %7292 = phi float [ %7481, %7469 ], [ %7239, %7274 ]
  %7293 = phi float [ %7482, %7469 ], [ %7240, %7274 ]
  %7294 = phi float [ %7483, %7469 ], [ %7241, %7274 ]
  %7295 = phi float [ %7484, %7469 ], [ %7242, %7274 ]
  %7296 = phi float [ %7485, %7469 ], [ %7243, %7274 ]
  %7297 = phi float [ %7486, %7469 ], [ %7244, %7274 ]
  %7298 = phi float [ %7487, %7469 ], [ %7245, %7274 ]
  %7299 = phi float [ %7488, %7469 ], [ %7246, %7274 ]
  %7300 = phi float [ %7489, %7469 ], [ %7247, %7274 ]
  %7301 = phi float [ %7490, %7469 ], [ %7248, %7274 ]
  %7302 = phi float [ %7491, %7469 ], [ %7249, %7274 ]
  %7303 = phi float [ %7492, %7469 ], [ %7250, %7274 ]
  %7304 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7285)  ; FirstbitLo(value)
  %7305 = add i32 %7304, %7257
  %7306 = and i32 %7304, 31
  %7307 = shl i32 1, %7306
  %7308 = xor i32 %7307, %7285
  %7309 = mul i32 %7305, 112
  %7310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7309, i32 undef)  ; BufferLoad(srv,index,wot)
  %7311 = extractvalue %dx.types.ResRet.f32 %7310, 0
  %7312 = extractvalue %dx.types.ResRet.f32 %7310, 1
  %7313 = extractvalue %dx.types.ResRet.f32 %7310, 2
  %7314 = or i32 %7309, 12
  %7315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7314, i32 undef)  ; BufferLoad(srv,index,wot)
  %7316 = extractvalue %dx.types.ResRet.f32 %7315, 0
  %7317 = add i32 %7309, 16
  %7318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7317, i32 undef)  ; BufferLoad(srv,index,wot)
  %7319 = extractvalue %dx.types.ResRet.f32 %7318, 0
  %7320 = extractvalue %dx.types.ResRet.f32 %7318, 1
  %7321 = extractvalue %dx.types.ResRet.f32 %7318, 2
  %7322 = add i32 %7309, 28
  %7323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7322, i32 undef)  ; BufferLoad(srv,index,wot)
  %7324 = extractvalue %dx.types.ResRet.i32 %7323, 0
  %7325 = add i32 %7309, 32
  %7326 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7325, i32 undef)  ; BufferLoad(srv,index,wot)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  %7328 = extractvalue %dx.types.ResRet.f32 %7326, 1
  %7329 = extractvalue %dx.types.ResRet.f32 %7326, 2
  %7330 = add i32 %7309, 44
  %7331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7330, i32 undef)  ; BufferLoad(srv,index,wot)
  %7332 = extractvalue %dx.types.ResRet.f32 %7331, 0
  %7333 = add i32 %7309, 48
  %7334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7333, i32 undef)  ; BufferLoad(srv,index,wot)
  %7335 = extractvalue %dx.types.ResRet.f32 %7334, 0
  %7336 = extractvalue %dx.types.ResRet.f32 %7334, 1
  %7337 = extractvalue %dx.types.ResRet.f32 %7334, 2
  %7338 = extractvalue %dx.types.ResRet.f32 %7334, 3
  %7339 = add i32 %7309, 64
  %7340 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7339, i32 undef)  ; BufferLoad(srv,index,wot)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 0
  %7342 = extractvalue %dx.types.ResRet.f32 %7340, 1
  %7343 = extractvalue %dx.types.ResRet.f32 %7340, 2
  %7344 = extractvalue %dx.types.ResRet.f32 %7340, 3
  %7345 = add i32 %7309, 80
  %7346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7345, i32 undef)  ; BufferLoad(srv,index,wot)
  %7347 = extractvalue %dx.types.ResRet.f32 %7346, 1
  %7348 = extractvalue %dx.types.ResRet.f32 %7346, 2
  %7349 = add i32 %7309, 92
  %7350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7349, i32 undef)  ; BufferLoad(srv,index,wot)
  %7351 = extractvalue %dx.types.ResRet.i32 %7350, 0
  %7352 = call float @dx.op.dot3.f32(i32 55, float %7311, float %7312, float %7313, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7353 = select i1 %2452, float %7347, float %7311
  %7354 = select i1 %2452, float %7352, float %7312
  %7355 = select i1 %2452, float %7348, float %7313
  %7356 = and i32 %7351, 65535
  %7357 = uitofp i32 %7356 to float
  %7358 = lshr i32 %7351, 16
  %7359 = uitofp i32 %7358 to float
  %7360 = and i32 %7324, 65535
  %7361 = lshr i32 %7324, 24
  %7362 = and i32 %7361, 3
  %7363 = and i32 %7324, 536870912
  %7364 = icmp ne i32 %7363, 0
  %7365 = icmp eq i32 %7362, 2
  %7366 = call float @dx.op.dot3.f32(i32 55, float %7327, float %7328, float %7329, float %7327, float %7328, float %7329)  ; Dot3(ax,ay,az,bx,by,bz)
  %7367 = fsub fast float %153, %7335
  %7368 = fsub fast float %154, %7336
  %7369 = fsub fast float %155, %7337
  %7370 = call float @dx.op.dot3.f32(i32 55, float %7367, float %7368, float %7369, float %7327, float %7328, float %7329)  ; Dot3(ax,ay,az,bx,by,bz)
  %7371 = fdiv fast float %7370, %7366
  %7372 = call float @dx.op.binary.f32(i32 35, float %7371, float -1.000000e+00)  ; FMax(a,b)
  %7373 = call float @dx.op.binary.f32(i32 36, float %7372, float 1.000000e+00)  ; FMin(a,b)
  %7374 = fmul fast float %7373, %7327
  %7375 = fmul fast float %7373, %7328
  %7376 = fmul fast float %7373, %7329
  %7377 = fadd fast float %7374, %7335
  %7378 = fadd fast float %7375, %7336
  %7379 = fadd fast float %7376, %7337
  %7380 = fsub fast float %7377, %153
  %7381 = fsub fast float %7378, %154
  %7382 = fsub fast float %7379, %155
  %7383 = call float @dx.op.dot3.f32(i32 55, float %7380, float %7381, float %7382, float %7380, float %7381, float %7382)  ; Dot3(ax,ay,az,bx,by,bz)
  %7384 = call float @dx.op.unary.f32(i32 24, float %7383)  ; Sqrt(value)
  %7385 = fdiv fast float 1.000000e+00, %7384
  %7386 = fmul fast float %7380, %7385
  %7387 = fmul fast float %7381, %7385
  %7388 = fmul fast float %7382, %7385
  %7389 = fadd fast float %7384, %7316
  %7390 = fdiv fast float 1.000000e+00, %7389
  %7391 = fmul float %7332, %7390
  %7392 = fmul float %7391, %7391
  %7393 = call float @dx.op.unary.f32(i32 7, float %7392)  ; Saturate(value)
  br i1 %7365, label %7394, label %7418

; <label>:7394                                    ; preds = %7275
  %7395 = fmul fast float %7343, %7319
  %7396 = fmul fast float %7343, %7320
  %7397 = fmul fast float %7343, %7321
  %7398 = fsub fast float %7395, %153
  %7399 = fadd fast float %7398, %7377
  %7400 = fsub fast float %7396, %154
  %7401 = fadd fast float %7400, %7378
  %7402 = fsub fast float %7397, %155
  %7403 = fadd fast float %7402, %7379
  %7404 = call float @dx.op.dot3.f32(i32 55, float %7399, float %7401, float %7403, float %7399, float %7401, float %7403)  ; Dot3(ax,ay,az,bx,by,bz)
  %7405 = call float @dx.op.unary.f32(i32 25, float %7404)  ; Rsqrt(value)
  %7406 = fmul fast float %7405, %7399
  %7407 = fmul fast float %7405, %7401
  %7408 = fmul fast float %7405, %7403
  %7409 = fsub fast float %153, %7377
  %7410 = fsub fast float %154, %7378
  %7411 = fsub fast float %155, %7379
  %7412 = fsub fast float -0.000000e+00, %7409
  %7413 = fsub fast float -0.000000e+00, %7410
  %7414 = fsub fast float -0.000000e+00, %7411
  %7415 = call float @dx.op.dot3.f32(i32 55, float %7412, float %7413, float %7414, float %7319, float %7320, float %7321)  ; Dot3(ax,ay,az,bx,by,bz)
  %7416 = fcmp fast ogt float %7415, 0.000000e+00
  %7417 = uitofp i1 %7416 to float
  br label %7418

; <label>:7418                                    ; preds = %7394, %7275
  %7419 = phi float [ %7417, %7394 ], [ 1.000000e+00, %7275 ]
  %7420 = phi float [ %7406, %7394 ], [ %7386, %7275 ]
  %7421 = phi float [ %7407, %7394 ], [ %7387, %7275 ]
  %7422 = phi float [ %7408, %7394 ], [ %7388, %7275 ]
  %7423 = call float @dx.op.dot3.f32(i32 55, float %7319, float %7320, float %7321, float %7420, float %7421, float %7422)  ; Dot3(ax,ay,az,bx,by,bz)
  %7424 = fmul fast float %7423, %7423
  %7425 = call float @dx.op.unary.f32(i32 7, float %7424)  ; Saturate(value)
  %7426 = fsub fast float 1.000000e+00, %7425
  %7427 = fmul fast float %7426, 5.000000e-01
  %7428 = fcmp fast ogt float %7423, 0.000000e+00
  %7429 = fsub fast float 1.000000e+00, %7427
  %7430 = select i1 %7428, float %7427, float %7429
  %7431 = fmul fast float %7430, %7359
  %7432 = fadd fast float %7431, %7357
  %7433 = fmul fast float %7432, 0x3EF0001000000000
  %7434 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %61, float %7433, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7435 = extractvalue %dx.types.ResRet.f32 %7434, 0
  %7436 = fmul fast float %7423, %7341
  %7437 = fadd fast float %7436, %7342
  %7438 = call float @dx.op.unary.f32(i32 7, float %7437)  ; Saturate(value)
  %7439 = select i1 %7365, float 1.000000e+00, float %7438
  %7440 = select i1 %7365, float %7438, float 1.000000e+00
  %7441 = fmul fast float %7384, %7338
  %7442 = fsub fast float 1.000000e+00, %7441
  %7443 = fmul fast float %7442, %7344
  %7444 = call float @dx.op.unary.f32(i32 7, float %7443)  ; Saturate(value)
  %7445 = fmul fast float %7444, %7440
  %7446 = fmul fast float %7445, 2.000000e+00
  %7447 = fsub fast float 3.000000e+00, %7446
  %7448 = fmul fast float %7435, %7419
  %7449 = fmul fast float %7445, %7445
  %7450 = fmul fast float %7449, %7448
  %7451 = fmul fast float %7450, %7447
  %7452 = xor i1 %7364, true
  %7453 = and i1 %7365, %7452
  %7454 = icmp ne i32 %7362, 2
  %7455 = and i1 %7454, %7452
  %7456 = and i1 %7364, %7365
  %7457 = and i1 %7364, %7454
  %7458 = zext i1 %7453 to i32
  %7459 = add i32 %7458, %7277
  %7460 = zext i1 %7455 to i32
  %7461 = add i32 %7460, %7278
  %7462 = zext i1 %7456 to i32
  %7463 = add i32 %7462, %7279
  %7464 = zext i1 %7457 to i32
  %7465 = add i32 %7464, %7280
  %7466 = call float @dx.op.binary.f32(i32 36, float %7451, float %7451)  ; FMin(a,b)
  %7467 = call float @dx.op.binary.f32(i32 36, float %7451, float %7466)  ; FMin(a,b)
  %7468 = fcmp fast ogt float %7467, 0.000000e+00
  br i1 %7468, label %7494, label %7469, !dx.controlflow.hints !165

; <label>:7469                                    ; preds = %7940, %7418
  %7470 = phi i32 [ %7950, %7940 ], [ %7276, %7418 ]
  %7471 = phi i32 [ %7951, %7940 ], [ %7281, %7418 ]
  %7472 = phi i32 [ %7952, %7940 ], [ %7282, %7418 ]
  %7473 = phi i32 [ %7953, %7940 ], [ %7283, %7418 ]
  %7474 = phi i32 [ %7954, %7940 ], [ %7284, %7418 ]
  %7475 = phi float [ %7911, %7940 ], [ %7286, %7418 ]
  %7476 = phi float [ %7912, %7940 ], [ %7287, %7418 ]
  %7477 = phi float [ %7913, %7940 ], [ %7288, %7418 ]
  %7478 = phi float [ %7914, %7940 ], [ %7289, %7418 ]
  %7479 = phi float [ %7915, %7940 ], [ %7290, %7418 ]
  %7480 = phi float [ %7916, %7940 ], [ %7291, %7418 ]
  %7481 = phi float [ %7917, %7940 ], [ %7292, %7418 ]
  %7482 = phi float [ %7918, %7940 ], [ %7293, %7418 ]
  %7483 = phi float [ %7919, %7940 ], [ %7294, %7418 ]
  %7484 = phi float [ %7920, %7940 ], [ %7295, %7418 ]
  %7485 = phi float [ %7921, %7940 ], [ %7296, %7418 ]
  %7486 = phi float [ %7922, %7940 ], [ %7297, %7418 ]
  %7487 = phi float [ %7923, %7940 ], [ %7298, %7418 ]
  %7488 = phi float [ %7924, %7940 ], [ %7299, %7418 ]
  %7489 = phi float [ %7925, %7940 ], [ %7300, %7418 ]
  %7490 = phi float [ %7926, %7940 ], [ %7301, %7418 ]
  %7491 = phi float [ %7927, %7940 ], [ %7302, %7418 ]
  %7492 = phi float [ %7928, %7940 ], [ %7303, %7418 ]
  %7493 = icmp eq i32 %7285, %7307
  br i1 %7493, label %7955, label %7275

; <label>:7494                                    ; preds = %7418
  %7495 = icmp eq i32 %7360, 255
  br i1 %7495, label %7633, label %7496, !dx.controlflow.hints !166

; <label>:7496                                    ; preds = %7494
  %7497 = mul nuw nsw i32 %7360, 176
  %7498 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7497, i32 undef)  ; BufferLoad(srv,index,wot)
  %7499 = extractvalue %dx.types.ResRet.f32 %7498, 0
  %7500 = extractvalue %dx.types.ResRet.f32 %7498, 1
  %7501 = extractvalue %dx.types.ResRet.f32 %7498, 2
  %7502 = extractvalue %dx.types.ResRet.f32 %7498, 3
  %7503 = add nuw nsw i32 %7497, 16
  %7504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7503, i32 undef)  ; BufferLoad(srv,index,wot)
  %7505 = extractvalue %dx.types.ResRet.f32 %7504, 0
  %7506 = extractvalue %dx.types.ResRet.f32 %7504, 1
  %7507 = add nuw nsw i32 %7497, 32
  %7508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7507, i32 undef)  ; BufferLoad(srv,index,wot)
  %7509 = extractvalue %dx.types.ResRet.f32 %7508, 0
  %7510 = extractvalue %dx.types.ResRet.f32 %7508, 1
  %7511 = add nuw nsw i32 %7497, 48
  %7512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7511, i32 undef)  ; BufferLoad(srv,index,wot)
  %7513 = extractvalue %dx.types.ResRet.f32 %7512, 0
  %7514 = extractvalue %dx.types.ResRet.f32 %7512, 1
  %7515 = extractvalue %dx.types.ResRet.f32 %7512, 2
  %7516 = extractvalue %dx.types.ResRet.f32 %7512, 3
  %7517 = add nuw nsw i32 %7497, 64
  %7518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7517, i32 undef)  ; BufferLoad(srv,index,wot)
  %7519 = extractvalue %dx.types.ResRet.f32 %7518, 0
  %7520 = extractvalue %dx.types.ResRet.f32 %7518, 1
  %7521 = extractvalue %dx.types.ResRet.f32 %7518, 2
  %7522 = extractvalue %dx.types.ResRet.f32 %7518, 3
  %7523 = add nuw nsw i32 %7497, 80
  %7524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7523, i32 undef)  ; BufferLoad(srv,index,wot)
  %7525 = extractvalue %dx.types.ResRet.f32 %7524, 0
  %7526 = extractvalue %dx.types.ResRet.f32 %7524, 1
  %7527 = extractvalue %dx.types.ResRet.f32 %7524, 2
  %7528 = extractvalue %dx.types.ResRet.f32 %7524, 3
  %7529 = add nuw nsw i32 %7497, 96
  %7530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7529, i32 undef)  ; BufferLoad(srv,index,wot)
  %7531 = extractvalue %dx.types.ResRet.f32 %7530, 0
  %7532 = extractvalue %dx.types.ResRet.f32 %7530, 1
  %7533 = extractvalue %dx.types.ResRet.f32 %7530, 2
  %7534 = extractvalue %dx.types.ResRet.f32 %7530, 3
  %7535 = bitcast float %7506 to i32
  %7536 = fmul fast float %7513, %153
  %7537 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7519, float %7536)  ; FMad(a,b,c)
  %7538 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7525, float %7537)  ; FMad(a,b,c)
  %7539 = fadd fast float %7538, %7531
  %7540 = fmul fast float %7514, %153
  %7541 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7520, float %7540)  ; FMad(a,b,c)
  %7542 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7526, float %7541)  ; FMad(a,b,c)
  %7543 = fadd fast float %7542, %7532
  %7544 = fmul fast float %7515, %153
  %7545 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7521, float %7544)  ; FMad(a,b,c)
  %7546 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7527, float %7545)  ; FMad(a,b,c)
  %7547 = fadd fast float %7546, %7533
  %7548 = fmul fast float %7516, %153
  %7549 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7522, float %7548)  ; FMad(a,b,c)
  %7550 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7528, float %7549)  ; FMad(a,b,c)
  %7551 = fadd fast float %7550, %7534
  %7552 = fdiv fast float %7539, %7551
  %7553 = fdiv fast float %7543, %7551
  %7554 = fdiv fast float %7547, %7551
  %7555 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7554)  ; FMax(a,b)
  %7556 = fmul fast float %1755, 0x401921FB60000000
  %7557 = call float @dx.op.unary.f32(i32 13, float %7556)  ; Sin(value)
  %7558 = call float @dx.op.unary.f32(i32 12, float %7556)  ; Cos(value)
  %7559 = fmul fast float %7558, %7510
  %7560 = call float @dx.op.tertiary.f32(i32 46, float %7557, float %7510, float 0.000000e+00)  ; FMad(a,b,c)
  %7561 = fmul fast float %7510, %7557
  %7562 = fsub fast float -0.000000e+00, %7561
  %7563 = call float @dx.op.tertiary.f32(i32 46, float %7558, float %7510, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7564

; <label>:7564                                    ; preds = %7564, %7496
  %7565 = phi float [ 0.000000e+00, %7496 ], [ %7597, %7564 ]
  %7566 = phi float [ 0.000000e+00, %7496 ], [ %7599, %7564 ]
  %7567 = phi i32 [ 0, %7496 ], [ %7600, %7564 ]
  %7568 = mul i32 %7567, 2
  %7569 = add i32 0, %7568
  %7570 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7569
  %7571 = load float, float* %7570, align 4
  %7572 = mul i32 %7567, 2
  %7573 = add i32 1, %7572
  %7574 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7573
  %7575 = load float, float* %7574, align 4
  %7576 = fmul fast float %7559, %7571
  %7577 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7562, float %7576)  ; FMad(a,b,c)
  %7578 = fmul fast float %7571, %7560
  %7579 = call float @dx.op.tertiary.f32(i32 46, float %7575, float %7563, float %7578)  ; FMad(a,b,c)
  %7580 = fadd fast float %7577, %7552
  %7581 = fadd fast float %7579, %7553
  %7582 = fmul fast float %7580, %7505
  %7583 = fmul fast float %7581, %7505
  %7584 = call float @dx.op.binary.f32(i32 35, float %7582, float %7501)  ; FMax(a,b)
  %7585 = call float @dx.op.binary.f32(i32 35, float %7583, float %7501)  ; FMax(a,b)
  %7586 = call float @dx.op.binary.f32(i32 36, float %7584, float %7502)  ; FMin(a,b)
  %7587 = call float @dx.op.binary.f32(i32 36, float %7585, float %7502)  ; FMin(a,b)
  %7588 = fadd fast float %7586, %7499
  %7589 = fadd fast float %7587, %7500
  %7590 = uitofp i32 %7535 to float
  %7591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %62, float %7588, float %7589, float %7590, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = fsub fast float %7592, %7555
  %7594 = fsub fast float %7593, %7509
  %7595 = fcmp fast ogt float %7594, 0.000000e+00
  %7596 = select i1 %7595, float 1.000000e+00, float 0.000000e+00
  %7597 = fadd fast float %7596, %7565
  %7598 = select i1 %7595, float %7594, float 0.000000e+00
  %7599 = fadd fast float %7598, %7566
  %7600 = add nuw nsw i32 %7567, 1
  %7601 = icmp eq i32 %7600, 8
  br i1 %7601, label %7602, label %7564

; <label>:7602                                    ; preds = %7564
  %7603 = fdiv fast float 1.000000e+00, %7597
  %7604 = fmul fast float %7603, %7599
  %7605 = fdiv fast float 1.000000e+00, %7555
  %7606 = fmul fast float %7604, %7605
  %7607 = call float @dx.op.unary.f32(i32 7, float %7606)  ; Saturate(value)
  %7608 = call float @dx.op.binary.f32(i32 35, float %7607, float 0.000000e+00)  ; FMax(a,b)
  %7609 = fmul fast float %7597, 1.250000e-01
  %7610 = call float @dx.op.unary.f32(i32 7, float %7609)  ; Saturate(value)
  %7611 = fmul fast float %7610, 2.000000e+00
  %7612 = fadd fast float %7611, -1.000000e+00
  %7613 = fcmp fast ogt float %7612, 0.000000e+00
  %7614 = fcmp fast olt float %7612, 0.000000e+00
  %7615 = zext i1 %7613 to i32
  %7616 = zext i1 %7614 to i32
  %7617 = sub nsw i32 %7615, %7616
  %7618 = sitofp i32 %7617 to float
  %7619 = fmul fast float %7618, %7612
  %7620 = fsub fast float 1.000000e+00, %7619
  %7621 = fmul fast float %7620, %7620
  %7622 = fmul fast float %7621, %7620
  %7623 = fsub fast float %7620, %7622
  %7624 = fmul fast float %7623, %7608
  %7625 = fsub fast float 1.000000e+00, %7622
  %7626 = fsub fast float %7625, %7624
  %7627 = fmul fast float %7618, 5.000000e-01
  %7628 = fmul fast float %7627, %7626
  %7629 = fsub fast float -5.000000e-01, %7628
  %7630 = fmul fast float %7629, %7439
  %7631 = fadd fast float %7630, 1.000000e+00
  %7632 = fmul fast float %7631, %7451
  br label %7633

; <label>:7633                                    ; preds = %7602, %7494
  %7634 = phi float [ %7632, %7602 ], [ %7451, %7494 ]
  %7635 = call float @dx.op.binary.f32(i32 36, float %7634, float %7634)  ; FMin(a,b)
  %7636 = call float @dx.op.binary.f32(i32 36, float %7634, float %7635)  ; FMin(a,b)
  %7637 = fcmp fast ogt float %7636, 0.000000e+00
  br i1 %7637, label %7638, label %7910, !dx.controlflow.hints !167

; <label>:7638                                    ; preds = %7633
  %7639 = fmul fast float %7634, %7353
  %7640 = fmul fast float %7634, %7354
  %7641 = fmul fast float %7634, %7355
  %7642 = fadd fast float %7386, %2280
  %7643 = fadd fast float %7387, %2281
  %7644 = fadd fast float %7388, %2282
  %7645 = call float @dx.op.dot3.f32(i32 55, float %7386, float %7387, float %7388, float %7380, float %7381, float %7382)  ; Dot3(ax,ay,az,bx,by,bz)
  %7646 = call float @dx.op.dot3.f32(i32 55, float %7386, float %7387, float %7388, float %7642, float %7643, float %7644)  ; Dot3(ax,ay,az,bx,by,bz)
  %7647 = fdiv fast float 1.000000e+00, %7646
  %7648 = fmul fast float %7647, %7645
  %7649 = fmul fast float %7648, %7642
  %7650 = fmul fast float %7648, %7643
  %7651 = fmul fast float %7648, %7644
  %7652 = fadd fast float %7367, %7649
  %7653 = fadd fast float %7368, %7650
  %7654 = fadd fast float %7369, %7651
  %7655 = call float @dx.op.dot3.f32(i32 55, float %7652, float %7653, float %7654, float %7327, float %7328, float %7329)  ; Dot3(ax,ay,az,bx,by,bz)
  %7656 = fdiv fast float %7655, %7366
  %7657 = call float @dx.op.binary.f32(i32 35, float %7656, float -1.000000e+00)  ; FMax(a,b)
  %7658 = call float @dx.op.binary.f32(i32 36, float %7657, float 1.000000e+00)  ; FMin(a,b)
  %7659 = fmul fast float %7658, %7327
  %7660 = fmul fast float %7658, %7328
  %7661 = fmul fast float %7658, %7329
  %7662 = fsub fast float %7335, %153
  %7663 = fadd fast float %7662, %7659
  %7664 = fsub fast float %7336, %154
  %7665 = fadd fast float %7664, %7660
  %7666 = fsub fast float %7337, %155
  %7667 = fadd fast float %7666, %7661
  %7668 = call float @dx.op.dot3.f32(i32 55, float %7663, float %7665, float %7667, float %7663, float %7665, float %7667)  ; Dot3(ax,ay,az,bx,by,bz)
  %7669 = call float @dx.op.unary.f32(i32 25, float %7668)  ; Rsqrt(value)
  %7670 = fmul fast float %7663, %7669
  %7671 = fmul fast float %7665, %7669
  %7672 = fmul fast float %7667, %7669
  %7673 = fsub fast float %7670, %2308
  %7674 = fsub fast float %7671, %2309
  %7675 = fsub fast float %7672, %2310
  %7676 = call float @dx.op.dot3.f32(i32 55, float %7673, float %7674, float %7675, float %7673, float %7674, float %7675)  ; Dot3(ax,ay,az,bx,by,bz)
  %7677 = call float @dx.op.unary.f32(i32 25, float %7676)  ; Rsqrt(value)
  %7678 = fmul fast float %7673, %7677
  %7679 = fmul fast float %7674, %7677
  %7680 = fmul fast float %7675, %7677
  %7681 = call float @dx.op.dot3.f32(i32 55, float %7670, float %7671, float %7672, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %7682 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %7678, float %7679, float %7680)  ; Dot3(ax,ay,az,bx,by,bz)
  %7683 = fmul fast float %7669, %7332
  %7684 = fmul fast float %7683, %7683
  %7685 = bitcast float %7684 to i32
  %7686 = ashr i32 %7685, 1
  %7687 = sub nsw i32 1597463007, %7686
  %7688 = bitcast i32 %7687 to float
  %7689 = fmul fast float %7688, %7681
  %7690 = fmul fast float %7689, %7689
  %7691 = fsub fast float 1.000000e+00, %7690
  %7692 = fmul fast float %7681, %7684
  %7693 = call float @dx.op.unary.f32(i32 7, float %7692)  ; Saturate(value)
  %7694 = fmul fast float %7689, 5.000000e-01
  %7695 = fadd fast float %7694, 5.000000e-01
  %7696 = fmul fast float %7695, %7684
  %7697 = call float @dx.op.unary.f32(i32 7, float %7696)  ; Saturate(value)
  %7698 = bitcast float %7697 to i32
  %7699 = ashr i32 %7698, 1
  %7700 = add nsw i32 %7699, 532487669
  %7701 = bitcast i32 %7700 to float
  %7702 = fmul fast float %7701, %7697
  %7703 = fcmp fast ogt float %7691, 0.000000e+00
  %7704 = select i1 %7703, float %7702, float %7693
  %7705 = call float @dx.op.unary.f32(i32 7, float %7681)  ; Saturate(value)
  %7706 = fmul fast float %7705, %7705
  %7707 = fmul fast float %7706, %2495
  %7708 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7710 = extractvalue %dx.types.CBufRet.f32 %7709, 0
  %7711 = bitcast float %7710 to i32
  %7712 = lshr i32 %7711, 8
  %7713 = and i32 %7712, 255
  %7714 = uitofp i32 %7713 to float
  %7715 = fptoui float %7714 to i32
  %7716 = and i32 %7715, 8
  %7717 = icmp ne i32 %7716, 0
  %7718 = select i1 %7717, float %7708, float 1.000000e+00
  %7719 = fmul fast float %7718, %7704
  %7720 = call float @dx.op.dot3.f32(i32 55, float %7327, float %7328, float %7329, float %2464, float %2465, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %7721 = call float @dx.op.dot3.f32(i32 55, float %7327, float %7328, float %7329, float %7380, float %7381, float %7382)  ; Dot3(ax,ay,az,bx,by,bz)
  %7722 = call float @dx.op.dot3.f32(i32 55, float %2464, float %2465, float %2466, float %7380, float %7381, float %7382)  ; Dot3(ax,ay,az,bx,by,bz)
  %7723 = fmul fast float %7720, %7720
  %7724 = fsub fast float %7366, %7723
  %7725 = fmul fast float %7722, %7720
  %7726 = fsub fast float %7725, %7721
  %7727 = fdiv fast float %7726, %7724
  %7728 = call float @dx.op.binary.f32(i32 35, float %7727, float -1.500000e+00)  ; FMax(a,b)
  %7729 = call float @dx.op.binary.f32(i32 36, float %7728, float 1.500000e+00)  ; FMin(a,b)
  %7730 = fmul fast float %7729, %7729
  %7731 = fmul fast float %7730, 0x3FC2F68380000000
  %7732 = fmul fast float %7731, %7729
  %7733 = fsub fast float %7729, %7732
  %7734 = fmul fast float %7733, %7327
  %7735 = fmul fast float %7733, %7328
  %7736 = fmul fast float %7733, %7329
  %7737 = fadd fast float %7734, %7377
  %7738 = fadd fast float %7735, %7378
  %7739 = fadd fast float %7736, %7379
  %7740 = fsub fast float %7737, %153
  %7741 = fsub fast float %7738, %154
  %7742 = fsub fast float %7739, %155
  %7743 = call float @dx.op.dot3.f32(i32 55, float %7740, float %7741, float %7742, float %2464, float %2465, float %2466)  ; Dot3(ax,ay,az,bx,by,bz)
  %7744 = fmul fast float %7743, %2464
  %7745 = fmul fast float %7743, %2465
  %7746 = fmul fast float %7743, %2466
  %7747 = fsub fast float %7744, %7740
  %7748 = fsub fast float %7745, %7741
  %7749 = fsub fast float %7746, %7742
  %7750 = call float @dx.op.dot3.f32(i32 55, float %7747, float %7748, float %7749, float %7747, float %7748, float %7749)  ; Dot3(ax,ay,az,bx,by,bz)
  %7751 = bitcast float %7750 to i32
  %7752 = ashr i32 %7751, 1
  %7753 = sub nsw i32 1597463007, %7752
  %7754 = bitcast i32 %7753 to float
  %7755 = fmul fast float %7754, %7332
  %7756 = call float @dx.op.dot3.f32(i32 55, float %7740, float %7741, float %7742, float %7740, float %7741, float %7742)  ; Dot3(ax,ay,az,bx,by,bz)
  %7757 = bitcast float %7756 to i32
  %7758 = ashr i32 %7757, 1
  %7759 = sub nsw i32 1597463007, %7758
  %7760 = bitcast i32 %7759 to float
  %7761 = fmul fast float %7755, %7755
  %7762 = fadd fast float %7761, 1.250000e-01
  %7763 = call float @dx.op.unary.f32(i32 25, float %7762)  ; Rsqrt(value)
  %7764 = fmul fast float %7755, %7763
  %7765 = fmul fast float %7747, %7764
  %7766 = fmul fast float %7748, %7764
  %7767 = fmul fast float %7749, %7764
  %7768 = fadd fast float %7740, %7765
  %7769 = fadd fast float %7741, %7766
  %7770 = fadd fast float %7742, %7767
  %7771 = call float @dx.op.dot3.f32(i32 55, float %7768, float %7769, float %7770, float %7768, float %7769, float %7770)  ; Dot3(ax,ay,az,bx,by,bz)
  %7772 = call float @dx.op.unary.f32(i32 25, float %7771)  ; Rsqrt(value)
  %7773 = fmul fast float %7768, %7772
  %7774 = fmul fast float %7769, %7772
  %7775 = fmul fast float %7770, %7772
  %7776 = fsub fast float %7773, %2308
  %7777 = fsub fast float %7774, %2309
  %7778 = fsub fast float %7775, %2310
  %7779 = call float @dx.op.dot3.f32(i32 55, float %7776, float %7777, float %7778, float %7776, float %7777, float %7778)  ; Dot3(ax,ay,az,bx,by,bz)
  %7780 = call float @dx.op.unary.f32(i32 25, float %7779)  ; Rsqrt(value)
  %7781 = fmul fast float %7776, %7780
  %7782 = fmul fast float %7777, %7780
  %7783 = fmul fast float %7778, %7780
  %7784 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float %7781, float %7782, float %7783)  ; Dot3(ax,ay,az,bx,by,bz)
  %7785 = fmul fast float %7784, %7784
  %7786 = call float @dx.op.unary.f32(i32 6, float %7681)  ; FAbs(value)
  %7787 = fsub fast float 1.000000e+00, %2486
  %7788 = fmul fast float %2459, %2459
  %7789 = fmul fast float %7788, %7787
  %7790 = fadd fast float %7789, %2486
  %7791 = bitcast float %7790 to i32
  %7792 = ashr i32 %7791, 1
  %7793 = add nsw i32 %7792, 532487669
  %7794 = bitcast i32 %7793 to float
  %7795 = fadd fast float %7794, %2459
  %7796 = fmul fast float %2486, %7785
  %7797 = fsub fast float 1.000000e+00, %7785
  %7798 = fadd fast float %7797, %7796
  %7799 = fmul fast float %7786, %7786
  %7800 = fmul fast float %7799, %7787
  %7801 = fadd fast float %7800, %2486
  %7802 = bitcast float %7801 to i32
  %7803 = ashr i32 %7802, 1
  %7804 = add nsw i32 %7803, 532487669
  %7805 = bitcast i32 %7804 to float
  %7806 = fadd fast float %7805, %7786
  %7807 = fmul fast float %7798, %7798
  %7808 = fmul fast float %7807, %7795
  %7809 = fmul fast float %7808, %7806
  %7810 = fdiv fast float 1.000000e+00, %7809
  %7811 = bitcast float %2486 to i32
  %7812 = sitofp i32 %7811 to float
  %7813 = fmul fast float %7812, 0x3FE7F73180000000
  %7814 = fadd fast float %7813, 0x41AFE27C40000000
  %7815 = fptosi float %7814 to i32
  %7816 = bitcast i32 %7815 to float
  %7817 = fmul fast float %7332, 0x3FD80E9D60000000
  %7818 = fmul fast float %7817, %7760
  %7819 = fadd fast float %7816, %7818
  %7820 = bitcast float %7819 to i32
  %7821 = sub nsw i32 2129859010, %7820
  %7822 = bitcast i32 %7821 to float
  %7823 = fmul fast float %2486, %7810
  %7824 = fmul fast float %7823, %7816
  %7825 = fmul fast float %7824, %7822
  %7826 = call float @dx.op.unary.f32(i32 6, float %7682)  ; FAbs(value)
  %7827 = fsub fast float 1.000000e+00, %7826
  %7828 = bitcast float %7827 to i32
  %7829 = sitofp i32 %7828 to float
  %7830 = fmul fast float %7829, 5.000000e+00
  %7831 = fadd fast float %7830, 0xC1EFBF8940000000
  %7832 = fptosi float %7831 to i32
  %7833 = bitcast i32 %7832 to float
  %7834 = fmul fast float %7833, %2361
  %7835 = fmul fast float %7833, %2362
  %7836 = fmul fast float %7833, %3560
  %7837 = fadd fast float %7834, %2301
  %7838 = fadd fast float %7835, %2302
  %7839 = fadd fast float %7836, %2457
  %7840 = fmul fast float %7681, 9.843750e-01
  %7841 = fmul fast float %2410, 9.843750e-01
  %7842 = fadd fast float %7840, 7.812500e-03
  %7843 = fadd fast float %7841, 7.812500e-03
  %7844 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7842, float %7843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7845 = extractvalue %dx.types.ResRet.f32 %7844, 2
  %7846 = extractvalue %dx.types.ResRet.f32 %7844, 3
  %7847 = fmul fast float %7845, %2301
  %7848 = fmul fast float %7845, %2302
  %7849 = fmul fast float %7845, %2457
  %7850 = fadd fast float %7847, %7846
  %7851 = fadd fast float %7848, %7846
  %7852 = fadd fast float %7849, %7846
  %7853 = call float @dx.op.binary.f32(i32 35, float %7851, float %7852)  ; FMax(a,b)
  %7854 = call float @dx.op.binary.f32(i32 35, float %7850, float %7853)  ; FMax(a,b)
  %7855 = fsub fast float 1.000000e+00, %7854
  %7856 = fsub fast float -0.000000e+00, %2280
  %7857 = fsub fast float -0.000000e+00, %2281
  %7858 = fsub fast float -0.000000e+00, %2282
  %7859 = call float @dx.op.dot3.f32(i32 55, float %7386, float %7387, float %7388, float %7856, float %7857, float %7858)  ; Dot3(ax,ay,az,bx,by,bz)
  %7860 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  %7861 = fmul fast float %7860, %7393
  %7862 = fmul fast float %7860, 9.843750e-01
  %7863 = fadd fast float %7862, 7.812500e-03
  %7864 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7863, float %7843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7865 = extractvalue %dx.types.ResRet.f32 %7864, 2
  %7866 = extractvalue %dx.types.ResRet.f32 %7864, 3
  %7867 = fmul fast float %7865, %2301
  %7868 = fmul fast float %7865, %2302
  %7869 = fmul fast float %7865, %2457
  %7870 = fadd fast float %7867, %7866
  %7871 = fadd fast float %7868, %7866
  %7872 = fadd fast float %7869, %7866
  %7873 = call float @dx.op.binary.f32(i32 35, float %7871, float %7872)  ; FMax(a,b)
  %7874 = call float @dx.op.binary.f32(i32 35, float %7870, float %7873)  ; FMax(a,b)
  %7875 = fsub fast float 1.000000e+00, %7874
  %7876 = fmul fast float %7861, %7875
  %7877 = fmul fast float %7876, %2413
  %7878 = fmul fast float %7855, %7719
  %7879 = fmul fast float %7837, %7719
  %7880 = fmul fast float %7879, %7825
  %7881 = fmul fast float %7838, %7719
  %7882 = fmul fast float %7881, %7825
  %7883 = fmul fast float %7839, %7719
  %7884 = fmul fast float %7883, %7825
  %7885 = fadd fast float %7877, %7878
  %7886 = fmul fast float %7885, %7639
  %7887 = fmul fast float %7885, %7640
  %7888 = fmul fast float %7885, %7641
  %7889 = fadd fast float %7886, %7301
  %7890 = fadd fast float %7887, %7302
  %7891 = fadd fast float %7888, %7303
  %7892 = fmul fast float %7880, %7639
  %7893 = fmul fast float %7882, %7640
  %7894 = fmul fast float %7884, %7641
  %7895 = fadd fast float %7892, %7298
  %7896 = fadd fast float %7893, %7299
  %7897 = fadd fast float %7894, %7300
  %7898 = fadd fast float %7886, %7295
  %7899 = fadd fast float %7887, %7296
  %7900 = fadd fast float %7888, %7297
  %7901 = fadd fast float %7892, %7292
  %7902 = fadd fast float %7893, %7293
  %7903 = fadd fast float %7894, %7294
  %7904 = fadd fast float %7886, %7289
  %7905 = fadd fast float %7887, %7290
  %7906 = fadd fast float %7888, %7291
  %7907 = fadd fast float %7892, %7286
  %7908 = fadd fast float %7893, %7287
  %7909 = fadd fast float %7894, %7288
  br label %7910

; <label>:7910                                    ; preds = %7638, %7633
  %7911 = phi float [ %7286, %7633 ], [ %7907, %7638 ]
  %7912 = phi float [ %7287, %7633 ], [ %7908, %7638 ]
  %7913 = phi float [ %7288, %7633 ], [ %7909, %7638 ]
  %7914 = phi float [ %7289, %7633 ], [ %7904, %7638 ]
  %7915 = phi float [ %7290, %7633 ], [ %7905, %7638 ]
  %7916 = phi float [ %7291, %7633 ], [ %7906, %7638 ]
  %7917 = phi float [ %7292, %7633 ], [ %7901, %7638 ]
  %7918 = phi float [ %7293, %7633 ], [ %7902, %7638 ]
  %7919 = phi float [ %7294, %7633 ], [ %7903, %7638 ]
  %7920 = phi float [ %7295, %7633 ], [ %7898, %7638 ]
  %7921 = phi float [ %7296, %7633 ], [ %7899, %7638 ]
  %7922 = phi float [ %7297, %7633 ], [ %7900, %7638 ]
  %7923 = phi float [ %7298, %7633 ], [ %7895, %7638 ]
  %7924 = phi float [ %7299, %7633 ], [ %7896, %7638 ]
  %7925 = phi float [ %7300, %7633 ], [ %7897, %7638 ]
  %7926 = phi float [ %7301, %7633 ], [ %7889, %7638 ]
  %7927 = phi float [ %7302, %7633 ], [ %7890, %7638 ]
  %7928 = phi float [ %7303, %7633 ], [ %7891, %7638 ]
  %7929 = bitcast i32 %7276 to float
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 1
  %7932 = bitcast float %7931 to i32
  %7933 = and i32 %7932, 65535
  %7934 = icmp eq i32 %7933, 65535
  br i1 %7934, label %7935, label %7937

; <label>:7935                                    ; preds = %7910
  %7936 = call float @dx.op.binary.f32(i32 35, float %7929, float %7634)  ; FMax(a,b)
  br label %7940

; <label>:7937                                    ; preds = %7910
  %7938 = icmp eq i32 %7933, %7305
  %7939 = select i1 %7938, float %7634, float %7929
  br label %7940

; <label>:7940                                    ; preds = %7937, %7935
  %7941 = phi float [ %7936, %7935 ], [ %7939, %7937 ]
  %7942 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7943 = bitcast float %7942 to i32
  %7944 = lshr i32 %7943, 8
  %7945 = and i32 %7944, 255
  %7946 = uitofp i32 %7945 to float
  %7947 = fptoui float %7946 to i32
  %7948 = icmp eq i32 %7947, 15
  %7949 = bitcast float %7941 to i32
  %7950 = select i1 %7948, i32 %7949, i32 %7276
  %7951 = add i32 %7458, %7281
  %7952 = add i32 %7460, %7282
  %7953 = add i32 %7462, %7283
  %7954 = add i32 %7464, %7284
  br label %7469

; <label>:7955                                    ; preds = %7469
  br label %7956

; <label>:7956                                    ; preds = %7955, %7222
  %7957 = phi i32 [ %7223, %7222 ], [ %7470, %7955 ]
  %7958 = phi i32 [ %7224, %7222 ], [ %7459, %7955 ]
  %7959 = phi i32 [ %7225, %7222 ], [ %7461, %7955 ]
  %7960 = phi i32 [ %7226, %7222 ], [ %7463, %7955 ]
  %7961 = phi i32 [ %7227, %7222 ], [ %7465, %7955 ]
  %7962 = phi i32 [ %7228, %7222 ], [ %7471, %7955 ]
  %7963 = phi i32 [ %7229, %7222 ], [ %7472, %7955 ]
  %7964 = phi i32 [ %7230, %7222 ], [ %7473, %7955 ]
  %7965 = phi i32 [ %7231, %7222 ], [ %7474, %7955 ]
  %7966 = phi float [ %7233, %7222 ], [ %7475, %7955 ]
  %7967 = phi float [ %7234, %7222 ], [ %7476, %7955 ]
  %7968 = phi float [ %7235, %7222 ], [ %7477, %7955 ]
  %7969 = phi float [ %7236, %7222 ], [ %7478, %7955 ]
  %7970 = phi float [ %7237, %7222 ], [ %7479, %7955 ]
  %7971 = phi float [ %7238, %7222 ], [ %7480, %7955 ]
  %7972 = phi float [ %7239, %7222 ], [ %7481, %7955 ]
  %7973 = phi float [ %7240, %7222 ], [ %7482, %7955 ]
  %7974 = phi float [ %7241, %7222 ], [ %7483, %7955 ]
  %7975 = phi float [ %7242, %7222 ], [ %7484, %7955 ]
  %7976 = phi float [ %7243, %7222 ], [ %7485, %7955 ]
  %7977 = phi float [ %7244, %7222 ], [ %7486, %7955 ]
  %7978 = phi float [ %7245, %7222 ], [ %7487, %7955 ]
  %7979 = phi float [ %7246, %7222 ], [ %7488, %7955 ]
  %7980 = phi float [ %7247, %7222 ], [ %7489, %7955 ]
  %7981 = phi float [ %7248, %7222 ], [ %7490, %7955 ]
  %7982 = phi float [ %7249, %7222 ], [ %7491, %7955 ]
  %7983 = phi float [ %7250, %7222 ], [ %7492, %7955 ]
  %7984 = add i32 %7232, 1
  %7985 = icmp ugt i32 %7984, %7219
  br i1 %7985, label %7986, label %7222

; <label>:7986                                    ; preds = %7956
  br label %7987

; <label>:7987                                    ; preds = %7986, %7172
  %7988 = phi i32 [ %7151, %7172 ], [ %7957, %7986 ]
  %7989 = phi i32 [ 0, %7172 ], [ %7958, %7986 ]
  %7990 = phi i32 [ 0, %7172 ], [ %7959, %7986 ]
  %7991 = phi i32 [ 0, %7172 ], [ %7960, %7986 ]
  %7992 = phi i32 [ 0, %7172 ], [ %7961, %7986 ]
  %7993 = phi i32 [ 0, %7172 ], [ %7962, %7986 ]
  %7994 = phi i32 [ 0, %7172 ], [ %7963, %7986 ]
  %7995 = phi i32 [ 0, %7172 ], [ %7964, %7986 ]
  %7996 = phi i32 [ 0, %7172 ], [ %7965, %7986 ]
  %7997 = phi float [ %7153, %7172 ], [ %7966, %7986 ]
  %7998 = phi float [ %7154, %7172 ], [ %7967, %7986 ]
  %7999 = phi float [ %7155, %7172 ], [ %7968, %7986 ]
  %8000 = phi float [ %7156, %7172 ], [ %7969, %7986 ]
  %8001 = phi float [ %7157, %7172 ], [ %7970, %7986 ]
  %8002 = phi float [ %7158, %7172 ], [ %7971, %7986 ]
  %8003 = phi float [ %7159, %7172 ], [ %7972, %7986 ]
  %8004 = phi float [ %7160, %7172 ], [ %7973, %7986 ]
  %8005 = phi float [ %7161, %7172 ], [ %7974, %7986 ]
  %8006 = phi float [ %7162, %7172 ], [ %7975, %7986 ]
  %8007 = phi float [ %7163, %7172 ], [ %7976, %7986 ]
  %8008 = phi float [ %7164, %7172 ], [ %7977, %7986 ]
  %8009 = phi float [ %7166, %7172 ], [ %7978, %7986 ]
  %8010 = phi float [ %7167, %7172 ], [ %7979, %7986 ]
  %8011 = phi float [ %7168, %7172 ], [ %7980, %7986 ]
  %8012 = phi float [ %7162, %7172 ], [ %7981, %7986 ]
  %8013 = phi float [ %7163, %7172 ], [ %7982, %7986 ]
  %8014 = phi float [ %7164, %7172 ], [ %7983, %7986 ]
  %8015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8016 = extractvalue %dx.types.CBufRet.f32 %8015, 1
  %8017 = bitcast float %8016 to i32
  %8018 = lshr i32 %8017, 24
  %8019 = uitofp i32 %8018 to float
  %8020 = fptoui float %8019 to i32
  %8021 = icmp eq i32 %8020, 1
  %8022 = select i1 %8021, i32 %7993, i32 %7989
  %8023 = uitofp i32 %8022 to float
  %8024 = fptoui float %8023 to i32
  %8025 = shl i32 %8024, 8
  %8026 = select i1 %8021, i32 %7994, i32 %7990
  %8027 = uitofp i32 %8026 to float
  %8028 = fptoui float %8027 to i32
  %8029 = shl i32 %8028, 16
  %8030 = and i32 %8025, 65280
  %8031 = or i32 %8030, %7152
  %8032 = select i1 %8021, i32 %7995, i32 %7991
  %8033 = uitofp i32 %8032 to float
  %8034 = fptoui float %8033 to i32
  %8035 = shl i32 %8034, 24
  %8036 = and i32 %8029, 16711680
  %8037 = or i32 %8031, %8036
  %8038 = or i32 %8037, %8035
  %8039 = select i1 %8021, i32 %7996, i32 %7992
  %8040 = uitofp i32 %8039 to float
  %8041 = fptoui float %8040 to i32
  %8042 = and i32 %8041, 255
  %8043 = and i32 %5351, -256
  %8044 = or i32 %8042, %8043
  %8045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8046 = extractvalue %dx.types.CBufRet.f32 %8045, 0
  %8047 = bitcast float %8046 to i32
  %8048 = lshr i32 %8047, 8
  %8049 = and i32 %8048, 255
  %8050 = uitofp i32 %8049 to float
  %8051 = fptoui float %8050 to i32
  %8052 = icmp eq i32 %8051, 12
  %8053 = select i1 %8052, i32 0, i32 %7988
  br label %8054

; <label>:8054                                    ; preds = %7987, %7150
  %8055 = phi i32 [ %5351, %7150 ], [ %8044, %7987 ]
  %8056 = phi i32 [ 0, %7150 ], [ %8038, %7987 ]
  %8057 = phi i32 [ %7151, %7150 ], [ %8053, %7987 ]
  %8058 = phi float [ %7153, %7150 ], [ %7997, %7987 ]
  %8059 = phi float [ %7154, %7150 ], [ %7998, %7987 ]
  %8060 = phi float [ %7155, %7150 ], [ %7999, %7987 ]
  %8061 = phi float [ %7156, %7150 ], [ %8000, %7987 ]
  %8062 = phi float [ %7157, %7150 ], [ %8001, %7987 ]
  %8063 = phi float [ %7158, %7150 ], [ %8002, %7987 ]
  %8064 = phi float [ %7159, %7150 ], [ %8003, %7987 ]
  %8065 = phi float [ %7160, %7150 ], [ %8004, %7987 ]
  %8066 = phi float [ %7161, %7150 ], [ %8005, %7987 ]
  %8067 = phi float [ %7162, %7150 ], [ %8006, %7987 ]
  %8068 = phi float [ %7163, %7150 ], [ %8007, %7987 ]
  %8069 = phi float [ %7164, %7150 ], [ %8008, %7987 ]
  %8070 = phi float [ %7166, %7150 ], [ %8009, %7987 ]
  %8071 = phi float [ %7167, %7150 ], [ %8010, %7987 ]
  %8072 = phi float [ %7168, %7150 ], [ %8011, %7987 ]
  %8073 = phi float [ %7162, %7150 ], [ %8012, %7987 ]
  %8074 = phi float [ %7163, %7150 ], [ %8013, %7987 ]
  %8075 = phi float [ %7164, %7150 ], [ %8014, %7987 ]
  %8076 = and i32 %2360, 255
  %8077 = uitofp i32 %8076 to float
  %8078 = fmul fast float %8077, 0x3F70101020000000
  %8079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8080 = extractvalue %dx.types.CBufRet.f32 %8079, 2
  %8081 = extractvalue %dx.types.CBufRet.f32 %8079, 3
  %8082 = fmul fast float %8080, %98
  %8083 = fmul fast float %8081, %99
  %8084 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %2370, i32 %2376, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8085 = extractvalue %dx.types.ResRet.f32 %8084, 0
  %8086 = fcmp fast ogt float %8085, -1.000000e+00
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 1
  %8089 = select i1 %8086, float %8088, float 1.000000e+00
  %8090 = fadd fast float %8085, 1.000000e+00
  %8091 = fmul fast float %8089, %8090
  %8092 = call float @dx.op.unary.f32(i32 6, float %8091)  ; FAbs(value)
  br i1 %115, label %8093, label %8532

; <label>:8093                                    ; preds = %8054
  %8094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8095 = extractvalue %dx.types.CBufRet.f32 %8094, 0
  %8096 = extractvalue %dx.types.CBufRet.f32 %8094, 1
  %8097 = extractvalue %dx.types.CBufRet.f32 %8094, 2
  %8098 = fcmp fast oge float %8096, %87
  %8099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8100 = extractvalue %dx.types.CBufRet.i32 %8099, 0
  %8101 = and i32 %8100, 65538
  %8102 = icmp eq i32 %8101, 65538
  %8103 = and i1 %8102, %8098
  br i1 %8103, label %8104, label %8188

; <label>:8104                                    ; preds = %8093
  %8105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8106 = extractvalue %dx.types.CBufRet.f32 %8105, 0
  %8107 = extractvalue %dx.types.CBufRet.f32 %8105, 1
  %8108 = fmul fast float %8106, %8082
  %8109 = fmul fast float %8107, %8083
  %8110 = extractvalue %dx.types.CBufRet.f32 %8105, 2
  %8111 = extractvalue %dx.types.CBufRet.f32 %8105, 3
  %8112 = fmul fast float %8108, %8110
  %8113 = fmul fast float %8109, %8111
  %8114 = call float @dx.op.unary.f32(i32 7, float %8112)  ; Saturate(value)
  %8115 = call float @dx.op.unary.f32(i32 7, float %8113)  ; Saturate(value)
  %8116 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %8114, float %8115, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8117 = extractvalue %dx.types.ResRet.f32 %8116, 0
  %8118 = extractvalue %dx.types.ResRet.f32 %8116, 1
  %8119 = extractvalue %dx.types.ResRet.f32 %8116, 2
  %8120 = extractvalue %dx.types.ResRet.f32 %8116, 3
  %8121 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %8114, float %8115, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8122 = extractvalue %dx.types.ResRet.f32 %8121, 0
  %8123 = extractvalue %dx.types.ResRet.f32 %8121, 1
  %8124 = extractvalue %dx.types.ResRet.f32 %8121, 2
  %8125 = extractvalue %dx.types.ResRet.f32 %8121, 3
  %8126 = call float @dx.op.binary.f32(i32 35, float %8118, float %8119)  ; FMax(a,b)
  %8127 = call float @dx.op.binary.f32(i32 35, float %8117, float %8126)  ; FMax(a,b)
  %8128 = call float @dx.op.binary.f32(i32 35, float %8127, float %8120)  ; FMax(a,b)
  %8129 = call float @dx.op.binary.f32(i32 36, float %8123, float %8124)  ; FMin(a,b)
  %8130 = call float @dx.op.binary.f32(i32 36, float %8122, float %8129)  ; FMin(a,b)
  %8131 = call float @dx.op.binary.f32(i32 36, float %8130, float %8125)  ; FMin(a,b)
  %8132 = fmul fast float %8128, 2.550000e+02
  %8133 = fadd fast float %8132, 0x3F70101020000000
  %8134 = fptoui float %8133 to i32
  %8135 = fmul fast float %8131, 2.550000e+02
  %8136 = fadd fast float %8135, 0x3F70101020000000
  %8137 = fptoui float %8136 to i32
  %8138 = icmp ult i32 %8134, %8137
  br i1 %8138, label %8139, label %8188

; <label>:8139                                    ; preds = %8104
  %8140 = fadd fast float %8092, -4.000000e+00
  %8141 = call float @dx.op.binary.f32(i32 35, float %8140, float 0.000000e+00)  ; FMax(a,b)
  %8142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8143 = extractvalue %dx.types.CBufRet.f32 %8142, 0
  %8144 = fadd fast float %8143, %8141
  %8145 = extractvalue %dx.types.CBufRet.f32 %8142, 2
  %8146 = fmul fast float %8144, %8145
  %8147 = call float @dx.op.unary.f32(i32 23, float %8146)  ; Log(value)
  %8148 = extractvalue %dx.types.CBufRet.f32 %8142, 3
  %8149 = fmul fast float %8148, %8147
  %8150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8151 = extractvalue %dx.types.CBufRet.f32 %8150, 2
  %8152 = fmul fast float %8149, %8151
  %8153 = call float @dx.op.unary.f32(i32 7, float %8152)  ; Saturate(value)
  %8154 = uitofp i32 %8134 to float
  %8155 = uitofp i32 %8137 to float
  %8156 = fadd fast float %8154, 5.000000e-01
  %8157 = fadd fast float %8155, 5.000000e-01
  %8158 = fmul fast float %8151, %8156
  %8159 = fmul fast float %8151, %8157
  %8160 = fadd fast float %8158, 0x3F0FFB4800000000
  %8161 = fadd fast float %8159, 0xBF0FFB4800000000
  %8162 = call float @dx.op.binary.f32(i32 35, float %8153, float %8160)  ; FMax(a,b)
  %8163 = call float @dx.op.binary.f32(i32 36, float %8162, float %8161)  ; FMin(a,b)
  %8164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8165 = extractvalue %dx.types.CBufRet.f32 %8164, 1
  %8166 = extractvalue %dx.types.CBufRet.f32 %8164, 2
  %8167 = extractvalue %dx.types.CBufRet.f32 %8164, 0
  %8168 = fmul fast float %8165, %8163
  %8169 = fadd fast float %8167, %8168
  %8170 = fadd fast float %8167, %8166
  %8171 = fsub fast float %8165, %8166
  %8172 = fadd fast float %8171, %8167
  %8173 = call float @dx.op.binary.f32(i32 35, float %8169, float %8170)  ; FMax(a,b)
  %8174 = call float @dx.op.binary.f32(i32 36, float %8173, float %8172)  ; FMin(a,b)
  %8175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %8114, float %8115, float %8174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8176 = extractvalue %dx.types.ResRet.f32 %8175, 0
  %8177 = extractvalue %dx.types.ResRet.f32 %8175, 1
  %8178 = extractvalue %dx.types.ResRet.f32 %8175, 2
  %8179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %8114, float %8115, float %8174, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8180 = extractvalue %dx.types.ResRet.f32 %8179, 0
  %8181 = extractvalue %dx.types.ResRet.f32 %8179, 1
  %8182 = extractvalue %dx.types.ResRet.f32 %8179, 2
  %8183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8184 = extractvalue %dx.types.CBufRet.f32 %8183, 1
  %8185 = fmul fast float %8184, %8180
  %8186 = fmul fast float %8184, %8181
  %8187 = fmul fast float %8184, %8182
  br label %8188

; <label>:8188                                    ; preds = %8139, %8104, %8093
  %8189 = phi float [ 0.000000e+00, %8093 ], [ %8185, %8139 ], [ 0.000000e+00, %8104 ]
  %8190 = phi float [ 0.000000e+00, %8093 ], [ %8186, %8139 ], [ 0.000000e+00, %8104 ]
  %8191 = phi float [ 0.000000e+00, %8093 ], [ %8187, %8139 ], [ 0.000000e+00, %8104 ]
  %8192 = phi float [ 1.000000e+00, %8093 ], [ %8176, %8139 ], [ 1.000000e+00, %8104 ]
  %8193 = phi float [ 1.000000e+00, %8093 ], [ %8177, %8139 ], [ 1.000000e+00, %8104 ]
  %8194 = phi float [ 1.000000e+00, %8093 ], [ %8178, %8139 ], [ 1.000000e+00, %8104 ]
  %8195 = fcmp fast olt float %8078, 1.000000e+00
  %8196 = fcmp fast olt float %8095, %8092
  %8197 = or i1 %8195, %8196
  br i1 %8197, label %8198, label %8289

; <label>:8198                                    ; preds = %8188
  %8199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %8200 = extractvalue %dx.types.CBufRet.i32 %8199, 0
  %8201 = call i32 @dx.op.binary.i32(i32 40, i32 %197, i32 %8200)  ; UMin(a,b)
  %8202 = mul i32 %8201, 36
  %8203 = add i32 %8202, 4
  %8204 = add i32 %8203, %431
  %8205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %8204, i32 undef)  ; BufferLoad(srv,index,wot)
  %8206 = extractvalue %dx.types.ResRet.i32 %8205, 0
  %8207 = and i32 %8206, 32767
  %8208 = mul nuw nsw i32 %8207, 928
  %8209 = add nuw nsw i32 %8208, 44
  %8210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8209, i32 undef)  ; BufferLoad(srv,index,wot)
  %8211 = extractvalue %dx.types.ResRet.f32 %8210, 0
  %8212 = add nuw nsw i32 %8208, 48
  %8213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8212, i32 undef)  ; BufferLoad(srv,index,wot)
  %8214 = extractvalue %dx.types.ResRet.f32 %8213, 0
  %8215 = extractvalue %dx.types.ResRet.f32 %8213, 1
  %8216 = extractvalue %dx.types.ResRet.f32 %8213, 2
  %8217 = add nuw nsw i32 %8208, 60
  %8218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8217, i32 undef)  ; BufferLoad(srv,index,wot)
  %8219 = extractvalue %dx.types.ResRet.f32 %8218, 0
  %8220 = extractvalue %dx.types.ResRet.f32 %8218, 1
  %8221 = extractvalue %dx.types.ResRet.f32 %8218, 2
  %8222 = fmul fast float %8214, 0x3F847AE140000000
  %8223 = fmul fast float %8215, 0x3F847AE140000000
  %8224 = fmul fast float %8216, 0x3F847AE140000000
  %8225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %8226 = extractvalue %dx.types.CBufRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.CBufRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.CBufRet.f32 %8225, 2
  %8229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %8230 = extractvalue %dx.types.CBufRet.f32 %8229, 0
  %8231 = extractvalue %dx.types.CBufRet.f32 %8229, 1
  %8232 = call float @dx.op.dot3.f32(i32 55, float %8226, float %8227, float %8228, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8233 = select i1 %2452, float %8230, float %8226
  %8234 = select i1 %2452, float %8232, float %8227
  %8235 = select i1 %2452, float %8231, float %8228
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 0
  %8238 = extractvalue %dx.types.CBufRet.f32 %8236, 1
  %8239 = extractvalue %dx.types.CBufRet.f32 %8236, 2
  %8240 = fadd fast float %8219, %8214
  %8241 = fmul fast float %8240, 0x3F847AE140000000
  %8242 = fadd fast float %8220, %8215
  %8243 = fmul fast float %8242, 0x3F847AE140000000
  %8244 = fadd fast float %8221, %8216
  %8245 = fmul fast float %8244, 0x3F847AE140000000
  %8246 = call float @dx.op.dot3.f32(i32 55, float %8237, float %8238, float %8239, float %2308, float %2309, float %2310)  ; Dot3(ax,ay,az,bx,by,bz)
  %8247 = fcmp fast ogt float %8211, 0.000000e+00
  %8248 = select i1 %8247, float 1.000000e+00, float -1.000000e+00
  %8249 = fmul fast float %8248, 5.000000e-01
  %8250 = fmul fast float %8249, %8246
  %8251 = fmul fast float %8248, %8211
  %8252 = fadd fast float %8250, 4.921875e-01
  %8253 = fadd fast float %8251, -3.125000e-02
  %8254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %61, float %8252, float 0x3FB25F3060000000, float %8253, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8255 = extractvalue %dx.types.ResRet.f32 %8254, 0
  %8256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.f32 %8256, 0
  %8258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %8259 = extractvalue %dx.types.CBufRet.f32 %8258, 0
  %8260 = fmul fast float %8259, %8257
  %8261 = extractvalue %dx.types.CBufRet.f32 %8258, 1
  %8262 = fadd fast float %8260, %8261
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 0
  %8265 = fmul fast float %8264, %7165
  %8266 = extractvalue %dx.types.CBufRet.f32 %8263, 1
  %8267 = fadd fast float %8265, %8266
  %8268 = call float @dx.op.unary.f32(i32 7, float %8267)  ; Saturate(value)
  %8269 = extractvalue %dx.types.CBufRet.f32 %8256, 3
  %8270 = extractvalue %dx.types.CBufRet.f32 %8258, 2
  %8271 = fmul fast float %8270, %8269
  %8272 = extractvalue %dx.types.CBufRet.f32 %8258, 3
  %8273 = fadd fast float %8271, %8272
  %8274 = fmul fast float %8255, 0x400921FB60000000
  %8275 = fmul fast float %8274, %8262
  %8276 = fmul fast float %8275, %8268
  %8277 = fmul fast float %8233, %8222
  %8278 = fmul fast float %8277, %8276
  %8279 = fmul fast float %8234, %8223
  %8280 = fmul fast float %8279, %8276
  %8281 = fmul fast float %8235, %8224
  %8282 = fmul fast float %8281, %8276
  %8283 = fmul fast float %8222, %3524
  %8284 = fmul fast float %8283, %8273
  %8285 = fmul fast float %8223, %3525
  %8286 = fmul fast float %8285, %8273
  %8287 = fmul fast float %8224, %3526
  %8288 = fmul fast float %8287, %8273
  br label %8289

; <label>:8289                                    ; preds = %8198, %8188
  %8290 = phi float [ %8241, %8198 ], [ 0.000000e+00, %8188 ]
  %8291 = phi float [ %8243, %8198 ], [ 0.000000e+00, %8188 ]
  %8292 = phi float [ %8245, %8198 ], [ 0.000000e+00, %8188 ]
  %8293 = phi float [ %8278, %8198 ], [ 0.000000e+00, %8188 ]
  %8294 = phi float [ %8280, %8198 ], [ 0.000000e+00, %8188 ]
  %8295 = phi float [ %8282, %8198 ], [ 0.000000e+00, %8188 ]
  %8296 = phi float [ %8284, %8198 ], [ 0.000000e+00, %8188 ]
  %8297 = phi float [ %8286, %8198 ], [ 0.000000e+00, %8188 ]
  %8298 = phi float [ %8288, %8198 ], [ 0.000000e+00, %8188 ]
  %8299 = call float @dx.op.binary.f32(i32 35, float %8290, float 0x3F10000000000000)  ; FMax(a,b)
  %8300 = call float @dx.op.binary.f32(i32 35, float %8291, float 0x3F10000000000000)  ; FMax(a,b)
  %8301 = call float @dx.op.binary.f32(i32 35, float %8292, float 0x3F10000000000000)  ; FMax(a,b)
  %8302 = fdiv fast float 1.000000e+00, %8299
  %8303 = fdiv fast float 1.000000e+00, %8300
  %8304 = fdiv fast float 1.000000e+00, %8301
  %8305 = fmul fast float %8290, 0xBFF7154760000000
  %8306 = fmul fast float %8291, 0xBFF7154760000000
  %8307 = fmul fast float %8292, 0xBFF7154760000000
  %8308 = extractvalue %dx.types.CBufRet.f32 %8094, 3
  %8309 = call float @dx.op.dot3.f32(i32 55, float %8302, float %8303, float %8304, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8310 = fmul fast float %8308, %8309
  %8311 = call float @dx.op.binary.f32(i32 35, float %8096, float %87)  ; FMax(a,b)
  %8312 = fsub fast float %8092, %8311
  %8313 = call float @dx.op.binary.f32(i32 35, float %8312, float 0.000000e+00)  ; FMax(a,b)
  %8314 = fsub fast float %8092, %87
  %8315 = call float @dx.op.binary.f32(i32 35, float %8314, float 0.000000e+00)  ; FMax(a,b)
  %8316 = call float @dx.op.binary.f32(i32 36, float %8315, float %8310)  ; FMin(a,b)
  %8317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8318 = extractvalue %dx.types.CBufRet.f32 %8317, 0
  %8319 = fmul fast float %8318, %8316
  %8320 = fmul fast float %8319, %8305
  %8321 = fmul fast float %8319, %8306
  %8322 = fmul fast float %8319, %8307
  %8323 = call float @dx.op.unary.f32(i32 21, float %8320)  ; Exp(value)
  %8324 = call float @dx.op.unary.f32(i32 21, float %8321)  ; Exp(value)
  %8325 = call float @dx.op.unary.f32(i32 21, float %8322)  ; Exp(value)
  %8326 = fmul fast float %8323, %8293
  %8327 = fmul fast float %8324, %8294
  %8328 = fmul fast float %8325, %8295
  %8329 = extractvalue %dx.types.CBufRet.f32 %8317, 1
  %8330 = fmul fast float %8329, %8316
  %8331 = fmul fast float %8330, %8305
  %8332 = fmul fast float %8330, %8306
  %8333 = fmul fast float %8330, %8307
  %8334 = call float @dx.op.unary.f32(i32 21, float %8331)  ; Exp(value)
  %8335 = call float @dx.op.unary.f32(i32 21, float %8332)  ; Exp(value)
  %8336 = call float @dx.op.unary.f32(i32 21, float %8333)  ; Exp(value)
  %8337 = fmul fast float %8334, %8296
  %8338 = fmul fast float %8335, %8297
  %8339 = fmul fast float %8336, %8298
  %8340 = fadd fast float %8337, %8326
  %8341 = fadd fast float %8338, %8327
  %8342 = fadd fast float %8339, %8328
  %8343 = fmul fast float %8313, %8305
  %8344 = fmul fast float %8313, %8306
  %8345 = fmul fast float %8313, %8307
  %8346 = call float @dx.op.unary.f32(i32 21, float %8343)  ; Exp(value)
  %8347 = call float @dx.op.unary.f32(i32 21, float %8344)  ; Exp(value)
  %8348 = call float @dx.op.unary.f32(i32 21, float %8345)  ; Exp(value)
  %8349 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8350 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8351 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8352 = fmul fast float %8349, %8340
  %8353 = fmul fast float %8350, %8341
  %8354 = fmul fast float %8351, %8342
  %8355 = fsub fast float %8340, %8352
  %8356 = fsub fast float %8341, %8353
  %8357 = fsub fast float %8342, %8354
  %8358 = fmul fast float %8302, %8192
  %8359 = fmul fast float %8358, %8355
  %8360 = fmul fast float %8303, %8193
  %8361 = fmul fast float %8360, %8356
  %8362 = fmul fast float %8304, %8194
  %8363 = fmul fast float %8362, %8357
  %8364 = fadd fast float %8359, %8189
  %8365 = fadd fast float %8361, %8190
  %8366 = fadd fast float %8363, %8191
  %8367 = fmul fast float %8349, %8192
  %8368 = fmul fast float %8350, %8193
  %8369 = fmul fast float %8351, %8194
  %8370 = fmul fast float %8315, %8305
  %8371 = fmul fast float %8315, %8306
  %8372 = fmul fast float %8315, %8307
  %8373 = call float @dx.op.unary.f32(i32 21, float %8370)  ; Exp(value)
  %8374 = call float @dx.op.unary.f32(i32 21, float %8371)  ; Exp(value)
  %8375 = call float @dx.op.unary.f32(i32 21, float %8372)  ; Exp(value)
  %8376 = call float @dx.op.unary.f32(i32 7, float %8373)  ; Saturate(value)
  %8377 = call float @dx.op.unary.f32(i32 7, float %8374)  ; Saturate(value)
  %8378 = call float @dx.op.unary.f32(i32 7, float %8375)  ; Saturate(value)
  %8379 = fmul fast float %8376, %8340
  %8380 = fmul fast float %8377, %8341
  %8381 = fmul fast float %8378, %8342
  %8382 = fsub fast float %8340, %8379
  %8383 = fsub fast float %8341, %8380
  %8384 = fsub fast float %8342, %8381
  %8385 = fmul fast float %8382, %8302
  %8386 = fmul fast float %8383, %8303
  %8387 = fmul fast float %8384, %8304
  %8388 = fsub fast float %87, %8095
  %8389 = fmul fast float %8097, %8388
  %8390 = call float @dx.op.unary.f32(i32 7, float %8389)  ; Saturate(value)
  %8391 = fmul fast float %8390, %8390
  %8392 = fmul fast float %8390, 2.000000e+00
  %8393 = fsub fast float 3.000000e+00, %8392
  %8394 = fmul fast float %8391, %8393
  %8395 = fsub fast float %8385, %8364
  %8396 = fsub fast float %8386, %8365
  %8397 = fsub fast float %8387, %8366
  %8398 = fmul fast float %8394, %8395
  %8399 = fmul fast float %8394, %8396
  %8400 = fmul fast float %8394, %8397
  %8401 = fadd fast float %8398, %8364
  %8402 = fadd fast float %8399, %8365
  %8403 = fadd fast float %8400, %8366
  %8404 = fsub fast float %8376, %8367
  %8405 = fsub fast float %8377, %8368
  %8406 = fsub fast float %8378, %8369
  %8407 = fmul fast float %8394, %8404
  %8408 = fmul fast float %8394, %8405
  %8409 = fmul fast float %8394, %8406
  %8410 = fadd fast float %8407, %8367
  %8411 = fadd fast float %8408, %8368
  %8412 = fadd fast float %8409, %8369
  br i1 %8195, label %8413, label %8481

; <label>:8413                                    ; preds = %8289
  %8414 = extractvalue %dx.types.CBufRet.f32 %8317, 3
  %8415 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8414)  ; Dot3(ax,ay,az,bx,by,bz)
  %8416 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2454, float %2455, float %2456)  ; Dot3(ax,ay,az,bx,by,bz)
  %8417 = fdiv fast float 1.000000e+00, %8416
  %8418 = fmul fast float %8417, %8415
  %8419 = fcmp ogt float %2310, -0.000000e+00
  %8420 = select i1 %8419, float %8414, float %8418
  %8421 = call float @dx.op.binary.f32(i32 36, float %8420, float %8310)  ; FMin(a,b)
  %8422 = fmul fast float %8318, %8421
  %8423 = fmul fast float %8422, %8305
  %8424 = fmul fast float %8422, %8306
  %8425 = fmul fast float %8422, %8307
  %8426 = call float @dx.op.unary.f32(i32 21, float %8423)  ; Exp(value)
  %8427 = call float @dx.op.unary.f32(i32 21, float %8424)  ; Exp(value)
  %8428 = call float @dx.op.unary.f32(i32 21, float %8425)  ; Exp(value)
  %8429 = fmul fast float %8426, %8293
  %8430 = fmul fast float %8427, %8294
  %8431 = fmul fast float %8428, %8295
  %8432 = fmul fast float %8329, %8421
  %8433 = fmul fast float %8432, %8305
  %8434 = fmul fast float %8432, %8306
  %8435 = fmul fast float %8432, %8307
  %8436 = call float @dx.op.unary.f32(i32 21, float %8433)  ; Exp(value)
  %8437 = call float @dx.op.unary.f32(i32 21, float %8434)  ; Exp(value)
  %8438 = call float @dx.op.unary.f32(i32 21, float %8435)  ; Exp(value)
  %8439 = fmul fast float %8436, %8296
  %8440 = fmul fast float %8437, %8297
  %8441 = fmul fast float %8438, %8298
  %8442 = fadd fast float %8439, %8429
  %8443 = fadd fast float %8440, %8430
  %8444 = fadd fast float %8441, %8431
  %8445 = fmul fast float %8420, %8305
  %8446 = fmul fast float %8420, %8306
  %8447 = fmul fast float %8420, %8307
  %8448 = call float @dx.op.unary.f32(i32 21, float %8445)  ; Exp(value)
  %8449 = call float @dx.op.unary.f32(i32 21, float %8446)  ; Exp(value)
  %8450 = call float @dx.op.unary.f32(i32 21, float %8447)  ; Exp(value)
  %8451 = call float @dx.op.unary.f32(i32 7, float %8448)  ; Saturate(value)
  %8452 = call float @dx.op.unary.f32(i32 7, float %8449)  ; Saturate(value)
  %8453 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8454 = fmul fast float %8451, %8442
  %8455 = fmul fast float %8452, %8443
  %8456 = fmul fast float %8453, %8444
  %8457 = fsub fast float %8442, %8454
  %8458 = fsub fast float %8443, %8455
  %8459 = fsub fast float %8444, %8456
  %8460 = fmul fast float %8457, %8302
  %8461 = fmul fast float %8458, %8303
  %8462 = fmul fast float %8459, %8304
  %8463 = fsub fast float %8401, %8460
  %8464 = fsub fast float %8402, %8461
  %8465 = fsub fast float %8403, %8462
  %8466 = fmul fast float %8463, %8078
  %8467 = fmul fast float %8464, %8078
  %8468 = fmul fast float %8465, %8078
  %8469 = fadd fast float %8466, %8460
  %8470 = fadd fast float %8467, %8461
  %8471 = fadd fast float %8468, %8462
  %8472 = fsub fast float %8410, %8451
  %8473 = fsub fast float %8411, %8452
  %8474 = fsub fast float %8412, %8453
  %8475 = fmul fast float %8472, %8078
  %8476 = fmul fast float %8473, %8078
  %8477 = fmul fast float %8474, %8078
  %8478 = fadd fast float %8475, %8451
  %8479 = fadd fast float %8476, %8452
  %8480 = fadd fast float %8477, %8453
  br label %8481

; <label>:8481                                    ; preds = %8413, %8289
  %8482 = phi float [ %8469, %8413 ], [ %8401, %8289 ]
  %8483 = phi float [ %8470, %8413 ], [ %8402, %8289 ]
  %8484 = phi float [ %8471, %8413 ], [ %8403, %8289 ]
  %8485 = phi float [ %8478, %8413 ], [ %8410, %8289 ]
  %8486 = phi float [ %8479, %8413 ], [ %8411, %8289 ]
  %8487 = phi float [ %8480, %8413 ], [ %8412, %8289 ]
  %8488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.i32 %8488, 3
  %8490 = and i32 %8489, 3
  %8491 = icmp ne i32 %8490, 0
  %8492 = and i32 %8489, 4
  %8493 = icmp ne i32 %8492, 0
  %8494 = and i1 %8491, %8493
  br i1 %8494, label %8495, label %8502

; <label>:8495                                    ; preds = %8481
  %8496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %8082, float %8083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8497 = extractvalue %dx.types.ResRet.f32 %8496, 0
  %8498 = fsub fast float 1.000000e+00, %8497
  %8499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8500 = extractvalue %dx.types.CBufRet.f32 %8499, 0
  %8501 = fcmp fast olt float %8498, %8500
  br label %8505

; <label>:8502                                    ; preds = %8481
  %8503 = icmp eq i32 %8492, 0
  %8504 = and i1 %8491, %8503
  br label %8505

; <label>:8505                                    ; preds = %8502, %8495
  %8506 = phi i1 [ %8501, %8495 ], [ %8504, %8502 ]
  %8507 = xor i1 %2452, %8506
  %8508 = select i1 %8507, float 0.000000e+00, float %8078
  %8509 = fcmp fast ogt float %8508, 0.000000e+00
  %8510 = select i1 %8509, float %8082, float 0.000000e+00
  %8511 = select i1 %8509, float %8083, float 0.000000e+00
  %8512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %8510, float %8511, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8513 = extractvalue %dx.types.ResRet.f32 %8512, 0
  %8514 = extractvalue %dx.types.ResRet.f32 %8512, 1
  %8515 = extractvalue %dx.types.ResRet.f32 %8512, 2
  %8516 = fmul fast float %8514, %8508
  %8517 = fmul fast float %8515, %8508
  %8518 = select i1 %2452, float 0.000000e+00, float %8516
  %8519 = select i1 %2452, float 0.000000e+00, float %8517
  %8520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8521 = extractvalue %dx.types.CBufRet.f32 %8520, 1
  %8522 = fmul fast float %8508, %8485
  %8523 = fmul fast float %8522, %8513
  %8524 = fmul fast float %8523, %8521
  %8525 = fmul fast float %8521, %8486
  %8526 = fmul fast float %8525, %8518
  %8527 = fmul fast float %8521, %8487
  %8528 = fmul fast float %8527, %8519
  %8529 = fadd fast float %8524, %8482
  %8530 = fadd fast float %8526, %8483
  %8531 = fadd fast float %8528, %8484
  br label %8571

; <label>:8532                                    ; preds = %8054
  %8533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8534 = extractvalue %dx.types.CBufRet.i32 %8533, 3
  %8535 = and i32 %8534, 3
  %8536 = icmp ne i32 %8535, 0
  %8537 = and i32 %8534, 4
  %8538 = icmp ne i32 %8537, 0
  %8539 = and i1 %8536, %8538
  br i1 %8539, label %8540, label %8547

; <label>:8540                                    ; preds = %8532
  %8541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %8082, float %8083, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8542 = extractvalue %dx.types.ResRet.f32 %8541, 0
  %8543 = fsub fast float 1.000000e+00, %8542
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 0
  %8546 = fcmp fast olt float %8543, %8545
  br label %8550

; <label>:8547                                    ; preds = %8532
  %8548 = icmp eq i32 %8537, 0
  %8549 = and i1 %8536, %8548
  br label %8550

; <label>:8550                                    ; preds = %8547, %8540
  %8551 = phi i1 [ %8546, %8540 ], [ %8549, %8547 ]
  %8552 = xor i1 %2452, %8551
  %8553 = select i1 %8552, float 0.000000e+00, float %8078
  %8554 = fcmp fast ogt float %8553, 0.000000e+00
  %8555 = select i1 %8554, float %8082, float 0.000000e+00
  %8556 = select i1 %8554, float %8083, float 0.000000e+00
  %8557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %61, float %8555, float %8556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8558 = extractvalue %dx.types.ResRet.f32 %8557, 0
  %8559 = extractvalue %dx.types.ResRet.f32 %8557, 1
  %8560 = extractvalue %dx.types.ResRet.f32 %8557, 2
  %8561 = fmul fast float %8558, %8553
  %8562 = fmul fast float %8559, %8553
  %8563 = fmul fast float %8560, %8553
  %8564 = select i1 %2452, float 0.000000e+00, float %8562
  %8565 = select i1 %2452, float 0.000000e+00, float %8563
  %8566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8567 = extractvalue %dx.types.CBufRet.f32 %8566, 1
  %8568 = fmul fast float %8561, %8567
  %8569 = fmul fast float %8564, %8567
  %8570 = fmul fast float %8565, %8567
  br label %8571

; <label>:8571                                    ; preds = %8550, %8505
  %8572 = phi float [ %8568, %8550 ], [ %8529, %8505 ]
  %8573 = phi float [ %8569, %8550 ], [ %8530, %8505 ]
  %8574 = phi float [ %8570, %8550 ], [ %8531, %8505 ]
  %8575 = fmul fast float %5356, %8572
  %8576 = fmul fast float %5356, %8573
  %8577 = fmul fast float %5356, %8574
  %8578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8579 = extractvalue %dx.types.CBufRet.f32 %8578, 0
  %8580 = bitcast float %8579 to i32
  %8581 = and i32 %8580, 255
  %8582 = uitofp i32 %8581 to float
  %8583 = fptoui float %8582 to i32
  %8584 = icmp eq i32 %8583, 13
  br i1 %8584, label %8585, label %8605

; <label>:8585                                    ; preds = %8571
  %8586 = fadd fast float %1769, 2.000000e+00
  %8587 = fadd fast float %1771, 1.000000e+00
  %8588 = fsub fast float 1.000000e+00, %1772
  %8589 = fmul fast float %8586, 5.000000e-01
  %8590 = fmul fast float %8587, 5.000000e-01
  %8591 = fmul fast float %8588, 5.000000e-01
  %8592 = call float @dx.op.unary.f32(i32 7, float %8589)  ; Saturate(value)
  %8593 = call float @dx.op.unary.f32(i32 7, float %8590)  ; Saturate(value)
  %8594 = call float @dx.op.unary.f32(i32 7, float %8591)  ; Saturate(value)
  %8595 = fmul fast float %8592, 1.023000e+03
  %8596 = fmul fast float %8593, 1.023000e+03
  %8597 = fmul fast float %8594, 1.023000e+03
  %8598 = fptoui float %8595 to i32
  %8599 = fptoui float %8596 to i32
  %8600 = fptoui float %8597 to i32
  %8601 = shl i32 %8599, 10
  %8602 = or i32 %8601, %8598
  %8603 = shl i32 %8600, 20
  %8604 = or i32 %8602, %8603
  br label %8605

; <label>:8605                                    ; preds = %8585, %8571
  %8606 = phi i32 [ %8604, %8585 ], [ %8057, %8571 ]
  %8607 = icmp eq i32 %8583, 14
  br i1 %8607, label %8608, label %8628

; <label>:8608                                    ; preds = %8605
  %8609 = fadd fast float %1766, 1.000000e+00
  %8610 = fadd fast float %1776, 1.000000e+00
  %8611 = fsub fast float 1.000000e+00, %118
  %8612 = fmul fast float %8609, 5.000000e-01
  %8613 = fmul fast float %8610, 5.000000e-01
  %8614 = fmul fast float %8611, 5.000000e-01
  %8615 = call float @dx.op.unary.f32(i32 7, float %8612)  ; Saturate(value)
  %8616 = call float @dx.op.unary.f32(i32 7, float %8613)  ; Saturate(value)
  %8617 = call float @dx.op.unary.f32(i32 7, float %8614)  ; Saturate(value)
  %8618 = fmul fast float %8615, 1.023000e+03
  %8619 = fmul fast float %8616, 1.023000e+03
  %8620 = fmul fast float %8617, 1.023000e+03
  %8621 = fptoui float %8618 to i32
  %8622 = fptoui float %8619 to i32
  %8623 = fptoui float %8620 to i32
  %8624 = shl i32 %8622, 10
  %8625 = or i32 %8624, %8621
  %8626 = shl i32 %8623, 20
  %8627 = or i32 %8625, %8626
  br label %8628

; <label>:8628                                    ; preds = %8608, %8605
  %8629 = phi i32 [ %8627, %8608 ], [ %8606, %8605 ]
  %8630 = icmp eq i32 %8583, 15
  br i1 %8630, label %8631, label %8651

; <label>:8631                                    ; preds = %8628
  %8632 = fadd fast float %117, 1.000000e+00
  %8633 = fadd fast float %118, 1.000000e+00
  %8634 = fadd fast float %119, 1.000000e+00
  %8635 = fmul fast float %8632, 5.000000e-01
  %8636 = fmul fast float %8633, 5.000000e-01
  %8637 = fmul fast float %8634, 5.000000e-01
  %8638 = call float @dx.op.unary.f32(i32 7, float %8635)  ; Saturate(value)
  %8639 = call float @dx.op.unary.f32(i32 7, float %8636)  ; Saturate(value)
  %8640 = call float @dx.op.unary.f32(i32 7, float %8637)  ; Saturate(value)
  %8641 = fmul fast float %8638, 1.023000e+03
  %8642 = fmul fast float %8639, 1.023000e+03
  %8643 = fmul fast float %8640, 1.023000e+03
  %8644 = fptoui float %8641 to i32
  %8645 = fptoui float %8642 to i32
  %8646 = fptoui float %8643 to i32
  %8647 = shl i32 %8645, 10
  %8648 = or i32 %8647, %8644
  %8649 = shl i32 %8646, 20
  %8650 = or i32 %8648, %8649
  br label %8651

; <label>:8651                                    ; preds = %8631, %8628
  %8652 = phi i32 [ %8650, %8631 ], [ %8629, %8628 ]
  %8653 = fsub fast float 1.000000e+00, %2459
  %8654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8655 = extractvalue %dx.types.CBufRet.f32 %8654, 0
  %8656 = fmul fast float %8655, %8653
  %8657 = fmul fast float %2282, 2.000000e+00
  %8658 = fmul fast float %8657, %2319
  %8659 = fsub fast float %2310, %8658
  %8660 = call float @dx.op.unary.f32(i32 7, float %8659)  ; Saturate(value)
  %8661 = fsub fast float 1.000000e+00, %8660
  %8662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8663 = extractvalue %dx.types.CBufRet.f32 %8662, 3
  %8664 = fmul fast float %8663, %8661
  %8665 = fsub fast float 1.000000e+00, %2426
  %8666 = call float @dx.op.unary.f32(i32 7, float %8665)  ; Saturate(value)
  %8667 = fadd fast float %8075, %2428
  %8668 = fmul fast float %8667, %2426
  %8669 = fmul fast float %8664, %8666
  %8670 = icmp eq i32 %8583, 39
  %8671 = icmp eq i32 %8583, 40
  %8672 = select i1 %8671, float %2426, float 0.000000e+00
  %8673 = select i1 %8670, float %8667, float %8672
  %8674 = fmul fast float %8073, %2292
  %8675 = fmul fast float %8074, %2293
  %8676 = fmul fast float %8075, %2294
  %8677 = fadd fast float %8674, %8070
  %8678 = fadd fast float %8677, %8575
  %8679 = fadd fast float %8675, %8071
  %8680 = fadd fast float %8679, %8576
  %8681 = fadd fast float %8676, %8072
  %8682 = fadd fast float %8681, %8577
  br i1 %115, label %8683, label %9485

; <label>:8683                                    ; preds = %8651
  %8684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8685 = extractvalue %dx.types.CBufRet.f32 %8684, 0
  %8686 = extractvalue %dx.types.CBufRet.f32 %8684, 1
  %8687 = extractvalue %dx.types.CBufRet.f32 %8684, 2
  %8688 = extractvalue %dx.types.CBufRet.f32 %8684, 3
  %8689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8690 = extractvalue %dx.types.CBufRet.f32 %8689, 0
  %8691 = extractvalue %dx.types.CBufRet.f32 %8689, 1
  %8692 = extractvalue %dx.types.CBufRet.f32 %8689, 2
  %8693 = extractvalue %dx.types.CBufRet.f32 %8689, 3
  %8694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8695 = extractvalue %dx.types.CBufRet.f32 %8694, 0
  %8696 = extractvalue %dx.types.CBufRet.f32 %8694, 1
  %8697 = extractvalue %dx.types.CBufRet.f32 %8694, 2
  %8698 = extractvalue %dx.types.CBufRet.f32 %8694, 3
  %8699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8700 = extractvalue %dx.types.CBufRet.f32 %8699, 0
  %8701 = extractvalue %dx.types.CBufRet.f32 %8699, 1
  %8702 = extractvalue %dx.types.CBufRet.f32 %8699, 2
  %8703 = extractvalue %dx.types.CBufRet.f32 %8699, 3
  %8704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8705 = extractvalue %dx.types.CBufRet.f32 %8704, 3
  %8706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8707 = extractvalue %dx.types.CBufRet.f32 %8706, 3
  %8708 = extractvalue %dx.types.CBufRet.f32 %8706, 0
  %8709 = extractvalue %dx.types.CBufRet.f32 %8706, 1
  %8710 = extractvalue %dx.types.CBufRet.f32 %8706, 2
  %8711 = fcmp fast olt float %8710, -5.000000e-01
  %8712 = fmul fast float %2307, %2306
  %8713 = fadd fast float %8712, %8688
  %8714 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2309, float %2310, float %8685, float %8686, float %8687)  ; Dot3(ax,ay,az,bx,by,bz)
  %8715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8716 = extractvalue %dx.types.CBufRet.i32 %8715, 1
  %8717 = and i32 %8716, 1
  %8718 = icmp ne i32 %8717, 0
  %8719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.f32 %8719, 2
  %8721 = fcmp fast ogt float %8720, 0.000000e+00
  %8722 = and i1 %8718, %8721
  br i1 %8722, label %8723, label %9129, !dx.controlflow.hints !168

; <label>:8723                                    ; preds = %8683
  %8724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8725 = extractvalue %dx.types.CBufRet.f32 %8724, 3
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8729 = extractvalue %dx.types.CBufRet.f32 %8728, 2
  %8730 = fsub fast float %8727, %8729
  %8731 = and i32 %8716, 2
  %8732 = extractvalue %dx.types.CBufRet.i32 %8715, 0
  %8733 = call i32 @dx.op.binary.i32(i32 40, i32 %8732, i32 3)  ; UMin(a,b)
  %8734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8735 = extractvalue %dx.types.CBufRet.f32 %8734, 0
  %8736 = extractvalue %dx.types.CBufRet.f32 %8734, 1
  %8737 = extractvalue %dx.types.CBufRet.f32 %8728, 0
  %8738 = extractvalue %dx.types.CBufRet.f32 %8728, 1
  %8739 = fsub fast float %8735, %8737
  %8740 = fsub fast float %8736, %8738
  %8741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8742 = extractvalue %dx.types.CBufRet.f32 %8741, 0
  %8743 = fcmp fast ogt float %8742, 0.000000e+00
  %8744 = fsub fast float -0.000000e+00, %8739
  %8745 = fsub fast float -0.000000e+00, %8740
  %8746 = call float @dx.op.dot2.f32(i32 54, float %2308, float %2309, float %2308, float %2309)  ; Dot2(ax,ay,bx,by)
  %8747 = call float @dx.op.dot2.f32(i32 54, float %2308, float %2309, float %8744, float %8745)  ; Dot2(ax,ay,bx,by)
  %8748 = fmul fast float %8747, 2.000000e+00
  %8749 = call float @dx.op.dot2.f32(i32 54, float %8744, float %8745, float %8744, float %8745)  ; Dot2(ax,ay,bx,by)
  %8750 = fmul fast float %8742, %8742
  %8751 = fsub fast float %8749, %8750
  %8752 = fmul fast float %8748, %8748
  %8753 = fmul fast float %8746, 4.000000e+00
  %8754 = fmul fast float %8753, %8751
  %8755 = fsub fast float %8752, %8754
  %8756 = fcmp fast ogt float %8755, 0.000000e+00
  br i1 %8756, label %8757, label %8772

; <label>:8757                                    ; preds = %8723
  %8758 = fcmp fast ogt float %8748, 0.000000e+00
  %8759 = call float @dx.op.unary.f32(i32 24, float %8755)  ; Sqrt(value)
  %8760 = fsub fast float -0.000000e+00, %8759
  %8761 = select i1 %8758, float %8759, float %8760
  %8762 = fadd fast float %8761, %8748
  %8763 = fmul float %8762, -5.000000e-01
  %8764 = fdiv fast float %8763, %8746
  %8765 = call float @dx.op.binary.f32(i32 35, float %8764, float 0.000000e+00)  ; FMax(a,b)
  %8766 = call float @dx.op.binary.f32(i32 36, float %8712, float %8765)  ; FMin(a,b)
  %8767 = fdiv fast float %8751, %8763
  %8768 = call float @dx.op.binary.f32(i32 35, float %8767, float 0.000000e+00)  ; FMax(a,b)
  %8769 = call float @dx.op.binary.f32(i32 36, float %8712, float %8768)  ; FMin(a,b)
  %8770 = call float @dx.op.binary.f32(i32 36, float %8766, float %8769)  ; FMin(a,b)
  %8771 = call float @dx.op.binary.f32(i32 35, float %8766, float %8769)  ; FMax(a,b)
  br label %8772

; <label>:8772                                    ; preds = %8757, %8723
  %8773 = phi float [ %8771, %8757 ], [ -1.000000e+00, %8723 ]
  %8774 = phi float [ %8770, %8757 ], [ -1.000000e+00, %8723 ]
  %8775 = phi i1 [ true, %8757 ], [ false, %8723 ]
  %8776 = and i1 %8743, %8775
  br i1 %8776, label %8777, label %8779

; <label>:8777                                    ; preds = %8772
  %8778 = fcmp fast oeq float %8774, %8773
  br i1 %8778, label %9082, label %8780

; <label>:8779                                    ; preds = %8772
  br i1 %8743, label %9082, label %8780

; <label>:8780                                    ; preds = %8779, %8777
  %8781 = phi float [ %8712, %8779 ], [ %8773, %8777 ]
  %8782 = phi float [ 0.000000e+00, %8779 ], [ %8774, %8777 ]
  %8783 = icmp ne i32 %8731, 0
  %8784 = fmul fast float %8781, %2310
  %8785 = fadd fast float %8784, %8725
  %8786 = fmul fast float %8785, %8781
  %8787 = select i1 %8783, float 0.000000e+00, float %8786
  %8788 = fcmp fast oeq float %2310, 0.000000e+00
  %8789 = fdiv fast float %8730, %2310
  %8790 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8789)  ; FMax(a,b)
  %8791 = select i1 %8788, float %8781, float %8790
  %8792 = call float @dx.op.binary.f32(i32 36, float %8781, float %8791)  ; FMin(a,b)
  %8793 = fcmp fast ogt float %2310, 0.000000e+00
  %8794 = fcmp fast olt float %8730, 0.000000e+00
  br i1 %8793, label %8795, label %8852

; <label>:8795                                    ; preds = %8780
  %8796 = icmp eq i32 %8731, 0
  br i1 %8794, label %8797, label %8841

; <label>:8797                                    ; preds = %8795
  %8798 = select i1 %8796, float %8781, float 0.000000e+00
  %8799 = fsub fast float -0.000000e+00, %8798
  %8800 = call float @dx.op.unary.f32(i32 6, float %8799)  ; FAbs(value)
  %8801 = fmul fast float %8798, %2310
  %8802 = fadd fast float %8801, %8725
  %8803 = fmul fast float %8800, %8802
  %8804 = fsub fast float %8787, %8803
  %8805 = fsub fast float %8781, %8800
  %8806 = select i1 %8796, float %8805, float 0.000000e+00
  %8807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8808 = extractvalue %dx.types.CBufRet.f32 %8807, 0
  %8809 = extractvalue %dx.types.CBufRet.f32 %8807, 1
  %8810 = extractvalue %dx.types.CBufRet.f32 %8807, 2
  %8811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8812 = extractvalue %dx.types.CBufRet.f32 %8811, 0
  %8813 = extractvalue %dx.types.CBufRet.f32 %8811, 1
  %8814 = extractvalue %dx.types.CBufRet.f32 %8811, 2
  %8815 = extractvalue %dx.types.CBufRet.f32 %8811, 3
  %8816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8817 = extractvalue %dx.types.CBufRet.f32 %8816, 3
  %8818 = call float @dx.op.binary.f32(i32 36, float %8804, float %8817)  ; FMin(a,b)
  %8819 = fmul fast float %8815, %8806
  %8820 = call float @dx.op.unary.f32(i32 7, float %8819)  ; Saturate(value)
  %8821 = fsub fast float %8812, %8808
  %8822 = fsub fast float %8813, %8809
  %8823 = fsub fast float %8814, %8810
  %8824 = fmul fast float %8820, %8821
  %8825 = fmul fast float %8820, %8822
  %8826 = fmul fast float %8820, %8823
  %8827 = fadd fast float %8824, %8808
  %8828 = fadd fast float %8825, %8809
  %8829 = fadd fast float %8826, %8810
  %8830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8831 = extractvalue %dx.types.CBufRet.f32 %8830, 0
  %8832 = extractvalue %dx.types.CBufRet.f32 %8830, 1
  %8833 = fadd fast float %8832, %8831
  %8834 = call float @dx.op.unary.f32(i32 7, float %8833)  ; Saturate(value)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8830, 2
  %8836 = extractvalue %dx.types.CBufRet.f32 %8830, 3
  %8837 = fadd fast float %8836, %8835
  %8838 = call float @dx.op.unary.f32(i32 7, float %8837)  ; Saturate(value)
  %8839 = fmul fast float %8834, %8818
  %8840 = fmul fast float %8839, %8838
  br label %9082

; <label>:8841                                    ; preds = %8795
  br i1 %8796, label %8842, label %8863

; <label>:8842                                    ; preds = %8841
  %8843 = call float @dx.op.binary.f32(i32 36, float %8792, float %8782)  ; FMin(a,b)
  %8844 = fsub fast float %8792, %8843
  %8845 = fsub fast float %8844, %8781
  %8846 = call float @dx.op.unary.f32(i32 6, float %8845)  ; FAbs(value)
  %8847 = fadd fast float %8844, %8781
  %8848 = fmul fast float %8847, %2310
  %8849 = fadd fast float %8848, %8725
  %8850 = fmul fast float %8849, %8846
  %8851 = fsub fast float %8787, %8850
  br label %8863

; <label>:8852                                    ; preds = %8780
  br i1 %8794, label %8853, label %8863

; <label>:8853                                    ; preds = %8852
  %8854 = call float @dx.op.binary.f32(i32 35, float %8782, float %8792)  ; FMax(a,b)
  %8855 = icmp eq i32 %8731, 0
  %8856 = select i1 %8855, float %8792, float 0.000000e+00
  %8857 = fsub fast float -0.000000e+00, %8856
  %8858 = call float @dx.op.unary.f32(i32 6, float %8857)  ; FAbs(value)
  %8859 = fmul fast float %8856, %2310
  %8860 = fadd fast float %8859, %8725
  %8861 = fmul fast float %8858, %8860
  %8862 = fsub fast float %8787, %8861
  br label %8863

; <label>:8863                                    ; preds = %8853, %8852, %8842, %8841
  %8864 = phi float [ %8782, %8841 ], [ %8782, %8842 ], [ %8854, %8853 ], [ %8782, %8852 ]
  %8865 = phi float [ 0.000000e+00, %8841 ], [ %8846, %8842 ], [ %8858, %8853 ], [ 0.000000e+00, %8852 ]
  %8866 = phi float [ %8787, %8841 ], [ %8851, %8842 ], [ %8862, %8853 ], [ %8787, %8852 ]
  %8867 = phi float [ %8792, %8841 ], [ %8792, %8842 ], [ %8781, %8853 ], [ %8781, %8852 ]
  %8868 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %8868, align 4, !tbaa !106, !noalias !169
  %8869 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %8869, align 4, !tbaa !106, !noalias !169
  %8870 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %8870, align 4, !tbaa !106, !noalias !169
  %8871 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8871, align 4, !tbaa !106, !noalias !169
  %8872 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8872, align 4, !tbaa !106, !noalias !169
  %8873 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8873, align 4, !tbaa !106, !noalias !169
  %8874 = icmp sgt i32 %8733, 0
  br i1 %8874, label %8875, label %8936

; <label>:8875                                    ; preds = %8863
  br label %8876

; <label>:8876                                    ; preds = %8925, %8875
  %8877 = phi i32 [ %8926, %8925 ], [ 0, %8875 ]
  %8878 = phi i32 [ %8927, %8925 ], [ 0, %8875 ]
  %8879 = add nuw i32 %8878, 171
  %8880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %8879)  ; CBufferLoadLegacy(handle,regIndex)
  %8881 = extractvalue %dx.types.CBufRet.f32 %8880, 0
  %8882 = extractvalue %dx.types.CBufRet.f32 %8880, 1
  %8883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8884 = extractvalue %dx.types.CBufRet.f32 %8883, 0
  %8885 = extractvalue %dx.types.CBufRet.f32 %8883, 1
  %8886 = fsub fast float %8881, %8884
  %8887 = fsub fast float %8882, %8885
  %8888 = extractvalue %dx.types.CBufRet.f32 %8880, 2
  %8889 = fsub fast float -0.000000e+00, %8886
  %8890 = fsub fast float -0.000000e+00, %8887
  %8891 = call float @dx.op.dot2.f32(i32 54, float %2308, float %2309, float %8889, float %8890)  ; Dot2(ax,ay,bx,by)
  %8892 = fmul fast float %8891, 2.000000e+00
  %8893 = call float @dx.op.dot2.f32(i32 54, float %8889, float %8890, float %8889, float %8890)  ; Dot2(ax,ay,bx,by)
  %8894 = fmul fast float %8888, %8888
  %8895 = fsub fast float %8893, %8894
  %8896 = fmul fast float %8892, %8892
  %8897 = fmul fast float %8753, %8895
  %8898 = fsub fast float %8896, %8897
  %8899 = fcmp fast ogt float %8898, 0.000000e+00
  br i1 %8899, label %8900, label %8915

; <label>:8900                                    ; preds = %8876
  %8901 = fcmp fast ogt float %8892, 0.000000e+00
  %8902 = call float @dx.op.unary.f32(i32 24, float %8898)  ; Sqrt(value)
  %8903 = fsub fast float -0.000000e+00, %8902
  %8904 = select i1 %8901, float %8902, float %8903
  %8905 = fadd fast float %8904, %8892
  %8906 = fmul float %8905, -5.000000e-01
  %8907 = fdiv fast float %8906, %8746
  %8908 = call float @dx.op.binary.f32(i32 35, float %8907, float 0.000000e+00)  ; FMax(a,b)
  %8909 = call float @dx.op.binary.f32(i32 36, float %8781, float %8908)  ; FMin(a,b)
  %8910 = fdiv fast float %8895, %8906
  %8911 = call float @dx.op.binary.f32(i32 35, float %8910, float 0.000000e+00)  ; FMax(a,b)
  %8912 = call float @dx.op.binary.f32(i32 36, float %8781, float %8911)  ; FMin(a,b)
  %8913 = call float @dx.op.binary.f32(i32 36, float %8909, float %8912)  ; FMin(a,b)
  %8914 = call float @dx.op.binary.f32(i32 35, float %8909, float %8912)  ; FMax(a,b)
  br label %8915

; <label>:8915                                    ; preds = %8900, %8876
  %8916 = phi float [ %8914, %8900 ], [ -1.000000e+00, %8876 ]
  %8917 = phi float [ %8913, %8900 ], [ -1.000000e+00, %8876 ]
  %8918 = phi i1 [ true, %8900 ], [ false, %8876 ]
  br i1 %8918, label %8919, label %8925

; <label>:8919                                    ; preds = %8915
  %8920 = call float @dx.op.binary.f32(i32 35, float %8864, float %8917)  ; FMax(a,b)
  %8921 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8878
  store float %8920, float* %8921, align 4, !tbaa !106, !noalias !169
  %8922 = call float @dx.op.binary.f32(i32 35, float %8864, float %8916)  ; FMax(a,b)
  %8923 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8878
  store float %8922, float* %8923, align 4, !tbaa !106, !noalias !169
  %8924 = add nsw i32 %8877, 1
  br label %8925

; <label>:8925                                    ; preds = %8919, %8915
  %8926 = phi i32 [ %8924, %8919 ], [ %8877, %8915 ]
  %8927 = add nuw nsw i32 %8878, 1
  %8928 = icmp eq i32 %8927, %8733
  br i1 %8928, label %8929, label %8876

; <label>:8929                                    ; preds = %8925
  %8930 = load float, float* %8870, align 4, !tbaa !106, !alias.scope !185, !noalias !188
  %8931 = load float, float* %8869, align 4, !tbaa !106, !alias.scope !191, !noalias !192
  %8932 = load float, float* %8868, align 4, !tbaa !106, !alias.scope !193, !noalias !194
  %8933 = load float, float* %8873, align 4, !tbaa !106, !alias.scope !195, !noalias !198
  %8934 = load float, float* %8872, align 4, !tbaa !106, !alias.scope !201, !noalias !202
  %8935 = load float, float* %8871, align 4, !tbaa !106, !alias.scope !203, !noalias !204
  br label %8936

; <label>:8936                                    ; preds = %8929, %8863
  %8937 = phi float [ -1.000000e+00, %8863 ], [ %8935, %8929 ]
  %8938 = phi float [ -1.000000e+00, %8863 ], [ %8934, %8929 ]
  %8939 = phi float [ -1.000000e+00, %8863 ], [ %8933, %8929 ]
  %8940 = phi float [ -1.000000e+00, %8863 ], [ %8932, %8929 ]
  %8941 = phi float [ -1.000000e+00, %8863 ], [ %8931, %8929 ]
  %8942 = phi float [ -1.000000e+00, %8863 ], [ %8930, %8929 ]
  %8943 = phi i32 [ 0, %8863 ], [ %8926, %8929 ]
  %8944 = call float @dx.op.binary.f32(i32 36, float %8941, float %8942)  ; FMin(a,b)
  %8945 = call float @dx.op.binary.f32(i32 36, float %8940, float %8944)  ; FMin(a,b)
  %8946 = call float @dx.op.binary.f32(i32 35, float %8940, float %8941)  ; FMax(a,b)
  %8947 = call float @dx.op.binary.f32(i32 36, float %8946, float %8942)  ; FMin(a,b)
  %8948 = call float @dx.op.binary.f32(i32 36, float %8940, float %8941)  ; FMin(a,b)
  %8949 = call float @dx.op.binary.f32(i32 35, float %8948, float %8947)  ; FMax(a,b)
  %8950 = call float @dx.op.binary.f32(i32 35, float %8941, float %8942)  ; FMax(a,b)
  %8951 = call float @dx.op.binary.f32(i32 35, float %8940, float %8950)  ; FMax(a,b)
  store float %8945, float* %8868, align 4, !tbaa !106, !alias.scope !193, !noalias !194
  store float %8949, float* %8869, align 4, !tbaa !106, !alias.scope !191, !noalias !192
  store float %8951, float* %8870, align 4, !tbaa !106, !alias.scope !185, !noalias !188
  %8952 = call float @dx.op.binary.f32(i32 36, float %8938, float %8939)  ; FMin(a,b)
  %8953 = call float @dx.op.binary.f32(i32 36, float %8937, float %8952)  ; FMin(a,b)
  %8954 = call float @dx.op.binary.f32(i32 35, float %8937, float %8938)  ; FMax(a,b)
  %8955 = call float @dx.op.binary.f32(i32 36, float %8954, float %8939)  ; FMin(a,b)
  %8956 = call float @dx.op.binary.f32(i32 36, float %8937, float %8938)  ; FMin(a,b)
  %8957 = call float @dx.op.binary.f32(i32 35, float %8956, float %8955)  ; FMax(a,b)
  %8958 = call float @dx.op.binary.f32(i32 35, float %8938, float %8939)  ; FMax(a,b)
  %8959 = call float @dx.op.binary.f32(i32 35, float %8937, float %8958)  ; FMax(a,b)
  store float %8953, float* %8871, align 4, !tbaa !106, !alias.scope !203, !noalias !204
  store float %8957, float* %8872, align 4, !tbaa !106, !alias.scope !201, !noalias !202
  store float %8959, float* %8873, align 4, !tbaa !106, !alias.scope !195, !noalias !198
  %8960 = sub nsw i32 3, %8943
  %8961 = icmp sgt i32 %8960, 2
  br i1 %8961, label %8962, label %9000

; <label>:8962                                    ; preds = %8936
  %8963 = icmp eq i32 %8731, 0
  %8964 = fsub fast float %8781, %8865
  %8965 = select i1 %8963, float %8964, float %8865
  %8966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8967 = extractvalue %dx.types.CBufRet.f32 %8966, 0
  %8968 = extractvalue %dx.types.CBufRet.f32 %8966, 1
  %8969 = extractvalue %dx.types.CBufRet.f32 %8966, 2
  %8970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8971 = extractvalue %dx.types.CBufRet.f32 %8970, 0
  %8972 = extractvalue %dx.types.CBufRet.f32 %8970, 1
  %8973 = extractvalue %dx.types.CBufRet.f32 %8970, 2
  %8974 = extractvalue %dx.types.CBufRet.f32 %8970, 3
  %8975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8976 = extractvalue %dx.types.CBufRet.f32 %8975, 3
  %8977 = call float @dx.op.binary.f32(i32 36, float %8866, float %8976)  ; FMin(a,b)
  %8978 = fmul fast float %8974, %8965
  %8979 = call float @dx.op.unary.f32(i32 7, float %8978)  ; Saturate(value)
  %8980 = fsub fast float %8971, %8967
  %8981 = fsub fast float %8972, %8968
  %8982 = fsub fast float %8973, %8969
  %8983 = fmul fast float %8979, %8980
  %8984 = fmul fast float %8979, %8981
  %8985 = fmul fast float %8979, %8982
  %8986 = fadd fast float %8983, %8967
  %8987 = fadd fast float %8984, %8968
  %8988 = fadd fast float %8985, %8969
  %8989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8990 = extractvalue %dx.types.CBufRet.f32 %8989, 0
  %8991 = extractvalue %dx.types.CBufRet.f32 %8989, 1
  %8992 = fadd fast float %8991, %8990
  %8993 = call float @dx.op.unary.f32(i32 7, float %8992)  ; Saturate(value)
  %8994 = extractvalue %dx.types.CBufRet.f32 %8989, 2
  %8995 = extractvalue %dx.types.CBufRet.f32 %8989, 3
  %8996 = fadd fast float %8995, %8994
  %8997 = call float @dx.op.unary.f32(i32 7, float %8996)  ; Saturate(value)
  %8998 = fmul fast float %8993, %8977
  %8999 = fmul fast float %8998, %8997
  br label %9082

; <label>:9000                                    ; preds = %8936
  %9001 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8960
  %9002 = load float, float* %9001, align 4, !tbaa !106, !noalias !169
  %9003 = fcmp fast olt float %9002, %8867
  %9004 = icmp sgt i32 %8943, 0
  %9005 = and i1 %9004, %9003
  br i1 %9005, label %9006, label %9043

; <label>:9006                                    ; preds = %9000
  br label %9007

; <label>:9007                                    ; preds = %9036, %9006
  %9008 = phi float [ %9037, %9036 ], [ %8865, %9006 ]
  %9009 = phi float [ %9038, %9036 ], [ %8866, %9006 ]
  %9010 = phi float [ %9018, %9036 ], [ %9002, %9006 ]
  %9011 = phi i32 [ %9015, %9036 ], [ %8960, %9006 ]
  %9012 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %9011
  %9013 = load float, float* %9012, align 4, !tbaa !106, !noalias !169
  %9014 = icmp slt i32 %9011, 2
  %9015 = add nsw i32 %9011, 1
  %9016 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %9015
  %9017 = load float, float* %9016, align 4, !tbaa !106, !noalias !169
  %9018 = select i1 %9014, float %9017, float %8781
  %9019 = call float @dx.op.binary.f32(i32 36, float %9018, float %9013)  ; FMin(a,b)
  %9020 = call float @dx.op.binary.f32(i32 36, float %8867, float %9019)  ; FMin(a,b)
  %9021 = icmp eq i32 %8731, 0
  %9022 = fadd fast float %9020, %9010
  %9023 = fmul fast float %9022, %2310
  %9024 = fadd fast float %9023, %8725
  br i1 %9021, label %9030, label %9025

; <label>:9025                                    ; preds = %9007
  %9026 = fsub fast float %9020, %9010
  %9027 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9026)  ; FMax(a,b)
  %9028 = fmul fast float %9027, %9024
  %9029 = fadd fast float %9028, %9009
  br label %9036

; <label>:9030                                    ; preds = %9007
  %9031 = fsub fast float %9010, %9020
  %9032 = call float @dx.op.unary.f32(i32 6, float %9031)  ; FAbs(value)
  %9033 = fadd fast float %9032, %9008
  %9034 = fmul fast float %9032, %9024
  %9035 = fsub fast float %9009, %9034
  br label %9036

; <label>:9036                                    ; preds = %9030, %9025
  %9037 = phi float [ %9027, %9025 ], [ %9033, %9030 ]
  %9038 = phi float [ %9029, %9025 ], [ %9035, %9030 ]
  %9039 = fcmp fast olt float %9018, %8867
  %9040 = icmp slt i32 %9015, 3
  %9041 = and i1 %9040, %9039
  br i1 %9041, label %9007, label %9042

; <label>:9042                                    ; preds = %9036
  br label %9043

; <label>:9043                                    ; preds = %9042, %9000
  %9044 = phi float [ %8865, %9000 ], [ %9037, %9042 ]
  %9045 = phi float [ %8866, %9000 ], [ %9038, %9042 ]
  %9046 = fsub fast float %8781, %9044
  %9047 = select i1 %8783, float %9044, float %9046
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  %9050 = extractvalue %dx.types.CBufRet.f32 %9048, 1
  %9051 = extractvalue %dx.types.CBufRet.f32 %9048, 2
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 0
  %9054 = extractvalue %dx.types.CBufRet.f32 %9052, 1
  %9055 = extractvalue %dx.types.CBufRet.f32 %9052, 2
  %9056 = extractvalue %dx.types.CBufRet.f32 %9052, 3
  %9057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9058 = extractvalue %dx.types.CBufRet.f32 %9057, 3
  %9059 = call float @dx.op.binary.f32(i32 36, float %9045, float %9058)  ; FMin(a,b)
  %9060 = fmul fast float %9056, %9047
  %9061 = call float @dx.op.unary.f32(i32 7, float %9060)  ; Saturate(value)
  %9062 = fsub fast float %9053, %9049
  %9063 = fsub fast float %9054, %9050
  %9064 = fsub fast float %9055, %9051
  %9065 = fmul fast float %9061, %9062
  %9066 = fmul fast float %9061, %9063
  %9067 = fmul fast float %9061, %9064
  %9068 = fadd fast float %9065, %9049
  %9069 = fadd fast float %9066, %9050
  %9070 = fadd fast float %9067, %9051
  %9071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9072 = extractvalue %dx.types.CBufRet.f32 %9071, 0
  %9073 = extractvalue %dx.types.CBufRet.f32 %9071, 1
  %9074 = fadd fast float %9073, %9072
  %9075 = call float @dx.op.unary.f32(i32 7, float %9074)  ; Saturate(value)
  %9076 = extractvalue %dx.types.CBufRet.f32 %9071, 2
  %9077 = extractvalue %dx.types.CBufRet.f32 %9071, 3
  %9078 = fadd fast float %9077, %9076
  %9079 = call float @dx.op.unary.f32(i32 7, float %9078)  ; Saturate(value)
  %9080 = fmul fast float %9075, %9059
  %9081 = fmul fast float %9080, %9079
  br label %9082

; <label>:9082                                    ; preds = %9043, %8962, %8797, %8779, %8777
  %9083 = phi float [ %8806, %8797 ], [ %8965, %8962 ], [ %9047, %9043 ], [ 0.000000e+00, %8777 ], [ 0.000000e+00, %8779 ]
  %9084 = phi float [ %8840, %8797 ], [ %8999, %8962 ], [ %9081, %9043 ], [ 0.000000e+00, %8777 ], [ 0.000000e+00, %8779 ]
  %9085 = phi float [ %8827, %8797 ], [ %8986, %8962 ], [ %9068, %9043 ], [ 0.000000e+00, %8777 ], [ 0.000000e+00, %8779 ]
  %9086 = phi float [ %8828, %8797 ], [ %8987, %8962 ], [ %9069, %9043 ], [ 0.000000e+00, %8777 ], [ 0.000000e+00, %8779 ]
  %9087 = phi float [ %8829, %8797 ], [ %8988, %8962 ], [ %9070, %9043 ], [ 0.000000e+00, %8777 ], [ 0.000000e+00, %8779 ]
  %9088 = fmul fast float %8720, %9084
  %9089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9090 = extractvalue %dx.types.CBufRet.f32 %9089, 2
  %9091 = fsub fast float %8727, %9090
  %9092 = fcmp fast olt float %9088, -2.000000e+01
  %9093 = call float @dx.op.unary.f32(i32 21, float %9088)  ; Exp(value)
  %9094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9095 = extractvalue %dx.types.CBufRet.f32 %9094, 2
  %9096 = extractvalue %dx.types.CBufRet.f32 %9094, 3
  %9097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9098 = extractvalue %dx.types.CBufRet.f32 %9097, 2
  %9099 = fmul fast float %9096, %9091
  %9100 = call float @dx.op.unary.f32(i32 7, float %9099)  ; Saturate(value)
  %9101 = fsub fast float 1.000000e+00, %9100
  %9102 = fmul fast float %2310, 5.000000e-01
  %9103 = fadd fast float %9102, 5.000000e-01
  %9104 = call float @dx.op.unary.f32(i32 7, float %9103)  ; Saturate(value)
  %9105 = fsub fast float 1.000000e+00, %9104
  %9106 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9101)  ; FMax(a,b)
  %9107 = fdiv fast float %9105, %9106
  %9108 = fsub fast float %9091, %155
  %9109 = call float @dx.op.unary.f32(i32 6, float %9108)  ; FAbs(value)
  %9110 = fmul fast float %9109, %9095
  %9111 = call float @dx.op.unary.f32(i32 7, float %9107)  ; Saturate(value)
  %9112 = fsub fast float 1.000000e+00, %9110
  %9113 = fmul fast float %9112, %9111
  %9114 = fadd fast float %9113, %9110
  %9115 = fmul fast float %9098, %9091
  %9116 = call float @dx.op.unary.f32(i32 7, float %9115)  ; Saturate(value)
  %9117 = fsub fast float 1.000000e+00, %9114
  %9118 = fmul fast float %9117, %9116
  %9119 = fadd fast float %9118, %9114
  %9120 = call float @dx.op.unary.f32(i32 7, float %9119)  ; Saturate(value)
  %9121 = fadd fast float %9093, -1.000000e+00
  %9122 = select i1 %9092, float -1.000000e+00, float %9121
  %9123 = fmul fast float %9120, %9122
  %9124 = fadd fast float %9123, 1.000000e+00
  %9125 = fsub fast float -0.000000e+00, %9123
  %9126 = fmul fast float %9085, %9125
  %9127 = fmul fast float %9086, %9125
  %9128 = fmul fast float %9087, %9125
  br label %9129

; <label>:9129                                    ; preds = %9082, %8683
  %9130 = phi float [ %9083, %9082 ], [ 0.000000e+00, %8683 ]
  %9131 = phi float [ %9124, %9082 ], [ 1.000000e+00, %8683 ]
  %9132 = phi float [ %9126, %9082 ], [ 0.000000e+00, %8683 ]
  %9133 = phi float [ %9127, %9082 ], [ 0.000000e+00, %8683 ]
  %9134 = phi float [ %9128, %9082 ], [ 0.000000e+00, %8683 ]
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9137 = fsub fast float 1.000000e+00, %9131
  %9138 = fmul fast float %9137, %8713
  %9139 = fmul fast float %9138, %9136
  %9140 = fsub fast float %8713, %9139
  br i1 %8711, label %9141, label %9170, !dx.controlflow.hints !205

; <label>:9141                                    ; preds = %9129
  %9142 = fmul fast float %8714, %8708
  %9143 = fadd fast float %9142, %8709
  %9144 = call float @dx.op.unary.f32(i32 7, float %9143)  ; Saturate(value)
  %9145 = fmul fast float %8690, %9140
  %9146 = fsub fast float -0.000000e+00, %9145
  %9147 = fmul fast float %8691, %9140
  %9148 = fsub fast float -0.000000e+00, %9147
  %9149 = call float @dx.op.unary.f32(i32 21, float %9146)  ; Exp(value)
  %9150 = call float @dx.op.unary.f32(i32 21, float %9148)  ; Exp(value)
  %9151 = call float @dx.op.binary.f32(i32 35, float %8698, float %9149)  ; FMax(a,b)
  %9152 = call float @dx.op.binary.f32(i32 35, float %8698, float %9150)  ; FMax(a,b)
  %9153 = fsub fast float %9152, %9151
  %9154 = fmul fast float %9153, %9144
  %9155 = fadd fast float %9154, %9151
  %9156 = call float @dx.op.unary.f32(i32 7, float %9155)  ; Saturate(value)
  %9157 = fsub fast float %8695, %8700
  %9158 = fsub fast float %8696, %8701
  %9159 = fsub fast float %8697, %8702
  %9160 = fmul fast float %9144, %9157
  %9161 = fmul fast float %9144, %9158
  %9162 = fmul fast float %9144, %9159
  %9163 = fadd fast float %9160, %8700
  %9164 = fadd fast float %9161, %8701
  %9165 = fadd fast float %9162, %8702
  %9166 = fsub fast float 1.000000e+00, %9156
  %9167 = fmul fast float %9166, %9163
  %9168 = fmul fast float %9166, %9164
  %9169 = fmul fast float %9166, %9165
  br label %9229

; <label>:9170                                    ; preds = %9129
  %9171 = fmul fast float %9140, %8707
  %9172 = call float @dx.op.unary.f32(i32 7, float %9171)  ; Saturate(value)
  %9173 = fsub fast float 2.000000e+00, %9172
  %9174 = fmul fast float %9172, 9.921875e-01
  %9175 = fmul fast float %9174, %9173
  %9176 = fadd fast float %9175, 3.906250e-03
  %9177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %9176, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9178 = extractvalue %dx.types.ResRet.f32 %9177, 0
  %9179 = fsub fast float %9172, %9178
  %9180 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9179)  ; FMax(a,b)
  %9181 = fmul fast float %8693, %155
  %9182 = call float @dx.op.unary.f32(i32 6, float %9181)  ; FAbs(value)
  %9183 = fcmp fast ogt float %9182, 0x3EB0C6F7A0000000
  br i1 %9183, label %9184, label %9190, !dx.controlflow.hints !206

; <label>:9184                                    ; preds = %9170
  %9185 = fmul fast float %9181, 0xBFF7154760000000
  %9186 = call float @dx.op.unary.f32(i32 21, float %9185)  ; Exp(value)
  %9187 = fsub fast float 1.000000e+00, %9186
  %9188 = fdiv fast float %9187, %9181
  %9189 = fmul fast float %9188, %8703
  br label %9190

; <label>:9190                                    ; preds = %9184, %9170
  %9191 = phi float [ %9189, %9184 ], [ %8703, %9170 ]
  %9192 = fadd fast float %9191, %8705
  %9193 = fmul fast float %9192, %9180
  %9194 = fmul fast float %8690, %9193
  %9195 = fsub fast float -0.000000e+00, %9194
  %9196 = fmul fast float %8691, %9193
  %9197 = fsub fast float -0.000000e+00, %9196
  %9198 = fmul fast float %8692, %9193
  %9199 = fsub fast float -0.000000e+00, %9198
  %9200 = call float @dx.op.unary.f32(i32 21, float %9195)  ; Exp(value)
  %9201 = call float @dx.op.unary.f32(i32 21, float %9197)  ; Exp(value)
  %9202 = call float @dx.op.unary.f32(i32 21, float %9199)  ; Exp(value)
  %9203 = fmul fast float %8714, %8714
  %9204 = fadd fast float %9203, 1.000000e+00
  %9205 = fmul fast float %9204, 0x3FAE8EC8A0000000
  %9206 = fmul fast float %9205, %8700
  %9207 = fmul fast float %9205, %8701
  %9208 = fmul fast float %9205, %8702
  %9209 = fmul fast float %8714, %8698
  %9210 = fsub fast float 1.000000e+00, %9209
  %9211 = fmul fast float %8698, %8698
  %9212 = fsub fast float 1.000000e+00, %9211
  %9213 = fmul fast float %9212, 0x3FB45F3060000000
  %9214 = fmul fast float %9210, %9210
  %9215 = fdiv fast float 1.000000e+00, %9214
  %9216 = fmul fast float %9213, %9215
  %9217 = fmul fast float %9216, %8695
  %9218 = fmul fast float %9216, %8696
  %9219 = fmul fast float %9216, %8697
  %9220 = fadd fast float %9217, %9206
  %9221 = fadd fast float %9218, %9207
  %9222 = fadd fast float %9219, %9208
  %9223 = fsub fast float 1.000000e+00, %9200
  %9224 = fsub fast float 1.000000e+00, %9201
  %9225 = fsub fast float 1.000000e+00, %9202
  %9226 = fmul fast float %9220, %9223
  %9227 = fmul fast float %9221, %9224
  %9228 = fmul fast float %9222, %9225
  br label %9229

; <label>:9229                                    ; preds = %9190, %9141
  %9230 = phi float [ %9167, %9141 ], [ %9226, %9190 ]
  %9231 = phi float [ %9168, %9141 ], [ %9227, %9190 ]
  %9232 = phi float [ %9169, %9141 ], [ %9228, %9190 ]
  %9233 = phi float [ %9156, %9141 ], [ %9200, %9190 ]
  %9234 = phi float [ %9156, %9141 ], [ %9201, %9190 ]
  %9235 = phi float [ %9156, %9141 ], [ %9202, %9190 ]
  br i1 %8722, label %9236, label %9434, !dx.controlflow.hints !207

; <label>:9236                                    ; preds = %9229
  %9237 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9238 = fmul fast float %9237, %9137
  %9239 = fsub fast float %9132, %9230
  %9240 = fsub fast float %9133, %9231
  %9241 = fsub fast float %9134, %9232
  %9242 = fmul fast float %9238, %9239
  %9243 = fmul fast float %9238, %9240
  %9244 = fmul fast float %9238, %9241
  %9245 = fadd fast float %9242, %9230
  %9246 = fadd fast float %9243, %9231
  %9247 = fadd fast float %9244, %9232
  %9248 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9233)  ; FMax(a,b)
  %9249 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9234)  ; FMax(a,b)
  %9250 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9235)  ; FMax(a,b)
  %9251 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9131)  ; FMax(a,b)
  %9252 = call float @dx.op.binary.f32(i32 35, float %9130, float %9140)  ; FMax(a,b)
  %9253 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9252)  ; FMax(a,b)
  %9254 = fdiv fast float %9130, %9253
  %9255 = call float @dx.op.unary.f32(i32 7, float %9254)  ; Saturate(value)
  %9256 = fdiv fast float %9140, %9253
  %9257 = call float @dx.op.unary.f32(i32 7, float %9256)  ; Saturate(value)
  %9258 = fcmp fast une float %9251, 1.000000e+00
  br i1 %9258, label %9259, label %9272, !dx.controlflow.hints !208

; <label>:9259                                    ; preds = %9236
  %9260 = call float @dx.op.unary.f32(i32 23, float %9251)  ; Log(value)
  %9261 = fmul fast float %9260, 0x3FE62E4300000000
  %9262 = fmul fast float %9132, %9261
  %9263 = fsub fast float -0.000000e+00, %9262
  %9264 = fmul fast float %9133, %9261
  %9265 = fsub fast float -0.000000e+00, %9264
  %9266 = fmul fast float %9134, %9261
  %9267 = fsub fast float -0.000000e+00, %9266
  %9268 = fsub fast float 1.000000e+00, %9251
  %9269 = fdiv fast float %9263, %9268
  %9270 = fdiv fast float %9265, %9268
  %9271 = fdiv fast float %9267, %9268
  br label %9272

; <label>:9272                                    ; preds = %9259, %9236
  %9273 = phi float [ %9269, %9259 ], [ %9132, %9236 ]
  %9274 = phi float [ %9270, %9259 ], [ %9133, %9236 ]
  %9275 = phi float [ %9271, %9259 ], [ %9134, %9236 ]
  %9276 = phi float [ %9261, %9259 ], [ 0.000000e+00, %9236 ]
  %9277 = fcmp fast une float %9248, 1.000000e+00
  br i1 %9277, label %9278, label %9285, !dx.controlflow.hints !209

; <label>:9278                                    ; preds = %9272
  %9279 = call float @dx.op.unary.f32(i32 23, float %9248)  ; Log(value)
  %9280 = fmul fast float %9279, 0x3FE62E4300000000
  %9281 = fmul fast float %9245, %9280
  %9282 = fsub fast float -0.000000e+00, %9281
  %9283 = fsub fast float 1.000000e+00, %9248
  %9284 = fdiv fast float %9282, %9283
  br label %9285

; <label>:9285                                    ; preds = %9278, %9272
  %9286 = phi float [ %9284, %9278 ], [ %9245, %9272 ]
  %9287 = phi float [ %9280, %9278 ], [ 0.000000e+00, %9272 ]
  %9288 = fcmp fast une float %9249, 1.000000e+00
  br i1 %9288, label %9289, label %9296, !dx.controlflow.hints !209

; <label>:9289                                    ; preds = %9285
  %9290 = call float @dx.op.unary.f32(i32 23, float %9249)  ; Log(value)
  %9291 = fmul fast float %9290, 0x3FE62E4300000000
  %9292 = fmul fast float %9246, %9291
  %9293 = fsub fast float -0.000000e+00, %9292
  %9294 = fsub fast float 1.000000e+00, %9249
  %9295 = fdiv fast float %9293, %9294
  br label %9296

; <label>:9296                                    ; preds = %9289, %9285
  %9297 = phi float [ %9295, %9289 ], [ %9246, %9285 ]
  %9298 = phi float [ %9291, %9289 ], [ 0.000000e+00, %9285 ]
  %9299 = fcmp fast une float %9250, 1.000000e+00
  br i1 %9299, label %9300, label %9307, !dx.controlflow.hints !209

; <label>:9300                                    ; preds = %9296
  %9301 = call float @dx.op.unary.f32(i32 23, float %9250)  ; Log(value)
  %9302 = fmul fast float %9301, 0x3FE62E4300000000
  %9303 = fmul fast float %9247, %9302
  %9304 = fsub fast float -0.000000e+00, %9303
  %9305 = fsub fast float 1.000000e+00, %9250
  %9306 = fdiv fast float %9304, %9305
  br label %9307

; <label>:9307                                    ; preds = %9300, %9296
  %9308 = phi float [ %9306, %9300 ], [ %9247, %9296 ]
  %9309 = phi float [ %9302, %9300 ], [ 0.000000e+00, %9296 ]
  %9310 = fmul fast float %9273, %9257
  %9311 = fmul fast float %9274, %9257
  %9312 = fmul fast float %9275, %9257
  %9313 = fmul fast float %9276, %9257
  %9314 = fmul fast float %9286, %9255
  %9315 = fmul fast float %9297, %9255
  %9316 = fmul fast float %9308, %9255
  %9317 = fmul fast float %9287, %9255
  %9318 = fmul fast float %9298, %9255
  %9319 = fmul fast float %9309, %9255
  %9320 = fadd fast float %9314, %9310
  %9321 = fadd fast float %9315, %9311
  %9322 = fadd fast float %9316, %9312
  %9323 = fadd fast float %9317, %9313
  %9324 = fadd fast float %9318, %9313
  %9325 = fadd fast float %9319, %9313
  %9326 = fcmp fast une float %9323, 0.000000e+00
  br i1 %9326, label %9327, label %9334, !dx.controlflow.hints !210

; <label>:9327                                    ; preds = %9307
  %9328 = fmul fast float %9323, 0x3FF7154760000000
  %9329 = call float @dx.op.unary.f32(i32 21, float %9328)  ; Exp(value)
  %9330 = fsub fast float 1.000000e+00, %9329
  %9331 = fmul fast float %9320, %9330
  %9332 = fsub fast float -0.000000e+00, %9331
  %9333 = fdiv fast float %9332, %9323
  br label %9334

; <label>:9334                                    ; preds = %9327, %9307
  %9335 = phi float [ %9329, %9327 ], [ 1.000000e+00, %9307 ]
  %9336 = phi float [ %9333, %9327 ], [ %9320, %9307 ]
  %9337 = fcmp fast une float %9324, 0.000000e+00
  br i1 %9337, label %9338, label %9345, !dx.controlflow.hints !210

; <label>:9338                                    ; preds = %9334
  %9339 = fmul fast float %9324, 0x3FF7154760000000
  %9340 = call float @dx.op.unary.f32(i32 21, float %9339)  ; Exp(value)
  %9341 = fsub fast float 1.000000e+00, %9340
  %9342 = fmul fast float %9321, %9341
  %9343 = fsub fast float -0.000000e+00, %9342
  %9344 = fdiv fast float %9343, %9324
  br label %9345

; <label>:9345                                    ; preds = %9338, %9334
  %9346 = phi float [ %9340, %9338 ], [ 1.000000e+00, %9334 ]
  %9347 = phi float [ %9344, %9338 ], [ %9321, %9334 ]
  %9348 = fcmp fast une float %9325, 0.000000e+00
  br i1 %9348, label %9349, label %9356, !dx.controlflow.hints !210

; <label>:9349                                    ; preds = %9345
  %9350 = fmul fast float %9325, 0x3FF7154760000000
  %9351 = call float @dx.op.unary.f32(i32 21, float %9350)  ; Exp(value)
  %9352 = fsub fast float 1.000000e+00, %9351
  %9353 = fmul fast float %9322, %9352
  %9354 = fsub fast float -0.000000e+00, %9353
  %9355 = fdiv fast float %9354, %9325
  br label %9356

; <label>:9356                                    ; preds = %9349, %9345
  %9357 = phi float [ %9351, %9349 ], [ 1.000000e+00, %9345 ]
  %9358 = phi float [ %9355, %9349 ], [ %9322, %9345 ]
  %9359 = fcmp fast ogt float %9255, %9257
  br i1 %9359, label %9360, label %9380

; <label>:9360                                    ; preds = %9356
  %9361 = fsub fast float 1.000000e+00, %9257
  %9362 = fmul fast float %9273, %9361
  %9363 = fmul fast float %9274, %9361
  %9364 = fmul fast float %9275, %9361
  %9365 = fmul fast float %9276, %9361
  %9366 = fcmp fast une float %9365, 0.000000e+00
  br i1 %9366, label %9367, label %9418, !dx.controlflow.hints !211

; <label>:9367                                    ; preds = %9360
  %9368 = fmul fast float %9365, 0x3FF7154760000000
  %9369 = call float @dx.op.unary.f32(i32 21, float %9368)  ; Exp(value)
  %9370 = fsub fast float 1.000000e+00, %9369
  %9371 = fmul fast float %9362, %9370
  %9372 = fsub fast float -0.000000e+00, %9371
  %9373 = fmul fast float %9363, %9370
  %9374 = fsub fast float -0.000000e+00, %9373
  %9375 = fmul fast float %9364, %9370
  %9376 = fsub fast float -0.000000e+00, %9375
  %9377 = fdiv fast float %9372, %9365
  %9378 = fdiv fast float %9374, %9365
  %9379 = fdiv fast float %9376, %9365
  br label %9418

; <label>:9380                                    ; preds = %9356
  %9381 = fsub fast float 1.000000e+00, %9255
  %9382 = fmul fast float %9286, %9381
  %9383 = fmul fast float %9297, %9381
  %9384 = fmul fast float %9308, %9381
  %9385 = fmul fast float %9287, %9381
  %9386 = fmul fast float %9298, %9381
  %9387 = fmul fast float %9309, %9381
  %9388 = fcmp fast une float %9385, 0.000000e+00
  br i1 %9388, label %9389, label %9396, !dx.controlflow.hints !210

; <label>:9389                                    ; preds = %9380
  %9390 = fmul fast float %9385, 0x3FF7154760000000
  %9391 = call float @dx.op.unary.f32(i32 21, float %9390)  ; Exp(value)
  %9392 = fsub fast float 1.000000e+00, %9391
  %9393 = fmul fast float %9382, %9392
  %9394 = fsub fast float -0.000000e+00, %9393
  %9395 = fdiv fast float %9394, %9385
  br label %9396

; <label>:9396                                    ; preds = %9389, %9380
  %9397 = phi float [ %9395, %9389 ], [ %9382, %9380 ]
  %9398 = phi float [ %9391, %9389 ], [ 1.000000e+00, %9380 ]
  %9399 = fcmp fast une float %9386, 0.000000e+00
  br i1 %9399, label %9400, label %9407, !dx.controlflow.hints !210

; <label>:9400                                    ; preds = %9396
  %9401 = fmul fast float %9386, 0x3FF7154760000000
  %9402 = call float @dx.op.unary.f32(i32 21, float %9401)  ; Exp(value)
  %9403 = fsub fast float 1.000000e+00, %9402
  %9404 = fmul fast float %9383, %9403
  %9405 = fsub fast float -0.000000e+00, %9404
  %9406 = fdiv fast float %9405, %9386
  br label %9407

; <label>:9407                                    ; preds = %9400, %9396
  %9408 = phi float [ %9406, %9400 ], [ %9383, %9396 ]
  %9409 = phi float [ %9402, %9400 ], [ 1.000000e+00, %9396 ]
  %9410 = fcmp fast une float %9387, 0.000000e+00
  br i1 %9410, label %9411, label %9418, !dx.controlflow.hints !210

; <label>:9411                                    ; preds = %9407
  %9412 = fmul fast float %9387, 0x3FF7154760000000
  %9413 = call float @dx.op.unary.f32(i32 21, float %9412)  ; Exp(value)
  %9414 = fsub fast float 1.000000e+00, %9413
  %9415 = fmul fast float %9384, %9414
  %9416 = fsub fast float -0.000000e+00, %9415
  %9417 = fdiv fast float %9416, %9387
  br label %9418

; <label>:9418                                    ; preds = %9411, %9407, %9367, %9360
  %9419 = phi float [ %9417, %9411 ], [ %9379, %9367 ], [ %9364, %9360 ], [ %9384, %9407 ]
  %9420 = phi float [ %9408, %9411 ], [ %9378, %9367 ], [ %9363, %9360 ], [ %9408, %9407 ]
  %9421 = phi float [ %9397, %9411 ], [ %9377, %9367 ], [ %9362, %9360 ], [ %9397, %9407 ]
  %9422 = phi float [ %9413, %9411 ], [ %9369, %9367 ], [ 1.000000e+00, %9360 ], [ 1.000000e+00, %9407 ]
  %9423 = phi float [ %9409, %9411 ], [ %9369, %9367 ], [ 1.000000e+00, %9360 ], [ %9409, %9407 ]
  %9424 = phi float [ %9398, %9411 ], [ %9369, %9367 ], [ 1.000000e+00, %9360 ], [ %9398, %9407 ]
  %9425 = fmul fast float %9424, %9336
  %9426 = fmul fast float %9423, %9347
  %9427 = fmul fast float %9422, %9358
  %9428 = fadd fast float %9425, %9421
  %9429 = fadd fast float %9426, %9420
  %9430 = fadd fast float %9427, %9419
  %9431 = fmul fast float %9424, %9335
  %9432 = fmul fast float %9423, %9346
  %9433 = fmul fast float %9422, %9357
  br label %9434

; <label>:9434                                    ; preds = %9418, %9229
  %9435 = phi float [ %9433, %9418 ], [ %9235, %9229 ]
  %9436 = phi float [ %9432, %9418 ], [ %9234, %9229 ]
  %9437 = phi float [ %9431, %9418 ], [ %9233, %9229 ]
  %9438 = phi float [ %9430, %9418 ], [ %9232, %9229 ]
  %9439 = phi float [ %9429, %9418 ], [ %9231, %9229 ]
  %9440 = phi float [ %9428, %9418 ], [ %9230, %9229 ]
  %9441 = call float @dx.op.dot3.f32(i32 55, float %9437, float %9436, float %9435, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9442 = call float @dx.op.dot3.f32(i32 55, float %9440, float %9439, float %9438, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9443 = select i1 %2452, float %9441, float %9437
  %9444 = select i1 %2452, float %9441, float %9436
  %9445 = select i1 %2452, float 1.000000e+00, float %9435
  %9446 = select i1 %2452, float %9442, float %9440
  %9447 = select i1 %2452, float 0.000000e+00, float %9439
  %9448 = select i1 %2452, float 0.000000e+00, float %9438
  %9449 = fmul fast float %9443, %8678
  %9450 = fmul fast float %9444, %8680
  %9451 = fmul fast float %9445, %8682
  %9452 = fadd fast float %9449, %9446
  %9453 = fadd fast float %9450, %9447
  %9454 = fadd fast float %9448, %9451
  %9455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9456 = extractvalue %dx.types.CBufRet.f32 %9455, 2
  %9457 = extractvalue %dx.types.CBufRet.f32 %9455, 3
  %9458 = fmul fast float %9456, %98
  %9459 = fmul fast float %9457, %99
  %9460 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %61, float %9458, float %9459, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9461 = extractvalue %dx.types.ResRet.f32 %9460, 0
  %9462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %61, float %9458, float %9459, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9463 = extractvalue %dx.types.ResRet.f32 %9462, 0
  %9464 = extractvalue %dx.types.ResRet.f32 %9462, 1
  %9465 = extractvalue %dx.types.ResRet.f32 %9462, 2
  %9466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9467 = extractvalue %dx.types.CBufRet.f32 %9466, 1
  %9468 = fmul fast float %9467, %9463
  %9469 = fmul fast float %9467, %9464
  %9470 = fmul fast float %9467, %9465
  %9471 = fmul fast float %9461, %9437
  %9472 = call float @dx.op.dot3.f32(i32 55, float %9461, float %9461, float %9461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9473 = call float @dx.op.dot3.f32(i32 55, float %9468, float %9469, float %9470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9474 = select i1 %2452, float %9472, float %9461
  %9475 = select i1 %2452, float 1.000000e+00, float %9461
  %9476 = select i1 %2452, float %9473, float %9468
  %9477 = select i1 %2452, float 0.000000e+00, float %9469
  %9478 = select i1 %2452, float 0.000000e+00, float %9470
  %9479 = fmul fast float %9474, %9452
  %9480 = fmul fast float %9474, %9453
  %9481 = fmul fast float %9475, %9454
  %9482 = fadd fast float %9479, %9476
  %9483 = fadd fast float %9480, %9477
  %9484 = fadd fast float %9478, %9481
  br label %9485

; <label>:9485                                    ; preds = %9434, %8651
  %9486 = phi float [ %8678, %8651 ], [ %9482, %9434 ]
  %9487 = phi float [ %8680, %8651 ], [ %9483, %9434 ]
  %9488 = phi float [ %8682, %8651 ], [ %9484, %9434 ]
  %9489 = phi float [ 1.000000e+00, %8651 ], [ %9471, %9434 ]
  %9490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9491 = extractvalue %dx.types.CBufRet.f32 %9490, 2
  %9492 = extractvalue %dx.types.CBufRet.f32 %9490, 3
  %9493 = fmul fast float %9491, %98
  %9494 = fmul fast float %9492, %99
  %9495 = call float @dx.op.unary.f32(i32 7, float %9493)  ; Saturate(value)
  %9496 = call float @dx.op.unary.f32(i32 7, float %9494)  ; Saturate(value)
  %9497 = select i1 %115, i32 0, i32 2
  %9498 = or i32 %9497, 1
  %9499 = uitofp i32 %9498 to float
  %9500 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %9495, float %9496, float %9499, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9501 = extractvalue %dx.types.ResRet.f32 %9500, 0
  %9502 = extractvalue %dx.types.ResRet.f32 %9500, 1
  %9503 = extractvalue %dx.types.ResRet.f32 %9500, 2
  %9504 = extractvalue %dx.types.ResRet.f32 %9500, 3
  %9505 = add nuw nsw i32 %9497, 2
  %9506 = uitofp i32 %9505 to float
  %9507 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %9495, float %9496, float %9506, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9508 = extractvalue %dx.types.ResRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.ResRet.f32 %9507, 1
  %9510 = extractvalue %dx.types.ResRet.f32 %9507, 2
  %9511 = extractvalue %dx.types.ResRet.f32 %9507, 3
  %9512 = call float @dx.op.binary.f32(i32 35, float %9502, float %9503)  ; FMax(a,b)
  %9513 = call float @dx.op.binary.f32(i32 35, float %9501, float %9512)  ; FMax(a,b)
  %9514 = call float @dx.op.binary.f32(i32 35, float %9513, float %9504)  ; FMax(a,b)
  %9515 = call float @dx.op.binary.f32(i32 36, float %9509, float %9510)  ; FMin(a,b)
  %9516 = call float @dx.op.binary.f32(i32 36, float %9508, float %9515)  ; FMin(a,b)
  %9517 = call float @dx.op.binary.f32(i32 36, float %9516, float %9511)  ; FMin(a,b)
  %9518 = fmul fast float %9514, 2.550000e+02
  %9519 = fadd fast float %9518, 0x3F70101020000000
  %9520 = fptoui float %9519 to i32
  %9521 = fmul fast float %9517, 2.550000e+02
  %9522 = fadd fast float %9521, 0x3F70101020000000
  %9523 = fptoui float %9522 to i32
  %9524 = icmp ult i32 %9520, %9523
  br i1 %9524, label %9525, label %9577

; <label>:9525                                    ; preds = %9485
  %9526 = fcmp fast ogt float %86, 9.843750e-01
  %9527 = fadd fast float %87, -4.000000e+00
  %9528 = select i1 %9526, float -4.000000e+00, float %9527
  %9529 = call float @dx.op.binary.f32(i32 35, float %9528, float 0.000000e+00)  ; FMax(a,b)
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 0
  %9532 = fadd fast float %9531, %9529
  %9533 = extractvalue %dx.types.CBufRet.f32 %9530, 2
  %9534 = fmul fast float %9532, %9533
  %9535 = call float @dx.op.unary.f32(i32 23, float %9534)  ; Log(value)
  %9536 = extractvalue %dx.types.CBufRet.f32 %9530, 3
  %9537 = fmul fast float %9536, %9535
  %9538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9539 = extractvalue %dx.types.CBufRet.f32 %9538, 2
  %9540 = fmul fast float %9537, %9539
  %9541 = call float @dx.op.unary.f32(i32 7, float %9540)  ; Saturate(value)
  %9542 = uitofp i32 %9520 to float
  %9543 = uitofp i32 %9523 to float
  %9544 = fadd fast float %9542, 5.000000e-01
  %9545 = fadd fast float %9543, 5.000000e-01
  %9546 = fmul fast float %9539, %9544
  %9547 = fmul fast float %9539, %9545
  %9548 = fadd fast float %9546, 0x3F0FFB4800000000
  %9549 = fadd fast float %9547, 0xBF0FFB4800000000
  %9550 = call float @dx.op.binary.f32(i32 35, float %9541, float %9548)  ; FMax(a,b)
  %9551 = call float @dx.op.binary.f32(i32 36, float %9550, float %9549)  ; FMin(a,b)
  %9552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9553 = extractvalue %dx.types.CBufRet.f32 %9552, 1
  %9554 = extractvalue %dx.types.CBufRet.f32 %9552, 2
  %9555 = extractvalue %dx.types.CBufRet.f32 %9552, 0
  %9556 = select i1 %115, float 0.000000e+00, float %9555
  %9557 = fmul fast float %9553, %9551
  %9558 = fadd fast float %9556, %9557
  %9559 = fadd fast float %9556, %9554
  %9560 = fsub fast float %9553, %9554
  %9561 = fadd fast float %9560, %9556
  %9562 = call float @dx.op.binary.f32(i32 35, float %9558, float %9559)  ; FMax(a,b)
  %9563 = call float @dx.op.binary.f32(i32 36, float %9562, float %9561)  ; FMin(a,b)
  %9564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %9495, float %9496, float %9563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9565 = extractvalue %dx.types.ResRet.f32 %9564, 0
  %9566 = extractvalue %dx.types.ResRet.f32 %9564, 1
  %9567 = extractvalue %dx.types.ResRet.f32 %9564, 2
  %9568 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %9495, float %9496, float %9563, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9569 = extractvalue %dx.types.ResRet.f32 %9568, 0
  %9570 = extractvalue %dx.types.ResRet.f32 %9568, 1
  %9571 = extractvalue %dx.types.ResRet.f32 %9568, 2
  %9572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9573 = extractvalue %dx.types.CBufRet.f32 %9572, 1
  %9574 = fmul fast float %9573, %9569
  %9575 = fmul fast float %9573, %9570
  %9576 = fmul fast float %9573, %9571
  br label %9577

; <label>:9577                                    ; preds = %9525, %9485
  %9578 = phi float [ %9565, %9525 ], [ 1.000000e+00, %9485 ]
  %9579 = phi float [ %9566, %9525 ], [ 1.000000e+00, %9485 ]
  %9580 = phi float [ %9567, %9525 ], [ 1.000000e+00, %9485 ]
  %9581 = phi float [ %9574, %9525 ], [ 0.000000e+00, %9485 ]
  %9582 = phi float [ %9575, %9525 ], [ 0.000000e+00, %9485 ]
  %9583 = phi float [ %9576, %9525 ], [ 0.000000e+00, %9485 ]
  %9584 = fmul fast float %9578, %9489
  %9585 = call float @dx.op.dot3.f32(i32 55, float %9578, float %9579, float %9580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9586 = call float @dx.op.dot3.f32(i32 55, float %9581, float %9582, float %9583, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9587 = select i1 %2452, float %9585, float %9578
  %9588 = select i1 %2452, float %9585, float %9579
  %9589 = select i1 %2452, float 1.000000e+00, float %9580
  %9590 = select i1 %2452, float %9586, float %9581
  %9591 = select i1 %2452, float 0.000000e+00, float %9582
  %9592 = select i1 %2452, float 0.000000e+00, float %9583
  %9593 = fmul fast float %9587, %9486
  %9594 = fmul fast float %9588, %9487
  %9595 = fmul fast float %9589, %9488
  %9596 = fadd fast float %9593, %9590
  %9597 = fadd fast float %9594, %9591
  %9598 = fadd fast float %9592, %9595
  %9599 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9600 = extractvalue %dx.types.CBufRet.i32 %9599, 3
  %9601 = and i32 %9600, 3
  %9602 = icmp ne i32 %9601, 0
  %9603 = and i32 %9600, 4
  %9604 = icmp ne i32 %9603, 0
  %9605 = and i1 %9602, %9604
  %9606 = and i1 %2452, %9605
  br i1 %9606, label %9607, label %9613

; <label>:9607                                    ; preds = %9577
  %9608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9609 = extractvalue %dx.types.CBufRet.f32 %9608, 1
  %9610 = fadd fast float %9584, -1.000000e+00
  %9611 = fmul fast float %9609, %9610
  %9612 = fadd fast float %9611, 1.000000e+00
  br label %9613

; <label>:9613                                    ; preds = %9607, %9577
  %9614 = phi float [ %9612, %9607 ], [ %9584, %9577 ]
  %9615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9616 = extractvalue %dx.types.CBufRet.f32 %9615, 0
  br i1 %2452, label %9617, label %9631

; <label>:9617                                    ; preds = %9613
  %9618 = fadd fast float %9596, %9597
  %9619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9620 = extractvalue %dx.types.CBufRet.f32 %9619, 3
  %9621 = extractvalue %dx.types.CBufRet.f32 %8662, 1
  %9622 = fsub fast float %8668, %8656
  %9623 = fadd fast float %9622, %8669
  %9624 = fsub fast float %9623, %9621
  %9625 = extractvalue %dx.types.CBufRet.f32 %8662, 2
  %9626 = fmul fast float %9624, %9625
  %9627 = call float @dx.op.unary.f32(i32 7, float %9626)  ; Saturate(value)
  %9628 = fsub fast float %9627, %9620
  %9629 = fmul fast float %9628, %9614
  %9630 = fadd fast float %9629, %9620
  br label %9634

; <label>:9631                                    ; preds = %9613
  %9632 = fmul fast float %9616, %9597
  %9633 = fmul fast float %9616, %9598
  br label %9634

; <label>:9634                                    ; preds = %9631, %9617
  %9635 = phi float [ %9618, %9617 ], [ %9596, %9631 ]
  %9636 = phi float [ %9630, %9617 ], [ %9632, %9631 ]
  %9637 = phi float [ 1.000000e+00, %9617 ], [ %9633, %9631 ]
  %9638 = fmul float %9616, %9635
  switch i32 %8583, label %9936 [
    i32 0, label %9951
    i32 1, label %9639
    i32 2, label %9640
    i32 3, label %9652
    i32 4, label %9661
    i32 5, label %9662
    i32 6, label %9663
    i32 12, label %9664
    i32 13, label %9665
    i32 14, label %9677
    i32 15, label %9689
    i32 16, label %9701
    i32 17, label %9702
    i32 63, label %9935
    i32 18, label %9703
    i32 25, label %9725
    i32 27, label %9726
    i32 28, label %9727
    i32 29, label %9728
    i32 31, label %9729
    i32 32, label %9752
    i32 33, label %9811
    i32 37, label %9829
    i32 38, label %9830
    i32 39, label %9839
    i32 40, label %9862
    i32 41, label %9866
    i32 52, label %9867
    i32 53, label %9868
    i32 54, label %9869
    i32 55, label %9870
    i32 56, label %9871
    i32 57, label %9873
    i32 58, label %9875
    i32 59, label %9913
    i32 60, label %9915
    i32 61, label %9917
    i32 64, label %9919
    i32 62, label %9934
  ]

; <label>:9639                                    ; preds = %9634
  br label %9936

; <label>:9640                                    ; preds = %9634
  %9641 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %9642 = call float @dx.op.unary.f32(i32 25, float %9641)  ; Rsqrt(value)
  %9643 = fmul fast float %2280, 5.000000e-01
  %9644 = fmul fast float %9643, %9642
  %9645 = fmul fast float %2281, 5.000000e-01
  %9646 = fmul fast float %9645, %9642
  %9647 = fmul fast float %2282, 5.000000e-01
  %9648 = fmul fast float %9647, %9642
  %9649 = fadd fast float %9644, 5.000000e-01
  %9650 = fadd fast float %9646, 5.000000e-01
  %9651 = fadd fast float %9648, 5.000000e-01
  br label %9936

; <label>:9652                                    ; preds = %9634
  %9653 = fcmp fast ole float %2410, 0x3FA4B5DCC0000000
  %9654 = fmul fast float %2410, 0x3FB3D07220000000
  %9655 = fadd fast float %2410, 0x3FAC28F5C0000000
  %9656 = fmul fast float %9655, 0x3FEE54EDE0000000
  %9657 = call float @dx.op.unary.f32(i32 23, float %9656)  ; Log(value)
  %9658 = fmul fast float %9657, 0x4003333340000000
  %9659 = call float @dx.op.unary.f32(i32 21, float %9658)  ; Exp(value)
  %9660 = select i1 %9653, float %9654, float %9659
  br label %9936

; <label>:9661                                    ; preds = %9634
  br label %9936

; <label>:9662                                    ; preds = %9634
  br label %9936

; <label>:9663                                    ; preds = %9634
  br label %9936

; <label>:9664                                    ; preds = %9634
  br label %9936

; <label>:9665                                    ; preds = %9634
  %9666 = and i32 %8652, 1023
  %9667 = uitofp i32 %9666 to float
  %9668 = lshr i32 %8652, 10
  %9669 = and i32 %9668, 1023
  %9670 = uitofp i32 %9669 to float
  %9671 = lshr i32 %8652, 20
  %9672 = and i32 %9671, 1023
  %9673 = uitofp i32 %9672 to float
  %9674 = fmul fast float %9667, 0x3F50040100000000
  %9675 = fmul fast float %9670, 0x3F50040100000000
  %9676 = fmul fast float %9673, 0x3F50040100000000
  br label %9936

; <label>:9677                                    ; preds = %9634
  %9678 = and i32 %8652, 1023
  %9679 = uitofp i32 %9678 to float
  %9680 = lshr i32 %8652, 10
  %9681 = and i32 %9680, 1023
  %9682 = uitofp i32 %9681 to float
  %9683 = lshr i32 %8652, 20
  %9684 = and i32 %9683, 1023
  %9685 = uitofp i32 %9684 to float
  %9686 = fmul fast float %9679, 0x3F50040100000000
  %9687 = fmul fast float %9682, 0x3F50040100000000
  %9688 = fmul fast float %9685, 0x3F50040100000000
  br label %9936

; <label>:9689                                    ; preds = %9634
  %9690 = and i32 %8652, 1023
  %9691 = uitofp i32 %9690 to float
  %9692 = lshr i32 %8652, 10
  %9693 = and i32 %9692, 1023
  %9694 = uitofp i32 %9693 to float
  %9695 = lshr i32 %8652, 20
  %9696 = and i32 %9695, 1023
  %9697 = uitofp i32 %9696 to float
  %9698 = fmul fast float %9691, 0x3F50040100000000
  %9699 = fmul fast float %9694, 0x3F50040100000000
  %9700 = fmul fast float %9697, 0x3F50040100000000
  br label %9936

; <label>:9701                                    ; preds = %9634
  br label %9936

; <label>:9702                                    ; preds = %9634
  br label %9936

; <label>:9703                                    ; preds = %9634
  %9704 = fcmp fast ogt float %2301, 0x3FB99999A0000000
  %9705 = fcmp fast ogt float %2302, 0x3FB99999A0000000
  %9706 = or i1 %9704, %9705
  %9707 = fcmp fast ogt float %2303, 0x3FB99999A0000000
  %9708 = or i1 %9706, %9707
  %9709 = fcmp fast olt float %2301, 0x3FB99999A0000000
  %9710 = fcmp fast olt float %2302, 0x3FB99999A0000000
  %9711 = or i1 %9709, %9710
  %9712 = fcmp fast olt float %2303, 0x3FB99999A0000000
  %9713 = or i1 %9711, %9712
  %9714 = fadd fast float %2301, %2292
  %9715 = fcmp fast ogt float %9714, 1.000000e+00
  %9716 = fadd fast float %2302, %2293
  %9717 = fcmp fast ogt float %9716, 1.000000e+00
  %9718 = or i1 %9715, %9717
  %9719 = fadd fast float %2303, %2294
  %9720 = fcmp fast ogt float %9719, 1.000000e+00
  %9721 = or i1 %9718, %9720
  %9722 = select i1 %9721, float 1.000000e+00, float 0.000000e+00
  %9723 = and i1 %9708, %9713
  %9724 = select i1 %9723, float 1.000000e+00, float 0.000000e+00
  br label %9936

; <label>:9725                                    ; preds = %9634
  br label %9936

; <label>:9726                                    ; preds = %9634
  br label %9936

; <label>:9727                                    ; preds = %9634
  br label %9936

; <label>:9728                                    ; preds = %9634
  br label %9936

; <label>:9729                                    ; preds = %9634
  %9730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9731 = extractvalue %dx.types.CBufRet.f32 %9730, 0
  %9732 = extractvalue %dx.types.CBufRet.f32 %9730, 2
  %9733 = extractvalue %dx.types.CBufRet.f32 %9730, 3
  %9734 = fcmp fast olt float %2410, %9731
  br i1 %9734, label %9735, label %9749

; <label>:9735                                    ; preds = %11584, %11582, %9749, %9729
  %9736 = phi i32 [ 0, %9729 ], [ 1, %9749 ], [ 2, %11582 ], [ 3, %11584 ]
  %9737 = mul i32 %9736, 3
  %9738 = add i32 0, %9737
  %9739 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9738
  %9740 = load float, float* %9739, align 4
  %9741 = mul i32 %9736, 3
  %9742 = add i32 1, %9741
  %9743 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9742
  %9744 = load float, float* %9743, align 4
  %9745 = mul i32 %9736, 3
  %9746 = add i32 2, %9745
  %9747 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9746
  %9748 = load float, float* %9747, align 4
  br label %9936

; <label>:9749                                    ; preds = %9729
  %9750 = extractvalue %dx.types.CBufRet.f32 %9730, 1
  %9751 = fcmp fast olt float %2410, %9750
  br i1 %9751, label %9735, label %11582

; <label>:9752                                    ; preds = %9634
  %9753 = fcmp fast ole float %2292, 0x3F69A5C380000000
  %9754 = fcmp fast ole float %2293, 0x3F69A5C380000000
  %9755 = fcmp fast ole float %2294, 0x3F69A5C380000000
  %9756 = fmul fast float %2292, 0x4029D70A40000000
  %9757 = fmul fast float %2293, 0x4029D70A40000000
  %9758 = fmul fast float %2294, 0x4029D70A40000000
  %9759 = call float @dx.op.unary.f32(i32 23, float %2292)  ; Log(value)
  %9760 = call float @dx.op.unary.f32(i32 23, float %2293)  ; Log(value)
  %9761 = call float @dx.op.unary.f32(i32 23, float %2294)  ; Log(value)
  %9762 = fmul fast float %9759, 0x3FDAAAAAA0000000
  %9763 = fmul fast float %9760, 0x3FDAAAAAA0000000
  %9764 = fmul fast float %9761, 0x3FDAAAAAA0000000
  %9765 = call float @dx.op.unary.f32(i32 21, float %9762)  ; Exp(value)
  %9766 = call float @dx.op.unary.f32(i32 21, float %9763)  ; Exp(value)
  %9767 = call float @dx.op.unary.f32(i32 21, float %9764)  ; Exp(value)
  %9768 = fmul fast float %9765, 0x3FF0E147A0000000
  %9769 = fmul fast float %9766, 0x3FF0E147A0000000
  %9770 = fmul fast float %9767, 0x3FF0E147A0000000
  %9771 = fadd fast float %9768, 0xBFAC28F5C0000000
  %9772 = fadd fast float %9769, 0xBFAC28F5C0000000
  %9773 = fadd fast float %9770, 0xBFAC28F5C0000000
  %9774 = select i1 %9753, float %9756, float %9771
  %9775 = select i1 %9754, float %9757, float %9772
  %9776 = select i1 %9755, float %9758, float %9773
  %9777 = call float @dx.op.dot3.f32(i32 55, float %9774, float %9775, float %9776, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9778 = fcmp fast olt float %9777, 0x3FA0101020000000
  br i1 %9778, label %9787, label %9779

; <label>:9779                                    ; preds = %9752
  %9780 = fcmp fast ogt float %9777, 0x3FEEFEFF00000000
  br i1 %9780, label %9787, label %9781

; <label>:9781                                    ; preds = %9779
  %9782 = fcmp fast ogt float %9777, 0x3FEF5F5F60000000
  br i1 %9782, label %9787, label %9783

; <label>:9783                                    ; preds = %9781
  %9784 = fadd fast float %9777, %9777
  %9785 = fcmp fast ogt float %9784, 2.550000e+02
  br i1 %9785, label %9786, label %9787

; <label>:9786                                    ; preds = %9783
  br label %9787

; <label>:9787                                    ; preds = %9786, %9783, %9781, %9779, %9752
  %9788 = phi float [ 1.000000e+00, %9786 ], [ %9638, %9783 ], [ 1.000000e+00, %9752 ], [ 0x3FBD1D1D20000000, %9779 ], [ 0.000000e+00, %9781 ]
  %9789 = phi float [ 0.000000e+00, %9786 ], [ %9636, %9783 ], [ 0x3FE6666660000000, %9752 ], [ 1.000000e+00, %9779 ], [ 0.000000e+00, %9781 ]
  %9790 = phi float [ 1.000000e+00, %9786 ], [ %9637, %9783 ], [ 0.000000e+00, %9752 ], [ 0x3FDD5D5D60000000, %9779 ], [ 1.000000e+00, %9781 ]
  %9791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %9792 = extractvalue %dx.types.CBufRet.f32 %9791, 3
  %9793 = fmul fast float %9792, 8.000000e+00
  %9794 = fmul fast float %99, 5.000000e+02
  %9795 = fmul fast float %9794, %9492
  %9796 = fsub fast float %9795, %9793
  %9797 = call float @dx.op.unary.f32(i32 13, float %9796)  ; Sin(value)
  %9798 = fmul fast float %9797, %9797
  %9799 = fmul fast float %9798, 2.000000e+00
  %9800 = fadd fast float %9799, -1.000000e+00
  %9801 = call float @dx.op.unary.f32(i32 7, float %9800)  ; Saturate(value)
  %9802 = fsub fast float %9788, %9638
  %9803 = fsub fast float %9789, %9636
  %9804 = fsub fast float %9790, %9637
  %9805 = fmul fast float %9801, %9802
  %9806 = fmul fast float %9801, %9803
  %9807 = fmul fast float %9801, %9804
  %9808 = fadd fast float %9805, %9638
  %9809 = fadd fast float %9806, %9636
  %9810 = fadd fast float %9807, %9637
  br label %9936

; <label>:9811                                    ; preds = %9634
  %9812 = fcmp fast olt float %87, 1.280000e+02
  br i1 %9812, label %9813, label %9827

; <label>:9813                                    ; preds = %11600, %11598, %11596, %11594, %11592, %11590, %11588, %11586, %9827, %9811
  %9814 = phi i32 [ 0, %9811 ], [ 1, %9827 ], [ 2, %11586 ], [ 3, %11588 ], [ 4, %11590 ], [ 5, %11592 ], [ 6, %11594 ], [ 7, %11596 ], [ 8, %11598 ], [ 9, %11600 ]
  %9815 = mul i32 %9814, 3
  %9816 = add i32 0, %9815
  %9817 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9816
  %9818 = load float, float* %9817, align 4
  %9819 = mul i32 %9814, 3
  %9820 = add i32 1, %9819
  %9821 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9820
  %9822 = load float, float* %9821, align 4
  %9823 = mul i32 %9814, 3
  %9824 = add i32 2, %9823
  %9825 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9824
  %9826 = load float, float* %9825, align 4
  br label %9936

; <label>:9827                                    ; preds = %9811
  %9828 = fcmp fast olt float %87, 2.560000e+02
  br i1 %9828, label %9813, label %11586

; <label>:9829                                    ; preds = %9634
  br label %9936

; <label>:9830                                    ; preds = %9634
  %9831 = bitcast i32 %8652 to float
  %9832 = fcmp fast ogt float %9831, 0.000000e+00
  %9833 = select i1 %9832, float 0.000000e+00, float 1.000000e+00
  %9834 = fcmp fast olt float %9831, 1.000000e+00
  %9835 = select i1 %9834, float 1.000000e+00, float 0.000000e+00
  %9836 = select i1 %9834, float %9833, float 0.000000e+00
  %9837 = fmul fast float %9835, %2410
  %9838 = fmul fast float %9836, %2410
  br label %9936

; <label>:9839                                    ; preds = %9634
  %9840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9841 = extractvalue %dx.types.CBufRet.f32 %9840, 0
  %9842 = extractvalue %dx.types.CBufRet.f32 %9840, 2
  %9843 = extractvalue %dx.types.CBufRet.f32 %9840, 3
  %9844 = fcmp fast olt float %8673, %9841
  br i1 %9844, label %9845, label %9859

; <label>:9845                                    ; preds = %11604, %11602, %9859, %9839
  %9846 = phi i32 [ 0, %9839 ], [ 1, %9859 ], [ 2, %11602 ], [ 3, %11604 ]
  %9847 = mul i32 %9846, 3
  %9848 = add i32 0, %9847
  %9849 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9848
  %9850 = load float, float* %9849, align 4
  %9851 = mul i32 %9846, 3
  %9852 = add i32 1, %9851
  %9853 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9852
  %9854 = load float, float* %9853, align 4
  %9855 = mul i32 %9846, 3
  %9856 = add i32 2, %9855
  %9857 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9856
  %9858 = load float, float* %9857, align 4
  br label %9936

; <label>:9859                                    ; preds = %9839
  %9860 = extractvalue %dx.types.CBufRet.f32 %9840, 1
  %9861 = fcmp fast olt float %8673, %9860
  br i1 %9861, label %9845, label %11602

; <label>:9862                                    ; preds = %9634
  %9863 = fadd fast float %8673, -5.000000e-01
  %9864 = fmul fast float %9863, 2.000000e+00
  %9865 = call float @dx.op.unary.f32(i32 7, float %9864)  ; Saturate(value)
  br label %9936

; <label>:9866                                    ; preds = %9634
  br label %9936

; <label>:9867                                    ; preds = %9634
  br label %9936

; <label>:9868                                    ; preds = %9634
  br label %9936

; <label>:9869                                    ; preds = %9634
  br label %9936

; <label>:9870                                    ; preds = %9634
  br label %9936

; <label>:9871                                    ; preds = %9634
  %9872 = bitcast i32 %8652 to float
  br label %9936

; <label>:9873                                    ; preds = %9634
  %9874 = bitcast i32 %8652 to float
  br label %9936

; <label>:9875                                    ; preds = %9634
  %9876 = and i32 %8652, 65535
  %9877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9876)  ; LegacyF16ToF32(value)
  %9878 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9879 = fptosi float %9878 to i32
  %9880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9881 = extractvalue %dx.types.CBufRet.f32 %9880, 0
  %9882 = extractvalue %dx.types.CBufRet.f32 %9880, 1
  %9883 = extractvalue %dx.types.CBufRet.f32 %9880, 2
  %9884 = fadd fast float %9881, %153
  %9885 = fadd fast float %9882, %154
  %9886 = fadd fast float %9883, %155
  %9887 = fptosi float %9884 to i32
  %9888 = fptosi float %9885 to i32
  %9889 = fptosi float %9886 to i32
  %9890 = xor i32 %9887, %9888
  %9891 = lshr i32 %9890, 1
  %9892 = and i32 %9891, 1
  %9893 = lshr i32 %9889, 1
  %9894 = and i32 %9893, 1
  %9895 = xor i32 %9894, 1
  %9896 = icmp ne i32 %9892, %9895
  switch i32 %9879, label %9936 [
    i32 -1, label %9897
    i32 -2, label %9898
    i32 -3, label %9900
    i32 -4, label %9902
    i32 -5, label %9904
    i32 -6, label %9905
    i32 -7, label %9906
  ]

; <label>:9897                                    ; preds = %9875
  br label %9936

; <label>:9898                                    ; preds = %9875
  %9899 = select i1 %9896, float 1.000000e+00, float 0.000000e+00
  br label %9936

; <label>:9900                                    ; preds = %9875
  %9901 = select i1 %9896, float 1.000000e+00, float 0.000000e+00
  br label %9936

; <label>:9902                                    ; preds = %9875
  %9903 = select i1 %9896, float 1.000000e+00, float 0.000000e+00
  br label %9936

; <label>:9904                                    ; preds = %9875
  br label %9936

; <label>:9905                                    ; preds = %9875
  br label %9936

; <label>:9906                                    ; preds = %9875
  %9907 = lshr i32 %8652, 16
  %9908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9907)  ; LegacyF16ToF32(value)
  %9909 = fmul fast float %9908, 0x3FD5555560000000
  %9910 = fsub fast float 1.000000e+00, %9909
  %9911 = fmul fast float %9909, %9877
  %9912 = fmul fast float %9910, %9877
  br label %9936

; <label>:9913                                    ; preds = %9634
  %9914 = bitcast i32 %8652 to float
  br label %9936

; <label>:9915                                    ; preds = %9634
  %9916 = bitcast i32 %8652 to float
  br label %9936

; <label>:9917                                    ; preds = %9634
  %9918 = bitcast i32 %8652 to float
  br label %9936

; <label>:9919                                    ; preds = %9634
  %9920 = and i32 %8652, 1023
  %9921 = uitofp i32 %9920 to float
  %9922 = lshr i32 %8652, 10
  %9923 = and i32 %9922, 1023
  %9924 = uitofp i32 %9923 to float
  %9925 = lshr i32 %8652, 20
  %9926 = and i32 %9925, 1023
  %9927 = uitofp i32 %9926 to float
  %9928 = fmul fast float %9921, 0x3F60040100000000
  %9929 = fmul fast float %9924, 0x3F60040100000000
  %9930 = fmul fast float %9927, 0x3F60040100000000
  %9931 = fadd fast float %9928, -1.000000e+00
  %9932 = fadd fast float %9929, -1.000000e+00
  %9933 = fadd fast float %9930, -1.000000e+00
  br label %9936

; <label>:9934                                    ; preds = %9634
  br label %9936

; <label>:9935                                    ; preds = %9634
  br label %9936

; <label>:9936                                    ; preds = %11604, %11600, %11584, %9935, %9934, %9919, %9917, %9915, %9913, %9906, %9905, %9904, %9902, %9900, %9898, %9897, %9875, %9873, %9871, %9870, %9869, %9868, %9867, %9866, %9862, %9845, %9830, %9829, %9813, %9787, %9735, %9728, %9727, %9726, %9725, %9703, %9702, %9701, %9689, %9677, %9665, %9664, %9663, %9662, %9661, %9652, %9640, %9639, %9634
  %9937 = phi float [ %9638, %9634 ], [ 0.000000e+00, %9934 ], [ %9931, %9919 ], [ %9918, %9917 ], [ %9916, %9915 ], [ %9914, %9913 ], [ %9638, %9875 ], [ 0.000000e+00, %9906 ], [ %9877, %9905 ], [ %9877, %9904 ], [ 0.000000e+00, %9902 ], [ %9901, %9900 ], [ %9899, %9898 ], [ %9877, %9897 ], [ %9874, %9873 ], [ %9872, %9871 ], [ 0.000000e+00, %9870 ], [ 0.000000e+00, %9869 ], [ 0.000000e+00, %9868 ], [ %153, %9866 ], [ %9865, %9862 ], [ %9837, %9830 ], [ 0.000000e+00, %9829 ], [ %9808, %9787 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9727 ], [ 0.000000e+00, %9726 ], [ 1.000000e+00, %9725 ], [ 0.000000e+00, %9935 ], [ 1.000000e+00, %9702 ], [ 5.000000e-01, %9701 ], [ %9698, %9689 ], [ %9686, %9677 ], [ %9674, %9665 ], [ %2413, %9664 ], [ %2411, %9663 ], [ %2301, %9662 ], [ %2238, %9661 ], [ %9660, %9652 ], [ %9649, %9640 ], [ %2292, %9639 ], [ %9740, %9735 ], [ %9818, %9813 ], [ %9850, %9845 ], [ 0.000000e+00, %9867 ], [ 1.000000e+00, %11584 ], [ 1.000000e+00, %11600 ], [ 1.000000e+00, %11604 ], [ %9722, %9703 ]
  %9938 = phi float [ %9636, %9634 ], [ 0.000000e+00, %9934 ], [ %9932, %9919 ], [ %9918, %9917 ], [ %9916, %9915 ], [ %9914, %9913 ], [ %9636, %9875 ], [ %9911, %9906 ], [ %9877, %9905 ], [ %9877, %9904 ], [ 0.000000e+00, %9902 ], [ 0.000000e+00, %9900 ], [ 0.000000e+00, %9898 ], [ %9877, %9897 ], [ %9874, %9873 ], [ %9872, %9871 ], [ 0.000000e+00, %9870 ], [ 0.000000e+00, %9869 ], [ 0.000000e+00, %9868 ], [ %154, %9866 ], [ %9865, %9862 ], [ %2410, %9830 ], [ 0.000000e+00, %9829 ], [ %9809, %9787 ], [ 1.000000e+00, %9728 ], [ 1.000000e+00, %9727 ], [ 1.000000e+00, %9726 ], [ 0x3FE6666660000000, %9725 ], [ 0.000000e+00, %9935 ], [ 1.000000e+00, %9702 ], [ 5.000000e-01, %9701 ], [ %9699, %9689 ], [ %9687, %9677 ], [ %9675, %9665 ], [ %2413, %9664 ], [ %2411, %9663 ], [ %2302, %9662 ], [ %2239, %9661 ], [ %9660, %9652 ], [ %9650, %9640 ], [ %2293, %9639 ], [ %9744, %9735 ], [ %9822, %9813 ], [ %9854, %9845 ], [ 0.000000e+00, %9867 ], [ 0.000000e+00, %11584 ], [ 0.000000e+00, %11600 ], [ 0.000000e+00, %11604 ], [ 0.000000e+00, %9703 ]
  %9939 = phi float [ %9637, %9634 ], [ 0.000000e+00, %9934 ], [ %9933, %9919 ], [ %9918, %9917 ], [ %9916, %9915 ], [ %9914, %9913 ], [ %9637, %9875 ], [ %9912, %9906 ], [ %9877, %9905 ], [ 0.000000e+00, %9904 ], [ %9903, %9902 ], [ 0.000000e+00, %9900 ], [ %9899, %9898 ], [ %9877, %9897 ], [ %9874, %9873 ], [ %9872, %9871 ], [ 0.000000e+00, %9870 ], [ 0.000000e+00, %9869 ], [ 0.000000e+00, %9868 ], [ %155, %9866 ], [ %9865, %9862 ], [ %9838, %9830 ], [ 0.000000e+00, %9829 ], [ %9810, %9787 ], [ 0.000000e+00, %9728 ], [ 0.000000e+00, %9727 ], [ 0.000000e+00, %9726 ], [ 0.000000e+00, %9725 ], [ 0.000000e+00, %9935 ], [ 1.000000e+00, %9702 ], [ 5.000000e-01, %9701 ], [ %9700, %9689 ], [ %9688, %9677 ], [ %9676, %9665 ], [ %2413, %9664 ], [ %2411, %9663 ], [ %2303, %9662 ], [ %2240, %9661 ], [ %9660, %9652 ], [ %9651, %9640 ], [ %2294, %9639 ], [ %9748, %9735 ], [ %9826, %9813 ], [ %9858, %9845 ], [ 1.000000e+00, %9867 ], [ 0.000000e+00, %11584 ], [ 0.000000e+00, %11600 ], [ 0.000000e+00, %11604 ], [ %9724, %9703 ]
  %9940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9941 = extractvalue %dx.types.CBufRet.f32 %9940, 3
  %9942 = fsub fast float %9937, %9638
  %9943 = fsub fast float %9938, %9636
  %9944 = fsub fast float %9939, %9637
  %9945 = fmul fast float %9941, %9942
  %9946 = fmul fast float %9941, %9943
  %9947 = fmul fast float %9941, %9944
  %9948 = fadd fast float %9945, %9638
  %9949 = fadd fast float %9946, %9636
  %9950 = fadd fast float %9947, %9637
  br label %9951

; <label>:9951                                    ; preds = %9936, %9634
  %9952 = phi float [ %9948, %9936 ], [ %9638, %9634 ]
  %9953 = phi float [ %9949, %9936 ], [ %9636, %9634 ]
  %9954 = phi float [ %9950, %9936 ], [ %9637, %9634 ]
  %9955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9956 = extractvalue %dx.types.CBufRet.f32 %9955, 0
  %9957 = bitcast float %9956 to i32
  %9958 = lshr i32 %9957, 8
  %9959 = and i32 %9958, 255
  %9960 = uitofp i32 %9959 to float
  %9961 = fptoui float %9960 to i32
  switch i32 %9961, label %10198 [
    i32 1, label %9962
    i32 2, label %9968
    i32 3, label %9974
    i32 4, label %9980
    i32 5, label %9986
    i32 6, label %9992
    i32 7, label %9998
    i32 8, label %10004
    i32 9, label %10010
    i32 10, label %10012
    i32 11, label %10033
    i32 12, label %10054
    i32 13, label %10066
    i32 14, label %10081
    i32 15, label %10086
    i32 16, label %10088
    i32 17, label %10090
    i32 18, label %10092
    i32 19, label %10094
    i32 20, label %10105
    i32 21, label %10116
    i32 22, label %10128
    i32 23, label %10162
    i32 24, label %10177
    i32 25, label %10192
    i32 26, label %10194
    i32 27, label %10196
  ]

; <label>:9962                                    ; preds = %9951
  %9963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9964 = extractvalue %dx.types.CBufRet.f32 %9963, 0
  %9965 = fmul fast float %9964, %8067
  %9966 = fmul fast float %9964, %8068
  %9967 = fmul fast float %9964, %8069
  br label %10198

; <label>:9968                                    ; preds = %9951
  %9969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9970 = extractvalue %dx.types.CBufRet.f32 %9969, 0
  %9971 = fmul fast float %9970, %8064
  %9972 = fmul fast float %9970, %8065
  %9973 = fmul fast float %9970, %8066
  br label %10198

; <label>:9974                                    ; preds = %9951
  %9975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9976 = extractvalue %dx.types.CBufRet.f32 %9975, 0
  %9977 = fmul fast float %9976, %2238
  %9978 = fmul fast float %9976, %2239
  %9979 = fmul fast float %9976, %2240
  br label %10198

; <label>:9980                                    ; preds = %9951
  %9981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9982 = extractvalue %dx.types.CBufRet.f32 %9981, 0
  %9983 = fmul fast float %9982, %8061
  %9984 = fmul fast float %9982, %8062
  %9985 = fmul fast float %9982, %8063
  br label %10198

; <label>:9986                                    ; preds = %9951
  %9987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9988 = extractvalue %dx.types.CBufRet.f32 %9987, 0
  %9989 = fmul fast float %9988, %8058
  %9990 = fmul fast float %9988, %8059
  %9991 = fmul fast float %9988, %8060
  br label %10198

; <label>:9992                                    ; preds = %9951
  %9993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9994 = extractvalue %dx.types.CBufRet.f32 %9993, 0
  %9995 = fmul fast float %9994, %5357
  %9996 = fmul fast float %9994, %5358
  %9997 = fmul fast float %9994, %5359
  br label %10198

; <label>:9998                                    ; preds = %9951
  %9999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10000 = extractvalue %dx.types.CBufRet.f32 %9999, 0
  %10001 = fmul fast float %10000, %5357
  %10002 = fmul fast float %10000, %5358
  %10003 = fmul fast float %10000, %5359
  br label %10198

; <label>:10004                                   ; preds = %9951
  %10005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10006 = extractvalue %dx.types.CBufRet.f32 %10005, 0
  %10007 = fmul fast float %5360, %10006
  %10008 = fmul fast float %5361, %10006
  %10009 = fmul fast float %5362, %10006
  br label %10198

; <label>:10010                                   ; preds = %9951
  %10011 = bitcast i32 %8652 to float
  br label %10198

; <label>:10012                                   ; preds = %9951
  %10013 = and i32 %8652, 1023
  %10014 = uitofp i32 %10013 to float
  %10015 = lshr i32 %8652, 10
  %10016 = and i32 %10015, 1023
  %10017 = uitofp i32 %10016 to float
  %10018 = lshr i32 %8652, 20
  %10019 = and i32 %10018, 1023
  %10020 = uitofp i32 %10019 to float
  %10021 = fmul fast float %10014, 0x3F60040100000000
  %10022 = fmul fast float %10017, 0x3F60040100000000
  %10023 = fmul fast float %10020, 0x3F60040100000000
  %10024 = fadd fast float %10021, -1.000000e+00
  %10025 = fadd fast float %10022, -1.000000e+00
  %10026 = fadd fast float %10023, -1.000000e+00
  %10027 = fcmp fast ogt float %10024, 0.000000e+00
  %10028 = select i1 %10027, float 1.000000e+00, float 0.000000e+00
  %10029 = fcmp fast ogt float %10025, 0.000000e+00
  %10030 = select i1 %10029, float 1.000000e+00, float 0.000000e+00
  %10031 = fcmp fast ogt float %10026, 0.000000e+00
  %10032 = select i1 %10031, float 1.000000e+00, float 0.000000e+00
  br label %10198

; <label>:10033                                   ; preds = %9951
  %10034 = and i32 %8652, 1023
  %10035 = uitofp i32 %10034 to float
  %10036 = lshr i32 %8652, 10
  %10037 = and i32 %10036, 1023
  %10038 = uitofp i32 %10037 to float
  %10039 = lshr i32 %8652, 20
  %10040 = and i32 %10039, 1023
  %10041 = uitofp i32 %10040 to float
  %10042 = fmul fast float %10035, 0x3F60040100000000
  %10043 = fmul fast float %10038, 0x3F60040100000000
  %10044 = fmul fast float %10041, 0x3F60040100000000
  %10045 = fadd fast float %10042, -1.000000e+00
  %10046 = fadd fast float %10043, -1.000000e+00
  %10047 = fadd fast float %10044, -1.000000e+00
  %10048 = fmul fast float %10047, %10046
  %10049 = fsub fast float %10047, %10048
  %10050 = fmul fast float %10046, %10045
  %10051 = fmul fast float %10049, %10045
  %10052 = fsub fast float %10046, %10050
  %10053 = fsub fast float %10049, %10051
  br label %10198

; <label>:10054                                   ; preds = %9951
  %10055 = and i32 %8652, 255
  %10056 = uitofp i32 %10055 to float
  %10057 = fmul fast float %10056, 0x3F70101020000000
  %10058 = lshr i32 %8652, 8
  %10059 = and i32 %10058, 255
  %10060 = uitofp i32 %10059 to float
  %10061 = fmul fast float %10060, 0x3F70101020000000
  %10062 = lshr i32 %8652, 16
  %10063 = and i32 %10062, 255
  %10064 = uitofp i32 %10063 to float
  %10065 = fmul fast float %10064, 0x3F70101020000000
  br label %10198

; <label>:10066                                   ; preds = %9951
  %10067 = and i32 %8652, 1023
  %10068 = uitofp i32 %10067 to float
  %10069 = lshr i32 %8652, 10
  %10070 = and i32 %10069, 1023
  %10071 = uitofp i32 %10070 to float
  %10072 = lshr i32 %8652, 20
  %10073 = and i32 %10072, 1023
  %10074 = uitofp i32 %10073 to float
  %10075 = fmul fast float %10068, 0x3F60040100000000
  %10076 = fmul fast float %10071, 0x3F60040100000000
  %10077 = fmul fast float %10074, 0x3F60040100000000
  %10078 = fadd fast float %10075, -1.000000e+00
  %10079 = fadd fast float %10076, -1.000000e+00
  %10080 = fadd fast float %10077, -1.000000e+00
  br label %10198

; <label>:10081                                   ; preds = %9951
  %10082 = icmp ne i32 %8652, 0
  %10083 = select i1 %10082, float 1.000000e+00, float %9952
  %10084 = select i1 %10082, float 0.000000e+00, float %9953
  %10085 = select i1 %10082, float 0.000000e+00, float %9954
  br label %10198

; <label>:10086                                   ; preds = %9951
  %10087 = bitcast i32 %8652 to float
  br label %10198

; <label>:10088                                   ; preds = %9951
  %10089 = bitcast i32 %8652 to float
  br label %10198

; <label>:10090                                   ; preds = %9951
  %10091 = bitcast i32 %8652 to float
  br label %10198

; <label>:10092                                   ; preds = %9951
  %10093 = bitcast i32 %8652 to float
  br label %10198

; <label>:10094                                   ; preds = %9951
  %10095 = and i32 %8652, 65535
  %10096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10095)  ; LegacyF16ToF32(value)
  %10097 = lshr i32 %8652, 16
  %10098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10097)  ; LegacyF16ToF32(value)
  %10099 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10101 = extractvalue %dx.types.CBufRet.f32 %10100, 0
  %10102 = fmul fast float %10101, %10096
  %10103 = fmul fast float %10101, %10098
  %10104 = fmul fast float %10101, %10099
  br label %10198

; <label>:10105                                   ; preds = %9951
  %10106 = and i32 %8652, 65535
  %10107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10106)  ; LegacyF16ToF32(value)
  %10108 = lshr i32 %8652, 16
  %10109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10108)  ; LegacyF16ToF32(value)
  %10110 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10112 = extractvalue %dx.types.CBufRet.f32 %10111, 0
  %10113 = fmul fast float %10112, %10107
  %10114 = fmul fast float %10112, %10109
  %10115 = fmul fast float %10112, %10110
  br label %10198

; <label>:10116                                   ; preds = %9951
  %10117 = and i32 %8652, 1023
  %10118 = uitofp i32 %10117 to float
  %10119 = lshr i32 %8652, 10
  %10120 = and i32 %10119, 1023
  %10121 = uitofp i32 %10120 to float
  %10122 = lshr i32 %8652, 20
  %10123 = and i32 %10122, 1023
  %10124 = uitofp i32 %10123 to float
  %10125 = fmul fast float %10118, 0x3F50040100000000
  %10126 = fmul fast float %10121, 0x3F50040100000000
  %10127 = fmul fast float %10124, 0x3F50040100000000
  br label %10198

; <label>:10128                                   ; preds = %9951
  %10129 = and i32 %8652, 1023
  %10130 = uitofp i32 %10129 to float
  %10131 = lshr i32 %8652, 10
  %10132 = and i32 %10131, 1023
  %10133 = uitofp i32 %10132 to float
  %10134 = lshr i32 %8652, 20
  %10135 = and i32 %10134, 1023
  %10136 = uitofp i32 %10135 to float
  %10137 = fmul fast float %10130, 0x3F60040100000000
  %10138 = fmul fast float %10133, 0x3F60040100000000
  %10139 = fmul fast float %10136, 0x3F60040100000000
  %10140 = fadd fast float %10137, -1.000000e+00
  %10141 = fadd fast float %10138, -1.000000e+00
  %10142 = fadd fast float %10139, -1.000000e+00
  %10143 = call float @dx.op.binary.f32(i32 35, float %10141, float %10142)  ; FMax(a,b)
  %10144 = call float @dx.op.binary.f32(i32 35, float %10140, float %10143)  ; FMax(a,b)
  %10145 = fmul fast float %10144, 2.000000e+00
  %10146 = call float @dx.op.unary.f32(i32 7, float %10145)  ; Saturate(value)
  %10147 = fmul fast float %10130, 0x3F94050140000000
  %10148 = fadd fast float %10147, -1.000000e+01
  %10149 = fmul fast float %10133, 0x3F94050140000000
  %10150 = fadd fast float %10149, -1.000000e+01
  %10151 = fmul fast float %10136, 0x3F94050140000000
  %10152 = fadd fast float %10151, -1.000000e+01
  %10153 = fsub fast float %10148, %9952
  %10154 = fsub fast float %10150, %9953
  %10155 = fsub fast float %10152, %9954
  %10156 = fmul fast float %10146, %10153
  %10157 = fmul fast float %10146, %10154
  %10158 = fmul fast float %10146, %10155
  %10159 = fadd fast float %10156, %9952
  %10160 = fadd fast float %10157, %9953
  %10161 = fadd fast float %10158, %9954
  br label %10198

; <label>:10162                                   ; preds = %9951
  %10163 = and i32 %8652, 1023
  %10164 = uitofp i32 %10163 to float
  %10165 = lshr i32 %8652, 10
  %10166 = and i32 %10165, 1023
  %10167 = uitofp i32 %10166 to float
  %10168 = lshr i32 %8652, 20
  %10169 = and i32 %10168, 1023
  %10170 = uitofp i32 %10169 to float
  %10171 = fmul fast float %10164, 0x3F60040100000000
  %10172 = fmul fast float %10167, 0x3F60040100000000
  %10173 = fmul fast float %10170, 0x3F60040100000000
  %10174 = fadd fast float %10171, -1.000000e+00
  %10175 = fadd fast float %10172, -1.000000e+00
  %10176 = fadd fast float %10173, -1.000000e+00
  br label %10198

; <label>:10177                                   ; preds = %9951
  %10178 = and i32 %8652, 1023
  %10179 = uitofp i32 %10178 to float
  %10180 = lshr i32 %8652, 10
  %10181 = and i32 %10180, 1023
  %10182 = uitofp i32 %10181 to float
  %10183 = lshr i32 %8652, 20
  %10184 = and i32 %10183, 1023
  %10185 = uitofp i32 %10184 to float
  %10186 = fmul fast float %10179, 0x3F60040100000000
  %10187 = fmul fast float %10182, 0x3F60040100000000
  %10188 = fmul fast float %10185, 0x3F60040100000000
  %10189 = fadd fast float %10186, -1.000000e+00
  %10190 = fadd fast float %10187, -1.000000e+00
  %10191 = fadd fast float %10188, -1.000000e+00
  br label %10198

; <label>:10192                                   ; preds = %9951
  %10193 = bitcast i32 %8652 to float
  br label %10198

; <label>:10194                                   ; preds = %9951
  %10195 = bitcast i32 %8652 to float
  br label %10198

; <label>:10196                                   ; preds = %9951
  %10197 = bitcast i32 %8652 to float
  br label %10198

; <label>:10198                                   ; preds = %10196, %10194, %10192, %10177, %10162, %10128, %10116, %10105, %10094, %10092, %10090, %10088, %10086, %10081, %10066, %10054, %10033, %10012, %10010, %10004, %9998, %9992, %9986, %9980, %9974, %9968, %9962, %9951
  %10199 = phi float [ %9952, %9951 ], [ %10197, %10196 ], [ %10195, %10194 ], [ %10193, %10192 ], [ %10189, %10177 ], [ %10174, %10162 ], [ %10159, %10128 ], [ %10125, %10116 ], [ %10113, %10105 ], [ %10102, %10094 ], [ %10093, %10092 ], [ %10091, %10090 ], [ %10089, %10088 ], [ %10087, %10086 ], [ %10078, %10066 ], [ %10057, %10054 ], [ %10045, %10033 ], [ %10028, %10012 ], [ %10011, %10010 ], [ %10007, %10004 ], [ %10001, %9998 ], [ %9995, %9992 ], [ %9989, %9986 ], [ %9983, %9980 ], [ %9977, %9974 ], [ %9971, %9968 ], [ %9965, %9962 ], [ %10083, %10081 ]
  %10200 = phi float [ %9953, %9951 ], [ %10197, %10196 ], [ %10195, %10194 ], [ %10193, %10192 ], [ %10190, %10177 ], [ %10175, %10162 ], [ %10160, %10128 ], [ %10126, %10116 ], [ %10114, %10105 ], [ %10103, %10094 ], [ %10093, %10092 ], [ %10091, %10090 ], [ %10089, %10088 ], [ %10087, %10086 ], [ %10079, %10066 ], [ %10061, %10054 ], [ %10052, %10033 ], [ %10030, %10012 ], [ %10011, %10010 ], [ %10008, %10004 ], [ %10002, %9998 ], [ %9996, %9992 ], [ %9990, %9986 ], [ %9984, %9980 ], [ %9978, %9974 ], [ %9972, %9968 ], [ %9966, %9962 ], [ %10084, %10081 ]
  %10201 = phi float [ %9954, %9951 ], [ %10197, %10196 ], [ %10195, %10194 ], [ %10193, %10192 ], [ %10191, %10177 ], [ %10176, %10162 ], [ %10161, %10128 ], [ %10127, %10116 ], [ %10115, %10105 ], [ %10104, %10094 ], [ %10093, %10092 ], [ %10091, %10090 ], [ %10089, %10088 ], [ %10087, %10086 ], [ %10080, %10066 ], [ %10065, %10054 ], [ %10053, %10033 ], [ %10032, %10012 ], [ %10011, %10010 ], [ %10009, %10004 ], [ %10003, %9998 ], [ %9997, %9992 ], [ %9991, %9986 ], [ %9985, %9980 ], [ %9979, %9974 ], [ %9973, %9968 ], [ %9967, %9962 ], [ %10085, %10081 ]
  %10202 = extractvalue %dx.types.CBufRet.f32 %9955, 3
  %10203 = fsub fast float %10199, %9952
  %10204 = fsub fast float %10200, %9953
  %10205 = fsub fast float %10201, %9954
  %10206 = fmul fast float %10202, %10203
  %10207 = fmul fast float %10202, %10204
  %10208 = fmul fast float %10202, %10205
  %10209 = fadd fast float %10206, %9952
  %10210 = fadd fast float %10207, %9953
  %10211 = fadd fast float %10208, %9954
  %10212 = lshr i32 %9957, 16
  %10213 = and i32 %10212, 255
  %10214 = uitofp i32 %10213 to float
  %10215 = fptoui float %10214 to i32
  switch i32 %10215, label %10262 [
    i32 16, label %10247
    i32 12, label %10246
    i32 3, label %10216
    i32 4, label %10217
    i32 15, label %10218
    i32 5, label %10227
    i32 6, label %10236
    i32 7, label %10245
    i32 11, label %10246
  ]

; <label>:10216                                   ; preds = %10198
  br label %10262

; <label>:10217                                   ; preds = %10198
  br label %10262

; <label>:10218                                   ; preds = %10198
  %10219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %10220 = extractvalue %dx.types.CBufRet.f32 %10219, 0
  %10221 = fadd fast float %10220, %10209
  %10222 = fadd fast float %10220, %10210
  %10223 = fadd fast float %10220, %10211
  %10224 = call float @dx.op.unary.f32(i32 7, float %10221)  ; Saturate(value)
  %10225 = call float @dx.op.unary.f32(i32 7, float %10222)  ; Saturate(value)
  %10226 = call float @dx.op.unary.f32(i32 7, float %10223)  ; Saturate(value)
  br label %10262

; <label>:10227                                   ; preds = %10198
  %10228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10229 = extractvalue %dx.types.CBufRet.f32 %10228, 0
  %10230 = bitcast float %10229 to i32
  %10231 = and i32 %10230, 2130706432
  %10232 = icmp eq i32 %10231, 0
  %10233 = select i1 %10232, float 0.000000e+00, float %10209
  %10234 = select i1 %10232, float 0.000000e+00, float %10210
  %10235 = select i1 %10232, float 0.000000e+00, float %10211
  br label %10262

; <label>:10236                                   ; preds = %10198
  %10237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10238 = extractvalue %dx.types.CBufRet.f32 %10237, 0
  %10239 = bitcast float %10238 to i32
  %10240 = and i32 %10239, 2130706432
  %10241 = icmp eq i32 %10240, 0
  %10242 = select i1 %10241, float 0.000000e+00, float %10209
  %10243 = select i1 %10241, float 0.000000e+00, float %10210
  %10244 = select i1 %10241, float 0.000000e+00, float %10211
  br label %10262

; <label>:10245                                   ; preds = %10198
  br label %10262

; <label>:10246                                   ; preds = %10198, %10198
  br label %10262

; <label>:10247                                   ; preds = %10198
  %10248 = and i32 %8652, 1023
  %10249 = uitofp i32 %10248 to float
  %10250 = lshr i32 %8652, 10
  %10251 = and i32 %10250, 1023
  %10252 = uitofp i32 %10251 to float
  %10253 = lshr i32 %8652, 20
  %10254 = and i32 %10253, 1023
  %10255 = uitofp i32 %10254 to float
  %10256 = fmul fast float %10249, 0x3F60040100000000
  %10257 = fmul fast float %10252, 0x3F60040100000000
  %10258 = fmul fast float %10255, 0x3F60040100000000
  %10259 = fadd fast float %10256, -1.000000e+00
  %10260 = fadd fast float %10257, -1.000000e+00
  %10261 = fadd fast float %10258, -1.000000e+00
  br label %10262

; <label>:10262                                   ; preds = %10247, %10246, %10245, %10236, %10227, %10218, %10217, %10216, %10198
  %10263 = phi float [ 0.000000e+00, %10245 ], [ %10224, %10218 ], [ 0.000000e+00, %10217 ], [ %69, %10246 ], [ %10259, %10247 ], [ 0.000000e+00, %10216 ], [ %10233, %10227 ], [ %10242, %10236 ], [ %10209, %10198 ]
  %10264 = phi float [ 0.000000e+00, %10245 ], [ %10225, %10218 ], [ 0.000000e+00, %10217 ], [ %70, %10246 ], [ %10260, %10247 ], [ 0.000000e+00, %10216 ], [ %10234, %10227 ], [ %10243, %10236 ], [ %10210, %10198 ]
  %10265 = phi float [ 0.000000e+00, %10245 ], [ %10226, %10218 ], [ 1.000000e+00, %10217 ], [ %71, %10246 ], [ %10261, %10247 ], [ 0.000000e+00, %10216 ], [ %10235, %10227 ], [ %10244, %10236 ], [ %10211, %10198 ]
  %10266 = fsub fast float %10263, %10209
  %10267 = fsub fast float %10264, %10210
  %10268 = fsub fast float %10265, %10211
  %10269 = fmul fast float %10202, %10266
  %10270 = fmul fast float %10202, %10267
  %10271 = fmul fast float %10202, %10268
  %10272 = fadd fast float %10269, %10209
  %10273 = fadd fast float %10270, %10210
  %10274 = fadd fast float %10271, %10211
  %10275 = and i32 %8056, 255
  %10276 = uitofp i32 %10275 to float
  %10277 = fptoui float %10276 to i32
  %10278 = lshr i32 %8056, 8
  %10279 = and i32 %10278, 255
  %10280 = uitofp i32 %10279 to float
  %10281 = fptoui float %10280 to i32
  %10282 = lshr i32 %8056, 16
  %10283 = and i32 %10282, 255
  %10284 = uitofp i32 %10283 to float
  %10285 = fptoui float %10284 to i32
  %10286 = lshr i32 %8056, 24
  %10287 = uitofp i32 %10286 to float
  %10288 = fptoui float %10287 to i32
  %10289 = and i32 %8055, 255
  %10290 = uitofp i32 %10289 to float
  %10291 = fptoui float %10290 to i32
  %10292 = lshr i32 %8055, 16
  %10293 = and i32 %10292, 255
  %10294 = uitofp i32 %10293 to float
  %10295 = fptoui float %10294 to i32
  %10296 = lshr i32 %9957, 24
  %10297 = uitofp i32 %10296 to float
  %10298 = fptoui float %10297 to i32
  switch i32 %10298, label %10537 [
    i32 1, label %10299
    i32 2, label %10326
    i32 3, label %10351
    i32 4, label %10374
    i32 5, label %10397
    i32 6, label %10420
    i32 7, label %10444
    i32 8, label %10467
    i32 9, label %10490
    i32 12, label %10512
    i32 13, label %10513
    i32 14, label %10536
  ]

; <label>:10299                                   ; preds = %10262
  %10300 = add i32 %10277, %10291
  %10301 = add i32 %10300, %10288
  %10302 = add i32 %10301, %10281
  %10303 = add i32 %10302, %10285
  %10304 = uitofp i32 %10303 to float
  %10305 = fadd fast float %10304, -4.000000e+00
  %10306 = fmul fast float %10305, 0x3FB5555560000000
  %10307 = call float @dx.op.unary.f32(i32 7, float %10306)  ; Saturate(value)
  %10308 = icmp eq i32 %10303, 0
  %10309 = select i1 %10308, float 0.000000e+00, float %10307
  %10310 = icmp ult i32 %10303, 2
  %10311 = select i1 %10310, float 0.000000e+00, float %10307
  %10312 = add i32 %10303, -1
  %10313 = icmp ult i32 %10312, 2
  %10314 = select i1 %10313, float 1.000000e+00, float %10309
  %10315 = icmp ult i32 %10303, 4
  %10316 = select i1 %10315, float 0.000000e+00, float 1.000000e+00
  %10317 = and i32 %10303, -2
  %10318 = icmp eq i32 %10317, 2
  %10319 = icmp eq i32 %10303, 4
  %10320 = select i1 %10319, float 1.000000e+00, float %10316
  %10321 = or i1 %10319, %10318
  %10322 = select i1 %10321, float 1.000000e+00, float %10311
  %10323 = add i32 %10303, -3
  %10324 = icmp ult i32 %10323, 2
  %10325 = select i1 %10324, float 0.000000e+00, float %10314
  br label %10537

; <label>:10326                                   ; preds = %10262
  %10327 = add i32 %10281, %10277
  %10328 = add i32 %10327, %10285
  %10329 = uitofp i32 %10328 to float
  %10330 = fadd fast float %10329, -4.000000e+00
  %10331 = fmul fast float %10330, 0x3FB5555560000000
  %10332 = call float @dx.op.unary.f32(i32 7, float %10331)  ; Saturate(value)
  %10333 = icmp eq i32 %10328, 0
  %10334 = select i1 %10333, float 0.000000e+00, float %10332
  %10335 = icmp ult i32 %10328, 2
  %10336 = select i1 %10335, float 0.000000e+00, float %10332
  %10337 = add i32 %10328, -1
  %10338 = icmp ult i32 %10337, 2
  %10339 = select i1 %10338, float 1.000000e+00, float %10334
  %10340 = icmp ult i32 %10328, 4
  %10341 = select i1 %10340, float 0.000000e+00, float 1.000000e+00
  %10342 = and i32 %10328, -2
  %10343 = icmp eq i32 %10342, 2
  %10344 = icmp eq i32 %10328, 4
  %10345 = select i1 %10344, float 1.000000e+00, float %10341
  %10346 = or i1 %10344, %10343
  %10347 = select i1 %10346, float 1.000000e+00, float %10336
  %10348 = add i32 %10328, -3
  %10349 = icmp ult i32 %10348, 2
  %10350 = select i1 %10349, float 0.000000e+00, float %10339
  br label %10537

; <label>:10351                                   ; preds = %10262
  %10352 = uitofp i32 %10277 to float
  %10353 = fadd fast float %10352, -4.000000e+00
  %10354 = fmul fast float %10353, 0x3FB5555560000000
  %10355 = call float @dx.op.unary.f32(i32 7, float %10354)  ; Saturate(value)
  %10356 = icmp eq i32 %10277, 0
  %10357 = select i1 %10356, float 0.000000e+00, float %10355
  %10358 = icmp ult i32 %10277, 2
  %10359 = select i1 %10358, float 0.000000e+00, float %10355
  %10360 = add i32 %10277, -1
  %10361 = icmp ult i32 %10360, 2
  %10362 = select i1 %10361, float 1.000000e+00, float %10357
  %10363 = icmp ult i32 %10277, 4
  %10364 = select i1 %10363, float 0.000000e+00, float 1.000000e+00
  %10365 = and i32 %10277, -2
  %10366 = icmp eq i32 %10365, 2
  %10367 = icmp eq i32 %10277, 4
  %10368 = select i1 %10367, float 1.000000e+00, float %10364
  %10369 = or i1 %10367, %10366
  %10370 = select i1 %10369, float 1.000000e+00, float %10359
  %10371 = add i32 %10277, -3
  %10372 = icmp ult i32 %10371, 2
  %10373 = select i1 %10372, float 0.000000e+00, float %10362
  br label %10537

; <label>:10374                                   ; preds = %10262
  %10375 = uitofp i32 %10281 to float
  %10376 = fadd fast float %10375, -4.000000e+00
  %10377 = fmul fast float %10376, 0x3FB5555560000000
  %10378 = call float @dx.op.unary.f32(i32 7, float %10377)  ; Saturate(value)
  %10379 = icmp eq i32 %10281, 0
  %10380 = select i1 %10379, float 0.000000e+00, float %10378
  %10381 = icmp ult i32 %10281, 2
  %10382 = select i1 %10381, float 0.000000e+00, float %10378
  %10383 = add i32 %10281, -1
  %10384 = icmp ult i32 %10383, 2
  %10385 = select i1 %10384, float 1.000000e+00, float %10380
  %10386 = icmp ult i32 %10281, 4
  %10387 = select i1 %10386, float 0.000000e+00, float 1.000000e+00
  %10388 = and i32 %10281, -2
  %10389 = icmp eq i32 %10388, 2
  %10390 = icmp eq i32 %10281, 4
  %10391 = select i1 %10390, float 1.000000e+00, float %10387
  %10392 = or i1 %10390, %10389
  %10393 = select i1 %10392, float 1.000000e+00, float %10382
  %10394 = add i32 %10281, -3
  %10395 = icmp ult i32 %10394, 2
  %10396 = select i1 %10395, float 0.000000e+00, float %10385
  br label %10537

; <label>:10397                                   ; preds = %10262
  %10398 = uitofp i32 %10285 to float
  %10399 = fadd fast float %10398, -4.000000e+00
  %10400 = fmul fast float %10399, 0x3FB5555560000000
  %10401 = call float @dx.op.unary.f32(i32 7, float %10400)  ; Saturate(value)
  %10402 = icmp eq i32 %10285, 0
  %10403 = select i1 %10402, float 0.000000e+00, float %10401
  %10404 = icmp ult i32 %10285, 2
  %10405 = select i1 %10404, float 0.000000e+00, float %10401
  %10406 = add i32 %10285, -1
  %10407 = icmp ult i32 %10406, 2
  %10408 = select i1 %10407, float 1.000000e+00, float %10403
  %10409 = icmp ult i32 %10285, 4
  %10410 = select i1 %10409, float 0.000000e+00, float 1.000000e+00
  %10411 = and i32 %10285, -2
  %10412 = icmp eq i32 %10411, 2
  %10413 = icmp eq i32 %10285, 4
  %10414 = select i1 %10413, float 1.000000e+00, float %10410
  %10415 = or i1 %10413, %10412
  %10416 = select i1 %10415, float 1.000000e+00, float %10405
  %10417 = add i32 %10285, -3
  %10418 = icmp ult i32 %10417, 2
  %10419 = select i1 %10418, float 0.000000e+00, float %10408
  br label %10537

; <label>:10420                                   ; preds = %10262
  %10421 = add i32 %10288, %10291
  %10422 = uitofp i32 %10421 to float
  %10423 = fadd fast float %10422, -4.000000e+00
  %10424 = fmul fast float %10423, 0x3FB5555560000000
  %10425 = call float @dx.op.unary.f32(i32 7, float %10424)  ; Saturate(value)
  %10426 = icmp eq i32 %10421, 0
  %10427 = select i1 %10426, float 0.000000e+00, float %10425
  %10428 = icmp ult i32 %10421, 2
  %10429 = select i1 %10428, float 0.000000e+00, float %10425
  %10430 = add i32 %10421, -1
  %10431 = icmp ult i32 %10430, 2
  %10432 = select i1 %10431, float 1.000000e+00, float %10427
  %10433 = icmp ult i32 %10421, 4
  %10434 = select i1 %10433, float 0.000000e+00, float 1.000000e+00
  %10435 = and i32 %10421, -2
  %10436 = icmp eq i32 %10435, 2
  %10437 = icmp eq i32 %10421, 4
  %10438 = select i1 %10437, float 1.000000e+00, float %10434
  %10439 = or i1 %10437, %10436
  %10440 = select i1 %10439, float 1.000000e+00, float %10429
  %10441 = add i32 %10421, -3
  %10442 = icmp ult i32 %10441, 2
  %10443 = select i1 %10442, float 0.000000e+00, float %10432
  br label %10537

; <label>:10444                                   ; preds = %10262
  %10445 = uitofp i32 %10288 to float
  %10446 = fadd fast float %10445, -4.000000e+00
  %10447 = fmul fast float %10446, 0x3FB5555560000000
  %10448 = call float @dx.op.unary.f32(i32 7, float %10447)  ; Saturate(value)
  %10449 = icmp eq i32 %10288, 0
  %10450 = select i1 %10449, float 0.000000e+00, float %10448
  %10451 = icmp ult i32 %10288, 2
  %10452 = select i1 %10451, float 0.000000e+00, float %10448
  %10453 = add i32 %10288, -1
  %10454 = icmp ult i32 %10453, 2
  %10455 = select i1 %10454, float 1.000000e+00, float %10450
  %10456 = icmp ult i32 %10288, 4
  %10457 = select i1 %10456, float 0.000000e+00, float 1.000000e+00
  %10458 = and i32 %10288, -2
  %10459 = icmp eq i32 %10458, 2
  %10460 = icmp eq i32 %10288, 4
  %10461 = select i1 %10460, float 1.000000e+00, float %10457
  %10462 = or i1 %10460, %10459
  %10463 = select i1 %10462, float 1.000000e+00, float %10452
  %10464 = add i32 %10288, -3
  %10465 = icmp ult i32 %10464, 2
  %10466 = select i1 %10465, float 0.000000e+00, float %10455
  br label %10537

; <label>:10467                                   ; preds = %10262
  %10468 = uitofp i32 %10291 to float
  %10469 = fadd fast float %10468, -4.000000e+00
  %10470 = fmul fast float %10469, 0x3FB5555560000000
  %10471 = call float @dx.op.unary.f32(i32 7, float %10470)  ; Saturate(value)
  %10472 = icmp eq i32 %10291, 0
  %10473 = select i1 %10472, float 0.000000e+00, float %10471
  %10474 = icmp ult i32 %10291, 2
  %10475 = select i1 %10474, float 0.000000e+00, float %10471
  %10476 = add i32 %10291, -1
  %10477 = icmp ult i32 %10476, 2
  %10478 = select i1 %10477, float 1.000000e+00, float %10473
  %10479 = icmp ult i32 %10291, 4
  %10480 = select i1 %10479, float 0.000000e+00, float 1.000000e+00
  %10481 = and i32 %10291, -2
  %10482 = icmp eq i32 %10481, 2
  %10483 = icmp eq i32 %10291, 4
  %10484 = select i1 %10483, float 1.000000e+00, float %10480
  %10485 = or i1 %10483, %10482
  %10486 = select i1 %10485, float 1.000000e+00, float %10475
  %10487 = add i32 %10291, -3
  %10488 = icmp ult i32 %10487, 2
  %10489 = select i1 %10488, float 0.000000e+00, float %10478
  br label %10537

; <label>:10490                                   ; preds = %10262
  %10491 = lshr i32 %8055, 8
  %10492 = and i32 %10491, 255
  %10493 = uitofp i32 %10492 to float
  %10494 = fptoui float %10493 to i32
  %10495 = uitofp i32 %10494 to float
  %10496 = fcmp fast oge float %10495, 1.000000e+00
  %10497 = fcmp fast oge float %10495, 2.000000e+00
  %10498 = or i1 %10497, %10496
  %10499 = select i1 %10498, float 1.000000e+00, float 0.000000e+00
  %10500 = fcmp fast oge float %10495, 3.000000e+00
  %10501 = or i1 %10500, %10497
  %10502 = fcmp fast oge float %10495, 4.000000e+00
  %10503 = or i1 %10502, %10501
  %10504 = select i1 %10503, float 1.000000e+00, float 0.000000e+00
  %10505 = or i1 %10502, %10500
  %10506 = fcmp fast oge float %10495, 5.000000e+00
  %10507 = or i1 %10506, %10502
  %10508 = select i1 %10507, float 1.000000e+00, float 0.000000e+00
  %10509 = select i1 %10506, float 0.000000e+00, float %10504
  %10510 = or i1 %10506, %10505
  %10511 = select i1 %10510, float 0.000000e+00, float %10499
  br label %10537

; <label>:10512                                   ; preds = %10262
  br label %10537

; <label>:10513                                   ; preds = %10262
  %10514 = uitofp i32 %10295 to float
  %10515 = fadd fast float %10514, -4.000000e+00
  %10516 = fmul fast float %10515, 0x3FB5555560000000
  %10517 = call float @dx.op.unary.f32(i32 7, float %10516)  ; Saturate(value)
  %10518 = icmp eq i32 %10295, 0
  %10519 = select i1 %10518, float 0.000000e+00, float %10517
  %10520 = icmp ult i32 %10295, 2
  %10521 = select i1 %10520, float 0.000000e+00, float %10517
  %10522 = add i32 %10295, -1
  %10523 = icmp ult i32 %10522, 2
  %10524 = select i1 %10523, float 1.000000e+00, float %10519
  %10525 = icmp ult i32 %10295, 4
  %10526 = select i1 %10525, float 0.000000e+00, float 1.000000e+00
  %10527 = and i32 %10295, -2
  %10528 = icmp eq i32 %10527, 2
  %10529 = icmp eq i32 %10295, 4
  %10530 = select i1 %10529, float 1.000000e+00, float %10526
  %10531 = or i1 %10529, %10528
  %10532 = select i1 %10531, float 1.000000e+00, float %10521
  %10533 = add i32 %10295, -3
  %10534 = icmp ult i32 %10533, 2
  %10535 = select i1 %10534, float 0.000000e+00, float %10524
  br label %10537

; <label>:10536                                   ; preds = %10262
  br label %10537

; <label>:10537                                   ; preds = %10536, %10513, %10512, %10490, %10467, %10444, %10420, %10397, %10374, %10351, %10326, %10299, %10262
  %10538 = phi float [ %10272, %10262 ], [ 5.000000e-01, %10536 ], [ %10530, %10513 ], [ 1.000000e+00, %10512 ], [ %10508, %10490 ], [ %10484, %10467 ], [ %10461, %10444 ], [ %10438, %10420 ], [ %10414, %10397 ], [ %10391, %10374 ], [ %10368, %10351 ], [ %10345, %10326 ], [ %10320, %10299 ]
  %10539 = phi float [ %10273, %10262 ], [ 5.000000e-01, %10536 ], [ %10532, %10513 ], [ 0.000000e+00, %10512 ], [ %10509, %10490 ], [ %10486, %10467 ], [ %10463, %10444 ], [ %10440, %10420 ], [ %10416, %10397 ], [ %10393, %10374 ], [ %10370, %10351 ], [ %10347, %10326 ], [ %10322, %10299 ]
  %10540 = phi float [ %10274, %10262 ], [ 5.000000e-01, %10536 ], [ %10535, %10513 ], [ 0.000000e+00, %10512 ], [ %10511, %10490 ], [ %10489, %10467 ], [ %10466, %10444 ], [ %10443, %10420 ], [ %10419, %10397 ], [ %10396, %10374 ], [ %10373, %10351 ], [ %10350, %10326 ], [ %10325, %10299 ]
  %10541 = fsub fast float %10538, %10272
  %10542 = fsub fast float %10539, %10273
  %10543 = fsub fast float %10540, %10274
  %10544 = fmul fast float %10541, %10202
  %10545 = fmul fast float %10542, %10202
  %10546 = fmul fast float %10543, %10202
  %10547 = fadd fast float %10544, %10272
  %10548 = fadd fast float %10545, %10273
  %10549 = fadd fast float %10546, %10274
  %10550 = and i32 %9957, 255
  %10551 = uitofp i32 %10550 to float
  %10552 = fptoui float %10551 to i32
  %10553 = icmp ult i32 %10552, 25
  br i1 %10553, label %10554, label %10559

; <label>:10554                                   ; preds = %10537
  %10555 = trunc i32 %10552 to i25
  %10556 = lshr i25 1048574, %10555
  %10557 = and i25 %10556, 1
  %10558 = icmp ne i25 %10557, 0
  br label %10559

; <label>:10559                                   ; preds = %10554, %10537
  %10560 = phi i1 [ %10558, %10554 ], [ true, %10537 ]
  %10561 = or i32 %10215, %9961
  %10562 = or i32 %10561, %10298
  %10563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10564 = extractvalue %dx.types.CBufRet.f32 %10563, 3
  %10565 = bitcast float %10564 to i32
  %10566 = and i32 %10565, 255
  %10567 = uitofp i32 %10566 to float
  %10568 = fptoui float %10567 to i32
  %10569 = or i32 %10562, %10568
  %10570 = icmp ne i32 %10569, 0
  %10571 = or i1 %10560, %10570
  %10572 = extractvalue %dx.types.CBufRet.f32 %10563, 0
  %10573 = bitcast float %10572 to i32
  %10574 = icmp slt i32 %10573, 0
  %10575 = or i1 %10574, %10571
  br i1 %10575, label %10576, label %10584

; <label>:10576                                   ; preds = %10559
  %10577 = icmp eq i32 %10298, 14
  %10578 = select i1 %10577, float 0.000000e+00, float 1.000000e+00
  %10579 = icmp eq i32 %10552, 0
  br i1 %10579, label %10584, label %10580

; <label>:10580                                   ; preds = %10576
  %10581 = fmul fast float %10578, %10547
  %10582 = fmul fast float %10578, %10548
  %10583 = fmul fast float %10578, %10549
  br label %10584

; <label>:10584                                   ; preds = %10580, %10576, %10559
  %10585 = phi float [ %10581, %10580 ], [ %10547, %10576 ], [ %10547, %10559 ]
  %10586 = phi float [ %10582, %10580 ], [ %10548, %10576 ], [ %10548, %10559 ]
  %10587 = phi float [ %10583, %10580 ], [ %10549, %10576 ], [ %10549, %10559 ]
  %10588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10589 = extractvalue %dx.types.CBufRet.f32 %10588, 2
  %10590 = extractvalue %dx.types.CBufRet.f32 %10588, 3
  %10591 = fmul fast float %10589, %98
  %10592 = fmul fast float %10590, %99
  %10593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10594 = extractvalue %dx.types.CBufRet.f32 %10593, 0
  %10595 = fcmp fast oge float %10591, %10594
  %10596 = extractvalue %dx.types.CBufRet.f32 %10593, 2
  %10597 = fcmp fast ole float %10591, %10596
  %10598 = and i1 %10595, %10597
  %10599 = extractvalue %dx.types.CBufRet.f32 %10593, 1
  %10600 = fcmp fast oge float %10592, %10599
  %10601 = and i1 %10598, %10600
  %10602 = extractvalue %dx.types.CBufRet.f32 %10593, 3
  %10603 = fcmp fast ole float %10592, %10602
  %10604 = and i1 %10601, %10603
  %10605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10606 = extractvalue %dx.types.CBufRet.i32 %10605, 0
  %10607 = icmp ne i32 %10606, 0
  %10608 = and i1 %10607, %10604
  br i1 %10608, label %10609, label %11542

; <label>:10609                                   ; preds = %10584
  %10610 = icmp eq i32 %10606, 1
  br i1 %10610, label %10611, label %10650

; <label>:10611                                   ; preds = %10609
  %10612 = uitofp i32 %197 to float
  %10613 = fmul fast float %10612, 0x3FE3C6EF40000000
  %10614 = call float @dx.op.unary.f32(i32 22, float %10613)  ; Frc(value)
  %10615 = fadd fast float %10614, 0x3FE5555560000000
  %10616 = fadd fast float %10614, 0x3FD5555560000000
  %10617 = fsub fast float -0.000000e+00, %10614
  %10618 = fsub fast float -0.000000e+00, %10615
  %10619 = fsub fast float -0.000000e+00, %10616
  %10620 = fcmp fast oge float %10614, %10617
  %10621 = fcmp fast oge float %10615, %10618
  %10622 = fcmp fast oge float %10616, %10619
  %10623 = call float @dx.op.unary.f32(i32 6, float %10614)  ; FAbs(value)
  %10624 = call float @dx.op.unary.f32(i32 6, float %10615)  ; FAbs(value)
  %10625 = call float @dx.op.unary.f32(i32 6, float %10616)  ; FAbs(value)
  %10626 = call float @dx.op.unary.f32(i32 22, float %10623)  ; Frc(value)
  %10627 = call float @dx.op.unary.f32(i32 22, float %10624)  ; Frc(value)
  %10628 = call float @dx.op.unary.f32(i32 22, float %10625)  ; Frc(value)
  %10629 = fsub fast float -0.000000e+00, %10626
  %10630 = fsub fast float -0.000000e+00, %10627
  %10631 = fsub fast float -0.000000e+00, %10628
  %10632 = select i1 %10620, float %10626, float %10629
  %10633 = select i1 %10621, float %10627, float %10630
  %10634 = select i1 %10622, float %10628, float %10631
  %10635 = fmul fast float %10632, 6.000000e+00
  %10636 = fmul fast float %10633, 6.000000e+00
  %10637 = fmul fast float %10634, 6.000000e+00
  %10638 = fadd fast float %10635, -3.000000e+00
  %10639 = fadd fast float %10636, -3.000000e+00
  %10640 = fadd fast float %10637, -3.000000e+00
  %10641 = call float @dx.op.unary.f32(i32 6, float %10638)  ; FAbs(value)
  %10642 = call float @dx.op.unary.f32(i32 6, float %10639)  ; FAbs(value)
  %10643 = call float @dx.op.unary.f32(i32 6, float %10640)  ; FAbs(value)
  %10644 = fadd fast float %10641, -1.000000e+00
  %10645 = fadd fast float %10642, -1.000000e+00
  %10646 = fadd fast float %10643, -1.000000e+00
  %10647 = call float @dx.op.unary.f32(i32 7, float %10644)  ; Saturate(value)
  %10648 = call float @dx.op.unary.f32(i32 7, float %10645)  ; Saturate(value)
  %10649 = call float @dx.op.unary.f32(i32 7, float %10646)  ; Saturate(value)
  br label %11542

; <label>:10650                                   ; preds = %10609
  %10651 = icmp eq i32 %10606, 2
  br i1 %10651, label %10652, label %10656

; <label>:10652                                   ; preds = %10650
  %10653 = fmul fast float %10585, %72
  %10654 = fmul fast float %10586, %73
  %10655 = fmul fast float %10587, %74
  br label %11542

; <label>:10656                                   ; preds = %10650
  %10657 = icmp eq i32 %10606, 3
  %10658 = icmp eq i32 %10606, 26
  %10659 = or i1 %10657, %10658
  br i1 %10659, label %10660, label %10760

; <label>:10660                                   ; preds = %10656
  br i1 %10657, label %10661, label %10672

; <label>:10661                                   ; preds = %10660
  %10662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10663 = extractvalue %dx.types.CBufRet.f32 %10662, 3
  %10664 = fsub fast float %177, %10663
  %10665 = fmul fast float %10664, 0x3FD5555560000000
  %10666 = call float @dx.op.unary.f32(i32 7, float %10665)  ; Saturate(value)
  %10667 = fmul fast float %10666, 6.300000e+01
  %10668 = fptoui float %10667 to i32
  %10669 = uitofp i32 %10668 to float
  %10670 = fmul fast float %10669, 0x3FA8618620000000
  %10671 = fadd fast float %10670, %10663
  br label %10672

; <label>:10672                                   ; preds = %10661, %10660
  %10673 = phi float [ %10671, %10661 ], [ %72, %10660 ]
  %10674 = call float @dx.op.unary.f32(i32 27, float %10673)  ; Round_ni(value)
  %10675 = fadd fast float %10674, 1.000000e+00
  %10676 = call float @dx.op.unary.f32(i32 22, float %10673)  ; Frc(value)
  %10677 = fmul fast float %10674, 0x3FE3C6EF40000000
  %10678 = call float @dx.op.unary.f32(i32 22, float %10677)  ; Frc(value)
  %10679 = fadd fast float %10678, 0x3FE5555560000000
  %10680 = fadd fast float %10678, 0x3FD5555560000000
  %10681 = fsub fast float -0.000000e+00, %10678
  %10682 = fsub fast float -0.000000e+00, %10679
  %10683 = fsub fast float -0.000000e+00, %10680
  %10684 = fcmp fast oge float %10678, %10681
  %10685 = fcmp fast oge float %10679, %10682
  %10686 = fcmp fast oge float %10680, %10683
  %10687 = call float @dx.op.unary.f32(i32 6, float %10678)  ; FAbs(value)
  %10688 = call float @dx.op.unary.f32(i32 6, float %10679)  ; FAbs(value)
  %10689 = call float @dx.op.unary.f32(i32 6, float %10680)  ; FAbs(value)
  %10690 = call float @dx.op.unary.f32(i32 22, float %10687)  ; Frc(value)
  %10691 = call float @dx.op.unary.f32(i32 22, float %10688)  ; Frc(value)
  %10692 = call float @dx.op.unary.f32(i32 22, float %10689)  ; Frc(value)
  %10693 = fsub fast float -0.000000e+00, %10690
  %10694 = fsub fast float -0.000000e+00, %10691
  %10695 = fsub fast float -0.000000e+00, %10692
  %10696 = select i1 %10684, float %10690, float %10693
  %10697 = select i1 %10685, float %10691, float %10694
  %10698 = select i1 %10686, float %10692, float %10695
  %10699 = fmul fast float %10696, 6.000000e+00
  %10700 = fmul fast float %10697, 6.000000e+00
  %10701 = fmul fast float %10698, 6.000000e+00
  %10702 = fadd fast float %10699, -3.000000e+00
  %10703 = fadd fast float %10700, -3.000000e+00
  %10704 = fadd fast float %10701, -3.000000e+00
  %10705 = call float @dx.op.unary.f32(i32 6, float %10702)  ; FAbs(value)
  %10706 = call float @dx.op.unary.f32(i32 6, float %10703)  ; FAbs(value)
  %10707 = call float @dx.op.unary.f32(i32 6, float %10704)  ; FAbs(value)
  %10708 = fadd fast float %10705, -1.000000e+00
  %10709 = fadd fast float %10706, -1.000000e+00
  %10710 = fadd fast float %10707, -1.000000e+00
  %10711 = call float @dx.op.unary.f32(i32 7, float %10708)  ; Saturate(value)
  %10712 = call float @dx.op.unary.f32(i32 7, float %10709)  ; Saturate(value)
  %10713 = call float @dx.op.unary.f32(i32 7, float %10710)  ; Saturate(value)
  %10714 = fmul fast float %10675, 0x3FE3C6EF40000000
  %10715 = call float @dx.op.unary.f32(i32 22, float %10714)  ; Frc(value)
  %10716 = fadd fast float %10715, 0x3FE5555560000000
  %10717 = fadd fast float %10715, 0x3FD5555560000000
  %10718 = fsub fast float -0.000000e+00, %10715
  %10719 = fsub fast float -0.000000e+00, %10716
  %10720 = fsub fast float -0.000000e+00, %10717
  %10721 = fcmp fast oge float %10715, %10718
  %10722 = fcmp fast oge float %10716, %10719
  %10723 = fcmp fast oge float %10717, %10720
  %10724 = call float @dx.op.unary.f32(i32 6, float %10715)  ; FAbs(value)
  %10725 = call float @dx.op.unary.f32(i32 6, float %10716)  ; FAbs(value)
  %10726 = call float @dx.op.unary.f32(i32 6, float %10717)  ; FAbs(value)
  %10727 = call float @dx.op.unary.f32(i32 22, float %10724)  ; Frc(value)
  %10728 = call float @dx.op.unary.f32(i32 22, float %10725)  ; Frc(value)
  %10729 = call float @dx.op.unary.f32(i32 22, float %10726)  ; Frc(value)
  %10730 = fsub fast float -0.000000e+00, %10727
  %10731 = fsub fast float -0.000000e+00, %10728
  %10732 = fsub fast float -0.000000e+00, %10729
  %10733 = select i1 %10721, float %10727, float %10730
  %10734 = select i1 %10722, float %10728, float %10731
  %10735 = select i1 %10723, float %10729, float %10732
  %10736 = fmul fast float %10733, 6.000000e+00
  %10737 = fmul fast float %10734, 6.000000e+00
  %10738 = fmul fast float %10735, 6.000000e+00
  %10739 = fadd fast float %10736, -3.000000e+00
  %10740 = fadd fast float %10737, -3.000000e+00
  %10741 = fadd fast float %10738, -3.000000e+00
  %10742 = call float @dx.op.unary.f32(i32 6, float %10739)  ; FAbs(value)
  %10743 = call float @dx.op.unary.f32(i32 6, float %10740)  ; FAbs(value)
  %10744 = call float @dx.op.unary.f32(i32 6, float %10741)  ; FAbs(value)
  %10745 = fadd fast float %10742, -1.000000e+00
  %10746 = fadd fast float %10743, -1.000000e+00
  %10747 = fadd fast float %10744, -1.000000e+00
  %10748 = call float @dx.op.unary.f32(i32 7, float %10745)  ; Saturate(value)
  %10749 = call float @dx.op.unary.f32(i32 7, float %10746)  ; Saturate(value)
  %10750 = call float @dx.op.unary.f32(i32 7, float %10747)  ; Saturate(value)
  %10751 = fsub fast float %10748, %10711
  %10752 = fsub fast float %10749, %10712
  %10753 = fsub fast float %10750, %10713
  %10754 = fmul fast float %10751, %10676
  %10755 = fmul fast float %10752, %10676
  %10756 = fmul fast float %10753, %10676
  %10757 = fadd fast float %10754, %10711
  %10758 = fadd fast float %10755, %10712
  %10759 = fadd fast float %10756, %10713
  br label %11542

; <label>:10760                                   ; preds = %10656
  %10761 = and i32 %10606, -2
  %10762 = icmp eq i32 %10761, 4
  br i1 %10762, label %10763, label %10772

; <label>:10763                                   ; preds = %10760
  %10764 = uitofp i32 %197 to float
  %10765 = fmul fast float %10764, 0x3FE3C6EF40000000
  %10766 = call float @dx.op.unary.f32(i32 22, float %10765)  ; Frc(value)
  %10767 = fmul fast float %10766, 5.000000e-01
  %10768 = fadd fast float %10767, 5.000000e-01
  %10769 = fmul fast float %10768, %72
  %10770 = fmul fast float %10768, %73
  %10771 = fmul fast float %10768, %74
  br label %11542

; <label>:10772                                   ; preds = %10760
  %10773 = icmp eq i32 %10606, 6
  br i1 %10773, label %11542, label %10774

; <label>:10774                                   ; preds = %10772
  %10775 = icmp eq i32 %10606, 7
  br i1 %10775, label %11542, label %10776

; <label>:10776                                   ; preds = %10774
  %10777 = icmp eq i32 %10606, 8
  br i1 %10777, label %11542, label %10778

; <label>:10778                                   ; preds = %10776
  %10779 = icmp eq i32 %10606, 9
  br i1 %10779, label %10780, label %10792

; <label>:10780                                   ; preds = %10778
  %10781 = fcmp fast ogt float %346, 0.000000e+00
  %10782 = call float @dx.op.dot2.f32(i32 54, float %341, float %342, float %341, float %342)  ; Dot2(ax,ay,bx,by)
  %10783 = call float @dx.op.unary.f32(i32 25, float %10782)  ; Rsqrt(value)
  %10784 = fmul fast float %341, 5.000000e-01
  %10785 = fmul fast float %10784, %10783
  %10786 = fmul fast float %342, 5.000000e-01
  %10787 = fmul fast float %10786, %10783
  %10788 = fadd fast float %10785, 5.000000e-01
  %10789 = select i1 %10781, float %10788, float 5.000000e-01
  %10790 = fadd fast float %10787, 5.000000e-01
  %10791 = select i1 %10781, float %10790, float 5.000000e-01
  br label %11542

; <label>:10792                                   ; preds = %10778
  %10793 = icmp eq i32 %10606, 10
  br i1 %10793, label %10794, label %10796

; <label>:10794                                   ; preds = %10792
  %10795 = fmul fast float %346, 0x3F747AE140000000
  br label %11542

; <label>:10796                                   ; preds = %10792
  %10797 = icmp eq i32 %10606, 11
  br i1 %10797, label %11542, label %10798

; <label>:10798                                   ; preds = %10796
  %10799 = icmp eq i32 %10606, 12
  br i1 %10799, label %11542, label %10800

; <label>:10800                                   ; preds = %10798
  %10801 = icmp eq i32 %10606, 13
  br i1 %10801, label %11542, label %10802

; <label>:10802                                   ; preds = %10800
  %10803 = icmp eq i32 %10606, 14
  br i1 %10803, label %11542, label %10804

; <label>:10804                                   ; preds = %10802
  %10805 = icmp eq i32 %10606, 15
  br i1 %10805, label %11542, label %10806

; <label>:10806                                   ; preds = %10804
  %10807 = icmp eq i32 %10606, 16
  br i1 %10807, label %11542, label %10808

; <label>:10808                                   ; preds = %10806
  %10809 = icmp eq i32 %10606, 17
  br i1 %10809, label %11542, label %10810

; <label>:10810                                   ; preds = %10808
  %10811 = icmp eq i32 %10606, 18
  br i1 %10811, label %11542, label %10812

; <label>:10812                                   ; preds = %10810
  %10813 = icmp eq i32 %10606, 19
  br i1 %10813, label %11542, label %10814

; <label>:10814                                   ; preds = %10812
  %10815 = icmp eq i32 %10606, 20
  br i1 %10815, label %10816, label %10821

; <label>:10816                                   ; preds = %10814
  %10817 = fmul fast float %915, 5.000000e-01
  %10818 = fmul fast float %916, 5.000000e-01
  %10819 = fadd fast float %10817, 5.000000e-01
  %10820 = fadd fast float %10818, 5.000000e-01
  br label %11542

; <label>:10821                                   ; preds = %10814
  %10822 = and i32 %10606, -9
  %10823 = icmp eq i32 %10822, 21
  br i1 %10823, label %11542, label %10824

; <label>:10824                                   ; preds = %10821
  %10825 = icmp eq i32 %10606, 22
  %10826 = icmp eq i32 %10606, 38
  %10827 = or i1 %10825, %10826
  br i1 %10827, label %10828, label %10942

; <label>:10828                                   ; preds = %10824
  %10829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10830 = extractvalue %dx.types.CBufRet.f32 %10829, 0
  %10831 = extractvalue %dx.types.CBufRet.f32 %10829, 1
  %10832 = extractvalue %dx.types.CBufRet.f32 %10829, 2
  %10833 = fadd fast float %10830, %153
  %10834 = fadd fast float %10831, %154
  %10835 = fadd fast float %10832, %155
  %10836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10837 = extractvalue %dx.types.CBufRet.f32 %10836, 0
  %10838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10839 = extractvalue %dx.types.CBufRet.f32 %10838, 0
  %10840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10841 = extractvalue %dx.types.CBufRet.f32 %10840, 0
  %10842 = extractvalue %dx.types.CBufRet.f32 %10836, 1
  %10843 = extractvalue %dx.types.CBufRet.f32 %10838, 1
  %10844 = extractvalue %dx.types.CBufRet.f32 %10840, 1
  %10845 = extractvalue %dx.types.CBufRet.f32 %10836, 3
  %10846 = extractvalue %dx.types.CBufRet.f32 %10838, 3
  %10847 = extractvalue %dx.types.CBufRet.f32 %10840, 3
  %10848 = fadd fast float %10833, %10845
  %10849 = fadd fast float %10834, %10846
  %10850 = fadd fast float %10835, %10847
  %10851 = fmul fast float %10848, %10837
  %10852 = call float @dx.op.tertiary.f32(i32 46, float %10849, float %10839, float %10851)  ; FMad(a,b,c)
  %10853 = call float @dx.op.tertiary.f32(i32 46, float %10850, float %10841, float %10852)  ; FMad(a,b,c)
  %10854 = fmul fast float %10848, %10842
  %10855 = call float @dx.op.tertiary.f32(i32 46, float %10849, float %10843, float %10854)  ; FMad(a,b,c)
  %10856 = call float @dx.op.tertiary.f32(i32 46, float %10850, float %10844, float %10855)  ; FMad(a,b,c)
  %10857 = fsub fast float %10853, %10845
  %10858 = fsub fast float %10856, %10846
  %10859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %10860 = extractvalue %dx.types.CBufRet.f32 %10859, 0
  %10861 = extractvalue %dx.types.CBufRet.f32 %10859, 1
  %10862 = fsub fast float %10857, %10860
  %10863 = fsub fast float %10858, %10861
  %10864 = fmul fast float %10862, %10862
  %10865 = fmul fast float %10863, %10863
  %10866 = fadd fast float %10864, %10865
  %10867 = call float @dx.op.unary.f32(i32 24, float %10866)  ; Sqrt(value)
  %10868 = extractvalue %dx.types.CBufRet.f32 %10859, 2
  %10869 = fcmp fast olt float %10867, %10868
  br i1 %10869, label %10870, label %11542

; <label>:10870                                   ; preds = %10828
  %10871 = fadd fast float %10862, %10868
  %10872 = fadd fast float %10863, %10868
  %10873 = extractvalue %dx.types.CBufRet.f32 %10859, 3
  %10874 = fmul fast float %10871, %10873
  %10875 = fmul fast float %10872, %10873
  %10876 = call float @dx.op.unary.f32(i32 7, float %10874)  ; Saturate(value)
  %10877 = call float @dx.op.unary.f32(i32 7, float %10875)  ; Saturate(value)
  %10878 = fsub fast float 1.000000e+00, %10876
  %10879 = fsub fast float 1.000000e+00, %10877
  %10880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %61, float %10878, float %10879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10881 = extractvalue %dx.types.ResRet.f32 %10880, 0
  %10882 = fcmp fast ugt float %10881, 0.000000e+00
  br i1 %10882, label %10883, label %11542

; <label>:10883                                   ; preds = %10870
  br i1 %10825, label %10884, label %10889

; <label>:10884                                   ; preds = %10883
  %10885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %61, float %10878, float %10879, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10886 = extractvalue %dx.types.ResRet.f32 %10885, 0
  %10887 = extractvalue %dx.types.ResRet.f32 %10885, 1
  %10888 = extractvalue %dx.types.ResRet.f32 %10885, 2
  br label %11542

; <label>:10889                                   ; preds = %10883
  %10890 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %10891 = extractvalue %dx.types.Dimensions %10890, 0
  %10892 = sitofp i32 %10891 to float
  %10893 = extractvalue %dx.types.Dimensions %10890, 1
  %10894 = sitofp i32 %10893 to float
  %10895 = fmul fast float %10892, %10878
  %10896 = fmul fast float %10894, %10879
  %10897 = call float @dx.op.unary.f32(i32 27, float %10895)  ; Round_ni(value)
  %10898 = call float @dx.op.unary.f32(i32 27, float %10896)  ; Round_ni(value)
  %10899 = fptoui float %10892 to i32
  %10900 = uitofp i32 %10899 to float
  %10901 = fmul fast float %10900, %10898
  %10902 = fadd fast float %10901, %10897
  %10903 = fptoui float %10902 to i32
  %10904 = uitofp i32 %10903 to float
  %10905 = fmul fast float %10904, 0x3FE3C6EF40000000
  %10906 = call float @dx.op.unary.f32(i32 22, float %10905)  ; Frc(value)
  %10907 = fadd fast float %10906, 0x3FE5555560000000
  %10908 = fadd fast float %10906, 0x3FD5555560000000
  %10909 = fsub fast float -0.000000e+00, %10906
  %10910 = fsub fast float -0.000000e+00, %10907
  %10911 = fsub fast float -0.000000e+00, %10908
  %10912 = fcmp fast oge float %10906, %10909
  %10913 = fcmp fast oge float %10907, %10910
  %10914 = fcmp fast oge float %10908, %10911
  %10915 = call float @dx.op.unary.f32(i32 6, float %10906)  ; FAbs(value)
  %10916 = call float @dx.op.unary.f32(i32 6, float %10907)  ; FAbs(value)
  %10917 = call float @dx.op.unary.f32(i32 6, float %10908)  ; FAbs(value)
  %10918 = call float @dx.op.unary.f32(i32 22, float %10915)  ; Frc(value)
  %10919 = call float @dx.op.unary.f32(i32 22, float %10916)  ; Frc(value)
  %10920 = call float @dx.op.unary.f32(i32 22, float %10917)  ; Frc(value)
  %10921 = fsub fast float -0.000000e+00, %10918
  %10922 = fsub fast float -0.000000e+00, %10919
  %10923 = fsub fast float -0.000000e+00, %10920
  %10924 = select i1 %10912, float %10918, float %10921
  %10925 = select i1 %10913, float %10919, float %10922
  %10926 = select i1 %10914, float %10920, float %10923
  %10927 = fmul fast float %10924, 6.000000e+00
  %10928 = fmul fast float %10925, 6.000000e+00
  %10929 = fmul fast float %10926, 6.000000e+00
  %10930 = fadd fast float %10927, -3.000000e+00
  %10931 = fadd fast float %10928, -3.000000e+00
  %10932 = fadd fast float %10929, -3.000000e+00
  %10933 = call float @dx.op.unary.f32(i32 6, float %10930)  ; FAbs(value)
  %10934 = call float @dx.op.unary.f32(i32 6, float %10931)  ; FAbs(value)
  %10935 = call float @dx.op.unary.f32(i32 6, float %10932)  ; FAbs(value)
  %10936 = fadd fast float %10933, -1.000000e+00
  %10937 = fadd fast float %10934, -1.000000e+00
  %10938 = fadd fast float %10935, -1.000000e+00
  %10939 = call float @dx.op.unary.f32(i32 7, float %10936)  ; Saturate(value)
  %10940 = call float @dx.op.unary.f32(i32 7, float %10937)  ; Saturate(value)
  %10941 = call float @dx.op.unary.f32(i32 7, float %10938)  ; Saturate(value)
  br label %11542

; <label>:10942                                   ; preds = %10824
  %10943 = icmp eq i32 %10606, 39
  br i1 %10943, label %10944, label %11048

; <label>:10944                                   ; preds = %10942
  %10945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10946 = extractvalue %dx.types.CBufRet.f32 %10945, 0
  %10947 = extractvalue %dx.types.CBufRet.f32 %10945, 1
  %10948 = extractvalue %dx.types.CBufRet.f32 %10945, 2
  %10949 = fadd fast float %10946, %153
  %10950 = fadd fast float %10947, %154
  %10951 = fadd fast float %10948, %155
  %10952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10953 = extractvalue %dx.types.CBufRet.f32 %10952, 0
  %10954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10955 = extractvalue %dx.types.CBufRet.f32 %10954, 0
  %10956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10957 = extractvalue %dx.types.CBufRet.f32 %10956, 0
  %10958 = extractvalue %dx.types.CBufRet.f32 %10952, 1
  %10959 = extractvalue %dx.types.CBufRet.f32 %10954, 1
  %10960 = extractvalue %dx.types.CBufRet.f32 %10956, 1
  %10961 = extractvalue %dx.types.CBufRet.f32 %10952, 3
  %10962 = extractvalue %dx.types.CBufRet.f32 %10954, 3
  %10963 = extractvalue %dx.types.CBufRet.f32 %10956, 3
  %10964 = fadd fast float %10949, %10961
  %10965 = fadd fast float %10950, %10962
  %10966 = fadd fast float %10951, %10963
  %10967 = fmul fast float %10964, %10953
  %10968 = call float @dx.op.tertiary.f32(i32 46, float %10965, float %10955, float %10967)  ; FMad(a,b,c)
  %10969 = call float @dx.op.tertiary.f32(i32 46, float %10966, float %10957, float %10968)  ; FMad(a,b,c)
  %10970 = fmul fast float %10964, %10958
  %10971 = call float @dx.op.tertiary.f32(i32 46, float %10965, float %10959, float %10970)  ; FMad(a,b,c)
  %10972 = call float @dx.op.tertiary.f32(i32 46, float %10966, float %10960, float %10971)  ; FMad(a,b,c)
  %10973 = fsub fast float %10969, %10961
  %10974 = fsub fast float %10972, %10962
  %10975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %10976 = extractvalue %dx.types.CBufRet.f32 %10975, 0
  %10977 = extractvalue %dx.types.CBufRet.f32 %10975, 1
  %10978 = fsub fast float %10973, %10976
  %10979 = fsub fast float %10974, %10977
  %10980 = fmul fast float %10978, %10978
  %10981 = fmul fast float %10979, %10979
  %10982 = fadd fast float %10980, %10981
  %10983 = call float @dx.op.unary.f32(i32 24, float %10982)  ; Sqrt(value)
  %10984 = extractvalue %dx.types.CBufRet.f32 %10975, 2
  %10985 = fcmp fast olt float %10983, %10984
  br i1 %10985, label %10986, label %11542

; <label>:10986                                   ; preds = %10944
  %10987 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %51, i32 0)  ; GetDimensions(handle,mipLevel)
  %10988 = extractvalue %dx.types.Dimensions %10987, 0
  %10989 = sitofp i32 %10988 to float
  %10990 = extractvalue %dx.types.Dimensions %10987, 1
  %10991 = sitofp i32 %10990 to float
  %10992 = fadd fast float %10978, %10984
  %10993 = fadd fast float %10979, %10984
  %10994 = extractvalue %dx.types.CBufRet.f32 %10975, 3
  %10995 = fmul fast float %10992, %10994
  %10996 = fmul fast float %10993, %10994
  %10997 = call float @dx.op.unary.f32(i32 7, float %10995)  ; Saturate(value)
  %10998 = call float @dx.op.unary.f32(i32 7, float %10996)  ; Saturate(value)
  %10999 = fsub fast float 1.000000e+00, %10997
  %11000 = fsub fast float 1.000000e+00, %10998
  %11001 = fmul fast float %10999, %10989
  %11002 = fmul fast float %11000, %10991
  %11003 = call float @dx.op.unary.f32(i32 27, float %11001)  ; Round_ni(value)
  %11004 = call float @dx.op.unary.f32(i32 27, float %11002)  ; Round_ni(value)
  %11005 = fptoui float %10989 to i32
  %11006 = uitofp i32 %11005 to float
  %11007 = fmul fast float %11004, %11006
  %11008 = fadd fast float %11007, %11003
  %11009 = fptoui float %11008 to i32
  %11010 = uitofp i32 %11009 to float
  %11011 = fmul fast float %11010, 0x3FE3C6EF40000000
  %11012 = call float @dx.op.unary.f32(i32 22, float %11011)  ; Frc(value)
  %11013 = fadd fast float %11012, 0x3FE5555560000000
  %11014 = fadd fast float %11012, 0x3FD5555560000000
  %11015 = fsub fast float -0.000000e+00, %11012
  %11016 = fsub fast float -0.000000e+00, %11013
  %11017 = fsub fast float -0.000000e+00, %11014
  %11018 = fcmp fast oge float %11012, %11015
  %11019 = fcmp fast oge float %11013, %11016
  %11020 = fcmp fast oge float %11014, %11017
  %11021 = call float @dx.op.unary.f32(i32 6, float %11012)  ; FAbs(value)
  %11022 = call float @dx.op.unary.f32(i32 6, float %11013)  ; FAbs(value)
  %11023 = call float @dx.op.unary.f32(i32 6, float %11014)  ; FAbs(value)
  %11024 = call float @dx.op.unary.f32(i32 22, float %11021)  ; Frc(value)
  %11025 = call float @dx.op.unary.f32(i32 22, float %11022)  ; Frc(value)
  %11026 = call float @dx.op.unary.f32(i32 22, float %11023)  ; Frc(value)
  %11027 = fsub fast float -0.000000e+00, %11024
  %11028 = fsub fast float -0.000000e+00, %11025
  %11029 = fsub fast float -0.000000e+00, %11026
  %11030 = select i1 %11018, float %11024, float %11027
  %11031 = select i1 %11019, float %11025, float %11028
  %11032 = select i1 %11020, float %11026, float %11029
  %11033 = fmul fast float %11030, 6.000000e+00
  %11034 = fmul fast float %11031, 6.000000e+00
  %11035 = fmul fast float %11032, 6.000000e+00
  %11036 = fadd fast float %11033, -3.000000e+00
  %11037 = fadd fast float %11034, -3.000000e+00
  %11038 = fadd fast float %11035, -3.000000e+00
  %11039 = call float @dx.op.unary.f32(i32 6, float %11036)  ; FAbs(value)
  %11040 = call float @dx.op.unary.f32(i32 6, float %11037)  ; FAbs(value)
  %11041 = call float @dx.op.unary.f32(i32 6, float %11038)  ; FAbs(value)
  %11042 = fadd fast float %11039, -1.000000e+00
  %11043 = fadd fast float %11040, -1.000000e+00
  %11044 = fadd fast float %11041, -1.000000e+00
  %11045 = call float @dx.op.unary.f32(i32 7, float %11042)  ; Saturate(value)
  %11046 = call float @dx.op.unary.f32(i32 7, float %11043)  ; Saturate(value)
  %11047 = call float @dx.op.unary.f32(i32 7, float %11044)  ; Saturate(value)
  br label %11542

; <label>:11048                                   ; preds = %10942
  %11049 = icmp eq i32 %10606, 23
  br i1 %11049, label %11542, label %11050

; <label>:11050                                   ; preds = %11048
  %11051 = icmp eq i32 %10606, 24
  br i1 %11051, label %11052, label %11078

; <label>:11052                                   ; preds = %11050
  %11053 = and i32 %378, 255
  %11054 = uitofp i32 %11053 to float
  %11055 = fptoui float %11054 to i32
  %11056 = uitofp i32 %11055 to float
  %11057 = fadd fast float %11056, -4.000000e+00
  %11058 = fmul fast float %11057, 0x3FB5555560000000
  %11059 = call float @dx.op.unary.f32(i32 7, float %11058)  ; Saturate(value)
  %11060 = icmp eq i32 %11055, 0
  %11061 = select i1 %11060, float 0.000000e+00, float %11059
  %11062 = icmp ult i32 %11055, 2
  %11063 = select i1 %11062, float 0.000000e+00, float %11059
  %11064 = add i32 %11055, -1
  %11065 = icmp ult i32 %11064, 2
  %11066 = select i1 %11065, float 1.000000e+00, float %11061
  %11067 = icmp ult i32 %11055, 4
  %11068 = select i1 %11067, float 0.000000e+00, float 1.000000e+00
  %11069 = and i32 %11055, -2
  %11070 = icmp eq i32 %11069, 2
  %11071 = icmp eq i32 %11055, 4
  %11072 = select i1 %11071, float 1.000000e+00, float %11068
  %11073 = or i1 %11071, %11070
  %11074 = select i1 %11073, float 1.000000e+00, float %11063
  %11075 = add i32 %11055, -3
  %11076 = icmp ult i32 %11075, 2
  %11077 = select i1 %11076, float 0.000000e+00, float %11066
  br label %11542

; <label>:11078                                   ; preds = %11050
  %11079 = icmp eq i32 %10606, 25
  br i1 %11079, label %11542, label %11080

; <label>:11080                                   ; preds = %11078
  %11081 = icmp eq i32 %10606, 27
  br i1 %11081, label %11082, label %11137

; <label>:11082                                   ; preds = %11080
  %11083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11084 = extractvalue %dx.types.CBufRet.f32 %11083, 2
  %11085 = fptoui float %11084 to i32
  %11086 = fptoui float %177 to i32
  %11087 = and i32 %11086, 31
  %11088 = lshr i32 %11085, %11087
  %11089 = uitofp i32 %11088 to float
  %11090 = fmul fast float %11089, %79
  %11091 = fmul fast float %11089, %80
  %11092 = call float @dx.op.unary.f32(i32 27, float %11090)  ; Round_ni(value)
  %11093 = call float @dx.op.unary.f32(i32 27, float %11091)  ; Round_ni(value)
  %11094 = fptoui float %11092 to i32
  %11095 = fptoui float %11093 to i32
  %11096 = fptoui float %11089 to i32
  %11097 = mul i32 %11096, %11095
  %11098 = add i32 %11097, %11094
  %11099 = uitofp i32 %11098 to float
  %11100 = fmul fast float %11099, 0x3FE3C6EF40000000
  %11101 = call float @dx.op.unary.f32(i32 22, float %11100)  ; Frc(value)
  %11102 = fadd fast float %11101, 0x3FE5555560000000
  %11103 = fadd fast float %11101, 0x3FD5555560000000
  %11104 = fsub fast float -0.000000e+00, %11101
  %11105 = fsub fast float -0.000000e+00, %11102
  %11106 = fsub fast float -0.000000e+00, %11103
  %11107 = fcmp fast oge float %11101, %11104
  %11108 = fcmp fast oge float %11102, %11105
  %11109 = fcmp fast oge float %11103, %11106
  %11110 = call float @dx.op.unary.f32(i32 6, float %11101)  ; FAbs(value)
  %11111 = call float @dx.op.unary.f32(i32 6, float %11102)  ; FAbs(value)
  %11112 = call float @dx.op.unary.f32(i32 6, float %11103)  ; FAbs(value)
  %11113 = call float @dx.op.unary.f32(i32 22, float %11110)  ; Frc(value)
  %11114 = call float @dx.op.unary.f32(i32 22, float %11111)  ; Frc(value)
  %11115 = call float @dx.op.unary.f32(i32 22, float %11112)  ; Frc(value)
  %11116 = fsub fast float -0.000000e+00, %11113
  %11117 = fsub fast float -0.000000e+00, %11114
  %11118 = fsub fast float -0.000000e+00, %11115
  %11119 = select i1 %11107, float %11113, float %11116
  %11120 = select i1 %11108, float %11114, float %11117
  %11121 = select i1 %11109, float %11115, float %11118
  %11122 = fmul fast float %11119, 6.000000e+00
  %11123 = fmul fast float %11120, 6.000000e+00
  %11124 = fmul fast float %11121, 6.000000e+00
  %11125 = fadd fast float %11122, -3.000000e+00
  %11126 = fadd fast float %11123, -3.000000e+00
  %11127 = fadd fast float %11124, -3.000000e+00
  %11128 = call float @dx.op.unary.f32(i32 6, float %11125)  ; FAbs(value)
  %11129 = call float @dx.op.unary.f32(i32 6, float %11126)  ; FAbs(value)
  %11130 = call float @dx.op.unary.f32(i32 6, float %11127)  ; FAbs(value)
  %11131 = fadd fast float %11128, -1.000000e+00
  %11132 = fadd fast float %11129, -1.000000e+00
  %11133 = fadd fast float %11130, -1.000000e+00
  %11134 = call float @dx.op.unary.f32(i32 7, float %11131)  ; Saturate(value)
  %11135 = call float @dx.op.unary.f32(i32 7, float %11132)  ; Saturate(value)
  %11136 = call float @dx.op.unary.f32(i32 7, float %11133)  ; Saturate(value)
  br label %11542

; <label>:11137                                   ; preds = %11080
  %11138 = icmp eq i32 %10606, 30
  br i1 %11138, label %11139, label %11179

; <label>:11139                                   ; preds = %11137
  %11140 = fcmp fast olt float %428, 0.000000e+00
  br i1 %11140, label %11542, label %11141

; <label>:11141                                   ; preds = %11139
  %11142 = fmul fast float %428, 0x3FE3C6EF40000000
  %11143 = call float @dx.op.unary.f32(i32 22, float %11142)  ; Frc(value)
  %11144 = fadd fast float %11143, 0x3FE5555560000000
  %11145 = fadd fast float %11143, 0x3FD5555560000000
  %11146 = fsub fast float -0.000000e+00, %11143
  %11147 = fsub fast float -0.000000e+00, %11144
  %11148 = fsub fast float -0.000000e+00, %11145
  %11149 = fcmp fast oge float %11143, %11146
  %11150 = fcmp fast oge float %11144, %11147
  %11151 = fcmp fast oge float %11145, %11148
  %11152 = call float @dx.op.unary.f32(i32 6, float %11143)  ; FAbs(value)
  %11153 = call float @dx.op.unary.f32(i32 6, float %11144)  ; FAbs(value)
  %11154 = call float @dx.op.unary.f32(i32 6, float %11145)  ; FAbs(value)
  %11155 = call float @dx.op.unary.f32(i32 22, float %11152)  ; Frc(value)
  %11156 = call float @dx.op.unary.f32(i32 22, float %11153)  ; Frc(value)
  %11157 = call float @dx.op.unary.f32(i32 22, float %11154)  ; Frc(value)
  %11158 = fsub fast float -0.000000e+00, %11155
  %11159 = fsub fast float -0.000000e+00, %11156
  %11160 = fsub fast float -0.000000e+00, %11157
  %11161 = select i1 %11149, float %11155, float %11158
  %11162 = select i1 %11150, float %11156, float %11159
  %11163 = select i1 %11151, float %11157, float %11160
  %11164 = fmul fast float %11161, 6.000000e+00
  %11165 = fmul fast float %11162, 6.000000e+00
  %11166 = fmul fast float %11163, 6.000000e+00
  %11167 = fadd fast float %11164, -3.000000e+00
  %11168 = fadd fast float %11165, -3.000000e+00
  %11169 = fadd fast float %11166, -3.000000e+00
  %11170 = call float @dx.op.unary.f32(i32 6, float %11167)  ; FAbs(value)
  %11171 = call float @dx.op.unary.f32(i32 6, float %11168)  ; FAbs(value)
  %11172 = call float @dx.op.unary.f32(i32 6, float %11169)  ; FAbs(value)
  %11173 = fadd fast float %11170, -1.000000e+00
  %11174 = fadd fast float %11171, -1.000000e+00
  %11175 = fadd fast float %11172, -1.000000e+00
  %11176 = call float @dx.op.unary.f32(i32 7, float %11173)  ; Saturate(value)
  %11177 = call float @dx.op.unary.f32(i32 7, float %11174)  ; Saturate(value)
  %11178 = call float @dx.op.unary.f32(i32 7, float %11175)  ; Saturate(value)
  br label %11542

; <label>:11179                                   ; preds = %11137
  %11180 = add i32 %10606, -31
  %11181 = icmp ult i32 %11180, 2
  br i1 %11181, label %11182, label %11190

; <label>:11182                                   ; preds = %11179
  %11183 = fcmp fast olt float %429, 0.000000e+00
  %11184 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  %11185 = fmul fast float %11184, 5.000000e-01
  %11186 = call float @dx.op.unary.f32(i32 7, float %11185)  ; Saturate(value)
  %11187 = select i1 %11183, float 0.000000e+00, float %11186
  %11188 = select i1 %11183, float %11186, float 0.000000e+00
  %11189 = fadd fast float %11186, 5.000000e-01
  br label %11542

; <label>:11190                                   ; preds = %11179
  %11191 = icmp eq i32 %10606, 36
  br i1 %11191, label %11192, label %11224

; <label>:11192                                   ; preds = %11190
  %11193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11194 = extractvalue %dx.types.CBufRet.i32 %11193, 0
  %11195 = and i32 %11194, 2048
  %11196 = icmp ne i32 %11195, 0
  %11197 = call float @dx.op.binary.f32(i32 35, float %2368, float %2369)  ; FMax(a,b)
  %11198 = call float @dx.op.binary.f32(i32 35, float %2367, float %11197)  ; FMax(a,b)
  %11199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11200 = extractvalue %dx.types.CBufRet.f32 %11199, 1
  %11201 = fcmp fast oge float %11198, %11200
  %11202 = and i1 %11196, %11201
  br i1 %11202, label %11203, label %11209

; <label>:11203                                   ; preds = %11192
  %11204 = fsub fast float 1.000000e+00, %10585
  %11205 = fmul fast float %11204, 5.000000e-01
  %11206 = fadd fast float %11205, %10585
  %11207 = fmul fast float %10586, 5.000000e-01
  %11208 = fmul fast float %10587, 5.000000e-01
  br label %11542

; <label>:11209                                   ; preds = %11192
  %11210 = call float @dx.op.dot3.f32(i32 55, float %2454, float %2455, float %2456, float %2280, float %2281, float %2282)  ; Dot3(ax,ay,az,bx,by,bz)
  %11211 = and i32 %11194, 1024
  %11212 = icmp ne i32 %11211, 0
  %11213 = extractvalue %dx.types.CBufRet.f32 %11199, 2
  %11214 = fcmp fast ole float %11210, %11213
  %11215 = and i1 %11212, %11214
  br i1 %11215, label %11216, label %11542

; <label>:11216                                   ; preds = %11209
  %11217 = fsub fast float 1.000000e+00, %10585
  %11218 = fsub fast float 1.000000e+00, %10586
  %11219 = fmul fast float %11217, 5.000000e-01
  %11220 = fmul fast float %11218, 5.000000e-01
  %11221 = fadd fast float %11219, %10585
  %11222 = fadd fast float %11220, %10586
  %11223 = fmul fast float %10587, 5.000000e-01
  br label %11542

; <label>:11224                                   ; preds = %11190
  %11225 = icmp eq i32 %10606, 40
  br i1 %11225, label %11226, label %11463

; <label>:11226                                   ; preds = %11224
  %11227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %11228 = extractvalue %dx.types.CBufRet.f32 %11227, 0
  %11229 = fcmp fast ogt float %2351, %11228
  %11230 = zext i1 %11229 to i32
  %11231 = extractvalue %dx.types.CBufRet.f32 %11227, 1
  %11232 = fcmp fast ogt float %2351, %11231
  %11233 = zext i1 %11232 to i32
  %11234 = add nuw nsw i32 %11233, %11230
  %11235 = extractvalue %dx.types.CBufRet.f32 %11227, 2
  %11236 = fcmp fast ogt float %2351, %11235
  %11237 = zext i1 %11236 to i32
  %11238 = add nuw nsw i32 %11234, %11237
  %11239 = icmp ult i32 %11238, 3
  %11240 = zext i1 %11239 to i32
  %11241 = shl nuw nsw i32 %11238, 2
  %11242 = add nuw nsw i32 %11241, 48
  %11243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11242)  ; CBufferLoadLegacy(handle,regIndex)
  %11244 = extractvalue %dx.types.CBufRet.f32 %11243, 1
  %11245 = fcmp fast ogt float %2351, %11244
  %11246 = zext i1 %11245 to i32
  %11247 = or i32 %11241, 1
  %11248 = add nuw nsw i32 %11247, 48
  %11249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11248)  ; CBufferLoadLegacy(handle,regIndex)
  %11250 = extractvalue %dx.types.CBufRet.f32 %11249, 1
  %11251 = fcmp fast ogt float %2351, %11250
  %11252 = zext i1 %11251 to i32
  %11253 = add nuw nsw i32 %11252, %11246
  %11254 = or i32 %11241, 2
  %11255 = add nuw nsw i32 %11254, 48
  %11256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11255)  ; CBufferLoadLegacy(handle,regIndex)
  %11257 = extractvalue %dx.types.CBufRet.f32 %11256, 1
  %11258 = fcmp fast ogt float %2351, %11257
  %11259 = zext i1 %11258 to i32
  %11260 = add nuw nsw i32 %11253, %11259
  %11261 = call i32 @dx.op.binary.i32(i32 40, i32 %11260, i32 3)  ; UMin(a,b)
  %11262 = add i32 %11241, %11261
  %11263 = call i32 @dx.op.binary.i32(i32 40, i32 %11262, i32 12)  ; UMin(a,b)
  %11264 = add i32 %11263, 48
  %11265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11264)  ; CBufferLoadLegacy(handle,regIndex)
  %11266 = extractvalue %dx.types.CBufRet.f32 %11265, 0
  %11267 = fcmp fast oge float %2351, %11266
  %11268 = zext i1 %11267 to i32
  %11269 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %11240)  ; UMin(a,b)
  %11270 = call i32 @dx.op.binary.i32(i32 40, i32 %11268, i32 %11269)  ; UMin(a,b)
  %11271 = fmul fast float %10596, 7.500000e-01
  %11272 = fadd fast float %11271, %10594
  %11273 = fcmp fast ult float %10591, %11272
  br i1 %11273, label %11313, label %11274

; <label>:11274                                   ; preds = %11226
  %11275 = uitofp i32 %11263 to float
  %11276 = fmul fast float %11275, 0x3FE3C6EF40000000
  %11277 = call float @dx.op.unary.f32(i32 22, float %11276)  ; Frc(value)
  %11278 = fadd fast float %11277, 0x3FE5555560000000
  %11279 = fadd fast float %11277, 0x3FD5555560000000
  %11280 = fsub fast float -0.000000e+00, %11277
  %11281 = fsub fast float -0.000000e+00, %11278
  %11282 = fsub fast float -0.000000e+00, %11279
  %11283 = fcmp fast oge float %11277, %11280
  %11284 = fcmp fast oge float %11278, %11281
  %11285 = fcmp fast oge float %11279, %11282
  %11286 = call float @dx.op.unary.f32(i32 6, float %11277)  ; FAbs(value)
  %11287 = call float @dx.op.unary.f32(i32 6, float %11278)  ; FAbs(value)
  %11288 = call float @dx.op.unary.f32(i32 6, float %11279)  ; FAbs(value)
  %11289 = call float @dx.op.unary.f32(i32 22, float %11286)  ; Frc(value)
  %11290 = call float @dx.op.unary.f32(i32 22, float %11287)  ; Frc(value)
  %11291 = call float @dx.op.unary.f32(i32 22, float %11288)  ; Frc(value)
  %11292 = fsub fast float -0.000000e+00, %11289
  %11293 = fsub fast float -0.000000e+00, %11290
  %11294 = fsub fast float -0.000000e+00, %11291
  %11295 = select i1 %11283, float %11289, float %11292
  %11296 = select i1 %11284, float %11290, float %11293
  %11297 = select i1 %11285, float %11291, float %11294
  %11298 = fmul fast float %11295, 6.000000e+00
  %11299 = fmul fast float %11296, 6.000000e+00
  %11300 = fmul fast float %11297, 6.000000e+00
  %11301 = fadd fast float %11298, -3.000000e+00
  %11302 = fadd fast float %11299, -3.000000e+00
  %11303 = fadd fast float %11300, -3.000000e+00
  %11304 = call float @dx.op.unary.f32(i32 6, float %11301)  ; FAbs(value)
  %11305 = call float @dx.op.unary.f32(i32 6, float %11302)  ; FAbs(value)
  %11306 = call float @dx.op.unary.f32(i32 6, float %11303)  ; FAbs(value)
  %11307 = fadd fast float %11304, -1.000000e+00
  %11308 = fadd fast float %11305, -1.000000e+00
  %11309 = fadd fast float %11306, -1.000000e+00
  %11310 = call float @dx.op.unary.f32(i32 7, float %11307)  ; Saturate(value)
  %11311 = call float @dx.op.unary.f32(i32 7, float %11308)  ; Saturate(value)
  %11312 = call float @dx.op.unary.f32(i32 7, float %11309)  ; Saturate(value)
  br label %11450

; <label>:11313                                   ; preds = %11226
  %11314 = fmul fast float %10596, 5.000000e-01
  %11315 = fadd fast float %11314, %10594
  %11316 = fcmp fast ult float %10591, %11315
  br i1 %11316, label %11343, label %11317

; <label>:11317                                   ; preds = %11313
  %11318 = add i32 %11270, 4
  %11319 = icmp eq i32 %11318, 0
  br i1 %11319, label %11450, label %11320

; <label>:11320                                   ; preds = %11317
  br label %11321

; <label>:11321                                   ; preds = %11321, %11320
  %11322 = phi float [ %11338, %11321 ], [ 0.000000e+00, %11320 ]
  %11323 = phi i32 [ %11339, %11321 ], [ 0, %11320 ]
  %11324 = add i32 %11263, 32
  %11325 = add i32 %11324, %11323
  %11326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11325)  ; CBufferLoadLegacy(handle,regIndex)
  %11327 = extractvalue %dx.types.CBufRet.f32 %11326, 0
  %11328 = extractvalue %dx.types.CBufRet.f32 %11326, 1
  %11329 = extractvalue %dx.types.CBufRet.f32 %11326, 2
  %11330 = extractvalue %dx.types.CBufRet.f32 %11326, 3
  %11331 = fmul fast float %11327, %2351
  %11332 = fadd fast float %11331, %11328
  %11333 = call float @dx.op.unary.f32(i32 7, float %11332)  ; Saturate(value)
  %11334 = fmul fast float %11329, %2351
  %11335 = fadd fast float %11334, %11330
  %11336 = call float @dx.op.unary.f32(i32 7, float %11335)  ; Saturate(value)
  %11337 = call float @dx.op.binary.f32(i32 36, float %11333, float %11336)  ; FMin(a,b)
  %11338 = fadd fast float %11337, %11322
  %11339 = add nuw i32 %11323, 1
  %11340 = icmp eq i32 %11339, %11318
  br i1 %11340, label %11341, label %11321

; <label>:11341                                   ; preds = %11321
  %11342 = fmul float %11338, 2.500000e-01
  br label %11450

; <label>:11343                                   ; preds = %11313
  %11344 = fmul fast float %10596, 2.500000e-01
  %11345 = fadd fast float %11344, %10594
  %11346 = fcmp fast ult float %10591, %11345
  br i1 %11346, label %11446, label %11347

; <label>:11347                                   ; preds = %11343
  %11348 = add i32 %11263, 32
  %11349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11348)  ; CBufferLoadLegacy(handle,regIndex)
  %11350 = extractvalue %dx.types.CBufRet.f32 %11349, 0
  %11351 = extractvalue %dx.types.CBufRet.f32 %11349, 1
  %11352 = extractvalue %dx.types.CBufRet.f32 %11349, 2
  %11353 = extractvalue %dx.types.CBufRet.f32 %11349, 3
  %11354 = fmul fast float %11350, %2351
  %11355 = fadd fast float %11354, %11351
  %11356 = call float @dx.op.unary.f32(i32 7, float %11355)  ; Saturate(value)
  %11357 = fmul fast float %11352, %2351
  %11358 = fadd fast float %11357, %11353
  %11359 = call float @dx.op.unary.f32(i32 7, float %11358)  ; Saturate(value)
  %11360 = call float @dx.op.binary.f32(i32 36, float %11356, float %11359)  ; FMin(a,b)
  %11361 = uitofp i32 %11263 to float
  %11362 = fmul fast float %11361, 0x3FE3C6EF40000000
  %11363 = call float @dx.op.unary.f32(i32 22, float %11362)  ; Frc(value)
  %11364 = fadd fast float %11363, 0x3FE5555560000000
  %11365 = fadd fast float %11363, 0x3FD5555560000000
  %11366 = fsub fast float -0.000000e+00, %11363
  %11367 = fsub fast float -0.000000e+00, %11364
  %11368 = fsub fast float -0.000000e+00, %11365
  %11369 = fcmp fast oge float %11363, %11366
  %11370 = fcmp fast oge float %11364, %11367
  %11371 = fcmp fast oge float %11365, %11368
  %11372 = call float @dx.op.unary.f32(i32 6, float %11363)  ; FAbs(value)
  %11373 = call float @dx.op.unary.f32(i32 6, float %11364)  ; FAbs(value)
  %11374 = call float @dx.op.unary.f32(i32 6, float %11365)  ; FAbs(value)
  %11375 = call float @dx.op.unary.f32(i32 22, float %11372)  ; Frc(value)
  %11376 = call float @dx.op.unary.f32(i32 22, float %11373)  ; Frc(value)
  %11377 = call float @dx.op.unary.f32(i32 22, float %11374)  ; Frc(value)
  %11378 = fsub fast float -0.000000e+00, %11375
  %11379 = fsub fast float -0.000000e+00, %11376
  %11380 = fsub fast float -0.000000e+00, %11377
  %11381 = select i1 %11369, float %11375, float %11378
  %11382 = select i1 %11370, float %11376, float %11379
  %11383 = select i1 %11371, float %11377, float %11380
  %11384 = fmul fast float %11381, 6.000000e+00
  %11385 = fmul fast float %11382, 6.000000e+00
  %11386 = fmul fast float %11383, 6.000000e+00
  %11387 = fadd fast float %11384, -3.000000e+00
  %11388 = fadd fast float %11385, -3.000000e+00
  %11389 = fadd fast float %11386, -3.000000e+00
  %11390 = call float @dx.op.unary.f32(i32 6, float %11387)  ; FAbs(value)
  %11391 = call float @dx.op.unary.f32(i32 6, float %11388)  ; FAbs(value)
  %11392 = call float @dx.op.unary.f32(i32 6, float %11389)  ; FAbs(value)
  %11393 = fadd fast float %11390, -1.000000e+00
  %11394 = fadd fast float %11391, -1.000000e+00
  %11395 = fadd fast float %11392, -1.000000e+00
  %11396 = call float @dx.op.unary.f32(i32 7, float %11393)  ; Saturate(value)
  %11397 = call float @dx.op.unary.f32(i32 7, float %11394)  ; Saturate(value)
  %11398 = call float @dx.op.unary.f32(i32 7, float %11395)  ; Saturate(value)
  %11399 = fadd fast float %11361, 1.000000e+00
  %11400 = fmul fast float %11399, 0x3FE3C6EF40000000
  %11401 = call float @dx.op.unary.f32(i32 22, float %11400)  ; Frc(value)
  %11402 = fadd fast float %11401, 0x3FE5555560000000
  %11403 = fadd fast float %11401, 0x3FD5555560000000
  %11404 = fsub fast float -0.000000e+00, %11401
  %11405 = fsub fast float -0.000000e+00, %11402
  %11406 = fsub fast float -0.000000e+00, %11403
  %11407 = fcmp fast oge float %11401, %11404
  %11408 = fcmp fast oge float %11402, %11405
  %11409 = fcmp fast oge float %11403, %11406
  %11410 = call float @dx.op.unary.f32(i32 6, float %11401)  ; FAbs(value)
  %11411 = call float @dx.op.unary.f32(i32 6, float %11402)  ; FAbs(value)
  %11412 = call float @dx.op.unary.f32(i32 6, float %11403)  ; FAbs(value)
  %11413 = call float @dx.op.unary.f32(i32 22, float %11410)  ; Frc(value)
  %11414 = call float @dx.op.unary.f32(i32 22, float %11411)  ; Frc(value)
  %11415 = call float @dx.op.unary.f32(i32 22, float %11412)  ; Frc(value)
  %11416 = fsub fast float -0.000000e+00, %11413
  %11417 = fsub fast float -0.000000e+00, %11414
  %11418 = fsub fast float -0.000000e+00, %11415
  %11419 = select i1 %11407, float %11413, float %11416
  %11420 = select i1 %11408, float %11414, float %11417
  %11421 = select i1 %11409, float %11415, float %11418
  %11422 = fmul fast float %11419, 6.000000e+00
  %11423 = fmul fast float %11420, 6.000000e+00
  %11424 = fmul fast float %11421, 6.000000e+00
  %11425 = fadd fast float %11422, -3.000000e+00
  %11426 = fadd fast float %11423, -3.000000e+00
  %11427 = fadd fast float %11424, -3.000000e+00
  %11428 = call float @dx.op.unary.f32(i32 6, float %11425)  ; FAbs(value)
  %11429 = call float @dx.op.unary.f32(i32 6, float %11426)  ; FAbs(value)
  %11430 = call float @dx.op.unary.f32(i32 6, float %11427)  ; FAbs(value)
  %11431 = fadd fast float %11428, -1.000000e+00
  %11432 = fadd fast float %11429, -1.000000e+00
  %11433 = fadd fast float %11430, -1.000000e+00
  %11434 = call float @dx.op.unary.f32(i32 7, float %11431)  ; Saturate(value)
  %11435 = call float @dx.op.unary.f32(i32 7, float %11432)  ; Saturate(value)
  %11436 = call float @dx.op.unary.f32(i32 7, float %11433)  ; Saturate(value)
  %11437 = fsub fast float %11434, %11396
  %11438 = fsub fast float %11435, %11397
  %11439 = fsub fast float %11436, %11398
  %11440 = fmul fast float %11437, %11360
  %11441 = fmul fast float %11438, %11360
  %11442 = fmul fast float %11439, %11360
  %11443 = fadd fast float %11440, %11396
  %11444 = fadd fast float %11441, %11397
  %11445 = fadd fast float %11442, %11398
  br label %11450

; <label>:11446                                   ; preds = %11343
  %11447 = icmp ne i32 %11270, 0
  %11448 = select i1 %11447, float 1.000000e+00, float 0.000000e+00
  %11449 = select i1 %11447, float 0.000000e+00, float 1.000000e+00
  br label %11450

; <label>:11450                                   ; preds = %11446, %11347, %11341, %11317, %11274
  %11451 = phi float [ %11310, %11274 ], [ %11443, %11347 ], [ %11448, %11446 ], [ 0.000000e+00, %11317 ], [ %11342, %11341 ]
  %11452 = phi float [ %11311, %11274 ], [ %11444, %11347 ], [ %11449, %11446 ], [ 0.000000e+00, %11317 ], [ %11342, %11341 ]
  %11453 = phi float [ %11312, %11274 ], [ %11445, %11347 ], [ 0.000000e+00, %11446 ], [ 0.000000e+00, %11317 ], [ %11342, %11341 ]
  %11454 = fsub fast float %11451, %10585
  %11455 = fsub fast float %11452, %10586
  %11456 = fsub fast float %11453, %10587
  %11457 = fmul fast float %11454, 5.000000e-01
  %11458 = fmul fast float %11455, 5.000000e-01
  %11459 = fmul fast float %11456, 5.000000e-01
  %11460 = fadd fast float %11457, %10585
  %11461 = fadd fast float %11458, %10586
  %11462 = fadd fast float %11459, %10587
  br label %11542

; <label>:11463                                   ; preds = %11224
  %11464 = icmp eq i32 %10606, 41
  br i1 %11464, label %11465, label %11534

; <label>:11465                                   ; preds = %11463
  %11466 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11467 = extractvalue %dx.types.CBufRet.i32 %11466, 0
  %11468 = icmp eq i32 %11467, 2
  %11469 = and i1 %920, %11468
  %11470 = icmp eq i32 %11467, 3
  %11471 = and i1 %922, %11470
  %11472 = or i1 %11471, %11469
  %11473 = icmp eq i32 %11467, 4
  %11474 = and i1 %934, %11473
  %11475 = or i1 %11474, %11472
  %11476 = icmp eq i32 %11467, 5
  %11477 = icmp ne i32 %937, 0
  %11478 = and i1 %11477, %11476
  %11479 = or i1 %11478, %11475
  %11480 = icmp eq i32 %11467, 6
  %11481 = and i1 %940, %11480
  %11482 = or i1 %11481, %11479
  %11483 = icmp eq i32 %11467, 8
  %11484 = and i32 %1257, 64
  %11485 = icmp ne i32 %11484, 0
  %11486 = and i1 %11485, %11483
  %11487 = or i1 %11486, %11482
  %11488 = icmp eq i32 %11467, 9
  %11489 = and i32 %1262, 128
  %11490 = icmp ne i32 %11489, 0
  %11491 = and i1 %11490, %11488
  %11492 = or i1 %11491, %11487
  %11493 = icmp eq i32 %11467, 11
  %11494 = and i32 %1262, 160
  %11495 = icmp ne i32 %11494, 0
  %11496 = and i1 %11495, %11493
  %11497 = or i1 %11496, %11492
  %11498 = icmp eq i32 %11467, 13
  %11499 = icmp ne i32 %943, 0
  %11500 = and i1 %11499, %11498
  %11501 = or i1 %11500, %11497
  %11502 = icmp eq i32 %11467, 14
  %11503 = and i1 %1720, %11502
  %11504 = or i1 %11503, %11501
  %11505 = icmp eq i32 %11467, 7
  %11506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %11507 = extractvalue %dx.types.ResRet.i32 %11506, 0
  %11508 = and i32 %11507, 1024
  %11509 = icmp ne i32 %11508, 0
  %11510 = and i1 %11505, %11509
  %11511 = or i1 %11510, %11504
  %11512 = icmp eq i32 %11467, 10
  %11513 = and i32 %11507, 2048
  %11514 = icmp ne i32 %11513, 0
  %11515 = and i1 %11512, %11514
  %11516 = or i1 %11515, %11511
  %11517 = icmp eq i32 %11467, 12
  %11518 = and i32 %11507, 3072
  %11519 = icmp ne i32 %11518, 0
  %11520 = and i1 %11517, %11519
  %11521 = or i1 %11520, %11516
  %11522 = icmp eq i32 %11467, 15
  %11523 = and i32 %11507, 4096
  %11524 = icmp ne i32 %11523, 0
  %11525 = and i1 %11522, %11524
  %11526 = or i1 %11525, %11521
  %11527 = select i1 %11526, float 5.000000e-01, float %10585
  %11528 = select i1 %11526, float 0x3FB99999A0000000, float %10586
  %11529 = select i1 %11526, float 0x3FB99999A0000000, float %10587
  %11530 = fcmp fast ogt float %72, 0.000000e+00
  %11531 = and i1 %11530, %11505
  %11532 = select i1 %11531, float 1.000000e+00, float %11528
  %11533 = select i1 %11531, float 1.000000e+00, float %11529
  br label %11542

; <label>:11534                                   ; preds = %11463
  %11535 = icmp eq i32 %10606, 45
  br i1 %11535, label %11536, label %11542

; <label>:11536                                   ; preds = %11534
  %11537 = fcmp fast ogt float %1631, %1646
  %11538 = fsub fast float %1631, %1646
  %11539 = call float @dx.op.unary.f32(i32 6, float %11538)  ; FAbs(value)
  %11540 = select i1 %11537, float %11539, float 0.000000e+00
  %11541 = select i1 %11537, float 0.000000e+00, float %11539
  br label %11542

; <label>:11542                                   ; preds = %11536, %11534, %11465, %11450, %11216, %11209, %11203, %11182, %11141, %11139, %11082, %11078, %11052, %11048, %10986, %10944, %10889, %10884, %10870, %10828, %10821, %10816, %10812, %10810, %10808, %10806, %10804, %10802, %10800, %10798, %10796, %10794, %10780, %10776, %10774, %10772, %10763, %10672, %10652, %10611, %10584
  %11543 = phi float [ %10647, %10611 ], [ %10653, %10652 ], [ %10757, %10672 ], [ %10769, %10763 ], [ %10789, %10780 ], [ %10795, %10794 ], [ %10819, %10816 ], [ %10886, %10884 ], [ %10939, %10889 ], [ %11045, %10986 ], [ %11072, %11052 ], [ %11134, %11082 ], [ %11176, %11141 ], [ %11189, %11182 ], [ %11206, %11203 ], [ %11221, %11216 ], [ %10585, %11209 ], [ %11460, %11450 ], [ %11527, %11465 ], [ %11540, %11536 ], [ %10585, %11534 ], [ %10585, %10584 ], [ 0.000000e+00, %10772 ], [ 0.000000e+00, %10810 ], [ %72, %10821 ], [ 1.000000e+00, %10870 ], [ 0.000000e+00, %10828 ], [ 0.000000e+00, %10944 ], [ 0.000000e+00, %11139 ], [ %304, %10774 ], [ %319, %10776 ], [ %359, %10796 ], [ %372, %10798 ], [ %626, %10800 ], [ %78, %10802 ], [ %918, %10804 ], [ %919, %10806 ], [ %1670, %10808 ], [ %72, %10812 ], [ 0.000000e+00, %11048 ], [ 0.000000e+00, %11078 ]
  %11544 = phi float [ %10648, %10611 ], [ %10654, %10652 ], [ %10758, %10672 ], [ %10770, %10763 ], [ %10791, %10780 ], [ %10795, %10794 ], [ %10820, %10816 ], [ %10887, %10884 ], [ %10940, %10889 ], [ %11046, %10986 ], [ %11074, %11052 ], [ %11135, %11082 ], [ %11177, %11141 ], [ %11187, %11182 ], [ %11207, %11203 ], [ %11222, %11216 ], [ %10586, %11209 ], [ %11461, %11450 ], [ %11532, %11465 ], [ %11541, %11536 ], [ %10586, %11534 ], [ %10586, %10584 ], [ 0.000000e+00, %10772 ], [ 1.000000e+00, %10810 ], [ %73, %10821 ], [ 0.000000e+00, %10870 ], [ 1.000000e+00, %10828 ], [ 1.000000e+00, %10944 ], [ 1.000000e+00, %11139 ], [ %304, %10774 ], [ %319, %10776 ], [ %359, %10796 ], [ %372, %10798 ], [ %626, %10800 ], [ %78, %10802 ], [ %918, %10804 ], [ %919, %10806 ], [ %1670, %10808 ], [ %73, %10812 ], [ 0.000000e+00, %11048 ], [ 0.000000e+00, %11078 ]
  %11545 = phi float [ %10649, %10611 ], [ %10655, %10652 ], [ %10759, %10672 ], [ %10771, %10763 ], [ 0.000000e+00, %10780 ], [ %10795, %10794 ], [ %917, %10816 ], [ %10888, %10884 ], [ %10941, %10889 ], [ %11047, %10986 ], [ %11077, %11052 ], [ %11136, %11082 ], [ %11178, %11141 ], [ %11188, %11182 ], [ %11208, %11203 ], [ %11223, %11216 ], [ %10587, %11209 ], [ %11462, %11450 ], [ %11533, %11465 ], [ 0.000000e+00, %11536 ], [ %10587, %11534 ], [ %10587, %10584 ], [ 0.000000e+00, %10772 ], [ 1.000000e+00, %10810 ], [ %74, %10821 ], [ 1.000000e+00, %10870 ], [ 1.000000e+00, %10828 ], [ 1.000000e+00, %10944 ], [ 0.000000e+00, %11139 ], [ %304, %10774 ], [ %319, %10776 ], [ %359, %10796 ], [ %372, %10798 ], [ %626, %10800 ], [ %78, %10802 ], [ %918, %10804 ], [ %919, %10806 ], [ %1670, %10808 ], [ %74, %10812 ], [ 0.000000e+00, %11048 ], [ 1.000000e+00, %11078 ]
  %11546 = fadd fast float %1755, 0x3FE3C6EF40000000
  %11547 = call float @dx.op.unary.f32(i32 22, float %11546)  ; Frc(value)
  %11548 = call float @dx.op.unary.f32(i32 23, float %11543)  ; Log(value)
  %11549 = fadd fast float %11548, -7.000000e+00
  %11550 = call float @dx.op.unary.f32(i32 21, float %11549)  ; Exp(value)
  %11551 = fmul fast float %11547, 2.000000e+00
  %11552 = fadd fast float %11551, -1.000000e+00
  %11553 = fmul fast float %11550, %11552
  %11554 = fcmp fast ogt float %11543, 0.000000e+00
  %11555 = select i1 %11554, float %11553, float 0.000000e+00
  %11556 = fadd fast float %11555, %11543
  %11557 = fadd fast float %1755, 0x3FF3C6EF40000000
  %11558 = call float @dx.op.unary.f32(i32 22, float %11557)  ; Frc(value)
  %11559 = call float @dx.op.unary.f32(i32 23, float %11544)  ; Log(value)
  %11560 = fadd fast float %11559, -7.000000e+00
  %11561 = call float @dx.op.unary.f32(i32 21, float %11560)  ; Exp(value)
  %11562 = fmul fast float %11558, 2.000000e+00
  %11563 = fadd fast float %11562, -1.000000e+00
  %11564 = fmul fast float %11561, %11563
  %11565 = fcmp fast ogt float %11544, 0.000000e+00
  %11566 = select i1 %11565, float %11564, float 0.000000e+00
  %11567 = fadd fast float %11566, %11544
  %11568 = fadd fast float %1755, 0x3FFDAA66E0000000
  %11569 = call float @dx.op.unary.f32(i32 22, float %11568)  ; Frc(value)
  %11570 = call float @dx.op.unary.f32(i32 23, float %11545)  ; Log(value)
  %11571 = fadd fast float %11570, -6.000000e+00
  %11572 = call float @dx.op.unary.f32(i32 21, float %11571)  ; Exp(value)
  %11573 = fmul fast float %11569, 2.000000e+00
  %11574 = fadd fast float %11573, -1.000000e+00
  %11575 = fmul fast float %11572, %11574
  %11576 = fcmp fast ogt float %11545, 0.000000e+00
  %11577 = select i1 %11576, float %11575, float 0.000000e+00
  %11578 = fadd fast float %11577, %11545
  %11579 = call float @dx.op.binary.f32(i32 36, float %11556, float 3.225500e+04)  ; FMin(a,b)
  %11580 = call float @dx.op.binary.f32(i32 36, float %11567, float 3.225500e+04)  ; FMin(a,b)
  %11581 = call float @dx.op.binary.f32(i32 36, float %11578, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11579)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11580)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11581)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:11582                                   ; preds = %9749
  %11583 = fcmp fast olt float %2410, %9732
  br i1 %11583, label %9735, label %11584

; <label>:11584                                   ; preds = %11582
  %11585 = fcmp fast olt float %2410, %9733
  br i1 %11585, label %9735, label %9936

; <label>:11586                                   ; preds = %9827
  %11587 = fcmp fast olt float %87, 5.120000e+02
  br i1 %11587, label %9813, label %11588

; <label>:11588                                   ; preds = %11586
  %11589 = fcmp fast olt float %87, 1.024000e+03
  br i1 %11589, label %9813, label %11590

; <label>:11590                                   ; preds = %11588
  %11591 = fcmp fast olt float %87, 1.536000e+03
  br i1 %11591, label %9813, label %11592

; <label>:11592                                   ; preds = %11590
  %11593 = fcmp fast olt float %87, 2.048000e+03
  br i1 %11593, label %9813, label %11594

; <label>:11594                                   ; preds = %11592
  %11595 = fcmp fast olt float %87, 3.072000e+03
  br i1 %11595, label %9813, label %11596

; <label>:11596                                   ; preds = %11594
  %11597 = fcmp fast olt float %87, 4.096000e+03
  br i1 %11597, label %9813, label %11598

; <label>:11598                                   ; preds = %11596
  %11599 = fcmp fast olt float %87, 6.144000e+03
  br i1 %11599, label %9813, label %11600

; <label>:11600                                   ; preds = %11598
  %11601 = fcmp fast olt float %87, 8.192000e+03
  br i1 %11601, label %9813, label %9936

; <label>:11602                                   ; preds = %9859
  %11603 = fcmp fast olt float %8673, %9842
  br i1 %11603, label %9845, label %11604

; <label>:11604                                   ; preds = %11602
  %11605 = fcmp fast olt float %8673, %9843
  br i1 %11605, label %9845, label %9936
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

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!82}
!dx.entryPoints = !{!83}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !67, !70, !74}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
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
!40 = !{i32 31, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!41 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!42 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 1, i32 1, i32 11, i32 0, null}
!43 = !{i32 34, %"class.Texture1D<float>"* undef, !"", i32 2, i32 32, i32 1, i32 1, i32 0, !7}
!44 = !{i32 35, %"class.Texture3D<float>"* undef, !"", i32 2, i32 82, i32 1, i32 4, i32 0, !7}
!45 = !{i32 36, %"class.Texture1D<float>"* undef, !"", i32 2, i32 30, i32 1, i32 1, i32 0, !7}
!46 = !{i32 37, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 44, i32 1, i32 4, i32 0, !7}
!47 = !{i32 38, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 45, i32 1, i32 4, i32 0, !7}
!48 = !{i32 39, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 47, i32 1, i32 7, i32 0, !7}
!49 = !{i32 40, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 8, i32 1, i32 7, i32 0, !7}
!50 = !{i32 41, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 2, i32 1, i32 2, i32 0, !7}
!51 = !{i32 42, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 3, i32 1, i32 2, i32 0, !7}
!52 = !{i32 43, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 4, i32 1, i32 2, i32 0, !7}
!53 = !{i32 44, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 80, i32 1, i32 7, i32 0, !12}
!54 = !{i32 45, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 67, i32 1, i32 11, i32 0, null}
!55 = !{i32 46, %"class.Texture2D<float>"* undef, !"", i32 2, i32 7, i32 1, i32 2, i32 0, !7}
!56 = !{i32 47, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 6, i32 1, i32 2, i32 0, !7}
!57 = !{i32 48, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 5, i32 1, i32 2, i32 0, !7}
!58 = !{i32 49, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 38, i32 1, i32 2, i32 0, !7}
!59 = !{i32 50, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!60 = !{i32 51, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!61 = !{i32 52, %"class.Texture2D<float>"* undef, !"", i32 2, i32 83, i32 1, i32 2, i32 0, !7}
!62 = !{i32 53, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 86, i32 1, i32 2, i32 0, !7}
!63 = !{i32 54, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!64 = !{i32 55, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!65 = !{i32 56, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!66 = !{i32 57, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 10, i32 1, i32 7, i32 0, !7}
!67 = !{!68}
!68 = !{i32 0, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !69}
!69 = !{i32 1, i32 1144}
!70 = !{!71, !72, !73}
!71 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!72 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!73 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!74 = !{!75, !76, !77, !78, !79, !80, !81}
!75 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!76 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!77 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!78 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!79 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!80 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!81 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!82 = !{[29 x i32] [i32 27, i32 4, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 2, i32 4, i32 0, i32 1, i32 2, i32 4]}
!83 = !{void ()* @ps_main, !"ps_main", !84, !4, !105}
!84 = !{!85, !103, null}
!85 = !{!86, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102}
!86 = !{i32 0, !"SV_Position", i8 9, i8 3, !87, i8 4, i32 1, i8 4, i32 0, i8 0, !88}
!87 = !{i32 0}
!88 = !{i32 3, i32 15}
!89 = !{i32 1, !"NORMAL", i8 9, i8 0, !87, i8 2, i32 1, i8 3, i32 1, i8 0, !90}
!90 = !{i32 3, i32 7}
!91 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !87, i8 2, i32 1, i8 2, i32 2, i8 0, !92}
!92 = !{i32 3, i32 3}
!93 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !87, i8 2, i32 1, i8 1, i32 1, i8 3, !94}
!94 = !{i32 3, i32 1}
!95 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !87, i8 1, i32 1, i8 1, i32 3, i8 0, !94}
!96 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !87, i8 1, i32 1, i8 1, i32 3, i8 1, !94}
!97 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !87, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!98 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !99, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!99 = !{i32 1}
!100 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !87, i8 2, i32 1, i8 4, i32 5, i8 0, !90}
!101 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !87, i8 2, i32 1, i8 3, i32 6, i8 0, !90}
!102 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !87, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!103 = !{!104}
!104 = !{i32 0, !"SV_Target", i8 9, i8 16, !87, i8 0, i32 1, i8 4, i32 0, i8 0, !88}
!105 = !{i32 0, i64 24}
!106 = !{!107, !107, i64 0}
!107 = !{!"float", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!111, !113, !114}
!111 = distinct !{!111, !112, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!112 = distinct !{!112, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!113 = distinct !{!113, !112, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!114 = distinct !{!114, !112, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!115 = !{!116, !118, !119, !120, !121}
!116 = distinct !{!116, !117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!117 = distinct !{!117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!118 = distinct !{!118, !117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!119 = distinct !{!119, !117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!120 = distinct !{!120, !117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!121 = distinct !{!121, !117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.unroll.disable"}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !123}
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
!143 = distinct !{!143, !"dx.controlflow.hints", i32 1}
!144 = !{!145, !145, i64 0}
!145 = !{!"int", !108, i64 0}
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
!157 = distinct !{!157, !123}
!158 = distinct !{!158, !123}
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

