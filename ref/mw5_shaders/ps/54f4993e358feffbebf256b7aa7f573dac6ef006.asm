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
; shader hash: 1d87086166405c955a3b32cef60bf6fc
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
  %498 = add nuw nsw i32 %436, 648
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = add nuw nsw i32 %436, 696
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = add nuw nsw i32 %436, 708
  %506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = add nuw nsw i32 %436, 812
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = add nuw nsw i32 %436, 816
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 1
  %515 = add nuw nsw i32 %436, 852
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = add nuw nsw i32 %436, 860
  %519 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.f32 %519, 2
  %521 = add nuw nsw i32 %436, 896
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = add nuw nsw i32 %436, 900
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add nuw nsw i32 %436, 904
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %438, 128
  %531 = icmp ne i32 %530, 0
  %532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %533 = extractvalue %dx.types.CBufRet.i32 %532, 0
  %534 = and i32 %533, 512
  %535 = icmp ne i32 %534, 0
  %536 = and i1 %531, %535
  %537 = select i1 %536, float 0.000000e+00, float 1.000000e+00
  %538 = call float @dx.op.unary.f32(i32 7, float %537)  ; Saturate(value)
  %539 = fmul fast float %538, 2.550000e+02
  %540 = fptoui float %539 to i32
  %541 = fcmp fast ole float %78, 0x3FA4B5DCC0000000
  %542 = fmul fast float %78, 0x3FB3D07220000000
  %543 = fadd fast float %78, 0x3FAC28F5C0000000
  %544 = fmul fast float %543, 0x3FEE54EDE0000000
  %545 = call float @dx.op.unary.f32(i32 23, float %544)  ; Log(value)
  %546 = fmul fast float %545, 0x4003333340000000
  %547 = call float @dx.op.unary.f32(i32 21, float %546)  ; Exp(value)
  %548 = select i1 %541, float %542, float %547
  %549 = call float @dx.op.unary.f32(i32 7, float %548)  ; Saturate(value)
  %550 = fmul fast float %486, %359
  %551 = fadd fast float %550, %487
  %552 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %553 = call float @dx.op.binary.f32(i32 35, float %549, float %552)  ; FMax(a,b)
  %554 = add i32 %526, 0
  %555 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %554, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %556 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %557 = extractvalue %dx.types.CBufRet.i32 %556, 0
  %558 = and i32 %557, 65536
  %559 = icmp eq i32 %558, 0
  %560 = and i32 %557, 262144
  %561 = icmp ne i32 %560, 0
  %562 = and i32 %557, 1048576
  %563 = icmp ne i32 %562, 0
  br i1 %559, label %840, label %564

; <label>:564                                     ; preds = %427
  %565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %566 = extractvalue %dx.types.CBufRet.f32 %565, 0
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %570 = fadd fast float %568, %153
  %571 = fadd fast float %569, %154
  %572 = fmul fast float %153, %153
  %573 = fmul fast float %154, %154
  %574 = fadd fast float %572, %573
  %575 = fmul fast float %155, %155
  %576 = fadd fast float %574, %575
  %577 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  br i1 %563, label %578, label %624

; <label>:578                                     ; preds = %564
  %579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %580 = extractvalue %dx.types.CBufRet.f32 %579, 0
  %581 = fcmp fast ogt float %577, %580
  %582 = zext i1 %581 to i32
  %583 = extractvalue %dx.types.CBufRet.f32 %579, 1
  %584 = fcmp fast ogt float %577, %583
  %585 = zext i1 %584 to i32
  %586 = add nuw nsw i32 %585, %582
  %587 = extractvalue %dx.types.CBufRet.f32 %579, 2
  %588 = fcmp fast ogt float %577, %587
  %589 = zext i1 %588 to i32
  %590 = add nuw nsw i32 %586, %589
  %591 = icmp ult i32 %590, 3
  %592 = zext i1 %591 to i32
  %593 = shl nuw nsw i32 %590, 2
  %594 = add nuw nsw i32 %593, 48
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %594)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 1
  %597 = fcmp fast ogt float %577, %596
  %598 = zext i1 %597 to i32
  %599 = or i32 %593, 1
  %600 = add nuw nsw i32 %599, 48
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %600)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %603 = fcmp fast ogt float %577, %602
  %604 = zext i1 %603 to i32
  %605 = add nuw nsw i32 %604, %598
  %606 = or i32 %593, 2
  %607 = add nuw nsw i32 %606, 48
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %607)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %610 = fcmp fast ogt float %577, %609
  %611 = zext i1 %610 to i32
  %612 = add nuw nsw i32 %605, %611
  %613 = add i32 %447, -1
  %614 = call i32 @dx.op.binary.i32(i32 40, i32 %612, i32 %613)  ; UMin(a,b)
  %615 = add i32 %593, %614
  %616 = call i32 @dx.op.binary.i32(i32 40, i32 %615, i32 12)  ; UMin(a,b)
  %617 = add i32 %616, 48
  %618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %617)  ; CBufferLoadLegacy(handle,regIndex)
  %619 = extractvalue %dx.types.CBufRet.f32 %618, 0
  %620 = fcmp fast oge float %577, %619
  %621 = zext i1 %620 to i32
  %622 = call i32 @dx.op.binary.i32(i32 40, i32 %447, i32 %592)  ; UMin(a,b)
  %623 = call i32 @dx.op.binary.i32(i32 40, i32 %621, i32 %622)  ; UMin(a,b)
  br label %624

; <label>:624                                     ; preds = %578, %564
  %625 = phi i32 [ %616, %578 ], [ 0, %564 ]
  %626 = phi i32 [ %623, %578 ], [ 0, %564 ]
  %627 = add i32 %626, %447
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %827, label %629

; <label>:629                                     ; preds = %624
  br label %630

; <label>:630                                     ; preds = %796, %629
  %631 = phi float [ %823, %796 ], [ 0.000000e+00, %629 ]
  %632 = phi float [ %815, %796 ], [ 0.000000e+00, %629 ]
  %633 = phi float [ %816, %796 ], [ 0.000000e+00, %629 ]
  %634 = phi i32 [ %646, %796 ], [ %625, %629 ]
  %635 = phi i32 [ %824, %796 ], [ 0, %629 ]
  %636 = add i32 %635, %634
  br i1 %563, label %637, label %645

; <label>:637                                     ; preds = %630
  %638 = and i32 %636, -4
  %639 = add i32 %638, %447
  %640 = icmp uge i32 %636, %639
  %641 = sub i32 4, %447
  %642 = select i1 %640, i32 %641, i32 0
  %643 = add i32 %642, %634
  %644 = add i32 %642, %636
  br label %645

; <label>:645                                     ; preds = %637, %630
  %646 = phi i32 [ %643, %637 ], [ %634, %630 ]
  %647 = phi i32 [ %644, %637 ], [ %636, %630 ]
  %648 = and i32 %647, 3
  %649 = select i1 %563, i32 %648, i32 %635
  %650 = lshr i32 %647, 2
  %651 = select i1 %563, i32 %650, i32 0
  %652 = add i32 %647, 32
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %652)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 2
  %657 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %658 = fmul fast float %654, %577
  %659 = fadd fast float %658, %655
  %660 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %661 = fmul fast float %656, %577
  %662 = fadd fast float %661, %657
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %664 = call float @dx.op.binary.f32(i32 36, float %660, float %663)  ; FMin(a,b)
  %665 = select i1 %563, float %664, float 1.000000e+00
  %666 = mul i32 %649, 72
  %667 = add i32 %464, %666
  %668 = add i32 %667, 16
  %669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.f32 %669, 0
  %671 = extractvalue %dx.types.ResRet.f32 %669, 1
  %672 = extractvalue %dx.types.ResRet.f32 %669, 2
  %673 = extractvalue %dx.types.ResRet.f32 %669, 3
  %674 = add i32 %667, 36
  %675 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.f32 %675, 0
  %677 = add i32 %667, 56
  %678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %677, i32 undef)  ; BufferLoad(srv,index,wot)
  %679 = extractvalue %dx.types.ResRet.f32 %678, 0
  %680 = fmul fast float %346, 3.906250e-03
  %681 = fmul fast float %680, %463
  %682 = fmul fast float %681, %676
  %683 = fmul fast float %682, %679
  %684 = extractvalue %dx.types.ResRet.f32 %678, 1
  %685 = fadd fast float %683, %684
  %686 = call float @dx.op.binary.f32(i32 35, float %685, float 0.000000e+00)  ; FMax(a,b)
  %687 = add i32 %667, 32
  %688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %687, i32 undef)  ; BufferLoad(srv,index,wot)
  %689 = extractvalue %dx.types.ResRet.f32 %688, 0
  br i1 %561, label %690, label %723

; <label>:690                                     ; preds = %645
  %691 = fmul fast float %676, %341
  %692 = fmul fast float %676, %342
  %693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %694 = extractvalue %dx.types.CBufRet.f32 %693, 1
  %695 = add i32 %667, 40
  %696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %695, i32 undef)  ; BufferLoad(srv,index,wot)
  %697 = extractvalue %dx.types.ResRet.f32 %696, 0
  %698 = extractvalue %dx.types.ResRet.f32 %696, 1
  %699 = extractvalue %dx.types.ResRet.f32 %696, 2
  %700 = extractvalue %dx.types.ResRet.f32 %696, 3
  %701 = fadd fast float %694, %193
  %702 = fadd fast float %701, %699
  %703 = fmul fast float %701, %698
  %704 = call float @dx.op.unary.f32(i32 29, float %703)  ; Round_z(value)
  %705 = fmul fast float %697, %704
  %706 = fsub fast float %701, %705
  %707 = fmul fast float %702, %698
  %708 = call float @dx.op.unary.f32(i32 29, float %707)  ; Round_z(value)
  %709 = fmul fast float %708, %697
  %710 = fsub fast float %702, %709
  %711 = fmul fast float %706, %691
  %712 = fmul fast float %706, %692
  %713 = fmul fast float %710, %691
  %714 = fmul fast float %710, %692
  %715 = fsub fast float %570, %711
  %716 = fsub fast float %571, %712
  %717 = fsub fast float %570, %713
  %718 = fsub fast float %571, %714
  %719 = fsub fast float %699, %706
  %720 = call float @dx.op.unary.f32(i32 6, float %719)  ; FAbs(value)
  %721 = fmul fast float %720, %700
  %722 = call float @dx.op.unary.f32(i32 7, float %721)  ; Saturate(value)
  br label %723

; <label>:723                                     ; preds = %690, %645
  %724 = phi float [ %715, %690 ], [ %570, %645 ]
  %725 = phi float [ %716, %690 ], [ %571, %645 ]
  %726 = phi float [ %717, %690 ], [ %570, %645 ]
  %727 = phi float [ %718, %690 ], [ %571, %645 ]
  %728 = phi float [ %722, %690 ], [ 0.000000e+00, %645 ]
  %729 = fmul fast float %441, 4.000000e+00
  %730 = uitofp i32 %651 to float
  %731 = fadd fast float %730, %729
  %732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %733 = extractvalue %dx.types.CBufRet.f32 %732, 0
  %734 = extractvalue %dx.types.CBufRet.f32 %732, 1
  %735 = extractvalue %dx.types.CBufRet.f32 %732, 2
  %736 = extractvalue %dx.types.CBufRet.f32 %732, 3
  %737 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %733, float* %737, align 4
  %738 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %734, float* %738, align 4
  %739 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %735, float* %739, align 4
  %740 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %736, float* %740, align 4
  %741 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 %651
  %742 = load float, float* %741, align 4, !tbaa !106, !noalias !110
  %743 = fmul fast float %742, %444
  %744 = select i1 %563, float %743, float %444
  %745 = fmul fast float %724, %670
  %746 = call float @dx.op.tertiary.f32(i32 46, float %671, float %725, float %745)  ; FMad(a,b,c)
  %747 = fmul fast float %724, %672
  %748 = call float @dx.op.tertiary.f32(i32 46, float %673, float %725, float %747)  ; FMad(a,b,c)
  %749 = add i32 %667, 8
  %750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %749, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.f32 %750, 0
  %752 = extractvalue %dx.types.ResRet.f32 %750, 1
  %753 = fadd fast float %751, %746
  %754 = fadd fast float %752, %748
  %755 = fmul fast float %753, %744
  %756 = fmul fast float %754, %744
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %667, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = extractvalue %dx.types.ResRet.f32 %757, 1
  %760 = fmul fast float %755, %758
  %761 = fmul fast float %756, %759
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %764 = fadd fast float %760, %763
  %765 = fadd fast float %761, %763
  %766 = fmul fast float %726, %670
  %767 = call float @dx.op.tertiary.f32(i32 46, float %671, float %727, float %766)  ; FMad(a,b,c)
  %768 = fmul fast float %726, %672
  %769 = call float @dx.op.tertiary.f32(i32 46, float %673, float %727, float %768)  ; FMad(a,b,c)
  %770 = fadd fast float %751, %767
  %771 = fadd fast float %752, %769
  %772 = fmul fast float %770, %744
  %773 = fmul fast float %771, %744
  %774 = fmul fast float %772, %758
  %775 = fmul fast float %773, %759
  %776 = fadd fast float %774, %763
  %777 = fadd fast float %775, %763
  %778 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %764, float %765, float %731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 0
  %780 = extractvalue %dx.types.ResRet.f32 %778, 1
  %781 = extractvalue %dx.types.ResRet.f32 %778, 3
  %782 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %776, float %777, float %731, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %561, label %783, label %796

; <label>:783                                     ; preds = %723
  %784 = extractvalue %dx.types.ResRet.f32 %782, 3
  %785 = extractvalue %dx.types.ResRet.f32 %782, 1
  %786 = extractvalue %dx.types.ResRet.f32 %782, 0
  %787 = fsub fast float %786, %779
  %788 = fsub fast float %785, %780
  %789 = fsub fast float %784, %781
  %790 = fmul fast float %787, %728
  %791 = fmul fast float %788, %728
  %792 = fmul fast float %789, %728
  %793 = fadd fast float %790, %779
  %794 = fadd fast float %791, %780
  %795 = fadd fast float %792, %781
  br label %796

; <label>:796                                     ; preds = %783, %723
  %797 = phi float [ %793, %783 ], [ %779, %723 ]
  %798 = phi float [ %794, %783 ], [ %780, %723 ]
  %799 = phi float [ %795, %783 ], [ %781, %723 ]
  %800 = fmul fast float %797, 2.000000e+00
  %801 = fmul fast float %798, 2.000000e+00
  %802 = fadd fast float %800, -1.000000e+00
  %803 = fadd fast float %801, -1.000000e+00
  %804 = fmul fast float %802, %670
  %805 = call float @dx.op.tertiary.f32(i32 46, float %803, float %672, float %804)  ; FMad(a,b,c)
  %806 = fmul fast float %802, %671
  %807 = call float @dx.op.tertiary.f32(i32 46, float %803, float %673, float %806)  ; FMad(a,b,c)
  %808 = fmul fast float %665, %566
  %809 = fmul fast float %808, %686
  %810 = fmul fast float %809, %689
  %811 = fmul fast float %805, %810
  %812 = fmul fast float %811, %758
  %813 = fmul fast float %807, %810
  %814 = fmul fast float %813, %759
  %815 = fadd fast float %812, %632
  %816 = fadd fast float %814, %633
  %817 = add i32 %667, 64
  %818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = fmul fast float %819, %799
  %821 = extractvalue %dx.types.ResRet.f32 %818, 1
  %822 = fadd fast float %820, %821
  %823 = call float @dx.op.binary.f32(i32 35, float %631, float %822)  ; FMax(a,b)
  %824 = add nuw i32 %635, 1
  %825 = icmp eq i32 %824, %627
  br i1 %825, label %826, label %630

; <label>:826                                     ; preds = %796
  br label %827

; <label>:827                                     ; preds = %826, %624
  %828 = phi float [ 0.000000e+00, %624 ], [ %823, %826 ]
  %829 = phi float [ 0.000000e+00, %624 ], [ %815, %826 ]
  %830 = phi float [ 0.000000e+00, %624 ], [ %816, %826 ]
  %831 = call float @dx.op.dot3.f32(i32 55, float %829, float %830, float 1.000000e+00, float %829, float %830, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = call float @dx.op.unary.f32(i32 25, float %831)  ; Rsqrt(value)
  %833 = fmul fast float %832, %829
  %834 = fmul fast float %832, %830
  %835 = fmul fast float %828, %490
  %836 = fadd fast float %835, %491
  %837 = call float @dx.op.unary.f32(i32 7, float %836)  ; Saturate(value)
  %838 = fmul float %832, 5.000000e-01
  %839 = fadd float %838, 5.000000e-01
  br label %840

; <label>:840                                     ; preds = %827, %427
  %841 = phi float [ %833, %827 ], [ 0.000000e+00, %427 ]
  %842 = phi float [ %834, %827 ], [ 0.000000e+00, %427 ]
  %843 = phi float [ %839, %827 ], [ 5.000000e-01, %427 ]
  %844 = phi float [ %837, %827 ], [ 0.000000e+00, %427 ]
  %845 = fadd fast float %844, %553
  %846 = icmp ne i32 %447, 0
  %847 = fcmp fast ogt float %844, 0.000000e+00
  %848 = fmul fast float %507, %346
  %849 = fadd fast float %848, %508
  %850 = call float @dx.op.binary.f32(i32 35, float %849, float 0.000000e+00)  ; FMax(a,b)
  %851 = fmul fast float %850, %503
  %852 = fadd fast float %851, %504
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = fmul fast float %853, %845
  %855 = icmp ne i32 %517, 0
  %856 = and i32 %438, 2
  %857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %858 = extractvalue %dx.types.CBufRet.f32 %857, 0
  %859 = fmul fast float %858, %87
  %860 = extractvalue %dx.types.CBufRet.f32 %857, 1
  %861 = fadd fast float %859, %860
  %862 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = fmul fast float %864, %862
  %866 = select i1 %855, float %865, float 0.000000e+00
  %867 = fcmp fast ogt float %866, 0.000000e+00
  br i1 %867, label %868, label %998

; <label>:868                                     ; preds = %840
  %869 = add i32 %222, 0
  %870 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %869, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %871 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %870, i32 0)  ; GetDimensions(handle,mipLevel)
  %872 = extractvalue %dx.types.Dimensions %871, 0
  %873 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %872)  ; FirstbitLo(value)
  %874 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %875 = extractvalue %dx.types.CBufRet.i32 %874, 1
  %876 = sub nsw i32 %875, %873
  %877 = sitofp i32 %876 to float
  %878 = fsub fast float %483, %877
  %879 = call float @dx.op.binary.f32(i32 35, float %878, float 0.000000e+00)  ; FMax(a,b)
  %880 = fmul fast float %467, %231
  %881 = fmul fast float %467, %232
  %882 = fmul fast float %481, %79
  %883 = fmul fast float %481, %80
  %884 = call float @dx.op.unary.f32(i32 22, float %882)  ; Frc(value)
  %885 = call float @dx.op.unary.f32(i32 22, float %883)  ; Frc(value)
  %886 = fmul fast float %884, 2.000000e+00
  %887 = fmul fast float %885, 2.000000e+00
  %888 = fadd fast float %886, -1.000000e+00
  %889 = fadd fast float %887, -1.000000e+00
  %890 = call float @dx.op.unary.f32(i32 6, float %888)  ; FAbs(value)
  %891 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %892 = fsub fast float 1.000000e+00, %890
  %893 = fmul fast float %892, %891
  %894 = fsub fast float %892, %893
  %895 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %894, float* %895, align 4, !tbaa !106, !noalias !115
  %896 = fmul fast float %891, %890
  %897 = fsub fast float %890, %896
  %898 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %897, float* %898, align 4, !tbaa !106, !noalias !115
  %899 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %893, float* %899, align 4, !tbaa !106, !noalias !115
  %900 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %896, float* %900, align 4, !tbaa !106, !noalias !115
  br label %901

; <label>:901                                     ; preds = %901, %868
  %902 = phi i32 [ 0, %868 ], [ %995, %901 ]
  %903 = phi float [ %841, %868 ], [ %993, %901 ]
  %904 = phi float [ %842, %868 ], [ %994, %901 ]
  %905 = mul i32 %902, 2
  %906 = add i32 0, %905
  %907 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %906
  %908 = load float, float* %907, align 4
  %909 = mul i32 %902, 2
  %910 = add i32 1, %909
  %911 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %910
  %912 = load float, float* %911, align 4
  %913 = fmul fast float %908, 5.000000e-01
  %914 = fmul fast float %912, 5.000000e-01
  %915 = fsub fast float 1.000000e+00, %908
  %916 = fsub fast float 1.000000e+00, %912
  %917 = fmul fast float %915, 5.000000e-01
  %918 = fmul fast float %916, 5.000000e-01
  %919 = fadd fast float %913, %882
  %920 = fadd fast float %914, %883
  %921 = call float @dx.op.unary.f32(i32 27, float %919)  ; Round_ni(value)
  %922 = call float @dx.op.unary.f32(i32 27, float %920)  ; Round_ni(value)
  %923 = fadd fast float %921, %917
  %924 = fadd fast float %922, %918
  %925 = fmul fast float %923, %482
  %926 = fmul fast float %924, %482
  %927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %928 = extractvalue %dx.types.CBufRet.f32 %927, 0
  %929 = fmul fast float %925, %928
  %930 = fmul fast float %926, %928
  %931 = extractvalue %dx.types.CBufRet.f32 %927, 1
  %932 = fadd fast float %929, %931
  %933 = fadd fast float %930, %931
  %934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %870, %dx.types.Handle %62, float %932, float %933, float %211, float undef, i32 0, i32 0, i32 undef, float %879)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %935 = extractvalue %dx.types.ResRet.f32 %934, 0
  %936 = extractvalue %dx.types.ResRet.f32 %934, 1
  %937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %938 = extractvalue %dx.types.CBufRet.f32 %937, 3
  %939 = fmul fast float %938, 2.000000e+00
  %940 = fmul fast float %939, %935
  %941 = fmul fast float %939, %936
  %942 = fsub fast float %940, %938
  %943 = fsub fast float %941, %938
  %944 = fmul fast float %942, %942
  %945 = fmul fast float %943, %943
  %946 = fadd fast float %944, %945
  %947 = call float @dx.op.unary.f32(i32 24, float %946)  ; Sqrt(value)
  %948 = fcmp fast ogt float %947, 0.000000e+00
  %949 = fdiv fast float 1.000000e+00, %947
  %950 = fmul fast float %942, %949
  %951 = fmul fast float %943, %949
  %952 = select i1 %948, float %950, float 0.000000e+00
  %953 = select i1 %948, float %951, float 0.000000e+00
  %954 = add i32 %517, 0
  %955 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %954, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 1
  %958 = fmul fast float %478, %467
  %959 = fmul fast float %958, %947
  %960 = fsub fast float -0.000000e+00, %952
  %961 = fmul fast float %953, %880
  %962 = call float @dx.op.tertiary.f32(i32 46, float %960, float %881, float %961)  ; FMad(a,b,c)
  %963 = fmul fast float %952, %880
  %964 = call float @dx.op.tertiary.f32(i32 46, float %953, float %881, float %963)  ; FMad(a,b,c)
  %965 = fmul fast float %959, %957
  %966 = fsub fast float %964, %965
  %967 = fmul fast float %962, %470
  %968 = fmul fast float %966, %471
  %969 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %970 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %955, %dx.types.Handle %969, float %967, float %968, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %971 = extractvalue %dx.types.ResRet.f32 %970, 1
  %972 = extractvalue %dx.types.ResRet.f32 %970, 3
  %973 = fadd fast float %971, %972
  %974 = fmul fast float %973, %520
  %975 = fsub fast float %974, %520
  %976 = fsub fast float %971, %972
  %977 = fmul fast float %976, %520
  %978 = fmul fast float %975, %953
  %979 = call float @dx.op.tertiary.f32(i32 46, float %952, float %977, float %978)  ; FMad(a,b,c)
  %980 = fmul fast float %975, %960
  %981 = call float @dx.op.tertiary.f32(i32 46, float %953, float %977, float %980)  ; FMad(a,b,c)
  %982 = fmul fast float %979, %470
  %983 = fmul fast float %981, %471
  %984 = fmul fast float %474, %346
  %985 = fadd fast float %984, %475
  %986 = call float @dx.op.binary.f32(i32 35, float %985, float 0.000000e+00)  ; FMax(a,b)
  %987 = fmul fast float %986, %866
  %988 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %902
  %989 = load float, float* %988, align 4, !tbaa !106, !noalias !115
  %990 = fmul fast float %987, %989
  %991 = fmul fast float %982, %990
  %992 = fmul fast float %983, %990
  %993 = fadd fast float %991, %903
  %994 = fadd fast float %992, %904
  %995 = add nuw nsw i32 %902, 1
  %996 = icmp eq i32 %995, 4
  br i1 %996, label %997, label %901, !llvm.loop !118

; <label>:997                                     ; preds = %901
  br label %998

; <label>:998                                     ; preds = %997, %840
  %999 = phi float [ %841, %840 ], [ %993, %997 ]
  %1000 = phi float [ %842, %840 ], [ %994, %997 ]
  %1001 = and i32 %438, 16
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1069, label %1003

; <label>:1003                                    ; preds = %998
  %1004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1005 = extractvalue %dx.types.CBufRet.f32 %1004, 0
  %1006 = extractvalue %dx.types.CBufRet.f32 %1004, 1
  %1007 = fadd fast float %1005, %153
  %1008 = fadd fast float %1006, %154
  %1009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1010 = extractvalue %dx.types.CBufRet.f32 %1009, 0
  %1011 = extractvalue %dx.types.CBufRet.f32 %1009, 1
  %1012 = fsub fast float %1007, %1010
  %1013 = fsub fast float %1008, %1011
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 2
  %1016 = fmul fast float %1012, %1015
  %1017 = fmul fast float %1013, %1015
  %1018 = fadd fast float %1016, 5.000000e-01
  %1019 = fadd fast float %1017, 5.000000e-01
  %1020 = fcmp fast olt float %1018, 0.000000e+00
  %1021 = fcmp fast olt float %1019, 0.000000e+00
  %1022 = or i1 %1020, %1021
  %1023 = fcmp fast oge float %1018, 1.000000e+00
  %1024 = fcmp fast oge float %1019, 1.000000e+00
  %1025 = or i1 %1023, %1024
  %1026 = or i1 %1022, %1025
  br i1 %1026, label %1060, label %1027

; <label>:1027                                    ; preds = %1003
  %1028 = extractvalue %dx.types.CBufRet.f32 %1004, 2
  %1029 = fadd fast float %1028, %155
  %1030 = fmul fast float %1015, %1007
  %1031 = fmul fast float %1015, %1008
  %1032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1033 = extractvalue %dx.types.CBufRet.f32 %1032, 2
  %1034 = fsub fast float %1029, %1033
  %1035 = extractvalue %dx.types.CBufRet.f32 %1032, 1
  %1036 = fmul fast float %1034, %1035
  %1037 = call float @dx.op.unary.f32(i32 7, float %1036)  ; Saturate(value)
  %1038 = call float @dx.op.binary.f32(i32 36, float %1019, float %1037)  ; FMin(a,b)
  %1039 = call float @dx.op.binary.f32(i32 36, float %1018, float %1038)  ; FMin(a,b)
  %1040 = call float @dx.op.binary.f32(i32 35, float %1019, float %1037)  ; FMax(a,b)
  %1041 = call float @dx.op.binary.f32(i32 35, float %1018, float %1040)  ; FMax(a,b)
  %1042 = fsub fast float 1.000000e+00, %1041
  %1043 = call float @dx.op.binary.f32(i32 36, float %1039, float %1042)  ; FMin(a,b)
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 3
  %1046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1047 = extractvalue %dx.types.CBufRet.f32 %1046, 1
  %1048 = call float @dx.op.binary.f32(i32 35, float %1047, float %1045)  ; FMax(a,b)
  %1049 = fsub fast float %1048, %1047
  %1050 = fsub fast float %1043, %1047
  %1051 = fdiv fast float %1050, %1049
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1053 = fmul fast float %1052, 2.000000e+00
  %1054 = fsub fast float 3.000000e+00, %1053
  %1055 = fmul fast float %1052, %1052
  %1056 = fmul fast float %1055, %1054
  %1057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %60, float %1030, float %1031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = fmul fast float %1056, %1058
  br label %1060

; <label>:1060                                    ; preds = %1027, %1003
  %1061 = phi float [ %1059, %1027 ], [ 0.000000e+00, %1003 ]
  %1062 = fmul fast float %514, %231
  %1063 = fmul fast float %514, %232
  %1064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %555, %dx.types.Handle %1064, float %1062, float %1063, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1066 = extractvalue %dx.types.ResRet.f32 %1065, 0
  %1067 = fmul fast float %1066, %1061
  %1068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1067)  ; FMax(a,b)
  br label %1069

; <label>:1069                                    ; preds = %1060, %998
  %1070 = phi float [ %1068, %1060 ], [ 0.000000e+00, %998 ]
  %1071 = fmul fast float %232, 3.906250e-03
  %1072 = fmul fast float %231, 7.812500e-03
  %1073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1074 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %555, %dx.types.Handle %1073, float %1072, float %1071, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1075 = add i32 %526, 0
  %1076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1075, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1077 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1076, i32 0)  ; GetDimensions(handle,mipLevel)
  %1078 = extractvalue %dx.types.Dimensions %1077, 0
  %1079 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1078)  ; FirstbitLo(value)
  %1080 = uitofp i32 %1079 to float
  %1081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1082 = extractvalue %dx.types.CBufRet.f32 %1081, 1
  %1083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1084 = extractvalue %dx.types.CBufRet.f32 %1083, 2
  %1085 = fadd fast float %241, -7.000000e+00
  %1086 = fadd fast float %1085, %1080
  %1087 = fadd fast float %1086, %1082
  %1088 = fadd fast float %1087, %1084
  %1089 = call float @dx.op.binary.f32(i32 35, float %1088, float 0.000000e+00)  ; FMax(a,b)
  %1090 = and i32 %438, 8
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1108, label %1092

; <label>:1092                                    ; preds = %1069
  %1093 = fadd fast float %511, 1.000000e+00
  %1094 = fmul fast float %845, %1093
  %1095 = fsub fast float %1094, %511
  %1096 = fsub fast float %1093, %1095
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = fsub fast float 1.000000e+00, %1094
  %1099 = call float @dx.op.unary.f32(i32 7, float %1098)  ; Saturate(value)
  %1100 = fsub fast float %1097, %1099
  %1101 = fsub fast float %1070, %1099
  %1102 = fdiv fast float %1101, %1100
  %1103 = call float @dx.op.unary.f32(i32 7, float %1102)  ; Saturate(value)
  %1104 = fmul fast float %1103, 2.000000e+00
  %1105 = fsub fast float 3.000000e+00, %1104
  %1106 = fmul fast float %1103, %1103
  %1107 = fmul fast float %1106, %1105
  br label %1108

; <label>:1108                                    ; preds = %1092, %1069
  %1109 = phi float [ %1107, %1092 ], [ %1070, %1069 ]
  %1110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1111 = extractvalue %dx.types.CBufRet.f32 %1110, 3
  %1112 = fmul fast float %1111, %1109
  %1113 = call float @dx.op.unary.f32(i32 7, float %1112)  ; Saturate(value)
  %1114 = and i32 %438, 32
  %1115 = icmp eq i32 %1114, 0
  br i1 %1115, label %1132, label %1116

; <label>:1116                                    ; preds = %1108
  %1117 = add i32 %529, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1117, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1118, %dx.types.Handle %61, float %1112, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  %1121 = extractvalue %dx.types.ResRet.f32 %1119, 1
  %1122 = extractvalue %dx.types.ResRet.f32 %1119, 2
  %1123 = extractvalue %dx.types.ResRet.f32 %1119, 3
  %1124 = and i32 %523, 255
  %1125 = uitofp i32 %1124 to float
  %1126 = lshr i32 %523, 8
  %1127 = and i32 %1126, 255
  %1128 = uitofp i32 %1127 to float
  %1129 = fmul fast float %1123, %1125
  %1130 = fadd fast float %1129, %1128
  %1131 = fmul fast float %1130, 0x3F70101000000000
  br label %1132

; <label>:1132                                    ; preds = %1116, %1108
  %1133 = phi float [ %1120, %1116 ], [ %494, %1108 ]
  %1134 = phi float [ %1121, %1116 ], [ %495, %1108 ]
  %1135 = phi float [ %1122, %1116 ], [ %496, %1108 ]
  %1136 = phi float [ %1131, %1116 ], [ %497, %1108 ]
  %1137 = fsub fast float %1133, %450
  %1138 = fsub fast float %1134, %451
  %1139 = fsub fast float %1135, %452
  %1140 = fmul fast float %1137, %1112
  %1141 = fmul fast float %1138, %1112
  %1142 = fmul fast float %1139, %1112
  %1143 = fadd fast float %1140, %450
  %1144 = fadd fast float %1141, %451
  %1145 = fadd fast float %1142, %452
  %1146 = fsub fast float %1136, %453
  %1147 = fmul fast float %1146, %1112
  %1148 = fadd fast float %1147, %453
  %1149 = fmul fast float %459, %372
  %1150 = fadd fast float %1149, %460
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 2
  %1153 = fcmp fast oge float %1150, %1152
  %1154 = and i32 %178, 65535
  %1155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1154)  ; LegacyF16ToF32(value)
  %1156 = lshr i32 %180, 16
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fadd fast float %1143, %1155
  %1159 = fadd fast float %1144, %1157
  %1160 = fadd fast float %1145, %1155
  %1161 = fadd fast float %1148, %1157
  %1162 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1158)  ; LegacyF32ToF16(value)
  %1163 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1159)  ; LegacyF32ToF16(value)
  %1164 = shl i32 %1163, 16
  %1165 = or i32 %1164, %1162
  %1166 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1160)  ; LegacyF32ToF16(value)
  %1167 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1161)  ; LegacyF32ToF16(value)
  %1168 = shl i32 %1167, 16
  %1169 = or i32 %1168, %1166
  %1170 = fadd fast float %1155, 1.000000e+00
  %1171 = fadd fast float %1157, %456
  %1172 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1170)  ; LegacyF32ToF16(value)
  %1173 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1171)  ; LegacyF32ToF16(value)
  %1174 = shl i32 %1173, 16
  %1175 = or i32 %1174, %1172
  %1176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1177 = extractvalue %dx.types.CBufRet.f32 %1176, 2
  %1178 = fmul fast float %1177, 0x3FE3C6EF40000000
  %1179 = frem fast float %98, 2.560000e+02
  %1180 = frem fast float %99, 2.560000e+02
  %1181 = fptoui float %1179 to i32
  %1182 = fptoui float %1180 to i32
  %1183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %1181, i32 %1182, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1184 = extractvalue %dx.types.ResRet.f32 %1183, 0
  %1185 = extractvalue %dx.types.ResRet.f32 %1183, 1
  %1186 = fadd fast float %1184, %1178
  %1187 = fadd fast float %1185, %1178
  %1188 = call float @dx.op.unary.f32(i32 22, float %1186)  ; Frc(value)
  %1189 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1190 = fcmp fast ogt float %119, 0.000000e+00
  %1191 = fcmp fast olt float %119, 0.000000e+00
  %1192 = zext i1 %1190 to i32
  %1193 = zext i1 %1191 to i32
  %1194 = sub nsw i32 %1192, %1193
  %1195 = sitofp i32 %1194 to float
  %1196 = fadd fast float %1195, %119
  %1197 = fdiv fast float -1.000000e+00, %1196
  %1198 = fmul fast float %117, %118
  %1199 = fmul fast float %1198, %1197
  %1200 = fmul fast float %117, %117
  %1201 = fmul fast float %1200, %1195
  %1202 = fmul fast float %1201, %1197
  %1203 = fadd fast float %1202, 1.000000e+00
  %1204 = fmul fast float %1199, %1195
  %1205 = fmul fast float %1195, %117
  %1206 = fsub fast float -0.000000e+00, %1205
  %1207 = fmul fast float %118, %118
  %1208 = fmul fast float %1207, %1197
  %1209 = fadd fast float %1208, %1195
  %1210 = fsub fast float -0.000000e+00, %118
  %1211 = and i32 %1162, 65535
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = lshr i32 %1165, 16
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = and i32 %1166, 65535
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = lshr i32 %1169, 16
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = and i32 %1172, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1175, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1224 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %1225 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1226 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1227 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %1228 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1229 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1230 = fadd fast float %1224, %153
  %1231 = fadd fast float %1225, %154
  %1232 = fadd fast float %1226, %155
  %1233 = fadd fast float %1227, %153
  %1234 = fadd fast float %1228, %154
  %1235 = fadd fast float %1229, %155
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = extractvalue %dx.types.CBufRet.f32 %1236, 1
  %1239 = extractvalue %dx.types.CBufRet.f32 %1236, 2
  %1240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1241 = extractvalue %dx.types.CBufRet.f32 %1240, 2
  %1242 = extractvalue %dx.types.CBufRet.f32 %1240, 3
  %1243 = fmul fast float %1237, %98
  %1244 = fmul fast float %1243, %1241
  %1245 = fmul fast float %1238, %99
  %1246 = fmul fast float %1245, %1242
  %1247 = fptoui float %1244 to i32
  %1248 = fptoui float %1246 to i32
  %1249 = fadd fast float %1237, -1.000000e+00
  %1250 = fadd fast float %1238, -1.000000e+00
  %1251 = fptoui float %1249 to i32
  %1252 = fptoui float %1250 to i32
  %1253 = call i32 @dx.op.binary.i32(i32 40, i32 %1247, i32 %1251)  ; UMin(a,b)
  %1254 = call i32 @dx.op.binary.i32(i32 40, i32 %1248, i32 %1252)  ; UMin(a,b)
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1258 = fmul fast float %1256, %87
  %1259 = fsub fast float %1258, %1257
  %1260 = fadd fast float %1239, -1.000000e+00
  %1261 = call float @dx.op.binary.f32(i32 36, float %1259, float %1260)  ; FMin(a,b)
  %1262 = fptoui float %1261 to i32
  %1263 = fptoui float %1237 to i32
  %1264 = fptoui float %1238 to i32
  %1265 = mul i32 %1262, %1264
  %1266 = add i32 %1265, %1254
  %1267 = mul i32 %1266, %1263
  %1268 = add i32 %1267, %1253
  %1269 = shl i32 %1268, 2
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1269, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = and i32 %1271, 1023
  %1273 = lshr i32 %1271, 10
  %1274 = icmp eq i32 %1272, 0
  br i1 %1274, label %1670, label %1275

; <label>:1275                                    ; preds = %1132
  %1276 = and i32 %1271, 1023
  br label %1277

; <label>:1277                                    ; preds = %1398, %1275
  %1278 = phi float [ %1399, %1398 ], [ 0.000000e+00, %1275 ]
  %1279 = phi float [ %1400, %1398 ], [ 0.000000e+00, %1275 ]
  %1280 = phi float [ %1401, %1398 ], [ 0.000000e+00, %1275 ]
  %1281 = phi float [ %1402, %1398 ], [ %999, %1275 ]
  %1282 = phi float [ %1403, %1398 ], [ %1000, %1275 ]
  %1283 = phi float [ %1404, %1398 ], [ %1220, %1275 ]
  %1284 = phi float [ %1405, %1398 ], [ %1223, %1275 ]
  %1285 = phi float [ %1406, %1398 ], [ 0.000000e+00, %1275 ]
  %1286 = phi float [ %1407, %1398 ], [ %1218, %1275 ]
  %1287 = phi float [ %1408, %1398 ], [ %1212, %1275 ]
  %1288 = phi float [ %1409, %1398 ], [ %1214, %1275 ]
  %1289 = phi float [ %1410, %1398 ], [ %1216, %1275 ]
  %1290 = phi i32 [ %1411, %1398 ], [ 0, %1275 ]
  %1291 = phi i32 [ %1347, %1398 ], [ 0, %1275 ]
  %1292 = add nuw nsw i32 %1291, %1273
  %1293 = shl i32 %1292, 2
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1293, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = shl i32 %1295, 8
  %1297 = or i32 %1296, 48
  %1298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = extractvalue %dx.types.ResRet.f32 %1298, 3
  %1303 = or i32 %1296, 64
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = extractvalue %dx.types.ResRet.i32 %1304, 1
  %1307 = or i32 %1296, 80
  %1308 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1311 = or i32 %1296, 96
  %1312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1311, i32 undef)  ; BufferLoad(srv,index,wot)
  %1313 = extractvalue %dx.types.ResRet.f32 %1312, 0
  %1314 = extractvalue %dx.types.ResRet.f32 %1312, 1
  %1315 = extractvalue %dx.types.ResRet.f32 %1312, 2
  %1316 = extractvalue %dx.types.ResRet.f32 %1312, 3
  %1317 = or i32 %1296, 112
  %1318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1317, i32 undef)  ; BufferLoad(srv,index,wot)
  %1319 = extractvalue %dx.types.ResRet.f32 %1318, 2
  %1320 = or i32 %1296, 128
  %1321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.ResRet.f32 %1321, 1
  %1324 = extractvalue %dx.types.ResRet.f32 %1321, 2
  %1325 = extractvalue %dx.types.ResRet.f32 %1321, 3
  %1326 = or i32 %1296, 144
  %1327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1326, i32 undef)  ; BufferLoad(srv,index,wot)
  %1328 = extractvalue %dx.types.ResRet.f32 %1327, 0
  %1329 = extractvalue %dx.types.ResRet.f32 %1327, 1
  %1330 = extractvalue %dx.types.ResRet.f32 %1327, 2
  %1331 = extractvalue %dx.types.ResRet.f32 %1327, 3
  %1332 = or i32 %1296, 160
  %1333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1332, i32 undef)  ; BufferLoad(srv,index,wot)
  %1334 = extractvalue %dx.types.ResRet.f32 %1333, 0
  %1335 = extractvalue %dx.types.ResRet.f32 %1333, 1
  %1336 = extractvalue %dx.types.ResRet.f32 %1333, 2
  %1337 = or i32 %1296, 192
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = or i32 %1296, 208
  %1341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1340, i32 undef)  ; BufferLoad(srv,index,wot)
  %1342 = extractvalue %dx.types.ResRet.f32 %1341, 0
  %1343 = or i32 %1296, 248
  %1344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1343, i32 undef)  ; BufferLoad(srv,index,wot)
  %1345 = extractvalue %dx.types.ResRet.f32 %1344, 0
  %1346 = extractvalue %dx.types.ResRet.f32 %1344, 1
  %1347 = add nuw nsw i32 %1291, 1
  %1348 = bitcast float %1302 to i32
  %1349 = and i32 %1348, 512
  %1350 = icmp ne i32 %1349, 0
  %1351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1296, i32 undef)  ; BufferLoad(srv,index,wot)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = extractvalue %dx.types.ResRet.f32 %1351, 1
  %1354 = extractvalue %dx.types.ResRet.f32 %1351, 2
  %1355 = extractvalue %dx.types.ResRet.f32 %1351, 3
  %1356 = call float @dx.op.dot4.f32(i32 56, float %1352, float %1353, float %1354, float %1355, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1357 = or i32 %1296, 16
  %1358 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = extractvalue %dx.types.ResRet.f32 %1358, 2
  %1362 = extractvalue %dx.types.ResRet.f32 %1358, 3
  %1363 = call float @dx.op.dot4.f32(i32 56, float %1359, float %1360, float %1361, float %1362, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1364 = or i32 %1296, 32
  %1365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1364, i32 undef)  ; BufferLoad(srv,index,wot)
  %1366 = extractvalue %dx.types.ResRet.f32 %1365, 0
  %1367 = extractvalue %dx.types.ResRet.f32 %1365, 1
  %1368 = extractvalue %dx.types.ResRet.f32 %1365, 2
  %1369 = extractvalue %dx.types.ResRet.f32 %1365, 3
  %1370 = call float @dx.op.dot4.f32(i32 56, float %1366, float %1367, float %1368, float %1369, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1371 = call float @dx.op.unary.f32(i32 27, float %1356)  ; Round_ni(value)
  %1372 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1373 = call float @dx.op.unary.f32(i32 27, float %1363)  ; Round_ni(value)
  %1374 = call float @dx.op.unary.f32(i32 6, float %1373)  ; FAbs(value)
  %1375 = call float @dx.op.unary.f32(i32 6, float %1370)  ; FAbs(value)
  %1376 = call float @dx.op.unary.f32(i32 27, float %1375)  ; Round_ni(value)
  %1377 = fadd fast float %1374, %1372
  %1378 = fadd fast float %1377, %1376
  %1379 = fcmp fast oeq float %1378, 0.000000e+00
  %1380 = call float @dx.op.dot4.f32(i32 56, float %1352, float %1353, float %1354, float %1355, float %1230, float %1231, float %1232, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1381 = call float @dx.op.dot4.f32(i32 56, float %1359, float %1360, float %1361, float %1362, float %1230, float %1231, float %1232, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1382 = call float @dx.op.dot4.f32(i32 56, float %1352, float %1353, float %1354, float %1355, float %1233, float %1234, float %1235, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1383 = call float @dx.op.dot4.f32(i32 56, float %1359, float %1360, float %1361, float %1362, float %1233, float %1234, float %1235, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1384 = fsub fast float %1380, %1356
  %1385 = fsub fast float %1382, %1356
  %1386 = fsub fast float %1381, %1363
  %1387 = fsub fast float %1383, %1363
  %1388 = call float @dx.op.dot3.f32(i32 55, float %1299, float %1300, float %1301, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 2
  %1391 = call float @dx.op.unary.f32(i32 6, float %1388)  ; FAbs(value)
  %1392 = fadd fast float %1391, %1390
  %1393 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1395 = fcmp fast ogt float %1393, %1394
  %1396 = and i1 %1379, %1395
  %1397 = and i1 %1350, %1396
  br i1 %1397, label %1413, label %1398

; <label>:1398                                    ; preds = %1656, %1494, %1413, %1277
  %1399 = phi float [ %1278, %1413 ], [ %1278, %1494 ], [ %1666, %1656 ], [ %1278, %1277 ]
  %1400 = phi float [ %1279, %1413 ], [ %1279, %1494 ], [ %1667, %1656 ], [ %1279, %1277 ]
  %1401 = phi float [ %1280, %1413 ], [ %1280, %1494 ], [ %1668, %1656 ], [ %1280, %1277 ]
  %1402 = phi float [ %1281, %1413 ], [ %1281, %1494 ], [ %1630, %1656 ], [ %1281, %1277 ]
  %1403 = phi float [ %1282, %1413 ], [ %1282, %1494 ], [ %1631, %1656 ], [ %1282, %1277 ]
  %1404 = phi float [ %1283, %1413 ], [ %1283, %1494 ], [ %1625, %1656 ], [ %1283, %1277 ]
  %1405 = phi float [ %1284, %1413 ], [ %1284, %1494 ], [ %1622, %1656 ], [ %1284, %1277 ]
  %1406 = phi float [ %1285, %1413 ], [ %1285, %1494 ], [ %1619, %1656 ], [ %1285, %1277 ]
  %1407 = phi float [ %1286, %1413 ], [ %1286, %1494 ], [ %1617, %1656 ], [ %1286, %1277 ]
  %1408 = phi float [ %1287, %1413 ], [ %1287, %1494 ], [ %1612, %1656 ], [ %1287, %1277 ]
  %1409 = phi float [ %1288, %1413 ], [ %1288, %1494 ], [ %1613, %1656 ], [ %1288, %1277 ]
  %1410 = phi float [ %1289, %1413 ], [ %1289, %1494 ], [ %1614, %1656 ], [ %1289, %1277 ]
  %1411 = phi i32 [ %1421, %1413 ], [ %1421, %1494 ], [ %1421, %1656 ], [ %1290, %1277 ]
  %1412 = icmp eq i32 %1347, %1276
  br i1 %1412, label %1669, label %1277

; <label>:1413                                    ; preds = %1277
  %1414 = extractvalue %dx.types.ResRet.f32 %1318, 3
  %1415 = extractvalue %dx.types.ResRet.f32 %1318, 1
  %1416 = extractvalue %dx.types.ResRet.f32 %1318, 0
  %1417 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1418 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1419 = extractvalue %dx.types.ResRet.i32 %1304, 3
  %1420 = extractvalue %dx.types.ResRet.i32 %1304, 2
  %1421 = add i32 %1290, 1
  %1422 = add i32 %1419, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1423, %dx.types.Handle %1073, float %1356, float %1363, float undef, float undef, i32 0, i32 0, i32 undef, float %1384, float %1386, float undef, float %1385, float %1387, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = fmul fast float %1425, %1418
  %1427 = fadd fast float %1426, %1417
  %1428 = call float @dx.op.unary.f32(i32 7, float %1427)  ; Saturate(value)
  %1429 = fmul fast float %1356, %1313
  %1430 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1363, float %1429)  ; FMad(a,b,c)
  %1431 = fadd fast float %1430, %1416
  %1432 = fmul fast float %1356, %1315
  %1433 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1363, float %1432)  ; FMad(a,b,c)
  %1434 = fadd fast float %1433, %1415
  %1435 = fmul fast float %1384, %1313
  %1436 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1386, float %1435)  ; FMad(a,b,c)
  %1437 = fmul fast float %1384, %1315
  %1438 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1386, float %1437)  ; FMad(a,b,c)
  %1439 = fmul fast float %1385, %1313
  %1440 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1387, float %1439)  ; FMad(a,b,c)
  %1441 = fmul fast float %1385, %1315
  %1442 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1387, float %1441)  ; FMad(a,b,c)
  %1443 = add i32 %1420, 0
  %1444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1443, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1445 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1444, %dx.types.Handle %1073, float %1431, float %1434, float undef, float undef, i32 0, i32 0, i32 undef, float %1436, float %1438, float undef, float %1440, float %1442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1446 = extractvalue %dx.types.ResRet.f32 %1445, 0
  %1447 = and i32 %1348, 1024
  %1448 = icmp ne i32 %1447, 0
  %1449 = fcmp fast ogt float %1446, 0x3FE0101020000000
  %1450 = uitofp i1 %1449 to float
  %1451 = select i1 %1448, float %1450, float %1446
  %1452 = and i32 %1348, 8192
  %1453 = icmp ne i32 %1452, 0
  %1454 = select i1 %1453, float %1414, float 1.000000e+00
  %1455 = fmul fast float %1356, 2.000000e+00
  %1456 = fadd fast float %1455, -1.000000e+00
  %1457 = call float @dx.op.unary.f32(i32 6, float %1456)  ; FAbs(value)
  %1458 = fmul fast float %1457, %1345
  %1459 = fsub fast float %1458, %1345
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1461 = fmul fast float %1363, 2.000000e+00
  %1462 = fadd fast float %1461, -1.000000e+00
  %1463 = call float @dx.op.unary.f32(i32 6, float %1462)  ; FAbs(value)
  %1464 = fmul fast float %1463, %1346
  %1465 = fsub fast float %1464, %1346
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  %1467 = fmul fast float %1375, %1309
  %1468 = fsub fast float %1467, %1309
  %1469 = call float @dx.op.unary.f32(i32 7, float %1468)  ; Saturate(value)
  %1470 = fmul fast float %1428, %1454
  %1471 = fmul fast float %1470, %1425
  %1472 = fmul fast float %1471, %1460
  %1473 = fmul fast float %1472, %1451
  %1474 = fmul fast float %1473, %1466
  %1475 = fmul fast float %1474, %1469
  %1476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1477 = extractvalue %dx.types.CBufRet.f32 %1476, 1
  %1478 = extractvalue %dx.types.CBufRet.f32 %1476, 0
  %1479 = fsub fast float %1393, %1478
  %1480 = fmul fast float %1479, %1477
  %1481 = call float @dx.op.unary.f32(i32 7, float %1480)  ; Saturate(value)
  %1482 = fmul fast float %1475, %1310
  %1483 = fadd fast float %1475, %1310
  %1484 = fmul fast float %1483, %1319
  %1485 = fsub fast float %1484, %1319
  %1486 = call float @dx.op.unary.f32(i32 7, float %1485)  ; Saturate(value)
  %1487 = and i32 %1348, 128
  %1488 = icmp ne i32 %1487, 0
  %1489 = select i1 %1488, float %1486, float %1482
  %1490 = fmul fast float %1489, %1481
  %1491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1492 = extractvalue %dx.types.CBufRet.f32 %1491, 0
  %1493 = fcmp fast ugt float %1490, %1492
  br i1 %1493, label %1494, label %1398

; <label>:1494                                    ; preds = %1413
  br i1 %1453, label %1398, label %1495

; <label>:1495                                    ; preds = %1494
  %1496 = and i32 %1348, 4
  %1497 = and i32 %1348, 8
  %1498 = add i32 %1305, 0
  %1499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1498, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1499, %dx.types.Handle %1500, float %1431, float %1434, float undef, float undef, i32 0, i32 0, i32 undef, float %1436, float %1438, float undef, float %1440, float %1442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1502 = extractvalue %dx.types.ResRet.f32 %1501, 0
  %1503 = extractvalue %dx.types.ResRet.f32 %1501, 1
  %1504 = extractvalue %dx.types.ResRet.f32 %1501, 2
  %1505 = extractvalue %dx.types.ResRet.f32 %1501, 3
  %1506 = bitcast float %1331 to i32
  %1507 = and i32 %1506, 255
  %1508 = uitofp i32 %1507 to float
  %1509 = lshr i32 %1506, 8
  %1510 = and i32 %1509, 255
  %1511 = uitofp i32 %1510 to float
  %1512 = fmul fast float %1505, %1508
  %1513 = fadd fast float %1512, %1511
  %1514 = fmul fast float %1513, 0x3F70101000000000
  %1515 = add i32 %1306, 0
  %1516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1515, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1517 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1516, %dx.types.Handle %1500, float %1431, float %1434, float undef, float undef, i32 0, i32 0, i32 undef, float %1436, float %1438, float undef, float %1440, float %1442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1518 = extractvalue %dx.types.ResRet.f32 %1517, 0
  %1519 = extractvalue %dx.types.ResRet.f32 %1517, 1
  %1520 = extractvalue %dx.types.ResRet.f32 %1517, 2
  %1521 = extractvalue %dx.types.ResRet.f32 %1517, 3
  %1522 = bitcast float %1325 to i32
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = lshr i32 %1522, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = lshr i32 %1522, 16
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101000000000
  %1532 = fmul fast float %1518, %1524
  %1533 = fadd fast float %1532, %1527
  %1534 = fmul fast float %1533, 0x3F70101000000000
  %1535 = fadd fast float %1519, -5.000000e-01
  %1536 = fadd fast float %1521, -5.000000e-01
  %1537 = fmul fast float %1535, %1531
  %1538 = fmul fast float %1536, %1531
  %1539 = fadd fast float %1537, 5.000000e-01
  %1540 = fadd fast float %1538, 5.000000e-01
  %1541 = fmul fast float %1502, %1334
  %1542 = fmul fast float %1503, %1335
  %1543 = fmul fast float %1504, %1336
  %1544 = fmul fast float %1539, 2.000000e+00
  %1545 = fadd fast float %1544, -1.000000e+00
  %1546 = fmul fast float %1540, 2.000000e+00
  %1547 = fadd fast float %1546, -1.000000e+00
  %1548 = fadd fast float %1545, %1547
  %1549 = fmul fast float %1548, 5.000000e-01
  %1550 = fsub fast float %1545, %1547
  %1551 = fmul fast float %1550, 5.000000e-01
  %1552 = call float @dx.op.unary.f32(i32 6, float %1549)  ; FAbs(value)
  %1553 = fsub fast float 1.000000e+00, %1552
  %1554 = call float @dx.op.unary.f32(i32 6, float %1551)  ; FAbs(value)
  %1555 = fsub fast float %1553, %1554
  %1556 = call float @dx.op.dot3.f32(i32 55, float %1549, float %1551, float %1555, float %1549, float %1551, float %1555)  ; Dot3(ax,ay,az,bx,by,bz)
  %1557 = call float @dx.op.unary.f32(i32 25, float %1556)  ; Rsqrt(value)
  %1558 = fmul fast float %1549, %1557
  %1559 = fmul fast float %1551, %1557
  %1560 = fmul fast float %1557, %1555
  %1561 = fmul fast float %1560, %1299
  %1562 = fmul fast float %1560, %1300
  %1563 = fmul fast float %1560, %1301
  %1564 = fmul fast float %1558, %1322
  %1565 = fmul fast float %1558, %1323
  %1566 = fmul fast float %1558, %1324
  %1567 = fadd fast float %1564, %1561
  %1568 = fadd fast float %1565, %1562
  %1569 = fadd fast float %1566, %1563
  %1570 = fmul fast float %1559, %1328
  %1571 = fmul fast float %1559, %1329
  %1572 = fmul fast float %1559, %1330
  %1573 = fadd fast float %1567, %1570
  %1574 = fadd fast float %1568, %1571
  %1575 = fadd fast float %1569, %1572
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1573, float %1574, float %1575, float %1573, float %1574, float %1575)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = call float @dx.op.unary.f32(i32 25, float %1576)  ; Rsqrt(value)
  %1578 = fmul fast float %1573, %1577
  %1579 = fmul fast float %1574, %1577
  %1580 = fmul fast float %1575, %1577
  %1581 = fcmp fast ogt float %1388, %1394
  %1582 = fsub fast float -0.000000e+00, %1578
  %1583 = fsub fast float -0.000000e+00, %1579
  %1584 = fsub fast float -0.000000e+00, %1580
  %1585 = select i1 %1581, float %1578, float %1582
  %1586 = select i1 %1581, float %1579, float %1583
  %1587 = select i1 %1581, float %1580, float %1584
  %1588 = fmul fast float %1585, %1203
  %1589 = call float @dx.op.tertiary.f32(i32 46, float %1586, float %1204, float %1588)  ; FMad(a,b,c)
  %1590 = call float @dx.op.tertiary.f32(i32 46, float %1587, float %1206, float %1589)  ; FMad(a,b,c)
  %1591 = fmul fast float %1585, %1199
  %1592 = call float @dx.op.tertiary.f32(i32 46, float %1586, float %1209, float %1591)  ; FMad(a,b,c)
  %1593 = call float @dx.op.tertiary.f32(i32 46, float %1587, float %1210, float %1592)  ; FMad(a,b,c)
  %1594 = icmp ne i32 %1497, 0
  %1595 = select i1 %1594, float 1.000000e+00, float 0.000000e+00
  %1596 = fmul fast float %1490, %1595
  %1597 = and i32 %1348, 1
  %1598 = icmp ne i32 %1597, 0
  %1599 = fadd fast float %1590, %1281
  %1600 = fadd fast float %1593, %1282
  %1601 = select i1 %1598, float %1599, float %1590
  %1602 = select i1 %1598, float %1600, float %1593
  %1603 = icmp ne i32 %1496, 0
  %1604 = select i1 %1603, float 1.000000e+00, float 0.000000e+00
  %1605 = fmul fast float %1490, %1604
  %1606 = fsub fast float %1541, %1287
  %1607 = fsub fast float %1542, %1288
  %1608 = fsub fast float %1543, %1289
  %1609 = fmul fast float %1606, %1605
  %1610 = fmul fast float %1607, %1605
  %1611 = fmul fast float %1608, %1605
  %1612 = fadd fast float %1609, %1287
  %1613 = fadd fast float %1610, %1288
  %1614 = fadd fast float %1611, %1289
  %1615 = fsub fast float %1514, %1286
  %1616 = fmul fast float %1615, %1605
  %1617 = fadd fast float %1616, %1286
  %1618 = fadd fast float %1490, %1285
  %1619 = call float @dx.op.unary.f32(i32 7, float %1618)  ; Saturate(value)
  %1620 = fsub fast float %1534, %1284
  %1621 = fmul fast float %1620, %1596
  %1622 = fadd fast float %1621, %1284
  %1623 = fsub fast float %1520, %1283
  %1624 = fmul fast float %1623, %1596
  %1625 = fadd fast float %1624, %1283
  %1626 = fsub fast float %1601, %1281
  %1627 = fsub fast float %1602, %1282
  %1628 = fmul fast float %1626, %1596
  %1629 = fmul fast float %1627, %1596
  %1630 = fadd fast float %1628, %1281
  %1631 = fadd fast float %1629, %1282
  %1632 = and i32 %1348, 16
  %1633 = icmp eq i32 %1632, 0
  br i1 %1633, label %1656, label %1634

; <label>:1634                                    ; preds = %1495
  %1635 = bitcast float %1342 to i32
  %1636 = add i32 %1339, 0
  %1637 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1636, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1638 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1637, %dx.types.Handle %1500, float %1431, float %1434, float undef, float undef, i32 0, i32 0, i32 undef, float %1436, float %1438, float undef, float %1440, float %1442, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1639 = extractvalue %dx.types.ResRet.f32 %1638, 0
  %1640 = extractvalue %dx.types.ResRet.f32 %1638, 1
  %1641 = extractvalue %dx.types.ResRet.f32 %1638, 2
  %1642 = and i32 %1635, 65535
  %1643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1642)  ; LegacyF16ToF32(value)
  %1644 = fmul fast float %1639, %1334
  %1645 = fmul fast float %1640, %1335
  %1646 = fmul fast float %1641, %1336
  %1647 = and i32 %1348, 16384
  %1648 = icmp ne i32 %1647, 0
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 0
  %1651 = select i1 %1648, float %1650, float 1.000000e+00
  %1652 = fmul fast float %1651, %1643
  %1653 = fmul fast float %1644, %1652
  %1654 = fmul fast float %1645, %1652
  %1655 = fmul fast float %1646, %1652
  br label %1656

; <label>:1656                                    ; preds = %1634, %1495
  %1657 = phi float [ %1653, %1634 ], [ 0.000000e+00, %1495 ]
  %1658 = phi float [ %1654, %1634 ], [ 0.000000e+00, %1495 ]
  %1659 = phi float [ %1655, %1634 ], [ 0.000000e+00, %1495 ]
  %1660 = fsub fast float %1657, %1278
  %1661 = fsub fast float %1658, %1279
  %1662 = fsub fast float %1659, %1280
  %1663 = fmul fast float %1660, %1490
  %1664 = fmul fast float %1661, %1490
  %1665 = fmul fast float %1662, %1490
  %1666 = fadd fast float %1663, %1278
  %1667 = fadd fast float %1664, %1279
  %1668 = fadd fast float %1665, %1280
  br label %1398

; <label>:1669                                    ; preds = %1398
  br label %1670

; <label>:1670                                    ; preds = %1669, %1132
  %1671 = phi float [ 0.000000e+00, %1132 ], [ %1399, %1669 ]
  %1672 = phi float [ 0.000000e+00, %1132 ], [ %1400, %1669 ]
  %1673 = phi float [ 0.000000e+00, %1132 ], [ %1401, %1669 ]
  %1674 = phi float [ %999, %1132 ], [ %1402, %1669 ]
  %1675 = phi float [ %1000, %1132 ], [ %1403, %1669 ]
  %1676 = phi float [ %1220, %1132 ], [ %1404, %1669 ]
  %1677 = phi float [ %1223, %1132 ], [ %1405, %1669 ]
  %1678 = phi float [ 0.000000e+00, %1132 ], [ %1406, %1669 ]
  %1679 = phi float [ %1218, %1132 ], [ %1407, %1669 ]
  %1680 = phi float [ %1212, %1132 ], [ %1408, %1669 ]
  %1681 = phi float [ %1214, %1132 ], [ %1409, %1669 ]
  %1682 = phi float [ %1216, %1132 ], [ %1410, %1669 ]
  %1683 = phi i32 [ 0, %1132 ], [ %1411, %1669 ]
  %1684 = uitofp i32 %1683 to float
  %1685 = fptoui float %1684 to i32
  %1686 = shl i32 %1685, 16
  %1687 = and i32 %1686, 16711680
  %1688 = call float @dx.op.dot2.f32(i32 54, float %1674, float %1675, float %1674, float %1675)  ; Dot2(ax,ay,bx,by)
  %1689 = fmul fast float %1688, 0x3FE3333340000000
  %1690 = fsub fast float 1.000000e+00, %1689
  %1691 = call float @dx.op.dot3.f32(i32 55, float %1674, float %1675, float %1690, float %1674, float %1675, float %1690)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = call float @dx.op.unary.f32(i32 25, float %1691)  ; Rsqrt(value)
  %1693 = fmul fast float %1692, %1674
  %1694 = fmul fast float %1692, %1675
  %1695 = fmul fast float %1690, %1692
  %1696 = fmul fast float %1695, %117
  %1697 = fmul fast float %1695, %118
  %1698 = fmul fast float %1695, %119
  %1699 = fmul fast float %1693, %1203
  %1700 = fmul fast float %1693, %1204
  %1701 = fmul fast float %1693, %1206
  %1702 = fadd fast float %1696, %1699
  %1703 = fadd fast float %1697, %1700
  %1704 = fadd fast float %1698, %1701
  %1705 = fmul fast float %1694, %1199
  %1706 = fmul fast float %1694, %1209
  %1707 = fmul fast float %1694, %1210
  %1708 = fadd fast float %1702, %1705
  %1709 = fadd fast float %1703, %1706
  %1710 = fadd fast float %1704, %1707
  %1711 = call float @dx.op.dot3.f32(i32 55, float %1708, float %1709, float %1710, float %1708, float %1709, float %1710)  ; Dot3(ax,ay,az,bx,by,bz)
  %1712 = call float @dx.op.unary.f32(i32 25, float %1711)  ; Rsqrt(value)
  %1713 = fmul fast float %1708, %1712
  %1714 = fmul fast float %1709, %1712
  %1715 = fmul fast float %1710, %1712
  %1716 = fadd fast float %1679, 0xBFB99999A0000000
  %1717 = call float @dx.op.unary.f32(i32 7, float %1716)  ; Saturate(value)
  %1718 = fmul fast float %1717, 0x3FF1C71C80000000
  %1719 = call float @dx.op.binary.f32(i32 36, float %1679, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1720 = fsub fast float 1.000000e+00, %1718
  %1721 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1722 = fmul fast float %1721, %1680
  %1723 = fmul fast float %1721, %1681
  %1724 = fmul fast float %1721, %1682
  %1725 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1726 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1727 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1728 = fmul fast float %1718, %1680
  %1729 = fmul fast float %1718, %1681
  %1730 = fmul fast float %1718, %1682
  %1731 = fadd fast float %1728, %1719
  %1732 = fadd fast float %1729, %1719
  %1733 = fadd fast float %1730, %1719
  %1734 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1735 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1736 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1737 = fmul fast float %1735, 0x401CF23780000000
  %1738 = fadd fast float %1737, 0x3FF32641C0000000
  %1739 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1740 = call float @dx.op.unary.f32(i32 25, float %1739)  ; Rsqrt(value)
  %1741 = fmul fast float %1740, %153
  %1742 = fmul fast float %1740, %154
  %1743 = fmul fast float %1740, %155
  %1744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1745 = extractvalue %dx.types.CBufRet.f32 %1744, 0
  %1746 = fdiv fast float 1.000000e+00, %1738
  %1747 = select i1 %115, float %1746, float %1738
  %1748 = fadd fast float %1747, -1.000000e+00
  %1749 = fadd fast float %1747, 1.000000e+00
  %1750 = fdiv fast float %1748, %1749
  %1751 = fmul fast float %1750, %1750
  %1752 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %1753 = select i1 %115, float 0.000000e+00, float %1745
  %1754 = fadd fast float %1752, %1753
  %1755 = call float @dx.op.binary.f32(i32 35, float %1754, float -1.000000e+00)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1755, float 1.000000e+00)  ; FMin(a,b)
  %1757 = fmul fast float %1747, %1747
  %1758 = fmul fast float %1756, %1756
  %1759 = fsub fast float 1.000000e+00, %1758
  %1760 = fmul fast float %1757, %1759
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fcmp fast olt float %1747, 1.000000e+00
  %1763 = select i1 %1762, float %1758, float %1761
  %1764 = fcmp fast ogt float %1761, 0.000000e+00
  %1765 = fsub fast float 1.000000e+00, %1751
  %1766 = call float @dx.op.unary.f32(i32 24, float %1763)  ; Sqrt(value)
  %1767 = fsub fast float 1.000000e+00, %1766
  %1768 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  %1769 = fmul fast float %1768, 5.000000e+00
  %1770 = call float @dx.op.unary.f32(i32 21, float %1769)  ; Exp(value)
  %1771 = fmul fast float %1770, %1765
  %1772 = fadd fast float %1771, %1751
  %1773 = select i1 %1764, float %1772, float 1.000000e+00
  %1774 = select i1 %115, float %1773, float 0.000000e+00
  %1775 = and i32 %540, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = fmul fast float %1776, 0x3F70101020000000
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  %1779 = fmul fast float %153, %153
  %1780 = fmul fast float %154, %154
  %1781 = fadd fast float %1780, %1779
  %1782 = fmul fast float %155, %155
  %1783 = fadd fast float %1781, %1782
  %1784 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = fmul fast float %1786, %1784
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1789 = fadd fast float %1787, %1788
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1778, 2.550000e+02
  %1792 = fmul fast float %1791, %1790
  %1793 = fptoui float %1792 to i32
  %1794 = fsub fast float 1.000000e+00, %1734
  %1795 = fsub fast float 1.000000e+00, %1735
  %1796 = fsub fast float 1.000000e+00, %1736
  %1797 = fmul fast float %1774, %1794
  %1798 = fmul fast float %1774, %1795
  %1799 = fmul fast float %1774, %1796
  %1800 = fadd fast float %1797, %1734
  %1801 = fadd fast float %1798, %1735
  %1802 = fadd fast float %1799, %1736
  %1803 = fptoui float %98 to i32
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = fmul fast float %1805, 5.000000e-01
  %1807 = fptoui float %1806 to i32
  %1808 = icmp eq i32 %1803, %1807
  %1809 = fptoui float %99 to i32
  %1810 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = fptoui float %1811 to i32
  %1813 = icmp eq i32 %1809, %1812
  %1814 = and i1 %1808, %1813
  br i1 %1814, label %1815, label %1839

; <label>:1815                                    ; preds = %1670
  %1816 = call float @dx.op.binary.f32(i32 35, float %1801, float %1802)  ; FMax(a,b)
  %1817 = call float @dx.op.binary.f32(i32 35, float %1800, float %1816)  ; FMax(a,b)
  %1818 = fsub fast float 1.000000e+00, %1817
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.CBufRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.CBufRet.f32 %1819, 2
  %1823 = fadd fast float %1820, %153
  %1824 = fadd fast float %1821, %154
  %1825 = fadd fast float %1822, %155
  %1826 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %1803, i32 %1809, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = fcmp fast ogt float %1827, -1.000000e+00
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %1831 = select i1 %1828, float %1830, float 1.000000e+00
  %1832 = fadd fast float %1827, 1.000000e+00
  %1833 = fmul fast float %1831, %1832
  %1834 = call float @dx.op.unary.f32(i32 6, float %1833)  ; FAbs(value)
  %1835 = call float @dx.op.unary.f32(i32 83, float %79)  ; DerivCoarseX(value)
  %1836 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %1837 = call float @dx.op.unary.f32(i32 84, float %79)  ; DerivCoarseY(value)
  %1838 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1823, float %1824, float %1825, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %98, float %99, float %86, float %87, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %341, float %342, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %304, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %306, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %319, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %321, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1834, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1774, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1800, float %1801, float %1802, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1818, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %197, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %77, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %854, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %1835, float %1836, float %1837, float %1838, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %1839

; <label>:1839                                    ; preds = %1815, %1670
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = fmul fast float %1841, %1677
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1676)  ; Saturate(value)
  %1845 = fsub fast float 1.000000e+00, %1678
  %1846 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1845)  ; FMin(a,b)
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1734, float %1735, float %1736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = fsub fast float 1.000000e+00, %1847
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %56, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.i32 %1849, 0
  %1851 = and i32 %1850, 255
  %1852 = uitofp i32 %1851 to float
  %1853 = lshr i32 %1850, 8
  %1854 = and i32 %1853, 255
  %1855 = uitofp i32 %1854 to float
  %1856 = fmul fast float %1855, %1848
  %1857 = fadd fast float %1856, %1852
  %1858 = fmul fast float %1857, 0x3F70101020000000
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.i32 %1863, 3
  %1865 = and i32 %1864, 3
  %1866 = icmp ne i32 %1865, 0
  %1867 = and i32 %1864, 4
  %1868 = icmp ne i32 %1867, 0
  %1869 = and i1 %1866, %1868
  br i1 %1869, label %1870, label %1881

; <label>:1870                                    ; preds = %1839
  %1871 = extractvalue %dx.types.CBufRet.f32 %1862, 3
  %1872 = fmul fast float %1871, %99
  %1873 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1874 = fmul fast float %1873, %98
  %1875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %1874, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fcmp fast olt float %1877, %1879
  br label %1884

; <label>:1881                                    ; preds = %1839
  %1882 = icmp eq i32 %1867, 0
  %1883 = and i1 %1866, %1882
  br label %1884

; <label>:1884                                    ; preds = %1881, %1870
  %1885 = phi i1 [ %1880, %1870 ], [ %1883, %1881 ]
  %1886 = fsub fast float -0.000000e+00, %155
  %1887 = fsub fast float -0.000000e+00, %1741
  %1888 = fsub fast float -0.000000e+00, %1742
  %1889 = fsub fast float -0.000000e+00, %1743
  %1890 = select i1 %1885, float 0.000000e+00, float %1736
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float %1887, float %1888, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fmul fast float %1752, 2.000000e+00
  %1894 = fmul fast float %1893, %1713
  %1895 = fmul fast float %1893, %1714
  %1896 = fmul fast float %1893, %1715
  %1897 = fsub fast float %1741, %1894
  %1898 = fsub fast float %1742, %1895
  %1899 = fsub fast float %1743, %1896
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %1901 = extractvalue %dx.types.CBufRet.f32 %1900, 0
  %1902 = bitcast float %1901 to i32
  %1903 = lshr i32 %1902, 8
  %1904 = and i32 %1903, 255
  %1905 = uitofp i32 %1904 to float
  %1906 = fptoui float %1905 to i32
  %1907 = and i32 %1906, 4
  %1908 = icmp ne i32 %1907, 0
  %1909 = select i1 %1908, float %1844, float 1.000000e+00
  %1910 = call float @dx.op.binary.f32(i32 36, float %1909, float 1.000000e+00)  ; FMin(a,b)
  %1911 = fsub fast float 1.000000e+00, %1910
  %1912 = bitcast float %1911 to i32
  %1913 = ashr i32 %1912, 1
  %1914 = add nsw i32 %1913, 532487669
  %1915 = bitcast i32 %1914 to float
  %1916 = fsub fast float 1.000000e+00, %1843
  %1917 = call float @dx.op.binary.f32(i32 35, float %1916, float 0x3F847AE140000000)  ; FMax(a,b)
  %1918 = fmul fast float %1917, %1917
  %1919 = fmul fast float %1918, %1918
  %1920 = call float @dx.op.unary.f32(i32 7, float %1892)  ; Saturate(value)
  %1921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %61, float %1915, float %1919, float %1920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = and i32 %1906, 1
  %1924 = icmp ne i32 %1923, 0
  %1925 = fsub fast float 1.000000e+00, %1909
  %1926 = bitcast float %1925 to i32
  %1927 = sub nsw i32 2129859010, %1926
  %1928 = bitcast i32 %1927 to float
  %1929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.i32 %1929, 0
  %1931 = icmp eq i32 %1930, 1
  %1932 = select i1 %1931, float 0.000000e+00, float 1.000000e+00
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1935 = fcmp fast ogt float %1934, 0.000000e+00
  %1936 = fcmp fast ogt float %1932, 0.000000e+00
  %1937 = and i1 %1935, %1936
  br i1 %1937, label %1938, label %2122, !dx.controlflow.hints !120

; <label>:1938                                    ; preds = %1884
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1943 = fadd fast float %1940, %153
  %1944 = fadd fast float %1941, %154
  %1945 = fadd fast float %1942, %155
  %1946 = fmul fast float %1713, 3.200000e+01
  %1947 = fmul fast float %1714, 3.200000e+01
  %1948 = fadd fast float %1943, %1946
  %1949 = fadd fast float %1944, %1947
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = fsub fast float %1948, %1951
  %1954 = fsub fast float %1949, %1952
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1958 = fmul fast float %1953, %1956
  %1959 = fmul fast float %1954, %1957
  %1960 = fmul fast float %153, %153
  %1961 = fmul fast float %154, %154
  %1962 = fadd fast float %1960, %1961
  %1963 = call float @dx.op.unary.f32(i32 24, float %1962)  ; Sqrt(value)
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1965 = extractvalue %dx.types.CBufRet.f32 %1964, 0
  %1966 = extractvalue %dx.types.CBufRet.f32 %1964, 1
  %1967 = fsub fast float %1963, %1965
  %1968 = fdiv fast float %1967, %1966
  %1969 = call float @dx.op.unary.f32(i32 7, float %1968)  ; Saturate(value)
  %1970 = fmul fast float %1969, 2.000000e+00
  %1971 = fsub fast float 3.000000e+00, %1970
  %1972 = fmul fast float %1969, %1969
  %1973 = fmul fast float %1972, %1971
  %1974 = fcmp fast oge float %1958, 0.000000e+00
  %1975 = fcmp fast ole float %1958, 1.000000e+00
  %1976 = and i1 %1975, %1974
  %1977 = fcmp fast oge float %1959, 0.000000e+00
  %1978 = and i1 %1977, %1976
  %1979 = fcmp fast ole float %1959, 1.000000e+00
  %1980 = and i1 %1979, %1978
  %1981 = fcmp fast ogt float %1973, 0.000000e+00
  %1982 = and i1 %1981, %1980
  br i1 %1982, label %1983, label %2106, !dx.controlflow.hints !121

; <label>:1983                                    ; preds = %1938
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1985 = extractvalue %dx.types.CBufRet.f32 %1984, 2
  %1986 = extractvalue %dx.types.CBufRet.f32 %1984, 3
  %1987 = fmul fast float %1985, %1958
  %1988 = fmul fast float %1986, %1959
  %1989 = call float @dx.op.unary.f32(i32 27, float %1987)  ; Round_ni(value)
  %1990 = call float @dx.op.unary.f32(i32 27, float %1988)  ; Round_ni(value)
  %1991 = fptosi float %1989 to i32
  %1992 = fptosi float %1990 to i32
  %1993 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %1991, i32 %1992, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = lshr i32 %1994, 16
  %1996 = icmp eq i32 %1995, 65535
  br i1 %1996, label %2106, label %1997

; <label>:1997                                    ; preds = %1983
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2000 = fmul fast float %1999, %1958
  %2001 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2002 = fadd fast float %2000, %2001
  %2003 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2004 = fmul fast float %2003, %1959
  %2005 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2006 = fadd fast float %2004, %2005
  %2007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2002, float %2006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2011 = extractvalue %dx.types.CBufRet.f32 %2010, 1
  %2012 = extractvalue %dx.types.CBufRet.f32 %2010, 0
  %2013 = fsub fast float %2011, %2012
  %2014 = fmul fast float %2013, %2008
  %2015 = fadd fast float %2014, %2012
  %2016 = extractvalue %dx.types.CBufRet.f32 %2010, 3
  %2017 = extractvalue %dx.types.CBufRet.f32 %2010, 2
  %2018 = fsub fast float %2016, %2017
  %2019 = fmul fast float %2018, %2009
  %2020 = fadd fast float %2019, %2017
  %2021 = fsub fast float %1945, %2015
  %2022 = fsub fast float %2020, %2015
  %2023 = fdiv fast float %2021, %2022
  %2024 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2025 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %2026 = extractvalue %dx.types.CBufRet.f32 %1984, 0
  %2027 = extractvalue %dx.types.CBufRet.f32 %1984, 1
  %2028 = fmul fast float %2026, %1958
  %2029 = fmul fast float %2027, %1959
  %2030 = fmul fast float %2028, 1.250000e-01
  %2031 = fmul fast float %2029, 1.250000e-01
  %2032 = call float @dx.op.unary.f32(i32 27, float %2030)  ; Round_ni(value)
  %2033 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2034 = fmul fast float %2032, 8.000000e+00
  %2035 = fmul fast float %2033, 8.000000e+00
  %2036 = fsub fast float %2028, %2034
  %2037 = fsub fast float %2029, %2035
  %2038 = fadd fast float %2036, 5.000000e-01
  %2039 = fadd fast float %2037, 5.000000e-01
  %2040 = and i32 %1995, 255
  %2041 = lshr i32 %1994, 24
  %2042 = mul nuw nsw i32 %2040, 9
  %2043 = uitofp i32 %2042 to float
  %2044 = mul nuw nsw i32 %2041, 9
  %2045 = uitofp i32 %2044 to float
  %2046 = fadd fast float %2038, %2043
  %2047 = fadd fast float %2039, %2045
  %2048 = fdiv fast float %2046, %1934
  %2049 = fdiv fast float %2047, %2025
  %2050 = fmul fast float %2024, 4.375000e-01
  %2051 = fadd fast float %2050, 3.125000e-02
  %2052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2048, float %2049, float %2051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = fadd fast float %2050, 5.312500e-01
  %2057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2048, float %2049, float %2056, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = fmul fast float %2058, 2.000000e+00
  %2062 = fmul fast float %2059, 2.000000e+00
  %2063 = fmul fast float %2060, 2.000000e+00
  %2064 = fadd fast float %2061, -1.000000e+00
  %2065 = fadd fast float %2062, -1.000000e+00
  %2066 = fadd fast float %2063, -1.000000e+00
  %2067 = fmul fast float %2064, %2064
  %2068 = fmul fast float %2065, %2065
  %2069 = fadd fast float %2067, %2068
  %2070 = fmul fast float %2066, %2066
  %2071 = fadd fast float %2069, %2070
  %2072 = call float @dx.op.unary.f32(i32 24, float %2071)  ; Sqrt(value)
  %2073 = fcmp fast ogt float %2072, 0.000000e+00
  br i1 %2073, label %2074, label %2078

; <label>:2074                                    ; preds = %1997
  %2075 = fdiv fast float %2064, %2072
  %2076 = fdiv fast float %2065, %2072
  %2077 = fdiv fast float %2066, %2072
  br label %2078

; <label>:2078                                    ; preds = %2074, %1997
  %2079 = phi float [ %2075, %2074 ], [ 0.000000e+00, %1997 ]
  %2080 = phi float [ %2076, %2074 ], [ 0.000000e+00, %1997 ]
  %2081 = phi float [ %2077, %2074 ], [ 0.000000e+00, %1997 ]
  %2082 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = fmul fast float %2083, 0x400C5BF8A0000000
  %2085 = fmul fast float %2053, %1973
  %2086 = fmul fast float %2085, %2084
  %2087 = fmul fast float %2054, %1973
  %2088 = fmul fast float %2087, %2084
  %2089 = fmul fast float %2055, %1973
  %2090 = fmul fast float %2089, %2084
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 3
  %2093 = fmul fast float %2086, %2092
  %2094 = fmul fast float %2088, %2092
  %2095 = fmul fast float %2090, %2092
  %2096 = fcmp fast ogt float %1945, %2020
  br i1 %2096, label %2097, label %2106

; <label>:2097                                    ; preds = %2078
  %2098 = fmul fast float %2022, 0x3FC24924A0000000
  %2099 = fsub fast float %1945, %2020
  %2100 = fdiv fast float %2099, %2098
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2102 = fsub fast float 1.000000e+00, %2101
  %2103 = fmul fast float %2102, %2093
  %2104 = fmul fast float %2102, %2094
  %2105 = fmul fast float %2102, %2095
  br label %2106

; <label>:2106                                    ; preds = %2097, %2078, %1983, %1938
  %2107 = phi float [ %2105, %2097 ], [ %2095, %2078 ], [ 0.000000e+00, %1983 ], [ 0.000000e+00, %1938 ]
  %2108 = phi float [ %2104, %2097 ], [ %2094, %2078 ], [ 0.000000e+00, %1983 ], [ 0.000000e+00, %1938 ]
  %2109 = phi float [ %2103, %2097 ], [ %2093, %2078 ], [ 0.000000e+00, %1983 ], [ 0.000000e+00, %1938 ]
  %2110 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2109)  ; FMax(a,b)
  %2111 = fmul fast float %2110, 0x3FD20DD760000000
  %2112 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2108)  ; FMax(a,b)
  %2113 = fmul fast float %2112, 0x3FD20DD760000000
  %2114 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2107)  ; FMax(a,b)
  %2115 = fmul fast float %2114, 0x3FD20DD760000000
  %2116 = call float @dx.op.binary.f32(i32 35, float %2111, float 0.000000e+00)  ; FMax(a,b)
  %2117 = call float @dx.op.binary.f32(i32 35, float %2113, float 0.000000e+00)  ; FMax(a,b)
  %2118 = call float @dx.op.binary.f32(i32 35, float %2115, float 0.000000e+00)  ; FMax(a,b)
  %2119 = fmul fast float %2116, %1932
  %2120 = fmul fast float %2117, %1932
  %2121 = fmul fast float %2118, %1932
  br label %2122

; <label>:2122                                    ; preds = %2106, %1884
  %2123 = phi float [ %2119, %2106 ], [ 0.000000e+00, %1884 ]
  %2124 = phi float [ %2120, %2106 ], [ 0.000000e+00, %1884 ]
  %2125 = phi float [ %2121, %2106 ], [ 0.000000e+00, %1884 ]
  br i1 %1931, label %2126, label %2918, !dx.controlflow.hints !122

; <label>:2126                                    ; preds = %2122
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2131 = fadd fast float %2128, %153
  %2132 = fadd fast float %2129, %154
  %2133 = fadd fast float %2130, %155
  %2134 = fmul fast float %1713, 3.200000e+01
  %2135 = fmul fast float %1714, 3.200000e+01
  %2136 = fadd fast float %2131, %2134
  %2137 = fadd fast float %2132, %2135
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2141 = fsub fast float %2136, %2139
  %2142 = fsub fast float %2137, %2140
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = fmul fast float %2141, %2144
  %2147 = fmul fast float %2142, %2145
  %2148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2148, 0
  %2150 = fmul fast float %2146, %2149
  %2151 = extractvalue %dx.types.CBufRet.f32 %2148, 1
  %2152 = fadd fast float %2150, %2151
  %2153 = extractvalue %dx.types.CBufRet.f32 %2148, 2
  %2154 = fmul fast float %2153, %2147
  %2155 = extractvalue %dx.types.CBufRet.f32 %2148, 3
  %2156 = fadd fast float %2154, %2155
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2152, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2161 = extractvalue %dx.types.CBufRet.f32 %2160, 1
  %2162 = extractvalue %dx.types.CBufRet.f32 %2160, 0
  %2163 = fsub fast float %2161, %2162
  %2164 = fmul fast float %2163, %2158
  %2165 = fadd fast float %2164, %2162
  %2166 = extractvalue %dx.types.CBufRet.f32 %2160, 3
  %2167 = extractvalue %dx.types.CBufRet.f32 %2160, 2
  %2168 = fsub fast float %2166, %2167
  %2169 = fmul fast float %2168, %2159
  %2170 = fadd fast float %2169, %2167
  %2171 = fsub fast float %2133, %2165
  %2172 = fsub fast float %2170, %2165
  %2173 = fdiv fast float %2171, %2172
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = fmul fast float %2176, %2174
  %2178 = extractvalue %dx.types.CBufRet.f32 %2175, 1
  %2179 = fadd fast float %2177, %2178
  %2180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %61, float %2152, float %2156, float %2179, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = fmul fast float %2185, %2181
  %2189 = fmul fast float %2186, %2182
  %2190 = fmul fast float %2187, %2183
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = fadd fast float %2188, %2192
  %2196 = fadd fast float %2189, %2193
  %2197 = fadd fast float %2190, %2194
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = fmul fast float %2199, %2146
  %2201 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2202 = fadd fast float %2200, %2201
  %2203 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2204 = fmul fast float %2203, %2147
  %2205 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2206 = fadd fast float %2204, %2205
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.CBufRet.f32 %2207, 2
  %2211 = extractvalue %dx.types.CBufRet.f32 %2207, 3
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2216 = extractvalue %dx.types.CBufRet.f32 %2212, 3
  %2217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2202, float %2206, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.ResRet.f32 %2217, 2
  %2221 = extractvalue %dx.types.ResRet.f32 %2217, 3
  %2222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2202, float %2206, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.ResRet.f32 %2222, 3
  %2227 = fmul fast float %2218, %2195
  %2228 = fmul fast float %2223, %2195
  %2229 = fmul fast float %2225, %2195
  %2230 = fmul fast float %2221, %2195
  %2231 = fadd fast float %2227, %2208
  %2232 = fadd fast float %2228, %2209
  %2233 = fadd fast float %2229, %2210
  %2234 = fadd fast float %2230, %2211
  %2235 = fmul fast float %2219, %2195
  %2236 = fmul fast float %2224, %2195
  %2237 = fadd fast float %2235, %2213
  %2238 = fadd fast float %2236, %2214
  %2239 = fmul fast float %2220, %2195
  %2240 = fmul fast float %2226, %2195
  %2241 = fadd fast float %2239, %2215
  %2242 = fadd fast float %2240, %2216
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2202, float %2206, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.ResRet.f32 %2243, 1
  %2246 = extractvalue %dx.types.ResRet.f32 %2243, 2
  %2247 = extractvalue %dx.types.ResRet.f32 %2243, 3
  %2248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2202, float %2206, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2249 = extractvalue %dx.types.ResRet.f32 %2248, 0
  %2250 = extractvalue %dx.types.ResRet.f32 %2248, 1
  %2251 = extractvalue %dx.types.ResRet.f32 %2248, 2
  %2252 = extractvalue %dx.types.ResRet.f32 %2248, 3
  %2253 = fmul fast float %2244, %2196
  %2254 = fmul fast float %2249, %2196
  %2255 = fmul fast float %2251, %2196
  %2256 = fmul fast float %2247, %2196
  %2257 = fadd fast float %2231, %2253
  %2258 = fadd fast float %2232, %2254
  %2259 = fadd fast float %2233, %2255
  %2260 = fadd fast float %2234, %2256
  %2261 = fmul fast float %2245, %2196
  %2262 = fmul fast float %2250, %2196
  %2263 = fadd fast float %2237, %2261
  %2264 = fadd fast float %2238, %2262
  %2265 = fmul fast float %2246, %2196
  %2266 = fmul fast float %2252, %2196
  %2267 = fadd fast float %2241, %2265
  %2268 = fadd fast float %2242, %2266
  %2269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2202, float %2206, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.ResRet.f32 %2269, 3
  %2274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2202, float %2206, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2275 = extractvalue %dx.types.ResRet.f32 %2274, 0
  %2276 = extractvalue %dx.types.ResRet.f32 %2274, 1
  %2277 = extractvalue %dx.types.ResRet.f32 %2274, 2
  %2278 = extractvalue %dx.types.ResRet.f32 %2274, 3
  %2279 = fmul fast float %2270, %2197
  %2280 = fmul fast float %2275, %2197
  %2281 = fmul fast float %2277, %2197
  %2282 = fmul fast float %2273, %2197
  %2283 = fadd fast float %2257, %2279
  %2284 = fadd fast float %2258, %2280
  %2285 = fadd fast float %2259, %2281
  %2286 = fadd fast float %2260, %2282
  %2287 = fmul fast float %2271, %2197
  %2288 = fmul fast float %2276, %2197
  %2289 = fadd fast float %2263, %2287
  %2290 = fadd fast float %2264, %2288
  %2291 = fmul fast float %2272, %2197
  %2292 = fmul fast float %2278, %2197
  %2293 = fadd fast float %2267, %2291
  %2294 = fadd fast float %2268, %2292
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 0
  %2297 = fsub fast float %2131, %2296
  %2298 = fsub fast float %2139, %2131
  %2299 = call float @dx.op.binary.f32(i32 35, float %2298, float %2297)  ; FMax(a,b)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2301 = fsub fast float %2132, %2300
  %2302 = fsub fast float %2140, %2132
  %2303 = call float @dx.op.binary.f32(i32 35, float %2302, float %2301)  ; FMax(a,b)
  %2304 = call float @dx.op.binary.f32(i32 35, float %2299, float %2303)  ; FMax(a,b)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2143, 3
  %2306 = fmul fast float %2305, %2304
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2313 = fsub fast float %2309, %2283
  %2314 = fsub fast float %2310, %2284
  %2315 = fsub fast float %2311, %2285
  %2316 = fsub fast float %2312, %2286
  %2317 = fmul fast float %2313, %2307
  %2318 = fmul fast float %2314, %2307
  %2319 = fmul fast float %2315, %2307
  %2320 = fmul fast float %2316, %2307
  %2321 = fadd fast float %2317, %2283
  %2322 = fadd fast float %2318, %2284
  %2323 = fadd fast float %2319, %2285
  %2324 = fadd fast float %2320, %2286
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2326 = extractvalue %dx.types.CBufRet.f32 %2325, 0
  %2327 = extractvalue %dx.types.CBufRet.f32 %2325, 1
  %2328 = fsub fast float %2326, %2289
  %2329 = fsub fast float %2327, %2290
  %2330 = fmul fast float %2328, %2307
  %2331 = fmul fast float %2329, %2307
  %2332 = fadd fast float %2330, %2289
  %2333 = fadd fast float %2331, %2290
  %2334 = extractvalue %dx.types.CBufRet.f32 %2325, 2
  %2335 = extractvalue %dx.types.CBufRet.f32 %2325, 3
  %2336 = fsub fast float %2334, %2293
  %2337 = fsub fast float %2335, %2294
  %2338 = fmul fast float %2336, %2307
  %2339 = fmul fast float %2337, %2307
  %2340 = fadd fast float %2338, %2293
  %2341 = fadd fast float %2339, %2294
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = fmul fast float %2343, %2321
  %2345 = fmul fast float %2343, %2322
  %2346 = fmul fast float %2343, %2323
  %2347 = fmul fast float %2343, %2324
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2350 = fmul fast float %2349, %2332
  %2351 = fmul fast float %2349, %2333
  %2352 = fadd fast float %2350, %2344
  %2353 = fadd fast float %2351, %2346
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2355 = extractvalue %dx.types.CBufRet.f32 %2354, 0
  %2356 = fmul fast float %2355, %2340
  %2357 = fmul fast float %2355, %2341
  %2358 = fadd fast float %2352, %2356
  %2359 = fadd fast float %2353, %2357
  %2360 = extractvalue %dx.types.CBufRet.f32 %2342, 1
  %2361 = fmul fast float %2360, %2321
  %2362 = fmul fast float %2360, %2322
  %2363 = fmul fast float %2360, %2323
  %2364 = fmul fast float %2360, %2324
  %2365 = extractvalue %dx.types.CBufRet.f32 %2348, 1
  %2366 = fmul fast float %2365, %2332
  %2367 = fmul fast float %2365, %2333
  %2368 = fadd fast float %2366, %2361
  %2369 = fadd fast float %2367, %2363
  %2370 = extractvalue %dx.types.CBufRet.f32 %2354, 1
  %2371 = fmul fast float %2370, %2340
  %2372 = fmul fast float %2370, %2341
  %2373 = fadd fast float %2368, %2371
  %2374 = fadd fast float %2369, %2372
  %2375 = extractvalue %dx.types.CBufRet.f32 %2342, 2
  %2376 = fmul fast float %2375, %2321
  %2377 = fmul fast float %2375, %2322
  %2378 = fmul fast float %2375, %2323
  %2379 = fmul fast float %2375, %2324
  %2380 = extractvalue %dx.types.CBufRet.f32 %2348, 2
  %2381 = fmul fast float %2380, %2332
  %2382 = fmul fast float %2380, %2333
  %2383 = fadd fast float %2381, %2376
  %2384 = fadd fast float %2382, %2378
  %2385 = extractvalue %dx.types.CBufRet.f32 %2354, 2
  %2386 = fmul fast float %2385, %2340
  %2387 = fmul fast float %2385, %2341
  %2388 = fadd fast float %2383, %2386
  %2389 = fadd fast float %2384, %2387
  %2390 = fmul fast float %2377, %2377
  %2391 = fmul fast float %2389, %2389
  %2392 = fmul fast float %2379, %2379
  %2393 = fadd fast float %2392, %2390
  %2394 = fadd fast float %2393, %2391
  %2395 = call float @dx.op.unary.f32(i32 24, float %2394)  ; Sqrt(value)
  %2396 = fcmp fast ugt float %2395, 0.000000e+00
  br i1 %2396, label %2397, label %2412

; <label>:2397                                    ; preds = %2126
  %2398 = fsub fast float -0.000000e+00, %2379
  %2399 = fdiv fast float %2398, %2395
  %2400 = fsub fast float -0.000000e+00, %2377
  %2401 = fdiv fast float %2400, %2395
  %2402 = fdiv fast float %2389, %2395
  %2403 = fmul fast float %2388, 0x3FE279A760000000
  %2404 = fmul fast float %2401, %2377
  %2405 = fmul fast float %2402, %2389
  %2406 = fmul fast float %2399, %2379
  %2407 = fadd fast float %2404, %2406
  %2408 = fsub fast float %2407, %2405
  %2409 = call float @dx.op.unary.f32(i32 6, float %2408)  ; FAbs(value)
  %2410 = fadd fast float %2409, 0x3DDB7CDFE0000000
  %2411 = fdiv fast float %2403, %2410
  br label %2412

; <label>:2412                                    ; preds = %2397, %2126
  %2413 = phi float [ %2411, %2397 ], [ 1.000000e+00, %2126 ]
  %2414 = fmul fast float %2362, %2362
  %2415 = fmul fast float %2374, %2374
  %2416 = fmul fast float %2364, %2364
  %2417 = fadd fast float %2416, %2414
  %2418 = fadd fast float %2417, %2415
  %2419 = call float @dx.op.unary.f32(i32 24, float %2418)  ; Sqrt(value)
  %2420 = fcmp fast ugt float %2419, 0.000000e+00
  br i1 %2420, label %2421, label %2436

; <label>:2421                                    ; preds = %2412
  %2422 = fsub fast float -0.000000e+00, %2364
  %2423 = fdiv fast float %2422, %2419
  %2424 = fsub fast float -0.000000e+00, %2362
  %2425 = fdiv fast float %2424, %2419
  %2426 = fdiv fast float %2374, %2419
  %2427 = fmul fast float %2373, 0x3FE279A760000000
  %2428 = fmul fast float %2425, %2362
  %2429 = fmul fast float %2426, %2374
  %2430 = fmul fast float %2423, %2364
  %2431 = fadd fast float %2428, %2430
  %2432 = fsub fast float %2431, %2429
  %2433 = call float @dx.op.unary.f32(i32 6, float %2432)  ; FAbs(value)
  %2434 = fadd fast float %2433, 0x3DDB7CDFE0000000
  %2435 = fdiv fast float %2427, %2434
  br label %2436

; <label>:2436                                    ; preds = %2421, %2412
  %2437 = phi float [ %2435, %2421 ], [ 1.000000e+00, %2412 ]
  %2438 = call float @dx.op.binary.f32(i32 36, float %2437, float %2413)  ; FMin(a,b)
  %2439 = fmul fast float %2345, %2345
  %2440 = fmul fast float %2359, %2359
  %2441 = fmul fast float %2347, %2347
  %2442 = fadd fast float %2441, %2439
  %2443 = fadd fast float %2442, %2440
  %2444 = call float @dx.op.unary.f32(i32 24, float %2443)  ; Sqrt(value)
  %2445 = fcmp fast ugt float %2444, 0.000000e+00
  br i1 %2445, label %2446, label %2461

; <label>:2446                                    ; preds = %2436
  %2447 = fsub fast float -0.000000e+00, %2347
  %2448 = fdiv fast float %2447, %2444
  %2449 = fsub fast float -0.000000e+00, %2345
  %2450 = fdiv fast float %2449, %2444
  %2451 = fdiv fast float %2359, %2444
  %2452 = fmul fast float %2358, 0x3FE279A760000000
  %2453 = fmul fast float %2450, %2345
  %2454 = fmul fast float %2451, %2359
  %2455 = fmul fast float %2448, %2347
  %2456 = fadd fast float %2453, %2455
  %2457 = fsub fast float %2456, %2454
  %2458 = call float @dx.op.unary.f32(i32 6, float %2457)  ; FAbs(value)
  %2459 = fadd fast float %2458, 0x3DDB7CDFE0000000
  %2460 = fdiv fast float %2452, %2459
  br label %2461

; <label>:2461                                    ; preds = %2446, %2436
  %2462 = phi float [ %2460, %2446 ], [ 1.000000e+00, %2436 ]
  %2463 = call float @dx.op.binary.f32(i32 36, float %2462, float %2438)  ; FMin(a,b)
  %2464 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2465 = fcmp fast olt float %2464, 1.000000e+00
  br i1 %2465, label %2466, label %2476

; <label>:2466                                    ; preds = %2461
  %2467 = fmul fast float %2464, %2345
  %2468 = fmul fast float %2464, %2359
  %2469 = fmul fast float %2464, %2347
  %2470 = fmul fast float %2464, %2362
  %2471 = fmul fast float %2464, %2374
  %2472 = fmul fast float %2464, %2364
  %2473 = fmul fast float %2464, %2377
  %2474 = fmul fast float %2464, %2389
  %2475 = fmul fast float %2464, %2379
  br label %2476

; <label>:2476                                    ; preds = %2466, %2461
  %2477 = phi float [ %2473, %2466 ], [ %2377, %2461 ]
  %2478 = phi float [ %2474, %2466 ], [ %2389, %2461 ]
  %2479 = phi float [ %2475, %2466 ], [ %2379, %2461 ]
  %2480 = phi float [ %2470, %2466 ], [ %2362, %2461 ]
  %2481 = phi float [ %2471, %2466 ], [ %2374, %2461 ]
  %2482 = phi float [ %2472, %2466 ], [ %2364, %2461 ]
  %2483 = phi float [ %2467, %2466 ], [ %2345, %2461 ]
  %2484 = phi float [ %2468, %2466 ], [ %2359, %2461 ]
  %2485 = phi float [ %2469, %2466 ], [ %2347, %2461 ]
  %2486 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2358)  ; FMax(a,b)
  %2487 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2373)  ; FMax(a,b)
  %2488 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2388)  ; FMax(a,b)
  %2489 = fcmp fast oge float %2146, 0.000000e+00
  %2490 = and i1 %2489, %1935
  %2491 = fcmp fast ole float %2146, 1.000000e+00
  %2492 = and i1 %2491, %2490
  %2493 = fcmp fast oge float %2147, 0.000000e+00
  %2494 = and i1 %2493, %2492
  %2495 = fcmp fast ole float %2147, 1.000000e+00
  %2496 = and i1 %2495, %2494
  br i1 %2496, label %2497, label %2637, !dx.controlflow.hints !123

; <label>:2497                                    ; preds = %2476
  %2498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2499 = extractvalue %dx.types.CBufRet.f32 %2498, 2
  %2500 = extractvalue %dx.types.CBufRet.f32 %2498, 3
  %2501 = fmul fast float %2499, %2146
  %2502 = fmul fast float %2500, %2147
  %2503 = call float @dx.op.unary.f32(i32 27, float %2501)  ; Round_ni(value)
  %2504 = call float @dx.op.unary.f32(i32 27, float %2502)  ; Round_ni(value)
  %2505 = fptosi float %2503 to i32
  %2506 = fptosi float %2504 to i32
  %2507 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %2505, i32 %2506, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2508 = extractvalue %dx.types.ResRet.i32 %2507, 0
  %2509 = and i32 %2508, 65535
  %2510 = lshr i32 %2508, 16
  %2511 = icmp eq i32 %2509, 65535
  br i1 %2511, label %2548, label %2512

; <label>:2512                                    ; preds = %2497
  %2513 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %2514 = extractvalue %dx.types.CBufRet.f32 %2498, 0
  %2515 = extractvalue %dx.types.CBufRet.f32 %2498, 1
  %2516 = fmul fast float %2514, %2146
  %2517 = fmul fast float %2515, %2147
  %2518 = fmul fast float %2516, 1.250000e-01
  %2519 = fmul fast float %2517, 1.250000e-01
  %2520 = call float @dx.op.unary.f32(i32 27, float %2518)  ; Round_ni(value)
  %2521 = call float @dx.op.unary.f32(i32 27, float %2519)  ; Round_ni(value)
  %2522 = fmul fast float %2520, 8.000000e+00
  %2523 = fmul fast float %2521, 8.000000e+00
  %2524 = and i32 %2508, 255
  %2525 = lshr i32 %2508, 8
  %2526 = and i32 %2525, 255
  %2527 = mul nuw nsw i32 %2524, 9
  %2528 = uitofp i32 %2527 to float
  %2529 = mul nuw nsw i32 %2526, 9
  %2530 = uitofp i32 %2529 to float
  %2531 = fadd fast float %2528, 5.000000e-01
  %2532 = fadd fast float %2531, %2516
  %2533 = fsub fast float %2532, %2522
  %2534 = fadd fast float %2530, 5.000000e-01
  %2535 = fadd fast float %2534, %2517
  %2536 = fsub fast float %2535, %2523
  %2537 = fdiv fast float %2533, %1934
  %2538 = fdiv fast float %2536, %2513
  %2539 = fmul fast float %2174, 4.375000e-01
  %2540 = fadd fast float %2539, 3.125000e-02
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2537, float %2538, float %2540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2542 = extractvalue %dx.types.ResRet.f32 %2541, 0
  %2543 = extractvalue %dx.types.ResRet.f32 %2541, 1
  %2544 = extractvalue %dx.types.ResRet.f32 %2541, 2
  %2545 = fadd fast float %2542, %2486
  %2546 = fadd fast float %2543, %2487
  %2547 = fadd fast float %2544, %2488
  br label %2548

; <label>:2548                                    ; preds = %2512, %2497
  %2549 = phi float [ %2547, %2512 ], [ %2488, %2497 ]
  %2550 = phi float [ %2546, %2512 ], [ %2487, %2497 ]
  %2551 = phi float [ %2545, %2512 ], [ %2486, %2497 ]
  %2552 = icmp eq i32 %2510, 65535
  br i1 %2552, label %2637, label %2553

; <label>:2553                                    ; preds = %2548
  %2554 = extractvalue %dx.types.CBufRet.f32 %1933, 1
  %2555 = extractvalue %dx.types.CBufRet.f32 %2498, 0
  %2556 = extractvalue %dx.types.CBufRet.f32 %2498, 1
  %2557 = fmul fast float %2555, %2146
  %2558 = fmul fast float %2556, %2147
  %2559 = fmul fast float %2557, 1.250000e-01
  %2560 = fmul fast float %2558, 1.250000e-01
  %2561 = call float @dx.op.unary.f32(i32 27, float %2559)  ; Round_ni(value)
  %2562 = call float @dx.op.unary.f32(i32 27, float %2560)  ; Round_ni(value)
  %2563 = fmul fast float %2561, 8.000000e+00
  %2564 = fmul fast float %2562, 8.000000e+00
  %2565 = fsub fast float %2557, %2563
  %2566 = fsub fast float %2558, %2564
  %2567 = fadd fast float %2565, 5.000000e-01
  %2568 = fadd fast float %2566, 5.000000e-01
  %2569 = and i32 %2510, 255
  %2570 = lshr i32 %2508, 24
  %2571 = mul nuw nsw i32 %2569, 9
  %2572 = uitofp i32 %2571 to float
  %2573 = mul nuw nsw i32 %2570, 9
  %2574 = uitofp i32 %2573 to float
  %2575 = fadd fast float %2567, %2572
  %2576 = fadd fast float %2568, %2574
  %2577 = fdiv fast float %2575, %1934
  %2578 = fdiv fast float %2576, %2554
  %2579 = fmul fast float %2174, 4.375000e-01
  %2580 = fadd fast float %2579, 3.125000e-02
  %2581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2577, float %2578, float %2580, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = extractvalue %dx.types.ResRet.f32 %2581, 1
  %2584 = extractvalue %dx.types.ResRet.f32 %2581, 2
  %2585 = fadd fast float %2579, 5.312500e-01
  %2586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2577, float %2578, float %2585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2587 = extractvalue %dx.types.ResRet.f32 %2586, 0
  %2588 = extractvalue %dx.types.ResRet.f32 %2586, 1
  %2589 = extractvalue %dx.types.ResRet.f32 %2586, 2
  %2590 = fmul fast float %2587, 2.000000e+00
  %2591 = fmul fast float %2588, 2.000000e+00
  %2592 = fmul fast float %2589, 2.000000e+00
  %2593 = fadd fast float %2590, -1.000000e+00
  %2594 = fadd fast float %2591, -1.000000e+00
  %2595 = fadd fast float %2592, -1.000000e+00
  %2596 = fmul fast float %2593, %2593
  %2597 = fmul fast float %2594, %2594
  %2598 = fadd fast float %2596, %2597
  %2599 = fmul fast float %2595, %2595
  %2600 = fadd fast float %2598, %2599
  %2601 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2602 = fcmp fast ogt float %2601, 0.000000e+00
  br i1 %2602, label %2603, label %2607

; <label>:2603                                    ; preds = %2553
  %2604 = fdiv fast float %2593, %2601
  %2605 = fdiv fast float %2594, %2601
  %2606 = fdiv fast float %2595, %2601
  br label %2607

; <label>:2607                                    ; preds = %2603, %2553
  %2608 = phi float [ %2604, %2603 ], [ 0.000000e+00, %2553 ]
  %2609 = phi float [ %2605, %2603 ], [ 0.000000e+00, %2553 ]
  %2610 = phi float [ %2606, %2603 ], [ 0.000000e+00, %2553 ]
  %2611 = fmul fast float %153, %153
  %2612 = fmul fast float %154, %154
  %2613 = fadd fast float %2611, %2612
  %2614 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2618 = fsub fast float %2614, %2616
  %2619 = fdiv fast float %2618, %2617
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2621 = fmul fast float %2620, 2.000000e+00
  %2622 = fsub fast float 3.000000e+00, %2621
  %2623 = fmul fast float %2620, %2620
  %2624 = fmul fast float %2623, %2622
  %2625 = call float @dx.op.dot3.f32(i32 55, float %2608, float %2609, float %2610, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2626 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2625)  ; FMax(a,b)
  %2627 = fmul fast float %2626, 0x400C5BF8A0000000
  %2628 = fmul fast float %2624, %2582
  %2629 = fmul fast float %2628, %2627
  %2630 = fadd fast float %2629, %2551
  %2631 = fmul fast float %2624, %2583
  %2632 = fmul fast float %2631, %2627
  %2633 = fadd fast float %2632, %2550
  %2634 = fmul fast float %2624, %2584
  %2635 = fmul fast float %2634, %2627
  %2636 = fadd fast float %2635, %2549
  br label %2637

; <label>:2637                                    ; preds = %2607, %2548, %2476
  %2638 = phi float [ %2636, %2607 ], [ %2549, %2548 ], [ %2488, %2476 ]
  %2639 = phi float [ %2633, %2607 ], [ %2550, %2548 ], [ %2487, %2476 ]
  %2640 = phi float [ %2630, %2607 ], [ %2551, %2548 ], [ %2486, %2476 ]
  %2641 = fcmp fast ogt float %2133, %2170
  %2642 = and i1 %2489, %2641
  %2643 = and i1 %2491, %2642
  %2644 = and i1 %2493, %2643
  %2645 = and i1 %2495, %2644
  br i1 %2645, label %2646, label %2703, !dx.controlflow.hints !124

; <label>:2646                                    ; preds = %2637
  %2647 = fmul fast float %2172, 0x3FC24924A0000000
  %2648 = fsub fast float %2133, %2170
  %2649 = fdiv fast float %2648, %2647
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2654 = extractvalue %dx.types.CBufRet.f32 %2653, 0
  %2655 = extractvalue %dx.types.CBufRet.f32 %2653, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2653, 2
  %2657 = fsub fast float %2652, %2640
  %2658 = fsub fast float %2654, %2483
  %2659 = fsub fast float %2655, %2484
  %2660 = fsub fast float %2656, %2485
  %2661 = fmul fast float %2657, %2650
  %2662 = fmul fast float %2658, %2650
  %2663 = fmul fast float %2659, %2650
  %2664 = fmul fast float %2660, %2650
  %2665 = fadd fast float %2661, %2640
  %2666 = fadd fast float %2662, %2483
  %2667 = fadd fast float %2663, %2484
  %2668 = fadd fast float %2664, %2485
  %2669 = extractvalue %dx.types.CBufRet.f32 %2651, 1
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2672 = extractvalue %dx.types.CBufRet.f32 %2670, 1
  %2673 = extractvalue %dx.types.CBufRet.f32 %2670, 2
  %2674 = fsub fast float %2669, %2639
  %2675 = fsub fast float %2671, %2480
  %2676 = fsub fast float %2672, %2481
  %2677 = fsub fast float %2673, %2482
  %2678 = fmul fast float %2674, %2650
  %2679 = fmul fast float %2675, %2650
  %2680 = fmul fast float %2676, %2650
  %2681 = fmul fast float %2677, %2650
  %2682 = fadd fast float %2678, %2639
  %2683 = fadd fast float %2679, %2480
  %2684 = fadd fast float %2680, %2481
  %2685 = fadd fast float %2681, %2482
  %2686 = extractvalue %dx.types.CBufRet.f32 %2651, 2
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2688 = extractvalue %dx.types.CBufRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.CBufRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.CBufRet.f32 %2687, 2
  %2691 = fsub fast float %2686, %2638
  %2692 = fsub fast float %2688, %2477
  %2693 = fsub fast float %2689, %2478
  %2694 = fsub fast float %2690, %2479
  %2695 = fmul fast float %2691, %2650
  %2696 = fmul fast float %2692, %2650
  %2697 = fmul fast float %2693, %2650
  %2698 = fmul fast float %2694, %2650
  %2699 = fadd fast float %2695, %2638
  %2700 = fadd fast float %2696, %2477
  %2701 = fadd fast float %2697, %2478
  %2702 = fadd fast float %2698, %2479
  br label %2703

; <label>:2703                                    ; preds = %2646, %2637
  %2704 = phi float [ %2699, %2646 ], [ %2638, %2637 ]
  %2705 = phi float [ %2700, %2646 ], [ %2477, %2637 ]
  %2706 = phi float [ %2701, %2646 ], [ %2478, %2637 ]
  %2707 = phi float [ %2702, %2646 ], [ %2479, %2637 ]
  %2708 = phi float [ %2682, %2646 ], [ %2639, %2637 ]
  %2709 = phi float [ %2683, %2646 ], [ %2480, %2637 ]
  %2710 = phi float [ %2684, %2646 ], [ %2481, %2637 ]
  %2711 = phi float [ %2685, %2646 ], [ %2482, %2637 ]
  %2712 = phi float [ %2665, %2646 ], [ %2640, %2637 ]
  %2713 = phi float [ %2666, %2646 ], [ %2483, %2637 ]
  %2714 = phi float [ %2667, %2646 ], [ %2484, %2637 ]
  %2715 = phi float [ %2668, %2646 ], [ %2485, %2637 ]
  %2716 = extractvalue %dx.types.CBufRet.f32 %2295, 3
  %2717 = fmul fast float %2716, %2712
  %2718 = fmul fast float %2716, %2708
  %2719 = fmul fast float %2716, %2704
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 3
  %2722 = fmul fast float %2717, %2721
  %2723 = fmul fast float %2718, %2721
  %2724 = fmul fast float %2719, %2721
  %2725 = call float @dx.op.dot3.f32(i32 55, float %2722, float %2723, float %2724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2726 = fmul fast float %2725, 0x3FD20DD760000000
  %2727 = fmul fast float %2713, 1.500000e+00
  %2728 = fmul fast float %2727, %2716
  %2729 = fmul fast float %2728, %2721
  %2730 = fmul fast float %2714, 1.500000e+00
  %2731 = fmul fast float %2730, %2716
  %2732 = fmul fast float %2731, %2721
  %2733 = fmul fast float %2715, 1.500000e+00
  %2734 = fmul fast float %2733, %2716
  %2735 = fmul fast float %2734, %2721
  %2736 = fmul fast float %2709, 1.500000e+00
  %2737 = fmul fast float %2736, %2716
  %2738 = fmul fast float %2737, %2721
  %2739 = fmul fast float %2710, 1.500000e+00
  %2740 = fmul fast float %2739, %2716
  %2741 = fmul fast float %2740, %2721
  %2742 = fmul fast float %2711, 1.500000e+00
  %2743 = fmul fast float %2742, %2716
  %2744 = fmul fast float %2743, %2721
  %2745 = fmul fast float %2705, 1.500000e+00
  %2746 = fmul fast float %2745, %2716
  %2747 = fmul fast float %2746, %2721
  %2748 = fmul fast float %2706, 1.500000e+00
  %2749 = fmul fast float %2748, %2716
  %2750 = fmul fast float %2749, %2721
  %2751 = fmul fast float %2707, 1.500000e+00
  %2752 = fmul fast float %2751, %2716
  %2753 = fmul fast float %2752, %2721
  %2754 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2722)  ; FMax(a,b)
  %2755 = call float @dx.op.dot3.f32(i32 55, float %2729, float %2732, float %2735, float %2729, float %2732, float %2735)  ; Dot3(ax,ay,az,bx,by,bz)
  %2756 = fcmp fast oeq float %2755, 0.000000e+00
  %2757 = fcmp fast oeq float %2754, 0.000000e+00
  %2758 = or i1 %2757, %2756
  br i1 %2758, label %2788, label %2759

; <label>:2759                                    ; preds = %2703
  %2760 = fsub fast float -0.000000e+00, %2735
  %2761 = fsub fast float -0.000000e+00, %2729
  %2762 = call float @dx.op.unary.f32(i32 24, float %2755)  ; Sqrt(value)
  %2763 = fdiv fast float %2762, %2754
  %2764 = fcmp fast ogt float %2763, 0x3FFB6F8900000000
  %2765 = select i1 %2764, float 0x3FFB6F8900000000, float %2763
  %2766 = fmul fast float %2765, 0x3FE8A23460000000
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2768 = call float @dx.op.binary.f32(i32 35, float %2765, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2769 = fmul fast float %2767, %2754
  %2770 = fmul fast float %2768, 0x3FF279A740000000
  %2771 = fadd fast float %2770, -1.000000e+00
  %2772 = call float @dx.op.dot3.f32(i32 55, float %2760, float %2761, float %2732, float %2760, float %2761, float %2732)  ; Dot3(ax,ay,az,bx,by,bz)
  %2773 = call float @dx.op.unary.f32(i32 25, float %2772)  ; Rsqrt(value)
  %2774 = fmul fast float %2773, %2760
  %2775 = fmul fast float %2773, %2761
  %2776 = fmul fast float %2773, %2732
  %2777 = fmul fast float %2771, %2771
  %2778 = fsub fast float 1.000000e+00, %2777
  %2779 = fmul fast float %2768, 0x40005F8BE0000000
  %2780 = fsub fast float 0x400C5BF8A0000000, %2779
  %2781 = fdiv fast float %2769, %2780
  %2782 = fmul fast float %2781, 0x3FEE31C3C0000000
  %2783 = fmul fast float %2782, %2778
  %2784 = fmul fast float %2768, 0x3FDACB7480000000
  %2785 = fadd fast float %2784, 0xBFD7347680000000
  %2786 = fmul fast float %2785, %2781
  %2787 = fmul fast float %2786, %2778
  br label %2788

; <label>:2788                                    ; preds = %2759, %2703
  %2789 = phi float [ %2774, %2759 ], [ 0.000000e+00, %2703 ]
  %2790 = phi float [ %2775, %2759 ], [ 0.000000e+00, %2703 ]
  %2791 = phi float [ %2776, %2759 ], [ 0.000000e+00, %2703 ]
  %2792 = phi float [ %2783, %2759 ], [ 0.000000e+00, %2703 ]
  %2793 = phi float [ %2787, %2759 ], [ 0.000000e+00, %2703 ]
  %2794 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2790, float %2791, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2795 = fmul fast float %2794, %2794
  %2796 = fmul fast float %2795, 0x3FEE471020000000
  %2797 = fadd fast float %2796, 0xBFD42F6020000000
  %2798 = fmul fast float %2754, 0x3FD20DD760000000
  %2799 = fmul fast float %2797, %2793
  %2800 = fmul fast float %2792, 0x3FDF454380000000
  %2801 = fmul fast float %2800, %2794
  %2802 = fadd fast float %2801, %2798
  %2803 = fadd fast float %2802, %2799
  %2804 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2723)  ; FMax(a,b)
  %2805 = call float @dx.op.dot3.f32(i32 55, float %2738, float %2741, float %2744, float %2738, float %2741, float %2744)  ; Dot3(ax,ay,az,bx,by,bz)
  %2806 = fcmp fast oeq float %2805, 0.000000e+00
  %2807 = fcmp fast oeq float %2804, 0.000000e+00
  %2808 = or i1 %2807, %2806
  br i1 %2808, label %2838, label %2809

; <label>:2809                                    ; preds = %2788
  %2810 = fsub fast float -0.000000e+00, %2744
  %2811 = fsub fast float -0.000000e+00, %2738
  %2812 = call float @dx.op.unary.f32(i32 24, float %2805)  ; Sqrt(value)
  %2813 = fdiv fast float %2812, %2804
  %2814 = fcmp fast ogt float %2813, 0x3FFB6F8900000000
  %2815 = select i1 %2814, float 0x3FFB6F8900000000, float %2813
  %2816 = fmul fast float %2815, 0x3FE8A23460000000
  %2817 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  %2818 = call float @dx.op.binary.f32(i32 35, float %2815, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2819 = fmul fast float %2817, %2804
  %2820 = fmul fast float %2818, 0x3FF279A740000000
  %2821 = fadd fast float %2820, -1.000000e+00
  %2822 = call float @dx.op.dot3.f32(i32 55, float %2810, float %2811, float %2741, float %2810, float %2811, float %2741)  ; Dot3(ax,ay,az,bx,by,bz)
  %2823 = call float @dx.op.unary.f32(i32 25, float %2822)  ; Rsqrt(value)
  %2824 = fmul fast float %2823, %2810
  %2825 = fmul fast float %2823, %2811
  %2826 = fmul fast float %2823, %2741
  %2827 = fmul fast float %2821, %2821
  %2828 = fsub fast float 1.000000e+00, %2827
  %2829 = fmul fast float %2818, 0x40005F8BE0000000
  %2830 = fsub fast float 0x400C5BF8A0000000, %2829
  %2831 = fdiv fast float %2819, %2830
  %2832 = fmul fast float %2831, 0x3FEE31C3C0000000
  %2833 = fmul fast float %2832, %2828
  %2834 = fmul fast float %2818, 0x3FDACB7480000000
  %2835 = fadd fast float %2834, 0xBFD7347680000000
  %2836 = fmul fast float %2835, %2831
  %2837 = fmul fast float %2836, %2828
  br label %2838

; <label>:2838                                    ; preds = %2809, %2788
  %2839 = phi float [ %2824, %2809 ], [ 0.000000e+00, %2788 ]
  %2840 = phi float [ %2825, %2809 ], [ 0.000000e+00, %2788 ]
  %2841 = phi float [ %2826, %2809 ], [ 0.000000e+00, %2788 ]
  %2842 = phi float [ %2833, %2809 ], [ 0.000000e+00, %2788 ]
  %2843 = phi float [ %2837, %2809 ], [ 0.000000e+00, %2788 ]
  %2844 = call float @dx.op.dot3.f32(i32 55, float %2839, float %2840, float %2841, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2845 = fmul fast float %2844, %2844
  %2846 = fmul fast float %2845, 0x3FEE471020000000
  %2847 = fadd fast float %2846, 0xBFD42F6020000000
  %2848 = fmul fast float %2804, 0x3FD20DD760000000
  %2849 = fmul fast float %2847, %2843
  %2850 = fmul fast float %2842, 0x3FDF454380000000
  %2851 = fmul fast float %2850, %2844
  %2852 = fadd fast float %2851, %2848
  %2853 = fadd fast float %2852, %2849
  %2854 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2724)  ; FMax(a,b)
  %2855 = call float @dx.op.dot3.f32(i32 55, float %2747, float %2750, float %2753, float %2747, float %2750, float %2753)  ; Dot3(ax,ay,az,bx,by,bz)
  %2856 = fcmp fast oeq float %2855, 0.000000e+00
  %2857 = fcmp fast oeq float %2854, 0.000000e+00
  %2858 = or i1 %2857, %2856
  br i1 %2858, label %2888, label %2859

; <label>:2859                                    ; preds = %2838
  %2860 = fsub fast float -0.000000e+00, %2753
  %2861 = fsub fast float -0.000000e+00, %2747
  %2862 = call float @dx.op.unary.f32(i32 24, float %2855)  ; Sqrt(value)
  %2863 = fdiv fast float %2862, %2854
  %2864 = fcmp fast ogt float %2863, 0x3FFB6F8900000000
  %2865 = select i1 %2864, float 0x3FFB6F8900000000, float %2863
  %2866 = fmul fast float %2865, 0x3FE8A23460000000
  %2867 = call float @dx.op.unary.f32(i32 7, float %2866)  ; Saturate(value)
  %2868 = call float @dx.op.binary.f32(i32 35, float %2865, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2869 = fmul fast float %2867, %2854
  %2870 = fmul fast float %2868, 0x3FF279A740000000
  %2871 = fadd fast float %2870, -1.000000e+00
  %2872 = call float @dx.op.dot3.f32(i32 55, float %2860, float %2861, float %2750, float %2860, float %2861, float %2750)  ; Dot3(ax,ay,az,bx,by,bz)
  %2873 = call float @dx.op.unary.f32(i32 25, float %2872)  ; Rsqrt(value)
  %2874 = fmul fast float %2873, %2860
  %2875 = fmul fast float %2873, %2861
  %2876 = fmul fast float %2873, %2750
  %2877 = fmul fast float %2871, %2871
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2868, 0x40005F8BE0000000
  %2880 = fsub fast float 0x400C5BF8A0000000, %2879
  %2881 = fdiv fast float %2869, %2880
  %2882 = fmul fast float %2881, 0x3FEE31C3C0000000
  %2883 = fmul fast float %2882, %2878
  %2884 = fmul fast float %2868, 0x3FDACB7480000000
  %2885 = fadd fast float %2884, 0xBFD7347680000000
  %2886 = fmul fast float %2885, %2881
  %2887 = fmul fast float %2886, %2878
  br label %2888

; <label>:2888                                    ; preds = %2859, %2838
  %2889 = phi float [ %2874, %2859 ], [ 0.000000e+00, %2838 ]
  %2890 = phi float [ %2875, %2859 ], [ 0.000000e+00, %2838 ]
  %2891 = phi float [ %2876, %2859 ], [ 0.000000e+00, %2838 ]
  %2892 = phi float [ %2883, %2859 ], [ 0.000000e+00, %2838 ]
  %2893 = phi float [ %2887, %2859 ], [ 0.000000e+00, %2838 ]
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2889, float %2890, float %2891, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %2895 = fmul fast float %2894, %2894
  %2896 = fmul fast float %2895, 0x3FEE471020000000
  %2897 = fadd fast float %2896, 0xBFD42F6020000000
  %2898 = fmul fast float %2854, 0x3FD20DD760000000
  %2899 = fmul fast float %2897, %2893
  %2900 = fmul fast float %2892, 0x3FDF454380000000
  %2901 = fmul fast float %2900, %2894
  %2902 = fadd fast float %2901, %2898
  %2903 = fadd fast float %2902, %2899
  %2904 = call float @dx.op.binary.f32(i32 35, float %2803, float 0.000000e+00)  ; FMax(a,b)
  %2905 = call float @dx.op.binary.f32(i32 35, float %2853, float 0.000000e+00)  ; FMax(a,b)
  %2906 = call float @dx.op.binary.f32(i32 35, float %2903, float 0.000000e+00)  ; FMax(a,b)
  %2907 = fsub fast float %2123, %2904
  %2908 = fsub fast float %2124, %2905
  %2909 = fsub fast float %2125, %2906
  %2910 = fmul fast float %2907, %1932
  %2911 = fmul fast float %2908, %1932
  %2912 = fmul fast float %2909, %1932
  %2913 = fadd fast float %2910, %2904
  %2914 = fadd fast float %2911, %2905
  %2915 = fadd fast float %2912, %2906
  %2916 = fmul fast float %2726, %1932
  %2917 = fsub fast float %2726, %2916
  br label %2918

; <label>:2918                                    ; preds = %2888, %2122
  %2919 = phi float [ %2917, %2888 ], [ 0.000000e+00, %2122 ]
  %2920 = phi float [ %2913, %2888 ], [ %2123, %2122 ]
  %2921 = phi float [ %2914, %2888 ], [ %2124, %2122 ]
  %2922 = phi float [ %2915, %2888 ], [ %2125, %2122 ]
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = call float @dx.op.binary.f32(i32 36, float %1725, float %2924)  ; FMin(a,b)
  %2926 = fmul fast float %2925, %1911
  %2927 = fsub fast float 1.000000e+00, %2926
  %2928 = bitcast float %2927 to i32
  %2929 = sub nsw i32 2129859010, %2928
  %2930 = bitcast i32 %2929 to float
  %2931 = call float @dx.op.binary.f32(i32 36, float %1726, float %2924)  ; FMin(a,b)
  %2932 = fmul fast float %2931, %1911
  %2933 = fsub fast float 1.000000e+00, %2932
  %2934 = bitcast float %2933 to i32
  %2935 = sub nsw i32 2129859010, %2934
  %2936 = bitcast i32 %2935 to float
  %2937 = call float @dx.op.binary.f32(i32 36, float %1727, float %2924)  ; FMin(a,b)
  %2938 = fmul fast float %2937, %1911
  %2939 = fsub fast float 1.000000e+00, %2938
  %2940 = bitcast float %2939 to i32
  %2941 = sub nsw i32 2129859010, %2940
  %2942 = bitcast i32 %2941 to float
  %2943 = fmul fast float %2920, %1910
  %2944 = fmul fast float %2943, %2930
  %2945 = fmul fast float %2921, %1910
  %2946 = fmul fast float %2945, %2936
  %2947 = fmul fast float %2922, %1910
  %2948 = fmul fast float %2947, %2942
  %2949 = extractvalue %dx.types.CBufRet.i32 %1929, 2
  %2950 = and i32 %2949, 1
  %2951 = icmp ne i32 %2950, 0
  %2952 = fsub fast float 1.000000e+00, %1932
  %2953 = select i1 %2951, float %1932, float %2944
  %2954 = select i1 %2951, float %2952, float %2946
  %2955 = select i1 %2951, float 0.000000e+00, float %2948
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2953, float %2954, float %2955, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = select i1 %1885, float 0.000000e+00, float %2953
  %2958 = select i1 %1885, float %2956, float %2954
  %2959 = select i1 %1885, float 0.000000e+00, float %2955
  %2960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %2961 = extractvalue %dx.types.CBufRet.f32 %2960, 0
  %2962 = bitcast float %2961 to i32
  %2963 = lshr i32 %2962, 8
  %2964 = and i32 %2963, 255
  %2965 = uitofp i32 %2964 to float
  %2966 = fptoui float %2965 to i32
  %2967 = icmp eq i32 %2966, 23
  br i1 %2967, label %2968, label %2991

; <label>:2968                                    ; preds = %2918
  %2969 = fmul fast float %2942, %1910
  %2970 = fmul fast float %2936, %1910
  %2971 = fmul fast float %2930, %1910
  %2972 = fadd fast float %2971, 1.000000e+00
  %2973 = fadd fast float %2970, 1.000000e+00
  %2974 = fadd fast float %2969, 1.000000e+00
  %2975 = fmul fast float %2972, 5.000000e-01
  %2976 = fmul fast float %2973, 5.000000e-01
  %2977 = fmul fast float %2974, 5.000000e-01
  %2978 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2979 = call float @dx.op.unary.f32(i32 7, float %2976)  ; Saturate(value)
  %2980 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2981 = fmul fast float %2978, 1.023000e+03
  %2982 = fmul fast float %2979, 1.023000e+03
  %2983 = fmul fast float %2980, 1.023000e+03
  %2984 = fptoui float %2981 to i32
  %2985 = fptoui float %2982 to i32
  %2986 = fptoui float %2983 to i32
  %2987 = shl i32 %2985, 10
  %2988 = or i32 %2987, %2984
  %2989 = shl i32 %2986, 20
  %2990 = or i32 %2988, %2989
  br label %2991

; <label>:2991                                    ; preds = %2968, %2918
  %2992 = phi i32 [ %2990, %2968 ], [ 0, %2918 ]
  %2993 = fsub fast float 1.000000e+00, %1890
  %2994 = fmul fast float %2993, %1774
  %2995 = fadd fast float %2994, %1890
  %2996 = call float @dx.op.binary.f32(i32 35, float %1801, float %2995)  ; FMax(a,b)
  %2997 = call float @dx.op.binary.f32(i32 35, float %1800, float %2996)  ; FMax(a,b)
  %2998 = fsub fast float 1.000000e+00, %2997
  %2999 = extractvalue %dx.types.CBufRet.f32 %1900, 2
  %3000 = fcmp fast olt float %2999, 0.000000e+00
  br i1 %3000, label %3001, label %3712

; <label>:3001                                    ; preds = %2991
  %3002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.f32 %3002, 2
  %3004 = extractvalue %dx.types.CBufRet.f32 %3002, 3
  %3005 = fmul fast float %3003, %98
  %3006 = fmul fast float %3004, %99
  %3007 = fptoui float %3005 to i32
  %3008 = fptoui float %3006 to i32
  %3009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3010 = extractvalue %dx.types.CBufRet.f32 %3009, 0
  %3011 = extractvalue %dx.types.CBufRet.f32 %3009, 2
  %3012 = extractvalue %dx.types.CBufRet.f32 %3009, 3
  %3013 = fadd fast float %87, -4.000000e+00
  %3014 = call float @dx.op.binary.f32(i32 35, float %3013, float 0.000000e+00)  ; FMax(a,b)
  %3015 = fadd fast float %3014, %3010
  %3016 = fmul fast float %3015, %3011
  %3017 = call float @dx.op.unary.f32(i32 23, float %3016)  ; Log(value)
  %3018 = fmul fast float %3017, %3012
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 2
  %3021 = fmul fast float %3018, %3020
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.i32 %3023, 1
  %3025 = add i32 %3024, -1
  %3026 = uitofp i32 %3024 to float
  %3027 = fmul fast float %3026, %3022
  %3028 = fptoui float %3027 to i32
  %3029 = call i32 @dx.op.binary.i32(i32 40, i32 %3028, i32 %3025)  ; UMin(a,b)
  %3030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.i32 %3030, 2
  %3032 = extractvalue %dx.types.CBufRet.i32 %3030, 3
  %3033 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3008, i32 %3031, i32 %3007)  ; UMad(a,b,c)
  %3034 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3029, i32 %3032, i32 %3033)  ; UMad(a,b,c)
  %3035 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3036 = fptoui float %3035 to i32
  %3037 = lshr i32 %3036, 5
  %3038 = call i32 @dx.op.binary.i32(i32 40, i32 %3037, i32 8191)  ; UMin(a,b)
  %3039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3040 = extractvalue %dx.types.CBufRet.i32 %3039, 2
  %3041 = add nsw i32 %3040, -1
  %3042 = call i32 @dx.op.binary.i32(i32 37, i32 %3041, i32 0)  ; IMax(a,b)
  %3043 = shl i32 %3038, 2
  %3044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3043, i32 undef)  ; BufferLoad(srv,index,wot)
  %3045 = extractvalue %dx.types.ResRet.i32 %3044, 0
  %3046 = lshr i32 %3045, 16
  %3047 = and i32 %3045, 65535
  %3048 = lshr i32 %3045, 21
  %3049 = lshr i32 %3047, 5
  %3050 = call i32 @dx.op.binary.i32(i32 40, i32 %3049, i32 %3042)  ; UMin(a,b)
  %3051 = icmp ugt i32 %3048, %3050
  br i1 %3051, label %3637, label %3052

; <label>:3052                                    ; preds = %3001
  br label %3053

; <label>:3053                                    ; preds = %3619, %3052
  %3054 = phi i32 [ %3620, %3619 ], [ %1687, %3052 ]
  %3055 = phi i32 [ %3621, %3619 ], [ %2992, %3052 ]
  %3056 = phi float [ %3622, %3619 ], [ 0.000000e+00, %3052 ]
  %3057 = phi float [ %3623, %3619 ], [ 0.000000e+00, %3052 ]
  %3058 = phi float [ %3624, %3619 ], [ 0.000000e+00, %3052 ]
  %3059 = phi float [ %3625, %3619 ], [ 0.000000e+00, %3052 ]
  %3060 = phi float [ %3626, %3619 ], [ 0.000000e+00, %3052 ]
  %3061 = phi float [ %3627, %3619 ], [ 0.000000e+00, %3052 ]
  %3062 = phi i32 [ %3628, %3619 ], [ 0, %3052 ]
  %3063 = phi float [ %3629, %3619 ], [ 0.000000e+00, %3052 ]
  %3064 = phi float [ %3630, %3619 ], [ 0.000000e+00, %3052 ]
  %3065 = phi float [ %3631, %3619 ], [ 0.000000e+00, %3052 ]
  %3066 = phi i32 [ %3632, %3619 ], [ 1, %3052 ]
  %3067 = phi float [ %3633, %3619 ], [ 1.000000e+00, %3052 ]
  %3068 = phi i32 [ %3634, %3619 ], [ %3048, %3052 ]
  %3069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3070 = extractvalue %dx.types.CBufRet.i32 %3069, 2
  %3071 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3034, i32 %3070, i32 %3068)  ; UMad(a,b,c)
  %3072 = shl i32 %3071, 2
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = shl i32 %3068, 5
  %3076 = sub nsw i32 %3046, %3075
  %3077 = call i32 @dx.op.binary.i32(i32 37, i32 %3076, i32 0)  ; IMax(a,b)
  %3078 = call i32 @dx.op.binary.i32(i32 38, i32 %3077, i32 31)  ; IMin(a,b)
  %3079 = sub nsw i32 1, %3046
  %3080 = add nsw i32 %3079, %3047
  %3081 = call i32 @dx.op.binary.i32(i32 37, i32 %3080, i32 0)  ; IMax(a,b)
  %3082 = call i32 @dx.op.binary.i32(i32 38, i32 %3081, i32 32)  ; IMin(a,b)
  %3083 = and i32 %3082, 31
  %3084 = shl i32 -1, %3083
  %3085 = xor i32 %3084, -1
  %3086 = and i32 %3078, 31
  %3087 = shl i32 %3085, %3086
  %3088 = icmp eq i32 %3082, 32
  %3089 = select i1 %3088, i32 -1, i32 %3087
  %3090 = and i32 %3089, %3074
  %3091 = icmp eq i32 %3090, 0
  br i1 %3091, label %3619, label %3092

; <label>:3092                                    ; preds = %3053
  br label %3093

; <label>:3093                                    ; preds = %3230, %3092
  %3094 = phi i32 [ %3231, %3230 ], [ %3054, %3092 ]
  %3095 = phi i32 [ %3232, %3230 ], [ %3055, %3092 ]
  %3096 = phi float [ %3233, %3230 ], [ %3056, %3092 ]
  %3097 = phi float [ %3234, %3230 ], [ %3057, %3092 ]
  %3098 = phi float [ %3235, %3230 ], [ %3058, %3092 ]
  %3099 = phi float [ %3236, %3230 ], [ %3059, %3092 ]
  %3100 = phi float [ %3237, %3230 ], [ %3060, %3092 ]
  %3101 = phi float [ %3238, %3230 ], [ %3061, %3092 ]
  %3102 = phi i32 [ %3239, %3230 ], [ %3062, %3092 ]
  %3103 = phi float [ %3240, %3230 ], [ %3063, %3092 ]
  %3104 = phi float [ %3241, %3230 ], [ %3064, %3092 ]
  %3105 = phi float [ %3242, %3230 ], [ %3065, %3092 ]
  %3106 = phi i32 [ %3243, %3230 ], [ %3066, %3092 ]
  %3107 = phi float [ %3244, %3230 ], [ %3067, %3092 ]
  %3108 = phi i32 [ %3113, %3230 ], [ %3090, %3092 ]
  %3109 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3108)  ; FirstbitLo(value)
  %3110 = add i32 %3109, %3075
  %3111 = and i32 %3109, 31
  %3112 = shl i32 1, %3111
  %3113 = xor i32 %3112, %3108
  %3114 = mul i32 %3110, 72
  %3115 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3114, i32 undef)  ; BufferLoad(srv,index,wot)
  %3116 = extractvalue %dx.types.ResRet.f32 %3115, 0
  %3117 = extractvalue %dx.types.ResRet.f32 %3115, 1
  %3118 = extractvalue %dx.types.ResRet.f32 %3115, 2
  %3119 = add i32 %3114, 12
  %3120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3119, i32 undef)  ; BufferLoad(srv,index,wot)
  %3121 = extractvalue %dx.types.ResRet.i32 %3120, 0
  %3122 = add i32 %3114, 16
  %3123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3122, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.f32 %3123, 0
  %3125 = extractvalue %dx.types.ResRet.f32 %3123, 1
  %3126 = extractvalue %dx.types.ResRet.f32 %3123, 2
  %3127 = add i32 %3114, 28
  %3128 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.f32 %3128, 0
  %3130 = add i32 %3114, 32
  %3131 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = extractvalue %dx.types.ResRet.f32 %3131, 3
  %3136 = add i32 %3114, 48
  %3137 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = extractvalue %dx.types.ResRet.f32 %3137, 1
  %3140 = add i32 %3114, 56
  %3141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = extractvalue %dx.types.ResRet.f32 %3141, 1
  %3144 = add i32 %3114, 64
  %3145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.ResRet.f32 %3145, 1
  %3148 = mul i32 %3110, 60
  %3149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.ResRet.f32 %3149, 1
  %3152 = extractvalue %dx.types.ResRet.f32 %3149, 2
  %3153 = add i32 %3148, 12
  %3154 = add i32 %3148, 48
  %3155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.f32 %3155, 0
  %3157 = extractvalue %dx.types.ResRet.f32 %3155, 1
  %3158 = extractvalue %dx.types.ResRet.f32 %3155, 2
  %3159 = and i32 %3121, 32767
  %3160 = bitcast float %3116 to i32
  %3161 = bitcast float %3117 to i32
  %3162 = and i32 %3121, 32768
  %3163 = icmp ne i32 %3162, 0
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 3
  %3166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3167 = extractvalue %dx.types.CBufRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.CBufRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3166, 2
  %3170 = fsub fast float %3150, %3167
  %3171 = fsub fast float %3151, %3168
  %3172 = fsub fast float %3152, %3169
  %3173 = fsub fast float %153, %3170
  %3174 = fsub fast float %154, %3171
  %3175 = fsub fast float %155, %3172
  %3176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3177 = extractvalue %dx.types.ResRet.f32 %3176, 0
  %3178 = extractvalue %dx.types.ResRet.f32 %3176, 1
  %3179 = extractvalue %dx.types.ResRet.f32 %3176, 2
  %3180 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3177, float %3178, float %3179)  ; Dot3(ax,ay,az,bx,by,bz)
  %3181 = add i32 %3148, 24
  %3182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.f32 %3182, 0
  %3184 = extractvalue %dx.types.ResRet.f32 %3182, 1
  %3185 = extractvalue %dx.types.ResRet.f32 %3182, 2
  %3186 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3183, float %3184, float %3185)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = add i32 %3148, 36
  %3188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.f32 %3188, 0
  %3190 = extractvalue %dx.types.ResRet.f32 %3188, 1
  %3191 = extractvalue %dx.types.ResRet.f32 %3188, 2
  %3192 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3189, float %3190, float %3191)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = call float @dx.op.unary.f32(i32 6, float %3180)  ; FAbs(value)
  %3194 = call float @dx.op.unary.f32(i32 6, float %3186)  ; FAbs(value)
  %3195 = call float @dx.op.unary.f32(i32 6, float %3192)  ; FAbs(value)
  %3196 = fsub fast float %3156, %3193
  %3197 = fsub fast float %3157, %3194
  %3198 = fsub fast float %3158, %3195
  %3199 = fmul fast float %3196, %3124
  %3200 = fmul fast float %3197, %3125
  %3201 = fmul fast float %3198, %3126
  %3202 = call float @dx.op.binary.f32(i32 36, float %3200, float %3201)  ; FMin(a,b)
  %3203 = call float @dx.op.binary.f32(i32 36, float %3199, float %3202)  ; FMin(a,b)
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  %3205 = call float @dx.op.binary.f32(i32 36, float %3107, float %3204)  ; FMin(a,b)
  %3206 = uitofp i1 %3163 to float
  %3207 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %3208 = fsub fast float %3207, %3206
  %3209 = fmul fast float %3205, %3208
  %3210 = lshr i32 %3094, 8
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fptoui float %3212 to i32
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3215 = extractvalue %dx.types.CBufRet.f32 %3214, 1
  %3216 = bitcast float %3215 to i32
  %3217 = lshr i32 %3216, 24
  %3218 = uitofp i32 %3217 to float
  %3219 = fptoui float %3218 to i32
  %3220 = icmp ne i32 %3219, 1
  %3221 = zext i1 %3220 to i32
  %3222 = add i32 %3221, %3213
  %3223 = uitofp i32 %3222 to float
  %3224 = fptoui float %3223 to i32
  %3225 = shl i32 %3224, 8
  %3226 = and i32 %3225, 65280
  %3227 = and i32 %3094, -65281
  %3228 = or i32 %3226, %3227
  %3229 = fcmp fast ogt float %3209, 0.000000e+00
  br i1 %3229, label %3246, label %3230

; <label>:3230                                    ; preds = %3602, %3471, %3093
  %3231 = phi i32 [ %3549, %3471 ], [ %3228, %3093 ], [ %3549, %3602 ]
  %3232 = phi i32 [ %3095, %3471 ], [ %3095, %3093 ], [ %3617, %3602 ]
  %3233 = phi float [ %3535, %3471 ], [ %3096, %3093 ], [ %3535, %3602 ]
  %3234 = phi float [ %3536, %3471 ], [ %3097, %3093 ], [ %3536, %3602 ]
  %3235 = phi float [ %3537, %3471 ], [ %3098, %3093 ], [ %3537, %3602 ]
  %3236 = phi float [ %3596, %3471 ], [ %3099, %3093 ], [ %3596, %3602 ]
  %3237 = phi float [ %3597, %3471 ], [ %3100, %3093 ], [ %3597, %3602 ]
  %3238 = phi float [ %3598, %3471 ], [ %3101, %3093 ], [ %3598, %3602 ]
  %3239 = phi i32 [ %3600, %3471 ], [ %3102, %3093 ], [ %3600, %3602 ]
  %3240 = phi float [ %3553, %3471 ], [ %3103, %3093 ], [ %3553, %3602 ]
  %3241 = phi float [ %3554, %3471 ], [ %3104, %3093 ], [ %3554, %3602 ]
  %3242 = phi float [ %3555, %3471 ], [ %3105, %3093 ], [ %3555, %3602 ]
  %3243 = phi i32 [ 0, %3471 ], [ %3106, %3093 ], [ 0, %3602 ]
  %3244 = phi float [ %3538, %3471 ], [ %3107, %3093 ], [ %3538, %3602 ]
  %3245 = icmp eq i32 %3108, %3112
  br i1 %3245, label %3618, label %3093

; <label>:3246                                    ; preds = %3093
  %3247 = extractvalue %dx.types.CBufRet.f32 %3214, 0
  %3248 = bitcast float %3247 to i32
  %3249 = lshr i32 %3248, 8
  %3250 = and i32 %3249, 255
  %3251 = uitofp i32 %3250 to float
  %3252 = fptoui float %3251 to i32
  %3253 = and i32 %3252, 2
  %3254 = icmp eq i32 %3253, 0
  br i1 %3254, label %3261, label %3255

; <label>:3255                                    ; preds = %3246
  %3256 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = call float @dx.op.unary.f32(i32 25, float %3256)  ; Rsqrt(value)
  %3258 = fmul fast float %3257, %153
  %3259 = fmul fast float %3257, %154
  %3260 = fmul fast float %3257, %155
  br label %3261

; <label>:3261                                    ; preds = %3255, %3246
  %3262 = phi float [ %3258, %3255 ], [ %1713, %3246 ]
  %3263 = phi float [ %3259, %3255 ], [ %1714, %3246 ]
  %3264 = phi float [ %3260, %3255 ], [ %1715, %3246 ]
  %3265 = icmp ne i32 %3160, -1
  %3266 = fcmp oeq float %3165, 0.000000e+00
  %3267 = and i1 %3266, %3265
  br i1 %3267, label %3268, label %3392

; <label>:3268                                    ; preds = %3261
  %3269 = fsub fast float -0.000000e+00, %3177
  %3270 = fsub fast float -0.000000e+00, %3178
  %3271 = fsub fast float -0.000000e+00, %3179
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3262, float %3263, float %3264, float %3269, float %3270, float %3271)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = fsub fast float -0.000000e+00, %3272
  %3274 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3269, float %3270, float %3271)  ; Dot3(ax,ay,az,bx,by,bz)
  %3275 = fadd fast float %3274, %3139
  %3276 = fadd fast float %3138, %3274
  %3277 = fsub fast float -0.000000e+00, %3276
  %3278 = fcmp ogt float %3272, -0.000000e+00
  %3279 = select i1 %3278, float %3277, float %3275
  %3280 = call float @dx.op.unary.f32(i32 6, float %3273)  ; FAbs(value)
  %3281 = fdiv fast float 1.000000e+00, %3280
  %3282 = fmul fast float %3279, %3281
  %3283 = call float @dx.op.binary.f32(i32 35, float %3282, float 0.000000e+00)  ; FMax(a,b)
  %3284 = fsub fast float -0.000000e+00, %3183
  %3285 = fsub fast float -0.000000e+00, %3184
  %3286 = fsub fast float -0.000000e+00, %3185
  %3287 = call float @dx.op.dot3.f32(i32 55, float %3262, float %3263, float %3264, float %3284, float %3285, float %3286)  ; Dot3(ax,ay,az,bx,by,bz)
  %3288 = fsub fast float -0.000000e+00, %3287
  %3289 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3284, float %3285, float %3286)  ; Dot3(ax,ay,az,bx,by,bz)
  %3290 = fadd fast float %3289, %3143
  %3291 = fadd fast float %3142, %3289
  %3292 = fsub fast float -0.000000e+00, %3291
  %3293 = fcmp ogt float %3287, -0.000000e+00
  %3294 = select i1 %3293, float %3292, float %3290
  %3295 = call float @dx.op.unary.f32(i32 6, float %3288)  ; FAbs(value)
  %3296 = fdiv fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3294, %3296
  %3298 = call float @dx.op.binary.f32(i32 35, float %3297, float 0.000000e+00)  ; FMax(a,b)
  %3299 = fsub fast float -0.000000e+00, %3189
  %3300 = fsub fast float -0.000000e+00, %3190
  %3301 = fsub fast float -0.000000e+00, %3191
  %3302 = call float @dx.op.dot3.f32(i32 55, float %3262, float %3263, float %3264, float %3299, float %3300, float %3301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3303 = fsub fast float -0.000000e+00, %3302
  %3304 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3174, float %3175, float %3299, float %3300, float %3301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3305 = fadd fast float %3304, %3147
  %3306 = fadd fast float %3146, %3304
  %3307 = fsub fast float -0.000000e+00, %3306
  %3308 = fcmp ogt float %3302, -0.000000e+00
  %3309 = select i1 %3308, float %3307, float %3305
  %3310 = call float @dx.op.unary.f32(i32 6, float %3303)  ; FAbs(value)
  %3311 = fdiv fast float 1.000000e+00, %3310
  %3312 = fmul fast float %3309, %3311
  %3313 = call float @dx.op.binary.f32(i32 35, float %3312, float 0.000000e+00)  ; FMax(a,b)
  %3314 = call float @dx.op.binary.f32(i32 36, float %3298, float %3313)  ; FMin(a,b)
  %3315 = call float @dx.op.binary.f32(i32 36, float %3283, float %3314)  ; FMin(a,b)
  %3316 = fmul fast float %3315, %3262
  %3317 = fmul fast float %3315, %3263
  %3318 = fmul fast float %3315, %3264
  %3319 = fadd fast float %3316, %153
  %3320 = fadd fast float %3317, %154
  %3321 = fadd fast float %3318, %155
  %3322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3323 = extractvalue %dx.types.CBufRet.f32 %3322, 0
  %3324 = extractvalue %dx.types.CBufRet.f32 %3322, 1
  %3325 = extractvalue %dx.types.CBufRet.f32 %3322, 2
  %3326 = fadd fast float %3319, %3323
  %3327 = fadd fast float %3320, %3324
  %3328 = fadd fast float %3321, %3325
  %3329 = fcmp fast olt float %3283, %3298
  %3330 = fcmp fast olt float %3283, %3313
  %3331 = and i1 %3329, %3330
  br i1 %3331, label %3335, label %3332

; <label>:3332                                    ; preds = %3268
  %3333 = fcmp fast olt float %3298, %3313
  br i1 %3333, label %3334, label %3335

; <label>:3334                                    ; preds = %3332
  br label %3335

; <label>:3335                                    ; preds = %3334, %3332, %3268
  %3336 = phi float [ 0.000000e+00, %3334 ], [ 0.000000e+00, %3332 ], [ 1.000000e+00, %3268 ]
  %3337 = phi float [ 1.000000e+00, %3334 ], [ 0.000000e+00, %3332 ], [ 0.000000e+00, %3268 ]
  %3338 = phi float [ 0.000000e+00, %3334 ], [ 1.000000e+00, %3332 ], [ 0.000000e+00, %3268 ]
  %3339 = phi float [ %3183, %3334 ], [ %3189, %3332 ], [ %3177, %3268 ]
  %3340 = phi float [ %3184, %3334 ], [ %3190, %3332 ], [ %3178, %3268 ]
  %3341 = phi float [ %3185, %3334 ], [ %3191, %3332 ], [ %3179, %3268 ]
  %3342 = call float @dx.op.unary.f32(i32 6, float %3341)  ; FAbs(value)
  %3343 = fcmp fast olt float %3342, 0x3FE276C8C0000000
  %3344 = select i1 %3343, float 0.000000e+00, float 1.000000e+00
  %3345 = select i1 %3343, float 1.000000e+00, float 0.000000e+00
  %3346 = fmul fast float %3345, %3340
  %3347 = fmul fast float %3344, %3341
  %3348 = fsub fast float %3346, %3347
  %3349 = fmul fast float %3339, %3345
  %3350 = fsub fast float -0.000000e+00, %3349
  %3351 = fmul fast float %3344, %3339
  %3352 = call float @dx.op.dot3.f32(i32 55, float %3348, float %3350, float %3351, float %3348, float %3350, float %3351)  ; Dot3(ax,ay,az,bx,by,bz)
  %3353 = call float @dx.op.unary.f32(i32 25, float %3352)  ; Rsqrt(value)
  %3354 = fmul fast float %3348, %3353
  %3355 = fmul fast float %3353, %3350
  %3356 = fmul fast float %3351, %3353
  %3357 = fmul fast float %3356, %3340
  %3358 = fmul fast float %3355, %3341
  %3359 = fsub fast float %3357, %3358
  %3360 = fmul fast float %3354, %3341
  %3361 = fmul fast float %3356, %3339
  %3362 = fsub fast float %3360, %3361
  %3363 = fmul fast float %3355, %3339
  %3364 = fmul fast float %3354, %3340
  %3365 = fsub fast float %3363, %3364
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3359, float %3362, float %3365, float %3359, float %3362, float %3365)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = call float @dx.op.unary.f32(i32 25, float %3366)  ; Rsqrt(value)
  %3368 = fmul fast float %3359, %3367
  %3369 = fmul fast float %3362, %3367
  %3370 = fmul fast float %3365, %3367
  %3371 = call float @dx.op.dot3.f32(i32 55, float %3326, float %3327, float %3328, float %3354, float %3355, float %3356)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = call float @dx.op.dot3.f32(i32 55, float %3326, float %3327, float %3328, float %3368, float %3369, float %3370)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = fmul fast float %3371, 0x3FA99999A0000000
  %3374 = fmul fast float %3372, 0x3FA99999A0000000
  %3375 = call float @dx.op.unary.f32(i32 22, float %3373)  ; Frc(value)
  %3376 = call float @dx.op.unary.f32(i32 22, float %3374)  ; Frc(value)
  %3377 = fadd fast float %3375, 0xBFB99999A0000000
  %3378 = fadd fast float %3376, 0xBFB99999A0000000
  %3379 = call float @dx.op.unary.f32(i32 6, float %3377)  ; FAbs(value)
  %3380 = call float @dx.op.unary.f32(i32 6, float %3378)  ; FAbs(value)
  %3381 = fmul fast float %3379, 1.000000e+01
  %3382 = fmul fast float %3380, 1.000000e+01
  %3383 = call float @dx.op.binary.f32(i32 36, float %3381, float %3382)  ; FMin(a,b)
  %3384 = call float @dx.op.unary.f32(i32 7, float %3383)  ; Saturate(value)
  %3385 = fsub fast float 1.000000e+00, %3384
  %3386 = fmul fast float %3385, %3336
  %3387 = fmul fast float %3385, %3337
  %3388 = fmul fast float %3385, %3338
  %3389 = fsub fast float %3319, %3116
  %3390 = fsub fast float %3320, %3117
  %3391 = fsub fast float %3321, %3118
  br label %3399

; <label>:3392                                    ; preds = %3261
  %3393 = fmul fast float %3262, 8.096000e+03
  %3394 = fmul fast float %3263, 8.096000e+03
  %3395 = fmul fast float %3264, 8.096000e+03
  %3396 = fadd fast float %3393, %153
  %3397 = fadd fast float %3394, %154
  %3398 = fadd fast float %3395, %155
  br label %3399

; <label>:3399                                    ; preds = %3392, %3335
  %3400 = phi float [ %3262, %3392 ], [ %3389, %3335 ]
  %3401 = phi float [ %3263, %3392 ], [ %3390, %3335 ]
  %3402 = phi float [ %3264, %3392 ], [ %3391, %3335 ]
  %3403 = phi float [ %3396, %3392 ], [ %3319, %3335 ]
  %3404 = phi float [ %3397, %3392 ], [ %3320, %3335 ]
  %3405 = phi float [ %3398, %3392 ], [ %3321, %3335 ]
  %3406 = phi float [ 0.000000e+00, %3392 ], [ %3386, %3335 ]
  %3407 = phi float [ 0.000000e+00, %3392 ], [ %3387, %3335 ]
  %3408 = phi float [ 0.000000e+00, %3392 ], [ %3388, %3335 ]
  %3409 = fcmp fast olt float %3135, 1.000000e+00
  br i1 %3409, label %3410, label %3441, !dx.controlflow.hints !125

; <label>:3410                                    ; preds = %3399
  %3411 = fmul fast float %3402, %3133
  %3412 = fmul fast float %3401, %3134
  %3413 = fsub fast float %3411, %3412
  %3414 = fmul fast float %3400, %3134
  %3415 = fmul fast float %3402, %3132
  %3416 = fsub fast float %3414, %3415
  %3417 = fmul fast float %3401, %3132
  %3418 = fmul fast float %3400, %3133
  %3419 = fsub fast float %3417, %3418
  %3420 = fmul fast float %3413, 2.000000e+00
  %3421 = fmul fast float %3416, 2.000000e+00
  %3422 = fmul fast float %3419, 2.000000e+00
  %3423 = fmul fast float %3420, %3135
  %3424 = fmul fast float %3421, %3135
  %3425 = fmul fast float %3422, %3135
  %3426 = fmul fast float %3422, %3133
  %3427 = fmul fast float %3421, %3134
  %3428 = fmul fast float %3420, %3134
  %3429 = fmul fast float %3422, %3132
  %3430 = fmul fast float %3421, %3132
  %3431 = fmul fast float %3420, %3133
  %3432 = fadd fast float %3426, %3400
  %3433 = fadd fast float %3432, %3423
  %3434 = fsub fast float %3433, %3427
  %3435 = fsub fast float %3401, %3429
  %3436 = fadd fast float %3435, %3424
  %3437 = fadd fast float %3436, %3428
  %3438 = fadd fast float %3425, %3402
  %3439 = fsub fast float %3438, %3431
  %3440 = fadd fast float %3439, %3430
  br label %3441

; <label>:3441                                    ; preds = %3410, %3399
  %3442 = phi float [ %3434, %3410 ], [ %3400, %3399 ]
  %3443 = phi float [ %3437, %3410 ], [ %3401, %3399 ]
  %3444 = phi float [ %3440, %3410 ], [ %3402, %3399 ]
  br i1 %3267, label %3445, label %3468

; <label>:3445                                    ; preds = %3441
  %3446 = fsub fast float %3403, %153
  %3447 = fsub fast float %3404, %154
  %3448 = fsub fast float %3405, %155
  %3449 = fsub fast float %3403, %3116
  %3450 = fsub fast float %3404, %3117
  %3451 = fsub fast float %3405, %3118
  %3452 = call float @dx.op.dot3.f32(i32 55, float %3446, float %3447, float %3448, float %3446, float %3447, float %3448)  ; Dot3(ax,ay,az,bx,by,bz)
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3449, float %3450, float %3451, float %3449, float %3450, float %3451)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = fadd fast float %3453, 0x3EE4F8B580000000
  %3455 = fdiv fast float %3452, %3454
  %3456 = bitcast float %3455 to i32
  %3457 = ashr i32 %3456, 1
  %3458 = add nsw i32 %3457, 532487669
  %3459 = bitcast i32 %3458 to float
  %3460 = call float @dx.op.unary.f32(i32 7, float %3459)  ; Saturate(value)
  %3461 = fmul fast float %3460, 0x4009981AE0000000
  %3462 = fsub fast float 0x40111BBD80000000, %3461
  %3463 = fmul fast float %3462, %3460
  %3464 = fadd fast float %3463, 0xC0009F6020000000
  %3465 = fmul fast float %3464, %3460
  %3466 = fadd fast float %3465, 1.000000e+00
  %3467 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  br label %3471

; <label>:3468                                    ; preds = %3441
  %3469 = icmp ne i32 %3161, -1
  %3470 = zext i1 %3469 to i32
  br label %3471

; <label>:3471                                    ; preds = %3468, %3445
  %3472 = phi float [ 0.000000e+00, %3468 ], [ %3467, %3445 ]
  %3473 = phi i32 [ %3470, %3468 ], [ 0, %3445 ]
  %3474 = fmul float %3472, 5.000000e+00
  %3475 = fsub float 5.000000e+00, %3474
  %3476 = icmp ne i32 %3473, 0
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 3
  %3479 = fadd fast float %3478, %3475
  %3480 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3479)  ; FMax(a,b)
  %3481 = call float @dx.op.unary.f32(i32 6, float %3442)  ; FAbs(value)
  %3482 = call float @dx.op.unary.f32(i32 6, float %3443)  ; FAbs(value)
  %3483 = fadd fast float %3482, %3481
  %3484 = call float @dx.op.unary.f32(i32 6, float %3444)  ; FAbs(value)
  %3485 = fadd fast float %3483, %3484
  %3486 = fcmp fast oeq float %3485, 0.000000e+00
  %3487 = fdiv fast float 1.000000e+00, %3485
  %3488 = select i1 %3486, float 1.000000e+00, float %3487
  %3489 = fmul fast float %3488, %3442
  %3490 = fmul fast float %3488, %3443
  %3491 = call float @dx.op.unary.f32(i32 6, float %3490)  ; FAbs(value)
  %3492 = call float @dx.op.unary.f32(i32 6, float %3489)  ; FAbs(value)
  %3493 = fsub fast float 1.000000e+00, %3491
  %3494 = fsub fast float 1.000000e+00, %3492
  %3495 = fcmp fast oge float %3489, 0.000000e+00
  %3496 = fcmp fast oge float %3490, 0.000000e+00
  %3497 = select i1 %3495, float 1.000000e+00, float -1.000000e+00
  %3498 = select i1 %3496, float 1.000000e+00, float -1.000000e+00
  %3499 = fcmp fast ole float %3444, 0.000000e+00
  %3500 = fmul fast float %3497, %3493
  %3501 = fmul fast float %3498, %3494
  %3502 = select i1 %3499, float %3500, float %3489
  %3503 = select i1 %3499, float %3501, float %3490
  %3504 = fmul fast float %3502, 5.000000e-01
  %3505 = fmul fast float %3503, 5.000000e-01
  %3506 = fadd fast float %3504, 5.000000e-01
  %3507 = fadd fast float %3505, 5.000000e-01
  %3508 = uitofp i32 %3159 to float
  %3509 = call float @dx.op.binary.f32(i32 36, float %3480, float 3.000000e+00)  ; FMin(a,b)
  %3510 = fadd fast float %3509, 2.000000e+00
  %3511 = call float @dx.op.unary.f32(i32 21, float %3510)  ; Exp(value)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3477, 1
  %3513 = fmul fast float %3512, %3511
  %3514 = fmul fast float %3513, 2.000000e+00
  %3515 = fsub fast float 1.000000e+00, %3514
  %3516 = fmul fast float %3506, %3515
  %3517 = fmul fast float %3507, %3515
  %3518 = fadd fast float %3516, %3513
  %3519 = fadd fast float %3517, %3513
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %3518, float %3519, float %3508, float undef, i32 0, i32 0, i32 undef, float %3480)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3526 = fmul fast float %3525, %3129
  %3527 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3526)  ; FMin(a,b)
  %3528 = select i1 %3476, float %3527, float %3526
  %3529 = fmul fast float %3521, %3209
  %3530 = fmul fast float %3529, %3528
  %3531 = fmul fast float %3522, %3209
  %3532 = fmul fast float %3531, %3528
  %3533 = fmul fast float %3523, %3209
  %3534 = fmul fast float %3533, %3528
  %3535 = fadd fast float %3530, %3096
  %3536 = fadd fast float %3532, %3097
  %3537 = fadd fast float %3534, %3098
  %3538 = fsub fast float %3107, %3209
  %3539 = and i32 %3224, 255
  %3540 = uitofp i32 %3539 to float
  %3541 = fptoui float %3540 to i32
  %3542 = icmp eq i32 %3219, 1
  %3543 = zext i1 %3542 to i32
  %3544 = add i32 %3543, %3541
  %3545 = uitofp i32 %3544 to float
  %3546 = fptoui float %3545 to i32
  %3547 = shl i32 %3546, 8
  %3548 = and i32 %3547, 65280
  %3549 = or i32 %3548, %3227
  %3550 = fmul fast float %3406, %3209
  %3551 = fmul fast float %3407, %3209
  %3552 = fmul fast float %3408, %3209
  %3553 = fadd fast float %3550, %3103
  %3554 = fadd fast float %3551, %3104
  %3555 = fadd fast float %3552, %3105
  %3556 = fmul fast float %3508, 0x3FE3C6EF40000000
  %3557 = call float @dx.op.unary.f32(i32 22, float %3556)  ; Frc(value)
  %3558 = fadd fast float %3557, 0x3FE5555560000000
  %3559 = fadd fast float %3557, 0x3FD5555560000000
  %3560 = fsub fast float -0.000000e+00, %3557
  %3561 = fsub fast float -0.000000e+00, %3558
  %3562 = fsub fast float -0.000000e+00, %3559
  %3563 = fcmp fast oge float %3557, %3560
  %3564 = fcmp fast oge float %3558, %3561
  %3565 = fcmp fast oge float %3559, %3562
  %3566 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3567 = call float @dx.op.unary.f32(i32 6, float %3558)  ; FAbs(value)
  %3568 = call float @dx.op.unary.f32(i32 6, float %3559)  ; FAbs(value)
  %3569 = call float @dx.op.unary.f32(i32 22, float %3566)  ; Frc(value)
  %3570 = call float @dx.op.unary.f32(i32 22, float %3567)  ; Frc(value)
  %3571 = call float @dx.op.unary.f32(i32 22, float %3568)  ; Frc(value)
  %3572 = fsub fast float -0.000000e+00, %3569
  %3573 = fsub fast float -0.000000e+00, %3570
  %3574 = fsub fast float -0.000000e+00, %3571
  %3575 = select i1 %3563, float %3569, float %3572
  %3576 = select i1 %3564, float %3570, float %3573
  %3577 = select i1 %3565, float %3571, float %3574
  %3578 = fmul fast float %3575, 6.000000e+00
  %3579 = fmul fast float %3576, 6.000000e+00
  %3580 = fmul fast float %3577, 6.000000e+00
  %3581 = fadd fast float %3578, -3.000000e+00
  %3582 = fadd fast float %3579, -3.000000e+00
  %3583 = fadd fast float %3580, -3.000000e+00
  %3584 = call float @dx.op.unary.f32(i32 6, float %3581)  ; FAbs(value)
  %3585 = call float @dx.op.unary.f32(i32 6, float %3582)  ; FAbs(value)
  %3586 = call float @dx.op.unary.f32(i32 6, float %3583)  ; FAbs(value)
  %3587 = fadd fast float %3584, -1.000000e+00
  %3588 = fadd fast float %3585, -1.000000e+00
  %3589 = fadd fast float %3586, -1.000000e+00
  %3590 = call float @dx.op.unary.f32(i32 7, float %3587)  ; Saturate(value)
  %3591 = call float @dx.op.unary.f32(i32 7, float %3588)  ; Saturate(value)
  %3592 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3593 = fmul fast float %3590, %3209
  %3594 = fmul fast float %3591, %3209
  %3595 = fmul fast float %3592, %3209
  %3596 = fadd fast float %3593, %3099
  %3597 = fadd fast float %3594, %3100
  %3598 = fadd fast float %3595, %3101
  %3599 = icmp eq i32 %3159, 0
  %3600 = select i1 %3599, i32 1, i32 %3102
  %3601 = icmp eq i32 %3106, 0
  br i1 %3601, label %3230, label %3602

; <label>:3602                                    ; preds = %3471
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3604 = extractvalue %dx.types.CBufRet.f32 %3603, 0
  %3605 = bitcast float %3604 to i32
  %3606 = lshr i32 %3605, 8
  %3607 = and i32 %3606, 255
  %3608 = uitofp i32 %3607 to float
  %3609 = fptoui float %3608 to i32
  %3610 = icmp eq i32 %3609, 16
  %3611 = bitcast float %3526 to i32
  %3612 = select i1 %3610, i32 %3611, i32 %3095
  %3613 = icmp eq i32 %3609, 17
  %3614 = select i1 %3613, i32 1065353216, i32 %3612
  %3615 = icmp eq i32 %3609, 18
  %3616 = bitcast float %3528 to i32
  %3617 = select i1 %3615, i32 %3616, i32 %3614
  br label %3230

; <label>:3618                                    ; preds = %3230
  br label %3619

; <label>:3619                                    ; preds = %3618, %3053
  %3620 = phi i32 [ %3054, %3053 ], [ %3231, %3618 ]
  %3621 = phi i32 [ %3055, %3053 ], [ %3232, %3618 ]
  %3622 = phi float [ %3056, %3053 ], [ %3233, %3618 ]
  %3623 = phi float [ %3057, %3053 ], [ %3234, %3618 ]
  %3624 = phi float [ %3058, %3053 ], [ %3235, %3618 ]
  %3625 = phi float [ %3059, %3053 ], [ %3236, %3618 ]
  %3626 = phi float [ %3060, %3053 ], [ %3237, %3618 ]
  %3627 = phi float [ %3061, %3053 ], [ %3238, %3618 ]
  %3628 = phi i32 [ %3062, %3053 ], [ %3239, %3618 ]
  %3629 = phi float [ %3063, %3053 ], [ %3240, %3618 ]
  %3630 = phi float [ %3064, %3053 ], [ %3241, %3618 ]
  %3631 = phi float [ %3065, %3053 ], [ %3242, %3618 ]
  %3632 = phi i32 [ %3066, %3053 ], [ %3243, %3618 ]
  %3633 = phi float [ %3067, %3053 ], [ %3244, %3618 ]
  %3634 = add i32 %3068, 1
  %3635 = icmp ugt i32 %3634, %3050
  br i1 %3635, label %3636, label %3053, !llvm.loop !126

; <label>:3636                                    ; preds = %3619
  br label %3637

; <label>:3637                                    ; preds = %3636, %3001
  %3638 = phi i32 [ %1687, %3001 ], [ %3620, %3636 ]
  %3639 = phi i32 [ %2992, %3001 ], [ %3621, %3636 ]
  %3640 = phi float [ 0.000000e+00, %3001 ], [ %3622, %3636 ]
  %3641 = phi float [ 0.000000e+00, %3001 ], [ %3623, %3636 ]
  %3642 = phi float [ 0.000000e+00, %3001 ], [ %3624, %3636 ]
  %3643 = phi float [ 0.000000e+00, %3001 ], [ %3625, %3636 ]
  %3644 = phi float [ 0.000000e+00, %3001 ], [ %3626, %3636 ]
  %3645 = phi float [ 0.000000e+00, %3001 ], [ %3627, %3636 ]
  %3646 = phi i32 [ 0, %3001 ], [ %3628, %3636 ]
  %3647 = phi float [ 0.000000e+00, %3001 ], [ %3629, %3636 ]
  %3648 = phi float [ 0.000000e+00, %3001 ], [ %3630, %3636 ]
  %3649 = phi float [ 0.000000e+00, %3001 ], [ %3631, %3636 ]
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3640, float %3641, float %3642, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = select i1 %1885, float %3650, float %3641
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3654 = bitcast float %3653 to i32
  %3655 = lshr i32 %3654, 8
  %3656 = and i32 %3655, 255
  %3657 = uitofp i32 %3656 to float
  %3658 = fptoui float %3657 to i32
  %3659 = icmp eq i32 %3658, 13
  br i1 %3659, label %3660, label %3680

; <label>:3660                                    ; preds = %3637
  %3661 = fadd fast float %3643, 1.000000e+00
  %3662 = fadd fast float %3644, 1.000000e+00
  %3663 = fadd fast float %3645, 1.000000e+00
  %3664 = fmul fast float %3661, 5.000000e-01
  %3665 = fmul fast float %3662, 5.000000e-01
  %3666 = fmul fast float %3663, 5.000000e-01
  %3667 = call float @dx.op.unary.f32(i32 7, float %3664)  ; Saturate(value)
  %3668 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3669 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3670 = fmul fast float %3667, 1.023000e+03
  %3671 = fmul fast float %3668, 1.023000e+03
  %3672 = fmul fast float %3669, 1.023000e+03
  %3673 = fptoui float %3670 to i32
  %3674 = fptoui float %3671 to i32
  %3675 = fptoui float %3672 to i32
  %3676 = shl i32 %3674, 10
  %3677 = or i32 %3676, %3673
  %3678 = shl i32 %3675, 20
  %3679 = or i32 %3677, %3678
  br label %3680

; <label>:3680                                    ; preds = %3660, %3637
  %3681 = phi i32 [ %3679, %3660 ], [ %3639, %3637 ]
  %3682 = icmp eq i32 %3658, 14
  %3683 = select i1 %3682, i32 %3646, i32 %3681
  %3684 = icmp eq i32 %3658, 22
  br i1 %3684, label %3685, label %3705

; <label>:3685                                    ; preds = %3680
  %3686 = fadd fast float %3647, 1.000000e+00
  %3687 = fadd fast float %3648, 1.000000e+00
  %3688 = fadd fast float %3649, 1.000000e+00
  %3689 = fmul fast float %3686, 5.000000e-01
  %3690 = fmul fast float %3687, 5.000000e-01
  %3691 = fmul fast float %3688, 5.000000e-01
  %3692 = call float @dx.op.unary.f32(i32 7, float %3689)  ; Saturate(value)
  %3693 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  %3694 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3695 = fmul fast float %3692, 1.023000e+03
  %3696 = fmul fast float %3693, 1.023000e+03
  %3697 = fmul fast float %3694, 1.023000e+03
  %3698 = fptoui float %3695 to i32
  %3699 = fptoui float %3696 to i32
  %3700 = fptoui float %3697 to i32
  %3701 = shl i32 %3699, 10
  %3702 = or i32 %3701, %3698
  %3703 = shl i32 %3700, 20
  %3704 = or i32 %3702, %3703
  br label %3705

; <label>:3705                                    ; preds = %3685, %3680
  %3706 = phi i32 [ %3704, %3685 ], [ %3683, %3680 ]
  %3707 = fmul fast float %3640, 0x3FD45F3060000000
  %3708 = select i1 %1885, float 0.000000e+00, float %3707
  %3709 = fmul fast float %3651, 0x3FD45F3060000000
  %3710 = fmul fast float %3642, 0x3FD45F3060000000
  %3711 = select i1 %1885, float 0.000000e+00, float %3710
  br label %3712

; <label>:3712                                    ; preds = %3705, %2991
  %3713 = phi i32 [ %3638, %3705 ], [ %1687, %2991 ]
  %3714 = phi i32 [ %3706, %3705 ], [ %2992, %2991 ]
  %3715 = phi float [ %3708, %3705 ], [ %2957, %2991 ]
  %3716 = phi float [ %3709, %3705 ], [ %2958, %2991 ]
  %3717 = phi float [ %3711, %3705 ], [ %2959, %2991 ]
  %3718 = phi i1 [ false, %3705 ], [ true, %2991 ]
  %3719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.i32 %3719, 0
  %3721 = and i32 %3720, 524288
  %3722 = icmp ne i32 %3721, 0
  %3723 = select i1 %3722, float 0.000000e+00, float 1.000000e+00
  %3724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3725 = extractvalue %dx.types.CBufRet.f32 %3724, 0
  %3726 = bitcast float %3725 to i32
  %3727 = and i32 %3726, 255
  %3728 = uitofp i32 %3727 to float
  %3729 = fptoui float %3728 to i32
  %3730 = icmp eq i32 %3729, 38
  %3731 = select i1 %3730, i32 0, i32 %3714
  %3732 = lshr i32 %3726, 8
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fptoui float %3734 to i32
  %3736 = icmp eq i32 %3735, 24
  br i1 %3736, label %3737, label %3748

; <label>:3737                                    ; preds = %3712
  %3738 = fadd fast float %1922, 1.000000e+00
  %3739 = fmul fast float %3738, 5.000000e-01
  %3740 = select i1 %1924, float %3739, float 1.000000e+00
  %3741 = call float @dx.op.unary.f32(i32 7, float %3740)  ; Saturate(value)
  %3742 = fmul fast float %3741, 1.023000e+03
  %3743 = fptoui float %3742 to i32
  %3744 = shl i32 %3743, 10
  %3745 = or i32 %3744, %3743
  %3746 = shl i32 %3743, 20
  %3747 = or i32 %3745, %3746
  br label %3748

; <label>:3748                                    ; preds = %3737, %3712
  %3749 = phi i32 [ %3731, %3712 ], [ %3747, %3737 ]
  %3750 = xor i1 %3722, true
  %3751 = zext i1 %3750 to i32
  br i1 %3722, label %3752, label %4036

; <label>:3752                                    ; preds = %3748
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3757 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3772 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3779 = extractvalue %dx.types.CBufRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.CBufRet.f32 %3778, 1
  %3781 = extractvalue %dx.types.CBufRet.f32 %3778, 2
  %3782 = extractvalue %dx.types.CBufRet.f32 %3778, 3
  %3783 = call float @dx.op.dot3.f32(i32 55, float %3779, float %3780, float %3781, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3786 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3787 = select i1 %115, float %3786, float %3785
  %3788 = fmul fast float %3783, 8.000000e+00
  %3789 = fmul fast float %3788, %3787
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fcmp fast ogt float %3790, 0.000000e+00
  br i1 %3791, label %3792, label %4010, !dx.controlflow.hints !127

; <label>:3792                                    ; preds = %3752
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3795 = fmul fast float %1188, 2.000000e+00
  %3796 = fmul fast float %1189, 2.000000e+00
  %3797 = fadd fast float %3795, -1.000000e+00
  %3798 = fadd fast float %3796, -1.000000e+00
  %3799 = fmul fast float %3794, %3797
  %3800 = fmul fast float %3794, %3798
  %3801 = fadd fast float %3799, %98
  %3802 = fadd fast float %3800, %99
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 3
  %3806 = fmul fast float %3801, %3804
  %3807 = fmul fast float %3802, %3805
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %62, float %3806, float %3807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = fcmp fast une float %3809, 0xFFF0000000000000
  %3811 = fcmp fast une float %3809, 0x7FF0000000000000
  %3812 = and i1 %3810, %3811
  %3813 = call float @dx.op.unary.f32(i32 6, float %3809)  ; FAbs(value)
  %3814 = fsub fast float 1.000000e+00, %3813
  %3815 = select i1 %3812, float 1.000000e+00, float 0.000000e+00
  %3816 = fmul fast float %3815, %3790
  %3817 = fcmp fast ogt float %3816, 0.000000e+00
  br i1 %3817, label %3818, label %4010, !dx.controlflow.hints !128

; <label>:3818                                    ; preds = %3792
  %3819 = fmul fast float %3754, %153
  %3820 = call float @dx.op.tertiary.f32(i32 46, float %154, float %3755, float %3819)  ; FMad(a,b,c)
  %3821 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3756, float %3820)  ; FMad(a,b,c)
  %3822 = fadd fast float %3821, %3757
  %3823 = fmul fast float %3759, %153
  %3824 = call float @dx.op.tertiary.f32(i32 46, float %154, float %3760, float %3823)  ; FMad(a,b,c)
  %3825 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3761, float %3824)  ; FMad(a,b,c)
  %3826 = fadd fast float %3825, %3762
  %3827 = fmul fast float %3764, %153
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %154, float %3765, float %3827)  ; FMad(a,b,c)
  %3829 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3766, float %3828)  ; FMad(a,b,c)
  %3830 = fadd fast float %3829, %3767
  %3831 = fdiv fast float 1.000000e+00, %3830
  %3832 = fmul fast float %3831, %3822
  %3833 = fmul fast float %3831, %3826
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = fmul fast float %3832, %3835
  %3838 = fmul fast float %3833, %3836
  %3839 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3840 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3841 = fadd fast float %3837, %3839
  %3842 = fadd fast float %3838, %3840
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3845 = fmul fast float %3844, %1897
  %3846 = fmul fast float %3844, %1898
  %3847 = fmul fast float %3844, %1899
  %3848 = fadd fast float %3845, %153
  %3849 = fadd fast float %3846, %154
  %3850 = fadd fast float %3847, %155
  %3851 = fmul fast float %3848, %3754
  %3852 = call float @dx.op.tertiary.f32(i32 46, float %3849, float %3755, float %3851)  ; FMad(a,b,c)
  %3853 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3756, float %3852)  ; FMad(a,b,c)
  %3854 = fadd fast float %3853, %3757
  %3855 = fmul fast float %3848, %3759
  %3856 = call float @dx.op.tertiary.f32(i32 46, float %3849, float %3760, float %3855)  ; FMad(a,b,c)
  %3857 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3761, float %3856)  ; FMad(a,b,c)
  %3858 = fadd fast float %3857, %3762
  %3859 = fmul fast float %3848, %3764
  %3860 = call float @dx.op.tertiary.f32(i32 46, float %3849, float %3765, float %3859)  ; FMad(a,b,c)
  %3861 = call float @dx.op.tertiary.f32(i32 46, float %3850, float %3766, float %3860)  ; FMad(a,b,c)
  %3862 = fadd fast float %3861, %3767
  %3863 = fdiv fast float 1.000000e+00, %3862
  %3864 = fmul fast float %3863, %3854
  %3865 = fmul fast float %3863, %3858
  %3866 = fmul fast float %3841, 2.000000e+00
  %3867 = fadd fast float %3866, -1.000000e+00
  %3868 = call float @dx.op.unary.f32(i32 6, float %3867)  ; FAbs(value)
  %3869 = fmul fast float %3868, 5.000000e+00
  %3870 = fadd fast float %3869, -4.000000e+00
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fsub fast float %3832, %3864
  %3873 = fmul fast float %3835, %3872
  %3874 = fmul fast float %3873, %3871
  %3875 = fsub fast float %3864, %3832
  %3876 = fmul fast float %3835, %3875
  %3877 = fadd fast float %3876, %3874
  %3878 = fsub fast float %3865, %3833
  %3879 = fmul fast float %3836, %3878
  %3880 = fmul fast float %3877, %3814
  %3881 = fmul fast float %3879, %3814
  %3882 = fadd fast float %3880, %3841
  %3883 = fadd fast float %3881, %3842
  %3884 = fsub fast float %3863, %3831
  %3885 = fmul fast float %3884, %3814
  %3886 = fadd fast float %3885, %3831
  %3887 = fdiv fast float 1.000000e+00, %3886
  %3888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %3882, float %3883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3894 = fmul fast float %3893, %3889
  %3895 = fmul fast float %3893, %3890
  %3896 = fmul fast float %3893, %3891
  %3897 = call float @dx.op.binary.f32(i32 35, float %3887, float 0x3810000000000000)  ; FMax(a,b)
  %3898 = fdiv fast float %3830, %3897
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3904 = fadd fast float %3901, %153
  %3905 = fadd fast float %3902, %154
  %3906 = fadd fast float %3903, %155
  %3907 = fmul fast float %3904, %3769
  %3908 = call float @dx.op.tertiary.f32(i32 46, float %3905, float %3770, float %3907)  ; FMad(a,b,c)
  %3909 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3771, float %3908)  ; FMad(a,b,c)
  %3910 = fadd fast float %3909, %3772
  %3911 = fmul fast float %3904, %3774
  %3912 = call float @dx.op.tertiary.f32(i32 46, float %3905, float %3775, float %3911)  ; FMad(a,b,c)
  %3913 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3776, float %3912)  ; FMad(a,b,c)
  %3914 = fadd fast float %3913, %3777
  %3915 = fmul fast float %3904, %3779
  %3916 = call float @dx.op.tertiary.f32(i32 46, float %3905, float %3780, float %3915)  ; FMad(a,b,c)
  %3917 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3781, float %3916)  ; FMad(a,b,c)
  %3918 = fadd fast float %3917, %3782
  %3919 = fdiv fast float 1.000000e+00, %3918
  %3920 = fmul fast float %3919, %3910
  %3921 = fmul fast float %3919, %3914
  %3922 = fmul fast float %3920, %3835
  %3923 = fmul fast float %3921, %3836
  %3924 = fadd fast float %3922, %3839
  %3925 = fadd fast float %3923, %3840
  %3926 = fadd fast float %3845, %3904
  %3927 = fadd fast float %3846, %3905
  %3928 = fadd fast float %3847, %3906
  %3929 = fmul fast float %3926, %3769
  %3930 = call float @dx.op.tertiary.f32(i32 46, float %3927, float %3770, float %3929)  ; FMad(a,b,c)
  %3931 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3771, float %3930)  ; FMad(a,b,c)
  %3932 = fadd fast float %3931, %3772
  %3933 = fmul fast float %3926, %3774
  %3934 = call float @dx.op.tertiary.f32(i32 46, float %3927, float %3775, float %3933)  ; FMad(a,b,c)
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3776, float %3934)  ; FMad(a,b,c)
  %3936 = fadd fast float %3935, %3777
  %3937 = fmul fast float %3926, %3779
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3927, float %3780, float %3937)  ; FMad(a,b,c)
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3928, float %3781, float %3938)  ; FMad(a,b,c)
  %3940 = fadd fast float %3939, %3782
  %3941 = fdiv fast float 1.000000e+00, %3940
  %3942 = fmul fast float %3941, %3932
  %3943 = fmul fast float %3941, %3936
  %3944 = fmul fast float %3924, 2.000000e+00
  %3945 = fadd fast float %3944, -1.000000e+00
  %3946 = call float @dx.op.unary.f32(i32 6, float %3945)  ; FAbs(value)
  %3947 = fmul fast float %3946, 5.000000e+00
  %3948 = fadd fast float %3947, -4.000000e+00
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = fsub fast float %3920, %3942
  %3951 = fmul fast float %3835, %3950
  %3952 = fmul fast float %3951, %3949
  %3953 = fsub fast float %3942, %3920
  %3954 = fmul fast float %3835, %3953
  %3955 = fadd fast float %3954, %3952
  %3956 = fsub fast float %3943, %3921
  %3957 = fmul fast float %3836, %3956
  %3958 = fmul fast float %3955, %3814
  %3959 = fmul fast float %3957, %3814
  %3960 = fadd fast float %3958, %3924
  %3961 = fadd fast float %3959, %3925
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %61, float %3960, float %3961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3963 = extractvalue %dx.types.ResRet.f32 %3962, 0
  %3964 = extractvalue %dx.types.ResRet.f32 %3962, 1
  %3965 = extractvalue %dx.types.ResRet.f32 %3962, 2
  %3966 = extractvalue %dx.types.CBufRet.f32 %3892, 2
  %3967 = fmul fast float %3966, %3963
  %3968 = fmul fast float %3966, %3964
  %3969 = fmul fast float %3966, %3965
  %3970 = and i32 %1793, 255
  %3971 = uitofp i32 %3970 to float
  %3972 = fmul fast float %3971, 0x3F70101020000000
  %3973 = fmul fast float %3972, %3899
  %3974 = extractvalue %dx.types.CBufRet.f32 %3784, 2
  %3975 = fadd fast float %3974, %3973
  %3976 = call float @dx.op.unary.f32(i32 7, float %3975)  ; Saturate(value)
  %3977 = call float @dx.op.binary.f32(i32 35, float %3894, float 0x3810000000000000)  ; FMax(a,b)
  %3978 = call float @dx.op.binary.f32(i32 35, float %3895, float 0x3810000000000000)  ; FMax(a,b)
  %3979 = call float @dx.op.binary.f32(i32 35, float %3896, float 0x3810000000000000)  ; FMax(a,b)
  %3980 = call float @dx.op.unary.f32(i32 23, float %3977)  ; Log(value)
  %3981 = call float @dx.op.unary.f32(i32 23, float %3978)  ; Log(value)
  %3982 = call float @dx.op.unary.f32(i32 23, float %3979)  ; Log(value)
  %3983 = call float @dx.op.binary.f32(i32 35, float %3967, float 0x3810000000000000)  ; FMax(a,b)
  %3984 = call float @dx.op.binary.f32(i32 35, float %3968, float 0x3810000000000000)  ; FMax(a,b)
  %3985 = call float @dx.op.binary.f32(i32 35, float %3969, float 0x3810000000000000)  ; FMax(a,b)
  %3986 = call float @dx.op.unary.f32(i32 23, float %3983)  ; Log(value)
  %3987 = call float @dx.op.unary.f32(i32 23, float %3984)  ; Log(value)
  %3988 = call float @dx.op.unary.f32(i32 23, float %3985)  ; Log(value)
  %3989 = fsub fast float %3980, %3986
  %3990 = fsub fast float %3981, %3987
  %3991 = fsub fast float %3982, %3988
  %3992 = fmul fast float %3989, %3976
  %3993 = fmul fast float %3990, %3976
  %3994 = fmul fast float %3991, %3976
  %3995 = fadd fast float %3992, %3986
  %3996 = fadd fast float %3993, %3987
  %3997 = fadd fast float %3994, %3988
  %3998 = call float @dx.op.unary.f32(i32 21, float %3995)  ; Exp(value)
  %3999 = call float @dx.op.unary.f32(i32 21, float %3996)  ; Exp(value)
  %4000 = call float @dx.op.unary.f32(i32 21, float %3997)  ; Exp(value)
  %4001 = select i1 %1885, float 0.000000e+00, float %3999
  %4002 = select i1 %1885, float 0.000000e+00, float %4000
  %4003 = fmul fast float %3961, 2.000000e+00
  %4004 = fadd fast float %4003, -1.000000e+00
  %4005 = fmul fast float %4004, %4004
  %4006 = fsub fast float 1.000000e+00, %4005
  %4007 = call float @dx.op.unary.f32(i32 7, float %4006)  ; Saturate(value)
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = fmul fast float %4008, %3816
  br label %4010

; <label>:4010                                    ; preds = %3818, %3792, %3752
  %4011 = phi float [ %3998, %3818 ], [ 0.000000e+00, %3792 ], [ 0.000000e+00, %3752 ]
  %4012 = phi float [ %4001, %3818 ], [ 0.000000e+00, %3792 ], [ 0.000000e+00, %3752 ]
  %4013 = phi float [ %4002, %3818 ], [ 0.000000e+00, %3792 ], [ 0.000000e+00, %3752 ]
  %4014 = phi float [ %4009, %3818 ], [ 0.000000e+00, %3792 ], [ 0.000000e+00, %3752 ]
  %4015 = phi float [ %3814, %3818 ], [ %3814, %3792 ], [ 0.000000e+00, %3752 ]
  %4016 = phi float [ %4009, %3818 ], [ %3816, %3792 ], [ 0.000000e+00, %3752 ]
  %4017 = icmp eq i32 %3735, 25
  br i1 %4017, label %4018, label %4021

; <label>:4018                                    ; preds = %4010
  %4019 = call float @dx.op.unary.f32(i32 6, float %4015)  ; FAbs(value)
  %4020 = bitcast float %4019 to i32
  br label %4021

; <label>:4021                                    ; preds = %4018, %4010
  %4022 = phi i32 [ %4020, %4018 ], [ %3749, %4010 ]
  %4023 = icmp eq i32 %3735, 26
  %4024 = bitcast float %4016 to i32
  %4025 = select i1 %4023, i32 %4024, i32 %4022
  %4026 = icmp eq i32 %3735, 27
  %4027 = select i1 %4026, i32 0, i32 %4025
  %4028 = fcmp fast olt float %4014, 1.000000e+00
  %4029 = or i1 %4028, %3750
  %4030 = zext i1 %4029 to i32
  %4031 = fmul fast float %4014, %3723
  %4032 = fsub fast float %4014, %4031
  %4033 = fmul fast float %4032, %4011
  %4034 = fmul fast float %4032, %4012
  %4035 = fmul fast float %4032, %4013
  br label %4036

; <label>:4036                                    ; preds = %4021, %3748
  %4037 = phi i32 [ %3749, %3748 ], [ %4027, %4021 ]
  %4038 = phi float [ 0.000000e+00, %3748 ], [ %4032, %4021 ]
  %4039 = phi float [ 0.000000e+00, %3748 ], [ %4033, %4021 ]
  %4040 = phi float [ 0.000000e+00, %3748 ], [ %4034, %4021 ]
  %4041 = phi float [ 0.000000e+00, %3748 ], [ %4035, %4021 ]
  %4042 = phi i32 [ %3751, %3748 ], [ %4030, %4021 ]
  %4043 = icmp ne i32 %4042, 0
  %4044 = add i32 %3735, -13
  %4045 = icmp ult i32 %4044, 2
  %4046 = or i1 %4045, %4043
  %4047 = icmp eq i32 %3735, 22
  %4048 = or i1 %4046, %4047
  br i1 %4048, label %4049, label %4783

; <label>:4049                                    ; preds = %4036
  %4050 = select i1 %3718, float %2919, float 1.000000e+00
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4054 = fmul fast float %4052, %98
  %4055 = fmul fast float %4053, %99
  %4056 = fptoui float %4054 to i32
  %4057 = fptoui float %4055 to i32
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4061 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4062 = fadd fast float %87, -4.000000e+00
  %4063 = call float @dx.op.binary.f32(i32 35, float %4062, float 0.000000e+00)  ; FMax(a,b)
  %4064 = fadd fast float %4063, %4059
  %4065 = fmul fast float %4064, %4060
  %4066 = call float @dx.op.unary.f32(i32 23, float %4065)  ; Log(value)
  %4067 = fmul fast float %4066, %4061
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4070 = fmul fast float %4067, %4069
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.i32 %4072, 1
  %4074 = add i32 %4073, -1
  %4075 = uitofp i32 %4073 to float
  %4076 = fmul fast float %4075, %4071
  %4077 = fptoui float %4076 to i32
  %4078 = call i32 @dx.op.binary.i32(i32 40, i32 %4077, i32 %4074)  ; UMin(a,b)
  %4079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.i32 %4079, 2
  %4081 = extractvalue %dx.types.CBufRet.i32 %4079, 3
  %4082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4057, i32 %4080, i32 %4056)  ; UMad(a,b,c)
  %4083 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4078, i32 %4081, i32 %4082)  ; UMad(a,b,c)
  %4084 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %4085 = fptoui float %4084 to i32
  %4086 = lshr i32 %4085, 5
  %4087 = call i32 @dx.op.binary.i32(i32 40, i32 %4086, i32 8191)  ; UMin(a,b)
  %4088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.i32 %4088, 2
  %4090 = add nsw i32 %4089, -1
  %4091 = call i32 @dx.op.binary.i32(i32 37, i32 %4090, i32 0)  ; IMax(a,b)
  %4092 = shl i32 %4087, 2
  %4093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %4092, i32 undef)  ; BufferLoad(srv,index,wot)
  %4094 = extractvalue %dx.types.ResRet.i32 %4093, 0
  %4095 = lshr i32 %4094, 16
  %4096 = and i32 %4094, 65535
  %4097 = lshr i32 %4094, 21
  %4098 = lshr i32 %4096, 5
  %4099 = call i32 @dx.op.binary.i32(i32 40, i32 %4098, i32 %4091)  ; UMin(a,b)
  %4100 = icmp ugt i32 %4097, %4099
  br i1 %4100, label %4695, label %4101

; <label>:4101                                    ; preds = %4049
  br label %4102

; <label>:4102                                    ; preds = %4677, %4101
  %4103 = phi i32 [ %4678, %4677 ], [ %3713, %4101 ]
  %4104 = phi i32 [ %4679, %4677 ], [ %4037, %4101 ]
  %4105 = phi float [ %4680, %4677 ], [ 0.000000e+00, %4101 ]
  %4106 = phi float [ %4681, %4677 ], [ 0.000000e+00, %4101 ]
  %4107 = phi float [ %4682, %4677 ], [ 0.000000e+00, %4101 ]
  %4108 = phi float [ %4683, %4677 ], [ 0.000000e+00, %4101 ]
  %4109 = phi float [ %4684, %4677 ], [ 0.000000e+00, %4101 ]
  %4110 = phi float [ %4685, %4677 ], [ 0.000000e+00, %4101 ]
  %4111 = phi i32 [ %4686, %4677 ], [ 0, %4101 ]
  %4112 = phi float [ %4687, %4677 ], [ 0.000000e+00, %4101 ]
  %4113 = phi float [ %4688, %4677 ], [ 0.000000e+00, %4101 ]
  %4114 = phi float [ %4689, %4677 ], [ 0.000000e+00, %4101 ]
  %4115 = phi i32 [ %4690, %4677 ], [ 1, %4101 ]
  %4116 = phi float [ %4691, %4677 ], [ 1.000000e+00, %4101 ]
  %4117 = phi i32 [ %4692, %4677 ], [ %4097, %4101 ]
  %4118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.i32 %4118, 2
  %4120 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4083, i32 %4119, i32 %4117)  ; UMad(a,b,c)
  %4121 = shl i32 %4120, 2
  %4122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4121, i32 undef)  ; BufferLoad(srv,index,wot)
  %4123 = extractvalue %dx.types.ResRet.i32 %4122, 0
  %4124 = shl i32 %4117, 5
  %4125 = sub nsw i32 %4095, %4124
  %4126 = call i32 @dx.op.binary.i32(i32 37, i32 %4125, i32 0)  ; IMax(a,b)
  %4127 = call i32 @dx.op.binary.i32(i32 38, i32 %4126, i32 31)  ; IMin(a,b)
  %4128 = sub nsw i32 1, %4095
  %4129 = add nsw i32 %4128, %4096
  %4130 = call i32 @dx.op.binary.i32(i32 37, i32 %4129, i32 0)  ; IMax(a,b)
  %4131 = call i32 @dx.op.binary.i32(i32 38, i32 %4130, i32 32)  ; IMin(a,b)
  %4132 = and i32 %4131, 31
  %4133 = shl i32 -1, %4132
  %4134 = xor i32 %4133, -1
  %4135 = and i32 %4127, 31
  %4136 = shl i32 %4134, %4135
  %4137 = icmp eq i32 %4131, 32
  %4138 = select i1 %4137, i32 -1, i32 %4136
  %4139 = and i32 %4138, %4123
  %4140 = icmp eq i32 %4139, 0
  br i1 %4140, label %4677, label %4141

; <label>:4141                                    ; preds = %4102
  br label %4142

; <label>:4142                                    ; preds = %4279, %4141
  %4143 = phi i32 [ %4280, %4279 ], [ %4103, %4141 ]
  %4144 = phi i32 [ %4281, %4279 ], [ %4104, %4141 ]
  %4145 = phi float [ %4282, %4279 ], [ %4105, %4141 ]
  %4146 = phi float [ %4283, %4279 ], [ %4106, %4141 ]
  %4147 = phi float [ %4284, %4279 ], [ %4107, %4141 ]
  %4148 = phi float [ %4285, %4279 ], [ %4108, %4141 ]
  %4149 = phi float [ %4286, %4279 ], [ %4109, %4141 ]
  %4150 = phi float [ %4287, %4279 ], [ %4110, %4141 ]
  %4151 = phi i32 [ %4288, %4279 ], [ %4111, %4141 ]
  %4152 = phi float [ %4289, %4279 ], [ %4112, %4141 ]
  %4153 = phi float [ %4290, %4279 ], [ %4113, %4141 ]
  %4154 = phi float [ %4291, %4279 ], [ %4114, %4141 ]
  %4155 = phi i32 [ %4292, %4279 ], [ %4115, %4141 ]
  %4156 = phi float [ %4293, %4279 ], [ %4116, %4141 ]
  %4157 = phi i32 [ %4162, %4279 ], [ %4139, %4141 ]
  %4158 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4157)  ; FirstbitLo(value)
  %4159 = add i32 %4158, %4124
  %4160 = and i32 %4158, 31
  %4161 = shl i32 1, %4160
  %4162 = xor i32 %4161, %4157
  %4163 = mul i32 %4159, 72
  %4164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4163, i32 undef)  ; BufferLoad(srv,index,wot)
  %4165 = extractvalue %dx.types.ResRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.ResRet.f32 %4164, 1
  %4167 = extractvalue %dx.types.ResRet.f32 %4164, 2
  %4168 = add i32 %4163, 12
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = add i32 %4163, 16
  %4172 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4171, i32 undef)  ; BufferLoad(srv,index,wot)
  %4173 = extractvalue %dx.types.ResRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.ResRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.ResRet.f32 %4172, 2
  %4176 = add i32 %4163, 28
  %4177 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4176, i32 undef)  ; BufferLoad(srv,index,wot)
  %4178 = extractvalue %dx.types.ResRet.f32 %4177, 0
  %4179 = add i32 %4163, 32
  %4180 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = extractvalue %dx.types.ResRet.f32 %4180, 1
  %4183 = extractvalue %dx.types.ResRet.f32 %4180, 2
  %4184 = extractvalue %dx.types.ResRet.f32 %4180, 3
  %4185 = add i32 %4163, 48
  %4186 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.ResRet.f32 %4186, 1
  %4189 = add i32 %4163, 56
  %4190 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4189, i32 undef)  ; BufferLoad(srv,index,wot)
  %4191 = extractvalue %dx.types.ResRet.f32 %4190, 0
  %4192 = extractvalue %dx.types.ResRet.f32 %4190, 1
  %4193 = add i32 %4163, 64
  %4194 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.ResRet.f32 %4194, 1
  %4197 = mul i32 %4159, 60
  %4198 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4197, i32 undef)  ; BufferLoad(srv,index,wot)
  %4199 = extractvalue %dx.types.ResRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.ResRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.ResRet.f32 %4198, 2
  %4202 = add i32 %4197, 12
  %4203 = add i32 %4197, 48
  %4204 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4203, i32 undef)  ; BufferLoad(srv,index,wot)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = extractvalue %dx.types.ResRet.f32 %4204, 1
  %4207 = extractvalue %dx.types.ResRet.f32 %4204, 2
  %4208 = and i32 %4170, 32767
  %4209 = bitcast float %4165 to i32
  %4210 = bitcast float %4166 to i32
  %4211 = and i32 %4170, 32768
  %4212 = icmp ne i32 %4211, 0
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4215, 2
  %4219 = fsub fast float %4199, %4216
  %4220 = fsub fast float %4200, %4217
  %4221 = fsub fast float %4201, %4218
  %4222 = fsub fast float %153, %4219
  %4223 = fsub fast float %154, %4220
  %4224 = fsub fast float %155, %4221
  %4225 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4225, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4225, 2
  %4229 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4226, float %4227, float %4228)  ; Dot3(ax,ay,az,bx,by,bz)
  %4230 = add i32 %4197, 24
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.ResRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.ResRet.f32 %4231, 2
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4232, float %4233, float %4234)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = add i32 %4197, 36
  %4237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4236, i32 undef)  ; BufferLoad(srv,index,wot)
  %4238 = extractvalue %dx.types.ResRet.f32 %4237, 0
  %4239 = extractvalue %dx.types.ResRet.f32 %4237, 1
  %4240 = extractvalue %dx.types.ResRet.f32 %4237, 2
  %4241 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4238, float %4239, float %4240)  ; Dot3(ax,ay,az,bx,by,bz)
  %4242 = call float @dx.op.unary.f32(i32 6, float %4229)  ; FAbs(value)
  %4243 = call float @dx.op.unary.f32(i32 6, float %4235)  ; FAbs(value)
  %4244 = call float @dx.op.unary.f32(i32 6, float %4241)  ; FAbs(value)
  %4245 = fsub fast float %4205, %4242
  %4246 = fsub fast float %4206, %4243
  %4247 = fsub fast float %4207, %4244
  %4248 = fmul fast float %4245, %4173
  %4249 = fmul fast float %4246, %4174
  %4250 = fmul fast float %4247, %4175
  %4251 = call float @dx.op.binary.f32(i32 36, float %4249, float %4250)  ; FMin(a,b)
  %4252 = call float @dx.op.binary.f32(i32 36, float %4248, float %4251)  ; FMin(a,b)
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = call float @dx.op.binary.f32(i32 36, float %4156, float %4253)  ; FMin(a,b)
  %4255 = uitofp i1 %4212 to float
  %4256 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %4257 = fsub fast float %4256, %4255
  %4258 = fmul fast float %4254, %4257
  %4259 = lshr i32 %4143, 8
  %4260 = and i32 %4259, 255
  %4261 = uitofp i32 %4260 to float
  %4262 = fptoui float %4261 to i32
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 1
  %4265 = bitcast float %4264 to i32
  %4266 = lshr i32 %4265, 24
  %4267 = uitofp i32 %4266 to float
  %4268 = fptoui float %4267 to i32
  %4269 = icmp ne i32 %4268, 1
  %4270 = zext i1 %4269 to i32
  %4271 = add i32 %4270, %4262
  %4272 = uitofp i32 %4271 to float
  %4273 = fptoui float %4272 to i32
  %4274 = shl i32 %4273, 8
  %4275 = and i32 %4274, 65280
  %4276 = and i32 %4143, -65281
  %4277 = or i32 %4275, %4276
  %4278 = fcmp fast ogt float %4258, 0.000000e+00
  br i1 %4278, label %4295, label %4279

; <label>:4279                                    ; preds = %4659, %4528, %4142
  %4280 = phi i32 [ %4606, %4528 ], [ %4277, %4142 ], [ %4606, %4659 ]
  %4281 = phi i32 [ %4144, %4528 ], [ %4144, %4142 ], [ %4675, %4659 ]
  %4282 = phi float [ %4592, %4528 ], [ %4145, %4142 ], [ %4592, %4659 ]
  %4283 = phi float [ %4593, %4528 ], [ %4146, %4142 ], [ %4593, %4659 ]
  %4284 = phi float [ %4594, %4528 ], [ %4147, %4142 ], [ %4594, %4659 ]
  %4285 = phi float [ %4653, %4528 ], [ %4148, %4142 ], [ %4653, %4659 ]
  %4286 = phi float [ %4654, %4528 ], [ %4149, %4142 ], [ %4654, %4659 ]
  %4287 = phi float [ %4655, %4528 ], [ %4150, %4142 ], [ %4655, %4659 ]
  %4288 = phi i32 [ %4657, %4528 ], [ %4151, %4142 ], [ %4657, %4659 ]
  %4289 = phi float [ %4610, %4528 ], [ %4152, %4142 ], [ %4610, %4659 ]
  %4290 = phi float [ %4611, %4528 ], [ %4153, %4142 ], [ %4611, %4659 ]
  %4291 = phi float [ %4612, %4528 ], [ %4154, %4142 ], [ %4612, %4659 ]
  %4292 = phi i32 [ 0, %4528 ], [ %4155, %4142 ], [ 0, %4659 ]
  %4293 = phi float [ %4595, %4528 ], [ %4156, %4142 ], [ %4595, %4659 ]
  %4294 = icmp eq i32 %4157, %4161
  br i1 %4294, label %4676, label %4142

; <label>:4295                                    ; preds = %4142
  %4296 = extractvalue %dx.types.CBufRet.f32 %4263, 0
  %4297 = bitcast float %4296 to i32
  %4298 = lshr i32 %4297, 8
  %4299 = and i32 %4298, 255
  %4300 = uitofp i32 %4299 to float
  %4301 = fptoui float %4300 to i32
  %4302 = and i32 %4301, 2
  %4303 = icmp eq i32 %4302, 0
  br i1 %4303, label %4310, label %4304

; <label>:4304                                    ; preds = %4295
  %4305 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %4306 = call float @dx.op.unary.f32(i32 25, float %4305)  ; Rsqrt(value)
  %4307 = fmul fast float %4306, %153
  %4308 = fmul fast float %4306, %154
  %4309 = fmul fast float %4306, %155
  br label %4310

; <label>:4310                                    ; preds = %4304, %4295
  %4311 = phi float [ %4307, %4304 ], [ %1897, %4295 ]
  %4312 = phi float [ %4308, %4304 ], [ %1898, %4295 ]
  %4313 = phi float [ %4309, %4304 ], [ %1899, %4295 ]
  %4314 = icmp ne i32 %4209, -1
  %4315 = fcmp oeq float %4214, 0.000000e+00
  %4316 = and i1 %4315, %4314
  br i1 %4316, label %4317, label %4441

; <label>:4317                                    ; preds = %4310
  %4318 = fsub fast float -0.000000e+00, %4226
  %4319 = fsub fast float -0.000000e+00, %4227
  %4320 = fsub fast float -0.000000e+00, %4228
  %4321 = call float @dx.op.dot3.f32(i32 55, float %4311, float %4312, float %4313, float %4318, float %4319, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4322 = fsub fast float -0.000000e+00, %4321
  %4323 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4318, float %4319, float %4320)  ; Dot3(ax,ay,az,bx,by,bz)
  %4324 = fadd fast float %4323, %4188
  %4325 = fadd fast float %4187, %4323
  %4326 = fsub fast float -0.000000e+00, %4325
  %4327 = fcmp ogt float %4321, -0.000000e+00
  %4328 = select i1 %4327, float %4326, float %4324
  %4329 = call float @dx.op.unary.f32(i32 6, float %4322)  ; FAbs(value)
  %4330 = fdiv fast float 1.000000e+00, %4329
  %4331 = fmul fast float %4328, %4330
  %4332 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4333 = fsub fast float -0.000000e+00, %4232
  %4334 = fsub fast float -0.000000e+00, %4233
  %4335 = fsub fast float -0.000000e+00, %4234
  %4336 = call float @dx.op.dot3.f32(i32 55, float %4311, float %4312, float %4313, float %4333, float %4334, float %4335)  ; Dot3(ax,ay,az,bx,by,bz)
  %4337 = fsub fast float -0.000000e+00, %4336
  %4338 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4333, float %4334, float %4335)  ; Dot3(ax,ay,az,bx,by,bz)
  %4339 = fadd fast float %4338, %4192
  %4340 = fadd fast float %4191, %4338
  %4341 = fsub fast float -0.000000e+00, %4340
  %4342 = fcmp ogt float %4336, -0.000000e+00
  %4343 = select i1 %4342, float %4341, float %4339
  %4344 = call float @dx.op.unary.f32(i32 6, float %4337)  ; FAbs(value)
  %4345 = fdiv fast float 1.000000e+00, %4344
  %4346 = fmul fast float %4343, %4345
  %4347 = call float @dx.op.binary.f32(i32 35, float %4346, float 0.000000e+00)  ; FMax(a,b)
  %4348 = fsub fast float -0.000000e+00, %4238
  %4349 = fsub fast float -0.000000e+00, %4239
  %4350 = fsub fast float -0.000000e+00, %4240
  %4351 = call float @dx.op.dot3.f32(i32 55, float %4311, float %4312, float %4313, float %4348, float %4349, float %4350)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = fsub fast float -0.000000e+00, %4351
  %4353 = call float @dx.op.dot3.f32(i32 55, float %4222, float %4223, float %4224, float %4348, float %4349, float %4350)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = fadd fast float %4353, %4196
  %4355 = fadd fast float %4195, %4353
  %4356 = fsub fast float -0.000000e+00, %4355
  %4357 = fcmp ogt float %4351, -0.000000e+00
  %4358 = select i1 %4357, float %4356, float %4354
  %4359 = call float @dx.op.unary.f32(i32 6, float %4352)  ; FAbs(value)
  %4360 = fdiv fast float 1.000000e+00, %4359
  %4361 = fmul fast float %4358, %4360
  %4362 = call float @dx.op.binary.f32(i32 35, float %4361, float 0.000000e+00)  ; FMax(a,b)
  %4363 = call float @dx.op.binary.f32(i32 36, float %4347, float %4362)  ; FMin(a,b)
  %4364 = call float @dx.op.binary.f32(i32 36, float %4332, float %4363)  ; FMin(a,b)
  %4365 = fmul fast float %4364, %4311
  %4366 = fmul fast float %4364, %4312
  %4367 = fmul fast float %4364, %4313
  %4368 = fadd fast float %4365, %153
  %4369 = fadd fast float %4366, %154
  %4370 = fadd fast float %4367, %155
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4374 = extractvalue %dx.types.CBufRet.f32 %4371, 2
  %4375 = fadd fast float %4368, %4372
  %4376 = fadd fast float %4369, %4373
  %4377 = fadd fast float %4370, %4374
  %4378 = fcmp fast olt float %4332, %4347
  %4379 = fcmp fast olt float %4332, %4362
  %4380 = and i1 %4378, %4379
  br i1 %4380, label %4384, label %4381

; <label>:4381                                    ; preds = %4317
  %4382 = fcmp fast olt float %4347, %4362
  br i1 %4382, label %4383, label %4384

; <label>:4383                                    ; preds = %4381
  br label %4384

; <label>:4384                                    ; preds = %4383, %4381, %4317
  %4385 = phi float [ 0.000000e+00, %4383 ], [ 0.000000e+00, %4381 ], [ 1.000000e+00, %4317 ]
  %4386 = phi float [ 1.000000e+00, %4383 ], [ 0.000000e+00, %4381 ], [ 0.000000e+00, %4317 ]
  %4387 = phi float [ 0.000000e+00, %4383 ], [ 1.000000e+00, %4381 ], [ 0.000000e+00, %4317 ]
  %4388 = phi float [ %4232, %4383 ], [ %4238, %4381 ], [ %4226, %4317 ]
  %4389 = phi float [ %4233, %4383 ], [ %4239, %4381 ], [ %4227, %4317 ]
  %4390 = phi float [ %4234, %4383 ], [ %4240, %4381 ], [ %4228, %4317 ]
  %4391 = call float @dx.op.unary.f32(i32 6, float %4390)  ; FAbs(value)
  %4392 = fcmp fast olt float %4391, 0x3FE276C8C0000000
  %4393 = select i1 %4392, float 0.000000e+00, float 1.000000e+00
  %4394 = select i1 %4392, float 1.000000e+00, float 0.000000e+00
  %4395 = fmul fast float %4394, %4389
  %4396 = fmul fast float %4393, %4390
  %4397 = fsub fast float %4395, %4396
  %4398 = fmul fast float %4388, %4394
  %4399 = fsub fast float -0.000000e+00, %4398
  %4400 = fmul fast float %4393, %4388
  %4401 = call float @dx.op.dot3.f32(i32 55, float %4397, float %4399, float %4400, float %4397, float %4399, float %4400)  ; Dot3(ax,ay,az,bx,by,bz)
  %4402 = call float @dx.op.unary.f32(i32 25, float %4401)  ; Rsqrt(value)
  %4403 = fmul fast float %4397, %4402
  %4404 = fmul fast float %4402, %4399
  %4405 = fmul fast float %4400, %4402
  %4406 = fmul fast float %4405, %4389
  %4407 = fmul fast float %4404, %4390
  %4408 = fsub fast float %4406, %4407
  %4409 = fmul fast float %4403, %4390
  %4410 = fmul fast float %4405, %4388
  %4411 = fsub fast float %4409, %4410
  %4412 = fmul fast float %4404, %4388
  %4413 = fmul fast float %4403, %4389
  %4414 = fsub fast float %4412, %4413
  %4415 = call float @dx.op.dot3.f32(i32 55, float %4408, float %4411, float %4414, float %4408, float %4411, float %4414)  ; Dot3(ax,ay,az,bx,by,bz)
  %4416 = call float @dx.op.unary.f32(i32 25, float %4415)  ; Rsqrt(value)
  %4417 = fmul fast float %4408, %4416
  %4418 = fmul fast float %4411, %4416
  %4419 = fmul fast float %4414, %4416
  %4420 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float %4403, float %4404, float %4405)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float %4417, float %4418, float %4419)  ; Dot3(ax,ay,az,bx,by,bz)
  %4422 = fmul fast float %4420, 0x3FA99999A0000000
  %4423 = fmul fast float %4421, 0x3FA99999A0000000
  %4424 = call float @dx.op.unary.f32(i32 22, float %4422)  ; Frc(value)
  %4425 = call float @dx.op.unary.f32(i32 22, float %4423)  ; Frc(value)
  %4426 = fadd fast float %4424, 0xBFB99999A0000000
  %4427 = fadd fast float %4425, 0xBFB99999A0000000
  %4428 = call float @dx.op.unary.f32(i32 6, float %4426)  ; FAbs(value)
  %4429 = call float @dx.op.unary.f32(i32 6, float %4427)  ; FAbs(value)
  %4430 = fmul fast float %4428, 1.000000e+01
  %4431 = fmul fast float %4429, 1.000000e+01
  %4432 = call float @dx.op.binary.f32(i32 36, float %4430, float %4431)  ; FMin(a,b)
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fsub fast float 1.000000e+00, %4433
  %4435 = fmul fast float %4434, %4385
  %4436 = fmul fast float %4434, %4386
  %4437 = fmul fast float %4434, %4387
  %4438 = fsub fast float %4368, %4165
  %4439 = fsub fast float %4369, %4166
  %4440 = fsub fast float %4370, %4167
  br label %4448

; <label>:4441                                    ; preds = %4310
  %4442 = fmul fast float %4311, 8.096000e+03
  %4443 = fmul fast float %4312, 8.096000e+03
  %4444 = fmul fast float %4313, 8.096000e+03
  %4445 = fadd fast float %4442, %153
  %4446 = fadd fast float %4443, %154
  %4447 = fadd fast float %4444, %155
  br label %4448

; <label>:4448                                    ; preds = %4441, %4384
  %4449 = phi float [ %4311, %4441 ], [ %4438, %4384 ]
  %4450 = phi float [ %4312, %4441 ], [ %4439, %4384 ]
  %4451 = phi float [ %4313, %4441 ], [ %4440, %4384 ]
  %4452 = phi float [ %4445, %4441 ], [ %4368, %4384 ]
  %4453 = phi float [ %4446, %4441 ], [ %4369, %4384 ]
  %4454 = phi float [ %4447, %4441 ], [ %4370, %4384 ]
  %4455 = phi float [ 0.000000e+00, %4441 ], [ %4435, %4384 ]
  %4456 = phi float [ 0.000000e+00, %4441 ], [ %4436, %4384 ]
  %4457 = phi float [ 0.000000e+00, %4441 ], [ %4437, %4384 ]
  %4458 = fcmp fast olt float %4184, 1.000000e+00
  br i1 %4458, label %4459, label %4490, !dx.controlflow.hints !125

; <label>:4459                                    ; preds = %4448
  %4460 = fmul fast float %4451, %4182
  %4461 = fmul fast float %4450, %4183
  %4462 = fsub fast float %4460, %4461
  %4463 = fmul fast float %4449, %4183
  %4464 = fmul fast float %4451, %4181
  %4465 = fsub fast float %4463, %4464
  %4466 = fmul fast float %4450, %4181
  %4467 = fmul fast float %4449, %4182
  %4468 = fsub fast float %4466, %4467
  %4469 = fmul fast float %4462, 2.000000e+00
  %4470 = fmul fast float %4465, 2.000000e+00
  %4471 = fmul fast float %4468, 2.000000e+00
  %4472 = fmul fast float %4469, %4184
  %4473 = fmul fast float %4470, %4184
  %4474 = fmul fast float %4471, %4184
  %4475 = fmul fast float %4471, %4182
  %4476 = fmul fast float %4470, %4183
  %4477 = fmul fast float %4469, %4183
  %4478 = fmul fast float %4471, %4181
  %4479 = fmul fast float %4470, %4181
  %4480 = fmul fast float %4469, %4182
  %4481 = fadd fast float %4475, %4449
  %4482 = fadd fast float %4481, %4472
  %4483 = fsub fast float %4482, %4476
  %4484 = fsub fast float %4450, %4478
  %4485 = fadd fast float %4484, %4473
  %4486 = fadd fast float %4485, %4477
  %4487 = fadd fast float %4474, %4451
  %4488 = fsub fast float %4487, %4480
  %4489 = fadd fast float %4488, %4479
  br label %4490

; <label>:4490                                    ; preds = %4459, %4448
  %4491 = phi float [ %4483, %4459 ], [ %4449, %4448 ]
  %4492 = phi float [ %4486, %4459 ], [ %4450, %4448 ]
  %4493 = phi float [ %4489, %4459 ], [ %4451, %4448 ]
  br i1 %4316, label %4494, label %4525

; <label>:4494                                    ; preds = %4490
  %4495 = fmul fast float %1843, 0x400187C840000000
  %4496 = fadd fast float %4495, 0xC00EFC2120000000
  %4497 = fmul fast float %4496, %1843
  %4498 = fadd fast float %4497, 0x3FE5D16340000000
  %4499 = fmul fast float %4498, %1843
  %4500 = fadd fast float %4499, 1.000000e+00
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fsub fast float %4452, %153
  %4503 = fsub fast float %4453, %154
  %4504 = fsub fast float %4454, %155
  %4505 = fsub fast float %4452, %4165
  %4506 = fsub fast float %4453, %4166
  %4507 = fsub fast float %4454, %4167
  %4508 = call float @dx.op.dot3.f32(i32 55, float %4502, float %4503, float %4504, float %4502, float %4503, float %4504)  ; Dot3(ax,ay,az,bx,by,bz)
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4505, float %4506, float %4507, float %4505, float %4506, float %4507)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = fadd fast float %4509, 0x3EE4F8B580000000
  %4511 = fdiv fast float %4508, %4510
  %4512 = bitcast float %4511 to i32
  %4513 = ashr i32 %4512, 1
  %4514 = add nsw i32 %4513, 532487669
  %4515 = bitcast i32 %4514 to float
  %4516 = fmul fast float %4515, %4501
  %4517 = call float @dx.op.unary.f32(i32 7, float %4516)  ; Saturate(value)
  %4518 = fmul fast float %4517, 0x4009981AE0000000
  %4519 = fsub fast float 0x40111BBD80000000, %4518
  %4520 = fmul fast float %4519, %4517
  %4521 = fadd fast float %4520, 0xC0009F6020000000
  %4522 = fmul fast float %4521, %4517
  %4523 = fadd fast float %4522, 1.000000e+00
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  br label %4528

; <label>:4525                                    ; preds = %4490
  %4526 = icmp ne i32 %4210, -1
  %4527 = zext i1 %4526 to i32
  br label %4528

; <label>:4528                                    ; preds = %4525, %4494
  %4529 = phi float [ %1843, %4525 ], [ %4524, %4494 ]
  %4530 = phi i32 [ %4527, %4525 ], [ 0, %4494 ]
  %4531 = fmul float %4529, 5.000000e+00
  %4532 = fsub float 5.000000e+00, %4531
  %4533 = icmp ne i32 %4530, 0
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 3
  %4536 = fadd fast float %4535, %4532
  %4537 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4536)  ; FMax(a,b)
  %4538 = call float @dx.op.unary.f32(i32 6, float %4491)  ; FAbs(value)
  %4539 = call float @dx.op.unary.f32(i32 6, float %4492)  ; FAbs(value)
  %4540 = fadd fast float %4539, %4538
  %4541 = call float @dx.op.unary.f32(i32 6, float %4493)  ; FAbs(value)
  %4542 = fadd fast float %4540, %4541
  %4543 = fcmp fast oeq float %4542, 0.000000e+00
  %4544 = fdiv fast float 1.000000e+00, %4542
  %4545 = select i1 %4543, float 1.000000e+00, float %4544
  %4546 = fmul fast float %4545, %4491
  %4547 = fmul fast float %4545, %4492
  %4548 = call float @dx.op.unary.f32(i32 6, float %4547)  ; FAbs(value)
  %4549 = call float @dx.op.unary.f32(i32 6, float %4546)  ; FAbs(value)
  %4550 = fsub fast float 1.000000e+00, %4548
  %4551 = fsub fast float 1.000000e+00, %4549
  %4552 = fcmp fast oge float %4546, 0.000000e+00
  %4553 = fcmp fast oge float %4547, 0.000000e+00
  %4554 = select i1 %4552, float 1.000000e+00, float -1.000000e+00
  %4555 = select i1 %4553, float 1.000000e+00, float -1.000000e+00
  %4556 = fcmp fast ole float %4493, 0.000000e+00
  %4557 = fmul fast float %4554, %4550
  %4558 = fmul fast float %4555, %4551
  %4559 = select i1 %4556, float %4557, float %4546
  %4560 = select i1 %4556, float %4558, float %4547
  %4561 = fmul fast float %4559, 5.000000e-01
  %4562 = fmul fast float %4560, 5.000000e-01
  %4563 = fadd fast float %4561, 5.000000e-01
  %4564 = fadd fast float %4562, 5.000000e-01
  %4565 = uitofp i32 %4208 to float
  %4566 = call float @dx.op.binary.f32(i32 36, float %4537, float 3.000000e+00)  ; FMin(a,b)
  %4567 = fadd fast float %4566, 2.000000e+00
  %4568 = call float @dx.op.unary.f32(i32 21, float %4567)  ; Exp(value)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4570 = fmul fast float %4569, %4568
  %4571 = fmul fast float %4570, 2.000000e+00
  %4572 = fsub fast float 1.000000e+00, %4571
  %4573 = fmul fast float %4563, %4572
  %4574 = fmul fast float %4564, %4572
  %4575 = fadd fast float %4573, %4570
  %4576 = fadd fast float %4574, %4570
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %4575, float %4576, float %4565, float undef, i32 0, i32 0, i32 undef, float %4537)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4583 = fmul fast float %4582, %4178
  %4584 = call float @dx.op.binary.f32(i32 36, float %4050, float %4583)  ; FMin(a,b)
  %4585 = select i1 %4533, float %4584, float %4583
  %4586 = fmul fast float %4578, %4258
  %4587 = fmul fast float %4586, %4585
  %4588 = fmul fast float %4579, %4258
  %4589 = fmul fast float %4588, %4585
  %4590 = fmul fast float %4580, %4258
  %4591 = fmul fast float %4590, %4585
  %4592 = fadd fast float %4587, %4145
  %4593 = fadd fast float %4589, %4146
  %4594 = fadd fast float %4591, %4147
  %4595 = fsub fast float %4156, %4258
  %4596 = and i32 %4273, 255
  %4597 = uitofp i32 %4596 to float
  %4598 = fptoui float %4597 to i32
  %4599 = icmp eq i32 %4268, 1
  %4600 = zext i1 %4599 to i32
  %4601 = add i32 %4600, %4598
  %4602 = uitofp i32 %4601 to float
  %4603 = fptoui float %4602 to i32
  %4604 = shl i32 %4603, 8
  %4605 = and i32 %4604, 65280
  %4606 = or i32 %4605, %4276
  %4607 = fmul fast float %4455, %4258
  %4608 = fmul fast float %4456, %4258
  %4609 = fmul fast float %4457, %4258
  %4610 = fadd fast float %4607, %4152
  %4611 = fadd fast float %4608, %4153
  %4612 = fadd fast float %4609, %4154
  %4613 = fmul fast float %4565, 0x3FE3C6EF40000000
  %4614 = call float @dx.op.unary.f32(i32 22, float %4613)  ; Frc(value)
  %4615 = fadd fast float %4614, 0x3FE5555560000000
  %4616 = fadd fast float %4614, 0x3FD5555560000000
  %4617 = fsub fast float -0.000000e+00, %4614
  %4618 = fsub fast float -0.000000e+00, %4615
  %4619 = fsub fast float -0.000000e+00, %4616
  %4620 = fcmp fast oge float %4614, %4617
  %4621 = fcmp fast oge float %4615, %4618
  %4622 = fcmp fast oge float %4616, %4619
  %4623 = call float @dx.op.unary.f32(i32 6, float %4614)  ; FAbs(value)
  %4624 = call float @dx.op.unary.f32(i32 6, float %4615)  ; FAbs(value)
  %4625 = call float @dx.op.unary.f32(i32 6, float %4616)  ; FAbs(value)
  %4626 = call float @dx.op.unary.f32(i32 22, float %4623)  ; Frc(value)
  %4627 = call float @dx.op.unary.f32(i32 22, float %4624)  ; Frc(value)
  %4628 = call float @dx.op.unary.f32(i32 22, float %4625)  ; Frc(value)
  %4629 = fsub fast float -0.000000e+00, %4626
  %4630 = fsub fast float -0.000000e+00, %4627
  %4631 = fsub fast float -0.000000e+00, %4628
  %4632 = select i1 %4620, float %4626, float %4629
  %4633 = select i1 %4621, float %4627, float %4630
  %4634 = select i1 %4622, float %4628, float %4631
  %4635 = fmul fast float %4632, 6.000000e+00
  %4636 = fmul fast float %4633, 6.000000e+00
  %4637 = fmul fast float %4634, 6.000000e+00
  %4638 = fadd fast float %4635, -3.000000e+00
  %4639 = fadd fast float %4636, -3.000000e+00
  %4640 = fadd fast float %4637, -3.000000e+00
  %4641 = call float @dx.op.unary.f32(i32 6, float %4638)  ; FAbs(value)
  %4642 = call float @dx.op.unary.f32(i32 6, float %4639)  ; FAbs(value)
  %4643 = call float @dx.op.unary.f32(i32 6, float %4640)  ; FAbs(value)
  %4644 = fadd fast float %4641, -1.000000e+00
  %4645 = fadd fast float %4642, -1.000000e+00
  %4646 = fadd fast float %4643, -1.000000e+00
  %4647 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = fmul fast float %4647, %4258
  %4651 = fmul fast float %4648, %4258
  %4652 = fmul fast float %4649, %4258
  %4653 = fadd fast float %4650, %4148
  %4654 = fadd fast float %4651, %4149
  %4655 = fadd fast float %4652, %4150
  %4656 = icmp eq i32 %4208, 0
  %4657 = select i1 %4656, i32 1, i32 %4151
  %4658 = icmp eq i32 %4155, 0
  br i1 %4658, label %4279, label %4659

; <label>:4659                                    ; preds = %4528
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = bitcast float %4661 to i32
  %4663 = lshr i32 %4662, 8
  %4664 = and i32 %4663, 255
  %4665 = uitofp i32 %4664 to float
  %4666 = fptoui float %4665 to i32
  %4667 = icmp eq i32 %4666, 16
  %4668 = bitcast float %4583 to i32
  %4669 = select i1 %4667, i32 %4668, i32 %4144
  %4670 = icmp eq i32 %4666, 17
  %4671 = bitcast float %4050 to i32
  %4672 = select i1 %4670, i32 %4671, i32 %4669
  %4673 = icmp eq i32 %4666, 18
  %4674 = bitcast float %4585 to i32
  %4675 = select i1 %4673, i32 %4674, i32 %4672
  br label %4279

; <label>:4676                                    ; preds = %4279
  br label %4677

; <label>:4677                                    ; preds = %4676, %4102
  %4678 = phi i32 [ %4103, %4102 ], [ %4280, %4676 ]
  %4679 = phi i32 [ %4104, %4102 ], [ %4281, %4676 ]
  %4680 = phi float [ %4105, %4102 ], [ %4282, %4676 ]
  %4681 = phi float [ %4106, %4102 ], [ %4283, %4676 ]
  %4682 = phi float [ %4107, %4102 ], [ %4284, %4676 ]
  %4683 = phi float [ %4108, %4102 ], [ %4285, %4676 ]
  %4684 = phi float [ %4109, %4102 ], [ %4286, %4676 ]
  %4685 = phi float [ %4110, %4102 ], [ %4287, %4676 ]
  %4686 = phi i32 [ %4111, %4102 ], [ %4288, %4676 ]
  %4687 = phi float [ %4112, %4102 ], [ %4289, %4676 ]
  %4688 = phi float [ %4113, %4102 ], [ %4290, %4676 ]
  %4689 = phi float [ %4114, %4102 ], [ %4291, %4676 ]
  %4690 = phi i32 [ %4115, %4102 ], [ %4292, %4676 ]
  %4691 = phi float [ %4116, %4102 ], [ %4293, %4676 ]
  %4692 = add i32 %4117, 1
  %4693 = icmp ugt i32 %4692, %4099
  br i1 %4693, label %4694, label %4102, !llvm.loop !126

; <label>:4694                                    ; preds = %4677
  br label %4695

; <label>:4695                                    ; preds = %4694, %4049
  %4696 = phi i32 [ %3713, %4049 ], [ %4678, %4694 ]
  %4697 = phi i32 [ %4037, %4049 ], [ %4679, %4694 ]
  %4698 = phi float [ 0.000000e+00, %4049 ], [ %4680, %4694 ]
  %4699 = phi float [ 0.000000e+00, %4049 ], [ %4681, %4694 ]
  %4700 = phi float [ 0.000000e+00, %4049 ], [ %4682, %4694 ]
  %4701 = phi float [ 0.000000e+00, %4049 ], [ %4683, %4694 ]
  %4702 = phi float [ 0.000000e+00, %4049 ], [ %4684, %4694 ]
  %4703 = phi float [ 0.000000e+00, %4049 ], [ %4685, %4694 ]
  %4704 = phi i32 [ 0, %4049 ], [ %4686, %4694 ]
  %4705 = phi float [ 0.000000e+00, %4049 ], [ %4687, %4694 ]
  %4706 = phi float [ 0.000000e+00, %4049 ], [ %4688, %4694 ]
  %4707 = phi float [ 0.000000e+00, %4049 ], [ %4689, %4694 ]
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = select i1 %1885, float 0.000000e+00, float %4698
  %4710 = select i1 %1885, float %4708, float %4699
  %4711 = select i1 %1885, float 0.000000e+00, float %4700
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4713 = extractvalue %dx.types.CBufRet.f32 %4712, 0
  %4714 = bitcast float %4713 to i32
  %4715 = lshr i32 %4714, 8
  %4716 = and i32 %4715, 255
  %4717 = uitofp i32 %4716 to float
  %4718 = fptoui float %4717 to i32
  %4719 = icmp eq i32 %4718, 13
  br i1 %4719, label %4720, label %4740

; <label>:4720                                    ; preds = %4695
  %4721 = fadd fast float %4701, 1.000000e+00
  %4722 = fadd fast float %4702, 1.000000e+00
  %4723 = fadd fast float %4703, 1.000000e+00
  %4724 = fmul fast float %4721, 5.000000e-01
  %4725 = fmul fast float %4722, 5.000000e-01
  %4726 = fmul fast float %4723, 5.000000e-01
  %4727 = call float @dx.op.unary.f32(i32 7, float %4724)  ; Saturate(value)
  %4728 = call float @dx.op.unary.f32(i32 7, float %4725)  ; Saturate(value)
  %4729 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4730 = fmul fast float %4727, 1.023000e+03
  %4731 = fmul fast float %4728, 1.023000e+03
  %4732 = fmul fast float %4729, 1.023000e+03
  %4733 = fptoui float %4730 to i32
  %4734 = fptoui float %4731 to i32
  %4735 = fptoui float %4732 to i32
  %4736 = shl i32 %4734, 10
  %4737 = or i32 %4736, %4733
  %4738 = shl i32 %4735, 20
  %4739 = or i32 %4737, %4738
  br label %4740

; <label>:4740                                    ; preds = %4720, %4695
  %4741 = phi i32 [ %4739, %4720 ], [ %4697, %4695 ]
  %4742 = icmp eq i32 %4718, 14
  %4743 = select i1 %4742, i32 %4704, i32 %4741
  %4744 = icmp eq i32 %4718, 22
  br i1 %4744, label %4745, label %4765

; <label>:4745                                    ; preds = %4740
  %4746 = fadd fast float %4705, 1.000000e+00
  %4747 = fadd fast float %4706, 1.000000e+00
  %4748 = fadd fast float %4707, 1.000000e+00
  %4749 = fmul fast float %4746, 5.000000e-01
  %4750 = fmul fast float %4747, 5.000000e-01
  %4751 = fmul fast float %4748, 5.000000e-01
  %4752 = call float @dx.op.unary.f32(i32 7, float %4749)  ; Saturate(value)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4751)  ; Saturate(value)
  %4755 = fmul fast float %4752, 1.023000e+03
  %4756 = fmul fast float %4753, 1.023000e+03
  %4757 = fmul fast float %4754, 1.023000e+03
  %4758 = fptoui float %4755 to i32
  %4759 = fptoui float %4756 to i32
  %4760 = fptoui float %4757 to i32
  %4761 = shl i32 %4759, 10
  %4762 = or i32 %4761, %4758
  %4763 = shl i32 %4760, 20
  %4764 = or i32 %4762, %4763
  br label %4765

; <label>:4765                                    ; preds = %4745, %4740
  %4766 = phi i32 [ %4764, %4745 ], [ %4743, %4740 ]
  %4767 = fcmp fast olt float %4038, 0.000000e+00
  %4768 = call float @dx.op.unary.f32(i32 6, float %4038)  ; FAbs(value)
  %4769 = fmul fast float %4768, %4039
  %4770 = fmul fast float %4768, %4040
  %4771 = fmul fast float %4768, %4041
  %4772 = select i1 %4767, float %4039, float %4769
  %4773 = select i1 %4767, float %4040, float %4770
  %4774 = select i1 %4767, float %4041, float %4771
  %4775 = fsub fast float 1.000000e+00, %4768
  %4776 = call float @dx.op.unary.f32(i32 7, float %4775)  ; Saturate(value)
  %4777 = fmul fast float %4776, %4709
  %4778 = fmul fast float %4776, %4710
  %4779 = fmul fast float %4776, %4711
  %4780 = fadd fast float %4772, %4777
  %4781 = fadd fast float %4773, %4778
  %4782 = fadd fast float %4774, %4779
  br label %4783

; <label>:4783                                    ; preds = %4765, %4036
  %4784 = phi i32 [ %3713, %4036 ], [ %4696, %4765 ]
  %4785 = phi i32 [ %4037, %4036 ], [ %4766, %4765 ]
  %4786 = phi float [ %4039, %4036 ], [ %4780, %4765 ]
  %4787 = phi float [ %4040, %4036 ], [ %4781, %4765 ]
  %4788 = phi float [ %4041, %4036 ], [ %4782, %4765 ]
  %4789 = fmul fast float %2998, %1846
  %4790 = fmul fast float %3715, %2998
  %4791 = fmul fast float %3716, %2998
  %4792 = fmul fast float %3717, %2998
  %4793 = fmul fast float %4786, %1800
  %4794 = fmul fast float %4787, %1801
  %4795 = fmul fast float %4788, %2995
  %4796 = fadd fast float %4793, %1671
  %4797 = fadd fast float %4794, %1672
  %4798 = fadd fast float %4795, %1673
  %4799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4800 = extractvalue %dx.types.CBufRet.f32 %4799, 3
  %4801 = fcmp fast oeq float %4800, 0.000000e+00
  br i1 %4801, label %6583, label %4802

; <label>:4802                                    ; preds = %4783
  %4803 = extractvalue %dx.types.CBufRet.f32 %4799, 0
  %4804 = extractvalue %dx.types.CBufRet.f32 %4799, 1
  %4805 = extractvalue %dx.types.CBufRet.f32 %4799, 2
  %4806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4807 = extractvalue %dx.types.CBufRet.f32 %4806, 0
  %4808 = extractvalue %dx.types.CBufRet.f32 %4806, 1
  %4809 = extractvalue %dx.types.CBufRet.f32 %4806, 2
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4807, float %4808, float %4809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = select i1 %1885, float %4811, float %4807
  %4815 = select i1 %1885, float %4813, float %4808
  %4816 = select i1 %1885, float %4812, float %4809
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4820 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4821 = extractvalue %dx.types.CBufRet.f32 %4817, 3
  %4822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4823 = extractvalue %dx.types.CBufRet.f32 %4822, 0
  %4824 = extractvalue %dx.types.CBufRet.f32 %4822, 1
  %4825 = extractvalue %dx.types.CBufRet.f32 %4822, 2
  %4826 = extractvalue %dx.types.CBufRet.f32 %4822, 3
  %4827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4828 = extractvalue %dx.types.CBufRet.f32 %4827, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4827, 1
  %4830 = extractvalue %dx.types.CBufRet.f32 %4827, 2
  %4831 = extractvalue %dx.types.CBufRet.f32 %4827, 3
  %4832 = fmul fast float %4818, %153
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4819, float %4832)  ; FMad(a,b,c)
  %4834 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4820, float %4833)  ; FMad(a,b,c)
  %4835 = fadd fast float %4834, %4821
  %4836 = fmul fast float %4823, %153
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4824, float %4836)  ; FMad(a,b,c)
  %4838 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4825, float %4837)  ; FMad(a,b,c)
  %4839 = fadd fast float %4838, %4826
  %4840 = fmul fast float %4828, %153
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4829, float %4840)  ; FMad(a,b,c)
  %4842 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4830, float %4841)  ; FMad(a,b,c)
  %4843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4844 = extractvalue %dx.types.CBufRet.f32 %4843, 0
  %4845 = extractvalue %dx.types.CBufRet.f32 %4843, 1
  %4846 = extractvalue %dx.types.CBufRet.f32 %4843, 3
  %4847 = fmul fast float %4846, %4835
  %4848 = fmul fast float %4846, %4839
  %4849 = fadd fast float %4847, %4844
  %4850 = fadd fast float %4848, %4845
  %4851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4852 = extractvalue %dx.types.CBufRet.f32 %4851, 0
  %4853 = extractvalue %dx.types.CBufRet.f32 %4851, 1
  %4854 = extractvalue %dx.types.CBufRet.f32 %4851, 3
  %4855 = fmul fast float %4854, %4835
  %4856 = fmul fast float %4854, %4839
  %4857 = fadd fast float %4855, %4852
  %4858 = fadd fast float %4856, %4853
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 1
  %4861 = fsub fast float -0.000000e+00, %4831
  %4862 = fsub fast float %4861, %4842
  %4863 = fadd fast float %4862, %4860
  %4864 = extractvalue %dx.types.CBufRet.f32 %4859, 2
  %4865 = fmul fast float %4863, %4864
  %4866 = fsub fast float 1.000000e+00, %4865
  %4867 = call float @dx.op.unary.f32(i32 7, float %4866)  ; Saturate(value)
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = fsub fast float %4857, %4869
  %4872 = fsub fast float %4858, %4870
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4877 = fsub fast float %4849, %4875
  %4878 = fsub fast float %4850, %4876
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4883 = fsub fast float %4835, %4881
  %4884 = fsub fast float %4839, %4882
  %4885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4887 = extractvalue %dx.types.CBufRet.f32 %4886, 0
  %4888 = bitcast float %4887 to i32
  %4889 = lshr i32 %4888, 8
  %4890 = and i32 %4889, 255
  %4891 = uitofp i32 %4890 to float
  %4892 = fptoui float %4891 to i32
  %4893 = and i32 %4892, -2
  %4894 = icmp eq i32 %4893, 10
  br i1 %4894, label %4895, label %4965

; <label>:4895                                    ; preds = %4802
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 0
  %4898 = fcmp fast olt float %4883, 0.000000e+00
  %4899 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %4900 = extractvalue %dx.types.CBufRet.f32 %4885, 2
  %4901 = select i1 %4898, float %4899, float %4900
  %4902 = fmul fast float %4901, %4883
  %4903 = call float @dx.op.unary.f32(i32 6, float %4902)  ; FAbs(value)
  %4904 = fcmp fast olt float %4884, 0.000000e+00
  %4905 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %4906 = extractvalue %dx.types.CBufRet.f32 %4885, 3
  %4907 = select i1 %4904, float %4905, float %4906
  %4908 = fmul fast float %4907, %4884
  %4909 = call float @dx.op.unary.f32(i32 6, float %4908)  ; FAbs(value)
  %4910 = call float @dx.op.binary.f32(i32 35, float %4903, float %4909)  ; FMax(a,b)
  %4911 = fsub fast float %4897, %4910
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fmul fast float %4912, %4867
  %4914 = fcmp fast olt float %4877, 0.000000e+00
  %4915 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %4917 = select i1 %4914, float %4915, float %4916
  %4918 = fmul fast float %4917, %4877
  %4919 = call float @dx.op.unary.f32(i32 6, float %4918)  ; FAbs(value)
  %4920 = fcmp fast olt float %4878, 0.000000e+00
  %4921 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %4923 = select i1 %4920, float %4921, float %4922
  %4924 = fmul fast float %4923, %4878
  %4925 = call float @dx.op.unary.f32(i32 6, float %4924)  ; FAbs(value)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4919, float %4925)  ; FMax(a,b)
  %4927 = fsub fast float %4897, %4926
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fmul fast float %4928, %4867
  %4930 = fcmp fast olt float %4871, 0.000000e+00
  %4931 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4932 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4933 = select i1 %4930, float %4931, float %4932
  %4934 = fmul fast float %4933, %4871
  %4935 = call float @dx.op.unary.f32(i32 6, float %4934)  ; FAbs(value)
  %4936 = fcmp fast olt float %4872, 0.000000e+00
  %4937 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4939 = select i1 %4936, float %4937, float %4938
  %4940 = fmul fast float %4939, %4872
  %4941 = call float @dx.op.unary.f32(i32 6, float %4940)  ; FAbs(value)
  %4942 = call float @dx.op.binary.f32(i32 35, float %4935, float %4941)  ; FMax(a,b)
  %4943 = fsub fast float %4897, %4942
  %4944 = call float @dx.op.unary.f32(i32 7, float %4943)  ; Saturate(value)
  %4945 = fmul fast float %4944, %4867
  %4946 = fadd fast float %4913, 1.000000e+00
  %4947 = fadd fast float %4929, 1.000000e+00
  %4948 = fadd fast float %4945, 1.000000e+00
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

; <label>:4965                                    ; preds = %4895, %4802
  %4966 = phi i32 [ %4964, %4895 ], [ %4785, %4802 ]
  %4967 = fcmp fast olt float %4800, 0.000000e+00
  br i1 %4967, label %6279, label %4968

; <label>:4968                                    ; preds = %4965
  %4969 = fadd fast float %4842, %4831
  %4970 = fsub fast float %4860, %4969
  %4971 = fmul fast float %4970, %4864
  %4972 = fsub fast float 1.000000e+00, %4971
  %4973 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4974 = extractvalue %dx.types.CBufRet.f32 %4851, 2
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 2
  %4977 = fadd fast float %4976, %4974
  %4978 = fcmp fast ogt float %4977, 0.000000e+00
  br i1 %4978, label %4979, label %4998

; <label>:4979                                    ; preds = %4968
  %4980 = fcmp fast olt float %4871, 0.000000e+00
  %4981 = fcmp fast olt float %4872, 0.000000e+00
  %4982 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4985 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4986 = select i1 %4980, float %4982, float %4984
  %4987 = select i1 %4981, float %4983, float %4985
  %4988 = fmul fast float %4986, %4871
  %4989 = fmul fast float %4987, %4872
  %4990 = call float @dx.op.unary.f32(i32 6, float %4988)  ; FAbs(value)
  %4991 = call float @dx.op.unary.f32(i32 6, float %4989)  ; FAbs(value)
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = call float @dx.op.binary.f32(i32 35, float %4990, float %4991)  ; FMax(a,b)
  %4995 = fsub fast float %4993, %4994
  %4996 = call float @dx.op.unary.f32(i32 7, float %4995)  ; Saturate(value)
  %4997 = fmul fast float %4996, %4973
  br label %4998

; <label>:4998                                    ; preds = %4979, %4968
  %4999 = phi float [ %4997, %4979 ], [ 0.000000e+00, %4968 ]
  %5000 = extractvalue %dx.types.CBufRet.f32 %4843, 2
  %5001 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %5002 = fadd fast float %5001, %5000
  %5003 = fcmp fast ogt float %5002, 0.000000e+00
  br i1 %5003, label %5004, label %5023

; <label>:5004                                    ; preds = %4998
  %5005 = fcmp fast olt float %4877, 0.000000e+00
  %5006 = fcmp fast olt float %4878, 0.000000e+00
  %5007 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %5008 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %4879, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %4879, 3
  %5011 = select i1 %5005, float %5007, float %5009
  %5012 = select i1 %5006, float %5008, float %5010
  %5013 = fmul fast float %5011, %4877
  %5014 = fmul fast float %5012, %4878
  %5015 = call float @dx.op.unary.f32(i32 6, float %5013)  ; FAbs(value)
  %5016 = call float @dx.op.unary.f32(i32 6, float %5014)  ; FAbs(value)
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = call float @dx.op.binary.f32(i32 35, float %5015, float %5016)  ; FMax(a,b)
  %5020 = fsub fast float %5018, %5019
  %5021 = call float @dx.op.unary.f32(i32 7, float %5020)  ; Saturate(value)
  %5022 = fmul fast float %5021, %4973
  br label %5023

; <label>:5023                                    ; preds = %5004, %4998
  %5024 = phi float [ %5022, %5004 ], [ 0.000000e+00, %4998 ]
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 1
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fcmp fast olt float %4883, 0.000000e+00
  %5029 = fcmp fast olt float %4884, 0.000000e+00
  %5030 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %5031 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %5032 = extractvalue %dx.types.CBufRet.f32 %4885, 2
  %5033 = extractvalue %dx.types.CBufRet.f32 %4885, 3
  %5034 = select i1 %5028, float %5030, float %5032
  %5035 = select i1 %5029, float %5031, float %5033
  %5036 = fmul fast float %5034, %4883
  %5037 = fmul fast float %5035, %4884
  %5038 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5039 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5042 = call float @dx.op.binary.f32(i32 35, float %5038, float %5039)  ; FMax(a,b)
  %5043 = fsub fast float %5041, %5042
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = call float @dx.op.binary.f32(i32 36, float %5044, float %5027)  ; FMin(a,b)
  %5046 = fmul fast float %5045, %4973
  %5047 = fsub fast float %5024, %5046
  %5048 = fsub fast float %4999, %5024
  %5049 = fsub fast float %5048, %5046
  %5050 = call float @dx.op.binary.f32(i32 35, float %5024, float %4999)  ; FMax(a,b)
  %5051 = call float @dx.op.binary.f32(i32 35, float %5046, float %5050)  ; FMax(a,b)
  %5052 = fcmp fast olt float %5051, 1.000000e+00
  br i1 %5052, label %5053, label %5724, !dx.controlflow.hints !129

; <label>:5053                                    ; preds = %5023
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = fcmp fast une float %5055, 0.000000e+00
  br i1 %5056, label %5057, label %5724, !dx.controlflow.hints !130

; <label>:5057                                    ; preds = %5053
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5061 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5062 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5064 = extractvalue %dx.types.CBufRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.CBufRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.CBufRet.f32 %5063, 2
  %5067 = extractvalue %dx.types.CBufRet.f32 %5063, 3
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5072 = extractvalue %dx.types.CBufRet.f32 %5068, 3
  %5073 = fmul fast float %5059, %153
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5060, float %5073)  ; FMad(a,b,c)
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5061, float %5074)  ; FMad(a,b,c)
  %5076 = fadd fast float %5075, %5062
  %5077 = fmul fast float %5064, %153
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5065, float %5077)  ; FMad(a,b,c)
  %5079 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5066, float %5078)  ; FMad(a,b,c)
  %5080 = fadd fast float %5079, %5067
  %5081 = fmul fast float %5069, %153
  %5082 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5070, float %5081)  ; FMad(a,b,c)
  %5083 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5071, float %5082)  ; FMad(a,b,c)
  %5084 = fadd fast float %5083, %5072
  %5085 = fcmp fast oge float %5076, 1.000000e+00
  %5086 = fcmp fast oge float %5080, 1.000000e+00
  %5087 = or i1 %5085, %5086
  %5088 = fcmp fast olt float %5076, 0.000000e+00
  %5089 = fcmp fast olt float %5080, 0.000000e+00
  %5090 = or i1 %5088, %5089
  %5091 = or i1 %5087, %5090
  br i1 %5091, label %5724, label %5092, !dx.controlflow.hints !131

; <label>:5092                                    ; preds = %5057
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5096 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5098 = extractvalue %dx.types.CBufRet.f32 %5097, 1
  %5099 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5100 = extractvalue %dx.types.CBufRet.i32 %5099, 2
  %5101 = uitofp i32 %5100 to float
  %5102 = extractvalue %dx.types.CBufRet.i32 %5099, 3
  %5103 = uitofp i32 %5102 to float
  %5104 = extractvalue %dx.types.CBufRet.f32 %5093, 3
  %5105 = fmul fast float %5104, 2.000000e+00
  %5106 = fsub fast float %5076, %5094
  %5107 = fsub fast float %5080, %5095
  %5108 = fmul fast float %5105, %5106
  %5109 = fmul fast float %5105, %5107
  %5110 = fdiv fast float 1.000000e+00, %4805
  %5111 = fmul fast float %5109, %5110
  %5112 = call float @dx.op.unary.f32(i32 6, float %5111)  ; FAbs(value)
  %5113 = fmul fast float %5096, %155
  %5114 = fmul fast float %5113, %5105
  %5115 = call float @dx.op.unary.f32(i32 6, float %5114)  ; FAbs(value)
  %5116 = call float @dx.op.unary.f32(i32 6, float %5108)  ; FAbs(value)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5115, float %5112)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5116, float %5117)  ; FMax(a,b)
  %5119 = fmul fast float %5118, 2.000000e+00
  %5120 = call float @dx.op.unary.f32(i32 23, float %5119)  ; Log(value)
  %5121 = call float @dx.op.binary.f32(i32 35, float %5120, float %5101)  ; FMax(a,b)
  %5122 = call float @dx.op.unary.f32(i32 22, float %5121)  ; Frc(value)
  %5123 = fadd fast float %5122, 0xBFEA666660000000
  %5124 = fmul fast float %5123, 8.000000e+00
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = call float @dx.op.unary.f32(i32 27, float %5121)  ; Round_ni(value)
  %5127 = fadd fast float %5126, %5125
  %5128 = call float @dx.op.binary.f32(i32 36, float %5127, float %5103)  ; FMin(a,b)
  %5129 = call float @dx.op.unary.f32(i32 27, float %5128)  ; Round_ni(value)
  %5130 = fsub fast float -0.000000e+00, %5129
  %5131 = call float @dx.op.unary.f32(i32 21, float %5130)  ; Exp(value)
  %5132 = fmul fast float %5131, %5105
  %5133 = fmul fast float %5132, %5076
  %5134 = fmul fast float %5132, %5080
  %5135 = fmul fast float %5133, 5.000000e-01
  %5136 = fmul fast float %5134, 5.000000e-01
  %5137 = fadd fast float %5135, 5.000000e-01
  %5138 = fadd fast float %5136, 5.000000e-01
  %5139 = fmul fast float %5133, 2.500000e-01
  %5140 = fmul fast float %5134, 2.500000e-01
  %5141 = fadd fast float %5139, 5.000000e-01
  %5142 = fadd fast float %5140, 5.000000e-01
  %5143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5144 = extractvalue %dx.types.ResRet.i32 %5143, 0
  %5145 = and i32 %5144, 536870911
  %5146 = lshr i32 %5145, 9
  %5147 = uitofp i32 %5146 to float
  %5148 = fmul fast float %5147, %5076
  %5149 = fmul fast float %5147, %5080
  %5150 = call float @dx.op.unary.f32(i32 22, float %5148)  ; Frc(value)
  %5151 = call float @dx.op.unary.f32(i32 22, float %5149)  ; Frc(value)
  %5152 = call float @dx.op.unary.f32(i32 22, float %5125)  ; Frc(value)
  %5153 = fcmp fast une float %5152, 0.000000e+00
  br i1 %5153, label %5154, label %5252, !dx.controlflow.hints !132

; <label>:5154                                    ; preds = %5092
  %5155 = call float @dx.op.unary.f32(i32 21, float %5126)  ; Exp(value)
  %5156 = fmul fast float %5155, 1.953125e-03
  %5157 = fcmp fast olt float %5150, %5156
  %5158 = fcmp fast olt float %5151, %5156
  %5159 = or i1 %5157, %5158
  %5160 = fsub fast float 1.000000e+00, %5156
  %5161 = fcmp fast ogt float %5150, %5160
  %5162 = fcmp fast ogt float %5151, %5160
  %5163 = or i1 %5161, %5162
  %5164 = or i1 %5159, %5163
  br i1 %5164, label %5165, label %5331, !dx.controlflow.hints !133

; <label>:5165                                    ; preds = %5154
  %5166 = fmul fast float %5098, 5.000000e-01
  %5167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.i32 %5167, 0
  %5169 = fmul fast float %5080, 3.530000e+02
  %5170 = uitofp i32 %5145 to float
  %5171 = fmul fast float %5169, %5170
  %5172 = fmul fast float %5076, 6.130000e+02
  %5173 = fadd fast float %5171, %5172
  %5174 = fptoui float %5173 to i32
  %5175 = add i32 %5168, %5174
  %5176 = mul i32 %5175, -63
  %5177 = lshr i32 %5176, 17
  %5178 = xor i32 %5177, %5176
  %5179 = mul i32 %5178, -511
  %5180 = mul i32 %5178, -8176
  %5181 = xor i32 %5179, %5180
  %5182 = mul i32 %5181, -7
  %5183 = mul i32 %5181, -7168
  %5184 = xor i32 %5182, %5183
  %5185 = lshr i32 %5184, 15
  %5186 = xor i32 %5185, %5182
  %5187 = and i32 %5186, 15
  %5188 = mul i32 %5187, 2
  %5189 = add i32 0, %5188
  %5190 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5189
  %5191 = load float, float* %5190, align 4
  %5192 = mul i32 %5187, 2
  %5193 = add i32 1, %5192
  %5194 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5193
  %5195 = load float, float* %5194, align 4
  %5196 = fmul fast float %5080, 2.770000e+02
  %5197 = fmul fast float %5196, %5170
  %5198 = fmul fast float %5076, 5.990000e+02
  %5199 = fadd fast float %5197, %5198
  %5200 = fptoui float %5199 to i32
  %5201 = mul i32 %5200, -63
  %5202 = lshr i32 %5201, 17
  %5203 = xor i32 %5202, %5201
  %5204 = mul i32 %5203, -511
  %5205 = mul i32 %5203, -8176
  %5206 = xor i32 %5204, %5205
  %5207 = mul i32 %5206, -7
  %5208 = mul i32 %5206, -7168
  %5209 = xor i32 %5207, %5208
  %5210 = lshr i32 %5209, 15
  %5211 = xor i32 %5210, %5207
  %5212 = and i32 %5211, 63
  %5213 = mul i32 %5212, 2
  %5214 = add i32 0, %5213
  %5215 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5214
  %5216 = load float, float* %5215, align 4
  %5217 = mul i32 %5212, 2
  %5218 = add i32 1, %5217
  %5219 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5218
  %5220 = load float, float* %5219, align 4
  %5221 = call float @dx.op.dot2.f32(i32 54, float %5191, float %5195, float %5216, float %5220)  ; Dot2(ax,ay,bx,by)
  %5222 = fsub fast float -0.000000e+00, %5216
  %5223 = call float @dx.op.dot2.f32(i32 54, float %5191, float %5195, float %5222, float %5220)  ; Dot2(ax,ay,bx,by)
  %5224 = fmul fast float %5221, %5166
  %5225 = fmul fast float %5223, %5166
  %5226 = fdiv fast float 2.000000e+00, %5132
  %5227 = fmul fast float %5155, 9.765625e-04
  %5228 = fcmp fast olt float %5150, %5227
  %5229 = fcmp fast olt float %5151, %5227
  %5230 = or i1 %5228, %5229
  %5231 = fsub fast float 1.000000e+00, %5227
  %5232 = fcmp fast ogt float %5150, %5231
  %5233 = fcmp fast ogt float %5151, %5231
  %5234 = or i1 %5232, %5233
  %5235 = or i1 %5230, %5234
  %5236 = fmul fast float %5224, 2.000000e+00
  br i1 %5235, label %5237, label %5241

; <label>:5237                                    ; preds = %5165
  %5238 = fmul fast float %5225, 2.000000e+00
  %5239 = fadd fast float %5236, %5137
  %5240 = fadd fast float %5238, %5138
  br label %5241

; <label>:5241                                    ; preds = %5237, %5165
  %5242 = phi float [ %5239, %5237 ], [ %5137, %5165 ]
  %5243 = phi float [ %5240, %5237 ], [ %5138, %5165 ]
  %5244 = phi i32 [ 3, %5237 ], [ 2, %5165 ]
  %5245 = fadd fast float %5224, %5141
  %5246 = fadd fast float %5225, %5142
  %5247 = fmul fast float %5236, %5226
  %5248 = fmul fast float %5226, 2.000000e+00
  %5249 = fmul fast float %5248, %5225
  %5250 = fadd fast float %5247, %5076
  %5251 = fadd fast float %5249, %5080
  br label %5331

; <label>:5252                                    ; preds = %5092
  %5253 = call float @dx.op.unary.f32(i32 21, float %5129)  ; Exp(value)
  %5254 = fmul fast float %5253, 9.765625e-04
  %5255 = fcmp fast olt float %5150, %5254
  %5256 = fcmp fast olt float %5151, %5254
  %5257 = or i1 %5255, %5256
  %5258 = fsub fast float 1.000000e+00, %5254
  %5259 = fcmp fast ogt float %5150, %5258
  %5260 = fcmp fast ogt float %5151, %5258
  %5261 = or i1 %5259, %5260
  %5262 = or i1 %5257, %5261
  br i1 %5262, label %5263, label %5331, !dx.controlflow.hints !134

; <label>:5263                                    ; preds = %5252
  %5264 = fmul fast float %5098, 5.000000e-01
  %5265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.i32 %5265, 0
  %5267 = fmul fast float %5080, 3.530000e+02
  %5268 = uitofp i32 %5145 to float
  %5269 = fmul fast float %5267, %5268
  %5270 = fmul fast float %5076, 6.130000e+02
  %5271 = fadd fast float %5269, %5270
  %5272 = fptoui float %5271 to i32
  %5273 = add i32 %5266, %5272
  %5274 = mul i32 %5273, -63
  %5275 = lshr i32 %5274, 17
  %5276 = xor i32 %5275, %5274
  %5277 = mul i32 %5276, -511
  %5278 = mul i32 %5276, -8176
  %5279 = xor i32 %5277, %5278
  %5280 = mul i32 %5279, -7
  %5281 = mul i32 %5279, -7168
  %5282 = xor i32 %5280, %5281
  %5283 = lshr i32 %5282, 15
  %5284 = xor i32 %5283, %5280
  %5285 = and i32 %5284, 15
  %5286 = mul i32 %5285, 2
  %5287 = add i32 0, %5286
  %5288 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5287
  %5289 = load float, float* %5288, align 4
  %5290 = mul i32 %5285, 2
  %5291 = add i32 1, %5290
  %5292 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5291
  %5293 = load float, float* %5292, align 4
  %5294 = fmul fast float %5080, 2.770000e+02
  %5295 = fmul fast float %5294, %5268
  %5296 = fmul fast float %5076, 5.990000e+02
  %5297 = fadd fast float %5295, %5296
  %5298 = fptoui float %5297 to i32
  %5299 = mul i32 %5298, -63
  %5300 = lshr i32 %5299, 17
  %5301 = xor i32 %5300, %5299
  %5302 = mul i32 %5301, -511
  %5303 = mul i32 %5301, -8176
  %5304 = xor i32 %5302, %5303
  %5305 = mul i32 %5304, -7
  %5306 = mul i32 %5304, -7168
  %5307 = xor i32 %5305, %5306
  %5308 = lshr i32 %5307, 15
  %5309 = xor i32 %5308, %5305
  %5310 = and i32 %5309, 63
  %5311 = mul i32 %5310, 2
  %5312 = add i32 0, %5311
  %5313 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5312
  %5314 = load float, float* %5313, align 4
  %5315 = mul i32 %5310, 2
  %5316 = add i32 1, %5315
  %5317 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5316
  %5318 = load float, float* %5317, align 4
  %5319 = call float @dx.op.dot2.f32(i32 54, float %5289, float %5293, float %5314, float %5318)  ; Dot2(ax,ay,bx,by)
  %5320 = fsub fast float -0.000000e+00, %5314
  %5321 = call float @dx.op.dot2.f32(i32 54, float %5289, float %5293, float %5320, float %5318)  ; Dot2(ax,ay,bx,by)
  %5322 = fmul fast float %5319, %5264
  %5323 = fmul fast float %5321, %5264
  %5324 = fadd fast float %5322, %5137
  %5325 = fadd fast float %5323, %5138
  %5326 = fdiv fast float 2.000000e+00, %5132
  %5327 = fmul fast float %5326, %5322
  %5328 = fmul fast float %5323, %5326
  %5329 = fadd fast float %5327, %5076
  %5330 = fadd fast float %5328, %5080
  br label %5331

; <label>:5331                                    ; preds = %5263, %5252, %5241, %5154
  %5332 = phi float [ %5245, %5241 ], [ %5141, %5154 ], [ %5141, %5263 ], [ %5141, %5252 ]
  %5333 = phi float [ %5246, %5241 ], [ %5142, %5154 ], [ %5142, %5263 ], [ %5142, %5252 ]
  %5334 = phi float [ %5242, %5241 ], [ %5137, %5154 ], [ %5324, %5263 ], [ %5137, %5252 ]
  %5335 = phi float [ %5243, %5241 ], [ %5138, %5154 ], [ %5325, %5263 ], [ %5138, %5252 ]
  %5336 = phi i32 [ %5244, %5241 ], [ 0, %5154 ], [ 1, %5263 ], [ 0, %5252 ]
  %5337 = phi float [ %5250, %5241 ], [ %5076, %5154 ], [ %5329, %5263 ], [ %5076, %5252 ]
  %5338 = phi float [ %5251, %5241 ], [ %5080, %5154 ], [ %5330, %5263 ], [ %5080, %5252 ]
  %5339 = fsub fast float %5103, %5101
  %5340 = fptoui float %5339 to i32
  %5341 = add i32 %5340, 320
  %5342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %5341)  ; CBufferLoadLegacy(handle,regIndex)
  %5343 = extractvalue %dx.types.CBufRet.f32 %5342, 0
  %5344 = extractvalue %dx.types.CBufRet.f32 %5342, 1
  %5345 = fcmp fast une float %5128, %5103
  %5346 = fsub fast float %5337, %5343
  %5347 = fsub fast float %5338, %5344
  %5348 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5349 = call float @dx.op.unary.f32(i32 6, float %5347)  ; FAbs(value)
  %5350 = fmul fast float %5348, %5132
  %5351 = fmul fast float %5349, %5132
  %5352 = fcmp fast olt float %5350, 1.000000e+00
  %5353 = fcmp fast olt float %5351, 1.000000e+00
  %5354 = and i1 %5352, %5353
  %5355 = or i1 %5345, %5354
  br i1 %5355, label %5356, label %5724, !dx.controlflow.hints !135

; <label>:5356                                    ; preds = %5331
  %5357 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5358 = extractvalue %dx.types.CBufRet.i32 %5357, 2
  %5359 = sitofp i32 %5358 to float
  %5360 = fsub fast float %5128, %5359
  %5361 = call float @dx.op.unary.f32(i32 27, float %5360)  ; Round_ni(value)
  %5362 = call float @dx.op.unary.f32(i32 22, float %5128)  ; Frc(value)
  %5363 = icmp eq i32 %5336, 0
  %5364 = call float @dx.op.unary.f32(i32 22, float %5334)  ; Frc(value)
  %5365 = call float @dx.op.unary.f32(i32 22, float %5335)  ; Frc(value)
  br i1 %5363, label %5436, label %5366, !dx.controlflow.hints !136

; <label>:5366                                    ; preds = %5356
  %5367 = and i32 %5336, 1
  %5368 = icmp eq i32 %5367, 0
  br i1 %5368, label %5382, label %5369, !dx.controlflow.hints !137

; <label>:5369                                    ; preds = %5366
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = fmul fast float %5364, %5371
  %5373 = fmul fast float %5365, %5371
  %5374 = fptoui float %5372 to i32
  %5375 = fptoui float %5373 to i32
  %5376 = fptoui float %5361 to i32
  %5377 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5374, i32 %5375, i32 %5376, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5378 = extractvalue %dx.types.ResRet.f32 %5377, 0
  %5379 = extractvalue %dx.types.ResRet.f32 %5377, 1
  %5380 = extractvalue %dx.types.ResRet.f32 %5377, 2
  %5381 = extractvalue %dx.types.ResRet.f32 %5377, 3
  br label %5388

; <label>:5382                                    ; preds = %5366
  %5383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5364, float %5365, float %5361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5384 = extractvalue %dx.types.ResRet.f32 %5383, 0
  %5385 = extractvalue %dx.types.ResRet.f32 %5383, 1
  %5386 = extractvalue %dx.types.ResRet.f32 %5383, 2
  %5387 = extractvalue %dx.types.ResRet.f32 %5383, 3
  br label %5388

; <label>:5388                                    ; preds = %5382, %5369
  %5389 = phi float [ %5378, %5369 ], [ %5384, %5382 ]
  %5390 = phi float [ %5379, %5369 ], [ %5385, %5382 ]
  %5391 = phi float [ %5380, %5369 ], [ %5386, %5382 ]
  %5392 = phi float [ %5381, %5369 ], [ %5387, %5382 ]
  %5393 = fcmp fast ogt float %5362, 0.000000e+00
  br i1 %5393, label %5394, label %5464

; <label>:5394                                    ; preds = %5388
  %5395 = and i32 %5336, 2
  %5396 = icmp eq i32 %5395, 0
  %5397 = fadd fast float %5361, 1.000000e+00
  %5398 = call float @dx.op.unary.f32(i32 22, float %5332)  ; Frc(value)
  %5399 = call float @dx.op.unary.f32(i32 22, float %5333)  ; Frc(value)
  br i1 %5396, label %5413, label %5400, !dx.controlflow.hints !138

; <label>:5400                                    ; preds = %5394
  %5401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5402 = extractvalue %dx.types.CBufRet.f32 %5401, 0
  %5403 = fmul fast float %5398, %5402
  %5404 = fmul fast float %5399, %5402
  %5405 = fptoui float %5403 to i32
  %5406 = fptoui float %5404 to i32
  %5407 = fptoui float %5397 to i32
  %5408 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5405, i32 %5406, i32 %5407, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5409 = extractvalue %dx.types.ResRet.f32 %5408, 0
  %5410 = extractvalue %dx.types.ResRet.f32 %5408, 1
  %5411 = extractvalue %dx.types.ResRet.f32 %5408, 2
  %5412 = extractvalue %dx.types.ResRet.f32 %5408, 3
  br label %5419

; <label>:5413                                    ; preds = %5394
  %5414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5398, float %5399, float %5397, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = extractvalue %dx.types.ResRet.f32 %5414, 3
  br label %5419

; <label>:5419                                    ; preds = %5413, %5400
  %5420 = phi float [ %5409, %5400 ], [ %5415, %5413 ]
  %5421 = phi float [ %5410, %5400 ], [ %5416, %5413 ]
  %5422 = phi float [ %5411, %5400 ], [ %5417, %5413 ]
  %5423 = phi float [ %5412, %5400 ], [ %5418, %5413 ]
  %5424 = fsub fast float %5420, %5389
  %5425 = fsub fast float %5421, %5390
  %5426 = fsub fast float %5422, %5391
  %5427 = fsub fast float %5423, %5392
  %5428 = fmul fast float %5424, %5362
  %5429 = fmul fast float %5425, %5362
  %5430 = fmul fast float %5426, %5362
  %5431 = fmul fast float %5427, %5362
  %5432 = fadd fast float %5428, %5389
  %5433 = fadd fast float %5429, %5390
  %5434 = fadd fast float %5430, %5391
  %5435 = fadd fast float %5431, %5392
  br label %5464

; <label>:5436                                    ; preds = %5356
  %5437 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5364, float %5365, float %5361, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.ResRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.ResRet.f32 %5437, 2
  %5441 = extractvalue %dx.types.ResRet.f32 %5437, 3
  %5442 = fcmp fast ogt float %5362, 0.000000e+00
  br i1 %5442, label %5443, label %5464, !dx.controlflow.hints !139

; <label>:5443                                    ; preds = %5436
  %5444 = fadd fast float %5361, 1.000000e+00
  %5445 = call float @dx.op.unary.f32(i32 22, float %5332)  ; Frc(value)
  %5446 = call float @dx.op.unary.f32(i32 22, float %5333)  ; Frc(value)
  %5447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5445, float %5446, float %5444, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5448 = extractvalue %dx.types.ResRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.ResRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.ResRet.f32 %5447, 2
  %5451 = extractvalue %dx.types.ResRet.f32 %5447, 3
  %5452 = fsub fast float %5448, %5438
  %5453 = fsub fast float %5449, %5439
  %5454 = fsub fast float %5450, %5440
  %5455 = fsub fast float %5451, %5441
  %5456 = fmul fast float %5452, %5362
  %5457 = fmul fast float %5453, %5362
  %5458 = fmul fast float %5454, %5362
  %5459 = fmul fast float %5455, %5362
  %5460 = fadd fast float %5456, %5438
  %5461 = fadd fast float %5457, %5439
  %5462 = fadd fast float %5458, %5440
  %5463 = fadd fast float %5459, %5441
  br label %5464

; <label>:5464                                    ; preds = %5443, %5436, %5419, %5388
  %5465 = phi float [ %5432, %5419 ], [ %5389, %5388 ], [ %5460, %5443 ], [ %5438, %5436 ]
  %5466 = phi float [ %5433, %5419 ], [ %5390, %5388 ], [ %5461, %5443 ], [ %5439, %5436 ]
  %5467 = phi float [ %5434, %5419 ], [ %5391, %5388 ], [ %5462, %5443 ], [ %5440, %5436 ]
  %5468 = phi float [ %5435, %5419 ], [ %5392, %5388 ], [ %5463, %5443 ], [ %5441, %5436 ]
  %5469 = fadd fast float %5465, -5.000000e-01
  %5470 = fadd fast float %5467, -5.000000e-01
  %5471 = fmul fast float %5469, 0xBFD5555560000000
  %5472 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5470, float %5471)  ; FMad(a,b,c)
  %5473 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5466, float 0.000000e+00)  ; FMad(a,b,c)
  %5474 = fadd fast float %5473, %5468
  %5475 = fmul fast float %5469, -7.500000e-01
  %5476 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5470, float %5475)  ; FMad(a,b,c)
  %5477 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5466, float 0.000000e+00)  ; FMad(a,b,c)
  %5478 = fadd fast float %5477, %5468
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 0
  %5483 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5484 = extractvalue %dx.types.CBufRet.f32 %5481, 2
  %5485 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5486 = fsub fast float %5482, %5472
  %5487 = fsub fast float %5483, %5474
  %5488 = fsub fast float %5484, %5476
  %5489 = fsub fast float %5485, %5478
  %5490 = fmul fast float %5486, %5480
  %5491 = fmul fast float %5487, %5480
  %5492 = fmul fast float %5488, %5480
  %5493 = fmul fast float %5489, %5480
  %5494 = fadd fast float %5490, %5472
  %5495 = fadd fast float %5491, %5474
  %5496 = fadd fast float %5492, %5476
  %5497 = fadd fast float %5493, %5478
  %5498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5499 = extractvalue %dx.types.ResRet.i32 %5498, 0
  %5500 = and i32 %5499, 536870911
  %5501 = uitofp i32 %5500 to float
  %5502 = fmul fast float %5501, %5337
  %5503 = fmul fast float %5501, %5338
  %5504 = fptoui float %5502 to i32
  %5505 = fptoui float %5503 to i32
  %5506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5507 = extractvalue %dx.types.ResRet.i32 %5506, 0
  %5508 = and i32 %5507, 31
  %5509 = lshr i32 %5504, %5508
  %5510 = lshr i32 %5505, %5508
  %5511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5512 = extractvalue %dx.types.ResRet.i32 %5511, 0
  %5513 = and i32 %5512, 31
  %5514 = shl i32 1, %5513
  %5515 = call i32 @dx.op.binary.i32(i32 40, i32 %5514, i32 4)  ; UMin(a,b)
  %5516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5517 = extractvalue %dx.types.ResRet.i32 %5516, 0
  %5518 = extractvalue %dx.types.ResRet.i32 %5516, 1
  %5519 = icmp eq i32 %5515, 0
  br i1 %5519, label %5561, label %5520

; <label>:5520                                    ; preds = %5464
  br label %5521

; <label>:5521                                    ; preds = %5549, %5520
  %5522 = phi i32 [ %5552, %5549 ], [ 0, %5520 ]
  %5523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.i32 %5523, 0
  %5525 = lshr i32 %5524, 16
  %5526 = and i32 %5525, 31
  %5527 = shl i32 %5510, %5526
  %5528 = add i32 %5527, %5509
  %5529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.i32 %5529, 0
  %5531 = and i32 %5530, 31
  %5532 = shl i32 %5528, %5531
  %5533 = add i32 %5532, %5522
  %5534 = shl i32 %5533, 2
  %5535 = add i32 %5534, 32
  %5536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5535, i32 undef)  ; BufferLoad(srv,index,wot)
  %5537 = extractvalue %dx.types.ResRet.i32 %5536, 0
  %5538 = icmp slt i32 %5537, 0
  %5539 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5522
  %5540 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5522
  %5541 = bitcast float* %5539 to i32*
  %5542 = bitcast float* %5540 to i32*
  br i1 %5538, label %5543, label %5549

; <label>:5543                                    ; preds = %5521
  %5544 = and i32 %5537, 1073741823
  %5545 = add nuw nsw i32 %5544, 20
  %5546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5545, i32 undef)  ; BufferLoad(srv,index,wot)
  %5547 = extractvalue %dx.types.ResRet.i32 %5546, 0
  %5548 = extractvalue %dx.types.ResRet.i32 %5546, 1
  br label %5549

; <label>:5549                                    ; preds = %5543, %5521
  %5550 = phi i32 [ %5547, %5543 ], [ %5517, %5521 ]
  %5551 = phi i32 [ %5548, %5543 ], [ %5518, %5521 ]
  store i32 %5550, i32* %5541, align 4
  store i32 %5551, i32* %5542, align 4
  %5552 = add nuw i32 %5522, 1
  %5553 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5554 = extractvalue %dx.types.CBufRet.i32 %5553, 2
  %5555 = icmp eq i32 %5554, 0
  %5556 = icmp ugt i32 %5537, -1073741825
  %5557 = and i1 %5556, %5555
  %5558 = icmp ult i32 %5552, %5515
  %5559 = and i1 %5557, %5558
  br i1 %5559, label %5521, label %5560

; <label>:5560                                    ; preds = %5549
  br label %5561

; <label>:5561                                    ; preds = %5560, %5464
  %5562 = phi i32 [ 0, %5464 ], [ %5552, %5560 ]
  %5563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5564 = extractvalue %dx.types.CBufRet.f32 %5563, 2
  %5565 = fptoui float %5564 to i32
  %5566 = icmp eq i32 %5565, 0
  br i1 %5566, label %5618, label %5567

; <label>:5567                                    ; preds = %5561
  br label %5568

; <label>:5568                                    ; preds = %5613, %5567
  %5569 = phi i32 [ %5614, %5613 ], [ %5562, %5567 ]
  %5570 = phi i32 [ %5615, %5613 ], [ 0, %5567 ]
  %5571 = lshr i32 %5570, 2
  %5572 = and i32 %5570, 3
  %5573 = add nuw nsw i32 %5571, 83
  %5574 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 %5573)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.i32 %5574, 0
  %5576 = extractvalue %dx.types.CBufRet.i32 %5574, 1
  %5577 = extractvalue %dx.types.CBufRet.i32 %5574, 2
  %5578 = extractvalue %dx.types.CBufRet.i32 %5574, 3
  %5579 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 0
  store i32 %5575, i32* %5579, align 4
  %5580 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 1
  store i32 %5576, i32* %5580, align 4
  %5581 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 2
  store i32 %5577, i32* %5581, align 4
  %5582 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 3
  store i32 %5578, i32* %5582, align 4
  %5583 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 %5572
  %5584 = load i32, i32* %5583, align 4, !tbaa !140, !noalias !142
  %5585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5586 = extractvalue %dx.types.ResRet.i32 %5585, 0
  %5587 = lshr i32 %5586, 16
  %5588 = and i32 %5587, 31
  %5589 = shl i32 %5510, %5588
  %5590 = add i32 %5589, %5509
  %5591 = shl i32 %5590, 2
  %5592 = add i32 %5591, %5584
  %5593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5592, i32 undef)  ; BufferLoad(srv,index,wot)
  %5594 = extractvalue %dx.types.ResRet.i32 %5593, 0
  %5595 = icmp eq i32 %5594, 0
  br i1 %5595, label %5613, label %5596

; <label>:5596                                    ; preds = %5568
  %5597 = icmp slt i32 %5594, 0
  %5598 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5569
  %5599 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5569
  %5600 = bitcast float* %5598 to i32*
  %5601 = bitcast float* %5599 to i32*
  br i1 %5597, label %5602, label %5609

; <label>:5602                                    ; preds = %5596
  %5603 = and i32 %5594, 1073741823
  %5604 = add i32 %5584, 20
  %5605 = add i32 %5604, %5603
  %5606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5605, i32 undef)  ; BufferLoad(srv,index,wot)
  %5607 = extractvalue %dx.types.ResRet.i32 %5606, 0
  %5608 = extractvalue %dx.types.ResRet.i32 %5606, 1
  br label %5609

; <label>:5609                                    ; preds = %5602, %5596
  %5610 = phi i32 [ %5607, %5602 ], [ %5517, %5596 ]
  %5611 = phi i32 [ %5608, %5602 ], [ %5518, %5596 ]
  store i32 %5610, i32* %5600, align 4
  store i32 %5611, i32* %5601, align 4
  %5612 = add i32 %5569, 1
  br label %5613

; <label>:5613                                    ; preds = %5609, %5568
  %5614 = phi i32 [ %5569, %5568 ], [ %5612, %5609 ]
  %5615 = add nuw i32 %5570, 1
  %5616 = icmp eq i32 %5615, %5565
  br i1 %5616, label %5617, label %5568

; <label>:5617                                    ; preds = %5613
  br label %5618

; <label>:5618                                    ; preds = %5617, %5561
  %5619 = phi i32 [ %5562, %5561 ], [ %5614, %5617 ]
  %5620 = icmp eq i32 %5619, 1
  %5621 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %5622 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %5620, label %5623, label %5626

; <label>:5623                                    ; preds = %5618
  %5624 = load float, float* %5621, align 4
  %5625 = load float, float* %5622, align 4
  br label %5653

; <label>:5626                                    ; preds = %5618
  %5627 = load float, float* %5621, align 4
  %5628 = load float, float* %5622, align 4
  %5629 = fdiv fast float 1.000000e+00, %5628
  %5630 = fsub fast float %5627, %5629
  %5631 = icmp ugt i32 %5619, 1
  br i1 %5631, label %5632, label %5648

; <label>:5632                                    ; preds = %5626
  br label %5633

; <label>:5633                                    ; preds = %5633, %5632
  %5634 = phi float [ %5643, %5633 ], [ %5630, %5632 ]
  %5635 = phi float [ %5644, %5633 ], [ %5627, %5632 ]
  %5636 = phi i32 [ %5645, %5633 ], [ 1, %5632 ]
  %5637 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5636
  %5638 = load float, float* %5637, align 4
  %5639 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5636
  %5640 = load float, float* %5639, align 4
  %5641 = fdiv fast float 1.000000e+00, %5640
  %5642 = fsub fast float %5638, %5641
  %5643 = call float @dx.op.binary.f32(i32 36, float %5634, float %5642)  ; FMin(a,b)
  %5644 = call float @dx.op.binary.f32(i32 35, float %5635, float %5638)  ; FMax(a,b)
  %5645 = add nuw i32 %5636, 1
  %5646 = icmp eq i32 %5645, %5619
  br i1 %5646, label %5647, label %5633

; <label>:5647                                    ; preds = %5633
  br label %5648

; <label>:5648                                    ; preds = %5647, %5626
  %5649 = phi float [ %5630, %5626 ], [ %5643, %5647 ]
  %5650 = phi float [ %5627, %5626 ], [ %5644, %5647 ]
  %5651 = fsub fast float %5650, %5649
  %5652 = fdiv fast float 1.000000e+00, %5651
  br label %5653

; <label>:5653                                    ; preds = %5648, %5623
  %5654 = phi float [ %5624, %5623 ], [ %5650, %5648 ]
  %5655 = phi float [ %5625, %5623 ], [ %5652, %5648 ]
  %5656 = fadd fast float %5084, %5654
  %5657 = fmul fast float %5656, %5655
  %5658 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5659 = fmul fast float %5658, 2.000000e+00
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = fmul fast float %5494, %5494
  %5662 = fsub fast float %5495, %5661
  %5663 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5662)  ; FMax(a,b)
  %5664 = fdiv fast float 1.000000e+00, %5663
  %5665 = fmul fast float %5495, %5494
  %5666 = fsub fast float %5496, %5665
  %5667 = fsub fast float %5660, %5494
  %5668 = fmul fast float %5660, %5660
  %5669 = fsub fast float %5668, %5495
  %5670 = fmul fast float %5664, %5666
  %5671 = fmul fast float %5670, %5667
  %5672 = fsub fast float %5669, %5671
  %5673 = fmul fast float %5495, %5495
  %5674 = fsub fast float %5497, %5673
  %5675 = fmul fast float %5666, %5666
  %5676 = fmul fast float %5675, %5664
  %5677 = fsub fast float %5674, %5676
  %5678 = fdiv fast float %5672, %5677
  %5679 = fmul fast float %5678, %5666
  %5680 = fsub fast float %5667, %5679
  %5681 = fmul fast float %5680, %5664
  %5682 = fmul fast float %5681, %5494
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = fmul fast float %5678, %5495
  %5685 = fsub fast float %5683, %5684
  %5686 = fmul fast float %5681, %5681
  %5687 = fmul fast float %5678, 4.000000e+00
  %5688 = fmul fast float %5687, %5685
  %5689 = fsub fast float %5686, %5688
  %5690 = call float @dx.op.unary.f32(i32 24, float %5689)  ; Sqrt(value)
  %5691 = fcmp fast oge float %5681, 0.000000e+00
  %5692 = fsub fast float -0.000000e+00, %5690
  %5693 = select i1 %5691, float %5692, float %5690
  %5694 = fsub fast float %5693, %5681
  %5695 = fdiv fast float %5694, %5678
  %5696 = fdiv fast float %5685, %5694
  %5697 = fmul fast float %5695, 5.000000e-01
  %5698 = fmul fast float %5696, 2.000000e+00
  %5699 = select i1 %5691, float %5697, float %5698
  %5700 = select i1 %5691, float %5698, float %5697
  %5701 = call float @dx.op.binary.f32(i32 35, float %5699, float %5700)  ; FMax(a,b)
  %5702 = call float @dx.op.binary.f32(i32 36, float %5699, float %5700)  ; FMin(a,b)
  %5703 = fcmp fast ogt float %5660, %5701
  %5704 = fsub fast float %5660, %5702
  %5705 = fsub fast float %5660, %5701
  %5706 = fsub fast float %5701, %5702
  %5707 = select i1 %5703, float %5705, float %5706
  %5708 = fmul float %5704, %5707
  %5709 = select i1 %5703, float %5702, float %5660
  %5710 = fcmp fast ogt float %5660, %5702
  %5711 = fmul fast float %5709, %5701
  %5712 = fadd fast float %5709, %5701
  %5713 = fmul fast float %5712, %5494
  %5714 = fadd fast float %5711, %5495
  %5715 = fsub fast float %5714, %5713
  %5716 = fdiv fast float %5715, %5708
  %5717 = select i1 %5710, float %5716, float 0.000000e+00
  %5718 = fsub fast float 1.000000e+00, %5717
  %5719 = select i1 %5703, float %5718, float %5717
  %5720 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5721 = extractvalue %dx.types.CBufRet.f32 %5479, 3
  %5722 = fmul fast float %5721, %5720
  %5723 = fsub fast float 1.000000e+00, %5722
  br label %5724

; <label>:5724                                    ; preds = %5653, %5331, %5057, %5053, %5023
  %5725 = phi float [ 1.000000e+00, %5023 ], [ %5723, %5653 ], [ 1.000000e+00, %5057 ], [ 1.000000e+00, %5331 ], [ 1.000000e+00, %5053 ]
  %5726 = fcmp fast ogt float %5049, 0.000000e+00
  br i1 %5726, label %5727, label %5891, !dx.controlflow.hints !147

; <label>:5727                                    ; preds = %5724
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5730 = fadd fast float %5729, %4969
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5733 = extractvalue %dx.types.CBufRet.f32 %5731, 3
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 2
  %5736 = call float @dx.op.binary.f32(i32 35, float %5730, float 0.000000e+00)  ; FMax(a,b)
  %5737 = fadd fast float %5736, 0x3F10000000000000
  %5738 = fcmp fast oeq float %5735, 0.000000e+00
  br i1 %5738, label %5739, label %5806

; <label>:5739                                    ; preds = %5727
  %5740 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5742 = fmul fast float %5741, %4857
  %5743 = fmul fast float %5740, %4858
  %5744 = fadd fast float %5742, 5.000000e-01
  %5745 = call float @dx.op.unary.f32(i32 27, float %5744)  ; Round_ni(value)
  %5746 = fadd fast float %5743, 5.000000e-01
  %5747 = call float @dx.op.unary.f32(i32 27, float %5746)  ; Round_ni(value)
  %5748 = fsub fast float %5744, %5745
  %5749 = fsub fast float %5746, %5747
  %5750 = fadd fast float %5745, -5.000000e-01
  %5751 = fadd fast float %5747, -5.000000e-01
  %5752 = fmul fast float %5748, 2.000000e+00
  %5753 = fsub fast float 3.000000e+00, %5752
  %5754 = fadd fast float %5752, 1.000000e+00
  %5755 = fsub fast float 2.000000e+00, %5748
  %5756 = bitcast float %5753 to i32
  %5757 = sub nsw i32 2129859010, %5756
  %5758 = bitcast i32 %5757 to float
  %5759 = fmul fast float %5758, %5755
  %5760 = fadd fast float %5759, -1.000000e+00
  %5761 = bitcast float %5754 to i32
  %5762 = sub nsw i32 2129859010, %5761
  %5763 = bitcast i32 %5762 to float
  %5764 = fmul fast float %5763, %5748
  %5765 = fadd fast float %5764, 1.000000e+00
  %5766 = fmul fast float %5749, 2.000000e+00
  %5767 = fsub fast float 3.000000e+00, %5766
  %5768 = fadd fast float %5766, 1.000000e+00
  %5769 = fsub fast float 2.000000e+00, %5749
  %5770 = bitcast float %5767 to i32
  %5771 = sub nsw i32 2129859010, %5770
  %5772 = bitcast i32 %5771 to float
  %5773 = fmul fast float %5772, %5769
  %5774 = fadd fast float %5773, -1.000000e+00
  %5775 = bitcast float %5768 to i32
  %5776 = sub nsw i32 2129859010, %5775
  %5777 = bitcast i32 %5776 to float
  %5778 = fmul fast float %5777, %5749
  %5779 = fadd fast float %5778, 1.000000e+00
  %5780 = fadd fast float %5760, %5750
  %5781 = fmul fast float %5780, %5732
  %5782 = fadd fast float %5774, %5751
  %5783 = fmul fast float %5782, %5733
  %5784 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5781, float %5783, float undef, float undef, i32 0, i32 0, i32 undef, float %5737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5785 = extractvalue %dx.types.ResRet.f32 %5784, 0
  %5786 = fmul fast float %5785, %5753
  %5787 = fadd fast float %5765, %5750
  %5788 = fmul fast float %5787, %5732
  %5789 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5788, float %5783, float undef, float undef, i32 0, i32 0, i32 undef, float %5737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5790 = extractvalue %dx.types.ResRet.f32 %5789, 0
  %5791 = fmul fast float %5790, %5754
  %5792 = fadd fast float %5779, %5751
  %5793 = fmul fast float %5792, %5733
  %5794 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5781, float %5793, float undef, float undef, i32 0, i32 0, i32 undef, float %5737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5795 = extractvalue %dx.types.ResRet.f32 %5794, 0
  %5796 = fmul fast float %5795, %5753
  %5797 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5788, float %5793, float undef, float undef, i32 0, i32 0, i32 undef, float %5737)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5798 = extractvalue %dx.types.ResRet.f32 %5797, 0
  %5799 = fmul fast float %5798, %5754
  %5800 = fadd fast float %5799, %5796
  %5801 = fmul fast float %5800, %5768
  %5802 = fadd fast float %5791, %5786
  %5803 = fmul fast float %5802, %5767
  %5804 = fadd fast float %5803, %5801
  %5805 = fmul fast float %5804, 6.250000e-02
  br label %5891

; <label>:5806                                    ; preds = %5727
  %5807 = fmul fast float %1188, 0x401921FB60000000
  %5808 = call float @dx.op.unary.f32(i32 13, float %5807)  ; Sin(value)
  %5809 = call float @dx.op.unary.f32(i32 12, float %5807)  ; Cos(value)
  %5810 = fsub fast float -0.000000e+00, %5808
  br label %5811

; <label>:5811                                    ; preds = %5860, %5806
  %5812 = phi float [ 0.000000e+00, %5806 ], [ %5855, %5860 ]
  %5813 = phi float [ 0.000000e+00, %5806 ], [ %5857, %5860 ]
  %5814 = phi i32 [ 0, %5806 ], [ %5861, %5860 ]
  %5815 = mul i32 %5814, 2
  %5816 = add i32 0, %5815
  %5817 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5816
  %5818 = load float, float* %5817, align 4
  %5819 = mul i32 %5814, 2
  %5820 = add i32 1, %5819
  %5821 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5820
  %5822 = load float, float* %5821, align 4
  %5823 = fmul fast float %5818, %5809
  %5824 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5810, float %5823)  ; FMad(a,b,c)
  %5825 = fmul fast float %5818, %5808
  %5826 = call float @dx.op.tertiary.f32(i32 46, float %5822, float %5809, float %5825)  ; FMad(a,b,c)
  %5827 = fmul fast float %5824, %5735
  %5828 = fmul fast float %5826, %5735
  %5829 = fadd fast float %5827, %4857
  %5830 = fadd fast float %5828, %4858
  %5831 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %62, float %5829, float %5830, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = extractvalue %dx.types.ResRet.f32 %5831, 3
  %5836 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %5832, float* %5836, align 4
  %5837 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %5833, float* %5837, align 4
  %5838 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %5834, float* %5838, align 4
  %5839 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %5835, float* %5839, align 4
  %5840 = fsub fast float %5832, %5737
  %5841 = fcmp fast olt float %5840, 0.000000e+00
  %5842 = select i1 %5841, float 0.000000e+00, float 1.000000e+00
  %5843 = fadd fast float %5842, %5812
  %5844 = fmul fast float %5842, %5840
  %5845 = fadd fast float %5844, %5813
  br label %5846

; <label>:5846                                    ; preds = %5846, %5811
  %5847 = phi i32 [ 1, %5811 ], [ %5858, %5846 ]
  %5848 = phi float [ %5845, %5811 ], [ %5857, %5846 ]
  %5849 = phi float [ %5843, %5811 ], [ %5855, %5846 ]
  %5850 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %5847
  %5851 = load float, float* %5850, align 4, !tbaa !106, !noalias !148
  %5852 = fsub fast float %5851, %5737
  %5853 = fcmp fast olt float %5852, 0.000000e+00
  %5854 = select i1 %5853, float 0.000000e+00, float 1.000000e+00
  %5855 = fadd fast float %5854, %5849
  %5856 = fmul fast float %5854, %5852
  %5857 = fadd fast float %5856, %5848
  %5858 = add nuw nsw i32 %5847, 1
  %5859 = icmp eq i32 %5858, 4
  br i1 %5859, label %5860, label %5846, !llvm.loop !153

; <label>:5860                                    ; preds = %5846
  %5861 = add nuw nsw i32 %5814, 1
  %5862 = icmp eq i32 %5861, 8
  br i1 %5862, label %5863, label %5811, !llvm.loop !154

; <label>:5863                                    ; preds = %5860
  %5864 = fdiv fast float 1.000000e+00, %5855
  %5865 = fmul fast float %5864, %5857
  %5866 = fdiv fast float 1.000000e+00, %5737
  %5867 = fmul fast float %5865, %5866
  %5868 = call float @dx.op.unary.f32(i32 7, float %5867)  ; Saturate(value)
  %5869 = call float @dx.op.binary.f32(i32 35, float %5868, float 0.000000e+00)  ; FMax(a,b)
  %5870 = fmul fast float %5855, 3.125000e-02
  %5871 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5872 = fmul fast float %5871, 2.000000e+00
  %5873 = fadd fast float %5872, -1.000000e+00
  %5874 = fcmp fast ogt float %5873, 0.000000e+00
  %5875 = fcmp fast olt float %5873, 0.000000e+00
  %5876 = zext i1 %5874 to i32
  %5877 = zext i1 %5875 to i32
  %5878 = sub nsw i32 %5876, %5877
  %5879 = sitofp i32 %5878 to float
  %5880 = fmul fast float %5879, %5873
  %5881 = fsub fast float 1.000000e+00, %5880
  %5882 = fmul fast float %5881, %5881
  %5883 = fmul fast float %5882, %5881
  %5884 = fsub fast float %5881, %5883
  %5885 = fmul fast float %5884, %5869
  %5886 = fsub fast float 1.000000e+00, %5883
  %5887 = fsub fast float %5886, %5885
  %5888 = fmul fast float %5879, 5.000000e-01
  %5889 = fmul fast float %5888, %5887
  %5890 = fsub fast float 5.000000e-01, %5889
  br label %5891

; <label>:5891                                    ; preds = %5863, %5739, %5724
  %5892 = phi float [ 1.000000e+00, %5724 ], [ %5805, %5739 ], [ %5890, %5863 ]
  %5893 = fcmp fast ogt float %5047, 0.000000e+00
  br i1 %5893, label %5894, label %6058, !dx.controlflow.hints !155

; <label>:5894                                    ; preds = %5891
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 1
  %5897 = fadd fast float %5896, %4969
  %5898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5899 = extractvalue %dx.types.CBufRet.f32 %5898, 2
  %5900 = extractvalue %dx.types.CBufRet.f32 %5898, 3
  %5901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5902 = extractvalue %dx.types.CBufRet.f32 %5901, 1
  %5903 = call float @dx.op.binary.f32(i32 35, float %5897, float 0.000000e+00)  ; FMax(a,b)
  %5904 = fadd fast float %5903, 0x3F10000000000000
  %5905 = fcmp fast oeq float %5902, 0.000000e+00
  br i1 %5905, label %5906, label %5973

; <label>:5906                                    ; preds = %5894
  %5907 = extractvalue %dx.types.CBufRet.f32 %5898, 1
  %5908 = extractvalue %dx.types.CBufRet.f32 %5898, 0
  %5909 = fmul fast float %5908, %4849
  %5910 = fmul fast float %5907, %4850
  %5911 = fadd fast float %5909, 5.000000e-01
  %5912 = call float @dx.op.unary.f32(i32 27, float %5911)  ; Round_ni(value)
  %5913 = fadd fast float %5910, 5.000000e-01
  %5914 = call float @dx.op.unary.f32(i32 27, float %5913)  ; Round_ni(value)
  %5915 = fsub fast float %5911, %5912
  %5916 = fsub fast float %5913, %5914
  %5917 = fadd fast float %5912, -5.000000e-01
  %5918 = fadd fast float %5914, -5.000000e-01
  %5919 = fmul fast float %5915, 2.000000e+00
  %5920 = fsub fast float 3.000000e+00, %5919
  %5921 = fadd fast float %5919, 1.000000e+00
  %5922 = fsub fast float 2.000000e+00, %5915
  %5923 = bitcast float %5920 to i32
  %5924 = sub nsw i32 2129859010, %5923
  %5925 = bitcast i32 %5924 to float
  %5926 = fmul fast float %5925, %5922
  %5927 = fadd fast float %5926, -1.000000e+00
  %5928 = bitcast float %5921 to i32
  %5929 = sub nsw i32 2129859010, %5928
  %5930 = bitcast i32 %5929 to float
  %5931 = fmul fast float %5930, %5915
  %5932 = fadd fast float %5931, 1.000000e+00
  %5933 = fmul fast float %5916, 2.000000e+00
  %5934 = fsub fast float 3.000000e+00, %5933
  %5935 = fadd fast float %5933, 1.000000e+00
  %5936 = fsub fast float 2.000000e+00, %5916
  %5937 = bitcast float %5934 to i32
  %5938 = sub nsw i32 2129859010, %5937
  %5939 = bitcast i32 %5938 to float
  %5940 = fmul fast float %5939, %5936
  %5941 = fadd fast float %5940, -1.000000e+00
  %5942 = bitcast float %5935 to i32
  %5943 = sub nsw i32 2129859010, %5942
  %5944 = bitcast i32 %5943 to float
  %5945 = fmul fast float %5944, %5916
  %5946 = fadd fast float %5945, 1.000000e+00
  %5947 = fadd fast float %5927, %5917
  %5948 = fmul fast float %5947, %5899
  %5949 = fadd fast float %5941, %5918
  %5950 = fmul fast float %5949, %5900
  %5951 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %5948, float %5950, float undef, float undef, i32 0, i32 0, i32 undef, float %5904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5952 = extractvalue %dx.types.ResRet.f32 %5951, 0
  %5953 = fmul fast float %5952, %5920
  %5954 = fadd fast float %5932, %5917
  %5955 = fmul fast float %5954, %5899
  %5956 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %5955, float %5950, float undef, float undef, i32 0, i32 0, i32 undef, float %5904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = fmul fast float %5957, %5921
  %5959 = fadd fast float %5946, %5918
  %5960 = fmul fast float %5959, %5900
  %5961 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %5948, float %5960, float undef, float undef, i32 0, i32 0, i32 undef, float %5904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = fmul fast float %5962, %5920
  %5964 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %5955, float %5960, float undef, float undef, i32 0, i32 0, i32 undef, float %5904)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = fmul fast float %5965, %5921
  %5967 = fadd fast float %5966, %5963
  %5968 = fmul fast float %5967, %5935
  %5969 = fadd fast float %5958, %5953
  %5970 = fmul fast float %5969, %5934
  %5971 = fadd fast float %5970, %5968
  %5972 = fmul fast float %5971, 6.250000e-02
  br label %6058

; <label>:5973                                    ; preds = %5894
  %5974 = fmul fast float %1188, 0x401921FB60000000
  %5975 = call float @dx.op.unary.f32(i32 13, float %5974)  ; Sin(value)
  %5976 = call float @dx.op.unary.f32(i32 12, float %5974)  ; Cos(value)
  %5977 = fsub fast float -0.000000e+00, %5975
  br label %5978

; <label>:5978                                    ; preds = %6027, %5973
  %5979 = phi float [ 0.000000e+00, %5973 ], [ %6022, %6027 ]
  %5980 = phi float [ 0.000000e+00, %5973 ], [ %6024, %6027 ]
  %5981 = phi i32 [ 0, %5973 ], [ %6028, %6027 ]
  %5982 = mul i32 %5981, 2
  %5983 = add i32 0, %5982
  %5984 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5983
  %5985 = load float, float* %5984, align 4
  %5986 = mul i32 %5981, 2
  %5987 = add i32 1, %5986
  %5988 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5987
  %5989 = load float, float* %5988, align 4
  %5990 = fmul fast float %5985, %5976
  %5991 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %5977, float %5990)  ; FMad(a,b,c)
  %5992 = fmul fast float %5985, %5975
  %5993 = call float @dx.op.tertiary.f32(i32 46, float %5989, float %5976, float %5992)  ; FMad(a,b,c)
  %5994 = fmul fast float %5991, %5902
  %5995 = fmul fast float %5993, %5902
  %5996 = fadd fast float %5994, %4849
  %5997 = fadd fast float %5995, %4850
  %5998 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %62, float %5996, float %5997, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5999 = extractvalue %dx.types.ResRet.f32 %5998, 0
  %6000 = extractvalue %dx.types.ResRet.f32 %5998, 1
  %6001 = extractvalue %dx.types.ResRet.f32 %5998, 2
  %6002 = extractvalue %dx.types.ResRet.f32 %5998, 3
  %6003 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %5999, float* %6003, align 4
  %6004 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6000, float* %6004, align 4
  %6005 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6001, float* %6005, align 4
  %6006 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6002, float* %6006, align 4
  %6007 = fsub fast float %5999, %5904
  %6008 = fcmp fast olt float %6007, 0.000000e+00
  %6009 = select i1 %6008, float 0.000000e+00, float 1.000000e+00
  %6010 = fadd fast float %6009, %5979
  %6011 = fmul fast float %6009, %6007
  %6012 = fadd fast float %6011, %5980
  br label %6013

; <label>:6013                                    ; preds = %6013, %5978
  %6014 = phi i32 [ 1, %5978 ], [ %6025, %6013 ]
  %6015 = phi float [ %6012, %5978 ], [ %6024, %6013 ]
  %6016 = phi float [ %6010, %5978 ], [ %6022, %6013 ]
  %6017 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6014
  %6018 = load float, float* %6017, align 4, !tbaa !106, !noalias !148
  %6019 = fsub fast float %6018, %5904
  %6020 = fcmp fast olt float %6019, 0.000000e+00
  %6021 = select i1 %6020, float 0.000000e+00, float 1.000000e+00
  %6022 = fadd fast float %6021, %6016
  %6023 = fmul fast float %6021, %6019
  %6024 = fadd fast float %6023, %6015
  %6025 = add nuw nsw i32 %6014, 1
  %6026 = icmp eq i32 %6025, 4
  br i1 %6026, label %6027, label %6013, !llvm.loop !153

; <label>:6027                                    ; preds = %6013
  %6028 = add nuw nsw i32 %5981, 1
  %6029 = icmp eq i32 %6028, 8
  br i1 %6029, label %6030, label %5978, !llvm.loop !154

; <label>:6030                                    ; preds = %6027
  %6031 = fdiv fast float 1.000000e+00, %6022
  %6032 = fmul fast float %6031, %6024
  %6033 = fdiv fast float 1.000000e+00, %5904
  %6034 = fmul fast float %6032, %6033
  %6035 = call float @dx.op.unary.f32(i32 7, float %6034)  ; Saturate(value)
  %6036 = call float @dx.op.binary.f32(i32 35, float %6035, float 0.000000e+00)  ; FMax(a,b)
  %6037 = fmul fast float %6022, 3.125000e-02
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6039 = fmul fast float %6038, 2.000000e+00
  %6040 = fadd fast float %6039, -1.000000e+00
  %6041 = fcmp fast ogt float %6040, 0.000000e+00
  %6042 = fcmp fast olt float %6040, 0.000000e+00
  %6043 = zext i1 %6041 to i32
  %6044 = zext i1 %6042 to i32
  %6045 = sub nsw i32 %6043, %6044
  %6046 = sitofp i32 %6045 to float
  %6047 = fmul fast float %6046, %6040
  %6048 = fsub fast float 1.000000e+00, %6047
  %6049 = fmul fast float %6048, %6048
  %6050 = fmul fast float %6049, %6048
  %6051 = fsub fast float %6048, %6050
  %6052 = fmul fast float %6051, %6036
  %6053 = fsub fast float 1.000000e+00, %6050
  %6054 = fsub fast float %6053, %6052
  %6055 = fmul fast float %6046, 5.000000e-01
  %6056 = fmul fast float %6055, %6054
  %6057 = fsub fast float 5.000000e-01, %6056
  br label %6058

; <label>:6058                                    ; preds = %6030, %5906, %5891
  %6059 = phi float [ 1.000000e+00, %5891 ], [ %5972, %5906 ], [ %6057, %6030 ]
  %6060 = fcmp fast ogt float %5046, 0.000000e+00
  br i1 %6060, label %6061, label %6225, !dx.controlflow.hints !156

; <label>:6061                                    ; preds = %6058
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 0
  %6064 = fadd fast float %6063, %4969
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6067 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 0
  %6070 = call float @dx.op.binary.f32(i32 35, float %6064, float 0.000000e+00)  ; FMax(a,b)
  %6071 = fadd fast float %6070, 0x3F10000000000000
  %6072 = fcmp fast oeq float %6069, 0.000000e+00
  br i1 %6072, label %6073, label %6140

; <label>:6073                                    ; preds = %6061
  %6074 = extractvalue %dx.types.CBufRet.f32 %6065, 1
  %6075 = extractvalue %dx.types.CBufRet.f32 %6065, 0
  %6076 = fmul fast float %6075, %4835
  %6077 = fmul fast float %6074, %4839
  %6078 = fadd fast float %6076, 5.000000e-01
  %6079 = call float @dx.op.unary.f32(i32 27, float %6078)  ; Round_ni(value)
  %6080 = fadd fast float %6077, 5.000000e-01
  %6081 = call float @dx.op.unary.f32(i32 27, float %6080)  ; Round_ni(value)
  %6082 = fsub fast float %6078, %6079
  %6083 = fsub fast float %6080, %6081
  %6084 = fadd fast float %6079, -5.000000e-01
  %6085 = fadd fast float %6081, -5.000000e-01
  %6086 = fmul fast float %6082, 2.000000e+00
  %6087 = fsub fast float 3.000000e+00, %6086
  %6088 = fadd fast float %6086, 1.000000e+00
  %6089 = fsub fast float 2.000000e+00, %6082
  %6090 = bitcast float %6087 to i32
  %6091 = sub nsw i32 2129859010, %6090
  %6092 = bitcast i32 %6091 to float
  %6093 = fmul fast float %6092, %6089
  %6094 = fadd fast float %6093, -1.000000e+00
  %6095 = bitcast float %6088 to i32
  %6096 = sub nsw i32 2129859010, %6095
  %6097 = bitcast i32 %6096 to float
  %6098 = fmul fast float %6097, %6082
  %6099 = fadd fast float %6098, 1.000000e+00
  %6100 = fmul fast float %6083, 2.000000e+00
  %6101 = fsub fast float 3.000000e+00, %6100
  %6102 = fadd fast float %6100, 1.000000e+00
  %6103 = fsub fast float 2.000000e+00, %6083
  %6104 = bitcast float %6101 to i32
  %6105 = sub nsw i32 2129859010, %6104
  %6106 = bitcast i32 %6105 to float
  %6107 = fmul fast float %6106, %6103
  %6108 = fadd fast float %6107, -1.000000e+00
  %6109 = bitcast float %6102 to i32
  %6110 = sub nsw i32 2129859010, %6109
  %6111 = bitcast i32 %6110 to float
  %6112 = fmul fast float %6111, %6083
  %6113 = fadd fast float %6112, 1.000000e+00
  %6114 = fadd fast float %6094, %6084
  %6115 = fmul fast float %6114, %6066
  %6116 = fadd fast float %6108, %6085
  %6117 = fmul fast float %6116, %6067
  %6118 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6115, float %6117, float undef, float undef, i32 0, i32 0, i32 undef, float %6071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6119 = extractvalue %dx.types.ResRet.f32 %6118, 0
  %6120 = fmul fast float %6119, %6087
  %6121 = fadd fast float %6099, %6084
  %6122 = fmul fast float %6121, %6066
  %6123 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6122, float %6117, float undef, float undef, i32 0, i32 0, i32 undef, float %6071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6124 = extractvalue %dx.types.ResRet.f32 %6123, 0
  %6125 = fmul fast float %6124, %6088
  %6126 = fadd fast float %6113, %6085
  %6127 = fmul fast float %6126, %6067
  %6128 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6115, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  %6130 = fmul fast float %6129, %6087
  %6131 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6122, float %6127, float undef, float undef, i32 0, i32 0, i32 undef, float %6071)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6132 = extractvalue %dx.types.ResRet.f32 %6131, 0
  %6133 = fmul fast float %6132, %6088
  %6134 = fadd fast float %6133, %6130
  %6135 = fmul fast float %6134, %6102
  %6136 = fadd fast float %6125, %6120
  %6137 = fmul fast float %6136, %6101
  %6138 = fadd fast float %6137, %6135
  %6139 = fmul fast float %6138, 6.250000e-02
  br label %6225

; <label>:6140                                    ; preds = %6061
  %6141 = fmul fast float %1188, 0x401921FB60000000
  %6142 = call float @dx.op.unary.f32(i32 13, float %6141)  ; Sin(value)
  %6143 = call float @dx.op.unary.f32(i32 12, float %6141)  ; Cos(value)
  %6144 = fsub fast float -0.000000e+00, %6142
  br label %6145

; <label>:6145                                    ; preds = %6194, %6140
  %6146 = phi float [ 0.000000e+00, %6140 ], [ %6189, %6194 ]
  %6147 = phi float [ 0.000000e+00, %6140 ], [ %6191, %6194 ]
  %6148 = phi i32 [ 0, %6140 ], [ %6195, %6194 ]
  %6149 = mul i32 %6148, 2
  %6150 = add i32 0, %6149
  %6151 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6150
  %6152 = load float, float* %6151, align 4
  %6153 = mul i32 %6148, 2
  %6154 = add i32 1, %6153
  %6155 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6154
  %6156 = load float, float* %6155, align 4
  %6157 = fmul fast float %6152, %6143
  %6158 = call float @dx.op.tertiary.f32(i32 46, float %6156, float %6144, float %6157)  ; FMad(a,b,c)
  %6159 = fmul fast float %6152, %6142
  %6160 = call float @dx.op.tertiary.f32(i32 46, float %6156, float %6143, float %6159)  ; FMad(a,b,c)
  %6161 = fmul fast float %6158, %6069
  %6162 = fmul fast float %6160, %6069
  %6163 = fadd fast float %6161, %4835
  %6164 = fadd fast float %6162, %4839
  %6165 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %62, float %6163, float %6164, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6166 = extractvalue %dx.types.ResRet.f32 %6165, 0
  %6167 = extractvalue %dx.types.ResRet.f32 %6165, 1
  %6168 = extractvalue %dx.types.ResRet.f32 %6165, 2
  %6169 = extractvalue %dx.types.ResRet.f32 %6165, 3
  %6170 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %6166, float* %6170, align 4
  %6171 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %6167, float* %6171, align 4
  %6172 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %6168, float* %6172, align 4
  %6173 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %6169, float* %6173, align 4
  %6174 = fsub fast float %6166, %6071
  %6175 = fcmp fast olt float %6174, 0.000000e+00
  %6176 = select i1 %6175, float 0.000000e+00, float 1.000000e+00
  %6177 = fadd fast float %6176, %6146
  %6178 = fmul fast float %6176, %6174
  %6179 = fadd fast float %6178, %6147
  br label %6180

; <label>:6180                                    ; preds = %6180, %6145
  %6181 = phi i32 [ 1, %6145 ], [ %6192, %6180 ]
  %6182 = phi float [ %6179, %6145 ], [ %6191, %6180 ]
  %6183 = phi float [ %6177, %6145 ], [ %6189, %6180 ]
  %6184 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %6181
  %6185 = load float, float* %6184, align 4, !tbaa !106, !noalias !148
  %6186 = fsub fast float %6185, %6071
  %6187 = fcmp fast olt float %6186, 0.000000e+00
  %6188 = select i1 %6187, float 0.000000e+00, float 1.000000e+00
  %6189 = fadd fast float %6188, %6183
  %6190 = fmul fast float %6188, %6186
  %6191 = fadd fast float %6190, %6182
  %6192 = add nuw nsw i32 %6181, 1
  %6193 = icmp eq i32 %6192, 4
  br i1 %6193, label %6194, label %6180, !llvm.loop !153

; <label>:6194                                    ; preds = %6180
  %6195 = add nuw nsw i32 %6148, 1
  %6196 = icmp eq i32 %6195, 8
  br i1 %6196, label %6197, label %6145, !llvm.loop !154

; <label>:6197                                    ; preds = %6194
  %6198 = fdiv fast float 1.000000e+00, %6189
  %6199 = fmul fast float %6198, %6191
  %6200 = fdiv fast float 1.000000e+00, %6071
  %6201 = fmul fast float %6199, %6200
  %6202 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6203 = call float @dx.op.binary.f32(i32 35, float %6202, float 0.000000e+00)  ; FMax(a,b)
  %6204 = fmul fast float %6189, 3.125000e-02
  %6205 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6206 = fmul fast float %6205, 2.000000e+00
  %6207 = fadd fast float %6206, -1.000000e+00
  %6208 = fcmp fast ogt float %6207, 0.000000e+00
  %6209 = fcmp fast olt float %6207, 0.000000e+00
  %6210 = zext i1 %6208 to i32
  %6211 = zext i1 %6209 to i32
  %6212 = sub nsw i32 %6210, %6211
  %6213 = sitofp i32 %6212 to float
  %6214 = fmul fast float %6213, %6207
  %6215 = fsub fast float 1.000000e+00, %6214
  %6216 = fmul fast float %6215, %6215
  %6217 = fmul fast float %6216, %6215
  %6218 = fsub fast float %6215, %6217
  %6219 = fmul fast float %6218, %6203
  %6220 = fsub fast float 1.000000e+00, %6217
  %6221 = fsub fast float %6220, %6219
  %6222 = fmul fast float %6213, 5.000000e-01
  %6223 = fmul fast float %6222, %6221
  %6224 = fsub fast float 5.000000e-01, %6223
  br label %6225

; <label>:6225                                    ; preds = %6197, %6073, %6058
  %6226 = phi float [ 1.000000e+00, %6058 ], [ %6139, %6073 ], [ %6224, %6197 ]
  %6227 = fsub fast float %5892, %5725
  %6228 = fmul fast float %6227, %4999
  %6229 = fadd fast float %6228, %5725
  %6230 = fsub fast float %6059, %6229
  %6231 = fmul fast float %6230, %5024
  %6232 = fadd fast float %6231, %6229
  %6233 = fsub fast float %6226, %6232
  %6234 = fmul fast float %6233, %5046
  %6235 = fadd fast float %6234, %6232
  %6236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6237 = extractvalue %dx.types.CBufRet.f32 %6236, 2
  %6238 = fcmp fast ogt float %6237, 0.000000e+00
  br i1 %6238, label %6239, label %6279, !dx.controlflow.hints !157

; <label>:6239                                    ; preds = %6225
  %6240 = fcmp fast ugt float %6237, 0.000000e+00
  br i1 %6240, label %6241, label %6276

; <label>:6241                                    ; preds = %6239
  %6242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6243 = extractvalue %dx.types.CBufRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.CBufRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.CBufRet.f32 %6242, 2
  %6246 = extractvalue %dx.types.CBufRet.f32 %6242, 3
  %6247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6248 = extractvalue %dx.types.CBufRet.f32 %6247, 0
  %6249 = extractvalue %dx.types.CBufRet.f32 %6247, 1
  %6250 = extractvalue %dx.types.CBufRet.f32 %6247, 2
  %6251 = extractvalue %dx.types.CBufRet.f32 %6247, 3
  %6252 = extractvalue %dx.types.CBufRet.f32 %6236, 0
  %6253 = extractvalue %dx.types.CBufRet.f32 %6236, 1
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6258 = fadd fast float %6255, %153
  %6259 = fadd fast float %6256, %154
  %6260 = fadd fast float %6257, %155
  %6261 = fmul fast float %6258, %6243
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %6244, float %6259, float %6261)  ; FMad(a,b,c)
  %6263 = call float @dx.op.tertiary.f32(i32 46, float %6245, float %6260, float %6262)  ; FMad(a,b,c)
  %6264 = fadd fast float %6263, %6246
  %6265 = fmul fast float %6258, %6248
  %6266 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6259, float %6265)  ; FMad(a,b,c)
  %6267 = call float @dx.op.tertiary.f32(i32 46, float %6250, float %6260, float %6266)  ; FMad(a,b,c)
  %6268 = fadd fast float %6267, %6251
  %6269 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %58, float %6264, float %6268, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = fmul fast float %6270, %6253
  %6272 = fadd fast float %6271, %6252
  %6273 = call float @dx.op.unary.f32(i32 7, float %6272)  ; Saturate(value)
  %6274 = fmul fast float %6273, %6237
  %6275 = fsub fast float 1.000000e+00, %6274
  br label %6276

; <label>:6276                                    ; preds = %6241, %6239
  %6277 = phi float [ %6275, %6241 ], [ 1.000000e+00, %6239 ]
  %6278 = fmul fast float %6277, %6235
  br label %6279

; <label>:6279                                    ; preds = %6276, %6225, %4965
  %6280 = phi float [ 1.000000e+00, %4965 ], [ %6278, %6276 ], [ %6235, %6225 ]
  %6281 = call float @dx.op.binary.f32(i32 36, float %6280, float %6280)  ; FMin(a,b)
  %6282 = call float @dx.op.binary.f32(i32 36, float %6280, float %6281)  ; FMin(a,b)
  %6283 = fcmp fast ogt float %6282, 0.000000e+00
  br i1 %6283, label %6284, label %6449, !dx.controlflow.hints !158

; <label>:6284                                    ; preds = %6279
  %6285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6286 = extractvalue %dx.types.CBufRet.f32 %6285, 0
  %6287 = extractvalue %dx.types.CBufRet.f32 %6285, 1
  %6288 = extractvalue %dx.types.CBufRet.f32 %6285, 2
  %6289 = extractvalue %dx.types.CBufRet.f32 %6285, 3
  %6290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6291 = extractvalue %dx.types.CBufRet.f32 %6290, 0
  %6292 = extractvalue %dx.types.CBufRet.f32 %6290, 1
  %6293 = extractvalue %dx.types.CBufRet.f32 %6290, 2
  %6294 = extractvalue %dx.types.CBufRet.f32 %6290, 3
  %6295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6296 = extractvalue %dx.types.CBufRet.f32 %6295, 0
  %6297 = extractvalue %dx.types.CBufRet.f32 %6295, 1
  %6298 = extractvalue %dx.types.CBufRet.f32 %6295, 2
  %6299 = extractvalue %dx.types.CBufRet.f32 %6295, 3
  %6300 = fmul fast float %6286, %153
  %6301 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6287, float %6300)  ; FMad(a,b,c)
  %6302 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6288, float %6301)  ; FMad(a,b,c)
  %6303 = fadd fast float %6302, %6289
  %6304 = fmul fast float %6291, %153
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6292, float %6304)  ; FMad(a,b,c)
  %6306 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6293, float %6305)  ; FMad(a,b,c)
  %6307 = fadd fast float %6306, %6294
  %6308 = fmul fast float %6296, %153
  %6309 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6297, float %6308)  ; FMad(a,b,c)
  %6310 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6298, float %6309)  ; FMad(a,b,c)
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6314 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6315 = fmul fast float %6314, %6303
  %6316 = fmul fast float %6314, %6307
  %6317 = fadd fast float %6315, %6312
  %6318 = fadd fast float %6316, %6313
  %6319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6320 = extractvalue %dx.types.CBufRet.f32 %6319, 0
  %6321 = extractvalue %dx.types.CBufRet.f32 %6319, 1
  %6322 = fsub fast float %6317, %6320
  %6323 = fsub fast float %6318, %6321
  %6324 = fcmp fast olt float %6322, 0.000000e+00
  %6325 = fcmp fast olt float %6323, 0.000000e+00
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.CBufRet.f32 %6326, 2
  %6330 = extractvalue %dx.types.CBufRet.f32 %6326, 3
  %6331 = select i1 %6324, float %6327, float %6329
  %6332 = select i1 %6325, float %6328, float %6330
  %6333 = fmul fast float %6331, %6322
  %6334 = fmul fast float %6332, %6323
  %6335 = call float @dx.op.unary.f32(i32 6, float %6333)  ; FAbs(value)
  %6336 = call float @dx.op.unary.f32(i32 6, float %6334)  ; FAbs(value)
  %6337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6338 = extractvalue %dx.types.CBufRet.f32 %6337, 0
  %6339 = call float @dx.op.binary.f32(i32 35, float %6335, float %6336)  ; FMax(a,b)
  %6340 = fsub fast float %6338, %6339
  %6341 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  %6342 = fcmp fast ogt float %6341, 0.000000e+00
  br i1 %6342, label %6343, label %6384, !dx.controlflow.hints !159

; <label>:6343                                    ; preds = %6284
  %6344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %61, float %6317, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6345 = extractvalue %dx.types.ResRet.f32 %6344, 1
  %6346 = fcmp fast ogt float %6345, 0.000000e+00
  br i1 %6346, label %6347, label %6379

; <label>:6347                                    ; preds = %6343
  %6348 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %61, float %6317, float %6318, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6349 = extractvalue %dx.types.ResRet.f32 %6348, 0
  %6350 = extractvalue %dx.types.ResRet.f32 %6348, 1
  %6351 = extractvalue %dx.types.ResRet.f32 %6348, 2
  %6352 = extractvalue %dx.types.ResRet.f32 %6348, 3
  %6353 = fsub fast float 1.000000e+00, %6299
  %6354 = fsub fast float %6353, %6310
  %6355 = fmul fast float %6354, 0x400921FB60000000
  %6356 = fadd fast float %6355, 0x3FF921FB60000000
  %6357 = call float @dx.op.unary.f32(i32 13, float %6356)  ; Sin(value)
  %6358 = fadd fast float %6357, -1.000000e+00
  %6359 = fmul fast float %6358, 0x3FD45F3060000000
  %6360 = fmul fast float %6354, 0x401921FB60000000
  %6361 = fadd fast float %6360, 0x400921FB60000000
  %6362 = call float @dx.op.unary.f32(i32 13, float %6361)  ; Sin(value)
  %6363 = fadd fast float %6362, 0x3E7777A5C0000000
  %6364 = fmul fast float %6363, 0x3FC45F3060000000
  %6365 = fmul fast float %6354, 0x4022D97C80000000
  %6366 = fadd fast float %6365, 0x4012D97C80000000
  %6367 = call float @dx.op.unary.f32(i32 13, float %6366)  ; Sin(value)
  %6368 = fadd fast float %6367, 1.000000e+00
  %6369 = fmul fast float %6368, 0x3FBB2995E0000000
  %6370 = fmul fast float %6354, 0x402921FB60000000
  %6371 = fadd fast float %6370, 0x401921FB60000000
  %6372 = call float @dx.op.unary.f32(i32 13, float %6371)  ; Sin(value)
  %6373 = fadd fast float %6372, 0xBE8777A5C0000000
  %6374 = fmul fast float %6373, 0x3FB45F3060000000
  %6375 = call float @dx.op.dot4.f32(i32 56, float %6349, float %6350, float %6351, float %6352, float %6359, float %6364, float %6369, float %6374)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6376 = fmul fast float %6375, 0xBFF7154760000000
  %6377 = call float @dx.op.unary.f32(i32 21, float %6376)  ; Exp(value)
  %6378 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  br label %6379

; <label>:6379                                    ; preds = %6347, %6343
  %6380 = phi float [ %6378, %6347 ], [ 1.000000e+00, %6343 ]
  %6381 = fadd fast float %6380, -1.000000e+00
  %6382 = fmul fast float %6381, %6341
  %6383 = fadd fast float %6382, 1.000000e+00
  br label %6384

; <label>:6384                                    ; preds = %6379, %6284
  %6385 = phi float [ %6383, %6379 ], [ 1.000000e+00, %6284 ]
  %6386 = fmul fast float %6385, %6280
  %6387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.f32 %6387, 0
  %6389 = extractvalue %dx.types.CBufRet.f32 %6387, 1
  %6390 = extractvalue %dx.types.CBufRet.f32 %6387, 2
  %6391 = fadd fast float %6388, %153
  %6392 = fadd fast float %6389, %154
  %6393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.f32 %6393, 1
  %6395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6396 = extractvalue %dx.types.CBufRet.f32 %6395, 0
  %6397 = extractvalue %dx.types.CBufRet.f32 %6395, 1
  %6398 = extractvalue %dx.types.CBufRet.f32 %6395, 2
  %6399 = fsub fast float -0.000000e+00, %6391
  %6400 = fsub fast float -0.000000e+00, %6392
  %6401 = fsub fast float %1886, %6390
  %6402 = fadd fast float %6401, %6394
  %6403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6399, float %6400, float %6402)  ; Dot3(ax,ay,az,bx,by,bz)
  %6404 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6396, float %6397, float %6398)  ; Dot3(ax,ay,az,bx,by,bz)
  %6405 = fdiv fast float 1.000000e+00, %6404
  %6406 = fmul fast float %6405, %6403
  %6407 = fmul fast float %6396, %6406
  %6408 = fmul fast float %6397, %6406
  %6409 = fadd fast float %6407, %6391
  %6410 = fadd fast float %6408, %6392
  %6411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6412 = extractvalue %dx.types.CBufRet.f32 %6411, 0
  %6413 = extractvalue %dx.types.CBufRet.f32 %6411, 1
  %6414 = fsub fast float %6409, %6412
  %6415 = fsub fast float %6410, %6413
  %6416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6417 = extractvalue %dx.types.CBufRet.f32 %6416, 2
  %6418 = extractvalue %dx.types.CBufRet.f32 %6416, 3
  %6419 = fmul fast float %6414, %6417
  %6420 = fmul fast float %6415, %6418
  %6421 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6422 = extractvalue %dx.types.CBufRet.i32 %6421, 3
  %6423 = icmp eq i32 %6422, 0
  br i1 %6423, label %6429, label %6424

; <label>:6424                                    ; preds = %6384
  %6425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %60, float %6419, float %6420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6426 = extractvalue %dx.types.ResRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.ResRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.ResRet.f32 %6425, 2
  br label %6434

; <label>:6429                                    ; preds = %6384
  %6430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %6419, float %6420, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = extractvalue %dx.types.ResRet.f32 %6430, 1
  %6433 = extractvalue %dx.types.ResRet.f32 %6430, 2
  br label %6434

; <label>:6434                                    ; preds = %6429, %6424
  %6435 = phi float [ %6426, %6424 ], [ %6431, %6429 ]
  %6436 = phi float [ %6427, %6424 ], [ %6432, %6429 ]
  %6437 = phi float [ %6428, %6424 ], [ %6433, %6429 ]
  %6438 = extractvalue %dx.types.CBufRet.f32 %6393, 2
  %6439 = fmul fast float %6438, %6435
  %6440 = extractvalue %dx.types.CBufRet.f32 %6393, 0
  %6441 = fsub fast float %6406, %6440
  %6442 = fsub fast float %6441, %6439
  %6443 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6442)  ; FMax(a,b)
  %6444 = fmul fast float %6443, %6436
  %6445 = call float @dx.op.binary.f32(i32 36, float %6437, float %6444)  ; FMin(a,b)
  %6446 = fmul fast float %6445, 0xBFF7154760000000
  %6447 = call float @dx.op.unary.f32(i32 21, float %6446)  ; Exp(value)
  %6448 = fmul fast float %6386, %6447
  br label %6449

; <label>:6449                                    ; preds = %6434, %6279
  %6450 = phi float [ %6448, %6434 ], [ %6280, %6279 ]
  %6451 = call float @dx.op.binary.f32(i32 36, float %6450, float %6450)  ; FMin(a,b)
  %6452 = call float @dx.op.binary.f32(i32 36, float %6450, float %6451)  ; FMin(a,b)
  %6453 = fcmp fast ogt float %6452, 0.000000e+00
  br i1 %6453, label %6454, label %6583, !dx.controlflow.hints !160

; <label>:6454                                    ; preds = %6449
  %6455 = fmul fast float %6450, %4814
  %6456 = fmul fast float %6450, %4815
  %6457 = fmul fast float %6450, %4816
  %6458 = fsub fast float %4803, %1741
  %6459 = fsub fast float %4804, %1742
  %6460 = fsub fast float %4805, %1743
  %6461 = call float @dx.op.dot3.f32(i32 55, float %6458, float %6459, float %6460, float %6458, float %6459, float %6460)  ; Dot3(ax,ay,az,bx,by,bz)
  %6462 = call float @dx.op.unary.f32(i32 25, float %6461)  ; Rsqrt(value)
  %6463 = fmul fast float %6462, %6458
  %6464 = fmul fast float %6462, %6459
  %6465 = fmul fast float %6462, %6460
  %6466 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6468 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6469 = fmul fast float %6468, %6468
  %6470 = fmul fast float %6469, %1928
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = bitcast float %6473 to i32
  %6475 = lshr i32 %6474, 8
  %6476 = and i32 %6475, 255
  %6477 = uitofp i32 %6476 to float
  %6478 = fptoui float %6477 to i32
  %6479 = and i32 %6478, 8
  %6480 = icmp ne i32 %6479, 0
  %6481 = select i1 %6480, float %6471, float 1.000000e+00
  %6482 = fmul fast float %6481, %6468
  %6483 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float %6463, float %6464, float %6465)  ; Dot3(ax,ay,az,bx,by,bz)
  %6484 = fmul fast float %6483, %6483
  %6485 = call float @dx.op.unary.f32(i32 6, float %6466)  ; FAbs(value)
  %6486 = fsub fast float 1.000000e+00, %1919
  %6487 = fmul fast float %1892, %1892
  %6488 = fmul fast float %6487, %6486
  %6489 = fadd fast float %6488, %1919
  %6490 = bitcast float %6489 to i32
  %6491 = ashr i32 %6490, 1
  %6492 = add nsw i32 %6491, 532487669
  %6493 = bitcast i32 %6492 to float
  %6494 = fadd fast float %6493, %1892
  %6495 = fmul fast float %1919, %6484
  %6496 = fsub fast float 1.000000e+00, %6484
  %6497 = fadd fast float %6496, %6495
  %6498 = fmul fast float %6485, %6485
  %6499 = fmul fast float %6498, %6486
  %6500 = fadd fast float %6499, %1919
  %6501 = bitcast float %6500 to i32
  %6502 = ashr i32 %6501, 1
  %6503 = add nsw i32 %6502, 532487669
  %6504 = bitcast i32 %6503 to float
  %6505 = fadd fast float %6504, %6485
  %6506 = fmul fast float %6497, %6497
  %6507 = fmul fast float %6506, %6494
  %6508 = fmul fast float %6507, %6505
  %6509 = fdiv fast float 0x3FF0A00000000000, %6508
  %6510 = fmul fast float %6509, %1919
  %6511 = call float @dx.op.unary.f32(i32 6, float %6467)  ; FAbs(value)
  %6512 = fsub fast float 1.000000e+00, %6511
  %6513 = bitcast float %6512 to i32
  %6514 = sitofp i32 %6513 to float
  %6515 = fmul fast float %6514, 5.000000e+00
  %6516 = fadd fast float %6515, 0xC1EFBF8940000000
  %6517 = fptosi float %6516 to i32
  %6518 = bitcast i32 %6517 to float
  %6519 = fmul fast float %6518, %1794
  %6520 = fmul fast float %6518, %1795
  %6521 = fmul fast float %6518, %2993
  %6522 = fadd fast float %6519, %1734
  %6523 = fadd fast float %6520, %1735
  %6524 = fadd fast float %6521, %1890
  %6525 = fmul fast float %6466, 9.843750e-01
  %6526 = fmul fast float %1843, 9.843750e-01
  %6527 = fadd fast float %6525, 7.812500e-03
  %6528 = fadd fast float %6526, 7.812500e-03
  %6529 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %6527, float %6528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 2
  %6531 = extractvalue %dx.types.ResRet.f32 %6529, 3
  %6532 = fmul fast float %6530, %1734
  %6533 = fmul fast float %6530, %1735
  %6534 = fmul fast float %6530, %1890
  %6535 = fadd fast float %6532, %6531
  %6536 = fadd fast float %6533, %6531
  %6537 = fadd fast float %6534, %6531
  %6538 = call float @dx.op.binary.f32(i32 35, float %6536, float %6537)  ; FMax(a,b)
  %6539 = call float @dx.op.binary.f32(i32 35, float %6535, float %6538)  ; FMax(a,b)
  %6540 = fsub fast float 1.000000e+00, %6539
  %6541 = fsub fast float -0.000000e+00, %1713
  %6542 = fsub fast float -0.000000e+00, %1714
  %6543 = fsub fast float -0.000000e+00, %1715
  %6544 = call float @dx.op.dot3.f32(i32 55, float %4803, float %4804, float %4805, float %6541, float %6542, float %6543)  ; Dot3(ax,ay,az,bx,by,bz)
  %6545 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6546 = fmul fast float %6545, 9.843750e-01
  %6547 = fadd fast float %6546, 7.812500e-03
  %6548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %6547, float %6528, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6549 = extractvalue %dx.types.ResRet.f32 %6548, 2
  %6550 = extractvalue %dx.types.ResRet.f32 %6548, 3
  %6551 = fmul fast float %6549, %1734
  %6552 = fmul fast float %6549, %1735
  %6553 = fmul fast float %6549, %1890
  %6554 = fadd fast float %6551, %6550
  %6555 = fadd fast float %6552, %6550
  %6556 = fadd fast float %6553, %6550
  %6557 = call float @dx.op.binary.f32(i32 35, float %6555, float %6556)  ; FMax(a,b)
  %6558 = call float @dx.op.binary.f32(i32 35, float %6554, float %6557)  ; FMax(a,b)
  %6559 = fsub fast float 1.000000e+00, %6558
  %6560 = fmul fast float %6559, %6545
  %6561 = fmul fast float %6560, %1846
  %6562 = fmul fast float %6540, %6482
  %6563 = fmul fast float %6482, %6510
  %6564 = fmul fast float %6563, %6522
  %6565 = fmul fast float %6563, %6523
  %6566 = fmul fast float %6563, %6524
  %6567 = fadd fast float %6561, %6562
  %6568 = fmul fast float %6567, %6455
  %6569 = fmul fast float %6567, %6456
  %6570 = fmul fast float %6567, %6457
  %6571 = fadd fast float %6568, %4790
  %6572 = fadd fast float %6569, %4791
  %6573 = fadd fast float %6570, %4792
  %6574 = fmul fast float %6564, %6455
  %6575 = fmul fast float %6565, %6456
  %6576 = fmul fast float %6566, %6457
  %6577 = fadd fast float %6574, %4796
  %6578 = fadd fast float %6575, %4797
  %6579 = fadd fast float %6576, %4798
  %6580 = fadd fast float %6574, %4793
  %6581 = fadd fast float %6575, %4794
  %6582 = fadd fast float %6576, %4795
  br label %6583

; <label>:6583                                    ; preds = %6454, %6449, %4783
  %6584 = phi i32 [ %4966, %6454 ], [ %4785, %4783 ], [ %4966, %6449 ]
  %6585 = phi i32 [ 1, %6454 ], [ 0, %4783 ], [ 0, %6449 ]
  %6586 = phi float [ %6574, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6587 = phi float [ %6575, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6588 = phi float [ %6576, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6589 = phi float [ %6568, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6590 = phi float [ %6569, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6591 = phi float [ %6570, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6592 = phi float [ %6580, %6454 ], [ %4793, %4783 ], [ %4793, %6449 ]
  %6593 = phi float [ %6581, %6454 ], [ %4794, %4783 ], [ %4794, %6449 ]
  %6594 = phi float [ %6582, %6454 ], [ %4795, %4783 ], [ %4795, %6449 ]
  %6595 = phi float [ %6571, %6454 ], [ %4790, %4783 ], [ %4790, %6449 ]
  %6596 = phi float [ %6572, %6454 ], [ %4791, %4783 ], [ %4791, %6449 ]
  %6597 = phi float [ %6573, %6454 ], [ %4792, %4783 ], [ %4792, %6449 ]
  %6598 = phi float [ %6450, %6454 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6449 ]
  %6599 = phi float [ %6577, %6454 ], [ %4796, %4783 ], [ %4796, %6449 ]
  %6600 = phi float [ %6578, %6454 ], [ %4797, %4783 ], [ %4797, %6449 ]
  %6601 = phi float [ %6579, %6454 ], [ %4798, %4783 ], [ %4798, %6449 ]
  %6602 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6603 = extractvalue %dx.types.CBufRet.i32 %6602, 0
  %6604 = icmp eq i32 %6603, 0
  br i1 %6604, label %7487, label %6605

; <label>:6605                                    ; preds = %6583
  %6606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6607 = extractvalue %dx.types.CBufRet.f32 %6606, 2
  %6608 = extractvalue %dx.types.CBufRet.f32 %6606, 3
  %6609 = fmul fast float %6607, %98
  %6610 = fmul fast float %6608, %99
  %6611 = fptoui float %6609 to i32
  %6612 = fptoui float %6610 to i32
  %6613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6614 = extractvalue %dx.types.CBufRet.f32 %6613, 0
  %6615 = extractvalue %dx.types.CBufRet.f32 %6613, 2
  %6616 = extractvalue %dx.types.CBufRet.f32 %6613, 3
  %6617 = fadd fast float %87, -4.000000e+00
  %6618 = call float @dx.op.binary.f32(i32 35, float %6617, float 0.000000e+00)  ; FMax(a,b)
  %6619 = fadd fast float %6618, %6614
  %6620 = fmul fast float %6619, %6615
  %6621 = call float @dx.op.unary.f32(i32 23, float %6620)  ; Log(value)
  %6622 = fmul fast float %6621, %6616
  %6623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6624 = extractvalue %dx.types.CBufRet.f32 %6623, 2
  %6625 = fmul fast float %6622, %6624
  %6626 = call float @dx.op.unary.f32(i32 7, float %6625)  ; Saturate(value)
  %6627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.i32 %6627, 1
  %6629 = add i32 %6628, -1
  %6630 = uitofp i32 %6628 to float
  %6631 = fmul fast float %6630, %6626
  %6632 = fptoui float %6631 to i32
  %6633 = call i32 @dx.op.binary.i32(i32 40, i32 %6632, i32 %6629)  ; UMin(a,b)
  %6634 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6635 = extractvalue %dx.types.CBufRet.i32 %6634, 2
  %6636 = extractvalue %dx.types.CBufRet.i32 %6634, 3
  %6637 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6612, i32 %6635, i32 %6611)  ; UMad(a,b,c)
  %6638 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6633, i32 %6636, i32 %6637)  ; UMad(a,b,c)
  %6639 = add nsw i32 %6603, -1
  %6640 = call i32 @dx.op.binary.i32(i32 37, i32 %6639, i32 0)  ; IMax(a,b)
  %6641 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %6642 = fptoui float %6641 to i32
  %6643 = lshr i32 %6642, 5
  %6644 = call i32 @dx.op.binary.i32(i32 40, i32 %6643, i32 8191)  ; UMin(a,b)
  %6645 = shl i32 %6644, 2
  %6646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6645, i32 undef)  ; BufferLoad(srv,index,wot)
  %6647 = extractvalue %dx.types.ResRet.i32 %6646, 0
  %6648 = lshr i32 %6647, 16
  %6649 = and i32 %6647, 65535
  %6650 = lshr i32 %6647, 21
  %6651 = lshr i32 %6649, 5
  %6652 = call i32 @dx.op.binary.i32(i32 40, i32 %6651, i32 %6640)  ; UMin(a,b)
  %6653 = icmp ugt i32 %6650, %6652
  br i1 %6653, label %7420, label %6654

; <label>:6654                                    ; preds = %6605
  br label %6655

; <label>:6655                                    ; preds = %7389, %6654
  %6656 = phi i32 [ %7390, %7389 ], [ %6584, %6654 ]
  %6657 = phi i32 [ %7391, %7389 ], [ 0, %6654 ]
  %6658 = phi i32 [ %7392, %7389 ], [ 0, %6654 ]
  %6659 = phi i32 [ %7393, %7389 ], [ 0, %6654 ]
  %6660 = phi i32 [ %7394, %7389 ], [ 0, %6654 ]
  %6661 = phi i32 [ %7395, %7389 ], [ 0, %6654 ]
  %6662 = phi i32 [ %7396, %7389 ], [ 0, %6654 ]
  %6663 = phi i32 [ %7397, %7389 ], [ 0, %6654 ]
  %6664 = phi i32 [ %7398, %7389 ], [ 0, %6654 ]
  %6665 = phi i32 [ %7417, %7389 ], [ %6650, %6654 ]
  %6666 = phi float [ %7399, %7389 ], [ %6586, %6654 ]
  %6667 = phi float [ %7400, %7389 ], [ %6587, %6654 ]
  %6668 = phi float [ %7401, %7389 ], [ %6588, %6654 ]
  %6669 = phi float [ %7402, %7389 ], [ %6589, %6654 ]
  %6670 = phi float [ %7403, %7389 ], [ %6590, %6654 ]
  %6671 = phi float [ %7404, %7389 ], [ %6591, %6654 ]
  %6672 = phi float [ %7405, %7389 ], [ %6592, %6654 ]
  %6673 = phi float [ %7406, %7389 ], [ %6593, %6654 ]
  %6674 = phi float [ %7407, %7389 ], [ %6594, %6654 ]
  %6675 = phi float [ %7408, %7389 ], [ %6595, %6654 ]
  %6676 = phi float [ %7409, %7389 ], [ %6596, %6654 ]
  %6677 = phi float [ %7410, %7389 ], [ %6597, %6654 ]
  %6678 = phi float [ %7411, %7389 ], [ %6599, %6654 ]
  %6679 = phi float [ %7412, %7389 ], [ %6600, %6654 ]
  %6680 = phi float [ %7413, %7389 ], [ %6601, %6654 ]
  %6681 = phi float [ %7414, %7389 ], [ %6595, %6654 ]
  %6682 = phi float [ %7415, %7389 ], [ %6596, %6654 ]
  %6683 = phi float [ %7416, %7389 ], [ %6597, %6654 ]
  %6684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6685 = extractvalue %dx.types.CBufRet.i32 %6684, 0
  %6686 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6638, i32 %6685, i32 %6665)  ; UMad(a,b,c)
  %6687 = shl i32 %6686, 2
  %6688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6687, i32 undef)  ; BufferLoad(srv,index,wot)
  %6689 = extractvalue %dx.types.ResRet.i32 %6688, 0
  %6690 = shl i32 %6665, 5
  %6691 = sub nsw i32 %6648, %6690
  %6692 = call i32 @dx.op.binary.i32(i32 37, i32 %6691, i32 0)  ; IMax(a,b)
  %6693 = call i32 @dx.op.binary.i32(i32 38, i32 %6692, i32 31)  ; IMin(a,b)
  %6694 = sub nsw i32 1, %6648
  %6695 = add nsw i32 %6694, %6649
  %6696 = call i32 @dx.op.binary.i32(i32 37, i32 %6695, i32 0)  ; IMax(a,b)
  %6697 = call i32 @dx.op.binary.i32(i32 38, i32 %6696, i32 32)  ; IMin(a,b)
  %6698 = and i32 %6697, 31
  %6699 = shl i32 -1, %6698
  %6700 = xor i32 %6699, -1
  %6701 = and i32 %6693, 31
  %6702 = shl i32 %6700, %6701
  %6703 = icmp eq i32 %6697, 32
  %6704 = select i1 %6703, i32 -1, i32 %6702
  %6705 = and i32 %6704, %6689
  %6706 = icmp eq i32 %6705, 0
  br i1 %6706, label %7389, label %6707

; <label>:6707                                    ; preds = %6655
  br label %6708

; <label>:6708                                    ; preds = %6902, %6707
  %6709 = phi i32 [ %6903, %6902 ], [ %6656, %6707 ]
  %6710 = phi i32 [ %6892, %6902 ], [ %6657, %6707 ]
  %6711 = phi i32 [ %6894, %6902 ], [ %6658, %6707 ]
  %6712 = phi i32 [ %6896, %6902 ], [ %6659, %6707 ]
  %6713 = phi i32 [ %6898, %6902 ], [ %6660, %6707 ]
  %6714 = phi i32 [ %6904, %6902 ], [ %6661, %6707 ]
  %6715 = phi i32 [ %6905, %6902 ], [ %6662, %6707 ]
  %6716 = phi i32 [ %6906, %6902 ], [ %6663, %6707 ]
  %6717 = phi i32 [ %6907, %6902 ], [ %6664, %6707 ]
  %6718 = phi i32 [ %6741, %6902 ], [ %6705, %6707 ]
  %6719 = phi float [ %6908, %6902 ], [ %6666, %6707 ]
  %6720 = phi float [ %6909, %6902 ], [ %6667, %6707 ]
  %6721 = phi float [ %6910, %6902 ], [ %6668, %6707 ]
  %6722 = phi float [ %6911, %6902 ], [ %6669, %6707 ]
  %6723 = phi float [ %6912, %6902 ], [ %6670, %6707 ]
  %6724 = phi float [ %6913, %6902 ], [ %6671, %6707 ]
  %6725 = phi float [ %6914, %6902 ], [ %6672, %6707 ]
  %6726 = phi float [ %6915, %6902 ], [ %6673, %6707 ]
  %6727 = phi float [ %6916, %6902 ], [ %6674, %6707 ]
  %6728 = phi float [ %6917, %6902 ], [ %6675, %6707 ]
  %6729 = phi float [ %6918, %6902 ], [ %6676, %6707 ]
  %6730 = phi float [ %6919, %6902 ], [ %6677, %6707 ]
  %6731 = phi float [ %6920, %6902 ], [ %6678, %6707 ]
  %6732 = phi float [ %6921, %6902 ], [ %6679, %6707 ]
  %6733 = phi float [ %6922, %6902 ], [ %6680, %6707 ]
  %6734 = phi float [ %6923, %6902 ], [ %6681, %6707 ]
  %6735 = phi float [ %6924, %6902 ], [ %6682, %6707 ]
  %6736 = phi float [ %6925, %6902 ], [ %6683, %6707 ]
  %6737 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6718)  ; FirstbitLo(value)
  %6738 = add i32 %6737, %6690
  %6739 = and i32 %6737, 31
  %6740 = shl i32 1, %6739
  %6741 = xor i32 %6740, %6718
  %6742 = mul i32 %6738, 112
  %6743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6742, i32 undef)  ; BufferLoad(srv,index,wot)
  %6744 = extractvalue %dx.types.ResRet.f32 %6743, 0
  %6745 = extractvalue %dx.types.ResRet.f32 %6743, 1
  %6746 = extractvalue %dx.types.ResRet.f32 %6743, 2
  %6747 = or i32 %6742, 12
  %6748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6747, i32 undef)  ; BufferLoad(srv,index,wot)
  %6749 = extractvalue %dx.types.ResRet.f32 %6748, 0
  %6750 = add i32 %6742, 16
  %6751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6750, i32 undef)  ; BufferLoad(srv,index,wot)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 0
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 1
  %6754 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6755 = add i32 %6742, 28
  %6756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6755, i32 undef)  ; BufferLoad(srv,index,wot)
  %6757 = extractvalue %dx.types.ResRet.i32 %6756, 0
  %6758 = add i32 %6742, 32
  %6759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6758, i32 undef)  ; BufferLoad(srv,index,wot)
  %6760 = extractvalue %dx.types.ResRet.f32 %6759, 0
  %6761 = extractvalue %dx.types.ResRet.f32 %6759, 1
  %6762 = extractvalue %dx.types.ResRet.f32 %6759, 2
  %6763 = add i32 %6742, 44
  %6764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6763, i32 undef)  ; BufferLoad(srv,index,wot)
  %6765 = extractvalue %dx.types.ResRet.f32 %6764, 0
  %6766 = add i32 %6742, 48
  %6767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6766, i32 undef)  ; BufferLoad(srv,index,wot)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.ResRet.f32 %6767, 1
  %6770 = extractvalue %dx.types.ResRet.f32 %6767, 2
  %6771 = extractvalue %dx.types.ResRet.f32 %6767, 3
  %6772 = add i32 %6742, 64
  %6773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6772, i32 undef)  ; BufferLoad(srv,index,wot)
  %6774 = extractvalue %dx.types.ResRet.f32 %6773, 0
  %6775 = extractvalue %dx.types.ResRet.f32 %6773, 1
  %6776 = extractvalue %dx.types.ResRet.f32 %6773, 2
  %6777 = extractvalue %dx.types.ResRet.f32 %6773, 3
  %6778 = add i32 %6742, 80
  %6779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6778, i32 undef)  ; BufferLoad(srv,index,wot)
  %6780 = extractvalue %dx.types.ResRet.f32 %6779, 1
  %6781 = extractvalue %dx.types.ResRet.f32 %6779, 2
  %6782 = add i32 %6742, 92
  %6783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6782, i32 undef)  ; BufferLoad(srv,index,wot)
  %6784 = extractvalue %dx.types.ResRet.i32 %6783, 0
  %6785 = call float @dx.op.dot3.f32(i32 55, float %6744, float %6745, float %6746, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6786 = select i1 %1885, float %6780, float %6744
  %6787 = select i1 %1885, float %6785, float %6745
  %6788 = select i1 %1885, float %6781, float %6746
  %6789 = and i32 %6784, 65535
  %6790 = uitofp i32 %6789 to float
  %6791 = lshr i32 %6784, 16
  %6792 = uitofp i32 %6791 to float
  %6793 = and i32 %6757, 65535
  %6794 = lshr i32 %6757, 24
  %6795 = and i32 %6794, 3
  %6796 = and i32 %6757, 536870912
  %6797 = icmp ne i32 %6796, 0
  %6798 = icmp eq i32 %6795, 2
  %6799 = call float @dx.op.dot3.f32(i32 55, float %6760, float %6761, float %6762, float %6760, float %6761, float %6762)  ; Dot3(ax,ay,az,bx,by,bz)
  %6800 = fsub fast float %153, %6768
  %6801 = fsub fast float %154, %6769
  %6802 = fsub fast float %155, %6770
  %6803 = call float @dx.op.dot3.f32(i32 55, float %6800, float %6801, float %6802, float %6760, float %6761, float %6762)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = fdiv fast float %6803, %6799
  %6805 = call float @dx.op.binary.f32(i32 35, float %6804, float -1.000000e+00)  ; FMax(a,b)
  %6806 = call float @dx.op.binary.f32(i32 36, float %6805, float 1.000000e+00)  ; FMin(a,b)
  %6807 = fmul fast float %6806, %6760
  %6808 = fmul fast float %6806, %6761
  %6809 = fmul fast float %6806, %6762
  %6810 = fadd fast float %6807, %6768
  %6811 = fadd fast float %6808, %6769
  %6812 = fadd fast float %6809, %6770
  %6813 = fsub fast float %6810, %153
  %6814 = fsub fast float %6811, %154
  %6815 = fsub fast float %6812, %155
  %6816 = call float @dx.op.dot3.f32(i32 55, float %6813, float %6814, float %6815, float %6813, float %6814, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %6817 = call float @dx.op.unary.f32(i32 24, float %6816)  ; Sqrt(value)
  %6818 = fdiv fast float 1.000000e+00, %6817
  %6819 = fmul fast float %6813, %6818
  %6820 = fmul fast float %6814, %6818
  %6821 = fmul fast float %6815, %6818
  %6822 = fadd fast float %6817, %6749
  %6823 = fdiv fast float 1.000000e+00, %6822
  %6824 = fmul float %6765, %6823
  %6825 = fmul float %6824, %6824
  %6826 = call float @dx.op.unary.f32(i32 7, float %6825)  ; Saturate(value)
  br i1 %6798, label %6827, label %6851

; <label>:6827                                    ; preds = %6708
  %6828 = fmul fast float %6776, %6752
  %6829 = fmul fast float %6776, %6753
  %6830 = fmul fast float %6776, %6754
  %6831 = fsub fast float %6828, %153
  %6832 = fadd fast float %6831, %6810
  %6833 = fsub fast float %6829, %154
  %6834 = fadd fast float %6833, %6811
  %6835 = fsub fast float %6830, %155
  %6836 = fadd fast float %6835, %6812
  %6837 = call float @dx.op.dot3.f32(i32 55, float %6832, float %6834, float %6836, float %6832, float %6834, float %6836)  ; Dot3(ax,ay,az,bx,by,bz)
  %6838 = call float @dx.op.unary.f32(i32 25, float %6837)  ; Rsqrt(value)
  %6839 = fmul fast float %6838, %6832
  %6840 = fmul fast float %6838, %6834
  %6841 = fmul fast float %6838, %6836
  %6842 = fsub fast float %153, %6810
  %6843 = fsub fast float %154, %6811
  %6844 = fsub fast float %155, %6812
  %6845 = fsub fast float -0.000000e+00, %6842
  %6846 = fsub fast float -0.000000e+00, %6843
  %6847 = fsub fast float -0.000000e+00, %6844
  %6848 = call float @dx.op.dot3.f32(i32 55, float %6845, float %6846, float %6847, float %6752, float %6753, float %6754)  ; Dot3(ax,ay,az,bx,by,bz)
  %6849 = fcmp fast ogt float %6848, 0.000000e+00
  %6850 = uitofp i1 %6849 to float
  br label %6851

; <label>:6851                                    ; preds = %6827, %6708
  %6852 = phi float [ %6850, %6827 ], [ 1.000000e+00, %6708 ]
  %6853 = phi float [ %6839, %6827 ], [ %6819, %6708 ]
  %6854 = phi float [ %6840, %6827 ], [ %6820, %6708 ]
  %6855 = phi float [ %6841, %6827 ], [ %6821, %6708 ]
  %6856 = call float @dx.op.dot3.f32(i32 55, float %6752, float %6753, float %6754, float %6853, float %6854, float %6855)  ; Dot3(ax,ay,az,bx,by,bz)
  %6857 = fmul fast float %6856, %6856
  %6858 = call float @dx.op.unary.f32(i32 7, float %6857)  ; Saturate(value)
  %6859 = fsub fast float 1.000000e+00, %6858
  %6860 = fmul fast float %6859, 5.000000e-01
  %6861 = fcmp fast ogt float %6856, 0.000000e+00
  %6862 = fsub fast float 1.000000e+00, %6860
  %6863 = select i1 %6861, float %6860, float %6862
  %6864 = fmul fast float %6863, %6792
  %6865 = fadd fast float %6864, %6790
  %6866 = fmul fast float %6865, 0x3EF0001000000000
  %6867 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %61, float %6866, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6868 = extractvalue %dx.types.ResRet.f32 %6867, 0
  %6869 = fmul fast float %6856, %6774
  %6870 = fadd fast float %6869, %6775
  %6871 = call float @dx.op.unary.f32(i32 7, float %6870)  ; Saturate(value)
  %6872 = select i1 %6798, float 1.000000e+00, float %6871
  %6873 = select i1 %6798, float %6871, float 1.000000e+00
  %6874 = fmul fast float %6817, %6771
  %6875 = fsub fast float 1.000000e+00, %6874
  %6876 = fmul fast float %6875, %6777
  %6877 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  %6878 = fmul fast float %6877, %6873
  %6879 = fmul fast float %6878, 2.000000e+00
  %6880 = fsub fast float 3.000000e+00, %6879
  %6881 = fmul fast float %6868, %6852
  %6882 = fmul fast float %6878, %6878
  %6883 = fmul fast float %6882, %6881
  %6884 = fmul fast float %6883, %6880
  %6885 = xor i1 %6797, true
  %6886 = and i1 %6798, %6885
  %6887 = icmp ne i32 %6795, 2
  %6888 = and i1 %6887, %6885
  %6889 = and i1 %6797, %6798
  %6890 = and i1 %6797, %6887
  %6891 = zext i1 %6886 to i32
  %6892 = add i32 %6891, %6710
  %6893 = zext i1 %6888 to i32
  %6894 = add i32 %6893, %6711
  %6895 = zext i1 %6889 to i32
  %6896 = add i32 %6895, %6712
  %6897 = zext i1 %6890 to i32
  %6898 = add i32 %6897, %6713
  %6899 = call float @dx.op.binary.f32(i32 36, float %6884, float %6884)  ; FMin(a,b)
  %6900 = call float @dx.op.binary.f32(i32 36, float %6884, float %6899)  ; FMin(a,b)
  %6901 = fcmp fast ogt float %6900, 0.000000e+00
  br i1 %6901, label %6927, label %6902, !dx.controlflow.hints !161

; <label>:6902                                    ; preds = %7373, %6851
  %6903 = phi i32 [ %7383, %7373 ], [ %6709, %6851 ]
  %6904 = phi i32 [ %7384, %7373 ], [ %6714, %6851 ]
  %6905 = phi i32 [ %7385, %7373 ], [ %6715, %6851 ]
  %6906 = phi i32 [ %7386, %7373 ], [ %6716, %6851 ]
  %6907 = phi i32 [ %7387, %7373 ], [ %6717, %6851 ]
  %6908 = phi float [ %7344, %7373 ], [ %6719, %6851 ]
  %6909 = phi float [ %7345, %7373 ], [ %6720, %6851 ]
  %6910 = phi float [ %7346, %7373 ], [ %6721, %6851 ]
  %6911 = phi float [ %7347, %7373 ], [ %6722, %6851 ]
  %6912 = phi float [ %7348, %7373 ], [ %6723, %6851 ]
  %6913 = phi float [ %7349, %7373 ], [ %6724, %6851 ]
  %6914 = phi float [ %7350, %7373 ], [ %6725, %6851 ]
  %6915 = phi float [ %7351, %7373 ], [ %6726, %6851 ]
  %6916 = phi float [ %7352, %7373 ], [ %6727, %6851 ]
  %6917 = phi float [ %7353, %7373 ], [ %6728, %6851 ]
  %6918 = phi float [ %7354, %7373 ], [ %6729, %6851 ]
  %6919 = phi float [ %7355, %7373 ], [ %6730, %6851 ]
  %6920 = phi float [ %7356, %7373 ], [ %6731, %6851 ]
  %6921 = phi float [ %7357, %7373 ], [ %6732, %6851 ]
  %6922 = phi float [ %7358, %7373 ], [ %6733, %6851 ]
  %6923 = phi float [ %7359, %7373 ], [ %6734, %6851 ]
  %6924 = phi float [ %7360, %7373 ], [ %6735, %6851 ]
  %6925 = phi float [ %7361, %7373 ], [ %6736, %6851 ]
  %6926 = icmp eq i32 %6718, %6740
  br i1 %6926, label %7388, label %6708

; <label>:6927                                    ; preds = %6851
  %6928 = icmp eq i32 %6793, 255
  br i1 %6928, label %7066, label %6929, !dx.controlflow.hints !162

; <label>:6929                                    ; preds = %6927
  %6930 = mul nuw nsw i32 %6793, 176
  %6931 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6930, i32 undef)  ; BufferLoad(srv,index,wot)
  %6932 = extractvalue %dx.types.ResRet.f32 %6931, 0
  %6933 = extractvalue %dx.types.ResRet.f32 %6931, 1
  %6934 = extractvalue %dx.types.ResRet.f32 %6931, 2
  %6935 = extractvalue %dx.types.ResRet.f32 %6931, 3
  %6936 = add nuw nsw i32 %6930, 16
  %6937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6936, i32 undef)  ; BufferLoad(srv,index,wot)
  %6938 = extractvalue %dx.types.ResRet.f32 %6937, 0
  %6939 = extractvalue %dx.types.ResRet.f32 %6937, 1
  %6940 = add nuw nsw i32 %6930, 32
  %6941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6940, i32 undef)  ; BufferLoad(srv,index,wot)
  %6942 = extractvalue %dx.types.ResRet.f32 %6941, 0
  %6943 = extractvalue %dx.types.ResRet.f32 %6941, 1
  %6944 = add nuw nsw i32 %6930, 48
  %6945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6944, i32 undef)  ; BufferLoad(srv,index,wot)
  %6946 = extractvalue %dx.types.ResRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.ResRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.ResRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.ResRet.f32 %6945, 3
  %6950 = add nuw nsw i32 %6930, 64
  %6951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6950, i32 undef)  ; BufferLoad(srv,index,wot)
  %6952 = extractvalue %dx.types.ResRet.f32 %6951, 0
  %6953 = extractvalue %dx.types.ResRet.f32 %6951, 1
  %6954 = extractvalue %dx.types.ResRet.f32 %6951, 2
  %6955 = extractvalue %dx.types.ResRet.f32 %6951, 3
  %6956 = add nuw nsw i32 %6930, 80
  %6957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6956, i32 undef)  ; BufferLoad(srv,index,wot)
  %6958 = extractvalue %dx.types.ResRet.f32 %6957, 0
  %6959 = extractvalue %dx.types.ResRet.f32 %6957, 1
  %6960 = extractvalue %dx.types.ResRet.f32 %6957, 2
  %6961 = extractvalue %dx.types.ResRet.f32 %6957, 3
  %6962 = add nuw nsw i32 %6930, 96
  %6963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6962, i32 undef)  ; BufferLoad(srv,index,wot)
  %6964 = extractvalue %dx.types.ResRet.f32 %6963, 0
  %6965 = extractvalue %dx.types.ResRet.f32 %6963, 1
  %6966 = extractvalue %dx.types.ResRet.f32 %6963, 2
  %6967 = extractvalue %dx.types.ResRet.f32 %6963, 3
  %6968 = bitcast float %6939 to i32
  %6969 = fmul fast float %6946, %153
  %6970 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6952, float %6969)  ; FMad(a,b,c)
  %6971 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6958, float %6970)  ; FMad(a,b,c)
  %6972 = fadd fast float %6971, %6964
  %6973 = fmul fast float %6947, %153
  %6974 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6953, float %6973)  ; FMad(a,b,c)
  %6975 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6959, float %6974)  ; FMad(a,b,c)
  %6976 = fadd fast float %6975, %6965
  %6977 = fmul fast float %6948, %153
  %6978 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6954, float %6977)  ; FMad(a,b,c)
  %6979 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6960, float %6978)  ; FMad(a,b,c)
  %6980 = fadd fast float %6979, %6966
  %6981 = fmul fast float %6949, %153
  %6982 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6955, float %6981)  ; FMad(a,b,c)
  %6983 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6961, float %6982)  ; FMad(a,b,c)
  %6984 = fadd fast float %6983, %6967
  %6985 = fdiv fast float %6972, %6984
  %6986 = fdiv fast float %6976, %6984
  %6987 = fdiv fast float %6980, %6984
  %6988 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %6987)  ; FMax(a,b)
  %6989 = fmul fast float %1188, 0x401921FB60000000
  %6990 = call float @dx.op.unary.f32(i32 13, float %6989)  ; Sin(value)
  %6991 = call float @dx.op.unary.f32(i32 12, float %6989)  ; Cos(value)
  %6992 = fmul fast float %6991, %6943
  %6993 = call float @dx.op.tertiary.f32(i32 46, float %6990, float %6943, float 0.000000e+00)  ; FMad(a,b,c)
  %6994 = fmul fast float %6943, %6990
  %6995 = fsub fast float -0.000000e+00, %6994
  %6996 = call float @dx.op.tertiary.f32(i32 46, float %6991, float %6943, float 0.000000e+00)  ; FMad(a,b,c)
  br label %6997

; <label>:6997                                    ; preds = %6997, %6929
  %6998 = phi float [ 0.000000e+00, %6929 ], [ %7030, %6997 ]
  %6999 = phi float [ 0.000000e+00, %6929 ], [ %7032, %6997 ]
  %7000 = phi i32 [ 0, %6929 ], [ %7033, %6997 ]
  %7001 = mul i32 %7000, 2
  %7002 = add i32 0, %7001
  %7003 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7002
  %7004 = load float, float* %7003, align 4
  %7005 = mul i32 %7000, 2
  %7006 = add i32 1, %7005
  %7007 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7006
  %7008 = load float, float* %7007, align 4
  %7009 = fmul fast float %6992, %7004
  %7010 = call float @dx.op.tertiary.f32(i32 46, float %7008, float %6995, float %7009)  ; FMad(a,b,c)
  %7011 = fmul fast float %7004, %6993
  %7012 = call float @dx.op.tertiary.f32(i32 46, float %7008, float %6996, float %7011)  ; FMad(a,b,c)
  %7013 = fadd fast float %7010, %6985
  %7014 = fadd fast float %7012, %6986
  %7015 = fmul fast float %7013, %6938
  %7016 = fmul fast float %7014, %6938
  %7017 = call float @dx.op.binary.f32(i32 35, float %7015, float %6934)  ; FMax(a,b)
  %7018 = call float @dx.op.binary.f32(i32 35, float %7016, float %6934)  ; FMax(a,b)
  %7019 = call float @dx.op.binary.f32(i32 36, float %7017, float %6935)  ; FMin(a,b)
  %7020 = call float @dx.op.binary.f32(i32 36, float %7018, float %6935)  ; FMin(a,b)
  %7021 = fadd fast float %7019, %6932
  %7022 = fadd fast float %7020, %6933
  %7023 = uitofp i32 %6968 to float
  %7024 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %62, float %7021, float %7022, float %7023, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7025 = extractvalue %dx.types.ResRet.f32 %7024, 0
  %7026 = fsub fast float %7025, %6988
  %7027 = fsub fast float %7026, %6942
  %7028 = fcmp fast ogt float %7027, 0.000000e+00
  %7029 = select i1 %7028, float 1.000000e+00, float 0.000000e+00
  %7030 = fadd fast float %7029, %6998
  %7031 = select i1 %7028, float %7027, float 0.000000e+00
  %7032 = fadd fast float %7031, %6999
  %7033 = add nuw nsw i32 %7000, 1
  %7034 = icmp eq i32 %7033, 8
  br i1 %7034, label %7035, label %6997

; <label>:7035                                    ; preds = %6997
  %7036 = fdiv fast float 1.000000e+00, %7030
  %7037 = fmul fast float %7036, %7032
  %7038 = fdiv fast float 1.000000e+00, %6988
  %7039 = fmul fast float %7037, %7038
  %7040 = call float @dx.op.unary.f32(i32 7, float %7039)  ; Saturate(value)
  %7041 = call float @dx.op.binary.f32(i32 35, float %7040, float 0.000000e+00)  ; FMax(a,b)
  %7042 = fmul fast float %7030, 1.250000e-01
  %7043 = call float @dx.op.unary.f32(i32 7, float %7042)  ; Saturate(value)
  %7044 = fmul fast float %7043, 2.000000e+00
  %7045 = fadd fast float %7044, -1.000000e+00
  %7046 = fcmp fast ogt float %7045, 0.000000e+00
  %7047 = fcmp fast olt float %7045, 0.000000e+00
  %7048 = zext i1 %7046 to i32
  %7049 = zext i1 %7047 to i32
  %7050 = sub nsw i32 %7048, %7049
  %7051 = sitofp i32 %7050 to float
  %7052 = fmul fast float %7051, %7045
  %7053 = fsub fast float 1.000000e+00, %7052
  %7054 = fmul fast float %7053, %7053
  %7055 = fmul fast float %7054, %7053
  %7056 = fsub fast float %7053, %7055
  %7057 = fmul fast float %7056, %7041
  %7058 = fsub fast float 1.000000e+00, %7055
  %7059 = fsub fast float %7058, %7057
  %7060 = fmul fast float %7051, 5.000000e-01
  %7061 = fmul fast float %7060, %7059
  %7062 = fsub fast float -5.000000e-01, %7061
  %7063 = fmul fast float %7062, %6872
  %7064 = fadd fast float %7063, 1.000000e+00
  %7065 = fmul fast float %7064, %6884
  br label %7066

; <label>:7066                                    ; preds = %7035, %6927
  %7067 = phi float [ %7065, %7035 ], [ %6884, %6927 ]
  %7068 = call float @dx.op.binary.f32(i32 36, float %7067, float %7067)  ; FMin(a,b)
  %7069 = call float @dx.op.binary.f32(i32 36, float %7067, float %7068)  ; FMin(a,b)
  %7070 = fcmp fast ogt float %7069, 0.000000e+00
  br i1 %7070, label %7071, label %7343, !dx.controlflow.hints !163

; <label>:7071                                    ; preds = %7066
  %7072 = fmul fast float %7067, %6786
  %7073 = fmul fast float %7067, %6787
  %7074 = fmul fast float %7067, %6788
  %7075 = fadd fast float %6819, %1713
  %7076 = fadd fast float %6820, %1714
  %7077 = fadd fast float %6821, %1715
  %7078 = call float @dx.op.dot3.f32(i32 55, float %6819, float %6820, float %6821, float %6813, float %6814, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.dot3.f32(i32 55, float %6819, float %6820, float %6821, float %7075, float %7076, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7080 = fdiv fast float 1.000000e+00, %7079
  %7081 = fmul fast float %7080, %7078
  %7082 = fmul fast float %7081, %7075
  %7083 = fmul fast float %7081, %7076
  %7084 = fmul fast float %7081, %7077
  %7085 = fadd fast float %6800, %7082
  %7086 = fadd fast float %6801, %7083
  %7087 = fadd fast float %6802, %7084
  %7088 = call float @dx.op.dot3.f32(i32 55, float %7085, float %7086, float %7087, float %6760, float %6761, float %6762)  ; Dot3(ax,ay,az,bx,by,bz)
  %7089 = fdiv fast float %7088, %6799
  %7090 = call float @dx.op.binary.f32(i32 35, float %7089, float -1.000000e+00)  ; FMax(a,b)
  %7091 = call float @dx.op.binary.f32(i32 36, float %7090, float 1.000000e+00)  ; FMin(a,b)
  %7092 = fmul fast float %7091, %6760
  %7093 = fmul fast float %7091, %6761
  %7094 = fmul fast float %7091, %6762
  %7095 = fsub fast float %6768, %153
  %7096 = fadd fast float %7095, %7092
  %7097 = fsub fast float %6769, %154
  %7098 = fadd fast float %7097, %7093
  %7099 = fsub fast float %6770, %155
  %7100 = fadd fast float %7099, %7094
  %7101 = call float @dx.op.dot3.f32(i32 55, float %7096, float %7098, float %7100, float %7096, float %7098, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = call float @dx.op.unary.f32(i32 25, float %7101)  ; Rsqrt(value)
  %7103 = fmul fast float %7096, %7102
  %7104 = fmul fast float %7098, %7102
  %7105 = fmul fast float %7100, %7102
  %7106 = fsub fast float %7103, %1741
  %7107 = fsub fast float %7104, %1742
  %7108 = fsub fast float %7105, %1743
  %7109 = call float @dx.op.dot3.f32(i32 55, float %7106, float %7107, float %7108, float %7106, float %7107, float %7108)  ; Dot3(ax,ay,az,bx,by,bz)
  %7110 = call float @dx.op.unary.f32(i32 25, float %7109)  ; Rsqrt(value)
  %7111 = fmul fast float %7106, %7110
  %7112 = fmul fast float %7107, %7110
  %7113 = fmul fast float %7108, %7110
  %7114 = call float @dx.op.dot3.f32(i32 55, float %7103, float %7104, float %7105, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %7115 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %7111, float %7112, float %7113)  ; Dot3(ax,ay,az,bx,by,bz)
  %7116 = fmul fast float %7102, %6765
  %7117 = fmul fast float %7116, %7116
  %7118 = bitcast float %7117 to i32
  %7119 = ashr i32 %7118, 1
  %7120 = sub nsw i32 1597463007, %7119
  %7121 = bitcast i32 %7120 to float
  %7122 = fmul fast float %7121, %7114
  %7123 = fmul fast float %7122, %7122
  %7124 = fsub fast float 1.000000e+00, %7123
  %7125 = fmul fast float %7114, %7117
  %7126 = call float @dx.op.unary.f32(i32 7, float %7125)  ; Saturate(value)
  %7127 = fmul fast float %7122, 5.000000e-01
  %7128 = fadd fast float %7127, 5.000000e-01
  %7129 = fmul fast float %7128, %7117
  %7130 = call float @dx.op.unary.f32(i32 7, float %7129)  ; Saturate(value)
  %7131 = bitcast float %7130 to i32
  %7132 = ashr i32 %7131, 1
  %7133 = add nsw i32 %7132, 532487669
  %7134 = bitcast i32 %7133 to float
  %7135 = fmul fast float %7134, %7130
  %7136 = fcmp fast ogt float %7124, 0.000000e+00
  %7137 = select i1 %7136, float %7135, float %7126
  %7138 = call float @dx.op.unary.f32(i32 7, float %7114)  ; Saturate(value)
  %7139 = fmul fast float %7138, %7138
  %7140 = fmul fast float %7139, %1928
  %7141 = call float @dx.op.unary.f32(i32 7, float %7140)  ; Saturate(value)
  %7142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7143 = extractvalue %dx.types.CBufRet.f32 %7142, 0
  %7144 = bitcast float %7143 to i32
  %7145 = lshr i32 %7144, 8
  %7146 = and i32 %7145, 255
  %7147 = uitofp i32 %7146 to float
  %7148 = fptoui float %7147 to i32
  %7149 = and i32 %7148, 8
  %7150 = icmp ne i32 %7149, 0
  %7151 = select i1 %7150, float %7141, float 1.000000e+00
  %7152 = fmul fast float %7151, %7137
  %7153 = call float @dx.op.dot3.f32(i32 55, float %6760, float %6761, float %6762, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %7154 = call float @dx.op.dot3.f32(i32 55, float %6760, float %6761, float %6762, float %6813, float %6814, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %7155 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %6813, float %6814, float %6815)  ; Dot3(ax,ay,az,bx,by,bz)
  %7156 = fmul fast float %7153, %7153
  %7157 = fsub fast float %6799, %7156
  %7158 = fmul fast float %7155, %7153
  %7159 = fsub fast float %7158, %7154
  %7160 = fdiv fast float %7159, %7157
  %7161 = call float @dx.op.binary.f32(i32 35, float %7160, float -1.500000e+00)  ; FMax(a,b)
  %7162 = call float @dx.op.binary.f32(i32 36, float %7161, float 1.500000e+00)  ; FMin(a,b)
  %7163 = fmul fast float %7162, %7162
  %7164 = fmul fast float %7163, 0x3FC2F68380000000
  %7165 = fmul fast float %7164, %7162
  %7166 = fsub fast float %7162, %7165
  %7167 = fmul fast float %7166, %6760
  %7168 = fmul fast float %7166, %6761
  %7169 = fmul fast float %7166, %6762
  %7170 = fadd fast float %7167, %6810
  %7171 = fadd fast float %7168, %6811
  %7172 = fadd fast float %7169, %6812
  %7173 = fsub fast float %7170, %153
  %7174 = fsub fast float %7171, %154
  %7175 = fsub fast float %7172, %155
  %7176 = call float @dx.op.dot3.f32(i32 55, float %7173, float %7174, float %7175, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %7177 = fmul fast float %7176, %1897
  %7178 = fmul fast float %7176, %1898
  %7179 = fmul fast float %7176, %1899
  %7180 = fsub fast float %7177, %7173
  %7181 = fsub fast float %7178, %7174
  %7182 = fsub fast float %7179, %7175
  %7183 = call float @dx.op.dot3.f32(i32 55, float %7180, float %7181, float %7182, float %7180, float %7181, float %7182)  ; Dot3(ax,ay,az,bx,by,bz)
  %7184 = bitcast float %7183 to i32
  %7185 = ashr i32 %7184, 1
  %7186 = sub nsw i32 1597463007, %7185
  %7187 = bitcast i32 %7186 to float
  %7188 = fmul fast float %7187, %6765
  %7189 = call float @dx.op.dot3.f32(i32 55, float %7173, float %7174, float %7175, float %7173, float %7174, float %7175)  ; Dot3(ax,ay,az,bx,by,bz)
  %7190 = bitcast float %7189 to i32
  %7191 = ashr i32 %7190, 1
  %7192 = sub nsw i32 1597463007, %7191
  %7193 = bitcast i32 %7192 to float
  %7194 = fmul fast float %7188, %7188
  %7195 = fadd fast float %7194, 1.250000e-01
  %7196 = call float @dx.op.unary.f32(i32 25, float %7195)  ; Rsqrt(value)
  %7197 = fmul fast float %7188, %7196
  %7198 = fmul fast float %7180, %7197
  %7199 = fmul fast float %7181, %7197
  %7200 = fmul fast float %7182, %7197
  %7201 = fadd fast float %7173, %7198
  %7202 = fadd fast float %7174, %7199
  %7203 = fadd fast float %7175, %7200
  %7204 = call float @dx.op.dot3.f32(i32 55, float %7201, float %7202, float %7203, float %7201, float %7202, float %7203)  ; Dot3(ax,ay,az,bx,by,bz)
  %7205 = call float @dx.op.unary.f32(i32 25, float %7204)  ; Rsqrt(value)
  %7206 = fmul fast float %7201, %7205
  %7207 = fmul fast float %7202, %7205
  %7208 = fmul fast float %7203, %7205
  %7209 = fsub fast float %7206, %1741
  %7210 = fsub fast float %7207, %1742
  %7211 = fsub fast float %7208, %1743
  %7212 = call float @dx.op.dot3.f32(i32 55, float %7209, float %7210, float %7211, float %7209, float %7210, float %7211)  ; Dot3(ax,ay,az,bx,by,bz)
  %7213 = call float @dx.op.unary.f32(i32 25, float %7212)  ; Rsqrt(value)
  %7214 = fmul fast float %7209, %7213
  %7215 = fmul fast float %7210, %7213
  %7216 = fmul fast float %7211, %7213
  %7217 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float %7214, float %7215, float %7216)  ; Dot3(ax,ay,az,bx,by,bz)
  %7218 = fmul fast float %7217, %7217
  %7219 = call float @dx.op.unary.f32(i32 6, float %7114)  ; FAbs(value)
  %7220 = fsub fast float 1.000000e+00, %1919
  %7221 = fmul fast float %1892, %1892
  %7222 = fmul fast float %7221, %7220
  %7223 = fadd fast float %7222, %1919
  %7224 = bitcast float %7223 to i32
  %7225 = ashr i32 %7224, 1
  %7226 = add nsw i32 %7225, 532487669
  %7227 = bitcast i32 %7226 to float
  %7228 = fadd fast float %7227, %1892
  %7229 = fmul fast float %1919, %7218
  %7230 = fsub fast float 1.000000e+00, %7218
  %7231 = fadd fast float %7230, %7229
  %7232 = fmul fast float %7219, %7219
  %7233 = fmul fast float %7232, %7220
  %7234 = fadd fast float %7233, %1919
  %7235 = bitcast float %7234 to i32
  %7236 = ashr i32 %7235, 1
  %7237 = add nsw i32 %7236, 532487669
  %7238 = bitcast i32 %7237 to float
  %7239 = fadd fast float %7238, %7219
  %7240 = fmul fast float %7231, %7231
  %7241 = fmul fast float %7240, %7228
  %7242 = fmul fast float %7241, %7239
  %7243 = fdiv fast float 1.000000e+00, %7242
  %7244 = bitcast float %1919 to i32
  %7245 = sitofp i32 %7244 to float
  %7246 = fmul fast float %7245, 0x3FE7F73180000000
  %7247 = fadd fast float %7246, 0x41AFE27C40000000
  %7248 = fptosi float %7247 to i32
  %7249 = bitcast i32 %7248 to float
  %7250 = fmul fast float %6765, 0x3FD80E9D60000000
  %7251 = fmul fast float %7250, %7193
  %7252 = fadd fast float %7249, %7251
  %7253 = bitcast float %7252 to i32
  %7254 = sub nsw i32 2129859010, %7253
  %7255 = bitcast i32 %7254 to float
  %7256 = fmul fast float %1919, %7243
  %7257 = fmul fast float %7256, %7249
  %7258 = fmul fast float %7257, %7255
  %7259 = call float @dx.op.unary.f32(i32 6, float %7115)  ; FAbs(value)
  %7260 = fsub fast float 1.000000e+00, %7259
  %7261 = bitcast float %7260 to i32
  %7262 = sitofp i32 %7261 to float
  %7263 = fmul fast float %7262, 5.000000e+00
  %7264 = fadd fast float %7263, 0xC1EFBF8940000000
  %7265 = fptosi float %7264 to i32
  %7266 = bitcast i32 %7265 to float
  %7267 = fmul fast float %7266, %1794
  %7268 = fmul fast float %7266, %1795
  %7269 = fmul fast float %7266, %2993
  %7270 = fadd fast float %7267, %1734
  %7271 = fadd fast float %7268, %1735
  %7272 = fadd fast float %7269, %1890
  %7273 = fmul fast float %7114, 9.843750e-01
  %7274 = fmul fast float %1843, 9.843750e-01
  %7275 = fadd fast float %7273, 7.812500e-03
  %7276 = fadd fast float %7274, 7.812500e-03
  %7277 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7275, float %7276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7278 = extractvalue %dx.types.ResRet.f32 %7277, 2
  %7279 = extractvalue %dx.types.ResRet.f32 %7277, 3
  %7280 = fmul fast float %7278, %1734
  %7281 = fmul fast float %7278, %1735
  %7282 = fmul fast float %7278, %1890
  %7283 = fadd fast float %7280, %7279
  %7284 = fadd fast float %7281, %7279
  %7285 = fadd fast float %7282, %7279
  %7286 = call float @dx.op.binary.f32(i32 35, float %7284, float %7285)  ; FMax(a,b)
  %7287 = call float @dx.op.binary.f32(i32 35, float %7283, float %7286)  ; FMax(a,b)
  %7288 = fsub fast float 1.000000e+00, %7287
  %7289 = fsub fast float -0.000000e+00, %1713
  %7290 = fsub fast float -0.000000e+00, %1714
  %7291 = fsub fast float -0.000000e+00, %1715
  %7292 = call float @dx.op.dot3.f32(i32 55, float %6819, float %6820, float %6821, float %7289, float %7290, float %7291)  ; Dot3(ax,ay,az,bx,by,bz)
  %7293 = call float @dx.op.unary.f32(i32 7, float %7292)  ; Saturate(value)
  %7294 = fmul fast float %7293, %6826
  %7295 = fmul fast float %7293, 9.843750e-01
  %7296 = fadd fast float %7295, 7.812500e-03
  %7297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7296, float %7276, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7298 = extractvalue %dx.types.ResRet.f32 %7297, 2
  %7299 = extractvalue %dx.types.ResRet.f32 %7297, 3
  %7300 = fmul fast float %7298, %1734
  %7301 = fmul fast float %7298, %1735
  %7302 = fmul fast float %7298, %1890
  %7303 = fadd fast float %7300, %7299
  %7304 = fadd fast float %7301, %7299
  %7305 = fadd fast float %7302, %7299
  %7306 = call float @dx.op.binary.f32(i32 35, float %7304, float %7305)  ; FMax(a,b)
  %7307 = call float @dx.op.binary.f32(i32 35, float %7303, float %7306)  ; FMax(a,b)
  %7308 = fsub fast float 1.000000e+00, %7307
  %7309 = fmul fast float %7294, %7308
  %7310 = fmul fast float %7309, %1846
  %7311 = fmul fast float %7288, %7152
  %7312 = fmul fast float %7270, %7152
  %7313 = fmul fast float %7312, %7258
  %7314 = fmul fast float %7271, %7152
  %7315 = fmul fast float %7314, %7258
  %7316 = fmul fast float %7272, %7152
  %7317 = fmul fast float %7316, %7258
  %7318 = fadd fast float %7310, %7311
  %7319 = fmul fast float %7318, %7072
  %7320 = fmul fast float %7318, %7073
  %7321 = fmul fast float %7318, %7074
  %7322 = fadd fast float %7319, %6734
  %7323 = fadd fast float %7320, %6735
  %7324 = fadd fast float %7321, %6736
  %7325 = fmul fast float %7313, %7072
  %7326 = fmul fast float %7315, %7073
  %7327 = fmul fast float %7317, %7074
  %7328 = fadd fast float %7325, %6731
  %7329 = fadd fast float %7326, %6732
  %7330 = fadd fast float %7327, %6733
  %7331 = fadd fast float %7319, %6728
  %7332 = fadd fast float %7320, %6729
  %7333 = fadd fast float %7321, %6730
  %7334 = fadd fast float %7325, %6725
  %7335 = fadd fast float %7326, %6726
  %7336 = fadd fast float %7327, %6727
  %7337 = fadd fast float %7319, %6722
  %7338 = fadd fast float %7320, %6723
  %7339 = fadd fast float %7321, %6724
  %7340 = fadd fast float %7325, %6719
  %7341 = fadd fast float %7326, %6720
  %7342 = fadd fast float %7327, %6721
  br label %7343

; <label>:7343                                    ; preds = %7071, %7066
  %7344 = phi float [ %6719, %7066 ], [ %7340, %7071 ]
  %7345 = phi float [ %6720, %7066 ], [ %7341, %7071 ]
  %7346 = phi float [ %6721, %7066 ], [ %7342, %7071 ]
  %7347 = phi float [ %6722, %7066 ], [ %7337, %7071 ]
  %7348 = phi float [ %6723, %7066 ], [ %7338, %7071 ]
  %7349 = phi float [ %6724, %7066 ], [ %7339, %7071 ]
  %7350 = phi float [ %6725, %7066 ], [ %7334, %7071 ]
  %7351 = phi float [ %6726, %7066 ], [ %7335, %7071 ]
  %7352 = phi float [ %6727, %7066 ], [ %7336, %7071 ]
  %7353 = phi float [ %6728, %7066 ], [ %7331, %7071 ]
  %7354 = phi float [ %6729, %7066 ], [ %7332, %7071 ]
  %7355 = phi float [ %6730, %7066 ], [ %7333, %7071 ]
  %7356 = phi float [ %6731, %7066 ], [ %7328, %7071 ]
  %7357 = phi float [ %6732, %7066 ], [ %7329, %7071 ]
  %7358 = phi float [ %6733, %7066 ], [ %7330, %7071 ]
  %7359 = phi float [ %6734, %7066 ], [ %7322, %7071 ]
  %7360 = phi float [ %6735, %7066 ], [ %7323, %7071 ]
  %7361 = phi float [ %6736, %7066 ], [ %7324, %7071 ]
  %7362 = bitcast i32 %6709 to float
  %7363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7364 = extractvalue %dx.types.CBufRet.f32 %7363, 1
  %7365 = bitcast float %7364 to i32
  %7366 = and i32 %7365, 65535
  %7367 = icmp eq i32 %7366, 65535
  br i1 %7367, label %7368, label %7370

; <label>:7368                                    ; preds = %7343
  %7369 = call float @dx.op.binary.f32(i32 35, float %7362, float %7067)  ; FMax(a,b)
  br label %7373

; <label>:7370                                    ; preds = %7343
  %7371 = icmp eq i32 %7366, %6738
  %7372 = select i1 %7371, float %7067, float %7362
  br label %7373

; <label>:7373                                    ; preds = %7370, %7368
  %7374 = phi float [ %7369, %7368 ], [ %7372, %7370 ]
  %7375 = extractvalue %dx.types.CBufRet.f32 %7363, 0
  %7376 = bitcast float %7375 to i32
  %7377 = lshr i32 %7376, 8
  %7378 = and i32 %7377, 255
  %7379 = uitofp i32 %7378 to float
  %7380 = fptoui float %7379 to i32
  %7381 = icmp eq i32 %7380, 15
  %7382 = bitcast float %7374 to i32
  %7383 = select i1 %7381, i32 %7382, i32 %6709
  %7384 = add i32 %6891, %6714
  %7385 = add i32 %6893, %6715
  %7386 = add i32 %6895, %6716
  %7387 = add i32 %6897, %6717
  br label %6902

; <label>:7388                                    ; preds = %6902
  br label %7389

; <label>:7389                                    ; preds = %7388, %6655
  %7390 = phi i32 [ %6656, %6655 ], [ %6903, %7388 ]
  %7391 = phi i32 [ %6657, %6655 ], [ %6892, %7388 ]
  %7392 = phi i32 [ %6658, %6655 ], [ %6894, %7388 ]
  %7393 = phi i32 [ %6659, %6655 ], [ %6896, %7388 ]
  %7394 = phi i32 [ %6660, %6655 ], [ %6898, %7388 ]
  %7395 = phi i32 [ %6661, %6655 ], [ %6904, %7388 ]
  %7396 = phi i32 [ %6662, %6655 ], [ %6905, %7388 ]
  %7397 = phi i32 [ %6663, %6655 ], [ %6906, %7388 ]
  %7398 = phi i32 [ %6664, %6655 ], [ %6907, %7388 ]
  %7399 = phi float [ %6666, %6655 ], [ %6908, %7388 ]
  %7400 = phi float [ %6667, %6655 ], [ %6909, %7388 ]
  %7401 = phi float [ %6668, %6655 ], [ %6910, %7388 ]
  %7402 = phi float [ %6669, %6655 ], [ %6911, %7388 ]
  %7403 = phi float [ %6670, %6655 ], [ %6912, %7388 ]
  %7404 = phi float [ %6671, %6655 ], [ %6913, %7388 ]
  %7405 = phi float [ %6672, %6655 ], [ %6914, %7388 ]
  %7406 = phi float [ %6673, %6655 ], [ %6915, %7388 ]
  %7407 = phi float [ %6674, %6655 ], [ %6916, %7388 ]
  %7408 = phi float [ %6675, %6655 ], [ %6917, %7388 ]
  %7409 = phi float [ %6676, %6655 ], [ %6918, %7388 ]
  %7410 = phi float [ %6677, %6655 ], [ %6919, %7388 ]
  %7411 = phi float [ %6678, %6655 ], [ %6920, %7388 ]
  %7412 = phi float [ %6679, %6655 ], [ %6921, %7388 ]
  %7413 = phi float [ %6680, %6655 ], [ %6922, %7388 ]
  %7414 = phi float [ %6681, %6655 ], [ %6923, %7388 ]
  %7415 = phi float [ %6682, %6655 ], [ %6924, %7388 ]
  %7416 = phi float [ %6683, %6655 ], [ %6925, %7388 ]
  %7417 = add i32 %6665, 1
  %7418 = icmp ugt i32 %7417, %6652
  br i1 %7418, label %7419, label %6655

; <label>:7419                                    ; preds = %7389
  br label %7420

; <label>:7420                                    ; preds = %7419, %6605
  %7421 = phi i32 [ %6584, %6605 ], [ %7390, %7419 ]
  %7422 = phi i32 [ 0, %6605 ], [ %7391, %7419 ]
  %7423 = phi i32 [ 0, %6605 ], [ %7392, %7419 ]
  %7424 = phi i32 [ 0, %6605 ], [ %7393, %7419 ]
  %7425 = phi i32 [ 0, %6605 ], [ %7394, %7419 ]
  %7426 = phi i32 [ 0, %6605 ], [ %7395, %7419 ]
  %7427 = phi i32 [ 0, %6605 ], [ %7396, %7419 ]
  %7428 = phi i32 [ 0, %6605 ], [ %7397, %7419 ]
  %7429 = phi i32 [ 0, %6605 ], [ %7398, %7419 ]
  %7430 = phi float [ %6586, %6605 ], [ %7399, %7419 ]
  %7431 = phi float [ %6587, %6605 ], [ %7400, %7419 ]
  %7432 = phi float [ %6588, %6605 ], [ %7401, %7419 ]
  %7433 = phi float [ %6589, %6605 ], [ %7402, %7419 ]
  %7434 = phi float [ %6590, %6605 ], [ %7403, %7419 ]
  %7435 = phi float [ %6591, %6605 ], [ %7404, %7419 ]
  %7436 = phi float [ %6592, %6605 ], [ %7405, %7419 ]
  %7437 = phi float [ %6593, %6605 ], [ %7406, %7419 ]
  %7438 = phi float [ %6594, %6605 ], [ %7407, %7419 ]
  %7439 = phi float [ %6595, %6605 ], [ %7408, %7419 ]
  %7440 = phi float [ %6596, %6605 ], [ %7409, %7419 ]
  %7441 = phi float [ %6597, %6605 ], [ %7410, %7419 ]
  %7442 = phi float [ %6599, %6605 ], [ %7411, %7419 ]
  %7443 = phi float [ %6600, %6605 ], [ %7412, %7419 ]
  %7444 = phi float [ %6601, %6605 ], [ %7413, %7419 ]
  %7445 = phi float [ %6595, %6605 ], [ %7414, %7419 ]
  %7446 = phi float [ %6596, %6605 ], [ %7415, %7419 ]
  %7447 = phi float [ %6597, %6605 ], [ %7416, %7419 ]
  %7448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7449 = extractvalue %dx.types.CBufRet.f32 %7448, 1
  %7450 = bitcast float %7449 to i32
  %7451 = lshr i32 %7450, 24
  %7452 = uitofp i32 %7451 to float
  %7453 = fptoui float %7452 to i32
  %7454 = icmp eq i32 %7453, 1
  %7455 = select i1 %7454, i32 %7426, i32 %7422
  %7456 = uitofp i32 %7455 to float
  %7457 = fptoui float %7456 to i32
  %7458 = shl i32 %7457, 8
  %7459 = select i1 %7454, i32 %7427, i32 %7423
  %7460 = uitofp i32 %7459 to float
  %7461 = fptoui float %7460 to i32
  %7462 = shl i32 %7461, 16
  %7463 = and i32 %7458, 65280
  %7464 = or i32 %7463, %6585
  %7465 = select i1 %7454, i32 %7428, i32 %7424
  %7466 = uitofp i32 %7465 to float
  %7467 = fptoui float %7466 to i32
  %7468 = shl i32 %7467, 24
  %7469 = and i32 %7462, 16711680
  %7470 = or i32 %7464, %7469
  %7471 = or i32 %7470, %7468
  %7472 = select i1 %7454, i32 %7429, i32 %7425
  %7473 = uitofp i32 %7472 to float
  %7474 = fptoui float %7473 to i32
  %7475 = and i32 %7474, 255
  %7476 = and i32 %4784, -256
  %7477 = or i32 %7475, %7476
  %7478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7479 = extractvalue %dx.types.CBufRet.f32 %7478, 0
  %7480 = bitcast float %7479 to i32
  %7481 = lshr i32 %7480, 8
  %7482 = and i32 %7481, 255
  %7483 = uitofp i32 %7482 to float
  %7484 = fptoui float %7483 to i32
  %7485 = icmp eq i32 %7484, 12
  %7486 = select i1 %7485, i32 0, i32 %7421
  br label %7487

; <label>:7487                                    ; preds = %7420, %6583
  %7488 = phi i32 [ %4784, %6583 ], [ %7477, %7420 ]
  %7489 = phi i32 [ 0, %6583 ], [ %7471, %7420 ]
  %7490 = phi i32 [ %6584, %6583 ], [ %7486, %7420 ]
  %7491 = phi float [ %6586, %6583 ], [ %7430, %7420 ]
  %7492 = phi float [ %6587, %6583 ], [ %7431, %7420 ]
  %7493 = phi float [ %6588, %6583 ], [ %7432, %7420 ]
  %7494 = phi float [ %6589, %6583 ], [ %7433, %7420 ]
  %7495 = phi float [ %6590, %6583 ], [ %7434, %7420 ]
  %7496 = phi float [ %6591, %6583 ], [ %7435, %7420 ]
  %7497 = phi float [ %6592, %6583 ], [ %7436, %7420 ]
  %7498 = phi float [ %6593, %6583 ], [ %7437, %7420 ]
  %7499 = phi float [ %6594, %6583 ], [ %7438, %7420 ]
  %7500 = phi float [ %6595, %6583 ], [ %7439, %7420 ]
  %7501 = phi float [ %6596, %6583 ], [ %7440, %7420 ]
  %7502 = phi float [ %6597, %6583 ], [ %7441, %7420 ]
  %7503 = phi float [ %6599, %6583 ], [ %7442, %7420 ]
  %7504 = phi float [ %6600, %6583 ], [ %7443, %7420 ]
  %7505 = phi float [ %6601, %6583 ], [ %7444, %7420 ]
  %7506 = phi float [ %6595, %6583 ], [ %7445, %7420 ]
  %7507 = phi float [ %6596, %6583 ], [ %7446, %7420 ]
  %7508 = phi float [ %6597, %6583 ], [ %7447, %7420 ]
  %7509 = and i32 %1793, 255
  %7510 = uitofp i32 %7509 to float
  %7511 = fmul fast float %7510, 0x3F70101020000000
  %7512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7513 = extractvalue %dx.types.CBufRet.f32 %7512, 2
  %7514 = extractvalue %dx.types.CBufRet.f32 %7512, 3
  %7515 = fmul fast float %7513, %98
  %7516 = fmul fast float %7514, %99
  %7517 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %1803, i32 %1809, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7518 = extractvalue %dx.types.ResRet.f32 %7517, 0
  %7519 = fcmp fast ogt float %7518, -1.000000e+00
  %7520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7521 = extractvalue %dx.types.CBufRet.f32 %7520, 1
  %7522 = select i1 %7519, float %7521, float 1.000000e+00
  %7523 = fadd fast float %7518, 1.000000e+00
  %7524 = fmul fast float %7522, %7523
  %7525 = call float @dx.op.unary.f32(i32 6, float %7524)  ; FAbs(value)
  br i1 %115, label %7526, label %7965

; <label>:7526                                    ; preds = %7487
  %7527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %7528 = extractvalue %dx.types.CBufRet.f32 %7527, 0
  %7529 = extractvalue %dx.types.CBufRet.f32 %7527, 1
  %7530 = extractvalue %dx.types.CBufRet.f32 %7527, 2
  %7531 = fcmp fast oge float %7529, %87
  %7532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7533 = extractvalue %dx.types.CBufRet.i32 %7532, 0
  %7534 = and i32 %7533, 65538
  %7535 = icmp eq i32 %7534, 65538
  %7536 = and i1 %7535, %7531
  br i1 %7536, label %7537, label %7621

; <label>:7537                                    ; preds = %7526
  %7538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7539 = extractvalue %dx.types.CBufRet.f32 %7538, 0
  %7540 = extractvalue %dx.types.CBufRet.f32 %7538, 1
  %7541 = fmul fast float %7539, %7515
  %7542 = fmul fast float %7540, %7516
  %7543 = extractvalue %dx.types.CBufRet.f32 %7538, 2
  %7544 = extractvalue %dx.types.CBufRet.f32 %7538, 3
  %7545 = fmul fast float %7541, %7543
  %7546 = fmul fast float %7542, %7544
  %7547 = call float @dx.op.unary.f32(i32 7, float %7545)  ; Saturate(value)
  %7548 = call float @dx.op.unary.f32(i32 7, float %7546)  ; Saturate(value)
  %7549 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %7547, float %7548, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7550 = extractvalue %dx.types.ResRet.f32 %7549, 0
  %7551 = extractvalue %dx.types.ResRet.f32 %7549, 1
  %7552 = extractvalue %dx.types.ResRet.f32 %7549, 2
  %7553 = extractvalue %dx.types.ResRet.f32 %7549, 3
  %7554 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %7547, float %7548, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7555 = extractvalue %dx.types.ResRet.f32 %7554, 0
  %7556 = extractvalue %dx.types.ResRet.f32 %7554, 1
  %7557 = extractvalue %dx.types.ResRet.f32 %7554, 2
  %7558 = extractvalue %dx.types.ResRet.f32 %7554, 3
  %7559 = call float @dx.op.binary.f32(i32 35, float %7551, float %7552)  ; FMax(a,b)
  %7560 = call float @dx.op.binary.f32(i32 35, float %7550, float %7559)  ; FMax(a,b)
  %7561 = call float @dx.op.binary.f32(i32 35, float %7560, float %7553)  ; FMax(a,b)
  %7562 = call float @dx.op.binary.f32(i32 36, float %7556, float %7557)  ; FMin(a,b)
  %7563 = call float @dx.op.binary.f32(i32 36, float %7555, float %7562)  ; FMin(a,b)
  %7564 = call float @dx.op.binary.f32(i32 36, float %7563, float %7558)  ; FMin(a,b)
  %7565 = fmul fast float %7561, 2.550000e+02
  %7566 = fadd fast float %7565, 0x3F70101020000000
  %7567 = fptoui float %7566 to i32
  %7568 = fmul fast float %7564, 2.550000e+02
  %7569 = fadd fast float %7568, 0x3F70101020000000
  %7570 = fptoui float %7569 to i32
  %7571 = icmp ult i32 %7567, %7570
  br i1 %7571, label %7572, label %7621

; <label>:7572                                    ; preds = %7537
  %7573 = fadd fast float %7525, -4.000000e+00
  %7574 = call float @dx.op.binary.f32(i32 35, float %7573, float 0.000000e+00)  ; FMax(a,b)
  %7575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7576 = extractvalue %dx.types.CBufRet.f32 %7575, 0
  %7577 = fadd fast float %7576, %7574
  %7578 = extractvalue %dx.types.CBufRet.f32 %7575, 2
  %7579 = fmul fast float %7577, %7578
  %7580 = call float @dx.op.unary.f32(i32 23, float %7579)  ; Log(value)
  %7581 = extractvalue %dx.types.CBufRet.f32 %7575, 3
  %7582 = fmul fast float %7581, %7580
  %7583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7584 = extractvalue %dx.types.CBufRet.f32 %7583, 2
  %7585 = fmul fast float %7582, %7584
  %7586 = call float @dx.op.unary.f32(i32 7, float %7585)  ; Saturate(value)
  %7587 = uitofp i32 %7567 to float
  %7588 = uitofp i32 %7570 to float
  %7589 = fadd fast float %7587, 5.000000e-01
  %7590 = fadd fast float %7588, 5.000000e-01
  %7591 = fmul fast float %7584, %7589
  %7592 = fmul fast float %7584, %7590
  %7593 = fadd fast float %7591, 0x3F0FFB4800000000
  %7594 = fadd fast float %7592, 0xBF0FFB4800000000
  %7595 = call float @dx.op.binary.f32(i32 35, float %7586, float %7593)  ; FMax(a,b)
  %7596 = call float @dx.op.binary.f32(i32 36, float %7595, float %7594)  ; FMin(a,b)
  %7597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7598 = extractvalue %dx.types.CBufRet.f32 %7597, 1
  %7599 = extractvalue %dx.types.CBufRet.f32 %7597, 2
  %7600 = extractvalue %dx.types.CBufRet.f32 %7597, 0
  %7601 = fmul fast float %7598, %7596
  %7602 = fadd fast float %7600, %7601
  %7603 = fadd fast float %7600, %7599
  %7604 = fsub fast float %7598, %7599
  %7605 = fadd fast float %7604, %7600
  %7606 = call float @dx.op.binary.f32(i32 35, float %7602, float %7603)  ; FMax(a,b)
  %7607 = call float @dx.op.binary.f32(i32 36, float %7606, float %7605)  ; FMin(a,b)
  %7608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %7547, float %7548, float %7607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7609 = extractvalue %dx.types.ResRet.f32 %7608, 0
  %7610 = extractvalue %dx.types.ResRet.f32 %7608, 1
  %7611 = extractvalue %dx.types.ResRet.f32 %7608, 2
  %7612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %7547, float %7548, float %7607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  %7614 = extractvalue %dx.types.ResRet.f32 %7612, 1
  %7615 = extractvalue %dx.types.ResRet.f32 %7612, 2
  %7616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7617 = extractvalue %dx.types.CBufRet.f32 %7616, 1
  %7618 = fmul fast float %7617, %7613
  %7619 = fmul fast float %7617, %7614
  %7620 = fmul fast float %7617, %7615
  br label %7621

; <label>:7621                                    ; preds = %7572, %7537, %7526
  %7622 = phi float [ 0.000000e+00, %7526 ], [ %7618, %7572 ], [ 0.000000e+00, %7537 ]
  %7623 = phi float [ 0.000000e+00, %7526 ], [ %7619, %7572 ], [ 0.000000e+00, %7537 ]
  %7624 = phi float [ 0.000000e+00, %7526 ], [ %7620, %7572 ], [ 0.000000e+00, %7537 ]
  %7625 = phi float [ 1.000000e+00, %7526 ], [ %7609, %7572 ], [ 1.000000e+00, %7537 ]
  %7626 = phi float [ 1.000000e+00, %7526 ], [ %7610, %7572 ], [ 1.000000e+00, %7537 ]
  %7627 = phi float [ 1.000000e+00, %7526 ], [ %7611, %7572 ], [ 1.000000e+00, %7537 ]
  %7628 = fcmp fast olt float %7511, 1.000000e+00
  %7629 = fcmp fast olt float %7528, %7525
  %7630 = or i1 %7628, %7629
  br i1 %7630, label %7631, label %7722

; <label>:7631                                    ; preds = %7621
  %7632 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %7633 = extractvalue %dx.types.CBufRet.i32 %7632, 0
  %7634 = call i32 @dx.op.binary.i32(i32 40, i32 %197, i32 %7633)  ; UMin(a,b)
  %7635 = mul i32 %7634, 36
  %7636 = add i32 %7635, 4
  %7637 = add i32 %7636, %431
  %7638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %7637, i32 undef)  ; BufferLoad(srv,index,wot)
  %7639 = extractvalue %dx.types.ResRet.i32 %7638, 0
  %7640 = and i32 %7639, 32767
  %7641 = mul nuw nsw i32 %7640, 928
  %7642 = add nuw nsw i32 %7641, 44
  %7643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7642, i32 undef)  ; BufferLoad(srv,index,wot)
  %7644 = extractvalue %dx.types.ResRet.f32 %7643, 0
  %7645 = add nuw nsw i32 %7641, 48
  %7646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7645, i32 undef)  ; BufferLoad(srv,index,wot)
  %7647 = extractvalue %dx.types.ResRet.f32 %7646, 0
  %7648 = extractvalue %dx.types.ResRet.f32 %7646, 1
  %7649 = extractvalue %dx.types.ResRet.f32 %7646, 2
  %7650 = add nuw nsw i32 %7641, 60
  %7651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7650, i32 undef)  ; BufferLoad(srv,index,wot)
  %7652 = extractvalue %dx.types.ResRet.f32 %7651, 0
  %7653 = extractvalue %dx.types.ResRet.f32 %7651, 1
  %7654 = extractvalue %dx.types.ResRet.f32 %7651, 2
  %7655 = fmul fast float %7647, 0x3F847AE140000000
  %7656 = fmul fast float %7648, 0x3F847AE140000000
  %7657 = fmul fast float %7649, 0x3F847AE140000000
  %7658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7659 = extractvalue %dx.types.CBufRet.f32 %7658, 0
  %7660 = extractvalue %dx.types.CBufRet.f32 %7658, 1
  %7661 = extractvalue %dx.types.CBufRet.f32 %7658, 2
  %7662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7663 = extractvalue %dx.types.CBufRet.f32 %7662, 0
  %7664 = extractvalue %dx.types.CBufRet.f32 %7662, 1
  %7665 = call float @dx.op.dot3.f32(i32 55, float %7659, float %7660, float %7661, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7666 = select i1 %1885, float %7663, float %7659
  %7667 = select i1 %1885, float %7665, float %7660
  %7668 = select i1 %1885, float %7664, float %7661
  %7669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7670 = extractvalue %dx.types.CBufRet.f32 %7669, 0
  %7671 = extractvalue %dx.types.CBufRet.f32 %7669, 1
  %7672 = extractvalue %dx.types.CBufRet.f32 %7669, 2
  %7673 = fadd fast float %7652, %7647
  %7674 = fmul fast float %7673, 0x3F847AE140000000
  %7675 = fadd fast float %7653, %7648
  %7676 = fmul fast float %7675, 0x3F847AE140000000
  %7677 = fadd fast float %7654, %7649
  %7678 = fmul fast float %7677, 0x3F847AE140000000
  %7679 = call float @dx.op.dot3.f32(i32 55, float %7670, float %7671, float %7672, float %1741, float %1742, float %1743)  ; Dot3(ax,ay,az,bx,by,bz)
  %7680 = fcmp fast ogt float %7644, 0.000000e+00
  %7681 = select i1 %7680, float 1.000000e+00, float -1.000000e+00
  %7682 = fmul fast float %7681, 5.000000e-01
  %7683 = fmul fast float %7682, %7679
  %7684 = fmul fast float %7681, %7644
  %7685 = fadd fast float %7683, 4.921875e-01
  %7686 = fadd fast float %7684, -3.125000e-02
  %7687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %61, float %7685, float 0x3FB25F3060000000, float %7686, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7688 = extractvalue %dx.types.ResRet.f32 %7687, 0
  %7689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %7690 = extractvalue %dx.types.CBufRet.f32 %7689, 0
  %7691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %7692 = extractvalue %dx.types.CBufRet.f32 %7691, 0
  %7693 = fmul fast float %7692, %7690
  %7694 = extractvalue %dx.types.CBufRet.f32 %7691, 1
  %7695 = fadd fast float %7693, %7694
  %7696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %7697 = extractvalue %dx.types.CBufRet.f32 %7696, 0
  %7698 = fmul fast float %7697, %6598
  %7699 = extractvalue %dx.types.CBufRet.f32 %7696, 1
  %7700 = fadd fast float %7698, %7699
  %7701 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7702 = extractvalue %dx.types.CBufRet.f32 %7689, 3
  %7703 = extractvalue %dx.types.CBufRet.f32 %7691, 2
  %7704 = fmul fast float %7703, %7702
  %7705 = extractvalue %dx.types.CBufRet.f32 %7691, 3
  %7706 = fadd fast float %7704, %7705
  %7707 = fmul fast float %7688, 0x400921FB60000000
  %7708 = fmul fast float %7707, %7695
  %7709 = fmul fast float %7708, %7701
  %7710 = fmul fast float %7666, %7655
  %7711 = fmul fast float %7710, %7709
  %7712 = fmul fast float %7667, %7656
  %7713 = fmul fast float %7712, %7709
  %7714 = fmul fast float %7668, %7657
  %7715 = fmul fast float %7714, %7709
  %7716 = fmul fast float %7655, %2957
  %7717 = fmul fast float %7716, %7706
  %7718 = fmul fast float %7656, %2958
  %7719 = fmul fast float %7718, %7706
  %7720 = fmul fast float %7657, %2959
  %7721 = fmul fast float %7720, %7706
  br label %7722

; <label>:7722                                    ; preds = %7631, %7621
  %7723 = phi float [ %7674, %7631 ], [ 0.000000e+00, %7621 ]
  %7724 = phi float [ %7676, %7631 ], [ 0.000000e+00, %7621 ]
  %7725 = phi float [ %7678, %7631 ], [ 0.000000e+00, %7621 ]
  %7726 = phi float [ %7711, %7631 ], [ 0.000000e+00, %7621 ]
  %7727 = phi float [ %7713, %7631 ], [ 0.000000e+00, %7621 ]
  %7728 = phi float [ %7715, %7631 ], [ 0.000000e+00, %7621 ]
  %7729 = phi float [ %7717, %7631 ], [ 0.000000e+00, %7621 ]
  %7730 = phi float [ %7719, %7631 ], [ 0.000000e+00, %7621 ]
  %7731 = phi float [ %7721, %7631 ], [ 0.000000e+00, %7621 ]
  %7732 = call float @dx.op.binary.f32(i32 35, float %7723, float 0x3F10000000000000)  ; FMax(a,b)
  %7733 = call float @dx.op.binary.f32(i32 35, float %7724, float 0x3F10000000000000)  ; FMax(a,b)
  %7734 = call float @dx.op.binary.f32(i32 35, float %7725, float 0x3F10000000000000)  ; FMax(a,b)
  %7735 = fdiv fast float 1.000000e+00, %7732
  %7736 = fdiv fast float 1.000000e+00, %7733
  %7737 = fdiv fast float 1.000000e+00, %7734
  %7738 = fmul fast float %7723, 0xBFF7154760000000
  %7739 = fmul fast float %7724, 0xBFF7154760000000
  %7740 = fmul fast float %7725, 0xBFF7154760000000
  %7741 = extractvalue %dx.types.CBufRet.f32 %7527, 3
  %7742 = call float @dx.op.dot3.f32(i32 55, float %7735, float %7736, float %7737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7743 = fmul fast float %7741, %7742
  %7744 = call float @dx.op.binary.f32(i32 35, float %7529, float %87)  ; FMax(a,b)
  %7745 = fsub fast float %7525, %7744
  %7746 = call float @dx.op.binary.f32(i32 35, float %7745, float 0.000000e+00)  ; FMax(a,b)
  %7747 = fsub fast float %7525, %87
  %7748 = call float @dx.op.binary.f32(i32 35, float %7747, float 0.000000e+00)  ; FMax(a,b)
  %7749 = call float @dx.op.binary.f32(i32 36, float %7748, float %7743)  ; FMin(a,b)
  %7750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %7751 = extractvalue %dx.types.CBufRet.f32 %7750, 0
  %7752 = fmul fast float %7751, %7749
  %7753 = fmul fast float %7752, %7738
  %7754 = fmul fast float %7752, %7739
  %7755 = fmul fast float %7752, %7740
  %7756 = call float @dx.op.unary.f32(i32 21, float %7753)  ; Exp(value)
  %7757 = call float @dx.op.unary.f32(i32 21, float %7754)  ; Exp(value)
  %7758 = call float @dx.op.unary.f32(i32 21, float %7755)  ; Exp(value)
  %7759 = fmul fast float %7756, %7726
  %7760 = fmul fast float %7757, %7727
  %7761 = fmul fast float %7758, %7728
  %7762 = extractvalue %dx.types.CBufRet.f32 %7750, 1
  %7763 = fmul fast float %7762, %7749
  %7764 = fmul fast float %7763, %7738
  %7765 = fmul fast float %7763, %7739
  %7766 = fmul fast float %7763, %7740
  %7767 = call float @dx.op.unary.f32(i32 21, float %7764)  ; Exp(value)
  %7768 = call float @dx.op.unary.f32(i32 21, float %7765)  ; Exp(value)
  %7769 = call float @dx.op.unary.f32(i32 21, float %7766)  ; Exp(value)
  %7770 = fmul fast float %7767, %7729
  %7771 = fmul fast float %7768, %7730
  %7772 = fmul fast float %7769, %7731
  %7773 = fadd fast float %7770, %7759
  %7774 = fadd fast float %7771, %7760
  %7775 = fadd fast float %7772, %7761
  %7776 = fmul fast float %7746, %7738
  %7777 = fmul fast float %7746, %7739
  %7778 = fmul fast float %7746, %7740
  %7779 = call float @dx.op.unary.f32(i32 21, float %7776)  ; Exp(value)
  %7780 = call float @dx.op.unary.f32(i32 21, float %7777)  ; Exp(value)
  %7781 = call float @dx.op.unary.f32(i32 21, float %7778)  ; Exp(value)
  %7782 = call float @dx.op.unary.f32(i32 7, float %7779)  ; Saturate(value)
  %7783 = call float @dx.op.unary.f32(i32 7, float %7780)  ; Saturate(value)
  %7784 = call float @dx.op.unary.f32(i32 7, float %7781)  ; Saturate(value)
  %7785 = fmul fast float %7782, %7773
  %7786 = fmul fast float %7783, %7774
  %7787 = fmul fast float %7784, %7775
  %7788 = fsub fast float %7773, %7785
  %7789 = fsub fast float %7774, %7786
  %7790 = fsub fast float %7775, %7787
  %7791 = fmul fast float %7735, %7625
  %7792 = fmul fast float %7791, %7788
  %7793 = fmul fast float %7736, %7626
  %7794 = fmul fast float %7793, %7789
  %7795 = fmul fast float %7737, %7627
  %7796 = fmul fast float %7795, %7790
  %7797 = fadd fast float %7792, %7622
  %7798 = fadd fast float %7794, %7623
  %7799 = fadd fast float %7796, %7624
  %7800 = fmul fast float %7782, %7625
  %7801 = fmul fast float %7783, %7626
  %7802 = fmul fast float %7784, %7627
  %7803 = fmul fast float %7748, %7738
  %7804 = fmul fast float %7748, %7739
  %7805 = fmul fast float %7748, %7740
  %7806 = call float @dx.op.unary.f32(i32 21, float %7803)  ; Exp(value)
  %7807 = call float @dx.op.unary.f32(i32 21, float %7804)  ; Exp(value)
  %7808 = call float @dx.op.unary.f32(i32 21, float %7805)  ; Exp(value)
  %7809 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7810 = call float @dx.op.unary.f32(i32 7, float %7807)  ; Saturate(value)
  %7811 = call float @dx.op.unary.f32(i32 7, float %7808)  ; Saturate(value)
  %7812 = fmul fast float %7809, %7773
  %7813 = fmul fast float %7810, %7774
  %7814 = fmul fast float %7811, %7775
  %7815 = fsub fast float %7773, %7812
  %7816 = fsub fast float %7774, %7813
  %7817 = fsub fast float %7775, %7814
  %7818 = fmul fast float %7815, %7735
  %7819 = fmul fast float %7816, %7736
  %7820 = fmul fast float %7817, %7737
  %7821 = fsub fast float %87, %7528
  %7822 = fmul fast float %7530, %7821
  %7823 = call float @dx.op.unary.f32(i32 7, float %7822)  ; Saturate(value)
  %7824 = fmul fast float %7823, %7823
  %7825 = fmul fast float %7823, 2.000000e+00
  %7826 = fsub fast float 3.000000e+00, %7825
  %7827 = fmul fast float %7824, %7826
  %7828 = fsub fast float %7818, %7797
  %7829 = fsub fast float %7819, %7798
  %7830 = fsub fast float %7820, %7799
  %7831 = fmul fast float %7827, %7828
  %7832 = fmul fast float %7827, %7829
  %7833 = fmul fast float %7827, %7830
  %7834 = fadd fast float %7831, %7797
  %7835 = fadd fast float %7832, %7798
  %7836 = fadd fast float %7833, %7799
  %7837 = fsub fast float %7809, %7800
  %7838 = fsub fast float %7810, %7801
  %7839 = fsub fast float %7811, %7802
  %7840 = fmul fast float %7827, %7837
  %7841 = fmul fast float %7827, %7838
  %7842 = fmul fast float %7827, %7839
  %7843 = fadd fast float %7840, %7800
  %7844 = fadd fast float %7841, %7801
  %7845 = fadd fast float %7842, %7802
  br i1 %7628, label %7846, label %7914

; <label>:7846                                    ; preds = %7722
  %7847 = extractvalue %dx.types.CBufRet.f32 %7750, 3
  %7848 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %7847)  ; Dot3(ax,ay,az,bx,by,bz)
  %7849 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1887, float %1888, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %7850 = fdiv fast float 1.000000e+00, %7849
  %7851 = fmul fast float %7850, %7848
  %7852 = fcmp ogt float %1743, -0.000000e+00
  %7853 = select i1 %7852, float %7847, float %7851
  %7854 = call float @dx.op.binary.f32(i32 36, float %7853, float %7743)  ; FMin(a,b)
  %7855 = fmul fast float %7751, %7854
  %7856 = fmul fast float %7855, %7738
  %7857 = fmul fast float %7855, %7739
  %7858 = fmul fast float %7855, %7740
  %7859 = call float @dx.op.unary.f32(i32 21, float %7856)  ; Exp(value)
  %7860 = call float @dx.op.unary.f32(i32 21, float %7857)  ; Exp(value)
  %7861 = call float @dx.op.unary.f32(i32 21, float %7858)  ; Exp(value)
  %7862 = fmul fast float %7859, %7726
  %7863 = fmul fast float %7860, %7727
  %7864 = fmul fast float %7861, %7728
  %7865 = fmul fast float %7762, %7854
  %7866 = fmul fast float %7865, %7738
  %7867 = fmul fast float %7865, %7739
  %7868 = fmul fast float %7865, %7740
  %7869 = call float @dx.op.unary.f32(i32 21, float %7866)  ; Exp(value)
  %7870 = call float @dx.op.unary.f32(i32 21, float %7867)  ; Exp(value)
  %7871 = call float @dx.op.unary.f32(i32 21, float %7868)  ; Exp(value)
  %7872 = fmul fast float %7869, %7729
  %7873 = fmul fast float %7870, %7730
  %7874 = fmul fast float %7871, %7731
  %7875 = fadd fast float %7872, %7862
  %7876 = fadd fast float %7873, %7863
  %7877 = fadd fast float %7874, %7864
  %7878 = fmul fast float %7853, %7738
  %7879 = fmul fast float %7853, %7739
  %7880 = fmul fast float %7853, %7740
  %7881 = call float @dx.op.unary.f32(i32 21, float %7878)  ; Exp(value)
  %7882 = call float @dx.op.unary.f32(i32 21, float %7879)  ; Exp(value)
  %7883 = call float @dx.op.unary.f32(i32 21, float %7880)  ; Exp(value)
  %7884 = call float @dx.op.unary.f32(i32 7, float %7881)  ; Saturate(value)
  %7885 = call float @dx.op.unary.f32(i32 7, float %7882)  ; Saturate(value)
  %7886 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  %7887 = fmul fast float %7884, %7875
  %7888 = fmul fast float %7885, %7876
  %7889 = fmul fast float %7886, %7877
  %7890 = fsub fast float %7875, %7887
  %7891 = fsub fast float %7876, %7888
  %7892 = fsub fast float %7877, %7889
  %7893 = fmul fast float %7890, %7735
  %7894 = fmul fast float %7891, %7736
  %7895 = fmul fast float %7892, %7737
  %7896 = fsub fast float %7834, %7893
  %7897 = fsub fast float %7835, %7894
  %7898 = fsub fast float %7836, %7895
  %7899 = fmul fast float %7896, %7511
  %7900 = fmul fast float %7897, %7511
  %7901 = fmul fast float %7898, %7511
  %7902 = fadd fast float %7899, %7893
  %7903 = fadd fast float %7900, %7894
  %7904 = fadd fast float %7901, %7895
  %7905 = fsub fast float %7843, %7884
  %7906 = fsub fast float %7844, %7885
  %7907 = fsub fast float %7845, %7886
  %7908 = fmul fast float %7905, %7511
  %7909 = fmul fast float %7906, %7511
  %7910 = fmul fast float %7907, %7511
  %7911 = fadd fast float %7908, %7884
  %7912 = fadd fast float %7909, %7885
  %7913 = fadd fast float %7910, %7886
  br label %7914

; <label>:7914                                    ; preds = %7846, %7722
  %7915 = phi float [ %7902, %7846 ], [ %7834, %7722 ]
  %7916 = phi float [ %7903, %7846 ], [ %7835, %7722 ]
  %7917 = phi float [ %7904, %7846 ], [ %7836, %7722 ]
  %7918 = phi float [ %7911, %7846 ], [ %7843, %7722 ]
  %7919 = phi float [ %7912, %7846 ], [ %7844, %7722 ]
  %7920 = phi float [ %7913, %7846 ], [ %7845, %7722 ]
  %7921 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7922 = extractvalue %dx.types.CBufRet.i32 %7921, 3
  %7923 = and i32 %7922, 3
  %7924 = icmp ne i32 %7923, 0
  %7925 = and i32 %7922, 4
  %7926 = icmp ne i32 %7925, 0
  %7927 = and i1 %7924, %7926
  br i1 %7927, label %7928, label %7935

; <label>:7928                                    ; preds = %7914
  %7929 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %7515, float %7516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7930 = extractvalue %dx.types.ResRet.f32 %7929, 0
  %7931 = fsub fast float 1.000000e+00, %7930
  %7932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.f32 %7932, 0
  %7934 = fcmp fast olt float %7931, %7933
  br label %7938

; <label>:7935                                    ; preds = %7914
  %7936 = icmp eq i32 %7925, 0
  %7937 = and i1 %7924, %7936
  br label %7938

; <label>:7938                                    ; preds = %7935, %7928
  %7939 = phi i1 [ %7934, %7928 ], [ %7937, %7935 ]
  %7940 = xor i1 %1885, %7939
  %7941 = select i1 %7940, float 0.000000e+00, float %7511
  %7942 = fcmp fast ogt float %7941, 0.000000e+00
  %7943 = select i1 %7942, float %7515, float 0.000000e+00
  %7944 = select i1 %7942, float %7516, float 0.000000e+00
  %7945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %7943, float %7944, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7946 = extractvalue %dx.types.ResRet.f32 %7945, 0
  %7947 = extractvalue %dx.types.ResRet.f32 %7945, 1
  %7948 = extractvalue %dx.types.ResRet.f32 %7945, 2
  %7949 = fmul fast float %7947, %7941
  %7950 = fmul fast float %7948, %7941
  %7951 = select i1 %1885, float 0.000000e+00, float %7949
  %7952 = select i1 %1885, float 0.000000e+00, float %7950
  %7953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7954 = extractvalue %dx.types.CBufRet.f32 %7953, 1
  %7955 = fmul fast float %7941, %7918
  %7956 = fmul fast float %7955, %7946
  %7957 = fmul fast float %7956, %7954
  %7958 = fmul fast float %7954, %7919
  %7959 = fmul fast float %7958, %7951
  %7960 = fmul fast float %7954, %7920
  %7961 = fmul fast float %7960, %7952
  %7962 = fadd fast float %7957, %7915
  %7963 = fadd fast float %7959, %7916
  %7964 = fadd fast float %7961, %7917
  br label %8004

; <label>:7965                                    ; preds = %7487
  %7966 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7967 = extractvalue %dx.types.CBufRet.i32 %7966, 3
  %7968 = and i32 %7967, 3
  %7969 = icmp ne i32 %7968, 0
  %7970 = and i32 %7967, 4
  %7971 = icmp ne i32 %7970, 0
  %7972 = and i1 %7969, %7971
  br i1 %7972, label %7973, label %7980

; <label>:7973                                    ; preds = %7965
  %7974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %7515, float %7516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7975 = extractvalue %dx.types.ResRet.f32 %7974, 0
  %7976 = fsub fast float 1.000000e+00, %7975
  %7977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %7978 = extractvalue %dx.types.CBufRet.f32 %7977, 0
  %7979 = fcmp fast olt float %7976, %7978
  br label %7983

; <label>:7980                                    ; preds = %7965
  %7981 = icmp eq i32 %7970, 0
  %7982 = and i1 %7969, %7981
  br label %7983

; <label>:7983                                    ; preds = %7980, %7973
  %7984 = phi i1 [ %7979, %7973 ], [ %7982, %7980 ]
  %7985 = xor i1 %1885, %7984
  %7986 = select i1 %7985, float 0.000000e+00, float %7511
  %7987 = fcmp fast ogt float %7986, 0.000000e+00
  %7988 = select i1 %7987, float %7515, float 0.000000e+00
  %7989 = select i1 %7987, float %7516, float 0.000000e+00
  %7990 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %61, float %7988, float %7989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7991 = extractvalue %dx.types.ResRet.f32 %7990, 0
  %7992 = extractvalue %dx.types.ResRet.f32 %7990, 1
  %7993 = extractvalue %dx.types.ResRet.f32 %7990, 2
  %7994 = fmul fast float %7991, %7986
  %7995 = fmul fast float %7992, %7986
  %7996 = fmul fast float %7993, %7986
  %7997 = select i1 %1885, float 0.000000e+00, float %7995
  %7998 = select i1 %1885, float 0.000000e+00, float %7996
  %7999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8000 = extractvalue %dx.types.CBufRet.f32 %7999, 1
  %8001 = fmul fast float %7994, %8000
  %8002 = fmul fast float %7997, %8000
  %8003 = fmul fast float %7998, %8000
  br label %8004

; <label>:8004                                    ; preds = %7983, %7938
  %8005 = phi float [ %8001, %7983 ], [ %7962, %7938 ]
  %8006 = phi float [ %8002, %7983 ], [ %7963, %7938 ]
  %8007 = phi float [ %8003, %7983 ], [ %7964, %7938 ]
  %8008 = fmul fast float %4789, %8005
  %8009 = fmul fast float %4789, %8006
  %8010 = fmul fast float %4789, %8007
  %8011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8012 = extractvalue %dx.types.CBufRet.f32 %8011, 0
  %8013 = bitcast float %8012 to i32
  %8014 = and i32 %8013, 255
  %8015 = uitofp i32 %8014 to float
  %8016 = fptoui float %8015 to i32
  %8017 = icmp eq i32 %8016, 13
  br i1 %8017, label %8018, label %8038

; <label>:8018                                    ; preds = %8004
  %8019 = fadd fast float %1202, 2.000000e+00
  %8020 = fadd fast float %1204, 1.000000e+00
  %8021 = fsub fast float 1.000000e+00, %1205
  %8022 = fmul fast float %8019, 5.000000e-01
  %8023 = fmul fast float %8020, 5.000000e-01
  %8024 = fmul fast float %8021, 5.000000e-01
  %8025 = call float @dx.op.unary.f32(i32 7, float %8022)  ; Saturate(value)
  %8026 = call float @dx.op.unary.f32(i32 7, float %8023)  ; Saturate(value)
  %8027 = call float @dx.op.unary.f32(i32 7, float %8024)  ; Saturate(value)
  %8028 = fmul fast float %8025, 1.023000e+03
  %8029 = fmul fast float %8026, 1.023000e+03
  %8030 = fmul fast float %8027, 1.023000e+03
  %8031 = fptoui float %8028 to i32
  %8032 = fptoui float %8029 to i32
  %8033 = fptoui float %8030 to i32
  %8034 = shl i32 %8032, 10
  %8035 = or i32 %8034, %8031
  %8036 = shl i32 %8033, 20
  %8037 = or i32 %8035, %8036
  br label %8038

; <label>:8038                                    ; preds = %8018, %8004
  %8039 = phi i32 [ %8037, %8018 ], [ %7490, %8004 ]
  %8040 = icmp eq i32 %8016, 14
  br i1 %8040, label %8041, label %8061

; <label>:8041                                    ; preds = %8038
  %8042 = fadd fast float %1199, 1.000000e+00
  %8043 = fadd fast float %1209, 1.000000e+00
  %8044 = fsub fast float 1.000000e+00, %118
  %8045 = fmul fast float %8042, 5.000000e-01
  %8046 = fmul fast float %8043, 5.000000e-01
  %8047 = fmul fast float %8044, 5.000000e-01
  %8048 = call float @dx.op.unary.f32(i32 7, float %8045)  ; Saturate(value)
  %8049 = call float @dx.op.unary.f32(i32 7, float %8046)  ; Saturate(value)
  %8050 = call float @dx.op.unary.f32(i32 7, float %8047)  ; Saturate(value)
  %8051 = fmul fast float %8048, 1.023000e+03
  %8052 = fmul fast float %8049, 1.023000e+03
  %8053 = fmul fast float %8050, 1.023000e+03
  %8054 = fptoui float %8051 to i32
  %8055 = fptoui float %8052 to i32
  %8056 = fptoui float %8053 to i32
  %8057 = shl i32 %8055, 10
  %8058 = or i32 %8057, %8054
  %8059 = shl i32 %8056, 20
  %8060 = or i32 %8058, %8059
  br label %8061

; <label>:8061                                    ; preds = %8041, %8038
  %8062 = phi i32 [ %8060, %8041 ], [ %8039, %8038 ]
  %8063 = icmp eq i32 %8016, 15
  br i1 %8063, label %8064, label %8084

; <label>:8064                                    ; preds = %8061
  %8065 = fadd fast float %117, 1.000000e+00
  %8066 = fadd fast float %118, 1.000000e+00
  %8067 = fadd fast float %119, 1.000000e+00
  %8068 = fmul fast float %8065, 5.000000e-01
  %8069 = fmul fast float %8066, 5.000000e-01
  %8070 = fmul fast float %8067, 5.000000e-01
  %8071 = call float @dx.op.unary.f32(i32 7, float %8068)  ; Saturate(value)
  %8072 = call float @dx.op.unary.f32(i32 7, float %8069)  ; Saturate(value)
  %8073 = call float @dx.op.unary.f32(i32 7, float %8070)  ; Saturate(value)
  %8074 = fmul fast float %8071, 1.023000e+03
  %8075 = fmul fast float %8072, 1.023000e+03
  %8076 = fmul fast float %8073, 1.023000e+03
  %8077 = fptoui float %8074 to i32
  %8078 = fptoui float %8075 to i32
  %8079 = fptoui float %8076 to i32
  %8080 = shl i32 %8078, 10
  %8081 = or i32 %8080, %8077
  %8082 = shl i32 %8079, 20
  %8083 = or i32 %8081, %8082
  br label %8084

; <label>:8084                                    ; preds = %8064, %8061
  %8085 = phi i32 [ %8083, %8064 ], [ %8062, %8061 ]
  %8086 = fsub fast float 1.000000e+00, %1892
  %8087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8088 = extractvalue %dx.types.CBufRet.f32 %8087, 0
  %8089 = fmul fast float %8088, %8086
  %8090 = fmul fast float %1715, 2.000000e+00
  %8091 = fmul fast float %8090, %1752
  %8092 = fsub fast float %1743, %8091
  %8093 = call float @dx.op.unary.f32(i32 7, float %8092)  ; Saturate(value)
  %8094 = fsub fast float 1.000000e+00, %8093
  %8095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8096 = extractvalue %dx.types.CBufRet.f32 %8095, 3
  %8097 = fmul fast float %8096, %8094
  %8098 = fsub fast float 1.000000e+00, %1859
  %8099 = call float @dx.op.unary.f32(i32 7, float %8098)  ; Saturate(value)
  %8100 = fadd fast float %7508, %1861
  %8101 = fmul fast float %8100, %1859
  %8102 = fmul fast float %8097, %8099
  %8103 = icmp eq i32 %8016, 39
  %8104 = icmp eq i32 %8016, 40
  %8105 = select i1 %8104, float %1859, float 0.000000e+00
  %8106 = select i1 %8103, float %8100, float %8105
  %8107 = fmul fast float %7506, %1725
  %8108 = fmul fast float %7507, %1726
  %8109 = fmul fast float %7508, %1727
  %8110 = fadd fast float %8107, %7503
  %8111 = fadd fast float %8110, %8008
  %8112 = fadd fast float %8108, %7504
  %8113 = fadd fast float %8112, %8009
  %8114 = fadd fast float %8109, %7505
  %8115 = fadd fast float %8114, %8010
  br i1 %115, label %8116, label %8918

; <label>:8116                                    ; preds = %8084
  %8117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8118 = extractvalue %dx.types.CBufRet.f32 %8117, 0
  %8119 = extractvalue %dx.types.CBufRet.f32 %8117, 1
  %8120 = extractvalue %dx.types.CBufRet.f32 %8117, 2
  %8121 = extractvalue %dx.types.CBufRet.f32 %8117, 3
  %8122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8123 = extractvalue %dx.types.CBufRet.f32 %8122, 0
  %8124 = extractvalue %dx.types.CBufRet.f32 %8122, 1
  %8125 = extractvalue %dx.types.CBufRet.f32 %8122, 2
  %8126 = extractvalue %dx.types.CBufRet.f32 %8122, 3
  %8127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8128 = extractvalue %dx.types.CBufRet.f32 %8127, 0
  %8129 = extractvalue %dx.types.CBufRet.f32 %8127, 1
  %8130 = extractvalue %dx.types.CBufRet.f32 %8127, 2
  %8131 = extractvalue %dx.types.CBufRet.f32 %8127, 3
  %8132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8133 = extractvalue %dx.types.CBufRet.f32 %8132, 0
  %8134 = extractvalue %dx.types.CBufRet.f32 %8132, 1
  %8135 = extractvalue %dx.types.CBufRet.f32 %8132, 2
  %8136 = extractvalue %dx.types.CBufRet.f32 %8132, 3
  %8137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8138 = extractvalue %dx.types.CBufRet.f32 %8137, 3
  %8139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8140 = extractvalue %dx.types.CBufRet.f32 %8139, 3
  %8141 = extractvalue %dx.types.CBufRet.f32 %8139, 0
  %8142 = extractvalue %dx.types.CBufRet.f32 %8139, 1
  %8143 = extractvalue %dx.types.CBufRet.f32 %8139, 2
  %8144 = fcmp fast olt float %8143, -5.000000e-01
  %8145 = fmul fast float %1740, %1739
  %8146 = fadd fast float %8145, %8121
  %8147 = call float @dx.op.dot3.f32(i32 55, float %1741, float %1742, float %1743, float %8118, float %8119, float %8120)  ; Dot3(ax,ay,az,bx,by,bz)
  %8148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8149 = extractvalue %dx.types.CBufRet.i32 %8148, 1
  %8150 = and i32 %8149, 1
  %8151 = icmp ne i32 %8150, 0
  %8152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8153 = extractvalue %dx.types.CBufRet.f32 %8152, 2
  %8154 = fcmp fast ogt float %8153, 0.000000e+00
  %8155 = and i1 %8151, %8154
  br i1 %8155, label %8156, label %8562, !dx.controlflow.hints !164

; <label>:8156                                    ; preds = %8116
  %8157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8158 = extractvalue %dx.types.CBufRet.f32 %8157, 3
  %8159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8160 = extractvalue %dx.types.CBufRet.f32 %8159, 2
  %8161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8162 = extractvalue %dx.types.CBufRet.f32 %8161, 2
  %8163 = fsub fast float %8160, %8162
  %8164 = and i32 %8149, 2
  %8165 = extractvalue %dx.types.CBufRet.i32 %8148, 0
  %8166 = call i32 @dx.op.binary.i32(i32 40, i32 %8165, i32 3)  ; UMin(a,b)
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8169 = extractvalue %dx.types.CBufRet.f32 %8167, 1
  %8170 = extractvalue %dx.types.CBufRet.f32 %8161, 0
  %8171 = extractvalue %dx.types.CBufRet.f32 %8161, 1
  %8172 = fsub fast float %8168, %8170
  %8173 = fsub fast float %8169, %8171
  %8174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8175 = extractvalue %dx.types.CBufRet.f32 %8174, 0
  %8176 = fcmp fast ogt float %8175, 0.000000e+00
  %8177 = fsub fast float -0.000000e+00, %8172
  %8178 = fsub fast float -0.000000e+00, %8173
  %8179 = call float @dx.op.dot2.f32(i32 54, float %1741, float %1742, float %1741, float %1742)  ; Dot2(ax,ay,bx,by)
  %8180 = call float @dx.op.dot2.f32(i32 54, float %1741, float %1742, float %8177, float %8178)  ; Dot2(ax,ay,bx,by)
  %8181 = fmul fast float %8180, 2.000000e+00
  %8182 = call float @dx.op.dot2.f32(i32 54, float %8177, float %8178, float %8177, float %8178)  ; Dot2(ax,ay,bx,by)
  %8183 = fmul fast float %8175, %8175
  %8184 = fsub fast float %8182, %8183
  %8185 = fmul fast float %8181, %8181
  %8186 = fmul fast float %8179, 4.000000e+00
  %8187 = fmul fast float %8186, %8184
  %8188 = fsub fast float %8185, %8187
  %8189 = fcmp fast ogt float %8188, 0.000000e+00
  br i1 %8189, label %8190, label %8205

; <label>:8190                                    ; preds = %8156
  %8191 = fcmp fast ogt float %8181, 0.000000e+00
  %8192 = call float @dx.op.unary.f32(i32 24, float %8188)  ; Sqrt(value)
  %8193 = fsub fast float -0.000000e+00, %8192
  %8194 = select i1 %8191, float %8192, float %8193
  %8195 = fadd fast float %8194, %8181
  %8196 = fmul float %8195, -5.000000e-01
  %8197 = fdiv fast float %8196, %8179
  %8198 = call float @dx.op.binary.f32(i32 35, float %8197, float 0.000000e+00)  ; FMax(a,b)
  %8199 = call float @dx.op.binary.f32(i32 36, float %8145, float %8198)  ; FMin(a,b)
  %8200 = fdiv fast float %8184, %8196
  %8201 = call float @dx.op.binary.f32(i32 35, float %8200, float 0.000000e+00)  ; FMax(a,b)
  %8202 = call float @dx.op.binary.f32(i32 36, float %8145, float %8201)  ; FMin(a,b)
  %8203 = call float @dx.op.binary.f32(i32 36, float %8199, float %8202)  ; FMin(a,b)
  %8204 = call float @dx.op.binary.f32(i32 35, float %8199, float %8202)  ; FMax(a,b)
  br label %8205

; <label>:8205                                    ; preds = %8190, %8156
  %8206 = phi float [ %8204, %8190 ], [ -1.000000e+00, %8156 ]
  %8207 = phi float [ %8203, %8190 ], [ -1.000000e+00, %8156 ]
  %8208 = phi i1 [ true, %8190 ], [ false, %8156 ]
  %8209 = and i1 %8176, %8208
  br i1 %8209, label %8210, label %8212

; <label>:8210                                    ; preds = %8205
  %8211 = fcmp fast oeq float %8207, %8206
  br i1 %8211, label %8515, label %8213

; <label>:8212                                    ; preds = %8205
  br i1 %8176, label %8515, label %8213

; <label>:8213                                    ; preds = %8212, %8210
  %8214 = phi float [ %8145, %8212 ], [ %8206, %8210 ]
  %8215 = phi float [ 0.000000e+00, %8212 ], [ %8207, %8210 ]
  %8216 = icmp ne i32 %8164, 0
  %8217 = fmul fast float %8214, %1743
  %8218 = fadd fast float %8217, %8158
  %8219 = fmul fast float %8218, %8214
  %8220 = select i1 %8216, float 0.000000e+00, float %8219
  %8221 = fcmp fast oeq float %1743, 0.000000e+00
  %8222 = fdiv fast float %8163, %1743
  %8223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8222)  ; FMax(a,b)
  %8224 = select i1 %8221, float %8214, float %8223
  %8225 = call float @dx.op.binary.f32(i32 36, float %8214, float %8224)  ; FMin(a,b)
  %8226 = fcmp fast ogt float %1743, 0.000000e+00
  %8227 = fcmp fast olt float %8163, 0.000000e+00
  br i1 %8226, label %8228, label %8285

; <label>:8228                                    ; preds = %8213
  %8229 = icmp eq i32 %8164, 0
  br i1 %8227, label %8230, label %8274

; <label>:8230                                    ; preds = %8228
  %8231 = select i1 %8229, float %8214, float 0.000000e+00
  %8232 = fsub fast float -0.000000e+00, %8231
  %8233 = call float @dx.op.unary.f32(i32 6, float %8232)  ; FAbs(value)
  %8234 = fmul fast float %8231, %1743
  %8235 = fadd fast float %8234, %8158
  %8236 = fmul fast float %8233, %8235
  %8237 = fsub fast float %8220, %8236
  %8238 = fsub fast float %8214, %8233
  %8239 = select i1 %8229, float %8238, float 0.000000e+00
  %8240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8241 = extractvalue %dx.types.CBufRet.f32 %8240, 0
  %8242 = extractvalue %dx.types.CBufRet.f32 %8240, 1
  %8243 = extractvalue %dx.types.CBufRet.f32 %8240, 2
  %8244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8245 = extractvalue %dx.types.CBufRet.f32 %8244, 0
  %8246 = extractvalue %dx.types.CBufRet.f32 %8244, 1
  %8247 = extractvalue %dx.types.CBufRet.f32 %8244, 2
  %8248 = extractvalue %dx.types.CBufRet.f32 %8244, 3
  %8249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8250 = extractvalue %dx.types.CBufRet.f32 %8249, 3
  %8251 = call float @dx.op.binary.f32(i32 36, float %8237, float %8250)  ; FMin(a,b)
  %8252 = fmul fast float %8248, %8239
  %8253 = call float @dx.op.unary.f32(i32 7, float %8252)  ; Saturate(value)
  %8254 = fsub fast float %8245, %8241
  %8255 = fsub fast float %8246, %8242
  %8256 = fsub fast float %8247, %8243
  %8257 = fmul fast float %8253, %8254
  %8258 = fmul fast float %8253, %8255
  %8259 = fmul fast float %8253, %8256
  %8260 = fadd fast float %8257, %8241
  %8261 = fadd fast float %8258, %8242
  %8262 = fadd fast float %8259, %8243
  %8263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8264 = extractvalue %dx.types.CBufRet.f32 %8263, 0
  %8265 = extractvalue %dx.types.CBufRet.f32 %8263, 1
  %8266 = fadd fast float %8265, %8264
  %8267 = call float @dx.op.unary.f32(i32 7, float %8266)  ; Saturate(value)
  %8268 = extractvalue %dx.types.CBufRet.f32 %8263, 2
  %8269 = extractvalue %dx.types.CBufRet.f32 %8263, 3
  %8270 = fadd fast float %8269, %8268
  %8271 = call float @dx.op.unary.f32(i32 7, float %8270)  ; Saturate(value)
  %8272 = fmul fast float %8267, %8251
  %8273 = fmul fast float %8272, %8271
  br label %8515

; <label>:8274                                    ; preds = %8228
  br i1 %8229, label %8275, label %8296

; <label>:8275                                    ; preds = %8274
  %8276 = call float @dx.op.binary.f32(i32 36, float %8225, float %8215)  ; FMin(a,b)
  %8277 = fsub fast float %8225, %8276
  %8278 = fsub fast float %8277, %8214
  %8279 = call float @dx.op.unary.f32(i32 6, float %8278)  ; FAbs(value)
  %8280 = fadd fast float %8277, %8214
  %8281 = fmul fast float %8280, %1743
  %8282 = fadd fast float %8281, %8158
  %8283 = fmul fast float %8282, %8279
  %8284 = fsub fast float %8220, %8283
  br label %8296

; <label>:8285                                    ; preds = %8213
  br i1 %8227, label %8286, label %8296

; <label>:8286                                    ; preds = %8285
  %8287 = call float @dx.op.binary.f32(i32 35, float %8215, float %8225)  ; FMax(a,b)
  %8288 = icmp eq i32 %8164, 0
  %8289 = select i1 %8288, float %8225, float 0.000000e+00
  %8290 = fsub fast float -0.000000e+00, %8289
  %8291 = call float @dx.op.unary.f32(i32 6, float %8290)  ; FAbs(value)
  %8292 = fmul fast float %8289, %1743
  %8293 = fadd fast float %8292, %8158
  %8294 = fmul fast float %8291, %8293
  %8295 = fsub fast float %8220, %8294
  br label %8296

; <label>:8296                                    ; preds = %8286, %8285, %8275, %8274
  %8297 = phi float [ %8215, %8274 ], [ %8215, %8275 ], [ %8287, %8286 ], [ %8215, %8285 ]
  %8298 = phi float [ 0.000000e+00, %8274 ], [ %8279, %8275 ], [ %8291, %8286 ], [ 0.000000e+00, %8285 ]
  %8299 = phi float [ %8220, %8274 ], [ %8284, %8275 ], [ %8295, %8286 ], [ %8220, %8285 ]
  %8300 = phi float [ %8225, %8274 ], [ %8225, %8275 ], [ %8214, %8286 ], [ %8214, %8285 ]
  %8301 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %8301, align 4, !tbaa !106, !noalias !165
  %8302 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %8302, align 4, !tbaa !106, !noalias !165
  %8303 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %8303, align 4, !tbaa !106, !noalias !165
  %8304 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8304, align 4, !tbaa !106, !noalias !165
  %8305 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8305, align 4, !tbaa !106, !noalias !165
  %8306 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8306, align 4, !tbaa !106, !noalias !165
  %8307 = icmp sgt i32 %8166, 0
  br i1 %8307, label %8308, label %8369

; <label>:8308                                    ; preds = %8296
  br label %8309

; <label>:8309                                    ; preds = %8358, %8308
  %8310 = phi i32 [ %8359, %8358 ], [ 0, %8308 ]
  %8311 = phi i32 [ %8360, %8358 ], [ 0, %8308 ]
  %8312 = add nuw i32 %8311, 171
  %8313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %8312)  ; CBufferLoadLegacy(handle,regIndex)
  %8314 = extractvalue %dx.types.CBufRet.f32 %8313, 0
  %8315 = extractvalue %dx.types.CBufRet.f32 %8313, 1
  %8316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8317 = extractvalue %dx.types.CBufRet.f32 %8316, 0
  %8318 = extractvalue %dx.types.CBufRet.f32 %8316, 1
  %8319 = fsub fast float %8314, %8317
  %8320 = fsub fast float %8315, %8318
  %8321 = extractvalue %dx.types.CBufRet.f32 %8313, 2
  %8322 = fsub fast float -0.000000e+00, %8319
  %8323 = fsub fast float -0.000000e+00, %8320
  %8324 = call float @dx.op.dot2.f32(i32 54, float %1741, float %1742, float %8322, float %8323)  ; Dot2(ax,ay,bx,by)
  %8325 = fmul fast float %8324, 2.000000e+00
  %8326 = call float @dx.op.dot2.f32(i32 54, float %8322, float %8323, float %8322, float %8323)  ; Dot2(ax,ay,bx,by)
  %8327 = fmul fast float %8321, %8321
  %8328 = fsub fast float %8326, %8327
  %8329 = fmul fast float %8325, %8325
  %8330 = fmul fast float %8186, %8328
  %8331 = fsub fast float %8329, %8330
  %8332 = fcmp fast ogt float %8331, 0.000000e+00
  br i1 %8332, label %8333, label %8348

; <label>:8333                                    ; preds = %8309
  %8334 = fcmp fast ogt float %8325, 0.000000e+00
  %8335 = call float @dx.op.unary.f32(i32 24, float %8331)  ; Sqrt(value)
  %8336 = fsub fast float -0.000000e+00, %8335
  %8337 = select i1 %8334, float %8335, float %8336
  %8338 = fadd fast float %8337, %8325
  %8339 = fmul float %8338, -5.000000e-01
  %8340 = fdiv fast float %8339, %8179
  %8341 = call float @dx.op.binary.f32(i32 35, float %8340, float 0.000000e+00)  ; FMax(a,b)
  %8342 = call float @dx.op.binary.f32(i32 36, float %8214, float %8341)  ; FMin(a,b)
  %8343 = fdiv fast float %8328, %8339
  %8344 = call float @dx.op.binary.f32(i32 35, float %8343, float 0.000000e+00)  ; FMax(a,b)
  %8345 = call float @dx.op.binary.f32(i32 36, float %8214, float %8344)  ; FMin(a,b)
  %8346 = call float @dx.op.binary.f32(i32 36, float %8342, float %8345)  ; FMin(a,b)
  %8347 = call float @dx.op.binary.f32(i32 35, float %8342, float %8345)  ; FMax(a,b)
  br label %8348

; <label>:8348                                    ; preds = %8333, %8309
  %8349 = phi float [ %8347, %8333 ], [ -1.000000e+00, %8309 ]
  %8350 = phi float [ %8346, %8333 ], [ -1.000000e+00, %8309 ]
  %8351 = phi i1 [ true, %8333 ], [ false, %8309 ]
  br i1 %8351, label %8352, label %8358

; <label>:8352                                    ; preds = %8348
  %8353 = call float @dx.op.binary.f32(i32 35, float %8297, float %8350)  ; FMax(a,b)
  %8354 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8311
  store float %8353, float* %8354, align 4, !tbaa !106, !noalias !165
  %8355 = call float @dx.op.binary.f32(i32 35, float %8297, float %8349)  ; FMax(a,b)
  %8356 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8311
  store float %8355, float* %8356, align 4, !tbaa !106, !noalias !165
  %8357 = add nsw i32 %8310, 1
  br label %8358

; <label>:8358                                    ; preds = %8352, %8348
  %8359 = phi i32 [ %8357, %8352 ], [ %8310, %8348 ]
  %8360 = add nuw nsw i32 %8311, 1
  %8361 = icmp eq i32 %8360, %8166
  br i1 %8361, label %8362, label %8309

; <label>:8362                                    ; preds = %8358
  %8363 = load float, float* %8303, align 4, !tbaa !106, !alias.scope !181, !noalias !184
  %8364 = load float, float* %8302, align 4, !tbaa !106, !alias.scope !187, !noalias !188
  %8365 = load float, float* %8301, align 4, !tbaa !106, !alias.scope !189, !noalias !190
  %8366 = load float, float* %8306, align 4, !tbaa !106, !alias.scope !191, !noalias !194
  %8367 = load float, float* %8305, align 4, !tbaa !106, !alias.scope !197, !noalias !198
  %8368 = load float, float* %8304, align 4, !tbaa !106, !alias.scope !199, !noalias !200
  br label %8369

; <label>:8369                                    ; preds = %8362, %8296
  %8370 = phi float [ -1.000000e+00, %8296 ], [ %8368, %8362 ]
  %8371 = phi float [ -1.000000e+00, %8296 ], [ %8367, %8362 ]
  %8372 = phi float [ -1.000000e+00, %8296 ], [ %8366, %8362 ]
  %8373 = phi float [ -1.000000e+00, %8296 ], [ %8365, %8362 ]
  %8374 = phi float [ -1.000000e+00, %8296 ], [ %8364, %8362 ]
  %8375 = phi float [ -1.000000e+00, %8296 ], [ %8363, %8362 ]
  %8376 = phi i32 [ 0, %8296 ], [ %8359, %8362 ]
  %8377 = call float @dx.op.binary.f32(i32 36, float %8374, float %8375)  ; FMin(a,b)
  %8378 = call float @dx.op.binary.f32(i32 36, float %8373, float %8377)  ; FMin(a,b)
  %8379 = call float @dx.op.binary.f32(i32 35, float %8373, float %8374)  ; FMax(a,b)
  %8380 = call float @dx.op.binary.f32(i32 36, float %8379, float %8375)  ; FMin(a,b)
  %8381 = call float @dx.op.binary.f32(i32 36, float %8373, float %8374)  ; FMin(a,b)
  %8382 = call float @dx.op.binary.f32(i32 35, float %8381, float %8380)  ; FMax(a,b)
  %8383 = call float @dx.op.binary.f32(i32 35, float %8374, float %8375)  ; FMax(a,b)
  %8384 = call float @dx.op.binary.f32(i32 35, float %8373, float %8383)  ; FMax(a,b)
  store float %8378, float* %8301, align 4, !tbaa !106, !alias.scope !189, !noalias !190
  store float %8382, float* %8302, align 4, !tbaa !106, !alias.scope !187, !noalias !188
  store float %8384, float* %8303, align 4, !tbaa !106, !alias.scope !181, !noalias !184
  %8385 = call float @dx.op.binary.f32(i32 36, float %8371, float %8372)  ; FMin(a,b)
  %8386 = call float @dx.op.binary.f32(i32 36, float %8370, float %8385)  ; FMin(a,b)
  %8387 = call float @dx.op.binary.f32(i32 35, float %8370, float %8371)  ; FMax(a,b)
  %8388 = call float @dx.op.binary.f32(i32 36, float %8387, float %8372)  ; FMin(a,b)
  %8389 = call float @dx.op.binary.f32(i32 36, float %8370, float %8371)  ; FMin(a,b)
  %8390 = call float @dx.op.binary.f32(i32 35, float %8389, float %8388)  ; FMax(a,b)
  %8391 = call float @dx.op.binary.f32(i32 35, float %8371, float %8372)  ; FMax(a,b)
  %8392 = call float @dx.op.binary.f32(i32 35, float %8370, float %8391)  ; FMax(a,b)
  store float %8386, float* %8304, align 4, !tbaa !106, !alias.scope !199, !noalias !200
  store float %8390, float* %8305, align 4, !tbaa !106, !alias.scope !197, !noalias !198
  store float %8392, float* %8306, align 4, !tbaa !106, !alias.scope !191, !noalias !194
  %8393 = sub nsw i32 3, %8376
  %8394 = icmp sgt i32 %8393, 2
  br i1 %8394, label %8395, label %8433

; <label>:8395                                    ; preds = %8369
  %8396 = icmp eq i32 %8164, 0
  %8397 = fsub fast float %8214, %8298
  %8398 = select i1 %8396, float %8397, float %8298
  %8399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8400 = extractvalue %dx.types.CBufRet.f32 %8399, 0
  %8401 = extractvalue %dx.types.CBufRet.f32 %8399, 1
  %8402 = extractvalue %dx.types.CBufRet.f32 %8399, 2
  %8403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8404 = extractvalue %dx.types.CBufRet.f32 %8403, 0
  %8405 = extractvalue %dx.types.CBufRet.f32 %8403, 1
  %8406 = extractvalue %dx.types.CBufRet.f32 %8403, 2
  %8407 = extractvalue %dx.types.CBufRet.f32 %8403, 3
  %8408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8409 = extractvalue %dx.types.CBufRet.f32 %8408, 3
  %8410 = call float @dx.op.binary.f32(i32 36, float %8299, float %8409)  ; FMin(a,b)
  %8411 = fmul fast float %8407, %8398
  %8412 = call float @dx.op.unary.f32(i32 7, float %8411)  ; Saturate(value)
  %8413 = fsub fast float %8404, %8400
  %8414 = fsub fast float %8405, %8401
  %8415 = fsub fast float %8406, %8402
  %8416 = fmul fast float %8412, %8413
  %8417 = fmul fast float %8412, %8414
  %8418 = fmul fast float %8412, %8415
  %8419 = fadd fast float %8416, %8400
  %8420 = fadd fast float %8417, %8401
  %8421 = fadd fast float %8418, %8402
  %8422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8423 = extractvalue %dx.types.CBufRet.f32 %8422, 0
  %8424 = extractvalue %dx.types.CBufRet.f32 %8422, 1
  %8425 = fadd fast float %8424, %8423
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8422, 2
  %8428 = extractvalue %dx.types.CBufRet.f32 %8422, 3
  %8429 = fadd fast float %8428, %8427
  %8430 = call float @dx.op.unary.f32(i32 7, float %8429)  ; Saturate(value)
  %8431 = fmul fast float %8426, %8410
  %8432 = fmul fast float %8431, %8430
  br label %8515

; <label>:8433                                    ; preds = %8369
  %8434 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8393
  %8435 = load float, float* %8434, align 4, !tbaa !106, !noalias !165
  %8436 = fcmp fast olt float %8435, %8300
  %8437 = icmp sgt i32 %8376, 0
  %8438 = and i1 %8437, %8436
  br i1 %8438, label %8439, label %8476

; <label>:8439                                    ; preds = %8433
  br label %8440

; <label>:8440                                    ; preds = %8469, %8439
  %8441 = phi float [ %8470, %8469 ], [ %8298, %8439 ]
  %8442 = phi float [ %8471, %8469 ], [ %8299, %8439 ]
  %8443 = phi float [ %8451, %8469 ], [ %8435, %8439 ]
  %8444 = phi i32 [ %8448, %8469 ], [ %8393, %8439 ]
  %8445 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8444
  %8446 = load float, float* %8445, align 4, !tbaa !106, !noalias !165
  %8447 = icmp slt i32 %8444, 2
  %8448 = add nsw i32 %8444, 1
  %8449 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8448
  %8450 = load float, float* %8449, align 4, !tbaa !106, !noalias !165
  %8451 = select i1 %8447, float %8450, float %8214
  %8452 = call float @dx.op.binary.f32(i32 36, float %8451, float %8446)  ; FMin(a,b)
  %8453 = call float @dx.op.binary.f32(i32 36, float %8300, float %8452)  ; FMin(a,b)
  %8454 = icmp eq i32 %8164, 0
  %8455 = fadd fast float %8453, %8443
  %8456 = fmul fast float %8455, %1743
  %8457 = fadd fast float %8456, %8158
  br i1 %8454, label %8463, label %8458

; <label>:8458                                    ; preds = %8440
  %8459 = fsub fast float %8453, %8443
  %8460 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8459)  ; FMax(a,b)
  %8461 = fmul fast float %8460, %8457
  %8462 = fadd fast float %8461, %8442
  br label %8469

; <label>:8463                                    ; preds = %8440
  %8464 = fsub fast float %8443, %8453
  %8465 = call float @dx.op.unary.f32(i32 6, float %8464)  ; FAbs(value)
  %8466 = fadd fast float %8465, %8441
  %8467 = fmul fast float %8465, %8457
  %8468 = fsub fast float %8442, %8467
  br label %8469

; <label>:8469                                    ; preds = %8463, %8458
  %8470 = phi float [ %8460, %8458 ], [ %8466, %8463 ]
  %8471 = phi float [ %8462, %8458 ], [ %8468, %8463 ]
  %8472 = fcmp fast olt float %8451, %8300
  %8473 = icmp slt i32 %8448, 3
  %8474 = and i1 %8473, %8472
  br i1 %8474, label %8440, label %8475

; <label>:8475                                    ; preds = %8469
  br label %8476

; <label>:8476                                    ; preds = %8475, %8433
  %8477 = phi float [ %8298, %8433 ], [ %8470, %8475 ]
  %8478 = phi float [ %8299, %8433 ], [ %8471, %8475 ]
  %8479 = fsub fast float %8214, %8477
  %8480 = select i1 %8216, float %8477, float %8479
  %8481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8482 = extractvalue %dx.types.CBufRet.f32 %8481, 0
  %8483 = extractvalue %dx.types.CBufRet.f32 %8481, 1
  %8484 = extractvalue %dx.types.CBufRet.f32 %8481, 2
  %8485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8486 = extractvalue %dx.types.CBufRet.f32 %8485, 0
  %8487 = extractvalue %dx.types.CBufRet.f32 %8485, 1
  %8488 = extractvalue %dx.types.CBufRet.f32 %8485, 2
  %8489 = extractvalue %dx.types.CBufRet.f32 %8485, 3
  %8490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8491 = extractvalue %dx.types.CBufRet.f32 %8490, 3
  %8492 = call float @dx.op.binary.f32(i32 36, float %8478, float %8491)  ; FMin(a,b)
  %8493 = fmul fast float %8489, %8480
  %8494 = call float @dx.op.unary.f32(i32 7, float %8493)  ; Saturate(value)
  %8495 = fsub fast float %8486, %8482
  %8496 = fsub fast float %8487, %8483
  %8497 = fsub fast float %8488, %8484
  %8498 = fmul fast float %8494, %8495
  %8499 = fmul fast float %8494, %8496
  %8500 = fmul fast float %8494, %8497
  %8501 = fadd fast float %8498, %8482
  %8502 = fadd fast float %8499, %8483
  %8503 = fadd fast float %8500, %8484
  %8504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8505 = extractvalue %dx.types.CBufRet.f32 %8504, 0
  %8506 = extractvalue %dx.types.CBufRet.f32 %8504, 1
  %8507 = fadd fast float %8506, %8505
  %8508 = call float @dx.op.unary.f32(i32 7, float %8507)  ; Saturate(value)
  %8509 = extractvalue %dx.types.CBufRet.f32 %8504, 2
  %8510 = extractvalue %dx.types.CBufRet.f32 %8504, 3
  %8511 = fadd fast float %8510, %8509
  %8512 = call float @dx.op.unary.f32(i32 7, float %8511)  ; Saturate(value)
  %8513 = fmul fast float %8508, %8492
  %8514 = fmul fast float %8513, %8512
  br label %8515

; <label>:8515                                    ; preds = %8476, %8395, %8230, %8212, %8210
  %8516 = phi float [ %8239, %8230 ], [ %8398, %8395 ], [ %8480, %8476 ], [ 0.000000e+00, %8210 ], [ 0.000000e+00, %8212 ]
  %8517 = phi float [ %8273, %8230 ], [ %8432, %8395 ], [ %8514, %8476 ], [ 0.000000e+00, %8210 ], [ 0.000000e+00, %8212 ]
  %8518 = phi float [ %8260, %8230 ], [ %8419, %8395 ], [ %8501, %8476 ], [ 0.000000e+00, %8210 ], [ 0.000000e+00, %8212 ]
  %8519 = phi float [ %8261, %8230 ], [ %8420, %8395 ], [ %8502, %8476 ], [ 0.000000e+00, %8210 ], [ 0.000000e+00, %8212 ]
  %8520 = phi float [ %8262, %8230 ], [ %8421, %8395 ], [ %8503, %8476 ], [ 0.000000e+00, %8210 ], [ 0.000000e+00, %8212 ]
  %8521 = fmul fast float %8153, %8517
  %8522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8523 = extractvalue %dx.types.CBufRet.f32 %8522, 2
  %8524 = fsub fast float %8160, %8523
  %8525 = fcmp fast olt float %8521, -2.000000e+01
  %8526 = call float @dx.op.unary.f32(i32 21, float %8521)  ; Exp(value)
  %8527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8528 = extractvalue %dx.types.CBufRet.f32 %8527, 2
  %8529 = extractvalue %dx.types.CBufRet.f32 %8527, 3
  %8530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8531 = extractvalue %dx.types.CBufRet.f32 %8530, 2
  %8532 = fmul fast float %8529, %8524
  %8533 = call float @dx.op.unary.f32(i32 7, float %8532)  ; Saturate(value)
  %8534 = fsub fast float 1.000000e+00, %8533
  %8535 = fmul fast float %1743, 5.000000e-01
  %8536 = fadd fast float %8535, 5.000000e-01
  %8537 = call float @dx.op.unary.f32(i32 7, float %8536)  ; Saturate(value)
  %8538 = fsub fast float 1.000000e+00, %8537
  %8539 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8534)  ; FMax(a,b)
  %8540 = fdiv fast float %8538, %8539
  %8541 = fsub fast float %8524, %155
  %8542 = call float @dx.op.unary.f32(i32 6, float %8541)  ; FAbs(value)
  %8543 = fmul fast float %8542, %8528
  %8544 = call float @dx.op.unary.f32(i32 7, float %8540)  ; Saturate(value)
  %8545 = fsub fast float 1.000000e+00, %8543
  %8546 = fmul fast float %8545, %8544
  %8547 = fadd fast float %8546, %8543
  %8548 = fmul fast float %8531, %8524
  %8549 = call float @dx.op.unary.f32(i32 7, float %8548)  ; Saturate(value)
  %8550 = fsub fast float 1.000000e+00, %8547
  %8551 = fmul fast float %8550, %8549
  %8552 = fadd fast float %8551, %8547
  %8553 = call float @dx.op.unary.f32(i32 7, float %8552)  ; Saturate(value)
  %8554 = fadd fast float %8526, -1.000000e+00
  %8555 = select i1 %8525, float -1.000000e+00, float %8554
  %8556 = fmul fast float %8553, %8555
  %8557 = fadd fast float %8556, 1.000000e+00
  %8558 = fsub fast float -0.000000e+00, %8556
  %8559 = fmul fast float %8518, %8558
  %8560 = fmul fast float %8519, %8558
  %8561 = fmul fast float %8520, %8558
  br label %8562

; <label>:8562                                    ; preds = %8515, %8116
  %8563 = phi float [ %8516, %8515 ], [ 0.000000e+00, %8116 ]
  %8564 = phi float [ %8557, %8515 ], [ 1.000000e+00, %8116 ]
  %8565 = phi float [ %8559, %8515 ], [ 0.000000e+00, %8116 ]
  %8566 = phi float [ %8560, %8515 ], [ 0.000000e+00, %8116 ]
  %8567 = phi float [ %8561, %8515 ], [ 0.000000e+00, %8116 ]
  %8568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8569 = extractvalue %dx.types.CBufRet.f32 %8568, 1
  %8570 = fsub fast float 1.000000e+00, %8564
  %8571 = fmul fast float %8570, %8146
  %8572 = fmul fast float %8571, %8569
  %8573 = fsub fast float %8146, %8572
  br i1 %8144, label %8574, label %8603, !dx.controlflow.hints !201

; <label>:8574                                    ; preds = %8562
  %8575 = fmul fast float %8147, %8141
  %8576 = fadd fast float %8575, %8142
  %8577 = call float @dx.op.unary.f32(i32 7, float %8576)  ; Saturate(value)
  %8578 = fmul fast float %8123, %8573
  %8579 = fsub fast float -0.000000e+00, %8578
  %8580 = fmul fast float %8124, %8573
  %8581 = fsub fast float -0.000000e+00, %8580
  %8582 = call float @dx.op.unary.f32(i32 21, float %8579)  ; Exp(value)
  %8583 = call float @dx.op.unary.f32(i32 21, float %8581)  ; Exp(value)
  %8584 = call float @dx.op.binary.f32(i32 35, float %8131, float %8582)  ; FMax(a,b)
  %8585 = call float @dx.op.binary.f32(i32 35, float %8131, float %8583)  ; FMax(a,b)
  %8586 = fsub fast float %8585, %8584
  %8587 = fmul fast float %8586, %8577
  %8588 = fadd fast float %8587, %8584
  %8589 = call float @dx.op.unary.f32(i32 7, float %8588)  ; Saturate(value)
  %8590 = fsub fast float %8128, %8133
  %8591 = fsub fast float %8129, %8134
  %8592 = fsub fast float %8130, %8135
  %8593 = fmul fast float %8577, %8590
  %8594 = fmul fast float %8577, %8591
  %8595 = fmul fast float %8577, %8592
  %8596 = fadd fast float %8593, %8133
  %8597 = fadd fast float %8594, %8134
  %8598 = fadd fast float %8595, %8135
  %8599 = fsub fast float 1.000000e+00, %8589
  %8600 = fmul fast float %8599, %8596
  %8601 = fmul fast float %8599, %8597
  %8602 = fmul fast float %8599, %8598
  br label %8662

; <label>:8603                                    ; preds = %8562
  %8604 = fmul fast float %8573, %8140
  %8605 = call float @dx.op.unary.f32(i32 7, float %8604)  ; Saturate(value)
  %8606 = fsub fast float 2.000000e+00, %8605
  %8607 = fmul fast float %8605, 9.921875e-01
  %8608 = fmul fast float %8607, %8606
  %8609 = fadd fast float %8608, 3.906250e-03
  %8610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %8609, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8611 = extractvalue %dx.types.ResRet.f32 %8610, 0
  %8612 = fsub fast float %8605, %8611
  %8613 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8612)  ; FMax(a,b)
  %8614 = fmul fast float %8126, %155
  %8615 = call float @dx.op.unary.f32(i32 6, float %8614)  ; FAbs(value)
  %8616 = fcmp fast ogt float %8615, 0x3EB0C6F7A0000000
  br i1 %8616, label %8617, label %8623, !dx.controlflow.hints !202

; <label>:8617                                    ; preds = %8603
  %8618 = fmul fast float %8614, 0xBFF7154760000000
  %8619 = call float @dx.op.unary.f32(i32 21, float %8618)  ; Exp(value)
  %8620 = fsub fast float 1.000000e+00, %8619
  %8621 = fdiv fast float %8620, %8614
  %8622 = fmul fast float %8621, %8136
  br label %8623

; <label>:8623                                    ; preds = %8617, %8603
  %8624 = phi float [ %8622, %8617 ], [ %8136, %8603 ]
  %8625 = fadd fast float %8624, %8138
  %8626 = fmul fast float %8625, %8613
  %8627 = fmul fast float %8123, %8626
  %8628 = fsub fast float -0.000000e+00, %8627
  %8629 = fmul fast float %8124, %8626
  %8630 = fsub fast float -0.000000e+00, %8629
  %8631 = fmul fast float %8125, %8626
  %8632 = fsub fast float -0.000000e+00, %8631
  %8633 = call float @dx.op.unary.f32(i32 21, float %8628)  ; Exp(value)
  %8634 = call float @dx.op.unary.f32(i32 21, float %8630)  ; Exp(value)
  %8635 = call float @dx.op.unary.f32(i32 21, float %8632)  ; Exp(value)
  %8636 = fmul fast float %8147, %8147
  %8637 = fadd fast float %8636, 1.000000e+00
  %8638 = fmul fast float %8637, 0x3FAE8EC8A0000000
  %8639 = fmul fast float %8638, %8133
  %8640 = fmul fast float %8638, %8134
  %8641 = fmul fast float %8638, %8135
  %8642 = fmul fast float %8147, %8131
  %8643 = fsub fast float 1.000000e+00, %8642
  %8644 = fmul fast float %8131, %8131
  %8645 = fsub fast float 1.000000e+00, %8644
  %8646 = fmul fast float %8645, 0x3FB45F3060000000
  %8647 = fmul fast float %8643, %8643
  %8648 = fdiv fast float 1.000000e+00, %8647
  %8649 = fmul fast float %8646, %8648
  %8650 = fmul fast float %8649, %8128
  %8651 = fmul fast float %8649, %8129
  %8652 = fmul fast float %8649, %8130
  %8653 = fadd fast float %8650, %8639
  %8654 = fadd fast float %8651, %8640
  %8655 = fadd fast float %8652, %8641
  %8656 = fsub fast float 1.000000e+00, %8633
  %8657 = fsub fast float 1.000000e+00, %8634
  %8658 = fsub fast float 1.000000e+00, %8635
  %8659 = fmul fast float %8653, %8656
  %8660 = fmul fast float %8654, %8657
  %8661 = fmul fast float %8655, %8658
  br label %8662

; <label>:8662                                    ; preds = %8623, %8574
  %8663 = phi float [ %8600, %8574 ], [ %8659, %8623 ]
  %8664 = phi float [ %8601, %8574 ], [ %8660, %8623 ]
  %8665 = phi float [ %8602, %8574 ], [ %8661, %8623 ]
  %8666 = phi float [ %8589, %8574 ], [ %8633, %8623 ]
  %8667 = phi float [ %8589, %8574 ], [ %8634, %8623 ]
  %8668 = phi float [ %8589, %8574 ], [ %8635, %8623 ]
  br i1 %8155, label %8669, label %8867, !dx.controlflow.hints !203

; <label>:8669                                    ; preds = %8662
  %8670 = extractvalue %dx.types.CBufRet.f32 %8568, 0
  %8671 = fmul fast float %8670, %8570
  %8672 = fsub fast float %8565, %8663
  %8673 = fsub fast float %8566, %8664
  %8674 = fsub fast float %8567, %8665
  %8675 = fmul fast float %8671, %8672
  %8676 = fmul fast float %8671, %8673
  %8677 = fmul fast float %8671, %8674
  %8678 = fadd fast float %8675, %8663
  %8679 = fadd fast float %8676, %8664
  %8680 = fadd fast float %8677, %8665
  %8681 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8666)  ; FMax(a,b)
  %8682 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8667)  ; FMax(a,b)
  %8683 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8668)  ; FMax(a,b)
  %8684 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8564)  ; FMax(a,b)
  %8685 = call float @dx.op.binary.f32(i32 35, float %8563, float %8573)  ; FMax(a,b)
  %8686 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8685)  ; FMax(a,b)
  %8687 = fdiv fast float %8563, %8686
  %8688 = call float @dx.op.unary.f32(i32 7, float %8687)  ; Saturate(value)
  %8689 = fdiv fast float %8573, %8686
  %8690 = call float @dx.op.unary.f32(i32 7, float %8689)  ; Saturate(value)
  %8691 = fcmp fast une float %8684, 1.000000e+00
  br i1 %8691, label %8692, label %8705, !dx.controlflow.hints !204

; <label>:8692                                    ; preds = %8669
  %8693 = call float @dx.op.unary.f32(i32 23, float %8684)  ; Log(value)
  %8694 = fmul fast float %8693, 0x3FE62E4300000000
  %8695 = fmul fast float %8565, %8694
  %8696 = fsub fast float -0.000000e+00, %8695
  %8697 = fmul fast float %8566, %8694
  %8698 = fsub fast float -0.000000e+00, %8697
  %8699 = fmul fast float %8567, %8694
  %8700 = fsub fast float -0.000000e+00, %8699
  %8701 = fsub fast float 1.000000e+00, %8684
  %8702 = fdiv fast float %8696, %8701
  %8703 = fdiv fast float %8698, %8701
  %8704 = fdiv fast float %8700, %8701
  br label %8705

; <label>:8705                                    ; preds = %8692, %8669
  %8706 = phi float [ %8702, %8692 ], [ %8565, %8669 ]
  %8707 = phi float [ %8703, %8692 ], [ %8566, %8669 ]
  %8708 = phi float [ %8704, %8692 ], [ %8567, %8669 ]
  %8709 = phi float [ %8694, %8692 ], [ 0.000000e+00, %8669 ]
  %8710 = fcmp fast une float %8681, 1.000000e+00
  br i1 %8710, label %8711, label %8718, !dx.controlflow.hints !205

; <label>:8711                                    ; preds = %8705
  %8712 = call float @dx.op.unary.f32(i32 23, float %8681)  ; Log(value)
  %8713 = fmul fast float %8712, 0x3FE62E4300000000
  %8714 = fmul fast float %8678, %8713
  %8715 = fsub fast float -0.000000e+00, %8714
  %8716 = fsub fast float 1.000000e+00, %8681
  %8717 = fdiv fast float %8715, %8716
  br label %8718

; <label>:8718                                    ; preds = %8711, %8705
  %8719 = phi float [ %8717, %8711 ], [ %8678, %8705 ]
  %8720 = phi float [ %8713, %8711 ], [ 0.000000e+00, %8705 ]
  %8721 = fcmp fast une float %8682, 1.000000e+00
  br i1 %8721, label %8722, label %8729, !dx.controlflow.hints !205

; <label>:8722                                    ; preds = %8718
  %8723 = call float @dx.op.unary.f32(i32 23, float %8682)  ; Log(value)
  %8724 = fmul fast float %8723, 0x3FE62E4300000000
  %8725 = fmul fast float %8679, %8724
  %8726 = fsub fast float -0.000000e+00, %8725
  %8727 = fsub fast float 1.000000e+00, %8682
  %8728 = fdiv fast float %8726, %8727
  br label %8729

; <label>:8729                                    ; preds = %8722, %8718
  %8730 = phi float [ %8728, %8722 ], [ %8679, %8718 ]
  %8731 = phi float [ %8724, %8722 ], [ 0.000000e+00, %8718 ]
  %8732 = fcmp fast une float %8683, 1.000000e+00
  br i1 %8732, label %8733, label %8740, !dx.controlflow.hints !205

; <label>:8733                                    ; preds = %8729
  %8734 = call float @dx.op.unary.f32(i32 23, float %8683)  ; Log(value)
  %8735 = fmul fast float %8734, 0x3FE62E4300000000
  %8736 = fmul fast float %8680, %8735
  %8737 = fsub fast float -0.000000e+00, %8736
  %8738 = fsub fast float 1.000000e+00, %8683
  %8739 = fdiv fast float %8737, %8738
  br label %8740

; <label>:8740                                    ; preds = %8733, %8729
  %8741 = phi float [ %8739, %8733 ], [ %8680, %8729 ]
  %8742 = phi float [ %8735, %8733 ], [ 0.000000e+00, %8729 ]
  %8743 = fmul fast float %8706, %8690
  %8744 = fmul fast float %8707, %8690
  %8745 = fmul fast float %8708, %8690
  %8746 = fmul fast float %8709, %8690
  %8747 = fmul fast float %8719, %8688
  %8748 = fmul fast float %8730, %8688
  %8749 = fmul fast float %8741, %8688
  %8750 = fmul fast float %8720, %8688
  %8751 = fmul fast float %8731, %8688
  %8752 = fmul fast float %8742, %8688
  %8753 = fadd fast float %8747, %8743
  %8754 = fadd fast float %8748, %8744
  %8755 = fadd fast float %8749, %8745
  %8756 = fadd fast float %8750, %8746
  %8757 = fadd fast float %8751, %8746
  %8758 = fadd fast float %8752, %8746
  %8759 = fcmp fast une float %8756, 0.000000e+00
  br i1 %8759, label %8760, label %8767, !dx.controlflow.hints !206

; <label>:8760                                    ; preds = %8740
  %8761 = fmul fast float %8756, 0x3FF7154760000000
  %8762 = call float @dx.op.unary.f32(i32 21, float %8761)  ; Exp(value)
  %8763 = fsub fast float 1.000000e+00, %8762
  %8764 = fmul fast float %8753, %8763
  %8765 = fsub fast float -0.000000e+00, %8764
  %8766 = fdiv fast float %8765, %8756
  br label %8767

; <label>:8767                                    ; preds = %8760, %8740
  %8768 = phi float [ %8762, %8760 ], [ 1.000000e+00, %8740 ]
  %8769 = phi float [ %8766, %8760 ], [ %8753, %8740 ]
  %8770 = fcmp fast une float %8757, 0.000000e+00
  br i1 %8770, label %8771, label %8778, !dx.controlflow.hints !206

; <label>:8771                                    ; preds = %8767
  %8772 = fmul fast float %8757, 0x3FF7154760000000
  %8773 = call float @dx.op.unary.f32(i32 21, float %8772)  ; Exp(value)
  %8774 = fsub fast float 1.000000e+00, %8773
  %8775 = fmul fast float %8754, %8774
  %8776 = fsub fast float -0.000000e+00, %8775
  %8777 = fdiv fast float %8776, %8757
  br label %8778

; <label>:8778                                    ; preds = %8771, %8767
  %8779 = phi float [ %8773, %8771 ], [ 1.000000e+00, %8767 ]
  %8780 = phi float [ %8777, %8771 ], [ %8754, %8767 ]
  %8781 = fcmp fast une float %8758, 0.000000e+00
  br i1 %8781, label %8782, label %8789, !dx.controlflow.hints !206

; <label>:8782                                    ; preds = %8778
  %8783 = fmul fast float %8758, 0x3FF7154760000000
  %8784 = call float @dx.op.unary.f32(i32 21, float %8783)  ; Exp(value)
  %8785 = fsub fast float 1.000000e+00, %8784
  %8786 = fmul fast float %8755, %8785
  %8787 = fsub fast float -0.000000e+00, %8786
  %8788 = fdiv fast float %8787, %8758
  br label %8789

; <label>:8789                                    ; preds = %8782, %8778
  %8790 = phi float [ %8784, %8782 ], [ 1.000000e+00, %8778 ]
  %8791 = phi float [ %8788, %8782 ], [ %8755, %8778 ]
  %8792 = fcmp fast ogt float %8688, %8690
  br i1 %8792, label %8793, label %8813

; <label>:8793                                    ; preds = %8789
  %8794 = fsub fast float 1.000000e+00, %8690
  %8795 = fmul fast float %8706, %8794
  %8796 = fmul fast float %8707, %8794
  %8797 = fmul fast float %8708, %8794
  %8798 = fmul fast float %8709, %8794
  %8799 = fcmp fast une float %8798, 0.000000e+00
  br i1 %8799, label %8800, label %8851, !dx.controlflow.hints !207

; <label>:8800                                    ; preds = %8793
  %8801 = fmul fast float %8798, 0x3FF7154760000000
  %8802 = call float @dx.op.unary.f32(i32 21, float %8801)  ; Exp(value)
  %8803 = fsub fast float 1.000000e+00, %8802
  %8804 = fmul fast float %8795, %8803
  %8805 = fsub fast float -0.000000e+00, %8804
  %8806 = fmul fast float %8796, %8803
  %8807 = fsub fast float -0.000000e+00, %8806
  %8808 = fmul fast float %8797, %8803
  %8809 = fsub fast float -0.000000e+00, %8808
  %8810 = fdiv fast float %8805, %8798
  %8811 = fdiv fast float %8807, %8798
  %8812 = fdiv fast float %8809, %8798
  br label %8851

; <label>:8813                                    ; preds = %8789
  %8814 = fsub fast float 1.000000e+00, %8688
  %8815 = fmul fast float %8719, %8814
  %8816 = fmul fast float %8730, %8814
  %8817 = fmul fast float %8741, %8814
  %8818 = fmul fast float %8720, %8814
  %8819 = fmul fast float %8731, %8814
  %8820 = fmul fast float %8742, %8814
  %8821 = fcmp fast une float %8818, 0.000000e+00
  br i1 %8821, label %8822, label %8829, !dx.controlflow.hints !206

; <label>:8822                                    ; preds = %8813
  %8823 = fmul fast float %8818, 0x3FF7154760000000
  %8824 = call float @dx.op.unary.f32(i32 21, float %8823)  ; Exp(value)
  %8825 = fsub fast float 1.000000e+00, %8824
  %8826 = fmul fast float %8815, %8825
  %8827 = fsub fast float -0.000000e+00, %8826
  %8828 = fdiv fast float %8827, %8818
  br label %8829

; <label>:8829                                    ; preds = %8822, %8813
  %8830 = phi float [ %8828, %8822 ], [ %8815, %8813 ]
  %8831 = phi float [ %8824, %8822 ], [ 1.000000e+00, %8813 ]
  %8832 = fcmp fast une float %8819, 0.000000e+00
  br i1 %8832, label %8833, label %8840, !dx.controlflow.hints !206

; <label>:8833                                    ; preds = %8829
  %8834 = fmul fast float %8819, 0x3FF7154760000000
  %8835 = call float @dx.op.unary.f32(i32 21, float %8834)  ; Exp(value)
  %8836 = fsub fast float 1.000000e+00, %8835
  %8837 = fmul fast float %8816, %8836
  %8838 = fsub fast float -0.000000e+00, %8837
  %8839 = fdiv fast float %8838, %8819
  br label %8840

; <label>:8840                                    ; preds = %8833, %8829
  %8841 = phi float [ %8839, %8833 ], [ %8816, %8829 ]
  %8842 = phi float [ %8835, %8833 ], [ 1.000000e+00, %8829 ]
  %8843 = fcmp fast une float %8820, 0.000000e+00
  br i1 %8843, label %8844, label %8851, !dx.controlflow.hints !206

; <label>:8844                                    ; preds = %8840
  %8845 = fmul fast float %8820, 0x3FF7154760000000
  %8846 = call float @dx.op.unary.f32(i32 21, float %8845)  ; Exp(value)
  %8847 = fsub fast float 1.000000e+00, %8846
  %8848 = fmul fast float %8817, %8847
  %8849 = fsub fast float -0.000000e+00, %8848
  %8850 = fdiv fast float %8849, %8820
  br label %8851

; <label>:8851                                    ; preds = %8844, %8840, %8800, %8793
  %8852 = phi float [ %8850, %8844 ], [ %8812, %8800 ], [ %8797, %8793 ], [ %8817, %8840 ]
  %8853 = phi float [ %8841, %8844 ], [ %8811, %8800 ], [ %8796, %8793 ], [ %8841, %8840 ]
  %8854 = phi float [ %8830, %8844 ], [ %8810, %8800 ], [ %8795, %8793 ], [ %8830, %8840 ]
  %8855 = phi float [ %8846, %8844 ], [ %8802, %8800 ], [ 1.000000e+00, %8793 ], [ 1.000000e+00, %8840 ]
  %8856 = phi float [ %8842, %8844 ], [ %8802, %8800 ], [ 1.000000e+00, %8793 ], [ %8842, %8840 ]
  %8857 = phi float [ %8831, %8844 ], [ %8802, %8800 ], [ 1.000000e+00, %8793 ], [ %8831, %8840 ]
  %8858 = fmul fast float %8857, %8769
  %8859 = fmul fast float %8856, %8780
  %8860 = fmul fast float %8855, %8791
  %8861 = fadd fast float %8858, %8854
  %8862 = fadd fast float %8859, %8853
  %8863 = fadd fast float %8860, %8852
  %8864 = fmul fast float %8857, %8768
  %8865 = fmul fast float %8856, %8779
  %8866 = fmul fast float %8855, %8790
  br label %8867

; <label>:8867                                    ; preds = %8851, %8662
  %8868 = phi float [ %8866, %8851 ], [ %8668, %8662 ]
  %8869 = phi float [ %8865, %8851 ], [ %8667, %8662 ]
  %8870 = phi float [ %8864, %8851 ], [ %8666, %8662 ]
  %8871 = phi float [ %8863, %8851 ], [ %8665, %8662 ]
  %8872 = phi float [ %8862, %8851 ], [ %8664, %8662 ]
  %8873 = phi float [ %8861, %8851 ], [ %8663, %8662 ]
  %8874 = call float @dx.op.dot3.f32(i32 55, float %8870, float %8869, float %8868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8875 = call float @dx.op.dot3.f32(i32 55, float %8873, float %8872, float %8871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8876 = select i1 %1885, float %8874, float %8870
  %8877 = select i1 %1885, float %8874, float %8869
  %8878 = select i1 %1885, float 1.000000e+00, float %8868
  %8879 = select i1 %1885, float %8875, float %8873
  %8880 = select i1 %1885, float 0.000000e+00, float %8872
  %8881 = select i1 %1885, float 0.000000e+00, float %8871
  %8882 = fmul fast float %8876, %8111
  %8883 = fmul fast float %8877, %8113
  %8884 = fmul fast float %8878, %8115
  %8885 = fadd fast float %8882, %8879
  %8886 = fadd fast float %8883, %8880
  %8887 = fadd fast float %8881, %8884
  %8888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8889 = extractvalue %dx.types.CBufRet.f32 %8888, 2
  %8890 = extractvalue %dx.types.CBufRet.f32 %8888, 3
  %8891 = fmul fast float %8889, %98
  %8892 = fmul fast float %8890, %99
  %8893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %61, float %8891, float %8892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8894 = extractvalue %dx.types.ResRet.f32 %8893, 0
  %8895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %61, float %8891, float %8892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8896 = extractvalue %dx.types.ResRet.f32 %8895, 0
  %8897 = extractvalue %dx.types.ResRet.f32 %8895, 1
  %8898 = extractvalue %dx.types.ResRet.f32 %8895, 2
  %8899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8900 = extractvalue %dx.types.CBufRet.f32 %8899, 1
  %8901 = fmul fast float %8900, %8896
  %8902 = fmul fast float %8900, %8897
  %8903 = fmul fast float %8900, %8898
  %8904 = fmul fast float %8894, %8870
  %8905 = call float @dx.op.dot3.f32(i32 55, float %8894, float %8894, float %8894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8906 = call float @dx.op.dot3.f32(i32 55, float %8901, float %8902, float %8903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8907 = select i1 %1885, float %8905, float %8894
  %8908 = select i1 %1885, float 1.000000e+00, float %8894
  %8909 = select i1 %1885, float %8906, float %8901
  %8910 = select i1 %1885, float 0.000000e+00, float %8902
  %8911 = select i1 %1885, float 0.000000e+00, float %8903
  %8912 = fmul fast float %8907, %8885
  %8913 = fmul fast float %8907, %8886
  %8914 = fmul fast float %8908, %8887
  %8915 = fadd fast float %8912, %8909
  %8916 = fadd fast float %8913, %8910
  %8917 = fadd fast float %8911, %8914
  br label %8918

; <label>:8918                                    ; preds = %8867, %8084
  %8919 = phi float [ %8111, %8084 ], [ %8915, %8867 ]
  %8920 = phi float [ %8113, %8084 ], [ %8916, %8867 ]
  %8921 = phi float [ %8115, %8084 ], [ %8917, %8867 ]
  %8922 = phi float [ 1.000000e+00, %8084 ], [ %8904, %8867 ]
  %8923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8924 = extractvalue %dx.types.CBufRet.f32 %8923, 2
  %8925 = extractvalue %dx.types.CBufRet.f32 %8923, 3
  %8926 = fmul fast float %8924, %98
  %8927 = fmul fast float %8925, %99
  %8928 = call float @dx.op.unary.f32(i32 7, float %8926)  ; Saturate(value)
  %8929 = call float @dx.op.unary.f32(i32 7, float %8927)  ; Saturate(value)
  %8930 = select i1 %115, i32 0, i32 2
  %8931 = or i32 %8930, 1
  %8932 = uitofp i32 %8931 to float
  %8933 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %8928, float %8929, float %8932, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8934 = extractvalue %dx.types.ResRet.f32 %8933, 0
  %8935 = extractvalue %dx.types.ResRet.f32 %8933, 1
  %8936 = extractvalue %dx.types.ResRet.f32 %8933, 2
  %8937 = extractvalue %dx.types.ResRet.f32 %8933, 3
  %8938 = add nuw nsw i32 %8930, 2
  %8939 = uitofp i32 %8938 to float
  %8940 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %8928, float %8929, float %8939, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8941 = extractvalue %dx.types.ResRet.f32 %8940, 0
  %8942 = extractvalue %dx.types.ResRet.f32 %8940, 1
  %8943 = extractvalue %dx.types.ResRet.f32 %8940, 2
  %8944 = extractvalue %dx.types.ResRet.f32 %8940, 3
  %8945 = call float @dx.op.binary.f32(i32 35, float %8935, float %8936)  ; FMax(a,b)
  %8946 = call float @dx.op.binary.f32(i32 35, float %8934, float %8945)  ; FMax(a,b)
  %8947 = call float @dx.op.binary.f32(i32 35, float %8946, float %8937)  ; FMax(a,b)
  %8948 = call float @dx.op.binary.f32(i32 36, float %8942, float %8943)  ; FMin(a,b)
  %8949 = call float @dx.op.binary.f32(i32 36, float %8941, float %8948)  ; FMin(a,b)
  %8950 = call float @dx.op.binary.f32(i32 36, float %8949, float %8944)  ; FMin(a,b)
  %8951 = fmul fast float %8947, 2.550000e+02
  %8952 = fadd fast float %8951, 0x3F70101020000000
  %8953 = fptoui float %8952 to i32
  %8954 = fmul fast float %8950, 2.550000e+02
  %8955 = fadd fast float %8954, 0x3F70101020000000
  %8956 = fptoui float %8955 to i32
  %8957 = icmp ult i32 %8953, %8956
  br i1 %8957, label %8958, label %9010

; <label>:8958                                    ; preds = %8918
  %8959 = fcmp fast ogt float %86, 9.843750e-01
  %8960 = fadd fast float %87, -4.000000e+00
  %8961 = select i1 %8959, float -4.000000e+00, float %8960
  %8962 = call float @dx.op.binary.f32(i32 35, float %8961, float 0.000000e+00)  ; FMax(a,b)
  %8963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8964 = extractvalue %dx.types.CBufRet.f32 %8963, 0
  %8965 = fadd fast float %8964, %8962
  %8966 = extractvalue %dx.types.CBufRet.f32 %8963, 2
  %8967 = fmul fast float %8965, %8966
  %8968 = call float @dx.op.unary.f32(i32 23, float %8967)  ; Log(value)
  %8969 = extractvalue %dx.types.CBufRet.f32 %8963, 3
  %8970 = fmul fast float %8969, %8968
  %8971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8972 = extractvalue %dx.types.CBufRet.f32 %8971, 2
  %8973 = fmul fast float %8970, %8972
  %8974 = call float @dx.op.unary.f32(i32 7, float %8973)  ; Saturate(value)
  %8975 = uitofp i32 %8953 to float
  %8976 = uitofp i32 %8956 to float
  %8977 = fadd fast float %8975, 5.000000e-01
  %8978 = fadd fast float %8976, 5.000000e-01
  %8979 = fmul fast float %8972, %8977
  %8980 = fmul fast float %8972, %8978
  %8981 = fadd fast float %8979, 0x3F0FFB4800000000
  %8982 = fadd fast float %8980, 0xBF0FFB4800000000
  %8983 = call float @dx.op.binary.f32(i32 35, float %8974, float %8981)  ; FMax(a,b)
  %8984 = call float @dx.op.binary.f32(i32 36, float %8983, float %8982)  ; FMin(a,b)
  %8985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8986 = extractvalue %dx.types.CBufRet.f32 %8985, 1
  %8987 = extractvalue %dx.types.CBufRet.f32 %8985, 2
  %8988 = extractvalue %dx.types.CBufRet.f32 %8985, 0
  %8989 = select i1 %115, float 0.000000e+00, float %8988
  %8990 = fmul fast float %8986, %8984
  %8991 = fadd fast float %8989, %8990
  %8992 = fadd fast float %8989, %8987
  %8993 = fsub fast float %8986, %8987
  %8994 = fadd fast float %8993, %8989
  %8995 = call float @dx.op.binary.f32(i32 35, float %8991, float %8992)  ; FMax(a,b)
  %8996 = call float @dx.op.binary.f32(i32 36, float %8995, float %8994)  ; FMin(a,b)
  %8997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %8928, float %8929, float %8996, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8998 = extractvalue %dx.types.ResRet.f32 %8997, 0
  %8999 = extractvalue %dx.types.ResRet.f32 %8997, 1
  %9000 = extractvalue %dx.types.ResRet.f32 %8997, 2
  %9001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %8928, float %8929, float %8996, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9002 = extractvalue %dx.types.ResRet.f32 %9001, 0
  %9003 = extractvalue %dx.types.ResRet.f32 %9001, 1
  %9004 = extractvalue %dx.types.ResRet.f32 %9001, 2
  %9005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9006 = extractvalue %dx.types.CBufRet.f32 %9005, 1
  %9007 = fmul fast float %9006, %9002
  %9008 = fmul fast float %9006, %9003
  %9009 = fmul fast float %9006, %9004
  br label %9010

; <label>:9010                                    ; preds = %8958, %8918
  %9011 = phi float [ %8998, %8958 ], [ 1.000000e+00, %8918 ]
  %9012 = phi float [ %8999, %8958 ], [ 1.000000e+00, %8918 ]
  %9013 = phi float [ %9000, %8958 ], [ 1.000000e+00, %8918 ]
  %9014 = phi float [ %9007, %8958 ], [ 0.000000e+00, %8918 ]
  %9015 = phi float [ %9008, %8958 ], [ 0.000000e+00, %8918 ]
  %9016 = phi float [ %9009, %8958 ], [ 0.000000e+00, %8918 ]
  %9017 = fmul fast float %9011, %8922
  %9018 = call float @dx.op.dot3.f32(i32 55, float %9011, float %9012, float %9013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9019 = call float @dx.op.dot3.f32(i32 55, float %9014, float %9015, float %9016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9020 = select i1 %1885, float %9018, float %9011
  %9021 = select i1 %1885, float %9018, float %9012
  %9022 = select i1 %1885, float 1.000000e+00, float %9013
  %9023 = select i1 %1885, float %9019, float %9014
  %9024 = select i1 %1885, float 0.000000e+00, float %9015
  %9025 = select i1 %1885, float 0.000000e+00, float %9016
  %9026 = fmul fast float %9020, %8919
  %9027 = fmul fast float %9021, %8920
  %9028 = fmul fast float %9022, %8921
  %9029 = fadd fast float %9026, %9023
  %9030 = fadd fast float %9027, %9024
  %9031 = fadd fast float %9025, %9028
  %9032 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9033 = extractvalue %dx.types.CBufRet.i32 %9032, 3
  %9034 = and i32 %9033, 3
  %9035 = icmp ne i32 %9034, 0
  %9036 = and i32 %9033, 4
  %9037 = icmp ne i32 %9036, 0
  %9038 = and i1 %9035, %9037
  %9039 = and i1 %1885, %9038
  br i1 %9039, label %9040, label %9046

; <label>:9040                                    ; preds = %9010
  %9041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9042 = extractvalue %dx.types.CBufRet.f32 %9041, 1
  %9043 = fadd fast float %9017, -1.000000e+00
  %9044 = fmul fast float %9042, %9043
  %9045 = fadd fast float %9044, 1.000000e+00
  br label %9046

; <label>:9046                                    ; preds = %9040, %9010
  %9047 = phi float [ %9045, %9040 ], [ %9017, %9010 ]
  %9048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9049 = extractvalue %dx.types.CBufRet.f32 %9048, 0
  br i1 %1885, label %9050, label %9064

; <label>:9050                                    ; preds = %9046
  %9051 = fadd fast float %9029, %9030
  %9052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9053 = extractvalue %dx.types.CBufRet.f32 %9052, 3
  %9054 = extractvalue %dx.types.CBufRet.f32 %8095, 1
  %9055 = fsub fast float %8101, %8089
  %9056 = fadd fast float %9055, %8102
  %9057 = fsub fast float %9056, %9054
  %9058 = extractvalue %dx.types.CBufRet.f32 %8095, 2
  %9059 = fmul fast float %9057, %9058
  %9060 = call float @dx.op.unary.f32(i32 7, float %9059)  ; Saturate(value)
  %9061 = fsub fast float %9060, %9053
  %9062 = fmul fast float %9061, %9047
  %9063 = fadd fast float %9062, %9053
  br label %9067

; <label>:9064                                    ; preds = %9046
  %9065 = fmul fast float %9049, %9030
  %9066 = fmul fast float %9049, %9031
  br label %9067

; <label>:9067                                    ; preds = %9064, %9050
  %9068 = phi float [ %9051, %9050 ], [ %9029, %9064 ]
  %9069 = phi float [ %9063, %9050 ], [ %9065, %9064 ]
  %9070 = phi float [ 1.000000e+00, %9050 ], [ %9066, %9064 ]
  %9071 = fmul float %9049, %9068
  switch i32 %8016, label %9369 [
    i32 0, label %9384
    i32 1, label %9072
    i32 2, label %9073
    i32 3, label %9085
    i32 4, label %9094
    i32 5, label %9095
    i32 6, label %9096
    i32 12, label %9097
    i32 13, label %9098
    i32 14, label %9110
    i32 15, label %9122
    i32 16, label %9134
    i32 17, label %9135
    i32 63, label %9368
    i32 18, label %9136
    i32 25, label %9158
    i32 27, label %9159
    i32 28, label %9160
    i32 29, label %9161
    i32 31, label %9162
    i32 32, label %9185
    i32 33, label %9244
    i32 37, label %9262
    i32 38, label %9263
    i32 39, label %9272
    i32 40, label %9295
    i32 41, label %9299
    i32 52, label %9300
    i32 53, label %9301
    i32 54, label %9302
    i32 55, label %9303
    i32 56, label %9304
    i32 57, label %9306
    i32 58, label %9308
    i32 59, label %9346
    i32 60, label %9348
    i32 61, label %9350
    i32 64, label %9352
    i32 62, label %9367
  ]

; <label>:9072                                    ; preds = %9067
  br label %9369

; <label>:9073                                    ; preds = %9067
  %9074 = call float @dx.op.dot3.f32(i32 55, float %1713, float %1714, float %1715, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %9075 = call float @dx.op.unary.f32(i32 25, float %9074)  ; Rsqrt(value)
  %9076 = fmul fast float %1713, 5.000000e-01
  %9077 = fmul fast float %9076, %9075
  %9078 = fmul fast float %1714, 5.000000e-01
  %9079 = fmul fast float %9078, %9075
  %9080 = fmul fast float %1715, 5.000000e-01
  %9081 = fmul fast float %9080, %9075
  %9082 = fadd fast float %9077, 5.000000e-01
  %9083 = fadd fast float %9079, 5.000000e-01
  %9084 = fadd fast float %9081, 5.000000e-01
  br label %9369

; <label>:9085                                    ; preds = %9067
  %9086 = fcmp fast ole float %1843, 0x3FA4B5DCC0000000
  %9087 = fmul fast float %1843, 0x3FB3D07220000000
  %9088 = fadd fast float %1843, 0x3FAC28F5C0000000
  %9089 = fmul fast float %9088, 0x3FEE54EDE0000000
  %9090 = call float @dx.op.unary.f32(i32 23, float %9089)  ; Log(value)
  %9091 = fmul fast float %9090, 0x4003333340000000
  %9092 = call float @dx.op.unary.f32(i32 21, float %9091)  ; Exp(value)
  %9093 = select i1 %9086, float %9087, float %9092
  br label %9369

; <label>:9094                                    ; preds = %9067
  br label %9369

; <label>:9095                                    ; preds = %9067
  br label %9369

; <label>:9096                                    ; preds = %9067
  br label %9369

; <label>:9097                                    ; preds = %9067
  br label %9369

; <label>:9098                                    ; preds = %9067
  %9099 = and i32 %8085, 1023
  %9100 = uitofp i32 %9099 to float
  %9101 = lshr i32 %8085, 10
  %9102 = and i32 %9101, 1023
  %9103 = uitofp i32 %9102 to float
  %9104 = lshr i32 %8085, 20
  %9105 = and i32 %9104, 1023
  %9106 = uitofp i32 %9105 to float
  %9107 = fmul fast float %9100, 0x3F50040100000000
  %9108 = fmul fast float %9103, 0x3F50040100000000
  %9109 = fmul fast float %9106, 0x3F50040100000000
  br label %9369

; <label>:9110                                    ; preds = %9067
  %9111 = and i32 %8085, 1023
  %9112 = uitofp i32 %9111 to float
  %9113 = lshr i32 %8085, 10
  %9114 = and i32 %9113, 1023
  %9115 = uitofp i32 %9114 to float
  %9116 = lshr i32 %8085, 20
  %9117 = and i32 %9116, 1023
  %9118 = uitofp i32 %9117 to float
  %9119 = fmul fast float %9112, 0x3F50040100000000
  %9120 = fmul fast float %9115, 0x3F50040100000000
  %9121 = fmul fast float %9118, 0x3F50040100000000
  br label %9369

; <label>:9122                                    ; preds = %9067
  %9123 = and i32 %8085, 1023
  %9124 = uitofp i32 %9123 to float
  %9125 = lshr i32 %8085, 10
  %9126 = and i32 %9125, 1023
  %9127 = uitofp i32 %9126 to float
  %9128 = lshr i32 %8085, 20
  %9129 = and i32 %9128, 1023
  %9130 = uitofp i32 %9129 to float
  %9131 = fmul fast float %9124, 0x3F50040100000000
  %9132 = fmul fast float %9127, 0x3F50040100000000
  %9133 = fmul fast float %9130, 0x3F50040100000000
  br label %9369

; <label>:9134                                    ; preds = %9067
  br label %9369

; <label>:9135                                    ; preds = %9067
  br label %9369

; <label>:9136                                    ; preds = %9067
  %9137 = fcmp fast ogt float %1734, 0x3FB99999A0000000
  %9138 = fcmp fast ogt float %1735, 0x3FB99999A0000000
  %9139 = or i1 %9137, %9138
  %9140 = fcmp fast ogt float %1736, 0x3FB99999A0000000
  %9141 = or i1 %9139, %9140
  %9142 = fcmp fast olt float %1734, 0x3FB99999A0000000
  %9143 = fcmp fast olt float %1735, 0x3FB99999A0000000
  %9144 = or i1 %9142, %9143
  %9145 = fcmp fast olt float %1736, 0x3FB99999A0000000
  %9146 = or i1 %9144, %9145
  %9147 = fadd fast float %1734, %1725
  %9148 = fcmp fast ogt float %9147, 1.000000e+00
  %9149 = fadd fast float %1735, %1726
  %9150 = fcmp fast ogt float %9149, 1.000000e+00
  %9151 = or i1 %9148, %9150
  %9152 = fadd fast float %1736, %1727
  %9153 = fcmp fast ogt float %9152, 1.000000e+00
  %9154 = or i1 %9151, %9153
  %9155 = select i1 %9154, float 1.000000e+00, float 0.000000e+00
  %9156 = and i1 %9141, %9146
  %9157 = select i1 %9156, float 1.000000e+00, float 0.000000e+00
  br label %9369

; <label>:9158                                    ; preds = %9067
  br label %9369

; <label>:9159                                    ; preds = %9067
  br label %9369

; <label>:9160                                    ; preds = %9067
  br label %9369

; <label>:9161                                    ; preds = %9067
  br label %9369

; <label>:9162                                    ; preds = %9067
  %9163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9164 = extractvalue %dx.types.CBufRet.f32 %9163, 0
  %9165 = extractvalue %dx.types.CBufRet.f32 %9163, 2
  %9166 = extractvalue %dx.types.CBufRet.f32 %9163, 3
  %9167 = fcmp fast olt float %1843, %9164
  br i1 %9167, label %9168, label %9182

; <label>:9168                                    ; preds = %11000, %10998, %9182, %9162
  %9169 = phi i32 [ 0, %9162 ], [ 1, %9182 ], [ 2, %10998 ], [ 3, %11000 ]
  %9170 = mul i32 %9169, 3
  %9171 = add i32 0, %9170
  %9172 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9171
  %9173 = load float, float* %9172, align 4
  %9174 = mul i32 %9169, 3
  %9175 = add i32 1, %9174
  %9176 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9175
  %9177 = load float, float* %9176, align 4
  %9178 = mul i32 %9169, 3
  %9179 = add i32 2, %9178
  %9180 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9179
  %9181 = load float, float* %9180, align 4
  br label %9369

; <label>:9182                                    ; preds = %9162
  %9183 = extractvalue %dx.types.CBufRet.f32 %9163, 1
  %9184 = fcmp fast olt float %1843, %9183
  br i1 %9184, label %9168, label %10998

; <label>:9185                                    ; preds = %9067
  %9186 = fcmp fast ole float %1725, 0x3F69A5C380000000
  %9187 = fcmp fast ole float %1726, 0x3F69A5C380000000
  %9188 = fcmp fast ole float %1727, 0x3F69A5C380000000
  %9189 = fmul fast float %1725, 0x4029D70A40000000
  %9190 = fmul fast float %1726, 0x4029D70A40000000
  %9191 = fmul fast float %1727, 0x4029D70A40000000
  %9192 = call float @dx.op.unary.f32(i32 23, float %1725)  ; Log(value)
  %9193 = call float @dx.op.unary.f32(i32 23, float %1726)  ; Log(value)
  %9194 = call float @dx.op.unary.f32(i32 23, float %1727)  ; Log(value)
  %9195 = fmul fast float %9192, 0x3FDAAAAAA0000000
  %9196 = fmul fast float %9193, 0x3FDAAAAAA0000000
  %9197 = fmul fast float %9194, 0x3FDAAAAAA0000000
  %9198 = call float @dx.op.unary.f32(i32 21, float %9195)  ; Exp(value)
  %9199 = call float @dx.op.unary.f32(i32 21, float %9196)  ; Exp(value)
  %9200 = call float @dx.op.unary.f32(i32 21, float %9197)  ; Exp(value)
  %9201 = fmul fast float %9198, 0x3FF0E147A0000000
  %9202 = fmul fast float %9199, 0x3FF0E147A0000000
  %9203 = fmul fast float %9200, 0x3FF0E147A0000000
  %9204 = fadd fast float %9201, 0xBFAC28F5C0000000
  %9205 = fadd fast float %9202, 0xBFAC28F5C0000000
  %9206 = fadd fast float %9203, 0xBFAC28F5C0000000
  %9207 = select i1 %9186, float %9189, float %9204
  %9208 = select i1 %9187, float %9190, float %9205
  %9209 = select i1 %9188, float %9191, float %9206
  %9210 = call float @dx.op.dot3.f32(i32 55, float %9207, float %9208, float %9209, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9211 = fcmp fast olt float %9210, 0x3FA0101020000000
  br i1 %9211, label %9220, label %9212

; <label>:9212                                    ; preds = %9185
  %9213 = fcmp fast ogt float %9210, 0x3FEEFEFF00000000
  br i1 %9213, label %9220, label %9214

; <label>:9214                                    ; preds = %9212
  %9215 = fcmp fast ogt float %9210, 0x3FEF5F5F60000000
  br i1 %9215, label %9220, label %9216

; <label>:9216                                    ; preds = %9214
  %9217 = fadd fast float %9210, %9210
  %9218 = fcmp fast ogt float %9217, 2.550000e+02
  br i1 %9218, label %9219, label %9220

; <label>:9219                                    ; preds = %9216
  br label %9220

; <label>:9220                                    ; preds = %9219, %9216, %9214, %9212, %9185
  %9221 = phi float [ 1.000000e+00, %9219 ], [ %9071, %9216 ], [ 1.000000e+00, %9185 ], [ 0x3FBD1D1D20000000, %9212 ], [ 0.000000e+00, %9214 ]
  %9222 = phi float [ 0.000000e+00, %9219 ], [ %9069, %9216 ], [ 0x3FE6666660000000, %9185 ], [ 1.000000e+00, %9212 ], [ 0.000000e+00, %9214 ]
  %9223 = phi float [ 1.000000e+00, %9219 ], [ %9070, %9216 ], [ 0.000000e+00, %9185 ], [ 0x3FDD5D5D60000000, %9212 ], [ 1.000000e+00, %9214 ]
  %9224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %9225 = extractvalue %dx.types.CBufRet.f32 %9224, 3
  %9226 = fmul fast float %9225, 8.000000e+00
  %9227 = fmul fast float %99, 5.000000e+02
  %9228 = fmul fast float %9227, %8925
  %9229 = fsub fast float %9228, %9226
  %9230 = call float @dx.op.unary.f32(i32 13, float %9229)  ; Sin(value)
  %9231 = fmul fast float %9230, %9230
  %9232 = fmul fast float %9231, 2.000000e+00
  %9233 = fadd fast float %9232, -1.000000e+00
  %9234 = call float @dx.op.unary.f32(i32 7, float %9233)  ; Saturate(value)
  %9235 = fsub fast float %9221, %9071
  %9236 = fsub fast float %9222, %9069
  %9237 = fsub fast float %9223, %9070
  %9238 = fmul fast float %9234, %9235
  %9239 = fmul fast float %9234, %9236
  %9240 = fmul fast float %9234, %9237
  %9241 = fadd fast float %9238, %9071
  %9242 = fadd fast float %9239, %9069
  %9243 = fadd fast float %9240, %9070
  br label %9369

; <label>:9244                                    ; preds = %9067
  %9245 = fcmp fast olt float %87, 1.280000e+02
  br i1 %9245, label %9246, label %9260

; <label>:9246                                    ; preds = %11016, %11014, %11012, %11010, %11008, %11006, %11004, %11002, %9260, %9244
  %9247 = phi i32 [ 0, %9244 ], [ 1, %9260 ], [ 2, %11002 ], [ 3, %11004 ], [ 4, %11006 ], [ 5, %11008 ], [ 6, %11010 ], [ 7, %11012 ], [ 8, %11014 ], [ 9, %11016 ]
  %9248 = mul i32 %9247, 3
  %9249 = add i32 0, %9248
  %9250 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9249
  %9251 = load float, float* %9250, align 4
  %9252 = mul i32 %9247, 3
  %9253 = add i32 1, %9252
  %9254 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9253
  %9255 = load float, float* %9254, align 4
  %9256 = mul i32 %9247, 3
  %9257 = add i32 2, %9256
  %9258 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9257
  %9259 = load float, float* %9258, align 4
  br label %9369

; <label>:9260                                    ; preds = %9244
  %9261 = fcmp fast olt float %87, 2.560000e+02
  br i1 %9261, label %9246, label %11002

; <label>:9262                                    ; preds = %9067
  br label %9369

; <label>:9263                                    ; preds = %9067
  %9264 = bitcast i32 %8085 to float
  %9265 = fcmp fast ogt float %9264, 0.000000e+00
  %9266 = select i1 %9265, float 0.000000e+00, float 1.000000e+00
  %9267 = fcmp fast olt float %9264, 1.000000e+00
  %9268 = select i1 %9267, float 1.000000e+00, float 0.000000e+00
  %9269 = select i1 %9267, float %9266, float 0.000000e+00
  %9270 = fmul fast float %9268, %1843
  %9271 = fmul fast float %9269, %1843
  br label %9369

; <label>:9272                                    ; preds = %9067
  %9273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9274 = extractvalue %dx.types.CBufRet.f32 %9273, 0
  %9275 = extractvalue %dx.types.CBufRet.f32 %9273, 2
  %9276 = extractvalue %dx.types.CBufRet.f32 %9273, 3
  %9277 = fcmp fast olt float %8106, %9274
  br i1 %9277, label %9278, label %9292

; <label>:9278                                    ; preds = %11020, %11018, %9292, %9272
  %9279 = phi i32 [ 0, %9272 ], [ 1, %9292 ], [ 2, %11018 ], [ 3, %11020 ]
  %9280 = mul i32 %9279, 3
  %9281 = add i32 0, %9280
  %9282 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9281
  %9283 = load float, float* %9282, align 4
  %9284 = mul i32 %9279, 3
  %9285 = add i32 1, %9284
  %9286 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9285
  %9287 = load float, float* %9286, align 4
  %9288 = mul i32 %9279, 3
  %9289 = add i32 2, %9288
  %9290 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9289
  %9291 = load float, float* %9290, align 4
  br label %9369

; <label>:9292                                    ; preds = %9272
  %9293 = extractvalue %dx.types.CBufRet.f32 %9273, 1
  %9294 = fcmp fast olt float %8106, %9293
  br i1 %9294, label %9278, label %11018

; <label>:9295                                    ; preds = %9067
  %9296 = fadd fast float %8106, -5.000000e-01
  %9297 = fmul fast float %9296, 2.000000e+00
  %9298 = call float @dx.op.unary.f32(i32 7, float %9297)  ; Saturate(value)
  br label %9369

; <label>:9299                                    ; preds = %9067
  br label %9369

; <label>:9300                                    ; preds = %9067
  br label %9369

; <label>:9301                                    ; preds = %9067
  br label %9369

; <label>:9302                                    ; preds = %9067
  br label %9369

; <label>:9303                                    ; preds = %9067
  br label %9369

; <label>:9304                                    ; preds = %9067
  %9305 = bitcast i32 %8085 to float
  br label %9369

; <label>:9306                                    ; preds = %9067
  %9307 = bitcast i32 %8085 to float
  br label %9369

; <label>:9308                                    ; preds = %9067
  %9309 = and i32 %8085, 65535
  %9310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9309)  ; LegacyF16ToF32(value)
  %9311 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9312 = fptosi float %9311 to i32
  %9313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9314 = extractvalue %dx.types.CBufRet.f32 %9313, 0
  %9315 = extractvalue %dx.types.CBufRet.f32 %9313, 1
  %9316 = extractvalue %dx.types.CBufRet.f32 %9313, 2
  %9317 = fadd fast float %9314, %153
  %9318 = fadd fast float %9315, %154
  %9319 = fadd fast float %9316, %155
  %9320 = fptosi float %9317 to i32
  %9321 = fptosi float %9318 to i32
  %9322 = fptosi float %9319 to i32
  %9323 = xor i32 %9320, %9321
  %9324 = lshr i32 %9323, 1
  %9325 = and i32 %9324, 1
  %9326 = lshr i32 %9322, 1
  %9327 = and i32 %9326, 1
  %9328 = xor i32 %9327, 1
  %9329 = icmp ne i32 %9325, %9328
  switch i32 %9312, label %9369 [
    i32 -1, label %9330
    i32 -2, label %9331
    i32 -3, label %9333
    i32 -4, label %9335
    i32 -5, label %9337
    i32 -6, label %9338
    i32 -7, label %9339
  ]

; <label>:9330                                    ; preds = %9308
  br label %9369

; <label>:9331                                    ; preds = %9308
  %9332 = select i1 %9329, float 1.000000e+00, float 0.000000e+00
  br label %9369

; <label>:9333                                    ; preds = %9308
  %9334 = select i1 %9329, float 1.000000e+00, float 0.000000e+00
  br label %9369

; <label>:9335                                    ; preds = %9308
  %9336 = select i1 %9329, float 1.000000e+00, float 0.000000e+00
  br label %9369

; <label>:9337                                    ; preds = %9308
  br label %9369

; <label>:9338                                    ; preds = %9308
  br label %9369

; <label>:9339                                    ; preds = %9308
  %9340 = lshr i32 %8085, 16
  %9341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9340)  ; LegacyF16ToF32(value)
  %9342 = fmul fast float %9341, 0x3FD5555560000000
  %9343 = fsub fast float 1.000000e+00, %9342
  %9344 = fmul fast float %9342, %9310
  %9345 = fmul fast float %9343, %9310
  br label %9369

; <label>:9346                                    ; preds = %9067
  %9347 = bitcast i32 %8085 to float
  br label %9369

; <label>:9348                                    ; preds = %9067
  %9349 = bitcast i32 %8085 to float
  br label %9369

; <label>:9350                                    ; preds = %9067
  %9351 = bitcast i32 %8085 to float
  br label %9369

; <label>:9352                                    ; preds = %9067
  %9353 = and i32 %8085, 1023
  %9354 = uitofp i32 %9353 to float
  %9355 = lshr i32 %8085, 10
  %9356 = and i32 %9355, 1023
  %9357 = uitofp i32 %9356 to float
  %9358 = lshr i32 %8085, 20
  %9359 = and i32 %9358, 1023
  %9360 = uitofp i32 %9359 to float
  %9361 = fmul fast float %9354, 0x3F60040100000000
  %9362 = fmul fast float %9357, 0x3F60040100000000
  %9363 = fmul fast float %9360, 0x3F60040100000000
  %9364 = fadd fast float %9361, -1.000000e+00
  %9365 = fadd fast float %9362, -1.000000e+00
  %9366 = fadd fast float %9363, -1.000000e+00
  br label %9369

; <label>:9367                                    ; preds = %9067
  br label %9369

; <label>:9368                                    ; preds = %9067
  br label %9369

; <label>:9369                                    ; preds = %11020, %11016, %11000, %9368, %9367, %9352, %9350, %9348, %9346, %9339, %9338, %9337, %9335, %9333, %9331, %9330, %9308, %9306, %9304, %9303, %9302, %9301, %9300, %9299, %9295, %9278, %9263, %9262, %9246, %9220, %9168, %9161, %9160, %9159, %9158, %9136, %9135, %9134, %9122, %9110, %9098, %9097, %9096, %9095, %9094, %9085, %9073, %9072, %9067
  %9370 = phi float [ %9071, %9067 ], [ 0.000000e+00, %9367 ], [ %9364, %9352 ], [ %9351, %9350 ], [ %9349, %9348 ], [ %9347, %9346 ], [ %9071, %9308 ], [ 0.000000e+00, %9339 ], [ %9310, %9338 ], [ %9310, %9337 ], [ 0.000000e+00, %9335 ], [ %9334, %9333 ], [ %9332, %9331 ], [ %9310, %9330 ], [ %9307, %9306 ], [ %9305, %9304 ], [ 0.000000e+00, %9303 ], [ 0.000000e+00, %9302 ], [ 0.000000e+00, %9301 ], [ %153, %9299 ], [ %9298, %9295 ], [ %9270, %9263 ], [ 0.000000e+00, %9262 ], [ %9241, %9220 ], [ 0.000000e+00, %9161 ], [ 0.000000e+00, %9160 ], [ 0.000000e+00, %9159 ], [ 1.000000e+00, %9158 ], [ 0.000000e+00, %9368 ], [ 1.000000e+00, %9135 ], [ 5.000000e-01, %9134 ], [ %9131, %9122 ], [ %9119, %9110 ], [ %9107, %9098 ], [ %1846, %9097 ], [ %1844, %9096 ], [ %1734, %9095 ], [ %1671, %9094 ], [ %9093, %9085 ], [ %9082, %9073 ], [ %1725, %9072 ], [ %9173, %9168 ], [ %9251, %9246 ], [ %9283, %9278 ], [ 0.000000e+00, %9300 ], [ 1.000000e+00, %11000 ], [ 1.000000e+00, %11016 ], [ 1.000000e+00, %11020 ], [ %9155, %9136 ]
  %9371 = phi float [ %9069, %9067 ], [ 0.000000e+00, %9367 ], [ %9365, %9352 ], [ %9351, %9350 ], [ %9349, %9348 ], [ %9347, %9346 ], [ %9069, %9308 ], [ %9344, %9339 ], [ %9310, %9338 ], [ %9310, %9337 ], [ 0.000000e+00, %9335 ], [ 0.000000e+00, %9333 ], [ 0.000000e+00, %9331 ], [ %9310, %9330 ], [ %9307, %9306 ], [ %9305, %9304 ], [ 0.000000e+00, %9303 ], [ 0.000000e+00, %9302 ], [ 0.000000e+00, %9301 ], [ %154, %9299 ], [ %9298, %9295 ], [ %1843, %9263 ], [ 0.000000e+00, %9262 ], [ %9242, %9220 ], [ 1.000000e+00, %9161 ], [ 1.000000e+00, %9160 ], [ 1.000000e+00, %9159 ], [ 0x3FE6666660000000, %9158 ], [ 0.000000e+00, %9368 ], [ 1.000000e+00, %9135 ], [ 5.000000e-01, %9134 ], [ %9132, %9122 ], [ %9120, %9110 ], [ %9108, %9098 ], [ %1846, %9097 ], [ %1844, %9096 ], [ %1735, %9095 ], [ %1672, %9094 ], [ %9093, %9085 ], [ %9083, %9073 ], [ %1726, %9072 ], [ %9177, %9168 ], [ %9255, %9246 ], [ %9287, %9278 ], [ 0.000000e+00, %9300 ], [ 0.000000e+00, %11000 ], [ 0.000000e+00, %11016 ], [ 0.000000e+00, %11020 ], [ 0.000000e+00, %9136 ]
  %9372 = phi float [ %9070, %9067 ], [ 0.000000e+00, %9367 ], [ %9366, %9352 ], [ %9351, %9350 ], [ %9349, %9348 ], [ %9347, %9346 ], [ %9070, %9308 ], [ %9345, %9339 ], [ %9310, %9338 ], [ 0.000000e+00, %9337 ], [ %9336, %9335 ], [ 0.000000e+00, %9333 ], [ %9332, %9331 ], [ %9310, %9330 ], [ %9307, %9306 ], [ %9305, %9304 ], [ 0.000000e+00, %9303 ], [ 0.000000e+00, %9302 ], [ 0.000000e+00, %9301 ], [ %155, %9299 ], [ %9298, %9295 ], [ %9271, %9263 ], [ 0.000000e+00, %9262 ], [ %9243, %9220 ], [ 0.000000e+00, %9161 ], [ 0.000000e+00, %9160 ], [ 0.000000e+00, %9159 ], [ 0.000000e+00, %9158 ], [ 0.000000e+00, %9368 ], [ 1.000000e+00, %9135 ], [ 5.000000e-01, %9134 ], [ %9133, %9122 ], [ %9121, %9110 ], [ %9109, %9098 ], [ %1846, %9097 ], [ %1844, %9096 ], [ %1736, %9095 ], [ %1673, %9094 ], [ %9093, %9085 ], [ %9084, %9073 ], [ %1727, %9072 ], [ %9181, %9168 ], [ %9259, %9246 ], [ %9291, %9278 ], [ 1.000000e+00, %9300 ], [ 0.000000e+00, %11000 ], [ 0.000000e+00, %11016 ], [ 0.000000e+00, %11020 ], [ %9157, %9136 ]
  %9373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9374 = extractvalue %dx.types.CBufRet.f32 %9373, 3
  %9375 = fsub fast float %9370, %9071
  %9376 = fsub fast float %9371, %9069
  %9377 = fsub fast float %9372, %9070
  %9378 = fmul fast float %9374, %9375
  %9379 = fmul fast float %9374, %9376
  %9380 = fmul fast float %9374, %9377
  %9381 = fadd fast float %9378, %9071
  %9382 = fadd fast float %9379, %9069
  %9383 = fadd fast float %9380, %9070
  br label %9384

; <label>:9384                                    ; preds = %9369, %9067
  %9385 = phi float [ %9381, %9369 ], [ %9071, %9067 ]
  %9386 = phi float [ %9382, %9369 ], [ %9069, %9067 ]
  %9387 = phi float [ %9383, %9369 ], [ %9070, %9067 ]
  %9388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9389 = extractvalue %dx.types.CBufRet.f32 %9388, 0
  %9390 = bitcast float %9389 to i32
  %9391 = lshr i32 %9390, 8
  %9392 = and i32 %9391, 255
  %9393 = uitofp i32 %9392 to float
  %9394 = fptoui float %9393 to i32
  switch i32 %9394, label %9631 [
    i32 1, label %9395
    i32 2, label %9401
    i32 3, label %9407
    i32 4, label %9413
    i32 5, label %9419
    i32 6, label %9425
    i32 7, label %9431
    i32 8, label %9437
    i32 9, label %9443
    i32 10, label %9445
    i32 11, label %9466
    i32 12, label %9487
    i32 13, label %9499
    i32 14, label %9514
    i32 15, label %9519
    i32 16, label %9521
    i32 17, label %9523
    i32 18, label %9525
    i32 19, label %9527
    i32 20, label %9538
    i32 21, label %9549
    i32 22, label %9561
    i32 23, label %9595
    i32 24, label %9610
    i32 25, label %9625
    i32 26, label %9627
    i32 27, label %9629
  ]

; <label>:9395                                    ; preds = %9384
  %9396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9397 = extractvalue %dx.types.CBufRet.f32 %9396, 0
  %9398 = fmul fast float %9397, %7500
  %9399 = fmul fast float %9397, %7501
  %9400 = fmul fast float %9397, %7502
  br label %9631

; <label>:9401                                    ; preds = %9384
  %9402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9402, 0
  %9404 = fmul fast float %9403, %7497
  %9405 = fmul fast float %9403, %7498
  %9406 = fmul fast float %9403, %7499
  br label %9631

; <label>:9407                                    ; preds = %9384
  %9408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9409 = extractvalue %dx.types.CBufRet.f32 %9408, 0
  %9410 = fmul fast float %9409, %1671
  %9411 = fmul fast float %9409, %1672
  %9412 = fmul fast float %9409, %1673
  br label %9631

; <label>:9413                                    ; preds = %9384
  %9414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9415 = extractvalue %dx.types.CBufRet.f32 %9414, 0
  %9416 = fmul fast float %9415, %7494
  %9417 = fmul fast float %9415, %7495
  %9418 = fmul fast float %9415, %7496
  br label %9631

; <label>:9419                                    ; preds = %9384
  %9420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9421 = extractvalue %dx.types.CBufRet.f32 %9420, 0
  %9422 = fmul fast float %9421, %7491
  %9423 = fmul fast float %9421, %7492
  %9424 = fmul fast float %9421, %7493
  br label %9631

; <label>:9425                                    ; preds = %9384
  %9426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9427 = extractvalue %dx.types.CBufRet.f32 %9426, 0
  %9428 = fmul fast float %9427, %4790
  %9429 = fmul fast float %9427, %4791
  %9430 = fmul fast float %9427, %4792
  br label %9631

; <label>:9431                                    ; preds = %9384
  %9432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9433 = extractvalue %dx.types.CBufRet.f32 %9432, 0
  %9434 = fmul fast float %9433, %4790
  %9435 = fmul fast float %9433, %4791
  %9436 = fmul fast float %9433, %4792
  br label %9631

; <label>:9437                                    ; preds = %9384
  %9438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9439 = extractvalue %dx.types.CBufRet.f32 %9438, 0
  %9440 = fmul fast float %4793, %9439
  %9441 = fmul fast float %4794, %9439
  %9442 = fmul fast float %4795, %9439
  br label %9631

; <label>:9443                                    ; preds = %9384
  %9444 = bitcast i32 %8085 to float
  br label %9631

; <label>:9445                                    ; preds = %9384
  %9446 = and i32 %8085, 1023
  %9447 = uitofp i32 %9446 to float
  %9448 = lshr i32 %8085, 10
  %9449 = and i32 %9448, 1023
  %9450 = uitofp i32 %9449 to float
  %9451 = lshr i32 %8085, 20
  %9452 = and i32 %9451, 1023
  %9453 = uitofp i32 %9452 to float
  %9454 = fmul fast float %9447, 0x3F60040100000000
  %9455 = fmul fast float %9450, 0x3F60040100000000
  %9456 = fmul fast float %9453, 0x3F60040100000000
  %9457 = fadd fast float %9454, -1.000000e+00
  %9458 = fadd fast float %9455, -1.000000e+00
  %9459 = fadd fast float %9456, -1.000000e+00
  %9460 = fcmp fast ogt float %9457, 0.000000e+00
  %9461 = select i1 %9460, float 1.000000e+00, float 0.000000e+00
  %9462 = fcmp fast ogt float %9458, 0.000000e+00
  %9463 = select i1 %9462, float 1.000000e+00, float 0.000000e+00
  %9464 = fcmp fast ogt float %9459, 0.000000e+00
  %9465 = select i1 %9464, float 1.000000e+00, float 0.000000e+00
  br label %9631

; <label>:9466                                    ; preds = %9384
  %9467 = and i32 %8085, 1023
  %9468 = uitofp i32 %9467 to float
  %9469 = lshr i32 %8085, 10
  %9470 = and i32 %9469, 1023
  %9471 = uitofp i32 %9470 to float
  %9472 = lshr i32 %8085, 20
  %9473 = and i32 %9472, 1023
  %9474 = uitofp i32 %9473 to float
  %9475 = fmul fast float %9468, 0x3F60040100000000
  %9476 = fmul fast float %9471, 0x3F60040100000000
  %9477 = fmul fast float %9474, 0x3F60040100000000
  %9478 = fadd fast float %9475, -1.000000e+00
  %9479 = fadd fast float %9476, -1.000000e+00
  %9480 = fadd fast float %9477, -1.000000e+00
  %9481 = fmul fast float %9480, %9479
  %9482 = fsub fast float %9480, %9481
  %9483 = fmul fast float %9479, %9478
  %9484 = fmul fast float %9482, %9478
  %9485 = fsub fast float %9479, %9483
  %9486 = fsub fast float %9482, %9484
  br label %9631

; <label>:9487                                    ; preds = %9384
  %9488 = and i32 %8085, 255
  %9489 = uitofp i32 %9488 to float
  %9490 = fmul fast float %9489, 0x3F70101020000000
  %9491 = lshr i32 %8085, 8
  %9492 = and i32 %9491, 255
  %9493 = uitofp i32 %9492 to float
  %9494 = fmul fast float %9493, 0x3F70101020000000
  %9495 = lshr i32 %8085, 16
  %9496 = and i32 %9495, 255
  %9497 = uitofp i32 %9496 to float
  %9498 = fmul fast float %9497, 0x3F70101020000000
  br label %9631

; <label>:9499                                    ; preds = %9384
  %9500 = and i32 %8085, 1023
  %9501 = uitofp i32 %9500 to float
  %9502 = lshr i32 %8085, 10
  %9503 = and i32 %9502, 1023
  %9504 = uitofp i32 %9503 to float
  %9505 = lshr i32 %8085, 20
  %9506 = and i32 %9505, 1023
  %9507 = uitofp i32 %9506 to float
  %9508 = fmul fast float %9501, 0x3F60040100000000
  %9509 = fmul fast float %9504, 0x3F60040100000000
  %9510 = fmul fast float %9507, 0x3F60040100000000
  %9511 = fadd fast float %9508, -1.000000e+00
  %9512 = fadd fast float %9509, -1.000000e+00
  %9513 = fadd fast float %9510, -1.000000e+00
  br label %9631

; <label>:9514                                    ; preds = %9384
  %9515 = icmp ne i32 %8085, 0
  %9516 = select i1 %9515, float 1.000000e+00, float %9385
  %9517 = select i1 %9515, float 0.000000e+00, float %9386
  %9518 = select i1 %9515, float 0.000000e+00, float %9387
  br label %9631

; <label>:9519                                    ; preds = %9384
  %9520 = bitcast i32 %8085 to float
  br label %9631

; <label>:9521                                    ; preds = %9384
  %9522 = bitcast i32 %8085 to float
  br label %9631

; <label>:9523                                    ; preds = %9384
  %9524 = bitcast i32 %8085 to float
  br label %9631

; <label>:9525                                    ; preds = %9384
  %9526 = bitcast i32 %8085 to float
  br label %9631

; <label>:9527                                    ; preds = %9384
  %9528 = and i32 %8085, 65535
  %9529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9528)  ; LegacyF16ToF32(value)
  %9530 = lshr i32 %8085, 16
  %9531 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9530)  ; LegacyF16ToF32(value)
  %9532 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 0
  %9535 = fmul fast float %9534, %9529
  %9536 = fmul fast float %9534, %9531
  %9537 = fmul fast float %9534, %9532
  br label %9631

; <label>:9538                                    ; preds = %9384
  %9539 = and i32 %8085, 65535
  %9540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9539)  ; LegacyF16ToF32(value)
  %9541 = lshr i32 %8085, 16
  %9542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9541)  ; LegacyF16ToF32(value)
  %9543 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9545 = extractvalue %dx.types.CBufRet.f32 %9544, 0
  %9546 = fmul fast float %9545, %9540
  %9547 = fmul fast float %9545, %9542
  %9548 = fmul fast float %9545, %9543
  br label %9631

; <label>:9549                                    ; preds = %9384
  %9550 = and i32 %8085, 1023
  %9551 = uitofp i32 %9550 to float
  %9552 = lshr i32 %8085, 10
  %9553 = and i32 %9552, 1023
  %9554 = uitofp i32 %9553 to float
  %9555 = lshr i32 %8085, 20
  %9556 = and i32 %9555, 1023
  %9557 = uitofp i32 %9556 to float
  %9558 = fmul fast float %9551, 0x3F50040100000000
  %9559 = fmul fast float %9554, 0x3F50040100000000
  %9560 = fmul fast float %9557, 0x3F50040100000000
  br label %9631

; <label>:9561                                    ; preds = %9384
  %9562 = and i32 %8085, 1023
  %9563 = uitofp i32 %9562 to float
  %9564 = lshr i32 %8085, 10
  %9565 = and i32 %9564, 1023
  %9566 = uitofp i32 %9565 to float
  %9567 = lshr i32 %8085, 20
  %9568 = and i32 %9567, 1023
  %9569 = uitofp i32 %9568 to float
  %9570 = fmul fast float %9563, 0x3F60040100000000
  %9571 = fmul fast float %9566, 0x3F60040100000000
  %9572 = fmul fast float %9569, 0x3F60040100000000
  %9573 = fadd fast float %9570, -1.000000e+00
  %9574 = fadd fast float %9571, -1.000000e+00
  %9575 = fadd fast float %9572, -1.000000e+00
  %9576 = call float @dx.op.binary.f32(i32 35, float %9574, float %9575)  ; FMax(a,b)
  %9577 = call float @dx.op.binary.f32(i32 35, float %9573, float %9576)  ; FMax(a,b)
  %9578 = fmul fast float %9577, 2.000000e+00
  %9579 = call float @dx.op.unary.f32(i32 7, float %9578)  ; Saturate(value)
  %9580 = fmul fast float %9563, 0x3F94050140000000
  %9581 = fadd fast float %9580, -1.000000e+01
  %9582 = fmul fast float %9566, 0x3F94050140000000
  %9583 = fadd fast float %9582, -1.000000e+01
  %9584 = fmul fast float %9569, 0x3F94050140000000
  %9585 = fadd fast float %9584, -1.000000e+01
  %9586 = fsub fast float %9581, %9385
  %9587 = fsub fast float %9583, %9386
  %9588 = fsub fast float %9585, %9387
  %9589 = fmul fast float %9579, %9586
  %9590 = fmul fast float %9579, %9587
  %9591 = fmul fast float %9579, %9588
  %9592 = fadd fast float %9589, %9385
  %9593 = fadd fast float %9590, %9386
  %9594 = fadd fast float %9591, %9387
  br label %9631

; <label>:9595                                    ; preds = %9384
  %9596 = and i32 %8085, 1023
  %9597 = uitofp i32 %9596 to float
  %9598 = lshr i32 %8085, 10
  %9599 = and i32 %9598, 1023
  %9600 = uitofp i32 %9599 to float
  %9601 = lshr i32 %8085, 20
  %9602 = and i32 %9601, 1023
  %9603 = uitofp i32 %9602 to float
  %9604 = fmul fast float %9597, 0x3F60040100000000
  %9605 = fmul fast float %9600, 0x3F60040100000000
  %9606 = fmul fast float %9603, 0x3F60040100000000
  %9607 = fadd fast float %9604, -1.000000e+00
  %9608 = fadd fast float %9605, -1.000000e+00
  %9609 = fadd fast float %9606, -1.000000e+00
  br label %9631

; <label>:9610                                    ; preds = %9384
  %9611 = and i32 %8085, 1023
  %9612 = uitofp i32 %9611 to float
  %9613 = lshr i32 %8085, 10
  %9614 = and i32 %9613, 1023
  %9615 = uitofp i32 %9614 to float
  %9616 = lshr i32 %8085, 20
  %9617 = and i32 %9616, 1023
  %9618 = uitofp i32 %9617 to float
  %9619 = fmul fast float %9612, 0x3F60040100000000
  %9620 = fmul fast float %9615, 0x3F60040100000000
  %9621 = fmul fast float %9618, 0x3F60040100000000
  %9622 = fadd fast float %9619, -1.000000e+00
  %9623 = fadd fast float %9620, -1.000000e+00
  %9624 = fadd fast float %9621, -1.000000e+00
  br label %9631

; <label>:9625                                    ; preds = %9384
  %9626 = bitcast i32 %8085 to float
  br label %9631

; <label>:9627                                    ; preds = %9384
  %9628 = bitcast i32 %8085 to float
  br label %9631

; <label>:9629                                    ; preds = %9384
  %9630 = bitcast i32 %8085 to float
  br label %9631

; <label>:9631                                    ; preds = %9629, %9627, %9625, %9610, %9595, %9561, %9549, %9538, %9527, %9525, %9523, %9521, %9519, %9514, %9499, %9487, %9466, %9445, %9443, %9437, %9431, %9425, %9419, %9413, %9407, %9401, %9395, %9384
  %9632 = phi float [ %9385, %9384 ], [ %9630, %9629 ], [ %9628, %9627 ], [ %9626, %9625 ], [ %9622, %9610 ], [ %9607, %9595 ], [ %9592, %9561 ], [ %9558, %9549 ], [ %9546, %9538 ], [ %9535, %9527 ], [ %9526, %9525 ], [ %9524, %9523 ], [ %9522, %9521 ], [ %9520, %9519 ], [ %9511, %9499 ], [ %9490, %9487 ], [ %9478, %9466 ], [ %9461, %9445 ], [ %9444, %9443 ], [ %9440, %9437 ], [ %9434, %9431 ], [ %9428, %9425 ], [ %9422, %9419 ], [ %9416, %9413 ], [ %9410, %9407 ], [ %9404, %9401 ], [ %9398, %9395 ], [ %9516, %9514 ]
  %9633 = phi float [ %9386, %9384 ], [ %9630, %9629 ], [ %9628, %9627 ], [ %9626, %9625 ], [ %9623, %9610 ], [ %9608, %9595 ], [ %9593, %9561 ], [ %9559, %9549 ], [ %9547, %9538 ], [ %9536, %9527 ], [ %9526, %9525 ], [ %9524, %9523 ], [ %9522, %9521 ], [ %9520, %9519 ], [ %9512, %9499 ], [ %9494, %9487 ], [ %9485, %9466 ], [ %9463, %9445 ], [ %9444, %9443 ], [ %9441, %9437 ], [ %9435, %9431 ], [ %9429, %9425 ], [ %9423, %9419 ], [ %9417, %9413 ], [ %9411, %9407 ], [ %9405, %9401 ], [ %9399, %9395 ], [ %9517, %9514 ]
  %9634 = phi float [ %9387, %9384 ], [ %9630, %9629 ], [ %9628, %9627 ], [ %9626, %9625 ], [ %9624, %9610 ], [ %9609, %9595 ], [ %9594, %9561 ], [ %9560, %9549 ], [ %9548, %9538 ], [ %9537, %9527 ], [ %9526, %9525 ], [ %9524, %9523 ], [ %9522, %9521 ], [ %9520, %9519 ], [ %9513, %9499 ], [ %9498, %9487 ], [ %9486, %9466 ], [ %9465, %9445 ], [ %9444, %9443 ], [ %9442, %9437 ], [ %9436, %9431 ], [ %9430, %9425 ], [ %9424, %9419 ], [ %9418, %9413 ], [ %9412, %9407 ], [ %9406, %9401 ], [ %9400, %9395 ], [ %9518, %9514 ]
  %9635 = extractvalue %dx.types.CBufRet.f32 %9388, 3
  %9636 = fsub fast float %9632, %9385
  %9637 = fsub fast float %9633, %9386
  %9638 = fsub fast float %9634, %9387
  %9639 = fmul fast float %9635, %9636
  %9640 = fmul fast float %9635, %9637
  %9641 = fmul fast float %9635, %9638
  %9642 = fadd fast float %9639, %9385
  %9643 = fadd fast float %9640, %9386
  %9644 = fadd fast float %9641, %9387
  %9645 = lshr i32 %9390, 16
  %9646 = and i32 %9645, 255
  %9647 = uitofp i32 %9646 to float
  %9648 = fptoui float %9647 to i32
  switch i32 %9648, label %9695 [
    i32 16, label %9680
    i32 12, label %9679
    i32 3, label %9649
    i32 4, label %9650
    i32 15, label %9651
    i32 5, label %9660
    i32 6, label %9669
    i32 7, label %9678
    i32 11, label %9679
  ]

; <label>:9649                                    ; preds = %9631
  br label %9695

; <label>:9650                                    ; preds = %9631
  br label %9695

; <label>:9651                                    ; preds = %9631
  %9652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %9653 = extractvalue %dx.types.CBufRet.f32 %9652, 0
  %9654 = fadd fast float %9653, %9642
  %9655 = fadd fast float %9653, %9643
  %9656 = fadd fast float %9653, %9644
  %9657 = call float @dx.op.unary.f32(i32 7, float %9654)  ; Saturate(value)
  %9658 = call float @dx.op.unary.f32(i32 7, float %9655)  ; Saturate(value)
  %9659 = call float @dx.op.unary.f32(i32 7, float %9656)  ; Saturate(value)
  br label %9695

; <label>:9660                                    ; preds = %9631
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 0
  %9663 = bitcast float %9662 to i32
  %9664 = and i32 %9663, 2130706432
  %9665 = icmp eq i32 %9664, 0
  %9666 = select i1 %9665, float 0.000000e+00, float %9642
  %9667 = select i1 %9665, float 0.000000e+00, float %9643
  %9668 = select i1 %9665, float 0.000000e+00, float %9644
  br label %9695

; <label>:9669                                    ; preds = %9631
  %9670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9671 = extractvalue %dx.types.CBufRet.f32 %9670, 0
  %9672 = bitcast float %9671 to i32
  %9673 = and i32 %9672, 2130706432
  %9674 = icmp eq i32 %9673, 0
  %9675 = select i1 %9674, float 0.000000e+00, float %9642
  %9676 = select i1 %9674, float 0.000000e+00, float %9643
  %9677 = select i1 %9674, float 0.000000e+00, float %9644
  br label %9695

; <label>:9678                                    ; preds = %9631
  br label %9695

; <label>:9679                                    ; preds = %9631, %9631
  br label %9695

; <label>:9680                                    ; preds = %9631
  %9681 = and i32 %8085, 1023
  %9682 = uitofp i32 %9681 to float
  %9683 = lshr i32 %8085, 10
  %9684 = and i32 %9683, 1023
  %9685 = uitofp i32 %9684 to float
  %9686 = lshr i32 %8085, 20
  %9687 = and i32 %9686, 1023
  %9688 = uitofp i32 %9687 to float
  %9689 = fmul fast float %9682, 0x3F60040100000000
  %9690 = fmul fast float %9685, 0x3F60040100000000
  %9691 = fmul fast float %9688, 0x3F60040100000000
  %9692 = fadd fast float %9689, -1.000000e+00
  %9693 = fadd fast float %9690, -1.000000e+00
  %9694 = fadd fast float %9691, -1.000000e+00
  br label %9695

; <label>:9695                                    ; preds = %9680, %9679, %9678, %9669, %9660, %9651, %9650, %9649, %9631
  %9696 = phi float [ 0.000000e+00, %9678 ], [ %9657, %9651 ], [ 0.000000e+00, %9650 ], [ %69, %9679 ], [ %9692, %9680 ], [ 0.000000e+00, %9649 ], [ %9666, %9660 ], [ %9675, %9669 ], [ %9642, %9631 ]
  %9697 = phi float [ 0.000000e+00, %9678 ], [ %9658, %9651 ], [ 0.000000e+00, %9650 ], [ %70, %9679 ], [ %9693, %9680 ], [ 0.000000e+00, %9649 ], [ %9667, %9660 ], [ %9676, %9669 ], [ %9643, %9631 ]
  %9698 = phi float [ 0.000000e+00, %9678 ], [ %9659, %9651 ], [ 1.000000e+00, %9650 ], [ %71, %9679 ], [ %9694, %9680 ], [ 0.000000e+00, %9649 ], [ %9668, %9660 ], [ %9677, %9669 ], [ %9644, %9631 ]
  %9699 = fsub fast float %9696, %9642
  %9700 = fsub fast float %9697, %9643
  %9701 = fsub fast float %9698, %9644
  %9702 = fmul fast float %9635, %9699
  %9703 = fmul fast float %9635, %9700
  %9704 = fmul fast float %9635, %9701
  %9705 = fadd fast float %9702, %9642
  %9706 = fadd fast float %9703, %9643
  %9707 = fadd fast float %9704, %9644
  %9708 = and i32 %7489, 255
  %9709 = uitofp i32 %9708 to float
  %9710 = fptoui float %9709 to i32
  %9711 = lshr i32 %7489, 8
  %9712 = and i32 %9711, 255
  %9713 = uitofp i32 %9712 to float
  %9714 = fptoui float %9713 to i32
  %9715 = lshr i32 %7489, 16
  %9716 = and i32 %9715, 255
  %9717 = uitofp i32 %9716 to float
  %9718 = fptoui float %9717 to i32
  %9719 = lshr i32 %7489, 24
  %9720 = uitofp i32 %9719 to float
  %9721 = fptoui float %9720 to i32
  %9722 = and i32 %7488, 255
  %9723 = uitofp i32 %9722 to float
  %9724 = fptoui float %9723 to i32
  %9725 = lshr i32 %7488, 16
  %9726 = and i32 %9725, 255
  %9727 = uitofp i32 %9726 to float
  %9728 = fptoui float %9727 to i32
  %9729 = lshr i32 %9390, 24
  %9730 = uitofp i32 %9729 to float
  %9731 = fptoui float %9730 to i32
  switch i32 %9731, label %9970 [
    i32 1, label %9732
    i32 2, label %9759
    i32 3, label %9784
    i32 4, label %9807
    i32 5, label %9830
    i32 6, label %9853
    i32 7, label %9877
    i32 8, label %9900
    i32 9, label %9923
    i32 12, label %9945
    i32 13, label %9946
    i32 14, label %9969
  ]

; <label>:9732                                    ; preds = %9695
  %9733 = add i32 %9710, %9724
  %9734 = add i32 %9733, %9721
  %9735 = add i32 %9734, %9714
  %9736 = add i32 %9735, %9718
  %9737 = uitofp i32 %9736 to float
  %9738 = fadd fast float %9737, -4.000000e+00
  %9739 = fmul fast float %9738, 0x3FB5555560000000
  %9740 = call float @dx.op.unary.f32(i32 7, float %9739)  ; Saturate(value)
  %9741 = icmp eq i32 %9736, 0
  %9742 = select i1 %9741, float 0.000000e+00, float %9740
  %9743 = icmp ult i32 %9736, 2
  %9744 = select i1 %9743, float 0.000000e+00, float %9740
  %9745 = add i32 %9736, -1
  %9746 = icmp ult i32 %9745, 2
  %9747 = select i1 %9746, float 1.000000e+00, float %9742
  %9748 = icmp ult i32 %9736, 4
  %9749 = select i1 %9748, float 0.000000e+00, float 1.000000e+00
  %9750 = and i32 %9736, -2
  %9751 = icmp eq i32 %9750, 2
  %9752 = icmp eq i32 %9736, 4
  %9753 = select i1 %9752, float 1.000000e+00, float %9749
  %9754 = or i1 %9752, %9751
  %9755 = select i1 %9754, float 1.000000e+00, float %9744
  %9756 = add i32 %9736, -3
  %9757 = icmp ult i32 %9756, 2
  %9758 = select i1 %9757, float 0.000000e+00, float %9747
  br label %9970

; <label>:9759                                    ; preds = %9695
  %9760 = add i32 %9714, %9710
  %9761 = add i32 %9760, %9718
  %9762 = uitofp i32 %9761 to float
  %9763 = fadd fast float %9762, -4.000000e+00
  %9764 = fmul fast float %9763, 0x3FB5555560000000
  %9765 = call float @dx.op.unary.f32(i32 7, float %9764)  ; Saturate(value)
  %9766 = icmp eq i32 %9761, 0
  %9767 = select i1 %9766, float 0.000000e+00, float %9765
  %9768 = icmp ult i32 %9761, 2
  %9769 = select i1 %9768, float 0.000000e+00, float %9765
  %9770 = add i32 %9761, -1
  %9771 = icmp ult i32 %9770, 2
  %9772 = select i1 %9771, float 1.000000e+00, float %9767
  %9773 = icmp ult i32 %9761, 4
  %9774 = select i1 %9773, float 0.000000e+00, float 1.000000e+00
  %9775 = and i32 %9761, -2
  %9776 = icmp eq i32 %9775, 2
  %9777 = icmp eq i32 %9761, 4
  %9778 = select i1 %9777, float 1.000000e+00, float %9774
  %9779 = or i1 %9777, %9776
  %9780 = select i1 %9779, float 1.000000e+00, float %9769
  %9781 = add i32 %9761, -3
  %9782 = icmp ult i32 %9781, 2
  %9783 = select i1 %9782, float 0.000000e+00, float %9772
  br label %9970

; <label>:9784                                    ; preds = %9695
  %9785 = uitofp i32 %9710 to float
  %9786 = fadd fast float %9785, -4.000000e+00
  %9787 = fmul fast float %9786, 0x3FB5555560000000
  %9788 = call float @dx.op.unary.f32(i32 7, float %9787)  ; Saturate(value)
  %9789 = icmp eq i32 %9710, 0
  %9790 = select i1 %9789, float 0.000000e+00, float %9788
  %9791 = icmp ult i32 %9710, 2
  %9792 = select i1 %9791, float 0.000000e+00, float %9788
  %9793 = add i32 %9710, -1
  %9794 = icmp ult i32 %9793, 2
  %9795 = select i1 %9794, float 1.000000e+00, float %9790
  %9796 = icmp ult i32 %9710, 4
  %9797 = select i1 %9796, float 0.000000e+00, float 1.000000e+00
  %9798 = and i32 %9710, -2
  %9799 = icmp eq i32 %9798, 2
  %9800 = icmp eq i32 %9710, 4
  %9801 = select i1 %9800, float 1.000000e+00, float %9797
  %9802 = or i1 %9800, %9799
  %9803 = select i1 %9802, float 1.000000e+00, float %9792
  %9804 = add i32 %9710, -3
  %9805 = icmp ult i32 %9804, 2
  %9806 = select i1 %9805, float 0.000000e+00, float %9795
  br label %9970

; <label>:9807                                    ; preds = %9695
  %9808 = uitofp i32 %9714 to float
  %9809 = fadd fast float %9808, -4.000000e+00
  %9810 = fmul fast float %9809, 0x3FB5555560000000
  %9811 = call float @dx.op.unary.f32(i32 7, float %9810)  ; Saturate(value)
  %9812 = icmp eq i32 %9714, 0
  %9813 = select i1 %9812, float 0.000000e+00, float %9811
  %9814 = icmp ult i32 %9714, 2
  %9815 = select i1 %9814, float 0.000000e+00, float %9811
  %9816 = add i32 %9714, -1
  %9817 = icmp ult i32 %9816, 2
  %9818 = select i1 %9817, float 1.000000e+00, float %9813
  %9819 = icmp ult i32 %9714, 4
  %9820 = select i1 %9819, float 0.000000e+00, float 1.000000e+00
  %9821 = and i32 %9714, -2
  %9822 = icmp eq i32 %9821, 2
  %9823 = icmp eq i32 %9714, 4
  %9824 = select i1 %9823, float 1.000000e+00, float %9820
  %9825 = or i1 %9823, %9822
  %9826 = select i1 %9825, float 1.000000e+00, float %9815
  %9827 = add i32 %9714, -3
  %9828 = icmp ult i32 %9827, 2
  %9829 = select i1 %9828, float 0.000000e+00, float %9818
  br label %9970

; <label>:9830                                    ; preds = %9695
  %9831 = uitofp i32 %9718 to float
  %9832 = fadd fast float %9831, -4.000000e+00
  %9833 = fmul fast float %9832, 0x3FB5555560000000
  %9834 = call float @dx.op.unary.f32(i32 7, float %9833)  ; Saturate(value)
  %9835 = icmp eq i32 %9718, 0
  %9836 = select i1 %9835, float 0.000000e+00, float %9834
  %9837 = icmp ult i32 %9718, 2
  %9838 = select i1 %9837, float 0.000000e+00, float %9834
  %9839 = add i32 %9718, -1
  %9840 = icmp ult i32 %9839, 2
  %9841 = select i1 %9840, float 1.000000e+00, float %9836
  %9842 = icmp ult i32 %9718, 4
  %9843 = select i1 %9842, float 0.000000e+00, float 1.000000e+00
  %9844 = and i32 %9718, -2
  %9845 = icmp eq i32 %9844, 2
  %9846 = icmp eq i32 %9718, 4
  %9847 = select i1 %9846, float 1.000000e+00, float %9843
  %9848 = or i1 %9846, %9845
  %9849 = select i1 %9848, float 1.000000e+00, float %9838
  %9850 = add i32 %9718, -3
  %9851 = icmp ult i32 %9850, 2
  %9852 = select i1 %9851, float 0.000000e+00, float %9841
  br label %9970

; <label>:9853                                    ; preds = %9695
  %9854 = add i32 %9721, %9724
  %9855 = uitofp i32 %9854 to float
  %9856 = fadd fast float %9855, -4.000000e+00
  %9857 = fmul fast float %9856, 0x3FB5555560000000
  %9858 = call float @dx.op.unary.f32(i32 7, float %9857)  ; Saturate(value)
  %9859 = icmp eq i32 %9854, 0
  %9860 = select i1 %9859, float 0.000000e+00, float %9858
  %9861 = icmp ult i32 %9854, 2
  %9862 = select i1 %9861, float 0.000000e+00, float %9858
  %9863 = add i32 %9854, -1
  %9864 = icmp ult i32 %9863, 2
  %9865 = select i1 %9864, float 1.000000e+00, float %9860
  %9866 = icmp ult i32 %9854, 4
  %9867 = select i1 %9866, float 0.000000e+00, float 1.000000e+00
  %9868 = and i32 %9854, -2
  %9869 = icmp eq i32 %9868, 2
  %9870 = icmp eq i32 %9854, 4
  %9871 = select i1 %9870, float 1.000000e+00, float %9867
  %9872 = or i1 %9870, %9869
  %9873 = select i1 %9872, float 1.000000e+00, float %9862
  %9874 = add i32 %9854, -3
  %9875 = icmp ult i32 %9874, 2
  %9876 = select i1 %9875, float 0.000000e+00, float %9865
  br label %9970

; <label>:9877                                    ; preds = %9695
  %9878 = uitofp i32 %9721 to float
  %9879 = fadd fast float %9878, -4.000000e+00
  %9880 = fmul fast float %9879, 0x3FB5555560000000
  %9881 = call float @dx.op.unary.f32(i32 7, float %9880)  ; Saturate(value)
  %9882 = icmp eq i32 %9721, 0
  %9883 = select i1 %9882, float 0.000000e+00, float %9881
  %9884 = icmp ult i32 %9721, 2
  %9885 = select i1 %9884, float 0.000000e+00, float %9881
  %9886 = add i32 %9721, -1
  %9887 = icmp ult i32 %9886, 2
  %9888 = select i1 %9887, float 1.000000e+00, float %9883
  %9889 = icmp ult i32 %9721, 4
  %9890 = select i1 %9889, float 0.000000e+00, float 1.000000e+00
  %9891 = and i32 %9721, -2
  %9892 = icmp eq i32 %9891, 2
  %9893 = icmp eq i32 %9721, 4
  %9894 = select i1 %9893, float 1.000000e+00, float %9890
  %9895 = or i1 %9893, %9892
  %9896 = select i1 %9895, float 1.000000e+00, float %9885
  %9897 = add i32 %9721, -3
  %9898 = icmp ult i32 %9897, 2
  %9899 = select i1 %9898, float 0.000000e+00, float %9888
  br label %9970

; <label>:9900                                    ; preds = %9695
  %9901 = uitofp i32 %9724 to float
  %9902 = fadd fast float %9901, -4.000000e+00
  %9903 = fmul fast float %9902, 0x3FB5555560000000
  %9904 = call float @dx.op.unary.f32(i32 7, float %9903)  ; Saturate(value)
  %9905 = icmp eq i32 %9724, 0
  %9906 = select i1 %9905, float 0.000000e+00, float %9904
  %9907 = icmp ult i32 %9724, 2
  %9908 = select i1 %9907, float 0.000000e+00, float %9904
  %9909 = add i32 %9724, -1
  %9910 = icmp ult i32 %9909, 2
  %9911 = select i1 %9910, float 1.000000e+00, float %9906
  %9912 = icmp ult i32 %9724, 4
  %9913 = select i1 %9912, float 0.000000e+00, float 1.000000e+00
  %9914 = and i32 %9724, -2
  %9915 = icmp eq i32 %9914, 2
  %9916 = icmp eq i32 %9724, 4
  %9917 = select i1 %9916, float 1.000000e+00, float %9913
  %9918 = or i1 %9916, %9915
  %9919 = select i1 %9918, float 1.000000e+00, float %9908
  %9920 = add i32 %9724, -3
  %9921 = icmp ult i32 %9920, 2
  %9922 = select i1 %9921, float 0.000000e+00, float %9911
  br label %9970

; <label>:9923                                    ; preds = %9695
  %9924 = lshr i32 %7488, 8
  %9925 = and i32 %9924, 255
  %9926 = uitofp i32 %9925 to float
  %9927 = fptoui float %9926 to i32
  %9928 = uitofp i32 %9927 to float
  %9929 = fcmp fast oge float %9928, 1.000000e+00
  %9930 = fcmp fast oge float %9928, 2.000000e+00
  %9931 = or i1 %9930, %9929
  %9932 = select i1 %9931, float 1.000000e+00, float 0.000000e+00
  %9933 = fcmp fast oge float %9928, 3.000000e+00
  %9934 = or i1 %9933, %9930
  %9935 = fcmp fast oge float %9928, 4.000000e+00
  %9936 = or i1 %9935, %9934
  %9937 = select i1 %9936, float 1.000000e+00, float 0.000000e+00
  %9938 = or i1 %9935, %9933
  %9939 = fcmp fast oge float %9928, 5.000000e+00
  %9940 = or i1 %9939, %9935
  %9941 = select i1 %9940, float 1.000000e+00, float 0.000000e+00
  %9942 = select i1 %9939, float 0.000000e+00, float %9937
  %9943 = or i1 %9939, %9938
  %9944 = select i1 %9943, float 0.000000e+00, float %9932
  br label %9970

; <label>:9945                                    ; preds = %9695
  br label %9970

; <label>:9946                                    ; preds = %9695
  %9947 = uitofp i32 %9728 to float
  %9948 = fadd fast float %9947, -4.000000e+00
  %9949 = fmul fast float %9948, 0x3FB5555560000000
  %9950 = call float @dx.op.unary.f32(i32 7, float %9949)  ; Saturate(value)
  %9951 = icmp eq i32 %9728, 0
  %9952 = select i1 %9951, float 0.000000e+00, float %9950
  %9953 = icmp ult i32 %9728, 2
  %9954 = select i1 %9953, float 0.000000e+00, float %9950
  %9955 = add i32 %9728, -1
  %9956 = icmp ult i32 %9955, 2
  %9957 = select i1 %9956, float 1.000000e+00, float %9952
  %9958 = icmp ult i32 %9728, 4
  %9959 = select i1 %9958, float 0.000000e+00, float 1.000000e+00
  %9960 = and i32 %9728, -2
  %9961 = icmp eq i32 %9960, 2
  %9962 = icmp eq i32 %9728, 4
  %9963 = select i1 %9962, float 1.000000e+00, float %9959
  %9964 = or i1 %9962, %9961
  %9965 = select i1 %9964, float 1.000000e+00, float %9954
  %9966 = add i32 %9728, -3
  %9967 = icmp ult i32 %9966, 2
  %9968 = select i1 %9967, float 0.000000e+00, float %9957
  br label %9970

; <label>:9969                                    ; preds = %9695
  br label %9970

; <label>:9970                                    ; preds = %9969, %9946, %9945, %9923, %9900, %9877, %9853, %9830, %9807, %9784, %9759, %9732, %9695
  %9971 = phi float [ %9705, %9695 ], [ 5.000000e-01, %9969 ], [ %9963, %9946 ], [ 1.000000e+00, %9945 ], [ %9941, %9923 ], [ %9917, %9900 ], [ %9894, %9877 ], [ %9871, %9853 ], [ %9847, %9830 ], [ %9824, %9807 ], [ %9801, %9784 ], [ %9778, %9759 ], [ %9753, %9732 ]
  %9972 = phi float [ %9706, %9695 ], [ 5.000000e-01, %9969 ], [ %9965, %9946 ], [ 0.000000e+00, %9945 ], [ %9942, %9923 ], [ %9919, %9900 ], [ %9896, %9877 ], [ %9873, %9853 ], [ %9849, %9830 ], [ %9826, %9807 ], [ %9803, %9784 ], [ %9780, %9759 ], [ %9755, %9732 ]
  %9973 = phi float [ %9707, %9695 ], [ 5.000000e-01, %9969 ], [ %9968, %9946 ], [ 0.000000e+00, %9945 ], [ %9944, %9923 ], [ %9922, %9900 ], [ %9899, %9877 ], [ %9876, %9853 ], [ %9852, %9830 ], [ %9829, %9807 ], [ %9806, %9784 ], [ %9783, %9759 ], [ %9758, %9732 ]
  %9974 = fsub fast float %9971, %9705
  %9975 = fsub fast float %9972, %9706
  %9976 = fsub fast float %9973, %9707
  %9977 = fmul fast float %9974, %9635
  %9978 = fmul fast float %9975, %9635
  %9979 = fmul fast float %9976, %9635
  %9980 = fadd fast float %9977, %9705
  %9981 = fadd fast float %9978, %9706
  %9982 = fadd fast float %9979, %9707
  %9983 = and i32 %9390, 255
  %9984 = uitofp i32 %9983 to float
  %9985 = fptoui float %9984 to i32
  %9986 = icmp ult i32 %9985, 25
  br i1 %9986, label %9987, label %9992

; <label>:9987                                    ; preds = %9970
  %9988 = trunc i32 %9985 to i25
  %9989 = lshr i25 1048574, %9988
  %9990 = and i25 %9989, 1
  %9991 = icmp ne i25 %9990, 0
  br label %9992

; <label>:9992                                    ; preds = %9987, %9970
  %9993 = phi i1 [ %9991, %9987 ], [ true, %9970 ]
  %9994 = or i32 %9648, %9394
  %9995 = or i32 %9994, %9731
  %9996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9997 = extractvalue %dx.types.CBufRet.f32 %9996, 3
  %9998 = bitcast float %9997 to i32
  %9999 = and i32 %9998, 255
  %10000 = uitofp i32 %9999 to float
  %10001 = fptoui float %10000 to i32
  %10002 = or i32 %9995, %10001
  %10003 = icmp ne i32 %10002, 0
  %10004 = or i1 %9993, %10003
  %10005 = extractvalue %dx.types.CBufRet.f32 %9996, 0
  %10006 = bitcast float %10005 to i32
  %10007 = icmp slt i32 %10006, 0
  %10008 = or i1 %10007, %10004
  br i1 %10008, label %10009, label %10017

; <label>:10009                                   ; preds = %9992
  %10010 = icmp eq i32 %9731, 14
  %10011 = select i1 %10010, float 0.000000e+00, float 1.000000e+00
  %10012 = icmp eq i32 %9985, 0
  br i1 %10012, label %10017, label %10013

; <label>:10013                                   ; preds = %10009
  %10014 = fmul fast float %10011, %9980
  %10015 = fmul fast float %10011, %9981
  %10016 = fmul fast float %10011, %9982
  br label %10017

; <label>:10017                                   ; preds = %10013, %10009, %9992
  %10018 = phi float [ %10014, %10013 ], [ %9980, %10009 ], [ %9980, %9992 ]
  %10019 = phi float [ %10015, %10013 ], [ %9981, %10009 ], [ %9981, %9992 ]
  %10020 = phi float [ %10016, %10013 ], [ %9982, %10009 ], [ %9982, %9992 ]
  %10021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10022 = extractvalue %dx.types.CBufRet.f32 %10021, 2
  %10023 = extractvalue %dx.types.CBufRet.f32 %10021, 3
  %10024 = fmul fast float %10022, %98
  %10025 = fmul fast float %10023, %99
  %10026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10027 = extractvalue %dx.types.CBufRet.f32 %10026, 0
  %10028 = fcmp fast oge float %10024, %10027
  %10029 = extractvalue %dx.types.CBufRet.f32 %10026, 2
  %10030 = fcmp fast ole float %10024, %10029
  %10031 = and i1 %10028, %10030
  %10032 = extractvalue %dx.types.CBufRet.f32 %10026, 1
  %10033 = fcmp fast oge float %10025, %10032
  %10034 = and i1 %10031, %10033
  %10035 = extractvalue %dx.types.CBufRet.f32 %10026, 3
  %10036 = fcmp fast ole float %10025, %10035
  %10037 = and i1 %10034, %10036
  %10038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10039 = extractvalue %dx.types.CBufRet.i32 %10038, 0
  %10040 = icmp ne i32 %10039, 0
  %10041 = and i1 %10040, %10037
  br i1 %10041, label %10042, label %10958

; <label>:10042                                   ; preds = %10017
  %10043 = icmp eq i32 %10039, 1
  br i1 %10043, label %10044, label %10083

; <label>:10044                                   ; preds = %10042
  %10045 = uitofp i32 %197 to float
  %10046 = fmul fast float %10045, 0x3FE3C6EF40000000
  %10047 = call float @dx.op.unary.f32(i32 22, float %10046)  ; Frc(value)
  %10048 = fadd fast float %10047, 0x3FE5555560000000
  %10049 = fadd fast float %10047, 0x3FD5555560000000
  %10050 = fsub fast float -0.000000e+00, %10047
  %10051 = fsub fast float -0.000000e+00, %10048
  %10052 = fsub fast float -0.000000e+00, %10049
  %10053 = fcmp fast oge float %10047, %10050
  %10054 = fcmp fast oge float %10048, %10051
  %10055 = fcmp fast oge float %10049, %10052
  %10056 = call float @dx.op.unary.f32(i32 6, float %10047)  ; FAbs(value)
  %10057 = call float @dx.op.unary.f32(i32 6, float %10048)  ; FAbs(value)
  %10058 = call float @dx.op.unary.f32(i32 6, float %10049)  ; FAbs(value)
  %10059 = call float @dx.op.unary.f32(i32 22, float %10056)  ; Frc(value)
  %10060 = call float @dx.op.unary.f32(i32 22, float %10057)  ; Frc(value)
  %10061 = call float @dx.op.unary.f32(i32 22, float %10058)  ; Frc(value)
  %10062 = fsub fast float -0.000000e+00, %10059
  %10063 = fsub fast float -0.000000e+00, %10060
  %10064 = fsub fast float -0.000000e+00, %10061
  %10065 = select i1 %10053, float %10059, float %10062
  %10066 = select i1 %10054, float %10060, float %10063
  %10067 = select i1 %10055, float %10061, float %10064
  %10068 = fmul fast float %10065, 6.000000e+00
  %10069 = fmul fast float %10066, 6.000000e+00
  %10070 = fmul fast float %10067, 6.000000e+00
  %10071 = fadd fast float %10068, -3.000000e+00
  %10072 = fadd fast float %10069, -3.000000e+00
  %10073 = fadd fast float %10070, -3.000000e+00
  %10074 = call float @dx.op.unary.f32(i32 6, float %10071)  ; FAbs(value)
  %10075 = call float @dx.op.unary.f32(i32 6, float %10072)  ; FAbs(value)
  %10076 = call float @dx.op.unary.f32(i32 6, float %10073)  ; FAbs(value)
  %10077 = fadd fast float %10074, -1.000000e+00
  %10078 = fadd fast float %10075, -1.000000e+00
  %10079 = fadd fast float %10076, -1.000000e+00
  %10080 = call float @dx.op.unary.f32(i32 7, float %10077)  ; Saturate(value)
  %10081 = call float @dx.op.unary.f32(i32 7, float %10078)  ; Saturate(value)
  %10082 = call float @dx.op.unary.f32(i32 7, float %10079)  ; Saturate(value)
  br label %10958

; <label>:10083                                   ; preds = %10042
  %10084 = icmp eq i32 %10039, 2
  br i1 %10084, label %10085, label %10089

; <label>:10085                                   ; preds = %10083
  %10086 = fmul fast float %10018, %72
  %10087 = fmul fast float %10019, %73
  %10088 = fmul fast float %10020, %74
  br label %10958

; <label>:10089                                   ; preds = %10083
  %10090 = icmp eq i32 %10039, 3
  %10091 = icmp eq i32 %10039, 26
  %10092 = or i1 %10090, %10091
  br i1 %10092, label %10093, label %10193

; <label>:10093                                   ; preds = %10089
  br i1 %10090, label %10094, label %10105

; <label>:10094                                   ; preds = %10093
  %10095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10096 = extractvalue %dx.types.CBufRet.f32 %10095, 3
  %10097 = fsub fast float %177, %10096
  %10098 = fmul fast float %10097, 0x3FD5555560000000
  %10099 = call float @dx.op.unary.f32(i32 7, float %10098)  ; Saturate(value)
  %10100 = fmul fast float %10099, 6.300000e+01
  %10101 = fptoui float %10100 to i32
  %10102 = uitofp i32 %10101 to float
  %10103 = fmul fast float %10102, 0x3FA8618620000000
  %10104 = fadd fast float %10103, %10096
  br label %10105

; <label>:10105                                   ; preds = %10094, %10093
  %10106 = phi float [ %10104, %10094 ], [ %72, %10093 ]
  %10107 = call float @dx.op.unary.f32(i32 27, float %10106)  ; Round_ni(value)
  %10108 = fadd fast float %10107, 1.000000e+00
  %10109 = call float @dx.op.unary.f32(i32 22, float %10106)  ; Frc(value)
  %10110 = fmul fast float %10107, 0x3FE3C6EF40000000
  %10111 = call float @dx.op.unary.f32(i32 22, float %10110)  ; Frc(value)
  %10112 = fadd fast float %10111, 0x3FE5555560000000
  %10113 = fadd fast float %10111, 0x3FD5555560000000
  %10114 = fsub fast float -0.000000e+00, %10111
  %10115 = fsub fast float -0.000000e+00, %10112
  %10116 = fsub fast float -0.000000e+00, %10113
  %10117 = fcmp fast oge float %10111, %10114
  %10118 = fcmp fast oge float %10112, %10115
  %10119 = fcmp fast oge float %10113, %10116
  %10120 = call float @dx.op.unary.f32(i32 6, float %10111)  ; FAbs(value)
  %10121 = call float @dx.op.unary.f32(i32 6, float %10112)  ; FAbs(value)
  %10122 = call float @dx.op.unary.f32(i32 6, float %10113)  ; FAbs(value)
  %10123 = call float @dx.op.unary.f32(i32 22, float %10120)  ; Frc(value)
  %10124 = call float @dx.op.unary.f32(i32 22, float %10121)  ; Frc(value)
  %10125 = call float @dx.op.unary.f32(i32 22, float %10122)  ; Frc(value)
  %10126 = fsub fast float -0.000000e+00, %10123
  %10127 = fsub fast float -0.000000e+00, %10124
  %10128 = fsub fast float -0.000000e+00, %10125
  %10129 = select i1 %10117, float %10123, float %10126
  %10130 = select i1 %10118, float %10124, float %10127
  %10131 = select i1 %10119, float %10125, float %10128
  %10132 = fmul fast float %10129, 6.000000e+00
  %10133 = fmul fast float %10130, 6.000000e+00
  %10134 = fmul fast float %10131, 6.000000e+00
  %10135 = fadd fast float %10132, -3.000000e+00
  %10136 = fadd fast float %10133, -3.000000e+00
  %10137 = fadd fast float %10134, -3.000000e+00
  %10138 = call float @dx.op.unary.f32(i32 6, float %10135)  ; FAbs(value)
  %10139 = call float @dx.op.unary.f32(i32 6, float %10136)  ; FAbs(value)
  %10140 = call float @dx.op.unary.f32(i32 6, float %10137)  ; FAbs(value)
  %10141 = fadd fast float %10138, -1.000000e+00
  %10142 = fadd fast float %10139, -1.000000e+00
  %10143 = fadd fast float %10140, -1.000000e+00
  %10144 = call float @dx.op.unary.f32(i32 7, float %10141)  ; Saturate(value)
  %10145 = call float @dx.op.unary.f32(i32 7, float %10142)  ; Saturate(value)
  %10146 = call float @dx.op.unary.f32(i32 7, float %10143)  ; Saturate(value)
  %10147 = fmul fast float %10108, 0x3FE3C6EF40000000
  %10148 = call float @dx.op.unary.f32(i32 22, float %10147)  ; Frc(value)
  %10149 = fadd fast float %10148, 0x3FE5555560000000
  %10150 = fadd fast float %10148, 0x3FD5555560000000
  %10151 = fsub fast float -0.000000e+00, %10148
  %10152 = fsub fast float -0.000000e+00, %10149
  %10153 = fsub fast float -0.000000e+00, %10150
  %10154 = fcmp fast oge float %10148, %10151
  %10155 = fcmp fast oge float %10149, %10152
  %10156 = fcmp fast oge float %10150, %10153
  %10157 = call float @dx.op.unary.f32(i32 6, float %10148)  ; FAbs(value)
  %10158 = call float @dx.op.unary.f32(i32 6, float %10149)  ; FAbs(value)
  %10159 = call float @dx.op.unary.f32(i32 6, float %10150)  ; FAbs(value)
  %10160 = call float @dx.op.unary.f32(i32 22, float %10157)  ; Frc(value)
  %10161 = call float @dx.op.unary.f32(i32 22, float %10158)  ; Frc(value)
  %10162 = call float @dx.op.unary.f32(i32 22, float %10159)  ; Frc(value)
  %10163 = fsub fast float -0.000000e+00, %10160
  %10164 = fsub fast float -0.000000e+00, %10161
  %10165 = fsub fast float -0.000000e+00, %10162
  %10166 = select i1 %10154, float %10160, float %10163
  %10167 = select i1 %10155, float %10161, float %10164
  %10168 = select i1 %10156, float %10162, float %10165
  %10169 = fmul fast float %10166, 6.000000e+00
  %10170 = fmul fast float %10167, 6.000000e+00
  %10171 = fmul fast float %10168, 6.000000e+00
  %10172 = fadd fast float %10169, -3.000000e+00
  %10173 = fadd fast float %10170, -3.000000e+00
  %10174 = fadd fast float %10171, -3.000000e+00
  %10175 = call float @dx.op.unary.f32(i32 6, float %10172)  ; FAbs(value)
  %10176 = call float @dx.op.unary.f32(i32 6, float %10173)  ; FAbs(value)
  %10177 = call float @dx.op.unary.f32(i32 6, float %10174)  ; FAbs(value)
  %10178 = fadd fast float %10175, -1.000000e+00
  %10179 = fadd fast float %10176, -1.000000e+00
  %10180 = fadd fast float %10177, -1.000000e+00
  %10181 = call float @dx.op.unary.f32(i32 7, float %10178)  ; Saturate(value)
  %10182 = call float @dx.op.unary.f32(i32 7, float %10179)  ; Saturate(value)
  %10183 = call float @dx.op.unary.f32(i32 7, float %10180)  ; Saturate(value)
  %10184 = fsub fast float %10181, %10144
  %10185 = fsub fast float %10182, %10145
  %10186 = fsub fast float %10183, %10146
  %10187 = fmul fast float %10184, %10109
  %10188 = fmul fast float %10185, %10109
  %10189 = fmul fast float %10186, %10109
  %10190 = fadd fast float %10187, %10144
  %10191 = fadd fast float %10188, %10145
  %10192 = fadd fast float %10189, %10146
  br label %10958

; <label>:10193                                   ; preds = %10089
  %10194 = and i32 %10039, -2
  %10195 = icmp eq i32 %10194, 4
  br i1 %10195, label %10196, label %10205

; <label>:10196                                   ; preds = %10193
  %10197 = uitofp i32 %197 to float
  %10198 = fmul fast float %10197, 0x3FE3C6EF40000000
  %10199 = call float @dx.op.unary.f32(i32 22, float %10198)  ; Frc(value)
  %10200 = fmul fast float %10199, 5.000000e-01
  %10201 = fadd fast float %10200, 5.000000e-01
  %10202 = fmul fast float %10201, %72
  %10203 = fmul fast float %10201, %73
  %10204 = fmul fast float %10201, %74
  br label %10958

; <label>:10205                                   ; preds = %10193
  %10206 = icmp eq i32 %10039, 6
  br i1 %10206, label %10958, label %10207

; <label>:10207                                   ; preds = %10205
  %10208 = icmp eq i32 %10039, 7
  br i1 %10208, label %10958, label %10209

; <label>:10209                                   ; preds = %10207
  %10210 = icmp eq i32 %10039, 8
  br i1 %10210, label %10958, label %10211

; <label>:10211                                   ; preds = %10209
  %10212 = icmp eq i32 %10039, 9
  br i1 %10212, label %10213, label %10225

; <label>:10213                                   ; preds = %10211
  %10214 = fcmp fast ogt float %346, 0.000000e+00
  %10215 = call float @dx.op.dot2.f32(i32 54, float %341, float %342, float %341, float %342)  ; Dot2(ax,ay,bx,by)
  %10216 = call float @dx.op.unary.f32(i32 25, float %10215)  ; Rsqrt(value)
  %10217 = fmul fast float %341, 5.000000e-01
  %10218 = fmul fast float %10217, %10216
  %10219 = fmul fast float %342, 5.000000e-01
  %10220 = fmul fast float %10219, %10216
  %10221 = fadd fast float %10218, 5.000000e-01
  %10222 = select i1 %10214, float %10221, float 5.000000e-01
  %10223 = fadd fast float %10220, 5.000000e-01
  %10224 = select i1 %10214, float %10223, float 5.000000e-01
  br label %10958

; <label>:10225                                   ; preds = %10211
  %10226 = icmp eq i32 %10039, 10
  br i1 %10226, label %10227, label %10229

; <label>:10227                                   ; preds = %10225
  %10228 = fmul fast float %346, 0x3F747AE140000000
  br label %10958

; <label>:10229                                   ; preds = %10225
  %10230 = icmp eq i32 %10039, 11
  br i1 %10230, label %10958, label %10231

; <label>:10231                                   ; preds = %10229
  %10232 = icmp eq i32 %10039, 12
  br i1 %10232, label %10958, label %10233

; <label>:10233                                   ; preds = %10231
  %10234 = icmp eq i32 %10039, 13
  br i1 %10234, label %10958, label %10235

; <label>:10235                                   ; preds = %10233
  %10236 = icmp eq i32 %10039, 14
  br i1 %10236, label %10958, label %10237

; <label>:10237                                   ; preds = %10235
  %10238 = icmp eq i32 %10039, 15
  br i1 %10238, label %10958, label %10239

; <label>:10239                                   ; preds = %10237
  %10240 = icmp eq i32 %10039, 16
  br i1 %10240, label %10958, label %10241

; <label>:10241                                   ; preds = %10239
  %10242 = icmp eq i32 %10039, 17
  br i1 %10242, label %10958, label %10243

; <label>:10243                                   ; preds = %10241
  %10244 = icmp eq i32 %10039, 18
  br i1 %10244, label %10958, label %10245

; <label>:10245                                   ; preds = %10243
  %10246 = icmp eq i32 %10039, 19
  br i1 %10246, label %10958, label %10247

; <label>:10247                                   ; preds = %10245
  %10248 = icmp eq i32 %10039, 20
  br i1 %10248, label %10249, label %10254

; <label>:10249                                   ; preds = %10247
  %10250 = fmul fast float %841, 5.000000e-01
  %10251 = fmul fast float %842, 5.000000e-01
  %10252 = fadd fast float %10250, 5.000000e-01
  %10253 = fadd fast float %10251, 5.000000e-01
  br label %10958

; <label>:10254                                   ; preds = %10247
  %10255 = and i32 %10039, -9
  %10256 = icmp eq i32 %10255, 21
  br i1 %10256, label %10958, label %10257

; <label>:10257                                   ; preds = %10254
  %10258 = icmp eq i32 %10039, 22
  %10259 = icmp eq i32 %10039, 38
  %10260 = or i1 %10258, %10259
  br i1 %10260, label %10261, label %10375

; <label>:10261                                   ; preds = %10257
  %10262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10263 = extractvalue %dx.types.CBufRet.f32 %10262, 0
  %10264 = extractvalue %dx.types.CBufRet.f32 %10262, 1
  %10265 = extractvalue %dx.types.CBufRet.f32 %10262, 2
  %10266 = fadd fast float %10263, %153
  %10267 = fadd fast float %10264, %154
  %10268 = fadd fast float %10265, %155
  %10269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10270 = extractvalue %dx.types.CBufRet.f32 %10269, 0
  %10271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10272 = extractvalue %dx.types.CBufRet.f32 %10271, 0
  %10273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10274 = extractvalue %dx.types.CBufRet.f32 %10273, 0
  %10275 = extractvalue %dx.types.CBufRet.f32 %10269, 1
  %10276 = extractvalue %dx.types.CBufRet.f32 %10271, 1
  %10277 = extractvalue %dx.types.CBufRet.f32 %10273, 1
  %10278 = extractvalue %dx.types.CBufRet.f32 %10269, 3
  %10279 = extractvalue %dx.types.CBufRet.f32 %10271, 3
  %10280 = extractvalue %dx.types.CBufRet.f32 %10273, 3
  %10281 = fadd fast float %10266, %10278
  %10282 = fadd fast float %10267, %10279
  %10283 = fadd fast float %10268, %10280
  %10284 = fmul fast float %10281, %10270
  %10285 = call float @dx.op.tertiary.f32(i32 46, float %10282, float %10272, float %10284)  ; FMad(a,b,c)
  %10286 = call float @dx.op.tertiary.f32(i32 46, float %10283, float %10274, float %10285)  ; FMad(a,b,c)
  %10287 = fmul fast float %10281, %10275
  %10288 = call float @dx.op.tertiary.f32(i32 46, float %10282, float %10276, float %10287)  ; FMad(a,b,c)
  %10289 = call float @dx.op.tertiary.f32(i32 46, float %10283, float %10277, float %10288)  ; FMad(a,b,c)
  %10290 = fsub fast float %10286, %10278
  %10291 = fsub fast float %10289, %10279
  %10292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %10293 = extractvalue %dx.types.CBufRet.f32 %10292, 0
  %10294 = extractvalue %dx.types.CBufRet.f32 %10292, 1
  %10295 = fsub fast float %10290, %10293
  %10296 = fsub fast float %10291, %10294
  %10297 = fmul fast float %10295, %10295
  %10298 = fmul fast float %10296, %10296
  %10299 = fadd fast float %10297, %10298
  %10300 = call float @dx.op.unary.f32(i32 24, float %10299)  ; Sqrt(value)
  %10301 = extractvalue %dx.types.CBufRet.f32 %10292, 2
  %10302 = fcmp fast olt float %10300, %10301
  br i1 %10302, label %10303, label %10958

; <label>:10303                                   ; preds = %10261
  %10304 = fadd fast float %10295, %10301
  %10305 = fadd fast float %10296, %10301
  %10306 = extractvalue %dx.types.CBufRet.f32 %10292, 3
  %10307 = fmul fast float %10304, %10306
  %10308 = fmul fast float %10305, %10306
  %10309 = call float @dx.op.unary.f32(i32 7, float %10307)  ; Saturate(value)
  %10310 = call float @dx.op.unary.f32(i32 7, float %10308)  ; Saturate(value)
  %10311 = fsub fast float 1.000000e+00, %10309
  %10312 = fsub fast float 1.000000e+00, %10310
  %10313 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %61, float %10311, float %10312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10314 = extractvalue %dx.types.ResRet.f32 %10313, 0
  %10315 = fcmp fast ugt float %10314, 0.000000e+00
  br i1 %10315, label %10316, label %10958

; <label>:10316                                   ; preds = %10303
  br i1 %10258, label %10317, label %10322

; <label>:10317                                   ; preds = %10316
  %10318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %61, float %10311, float %10312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10319 = extractvalue %dx.types.ResRet.f32 %10318, 0
  %10320 = extractvalue %dx.types.ResRet.f32 %10318, 1
  %10321 = extractvalue %dx.types.ResRet.f32 %10318, 2
  br label %10958

; <label>:10322                                   ; preds = %10316
  %10323 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %10324 = extractvalue %dx.types.Dimensions %10323, 0
  %10325 = sitofp i32 %10324 to float
  %10326 = extractvalue %dx.types.Dimensions %10323, 1
  %10327 = sitofp i32 %10326 to float
  %10328 = fmul fast float %10325, %10311
  %10329 = fmul fast float %10327, %10312
  %10330 = call float @dx.op.unary.f32(i32 27, float %10328)  ; Round_ni(value)
  %10331 = call float @dx.op.unary.f32(i32 27, float %10329)  ; Round_ni(value)
  %10332 = fptoui float %10325 to i32
  %10333 = uitofp i32 %10332 to float
  %10334 = fmul fast float %10333, %10331
  %10335 = fadd fast float %10334, %10330
  %10336 = fptoui float %10335 to i32
  %10337 = uitofp i32 %10336 to float
  %10338 = fmul fast float %10337, 0x3FE3C6EF40000000
  %10339 = call float @dx.op.unary.f32(i32 22, float %10338)  ; Frc(value)
  %10340 = fadd fast float %10339, 0x3FE5555560000000
  %10341 = fadd fast float %10339, 0x3FD5555560000000
  %10342 = fsub fast float -0.000000e+00, %10339
  %10343 = fsub fast float -0.000000e+00, %10340
  %10344 = fsub fast float -0.000000e+00, %10341
  %10345 = fcmp fast oge float %10339, %10342
  %10346 = fcmp fast oge float %10340, %10343
  %10347 = fcmp fast oge float %10341, %10344
  %10348 = call float @dx.op.unary.f32(i32 6, float %10339)  ; FAbs(value)
  %10349 = call float @dx.op.unary.f32(i32 6, float %10340)  ; FAbs(value)
  %10350 = call float @dx.op.unary.f32(i32 6, float %10341)  ; FAbs(value)
  %10351 = call float @dx.op.unary.f32(i32 22, float %10348)  ; Frc(value)
  %10352 = call float @dx.op.unary.f32(i32 22, float %10349)  ; Frc(value)
  %10353 = call float @dx.op.unary.f32(i32 22, float %10350)  ; Frc(value)
  %10354 = fsub fast float -0.000000e+00, %10351
  %10355 = fsub fast float -0.000000e+00, %10352
  %10356 = fsub fast float -0.000000e+00, %10353
  %10357 = select i1 %10345, float %10351, float %10354
  %10358 = select i1 %10346, float %10352, float %10355
  %10359 = select i1 %10347, float %10353, float %10356
  %10360 = fmul fast float %10357, 6.000000e+00
  %10361 = fmul fast float %10358, 6.000000e+00
  %10362 = fmul fast float %10359, 6.000000e+00
  %10363 = fadd fast float %10360, -3.000000e+00
  %10364 = fadd fast float %10361, -3.000000e+00
  %10365 = fadd fast float %10362, -3.000000e+00
  %10366 = call float @dx.op.unary.f32(i32 6, float %10363)  ; FAbs(value)
  %10367 = call float @dx.op.unary.f32(i32 6, float %10364)  ; FAbs(value)
  %10368 = call float @dx.op.unary.f32(i32 6, float %10365)  ; FAbs(value)
  %10369 = fadd fast float %10366, -1.000000e+00
  %10370 = fadd fast float %10367, -1.000000e+00
  %10371 = fadd fast float %10368, -1.000000e+00
  %10372 = call float @dx.op.unary.f32(i32 7, float %10369)  ; Saturate(value)
  %10373 = call float @dx.op.unary.f32(i32 7, float %10370)  ; Saturate(value)
  %10374 = call float @dx.op.unary.f32(i32 7, float %10371)  ; Saturate(value)
  br label %10958

; <label>:10375                                   ; preds = %10257
  %10376 = icmp eq i32 %10039, 39
  br i1 %10376, label %10377, label %10481

; <label>:10377                                   ; preds = %10375
  %10378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10379 = extractvalue %dx.types.CBufRet.f32 %10378, 0
  %10380 = extractvalue %dx.types.CBufRet.f32 %10378, 1
  %10381 = extractvalue %dx.types.CBufRet.f32 %10378, 2
  %10382 = fadd fast float %10379, %153
  %10383 = fadd fast float %10380, %154
  %10384 = fadd fast float %10381, %155
  %10385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10386 = extractvalue %dx.types.CBufRet.f32 %10385, 0
  %10387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10388 = extractvalue %dx.types.CBufRet.f32 %10387, 0
  %10389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10390 = extractvalue %dx.types.CBufRet.f32 %10389, 0
  %10391 = extractvalue %dx.types.CBufRet.f32 %10385, 1
  %10392 = extractvalue %dx.types.CBufRet.f32 %10387, 1
  %10393 = extractvalue %dx.types.CBufRet.f32 %10389, 1
  %10394 = extractvalue %dx.types.CBufRet.f32 %10385, 3
  %10395 = extractvalue %dx.types.CBufRet.f32 %10387, 3
  %10396 = extractvalue %dx.types.CBufRet.f32 %10389, 3
  %10397 = fadd fast float %10382, %10394
  %10398 = fadd fast float %10383, %10395
  %10399 = fadd fast float %10384, %10396
  %10400 = fmul fast float %10397, %10386
  %10401 = call float @dx.op.tertiary.f32(i32 46, float %10398, float %10388, float %10400)  ; FMad(a,b,c)
  %10402 = call float @dx.op.tertiary.f32(i32 46, float %10399, float %10390, float %10401)  ; FMad(a,b,c)
  %10403 = fmul fast float %10397, %10391
  %10404 = call float @dx.op.tertiary.f32(i32 46, float %10398, float %10392, float %10403)  ; FMad(a,b,c)
  %10405 = call float @dx.op.tertiary.f32(i32 46, float %10399, float %10393, float %10404)  ; FMad(a,b,c)
  %10406 = fsub fast float %10402, %10394
  %10407 = fsub fast float %10405, %10395
  %10408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %10409 = extractvalue %dx.types.CBufRet.f32 %10408, 0
  %10410 = extractvalue %dx.types.CBufRet.f32 %10408, 1
  %10411 = fsub fast float %10406, %10409
  %10412 = fsub fast float %10407, %10410
  %10413 = fmul fast float %10411, %10411
  %10414 = fmul fast float %10412, %10412
  %10415 = fadd fast float %10413, %10414
  %10416 = call float @dx.op.unary.f32(i32 24, float %10415)  ; Sqrt(value)
  %10417 = extractvalue %dx.types.CBufRet.f32 %10408, 2
  %10418 = fcmp fast olt float %10416, %10417
  br i1 %10418, label %10419, label %10958

; <label>:10419                                   ; preds = %10377
  %10420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %51, i32 0)  ; GetDimensions(handle,mipLevel)
  %10421 = extractvalue %dx.types.Dimensions %10420, 0
  %10422 = sitofp i32 %10421 to float
  %10423 = extractvalue %dx.types.Dimensions %10420, 1
  %10424 = sitofp i32 %10423 to float
  %10425 = fadd fast float %10411, %10417
  %10426 = fadd fast float %10412, %10417
  %10427 = extractvalue %dx.types.CBufRet.f32 %10408, 3
  %10428 = fmul fast float %10425, %10427
  %10429 = fmul fast float %10426, %10427
  %10430 = call float @dx.op.unary.f32(i32 7, float %10428)  ; Saturate(value)
  %10431 = call float @dx.op.unary.f32(i32 7, float %10429)  ; Saturate(value)
  %10432 = fsub fast float 1.000000e+00, %10430
  %10433 = fsub fast float 1.000000e+00, %10431
  %10434 = fmul fast float %10432, %10422
  %10435 = fmul fast float %10433, %10424
  %10436 = call float @dx.op.unary.f32(i32 27, float %10434)  ; Round_ni(value)
  %10437 = call float @dx.op.unary.f32(i32 27, float %10435)  ; Round_ni(value)
  %10438 = fptoui float %10422 to i32
  %10439 = uitofp i32 %10438 to float
  %10440 = fmul fast float %10437, %10439
  %10441 = fadd fast float %10440, %10436
  %10442 = fptoui float %10441 to i32
  %10443 = uitofp i32 %10442 to float
  %10444 = fmul fast float %10443, 0x3FE3C6EF40000000
  %10445 = call float @dx.op.unary.f32(i32 22, float %10444)  ; Frc(value)
  %10446 = fadd fast float %10445, 0x3FE5555560000000
  %10447 = fadd fast float %10445, 0x3FD5555560000000
  %10448 = fsub fast float -0.000000e+00, %10445
  %10449 = fsub fast float -0.000000e+00, %10446
  %10450 = fsub fast float -0.000000e+00, %10447
  %10451 = fcmp fast oge float %10445, %10448
  %10452 = fcmp fast oge float %10446, %10449
  %10453 = fcmp fast oge float %10447, %10450
  %10454 = call float @dx.op.unary.f32(i32 6, float %10445)  ; FAbs(value)
  %10455 = call float @dx.op.unary.f32(i32 6, float %10446)  ; FAbs(value)
  %10456 = call float @dx.op.unary.f32(i32 6, float %10447)  ; FAbs(value)
  %10457 = call float @dx.op.unary.f32(i32 22, float %10454)  ; Frc(value)
  %10458 = call float @dx.op.unary.f32(i32 22, float %10455)  ; Frc(value)
  %10459 = call float @dx.op.unary.f32(i32 22, float %10456)  ; Frc(value)
  %10460 = fsub fast float -0.000000e+00, %10457
  %10461 = fsub fast float -0.000000e+00, %10458
  %10462 = fsub fast float -0.000000e+00, %10459
  %10463 = select i1 %10451, float %10457, float %10460
  %10464 = select i1 %10452, float %10458, float %10461
  %10465 = select i1 %10453, float %10459, float %10462
  %10466 = fmul fast float %10463, 6.000000e+00
  %10467 = fmul fast float %10464, 6.000000e+00
  %10468 = fmul fast float %10465, 6.000000e+00
  %10469 = fadd fast float %10466, -3.000000e+00
  %10470 = fadd fast float %10467, -3.000000e+00
  %10471 = fadd fast float %10468, -3.000000e+00
  %10472 = call float @dx.op.unary.f32(i32 6, float %10469)  ; FAbs(value)
  %10473 = call float @dx.op.unary.f32(i32 6, float %10470)  ; FAbs(value)
  %10474 = call float @dx.op.unary.f32(i32 6, float %10471)  ; FAbs(value)
  %10475 = fadd fast float %10472, -1.000000e+00
  %10476 = fadd fast float %10473, -1.000000e+00
  %10477 = fadd fast float %10474, -1.000000e+00
  %10478 = call float @dx.op.unary.f32(i32 7, float %10475)  ; Saturate(value)
  %10479 = call float @dx.op.unary.f32(i32 7, float %10476)  ; Saturate(value)
  %10480 = call float @dx.op.unary.f32(i32 7, float %10477)  ; Saturate(value)
  br label %10958

; <label>:10481                                   ; preds = %10375
  %10482 = icmp eq i32 %10039, 23
  br i1 %10482, label %10958, label %10483

; <label>:10483                                   ; preds = %10481
  %10484 = icmp eq i32 %10039, 24
  br i1 %10484, label %10485, label %10511

; <label>:10485                                   ; preds = %10483
  %10486 = and i32 %378, 255
  %10487 = uitofp i32 %10486 to float
  %10488 = fptoui float %10487 to i32
  %10489 = uitofp i32 %10488 to float
  %10490 = fadd fast float %10489, -4.000000e+00
  %10491 = fmul fast float %10490, 0x3FB5555560000000
  %10492 = call float @dx.op.unary.f32(i32 7, float %10491)  ; Saturate(value)
  %10493 = icmp eq i32 %10488, 0
  %10494 = select i1 %10493, float 0.000000e+00, float %10492
  %10495 = icmp ult i32 %10488, 2
  %10496 = select i1 %10495, float 0.000000e+00, float %10492
  %10497 = add i32 %10488, -1
  %10498 = icmp ult i32 %10497, 2
  %10499 = select i1 %10498, float 1.000000e+00, float %10494
  %10500 = icmp ult i32 %10488, 4
  %10501 = select i1 %10500, float 0.000000e+00, float 1.000000e+00
  %10502 = and i32 %10488, -2
  %10503 = icmp eq i32 %10502, 2
  %10504 = icmp eq i32 %10488, 4
  %10505 = select i1 %10504, float 1.000000e+00, float %10501
  %10506 = or i1 %10504, %10503
  %10507 = select i1 %10506, float 1.000000e+00, float %10496
  %10508 = add i32 %10488, -3
  %10509 = icmp ult i32 %10508, 2
  %10510 = select i1 %10509, float 0.000000e+00, float %10499
  br label %10958

; <label>:10511                                   ; preds = %10483
  %10512 = icmp eq i32 %10039, 25
  br i1 %10512, label %10958, label %10513

; <label>:10513                                   ; preds = %10511
  %10514 = icmp eq i32 %10039, 27
  br i1 %10514, label %10515, label %10570

; <label>:10515                                   ; preds = %10513
  %10516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %10517 = extractvalue %dx.types.CBufRet.f32 %10516, 2
  %10518 = fptoui float %10517 to i32
  %10519 = fptoui float %177 to i32
  %10520 = and i32 %10519, 31
  %10521 = lshr i32 %10518, %10520
  %10522 = uitofp i32 %10521 to float
  %10523 = fmul fast float %10522, %79
  %10524 = fmul fast float %10522, %80
  %10525 = call float @dx.op.unary.f32(i32 27, float %10523)  ; Round_ni(value)
  %10526 = call float @dx.op.unary.f32(i32 27, float %10524)  ; Round_ni(value)
  %10527 = fptoui float %10525 to i32
  %10528 = fptoui float %10526 to i32
  %10529 = fptoui float %10522 to i32
  %10530 = mul i32 %10529, %10528
  %10531 = add i32 %10530, %10527
  %10532 = uitofp i32 %10531 to float
  %10533 = fmul fast float %10532, 0x3FE3C6EF40000000
  %10534 = call float @dx.op.unary.f32(i32 22, float %10533)  ; Frc(value)
  %10535 = fadd fast float %10534, 0x3FE5555560000000
  %10536 = fadd fast float %10534, 0x3FD5555560000000
  %10537 = fsub fast float -0.000000e+00, %10534
  %10538 = fsub fast float -0.000000e+00, %10535
  %10539 = fsub fast float -0.000000e+00, %10536
  %10540 = fcmp fast oge float %10534, %10537
  %10541 = fcmp fast oge float %10535, %10538
  %10542 = fcmp fast oge float %10536, %10539
  %10543 = call float @dx.op.unary.f32(i32 6, float %10534)  ; FAbs(value)
  %10544 = call float @dx.op.unary.f32(i32 6, float %10535)  ; FAbs(value)
  %10545 = call float @dx.op.unary.f32(i32 6, float %10536)  ; FAbs(value)
  %10546 = call float @dx.op.unary.f32(i32 22, float %10543)  ; Frc(value)
  %10547 = call float @dx.op.unary.f32(i32 22, float %10544)  ; Frc(value)
  %10548 = call float @dx.op.unary.f32(i32 22, float %10545)  ; Frc(value)
  %10549 = fsub fast float -0.000000e+00, %10546
  %10550 = fsub fast float -0.000000e+00, %10547
  %10551 = fsub fast float -0.000000e+00, %10548
  %10552 = select i1 %10540, float %10546, float %10549
  %10553 = select i1 %10541, float %10547, float %10550
  %10554 = select i1 %10542, float %10548, float %10551
  %10555 = fmul fast float %10552, 6.000000e+00
  %10556 = fmul fast float %10553, 6.000000e+00
  %10557 = fmul fast float %10554, 6.000000e+00
  %10558 = fadd fast float %10555, -3.000000e+00
  %10559 = fadd fast float %10556, -3.000000e+00
  %10560 = fadd fast float %10557, -3.000000e+00
  %10561 = call float @dx.op.unary.f32(i32 6, float %10558)  ; FAbs(value)
  %10562 = call float @dx.op.unary.f32(i32 6, float %10559)  ; FAbs(value)
  %10563 = call float @dx.op.unary.f32(i32 6, float %10560)  ; FAbs(value)
  %10564 = fadd fast float %10561, -1.000000e+00
  %10565 = fadd fast float %10562, -1.000000e+00
  %10566 = fadd fast float %10563, -1.000000e+00
  %10567 = call float @dx.op.unary.f32(i32 7, float %10564)  ; Saturate(value)
  %10568 = call float @dx.op.unary.f32(i32 7, float %10565)  ; Saturate(value)
  %10569 = call float @dx.op.unary.f32(i32 7, float %10566)  ; Saturate(value)
  br label %10958

; <label>:10570                                   ; preds = %10513
  %10571 = icmp eq i32 %10039, 30
  br i1 %10571, label %10572, label %10612

; <label>:10572                                   ; preds = %10570
  %10573 = fcmp fast olt float %428, 0.000000e+00
  br i1 %10573, label %10958, label %10574

; <label>:10574                                   ; preds = %10572
  %10575 = fmul fast float %428, 0x3FE3C6EF40000000
  %10576 = call float @dx.op.unary.f32(i32 22, float %10575)  ; Frc(value)
  %10577 = fadd fast float %10576, 0x3FE5555560000000
  %10578 = fadd fast float %10576, 0x3FD5555560000000
  %10579 = fsub fast float -0.000000e+00, %10576
  %10580 = fsub fast float -0.000000e+00, %10577
  %10581 = fsub fast float -0.000000e+00, %10578
  %10582 = fcmp fast oge float %10576, %10579
  %10583 = fcmp fast oge float %10577, %10580
  %10584 = fcmp fast oge float %10578, %10581
  %10585 = call float @dx.op.unary.f32(i32 6, float %10576)  ; FAbs(value)
  %10586 = call float @dx.op.unary.f32(i32 6, float %10577)  ; FAbs(value)
  %10587 = call float @dx.op.unary.f32(i32 6, float %10578)  ; FAbs(value)
  %10588 = call float @dx.op.unary.f32(i32 22, float %10585)  ; Frc(value)
  %10589 = call float @dx.op.unary.f32(i32 22, float %10586)  ; Frc(value)
  %10590 = call float @dx.op.unary.f32(i32 22, float %10587)  ; Frc(value)
  %10591 = fsub fast float -0.000000e+00, %10588
  %10592 = fsub fast float -0.000000e+00, %10589
  %10593 = fsub fast float -0.000000e+00, %10590
  %10594 = select i1 %10582, float %10588, float %10591
  %10595 = select i1 %10583, float %10589, float %10592
  %10596 = select i1 %10584, float %10590, float %10593
  %10597 = fmul fast float %10594, 6.000000e+00
  %10598 = fmul fast float %10595, 6.000000e+00
  %10599 = fmul fast float %10596, 6.000000e+00
  %10600 = fadd fast float %10597, -3.000000e+00
  %10601 = fadd fast float %10598, -3.000000e+00
  %10602 = fadd fast float %10599, -3.000000e+00
  %10603 = call float @dx.op.unary.f32(i32 6, float %10600)  ; FAbs(value)
  %10604 = call float @dx.op.unary.f32(i32 6, float %10601)  ; FAbs(value)
  %10605 = call float @dx.op.unary.f32(i32 6, float %10602)  ; FAbs(value)
  %10606 = fadd fast float %10603, -1.000000e+00
  %10607 = fadd fast float %10604, -1.000000e+00
  %10608 = fadd fast float %10605, -1.000000e+00
  %10609 = call float @dx.op.unary.f32(i32 7, float %10606)  ; Saturate(value)
  %10610 = call float @dx.op.unary.f32(i32 7, float %10607)  ; Saturate(value)
  %10611 = call float @dx.op.unary.f32(i32 7, float %10608)  ; Saturate(value)
  br label %10958

; <label>:10612                                   ; preds = %10570
  %10613 = add i32 %10039, -31
  %10614 = icmp ult i32 %10613, 2
  br i1 %10614, label %10615, label %10623

; <label>:10615                                   ; preds = %10612
  %10616 = fcmp fast olt float %429, 0.000000e+00
  %10617 = call float @dx.op.unary.f32(i32 6, float %429)  ; FAbs(value)
  %10618 = fmul fast float %10617, 5.000000e-01
  %10619 = call float @dx.op.unary.f32(i32 7, float %10618)  ; Saturate(value)
  %10620 = select i1 %10616, float 0.000000e+00, float %10619
  %10621 = select i1 %10616, float %10619, float 0.000000e+00
  %10622 = fadd fast float %10619, 5.000000e-01
  br label %10958

; <label>:10623                                   ; preds = %10612
  %10624 = icmp eq i32 %10039, 36
  br i1 %10624, label %10625, label %10657

; <label>:10625                                   ; preds = %10623
  %10626 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %10627 = extractvalue %dx.types.CBufRet.i32 %10626, 0
  %10628 = and i32 %10627, 2048
  %10629 = icmp ne i32 %10628, 0
  %10630 = call float @dx.op.binary.f32(i32 35, float %1801, float %1802)  ; FMax(a,b)
  %10631 = call float @dx.op.binary.f32(i32 35, float %1800, float %10630)  ; FMax(a,b)
  %10632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %10633 = extractvalue %dx.types.CBufRet.f32 %10632, 1
  %10634 = fcmp fast oge float %10631, %10633
  %10635 = and i1 %10629, %10634
  br i1 %10635, label %10636, label %10642

; <label>:10636                                   ; preds = %10625
  %10637 = fsub fast float 1.000000e+00, %10018
  %10638 = fmul fast float %10637, 5.000000e-01
  %10639 = fadd fast float %10638, %10018
  %10640 = fmul fast float %10019, 5.000000e-01
  %10641 = fmul fast float %10020, 5.000000e-01
  br label %10958

; <label>:10642                                   ; preds = %10625
  %10643 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %1713, float %1714, float %1715)  ; Dot3(ax,ay,az,bx,by,bz)
  %10644 = and i32 %10627, 1024
  %10645 = icmp ne i32 %10644, 0
  %10646 = extractvalue %dx.types.CBufRet.f32 %10632, 2
  %10647 = fcmp fast ole float %10643, %10646
  %10648 = and i1 %10645, %10647
  br i1 %10648, label %10649, label %10958

; <label>:10649                                   ; preds = %10642
  %10650 = fsub fast float 1.000000e+00, %10018
  %10651 = fsub fast float 1.000000e+00, %10019
  %10652 = fmul fast float %10650, 5.000000e-01
  %10653 = fmul fast float %10651, 5.000000e-01
  %10654 = fadd fast float %10652, %10018
  %10655 = fadd fast float %10653, %10019
  %10656 = fmul fast float %10020, 5.000000e-01
  br label %10958

; <label>:10657                                   ; preds = %10623
  %10658 = icmp eq i32 %10039, 40
  br i1 %10658, label %10659, label %10896

; <label>:10659                                   ; preds = %10657
  %10660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %10661 = extractvalue %dx.types.CBufRet.f32 %10660, 0
  %10662 = fcmp fast ogt float %1784, %10661
  %10663 = zext i1 %10662 to i32
  %10664 = extractvalue %dx.types.CBufRet.f32 %10660, 1
  %10665 = fcmp fast ogt float %1784, %10664
  %10666 = zext i1 %10665 to i32
  %10667 = add nuw nsw i32 %10666, %10663
  %10668 = extractvalue %dx.types.CBufRet.f32 %10660, 2
  %10669 = fcmp fast ogt float %1784, %10668
  %10670 = zext i1 %10669 to i32
  %10671 = add nuw nsw i32 %10667, %10670
  %10672 = icmp ult i32 %10671, 3
  %10673 = zext i1 %10672 to i32
  %10674 = shl nuw nsw i32 %10671, 2
  %10675 = add nuw nsw i32 %10674, 48
  %10676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10675)  ; CBufferLoadLegacy(handle,regIndex)
  %10677 = extractvalue %dx.types.CBufRet.f32 %10676, 1
  %10678 = fcmp fast ogt float %1784, %10677
  %10679 = zext i1 %10678 to i32
  %10680 = or i32 %10674, 1
  %10681 = add nuw nsw i32 %10680, 48
  %10682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10681)  ; CBufferLoadLegacy(handle,regIndex)
  %10683 = extractvalue %dx.types.CBufRet.f32 %10682, 1
  %10684 = fcmp fast ogt float %1784, %10683
  %10685 = zext i1 %10684 to i32
  %10686 = add nuw nsw i32 %10685, %10679
  %10687 = or i32 %10674, 2
  %10688 = add nuw nsw i32 %10687, 48
  %10689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10688)  ; CBufferLoadLegacy(handle,regIndex)
  %10690 = extractvalue %dx.types.CBufRet.f32 %10689, 1
  %10691 = fcmp fast ogt float %1784, %10690
  %10692 = zext i1 %10691 to i32
  %10693 = add nuw nsw i32 %10686, %10692
  %10694 = call i32 @dx.op.binary.i32(i32 40, i32 %10693, i32 3)  ; UMin(a,b)
  %10695 = add i32 %10674, %10694
  %10696 = call i32 @dx.op.binary.i32(i32 40, i32 %10695, i32 12)  ; UMin(a,b)
  %10697 = add i32 %10696, 48
  %10698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10697)  ; CBufferLoadLegacy(handle,regIndex)
  %10699 = extractvalue %dx.types.CBufRet.f32 %10698, 0
  %10700 = fcmp fast oge float %1784, %10699
  %10701 = zext i1 %10700 to i32
  %10702 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %10673)  ; UMin(a,b)
  %10703 = call i32 @dx.op.binary.i32(i32 40, i32 %10701, i32 %10702)  ; UMin(a,b)
  %10704 = fmul fast float %10029, 7.500000e-01
  %10705 = fadd fast float %10704, %10027
  %10706 = fcmp fast ult float %10024, %10705
  br i1 %10706, label %10746, label %10707

; <label>:10707                                   ; preds = %10659
  %10708 = uitofp i32 %10696 to float
  %10709 = fmul fast float %10708, 0x3FE3C6EF40000000
  %10710 = call float @dx.op.unary.f32(i32 22, float %10709)  ; Frc(value)
  %10711 = fadd fast float %10710, 0x3FE5555560000000
  %10712 = fadd fast float %10710, 0x3FD5555560000000
  %10713 = fsub fast float -0.000000e+00, %10710
  %10714 = fsub fast float -0.000000e+00, %10711
  %10715 = fsub fast float -0.000000e+00, %10712
  %10716 = fcmp fast oge float %10710, %10713
  %10717 = fcmp fast oge float %10711, %10714
  %10718 = fcmp fast oge float %10712, %10715
  %10719 = call float @dx.op.unary.f32(i32 6, float %10710)  ; FAbs(value)
  %10720 = call float @dx.op.unary.f32(i32 6, float %10711)  ; FAbs(value)
  %10721 = call float @dx.op.unary.f32(i32 6, float %10712)  ; FAbs(value)
  %10722 = call float @dx.op.unary.f32(i32 22, float %10719)  ; Frc(value)
  %10723 = call float @dx.op.unary.f32(i32 22, float %10720)  ; Frc(value)
  %10724 = call float @dx.op.unary.f32(i32 22, float %10721)  ; Frc(value)
  %10725 = fsub fast float -0.000000e+00, %10722
  %10726 = fsub fast float -0.000000e+00, %10723
  %10727 = fsub fast float -0.000000e+00, %10724
  %10728 = select i1 %10716, float %10722, float %10725
  %10729 = select i1 %10717, float %10723, float %10726
  %10730 = select i1 %10718, float %10724, float %10727
  %10731 = fmul fast float %10728, 6.000000e+00
  %10732 = fmul fast float %10729, 6.000000e+00
  %10733 = fmul fast float %10730, 6.000000e+00
  %10734 = fadd fast float %10731, -3.000000e+00
  %10735 = fadd fast float %10732, -3.000000e+00
  %10736 = fadd fast float %10733, -3.000000e+00
  %10737 = call float @dx.op.unary.f32(i32 6, float %10734)  ; FAbs(value)
  %10738 = call float @dx.op.unary.f32(i32 6, float %10735)  ; FAbs(value)
  %10739 = call float @dx.op.unary.f32(i32 6, float %10736)  ; FAbs(value)
  %10740 = fadd fast float %10737, -1.000000e+00
  %10741 = fadd fast float %10738, -1.000000e+00
  %10742 = fadd fast float %10739, -1.000000e+00
  %10743 = call float @dx.op.unary.f32(i32 7, float %10740)  ; Saturate(value)
  %10744 = call float @dx.op.unary.f32(i32 7, float %10741)  ; Saturate(value)
  %10745 = call float @dx.op.unary.f32(i32 7, float %10742)  ; Saturate(value)
  br label %10883

; <label>:10746                                   ; preds = %10659
  %10747 = fmul fast float %10029, 5.000000e-01
  %10748 = fadd fast float %10747, %10027
  %10749 = fcmp fast ult float %10024, %10748
  br i1 %10749, label %10776, label %10750

; <label>:10750                                   ; preds = %10746
  %10751 = add i32 %10703, 4
  %10752 = icmp eq i32 %10751, 0
  br i1 %10752, label %10883, label %10753

; <label>:10753                                   ; preds = %10750
  br label %10754

; <label>:10754                                   ; preds = %10754, %10753
  %10755 = phi float [ %10771, %10754 ], [ 0.000000e+00, %10753 ]
  %10756 = phi i32 [ %10772, %10754 ], [ 0, %10753 ]
  %10757 = add i32 %10696, 32
  %10758 = add i32 %10757, %10756
  %10759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10758)  ; CBufferLoadLegacy(handle,regIndex)
  %10760 = extractvalue %dx.types.CBufRet.f32 %10759, 0
  %10761 = extractvalue %dx.types.CBufRet.f32 %10759, 1
  %10762 = extractvalue %dx.types.CBufRet.f32 %10759, 2
  %10763 = extractvalue %dx.types.CBufRet.f32 %10759, 3
  %10764 = fmul fast float %10760, %1784
  %10765 = fadd fast float %10764, %10761
  %10766 = call float @dx.op.unary.f32(i32 7, float %10765)  ; Saturate(value)
  %10767 = fmul fast float %10762, %1784
  %10768 = fadd fast float %10767, %10763
  %10769 = call float @dx.op.unary.f32(i32 7, float %10768)  ; Saturate(value)
  %10770 = call float @dx.op.binary.f32(i32 36, float %10766, float %10769)  ; FMin(a,b)
  %10771 = fadd fast float %10770, %10755
  %10772 = add nuw i32 %10756, 1
  %10773 = icmp eq i32 %10772, %10751
  br i1 %10773, label %10774, label %10754

; <label>:10774                                   ; preds = %10754
  %10775 = fmul float %10771, 2.500000e-01
  br label %10883

; <label>:10776                                   ; preds = %10746
  %10777 = fmul fast float %10029, 2.500000e-01
  %10778 = fadd fast float %10777, %10027
  %10779 = fcmp fast ult float %10024, %10778
  br i1 %10779, label %10879, label %10780

; <label>:10780                                   ; preds = %10776
  %10781 = add i32 %10696, 32
  %10782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10781)  ; CBufferLoadLegacy(handle,regIndex)
  %10783 = extractvalue %dx.types.CBufRet.f32 %10782, 0
  %10784 = extractvalue %dx.types.CBufRet.f32 %10782, 1
  %10785 = extractvalue %dx.types.CBufRet.f32 %10782, 2
  %10786 = extractvalue %dx.types.CBufRet.f32 %10782, 3
  %10787 = fmul fast float %10783, %1784
  %10788 = fadd fast float %10787, %10784
  %10789 = call float @dx.op.unary.f32(i32 7, float %10788)  ; Saturate(value)
  %10790 = fmul fast float %10785, %1784
  %10791 = fadd fast float %10790, %10786
  %10792 = call float @dx.op.unary.f32(i32 7, float %10791)  ; Saturate(value)
  %10793 = call float @dx.op.binary.f32(i32 36, float %10789, float %10792)  ; FMin(a,b)
  %10794 = uitofp i32 %10696 to float
  %10795 = fmul fast float %10794, 0x3FE3C6EF40000000
  %10796 = call float @dx.op.unary.f32(i32 22, float %10795)  ; Frc(value)
  %10797 = fadd fast float %10796, 0x3FE5555560000000
  %10798 = fadd fast float %10796, 0x3FD5555560000000
  %10799 = fsub fast float -0.000000e+00, %10796
  %10800 = fsub fast float -0.000000e+00, %10797
  %10801 = fsub fast float -0.000000e+00, %10798
  %10802 = fcmp fast oge float %10796, %10799
  %10803 = fcmp fast oge float %10797, %10800
  %10804 = fcmp fast oge float %10798, %10801
  %10805 = call float @dx.op.unary.f32(i32 6, float %10796)  ; FAbs(value)
  %10806 = call float @dx.op.unary.f32(i32 6, float %10797)  ; FAbs(value)
  %10807 = call float @dx.op.unary.f32(i32 6, float %10798)  ; FAbs(value)
  %10808 = call float @dx.op.unary.f32(i32 22, float %10805)  ; Frc(value)
  %10809 = call float @dx.op.unary.f32(i32 22, float %10806)  ; Frc(value)
  %10810 = call float @dx.op.unary.f32(i32 22, float %10807)  ; Frc(value)
  %10811 = fsub fast float -0.000000e+00, %10808
  %10812 = fsub fast float -0.000000e+00, %10809
  %10813 = fsub fast float -0.000000e+00, %10810
  %10814 = select i1 %10802, float %10808, float %10811
  %10815 = select i1 %10803, float %10809, float %10812
  %10816 = select i1 %10804, float %10810, float %10813
  %10817 = fmul fast float %10814, 6.000000e+00
  %10818 = fmul fast float %10815, 6.000000e+00
  %10819 = fmul fast float %10816, 6.000000e+00
  %10820 = fadd fast float %10817, -3.000000e+00
  %10821 = fadd fast float %10818, -3.000000e+00
  %10822 = fadd fast float %10819, -3.000000e+00
  %10823 = call float @dx.op.unary.f32(i32 6, float %10820)  ; FAbs(value)
  %10824 = call float @dx.op.unary.f32(i32 6, float %10821)  ; FAbs(value)
  %10825 = call float @dx.op.unary.f32(i32 6, float %10822)  ; FAbs(value)
  %10826 = fadd fast float %10823, -1.000000e+00
  %10827 = fadd fast float %10824, -1.000000e+00
  %10828 = fadd fast float %10825, -1.000000e+00
  %10829 = call float @dx.op.unary.f32(i32 7, float %10826)  ; Saturate(value)
  %10830 = call float @dx.op.unary.f32(i32 7, float %10827)  ; Saturate(value)
  %10831 = call float @dx.op.unary.f32(i32 7, float %10828)  ; Saturate(value)
  %10832 = fadd fast float %10794, 1.000000e+00
  %10833 = fmul fast float %10832, 0x3FE3C6EF40000000
  %10834 = call float @dx.op.unary.f32(i32 22, float %10833)  ; Frc(value)
  %10835 = fadd fast float %10834, 0x3FE5555560000000
  %10836 = fadd fast float %10834, 0x3FD5555560000000
  %10837 = fsub fast float -0.000000e+00, %10834
  %10838 = fsub fast float -0.000000e+00, %10835
  %10839 = fsub fast float -0.000000e+00, %10836
  %10840 = fcmp fast oge float %10834, %10837
  %10841 = fcmp fast oge float %10835, %10838
  %10842 = fcmp fast oge float %10836, %10839
  %10843 = call float @dx.op.unary.f32(i32 6, float %10834)  ; FAbs(value)
  %10844 = call float @dx.op.unary.f32(i32 6, float %10835)  ; FAbs(value)
  %10845 = call float @dx.op.unary.f32(i32 6, float %10836)  ; FAbs(value)
  %10846 = call float @dx.op.unary.f32(i32 22, float %10843)  ; Frc(value)
  %10847 = call float @dx.op.unary.f32(i32 22, float %10844)  ; Frc(value)
  %10848 = call float @dx.op.unary.f32(i32 22, float %10845)  ; Frc(value)
  %10849 = fsub fast float -0.000000e+00, %10846
  %10850 = fsub fast float -0.000000e+00, %10847
  %10851 = fsub fast float -0.000000e+00, %10848
  %10852 = select i1 %10840, float %10846, float %10849
  %10853 = select i1 %10841, float %10847, float %10850
  %10854 = select i1 %10842, float %10848, float %10851
  %10855 = fmul fast float %10852, 6.000000e+00
  %10856 = fmul fast float %10853, 6.000000e+00
  %10857 = fmul fast float %10854, 6.000000e+00
  %10858 = fadd fast float %10855, -3.000000e+00
  %10859 = fadd fast float %10856, -3.000000e+00
  %10860 = fadd fast float %10857, -3.000000e+00
  %10861 = call float @dx.op.unary.f32(i32 6, float %10858)  ; FAbs(value)
  %10862 = call float @dx.op.unary.f32(i32 6, float %10859)  ; FAbs(value)
  %10863 = call float @dx.op.unary.f32(i32 6, float %10860)  ; FAbs(value)
  %10864 = fadd fast float %10861, -1.000000e+00
  %10865 = fadd fast float %10862, -1.000000e+00
  %10866 = fadd fast float %10863, -1.000000e+00
  %10867 = call float @dx.op.unary.f32(i32 7, float %10864)  ; Saturate(value)
  %10868 = call float @dx.op.unary.f32(i32 7, float %10865)  ; Saturate(value)
  %10869 = call float @dx.op.unary.f32(i32 7, float %10866)  ; Saturate(value)
  %10870 = fsub fast float %10867, %10829
  %10871 = fsub fast float %10868, %10830
  %10872 = fsub fast float %10869, %10831
  %10873 = fmul fast float %10870, %10793
  %10874 = fmul fast float %10871, %10793
  %10875 = fmul fast float %10872, %10793
  %10876 = fadd fast float %10873, %10829
  %10877 = fadd fast float %10874, %10830
  %10878 = fadd fast float %10875, %10831
  br label %10883

; <label>:10879                                   ; preds = %10776
  %10880 = icmp ne i32 %10703, 0
  %10881 = select i1 %10880, float 1.000000e+00, float 0.000000e+00
  %10882 = select i1 %10880, float 0.000000e+00, float 1.000000e+00
  br label %10883

; <label>:10883                                   ; preds = %10879, %10780, %10774, %10750, %10707
  %10884 = phi float [ %10743, %10707 ], [ %10876, %10780 ], [ %10881, %10879 ], [ 0.000000e+00, %10750 ], [ %10775, %10774 ]
  %10885 = phi float [ %10744, %10707 ], [ %10877, %10780 ], [ %10882, %10879 ], [ 0.000000e+00, %10750 ], [ %10775, %10774 ]
  %10886 = phi float [ %10745, %10707 ], [ %10878, %10780 ], [ 0.000000e+00, %10879 ], [ 0.000000e+00, %10750 ], [ %10775, %10774 ]
  %10887 = fsub fast float %10884, %10018
  %10888 = fsub fast float %10885, %10019
  %10889 = fsub fast float %10886, %10020
  %10890 = fmul fast float %10887, 5.000000e-01
  %10891 = fmul fast float %10888, 5.000000e-01
  %10892 = fmul fast float %10889, 5.000000e-01
  %10893 = fadd fast float %10890, %10018
  %10894 = fadd fast float %10891, %10019
  %10895 = fadd fast float %10892, %10020
  br label %10958

; <label>:10896                                   ; preds = %10657
  %10897 = icmp eq i32 %10039, 41
  br i1 %10897, label %10898, label %10950

; <label>:10898                                   ; preds = %10896
  %10899 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %10900 = extractvalue %dx.types.CBufRet.i32 %10899, 0
  %10901 = icmp eq i32 %10900, 2
  %10902 = and i1 %846, %10901
  %10903 = icmp eq i32 %10900, 3
  %10904 = and i1 %847, %10903
  %10905 = or i1 %10904, %10902
  %10906 = icmp eq i32 %10900, 4
  %10907 = and i1 %855, %10906
  %10908 = or i1 %10907, %10905
  %10909 = icmp eq i32 %10900, 5
  %10910 = icmp ne i32 %856, 0
  %10911 = and i1 %10910, %10909
  %10912 = or i1 %10911, %10908
  %10913 = icmp eq i32 %10900, 13
  %10914 = and i32 %438, 64
  %10915 = icmp ne i32 %10914, 0
  %10916 = and i1 %10915, %10913
  %10917 = or i1 %10916, %10912
  %10918 = icmp eq i32 %10900, 14
  %10919 = and i1 %1153, %10918
  %10920 = or i1 %10919, %10917
  %10921 = icmp eq i32 %10900, 7
  %10922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %10923 = extractvalue %dx.types.ResRet.i32 %10922, 0
  %10924 = and i32 %10923, 1024
  %10925 = icmp ne i32 %10924, 0
  %10926 = and i1 %10921, %10925
  %10927 = or i1 %10926, %10920
  %10928 = icmp eq i32 %10900, 10
  %10929 = and i32 %10923, 2048
  %10930 = icmp ne i32 %10929, 0
  %10931 = and i1 %10928, %10930
  %10932 = or i1 %10931, %10927
  %10933 = icmp eq i32 %10900, 12
  %10934 = and i32 %10923, 3072
  %10935 = icmp ne i32 %10934, 0
  %10936 = and i1 %10933, %10935
  %10937 = or i1 %10936, %10932
  %10938 = icmp eq i32 %10900, 15
  %10939 = and i32 %10923, 4096
  %10940 = icmp ne i32 %10939, 0
  %10941 = and i1 %10938, %10940
  %10942 = or i1 %10941, %10937
  %10943 = select i1 %10942, float 5.000000e-01, float %10018
  %10944 = select i1 %10942, float 0x3FB99999A0000000, float %10019
  %10945 = select i1 %10942, float 0x3FB99999A0000000, float %10020
  %10946 = fcmp fast ogt float %72, 0.000000e+00
  %10947 = and i1 %10946, %10921
  %10948 = select i1 %10947, float 1.000000e+00, float %10944
  %10949 = select i1 %10947, float 1.000000e+00, float %10945
  br label %10958

; <label>:10950                                   ; preds = %10896
  %10951 = icmp eq i32 %10039, 45
  br i1 %10951, label %10952, label %10958

; <label>:10952                                   ; preds = %10950
  %10953 = fcmp fast ogt float %1074, %1089
  %10954 = fsub fast float %1074, %1089
  %10955 = call float @dx.op.unary.f32(i32 6, float %10954)  ; FAbs(value)
  %10956 = select i1 %10953, float %10955, float 0.000000e+00
  %10957 = select i1 %10953, float 0.000000e+00, float %10955
  br label %10958

; <label>:10958                                   ; preds = %10952, %10950, %10898, %10883, %10649, %10642, %10636, %10615, %10574, %10572, %10515, %10511, %10485, %10481, %10419, %10377, %10322, %10317, %10303, %10261, %10254, %10249, %10245, %10243, %10241, %10239, %10237, %10235, %10233, %10231, %10229, %10227, %10213, %10209, %10207, %10205, %10196, %10105, %10085, %10044, %10017
  %10959 = phi float [ %10080, %10044 ], [ %10086, %10085 ], [ %10190, %10105 ], [ %10202, %10196 ], [ %10222, %10213 ], [ %10228, %10227 ], [ %10252, %10249 ], [ %10319, %10317 ], [ %10372, %10322 ], [ %10478, %10419 ], [ %10505, %10485 ], [ %10567, %10515 ], [ %10609, %10574 ], [ %10622, %10615 ], [ %10639, %10636 ], [ %10654, %10649 ], [ %10018, %10642 ], [ %10893, %10883 ], [ %10943, %10898 ], [ %10956, %10952 ], [ %10018, %10950 ], [ %10018, %10017 ], [ 0.000000e+00, %10205 ], [ 0.000000e+00, %10243 ], [ %72, %10254 ], [ 1.000000e+00, %10303 ], [ 0.000000e+00, %10261 ], [ 0.000000e+00, %10377 ], [ 0.000000e+00, %10572 ], [ %304, %10207 ], [ %319, %10209 ], [ %359, %10229 ], [ %372, %10231 ], [ %552, %10233 ], [ %78, %10235 ], [ %844, %10237 ], [ %845, %10239 ], [ %1113, %10241 ], [ %72, %10245 ], [ 0.000000e+00, %10481 ], [ 0.000000e+00, %10511 ]
  %10960 = phi float [ %10081, %10044 ], [ %10087, %10085 ], [ %10191, %10105 ], [ %10203, %10196 ], [ %10224, %10213 ], [ %10228, %10227 ], [ %10253, %10249 ], [ %10320, %10317 ], [ %10373, %10322 ], [ %10479, %10419 ], [ %10507, %10485 ], [ %10568, %10515 ], [ %10610, %10574 ], [ %10620, %10615 ], [ %10640, %10636 ], [ %10655, %10649 ], [ %10019, %10642 ], [ %10894, %10883 ], [ %10948, %10898 ], [ %10957, %10952 ], [ %10019, %10950 ], [ %10019, %10017 ], [ 0.000000e+00, %10205 ], [ 1.000000e+00, %10243 ], [ %73, %10254 ], [ 0.000000e+00, %10303 ], [ 1.000000e+00, %10261 ], [ 1.000000e+00, %10377 ], [ 1.000000e+00, %10572 ], [ %304, %10207 ], [ %319, %10209 ], [ %359, %10229 ], [ %372, %10231 ], [ %552, %10233 ], [ %78, %10235 ], [ %844, %10237 ], [ %845, %10239 ], [ %1113, %10241 ], [ %73, %10245 ], [ 0.000000e+00, %10481 ], [ 0.000000e+00, %10511 ]
  %10961 = phi float [ %10082, %10044 ], [ %10088, %10085 ], [ %10192, %10105 ], [ %10204, %10196 ], [ 0.000000e+00, %10213 ], [ %10228, %10227 ], [ %843, %10249 ], [ %10321, %10317 ], [ %10374, %10322 ], [ %10480, %10419 ], [ %10510, %10485 ], [ %10569, %10515 ], [ %10611, %10574 ], [ %10621, %10615 ], [ %10641, %10636 ], [ %10656, %10649 ], [ %10020, %10642 ], [ %10895, %10883 ], [ %10949, %10898 ], [ 0.000000e+00, %10952 ], [ %10020, %10950 ], [ %10020, %10017 ], [ 0.000000e+00, %10205 ], [ 1.000000e+00, %10243 ], [ %74, %10254 ], [ 1.000000e+00, %10303 ], [ 1.000000e+00, %10261 ], [ 1.000000e+00, %10377 ], [ 0.000000e+00, %10572 ], [ %304, %10207 ], [ %319, %10209 ], [ %359, %10229 ], [ %372, %10231 ], [ %552, %10233 ], [ %78, %10235 ], [ %844, %10237 ], [ %845, %10239 ], [ %1113, %10241 ], [ %74, %10245 ], [ 0.000000e+00, %10481 ], [ 1.000000e+00, %10511 ]
  %10962 = fadd fast float %1188, 0x3FE3C6EF40000000
  %10963 = call float @dx.op.unary.f32(i32 22, float %10962)  ; Frc(value)
  %10964 = call float @dx.op.unary.f32(i32 23, float %10959)  ; Log(value)
  %10965 = fadd fast float %10964, -7.000000e+00
  %10966 = call float @dx.op.unary.f32(i32 21, float %10965)  ; Exp(value)
  %10967 = fmul fast float %10963, 2.000000e+00
  %10968 = fadd fast float %10967, -1.000000e+00
  %10969 = fmul fast float %10966, %10968
  %10970 = fcmp fast ogt float %10959, 0.000000e+00
  %10971 = select i1 %10970, float %10969, float 0.000000e+00
  %10972 = fadd fast float %10971, %10959
  %10973 = fadd fast float %1188, 0x3FF3C6EF40000000
  %10974 = call float @dx.op.unary.f32(i32 22, float %10973)  ; Frc(value)
  %10975 = call float @dx.op.unary.f32(i32 23, float %10960)  ; Log(value)
  %10976 = fadd fast float %10975, -7.000000e+00
  %10977 = call float @dx.op.unary.f32(i32 21, float %10976)  ; Exp(value)
  %10978 = fmul fast float %10974, 2.000000e+00
  %10979 = fadd fast float %10978, -1.000000e+00
  %10980 = fmul fast float %10977, %10979
  %10981 = fcmp fast ogt float %10960, 0.000000e+00
  %10982 = select i1 %10981, float %10980, float 0.000000e+00
  %10983 = fadd fast float %10982, %10960
  %10984 = fadd fast float %1188, 0x3FFDAA66E0000000
  %10985 = call float @dx.op.unary.f32(i32 22, float %10984)  ; Frc(value)
  %10986 = call float @dx.op.unary.f32(i32 23, float %10961)  ; Log(value)
  %10987 = fadd fast float %10986, -6.000000e+00
  %10988 = call float @dx.op.unary.f32(i32 21, float %10987)  ; Exp(value)
  %10989 = fmul fast float %10985, 2.000000e+00
  %10990 = fadd fast float %10989, -1.000000e+00
  %10991 = fmul fast float %10988, %10990
  %10992 = fcmp fast ogt float %10961, 0.000000e+00
  %10993 = select i1 %10992, float %10991, float 0.000000e+00
  %10994 = fadd fast float %10993, %10961
  %10995 = call float @dx.op.binary.f32(i32 36, float %10972, float 3.225500e+04)  ; FMin(a,b)
  %10996 = call float @dx.op.binary.f32(i32 36, float %10983, float 3.225500e+04)  ; FMin(a,b)
  %10997 = call float @dx.op.binary.f32(i32 36, float %10994, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %10995)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %10996)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %10997)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:10998                                   ; preds = %9182
  %10999 = fcmp fast olt float %1843, %9165
  br i1 %10999, label %9168, label %11000

; <label>:11000                                   ; preds = %10998
  %11001 = fcmp fast olt float %1843, %9166
  br i1 %11001, label %9168, label %9369

; <label>:11002                                   ; preds = %9260
  %11003 = fcmp fast olt float %87, 5.120000e+02
  br i1 %11003, label %9246, label %11004

; <label>:11004                                   ; preds = %11002
  %11005 = fcmp fast olt float %87, 1.024000e+03
  br i1 %11005, label %9246, label %11006

; <label>:11006                                   ; preds = %11004
  %11007 = fcmp fast olt float %87, 1.536000e+03
  br i1 %11007, label %9246, label %11008

; <label>:11008                                   ; preds = %11006
  %11009 = fcmp fast olt float %87, 2.048000e+03
  br i1 %11009, label %9246, label %11010

; <label>:11010                                   ; preds = %11008
  %11011 = fcmp fast olt float %87, 3.072000e+03
  br i1 %11011, label %9246, label %11012

; <label>:11012                                   ; preds = %11010
  %11013 = fcmp fast olt float %87, 4.096000e+03
  br i1 %11013, label %9246, label %11014

; <label>:11014                                   ; preds = %11012
  %11015 = fcmp fast olt float %87, 6.144000e+03
  br i1 %11015, label %9246, label %11016

; <label>:11016                                   ; preds = %11014
  %11017 = fcmp fast olt float %87, 8.192000e+03
  br i1 %11017, label %9246, label %9369

; <label>:11018                                   ; preds = %9292
  %11019 = fcmp fast olt float %8106, %9275
  br i1 %11019, label %9278, label %11020

; <label>:11020                                   ; preds = %11018
  %11021 = fcmp fast olt float %8106, %9276
  br i1 %11021, label %9278, label %9369
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!115 = !{!116}
!116 = distinct !{!116, !117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!117 = distinct !{!117, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!118 = distinct !{!118, !119}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = distinct !{!120, !"dx.controlflow.hints", i32 1}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !119}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
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
!140 = !{!141, !141, i64 0}
!141 = !{!"int", !108, i64 0}
!142 = !{!143, !145}
!143 = distinct !{!143, !144, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!144 = distinct !{!144, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!145 = distinct !{!145, !146, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!146 = distinct !{!146, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!147 = distinct !{!147, !"dx.controlflow.hints", i32 1}
!148 = !{!143, !145, !149, !151}
!149 = distinct !{!149, !150, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!150 = distinct !{!150, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!151 = distinct !{!151, !152, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!152 = distinct !{!152, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!153 = distinct !{!153, !119}
!154 = distinct !{!154, !119}
!155 = distinct !{!155, !"dx.controlflow.hints", i32 1}
!156 = distinct !{!156, !"dx.controlflow.hints", i32 1}
!157 = distinct !{!157, !"dx.controlflow.hints", i32 1}
!158 = distinct !{!158, !"dx.controlflow.hints", i32 1}
!159 = distinct !{!159, !"dx.controlflow.hints", i32 1}
!160 = distinct !{!160, !"dx.controlflow.hints", i32 1}
!161 = distinct !{!161, !"dx.controlflow.hints", i32 1}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = !{!166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!166 = distinct !{!166, !167, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!167 = distinct !{!167, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!168 = distinct !{!168, !169, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!169 = distinct !{!169, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!170 = distinct !{!170, !169, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!171 = distinct !{!171, !172, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!172 = distinct !{!172, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!173 = distinct !{!173, !172, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!174 = distinct !{!174, !172, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!175 = distinct !{!175, !176, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!176 = distinct !{!176, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!177 = distinct !{!177, !176, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!178 = distinct !{!178, !176, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!179 = distinct !{!179, !180, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!180 = distinct !{!180, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"\01?sort@@YAXAIAM00@Z: %c"}
!183 = distinct !{!183, !"\01?sort@@YAXAIAM00@Z"}
!184 = !{!185, !186, !166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!185 = distinct !{!185, !183, !"\01?sort@@YAXAIAM00@Z: %a"}
!186 = distinct !{!186, !183, !"\01?sort@@YAXAIAM00@Z: %b"}
!187 = !{!186}
!188 = !{!185, !182, !166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!189 = !{!185}
!190 = !{!186, !182, !166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!191 = !{!192}
!192 = distinct !{!192, !193, !"\01?sort@@YAXAIAM00@Z: %c"}
!193 = distinct !{!193, !"\01?sort@@YAXAIAM00@Z"}
!194 = !{!195, !196, !166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!195 = distinct !{!195, !193, !"\01?sort@@YAXAIAM00@Z: %a"}
!196 = distinct !{!196, !193, !"\01?sort@@YAXAIAM00@Z: %b"}
!197 = !{!196}
!198 = !{!195, !192, !166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!199 = !{!195}
!200 = !{!196, !192, !166, !168, !170, !171, !173, !174, !175, !177, !178, !179}
!201 = distinct !{!201, !"dx.controlflow.hints", i32 1}
!202 = distinct !{!202, !"dx.controlflow.hints", i32 2}
!203 = distinct !{!203, !"dx.controlflow.hints", i32 1}
!204 = distinct !{!204, !"dx.controlflow.hints", i32 1}
!205 = distinct !{!205, !"dx.controlflow.hints", i32 1}
!206 = distinct !{!206, !"dx.controlflow.hints", i32 1}
!207 = distinct !{!207, !"dx.controlflow.hints", i32 1}

