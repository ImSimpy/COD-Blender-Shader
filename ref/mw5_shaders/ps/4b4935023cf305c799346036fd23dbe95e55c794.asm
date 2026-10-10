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
; shader hash: 23fb10ae102041bf7da0e4284c5c1052
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
  %202 = shl nuw nsw i32 %201, 16
  %203 = or i32 %202, %197
  %204 = mul nuw nsw i32 %197, 148
  %205 = add nuw nsw i32 %204, 4
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = add nuw nsw i32 %204, 8
  %209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = add nuw nsw i32 %204, 48
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = add nuw nsw i32 %204, 60
  %215 = add nuw nsw i32 %204, 92
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = add nuw nsw i32 %204, 96
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = add nuw nsw i32 %204, 100
  %221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %222 = extractvalue %dx.types.ResRet.i32 %221, 0
  %223 = add nuw nsw i32 %204, 104
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = add nuw nsw i32 %204, 108
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = add nuw nsw i32 %204, 116
  %230 = fsub fast float 1.000000e+00, %80
  %231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %232 = extractvalue %dx.types.CBufRet.f32 %231, 2
  %233 = fmul fast float %232, %79
  %234 = fmul fast float %232, %230
  %235 = fadd fast float %233, %207
  %236 = fadd fast float %234, %210
  %237 = call float @dx.op.unary.f32(i32 84, float %235)  ; DerivCoarseY(value)
  %238 = call float @dx.op.unary.f32(i32 84, float %236)  ; DerivCoarseY(value)
  %239 = call float @dx.op.unary.f32(i32 83, float %235)  ; DerivCoarseX(value)
  %240 = call float @dx.op.unary.f32(i32 83, float %236)  ; DerivCoarseX(value)
  %241 = call float @dx.op.dot2.f32(i32 54, float %237, float %238, float %237, float %238)  ; Dot2(ax,ay,bx,by)
  %242 = call float @dx.op.dot2.f32(i32 54, float %239, float %240, float %239, float %240)  ; Dot2(ax,ay,bx,by)
  %243 = call float @dx.op.binary.f32(i32 35, float %242, float %241)  ; FMax(a,b)
  %244 = call float @dx.op.unary.f32(i32 23, float %243)  ; Log(value)
  %245 = fmul fast float %244, 5.000000e-01
  %246 = add nuw nsw i32 %204, 20
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = add nuw nsw i32 %204, 24
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = add nuw nsw i32 %204, 28
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = add nuw nsw i32 %204, 32
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = add nuw nsw i32 %204, 40
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = add nuw nsw i32 %204, 44
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = add nuw nsw i32 %204, 52
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = add nuw nsw i32 %204, 56
  %270 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.f32 %270, 0
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %220, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = add nuw nsw i32 %204, 112
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %284 = extractvalue %dx.types.CBufRet.f32 %283, 2
  %285 = fmul fast float %284, %79
  %286 = fmul fast float %284, %80
  %287 = extractvalue %dx.types.CBufRet.f32 %283, 3
  %288 = fadd fast float %285, %287
  %289 = fadd fast float %286, %287
  %290 = extractvalue %dx.types.CBufRet.f32 %283, 0
  %291 = fmul fast float %290, %79
  %292 = fmul fast float %290, %80
  %293 = extractvalue %dx.types.CBufRet.f32 %283, 1
  %294 = fadd fast float %291, %293
  %295 = fadd fast float %292, %293
  %296 = add i32 %273, 0
  %297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %298 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %297, i32 0)  ; GetDimensions(handle,mipLevel)
  %299 = extractvalue %dx.types.Dimensions %298, 0
  %300 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %299)  ; FirstbitLo(value)
  %301 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %302 = extractvalue %dx.types.CBufRet.i32 %301, 1
  %303 = sub nsw i32 %302, %300
  %304 = sitofp i32 %303 to float
  %305 = fsub fast float %177, %304
  %306 = call float @dx.op.binary.f32(i32 35, float %305, float 0.000000e+00)  ; FMax(a,b)
  %307 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %297, %dx.types.Handle %59, float %288, float %289, float %260, float undef, i32 0, i32 0, i32 undef, float %306)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = fmul fast float %308, %248
  %310 = fadd fast float %309, %251
  %311 = add i32 %275, 0
  %312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %311, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %313 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %312, i32 0)  ; GetDimensions(handle,mipLevel)
  %314 = extractvalue %dx.types.Dimensions %313, 0
  %315 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %314)  ; FirstbitLo(value)
  %316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %317 = extractvalue %dx.types.CBufRet.i32 %316, 1
  %318 = sub nsw i32 %317, %315
  %319 = sitofp i32 %318 to float
  %320 = fsub fast float %177, %319
  %321 = call float @dx.op.binary.f32(i32 35, float %320, float 0.000000e+00)  ; FMax(a,b)
  %322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %312, %dx.types.Handle %59, float %294, float %295, float %263, float undef, i32 0, i32 0, i32 undef, float %321)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = fmul fast float %323, %254
  %325 = fadd fast float %324, %257
  %326 = add i32 %277, 0
  %327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %326, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %328 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %327, i32 0)  ; GetDimensions(handle,mipLevel)
  %329 = extractvalue %dx.types.Dimensions %328, 0
  %330 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %329)  ; FirstbitLo(value)
  %331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.i32 %331, 1
  %333 = sub nsw i32 %332, %330
  %334 = sitofp i32 %333 to float
  %335 = fsub fast float %177, %334
  %336 = call float @dx.op.binary.f32(i32 35, float %335, float 0.000000e+00)  ; FMax(a,b)
  %337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %327, %dx.types.Handle %59, float %294, float %295, float %265, float undef, i32 0, i32 0, i32 undef, float %336)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %338 = extractvalue %dx.types.ResRet.f32 %337, 0
  %339 = extractvalue %dx.types.ResRet.f32 %337, 1
  %340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %341 = extractvalue %dx.types.CBufRet.f32 %340, 3
  %342 = fmul fast float %341, 2.000000e+00
  %343 = fmul fast float %342, %338
  %344 = fmul fast float %342, %339
  %345 = fsub fast float %343, %341
  %346 = fsub fast float %344, %341
  %347 = fmul fast float %345, %345
  %348 = fmul fast float %346, %346
  %349 = fadd fast float %347, %348
  %350 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %351 = add i32 %279, 0
  %352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %353 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %352, i32 0)  ; GetDimensions(handle,mipLevel)
  %354 = extractvalue %dx.types.Dimensions %353, 0
  %355 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %354)  ; FirstbitLo(value)
  %356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %357 = extractvalue %dx.types.CBufRet.i32 %356, 1
  %358 = sub nsw i32 %357, %355
  %359 = sitofp i32 %358 to float
  %360 = fsub fast float %177, %359
  %361 = call float @dx.op.binary.f32(i32 35, float %360, float 0.000000e+00)  ; FMax(a,b)
  %362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %352, %dx.types.Handle %59, float %294, float %295, float %268, float undef, i32 0, i32 0, i32 undef, float %361)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %363 = extractvalue %dx.types.ResRet.f32 %362, 0
  %364 = add i32 %282, 0
  %365 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %364, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %366 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %365, i32 0)  ; GetDimensions(handle,mipLevel)
  %367 = extractvalue %dx.types.Dimensions %366, 0
  %368 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %367)  ; FirstbitLo(value)
  %369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %370 = extractvalue %dx.types.CBufRet.i32 %369, 1
  %371 = sub nsw i32 %370, %368
  %372 = sitofp i32 %371 to float
  %373 = fsub fast float %177, %372
  %374 = call float @dx.op.binary.f32(i32 35, float %373, float 0.000000e+00)  ; FMax(a,b)
  %375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %365, %dx.types.Handle %59, float %294, float %295, float %271, float undef, i32 0, i32 0, i32 undef, float %374)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %376 = extractvalue %dx.types.ResRet.f32 %375, 0
  %377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %378 = extractvalue %dx.types.CBufRet.i32 %377, 0
  %379 = call i32 @dx.op.binary.i32(i32 40, i32 %197, i32 %378)  ; UMin(a,b)
  %380 = mul i32 %379, 36
  %381 = add i32 %380, 4
  %382 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %201)  ; Countbits(value)
  %383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.i32 %383, 0
  %385 = icmp eq i32 %384, 32
  %386 = select i1 %385, float %72, float %177
  %387 = and i32 %384, -2
  %388 = icmp eq i32 %387, 30
  %389 = or i1 %388, %385
  br i1 %389, label %390, label %431

; <label>:390                                     ; preds = %0
  %391 = extractvalue %dx.types.ResRet.i32 %216, 0
  %392 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.i32 %392, 0
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %410, label %395

; <label>:395                                     ; preds = %390
  %396 = icmp eq i32 %393, 1
  br i1 %396, label %410, label %397

; <label>:397                                     ; preds = %395
  %398 = icmp eq i32 %393, 2
  br i1 %398, label %410, label %399

; <label>:399                                     ; preds = %397
  %400 = icmp eq i32 %393, 3
  br i1 %400, label %410, label %401

; <label>:401                                     ; preds = %399
  %402 = icmp eq i32 %393, 4
  br i1 %402, label %410, label %403

; <label>:403                                     ; preds = %401
  %404 = call i32 @dx.op.binary.i32(i32 39, i32 %393, i32 6)  ; UMax(a,b)
  %405 = call i32 @dx.op.binary.i32(i32 40, i32 %404, i32 13)  ; UMin(a,b)
  %406 = shl i32 %405, 2
  %407 = add i32 %215, %406
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  br label %410

; <label>:410                                     ; preds = %403, %401, %399, %397, %395, %390
  %411 = phi i32 [ %409, %403 ], [ %391, %390 ], [ %219, %395 ], [ %222, %397 ], [ %225, %399 ], [ %228, %401 ]
  %412 = add i32 %411, 0
  %413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %412, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %414 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %413, i32 0)  ; GetDimensions(handle,mipLevel)
  %415 = extractvalue %dx.types.Dimensions %414, 0
  %416 = icmp eq i32 %415, 1
  %417 = icmp eq i32 %415, 4
  %418 = or i1 %416, %417
  br i1 %418, label %425, label %419

; <label>:419                                     ; preds = %410
  %420 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %415)  ; FirstbitLo(value)
  %421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %422 = extractvalue %dx.types.CBufRet.i32 %421, 1
  %423 = sub nsw i32 %422, %420
  %424 = call i32 @dx.op.binary.i32(i32 37, i32 %423, i32 0)  ; IMax(a,b)
  br label %425

; <label>:425                                     ; preds = %419, %410
  %426 = phi i32 [ %424, %419 ], [ -1, %410 ]
  %427 = sitofp i32 %426 to float
  %428 = icmp slt i32 %426, 0
  %429 = fsub fast float %386, %427
  %430 = select i1 %428, float 0.000000e+00, float %429
  br label %431

; <label>:431                                     ; preds = %425, %0
  %432 = phi float [ 0.000000e+00, %0 ], [ %427, %425 ]
  %433 = phi float [ 0.000000e+00, %0 ], [ %430, %425 ]
  %434 = icmp eq i32 %201, 0
  br i1 %434, label %1867, label %435

; <label>:435                                     ; preds = %431
  br label %436

; <label>:436                                     ; preds = %1845, %435
  %437 = phi i32 [ %1846, %1845 ], [ %203, %435 ]
  %438 = phi float [ %1847, %1845 ], [ 0.000000e+00, %435 ]
  %439 = phi float [ %1848, %1845 ], [ 0.000000e+00, %435 ]
  %440 = phi float [ %1849, %1845 ], [ 0.000000e+00, %435 ]
  %441 = phi float [ %1850, %1845 ], [ 0.000000e+00, %435 ]
  %442 = phi float [ %1851, %1845 ], [ 0.000000e+00, %435 ]
  %443 = phi float [ %1852, %1845 ], [ 0.000000e+00, %435 ]
  %444 = phi i32 [ %1853, %1845 ], [ %180, %435 ]
  %445 = phi i32 [ %1854, %1845 ], [ %180, %435 ]
  %446 = phi float [ %1855, %1845 ], [ 0.000000e+00, %435 ]
  %447 = phi float [ %1856, %1845 ], [ 0.000000e+00, %435 ]
  %448 = phi i32 [ %1857, %1845 ], [ 0, %435 ]
  %449 = phi float [ %1858, %1845 ], [ 0.000000e+00, %435 ]
  %450 = phi float [ %1859, %1845 ], [ 0.000000e+00, %435 ]
  %451 = phi i32 [ %1860, %1845 ], [ 0, %435 ]
  %452 = phi float [ %1861, %1845 ], [ 0.000000e+00, %435 ]
  %453 = phi float [ %1862, %1845 ], [ 0.000000e+00, %435 ]
  %454 = phi float [ %1863, %1845 ], [ 0.000000e+00, %435 ]
  %455 = phi i32 [ %461, %1845 ], [ %201, %435 ]
  %456 = phi i32 [ %1864, %1845 ], [ %180, %435 ]
  %457 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %455)  ; FirstbitLo(value)
  %458 = and i32 %457, 31
  %459 = shl i32 1, %458
  %460 = xor i32 %459, -1
  %461 = and i32 %455, %460
  %462 = shl i32 %457, 2
  %463 = add i32 %214, %462
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %467 = extractvalue %dx.types.CBufRet.f32 %466, 0
  %468 = fmul fast float %467, %79
  %469 = fmul fast float %467, %80
  %470 = extractvalue %dx.types.CBufRet.f32 %466, 1
  %471 = fadd fast float %468, %470
  %472 = fadd fast float %469, %470
  %473 = add i32 %462, %229
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = add i32 %475, 0
  %477 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %476, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %478 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %477, i32 0)  ; GetDimensions(handle,mipLevel)
  %479 = extractvalue %dx.types.Dimensions %478, 0
  %480 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %479)  ; FirstbitLo(value)
  %481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.i32 %481, 1
  %483 = sub nsw i32 %482, %480
  %484 = sitofp i32 %483 to float
  %485 = fsub fast float %177, %484
  %486 = call float @dx.op.binary.f32(i32 35, float %485, float 0.000000e+00)  ; FMax(a,b)
  %487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %477, %dx.types.Handle %59, float %471, float %472, float %465, float undef, i32 0, i32 0, i32 undef, float %486)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = fcmp fast ogt float %488, 0.000000e+00
  br i1 %489, label %490, label %1845

; <label>:490                                     ; preds = %436
  %491 = add i32 %381, %462
  %492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %491, i32 undef)  ; BufferLoad(srv,index,wot)
  %493 = extractvalue %dx.types.ResRet.i32 %492, 0
  %494 = and i32 %493, 32767
  %495 = add i32 %448, 1
  %496 = mul nuw nsw i32 %494, 928
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %496, i32 undef)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = or i32 %496, 8
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = or i32 %496, 12
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 1
  %505 = or i32 %496, 20
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = or i32 %496, 24
  %509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = add nuw nsw i32 %496, 40
  %515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = add nuw nsw i32 %496, 72
  %518 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %517, i32 undef)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.f32 %518, 0
  %520 = extractvalue %dx.types.ResRet.f32 %518, 1
  %521 = add nuw nsw i32 %496, 80
  %522 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.f32 %522, 0
  %524 = add nuw nsw i32 %496, 228
  %525 = add nuw nsw i32 %496, 516
  %526 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 1
  %528 = add nuw nsw i32 %496, 528
  %529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  %531 = extractvalue %dx.types.ResRet.f32 %529, 1
  %532 = add nuw nsw i32 %496, 540
  %533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  %535 = extractvalue %dx.types.ResRet.f32 %533, 1
  %536 = add nuw nsw i32 %496, 548
  %537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.f32 %537, 0
  %539 = add nuw nsw i32 %496, 552
  %540 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.f32 %540, 0
  %542 = extractvalue %dx.types.ResRet.f32 %540, 1
  %543 = extractvalue %dx.types.ResRet.f32 %540, 2
  %544 = add nuw nsw i32 %496, 596
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = add nuw nsw i32 %496, 620
  %549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = add nuw nsw i32 %496, 628
  %553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.f32 %553, 0
  %555 = extractvalue %dx.types.ResRet.f32 %553, 1
  %556 = extractvalue %dx.types.ResRet.f32 %553, 2
  %557 = extractvalue %dx.types.ResRet.f32 %553, 3
  %558 = add nuw nsw i32 %496, 644
  %559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %558, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = add nuw nsw i32 %496, 648
  %562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.f32 %562, 0
  %564 = add nuw nsw i32 %496, 652
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = add nuw nsw i32 %496, 656
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = add nuw nsw i32 %496, 660
  %571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.f32 %571, 0
  %573 = add nuw nsw i32 %496, 664
  %574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = add nuw nsw i32 %496, 676
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 0
  %580 = extractvalue %dx.types.ResRet.f32 %578, 1
  %581 = add nuw nsw i32 %496, 696
  %582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.f32 %582, 0
  %584 = extractvalue %dx.types.ResRet.f32 %582, 1
  %585 = add nuw nsw i32 %496, 704
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = add nuw nsw i32 %496, 708
  %589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = add nuw nsw i32 %496, 716
  %593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.f32 %593, 0
  %595 = add nuw nsw i32 %496, 720
  %596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %595, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = add nuw nsw i32 %496, 732
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 1
  %602 = add nuw nsw i32 %496, 744
  %603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.f32 %603, 0
  %605 = add nuw nsw i32 %496, 748
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = add nuw nsw i32 %496, 752
  %609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %608, i32 undef)  ; BufferLoad(srv,index,wot)
  %610 = extractvalue %dx.types.ResRet.f32 %609, 0
  %611 = add nuw nsw i32 %496, 756
  %612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.f32 %612, 0
  %614 = extractvalue %dx.types.ResRet.f32 %612, 1
  %615 = extractvalue %dx.types.ResRet.f32 %612, 2
  %616 = extractvalue %dx.types.ResRet.f32 %612, 3
  %617 = add nuw nsw i32 %496, 780
  %618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.f32 %618, 0
  %620 = extractvalue %dx.types.ResRet.f32 %618, 1
  %621 = add nuw nsw i32 %496, 792
  %622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %621, i32 undef)  ; BufferLoad(srv,index,wot)
  %623 = extractvalue %dx.types.ResRet.f32 %622, 0
  %624 = extractvalue %dx.types.ResRet.f32 %622, 1
  %625 = add nuw nsw i32 %496, 800
  %626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %625, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.f32 %626, 0
  %628 = extractvalue %dx.types.ResRet.f32 %626, 1
  %629 = add nuw nsw i32 %496, 812
  %630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.f32 %630, 0
  %632 = add nuw nsw i32 %496, 816
  %633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %632, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 1
  %635 = add nuw nsw i32 %496, 852
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = add nuw nsw i32 %496, 860
  %639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.f32 %639, 2
  %641 = add nuw nsw i32 %496, 884
  %642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %641, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.f32 %642, 0
  %644 = extractvalue %dx.types.ResRet.f32 %642, 1
  %645 = extractvalue %dx.types.ResRet.f32 %642, 2
  %646 = add nuw nsw i32 %496, 896
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = add nuw nsw i32 %496, 900
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = add nuw nsw i32 %496, 904
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %652, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = add nuw nsw i32 %496, 908
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = add nuw nsw i32 %496, 912
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %658, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = add nuw nsw i32 %496, 916
  %662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %661, i32 undef)  ; BufferLoad(srv,index,wot)
  %663 = extractvalue %dx.types.ResRet.i32 %662, 0
  %664 = lshr i32 %437, 24
  %665 = uitofp i32 %664 to float
  %666 = fmul fast float %665, 0x3F70101020000000
  %667 = and i32 %498, 128
  %668 = icmp ne i32 %667, 0
  %669 = extractvalue %dx.types.CBufRet.i32 %481, 0
  %670 = and i32 %669, 512
  %671 = icmp ne i32 %670, 0
  %672 = and i1 %668, %671
  %673 = select i1 %672, float 0.000000e+00, float %488
  %674 = fadd fast float %673, %666
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %676 = fmul fast float %675, 2.550000e+02
  %677 = fptoui float %676 to i32
  %678 = shl i32 %677, 24
  %679 = and i32 %437, 16777215
  %680 = or i32 %678, %679
  %681 = fcmp fast ole float %78, 0x3FA4B5DCC0000000
  %682 = fmul fast float %78, 0x3FB3D07220000000
  %683 = fadd fast float %78, 0x3FAC28F5C0000000
  %684 = fmul fast float %683, 0x3FEE54EDE0000000
  %685 = call float @dx.op.unary.f32(i32 23, float %684)  ; Log(value)
  %686 = fmul fast float %685, 0x4003333340000000
  %687 = call float @dx.op.unary.f32(i32 21, float %686)  ; Exp(value)
  %688 = select i1 %681, float %682, float %687
  %689 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %690 = fmul fast float %546, %363
  %691 = fadd fast float %690, %547
  %692 = call float @dx.op.unary.f32(i32 7, float %691)  ; Saturate(value)
  %693 = fmul fast float %692, %488
  %694 = fadd fast float %693, %443
  %695 = call float @dx.op.binary.f32(i32 35, float %689, float %692)  ; FMax(a,b)
  %696 = add i32 %651, 0
  %697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.i32 %698, 0
  %700 = and i32 %699, 65536
  %701 = icmp eq i32 %700, 0
  %702 = and i32 %699, 262144
  %703 = icmp ne i32 %702, 0
  %704 = and i32 %699, 1048576
  %705 = icmp ne i32 %704, 0
  br i1 %701, label %980, label %706

; <label>:706                                     ; preds = %490
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %710 = extractvalue %dx.types.CBufRet.f32 %709, 0
  %711 = extractvalue %dx.types.CBufRet.f32 %709, 1
  %712 = fadd fast float %710, %153
  %713 = fadd fast float %711, %154
  %714 = fmul fast float %153, %153
  %715 = fmul fast float %154, %154
  %716 = fadd fast float %714, %715
  %717 = fmul fast float %155, %155
  %718 = fadd fast float %716, %717
  %719 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  br i1 %705, label %720, label %766

; <label>:720                                     ; preds = %706
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = fcmp fast ogt float %719, %722
  %724 = zext i1 %723 to i32
  %725 = extractvalue %dx.types.CBufRet.f32 %721, 1
  %726 = fcmp fast ogt float %719, %725
  %727 = zext i1 %726 to i32
  %728 = add nuw nsw i32 %727, %724
  %729 = extractvalue %dx.types.CBufRet.f32 %721, 2
  %730 = fcmp fast ogt float %719, %729
  %731 = zext i1 %730 to i32
  %732 = add nuw nsw i32 %728, %731
  %733 = icmp ult i32 %732, 3
  %734 = zext i1 %733 to i32
  %735 = shl nuw nsw i32 %732, 2
  %736 = add nuw nsw i32 %735, 48
  %737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %736)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.f32 %737, 1
  %739 = fcmp fast ogt float %719, %738
  %740 = zext i1 %739 to i32
  %741 = or i32 %735, 1
  %742 = add nuw nsw i32 %741, 48
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %742)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %745 = fcmp fast ogt float %719, %744
  %746 = zext i1 %745 to i32
  %747 = add nuw nsw i32 %746, %740
  %748 = or i32 %735, 2
  %749 = add nuw nsw i32 %748, 48
  %750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %749)  ; CBufferLoadLegacy(handle,regIndex)
  %751 = extractvalue %dx.types.CBufRet.f32 %750, 1
  %752 = fcmp fast ogt float %719, %751
  %753 = zext i1 %752 to i32
  %754 = add nuw nsw i32 %747, %753
  %755 = add i32 %507, -1
  %756 = call i32 @dx.op.binary.i32(i32 40, i32 %754, i32 %755)  ; UMin(a,b)
  %757 = add i32 %735, %756
  %758 = call i32 @dx.op.binary.i32(i32 40, i32 %757, i32 12)  ; UMin(a,b)
  %759 = add i32 %758, 48
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %759)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 0
  %762 = fcmp fast oge float %719, %761
  %763 = zext i1 %762 to i32
  %764 = call i32 @dx.op.binary.i32(i32 40, i32 %507, i32 %734)  ; UMin(a,b)
  %765 = call i32 @dx.op.binary.i32(i32 40, i32 %763, i32 %764)  ; UMin(a,b)
  br label %766

; <label>:766                                     ; preds = %720, %706
  %767 = phi i32 [ %758, %720 ], [ 0, %706 ]
  %768 = phi i32 [ %765, %720 ], [ 0, %706 ]
  %769 = add i32 %768, %507
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %969, label %771

; <label>:771                                     ; preds = %766
  br label %772

; <label>:772                                     ; preds = %938, %771
  %773 = phi float [ %965, %938 ], [ 0.000000e+00, %771 ]
  %774 = phi float [ %957, %938 ], [ 0.000000e+00, %771 ]
  %775 = phi float [ %958, %938 ], [ 0.000000e+00, %771 ]
  %776 = phi i32 [ %788, %938 ], [ %767, %771 ]
  %777 = phi i32 [ %966, %938 ], [ 0, %771 ]
  %778 = add i32 %777, %776
  br i1 %705, label %779, label %787

; <label>:779                                     ; preds = %772
  %780 = and i32 %778, -4
  %781 = add i32 %780, %507
  %782 = icmp uge i32 %778, %781
  %783 = sub i32 4, %507
  %784 = select i1 %782, i32 %783, i32 0
  %785 = add i32 %784, %776
  %786 = add i32 %784, %778
  br label %787

; <label>:787                                     ; preds = %779, %772
  %788 = phi i32 [ %785, %779 ], [ %776, %772 ]
  %789 = phi i32 [ %786, %779 ], [ %778, %772 ]
  %790 = and i32 %789, 3
  %791 = select i1 %705, i32 %790, i32 %777
  %792 = lshr i32 %789, 2
  %793 = select i1 %705, i32 %792, i32 0
  %794 = add i32 %789, 32
  %795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %794)  ; CBufferLoadLegacy(handle,regIndex)
  %796 = extractvalue %dx.types.CBufRet.f32 %795, 0
  %797 = extractvalue %dx.types.CBufRet.f32 %795, 1
  %798 = extractvalue %dx.types.CBufRet.f32 %795, 2
  %799 = extractvalue %dx.types.CBufRet.f32 %795, 3
  %800 = fmul fast float %796, %719
  %801 = fadd fast float %800, %797
  %802 = call float @dx.op.unary.f32(i32 7, float %801)  ; Saturate(value)
  %803 = fmul fast float %798, %719
  %804 = fadd fast float %803, %799
  %805 = call float @dx.op.unary.f32(i32 7, float %804)  ; Saturate(value)
  %806 = call float @dx.op.binary.f32(i32 36, float %802, float %805)  ; FMin(a,b)
  %807 = select i1 %705, float %806, float 1.000000e+00
  %808 = mul i32 %791, 72
  %809 = add i32 %524, %808
  %810 = add i32 %809, 16
  %811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = extractvalue %dx.types.ResRet.f32 %811, 3
  %816 = add i32 %809, 36
  %817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = add i32 %809, 56
  %820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %819, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.f32 %820, 0
  %822 = fmul fast float %350, 3.906250e-03
  %823 = fmul fast float %822, %523
  %824 = fmul fast float %823, %818
  %825 = fmul fast float %824, %821
  %826 = extractvalue %dx.types.ResRet.f32 %820, 1
  %827 = fadd fast float %825, %826
  %828 = call float @dx.op.binary.f32(i32 35, float %827, float 0.000000e+00)  ; FMax(a,b)
  %829 = add i32 %809, 32
  %830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %831 = extractvalue %dx.types.ResRet.f32 %830, 0
  br i1 %703, label %832, label %865

; <label>:832                                     ; preds = %787
  %833 = fmul fast float %818, %345
  %834 = fmul fast float %818, %346
  %835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %836 = extractvalue %dx.types.CBufRet.f32 %835, 1
  %837 = add i32 %809, 40
  %838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %837, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.f32 %838, 0
  %840 = extractvalue %dx.types.ResRet.f32 %838, 1
  %841 = extractvalue %dx.types.ResRet.f32 %838, 2
  %842 = extractvalue %dx.types.ResRet.f32 %838, 3
  %843 = fadd fast float %836, %193
  %844 = fadd fast float %843, %841
  %845 = fmul fast float %843, %840
  %846 = call float @dx.op.unary.f32(i32 29, float %845)  ; Round_z(value)
  %847 = fmul fast float %839, %846
  %848 = fsub fast float %843, %847
  %849 = fmul fast float %844, %840
  %850 = call float @dx.op.unary.f32(i32 29, float %849)  ; Round_z(value)
  %851 = fmul fast float %850, %839
  %852 = fsub fast float %844, %851
  %853 = fmul fast float %848, %833
  %854 = fmul fast float %848, %834
  %855 = fmul fast float %852, %833
  %856 = fmul fast float %852, %834
  %857 = fsub fast float %712, %853
  %858 = fsub fast float %713, %854
  %859 = fsub fast float %712, %855
  %860 = fsub fast float %713, %856
  %861 = fsub fast float %841, %848
  %862 = call float @dx.op.unary.f32(i32 6, float %861)  ; FAbs(value)
  %863 = fmul fast float %862, %842
  %864 = call float @dx.op.unary.f32(i32 7, float %863)  ; Saturate(value)
  br label %865

; <label>:865                                     ; preds = %832, %787
  %866 = phi float [ %857, %832 ], [ %712, %787 ]
  %867 = phi float [ %858, %832 ], [ %713, %787 ]
  %868 = phi float [ %859, %832 ], [ %712, %787 ]
  %869 = phi float [ %860, %832 ], [ %713, %787 ]
  %870 = phi float [ %864, %832 ], [ 0.000000e+00, %787 ]
  %871 = fmul fast float %501, 4.000000e+00
  %872 = uitofp i32 %793 to float
  %873 = fadd fast float %872, %871
  %874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.f32 %874, 0
  %876 = extractvalue %dx.types.CBufRet.f32 %874, 1
  %877 = extractvalue %dx.types.CBufRet.f32 %874, 2
  %878 = extractvalue %dx.types.CBufRet.f32 %874, 3
  %879 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %875, float* %879, align 4
  %880 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %876, float* %880, align 4
  %881 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %877, float* %881, align 4
  %882 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %878, float* %882, align 4
  %883 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 %793
  %884 = load float, float* %883, align 4, !tbaa !106, !noalias !110
  %885 = fmul fast float %884, %504
  %886 = select i1 %705, float %885, float %504
  %887 = fmul fast float %866, %812
  %888 = call float @dx.op.tertiary.f32(i32 46, float %813, float %867, float %887)  ; FMad(a,b,c)
  %889 = fmul fast float %866, %814
  %890 = call float @dx.op.tertiary.f32(i32 46, float %815, float %867, float %889)  ; FMad(a,b,c)
  %891 = add i32 %809, 8
  %892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = fadd fast float %893, %888
  %896 = fadd fast float %894, %890
  %897 = fmul fast float %895, %886
  %898 = fmul fast float %896, %886
  %899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = fmul fast float %897, %900
  %903 = fmul fast float %898, %901
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 2
  %906 = fadd fast float %902, %905
  %907 = fadd fast float %903, %905
  %908 = fmul fast float %868, %812
  %909 = call float @dx.op.tertiary.f32(i32 46, float %813, float %869, float %908)  ; FMad(a,b,c)
  %910 = fmul fast float %868, %814
  %911 = call float @dx.op.tertiary.f32(i32 46, float %815, float %869, float %910)  ; FMad(a,b,c)
  %912 = fadd fast float %893, %909
  %913 = fadd fast float %894, %911
  %914 = fmul fast float %912, %886
  %915 = fmul fast float %913, %886
  %916 = fmul fast float %914, %900
  %917 = fmul fast float %915, %901
  %918 = fadd fast float %916, %905
  %919 = fadd fast float %917, %905
  %920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %906, float %907, float %873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 3
  %924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %918, float %919, float %873, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %703, label %925, label %938

; <label>:925                                     ; preds = %865
  %926 = extractvalue %dx.types.ResRet.f32 %924, 3
  %927 = extractvalue %dx.types.ResRet.f32 %924, 1
  %928 = extractvalue %dx.types.ResRet.f32 %924, 0
  %929 = fsub fast float %928, %921
  %930 = fsub fast float %927, %922
  %931 = fsub fast float %926, %923
  %932 = fmul fast float %929, %870
  %933 = fmul fast float %930, %870
  %934 = fmul fast float %931, %870
  %935 = fadd fast float %932, %921
  %936 = fadd fast float %933, %922
  %937 = fadd fast float %934, %923
  br label %938

; <label>:938                                     ; preds = %925, %865
  %939 = phi float [ %935, %925 ], [ %921, %865 ]
  %940 = phi float [ %936, %925 ], [ %922, %865 ]
  %941 = phi float [ %937, %925 ], [ %923, %865 ]
  %942 = fmul fast float %939, 2.000000e+00
  %943 = fmul fast float %940, 2.000000e+00
  %944 = fadd fast float %942, -1.000000e+00
  %945 = fadd fast float %943, -1.000000e+00
  %946 = fmul fast float %944, %812
  %947 = call float @dx.op.tertiary.f32(i32 46, float %945, float %814, float %946)  ; FMad(a,b,c)
  %948 = fmul fast float %944, %813
  %949 = call float @dx.op.tertiary.f32(i32 46, float %945, float %815, float %948)  ; FMad(a,b,c)
  %950 = fmul fast float %807, %708
  %951 = fmul fast float %950, %828
  %952 = fmul fast float %951, %831
  %953 = fmul fast float %947, %952
  %954 = fmul fast float %953, %900
  %955 = fmul fast float %949, %952
  %956 = fmul fast float %955, %901
  %957 = fadd fast float %954, %774
  %958 = fadd fast float %956, %775
  %959 = add i32 %809, 64
  %960 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.f32 %960, 0
  %962 = fmul fast float %961, %941
  %963 = extractvalue %dx.types.ResRet.f32 %960, 1
  %964 = fadd fast float %962, %963
  %965 = call float @dx.op.binary.f32(i32 35, float %773, float %964)  ; FMax(a,b)
  %966 = add nuw i32 %777, 1
  %967 = icmp eq i32 %966, %769
  br i1 %967, label %968, label %772

; <label>:968                                     ; preds = %938
  br label %969

; <label>:969                                     ; preds = %968, %766
  %970 = phi float [ 0.000000e+00, %766 ], [ %965, %968 ]
  %971 = phi float [ 0.000000e+00, %766 ], [ %957, %968 ]
  %972 = phi float [ 0.000000e+00, %766 ], [ %958, %968 ]
  %973 = call float @dx.op.dot3.f32(i32 55, float %971, float %972, float 1.000000e+00, float %971, float %972, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %974 = call float @dx.op.unary.f32(i32 25, float %973)  ; Rsqrt(value)
  %975 = fmul fast float %974, %971
  %976 = fmul fast float %974, %972
  %977 = fmul fast float %970, %550
  %978 = fadd fast float %977, %551
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  br label %980

; <label>:980                                     ; preds = %969, %490
  %981 = phi float [ %975, %969 ], [ 0.000000e+00, %490 ]
  %982 = phi float [ %976, %969 ], [ 0.000000e+00, %490 ]
  %983 = phi float [ %974, %969 ], [ 0.000000e+00, %490 ]
  %984 = phi float [ %979, %969 ], [ 0.000000e+00, %490 ]
  %985 = fmul fast float %981, %488
  %986 = fmul fast float %982, %488
  %987 = fadd fast float %985, %438
  %988 = fadd fast float %986, %439
  %989 = fadd fast float %984, %695
  %990 = fmul fast float %983, %488
  %991 = fadd fast float %985, %440
  %992 = fadd fast float %986, %441
  %993 = fadd fast float %990, %442
  %994 = fmul fast float %984, %488
  %995 = fadd fast float %994, %446
  %996 = fmul fast float %989, %488
  %997 = fadd fast float %996, %447
  %998 = icmp ne i32 %507, 0
  %999 = select i1 %998, i32 2, i32 0
  %1000 = fcmp fast ogt float %984, 0.000000e+00
  %1001 = select i1 %1000, i32 4, i32 0
  %1002 = fmul fast float %590, %350
  %1003 = fadd fast float %1002, %591
  %1004 = call float @dx.op.binary.f32(i32 35, float %1003, float 0.000000e+00)  ; FMax(a,b)
  %1005 = fmul fast float %1004, %583
  %1006 = fadd fast float %1005, %584
  %1007 = call float @dx.op.unary.f32(i32 7, float %1006)  ; Saturate(value)
  %1008 = fmul fast float %1007, %989
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1011 = fcmp fast oge float %1008, %1010
  %1012 = fmul fast float %1008, %488
  %1013 = fadd fast float %1012, %449
  %1014 = icmp ne i32 %637, 0
  %1015 = select i1 %1014, i32 8, i32 0
  %1016 = shl i32 %498, 3
  %1017 = and i32 %1016, 16
  %1018 = and i32 %498, 2
  %1019 = icmp ne i32 %1018, 0
  %1020 = and i1 %1019, %1011
  %1021 = select i1 %1020, i32 32, i32 0
  %1022 = shl i32 %498, 2
  %1023 = and i32 %1022, 256
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 0
  %1026 = fmul fast float %1025, %87
  %1027 = extractvalue %dx.types.CBufRet.f32 %1024, 1
  %1028 = fadd fast float %1026, %1027
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = fmul fast float %1031, %1029
  %1033 = select i1 %1014, float %1032, float 0.000000e+00
  %1034 = fcmp fast ogt float %1033, 0.000000e+00
  %1035 = or i1 %1020, %1034
  br i1 %1035, label %1036, label %1313

; <label>:1036                                    ; preds = %980
  %1037 = select i1 %1011, float %989, float 0.000000e+00
  %1038 = add i32 %225, 0
  %1039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1040 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1039, i32 0)  ; GetDimensions(handle,mipLevel)
  %1041 = extractvalue %dx.types.Dimensions %1040, 0
  %1042 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1041)  ; FirstbitLo(value)
  %1043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.i32 %1043, 1
  %1045 = sub nsw i32 %1044, %1042
  %1046 = sitofp i32 %1045 to float
  %1047 = fsub fast float %543, %1046
  %1048 = call float @dx.op.binary.f32(i32 35, float %1047, float 0.000000e+00)  ; FMax(a,b)
  %1049 = fmul fast float %527, %235
  %1050 = fmul fast float %527, %236
  %1051 = fmul fast float %541, %79
  %1052 = fmul fast float %541, %80
  %1053 = call float @dx.op.unary.f32(i32 22, float %1051)  ; Frc(value)
  %1054 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1055 = fmul fast float %1053, 2.000000e+00
  %1056 = fmul fast float %1054, 2.000000e+00
  %1057 = fadd fast float %1055, -1.000000e+00
  %1058 = fadd fast float %1056, -1.000000e+00
  %1059 = call float @dx.op.unary.f32(i32 6, float %1057)  ; FAbs(value)
  %1060 = call float @dx.op.unary.f32(i32 6, float %1058)  ; FAbs(value)
  %1061 = fsub fast float 1.000000e+00, %1059
  %1062 = fmul fast float %1061, %1060
  %1063 = fsub fast float %1061, %1062
  %1064 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %1063, float* %1064, align 4, !tbaa !106, !noalias !115
  %1065 = fmul fast float %1060, %1059
  %1066 = fsub fast float %1059, %1065
  %1067 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %1066, float* %1067, align 4, !tbaa !106, !noalias !115
  %1068 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %1062, float* %1068, align 4, !tbaa !106, !noalias !115
  %1069 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %1065, float* %1069, align 4, !tbaa !106, !noalias !115
  br label %1070

; <label>:1070                                    ; preds = %1294, %1036
  %1071 = phi float [ 0.000000e+00, %1036 ], [ %1295, %1294 ]
  %1072 = phi float [ 0.000000e+00, %1036 ], [ %1296, %1294 ]
  %1073 = phi float [ 0.000000e+00, %1036 ], [ %1297, %1294 ]
  %1074 = phi float [ 0.000000e+00, %1036 ], [ %1298, %1294 ]
  %1075 = phi float [ 0.000000e+00, %1036 ], [ %1299, %1294 ]
  %1076 = phi i32 [ 0, %1036 ], [ %1300, %1294 ]
  %1077 = phi float [ %987, %1036 ], [ %1172, %1294 ]
  %1078 = phi float [ %988, %1036 ], [ %1173, %1294 ]
  %1079 = mul i32 %1076, 2
  %1080 = add i32 0, %1079
  %1081 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1080
  %1082 = load float, float* %1081, align 4
  %1083 = mul i32 %1076, 2
  %1084 = add i32 1, %1083
  %1085 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1084
  %1086 = load float, float* %1085, align 4
  %1087 = fmul fast float %1082, 5.000000e-01
  %1088 = fmul fast float %1086, 5.000000e-01
  %1089 = fsub fast float 1.000000e+00, %1082
  %1090 = fsub fast float 1.000000e+00, %1086
  %1091 = fmul fast float %1089, 5.000000e-01
  %1092 = fmul fast float %1090, 5.000000e-01
  %1093 = fadd fast float %1087, %1051
  %1094 = fadd fast float %1088, %1052
  %1095 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1097 = fadd fast float %1095, %1091
  %1098 = fadd fast float %1096, %1092
  %1099 = fmul fast float %1097, %542
  %1100 = fmul fast float %1098, %542
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = fmul fast float %1099, %1102
  %1104 = fmul fast float %1100, %1102
  %1105 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1106 = fadd fast float %1103, %1105
  %1107 = fadd fast float %1104, %1105
  %1108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1039, %dx.types.Handle %62, float %1106, float %1107, float %213, float undef, i32 0, i32 0, i32 undef, float %1048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1034, label %1128, label %1171

; <label>:1128                                    ; preds = %1070
  %1129 = add i32 %637, 0
  %1130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1132 = extractvalue %dx.types.CBufRet.f32 %1131, 1
  %1133 = fmul fast float %538, %527
  %1134 = fmul fast float %1133, %1121
  %1135 = fsub fast float -0.000000e+00, %1126
  %1136 = fmul fast float %1127, %1049
  %1137 = call float @dx.op.tertiary.f32(i32 46, float %1135, float %1050, float %1136)  ; FMad(a,b,c)
  %1138 = fmul fast float %1126, %1049
  %1139 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1050, float %1138)  ; FMad(a,b,c)
  %1140 = fmul fast float %1134, %1132
  %1141 = fsub fast float %1139, %1140
  %1142 = fmul fast float %1137, %530
  %1143 = fmul fast float %1141, %531
  %1144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1130, %dx.types.Handle %1144, float %1142, float %1143, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1146 = extractvalue %dx.types.ResRet.f32 %1145, 1
  %1147 = extractvalue %dx.types.ResRet.f32 %1145, 3
  %1148 = fadd fast float %1146, %1147
  %1149 = fmul fast float %1148, %640
  %1150 = fsub fast float %1149, %640
  %1151 = fsub fast float %1146, %1147
  %1152 = fmul fast float %1151, %640
  %1153 = fmul fast float %1150, %1127
  %1154 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1152, float %1153)  ; FMad(a,b,c)
  %1155 = fmul fast float %1150, %1135
  %1156 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1152, float %1155)  ; FMad(a,b,c)
  %1157 = fmul fast float %1154, %530
  %1158 = fmul fast float %1156, %531
  %1159 = fmul fast float %534, %350
  %1160 = fadd fast float %1159, %535
  %1161 = call float @dx.op.binary.f32(i32 35, float %1160, float 0.000000e+00)  ; FMax(a,b)
  %1162 = fmul fast float %1033, %488
  %1163 = fmul fast float %1162, %1161
  %1164 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %1076
  %1165 = load float, float* %1164, align 4, !tbaa !106, !noalias !115
  %1166 = fmul fast float %1163, %1165
  %1167 = fmul fast float %1157, %1166
  %1168 = fmul fast float %1158, %1166
  %1169 = fadd fast float %1167, %1077
  %1170 = fadd fast float %1168, %1078
  br label %1171

; <label>:1171                                    ; preds = %1128, %1070
  %1172 = phi float [ %1169, %1128 ], [ %1077, %1070 ]
  %1173 = phi float [ %1170, %1128 ], [ %1078, %1070 ]
  %1174 = fcmp fast ogt float %1037, 0.000000e+00
  %1175 = and i1 %1019, %1174
  br i1 %1175, label %1176, label %1294

; <label>:1176                                    ; preds = %1171
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 1
  %1179 = fmul fast float %587, %527
  %1180 = fmul fast float %1121, %1179
  %1181 = fsub fast float -0.000000e+00, %1126
  %1182 = fmul fast float %1127, %1049
  %1183 = call float @dx.op.tertiary.f32(i32 46, float %1181, float %1050, float %1182)  ; FMad(a,b,c)
  %1184 = fmul fast float %1126, %1049
  %1185 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1050, float %1184)  ; FMad(a,b,c)
  %1186 = fmul fast float %1180, %1178
  %1187 = fsub fast float %1185, %1186
  %1188 = fmul fast float %1183, %575
  %1189 = fmul fast float %1187, %576
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1190, float %1188, float %1189, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = fmul fast float %1005, %1192
  %1194 = fadd fast float %1193, %584
  %1195 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 2
  %1198 = fmul fast float %1197, %87
  %1199 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1200 = fadd fast float %1198, %1199
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = fcmp fast ogt float %1195, 0.000000e+00
  %1203 = fcmp fast ogt float %1201, 0.000000e+00
  %1204 = and i1 %1202, %1203
  %1205 = and i32 %498, 64
  %1206 = icmp ne i32 %1205, 0
  %1207 = and i1 %1206, %1204
  br i1 %1207, label %1208, label %1276

; <label>:1208                                    ; preds = %1176
  %1209 = add i32 %657, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1209, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = add i32 %660, 0
  %1212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1211, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1213 = fmul fast float %1183, %579
  %1214 = fmul fast float %1187, %580
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1210, %dx.types.Handle %1190, float %1213, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = extractvalue %dx.types.ResRet.f32 %1215, 1
  %1218 = extractvalue %dx.types.ResRet.f32 %1215, 2
  %1219 = extractvalue %dx.types.ResRet.f32 %1215, 3
  %1220 = fmul fast float %1216, %643
  %1221 = fadd fast float %1220, %644
  %1222 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1223 = fadd fast float %1217, %1219
  %1224 = fmul fast float %1223, %645
  %1225 = fsub fast float %1224, %645
  %1226 = fsub fast float %1217, %1219
  %1227 = fmul fast float %1226, %645
  %1228 = fmul fast float %1225, %1127
  %1229 = call float @dx.op.tertiary.f32(i32 46, float %1126, float %1227, float %1228)  ; FMad(a,b,c)
  %1230 = fmul fast float %1225, %1181
  %1231 = call float @dx.op.tertiary.f32(i32 46, float %1127, float %1227, float %1230)  ; FMad(a,b,c)
  %1232 = fmul fast float %1229, %579
  %1233 = fmul fast float %1231, %580
  %1234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1212, %dx.types.Handle %1190, float %1213, float %1214, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1235 = extractvalue %dx.types.ResRet.f32 %1234, 0
  %1236 = fsub fast float 1.000000e+00, %1195
  %1237 = bitcast float %1195 to i32
  %1238 = sitofp i32 %1237 to float
  %1239 = fadd fast float %1238, 0xC1CFBF8940000000
  %1240 = fmul fast float %1239, %572
  %1241 = fadd fast float %1240, 0x41CFBF8940000000
  %1242 = fptosi float %1241 to i32
  %1243 = bitcast i32 %1242 to float
  %1244 = bitcast float %1236 to i32
  %1245 = sitofp i32 %1244 to float
  %1246 = fadd fast float %1245, 0xC1CFBF8940000000
  %1247 = fmul fast float %1246, %572
  %1248 = fadd fast float %1247, 0x41CFBF8940000000
  %1249 = fptosi float %1248 to i32
  %1250 = bitcast i32 %1249 to float
  %1251 = fmul fast float %1243, %569
  %1252 = fmul fast float %1250, %569
  %1253 = fsub fast float %1236, %1251
  %1254 = fadd fast float %1252, %1236
  %1255 = call float @dx.op.unary.f32(i32 7, float %1253)  ; Saturate(value)
  %1256 = call float @dx.op.unary.f32(i32 7, float %1254)  ; Saturate(value)
  %1257 = fsub fast float %1235, %1255
  %1258 = fsub fast float %1256, %1255
  %1259 = bitcast float %1258 to i32
  %1260 = sub nsw i32 2129859010, %1259
  %1261 = bitcast i32 %1260 to float
  %1262 = fmul fast float %1261, %1257
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = fmul fast float %1201, %566
  %1265 = fmul fast float %1264, %1263
  %1266 = fmul fast float %1232, %1265
  %1267 = fmul fast float %1233, %1265
  %1268 = fadd fast float %1218, -1.000000e+00
  %1269 = fmul fast float %1265, %1268
  %1270 = fadd fast float %1269, 1.000000e+00
  %1271 = fsub fast float %1222, %560
  %1272 = fmul fast float %1265, %1271
  %1273 = fadd fast float %1272, %560
  %1274 = fmul fast float %1265, %1236
  %1275 = fadd fast float %1274, %1195
  br label %1276

; <label>:1276                                    ; preds = %1208, %1176
  %1277 = phi float [ %1275, %1208 ], [ %1195, %1176 ]
  %1278 = phi float [ %1273, %1208 ], [ %560, %1176 ]
  %1279 = phi float [ %1270, %1208 ], [ 1.000000e+00, %1176 ]
  %1280 = phi float [ %1266, %1208 ], [ 0.000000e+00, %1176 ]
  %1281 = phi float [ %1267, %1208 ], [ 0.000000e+00, %1176 ]
  %1282 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %1076
  %1283 = load float, float* %1282, align 4, !tbaa !106, !noalias !115
  %1284 = fmul fast float %1283, %1277
  %1285 = fmul fast float %1284, %1280
  %1286 = fmul fast float %1284, %1281
  %1287 = fadd fast float %1285, %1071
  %1288 = fadd fast float %1286, %1072
  %1289 = fmul fast float %1284, %1279
  %1290 = fadd fast float %1289, %1073
  %1291 = fmul fast float %1284, %1278
  %1292 = fadd fast float %1291, %1074
  %1293 = fadd fast float %1284, %1075
  br label %1294

; <label>:1294                                    ; preds = %1276, %1171
  %1295 = phi float [ %1287, %1276 ], [ %1071, %1171 ]
  %1296 = phi float [ %1288, %1276 ], [ %1072, %1171 ]
  %1297 = phi float [ %1290, %1276 ], [ %1073, %1171 ]
  %1298 = phi float [ %1292, %1276 ], [ %1074, %1171 ]
  %1299 = phi float [ %1293, %1276 ], [ %1075, %1171 ]
  %1300 = add nuw nsw i32 %1076, 1
  %1301 = icmp eq i32 %1300, 4
  br i1 %1301, label %1302, label %1070, !llvm.loop !122

; <label>:1302                                    ; preds = %1294
  %1303 = fmul fast float %1299, %1037
  %1304 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1303)  ; FMax(a,b)
  %1305 = fmul fast float %1299, %1295
  %1306 = fmul fast float %1299, %1296
  %1307 = fadd fast float %1297, -1.000000e+00
  %1308 = fmul fast float %1299, %1307
  %1309 = fadd fast float %1308, 1.000000e+00
  %1310 = fsub fast float %1298, %516
  %1311 = fmul fast float %1299, %1310
  %1312 = fadd fast float %1311, %516
  br label %1313

; <label>:1313                                    ; preds = %1302, %980
  %1314 = phi float [ %1172, %1302 ], [ %987, %980 ]
  %1315 = phi float [ %1173, %1302 ], [ %988, %980 ]
  %1316 = phi float [ %1304, %1302 ], [ 0.000000e+00, %980 ]
  %1317 = phi float [ %1305, %1302 ], [ 0.000000e+00, %980 ]
  %1318 = phi float [ %1306, %1302 ], [ 0.000000e+00, %980 ]
  %1319 = phi float [ %1309, %1302 ], [ 1.000000e+00, %980 ]
  %1320 = phi float [ %1312, %1302 ], [ %516, %980 ]
  %1321 = fmul fast float %623, %350
  %1322 = fadd fast float %1321, %624
  %1323 = call float @dx.op.binary.f32(i32 35, float %1322, float 0.000000e+00)  ; FMax(a,b)
  %1324 = fmul fast float %1323, %619
  %1325 = fadd fast float %1324, %620
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1326, %989
  %1328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1329 = extractvalue %dx.types.CBufRet.f32 %1328, 1
  %1330 = fcmp fast oge float %1327, %1329
  %1331 = fmul fast float %1327, %488
  %1332 = fadd fast float %1331, %450
  %1333 = shl i32 %498, 4
  %1334 = and i32 %1333, 64
  %1335 = and i32 %498, 4
  %1336 = icmp ne i32 %1335, 0
  %1337 = and i1 %1336, %1330
  %1338 = select i1 %1337, i32 128, i32 0
  br i1 %1337, label %1339, label %1627

; <label>:1339                                    ; preds = %1313
  %1340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1341 = extractvalue %dx.types.CBufRet.f32 %1340, 0
  %1342 = extractvalue %dx.types.CBufRet.f32 %1340, 1
  %1343 = fsub fast float %153, %235
  %1344 = fadd fast float %1343, %1341
  %1345 = fsub fast float %154, %236
  %1346 = fadd fast float %1345, %1342
  %1347 = fmul fast float %1344, %594
  %1348 = fmul fast float %1346, %594
  %1349 = fadd fast float %1347, %235
  %1350 = fadd fast float %1348, %236
  %1351 = add i32 %663, 0
  %1352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1353 = fmul fast float %1349, %601
  %1354 = fmul fast float %1350, %601
  %1355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1352, %dx.types.Handle %1355, float %1353, float %1354, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1357 = extractvalue %dx.types.ResRet.f32 %1356, 0
  %1358 = extractvalue %dx.types.ResRet.f32 %1356, 1
  %1359 = extractvalue %dx.types.ResRet.f32 %1356, 2
  %1360 = fmul fast float %1357, 2.000000e+00
  %1361 = fmul fast float %1358, 2.000000e+00
  %1362 = fadd fast float %1360, -1.000000e+00
  %1363 = fadd fast float %1361, -1.000000e+00
  %1364 = fmul fast float %1359, %597
  %1365 = fmul fast float %1364, %610
  %1366 = fmul fast float %1365, %1362
  %1367 = fmul fast float %1365, %1363
  %1368 = fsub fast float %345, %1366
  %1369 = fsub fast float %346, %1367
  %1370 = fmul fast float %1368, %607
  %1371 = fmul fast float %1369, %607
  %1372 = fadd fast float %1370, %1366
  %1373 = fadd fast float %1371, %1367
  %1374 = fmul fast float %1372, %610
  %1375 = fmul fast float %1373, %610
  %1376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.f32 %1376, 1
  %1378 = fmul fast float %610, %193
  %1379 = fadd fast float %1377, %1378
  %1380 = fadd fast float %1379, %615
  %1381 = fmul fast float %1379, %614
  %1382 = call float @dx.op.unary.f32(i32 29, float %1381)  ; Round_z(value)
  %1383 = fmul fast float %1382, %613
  %1384 = fsub fast float %1379, %1383
  %1385 = fmul fast float %1380, %614
  %1386 = call float @dx.op.unary.f32(i32 29, float %1385)  ; Round_z(value)
  %1387 = fmul fast float %1386, %613
  %1388 = fsub fast float %1380, %1387
  %1389 = fmul fast float %1374, %1384
  %1390 = fmul fast float %1375, %1384
  %1391 = fmul fast float %1374, %1388
  %1392 = fmul fast float %1375, %1388
  %1393 = fsub fast float %1349, %1389
  %1394 = fsub fast float %1350, %1390
  %1395 = fsub fast float %1349, %1391
  %1396 = fsub fast float %1350, %1392
  %1397 = fsub fast float %615, %1384
  %1398 = call float @dx.op.unary.f32(i32 6, float %1397)  ; FAbs(value)
  %1399 = fmul fast float %1398, %616
  %1400 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1401 = fmul fast float %1393, %598
  %1402 = fmul fast float %1394, %598
  %1403 = fmul fast float %1395, %598
  %1404 = fmul fast float %1396, %598
  %1405 = fcmp fast ogt float %604, 0.000000e+00
  br i1 %1405, label %1406, label %1493

; <label>:1406                                    ; preds = %1339
  %1407 = fmul fast float %604, %193
  %1408 = fmul fast float %1407, 5.000000e-01
  %1409 = fadd fast float %1408, 5.000000e-01
  %1410 = call float @dx.op.unary.f32(i32 22, float %1409)  ; Frc(value)
  %1411 = call float @dx.op.unary.f32(i32 22, float %1408)  ; Frc(value)
  %1412 = call float @dx.op.unary.f32(i32 27, float %1409)  ; Round_ni(value)
  %1413 = call float @dx.op.unary.f32(i32 27, float %1408)  ; Round_ni(value)
  %1414 = fmul fast float %1412, 2.000000e+00
  %1415 = fmul fast float %1413, 2.000000e+00
  %1416 = fadd fast float %1415, 1.000000e+00
  %1417 = fsub fast float 1.000000e+00, %1410
  %1418 = fsub fast float 1.000000e+00, %1411
  %1419 = call float @dx.op.binary.f32(i32 36, float %1410, float %1417)  ; FMin(a,b)
  %1420 = call float @dx.op.binary.f32(i32 36, float %1411, float %1418)  ; FMin(a,b)
  %1421 = fmul fast float %1419, 2.000000e+00
  %1422 = fmul fast float %1420, 2.000000e+00
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1414, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = call float @dx.op.dot3.f32(i32 55, float %1414, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1414, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call float @dx.op.unary.f32(i32 13, float %1423)  ; Sin(value)
  %1427 = call float @dx.op.unary.f32(i32 13, float %1424)  ; Sin(value)
  %1428 = call float @dx.op.unary.f32(i32 13, float %1425)  ; Sin(value)
  %1429 = fmul fast float %1426, 0x40E55DD180000000
  %1430 = fmul fast float %1427, 0x40E55DD180000000
  %1431 = fmul fast float %1428, 0x40E55DD180000000
  %1432 = call float @dx.op.unary.f32(i32 22, float %1429)  ; Frc(value)
  %1433 = call float @dx.op.unary.f32(i32 22, float %1430)  ; Frc(value)
  %1434 = call float @dx.op.unary.f32(i32 22, float %1431)  ; Frc(value)
  %1435 = fmul fast float %1432, 0x401921FB60000000
  %1436 = call float @dx.op.unary.f32(i32 12, float %1435)  ; Cos(value)
  %1437 = call float @dx.op.unary.f32(i32 13, float %1435)  ; Sin(value)
  %1438 = fsub fast float -0.000000e+00, %1437
  %1439 = call float @dx.op.dot3.f32(i32 55, float %1416, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1416, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1416, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.unary.f32(i32 13, float %1439)  ; Sin(value)
  %1443 = call float @dx.op.unary.f32(i32 13, float %1440)  ; Sin(value)
  %1444 = call float @dx.op.unary.f32(i32 13, float %1441)  ; Sin(value)
  %1445 = fmul fast float %1442, 0x40E55DD180000000
  %1446 = fmul fast float %1443, 0x40E55DD180000000
  %1447 = fmul fast float %1444, 0x40E55DD180000000
  %1448 = call float @dx.op.unary.f32(i32 22, float %1445)  ; Frc(value)
  %1449 = call float @dx.op.unary.f32(i32 22, float %1446)  ; Frc(value)
  %1450 = call float @dx.op.unary.f32(i32 22, float %1447)  ; Frc(value)
  %1451 = fmul fast float %1448, 0x401921FB60000000
  %1452 = call float @dx.op.unary.f32(i32 12, float %1451)  ; Cos(value)
  %1453 = call float @dx.op.unary.f32(i32 13, float %1451)  ; Sin(value)
  %1454 = fsub fast float -0.000000e+00, %1453
  %1455 = fmul fast float %1436, %1401
  %1456 = call float @dx.op.tertiary.f32(i32 46, float %1402, float %1438, float %1455)  ; FMad(a,b,c)
  %1457 = fmul fast float %1437, %1401
  %1458 = call float @dx.op.tertiary.f32(i32 46, float %1402, float %1436, float %1457)  ; FMad(a,b,c)
  %1459 = fadd fast float %1456, %1433
  %1460 = fadd fast float %1458, %1434
  %1461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1355, float %1459, float %1460, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1462 = extractvalue %dx.types.ResRet.f32 %1461, 0
  %1463 = fmul fast float %1462, %1421
  %1464 = fmul fast float %1452, %1401
  %1465 = call float @dx.op.tertiary.f32(i32 46, float %1402, float %1454, float %1464)  ; FMad(a,b,c)
  %1466 = fmul fast float %1453, %1401
  %1467 = call float @dx.op.tertiary.f32(i32 46, float %1402, float %1452, float %1466)  ; FMad(a,b,c)
  %1468 = fadd fast float %1465, %1449
  %1469 = fadd fast float %1467, %1450
  %1470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1355, float %1468, float %1469, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = fmul fast float %1471, %1422
  %1473 = fadd fast float %1472, %1463
  %1474 = fmul fast float %1436, %1403
  %1475 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1438, float %1474)  ; FMad(a,b,c)
  %1476 = fmul fast float %1437, %1403
  %1477 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1436, float %1476)  ; FMad(a,b,c)
  %1478 = fadd fast float %1475, %1433
  %1479 = fadd fast float %1477, %1434
  %1480 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1355, float %1478, float %1479, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = fmul fast float %1481, %1421
  %1483 = fmul fast float %1452, %1403
  %1484 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1454, float %1483)  ; FMad(a,b,c)
  %1485 = fmul fast float %1453, %1403
  %1486 = call float @dx.op.tertiary.f32(i32 46, float %1404, float %1452, float %1485)  ; FMad(a,b,c)
  %1487 = fadd fast float %1484, %1449
  %1488 = fadd fast float %1486, %1450
  %1489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1355, float %1487, float %1488, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = fmul fast float %1490, %1422
  %1492 = fadd fast float %1491, %1482
  br label %1498

; <label>:1493                                    ; preds = %1339
  %1494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1355, float %1401, float %1402, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1355, float %1403, float %1404, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1497 = extractvalue %dx.types.ResRet.f32 %1496, 0
  br label %1498

; <label>:1498                                    ; preds = %1493, %1406
  %1499 = phi float [ %1473, %1406 ], [ %1495, %1493 ]
  %1500 = phi float [ %1492, %1406 ], [ %1497, %1493 ]
  %1501 = fsub fast float %1500, %1499
  %1502 = fmul fast float %1501, %1400
  %1503 = fadd fast float %1502, %1499
  %1504 = fmul fast float %1324, %1503
  %1505 = fadd fast float %1504, %620
  %1506 = call float @dx.op.unary.f32(i32 7, float %1505)  ; Saturate(value)
  %1507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1508 = extractvalue %dx.types.CBufRet.f32 %1507, 2
  %1509 = fmul fast float %1508, %87
  %1510 = extractvalue %dx.types.CBufRet.f32 %1507, 3
  %1511 = fadd fast float %1509, %1510
  %1512 = call float @dx.op.unary.f32(i32 7, float %1511)  ; Saturate(value)
  %1513 = fcmp fast ogt float %1506, 0.000000e+00
  %1514 = fcmp fast ogt float %1512, 0.000000e+00
  %1515 = and i1 %1513, %1514
  %1516 = and i32 %498, 64
  %1517 = icmp ne i32 %1516, 0
  %1518 = and i1 %1517, %1515
  br i1 %1518, label %1519, label %1607

; <label>:1519                                    ; preds = %1498
  %1520 = add i32 %657, 0
  %1521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1520, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1522 = fmul fast float %1401, %627
  %1523 = fmul fast float %1402, %628
  %1524 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1521, %dx.types.Handle %1355, float %1522, float %1523, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1525 = extractvalue %dx.types.ResRet.f32 %1524, 0
  %1526 = extractvalue %dx.types.ResRet.f32 %1524, 1
  %1527 = extractvalue %dx.types.ResRet.f32 %1524, 2
  %1528 = extractvalue %dx.types.ResRet.f32 %1524, 3
  %1529 = fmul fast float %1525, %643
  %1530 = fadd fast float %1529, %644
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  %1532 = fadd fast float %1526, %1528
  %1533 = fmul fast float %1532, %645
  %1534 = fsub fast float %1533, %645
  %1535 = fsub fast float %1526, %1528
  %1536 = fmul fast float %1535, %645
  %1537 = fmul fast float %1403, %627
  %1538 = fmul fast float %1404, %628
  %1539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1521, %dx.types.Handle %1355, float %1537, float %1538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = extractvalue %dx.types.ResRet.f32 %1539, 1
  %1542 = extractvalue %dx.types.ResRet.f32 %1539, 2
  %1543 = extractvalue %dx.types.ResRet.f32 %1539, 3
  %1544 = fmul fast float %1540, %643
  %1545 = fadd fast float %1544, %644
  %1546 = call float @dx.op.unary.f32(i32 7, float %1545)  ; Saturate(value)
  %1547 = fadd fast float %1541, %1543
  %1548 = fsub fast float %1541, %1543
  %1549 = fsub fast float %1547, %1532
  %1550 = fsub fast float %1548, %1535
  %1551 = fmul fast float %1400, %645
  %1552 = fmul fast float %1551, %1549
  %1553 = fmul fast float %1551, %1550
  %1554 = fadd fast float %1552, %1534
  %1555 = fmul fast float %627, %1554
  %1556 = fadd fast float %1553, %1536
  %1557 = fmul fast float %628, %1556
  %1558 = fsub fast float %1542, %1527
  %1559 = fmul fast float %1558, %1400
  %1560 = fsub fast float %1546, %1531
  %1561 = fmul fast float %1560, %1400
  %1562 = fsub fast float %1540, %1525
  %1563 = fmul fast float %1562, %1400
  %1564 = fsub fast float 1.000000e+00, %1506
  %1565 = bitcast float %1506 to i32
  %1566 = sitofp i32 %1565 to float
  %1567 = fadd fast float %1566, 0xC1CFBF8940000000
  %1568 = fmul fast float %1567, %572
  %1569 = fadd fast float %1568, 0x41CFBF8940000000
  %1570 = fptosi float %1569 to i32
  %1571 = bitcast i32 %1570 to float
  %1572 = bitcast float %1564 to i32
  %1573 = sitofp i32 %1572 to float
  %1574 = fadd fast float %1573, 0xC1CFBF8940000000
  %1575 = fmul fast float %1574, %572
  %1576 = fadd fast float %1575, 0x41CFBF8940000000
  %1577 = fptosi float %1576 to i32
  %1578 = bitcast i32 %1577 to float
  %1579 = fmul fast float %1571, %569
  %1580 = fmul fast float %1578, %569
  %1581 = fsub fast float %1564, %1579
  %1582 = fadd fast float %1580, %1564
  %1583 = call float @dx.op.unary.f32(i32 7, float %1581)  ; Saturate(value)
  %1584 = call float @dx.op.unary.f32(i32 7, float %1582)  ; Saturate(value)
  %1585 = fsub fast float %1525, %1583
  %1586 = fadd fast float %1585, %1563
  %1587 = fsub fast float %1584, %1583
  %1588 = bitcast float %1587 to i32
  %1589 = sub nsw i32 2129859010, %1588
  %1590 = bitcast i32 %1589 to float
  %1591 = fmul fast float %1590, %1586
  %1592 = call float @dx.op.unary.f32(i32 7, float %1591)  ; Saturate(value)
  %1593 = fmul fast float %1512, %566
  %1594 = fmul fast float %1593, %1592
  %1595 = fmul fast float %1555, %1594
  %1596 = fmul fast float %1557, %1594
  %1597 = fadd fast float %1527, -1.000000e+00
  %1598 = fadd fast float %1597, %1559
  %1599 = fmul fast float %1594, %1598
  %1600 = fadd fast float %1599, 1.000000e+00
  %1601 = fsub fast float %1531, %560
  %1602 = fadd fast float %1601, %1561
  %1603 = fmul fast float %1594, %1602
  %1604 = fadd fast float %1603, %560
  %1605 = fmul fast float %1594, %1564
  %1606 = fadd fast float %1605, %1506
  br label %1607

; <label>:1607                                    ; preds = %1519, %1498
  %1608 = phi float [ %1606, %1519 ], [ %1506, %1498 ]
  %1609 = phi float [ %1595, %1519 ], [ 0.000000e+00, %1498 ]
  %1610 = phi float [ %1596, %1519 ], [ 0.000000e+00, %1498 ]
  %1611 = phi float [ %1600, %1519 ], [ 1.000000e+00, %1498 ]
  %1612 = phi float [ %1604, %1519 ], [ %560, %1498 ]
  %1613 = fsub fast float %1609, %1317
  %1614 = fsub fast float %1610, %1318
  %1615 = fmul fast float %1613, %1608
  %1616 = fmul fast float %1614, %1608
  %1617 = fadd fast float %1615, %1317
  %1618 = fadd fast float %1616, %1318
  %1619 = fsub fast float %1611, %1319
  %1620 = fmul fast float %1619, %1608
  %1621 = fadd fast float %1620, %1319
  %1622 = fsub fast float %1612, %1320
  %1623 = fmul fast float %1622, %1608
  %1624 = fadd fast float %1623, %1320
  %1625 = fmul fast float %1608, %989
  %1626 = call float @dx.op.binary.f32(i32 35, float %1316, float %1625)  ; FMax(a,b)
  br label %1627

; <label>:1627                                    ; preds = %1607, %1313
  %1628 = phi float [ %1626, %1607 ], [ %1316, %1313 ]
  %1629 = phi float [ %1617, %1607 ], [ %1317, %1313 ]
  %1630 = phi float [ %1618, %1607 ], [ %1318, %1313 ]
  %1631 = phi float [ %1621, %1607 ], [ %1319, %1313 ]
  %1632 = phi float [ %1624, %1607 ], [ %1320, %1313 ]
  %1633 = and i32 %498, 16
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1635, label %1636

; <label>:1635                                    ; preds = %1627
  br label %1702

; <label>:1636                                    ; preds = %1627
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1640 = fadd fast float %1638, %153
  %1641 = fadd fast float %1639, %154
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 0
  %1644 = extractvalue %dx.types.CBufRet.f32 %1642, 1
  %1645 = fsub fast float %1640, %1643
  %1646 = fsub fast float %1641, %1644
  %1647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1648 = extractvalue %dx.types.CBufRet.f32 %1647, 2
  %1649 = fmul fast float %1645, %1648
  %1650 = fmul fast float %1646, %1648
  %1651 = fadd fast float %1649, 5.000000e-01
  %1652 = fadd fast float %1650, 5.000000e-01
  %1653 = fcmp fast olt float %1651, 0.000000e+00
  %1654 = fcmp fast olt float %1652, 0.000000e+00
  %1655 = or i1 %1653, %1654
  %1656 = fcmp fast oge float %1651, 1.000000e+00
  %1657 = fcmp fast oge float %1652, 1.000000e+00
  %1658 = or i1 %1656, %1657
  %1659 = or i1 %1655, %1658
  br i1 %1659, label %1693, label %1660

; <label>:1660                                    ; preds = %1636
  %1661 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1662 = fadd fast float %1661, %155
  %1663 = fmul fast float %1648, %1640
  %1664 = fmul fast float %1648, %1641
  %1665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1666 = extractvalue %dx.types.CBufRet.f32 %1665, 2
  %1667 = fsub fast float %1662, %1666
  %1668 = extractvalue %dx.types.CBufRet.f32 %1665, 1
  %1669 = fmul fast float %1667, %1668
  %1670 = call float @dx.op.unary.f32(i32 7, float %1669)  ; Saturate(value)
  %1671 = call float @dx.op.binary.f32(i32 36, float %1652, float %1670)  ; FMin(a,b)
  %1672 = call float @dx.op.binary.f32(i32 36, float %1651, float %1671)  ; FMin(a,b)
  %1673 = call float @dx.op.binary.f32(i32 35, float %1652, float %1670)  ; FMax(a,b)
  %1674 = call float @dx.op.binary.f32(i32 35, float %1651, float %1673)  ; FMax(a,b)
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = call float @dx.op.binary.f32(i32 36, float %1672, float %1675)  ; FMin(a,b)
  %1677 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1678 = extractvalue %dx.types.CBufRet.f32 %1677, 3
  %1679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1680 = extractvalue %dx.types.CBufRet.f32 %1679, 1
  %1681 = call float @dx.op.binary.f32(i32 35, float %1680, float %1678)  ; FMax(a,b)
  %1682 = fsub fast float %1681, %1680
  %1683 = fsub fast float %1676, %1680
  %1684 = fdiv fast float %1683, %1682
  %1685 = call float @dx.op.unary.f32(i32 7, float %1684)  ; Saturate(value)
  %1686 = fmul fast float %1685, 2.000000e+00
  %1687 = fsub fast float 3.000000e+00, %1686
  %1688 = fmul fast float %1685, %1685
  %1689 = fmul fast float %1688, %1687
  %1690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %60, float %1663, float %1664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = fmul fast float %1689, %1691
  br label %1693

; <label>:1693                                    ; preds = %1660, %1636
  %1694 = phi float [ %1692, %1660 ], [ 0.000000e+00, %1636 ]
  %1695 = fmul fast float %634, %235
  %1696 = fmul fast float %634, %236
  %1697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %697, %dx.types.Handle %1697, float %1695, float %1696, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1700 = fmul fast float %1699, %1694
  %1701 = call float @dx.op.binary.f32(i32 35, float %1628, float %1700)  ; FMax(a,b)
  br label %1702

; <label>:1702                                    ; preds = %1693, %1635
  %1703 = phi float [ %1701, %1693 ], [ %1628, %1635 ]
  %1704 = fmul fast float %236, 3.906250e-03
  %1705 = fmul fast float %235, 7.812500e-03
  %1706 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1707 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %697, %dx.types.Handle %1706, float %1705, float %1704, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1708 = add i32 %651, 0
  %1709 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1708, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1710 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1709, i32 0)  ; GetDimensions(handle,mipLevel)
  %1711 = extractvalue %dx.types.Dimensions %1710, 0
  %1712 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1711)  ; FirstbitLo(value)
  %1713 = uitofp i32 %1712 to float
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1717 = extractvalue %dx.types.CBufRet.f32 %1716, 2
  %1718 = fadd fast float %245, -7.000000e+00
  %1719 = fadd fast float %1718, %1713
  %1720 = fadd fast float %1719, %1715
  %1721 = fadd fast float %1720, %1717
  %1722 = call float @dx.op.binary.f32(i32 35, float %1721, float 0.000000e+00)  ; FMax(a,b)
  %1723 = and i32 %498, 8
  %1724 = icmp eq i32 %1723, 0
  br i1 %1724, label %1741, label %1725

; <label>:1725                                    ; preds = %1702
  %1726 = fadd fast float %631, 1.000000e+00
  %1727 = fmul fast float %989, %1726
  %1728 = fsub fast float %1727, %631
  %1729 = fsub fast float %1726, %1728
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1731 = fsub fast float 1.000000e+00, %1727
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fsub fast float %1730, %1732
  %1734 = fsub fast float %1703, %1732
  %1735 = fdiv fast float %1734, %1733
  %1736 = call float @dx.op.unary.f32(i32 7, float %1735)  ; Saturate(value)
  %1737 = fmul fast float %1736, 2.000000e+00
  %1738 = fsub fast float 3.000000e+00, %1737
  %1739 = fmul fast float %1736, %1736
  %1740 = fmul fast float %1739, %1738
  br label %1741

; <label>:1741                                    ; preds = %1725, %1702
  %1742 = phi float [ %1740, %1725 ], [ %1703, %1702 ]
  %1743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1744 = extractvalue %dx.types.CBufRet.f32 %1743, 3
  %1745 = fmul fast float %1744, %1742
  %1746 = fmul fast float %1745, %488
  %1747 = fadd fast float %1746, %454
  %1748 = call float @dx.op.unary.f32(i32 7, float %1747)  ; Saturate(value)
  %1749 = and i32 %498, 32
  %1750 = icmp eq i32 %1749, 0
  br i1 %1750, label %1767, label %1751

; <label>:1751                                    ; preds = %1741
  %1752 = add i32 %654, 0
  %1753 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1752, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1754 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1753, %dx.types.Handle %61, float %1745, float %563, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1755 = extractvalue %dx.types.ResRet.f32 %1754, 0
  %1756 = extractvalue %dx.types.ResRet.f32 %1754, 1
  %1757 = extractvalue %dx.types.ResRet.f32 %1754, 2
  %1758 = extractvalue %dx.types.ResRet.f32 %1754, 3
  %1759 = and i32 %648, 255
  %1760 = uitofp i32 %1759 to float
  %1761 = lshr i32 %648, 8
  %1762 = and i32 %1761, 255
  %1763 = uitofp i32 %1762 to float
  %1764 = fmul fast float %1758, %1760
  %1765 = fadd fast float %1764, %1763
  %1766 = fmul fast float %1765, 0x3F70101000000000
  br label %1767

; <label>:1767                                    ; preds = %1751, %1741
  %1768 = phi float [ %1755, %1751 ], [ %554, %1741 ]
  %1769 = phi float [ %1756, %1751 ], [ %555, %1741 ]
  %1770 = phi float [ %1757, %1751 ], [ %556, %1741 ]
  %1771 = phi float [ %1766, %1751 ], [ %557, %1741 ]
  %1772 = fsub fast float %1768, %510
  %1773 = fsub fast float %1769, %511
  %1774 = fsub fast float %1770, %512
  %1775 = fmul fast float %1772, %1745
  %1776 = fmul fast float %1773, %1745
  %1777 = fmul fast float %1774, %1745
  %1778 = fadd fast float %1775, %510
  %1779 = fadd fast float %1776, %511
  %1780 = fadd fast float %1777, %512
  %1781 = fsub fast float %1771, %513
  %1782 = fmul fast float %1781, %1745
  %1783 = fadd fast float %1782, %513
  %1784 = fsub fast float %1632, %516
  %1785 = fmul fast float %1745, %1784
  %1786 = fadd fast float %1785, %516
  %1787 = fadd fast float %1631, -1.000000e+00
  %1788 = fmul fast float %1745, %1787
  %1789 = fadd fast float %1788, 1.000000e+00
  %1790 = fmul fast float %1746, %1629
  %1791 = fmul fast float %1746, %1630
  %1792 = fadd fast float %1790, %1314
  %1793 = fadd fast float %1791, %1315
  %1794 = fmul fast float %519, %376
  %1795 = fadd fast float %1794, %520
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 2
  %1798 = fcmp fast oge float %1795, %1797
  %1799 = select i1 %1798, i32 512, i32 0
  %1800 = or i32 %1017, %451
  %1801 = or i32 %1800, %1023
  %1802 = or i32 %1801, %1334
  %1803 = or i32 %1802, %999
  %1804 = or i32 %1803, %1015
  %1805 = or i32 %1804, %1001
  %1806 = or i32 %1805, %1021
  %1807 = or i32 %1806, %1338
  %1808 = or i32 %1807, %1799
  %1809 = and i32 %444, 65535
  %1810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1809)  ; LegacyF16ToF32(value)
  %1811 = lshr i32 %444, 16
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = and i32 %445, 65535
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = lshr i32 %445, 16
  %1816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1815)  ; LegacyF16ToF32(value)
  %1817 = fmul fast float %1778, %488
  %1818 = fmul fast float %1779, %488
  %1819 = fmul fast float %1780, %488
  %1820 = fmul fast float %1783, %488
  %1821 = fadd fast float %1810, %1817
  %1822 = fadd fast float %1812, %1818
  %1823 = fadd fast float %1814, %1819
  %1824 = fadd fast float %1816, %1820
  %1825 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1821)  ; LegacyF32ToF16(value)
  %1826 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1822)  ; LegacyF32ToF16(value)
  %1827 = shl i32 %1826, 16
  %1828 = or i32 %1827, %1825
  %1829 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1823)  ; LegacyF32ToF16(value)
  %1830 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1824)  ; LegacyF32ToF16(value)
  %1831 = shl i32 %1830, 16
  %1832 = or i32 %1831, %1829
  %1833 = and i32 %456, 65535
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = lshr i32 %456, 16
  %1836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1835)  ; LegacyF16ToF32(value)
  %1837 = fmul fast float %1789, %488
  %1838 = fmul fast float %1786, %488
  %1839 = fadd fast float %1834, %1837
  %1840 = fadd fast float %1836, %1838
  %1841 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1839)  ; LegacyF32ToF16(value)
  %1842 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1840)  ; LegacyF32ToF16(value)
  %1843 = shl i32 %1842, 16
  %1844 = or i32 %1843, %1841
  br label %1845

; <label>:1845                                    ; preds = %1767, %436
  %1846 = phi i32 [ %680, %1767 ], [ %437, %436 ]
  %1847 = phi float [ %1792, %1767 ], [ %438, %436 ]
  %1848 = phi float [ %1793, %1767 ], [ %439, %436 ]
  %1849 = phi float [ %991, %1767 ], [ %440, %436 ]
  %1850 = phi float [ %992, %1767 ], [ %441, %436 ]
  %1851 = phi float [ %993, %1767 ], [ %442, %436 ]
  %1852 = phi float [ %694, %1767 ], [ %443, %436 ]
  %1853 = phi i32 [ %1828, %1767 ], [ %444, %436 ]
  %1854 = phi i32 [ %1832, %1767 ], [ %445, %436 ]
  %1855 = phi float [ %995, %1767 ], [ %446, %436 ]
  %1856 = phi float [ %997, %1767 ], [ %447, %436 ]
  %1857 = phi i32 [ %495, %1767 ], [ %448, %436 ]
  %1858 = phi float [ %1013, %1767 ], [ %449, %436 ]
  %1859 = phi float [ %1332, %1767 ], [ %450, %436 ]
  %1860 = phi i32 [ %1808, %1767 ], [ %451, %436 ]
  %1861 = phi float [ %1707, %1767 ], [ %452, %436 ]
  %1862 = phi float [ %1722, %1767 ], [ %453, %436 ]
  %1863 = phi float [ %1748, %1767 ], [ %454, %436 ]
  %1864 = phi i32 [ %1844, %1767 ], [ %456, %436 ]
  %1865 = icmp eq i32 %461, 0
  br i1 %1865, label %1866, label %436

; <label>:1866                                    ; preds = %1845
  br label %1867

; <label>:1867                                    ; preds = %1866, %431
  %1868 = phi i32 [ %203, %431 ], [ %1846, %1866 ]
  %1869 = phi float [ 0.000000e+00, %431 ], [ %1847, %1866 ]
  %1870 = phi float [ 0.000000e+00, %431 ], [ %1848, %1866 ]
  %1871 = phi float [ 0.000000e+00, %431 ], [ %1849, %1866 ]
  %1872 = phi float [ 0.000000e+00, %431 ], [ %1850, %1866 ]
  %1873 = phi float [ 0.000000e+00, %431 ], [ %1851, %1866 ]
  %1874 = phi float [ 0.000000e+00, %431 ], [ %1852, %1866 ]
  %1875 = phi i32 [ %180, %431 ], [ %1853, %1866 ]
  %1876 = phi i32 [ %180, %431 ], [ %1854, %1866 ]
  %1877 = phi float [ 0.000000e+00, %431 ], [ %1855, %1866 ]
  %1878 = phi float [ 0.000000e+00, %431 ], [ %1856, %1866 ]
  %1879 = phi i32 [ 0, %431 ], [ %1857, %1866 ]
  %1880 = phi float [ 0.000000e+00, %431 ], [ %1858, %1866 ]
  %1881 = phi float [ 0.000000e+00, %431 ], [ %1859, %1866 ]
  %1882 = phi i32 [ 0, %431 ], [ %1860, %1866 ]
  %1883 = phi float [ 0.000000e+00, %431 ], [ %1861, %1866 ]
  %1884 = phi float [ 0.000000e+00, %431 ], [ %1862, %1866 ]
  %1885 = phi float [ 0.000000e+00, %431 ], [ %1863, %1866 ]
  %1886 = phi i32 [ %180, %431 ], [ %1864, %1866 ]
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 2
  %1889 = fmul fast float %1888, 0x3FE3C6EF40000000
  %1890 = frem fast float %98, 2.560000e+02
  %1891 = frem fast float %99, 2.560000e+02
  %1892 = fptoui float %1890 to i32
  %1893 = fptoui float %1891 to i32
  %1894 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %1892, i32 %1893, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1895 = extractvalue %dx.types.ResRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.ResRet.f32 %1894, 1
  %1897 = fadd fast float %1895, %1889
  %1898 = fadd fast float %1896, %1889
  %1899 = call float @dx.op.unary.f32(i32 22, float %1897)  ; Frc(value)
  %1900 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1901 = fcmp fast ogt float %119, 0.000000e+00
  %1902 = fcmp fast olt float %119, 0.000000e+00
  %1903 = zext i1 %1901 to i32
  %1904 = zext i1 %1902 to i32
  %1905 = sub nsw i32 %1903, %1904
  %1906 = sitofp i32 %1905 to float
  %1907 = fadd fast float %1906, %119
  %1908 = fdiv fast float -1.000000e+00, %1907
  %1909 = fmul fast float %117, %118
  %1910 = fmul fast float %1909, %1908
  %1911 = fmul fast float %117, %117
  %1912 = fmul fast float %1911, %1906
  %1913 = fmul fast float %1912, %1908
  %1914 = fadd fast float %1913, 1.000000e+00
  %1915 = fmul fast float %1910, %1906
  %1916 = fmul fast float %1906, %117
  %1917 = fsub fast float -0.000000e+00, %1916
  %1918 = fmul fast float %118, %118
  %1919 = fmul fast float %1918, %1908
  %1920 = fadd fast float %1919, %1906
  %1921 = fsub fast float -0.000000e+00, %118
  %1922 = and i32 %1875, 65535
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = lshr i32 %1875, 16
  %1925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1924)  ; LegacyF16ToF32(value)
  %1926 = and i32 %1876, 65535
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = lshr i32 %1876, 16
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = and i32 %1886, 65535
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = lshr i32 %1886, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = call float @dx.op.unary.f32(i32 7, float %1933)  ; Saturate(value)
  %1935 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %1936 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1937 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1938 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %1939 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1940 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1941 = fadd fast float %1935, %153
  %1942 = fadd fast float %1936, %154
  %1943 = fadd fast float %1937, %155
  %1944 = fadd fast float %1938, %153
  %1945 = fadd fast float %1939, %154
  %1946 = fadd fast float %1940, %155
  %1947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1948 = extractvalue %dx.types.CBufRet.f32 %1947, 0
  %1949 = extractvalue %dx.types.CBufRet.f32 %1947, 1
  %1950 = extractvalue %dx.types.CBufRet.f32 %1947, 2
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 2
  %1953 = extractvalue %dx.types.CBufRet.f32 %1951, 3
  %1954 = fmul fast float %1948, %98
  %1955 = fmul fast float %1954, %1952
  %1956 = fmul fast float %1949, %99
  %1957 = fmul fast float %1956, %1953
  %1958 = fptoui float %1955 to i32
  %1959 = fptoui float %1957 to i32
  %1960 = fadd fast float %1948, -1.000000e+00
  %1961 = fadd fast float %1949, -1.000000e+00
  %1962 = fptoui float %1960 to i32
  %1963 = fptoui float %1961 to i32
  %1964 = call i32 @dx.op.binary.i32(i32 40, i32 %1958, i32 %1962)  ; UMin(a,b)
  %1965 = call i32 @dx.op.binary.i32(i32 40, i32 %1959, i32 %1963)  ; UMin(a,b)
  %1966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1967 = extractvalue %dx.types.CBufRet.f32 %1966, 2
  %1968 = extractvalue %dx.types.CBufRet.f32 %1966, 3
  %1969 = fmul fast float %1967, %87
  %1970 = fsub fast float %1969, %1968
  %1971 = fadd fast float %1950, -1.000000e+00
  %1972 = call float @dx.op.binary.f32(i32 36, float %1970, float %1971)  ; FMin(a,b)
  %1973 = fptoui float %1972 to i32
  %1974 = fptoui float %1948 to i32
  %1975 = fptoui float %1949 to i32
  %1976 = mul i32 %1973, %1975
  %1977 = add i32 %1976, %1965
  %1978 = mul i32 %1977, %1974
  %1979 = add i32 %1978, %1964
  %1980 = shl i32 %1979, 2
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 1023
  %1984 = lshr i32 %1982, 10
  %1985 = icmp eq i32 %1983, 0
  br i1 %1985, label %2382, label %1986

; <label>:1986                                    ; preds = %1867
  %1987 = and i32 %1982, 1023
  br label %1988

; <label>:1988                                    ; preds = %2109, %1986
  %1989 = phi float [ %2110, %2109 ], [ 0.000000e+00, %1986 ]
  %1990 = phi float [ %2111, %2109 ], [ 0.000000e+00, %1986 ]
  %1991 = phi float [ %2112, %2109 ], [ 0.000000e+00, %1986 ]
  %1992 = phi float [ %2113, %2109 ], [ %1869, %1986 ]
  %1993 = phi float [ %2114, %2109 ], [ %1870, %1986 ]
  %1994 = phi float [ %2115, %2109 ], [ %1931, %1986 ]
  %1995 = phi float [ %2116, %2109 ], [ %1934, %1986 ]
  %1996 = phi float [ %2117, %2109 ], [ 0.000000e+00, %1986 ]
  %1997 = phi float [ %2118, %2109 ], [ %1929, %1986 ]
  %1998 = phi float [ %2119, %2109 ], [ %1923, %1986 ]
  %1999 = phi float [ %2120, %2109 ], [ %1925, %1986 ]
  %2000 = phi float [ %2121, %2109 ], [ %1927, %1986 ]
  %2001 = phi i32 [ %2122, %2109 ], [ 0, %1986 ]
  %2002 = phi i32 [ %2058, %2109 ], [ 0, %1986 ]
  %2003 = add nuw nsw i32 %2002, %1984
  %2004 = shl i32 %2003, 2
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = shl i32 %2006, 8
  %2008 = or i32 %2007, 48
  %2009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.ResRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.ResRet.f32 %2009, 2
  %2013 = extractvalue %dx.types.ResRet.f32 %2009, 3
  %2014 = or i32 %2007, 64
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2014, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = extractvalue %dx.types.ResRet.i32 %2015, 1
  %2018 = or i32 %2007, 80
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 2
  %2021 = extractvalue %dx.types.ResRet.f32 %2019, 3
  %2022 = or i32 %2007, 96
  %2023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.ResRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.ResRet.f32 %2023, 2
  %2027 = extractvalue %dx.types.ResRet.f32 %2023, 3
  %2028 = or i32 %2007, 112
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 2
  %2031 = or i32 %2007, 128
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.ResRet.f32 %2032, 1
  %2035 = extractvalue %dx.types.ResRet.f32 %2032, 2
  %2036 = extractvalue %dx.types.ResRet.f32 %2032, 3
  %2037 = or i32 %2007, 144
  %2038 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.ResRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.ResRet.f32 %2038, 2
  %2042 = extractvalue %dx.types.ResRet.f32 %2038, 3
  %2043 = or i32 %2007, 160
  %2044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = extractvalue %dx.types.ResRet.f32 %2044, 1
  %2047 = extractvalue %dx.types.ResRet.f32 %2044, 2
  %2048 = or i32 %2007, 192
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = or i32 %2007, 208
  %2052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = or i32 %2007, 248
  %2055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.f32 %2055, 0
  %2057 = extractvalue %dx.types.ResRet.f32 %2055, 1
  %2058 = add nuw nsw i32 %2002, 1
  %2059 = bitcast float %2013 to i32
  %2060 = and i32 %2059, 512
  %2061 = icmp ne i32 %2060, 0
  %2062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = extractvalue %dx.types.ResRet.f32 %2062, 1
  %2065 = extractvalue %dx.types.ResRet.f32 %2062, 2
  %2066 = extractvalue %dx.types.ResRet.f32 %2062, 3
  %2067 = call float @dx.op.dot4.f32(i32 56, float %2063, float %2064, float %2065, float %2066, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2068 = or i32 %2007, 16
  %2069 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.f32 %2069, 0
  %2071 = extractvalue %dx.types.ResRet.f32 %2069, 1
  %2072 = extractvalue %dx.types.ResRet.f32 %2069, 2
  %2073 = extractvalue %dx.types.ResRet.f32 %2069, 3
  %2074 = call float @dx.op.dot4.f32(i32 56, float %2070, float %2071, float %2072, float %2073, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2075 = or i32 %2007, 32
  %2076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = extractvalue %dx.types.ResRet.f32 %2076, 3
  %2081 = call float @dx.op.dot4.f32(i32 56, float %2077, float %2078, float %2079, float %2080, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2082 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2083 = call float @dx.op.unary.f32(i32 6, float %2082)  ; FAbs(value)
  %2084 = call float @dx.op.unary.f32(i32 27, float %2074)  ; Round_ni(value)
  %2085 = call float @dx.op.unary.f32(i32 6, float %2084)  ; FAbs(value)
  %2086 = call float @dx.op.unary.f32(i32 6, float %2081)  ; FAbs(value)
  %2087 = call float @dx.op.unary.f32(i32 27, float %2086)  ; Round_ni(value)
  %2088 = fadd fast float %2085, %2083
  %2089 = fadd fast float %2088, %2087
  %2090 = fcmp fast oeq float %2089, 0.000000e+00
  %2091 = call float @dx.op.dot4.f32(i32 56, float %2063, float %2064, float %2065, float %2066, float %1941, float %1942, float %1943, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2092 = call float @dx.op.dot4.f32(i32 56, float %2070, float %2071, float %2072, float %2073, float %1941, float %1942, float %1943, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2093 = call float @dx.op.dot4.f32(i32 56, float %2063, float %2064, float %2065, float %2066, float %1944, float %1945, float %1946, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2094 = call float @dx.op.dot4.f32(i32 56, float %2070, float %2071, float %2072, float %2073, float %1944, float %1945, float %1946, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2095 = fsub fast float %2091, %2067
  %2096 = fsub fast float %2093, %2067
  %2097 = fsub fast float %2092, %2074
  %2098 = fsub fast float %2094, %2074
  %2099 = call float @dx.op.dot3.f32(i32 55, float %2010, float %2011, float %2012, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 2
  %2102 = call float @dx.op.unary.f32(i32 6, float %2099)  ; FAbs(value)
  %2103 = fadd fast float %2102, %2101
  %2104 = call float @dx.op.unary.f32(i32 7, float %2103)  ; Saturate(value)
  %2105 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2106 = fcmp fast ogt float %2104, %2105
  %2107 = and i1 %2090, %2106
  %2108 = and i1 %2061, %2107
  br i1 %2108, label %2124, label %2109

; <label>:2109                                    ; preds = %2368, %2206, %2124, %1988
  %2110 = phi float [ %1989, %2124 ], [ %1989, %2206 ], [ %2378, %2368 ], [ %1989, %1988 ]
  %2111 = phi float [ %1990, %2124 ], [ %1990, %2206 ], [ %2379, %2368 ], [ %1990, %1988 ]
  %2112 = phi float [ %1991, %2124 ], [ %1991, %2206 ], [ %2380, %2368 ], [ %1991, %1988 ]
  %2113 = phi float [ %1992, %2124 ], [ %1992, %2206 ], [ %2342, %2368 ], [ %1992, %1988 ]
  %2114 = phi float [ %1993, %2124 ], [ %1993, %2206 ], [ %2343, %2368 ], [ %1993, %1988 ]
  %2115 = phi float [ %1994, %2124 ], [ %1994, %2206 ], [ %2337, %2368 ], [ %1994, %1988 ]
  %2116 = phi float [ %1995, %2124 ], [ %1995, %2206 ], [ %2334, %2368 ], [ %1995, %1988 ]
  %2117 = phi float [ %1996, %2124 ], [ %1996, %2206 ], [ %2331, %2368 ], [ %1996, %1988 ]
  %2118 = phi float [ %1997, %2124 ], [ %1997, %2206 ], [ %2329, %2368 ], [ %1997, %1988 ]
  %2119 = phi float [ %1998, %2124 ], [ %1998, %2206 ], [ %2324, %2368 ], [ %1998, %1988 ]
  %2120 = phi float [ %1999, %2124 ], [ %1999, %2206 ], [ %2325, %2368 ], [ %1999, %1988 ]
  %2121 = phi float [ %2000, %2124 ], [ %2000, %2206 ], [ %2326, %2368 ], [ %2000, %1988 ]
  %2122 = phi i32 [ %2132, %2124 ], [ %2132, %2206 ], [ %2132, %2368 ], [ %2001, %1988 ]
  %2123 = icmp eq i32 %2058, %1987
  br i1 %2123, label %2381, label %1988

; <label>:2124                                    ; preds = %1988
  %2125 = extractvalue %dx.types.ResRet.f32 %2029, 3
  %2126 = extractvalue %dx.types.ResRet.f32 %2029, 1
  %2127 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2128 = extractvalue %dx.types.ResRet.f32 %2019, 1
  %2129 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2130 = extractvalue %dx.types.ResRet.i32 %2015, 3
  %2131 = extractvalue %dx.types.ResRet.i32 %2015, 2
  %2132 = add i32 %2001, 1
  %2133 = add i32 %2130, 0
  %2134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2133, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2136 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2134, %dx.types.Handle %2135, float %2067, float %2074, float undef, float undef, i32 0, i32 0, i32 undef, float %2095, float %2097, float undef, float %2096, float %2098, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2137 = extractvalue %dx.types.ResRet.f32 %2136, 0
  %2138 = fmul fast float %2137, %2129
  %2139 = fadd fast float %2138, %2128
  %2140 = call float @dx.op.unary.f32(i32 7, float %2139)  ; Saturate(value)
  %2141 = fmul fast float %2067, %2024
  %2142 = call float @dx.op.tertiary.f32(i32 46, float %2025, float %2074, float %2141)  ; FMad(a,b,c)
  %2143 = fadd fast float %2142, %2127
  %2144 = fmul fast float %2067, %2026
  %2145 = call float @dx.op.tertiary.f32(i32 46, float %2027, float %2074, float %2144)  ; FMad(a,b,c)
  %2146 = fadd fast float %2145, %2126
  %2147 = fmul fast float %2095, %2024
  %2148 = call float @dx.op.tertiary.f32(i32 46, float %2025, float %2097, float %2147)  ; FMad(a,b,c)
  %2149 = fmul fast float %2095, %2026
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2027, float %2097, float %2149)  ; FMad(a,b,c)
  %2151 = fmul fast float %2096, %2024
  %2152 = call float @dx.op.tertiary.f32(i32 46, float %2025, float %2098, float %2151)  ; FMad(a,b,c)
  %2153 = fmul fast float %2096, %2026
  %2154 = call float @dx.op.tertiary.f32(i32 46, float %2027, float %2098, float %2153)  ; FMad(a,b,c)
  %2155 = add i32 %2131, 0
  %2156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2156, %dx.types.Handle %2135, float %2143, float %2146, float undef, float undef, i32 0, i32 0, i32 undef, float %2148, float %2150, float undef, float %2152, float %2154, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = and i32 %2059, 1024
  %2160 = icmp ne i32 %2159, 0
  %2161 = fcmp fast ogt float %2158, 0x3FE0101020000000
  %2162 = uitofp i1 %2161 to float
  %2163 = select i1 %2160, float %2162, float %2158
  %2164 = and i32 %2059, 8192
  %2165 = icmp ne i32 %2164, 0
  %2166 = select i1 %2165, float %2125, float 1.000000e+00
  %2167 = fmul fast float %2067, 2.000000e+00
  %2168 = fadd fast float %2167, -1.000000e+00
  %2169 = call float @dx.op.unary.f32(i32 6, float %2168)  ; FAbs(value)
  %2170 = fmul fast float %2169, %2056
  %2171 = fsub fast float %2170, %2056
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fmul fast float %2074, 2.000000e+00
  %2174 = fadd fast float %2173, -1.000000e+00
  %2175 = call float @dx.op.unary.f32(i32 6, float %2174)  ; FAbs(value)
  %2176 = fmul fast float %2175, %2057
  %2177 = fsub fast float %2176, %2057
  %2178 = call float @dx.op.unary.f32(i32 7, float %2177)  ; Saturate(value)
  %2179 = fmul fast float %2086, %2020
  %2180 = fsub fast float %2179, %2020
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fmul fast float %2140, %2166
  %2183 = fmul fast float %2182, %2137
  %2184 = fmul fast float %2183, %2172
  %2185 = fmul fast float %2184, %2163
  %2186 = fmul fast float %2185, %2178
  %2187 = fmul fast float %2186, %2181
  %2188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2189 = extractvalue %dx.types.CBufRet.f32 %2188, 1
  %2190 = extractvalue %dx.types.CBufRet.f32 %2188, 0
  %2191 = fsub fast float %2104, %2190
  %2192 = fmul fast float %2191, %2189
  %2193 = call float @dx.op.unary.f32(i32 7, float %2192)  ; Saturate(value)
  %2194 = fmul fast float %2187, %2021
  %2195 = fadd fast float %2187, %2021
  %2196 = fmul fast float %2195, %2030
  %2197 = fsub fast float %2196, %2030
  %2198 = call float @dx.op.unary.f32(i32 7, float %2197)  ; Saturate(value)
  %2199 = and i32 %2059, 128
  %2200 = icmp ne i32 %2199, 0
  %2201 = select i1 %2200, float %2198, float %2194
  %2202 = fmul fast float %2201, %2193
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = fcmp fast ugt float %2202, %2204
  br i1 %2205, label %2206, label %2109

; <label>:2206                                    ; preds = %2124
  br i1 %2165, label %2109, label %2207

; <label>:2207                                    ; preds = %2206
  %2208 = and i32 %2059, 4
  %2209 = and i32 %2059, 8
  %2210 = add i32 %2016, 0
  %2211 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2210, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2213 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2211, %dx.types.Handle %2212, float %2143, float %2146, float undef, float undef, i32 0, i32 0, i32 undef, float %2148, float %2150, float undef, float %2152, float %2154, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.ResRet.f32 %2213, 1
  %2216 = extractvalue %dx.types.ResRet.f32 %2213, 2
  %2217 = extractvalue %dx.types.ResRet.f32 %2213, 3
  %2218 = bitcast float %2042 to i32
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = lshr i32 %2218, 8
  %2222 = and i32 %2221, 255
  %2223 = uitofp i32 %2222 to float
  %2224 = fmul fast float %2217, %2220
  %2225 = fadd fast float %2224, %2223
  %2226 = fmul fast float %2225, 0x3F70101000000000
  %2227 = add i32 %2017, 0
  %2228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2227, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2229 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2228, %dx.types.Handle %2212, float %2143, float %2146, float undef, float undef, i32 0, i32 0, i32 undef, float %2148, float %2150, float undef, float %2152, float %2154, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.ResRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.ResRet.f32 %2229, 2
  %2233 = extractvalue %dx.types.ResRet.f32 %2229, 3
  %2234 = bitcast float %2036 to i32
  %2235 = and i32 %2234, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = lshr i32 %2234, 8
  %2238 = and i32 %2237, 255
  %2239 = uitofp i32 %2238 to float
  %2240 = lshr i32 %2234, 16
  %2241 = and i32 %2240, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101000000000
  %2244 = fmul fast float %2230, %2236
  %2245 = fadd fast float %2244, %2239
  %2246 = fmul fast float %2245, 0x3F70101000000000
  %2247 = fadd fast float %2231, -5.000000e-01
  %2248 = fadd fast float %2233, -5.000000e-01
  %2249 = fmul fast float %2247, %2243
  %2250 = fmul fast float %2248, %2243
  %2251 = fadd fast float %2249, 5.000000e-01
  %2252 = fadd fast float %2250, 5.000000e-01
  %2253 = fmul fast float %2214, %2045
  %2254 = fmul fast float %2215, %2046
  %2255 = fmul fast float %2216, %2047
  %2256 = fmul fast float %2251, 2.000000e+00
  %2257 = fadd fast float %2256, -1.000000e+00
  %2258 = fmul fast float %2252, 2.000000e+00
  %2259 = fadd fast float %2258, -1.000000e+00
  %2260 = fadd fast float %2257, %2259
  %2261 = fmul fast float %2260, 5.000000e-01
  %2262 = fsub fast float %2257, %2259
  %2263 = fmul fast float %2262, 5.000000e-01
  %2264 = call float @dx.op.unary.f32(i32 6, float %2261)  ; FAbs(value)
  %2265 = fsub fast float 1.000000e+00, %2264
  %2266 = call float @dx.op.unary.f32(i32 6, float %2263)  ; FAbs(value)
  %2267 = fsub fast float %2265, %2266
  %2268 = call float @dx.op.dot3.f32(i32 55, float %2261, float %2263, float %2267, float %2261, float %2263, float %2267)  ; Dot3(ax,ay,az,bx,by,bz)
  %2269 = call float @dx.op.unary.f32(i32 25, float %2268)  ; Rsqrt(value)
  %2270 = fmul fast float %2261, %2269
  %2271 = fmul fast float %2263, %2269
  %2272 = fmul fast float %2269, %2267
  %2273 = fmul fast float %2272, %2010
  %2274 = fmul fast float %2272, %2011
  %2275 = fmul fast float %2272, %2012
  %2276 = fmul fast float %2270, %2033
  %2277 = fmul fast float %2270, %2034
  %2278 = fmul fast float %2270, %2035
  %2279 = fadd fast float %2276, %2273
  %2280 = fadd fast float %2277, %2274
  %2281 = fadd fast float %2278, %2275
  %2282 = fmul fast float %2271, %2039
  %2283 = fmul fast float %2271, %2040
  %2284 = fmul fast float %2271, %2041
  %2285 = fadd fast float %2279, %2282
  %2286 = fadd fast float %2280, %2283
  %2287 = fadd fast float %2281, %2284
  %2288 = call float @dx.op.dot3.f32(i32 55, float %2285, float %2286, float %2287, float %2285, float %2286, float %2287)  ; Dot3(ax,ay,az,bx,by,bz)
  %2289 = call float @dx.op.unary.f32(i32 25, float %2288)  ; Rsqrt(value)
  %2290 = fmul fast float %2285, %2289
  %2291 = fmul fast float %2286, %2289
  %2292 = fmul fast float %2287, %2289
  %2293 = fcmp fast ogt float %2099, %2105
  %2294 = fsub fast float -0.000000e+00, %2290
  %2295 = fsub fast float -0.000000e+00, %2291
  %2296 = fsub fast float -0.000000e+00, %2292
  %2297 = select i1 %2293, float %2290, float %2294
  %2298 = select i1 %2293, float %2291, float %2295
  %2299 = select i1 %2293, float %2292, float %2296
  %2300 = fmul fast float %2297, %1914
  %2301 = call float @dx.op.tertiary.f32(i32 46, float %2298, float %1915, float %2300)  ; FMad(a,b,c)
  %2302 = call float @dx.op.tertiary.f32(i32 46, float %2299, float %1917, float %2301)  ; FMad(a,b,c)
  %2303 = fmul fast float %2297, %1910
  %2304 = call float @dx.op.tertiary.f32(i32 46, float %2298, float %1920, float %2303)  ; FMad(a,b,c)
  %2305 = call float @dx.op.tertiary.f32(i32 46, float %2299, float %1921, float %2304)  ; FMad(a,b,c)
  %2306 = icmp ne i32 %2209, 0
  %2307 = select i1 %2306, float 1.000000e+00, float 0.000000e+00
  %2308 = fmul fast float %2202, %2307
  %2309 = and i32 %2059, 1
  %2310 = icmp ne i32 %2309, 0
  %2311 = fadd fast float %2302, %1992
  %2312 = fadd fast float %2305, %1993
  %2313 = select i1 %2310, float %2311, float %2302
  %2314 = select i1 %2310, float %2312, float %2305
  %2315 = icmp ne i32 %2208, 0
  %2316 = select i1 %2315, float 1.000000e+00, float 0.000000e+00
  %2317 = fmul fast float %2202, %2316
  %2318 = fsub fast float %2253, %1998
  %2319 = fsub fast float %2254, %1999
  %2320 = fsub fast float %2255, %2000
  %2321 = fmul fast float %2318, %2317
  %2322 = fmul fast float %2319, %2317
  %2323 = fmul fast float %2320, %2317
  %2324 = fadd fast float %2321, %1998
  %2325 = fadd fast float %2322, %1999
  %2326 = fadd fast float %2323, %2000
  %2327 = fsub fast float %2226, %1997
  %2328 = fmul fast float %2327, %2317
  %2329 = fadd fast float %2328, %1997
  %2330 = fadd fast float %2202, %1996
  %2331 = call float @dx.op.unary.f32(i32 7, float %2330)  ; Saturate(value)
  %2332 = fsub fast float %2246, %1995
  %2333 = fmul fast float %2332, %2308
  %2334 = fadd fast float %2333, %1995
  %2335 = fsub fast float %2232, %1994
  %2336 = fmul fast float %2335, %2308
  %2337 = fadd fast float %2336, %1994
  %2338 = fsub fast float %2313, %1992
  %2339 = fsub fast float %2314, %1993
  %2340 = fmul fast float %2338, %2308
  %2341 = fmul fast float %2339, %2308
  %2342 = fadd fast float %2340, %1992
  %2343 = fadd fast float %2341, %1993
  %2344 = and i32 %2059, 16
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2368, label %2346

; <label>:2346                                    ; preds = %2207
  %2347 = bitcast float %2053 to i32
  %2348 = add i32 %2050, 0
  %2349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2348, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2350 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2349, %dx.types.Handle %2212, float %2143, float %2146, float undef, float undef, i32 0, i32 0, i32 undef, float %2148, float %2150, float undef, float %2152, float %2154, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2351 = extractvalue %dx.types.ResRet.f32 %2350, 0
  %2352 = extractvalue %dx.types.ResRet.f32 %2350, 1
  %2353 = extractvalue %dx.types.ResRet.f32 %2350, 2
  %2354 = and i32 %2347, 65535
  %2355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2354)  ; LegacyF16ToF32(value)
  %2356 = fmul fast float %2351, %2045
  %2357 = fmul fast float %2352, %2046
  %2358 = fmul fast float %2353, %2047
  %2359 = and i32 %2059, 16384
  %2360 = icmp ne i32 %2359, 0
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 0
  %2363 = select i1 %2360, float %2362, float 1.000000e+00
  %2364 = fmul fast float %2363, %2355
  %2365 = fmul fast float %2356, %2364
  %2366 = fmul fast float %2357, %2364
  %2367 = fmul fast float %2358, %2364
  br label %2368

; <label>:2368                                    ; preds = %2346, %2207
  %2369 = phi float [ %2365, %2346 ], [ 0.000000e+00, %2207 ]
  %2370 = phi float [ %2366, %2346 ], [ 0.000000e+00, %2207 ]
  %2371 = phi float [ %2367, %2346 ], [ 0.000000e+00, %2207 ]
  %2372 = fsub fast float %2369, %1989
  %2373 = fsub fast float %2370, %1990
  %2374 = fsub fast float %2371, %1991
  %2375 = fmul fast float %2372, %2202
  %2376 = fmul fast float %2373, %2202
  %2377 = fmul fast float %2374, %2202
  %2378 = fadd fast float %2375, %1989
  %2379 = fadd fast float %2376, %1990
  %2380 = fadd fast float %2377, %1991
  br label %2109

; <label>:2381                                    ; preds = %2109
  br label %2382

; <label>:2382                                    ; preds = %2381, %1867
  %2383 = phi float [ 0.000000e+00, %1867 ], [ %2110, %2381 ]
  %2384 = phi float [ 0.000000e+00, %1867 ], [ %2111, %2381 ]
  %2385 = phi float [ 0.000000e+00, %1867 ], [ %2112, %2381 ]
  %2386 = phi float [ %1869, %1867 ], [ %2113, %2381 ]
  %2387 = phi float [ %1870, %1867 ], [ %2114, %2381 ]
  %2388 = phi float [ %1931, %1867 ], [ %2115, %2381 ]
  %2389 = phi float [ %1934, %1867 ], [ %2116, %2381 ]
  %2390 = phi float [ 0.000000e+00, %1867 ], [ %2117, %2381 ]
  %2391 = phi float [ %1929, %1867 ], [ %2118, %2381 ]
  %2392 = phi float [ %1923, %1867 ], [ %2119, %2381 ]
  %2393 = phi float [ %1925, %1867 ], [ %2120, %2381 ]
  %2394 = phi float [ %1927, %1867 ], [ %2121, %2381 ]
  %2395 = phi i32 [ 0, %1867 ], [ %2122, %2381 ]
  %2396 = uitofp i32 %2395 to float
  %2397 = fptoui float %2396 to i32
  %2398 = shl i32 %2397, 16
  %2399 = and i32 %2398, 16711680
  %2400 = call float @dx.op.dot2.f32(i32 54, float %2386, float %2387, float %2386, float %2387)  ; Dot2(ax,ay,bx,by)
  %2401 = fmul fast float %2400, 0x3FE3333340000000
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = call float @dx.op.dot3.f32(i32 55, float %2386, float %2387, float %2402, float %2386, float %2387, float %2402)  ; Dot3(ax,ay,az,bx,by,bz)
  %2404 = call float @dx.op.unary.f32(i32 25, float %2403)  ; Rsqrt(value)
  %2405 = fmul fast float %2404, %2386
  %2406 = fmul fast float %2404, %2387
  %2407 = fmul fast float %2402, %2404
  %2408 = fmul fast float %2407, %117
  %2409 = fmul fast float %2407, %118
  %2410 = fmul fast float %2407, %119
  %2411 = fmul fast float %2405, %1914
  %2412 = fmul fast float %2405, %1915
  %2413 = fmul fast float %2405, %1917
  %2414 = fadd fast float %2408, %2411
  %2415 = fadd fast float %2409, %2412
  %2416 = fadd fast float %2410, %2413
  %2417 = fmul fast float %2406, %1910
  %2418 = fmul fast float %2406, %1920
  %2419 = fmul fast float %2406, %1921
  %2420 = fadd fast float %2414, %2417
  %2421 = fadd fast float %2415, %2418
  %2422 = fadd fast float %2416, %2419
  %2423 = call float @dx.op.dot3.f32(i32 55, float %2420, float %2421, float %2422, float %2420, float %2421, float %2422)  ; Dot3(ax,ay,az,bx,by,bz)
  %2424 = call float @dx.op.unary.f32(i32 25, float %2423)  ; Rsqrt(value)
  %2425 = fmul fast float %2420, %2424
  %2426 = fmul fast float %2421, %2424
  %2427 = fmul fast float %2422, %2424
  %2428 = fadd fast float %2391, 0xBFB99999A0000000
  %2429 = call float @dx.op.unary.f32(i32 7, float %2428)  ; Saturate(value)
  %2430 = fmul fast float %2429, 0x3FF1C71C80000000
  %2431 = call float @dx.op.binary.f32(i32 36, float %2391, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2432 = fsub fast float 1.000000e+00, %2430
  %2433 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2434 = fmul fast float %2433, %2392
  %2435 = fmul fast float %2433, %2393
  %2436 = fmul fast float %2433, %2394
  %2437 = call float @dx.op.unary.f32(i32 7, float %2434)  ; Saturate(value)
  %2438 = call float @dx.op.unary.f32(i32 7, float %2435)  ; Saturate(value)
  %2439 = call float @dx.op.unary.f32(i32 7, float %2436)  ; Saturate(value)
  %2440 = fmul fast float %2430, %2392
  %2441 = fmul fast float %2430, %2393
  %2442 = fmul fast float %2430, %2394
  %2443 = fadd fast float %2440, %2431
  %2444 = fadd fast float %2441, %2431
  %2445 = fadd fast float %2442, %2431
  %2446 = call float @dx.op.unary.f32(i32 7, float %2443)  ; Saturate(value)
  %2447 = call float @dx.op.unary.f32(i32 7, float %2444)  ; Saturate(value)
  %2448 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2449 = fmul fast float %2447, 0x401CF23780000000
  %2450 = fadd fast float %2449, 0x3FF32641C0000000
  %2451 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %2452 = call float @dx.op.unary.f32(i32 25, float %2451)  ; Rsqrt(value)
  %2453 = fmul fast float %2452, %153
  %2454 = fmul fast float %2452, %154
  %2455 = fmul fast float %2452, %155
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2458 = fdiv fast float 1.000000e+00, %2450
  %2459 = select i1 %115, float %2458, float %2450
  %2460 = fadd fast float %2459, -1.000000e+00
  %2461 = fadd fast float %2459, 1.000000e+00
  %2462 = fdiv fast float %2460, %2461
  %2463 = fmul fast float %2462, %2462
  %2464 = call float @dx.op.dot3.f32(i32 55, float %2453, float %2454, float %2455, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %2465 = select i1 %115, float 0.000000e+00, float %2457
  %2466 = fadd fast float %2464, %2465
  %2467 = call float @dx.op.binary.f32(i32 35, float %2466, float -1.000000e+00)  ; FMax(a,b)
  %2468 = call float @dx.op.binary.f32(i32 36, float %2467, float 1.000000e+00)  ; FMin(a,b)
  %2469 = fmul fast float %2459, %2459
  %2470 = fmul fast float %2468, %2468
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2469, %2471
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fcmp fast olt float %2459, 1.000000e+00
  %2475 = select i1 %2474, float %2470, float %2473
  %2476 = fcmp fast ogt float %2473, 0.000000e+00
  %2477 = fsub fast float 1.000000e+00, %2463
  %2478 = call float @dx.op.unary.f32(i32 24, float %2475)  ; Sqrt(value)
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = call float @dx.op.unary.f32(i32 23, float %2479)  ; Log(value)
  %2481 = fmul fast float %2480, 5.000000e+00
  %2482 = call float @dx.op.unary.f32(i32 21, float %2481)  ; Exp(value)
  %2483 = fmul fast float %2482, %2477
  %2484 = fadd fast float %2483, %2463
  %2485 = select i1 %2476, float %2484, float 1.000000e+00
  %2486 = select i1 %115, float %2485, float 0.000000e+00
  %2487 = lshr i32 %1868, 24
  %2488 = uitofp i32 %2487 to float
  %2489 = fmul fast float %2488, 0x3F70101020000000
  %2490 = call float @dx.op.unary.f32(i32 7, float %2489)  ; Saturate(value)
  %2491 = fmul fast float %153, %153
  %2492 = fmul fast float %154, %154
  %2493 = fadd fast float %2492, %2491
  %2494 = fmul fast float %155, %155
  %2495 = fadd fast float %2493, %2494
  %2496 = call float @dx.op.unary.f32(i32 24, float %2495)  ; Sqrt(value)
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 0
  %2499 = fmul fast float %2498, %2496
  %2500 = extractvalue %dx.types.CBufRet.f32 %2497, 1
  %2501 = fadd fast float %2499, %2500
  %2502 = call float @dx.op.unary.f32(i32 7, float %2501)  ; Saturate(value)
  %2503 = fmul fast float %2490, 2.550000e+02
  %2504 = fmul fast float %2503, %2502
  %2505 = fptoui float %2504 to i32
  %2506 = fsub fast float 1.000000e+00, %2446
  %2507 = fsub fast float 1.000000e+00, %2447
  %2508 = fsub fast float 1.000000e+00, %2448
  %2509 = fmul fast float %2486, %2506
  %2510 = fmul fast float %2486, %2507
  %2511 = fmul fast float %2486, %2508
  %2512 = fadd fast float %2509, %2446
  %2513 = fadd fast float %2510, %2447
  %2514 = fadd fast float %2511, %2448
  %2515 = fptoui float %98 to i32
  %2516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2517 = extractvalue %dx.types.CBufRet.f32 %2516, 0
  %2518 = fmul fast float %2517, 5.000000e-01
  %2519 = fptoui float %2518 to i32
  %2520 = icmp eq i32 %2515, %2519
  %2521 = fptoui float %99 to i32
  %2522 = extractvalue %dx.types.CBufRet.f32 %2516, 1
  %2523 = fmul fast float %2522, 5.000000e-01
  %2524 = fptoui float %2523 to i32
  %2525 = icmp eq i32 %2521, %2524
  %2526 = and i1 %2520, %2525
  br i1 %2526, label %2527, label %2551

; <label>:2527                                    ; preds = %2382
  %2528 = call float @dx.op.binary.f32(i32 35, float %2513, float %2514)  ; FMax(a,b)
  %2529 = call float @dx.op.binary.f32(i32 35, float %2512, float %2528)  ; FMax(a,b)
  %2530 = fsub fast float 1.000000e+00, %2529
  %2531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2532 = extractvalue %dx.types.CBufRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.CBufRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.CBufRet.f32 %2531, 2
  %2535 = fadd fast float %2532, %153
  %2536 = fadd fast float %2533, %154
  %2537 = fadd fast float %2534, %155
  %2538 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %2515, i32 %2521, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2540 = fcmp fast ogt float %2539, -1.000000e+00
  %2541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2542 = extractvalue %dx.types.CBufRet.f32 %2541, 1
  %2543 = select i1 %2540, float %2542, float 1.000000e+00
  %2544 = fadd fast float %2539, 1.000000e+00
  %2545 = fmul fast float %2543, %2544
  %2546 = call float @dx.op.unary.f32(i32 6, float %2545)  ; FAbs(value)
  %2547 = call float @dx.op.unary.f32(i32 83, float %79)  ; DerivCoarseX(value)
  %2548 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %2549 = call float @dx.op.unary.f32(i32 84, float %79)  ; DerivCoarseY(value)
  %2550 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2535, float %2536, float %2537, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %98, float %99, float %86, float %87, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %345, float %346, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %308, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %310, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %323, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %325, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2546, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2486, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2512, float %2513, float %2514, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2530, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %197, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %77, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %1880, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1881, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2547, float %2548, float %2549, float %2550, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2551

; <label>:2551                                    ; preds = %2527, %2382
  %2552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2553 = extractvalue %dx.types.CBufRet.f32 %2552, 3
  %2554 = fmul fast float %2553, %2389
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  %2556 = call float @dx.op.unary.f32(i32 7, float %2388)  ; Saturate(value)
  %2557 = fsub fast float 1.000000e+00, %2390
  %2558 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2557)  ; FMin(a,b)
  %2559 = fmul fast float %79, 6.553500e+04
  %2560 = call float @dx.op.unary.f32(i32 26, float %2559)  ; Round_ne(value)
  %2561 = fptosi float %2560 to i32
  %2562 = call i32 @dx.op.binary.i32(i32 37, i32 %2561, i32 0)  ; IMax(a,b)
  %2563 = call i32 @dx.op.binary.i32(i32 38, i32 %2562, i32 65535)  ; IMin(a,b)
  %2564 = fmul fast float %80, 6.553500e+04
  %2565 = call float @dx.op.unary.f32(i32 26, float %2564)  ; Round_ne(value)
  %2566 = fptosi float %2565 to i32
  %2567 = call i32 @dx.op.binary.i32(i32 37, i32 %2566, i32 0)  ; IMax(a,b)
  %2568 = call i32 @dx.op.binary.i32(i32 38, i32 %2567, i32 65535)  ; IMin(a,b)
  %2569 = shl i32 %2568, 16
  %2570 = or i32 %2569, %2563
  %2571 = call float @dx.op.dot3.f32(i32 55, float %2446, float %2447, float %2448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2572 = fsub fast float 1.000000e+00, %2571
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %56, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = and i32 %2574, 255
  %2576 = uitofp i32 %2575 to float
  %2577 = lshr i32 %2574, 8
  %2578 = and i32 %2577, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = fmul fast float %2579, %2572
  %2581 = fadd fast float %2580, %2576
  %2582 = fmul fast float %2581, 0x3F70101020000000
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2585 = extractvalue %dx.types.CBufRet.f32 %2584, 0
  %2586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2587 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2588 = extractvalue %dx.types.CBufRet.i32 %2587, 3
  %2589 = and i32 %2588, 3
  %2590 = icmp ne i32 %2589, 0
  %2591 = and i32 %2588, 4
  %2592 = icmp ne i32 %2591, 0
  %2593 = and i1 %2590, %2592
  br i1 %2593, label %2594, label %2605

; <label>:2594                                    ; preds = %2551
  %2595 = extractvalue %dx.types.CBufRet.f32 %2586, 3
  %2596 = fmul fast float %2595, %99
  %2597 = extractvalue %dx.types.CBufRet.f32 %2586, 2
  %2598 = fmul fast float %2597, %98
  %2599 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %2598, float %2596, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2600 = extractvalue %dx.types.ResRet.f32 %2599, 0
  %2601 = fsub fast float 1.000000e+00, %2600
  %2602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2603 = extractvalue %dx.types.CBufRet.f32 %2602, 0
  %2604 = fcmp fast olt float %2601, %2603
  br label %2608

; <label>:2605                                    ; preds = %2551
  %2606 = icmp eq i32 %2591, 0
  %2607 = and i1 %2590, %2606
  br label %2608

; <label>:2608                                    ; preds = %2605, %2594
  %2609 = phi i1 [ %2604, %2594 ], [ %2607, %2605 ]
  %2610 = fsub fast float -0.000000e+00, %155
  %2611 = fsub fast float -0.000000e+00, %2453
  %2612 = fsub fast float -0.000000e+00, %2454
  %2613 = fsub fast float -0.000000e+00, %2455
  %2614 = select i1 %2609, float 0.000000e+00, float %2448
  %2615 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float %2611, float %2612, float %2613)  ; Dot3(ax,ay,az,bx,by,bz)
  %2616 = call float @dx.op.unary.f32(i32 7, float %2615)  ; Saturate(value)
  %2617 = fmul fast float %2464, 2.000000e+00
  %2618 = fmul fast float %2617, %2425
  %2619 = fmul fast float %2617, %2426
  %2620 = fmul fast float %2617, %2427
  %2621 = fsub fast float %2453, %2618
  %2622 = fsub fast float %2454, %2619
  %2623 = fsub fast float %2455, %2620
  %2624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2625 = extractvalue %dx.types.CBufRet.f32 %2624, 0
  %2626 = bitcast float %2625 to i32
  %2627 = lshr i32 %2626, 8
  %2628 = and i32 %2627, 255
  %2629 = uitofp i32 %2628 to float
  %2630 = fptoui float %2629 to i32
  %2631 = and i32 %2630, 4
  %2632 = icmp ne i32 %2631, 0
  %2633 = select i1 %2632, float %2556, float 1.000000e+00
  %2634 = call float @dx.op.binary.f32(i32 36, float %2633, float 1.000000e+00)  ; FMin(a,b)
  %2635 = fsub fast float 1.000000e+00, %2634
  %2636 = bitcast float %2635 to i32
  %2637 = ashr i32 %2636, 1
  %2638 = add nsw i32 %2637, 532487669
  %2639 = bitcast i32 %2638 to float
  %2640 = fsub fast float 1.000000e+00, %2555
  %2641 = call float @dx.op.binary.f32(i32 35, float %2640, float 0x3F847AE140000000)  ; FMax(a,b)
  %2642 = fmul fast float %2641, %2641
  %2643 = fmul fast float %2642, %2642
  %2644 = call float @dx.op.unary.f32(i32 7, float %2616)  ; Saturate(value)
  %2645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %61, float %2639, float %2643, float %2644, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = and i32 %2630, 1
  %2648 = icmp ne i32 %2647, 0
  %2649 = fsub fast float 1.000000e+00, %2633
  %2650 = bitcast float %2649 to i32
  %2651 = sub nsw i32 2129859010, %2650
  %2652 = bitcast i32 %2651 to float
  %2653 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.i32 %2653, 0
  %2655 = icmp eq i32 %2654, 1
  %2656 = select i1 %2655, float 0.000000e+00, float 1.000000e+00
  %2657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2658 = extractvalue %dx.types.CBufRet.f32 %2657, 0
  %2659 = fcmp fast ogt float %2658, 0.000000e+00
  %2660 = fcmp fast ogt float %2656, 0.000000e+00
  %2661 = and i1 %2659, %2660
  br i1 %2661, label %2662, label %2846, !dx.controlflow.hints !124

; <label>:2662                                    ; preds = %2608
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.CBufRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.CBufRet.f32 %2663, 2
  %2667 = fadd fast float %2664, %153
  %2668 = fadd fast float %2665, %154
  %2669 = fadd fast float %2666, %155
  %2670 = fmul fast float %2425, 3.200000e+01
  %2671 = fmul fast float %2426, 3.200000e+01
  %2672 = fadd fast float %2667, %2670
  %2673 = fadd fast float %2668, %2671
  %2674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2675 = extractvalue %dx.types.CBufRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2674, 1
  %2677 = fsub fast float %2672, %2675
  %2678 = fsub fast float %2673, %2676
  %2679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2680 = extractvalue %dx.types.CBufRet.f32 %2679, 0
  %2681 = extractvalue %dx.types.CBufRet.f32 %2679, 1
  %2682 = fmul fast float %2677, %2680
  %2683 = fmul fast float %2678, %2681
  %2684 = fmul fast float %153, %153
  %2685 = fmul fast float %154, %154
  %2686 = fadd fast float %2684, %2685
  %2687 = call float @dx.op.unary.f32(i32 24, float %2686)  ; Sqrt(value)
  %2688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2689 = extractvalue %dx.types.CBufRet.f32 %2688, 0
  %2690 = extractvalue %dx.types.CBufRet.f32 %2688, 1
  %2691 = fsub fast float %2687, %2689
  %2692 = fdiv fast float %2691, %2690
  %2693 = call float @dx.op.unary.f32(i32 7, float %2692)  ; Saturate(value)
  %2694 = fmul fast float %2693, 2.000000e+00
  %2695 = fsub fast float 3.000000e+00, %2694
  %2696 = fmul fast float %2693, %2693
  %2697 = fmul fast float %2696, %2695
  %2698 = fcmp fast oge float %2682, 0.000000e+00
  %2699 = fcmp fast ole float %2682, 1.000000e+00
  %2700 = and i1 %2699, %2698
  %2701 = fcmp fast oge float %2683, 0.000000e+00
  %2702 = and i1 %2701, %2700
  %2703 = fcmp fast ole float %2683, 1.000000e+00
  %2704 = and i1 %2703, %2702
  %2705 = fcmp fast ogt float %2697, 0.000000e+00
  %2706 = and i1 %2705, %2704
  br i1 %2706, label %2707, label %2830, !dx.controlflow.hints !125

; <label>:2707                                    ; preds = %2662
  %2708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2709 = extractvalue %dx.types.CBufRet.f32 %2708, 2
  %2710 = extractvalue %dx.types.CBufRet.f32 %2708, 3
  %2711 = fmul fast float %2709, %2682
  %2712 = fmul fast float %2710, %2683
  %2713 = call float @dx.op.unary.f32(i32 27, float %2711)  ; Round_ni(value)
  %2714 = call float @dx.op.unary.f32(i32 27, float %2712)  ; Round_ni(value)
  %2715 = fptosi float %2713 to i32
  %2716 = fptosi float %2714 to i32
  %2717 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %2715, i32 %2716, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2718 = extractvalue %dx.types.ResRet.i32 %2717, 0
  %2719 = lshr i32 %2718, 16
  %2720 = icmp eq i32 %2719, 65535
  br i1 %2720, label %2830, label %2721

; <label>:2721                                    ; preds = %2707
  %2722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2723 = extractvalue %dx.types.CBufRet.f32 %2722, 0
  %2724 = fmul fast float %2723, %2682
  %2725 = extractvalue %dx.types.CBufRet.f32 %2722, 1
  %2726 = fadd fast float %2724, %2725
  %2727 = extractvalue %dx.types.CBufRet.f32 %2722, 2
  %2728 = fmul fast float %2727, %2683
  %2729 = extractvalue %dx.types.CBufRet.f32 %2722, 3
  %2730 = fadd fast float %2728, %2729
  %2731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2726, float %2730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.ResRet.f32 %2731, 1
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 1
  %2736 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2737 = fsub fast float %2735, %2736
  %2738 = fmul fast float %2737, %2732
  %2739 = fadd fast float %2738, %2736
  %2740 = extractvalue %dx.types.CBufRet.f32 %2734, 3
  %2741 = extractvalue %dx.types.CBufRet.f32 %2734, 2
  %2742 = fsub fast float %2740, %2741
  %2743 = fmul fast float %2742, %2733
  %2744 = fadd fast float %2743, %2741
  %2745 = fsub fast float %2669, %2739
  %2746 = fsub fast float %2744, %2739
  %2747 = fdiv fast float %2745, %2746
  %2748 = call float @dx.op.unary.f32(i32 7, float %2747)  ; Saturate(value)
  %2749 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %2750 = extractvalue %dx.types.CBufRet.f32 %2708, 0
  %2751 = extractvalue %dx.types.CBufRet.f32 %2708, 1
  %2752 = fmul fast float %2750, %2682
  %2753 = fmul fast float %2751, %2683
  %2754 = fmul fast float %2752, 1.250000e-01
  %2755 = fmul fast float %2753, 1.250000e-01
  %2756 = call float @dx.op.unary.f32(i32 27, float %2754)  ; Round_ni(value)
  %2757 = call float @dx.op.unary.f32(i32 27, float %2755)  ; Round_ni(value)
  %2758 = fmul fast float %2756, 8.000000e+00
  %2759 = fmul fast float %2757, 8.000000e+00
  %2760 = fsub fast float %2752, %2758
  %2761 = fsub fast float %2753, %2759
  %2762 = fadd fast float %2760, 5.000000e-01
  %2763 = fadd fast float %2761, 5.000000e-01
  %2764 = and i32 %2719, 255
  %2765 = lshr i32 %2718, 24
  %2766 = mul nuw nsw i32 %2764, 9
  %2767 = uitofp i32 %2766 to float
  %2768 = mul nuw nsw i32 %2765, 9
  %2769 = uitofp i32 %2768 to float
  %2770 = fadd fast float %2762, %2767
  %2771 = fadd fast float %2763, %2769
  %2772 = fdiv fast float %2770, %2658
  %2773 = fdiv fast float %2771, %2749
  %2774 = fmul fast float %2748, 4.375000e-01
  %2775 = fadd fast float %2774, 3.125000e-02
  %2776 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2772, float %2773, float %2775, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2777 = extractvalue %dx.types.ResRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.ResRet.f32 %2776, 1
  %2779 = extractvalue %dx.types.ResRet.f32 %2776, 2
  %2780 = fadd fast float %2774, 5.312500e-01
  %2781 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2772, float %2773, float %2780, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = extractvalue %dx.types.ResRet.f32 %2781, 1
  %2784 = extractvalue %dx.types.ResRet.f32 %2781, 2
  %2785 = fmul fast float %2782, 2.000000e+00
  %2786 = fmul fast float %2783, 2.000000e+00
  %2787 = fmul fast float %2784, 2.000000e+00
  %2788 = fadd fast float %2785, -1.000000e+00
  %2789 = fadd fast float %2786, -1.000000e+00
  %2790 = fadd fast float %2787, -1.000000e+00
  %2791 = fmul fast float %2788, %2788
  %2792 = fmul fast float %2789, %2789
  %2793 = fadd fast float %2791, %2792
  %2794 = fmul fast float %2790, %2790
  %2795 = fadd fast float %2793, %2794
  %2796 = call float @dx.op.unary.f32(i32 24, float %2795)  ; Sqrt(value)
  %2797 = fcmp fast ogt float %2796, 0.000000e+00
  br i1 %2797, label %2798, label %2802

; <label>:2798                                    ; preds = %2721
  %2799 = fdiv fast float %2788, %2796
  %2800 = fdiv fast float %2789, %2796
  %2801 = fdiv fast float %2790, %2796
  br label %2802

; <label>:2802                                    ; preds = %2798, %2721
  %2803 = phi float [ %2799, %2798 ], [ 0.000000e+00, %2721 ]
  %2804 = phi float [ %2800, %2798 ], [ 0.000000e+00, %2721 ]
  %2805 = phi float [ %2801, %2798 ], [ 0.000000e+00, %2721 ]
  %2806 = call float @dx.op.dot3.f32(i32 55, float %2803, float %2804, float %2805, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %2807 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2806)  ; FMax(a,b)
  %2808 = fmul fast float %2807, 0x400C5BF8A0000000
  %2809 = fmul fast float %2777, %2697
  %2810 = fmul fast float %2809, %2808
  %2811 = fmul fast float %2778, %2697
  %2812 = fmul fast float %2811, %2808
  %2813 = fmul fast float %2779, %2697
  %2814 = fmul fast float %2813, %2808
  %2815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2816 = extractvalue %dx.types.CBufRet.f32 %2815, 3
  %2817 = fmul fast float %2810, %2816
  %2818 = fmul fast float %2812, %2816
  %2819 = fmul fast float %2814, %2816
  %2820 = fcmp fast ogt float %2669, %2744
  br i1 %2820, label %2821, label %2830

; <label>:2821                                    ; preds = %2802
  %2822 = fmul fast float %2746, 0x3FC24924A0000000
  %2823 = fsub fast float %2669, %2744
  %2824 = fdiv fast float %2823, %2822
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  %2826 = fsub fast float 1.000000e+00, %2825
  %2827 = fmul fast float %2826, %2817
  %2828 = fmul fast float %2826, %2818
  %2829 = fmul fast float %2826, %2819
  br label %2830

; <label>:2830                                    ; preds = %2821, %2802, %2707, %2662
  %2831 = phi float [ %2829, %2821 ], [ %2819, %2802 ], [ 0.000000e+00, %2707 ], [ 0.000000e+00, %2662 ]
  %2832 = phi float [ %2828, %2821 ], [ %2818, %2802 ], [ 0.000000e+00, %2707 ], [ 0.000000e+00, %2662 ]
  %2833 = phi float [ %2827, %2821 ], [ %2817, %2802 ], [ 0.000000e+00, %2707 ], [ 0.000000e+00, %2662 ]
  %2834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2833)  ; FMax(a,b)
  %2835 = fmul fast float %2834, 0x3FD20DD760000000
  %2836 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2832)  ; FMax(a,b)
  %2837 = fmul fast float %2836, 0x3FD20DD760000000
  %2838 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2831)  ; FMax(a,b)
  %2839 = fmul fast float %2838, 0x3FD20DD760000000
  %2840 = call float @dx.op.binary.f32(i32 35, float %2835, float 0.000000e+00)  ; FMax(a,b)
  %2841 = call float @dx.op.binary.f32(i32 35, float %2837, float 0.000000e+00)  ; FMax(a,b)
  %2842 = call float @dx.op.binary.f32(i32 35, float %2839, float 0.000000e+00)  ; FMax(a,b)
  %2843 = fmul fast float %2840, %2656
  %2844 = fmul fast float %2841, %2656
  %2845 = fmul fast float %2842, %2656
  br label %2846

; <label>:2846                                    ; preds = %2830, %2608
  %2847 = phi float [ %2843, %2830 ], [ 0.000000e+00, %2608 ]
  %2848 = phi float [ %2844, %2830 ], [ 0.000000e+00, %2608 ]
  %2849 = phi float [ %2845, %2830 ], [ 0.000000e+00, %2608 ]
  br i1 %2655, label %2850, label %3642, !dx.controlflow.hints !126

; <label>:2850                                    ; preds = %2846
  %2851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2852 = extractvalue %dx.types.CBufRet.f32 %2851, 0
  %2853 = extractvalue %dx.types.CBufRet.f32 %2851, 1
  %2854 = extractvalue %dx.types.CBufRet.f32 %2851, 2
  %2855 = fadd fast float %2852, %153
  %2856 = fadd fast float %2853, %154
  %2857 = fadd fast float %2854, %155
  %2858 = fmul fast float %2425, 3.200000e+01
  %2859 = fmul fast float %2426, 3.200000e+01
  %2860 = fadd fast float %2855, %2858
  %2861 = fadd fast float %2856, %2859
  %2862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2863 = extractvalue %dx.types.CBufRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.CBufRet.f32 %2862, 1
  %2865 = fsub fast float %2860, %2863
  %2866 = fsub fast float %2861, %2864
  %2867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2868 = extractvalue %dx.types.CBufRet.f32 %2867, 0
  %2869 = extractvalue %dx.types.CBufRet.f32 %2867, 1
  %2870 = fmul fast float %2865, %2868
  %2871 = fmul fast float %2866, %2869
  %2872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2873 = extractvalue %dx.types.CBufRet.f32 %2872, 0
  %2874 = fmul fast float %2870, %2873
  %2875 = extractvalue %dx.types.CBufRet.f32 %2872, 1
  %2876 = fadd fast float %2874, %2875
  %2877 = extractvalue %dx.types.CBufRet.f32 %2872, 2
  %2878 = fmul fast float %2877, %2871
  %2879 = extractvalue %dx.types.CBufRet.f32 %2872, 3
  %2880 = fadd fast float %2878, %2879
  %2881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2876, float %2880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = extractvalue %dx.types.ResRet.f32 %2881, 1
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 1
  %2886 = extractvalue %dx.types.CBufRet.f32 %2884, 0
  %2887 = fsub fast float %2885, %2886
  %2888 = fmul fast float %2887, %2882
  %2889 = fadd fast float %2888, %2886
  %2890 = extractvalue %dx.types.CBufRet.f32 %2884, 3
  %2891 = extractvalue %dx.types.CBufRet.f32 %2884, 2
  %2892 = fsub fast float %2890, %2891
  %2893 = fmul fast float %2892, %2883
  %2894 = fadd fast float %2893, %2891
  %2895 = fsub fast float %2857, %2889
  %2896 = fsub fast float %2894, %2889
  %2897 = fdiv fast float %2895, %2896
  %2898 = call float @dx.op.unary.f32(i32 7, float %2897)  ; Saturate(value)
  %2899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2900 = extractvalue %dx.types.CBufRet.f32 %2899, 0
  %2901 = fmul fast float %2900, %2898
  %2902 = extractvalue %dx.types.CBufRet.f32 %2899, 1
  %2903 = fadd fast float %2901, %2902
  %2904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %61, float %2876, float %2880, float %2903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2909 = extractvalue %dx.types.CBufRet.f32 %2908, 0
  %2910 = extractvalue %dx.types.CBufRet.f32 %2908, 1
  %2911 = extractvalue %dx.types.CBufRet.f32 %2908, 2
  %2912 = fmul fast float %2909, %2905
  %2913 = fmul fast float %2910, %2906
  %2914 = fmul fast float %2911, %2907
  %2915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2916 = extractvalue %dx.types.CBufRet.f32 %2915, 0
  %2917 = extractvalue %dx.types.CBufRet.f32 %2915, 1
  %2918 = extractvalue %dx.types.CBufRet.f32 %2915, 2
  %2919 = fadd fast float %2912, %2916
  %2920 = fadd fast float %2913, %2917
  %2921 = fadd fast float %2914, %2918
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = fmul fast float %2923, %2870
  %2925 = extractvalue %dx.types.CBufRet.f32 %2922, 1
  %2926 = fadd fast float %2924, %2925
  %2927 = extractvalue %dx.types.CBufRet.f32 %2922, 2
  %2928 = fmul fast float %2927, %2871
  %2929 = extractvalue %dx.types.CBufRet.f32 %2922, 3
  %2930 = fadd fast float %2928, %2929
  %2931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2932 = extractvalue %dx.types.CBufRet.f32 %2931, 0
  %2933 = extractvalue %dx.types.CBufRet.f32 %2931, 1
  %2934 = extractvalue %dx.types.CBufRet.f32 %2931, 2
  %2935 = extractvalue %dx.types.CBufRet.f32 %2931, 3
  %2936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2937 = extractvalue %dx.types.CBufRet.f32 %2936, 0
  %2938 = extractvalue %dx.types.CBufRet.f32 %2936, 1
  %2939 = extractvalue %dx.types.CBufRet.f32 %2936, 2
  %2940 = extractvalue %dx.types.CBufRet.f32 %2936, 3
  %2941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2926, float %2930, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  %2943 = extractvalue %dx.types.ResRet.f32 %2941, 1
  %2944 = extractvalue %dx.types.ResRet.f32 %2941, 2
  %2945 = extractvalue %dx.types.ResRet.f32 %2941, 3
  %2946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2926, float %2930, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2947 = extractvalue %dx.types.ResRet.f32 %2946, 0
  %2948 = extractvalue %dx.types.ResRet.f32 %2946, 1
  %2949 = extractvalue %dx.types.ResRet.f32 %2946, 2
  %2950 = extractvalue %dx.types.ResRet.f32 %2946, 3
  %2951 = fmul fast float %2942, %2919
  %2952 = fmul fast float %2947, %2919
  %2953 = fmul fast float %2949, %2919
  %2954 = fmul fast float %2945, %2919
  %2955 = fadd fast float %2951, %2932
  %2956 = fadd fast float %2952, %2933
  %2957 = fadd fast float %2953, %2934
  %2958 = fadd fast float %2954, %2935
  %2959 = fmul fast float %2943, %2919
  %2960 = fmul fast float %2948, %2919
  %2961 = fadd fast float %2959, %2937
  %2962 = fadd fast float %2960, %2938
  %2963 = fmul fast float %2944, %2919
  %2964 = fmul fast float %2950, %2919
  %2965 = fadd fast float %2963, %2939
  %2966 = fadd fast float %2964, %2940
  %2967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2926, float %2930, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = extractvalue %dx.types.ResRet.f32 %2967, 3
  %2972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2926, float %2930, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = extractvalue %dx.types.ResRet.f32 %2972, 1
  %2975 = extractvalue %dx.types.ResRet.f32 %2972, 2
  %2976 = extractvalue %dx.types.ResRet.f32 %2972, 3
  %2977 = fmul fast float %2968, %2920
  %2978 = fmul fast float %2973, %2920
  %2979 = fmul fast float %2975, %2920
  %2980 = fmul fast float %2971, %2920
  %2981 = fadd fast float %2955, %2977
  %2982 = fadd fast float %2956, %2978
  %2983 = fadd fast float %2957, %2979
  %2984 = fadd fast float %2958, %2980
  %2985 = fmul fast float %2969, %2920
  %2986 = fmul fast float %2974, %2920
  %2987 = fadd fast float %2961, %2985
  %2988 = fadd fast float %2962, %2986
  %2989 = fmul fast float %2970, %2920
  %2990 = fmul fast float %2976, %2920
  %2991 = fadd fast float %2965, %2989
  %2992 = fadd fast float %2966, %2990
  %2993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2926, float %2930, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = extractvalue %dx.types.ResRet.f32 %2993, 3
  %2998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2926, float %2930, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = extractvalue %dx.types.ResRet.f32 %2998, 3
  %3003 = fmul fast float %2994, %2921
  %3004 = fmul fast float %2999, %2921
  %3005 = fmul fast float %3001, %2921
  %3006 = fmul fast float %2997, %2921
  %3007 = fadd fast float %2981, %3003
  %3008 = fadd fast float %2982, %3004
  %3009 = fadd fast float %2983, %3005
  %3010 = fadd fast float %2984, %3006
  %3011 = fmul fast float %2995, %2921
  %3012 = fmul fast float %3000, %2921
  %3013 = fadd fast float %2987, %3011
  %3014 = fadd fast float %2988, %3012
  %3015 = fmul fast float %2996, %2921
  %3016 = fmul fast float %3002, %2921
  %3017 = fadd fast float %2991, %3015
  %3018 = fadd fast float %2992, %3016
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 0
  %3021 = fsub fast float %2855, %3020
  %3022 = fsub fast float %2863, %2855
  %3023 = call float @dx.op.binary.f32(i32 35, float %3022, float %3021)  ; FMax(a,b)
  %3024 = extractvalue %dx.types.CBufRet.f32 %3019, 1
  %3025 = fsub fast float %2856, %3024
  %3026 = fsub fast float %2864, %2856
  %3027 = call float @dx.op.binary.f32(i32 35, float %3026, float %3025)  ; FMax(a,b)
  %3028 = call float @dx.op.binary.f32(i32 35, float %3023, float %3027)  ; FMax(a,b)
  %3029 = extractvalue %dx.types.CBufRet.f32 %2867, 3
  %3030 = fmul fast float %3029, %3028
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 0
  %3034 = extractvalue %dx.types.CBufRet.f32 %3032, 1
  %3035 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3036 = extractvalue %dx.types.CBufRet.f32 %3032, 3
  %3037 = fsub fast float %3033, %3007
  %3038 = fsub fast float %3034, %3008
  %3039 = fsub fast float %3035, %3009
  %3040 = fsub fast float %3036, %3010
  %3041 = fmul fast float %3037, %3031
  %3042 = fmul fast float %3038, %3031
  %3043 = fmul fast float %3039, %3031
  %3044 = fmul fast float %3040, %3031
  %3045 = fadd fast float %3041, %3007
  %3046 = fadd fast float %3042, %3008
  %3047 = fadd fast float %3043, %3009
  %3048 = fadd fast float %3044, %3010
  %3049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3050 = extractvalue %dx.types.CBufRet.f32 %3049, 0
  %3051 = extractvalue %dx.types.CBufRet.f32 %3049, 1
  %3052 = fsub fast float %3050, %3013
  %3053 = fsub fast float %3051, %3014
  %3054 = fmul fast float %3052, %3031
  %3055 = fmul fast float %3053, %3031
  %3056 = fadd fast float %3054, %3013
  %3057 = fadd fast float %3055, %3014
  %3058 = extractvalue %dx.types.CBufRet.f32 %3049, 2
  %3059 = extractvalue %dx.types.CBufRet.f32 %3049, 3
  %3060 = fsub fast float %3058, %3017
  %3061 = fsub fast float %3059, %3018
  %3062 = fmul fast float %3060, %3031
  %3063 = fmul fast float %3061, %3031
  %3064 = fadd fast float %3062, %3017
  %3065 = fadd fast float %3063, %3018
  %3066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3067 = extractvalue %dx.types.CBufRet.f32 %3066, 0
  %3068 = fmul fast float %3067, %3045
  %3069 = fmul fast float %3067, %3046
  %3070 = fmul fast float %3067, %3047
  %3071 = fmul fast float %3067, %3048
  %3072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3073 = extractvalue %dx.types.CBufRet.f32 %3072, 0
  %3074 = fmul fast float %3073, %3056
  %3075 = fmul fast float %3073, %3057
  %3076 = fadd fast float %3074, %3068
  %3077 = fadd fast float %3075, %3070
  %3078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3079 = extractvalue %dx.types.CBufRet.f32 %3078, 0
  %3080 = fmul fast float %3079, %3064
  %3081 = fmul fast float %3079, %3065
  %3082 = fadd fast float %3076, %3080
  %3083 = fadd fast float %3077, %3081
  %3084 = extractvalue %dx.types.CBufRet.f32 %3066, 1
  %3085 = fmul fast float %3084, %3045
  %3086 = fmul fast float %3084, %3046
  %3087 = fmul fast float %3084, %3047
  %3088 = fmul fast float %3084, %3048
  %3089 = extractvalue %dx.types.CBufRet.f32 %3072, 1
  %3090 = fmul fast float %3089, %3056
  %3091 = fmul fast float %3089, %3057
  %3092 = fadd fast float %3090, %3085
  %3093 = fadd fast float %3091, %3087
  %3094 = extractvalue %dx.types.CBufRet.f32 %3078, 1
  %3095 = fmul fast float %3094, %3064
  %3096 = fmul fast float %3094, %3065
  %3097 = fadd fast float %3092, %3095
  %3098 = fadd fast float %3093, %3096
  %3099 = extractvalue %dx.types.CBufRet.f32 %3066, 2
  %3100 = fmul fast float %3099, %3045
  %3101 = fmul fast float %3099, %3046
  %3102 = fmul fast float %3099, %3047
  %3103 = fmul fast float %3099, %3048
  %3104 = extractvalue %dx.types.CBufRet.f32 %3072, 2
  %3105 = fmul fast float %3104, %3056
  %3106 = fmul fast float %3104, %3057
  %3107 = fadd fast float %3105, %3100
  %3108 = fadd fast float %3106, %3102
  %3109 = extractvalue %dx.types.CBufRet.f32 %3078, 2
  %3110 = fmul fast float %3109, %3064
  %3111 = fmul fast float %3109, %3065
  %3112 = fadd fast float %3107, %3110
  %3113 = fadd fast float %3108, %3111
  %3114 = fmul fast float %3101, %3101
  %3115 = fmul fast float %3113, %3113
  %3116 = fmul fast float %3103, %3103
  %3117 = fadd fast float %3116, %3114
  %3118 = fadd fast float %3117, %3115
  %3119 = call float @dx.op.unary.f32(i32 24, float %3118)  ; Sqrt(value)
  %3120 = fcmp fast ugt float %3119, 0.000000e+00
  br i1 %3120, label %3121, label %3136

; <label>:3121                                    ; preds = %2850
  %3122 = fsub fast float -0.000000e+00, %3103
  %3123 = fdiv fast float %3122, %3119
  %3124 = fsub fast float -0.000000e+00, %3101
  %3125 = fdiv fast float %3124, %3119
  %3126 = fdiv fast float %3113, %3119
  %3127 = fmul fast float %3112, 0x3FE279A760000000
  %3128 = fmul fast float %3125, %3101
  %3129 = fmul fast float %3126, %3113
  %3130 = fmul fast float %3123, %3103
  %3131 = fadd fast float %3128, %3130
  %3132 = fsub fast float %3131, %3129
  %3133 = call float @dx.op.unary.f32(i32 6, float %3132)  ; FAbs(value)
  %3134 = fadd fast float %3133, 0x3DDB7CDFE0000000
  %3135 = fdiv fast float %3127, %3134
  br label %3136

; <label>:3136                                    ; preds = %3121, %2850
  %3137 = phi float [ %3135, %3121 ], [ 1.000000e+00, %2850 ]
  %3138 = fmul fast float %3086, %3086
  %3139 = fmul fast float %3098, %3098
  %3140 = fmul fast float %3088, %3088
  %3141 = fadd fast float %3140, %3138
  %3142 = fadd fast float %3141, %3139
  %3143 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3144 = fcmp fast ugt float %3143, 0.000000e+00
  br i1 %3144, label %3145, label %3160

; <label>:3145                                    ; preds = %3136
  %3146 = fsub fast float -0.000000e+00, %3088
  %3147 = fdiv fast float %3146, %3143
  %3148 = fsub fast float -0.000000e+00, %3086
  %3149 = fdiv fast float %3148, %3143
  %3150 = fdiv fast float %3098, %3143
  %3151 = fmul fast float %3097, 0x3FE279A760000000
  %3152 = fmul fast float %3149, %3086
  %3153 = fmul fast float %3150, %3098
  %3154 = fmul fast float %3147, %3088
  %3155 = fadd fast float %3152, %3154
  %3156 = fsub fast float %3155, %3153
  %3157 = call float @dx.op.unary.f32(i32 6, float %3156)  ; FAbs(value)
  %3158 = fadd fast float %3157, 0x3DDB7CDFE0000000
  %3159 = fdiv fast float %3151, %3158
  br label %3160

; <label>:3160                                    ; preds = %3145, %3136
  %3161 = phi float [ %3159, %3145 ], [ 1.000000e+00, %3136 ]
  %3162 = call float @dx.op.binary.f32(i32 36, float %3161, float %3137)  ; FMin(a,b)
  %3163 = fmul fast float %3069, %3069
  %3164 = fmul fast float %3083, %3083
  %3165 = fmul fast float %3071, %3071
  %3166 = fadd fast float %3165, %3163
  %3167 = fadd fast float %3166, %3164
  %3168 = call float @dx.op.unary.f32(i32 24, float %3167)  ; Sqrt(value)
  %3169 = fcmp fast ugt float %3168, 0.000000e+00
  br i1 %3169, label %3170, label %3185

; <label>:3170                                    ; preds = %3160
  %3171 = fsub fast float -0.000000e+00, %3071
  %3172 = fdiv fast float %3171, %3168
  %3173 = fsub fast float -0.000000e+00, %3069
  %3174 = fdiv fast float %3173, %3168
  %3175 = fdiv fast float %3083, %3168
  %3176 = fmul fast float %3082, 0x3FE279A760000000
  %3177 = fmul fast float %3174, %3069
  %3178 = fmul fast float %3175, %3083
  %3179 = fmul fast float %3172, %3071
  %3180 = fadd fast float %3177, %3179
  %3181 = fsub fast float %3180, %3178
  %3182 = call float @dx.op.unary.f32(i32 6, float %3181)  ; FAbs(value)
  %3183 = fadd fast float %3182, 0x3DDB7CDFE0000000
  %3184 = fdiv fast float %3176, %3183
  br label %3185

; <label>:3185                                    ; preds = %3170, %3160
  %3186 = phi float [ %3184, %3170 ], [ 1.000000e+00, %3160 ]
  %3187 = call float @dx.op.binary.f32(i32 36, float %3186, float %3162)  ; FMin(a,b)
  %3188 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3189 = fcmp fast olt float %3188, 1.000000e+00
  br i1 %3189, label %3190, label %3200

; <label>:3190                                    ; preds = %3185
  %3191 = fmul fast float %3188, %3069
  %3192 = fmul fast float %3188, %3083
  %3193 = fmul fast float %3188, %3071
  %3194 = fmul fast float %3188, %3086
  %3195 = fmul fast float %3188, %3098
  %3196 = fmul fast float %3188, %3088
  %3197 = fmul fast float %3188, %3101
  %3198 = fmul fast float %3188, %3113
  %3199 = fmul fast float %3188, %3103
  br label %3200

; <label>:3200                                    ; preds = %3190, %3185
  %3201 = phi float [ %3197, %3190 ], [ %3101, %3185 ]
  %3202 = phi float [ %3198, %3190 ], [ %3113, %3185 ]
  %3203 = phi float [ %3199, %3190 ], [ %3103, %3185 ]
  %3204 = phi float [ %3194, %3190 ], [ %3086, %3185 ]
  %3205 = phi float [ %3195, %3190 ], [ %3098, %3185 ]
  %3206 = phi float [ %3196, %3190 ], [ %3088, %3185 ]
  %3207 = phi float [ %3191, %3190 ], [ %3069, %3185 ]
  %3208 = phi float [ %3192, %3190 ], [ %3083, %3185 ]
  %3209 = phi float [ %3193, %3190 ], [ %3071, %3185 ]
  %3210 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3082)  ; FMax(a,b)
  %3211 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3097)  ; FMax(a,b)
  %3212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3112)  ; FMax(a,b)
  %3213 = fcmp fast oge float %2870, 0.000000e+00
  %3214 = and i1 %3213, %2659
  %3215 = fcmp fast ole float %2870, 1.000000e+00
  %3216 = and i1 %3215, %3214
  %3217 = fcmp fast oge float %2871, 0.000000e+00
  %3218 = and i1 %3217, %3216
  %3219 = fcmp fast ole float %2871, 1.000000e+00
  %3220 = and i1 %3219, %3218
  br i1 %3220, label %3221, label %3361, !dx.controlflow.hints !127

; <label>:3221                                    ; preds = %3200
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 3
  %3225 = fmul fast float %3223, %2870
  %3226 = fmul fast float %3224, %2871
  %3227 = call float @dx.op.unary.f32(i32 27, float %3225)  ; Round_ni(value)
  %3228 = call float @dx.op.unary.f32(i32 27, float %3226)  ; Round_ni(value)
  %3229 = fptosi float %3227 to i32
  %3230 = fptosi float %3228 to i32
  %3231 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %3229, i32 %3230, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 65535
  %3234 = lshr i32 %3232, 16
  %3235 = icmp eq i32 %3233, 65535
  br i1 %3235, label %3272, label %3236

; <label>:3236                                    ; preds = %3221
  %3237 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %3238 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3239 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3240 = fmul fast float %3238, %2870
  %3241 = fmul fast float %3239, %2871
  %3242 = fmul fast float %3240, 1.250000e-01
  %3243 = fmul fast float %3241, 1.250000e-01
  %3244 = call float @dx.op.unary.f32(i32 27, float %3242)  ; Round_ni(value)
  %3245 = call float @dx.op.unary.f32(i32 27, float %3243)  ; Round_ni(value)
  %3246 = fmul fast float %3244, 8.000000e+00
  %3247 = fmul fast float %3245, 8.000000e+00
  %3248 = and i32 %3232, 255
  %3249 = lshr i32 %3232, 8
  %3250 = and i32 %3249, 255
  %3251 = mul nuw nsw i32 %3248, 9
  %3252 = uitofp i32 %3251 to float
  %3253 = mul nuw nsw i32 %3250, 9
  %3254 = uitofp i32 %3253 to float
  %3255 = fadd fast float %3252, 5.000000e-01
  %3256 = fadd fast float %3255, %3240
  %3257 = fsub fast float %3256, %3246
  %3258 = fadd fast float %3254, 5.000000e-01
  %3259 = fadd fast float %3258, %3241
  %3260 = fsub fast float %3259, %3247
  %3261 = fdiv fast float %3257, %2658
  %3262 = fdiv fast float %3260, %3237
  %3263 = fmul fast float %2898, 4.375000e-01
  %3264 = fadd fast float %3263, 3.125000e-02
  %3265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %3261, float %3262, float %3264, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3266 = extractvalue %dx.types.ResRet.f32 %3265, 0
  %3267 = extractvalue %dx.types.ResRet.f32 %3265, 1
  %3268 = extractvalue %dx.types.ResRet.f32 %3265, 2
  %3269 = fadd fast float %3266, %3210
  %3270 = fadd fast float %3267, %3211
  %3271 = fadd fast float %3268, %3212
  br label %3272

; <label>:3272                                    ; preds = %3236, %3221
  %3273 = phi float [ %3271, %3236 ], [ %3212, %3221 ]
  %3274 = phi float [ %3270, %3236 ], [ %3211, %3221 ]
  %3275 = phi float [ %3269, %3236 ], [ %3210, %3221 ]
  %3276 = icmp eq i32 %3234, 65535
  br i1 %3276, label %3361, label %3277

; <label>:3277                                    ; preds = %3272
  %3278 = extractvalue %dx.types.CBufRet.f32 %2657, 1
  %3279 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3280 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3281 = fmul fast float %3279, %2870
  %3282 = fmul fast float %3280, %2871
  %3283 = fmul fast float %3281, 1.250000e-01
  %3284 = fmul fast float %3282, 1.250000e-01
  %3285 = call float @dx.op.unary.f32(i32 27, float %3283)  ; Round_ni(value)
  %3286 = call float @dx.op.unary.f32(i32 27, float %3284)  ; Round_ni(value)
  %3287 = fmul fast float %3285, 8.000000e+00
  %3288 = fmul fast float %3286, 8.000000e+00
  %3289 = fsub fast float %3281, %3287
  %3290 = fsub fast float %3282, %3288
  %3291 = fadd fast float %3289, 5.000000e-01
  %3292 = fadd fast float %3290, 5.000000e-01
  %3293 = and i32 %3234, 255
  %3294 = lshr i32 %3232, 24
  %3295 = mul nuw nsw i32 %3293, 9
  %3296 = uitofp i32 %3295 to float
  %3297 = mul nuw nsw i32 %3294, 9
  %3298 = uitofp i32 %3297 to float
  %3299 = fadd fast float %3291, %3296
  %3300 = fadd fast float %3292, %3298
  %3301 = fdiv fast float %3299, %2658
  %3302 = fdiv fast float %3300, %3278
  %3303 = fmul fast float %2898, 4.375000e-01
  %3304 = fadd fast float %3303, 3.125000e-02
  %3305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %3301, float %3302, float %3304, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3306 = extractvalue %dx.types.ResRet.f32 %3305, 0
  %3307 = extractvalue %dx.types.ResRet.f32 %3305, 1
  %3308 = extractvalue %dx.types.ResRet.f32 %3305, 2
  %3309 = fadd fast float %3303, 5.312500e-01
  %3310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %3301, float %3302, float %3309, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = fmul fast float %3311, 2.000000e+00
  %3315 = fmul fast float %3312, 2.000000e+00
  %3316 = fmul fast float %3313, 2.000000e+00
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fadd fast float %3315, -1.000000e+00
  %3319 = fadd fast float %3316, -1.000000e+00
  %3320 = fmul fast float %3317, %3317
  %3321 = fmul fast float %3318, %3318
  %3322 = fadd fast float %3320, %3321
  %3323 = fmul fast float %3319, %3319
  %3324 = fadd fast float %3322, %3323
  %3325 = call float @dx.op.unary.f32(i32 24, float %3324)  ; Sqrt(value)
  %3326 = fcmp fast ogt float %3325, 0.000000e+00
  br i1 %3326, label %3327, label %3331

; <label>:3327                                    ; preds = %3277
  %3328 = fdiv fast float %3317, %3325
  %3329 = fdiv fast float %3318, %3325
  %3330 = fdiv fast float %3319, %3325
  br label %3331

; <label>:3331                                    ; preds = %3327, %3277
  %3332 = phi float [ %3328, %3327 ], [ 0.000000e+00, %3277 ]
  %3333 = phi float [ %3329, %3327 ], [ 0.000000e+00, %3277 ]
  %3334 = phi float [ %3330, %3327 ], [ 0.000000e+00, %3277 ]
  %3335 = fmul fast float %153, %153
  %3336 = fmul fast float %154, %154
  %3337 = fadd fast float %3335, %3336
  %3338 = call float @dx.op.unary.f32(i32 24, float %3337)  ; Sqrt(value)
  %3339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3340 = extractvalue %dx.types.CBufRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.CBufRet.f32 %3339, 1
  %3342 = fsub fast float %3338, %3340
  %3343 = fdiv fast float %3342, %3341
  %3344 = call float @dx.op.unary.f32(i32 7, float %3343)  ; Saturate(value)
  %3345 = fmul fast float %3344, 2.000000e+00
  %3346 = fsub fast float 3.000000e+00, %3345
  %3347 = fmul fast float %3344, %3344
  %3348 = fmul fast float %3347, %3346
  %3349 = call float @dx.op.dot3.f32(i32 55, float %3332, float %3333, float %3334, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3350 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3349)  ; FMax(a,b)
  %3351 = fmul fast float %3350, 0x400C5BF8A0000000
  %3352 = fmul fast float %3348, %3306
  %3353 = fmul fast float %3352, %3351
  %3354 = fadd fast float %3353, %3275
  %3355 = fmul fast float %3348, %3307
  %3356 = fmul fast float %3355, %3351
  %3357 = fadd fast float %3356, %3274
  %3358 = fmul fast float %3348, %3308
  %3359 = fmul fast float %3358, %3351
  %3360 = fadd fast float %3359, %3273
  br label %3361

; <label>:3361                                    ; preds = %3331, %3272, %3200
  %3362 = phi float [ %3360, %3331 ], [ %3273, %3272 ], [ %3212, %3200 ]
  %3363 = phi float [ %3357, %3331 ], [ %3274, %3272 ], [ %3211, %3200 ]
  %3364 = phi float [ %3354, %3331 ], [ %3275, %3272 ], [ %3210, %3200 ]
  %3365 = fcmp fast ogt float %2857, %2894
  %3366 = and i1 %3213, %3365
  %3367 = and i1 %3215, %3366
  %3368 = and i1 %3217, %3367
  %3369 = and i1 %3219, %3368
  br i1 %3369, label %3370, label %3427, !dx.controlflow.hints !128

; <label>:3370                                    ; preds = %3361
  %3371 = fmul fast float %2896, 0x3FC24924A0000000
  %3372 = fsub fast float %2857, %2894
  %3373 = fdiv fast float %3372, %3371
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3378 = extractvalue %dx.types.CBufRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.CBufRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.CBufRet.f32 %3377, 2
  %3381 = fsub fast float %3376, %3364
  %3382 = fsub fast float %3378, %3207
  %3383 = fsub fast float %3379, %3208
  %3384 = fsub fast float %3380, %3209
  %3385 = fmul fast float %3381, %3374
  %3386 = fmul fast float %3382, %3374
  %3387 = fmul fast float %3383, %3374
  %3388 = fmul fast float %3384, %3374
  %3389 = fadd fast float %3385, %3364
  %3390 = fadd fast float %3386, %3207
  %3391 = fadd fast float %3387, %3208
  %3392 = fadd fast float %3388, %3209
  %3393 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3395 = extractvalue %dx.types.CBufRet.f32 %3394, 0
  %3396 = extractvalue %dx.types.CBufRet.f32 %3394, 1
  %3397 = extractvalue %dx.types.CBufRet.f32 %3394, 2
  %3398 = fsub fast float %3393, %3363
  %3399 = fsub fast float %3395, %3204
  %3400 = fsub fast float %3396, %3205
  %3401 = fsub fast float %3397, %3206
  %3402 = fmul fast float %3398, %3374
  %3403 = fmul fast float %3399, %3374
  %3404 = fmul fast float %3400, %3374
  %3405 = fmul fast float %3401, %3374
  %3406 = fadd fast float %3402, %3363
  %3407 = fadd fast float %3403, %3204
  %3408 = fadd fast float %3404, %3205
  %3409 = fadd fast float %3405, %3206
  %3410 = extractvalue %dx.types.CBufRet.f32 %3375, 2
  %3411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3412 = extractvalue %dx.types.CBufRet.f32 %3411, 0
  %3413 = extractvalue %dx.types.CBufRet.f32 %3411, 1
  %3414 = extractvalue %dx.types.CBufRet.f32 %3411, 2
  %3415 = fsub fast float %3410, %3362
  %3416 = fsub fast float %3412, %3201
  %3417 = fsub fast float %3413, %3202
  %3418 = fsub fast float %3414, %3203
  %3419 = fmul fast float %3415, %3374
  %3420 = fmul fast float %3416, %3374
  %3421 = fmul fast float %3417, %3374
  %3422 = fmul fast float %3418, %3374
  %3423 = fadd fast float %3419, %3362
  %3424 = fadd fast float %3420, %3201
  %3425 = fadd fast float %3421, %3202
  %3426 = fadd fast float %3422, %3203
  br label %3427

; <label>:3427                                    ; preds = %3370, %3361
  %3428 = phi float [ %3423, %3370 ], [ %3362, %3361 ]
  %3429 = phi float [ %3424, %3370 ], [ %3201, %3361 ]
  %3430 = phi float [ %3425, %3370 ], [ %3202, %3361 ]
  %3431 = phi float [ %3426, %3370 ], [ %3203, %3361 ]
  %3432 = phi float [ %3406, %3370 ], [ %3363, %3361 ]
  %3433 = phi float [ %3407, %3370 ], [ %3204, %3361 ]
  %3434 = phi float [ %3408, %3370 ], [ %3205, %3361 ]
  %3435 = phi float [ %3409, %3370 ], [ %3206, %3361 ]
  %3436 = phi float [ %3389, %3370 ], [ %3364, %3361 ]
  %3437 = phi float [ %3390, %3370 ], [ %3207, %3361 ]
  %3438 = phi float [ %3391, %3370 ], [ %3208, %3361 ]
  %3439 = phi float [ %3392, %3370 ], [ %3209, %3361 ]
  %3440 = extractvalue %dx.types.CBufRet.f32 %3019, 3
  %3441 = fmul fast float %3440, %3436
  %3442 = fmul fast float %3440, %3432
  %3443 = fmul fast float %3440, %3428
  %3444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3445 = extractvalue %dx.types.CBufRet.f32 %3444, 3
  %3446 = fmul fast float %3441, %3445
  %3447 = fmul fast float %3442, %3445
  %3448 = fmul fast float %3443, %3445
  %3449 = call float @dx.op.dot3.f32(i32 55, float %3446, float %3447, float %3448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3450 = fmul fast float %3449, 0x3FD20DD760000000
  %3451 = fmul fast float %3437, 1.500000e+00
  %3452 = fmul fast float %3451, %3440
  %3453 = fmul fast float %3452, %3445
  %3454 = fmul fast float %3438, 1.500000e+00
  %3455 = fmul fast float %3454, %3440
  %3456 = fmul fast float %3455, %3445
  %3457 = fmul fast float %3439, 1.500000e+00
  %3458 = fmul fast float %3457, %3440
  %3459 = fmul fast float %3458, %3445
  %3460 = fmul fast float %3433, 1.500000e+00
  %3461 = fmul fast float %3460, %3440
  %3462 = fmul fast float %3461, %3445
  %3463 = fmul fast float %3434, 1.500000e+00
  %3464 = fmul fast float %3463, %3440
  %3465 = fmul fast float %3464, %3445
  %3466 = fmul fast float %3435, 1.500000e+00
  %3467 = fmul fast float %3466, %3440
  %3468 = fmul fast float %3467, %3445
  %3469 = fmul fast float %3429, 1.500000e+00
  %3470 = fmul fast float %3469, %3440
  %3471 = fmul fast float %3470, %3445
  %3472 = fmul fast float %3430, 1.500000e+00
  %3473 = fmul fast float %3472, %3440
  %3474 = fmul fast float %3473, %3445
  %3475 = fmul fast float %3431, 1.500000e+00
  %3476 = fmul fast float %3475, %3440
  %3477 = fmul fast float %3476, %3445
  %3478 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3446)  ; FMax(a,b)
  %3479 = call float @dx.op.dot3.f32(i32 55, float %3453, float %3456, float %3459, float %3453, float %3456, float %3459)  ; Dot3(ax,ay,az,bx,by,bz)
  %3480 = fcmp fast oeq float %3479, 0.000000e+00
  %3481 = fcmp fast oeq float %3478, 0.000000e+00
  %3482 = or i1 %3481, %3480
  br i1 %3482, label %3512, label %3483

; <label>:3483                                    ; preds = %3427
  %3484 = fsub fast float -0.000000e+00, %3459
  %3485 = fsub fast float -0.000000e+00, %3453
  %3486 = call float @dx.op.unary.f32(i32 24, float %3479)  ; Sqrt(value)
  %3487 = fdiv fast float %3486, %3478
  %3488 = fcmp fast ogt float %3487, 0x3FFB6F8900000000
  %3489 = select i1 %3488, float 0x3FFB6F8900000000, float %3487
  %3490 = fmul fast float %3489, 0x3FE8A23460000000
  %3491 = call float @dx.op.unary.f32(i32 7, float %3490)  ; Saturate(value)
  %3492 = call float @dx.op.binary.f32(i32 35, float %3489, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3493 = fmul fast float %3491, %3478
  %3494 = fmul fast float %3492, 0x3FF279A740000000
  %3495 = fadd fast float %3494, -1.000000e+00
  %3496 = call float @dx.op.dot3.f32(i32 55, float %3484, float %3485, float %3456, float %3484, float %3485, float %3456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3497 = call float @dx.op.unary.f32(i32 25, float %3496)  ; Rsqrt(value)
  %3498 = fmul fast float %3497, %3484
  %3499 = fmul fast float %3497, %3485
  %3500 = fmul fast float %3497, %3456
  %3501 = fmul fast float %3495, %3495
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = fmul fast float %3492, 0x40005F8BE0000000
  %3504 = fsub fast float 0x400C5BF8A0000000, %3503
  %3505 = fdiv fast float %3493, %3504
  %3506 = fmul fast float %3505, 0x3FEE31C3C0000000
  %3507 = fmul fast float %3506, %3502
  %3508 = fmul fast float %3492, 0x3FDACB7480000000
  %3509 = fadd fast float %3508, 0xBFD7347680000000
  %3510 = fmul fast float %3509, %3505
  %3511 = fmul fast float %3510, %3502
  br label %3512

; <label>:3512                                    ; preds = %3483, %3427
  %3513 = phi float [ %3498, %3483 ], [ 0.000000e+00, %3427 ]
  %3514 = phi float [ %3499, %3483 ], [ 0.000000e+00, %3427 ]
  %3515 = phi float [ %3500, %3483 ], [ 0.000000e+00, %3427 ]
  %3516 = phi float [ %3507, %3483 ], [ 0.000000e+00, %3427 ]
  %3517 = phi float [ %3511, %3483 ], [ 0.000000e+00, %3427 ]
  %3518 = call float @dx.op.dot3.f32(i32 55, float %3513, float %3514, float %3515, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3519 = fmul fast float %3518, %3518
  %3520 = fmul fast float %3519, 0x3FEE471020000000
  %3521 = fadd fast float %3520, 0xBFD42F6020000000
  %3522 = fmul fast float %3478, 0x3FD20DD760000000
  %3523 = fmul fast float %3521, %3517
  %3524 = fmul fast float %3516, 0x3FDF454380000000
  %3525 = fmul fast float %3524, %3518
  %3526 = fadd fast float %3525, %3522
  %3527 = fadd fast float %3526, %3523
  %3528 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3447)  ; FMax(a,b)
  %3529 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3465, float %3468, float %3462, float %3465, float %3468)  ; Dot3(ax,ay,az,bx,by,bz)
  %3530 = fcmp fast oeq float %3529, 0.000000e+00
  %3531 = fcmp fast oeq float %3528, 0.000000e+00
  %3532 = or i1 %3531, %3530
  br i1 %3532, label %3562, label %3533

; <label>:3533                                    ; preds = %3512
  %3534 = fsub fast float -0.000000e+00, %3468
  %3535 = fsub fast float -0.000000e+00, %3462
  %3536 = call float @dx.op.unary.f32(i32 24, float %3529)  ; Sqrt(value)
  %3537 = fdiv fast float %3536, %3528
  %3538 = fcmp fast ogt float %3537, 0x3FFB6F8900000000
  %3539 = select i1 %3538, float 0x3FFB6F8900000000, float %3537
  %3540 = fmul fast float %3539, 0x3FE8A23460000000
  %3541 = call float @dx.op.unary.f32(i32 7, float %3540)  ; Saturate(value)
  %3542 = call float @dx.op.binary.f32(i32 35, float %3539, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3543 = fmul fast float %3541, %3528
  %3544 = fmul fast float %3542, 0x3FF279A740000000
  %3545 = fadd fast float %3544, -1.000000e+00
  %3546 = call float @dx.op.dot3.f32(i32 55, float %3534, float %3535, float %3465, float %3534, float %3535, float %3465)  ; Dot3(ax,ay,az,bx,by,bz)
  %3547 = call float @dx.op.unary.f32(i32 25, float %3546)  ; Rsqrt(value)
  %3548 = fmul fast float %3547, %3534
  %3549 = fmul fast float %3547, %3535
  %3550 = fmul fast float %3547, %3465
  %3551 = fmul fast float %3545, %3545
  %3552 = fsub fast float 1.000000e+00, %3551
  %3553 = fmul fast float %3542, 0x40005F8BE0000000
  %3554 = fsub fast float 0x400C5BF8A0000000, %3553
  %3555 = fdiv fast float %3543, %3554
  %3556 = fmul fast float %3555, 0x3FEE31C3C0000000
  %3557 = fmul fast float %3556, %3552
  %3558 = fmul fast float %3542, 0x3FDACB7480000000
  %3559 = fadd fast float %3558, 0xBFD7347680000000
  %3560 = fmul fast float %3559, %3555
  %3561 = fmul fast float %3560, %3552
  br label %3562

; <label>:3562                                    ; preds = %3533, %3512
  %3563 = phi float [ %3548, %3533 ], [ 0.000000e+00, %3512 ]
  %3564 = phi float [ %3549, %3533 ], [ 0.000000e+00, %3512 ]
  %3565 = phi float [ %3550, %3533 ], [ 0.000000e+00, %3512 ]
  %3566 = phi float [ %3557, %3533 ], [ 0.000000e+00, %3512 ]
  %3567 = phi float [ %3561, %3533 ], [ 0.000000e+00, %3512 ]
  %3568 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3564, float %3565, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3569 = fmul fast float %3568, %3568
  %3570 = fmul fast float %3569, 0x3FEE471020000000
  %3571 = fadd fast float %3570, 0xBFD42F6020000000
  %3572 = fmul fast float %3528, 0x3FD20DD760000000
  %3573 = fmul fast float %3571, %3567
  %3574 = fmul fast float %3566, 0x3FDF454380000000
  %3575 = fmul fast float %3574, %3568
  %3576 = fadd fast float %3575, %3572
  %3577 = fadd fast float %3576, %3573
  %3578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3448)  ; FMax(a,b)
  %3579 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3474, float %3477, float %3471, float %3474, float %3477)  ; Dot3(ax,ay,az,bx,by,bz)
  %3580 = fcmp fast oeq float %3579, 0.000000e+00
  %3581 = fcmp fast oeq float %3578, 0.000000e+00
  %3582 = or i1 %3581, %3580
  br i1 %3582, label %3612, label %3583

; <label>:3583                                    ; preds = %3562
  %3584 = fsub fast float -0.000000e+00, %3477
  %3585 = fsub fast float -0.000000e+00, %3471
  %3586 = call float @dx.op.unary.f32(i32 24, float %3579)  ; Sqrt(value)
  %3587 = fdiv fast float %3586, %3578
  %3588 = fcmp fast ogt float %3587, 0x3FFB6F8900000000
  %3589 = select i1 %3588, float 0x3FFB6F8900000000, float %3587
  %3590 = fmul fast float %3589, 0x3FE8A23460000000
  %3591 = call float @dx.op.unary.f32(i32 7, float %3590)  ; Saturate(value)
  %3592 = call float @dx.op.binary.f32(i32 35, float %3589, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3593 = fmul fast float %3591, %3578
  %3594 = fmul fast float %3592, 0x3FF279A740000000
  %3595 = fadd fast float %3594, -1.000000e+00
  %3596 = call float @dx.op.dot3.f32(i32 55, float %3584, float %3585, float %3474, float %3584, float %3585, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3597 = call float @dx.op.unary.f32(i32 25, float %3596)  ; Rsqrt(value)
  %3598 = fmul fast float %3597, %3584
  %3599 = fmul fast float %3597, %3585
  %3600 = fmul fast float %3597, %3474
  %3601 = fmul fast float %3595, %3595
  %3602 = fsub fast float 1.000000e+00, %3601
  %3603 = fmul fast float %3592, 0x40005F8BE0000000
  %3604 = fsub fast float 0x400C5BF8A0000000, %3603
  %3605 = fdiv fast float %3593, %3604
  %3606 = fmul fast float %3605, 0x3FEE31C3C0000000
  %3607 = fmul fast float %3606, %3602
  %3608 = fmul fast float %3592, 0x3FDACB7480000000
  %3609 = fadd fast float %3608, 0xBFD7347680000000
  %3610 = fmul fast float %3609, %3605
  %3611 = fmul fast float %3610, %3602
  br label %3612

; <label>:3612                                    ; preds = %3583, %3562
  %3613 = phi float [ %3598, %3583 ], [ 0.000000e+00, %3562 ]
  %3614 = phi float [ %3599, %3583 ], [ 0.000000e+00, %3562 ]
  %3615 = phi float [ %3600, %3583 ], [ 0.000000e+00, %3562 ]
  %3616 = phi float [ %3607, %3583 ], [ 0.000000e+00, %3562 ]
  %3617 = phi float [ %3611, %3583 ], [ 0.000000e+00, %3562 ]
  %3618 = call float @dx.op.dot3.f32(i32 55, float %3613, float %3614, float %3615, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = fmul fast float %3618, %3618
  %3620 = fmul fast float %3619, 0x3FEE471020000000
  %3621 = fadd fast float %3620, 0xBFD42F6020000000
  %3622 = fmul fast float %3578, 0x3FD20DD760000000
  %3623 = fmul fast float %3621, %3617
  %3624 = fmul fast float %3616, 0x3FDF454380000000
  %3625 = fmul fast float %3624, %3618
  %3626 = fadd fast float %3625, %3622
  %3627 = fadd fast float %3626, %3623
  %3628 = call float @dx.op.binary.f32(i32 35, float %3527, float 0.000000e+00)  ; FMax(a,b)
  %3629 = call float @dx.op.binary.f32(i32 35, float %3577, float 0.000000e+00)  ; FMax(a,b)
  %3630 = call float @dx.op.binary.f32(i32 35, float %3627, float 0.000000e+00)  ; FMax(a,b)
  %3631 = fsub fast float %2847, %3628
  %3632 = fsub fast float %2848, %3629
  %3633 = fsub fast float %2849, %3630
  %3634 = fmul fast float %3631, %2656
  %3635 = fmul fast float %3632, %2656
  %3636 = fmul fast float %3633, %2656
  %3637 = fadd fast float %3634, %3628
  %3638 = fadd fast float %3635, %3629
  %3639 = fadd fast float %3636, %3630
  %3640 = fmul fast float %3450, %2656
  %3641 = fsub fast float %3450, %3640
  br label %3642

; <label>:3642                                    ; preds = %3612, %2846
  %3643 = phi float [ %3641, %3612 ], [ 0.000000e+00, %2846 ]
  %3644 = phi float [ %3637, %3612 ], [ %2847, %2846 ]
  %3645 = phi float [ %3638, %3612 ], [ %2848, %2846 ]
  %3646 = phi float [ %3639, %3612 ], [ %2849, %2846 ]
  %3647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3648 = extractvalue %dx.types.CBufRet.f32 %3647, 0
  %3649 = call float @dx.op.binary.f32(i32 36, float %2437, float %3648)  ; FMin(a,b)
  %3650 = fmul fast float %3649, %2635
  %3651 = fsub fast float 1.000000e+00, %3650
  %3652 = bitcast float %3651 to i32
  %3653 = sub nsw i32 2129859010, %3652
  %3654 = bitcast i32 %3653 to float
  %3655 = call float @dx.op.binary.f32(i32 36, float %2438, float %3648)  ; FMin(a,b)
  %3656 = fmul fast float %3655, %2635
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = bitcast float %3657 to i32
  %3659 = sub nsw i32 2129859010, %3658
  %3660 = bitcast i32 %3659 to float
  %3661 = call float @dx.op.binary.f32(i32 36, float %2439, float %3648)  ; FMin(a,b)
  %3662 = fmul fast float %3661, %2635
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = bitcast float %3663 to i32
  %3665 = sub nsw i32 2129859010, %3664
  %3666 = bitcast i32 %3665 to float
  %3667 = fmul fast float %3644, %2634
  %3668 = fmul fast float %3667, %3654
  %3669 = fmul fast float %3645, %2634
  %3670 = fmul fast float %3669, %3660
  %3671 = fmul fast float %3646, %2634
  %3672 = fmul fast float %3671, %3666
  %3673 = extractvalue %dx.types.CBufRet.i32 %2653, 2
  %3674 = and i32 %3673, 1
  %3675 = icmp ne i32 %3674, 0
  %3676 = fsub fast float 1.000000e+00, %2656
  %3677 = select i1 %3675, float %2656, float %3668
  %3678 = select i1 %3675, float %3676, float %3670
  %3679 = select i1 %3675, float 0.000000e+00, float %3672
  %3680 = call float @dx.op.dot3.f32(i32 55, float %3677, float %3678, float %3679, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3681 = select i1 %2609, float 0.000000e+00, float %3677
  %3682 = select i1 %2609, float %3680, float %3678
  %3683 = select i1 %2609, float 0.000000e+00, float %3679
  %3684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3685 = extractvalue %dx.types.CBufRet.f32 %3684, 0
  %3686 = bitcast float %3685 to i32
  %3687 = lshr i32 %3686, 8
  %3688 = and i32 %3687, 255
  %3689 = uitofp i32 %3688 to float
  %3690 = fptoui float %3689 to i32
  %3691 = icmp eq i32 %3690, 23
  br i1 %3691, label %3692, label %3715

; <label>:3692                                    ; preds = %3642
  %3693 = fmul fast float %3666, %2634
  %3694 = fmul fast float %3660, %2634
  %3695 = fmul fast float %3654, %2634
  %3696 = fadd fast float %3695, 1.000000e+00
  %3697 = fadd fast float %3694, 1.000000e+00
  %3698 = fadd fast float %3693, 1.000000e+00
  %3699 = fmul fast float %3696, 5.000000e-01
  %3700 = fmul fast float %3697, 5.000000e-01
  %3701 = fmul fast float %3698, 5.000000e-01
  %3702 = call float @dx.op.unary.f32(i32 7, float %3699)  ; Saturate(value)
  %3703 = call float @dx.op.unary.f32(i32 7, float %3700)  ; Saturate(value)
  %3704 = call float @dx.op.unary.f32(i32 7, float %3701)  ; Saturate(value)
  %3705 = fmul fast float %3702, 1.023000e+03
  %3706 = fmul fast float %3703, 1.023000e+03
  %3707 = fmul fast float %3704, 1.023000e+03
  %3708 = fptoui float %3705 to i32
  %3709 = fptoui float %3706 to i32
  %3710 = fptoui float %3707 to i32
  %3711 = shl i32 %3709, 10
  %3712 = or i32 %3711, %3708
  %3713 = shl i32 %3710, 20
  %3714 = or i32 %3712, %3713
  br label %3715

; <label>:3715                                    ; preds = %3692, %3642
  %3716 = phi i32 [ %3714, %3692 ], [ 0, %3642 ]
  %3717 = fsub fast float 1.000000e+00, %2614
  %3718 = fmul fast float %3717, %2486
  %3719 = fadd fast float %3718, %2614
  %3720 = call float @dx.op.binary.f32(i32 35, float %2513, float %3719)  ; FMax(a,b)
  %3721 = call float @dx.op.binary.f32(i32 35, float %2512, float %3720)  ; FMax(a,b)
  %3722 = fsub fast float 1.000000e+00, %3721
  %3723 = extractvalue %dx.types.CBufRet.f32 %2624, 2
  %3724 = fcmp fast olt float %3723, 0.000000e+00
  br i1 %3724, label %3725, label %4436

; <label>:3725                                    ; preds = %3715
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3728 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3729 = fmul fast float %3727, %98
  %3730 = fmul fast float %3728, %99
  %3731 = fptoui float %3729 to i32
  %3732 = fptoui float %3730 to i32
  %3733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3734 = extractvalue %dx.types.CBufRet.f32 %3733, 0
  %3735 = extractvalue %dx.types.CBufRet.f32 %3733, 2
  %3736 = extractvalue %dx.types.CBufRet.f32 %3733, 3
  %3737 = fadd fast float %87, -4.000000e+00
  %3738 = call float @dx.op.binary.f32(i32 35, float %3737, float 0.000000e+00)  ; FMax(a,b)
  %3739 = fadd fast float %3738, %3734
  %3740 = fmul fast float %3739, %3735
  %3741 = call float @dx.op.unary.f32(i32 23, float %3740)  ; Log(value)
  %3742 = fmul fast float %3741, %3736
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 2
  %3745 = fmul fast float %3742, %3744
  %3746 = call float @dx.op.unary.f32(i32 7, float %3745)  ; Saturate(value)
  %3747 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3748 = extractvalue %dx.types.CBufRet.i32 %3747, 1
  %3749 = add i32 %3748, -1
  %3750 = uitofp i32 %3748 to float
  %3751 = fmul fast float %3750, %3746
  %3752 = fptoui float %3751 to i32
  %3753 = call i32 @dx.op.binary.i32(i32 40, i32 %3752, i32 %3749)  ; UMin(a,b)
  %3754 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.i32 %3754, 2
  %3756 = extractvalue %dx.types.CBufRet.i32 %3754, 3
  %3757 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3732, i32 %3755, i32 %3731)  ; UMad(a,b,c)
  %3758 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3753, i32 %3756, i32 %3757)  ; UMad(a,b,c)
  %3759 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3760 = fptoui float %3759 to i32
  %3761 = lshr i32 %3760, 5
  %3762 = call i32 @dx.op.binary.i32(i32 40, i32 %3761, i32 8191)  ; UMin(a,b)
  %3763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.i32 %3763, 2
  %3765 = add nsw i32 %3764, -1
  %3766 = call i32 @dx.op.binary.i32(i32 37, i32 %3765, i32 0)  ; IMax(a,b)
  %3767 = shl i32 %3762, 2
  %3768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3767, i32 undef)  ; BufferLoad(srv,index,wot)
  %3769 = extractvalue %dx.types.ResRet.i32 %3768, 0
  %3770 = lshr i32 %3769, 16
  %3771 = and i32 %3769, 65535
  %3772 = lshr i32 %3769, 21
  %3773 = lshr i32 %3771, 5
  %3774 = call i32 @dx.op.binary.i32(i32 40, i32 %3773, i32 %3766)  ; UMin(a,b)
  %3775 = icmp ugt i32 %3772, %3774
  br i1 %3775, label %4361, label %3776

; <label>:3776                                    ; preds = %3725
  br label %3777

; <label>:3777                                    ; preds = %4343, %3776
  %3778 = phi i32 [ %4344, %4343 ], [ %2399, %3776 ]
  %3779 = phi i32 [ %4345, %4343 ], [ %3716, %3776 ]
  %3780 = phi float [ %4346, %4343 ], [ 0.000000e+00, %3776 ]
  %3781 = phi float [ %4347, %4343 ], [ 0.000000e+00, %3776 ]
  %3782 = phi float [ %4348, %4343 ], [ 0.000000e+00, %3776 ]
  %3783 = phi float [ %4349, %4343 ], [ 0.000000e+00, %3776 ]
  %3784 = phi float [ %4350, %4343 ], [ 0.000000e+00, %3776 ]
  %3785 = phi float [ %4351, %4343 ], [ 0.000000e+00, %3776 ]
  %3786 = phi i32 [ %4352, %4343 ], [ 0, %3776 ]
  %3787 = phi float [ %4353, %4343 ], [ 0.000000e+00, %3776 ]
  %3788 = phi float [ %4354, %4343 ], [ 0.000000e+00, %3776 ]
  %3789 = phi float [ %4355, %4343 ], [ 0.000000e+00, %3776 ]
  %3790 = phi i32 [ %4356, %4343 ], [ 1, %3776 ]
  %3791 = phi float [ %4357, %4343 ], [ 1.000000e+00, %3776 ]
  %3792 = phi i32 [ %4358, %4343 ], [ %3772, %3776 ]
  %3793 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.i32 %3793, 2
  %3795 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3758, i32 %3794, i32 %3792)  ; UMad(a,b,c)
  %3796 = shl i32 %3795, 2
  %3797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3796, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.i32 %3797, 0
  %3799 = shl i32 %3792, 5
  %3800 = sub nsw i32 %3770, %3799
  %3801 = call i32 @dx.op.binary.i32(i32 37, i32 %3800, i32 0)  ; IMax(a,b)
  %3802 = call i32 @dx.op.binary.i32(i32 38, i32 %3801, i32 31)  ; IMin(a,b)
  %3803 = sub nsw i32 1, %3770
  %3804 = add nsw i32 %3803, %3771
  %3805 = call i32 @dx.op.binary.i32(i32 37, i32 %3804, i32 0)  ; IMax(a,b)
  %3806 = call i32 @dx.op.binary.i32(i32 38, i32 %3805, i32 32)  ; IMin(a,b)
  %3807 = and i32 %3806, 31
  %3808 = shl i32 -1, %3807
  %3809 = xor i32 %3808, -1
  %3810 = and i32 %3802, 31
  %3811 = shl i32 %3809, %3810
  %3812 = icmp eq i32 %3806, 32
  %3813 = select i1 %3812, i32 -1, i32 %3811
  %3814 = and i32 %3813, %3798
  %3815 = icmp eq i32 %3814, 0
  br i1 %3815, label %4343, label %3816

; <label>:3816                                    ; preds = %3777
  br label %3817

; <label>:3817                                    ; preds = %3954, %3816
  %3818 = phi i32 [ %3955, %3954 ], [ %3778, %3816 ]
  %3819 = phi i32 [ %3956, %3954 ], [ %3779, %3816 ]
  %3820 = phi float [ %3957, %3954 ], [ %3780, %3816 ]
  %3821 = phi float [ %3958, %3954 ], [ %3781, %3816 ]
  %3822 = phi float [ %3959, %3954 ], [ %3782, %3816 ]
  %3823 = phi float [ %3960, %3954 ], [ %3783, %3816 ]
  %3824 = phi float [ %3961, %3954 ], [ %3784, %3816 ]
  %3825 = phi float [ %3962, %3954 ], [ %3785, %3816 ]
  %3826 = phi i32 [ %3963, %3954 ], [ %3786, %3816 ]
  %3827 = phi float [ %3964, %3954 ], [ %3787, %3816 ]
  %3828 = phi float [ %3965, %3954 ], [ %3788, %3816 ]
  %3829 = phi float [ %3966, %3954 ], [ %3789, %3816 ]
  %3830 = phi i32 [ %3967, %3954 ], [ %3790, %3816 ]
  %3831 = phi float [ %3968, %3954 ], [ %3791, %3816 ]
  %3832 = phi i32 [ %3837, %3954 ], [ %3814, %3816 ]
  %3833 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3832)  ; FirstbitLo(value)
  %3834 = add i32 %3833, %3799
  %3835 = and i32 %3833, 31
  %3836 = shl i32 1, %3835
  %3837 = xor i32 %3836, %3832
  %3838 = mul i32 %3834, 72
  %3839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3840 = extractvalue %dx.types.ResRet.f32 %3839, 0
  %3841 = extractvalue %dx.types.ResRet.f32 %3839, 1
  %3842 = extractvalue %dx.types.ResRet.f32 %3839, 2
  %3843 = add i32 %3838, 12
  %3844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.i32 %3844, 0
  %3846 = add i32 %3838, 16
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = add i32 %3838, 28
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = add i32 %3838, 32
  %3855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3854, i32 undef)  ; BufferLoad(srv,index,wot)
  %3856 = extractvalue %dx.types.ResRet.f32 %3855, 0
  %3857 = extractvalue %dx.types.ResRet.f32 %3855, 1
  %3858 = extractvalue %dx.types.ResRet.f32 %3855, 2
  %3859 = extractvalue %dx.types.ResRet.f32 %3855, 3
  %3860 = add i32 %3838, 48
  %3861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3860, i32 undef)  ; BufferLoad(srv,index,wot)
  %3862 = extractvalue %dx.types.ResRet.f32 %3861, 0
  %3863 = extractvalue %dx.types.ResRet.f32 %3861, 1
  %3864 = add i32 %3838, 56
  %3865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3864, i32 undef)  ; BufferLoad(srv,index,wot)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = add i32 %3838, 64
  %3869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3868, i32 undef)  ; BufferLoad(srv,index,wot)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = mul i32 %3834, 60
  %3873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3872, i32 undef)  ; BufferLoad(srv,index,wot)
  %3874 = extractvalue %dx.types.ResRet.f32 %3873, 0
  %3875 = extractvalue %dx.types.ResRet.f32 %3873, 1
  %3876 = extractvalue %dx.types.ResRet.f32 %3873, 2
  %3877 = add i32 %3872, 12
  %3878 = add i32 %3872, 48
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = and i32 %3845, 32767
  %3884 = bitcast float %3840 to i32
  %3885 = bitcast float %3841 to i32
  %3886 = and i32 %3845, 32768
  %3887 = icmp ne i32 %3886, 0
  %3888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3889 = extractvalue %dx.types.CBufRet.f32 %3888, 3
  %3890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3891 = extractvalue %dx.types.CBufRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.CBufRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.CBufRet.f32 %3890, 2
  %3894 = fsub fast float %3874, %3891
  %3895 = fsub fast float %3875, %3892
  %3896 = fsub fast float %3876, %3893
  %3897 = fsub fast float %153, %3894
  %3898 = fsub fast float %154, %3895
  %3899 = fsub fast float %155, %3896
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.ResRet.f32 %3900, 2
  %3904 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3901, float %3902, float %3903)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = add i32 %3872, 24
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3907, float %3908, float %3909)  ; Dot3(ax,ay,az,bx,by,bz)
  %3911 = add i32 %3872, 36
  %3912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3911, i32 undef)  ; BufferLoad(srv,index,wot)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3913, float %3914, float %3915)  ; Dot3(ax,ay,az,bx,by,bz)
  %3917 = call float @dx.op.unary.f32(i32 6, float %3904)  ; FAbs(value)
  %3918 = call float @dx.op.unary.f32(i32 6, float %3910)  ; FAbs(value)
  %3919 = call float @dx.op.unary.f32(i32 6, float %3916)  ; FAbs(value)
  %3920 = fsub fast float %3880, %3917
  %3921 = fsub fast float %3881, %3918
  %3922 = fsub fast float %3882, %3919
  %3923 = fmul fast float %3920, %3848
  %3924 = fmul fast float %3921, %3849
  %3925 = fmul fast float %3922, %3850
  %3926 = call float @dx.op.binary.f32(i32 36, float %3924, float %3925)  ; FMin(a,b)
  %3927 = call float @dx.op.binary.f32(i32 36, float %3923, float %3926)  ; FMin(a,b)
  %3928 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3929 = call float @dx.op.binary.f32(i32 36, float %3831, float %3928)  ; FMin(a,b)
  %3930 = uitofp i1 %3887 to float
  %3931 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %3932 = fsub fast float %3931, %3930
  %3933 = fmul fast float %3929, %3932
  %3934 = lshr i32 %3818, 8
  %3935 = and i32 %3934, 255
  %3936 = uitofp i32 %3935 to float
  %3937 = fptoui float %3936 to i32
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3940 = bitcast float %3939 to i32
  %3941 = lshr i32 %3940, 24
  %3942 = uitofp i32 %3941 to float
  %3943 = fptoui float %3942 to i32
  %3944 = icmp ne i32 %3943, 1
  %3945 = zext i1 %3944 to i32
  %3946 = add i32 %3945, %3937
  %3947 = uitofp i32 %3946 to float
  %3948 = fptoui float %3947 to i32
  %3949 = shl i32 %3948, 8
  %3950 = and i32 %3949, 65280
  %3951 = and i32 %3818, -65281
  %3952 = or i32 %3950, %3951
  %3953 = fcmp fast ogt float %3933, 0.000000e+00
  br i1 %3953, label %3970, label %3954

; <label>:3954                                    ; preds = %4326, %4195, %3817
  %3955 = phi i32 [ %4273, %4195 ], [ %3952, %3817 ], [ %4273, %4326 ]
  %3956 = phi i32 [ %3819, %4195 ], [ %3819, %3817 ], [ %4341, %4326 ]
  %3957 = phi float [ %4259, %4195 ], [ %3820, %3817 ], [ %4259, %4326 ]
  %3958 = phi float [ %4260, %4195 ], [ %3821, %3817 ], [ %4260, %4326 ]
  %3959 = phi float [ %4261, %4195 ], [ %3822, %3817 ], [ %4261, %4326 ]
  %3960 = phi float [ %4320, %4195 ], [ %3823, %3817 ], [ %4320, %4326 ]
  %3961 = phi float [ %4321, %4195 ], [ %3824, %3817 ], [ %4321, %4326 ]
  %3962 = phi float [ %4322, %4195 ], [ %3825, %3817 ], [ %4322, %4326 ]
  %3963 = phi i32 [ %4324, %4195 ], [ %3826, %3817 ], [ %4324, %4326 ]
  %3964 = phi float [ %4277, %4195 ], [ %3827, %3817 ], [ %4277, %4326 ]
  %3965 = phi float [ %4278, %4195 ], [ %3828, %3817 ], [ %4278, %4326 ]
  %3966 = phi float [ %4279, %4195 ], [ %3829, %3817 ], [ %4279, %4326 ]
  %3967 = phi i32 [ 0, %4195 ], [ %3830, %3817 ], [ 0, %4326 ]
  %3968 = phi float [ %4262, %4195 ], [ %3831, %3817 ], [ %4262, %4326 ]
  %3969 = icmp eq i32 %3832, %3836
  br i1 %3969, label %4342, label %3817

; <label>:3970                                    ; preds = %3817
  %3971 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3972 = bitcast float %3971 to i32
  %3973 = lshr i32 %3972, 8
  %3974 = and i32 %3973, 255
  %3975 = uitofp i32 %3974 to float
  %3976 = fptoui float %3975 to i32
  %3977 = and i32 %3976, 2
  %3978 = icmp eq i32 %3977, 0
  br i1 %3978, label %3985, label %3979

; <label>:3979                                    ; preds = %3970
  %3980 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %3981 = call float @dx.op.unary.f32(i32 25, float %3980)  ; Rsqrt(value)
  %3982 = fmul fast float %3981, %153
  %3983 = fmul fast float %3981, %154
  %3984 = fmul fast float %3981, %155
  br label %3985

; <label>:3985                                    ; preds = %3979, %3970
  %3986 = phi float [ %3982, %3979 ], [ %2425, %3970 ]
  %3987 = phi float [ %3983, %3979 ], [ %2426, %3970 ]
  %3988 = phi float [ %3984, %3979 ], [ %2427, %3970 ]
  %3989 = icmp ne i32 %3884, -1
  %3990 = fcmp oeq float %3889, 0.000000e+00
  %3991 = and i1 %3990, %3989
  br i1 %3991, label %3992, label %4116

; <label>:3992                                    ; preds = %3985
  %3993 = fsub fast float -0.000000e+00, %3901
  %3994 = fsub fast float -0.000000e+00, %3902
  %3995 = fsub fast float -0.000000e+00, %3903
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = fsub fast float -0.000000e+00, %3996
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = fadd fast float %3998, %3863
  %4000 = fadd fast float %3862, %3998
  %4001 = fsub fast float -0.000000e+00, %4000
  %4002 = fcmp ogt float %3996, -0.000000e+00
  %4003 = select i1 %4002, float %4001, float %3999
  %4004 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %4005 = fdiv fast float 1.000000e+00, %4004
  %4006 = fmul fast float %4003, %4005
  %4007 = call float @dx.op.binary.f32(i32 35, float %4006, float 0.000000e+00)  ; FMax(a,b)
  %4008 = fsub fast float -0.000000e+00, %3907
  %4009 = fsub fast float -0.000000e+00, %3908
  %4010 = fsub fast float -0.000000e+00, %3909
  %4011 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %4008, float %4009, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = fsub fast float -0.000000e+00, %4011
  %4013 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %4008, float %4009, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = fadd fast float %4013, %3867
  %4015 = fadd fast float %3866, %4013
  %4016 = fsub fast float -0.000000e+00, %4015
  %4017 = fcmp ogt float %4011, -0.000000e+00
  %4018 = select i1 %4017, float %4016, float %4014
  %4019 = call float @dx.op.unary.f32(i32 6, float %4012)  ; FAbs(value)
  %4020 = fdiv fast float 1.000000e+00, %4019
  %4021 = fmul fast float %4018, %4020
  %4022 = call float @dx.op.binary.f32(i32 35, float %4021, float 0.000000e+00)  ; FMax(a,b)
  %4023 = fsub fast float -0.000000e+00, %3913
  %4024 = fsub fast float -0.000000e+00, %3914
  %4025 = fsub fast float -0.000000e+00, %3915
  %4026 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %3988, float %4023, float %4024, float %4025)  ; Dot3(ax,ay,az,bx,by,bz)
  %4027 = fsub fast float -0.000000e+00, %4026
  %4028 = call float @dx.op.dot3.f32(i32 55, float %3897, float %3898, float %3899, float %4023, float %4024, float %4025)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = fadd fast float %4028, %3871
  %4030 = fadd fast float %3870, %4028
  %4031 = fsub fast float -0.000000e+00, %4030
  %4032 = fcmp ogt float %4026, -0.000000e+00
  %4033 = select i1 %4032, float %4031, float %4029
  %4034 = call float @dx.op.unary.f32(i32 6, float %4027)  ; FAbs(value)
  %4035 = fdiv fast float 1.000000e+00, %4034
  %4036 = fmul fast float %4033, %4035
  %4037 = call float @dx.op.binary.f32(i32 35, float %4036, float 0.000000e+00)  ; FMax(a,b)
  %4038 = call float @dx.op.binary.f32(i32 36, float %4022, float %4037)  ; FMin(a,b)
  %4039 = call float @dx.op.binary.f32(i32 36, float %4007, float %4038)  ; FMin(a,b)
  %4040 = fmul fast float %4039, %3986
  %4041 = fmul fast float %4039, %3987
  %4042 = fmul fast float %4039, %3988
  %4043 = fadd fast float %4040, %153
  %4044 = fadd fast float %4041, %154
  %4045 = fadd fast float %4042, %155
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = extractvalue %dx.types.CBufRet.f32 %4046, 1
  %4049 = extractvalue %dx.types.CBufRet.f32 %4046, 2
  %4050 = fadd fast float %4043, %4047
  %4051 = fadd fast float %4044, %4048
  %4052 = fadd fast float %4045, %4049
  %4053 = fcmp fast olt float %4007, %4022
  %4054 = fcmp fast olt float %4007, %4037
  %4055 = and i1 %4053, %4054
  br i1 %4055, label %4059, label %4056

; <label>:4056                                    ; preds = %3992
  %4057 = fcmp fast olt float %4022, %4037
  br i1 %4057, label %4058, label %4059

; <label>:4058                                    ; preds = %4056
  br label %4059

; <label>:4059                                    ; preds = %4058, %4056, %3992
  %4060 = phi float [ 0.000000e+00, %4058 ], [ 0.000000e+00, %4056 ], [ 1.000000e+00, %3992 ]
  %4061 = phi float [ 1.000000e+00, %4058 ], [ 0.000000e+00, %4056 ], [ 0.000000e+00, %3992 ]
  %4062 = phi float [ 0.000000e+00, %4058 ], [ 1.000000e+00, %4056 ], [ 0.000000e+00, %3992 ]
  %4063 = phi float [ %3907, %4058 ], [ %3913, %4056 ], [ %3901, %3992 ]
  %4064 = phi float [ %3908, %4058 ], [ %3914, %4056 ], [ %3902, %3992 ]
  %4065 = phi float [ %3909, %4058 ], [ %3915, %4056 ], [ %3903, %3992 ]
  %4066 = call float @dx.op.unary.f32(i32 6, float %4065)  ; FAbs(value)
  %4067 = fcmp fast olt float %4066, 0x3FE276C8C0000000
  %4068 = select i1 %4067, float 0.000000e+00, float 1.000000e+00
  %4069 = select i1 %4067, float 1.000000e+00, float 0.000000e+00
  %4070 = fmul fast float %4069, %4064
  %4071 = fmul fast float %4068, %4065
  %4072 = fsub fast float %4070, %4071
  %4073 = fmul fast float %4063, %4069
  %4074 = fsub fast float -0.000000e+00, %4073
  %4075 = fmul fast float %4068, %4063
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4072, float %4074, float %4075, float %4072, float %4074, float %4075)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = call float @dx.op.unary.f32(i32 25, float %4076)  ; Rsqrt(value)
  %4078 = fmul fast float %4072, %4077
  %4079 = fmul fast float %4077, %4074
  %4080 = fmul fast float %4075, %4077
  %4081 = fmul fast float %4080, %4064
  %4082 = fmul fast float %4079, %4065
  %4083 = fsub fast float %4081, %4082
  %4084 = fmul fast float %4078, %4065
  %4085 = fmul fast float %4080, %4063
  %4086 = fsub fast float %4084, %4085
  %4087 = fmul fast float %4079, %4063
  %4088 = fmul fast float %4078, %4064
  %4089 = fsub fast float %4087, %4088
  %4090 = call float @dx.op.dot3.f32(i32 55, float %4083, float %4086, float %4089, float %4083, float %4086, float %4089)  ; Dot3(ax,ay,az,bx,by,bz)
  %4091 = call float @dx.op.unary.f32(i32 25, float %4090)  ; Rsqrt(value)
  %4092 = fmul fast float %4083, %4091
  %4093 = fmul fast float %4086, %4091
  %4094 = fmul fast float %4089, %4091
  %4095 = call float @dx.op.dot3.f32(i32 55, float %4050, float %4051, float %4052, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4096 = call float @dx.op.dot3.f32(i32 55, float %4050, float %4051, float %4052, float %4092, float %4093, float %4094)  ; Dot3(ax,ay,az,bx,by,bz)
  %4097 = fmul fast float %4095, 0x3FA99999A0000000
  %4098 = fmul fast float %4096, 0x3FA99999A0000000
  %4099 = call float @dx.op.unary.f32(i32 22, float %4097)  ; Frc(value)
  %4100 = call float @dx.op.unary.f32(i32 22, float %4098)  ; Frc(value)
  %4101 = fadd fast float %4099, 0xBFB99999A0000000
  %4102 = fadd fast float %4100, 0xBFB99999A0000000
  %4103 = call float @dx.op.unary.f32(i32 6, float %4101)  ; FAbs(value)
  %4104 = call float @dx.op.unary.f32(i32 6, float %4102)  ; FAbs(value)
  %4105 = fmul fast float %4103, 1.000000e+01
  %4106 = fmul fast float %4104, 1.000000e+01
  %4107 = call float @dx.op.binary.f32(i32 36, float %4105, float %4106)  ; FMin(a,b)
  %4108 = call float @dx.op.unary.f32(i32 7, float %4107)  ; Saturate(value)
  %4109 = fsub fast float 1.000000e+00, %4108
  %4110 = fmul fast float %4109, %4060
  %4111 = fmul fast float %4109, %4061
  %4112 = fmul fast float %4109, %4062
  %4113 = fsub fast float %4043, %3840
  %4114 = fsub fast float %4044, %3841
  %4115 = fsub fast float %4045, %3842
  br label %4123

; <label>:4116                                    ; preds = %3985
  %4117 = fmul fast float %3986, 8.096000e+03
  %4118 = fmul fast float %3987, 8.096000e+03
  %4119 = fmul fast float %3988, 8.096000e+03
  %4120 = fadd fast float %4117, %153
  %4121 = fadd fast float %4118, %154
  %4122 = fadd fast float %4119, %155
  br label %4123

; <label>:4123                                    ; preds = %4116, %4059
  %4124 = phi float [ %3986, %4116 ], [ %4113, %4059 ]
  %4125 = phi float [ %3987, %4116 ], [ %4114, %4059 ]
  %4126 = phi float [ %3988, %4116 ], [ %4115, %4059 ]
  %4127 = phi float [ %4120, %4116 ], [ %4043, %4059 ]
  %4128 = phi float [ %4121, %4116 ], [ %4044, %4059 ]
  %4129 = phi float [ %4122, %4116 ], [ %4045, %4059 ]
  %4130 = phi float [ 0.000000e+00, %4116 ], [ %4110, %4059 ]
  %4131 = phi float [ 0.000000e+00, %4116 ], [ %4111, %4059 ]
  %4132 = phi float [ 0.000000e+00, %4116 ], [ %4112, %4059 ]
  %4133 = fcmp fast olt float %3859, 1.000000e+00
  br i1 %4133, label %4134, label %4165, !dx.controlflow.hints !129

; <label>:4134                                    ; preds = %4123
  %4135 = fmul fast float %4126, %3857
  %4136 = fmul fast float %4125, %3858
  %4137 = fsub fast float %4135, %4136
  %4138 = fmul fast float %4124, %3858
  %4139 = fmul fast float %4126, %3856
  %4140 = fsub fast float %4138, %4139
  %4141 = fmul fast float %4125, %3856
  %4142 = fmul fast float %4124, %3857
  %4143 = fsub fast float %4141, %4142
  %4144 = fmul fast float %4137, 2.000000e+00
  %4145 = fmul fast float %4140, 2.000000e+00
  %4146 = fmul fast float %4143, 2.000000e+00
  %4147 = fmul fast float %4144, %3859
  %4148 = fmul fast float %4145, %3859
  %4149 = fmul fast float %4146, %3859
  %4150 = fmul fast float %4146, %3857
  %4151 = fmul fast float %4145, %3858
  %4152 = fmul fast float %4144, %3858
  %4153 = fmul fast float %4146, %3856
  %4154 = fmul fast float %4145, %3856
  %4155 = fmul fast float %4144, %3857
  %4156 = fadd fast float %4150, %4124
  %4157 = fadd fast float %4156, %4147
  %4158 = fsub fast float %4157, %4151
  %4159 = fsub fast float %4125, %4153
  %4160 = fadd fast float %4159, %4148
  %4161 = fadd fast float %4160, %4152
  %4162 = fadd fast float %4149, %4126
  %4163 = fsub fast float %4162, %4155
  %4164 = fadd fast float %4163, %4154
  br label %4165

; <label>:4165                                    ; preds = %4134, %4123
  %4166 = phi float [ %4158, %4134 ], [ %4124, %4123 ]
  %4167 = phi float [ %4161, %4134 ], [ %4125, %4123 ]
  %4168 = phi float [ %4164, %4134 ], [ %4126, %4123 ]
  br i1 %3991, label %4169, label %4192

; <label>:4169                                    ; preds = %4165
  %4170 = fsub fast float %4127, %153
  %4171 = fsub fast float %4128, %154
  %4172 = fsub fast float %4129, %155
  %4173 = fsub fast float %4127, %3840
  %4174 = fsub fast float %4128, %3841
  %4175 = fsub fast float %4129, %3842
  %4176 = call float @dx.op.dot3.f32(i32 55, float %4170, float %4171, float %4172, float %4170, float %4171, float %4172)  ; Dot3(ax,ay,az,bx,by,bz)
  %4177 = call float @dx.op.dot3.f32(i32 55, float %4173, float %4174, float %4175, float %4173, float %4174, float %4175)  ; Dot3(ax,ay,az,bx,by,bz)
  %4178 = fadd fast float %4177, 0x3EE4F8B580000000
  %4179 = fdiv fast float %4176, %4178
  %4180 = bitcast float %4179 to i32
  %4181 = ashr i32 %4180, 1
  %4182 = add nsw i32 %4181, 532487669
  %4183 = bitcast i32 %4182 to float
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fmul fast float %4184, 0x4009981AE0000000
  %4186 = fsub fast float 0x40111BBD80000000, %4185
  %4187 = fmul fast float %4186, %4184
  %4188 = fadd fast float %4187, 0xC0009F6020000000
  %4189 = fmul fast float %4188, %4184
  %4190 = fadd fast float %4189, 1.000000e+00
  %4191 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  br label %4195

; <label>:4192                                    ; preds = %4165
  %4193 = icmp ne i32 %3885, -1
  %4194 = zext i1 %4193 to i32
  br label %4195

; <label>:4195                                    ; preds = %4192, %4169
  %4196 = phi float [ 0.000000e+00, %4192 ], [ %4191, %4169 ]
  %4197 = phi i32 [ %4194, %4192 ], [ 0, %4169 ]
  %4198 = fmul float %4196, 5.000000e+00
  %4199 = fsub float 5.000000e+00, %4198
  %4200 = icmp ne i32 %4197, 0
  %4201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.f32 %4201, 3
  %4203 = fadd fast float %4202, %4199
  %4204 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4203)  ; FMax(a,b)
  %4205 = call float @dx.op.unary.f32(i32 6, float %4166)  ; FAbs(value)
  %4206 = call float @dx.op.unary.f32(i32 6, float %4167)  ; FAbs(value)
  %4207 = fadd fast float %4206, %4205
  %4208 = call float @dx.op.unary.f32(i32 6, float %4168)  ; FAbs(value)
  %4209 = fadd fast float %4207, %4208
  %4210 = fcmp fast oeq float %4209, 0.000000e+00
  %4211 = fdiv fast float 1.000000e+00, %4209
  %4212 = select i1 %4210, float 1.000000e+00, float %4211
  %4213 = fmul fast float %4212, %4166
  %4214 = fmul fast float %4212, %4167
  %4215 = call float @dx.op.unary.f32(i32 6, float %4214)  ; FAbs(value)
  %4216 = call float @dx.op.unary.f32(i32 6, float %4213)  ; FAbs(value)
  %4217 = fsub fast float 1.000000e+00, %4215
  %4218 = fsub fast float 1.000000e+00, %4216
  %4219 = fcmp fast oge float %4213, 0.000000e+00
  %4220 = fcmp fast oge float %4214, 0.000000e+00
  %4221 = select i1 %4219, float 1.000000e+00, float -1.000000e+00
  %4222 = select i1 %4220, float 1.000000e+00, float -1.000000e+00
  %4223 = fcmp fast ole float %4168, 0.000000e+00
  %4224 = fmul fast float %4221, %4217
  %4225 = fmul fast float %4222, %4218
  %4226 = select i1 %4223, float %4224, float %4213
  %4227 = select i1 %4223, float %4225, float %4214
  %4228 = fmul fast float %4226, 5.000000e-01
  %4229 = fmul fast float %4227, 5.000000e-01
  %4230 = fadd fast float %4228, 5.000000e-01
  %4231 = fadd fast float %4229, 5.000000e-01
  %4232 = uitofp i32 %3883 to float
  %4233 = call float @dx.op.binary.f32(i32 36, float %4204, float 3.000000e+00)  ; FMin(a,b)
  %4234 = fadd fast float %4233, 2.000000e+00
  %4235 = call float @dx.op.unary.f32(i32 21, float %4234)  ; Exp(value)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4201, 1
  %4237 = fmul fast float %4236, %4235
  %4238 = fmul fast float %4237, 2.000000e+00
  %4239 = fsub fast float 1.000000e+00, %4238
  %4240 = fmul fast float %4230, %4239
  %4241 = fmul fast float %4231, %4239
  %4242 = fadd fast float %4240, %4237
  %4243 = fadd fast float %4241, %4237
  %4244 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %4242, float %4243, float %4232, float undef, i32 0, i32 0, i32 undef, float %4204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.ResRet.f32 %4244, 1
  %4247 = extractvalue %dx.types.ResRet.f32 %4244, 2
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = fmul fast float %4249, %3853
  %4251 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4250)  ; FMin(a,b)
  %4252 = select i1 %4200, float %4251, float %4250
  %4253 = fmul fast float %4245, %3933
  %4254 = fmul fast float %4253, %4252
  %4255 = fmul fast float %4246, %3933
  %4256 = fmul fast float %4255, %4252
  %4257 = fmul fast float %4247, %3933
  %4258 = fmul fast float %4257, %4252
  %4259 = fadd fast float %4254, %3820
  %4260 = fadd fast float %4256, %3821
  %4261 = fadd fast float %4258, %3822
  %4262 = fsub fast float %3831, %3933
  %4263 = and i32 %3948, 255
  %4264 = uitofp i32 %4263 to float
  %4265 = fptoui float %4264 to i32
  %4266 = icmp eq i32 %3943, 1
  %4267 = zext i1 %4266 to i32
  %4268 = add i32 %4267, %4265
  %4269 = uitofp i32 %4268 to float
  %4270 = fptoui float %4269 to i32
  %4271 = shl i32 %4270, 8
  %4272 = and i32 %4271, 65280
  %4273 = or i32 %4272, %3951
  %4274 = fmul fast float %4130, %3933
  %4275 = fmul fast float %4131, %3933
  %4276 = fmul fast float %4132, %3933
  %4277 = fadd fast float %4274, %3827
  %4278 = fadd fast float %4275, %3828
  %4279 = fadd fast float %4276, %3829
  %4280 = fmul fast float %4232, 0x3FE3C6EF40000000
  %4281 = call float @dx.op.unary.f32(i32 22, float %4280)  ; Frc(value)
  %4282 = fadd fast float %4281, 0x3FE5555560000000
  %4283 = fadd fast float %4281, 0x3FD5555560000000
  %4284 = fsub fast float -0.000000e+00, %4281
  %4285 = fsub fast float -0.000000e+00, %4282
  %4286 = fsub fast float -0.000000e+00, %4283
  %4287 = fcmp fast oge float %4281, %4284
  %4288 = fcmp fast oge float %4282, %4285
  %4289 = fcmp fast oge float %4283, %4286
  %4290 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4291 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4292 = call float @dx.op.unary.f32(i32 6, float %4283)  ; FAbs(value)
  %4293 = call float @dx.op.unary.f32(i32 22, float %4290)  ; Frc(value)
  %4294 = call float @dx.op.unary.f32(i32 22, float %4291)  ; Frc(value)
  %4295 = call float @dx.op.unary.f32(i32 22, float %4292)  ; Frc(value)
  %4296 = fsub fast float -0.000000e+00, %4293
  %4297 = fsub fast float -0.000000e+00, %4294
  %4298 = fsub fast float -0.000000e+00, %4295
  %4299 = select i1 %4287, float %4293, float %4296
  %4300 = select i1 %4288, float %4294, float %4297
  %4301 = select i1 %4289, float %4295, float %4298
  %4302 = fmul fast float %4299, 6.000000e+00
  %4303 = fmul fast float %4300, 6.000000e+00
  %4304 = fmul fast float %4301, 6.000000e+00
  %4305 = fadd fast float %4302, -3.000000e+00
  %4306 = fadd fast float %4303, -3.000000e+00
  %4307 = fadd fast float %4304, -3.000000e+00
  %4308 = call float @dx.op.unary.f32(i32 6, float %4305)  ; FAbs(value)
  %4309 = call float @dx.op.unary.f32(i32 6, float %4306)  ; FAbs(value)
  %4310 = call float @dx.op.unary.f32(i32 6, float %4307)  ; FAbs(value)
  %4311 = fadd fast float %4308, -1.000000e+00
  %4312 = fadd fast float %4309, -1.000000e+00
  %4313 = fadd fast float %4310, -1.000000e+00
  %4314 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4315 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4316 = call float @dx.op.unary.f32(i32 7, float %4313)  ; Saturate(value)
  %4317 = fmul fast float %4314, %3933
  %4318 = fmul fast float %4315, %3933
  %4319 = fmul fast float %4316, %3933
  %4320 = fadd fast float %4317, %3823
  %4321 = fadd fast float %4318, %3824
  %4322 = fadd fast float %4319, %3825
  %4323 = icmp eq i32 %3883, 0
  %4324 = select i1 %4323, i32 1, i32 %3826
  %4325 = icmp eq i32 %3830, 0
  br i1 %4325, label %3954, label %4326

; <label>:4326                                    ; preds = %4195
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = bitcast float %4328 to i32
  %4330 = lshr i32 %4329, 8
  %4331 = and i32 %4330, 255
  %4332 = uitofp i32 %4331 to float
  %4333 = fptoui float %4332 to i32
  %4334 = icmp eq i32 %4333, 16
  %4335 = bitcast float %4250 to i32
  %4336 = select i1 %4334, i32 %4335, i32 %3819
  %4337 = icmp eq i32 %4333, 17
  %4338 = select i1 %4337, i32 1065353216, i32 %4336
  %4339 = icmp eq i32 %4333, 18
  %4340 = bitcast float %4252 to i32
  %4341 = select i1 %4339, i32 %4340, i32 %4338
  br label %3954

; <label>:4342                                    ; preds = %3954
  br label %4343

; <label>:4343                                    ; preds = %4342, %3777
  %4344 = phi i32 [ %3778, %3777 ], [ %3955, %4342 ]
  %4345 = phi i32 [ %3779, %3777 ], [ %3956, %4342 ]
  %4346 = phi float [ %3780, %3777 ], [ %3957, %4342 ]
  %4347 = phi float [ %3781, %3777 ], [ %3958, %4342 ]
  %4348 = phi float [ %3782, %3777 ], [ %3959, %4342 ]
  %4349 = phi float [ %3783, %3777 ], [ %3960, %4342 ]
  %4350 = phi float [ %3784, %3777 ], [ %3961, %4342 ]
  %4351 = phi float [ %3785, %3777 ], [ %3962, %4342 ]
  %4352 = phi i32 [ %3786, %3777 ], [ %3963, %4342 ]
  %4353 = phi float [ %3787, %3777 ], [ %3964, %4342 ]
  %4354 = phi float [ %3788, %3777 ], [ %3965, %4342 ]
  %4355 = phi float [ %3789, %3777 ], [ %3966, %4342 ]
  %4356 = phi i32 [ %3790, %3777 ], [ %3967, %4342 ]
  %4357 = phi float [ %3791, %3777 ], [ %3968, %4342 ]
  %4358 = add i32 %3792, 1
  %4359 = icmp ugt i32 %4358, %3774
  br i1 %4359, label %4360, label %3777, !llvm.loop !130

; <label>:4360                                    ; preds = %4343
  br label %4361

; <label>:4361                                    ; preds = %4360, %3725
  %4362 = phi i32 [ %2399, %3725 ], [ %4344, %4360 ]
  %4363 = phi i32 [ %3716, %3725 ], [ %4345, %4360 ]
  %4364 = phi float [ 0.000000e+00, %3725 ], [ %4346, %4360 ]
  %4365 = phi float [ 0.000000e+00, %3725 ], [ %4347, %4360 ]
  %4366 = phi float [ 0.000000e+00, %3725 ], [ %4348, %4360 ]
  %4367 = phi float [ 0.000000e+00, %3725 ], [ %4349, %4360 ]
  %4368 = phi float [ 0.000000e+00, %3725 ], [ %4350, %4360 ]
  %4369 = phi float [ 0.000000e+00, %3725 ], [ %4351, %4360 ]
  %4370 = phi i32 [ 0, %3725 ], [ %4352, %4360 ]
  %4371 = phi float [ 0.000000e+00, %3725 ], [ %4353, %4360 ]
  %4372 = phi float [ 0.000000e+00, %3725 ], [ %4354, %4360 ]
  %4373 = phi float [ 0.000000e+00, %3725 ], [ %4355, %4360 ]
  %4374 = call float @dx.op.dot3.f32(i32 55, float %4364, float %4365, float %4366, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4375 = select i1 %2609, float %4374, float %4365
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = bitcast float %4377 to i32
  %4379 = lshr i32 %4378, 8
  %4380 = and i32 %4379, 255
  %4381 = uitofp i32 %4380 to float
  %4382 = fptoui float %4381 to i32
  %4383 = icmp eq i32 %4382, 13
  br i1 %4383, label %4384, label %4404

; <label>:4384                                    ; preds = %4361
  %4385 = fadd fast float %4367, 1.000000e+00
  %4386 = fadd fast float %4368, 1.000000e+00
  %4387 = fadd fast float %4369, 1.000000e+00
  %4388 = fmul fast float %4385, 5.000000e-01
  %4389 = fmul fast float %4386, 5.000000e-01
  %4390 = fmul fast float %4387, 5.000000e-01
  %4391 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4392 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4393 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4394 = fmul fast float %4391, 1.023000e+03
  %4395 = fmul fast float %4392, 1.023000e+03
  %4396 = fmul fast float %4393, 1.023000e+03
  %4397 = fptoui float %4394 to i32
  %4398 = fptoui float %4395 to i32
  %4399 = fptoui float %4396 to i32
  %4400 = shl i32 %4398, 10
  %4401 = or i32 %4400, %4397
  %4402 = shl i32 %4399, 20
  %4403 = or i32 %4401, %4402
  br label %4404

; <label>:4404                                    ; preds = %4384, %4361
  %4405 = phi i32 [ %4403, %4384 ], [ %4363, %4361 ]
  %4406 = icmp eq i32 %4382, 14
  %4407 = select i1 %4406, i32 %4370, i32 %4405
  %4408 = icmp eq i32 %4382, 22
  br i1 %4408, label %4409, label %4429

; <label>:4409                                    ; preds = %4404
  %4410 = fadd fast float %4371, 1.000000e+00
  %4411 = fadd fast float %4372, 1.000000e+00
  %4412 = fadd fast float %4373, 1.000000e+00
  %4413 = fmul fast float %4410, 5.000000e-01
  %4414 = fmul fast float %4411, 5.000000e-01
  %4415 = fmul fast float %4412, 5.000000e-01
  %4416 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4417 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4418 = call float @dx.op.unary.f32(i32 7, float %4415)  ; Saturate(value)
  %4419 = fmul fast float %4416, 1.023000e+03
  %4420 = fmul fast float %4417, 1.023000e+03
  %4421 = fmul fast float %4418, 1.023000e+03
  %4422 = fptoui float %4419 to i32
  %4423 = fptoui float %4420 to i32
  %4424 = fptoui float %4421 to i32
  %4425 = shl i32 %4423, 10
  %4426 = or i32 %4425, %4422
  %4427 = shl i32 %4424, 20
  %4428 = or i32 %4426, %4427
  br label %4429

; <label>:4429                                    ; preds = %4409, %4404
  %4430 = phi i32 [ %4428, %4409 ], [ %4407, %4404 ]
  %4431 = fmul fast float %4364, 0x3FD45F3060000000
  %4432 = select i1 %2609, float 0.000000e+00, float %4431
  %4433 = fmul fast float %4375, 0x3FD45F3060000000
  %4434 = fmul fast float %4366, 0x3FD45F3060000000
  %4435 = select i1 %2609, float 0.000000e+00, float %4434
  br label %4436

; <label>:4436                                    ; preds = %4429, %3715
  %4437 = phi i32 [ %4362, %4429 ], [ %2399, %3715 ]
  %4438 = phi i32 [ %4430, %4429 ], [ %3716, %3715 ]
  %4439 = phi float [ %4432, %4429 ], [ %3681, %3715 ]
  %4440 = phi float [ %4433, %4429 ], [ %3682, %3715 ]
  %4441 = phi float [ %4435, %4429 ], [ %3683, %3715 ]
  %4442 = phi i1 [ false, %4429 ], [ true, %3715 ]
  %4443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.i32 %4443, 0
  %4445 = and i32 %4444, 524288
  %4446 = icmp ne i32 %4445, 0
  %4447 = select i1 %4446, float 0.000000e+00, float 1.000000e+00
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = bitcast float %4449 to i32
  %4451 = and i32 %4450, 255
  %4452 = uitofp i32 %4451 to float
  %4453 = fptoui float %4452 to i32
  %4454 = icmp eq i32 %4453, 38
  %4455 = select i1 %4454, i32 0, i32 %4438
  %4456 = lshr i32 %4450, 8
  %4457 = and i32 %4456, 255
  %4458 = uitofp i32 %4457 to float
  %4459 = fptoui float %4458 to i32
  %4460 = icmp eq i32 %4459, 24
  br i1 %4460, label %4461, label %4472

; <label>:4461                                    ; preds = %4436
  %4462 = fadd fast float %2646, 1.000000e+00
  %4463 = fmul fast float %4462, 5.000000e-01
  %4464 = select i1 %2648, float %4463, float 1.000000e+00
  %4465 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4466 = fmul fast float %4465, 1.023000e+03
  %4467 = fptoui float %4466 to i32
  %4468 = shl i32 %4467, 10
  %4469 = or i32 %4468, %4467
  %4470 = shl i32 %4467, 20
  %4471 = or i32 %4469, %4470
  br label %4472

; <label>:4472                                    ; preds = %4461, %4436
  %4473 = phi i32 [ %4455, %4436 ], [ %4471, %4461 ]
  %4474 = xor i1 %4446, true
  %4475 = zext i1 %4474 to i32
  br i1 %4446, label %4476, label %4760

; <label>:4476                                    ; preds = %4472
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.CBufRet.f32 %4477, 2
  %4481 = extractvalue %dx.types.CBufRet.f32 %4477, 3
  %4482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.f32 %4482, 0
  %4484 = extractvalue %dx.types.CBufRet.f32 %4482, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4482, 2
  %4486 = extractvalue %dx.types.CBufRet.f32 %4482, 3
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = extractvalue %dx.types.CBufRet.f32 %4487, 3
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 0
  %4494 = extractvalue %dx.types.CBufRet.f32 %4492, 1
  %4495 = extractvalue %dx.types.CBufRet.f32 %4492, 2
  %4496 = extractvalue %dx.types.CBufRet.f32 %4492, 3
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4507 = call float @dx.op.dot3.f32(i32 55, float %4503, float %4504, float %4505, float %2621, float %2622, float %2623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4510 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4511 = select i1 %115, float %4510, float %4509
  %4512 = fmul fast float %4507, 8.000000e+00
  %4513 = fmul fast float %4512, %4511
  %4514 = call float @dx.op.unary.f32(i32 7, float %4513)  ; Saturate(value)
  %4515 = fcmp fast ogt float %4514, 0.000000e+00
  br i1 %4515, label %4516, label %4734, !dx.controlflow.hints !131

; <label>:4516                                    ; preds = %4476
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4519 = fmul fast float %1899, 2.000000e+00
  %4520 = fmul fast float %1900, 2.000000e+00
  %4521 = fadd fast float %4519, -1.000000e+00
  %4522 = fadd fast float %4520, -1.000000e+00
  %4523 = fmul fast float %4518, %4521
  %4524 = fmul fast float %4518, %4522
  %4525 = fadd fast float %4523, %98
  %4526 = fadd fast float %4524, %99
  %4527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4528 = extractvalue %dx.types.CBufRet.f32 %4527, 2
  %4529 = extractvalue %dx.types.CBufRet.f32 %4527, 3
  %4530 = fmul fast float %4525, %4528
  %4531 = fmul fast float %4526, %4529
  %4532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %62, float %4530, float %4531, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = fcmp fast une float %4533, 0xFFF0000000000000
  %4535 = fcmp fast une float %4533, 0x7FF0000000000000
  %4536 = and i1 %4534, %4535
  %4537 = call float @dx.op.unary.f32(i32 6, float %4533)  ; FAbs(value)
  %4538 = fsub fast float 1.000000e+00, %4537
  %4539 = select i1 %4536, float 1.000000e+00, float 0.000000e+00
  %4540 = fmul fast float %4539, %4514
  %4541 = fcmp fast ogt float %4540, 0.000000e+00
  br i1 %4541, label %4542, label %4734, !dx.controlflow.hints !132

; <label>:4542                                    ; preds = %4516
  %4543 = fmul fast float %4478, %153
  %4544 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4479, float %4543)  ; FMad(a,b,c)
  %4545 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4480, float %4544)  ; FMad(a,b,c)
  %4546 = fadd fast float %4545, %4481
  %4547 = fmul fast float %4483, %153
  %4548 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4484, float %4547)  ; FMad(a,b,c)
  %4549 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4485, float %4548)  ; FMad(a,b,c)
  %4550 = fadd fast float %4549, %4486
  %4551 = fmul fast float %4488, %153
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4489, float %4551)  ; FMad(a,b,c)
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4490, float %4552)  ; FMad(a,b,c)
  %4554 = fadd fast float %4553, %4491
  %4555 = fdiv fast float 1.000000e+00, %4554
  %4556 = fmul fast float %4555, %4546
  %4557 = fmul fast float %4555, %4550
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.CBufRet.f32 %4558, 1
  %4561 = fmul fast float %4556, %4559
  %4562 = fmul fast float %4557, %4560
  %4563 = extractvalue %dx.types.CBufRet.f32 %4558, 2
  %4564 = extractvalue %dx.types.CBufRet.f32 %4558, 3
  %4565 = fadd fast float %4561, %4563
  %4566 = fadd fast float %4562, %4564
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4569 = fmul fast float %4568, %2621
  %4570 = fmul fast float %4568, %2622
  %4571 = fmul fast float %4568, %2623
  %4572 = fadd fast float %4569, %153
  %4573 = fadd fast float %4570, %154
  %4574 = fadd fast float %4571, %155
  %4575 = fmul fast float %4572, %4478
  %4576 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4479, float %4575)  ; FMad(a,b,c)
  %4577 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4480, float %4576)  ; FMad(a,b,c)
  %4578 = fadd fast float %4577, %4481
  %4579 = fmul fast float %4572, %4483
  %4580 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4484, float %4579)  ; FMad(a,b,c)
  %4581 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4485, float %4580)  ; FMad(a,b,c)
  %4582 = fadd fast float %4581, %4486
  %4583 = fmul fast float %4572, %4488
  %4584 = call float @dx.op.tertiary.f32(i32 46, float %4573, float %4489, float %4583)  ; FMad(a,b,c)
  %4585 = call float @dx.op.tertiary.f32(i32 46, float %4574, float %4490, float %4584)  ; FMad(a,b,c)
  %4586 = fadd fast float %4585, %4491
  %4587 = fdiv fast float 1.000000e+00, %4586
  %4588 = fmul fast float %4587, %4578
  %4589 = fmul fast float %4587, %4582
  %4590 = fmul fast float %4565, 2.000000e+00
  %4591 = fadd fast float %4590, -1.000000e+00
  %4592 = call float @dx.op.unary.f32(i32 6, float %4591)  ; FAbs(value)
  %4593 = fmul fast float %4592, 5.000000e+00
  %4594 = fadd fast float %4593, -4.000000e+00
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fsub fast float %4556, %4588
  %4597 = fmul fast float %4559, %4596
  %4598 = fmul fast float %4597, %4595
  %4599 = fsub fast float %4588, %4556
  %4600 = fmul fast float %4559, %4599
  %4601 = fadd fast float %4600, %4598
  %4602 = fsub fast float %4589, %4557
  %4603 = fmul fast float %4560, %4602
  %4604 = fmul fast float %4601, %4538
  %4605 = fmul fast float %4603, %4538
  %4606 = fadd fast float %4604, %4565
  %4607 = fadd fast float %4605, %4566
  %4608 = fsub fast float %4587, %4555
  %4609 = fmul fast float %4608, %4538
  %4610 = fadd fast float %4609, %4555
  %4611 = fdiv fast float 1.000000e+00, %4610
  %4612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %4606, float %4607, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4613 = extractvalue %dx.types.ResRet.f32 %4612, 0
  %4614 = extractvalue %dx.types.ResRet.f32 %4612, 1
  %4615 = extractvalue %dx.types.ResRet.f32 %4612, 2
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4618 = fmul fast float %4617, %4613
  %4619 = fmul fast float %4617, %4614
  %4620 = fmul fast float %4617, %4615
  %4621 = call float @dx.op.binary.f32(i32 35, float %4611, float 0x3810000000000000)  ; FMax(a,b)
  %4622 = fdiv fast float %4554, %4621
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4627 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4628 = fadd fast float %4625, %153
  %4629 = fadd fast float %4626, %154
  %4630 = fadd fast float %4627, %155
  %4631 = fmul fast float %4628, %4493
  %4632 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4494, float %4631)  ; FMad(a,b,c)
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4630, float %4495, float %4632)  ; FMad(a,b,c)
  %4634 = fadd fast float %4633, %4496
  %4635 = fmul fast float %4628, %4498
  %4636 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4499, float %4635)  ; FMad(a,b,c)
  %4637 = call float @dx.op.tertiary.f32(i32 46, float %4630, float %4500, float %4636)  ; FMad(a,b,c)
  %4638 = fadd fast float %4637, %4501
  %4639 = fmul fast float %4628, %4503
  %4640 = call float @dx.op.tertiary.f32(i32 46, float %4629, float %4504, float %4639)  ; FMad(a,b,c)
  %4641 = call float @dx.op.tertiary.f32(i32 46, float %4630, float %4505, float %4640)  ; FMad(a,b,c)
  %4642 = fadd fast float %4641, %4506
  %4643 = fdiv fast float 1.000000e+00, %4642
  %4644 = fmul fast float %4643, %4634
  %4645 = fmul fast float %4643, %4638
  %4646 = fmul fast float %4644, %4559
  %4647 = fmul fast float %4645, %4560
  %4648 = fadd fast float %4646, %4563
  %4649 = fadd fast float %4647, %4564
  %4650 = fadd fast float %4569, %4628
  %4651 = fadd fast float %4570, %4629
  %4652 = fadd fast float %4571, %4630
  %4653 = fmul fast float %4650, %4493
  %4654 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4494, float %4653)  ; FMad(a,b,c)
  %4655 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4495, float %4654)  ; FMad(a,b,c)
  %4656 = fadd fast float %4655, %4496
  %4657 = fmul fast float %4650, %4498
  %4658 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4499, float %4657)  ; FMad(a,b,c)
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4500, float %4658)  ; FMad(a,b,c)
  %4660 = fadd fast float %4659, %4501
  %4661 = fmul fast float %4650, %4503
  %4662 = call float @dx.op.tertiary.f32(i32 46, float %4651, float %4504, float %4661)  ; FMad(a,b,c)
  %4663 = call float @dx.op.tertiary.f32(i32 46, float %4652, float %4505, float %4662)  ; FMad(a,b,c)
  %4664 = fadd fast float %4663, %4506
  %4665 = fdiv fast float 1.000000e+00, %4664
  %4666 = fmul fast float %4665, %4656
  %4667 = fmul fast float %4665, %4660
  %4668 = fmul fast float %4648, 2.000000e+00
  %4669 = fadd fast float %4668, -1.000000e+00
  %4670 = call float @dx.op.unary.f32(i32 6, float %4669)  ; FAbs(value)
  %4671 = fmul fast float %4670, 5.000000e+00
  %4672 = fadd fast float %4671, -4.000000e+00
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fsub fast float %4644, %4666
  %4675 = fmul fast float %4559, %4674
  %4676 = fmul fast float %4675, %4673
  %4677 = fsub fast float %4666, %4644
  %4678 = fmul fast float %4559, %4677
  %4679 = fadd fast float %4678, %4676
  %4680 = fsub fast float %4667, %4645
  %4681 = fmul fast float %4560, %4680
  %4682 = fmul fast float %4679, %4538
  %4683 = fmul fast float %4681, %4538
  %4684 = fadd fast float %4682, %4648
  %4685 = fadd fast float %4683, %4649
  %4686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %61, float %4684, float %4685, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = extractvalue %dx.types.ResRet.f32 %4686, 1
  %4689 = extractvalue %dx.types.ResRet.f32 %4686, 2
  %4690 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4691 = fmul fast float %4690, %4687
  %4692 = fmul fast float %4690, %4688
  %4693 = fmul fast float %4690, %4689
  %4694 = and i32 %2505, 255
  %4695 = uitofp i32 %4694 to float
  %4696 = fmul fast float %4695, 0x3F70101020000000
  %4697 = fmul fast float %4696, %4623
  %4698 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4699 = fadd fast float %4698, %4697
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = call float @dx.op.binary.f32(i32 35, float %4618, float 0x3810000000000000)  ; FMax(a,b)
  %4702 = call float @dx.op.binary.f32(i32 35, float %4619, float 0x3810000000000000)  ; FMax(a,b)
  %4703 = call float @dx.op.binary.f32(i32 35, float %4620, float 0x3810000000000000)  ; FMax(a,b)
  %4704 = call float @dx.op.unary.f32(i32 23, float %4701)  ; Log(value)
  %4705 = call float @dx.op.unary.f32(i32 23, float %4702)  ; Log(value)
  %4706 = call float @dx.op.unary.f32(i32 23, float %4703)  ; Log(value)
  %4707 = call float @dx.op.binary.f32(i32 35, float %4691, float 0x3810000000000000)  ; FMax(a,b)
  %4708 = call float @dx.op.binary.f32(i32 35, float %4692, float 0x3810000000000000)  ; FMax(a,b)
  %4709 = call float @dx.op.binary.f32(i32 35, float %4693, float 0x3810000000000000)  ; FMax(a,b)
  %4710 = call float @dx.op.unary.f32(i32 23, float %4707)  ; Log(value)
  %4711 = call float @dx.op.unary.f32(i32 23, float %4708)  ; Log(value)
  %4712 = call float @dx.op.unary.f32(i32 23, float %4709)  ; Log(value)
  %4713 = fsub fast float %4704, %4710
  %4714 = fsub fast float %4705, %4711
  %4715 = fsub fast float %4706, %4712
  %4716 = fmul fast float %4713, %4700
  %4717 = fmul fast float %4714, %4700
  %4718 = fmul fast float %4715, %4700
  %4719 = fadd fast float %4716, %4710
  %4720 = fadd fast float %4717, %4711
  %4721 = fadd fast float %4718, %4712
  %4722 = call float @dx.op.unary.f32(i32 21, float %4719)  ; Exp(value)
  %4723 = call float @dx.op.unary.f32(i32 21, float %4720)  ; Exp(value)
  %4724 = call float @dx.op.unary.f32(i32 21, float %4721)  ; Exp(value)
  %4725 = select i1 %2609, float 0.000000e+00, float %4723
  %4726 = select i1 %2609, float 0.000000e+00, float %4724
  %4727 = fmul fast float %4685, 2.000000e+00
  %4728 = fadd fast float %4727, -1.000000e+00
  %4729 = fmul fast float %4728, %4728
  %4730 = fsub fast float 1.000000e+00, %4729
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = fmul fast float %4732, %4540
  br label %4734

; <label>:4734                                    ; preds = %4542, %4516, %4476
  %4735 = phi float [ %4722, %4542 ], [ 0.000000e+00, %4516 ], [ 0.000000e+00, %4476 ]
  %4736 = phi float [ %4725, %4542 ], [ 0.000000e+00, %4516 ], [ 0.000000e+00, %4476 ]
  %4737 = phi float [ %4726, %4542 ], [ 0.000000e+00, %4516 ], [ 0.000000e+00, %4476 ]
  %4738 = phi float [ %4733, %4542 ], [ 0.000000e+00, %4516 ], [ 0.000000e+00, %4476 ]
  %4739 = phi float [ %4538, %4542 ], [ %4538, %4516 ], [ 0.000000e+00, %4476 ]
  %4740 = phi float [ %4733, %4542 ], [ %4540, %4516 ], [ 0.000000e+00, %4476 ]
  %4741 = icmp eq i32 %4459, 25
  br i1 %4741, label %4742, label %4745

; <label>:4742                                    ; preds = %4734
  %4743 = call float @dx.op.unary.f32(i32 6, float %4739)  ; FAbs(value)
  %4744 = bitcast float %4743 to i32
  br label %4745

; <label>:4745                                    ; preds = %4742, %4734
  %4746 = phi i32 [ %4744, %4742 ], [ %4473, %4734 ]
  %4747 = icmp eq i32 %4459, 26
  %4748 = bitcast float %4740 to i32
  %4749 = select i1 %4747, i32 %4748, i32 %4746
  %4750 = icmp eq i32 %4459, 27
  %4751 = select i1 %4750, i32 0, i32 %4749
  %4752 = fcmp fast olt float %4738, 1.000000e+00
  %4753 = or i1 %4752, %4474
  %4754 = zext i1 %4753 to i32
  %4755 = fmul fast float %4738, %4447
  %4756 = fsub fast float %4738, %4755
  %4757 = fmul fast float %4756, %4735
  %4758 = fmul fast float %4756, %4736
  %4759 = fmul fast float %4756, %4737
  br label %4760

; <label>:4760                                    ; preds = %4745, %4472
  %4761 = phi i32 [ %4473, %4472 ], [ %4751, %4745 ]
  %4762 = phi float [ 0.000000e+00, %4472 ], [ %4756, %4745 ]
  %4763 = phi float [ 0.000000e+00, %4472 ], [ %4757, %4745 ]
  %4764 = phi float [ 0.000000e+00, %4472 ], [ %4758, %4745 ]
  %4765 = phi float [ 0.000000e+00, %4472 ], [ %4759, %4745 ]
  %4766 = phi i32 [ %4475, %4472 ], [ %4754, %4745 ]
  %4767 = icmp ne i32 %4766, 0
  %4768 = add i32 %4459, -13
  %4769 = icmp ult i32 %4768, 2
  %4770 = or i1 %4769, %4767
  %4771 = icmp eq i32 %4459, 22
  %4772 = or i1 %4770, %4771
  br i1 %4772, label %4773, label %5507

; <label>:4773                                    ; preds = %4760
  %4774 = select i1 %4442, float %3643, float 1.000000e+00
  %4775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4776 = extractvalue %dx.types.CBufRet.f32 %4775, 2
  %4777 = extractvalue %dx.types.CBufRet.f32 %4775, 3
  %4778 = fmul fast float %4776, %98
  %4779 = fmul fast float %4777, %99
  %4780 = fptoui float %4778 to i32
  %4781 = fptoui float %4779 to i32
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4785 = extractvalue %dx.types.CBufRet.f32 %4782, 3
  %4786 = fadd fast float %87, -4.000000e+00
  %4787 = call float @dx.op.binary.f32(i32 35, float %4786, float 0.000000e+00)  ; FMax(a,b)
  %4788 = fadd fast float %4787, %4783
  %4789 = fmul fast float %4788, %4784
  %4790 = call float @dx.op.unary.f32(i32 23, float %4789)  ; Log(value)
  %4791 = fmul fast float %4790, %4785
  %4792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4793 = extractvalue %dx.types.CBufRet.f32 %4792, 2
  %4794 = fmul fast float %4791, %4793
  %4795 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4796 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.i32 %4796, 1
  %4798 = add i32 %4797, -1
  %4799 = uitofp i32 %4797 to float
  %4800 = fmul fast float %4799, %4795
  %4801 = fptoui float %4800 to i32
  %4802 = call i32 @dx.op.binary.i32(i32 40, i32 %4801, i32 %4798)  ; UMin(a,b)
  %4803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4804 = extractvalue %dx.types.CBufRet.i32 %4803, 2
  %4805 = extractvalue %dx.types.CBufRet.i32 %4803, 3
  %4806 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4781, i32 %4804, i32 %4780)  ; UMad(a,b,c)
  %4807 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4802, i32 %4805, i32 %4806)  ; UMad(a,b,c)
  %4808 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %4809 = fptoui float %4808 to i32
  %4810 = lshr i32 %4809, 5
  %4811 = call i32 @dx.op.binary.i32(i32 40, i32 %4810, i32 8191)  ; UMin(a,b)
  %4812 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.i32 %4812, 2
  %4814 = add nsw i32 %4813, -1
  %4815 = call i32 @dx.op.binary.i32(i32 37, i32 %4814, i32 0)  ; IMax(a,b)
  %4816 = shl i32 %4811, 2
  %4817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %4816, i32 undef)  ; BufferLoad(srv,index,wot)
  %4818 = extractvalue %dx.types.ResRet.i32 %4817, 0
  %4819 = lshr i32 %4818, 16
  %4820 = and i32 %4818, 65535
  %4821 = lshr i32 %4818, 21
  %4822 = lshr i32 %4820, 5
  %4823 = call i32 @dx.op.binary.i32(i32 40, i32 %4822, i32 %4815)  ; UMin(a,b)
  %4824 = icmp ugt i32 %4821, %4823
  br i1 %4824, label %5419, label %4825

; <label>:4825                                    ; preds = %4773
  br label %4826

; <label>:4826                                    ; preds = %5401, %4825
  %4827 = phi i32 [ %5402, %5401 ], [ %4437, %4825 ]
  %4828 = phi i32 [ %5403, %5401 ], [ %4761, %4825 ]
  %4829 = phi float [ %5404, %5401 ], [ 0.000000e+00, %4825 ]
  %4830 = phi float [ %5405, %5401 ], [ 0.000000e+00, %4825 ]
  %4831 = phi float [ %5406, %5401 ], [ 0.000000e+00, %4825 ]
  %4832 = phi float [ %5407, %5401 ], [ 0.000000e+00, %4825 ]
  %4833 = phi float [ %5408, %5401 ], [ 0.000000e+00, %4825 ]
  %4834 = phi float [ %5409, %5401 ], [ 0.000000e+00, %4825 ]
  %4835 = phi i32 [ %5410, %5401 ], [ 0, %4825 ]
  %4836 = phi float [ %5411, %5401 ], [ 0.000000e+00, %4825 ]
  %4837 = phi float [ %5412, %5401 ], [ 0.000000e+00, %4825 ]
  %4838 = phi float [ %5413, %5401 ], [ 0.000000e+00, %4825 ]
  %4839 = phi i32 [ %5414, %5401 ], [ 1, %4825 ]
  %4840 = phi float [ %5415, %5401 ], [ 1.000000e+00, %4825 ]
  %4841 = phi i32 [ %5416, %5401 ], [ %4821, %4825 ]
  %4842 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.i32 %4842, 2
  %4844 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4807, i32 %4843, i32 %4841)  ; UMad(a,b,c)
  %4845 = shl i32 %4844, 2
  %4846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4845, i32 undef)  ; BufferLoad(srv,index,wot)
  %4847 = extractvalue %dx.types.ResRet.i32 %4846, 0
  %4848 = shl i32 %4841, 5
  %4849 = sub nsw i32 %4819, %4848
  %4850 = call i32 @dx.op.binary.i32(i32 37, i32 %4849, i32 0)  ; IMax(a,b)
  %4851 = call i32 @dx.op.binary.i32(i32 38, i32 %4850, i32 31)  ; IMin(a,b)
  %4852 = sub nsw i32 1, %4819
  %4853 = add nsw i32 %4852, %4820
  %4854 = call i32 @dx.op.binary.i32(i32 37, i32 %4853, i32 0)  ; IMax(a,b)
  %4855 = call i32 @dx.op.binary.i32(i32 38, i32 %4854, i32 32)  ; IMin(a,b)
  %4856 = and i32 %4855, 31
  %4857 = shl i32 -1, %4856
  %4858 = xor i32 %4857, -1
  %4859 = and i32 %4851, 31
  %4860 = shl i32 %4858, %4859
  %4861 = icmp eq i32 %4855, 32
  %4862 = select i1 %4861, i32 -1, i32 %4860
  %4863 = and i32 %4862, %4847
  %4864 = icmp eq i32 %4863, 0
  br i1 %4864, label %5401, label %4865

; <label>:4865                                    ; preds = %4826
  br label %4866

; <label>:4866                                    ; preds = %5003, %4865
  %4867 = phi i32 [ %5004, %5003 ], [ %4827, %4865 ]
  %4868 = phi i32 [ %5005, %5003 ], [ %4828, %4865 ]
  %4869 = phi float [ %5006, %5003 ], [ %4829, %4865 ]
  %4870 = phi float [ %5007, %5003 ], [ %4830, %4865 ]
  %4871 = phi float [ %5008, %5003 ], [ %4831, %4865 ]
  %4872 = phi float [ %5009, %5003 ], [ %4832, %4865 ]
  %4873 = phi float [ %5010, %5003 ], [ %4833, %4865 ]
  %4874 = phi float [ %5011, %5003 ], [ %4834, %4865 ]
  %4875 = phi i32 [ %5012, %5003 ], [ %4835, %4865 ]
  %4876 = phi float [ %5013, %5003 ], [ %4836, %4865 ]
  %4877 = phi float [ %5014, %5003 ], [ %4837, %4865 ]
  %4878 = phi float [ %5015, %5003 ], [ %4838, %4865 ]
  %4879 = phi i32 [ %5016, %5003 ], [ %4839, %4865 ]
  %4880 = phi float [ %5017, %5003 ], [ %4840, %4865 ]
  %4881 = phi i32 [ %4886, %5003 ], [ %4863, %4865 ]
  %4882 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4881)  ; FirstbitLo(value)
  %4883 = add i32 %4882, %4848
  %4884 = and i32 %4882, 31
  %4885 = shl i32 1, %4884
  %4886 = xor i32 %4885, %4881
  %4887 = mul i32 %4883, 72
  %4888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4887, i32 undef)  ; BufferLoad(srv,index,wot)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.ResRet.f32 %4888, 2
  %4892 = add i32 %4887, 12
  %4893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4892, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.i32 %4893, 0
  %4895 = add i32 %4887, 16
  %4896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4895, i32 undef)  ; BufferLoad(srv,index,wot)
  %4897 = extractvalue %dx.types.ResRet.f32 %4896, 0
  %4898 = extractvalue %dx.types.ResRet.f32 %4896, 1
  %4899 = extractvalue %dx.types.ResRet.f32 %4896, 2
  %4900 = add i32 %4887, 28
  %4901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4900, i32 undef)  ; BufferLoad(srv,index,wot)
  %4902 = extractvalue %dx.types.ResRet.f32 %4901, 0
  %4903 = add i32 %4887, 32
  %4904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4903, i32 undef)  ; BufferLoad(srv,index,wot)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.ResRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.ResRet.f32 %4904, 2
  %4908 = extractvalue %dx.types.ResRet.f32 %4904, 3
  %4909 = add i32 %4887, 48
  %4910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4909, i32 undef)  ; BufferLoad(srv,index,wot)
  %4911 = extractvalue %dx.types.ResRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.ResRet.f32 %4910, 1
  %4913 = add i32 %4887, 56
  %4914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4913, i32 undef)  ; BufferLoad(srv,index,wot)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.ResRet.f32 %4914, 1
  %4917 = add i32 %4887, 64
  %4918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4917, i32 undef)  ; BufferLoad(srv,index,wot)
  %4919 = extractvalue %dx.types.ResRet.f32 %4918, 0
  %4920 = extractvalue %dx.types.ResRet.f32 %4918, 1
  %4921 = mul i32 %4883, 60
  %4922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4921, i32 undef)  ; BufferLoad(srv,index,wot)
  %4923 = extractvalue %dx.types.ResRet.f32 %4922, 0
  %4924 = extractvalue %dx.types.ResRet.f32 %4922, 1
  %4925 = extractvalue %dx.types.ResRet.f32 %4922, 2
  %4926 = add i32 %4921, 12
  %4927 = add i32 %4921, 48
  %4928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4927, i32 undef)  ; BufferLoad(srv,index,wot)
  %4929 = extractvalue %dx.types.ResRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.ResRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.ResRet.f32 %4928, 2
  %4932 = and i32 %4894, 32767
  %4933 = bitcast float %4889 to i32
  %4934 = bitcast float %4890 to i32
  %4935 = and i32 %4894, 32768
  %4936 = icmp ne i32 %4935, 0
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 3
  %4939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4939, 0
  %4941 = extractvalue %dx.types.CBufRet.f32 %4939, 1
  %4942 = extractvalue %dx.types.CBufRet.f32 %4939, 2
  %4943 = fsub fast float %4923, %4940
  %4944 = fsub fast float %4924, %4941
  %4945 = fsub fast float %4925, %4942
  %4946 = fsub fast float %153, %4943
  %4947 = fsub fast float %154, %4944
  %4948 = fsub fast float %155, %4945
  %4949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4926, i32 undef)  ; BufferLoad(srv,index,wot)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.ResRet.f32 %4949, 1
  %4952 = extractvalue %dx.types.ResRet.f32 %4949, 2
  %4953 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %4950, float %4951, float %4952)  ; Dot3(ax,ay,az,bx,by,bz)
  %4954 = add i32 %4921, 24
  %4955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4954, i32 undef)  ; BufferLoad(srv,index,wot)
  %4956 = extractvalue %dx.types.ResRet.f32 %4955, 0
  %4957 = extractvalue %dx.types.ResRet.f32 %4955, 1
  %4958 = extractvalue %dx.types.ResRet.f32 %4955, 2
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %4956, float %4957, float %4958)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = add i32 %4921, 36
  %4961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4960, i32 undef)  ; BufferLoad(srv,index,wot)
  %4962 = extractvalue %dx.types.ResRet.f32 %4961, 0
  %4963 = extractvalue %dx.types.ResRet.f32 %4961, 1
  %4964 = extractvalue %dx.types.ResRet.f32 %4961, 2
  %4965 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %4962, float %4963, float %4964)  ; Dot3(ax,ay,az,bx,by,bz)
  %4966 = call float @dx.op.unary.f32(i32 6, float %4953)  ; FAbs(value)
  %4967 = call float @dx.op.unary.f32(i32 6, float %4959)  ; FAbs(value)
  %4968 = call float @dx.op.unary.f32(i32 6, float %4965)  ; FAbs(value)
  %4969 = fsub fast float %4929, %4966
  %4970 = fsub fast float %4930, %4967
  %4971 = fsub fast float %4931, %4968
  %4972 = fmul fast float %4969, %4897
  %4973 = fmul fast float %4970, %4898
  %4974 = fmul fast float %4971, %4899
  %4975 = call float @dx.op.binary.f32(i32 36, float %4973, float %4974)  ; FMin(a,b)
  %4976 = call float @dx.op.binary.f32(i32 36, float %4972, float %4975)  ; FMin(a,b)
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = call float @dx.op.binary.f32(i32 36, float %4880, float %4977)  ; FMin(a,b)
  %4979 = uitofp i1 %4936 to float
  %4980 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %4981 = fsub fast float %4980, %4979
  %4982 = fmul fast float %4978, %4981
  %4983 = lshr i32 %4867, 8
  %4984 = and i32 %4983, 255
  %4985 = uitofp i32 %4984 to float
  %4986 = fptoui float %4985 to i32
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %4989 = bitcast float %4988 to i32
  %4990 = lshr i32 %4989, 24
  %4991 = uitofp i32 %4990 to float
  %4992 = fptoui float %4991 to i32
  %4993 = icmp ne i32 %4992, 1
  %4994 = zext i1 %4993 to i32
  %4995 = add i32 %4994, %4986
  %4996 = uitofp i32 %4995 to float
  %4997 = fptoui float %4996 to i32
  %4998 = shl i32 %4997, 8
  %4999 = and i32 %4998, 65280
  %5000 = and i32 %4867, -65281
  %5001 = or i32 %4999, %5000
  %5002 = fcmp fast ogt float %4982, 0.000000e+00
  br i1 %5002, label %5019, label %5003

; <label>:5003                                    ; preds = %5383, %5252, %4866
  %5004 = phi i32 [ %5330, %5252 ], [ %5001, %4866 ], [ %5330, %5383 ]
  %5005 = phi i32 [ %4868, %5252 ], [ %4868, %4866 ], [ %5399, %5383 ]
  %5006 = phi float [ %5316, %5252 ], [ %4869, %4866 ], [ %5316, %5383 ]
  %5007 = phi float [ %5317, %5252 ], [ %4870, %4866 ], [ %5317, %5383 ]
  %5008 = phi float [ %5318, %5252 ], [ %4871, %4866 ], [ %5318, %5383 ]
  %5009 = phi float [ %5377, %5252 ], [ %4872, %4866 ], [ %5377, %5383 ]
  %5010 = phi float [ %5378, %5252 ], [ %4873, %4866 ], [ %5378, %5383 ]
  %5011 = phi float [ %5379, %5252 ], [ %4874, %4866 ], [ %5379, %5383 ]
  %5012 = phi i32 [ %5381, %5252 ], [ %4875, %4866 ], [ %5381, %5383 ]
  %5013 = phi float [ %5334, %5252 ], [ %4876, %4866 ], [ %5334, %5383 ]
  %5014 = phi float [ %5335, %5252 ], [ %4877, %4866 ], [ %5335, %5383 ]
  %5015 = phi float [ %5336, %5252 ], [ %4878, %4866 ], [ %5336, %5383 ]
  %5016 = phi i32 [ 0, %5252 ], [ %4879, %4866 ], [ 0, %5383 ]
  %5017 = phi float [ %5319, %5252 ], [ %4880, %4866 ], [ %5319, %5383 ]
  %5018 = icmp eq i32 %4881, %4885
  br i1 %5018, label %5400, label %4866

; <label>:5019                                    ; preds = %4866
  %5020 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %5021 = bitcast float %5020 to i32
  %5022 = lshr i32 %5021, 8
  %5023 = and i32 %5022, 255
  %5024 = uitofp i32 %5023 to float
  %5025 = fptoui float %5024 to i32
  %5026 = and i32 %5025, 2
  %5027 = icmp eq i32 %5026, 0
  br i1 %5027, label %5034, label %5028

; <label>:5028                                    ; preds = %5019
  %5029 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5030, %153
  %5032 = fmul fast float %5030, %154
  %5033 = fmul fast float %5030, %155
  br label %5034

; <label>:5034                                    ; preds = %5028, %5019
  %5035 = phi float [ %5031, %5028 ], [ %2621, %5019 ]
  %5036 = phi float [ %5032, %5028 ], [ %2622, %5019 ]
  %5037 = phi float [ %5033, %5028 ], [ %2623, %5019 ]
  %5038 = icmp ne i32 %4933, -1
  %5039 = fcmp oeq float %4938, 0.000000e+00
  %5040 = and i1 %5039, %5038
  br i1 %5040, label %5041, label %5165

; <label>:5041                                    ; preds = %5034
  %5042 = fsub fast float -0.000000e+00, %4950
  %5043 = fsub fast float -0.000000e+00, %4951
  %5044 = fsub fast float -0.000000e+00, %4952
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = fsub fast float -0.000000e+00, %5045
  %5047 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5048 = fadd fast float %5047, %4912
  %5049 = fadd fast float %4911, %5047
  %5050 = fsub fast float -0.000000e+00, %5049
  %5051 = fcmp ogt float %5045, -0.000000e+00
  %5052 = select i1 %5051, float %5050, float %5048
  %5053 = call float @dx.op.unary.f32(i32 6, float %5046)  ; FAbs(value)
  %5054 = fdiv fast float 1.000000e+00, %5053
  %5055 = fmul fast float %5052, %5054
  %5056 = call float @dx.op.binary.f32(i32 35, float %5055, float 0.000000e+00)  ; FMax(a,b)
  %5057 = fsub fast float -0.000000e+00, %4956
  %5058 = fsub fast float -0.000000e+00, %4957
  %5059 = fsub fast float -0.000000e+00, %4958
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = fsub fast float -0.000000e+00, %5060
  %5062 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %5057, float %5058, float %5059)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = fadd fast float %5062, %4916
  %5064 = fadd fast float %4915, %5062
  %5065 = fsub fast float -0.000000e+00, %5064
  %5066 = fcmp ogt float %5060, -0.000000e+00
  %5067 = select i1 %5066, float %5065, float %5063
  %5068 = call float @dx.op.unary.f32(i32 6, float %5061)  ; FAbs(value)
  %5069 = fdiv fast float 1.000000e+00, %5068
  %5070 = fmul fast float %5067, %5069
  %5071 = call float @dx.op.binary.f32(i32 35, float %5070, float 0.000000e+00)  ; FMax(a,b)
  %5072 = fsub fast float -0.000000e+00, %4962
  %5073 = fsub fast float -0.000000e+00, %4963
  %5074 = fsub fast float -0.000000e+00, %4964
  %5075 = call float @dx.op.dot3.f32(i32 55, float %5035, float %5036, float %5037, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5076 = fsub fast float -0.000000e+00, %5075
  %5077 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4947, float %4948, float %5072, float %5073, float %5074)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = fadd fast float %5077, %4920
  %5079 = fadd fast float %4919, %5077
  %5080 = fsub fast float -0.000000e+00, %5079
  %5081 = fcmp ogt float %5075, -0.000000e+00
  %5082 = select i1 %5081, float %5080, float %5078
  %5083 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5084 = fdiv fast float 1.000000e+00, %5083
  %5085 = fmul fast float %5082, %5084
  %5086 = call float @dx.op.binary.f32(i32 35, float %5085, float 0.000000e+00)  ; FMax(a,b)
  %5087 = call float @dx.op.binary.f32(i32 36, float %5071, float %5086)  ; FMin(a,b)
  %5088 = call float @dx.op.binary.f32(i32 36, float %5056, float %5087)  ; FMin(a,b)
  %5089 = fmul fast float %5088, %5035
  %5090 = fmul fast float %5088, %5036
  %5091 = fmul fast float %5088, %5037
  %5092 = fadd fast float %5089, %153
  %5093 = fadd fast float %5090, %154
  %5094 = fadd fast float %5091, %155
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5099 = fadd fast float %5092, %5096
  %5100 = fadd fast float %5093, %5097
  %5101 = fadd fast float %5094, %5098
  %5102 = fcmp fast olt float %5056, %5071
  %5103 = fcmp fast olt float %5056, %5086
  %5104 = and i1 %5102, %5103
  br i1 %5104, label %5108, label %5105

; <label>:5105                                    ; preds = %5041
  %5106 = fcmp fast olt float %5071, %5086
  br i1 %5106, label %5107, label %5108

; <label>:5107                                    ; preds = %5105
  br label %5108

; <label>:5108                                    ; preds = %5107, %5105, %5041
  %5109 = phi float [ 0.000000e+00, %5107 ], [ 0.000000e+00, %5105 ], [ 1.000000e+00, %5041 ]
  %5110 = phi float [ 1.000000e+00, %5107 ], [ 0.000000e+00, %5105 ], [ 0.000000e+00, %5041 ]
  %5111 = phi float [ 0.000000e+00, %5107 ], [ 1.000000e+00, %5105 ], [ 0.000000e+00, %5041 ]
  %5112 = phi float [ %4956, %5107 ], [ %4962, %5105 ], [ %4950, %5041 ]
  %5113 = phi float [ %4957, %5107 ], [ %4963, %5105 ], [ %4951, %5041 ]
  %5114 = phi float [ %4958, %5107 ], [ %4964, %5105 ], [ %4952, %5041 ]
  %5115 = call float @dx.op.unary.f32(i32 6, float %5114)  ; FAbs(value)
  %5116 = fcmp fast olt float %5115, 0x3FE276C8C0000000
  %5117 = select i1 %5116, float 0.000000e+00, float 1.000000e+00
  %5118 = select i1 %5116, float 1.000000e+00, float 0.000000e+00
  %5119 = fmul fast float %5118, %5113
  %5120 = fmul fast float %5117, %5114
  %5121 = fsub fast float %5119, %5120
  %5122 = fmul fast float %5112, %5118
  %5123 = fsub fast float -0.000000e+00, %5122
  %5124 = fmul fast float %5117, %5112
  %5125 = call float @dx.op.dot3.f32(i32 55, float %5121, float %5123, float %5124, float %5121, float %5123, float %5124)  ; Dot3(ax,ay,az,bx,by,bz)
  %5126 = call float @dx.op.unary.f32(i32 25, float %5125)  ; Rsqrt(value)
  %5127 = fmul fast float %5121, %5126
  %5128 = fmul fast float %5126, %5123
  %5129 = fmul fast float %5124, %5126
  %5130 = fmul fast float %5129, %5113
  %5131 = fmul fast float %5128, %5114
  %5132 = fsub fast float %5130, %5131
  %5133 = fmul fast float %5127, %5114
  %5134 = fmul fast float %5129, %5112
  %5135 = fsub fast float %5133, %5134
  %5136 = fmul fast float %5128, %5112
  %5137 = fmul fast float %5127, %5113
  %5138 = fsub fast float %5136, %5137
  %5139 = call float @dx.op.dot3.f32(i32 55, float %5132, float %5135, float %5138, float %5132, float %5135, float %5138)  ; Dot3(ax,ay,az,bx,by,bz)
  %5140 = call float @dx.op.unary.f32(i32 25, float %5139)  ; Rsqrt(value)
  %5141 = fmul fast float %5132, %5140
  %5142 = fmul fast float %5135, %5140
  %5143 = fmul fast float %5138, %5140
  %5144 = call float @dx.op.dot3.f32(i32 55, float %5099, float %5100, float %5101, float %5127, float %5128, float %5129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5145 = call float @dx.op.dot3.f32(i32 55, float %5099, float %5100, float %5101, float %5141, float %5142, float %5143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5146 = fmul fast float %5144, 0x3FA99999A0000000
  %5147 = fmul fast float %5145, 0x3FA99999A0000000
  %5148 = call float @dx.op.unary.f32(i32 22, float %5146)  ; Frc(value)
  %5149 = call float @dx.op.unary.f32(i32 22, float %5147)  ; Frc(value)
  %5150 = fadd fast float %5148, 0xBFB99999A0000000
  %5151 = fadd fast float %5149, 0xBFB99999A0000000
  %5152 = call float @dx.op.unary.f32(i32 6, float %5150)  ; FAbs(value)
  %5153 = call float @dx.op.unary.f32(i32 6, float %5151)  ; FAbs(value)
  %5154 = fmul fast float %5152, 1.000000e+01
  %5155 = fmul fast float %5153, 1.000000e+01
  %5156 = call float @dx.op.binary.f32(i32 36, float %5154, float %5155)  ; FMin(a,b)
  %5157 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5158 = fsub fast float 1.000000e+00, %5157
  %5159 = fmul fast float %5158, %5109
  %5160 = fmul fast float %5158, %5110
  %5161 = fmul fast float %5158, %5111
  %5162 = fsub fast float %5092, %4889
  %5163 = fsub fast float %5093, %4890
  %5164 = fsub fast float %5094, %4891
  br label %5172

; <label>:5165                                    ; preds = %5034
  %5166 = fmul fast float %5035, 8.096000e+03
  %5167 = fmul fast float %5036, 8.096000e+03
  %5168 = fmul fast float %5037, 8.096000e+03
  %5169 = fadd fast float %5166, %153
  %5170 = fadd fast float %5167, %154
  %5171 = fadd fast float %5168, %155
  br label %5172

; <label>:5172                                    ; preds = %5165, %5108
  %5173 = phi float [ %5035, %5165 ], [ %5162, %5108 ]
  %5174 = phi float [ %5036, %5165 ], [ %5163, %5108 ]
  %5175 = phi float [ %5037, %5165 ], [ %5164, %5108 ]
  %5176 = phi float [ %5169, %5165 ], [ %5092, %5108 ]
  %5177 = phi float [ %5170, %5165 ], [ %5093, %5108 ]
  %5178 = phi float [ %5171, %5165 ], [ %5094, %5108 ]
  %5179 = phi float [ 0.000000e+00, %5165 ], [ %5159, %5108 ]
  %5180 = phi float [ 0.000000e+00, %5165 ], [ %5160, %5108 ]
  %5181 = phi float [ 0.000000e+00, %5165 ], [ %5161, %5108 ]
  %5182 = fcmp fast olt float %4908, 1.000000e+00
  br i1 %5182, label %5183, label %5214, !dx.controlflow.hints !129

; <label>:5183                                    ; preds = %5172
  %5184 = fmul fast float %5175, %4906
  %5185 = fmul fast float %5174, %4907
  %5186 = fsub fast float %5184, %5185
  %5187 = fmul fast float %5173, %4907
  %5188 = fmul fast float %5175, %4905
  %5189 = fsub fast float %5187, %5188
  %5190 = fmul fast float %5174, %4905
  %5191 = fmul fast float %5173, %4906
  %5192 = fsub fast float %5190, %5191
  %5193 = fmul fast float %5186, 2.000000e+00
  %5194 = fmul fast float %5189, 2.000000e+00
  %5195 = fmul fast float %5192, 2.000000e+00
  %5196 = fmul fast float %5193, %4908
  %5197 = fmul fast float %5194, %4908
  %5198 = fmul fast float %5195, %4908
  %5199 = fmul fast float %5195, %4906
  %5200 = fmul fast float %5194, %4907
  %5201 = fmul fast float %5193, %4907
  %5202 = fmul fast float %5195, %4905
  %5203 = fmul fast float %5194, %4905
  %5204 = fmul fast float %5193, %4906
  %5205 = fadd fast float %5199, %5173
  %5206 = fadd fast float %5205, %5196
  %5207 = fsub fast float %5206, %5200
  %5208 = fsub fast float %5174, %5202
  %5209 = fadd fast float %5208, %5197
  %5210 = fadd fast float %5209, %5201
  %5211 = fadd fast float %5198, %5175
  %5212 = fsub fast float %5211, %5204
  %5213 = fadd fast float %5212, %5203
  br label %5214

; <label>:5214                                    ; preds = %5183, %5172
  %5215 = phi float [ %5207, %5183 ], [ %5173, %5172 ]
  %5216 = phi float [ %5210, %5183 ], [ %5174, %5172 ]
  %5217 = phi float [ %5213, %5183 ], [ %5175, %5172 ]
  br i1 %5040, label %5218, label %5249

; <label>:5218                                    ; preds = %5214
  %5219 = fmul fast float %2555, 0x400187C840000000
  %5220 = fadd fast float %5219, 0xC00EFC2120000000
  %5221 = fmul fast float %5220, %2555
  %5222 = fadd fast float %5221, 0x3FE5D16340000000
  %5223 = fmul fast float %5222, %2555
  %5224 = fadd fast float %5223, 1.000000e+00
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fsub fast float %5176, %153
  %5227 = fsub fast float %5177, %154
  %5228 = fsub fast float %5178, %155
  %5229 = fsub fast float %5176, %4889
  %5230 = fsub fast float %5177, %4890
  %5231 = fsub fast float %5178, %4891
  %5232 = call float @dx.op.dot3.f32(i32 55, float %5226, float %5227, float %5228, float %5226, float %5227, float %5228)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %5231, float %5229, float %5230, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = fadd fast float %5233, 0x3EE4F8B580000000
  %5235 = fdiv fast float %5232, %5234
  %5236 = bitcast float %5235 to i32
  %5237 = ashr i32 %5236, 1
  %5238 = add nsw i32 %5237, 532487669
  %5239 = bitcast i32 %5238 to float
  %5240 = fmul fast float %5239, %5225
  %5241 = call float @dx.op.unary.f32(i32 7, float %5240)  ; Saturate(value)
  %5242 = fmul fast float %5241, 0x4009981AE0000000
  %5243 = fsub fast float 0x40111BBD80000000, %5242
  %5244 = fmul fast float %5243, %5241
  %5245 = fadd fast float %5244, 0xC0009F6020000000
  %5246 = fmul fast float %5245, %5241
  %5247 = fadd fast float %5246, 1.000000e+00
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  br label %5252

; <label>:5249                                    ; preds = %5214
  %5250 = icmp ne i32 %4934, -1
  %5251 = zext i1 %5250 to i32
  br label %5252

; <label>:5252                                    ; preds = %5249, %5218
  %5253 = phi float [ %2555, %5249 ], [ %5248, %5218 ]
  %5254 = phi i32 [ %5251, %5249 ], [ 0, %5218 ]
  %5255 = fmul float %5253, 5.000000e+00
  %5256 = fsub float 5.000000e+00, %5255
  %5257 = icmp ne i32 %5254, 0
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 3
  %5260 = fadd fast float %5259, %5256
  %5261 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5260)  ; FMax(a,b)
  %5262 = call float @dx.op.unary.f32(i32 6, float %5215)  ; FAbs(value)
  %5263 = call float @dx.op.unary.f32(i32 6, float %5216)  ; FAbs(value)
  %5264 = fadd fast float %5263, %5262
  %5265 = call float @dx.op.unary.f32(i32 6, float %5217)  ; FAbs(value)
  %5266 = fadd fast float %5264, %5265
  %5267 = fcmp fast oeq float %5266, 0.000000e+00
  %5268 = fdiv fast float 1.000000e+00, %5266
  %5269 = select i1 %5267, float 1.000000e+00, float %5268
  %5270 = fmul fast float %5269, %5215
  %5271 = fmul fast float %5269, %5216
  %5272 = call float @dx.op.unary.f32(i32 6, float %5271)  ; FAbs(value)
  %5273 = call float @dx.op.unary.f32(i32 6, float %5270)  ; FAbs(value)
  %5274 = fsub fast float 1.000000e+00, %5272
  %5275 = fsub fast float 1.000000e+00, %5273
  %5276 = fcmp fast oge float %5270, 0.000000e+00
  %5277 = fcmp fast oge float %5271, 0.000000e+00
  %5278 = select i1 %5276, float 1.000000e+00, float -1.000000e+00
  %5279 = select i1 %5277, float 1.000000e+00, float -1.000000e+00
  %5280 = fcmp fast ole float %5217, 0.000000e+00
  %5281 = fmul fast float %5278, %5274
  %5282 = fmul fast float %5279, %5275
  %5283 = select i1 %5280, float %5281, float %5270
  %5284 = select i1 %5280, float %5282, float %5271
  %5285 = fmul fast float %5283, 5.000000e-01
  %5286 = fmul fast float %5284, 5.000000e-01
  %5287 = fadd fast float %5285, 5.000000e-01
  %5288 = fadd fast float %5286, 5.000000e-01
  %5289 = uitofp i32 %4932 to float
  %5290 = call float @dx.op.binary.f32(i32 36, float %5261, float 3.000000e+00)  ; FMin(a,b)
  %5291 = fadd fast float %5290, 2.000000e+00
  %5292 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5293 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5294 = fmul fast float %5293, %5292
  %5295 = fmul fast float %5294, 2.000000e+00
  %5296 = fsub fast float 1.000000e+00, %5295
  %5297 = fmul fast float %5287, %5296
  %5298 = fmul fast float %5288, %5296
  %5299 = fadd fast float %5297, %5294
  %5300 = fadd fast float %5298, %5294
  %5301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %5299, float %5300, float %5289, float undef, i32 0, i32 0, i32 undef, float %5261)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5306 = extractvalue %dx.types.CBufRet.f32 %5305, 3
  %5307 = fmul fast float %5306, %4902
  %5308 = call float @dx.op.binary.f32(i32 36, float %4774, float %5307)  ; FMin(a,b)
  %5309 = select i1 %5257, float %5308, float %5307
  %5310 = fmul fast float %5302, %4982
  %5311 = fmul fast float %5310, %5309
  %5312 = fmul fast float %5303, %4982
  %5313 = fmul fast float %5312, %5309
  %5314 = fmul fast float %5304, %4982
  %5315 = fmul fast float %5314, %5309
  %5316 = fadd fast float %5311, %4869
  %5317 = fadd fast float %5313, %4870
  %5318 = fadd fast float %5315, %4871
  %5319 = fsub fast float %4880, %4982
  %5320 = and i32 %4997, 255
  %5321 = uitofp i32 %5320 to float
  %5322 = fptoui float %5321 to i32
  %5323 = icmp eq i32 %4992, 1
  %5324 = zext i1 %5323 to i32
  %5325 = add i32 %5324, %5322
  %5326 = uitofp i32 %5325 to float
  %5327 = fptoui float %5326 to i32
  %5328 = shl i32 %5327, 8
  %5329 = and i32 %5328, 65280
  %5330 = or i32 %5329, %5000
  %5331 = fmul fast float %5179, %4982
  %5332 = fmul fast float %5180, %4982
  %5333 = fmul fast float %5181, %4982
  %5334 = fadd fast float %5331, %4876
  %5335 = fadd fast float %5332, %4877
  %5336 = fadd fast float %5333, %4878
  %5337 = fmul fast float %5289, 0x3FE3C6EF40000000
  %5338 = call float @dx.op.unary.f32(i32 22, float %5337)  ; Frc(value)
  %5339 = fadd fast float %5338, 0x3FE5555560000000
  %5340 = fadd fast float %5338, 0x3FD5555560000000
  %5341 = fsub fast float -0.000000e+00, %5338
  %5342 = fsub fast float -0.000000e+00, %5339
  %5343 = fsub fast float -0.000000e+00, %5340
  %5344 = fcmp fast oge float %5338, %5341
  %5345 = fcmp fast oge float %5339, %5342
  %5346 = fcmp fast oge float %5340, %5343
  %5347 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5348 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5349 = call float @dx.op.unary.f32(i32 6, float %5340)  ; FAbs(value)
  %5350 = call float @dx.op.unary.f32(i32 22, float %5347)  ; Frc(value)
  %5351 = call float @dx.op.unary.f32(i32 22, float %5348)  ; Frc(value)
  %5352 = call float @dx.op.unary.f32(i32 22, float %5349)  ; Frc(value)
  %5353 = fsub fast float -0.000000e+00, %5350
  %5354 = fsub fast float -0.000000e+00, %5351
  %5355 = fsub fast float -0.000000e+00, %5352
  %5356 = select i1 %5344, float %5350, float %5353
  %5357 = select i1 %5345, float %5351, float %5354
  %5358 = select i1 %5346, float %5352, float %5355
  %5359 = fmul fast float %5356, 6.000000e+00
  %5360 = fmul fast float %5357, 6.000000e+00
  %5361 = fmul fast float %5358, 6.000000e+00
  %5362 = fadd fast float %5359, -3.000000e+00
  %5363 = fadd fast float %5360, -3.000000e+00
  %5364 = fadd fast float %5361, -3.000000e+00
  %5365 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5366 = call float @dx.op.unary.f32(i32 6, float %5363)  ; FAbs(value)
  %5367 = call float @dx.op.unary.f32(i32 6, float %5364)  ; FAbs(value)
  %5368 = fadd fast float %5365, -1.000000e+00
  %5369 = fadd fast float %5366, -1.000000e+00
  %5370 = fadd fast float %5367, -1.000000e+00
  %5371 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5372 = call float @dx.op.unary.f32(i32 7, float %5369)  ; Saturate(value)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = fmul fast float %5371, %4982
  %5375 = fmul fast float %5372, %4982
  %5376 = fmul fast float %5373, %4982
  %5377 = fadd fast float %5374, %4872
  %5378 = fadd fast float %5375, %4873
  %5379 = fadd fast float %5376, %4874
  %5380 = icmp eq i32 %4932, 0
  %5381 = select i1 %5380, i32 1, i32 %4875
  %5382 = icmp eq i32 %4879, 0
  br i1 %5382, label %5003, label %5383

; <label>:5383                                    ; preds = %5252
  %5384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5385 = extractvalue %dx.types.CBufRet.f32 %5384, 0
  %5386 = bitcast float %5385 to i32
  %5387 = lshr i32 %5386, 8
  %5388 = and i32 %5387, 255
  %5389 = uitofp i32 %5388 to float
  %5390 = fptoui float %5389 to i32
  %5391 = icmp eq i32 %5390, 16
  %5392 = bitcast float %5307 to i32
  %5393 = select i1 %5391, i32 %5392, i32 %4868
  %5394 = icmp eq i32 %5390, 17
  %5395 = bitcast float %4774 to i32
  %5396 = select i1 %5394, i32 %5395, i32 %5393
  %5397 = icmp eq i32 %5390, 18
  %5398 = bitcast float %5309 to i32
  %5399 = select i1 %5397, i32 %5398, i32 %5396
  br label %5003

; <label>:5400                                    ; preds = %5003
  br label %5401

; <label>:5401                                    ; preds = %5400, %4826
  %5402 = phi i32 [ %4827, %4826 ], [ %5004, %5400 ]
  %5403 = phi i32 [ %4828, %4826 ], [ %5005, %5400 ]
  %5404 = phi float [ %4829, %4826 ], [ %5006, %5400 ]
  %5405 = phi float [ %4830, %4826 ], [ %5007, %5400 ]
  %5406 = phi float [ %4831, %4826 ], [ %5008, %5400 ]
  %5407 = phi float [ %4832, %4826 ], [ %5009, %5400 ]
  %5408 = phi float [ %4833, %4826 ], [ %5010, %5400 ]
  %5409 = phi float [ %4834, %4826 ], [ %5011, %5400 ]
  %5410 = phi i32 [ %4835, %4826 ], [ %5012, %5400 ]
  %5411 = phi float [ %4836, %4826 ], [ %5013, %5400 ]
  %5412 = phi float [ %4837, %4826 ], [ %5014, %5400 ]
  %5413 = phi float [ %4838, %4826 ], [ %5015, %5400 ]
  %5414 = phi i32 [ %4839, %4826 ], [ %5016, %5400 ]
  %5415 = phi float [ %4840, %4826 ], [ %5017, %5400 ]
  %5416 = add i32 %4841, 1
  %5417 = icmp ugt i32 %5416, %4823
  br i1 %5417, label %5418, label %4826, !llvm.loop !130

; <label>:5418                                    ; preds = %5401
  br label %5419

; <label>:5419                                    ; preds = %5418, %4773
  %5420 = phi i32 [ %4437, %4773 ], [ %5402, %5418 ]
  %5421 = phi i32 [ %4761, %4773 ], [ %5403, %5418 ]
  %5422 = phi float [ 0.000000e+00, %4773 ], [ %5404, %5418 ]
  %5423 = phi float [ 0.000000e+00, %4773 ], [ %5405, %5418 ]
  %5424 = phi float [ 0.000000e+00, %4773 ], [ %5406, %5418 ]
  %5425 = phi float [ 0.000000e+00, %4773 ], [ %5407, %5418 ]
  %5426 = phi float [ 0.000000e+00, %4773 ], [ %5408, %5418 ]
  %5427 = phi float [ 0.000000e+00, %4773 ], [ %5409, %5418 ]
  %5428 = phi i32 [ 0, %4773 ], [ %5410, %5418 ]
  %5429 = phi float [ 0.000000e+00, %4773 ], [ %5411, %5418 ]
  %5430 = phi float [ 0.000000e+00, %4773 ], [ %5412, %5418 ]
  %5431 = phi float [ 0.000000e+00, %4773 ], [ %5413, %5418 ]
  %5432 = call float @dx.op.dot3.f32(i32 55, float %5422, float %5423, float %5424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5433 = select i1 %2609, float 0.000000e+00, float %5422
  %5434 = select i1 %2609, float %5432, float %5423
  %5435 = select i1 %2609, float 0.000000e+00, float %5424
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = bitcast float %5437 to i32
  %5439 = lshr i32 %5438, 8
  %5440 = and i32 %5439, 255
  %5441 = uitofp i32 %5440 to float
  %5442 = fptoui float %5441 to i32
  %5443 = icmp eq i32 %5442, 13
  br i1 %5443, label %5444, label %5464

; <label>:5444                                    ; preds = %5419
  %5445 = fadd fast float %5425, 1.000000e+00
  %5446 = fadd fast float %5426, 1.000000e+00
  %5447 = fadd fast float %5427, 1.000000e+00
  %5448 = fmul fast float %5445, 5.000000e-01
  %5449 = fmul fast float %5446, 5.000000e-01
  %5450 = fmul fast float %5447, 5.000000e-01
  %5451 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5452 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5453 = call float @dx.op.unary.f32(i32 7, float %5450)  ; Saturate(value)
  %5454 = fmul fast float %5451, 1.023000e+03
  %5455 = fmul fast float %5452, 1.023000e+03
  %5456 = fmul fast float %5453, 1.023000e+03
  %5457 = fptoui float %5454 to i32
  %5458 = fptoui float %5455 to i32
  %5459 = fptoui float %5456 to i32
  %5460 = shl i32 %5458, 10
  %5461 = or i32 %5460, %5457
  %5462 = shl i32 %5459, 20
  %5463 = or i32 %5461, %5462
  br label %5464

; <label>:5464                                    ; preds = %5444, %5419
  %5465 = phi i32 [ %5463, %5444 ], [ %5421, %5419 ]
  %5466 = icmp eq i32 %5442, 14
  %5467 = select i1 %5466, i32 %5428, i32 %5465
  %5468 = icmp eq i32 %5442, 22
  br i1 %5468, label %5469, label %5489

; <label>:5469                                    ; preds = %5464
  %5470 = fadd fast float %5429, 1.000000e+00
  %5471 = fadd fast float %5430, 1.000000e+00
  %5472 = fadd fast float %5431, 1.000000e+00
  %5473 = fmul fast float %5470, 5.000000e-01
  %5474 = fmul fast float %5471, 5.000000e-01
  %5475 = fmul fast float %5472, 5.000000e-01
  %5476 = call float @dx.op.unary.f32(i32 7, float %5473)  ; Saturate(value)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5479 = fmul fast float %5476, 1.023000e+03
  %5480 = fmul fast float %5477, 1.023000e+03
  %5481 = fmul fast float %5478, 1.023000e+03
  %5482 = fptoui float %5479 to i32
  %5483 = fptoui float %5480 to i32
  %5484 = fptoui float %5481 to i32
  %5485 = shl i32 %5483, 10
  %5486 = or i32 %5485, %5482
  %5487 = shl i32 %5484, 20
  %5488 = or i32 %5486, %5487
  br label %5489

; <label>:5489                                    ; preds = %5469, %5464
  %5490 = phi i32 [ %5488, %5469 ], [ %5467, %5464 ]
  %5491 = fcmp fast olt float %4762, 0.000000e+00
  %5492 = call float @dx.op.unary.f32(i32 6, float %4762)  ; FAbs(value)
  %5493 = fmul fast float %5492, %4763
  %5494 = fmul fast float %5492, %4764
  %5495 = fmul fast float %5492, %4765
  %5496 = select i1 %5491, float %4763, float %5493
  %5497 = select i1 %5491, float %4764, float %5494
  %5498 = select i1 %5491, float %4765, float %5495
  %5499 = fsub fast float 1.000000e+00, %5492
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  %5501 = fmul fast float %5500, %5433
  %5502 = fmul fast float %5500, %5434
  %5503 = fmul fast float %5500, %5435
  %5504 = fadd fast float %5496, %5501
  %5505 = fadd fast float %5497, %5502
  %5506 = fadd fast float %5498, %5503
  br label %5507

; <label>:5507                                    ; preds = %5489, %4760
  %5508 = phi i32 [ %4437, %4760 ], [ %5420, %5489 ]
  %5509 = phi i32 [ %4761, %4760 ], [ %5490, %5489 ]
  %5510 = phi float [ %4763, %4760 ], [ %5504, %5489 ]
  %5511 = phi float [ %4764, %4760 ], [ %5505, %5489 ]
  %5512 = phi float [ %4765, %4760 ], [ %5506, %5489 ]
  %5513 = fmul fast float %3722, %2558
  %5514 = fmul fast float %4439, %3722
  %5515 = fmul fast float %4440, %3722
  %5516 = fmul fast float %4441, %3722
  %5517 = fmul fast float %5510, %2512
  %5518 = fmul fast float %5511, %2513
  %5519 = fmul fast float %5512, %3719
  %5520 = fadd fast float %5517, %2383
  %5521 = fadd fast float %5518, %2384
  %5522 = fadd fast float %5519, %2385
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 3
  %5525 = fcmp fast oeq float %5524, 0.000000e+00
  br i1 %5525, label %7307, label %5526

; <label>:5526                                    ; preds = %5507
  %5527 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5528 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5529 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5531 = extractvalue %dx.types.CBufRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.CBufRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.CBufRet.f32 %5530, 2
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = call float @dx.op.dot3.f32(i32 55, float %5531, float %5532, float %5533, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5538 = select i1 %2609, float %5535, float %5531
  %5539 = select i1 %2609, float %5537, float %5532
  %5540 = select i1 %2609, float %5536, float %5533
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5545 = extractvalue %dx.types.CBufRet.f32 %5541, 3
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = extractvalue %dx.types.CBufRet.f32 %5546, 2
  %5550 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 0
  %5553 = extractvalue %dx.types.CBufRet.f32 %5551, 1
  %5554 = extractvalue %dx.types.CBufRet.f32 %5551, 2
  %5555 = extractvalue %dx.types.CBufRet.f32 %5551, 3
  %5556 = fmul fast float %5542, %153
  %5557 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5543, float %5556)  ; FMad(a,b,c)
  %5558 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5544, float %5557)  ; FMad(a,b,c)
  %5559 = fadd fast float %5558, %5545
  %5560 = fmul fast float %5547, %153
  %5561 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5548, float %5560)  ; FMad(a,b,c)
  %5562 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5549, float %5561)  ; FMad(a,b,c)
  %5563 = fadd fast float %5562, %5550
  %5564 = fmul fast float %5552, %153
  %5565 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5553, float %5564)  ; FMad(a,b,c)
  %5566 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5554, float %5565)  ; FMad(a,b,c)
  %5567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5568 = extractvalue %dx.types.CBufRet.f32 %5567, 0
  %5569 = extractvalue %dx.types.CBufRet.f32 %5567, 1
  %5570 = extractvalue %dx.types.CBufRet.f32 %5567, 3
  %5571 = fmul fast float %5570, %5559
  %5572 = fmul fast float %5570, %5563
  %5573 = fadd fast float %5571, %5568
  %5574 = fadd fast float %5572, %5569
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.CBufRet.f32 %5575, 3
  %5579 = fmul fast float %5578, %5559
  %5580 = fmul fast float %5578, %5563
  %5581 = fadd fast float %5579, %5576
  %5582 = fadd fast float %5580, %5577
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5585 = fsub fast float -0.000000e+00, %5555
  %5586 = fsub fast float %5585, %5566
  %5587 = fadd fast float %5586, %5584
  %5588 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5589 = fmul fast float %5587, %5588
  %5590 = fsub fast float 1.000000e+00, %5589
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5595 = fsub fast float %5581, %5593
  %5596 = fsub fast float %5582, %5594
  %5597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = fsub fast float %5573, %5599
  %5602 = fsub fast float %5574, %5600
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5605 = extractvalue %dx.types.CBufRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.CBufRet.f32 %5604, 1
  %5607 = fsub fast float %5559, %5605
  %5608 = fsub fast float %5563, %5606
  %5609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 0
  %5612 = bitcast float %5611 to i32
  %5613 = lshr i32 %5612, 8
  %5614 = and i32 %5613, 255
  %5615 = uitofp i32 %5614 to float
  %5616 = fptoui float %5615 to i32
  %5617 = and i32 %5616, -2
  %5618 = icmp eq i32 %5617, 10
  br i1 %5618, label %5619, label %5689

; <label>:5619                                    ; preds = %5526
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 0
  %5622 = fcmp fast olt float %5607, 0.000000e+00
  %5623 = extractvalue %dx.types.CBufRet.f32 %5609, 0
  %5624 = extractvalue %dx.types.CBufRet.f32 %5609, 2
  %5625 = select i1 %5622, float %5623, float %5624
  %5626 = fmul fast float %5625, %5607
  %5627 = call float @dx.op.unary.f32(i32 6, float %5626)  ; FAbs(value)
  %5628 = fcmp fast olt float %5608, 0.000000e+00
  %5629 = extractvalue %dx.types.CBufRet.f32 %5609, 1
  %5630 = extractvalue %dx.types.CBufRet.f32 %5609, 3
  %5631 = select i1 %5628, float %5629, float %5630
  %5632 = fmul fast float %5631, %5608
  %5633 = call float @dx.op.unary.f32(i32 6, float %5632)  ; FAbs(value)
  %5634 = call float @dx.op.binary.f32(i32 35, float %5627, float %5633)  ; FMax(a,b)
  %5635 = fsub fast float %5621, %5634
  %5636 = call float @dx.op.unary.f32(i32 7, float %5635)  ; Saturate(value)
  %5637 = fmul fast float %5636, %5591
  %5638 = fcmp fast olt float %5601, 0.000000e+00
  %5639 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5640 = extractvalue %dx.types.CBufRet.f32 %5603, 2
  %5641 = select i1 %5638, float %5639, float %5640
  %5642 = fmul fast float %5641, %5601
  %5643 = call float @dx.op.unary.f32(i32 6, float %5642)  ; FAbs(value)
  %5644 = fcmp fast olt float %5602, 0.000000e+00
  %5645 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5646 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5647 = select i1 %5644, float %5645, float %5646
  %5648 = fmul fast float %5647, %5602
  %5649 = call float @dx.op.unary.f32(i32 6, float %5648)  ; FAbs(value)
  %5650 = call float @dx.op.binary.f32(i32 35, float %5643, float %5649)  ; FMax(a,b)
  %5651 = fsub fast float %5621, %5650
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = fmul fast float %5652, %5591
  %5654 = fcmp fast olt float %5595, 0.000000e+00
  %5655 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5656 = extractvalue %dx.types.CBufRet.f32 %5597, 2
  %5657 = select i1 %5654, float %5655, float %5656
  %5658 = fmul fast float %5657, %5595
  %5659 = call float @dx.op.unary.f32(i32 6, float %5658)  ; FAbs(value)
  %5660 = fcmp fast olt float %5596, 0.000000e+00
  %5661 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5662 = extractvalue %dx.types.CBufRet.f32 %5597, 3
  %5663 = select i1 %5660, float %5661, float %5662
  %5664 = fmul fast float %5663, %5596
  %5665 = call float @dx.op.unary.f32(i32 6, float %5664)  ; FAbs(value)
  %5666 = call float @dx.op.binary.f32(i32 35, float %5659, float %5665)  ; FMax(a,b)
  %5667 = fsub fast float %5621, %5666
  %5668 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5669 = fmul fast float %5668, %5591
  %5670 = fadd fast float %5637, 1.000000e+00
  %5671 = fadd fast float %5653, 1.000000e+00
  %5672 = fadd fast float %5669, 1.000000e+00
  %5673 = fmul fast float %5670, 5.000000e-01
  %5674 = fmul fast float %5671, 5.000000e-01
  %5675 = fmul fast float %5672, 5.000000e-01
  %5676 = call float @dx.op.unary.f32(i32 7, float %5673)  ; Saturate(value)
  %5677 = call float @dx.op.unary.f32(i32 7, float %5674)  ; Saturate(value)
  %5678 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5679 = fmul fast float %5676, 1.023000e+03
  %5680 = fmul fast float %5677, 1.023000e+03
  %5681 = fmul fast float %5678, 1.023000e+03
  %5682 = fptoui float %5679 to i32
  %5683 = fptoui float %5680 to i32
  %5684 = fptoui float %5681 to i32
  %5685 = shl i32 %5683, 10
  %5686 = or i32 %5685, %5682
  %5687 = shl i32 %5684, 20
  %5688 = or i32 %5686, %5687
  br label %5689

; <label>:5689                                    ; preds = %5619, %5526
  %5690 = phi i32 [ %5688, %5619 ], [ %5509, %5526 ]
  %5691 = fcmp fast olt float %5524, 0.000000e+00
  br i1 %5691, label %7003, label %5692

; <label>:5692                                    ; preds = %5689
  %5693 = fadd fast float %5566, %5555
  %5694 = fsub fast float %5584, %5693
  %5695 = fmul fast float %5694, %5588
  %5696 = fsub fast float 1.000000e+00, %5695
  %5697 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5575, 2
  %5699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5700 = extractvalue %dx.types.CBufRet.f32 %5699, 2
  %5701 = fadd fast float %5700, %5698
  %5702 = fcmp fast ogt float %5701, 0.000000e+00
  br i1 %5702, label %5703, label %5722

; <label>:5703                                    ; preds = %5692
  %5704 = fcmp fast olt float %5595, 0.000000e+00
  %5705 = fcmp fast olt float %5596, 0.000000e+00
  %5706 = extractvalue %dx.types.CBufRet.f32 %5597, 0
  %5707 = extractvalue %dx.types.CBufRet.f32 %5597, 1
  %5708 = extractvalue %dx.types.CBufRet.f32 %5597, 2
  %5709 = extractvalue %dx.types.CBufRet.f32 %5597, 3
  %5710 = select i1 %5704, float %5706, float %5708
  %5711 = select i1 %5705, float %5707, float %5709
  %5712 = fmul fast float %5710, %5595
  %5713 = fmul fast float %5711, %5596
  %5714 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5715 = call float @dx.op.unary.f32(i32 6, float %5713)  ; FAbs(value)
  %5716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5716, 0
  %5718 = call float @dx.op.binary.f32(i32 35, float %5714, float %5715)  ; FMax(a,b)
  %5719 = fsub fast float %5717, %5718
  %5720 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5721 = fmul fast float %5720, %5697
  br label %5722

; <label>:5722                                    ; preds = %5703, %5692
  %5723 = phi float [ %5721, %5703 ], [ 0.000000e+00, %5692 ]
  %5724 = extractvalue %dx.types.CBufRet.f32 %5567, 2
  %5725 = extractvalue %dx.types.CBufRet.f32 %5699, 1
  %5726 = fadd fast float %5725, %5724
  %5727 = fcmp fast ogt float %5726, 0.000000e+00
  br i1 %5727, label %5728, label %5747

; <label>:5728                                    ; preds = %5722
  %5729 = fcmp fast olt float %5601, 0.000000e+00
  %5730 = fcmp fast olt float %5602, 0.000000e+00
  %5731 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5732 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5733 = extractvalue %dx.types.CBufRet.f32 %5603, 2
  %5734 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5735 = select i1 %5729, float %5731, float %5733
  %5736 = select i1 %5730, float %5732, float %5734
  %5737 = fmul fast float %5735, %5601
  %5738 = fmul fast float %5736, %5602
  %5739 = call float @dx.op.unary.f32(i32 6, float %5737)  ; FAbs(value)
  %5740 = call float @dx.op.unary.f32(i32 6, float %5738)  ; FAbs(value)
  %5741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5742 = extractvalue %dx.types.CBufRet.f32 %5741, 0
  %5743 = call float @dx.op.binary.f32(i32 35, float %5739, float %5740)  ; FMax(a,b)
  %5744 = fsub fast float %5742, %5743
  %5745 = call float @dx.op.unary.f32(i32 7, float %5744)  ; Saturate(value)
  %5746 = fmul fast float %5745, %5697
  br label %5747

; <label>:5747                                    ; preds = %5728, %5722
  %5748 = phi float [ %5746, %5728 ], [ 0.000000e+00, %5722 ]
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5751 = call float @dx.op.unary.f32(i32 7, float %5750)  ; Saturate(value)
  %5752 = fcmp fast olt float %5607, 0.000000e+00
  %5753 = fcmp fast olt float %5608, 0.000000e+00
  %5754 = extractvalue %dx.types.CBufRet.f32 %5609, 0
  %5755 = extractvalue %dx.types.CBufRet.f32 %5609, 1
  %5756 = extractvalue %dx.types.CBufRet.f32 %5609, 2
  %5757 = extractvalue %dx.types.CBufRet.f32 %5609, 3
  %5758 = select i1 %5752, float %5754, float %5756
  %5759 = select i1 %5753, float %5755, float %5757
  %5760 = fmul fast float %5758, %5607
  %5761 = fmul fast float %5759, %5608
  %5762 = call float @dx.op.unary.f32(i32 6, float %5760)  ; FAbs(value)
  %5763 = call float @dx.op.unary.f32(i32 6, float %5761)  ; FAbs(value)
  %5764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5765 = extractvalue %dx.types.CBufRet.f32 %5764, 0
  %5766 = call float @dx.op.binary.f32(i32 35, float %5762, float %5763)  ; FMax(a,b)
  %5767 = fsub fast float %5765, %5766
  %5768 = call float @dx.op.unary.f32(i32 7, float %5767)  ; Saturate(value)
  %5769 = call float @dx.op.binary.f32(i32 36, float %5768, float %5751)  ; FMin(a,b)
  %5770 = fmul fast float %5769, %5697
  %5771 = fsub fast float %5748, %5770
  %5772 = fsub fast float %5723, %5748
  %5773 = fsub fast float %5772, %5770
  %5774 = call float @dx.op.binary.f32(i32 35, float %5748, float %5723)  ; FMax(a,b)
  %5775 = call float @dx.op.binary.f32(i32 35, float %5770, float %5774)  ; FMax(a,b)
  %5776 = fcmp fast olt float %5775, 1.000000e+00
  br i1 %5776, label %5777, label %6448, !dx.controlflow.hints !133

; <label>:5777                                    ; preds = %5747
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = fcmp fast une float %5779, 0.000000e+00
  br i1 %5780, label %5781, label %6448, !dx.controlflow.hints !134

; <label>:5781                                    ; preds = %5777
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5788 = extractvalue %dx.types.CBufRet.f32 %5787, 0
  %5789 = extractvalue %dx.types.CBufRet.f32 %5787, 1
  %5790 = extractvalue %dx.types.CBufRet.f32 %5787, 2
  %5791 = extractvalue %dx.types.CBufRet.f32 %5787, 3
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5797 = fmul fast float %5783, %153
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5784, float %5797)  ; FMad(a,b,c)
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5785, float %5798)  ; FMad(a,b,c)
  %5800 = fadd fast float %5799, %5786
  %5801 = fmul fast float %5788, %153
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5789, float %5801)  ; FMad(a,b,c)
  %5803 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5790, float %5802)  ; FMad(a,b,c)
  %5804 = fadd fast float %5803, %5791
  %5805 = fmul fast float %5793, %153
  %5806 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5794, float %5805)  ; FMad(a,b,c)
  %5807 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5795, float %5806)  ; FMad(a,b,c)
  %5808 = fadd fast float %5807, %5796
  %5809 = fcmp fast oge float %5800, 1.000000e+00
  %5810 = fcmp fast oge float %5804, 1.000000e+00
  %5811 = or i1 %5809, %5810
  %5812 = fcmp fast olt float %5800, 0.000000e+00
  %5813 = fcmp fast olt float %5804, 0.000000e+00
  %5814 = or i1 %5812, %5813
  %5815 = or i1 %5811, %5814
  br i1 %5815, label %6448, label %5816, !dx.controlflow.hints !135

; <label>:5816                                    ; preds = %5781
  %5817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5818 = extractvalue %dx.types.CBufRet.f32 %5817, 0
  %5819 = extractvalue %dx.types.CBufRet.f32 %5817, 1
  %5820 = extractvalue %dx.types.CBufRet.f32 %5817, 2
  %5821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5822 = extractvalue %dx.types.CBufRet.f32 %5821, 1
  %5823 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5824 = extractvalue %dx.types.CBufRet.i32 %5823, 2
  %5825 = uitofp i32 %5824 to float
  %5826 = extractvalue %dx.types.CBufRet.i32 %5823, 3
  %5827 = uitofp i32 %5826 to float
  %5828 = extractvalue %dx.types.CBufRet.f32 %5817, 3
  %5829 = fmul fast float %5828, 2.000000e+00
  %5830 = fsub fast float %5800, %5818
  %5831 = fsub fast float %5804, %5819
  %5832 = fmul fast float %5829, %5830
  %5833 = fmul fast float %5829, %5831
  %5834 = fdiv fast float 1.000000e+00, %5529
  %5835 = fmul fast float %5833, %5834
  %5836 = call float @dx.op.unary.f32(i32 6, float %5835)  ; FAbs(value)
  %5837 = fmul fast float %5820, %155
  %5838 = fmul fast float %5837, %5829
  %5839 = call float @dx.op.unary.f32(i32 6, float %5838)  ; FAbs(value)
  %5840 = call float @dx.op.unary.f32(i32 6, float %5832)  ; FAbs(value)
  %5841 = call float @dx.op.binary.f32(i32 35, float %5839, float %5836)  ; FMax(a,b)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5840, float %5841)  ; FMax(a,b)
  %5843 = fmul fast float %5842, 2.000000e+00
  %5844 = call float @dx.op.unary.f32(i32 23, float %5843)  ; Log(value)
  %5845 = call float @dx.op.binary.f32(i32 35, float %5844, float %5825)  ; FMax(a,b)
  %5846 = call float @dx.op.unary.f32(i32 22, float %5845)  ; Frc(value)
  %5847 = fadd fast float %5846, 0xBFEA666660000000
  %5848 = fmul fast float %5847, 8.000000e+00
  %5849 = call float @dx.op.unary.f32(i32 7, float %5848)  ; Saturate(value)
  %5850 = call float @dx.op.unary.f32(i32 27, float %5845)  ; Round_ni(value)
  %5851 = fadd fast float %5850, %5849
  %5852 = call float @dx.op.binary.f32(i32 36, float %5851, float %5827)  ; FMin(a,b)
  %5853 = call float @dx.op.unary.f32(i32 27, float %5852)  ; Round_ni(value)
  %5854 = fsub fast float -0.000000e+00, %5853
  %5855 = call float @dx.op.unary.f32(i32 21, float %5854)  ; Exp(value)
  %5856 = fmul fast float %5855, %5829
  %5857 = fmul fast float %5856, %5800
  %5858 = fmul fast float %5856, %5804
  %5859 = fmul fast float %5857, 5.000000e-01
  %5860 = fmul fast float %5858, 5.000000e-01
  %5861 = fadd fast float %5859, 5.000000e-01
  %5862 = fadd fast float %5860, 5.000000e-01
  %5863 = fmul fast float %5857, 2.500000e-01
  %5864 = fmul fast float %5858, 2.500000e-01
  %5865 = fadd fast float %5863, 5.000000e-01
  %5866 = fadd fast float %5864, 5.000000e-01
  %5867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5868 = extractvalue %dx.types.ResRet.i32 %5867, 0
  %5869 = and i32 %5868, 536870911
  %5870 = lshr i32 %5869, 9
  %5871 = uitofp i32 %5870 to float
  %5872 = fmul fast float %5871, %5800
  %5873 = fmul fast float %5871, %5804
  %5874 = call float @dx.op.unary.f32(i32 22, float %5872)  ; Frc(value)
  %5875 = call float @dx.op.unary.f32(i32 22, float %5873)  ; Frc(value)
  %5876 = call float @dx.op.unary.f32(i32 22, float %5849)  ; Frc(value)
  %5877 = fcmp fast une float %5876, 0.000000e+00
  br i1 %5877, label %5878, label %5976, !dx.controlflow.hints !136

; <label>:5878                                    ; preds = %5816
  %5879 = call float @dx.op.unary.f32(i32 21, float %5850)  ; Exp(value)
  %5880 = fmul fast float %5879, 1.953125e-03
  %5881 = fcmp fast olt float %5874, %5880
  %5882 = fcmp fast olt float %5875, %5880
  %5883 = or i1 %5881, %5882
  %5884 = fsub fast float 1.000000e+00, %5880
  %5885 = fcmp fast ogt float %5874, %5884
  %5886 = fcmp fast ogt float %5875, %5884
  %5887 = or i1 %5885, %5886
  %5888 = or i1 %5883, %5887
  br i1 %5888, label %5889, label %6055, !dx.controlflow.hints !137

; <label>:5889                                    ; preds = %5878
  %5890 = fmul fast float %5822, 5.000000e-01
  %5891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.i32 %5891, 0
  %5893 = fmul fast float %5804, 3.530000e+02
  %5894 = uitofp i32 %5869 to float
  %5895 = fmul fast float %5893, %5894
  %5896 = fmul fast float %5800, 6.130000e+02
  %5897 = fadd fast float %5895, %5896
  %5898 = fptoui float %5897 to i32
  %5899 = add i32 %5892, %5898
  %5900 = mul i32 %5899, -63
  %5901 = lshr i32 %5900, 17
  %5902 = xor i32 %5901, %5900
  %5903 = mul i32 %5902, -511
  %5904 = mul i32 %5902, -8176
  %5905 = xor i32 %5903, %5904
  %5906 = mul i32 %5905, -7
  %5907 = mul i32 %5905, -7168
  %5908 = xor i32 %5906, %5907
  %5909 = lshr i32 %5908, 15
  %5910 = xor i32 %5909, %5906
  %5911 = and i32 %5910, 15
  %5912 = mul i32 %5911, 2
  %5913 = add i32 0, %5912
  %5914 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5913
  %5915 = load float, float* %5914, align 4
  %5916 = mul i32 %5911, 2
  %5917 = add i32 1, %5916
  %5918 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5917
  %5919 = load float, float* %5918, align 4
  %5920 = fmul fast float %5804, 2.770000e+02
  %5921 = fmul fast float %5920, %5894
  %5922 = fmul fast float %5800, 5.990000e+02
  %5923 = fadd fast float %5921, %5922
  %5924 = fptoui float %5923 to i32
  %5925 = mul i32 %5924, -63
  %5926 = lshr i32 %5925, 17
  %5927 = xor i32 %5926, %5925
  %5928 = mul i32 %5927, -511
  %5929 = mul i32 %5927, -8176
  %5930 = xor i32 %5928, %5929
  %5931 = mul i32 %5930, -7
  %5932 = mul i32 %5930, -7168
  %5933 = xor i32 %5931, %5932
  %5934 = lshr i32 %5933, 15
  %5935 = xor i32 %5934, %5931
  %5936 = and i32 %5935, 63
  %5937 = mul i32 %5936, 2
  %5938 = add i32 0, %5937
  %5939 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5938
  %5940 = load float, float* %5939, align 4
  %5941 = mul i32 %5936, 2
  %5942 = add i32 1, %5941
  %5943 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5942
  %5944 = load float, float* %5943, align 4
  %5945 = call float @dx.op.dot2.f32(i32 54, float %5915, float %5919, float %5940, float %5944)  ; Dot2(ax,ay,bx,by)
  %5946 = fsub fast float -0.000000e+00, %5940
  %5947 = call float @dx.op.dot2.f32(i32 54, float %5915, float %5919, float %5946, float %5944)  ; Dot2(ax,ay,bx,by)
  %5948 = fmul fast float %5945, %5890
  %5949 = fmul fast float %5947, %5890
  %5950 = fdiv fast float 2.000000e+00, %5856
  %5951 = fmul fast float %5879, 9.765625e-04
  %5952 = fcmp fast olt float %5874, %5951
  %5953 = fcmp fast olt float %5875, %5951
  %5954 = or i1 %5952, %5953
  %5955 = fsub fast float 1.000000e+00, %5951
  %5956 = fcmp fast ogt float %5874, %5955
  %5957 = fcmp fast ogt float %5875, %5955
  %5958 = or i1 %5956, %5957
  %5959 = or i1 %5954, %5958
  %5960 = fmul fast float %5948, 2.000000e+00
  br i1 %5959, label %5961, label %5965

; <label>:5961                                    ; preds = %5889
  %5962 = fmul fast float %5949, 2.000000e+00
  %5963 = fadd fast float %5960, %5861
  %5964 = fadd fast float %5962, %5862
  br label %5965

; <label>:5965                                    ; preds = %5961, %5889
  %5966 = phi float [ %5963, %5961 ], [ %5861, %5889 ]
  %5967 = phi float [ %5964, %5961 ], [ %5862, %5889 ]
  %5968 = phi i32 [ 3, %5961 ], [ 2, %5889 ]
  %5969 = fadd fast float %5948, %5865
  %5970 = fadd fast float %5949, %5866
  %5971 = fmul fast float %5960, %5950
  %5972 = fmul fast float %5950, 2.000000e+00
  %5973 = fmul fast float %5972, %5949
  %5974 = fadd fast float %5971, %5800
  %5975 = fadd fast float %5973, %5804
  br label %6055

; <label>:5976                                    ; preds = %5816
  %5977 = call float @dx.op.unary.f32(i32 21, float %5853)  ; Exp(value)
  %5978 = fmul fast float %5977, 9.765625e-04
  %5979 = fcmp fast olt float %5874, %5978
  %5980 = fcmp fast olt float %5875, %5978
  %5981 = or i1 %5979, %5980
  %5982 = fsub fast float 1.000000e+00, %5978
  %5983 = fcmp fast ogt float %5874, %5982
  %5984 = fcmp fast ogt float %5875, %5982
  %5985 = or i1 %5983, %5984
  %5986 = or i1 %5981, %5985
  br i1 %5986, label %5987, label %6055, !dx.controlflow.hints !138

; <label>:5987                                    ; preds = %5976
  %5988 = fmul fast float %5822, 5.000000e-01
  %5989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.i32 %5989, 0
  %5991 = fmul fast float %5804, 3.530000e+02
  %5992 = uitofp i32 %5869 to float
  %5993 = fmul fast float %5991, %5992
  %5994 = fmul fast float %5800, 6.130000e+02
  %5995 = fadd fast float %5993, %5994
  %5996 = fptoui float %5995 to i32
  %5997 = add i32 %5990, %5996
  %5998 = mul i32 %5997, -63
  %5999 = lshr i32 %5998, 17
  %6000 = xor i32 %5999, %5998
  %6001 = mul i32 %6000, -511
  %6002 = mul i32 %6000, -8176
  %6003 = xor i32 %6001, %6002
  %6004 = mul i32 %6003, -7
  %6005 = mul i32 %6003, -7168
  %6006 = xor i32 %6004, %6005
  %6007 = lshr i32 %6006, 15
  %6008 = xor i32 %6007, %6004
  %6009 = and i32 %6008, 15
  %6010 = mul i32 %6009, 2
  %6011 = add i32 0, %6010
  %6012 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6011
  %6013 = load float, float* %6012, align 4
  %6014 = mul i32 %6009, 2
  %6015 = add i32 1, %6014
  %6016 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %6015
  %6017 = load float, float* %6016, align 4
  %6018 = fmul fast float %5804, 2.770000e+02
  %6019 = fmul fast float %6018, %5992
  %6020 = fmul fast float %5800, 5.990000e+02
  %6021 = fadd fast float %6019, %6020
  %6022 = fptoui float %6021 to i32
  %6023 = mul i32 %6022, -63
  %6024 = lshr i32 %6023, 17
  %6025 = xor i32 %6024, %6023
  %6026 = mul i32 %6025, -511
  %6027 = mul i32 %6025, -8176
  %6028 = xor i32 %6026, %6027
  %6029 = mul i32 %6028, -7
  %6030 = mul i32 %6028, -7168
  %6031 = xor i32 %6029, %6030
  %6032 = lshr i32 %6031, 15
  %6033 = xor i32 %6032, %6029
  %6034 = and i32 %6033, 63
  %6035 = mul i32 %6034, 2
  %6036 = add i32 0, %6035
  %6037 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6036
  %6038 = load float, float* %6037, align 4
  %6039 = mul i32 %6034, 2
  %6040 = add i32 1, %6039
  %6041 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6040
  %6042 = load float, float* %6041, align 4
  %6043 = call float @dx.op.dot2.f32(i32 54, float %6013, float %6017, float %6038, float %6042)  ; Dot2(ax,ay,bx,by)
  %6044 = fsub fast float -0.000000e+00, %6038
  %6045 = call float @dx.op.dot2.f32(i32 54, float %6013, float %6017, float %6044, float %6042)  ; Dot2(ax,ay,bx,by)
  %6046 = fmul fast float %6043, %5988
  %6047 = fmul fast float %6045, %5988
  %6048 = fadd fast float %6046, %5861
  %6049 = fadd fast float %6047, %5862
  %6050 = fdiv fast float 2.000000e+00, %5856
  %6051 = fmul fast float %6050, %6046
  %6052 = fmul fast float %6047, %6050
  %6053 = fadd fast float %6051, %5800
  %6054 = fadd fast float %6052, %5804
  br label %6055

; <label>:6055                                    ; preds = %5987, %5976, %5965, %5878
  %6056 = phi float [ %5969, %5965 ], [ %5865, %5878 ], [ %5865, %5987 ], [ %5865, %5976 ]
  %6057 = phi float [ %5970, %5965 ], [ %5866, %5878 ], [ %5866, %5987 ], [ %5866, %5976 ]
  %6058 = phi float [ %5966, %5965 ], [ %5861, %5878 ], [ %6048, %5987 ], [ %5861, %5976 ]
  %6059 = phi float [ %5967, %5965 ], [ %5862, %5878 ], [ %6049, %5987 ], [ %5862, %5976 ]
  %6060 = phi i32 [ %5968, %5965 ], [ 0, %5878 ], [ 1, %5987 ], [ 0, %5976 ]
  %6061 = phi float [ %5974, %5965 ], [ %5800, %5878 ], [ %6053, %5987 ], [ %5800, %5976 ]
  %6062 = phi float [ %5975, %5965 ], [ %5804, %5878 ], [ %6054, %5987 ], [ %5804, %5976 ]
  %6063 = fsub fast float %5827, %5825
  %6064 = fptoui float %6063 to i32
  %6065 = add i32 %6064, 320
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %6065)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6068 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6069 = fcmp fast une float %5852, %5827
  %6070 = fsub fast float %6061, %6067
  %6071 = fsub fast float %6062, %6068
  %6072 = call float @dx.op.unary.f32(i32 6, float %6070)  ; FAbs(value)
  %6073 = call float @dx.op.unary.f32(i32 6, float %6071)  ; FAbs(value)
  %6074 = fmul fast float %6072, %5856
  %6075 = fmul fast float %6073, %5856
  %6076 = fcmp fast olt float %6074, 1.000000e+00
  %6077 = fcmp fast olt float %6075, 1.000000e+00
  %6078 = and i1 %6076, %6077
  %6079 = or i1 %6069, %6078
  br i1 %6079, label %6080, label %6448, !dx.controlflow.hints !139

; <label>:6080                                    ; preds = %6055
  %6081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.i32 %6081, 2
  %6083 = sitofp i32 %6082 to float
  %6084 = fsub fast float %5852, %6083
  %6085 = call float @dx.op.unary.f32(i32 27, float %6084)  ; Round_ni(value)
  %6086 = call float @dx.op.unary.f32(i32 22, float %5852)  ; Frc(value)
  %6087 = icmp eq i32 %6060, 0
  %6088 = call float @dx.op.unary.f32(i32 22, float %6058)  ; Frc(value)
  %6089 = call float @dx.op.unary.f32(i32 22, float %6059)  ; Frc(value)
  br i1 %6087, label %6160, label %6090, !dx.controlflow.hints !140

; <label>:6090                                    ; preds = %6080
  %6091 = and i32 %6060, 1
  %6092 = icmp eq i32 %6091, 0
  br i1 %6092, label %6106, label %6093, !dx.controlflow.hints !141

; <label>:6093                                    ; preds = %6090
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = fmul fast float %6088, %6095
  %6097 = fmul fast float %6089, %6095
  %6098 = fptoui float %6096 to i32
  %6099 = fptoui float %6097 to i32
  %6100 = fptoui float %6085 to i32
  %6101 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %6098, i32 %6099, i32 %6100, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6102 = extractvalue %dx.types.ResRet.f32 %6101, 0
  %6103 = extractvalue %dx.types.ResRet.f32 %6101, 1
  %6104 = extractvalue %dx.types.ResRet.f32 %6101, 2
  %6105 = extractvalue %dx.types.ResRet.f32 %6101, 3
  br label %6112

; <label>:6106                                    ; preds = %6090
  %6107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %6088, float %6089, float %6085, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6108 = extractvalue %dx.types.ResRet.f32 %6107, 0
  %6109 = extractvalue %dx.types.ResRet.f32 %6107, 1
  %6110 = extractvalue %dx.types.ResRet.f32 %6107, 2
  %6111 = extractvalue %dx.types.ResRet.f32 %6107, 3
  br label %6112

; <label>:6112                                    ; preds = %6106, %6093
  %6113 = phi float [ %6102, %6093 ], [ %6108, %6106 ]
  %6114 = phi float [ %6103, %6093 ], [ %6109, %6106 ]
  %6115 = phi float [ %6104, %6093 ], [ %6110, %6106 ]
  %6116 = phi float [ %6105, %6093 ], [ %6111, %6106 ]
  %6117 = fcmp fast ogt float %6086, 0.000000e+00
  br i1 %6117, label %6118, label %6188

; <label>:6118                                    ; preds = %6112
  %6119 = and i32 %6060, 2
  %6120 = icmp eq i32 %6119, 0
  %6121 = fadd fast float %6085, 1.000000e+00
  %6122 = call float @dx.op.unary.f32(i32 22, float %6056)  ; Frc(value)
  %6123 = call float @dx.op.unary.f32(i32 22, float %6057)  ; Frc(value)
  br i1 %6120, label %6137, label %6124, !dx.controlflow.hints !142

; <label>:6124                                    ; preds = %6118
  %6125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6126 = extractvalue %dx.types.CBufRet.f32 %6125, 0
  %6127 = fmul fast float %6122, %6126
  %6128 = fmul fast float %6123, %6126
  %6129 = fptoui float %6127 to i32
  %6130 = fptoui float %6128 to i32
  %6131 = fptoui float %6121 to i32
  %6132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %6129, i32 %6130, i32 %6131, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6133 = extractvalue %dx.types.ResRet.f32 %6132, 0
  %6134 = extractvalue %dx.types.ResRet.f32 %6132, 1
  %6135 = extractvalue %dx.types.ResRet.f32 %6132, 2
  %6136 = extractvalue %dx.types.ResRet.f32 %6132, 3
  br label %6143

; <label>:6137                                    ; preds = %6118
  %6138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %6122, float %6123, float %6121, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6139 = extractvalue %dx.types.ResRet.f32 %6138, 0
  %6140 = extractvalue %dx.types.ResRet.f32 %6138, 1
  %6141 = extractvalue %dx.types.ResRet.f32 %6138, 2
  %6142 = extractvalue %dx.types.ResRet.f32 %6138, 3
  br label %6143

; <label>:6143                                    ; preds = %6137, %6124
  %6144 = phi float [ %6133, %6124 ], [ %6139, %6137 ]
  %6145 = phi float [ %6134, %6124 ], [ %6140, %6137 ]
  %6146 = phi float [ %6135, %6124 ], [ %6141, %6137 ]
  %6147 = phi float [ %6136, %6124 ], [ %6142, %6137 ]
  %6148 = fsub fast float %6144, %6113
  %6149 = fsub fast float %6145, %6114
  %6150 = fsub fast float %6146, %6115
  %6151 = fsub fast float %6147, %6116
  %6152 = fmul fast float %6148, %6086
  %6153 = fmul fast float %6149, %6086
  %6154 = fmul fast float %6150, %6086
  %6155 = fmul fast float %6151, %6086
  %6156 = fadd fast float %6152, %6113
  %6157 = fadd fast float %6153, %6114
  %6158 = fadd fast float %6154, %6115
  %6159 = fadd fast float %6155, %6116
  br label %6188

; <label>:6160                                    ; preds = %6080
  %6161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %6088, float %6089, float %6085, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6162 = extractvalue %dx.types.ResRet.f32 %6161, 0
  %6163 = extractvalue %dx.types.ResRet.f32 %6161, 1
  %6164 = extractvalue %dx.types.ResRet.f32 %6161, 2
  %6165 = extractvalue %dx.types.ResRet.f32 %6161, 3
  %6166 = fcmp fast ogt float %6086, 0.000000e+00
  br i1 %6166, label %6167, label %6188, !dx.controlflow.hints !143

; <label>:6167                                    ; preds = %6160
  %6168 = fadd fast float %6085, 1.000000e+00
  %6169 = call float @dx.op.unary.f32(i32 22, float %6056)  ; Frc(value)
  %6170 = call float @dx.op.unary.f32(i32 22, float %6057)  ; Frc(value)
  %6171 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %6169, float %6170, float %6168, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6172 = extractvalue %dx.types.ResRet.f32 %6171, 0
  %6173 = extractvalue %dx.types.ResRet.f32 %6171, 1
  %6174 = extractvalue %dx.types.ResRet.f32 %6171, 2
  %6175 = extractvalue %dx.types.ResRet.f32 %6171, 3
  %6176 = fsub fast float %6172, %6162
  %6177 = fsub fast float %6173, %6163
  %6178 = fsub fast float %6174, %6164
  %6179 = fsub fast float %6175, %6165
  %6180 = fmul fast float %6176, %6086
  %6181 = fmul fast float %6177, %6086
  %6182 = fmul fast float %6178, %6086
  %6183 = fmul fast float %6179, %6086
  %6184 = fadd fast float %6180, %6162
  %6185 = fadd fast float %6181, %6163
  %6186 = fadd fast float %6182, %6164
  %6187 = fadd fast float %6183, %6165
  br label %6188

; <label>:6188                                    ; preds = %6167, %6160, %6143, %6112
  %6189 = phi float [ %6156, %6143 ], [ %6113, %6112 ], [ %6184, %6167 ], [ %6162, %6160 ]
  %6190 = phi float [ %6157, %6143 ], [ %6114, %6112 ], [ %6185, %6167 ], [ %6163, %6160 ]
  %6191 = phi float [ %6158, %6143 ], [ %6115, %6112 ], [ %6186, %6167 ], [ %6164, %6160 ]
  %6192 = phi float [ %6159, %6143 ], [ %6116, %6112 ], [ %6187, %6167 ], [ %6165, %6160 ]
  %6193 = fadd fast float %6189, -5.000000e-01
  %6194 = fadd fast float %6191, -5.000000e-01
  %6195 = fmul fast float %6193, 0xBFD5555560000000
  %6196 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6194, float %6195)  ; FMad(a,b,c)
  %6197 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6190, float 0.000000e+00)  ; FMad(a,b,c)
  %6198 = fadd fast float %6197, %6192
  %6199 = fmul fast float %6193, -7.500000e-01
  %6200 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6194, float %6199)  ; FMad(a,b,c)
  %6201 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6190, float 0.000000e+00)  ; FMad(a,b,c)
  %6202 = fadd fast float %6201, %6192
  %6203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6204 = extractvalue %dx.types.CBufRet.f32 %6203, 0
  %6205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6206 = extractvalue %dx.types.CBufRet.f32 %6205, 0
  %6207 = extractvalue %dx.types.CBufRet.f32 %6205, 1
  %6208 = extractvalue %dx.types.CBufRet.f32 %6205, 2
  %6209 = extractvalue %dx.types.CBufRet.f32 %6205, 3
  %6210 = fsub fast float %6206, %6196
  %6211 = fsub fast float %6207, %6198
  %6212 = fsub fast float %6208, %6200
  %6213 = fsub fast float %6209, %6202
  %6214 = fmul fast float %6210, %6204
  %6215 = fmul fast float %6211, %6204
  %6216 = fmul fast float %6212, %6204
  %6217 = fmul fast float %6213, %6204
  %6218 = fadd fast float %6214, %6196
  %6219 = fadd fast float %6215, %6198
  %6220 = fadd fast float %6216, %6200
  %6221 = fadd fast float %6217, %6202
  %6222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6223 = extractvalue %dx.types.ResRet.i32 %6222, 0
  %6224 = and i32 %6223, 536870911
  %6225 = uitofp i32 %6224 to float
  %6226 = fmul fast float %6225, %6061
  %6227 = fmul fast float %6225, %6062
  %6228 = fptoui float %6226 to i32
  %6229 = fptoui float %6227 to i32
  %6230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6231 = extractvalue %dx.types.ResRet.i32 %6230, 0
  %6232 = and i32 %6231, 31
  %6233 = lshr i32 %6228, %6232
  %6234 = lshr i32 %6229, %6232
  %6235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6236 = extractvalue %dx.types.ResRet.i32 %6235, 0
  %6237 = and i32 %6236, 31
  %6238 = shl i32 1, %6237
  %6239 = call i32 @dx.op.binary.i32(i32 40, i32 %6238, i32 4)  ; UMin(a,b)
  %6240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.i32 %6240, 0
  %6242 = extractvalue %dx.types.ResRet.i32 %6240, 1
  %6243 = icmp eq i32 %6239, 0
  br i1 %6243, label %6285, label %6244

; <label>:6244                                    ; preds = %6188
  br label %6245

; <label>:6245                                    ; preds = %6273, %6244
  %6246 = phi i32 [ %6276, %6273 ], [ 0, %6244 ]
  %6247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6248 = extractvalue %dx.types.ResRet.i32 %6247, 0
  %6249 = lshr i32 %6248, 16
  %6250 = and i32 %6249, 31
  %6251 = shl i32 %6234, %6250
  %6252 = add i32 %6251, %6233
  %6253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6254 = extractvalue %dx.types.ResRet.i32 %6253, 0
  %6255 = and i32 %6254, 31
  %6256 = shl i32 %6252, %6255
  %6257 = add i32 %6256, %6246
  %6258 = shl i32 %6257, 2
  %6259 = add i32 %6258, 32
  %6260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6259, i32 undef)  ; BufferLoad(srv,index,wot)
  %6261 = extractvalue %dx.types.ResRet.i32 %6260, 0
  %6262 = icmp slt i32 %6261, 0
  %6263 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6246
  %6264 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6246
  %6265 = bitcast float* %6263 to i32*
  %6266 = bitcast float* %6264 to i32*
  br i1 %6262, label %6267, label %6273

; <label>:6267                                    ; preds = %6245
  %6268 = and i32 %6261, 1073741823
  %6269 = add nuw nsw i32 %6268, 20
  %6270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6269, i32 undef)  ; BufferLoad(srv,index,wot)
  %6271 = extractvalue %dx.types.ResRet.i32 %6270, 0
  %6272 = extractvalue %dx.types.ResRet.i32 %6270, 1
  br label %6273

; <label>:6273                                    ; preds = %6267, %6245
  %6274 = phi i32 [ %6271, %6267 ], [ %6241, %6245 ]
  %6275 = phi i32 [ %6272, %6267 ], [ %6242, %6245 ]
  store i32 %6274, i32* %6265, align 4
  store i32 %6275, i32* %6266, align 4
  %6276 = add nuw i32 %6246, 1
  %6277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.i32 %6277, 2
  %6279 = icmp eq i32 %6278, 0
  %6280 = icmp ugt i32 %6261, -1073741825
  %6281 = and i1 %6280, %6279
  %6282 = icmp ult i32 %6276, %6239
  %6283 = and i1 %6281, %6282
  br i1 %6283, label %6245, label %6284

; <label>:6284                                    ; preds = %6273
  br label %6285

; <label>:6285                                    ; preds = %6284, %6188
  %6286 = phi i32 [ 0, %6188 ], [ %6276, %6284 ]
  %6287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6288 = extractvalue %dx.types.CBufRet.f32 %6287, 2
  %6289 = fptoui float %6288 to i32
  %6290 = icmp eq i32 %6289, 0
  br i1 %6290, label %6342, label %6291

; <label>:6291                                    ; preds = %6285
  br label %6292

; <label>:6292                                    ; preds = %6337, %6291
  %6293 = phi i32 [ %6338, %6337 ], [ %6286, %6291 ]
  %6294 = phi i32 [ %6339, %6337 ], [ 0, %6291 ]
  %6295 = lshr i32 %6294, 2
  %6296 = and i32 %6294, 3
  %6297 = add nuw nsw i32 %6295, 83
  %6298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 %6297)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.i32 %6298, 0
  %6300 = extractvalue %dx.types.CBufRet.i32 %6298, 1
  %6301 = extractvalue %dx.types.CBufRet.i32 %6298, 2
  %6302 = extractvalue %dx.types.CBufRet.i32 %6298, 3
  %6303 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 0
  store i32 %6299, i32* %6303, align 4
  %6304 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 1
  store i32 %6300, i32* %6304, align 4
  %6305 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 2
  store i32 %6301, i32* %6305, align 4
  %6306 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 3
  store i32 %6302, i32* %6306, align 4
  %6307 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 %6296
  %6308 = load i32, i32* %6307, align 4, !tbaa !144, !noalias !146
  %6309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6310 = extractvalue %dx.types.ResRet.i32 %6309, 0
  %6311 = lshr i32 %6310, 16
  %6312 = and i32 %6311, 31
  %6313 = shl i32 %6234, %6312
  %6314 = add i32 %6313, %6233
  %6315 = shl i32 %6314, 2
  %6316 = add i32 %6315, %6308
  %6317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6316, i32 undef)  ; BufferLoad(srv,index,wot)
  %6318 = extractvalue %dx.types.ResRet.i32 %6317, 0
  %6319 = icmp eq i32 %6318, 0
  br i1 %6319, label %6337, label %6320

; <label>:6320                                    ; preds = %6292
  %6321 = icmp slt i32 %6318, 0
  %6322 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6293
  %6323 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6293
  %6324 = bitcast float* %6322 to i32*
  %6325 = bitcast float* %6323 to i32*
  br i1 %6321, label %6326, label %6333

; <label>:6326                                    ; preds = %6320
  %6327 = and i32 %6318, 1073741823
  %6328 = add i32 %6308, 20
  %6329 = add i32 %6328, %6327
  %6330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %6329, i32 undef)  ; BufferLoad(srv,index,wot)
  %6331 = extractvalue %dx.types.ResRet.i32 %6330, 0
  %6332 = extractvalue %dx.types.ResRet.i32 %6330, 1
  br label %6333

; <label>:6333                                    ; preds = %6326, %6320
  %6334 = phi i32 [ %6331, %6326 ], [ %6241, %6320 ]
  %6335 = phi i32 [ %6332, %6326 ], [ %6242, %6320 ]
  store i32 %6334, i32* %6324, align 4
  store i32 %6335, i32* %6325, align 4
  %6336 = add i32 %6293, 1
  br label %6337

; <label>:6337                                    ; preds = %6333, %6292
  %6338 = phi i32 [ %6293, %6292 ], [ %6336, %6333 ]
  %6339 = add nuw i32 %6294, 1
  %6340 = icmp eq i32 %6339, %6289
  br i1 %6340, label %6341, label %6292

; <label>:6341                                    ; preds = %6337
  br label %6342

; <label>:6342                                    ; preds = %6341, %6285
  %6343 = phi i32 [ %6286, %6285 ], [ %6338, %6341 ]
  %6344 = icmp eq i32 %6343, 1
  %6345 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %6346 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %6344, label %6347, label %6350

; <label>:6347                                    ; preds = %6342
  %6348 = load float, float* %6345, align 4
  %6349 = load float, float* %6346, align 4
  br label %6377

; <label>:6350                                    ; preds = %6342
  %6351 = load float, float* %6345, align 4
  %6352 = load float, float* %6346, align 4
  %6353 = fdiv fast float 1.000000e+00, %6352
  %6354 = fsub fast float %6351, %6353
  %6355 = icmp ugt i32 %6343, 1
  br i1 %6355, label %6356, label %6372

; <label>:6356                                    ; preds = %6350
  br label %6357

; <label>:6357                                    ; preds = %6357, %6356
  %6358 = phi float [ %6367, %6357 ], [ %6354, %6356 ]
  %6359 = phi float [ %6368, %6357 ], [ %6351, %6356 ]
  %6360 = phi i32 [ %6369, %6357 ], [ 1, %6356 ]
  %6361 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %6360
  %6362 = load float, float* %6361, align 4
  %6363 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %6360
  %6364 = load float, float* %6363, align 4
  %6365 = fdiv fast float 1.000000e+00, %6364
  %6366 = fsub fast float %6362, %6365
  %6367 = call float @dx.op.binary.f32(i32 36, float %6358, float %6366)  ; FMin(a,b)
  %6368 = call float @dx.op.binary.f32(i32 35, float %6359, float %6362)  ; FMax(a,b)
  %6369 = add nuw i32 %6360, 1
  %6370 = icmp eq i32 %6369, %6343
  br i1 %6370, label %6371, label %6357

; <label>:6371                                    ; preds = %6357
  br label %6372

; <label>:6372                                    ; preds = %6371, %6350
  %6373 = phi float [ %6354, %6350 ], [ %6367, %6371 ]
  %6374 = phi float [ %6351, %6350 ], [ %6368, %6371 ]
  %6375 = fsub fast float %6374, %6373
  %6376 = fdiv fast float 1.000000e+00, %6375
  br label %6377

; <label>:6377                                    ; preds = %6372, %6347
  %6378 = phi float [ %6348, %6347 ], [ %6374, %6372 ]
  %6379 = phi float [ %6349, %6347 ], [ %6376, %6372 ]
  %6380 = fadd fast float %5808, %6378
  %6381 = fmul fast float %6380, %6379
  %6382 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  %6383 = fmul fast float %6382, 2.000000e+00
  %6384 = fsub fast float 1.000000e+00, %6383
  %6385 = fmul fast float %6218, %6218
  %6386 = fsub fast float %6219, %6385
  %6387 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6386)  ; FMax(a,b)
  %6388 = fdiv fast float 1.000000e+00, %6387
  %6389 = fmul fast float %6219, %6218
  %6390 = fsub fast float %6220, %6389
  %6391 = fsub fast float %6384, %6218
  %6392 = fmul fast float %6384, %6384
  %6393 = fsub fast float %6392, %6219
  %6394 = fmul fast float %6388, %6390
  %6395 = fmul fast float %6394, %6391
  %6396 = fsub fast float %6393, %6395
  %6397 = fmul fast float %6219, %6219
  %6398 = fsub fast float %6221, %6397
  %6399 = fmul fast float %6390, %6390
  %6400 = fmul fast float %6399, %6388
  %6401 = fsub fast float %6398, %6400
  %6402 = fdiv fast float %6396, %6401
  %6403 = fmul fast float %6402, %6390
  %6404 = fsub fast float %6391, %6403
  %6405 = fmul fast float %6404, %6388
  %6406 = fmul fast float %6405, %6218
  %6407 = fsub fast float 1.000000e+00, %6406
  %6408 = fmul fast float %6402, %6219
  %6409 = fsub fast float %6407, %6408
  %6410 = fmul fast float %6405, %6405
  %6411 = fmul fast float %6402, 4.000000e+00
  %6412 = fmul fast float %6411, %6409
  %6413 = fsub fast float %6410, %6412
  %6414 = call float @dx.op.unary.f32(i32 24, float %6413)  ; Sqrt(value)
  %6415 = fcmp fast oge float %6405, 0.000000e+00
  %6416 = fsub fast float -0.000000e+00, %6414
  %6417 = select i1 %6415, float %6416, float %6414
  %6418 = fsub fast float %6417, %6405
  %6419 = fdiv fast float %6418, %6402
  %6420 = fdiv fast float %6409, %6418
  %6421 = fmul fast float %6419, 5.000000e-01
  %6422 = fmul fast float %6420, 2.000000e+00
  %6423 = select i1 %6415, float %6421, float %6422
  %6424 = select i1 %6415, float %6422, float %6421
  %6425 = call float @dx.op.binary.f32(i32 35, float %6423, float %6424)  ; FMax(a,b)
  %6426 = call float @dx.op.binary.f32(i32 36, float %6423, float %6424)  ; FMin(a,b)
  %6427 = fcmp fast ogt float %6384, %6425
  %6428 = fsub fast float %6384, %6426
  %6429 = fsub fast float %6384, %6425
  %6430 = fsub fast float %6425, %6426
  %6431 = select i1 %6427, float %6429, float %6430
  %6432 = fmul float %6428, %6431
  %6433 = select i1 %6427, float %6426, float %6384
  %6434 = fcmp fast ogt float %6384, %6426
  %6435 = fmul fast float %6433, %6425
  %6436 = fadd fast float %6433, %6425
  %6437 = fmul fast float %6436, %6218
  %6438 = fadd fast float %6435, %6219
  %6439 = fsub fast float %6438, %6437
  %6440 = fdiv fast float %6439, %6432
  %6441 = select i1 %6434, float %6440, float 0.000000e+00
  %6442 = fsub fast float 1.000000e+00, %6441
  %6443 = select i1 %6427, float %6442, float %6441
  %6444 = call float @dx.op.unary.f32(i32 7, float %6443)  ; Saturate(value)
  %6445 = extractvalue %dx.types.CBufRet.f32 %6203, 3
  %6446 = fmul fast float %6445, %6444
  %6447 = fsub fast float 1.000000e+00, %6446
  br label %6448

; <label>:6448                                    ; preds = %6377, %6055, %5781, %5777, %5747
  %6449 = phi float [ 1.000000e+00, %5747 ], [ %6447, %6377 ], [ 1.000000e+00, %5781 ], [ 1.000000e+00, %6055 ], [ 1.000000e+00, %5777 ]
  %6450 = fcmp fast ogt float %5773, 0.000000e+00
  br i1 %6450, label %6451, label %6615, !dx.controlflow.hints !151

; <label>:6451                                    ; preds = %6448
  %6452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6453 = extractvalue %dx.types.CBufRet.f32 %6452, 2
  %6454 = fadd fast float %6453, %5693
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 2
  %6457 = extractvalue %dx.types.CBufRet.f32 %6455, 3
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 2
  %6460 = call float @dx.op.binary.f32(i32 35, float %6454, float 0.000000e+00)  ; FMax(a,b)
  %6461 = fadd fast float %6460, 0x3F10000000000000
  %6462 = fcmp fast oeq float %6459, 0.000000e+00
  br i1 %6462, label %6463, label %6530

; <label>:6463                                    ; preds = %6451
  %6464 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6465 = extractvalue %dx.types.CBufRet.f32 %6455, 0
  %6466 = fmul fast float %6465, %5581
  %6467 = fmul fast float %6464, %5582
  %6468 = fadd fast float %6466, 5.000000e-01
  %6469 = call float @dx.op.unary.f32(i32 27, float %6468)  ; Round_ni(value)
  %6470 = fadd fast float %6467, 5.000000e-01
  %6471 = call float @dx.op.unary.f32(i32 27, float %6470)  ; Round_ni(value)
  %6472 = fsub fast float %6468, %6469
  %6473 = fsub fast float %6470, %6471
  %6474 = fadd fast float %6469, -5.000000e-01
  %6475 = fadd fast float %6471, -5.000000e-01
  %6476 = fmul fast float %6472, 2.000000e+00
  %6477 = fsub fast float 3.000000e+00, %6476
  %6478 = fadd fast float %6476, 1.000000e+00
  %6479 = fsub fast float 2.000000e+00, %6472
  %6480 = bitcast float %6477 to i32
  %6481 = sub nsw i32 2129859010, %6480
  %6482 = bitcast i32 %6481 to float
  %6483 = fmul fast float %6482, %6479
  %6484 = fadd fast float %6483, -1.000000e+00
  %6485 = bitcast float %6478 to i32
  %6486 = sub nsw i32 2129859010, %6485
  %6487 = bitcast i32 %6486 to float
  %6488 = fmul fast float %6487, %6472
  %6489 = fadd fast float %6488, 1.000000e+00
  %6490 = fmul fast float %6473, 2.000000e+00
  %6491 = fsub fast float 3.000000e+00, %6490
  %6492 = fadd fast float %6490, 1.000000e+00
  %6493 = fsub fast float 2.000000e+00, %6473
  %6494 = bitcast float %6491 to i32
  %6495 = sub nsw i32 2129859010, %6494
  %6496 = bitcast i32 %6495 to float
  %6497 = fmul fast float %6496, %6493
  %6498 = fadd fast float %6497, -1.000000e+00
  %6499 = bitcast float %6492 to i32
  %6500 = sub nsw i32 2129859010, %6499
  %6501 = bitcast i32 %6500 to float
  %6502 = fmul fast float %6501, %6473
  %6503 = fadd fast float %6502, 1.000000e+00
  %6504 = fadd fast float %6484, %6474
  %6505 = fmul fast float %6504, %6456
  %6506 = fadd fast float %6498, %6475
  %6507 = fmul fast float %6506, %6457
  %6508 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6505, float %6507, float undef, float undef, i32 0, i32 0, i32 undef, float %6461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6509 = extractvalue %dx.types.ResRet.f32 %6508, 0
  %6510 = fmul fast float %6509, %6477
  %6511 = fadd fast float %6489, %6474
  %6512 = fmul fast float %6511, %6456
  %6513 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6512, float %6507, float undef, float undef, i32 0, i32 0, i32 undef, float %6461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6514 = extractvalue %dx.types.ResRet.f32 %6513, 0
  %6515 = fmul fast float %6514, %6478
  %6516 = fadd fast float %6503, %6475
  %6517 = fmul fast float %6516, %6457
  %6518 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6505, float %6517, float undef, float undef, i32 0, i32 0, i32 undef, float %6461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6519 = extractvalue %dx.types.ResRet.f32 %6518, 0
  %6520 = fmul fast float %6519, %6477
  %6521 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %6512, float %6517, float undef, float undef, i32 0, i32 0, i32 undef, float %6461)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6522 = extractvalue %dx.types.ResRet.f32 %6521, 0
  %6523 = fmul fast float %6522, %6478
  %6524 = fadd fast float %6523, %6520
  %6525 = fmul fast float %6524, %6492
  %6526 = fadd fast float %6515, %6510
  %6527 = fmul fast float %6526, %6491
  %6528 = fadd fast float %6527, %6525
  %6529 = fmul fast float %6528, 6.250000e-02
  br label %6615

; <label>:6530                                    ; preds = %6451
  %6531 = fmul fast float %1899, 0x401921FB60000000
  %6532 = call float @dx.op.unary.f32(i32 13, float %6531)  ; Sin(value)
  %6533 = call float @dx.op.unary.f32(i32 12, float %6531)  ; Cos(value)
  %6534 = fsub fast float -0.000000e+00, %6532
  br label %6535

; <label>:6535                                    ; preds = %6584, %6530
  %6536 = phi float [ 0.000000e+00, %6530 ], [ %6579, %6584 ]
  %6537 = phi float [ 0.000000e+00, %6530 ], [ %6581, %6584 ]
  %6538 = phi i32 [ 0, %6530 ], [ %6585, %6584 ]
  %6539 = mul i32 %6538, 2
  %6540 = add i32 0, %6539
  %6541 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6540
  %6542 = load float, float* %6541, align 4
  %6543 = mul i32 %6538, 2
  %6544 = add i32 1, %6543
  %6545 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6544
  %6546 = load float, float* %6545, align 4
  %6547 = fmul fast float %6542, %6533
  %6548 = call float @dx.op.tertiary.f32(i32 46, float %6546, float %6534, float %6547)  ; FMad(a,b,c)
  %6549 = fmul fast float %6542, %6532
  %6550 = call float @dx.op.tertiary.f32(i32 46, float %6546, float %6533, float %6549)  ; FMad(a,b,c)
  %6551 = fmul fast float %6548, %6459
  %6552 = fmul fast float %6550, %6459
  %6553 = fadd fast float %6551, %5581
  %6554 = fadd fast float %6552, %5582
  %6555 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %62, float %6553, float %6554, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6556 = extractvalue %dx.types.ResRet.f32 %6555, 0
  %6557 = extractvalue %dx.types.ResRet.f32 %6555, 1
  %6558 = extractvalue %dx.types.ResRet.f32 %6555, 2
  %6559 = extractvalue %dx.types.ResRet.f32 %6555, 3
  %6560 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6556, float* %6560, align 4
  %6561 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6557, float* %6561, align 4
  %6562 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6558, float* %6562, align 4
  %6563 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6559, float* %6563, align 4
  %6564 = fsub fast float %6556, %6461
  %6565 = fcmp fast olt float %6564, 0.000000e+00
  %6566 = select i1 %6565, float 0.000000e+00, float 1.000000e+00
  %6567 = fadd fast float %6566, %6536
  %6568 = fmul fast float %6566, %6564
  %6569 = fadd fast float %6568, %6537
  br label %6570

; <label>:6570                                    ; preds = %6570, %6535
  %6571 = phi i32 [ 1, %6535 ], [ %6582, %6570 ]
  %6572 = phi float [ %6569, %6535 ], [ %6581, %6570 ]
  %6573 = phi float [ %6567, %6535 ], [ %6579, %6570 ]
  %6574 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6571
  %6575 = load float, float* %6574, align 4, !tbaa !106, !noalias !152
  %6576 = fsub fast float %6575, %6461
  %6577 = fcmp fast olt float %6576, 0.000000e+00
  %6578 = select i1 %6577, float 0.000000e+00, float 1.000000e+00
  %6579 = fadd fast float %6578, %6573
  %6580 = fmul fast float %6578, %6576
  %6581 = fadd fast float %6580, %6572
  %6582 = add nuw nsw i32 %6571, 1
  %6583 = icmp eq i32 %6582, 4
  br i1 %6583, label %6584, label %6570, !llvm.loop !157

; <label>:6584                                    ; preds = %6570
  %6585 = add nuw nsw i32 %6538, 1
  %6586 = icmp eq i32 %6585, 8
  br i1 %6586, label %6587, label %6535, !llvm.loop !158

; <label>:6587                                    ; preds = %6584
  %6588 = fdiv fast float 1.000000e+00, %6579
  %6589 = fmul fast float %6588, %6581
  %6590 = fdiv fast float 1.000000e+00, %6461
  %6591 = fmul fast float %6589, %6590
  %6592 = call float @dx.op.unary.f32(i32 7, float %6591)  ; Saturate(value)
  %6593 = call float @dx.op.binary.f32(i32 35, float %6592, float 0.000000e+00)  ; FMax(a,b)
  %6594 = fmul fast float %6579, 3.125000e-02
  %6595 = call float @dx.op.unary.f32(i32 7, float %6594)  ; Saturate(value)
  %6596 = fmul fast float %6595, 2.000000e+00
  %6597 = fadd fast float %6596, -1.000000e+00
  %6598 = fcmp fast ogt float %6597, 0.000000e+00
  %6599 = fcmp fast olt float %6597, 0.000000e+00
  %6600 = zext i1 %6598 to i32
  %6601 = zext i1 %6599 to i32
  %6602 = sub nsw i32 %6600, %6601
  %6603 = sitofp i32 %6602 to float
  %6604 = fmul fast float %6603, %6597
  %6605 = fsub fast float 1.000000e+00, %6604
  %6606 = fmul fast float %6605, %6605
  %6607 = fmul fast float %6606, %6605
  %6608 = fsub fast float %6605, %6607
  %6609 = fmul fast float %6608, %6593
  %6610 = fsub fast float 1.000000e+00, %6607
  %6611 = fsub fast float %6610, %6609
  %6612 = fmul fast float %6603, 5.000000e-01
  %6613 = fmul fast float %6612, %6611
  %6614 = fsub fast float 5.000000e-01, %6613
  br label %6615

; <label>:6615                                    ; preds = %6587, %6463, %6448
  %6616 = phi float [ 1.000000e+00, %6448 ], [ %6529, %6463 ], [ %6614, %6587 ]
  %6617 = fcmp fast ogt float %5771, 0.000000e+00
  br i1 %6617, label %6618, label %6782, !dx.controlflow.hints !159

; <label>:6618                                    ; preds = %6615
  %6619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6620 = extractvalue %dx.types.CBufRet.f32 %6619, 1
  %6621 = fadd fast float %6620, %5693
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 2
  %6624 = extractvalue %dx.types.CBufRet.f32 %6622, 3
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 1
  %6627 = call float @dx.op.binary.f32(i32 35, float %6621, float 0.000000e+00)  ; FMax(a,b)
  %6628 = fadd fast float %6627, 0x3F10000000000000
  %6629 = fcmp fast oeq float %6626, 0.000000e+00
  br i1 %6629, label %6630, label %6697

; <label>:6630                                    ; preds = %6618
  %6631 = extractvalue %dx.types.CBufRet.f32 %6622, 1
  %6632 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  %6633 = fmul fast float %6632, %5573
  %6634 = fmul fast float %6631, %5574
  %6635 = fadd fast float %6633, 5.000000e-01
  %6636 = call float @dx.op.unary.f32(i32 27, float %6635)  ; Round_ni(value)
  %6637 = fadd fast float %6634, 5.000000e-01
  %6638 = call float @dx.op.unary.f32(i32 27, float %6637)  ; Round_ni(value)
  %6639 = fsub fast float %6635, %6636
  %6640 = fsub fast float %6637, %6638
  %6641 = fadd fast float %6636, -5.000000e-01
  %6642 = fadd fast float %6638, -5.000000e-01
  %6643 = fmul fast float %6639, 2.000000e+00
  %6644 = fsub fast float 3.000000e+00, %6643
  %6645 = fadd fast float %6643, 1.000000e+00
  %6646 = fsub fast float 2.000000e+00, %6639
  %6647 = bitcast float %6644 to i32
  %6648 = sub nsw i32 2129859010, %6647
  %6649 = bitcast i32 %6648 to float
  %6650 = fmul fast float %6649, %6646
  %6651 = fadd fast float %6650, -1.000000e+00
  %6652 = bitcast float %6645 to i32
  %6653 = sub nsw i32 2129859010, %6652
  %6654 = bitcast i32 %6653 to float
  %6655 = fmul fast float %6654, %6639
  %6656 = fadd fast float %6655, 1.000000e+00
  %6657 = fmul fast float %6640, 2.000000e+00
  %6658 = fsub fast float 3.000000e+00, %6657
  %6659 = fadd fast float %6657, 1.000000e+00
  %6660 = fsub fast float 2.000000e+00, %6640
  %6661 = bitcast float %6658 to i32
  %6662 = sub nsw i32 2129859010, %6661
  %6663 = bitcast i32 %6662 to float
  %6664 = fmul fast float %6663, %6660
  %6665 = fadd fast float %6664, -1.000000e+00
  %6666 = bitcast float %6659 to i32
  %6667 = sub nsw i32 2129859010, %6666
  %6668 = bitcast i32 %6667 to float
  %6669 = fmul fast float %6668, %6640
  %6670 = fadd fast float %6669, 1.000000e+00
  %6671 = fadd fast float %6651, %6641
  %6672 = fmul fast float %6671, %6623
  %6673 = fadd fast float %6665, %6642
  %6674 = fmul fast float %6673, %6624
  %6675 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6672, float %6674, float undef, float undef, i32 0, i32 0, i32 undef, float %6628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6676 = extractvalue %dx.types.ResRet.f32 %6675, 0
  %6677 = fmul fast float %6676, %6644
  %6678 = fadd fast float %6656, %6641
  %6679 = fmul fast float %6678, %6623
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6679, float %6674, float undef, float undef, i32 0, i32 0, i32 undef, float %6628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  %6682 = fmul fast float %6681, %6645
  %6683 = fadd fast float %6670, %6642
  %6684 = fmul fast float %6683, %6624
  %6685 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6672, float %6684, float undef, float undef, i32 0, i32 0, i32 undef, float %6628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6686 = extractvalue %dx.types.ResRet.f32 %6685, 0
  %6687 = fmul fast float %6686, %6644
  %6688 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6679, float %6684, float undef, float undef, i32 0, i32 0, i32 undef, float %6628)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6689 = extractvalue %dx.types.ResRet.f32 %6688, 0
  %6690 = fmul fast float %6689, %6645
  %6691 = fadd fast float %6690, %6687
  %6692 = fmul fast float %6691, %6659
  %6693 = fadd fast float %6682, %6677
  %6694 = fmul fast float %6693, %6658
  %6695 = fadd fast float %6694, %6692
  %6696 = fmul fast float %6695, 6.250000e-02
  br label %6782

; <label>:6697                                    ; preds = %6618
  %6698 = fmul fast float %1899, 0x401921FB60000000
  %6699 = call float @dx.op.unary.f32(i32 13, float %6698)  ; Sin(value)
  %6700 = call float @dx.op.unary.f32(i32 12, float %6698)  ; Cos(value)
  %6701 = fsub fast float -0.000000e+00, %6699
  br label %6702

; <label>:6702                                    ; preds = %6751, %6697
  %6703 = phi float [ 0.000000e+00, %6697 ], [ %6746, %6751 ]
  %6704 = phi float [ 0.000000e+00, %6697 ], [ %6748, %6751 ]
  %6705 = phi i32 [ 0, %6697 ], [ %6752, %6751 ]
  %6706 = mul i32 %6705, 2
  %6707 = add i32 0, %6706
  %6708 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6707
  %6709 = load float, float* %6708, align 4
  %6710 = mul i32 %6705, 2
  %6711 = add i32 1, %6710
  %6712 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6711
  %6713 = load float, float* %6712, align 4
  %6714 = fmul fast float %6709, %6700
  %6715 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6701, float %6714)  ; FMad(a,b,c)
  %6716 = fmul fast float %6709, %6699
  %6717 = call float @dx.op.tertiary.f32(i32 46, float %6713, float %6700, float %6716)  ; FMad(a,b,c)
  %6718 = fmul fast float %6715, %6626
  %6719 = fmul fast float %6717, %6626
  %6720 = fadd fast float %6718, %5573
  %6721 = fadd fast float %6719, %5574
  %6722 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %62, float %6720, float %6721, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6723 = extractvalue %dx.types.ResRet.f32 %6722, 0
  %6724 = extractvalue %dx.types.ResRet.f32 %6722, 1
  %6725 = extractvalue %dx.types.ResRet.f32 %6722, 2
  %6726 = extractvalue %dx.types.ResRet.f32 %6722, 3
  %6727 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %6723, float* %6727, align 4
  %6728 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6724, float* %6728, align 4
  %6729 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6725, float* %6729, align 4
  %6730 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6726, float* %6730, align 4
  %6731 = fsub fast float %6723, %6628
  %6732 = fcmp fast olt float %6731, 0.000000e+00
  %6733 = select i1 %6732, float 0.000000e+00, float 1.000000e+00
  %6734 = fadd fast float %6733, %6703
  %6735 = fmul fast float %6733, %6731
  %6736 = fadd fast float %6735, %6704
  br label %6737

; <label>:6737                                    ; preds = %6737, %6702
  %6738 = phi i32 [ 1, %6702 ], [ %6749, %6737 ]
  %6739 = phi float [ %6736, %6702 ], [ %6748, %6737 ]
  %6740 = phi float [ %6734, %6702 ], [ %6746, %6737 ]
  %6741 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6738
  %6742 = load float, float* %6741, align 4, !tbaa !106, !noalias !152
  %6743 = fsub fast float %6742, %6628
  %6744 = fcmp fast olt float %6743, 0.000000e+00
  %6745 = select i1 %6744, float 0.000000e+00, float 1.000000e+00
  %6746 = fadd fast float %6745, %6740
  %6747 = fmul fast float %6745, %6743
  %6748 = fadd fast float %6747, %6739
  %6749 = add nuw nsw i32 %6738, 1
  %6750 = icmp eq i32 %6749, 4
  br i1 %6750, label %6751, label %6737, !llvm.loop !157

; <label>:6751                                    ; preds = %6737
  %6752 = add nuw nsw i32 %6705, 1
  %6753 = icmp eq i32 %6752, 8
  br i1 %6753, label %6754, label %6702, !llvm.loop !158

; <label>:6754                                    ; preds = %6751
  %6755 = fdiv fast float 1.000000e+00, %6746
  %6756 = fmul fast float %6755, %6748
  %6757 = fdiv fast float 1.000000e+00, %6628
  %6758 = fmul fast float %6756, %6757
  %6759 = call float @dx.op.unary.f32(i32 7, float %6758)  ; Saturate(value)
  %6760 = call float @dx.op.binary.f32(i32 35, float %6759, float 0.000000e+00)  ; FMax(a,b)
  %6761 = fmul fast float %6746, 3.125000e-02
  %6762 = call float @dx.op.unary.f32(i32 7, float %6761)  ; Saturate(value)
  %6763 = fmul fast float %6762, 2.000000e+00
  %6764 = fadd fast float %6763, -1.000000e+00
  %6765 = fcmp fast ogt float %6764, 0.000000e+00
  %6766 = fcmp fast olt float %6764, 0.000000e+00
  %6767 = zext i1 %6765 to i32
  %6768 = zext i1 %6766 to i32
  %6769 = sub nsw i32 %6767, %6768
  %6770 = sitofp i32 %6769 to float
  %6771 = fmul fast float %6770, %6764
  %6772 = fsub fast float 1.000000e+00, %6771
  %6773 = fmul fast float %6772, %6772
  %6774 = fmul fast float %6773, %6772
  %6775 = fsub fast float %6772, %6774
  %6776 = fmul fast float %6775, %6760
  %6777 = fsub fast float 1.000000e+00, %6774
  %6778 = fsub fast float %6777, %6776
  %6779 = fmul fast float %6770, 5.000000e-01
  %6780 = fmul fast float %6779, %6778
  %6781 = fsub fast float 5.000000e-01, %6780
  br label %6782

; <label>:6782                                    ; preds = %6754, %6630, %6615
  %6783 = phi float [ 1.000000e+00, %6615 ], [ %6696, %6630 ], [ %6781, %6754 ]
  %6784 = fcmp fast ogt float %5770, 0.000000e+00
  br i1 %6784, label %6785, label %6949, !dx.controlflow.hints !160

; <label>:6785                                    ; preds = %6782
  %6786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6787 = extractvalue %dx.types.CBufRet.f32 %6786, 0
  %6788 = fadd fast float %6787, %5693
  %6789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6790 = extractvalue %dx.types.CBufRet.f32 %6789, 2
  %6791 = extractvalue %dx.types.CBufRet.f32 %6789, 3
  %6792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6793 = extractvalue %dx.types.CBufRet.f32 %6792, 0
  %6794 = call float @dx.op.binary.f32(i32 35, float %6788, float 0.000000e+00)  ; FMax(a,b)
  %6795 = fadd fast float %6794, 0x3F10000000000000
  %6796 = fcmp fast oeq float %6793, 0.000000e+00
  br i1 %6796, label %6797, label %6864

; <label>:6797                                    ; preds = %6785
  %6798 = extractvalue %dx.types.CBufRet.f32 %6789, 1
  %6799 = extractvalue %dx.types.CBufRet.f32 %6789, 0
  %6800 = fmul fast float %6799, %5559
  %6801 = fmul fast float %6798, %5563
  %6802 = fadd fast float %6800, 5.000000e-01
  %6803 = call float @dx.op.unary.f32(i32 27, float %6802)  ; Round_ni(value)
  %6804 = fadd fast float %6801, 5.000000e-01
  %6805 = call float @dx.op.unary.f32(i32 27, float %6804)  ; Round_ni(value)
  %6806 = fsub fast float %6802, %6803
  %6807 = fsub fast float %6804, %6805
  %6808 = fadd fast float %6803, -5.000000e-01
  %6809 = fadd fast float %6805, -5.000000e-01
  %6810 = fmul fast float %6806, 2.000000e+00
  %6811 = fsub fast float 3.000000e+00, %6810
  %6812 = fadd fast float %6810, 1.000000e+00
  %6813 = fsub fast float 2.000000e+00, %6806
  %6814 = bitcast float %6811 to i32
  %6815 = sub nsw i32 2129859010, %6814
  %6816 = bitcast i32 %6815 to float
  %6817 = fmul fast float %6816, %6813
  %6818 = fadd fast float %6817, -1.000000e+00
  %6819 = bitcast float %6812 to i32
  %6820 = sub nsw i32 2129859010, %6819
  %6821 = bitcast i32 %6820 to float
  %6822 = fmul fast float %6821, %6806
  %6823 = fadd fast float %6822, 1.000000e+00
  %6824 = fmul fast float %6807, 2.000000e+00
  %6825 = fsub fast float 3.000000e+00, %6824
  %6826 = fadd fast float %6824, 1.000000e+00
  %6827 = fsub fast float 2.000000e+00, %6807
  %6828 = bitcast float %6825 to i32
  %6829 = sub nsw i32 2129859010, %6828
  %6830 = bitcast i32 %6829 to float
  %6831 = fmul fast float %6830, %6827
  %6832 = fadd fast float %6831, -1.000000e+00
  %6833 = bitcast float %6826 to i32
  %6834 = sub nsw i32 2129859010, %6833
  %6835 = bitcast i32 %6834 to float
  %6836 = fmul fast float %6835, %6807
  %6837 = fadd fast float %6836, 1.000000e+00
  %6838 = fadd fast float %6818, %6808
  %6839 = fmul fast float %6838, %6790
  %6840 = fadd fast float %6832, %6809
  %6841 = fmul fast float %6840, %6791
  %6842 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6839, float %6841, float undef, float undef, i32 0, i32 0, i32 undef, float %6795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6843 = extractvalue %dx.types.ResRet.f32 %6842, 0
  %6844 = fmul fast float %6843, %6811
  %6845 = fadd fast float %6823, %6808
  %6846 = fmul fast float %6845, %6790
  %6847 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6846, float %6841, float undef, float undef, i32 0, i32 0, i32 undef, float %6795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6848 = extractvalue %dx.types.ResRet.f32 %6847, 0
  %6849 = fmul fast float %6848, %6812
  %6850 = fadd fast float %6837, %6809
  %6851 = fmul fast float %6850, %6791
  %6852 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6839, float %6851, float undef, float undef, i32 0, i32 0, i32 undef, float %6795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6853 = extractvalue %dx.types.ResRet.f32 %6852, 0
  %6854 = fmul fast float %6853, %6811
  %6855 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6846, float %6851, float undef, float undef, i32 0, i32 0, i32 undef, float %6795)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6856 = extractvalue %dx.types.ResRet.f32 %6855, 0
  %6857 = fmul fast float %6856, %6812
  %6858 = fadd fast float %6857, %6854
  %6859 = fmul fast float %6858, %6826
  %6860 = fadd fast float %6849, %6844
  %6861 = fmul fast float %6860, %6825
  %6862 = fadd fast float %6861, %6859
  %6863 = fmul fast float %6862, 6.250000e-02
  br label %6949

; <label>:6864                                    ; preds = %6785
  %6865 = fmul fast float %1899, 0x401921FB60000000
  %6866 = call float @dx.op.unary.f32(i32 13, float %6865)  ; Sin(value)
  %6867 = call float @dx.op.unary.f32(i32 12, float %6865)  ; Cos(value)
  %6868 = fsub fast float -0.000000e+00, %6866
  br label %6869

; <label>:6869                                    ; preds = %6918, %6864
  %6870 = phi float [ 0.000000e+00, %6864 ], [ %6913, %6918 ]
  %6871 = phi float [ 0.000000e+00, %6864 ], [ %6915, %6918 ]
  %6872 = phi i32 [ 0, %6864 ], [ %6919, %6918 ]
  %6873 = mul i32 %6872, 2
  %6874 = add i32 0, %6873
  %6875 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6874
  %6876 = load float, float* %6875, align 4
  %6877 = mul i32 %6872, 2
  %6878 = add i32 1, %6877
  %6879 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6878
  %6880 = load float, float* %6879, align 4
  %6881 = fmul fast float %6876, %6867
  %6882 = call float @dx.op.tertiary.f32(i32 46, float %6880, float %6868, float %6881)  ; FMad(a,b,c)
  %6883 = fmul fast float %6876, %6866
  %6884 = call float @dx.op.tertiary.f32(i32 46, float %6880, float %6867, float %6883)  ; FMad(a,b,c)
  %6885 = fmul fast float %6882, %6793
  %6886 = fmul fast float %6884, %6793
  %6887 = fadd fast float %6885, %5559
  %6888 = fadd fast float %6886, %5563
  %6889 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %62, float %6887, float %6888, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6890 = extractvalue %dx.types.ResRet.f32 %6889, 0
  %6891 = extractvalue %dx.types.ResRet.f32 %6889, 1
  %6892 = extractvalue %dx.types.ResRet.f32 %6889, 2
  %6893 = extractvalue %dx.types.ResRet.f32 %6889, 3
  %6894 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %6890, float* %6894, align 4
  %6895 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %6891, float* %6895, align 4
  %6896 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %6892, float* %6896, align 4
  %6897 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %6893, float* %6897, align 4
  %6898 = fsub fast float %6890, %6795
  %6899 = fcmp fast olt float %6898, 0.000000e+00
  %6900 = select i1 %6899, float 0.000000e+00, float 1.000000e+00
  %6901 = fadd fast float %6900, %6870
  %6902 = fmul fast float %6900, %6898
  %6903 = fadd fast float %6902, %6871
  br label %6904

; <label>:6904                                    ; preds = %6904, %6869
  %6905 = phi i32 [ 1, %6869 ], [ %6916, %6904 ]
  %6906 = phi float [ %6903, %6869 ], [ %6915, %6904 ]
  %6907 = phi float [ %6901, %6869 ], [ %6913, %6904 ]
  %6908 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %6905
  %6909 = load float, float* %6908, align 4, !tbaa !106, !noalias !152
  %6910 = fsub fast float %6909, %6795
  %6911 = fcmp fast olt float %6910, 0.000000e+00
  %6912 = select i1 %6911, float 0.000000e+00, float 1.000000e+00
  %6913 = fadd fast float %6912, %6907
  %6914 = fmul fast float %6912, %6910
  %6915 = fadd fast float %6914, %6906
  %6916 = add nuw nsw i32 %6905, 1
  %6917 = icmp eq i32 %6916, 4
  br i1 %6917, label %6918, label %6904, !llvm.loop !157

; <label>:6918                                    ; preds = %6904
  %6919 = add nuw nsw i32 %6872, 1
  %6920 = icmp eq i32 %6919, 8
  br i1 %6920, label %6921, label %6869, !llvm.loop !158

; <label>:6921                                    ; preds = %6918
  %6922 = fdiv fast float 1.000000e+00, %6913
  %6923 = fmul fast float %6922, %6915
  %6924 = fdiv fast float 1.000000e+00, %6795
  %6925 = fmul fast float %6923, %6924
  %6926 = call float @dx.op.unary.f32(i32 7, float %6925)  ; Saturate(value)
  %6927 = call float @dx.op.binary.f32(i32 35, float %6926, float 0.000000e+00)  ; FMax(a,b)
  %6928 = fmul fast float %6913, 3.125000e-02
  %6929 = call float @dx.op.unary.f32(i32 7, float %6928)  ; Saturate(value)
  %6930 = fmul fast float %6929, 2.000000e+00
  %6931 = fadd fast float %6930, -1.000000e+00
  %6932 = fcmp fast ogt float %6931, 0.000000e+00
  %6933 = fcmp fast olt float %6931, 0.000000e+00
  %6934 = zext i1 %6932 to i32
  %6935 = zext i1 %6933 to i32
  %6936 = sub nsw i32 %6934, %6935
  %6937 = sitofp i32 %6936 to float
  %6938 = fmul fast float %6937, %6931
  %6939 = fsub fast float 1.000000e+00, %6938
  %6940 = fmul fast float %6939, %6939
  %6941 = fmul fast float %6940, %6939
  %6942 = fsub fast float %6939, %6941
  %6943 = fmul fast float %6942, %6927
  %6944 = fsub fast float 1.000000e+00, %6941
  %6945 = fsub fast float %6944, %6943
  %6946 = fmul fast float %6937, 5.000000e-01
  %6947 = fmul fast float %6946, %6945
  %6948 = fsub fast float 5.000000e-01, %6947
  br label %6949

; <label>:6949                                    ; preds = %6921, %6797, %6782
  %6950 = phi float [ 1.000000e+00, %6782 ], [ %6863, %6797 ], [ %6948, %6921 ]
  %6951 = fsub fast float %6616, %6449
  %6952 = fmul fast float %6951, %5723
  %6953 = fadd fast float %6952, %6449
  %6954 = fsub fast float %6783, %6953
  %6955 = fmul fast float %6954, %5748
  %6956 = fadd fast float %6955, %6953
  %6957 = fsub fast float %6950, %6956
  %6958 = fmul fast float %6957, %5770
  %6959 = fadd fast float %6958, %6956
  %6960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6961 = extractvalue %dx.types.CBufRet.f32 %6960, 2
  %6962 = fcmp fast ogt float %6961, 0.000000e+00
  br i1 %6962, label %6963, label %7003, !dx.controlflow.hints !161

; <label>:6963                                    ; preds = %6949
  %6964 = fcmp fast ugt float %6961, 0.000000e+00
  br i1 %6964, label %6965, label %7000

; <label>:6965                                    ; preds = %6963
  %6966 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6967 = extractvalue %dx.types.CBufRet.f32 %6966, 0
  %6968 = extractvalue %dx.types.CBufRet.f32 %6966, 1
  %6969 = extractvalue %dx.types.CBufRet.f32 %6966, 2
  %6970 = extractvalue %dx.types.CBufRet.f32 %6966, 3
  %6971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6972 = extractvalue %dx.types.CBufRet.f32 %6971, 0
  %6973 = extractvalue %dx.types.CBufRet.f32 %6971, 1
  %6974 = extractvalue %dx.types.CBufRet.f32 %6971, 2
  %6975 = extractvalue %dx.types.CBufRet.f32 %6971, 3
  %6976 = extractvalue %dx.types.CBufRet.f32 %6960, 0
  %6977 = extractvalue %dx.types.CBufRet.f32 %6960, 1
  %6978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6979 = extractvalue %dx.types.CBufRet.f32 %6978, 0
  %6980 = extractvalue %dx.types.CBufRet.f32 %6978, 1
  %6981 = extractvalue %dx.types.CBufRet.f32 %6978, 2
  %6982 = fadd fast float %6979, %153
  %6983 = fadd fast float %6980, %154
  %6984 = fadd fast float %6981, %155
  %6985 = fmul fast float %6982, %6967
  %6986 = call float @dx.op.tertiary.f32(i32 46, float %6968, float %6983, float %6985)  ; FMad(a,b,c)
  %6987 = call float @dx.op.tertiary.f32(i32 46, float %6969, float %6984, float %6986)  ; FMad(a,b,c)
  %6988 = fadd fast float %6987, %6970
  %6989 = fmul fast float %6982, %6972
  %6990 = call float @dx.op.tertiary.f32(i32 46, float %6973, float %6983, float %6989)  ; FMad(a,b,c)
  %6991 = call float @dx.op.tertiary.f32(i32 46, float %6974, float %6984, float %6990)  ; FMad(a,b,c)
  %6992 = fadd fast float %6991, %6975
  %6993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %58, float %6988, float %6992, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6994 = extractvalue %dx.types.ResRet.f32 %6993, 0
  %6995 = fmul fast float %6994, %6977
  %6996 = fadd fast float %6995, %6976
  %6997 = call float @dx.op.unary.f32(i32 7, float %6996)  ; Saturate(value)
  %6998 = fmul fast float %6997, %6961
  %6999 = fsub fast float 1.000000e+00, %6998
  br label %7000

; <label>:7000                                    ; preds = %6965, %6963
  %7001 = phi float [ %6999, %6965 ], [ 1.000000e+00, %6963 ]
  %7002 = fmul fast float %7001, %6959
  br label %7003

; <label>:7003                                    ; preds = %7000, %6949, %5689
  %7004 = phi float [ 1.000000e+00, %5689 ], [ %7002, %7000 ], [ %6959, %6949 ]
  %7005 = call float @dx.op.binary.f32(i32 36, float %7004, float %7004)  ; FMin(a,b)
  %7006 = call float @dx.op.binary.f32(i32 36, float %7004, float %7005)  ; FMin(a,b)
  %7007 = fcmp fast ogt float %7006, 0.000000e+00
  br i1 %7007, label %7008, label %7173, !dx.controlflow.hints !162

; <label>:7008                                    ; preds = %7003
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 2
  %7013 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %7015 = extractvalue %dx.types.CBufRet.f32 %7014, 0
  %7016 = extractvalue %dx.types.CBufRet.f32 %7014, 1
  %7017 = extractvalue %dx.types.CBufRet.f32 %7014, 2
  %7018 = extractvalue %dx.types.CBufRet.f32 %7014, 3
  %7019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %7020 = extractvalue %dx.types.CBufRet.f32 %7019, 0
  %7021 = extractvalue %dx.types.CBufRet.f32 %7019, 1
  %7022 = extractvalue %dx.types.CBufRet.f32 %7019, 2
  %7023 = extractvalue %dx.types.CBufRet.f32 %7019, 3
  %7024 = fmul fast float %7010, %153
  %7025 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7011, float %7024)  ; FMad(a,b,c)
  %7026 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7012, float %7025)  ; FMad(a,b,c)
  %7027 = fadd fast float %7026, %7013
  %7028 = fmul fast float %7015, %153
  %7029 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7016, float %7028)  ; FMad(a,b,c)
  %7030 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7017, float %7029)  ; FMad(a,b,c)
  %7031 = fadd fast float %7030, %7018
  %7032 = fmul fast float %7020, %153
  %7033 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7021, float %7032)  ; FMad(a,b,c)
  %7034 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7022, float %7033)  ; FMad(a,b,c)
  %7035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.f32 %7035, 0
  %7037 = extractvalue %dx.types.CBufRet.f32 %7035, 1
  %7038 = extractvalue %dx.types.CBufRet.f32 %7035, 3
  %7039 = fmul fast float %7038, %7027
  %7040 = fmul fast float %7038, %7031
  %7041 = fadd fast float %7039, %7036
  %7042 = fadd fast float %7040, %7037
  %7043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7044 = extractvalue %dx.types.CBufRet.f32 %7043, 0
  %7045 = extractvalue %dx.types.CBufRet.f32 %7043, 1
  %7046 = fsub fast float %7041, %7044
  %7047 = fsub fast float %7042, %7045
  %7048 = fcmp fast olt float %7046, 0.000000e+00
  %7049 = fcmp fast olt float %7047, 0.000000e+00
  %7050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7051 = extractvalue %dx.types.CBufRet.f32 %7050, 0
  %7052 = extractvalue %dx.types.CBufRet.f32 %7050, 1
  %7053 = extractvalue %dx.types.CBufRet.f32 %7050, 2
  %7054 = extractvalue %dx.types.CBufRet.f32 %7050, 3
  %7055 = select i1 %7048, float %7051, float %7053
  %7056 = select i1 %7049, float %7052, float %7054
  %7057 = fmul fast float %7055, %7046
  %7058 = fmul fast float %7056, %7047
  %7059 = call float @dx.op.unary.f32(i32 6, float %7057)  ; FAbs(value)
  %7060 = call float @dx.op.unary.f32(i32 6, float %7058)  ; FAbs(value)
  %7061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7062 = extractvalue %dx.types.CBufRet.f32 %7061, 0
  %7063 = call float @dx.op.binary.f32(i32 35, float %7059, float %7060)  ; FMax(a,b)
  %7064 = fsub fast float %7062, %7063
  %7065 = call float @dx.op.unary.f32(i32 7, float %7064)  ; Saturate(value)
  %7066 = fcmp fast ogt float %7065, 0.000000e+00
  br i1 %7066, label %7067, label %7108, !dx.controlflow.hints !163

; <label>:7067                                    ; preds = %7008
  %7068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %61, float %7041, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 1
  %7070 = fcmp fast ogt float %7069, 0.000000e+00
  br i1 %7070, label %7071, label %7103

; <label>:7071                                    ; preds = %7067
  %7072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %61, float %7041, float %7042, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7073 = extractvalue %dx.types.ResRet.f32 %7072, 0
  %7074 = extractvalue %dx.types.ResRet.f32 %7072, 1
  %7075 = extractvalue %dx.types.ResRet.f32 %7072, 2
  %7076 = extractvalue %dx.types.ResRet.f32 %7072, 3
  %7077 = fsub fast float 1.000000e+00, %7023
  %7078 = fsub fast float %7077, %7034
  %7079 = fmul fast float %7078, 0x400921FB60000000
  %7080 = fadd fast float %7079, 0x3FF921FB60000000
  %7081 = call float @dx.op.unary.f32(i32 13, float %7080)  ; Sin(value)
  %7082 = fadd fast float %7081, -1.000000e+00
  %7083 = fmul fast float %7082, 0x3FD45F3060000000
  %7084 = fmul fast float %7078, 0x401921FB60000000
  %7085 = fadd fast float %7084, 0x400921FB60000000
  %7086 = call float @dx.op.unary.f32(i32 13, float %7085)  ; Sin(value)
  %7087 = fadd fast float %7086, 0x3E7777A5C0000000
  %7088 = fmul fast float %7087, 0x3FC45F3060000000
  %7089 = fmul fast float %7078, 0x4022D97C80000000
  %7090 = fadd fast float %7089, 0x4012D97C80000000
  %7091 = call float @dx.op.unary.f32(i32 13, float %7090)  ; Sin(value)
  %7092 = fadd fast float %7091, 1.000000e+00
  %7093 = fmul fast float %7092, 0x3FBB2995E0000000
  %7094 = fmul fast float %7078, 0x402921FB60000000
  %7095 = fadd fast float %7094, 0x401921FB60000000
  %7096 = call float @dx.op.unary.f32(i32 13, float %7095)  ; Sin(value)
  %7097 = fadd fast float %7096, 0xBE8777A5C0000000
  %7098 = fmul fast float %7097, 0x3FB45F3060000000
  %7099 = call float @dx.op.dot4.f32(i32 56, float %7073, float %7074, float %7075, float %7076, float %7083, float %7088, float %7093, float %7098)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7100 = fmul fast float %7099, 0xBFF7154760000000
  %7101 = call float @dx.op.unary.f32(i32 21, float %7100)  ; Exp(value)
  %7102 = call float @dx.op.unary.f32(i32 7, float %7101)  ; Saturate(value)
  br label %7103

; <label>:7103                                    ; preds = %7071, %7067
  %7104 = phi float [ %7102, %7071 ], [ 1.000000e+00, %7067 ]
  %7105 = fadd fast float %7104, -1.000000e+00
  %7106 = fmul fast float %7105, %7065
  %7107 = fadd fast float %7106, 1.000000e+00
  br label %7108

; <label>:7108                                    ; preds = %7103, %7008
  %7109 = phi float [ %7107, %7103 ], [ 1.000000e+00, %7008 ]
  %7110 = fmul fast float %7109, %7004
  %7111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7112 = extractvalue %dx.types.CBufRet.f32 %7111, 0
  %7113 = extractvalue %dx.types.CBufRet.f32 %7111, 1
  %7114 = extractvalue %dx.types.CBufRet.f32 %7111, 2
  %7115 = fadd fast float %7112, %153
  %7116 = fadd fast float %7113, %154
  %7117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7118 = extractvalue %dx.types.CBufRet.f32 %7117, 1
  %7119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.f32 %7119, 0
  %7121 = extractvalue %dx.types.CBufRet.f32 %7119, 1
  %7122 = extractvalue %dx.types.CBufRet.f32 %7119, 2
  %7123 = fsub fast float -0.000000e+00, %7115
  %7124 = fsub fast float -0.000000e+00, %7116
  %7125 = fsub fast float %2610, %7114
  %7126 = fadd fast float %7125, %7118
  %7127 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7123, float %7124, float %7126)  ; Dot3(ax,ay,az,bx,by,bz)
  %7128 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7120, float %7121, float %7122)  ; Dot3(ax,ay,az,bx,by,bz)
  %7129 = fdiv fast float 1.000000e+00, %7128
  %7130 = fmul fast float %7129, %7127
  %7131 = fmul fast float %7120, %7130
  %7132 = fmul fast float %7121, %7130
  %7133 = fadd fast float %7131, %7115
  %7134 = fadd fast float %7132, %7116
  %7135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7136 = extractvalue %dx.types.CBufRet.f32 %7135, 0
  %7137 = extractvalue %dx.types.CBufRet.f32 %7135, 1
  %7138 = fsub fast float %7133, %7136
  %7139 = fsub fast float %7134, %7137
  %7140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7141 = extractvalue %dx.types.CBufRet.f32 %7140, 2
  %7142 = extractvalue %dx.types.CBufRet.f32 %7140, 3
  %7143 = fmul fast float %7138, %7141
  %7144 = fmul fast float %7139, %7142
  %7145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7146 = extractvalue %dx.types.CBufRet.i32 %7145, 3
  %7147 = icmp eq i32 %7146, 0
  br i1 %7147, label %7153, label %7148

; <label>:7148                                    ; preds = %7108
  %7149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %60, float %7143, float %7144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7150 = extractvalue %dx.types.ResRet.f32 %7149, 0
  %7151 = extractvalue %dx.types.ResRet.f32 %7149, 1
  %7152 = extractvalue %dx.types.ResRet.f32 %7149, 2
  br label %7158

; <label>:7153                                    ; preds = %7108
  %7154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %7143, float %7144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7155 = extractvalue %dx.types.ResRet.f32 %7154, 0
  %7156 = extractvalue %dx.types.ResRet.f32 %7154, 1
  %7157 = extractvalue %dx.types.ResRet.f32 %7154, 2
  br label %7158

; <label>:7158                                    ; preds = %7153, %7148
  %7159 = phi float [ %7150, %7148 ], [ %7155, %7153 ]
  %7160 = phi float [ %7151, %7148 ], [ %7156, %7153 ]
  %7161 = phi float [ %7152, %7148 ], [ %7157, %7153 ]
  %7162 = extractvalue %dx.types.CBufRet.f32 %7117, 2
  %7163 = fmul fast float %7162, %7159
  %7164 = extractvalue %dx.types.CBufRet.f32 %7117, 0
  %7165 = fsub fast float %7130, %7164
  %7166 = fsub fast float %7165, %7163
  %7167 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7166)  ; FMax(a,b)
  %7168 = fmul fast float %7167, %7160
  %7169 = call float @dx.op.binary.f32(i32 36, float %7161, float %7168)  ; FMin(a,b)
  %7170 = fmul fast float %7169, 0xBFF7154760000000
  %7171 = call float @dx.op.unary.f32(i32 21, float %7170)  ; Exp(value)
  %7172 = fmul fast float %7110, %7171
  br label %7173

; <label>:7173                                    ; preds = %7158, %7003
  %7174 = phi float [ %7172, %7158 ], [ %7004, %7003 ]
  %7175 = call float @dx.op.binary.f32(i32 36, float %7174, float %7174)  ; FMin(a,b)
  %7176 = call float @dx.op.binary.f32(i32 36, float %7174, float %7175)  ; FMin(a,b)
  %7177 = fcmp fast ogt float %7176, 0.000000e+00
  br i1 %7177, label %7178, label %7307, !dx.controlflow.hints !164

; <label>:7178                                    ; preds = %7173
  %7179 = fmul fast float %7174, %5538
  %7180 = fmul fast float %7174, %5539
  %7181 = fmul fast float %7174, %5540
  %7182 = fsub fast float %5527, %2453
  %7183 = fsub fast float %5528, %2454
  %7184 = fsub fast float %5529, %2455
  %7185 = call float @dx.op.dot3.f32(i32 55, float %7182, float %7183, float %7184, float %7182, float %7183, float %7184)  ; Dot3(ax,ay,az,bx,by,bz)
  %7186 = call float @dx.op.unary.f32(i32 25, float %7185)  ; Rsqrt(value)
  %7187 = fmul fast float %7186, %7182
  %7188 = fmul fast float %7186, %7183
  %7189 = fmul fast float %7186, %7184
  %7190 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %5529, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %7191 = call float @dx.op.dot3.f32(i32 55, float %2611, float %2612, float %2613, float %7187, float %7188, float %7189)  ; Dot3(ax,ay,az,bx,by,bz)
  %7192 = call float @dx.op.unary.f32(i32 7, float %7190)  ; Saturate(value)
  %7193 = fmul fast float %7192, %7192
  %7194 = fmul fast float %7193, %2652
  %7195 = call float @dx.op.unary.f32(i32 7, float %7194)  ; Saturate(value)
  %7196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7197 = extractvalue %dx.types.CBufRet.f32 %7196, 0
  %7198 = bitcast float %7197 to i32
  %7199 = lshr i32 %7198, 8
  %7200 = and i32 %7199, 255
  %7201 = uitofp i32 %7200 to float
  %7202 = fptoui float %7201 to i32
  %7203 = and i32 %7202, 8
  %7204 = icmp ne i32 %7203, 0
  %7205 = select i1 %7204, float %7195, float 1.000000e+00
  %7206 = fmul fast float %7205, %7192
  %7207 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float %7187, float %7188, float %7189)  ; Dot3(ax,ay,az,bx,by,bz)
  %7208 = fmul fast float %7207, %7207
  %7209 = call float @dx.op.unary.f32(i32 6, float %7190)  ; FAbs(value)
  %7210 = fsub fast float 1.000000e+00, %2643
  %7211 = fmul fast float %2616, %2616
  %7212 = fmul fast float %7211, %7210
  %7213 = fadd fast float %7212, %2643
  %7214 = bitcast float %7213 to i32
  %7215 = ashr i32 %7214, 1
  %7216 = add nsw i32 %7215, 532487669
  %7217 = bitcast i32 %7216 to float
  %7218 = fadd fast float %7217, %2616
  %7219 = fmul fast float %2643, %7208
  %7220 = fsub fast float 1.000000e+00, %7208
  %7221 = fadd fast float %7220, %7219
  %7222 = fmul fast float %7209, %7209
  %7223 = fmul fast float %7222, %7210
  %7224 = fadd fast float %7223, %2643
  %7225 = bitcast float %7224 to i32
  %7226 = ashr i32 %7225, 1
  %7227 = add nsw i32 %7226, 532487669
  %7228 = bitcast i32 %7227 to float
  %7229 = fadd fast float %7228, %7209
  %7230 = fmul fast float %7221, %7221
  %7231 = fmul fast float %7230, %7218
  %7232 = fmul fast float %7231, %7229
  %7233 = fdiv fast float 0x3FF0A00000000000, %7232
  %7234 = fmul fast float %7233, %2643
  %7235 = call float @dx.op.unary.f32(i32 6, float %7191)  ; FAbs(value)
  %7236 = fsub fast float 1.000000e+00, %7235
  %7237 = bitcast float %7236 to i32
  %7238 = sitofp i32 %7237 to float
  %7239 = fmul fast float %7238, 5.000000e+00
  %7240 = fadd fast float %7239, 0xC1EFBF8940000000
  %7241 = fptosi float %7240 to i32
  %7242 = bitcast i32 %7241 to float
  %7243 = fmul fast float %7242, %2506
  %7244 = fmul fast float %7242, %2507
  %7245 = fmul fast float %7242, %3717
  %7246 = fadd fast float %7243, %2446
  %7247 = fadd fast float %7244, %2447
  %7248 = fadd fast float %7245, %2614
  %7249 = fmul fast float %7190, 9.843750e-01
  %7250 = fmul fast float %2555, 9.843750e-01
  %7251 = fadd fast float %7249, 7.812500e-03
  %7252 = fadd fast float %7250, 7.812500e-03
  %7253 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7251, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7254 = extractvalue %dx.types.ResRet.f32 %7253, 2
  %7255 = extractvalue %dx.types.ResRet.f32 %7253, 3
  %7256 = fmul fast float %7254, %2446
  %7257 = fmul fast float %7254, %2447
  %7258 = fmul fast float %7254, %2614
  %7259 = fadd fast float %7256, %7255
  %7260 = fadd fast float %7257, %7255
  %7261 = fadd fast float %7258, %7255
  %7262 = call float @dx.op.binary.f32(i32 35, float %7260, float %7261)  ; FMax(a,b)
  %7263 = call float @dx.op.binary.f32(i32 35, float %7259, float %7262)  ; FMax(a,b)
  %7264 = fsub fast float 1.000000e+00, %7263
  %7265 = fsub fast float -0.000000e+00, %2425
  %7266 = fsub fast float -0.000000e+00, %2426
  %7267 = fsub fast float -0.000000e+00, %2427
  %7268 = call float @dx.op.dot3.f32(i32 55, float %5527, float %5528, float %5529, float %7265, float %7266, float %7267)  ; Dot3(ax,ay,az,bx,by,bz)
  %7269 = call float @dx.op.unary.f32(i32 7, float %7268)  ; Saturate(value)
  %7270 = fmul fast float %7269, 9.843750e-01
  %7271 = fadd fast float %7270, 7.812500e-03
  %7272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7271, float %7252, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7273 = extractvalue %dx.types.ResRet.f32 %7272, 2
  %7274 = extractvalue %dx.types.ResRet.f32 %7272, 3
  %7275 = fmul fast float %7273, %2446
  %7276 = fmul fast float %7273, %2447
  %7277 = fmul fast float %7273, %2614
  %7278 = fadd fast float %7275, %7274
  %7279 = fadd fast float %7276, %7274
  %7280 = fadd fast float %7277, %7274
  %7281 = call float @dx.op.binary.f32(i32 35, float %7279, float %7280)  ; FMax(a,b)
  %7282 = call float @dx.op.binary.f32(i32 35, float %7278, float %7281)  ; FMax(a,b)
  %7283 = fsub fast float 1.000000e+00, %7282
  %7284 = fmul fast float %7283, %7269
  %7285 = fmul fast float %7284, %2558
  %7286 = fmul fast float %7264, %7206
  %7287 = fmul fast float %7206, %7234
  %7288 = fmul fast float %7287, %7246
  %7289 = fmul fast float %7287, %7247
  %7290 = fmul fast float %7287, %7248
  %7291 = fadd fast float %7285, %7286
  %7292 = fmul fast float %7291, %7179
  %7293 = fmul fast float %7291, %7180
  %7294 = fmul fast float %7291, %7181
  %7295 = fadd fast float %7292, %5514
  %7296 = fadd fast float %7293, %5515
  %7297 = fadd fast float %7294, %5516
  %7298 = fmul fast float %7288, %7179
  %7299 = fmul fast float %7289, %7180
  %7300 = fmul fast float %7290, %7181
  %7301 = fadd fast float %7298, %5520
  %7302 = fadd fast float %7299, %5521
  %7303 = fadd fast float %7300, %5522
  %7304 = fadd fast float %7298, %5517
  %7305 = fadd fast float %7299, %5518
  %7306 = fadd fast float %7300, %5519
  br label %7307

; <label>:7307                                    ; preds = %7178, %7173, %5507
  %7308 = phi i32 [ %5690, %7178 ], [ %5509, %5507 ], [ %5690, %7173 ]
  %7309 = phi i32 [ 1, %7178 ], [ 0, %5507 ], [ 0, %7173 ]
  %7310 = phi float [ %7298, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7311 = phi float [ %7299, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7312 = phi float [ %7300, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7313 = phi float [ %7292, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7314 = phi float [ %7293, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7315 = phi float [ %7294, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7316 = phi float [ %7304, %7178 ], [ %5517, %5507 ], [ %5517, %7173 ]
  %7317 = phi float [ %7305, %7178 ], [ %5518, %5507 ], [ %5518, %7173 ]
  %7318 = phi float [ %7306, %7178 ], [ %5519, %5507 ], [ %5519, %7173 ]
  %7319 = phi float [ %7295, %7178 ], [ %5514, %5507 ], [ %5514, %7173 ]
  %7320 = phi float [ %7296, %7178 ], [ %5515, %5507 ], [ %5515, %7173 ]
  %7321 = phi float [ %7297, %7178 ], [ %5516, %5507 ], [ %5516, %7173 ]
  %7322 = phi float [ %7174, %7178 ], [ 0.000000e+00, %5507 ], [ 0.000000e+00, %7173 ]
  %7323 = phi float [ %7301, %7178 ], [ %5520, %5507 ], [ %5520, %7173 ]
  %7324 = phi float [ %7302, %7178 ], [ %5521, %5507 ], [ %5521, %7173 ]
  %7325 = phi float [ %7303, %7178 ], [ %5522, %5507 ], [ %5522, %7173 ]
  %7326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7327 = extractvalue %dx.types.CBufRet.i32 %7326, 0
  %7328 = icmp eq i32 %7327, 0
  br i1 %7328, label %8211, label %7329

; <label>:7329                                    ; preds = %7307
  %7330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7331 = extractvalue %dx.types.CBufRet.f32 %7330, 2
  %7332 = extractvalue %dx.types.CBufRet.f32 %7330, 3
  %7333 = fmul fast float %7331, %98
  %7334 = fmul fast float %7332, %99
  %7335 = fptoui float %7333 to i32
  %7336 = fptoui float %7334 to i32
  %7337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7338 = extractvalue %dx.types.CBufRet.f32 %7337, 0
  %7339 = extractvalue %dx.types.CBufRet.f32 %7337, 2
  %7340 = extractvalue %dx.types.CBufRet.f32 %7337, 3
  %7341 = fadd fast float %87, -4.000000e+00
  %7342 = call float @dx.op.binary.f32(i32 35, float %7341, float 0.000000e+00)  ; FMax(a,b)
  %7343 = fadd fast float %7342, %7338
  %7344 = fmul fast float %7343, %7339
  %7345 = call float @dx.op.unary.f32(i32 23, float %7344)  ; Log(value)
  %7346 = fmul fast float %7345, %7340
  %7347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7348 = extractvalue %dx.types.CBufRet.f32 %7347, 2
  %7349 = fmul fast float %7346, %7348
  %7350 = call float @dx.op.unary.f32(i32 7, float %7349)  ; Saturate(value)
  %7351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7352 = extractvalue %dx.types.CBufRet.i32 %7351, 1
  %7353 = add i32 %7352, -1
  %7354 = uitofp i32 %7352 to float
  %7355 = fmul fast float %7354, %7350
  %7356 = fptoui float %7355 to i32
  %7357 = call i32 @dx.op.binary.i32(i32 40, i32 %7356, i32 %7353)  ; UMin(a,b)
  %7358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7359 = extractvalue %dx.types.CBufRet.i32 %7358, 2
  %7360 = extractvalue %dx.types.CBufRet.i32 %7358, 3
  %7361 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7336, i32 %7359, i32 %7335)  ; UMad(a,b,c)
  %7362 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7357, i32 %7360, i32 %7361)  ; UMad(a,b,c)
  %7363 = add nsw i32 %7327, -1
  %7364 = call i32 @dx.op.binary.i32(i32 37, i32 %7363, i32 0)  ; IMax(a,b)
  %7365 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %7366 = fptoui float %7365 to i32
  %7367 = lshr i32 %7366, 5
  %7368 = call i32 @dx.op.binary.i32(i32 40, i32 %7367, i32 8191)  ; UMin(a,b)
  %7369 = shl i32 %7368, 2
  %7370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %7369, i32 undef)  ; BufferLoad(srv,index,wot)
  %7371 = extractvalue %dx.types.ResRet.i32 %7370, 0
  %7372 = lshr i32 %7371, 16
  %7373 = and i32 %7371, 65535
  %7374 = lshr i32 %7371, 21
  %7375 = lshr i32 %7373, 5
  %7376 = call i32 @dx.op.binary.i32(i32 40, i32 %7375, i32 %7364)  ; UMin(a,b)
  %7377 = icmp ugt i32 %7374, %7376
  br i1 %7377, label %8144, label %7378

; <label>:7378                                    ; preds = %7329
  br label %7379

; <label>:7379                                    ; preds = %8113, %7378
  %7380 = phi i32 [ %8114, %8113 ], [ %7308, %7378 ]
  %7381 = phi i32 [ %8115, %8113 ], [ 0, %7378 ]
  %7382 = phi i32 [ %8116, %8113 ], [ 0, %7378 ]
  %7383 = phi i32 [ %8117, %8113 ], [ 0, %7378 ]
  %7384 = phi i32 [ %8118, %8113 ], [ 0, %7378 ]
  %7385 = phi i32 [ %8119, %8113 ], [ 0, %7378 ]
  %7386 = phi i32 [ %8120, %8113 ], [ 0, %7378 ]
  %7387 = phi i32 [ %8121, %8113 ], [ 0, %7378 ]
  %7388 = phi i32 [ %8122, %8113 ], [ 0, %7378 ]
  %7389 = phi i32 [ %8141, %8113 ], [ %7374, %7378 ]
  %7390 = phi float [ %8123, %8113 ], [ %7310, %7378 ]
  %7391 = phi float [ %8124, %8113 ], [ %7311, %7378 ]
  %7392 = phi float [ %8125, %8113 ], [ %7312, %7378 ]
  %7393 = phi float [ %8126, %8113 ], [ %7313, %7378 ]
  %7394 = phi float [ %8127, %8113 ], [ %7314, %7378 ]
  %7395 = phi float [ %8128, %8113 ], [ %7315, %7378 ]
  %7396 = phi float [ %8129, %8113 ], [ %7316, %7378 ]
  %7397 = phi float [ %8130, %8113 ], [ %7317, %7378 ]
  %7398 = phi float [ %8131, %8113 ], [ %7318, %7378 ]
  %7399 = phi float [ %8132, %8113 ], [ %7319, %7378 ]
  %7400 = phi float [ %8133, %8113 ], [ %7320, %7378 ]
  %7401 = phi float [ %8134, %8113 ], [ %7321, %7378 ]
  %7402 = phi float [ %8135, %8113 ], [ %7323, %7378 ]
  %7403 = phi float [ %8136, %8113 ], [ %7324, %7378 ]
  %7404 = phi float [ %8137, %8113 ], [ %7325, %7378 ]
  %7405 = phi float [ %8138, %8113 ], [ %7319, %7378 ]
  %7406 = phi float [ %8139, %8113 ], [ %7320, %7378 ]
  %7407 = phi float [ %8140, %8113 ], [ %7321, %7378 ]
  %7408 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7409 = extractvalue %dx.types.CBufRet.i32 %7408, 0
  %7410 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7362, i32 %7409, i32 %7389)  ; UMad(a,b,c)
  %7411 = shl i32 %7410, 2
  %7412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7411, i32 undef)  ; BufferLoad(srv,index,wot)
  %7413 = extractvalue %dx.types.ResRet.i32 %7412, 0
  %7414 = shl i32 %7389, 5
  %7415 = sub nsw i32 %7372, %7414
  %7416 = call i32 @dx.op.binary.i32(i32 37, i32 %7415, i32 0)  ; IMax(a,b)
  %7417 = call i32 @dx.op.binary.i32(i32 38, i32 %7416, i32 31)  ; IMin(a,b)
  %7418 = sub nsw i32 1, %7372
  %7419 = add nsw i32 %7418, %7373
  %7420 = call i32 @dx.op.binary.i32(i32 37, i32 %7419, i32 0)  ; IMax(a,b)
  %7421 = call i32 @dx.op.binary.i32(i32 38, i32 %7420, i32 32)  ; IMin(a,b)
  %7422 = and i32 %7421, 31
  %7423 = shl i32 -1, %7422
  %7424 = xor i32 %7423, -1
  %7425 = and i32 %7417, 31
  %7426 = shl i32 %7424, %7425
  %7427 = icmp eq i32 %7421, 32
  %7428 = select i1 %7427, i32 -1, i32 %7426
  %7429 = and i32 %7428, %7413
  %7430 = icmp eq i32 %7429, 0
  br i1 %7430, label %8113, label %7431

; <label>:7431                                    ; preds = %7379
  br label %7432

; <label>:7432                                    ; preds = %7626, %7431
  %7433 = phi i32 [ %7627, %7626 ], [ %7380, %7431 ]
  %7434 = phi i32 [ %7616, %7626 ], [ %7381, %7431 ]
  %7435 = phi i32 [ %7618, %7626 ], [ %7382, %7431 ]
  %7436 = phi i32 [ %7620, %7626 ], [ %7383, %7431 ]
  %7437 = phi i32 [ %7622, %7626 ], [ %7384, %7431 ]
  %7438 = phi i32 [ %7628, %7626 ], [ %7385, %7431 ]
  %7439 = phi i32 [ %7629, %7626 ], [ %7386, %7431 ]
  %7440 = phi i32 [ %7630, %7626 ], [ %7387, %7431 ]
  %7441 = phi i32 [ %7631, %7626 ], [ %7388, %7431 ]
  %7442 = phi i32 [ %7465, %7626 ], [ %7429, %7431 ]
  %7443 = phi float [ %7632, %7626 ], [ %7390, %7431 ]
  %7444 = phi float [ %7633, %7626 ], [ %7391, %7431 ]
  %7445 = phi float [ %7634, %7626 ], [ %7392, %7431 ]
  %7446 = phi float [ %7635, %7626 ], [ %7393, %7431 ]
  %7447 = phi float [ %7636, %7626 ], [ %7394, %7431 ]
  %7448 = phi float [ %7637, %7626 ], [ %7395, %7431 ]
  %7449 = phi float [ %7638, %7626 ], [ %7396, %7431 ]
  %7450 = phi float [ %7639, %7626 ], [ %7397, %7431 ]
  %7451 = phi float [ %7640, %7626 ], [ %7398, %7431 ]
  %7452 = phi float [ %7641, %7626 ], [ %7399, %7431 ]
  %7453 = phi float [ %7642, %7626 ], [ %7400, %7431 ]
  %7454 = phi float [ %7643, %7626 ], [ %7401, %7431 ]
  %7455 = phi float [ %7644, %7626 ], [ %7402, %7431 ]
  %7456 = phi float [ %7645, %7626 ], [ %7403, %7431 ]
  %7457 = phi float [ %7646, %7626 ], [ %7404, %7431 ]
  %7458 = phi float [ %7647, %7626 ], [ %7405, %7431 ]
  %7459 = phi float [ %7648, %7626 ], [ %7406, %7431 ]
  %7460 = phi float [ %7649, %7626 ], [ %7407, %7431 ]
  %7461 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7442)  ; FirstbitLo(value)
  %7462 = add i32 %7461, %7414
  %7463 = and i32 %7461, 31
  %7464 = shl i32 1, %7463
  %7465 = xor i32 %7464, %7442
  %7466 = mul i32 %7462, 112
  %7467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7466, i32 undef)  ; BufferLoad(srv,index,wot)
  %7468 = extractvalue %dx.types.ResRet.f32 %7467, 0
  %7469 = extractvalue %dx.types.ResRet.f32 %7467, 1
  %7470 = extractvalue %dx.types.ResRet.f32 %7467, 2
  %7471 = or i32 %7466, 12
  %7472 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7471, i32 undef)  ; BufferLoad(srv,index,wot)
  %7473 = extractvalue %dx.types.ResRet.f32 %7472, 0
  %7474 = add i32 %7466, 16
  %7475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7474, i32 undef)  ; BufferLoad(srv,index,wot)
  %7476 = extractvalue %dx.types.ResRet.f32 %7475, 0
  %7477 = extractvalue %dx.types.ResRet.f32 %7475, 1
  %7478 = extractvalue %dx.types.ResRet.f32 %7475, 2
  %7479 = add i32 %7466, 28
  %7480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7479, i32 undef)  ; BufferLoad(srv,index,wot)
  %7481 = extractvalue %dx.types.ResRet.i32 %7480, 0
  %7482 = add i32 %7466, 32
  %7483 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7482, i32 undef)  ; BufferLoad(srv,index,wot)
  %7484 = extractvalue %dx.types.ResRet.f32 %7483, 0
  %7485 = extractvalue %dx.types.ResRet.f32 %7483, 1
  %7486 = extractvalue %dx.types.ResRet.f32 %7483, 2
  %7487 = add i32 %7466, 44
  %7488 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7487, i32 undef)  ; BufferLoad(srv,index,wot)
  %7489 = extractvalue %dx.types.ResRet.f32 %7488, 0
  %7490 = add i32 %7466, 48
  %7491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7490, i32 undef)  ; BufferLoad(srv,index,wot)
  %7492 = extractvalue %dx.types.ResRet.f32 %7491, 0
  %7493 = extractvalue %dx.types.ResRet.f32 %7491, 1
  %7494 = extractvalue %dx.types.ResRet.f32 %7491, 2
  %7495 = extractvalue %dx.types.ResRet.f32 %7491, 3
  %7496 = add i32 %7466, 64
  %7497 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7496, i32 undef)  ; BufferLoad(srv,index,wot)
  %7498 = extractvalue %dx.types.ResRet.f32 %7497, 0
  %7499 = extractvalue %dx.types.ResRet.f32 %7497, 1
  %7500 = extractvalue %dx.types.ResRet.f32 %7497, 2
  %7501 = extractvalue %dx.types.ResRet.f32 %7497, 3
  %7502 = add i32 %7466, 80
  %7503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7502, i32 undef)  ; BufferLoad(srv,index,wot)
  %7504 = extractvalue %dx.types.ResRet.f32 %7503, 1
  %7505 = extractvalue %dx.types.ResRet.f32 %7503, 2
  %7506 = add i32 %7466, 92
  %7507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %7506, i32 undef)  ; BufferLoad(srv,index,wot)
  %7508 = extractvalue %dx.types.ResRet.i32 %7507, 0
  %7509 = call float @dx.op.dot3.f32(i32 55, float %7468, float %7469, float %7470, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7510 = select i1 %2609, float %7504, float %7468
  %7511 = select i1 %2609, float %7509, float %7469
  %7512 = select i1 %2609, float %7505, float %7470
  %7513 = and i32 %7508, 65535
  %7514 = uitofp i32 %7513 to float
  %7515 = lshr i32 %7508, 16
  %7516 = uitofp i32 %7515 to float
  %7517 = and i32 %7481, 65535
  %7518 = lshr i32 %7481, 24
  %7519 = and i32 %7518, 3
  %7520 = and i32 %7481, 536870912
  %7521 = icmp ne i32 %7520, 0
  %7522 = icmp eq i32 %7519, 2
  %7523 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7486, float %7484, float %7485, float %7486)  ; Dot3(ax,ay,az,bx,by,bz)
  %7524 = fsub fast float %153, %7492
  %7525 = fsub fast float %154, %7493
  %7526 = fsub fast float %155, %7494
  %7527 = call float @dx.op.dot3.f32(i32 55, float %7524, float %7525, float %7526, float %7484, float %7485, float %7486)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = fdiv fast float %7527, %7523
  %7529 = call float @dx.op.binary.f32(i32 35, float %7528, float -1.000000e+00)  ; FMax(a,b)
  %7530 = call float @dx.op.binary.f32(i32 36, float %7529, float 1.000000e+00)  ; FMin(a,b)
  %7531 = fmul fast float %7530, %7484
  %7532 = fmul fast float %7530, %7485
  %7533 = fmul fast float %7530, %7486
  %7534 = fadd fast float %7531, %7492
  %7535 = fadd fast float %7532, %7493
  %7536 = fadd fast float %7533, %7494
  %7537 = fsub fast float %7534, %153
  %7538 = fsub fast float %7535, %154
  %7539 = fsub fast float %7536, %155
  %7540 = call float @dx.op.dot3.f32(i32 55, float %7537, float %7538, float %7539, float %7537, float %7538, float %7539)  ; Dot3(ax,ay,az,bx,by,bz)
  %7541 = call float @dx.op.unary.f32(i32 24, float %7540)  ; Sqrt(value)
  %7542 = fdiv fast float 1.000000e+00, %7541
  %7543 = fmul fast float %7537, %7542
  %7544 = fmul fast float %7538, %7542
  %7545 = fmul fast float %7539, %7542
  %7546 = fadd fast float %7541, %7473
  %7547 = fdiv fast float 1.000000e+00, %7546
  %7548 = fmul float %7489, %7547
  %7549 = fmul float %7548, %7548
  %7550 = call float @dx.op.unary.f32(i32 7, float %7549)  ; Saturate(value)
  br i1 %7522, label %7551, label %7575

; <label>:7551                                    ; preds = %7432
  %7552 = fmul fast float %7500, %7476
  %7553 = fmul fast float %7500, %7477
  %7554 = fmul fast float %7500, %7478
  %7555 = fsub fast float %7552, %153
  %7556 = fadd fast float %7555, %7534
  %7557 = fsub fast float %7553, %154
  %7558 = fadd fast float %7557, %7535
  %7559 = fsub fast float %7554, %155
  %7560 = fadd fast float %7559, %7536
  %7561 = call float @dx.op.dot3.f32(i32 55, float %7556, float %7558, float %7560, float %7556, float %7558, float %7560)  ; Dot3(ax,ay,az,bx,by,bz)
  %7562 = call float @dx.op.unary.f32(i32 25, float %7561)  ; Rsqrt(value)
  %7563 = fmul fast float %7562, %7556
  %7564 = fmul fast float %7562, %7558
  %7565 = fmul fast float %7562, %7560
  %7566 = fsub fast float %153, %7534
  %7567 = fsub fast float %154, %7535
  %7568 = fsub fast float %155, %7536
  %7569 = fsub fast float -0.000000e+00, %7566
  %7570 = fsub fast float -0.000000e+00, %7567
  %7571 = fsub fast float -0.000000e+00, %7568
  %7572 = call float @dx.op.dot3.f32(i32 55, float %7569, float %7570, float %7571, float %7476, float %7477, float %7478)  ; Dot3(ax,ay,az,bx,by,bz)
  %7573 = fcmp fast ogt float %7572, 0.000000e+00
  %7574 = uitofp i1 %7573 to float
  br label %7575

; <label>:7575                                    ; preds = %7551, %7432
  %7576 = phi float [ %7574, %7551 ], [ 1.000000e+00, %7432 ]
  %7577 = phi float [ %7563, %7551 ], [ %7543, %7432 ]
  %7578 = phi float [ %7564, %7551 ], [ %7544, %7432 ]
  %7579 = phi float [ %7565, %7551 ], [ %7545, %7432 ]
  %7580 = call float @dx.op.dot3.f32(i32 55, float %7476, float %7477, float %7478, float %7577, float %7578, float %7579)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = fmul fast float %7580, %7580
  %7582 = call float @dx.op.unary.f32(i32 7, float %7581)  ; Saturate(value)
  %7583 = fsub fast float 1.000000e+00, %7582
  %7584 = fmul fast float %7583, 5.000000e-01
  %7585 = fcmp fast ogt float %7580, 0.000000e+00
  %7586 = fsub fast float 1.000000e+00, %7584
  %7587 = select i1 %7585, float %7584, float %7586
  %7588 = fmul fast float %7587, %7516
  %7589 = fadd fast float %7588, %7514
  %7590 = fmul fast float %7589, 0x3EF0001000000000
  %7591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %61, float %7590, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7592 = extractvalue %dx.types.ResRet.f32 %7591, 0
  %7593 = fmul fast float %7580, %7498
  %7594 = fadd fast float %7593, %7499
  %7595 = call float @dx.op.unary.f32(i32 7, float %7594)  ; Saturate(value)
  %7596 = select i1 %7522, float 1.000000e+00, float %7595
  %7597 = select i1 %7522, float %7595, float 1.000000e+00
  %7598 = fmul fast float %7541, %7495
  %7599 = fsub fast float 1.000000e+00, %7598
  %7600 = fmul fast float %7599, %7501
  %7601 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  %7602 = fmul fast float %7601, %7597
  %7603 = fmul fast float %7602, 2.000000e+00
  %7604 = fsub fast float 3.000000e+00, %7603
  %7605 = fmul fast float %7592, %7576
  %7606 = fmul fast float %7602, %7602
  %7607 = fmul fast float %7606, %7605
  %7608 = fmul fast float %7607, %7604
  %7609 = xor i1 %7521, true
  %7610 = and i1 %7522, %7609
  %7611 = icmp ne i32 %7519, 2
  %7612 = and i1 %7611, %7609
  %7613 = and i1 %7521, %7522
  %7614 = and i1 %7521, %7611
  %7615 = zext i1 %7610 to i32
  %7616 = add i32 %7615, %7434
  %7617 = zext i1 %7612 to i32
  %7618 = add i32 %7617, %7435
  %7619 = zext i1 %7613 to i32
  %7620 = add i32 %7619, %7436
  %7621 = zext i1 %7614 to i32
  %7622 = add i32 %7621, %7437
  %7623 = call float @dx.op.binary.f32(i32 36, float %7608, float %7608)  ; FMin(a,b)
  %7624 = call float @dx.op.binary.f32(i32 36, float %7608, float %7623)  ; FMin(a,b)
  %7625 = fcmp fast ogt float %7624, 0.000000e+00
  br i1 %7625, label %7651, label %7626, !dx.controlflow.hints !165

; <label>:7626                                    ; preds = %8097, %7575
  %7627 = phi i32 [ %8107, %8097 ], [ %7433, %7575 ]
  %7628 = phi i32 [ %8108, %8097 ], [ %7438, %7575 ]
  %7629 = phi i32 [ %8109, %8097 ], [ %7439, %7575 ]
  %7630 = phi i32 [ %8110, %8097 ], [ %7440, %7575 ]
  %7631 = phi i32 [ %8111, %8097 ], [ %7441, %7575 ]
  %7632 = phi float [ %8068, %8097 ], [ %7443, %7575 ]
  %7633 = phi float [ %8069, %8097 ], [ %7444, %7575 ]
  %7634 = phi float [ %8070, %8097 ], [ %7445, %7575 ]
  %7635 = phi float [ %8071, %8097 ], [ %7446, %7575 ]
  %7636 = phi float [ %8072, %8097 ], [ %7447, %7575 ]
  %7637 = phi float [ %8073, %8097 ], [ %7448, %7575 ]
  %7638 = phi float [ %8074, %8097 ], [ %7449, %7575 ]
  %7639 = phi float [ %8075, %8097 ], [ %7450, %7575 ]
  %7640 = phi float [ %8076, %8097 ], [ %7451, %7575 ]
  %7641 = phi float [ %8077, %8097 ], [ %7452, %7575 ]
  %7642 = phi float [ %8078, %8097 ], [ %7453, %7575 ]
  %7643 = phi float [ %8079, %8097 ], [ %7454, %7575 ]
  %7644 = phi float [ %8080, %8097 ], [ %7455, %7575 ]
  %7645 = phi float [ %8081, %8097 ], [ %7456, %7575 ]
  %7646 = phi float [ %8082, %8097 ], [ %7457, %7575 ]
  %7647 = phi float [ %8083, %8097 ], [ %7458, %7575 ]
  %7648 = phi float [ %8084, %8097 ], [ %7459, %7575 ]
  %7649 = phi float [ %8085, %8097 ], [ %7460, %7575 ]
  %7650 = icmp eq i32 %7442, %7464
  br i1 %7650, label %8112, label %7432

; <label>:7651                                    ; preds = %7575
  %7652 = icmp eq i32 %7517, 255
  br i1 %7652, label %7790, label %7653, !dx.controlflow.hints !166

; <label>:7653                                    ; preds = %7651
  %7654 = mul nuw nsw i32 %7517, 176
  %7655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7654, i32 undef)  ; BufferLoad(srv,index,wot)
  %7656 = extractvalue %dx.types.ResRet.f32 %7655, 0
  %7657 = extractvalue %dx.types.ResRet.f32 %7655, 1
  %7658 = extractvalue %dx.types.ResRet.f32 %7655, 2
  %7659 = extractvalue %dx.types.ResRet.f32 %7655, 3
  %7660 = add nuw nsw i32 %7654, 16
  %7661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7660, i32 undef)  ; BufferLoad(srv,index,wot)
  %7662 = extractvalue %dx.types.ResRet.f32 %7661, 0
  %7663 = extractvalue %dx.types.ResRet.f32 %7661, 1
  %7664 = add nuw nsw i32 %7654, 32
  %7665 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7664, i32 undef)  ; BufferLoad(srv,index,wot)
  %7666 = extractvalue %dx.types.ResRet.f32 %7665, 0
  %7667 = extractvalue %dx.types.ResRet.f32 %7665, 1
  %7668 = add nuw nsw i32 %7654, 48
  %7669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7668, i32 undef)  ; BufferLoad(srv,index,wot)
  %7670 = extractvalue %dx.types.ResRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.ResRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.ResRet.f32 %7669, 2
  %7673 = extractvalue %dx.types.ResRet.f32 %7669, 3
  %7674 = add nuw nsw i32 %7654, 64
  %7675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7674, i32 undef)  ; BufferLoad(srv,index,wot)
  %7676 = extractvalue %dx.types.ResRet.f32 %7675, 0
  %7677 = extractvalue %dx.types.ResRet.f32 %7675, 1
  %7678 = extractvalue %dx.types.ResRet.f32 %7675, 2
  %7679 = extractvalue %dx.types.ResRet.f32 %7675, 3
  %7680 = add nuw nsw i32 %7654, 80
  %7681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7680, i32 undef)  ; BufferLoad(srv,index,wot)
  %7682 = extractvalue %dx.types.ResRet.f32 %7681, 0
  %7683 = extractvalue %dx.types.ResRet.f32 %7681, 1
  %7684 = extractvalue %dx.types.ResRet.f32 %7681, 2
  %7685 = extractvalue %dx.types.ResRet.f32 %7681, 3
  %7686 = add nuw nsw i32 %7654, 96
  %7687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7686, i32 undef)  ; BufferLoad(srv,index,wot)
  %7688 = extractvalue %dx.types.ResRet.f32 %7687, 0
  %7689 = extractvalue %dx.types.ResRet.f32 %7687, 1
  %7690 = extractvalue %dx.types.ResRet.f32 %7687, 2
  %7691 = extractvalue %dx.types.ResRet.f32 %7687, 3
  %7692 = bitcast float %7663 to i32
  %7693 = fmul fast float %7670, %153
  %7694 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7676, float %7693)  ; FMad(a,b,c)
  %7695 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7682, float %7694)  ; FMad(a,b,c)
  %7696 = fadd fast float %7695, %7688
  %7697 = fmul fast float %7671, %153
  %7698 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7677, float %7697)  ; FMad(a,b,c)
  %7699 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7683, float %7698)  ; FMad(a,b,c)
  %7700 = fadd fast float %7699, %7689
  %7701 = fmul fast float %7672, %153
  %7702 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7678, float %7701)  ; FMad(a,b,c)
  %7703 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7684, float %7702)  ; FMad(a,b,c)
  %7704 = fadd fast float %7703, %7690
  %7705 = fmul fast float %7673, %153
  %7706 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7679, float %7705)  ; FMad(a,b,c)
  %7707 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7685, float %7706)  ; FMad(a,b,c)
  %7708 = fadd fast float %7707, %7691
  %7709 = fdiv fast float %7696, %7708
  %7710 = fdiv fast float %7700, %7708
  %7711 = fdiv fast float %7704, %7708
  %7712 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7711)  ; FMax(a,b)
  %7713 = fmul fast float %1899, 0x401921FB60000000
  %7714 = call float @dx.op.unary.f32(i32 13, float %7713)  ; Sin(value)
  %7715 = call float @dx.op.unary.f32(i32 12, float %7713)  ; Cos(value)
  %7716 = fmul fast float %7715, %7667
  %7717 = call float @dx.op.tertiary.f32(i32 46, float %7714, float %7667, float 0.000000e+00)  ; FMad(a,b,c)
  %7718 = fmul fast float %7667, %7714
  %7719 = fsub fast float -0.000000e+00, %7718
  %7720 = call float @dx.op.tertiary.f32(i32 46, float %7715, float %7667, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7721

; <label>:7721                                    ; preds = %7721, %7653
  %7722 = phi float [ 0.000000e+00, %7653 ], [ %7754, %7721 ]
  %7723 = phi float [ 0.000000e+00, %7653 ], [ %7756, %7721 ]
  %7724 = phi i32 [ 0, %7653 ], [ %7757, %7721 ]
  %7725 = mul i32 %7724, 2
  %7726 = add i32 0, %7725
  %7727 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7726
  %7728 = load float, float* %7727, align 4
  %7729 = mul i32 %7724, 2
  %7730 = add i32 1, %7729
  %7731 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7730
  %7732 = load float, float* %7731, align 4
  %7733 = fmul fast float %7716, %7728
  %7734 = call float @dx.op.tertiary.f32(i32 46, float %7732, float %7719, float %7733)  ; FMad(a,b,c)
  %7735 = fmul fast float %7728, %7717
  %7736 = call float @dx.op.tertiary.f32(i32 46, float %7732, float %7720, float %7735)  ; FMad(a,b,c)
  %7737 = fadd fast float %7734, %7709
  %7738 = fadd fast float %7736, %7710
  %7739 = fmul fast float %7737, %7662
  %7740 = fmul fast float %7738, %7662
  %7741 = call float @dx.op.binary.f32(i32 35, float %7739, float %7658)  ; FMax(a,b)
  %7742 = call float @dx.op.binary.f32(i32 35, float %7740, float %7658)  ; FMax(a,b)
  %7743 = call float @dx.op.binary.f32(i32 36, float %7741, float %7659)  ; FMin(a,b)
  %7744 = call float @dx.op.binary.f32(i32 36, float %7742, float %7659)  ; FMin(a,b)
  %7745 = fadd fast float %7743, %7656
  %7746 = fadd fast float %7744, %7657
  %7747 = uitofp i32 %7692 to float
  %7748 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %62, float %7745, float %7746, float %7747, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7749 = extractvalue %dx.types.ResRet.f32 %7748, 0
  %7750 = fsub fast float %7749, %7712
  %7751 = fsub fast float %7750, %7666
  %7752 = fcmp fast ogt float %7751, 0.000000e+00
  %7753 = select i1 %7752, float 1.000000e+00, float 0.000000e+00
  %7754 = fadd fast float %7753, %7722
  %7755 = select i1 %7752, float %7751, float 0.000000e+00
  %7756 = fadd fast float %7755, %7723
  %7757 = add nuw nsw i32 %7724, 1
  %7758 = icmp eq i32 %7757, 8
  br i1 %7758, label %7759, label %7721

; <label>:7759                                    ; preds = %7721
  %7760 = fdiv fast float 1.000000e+00, %7754
  %7761 = fmul fast float %7760, %7756
  %7762 = fdiv fast float 1.000000e+00, %7712
  %7763 = fmul fast float %7761, %7762
  %7764 = call float @dx.op.unary.f32(i32 7, float %7763)  ; Saturate(value)
  %7765 = call float @dx.op.binary.f32(i32 35, float %7764, float 0.000000e+00)  ; FMax(a,b)
  %7766 = fmul fast float %7754, 1.250000e-01
  %7767 = call float @dx.op.unary.f32(i32 7, float %7766)  ; Saturate(value)
  %7768 = fmul fast float %7767, 2.000000e+00
  %7769 = fadd fast float %7768, -1.000000e+00
  %7770 = fcmp fast ogt float %7769, 0.000000e+00
  %7771 = fcmp fast olt float %7769, 0.000000e+00
  %7772 = zext i1 %7770 to i32
  %7773 = zext i1 %7771 to i32
  %7774 = sub nsw i32 %7772, %7773
  %7775 = sitofp i32 %7774 to float
  %7776 = fmul fast float %7775, %7769
  %7777 = fsub fast float 1.000000e+00, %7776
  %7778 = fmul fast float %7777, %7777
  %7779 = fmul fast float %7778, %7777
  %7780 = fsub fast float %7777, %7779
  %7781 = fmul fast float %7780, %7765
  %7782 = fsub fast float 1.000000e+00, %7779
  %7783 = fsub fast float %7782, %7781
  %7784 = fmul fast float %7775, 5.000000e-01
  %7785 = fmul fast float %7784, %7783
  %7786 = fsub fast float -5.000000e-01, %7785
  %7787 = fmul fast float %7786, %7596
  %7788 = fadd fast float %7787, 1.000000e+00
  %7789 = fmul fast float %7788, %7608
  br label %7790

; <label>:7790                                    ; preds = %7759, %7651
  %7791 = phi float [ %7789, %7759 ], [ %7608, %7651 ]
  %7792 = call float @dx.op.binary.f32(i32 36, float %7791, float %7791)  ; FMin(a,b)
  %7793 = call float @dx.op.binary.f32(i32 36, float %7791, float %7792)  ; FMin(a,b)
  %7794 = fcmp fast ogt float %7793, 0.000000e+00
  br i1 %7794, label %7795, label %8067, !dx.controlflow.hints !167

; <label>:7795                                    ; preds = %7790
  %7796 = fmul fast float %7791, %7510
  %7797 = fmul fast float %7791, %7511
  %7798 = fmul fast float %7791, %7512
  %7799 = fadd fast float %7543, %2425
  %7800 = fadd fast float %7544, %2426
  %7801 = fadd fast float %7545, %2427
  %7802 = call float @dx.op.dot3.f32(i32 55, float %7543, float %7544, float %7545, float %7537, float %7538, float %7539)  ; Dot3(ax,ay,az,bx,by,bz)
  %7803 = call float @dx.op.dot3.f32(i32 55, float %7543, float %7544, float %7545, float %7799, float %7800, float %7801)  ; Dot3(ax,ay,az,bx,by,bz)
  %7804 = fdiv fast float 1.000000e+00, %7803
  %7805 = fmul fast float %7804, %7802
  %7806 = fmul fast float %7805, %7799
  %7807 = fmul fast float %7805, %7800
  %7808 = fmul fast float %7805, %7801
  %7809 = fadd fast float %7524, %7806
  %7810 = fadd fast float %7525, %7807
  %7811 = fadd fast float %7526, %7808
  %7812 = call float @dx.op.dot3.f32(i32 55, float %7809, float %7810, float %7811, float %7484, float %7485, float %7486)  ; Dot3(ax,ay,az,bx,by,bz)
  %7813 = fdiv fast float %7812, %7523
  %7814 = call float @dx.op.binary.f32(i32 35, float %7813, float -1.000000e+00)  ; FMax(a,b)
  %7815 = call float @dx.op.binary.f32(i32 36, float %7814, float 1.000000e+00)  ; FMin(a,b)
  %7816 = fmul fast float %7815, %7484
  %7817 = fmul fast float %7815, %7485
  %7818 = fmul fast float %7815, %7486
  %7819 = fsub fast float %7492, %153
  %7820 = fadd fast float %7819, %7816
  %7821 = fsub fast float %7493, %154
  %7822 = fadd fast float %7821, %7817
  %7823 = fsub fast float %7494, %155
  %7824 = fadd fast float %7823, %7818
  %7825 = call float @dx.op.dot3.f32(i32 55, float %7820, float %7822, float %7824, float %7820, float %7822, float %7824)  ; Dot3(ax,ay,az,bx,by,bz)
  %7826 = call float @dx.op.unary.f32(i32 25, float %7825)  ; Rsqrt(value)
  %7827 = fmul fast float %7820, %7826
  %7828 = fmul fast float %7822, %7826
  %7829 = fmul fast float %7824, %7826
  %7830 = fsub fast float %7827, %2453
  %7831 = fsub fast float %7828, %2454
  %7832 = fsub fast float %7829, %2455
  %7833 = call float @dx.op.dot3.f32(i32 55, float %7830, float %7831, float %7832, float %7830, float %7831, float %7832)  ; Dot3(ax,ay,az,bx,by,bz)
  %7834 = call float @dx.op.unary.f32(i32 25, float %7833)  ; Rsqrt(value)
  %7835 = fmul fast float %7830, %7834
  %7836 = fmul fast float %7831, %7834
  %7837 = fmul fast float %7832, %7834
  %7838 = call float @dx.op.dot3.f32(i32 55, float %7827, float %7828, float %7829, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %7839 = call float @dx.op.dot3.f32(i32 55, float %2611, float %2612, float %2613, float %7835, float %7836, float %7837)  ; Dot3(ax,ay,az,bx,by,bz)
  %7840 = fmul fast float %7826, %7489
  %7841 = fmul fast float %7840, %7840
  %7842 = bitcast float %7841 to i32
  %7843 = ashr i32 %7842, 1
  %7844 = sub nsw i32 1597463007, %7843
  %7845 = bitcast i32 %7844 to float
  %7846 = fmul fast float %7845, %7838
  %7847 = fmul fast float %7846, %7846
  %7848 = fsub fast float 1.000000e+00, %7847
  %7849 = fmul fast float %7838, %7841
  %7850 = call float @dx.op.unary.f32(i32 7, float %7849)  ; Saturate(value)
  %7851 = fmul fast float %7846, 5.000000e-01
  %7852 = fadd fast float %7851, 5.000000e-01
  %7853 = fmul fast float %7852, %7841
  %7854 = call float @dx.op.unary.f32(i32 7, float %7853)  ; Saturate(value)
  %7855 = bitcast float %7854 to i32
  %7856 = ashr i32 %7855, 1
  %7857 = add nsw i32 %7856, 532487669
  %7858 = bitcast i32 %7857 to float
  %7859 = fmul fast float %7858, %7854
  %7860 = fcmp fast ogt float %7848, 0.000000e+00
  %7861 = select i1 %7860, float %7859, float %7850
  %7862 = call float @dx.op.unary.f32(i32 7, float %7838)  ; Saturate(value)
  %7863 = fmul fast float %7862, %7862
  %7864 = fmul fast float %7863, %2652
  %7865 = call float @dx.op.unary.f32(i32 7, float %7864)  ; Saturate(value)
  %7866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7867 = extractvalue %dx.types.CBufRet.f32 %7866, 0
  %7868 = bitcast float %7867 to i32
  %7869 = lshr i32 %7868, 8
  %7870 = and i32 %7869, 255
  %7871 = uitofp i32 %7870 to float
  %7872 = fptoui float %7871 to i32
  %7873 = and i32 %7872, 8
  %7874 = icmp ne i32 %7873, 0
  %7875 = select i1 %7874, float %7865, float 1.000000e+00
  %7876 = fmul fast float %7875, %7861
  %7877 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7486, float %2621, float %2622, float %2623)  ; Dot3(ax,ay,az,bx,by,bz)
  %7878 = call float @dx.op.dot3.f32(i32 55, float %7484, float %7485, float %7486, float %7537, float %7538, float %7539)  ; Dot3(ax,ay,az,bx,by,bz)
  %7879 = call float @dx.op.dot3.f32(i32 55, float %2621, float %2622, float %2623, float %7537, float %7538, float %7539)  ; Dot3(ax,ay,az,bx,by,bz)
  %7880 = fmul fast float %7877, %7877
  %7881 = fsub fast float %7523, %7880
  %7882 = fmul fast float %7879, %7877
  %7883 = fsub fast float %7882, %7878
  %7884 = fdiv fast float %7883, %7881
  %7885 = call float @dx.op.binary.f32(i32 35, float %7884, float -1.500000e+00)  ; FMax(a,b)
  %7886 = call float @dx.op.binary.f32(i32 36, float %7885, float 1.500000e+00)  ; FMin(a,b)
  %7887 = fmul fast float %7886, %7886
  %7888 = fmul fast float %7887, 0x3FC2F68380000000
  %7889 = fmul fast float %7888, %7886
  %7890 = fsub fast float %7886, %7889
  %7891 = fmul fast float %7890, %7484
  %7892 = fmul fast float %7890, %7485
  %7893 = fmul fast float %7890, %7486
  %7894 = fadd fast float %7891, %7534
  %7895 = fadd fast float %7892, %7535
  %7896 = fadd fast float %7893, %7536
  %7897 = fsub fast float %7894, %153
  %7898 = fsub fast float %7895, %154
  %7899 = fsub fast float %7896, %155
  %7900 = call float @dx.op.dot3.f32(i32 55, float %7897, float %7898, float %7899, float %2621, float %2622, float %2623)  ; Dot3(ax,ay,az,bx,by,bz)
  %7901 = fmul fast float %7900, %2621
  %7902 = fmul fast float %7900, %2622
  %7903 = fmul fast float %7900, %2623
  %7904 = fsub fast float %7901, %7897
  %7905 = fsub fast float %7902, %7898
  %7906 = fsub fast float %7903, %7899
  %7907 = call float @dx.op.dot3.f32(i32 55, float %7904, float %7905, float %7906, float %7904, float %7905, float %7906)  ; Dot3(ax,ay,az,bx,by,bz)
  %7908 = bitcast float %7907 to i32
  %7909 = ashr i32 %7908, 1
  %7910 = sub nsw i32 1597463007, %7909
  %7911 = bitcast i32 %7910 to float
  %7912 = fmul fast float %7911, %7489
  %7913 = call float @dx.op.dot3.f32(i32 55, float %7897, float %7898, float %7899, float %7897, float %7898, float %7899)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = bitcast float %7913 to i32
  %7915 = ashr i32 %7914, 1
  %7916 = sub nsw i32 1597463007, %7915
  %7917 = bitcast i32 %7916 to float
  %7918 = fmul fast float %7912, %7912
  %7919 = fadd fast float %7918, 1.250000e-01
  %7920 = call float @dx.op.unary.f32(i32 25, float %7919)  ; Rsqrt(value)
  %7921 = fmul fast float %7912, %7920
  %7922 = fmul fast float %7904, %7921
  %7923 = fmul fast float %7905, %7921
  %7924 = fmul fast float %7906, %7921
  %7925 = fadd fast float %7897, %7922
  %7926 = fadd fast float %7898, %7923
  %7927 = fadd fast float %7899, %7924
  %7928 = call float @dx.op.dot3.f32(i32 55, float %7925, float %7926, float %7927, float %7925, float %7926, float %7927)  ; Dot3(ax,ay,az,bx,by,bz)
  %7929 = call float @dx.op.unary.f32(i32 25, float %7928)  ; Rsqrt(value)
  %7930 = fmul fast float %7925, %7929
  %7931 = fmul fast float %7926, %7929
  %7932 = fmul fast float %7927, %7929
  %7933 = fsub fast float %7930, %2453
  %7934 = fsub fast float %7931, %2454
  %7935 = fsub fast float %7932, %2455
  %7936 = call float @dx.op.dot3.f32(i32 55, float %7933, float %7934, float %7935, float %7933, float %7934, float %7935)  ; Dot3(ax,ay,az,bx,by,bz)
  %7937 = call float @dx.op.unary.f32(i32 25, float %7936)  ; Rsqrt(value)
  %7938 = fmul fast float %7933, %7937
  %7939 = fmul fast float %7934, %7937
  %7940 = fmul fast float %7935, %7937
  %7941 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float %7938, float %7939, float %7940)  ; Dot3(ax,ay,az,bx,by,bz)
  %7942 = fmul fast float %7941, %7941
  %7943 = call float @dx.op.unary.f32(i32 6, float %7838)  ; FAbs(value)
  %7944 = fsub fast float 1.000000e+00, %2643
  %7945 = fmul fast float %2616, %2616
  %7946 = fmul fast float %7945, %7944
  %7947 = fadd fast float %7946, %2643
  %7948 = bitcast float %7947 to i32
  %7949 = ashr i32 %7948, 1
  %7950 = add nsw i32 %7949, 532487669
  %7951 = bitcast i32 %7950 to float
  %7952 = fadd fast float %7951, %2616
  %7953 = fmul fast float %2643, %7942
  %7954 = fsub fast float 1.000000e+00, %7942
  %7955 = fadd fast float %7954, %7953
  %7956 = fmul fast float %7943, %7943
  %7957 = fmul fast float %7956, %7944
  %7958 = fadd fast float %7957, %2643
  %7959 = bitcast float %7958 to i32
  %7960 = ashr i32 %7959, 1
  %7961 = add nsw i32 %7960, 532487669
  %7962 = bitcast i32 %7961 to float
  %7963 = fadd fast float %7962, %7943
  %7964 = fmul fast float %7955, %7955
  %7965 = fmul fast float %7964, %7952
  %7966 = fmul fast float %7965, %7963
  %7967 = fdiv fast float 1.000000e+00, %7966
  %7968 = bitcast float %2643 to i32
  %7969 = sitofp i32 %7968 to float
  %7970 = fmul fast float %7969, 0x3FE7F73180000000
  %7971 = fadd fast float %7970, 0x41AFE27C40000000
  %7972 = fptosi float %7971 to i32
  %7973 = bitcast i32 %7972 to float
  %7974 = fmul fast float %7489, 0x3FD80E9D60000000
  %7975 = fmul fast float %7974, %7917
  %7976 = fadd fast float %7973, %7975
  %7977 = bitcast float %7976 to i32
  %7978 = sub nsw i32 2129859010, %7977
  %7979 = bitcast i32 %7978 to float
  %7980 = fmul fast float %2643, %7967
  %7981 = fmul fast float %7980, %7973
  %7982 = fmul fast float %7981, %7979
  %7983 = call float @dx.op.unary.f32(i32 6, float %7839)  ; FAbs(value)
  %7984 = fsub fast float 1.000000e+00, %7983
  %7985 = bitcast float %7984 to i32
  %7986 = sitofp i32 %7985 to float
  %7987 = fmul fast float %7986, 5.000000e+00
  %7988 = fadd fast float %7987, 0xC1EFBF8940000000
  %7989 = fptosi float %7988 to i32
  %7990 = bitcast i32 %7989 to float
  %7991 = fmul fast float %7990, %2506
  %7992 = fmul fast float %7990, %2507
  %7993 = fmul fast float %7990, %3717
  %7994 = fadd fast float %7991, %2446
  %7995 = fadd fast float %7992, %2447
  %7996 = fadd fast float %7993, %2614
  %7997 = fmul fast float %7838, 9.843750e-01
  %7998 = fmul fast float %2555, 9.843750e-01
  %7999 = fadd fast float %7997, 7.812500e-03
  %8000 = fadd fast float %7998, 7.812500e-03
  %8001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7999, float %8000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8002 = extractvalue %dx.types.ResRet.f32 %8001, 2
  %8003 = extractvalue %dx.types.ResRet.f32 %8001, 3
  %8004 = fmul fast float %8002, %2446
  %8005 = fmul fast float %8002, %2447
  %8006 = fmul fast float %8002, %2614
  %8007 = fadd fast float %8004, %8003
  %8008 = fadd fast float %8005, %8003
  %8009 = fadd fast float %8006, %8003
  %8010 = call float @dx.op.binary.f32(i32 35, float %8008, float %8009)  ; FMax(a,b)
  %8011 = call float @dx.op.binary.f32(i32 35, float %8007, float %8010)  ; FMax(a,b)
  %8012 = fsub fast float 1.000000e+00, %8011
  %8013 = fsub fast float -0.000000e+00, %2425
  %8014 = fsub fast float -0.000000e+00, %2426
  %8015 = fsub fast float -0.000000e+00, %2427
  %8016 = call float @dx.op.dot3.f32(i32 55, float %7543, float %7544, float %7545, float %8013, float %8014, float %8015)  ; Dot3(ax,ay,az,bx,by,bz)
  %8017 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8018 = fmul fast float %8017, %7550
  %8019 = fmul fast float %8017, 9.843750e-01
  %8020 = fadd fast float %8019, 7.812500e-03
  %8021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %8020, float %8000, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8022 = extractvalue %dx.types.ResRet.f32 %8021, 2
  %8023 = extractvalue %dx.types.ResRet.f32 %8021, 3
  %8024 = fmul fast float %8022, %2446
  %8025 = fmul fast float %8022, %2447
  %8026 = fmul fast float %8022, %2614
  %8027 = fadd fast float %8024, %8023
  %8028 = fadd fast float %8025, %8023
  %8029 = fadd fast float %8026, %8023
  %8030 = call float @dx.op.binary.f32(i32 35, float %8028, float %8029)  ; FMax(a,b)
  %8031 = call float @dx.op.binary.f32(i32 35, float %8027, float %8030)  ; FMax(a,b)
  %8032 = fsub fast float 1.000000e+00, %8031
  %8033 = fmul fast float %8018, %8032
  %8034 = fmul fast float %8033, %2558
  %8035 = fmul fast float %8012, %7876
  %8036 = fmul fast float %7994, %7876
  %8037 = fmul fast float %8036, %7982
  %8038 = fmul fast float %7995, %7876
  %8039 = fmul fast float %8038, %7982
  %8040 = fmul fast float %7996, %7876
  %8041 = fmul fast float %8040, %7982
  %8042 = fadd fast float %8034, %8035
  %8043 = fmul fast float %8042, %7796
  %8044 = fmul fast float %8042, %7797
  %8045 = fmul fast float %8042, %7798
  %8046 = fadd fast float %8043, %7458
  %8047 = fadd fast float %8044, %7459
  %8048 = fadd fast float %8045, %7460
  %8049 = fmul fast float %8037, %7796
  %8050 = fmul fast float %8039, %7797
  %8051 = fmul fast float %8041, %7798
  %8052 = fadd fast float %8049, %7455
  %8053 = fadd fast float %8050, %7456
  %8054 = fadd fast float %8051, %7457
  %8055 = fadd fast float %8043, %7452
  %8056 = fadd fast float %8044, %7453
  %8057 = fadd fast float %8045, %7454
  %8058 = fadd fast float %8049, %7449
  %8059 = fadd fast float %8050, %7450
  %8060 = fadd fast float %8051, %7451
  %8061 = fadd fast float %8043, %7446
  %8062 = fadd fast float %8044, %7447
  %8063 = fadd fast float %8045, %7448
  %8064 = fadd fast float %8049, %7443
  %8065 = fadd fast float %8050, %7444
  %8066 = fadd fast float %8051, %7445
  br label %8067

; <label>:8067                                    ; preds = %7795, %7790
  %8068 = phi float [ %7443, %7790 ], [ %8064, %7795 ]
  %8069 = phi float [ %7444, %7790 ], [ %8065, %7795 ]
  %8070 = phi float [ %7445, %7790 ], [ %8066, %7795 ]
  %8071 = phi float [ %7446, %7790 ], [ %8061, %7795 ]
  %8072 = phi float [ %7447, %7790 ], [ %8062, %7795 ]
  %8073 = phi float [ %7448, %7790 ], [ %8063, %7795 ]
  %8074 = phi float [ %7449, %7790 ], [ %8058, %7795 ]
  %8075 = phi float [ %7450, %7790 ], [ %8059, %7795 ]
  %8076 = phi float [ %7451, %7790 ], [ %8060, %7795 ]
  %8077 = phi float [ %7452, %7790 ], [ %8055, %7795 ]
  %8078 = phi float [ %7453, %7790 ], [ %8056, %7795 ]
  %8079 = phi float [ %7454, %7790 ], [ %8057, %7795 ]
  %8080 = phi float [ %7455, %7790 ], [ %8052, %7795 ]
  %8081 = phi float [ %7456, %7790 ], [ %8053, %7795 ]
  %8082 = phi float [ %7457, %7790 ], [ %8054, %7795 ]
  %8083 = phi float [ %7458, %7790 ], [ %8046, %7795 ]
  %8084 = phi float [ %7459, %7790 ], [ %8047, %7795 ]
  %8085 = phi float [ %7460, %7790 ], [ %8048, %7795 ]
  %8086 = bitcast i32 %7433 to float
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 1
  %8089 = bitcast float %8088 to i32
  %8090 = and i32 %8089, 65535
  %8091 = icmp eq i32 %8090, 65535
  br i1 %8091, label %8092, label %8094

; <label>:8092                                    ; preds = %8067
  %8093 = call float @dx.op.binary.f32(i32 35, float %8086, float %7791)  ; FMax(a,b)
  br label %8097

; <label>:8094                                    ; preds = %8067
  %8095 = icmp eq i32 %8090, %7462
  %8096 = select i1 %8095, float %7791, float %8086
  br label %8097

; <label>:8097                                    ; preds = %8094, %8092
  %8098 = phi float [ %8093, %8092 ], [ %8096, %8094 ]
  %8099 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8100 = bitcast float %8099 to i32
  %8101 = lshr i32 %8100, 8
  %8102 = and i32 %8101, 255
  %8103 = uitofp i32 %8102 to float
  %8104 = fptoui float %8103 to i32
  %8105 = icmp eq i32 %8104, 15
  %8106 = bitcast float %8098 to i32
  %8107 = select i1 %8105, i32 %8106, i32 %7433
  %8108 = add i32 %7615, %7438
  %8109 = add i32 %7617, %7439
  %8110 = add i32 %7619, %7440
  %8111 = add i32 %7621, %7441
  br label %7626

; <label>:8112                                    ; preds = %7626
  br label %8113

; <label>:8113                                    ; preds = %8112, %7379
  %8114 = phi i32 [ %7380, %7379 ], [ %7627, %8112 ]
  %8115 = phi i32 [ %7381, %7379 ], [ %7616, %8112 ]
  %8116 = phi i32 [ %7382, %7379 ], [ %7618, %8112 ]
  %8117 = phi i32 [ %7383, %7379 ], [ %7620, %8112 ]
  %8118 = phi i32 [ %7384, %7379 ], [ %7622, %8112 ]
  %8119 = phi i32 [ %7385, %7379 ], [ %7628, %8112 ]
  %8120 = phi i32 [ %7386, %7379 ], [ %7629, %8112 ]
  %8121 = phi i32 [ %7387, %7379 ], [ %7630, %8112 ]
  %8122 = phi i32 [ %7388, %7379 ], [ %7631, %8112 ]
  %8123 = phi float [ %7390, %7379 ], [ %7632, %8112 ]
  %8124 = phi float [ %7391, %7379 ], [ %7633, %8112 ]
  %8125 = phi float [ %7392, %7379 ], [ %7634, %8112 ]
  %8126 = phi float [ %7393, %7379 ], [ %7635, %8112 ]
  %8127 = phi float [ %7394, %7379 ], [ %7636, %8112 ]
  %8128 = phi float [ %7395, %7379 ], [ %7637, %8112 ]
  %8129 = phi float [ %7396, %7379 ], [ %7638, %8112 ]
  %8130 = phi float [ %7397, %7379 ], [ %7639, %8112 ]
  %8131 = phi float [ %7398, %7379 ], [ %7640, %8112 ]
  %8132 = phi float [ %7399, %7379 ], [ %7641, %8112 ]
  %8133 = phi float [ %7400, %7379 ], [ %7642, %8112 ]
  %8134 = phi float [ %7401, %7379 ], [ %7643, %8112 ]
  %8135 = phi float [ %7402, %7379 ], [ %7644, %8112 ]
  %8136 = phi float [ %7403, %7379 ], [ %7645, %8112 ]
  %8137 = phi float [ %7404, %7379 ], [ %7646, %8112 ]
  %8138 = phi float [ %7405, %7379 ], [ %7647, %8112 ]
  %8139 = phi float [ %7406, %7379 ], [ %7648, %8112 ]
  %8140 = phi float [ %7407, %7379 ], [ %7649, %8112 ]
  %8141 = add i32 %7389, 1
  %8142 = icmp ugt i32 %8141, %7376
  br i1 %8142, label %8143, label %7379

; <label>:8143                                    ; preds = %8113
  br label %8144

; <label>:8144                                    ; preds = %8143, %7329
  %8145 = phi i32 [ %7308, %7329 ], [ %8114, %8143 ]
  %8146 = phi i32 [ 0, %7329 ], [ %8115, %8143 ]
  %8147 = phi i32 [ 0, %7329 ], [ %8116, %8143 ]
  %8148 = phi i32 [ 0, %7329 ], [ %8117, %8143 ]
  %8149 = phi i32 [ 0, %7329 ], [ %8118, %8143 ]
  %8150 = phi i32 [ 0, %7329 ], [ %8119, %8143 ]
  %8151 = phi i32 [ 0, %7329 ], [ %8120, %8143 ]
  %8152 = phi i32 [ 0, %7329 ], [ %8121, %8143 ]
  %8153 = phi i32 [ 0, %7329 ], [ %8122, %8143 ]
  %8154 = phi float [ %7310, %7329 ], [ %8123, %8143 ]
  %8155 = phi float [ %7311, %7329 ], [ %8124, %8143 ]
  %8156 = phi float [ %7312, %7329 ], [ %8125, %8143 ]
  %8157 = phi float [ %7313, %7329 ], [ %8126, %8143 ]
  %8158 = phi float [ %7314, %7329 ], [ %8127, %8143 ]
  %8159 = phi float [ %7315, %7329 ], [ %8128, %8143 ]
  %8160 = phi float [ %7316, %7329 ], [ %8129, %8143 ]
  %8161 = phi float [ %7317, %7329 ], [ %8130, %8143 ]
  %8162 = phi float [ %7318, %7329 ], [ %8131, %8143 ]
  %8163 = phi float [ %7319, %7329 ], [ %8132, %8143 ]
  %8164 = phi float [ %7320, %7329 ], [ %8133, %8143 ]
  %8165 = phi float [ %7321, %7329 ], [ %8134, %8143 ]
  %8166 = phi float [ %7323, %7329 ], [ %8135, %8143 ]
  %8167 = phi float [ %7324, %7329 ], [ %8136, %8143 ]
  %8168 = phi float [ %7325, %7329 ], [ %8137, %8143 ]
  %8169 = phi float [ %7319, %7329 ], [ %8138, %8143 ]
  %8170 = phi float [ %7320, %7329 ], [ %8139, %8143 ]
  %8171 = phi float [ %7321, %7329 ], [ %8140, %8143 ]
  %8172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8173 = extractvalue %dx.types.CBufRet.f32 %8172, 1
  %8174 = bitcast float %8173 to i32
  %8175 = lshr i32 %8174, 24
  %8176 = uitofp i32 %8175 to float
  %8177 = fptoui float %8176 to i32
  %8178 = icmp eq i32 %8177, 1
  %8179 = select i1 %8178, i32 %8150, i32 %8146
  %8180 = uitofp i32 %8179 to float
  %8181 = fptoui float %8180 to i32
  %8182 = shl i32 %8181, 8
  %8183 = select i1 %8178, i32 %8151, i32 %8147
  %8184 = uitofp i32 %8183 to float
  %8185 = fptoui float %8184 to i32
  %8186 = shl i32 %8185, 16
  %8187 = and i32 %8182, 65280
  %8188 = or i32 %8187, %7309
  %8189 = select i1 %8178, i32 %8152, i32 %8148
  %8190 = uitofp i32 %8189 to float
  %8191 = fptoui float %8190 to i32
  %8192 = shl i32 %8191, 24
  %8193 = and i32 %8186, 16711680
  %8194 = or i32 %8188, %8193
  %8195 = or i32 %8194, %8192
  %8196 = select i1 %8178, i32 %8153, i32 %8149
  %8197 = uitofp i32 %8196 to float
  %8198 = fptoui float %8197 to i32
  %8199 = and i32 %8198, 255
  %8200 = and i32 %5508, -256
  %8201 = or i32 %8199, %8200
  %8202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8203 = extractvalue %dx.types.CBufRet.f32 %8202, 0
  %8204 = bitcast float %8203 to i32
  %8205 = lshr i32 %8204, 8
  %8206 = and i32 %8205, 255
  %8207 = uitofp i32 %8206 to float
  %8208 = fptoui float %8207 to i32
  %8209 = icmp eq i32 %8208, 12
  %8210 = select i1 %8209, i32 0, i32 %8145
  br label %8211

; <label>:8211                                    ; preds = %8144, %7307
  %8212 = phi i32 [ %5508, %7307 ], [ %8201, %8144 ]
  %8213 = phi i32 [ 0, %7307 ], [ %8195, %8144 ]
  %8214 = phi i32 [ %7308, %7307 ], [ %8210, %8144 ]
  %8215 = phi float [ %7310, %7307 ], [ %8154, %8144 ]
  %8216 = phi float [ %7311, %7307 ], [ %8155, %8144 ]
  %8217 = phi float [ %7312, %7307 ], [ %8156, %8144 ]
  %8218 = phi float [ %7313, %7307 ], [ %8157, %8144 ]
  %8219 = phi float [ %7314, %7307 ], [ %8158, %8144 ]
  %8220 = phi float [ %7315, %7307 ], [ %8159, %8144 ]
  %8221 = phi float [ %7316, %7307 ], [ %8160, %8144 ]
  %8222 = phi float [ %7317, %7307 ], [ %8161, %8144 ]
  %8223 = phi float [ %7318, %7307 ], [ %8162, %8144 ]
  %8224 = phi float [ %7319, %7307 ], [ %8163, %8144 ]
  %8225 = phi float [ %7320, %7307 ], [ %8164, %8144 ]
  %8226 = phi float [ %7321, %7307 ], [ %8165, %8144 ]
  %8227 = phi float [ %7323, %7307 ], [ %8166, %8144 ]
  %8228 = phi float [ %7324, %7307 ], [ %8167, %8144 ]
  %8229 = phi float [ %7325, %7307 ], [ %8168, %8144 ]
  %8230 = phi float [ %7319, %7307 ], [ %8169, %8144 ]
  %8231 = phi float [ %7320, %7307 ], [ %8170, %8144 ]
  %8232 = phi float [ %7321, %7307 ], [ %8171, %8144 ]
  %8233 = and i32 %2505, 255
  %8234 = uitofp i32 %8233 to float
  %8235 = fmul fast float %8234, 0x3F70101020000000
  %8236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8237 = extractvalue %dx.types.CBufRet.f32 %8236, 2
  %8238 = extractvalue %dx.types.CBufRet.f32 %8236, 3
  %8239 = fmul fast float %8237, %98
  %8240 = fmul fast float %8238, %99
  %8241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %2515, i32 %2521, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8242 = extractvalue %dx.types.ResRet.f32 %8241, 0
  %8243 = fcmp fast ogt float %8242, -1.000000e+00
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8246 = select i1 %8243, float %8245, float 1.000000e+00
  %8247 = fadd fast float %8242, 1.000000e+00
  %8248 = fmul fast float %8246, %8247
  %8249 = call float @dx.op.unary.f32(i32 6, float %8248)  ; FAbs(value)
  br i1 %115, label %8250, label %8763

; <label>:8250                                    ; preds = %8211
  %8251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8252 = extractvalue %dx.types.CBufRet.f32 %8251, 0
  %8253 = extractvalue %dx.types.CBufRet.f32 %8251, 1
  %8254 = extractvalue %dx.types.CBufRet.f32 %8251, 2
  %8255 = fcmp fast oge float %8253, %87
  %8256 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8257 = extractvalue %dx.types.CBufRet.i32 %8256, 0
  %8258 = and i32 %8257, 65538
  %8259 = icmp eq i32 %8258, 65538
  %8260 = and i1 %8259, %8255
  br i1 %8260, label %8261, label %8345

; <label>:8261                                    ; preds = %8250
  %8262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8263 = extractvalue %dx.types.CBufRet.f32 %8262, 0
  %8264 = extractvalue %dx.types.CBufRet.f32 %8262, 1
  %8265 = fmul fast float %8263, %8239
  %8266 = fmul fast float %8264, %8240
  %8267 = extractvalue %dx.types.CBufRet.f32 %8262, 2
  %8268 = extractvalue %dx.types.CBufRet.f32 %8262, 3
  %8269 = fmul fast float %8265, %8267
  %8270 = fmul fast float %8266, %8268
  %8271 = call float @dx.op.unary.f32(i32 7, float %8269)  ; Saturate(value)
  %8272 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8273 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %8271, float %8272, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8274 = extractvalue %dx.types.ResRet.f32 %8273, 0
  %8275 = extractvalue %dx.types.ResRet.f32 %8273, 1
  %8276 = extractvalue %dx.types.ResRet.f32 %8273, 2
  %8277 = extractvalue %dx.types.ResRet.f32 %8273, 3
  %8278 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %8271, float %8272, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8279 = extractvalue %dx.types.ResRet.f32 %8278, 0
  %8280 = extractvalue %dx.types.ResRet.f32 %8278, 1
  %8281 = extractvalue %dx.types.ResRet.f32 %8278, 2
  %8282 = extractvalue %dx.types.ResRet.f32 %8278, 3
  %8283 = call float @dx.op.binary.f32(i32 35, float %8275, float %8276)  ; FMax(a,b)
  %8284 = call float @dx.op.binary.f32(i32 35, float %8274, float %8283)  ; FMax(a,b)
  %8285 = call float @dx.op.binary.f32(i32 35, float %8284, float %8277)  ; FMax(a,b)
  %8286 = call float @dx.op.binary.f32(i32 36, float %8280, float %8281)  ; FMin(a,b)
  %8287 = call float @dx.op.binary.f32(i32 36, float %8279, float %8286)  ; FMin(a,b)
  %8288 = call float @dx.op.binary.f32(i32 36, float %8287, float %8282)  ; FMin(a,b)
  %8289 = fmul fast float %8285, 2.550000e+02
  %8290 = fadd fast float %8289, 0x3F70101020000000
  %8291 = fptoui float %8290 to i32
  %8292 = fmul fast float %8288, 2.550000e+02
  %8293 = fadd fast float %8292, 0x3F70101020000000
  %8294 = fptoui float %8293 to i32
  %8295 = icmp ult i32 %8291, %8294
  br i1 %8295, label %8296, label %8345

; <label>:8296                                    ; preds = %8261
  %8297 = fadd fast float %8249, -4.000000e+00
  %8298 = call float @dx.op.binary.f32(i32 35, float %8297, float 0.000000e+00)  ; FMax(a,b)
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 0
  %8301 = fadd fast float %8300, %8298
  %8302 = extractvalue %dx.types.CBufRet.f32 %8299, 2
  %8303 = fmul fast float %8301, %8302
  %8304 = call float @dx.op.unary.f32(i32 23, float %8303)  ; Log(value)
  %8305 = extractvalue %dx.types.CBufRet.f32 %8299, 3
  %8306 = fmul fast float %8305, %8304
  %8307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8308 = extractvalue %dx.types.CBufRet.f32 %8307, 2
  %8309 = fmul fast float %8306, %8308
  %8310 = call float @dx.op.unary.f32(i32 7, float %8309)  ; Saturate(value)
  %8311 = uitofp i32 %8291 to float
  %8312 = uitofp i32 %8294 to float
  %8313 = fadd fast float %8311, 5.000000e-01
  %8314 = fadd fast float %8312, 5.000000e-01
  %8315 = fmul fast float %8308, %8313
  %8316 = fmul fast float %8308, %8314
  %8317 = fadd fast float %8315, 0x3F0FFB4800000000
  %8318 = fadd fast float %8316, 0xBF0FFB4800000000
  %8319 = call float @dx.op.binary.f32(i32 35, float %8310, float %8317)  ; FMax(a,b)
  %8320 = call float @dx.op.binary.f32(i32 36, float %8319, float %8318)  ; FMin(a,b)
  %8321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8322 = extractvalue %dx.types.CBufRet.f32 %8321, 1
  %8323 = extractvalue %dx.types.CBufRet.f32 %8321, 2
  %8324 = extractvalue %dx.types.CBufRet.f32 %8321, 0
  %8325 = fmul fast float %8322, %8320
  %8326 = fadd fast float %8324, %8325
  %8327 = fadd fast float %8324, %8323
  %8328 = fsub fast float %8322, %8323
  %8329 = fadd fast float %8328, %8324
  %8330 = call float @dx.op.binary.f32(i32 35, float %8326, float %8327)  ; FMax(a,b)
  %8331 = call float @dx.op.binary.f32(i32 36, float %8330, float %8329)  ; FMin(a,b)
  %8332 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %8271, float %8272, float %8331, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8333 = extractvalue %dx.types.ResRet.f32 %8332, 0
  %8334 = extractvalue %dx.types.ResRet.f32 %8332, 1
  %8335 = extractvalue %dx.types.ResRet.f32 %8332, 2
  %8336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %8271, float %8272, float %8331, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8337 = extractvalue %dx.types.ResRet.f32 %8336, 0
  %8338 = extractvalue %dx.types.ResRet.f32 %8336, 1
  %8339 = extractvalue %dx.types.ResRet.f32 %8336, 2
  %8340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8341 = extractvalue %dx.types.CBufRet.f32 %8340, 1
  %8342 = fmul fast float %8341, %8337
  %8343 = fmul fast float %8341, %8338
  %8344 = fmul fast float %8341, %8339
  br label %8345

; <label>:8345                                    ; preds = %8296, %8261, %8250
  %8346 = phi float [ 0.000000e+00, %8250 ], [ %8342, %8296 ], [ 0.000000e+00, %8261 ]
  %8347 = phi float [ 0.000000e+00, %8250 ], [ %8343, %8296 ], [ 0.000000e+00, %8261 ]
  %8348 = phi float [ 0.000000e+00, %8250 ], [ %8344, %8296 ], [ 0.000000e+00, %8261 ]
  %8349 = phi float [ 1.000000e+00, %8250 ], [ %8333, %8296 ], [ 1.000000e+00, %8261 ]
  %8350 = phi float [ 1.000000e+00, %8250 ], [ %8334, %8296 ], [ 1.000000e+00, %8261 ]
  %8351 = phi float [ 1.000000e+00, %8250 ], [ %8335, %8296 ], [ 1.000000e+00, %8261 ]
  %8352 = fcmp fast olt float %8235, 1.000000e+00
  %8353 = fcmp fast olt float %8252, %8249
  %8354 = or i1 %8352, %8353
  br i1 %8354, label %8355, label %8519

; <label>:8355                                    ; preds = %8345
  %8356 = lshr i32 %2570, 16
  %8357 = uitofp i32 %8356 to float
  %8358 = fmul fast float %8357, 0x3EF0001000000000
  %8359 = and i32 %2563, 65535
  %8360 = uitofp i32 %8359 to float
  %8361 = fmul fast float %8360, 0x3EF0001000000000
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8364 = fadd fast float %8363, 3.000000e+00
  %8365 = and i32 %1868, 16383
  %8366 = lshr i32 %1868, 16
  %8367 = and i32 %8366, 255
  %8368 = mul nuw nsw i32 %8365, 148
  %8369 = add nuw nsw i32 %8368, 60
  %8370 = add nuw nsw i32 %8368, 116
  %8371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %8372 = extractvalue %dx.types.CBufRet.i32 %8371, 0
  %8373 = call i32 @dx.op.binary.i32(i32 40, i32 %8365, i32 %8372)  ; UMin(a,b)
  %8374 = mul i32 %8373, 36
  %8375 = add i32 %8374, 4
  %8376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %8377 = extractvalue %dx.types.CBufRet.f32 %8376, 0
  %8378 = fmul fast float %8361, %8377
  %8379 = fmul fast float %8358, %8377
  %8380 = extractvalue %dx.types.CBufRet.f32 %8376, 1
  %8381 = fadd fast float %8378, %8380
  %8382 = fadd fast float %8379, %8380
  %8383 = icmp eq i32 %8367, 0
  br i1 %8383, label %8444, label %8384

; <label>:8384                                    ; preds = %8355
  br label %8385

; <label>:8385                                    ; preds = %8385, %8384
  %8386 = phi float [ %8429, %8385 ], [ 0.000000e+00, %8384 ]
  %8387 = phi float [ %8439, %8385 ], [ 0.000000e+00, %8384 ]
  %8388 = phi float [ %8440, %8385 ], [ 0.000000e+00, %8384 ]
  %8389 = phi float [ %8441, %8385 ], [ 0.000000e+00, %8384 ]
  %8390 = phi float [ %8433, %8385 ], [ 0.000000e+00, %8384 ]
  %8391 = phi float [ %8434, %8385 ], [ 0.000000e+00, %8384 ]
  %8392 = phi float [ %8435, %8385 ], [ 0.000000e+00, %8384 ]
  %8393 = phi i32 [ %8398, %8385 ], [ %8367, %8384 ]
  %8394 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %8393)  ; FirstbitLo(value)
  %8395 = and i32 %8394, 31
  %8396 = shl i32 1, %8395
  %8397 = xor i32 %8396, -1
  %8398 = and i32 %8393, %8397
  %8399 = shl i32 %8394, 2
  %8400 = add i32 %8375, %8399
  %8401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %8400, i32 undef)  ; BufferLoad(srv,index,wot)
  %8402 = extractvalue %dx.types.ResRet.i32 %8401, 0
  %8403 = and i32 %8402, 32767
  %8404 = add i32 %8369, %8399
  %8405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %8404, i32 undef)  ; BufferLoad(srv,index,wot)
  %8406 = extractvalue %dx.types.ResRet.f32 %8405, 0
  %8407 = add i32 %8370, %8399
  %8408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %8407, i32 undef)  ; BufferLoad(srv,index,wot)
  %8409 = extractvalue %dx.types.ResRet.i32 %8408, 0
  %8410 = add i32 %8409, 0
  %8411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %8410, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8412 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8411, %dx.types.Handle %59, float %8381, float %8382, float %8406, float undef, i32 0, i32 0, i32 undef, float %8364)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8413 = extractvalue %dx.types.ResRet.f32 %8412, 0
  %8414 = mul nuw nsw i32 %8403, 928
  %8415 = add nuw nsw i32 %8414, 44
  %8416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8415, i32 undef)  ; BufferLoad(srv,index,wot)
  %8417 = extractvalue %dx.types.ResRet.f32 %8416, 0
  %8418 = add nuw nsw i32 %8414, 48
  %8419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8418, i32 undef)  ; BufferLoad(srv,index,wot)
  %8420 = extractvalue %dx.types.ResRet.f32 %8419, 0
  %8421 = extractvalue %dx.types.ResRet.f32 %8419, 1
  %8422 = extractvalue %dx.types.ResRet.f32 %8419, 2
  %8423 = add nuw nsw i32 %8414, 60
  %8424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %8423, i32 undef)  ; BufferLoad(srv,index,wot)
  %8425 = extractvalue %dx.types.ResRet.f32 %8424, 0
  %8426 = extractvalue %dx.types.ResRet.f32 %8424, 1
  %8427 = extractvalue %dx.types.ResRet.f32 %8424, 2
  %8428 = fmul fast float %8417, %8413
  %8429 = fadd fast float %8428, %8386
  %8430 = fmul fast float %8420, %8413
  %8431 = fmul fast float %8421, %8413
  %8432 = fmul fast float %8422, %8413
  %8433 = fadd fast float %8430, %8390
  %8434 = fadd fast float %8431, %8391
  %8435 = fadd fast float %8432, %8392
  %8436 = fmul fast float %8425, %8413
  %8437 = fmul fast float %8426, %8413
  %8438 = fmul fast float %8427, %8413
  %8439 = fadd fast float %8436, %8387
  %8440 = fadd fast float %8437, %8388
  %8441 = fadd fast float %8438, %8389
  %8442 = icmp eq i32 %8398, 0
  br i1 %8442, label %8443, label %8385

; <label>:8443                                    ; preds = %8385
  br label %8444

; <label>:8444                                    ; preds = %8443, %8355
  %8445 = phi float [ 0.000000e+00, %8355 ], [ %8429, %8443 ]
  %8446 = phi float [ 0.000000e+00, %8355 ], [ %8439, %8443 ]
  %8447 = phi float [ 0.000000e+00, %8355 ], [ %8440, %8443 ]
  %8448 = phi float [ 0.000000e+00, %8355 ], [ %8441, %8443 ]
  %8449 = phi float [ 0.000000e+00, %8355 ], [ %8433, %8443 ]
  %8450 = phi float [ 0.000000e+00, %8355 ], [ %8434, %8443 ]
  %8451 = phi float [ 0.000000e+00, %8355 ], [ %8435, %8443 ]
  %8452 = fmul fast float %8449, 0x3F847AE140000000
  %8453 = fmul fast float %8450, 0x3F847AE140000000
  %8454 = fmul fast float %8451, 0x3F847AE140000000
  %8455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %8456 = extractvalue %dx.types.CBufRet.f32 %8455, 0
  %8457 = extractvalue %dx.types.CBufRet.f32 %8455, 1
  %8458 = extractvalue %dx.types.CBufRet.f32 %8455, 2
  %8459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %8460 = extractvalue %dx.types.CBufRet.f32 %8459, 0
  %8461 = extractvalue %dx.types.CBufRet.f32 %8459, 1
  %8462 = call float @dx.op.dot3.f32(i32 55, float %8456, float %8457, float %8458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8463 = select i1 %2609, float %8460, float %8456
  %8464 = select i1 %2609, float %8462, float %8457
  %8465 = select i1 %2609, float %8461, float %8458
  %8466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8467 = extractvalue %dx.types.CBufRet.f32 %8466, 0
  %8468 = extractvalue %dx.types.CBufRet.f32 %8466, 1
  %8469 = extractvalue %dx.types.CBufRet.f32 %8466, 2
  %8470 = fadd fast float %8449, %8446
  %8471 = fmul fast float %8470, 0x3F847AE140000000
  %8472 = fadd fast float %8450, %8447
  %8473 = fmul fast float %8472, 0x3F847AE140000000
  %8474 = fadd fast float %8451, %8448
  %8475 = fmul fast float %8474, 0x3F847AE140000000
  %8476 = call float @dx.op.dot3.f32(i32 55, float %8467, float %8468, float %8469, float %2453, float %2454, float %2455)  ; Dot3(ax,ay,az,bx,by,bz)
  %8477 = fcmp fast ogt float %8445, 0.000000e+00
  %8478 = select i1 %8477, float 1.000000e+00, float -1.000000e+00
  %8479 = fmul fast float %8478, 5.000000e-01
  %8480 = fmul fast float %8479, %8476
  %8481 = fmul fast float %8478, %8445
  %8482 = fadd fast float %8480, 4.921875e-01
  %8483 = fadd fast float %8481, -3.125000e-02
  %8484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %61, float %8482, float 0x3FB25F3060000000, float %8483, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8485 = extractvalue %dx.types.ResRet.f32 %8484, 0
  %8486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %8487 = extractvalue %dx.types.CBufRet.f32 %8486, 0
  %8488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %8489 = extractvalue %dx.types.CBufRet.f32 %8488, 0
  %8490 = fmul fast float %8489, %8487
  %8491 = extractvalue %dx.types.CBufRet.f32 %8488, 1
  %8492 = fadd fast float %8490, %8491
  %8493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %8494 = extractvalue %dx.types.CBufRet.f32 %8493, 0
  %8495 = fmul fast float %8494, %7322
  %8496 = extractvalue %dx.types.CBufRet.f32 %8493, 1
  %8497 = fadd fast float %8495, %8496
  %8498 = call float @dx.op.unary.f32(i32 7, float %8497)  ; Saturate(value)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8486, 3
  %8500 = extractvalue %dx.types.CBufRet.f32 %8488, 2
  %8501 = fmul fast float %8500, %8499
  %8502 = extractvalue %dx.types.CBufRet.f32 %8488, 3
  %8503 = fadd fast float %8501, %8502
  %8504 = fmul fast float %8485, 0x400921FB60000000
  %8505 = fmul fast float %8504, %8492
  %8506 = fmul fast float %8505, %8498
  %8507 = fmul fast float %8463, %8452
  %8508 = fmul fast float %8507, %8506
  %8509 = fmul fast float %8464, %8453
  %8510 = fmul fast float %8509, %8506
  %8511 = fmul fast float %8465, %8454
  %8512 = fmul fast float %8511, %8506
  %8513 = fmul fast float %8452, %3681
  %8514 = fmul fast float %8513, %8503
  %8515 = fmul fast float %8453, %3682
  %8516 = fmul fast float %8515, %8503
  %8517 = fmul fast float %8454, %3683
  %8518 = fmul fast float %8517, %8503
  br label %8519

; <label>:8519                                    ; preds = %8444, %8345
  %8520 = phi float [ %8471, %8444 ], [ 0.000000e+00, %8345 ]
  %8521 = phi float [ %8473, %8444 ], [ 0.000000e+00, %8345 ]
  %8522 = phi float [ %8475, %8444 ], [ 0.000000e+00, %8345 ]
  %8523 = phi float [ %8508, %8444 ], [ 0.000000e+00, %8345 ]
  %8524 = phi float [ %8510, %8444 ], [ 0.000000e+00, %8345 ]
  %8525 = phi float [ %8512, %8444 ], [ 0.000000e+00, %8345 ]
  %8526 = phi float [ %8514, %8444 ], [ 0.000000e+00, %8345 ]
  %8527 = phi float [ %8516, %8444 ], [ 0.000000e+00, %8345 ]
  %8528 = phi float [ %8518, %8444 ], [ 0.000000e+00, %8345 ]
  %8529 = call float @dx.op.binary.f32(i32 35, float %8520, float 0x3F10000000000000)  ; FMax(a,b)
  %8530 = call float @dx.op.binary.f32(i32 35, float %8521, float 0x3F10000000000000)  ; FMax(a,b)
  %8531 = call float @dx.op.binary.f32(i32 35, float %8522, float 0x3F10000000000000)  ; FMax(a,b)
  %8532 = fdiv fast float 1.000000e+00, %8529
  %8533 = fdiv fast float 1.000000e+00, %8530
  %8534 = fdiv fast float 1.000000e+00, %8531
  %8535 = fmul fast float %8520, 0xBFF7154760000000
  %8536 = fmul fast float %8521, 0xBFF7154760000000
  %8537 = fmul fast float %8522, 0xBFF7154760000000
  %8538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8539 = extractvalue %dx.types.CBufRet.f32 %8538, 3
  %8540 = call float @dx.op.dot3.f32(i32 55, float %8532, float %8533, float %8534, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8541 = fmul fast float %8539, %8540
  %8542 = call float @dx.op.binary.f32(i32 35, float %8253, float %87)  ; FMax(a,b)
  %8543 = fsub fast float %8249, %8542
  %8544 = call float @dx.op.binary.f32(i32 35, float %8543, float 0.000000e+00)  ; FMax(a,b)
  %8545 = fsub fast float %8249, %87
  %8546 = call float @dx.op.binary.f32(i32 35, float %8545, float 0.000000e+00)  ; FMax(a,b)
  %8547 = call float @dx.op.binary.f32(i32 36, float %8546, float %8541)  ; FMin(a,b)
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 0
  %8550 = fmul fast float %8549, %8547
  %8551 = fmul fast float %8550, %8535
  %8552 = fmul fast float %8550, %8536
  %8553 = fmul fast float %8550, %8537
  %8554 = call float @dx.op.unary.f32(i32 21, float %8551)  ; Exp(value)
  %8555 = call float @dx.op.unary.f32(i32 21, float %8552)  ; Exp(value)
  %8556 = call float @dx.op.unary.f32(i32 21, float %8553)  ; Exp(value)
  %8557 = fmul fast float %8554, %8523
  %8558 = fmul fast float %8555, %8524
  %8559 = fmul fast float %8556, %8525
  %8560 = extractvalue %dx.types.CBufRet.f32 %8548, 1
  %8561 = fmul fast float %8560, %8547
  %8562 = fmul fast float %8561, %8535
  %8563 = fmul fast float %8561, %8536
  %8564 = fmul fast float %8561, %8537
  %8565 = call float @dx.op.unary.f32(i32 21, float %8562)  ; Exp(value)
  %8566 = call float @dx.op.unary.f32(i32 21, float %8563)  ; Exp(value)
  %8567 = call float @dx.op.unary.f32(i32 21, float %8564)  ; Exp(value)
  %8568 = fmul fast float %8565, %8526
  %8569 = fmul fast float %8566, %8527
  %8570 = fmul fast float %8567, %8528
  %8571 = fadd fast float %8568, %8557
  %8572 = fadd fast float %8569, %8558
  %8573 = fadd fast float %8570, %8559
  %8574 = fmul fast float %8544, %8535
  %8575 = fmul fast float %8544, %8536
  %8576 = fmul fast float %8544, %8537
  %8577 = call float @dx.op.unary.f32(i32 21, float %8574)  ; Exp(value)
  %8578 = call float @dx.op.unary.f32(i32 21, float %8575)  ; Exp(value)
  %8579 = call float @dx.op.unary.f32(i32 21, float %8576)  ; Exp(value)
  %8580 = call float @dx.op.unary.f32(i32 7, float %8577)  ; Saturate(value)
  %8581 = call float @dx.op.unary.f32(i32 7, float %8578)  ; Saturate(value)
  %8582 = call float @dx.op.unary.f32(i32 7, float %8579)  ; Saturate(value)
  %8583 = fmul fast float %8580, %8571
  %8584 = fmul fast float %8581, %8572
  %8585 = fmul fast float %8582, %8573
  %8586 = fsub fast float %8571, %8583
  %8587 = fsub fast float %8572, %8584
  %8588 = fsub fast float %8573, %8585
  %8589 = fmul fast float %8532, %8349
  %8590 = fmul fast float %8589, %8586
  %8591 = fmul fast float %8533, %8350
  %8592 = fmul fast float %8591, %8587
  %8593 = fmul fast float %8534, %8351
  %8594 = fmul fast float %8593, %8588
  %8595 = fadd fast float %8590, %8346
  %8596 = fadd fast float %8592, %8347
  %8597 = fadd fast float %8594, %8348
  %8598 = fmul fast float %8580, %8349
  %8599 = fmul fast float %8581, %8350
  %8600 = fmul fast float %8582, %8351
  %8601 = fmul fast float %8546, %8535
  %8602 = fmul fast float %8546, %8536
  %8603 = fmul fast float %8546, %8537
  %8604 = call float @dx.op.unary.f32(i32 21, float %8601)  ; Exp(value)
  %8605 = call float @dx.op.unary.f32(i32 21, float %8602)  ; Exp(value)
  %8606 = call float @dx.op.unary.f32(i32 21, float %8603)  ; Exp(value)
  %8607 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8608 = call float @dx.op.unary.f32(i32 7, float %8605)  ; Saturate(value)
  %8609 = call float @dx.op.unary.f32(i32 7, float %8606)  ; Saturate(value)
  %8610 = fmul fast float %8607, %8571
  %8611 = fmul fast float %8608, %8572
  %8612 = fmul fast float %8609, %8573
  %8613 = fsub fast float %8571, %8610
  %8614 = fsub fast float %8572, %8611
  %8615 = fsub fast float %8573, %8612
  %8616 = fmul fast float %8613, %8532
  %8617 = fmul fast float %8614, %8533
  %8618 = fmul fast float %8615, %8534
  %8619 = fsub fast float %87, %8252
  %8620 = fmul fast float %8254, %8619
  %8621 = call float @dx.op.unary.f32(i32 7, float %8620)  ; Saturate(value)
  %8622 = fmul fast float %8621, %8621
  %8623 = fmul fast float %8621, 2.000000e+00
  %8624 = fsub fast float 3.000000e+00, %8623
  %8625 = fmul fast float %8622, %8624
  %8626 = fsub fast float %8616, %8595
  %8627 = fsub fast float %8617, %8596
  %8628 = fsub fast float %8618, %8597
  %8629 = fmul fast float %8625, %8626
  %8630 = fmul fast float %8625, %8627
  %8631 = fmul fast float %8625, %8628
  %8632 = fadd fast float %8629, %8595
  %8633 = fadd fast float %8630, %8596
  %8634 = fadd fast float %8631, %8597
  %8635 = fsub fast float %8607, %8598
  %8636 = fsub fast float %8608, %8599
  %8637 = fsub fast float %8609, %8600
  %8638 = fmul fast float %8625, %8635
  %8639 = fmul fast float %8625, %8636
  %8640 = fmul fast float %8625, %8637
  %8641 = fadd fast float %8638, %8598
  %8642 = fadd fast float %8639, %8599
  %8643 = fadd fast float %8640, %8600
  br i1 %8352, label %8644, label %8712

; <label>:8644                                    ; preds = %8519
  %8645 = extractvalue %dx.types.CBufRet.f32 %8548, 3
  %8646 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8645)  ; Dot3(ax,ay,az,bx,by,bz)
  %8647 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2611, float %2612, float %2613)  ; Dot3(ax,ay,az,bx,by,bz)
  %8648 = fdiv fast float 1.000000e+00, %8647
  %8649 = fmul fast float %8648, %8646
  %8650 = fcmp ogt float %2455, -0.000000e+00
  %8651 = select i1 %8650, float %8645, float %8649
  %8652 = call float @dx.op.binary.f32(i32 36, float %8651, float %8541)  ; FMin(a,b)
  %8653 = fmul fast float %8549, %8652
  %8654 = fmul fast float %8653, %8535
  %8655 = fmul fast float %8653, %8536
  %8656 = fmul fast float %8653, %8537
  %8657 = call float @dx.op.unary.f32(i32 21, float %8654)  ; Exp(value)
  %8658 = call float @dx.op.unary.f32(i32 21, float %8655)  ; Exp(value)
  %8659 = call float @dx.op.unary.f32(i32 21, float %8656)  ; Exp(value)
  %8660 = fmul fast float %8657, %8523
  %8661 = fmul fast float %8658, %8524
  %8662 = fmul fast float %8659, %8525
  %8663 = fmul fast float %8560, %8652
  %8664 = fmul fast float %8663, %8535
  %8665 = fmul fast float %8663, %8536
  %8666 = fmul fast float %8663, %8537
  %8667 = call float @dx.op.unary.f32(i32 21, float %8664)  ; Exp(value)
  %8668 = call float @dx.op.unary.f32(i32 21, float %8665)  ; Exp(value)
  %8669 = call float @dx.op.unary.f32(i32 21, float %8666)  ; Exp(value)
  %8670 = fmul fast float %8667, %8526
  %8671 = fmul fast float %8668, %8527
  %8672 = fmul fast float %8669, %8528
  %8673 = fadd fast float %8670, %8660
  %8674 = fadd fast float %8671, %8661
  %8675 = fadd fast float %8672, %8662
  %8676 = fmul fast float %8651, %8535
  %8677 = fmul fast float %8651, %8536
  %8678 = fmul fast float %8651, %8537
  %8679 = call float @dx.op.unary.f32(i32 21, float %8676)  ; Exp(value)
  %8680 = call float @dx.op.unary.f32(i32 21, float %8677)  ; Exp(value)
  %8681 = call float @dx.op.unary.f32(i32 21, float %8678)  ; Exp(value)
  %8682 = call float @dx.op.unary.f32(i32 7, float %8679)  ; Saturate(value)
  %8683 = call float @dx.op.unary.f32(i32 7, float %8680)  ; Saturate(value)
  %8684 = call float @dx.op.unary.f32(i32 7, float %8681)  ; Saturate(value)
  %8685 = fmul fast float %8682, %8673
  %8686 = fmul fast float %8683, %8674
  %8687 = fmul fast float %8684, %8675
  %8688 = fsub fast float %8673, %8685
  %8689 = fsub fast float %8674, %8686
  %8690 = fsub fast float %8675, %8687
  %8691 = fmul fast float %8688, %8532
  %8692 = fmul fast float %8689, %8533
  %8693 = fmul fast float %8690, %8534
  %8694 = fsub fast float %8632, %8691
  %8695 = fsub fast float %8633, %8692
  %8696 = fsub fast float %8634, %8693
  %8697 = fmul fast float %8694, %8235
  %8698 = fmul fast float %8695, %8235
  %8699 = fmul fast float %8696, %8235
  %8700 = fadd fast float %8697, %8691
  %8701 = fadd fast float %8698, %8692
  %8702 = fadd fast float %8699, %8693
  %8703 = fsub fast float %8641, %8682
  %8704 = fsub fast float %8642, %8683
  %8705 = fsub fast float %8643, %8684
  %8706 = fmul fast float %8703, %8235
  %8707 = fmul fast float %8704, %8235
  %8708 = fmul fast float %8705, %8235
  %8709 = fadd fast float %8706, %8682
  %8710 = fadd fast float %8707, %8683
  %8711 = fadd fast float %8708, %8684
  br label %8712

; <label>:8712                                    ; preds = %8644, %8519
  %8713 = phi float [ %8700, %8644 ], [ %8632, %8519 ]
  %8714 = phi float [ %8701, %8644 ], [ %8633, %8519 ]
  %8715 = phi float [ %8702, %8644 ], [ %8634, %8519 ]
  %8716 = phi float [ %8709, %8644 ], [ %8641, %8519 ]
  %8717 = phi float [ %8710, %8644 ], [ %8642, %8519 ]
  %8718 = phi float [ %8711, %8644 ], [ %8643, %8519 ]
  %8719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8720 = extractvalue %dx.types.CBufRet.i32 %8719, 3
  %8721 = and i32 %8720, 3
  %8722 = icmp ne i32 %8721, 0
  %8723 = and i32 %8720, 4
  %8724 = icmp ne i32 %8723, 0
  %8725 = and i1 %8722, %8724
  br i1 %8725, label %8726, label %8733

; <label>:8726                                    ; preds = %8712
  %8727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %8239, float %8240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8728 = extractvalue %dx.types.ResRet.f32 %8727, 0
  %8729 = fsub fast float 1.000000e+00, %8728
  %8730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8730, 0
  %8732 = fcmp fast olt float %8729, %8731
  br label %8736

; <label>:8733                                    ; preds = %8712
  %8734 = icmp eq i32 %8723, 0
  %8735 = and i1 %8722, %8734
  br label %8736

; <label>:8736                                    ; preds = %8733, %8726
  %8737 = phi i1 [ %8732, %8726 ], [ %8735, %8733 ]
  %8738 = xor i1 %2609, %8737
  %8739 = select i1 %8738, float 0.000000e+00, float %8235
  %8740 = fcmp fast ogt float %8739, 0.000000e+00
  %8741 = select i1 %8740, float %8239, float 0.000000e+00
  %8742 = select i1 %8740, float %8240, float 0.000000e+00
  %8743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %8741, float %8742, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8744 = extractvalue %dx.types.ResRet.f32 %8743, 0
  %8745 = extractvalue %dx.types.ResRet.f32 %8743, 1
  %8746 = extractvalue %dx.types.ResRet.f32 %8743, 2
  %8747 = fmul fast float %8745, %8739
  %8748 = fmul fast float %8746, %8739
  %8749 = select i1 %2609, float 0.000000e+00, float %8747
  %8750 = select i1 %2609, float 0.000000e+00, float %8748
  %8751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8752 = extractvalue %dx.types.CBufRet.f32 %8751, 1
  %8753 = fmul fast float %8739, %8716
  %8754 = fmul fast float %8753, %8744
  %8755 = fmul fast float %8754, %8752
  %8756 = fmul fast float %8752, %8717
  %8757 = fmul fast float %8756, %8749
  %8758 = fmul fast float %8752, %8718
  %8759 = fmul fast float %8758, %8750
  %8760 = fadd fast float %8755, %8713
  %8761 = fadd fast float %8757, %8714
  %8762 = fadd fast float %8759, %8715
  br label %8802

; <label>:8763                                    ; preds = %8211
  %8764 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8765 = extractvalue %dx.types.CBufRet.i32 %8764, 3
  %8766 = and i32 %8765, 3
  %8767 = icmp ne i32 %8766, 0
  %8768 = and i32 %8765, 4
  %8769 = icmp ne i32 %8768, 0
  %8770 = and i1 %8767, %8769
  br i1 %8770, label %8771, label %8778

; <label>:8771                                    ; preds = %8763
  %8772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %8239, float %8240, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8773 = extractvalue %dx.types.ResRet.f32 %8772, 0
  %8774 = fsub fast float 1.000000e+00, %8773
  %8775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8776 = extractvalue %dx.types.CBufRet.f32 %8775, 0
  %8777 = fcmp fast olt float %8774, %8776
  br label %8781

; <label>:8778                                    ; preds = %8763
  %8779 = icmp eq i32 %8768, 0
  %8780 = and i1 %8767, %8779
  br label %8781

; <label>:8781                                    ; preds = %8778, %8771
  %8782 = phi i1 [ %8777, %8771 ], [ %8780, %8778 ]
  %8783 = xor i1 %2609, %8782
  %8784 = select i1 %8783, float 0.000000e+00, float %8235
  %8785 = fcmp fast ogt float %8784, 0.000000e+00
  %8786 = select i1 %8785, float %8239, float 0.000000e+00
  %8787 = select i1 %8785, float %8240, float 0.000000e+00
  %8788 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %61, float %8786, float %8787, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8789 = extractvalue %dx.types.ResRet.f32 %8788, 0
  %8790 = extractvalue %dx.types.ResRet.f32 %8788, 1
  %8791 = extractvalue %dx.types.ResRet.f32 %8788, 2
  %8792 = fmul fast float %8789, %8784
  %8793 = fmul fast float %8790, %8784
  %8794 = fmul fast float %8791, %8784
  %8795 = select i1 %2609, float 0.000000e+00, float %8793
  %8796 = select i1 %2609, float 0.000000e+00, float %8794
  %8797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8798 = extractvalue %dx.types.CBufRet.f32 %8797, 1
  %8799 = fmul fast float %8792, %8798
  %8800 = fmul fast float %8795, %8798
  %8801 = fmul fast float %8796, %8798
  br label %8802

; <label>:8802                                    ; preds = %8781, %8736
  %8803 = phi float [ %8799, %8781 ], [ %8760, %8736 ]
  %8804 = phi float [ %8800, %8781 ], [ %8761, %8736 ]
  %8805 = phi float [ %8801, %8781 ], [ %8762, %8736 ]
  %8806 = fmul fast float %5513, %8803
  %8807 = fmul fast float %5513, %8804
  %8808 = fmul fast float %5513, %8805
  %8809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8810 = extractvalue %dx.types.CBufRet.f32 %8809, 0
  %8811 = bitcast float %8810 to i32
  %8812 = and i32 %8811, 255
  %8813 = uitofp i32 %8812 to float
  %8814 = fptoui float %8813 to i32
  %8815 = icmp eq i32 %8814, 13
  br i1 %8815, label %8816, label %8836

; <label>:8816                                    ; preds = %8802
  %8817 = fadd fast float %1913, 2.000000e+00
  %8818 = fadd fast float %1915, 1.000000e+00
  %8819 = fsub fast float 1.000000e+00, %1916
  %8820 = fmul fast float %8817, 5.000000e-01
  %8821 = fmul fast float %8818, 5.000000e-01
  %8822 = fmul fast float %8819, 5.000000e-01
  %8823 = call float @dx.op.unary.f32(i32 7, float %8820)  ; Saturate(value)
  %8824 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8825 = call float @dx.op.unary.f32(i32 7, float %8822)  ; Saturate(value)
  %8826 = fmul fast float %8823, 1.023000e+03
  %8827 = fmul fast float %8824, 1.023000e+03
  %8828 = fmul fast float %8825, 1.023000e+03
  %8829 = fptoui float %8826 to i32
  %8830 = fptoui float %8827 to i32
  %8831 = fptoui float %8828 to i32
  %8832 = shl i32 %8830, 10
  %8833 = or i32 %8832, %8829
  %8834 = shl i32 %8831, 20
  %8835 = or i32 %8833, %8834
  br label %8836

; <label>:8836                                    ; preds = %8816, %8802
  %8837 = phi i32 [ %8835, %8816 ], [ %8214, %8802 ]
  %8838 = icmp eq i32 %8814, 14
  br i1 %8838, label %8839, label %8859

; <label>:8839                                    ; preds = %8836
  %8840 = fadd fast float %1910, 1.000000e+00
  %8841 = fadd fast float %1920, 1.000000e+00
  %8842 = fsub fast float 1.000000e+00, %118
  %8843 = fmul fast float %8840, 5.000000e-01
  %8844 = fmul fast float %8841, 5.000000e-01
  %8845 = fmul fast float %8842, 5.000000e-01
  %8846 = call float @dx.op.unary.f32(i32 7, float %8843)  ; Saturate(value)
  %8847 = call float @dx.op.unary.f32(i32 7, float %8844)  ; Saturate(value)
  %8848 = call float @dx.op.unary.f32(i32 7, float %8845)  ; Saturate(value)
  %8849 = fmul fast float %8846, 1.023000e+03
  %8850 = fmul fast float %8847, 1.023000e+03
  %8851 = fmul fast float %8848, 1.023000e+03
  %8852 = fptoui float %8849 to i32
  %8853 = fptoui float %8850 to i32
  %8854 = fptoui float %8851 to i32
  %8855 = shl i32 %8853, 10
  %8856 = or i32 %8855, %8852
  %8857 = shl i32 %8854, 20
  %8858 = or i32 %8856, %8857
  br label %8859

; <label>:8859                                    ; preds = %8839, %8836
  %8860 = phi i32 [ %8858, %8839 ], [ %8837, %8836 ]
  %8861 = icmp eq i32 %8814, 15
  br i1 %8861, label %8862, label %8882

; <label>:8862                                    ; preds = %8859
  %8863 = fadd fast float %117, 1.000000e+00
  %8864 = fadd fast float %118, 1.000000e+00
  %8865 = fadd fast float %119, 1.000000e+00
  %8866 = fmul fast float %8863, 5.000000e-01
  %8867 = fmul fast float %8864, 5.000000e-01
  %8868 = fmul fast float %8865, 5.000000e-01
  %8869 = call float @dx.op.unary.f32(i32 7, float %8866)  ; Saturate(value)
  %8870 = call float @dx.op.unary.f32(i32 7, float %8867)  ; Saturate(value)
  %8871 = call float @dx.op.unary.f32(i32 7, float %8868)  ; Saturate(value)
  %8872 = fmul fast float %8869, 1.023000e+03
  %8873 = fmul fast float %8870, 1.023000e+03
  %8874 = fmul fast float %8871, 1.023000e+03
  %8875 = fptoui float %8872 to i32
  %8876 = fptoui float %8873 to i32
  %8877 = fptoui float %8874 to i32
  %8878 = shl i32 %8876, 10
  %8879 = or i32 %8878, %8875
  %8880 = shl i32 %8877, 20
  %8881 = or i32 %8879, %8880
  br label %8882

; <label>:8882                                    ; preds = %8862, %8859
  %8883 = phi i32 [ %8881, %8862 ], [ %8860, %8859 ]
  %8884 = fsub fast float 1.000000e+00, %2616
  %8885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8886 = extractvalue %dx.types.CBufRet.f32 %8885, 0
  %8887 = fmul fast float %8886, %8884
  %8888 = fmul fast float %2427, 2.000000e+00
  %8889 = fmul fast float %8888, %2464
  %8890 = fsub fast float %2455, %8889
  %8891 = call float @dx.op.unary.f32(i32 7, float %8890)  ; Saturate(value)
  %8892 = fsub fast float 1.000000e+00, %8891
  %8893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8894 = extractvalue %dx.types.CBufRet.f32 %8893, 3
  %8895 = fmul fast float %8894, %8892
  %8896 = fsub fast float 1.000000e+00, %2583
  %8897 = call float @dx.op.unary.f32(i32 7, float %8896)  ; Saturate(value)
  %8898 = fadd fast float %8232, %2585
  %8899 = fmul fast float %8898, %2583
  %8900 = fmul fast float %8895, %8897
  %8901 = icmp eq i32 %8814, 39
  %8902 = icmp eq i32 %8814, 40
  %8903 = select i1 %8902, float %2583, float 0.000000e+00
  %8904 = select i1 %8901, float %8898, float %8903
  %8905 = fmul fast float %8230, %2437
  %8906 = fmul fast float %8231, %2438
  %8907 = fmul fast float %8232, %2439
  %8908 = fadd fast float %8905, %8227
  %8909 = fadd fast float %8908, %8806
  %8910 = fadd fast float %8906, %8228
  %8911 = fadd fast float %8910, %8807
  %8912 = fadd fast float %8907, %8229
  %8913 = fadd fast float %8912, %8808
  br i1 %115, label %8914, label %9716

; <label>:8914                                    ; preds = %8882
  %8915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8916 = extractvalue %dx.types.CBufRet.f32 %8915, 0
  %8917 = extractvalue %dx.types.CBufRet.f32 %8915, 1
  %8918 = extractvalue %dx.types.CBufRet.f32 %8915, 2
  %8919 = extractvalue %dx.types.CBufRet.f32 %8915, 3
  %8920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.f32 %8920, 0
  %8922 = extractvalue %dx.types.CBufRet.f32 %8920, 1
  %8923 = extractvalue %dx.types.CBufRet.f32 %8920, 2
  %8924 = extractvalue %dx.types.CBufRet.f32 %8920, 3
  %8925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8926 = extractvalue %dx.types.CBufRet.f32 %8925, 0
  %8927 = extractvalue %dx.types.CBufRet.f32 %8925, 1
  %8928 = extractvalue %dx.types.CBufRet.f32 %8925, 2
  %8929 = extractvalue %dx.types.CBufRet.f32 %8925, 3
  %8930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8931 = extractvalue %dx.types.CBufRet.f32 %8930, 0
  %8932 = extractvalue %dx.types.CBufRet.f32 %8930, 1
  %8933 = extractvalue %dx.types.CBufRet.f32 %8930, 2
  %8934 = extractvalue %dx.types.CBufRet.f32 %8930, 3
  %8935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8936 = extractvalue %dx.types.CBufRet.f32 %8935, 3
  %8937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8938 = extractvalue %dx.types.CBufRet.f32 %8937, 3
  %8939 = extractvalue %dx.types.CBufRet.f32 %8937, 0
  %8940 = extractvalue %dx.types.CBufRet.f32 %8937, 1
  %8941 = extractvalue %dx.types.CBufRet.f32 %8937, 2
  %8942 = fcmp fast olt float %8941, -5.000000e-01
  %8943 = fmul fast float %2452, %2451
  %8944 = fadd fast float %8943, %8919
  %8945 = call float @dx.op.dot3.f32(i32 55, float %2453, float %2454, float %2455, float %8916, float %8917, float %8918)  ; Dot3(ax,ay,az,bx,by,bz)
  %8946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8947 = extractvalue %dx.types.CBufRet.i32 %8946, 1
  %8948 = and i32 %8947, 1
  %8949 = icmp ne i32 %8948, 0
  %8950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8951 = extractvalue %dx.types.CBufRet.f32 %8950, 2
  %8952 = fcmp fast ogt float %8951, 0.000000e+00
  %8953 = and i1 %8949, %8952
  br i1 %8953, label %8954, label %9360, !dx.controlflow.hints !168

; <label>:8954                                    ; preds = %8914
  %8955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8956 = extractvalue %dx.types.CBufRet.f32 %8955, 3
  %8957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8958 = extractvalue %dx.types.CBufRet.f32 %8957, 2
  %8959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8960 = extractvalue %dx.types.CBufRet.f32 %8959, 2
  %8961 = fsub fast float %8958, %8960
  %8962 = and i32 %8947, 2
  %8963 = extractvalue %dx.types.CBufRet.i32 %8946, 0
  %8964 = call i32 @dx.op.binary.i32(i32 40, i32 %8963, i32 3)  ; UMin(a,b)
  %8965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.f32 %8965, 0
  %8967 = extractvalue %dx.types.CBufRet.f32 %8965, 1
  %8968 = extractvalue %dx.types.CBufRet.f32 %8959, 0
  %8969 = extractvalue %dx.types.CBufRet.f32 %8959, 1
  %8970 = fsub fast float %8966, %8968
  %8971 = fsub fast float %8967, %8969
  %8972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8973 = extractvalue %dx.types.CBufRet.f32 %8972, 0
  %8974 = fcmp fast ogt float %8973, 0.000000e+00
  %8975 = fsub fast float -0.000000e+00, %8970
  %8976 = fsub fast float -0.000000e+00, %8971
  %8977 = call float @dx.op.dot2.f32(i32 54, float %2453, float %2454, float %2453, float %2454)  ; Dot2(ax,ay,bx,by)
  %8978 = call float @dx.op.dot2.f32(i32 54, float %2453, float %2454, float %8975, float %8976)  ; Dot2(ax,ay,bx,by)
  %8979 = fmul fast float %8978, 2.000000e+00
  %8980 = call float @dx.op.dot2.f32(i32 54, float %8975, float %8976, float %8975, float %8976)  ; Dot2(ax,ay,bx,by)
  %8981 = fmul fast float %8973, %8973
  %8982 = fsub fast float %8980, %8981
  %8983 = fmul fast float %8979, %8979
  %8984 = fmul fast float %8977, 4.000000e+00
  %8985 = fmul fast float %8984, %8982
  %8986 = fsub fast float %8983, %8985
  %8987 = fcmp fast ogt float %8986, 0.000000e+00
  br i1 %8987, label %8988, label %9003

; <label>:8988                                    ; preds = %8954
  %8989 = fcmp fast ogt float %8979, 0.000000e+00
  %8990 = call float @dx.op.unary.f32(i32 24, float %8986)  ; Sqrt(value)
  %8991 = fsub fast float -0.000000e+00, %8990
  %8992 = select i1 %8989, float %8990, float %8991
  %8993 = fadd fast float %8992, %8979
  %8994 = fmul float %8993, -5.000000e-01
  %8995 = fdiv fast float %8994, %8977
  %8996 = call float @dx.op.binary.f32(i32 35, float %8995, float 0.000000e+00)  ; FMax(a,b)
  %8997 = call float @dx.op.binary.f32(i32 36, float %8943, float %8996)  ; FMin(a,b)
  %8998 = fdiv fast float %8982, %8994
  %8999 = call float @dx.op.binary.f32(i32 35, float %8998, float 0.000000e+00)  ; FMax(a,b)
  %9000 = call float @dx.op.binary.f32(i32 36, float %8943, float %8999)  ; FMin(a,b)
  %9001 = call float @dx.op.binary.f32(i32 36, float %8997, float %9000)  ; FMin(a,b)
  %9002 = call float @dx.op.binary.f32(i32 35, float %8997, float %9000)  ; FMax(a,b)
  br label %9003

; <label>:9003                                    ; preds = %8988, %8954
  %9004 = phi float [ %9002, %8988 ], [ -1.000000e+00, %8954 ]
  %9005 = phi float [ %9001, %8988 ], [ -1.000000e+00, %8954 ]
  %9006 = phi i1 [ true, %8988 ], [ false, %8954 ]
  %9007 = and i1 %8974, %9006
  br i1 %9007, label %9008, label %9010

; <label>:9008                                    ; preds = %9003
  %9009 = fcmp fast oeq float %9005, %9004
  br i1 %9009, label %9313, label %9011

; <label>:9010                                    ; preds = %9003
  br i1 %8974, label %9313, label %9011

; <label>:9011                                    ; preds = %9010, %9008
  %9012 = phi float [ %8943, %9010 ], [ %9004, %9008 ]
  %9013 = phi float [ 0.000000e+00, %9010 ], [ %9005, %9008 ]
  %9014 = icmp ne i32 %8962, 0
  %9015 = fmul fast float %9012, %2455
  %9016 = fadd fast float %9015, %8956
  %9017 = fmul fast float %9016, %9012
  %9018 = select i1 %9014, float 0.000000e+00, float %9017
  %9019 = fcmp fast oeq float %2455, 0.000000e+00
  %9020 = fdiv fast float %8961, %2455
  %9021 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9020)  ; FMax(a,b)
  %9022 = select i1 %9019, float %9012, float %9021
  %9023 = call float @dx.op.binary.f32(i32 36, float %9012, float %9022)  ; FMin(a,b)
  %9024 = fcmp fast ogt float %2455, 0.000000e+00
  %9025 = fcmp fast olt float %8961, 0.000000e+00
  br i1 %9024, label %9026, label %9083

; <label>:9026                                    ; preds = %9011
  %9027 = icmp eq i32 %8962, 0
  br i1 %9025, label %9028, label %9072

; <label>:9028                                    ; preds = %9026
  %9029 = select i1 %9027, float %9012, float 0.000000e+00
  %9030 = fsub fast float -0.000000e+00, %9029
  %9031 = call float @dx.op.unary.f32(i32 6, float %9030)  ; FAbs(value)
  %9032 = fmul fast float %9029, %2455
  %9033 = fadd fast float %9032, %8956
  %9034 = fmul fast float %9031, %9033
  %9035 = fsub fast float %9018, %9034
  %9036 = fsub fast float %9012, %9031
  %9037 = select i1 %9027, float %9036, float 0.000000e+00
  %9038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9039 = extractvalue %dx.types.CBufRet.f32 %9038, 0
  %9040 = extractvalue %dx.types.CBufRet.f32 %9038, 1
  %9041 = extractvalue %dx.types.CBufRet.f32 %9038, 2
  %9042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9043 = extractvalue %dx.types.CBufRet.f32 %9042, 0
  %9044 = extractvalue %dx.types.CBufRet.f32 %9042, 1
  %9045 = extractvalue %dx.types.CBufRet.f32 %9042, 2
  %9046 = extractvalue %dx.types.CBufRet.f32 %9042, 3
  %9047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9048 = extractvalue %dx.types.CBufRet.f32 %9047, 3
  %9049 = call float @dx.op.binary.f32(i32 36, float %9035, float %9048)  ; FMin(a,b)
  %9050 = fmul fast float %9046, %9037
  %9051 = call float @dx.op.unary.f32(i32 7, float %9050)  ; Saturate(value)
  %9052 = fsub fast float %9043, %9039
  %9053 = fsub fast float %9044, %9040
  %9054 = fsub fast float %9045, %9041
  %9055 = fmul fast float %9051, %9052
  %9056 = fmul fast float %9051, %9053
  %9057 = fmul fast float %9051, %9054
  %9058 = fadd fast float %9055, %9039
  %9059 = fadd fast float %9056, %9040
  %9060 = fadd fast float %9057, %9041
  %9061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9062 = extractvalue %dx.types.CBufRet.f32 %9061, 0
  %9063 = extractvalue %dx.types.CBufRet.f32 %9061, 1
  %9064 = fadd fast float %9063, %9062
  %9065 = call float @dx.op.unary.f32(i32 7, float %9064)  ; Saturate(value)
  %9066 = extractvalue %dx.types.CBufRet.f32 %9061, 2
  %9067 = extractvalue %dx.types.CBufRet.f32 %9061, 3
  %9068 = fadd fast float %9067, %9066
  %9069 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  %9070 = fmul fast float %9065, %9049
  %9071 = fmul fast float %9070, %9069
  br label %9313

; <label>:9072                                    ; preds = %9026
  br i1 %9027, label %9073, label %9094

; <label>:9073                                    ; preds = %9072
  %9074 = call float @dx.op.binary.f32(i32 36, float %9023, float %9013)  ; FMin(a,b)
  %9075 = fsub fast float %9023, %9074
  %9076 = fsub fast float %9075, %9012
  %9077 = call float @dx.op.unary.f32(i32 6, float %9076)  ; FAbs(value)
  %9078 = fadd fast float %9075, %9012
  %9079 = fmul fast float %9078, %2455
  %9080 = fadd fast float %9079, %8956
  %9081 = fmul fast float %9080, %9077
  %9082 = fsub fast float %9018, %9081
  br label %9094

; <label>:9083                                    ; preds = %9011
  br i1 %9025, label %9084, label %9094

; <label>:9084                                    ; preds = %9083
  %9085 = call float @dx.op.binary.f32(i32 35, float %9013, float %9023)  ; FMax(a,b)
  %9086 = icmp eq i32 %8962, 0
  %9087 = select i1 %9086, float %9023, float 0.000000e+00
  %9088 = fsub fast float -0.000000e+00, %9087
  %9089 = call float @dx.op.unary.f32(i32 6, float %9088)  ; FAbs(value)
  %9090 = fmul fast float %9087, %2455
  %9091 = fadd fast float %9090, %8956
  %9092 = fmul fast float %9089, %9091
  %9093 = fsub fast float %9018, %9092
  br label %9094

; <label>:9094                                    ; preds = %9084, %9083, %9073, %9072
  %9095 = phi float [ %9013, %9072 ], [ %9013, %9073 ], [ %9085, %9084 ], [ %9013, %9083 ]
  %9096 = phi float [ 0.000000e+00, %9072 ], [ %9077, %9073 ], [ %9089, %9084 ], [ 0.000000e+00, %9083 ]
  %9097 = phi float [ %9018, %9072 ], [ %9082, %9073 ], [ %9093, %9084 ], [ %9018, %9083 ]
  %9098 = phi float [ %9023, %9072 ], [ %9023, %9073 ], [ %9012, %9084 ], [ %9012, %9083 ]
  %9099 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %9099, align 4, !tbaa !106, !noalias !169
  %9100 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %9100, align 4, !tbaa !106, !noalias !169
  %9101 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %9101, align 4, !tbaa !106, !noalias !169
  %9102 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %9102, align 4, !tbaa !106, !noalias !169
  %9103 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %9103, align 4, !tbaa !106, !noalias !169
  %9104 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %9104, align 4, !tbaa !106, !noalias !169
  %9105 = icmp sgt i32 %8964, 0
  br i1 %9105, label %9106, label %9167

; <label>:9106                                    ; preds = %9094
  br label %9107

; <label>:9107                                    ; preds = %9156, %9106
  %9108 = phi i32 [ %9157, %9156 ], [ 0, %9106 ]
  %9109 = phi i32 [ %9158, %9156 ], [ 0, %9106 ]
  %9110 = add nuw i32 %9109, 171
  %9111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %9110)  ; CBufferLoadLegacy(handle,regIndex)
  %9112 = extractvalue %dx.types.CBufRet.f32 %9111, 0
  %9113 = extractvalue %dx.types.CBufRet.f32 %9111, 1
  %9114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9115 = extractvalue %dx.types.CBufRet.f32 %9114, 0
  %9116 = extractvalue %dx.types.CBufRet.f32 %9114, 1
  %9117 = fsub fast float %9112, %9115
  %9118 = fsub fast float %9113, %9116
  %9119 = extractvalue %dx.types.CBufRet.f32 %9111, 2
  %9120 = fsub fast float -0.000000e+00, %9117
  %9121 = fsub fast float -0.000000e+00, %9118
  %9122 = call float @dx.op.dot2.f32(i32 54, float %2453, float %2454, float %9120, float %9121)  ; Dot2(ax,ay,bx,by)
  %9123 = fmul fast float %9122, 2.000000e+00
  %9124 = call float @dx.op.dot2.f32(i32 54, float %9120, float %9121, float %9120, float %9121)  ; Dot2(ax,ay,bx,by)
  %9125 = fmul fast float %9119, %9119
  %9126 = fsub fast float %9124, %9125
  %9127 = fmul fast float %9123, %9123
  %9128 = fmul fast float %8984, %9126
  %9129 = fsub fast float %9127, %9128
  %9130 = fcmp fast ogt float %9129, 0.000000e+00
  br i1 %9130, label %9131, label %9146

; <label>:9131                                    ; preds = %9107
  %9132 = fcmp fast ogt float %9123, 0.000000e+00
  %9133 = call float @dx.op.unary.f32(i32 24, float %9129)  ; Sqrt(value)
  %9134 = fsub fast float -0.000000e+00, %9133
  %9135 = select i1 %9132, float %9133, float %9134
  %9136 = fadd fast float %9135, %9123
  %9137 = fmul float %9136, -5.000000e-01
  %9138 = fdiv fast float %9137, %8977
  %9139 = call float @dx.op.binary.f32(i32 35, float %9138, float 0.000000e+00)  ; FMax(a,b)
  %9140 = call float @dx.op.binary.f32(i32 36, float %9012, float %9139)  ; FMin(a,b)
  %9141 = fdiv fast float %9126, %9137
  %9142 = call float @dx.op.binary.f32(i32 35, float %9141, float 0.000000e+00)  ; FMax(a,b)
  %9143 = call float @dx.op.binary.f32(i32 36, float %9012, float %9142)  ; FMin(a,b)
  %9144 = call float @dx.op.binary.f32(i32 36, float %9140, float %9143)  ; FMin(a,b)
  %9145 = call float @dx.op.binary.f32(i32 35, float %9140, float %9143)  ; FMax(a,b)
  br label %9146

; <label>:9146                                    ; preds = %9131, %9107
  %9147 = phi float [ %9145, %9131 ], [ -1.000000e+00, %9107 ]
  %9148 = phi float [ %9144, %9131 ], [ -1.000000e+00, %9107 ]
  %9149 = phi i1 [ true, %9131 ], [ false, %9107 ]
  br i1 %9149, label %9150, label %9156

; <label>:9150                                    ; preds = %9146
  %9151 = call float @dx.op.binary.f32(i32 35, float %9095, float %9148)  ; FMax(a,b)
  %9152 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %9109
  store float %9151, float* %9152, align 4, !tbaa !106, !noalias !169
  %9153 = call float @dx.op.binary.f32(i32 35, float %9095, float %9147)  ; FMax(a,b)
  %9154 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %9109
  store float %9153, float* %9154, align 4, !tbaa !106, !noalias !169
  %9155 = add nsw i32 %9108, 1
  br label %9156

; <label>:9156                                    ; preds = %9150, %9146
  %9157 = phi i32 [ %9155, %9150 ], [ %9108, %9146 ]
  %9158 = add nuw nsw i32 %9109, 1
  %9159 = icmp eq i32 %9158, %8964
  br i1 %9159, label %9160, label %9107

; <label>:9160                                    ; preds = %9156
  %9161 = load float, float* %9101, align 4, !tbaa !106, !alias.scope !185, !noalias !188
  %9162 = load float, float* %9100, align 4, !tbaa !106, !alias.scope !191, !noalias !192
  %9163 = load float, float* %9099, align 4, !tbaa !106, !alias.scope !193, !noalias !194
  %9164 = load float, float* %9104, align 4, !tbaa !106, !alias.scope !195, !noalias !198
  %9165 = load float, float* %9103, align 4, !tbaa !106, !alias.scope !201, !noalias !202
  %9166 = load float, float* %9102, align 4, !tbaa !106, !alias.scope !203, !noalias !204
  br label %9167

; <label>:9167                                    ; preds = %9160, %9094
  %9168 = phi float [ -1.000000e+00, %9094 ], [ %9166, %9160 ]
  %9169 = phi float [ -1.000000e+00, %9094 ], [ %9165, %9160 ]
  %9170 = phi float [ -1.000000e+00, %9094 ], [ %9164, %9160 ]
  %9171 = phi float [ -1.000000e+00, %9094 ], [ %9163, %9160 ]
  %9172 = phi float [ -1.000000e+00, %9094 ], [ %9162, %9160 ]
  %9173 = phi float [ -1.000000e+00, %9094 ], [ %9161, %9160 ]
  %9174 = phi i32 [ 0, %9094 ], [ %9157, %9160 ]
  %9175 = call float @dx.op.binary.f32(i32 36, float %9172, float %9173)  ; FMin(a,b)
  %9176 = call float @dx.op.binary.f32(i32 36, float %9171, float %9175)  ; FMin(a,b)
  %9177 = call float @dx.op.binary.f32(i32 35, float %9171, float %9172)  ; FMax(a,b)
  %9178 = call float @dx.op.binary.f32(i32 36, float %9177, float %9173)  ; FMin(a,b)
  %9179 = call float @dx.op.binary.f32(i32 36, float %9171, float %9172)  ; FMin(a,b)
  %9180 = call float @dx.op.binary.f32(i32 35, float %9179, float %9178)  ; FMax(a,b)
  %9181 = call float @dx.op.binary.f32(i32 35, float %9172, float %9173)  ; FMax(a,b)
  %9182 = call float @dx.op.binary.f32(i32 35, float %9171, float %9181)  ; FMax(a,b)
  store float %9176, float* %9099, align 4, !tbaa !106, !alias.scope !193, !noalias !194
  store float %9180, float* %9100, align 4, !tbaa !106, !alias.scope !191, !noalias !192
  store float %9182, float* %9101, align 4, !tbaa !106, !alias.scope !185, !noalias !188
  %9183 = call float @dx.op.binary.f32(i32 36, float %9169, float %9170)  ; FMin(a,b)
  %9184 = call float @dx.op.binary.f32(i32 36, float %9168, float %9183)  ; FMin(a,b)
  %9185 = call float @dx.op.binary.f32(i32 35, float %9168, float %9169)  ; FMax(a,b)
  %9186 = call float @dx.op.binary.f32(i32 36, float %9185, float %9170)  ; FMin(a,b)
  %9187 = call float @dx.op.binary.f32(i32 36, float %9168, float %9169)  ; FMin(a,b)
  %9188 = call float @dx.op.binary.f32(i32 35, float %9187, float %9186)  ; FMax(a,b)
  %9189 = call float @dx.op.binary.f32(i32 35, float %9169, float %9170)  ; FMax(a,b)
  %9190 = call float @dx.op.binary.f32(i32 35, float %9168, float %9189)  ; FMax(a,b)
  store float %9184, float* %9102, align 4, !tbaa !106, !alias.scope !203, !noalias !204
  store float %9188, float* %9103, align 4, !tbaa !106, !alias.scope !201, !noalias !202
  store float %9190, float* %9104, align 4, !tbaa !106, !alias.scope !195, !noalias !198
  %9191 = sub nsw i32 3, %9174
  %9192 = icmp sgt i32 %9191, 2
  br i1 %9192, label %9193, label %9231

; <label>:9193                                    ; preds = %9167
  %9194 = icmp eq i32 %8962, 0
  %9195 = fsub fast float %9012, %9096
  %9196 = select i1 %9194, float %9195, float %9096
  %9197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9198 = extractvalue %dx.types.CBufRet.f32 %9197, 0
  %9199 = extractvalue %dx.types.CBufRet.f32 %9197, 1
  %9200 = extractvalue %dx.types.CBufRet.f32 %9197, 2
  %9201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9202 = extractvalue %dx.types.CBufRet.f32 %9201, 0
  %9203 = extractvalue %dx.types.CBufRet.f32 %9201, 1
  %9204 = extractvalue %dx.types.CBufRet.f32 %9201, 2
  %9205 = extractvalue %dx.types.CBufRet.f32 %9201, 3
  %9206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9207 = extractvalue %dx.types.CBufRet.f32 %9206, 3
  %9208 = call float @dx.op.binary.f32(i32 36, float %9097, float %9207)  ; FMin(a,b)
  %9209 = fmul fast float %9205, %9196
  %9210 = call float @dx.op.unary.f32(i32 7, float %9209)  ; Saturate(value)
  %9211 = fsub fast float %9202, %9198
  %9212 = fsub fast float %9203, %9199
  %9213 = fsub fast float %9204, %9200
  %9214 = fmul fast float %9210, %9211
  %9215 = fmul fast float %9210, %9212
  %9216 = fmul fast float %9210, %9213
  %9217 = fadd fast float %9214, %9198
  %9218 = fadd fast float %9215, %9199
  %9219 = fadd fast float %9216, %9200
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9223 = fadd fast float %9222, %9221
  %9224 = call float @dx.op.unary.f32(i32 7, float %9223)  ; Saturate(value)
  %9225 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9226 = extractvalue %dx.types.CBufRet.f32 %9220, 3
  %9227 = fadd fast float %9226, %9225
  %9228 = call float @dx.op.unary.f32(i32 7, float %9227)  ; Saturate(value)
  %9229 = fmul fast float %9224, %9208
  %9230 = fmul fast float %9229, %9228
  br label %9313

; <label>:9231                                    ; preds = %9167
  %9232 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %9191
  %9233 = load float, float* %9232, align 4, !tbaa !106, !noalias !169
  %9234 = fcmp fast olt float %9233, %9098
  %9235 = icmp sgt i32 %9174, 0
  %9236 = and i1 %9235, %9234
  br i1 %9236, label %9237, label %9274

; <label>:9237                                    ; preds = %9231
  br label %9238

; <label>:9238                                    ; preds = %9267, %9237
  %9239 = phi float [ %9268, %9267 ], [ %9096, %9237 ]
  %9240 = phi float [ %9269, %9267 ], [ %9097, %9237 ]
  %9241 = phi float [ %9249, %9267 ], [ %9233, %9237 ]
  %9242 = phi i32 [ %9246, %9267 ], [ %9191, %9237 ]
  %9243 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %9242
  %9244 = load float, float* %9243, align 4, !tbaa !106, !noalias !169
  %9245 = icmp slt i32 %9242, 2
  %9246 = add nsw i32 %9242, 1
  %9247 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %9246
  %9248 = load float, float* %9247, align 4, !tbaa !106, !noalias !169
  %9249 = select i1 %9245, float %9248, float %9012
  %9250 = call float @dx.op.binary.f32(i32 36, float %9249, float %9244)  ; FMin(a,b)
  %9251 = call float @dx.op.binary.f32(i32 36, float %9098, float %9250)  ; FMin(a,b)
  %9252 = icmp eq i32 %8962, 0
  %9253 = fadd fast float %9251, %9241
  %9254 = fmul fast float %9253, %2455
  %9255 = fadd fast float %9254, %8956
  br i1 %9252, label %9261, label %9256

; <label>:9256                                    ; preds = %9238
  %9257 = fsub fast float %9251, %9241
  %9258 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9257)  ; FMax(a,b)
  %9259 = fmul fast float %9258, %9255
  %9260 = fadd fast float %9259, %9240
  br label %9267

; <label>:9261                                    ; preds = %9238
  %9262 = fsub fast float %9241, %9251
  %9263 = call float @dx.op.unary.f32(i32 6, float %9262)  ; FAbs(value)
  %9264 = fadd fast float %9263, %9239
  %9265 = fmul fast float %9263, %9255
  %9266 = fsub fast float %9240, %9265
  br label %9267

; <label>:9267                                    ; preds = %9261, %9256
  %9268 = phi float [ %9258, %9256 ], [ %9264, %9261 ]
  %9269 = phi float [ %9260, %9256 ], [ %9266, %9261 ]
  %9270 = fcmp fast olt float %9249, %9098
  %9271 = icmp slt i32 %9246, 3
  %9272 = and i1 %9271, %9270
  br i1 %9272, label %9238, label %9273

; <label>:9273                                    ; preds = %9267
  br label %9274

; <label>:9274                                    ; preds = %9273, %9231
  %9275 = phi float [ %9096, %9231 ], [ %9268, %9273 ]
  %9276 = phi float [ %9097, %9231 ], [ %9269, %9273 ]
  %9277 = fsub fast float %9012, %9275
  %9278 = select i1 %9014, float %9275, float %9277
  %9279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9280 = extractvalue %dx.types.CBufRet.f32 %9279, 0
  %9281 = extractvalue %dx.types.CBufRet.f32 %9279, 1
  %9282 = extractvalue %dx.types.CBufRet.f32 %9279, 2
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 1
  %9286 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9287 = extractvalue %dx.types.CBufRet.f32 %9283, 3
  %9288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9289 = extractvalue %dx.types.CBufRet.f32 %9288, 3
  %9290 = call float @dx.op.binary.f32(i32 36, float %9276, float %9289)  ; FMin(a,b)
  %9291 = fmul fast float %9287, %9278
  %9292 = call float @dx.op.unary.f32(i32 7, float %9291)  ; Saturate(value)
  %9293 = fsub fast float %9284, %9280
  %9294 = fsub fast float %9285, %9281
  %9295 = fsub fast float %9286, %9282
  %9296 = fmul fast float %9292, %9293
  %9297 = fmul fast float %9292, %9294
  %9298 = fmul fast float %9292, %9295
  %9299 = fadd fast float %9296, %9280
  %9300 = fadd fast float %9297, %9281
  %9301 = fadd fast float %9298, %9282
  %9302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9303 = extractvalue %dx.types.CBufRet.f32 %9302, 0
  %9304 = extractvalue %dx.types.CBufRet.f32 %9302, 1
  %9305 = fadd fast float %9304, %9303
  %9306 = call float @dx.op.unary.f32(i32 7, float %9305)  ; Saturate(value)
  %9307 = extractvalue %dx.types.CBufRet.f32 %9302, 2
  %9308 = extractvalue %dx.types.CBufRet.f32 %9302, 3
  %9309 = fadd fast float %9308, %9307
  %9310 = call float @dx.op.unary.f32(i32 7, float %9309)  ; Saturate(value)
  %9311 = fmul fast float %9306, %9290
  %9312 = fmul fast float %9311, %9310
  br label %9313

; <label>:9313                                    ; preds = %9274, %9193, %9028, %9010, %9008
  %9314 = phi float [ %9037, %9028 ], [ %9196, %9193 ], [ %9278, %9274 ], [ 0.000000e+00, %9008 ], [ 0.000000e+00, %9010 ]
  %9315 = phi float [ %9071, %9028 ], [ %9230, %9193 ], [ %9312, %9274 ], [ 0.000000e+00, %9008 ], [ 0.000000e+00, %9010 ]
  %9316 = phi float [ %9058, %9028 ], [ %9217, %9193 ], [ %9299, %9274 ], [ 0.000000e+00, %9008 ], [ 0.000000e+00, %9010 ]
  %9317 = phi float [ %9059, %9028 ], [ %9218, %9193 ], [ %9300, %9274 ], [ 0.000000e+00, %9008 ], [ 0.000000e+00, %9010 ]
  %9318 = phi float [ %9060, %9028 ], [ %9219, %9193 ], [ %9301, %9274 ], [ 0.000000e+00, %9008 ], [ 0.000000e+00, %9010 ]
  %9319 = fmul fast float %8951, %9315
  %9320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9321 = extractvalue %dx.types.CBufRet.f32 %9320, 2
  %9322 = fsub fast float %8958, %9321
  %9323 = fcmp fast olt float %9319, -2.000000e+01
  %9324 = call float @dx.op.unary.f32(i32 21, float %9319)  ; Exp(value)
  %9325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9326 = extractvalue %dx.types.CBufRet.f32 %9325, 2
  %9327 = extractvalue %dx.types.CBufRet.f32 %9325, 3
  %9328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9329 = extractvalue %dx.types.CBufRet.f32 %9328, 2
  %9330 = fmul fast float %9327, %9322
  %9331 = call float @dx.op.unary.f32(i32 7, float %9330)  ; Saturate(value)
  %9332 = fsub fast float 1.000000e+00, %9331
  %9333 = fmul fast float %2455, 5.000000e-01
  %9334 = fadd fast float %9333, 5.000000e-01
  %9335 = call float @dx.op.unary.f32(i32 7, float %9334)  ; Saturate(value)
  %9336 = fsub fast float 1.000000e+00, %9335
  %9337 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9332)  ; FMax(a,b)
  %9338 = fdiv fast float %9336, %9337
  %9339 = fsub fast float %9322, %155
  %9340 = call float @dx.op.unary.f32(i32 6, float %9339)  ; FAbs(value)
  %9341 = fmul fast float %9340, %9326
  %9342 = call float @dx.op.unary.f32(i32 7, float %9338)  ; Saturate(value)
  %9343 = fsub fast float 1.000000e+00, %9341
  %9344 = fmul fast float %9343, %9342
  %9345 = fadd fast float %9344, %9341
  %9346 = fmul fast float %9329, %9322
  %9347 = call float @dx.op.unary.f32(i32 7, float %9346)  ; Saturate(value)
  %9348 = fsub fast float 1.000000e+00, %9345
  %9349 = fmul fast float %9348, %9347
  %9350 = fadd fast float %9349, %9345
  %9351 = call float @dx.op.unary.f32(i32 7, float %9350)  ; Saturate(value)
  %9352 = fadd fast float %9324, -1.000000e+00
  %9353 = select i1 %9323, float -1.000000e+00, float %9352
  %9354 = fmul fast float %9351, %9353
  %9355 = fadd fast float %9354, 1.000000e+00
  %9356 = fsub fast float -0.000000e+00, %9354
  %9357 = fmul fast float %9316, %9356
  %9358 = fmul fast float %9317, %9356
  %9359 = fmul fast float %9318, %9356
  br label %9360

; <label>:9360                                    ; preds = %9313, %8914
  %9361 = phi float [ %9314, %9313 ], [ 0.000000e+00, %8914 ]
  %9362 = phi float [ %9355, %9313 ], [ 1.000000e+00, %8914 ]
  %9363 = phi float [ %9357, %9313 ], [ 0.000000e+00, %8914 ]
  %9364 = phi float [ %9358, %9313 ], [ 0.000000e+00, %8914 ]
  %9365 = phi float [ %9359, %9313 ], [ 0.000000e+00, %8914 ]
  %9366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9367 = extractvalue %dx.types.CBufRet.f32 %9366, 1
  %9368 = fsub fast float 1.000000e+00, %9362
  %9369 = fmul fast float %9368, %8944
  %9370 = fmul fast float %9369, %9367
  %9371 = fsub fast float %8944, %9370
  br i1 %8942, label %9372, label %9401, !dx.controlflow.hints !205

; <label>:9372                                    ; preds = %9360
  %9373 = fmul fast float %8945, %8939
  %9374 = fadd fast float %9373, %8940
  %9375 = call float @dx.op.unary.f32(i32 7, float %9374)  ; Saturate(value)
  %9376 = fmul fast float %8921, %9371
  %9377 = fsub fast float -0.000000e+00, %9376
  %9378 = fmul fast float %8922, %9371
  %9379 = fsub fast float -0.000000e+00, %9378
  %9380 = call float @dx.op.unary.f32(i32 21, float %9377)  ; Exp(value)
  %9381 = call float @dx.op.unary.f32(i32 21, float %9379)  ; Exp(value)
  %9382 = call float @dx.op.binary.f32(i32 35, float %8929, float %9380)  ; FMax(a,b)
  %9383 = call float @dx.op.binary.f32(i32 35, float %8929, float %9381)  ; FMax(a,b)
  %9384 = fsub fast float %9383, %9382
  %9385 = fmul fast float %9384, %9375
  %9386 = fadd fast float %9385, %9382
  %9387 = call float @dx.op.unary.f32(i32 7, float %9386)  ; Saturate(value)
  %9388 = fsub fast float %8926, %8931
  %9389 = fsub fast float %8927, %8932
  %9390 = fsub fast float %8928, %8933
  %9391 = fmul fast float %9375, %9388
  %9392 = fmul fast float %9375, %9389
  %9393 = fmul fast float %9375, %9390
  %9394 = fadd fast float %9391, %8931
  %9395 = fadd fast float %9392, %8932
  %9396 = fadd fast float %9393, %8933
  %9397 = fsub fast float 1.000000e+00, %9387
  %9398 = fmul fast float %9397, %9394
  %9399 = fmul fast float %9397, %9395
  %9400 = fmul fast float %9397, %9396
  br label %9460

; <label>:9401                                    ; preds = %9360
  %9402 = fmul fast float %9371, %8938
  %9403 = call float @dx.op.unary.f32(i32 7, float %9402)  ; Saturate(value)
  %9404 = fsub fast float 2.000000e+00, %9403
  %9405 = fmul fast float %9403, 9.921875e-01
  %9406 = fmul fast float %9405, %9404
  %9407 = fadd fast float %9406, 3.906250e-03
  %9408 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %9407, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9409 = extractvalue %dx.types.ResRet.f32 %9408, 0
  %9410 = fsub fast float %9403, %9409
  %9411 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9410)  ; FMax(a,b)
  %9412 = fmul fast float %8924, %155
  %9413 = call float @dx.op.unary.f32(i32 6, float %9412)  ; FAbs(value)
  %9414 = fcmp fast ogt float %9413, 0x3EB0C6F7A0000000
  br i1 %9414, label %9415, label %9421, !dx.controlflow.hints !206

; <label>:9415                                    ; preds = %9401
  %9416 = fmul fast float %9412, 0xBFF7154760000000
  %9417 = call float @dx.op.unary.f32(i32 21, float %9416)  ; Exp(value)
  %9418 = fsub fast float 1.000000e+00, %9417
  %9419 = fdiv fast float %9418, %9412
  %9420 = fmul fast float %9419, %8934
  br label %9421

; <label>:9421                                    ; preds = %9415, %9401
  %9422 = phi float [ %9420, %9415 ], [ %8934, %9401 ]
  %9423 = fadd fast float %9422, %8936
  %9424 = fmul fast float %9423, %9411
  %9425 = fmul fast float %8921, %9424
  %9426 = fsub fast float -0.000000e+00, %9425
  %9427 = fmul fast float %8922, %9424
  %9428 = fsub fast float -0.000000e+00, %9427
  %9429 = fmul fast float %8923, %9424
  %9430 = fsub fast float -0.000000e+00, %9429
  %9431 = call float @dx.op.unary.f32(i32 21, float %9426)  ; Exp(value)
  %9432 = call float @dx.op.unary.f32(i32 21, float %9428)  ; Exp(value)
  %9433 = call float @dx.op.unary.f32(i32 21, float %9430)  ; Exp(value)
  %9434 = fmul fast float %8945, %8945
  %9435 = fadd fast float %9434, 1.000000e+00
  %9436 = fmul fast float %9435, 0x3FAE8EC8A0000000
  %9437 = fmul fast float %9436, %8931
  %9438 = fmul fast float %9436, %8932
  %9439 = fmul fast float %9436, %8933
  %9440 = fmul fast float %8945, %8929
  %9441 = fsub fast float 1.000000e+00, %9440
  %9442 = fmul fast float %8929, %8929
  %9443 = fsub fast float 1.000000e+00, %9442
  %9444 = fmul fast float %9443, 0x3FB45F3060000000
  %9445 = fmul fast float %9441, %9441
  %9446 = fdiv fast float 1.000000e+00, %9445
  %9447 = fmul fast float %9444, %9446
  %9448 = fmul fast float %9447, %8926
  %9449 = fmul fast float %9447, %8927
  %9450 = fmul fast float %9447, %8928
  %9451 = fadd fast float %9448, %9437
  %9452 = fadd fast float %9449, %9438
  %9453 = fadd fast float %9450, %9439
  %9454 = fsub fast float 1.000000e+00, %9431
  %9455 = fsub fast float 1.000000e+00, %9432
  %9456 = fsub fast float 1.000000e+00, %9433
  %9457 = fmul fast float %9451, %9454
  %9458 = fmul fast float %9452, %9455
  %9459 = fmul fast float %9453, %9456
  br label %9460

; <label>:9460                                    ; preds = %9421, %9372
  %9461 = phi float [ %9398, %9372 ], [ %9457, %9421 ]
  %9462 = phi float [ %9399, %9372 ], [ %9458, %9421 ]
  %9463 = phi float [ %9400, %9372 ], [ %9459, %9421 ]
  %9464 = phi float [ %9387, %9372 ], [ %9431, %9421 ]
  %9465 = phi float [ %9387, %9372 ], [ %9432, %9421 ]
  %9466 = phi float [ %9387, %9372 ], [ %9433, %9421 ]
  br i1 %8953, label %9467, label %9665, !dx.controlflow.hints !207

; <label>:9467                                    ; preds = %9460
  %9468 = extractvalue %dx.types.CBufRet.f32 %9366, 0
  %9469 = fmul fast float %9468, %9368
  %9470 = fsub fast float %9363, %9461
  %9471 = fsub fast float %9364, %9462
  %9472 = fsub fast float %9365, %9463
  %9473 = fmul fast float %9469, %9470
  %9474 = fmul fast float %9469, %9471
  %9475 = fmul fast float %9469, %9472
  %9476 = fadd fast float %9473, %9461
  %9477 = fadd fast float %9474, %9462
  %9478 = fadd fast float %9475, %9463
  %9479 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9464)  ; FMax(a,b)
  %9480 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9465)  ; FMax(a,b)
  %9481 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9466)  ; FMax(a,b)
  %9482 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9362)  ; FMax(a,b)
  %9483 = call float @dx.op.binary.f32(i32 35, float %9361, float %9371)  ; FMax(a,b)
  %9484 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9483)  ; FMax(a,b)
  %9485 = fdiv fast float %9361, %9484
  %9486 = call float @dx.op.unary.f32(i32 7, float %9485)  ; Saturate(value)
  %9487 = fdiv fast float %9371, %9484
  %9488 = call float @dx.op.unary.f32(i32 7, float %9487)  ; Saturate(value)
  %9489 = fcmp fast une float %9482, 1.000000e+00
  br i1 %9489, label %9490, label %9503, !dx.controlflow.hints !208

; <label>:9490                                    ; preds = %9467
  %9491 = call float @dx.op.unary.f32(i32 23, float %9482)  ; Log(value)
  %9492 = fmul fast float %9491, 0x3FE62E4300000000
  %9493 = fmul fast float %9363, %9492
  %9494 = fsub fast float -0.000000e+00, %9493
  %9495 = fmul fast float %9364, %9492
  %9496 = fsub fast float -0.000000e+00, %9495
  %9497 = fmul fast float %9365, %9492
  %9498 = fsub fast float -0.000000e+00, %9497
  %9499 = fsub fast float 1.000000e+00, %9482
  %9500 = fdiv fast float %9494, %9499
  %9501 = fdiv fast float %9496, %9499
  %9502 = fdiv fast float %9498, %9499
  br label %9503

; <label>:9503                                    ; preds = %9490, %9467
  %9504 = phi float [ %9500, %9490 ], [ %9363, %9467 ]
  %9505 = phi float [ %9501, %9490 ], [ %9364, %9467 ]
  %9506 = phi float [ %9502, %9490 ], [ %9365, %9467 ]
  %9507 = phi float [ %9492, %9490 ], [ 0.000000e+00, %9467 ]
  %9508 = fcmp fast une float %9479, 1.000000e+00
  br i1 %9508, label %9509, label %9516, !dx.controlflow.hints !209

; <label>:9509                                    ; preds = %9503
  %9510 = call float @dx.op.unary.f32(i32 23, float %9479)  ; Log(value)
  %9511 = fmul fast float %9510, 0x3FE62E4300000000
  %9512 = fmul fast float %9476, %9511
  %9513 = fsub fast float -0.000000e+00, %9512
  %9514 = fsub fast float 1.000000e+00, %9479
  %9515 = fdiv fast float %9513, %9514
  br label %9516

; <label>:9516                                    ; preds = %9509, %9503
  %9517 = phi float [ %9515, %9509 ], [ %9476, %9503 ]
  %9518 = phi float [ %9511, %9509 ], [ 0.000000e+00, %9503 ]
  %9519 = fcmp fast une float %9480, 1.000000e+00
  br i1 %9519, label %9520, label %9527, !dx.controlflow.hints !209

; <label>:9520                                    ; preds = %9516
  %9521 = call float @dx.op.unary.f32(i32 23, float %9480)  ; Log(value)
  %9522 = fmul fast float %9521, 0x3FE62E4300000000
  %9523 = fmul fast float %9477, %9522
  %9524 = fsub fast float -0.000000e+00, %9523
  %9525 = fsub fast float 1.000000e+00, %9480
  %9526 = fdiv fast float %9524, %9525
  br label %9527

; <label>:9527                                    ; preds = %9520, %9516
  %9528 = phi float [ %9526, %9520 ], [ %9477, %9516 ]
  %9529 = phi float [ %9522, %9520 ], [ 0.000000e+00, %9516 ]
  %9530 = fcmp fast une float %9481, 1.000000e+00
  br i1 %9530, label %9531, label %9538, !dx.controlflow.hints !209

; <label>:9531                                    ; preds = %9527
  %9532 = call float @dx.op.unary.f32(i32 23, float %9481)  ; Log(value)
  %9533 = fmul fast float %9532, 0x3FE62E4300000000
  %9534 = fmul fast float %9478, %9533
  %9535 = fsub fast float -0.000000e+00, %9534
  %9536 = fsub fast float 1.000000e+00, %9481
  %9537 = fdiv fast float %9535, %9536
  br label %9538

; <label>:9538                                    ; preds = %9531, %9527
  %9539 = phi float [ %9537, %9531 ], [ %9478, %9527 ]
  %9540 = phi float [ %9533, %9531 ], [ 0.000000e+00, %9527 ]
  %9541 = fmul fast float %9504, %9488
  %9542 = fmul fast float %9505, %9488
  %9543 = fmul fast float %9506, %9488
  %9544 = fmul fast float %9507, %9488
  %9545 = fmul fast float %9517, %9486
  %9546 = fmul fast float %9528, %9486
  %9547 = fmul fast float %9539, %9486
  %9548 = fmul fast float %9518, %9486
  %9549 = fmul fast float %9529, %9486
  %9550 = fmul fast float %9540, %9486
  %9551 = fadd fast float %9545, %9541
  %9552 = fadd fast float %9546, %9542
  %9553 = fadd fast float %9547, %9543
  %9554 = fadd fast float %9548, %9544
  %9555 = fadd fast float %9549, %9544
  %9556 = fadd fast float %9550, %9544
  %9557 = fcmp fast une float %9554, 0.000000e+00
  br i1 %9557, label %9558, label %9565, !dx.controlflow.hints !210

; <label>:9558                                    ; preds = %9538
  %9559 = fmul fast float %9554, 0x3FF7154760000000
  %9560 = call float @dx.op.unary.f32(i32 21, float %9559)  ; Exp(value)
  %9561 = fsub fast float 1.000000e+00, %9560
  %9562 = fmul fast float %9551, %9561
  %9563 = fsub fast float -0.000000e+00, %9562
  %9564 = fdiv fast float %9563, %9554
  br label %9565

; <label>:9565                                    ; preds = %9558, %9538
  %9566 = phi float [ %9560, %9558 ], [ 1.000000e+00, %9538 ]
  %9567 = phi float [ %9564, %9558 ], [ %9551, %9538 ]
  %9568 = fcmp fast une float %9555, 0.000000e+00
  br i1 %9568, label %9569, label %9576, !dx.controlflow.hints !210

; <label>:9569                                    ; preds = %9565
  %9570 = fmul fast float %9555, 0x3FF7154760000000
  %9571 = call float @dx.op.unary.f32(i32 21, float %9570)  ; Exp(value)
  %9572 = fsub fast float 1.000000e+00, %9571
  %9573 = fmul fast float %9552, %9572
  %9574 = fsub fast float -0.000000e+00, %9573
  %9575 = fdiv fast float %9574, %9555
  br label %9576

; <label>:9576                                    ; preds = %9569, %9565
  %9577 = phi float [ %9571, %9569 ], [ 1.000000e+00, %9565 ]
  %9578 = phi float [ %9575, %9569 ], [ %9552, %9565 ]
  %9579 = fcmp fast une float %9556, 0.000000e+00
  br i1 %9579, label %9580, label %9587, !dx.controlflow.hints !210

; <label>:9580                                    ; preds = %9576
  %9581 = fmul fast float %9556, 0x3FF7154760000000
  %9582 = call float @dx.op.unary.f32(i32 21, float %9581)  ; Exp(value)
  %9583 = fsub fast float 1.000000e+00, %9582
  %9584 = fmul fast float %9553, %9583
  %9585 = fsub fast float -0.000000e+00, %9584
  %9586 = fdiv fast float %9585, %9556
  br label %9587

; <label>:9587                                    ; preds = %9580, %9576
  %9588 = phi float [ %9582, %9580 ], [ 1.000000e+00, %9576 ]
  %9589 = phi float [ %9586, %9580 ], [ %9553, %9576 ]
  %9590 = fcmp fast ogt float %9486, %9488
  br i1 %9590, label %9591, label %9611

; <label>:9591                                    ; preds = %9587
  %9592 = fsub fast float 1.000000e+00, %9488
  %9593 = fmul fast float %9504, %9592
  %9594 = fmul fast float %9505, %9592
  %9595 = fmul fast float %9506, %9592
  %9596 = fmul fast float %9507, %9592
  %9597 = fcmp fast une float %9596, 0.000000e+00
  br i1 %9597, label %9598, label %9649, !dx.controlflow.hints !211

; <label>:9598                                    ; preds = %9591
  %9599 = fmul fast float %9596, 0x3FF7154760000000
  %9600 = call float @dx.op.unary.f32(i32 21, float %9599)  ; Exp(value)
  %9601 = fsub fast float 1.000000e+00, %9600
  %9602 = fmul fast float %9593, %9601
  %9603 = fsub fast float -0.000000e+00, %9602
  %9604 = fmul fast float %9594, %9601
  %9605 = fsub fast float -0.000000e+00, %9604
  %9606 = fmul fast float %9595, %9601
  %9607 = fsub fast float -0.000000e+00, %9606
  %9608 = fdiv fast float %9603, %9596
  %9609 = fdiv fast float %9605, %9596
  %9610 = fdiv fast float %9607, %9596
  br label %9649

; <label>:9611                                    ; preds = %9587
  %9612 = fsub fast float 1.000000e+00, %9486
  %9613 = fmul fast float %9517, %9612
  %9614 = fmul fast float %9528, %9612
  %9615 = fmul fast float %9539, %9612
  %9616 = fmul fast float %9518, %9612
  %9617 = fmul fast float %9529, %9612
  %9618 = fmul fast float %9540, %9612
  %9619 = fcmp fast une float %9616, 0.000000e+00
  br i1 %9619, label %9620, label %9627, !dx.controlflow.hints !210

; <label>:9620                                    ; preds = %9611
  %9621 = fmul fast float %9616, 0x3FF7154760000000
  %9622 = call float @dx.op.unary.f32(i32 21, float %9621)  ; Exp(value)
  %9623 = fsub fast float 1.000000e+00, %9622
  %9624 = fmul fast float %9613, %9623
  %9625 = fsub fast float -0.000000e+00, %9624
  %9626 = fdiv fast float %9625, %9616
  br label %9627

; <label>:9627                                    ; preds = %9620, %9611
  %9628 = phi float [ %9626, %9620 ], [ %9613, %9611 ]
  %9629 = phi float [ %9622, %9620 ], [ 1.000000e+00, %9611 ]
  %9630 = fcmp fast une float %9617, 0.000000e+00
  br i1 %9630, label %9631, label %9638, !dx.controlflow.hints !210

; <label>:9631                                    ; preds = %9627
  %9632 = fmul fast float %9617, 0x3FF7154760000000
  %9633 = call float @dx.op.unary.f32(i32 21, float %9632)  ; Exp(value)
  %9634 = fsub fast float 1.000000e+00, %9633
  %9635 = fmul fast float %9614, %9634
  %9636 = fsub fast float -0.000000e+00, %9635
  %9637 = fdiv fast float %9636, %9617
  br label %9638

; <label>:9638                                    ; preds = %9631, %9627
  %9639 = phi float [ %9637, %9631 ], [ %9614, %9627 ]
  %9640 = phi float [ %9633, %9631 ], [ 1.000000e+00, %9627 ]
  %9641 = fcmp fast une float %9618, 0.000000e+00
  br i1 %9641, label %9642, label %9649, !dx.controlflow.hints !210

; <label>:9642                                    ; preds = %9638
  %9643 = fmul fast float %9618, 0x3FF7154760000000
  %9644 = call float @dx.op.unary.f32(i32 21, float %9643)  ; Exp(value)
  %9645 = fsub fast float 1.000000e+00, %9644
  %9646 = fmul fast float %9615, %9645
  %9647 = fsub fast float -0.000000e+00, %9646
  %9648 = fdiv fast float %9647, %9618
  br label %9649

; <label>:9649                                    ; preds = %9642, %9638, %9598, %9591
  %9650 = phi float [ %9648, %9642 ], [ %9610, %9598 ], [ %9595, %9591 ], [ %9615, %9638 ]
  %9651 = phi float [ %9639, %9642 ], [ %9609, %9598 ], [ %9594, %9591 ], [ %9639, %9638 ]
  %9652 = phi float [ %9628, %9642 ], [ %9608, %9598 ], [ %9593, %9591 ], [ %9628, %9638 ]
  %9653 = phi float [ %9644, %9642 ], [ %9600, %9598 ], [ 1.000000e+00, %9591 ], [ 1.000000e+00, %9638 ]
  %9654 = phi float [ %9640, %9642 ], [ %9600, %9598 ], [ 1.000000e+00, %9591 ], [ %9640, %9638 ]
  %9655 = phi float [ %9629, %9642 ], [ %9600, %9598 ], [ 1.000000e+00, %9591 ], [ %9629, %9638 ]
  %9656 = fmul fast float %9655, %9567
  %9657 = fmul fast float %9654, %9578
  %9658 = fmul fast float %9653, %9589
  %9659 = fadd fast float %9656, %9652
  %9660 = fadd fast float %9657, %9651
  %9661 = fadd fast float %9658, %9650
  %9662 = fmul fast float %9655, %9566
  %9663 = fmul fast float %9654, %9577
  %9664 = fmul fast float %9653, %9588
  br label %9665

; <label>:9665                                    ; preds = %9649, %9460
  %9666 = phi float [ %9664, %9649 ], [ %9466, %9460 ]
  %9667 = phi float [ %9663, %9649 ], [ %9465, %9460 ]
  %9668 = phi float [ %9662, %9649 ], [ %9464, %9460 ]
  %9669 = phi float [ %9661, %9649 ], [ %9463, %9460 ]
  %9670 = phi float [ %9660, %9649 ], [ %9462, %9460 ]
  %9671 = phi float [ %9659, %9649 ], [ %9461, %9460 ]
  %9672 = call float @dx.op.dot3.f32(i32 55, float %9668, float %9667, float %9666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9673 = call float @dx.op.dot3.f32(i32 55, float %9671, float %9670, float %9669, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9674 = select i1 %2609, float %9672, float %9668
  %9675 = select i1 %2609, float %9672, float %9667
  %9676 = select i1 %2609, float 1.000000e+00, float %9666
  %9677 = select i1 %2609, float %9673, float %9671
  %9678 = select i1 %2609, float 0.000000e+00, float %9670
  %9679 = select i1 %2609, float 0.000000e+00, float %9669
  %9680 = fmul fast float %9674, %8909
  %9681 = fmul fast float %9675, %8911
  %9682 = fmul fast float %9676, %8913
  %9683 = fadd fast float %9680, %9677
  %9684 = fadd fast float %9681, %9678
  %9685 = fadd fast float %9679, %9682
  %9686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9687 = extractvalue %dx.types.CBufRet.f32 %9686, 2
  %9688 = extractvalue %dx.types.CBufRet.f32 %9686, 3
  %9689 = fmul fast float %9687, %98
  %9690 = fmul fast float %9688, %99
  %9691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %61, float %9689, float %9690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9692 = extractvalue %dx.types.ResRet.f32 %9691, 0
  %9693 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %61, float %9689, float %9690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9694 = extractvalue %dx.types.ResRet.f32 %9693, 0
  %9695 = extractvalue %dx.types.ResRet.f32 %9693, 1
  %9696 = extractvalue %dx.types.ResRet.f32 %9693, 2
  %9697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9698 = extractvalue %dx.types.CBufRet.f32 %9697, 1
  %9699 = fmul fast float %9698, %9694
  %9700 = fmul fast float %9698, %9695
  %9701 = fmul fast float %9698, %9696
  %9702 = fmul fast float %9692, %9668
  %9703 = call float @dx.op.dot3.f32(i32 55, float %9692, float %9692, float %9692, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9704 = call float @dx.op.dot3.f32(i32 55, float %9699, float %9700, float %9701, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9705 = select i1 %2609, float %9703, float %9692
  %9706 = select i1 %2609, float 1.000000e+00, float %9692
  %9707 = select i1 %2609, float %9704, float %9699
  %9708 = select i1 %2609, float 0.000000e+00, float %9700
  %9709 = select i1 %2609, float 0.000000e+00, float %9701
  %9710 = fmul fast float %9705, %9683
  %9711 = fmul fast float %9705, %9684
  %9712 = fmul fast float %9706, %9685
  %9713 = fadd fast float %9710, %9707
  %9714 = fadd fast float %9711, %9708
  %9715 = fadd fast float %9709, %9712
  br label %9716

; <label>:9716                                    ; preds = %9665, %8882
  %9717 = phi float [ %8909, %8882 ], [ %9713, %9665 ]
  %9718 = phi float [ %8911, %8882 ], [ %9714, %9665 ]
  %9719 = phi float [ %8913, %8882 ], [ %9715, %9665 ]
  %9720 = phi float [ 1.000000e+00, %8882 ], [ %9702, %9665 ]
  %9721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9722 = extractvalue %dx.types.CBufRet.f32 %9721, 2
  %9723 = extractvalue %dx.types.CBufRet.f32 %9721, 3
  %9724 = fmul fast float %9722, %98
  %9725 = fmul fast float %9723, %99
  %9726 = call float @dx.op.unary.f32(i32 7, float %9724)  ; Saturate(value)
  %9727 = call float @dx.op.unary.f32(i32 7, float %9725)  ; Saturate(value)
  %9728 = select i1 %115, i32 0, i32 2
  %9729 = or i32 %9728, 1
  %9730 = uitofp i32 %9729 to float
  %9731 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %9726, float %9727, float %9730, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9732 = extractvalue %dx.types.ResRet.f32 %9731, 0
  %9733 = extractvalue %dx.types.ResRet.f32 %9731, 1
  %9734 = extractvalue %dx.types.ResRet.f32 %9731, 2
  %9735 = extractvalue %dx.types.ResRet.f32 %9731, 3
  %9736 = add nuw nsw i32 %9728, 2
  %9737 = uitofp i32 %9736 to float
  %9738 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %9726, float %9727, float %9737, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9739 = extractvalue %dx.types.ResRet.f32 %9738, 0
  %9740 = extractvalue %dx.types.ResRet.f32 %9738, 1
  %9741 = extractvalue %dx.types.ResRet.f32 %9738, 2
  %9742 = extractvalue %dx.types.ResRet.f32 %9738, 3
  %9743 = call float @dx.op.binary.f32(i32 35, float %9733, float %9734)  ; FMax(a,b)
  %9744 = call float @dx.op.binary.f32(i32 35, float %9732, float %9743)  ; FMax(a,b)
  %9745 = call float @dx.op.binary.f32(i32 35, float %9744, float %9735)  ; FMax(a,b)
  %9746 = call float @dx.op.binary.f32(i32 36, float %9740, float %9741)  ; FMin(a,b)
  %9747 = call float @dx.op.binary.f32(i32 36, float %9739, float %9746)  ; FMin(a,b)
  %9748 = call float @dx.op.binary.f32(i32 36, float %9747, float %9742)  ; FMin(a,b)
  %9749 = fmul fast float %9745, 2.550000e+02
  %9750 = fadd fast float %9749, 0x3F70101020000000
  %9751 = fptoui float %9750 to i32
  %9752 = fmul fast float %9748, 2.550000e+02
  %9753 = fadd fast float %9752, 0x3F70101020000000
  %9754 = fptoui float %9753 to i32
  %9755 = icmp ult i32 %9751, %9754
  br i1 %9755, label %9756, label %9808

; <label>:9756                                    ; preds = %9716
  %9757 = fcmp fast ogt float %86, 9.843750e-01
  %9758 = fadd fast float %87, -4.000000e+00
  %9759 = select i1 %9757, float -4.000000e+00, float %9758
  %9760 = call float @dx.op.binary.f32(i32 35, float %9759, float 0.000000e+00)  ; FMax(a,b)
  %9761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9762 = extractvalue %dx.types.CBufRet.f32 %9761, 0
  %9763 = fadd fast float %9762, %9760
  %9764 = extractvalue %dx.types.CBufRet.f32 %9761, 2
  %9765 = fmul fast float %9763, %9764
  %9766 = call float @dx.op.unary.f32(i32 23, float %9765)  ; Log(value)
  %9767 = extractvalue %dx.types.CBufRet.f32 %9761, 3
  %9768 = fmul fast float %9767, %9766
  %9769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9770 = extractvalue %dx.types.CBufRet.f32 %9769, 2
  %9771 = fmul fast float %9768, %9770
  %9772 = call float @dx.op.unary.f32(i32 7, float %9771)  ; Saturate(value)
  %9773 = uitofp i32 %9751 to float
  %9774 = uitofp i32 %9754 to float
  %9775 = fadd fast float %9773, 5.000000e-01
  %9776 = fadd fast float %9774, 5.000000e-01
  %9777 = fmul fast float %9770, %9775
  %9778 = fmul fast float %9770, %9776
  %9779 = fadd fast float %9777, 0x3F0FFB4800000000
  %9780 = fadd fast float %9778, 0xBF0FFB4800000000
  %9781 = call float @dx.op.binary.f32(i32 35, float %9772, float %9779)  ; FMax(a,b)
  %9782 = call float @dx.op.binary.f32(i32 36, float %9781, float %9780)  ; FMin(a,b)
  %9783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9784 = extractvalue %dx.types.CBufRet.f32 %9783, 1
  %9785 = extractvalue %dx.types.CBufRet.f32 %9783, 2
  %9786 = extractvalue %dx.types.CBufRet.f32 %9783, 0
  %9787 = select i1 %115, float 0.000000e+00, float %9786
  %9788 = fmul fast float %9784, %9782
  %9789 = fadd fast float %9787, %9788
  %9790 = fadd fast float %9787, %9785
  %9791 = fsub fast float %9784, %9785
  %9792 = fadd fast float %9791, %9787
  %9793 = call float @dx.op.binary.f32(i32 35, float %9789, float %9790)  ; FMax(a,b)
  %9794 = call float @dx.op.binary.f32(i32 36, float %9793, float %9792)  ; FMin(a,b)
  %9795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %9726, float %9727, float %9794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9796 = extractvalue %dx.types.ResRet.f32 %9795, 0
  %9797 = extractvalue %dx.types.ResRet.f32 %9795, 1
  %9798 = extractvalue %dx.types.ResRet.f32 %9795, 2
  %9799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %9726, float %9727, float %9794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9800 = extractvalue %dx.types.ResRet.f32 %9799, 0
  %9801 = extractvalue %dx.types.ResRet.f32 %9799, 1
  %9802 = extractvalue %dx.types.ResRet.f32 %9799, 2
  %9803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9804 = extractvalue %dx.types.CBufRet.f32 %9803, 1
  %9805 = fmul fast float %9804, %9800
  %9806 = fmul fast float %9804, %9801
  %9807 = fmul fast float %9804, %9802
  br label %9808

; <label>:9808                                    ; preds = %9756, %9716
  %9809 = phi float [ %9796, %9756 ], [ 1.000000e+00, %9716 ]
  %9810 = phi float [ %9797, %9756 ], [ 1.000000e+00, %9716 ]
  %9811 = phi float [ %9798, %9756 ], [ 1.000000e+00, %9716 ]
  %9812 = phi float [ %9805, %9756 ], [ 0.000000e+00, %9716 ]
  %9813 = phi float [ %9806, %9756 ], [ 0.000000e+00, %9716 ]
  %9814 = phi float [ %9807, %9756 ], [ 0.000000e+00, %9716 ]
  %9815 = fmul fast float %9809, %9720
  %9816 = call float @dx.op.dot3.f32(i32 55, float %9809, float %9810, float %9811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9817 = call float @dx.op.dot3.f32(i32 55, float %9812, float %9813, float %9814, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9818 = select i1 %2609, float %9816, float %9809
  %9819 = select i1 %2609, float %9816, float %9810
  %9820 = select i1 %2609, float 1.000000e+00, float %9811
  %9821 = select i1 %2609, float %9817, float %9812
  %9822 = select i1 %2609, float 0.000000e+00, float %9813
  %9823 = select i1 %2609, float 0.000000e+00, float %9814
  %9824 = fmul fast float %9818, %9717
  %9825 = fmul fast float %9819, %9718
  %9826 = fmul fast float %9820, %9719
  %9827 = fadd fast float %9824, %9821
  %9828 = fadd fast float %9825, %9822
  %9829 = fadd fast float %9823, %9826
  %9830 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9831 = extractvalue %dx.types.CBufRet.i32 %9830, 3
  %9832 = and i32 %9831, 3
  %9833 = icmp ne i32 %9832, 0
  %9834 = and i32 %9831, 4
  %9835 = icmp ne i32 %9834, 0
  %9836 = and i1 %9833, %9835
  %9837 = and i1 %2609, %9836
  br i1 %9837, label %9838, label %9844

; <label>:9838                                    ; preds = %9808
  %9839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9840 = extractvalue %dx.types.CBufRet.f32 %9839, 1
  %9841 = fadd fast float %9815, -1.000000e+00
  %9842 = fmul fast float %9840, %9841
  %9843 = fadd fast float %9842, 1.000000e+00
  br label %9844

; <label>:9844                                    ; preds = %9838, %9808
  %9845 = phi float [ %9843, %9838 ], [ %9815, %9808 ]
  %9846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9847 = extractvalue %dx.types.CBufRet.f32 %9846, 0
  br i1 %2609, label %9848, label %9862

; <label>:9848                                    ; preds = %9844
  %9849 = fadd fast float %9827, %9828
  %9850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9851 = extractvalue %dx.types.CBufRet.f32 %9850, 3
  %9852 = extractvalue %dx.types.CBufRet.f32 %8893, 1
  %9853 = fsub fast float %8899, %8887
  %9854 = fadd fast float %9853, %8900
  %9855 = fsub fast float %9854, %9852
  %9856 = extractvalue %dx.types.CBufRet.f32 %8893, 2
  %9857 = fmul fast float %9855, %9856
  %9858 = call float @dx.op.unary.f32(i32 7, float %9857)  ; Saturate(value)
  %9859 = fsub fast float %9858, %9851
  %9860 = fmul fast float %9859, %9845
  %9861 = fadd fast float %9860, %9851
  br label %9865

; <label>:9862                                    ; preds = %9844
  %9863 = fmul fast float %9847, %9828
  %9864 = fmul fast float %9847, %9829
  br label %9865

; <label>:9865                                    ; preds = %9862, %9848
  %9866 = phi float [ %9849, %9848 ], [ %9827, %9862 ]
  %9867 = phi float [ %9861, %9848 ], [ %9863, %9862 ]
  %9868 = phi float [ 1.000000e+00, %9848 ], [ %9864, %9862 ]
  %9869 = fmul float %9847, %9866
  switch i32 %8814, label %10167 [
    i32 0, label %10182
    i32 1, label %9870
    i32 2, label %9871
    i32 3, label %9883
    i32 4, label %9892
    i32 5, label %9893
    i32 6, label %9894
    i32 12, label %9895
    i32 13, label %9896
    i32 14, label %9908
    i32 15, label %9920
    i32 16, label %9932
    i32 17, label %9933
    i32 63, label %10166
    i32 18, label %9934
    i32 25, label %9956
    i32 27, label %9957
    i32 28, label %9958
    i32 29, label %9959
    i32 31, label %9960
    i32 32, label %9983
    i32 33, label %10042
    i32 37, label %10060
    i32 38, label %10061
    i32 39, label %10070
    i32 40, label %10093
    i32 41, label %10097
    i32 52, label %10098
    i32 53, label %10099
    i32 54, label %10100
    i32 55, label %10101
    i32 56, label %10102
    i32 57, label %10104
    i32 58, label %10106
    i32 59, label %10144
    i32 60, label %10146
    i32 61, label %10148
    i32 64, label %10150
    i32 62, label %10165
  ]

; <label>:9870                                    ; preds = %9865
  br label %10167

; <label>:9871                                    ; preds = %9865
  %9872 = call float @dx.op.dot3.f32(i32 55, float %2425, float %2426, float %2427, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %9873 = call float @dx.op.unary.f32(i32 25, float %9872)  ; Rsqrt(value)
  %9874 = fmul fast float %2425, 5.000000e-01
  %9875 = fmul fast float %9874, %9873
  %9876 = fmul fast float %2426, 5.000000e-01
  %9877 = fmul fast float %9876, %9873
  %9878 = fmul fast float %2427, 5.000000e-01
  %9879 = fmul fast float %9878, %9873
  %9880 = fadd fast float %9875, 5.000000e-01
  %9881 = fadd fast float %9877, 5.000000e-01
  %9882 = fadd fast float %9879, 5.000000e-01
  br label %10167

; <label>:9883                                    ; preds = %9865
  %9884 = fcmp fast ole float %2555, 0x3FA4B5DCC0000000
  %9885 = fmul fast float %2555, 0x3FB3D07220000000
  %9886 = fadd fast float %2555, 0x3FAC28F5C0000000
  %9887 = fmul fast float %9886, 0x3FEE54EDE0000000
  %9888 = call float @dx.op.unary.f32(i32 23, float %9887)  ; Log(value)
  %9889 = fmul fast float %9888, 0x4003333340000000
  %9890 = call float @dx.op.unary.f32(i32 21, float %9889)  ; Exp(value)
  %9891 = select i1 %9884, float %9885, float %9890
  br label %10167

; <label>:9892                                    ; preds = %9865
  br label %10167

; <label>:9893                                    ; preds = %9865
  br label %10167

; <label>:9894                                    ; preds = %9865
  br label %10167

; <label>:9895                                    ; preds = %9865
  br label %10167

; <label>:9896                                    ; preds = %9865
  %9897 = and i32 %8883, 1023
  %9898 = uitofp i32 %9897 to float
  %9899 = lshr i32 %8883, 10
  %9900 = and i32 %9899, 1023
  %9901 = uitofp i32 %9900 to float
  %9902 = lshr i32 %8883, 20
  %9903 = and i32 %9902, 1023
  %9904 = uitofp i32 %9903 to float
  %9905 = fmul fast float %9898, 0x3F50040100000000
  %9906 = fmul fast float %9901, 0x3F50040100000000
  %9907 = fmul fast float %9904, 0x3F50040100000000
  br label %10167

; <label>:9908                                    ; preds = %9865
  %9909 = and i32 %8883, 1023
  %9910 = uitofp i32 %9909 to float
  %9911 = lshr i32 %8883, 10
  %9912 = and i32 %9911, 1023
  %9913 = uitofp i32 %9912 to float
  %9914 = lshr i32 %8883, 20
  %9915 = and i32 %9914, 1023
  %9916 = uitofp i32 %9915 to float
  %9917 = fmul fast float %9910, 0x3F50040100000000
  %9918 = fmul fast float %9913, 0x3F50040100000000
  %9919 = fmul fast float %9916, 0x3F50040100000000
  br label %10167

; <label>:9920                                    ; preds = %9865
  %9921 = and i32 %8883, 1023
  %9922 = uitofp i32 %9921 to float
  %9923 = lshr i32 %8883, 10
  %9924 = and i32 %9923, 1023
  %9925 = uitofp i32 %9924 to float
  %9926 = lshr i32 %8883, 20
  %9927 = and i32 %9926, 1023
  %9928 = uitofp i32 %9927 to float
  %9929 = fmul fast float %9922, 0x3F50040100000000
  %9930 = fmul fast float %9925, 0x3F50040100000000
  %9931 = fmul fast float %9928, 0x3F50040100000000
  br label %10167

; <label>:9932                                    ; preds = %9865
  br label %10167

; <label>:9933                                    ; preds = %9865
  br label %10167

; <label>:9934                                    ; preds = %9865
  %9935 = fcmp fast ogt float %2446, 0x3FB99999A0000000
  %9936 = fcmp fast ogt float %2447, 0x3FB99999A0000000
  %9937 = or i1 %9935, %9936
  %9938 = fcmp fast ogt float %2448, 0x3FB99999A0000000
  %9939 = or i1 %9937, %9938
  %9940 = fcmp fast olt float %2446, 0x3FB99999A0000000
  %9941 = fcmp fast olt float %2447, 0x3FB99999A0000000
  %9942 = or i1 %9940, %9941
  %9943 = fcmp fast olt float %2448, 0x3FB99999A0000000
  %9944 = or i1 %9942, %9943
  %9945 = fadd fast float %2446, %2437
  %9946 = fcmp fast ogt float %9945, 1.000000e+00
  %9947 = fadd fast float %2447, %2438
  %9948 = fcmp fast ogt float %9947, 1.000000e+00
  %9949 = or i1 %9946, %9948
  %9950 = fadd fast float %2448, %2439
  %9951 = fcmp fast ogt float %9950, 1.000000e+00
  %9952 = or i1 %9949, %9951
  %9953 = select i1 %9952, float 1.000000e+00, float 0.000000e+00
  %9954 = and i1 %9939, %9944
  %9955 = select i1 %9954, float 1.000000e+00, float 0.000000e+00
  br label %10167

; <label>:9956                                    ; preds = %9865
  br label %10167

; <label>:9957                                    ; preds = %9865
  br label %10167

; <label>:9958                                    ; preds = %9865
  br label %10167

; <label>:9959                                    ; preds = %9865
  br label %10167

; <label>:9960                                    ; preds = %9865
  %9961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9962 = extractvalue %dx.types.CBufRet.f32 %9961, 0
  %9963 = extractvalue %dx.types.CBufRet.f32 %9961, 2
  %9964 = extractvalue %dx.types.CBufRet.f32 %9961, 3
  %9965 = fcmp fast olt float %2555, %9962
  br i1 %9965, label %9966, label %9980

; <label>:9966                                    ; preds = %11855, %11853, %9980, %9960
  %9967 = phi i32 [ 0, %9960 ], [ 1, %9980 ], [ 2, %11853 ], [ 3, %11855 ]
  %9968 = mul i32 %9967, 3
  %9969 = add i32 0, %9968
  %9970 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9969
  %9971 = load float, float* %9970, align 4
  %9972 = mul i32 %9967, 3
  %9973 = add i32 1, %9972
  %9974 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9973
  %9975 = load float, float* %9974, align 4
  %9976 = mul i32 %9967, 3
  %9977 = add i32 2, %9976
  %9978 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9977
  %9979 = load float, float* %9978, align 4
  br label %10167

; <label>:9980                                    ; preds = %9960
  %9981 = extractvalue %dx.types.CBufRet.f32 %9961, 1
  %9982 = fcmp fast olt float %2555, %9981
  br i1 %9982, label %9966, label %11853

; <label>:9983                                    ; preds = %9865
  %9984 = fcmp fast ole float %2437, 0x3F69A5C380000000
  %9985 = fcmp fast ole float %2438, 0x3F69A5C380000000
  %9986 = fcmp fast ole float %2439, 0x3F69A5C380000000
  %9987 = fmul fast float %2437, 0x4029D70A40000000
  %9988 = fmul fast float %2438, 0x4029D70A40000000
  %9989 = fmul fast float %2439, 0x4029D70A40000000
  %9990 = call float @dx.op.unary.f32(i32 23, float %2437)  ; Log(value)
  %9991 = call float @dx.op.unary.f32(i32 23, float %2438)  ; Log(value)
  %9992 = call float @dx.op.unary.f32(i32 23, float %2439)  ; Log(value)
  %9993 = fmul fast float %9990, 0x3FDAAAAAA0000000
  %9994 = fmul fast float %9991, 0x3FDAAAAAA0000000
  %9995 = fmul fast float %9992, 0x3FDAAAAAA0000000
  %9996 = call float @dx.op.unary.f32(i32 21, float %9993)  ; Exp(value)
  %9997 = call float @dx.op.unary.f32(i32 21, float %9994)  ; Exp(value)
  %9998 = call float @dx.op.unary.f32(i32 21, float %9995)  ; Exp(value)
  %9999 = fmul fast float %9996, 0x3FF0E147A0000000
  %10000 = fmul fast float %9997, 0x3FF0E147A0000000
  %10001 = fmul fast float %9998, 0x3FF0E147A0000000
  %10002 = fadd fast float %9999, 0xBFAC28F5C0000000
  %10003 = fadd fast float %10000, 0xBFAC28F5C0000000
  %10004 = fadd fast float %10001, 0xBFAC28F5C0000000
  %10005 = select i1 %9984, float %9987, float %10002
  %10006 = select i1 %9985, float %9988, float %10003
  %10007 = select i1 %9986, float %9989, float %10004
  %10008 = call float @dx.op.dot3.f32(i32 55, float %10005, float %10006, float %10007, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10009 = fcmp fast olt float %10008, 0x3FA0101020000000
  br i1 %10009, label %10018, label %10010

; <label>:10010                                   ; preds = %9983
  %10011 = fcmp fast ogt float %10008, 0x3FEEFEFF00000000
  br i1 %10011, label %10018, label %10012

; <label>:10012                                   ; preds = %10010
  %10013 = fcmp fast ogt float %10008, 0x3FEF5F5F60000000
  br i1 %10013, label %10018, label %10014

; <label>:10014                                   ; preds = %10012
  %10015 = fadd fast float %10008, %10008
  %10016 = fcmp fast ogt float %10015, 2.550000e+02
  br i1 %10016, label %10017, label %10018

; <label>:10017                                   ; preds = %10014
  br label %10018

; <label>:10018                                   ; preds = %10017, %10014, %10012, %10010, %9983
  %10019 = phi float [ 1.000000e+00, %10017 ], [ %9869, %10014 ], [ 1.000000e+00, %9983 ], [ 0x3FBD1D1D20000000, %10010 ], [ 0.000000e+00, %10012 ]
  %10020 = phi float [ 0.000000e+00, %10017 ], [ %9867, %10014 ], [ 0x3FE6666660000000, %9983 ], [ 1.000000e+00, %10010 ], [ 0.000000e+00, %10012 ]
  %10021 = phi float [ 1.000000e+00, %10017 ], [ %9868, %10014 ], [ 0.000000e+00, %9983 ], [ 0x3FDD5D5D60000000, %10010 ], [ 1.000000e+00, %10012 ]
  %10022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %10023 = extractvalue %dx.types.CBufRet.f32 %10022, 3
  %10024 = fmul fast float %10023, 8.000000e+00
  %10025 = fmul fast float %99, 5.000000e+02
  %10026 = fmul fast float %10025, %9723
  %10027 = fsub fast float %10026, %10024
  %10028 = call float @dx.op.unary.f32(i32 13, float %10027)  ; Sin(value)
  %10029 = fmul fast float %10028, %10028
  %10030 = fmul fast float %10029, 2.000000e+00
  %10031 = fadd fast float %10030, -1.000000e+00
  %10032 = call float @dx.op.unary.f32(i32 7, float %10031)  ; Saturate(value)
  %10033 = fsub fast float %10019, %9869
  %10034 = fsub fast float %10020, %9867
  %10035 = fsub fast float %10021, %9868
  %10036 = fmul fast float %10032, %10033
  %10037 = fmul fast float %10032, %10034
  %10038 = fmul fast float %10032, %10035
  %10039 = fadd fast float %10036, %9869
  %10040 = fadd fast float %10037, %9867
  %10041 = fadd fast float %10038, %9868
  br label %10167

; <label>:10042                                   ; preds = %9865
  %10043 = fcmp fast olt float %87, 1.280000e+02
  br i1 %10043, label %10044, label %10058

; <label>:10044                                   ; preds = %11871, %11869, %11867, %11865, %11863, %11861, %11859, %11857, %10058, %10042
  %10045 = phi i32 [ 0, %10042 ], [ 1, %10058 ], [ 2, %11857 ], [ 3, %11859 ], [ 4, %11861 ], [ 5, %11863 ], [ 6, %11865 ], [ 7, %11867 ], [ 8, %11869 ], [ 9, %11871 ]
  %10046 = mul i32 %10045, 3
  %10047 = add i32 0, %10046
  %10048 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10047
  %10049 = load float, float* %10048, align 4
  %10050 = mul i32 %10045, 3
  %10051 = add i32 1, %10050
  %10052 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10051
  %10053 = load float, float* %10052, align 4
  %10054 = mul i32 %10045, 3
  %10055 = add i32 2, %10054
  %10056 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10055
  %10057 = load float, float* %10056, align 4
  br label %10167

; <label>:10058                                   ; preds = %10042
  %10059 = fcmp fast olt float %87, 2.560000e+02
  br i1 %10059, label %10044, label %11857

; <label>:10060                                   ; preds = %9865
  br label %10167

; <label>:10061                                   ; preds = %9865
  %10062 = bitcast i32 %8883 to float
  %10063 = fcmp fast ogt float %10062, 0.000000e+00
  %10064 = select i1 %10063, float 0.000000e+00, float 1.000000e+00
  %10065 = fcmp fast olt float %10062, 1.000000e+00
  %10066 = select i1 %10065, float 1.000000e+00, float 0.000000e+00
  %10067 = select i1 %10065, float %10064, float 0.000000e+00
  %10068 = fmul fast float %10066, %2555
  %10069 = fmul fast float %10067, %2555
  br label %10167

; <label>:10070                                   ; preds = %9865
  %10071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10072 = extractvalue %dx.types.CBufRet.f32 %10071, 0
  %10073 = extractvalue %dx.types.CBufRet.f32 %10071, 2
  %10074 = extractvalue %dx.types.CBufRet.f32 %10071, 3
  %10075 = fcmp fast olt float %8904, %10072
  br i1 %10075, label %10076, label %10090

; <label>:10076                                   ; preds = %11875, %11873, %10090, %10070
  %10077 = phi i32 [ 0, %10070 ], [ 1, %10090 ], [ 2, %11873 ], [ 3, %11875 ]
  %10078 = mul i32 %10077, 3
  %10079 = add i32 0, %10078
  %10080 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10079
  %10081 = load float, float* %10080, align 4
  %10082 = mul i32 %10077, 3
  %10083 = add i32 1, %10082
  %10084 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10083
  %10085 = load float, float* %10084, align 4
  %10086 = mul i32 %10077, 3
  %10087 = add i32 2, %10086
  %10088 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10087
  %10089 = load float, float* %10088, align 4
  br label %10167

; <label>:10090                                   ; preds = %10070
  %10091 = extractvalue %dx.types.CBufRet.f32 %10071, 1
  %10092 = fcmp fast olt float %8904, %10091
  br i1 %10092, label %10076, label %11873

; <label>:10093                                   ; preds = %9865
  %10094 = fadd fast float %8904, -5.000000e-01
  %10095 = fmul fast float %10094, 2.000000e+00
  %10096 = call float @dx.op.unary.f32(i32 7, float %10095)  ; Saturate(value)
  br label %10167

; <label>:10097                                   ; preds = %9865
  br label %10167

; <label>:10098                                   ; preds = %9865
  br label %10167

; <label>:10099                                   ; preds = %9865
  br label %10167

; <label>:10100                                   ; preds = %9865
  br label %10167

; <label>:10101                                   ; preds = %9865
  br label %10167

; <label>:10102                                   ; preds = %9865
  %10103 = bitcast i32 %8883 to float
  br label %10167

; <label>:10104                                   ; preds = %9865
  %10105 = bitcast i32 %8883 to float
  br label %10167

; <label>:10106                                   ; preds = %9865
  %10107 = and i32 %8883, 65535
  %10108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10107)  ; LegacyF16ToF32(value)
  %10109 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10110 = fptosi float %10109 to i32
  %10111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10112 = extractvalue %dx.types.CBufRet.f32 %10111, 0
  %10113 = extractvalue %dx.types.CBufRet.f32 %10111, 1
  %10114 = extractvalue %dx.types.CBufRet.f32 %10111, 2
  %10115 = fadd fast float %10112, %153
  %10116 = fadd fast float %10113, %154
  %10117 = fadd fast float %10114, %155
  %10118 = fptosi float %10115 to i32
  %10119 = fptosi float %10116 to i32
  %10120 = fptosi float %10117 to i32
  %10121 = xor i32 %10118, %10119
  %10122 = lshr i32 %10121, 1
  %10123 = and i32 %10122, 1
  %10124 = lshr i32 %10120, 1
  %10125 = and i32 %10124, 1
  %10126 = xor i32 %10125, 1
  %10127 = icmp ne i32 %10123, %10126
  switch i32 %10110, label %10167 [
    i32 -1, label %10128
    i32 -2, label %10129
    i32 -3, label %10131
    i32 -4, label %10133
    i32 -5, label %10135
    i32 -6, label %10136
    i32 -7, label %10137
  ]

; <label>:10128                                   ; preds = %10106
  br label %10167

; <label>:10129                                   ; preds = %10106
  %10130 = select i1 %10127, float 1.000000e+00, float 0.000000e+00
  br label %10167

; <label>:10131                                   ; preds = %10106
  %10132 = select i1 %10127, float 1.000000e+00, float 0.000000e+00
  br label %10167

; <label>:10133                                   ; preds = %10106
  %10134 = select i1 %10127, float 1.000000e+00, float 0.000000e+00
  br label %10167

; <label>:10135                                   ; preds = %10106
  br label %10167

; <label>:10136                                   ; preds = %10106
  br label %10167

; <label>:10137                                   ; preds = %10106
  %10138 = lshr i32 %8883, 16
  %10139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10138)  ; LegacyF16ToF32(value)
  %10140 = fmul fast float %10139, 0x3FD5555560000000
  %10141 = fsub fast float 1.000000e+00, %10140
  %10142 = fmul fast float %10140, %10108
  %10143 = fmul fast float %10141, %10108
  br label %10167

; <label>:10144                                   ; preds = %9865
  %10145 = bitcast i32 %8883 to float
  br label %10167

; <label>:10146                                   ; preds = %9865
  %10147 = bitcast i32 %8883 to float
  br label %10167

; <label>:10148                                   ; preds = %9865
  %10149 = bitcast i32 %8883 to float
  br label %10167

; <label>:10150                                   ; preds = %9865
  %10151 = and i32 %8883, 1023
  %10152 = uitofp i32 %10151 to float
  %10153 = lshr i32 %8883, 10
  %10154 = and i32 %10153, 1023
  %10155 = uitofp i32 %10154 to float
  %10156 = lshr i32 %8883, 20
  %10157 = and i32 %10156, 1023
  %10158 = uitofp i32 %10157 to float
  %10159 = fmul fast float %10152, 0x3F60040100000000
  %10160 = fmul fast float %10155, 0x3F60040100000000
  %10161 = fmul fast float %10158, 0x3F60040100000000
  %10162 = fadd fast float %10159, -1.000000e+00
  %10163 = fadd fast float %10160, -1.000000e+00
  %10164 = fadd fast float %10161, -1.000000e+00
  br label %10167

; <label>:10165                                   ; preds = %9865
  br label %10167

; <label>:10166                                   ; preds = %9865
  br label %10167

; <label>:10167                                   ; preds = %11875, %11871, %11855, %10166, %10165, %10150, %10148, %10146, %10144, %10137, %10136, %10135, %10133, %10131, %10129, %10128, %10106, %10104, %10102, %10101, %10100, %10099, %10098, %10097, %10093, %10076, %10061, %10060, %10044, %10018, %9966, %9959, %9958, %9957, %9956, %9934, %9933, %9932, %9920, %9908, %9896, %9895, %9894, %9893, %9892, %9883, %9871, %9870, %9865
  %10168 = phi float [ %9869, %9865 ], [ 0.000000e+00, %10165 ], [ %10162, %10150 ], [ %10149, %10148 ], [ %10147, %10146 ], [ %10145, %10144 ], [ %9869, %10106 ], [ 0.000000e+00, %10137 ], [ %10108, %10136 ], [ %10108, %10135 ], [ 0.000000e+00, %10133 ], [ %10132, %10131 ], [ %10130, %10129 ], [ %10108, %10128 ], [ %10105, %10104 ], [ %10103, %10102 ], [ 0.000000e+00, %10101 ], [ 0.000000e+00, %10100 ], [ 0.000000e+00, %10099 ], [ %153, %10097 ], [ %10096, %10093 ], [ %10068, %10061 ], [ 0.000000e+00, %10060 ], [ %10039, %10018 ], [ 0.000000e+00, %9959 ], [ 0.000000e+00, %9958 ], [ 0.000000e+00, %9957 ], [ 1.000000e+00, %9956 ], [ 0.000000e+00, %10166 ], [ 1.000000e+00, %9933 ], [ 5.000000e-01, %9932 ], [ %9929, %9920 ], [ %9917, %9908 ], [ %9905, %9896 ], [ %2558, %9895 ], [ %2556, %9894 ], [ %2446, %9893 ], [ %2383, %9892 ], [ %9891, %9883 ], [ %9880, %9871 ], [ %2437, %9870 ], [ %9971, %9966 ], [ %10049, %10044 ], [ %10081, %10076 ], [ 0.000000e+00, %10098 ], [ 1.000000e+00, %11855 ], [ 1.000000e+00, %11871 ], [ 1.000000e+00, %11875 ], [ %9953, %9934 ]
  %10169 = phi float [ %9867, %9865 ], [ 0.000000e+00, %10165 ], [ %10163, %10150 ], [ %10149, %10148 ], [ %10147, %10146 ], [ %10145, %10144 ], [ %9867, %10106 ], [ %10142, %10137 ], [ %10108, %10136 ], [ %10108, %10135 ], [ 0.000000e+00, %10133 ], [ 0.000000e+00, %10131 ], [ 0.000000e+00, %10129 ], [ %10108, %10128 ], [ %10105, %10104 ], [ %10103, %10102 ], [ 0.000000e+00, %10101 ], [ 0.000000e+00, %10100 ], [ 0.000000e+00, %10099 ], [ %154, %10097 ], [ %10096, %10093 ], [ %2555, %10061 ], [ 0.000000e+00, %10060 ], [ %10040, %10018 ], [ 1.000000e+00, %9959 ], [ 1.000000e+00, %9958 ], [ 1.000000e+00, %9957 ], [ 0x3FE6666660000000, %9956 ], [ 0.000000e+00, %10166 ], [ 1.000000e+00, %9933 ], [ 5.000000e-01, %9932 ], [ %9930, %9920 ], [ %9918, %9908 ], [ %9906, %9896 ], [ %2558, %9895 ], [ %2556, %9894 ], [ %2447, %9893 ], [ %2384, %9892 ], [ %9891, %9883 ], [ %9881, %9871 ], [ %2438, %9870 ], [ %9975, %9966 ], [ %10053, %10044 ], [ %10085, %10076 ], [ 0.000000e+00, %10098 ], [ 0.000000e+00, %11855 ], [ 0.000000e+00, %11871 ], [ 0.000000e+00, %11875 ], [ 0.000000e+00, %9934 ]
  %10170 = phi float [ %9868, %9865 ], [ 0.000000e+00, %10165 ], [ %10164, %10150 ], [ %10149, %10148 ], [ %10147, %10146 ], [ %10145, %10144 ], [ %9868, %10106 ], [ %10143, %10137 ], [ %10108, %10136 ], [ 0.000000e+00, %10135 ], [ %10134, %10133 ], [ 0.000000e+00, %10131 ], [ %10130, %10129 ], [ %10108, %10128 ], [ %10105, %10104 ], [ %10103, %10102 ], [ 0.000000e+00, %10101 ], [ 0.000000e+00, %10100 ], [ 0.000000e+00, %10099 ], [ %155, %10097 ], [ %10096, %10093 ], [ %10069, %10061 ], [ 0.000000e+00, %10060 ], [ %10041, %10018 ], [ 0.000000e+00, %9959 ], [ 0.000000e+00, %9958 ], [ 0.000000e+00, %9957 ], [ 0.000000e+00, %9956 ], [ 0.000000e+00, %10166 ], [ 1.000000e+00, %9933 ], [ 5.000000e-01, %9932 ], [ %9931, %9920 ], [ %9919, %9908 ], [ %9907, %9896 ], [ %2558, %9895 ], [ %2556, %9894 ], [ %2448, %9893 ], [ %2385, %9892 ], [ %9891, %9883 ], [ %9882, %9871 ], [ %2439, %9870 ], [ %9979, %9966 ], [ %10057, %10044 ], [ %10089, %10076 ], [ 1.000000e+00, %10098 ], [ 0.000000e+00, %11855 ], [ 0.000000e+00, %11871 ], [ 0.000000e+00, %11875 ], [ %9955, %9934 ]
  %10171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10172 = extractvalue %dx.types.CBufRet.f32 %10171, 3
  %10173 = fsub fast float %10168, %9869
  %10174 = fsub fast float %10169, %9867
  %10175 = fsub fast float %10170, %9868
  %10176 = fmul fast float %10172, %10173
  %10177 = fmul fast float %10172, %10174
  %10178 = fmul fast float %10172, %10175
  %10179 = fadd fast float %10176, %9869
  %10180 = fadd fast float %10177, %9867
  %10181 = fadd fast float %10178, %9868
  br label %10182

; <label>:10182                                   ; preds = %10167, %9865
  %10183 = phi float [ %10179, %10167 ], [ %9869, %9865 ]
  %10184 = phi float [ %10180, %10167 ], [ %9867, %9865 ]
  %10185 = phi float [ %10181, %10167 ], [ %9868, %9865 ]
  %10186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10187 = extractvalue %dx.types.CBufRet.f32 %10186, 0
  %10188 = bitcast float %10187 to i32
  %10189 = lshr i32 %10188, 8
  %10190 = and i32 %10189, 255
  %10191 = uitofp i32 %10190 to float
  %10192 = fptoui float %10191 to i32
  switch i32 %10192, label %10429 [
    i32 1, label %10193
    i32 2, label %10199
    i32 3, label %10205
    i32 4, label %10211
    i32 5, label %10217
    i32 6, label %10223
    i32 7, label %10229
    i32 8, label %10235
    i32 9, label %10241
    i32 10, label %10243
    i32 11, label %10264
    i32 12, label %10285
    i32 13, label %10297
    i32 14, label %10312
    i32 15, label %10317
    i32 16, label %10319
    i32 17, label %10321
    i32 18, label %10323
    i32 19, label %10325
    i32 20, label %10336
    i32 21, label %10347
    i32 22, label %10359
    i32 23, label %10393
    i32 24, label %10408
    i32 25, label %10423
    i32 26, label %10425
    i32 27, label %10427
  ]

; <label>:10193                                   ; preds = %10182
  %10194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10195 = extractvalue %dx.types.CBufRet.f32 %10194, 0
  %10196 = fmul fast float %10195, %8224
  %10197 = fmul fast float %10195, %8225
  %10198 = fmul fast float %10195, %8226
  br label %10429

; <label>:10199                                   ; preds = %10182
  %10200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10201 = extractvalue %dx.types.CBufRet.f32 %10200, 0
  %10202 = fmul fast float %10201, %8221
  %10203 = fmul fast float %10201, %8222
  %10204 = fmul fast float %10201, %8223
  br label %10429

; <label>:10205                                   ; preds = %10182
  %10206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10207 = extractvalue %dx.types.CBufRet.f32 %10206, 0
  %10208 = fmul fast float %10207, %2383
  %10209 = fmul fast float %10207, %2384
  %10210 = fmul fast float %10207, %2385
  br label %10429

; <label>:10211                                   ; preds = %10182
  %10212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10213 = extractvalue %dx.types.CBufRet.f32 %10212, 0
  %10214 = fmul fast float %10213, %8218
  %10215 = fmul fast float %10213, %8219
  %10216 = fmul fast float %10213, %8220
  br label %10429

; <label>:10217                                   ; preds = %10182
  %10218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10219 = extractvalue %dx.types.CBufRet.f32 %10218, 0
  %10220 = fmul fast float %10219, %8215
  %10221 = fmul fast float %10219, %8216
  %10222 = fmul fast float %10219, %8217
  br label %10429

; <label>:10223                                   ; preds = %10182
  %10224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10225 = extractvalue %dx.types.CBufRet.f32 %10224, 0
  %10226 = fmul fast float %10225, %5514
  %10227 = fmul fast float %10225, %5515
  %10228 = fmul fast float %10225, %5516
  br label %10429

; <label>:10229                                   ; preds = %10182
  %10230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10231 = extractvalue %dx.types.CBufRet.f32 %10230, 0
  %10232 = fmul fast float %10231, %5514
  %10233 = fmul fast float %10231, %5515
  %10234 = fmul fast float %10231, %5516
  br label %10429

; <label>:10235                                   ; preds = %10182
  %10236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10237 = extractvalue %dx.types.CBufRet.f32 %10236, 0
  %10238 = fmul fast float %5517, %10237
  %10239 = fmul fast float %5518, %10237
  %10240 = fmul fast float %5519, %10237
  br label %10429

; <label>:10241                                   ; preds = %10182
  %10242 = bitcast i32 %8883 to float
  br label %10429

; <label>:10243                                   ; preds = %10182
  %10244 = and i32 %8883, 1023
  %10245 = uitofp i32 %10244 to float
  %10246 = lshr i32 %8883, 10
  %10247 = and i32 %10246, 1023
  %10248 = uitofp i32 %10247 to float
  %10249 = lshr i32 %8883, 20
  %10250 = and i32 %10249, 1023
  %10251 = uitofp i32 %10250 to float
  %10252 = fmul fast float %10245, 0x3F60040100000000
  %10253 = fmul fast float %10248, 0x3F60040100000000
  %10254 = fmul fast float %10251, 0x3F60040100000000
  %10255 = fadd fast float %10252, -1.000000e+00
  %10256 = fadd fast float %10253, -1.000000e+00
  %10257 = fadd fast float %10254, -1.000000e+00
  %10258 = fcmp fast ogt float %10255, 0.000000e+00
  %10259 = select i1 %10258, float 1.000000e+00, float 0.000000e+00
  %10260 = fcmp fast ogt float %10256, 0.000000e+00
  %10261 = select i1 %10260, float 1.000000e+00, float 0.000000e+00
  %10262 = fcmp fast ogt float %10257, 0.000000e+00
  %10263 = select i1 %10262, float 1.000000e+00, float 0.000000e+00
  br label %10429

; <label>:10264                                   ; preds = %10182
  %10265 = and i32 %8883, 1023
  %10266 = uitofp i32 %10265 to float
  %10267 = lshr i32 %8883, 10
  %10268 = and i32 %10267, 1023
  %10269 = uitofp i32 %10268 to float
  %10270 = lshr i32 %8883, 20
  %10271 = and i32 %10270, 1023
  %10272 = uitofp i32 %10271 to float
  %10273 = fmul fast float %10266, 0x3F60040100000000
  %10274 = fmul fast float %10269, 0x3F60040100000000
  %10275 = fmul fast float %10272, 0x3F60040100000000
  %10276 = fadd fast float %10273, -1.000000e+00
  %10277 = fadd fast float %10274, -1.000000e+00
  %10278 = fadd fast float %10275, -1.000000e+00
  %10279 = fmul fast float %10278, %10277
  %10280 = fsub fast float %10278, %10279
  %10281 = fmul fast float %10277, %10276
  %10282 = fmul fast float %10280, %10276
  %10283 = fsub fast float %10277, %10281
  %10284 = fsub fast float %10280, %10282
  br label %10429

; <label>:10285                                   ; preds = %10182
  %10286 = and i32 %8883, 255
  %10287 = uitofp i32 %10286 to float
  %10288 = fmul fast float %10287, 0x3F70101020000000
  %10289 = lshr i32 %8883, 8
  %10290 = and i32 %10289, 255
  %10291 = uitofp i32 %10290 to float
  %10292 = fmul fast float %10291, 0x3F70101020000000
  %10293 = lshr i32 %8883, 16
  %10294 = and i32 %10293, 255
  %10295 = uitofp i32 %10294 to float
  %10296 = fmul fast float %10295, 0x3F70101020000000
  br label %10429

; <label>:10297                                   ; preds = %10182
  %10298 = and i32 %8883, 1023
  %10299 = uitofp i32 %10298 to float
  %10300 = lshr i32 %8883, 10
  %10301 = and i32 %10300, 1023
  %10302 = uitofp i32 %10301 to float
  %10303 = lshr i32 %8883, 20
  %10304 = and i32 %10303, 1023
  %10305 = uitofp i32 %10304 to float
  %10306 = fmul fast float %10299, 0x3F60040100000000
  %10307 = fmul fast float %10302, 0x3F60040100000000
  %10308 = fmul fast float %10305, 0x3F60040100000000
  %10309 = fadd fast float %10306, -1.000000e+00
  %10310 = fadd fast float %10307, -1.000000e+00
  %10311 = fadd fast float %10308, -1.000000e+00
  br label %10429

; <label>:10312                                   ; preds = %10182
  %10313 = icmp ne i32 %8883, 0
  %10314 = select i1 %10313, float 1.000000e+00, float %10183
  %10315 = select i1 %10313, float 0.000000e+00, float %10184
  %10316 = select i1 %10313, float 0.000000e+00, float %10185
  br label %10429

; <label>:10317                                   ; preds = %10182
  %10318 = bitcast i32 %8883 to float
  br label %10429

; <label>:10319                                   ; preds = %10182
  %10320 = bitcast i32 %8883 to float
  br label %10429

; <label>:10321                                   ; preds = %10182
  %10322 = bitcast i32 %8883 to float
  br label %10429

; <label>:10323                                   ; preds = %10182
  %10324 = bitcast i32 %8883 to float
  br label %10429

; <label>:10325                                   ; preds = %10182
  %10326 = and i32 %8883, 65535
  %10327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10326)  ; LegacyF16ToF32(value)
  %10328 = lshr i32 %8883, 16
  %10329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10328)  ; LegacyF16ToF32(value)
  %10330 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10332 = extractvalue %dx.types.CBufRet.f32 %10331, 0
  %10333 = fmul fast float %10332, %10327
  %10334 = fmul fast float %10332, %10329
  %10335 = fmul fast float %10332, %10330
  br label %10429

; <label>:10336                                   ; preds = %10182
  %10337 = and i32 %8883, 65535
  %10338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10337)  ; LegacyF16ToF32(value)
  %10339 = lshr i32 %8883, 16
  %10340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10339)  ; LegacyF16ToF32(value)
  %10341 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10343 = extractvalue %dx.types.CBufRet.f32 %10342, 0
  %10344 = fmul fast float %10343, %10338
  %10345 = fmul fast float %10343, %10340
  %10346 = fmul fast float %10343, %10341
  br label %10429

; <label>:10347                                   ; preds = %10182
  %10348 = and i32 %8883, 1023
  %10349 = uitofp i32 %10348 to float
  %10350 = lshr i32 %8883, 10
  %10351 = and i32 %10350, 1023
  %10352 = uitofp i32 %10351 to float
  %10353 = lshr i32 %8883, 20
  %10354 = and i32 %10353, 1023
  %10355 = uitofp i32 %10354 to float
  %10356 = fmul fast float %10349, 0x3F50040100000000
  %10357 = fmul fast float %10352, 0x3F50040100000000
  %10358 = fmul fast float %10355, 0x3F50040100000000
  br label %10429

; <label>:10359                                   ; preds = %10182
  %10360 = and i32 %8883, 1023
  %10361 = uitofp i32 %10360 to float
  %10362 = lshr i32 %8883, 10
  %10363 = and i32 %10362, 1023
  %10364 = uitofp i32 %10363 to float
  %10365 = lshr i32 %8883, 20
  %10366 = and i32 %10365, 1023
  %10367 = uitofp i32 %10366 to float
  %10368 = fmul fast float %10361, 0x3F60040100000000
  %10369 = fmul fast float %10364, 0x3F60040100000000
  %10370 = fmul fast float %10367, 0x3F60040100000000
  %10371 = fadd fast float %10368, -1.000000e+00
  %10372 = fadd fast float %10369, -1.000000e+00
  %10373 = fadd fast float %10370, -1.000000e+00
  %10374 = call float @dx.op.binary.f32(i32 35, float %10372, float %10373)  ; FMax(a,b)
  %10375 = call float @dx.op.binary.f32(i32 35, float %10371, float %10374)  ; FMax(a,b)
  %10376 = fmul fast float %10375, 2.000000e+00
  %10377 = call float @dx.op.unary.f32(i32 7, float %10376)  ; Saturate(value)
  %10378 = fmul fast float %10361, 0x3F94050140000000
  %10379 = fadd fast float %10378, -1.000000e+01
  %10380 = fmul fast float %10364, 0x3F94050140000000
  %10381 = fadd fast float %10380, -1.000000e+01
  %10382 = fmul fast float %10367, 0x3F94050140000000
  %10383 = fadd fast float %10382, -1.000000e+01
  %10384 = fsub fast float %10379, %10183
  %10385 = fsub fast float %10381, %10184
  %10386 = fsub fast float %10383, %10185
  %10387 = fmul fast float %10377, %10384
  %10388 = fmul fast float %10377, %10385
  %10389 = fmul fast float %10377, %10386
  %10390 = fadd fast float %10387, %10183
  %10391 = fadd fast float %10388, %10184
  %10392 = fadd fast float %10389, %10185
  br label %10429

; <label>:10393                                   ; preds = %10182
  %10394 = and i32 %8883, 1023
  %10395 = uitofp i32 %10394 to float
  %10396 = lshr i32 %8883, 10
  %10397 = and i32 %10396, 1023
  %10398 = uitofp i32 %10397 to float
  %10399 = lshr i32 %8883, 20
  %10400 = and i32 %10399, 1023
  %10401 = uitofp i32 %10400 to float
  %10402 = fmul fast float %10395, 0x3F60040100000000
  %10403 = fmul fast float %10398, 0x3F60040100000000
  %10404 = fmul fast float %10401, 0x3F60040100000000
  %10405 = fadd fast float %10402, -1.000000e+00
  %10406 = fadd fast float %10403, -1.000000e+00
  %10407 = fadd fast float %10404, -1.000000e+00
  br label %10429

; <label>:10408                                   ; preds = %10182
  %10409 = and i32 %8883, 1023
  %10410 = uitofp i32 %10409 to float
  %10411 = lshr i32 %8883, 10
  %10412 = and i32 %10411, 1023
  %10413 = uitofp i32 %10412 to float
  %10414 = lshr i32 %8883, 20
  %10415 = and i32 %10414, 1023
  %10416 = uitofp i32 %10415 to float
  %10417 = fmul fast float %10410, 0x3F60040100000000
  %10418 = fmul fast float %10413, 0x3F60040100000000
  %10419 = fmul fast float %10416, 0x3F60040100000000
  %10420 = fadd fast float %10417, -1.000000e+00
  %10421 = fadd fast float %10418, -1.000000e+00
  %10422 = fadd fast float %10419, -1.000000e+00
  br label %10429

; <label>:10423                                   ; preds = %10182
  %10424 = bitcast i32 %8883 to float
  br label %10429

; <label>:10425                                   ; preds = %10182
  %10426 = bitcast i32 %8883 to float
  br label %10429

; <label>:10427                                   ; preds = %10182
  %10428 = bitcast i32 %8883 to float
  br label %10429

; <label>:10429                                   ; preds = %10427, %10425, %10423, %10408, %10393, %10359, %10347, %10336, %10325, %10323, %10321, %10319, %10317, %10312, %10297, %10285, %10264, %10243, %10241, %10235, %10229, %10223, %10217, %10211, %10205, %10199, %10193, %10182
  %10430 = phi float [ %10183, %10182 ], [ %10428, %10427 ], [ %10426, %10425 ], [ %10424, %10423 ], [ %10420, %10408 ], [ %10405, %10393 ], [ %10390, %10359 ], [ %10356, %10347 ], [ %10344, %10336 ], [ %10333, %10325 ], [ %10324, %10323 ], [ %10322, %10321 ], [ %10320, %10319 ], [ %10318, %10317 ], [ %10309, %10297 ], [ %10288, %10285 ], [ %10276, %10264 ], [ %10259, %10243 ], [ %10242, %10241 ], [ %10238, %10235 ], [ %10232, %10229 ], [ %10226, %10223 ], [ %10220, %10217 ], [ %10214, %10211 ], [ %10208, %10205 ], [ %10202, %10199 ], [ %10196, %10193 ], [ %10314, %10312 ]
  %10431 = phi float [ %10184, %10182 ], [ %10428, %10427 ], [ %10426, %10425 ], [ %10424, %10423 ], [ %10421, %10408 ], [ %10406, %10393 ], [ %10391, %10359 ], [ %10357, %10347 ], [ %10345, %10336 ], [ %10334, %10325 ], [ %10324, %10323 ], [ %10322, %10321 ], [ %10320, %10319 ], [ %10318, %10317 ], [ %10310, %10297 ], [ %10292, %10285 ], [ %10283, %10264 ], [ %10261, %10243 ], [ %10242, %10241 ], [ %10239, %10235 ], [ %10233, %10229 ], [ %10227, %10223 ], [ %10221, %10217 ], [ %10215, %10211 ], [ %10209, %10205 ], [ %10203, %10199 ], [ %10197, %10193 ], [ %10315, %10312 ]
  %10432 = phi float [ %10185, %10182 ], [ %10428, %10427 ], [ %10426, %10425 ], [ %10424, %10423 ], [ %10422, %10408 ], [ %10407, %10393 ], [ %10392, %10359 ], [ %10358, %10347 ], [ %10346, %10336 ], [ %10335, %10325 ], [ %10324, %10323 ], [ %10322, %10321 ], [ %10320, %10319 ], [ %10318, %10317 ], [ %10311, %10297 ], [ %10296, %10285 ], [ %10284, %10264 ], [ %10263, %10243 ], [ %10242, %10241 ], [ %10240, %10235 ], [ %10234, %10229 ], [ %10228, %10223 ], [ %10222, %10217 ], [ %10216, %10211 ], [ %10210, %10205 ], [ %10204, %10199 ], [ %10198, %10193 ], [ %10316, %10312 ]
  %10433 = extractvalue %dx.types.CBufRet.f32 %10186, 3
  %10434 = fsub fast float %10430, %10183
  %10435 = fsub fast float %10431, %10184
  %10436 = fsub fast float %10432, %10185
  %10437 = fmul fast float %10433, %10434
  %10438 = fmul fast float %10433, %10435
  %10439 = fmul fast float %10433, %10436
  %10440 = fadd fast float %10437, %10183
  %10441 = fadd fast float %10438, %10184
  %10442 = fadd fast float %10439, %10185
  %10443 = lshr i32 %10188, 16
  %10444 = and i32 %10443, 255
  %10445 = uitofp i32 %10444 to float
  %10446 = fptoui float %10445 to i32
  switch i32 %10446, label %10493 [
    i32 16, label %10478
    i32 12, label %10477
    i32 3, label %10447
    i32 4, label %10448
    i32 15, label %10449
    i32 5, label %10458
    i32 6, label %10467
    i32 7, label %10476
    i32 11, label %10477
  ]

; <label>:10447                                   ; preds = %10429
  br label %10493

; <label>:10448                                   ; preds = %10429
  br label %10493

; <label>:10449                                   ; preds = %10429
  %10450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %10451 = extractvalue %dx.types.CBufRet.f32 %10450, 0
  %10452 = fadd fast float %10451, %10440
  %10453 = fadd fast float %10451, %10441
  %10454 = fadd fast float %10451, %10442
  %10455 = call float @dx.op.unary.f32(i32 7, float %10452)  ; Saturate(value)
  %10456 = call float @dx.op.unary.f32(i32 7, float %10453)  ; Saturate(value)
  %10457 = call float @dx.op.unary.f32(i32 7, float %10454)  ; Saturate(value)
  br label %10493

; <label>:10458                                   ; preds = %10429
  %10459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10460 = extractvalue %dx.types.CBufRet.f32 %10459, 0
  %10461 = bitcast float %10460 to i32
  %10462 = and i32 %10461, 2130706432
  %10463 = icmp eq i32 %10462, 0
  %10464 = select i1 %10463, float 0.000000e+00, float %10440
  %10465 = select i1 %10463, float 0.000000e+00, float %10441
  %10466 = select i1 %10463, float 0.000000e+00, float %10442
  br label %10493

; <label>:10467                                   ; preds = %10429
  %10468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10469 = extractvalue %dx.types.CBufRet.f32 %10468, 0
  %10470 = bitcast float %10469 to i32
  %10471 = and i32 %10470, 2130706432
  %10472 = icmp eq i32 %10471, 0
  %10473 = select i1 %10472, float 0.000000e+00, float %10440
  %10474 = select i1 %10472, float 0.000000e+00, float %10441
  %10475 = select i1 %10472, float 0.000000e+00, float %10442
  br label %10493

; <label>:10476                                   ; preds = %10429
  br label %10493

; <label>:10477                                   ; preds = %10429, %10429
  br label %10493

; <label>:10478                                   ; preds = %10429
  %10479 = and i32 %8883, 1023
  %10480 = uitofp i32 %10479 to float
  %10481 = lshr i32 %8883, 10
  %10482 = and i32 %10481, 1023
  %10483 = uitofp i32 %10482 to float
  %10484 = lshr i32 %8883, 20
  %10485 = and i32 %10484, 1023
  %10486 = uitofp i32 %10485 to float
  %10487 = fmul fast float %10480, 0x3F60040100000000
  %10488 = fmul fast float %10483, 0x3F60040100000000
  %10489 = fmul fast float %10486, 0x3F60040100000000
  %10490 = fadd fast float %10487, -1.000000e+00
  %10491 = fadd fast float %10488, -1.000000e+00
  %10492 = fadd fast float %10489, -1.000000e+00
  br label %10493

; <label>:10493                                   ; preds = %10478, %10477, %10476, %10467, %10458, %10449, %10448, %10447, %10429
  %10494 = phi float [ 0.000000e+00, %10476 ], [ %10455, %10449 ], [ 0.000000e+00, %10448 ], [ %69, %10477 ], [ %10490, %10478 ], [ 0.000000e+00, %10447 ], [ %10464, %10458 ], [ %10473, %10467 ], [ %10440, %10429 ]
  %10495 = phi float [ 0.000000e+00, %10476 ], [ %10456, %10449 ], [ 0.000000e+00, %10448 ], [ %70, %10477 ], [ %10491, %10478 ], [ 0.000000e+00, %10447 ], [ %10465, %10458 ], [ %10474, %10467 ], [ %10441, %10429 ]
  %10496 = phi float [ 0.000000e+00, %10476 ], [ %10457, %10449 ], [ 1.000000e+00, %10448 ], [ %71, %10477 ], [ %10492, %10478 ], [ 0.000000e+00, %10447 ], [ %10466, %10458 ], [ %10475, %10467 ], [ %10442, %10429 ]
  %10497 = fsub fast float %10494, %10440
  %10498 = fsub fast float %10495, %10441
  %10499 = fsub fast float %10496, %10442
  %10500 = fmul fast float %10433, %10497
  %10501 = fmul fast float %10433, %10498
  %10502 = fmul fast float %10433, %10499
  %10503 = fadd fast float %10500, %10440
  %10504 = fadd fast float %10501, %10441
  %10505 = fadd fast float %10502, %10442
  %10506 = and i32 %8213, 255
  %10507 = uitofp i32 %10506 to float
  %10508 = fptoui float %10507 to i32
  %10509 = lshr i32 %8213, 8
  %10510 = and i32 %10509, 255
  %10511 = uitofp i32 %10510 to float
  %10512 = fptoui float %10511 to i32
  %10513 = lshr i32 %8213, 16
  %10514 = and i32 %10513, 255
  %10515 = uitofp i32 %10514 to float
  %10516 = fptoui float %10515 to i32
  %10517 = lshr i32 %8213, 24
  %10518 = uitofp i32 %10517 to float
  %10519 = fptoui float %10518 to i32
  %10520 = and i32 %8212, 255
  %10521 = uitofp i32 %10520 to float
  %10522 = fptoui float %10521 to i32
  %10523 = lshr i32 %8212, 16
  %10524 = and i32 %10523, 255
  %10525 = uitofp i32 %10524 to float
  %10526 = fptoui float %10525 to i32
  %10527 = lshr i32 %10188, 24
  %10528 = uitofp i32 %10527 to float
  %10529 = fptoui float %10528 to i32
  switch i32 %10529, label %10768 [
    i32 1, label %10530
    i32 2, label %10557
    i32 3, label %10582
    i32 4, label %10605
    i32 5, label %10628
    i32 6, label %10651
    i32 7, label %10675
    i32 8, label %10698
    i32 9, label %10721
    i32 12, label %10743
    i32 13, label %10744
    i32 14, label %10767
  ]

; <label>:10530                                   ; preds = %10493
  %10531 = add i32 %10508, %10522
  %10532 = add i32 %10531, %10519
  %10533 = add i32 %10532, %10512
  %10534 = add i32 %10533, %10516
  %10535 = uitofp i32 %10534 to float
  %10536 = fadd fast float %10535, -4.000000e+00
  %10537 = fmul fast float %10536, 0x3FB5555560000000
  %10538 = call float @dx.op.unary.f32(i32 7, float %10537)  ; Saturate(value)
  %10539 = icmp eq i32 %10534, 0
  %10540 = select i1 %10539, float 0.000000e+00, float %10538
  %10541 = icmp ult i32 %10534, 2
  %10542 = select i1 %10541, float 0.000000e+00, float %10538
  %10543 = add i32 %10534, -1
  %10544 = icmp ult i32 %10543, 2
  %10545 = select i1 %10544, float 1.000000e+00, float %10540
  %10546 = icmp ult i32 %10534, 4
  %10547 = select i1 %10546, float 0.000000e+00, float 1.000000e+00
  %10548 = and i32 %10534, -2
  %10549 = icmp eq i32 %10548, 2
  %10550 = icmp eq i32 %10534, 4
  %10551 = select i1 %10550, float 1.000000e+00, float %10547
  %10552 = or i1 %10550, %10549
  %10553 = select i1 %10552, float 1.000000e+00, float %10542
  %10554 = add i32 %10534, -3
  %10555 = icmp ult i32 %10554, 2
  %10556 = select i1 %10555, float 0.000000e+00, float %10545
  br label %10768

; <label>:10557                                   ; preds = %10493
  %10558 = add i32 %10512, %10508
  %10559 = add i32 %10558, %10516
  %10560 = uitofp i32 %10559 to float
  %10561 = fadd fast float %10560, -4.000000e+00
  %10562 = fmul fast float %10561, 0x3FB5555560000000
  %10563 = call float @dx.op.unary.f32(i32 7, float %10562)  ; Saturate(value)
  %10564 = icmp eq i32 %10559, 0
  %10565 = select i1 %10564, float 0.000000e+00, float %10563
  %10566 = icmp ult i32 %10559, 2
  %10567 = select i1 %10566, float 0.000000e+00, float %10563
  %10568 = add i32 %10559, -1
  %10569 = icmp ult i32 %10568, 2
  %10570 = select i1 %10569, float 1.000000e+00, float %10565
  %10571 = icmp ult i32 %10559, 4
  %10572 = select i1 %10571, float 0.000000e+00, float 1.000000e+00
  %10573 = and i32 %10559, -2
  %10574 = icmp eq i32 %10573, 2
  %10575 = icmp eq i32 %10559, 4
  %10576 = select i1 %10575, float 1.000000e+00, float %10572
  %10577 = or i1 %10575, %10574
  %10578 = select i1 %10577, float 1.000000e+00, float %10567
  %10579 = add i32 %10559, -3
  %10580 = icmp ult i32 %10579, 2
  %10581 = select i1 %10580, float 0.000000e+00, float %10570
  br label %10768

; <label>:10582                                   ; preds = %10493
  %10583 = uitofp i32 %10508 to float
  %10584 = fadd fast float %10583, -4.000000e+00
  %10585 = fmul fast float %10584, 0x3FB5555560000000
  %10586 = call float @dx.op.unary.f32(i32 7, float %10585)  ; Saturate(value)
  %10587 = icmp eq i32 %10508, 0
  %10588 = select i1 %10587, float 0.000000e+00, float %10586
  %10589 = icmp ult i32 %10508, 2
  %10590 = select i1 %10589, float 0.000000e+00, float %10586
  %10591 = add i32 %10508, -1
  %10592 = icmp ult i32 %10591, 2
  %10593 = select i1 %10592, float 1.000000e+00, float %10588
  %10594 = icmp ult i32 %10508, 4
  %10595 = select i1 %10594, float 0.000000e+00, float 1.000000e+00
  %10596 = and i32 %10508, -2
  %10597 = icmp eq i32 %10596, 2
  %10598 = icmp eq i32 %10508, 4
  %10599 = select i1 %10598, float 1.000000e+00, float %10595
  %10600 = or i1 %10598, %10597
  %10601 = select i1 %10600, float 1.000000e+00, float %10590
  %10602 = add i32 %10508, -3
  %10603 = icmp ult i32 %10602, 2
  %10604 = select i1 %10603, float 0.000000e+00, float %10593
  br label %10768

; <label>:10605                                   ; preds = %10493
  %10606 = uitofp i32 %10512 to float
  %10607 = fadd fast float %10606, -4.000000e+00
  %10608 = fmul fast float %10607, 0x3FB5555560000000
  %10609 = call float @dx.op.unary.f32(i32 7, float %10608)  ; Saturate(value)
  %10610 = icmp eq i32 %10512, 0
  %10611 = select i1 %10610, float 0.000000e+00, float %10609
  %10612 = icmp ult i32 %10512, 2
  %10613 = select i1 %10612, float 0.000000e+00, float %10609
  %10614 = add i32 %10512, -1
  %10615 = icmp ult i32 %10614, 2
  %10616 = select i1 %10615, float 1.000000e+00, float %10611
  %10617 = icmp ult i32 %10512, 4
  %10618 = select i1 %10617, float 0.000000e+00, float 1.000000e+00
  %10619 = and i32 %10512, -2
  %10620 = icmp eq i32 %10619, 2
  %10621 = icmp eq i32 %10512, 4
  %10622 = select i1 %10621, float 1.000000e+00, float %10618
  %10623 = or i1 %10621, %10620
  %10624 = select i1 %10623, float 1.000000e+00, float %10613
  %10625 = add i32 %10512, -3
  %10626 = icmp ult i32 %10625, 2
  %10627 = select i1 %10626, float 0.000000e+00, float %10616
  br label %10768

; <label>:10628                                   ; preds = %10493
  %10629 = uitofp i32 %10516 to float
  %10630 = fadd fast float %10629, -4.000000e+00
  %10631 = fmul fast float %10630, 0x3FB5555560000000
  %10632 = call float @dx.op.unary.f32(i32 7, float %10631)  ; Saturate(value)
  %10633 = icmp eq i32 %10516, 0
  %10634 = select i1 %10633, float 0.000000e+00, float %10632
  %10635 = icmp ult i32 %10516, 2
  %10636 = select i1 %10635, float 0.000000e+00, float %10632
  %10637 = add i32 %10516, -1
  %10638 = icmp ult i32 %10637, 2
  %10639 = select i1 %10638, float 1.000000e+00, float %10634
  %10640 = icmp ult i32 %10516, 4
  %10641 = select i1 %10640, float 0.000000e+00, float 1.000000e+00
  %10642 = and i32 %10516, -2
  %10643 = icmp eq i32 %10642, 2
  %10644 = icmp eq i32 %10516, 4
  %10645 = select i1 %10644, float 1.000000e+00, float %10641
  %10646 = or i1 %10644, %10643
  %10647 = select i1 %10646, float 1.000000e+00, float %10636
  %10648 = add i32 %10516, -3
  %10649 = icmp ult i32 %10648, 2
  %10650 = select i1 %10649, float 0.000000e+00, float %10639
  br label %10768

; <label>:10651                                   ; preds = %10493
  %10652 = add i32 %10519, %10522
  %10653 = uitofp i32 %10652 to float
  %10654 = fadd fast float %10653, -4.000000e+00
  %10655 = fmul fast float %10654, 0x3FB5555560000000
  %10656 = call float @dx.op.unary.f32(i32 7, float %10655)  ; Saturate(value)
  %10657 = icmp eq i32 %10652, 0
  %10658 = select i1 %10657, float 0.000000e+00, float %10656
  %10659 = icmp ult i32 %10652, 2
  %10660 = select i1 %10659, float 0.000000e+00, float %10656
  %10661 = add i32 %10652, -1
  %10662 = icmp ult i32 %10661, 2
  %10663 = select i1 %10662, float 1.000000e+00, float %10658
  %10664 = icmp ult i32 %10652, 4
  %10665 = select i1 %10664, float 0.000000e+00, float 1.000000e+00
  %10666 = and i32 %10652, -2
  %10667 = icmp eq i32 %10666, 2
  %10668 = icmp eq i32 %10652, 4
  %10669 = select i1 %10668, float 1.000000e+00, float %10665
  %10670 = or i1 %10668, %10667
  %10671 = select i1 %10670, float 1.000000e+00, float %10660
  %10672 = add i32 %10652, -3
  %10673 = icmp ult i32 %10672, 2
  %10674 = select i1 %10673, float 0.000000e+00, float %10663
  br label %10768

; <label>:10675                                   ; preds = %10493
  %10676 = uitofp i32 %10519 to float
  %10677 = fadd fast float %10676, -4.000000e+00
  %10678 = fmul fast float %10677, 0x3FB5555560000000
  %10679 = call float @dx.op.unary.f32(i32 7, float %10678)  ; Saturate(value)
  %10680 = icmp eq i32 %10519, 0
  %10681 = select i1 %10680, float 0.000000e+00, float %10679
  %10682 = icmp ult i32 %10519, 2
  %10683 = select i1 %10682, float 0.000000e+00, float %10679
  %10684 = add i32 %10519, -1
  %10685 = icmp ult i32 %10684, 2
  %10686 = select i1 %10685, float 1.000000e+00, float %10681
  %10687 = icmp ult i32 %10519, 4
  %10688 = select i1 %10687, float 0.000000e+00, float 1.000000e+00
  %10689 = and i32 %10519, -2
  %10690 = icmp eq i32 %10689, 2
  %10691 = icmp eq i32 %10519, 4
  %10692 = select i1 %10691, float 1.000000e+00, float %10688
  %10693 = or i1 %10691, %10690
  %10694 = select i1 %10693, float 1.000000e+00, float %10683
  %10695 = add i32 %10519, -3
  %10696 = icmp ult i32 %10695, 2
  %10697 = select i1 %10696, float 0.000000e+00, float %10686
  br label %10768

; <label>:10698                                   ; preds = %10493
  %10699 = uitofp i32 %10522 to float
  %10700 = fadd fast float %10699, -4.000000e+00
  %10701 = fmul fast float %10700, 0x3FB5555560000000
  %10702 = call float @dx.op.unary.f32(i32 7, float %10701)  ; Saturate(value)
  %10703 = icmp eq i32 %10522, 0
  %10704 = select i1 %10703, float 0.000000e+00, float %10702
  %10705 = icmp ult i32 %10522, 2
  %10706 = select i1 %10705, float 0.000000e+00, float %10702
  %10707 = add i32 %10522, -1
  %10708 = icmp ult i32 %10707, 2
  %10709 = select i1 %10708, float 1.000000e+00, float %10704
  %10710 = icmp ult i32 %10522, 4
  %10711 = select i1 %10710, float 0.000000e+00, float 1.000000e+00
  %10712 = and i32 %10522, -2
  %10713 = icmp eq i32 %10712, 2
  %10714 = icmp eq i32 %10522, 4
  %10715 = select i1 %10714, float 1.000000e+00, float %10711
  %10716 = or i1 %10714, %10713
  %10717 = select i1 %10716, float 1.000000e+00, float %10706
  %10718 = add i32 %10522, -3
  %10719 = icmp ult i32 %10718, 2
  %10720 = select i1 %10719, float 0.000000e+00, float %10709
  br label %10768

; <label>:10721                                   ; preds = %10493
  %10722 = lshr i32 %8212, 8
  %10723 = and i32 %10722, 255
  %10724 = uitofp i32 %10723 to float
  %10725 = fptoui float %10724 to i32
  %10726 = uitofp i32 %10725 to float
  %10727 = fcmp fast oge float %10726, 1.000000e+00
  %10728 = fcmp fast oge float %10726, 2.000000e+00
  %10729 = or i1 %10728, %10727
  %10730 = select i1 %10729, float 1.000000e+00, float 0.000000e+00
  %10731 = fcmp fast oge float %10726, 3.000000e+00
  %10732 = or i1 %10731, %10728
  %10733 = fcmp fast oge float %10726, 4.000000e+00
  %10734 = or i1 %10733, %10732
  %10735 = select i1 %10734, float 1.000000e+00, float 0.000000e+00
  %10736 = or i1 %10733, %10731
  %10737 = fcmp fast oge float %10726, 5.000000e+00
  %10738 = or i1 %10737, %10733
  %10739 = select i1 %10738, float 1.000000e+00, float 0.000000e+00
  %10740 = select i1 %10737, float 0.000000e+00, float %10735
  %10741 = or i1 %10737, %10736
  %10742 = select i1 %10741, float 0.000000e+00, float %10730
  br label %10768

; <label>:10743                                   ; preds = %10493
  br label %10768

; <label>:10744                                   ; preds = %10493
  %10745 = uitofp i32 %10526 to float
  %10746 = fadd fast float %10745, -4.000000e+00
  %10747 = fmul fast float %10746, 0x3FB5555560000000
  %10748 = call float @dx.op.unary.f32(i32 7, float %10747)  ; Saturate(value)
  %10749 = icmp eq i32 %10526, 0
  %10750 = select i1 %10749, float 0.000000e+00, float %10748
  %10751 = icmp ult i32 %10526, 2
  %10752 = select i1 %10751, float 0.000000e+00, float %10748
  %10753 = add i32 %10526, -1
  %10754 = icmp ult i32 %10753, 2
  %10755 = select i1 %10754, float 1.000000e+00, float %10750
  %10756 = icmp ult i32 %10526, 4
  %10757 = select i1 %10756, float 0.000000e+00, float 1.000000e+00
  %10758 = and i32 %10526, -2
  %10759 = icmp eq i32 %10758, 2
  %10760 = icmp eq i32 %10526, 4
  %10761 = select i1 %10760, float 1.000000e+00, float %10757
  %10762 = or i1 %10760, %10759
  %10763 = select i1 %10762, float 1.000000e+00, float %10752
  %10764 = add i32 %10526, -3
  %10765 = icmp ult i32 %10764, 2
  %10766 = select i1 %10765, float 0.000000e+00, float %10755
  br label %10768

; <label>:10767                                   ; preds = %10493
  br label %10768

; <label>:10768                                   ; preds = %10767, %10744, %10743, %10721, %10698, %10675, %10651, %10628, %10605, %10582, %10557, %10530, %10493
  %10769 = phi float [ %10503, %10493 ], [ 5.000000e-01, %10767 ], [ %10761, %10744 ], [ 1.000000e+00, %10743 ], [ %10739, %10721 ], [ %10715, %10698 ], [ %10692, %10675 ], [ %10669, %10651 ], [ %10645, %10628 ], [ %10622, %10605 ], [ %10599, %10582 ], [ %10576, %10557 ], [ %10551, %10530 ]
  %10770 = phi float [ %10504, %10493 ], [ 5.000000e-01, %10767 ], [ %10763, %10744 ], [ 0.000000e+00, %10743 ], [ %10740, %10721 ], [ %10717, %10698 ], [ %10694, %10675 ], [ %10671, %10651 ], [ %10647, %10628 ], [ %10624, %10605 ], [ %10601, %10582 ], [ %10578, %10557 ], [ %10553, %10530 ]
  %10771 = phi float [ %10505, %10493 ], [ 5.000000e-01, %10767 ], [ %10766, %10744 ], [ 0.000000e+00, %10743 ], [ %10742, %10721 ], [ %10720, %10698 ], [ %10697, %10675 ], [ %10674, %10651 ], [ %10650, %10628 ], [ %10627, %10605 ], [ %10604, %10582 ], [ %10581, %10557 ], [ %10556, %10530 ]
  %10772 = fsub fast float %10769, %10503
  %10773 = fsub fast float %10770, %10504
  %10774 = fsub fast float %10771, %10505
  %10775 = fmul fast float %10772, %10433
  %10776 = fmul fast float %10773, %10433
  %10777 = fmul fast float %10774, %10433
  %10778 = fadd fast float %10775, %10503
  %10779 = fadd fast float %10776, %10504
  %10780 = fadd fast float %10777, %10505
  %10781 = and i32 %10188, 255
  %10782 = uitofp i32 %10781 to float
  %10783 = fptoui float %10782 to i32
  %10784 = icmp ult i32 %10783, 25
  br i1 %10784, label %10785, label %10790

; <label>:10785                                   ; preds = %10768
  %10786 = trunc i32 %10783 to i25
  %10787 = lshr i25 1048574, %10786
  %10788 = and i25 %10787, 1
  %10789 = icmp ne i25 %10788, 0
  br label %10790

; <label>:10790                                   ; preds = %10785, %10768
  %10791 = phi i1 [ %10789, %10785 ], [ true, %10768 ]
  %10792 = or i32 %10446, %10192
  %10793 = or i32 %10792, %10529
  %10794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10795 = extractvalue %dx.types.CBufRet.f32 %10794, 3
  %10796 = bitcast float %10795 to i32
  %10797 = and i32 %10796, 255
  %10798 = uitofp i32 %10797 to float
  %10799 = fptoui float %10798 to i32
  %10800 = or i32 %10793, %10799
  %10801 = icmp ne i32 %10800, 0
  %10802 = or i1 %10791, %10801
  %10803 = extractvalue %dx.types.CBufRet.f32 %10794, 0
  %10804 = bitcast float %10803 to i32
  %10805 = icmp slt i32 %10804, 0
  %10806 = or i1 %10805, %10802
  br i1 %10806, label %10807, label %10815

; <label>:10807                                   ; preds = %10790
  %10808 = icmp eq i32 %10529, 14
  %10809 = select i1 %10808, float 0.000000e+00, float 1.000000e+00
  %10810 = icmp eq i32 %10783, 0
  br i1 %10810, label %10815, label %10811

; <label>:10811                                   ; preds = %10807
  %10812 = fmul fast float %10809, %10778
  %10813 = fmul fast float %10809, %10779
  %10814 = fmul fast float %10809, %10780
  br label %10815

; <label>:10815                                   ; preds = %10811, %10807, %10790
  %10816 = phi float [ %10812, %10811 ], [ %10778, %10807 ], [ %10778, %10790 ]
  %10817 = phi float [ %10813, %10811 ], [ %10779, %10807 ], [ %10779, %10790 ]
  %10818 = phi float [ %10814, %10811 ], [ %10780, %10807 ], [ %10780, %10790 ]
  %10819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10820 = extractvalue %dx.types.CBufRet.f32 %10819, 2
  %10821 = extractvalue %dx.types.CBufRet.f32 %10819, 3
  %10822 = fmul fast float %10820, %98
  %10823 = fmul fast float %10821, %99
  %10824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10825 = extractvalue %dx.types.CBufRet.f32 %10824, 0
  %10826 = fcmp fast oge float %10822, %10825
  %10827 = extractvalue %dx.types.CBufRet.f32 %10824, 2
  %10828 = fcmp fast ole float %10822, %10827
  %10829 = and i1 %10826, %10828
  %10830 = extractvalue %dx.types.CBufRet.f32 %10824, 1
  %10831 = fcmp fast oge float %10823, %10830
  %10832 = and i1 %10829, %10831
  %10833 = extractvalue %dx.types.CBufRet.f32 %10824, 3
  %10834 = fcmp fast ole float %10823, %10833
  %10835 = and i1 %10832, %10834
  %10836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10837 = extractvalue %dx.types.CBufRet.i32 %10836, 0
  %10838 = icmp ne i32 %10837, 0
  %10839 = and i1 %10838, %10835
  br i1 %10839, label %10840, label %11813

; <label>:10840                                   ; preds = %10815
  %10841 = icmp eq i32 %10837, 1
  br i1 %10841, label %10842, label %10881

; <label>:10842                                   ; preds = %10840
  %10843 = uitofp i32 %197 to float
  %10844 = fmul fast float %10843, 0x3FE3C6EF40000000
  %10845 = call float @dx.op.unary.f32(i32 22, float %10844)  ; Frc(value)
  %10846 = fadd fast float %10845, 0x3FE5555560000000
  %10847 = fadd fast float %10845, 0x3FD5555560000000
  %10848 = fsub fast float -0.000000e+00, %10845
  %10849 = fsub fast float -0.000000e+00, %10846
  %10850 = fsub fast float -0.000000e+00, %10847
  %10851 = fcmp fast oge float %10845, %10848
  %10852 = fcmp fast oge float %10846, %10849
  %10853 = fcmp fast oge float %10847, %10850
  %10854 = call float @dx.op.unary.f32(i32 6, float %10845)  ; FAbs(value)
  %10855 = call float @dx.op.unary.f32(i32 6, float %10846)  ; FAbs(value)
  %10856 = call float @dx.op.unary.f32(i32 6, float %10847)  ; FAbs(value)
  %10857 = call float @dx.op.unary.f32(i32 22, float %10854)  ; Frc(value)
  %10858 = call float @dx.op.unary.f32(i32 22, float %10855)  ; Frc(value)
  %10859 = call float @dx.op.unary.f32(i32 22, float %10856)  ; Frc(value)
  %10860 = fsub fast float -0.000000e+00, %10857
  %10861 = fsub fast float -0.000000e+00, %10858
  %10862 = fsub fast float -0.000000e+00, %10859
  %10863 = select i1 %10851, float %10857, float %10860
  %10864 = select i1 %10852, float %10858, float %10861
  %10865 = select i1 %10853, float %10859, float %10862
  %10866 = fmul fast float %10863, 6.000000e+00
  %10867 = fmul fast float %10864, 6.000000e+00
  %10868 = fmul fast float %10865, 6.000000e+00
  %10869 = fadd fast float %10866, -3.000000e+00
  %10870 = fadd fast float %10867, -3.000000e+00
  %10871 = fadd fast float %10868, -3.000000e+00
  %10872 = call float @dx.op.unary.f32(i32 6, float %10869)  ; FAbs(value)
  %10873 = call float @dx.op.unary.f32(i32 6, float %10870)  ; FAbs(value)
  %10874 = call float @dx.op.unary.f32(i32 6, float %10871)  ; FAbs(value)
  %10875 = fadd fast float %10872, -1.000000e+00
  %10876 = fadd fast float %10873, -1.000000e+00
  %10877 = fadd fast float %10874, -1.000000e+00
  %10878 = call float @dx.op.unary.f32(i32 7, float %10875)  ; Saturate(value)
  %10879 = call float @dx.op.unary.f32(i32 7, float %10876)  ; Saturate(value)
  %10880 = call float @dx.op.unary.f32(i32 7, float %10877)  ; Saturate(value)
  br label %11813

; <label>:10881                                   ; preds = %10840
  %10882 = icmp eq i32 %10837, 2
  br i1 %10882, label %10883, label %10887

; <label>:10883                                   ; preds = %10881
  %10884 = fmul fast float %10816, %72
  %10885 = fmul fast float %10817, %73
  %10886 = fmul fast float %10818, %74
  br label %11813

; <label>:10887                                   ; preds = %10881
  %10888 = icmp eq i32 %10837, 3
  %10889 = icmp eq i32 %10837, 26
  %10890 = or i1 %10888, %10889
  br i1 %10890, label %10891, label %10991

; <label>:10891                                   ; preds = %10887
  br i1 %10888, label %10892, label %10903

; <label>:10892                                   ; preds = %10891
  %10893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10894 = extractvalue %dx.types.CBufRet.f32 %10893, 3
  %10895 = fsub fast float %177, %10894
  %10896 = fmul fast float %10895, 0x3FD5555560000000
  %10897 = call float @dx.op.unary.f32(i32 7, float %10896)  ; Saturate(value)
  %10898 = fmul fast float %10897, 6.300000e+01
  %10899 = fptoui float %10898 to i32
  %10900 = uitofp i32 %10899 to float
  %10901 = fmul fast float %10900, 0x3FA8618620000000
  %10902 = fadd fast float %10901, %10894
  br label %10903

; <label>:10903                                   ; preds = %10892, %10891
  %10904 = phi float [ %10902, %10892 ], [ %72, %10891 ]
  %10905 = call float @dx.op.unary.f32(i32 27, float %10904)  ; Round_ni(value)
  %10906 = fadd fast float %10905, 1.000000e+00
  %10907 = call float @dx.op.unary.f32(i32 22, float %10904)  ; Frc(value)
  %10908 = fmul fast float %10905, 0x3FE3C6EF40000000
  %10909 = call float @dx.op.unary.f32(i32 22, float %10908)  ; Frc(value)
  %10910 = fadd fast float %10909, 0x3FE5555560000000
  %10911 = fadd fast float %10909, 0x3FD5555560000000
  %10912 = fsub fast float -0.000000e+00, %10909
  %10913 = fsub fast float -0.000000e+00, %10910
  %10914 = fsub fast float -0.000000e+00, %10911
  %10915 = fcmp fast oge float %10909, %10912
  %10916 = fcmp fast oge float %10910, %10913
  %10917 = fcmp fast oge float %10911, %10914
  %10918 = call float @dx.op.unary.f32(i32 6, float %10909)  ; FAbs(value)
  %10919 = call float @dx.op.unary.f32(i32 6, float %10910)  ; FAbs(value)
  %10920 = call float @dx.op.unary.f32(i32 6, float %10911)  ; FAbs(value)
  %10921 = call float @dx.op.unary.f32(i32 22, float %10918)  ; Frc(value)
  %10922 = call float @dx.op.unary.f32(i32 22, float %10919)  ; Frc(value)
  %10923 = call float @dx.op.unary.f32(i32 22, float %10920)  ; Frc(value)
  %10924 = fsub fast float -0.000000e+00, %10921
  %10925 = fsub fast float -0.000000e+00, %10922
  %10926 = fsub fast float -0.000000e+00, %10923
  %10927 = select i1 %10915, float %10921, float %10924
  %10928 = select i1 %10916, float %10922, float %10925
  %10929 = select i1 %10917, float %10923, float %10926
  %10930 = fmul fast float %10927, 6.000000e+00
  %10931 = fmul fast float %10928, 6.000000e+00
  %10932 = fmul fast float %10929, 6.000000e+00
  %10933 = fadd fast float %10930, -3.000000e+00
  %10934 = fadd fast float %10931, -3.000000e+00
  %10935 = fadd fast float %10932, -3.000000e+00
  %10936 = call float @dx.op.unary.f32(i32 6, float %10933)  ; FAbs(value)
  %10937 = call float @dx.op.unary.f32(i32 6, float %10934)  ; FAbs(value)
  %10938 = call float @dx.op.unary.f32(i32 6, float %10935)  ; FAbs(value)
  %10939 = fadd fast float %10936, -1.000000e+00
  %10940 = fadd fast float %10937, -1.000000e+00
  %10941 = fadd fast float %10938, -1.000000e+00
  %10942 = call float @dx.op.unary.f32(i32 7, float %10939)  ; Saturate(value)
  %10943 = call float @dx.op.unary.f32(i32 7, float %10940)  ; Saturate(value)
  %10944 = call float @dx.op.unary.f32(i32 7, float %10941)  ; Saturate(value)
  %10945 = fmul fast float %10906, 0x3FE3C6EF40000000
  %10946 = call float @dx.op.unary.f32(i32 22, float %10945)  ; Frc(value)
  %10947 = fadd fast float %10946, 0x3FE5555560000000
  %10948 = fadd fast float %10946, 0x3FD5555560000000
  %10949 = fsub fast float -0.000000e+00, %10946
  %10950 = fsub fast float -0.000000e+00, %10947
  %10951 = fsub fast float -0.000000e+00, %10948
  %10952 = fcmp fast oge float %10946, %10949
  %10953 = fcmp fast oge float %10947, %10950
  %10954 = fcmp fast oge float %10948, %10951
  %10955 = call float @dx.op.unary.f32(i32 6, float %10946)  ; FAbs(value)
  %10956 = call float @dx.op.unary.f32(i32 6, float %10947)  ; FAbs(value)
  %10957 = call float @dx.op.unary.f32(i32 6, float %10948)  ; FAbs(value)
  %10958 = call float @dx.op.unary.f32(i32 22, float %10955)  ; Frc(value)
  %10959 = call float @dx.op.unary.f32(i32 22, float %10956)  ; Frc(value)
  %10960 = call float @dx.op.unary.f32(i32 22, float %10957)  ; Frc(value)
  %10961 = fsub fast float -0.000000e+00, %10958
  %10962 = fsub fast float -0.000000e+00, %10959
  %10963 = fsub fast float -0.000000e+00, %10960
  %10964 = select i1 %10952, float %10958, float %10961
  %10965 = select i1 %10953, float %10959, float %10962
  %10966 = select i1 %10954, float %10960, float %10963
  %10967 = fmul fast float %10964, 6.000000e+00
  %10968 = fmul fast float %10965, 6.000000e+00
  %10969 = fmul fast float %10966, 6.000000e+00
  %10970 = fadd fast float %10967, -3.000000e+00
  %10971 = fadd fast float %10968, -3.000000e+00
  %10972 = fadd fast float %10969, -3.000000e+00
  %10973 = call float @dx.op.unary.f32(i32 6, float %10970)  ; FAbs(value)
  %10974 = call float @dx.op.unary.f32(i32 6, float %10971)  ; FAbs(value)
  %10975 = call float @dx.op.unary.f32(i32 6, float %10972)  ; FAbs(value)
  %10976 = fadd fast float %10973, -1.000000e+00
  %10977 = fadd fast float %10974, -1.000000e+00
  %10978 = fadd fast float %10975, -1.000000e+00
  %10979 = call float @dx.op.unary.f32(i32 7, float %10976)  ; Saturate(value)
  %10980 = call float @dx.op.unary.f32(i32 7, float %10977)  ; Saturate(value)
  %10981 = call float @dx.op.unary.f32(i32 7, float %10978)  ; Saturate(value)
  %10982 = fsub fast float %10979, %10942
  %10983 = fsub fast float %10980, %10943
  %10984 = fsub fast float %10981, %10944
  %10985 = fmul fast float %10982, %10907
  %10986 = fmul fast float %10983, %10907
  %10987 = fmul fast float %10984, %10907
  %10988 = fadd fast float %10985, %10942
  %10989 = fadd fast float %10986, %10943
  %10990 = fadd fast float %10987, %10944
  br label %11813

; <label>:10991                                   ; preds = %10887
  %10992 = and i32 %10837, -2
  %10993 = icmp eq i32 %10992, 4
  br i1 %10993, label %10994, label %11003

; <label>:10994                                   ; preds = %10991
  %10995 = uitofp i32 %197 to float
  %10996 = fmul fast float %10995, 0x3FE3C6EF40000000
  %10997 = call float @dx.op.unary.f32(i32 22, float %10996)  ; Frc(value)
  %10998 = fmul fast float %10997, 5.000000e-01
  %10999 = fadd fast float %10998, 5.000000e-01
  %11000 = fmul fast float %10999, %72
  %11001 = fmul fast float %10999, %73
  %11002 = fmul fast float %10999, %74
  br label %11813

; <label>:11003                                   ; preds = %10991
  %11004 = icmp eq i32 %10837, 6
  br i1 %11004, label %11813, label %11005

; <label>:11005                                   ; preds = %11003
  %11006 = icmp eq i32 %10837, 7
  br i1 %11006, label %11813, label %11007

; <label>:11007                                   ; preds = %11005
  %11008 = icmp eq i32 %10837, 8
  br i1 %11008, label %11813, label %11009

; <label>:11009                                   ; preds = %11007
  %11010 = icmp eq i32 %10837, 9
  br i1 %11010, label %11011, label %11023

; <label>:11011                                   ; preds = %11009
  %11012 = fcmp fast ogt float %350, 0.000000e+00
  %11013 = call float @dx.op.dot2.f32(i32 54, float %345, float %346, float %345, float %346)  ; Dot2(ax,ay,bx,by)
  %11014 = call float @dx.op.unary.f32(i32 25, float %11013)  ; Rsqrt(value)
  %11015 = fmul fast float %345, 5.000000e-01
  %11016 = fmul fast float %11015, %11014
  %11017 = fmul fast float %346, 5.000000e-01
  %11018 = fmul fast float %11017, %11014
  %11019 = fadd fast float %11016, 5.000000e-01
  %11020 = select i1 %11012, float %11019, float 5.000000e-01
  %11021 = fadd fast float %11018, 5.000000e-01
  %11022 = select i1 %11012, float %11021, float 5.000000e-01
  br label %11813

; <label>:11023                                   ; preds = %11009
  %11024 = icmp eq i32 %10837, 10
  br i1 %11024, label %11025, label %11027

; <label>:11025                                   ; preds = %11023
  %11026 = fmul fast float %350, 0x3F747AE140000000
  br label %11813

; <label>:11027                                   ; preds = %11023
  %11028 = icmp eq i32 %10837, 11
  br i1 %11028, label %11813, label %11029

; <label>:11029                                   ; preds = %11027
  %11030 = icmp eq i32 %10837, 12
  br i1 %11030, label %11813, label %11031

; <label>:11031                                   ; preds = %11029
  %11032 = icmp eq i32 %10837, 13
  br i1 %11032, label %11813, label %11033

; <label>:11033                                   ; preds = %11031
  %11034 = icmp eq i32 %10837, 14
  br i1 %11034, label %11813, label %11035

; <label>:11035                                   ; preds = %11033
  %11036 = icmp eq i32 %10837, 15
  br i1 %11036, label %11813, label %11037

; <label>:11037                                   ; preds = %11035
  %11038 = icmp eq i32 %10837, 16
  br i1 %11038, label %11813, label %11039

; <label>:11039                                   ; preds = %11037
  %11040 = icmp eq i32 %10837, 17
  br i1 %11040, label %11813, label %11041

; <label>:11041                                   ; preds = %11039
  %11042 = icmp eq i32 %10837, 18
  br i1 %11042, label %11813, label %11043

; <label>:11043                                   ; preds = %11041
  %11044 = icmp eq i32 %10837, 19
  br i1 %11044, label %11813, label %11045

; <label>:11045                                   ; preds = %11043
  %11046 = icmp eq i32 %10837, 20
  br i1 %11046, label %11047, label %11054

; <label>:11047                                   ; preds = %11045
  %11048 = fmul fast float %1871, 5.000000e-01
  %11049 = fmul fast float %1872, 5.000000e-01
  %11050 = fmul fast float %1873, 5.000000e-01
  %11051 = fadd fast float %11048, 5.000000e-01
  %11052 = fadd fast float %11049, 5.000000e-01
  %11053 = fadd fast float %11050, 5.000000e-01
  br label %11813

; <label>:11054                                   ; preds = %11045
  %11055 = and i32 %10837, -9
  %11056 = icmp eq i32 %11055, 21
  br i1 %11056, label %11813, label %11057

; <label>:11057                                   ; preds = %11054
  %11058 = icmp eq i32 %10837, 22
  %11059 = icmp eq i32 %10837, 38
  %11060 = or i1 %11058, %11059
  br i1 %11060, label %11061, label %11175

; <label>:11061                                   ; preds = %11057
  %11062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11063 = extractvalue %dx.types.CBufRet.f32 %11062, 0
  %11064 = extractvalue %dx.types.CBufRet.f32 %11062, 1
  %11065 = extractvalue %dx.types.CBufRet.f32 %11062, 2
  %11066 = fadd fast float %11063, %153
  %11067 = fadd fast float %11064, %154
  %11068 = fadd fast float %11065, %155
  %11069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11070 = extractvalue %dx.types.CBufRet.f32 %11069, 0
  %11071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11072 = extractvalue %dx.types.CBufRet.f32 %11071, 0
  %11073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11074 = extractvalue %dx.types.CBufRet.f32 %11073, 0
  %11075 = extractvalue %dx.types.CBufRet.f32 %11069, 1
  %11076 = extractvalue %dx.types.CBufRet.f32 %11071, 1
  %11077 = extractvalue %dx.types.CBufRet.f32 %11073, 1
  %11078 = extractvalue %dx.types.CBufRet.f32 %11069, 3
  %11079 = extractvalue %dx.types.CBufRet.f32 %11071, 3
  %11080 = extractvalue %dx.types.CBufRet.f32 %11073, 3
  %11081 = fadd fast float %11066, %11078
  %11082 = fadd fast float %11067, %11079
  %11083 = fadd fast float %11068, %11080
  %11084 = fmul fast float %11081, %11070
  %11085 = call float @dx.op.tertiary.f32(i32 46, float %11082, float %11072, float %11084)  ; FMad(a,b,c)
  %11086 = call float @dx.op.tertiary.f32(i32 46, float %11083, float %11074, float %11085)  ; FMad(a,b,c)
  %11087 = fmul fast float %11081, %11075
  %11088 = call float @dx.op.tertiary.f32(i32 46, float %11082, float %11076, float %11087)  ; FMad(a,b,c)
  %11089 = call float @dx.op.tertiary.f32(i32 46, float %11083, float %11077, float %11088)  ; FMad(a,b,c)
  %11090 = fsub fast float %11086, %11078
  %11091 = fsub fast float %11089, %11079
  %11092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %11093 = extractvalue %dx.types.CBufRet.f32 %11092, 0
  %11094 = extractvalue %dx.types.CBufRet.f32 %11092, 1
  %11095 = fsub fast float %11090, %11093
  %11096 = fsub fast float %11091, %11094
  %11097 = fmul fast float %11095, %11095
  %11098 = fmul fast float %11096, %11096
  %11099 = fadd fast float %11097, %11098
  %11100 = call float @dx.op.unary.f32(i32 24, float %11099)  ; Sqrt(value)
  %11101 = extractvalue %dx.types.CBufRet.f32 %11092, 2
  %11102 = fcmp fast olt float %11100, %11101
  br i1 %11102, label %11103, label %11813

; <label>:11103                                   ; preds = %11061
  %11104 = fadd fast float %11095, %11101
  %11105 = fadd fast float %11096, %11101
  %11106 = extractvalue %dx.types.CBufRet.f32 %11092, 3
  %11107 = fmul fast float %11104, %11106
  %11108 = fmul fast float %11105, %11106
  %11109 = call float @dx.op.unary.f32(i32 7, float %11107)  ; Saturate(value)
  %11110 = call float @dx.op.unary.f32(i32 7, float %11108)  ; Saturate(value)
  %11111 = fsub fast float 1.000000e+00, %11109
  %11112 = fsub fast float 1.000000e+00, %11110
  %11113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %61, float %11111, float %11112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11114 = extractvalue %dx.types.ResRet.f32 %11113, 0
  %11115 = fcmp fast ugt float %11114, 0.000000e+00
  br i1 %11115, label %11116, label %11813

; <label>:11116                                   ; preds = %11103
  br i1 %11058, label %11117, label %11122

; <label>:11117                                   ; preds = %11116
  %11118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %61, float %11111, float %11112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11119 = extractvalue %dx.types.ResRet.f32 %11118, 0
  %11120 = extractvalue %dx.types.ResRet.f32 %11118, 1
  %11121 = extractvalue %dx.types.ResRet.f32 %11118, 2
  br label %11813

; <label>:11122                                   ; preds = %11116
  %11123 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %11124 = extractvalue %dx.types.Dimensions %11123, 0
  %11125 = sitofp i32 %11124 to float
  %11126 = extractvalue %dx.types.Dimensions %11123, 1
  %11127 = sitofp i32 %11126 to float
  %11128 = fmul fast float %11125, %11111
  %11129 = fmul fast float %11127, %11112
  %11130 = call float @dx.op.unary.f32(i32 27, float %11128)  ; Round_ni(value)
  %11131 = call float @dx.op.unary.f32(i32 27, float %11129)  ; Round_ni(value)
  %11132 = fptoui float %11125 to i32
  %11133 = uitofp i32 %11132 to float
  %11134 = fmul fast float %11133, %11131
  %11135 = fadd fast float %11134, %11130
  %11136 = fptoui float %11135 to i32
  %11137 = uitofp i32 %11136 to float
  %11138 = fmul fast float %11137, 0x3FE3C6EF40000000
  %11139 = call float @dx.op.unary.f32(i32 22, float %11138)  ; Frc(value)
  %11140 = fadd fast float %11139, 0x3FE5555560000000
  %11141 = fadd fast float %11139, 0x3FD5555560000000
  %11142 = fsub fast float -0.000000e+00, %11139
  %11143 = fsub fast float -0.000000e+00, %11140
  %11144 = fsub fast float -0.000000e+00, %11141
  %11145 = fcmp fast oge float %11139, %11142
  %11146 = fcmp fast oge float %11140, %11143
  %11147 = fcmp fast oge float %11141, %11144
  %11148 = call float @dx.op.unary.f32(i32 6, float %11139)  ; FAbs(value)
  %11149 = call float @dx.op.unary.f32(i32 6, float %11140)  ; FAbs(value)
  %11150 = call float @dx.op.unary.f32(i32 6, float %11141)  ; FAbs(value)
  %11151 = call float @dx.op.unary.f32(i32 22, float %11148)  ; Frc(value)
  %11152 = call float @dx.op.unary.f32(i32 22, float %11149)  ; Frc(value)
  %11153 = call float @dx.op.unary.f32(i32 22, float %11150)  ; Frc(value)
  %11154 = fsub fast float -0.000000e+00, %11151
  %11155 = fsub fast float -0.000000e+00, %11152
  %11156 = fsub fast float -0.000000e+00, %11153
  %11157 = select i1 %11145, float %11151, float %11154
  %11158 = select i1 %11146, float %11152, float %11155
  %11159 = select i1 %11147, float %11153, float %11156
  %11160 = fmul fast float %11157, 6.000000e+00
  %11161 = fmul fast float %11158, 6.000000e+00
  %11162 = fmul fast float %11159, 6.000000e+00
  %11163 = fadd fast float %11160, -3.000000e+00
  %11164 = fadd fast float %11161, -3.000000e+00
  %11165 = fadd fast float %11162, -3.000000e+00
  %11166 = call float @dx.op.unary.f32(i32 6, float %11163)  ; FAbs(value)
  %11167 = call float @dx.op.unary.f32(i32 6, float %11164)  ; FAbs(value)
  %11168 = call float @dx.op.unary.f32(i32 6, float %11165)  ; FAbs(value)
  %11169 = fadd fast float %11166, -1.000000e+00
  %11170 = fadd fast float %11167, -1.000000e+00
  %11171 = fadd fast float %11168, -1.000000e+00
  %11172 = call float @dx.op.unary.f32(i32 7, float %11169)  ; Saturate(value)
  %11173 = call float @dx.op.unary.f32(i32 7, float %11170)  ; Saturate(value)
  %11174 = call float @dx.op.unary.f32(i32 7, float %11171)  ; Saturate(value)
  br label %11813

; <label>:11175                                   ; preds = %11057
  %11176 = icmp eq i32 %10837, 39
  br i1 %11176, label %11177, label %11281

; <label>:11177                                   ; preds = %11175
  %11178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11179 = extractvalue %dx.types.CBufRet.f32 %11178, 0
  %11180 = extractvalue %dx.types.CBufRet.f32 %11178, 1
  %11181 = extractvalue %dx.types.CBufRet.f32 %11178, 2
  %11182 = fadd fast float %11179, %153
  %11183 = fadd fast float %11180, %154
  %11184 = fadd fast float %11181, %155
  %11185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11186 = extractvalue %dx.types.CBufRet.f32 %11185, 0
  %11187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11188 = extractvalue %dx.types.CBufRet.f32 %11187, 0
  %11189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11190 = extractvalue %dx.types.CBufRet.f32 %11189, 0
  %11191 = extractvalue %dx.types.CBufRet.f32 %11185, 1
  %11192 = extractvalue %dx.types.CBufRet.f32 %11187, 1
  %11193 = extractvalue %dx.types.CBufRet.f32 %11189, 1
  %11194 = extractvalue %dx.types.CBufRet.f32 %11185, 3
  %11195 = extractvalue %dx.types.CBufRet.f32 %11187, 3
  %11196 = extractvalue %dx.types.CBufRet.f32 %11189, 3
  %11197 = fadd fast float %11182, %11194
  %11198 = fadd fast float %11183, %11195
  %11199 = fadd fast float %11184, %11196
  %11200 = fmul fast float %11197, %11186
  %11201 = call float @dx.op.tertiary.f32(i32 46, float %11198, float %11188, float %11200)  ; FMad(a,b,c)
  %11202 = call float @dx.op.tertiary.f32(i32 46, float %11199, float %11190, float %11201)  ; FMad(a,b,c)
  %11203 = fmul fast float %11197, %11191
  %11204 = call float @dx.op.tertiary.f32(i32 46, float %11198, float %11192, float %11203)  ; FMad(a,b,c)
  %11205 = call float @dx.op.tertiary.f32(i32 46, float %11199, float %11193, float %11204)  ; FMad(a,b,c)
  %11206 = fsub fast float %11202, %11194
  %11207 = fsub fast float %11205, %11195
  %11208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %11209 = extractvalue %dx.types.CBufRet.f32 %11208, 0
  %11210 = extractvalue %dx.types.CBufRet.f32 %11208, 1
  %11211 = fsub fast float %11206, %11209
  %11212 = fsub fast float %11207, %11210
  %11213 = fmul fast float %11211, %11211
  %11214 = fmul fast float %11212, %11212
  %11215 = fadd fast float %11213, %11214
  %11216 = call float @dx.op.unary.f32(i32 24, float %11215)  ; Sqrt(value)
  %11217 = extractvalue %dx.types.CBufRet.f32 %11208, 2
  %11218 = fcmp fast olt float %11216, %11217
  br i1 %11218, label %11219, label %11813

; <label>:11219                                   ; preds = %11177
  %11220 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %51, i32 0)  ; GetDimensions(handle,mipLevel)
  %11221 = extractvalue %dx.types.Dimensions %11220, 0
  %11222 = sitofp i32 %11221 to float
  %11223 = extractvalue %dx.types.Dimensions %11220, 1
  %11224 = sitofp i32 %11223 to float
  %11225 = fadd fast float %11211, %11217
  %11226 = fadd fast float %11212, %11217
  %11227 = extractvalue %dx.types.CBufRet.f32 %11208, 3
  %11228 = fmul fast float %11225, %11227
  %11229 = fmul fast float %11226, %11227
  %11230 = call float @dx.op.unary.f32(i32 7, float %11228)  ; Saturate(value)
  %11231 = call float @dx.op.unary.f32(i32 7, float %11229)  ; Saturate(value)
  %11232 = fsub fast float 1.000000e+00, %11230
  %11233 = fsub fast float 1.000000e+00, %11231
  %11234 = fmul fast float %11232, %11222
  %11235 = fmul fast float %11233, %11224
  %11236 = call float @dx.op.unary.f32(i32 27, float %11234)  ; Round_ni(value)
  %11237 = call float @dx.op.unary.f32(i32 27, float %11235)  ; Round_ni(value)
  %11238 = fptoui float %11222 to i32
  %11239 = uitofp i32 %11238 to float
  %11240 = fmul fast float %11237, %11239
  %11241 = fadd fast float %11240, %11236
  %11242 = fptoui float %11241 to i32
  %11243 = uitofp i32 %11242 to float
  %11244 = fmul fast float %11243, 0x3FE3C6EF40000000
  %11245 = call float @dx.op.unary.f32(i32 22, float %11244)  ; Frc(value)
  %11246 = fadd fast float %11245, 0x3FE5555560000000
  %11247 = fadd fast float %11245, 0x3FD5555560000000
  %11248 = fsub fast float -0.000000e+00, %11245
  %11249 = fsub fast float -0.000000e+00, %11246
  %11250 = fsub fast float -0.000000e+00, %11247
  %11251 = fcmp fast oge float %11245, %11248
  %11252 = fcmp fast oge float %11246, %11249
  %11253 = fcmp fast oge float %11247, %11250
  %11254 = call float @dx.op.unary.f32(i32 6, float %11245)  ; FAbs(value)
  %11255 = call float @dx.op.unary.f32(i32 6, float %11246)  ; FAbs(value)
  %11256 = call float @dx.op.unary.f32(i32 6, float %11247)  ; FAbs(value)
  %11257 = call float @dx.op.unary.f32(i32 22, float %11254)  ; Frc(value)
  %11258 = call float @dx.op.unary.f32(i32 22, float %11255)  ; Frc(value)
  %11259 = call float @dx.op.unary.f32(i32 22, float %11256)  ; Frc(value)
  %11260 = fsub fast float -0.000000e+00, %11257
  %11261 = fsub fast float -0.000000e+00, %11258
  %11262 = fsub fast float -0.000000e+00, %11259
  %11263 = select i1 %11251, float %11257, float %11260
  %11264 = select i1 %11252, float %11258, float %11261
  %11265 = select i1 %11253, float %11259, float %11262
  %11266 = fmul fast float %11263, 6.000000e+00
  %11267 = fmul fast float %11264, 6.000000e+00
  %11268 = fmul fast float %11265, 6.000000e+00
  %11269 = fadd fast float %11266, -3.000000e+00
  %11270 = fadd fast float %11267, -3.000000e+00
  %11271 = fadd fast float %11268, -3.000000e+00
  %11272 = call float @dx.op.unary.f32(i32 6, float %11269)  ; FAbs(value)
  %11273 = call float @dx.op.unary.f32(i32 6, float %11270)  ; FAbs(value)
  %11274 = call float @dx.op.unary.f32(i32 6, float %11271)  ; FAbs(value)
  %11275 = fadd fast float %11272, -1.000000e+00
  %11276 = fadd fast float %11273, -1.000000e+00
  %11277 = fadd fast float %11274, -1.000000e+00
  %11278 = call float @dx.op.unary.f32(i32 7, float %11275)  ; Saturate(value)
  %11279 = call float @dx.op.unary.f32(i32 7, float %11276)  ; Saturate(value)
  %11280 = call float @dx.op.unary.f32(i32 7, float %11277)  ; Saturate(value)
  br label %11813

; <label>:11281                                   ; preds = %11175
  %11282 = icmp eq i32 %10837, 23
  br i1 %11282, label %11813, label %11283

; <label>:11283                                   ; preds = %11281
  %11284 = icmp eq i32 %10837, 24
  br i1 %11284, label %11285, label %11311

; <label>:11285                                   ; preds = %11283
  %11286 = and i32 %382, 255
  %11287 = uitofp i32 %11286 to float
  %11288 = fptoui float %11287 to i32
  %11289 = uitofp i32 %11288 to float
  %11290 = fadd fast float %11289, -4.000000e+00
  %11291 = fmul fast float %11290, 0x3FB5555560000000
  %11292 = call float @dx.op.unary.f32(i32 7, float %11291)  ; Saturate(value)
  %11293 = icmp eq i32 %11288, 0
  %11294 = select i1 %11293, float 0.000000e+00, float %11292
  %11295 = icmp ult i32 %11288, 2
  %11296 = select i1 %11295, float 0.000000e+00, float %11292
  %11297 = add i32 %11288, -1
  %11298 = icmp ult i32 %11297, 2
  %11299 = select i1 %11298, float 1.000000e+00, float %11294
  %11300 = icmp ult i32 %11288, 4
  %11301 = select i1 %11300, float 0.000000e+00, float 1.000000e+00
  %11302 = and i32 %11288, -2
  %11303 = icmp eq i32 %11302, 2
  %11304 = icmp eq i32 %11288, 4
  %11305 = select i1 %11304, float 1.000000e+00, float %11301
  %11306 = or i1 %11304, %11303
  %11307 = select i1 %11306, float 1.000000e+00, float %11296
  %11308 = add i32 %11288, -3
  %11309 = icmp ult i32 %11308, 2
  %11310 = select i1 %11309, float 0.000000e+00, float %11299
  br label %11813

; <label>:11311                                   ; preds = %11283
  %11312 = icmp eq i32 %10837, 25
  br i1 %11312, label %11313, label %11339

; <label>:11313                                   ; preds = %11311
  %11314 = and i32 %1879, 255
  %11315 = uitofp i32 %11314 to float
  %11316 = fptoui float %11315 to i32
  %11317 = uitofp i32 %11316 to float
  %11318 = fadd fast float %11317, -4.000000e+00
  %11319 = fmul fast float %11318, 0x3FB5555560000000
  %11320 = call float @dx.op.unary.f32(i32 7, float %11319)  ; Saturate(value)
  %11321 = icmp eq i32 %11316, 0
  %11322 = select i1 %11321, float 0.000000e+00, float %11320
  %11323 = icmp ult i32 %11316, 2
  %11324 = select i1 %11323, float 0.000000e+00, float %11320
  %11325 = add i32 %11316, -1
  %11326 = icmp ult i32 %11325, 2
  %11327 = select i1 %11326, float 1.000000e+00, float %11322
  %11328 = icmp ult i32 %11316, 4
  %11329 = select i1 %11328, float 0.000000e+00, float 1.000000e+00
  %11330 = and i32 %11316, -2
  %11331 = icmp eq i32 %11330, 2
  %11332 = icmp eq i32 %11316, 4
  %11333 = select i1 %11332, float 1.000000e+00, float %11329
  %11334 = or i1 %11332, %11331
  %11335 = select i1 %11334, float 1.000000e+00, float %11324
  %11336 = add i32 %11316, -3
  %11337 = icmp ult i32 %11336, 2
  %11338 = select i1 %11337, float 0.000000e+00, float %11327
  br label %11813

; <label>:11339                                   ; preds = %11311
  %11340 = icmp eq i32 %10837, 27
  br i1 %11340, label %11341, label %11396

; <label>:11341                                   ; preds = %11339
  %11342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11343 = extractvalue %dx.types.CBufRet.f32 %11342, 2
  %11344 = fptoui float %11343 to i32
  %11345 = fptoui float %177 to i32
  %11346 = and i32 %11345, 31
  %11347 = lshr i32 %11344, %11346
  %11348 = uitofp i32 %11347 to float
  %11349 = fmul fast float %11348, %79
  %11350 = fmul fast float %11348, %80
  %11351 = call float @dx.op.unary.f32(i32 27, float %11349)  ; Round_ni(value)
  %11352 = call float @dx.op.unary.f32(i32 27, float %11350)  ; Round_ni(value)
  %11353 = fptoui float %11351 to i32
  %11354 = fptoui float %11352 to i32
  %11355 = fptoui float %11348 to i32
  %11356 = mul i32 %11355, %11354
  %11357 = add i32 %11356, %11353
  %11358 = uitofp i32 %11357 to float
  %11359 = fmul fast float %11358, 0x3FE3C6EF40000000
  %11360 = call float @dx.op.unary.f32(i32 22, float %11359)  ; Frc(value)
  %11361 = fadd fast float %11360, 0x3FE5555560000000
  %11362 = fadd fast float %11360, 0x3FD5555560000000
  %11363 = fsub fast float -0.000000e+00, %11360
  %11364 = fsub fast float -0.000000e+00, %11361
  %11365 = fsub fast float -0.000000e+00, %11362
  %11366 = fcmp fast oge float %11360, %11363
  %11367 = fcmp fast oge float %11361, %11364
  %11368 = fcmp fast oge float %11362, %11365
  %11369 = call float @dx.op.unary.f32(i32 6, float %11360)  ; FAbs(value)
  %11370 = call float @dx.op.unary.f32(i32 6, float %11361)  ; FAbs(value)
  %11371 = call float @dx.op.unary.f32(i32 6, float %11362)  ; FAbs(value)
  %11372 = call float @dx.op.unary.f32(i32 22, float %11369)  ; Frc(value)
  %11373 = call float @dx.op.unary.f32(i32 22, float %11370)  ; Frc(value)
  %11374 = call float @dx.op.unary.f32(i32 22, float %11371)  ; Frc(value)
  %11375 = fsub fast float -0.000000e+00, %11372
  %11376 = fsub fast float -0.000000e+00, %11373
  %11377 = fsub fast float -0.000000e+00, %11374
  %11378 = select i1 %11366, float %11372, float %11375
  %11379 = select i1 %11367, float %11373, float %11376
  %11380 = select i1 %11368, float %11374, float %11377
  %11381 = fmul fast float %11378, 6.000000e+00
  %11382 = fmul fast float %11379, 6.000000e+00
  %11383 = fmul fast float %11380, 6.000000e+00
  %11384 = fadd fast float %11381, -3.000000e+00
  %11385 = fadd fast float %11382, -3.000000e+00
  %11386 = fadd fast float %11383, -3.000000e+00
  %11387 = call float @dx.op.unary.f32(i32 6, float %11384)  ; FAbs(value)
  %11388 = call float @dx.op.unary.f32(i32 6, float %11385)  ; FAbs(value)
  %11389 = call float @dx.op.unary.f32(i32 6, float %11386)  ; FAbs(value)
  %11390 = fadd fast float %11387, -1.000000e+00
  %11391 = fadd fast float %11388, -1.000000e+00
  %11392 = fadd fast float %11389, -1.000000e+00
  %11393 = call float @dx.op.unary.f32(i32 7, float %11390)  ; Saturate(value)
  %11394 = call float @dx.op.unary.f32(i32 7, float %11391)  ; Saturate(value)
  %11395 = call float @dx.op.unary.f32(i32 7, float %11392)  ; Saturate(value)
  br label %11813

; <label>:11396                                   ; preds = %11339
  %11397 = icmp eq i32 %10837, 30
  br i1 %11397, label %11398, label %11438

; <label>:11398                                   ; preds = %11396
  %11399 = fcmp fast olt float %432, 0.000000e+00
  br i1 %11399, label %11813, label %11400

; <label>:11400                                   ; preds = %11398
  %11401 = fmul fast float %432, 0x3FE3C6EF40000000
  %11402 = call float @dx.op.unary.f32(i32 22, float %11401)  ; Frc(value)
  %11403 = fadd fast float %11402, 0x3FE5555560000000
  %11404 = fadd fast float %11402, 0x3FD5555560000000
  %11405 = fsub fast float -0.000000e+00, %11402
  %11406 = fsub fast float -0.000000e+00, %11403
  %11407 = fsub fast float -0.000000e+00, %11404
  %11408 = fcmp fast oge float %11402, %11405
  %11409 = fcmp fast oge float %11403, %11406
  %11410 = fcmp fast oge float %11404, %11407
  %11411 = call float @dx.op.unary.f32(i32 6, float %11402)  ; FAbs(value)
  %11412 = call float @dx.op.unary.f32(i32 6, float %11403)  ; FAbs(value)
  %11413 = call float @dx.op.unary.f32(i32 6, float %11404)  ; FAbs(value)
  %11414 = call float @dx.op.unary.f32(i32 22, float %11411)  ; Frc(value)
  %11415 = call float @dx.op.unary.f32(i32 22, float %11412)  ; Frc(value)
  %11416 = call float @dx.op.unary.f32(i32 22, float %11413)  ; Frc(value)
  %11417 = fsub fast float -0.000000e+00, %11414
  %11418 = fsub fast float -0.000000e+00, %11415
  %11419 = fsub fast float -0.000000e+00, %11416
  %11420 = select i1 %11408, float %11414, float %11417
  %11421 = select i1 %11409, float %11415, float %11418
  %11422 = select i1 %11410, float %11416, float %11419
  %11423 = fmul fast float %11420, 6.000000e+00
  %11424 = fmul fast float %11421, 6.000000e+00
  %11425 = fmul fast float %11422, 6.000000e+00
  %11426 = fadd fast float %11423, -3.000000e+00
  %11427 = fadd fast float %11424, -3.000000e+00
  %11428 = fadd fast float %11425, -3.000000e+00
  %11429 = call float @dx.op.unary.f32(i32 6, float %11426)  ; FAbs(value)
  %11430 = call float @dx.op.unary.f32(i32 6, float %11427)  ; FAbs(value)
  %11431 = call float @dx.op.unary.f32(i32 6, float %11428)  ; FAbs(value)
  %11432 = fadd fast float %11429, -1.000000e+00
  %11433 = fadd fast float %11430, -1.000000e+00
  %11434 = fadd fast float %11431, -1.000000e+00
  %11435 = call float @dx.op.unary.f32(i32 7, float %11432)  ; Saturate(value)
  %11436 = call float @dx.op.unary.f32(i32 7, float %11433)  ; Saturate(value)
  %11437 = call float @dx.op.unary.f32(i32 7, float %11434)  ; Saturate(value)
  br label %11813

; <label>:11438                                   ; preds = %11396
  %11439 = add i32 %10837, -31
  %11440 = icmp ult i32 %11439, 2
  br i1 %11440, label %11441, label %11449

; <label>:11441                                   ; preds = %11438
  %11442 = fcmp fast olt float %433, 0.000000e+00
  %11443 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %11444 = fmul fast float %11443, 5.000000e-01
  %11445 = call float @dx.op.unary.f32(i32 7, float %11444)  ; Saturate(value)
  %11446 = select i1 %11442, float 0.000000e+00, float %11445
  %11447 = select i1 %11442, float %11445, float 0.000000e+00
  %11448 = fadd fast float %11445, 5.000000e-01
  br label %11813

; <label>:11449                                   ; preds = %11438
  %11450 = icmp eq i32 %10837, 36
  br i1 %11450, label %11451, label %11483

; <label>:11451                                   ; preds = %11449
  %11452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11453 = extractvalue %dx.types.CBufRet.i32 %11452, 0
  %11454 = and i32 %11453, 2048
  %11455 = icmp ne i32 %11454, 0
  %11456 = call float @dx.op.binary.f32(i32 35, float %2513, float %2514)  ; FMax(a,b)
  %11457 = call float @dx.op.binary.f32(i32 35, float %2512, float %11456)  ; FMax(a,b)
  %11458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11459 = extractvalue %dx.types.CBufRet.f32 %11458, 1
  %11460 = fcmp fast oge float %11457, %11459
  %11461 = and i1 %11455, %11460
  br i1 %11461, label %11462, label %11468

; <label>:11462                                   ; preds = %11451
  %11463 = fsub fast float 1.000000e+00, %10816
  %11464 = fmul fast float %11463, 5.000000e-01
  %11465 = fadd fast float %11464, %10816
  %11466 = fmul fast float %10817, 5.000000e-01
  %11467 = fmul fast float %10818, 5.000000e-01
  br label %11813

; <label>:11468                                   ; preds = %11451
  %11469 = call float @dx.op.dot3.f32(i32 55, float %2611, float %2612, float %2613, float %2425, float %2426, float %2427)  ; Dot3(ax,ay,az,bx,by,bz)
  %11470 = and i32 %11453, 1024
  %11471 = icmp ne i32 %11470, 0
  %11472 = extractvalue %dx.types.CBufRet.f32 %11458, 2
  %11473 = fcmp fast ole float %11469, %11472
  %11474 = and i1 %11471, %11473
  br i1 %11474, label %11475, label %11813

; <label>:11475                                   ; preds = %11468
  %11476 = fsub fast float 1.000000e+00, %10816
  %11477 = fsub fast float 1.000000e+00, %10817
  %11478 = fmul fast float %11476, 5.000000e-01
  %11479 = fmul fast float %11477, 5.000000e-01
  %11480 = fadd fast float %11478, %10816
  %11481 = fadd fast float %11479, %10817
  %11482 = fmul fast float %10818, 5.000000e-01
  br label %11813

; <label>:11483                                   ; preds = %11449
  %11484 = icmp eq i32 %10837, 40
  br i1 %11484, label %11485, label %11722

; <label>:11485                                   ; preds = %11483
  %11486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %11487 = extractvalue %dx.types.CBufRet.f32 %11486, 0
  %11488 = fcmp fast ogt float %2496, %11487
  %11489 = zext i1 %11488 to i32
  %11490 = extractvalue %dx.types.CBufRet.f32 %11486, 1
  %11491 = fcmp fast ogt float %2496, %11490
  %11492 = zext i1 %11491 to i32
  %11493 = add nuw nsw i32 %11492, %11489
  %11494 = extractvalue %dx.types.CBufRet.f32 %11486, 2
  %11495 = fcmp fast ogt float %2496, %11494
  %11496 = zext i1 %11495 to i32
  %11497 = add nuw nsw i32 %11493, %11496
  %11498 = icmp ult i32 %11497, 3
  %11499 = zext i1 %11498 to i32
  %11500 = shl nuw nsw i32 %11497, 2
  %11501 = add nuw nsw i32 %11500, 48
  %11502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11501)  ; CBufferLoadLegacy(handle,regIndex)
  %11503 = extractvalue %dx.types.CBufRet.f32 %11502, 1
  %11504 = fcmp fast ogt float %2496, %11503
  %11505 = zext i1 %11504 to i32
  %11506 = or i32 %11500, 1
  %11507 = add nuw nsw i32 %11506, 48
  %11508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11507)  ; CBufferLoadLegacy(handle,regIndex)
  %11509 = extractvalue %dx.types.CBufRet.f32 %11508, 1
  %11510 = fcmp fast ogt float %2496, %11509
  %11511 = zext i1 %11510 to i32
  %11512 = add nuw nsw i32 %11511, %11505
  %11513 = or i32 %11500, 2
  %11514 = add nuw nsw i32 %11513, 48
  %11515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11514)  ; CBufferLoadLegacy(handle,regIndex)
  %11516 = extractvalue %dx.types.CBufRet.f32 %11515, 1
  %11517 = fcmp fast ogt float %2496, %11516
  %11518 = zext i1 %11517 to i32
  %11519 = add nuw nsw i32 %11512, %11518
  %11520 = call i32 @dx.op.binary.i32(i32 40, i32 %11519, i32 3)  ; UMin(a,b)
  %11521 = add i32 %11500, %11520
  %11522 = call i32 @dx.op.binary.i32(i32 40, i32 %11521, i32 12)  ; UMin(a,b)
  %11523 = add i32 %11522, 48
  %11524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11523)  ; CBufferLoadLegacy(handle,regIndex)
  %11525 = extractvalue %dx.types.CBufRet.f32 %11524, 0
  %11526 = fcmp fast oge float %2496, %11525
  %11527 = zext i1 %11526 to i32
  %11528 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %11499)  ; UMin(a,b)
  %11529 = call i32 @dx.op.binary.i32(i32 40, i32 %11527, i32 %11528)  ; UMin(a,b)
  %11530 = fmul fast float %10827, 7.500000e-01
  %11531 = fadd fast float %11530, %10825
  %11532 = fcmp fast ult float %10822, %11531
  br i1 %11532, label %11572, label %11533

; <label>:11533                                   ; preds = %11485
  %11534 = uitofp i32 %11522 to float
  %11535 = fmul fast float %11534, 0x3FE3C6EF40000000
  %11536 = call float @dx.op.unary.f32(i32 22, float %11535)  ; Frc(value)
  %11537 = fadd fast float %11536, 0x3FE5555560000000
  %11538 = fadd fast float %11536, 0x3FD5555560000000
  %11539 = fsub fast float -0.000000e+00, %11536
  %11540 = fsub fast float -0.000000e+00, %11537
  %11541 = fsub fast float -0.000000e+00, %11538
  %11542 = fcmp fast oge float %11536, %11539
  %11543 = fcmp fast oge float %11537, %11540
  %11544 = fcmp fast oge float %11538, %11541
  %11545 = call float @dx.op.unary.f32(i32 6, float %11536)  ; FAbs(value)
  %11546 = call float @dx.op.unary.f32(i32 6, float %11537)  ; FAbs(value)
  %11547 = call float @dx.op.unary.f32(i32 6, float %11538)  ; FAbs(value)
  %11548 = call float @dx.op.unary.f32(i32 22, float %11545)  ; Frc(value)
  %11549 = call float @dx.op.unary.f32(i32 22, float %11546)  ; Frc(value)
  %11550 = call float @dx.op.unary.f32(i32 22, float %11547)  ; Frc(value)
  %11551 = fsub fast float -0.000000e+00, %11548
  %11552 = fsub fast float -0.000000e+00, %11549
  %11553 = fsub fast float -0.000000e+00, %11550
  %11554 = select i1 %11542, float %11548, float %11551
  %11555 = select i1 %11543, float %11549, float %11552
  %11556 = select i1 %11544, float %11550, float %11553
  %11557 = fmul fast float %11554, 6.000000e+00
  %11558 = fmul fast float %11555, 6.000000e+00
  %11559 = fmul fast float %11556, 6.000000e+00
  %11560 = fadd fast float %11557, -3.000000e+00
  %11561 = fadd fast float %11558, -3.000000e+00
  %11562 = fadd fast float %11559, -3.000000e+00
  %11563 = call float @dx.op.unary.f32(i32 6, float %11560)  ; FAbs(value)
  %11564 = call float @dx.op.unary.f32(i32 6, float %11561)  ; FAbs(value)
  %11565 = call float @dx.op.unary.f32(i32 6, float %11562)  ; FAbs(value)
  %11566 = fadd fast float %11563, -1.000000e+00
  %11567 = fadd fast float %11564, -1.000000e+00
  %11568 = fadd fast float %11565, -1.000000e+00
  %11569 = call float @dx.op.unary.f32(i32 7, float %11566)  ; Saturate(value)
  %11570 = call float @dx.op.unary.f32(i32 7, float %11567)  ; Saturate(value)
  %11571 = call float @dx.op.unary.f32(i32 7, float %11568)  ; Saturate(value)
  br label %11709

; <label>:11572                                   ; preds = %11485
  %11573 = fmul fast float %10827, 5.000000e-01
  %11574 = fadd fast float %11573, %10825
  %11575 = fcmp fast ult float %10822, %11574
  br i1 %11575, label %11602, label %11576

; <label>:11576                                   ; preds = %11572
  %11577 = add i32 %11529, 4
  %11578 = icmp eq i32 %11577, 0
  br i1 %11578, label %11709, label %11579

; <label>:11579                                   ; preds = %11576
  br label %11580

; <label>:11580                                   ; preds = %11580, %11579
  %11581 = phi float [ %11597, %11580 ], [ 0.000000e+00, %11579 ]
  %11582 = phi i32 [ %11598, %11580 ], [ 0, %11579 ]
  %11583 = add i32 %11522, 32
  %11584 = add i32 %11583, %11582
  %11585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11584)  ; CBufferLoadLegacy(handle,regIndex)
  %11586 = extractvalue %dx.types.CBufRet.f32 %11585, 0
  %11587 = extractvalue %dx.types.CBufRet.f32 %11585, 1
  %11588 = extractvalue %dx.types.CBufRet.f32 %11585, 2
  %11589 = extractvalue %dx.types.CBufRet.f32 %11585, 3
  %11590 = fmul fast float %11586, %2496
  %11591 = fadd fast float %11590, %11587
  %11592 = call float @dx.op.unary.f32(i32 7, float %11591)  ; Saturate(value)
  %11593 = fmul fast float %11588, %2496
  %11594 = fadd fast float %11593, %11589
  %11595 = call float @dx.op.unary.f32(i32 7, float %11594)  ; Saturate(value)
  %11596 = call float @dx.op.binary.f32(i32 36, float %11592, float %11595)  ; FMin(a,b)
  %11597 = fadd fast float %11596, %11581
  %11598 = add nuw i32 %11582, 1
  %11599 = icmp eq i32 %11598, %11577
  br i1 %11599, label %11600, label %11580

; <label>:11600                                   ; preds = %11580
  %11601 = fmul float %11597, 2.500000e-01
  br label %11709

; <label>:11602                                   ; preds = %11572
  %11603 = fmul fast float %10827, 2.500000e-01
  %11604 = fadd fast float %11603, %10825
  %11605 = fcmp fast ult float %10822, %11604
  br i1 %11605, label %11705, label %11606

; <label>:11606                                   ; preds = %11602
  %11607 = add i32 %11522, 32
  %11608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11607)  ; CBufferLoadLegacy(handle,regIndex)
  %11609 = extractvalue %dx.types.CBufRet.f32 %11608, 0
  %11610 = extractvalue %dx.types.CBufRet.f32 %11608, 1
  %11611 = extractvalue %dx.types.CBufRet.f32 %11608, 2
  %11612 = extractvalue %dx.types.CBufRet.f32 %11608, 3
  %11613 = fmul fast float %11609, %2496
  %11614 = fadd fast float %11613, %11610
  %11615 = call float @dx.op.unary.f32(i32 7, float %11614)  ; Saturate(value)
  %11616 = fmul fast float %11611, %2496
  %11617 = fadd fast float %11616, %11612
  %11618 = call float @dx.op.unary.f32(i32 7, float %11617)  ; Saturate(value)
  %11619 = call float @dx.op.binary.f32(i32 36, float %11615, float %11618)  ; FMin(a,b)
  %11620 = uitofp i32 %11522 to float
  %11621 = fmul fast float %11620, 0x3FE3C6EF40000000
  %11622 = call float @dx.op.unary.f32(i32 22, float %11621)  ; Frc(value)
  %11623 = fadd fast float %11622, 0x3FE5555560000000
  %11624 = fadd fast float %11622, 0x3FD5555560000000
  %11625 = fsub fast float -0.000000e+00, %11622
  %11626 = fsub fast float -0.000000e+00, %11623
  %11627 = fsub fast float -0.000000e+00, %11624
  %11628 = fcmp fast oge float %11622, %11625
  %11629 = fcmp fast oge float %11623, %11626
  %11630 = fcmp fast oge float %11624, %11627
  %11631 = call float @dx.op.unary.f32(i32 6, float %11622)  ; FAbs(value)
  %11632 = call float @dx.op.unary.f32(i32 6, float %11623)  ; FAbs(value)
  %11633 = call float @dx.op.unary.f32(i32 6, float %11624)  ; FAbs(value)
  %11634 = call float @dx.op.unary.f32(i32 22, float %11631)  ; Frc(value)
  %11635 = call float @dx.op.unary.f32(i32 22, float %11632)  ; Frc(value)
  %11636 = call float @dx.op.unary.f32(i32 22, float %11633)  ; Frc(value)
  %11637 = fsub fast float -0.000000e+00, %11634
  %11638 = fsub fast float -0.000000e+00, %11635
  %11639 = fsub fast float -0.000000e+00, %11636
  %11640 = select i1 %11628, float %11634, float %11637
  %11641 = select i1 %11629, float %11635, float %11638
  %11642 = select i1 %11630, float %11636, float %11639
  %11643 = fmul fast float %11640, 6.000000e+00
  %11644 = fmul fast float %11641, 6.000000e+00
  %11645 = fmul fast float %11642, 6.000000e+00
  %11646 = fadd fast float %11643, -3.000000e+00
  %11647 = fadd fast float %11644, -3.000000e+00
  %11648 = fadd fast float %11645, -3.000000e+00
  %11649 = call float @dx.op.unary.f32(i32 6, float %11646)  ; FAbs(value)
  %11650 = call float @dx.op.unary.f32(i32 6, float %11647)  ; FAbs(value)
  %11651 = call float @dx.op.unary.f32(i32 6, float %11648)  ; FAbs(value)
  %11652 = fadd fast float %11649, -1.000000e+00
  %11653 = fadd fast float %11650, -1.000000e+00
  %11654 = fadd fast float %11651, -1.000000e+00
  %11655 = call float @dx.op.unary.f32(i32 7, float %11652)  ; Saturate(value)
  %11656 = call float @dx.op.unary.f32(i32 7, float %11653)  ; Saturate(value)
  %11657 = call float @dx.op.unary.f32(i32 7, float %11654)  ; Saturate(value)
  %11658 = fadd fast float %11620, 1.000000e+00
  %11659 = fmul fast float %11658, 0x3FE3C6EF40000000
  %11660 = call float @dx.op.unary.f32(i32 22, float %11659)  ; Frc(value)
  %11661 = fadd fast float %11660, 0x3FE5555560000000
  %11662 = fadd fast float %11660, 0x3FD5555560000000
  %11663 = fsub fast float -0.000000e+00, %11660
  %11664 = fsub fast float -0.000000e+00, %11661
  %11665 = fsub fast float -0.000000e+00, %11662
  %11666 = fcmp fast oge float %11660, %11663
  %11667 = fcmp fast oge float %11661, %11664
  %11668 = fcmp fast oge float %11662, %11665
  %11669 = call float @dx.op.unary.f32(i32 6, float %11660)  ; FAbs(value)
  %11670 = call float @dx.op.unary.f32(i32 6, float %11661)  ; FAbs(value)
  %11671 = call float @dx.op.unary.f32(i32 6, float %11662)  ; FAbs(value)
  %11672 = call float @dx.op.unary.f32(i32 22, float %11669)  ; Frc(value)
  %11673 = call float @dx.op.unary.f32(i32 22, float %11670)  ; Frc(value)
  %11674 = call float @dx.op.unary.f32(i32 22, float %11671)  ; Frc(value)
  %11675 = fsub fast float -0.000000e+00, %11672
  %11676 = fsub fast float -0.000000e+00, %11673
  %11677 = fsub fast float -0.000000e+00, %11674
  %11678 = select i1 %11666, float %11672, float %11675
  %11679 = select i1 %11667, float %11673, float %11676
  %11680 = select i1 %11668, float %11674, float %11677
  %11681 = fmul fast float %11678, 6.000000e+00
  %11682 = fmul fast float %11679, 6.000000e+00
  %11683 = fmul fast float %11680, 6.000000e+00
  %11684 = fadd fast float %11681, -3.000000e+00
  %11685 = fadd fast float %11682, -3.000000e+00
  %11686 = fadd fast float %11683, -3.000000e+00
  %11687 = call float @dx.op.unary.f32(i32 6, float %11684)  ; FAbs(value)
  %11688 = call float @dx.op.unary.f32(i32 6, float %11685)  ; FAbs(value)
  %11689 = call float @dx.op.unary.f32(i32 6, float %11686)  ; FAbs(value)
  %11690 = fadd fast float %11687, -1.000000e+00
  %11691 = fadd fast float %11688, -1.000000e+00
  %11692 = fadd fast float %11689, -1.000000e+00
  %11693 = call float @dx.op.unary.f32(i32 7, float %11690)  ; Saturate(value)
  %11694 = call float @dx.op.unary.f32(i32 7, float %11691)  ; Saturate(value)
  %11695 = call float @dx.op.unary.f32(i32 7, float %11692)  ; Saturate(value)
  %11696 = fsub fast float %11693, %11655
  %11697 = fsub fast float %11694, %11656
  %11698 = fsub fast float %11695, %11657
  %11699 = fmul fast float %11696, %11619
  %11700 = fmul fast float %11697, %11619
  %11701 = fmul fast float %11698, %11619
  %11702 = fadd fast float %11699, %11655
  %11703 = fadd fast float %11700, %11656
  %11704 = fadd fast float %11701, %11657
  br label %11709

; <label>:11705                                   ; preds = %11602
  %11706 = icmp ne i32 %11529, 0
  %11707 = select i1 %11706, float 1.000000e+00, float 0.000000e+00
  %11708 = select i1 %11706, float 0.000000e+00, float 1.000000e+00
  br label %11709

; <label>:11709                                   ; preds = %11705, %11606, %11600, %11576, %11533
  %11710 = phi float [ %11569, %11533 ], [ %11702, %11606 ], [ %11707, %11705 ], [ 0.000000e+00, %11576 ], [ %11601, %11600 ]
  %11711 = phi float [ %11570, %11533 ], [ %11703, %11606 ], [ %11708, %11705 ], [ 0.000000e+00, %11576 ], [ %11601, %11600 ]
  %11712 = phi float [ %11571, %11533 ], [ %11704, %11606 ], [ 0.000000e+00, %11705 ], [ 0.000000e+00, %11576 ], [ %11601, %11600 ]
  %11713 = fsub fast float %11710, %10816
  %11714 = fsub fast float %11711, %10817
  %11715 = fsub fast float %11712, %10818
  %11716 = fmul fast float %11713, 5.000000e-01
  %11717 = fmul fast float %11714, 5.000000e-01
  %11718 = fmul fast float %11715, 5.000000e-01
  %11719 = fadd fast float %11716, %10816
  %11720 = fadd fast float %11717, %10817
  %11721 = fadd fast float %11718, %10818
  br label %11813

; <label>:11722                                   ; preds = %11483
  %11723 = icmp eq i32 %10837, 41
  br i1 %11723, label %11724, label %11805

; <label>:11724                                   ; preds = %11722
  %11725 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11726 = extractvalue %dx.types.CBufRet.i32 %11725, 0
  %11727 = icmp eq i32 %11726, 2
  %11728 = and i32 %1882, 2
  %11729 = icmp ne i32 %11728, 0
  %11730 = and i1 %11729, %11727
  %11731 = icmp eq i32 %11726, 3
  %11732 = and i32 %1882, 4
  %11733 = icmp ne i32 %11732, 0
  %11734 = and i1 %11733, %11731
  %11735 = or i1 %11734, %11730
  %11736 = icmp eq i32 %11726, 4
  %11737 = and i32 %1882, 8
  %11738 = icmp ne i32 %11737, 0
  %11739 = and i1 %11738, %11736
  %11740 = or i1 %11739, %11735
  %11741 = icmp eq i32 %11726, 5
  %11742 = and i32 %1882, 16
  %11743 = icmp ne i32 %11742, 0
  %11744 = and i1 %11743, %11741
  %11745 = or i1 %11744, %11740
  %11746 = icmp eq i32 %11726, 6
  %11747 = and i32 %1882, 32
  %11748 = icmp ne i32 %11747, 0
  %11749 = and i1 %11748, %11746
  %11750 = or i1 %11749, %11745
  %11751 = icmp eq i32 %11726, 8
  %11752 = and i32 %1882, 64
  %11753 = icmp ne i32 %11752, 0
  %11754 = and i1 %11753, %11751
  %11755 = or i1 %11754, %11750
  %11756 = icmp eq i32 %11726, 9
  %11757 = and i32 %1882, 128
  %11758 = icmp ne i32 %11757, 0
  %11759 = and i1 %11758, %11756
  %11760 = or i1 %11759, %11755
  %11761 = icmp eq i32 %11726, 11
  %11762 = and i32 %1882, 160
  %11763 = icmp ne i32 %11762, 0
  %11764 = and i1 %11763, %11761
  %11765 = or i1 %11764, %11760
  %11766 = icmp eq i32 %11726, 13
  %11767 = and i32 %1882, 256
  %11768 = icmp ne i32 %11767, 0
  %11769 = and i1 %11768, %11766
  %11770 = or i1 %11769, %11765
  %11771 = icmp eq i32 %11726, 14
  %11772 = and i32 %1882, 512
  %11773 = icmp ne i32 %11772, 0
  %11774 = and i1 %11773, %11771
  %11775 = or i1 %11774, %11770
  %11776 = icmp eq i32 %11726, 7
  %11777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %11778 = extractvalue %dx.types.ResRet.i32 %11777, 0
  %11779 = and i32 %11778, 1024
  %11780 = icmp ne i32 %11779, 0
  %11781 = and i1 %11776, %11780
  %11782 = or i1 %11781, %11775
  %11783 = icmp eq i32 %11726, 10
  %11784 = and i32 %11778, 2048
  %11785 = icmp ne i32 %11784, 0
  %11786 = and i1 %11783, %11785
  %11787 = or i1 %11786, %11782
  %11788 = icmp eq i32 %11726, 12
  %11789 = and i32 %11778, 3072
  %11790 = icmp ne i32 %11789, 0
  %11791 = and i1 %11788, %11790
  %11792 = or i1 %11791, %11787
  %11793 = icmp eq i32 %11726, 15
  %11794 = and i32 %11778, 4096
  %11795 = icmp ne i32 %11794, 0
  %11796 = and i1 %11793, %11795
  %11797 = or i1 %11796, %11792
  %11798 = select i1 %11797, float 5.000000e-01, float %10816
  %11799 = select i1 %11797, float 0x3FB99999A0000000, float %10817
  %11800 = select i1 %11797, float 0x3FB99999A0000000, float %10818
  %11801 = fcmp fast ogt float %72, 0.000000e+00
  %11802 = and i1 %11801, %11776
  %11803 = select i1 %11802, float 1.000000e+00, float %11799
  %11804 = select i1 %11802, float 1.000000e+00, float %11800
  br label %11813

; <label>:11805                                   ; preds = %11722
  %11806 = icmp eq i32 %10837, 45
  br i1 %11806, label %11807, label %11813

; <label>:11807                                   ; preds = %11805
  %11808 = fcmp fast ogt float %1883, %1884
  %11809 = fsub fast float %1883, %1884
  %11810 = call float @dx.op.unary.f32(i32 6, float %11809)  ; FAbs(value)
  %11811 = select i1 %11808, float %11810, float 0.000000e+00
  %11812 = select i1 %11808, float 0.000000e+00, float %11810
  br label %11813

; <label>:11813                                   ; preds = %11807, %11805, %11724, %11709, %11475, %11468, %11462, %11441, %11400, %11398, %11341, %11313, %11285, %11281, %11219, %11177, %11122, %11117, %11103, %11061, %11054, %11047, %11043, %11041, %11039, %11037, %11035, %11033, %11031, %11029, %11027, %11025, %11011, %11007, %11005, %11003, %10994, %10903, %10883, %10842, %10815
  %11814 = phi float [ %10878, %10842 ], [ %10884, %10883 ], [ %10988, %10903 ], [ %11000, %10994 ], [ %11020, %11011 ], [ %11026, %11025 ], [ %11051, %11047 ], [ %11119, %11117 ], [ %11172, %11122 ], [ %11278, %11219 ], [ %11305, %11285 ], [ %11333, %11313 ], [ %11393, %11341 ], [ %11435, %11400 ], [ %11448, %11441 ], [ %11465, %11462 ], [ %11480, %11475 ], [ %10816, %11468 ], [ %11719, %11709 ], [ %11798, %11724 ], [ %11811, %11807 ], [ %10816, %11805 ], [ %10816, %10815 ], [ 0.000000e+00, %11003 ], [ 0.000000e+00, %11041 ], [ %72, %11054 ], [ 1.000000e+00, %11103 ], [ 0.000000e+00, %11061 ], [ 0.000000e+00, %11177 ], [ 0.000000e+00, %11398 ], [ %308, %11005 ], [ %323, %11007 ], [ %363, %11027 ], [ %376, %11029 ], [ %1874, %11031 ], [ %78, %11033 ], [ %1877, %11035 ], [ %1878, %11037 ], [ %1885, %11039 ], [ %72, %11043 ], [ 0.000000e+00, %11281 ]
  %11815 = phi float [ %10879, %10842 ], [ %10885, %10883 ], [ %10989, %10903 ], [ %11001, %10994 ], [ %11022, %11011 ], [ %11026, %11025 ], [ %11052, %11047 ], [ %11120, %11117 ], [ %11173, %11122 ], [ %11279, %11219 ], [ %11307, %11285 ], [ %11335, %11313 ], [ %11394, %11341 ], [ %11436, %11400 ], [ %11446, %11441 ], [ %11466, %11462 ], [ %11481, %11475 ], [ %10817, %11468 ], [ %11720, %11709 ], [ %11803, %11724 ], [ %11812, %11807 ], [ %10817, %11805 ], [ %10817, %10815 ], [ 0.000000e+00, %11003 ], [ 1.000000e+00, %11041 ], [ %73, %11054 ], [ 0.000000e+00, %11103 ], [ 1.000000e+00, %11061 ], [ 1.000000e+00, %11177 ], [ 1.000000e+00, %11398 ], [ %308, %11005 ], [ %323, %11007 ], [ %363, %11027 ], [ %376, %11029 ], [ %1874, %11031 ], [ %78, %11033 ], [ %1877, %11035 ], [ %1878, %11037 ], [ %1885, %11039 ], [ %73, %11043 ], [ 0.000000e+00, %11281 ]
  %11816 = phi float [ %10880, %10842 ], [ %10886, %10883 ], [ %10990, %10903 ], [ %11002, %10994 ], [ 0.000000e+00, %11011 ], [ %11026, %11025 ], [ %11053, %11047 ], [ %11121, %11117 ], [ %11174, %11122 ], [ %11280, %11219 ], [ %11310, %11285 ], [ %11338, %11313 ], [ %11395, %11341 ], [ %11437, %11400 ], [ %11447, %11441 ], [ %11467, %11462 ], [ %11482, %11475 ], [ %10818, %11468 ], [ %11721, %11709 ], [ %11804, %11724 ], [ 0.000000e+00, %11807 ], [ %10818, %11805 ], [ %10818, %10815 ], [ 0.000000e+00, %11003 ], [ 1.000000e+00, %11041 ], [ %74, %11054 ], [ 1.000000e+00, %11103 ], [ 1.000000e+00, %11061 ], [ 1.000000e+00, %11177 ], [ 0.000000e+00, %11398 ], [ %308, %11005 ], [ %323, %11007 ], [ %363, %11027 ], [ %376, %11029 ], [ %1874, %11031 ], [ %78, %11033 ], [ %1877, %11035 ], [ %1878, %11037 ], [ %1885, %11039 ], [ %74, %11043 ], [ 0.000000e+00, %11281 ]
  %11817 = fadd fast float %1899, 0x3FE3C6EF40000000
  %11818 = call float @dx.op.unary.f32(i32 22, float %11817)  ; Frc(value)
  %11819 = call float @dx.op.unary.f32(i32 23, float %11814)  ; Log(value)
  %11820 = fadd fast float %11819, -7.000000e+00
  %11821 = call float @dx.op.unary.f32(i32 21, float %11820)  ; Exp(value)
  %11822 = fmul fast float %11818, 2.000000e+00
  %11823 = fadd fast float %11822, -1.000000e+00
  %11824 = fmul fast float %11821, %11823
  %11825 = fcmp fast ogt float %11814, 0.000000e+00
  %11826 = select i1 %11825, float %11824, float 0.000000e+00
  %11827 = fadd fast float %11826, %11814
  %11828 = fadd fast float %1899, 0x3FF3C6EF40000000
  %11829 = call float @dx.op.unary.f32(i32 22, float %11828)  ; Frc(value)
  %11830 = call float @dx.op.unary.f32(i32 23, float %11815)  ; Log(value)
  %11831 = fadd fast float %11830, -7.000000e+00
  %11832 = call float @dx.op.unary.f32(i32 21, float %11831)  ; Exp(value)
  %11833 = fmul fast float %11829, 2.000000e+00
  %11834 = fadd fast float %11833, -1.000000e+00
  %11835 = fmul fast float %11832, %11834
  %11836 = fcmp fast ogt float %11815, 0.000000e+00
  %11837 = select i1 %11836, float %11835, float 0.000000e+00
  %11838 = fadd fast float %11837, %11815
  %11839 = fadd fast float %1899, 0x3FFDAA66E0000000
  %11840 = call float @dx.op.unary.f32(i32 22, float %11839)  ; Frc(value)
  %11841 = call float @dx.op.unary.f32(i32 23, float %11816)  ; Log(value)
  %11842 = fadd fast float %11841, -6.000000e+00
  %11843 = call float @dx.op.unary.f32(i32 21, float %11842)  ; Exp(value)
  %11844 = fmul fast float %11840, 2.000000e+00
  %11845 = fadd fast float %11844, -1.000000e+00
  %11846 = fmul fast float %11843, %11845
  %11847 = fcmp fast ogt float %11816, 0.000000e+00
  %11848 = select i1 %11847, float %11846, float 0.000000e+00
  %11849 = fadd fast float %11848, %11816
  %11850 = call float @dx.op.binary.f32(i32 36, float %11827, float 3.225500e+04)  ; FMin(a,b)
  %11851 = call float @dx.op.binary.f32(i32 36, float %11838, float 3.225500e+04)  ; FMin(a,b)
  %11852 = call float @dx.op.binary.f32(i32 36, float %11849, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11850)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11851)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11852)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:11853                                   ; preds = %9980
  %11854 = fcmp fast olt float %2555, %9963
  br i1 %11854, label %9966, label %11855

; <label>:11855                                   ; preds = %11853
  %11856 = fcmp fast olt float %2555, %9964
  br i1 %11856, label %9966, label %10167

; <label>:11857                                   ; preds = %10058
  %11858 = fcmp fast olt float %87, 5.120000e+02
  br i1 %11858, label %10044, label %11859

; <label>:11859                                   ; preds = %11857
  %11860 = fcmp fast olt float %87, 1.024000e+03
  br i1 %11860, label %10044, label %11861

; <label>:11861                                   ; preds = %11859
  %11862 = fcmp fast olt float %87, 1.536000e+03
  br i1 %11862, label %10044, label %11863

; <label>:11863                                   ; preds = %11861
  %11864 = fcmp fast olt float %87, 2.048000e+03
  br i1 %11864, label %10044, label %11865

; <label>:11865                                   ; preds = %11863
  %11866 = fcmp fast olt float %87, 3.072000e+03
  br i1 %11866, label %10044, label %11867

; <label>:11867                                   ; preds = %11865
  %11868 = fcmp fast olt float %87, 4.096000e+03
  br i1 %11868, label %10044, label %11869

; <label>:11869                                   ; preds = %11867
  %11870 = fcmp fast olt float %87, 6.144000e+03
  br i1 %11870, label %10044, label %11871

; <label>:11871                                   ; preds = %11869
  %11872 = fcmp fast olt float %87, 8.192000e+03
  br i1 %11872, label %10044, label %10167

; <label>:11873                                   ; preds = %10090
  %11874 = fcmp fast olt float %8904, %10073
  br i1 %11874, label %10076, label %11875

; <label>:11875                                   ; preds = %11873
  %11876 = fcmp fast olt float %8904, %10074
  br i1 %11876, label %10076, label %10167
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

