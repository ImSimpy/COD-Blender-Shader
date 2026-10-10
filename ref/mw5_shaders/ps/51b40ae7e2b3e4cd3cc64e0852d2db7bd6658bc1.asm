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
; shader hash: 043207699988daa4ce3d8a822f4f08c0
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
  br i1 %434, label %1305, label %435

; <label>:435                                     ; preds = %431
  br label %436

; <label>:436                                     ; preds = %1284, %435
  %437 = phi i32 [ %1285, %1284 ], [ %203, %435 ]
  %438 = phi float [ %1286, %1284 ], [ 0.000000e+00, %435 ]
  %439 = phi float [ %1287, %1284 ], [ 0.000000e+00, %435 ]
  %440 = phi float [ %1288, %1284 ], [ 0.000000e+00, %435 ]
  %441 = phi float [ %1289, %1284 ], [ 0.000000e+00, %435 ]
  %442 = phi float [ %1290, %1284 ], [ 0.000000e+00, %435 ]
  %443 = phi float [ %1291, %1284 ], [ 0.000000e+00, %435 ]
  %444 = phi float [ %1292, %1284 ], [ 0.000000e+00, %435 ]
  %445 = phi float [ %1293, %1284 ], [ 0.000000e+00, %435 ]
  %446 = phi i32 [ %1294, %1284 ], [ 0, %435 ]
  %447 = phi float [ %1295, %1284 ], [ 0.000000e+00, %435 ]
  %448 = phi i32 [ %1296, %1284 ], [ 0, %435 ]
  %449 = phi float [ %1297, %1284 ], [ 0.000000e+00, %435 ]
  %450 = phi float [ %1298, %1284 ], [ 0.000000e+00, %435 ]
  %451 = phi float [ %1299, %1284 ], [ 0.000000e+00, %435 ]
  %452 = phi i32 [ %460, %1284 ], [ %201, %435 ]
  %453 = phi i32 [ %1300, %1284 ], [ %180, %435 ]
  %454 = phi i32 [ %1301, %1284 ], [ %180, %435 ]
  %455 = phi i32 [ %1302, %1284 ], [ %180, %435 ]
  %456 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %452)  ; FirstbitLo(value)
  %457 = and i32 %456, 31
  %458 = shl i32 1, %457
  %459 = xor i32 %458, -1
  %460 = and i32 %452, %459
  %461 = shl i32 %456, 2
  %462 = add i32 %214, %461
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %466 = extractvalue %dx.types.CBufRet.f32 %465, 0
  %467 = fmul fast float %466, %79
  %468 = fmul fast float %466, %80
  %469 = extractvalue %dx.types.CBufRet.f32 %465, 1
  %470 = fadd fast float %467, %469
  %471 = fadd fast float %468, %469
  %472 = add i32 %461, %229
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = add i32 %474, 0
  %476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %475, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %477 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %476, i32 0)  ; GetDimensions(handle,mipLevel)
  %478 = extractvalue %dx.types.Dimensions %477, 0
  %479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %478)  ; FirstbitLo(value)
  %480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %481 = extractvalue %dx.types.CBufRet.i32 %480, 1
  %482 = sub nsw i32 %481, %479
  %483 = sitofp i32 %482 to float
  %484 = fsub fast float %177, %483
  %485 = call float @dx.op.binary.f32(i32 35, float %484, float 0.000000e+00)  ; FMax(a,b)
  %486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %476, %dx.types.Handle %59, float %470, float %471, float %464, float undef, i32 0, i32 0, i32 undef, float %485)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = fcmp fast ogt float %487, 0.000000e+00
  br i1 %488, label %489, label %1284

; <label>:489                                     ; preds = %436
  %490 = add i32 %381, %461
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 32767
  %494 = add i32 %446, 1
  %495 = mul nuw nsw i32 %493, 928
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = or i32 %495, 8
  %499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.f32 %499, 0
  %501 = or i32 %495, 12
  %502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 1
  %504 = or i32 %495, 20
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = or i32 %495, 24
  %508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = add nuw nsw i32 %495, 40
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 0
  %516 = add nuw nsw i32 %495, 72
  %517 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.f32 %517, 0
  %519 = extractvalue %dx.types.ResRet.f32 %517, 1
  %520 = add nuw nsw i32 %495, 80
  %521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.f32 %521, 0
  %523 = add nuw nsw i32 %495, 228
  %524 = add nuw nsw i32 %495, 516
  %525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 1
  %527 = add nuw nsw i32 %495, 528
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = add nuw nsw i32 %495, 540
  %532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  %534 = extractvalue %dx.types.ResRet.f32 %532, 1
  %535 = add nuw nsw i32 %495, 548
  %536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = add nuw nsw i32 %495, 552
  %539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  %541 = extractvalue %dx.types.ResRet.f32 %539, 1
  %542 = extractvalue %dx.types.ResRet.f32 %539, 2
  %543 = add nuw nsw i32 %495, 596
  %544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %543, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.f32 %544, 0
  %546 = extractvalue %dx.types.ResRet.f32 %544, 1
  %547 = add nuw nsw i32 %495, 620
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = extractvalue %dx.types.ResRet.f32 %548, 1
  %551 = add nuw nsw i32 %495, 628
  %552 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.f32 %552, 0
  %554 = extractvalue %dx.types.ResRet.f32 %552, 1
  %555 = extractvalue %dx.types.ResRet.f32 %552, 2
  %556 = extractvalue %dx.types.ResRet.f32 %552, 3
  %557 = add nuw nsw i32 %495, 648
  %558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = add nuw nsw i32 %495, 696
  %561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.f32 %561, 0
  %563 = extractvalue %dx.types.ResRet.f32 %561, 1
  %564 = add nuw nsw i32 %495, 708
  %565 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  %567 = extractvalue %dx.types.ResRet.f32 %565, 1
  %568 = add nuw nsw i32 %495, 812
  %569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  %571 = add nuw nsw i32 %495, 816
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 1
  %574 = add nuw nsw i32 %495, 852
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = add nuw nsw i32 %495, 860
  %578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.f32 %578, 2
  %580 = add nuw nsw i32 %495, 896
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add nuw nsw i32 %495, 900
  %584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.i32 %584, 0
  %586 = add nuw nsw i32 %495, 904
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %437, 24
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = and i32 %497, 128
  %593 = icmp ne i32 %592, 0
  %594 = extractvalue %dx.types.CBufRet.i32 %480, 0
  %595 = and i32 %594, 512
  %596 = icmp ne i32 %595, 0
  %597 = and i1 %593, %596
  %598 = select i1 %597, float 0.000000e+00, float %487
  %599 = fadd fast float %598, %591
  %600 = call float @dx.op.unary.f32(i32 7, float %599)  ; Saturate(value)
  %601 = fmul fast float %600, 2.550000e+02
  %602 = fptoui float %601 to i32
  %603 = shl i32 %602, 24
  %604 = and i32 %437, 16777215
  %605 = or i32 %603, %604
  %606 = fcmp fast ole float %78, 0x3FA4B5DCC0000000
  %607 = fmul fast float %78, 0x3FB3D07220000000
  %608 = fadd fast float %78, 0x3FAC28F5C0000000
  %609 = fmul fast float %608, 0x3FEE54EDE0000000
  %610 = call float @dx.op.unary.f32(i32 23, float %609)  ; Log(value)
  %611 = fmul fast float %610, 0x4003333340000000
  %612 = call float @dx.op.unary.f32(i32 21, float %611)  ; Exp(value)
  %613 = select i1 %606, float %607, float %612
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %615 = fmul fast float %545, %363
  %616 = fadd fast float %615, %546
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %618 = fmul fast float %617, %487
  %619 = fadd fast float %618, %443
  %620 = call float @dx.op.binary.f32(i32 35, float %614, float %617)  ; FMax(a,b)
  %621 = add i32 %585, 0
  %622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %621, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.i32 %623, 0
  %625 = and i32 %624, 65536
  %626 = icmp eq i32 %625, 0
  %627 = and i32 %624, 262144
  %628 = icmp ne i32 %627, 0
  %629 = and i32 %624, 1048576
  %630 = icmp ne i32 %629, 0
  br i1 %626, label %905, label %631

; <label>:631                                     ; preds = %489
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = fadd fast float %635, %153
  %638 = fadd fast float %636, %154
  %639 = fmul fast float %153, %153
  %640 = fmul fast float %154, %154
  %641 = fadd fast float %639, %640
  %642 = fmul fast float %155, %155
  %643 = fadd fast float %641, %642
  %644 = call float @dx.op.unary.f32(i32 24, float %643)  ; Sqrt(value)
  br i1 %630, label %645, label %691

; <label>:645                                     ; preds = %631
  %646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %647 = extractvalue %dx.types.CBufRet.f32 %646, 0
  %648 = fcmp fast ogt float %644, %647
  %649 = zext i1 %648 to i32
  %650 = extractvalue %dx.types.CBufRet.f32 %646, 1
  %651 = fcmp fast ogt float %644, %650
  %652 = zext i1 %651 to i32
  %653 = add nuw nsw i32 %652, %649
  %654 = extractvalue %dx.types.CBufRet.f32 %646, 2
  %655 = fcmp fast ogt float %644, %654
  %656 = zext i1 %655 to i32
  %657 = add nuw nsw i32 %653, %656
  %658 = icmp ult i32 %657, 3
  %659 = zext i1 %658 to i32
  %660 = shl nuw nsw i32 %657, 2
  %661 = add nuw nsw i32 %660, 48
  %662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %661)  ; CBufferLoadLegacy(handle,regIndex)
  %663 = extractvalue %dx.types.CBufRet.f32 %662, 1
  %664 = fcmp fast ogt float %644, %663
  %665 = zext i1 %664 to i32
  %666 = or i32 %660, 1
  %667 = add nuw nsw i32 %666, 48
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %667)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 1
  %670 = fcmp fast ogt float %644, %669
  %671 = zext i1 %670 to i32
  %672 = add nuw nsw i32 %671, %665
  %673 = or i32 %660, 2
  %674 = add nuw nsw i32 %673, 48
  %675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %674)  ; CBufferLoadLegacy(handle,regIndex)
  %676 = extractvalue %dx.types.CBufRet.f32 %675, 1
  %677 = fcmp fast ogt float %644, %676
  %678 = zext i1 %677 to i32
  %679 = add nuw nsw i32 %672, %678
  %680 = add i32 %506, -1
  %681 = call i32 @dx.op.binary.i32(i32 40, i32 %679, i32 %680)  ; UMin(a,b)
  %682 = add i32 %660, %681
  %683 = call i32 @dx.op.binary.i32(i32 40, i32 %682, i32 12)  ; UMin(a,b)
  %684 = add i32 %683, 48
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %684)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 0
  %687 = fcmp fast oge float %644, %686
  %688 = zext i1 %687 to i32
  %689 = call i32 @dx.op.binary.i32(i32 40, i32 %506, i32 %659)  ; UMin(a,b)
  %690 = call i32 @dx.op.binary.i32(i32 40, i32 %688, i32 %689)  ; UMin(a,b)
  br label %691

; <label>:691                                     ; preds = %645, %631
  %692 = phi i32 [ %683, %645 ], [ 0, %631 ]
  %693 = phi i32 [ %690, %645 ], [ 0, %631 ]
  %694 = add i32 %693, %506
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %894, label %696

; <label>:696                                     ; preds = %691
  br label %697

; <label>:697                                     ; preds = %863, %696
  %698 = phi float [ %890, %863 ], [ 0.000000e+00, %696 ]
  %699 = phi float [ %882, %863 ], [ 0.000000e+00, %696 ]
  %700 = phi float [ %883, %863 ], [ 0.000000e+00, %696 ]
  %701 = phi i32 [ %713, %863 ], [ %692, %696 ]
  %702 = phi i32 [ %891, %863 ], [ 0, %696 ]
  %703 = add i32 %702, %701
  br i1 %630, label %704, label %712

; <label>:704                                     ; preds = %697
  %705 = and i32 %703, -4
  %706 = add i32 %705, %506
  %707 = icmp uge i32 %703, %706
  %708 = sub i32 4, %506
  %709 = select i1 %707, i32 %708, i32 0
  %710 = add i32 %709, %701
  %711 = add i32 %709, %703
  br label %712

; <label>:712                                     ; preds = %704, %697
  %713 = phi i32 [ %710, %704 ], [ %701, %697 ]
  %714 = phi i32 [ %711, %704 ], [ %703, %697 ]
  %715 = and i32 %714, 3
  %716 = select i1 %630, i32 %715, i32 %702
  %717 = lshr i32 %714, 2
  %718 = select i1 %630, i32 %717, i32 0
  %719 = add i32 %714, 32
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %719)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %724 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %725 = fmul fast float %721, %644
  %726 = fadd fast float %725, %722
  %727 = call float @dx.op.unary.f32(i32 7, float %726)  ; Saturate(value)
  %728 = fmul fast float %723, %644
  %729 = fadd fast float %728, %724
  %730 = call float @dx.op.unary.f32(i32 7, float %729)  ; Saturate(value)
  %731 = call float @dx.op.binary.f32(i32 36, float %727, float %730)  ; FMin(a,b)
  %732 = select i1 %630, float %731, float 1.000000e+00
  %733 = mul i32 %716, 72
  %734 = add i32 %523, %733
  %735 = add i32 %734, 16
  %736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %735, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = extractvalue %dx.types.ResRet.f32 %736, 3
  %741 = add i32 %734, 36
  %742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 0
  %744 = add i32 %734, 56
  %745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.f32 %745, 0
  %747 = fmul fast float %350, 3.906250e-03
  %748 = fmul fast float %747, %522
  %749 = fmul fast float %748, %743
  %750 = fmul fast float %749, %746
  %751 = extractvalue %dx.types.ResRet.f32 %745, 1
  %752 = fadd fast float %750, %751
  %753 = call float @dx.op.binary.f32(i32 35, float %752, float 0.000000e+00)  ; FMax(a,b)
  %754 = add i32 %734, 32
  %755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.f32 %755, 0
  br i1 %628, label %757, label %790

; <label>:757                                     ; preds = %712
  %758 = fmul fast float %743, %345
  %759 = fmul fast float %743, %346
  %760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %761 = extractvalue %dx.types.CBufRet.f32 %760, 1
  %762 = add i32 %734, 40
  %763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  %768 = fadd fast float %761, %193
  %769 = fadd fast float %768, %766
  %770 = fmul fast float %768, %765
  %771 = call float @dx.op.unary.f32(i32 29, float %770)  ; Round_z(value)
  %772 = fmul fast float %764, %771
  %773 = fsub fast float %768, %772
  %774 = fmul fast float %769, %765
  %775 = call float @dx.op.unary.f32(i32 29, float %774)  ; Round_z(value)
  %776 = fmul fast float %775, %764
  %777 = fsub fast float %769, %776
  %778 = fmul fast float %773, %758
  %779 = fmul fast float %773, %759
  %780 = fmul fast float %777, %758
  %781 = fmul fast float %777, %759
  %782 = fsub fast float %637, %778
  %783 = fsub fast float %638, %779
  %784 = fsub fast float %637, %780
  %785 = fsub fast float %638, %781
  %786 = fsub fast float %766, %773
  %787 = call float @dx.op.unary.f32(i32 6, float %786)  ; FAbs(value)
  %788 = fmul fast float %787, %767
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  br label %790

; <label>:790                                     ; preds = %757, %712
  %791 = phi float [ %782, %757 ], [ %637, %712 ]
  %792 = phi float [ %783, %757 ], [ %638, %712 ]
  %793 = phi float [ %784, %757 ], [ %637, %712 ]
  %794 = phi float [ %785, %757 ], [ %638, %712 ]
  %795 = phi float [ %789, %757 ], [ 0.000000e+00, %712 ]
  %796 = fmul fast float %500, 4.000000e+00
  %797 = uitofp i32 %718 to float
  %798 = fadd fast float %797, %796
  %799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %800 = extractvalue %dx.types.CBufRet.f32 %799, 0
  %801 = extractvalue %dx.types.CBufRet.f32 %799, 1
  %802 = extractvalue %dx.types.CBufRet.f32 %799, 2
  %803 = extractvalue %dx.types.CBufRet.f32 %799, 3
  %804 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 0
  store float %800, float* %804, align 4
  %805 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 1
  store float %801, float* %805, align 4
  %806 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 2
  store float %802, float* %806, align 4
  %807 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 3
  store float %803, float* %807, align 4
  %808 = getelementptr inbounds [4 x float], [4 x float]* %68, i32 0, i32 %718
  %809 = load float, float* %808, align 4, !tbaa !106, !noalias !110
  %810 = fmul fast float %809, %503
  %811 = select i1 %630, float %810, float %503
  %812 = fmul fast float %791, %737
  %813 = call float @dx.op.tertiary.f32(i32 46, float %738, float %792, float %812)  ; FMad(a,b,c)
  %814 = fmul fast float %791, %739
  %815 = call float @dx.op.tertiary.f32(i32 46, float %740, float %792, float %814)  ; FMad(a,b,c)
  %816 = add i32 %734, 8
  %817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = fadd fast float %818, %813
  %821 = fadd fast float %819, %815
  %822 = fmul fast float %820, %811
  %823 = fmul fast float %821, %811
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = fmul fast float %822, %825
  %828 = fmul fast float %823, %826
  %829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %830 = extractvalue %dx.types.CBufRet.f32 %829, 2
  %831 = fadd fast float %827, %830
  %832 = fadd fast float %828, %830
  %833 = fmul fast float %793, %737
  %834 = call float @dx.op.tertiary.f32(i32 46, float %738, float %794, float %833)  ; FMad(a,b,c)
  %835 = fmul fast float %793, %739
  %836 = call float @dx.op.tertiary.f32(i32 46, float %740, float %794, float %835)  ; FMad(a,b,c)
  %837 = fadd fast float %818, %834
  %838 = fadd fast float %819, %836
  %839 = fmul fast float %837, %811
  %840 = fmul fast float %838, %811
  %841 = fmul fast float %839, %825
  %842 = fmul fast float %840, %826
  %843 = fadd fast float %841, %830
  %844 = fadd fast float %842, %830
  %845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %831, float %832, float %798, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 3
  %849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %60, float %843, float %844, float %798, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %628, label %850, label %863

; <label>:850                                     ; preds = %790
  %851 = extractvalue %dx.types.ResRet.f32 %849, 3
  %852 = extractvalue %dx.types.ResRet.f32 %849, 1
  %853 = extractvalue %dx.types.ResRet.f32 %849, 0
  %854 = fsub fast float %853, %846
  %855 = fsub fast float %852, %847
  %856 = fsub fast float %851, %848
  %857 = fmul fast float %854, %795
  %858 = fmul fast float %855, %795
  %859 = fmul fast float %856, %795
  %860 = fadd fast float %857, %846
  %861 = fadd fast float %858, %847
  %862 = fadd fast float %859, %848
  br label %863

; <label>:863                                     ; preds = %850, %790
  %864 = phi float [ %860, %850 ], [ %846, %790 ]
  %865 = phi float [ %861, %850 ], [ %847, %790 ]
  %866 = phi float [ %862, %850 ], [ %848, %790 ]
  %867 = fmul fast float %864, 2.000000e+00
  %868 = fmul fast float %865, 2.000000e+00
  %869 = fadd fast float %867, -1.000000e+00
  %870 = fadd fast float %868, -1.000000e+00
  %871 = fmul fast float %869, %737
  %872 = call float @dx.op.tertiary.f32(i32 46, float %870, float %739, float %871)  ; FMad(a,b,c)
  %873 = fmul fast float %869, %738
  %874 = call float @dx.op.tertiary.f32(i32 46, float %870, float %740, float %873)  ; FMad(a,b,c)
  %875 = fmul fast float %732, %633
  %876 = fmul fast float %875, %753
  %877 = fmul fast float %876, %756
  %878 = fmul fast float %872, %877
  %879 = fmul fast float %878, %825
  %880 = fmul fast float %874, %877
  %881 = fmul fast float %880, %826
  %882 = fadd fast float %879, %699
  %883 = fadd fast float %881, %700
  %884 = add i32 %734, 64
  %885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %884, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = fmul fast float %886, %866
  %888 = extractvalue %dx.types.ResRet.f32 %885, 1
  %889 = fadd fast float %887, %888
  %890 = call float @dx.op.binary.f32(i32 35, float %698, float %889)  ; FMax(a,b)
  %891 = add nuw i32 %702, 1
  %892 = icmp eq i32 %891, %694
  br i1 %892, label %893, label %697

; <label>:893                                     ; preds = %863
  br label %894

; <label>:894                                     ; preds = %893, %691
  %895 = phi float [ 0.000000e+00, %691 ], [ %890, %893 ]
  %896 = phi float [ 0.000000e+00, %691 ], [ %882, %893 ]
  %897 = phi float [ 0.000000e+00, %691 ], [ %883, %893 ]
  %898 = call float @dx.op.dot3.f32(i32 55, float %896, float %897, float 1.000000e+00, float %896, float %897, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %899 = call float @dx.op.unary.f32(i32 25, float %898)  ; Rsqrt(value)
  %900 = fmul fast float %899, %896
  %901 = fmul fast float %899, %897
  %902 = fmul fast float %895, %549
  %903 = fadd fast float %902, %550
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  br label %905

; <label>:905                                     ; preds = %894, %489
  %906 = phi float [ %900, %894 ], [ 0.000000e+00, %489 ]
  %907 = phi float [ %901, %894 ], [ 0.000000e+00, %489 ]
  %908 = phi float [ %899, %894 ], [ 0.000000e+00, %489 ]
  %909 = phi float [ %904, %894 ], [ 0.000000e+00, %489 ]
  %910 = fmul fast float %906, %487
  %911 = fmul fast float %907, %487
  %912 = fadd fast float %910, %438
  %913 = fadd fast float %911, %439
  %914 = fadd fast float %909, %620
  %915 = fmul fast float %908, %487
  %916 = fadd fast float %910, %440
  %917 = fadd fast float %911, %441
  %918 = fadd fast float %915, %442
  %919 = fmul fast float %909, %487
  %920 = fadd fast float %919, %444
  %921 = fmul fast float %914, %487
  %922 = fadd fast float %921, %445
  %923 = icmp ne i32 %506, 0
  %924 = select i1 %923, i32 2, i32 0
  %925 = fcmp fast ogt float %909, 0.000000e+00
  %926 = select i1 %925, i32 4, i32 0
  %927 = fmul fast float %566, %350
  %928 = fadd fast float %927, %567
  %929 = call float @dx.op.binary.f32(i32 35, float %928, float 0.000000e+00)  ; FMax(a,b)
  %930 = fmul fast float %929, %562
  %931 = fadd fast float %930, %563
  %932 = call float @dx.op.unary.f32(i32 7, float %931)  ; Saturate(value)
  %933 = fmul fast float %921, %932
  %934 = fadd fast float %933, %447
  %935 = icmp ne i32 %576, 0
  %936 = select i1 %935, i32 8, i32 0
  %937 = shl i32 %497, 3
  %938 = and i32 %937, 16
  %939 = shl i32 %497, 2
  %940 = and i32 %939, 256
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %943 = fmul fast float %942, %87
  %944 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %945 = fadd fast float %943, %944
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %948 = extractvalue %dx.types.CBufRet.f32 %947, 0
  %949 = fmul fast float %948, %946
  %950 = select i1 %935, float %949, float 0.000000e+00
  %951 = fcmp fast ogt float %950, 0.000000e+00
  br i1 %951, label %952, label %1083

; <label>:952                                     ; preds = %905
  %953 = add i32 %225, 0
  %954 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %953, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %955 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %954, i32 0)  ; GetDimensions(handle,mipLevel)
  %956 = extractvalue %dx.types.Dimensions %955, 0
  %957 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %956)  ; FirstbitLo(value)
  %958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.i32 %958, 1
  %960 = sub nsw i32 %959, %957
  %961 = sitofp i32 %960 to float
  %962 = fsub fast float %542, %961
  %963 = call float @dx.op.binary.f32(i32 35, float %962, float 0.000000e+00)  ; FMax(a,b)
  %964 = fmul fast float %526, %235
  %965 = fmul fast float %526, %236
  %966 = fmul fast float %540, %79
  %967 = fmul fast float %540, %80
  %968 = call float @dx.op.unary.f32(i32 22, float %966)  ; Frc(value)
  %969 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %970 = fmul fast float %968, 2.000000e+00
  %971 = fmul fast float %969, 2.000000e+00
  %972 = fadd fast float %970, -1.000000e+00
  %973 = fadd fast float %971, -1.000000e+00
  %974 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %975 = call float @dx.op.unary.f32(i32 6, float %973)  ; FAbs(value)
  %976 = fsub fast float 1.000000e+00, %974
  %977 = fmul fast float %976, %975
  %978 = fsub fast float %976, %977
  %979 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %978, float* %979, align 4, !tbaa !106, !noalias !115
  %980 = fmul fast float %975, %974
  %981 = fsub fast float %974, %980
  %982 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %981, float* %982, align 4, !tbaa !106, !noalias !115
  %983 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %977, float* %983, align 4, !tbaa !106, !noalias !115
  %984 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %980, float* %984, align 4, !tbaa !106, !noalias !115
  br label %985

; <label>:985                                     ; preds = %985, %952
  %986 = phi i32 [ 0, %952 ], [ %1080, %985 ]
  %987 = phi float [ %912, %952 ], [ %1078, %985 ]
  %988 = phi float [ %913, %952 ], [ %1079, %985 ]
  %989 = mul i32 %986, 2
  %990 = add i32 0, %989
  %991 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %990
  %992 = load float, float* %991, align 4
  %993 = mul i32 %986, 2
  %994 = add i32 1, %993
  %995 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %994
  %996 = load float, float* %995, align 4
  %997 = fmul fast float %992, 5.000000e-01
  %998 = fmul fast float %996, 5.000000e-01
  %999 = fsub fast float 1.000000e+00, %992
  %1000 = fsub fast float 1.000000e+00, %996
  %1001 = fmul fast float %999, 5.000000e-01
  %1002 = fmul fast float %1000, 5.000000e-01
  %1003 = fadd fast float %997, %966
  %1004 = fadd fast float %998, %967
  %1005 = call float @dx.op.unary.f32(i32 27, float %1003)  ; Round_ni(value)
  %1006 = call float @dx.op.unary.f32(i32 27, float %1004)  ; Round_ni(value)
  %1007 = fadd fast float %1005, %1001
  %1008 = fadd fast float %1006, %1002
  %1009 = fmul fast float %1007, %541
  %1010 = fmul fast float %1008, %541
  %1011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1012 = extractvalue %dx.types.CBufRet.f32 %1011, 0
  %1013 = fmul fast float %1009, %1012
  %1014 = fmul fast float %1010, %1012
  %1015 = extractvalue %dx.types.CBufRet.f32 %1011, 1
  %1016 = fadd fast float %1013, %1015
  %1017 = fadd fast float %1014, %1015
  %1018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %954, %dx.types.Handle %62, float %1016, float %1017, float %213, float undef, i32 0, i32 0, i32 undef, float %963)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1022 = extractvalue %dx.types.CBufRet.f32 %1021, 3
  %1023 = fmul fast float %1022, 2.000000e+00
  %1024 = fmul fast float %1023, %1019
  %1025 = fmul fast float %1023, %1020
  %1026 = fsub fast float %1024, %1022
  %1027 = fsub fast float %1025, %1022
  %1028 = fmul fast float %1026, %1026
  %1029 = fmul fast float %1027, %1027
  %1030 = fadd fast float %1028, %1029
  %1031 = call float @dx.op.unary.f32(i32 24, float %1030)  ; Sqrt(value)
  %1032 = fcmp fast ogt float %1031, 0.000000e+00
  %1033 = fdiv fast float 1.000000e+00, %1031
  %1034 = fmul fast float %1026, %1033
  %1035 = fmul fast float %1027, %1033
  %1036 = select i1 %1032, float %1034, float 0.000000e+00
  %1037 = select i1 %1032, float %1035, float 0.000000e+00
  %1038 = add i32 %576, 0
  %1039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1041 = extractvalue %dx.types.CBufRet.f32 %1040, 1
  %1042 = fmul fast float %537, %526
  %1043 = fmul fast float %1042, %1031
  %1044 = fsub fast float -0.000000e+00, %1036
  %1045 = fmul fast float %1037, %964
  %1046 = call float @dx.op.tertiary.f32(i32 46, float %1044, float %965, float %1045)  ; FMad(a,b,c)
  %1047 = fmul fast float %1036, %964
  %1048 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %965, float %1047)  ; FMad(a,b,c)
  %1049 = fmul fast float %1043, %1041
  %1050 = fsub fast float %1048, %1049
  %1051 = fmul fast float %1046, %529
  %1052 = fmul fast float %1050, %530
  %1053 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1054 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1039, %dx.types.Handle %1053, float %1051, float %1052, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 3
  %1057 = fadd fast float %1055, %1056
  %1058 = fmul fast float %1057, %579
  %1059 = fsub fast float %1058, %579
  %1060 = fsub fast float %1055, %1056
  %1061 = fmul fast float %1060, %579
  %1062 = fmul fast float %1059, %1037
  %1063 = call float @dx.op.tertiary.f32(i32 46, float %1036, float %1061, float %1062)  ; FMad(a,b,c)
  %1064 = fmul fast float %1059, %1044
  %1065 = call float @dx.op.tertiary.f32(i32 46, float %1037, float %1061, float %1064)  ; FMad(a,b,c)
  %1066 = fmul fast float %1063, %529
  %1067 = fmul fast float %1065, %530
  %1068 = fmul fast float %533, %350
  %1069 = fadd fast float %1068, %534
  %1070 = call float @dx.op.binary.f32(i32 35, float %1069, float 0.000000e+00)  ; FMax(a,b)
  %1071 = fmul fast float %950, %487
  %1072 = fmul fast float %1071, %1070
  %1073 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %986
  %1074 = load float, float* %1073, align 4, !tbaa !106, !noalias !115
  %1075 = fmul fast float %1072, %1074
  %1076 = fmul fast float %1066, %1075
  %1077 = fmul fast float %1067, %1075
  %1078 = fadd fast float %1076, %987
  %1079 = fadd fast float %1077, %988
  %1080 = add nuw nsw i32 %986, 1
  %1081 = icmp eq i32 %1080, 4
  br i1 %1081, label %1082, label %985, !llvm.loop !118

; <label>:1082                                    ; preds = %985
  br label %1083

; <label>:1083                                    ; preds = %1082, %905
  %1084 = phi float [ %912, %905 ], [ %1078, %1082 ]
  %1085 = phi float [ %913, %905 ], [ %1079, %1082 ]
  %1086 = and i32 %497, 16
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1088, label %1089

; <label>:1088                                    ; preds = %1083
  br label %1155

; <label>:1089                                    ; preds = %1083
  %1090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1091 = extractvalue %dx.types.CBufRet.f32 %1090, 0
  %1092 = extractvalue %dx.types.CBufRet.f32 %1090, 1
  %1093 = fadd fast float %1091, %153
  %1094 = fadd fast float %1092, %154
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = extractvalue %dx.types.CBufRet.f32 %1095, 1
  %1098 = fsub fast float %1093, %1096
  %1099 = fsub fast float %1094, %1097
  %1100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1101 = extractvalue %dx.types.CBufRet.f32 %1100, 2
  %1102 = fmul fast float %1098, %1101
  %1103 = fmul fast float %1099, %1101
  %1104 = fadd fast float %1102, 5.000000e-01
  %1105 = fadd fast float %1103, 5.000000e-01
  %1106 = fcmp fast olt float %1104, 0.000000e+00
  %1107 = fcmp fast olt float %1105, 0.000000e+00
  %1108 = or i1 %1106, %1107
  %1109 = fcmp fast oge float %1104, 1.000000e+00
  %1110 = fcmp fast oge float %1105, 1.000000e+00
  %1111 = or i1 %1109, %1110
  %1112 = or i1 %1108, %1111
  br i1 %1112, label %1146, label %1113

; <label>:1113                                    ; preds = %1089
  %1114 = extractvalue %dx.types.CBufRet.f32 %1090, 2
  %1115 = fadd fast float %1114, %155
  %1116 = fmul fast float %1101, %1093
  %1117 = fmul fast float %1101, %1094
  %1118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1119 = extractvalue %dx.types.CBufRet.f32 %1118, 2
  %1120 = fsub fast float %1115, %1119
  %1121 = extractvalue %dx.types.CBufRet.f32 %1118, 1
  %1122 = fmul fast float %1120, %1121
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  %1124 = call float @dx.op.binary.f32(i32 36, float %1105, float %1123)  ; FMin(a,b)
  %1125 = call float @dx.op.binary.f32(i32 36, float %1104, float %1124)  ; FMin(a,b)
  %1126 = call float @dx.op.binary.f32(i32 35, float %1105, float %1123)  ; FMax(a,b)
  %1127 = call float @dx.op.binary.f32(i32 35, float %1104, float %1126)  ; FMax(a,b)
  %1128 = fsub fast float 1.000000e+00, %1127
  %1129 = call float @dx.op.binary.f32(i32 36, float %1125, float %1128)  ; FMin(a,b)
  %1130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1131 = extractvalue %dx.types.CBufRet.f32 %1130, 3
  %1132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1133 = extractvalue %dx.types.CBufRet.f32 %1132, 1
  %1134 = call float @dx.op.binary.f32(i32 35, float %1133, float %1131)  ; FMax(a,b)
  %1135 = fsub fast float %1134, %1133
  %1136 = fsub fast float %1129, %1133
  %1137 = fdiv fast float %1136, %1135
  %1138 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1139 = fmul fast float %1138, 2.000000e+00
  %1140 = fsub fast float 3.000000e+00, %1139
  %1141 = fmul fast float %1138, %1138
  %1142 = fmul fast float %1141, %1140
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %60, float %1116, float %1117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = fmul fast float %1142, %1144
  br label %1146

; <label>:1146                                    ; preds = %1113, %1089
  %1147 = phi float [ %1145, %1113 ], [ 0.000000e+00, %1089 ]
  %1148 = fmul fast float %573, %235
  %1149 = fmul fast float %573, %236
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %622, %dx.types.Handle %1150, float %1148, float %1149, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  %1153 = fmul fast float %1152, %1147
  %1154 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1153)  ; FMax(a,b)
  br label %1155

; <label>:1155                                    ; preds = %1146, %1088
  %1156 = phi float [ %1154, %1146 ], [ 0.000000e+00, %1088 ]
  %1157 = fmul fast float %236, 3.906250e-03
  %1158 = fmul fast float %235, 7.812500e-03
  %1159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1160 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %622, %dx.types.Handle %1159, float %1158, float %1157, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1161 = add i32 %585, 0
  %1162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1161, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1163 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1162, i32 0)  ; GetDimensions(handle,mipLevel)
  %1164 = extractvalue %dx.types.Dimensions %1163, 0
  %1165 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1164)  ; FirstbitLo(value)
  %1166 = uitofp i32 %1165 to float
  %1167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1168 = extractvalue %dx.types.CBufRet.f32 %1167, 1
  %1169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1170 = extractvalue %dx.types.CBufRet.f32 %1169, 2
  %1171 = fadd fast float %245, -7.000000e+00
  %1172 = fadd fast float %1171, %1166
  %1173 = fadd fast float %1172, %1168
  %1174 = fadd fast float %1173, %1170
  %1175 = call float @dx.op.binary.f32(i32 35, float %1174, float 0.000000e+00)  ; FMax(a,b)
  %1176 = and i32 %497, 8
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1194, label %1178

; <label>:1178                                    ; preds = %1155
  %1179 = fadd fast float %570, 1.000000e+00
  %1180 = fmul fast float %914, %1179
  %1181 = fsub fast float %1180, %570
  %1182 = fsub fast float %1179, %1181
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  %1184 = fsub fast float 1.000000e+00, %1180
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = fsub fast float %1183, %1185
  %1187 = fsub fast float %1156, %1185
  %1188 = fdiv fast float %1187, %1186
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = fmul fast float %1189, 2.000000e+00
  %1191 = fsub fast float 3.000000e+00, %1190
  %1192 = fmul fast float %1189, %1189
  %1193 = fmul fast float %1192, %1191
  br label %1194

; <label>:1194                                    ; preds = %1178, %1155
  %1195 = phi float [ %1193, %1178 ], [ %1156, %1155 ]
  %1196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1197 = extractvalue %dx.types.CBufRet.f32 %1196, 3
  %1198 = fmul fast float %1197, %1195
  %1199 = fmul fast float %1198, %487
  %1200 = fadd fast float %1199, %451
  %1201 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1202 = and i32 %497, 32
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1220, label %1204

; <label>:1204                                    ; preds = %1194
  %1205 = add i32 %588, 0
  %1206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1205, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1206, %dx.types.Handle %61, float %1198, float %559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  %1209 = extractvalue %dx.types.ResRet.f32 %1207, 1
  %1210 = extractvalue %dx.types.ResRet.f32 %1207, 2
  %1211 = extractvalue %dx.types.ResRet.f32 %1207, 3
  %1212 = and i32 %582, 255
  %1213 = uitofp i32 %1212 to float
  %1214 = lshr i32 %582, 8
  %1215 = and i32 %1214, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1211, %1213
  %1218 = fadd fast float %1217, %1216
  %1219 = fmul fast float %1218, 0x3F70101000000000
  br label %1220

; <label>:1220                                    ; preds = %1204, %1194
  %1221 = phi float [ %1208, %1204 ], [ %553, %1194 ]
  %1222 = phi float [ %1209, %1204 ], [ %554, %1194 ]
  %1223 = phi float [ %1210, %1204 ], [ %555, %1194 ]
  %1224 = phi float [ %1219, %1204 ], [ %556, %1194 ]
  %1225 = fsub fast float %1221, %509
  %1226 = fsub fast float %1222, %510
  %1227 = fsub fast float %1223, %511
  %1228 = fmul fast float %1225, %1198
  %1229 = fmul fast float %1226, %1198
  %1230 = fmul fast float %1227, %1198
  %1231 = fadd fast float %1228, %509
  %1232 = fadd fast float %1229, %510
  %1233 = fadd fast float %1230, %511
  %1234 = fsub fast float %1224, %512
  %1235 = fmul fast float %1234, %1198
  %1236 = fadd fast float %1235, %512
  %1237 = fmul fast float %518, %376
  %1238 = fadd fast float %1237, %519
  %1239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1240 = extractvalue %dx.types.CBufRet.f32 %1239, 2
  %1241 = fcmp fast oge float %1238, %1240
  %1242 = select i1 %1241, i32 512, i32 0
  %1243 = or i32 %938, %448
  %1244 = or i32 %1243, %940
  %1245 = or i32 %1244, %924
  %1246 = or i32 %1245, %936
  %1247 = or i32 %1246, %926
  %1248 = or i32 %1247, %1242
  %1249 = and i32 %453, 65535
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = lshr i32 %453, 16
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = and i32 %454, 65535
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = lshr i32 %454, 16
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = fmul fast float %1231, %487
  %1258 = fmul fast float %1232, %487
  %1259 = fmul fast float %1233, %487
  %1260 = fmul fast float %1236, %487
  %1261 = fadd fast float %1250, %1257
  %1262 = fadd fast float %1252, %1258
  %1263 = fadd fast float %1254, %1259
  %1264 = fadd fast float %1256, %1260
  %1265 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1261)  ; LegacyF32ToF16(value)
  %1266 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1262)  ; LegacyF32ToF16(value)
  %1267 = shl i32 %1266, 16
  %1268 = or i32 %1267, %1265
  %1269 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1263)  ; LegacyF32ToF16(value)
  %1270 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1264)  ; LegacyF32ToF16(value)
  %1271 = shl i32 %1270, 16
  %1272 = or i32 %1271, %1269
  %1273 = and i32 %455, 65535
  %1274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1273)  ; LegacyF16ToF32(value)
  %1275 = lshr i32 %455, 16
  %1276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1275)  ; LegacyF16ToF32(value)
  %1277 = fmul fast float %515, %487
  %1278 = fadd fast float %1274, %487
  %1279 = fadd fast float %1276, %1277
  %1280 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1278)  ; LegacyF32ToF16(value)
  %1281 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1279)  ; LegacyF32ToF16(value)
  %1282 = shl i32 %1281, 16
  %1283 = or i32 %1282, %1280
  br label %1284

; <label>:1284                                    ; preds = %1220, %436
  %1285 = phi i32 [ %605, %1220 ], [ %437, %436 ]
  %1286 = phi float [ %1084, %1220 ], [ %438, %436 ]
  %1287 = phi float [ %1085, %1220 ], [ %439, %436 ]
  %1288 = phi float [ %916, %1220 ], [ %440, %436 ]
  %1289 = phi float [ %917, %1220 ], [ %441, %436 ]
  %1290 = phi float [ %918, %1220 ], [ %442, %436 ]
  %1291 = phi float [ %619, %1220 ], [ %443, %436 ]
  %1292 = phi float [ %920, %1220 ], [ %444, %436 ]
  %1293 = phi float [ %922, %1220 ], [ %445, %436 ]
  %1294 = phi i32 [ %494, %1220 ], [ %446, %436 ]
  %1295 = phi float [ %934, %1220 ], [ %447, %436 ]
  %1296 = phi i32 [ %1248, %1220 ], [ %448, %436 ]
  %1297 = phi float [ %1160, %1220 ], [ %449, %436 ]
  %1298 = phi float [ %1175, %1220 ], [ %450, %436 ]
  %1299 = phi float [ %1201, %1220 ], [ %451, %436 ]
  %1300 = phi i32 [ %1268, %1220 ], [ %453, %436 ]
  %1301 = phi i32 [ %1272, %1220 ], [ %454, %436 ]
  %1302 = phi i32 [ %1283, %1220 ], [ %455, %436 ]
  %1303 = icmp eq i32 %460, 0
  br i1 %1303, label %1304, label %436

; <label>:1304                                    ; preds = %1284
  br label %1305

; <label>:1305                                    ; preds = %1304, %431
  %1306 = phi i32 [ %203, %431 ], [ %1285, %1304 ]
  %1307 = phi float [ 0.000000e+00, %431 ], [ %1286, %1304 ]
  %1308 = phi float [ 0.000000e+00, %431 ], [ %1287, %1304 ]
  %1309 = phi float [ 0.000000e+00, %431 ], [ %1288, %1304 ]
  %1310 = phi float [ 0.000000e+00, %431 ], [ %1289, %1304 ]
  %1311 = phi float [ 0.000000e+00, %431 ], [ %1290, %1304 ]
  %1312 = phi float [ 0.000000e+00, %431 ], [ %1291, %1304 ]
  %1313 = phi float [ 0.000000e+00, %431 ], [ %1292, %1304 ]
  %1314 = phi float [ 0.000000e+00, %431 ], [ %1293, %1304 ]
  %1315 = phi i32 [ 0, %431 ], [ %1294, %1304 ]
  %1316 = phi float [ 0.000000e+00, %431 ], [ %1295, %1304 ]
  %1317 = phi i32 [ 0, %431 ], [ %1296, %1304 ]
  %1318 = phi float [ 0.000000e+00, %431 ], [ %1297, %1304 ]
  %1319 = phi float [ 0.000000e+00, %431 ], [ %1298, %1304 ]
  %1320 = phi float [ 0.000000e+00, %431 ], [ %1299, %1304 ]
  %1321 = phi i32 [ %180, %431 ], [ %1300, %1304 ]
  %1322 = phi i32 [ %180, %431 ], [ %1301, %1304 ]
  %1323 = phi i32 [ %180, %431 ], [ %1302, %1304 ]
  %1324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1325 = extractvalue %dx.types.CBufRet.f32 %1324, 2
  %1326 = fmul fast float %1325, 0x3FE3C6EF40000000
  %1327 = frem fast float %98, 2.560000e+02
  %1328 = frem fast float %99, 2.560000e+02
  %1329 = fptoui float %1327 to i32
  %1330 = fptoui float %1328 to i32
  %1331 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %1329, i32 %1330, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = extractvalue %dx.types.ResRet.f32 %1331, 1
  %1334 = fadd fast float %1332, %1326
  %1335 = fadd fast float %1333, %1326
  %1336 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1337 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1338 = fcmp fast ogt float %119, 0.000000e+00
  %1339 = fcmp fast olt float %119, 0.000000e+00
  %1340 = zext i1 %1338 to i32
  %1341 = zext i1 %1339 to i32
  %1342 = sub nsw i32 %1340, %1341
  %1343 = sitofp i32 %1342 to float
  %1344 = fadd fast float %1343, %119
  %1345 = fdiv fast float -1.000000e+00, %1344
  %1346 = fmul fast float %117, %118
  %1347 = fmul fast float %1346, %1345
  %1348 = fmul fast float %117, %117
  %1349 = fmul fast float %1348, %1343
  %1350 = fmul fast float %1349, %1345
  %1351 = fadd fast float %1350, 1.000000e+00
  %1352 = fmul fast float %1347, %1343
  %1353 = fmul fast float %1343, %117
  %1354 = fsub fast float -0.000000e+00, %1353
  %1355 = fmul fast float %118, %118
  %1356 = fmul fast float %1355, %1345
  %1357 = fadd fast float %1356, %1343
  %1358 = fsub fast float -0.000000e+00, %118
  %1359 = and i32 %1321, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1321, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = and i32 %1322, 65535
  %1364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1363)  ; LegacyF16ToF32(value)
  %1365 = lshr i32 %1322, 16
  %1366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1365)  ; LegacyF16ToF32(value)
  %1367 = and i32 %1323, 65535
  %1368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1367)  ; LegacyF16ToF32(value)
  %1369 = lshr i32 %1323, 16
  %1370 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1369)  ; LegacyF16ToF32(value)
  %1371 = call float @dx.op.unary.f32(i32 7, float %1370)  ; Saturate(value)
  %1372 = call float @dx.op.unary.f32(i32 83, float %153)  ; DerivCoarseX(value)
  %1373 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1374 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1375 = call float @dx.op.unary.f32(i32 84, float %153)  ; DerivCoarseY(value)
  %1376 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1377 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1378 = fadd fast float %1372, %153
  %1379 = fadd fast float %1373, %154
  %1380 = fadd fast float %1374, %155
  %1381 = fadd fast float %1375, %153
  %1382 = fadd fast float %1376, %154
  %1383 = fadd fast float %1377, %155
  %1384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1385 = extractvalue %dx.types.CBufRet.f32 %1384, 0
  %1386 = extractvalue %dx.types.CBufRet.f32 %1384, 1
  %1387 = extractvalue %dx.types.CBufRet.f32 %1384, 2
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1390 = extractvalue %dx.types.CBufRet.f32 %1388, 3
  %1391 = fmul fast float %1385, %98
  %1392 = fmul fast float %1391, %1389
  %1393 = fmul fast float %1386, %99
  %1394 = fmul fast float %1393, %1390
  %1395 = fptoui float %1392 to i32
  %1396 = fptoui float %1394 to i32
  %1397 = fadd fast float %1385, -1.000000e+00
  %1398 = fadd fast float %1386, -1.000000e+00
  %1399 = fptoui float %1397 to i32
  %1400 = fptoui float %1398 to i32
  %1401 = call i32 @dx.op.binary.i32(i32 40, i32 %1395, i32 %1399)  ; UMin(a,b)
  %1402 = call i32 @dx.op.binary.i32(i32 40, i32 %1396, i32 %1400)  ; UMin(a,b)
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 2
  %1405 = extractvalue %dx.types.CBufRet.f32 %1403, 3
  %1406 = fmul fast float %1404, %87
  %1407 = fsub fast float %1406, %1405
  %1408 = fadd fast float %1387, -1.000000e+00
  %1409 = call float @dx.op.binary.f32(i32 36, float %1407, float %1408)  ; FMin(a,b)
  %1410 = fptoui float %1409 to i32
  %1411 = fptoui float %1385 to i32
  %1412 = fptoui float %1386 to i32
  %1413 = mul i32 %1410, %1412
  %1414 = add i32 %1413, %1402
  %1415 = mul i32 %1414, %1411
  %1416 = add i32 %1415, %1401
  %1417 = shl i32 %1416, 2
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 1023
  %1421 = lshr i32 %1419, 10
  %1422 = icmp eq i32 %1420, 0
  br i1 %1422, label %1819, label %1423

; <label>:1423                                    ; preds = %1305
  %1424 = and i32 %1419, 1023
  br label %1425

; <label>:1425                                    ; preds = %1546, %1423
  %1426 = phi float [ %1547, %1546 ], [ 0.000000e+00, %1423 ]
  %1427 = phi float [ %1548, %1546 ], [ 0.000000e+00, %1423 ]
  %1428 = phi float [ %1549, %1546 ], [ 0.000000e+00, %1423 ]
  %1429 = phi float [ %1550, %1546 ], [ %1307, %1423 ]
  %1430 = phi float [ %1551, %1546 ], [ %1308, %1423 ]
  %1431 = phi float [ %1552, %1546 ], [ %1368, %1423 ]
  %1432 = phi float [ %1553, %1546 ], [ %1371, %1423 ]
  %1433 = phi float [ %1554, %1546 ], [ 0.000000e+00, %1423 ]
  %1434 = phi float [ %1555, %1546 ], [ %1366, %1423 ]
  %1435 = phi float [ %1556, %1546 ], [ %1360, %1423 ]
  %1436 = phi float [ %1557, %1546 ], [ %1362, %1423 ]
  %1437 = phi float [ %1558, %1546 ], [ %1364, %1423 ]
  %1438 = phi i32 [ %1559, %1546 ], [ 0, %1423 ]
  %1439 = phi i32 [ %1495, %1546 ], [ 0, %1423 ]
  %1440 = add nuw nsw i32 %1439, %1421
  %1441 = shl i32 %1440, 2
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = shl i32 %1443, 8
  %1445 = or i32 %1444, 48
  %1446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1445, i32 undef)  ; BufferLoad(srv,index,wot)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = extractvalue %dx.types.ResRet.f32 %1446, 1
  %1449 = extractvalue %dx.types.ResRet.f32 %1446, 2
  %1450 = extractvalue %dx.types.ResRet.f32 %1446, 3
  %1451 = or i32 %1444, 64
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = extractvalue %dx.types.ResRet.i32 %1452, 1
  %1455 = or i32 %1444, 80
  %1456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1459 = or i32 %1444, 96
  %1460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1459, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.f32 %1460, 0
  %1462 = extractvalue %dx.types.ResRet.f32 %1460, 1
  %1463 = extractvalue %dx.types.ResRet.f32 %1460, 2
  %1464 = extractvalue %dx.types.ResRet.f32 %1460, 3
  %1465 = or i32 %1444, 112
  %1466 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1468 = or i32 %1444, 128
  %1469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = or i32 %1444, 144
  %1475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = extractvalue %dx.types.ResRet.f32 %1475, 3
  %1480 = or i32 %1444, 160
  %1481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.f32 %1481, 0
  %1483 = extractvalue %dx.types.ResRet.f32 %1481, 1
  %1484 = extractvalue %dx.types.ResRet.f32 %1481, 2
  %1485 = or i32 %1444, 192
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = or i32 %1444, 208
  %1489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = or i32 %1444, 248
  %1492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = extractvalue %dx.types.ResRet.f32 %1492, 1
  %1495 = add nuw nsw i32 %1439, 1
  %1496 = bitcast float %1450 to i32
  %1497 = and i32 %1496, 512
  %1498 = icmp ne i32 %1497, 0
  %1499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1500 = extractvalue %dx.types.ResRet.f32 %1499, 0
  %1501 = extractvalue %dx.types.ResRet.f32 %1499, 1
  %1502 = extractvalue %dx.types.ResRet.f32 %1499, 2
  %1503 = extractvalue %dx.types.ResRet.f32 %1499, 3
  %1504 = call float @dx.op.dot4.f32(i32 56, float %1500, float %1501, float %1502, float %1503, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1505 = or i32 %1444, 16
  %1506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.f32 %1506, 0
  %1508 = extractvalue %dx.types.ResRet.f32 %1506, 1
  %1509 = extractvalue %dx.types.ResRet.f32 %1506, 2
  %1510 = extractvalue %dx.types.ResRet.f32 %1506, 3
  %1511 = call float @dx.op.dot4.f32(i32 56, float %1507, float %1508, float %1509, float %1510, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1512 = or i32 %1444, 32
  %1513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.ResRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.ResRet.f32 %1513, 2
  %1517 = extractvalue %dx.types.ResRet.f32 %1513, 3
  %1518 = call float @dx.op.dot4.f32(i32 56, float %1514, float %1515, float %1516, float %1517, float %153, float %154, float %155, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1519 = call float @dx.op.unary.f32(i32 27, float %1504)  ; Round_ni(value)
  %1520 = call float @dx.op.unary.f32(i32 6, float %1519)  ; FAbs(value)
  %1521 = call float @dx.op.unary.f32(i32 27, float %1511)  ; Round_ni(value)
  %1522 = call float @dx.op.unary.f32(i32 6, float %1521)  ; FAbs(value)
  %1523 = call float @dx.op.unary.f32(i32 6, float %1518)  ; FAbs(value)
  %1524 = call float @dx.op.unary.f32(i32 27, float %1523)  ; Round_ni(value)
  %1525 = fadd fast float %1522, %1520
  %1526 = fadd fast float %1525, %1524
  %1527 = fcmp fast oeq float %1526, 0.000000e+00
  %1528 = call float @dx.op.dot4.f32(i32 56, float %1500, float %1501, float %1502, float %1503, float %1378, float %1379, float %1380, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1529 = call float @dx.op.dot4.f32(i32 56, float %1507, float %1508, float %1509, float %1510, float %1378, float %1379, float %1380, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1530 = call float @dx.op.dot4.f32(i32 56, float %1500, float %1501, float %1502, float %1503, float %1381, float %1382, float %1383, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1531 = call float @dx.op.dot4.f32(i32 56, float %1507, float %1508, float %1509, float %1510, float %1381, float %1382, float %1383, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1532 = fsub fast float %1528, %1504
  %1533 = fsub fast float %1530, %1504
  %1534 = fsub fast float %1529, %1511
  %1535 = fsub fast float %1531, %1511
  %1536 = call float @dx.op.dot3.f32(i32 55, float %1447, float %1448, float %1449, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 2
  %1539 = call float @dx.op.unary.f32(i32 6, float %1536)  ; FAbs(value)
  %1540 = fadd fast float %1539, %1538
  %1541 = call float @dx.op.unary.f32(i32 7, float %1540)  ; Saturate(value)
  %1542 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1543 = fcmp fast ogt float %1541, %1542
  %1544 = and i1 %1527, %1543
  %1545 = and i1 %1498, %1544
  br i1 %1545, label %1561, label %1546

; <label>:1546                                    ; preds = %1805, %1643, %1561, %1425
  %1547 = phi float [ %1426, %1561 ], [ %1426, %1643 ], [ %1815, %1805 ], [ %1426, %1425 ]
  %1548 = phi float [ %1427, %1561 ], [ %1427, %1643 ], [ %1816, %1805 ], [ %1427, %1425 ]
  %1549 = phi float [ %1428, %1561 ], [ %1428, %1643 ], [ %1817, %1805 ], [ %1428, %1425 ]
  %1550 = phi float [ %1429, %1561 ], [ %1429, %1643 ], [ %1779, %1805 ], [ %1429, %1425 ]
  %1551 = phi float [ %1430, %1561 ], [ %1430, %1643 ], [ %1780, %1805 ], [ %1430, %1425 ]
  %1552 = phi float [ %1431, %1561 ], [ %1431, %1643 ], [ %1774, %1805 ], [ %1431, %1425 ]
  %1553 = phi float [ %1432, %1561 ], [ %1432, %1643 ], [ %1771, %1805 ], [ %1432, %1425 ]
  %1554 = phi float [ %1433, %1561 ], [ %1433, %1643 ], [ %1768, %1805 ], [ %1433, %1425 ]
  %1555 = phi float [ %1434, %1561 ], [ %1434, %1643 ], [ %1766, %1805 ], [ %1434, %1425 ]
  %1556 = phi float [ %1435, %1561 ], [ %1435, %1643 ], [ %1761, %1805 ], [ %1435, %1425 ]
  %1557 = phi float [ %1436, %1561 ], [ %1436, %1643 ], [ %1762, %1805 ], [ %1436, %1425 ]
  %1558 = phi float [ %1437, %1561 ], [ %1437, %1643 ], [ %1763, %1805 ], [ %1437, %1425 ]
  %1559 = phi i32 [ %1569, %1561 ], [ %1569, %1643 ], [ %1569, %1805 ], [ %1438, %1425 ]
  %1560 = icmp eq i32 %1495, %1424
  br i1 %1560, label %1818, label %1425

; <label>:1561                                    ; preds = %1425
  %1562 = extractvalue %dx.types.ResRet.f32 %1466, 3
  %1563 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1565 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1566 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1567 = extractvalue %dx.types.ResRet.i32 %1452, 3
  %1568 = extractvalue %dx.types.ResRet.i32 %1452, 2
  %1569 = add i32 %1438, 1
  %1570 = add i32 %1567, 0
  %1571 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1570, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1573 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1571, %dx.types.Handle %1572, float %1504, float %1511, float undef, float undef, i32 0, i32 0, i32 undef, float %1532, float %1534, float undef, float %1533, float %1535, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1574 = extractvalue %dx.types.ResRet.f32 %1573, 0
  %1575 = fmul fast float %1574, %1566
  %1576 = fadd fast float %1575, %1565
  %1577 = call float @dx.op.unary.f32(i32 7, float %1576)  ; Saturate(value)
  %1578 = fmul fast float %1504, %1461
  %1579 = call float @dx.op.tertiary.f32(i32 46, float %1462, float %1511, float %1578)  ; FMad(a,b,c)
  %1580 = fadd fast float %1579, %1564
  %1581 = fmul fast float %1504, %1463
  %1582 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1511, float %1581)  ; FMad(a,b,c)
  %1583 = fadd fast float %1582, %1563
  %1584 = fmul fast float %1532, %1461
  %1585 = call float @dx.op.tertiary.f32(i32 46, float %1462, float %1534, float %1584)  ; FMad(a,b,c)
  %1586 = fmul fast float %1532, %1463
  %1587 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1534, float %1586)  ; FMad(a,b,c)
  %1588 = fmul fast float %1533, %1461
  %1589 = call float @dx.op.tertiary.f32(i32 46, float %1462, float %1535, float %1588)  ; FMad(a,b,c)
  %1590 = fmul fast float %1533, %1463
  %1591 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1535, float %1590)  ; FMad(a,b,c)
  %1592 = add i32 %1568, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1592, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1593, %dx.types.Handle %1572, float %1580, float %1583, float undef, float undef, i32 0, i32 0, i32 undef, float %1585, float %1587, float undef, float %1589, float %1591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1596 = and i32 %1496, 1024
  %1597 = icmp ne i32 %1596, 0
  %1598 = fcmp fast ogt float %1595, 0x3FE0101020000000
  %1599 = uitofp i1 %1598 to float
  %1600 = select i1 %1597, float %1599, float %1595
  %1601 = and i32 %1496, 8192
  %1602 = icmp ne i32 %1601, 0
  %1603 = select i1 %1602, float %1562, float 1.000000e+00
  %1604 = fmul fast float %1504, 2.000000e+00
  %1605 = fadd fast float %1604, -1.000000e+00
  %1606 = call float @dx.op.unary.f32(i32 6, float %1605)  ; FAbs(value)
  %1607 = fmul fast float %1606, %1493
  %1608 = fsub fast float %1607, %1493
  %1609 = call float @dx.op.unary.f32(i32 7, float %1608)  ; Saturate(value)
  %1610 = fmul fast float %1511, 2.000000e+00
  %1611 = fadd fast float %1610, -1.000000e+00
  %1612 = call float @dx.op.unary.f32(i32 6, float %1611)  ; FAbs(value)
  %1613 = fmul fast float %1612, %1494
  %1614 = fsub fast float %1613, %1494
  %1615 = call float @dx.op.unary.f32(i32 7, float %1614)  ; Saturate(value)
  %1616 = fmul fast float %1523, %1457
  %1617 = fsub fast float %1616, %1457
  %1618 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1619 = fmul fast float %1577, %1603
  %1620 = fmul fast float %1619, %1574
  %1621 = fmul fast float %1620, %1609
  %1622 = fmul fast float %1621, %1600
  %1623 = fmul fast float %1622, %1615
  %1624 = fmul fast float %1623, %1618
  %1625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1626 = extractvalue %dx.types.CBufRet.f32 %1625, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1625, 0
  %1628 = fsub fast float %1541, %1627
  %1629 = fmul fast float %1628, %1626
  %1630 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1631 = fmul fast float %1624, %1458
  %1632 = fadd fast float %1624, %1458
  %1633 = fmul fast float %1632, %1467
  %1634 = fsub fast float %1633, %1467
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = and i32 %1496, 128
  %1637 = icmp ne i32 %1636, 0
  %1638 = select i1 %1637, float %1635, float %1631
  %1639 = fmul fast float %1638, %1630
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 0
  %1642 = fcmp fast ugt float %1639, %1641
  br i1 %1642, label %1643, label %1546

; <label>:1643                                    ; preds = %1561
  br i1 %1602, label %1546, label %1644

; <label>:1644                                    ; preds = %1643
  %1645 = and i32 %1496, 4
  %1646 = and i32 %1496, 8
  %1647 = add i32 %1453, 0
  %1648 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1647, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1649 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1650 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1648, %dx.types.Handle %1649, float %1580, float %1583, float undef, float undef, i32 0, i32 0, i32 undef, float %1585, float %1587, float undef, float %1589, float %1591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.f32 %1650, 1
  %1653 = extractvalue %dx.types.ResRet.f32 %1650, 2
  %1654 = extractvalue %dx.types.ResRet.f32 %1650, 3
  %1655 = bitcast float %1479 to i32
  %1656 = and i32 %1655, 255
  %1657 = uitofp i32 %1656 to float
  %1658 = lshr i32 %1655, 8
  %1659 = and i32 %1658, 255
  %1660 = uitofp i32 %1659 to float
  %1661 = fmul fast float %1654, %1657
  %1662 = fadd fast float %1661, %1660
  %1663 = fmul fast float %1662, 0x3F70101000000000
  %1664 = add i32 %1454, 0
  %1665 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1664, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1666 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1665, %dx.types.Handle %1649, float %1580, float %1583, float undef, float undef, i32 0, i32 0, i32 undef, float %1585, float %1587, float undef, float %1589, float %1591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1667 = extractvalue %dx.types.ResRet.f32 %1666, 0
  %1668 = extractvalue %dx.types.ResRet.f32 %1666, 1
  %1669 = extractvalue %dx.types.ResRet.f32 %1666, 2
  %1670 = extractvalue %dx.types.ResRet.f32 %1666, 3
  %1671 = bitcast float %1473 to i32
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = lshr i32 %1671, 8
  %1675 = and i32 %1674, 255
  %1676 = uitofp i32 %1675 to float
  %1677 = lshr i32 %1671, 16
  %1678 = and i32 %1677, 255
  %1679 = uitofp i32 %1678 to float
  %1680 = fmul fast float %1679, 0x3F70101000000000
  %1681 = fmul fast float %1667, %1673
  %1682 = fadd fast float %1681, %1676
  %1683 = fmul fast float %1682, 0x3F70101000000000
  %1684 = fadd fast float %1668, -5.000000e-01
  %1685 = fadd fast float %1670, -5.000000e-01
  %1686 = fmul fast float %1684, %1680
  %1687 = fmul fast float %1685, %1680
  %1688 = fadd fast float %1686, 5.000000e-01
  %1689 = fadd fast float %1687, 5.000000e-01
  %1690 = fmul fast float %1651, %1482
  %1691 = fmul fast float %1652, %1483
  %1692 = fmul fast float %1653, %1484
  %1693 = fmul fast float %1688, 2.000000e+00
  %1694 = fadd fast float %1693, -1.000000e+00
  %1695 = fmul fast float %1689, 2.000000e+00
  %1696 = fadd fast float %1695, -1.000000e+00
  %1697 = fadd fast float %1694, %1696
  %1698 = fmul fast float %1697, 5.000000e-01
  %1699 = fsub fast float %1694, %1696
  %1700 = fmul fast float %1699, 5.000000e-01
  %1701 = call float @dx.op.unary.f32(i32 6, float %1698)  ; FAbs(value)
  %1702 = fsub fast float 1.000000e+00, %1701
  %1703 = call float @dx.op.unary.f32(i32 6, float %1700)  ; FAbs(value)
  %1704 = fsub fast float %1702, %1703
  %1705 = call float @dx.op.dot3.f32(i32 55, float %1698, float %1700, float %1704, float %1698, float %1700, float %1704)  ; Dot3(ax,ay,az,bx,by,bz)
  %1706 = call float @dx.op.unary.f32(i32 25, float %1705)  ; Rsqrt(value)
  %1707 = fmul fast float %1698, %1706
  %1708 = fmul fast float %1700, %1706
  %1709 = fmul fast float %1706, %1704
  %1710 = fmul fast float %1709, %1447
  %1711 = fmul fast float %1709, %1448
  %1712 = fmul fast float %1709, %1449
  %1713 = fmul fast float %1707, %1470
  %1714 = fmul fast float %1707, %1471
  %1715 = fmul fast float %1707, %1472
  %1716 = fadd fast float %1713, %1710
  %1717 = fadd fast float %1714, %1711
  %1718 = fadd fast float %1715, %1712
  %1719 = fmul fast float %1708, %1476
  %1720 = fmul fast float %1708, %1477
  %1721 = fmul fast float %1708, %1478
  %1722 = fadd fast float %1716, %1719
  %1723 = fadd fast float %1717, %1720
  %1724 = fadd fast float %1718, %1721
  %1725 = call float @dx.op.dot3.f32(i32 55, float %1722, float %1723, float %1724, float %1722, float %1723, float %1724)  ; Dot3(ax,ay,az,bx,by,bz)
  %1726 = call float @dx.op.unary.f32(i32 25, float %1725)  ; Rsqrt(value)
  %1727 = fmul fast float %1722, %1726
  %1728 = fmul fast float %1723, %1726
  %1729 = fmul fast float %1724, %1726
  %1730 = fcmp fast ogt float %1536, %1542
  %1731 = fsub fast float -0.000000e+00, %1727
  %1732 = fsub fast float -0.000000e+00, %1728
  %1733 = fsub fast float -0.000000e+00, %1729
  %1734 = select i1 %1730, float %1727, float %1731
  %1735 = select i1 %1730, float %1728, float %1732
  %1736 = select i1 %1730, float %1729, float %1733
  %1737 = fmul fast float %1734, %1351
  %1738 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1352, float %1737)  ; FMad(a,b,c)
  %1739 = call float @dx.op.tertiary.f32(i32 46, float %1736, float %1354, float %1738)  ; FMad(a,b,c)
  %1740 = fmul fast float %1734, %1347
  %1741 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1357, float %1740)  ; FMad(a,b,c)
  %1742 = call float @dx.op.tertiary.f32(i32 46, float %1736, float %1358, float %1741)  ; FMad(a,b,c)
  %1743 = icmp ne i32 %1646, 0
  %1744 = select i1 %1743, float 1.000000e+00, float 0.000000e+00
  %1745 = fmul fast float %1639, %1744
  %1746 = and i32 %1496, 1
  %1747 = icmp ne i32 %1746, 0
  %1748 = fadd fast float %1739, %1429
  %1749 = fadd fast float %1742, %1430
  %1750 = select i1 %1747, float %1748, float %1739
  %1751 = select i1 %1747, float %1749, float %1742
  %1752 = icmp ne i32 %1645, 0
  %1753 = select i1 %1752, float 1.000000e+00, float 0.000000e+00
  %1754 = fmul fast float %1639, %1753
  %1755 = fsub fast float %1690, %1435
  %1756 = fsub fast float %1691, %1436
  %1757 = fsub fast float %1692, %1437
  %1758 = fmul fast float %1755, %1754
  %1759 = fmul fast float %1756, %1754
  %1760 = fmul fast float %1757, %1754
  %1761 = fadd fast float %1758, %1435
  %1762 = fadd fast float %1759, %1436
  %1763 = fadd fast float %1760, %1437
  %1764 = fsub fast float %1663, %1434
  %1765 = fmul fast float %1764, %1754
  %1766 = fadd fast float %1765, %1434
  %1767 = fadd fast float %1639, %1433
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1769 = fsub fast float %1683, %1432
  %1770 = fmul fast float %1769, %1745
  %1771 = fadd fast float %1770, %1432
  %1772 = fsub fast float %1669, %1431
  %1773 = fmul fast float %1772, %1745
  %1774 = fadd fast float %1773, %1431
  %1775 = fsub fast float %1750, %1429
  %1776 = fsub fast float %1751, %1430
  %1777 = fmul fast float %1775, %1745
  %1778 = fmul fast float %1776, %1745
  %1779 = fadd fast float %1777, %1429
  %1780 = fadd fast float %1778, %1430
  %1781 = and i32 %1496, 16
  %1782 = icmp eq i32 %1781, 0
  br i1 %1782, label %1805, label %1783

; <label>:1783                                    ; preds = %1644
  %1784 = bitcast float %1490 to i32
  %1785 = add i32 %1487, 0
  %1786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1785, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1786, %dx.types.Handle %1649, float %1580, float %1583, float undef, float undef, i32 0, i32 0, i32 undef, float %1585, float %1587, float undef, float %1589, float %1591, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = and i32 %1784, 65535
  %1792 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1791)  ; LegacyF16ToF32(value)
  %1793 = fmul fast float %1788, %1482
  %1794 = fmul fast float %1789, %1483
  %1795 = fmul fast float %1790, %1484
  %1796 = and i32 %1496, 16384
  %1797 = icmp ne i32 %1796, 0
  %1798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1799 = extractvalue %dx.types.CBufRet.f32 %1798, 0
  %1800 = select i1 %1797, float %1799, float 1.000000e+00
  %1801 = fmul fast float %1800, %1792
  %1802 = fmul fast float %1793, %1801
  %1803 = fmul fast float %1794, %1801
  %1804 = fmul fast float %1795, %1801
  br label %1805

; <label>:1805                                    ; preds = %1783, %1644
  %1806 = phi float [ %1802, %1783 ], [ 0.000000e+00, %1644 ]
  %1807 = phi float [ %1803, %1783 ], [ 0.000000e+00, %1644 ]
  %1808 = phi float [ %1804, %1783 ], [ 0.000000e+00, %1644 ]
  %1809 = fsub fast float %1806, %1426
  %1810 = fsub fast float %1807, %1427
  %1811 = fsub fast float %1808, %1428
  %1812 = fmul fast float %1809, %1639
  %1813 = fmul fast float %1810, %1639
  %1814 = fmul fast float %1811, %1639
  %1815 = fadd fast float %1812, %1426
  %1816 = fadd fast float %1813, %1427
  %1817 = fadd fast float %1814, %1428
  br label %1546

; <label>:1818                                    ; preds = %1546
  br label %1819

; <label>:1819                                    ; preds = %1818, %1305
  %1820 = phi float [ 0.000000e+00, %1305 ], [ %1547, %1818 ]
  %1821 = phi float [ 0.000000e+00, %1305 ], [ %1548, %1818 ]
  %1822 = phi float [ 0.000000e+00, %1305 ], [ %1549, %1818 ]
  %1823 = phi float [ %1307, %1305 ], [ %1550, %1818 ]
  %1824 = phi float [ %1308, %1305 ], [ %1551, %1818 ]
  %1825 = phi float [ %1368, %1305 ], [ %1552, %1818 ]
  %1826 = phi float [ %1371, %1305 ], [ %1553, %1818 ]
  %1827 = phi float [ 0.000000e+00, %1305 ], [ %1554, %1818 ]
  %1828 = phi float [ %1366, %1305 ], [ %1555, %1818 ]
  %1829 = phi float [ %1360, %1305 ], [ %1556, %1818 ]
  %1830 = phi float [ %1362, %1305 ], [ %1557, %1818 ]
  %1831 = phi float [ %1364, %1305 ], [ %1558, %1818 ]
  %1832 = phi i32 [ 0, %1305 ], [ %1559, %1818 ]
  %1833 = uitofp i32 %1832 to float
  %1834 = fptoui float %1833 to i32
  %1835 = shl i32 %1834, 16
  %1836 = and i32 %1835, 16711680
  %1837 = call float @dx.op.dot2.f32(i32 54, float %1823, float %1824, float %1823, float %1824)  ; Dot2(ax,ay,bx,by)
  %1838 = fmul fast float %1837, 0x3FE3333340000000
  %1839 = fsub fast float 1.000000e+00, %1838
  %1840 = call float @dx.op.dot3.f32(i32 55, float %1823, float %1824, float %1839, float %1823, float %1824, float %1839)  ; Dot3(ax,ay,az,bx,by,bz)
  %1841 = call float @dx.op.unary.f32(i32 25, float %1840)  ; Rsqrt(value)
  %1842 = fmul fast float %1841, %1823
  %1843 = fmul fast float %1841, %1824
  %1844 = fmul fast float %1839, %1841
  %1845 = fmul fast float %1844, %117
  %1846 = fmul fast float %1844, %118
  %1847 = fmul fast float %1844, %119
  %1848 = fmul fast float %1842, %1351
  %1849 = fmul fast float %1842, %1352
  %1850 = fmul fast float %1842, %1354
  %1851 = fadd fast float %1845, %1848
  %1852 = fadd fast float %1846, %1849
  %1853 = fadd fast float %1847, %1850
  %1854 = fmul fast float %1843, %1347
  %1855 = fmul fast float %1843, %1357
  %1856 = fmul fast float %1843, %1358
  %1857 = fadd fast float %1851, %1854
  %1858 = fadd fast float %1852, %1855
  %1859 = fadd fast float %1853, %1856
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1857, float %1858, float %1859, float %1857, float %1858, float %1859)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = call float @dx.op.unary.f32(i32 25, float %1860)  ; Rsqrt(value)
  %1862 = fmul fast float %1857, %1861
  %1863 = fmul fast float %1858, %1861
  %1864 = fmul fast float %1859, %1861
  %1865 = fadd fast float %1828, 0xBFB99999A0000000
  %1866 = call float @dx.op.unary.f32(i32 7, float %1865)  ; Saturate(value)
  %1867 = fmul fast float %1866, 0x3FF1C71C80000000
  %1868 = call float @dx.op.binary.f32(i32 36, float %1828, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1869 = fsub fast float 1.000000e+00, %1867
  %1870 = call float @dx.op.unary.f32(i32 7, float %1869)  ; Saturate(value)
  %1871 = fmul fast float %1870, %1829
  %1872 = fmul fast float %1870, %1830
  %1873 = fmul fast float %1870, %1831
  %1874 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1875 = call float @dx.op.unary.f32(i32 7, float %1872)  ; Saturate(value)
  %1876 = call float @dx.op.unary.f32(i32 7, float %1873)  ; Saturate(value)
  %1877 = fmul fast float %1867, %1829
  %1878 = fmul fast float %1867, %1830
  %1879 = fmul fast float %1867, %1831
  %1880 = fadd fast float %1877, %1868
  %1881 = fadd fast float %1878, %1868
  %1882 = fadd fast float %1879, %1868
  %1883 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1884 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1885 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1886 = fmul fast float %1884, 0x401CF23780000000
  %1887 = fadd fast float %1886, 0x3FF32641C0000000
  %1888 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %1889 = call float @dx.op.unary.f32(i32 25, float %1888)  ; Rsqrt(value)
  %1890 = fmul fast float %1889, %153
  %1891 = fmul fast float %1889, %154
  %1892 = fmul fast float %1889, %155
  %1893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1894 = extractvalue %dx.types.CBufRet.f32 %1893, 0
  %1895 = fdiv fast float 1.000000e+00, %1887
  %1896 = select i1 %115, float %1895, float %1887
  %1897 = fadd fast float %1896, -1.000000e+00
  %1898 = fadd fast float %1896, 1.000000e+00
  %1899 = fdiv fast float %1897, %1898
  %1900 = fmul fast float %1899, %1899
  %1901 = call float @dx.op.dot3.f32(i32 55, float %1890, float %1891, float %1892, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %1902 = select i1 %115, float 0.000000e+00, float %1894
  %1903 = fadd fast float %1901, %1902
  %1904 = call float @dx.op.binary.f32(i32 35, float %1903, float -1.000000e+00)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 36, float %1904, float 1.000000e+00)  ; FMin(a,b)
  %1906 = fmul fast float %1896, %1896
  %1907 = fmul fast float %1905, %1905
  %1908 = fsub fast float 1.000000e+00, %1907
  %1909 = fmul fast float %1906, %1908
  %1910 = fsub fast float 1.000000e+00, %1909
  %1911 = fcmp fast olt float %1896, 1.000000e+00
  %1912 = select i1 %1911, float %1907, float %1910
  %1913 = fcmp fast ogt float %1910, 0.000000e+00
  %1914 = fsub fast float 1.000000e+00, %1900
  %1915 = call float @dx.op.unary.f32(i32 24, float %1912)  ; Sqrt(value)
  %1916 = fsub fast float 1.000000e+00, %1915
  %1917 = call float @dx.op.unary.f32(i32 23, float %1916)  ; Log(value)
  %1918 = fmul fast float %1917, 5.000000e+00
  %1919 = call float @dx.op.unary.f32(i32 21, float %1918)  ; Exp(value)
  %1920 = fmul fast float %1919, %1914
  %1921 = fadd fast float %1920, %1900
  %1922 = select i1 %1913, float %1921, float 1.000000e+00
  %1923 = select i1 %115, float %1922, float 0.000000e+00
  %1924 = lshr i32 %1306, 24
  %1925 = uitofp i32 %1924 to float
  %1926 = fmul fast float %1925, 0x3F70101020000000
  %1927 = call float @dx.op.unary.f32(i32 7, float %1926)  ; Saturate(value)
  %1928 = fmul fast float %153, %153
  %1929 = fmul fast float %154, %154
  %1930 = fadd fast float %1929, %1928
  %1931 = fmul fast float %155, %155
  %1932 = fadd fast float %1930, %1931
  %1933 = call float @dx.op.unary.f32(i32 24, float %1932)  ; Sqrt(value)
  %1934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1935 = extractvalue %dx.types.CBufRet.f32 %1934, 0
  %1936 = fmul fast float %1935, %1933
  %1937 = extractvalue %dx.types.CBufRet.f32 %1934, 1
  %1938 = fadd fast float %1936, %1937
  %1939 = call float @dx.op.unary.f32(i32 7, float %1938)  ; Saturate(value)
  %1940 = fmul fast float %1927, 2.550000e+02
  %1941 = fmul fast float %1940, %1939
  %1942 = fptoui float %1941 to i32
  %1943 = fsub fast float 1.000000e+00, %1883
  %1944 = fsub fast float 1.000000e+00, %1884
  %1945 = fsub fast float 1.000000e+00, %1885
  %1946 = fmul fast float %1923, %1943
  %1947 = fmul fast float %1923, %1944
  %1948 = fmul fast float %1923, %1945
  %1949 = fadd fast float %1946, %1883
  %1950 = fadd fast float %1947, %1884
  %1951 = fadd fast float %1948, %1885
  %1952 = fptoui float %98 to i32
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = fmul fast float %1954, 5.000000e-01
  %1956 = fptoui float %1955 to i32
  %1957 = icmp eq i32 %1952, %1956
  %1958 = fptoui float %99 to i32
  %1959 = extractvalue %dx.types.CBufRet.f32 %1953, 1
  %1960 = fmul fast float %1959, 5.000000e-01
  %1961 = fptoui float %1960 to i32
  %1962 = icmp eq i32 %1958, %1961
  %1963 = and i1 %1957, %1962
  br i1 %1963, label %1964, label %1988

; <label>:1964                                    ; preds = %1819
  %1965 = call float @dx.op.binary.f32(i32 35, float %1950, float %1951)  ; FMax(a,b)
  %1966 = call float @dx.op.binary.f32(i32 35, float %1949, float %1965)  ; FMax(a,b)
  %1967 = fsub fast float 1.000000e+00, %1966
  %1968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1969 = extractvalue %dx.types.CBufRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.CBufRet.f32 %1968, 1
  %1971 = extractvalue %dx.types.CBufRet.f32 %1968, 2
  %1972 = fadd fast float %1969, %153
  %1973 = fadd fast float %1970, %154
  %1974 = fadd fast float %1971, %155
  %1975 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %1952, i32 %1958, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = fcmp fast ogt float %1976, -1.000000e+00
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1980 = select i1 %1977, float %1979, float 1.000000e+00
  %1981 = fadd fast float %1976, 1.000000e+00
  %1982 = fmul fast float %1980, %1981
  %1983 = call float @dx.op.unary.f32(i32 6, float %1982)  ; FAbs(value)
  %1984 = call float @dx.op.unary.f32(i32 83, float %79)  ; DerivCoarseX(value)
  %1985 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %1986 = call float @dx.op.unary.f32(i32 84, float %79)  ; DerivCoarseY(value)
  %1987 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1972, float %1973, float %1974, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %98, float %99, float %86, float %87, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %345, float %346, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %308, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %310, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %323, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %325, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1983, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1923, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1949, float %1950, float %1951, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1967, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %197, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %77, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %1316, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %1984, float %1985, float %1986, float %1987, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %1988

; <label>:1988                                    ; preds = %1964, %1819
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 3
  %1991 = fmul fast float %1990, %1826
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1994 = fsub fast float 1.000000e+00, %1827
  %1995 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1994)  ; FMin(a,b)
  %1996 = fmul fast float %79, 6.553500e+04
  %1997 = call float @dx.op.unary.f32(i32 26, float %1996)  ; Round_ne(value)
  %1998 = fptosi float %1997 to i32
  %1999 = call i32 @dx.op.binary.i32(i32 37, i32 %1998, i32 0)  ; IMax(a,b)
  %2000 = call i32 @dx.op.binary.i32(i32 38, i32 %1999, i32 65535)  ; IMin(a,b)
  %2001 = fmul fast float %80, 6.553500e+04
  %2002 = call float @dx.op.unary.f32(i32 26, float %2001)  ; Round_ne(value)
  %2003 = fptosi float %2002 to i32
  %2004 = call i32 @dx.op.binary.i32(i32 37, i32 %2003, i32 0)  ; IMax(a,b)
  %2005 = call i32 @dx.op.binary.i32(i32 38, i32 %2004, i32 65535)  ; IMin(a,b)
  %2006 = shl i32 %2005, 16
  %2007 = or i32 %2006, %2000
  %2008 = call float @dx.op.dot3.f32(i32 55, float %1883, float %1884, float %1885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2009 = fsub fast float 1.000000e+00, %2008
  %2010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %56, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2011 = extractvalue %dx.types.ResRet.i32 %2010, 0
  %2012 = and i32 %2011, 255
  %2013 = uitofp i32 %2012 to float
  %2014 = lshr i32 %2011, 8
  %2015 = and i32 %2014, 255
  %2016 = uitofp i32 %2015 to float
  %2017 = fmul fast float %2016, %2009
  %2018 = fadd fast float %2017, %2013
  %2019 = fmul fast float %2018, 0x3F70101020000000
  %2020 = call float @dx.op.unary.f32(i32 7, float %2019)  ; Saturate(value)
  %2021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2022 = extractvalue %dx.types.CBufRet.f32 %2021, 0
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.i32 %2024, 3
  %2026 = and i32 %2025, 3
  %2027 = icmp ne i32 %2026, 0
  %2028 = and i32 %2025, 4
  %2029 = icmp ne i32 %2028, 0
  %2030 = and i1 %2027, %2029
  br i1 %2030, label %2031, label %2042

; <label>:2031                                    ; preds = %1988
  %2032 = extractvalue %dx.types.CBufRet.f32 %2023, 3
  %2033 = fmul fast float %2032, %99
  %2034 = extractvalue %dx.types.CBufRet.f32 %2023, 2
  %2035 = fmul fast float %2034, %98
  %2036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %2035, float %2033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = fsub fast float 1.000000e+00, %2037
  %2039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2040 = extractvalue %dx.types.CBufRet.f32 %2039, 0
  %2041 = fcmp fast olt float %2038, %2040
  br label %2045

; <label>:2042                                    ; preds = %1988
  %2043 = icmp eq i32 %2028, 0
  %2044 = and i1 %2027, %2043
  br label %2045

; <label>:2045                                    ; preds = %2042, %2031
  %2046 = phi i1 [ %2041, %2031 ], [ %2044, %2042 ]
  %2047 = fsub fast float -0.000000e+00, %155
  %2048 = fsub fast float -0.000000e+00, %1890
  %2049 = fsub fast float -0.000000e+00, %1891
  %2050 = fsub fast float -0.000000e+00, %1892
  %2051 = select i1 %2046, float 0.000000e+00, float %1885
  %2052 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %2048, float %2049, float %2050)  ; Dot3(ax,ay,az,bx,by,bz)
  %2053 = call float @dx.op.unary.f32(i32 7, float %2052)  ; Saturate(value)
  %2054 = fmul fast float %1901, 2.000000e+00
  %2055 = fmul fast float %2054, %1862
  %2056 = fmul fast float %2054, %1863
  %2057 = fmul fast float %2054, %1864
  %2058 = fsub fast float %1890, %2055
  %2059 = fsub fast float %1891, %2056
  %2060 = fsub fast float %1892, %2057
  %2061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2062 = extractvalue %dx.types.CBufRet.f32 %2061, 0
  %2063 = bitcast float %2062 to i32
  %2064 = lshr i32 %2063, 8
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fptoui float %2066 to i32
  %2068 = and i32 %2067, 4
  %2069 = icmp ne i32 %2068, 0
  %2070 = select i1 %2069, float %1993, float 1.000000e+00
  %2071 = call float @dx.op.binary.f32(i32 36, float %2070, float 1.000000e+00)  ; FMin(a,b)
  %2072 = fsub fast float 1.000000e+00, %2071
  %2073 = bitcast float %2072 to i32
  %2074 = ashr i32 %2073, 1
  %2075 = add nsw i32 %2074, 532487669
  %2076 = bitcast i32 %2075 to float
  %2077 = fsub fast float 1.000000e+00, %1992
  %2078 = call float @dx.op.binary.f32(i32 35, float %2077, float 0x3F847AE140000000)  ; FMax(a,b)
  %2079 = fmul fast float %2078, %2078
  %2080 = fmul fast float %2079, %2079
  %2081 = call float @dx.op.unary.f32(i32 7, float %2053)  ; Saturate(value)
  %2082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %61, float %2076, float %2080, float %2081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  %2084 = and i32 %2067, 1
  %2085 = icmp ne i32 %2084, 0
  %2086 = fsub fast float 1.000000e+00, %2070
  %2087 = bitcast float %2086 to i32
  %2088 = sub nsw i32 2129859010, %2087
  %2089 = bitcast i32 %2088 to float
  %2090 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.i32 %2090, 0
  %2092 = icmp eq i32 %2091, 1
  %2093 = select i1 %2092, float 0.000000e+00, float 1.000000e+00
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = fcmp fast ogt float %2095, 0.000000e+00
  %2097 = fcmp fast ogt float %2093, 0.000000e+00
  %2098 = and i1 %2096, %2097
  br i1 %2098, label %2099, label %2283, !dx.controlflow.hints !120

; <label>:2099                                    ; preds = %2045
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2102 = extractvalue %dx.types.CBufRet.f32 %2100, 1
  %2103 = extractvalue %dx.types.CBufRet.f32 %2100, 2
  %2104 = fadd fast float %2101, %153
  %2105 = fadd fast float %2102, %154
  %2106 = fadd fast float %2103, %155
  %2107 = fmul fast float %1862, 3.200000e+01
  %2108 = fmul fast float %1863, 3.200000e+01
  %2109 = fadd fast float %2104, %2107
  %2110 = fadd fast float %2105, %2108
  %2111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2112 = extractvalue %dx.types.CBufRet.f32 %2111, 0
  %2113 = extractvalue %dx.types.CBufRet.f32 %2111, 1
  %2114 = fsub fast float %2109, %2112
  %2115 = fsub fast float %2110, %2113
  %2116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2117 = extractvalue %dx.types.CBufRet.f32 %2116, 0
  %2118 = extractvalue %dx.types.CBufRet.f32 %2116, 1
  %2119 = fmul fast float %2114, %2117
  %2120 = fmul fast float %2115, %2118
  %2121 = fmul fast float %153, %153
  %2122 = fmul fast float %154, %154
  %2123 = fadd fast float %2121, %2122
  %2124 = call float @dx.op.unary.f32(i32 24, float %2123)  ; Sqrt(value)
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2128 = fsub fast float %2124, %2126
  %2129 = fdiv fast float %2128, %2127
  %2130 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2131 = fmul fast float %2130, 2.000000e+00
  %2132 = fsub fast float 3.000000e+00, %2131
  %2133 = fmul fast float %2130, %2130
  %2134 = fmul fast float %2133, %2132
  %2135 = fcmp fast oge float %2119, 0.000000e+00
  %2136 = fcmp fast ole float %2119, 1.000000e+00
  %2137 = and i1 %2136, %2135
  %2138 = fcmp fast oge float %2120, 0.000000e+00
  %2139 = and i1 %2138, %2137
  %2140 = fcmp fast ole float %2120, 1.000000e+00
  %2141 = and i1 %2140, %2139
  %2142 = fcmp fast ogt float %2134, 0.000000e+00
  %2143 = and i1 %2142, %2141
  br i1 %2143, label %2144, label %2267, !dx.controlflow.hints !121

; <label>:2144                                    ; preds = %2099
  %2145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2146 = extractvalue %dx.types.CBufRet.f32 %2145, 2
  %2147 = extractvalue %dx.types.CBufRet.f32 %2145, 3
  %2148 = fmul fast float %2146, %2119
  %2149 = fmul fast float %2147, %2120
  %2150 = call float @dx.op.unary.f32(i32 27, float %2148)  ; Round_ni(value)
  %2151 = call float @dx.op.unary.f32(i32 27, float %2149)  ; Round_ni(value)
  %2152 = fptosi float %2150 to i32
  %2153 = fptosi float %2151 to i32
  %2154 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %2152, i32 %2153, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = lshr i32 %2155, 16
  %2157 = icmp eq i32 %2156, 65535
  br i1 %2157, label %2267, label %2158

; <label>:2158                                    ; preds = %2144
  %2159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2160 = extractvalue %dx.types.CBufRet.f32 %2159, 0
  %2161 = fmul fast float %2160, %2119
  %2162 = extractvalue %dx.types.CBufRet.f32 %2159, 1
  %2163 = fadd fast float %2161, %2162
  %2164 = extractvalue %dx.types.CBufRet.f32 %2159, 2
  %2165 = fmul fast float %2164, %2120
  %2166 = extractvalue %dx.types.CBufRet.f32 %2159, 3
  %2167 = fadd fast float %2165, %2166
  %2168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2163, float %2167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 1
  %2173 = extractvalue %dx.types.CBufRet.f32 %2171, 0
  %2174 = fsub fast float %2172, %2173
  %2175 = fmul fast float %2174, %2169
  %2176 = fadd fast float %2175, %2173
  %2177 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2178 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2179 = fsub fast float %2177, %2178
  %2180 = fmul fast float %2179, %2170
  %2181 = fadd fast float %2180, %2178
  %2182 = fsub fast float %2106, %2176
  %2183 = fsub fast float %2181, %2176
  %2184 = fdiv fast float %2182, %2183
  %2185 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2186 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2145, 0
  %2188 = extractvalue %dx.types.CBufRet.f32 %2145, 1
  %2189 = fmul fast float %2187, %2119
  %2190 = fmul fast float %2188, %2120
  %2191 = fmul fast float %2189, 1.250000e-01
  %2192 = fmul fast float %2190, 1.250000e-01
  %2193 = call float @dx.op.unary.f32(i32 27, float %2191)  ; Round_ni(value)
  %2194 = call float @dx.op.unary.f32(i32 27, float %2192)  ; Round_ni(value)
  %2195 = fmul fast float %2193, 8.000000e+00
  %2196 = fmul fast float %2194, 8.000000e+00
  %2197 = fsub fast float %2189, %2195
  %2198 = fsub fast float %2190, %2196
  %2199 = fadd fast float %2197, 5.000000e-01
  %2200 = fadd fast float %2198, 5.000000e-01
  %2201 = and i32 %2156, 255
  %2202 = lshr i32 %2155, 24
  %2203 = mul nuw nsw i32 %2201, 9
  %2204 = uitofp i32 %2203 to float
  %2205 = mul nuw nsw i32 %2202, 9
  %2206 = uitofp i32 %2205 to float
  %2207 = fadd fast float %2199, %2204
  %2208 = fadd fast float %2200, %2206
  %2209 = fdiv fast float %2207, %2095
  %2210 = fdiv fast float %2208, %2186
  %2211 = fmul fast float %2185, 4.375000e-01
  %2212 = fadd fast float %2211, 3.125000e-02
  %2213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2209, float %2210, float %2212, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  %2215 = extractvalue %dx.types.ResRet.f32 %2213, 1
  %2216 = extractvalue %dx.types.ResRet.f32 %2213, 2
  %2217 = fadd fast float %2211, 5.312500e-01
  %2218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2209, float %2210, float %2217, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = extractvalue %dx.types.ResRet.f32 %2218, 1
  %2221 = extractvalue %dx.types.ResRet.f32 %2218, 2
  %2222 = fmul fast float %2219, 2.000000e+00
  %2223 = fmul fast float %2220, 2.000000e+00
  %2224 = fmul fast float %2221, 2.000000e+00
  %2225 = fadd fast float %2222, -1.000000e+00
  %2226 = fadd fast float %2223, -1.000000e+00
  %2227 = fadd fast float %2224, -1.000000e+00
  %2228 = fmul fast float %2225, %2225
  %2229 = fmul fast float %2226, %2226
  %2230 = fadd fast float %2228, %2229
  %2231 = fmul fast float %2227, %2227
  %2232 = fadd fast float %2230, %2231
  %2233 = call float @dx.op.unary.f32(i32 24, float %2232)  ; Sqrt(value)
  %2234 = fcmp fast ogt float %2233, 0.000000e+00
  br i1 %2234, label %2235, label %2239

; <label>:2235                                    ; preds = %2158
  %2236 = fdiv fast float %2225, %2233
  %2237 = fdiv fast float %2226, %2233
  %2238 = fdiv fast float %2227, %2233
  br label %2239

; <label>:2239                                    ; preds = %2235, %2158
  %2240 = phi float [ %2236, %2235 ], [ 0.000000e+00, %2158 ]
  %2241 = phi float [ %2237, %2235 ], [ 0.000000e+00, %2158 ]
  %2242 = phi float [ %2238, %2235 ], [ 0.000000e+00, %2158 ]
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2241, float %2242, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2243)  ; FMax(a,b)
  %2245 = fmul fast float %2244, 0x400C5BF8A0000000
  %2246 = fmul fast float %2214, %2134
  %2247 = fmul fast float %2246, %2245
  %2248 = fmul fast float %2215, %2134
  %2249 = fmul fast float %2248, %2245
  %2250 = fmul fast float %2216, %2134
  %2251 = fmul fast float %2250, %2245
  %2252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.f32 %2252, 3
  %2254 = fmul fast float %2247, %2253
  %2255 = fmul fast float %2249, %2253
  %2256 = fmul fast float %2251, %2253
  %2257 = fcmp fast ogt float %2106, %2181
  br i1 %2257, label %2258, label %2267

; <label>:2258                                    ; preds = %2239
  %2259 = fmul fast float %2183, 0x3FC24924A0000000
  %2260 = fsub fast float %2106, %2181
  %2261 = fdiv fast float %2260, %2259
  %2262 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2263 = fsub fast float 1.000000e+00, %2262
  %2264 = fmul fast float %2263, %2254
  %2265 = fmul fast float %2263, %2255
  %2266 = fmul fast float %2263, %2256
  br label %2267

; <label>:2267                                    ; preds = %2258, %2239, %2144, %2099
  %2268 = phi float [ %2266, %2258 ], [ %2256, %2239 ], [ 0.000000e+00, %2144 ], [ 0.000000e+00, %2099 ]
  %2269 = phi float [ %2265, %2258 ], [ %2255, %2239 ], [ 0.000000e+00, %2144 ], [ 0.000000e+00, %2099 ]
  %2270 = phi float [ %2264, %2258 ], [ %2254, %2239 ], [ 0.000000e+00, %2144 ], [ 0.000000e+00, %2099 ]
  %2271 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2270)  ; FMax(a,b)
  %2272 = fmul fast float %2271, 0x3FD20DD760000000
  %2273 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2269)  ; FMax(a,b)
  %2274 = fmul fast float %2273, 0x3FD20DD760000000
  %2275 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2268)  ; FMax(a,b)
  %2276 = fmul fast float %2275, 0x3FD20DD760000000
  %2277 = call float @dx.op.binary.f32(i32 35, float %2272, float 0.000000e+00)  ; FMax(a,b)
  %2278 = call float @dx.op.binary.f32(i32 35, float %2274, float 0.000000e+00)  ; FMax(a,b)
  %2279 = call float @dx.op.binary.f32(i32 35, float %2276, float 0.000000e+00)  ; FMax(a,b)
  %2280 = fmul fast float %2277, %2093
  %2281 = fmul fast float %2278, %2093
  %2282 = fmul fast float %2279, %2093
  br label %2283

; <label>:2283                                    ; preds = %2267, %2045
  %2284 = phi float [ %2280, %2267 ], [ 0.000000e+00, %2045 ]
  %2285 = phi float [ %2281, %2267 ], [ 0.000000e+00, %2045 ]
  %2286 = phi float [ %2282, %2267 ], [ 0.000000e+00, %2045 ]
  br i1 %2092, label %2287, label %3079, !dx.controlflow.hints !122

; <label>:2287                                    ; preds = %2283
  %2288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2289 = extractvalue %dx.types.CBufRet.f32 %2288, 0
  %2290 = extractvalue %dx.types.CBufRet.f32 %2288, 1
  %2291 = extractvalue %dx.types.CBufRet.f32 %2288, 2
  %2292 = fadd fast float %2289, %153
  %2293 = fadd fast float %2290, %154
  %2294 = fadd fast float %2291, %155
  %2295 = fmul fast float %1862, 3.200000e+01
  %2296 = fmul fast float %1863, 3.200000e+01
  %2297 = fadd fast float %2292, %2295
  %2298 = fadd fast float %2293, %2296
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2302 = fsub fast float %2297, %2300
  %2303 = fsub fast float %2298, %2301
  %2304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2305 = extractvalue %dx.types.CBufRet.f32 %2304, 0
  %2306 = extractvalue %dx.types.CBufRet.f32 %2304, 1
  %2307 = fmul fast float %2302, %2305
  %2308 = fmul fast float %2303, %2306
  %2309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2310 = extractvalue %dx.types.CBufRet.f32 %2309, 0
  %2311 = fmul fast float %2307, %2310
  %2312 = extractvalue %dx.types.CBufRet.f32 %2309, 1
  %2313 = fadd fast float %2311, %2312
  %2314 = extractvalue %dx.types.CBufRet.f32 %2309, 2
  %2315 = fmul fast float %2314, %2308
  %2316 = extractvalue %dx.types.CBufRet.f32 %2309, 3
  %2317 = fadd fast float %2315, %2316
  %2318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %61, float %2313, float %2317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2322 = extractvalue %dx.types.CBufRet.f32 %2321, 1
  %2323 = extractvalue %dx.types.CBufRet.f32 %2321, 0
  %2324 = fsub fast float %2322, %2323
  %2325 = fmul fast float %2324, %2319
  %2326 = fadd fast float %2325, %2323
  %2327 = extractvalue %dx.types.CBufRet.f32 %2321, 3
  %2328 = extractvalue %dx.types.CBufRet.f32 %2321, 2
  %2329 = fsub fast float %2327, %2328
  %2330 = fmul fast float %2329, %2320
  %2331 = fadd fast float %2330, %2328
  %2332 = fsub fast float %2294, %2326
  %2333 = fsub fast float %2331, %2326
  %2334 = fdiv fast float %2332, %2333
  %2335 = call float @dx.op.unary.f32(i32 7, float %2334)  ; Saturate(value)
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 0
  %2338 = fmul fast float %2337, %2335
  %2339 = extractvalue %dx.types.CBufRet.f32 %2336, 1
  %2340 = fadd fast float %2338, %2339
  %2341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %61, float %2313, float %2317, float %2340, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2342 = extractvalue %dx.types.ResRet.f32 %2341, 0
  %2343 = extractvalue %dx.types.ResRet.f32 %2341, 1
  %2344 = extractvalue %dx.types.ResRet.f32 %2341, 2
  %2345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2346 = extractvalue %dx.types.CBufRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.CBufRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.CBufRet.f32 %2345, 2
  %2349 = fmul fast float %2346, %2342
  %2350 = fmul fast float %2347, %2343
  %2351 = fmul fast float %2348, %2344
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = extractvalue %dx.types.CBufRet.f32 %2352, 1
  %2355 = extractvalue %dx.types.CBufRet.f32 %2352, 2
  %2356 = fadd fast float %2349, %2353
  %2357 = fadd fast float %2350, %2354
  %2358 = fadd fast float %2351, %2355
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2307
  %2362 = extractvalue %dx.types.CBufRet.f32 %2359, 1
  %2363 = fadd fast float %2361, %2362
  %2364 = extractvalue %dx.types.CBufRet.f32 %2359, 2
  %2365 = fmul fast float %2364, %2308
  %2366 = extractvalue %dx.types.CBufRet.f32 %2359, 3
  %2367 = fadd fast float %2365, %2366
  %2368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2369 = extractvalue %dx.types.CBufRet.f32 %2368, 0
  %2370 = extractvalue %dx.types.CBufRet.f32 %2368, 1
  %2371 = extractvalue %dx.types.CBufRet.f32 %2368, 2
  %2372 = extractvalue %dx.types.CBufRet.f32 %2368, 3
  %2373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2374 = extractvalue %dx.types.CBufRet.f32 %2373, 0
  %2375 = extractvalue %dx.types.CBufRet.f32 %2373, 1
  %2376 = extractvalue %dx.types.CBufRet.f32 %2373, 2
  %2377 = extractvalue %dx.types.CBufRet.f32 %2373, 3
  %2378 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2363, float %2367, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2379 = extractvalue %dx.types.ResRet.f32 %2378, 0
  %2380 = extractvalue %dx.types.ResRet.f32 %2378, 1
  %2381 = extractvalue %dx.types.ResRet.f32 %2378, 2
  %2382 = extractvalue %dx.types.ResRet.f32 %2378, 3
  %2383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2363, float %2367, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = extractvalue %dx.types.ResRet.f32 %2383, 3
  %2388 = fmul fast float %2379, %2356
  %2389 = fmul fast float %2384, %2356
  %2390 = fmul fast float %2386, %2356
  %2391 = fmul fast float %2382, %2356
  %2392 = fadd fast float %2388, %2369
  %2393 = fadd fast float %2389, %2370
  %2394 = fadd fast float %2390, %2371
  %2395 = fadd fast float %2391, %2372
  %2396 = fmul fast float %2380, %2356
  %2397 = fmul fast float %2385, %2356
  %2398 = fadd fast float %2396, %2374
  %2399 = fadd fast float %2397, %2375
  %2400 = fmul fast float %2381, %2356
  %2401 = fmul fast float %2387, %2356
  %2402 = fadd fast float %2400, %2376
  %2403 = fadd fast float %2401, %2377
  %2404 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2363, float %2367, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = extractvalue %dx.types.ResRet.f32 %2404, 3
  %2409 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2363, float %2367, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2410 = extractvalue %dx.types.ResRet.f32 %2409, 0
  %2411 = extractvalue %dx.types.ResRet.f32 %2409, 1
  %2412 = extractvalue %dx.types.ResRet.f32 %2409, 2
  %2413 = extractvalue %dx.types.ResRet.f32 %2409, 3
  %2414 = fmul fast float %2405, %2357
  %2415 = fmul fast float %2410, %2357
  %2416 = fmul fast float %2412, %2357
  %2417 = fmul fast float %2408, %2357
  %2418 = fadd fast float %2392, %2414
  %2419 = fadd fast float %2393, %2415
  %2420 = fadd fast float %2394, %2416
  %2421 = fadd fast float %2395, %2417
  %2422 = fmul fast float %2406, %2357
  %2423 = fmul fast float %2411, %2357
  %2424 = fadd fast float %2398, %2422
  %2425 = fadd fast float %2399, %2423
  %2426 = fmul fast float %2407, %2357
  %2427 = fmul fast float %2413, %2357
  %2428 = fadd fast float %2402, %2426
  %2429 = fadd fast float %2403, %2427
  %2430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2363, float %2367, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2431 = extractvalue %dx.types.ResRet.f32 %2430, 0
  %2432 = extractvalue %dx.types.ResRet.f32 %2430, 1
  %2433 = extractvalue %dx.types.ResRet.f32 %2430, 2
  %2434 = extractvalue %dx.types.ResRet.f32 %2430, 3
  %2435 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %61, float %2363, float %2367, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2436 = extractvalue %dx.types.ResRet.f32 %2435, 0
  %2437 = extractvalue %dx.types.ResRet.f32 %2435, 1
  %2438 = extractvalue %dx.types.ResRet.f32 %2435, 2
  %2439 = extractvalue %dx.types.ResRet.f32 %2435, 3
  %2440 = fmul fast float %2431, %2358
  %2441 = fmul fast float %2436, %2358
  %2442 = fmul fast float %2438, %2358
  %2443 = fmul fast float %2434, %2358
  %2444 = fadd fast float %2418, %2440
  %2445 = fadd fast float %2419, %2441
  %2446 = fadd fast float %2420, %2442
  %2447 = fadd fast float %2421, %2443
  %2448 = fmul fast float %2432, %2358
  %2449 = fmul fast float %2437, %2358
  %2450 = fadd fast float %2424, %2448
  %2451 = fadd fast float %2425, %2449
  %2452 = fmul fast float %2433, %2358
  %2453 = fmul fast float %2439, %2358
  %2454 = fadd fast float %2428, %2452
  %2455 = fadd fast float %2429, %2453
  %2456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2457 = extractvalue %dx.types.CBufRet.f32 %2456, 0
  %2458 = fsub fast float %2292, %2457
  %2459 = fsub fast float %2300, %2292
  %2460 = call float @dx.op.binary.f32(i32 35, float %2459, float %2458)  ; FMax(a,b)
  %2461 = extractvalue %dx.types.CBufRet.f32 %2456, 1
  %2462 = fsub fast float %2293, %2461
  %2463 = fsub fast float %2301, %2293
  %2464 = call float @dx.op.binary.f32(i32 35, float %2463, float %2462)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 35, float %2460, float %2464)  ; FMax(a,b)
  %2466 = extractvalue %dx.types.CBufRet.f32 %2304, 3
  %2467 = fmul fast float %2466, %2465
  %2468 = call float @dx.op.unary.f32(i32 7, float %2467)  ; Saturate(value)
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 0
  %2471 = extractvalue %dx.types.CBufRet.f32 %2469, 1
  %2472 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2473 = extractvalue %dx.types.CBufRet.f32 %2469, 3
  %2474 = fsub fast float %2470, %2444
  %2475 = fsub fast float %2471, %2445
  %2476 = fsub fast float %2472, %2446
  %2477 = fsub fast float %2473, %2447
  %2478 = fmul fast float %2474, %2468
  %2479 = fmul fast float %2475, %2468
  %2480 = fmul fast float %2476, %2468
  %2481 = fmul fast float %2477, %2468
  %2482 = fadd fast float %2478, %2444
  %2483 = fadd fast float %2479, %2445
  %2484 = fadd fast float %2480, %2446
  %2485 = fadd fast float %2481, %2447
  %2486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2487 = extractvalue %dx.types.CBufRet.f32 %2486, 0
  %2488 = extractvalue %dx.types.CBufRet.f32 %2486, 1
  %2489 = fsub fast float %2487, %2450
  %2490 = fsub fast float %2488, %2451
  %2491 = fmul fast float %2489, %2468
  %2492 = fmul fast float %2490, %2468
  %2493 = fadd fast float %2491, %2450
  %2494 = fadd fast float %2492, %2451
  %2495 = extractvalue %dx.types.CBufRet.f32 %2486, 2
  %2496 = extractvalue %dx.types.CBufRet.f32 %2486, 3
  %2497 = fsub fast float %2495, %2454
  %2498 = fsub fast float %2496, %2455
  %2499 = fmul fast float %2497, %2468
  %2500 = fmul fast float %2498, %2468
  %2501 = fadd fast float %2499, %2454
  %2502 = fadd fast float %2500, %2455
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 0
  %2505 = fmul fast float %2504, %2482
  %2506 = fmul fast float %2504, %2483
  %2507 = fmul fast float %2504, %2484
  %2508 = fmul fast float %2504, %2485
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = fmul fast float %2510, %2493
  %2512 = fmul fast float %2510, %2494
  %2513 = fadd fast float %2511, %2505
  %2514 = fadd fast float %2512, %2507
  %2515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2516 = extractvalue %dx.types.CBufRet.f32 %2515, 0
  %2517 = fmul fast float %2516, %2501
  %2518 = fmul fast float %2516, %2502
  %2519 = fadd fast float %2513, %2517
  %2520 = fadd fast float %2514, %2518
  %2521 = extractvalue %dx.types.CBufRet.f32 %2503, 1
  %2522 = fmul fast float %2521, %2482
  %2523 = fmul fast float %2521, %2483
  %2524 = fmul fast float %2521, %2484
  %2525 = fmul fast float %2521, %2485
  %2526 = extractvalue %dx.types.CBufRet.f32 %2509, 1
  %2527 = fmul fast float %2526, %2493
  %2528 = fmul fast float %2526, %2494
  %2529 = fadd fast float %2527, %2522
  %2530 = fadd fast float %2528, %2524
  %2531 = extractvalue %dx.types.CBufRet.f32 %2515, 1
  %2532 = fmul fast float %2531, %2501
  %2533 = fmul fast float %2531, %2502
  %2534 = fadd fast float %2529, %2532
  %2535 = fadd fast float %2530, %2533
  %2536 = extractvalue %dx.types.CBufRet.f32 %2503, 2
  %2537 = fmul fast float %2536, %2482
  %2538 = fmul fast float %2536, %2483
  %2539 = fmul fast float %2536, %2484
  %2540 = fmul fast float %2536, %2485
  %2541 = extractvalue %dx.types.CBufRet.f32 %2509, 2
  %2542 = fmul fast float %2541, %2493
  %2543 = fmul fast float %2541, %2494
  %2544 = fadd fast float %2542, %2537
  %2545 = fadd fast float %2543, %2539
  %2546 = extractvalue %dx.types.CBufRet.f32 %2515, 2
  %2547 = fmul fast float %2546, %2501
  %2548 = fmul fast float %2546, %2502
  %2549 = fadd fast float %2544, %2547
  %2550 = fadd fast float %2545, %2548
  %2551 = fmul fast float %2538, %2538
  %2552 = fmul fast float %2550, %2550
  %2553 = fmul fast float %2540, %2540
  %2554 = fadd fast float %2553, %2551
  %2555 = fadd fast float %2554, %2552
  %2556 = call float @dx.op.unary.f32(i32 24, float %2555)  ; Sqrt(value)
  %2557 = fcmp fast ugt float %2556, 0.000000e+00
  br i1 %2557, label %2558, label %2573

; <label>:2558                                    ; preds = %2287
  %2559 = fsub fast float -0.000000e+00, %2540
  %2560 = fdiv fast float %2559, %2556
  %2561 = fsub fast float -0.000000e+00, %2538
  %2562 = fdiv fast float %2561, %2556
  %2563 = fdiv fast float %2550, %2556
  %2564 = fmul fast float %2549, 0x3FE279A760000000
  %2565 = fmul fast float %2562, %2538
  %2566 = fmul fast float %2563, %2550
  %2567 = fmul fast float %2560, %2540
  %2568 = fadd fast float %2565, %2567
  %2569 = fsub fast float %2568, %2566
  %2570 = call float @dx.op.unary.f32(i32 6, float %2569)  ; FAbs(value)
  %2571 = fadd fast float %2570, 0x3DDB7CDFE0000000
  %2572 = fdiv fast float %2564, %2571
  br label %2573

; <label>:2573                                    ; preds = %2558, %2287
  %2574 = phi float [ %2572, %2558 ], [ 1.000000e+00, %2287 ]
  %2575 = fmul fast float %2523, %2523
  %2576 = fmul fast float %2535, %2535
  %2577 = fmul fast float %2525, %2525
  %2578 = fadd fast float %2577, %2575
  %2579 = fadd fast float %2578, %2576
  %2580 = call float @dx.op.unary.f32(i32 24, float %2579)  ; Sqrt(value)
  %2581 = fcmp fast ugt float %2580, 0.000000e+00
  br i1 %2581, label %2582, label %2597

; <label>:2582                                    ; preds = %2573
  %2583 = fsub fast float -0.000000e+00, %2525
  %2584 = fdiv fast float %2583, %2580
  %2585 = fsub fast float -0.000000e+00, %2523
  %2586 = fdiv fast float %2585, %2580
  %2587 = fdiv fast float %2535, %2580
  %2588 = fmul fast float %2534, 0x3FE279A760000000
  %2589 = fmul fast float %2586, %2523
  %2590 = fmul fast float %2587, %2535
  %2591 = fmul fast float %2584, %2525
  %2592 = fadd fast float %2589, %2591
  %2593 = fsub fast float %2592, %2590
  %2594 = call float @dx.op.unary.f32(i32 6, float %2593)  ; FAbs(value)
  %2595 = fadd fast float %2594, 0x3DDB7CDFE0000000
  %2596 = fdiv fast float %2588, %2595
  br label %2597

; <label>:2597                                    ; preds = %2582, %2573
  %2598 = phi float [ %2596, %2582 ], [ 1.000000e+00, %2573 ]
  %2599 = call float @dx.op.binary.f32(i32 36, float %2598, float %2574)  ; FMin(a,b)
  %2600 = fmul fast float %2506, %2506
  %2601 = fmul fast float %2520, %2520
  %2602 = fmul fast float %2508, %2508
  %2603 = fadd fast float %2602, %2600
  %2604 = fadd fast float %2603, %2601
  %2605 = call float @dx.op.unary.f32(i32 24, float %2604)  ; Sqrt(value)
  %2606 = fcmp fast ugt float %2605, 0.000000e+00
  br i1 %2606, label %2607, label %2622

; <label>:2607                                    ; preds = %2597
  %2608 = fsub fast float -0.000000e+00, %2508
  %2609 = fdiv fast float %2608, %2605
  %2610 = fsub fast float -0.000000e+00, %2506
  %2611 = fdiv fast float %2610, %2605
  %2612 = fdiv fast float %2520, %2605
  %2613 = fmul fast float %2519, 0x3FE279A760000000
  %2614 = fmul fast float %2611, %2506
  %2615 = fmul fast float %2612, %2520
  %2616 = fmul fast float %2609, %2508
  %2617 = fadd fast float %2614, %2616
  %2618 = fsub fast float %2617, %2615
  %2619 = call float @dx.op.unary.f32(i32 6, float %2618)  ; FAbs(value)
  %2620 = fadd fast float %2619, 0x3DDB7CDFE0000000
  %2621 = fdiv fast float %2613, %2620
  br label %2622

; <label>:2622                                    ; preds = %2607, %2597
  %2623 = phi float [ %2621, %2607 ], [ 1.000000e+00, %2597 ]
  %2624 = call float @dx.op.binary.f32(i32 36, float %2623, float %2599)  ; FMin(a,b)
  %2625 = call float @dx.op.unary.f32(i32 7, float %2624)  ; Saturate(value)
  %2626 = fcmp fast olt float %2625, 1.000000e+00
  br i1 %2626, label %2627, label %2637

; <label>:2627                                    ; preds = %2622
  %2628 = fmul fast float %2625, %2506
  %2629 = fmul fast float %2625, %2520
  %2630 = fmul fast float %2625, %2508
  %2631 = fmul fast float %2625, %2523
  %2632 = fmul fast float %2625, %2535
  %2633 = fmul fast float %2625, %2525
  %2634 = fmul fast float %2625, %2538
  %2635 = fmul fast float %2625, %2550
  %2636 = fmul fast float %2625, %2540
  br label %2637

; <label>:2637                                    ; preds = %2627, %2622
  %2638 = phi float [ %2634, %2627 ], [ %2538, %2622 ]
  %2639 = phi float [ %2635, %2627 ], [ %2550, %2622 ]
  %2640 = phi float [ %2636, %2627 ], [ %2540, %2622 ]
  %2641 = phi float [ %2631, %2627 ], [ %2523, %2622 ]
  %2642 = phi float [ %2632, %2627 ], [ %2535, %2622 ]
  %2643 = phi float [ %2633, %2627 ], [ %2525, %2622 ]
  %2644 = phi float [ %2628, %2627 ], [ %2506, %2622 ]
  %2645 = phi float [ %2629, %2627 ], [ %2520, %2622 ]
  %2646 = phi float [ %2630, %2627 ], [ %2508, %2622 ]
  %2647 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2519)  ; FMax(a,b)
  %2648 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2534)  ; FMax(a,b)
  %2649 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2549)  ; FMax(a,b)
  %2650 = fcmp fast oge float %2307, 0.000000e+00
  %2651 = and i1 %2650, %2096
  %2652 = fcmp fast ole float %2307, 1.000000e+00
  %2653 = and i1 %2652, %2651
  %2654 = fcmp fast oge float %2308, 0.000000e+00
  %2655 = and i1 %2654, %2653
  %2656 = fcmp fast ole float %2308, 1.000000e+00
  %2657 = and i1 %2656, %2655
  br i1 %2657, label %2658, label %2798, !dx.controlflow.hints !123

; <label>:2658                                    ; preds = %2637
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 2
  %2661 = extractvalue %dx.types.CBufRet.f32 %2659, 3
  %2662 = fmul fast float %2660, %2307
  %2663 = fmul fast float %2661, %2308
  %2664 = call float @dx.op.unary.f32(i32 27, float %2662)  ; Round_ni(value)
  %2665 = call float @dx.op.unary.f32(i32 27, float %2663)  ; Round_ni(value)
  %2666 = fptosi float %2664 to i32
  %2667 = fptosi float %2665 to i32
  %2668 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %40, i32 0, i32 %2666, i32 %2667, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2669 = extractvalue %dx.types.ResRet.i32 %2668, 0
  %2670 = and i32 %2669, 65535
  %2671 = lshr i32 %2669, 16
  %2672 = icmp eq i32 %2670, 65535
  br i1 %2672, label %2709, label %2673

; <label>:2673                                    ; preds = %2658
  %2674 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2675 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2676 = extractvalue %dx.types.CBufRet.f32 %2659, 1
  %2677 = fmul fast float %2675, %2307
  %2678 = fmul fast float %2676, %2308
  %2679 = fmul fast float %2677, 1.250000e-01
  %2680 = fmul fast float %2678, 1.250000e-01
  %2681 = call float @dx.op.unary.f32(i32 27, float %2679)  ; Round_ni(value)
  %2682 = call float @dx.op.unary.f32(i32 27, float %2680)  ; Round_ni(value)
  %2683 = fmul fast float %2681, 8.000000e+00
  %2684 = fmul fast float %2682, 8.000000e+00
  %2685 = and i32 %2669, 255
  %2686 = lshr i32 %2669, 8
  %2687 = and i32 %2686, 255
  %2688 = mul nuw nsw i32 %2685, 9
  %2689 = uitofp i32 %2688 to float
  %2690 = mul nuw nsw i32 %2687, 9
  %2691 = uitofp i32 %2690 to float
  %2692 = fadd fast float %2689, 5.000000e-01
  %2693 = fadd fast float %2692, %2677
  %2694 = fsub fast float %2693, %2683
  %2695 = fadd fast float %2691, 5.000000e-01
  %2696 = fadd fast float %2695, %2678
  %2697 = fsub fast float %2696, %2684
  %2698 = fdiv fast float %2694, %2095
  %2699 = fdiv fast float %2697, %2674
  %2700 = fmul fast float %2335, 4.375000e-01
  %2701 = fadd fast float %2700, 3.125000e-02
  %2702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2698, float %2699, float %2701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.ResRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.ResRet.f32 %2702, 2
  %2706 = fadd fast float %2703, %2647
  %2707 = fadd fast float %2704, %2648
  %2708 = fadd fast float %2705, %2649
  br label %2709

; <label>:2709                                    ; preds = %2673, %2658
  %2710 = phi float [ %2708, %2673 ], [ %2649, %2658 ]
  %2711 = phi float [ %2707, %2673 ], [ %2648, %2658 ]
  %2712 = phi float [ %2706, %2673 ], [ %2647, %2658 ]
  %2713 = icmp eq i32 %2671, 65535
  br i1 %2713, label %2798, label %2714

; <label>:2714                                    ; preds = %2709
  %2715 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2716 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2717 = extractvalue %dx.types.CBufRet.f32 %2659, 1
  %2718 = fmul fast float %2716, %2307
  %2719 = fmul fast float %2717, %2308
  %2720 = fmul fast float %2718, 1.250000e-01
  %2721 = fmul fast float %2719, 1.250000e-01
  %2722 = call float @dx.op.unary.f32(i32 27, float %2720)  ; Round_ni(value)
  %2723 = call float @dx.op.unary.f32(i32 27, float %2721)  ; Round_ni(value)
  %2724 = fmul fast float %2722, 8.000000e+00
  %2725 = fmul fast float %2723, 8.000000e+00
  %2726 = fsub fast float %2718, %2724
  %2727 = fsub fast float %2719, %2725
  %2728 = fadd fast float %2726, 5.000000e-01
  %2729 = fadd fast float %2727, 5.000000e-01
  %2730 = and i32 %2671, 255
  %2731 = lshr i32 %2669, 24
  %2732 = mul nuw nsw i32 %2730, 9
  %2733 = uitofp i32 %2732 to float
  %2734 = mul nuw nsw i32 %2731, 9
  %2735 = uitofp i32 %2734 to float
  %2736 = fadd fast float %2728, %2733
  %2737 = fadd fast float %2729, %2735
  %2738 = fdiv fast float %2736, %2095
  %2739 = fdiv fast float %2737, %2715
  %2740 = fmul fast float %2335, 4.375000e-01
  %2741 = fadd fast float %2740, 3.125000e-02
  %2742 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2738, float %2739, float %2741, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.ResRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.ResRet.f32 %2742, 2
  %2746 = fadd fast float %2740, 5.312500e-01
  %2747 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %61, float %2738, float %2739, float %2746, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = fmul fast float %2748, 2.000000e+00
  %2752 = fmul fast float %2749, 2.000000e+00
  %2753 = fmul fast float %2750, 2.000000e+00
  %2754 = fadd fast float %2751, -1.000000e+00
  %2755 = fadd fast float %2752, -1.000000e+00
  %2756 = fadd fast float %2753, -1.000000e+00
  %2757 = fmul fast float %2754, %2754
  %2758 = fmul fast float %2755, %2755
  %2759 = fadd fast float %2757, %2758
  %2760 = fmul fast float %2756, %2756
  %2761 = fadd fast float %2759, %2760
  %2762 = call float @dx.op.unary.f32(i32 24, float %2761)  ; Sqrt(value)
  %2763 = fcmp fast ogt float %2762, 0.000000e+00
  br i1 %2763, label %2764, label %2768

; <label>:2764                                    ; preds = %2714
  %2765 = fdiv fast float %2754, %2762
  %2766 = fdiv fast float %2755, %2762
  %2767 = fdiv fast float %2756, %2762
  br label %2768

; <label>:2768                                    ; preds = %2764, %2714
  %2769 = phi float [ %2765, %2764 ], [ 0.000000e+00, %2714 ]
  %2770 = phi float [ %2766, %2764 ], [ 0.000000e+00, %2714 ]
  %2771 = phi float [ %2767, %2764 ], [ 0.000000e+00, %2714 ]
  %2772 = fmul fast float %153, %153
  %2773 = fmul fast float %154, %154
  %2774 = fadd fast float %2772, %2773
  %2775 = call float @dx.op.unary.f32(i32 24, float %2774)  ; Sqrt(value)
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.CBufRet.f32 %2776, 1
  %2779 = fsub fast float %2775, %2777
  %2780 = fdiv fast float %2779, %2778
  %2781 = call float @dx.op.unary.f32(i32 7, float %2780)  ; Saturate(value)
  %2782 = fmul fast float %2781, 2.000000e+00
  %2783 = fsub fast float 3.000000e+00, %2782
  %2784 = fmul fast float %2781, %2781
  %2785 = fmul fast float %2784, %2783
  %2786 = call float @dx.op.dot3.f32(i32 55, float %2769, float %2770, float %2771, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2787 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2786)  ; FMax(a,b)
  %2788 = fmul fast float %2787, 0x400C5BF8A0000000
  %2789 = fmul fast float %2785, %2743
  %2790 = fmul fast float %2789, %2788
  %2791 = fadd fast float %2790, %2712
  %2792 = fmul fast float %2785, %2744
  %2793 = fmul fast float %2792, %2788
  %2794 = fadd fast float %2793, %2711
  %2795 = fmul fast float %2785, %2745
  %2796 = fmul fast float %2795, %2788
  %2797 = fadd fast float %2796, %2710
  br label %2798

; <label>:2798                                    ; preds = %2768, %2709, %2637
  %2799 = phi float [ %2797, %2768 ], [ %2710, %2709 ], [ %2649, %2637 ]
  %2800 = phi float [ %2794, %2768 ], [ %2711, %2709 ], [ %2648, %2637 ]
  %2801 = phi float [ %2791, %2768 ], [ %2712, %2709 ], [ %2647, %2637 ]
  %2802 = fcmp fast ogt float %2294, %2331
  %2803 = and i1 %2650, %2802
  %2804 = and i1 %2652, %2803
  %2805 = and i1 %2654, %2804
  %2806 = and i1 %2656, %2805
  br i1 %2806, label %2807, label %2864, !dx.controlflow.hints !124

; <label>:2807                                    ; preds = %2798
  %2808 = fmul fast float %2333, 0x3FC24924A0000000
  %2809 = fsub fast float %2294, %2331
  %2810 = fdiv fast float %2809, %2808
  %2811 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2813 = extractvalue %dx.types.CBufRet.f32 %2812, 0
  %2814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2815 = extractvalue %dx.types.CBufRet.f32 %2814, 0
  %2816 = extractvalue %dx.types.CBufRet.f32 %2814, 1
  %2817 = extractvalue %dx.types.CBufRet.f32 %2814, 2
  %2818 = fsub fast float %2813, %2801
  %2819 = fsub fast float %2815, %2644
  %2820 = fsub fast float %2816, %2645
  %2821 = fsub fast float %2817, %2646
  %2822 = fmul fast float %2818, %2811
  %2823 = fmul fast float %2819, %2811
  %2824 = fmul fast float %2820, %2811
  %2825 = fmul fast float %2821, %2811
  %2826 = fadd fast float %2822, %2801
  %2827 = fadd fast float %2823, %2644
  %2828 = fadd fast float %2824, %2645
  %2829 = fadd fast float %2825, %2646
  %2830 = extractvalue %dx.types.CBufRet.f32 %2812, 1
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2835 = fsub fast float %2830, %2800
  %2836 = fsub fast float %2832, %2641
  %2837 = fsub fast float %2833, %2642
  %2838 = fsub fast float %2834, %2643
  %2839 = fmul fast float %2835, %2811
  %2840 = fmul fast float %2836, %2811
  %2841 = fmul fast float %2837, %2811
  %2842 = fmul fast float %2838, %2811
  %2843 = fadd fast float %2839, %2800
  %2844 = fadd fast float %2840, %2641
  %2845 = fadd fast float %2841, %2642
  %2846 = fadd fast float %2842, %2643
  %2847 = extractvalue %dx.types.CBufRet.f32 %2812, 2
  %2848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2849 = extractvalue %dx.types.CBufRet.f32 %2848, 0
  %2850 = extractvalue %dx.types.CBufRet.f32 %2848, 1
  %2851 = extractvalue %dx.types.CBufRet.f32 %2848, 2
  %2852 = fsub fast float %2847, %2799
  %2853 = fsub fast float %2849, %2638
  %2854 = fsub fast float %2850, %2639
  %2855 = fsub fast float %2851, %2640
  %2856 = fmul fast float %2852, %2811
  %2857 = fmul fast float %2853, %2811
  %2858 = fmul fast float %2854, %2811
  %2859 = fmul fast float %2855, %2811
  %2860 = fadd fast float %2856, %2799
  %2861 = fadd fast float %2857, %2638
  %2862 = fadd fast float %2858, %2639
  %2863 = fadd fast float %2859, %2640
  br label %2864

; <label>:2864                                    ; preds = %2807, %2798
  %2865 = phi float [ %2860, %2807 ], [ %2799, %2798 ]
  %2866 = phi float [ %2861, %2807 ], [ %2638, %2798 ]
  %2867 = phi float [ %2862, %2807 ], [ %2639, %2798 ]
  %2868 = phi float [ %2863, %2807 ], [ %2640, %2798 ]
  %2869 = phi float [ %2843, %2807 ], [ %2800, %2798 ]
  %2870 = phi float [ %2844, %2807 ], [ %2641, %2798 ]
  %2871 = phi float [ %2845, %2807 ], [ %2642, %2798 ]
  %2872 = phi float [ %2846, %2807 ], [ %2643, %2798 ]
  %2873 = phi float [ %2826, %2807 ], [ %2801, %2798 ]
  %2874 = phi float [ %2827, %2807 ], [ %2644, %2798 ]
  %2875 = phi float [ %2828, %2807 ], [ %2645, %2798 ]
  %2876 = phi float [ %2829, %2807 ], [ %2646, %2798 ]
  %2877 = extractvalue %dx.types.CBufRet.f32 %2456, 3
  %2878 = fmul fast float %2877, %2873
  %2879 = fmul fast float %2877, %2869
  %2880 = fmul fast float %2877, %2865
  %2881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2882 = extractvalue %dx.types.CBufRet.f32 %2881, 3
  %2883 = fmul fast float %2878, %2882
  %2884 = fmul fast float %2879, %2882
  %2885 = fmul fast float %2880, %2882
  %2886 = call float @dx.op.dot3.f32(i32 55, float %2883, float %2884, float %2885, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2887 = fmul fast float %2886, 0x3FD20DD760000000
  %2888 = fmul fast float %2874, 1.500000e+00
  %2889 = fmul fast float %2888, %2877
  %2890 = fmul fast float %2889, %2882
  %2891 = fmul fast float %2875, 1.500000e+00
  %2892 = fmul fast float %2891, %2877
  %2893 = fmul fast float %2892, %2882
  %2894 = fmul fast float %2876, 1.500000e+00
  %2895 = fmul fast float %2894, %2877
  %2896 = fmul fast float %2895, %2882
  %2897 = fmul fast float %2870, 1.500000e+00
  %2898 = fmul fast float %2897, %2877
  %2899 = fmul fast float %2898, %2882
  %2900 = fmul fast float %2871, 1.500000e+00
  %2901 = fmul fast float %2900, %2877
  %2902 = fmul fast float %2901, %2882
  %2903 = fmul fast float %2872, 1.500000e+00
  %2904 = fmul fast float %2903, %2877
  %2905 = fmul fast float %2904, %2882
  %2906 = fmul fast float %2866, 1.500000e+00
  %2907 = fmul fast float %2906, %2877
  %2908 = fmul fast float %2907, %2882
  %2909 = fmul fast float %2867, 1.500000e+00
  %2910 = fmul fast float %2909, %2877
  %2911 = fmul fast float %2910, %2882
  %2912 = fmul fast float %2868, 1.500000e+00
  %2913 = fmul fast float %2912, %2877
  %2914 = fmul fast float %2913, %2882
  %2915 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2883)  ; FMax(a,b)
  %2916 = call float @dx.op.dot3.f32(i32 55, float %2890, float %2893, float %2896, float %2890, float %2893, float %2896)  ; Dot3(ax,ay,az,bx,by,bz)
  %2917 = fcmp fast oeq float %2916, 0.000000e+00
  %2918 = fcmp fast oeq float %2915, 0.000000e+00
  %2919 = or i1 %2918, %2917
  br i1 %2919, label %2949, label %2920

; <label>:2920                                    ; preds = %2864
  %2921 = fsub fast float -0.000000e+00, %2896
  %2922 = fsub fast float -0.000000e+00, %2890
  %2923 = call float @dx.op.unary.f32(i32 24, float %2916)  ; Sqrt(value)
  %2924 = fdiv fast float %2923, %2915
  %2925 = fcmp fast ogt float %2924, 0x3FFB6F8900000000
  %2926 = select i1 %2925, float 0x3FFB6F8900000000, float %2924
  %2927 = fmul fast float %2926, 0x3FE8A23460000000
  %2928 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  %2929 = call float @dx.op.binary.f32(i32 35, float %2926, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2930 = fmul fast float %2928, %2915
  %2931 = fmul fast float %2929, 0x3FF279A740000000
  %2932 = fadd fast float %2931, -1.000000e+00
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2921, float %2922, float %2893, float %2921, float %2922, float %2893)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = call float @dx.op.unary.f32(i32 25, float %2933)  ; Rsqrt(value)
  %2935 = fmul fast float %2934, %2921
  %2936 = fmul fast float %2934, %2922
  %2937 = fmul fast float %2934, %2893
  %2938 = fmul fast float %2932, %2932
  %2939 = fsub fast float 1.000000e+00, %2938
  %2940 = fmul fast float %2929, 0x40005F8BE0000000
  %2941 = fsub fast float 0x400C5BF8A0000000, %2940
  %2942 = fdiv fast float %2930, %2941
  %2943 = fmul fast float %2942, 0x3FEE31C3C0000000
  %2944 = fmul fast float %2943, %2939
  %2945 = fmul fast float %2929, 0x3FDACB7480000000
  %2946 = fadd fast float %2945, 0xBFD7347680000000
  %2947 = fmul fast float %2946, %2942
  %2948 = fmul fast float %2947, %2939
  br label %2949

; <label>:2949                                    ; preds = %2920, %2864
  %2950 = phi float [ %2935, %2920 ], [ 0.000000e+00, %2864 ]
  %2951 = phi float [ %2936, %2920 ], [ 0.000000e+00, %2864 ]
  %2952 = phi float [ %2937, %2920 ], [ 0.000000e+00, %2864 ]
  %2953 = phi float [ %2944, %2920 ], [ 0.000000e+00, %2864 ]
  %2954 = phi float [ %2948, %2920 ], [ 0.000000e+00, %2864 ]
  %2955 = call float @dx.op.dot3.f32(i32 55, float %2950, float %2951, float %2952, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %2956 = fmul fast float %2955, %2955
  %2957 = fmul fast float %2956, 0x3FEE471020000000
  %2958 = fadd fast float %2957, 0xBFD42F6020000000
  %2959 = fmul fast float %2915, 0x3FD20DD760000000
  %2960 = fmul fast float %2958, %2954
  %2961 = fmul fast float %2953, 0x3FDF454380000000
  %2962 = fmul fast float %2961, %2955
  %2963 = fadd fast float %2962, %2959
  %2964 = fadd fast float %2963, %2960
  %2965 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2884)  ; FMax(a,b)
  %2966 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2902, float %2905, float %2899, float %2902, float %2905)  ; Dot3(ax,ay,az,bx,by,bz)
  %2967 = fcmp fast oeq float %2966, 0.000000e+00
  %2968 = fcmp fast oeq float %2965, 0.000000e+00
  %2969 = or i1 %2968, %2967
  br i1 %2969, label %2999, label %2970

; <label>:2970                                    ; preds = %2949
  %2971 = fsub fast float -0.000000e+00, %2905
  %2972 = fsub fast float -0.000000e+00, %2899
  %2973 = call float @dx.op.unary.f32(i32 24, float %2966)  ; Sqrt(value)
  %2974 = fdiv fast float %2973, %2965
  %2975 = fcmp fast ogt float %2974, 0x3FFB6F8900000000
  %2976 = select i1 %2975, float 0x3FFB6F8900000000, float %2974
  %2977 = fmul fast float %2976, 0x3FE8A23460000000
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = call float @dx.op.binary.f32(i32 35, float %2976, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2980 = fmul fast float %2978, %2965
  %2981 = fmul fast float %2979, 0x3FF279A740000000
  %2982 = fadd fast float %2981, -1.000000e+00
  %2983 = call float @dx.op.dot3.f32(i32 55, float %2971, float %2972, float %2902, float %2971, float %2972, float %2902)  ; Dot3(ax,ay,az,bx,by,bz)
  %2984 = call float @dx.op.unary.f32(i32 25, float %2983)  ; Rsqrt(value)
  %2985 = fmul fast float %2984, %2971
  %2986 = fmul fast float %2984, %2972
  %2987 = fmul fast float %2984, %2902
  %2988 = fmul fast float %2982, %2982
  %2989 = fsub fast float 1.000000e+00, %2988
  %2990 = fmul fast float %2979, 0x40005F8BE0000000
  %2991 = fsub fast float 0x400C5BF8A0000000, %2990
  %2992 = fdiv fast float %2980, %2991
  %2993 = fmul fast float %2992, 0x3FEE31C3C0000000
  %2994 = fmul fast float %2993, %2989
  %2995 = fmul fast float %2979, 0x3FDACB7480000000
  %2996 = fadd fast float %2995, 0xBFD7347680000000
  %2997 = fmul fast float %2996, %2992
  %2998 = fmul fast float %2997, %2989
  br label %2999

; <label>:2999                                    ; preds = %2970, %2949
  %3000 = phi float [ %2985, %2970 ], [ 0.000000e+00, %2949 ]
  %3001 = phi float [ %2986, %2970 ], [ 0.000000e+00, %2949 ]
  %3002 = phi float [ %2987, %2970 ], [ 0.000000e+00, %2949 ]
  %3003 = phi float [ %2994, %2970 ], [ 0.000000e+00, %2949 ]
  %3004 = phi float [ %2998, %2970 ], [ 0.000000e+00, %2949 ]
  %3005 = call float @dx.op.dot3.f32(i32 55, float %3000, float %3001, float %3002, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3006 = fmul fast float %3005, %3005
  %3007 = fmul fast float %3006, 0x3FEE471020000000
  %3008 = fadd fast float %3007, 0xBFD42F6020000000
  %3009 = fmul fast float %2965, 0x3FD20DD760000000
  %3010 = fmul fast float %3008, %3004
  %3011 = fmul fast float %3003, 0x3FDF454380000000
  %3012 = fmul fast float %3011, %3005
  %3013 = fadd fast float %3012, %3009
  %3014 = fadd fast float %3013, %3010
  %3015 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2885)  ; FMax(a,b)
  %3016 = call float @dx.op.dot3.f32(i32 55, float %2908, float %2911, float %2914, float %2908, float %2911, float %2914)  ; Dot3(ax,ay,az,bx,by,bz)
  %3017 = fcmp fast oeq float %3016, 0.000000e+00
  %3018 = fcmp fast oeq float %3015, 0.000000e+00
  %3019 = or i1 %3018, %3017
  br i1 %3019, label %3049, label %3020

; <label>:3020                                    ; preds = %2999
  %3021 = fsub fast float -0.000000e+00, %2914
  %3022 = fsub fast float -0.000000e+00, %2908
  %3023 = call float @dx.op.unary.f32(i32 24, float %3016)  ; Sqrt(value)
  %3024 = fdiv fast float %3023, %3015
  %3025 = fcmp fast ogt float %3024, 0x3FFB6F8900000000
  %3026 = select i1 %3025, float 0x3FFB6F8900000000, float %3024
  %3027 = fmul fast float %3026, 0x3FE8A23460000000
  %3028 = call float @dx.op.unary.f32(i32 7, float %3027)  ; Saturate(value)
  %3029 = call float @dx.op.binary.f32(i32 35, float %3026, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3030 = fmul fast float %3028, %3015
  %3031 = fmul fast float %3029, 0x3FF279A740000000
  %3032 = fadd fast float %3031, -1.000000e+00
  %3033 = call float @dx.op.dot3.f32(i32 55, float %3021, float %3022, float %2911, float %3021, float %3022, float %2911)  ; Dot3(ax,ay,az,bx,by,bz)
  %3034 = call float @dx.op.unary.f32(i32 25, float %3033)  ; Rsqrt(value)
  %3035 = fmul fast float %3034, %3021
  %3036 = fmul fast float %3034, %3022
  %3037 = fmul fast float %3034, %2911
  %3038 = fmul fast float %3032, %3032
  %3039 = fsub fast float 1.000000e+00, %3038
  %3040 = fmul fast float %3029, 0x40005F8BE0000000
  %3041 = fsub fast float 0x400C5BF8A0000000, %3040
  %3042 = fdiv fast float %3030, %3041
  %3043 = fmul fast float %3042, 0x3FEE31C3C0000000
  %3044 = fmul fast float %3043, %3039
  %3045 = fmul fast float %3029, 0x3FDACB7480000000
  %3046 = fadd fast float %3045, 0xBFD7347680000000
  %3047 = fmul fast float %3046, %3042
  %3048 = fmul fast float %3047, %3039
  br label %3049

; <label>:3049                                    ; preds = %3020, %2999
  %3050 = phi float [ %3035, %3020 ], [ 0.000000e+00, %2999 ]
  %3051 = phi float [ %3036, %3020 ], [ 0.000000e+00, %2999 ]
  %3052 = phi float [ %3037, %3020 ], [ 0.000000e+00, %2999 ]
  %3053 = phi float [ %3044, %3020 ], [ 0.000000e+00, %2999 ]
  %3054 = phi float [ %3048, %3020 ], [ 0.000000e+00, %2999 ]
  %3055 = call float @dx.op.dot3.f32(i32 55, float %3050, float %3051, float %3052, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3056 = fmul fast float %3055, %3055
  %3057 = fmul fast float %3056, 0x3FEE471020000000
  %3058 = fadd fast float %3057, 0xBFD42F6020000000
  %3059 = fmul fast float %3015, 0x3FD20DD760000000
  %3060 = fmul fast float %3058, %3054
  %3061 = fmul fast float %3053, 0x3FDF454380000000
  %3062 = fmul fast float %3061, %3055
  %3063 = fadd fast float %3062, %3059
  %3064 = fadd fast float %3063, %3060
  %3065 = call float @dx.op.binary.f32(i32 35, float %2964, float 0.000000e+00)  ; FMax(a,b)
  %3066 = call float @dx.op.binary.f32(i32 35, float %3014, float 0.000000e+00)  ; FMax(a,b)
  %3067 = call float @dx.op.binary.f32(i32 35, float %3064, float 0.000000e+00)  ; FMax(a,b)
  %3068 = fsub fast float %2284, %3065
  %3069 = fsub fast float %2285, %3066
  %3070 = fsub fast float %2286, %3067
  %3071 = fmul fast float %3068, %2093
  %3072 = fmul fast float %3069, %2093
  %3073 = fmul fast float %3070, %2093
  %3074 = fadd fast float %3071, %3065
  %3075 = fadd fast float %3072, %3066
  %3076 = fadd fast float %3073, %3067
  %3077 = fmul fast float %2887, %2093
  %3078 = fsub fast float %2887, %3077
  br label %3079

; <label>:3079                                    ; preds = %3049, %2283
  %3080 = phi float [ %3078, %3049 ], [ 0.000000e+00, %2283 ]
  %3081 = phi float [ %3074, %3049 ], [ %2284, %2283 ]
  %3082 = phi float [ %3075, %3049 ], [ %2285, %2283 ]
  %3083 = phi float [ %3076, %3049 ], [ %2286, %2283 ]
  %3084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.f32 %3084, 0
  %3086 = call float @dx.op.binary.f32(i32 36, float %1874, float %3085)  ; FMin(a,b)
  %3087 = fmul fast float %3086, %2072
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = bitcast float %3088 to i32
  %3090 = sub nsw i32 2129859010, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = call float @dx.op.binary.f32(i32 36, float %1875, float %3085)  ; FMin(a,b)
  %3093 = fmul fast float %3092, %2072
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = bitcast float %3094 to i32
  %3096 = sub nsw i32 2129859010, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = call float @dx.op.binary.f32(i32 36, float %1876, float %3085)  ; FMin(a,b)
  %3099 = fmul fast float %3098, %2072
  %3100 = fsub fast float 1.000000e+00, %3099
  %3101 = bitcast float %3100 to i32
  %3102 = sub nsw i32 2129859010, %3101
  %3103 = bitcast i32 %3102 to float
  %3104 = fmul fast float %3081, %2071
  %3105 = fmul fast float %3104, %3091
  %3106 = fmul fast float %3082, %2071
  %3107 = fmul fast float %3106, %3097
  %3108 = fmul fast float %3083, %2071
  %3109 = fmul fast float %3108, %3103
  %3110 = extractvalue %dx.types.CBufRet.i32 %2090, 2
  %3111 = and i32 %3110, 1
  %3112 = icmp ne i32 %3111, 0
  %3113 = fsub fast float 1.000000e+00, %2093
  %3114 = select i1 %3112, float %2093, float %3105
  %3115 = select i1 %3112, float %3113, float %3107
  %3116 = select i1 %3112, float 0.000000e+00, float %3109
  %3117 = call float @dx.op.dot3.f32(i32 55, float %3114, float %3115, float %3116, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3118 = select i1 %2046, float 0.000000e+00, float %3114
  %3119 = select i1 %2046, float %3117, float %3115
  %3120 = select i1 %2046, float 0.000000e+00, float %3116
  %3121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.f32 %3121, 0
  %3123 = bitcast float %3122 to i32
  %3124 = lshr i32 %3123, 8
  %3125 = and i32 %3124, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = fptoui float %3126 to i32
  %3128 = icmp eq i32 %3127, 23
  br i1 %3128, label %3129, label %3152

; <label>:3129                                    ; preds = %3079
  %3130 = fmul fast float %3103, %2071
  %3131 = fmul fast float %3097, %2071
  %3132 = fmul fast float %3091, %2071
  %3133 = fadd fast float %3132, 1.000000e+00
  %3134 = fadd fast float %3131, 1.000000e+00
  %3135 = fadd fast float %3130, 1.000000e+00
  %3136 = fmul fast float %3133, 5.000000e-01
  %3137 = fmul fast float %3134, 5.000000e-01
  %3138 = fmul fast float %3135, 5.000000e-01
  %3139 = call float @dx.op.unary.f32(i32 7, float %3136)  ; Saturate(value)
  %3140 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  %3141 = call float @dx.op.unary.f32(i32 7, float %3138)  ; Saturate(value)
  %3142 = fmul fast float %3139, 1.023000e+03
  %3143 = fmul fast float %3140, 1.023000e+03
  %3144 = fmul fast float %3141, 1.023000e+03
  %3145 = fptoui float %3142 to i32
  %3146 = fptoui float %3143 to i32
  %3147 = fptoui float %3144 to i32
  %3148 = shl i32 %3146, 10
  %3149 = or i32 %3148, %3145
  %3150 = shl i32 %3147, 20
  %3151 = or i32 %3149, %3150
  br label %3152

; <label>:3152                                    ; preds = %3129, %3079
  %3153 = phi i32 [ %3151, %3129 ], [ 0, %3079 ]
  %3154 = fsub fast float 1.000000e+00, %2051
  %3155 = fmul fast float %3154, %1923
  %3156 = fadd fast float %3155, %2051
  %3157 = call float @dx.op.binary.f32(i32 35, float %1950, float %3156)  ; FMax(a,b)
  %3158 = call float @dx.op.binary.f32(i32 35, float %1949, float %3157)  ; FMax(a,b)
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = extractvalue %dx.types.CBufRet.f32 %2061, 2
  %3161 = fcmp fast olt float %3160, 0.000000e+00
  br i1 %3161, label %3162, label %3873

; <label>:3162                                    ; preds = %3152
  %3163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3164 = extractvalue %dx.types.CBufRet.f32 %3163, 2
  %3165 = extractvalue %dx.types.CBufRet.f32 %3163, 3
  %3166 = fmul fast float %3164, %98
  %3167 = fmul fast float %3165, %99
  %3168 = fptoui float %3166 to i32
  %3169 = fptoui float %3167 to i32
  %3170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.CBufRet.f32 %3170, 2
  %3173 = extractvalue %dx.types.CBufRet.f32 %3170, 3
  %3174 = fadd fast float %87, -4.000000e+00
  %3175 = call float @dx.op.binary.f32(i32 35, float %3174, float 0.000000e+00)  ; FMax(a,b)
  %3176 = fadd fast float %3175, %3171
  %3177 = fmul fast float %3176, %3172
  %3178 = call float @dx.op.unary.f32(i32 23, float %3177)  ; Log(value)
  %3179 = fmul fast float %3178, %3173
  %3180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3181 = extractvalue %dx.types.CBufRet.f32 %3180, 2
  %3182 = fmul fast float %3179, %3181
  %3183 = call float @dx.op.unary.f32(i32 7, float %3182)  ; Saturate(value)
  %3184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3185 = extractvalue %dx.types.CBufRet.i32 %3184, 1
  %3186 = add i32 %3185, -1
  %3187 = uitofp i32 %3185 to float
  %3188 = fmul fast float %3187, %3183
  %3189 = fptoui float %3188 to i32
  %3190 = call i32 @dx.op.binary.i32(i32 40, i32 %3189, i32 %3186)  ; UMin(a,b)
  %3191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3192 = extractvalue %dx.types.CBufRet.i32 %3191, 2
  %3193 = extractvalue %dx.types.CBufRet.i32 %3191, 3
  %3194 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3169, i32 %3192, i32 %3168)  ; UMad(a,b,c)
  %3195 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3190, i32 %3193, i32 %3194)  ; UMad(a,b,c)
  %3196 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %3197 = fptoui float %3196 to i32
  %3198 = lshr i32 %3197, 5
  %3199 = call i32 @dx.op.binary.i32(i32 40, i32 %3198, i32 8191)  ; UMin(a,b)
  %3200 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3201 = extractvalue %dx.types.CBufRet.i32 %3200, 2
  %3202 = add nsw i32 %3201, -1
  %3203 = call i32 @dx.op.binary.i32(i32 37, i32 %3202, i32 0)  ; IMax(a,b)
  %3204 = shl i32 %3199, 2
  %3205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.i32 %3205, 0
  %3207 = lshr i32 %3206, 16
  %3208 = and i32 %3206, 65535
  %3209 = lshr i32 %3206, 21
  %3210 = lshr i32 %3208, 5
  %3211 = call i32 @dx.op.binary.i32(i32 40, i32 %3210, i32 %3203)  ; UMin(a,b)
  %3212 = icmp ugt i32 %3209, %3211
  br i1 %3212, label %3798, label %3213

; <label>:3213                                    ; preds = %3162
  br label %3214

; <label>:3214                                    ; preds = %3780, %3213
  %3215 = phi i32 [ %3781, %3780 ], [ %1836, %3213 ]
  %3216 = phi i32 [ %3782, %3780 ], [ %3153, %3213 ]
  %3217 = phi float [ %3783, %3780 ], [ 0.000000e+00, %3213 ]
  %3218 = phi float [ %3784, %3780 ], [ 0.000000e+00, %3213 ]
  %3219 = phi float [ %3785, %3780 ], [ 0.000000e+00, %3213 ]
  %3220 = phi float [ %3786, %3780 ], [ 0.000000e+00, %3213 ]
  %3221 = phi float [ %3787, %3780 ], [ 0.000000e+00, %3213 ]
  %3222 = phi float [ %3788, %3780 ], [ 0.000000e+00, %3213 ]
  %3223 = phi i32 [ %3789, %3780 ], [ 0, %3213 ]
  %3224 = phi float [ %3790, %3780 ], [ 0.000000e+00, %3213 ]
  %3225 = phi float [ %3791, %3780 ], [ 0.000000e+00, %3213 ]
  %3226 = phi float [ %3792, %3780 ], [ 0.000000e+00, %3213 ]
  %3227 = phi i32 [ %3793, %3780 ], [ 1, %3213 ]
  %3228 = phi float [ %3794, %3780 ], [ 1.000000e+00, %3213 ]
  %3229 = phi i32 [ %3795, %3780 ], [ %3209, %3213 ]
  %3230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3231 = extractvalue %dx.types.CBufRet.i32 %3230, 2
  %3232 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3195, i32 %3231, i32 %3229)  ; UMad(a,b,c)
  %3233 = shl i32 %3232, 2
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3233, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = shl i32 %3229, 5
  %3237 = sub nsw i32 %3207, %3236
  %3238 = call i32 @dx.op.binary.i32(i32 37, i32 %3237, i32 0)  ; IMax(a,b)
  %3239 = call i32 @dx.op.binary.i32(i32 38, i32 %3238, i32 31)  ; IMin(a,b)
  %3240 = sub nsw i32 1, %3207
  %3241 = add nsw i32 %3240, %3208
  %3242 = call i32 @dx.op.binary.i32(i32 37, i32 %3241, i32 0)  ; IMax(a,b)
  %3243 = call i32 @dx.op.binary.i32(i32 38, i32 %3242, i32 32)  ; IMin(a,b)
  %3244 = and i32 %3243, 31
  %3245 = shl i32 -1, %3244
  %3246 = xor i32 %3245, -1
  %3247 = and i32 %3239, 31
  %3248 = shl i32 %3246, %3247
  %3249 = icmp eq i32 %3243, 32
  %3250 = select i1 %3249, i32 -1, i32 %3248
  %3251 = and i32 %3250, %3235
  %3252 = icmp eq i32 %3251, 0
  br i1 %3252, label %3780, label %3253

; <label>:3253                                    ; preds = %3214
  br label %3254

; <label>:3254                                    ; preds = %3391, %3253
  %3255 = phi i32 [ %3392, %3391 ], [ %3215, %3253 ]
  %3256 = phi i32 [ %3393, %3391 ], [ %3216, %3253 ]
  %3257 = phi float [ %3394, %3391 ], [ %3217, %3253 ]
  %3258 = phi float [ %3395, %3391 ], [ %3218, %3253 ]
  %3259 = phi float [ %3396, %3391 ], [ %3219, %3253 ]
  %3260 = phi float [ %3397, %3391 ], [ %3220, %3253 ]
  %3261 = phi float [ %3398, %3391 ], [ %3221, %3253 ]
  %3262 = phi float [ %3399, %3391 ], [ %3222, %3253 ]
  %3263 = phi i32 [ %3400, %3391 ], [ %3223, %3253 ]
  %3264 = phi float [ %3401, %3391 ], [ %3224, %3253 ]
  %3265 = phi float [ %3402, %3391 ], [ %3225, %3253 ]
  %3266 = phi float [ %3403, %3391 ], [ %3226, %3253 ]
  %3267 = phi i32 [ %3404, %3391 ], [ %3227, %3253 ]
  %3268 = phi float [ %3405, %3391 ], [ %3228, %3253 ]
  %3269 = phi i32 [ %3274, %3391 ], [ %3251, %3253 ]
  %3270 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3269)  ; FirstbitLo(value)
  %3271 = add i32 %3270, %3236
  %3272 = and i32 %3270, 31
  %3273 = shl i32 1, %3272
  %3274 = xor i32 %3273, %3269
  %3275 = mul i32 %3271, 72
  %3276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.f32 %3276, 0
  %3278 = extractvalue %dx.types.ResRet.f32 %3276, 1
  %3279 = extractvalue %dx.types.ResRet.f32 %3276, 2
  %3280 = add i32 %3275, 12
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %3280, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = add i32 %3275, 16
  %3284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3288 = add i32 %3275, 28
  %3289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3288, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = add i32 %3275, 32
  %3292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.f32 %3292, 0
  %3294 = extractvalue %dx.types.ResRet.f32 %3292, 1
  %3295 = extractvalue %dx.types.ResRet.f32 %3292, 2
  %3296 = extractvalue %dx.types.ResRet.f32 %3292, 3
  %3297 = add i32 %3275, 48
  %3298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3297, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.f32 %3298, 0
  %3300 = extractvalue %dx.types.ResRet.f32 %3298, 1
  %3301 = add i32 %3275, 56
  %3302 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.f32 %3302, 0
  %3304 = extractvalue %dx.types.ResRet.f32 %3302, 1
  %3305 = add i32 %3275, 64
  %3306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.f32 %3306, 0
  %3308 = extractvalue %dx.types.ResRet.f32 %3306, 1
  %3309 = mul i32 %3271, 60
  %3310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = add i32 %3309, 12
  %3315 = add i32 %3309, 48
  %3316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3315, i32 undef)  ; BufferLoad(srv,index,wot)
  %3317 = extractvalue %dx.types.ResRet.f32 %3316, 0
  %3318 = extractvalue %dx.types.ResRet.f32 %3316, 1
  %3319 = extractvalue %dx.types.ResRet.f32 %3316, 2
  %3320 = and i32 %3282, 32767
  %3321 = bitcast float %3277 to i32
  %3322 = bitcast float %3278 to i32
  %3323 = and i32 %3282, 32768
  %3324 = icmp ne i32 %3323, 0
  %3325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3326 = extractvalue %dx.types.CBufRet.f32 %3325, 3
  %3327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3328 = extractvalue %dx.types.CBufRet.f32 %3327, 0
  %3329 = extractvalue %dx.types.CBufRet.f32 %3327, 1
  %3330 = extractvalue %dx.types.CBufRet.f32 %3327, 2
  %3331 = fsub fast float %3311, %3328
  %3332 = fsub fast float %3312, %3329
  %3333 = fsub fast float %3313, %3330
  %3334 = fsub fast float %153, %3331
  %3335 = fsub fast float %154, %3332
  %3336 = fsub fast float %155, %3333
  %3337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3314, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.f32 %3337, 0
  %3339 = extractvalue %dx.types.ResRet.f32 %3337, 1
  %3340 = extractvalue %dx.types.ResRet.f32 %3337, 2
  %3341 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float %3338, float %3339, float %3340)  ; Dot3(ax,ay,az,bx,by,bz)
  %3342 = add i32 %3309, 24
  %3343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3342, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = extractvalue %dx.types.ResRet.f32 %3343, 1
  %3346 = extractvalue %dx.types.ResRet.f32 %3343, 2
  %3347 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float %3344, float %3345, float %3346)  ; Dot3(ax,ay,az,bx,by,bz)
  %3348 = add i32 %3309, 36
  %3349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float %3350, float %3351, float %3352)  ; Dot3(ax,ay,az,bx,by,bz)
  %3354 = call float @dx.op.unary.f32(i32 6, float %3341)  ; FAbs(value)
  %3355 = call float @dx.op.unary.f32(i32 6, float %3347)  ; FAbs(value)
  %3356 = call float @dx.op.unary.f32(i32 6, float %3353)  ; FAbs(value)
  %3357 = fsub fast float %3317, %3354
  %3358 = fsub fast float %3318, %3355
  %3359 = fsub fast float %3319, %3356
  %3360 = fmul fast float %3357, %3285
  %3361 = fmul fast float %3358, %3286
  %3362 = fmul fast float %3359, %3287
  %3363 = call float @dx.op.binary.f32(i32 36, float %3361, float %3362)  ; FMin(a,b)
  %3364 = call float @dx.op.binary.f32(i32 36, float %3360, float %3363)  ; FMin(a,b)
  %3365 = call float @dx.op.unary.f32(i32 7, float %3364)  ; Saturate(value)
  %3366 = call float @dx.op.binary.f32(i32 36, float %3268, float %3365)  ; FMin(a,b)
  %3367 = uitofp i1 %3324 to float
  %3368 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %3369 = fsub fast float %3368, %3367
  %3370 = fmul fast float %3366, %3369
  %3371 = lshr i32 %3255, 8
  %3372 = and i32 %3371, 255
  %3373 = uitofp i32 %3372 to float
  %3374 = fptoui float %3373 to i32
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3377 = bitcast float %3376 to i32
  %3378 = lshr i32 %3377, 24
  %3379 = uitofp i32 %3378 to float
  %3380 = fptoui float %3379 to i32
  %3381 = icmp ne i32 %3380, 1
  %3382 = zext i1 %3381 to i32
  %3383 = add i32 %3382, %3374
  %3384 = uitofp i32 %3383 to float
  %3385 = fptoui float %3384 to i32
  %3386 = shl i32 %3385, 8
  %3387 = and i32 %3386, 65280
  %3388 = and i32 %3255, -65281
  %3389 = or i32 %3387, %3388
  %3390 = fcmp fast ogt float %3370, 0.000000e+00
  br i1 %3390, label %3407, label %3391

; <label>:3391                                    ; preds = %3763, %3632, %3254
  %3392 = phi i32 [ %3710, %3632 ], [ %3389, %3254 ], [ %3710, %3763 ]
  %3393 = phi i32 [ %3256, %3632 ], [ %3256, %3254 ], [ %3778, %3763 ]
  %3394 = phi float [ %3696, %3632 ], [ %3257, %3254 ], [ %3696, %3763 ]
  %3395 = phi float [ %3697, %3632 ], [ %3258, %3254 ], [ %3697, %3763 ]
  %3396 = phi float [ %3698, %3632 ], [ %3259, %3254 ], [ %3698, %3763 ]
  %3397 = phi float [ %3757, %3632 ], [ %3260, %3254 ], [ %3757, %3763 ]
  %3398 = phi float [ %3758, %3632 ], [ %3261, %3254 ], [ %3758, %3763 ]
  %3399 = phi float [ %3759, %3632 ], [ %3262, %3254 ], [ %3759, %3763 ]
  %3400 = phi i32 [ %3761, %3632 ], [ %3263, %3254 ], [ %3761, %3763 ]
  %3401 = phi float [ %3714, %3632 ], [ %3264, %3254 ], [ %3714, %3763 ]
  %3402 = phi float [ %3715, %3632 ], [ %3265, %3254 ], [ %3715, %3763 ]
  %3403 = phi float [ %3716, %3632 ], [ %3266, %3254 ], [ %3716, %3763 ]
  %3404 = phi i32 [ 0, %3632 ], [ %3267, %3254 ], [ 0, %3763 ]
  %3405 = phi float [ %3699, %3632 ], [ %3268, %3254 ], [ %3699, %3763 ]
  %3406 = icmp eq i32 %3269, %3273
  br i1 %3406, label %3779, label %3254

; <label>:3407                                    ; preds = %3254
  %3408 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3409 = bitcast float %3408 to i32
  %3410 = lshr i32 %3409, 8
  %3411 = and i32 %3410, 255
  %3412 = uitofp i32 %3411 to float
  %3413 = fptoui float %3412 to i32
  %3414 = and i32 %3413, 2
  %3415 = icmp eq i32 %3414, 0
  br i1 %3415, label %3422, label %3416

; <label>:3416                                    ; preds = %3407
  %3417 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %3418 = call float @dx.op.unary.f32(i32 25, float %3417)  ; Rsqrt(value)
  %3419 = fmul fast float %3418, %153
  %3420 = fmul fast float %3418, %154
  %3421 = fmul fast float %3418, %155
  br label %3422

; <label>:3422                                    ; preds = %3416, %3407
  %3423 = phi float [ %3419, %3416 ], [ %1862, %3407 ]
  %3424 = phi float [ %3420, %3416 ], [ %1863, %3407 ]
  %3425 = phi float [ %3421, %3416 ], [ %1864, %3407 ]
  %3426 = icmp ne i32 %3321, -1
  %3427 = fcmp oeq float %3326, 0.000000e+00
  %3428 = and i1 %3427, %3426
  br i1 %3428, label %3429, label %3553

; <label>:3429                                    ; preds = %3422
  %3430 = fsub fast float -0.000000e+00, %3338
  %3431 = fsub fast float -0.000000e+00, %3339
  %3432 = fsub fast float -0.000000e+00, %3340
  %3433 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %3430, float %3431, float %3432)  ; Dot3(ax,ay,az,bx,by,bz)
  %3434 = fsub fast float -0.000000e+00, %3433
  %3435 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float %3430, float %3431, float %3432)  ; Dot3(ax,ay,az,bx,by,bz)
  %3436 = fadd fast float %3435, %3300
  %3437 = fadd fast float %3299, %3435
  %3438 = fsub fast float -0.000000e+00, %3437
  %3439 = fcmp ogt float %3433, -0.000000e+00
  %3440 = select i1 %3439, float %3438, float %3436
  %3441 = call float @dx.op.unary.f32(i32 6, float %3434)  ; FAbs(value)
  %3442 = fdiv fast float 1.000000e+00, %3441
  %3443 = fmul fast float %3440, %3442
  %3444 = call float @dx.op.binary.f32(i32 35, float %3443, float 0.000000e+00)  ; FMax(a,b)
  %3445 = fsub fast float -0.000000e+00, %3344
  %3446 = fsub fast float -0.000000e+00, %3345
  %3447 = fsub fast float -0.000000e+00, %3346
  %3448 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %3445, float %3446, float %3447)  ; Dot3(ax,ay,az,bx,by,bz)
  %3449 = fsub fast float -0.000000e+00, %3448
  %3450 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float %3445, float %3446, float %3447)  ; Dot3(ax,ay,az,bx,by,bz)
  %3451 = fadd fast float %3450, %3304
  %3452 = fadd fast float %3303, %3450
  %3453 = fsub fast float -0.000000e+00, %3452
  %3454 = fcmp ogt float %3448, -0.000000e+00
  %3455 = select i1 %3454, float %3453, float %3451
  %3456 = call float @dx.op.unary.f32(i32 6, float %3449)  ; FAbs(value)
  %3457 = fdiv fast float 1.000000e+00, %3456
  %3458 = fmul fast float %3455, %3457
  %3459 = call float @dx.op.binary.f32(i32 35, float %3458, float 0.000000e+00)  ; FMax(a,b)
  %3460 = fsub fast float -0.000000e+00, %3350
  %3461 = fsub fast float -0.000000e+00, %3351
  %3462 = fsub fast float -0.000000e+00, %3352
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %3460, float %3461, float %3462)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = fsub fast float -0.000000e+00, %3463
  %3465 = call float @dx.op.dot3.f32(i32 55, float %3334, float %3335, float %3336, float %3460, float %3461, float %3462)  ; Dot3(ax,ay,az,bx,by,bz)
  %3466 = fadd fast float %3465, %3308
  %3467 = fadd fast float %3307, %3465
  %3468 = fsub fast float -0.000000e+00, %3467
  %3469 = fcmp ogt float %3463, -0.000000e+00
  %3470 = select i1 %3469, float %3468, float %3466
  %3471 = call float @dx.op.unary.f32(i32 6, float %3464)  ; FAbs(value)
  %3472 = fdiv fast float 1.000000e+00, %3471
  %3473 = fmul fast float %3470, %3472
  %3474 = call float @dx.op.binary.f32(i32 35, float %3473, float 0.000000e+00)  ; FMax(a,b)
  %3475 = call float @dx.op.binary.f32(i32 36, float %3459, float %3474)  ; FMin(a,b)
  %3476 = call float @dx.op.binary.f32(i32 36, float %3444, float %3475)  ; FMin(a,b)
  %3477 = fmul fast float %3476, %3423
  %3478 = fmul fast float %3476, %3424
  %3479 = fmul fast float %3476, %3425
  %3480 = fadd fast float %3477, %153
  %3481 = fadd fast float %3478, %154
  %3482 = fadd fast float %3479, %155
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 0
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 1
  %3486 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3487 = fadd fast float %3480, %3484
  %3488 = fadd fast float %3481, %3485
  %3489 = fadd fast float %3482, %3486
  %3490 = fcmp fast olt float %3444, %3459
  %3491 = fcmp fast olt float %3444, %3474
  %3492 = and i1 %3490, %3491
  br i1 %3492, label %3496, label %3493

; <label>:3493                                    ; preds = %3429
  %3494 = fcmp fast olt float %3459, %3474
  br i1 %3494, label %3495, label %3496

; <label>:3495                                    ; preds = %3493
  br label %3496

; <label>:3496                                    ; preds = %3495, %3493, %3429
  %3497 = phi float [ 0.000000e+00, %3495 ], [ 0.000000e+00, %3493 ], [ 1.000000e+00, %3429 ]
  %3498 = phi float [ 1.000000e+00, %3495 ], [ 0.000000e+00, %3493 ], [ 0.000000e+00, %3429 ]
  %3499 = phi float [ 0.000000e+00, %3495 ], [ 1.000000e+00, %3493 ], [ 0.000000e+00, %3429 ]
  %3500 = phi float [ %3344, %3495 ], [ %3350, %3493 ], [ %3338, %3429 ]
  %3501 = phi float [ %3345, %3495 ], [ %3351, %3493 ], [ %3339, %3429 ]
  %3502 = phi float [ %3346, %3495 ], [ %3352, %3493 ], [ %3340, %3429 ]
  %3503 = call float @dx.op.unary.f32(i32 6, float %3502)  ; FAbs(value)
  %3504 = fcmp fast olt float %3503, 0x3FE276C8C0000000
  %3505 = select i1 %3504, float 0.000000e+00, float 1.000000e+00
  %3506 = select i1 %3504, float 1.000000e+00, float 0.000000e+00
  %3507 = fmul fast float %3506, %3501
  %3508 = fmul fast float %3505, %3502
  %3509 = fsub fast float %3507, %3508
  %3510 = fmul fast float %3500, %3506
  %3511 = fsub fast float -0.000000e+00, %3510
  %3512 = fmul fast float %3505, %3500
  %3513 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3511, float %3512, float %3509, float %3511, float %3512)  ; Dot3(ax,ay,az,bx,by,bz)
  %3514 = call float @dx.op.unary.f32(i32 25, float %3513)  ; Rsqrt(value)
  %3515 = fmul fast float %3509, %3514
  %3516 = fmul fast float %3514, %3511
  %3517 = fmul fast float %3512, %3514
  %3518 = fmul fast float %3517, %3501
  %3519 = fmul fast float %3516, %3502
  %3520 = fsub fast float %3518, %3519
  %3521 = fmul fast float %3515, %3502
  %3522 = fmul fast float %3517, %3500
  %3523 = fsub fast float %3521, %3522
  %3524 = fmul fast float %3516, %3500
  %3525 = fmul fast float %3515, %3501
  %3526 = fsub fast float %3524, %3525
  %3527 = call float @dx.op.dot3.f32(i32 55, float %3520, float %3523, float %3526, float %3520, float %3523, float %3526)  ; Dot3(ax,ay,az,bx,by,bz)
  %3528 = call float @dx.op.unary.f32(i32 25, float %3527)  ; Rsqrt(value)
  %3529 = fmul fast float %3520, %3528
  %3530 = fmul fast float %3523, %3528
  %3531 = fmul fast float %3526, %3528
  %3532 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float %3515, float %3516, float %3517)  ; Dot3(ax,ay,az,bx,by,bz)
  %3533 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3489, float %3529, float %3530, float %3531)  ; Dot3(ax,ay,az,bx,by,bz)
  %3534 = fmul fast float %3532, 0x3FA99999A0000000
  %3535 = fmul fast float %3533, 0x3FA99999A0000000
  %3536 = call float @dx.op.unary.f32(i32 22, float %3534)  ; Frc(value)
  %3537 = call float @dx.op.unary.f32(i32 22, float %3535)  ; Frc(value)
  %3538 = fadd fast float %3536, 0xBFB99999A0000000
  %3539 = fadd fast float %3537, 0xBFB99999A0000000
  %3540 = call float @dx.op.unary.f32(i32 6, float %3538)  ; FAbs(value)
  %3541 = call float @dx.op.unary.f32(i32 6, float %3539)  ; FAbs(value)
  %3542 = fmul fast float %3540, 1.000000e+01
  %3543 = fmul fast float %3541, 1.000000e+01
  %3544 = call float @dx.op.binary.f32(i32 36, float %3542, float %3543)  ; FMin(a,b)
  %3545 = call float @dx.op.unary.f32(i32 7, float %3544)  ; Saturate(value)
  %3546 = fsub fast float 1.000000e+00, %3545
  %3547 = fmul fast float %3546, %3497
  %3548 = fmul fast float %3546, %3498
  %3549 = fmul fast float %3546, %3499
  %3550 = fsub fast float %3480, %3277
  %3551 = fsub fast float %3481, %3278
  %3552 = fsub fast float %3482, %3279
  br label %3560

; <label>:3553                                    ; preds = %3422
  %3554 = fmul fast float %3423, 8.096000e+03
  %3555 = fmul fast float %3424, 8.096000e+03
  %3556 = fmul fast float %3425, 8.096000e+03
  %3557 = fadd fast float %3554, %153
  %3558 = fadd fast float %3555, %154
  %3559 = fadd fast float %3556, %155
  br label %3560

; <label>:3560                                    ; preds = %3553, %3496
  %3561 = phi float [ %3423, %3553 ], [ %3550, %3496 ]
  %3562 = phi float [ %3424, %3553 ], [ %3551, %3496 ]
  %3563 = phi float [ %3425, %3553 ], [ %3552, %3496 ]
  %3564 = phi float [ %3557, %3553 ], [ %3480, %3496 ]
  %3565 = phi float [ %3558, %3553 ], [ %3481, %3496 ]
  %3566 = phi float [ %3559, %3553 ], [ %3482, %3496 ]
  %3567 = phi float [ 0.000000e+00, %3553 ], [ %3547, %3496 ]
  %3568 = phi float [ 0.000000e+00, %3553 ], [ %3548, %3496 ]
  %3569 = phi float [ 0.000000e+00, %3553 ], [ %3549, %3496 ]
  %3570 = fcmp fast olt float %3296, 1.000000e+00
  br i1 %3570, label %3571, label %3602, !dx.controlflow.hints !125

; <label>:3571                                    ; preds = %3560
  %3572 = fmul fast float %3563, %3294
  %3573 = fmul fast float %3562, %3295
  %3574 = fsub fast float %3572, %3573
  %3575 = fmul fast float %3561, %3295
  %3576 = fmul fast float %3563, %3293
  %3577 = fsub fast float %3575, %3576
  %3578 = fmul fast float %3562, %3293
  %3579 = fmul fast float %3561, %3294
  %3580 = fsub fast float %3578, %3579
  %3581 = fmul fast float %3574, 2.000000e+00
  %3582 = fmul fast float %3577, 2.000000e+00
  %3583 = fmul fast float %3580, 2.000000e+00
  %3584 = fmul fast float %3581, %3296
  %3585 = fmul fast float %3582, %3296
  %3586 = fmul fast float %3583, %3296
  %3587 = fmul fast float %3583, %3294
  %3588 = fmul fast float %3582, %3295
  %3589 = fmul fast float %3581, %3295
  %3590 = fmul fast float %3583, %3293
  %3591 = fmul fast float %3582, %3293
  %3592 = fmul fast float %3581, %3294
  %3593 = fadd fast float %3587, %3561
  %3594 = fadd fast float %3593, %3584
  %3595 = fsub fast float %3594, %3588
  %3596 = fsub fast float %3562, %3590
  %3597 = fadd fast float %3596, %3585
  %3598 = fadd fast float %3597, %3589
  %3599 = fadd fast float %3586, %3563
  %3600 = fsub fast float %3599, %3592
  %3601 = fadd fast float %3600, %3591
  br label %3602

; <label>:3602                                    ; preds = %3571, %3560
  %3603 = phi float [ %3595, %3571 ], [ %3561, %3560 ]
  %3604 = phi float [ %3598, %3571 ], [ %3562, %3560 ]
  %3605 = phi float [ %3601, %3571 ], [ %3563, %3560 ]
  br i1 %3428, label %3606, label %3629

; <label>:3606                                    ; preds = %3602
  %3607 = fsub fast float %3564, %153
  %3608 = fsub fast float %3565, %154
  %3609 = fsub fast float %3566, %155
  %3610 = fsub fast float %3564, %3277
  %3611 = fsub fast float %3565, %3278
  %3612 = fsub fast float %3566, %3279
  %3613 = call float @dx.op.dot3.f32(i32 55, float %3607, float %3608, float %3609, float %3607, float %3608, float %3609)  ; Dot3(ax,ay,az,bx,by,bz)
  %3614 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3611, float %3612, float %3610, float %3611, float %3612)  ; Dot3(ax,ay,az,bx,by,bz)
  %3615 = fadd fast float %3614, 0x3EE4F8B580000000
  %3616 = fdiv fast float %3613, %3615
  %3617 = bitcast float %3616 to i32
  %3618 = ashr i32 %3617, 1
  %3619 = add nsw i32 %3618, 532487669
  %3620 = bitcast i32 %3619 to float
  %3621 = call float @dx.op.unary.f32(i32 7, float %3620)  ; Saturate(value)
  %3622 = fmul fast float %3621, 0x4009981AE0000000
  %3623 = fsub fast float 0x40111BBD80000000, %3622
  %3624 = fmul fast float %3623, %3621
  %3625 = fadd fast float %3624, 0xC0009F6020000000
  %3626 = fmul fast float %3625, %3621
  %3627 = fadd fast float %3626, 1.000000e+00
  %3628 = call float @dx.op.unary.f32(i32 7, float %3627)  ; Saturate(value)
  br label %3632

; <label>:3629                                    ; preds = %3602
  %3630 = icmp ne i32 %3322, -1
  %3631 = zext i1 %3630 to i32
  br label %3632

; <label>:3632                                    ; preds = %3629, %3606
  %3633 = phi float [ 0.000000e+00, %3629 ], [ %3628, %3606 ]
  %3634 = phi i32 [ %3631, %3629 ], [ 0, %3606 ]
  %3635 = fmul float %3633, 5.000000e+00
  %3636 = fsub float 5.000000e+00, %3635
  %3637 = icmp ne i32 %3634, 0
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 3
  %3640 = fadd fast float %3639, %3636
  %3641 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3640)  ; FMax(a,b)
  %3642 = call float @dx.op.unary.f32(i32 6, float %3603)  ; FAbs(value)
  %3643 = call float @dx.op.unary.f32(i32 6, float %3604)  ; FAbs(value)
  %3644 = fadd fast float %3643, %3642
  %3645 = call float @dx.op.unary.f32(i32 6, float %3605)  ; FAbs(value)
  %3646 = fadd fast float %3644, %3645
  %3647 = fcmp fast oeq float %3646, 0.000000e+00
  %3648 = fdiv fast float 1.000000e+00, %3646
  %3649 = select i1 %3647, float 1.000000e+00, float %3648
  %3650 = fmul fast float %3649, %3603
  %3651 = fmul fast float %3649, %3604
  %3652 = call float @dx.op.unary.f32(i32 6, float %3651)  ; FAbs(value)
  %3653 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3654 = fsub fast float 1.000000e+00, %3652
  %3655 = fsub fast float 1.000000e+00, %3653
  %3656 = fcmp fast oge float %3650, 0.000000e+00
  %3657 = fcmp fast oge float %3651, 0.000000e+00
  %3658 = select i1 %3656, float 1.000000e+00, float -1.000000e+00
  %3659 = select i1 %3657, float 1.000000e+00, float -1.000000e+00
  %3660 = fcmp fast ole float %3605, 0.000000e+00
  %3661 = fmul fast float %3658, %3654
  %3662 = fmul fast float %3659, %3655
  %3663 = select i1 %3660, float %3661, float %3650
  %3664 = select i1 %3660, float %3662, float %3651
  %3665 = fmul fast float %3663, 5.000000e-01
  %3666 = fmul fast float %3664, 5.000000e-01
  %3667 = fadd fast float %3665, 5.000000e-01
  %3668 = fadd fast float %3666, 5.000000e-01
  %3669 = uitofp i32 %3320 to float
  %3670 = call float @dx.op.binary.f32(i32 36, float %3641, float 3.000000e+00)  ; FMin(a,b)
  %3671 = fadd fast float %3670, 2.000000e+00
  %3672 = call float @dx.op.unary.f32(i32 21, float %3671)  ; Exp(value)
  %3673 = extractvalue %dx.types.CBufRet.f32 %3638, 1
  %3674 = fmul fast float %3673, %3672
  %3675 = fmul fast float %3674, 2.000000e+00
  %3676 = fsub fast float 1.000000e+00, %3675
  %3677 = fmul fast float %3667, %3676
  %3678 = fmul fast float %3668, %3676
  %3679 = fadd fast float %3677, %3674
  %3680 = fadd fast float %3678, %3674
  %3681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %3679, float %3680, float %3669, float undef, i32 0, i32 0, i32 undef, float %3641)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = extractvalue %dx.types.ResRet.f32 %3681, 1
  %3684 = extractvalue %dx.types.ResRet.f32 %3681, 2
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 3
  %3687 = fmul fast float %3686, %3290
  %3688 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %3687)  ; FMin(a,b)
  %3689 = select i1 %3637, float %3688, float %3687
  %3690 = fmul fast float %3682, %3370
  %3691 = fmul fast float %3690, %3689
  %3692 = fmul fast float %3683, %3370
  %3693 = fmul fast float %3692, %3689
  %3694 = fmul fast float %3684, %3370
  %3695 = fmul fast float %3694, %3689
  %3696 = fadd fast float %3691, %3257
  %3697 = fadd fast float %3693, %3258
  %3698 = fadd fast float %3695, %3259
  %3699 = fsub fast float %3268, %3370
  %3700 = and i32 %3385, 255
  %3701 = uitofp i32 %3700 to float
  %3702 = fptoui float %3701 to i32
  %3703 = icmp eq i32 %3380, 1
  %3704 = zext i1 %3703 to i32
  %3705 = add i32 %3704, %3702
  %3706 = uitofp i32 %3705 to float
  %3707 = fptoui float %3706 to i32
  %3708 = shl i32 %3707, 8
  %3709 = and i32 %3708, 65280
  %3710 = or i32 %3709, %3388
  %3711 = fmul fast float %3567, %3370
  %3712 = fmul fast float %3568, %3370
  %3713 = fmul fast float %3569, %3370
  %3714 = fadd fast float %3711, %3264
  %3715 = fadd fast float %3712, %3265
  %3716 = fadd fast float %3713, %3266
  %3717 = fmul fast float %3669, 0x3FE3C6EF40000000
  %3718 = call float @dx.op.unary.f32(i32 22, float %3717)  ; Frc(value)
  %3719 = fadd fast float %3718, 0x3FE5555560000000
  %3720 = fadd fast float %3718, 0x3FD5555560000000
  %3721 = fsub fast float -0.000000e+00, %3718
  %3722 = fsub fast float -0.000000e+00, %3719
  %3723 = fsub fast float -0.000000e+00, %3720
  %3724 = fcmp fast oge float %3718, %3721
  %3725 = fcmp fast oge float %3719, %3722
  %3726 = fcmp fast oge float %3720, %3723
  %3727 = call float @dx.op.unary.f32(i32 6, float %3718)  ; FAbs(value)
  %3728 = call float @dx.op.unary.f32(i32 6, float %3719)  ; FAbs(value)
  %3729 = call float @dx.op.unary.f32(i32 6, float %3720)  ; FAbs(value)
  %3730 = call float @dx.op.unary.f32(i32 22, float %3727)  ; Frc(value)
  %3731 = call float @dx.op.unary.f32(i32 22, float %3728)  ; Frc(value)
  %3732 = call float @dx.op.unary.f32(i32 22, float %3729)  ; Frc(value)
  %3733 = fsub fast float -0.000000e+00, %3730
  %3734 = fsub fast float -0.000000e+00, %3731
  %3735 = fsub fast float -0.000000e+00, %3732
  %3736 = select i1 %3724, float %3730, float %3733
  %3737 = select i1 %3725, float %3731, float %3734
  %3738 = select i1 %3726, float %3732, float %3735
  %3739 = fmul fast float %3736, 6.000000e+00
  %3740 = fmul fast float %3737, 6.000000e+00
  %3741 = fmul fast float %3738, 6.000000e+00
  %3742 = fadd fast float %3739, -3.000000e+00
  %3743 = fadd fast float %3740, -3.000000e+00
  %3744 = fadd fast float %3741, -3.000000e+00
  %3745 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3746 = call float @dx.op.unary.f32(i32 6, float %3743)  ; FAbs(value)
  %3747 = call float @dx.op.unary.f32(i32 6, float %3744)  ; FAbs(value)
  %3748 = fadd fast float %3745, -1.000000e+00
  %3749 = fadd fast float %3746, -1.000000e+00
  %3750 = fadd fast float %3747, -1.000000e+00
  %3751 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3752 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  %3753 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  %3754 = fmul fast float %3751, %3370
  %3755 = fmul fast float %3752, %3370
  %3756 = fmul fast float %3753, %3370
  %3757 = fadd fast float %3754, %3260
  %3758 = fadd fast float %3755, %3261
  %3759 = fadd fast float %3756, %3262
  %3760 = icmp eq i32 %3320, 0
  %3761 = select i1 %3760, i32 1, i32 %3263
  %3762 = icmp eq i32 %3267, 0
  br i1 %3762, label %3391, label %3763

; <label>:3763                                    ; preds = %3632
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = bitcast float %3765 to i32
  %3767 = lshr i32 %3766, 8
  %3768 = and i32 %3767, 255
  %3769 = uitofp i32 %3768 to float
  %3770 = fptoui float %3769 to i32
  %3771 = icmp eq i32 %3770, 16
  %3772 = bitcast float %3687 to i32
  %3773 = select i1 %3771, i32 %3772, i32 %3256
  %3774 = icmp eq i32 %3770, 17
  %3775 = select i1 %3774, i32 1065353216, i32 %3773
  %3776 = icmp eq i32 %3770, 18
  %3777 = bitcast float %3689 to i32
  %3778 = select i1 %3776, i32 %3777, i32 %3775
  br label %3391

; <label>:3779                                    ; preds = %3391
  br label %3780

; <label>:3780                                    ; preds = %3779, %3214
  %3781 = phi i32 [ %3215, %3214 ], [ %3392, %3779 ]
  %3782 = phi i32 [ %3216, %3214 ], [ %3393, %3779 ]
  %3783 = phi float [ %3217, %3214 ], [ %3394, %3779 ]
  %3784 = phi float [ %3218, %3214 ], [ %3395, %3779 ]
  %3785 = phi float [ %3219, %3214 ], [ %3396, %3779 ]
  %3786 = phi float [ %3220, %3214 ], [ %3397, %3779 ]
  %3787 = phi float [ %3221, %3214 ], [ %3398, %3779 ]
  %3788 = phi float [ %3222, %3214 ], [ %3399, %3779 ]
  %3789 = phi i32 [ %3223, %3214 ], [ %3400, %3779 ]
  %3790 = phi float [ %3224, %3214 ], [ %3401, %3779 ]
  %3791 = phi float [ %3225, %3214 ], [ %3402, %3779 ]
  %3792 = phi float [ %3226, %3214 ], [ %3403, %3779 ]
  %3793 = phi i32 [ %3227, %3214 ], [ %3404, %3779 ]
  %3794 = phi float [ %3228, %3214 ], [ %3405, %3779 ]
  %3795 = add i32 %3229, 1
  %3796 = icmp ugt i32 %3795, %3211
  br i1 %3796, label %3797, label %3214, !llvm.loop !126

; <label>:3797                                    ; preds = %3780
  br label %3798

; <label>:3798                                    ; preds = %3797, %3162
  %3799 = phi i32 [ %1836, %3162 ], [ %3781, %3797 ]
  %3800 = phi i32 [ %3153, %3162 ], [ %3782, %3797 ]
  %3801 = phi float [ 0.000000e+00, %3162 ], [ %3783, %3797 ]
  %3802 = phi float [ 0.000000e+00, %3162 ], [ %3784, %3797 ]
  %3803 = phi float [ 0.000000e+00, %3162 ], [ %3785, %3797 ]
  %3804 = phi float [ 0.000000e+00, %3162 ], [ %3786, %3797 ]
  %3805 = phi float [ 0.000000e+00, %3162 ], [ %3787, %3797 ]
  %3806 = phi float [ 0.000000e+00, %3162 ], [ %3788, %3797 ]
  %3807 = phi i32 [ 0, %3162 ], [ %3789, %3797 ]
  %3808 = phi float [ 0.000000e+00, %3162 ], [ %3790, %3797 ]
  %3809 = phi float [ 0.000000e+00, %3162 ], [ %3791, %3797 ]
  %3810 = phi float [ 0.000000e+00, %3162 ], [ %3792, %3797 ]
  %3811 = call float @dx.op.dot3.f32(i32 55, float %3801, float %3802, float %3803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3812 = select i1 %2046, float %3811, float %3802
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 0
  %3815 = bitcast float %3814 to i32
  %3816 = lshr i32 %3815, 8
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = fptoui float %3818 to i32
  %3820 = icmp eq i32 %3819, 13
  br i1 %3820, label %3821, label %3841

; <label>:3821                                    ; preds = %3798
  %3822 = fadd fast float %3804, 1.000000e+00
  %3823 = fadd fast float %3805, 1.000000e+00
  %3824 = fadd fast float %3806, 1.000000e+00
  %3825 = fmul fast float %3822, 5.000000e-01
  %3826 = fmul fast float %3823, 5.000000e-01
  %3827 = fmul fast float %3824, 5.000000e-01
  %3828 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3829 = call float @dx.op.unary.f32(i32 7, float %3826)  ; Saturate(value)
  %3830 = call float @dx.op.unary.f32(i32 7, float %3827)  ; Saturate(value)
  %3831 = fmul fast float %3828, 1.023000e+03
  %3832 = fmul fast float %3829, 1.023000e+03
  %3833 = fmul fast float %3830, 1.023000e+03
  %3834 = fptoui float %3831 to i32
  %3835 = fptoui float %3832 to i32
  %3836 = fptoui float %3833 to i32
  %3837 = shl i32 %3835, 10
  %3838 = or i32 %3837, %3834
  %3839 = shl i32 %3836, 20
  %3840 = or i32 %3838, %3839
  br label %3841

; <label>:3841                                    ; preds = %3821, %3798
  %3842 = phi i32 [ %3840, %3821 ], [ %3800, %3798 ]
  %3843 = icmp eq i32 %3819, 14
  %3844 = select i1 %3843, i32 %3807, i32 %3842
  %3845 = icmp eq i32 %3819, 22
  br i1 %3845, label %3846, label %3866

; <label>:3846                                    ; preds = %3841
  %3847 = fadd fast float %3808, 1.000000e+00
  %3848 = fadd fast float %3809, 1.000000e+00
  %3849 = fadd fast float %3810, 1.000000e+00
  %3850 = fmul fast float %3847, 5.000000e-01
  %3851 = fmul fast float %3848, 5.000000e-01
  %3852 = fmul fast float %3849, 5.000000e-01
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  %3855 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3856 = fmul fast float %3853, 1.023000e+03
  %3857 = fmul fast float %3854, 1.023000e+03
  %3858 = fmul fast float %3855, 1.023000e+03
  %3859 = fptoui float %3856 to i32
  %3860 = fptoui float %3857 to i32
  %3861 = fptoui float %3858 to i32
  %3862 = shl i32 %3860, 10
  %3863 = or i32 %3862, %3859
  %3864 = shl i32 %3861, 20
  %3865 = or i32 %3863, %3864
  br label %3866

; <label>:3866                                    ; preds = %3846, %3841
  %3867 = phi i32 [ %3865, %3846 ], [ %3844, %3841 ]
  %3868 = fmul fast float %3801, 0x3FD45F3060000000
  %3869 = select i1 %2046, float 0.000000e+00, float %3868
  %3870 = fmul fast float %3812, 0x3FD45F3060000000
  %3871 = fmul fast float %3803, 0x3FD45F3060000000
  %3872 = select i1 %2046, float 0.000000e+00, float %3871
  br label %3873

; <label>:3873                                    ; preds = %3866, %3152
  %3874 = phi i32 [ %3799, %3866 ], [ %1836, %3152 ]
  %3875 = phi i32 [ %3867, %3866 ], [ %3153, %3152 ]
  %3876 = phi float [ %3869, %3866 ], [ %3118, %3152 ]
  %3877 = phi float [ %3870, %3866 ], [ %3119, %3152 ]
  %3878 = phi float [ %3872, %3866 ], [ %3120, %3152 ]
  %3879 = phi i1 [ false, %3866 ], [ true, %3152 ]
  %3880 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3881 = extractvalue %dx.types.CBufRet.i32 %3880, 0
  %3882 = and i32 %3881, 524288
  %3883 = icmp ne i32 %3882, 0
  %3884 = select i1 %3883, float 0.000000e+00, float 1.000000e+00
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = bitcast float %3886 to i32
  %3888 = and i32 %3887, 255
  %3889 = uitofp i32 %3888 to float
  %3890 = fptoui float %3889 to i32
  %3891 = icmp eq i32 %3890, 38
  %3892 = select i1 %3891, i32 0, i32 %3875
  %3893 = lshr i32 %3887, 8
  %3894 = and i32 %3893, 255
  %3895 = uitofp i32 %3894 to float
  %3896 = fptoui float %3895 to i32
  %3897 = icmp eq i32 %3896, 24
  br i1 %3897, label %3898, label %3909

; <label>:3898                                    ; preds = %3873
  %3899 = fadd fast float %2083, 1.000000e+00
  %3900 = fmul fast float %3899, 5.000000e-01
  %3901 = select i1 %2085, float %3900, float 1.000000e+00
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fmul fast float %3902, 1.023000e+03
  %3904 = fptoui float %3903 to i32
  %3905 = shl i32 %3904, 10
  %3906 = or i32 %3905, %3904
  %3907 = shl i32 %3904, 20
  %3908 = or i32 %3906, %3907
  br label %3909

; <label>:3909                                    ; preds = %3898, %3873
  %3910 = phi i32 [ %3892, %3873 ], [ %3908, %3898 ]
  %3911 = xor i1 %3883, true
  %3912 = zext i1 %3911 to i32
  br i1 %3883, label %3913, label %4197

; <label>:3913                                    ; preds = %3909
  %3914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3915 = extractvalue %dx.types.CBufRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.CBufRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.CBufRet.f32 %3914, 3
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.CBufRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3925 = extractvalue %dx.types.CBufRet.f32 %3924, 0
  %3926 = extractvalue %dx.types.CBufRet.f32 %3924, 1
  %3927 = extractvalue %dx.types.CBufRet.f32 %3924, 2
  %3928 = extractvalue %dx.types.CBufRet.f32 %3924, 3
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3932 = extractvalue %dx.types.CBufRet.f32 %3929, 2
  %3933 = extractvalue %dx.types.CBufRet.f32 %3929, 3
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = extractvalue %dx.types.CBufRet.f32 %3934, 1
  %3937 = extractvalue %dx.types.CBufRet.f32 %3934, 2
  %3938 = extractvalue %dx.types.CBufRet.f32 %3934, 3
  %3939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3940 = extractvalue %dx.types.CBufRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.CBufRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.CBufRet.f32 %3939, 2
  %3943 = extractvalue %dx.types.CBufRet.f32 %3939, 3
  %3944 = call float @dx.op.dot3.f32(i32 55, float %3940, float %3941, float %3942, float %2058, float %2059, float %2060)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3946 = extractvalue %dx.types.CBufRet.f32 %3945, 1
  %3947 = extractvalue %dx.types.CBufRet.f32 %3945, 0
  %3948 = select i1 %115, float %3947, float %3946
  %3949 = fmul fast float %3944, 8.000000e+00
  %3950 = fmul fast float %3949, %3948
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fcmp fast ogt float %3951, 0.000000e+00
  br i1 %3952, label %3953, label %4171, !dx.controlflow.hints !127

; <label>:3953                                    ; preds = %3913
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3956 = fmul fast float %1336, 2.000000e+00
  %3957 = fmul fast float %1337, 2.000000e+00
  %3958 = fadd fast float %3956, -1.000000e+00
  %3959 = fadd fast float %3957, -1.000000e+00
  %3960 = fmul fast float %3955, %3958
  %3961 = fmul fast float %3955, %3959
  %3962 = fadd fast float %3960, %98
  %3963 = fadd fast float %3961, %99
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %3966 = extractvalue %dx.types.CBufRet.f32 %3964, 3
  %3967 = fmul fast float %3962, %3965
  %3968 = fmul fast float %3963, %3966
  %3969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %62, float %3967, float %3968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3970 = extractvalue %dx.types.ResRet.f32 %3969, 0
  %3971 = fcmp fast une float %3970, 0xFFF0000000000000
  %3972 = fcmp fast une float %3970, 0x7FF0000000000000
  %3973 = and i1 %3971, %3972
  %3974 = call float @dx.op.unary.f32(i32 6, float %3970)  ; FAbs(value)
  %3975 = fsub fast float 1.000000e+00, %3974
  %3976 = select i1 %3973, float 1.000000e+00, float 0.000000e+00
  %3977 = fmul fast float %3976, %3951
  %3978 = fcmp fast ogt float %3977, 0.000000e+00
  br i1 %3978, label %3979, label %4171, !dx.controlflow.hints !128

; <label>:3979                                    ; preds = %3953
  %3980 = fmul fast float %3915, %153
  %3981 = call float @dx.op.tertiary.f32(i32 46, float %154, float %3916, float %3980)  ; FMad(a,b,c)
  %3982 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3917, float %3981)  ; FMad(a,b,c)
  %3983 = fadd fast float %3982, %3918
  %3984 = fmul fast float %3920, %153
  %3985 = call float @dx.op.tertiary.f32(i32 46, float %154, float %3921, float %3984)  ; FMad(a,b,c)
  %3986 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3922, float %3985)  ; FMad(a,b,c)
  %3987 = fadd fast float %3986, %3923
  %3988 = fmul fast float %3925, %153
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %154, float %3926, float %3988)  ; FMad(a,b,c)
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3927, float %3989)  ; FMad(a,b,c)
  %3991 = fadd fast float %3990, %3928
  %3992 = fdiv fast float 1.000000e+00, %3991
  %3993 = fmul fast float %3992, %3983
  %3994 = fmul fast float %3992, %3987
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %3998 = fmul fast float %3993, %3996
  %3999 = fmul fast float %3994, %3997
  %4000 = extractvalue %dx.types.CBufRet.f32 %3995, 2
  %4001 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %4002 = fadd fast float %3998, %4000
  %4003 = fadd fast float %3999, %4001
  %4004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4005 = extractvalue %dx.types.CBufRet.f32 %4004, 3
  %4006 = fmul fast float %4005, %2058
  %4007 = fmul fast float %4005, %2059
  %4008 = fmul fast float %4005, %2060
  %4009 = fadd fast float %4006, %153
  %4010 = fadd fast float %4007, %154
  %4011 = fadd fast float %4008, %155
  %4012 = fmul fast float %4009, %3915
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %3916, float %4012)  ; FMad(a,b,c)
  %4014 = call float @dx.op.tertiary.f32(i32 46, float %4011, float %3917, float %4013)  ; FMad(a,b,c)
  %4015 = fadd fast float %4014, %3918
  %4016 = fmul fast float %4009, %3920
  %4017 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %3921, float %4016)  ; FMad(a,b,c)
  %4018 = call float @dx.op.tertiary.f32(i32 46, float %4011, float %3922, float %4017)  ; FMad(a,b,c)
  %4019 = fadd fast float %4018, %3923
  %4020 = fmul fast float %4009, %3925
  %4021 = call float @dx.op.tertiary.f32(i32 46, float %4010, float %3926, float %4020)  ; FMad(a,b,c)
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %4011, float %3927, float %4021)  ; FMad(a,b,c)
  %4023 = fadd fast float %4022, %3928
  %4024 = fdiv fast float 1.000000e+00, %4023
  %4025 = fmul fast float %4024, %4015
  %4026 = fmul fast float %4024, %4019
  %4027 = fmul fast float %4002, 2.000000e+00
  %4028 = fadd fast float %4027, -1.000000e+00
  %4029 = call float @dx.op.unary.f32(i32 6, float %4028)  ; FAbs(value)
  %4030 = fmul fast float %4029, 5.000000e+00
  %4031 = fadd fast float %4030, -4.000000e+00
  %4032 = call float @dx.op.unary.f32(i32 7, float %4031)  ; Saturate(value)
  %4033 = fsub fast float %3993, %4025
  %4034 = fmul fast float %3996, %4033
  %4035 = fmul fast float %4034, %4032
  %4036 = fsub fast float %4025, %3993
  %4037 = fmul fast float %3996, %4036
  %4038 = fadd fast float %4037, %4035
  %4039 = fsub fast float %4026, %3994
  %4040 = fmul fast float %3997, %4039
  %4041 = fmul fast float %4038, %3975
  %4042 = fmul fast float %4040, %3975
  %4043 = fadd fast float %4041, %4002
  %4044 = fadd fast float %4042, %4003
  %4045 = fsub fast float %4024, %3992
  %4046 = fmul fast float %4045, %3975
  %4047 = fadd fast float %4046, %3992
  %4048 = fdiv fast float 1.000000e+00, %4047
  %4049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %4043, float %4044, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.ResRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.ResRet.f32 %4049, 2
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4055 = fmul fast float %4054, %4050
  %4056 = fmul fast float %4054, %4051
  %4057 = fmul fast float %4054, %4052
  %4058 = call float @dx.op.binary.f32(i32 35, float %4048, float 0x3810000000000000)  ; FMax(a,b)
  %4059 = fdiv fast float %3991, %4058
  %4060 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4065 = fadd fast float %4062, %153
  %4066 = fadd fast float %4063, %154
  %4067 = fadd fast float %4064, %155
  %4068 = fmul fast float %4065, %3930
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %4066, float %3931, float %4068)  ; FMad(a,b,c)
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4067, float %3932, float %4069)  ; FMad(a,b,c)
  %4071 = fadd fast float %4070, %3933
  %4072 = fmul fast float %4065, %3935
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %4066, float %3936, float %4072)  ; FMad(a,b,c)
  %4074 = call float @dx.op.tertiary.f32(i32 46, float %4067, float %3937, float %4073)  ; FMad(a,b,c)
  %4075 = fadd fast float %4074, %3938
  %4076 = fmul fast float %4065, %3940
  %4077 = call float @dx.op.tertiary.f32(i32 46, float %4066, float %3941, float %4076)  ; FMad(a,b,c)
  %4078 = call float @dx.op.tertiary.f32(i32 46, float %4067, float %3942, float %4077)  ; FMad(a,b,c)
  %4079 = fadd fast float %4078, %3943
  %4080 = fdiv fast float 1.000000e+00, %4079
  %4081 = fmul fast float %4080, %4071
  %4082 = fmul fast float %4080, %4075
  %4083 = fmul fast float %4081, %3996
  %4084 = fmul fast float %4082, %3997
  %4085 = fadd fast float %4083, %4000
  %4086 = fadd fast float %4084, %4001
  %4087 = fadd fast float %4006, %4065
  %4088 = fadd fast float %4007, %4066
  %4089 = fadd fast float %4008, %4067
  %4090 = fmul fast float %4087, %3930
  %4091 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %3931, float %4090)  ; FMad(a,b,c)
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %3932, float %4091)  ; FMad(a,b,c)
  %4093 = fadd fast float %4092, %3933
  %4094 = fmul fast float %4087, %3935
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %3936, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %3937, float %4095)  ; FMad(a,b,c)
  %4097 = fadd fast float %4096, %3938
  %4098 = fmul fast float %4087, %3940
  %4099 = call float @dx.op.tertiary.f32(i32 46, float %4088, float %3941, float %4098)  ; FMad(a,b,c)
  %4100 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %3942, float %4099)  ; FMad(a,b,c)
  %4101 = fadd fast float %4100, %3943
  %4102 = fdiv fast float 1.000000e+00, %4101
  %4103 = fmul fast float %4102, %4093
  %4104 = fmul fast float %4102, %4097
  %4105 = fmul fast float %4085, 2.000000e+00
  %4106 = fadd fast float %4105, -1.000000e+00
  %4107 = call float @dx.op.unary.f32(i32 6, float %4106)  ; FAbs(value)
  %4108 = fmul fast float %4107, 5.000000e+00
  %4109 = fadd fast float %4108, -4.000000e+00
  %4110 = call float @dx.op.unary.f32(i32 7, float %4109)  ; Saturate(value)
  %4111 = fsub fast float %4081, %4103
  %4112 = fmul fast float %3996, %4111
  %4113 = fmul fast float %4112, %4110
  %4114 = fsub fast float %4103, %4081
  %4115 = fmul fast float %3996, %4114
  %4116 = fadd fast float %4115, %4113
  %4117 = fsub fast float %4104, %4082
  %4118 = fmul fast float %3997, %4117
  %4119 = fmul fast float %4116, %3975
  %4120 = fmul fast float %4118, %3975
  %4121 = fadd fast float %4119, %4085
  %4122 = fadd fast float %4120, %4086
  %4123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %61, float %4121, float %4122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.ResRet.f32 %4123, 1
  %4126 = extractvalue %dx.types.ResRet.f32 %4123, 2
  %4127 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4128 = fmul fast float %4127, %4124
  %4129 = fmul fast float %4127, %4125
  %4130 = fmul fast float %4127, %4126
  %4131 = and i32 %1942, 255
  %4132 = uitofp i32 %4131 to float
  %4133 = fmul fast float %4132, 0x3F70101020000000
  %4134 = fmul fast float %4133, %4060
  %4135 = extractvalue %dx.types.CBufRet.f32 %3945, 2
  %4136 = fadd fast float %4135, %4134
  %4137 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4138 = call float @dx.op.binary.f32(i32 35, float %4055, float 0x3810000000000000)  ; FMax(a,b)
  %4139 = call float @dx.op.binary.f32(i32 35, float %4056, float 0x3810000000000000)  ; FMax(a,b)
  %4140 = call float @dx.op.binary.f32(i32 35, float %4057, float 0x3810000000000000)  ; FMax(a,b)
  %4141 = call float @dx.op.unary.f32(i32 23, float %4138)  ; Log(value)
  %4142 = call float @dx.op.unary.f32(i32 23, float %4139)  ; Log(value)
  %4143 = call float @dx.op.unary.f32(i32 23, float %4140)  ; Log(value)
  %4144 = call float @dx.op.binary.f32(i32 35, float %4128, float 0x3810000000000000)  ; FMax(a,b)
  %4145 = call float @dx.op.binary.f32(i32 35, float %4129, float 0x3810000000000000)  ; FMax(a,b)
  %4146 = call float @dx.op.binary.f32(i32 35, float %4130, float 0x3810000000000000)  ; FMax(a,b)
  %4147 = call float @dx.op.unary.f32(i32 23, float %4144)  ; Log(value)
  %4148 = call float @dx.op.unary.f32(i32 23, float %4145)  ; Log(value)
  %4149 = call float @dx.op.unary.f32(i32 23, float %4146)  ; Log(value)
  %4150 = fsub fast float %4141, %4147
  %4151 = fsub fast float %4142, %4148
  %4152 = fsub fast float %4143, %4149
  %4153 = fmul fast float %4150, %4137
  %4154 = fmul fast float %4151, %4137
  %4155 = fmul fast float %4152, %4137
  %4156 = fadd fast float %4153, %4147
  %4157 = fadd fast float %4154, %4148
  %4158 = fadd fast float %4155, %4149
  %4159 = call float @dx.op.unary.f32(i32 21, float %4156)  ; Exp(value)
  %4160 = call float @dx.op.unary.f32(i32 21, float %4157)  ; Exp(value)
  %4161 = call float @dx.op.unary.f32(i32 21, float %4158)  ; Exp(value)
  %4162 = select i1 %2046, float 0.000000e+00, float %4160
  %4163 = select i1 %2046, float 0.000000e+00, float %4161
  %4164 = fmul fast float %4122, 2.000000e+00
  %4165 = fadd fast float %4164, -1.000000e+00
  %4166 = fmul fast float %4165, %4165
  %4167 = fsub fast float 1.000000e+00, %4166
  %4168 = call float @dx.op.unary.f32(i32 7, float %4167)  ; Saturate(value)
  %4169 = call float @dx.op.unary.f32(i32 7, float %4168)  ; Saturate(value)
  %4170 = fmul fast float %4169, %3977
  br label %4171

; <label>:4171                                    ; preds = %3979, %3953, %3913
  %4172 = phi float [ %4159, %3979 ], [ 0.000000e+00, %3953 ], [ 0.000000e+00, %3913 ]
  %4173 = phi float [ %4162, %3979 ], [ 0.000000e+00, %3953 ], [ 0.000000e+00, %3913 ]
  %4174 = phi float [ %4163, %3979 ], [ 0.000000e+00, %3953 ], [ 0.000000e+00, %3913 ]
  %4175 = phi float [ %4170, %3979 ], [ 0.000000e+00, %3953 ], [ 0.000000e+00, %3913 ]
  %4176 = phi float [ %3975, %3979 ], [ %3975, %3953 ], [ 0.000000e+00, %3913 ]
  %4177 = phi float [ %4170, %3979 ], [ %3977, %3953 ], [ 0.000000e+00, %3913 ]
  %4178 = icmp eq i32 %3896, 25
  br i1 %4178, label %4179, label %4182

; <label>:4179                                    ; preds = %4171
  %4180 = call float @dx.op.unary.f32(i32 6, float %4176)  ; FAbs(value)
  %4181 = bitcast float %4180 to i32
  br label %4182

; <label>:4182                                    ; preds = %4179, %4171
  %4183 = phi i32 [ %4181, %4179 ], [ %3910, %4171 ]
  %4184 = icmp eq i32 %3896, 26
  %4185 = bitcast float %4177 to i32
  %4186 = select i1 %4184, i32 %4185, i32 %4183
  %4187 = icmp eq i32 %3896, 27
  %4188 = select i1 %4187, i32 0, i32 %4186
  %4189 = fcmp fast olt float %4175, 1.000000e+00
  %4190 = or i1 %4189, %3911
  %4191 = zext i1 %4190 to i32
  %4192 = fmul fast float %4175, %3884
  %4193 = fsub fast float %4175, %4192
  %4194 = fmul fast float %4193, %4172
  %4195 = fmul fast float %4193, %4173
  %4196 = fmul fast float %4193, %4174
  br label %4197

; <label>:4197                                    ; preds = %4182, %3909
  %4198 = phi i32 [ %3910, %3909 ], [ %4188, %4182 ]
  %4199 = phi float [ 0.000000e+00, %3909 ], [ %4193, %4182 ]
  %4200 = phi float [ 0.000000e+00, %3909 ], [ %4194, %4182 ]
  %4201 = phi float [ 0.000000e+00, %3909 ], [ %4195, %4182 ]
  %4202 = phi float [ 0.000000e+00, %3909 ], [ %4196, %4182 ]
  %4203 = phi i32 [ %3912, %3909 ], [ %4191, %4182 ]
  %4204 = icmp ne i32 %4203, 0
  %4205 = add i32 %3896, -13
  %4206 = icmp ult i32 %4205, 2
  %4207 = or i1 %4206, %4204
  %4208 = icmp eq i32 %3896, 22
  %4209 = or i1 %4207, %4208
  br i1 %4209, label %4210, label %4944

; <label>:4210                                    ; preds = %4197
  %4211 = select i1 %3879, float %3080, float 1.000000e+00
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4215 = fmul fast float %4213, %98
  %4216 = fmul fast float %4214, %99
  %4217 = fptoui float %4215 to i32
  %4218 = fptoui float %4216 to i32
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4223 = fadd fast float %87, -4.000000e+00
  %4224 = call float @dx.op.binary.f32(i32 35, float %4223, float 0.000000e+00)  ; FMax(a,b)
  %4225 = fadd fast float %4224, %4220
  %4226 = fmul fast float %4225, %4221
  %4227 = call float @dx.op.unary.f32(i32 23, float %4226)  ; Log(value)
  %4228 = fmul fast float %4227, %4222
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 2
  %4231 = fmul fast float %4228, %4230
  %4232 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4234 = extractvalue %dx.types.CBufRet.i32 %4233, 1
  %4235 = add i32 %4234, -1
  %4236 = uitofp i32 %4234 to float
  %4237 = fmul fast float %4236, %4232
  %4238 = fptoui float %4237 to i32
  %4239 = call i32 @dx.op.binary.i32(i32 40, i32 %4238, i32 %4235)  ; UMin(a,b)
  %4240 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.i32 %4240, 2
  %4242 = extractvalue %dx.types.CBufRet.i32 %4240, 3
  %4243 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4218, i32 %4241, i32 %4217)  ; UMad(a,b,c)
  %4244 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4239, i32 %4242, i32 %4243)  ; UMad(a,b,c)
  %4245 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %4246 = fptoui float %4245 to i32
  %4247 = lshr i32 %4246, 5
  %4248 = call i32 @dx.op.binary.i32(i32 40, i32 %4247, i32 8191)  ; UMin(a,b)
  %4249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.i32 %4249, 2
  %4251 = add nsw i32 %4250, -1
  %4252 = call i32 @dx.op.binary.i32(i32 37, i32 %4251, i32 0)  ; IMax(a,b)
  %4253 = shl i32 %4248, 2
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = lshr i32 %4255, 16
  %4257 = and i32 %4255, 65535
  %4258 = lshr i32 %4255, 21
  %4259 = lshr i32 %4257, 5
  %4260 = call i32 @dx.op.binary.i32(i32 40, i32 %4259, i32 %4252)  ; UMin(a,b)
  %4261 = icmp ugt i32 %4258, %4260
  br i1 %4261, label %4856, label %4262

; <label>:4262                                    ; preds = %4210
  br label %4263

; <label>:4263                                    ; preds = %4838, %4262
  %4264 = phi i32 [ %4839, %4838 ], [ %3874, %4262 ]
  %4265 = phi i32 [ %4840, %4838 ], [ %4198, %4262 ]
  %4266 = phi float [ %4841, %4838 ], [ 0.000000e+00, %4262 ]
  %4267 = phi float [ %4842, %4838 ], [ 0.000000e+00, %4262 ]
  %4268 = phi float [ %4843, %4838 ], [ 0.000000e+00, %4262 ]
  %4269 = phi float [ %4844, %4838 ], [ 0.000000e+00, %4262 ]
  %4270 = phi float [ %4845, %4838 ], [ 0.000000e+00, %4262 ]
  %4271 = phi float [ %4846, %4838 ], [ 0.000000e+00, %4262 ]
  %4272 = phi i32 [ %4847, %4838 ], [ 0, %4262 ]
  %4273 = phi float [ %4848, %4838 ], [ 0.000000e+00, %4262 ]
  %4274 = phi float [ %4849, %4838 ], [ 0.000000e+00, %4262 ]
  %4275 = phi float [ %4850, %4838 ], [ 0.000000e+00, %4262 ]
  %4276 = phi i32 [ %4851, %4838 ], [ 1, %4262 ]
  %4277 = phi float [ %4852, %4838 ], [ 1.000000e+00, %4262 ]
  %4278 = phi i32 [ %4853, %4838 ], [ %4258, %4262 ]
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 2
  %4281 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4244, i32 %4280, i32 %4278)  ; UMad(a,b,c)
  %4282 = shl i32 %4281, 2
  %4283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.i32 %4283, 0
  %4285 = shl i32 %4278, 5
  %4286 = sub nsw i32 %4256, %4285
  %4287 = call i32 @dx.op.binary.i32(i32 37, i32 %4286, i32 0)  ; IMax(a,b)
  %4288 = call i32 @dx.op.binary.i32(i32 38, i32 %4287, i32 31)  ; IMin(a,b)
  %4289 = sub nsw i32 1, %4256
  %4290 = add nsw i32 %4289, %4257
  %4291 = call i32 @dx.op.binary.i32(i32 37, i32 %4290, i32 0)  ; IMax(a,b)
  %4292 = call i32 @dx.op.binary.i32(i32 38, i32 %4291, i32 32)  ; IMin(a,b)
  %4293 = and i32 %4292, 31
  %4294 = shl i32 -1, %4293
  %4295 = xor i32 %4294, -1
  %4296 = and i32 %4288, 31
  %4297 = shl i32 %4295, %4296
  %4298 = icmp eq i32 %4292, 32
  %4299 = select i1 %4298, i32 -1, i32 %4297
  %4300 = and i32 %4299, %4284
  %4301 = icmp eq i32 %4300, 0
  br i1 %4301, label %4838, label %4302

; <label>:4302                                    ; preds = %4263
  br label %4303

; <label>:4303                                    ; preds = %4440, %4302
  %4304 = phi i32 [ %4441, %4440 ], [ %4264, %4302 ]
  %4305 = phi i32 [ %4442, %4440 ], [ %4265, %4302 ]
  %4306 = phi float [ %4443, %4440 ], [ %4266, %4302 ]
  %4307 = phi float [ %4444, %4440 ], [ %4267, %4302 ]
  %4308 = phi float [ %4445, %4440 ], [ %4268, %4302 ]
  %4309 = phi float [ %4446, %4440 ], [ %4269, %4302 ]
  %4310 = phi float [ %4447, %4440 ], [ %4270, %4302 ]
  %4311 = phi float [ %4448, %4440 ], [ %4271, %4302 ]
  %4312 = phi i32 [ %4449, %4440 ], [ %4272, %4302 ]
  %4313 = phi float [ %4450, %4440 ], [ %4273, %4302 ]
  %4314 = phi float [ %4451, %4440 ], [ %4274, %4302 ]
  %4315 = phi float [ %4452, %4440 ], [ %4275, %4302 ]
  %4316 = phi i32 [ %4453, %4440 ], [ %4276, %4302 ]
  %4317 = phi float [ %4454, %4440 ], [ %4277, %4302 ]
  %4318 = phi i32 [ %4323, %4440 ], [ %4300, %4302 ]
  %4319 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4318)  ; FirstbitLo(value)
  %4320 = add i32 %4319, %4285
  %4321 = and i32 %4319, 31
  %4322 = shl i32 1, %4321
  %4323 = xor i32 %4322, %4318
  %4324 = mul i32 %4320, 72
  %4325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4324, i32 undef)  ; BufferLoad(srv,index,wot)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = extractvalue %dx.types.ResRet.f32 %4325, 1
  %4328 = extractvalue %dx.types.ResRet.f32 %4325, 2
  %4329 = add i32 %4324, 12
  %4330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %38, i32 %4329, i32 undef)  ; BufferLoad(srv,index,wot)
  %4331 = extractvalue %dx.types.ResRet.i32 %4330, 0
  %4332 = add i32 %4324, 16
  %4333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4337 = add i32 %4324, 28
  %4338 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = add i32 %4324, 32
  %4341 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.f32 %4341, 0
  %4343 = extractvalue %dx.types.ResRet.f32 %4341, 1
  %4344 = extractvalue %dx.types.ResRet.f32 %4341, 2
  %4345 = extractvalue %dx.types.ResRet.f32 %4341, 3
  %4346 = add i32 %4324, 48
  %4347 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4346, i32 undef)  ; BufferLoad(srv,index,wot)
  %4348 = extractvalue %dx.types.ResRet.f32 %4347, 0
  %4349 = extractvalue %dx.types.ResRet.f32 %4347, 1
  %4350 = add i32 %4324, 56
  %4351 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.f32 %4351, 0
  %4353 = extractvalue %dx.types.ResRet.f32 %4351, 1
  %4354 = add i32 %4324, 64
  %4355 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4354, i32 undef)  ; BufferLoad(srv,index,wot)
  %4356 = extractvalue %dx.types.ResRet.f32 %4355, 0
  %4357 = extractvalue %dx.types.ResRet.f32 %4355, 1
  %4358 = mul i32 %4320, 60
  %4359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = extractvalue %dx.types.ResRet.f32 %4359, 1
  %4362 = extractvalue %dx.types.ResRet.f32 %4359, 2
  %4363 = add i32 %4358, 12
  %4364 = add i32 %4358, 48
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = extractvalue %dx.types.ResRet.f32 %4365, 1
  %4368 = extractvalue %dx.types.ResRet.f32 %4365, 2
  %4369 = and i32 %4331, 32767
  %4370 = bitcast float %4326 to i32
  %4371 = bitcast float %4327 to i32
  %4372 = and i32 %4331, 32768
  %4373 = icmp ne i32 %4372, 0
  %4374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4375 = extractvalue %dx.types.CBufRet.f32 %4374, 3
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = extractvalue %dx.types.CBufRet.f32 %4376, 1
  %4379 = extractvalue %dx.types.CBufRet.f32 %4376, 2
  %4380 = fsub fast float %4360, %4377
  %4381 = fsub fast float %4361, %4378
  %4382 = fsub fast float %4362, %4379
  %4383 = fsub fast float %153, %4380
  %4384 = fsub fast float %154, %4381
  %4385 = fsub fast float %155, %4382
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4390 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4387, float %4388, float %4389)  ; Dot3(ax,ay,az,bx,by,bz)
  %4391 = add i32 %4358, 24
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4393, float %4394, float %4395)  ; Dot3(ax,ay,az,bx,by,bz)
  %4397 = add i32 %4358, 36
  %4398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %37, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.ResRet.f32 %4398, 1
  %4401 = extractvalue %dx.types.ResRet.f32 %4398, 2
  %4402 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4399, float %4400, float %4401)  ; Dot3(ax,ay,az,bx,by,bz)
  %4403 = call float @dx.op.unary.f32(i32 6, float %4390)  ; FAbs(value)
  %4404 = call float @dx.op.unary.f32(i32 6, float %4396)  ; FAbs(value)
  %4405 = call float @dx.op.unary.f32(i32 6, float %4402)  ; FAbs(value)
  %4406 = fsub fast float %4366, %4403
  %4407 = fsub fast float %4367, %4404
  %4408 = fsub fast float %4368, %4405
  %4409 = fmul fast float %4406, %4334
  %4410 = fmul fast float %4407, %4335
  %4411 = fmul fast float %4408, %4336
  %4412 = call float @dx.op.binary.f32(i32 36, float %4410, float %4411)  ; FMin(a,b)
  %4413 = call float @dx.op.binary.f32(i32 36, float %4409, float %4412)  ; FMin(a,b)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4415 = call float @dx.op.binary.f32(i32 36, float %4317, float %4414)  ; FMin(a,b)
  %4416 = uitofp i1 %4373 to float
  %4417 = select i1 %115, float 1.000000e+00, float 2.000000e+00
  %4418 = fsub fast float %4417, %4416
  %4419 = fmul fast float %4415, %4418
  %4420 = lshr i32 %4304, 8
  %4421 = and i32 %4420, 255
  %4422 = uitofp i32 %4421 to float
  %4423 = fptoui float %4422 to i32
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4426 = bitcast float %4425 to i32
  %4427 = lshr i32 %4426, 24
  %4428 = uitofp i32 %4427 to float
  %4429 = fptoui float %4428 to i32
  %4430 = icmp ne i32 %4429, 1
  %4431 = zext i1 %4430 to i32
  %4432 = add i32 %4431, %4423
  %4433 = uitofp i32 %4432 to float
  %4434 = fptoui float %4433 to i32
  %4435 = shl i32 %4434, 8
  %4436 = and i32 %4435, 65280
  %4437 = and i32 %4304, -65281
  %4438 = or i32 %4436, %4437
  %4439 = fcmp fast ogt float %4419, 0.000000e+00
  br i1 %4439, label %4456, label %4440

; <label>:4440                                    ; preds = %4820, %4689, %4303
  %4441 = phi i32 [ %4767, %4689 ], [ %4438, %4303 ], [ %4767, %4820 ]
  %4442 = phi i32 [ %4305, %4689 ], [ %4305, %4303 ], [ %4836, %4820 ]
  %4443 = phi float [ %4753, %4689 ], [ %4306, %4303 ], [ %4753, %4820 ]
  %4444 = phi float [ %4754, %4689 ], [ %4307, %4303 ], [ %4754, %4820 ]
  %4445 = phi float [ %4755, %4689 ], [ %4308, %4303 ], [ %4755, %4820 ]
  %4446 = phi float [ %4814, %4689 ], [ %4309, %4303 ], [ %4814, %4820 ]
  %4447 = phi float [ %4815, %4689 ], [ %4310, %4303 ], [ %4815, %4820 ]
  %4448 = phi float [ %4816, %4689 ], [ %4311, %4303 ], [ %4816, %4820 ]
  %4449 = phi i32 [ %4818, %4689 ], [ %4312, %4303 ], [ %4818, %4820 ]
  %4450 = phi float [ %4771, %4689 ], [ %4313, %4303 ], [ %4771, %4820 ]
  %4451 = phi float [ %4772, %4689 ], [ %4314, %4303 ], [ %4772, %4820 ]
  %4452 = phi float [ %4773, %4689 ], [ %4315, %4303 ], [ %4773, %4820 ]
  %4453 = phi i32 [ 0, %4689 ], [ %4316, %4303 ], [ 0, %4820 ]
  %4454 = phi float [ %4756, %4689 ], [ %4317, %4303 ], [ %4756, %4820 ]
  %4455 = icmp eq i32 %4318, %4322
  br i1 %4455, label %4837, label %4303

; <label>:4456                                    ; preds = %4303
  %4457 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4458 = bitcast float %4457 to i32
  %4459 = lshr i32 %4458, 8
  %4460 = and i32 %4459, 255
  %4461 = uitofp i32 %4460 to float
  %4462 = fptoui float %4461 to i32
  %4463 = and i32 %4462, 2
  %4464 = icmp eq i32 %4463, 0
  br i1 %4464, label %4471, label %4465

; <label>:4465                                    ; preds = %4456
  %4466 = call float @dx.op.dot3.f32(i32 55, float %153, float %154, float %155, float %153, float %154, float %155)  ; Dot3(ax,ay,az,bx,by,bz)
  %4467 = call float @dx.op.unary.f32(i32 25, float %4466)  ; Rsqrt(value)
  %4468 = fmul fast float %4467, %153
  %4469 = fmul fast float %4467, %154
  %4470 = fmul fast float %4467, %155
  br label %4471

; <label>:4471                                    ; preds = %4465, %4456
  %4472 = phi float [ %4468, %4465 ], [ %2058, %4456 ]
  %4473 = phi float [ %4469, %4465 ], [ %2059, %4456 ]
  %4474 = phi float [ %4470, %4465 ], [ %2060, %4456 ]
  %4475 = icmp ne i32 %4370, -1
  %4476 = fcmp oeq float %4375, 0.000000e+00
  %4477 = and i1 %4476, %4475
  br i1 %4477, label %4478, label %4602

; <label>:4478                                    ; preds = %4471
  %4479 = fsub fast float -0.000000e+00, %4387
  %4480 = fsub fast float -0.000000e+00, %4388
  %4481 = fsub fast float -0.000000e+00, %4389
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4472, float %4473, float %4474, float %4479, float %4480, float %4481)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = fsub fast float -0.000000e+00, %4482
  %4484 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4479, float %4480, float %4481)  ; Dot3(ax,ay,az,bx,by,bz)
  %4485 = fadd fast float %4484, %4349
  %4486 = fadd fast float %4348, %4484
  %4487 = fsub fast float -0.000000e+00, %4486
  %4488 = fcmp ogt float %4482, -0.000000e+00
  %4489 = select i1 %4488, float %4487, float %4485
  %4490 = call float @dx.op.unary.f32(i32 6, float %4483)  ; FAbs(value)
  %4491 = fdiv fast float 1.000000e+00, %4490
  %4492 = fmul fast float %4489, %4491
  %4493 = call float @dx.op.binary.f32(i32 35, float %4492, float 0.000000e+00)  ; FMax(a,b)
  %4494 = fsub fast float -0.000000e+00, %4393
  %4495 = fsub fast float -0.000000e+00, %4394
  %4496 = fsub fast float -0.000000e+00, %4395
  %4497 = call float @dx.op.dot3.f32(i32 55, float %4472, float %4473, float %4474, float %4494, float %4495, float %4496)  ; Dot3(ax,ay,az,bx,by,bz)
  %4498 = fsub fast float -0.000000e+00, %4497
  %4499 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4494, float %4495, float %4496)  ; Dot3(ax,ay,az,bx,by,bz)
  %4500 = fadd fast float %4499, %4353
  %4501 = fadd fast float %4352, %4499
  %4502 = fsub fast float -0.000000e+00, %4501
  %4503 = fcmp ogt float %4497, -0.000000e+00
  %4504 = select i1 %4503, float %4502, float %4500
  %4505 = call float @dx.op.unary.f32(i32 6, float %4498)  ; FAbs(value)
  %4506 = fdiv fast float 1.000000e+00, %4505
  %4507 = fmul fast float %4504, %4506
  %4508 = call float @dx.op.binary.f32(i32 35, float %4507, float 0.000000e+00)  ; FMax(a,b)
  %4509 = fsub fast float -0.000000e+00, %4399
  %4510 = fsub fast float -0.000000e+00, %4400
  %4511 = fsub fast float -0.000000e+00, %4401
  %4512 = call float @dx.op.dot3.f32(i32 55, float %4472, float %4473, float %4474, float %4509, float %4510, float %4511)  ; Dot3(ax,ay,az,bx,by,bz)
  %4513 = fsub fast float -0.000000e+00, %4512
  %4514 = call float @dx.op.dot3.f32(i32 55, float %4383, float %4384, float %4385, float %4509, float %4510, float %4511)  ; Dot3(ax,ay,az,bx,by,bz)
  %4515 = fadd fast float %4514, %4357
  %4516 = fadd fast float %4356, %4514
  %4517 = fsub fast float -0.000000e+00, %4516
  %4518 = fcmp ogt float %4512, -0.000000e+00
  %4519 = select i1 %4518, float %4517, float %4515
  %4520 = call float @dx.op.unary.f32(i32 6, float %4513)  ; FAbs(value)
  %4521 = fdiv fast float 1.000000e+00, %4520
  %4522 = fmul fast float %4519, %4521
  %4523 = call float @dx.op.binary.f32(i32 35, float %4522, float 0.000000e+00)  ; FMax(a,b)
  %4524 = call float @dx.op.binary.f32(i32 36, float %4508, float %4523)  ; FMin(a,b)
  %4525 = call float @dx.op.binary.f32(i32 36, float %4493, float %4524)  ; FMin(a,b)
  %4526 = fmul fast float %4525, %4472
  %4527 = fmul fast float %4525, %4473
  %4528 = fmul fast float %4525, %4474
  %4529 = fadd fast float %4526, %153
  %4530 = fadd fast float %4527, %154
  %4531 = fadd fast float %4528, %155
  %4532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4533 = extractvalue %dx.types.CBufRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.CBufRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.CBufRet.f32 %4532, 2
  %4536 = fadd fast float %4529, %4533
  %4537 = fadd fast float %4530, %4534
  %4538 = fadd fast float %4531, %4535
  %4539 = fcmp fast olt float %4493, %4508
  %4540 = fcmp fast olt float %4493, %4523
  %4541 = and i1 %4539, %4540
  br i1 %4541, label %4545, label %4542

; <label>:4542                                    ; preds = %4478
  %4543 = fcmp fast olt float %4508, %4523
  br i1 %4543, label %4544, label %4545

; <label>:4544                                    ; preds = %4542
  br label %4545

; <label>:4545                                    ; preds = %4544, %4542, %4478
  %4546 = phi float [ 0.000000e+00, %4544 ], [ 0.000000e+00, %4542 ], [ 1.000000e+00, %4478 ]
  %4547 = phi float [ 1.000000e+00, %4544 ], [ 0.000000e+00, %4542 ], [ 0.000000e+00, %4478 ]
  %4548 = phi float [ 0.000000e+00, %4544 ], [ 1.000000e+00, %4542 ], [ 0.000000e+00, %4478 ]
  %4549 = phi float [ %4393, %4544 ], [ %4399, %4542 ], [ %4387, %4478 ]
  %4550 = phi float [ %4394, %4544 ], [ %4400, %4542 ], [ %4388, %4478 ]
  %4551 = phi float [ %4395, %4544 ], [ %4401, %4542 ], [ %4389, %4478 ]
  %4552 = call float @dx.op.unary.f32(i32 6, float %4551)  ; FAbs(value)
  %4553 = fcmp fast olt float %4552, 0x3FE276C8C0000000
  %4554 = select i1 %4553, float 0.000000e+00, float 1.000000e+00
  %4555 = select i1 %4553, float 1.000000e+00, float 0.000000e+00
  %4556 = fmul fast float %4555, %4550
  %4557 = fmul fast float %4554, %4551
  %4558 = fsub fast float %4556, %4557
  %4559 = fmul fast float %4549, %4555
  %4560 = fsub fast float -0.000000e+00, %4559
  %4561 = fmul fast float %4554, %4549
  %4562 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4560, float %4561, float %4558, float %4560, float %4561)  ; Dot3(ax,ay,az,bx,by,bz)
  %4563 = call float @dx.op.unary.f32(i32 25, float %4562)  ; Rsqrt(value)
  %4564 = fmul fast float %4558, %4563
  %4565 = fmul fast float %4563, %4560
  %4566 = fmul fast float %4561, %4563
  %4567 = fmul fast float %4566, %4550
  %4568 = fmul fast float %4565, %4551
  %4569 = fsub fast float %4567, %4568
  %4570 = fmul fast float %4564, %4551
  %4571 = fmul fast float %4566, %4549
  %4572 = fsub fast float %4570, %4571
  %4573 = fmul fast float %4565, %4549
  %4574 = fmul fast float %4564, %4550
  %4575 = fsub fast float %4573, %4574
  %4576 = call float @dx.op.dot3.f32(i32 55, float %4569, float %4572, float %4575, float %4569, float %4572, float %4575)  ; Dot3(ax,ay,az,bx,by,bz)
  %4577 = call float @dx.op.unary.f32(i32 25, float %4576)  ; Rsqrt(value)
  %4578 = fmul fast float %4569, %4577
  %4579 = fmul fast float %4572, %4577
  %4580 = fmul fast float %4575, %4577
  %4581 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %4564, float %4565, float %4566)  ; Dot3(ax,ay,az,bx,by,bz)
  %4582 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %4583 = fmul fast float %4581, 0x3FA99999A0000000
  %4584 = fmul fast float %4582, 0x3FA99999A0000000
  %4585 = call float @dx.op.unary.f32(i32 22, float %4583)  ; Frc(value)
  %4586 = call float @dx.op.unary.f32(i32 22, float %4584)  ; Frc(value)
  %4587 = fadd fast float %4585, 0xBFB99999A0000000
  %4588 = fadd fast float %4586, 0xBFB99999A0000000
  %4589 = call float @dx.op.unary.f32(i32 6, float %4587)  ; FAbs(value)
  %4590 = call float @dx.op.unary.f32(i32 6, float %4588)  ; FAbs(value)
  %4591 = fmul fast float %4589, 1.000000e+01
  %4592 = fmul fast float %4590, 1.000000e+01
  %4593 = call float @dx.op.binary.f32(i32 36, float %4591, float %4592)  ; FMin(a,b)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fsub fast float 1.000000e+00, %4594
  %4596 = fmul fast float %4595, %4546
  %4597 = fmul fast float %4595, %4547
  %4598 = fmul fast float %4595, %4548
  %4599 = fsub fast float %4529, %4326
  %4600 = fsub fast float %4530, %4327
  %4601 = fsub fast float %4531, %4328
  br label %4609

; <label>:4602                                    ; preds = %4471
  %4603 = fmul fast float %4472, 8.096000e+03
  %4604 = fmul fast float %4473, 8.096000e+03
  %4605 = fmul fast float %4474, 8.096000e+03
  %4606 = fadd fast float %4603, %153
  %4607 = fadd fast float %4604, %154
  %4608 = fadd fast float %4605, %155
  br label %4609

; <label>:4609                                    ; preds = %4602, %4545
  %4610 = phi float [ %4472, %4602 ], [ %4599, %4545 ]
  %4611 = phi float [ %4473, %4602 ], [ %4600, %4545 ]
  %4612 = phi float [ %4474, %4602 ], [ %4601, %4545 ]
  %4613 = phi float [ %4606, %4602 ], [ %4529, %4545 ]
  %4614 = phi float [ %4607, %4602 ], [ %4530, %4545 ]
  %4615 = phi float [ %4608, %4602 ], [ %4531, %4545 ]
  %4616 = phi float [ 0.000000e+00, %4602 ], [ %4596, %4545 ]
  %4617 = phi float [ 0.000000e+00, %4602 ], [ %4597, %4545 ]
  %4618 = phi float [ 0.000000e+00, %4602 ], [ %4598, %4545 ]
  %4619 = fcmp fast olt float %4345, 1.000000e+00
  br i1 %4619, label %4620, label %4651, !dx.controlflow.hints !125

; <label>:4620                                    ; preds = %4609
  %4621 = fmul fast float %4612, %4343
  %4622 = fmul fast float %4611, %4344
  %4623 = fsub fast float %4621, %4622
  %4624 = fmul fast float %4610, %4344
  %4625 = fmul fast float %4612, %4342
  %4626 = fsub fast float %4624, %4625
  %4627 = fmul fast float %4611, %4342
  %4628 = fmul fast float %4610, %4343
  %4629 = fsub fast float %4627, %4628
  %4630 = fmul fast float %4623, 2.000000e+00
  %4631 = fmul fast float %4626, 2.000000e+00
  %4632 = fmul fast float %4629, 2.000000e+00
  %4633 = fmul fast float %4630, %4345
  %4634 = fmul fast float %4631, %4345
  %4635 = fmul fast float %4632, %4345
  %4636 = fmul fast float %4632, %4343
  %4637 = fmul fast float %4631, %4344
  %4638 = fmul fast float %4630, %4344
  %4639 = fmul fast float %4632, %4342
  %4640 = fmul fast float %4631, %4342
  %4641 = fmul fast float %4630, %4343
  %4642 = fadd fast float %4636, %4610
  %4643 = fadd fast float %4642, %4633
  %4644 = fsub fast float %4643, %4637
  %4645 = fsub fast float %4611, %4639
  %4646 = fadd fast float %4645, %4634
  %4647 = fadd fast float %4646, %4638
  %4648 = fadd fast float %4635, %4612
  %4649 = fsub fast float %4648, %4641
  %4650 = fadd fast float %4649, %4640
  br label %4651

; <label>:4651                                    ; preds = %4620, %4609
  %4652 = phi float [ %4644, %4620 ], [ %4610, %4609 ]
  %4653 = phi float [ %4647, %4620 ], [ %4611, %4609 ]
  %4654 = phi float [ %4650, %4620 ], [ %4612, %4609 ]
  br i1 %4477, label %4655, label %4686

; <label>:4655                                    ; preds = %4651
  %4656 = fmul fast float %1992, 0x400187C840000000
  %4657 = fadd fast float %4656, 0xC00EFC2120000000
  %4658 = fmul fast float %4657, %1992
  %4659 = fadd fast float %4658, 0x3FE5D16340000000
  %4660 = fmul fast float %4659, %1992
  %4661 = fadd fast float %4660, 1.000000e+00
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = fsub fast float %4613, %153
  %4664 = fsub fast float %4614, %154
  %4665 = fsub fast float %4615, %155
  %4666 = fsub fast float %4613, %4326
  %4667 = fsub fast float %4614, %4327
  %4668 = fsub fast float %4615, %4328
  %4669 = call float @dx.op.dot3.f32(i32 55, float %4663, float %4664, float %4665, float %4663, float %4664, float %4665)  ; Dot3(ax,ay,az,bx,by,bz)
  %4670 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = fadd fast float %4670, 0x3EE4F8B580000000
  %4672 = fdiv fast float %4669, %4671
  %4673 = bitcast float %4672 to i32
  %4674 = ashr i32 %4673, 1
  %4675 = add nsw i32 %4674, 532487669
  %4676 = bitcast i32 %4675 to float
  %4677 = fmul fast float %4676, %4662
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fmul fast float %4678, 0x4009981AE0000000
  %4680 = fsub fast float 0x40111BBD80000000, %4679
  %4681 = fmul fast float %4680, %4678
  %4682 = fadd fast float %4681, 0xC0009F6020000000
  %4683 = fmul fast float %4682, %4678
  %4684 = fadd fast float %4683, 1.000000e+00
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  br label %4689

; <label>:4686                                    ; preds = %4651
  %4687 = icmp ne i32 %4371, -1
  %4688 = zext i1 %4687 to i32
  br label %4689

; <label>:4689                                    ; preds = %4686, %4655
  %4690 = phi float [ %1992, %4686 ], [ %4685, %4655 ]
  %4691 = phi i32 [ %4688, %4686 ], [ 0, %4655 ]
  %4692 = fmul float %4690, 5.000000e+00
  %4693 = fsub float 5.000000e+00, %4692
  %4694 = icmp ne i32 %4691, 0
  %4695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4695, 3
  %4697 = fadd fast float %4696, %4693
  %4698 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4697)  ; FMax(a,b)
  %4699 = call float @dx.op.unary.f32(i32 6, float %4652)  ; FAbs(value)
  %4700 = call float @dx.op.unary.f32(i32 6, float %4653)  ; FAbs(value)
  %4701 = fadd fast float %4700, %4699
  %4702 = call float @dx.op.unary.f32(i32 6, float %4654)  ; FAbs(value)
  %4703 = fadd fast float %4701, %4702
  %4704 = fcmp fast oeq float %4703, 0.000000e+00
  %4705 = fdiv fast float 1.000000e+00, %4703
  %4706 = select i1 %4704, float 1.000000e+00, float %4705
  %4707 = fmul fast float %4706, %4652
  %4708 = fmul fast float %4706, %4653
  %4709 = call float @dx.op.unary.f32(i32 6, float %4708)  ; FAbs(value)
  %4710 = call float @dx.op.unary.f32(i32 6, float %4707)  ; FAbs(value)
  %4711 = fsub fast float 1.000000e+00, %4709
  %4712 = fsub fast float 1.000000e+00, %4710
  %4713 = fcmp fast oge float %4707, 0.000000e+00
  %4714 = fcmp fast oge float %4708, 0.000000e+00
  %4715 = select i1 %4713, float 1.000000e+00, float -1.000000e+00
  %4716 = select i1 %4714, float 1.000000e+00, float -1.000000e+00
  %4717 = fcmp fast ole float %4654, 0.000000e+00
  %4718 = fmul fast float %4715, %4711
  %4719 = fmul fast float %4716, %4712
  %4720 = select i1 %4717, float %4718, float %4707
  %4721 = select i1 %4717, float %4719, float %4708
  %4722 = fmul fast float %4720, 5.000000e-01
  %4723 = fmul fast float %4721, 5.000000e-01
  %4724 = fadd fast float %4722, 5.000000e-01
  %4725 = fadd fast float %4723, 5.000000e-01
  %4726 = uitofp i32 %4369 to float
  %4727 = call float @dx.op.binary.f32(i32 36, float %4698, float 3.000000e+00)  ; FMin(a,b)
  %4728 = fadd fast float %4727, 2.000000e+00
  %4729 = call float @dx.op.unary.f32(i32 21, float %4728)  ; Exp(value)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4695, 1
  %4731 = fmul fast float %4730, %4729
  %4732 = fmul fast float %4731, 2.000000e+00
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = fmul fast float %4724, %4733
  %4735 = fmul fast float %4725, %4733
  %4736 = fadd fast float %4734, %4731
  %4737 = fadd fast float %4735, %4731
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %59, float %4736, float %4737, float %4726, float undef, i32 0, i32 0, i32 undef, float %4698)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.ResRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.ResRet.f32 %4738, 2
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4744 = fmul fast float %4743, %4339
  %4745 = call float @dx.op.binary.f32(i32 36, float %4211, float %4744)  ; FMin(a,b)
  %4746 = select i1 %4694, float %4745, float %4744
  %4747 = fmul fast float %4739, %4419
  %4748 = fmul fast float %4747, %4746
  %4749 = fmul fast float %4740, %4419
  %4750 = fmul fast float %4749, %4746
  %4751 = fmul fast float %4741, %4419
  %4752 = fmul fast float %4751, %4746
  %4753 = fadd fast float %4748, %4306
  %4754 = fadd fast float %4750, %4307
  %4755 = fadd fast float %4752, %4308
  %4756 = fsub fast float %4317, %4419
  %4757 = and i32 %4434, 255
  %4758 = uitofp i32 %4757 to float
  %4759 = fptoui float %4758 to i32
  %4760 = icmp eq i32 %4429, 1
  %4761 = zext i1 %4760 to i32
  %4762 = add i32 %4761, %4759
  %4763 = uitofp i32 %4762 to float
  %4764 = fptoui float %4763 to i32
  %4765 = shl i32 %4764, 8
  %4766 = and i32 %4765, 65280
  %4767 = or i32 %4766, %4437
  %4768 = fmul fast float %4616, %4419
  %4769 = fmul fast float %4617, %4419
  %4770 = fmul fast float %4618, %4419
  %4771 = fadd fast float %4768, %4313
  %4772 = fadd fast float %4769, %4314
  %4773 = fadd fast float %4770, %4315
  %4774 = fmul fast float %4726, 0x3FE3C6EF40000000
  %4775 = call float @dx.op.unary.f32(i32 22, float %4774)  ; Frc(value)
  %4776 = fadd fast float %4775, 0x3FE5555560000000
  %4777 = fadd fast float %4775, 0x3FD5555560000000
  %4778 = fsub fast float -0.000000e+00, %4775
  %4779 = fsub fast float -0.000000e+00, %4776
  %4780 = fsub fast float -0.000000e+00, %4777
  %4781 = fcmp fast oge float %4775, %4778
  %4782 = fcmp fast oge float %4776, %4779
  %4783 = fcmp fast oge float %4777, %4780
  %4784 = call float @dx.op.unary.f32(i32 6, float %4775)  ; FAbs(value)
  %4785 = call float @dx.op.unary.f32(i32 6, float %4776)  ; FAbs(value)
  %4786 = call float @dx.op.unary.f32(i32 6, float %4777)  ; FAbs(value)
  %4787 = call float @dx.op.unary.f32(i32 22, float %4784)  ; Frc(value)
  %4788 = call float @dx.op.unary.f32(i32 22, float %4785)  ; Frc(value)
  %4789 = call float @dx.op.unary.f32(i32 22, float %4786)  ; Frc(value)
  %4790 = fsub fast float -0.000000e+00, %4787
  %4791 = fsub fast float -0.000000e+00, %4788
  %4792 = fsub fast float -0.000000e+00, %4789
  %4793 = select i1 %4781, float %4787, float %4790
  %4794 = select i1 %4782, float %4788, float %4791
  %4795 = select i1 %4783, float %4789, float %4792
  %4796 = fmul fast float %4793, 6.000000e+00
  %4797 = fmul fast float %4794, 6.000000e+00
  %4798 = fmul fast float %4795, 6.000000e+00
  %4799 = fadd fast float %4796, -3.000000e+00
  %4800 = fadd fast float %4797, -3.000000e+00
  %4801 = fadd fast float %4798, -3.000000e+00
  %4802 = call float @dx.op.unary.f32(i32 6, float %4799)  ; FAbs(value)
  %4803 = call float @dx.op.unary.f32(i32 6, float %4800)  ; FAbs(value)
  %4804 = call float @dx.op.unary.f32(i32 6, float %4801)  ; FAbs(value)
  %4805 = fadd fast float %4802, -1.000000e+00
  %4806 = fadd fast float %4803, -1.000000e+00
  %4807 = fadd fast float %4804, -1.000000e+00
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4811 = fmul fast float %4808, %4419
  %4812 = fmul fast float %4809, %4419
  %4813 = fmul fast float %4810, %4419
  %4814 = fadd fast float %4811, %4309
  %4815 = fadd fast float %4812, %4310
  %4816 = fadd fast float %4813, %4311
  %4817 = icmp eq i32 %4369, 0
  %4818 = select i1 %4817, i32 1, i32 %4312
  %4819 = icmp eq i32 %4316, 0
  br i1 %4819, label %4440, label %4820

; <label>:4820                                    ; preds = %4689
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = bitcast float %4822 to i32
  %4824 = lshr i32 %4823, 8
  %4825 = and i32 %4824, 255
  %4826 = uitofp i32 %4825 to float
  %4827 = fptoui float %4826 to i32
  %4828 = icmp eq i32 %4827, 16
  %4829 = bitcast float %4744 to i32
  %4830 = select i1 %4828, i32 %4829, i32 %4305
  %4831 = icmp eq i32 %4827, 17
  %4832 = bitcast float %4211 to i32
  %4833 = select i1 %4831, i32 %4832, i32 %4830
  %4834 = icmp eq i32 %4827, 18
  %4835 = bitcast float %4746 to i32
  %4836 = select i1 %4834, i32 %4835, i32 %4833
  br label %4440

; <label>:4837                                    ; preds = %4440
  br label %4838

; <label>:4838                                    ; preds = %4837, %4263
  %4839 = phi i32 [ %4264, %4263 ], [ %4441, %4837 ]
  %4840 = phi i32 [ %4265, %4263 ], [ %4442, %4837 ]
  %4841 = phi float [ %4266, %4263 ], [ %4443, %4837 ]
  %4842 = phi float [ %4267, %4263 ], [ %4444, %4837 ]
  %4843 = phi float [ %4268, %4263 ], [ %4445, %4837 ]
  %4844 = phi float [ %4269, %4263 ], [ %4446, %4837 ]
  %4845 = phi float [ %4270, %4263 ], [ %4447, %4837 ]
  %4846 = phi float [ %4271, %4263 ], [ %4448, %4837 ]
  %4847 = phi i32 [ %4272, %4263 ], [ %4449, %4837 ]
  %4848 = phi float [ %4273, %4263 ], [ %4450, %4837 ]
  %4849 = phi float [ %4274, %4263 ], [ %4451, %4837 ]
  %4850 = phi float [ %4275, %4263 ], [ %4452, %4837 ]
  %4851 = phi i32 [ %4276, %4263 ], [ %4453, %4837 ]
  %4852 = phi float [ %4277, %4263 ], [ %4454, %4837 ]
  %4853 = add i32 %4278, 1
  %4854 = icmp ugt i32 %4853, %4260
  br i1 %4854, label %4855, label %4263, !llvm.loop !126

; <label>:4855                                    ; preds = %4838
  br label %4856

; <label>:4856                                    ; preds = %4855, %4210
  %4857 = phi i32 [ %3874, %4210 ], [ %4839, %4855 ]
  %4858 = phi i32 [ %4198, %4210 ], [ %4840, %4855 ]
  %4859 = phi float [ 0.000000e+00, %4210 ], [ %4841, %4855 ]
  %4860 = phi float [ 0.000000e+00, %4210 ], [ %4842, %4855 ]
  %4861 = phi float [ 0.000000e+00, %4210 ], [ %4843, %4855 ]
  %4862 = phi float [ 0.000000e+00, %4210 ], [ %4844, %4855 ]
  %4863 = phi float [ 0.000000e+00, %4210 ], [ %4845, %4855 ]
  %4864 = phi float [ 0.000000e+00, %4210 ], [ %4846, %4855 ]
  %4865 = phi i32 [ 0, %4210 ], [ %4847, %4855 ]
  %4866 = phi float [ 0.000000e+00, %4210 ], [ %4848, %4855 ]
  %4867 = phi float [ 0.000000e+00, %4210 ], [ %4849, %4855 ]
  %4868 = phi float [ 0.000000e+00, %4210 ], [ %4850, %4855 ]
  %4869 = call float @dx.op.dot3.f32(i32 55, float %4859, float %4860, float %4861, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = select i1 %2046, float 0.000000e+00, float %4859
  %4871 = select i1 %2046, float %4869, float %4860
  %4872 = select i1 %2046, float 0.000000e+00, float %4861
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = bitcast float %4874 to i32
  %4876 = lshr i32 %4875, 8
  %4877 = and i32 %4876, 255
  %4878 = uitofp i32 %4877 to float
  %4879 = fptoui float %4878 to i32
  %4880 = icmp eq i32 %4879, 13
  br i1 %4880, label %4881, label %4901

; <label>:4881                                    ; preds = %4856
  %4882 = fadd fast float %4862, 1.000000e+00
  %4883 = fadd fast float %4863, 1.000000e+00
  %4884 = fadd fast float %4864, 1.000000e+00
  %4885 = fmul fast float %4882, 5.000000e-01
  %4886 = fmul fast float %4883, 5.000000e-01
  %4887 = fmul fast float %4884, 5.000000e-01
  %4888 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4886)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4891 = fmul fast float %4888, 1.023000e+03
  %4892 = fmul fast float %4889, 1.023000e+03
  %4893 = fmul fast float %4890, 1.023000e+03
  %4894 = fptoui float %4891 to i32
  %4895 = fptoui float %4892 to i32
  %4896 = fptoui float %4893 to i32
  %4897 = shl i32 %4895, 10
  %4898 = or i32 %4897, %4894
  %4899 = shl i32 %4896, 20
  %4900 = or i32 %4898, %4899
  br label %4901

; <label>:4901                                    ; preds = %4881, %4856
  %4902 = phi i32 [ %4900, %4881 ], [ %4858, %4856 ]
  %4903 = icmp eq i32 %4879, 14
  %4904 = select i1 %4903, i32 %4865, i32 %4902
  %4905 = icmp eq i32 %4879, 22
  br i1 %4905, label %4906, label %4926

; <label>:4906                                    ; preds = %4901
  %4907 = fadd fast float %4866, 1.000000e+00
  %4908 = fadd fast float %4867, 1.000000e+00
  %4909 = fadd fast float %4868, 1.000000e+00
  %4910 = fmul fast float %4907, 5.000000e-01
  %4911 = fmul fast float %4908, 5.000000e-01
  %4912 = fmul fast float %4909, 5.000000e-01
  %4913 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = fmul fast float %4913, 1.023000e+03
  %4917 = fmul fast float %4914, 1.023000e+03
  %4918 = fmul fast float %4915, 1.023000e+03
  %4919 = fptoui float %4916 to i32
  %4920 = fptoui float %4917 to i32
  %4921 = fptoui float %4918 to i32
  %4922 = shl i32 %4920, 10
  %4923 = or i32 %4922, %4919
  %4924 = shl i32 %4921, 20
  %4925 = or i32 %4923, %4924
  br label %4926

; <label>:4926                                    ; preds = %4906, %4901
  %4927 = phi i32 [ %4925, %4906 ], [ %4904, %4901 ]
  %4928 = fcmp fast olt float %4199, 0.000000e+00
  %4929 = call float @dx.op.unary.f32(i32 6, float %4199)  ; FAbs(value)
  %4930 = fmul fast float %4929, %4200
  %4931 = fmul fast float %4929, %4201
  %4932 = fmul fast float %4929, %4202
  %4933 = select i1 %4928, float %4200, float %4930
  %4934 = select i1 %4928, float %4201, float %4931
  %4935 = select i1 %4928, float %4202, float %4932
  %4936 = fsub fast float 1.000000e+00, %4929
  %4937 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4938 = fmul fast float %4937, %4870
  %4939 = fmul fast float %4937, %4871
  %4940 = fmul fast float %4937, %4872
  %4941 = fadd fast float %4933, %4938
  %4942 = fadd fast float %4934, %4939
  %4943 = fadd fast float %4935, %4940
  br label %4944

; <label>:4944                                    ; preds = %4926, %4197
  %4945 = phi i32 [ %3874, %4197 ], [ %4857, %4926 ]
  %4946 = phi i32 [ %4198, %4197 ], [ %4927, %4926 ]
  %4947 = phi float [ %4200, %4197 ], [ %4941, %4926 ]
  %4948 = phi float [ %4201, %4197 ], [ %4942, %4926 ]
  %4949 = phi float [ %4202, %4197 ], [ %4943, %4926 ]
  %4950 = fmul fast float %3159, %1995
  %4951 = fmul fast float %3876, %3159
  %4952 = fmul fast float %3877, %3159
  %4953 = fmul fast float %3878, %3159
  %4954 = fmul fast float %4947, %1949
  %4955 = fmul fast float %4948, %1950
  %4956 = fmul fast float %4949, %3156
  %4957 = fadd fast float %4954, %1820
  %4958 = fadd fast float %4955, %1821
  %4959 = fadd fast float %4956, %1822
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 3
  %4962 = fcmp fast oeq float %4961, 0.000000e+00
  br i1 %4962, label %6744, label %4963

; <label>:4963                                    ; preds = %4944
  %4964 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4965 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4966 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4968 = extractvalue %dx.types.CBufRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.CBufRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.CBufRet.f32 %4967, 2
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 0
  %4973 = extractvalue %dx.types.CBufRet.f32 %4971, 1
  %4974 = call float @dx.op.dot3.f32(i32 55, float %4968, float %4969, float %4970, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4975 = select i1 %2046, float %4972, float %4968
  %4976 = select i1 %2046, float %4974, float %4969
  %4977 = select i1 %2046, float %4973, float %4970
  %4978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4979 = extractvalue %dx.types.CBufRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.CBufRet.f32 %4978, 1
  %4981 = extractvalue %dx.types.CBufRet.f32 %4978, 2
  %4982 = extractvalue %dx.types.CBufRet.f32 %4978, 3
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4986 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4987 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %4991 = extractvalue %dx.types.CBufRet.f32 %4988, 2
  %4992 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4993 = fmul fast float %4979, %153
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4980, float %4993)  ; FMad(a,b,c)
  %4995 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4981, float %4994)  ; FMad(a,b,c)
  %4996 = fadd fast float %4995, %4982
  %4997 = fmul fast float %4984, %153
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4985, float %4997)  ; FMad(a,b,c)
  %4999 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4986, float %4998)  ; FMad(a,b,c)
  %5000 = fadd fast float %4999, %4987
  %5001 = fmul fast float %4989, %153
  %5002 = call float @dx.op.tertiary.f32(i32 46, float %154, float %4990, float %5001)  ; FMad(a,b,c)
  %5003 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4991, float %5002)  ; FMad(a,b,c)
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5008 = fmul fast float %5007, %4996
  %5009 = fmul fast float %5007, %5000
  %5010 = fadd fast float %5008, %5005
  %5011 = fadd fast float %5009, %5006
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 3
  %5016 = fmul fast float %5015, %4996
  %5017 = fmul fast float %5015, %5000
  %5018 = fadd fast float %5016, %5013
  %5019 = fadd fast float %5017, %5014
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5022 = fsub fast float -0.000000e+00, %4992
  %5023 = fsub fast float %5022, %5003
  %5024 = fadd fast float %5023, %5021
  %5025 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5026 = fmul fast float %5024, %5025
  %5027 = fsub fast float 1.000000e+00, %5026
  %5028 = call float @dx.op.unary.f32(i32 7, float %5027)  ; Saturate(value)
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5032 = fsub fast float %5018, %5030
  %5033 = fsub fast float %5019, %5031
  %5034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5036 = extractvalue %dx.types.CBufRet.f32 %5035, 0
  %5037 = extractvalue %dx.types.CBufRet.f32 %5035, 1
  %5038 = fsub fast float %5010, %5036
  %5039 = fsub fast float %5011, %5037
  %5040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5042 = extractvalue %dx.types.CBufRet.f32 %5041, 0
  %5043 = extractvalue %dx.types.CBufRet.f32 %5041, 1
  %5044 = fsub fast float %4996, %5042
  %5045 = fsub fast float %5000, %5043
  %5046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5048 = extractvalue %dx.types.CBufRet.f32 %5047, 0
  %5049 = bitcast float %5048 to i32
  %5050 = lshr i32 %5049, 8
  %5051 = and i32 %5050, 255
  %5052 = uitofp i32 %5051 to float
  %5053 = fptoui float %5052 to i32
  %5054 = and i32 %5053, -2
  %5055 = icmp eq i32 %5054, 10
  br i1 %5055, label %5056, label %5126

; <label>:5056                                    ; preds = %4963
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = fcmp fast olt float %5044, 0.000000e+00
  %5060 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5061 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5062 = select i1 %5059, float %5060, float %5061
  %5063 = fmul fast float %5062, %5044
  %5064 = call float @dx.op.unary.f32(i32 6, float %5063)  ; FAbs(value)
  %5065 = fcmp fast olt float %5045, 0.000000e+00
  %5066 = extractvalue %dx.types.CBufRet.f32 %5046, 1
  %5067 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5068 = select i1 %5065, float %5066, float %5067
  %5069 = fmul fast float %5068, %5045
  %5070 = call float @dx.op.unary.f32(i32 6, float %5069)  ; FAbs(value)
  %5071 = call float @dx.op.binary.f32(i32 35, float %5064, float %5070)  ; FMax(a,b)
  %5072 = fsub fast float %5058, %5071
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5073, %5028
  %5075 = fcmp fast olt float %5038, 0.000000e+00
  %5076 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5077 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5078 = select i1 %5075, float %5076, float %5077
  %5079 = fmul fast float %5078, %5038
  %5080 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5081 = fcmp fast olt float %5039, 0.000000e+00
  %5082 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5083 = extractvalue %dx.types.CBufRet.f32 %5040, 3
  %5084 = select i1 %5081, float %5082, float %5083
  %5085 = fmul fast float %5084, %5039
  %5086 = call float @dx.op.unary.f32(i32 6, float %5085)  ; FAbs(value)
  %5087 = call float @dx.op.binary.f32(i32 35, float %5080, float %5086)  ; FMax(a,b)
  %5088 = fsub fast float %5058, %5087
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = fmul fast float %5089, %5028
  %5091 = fcmp fast olt float %5032, 0.000000e+00
  %5092 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5093 = extractvalue %dx.types.CBufRet.f32 %5034, 2
  %5094 = select i1 %5091, float %5092, float %5093
  %5095 = fmul fast float %5094, %5032
  %5096 = call float @dx.op.unary.f32(i32 6, float %5095)  ; FAbs(value)
  %5097 = fcmp fast olt float %5033, 0.000000e+00
  %5098 = extractvalue %dx.types.CBufRet.f32 %5034, 1
  %5099 = extractvalue %dx.types.CBufRet.f32 %5034, 3
  %5100 = select i1 %5097, float %5098, float %5099
  %5101 = fmul fast float %5100, %5033
  %5102 = call float @dx.op.unary.f32(i32 6, float %5101)  ; FAbs(value)
  %5103 = call float @dx.op.binary.f32(i32 35, float %5096, float %5102)  ; FMax(a,b)
  %5104 = fsub fast float %5058, %5103
  %5105 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5106 = fmul fast float %5105, %5028
  %5107 = fadd fast float %5074, 1.000000e+00
  %5108 = fadd fast float %5090, 1.000000e+00
  %5109 = fadd fast float %5106, 1.000000e+00
  %5110 = fmul fast float %5107, 5.000000e-01
  %5111 = fmul fast float %5108, 5.000000e-01
  %5112 = fmul fast float %5109, 5.000000e-01
  %5113 = call float @dx.op.unary.f32(i32 7, float %5110)  ; Saturate(value)
  %5114 = call float @dx.op.unary.f32(i32 7, float %5111)  ; Saturate(value)
  %5115 = call float @dx.op.unary.f32(i32 7, float %5112)  ; Saturate(value)
  %5116 = fmul fast float %5113, 1.023000e+03
  %5117 = fmul fast float %5114, 1.023000e+03
  %5118 = fmul fast float %5115, 1.023000e+03
  %5119 = fptoui float %5116 to i32
  %5120 = fptoui float %5117 to i32
  %5121 = fptoui float %5118 to i32
  %5122 = shl i32 %5120, 10
  %5123 = or i32 %5122, %5119
  %5124 = shl i32 %5121, 20
  %5125 = or i32 %5123, %5124
  br label %5126

; <label>:5126                                    ; preds = %5056, %4963
  %5127 = phi i32 [ %5125, %5056 ], [ %4946, %4963 ]
  %5128 = fcmp fast olt float %4961, 0.000000e+00
  br i1 %5128, label %6440, label %5129

; <label>:5129                                    ; preds = %5126
  %5130 = fadd fast float %5003, %4992
  %5131 = fsub fast float %5021, %5130
  %5132 = fmul fast float %5131, %5025
  %5133 = fsub fast float 1.000000e+00, %5132
  %5134 = call float @dx.op.unary.f32(i32 7, float %5133)  ; Saturate(value)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5138 = fadd fast float %5137, %5135
  %5139 = fcmp fast ogt float %5138, 0.000000e+00
  br i1 %5139, label %5140, label %5159

; <label>:5140                                    ; preds = %5129
  %5141 = fcmp fast olt float %5032, 0.000000e+00
  %5142 = fcmp fast olt float %5033, 0.000000e+00
  %5143 = extractvalue %dx.types.CBufRet.f32 %5034, 0
  %5144 = extractvalue %dx.types.CBufRet.f32 %5034, 1
  %5145 = extractvalue %dx.types.CBufRet.f32 %5034, 2
  %5146 = extractvalue %dx.types.CBufRet.f32 %5034, 3
  %5147 = select i1 %5141, float %5143, float %5145
  %5148 = select i1 %5142, float %5144, float %5146
  %5149 = fmul fast float %5147, %5032
  %5150 = fmul fast float %5148, %5033
  %5151 = call float @dx.op.unary.f32(i32 6, float %5149)  ; FAbs(value)
  %5152 = call float @dx.op.unary.f32(i32 6, float %5150)  ; FAbs(value)
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = call float @dx.op.binary.f32(i32 35, float %5151, float %5152)  ; FMax(a,b)
  %5156 = fsub fast float %5154, %5155
  %5157 = call float @dx.op.unary.f32(i32 7, float %5156)  ; Saturate(value)
  %5158 = fmul fast float %5157, %5134
  br label %5159

; <label>:5159                                    ; preds = %5140, %5129
  %5160 = phi float [ %5158, %5140 ], [ 0.000000e+00, %5129 ]
  %5161 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5136, 1
  %5163 = fadd fast float %5162, %5161
  %5164 = fcmp fast ogt float %5163, 0.000000e+00
  br i1 %5164, label %5165, label %5184

; <label>:5165                                    ; preds = %5159
  %5166 = fcmp fast olt float %5038, 0.000000e+00
  %5167 = fcmp fast olt float %5039, 0.000000e+00
  %5168 = extractvalue %dx.types.CBufRet.f32 %5040, 0
  %5169 = extractvalue %dx.types.CBufRet.f32 %5040, 1
  %5170 = extractvalue %dx.types.CBufRet.f32 %5040, 2
  %5171 = extractvalue %dx.types.CBufRet.f32 %5040, 3
  %5172 = select i1 %5166, float %5168, float %5170
  %5173 = select i1 %5167, float %5169, float %5171
  %5174 = fmul fast float %5172, %5038
  %5175 = fmul fast float %5173, %5039
  %5176 = call float @dx.op.unary.f32(i32 6, float %5174)  ; FAbs(value)
  %5177 = call float @dx.op.unary.f32(i32 6, float %5175)  ; FAbs(value)
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = call float @dx.op.binary.f32(i32 35, float %5176, float %5177)  ; FMax(a,b)
  %5181 = fsub fast float %5179, %5180
  %5182 = call float @dx.op.unary.f32(i32 7, float %5181)  ; Saturate(value)
  %5183 = fmul fast float %5182, %5134
  br label %5184

; <label>:5184                                    ; preds = %5165, %5159
  %5185 = phi float [ %5183, %5165 ], [ 0.000000e+00, %5159 ]
  %5186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.f32 %5186, 1
  %5188 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5189 = fcmp fast olt float %5044, 0.000000e+00
  %5190 = fcmp fast olt float %5045, 0.000000e+00
  %5191 = extractvalue %dx.types.CBufRet.f32 %5046, 0
  %5192 = extractvalue %dx.types.CBufRet.f32 %5046, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5046, 2
  %5194 = extractvalue %dx.types.CBufRet.f32 %5046, 3
  %5195 = select i1 %5189, float %5191, float %5193
  %5196 = select i1 %5190, float %5192, float %5194
  %5197 = fmul fast float %5195, %5044
  %5198 = fmul fast float %5196, %5045
  %5199 = call float @dx.op.unary.f32(i32 6, float %5197)  ; FAbs(value)
  %5200 = call float @dx.op.unary.f32(i32 6, float %5198)  ; FAbs(value)
  %5201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5202 = extractvalue %dx.types.CBufRet.f32 %5201, 0
  %5203 = call float @dx.op.binary.f32(i32 35, float %5199, float %5200)  ; FMax(a,b)
  %5204 = fsub fast float %5202, %5203
  %5205 = call float @dx.op.unary.f32(i32 7, float %5204)  ; Saturate(value)
  %5206 = call float @dx.op.binary.f32(i32 36, float %5205, float %5188)  ; FMin(a,b)
  %5207 = fmul fast float %5206, %5134
  %5208 = fsub fast float %5185, %5207
  %5209 = fsub fast float %5160, %5185
  %5210 = fsub fast float %5209, %5207
  %5211 = call float @dx.op.binary.f32(i32 35, float %5185, float %5160)  ; FMax(a,b)
  %5212 = call float @dx.op.binary.f32(i32 35, float %5207, float %5211)  ; FMax(a,b)
  %5213 = fcmp fast olt float %5212, 1.000000e+00
  br i1 %5213, label %5214, label %5885, !dx.controlflow.hints !129

; <label>:5214                                    ; preds = %5184
  %5215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5216 = extractvalue %dx.types.CBufRet.f32 %5215, 0
  %5217 = fcmp fast une float %5216, 0.000000e+00
  br i1 %5217, label %5218, label %5885, !dx.controlflow.hints !130

; <label>:5218                                    ; preds = %5214
  %5219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.CBufRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.CBufRet.f32 %5219, 2
  %5223 = extractvalue %dx.types.CBufRet.f32 %5219, 3
  %5224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5225 = extractvalue %dx.types.CBufRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.CBufRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.CBufRet.f32 %5224, 2
  %5228 = extractvalue %dx.types.CBufRet.f32 %5224, 3
  %5229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5230 = extractvalue %dx.types.CBufRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.CBufRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.CBufRet.f32 %5229, 2
  %5233 = extractvalue %dx.types.CBufRet.f32 %5229, 3
  %5234 = fmul fast float %5220, %153
  %5235 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5221, float %5234)  ; FMad(a,b,c)
  %5236 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5222, float %5235)  ; FMad(a,b,c)
  %5237 = fadd fast float %5236, %5223
  %5238 = fmul fast float %5225, %153
  %5239 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5226, float %5238)  ; FMad(a,b,c)
  %5240 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5227, float %5239)  ; FMad(a,b,c)
  %5241 = fadd fast float %5240, %5228
  %5242 = fmul fast float %5230, %153
  %5243 = call float @dx.op.tertiary.f32(i32 46, float %154, float %5231, float %5242)  ; FMad(a,b,c)
  %5244 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5232, float %5243)  ; FMad(a,b,c)
  %5245 = fadd fast float %5244, %5233
  %5246 = fcmp fast oge float %5237, 1.000000e+00
  %5247 = fcmp fast oge float %5241, 1.000000e+00
  %5248 = or i1 %5246, %5247
  %5249 = fcmp fast olt float %5237, 0.000000e+00
  %5250 = fcmp fast olt float %5241, 0.000000e+00
  %5251 = or i1 %5249, %5250
  %5252 = or i1 %5248, %5251
  br i1 %5252, label %5885, label %5253, !dx.controlflow.hints !131

; <label>:5253                                    ; preds = %5218
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5260 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5261 = extractvalue %dx.types.CBufRet.i32 %5260, 2
  %5262 = uitofp i32 %5261 to float
  %5263 = extractvalue %dx.types.CBufRet.i32 %5260, 3
  %5264 = uitofp i32 %5263 to float
  %5265 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5266 = fmul fast float %5265, 2.000000e+00
  %5267 = fsub fast float %5237, %5255
  %5268 = fsub fast float %5241, %5256
  %5269 = fmul fast float %5266, %5267
  %5270 = fmul fast float %5266, %5268
  %5271 = fdiv fast float 1.000000e+00, %4966
  %5272 = fmul fast float %5270, %5271
  %5273 = call float @dx.op.unary.f32(i32 6, float %5272)  ; FAbs(value)
  %5274 = fmul fast float %5257, %155
  %5275 = fmul fast float %5274, %5266
  %5276 = call float @dx.op.unary.f32(i32 6, float %5275)  ; FAbs(value)
  %5277 = call float @dx.op.unary.f32(i32 6, float %5269)  ; FAbs(value)
  %5278 = call float @dx.op.binary.f32(i32 35, float %5276, float %5273)  ; FMax(a,b)
  %5279 = call float @dx.op.binary.f32(i32 35, float %5277, float %5278)  ; FMax(a,b)
  %5280 = fmul fast float %5279, 2.000000e+00
  %5281 = call float @dx.op.unary.f32(i32 23, float %5280)  ; Log(value)
  %5282 = call float @dx.op.binary.f32(i32 35, float %5281, float %5262)  ; FMax(a,b)
  %5283 = call float @dx.op.unary.f32(i32 22, float %5282)  ; Frc(value)
  %5284 = fadd fast float %5283, 0xBFEA666660000000
  %5285 = fmul fast float %5284, 8.000000e+00
  %5286 = call float @dx.op.unary.f32(i32 7, float %5285)  ; Saturate(value)
  %5287 = call float @dx.op.unary.f32(i32 27, float %5282)  ; Round_ni(value)
  %5288 = fadd fast float %5287, %5286
  %5289 = call float @dx.op.binary.f32(i32 36, float %5288, float %5264)  ; FMin(a,b)
  %5290 = call float @dx.op.unary.f32(i32 27, float %5289)  ; Round_ni(value)
  %5291 = fsub fast float -0.000000e+00, %5290
  %5292 = call float @dx.op.unary.f32(i32 21, float %5291)  ; Exp(value)
  %5293 = fmul fast float %5292, %5266
  %5294 = fmul fast float %5293, %5237
  %5295 = fmul fast float %5293, %5241
  %5296 = fmul fast float %5294, 5.000000e-01
  %5297 = fmul fast float %5295, 5.000000e-01
  %5298 = fadd fast float %5296, 5.000000e-01
  %5299 = fadd fast float %5297, 5.000000e-01
  %5300 = fmul fast float %5294, 2.500000e-01
  %5301 = fmul fast float %5295, 2.500000e-01
  %5302 = fadd fast float %5300, 5.000000e-01
  %5303 = fadd fast float %5301, 5.000000e-01
  %5304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5305 = extractvalue %dx.types.ResRet.i32 %5304, 0
  %5306 = and i32 %5305, 536870911
  %5307 = lshr i32 %5306, 9
  %5308 = uitofp i32 %5307 to float
  %5309 = fmul fast float %5308, %5237
  %5310 = fmul fast float %5308, %5241
  %5311 = call float @dx.op.unary.f32(i32 22, float %5309)  ; Frc(value)
  %5312 = call float @dx.op.unary.f32(i32 22, float %5310)  ; Frc(value)
  %5313 = call float @dx.op.unary.f32(i32 22, float %5286)  ; Frc(value)
  %5314 = fcmp fast une float %5313, 0.000000e+00
  br i1 %5314, label %5315, label %5413, !dx.controlflow.hints !132

; <label>:5315                                    ; preds = %5253
  %5316 = call float @dx.op.unary.f32(i32 21, float %5287)  ; Exp(value)
  %5317 = fmul fast float %5316, 1.953125e-03
  %5318 = fcmp fast olt float %5311, %5317
  %5319 = fcmp fast olt float %5312, %5317
  %5320 = or i1 %5318, %5319
  %5321 = fsub fast float 1.000000e+00, %5317
  %5322 = fcmp fast ogt float %5311, %5321
  %5323 = fcmp fast ogt float %5312, %5321
  %5324 = or i1 %5322, %5323
  %5325 = or i1 %5320, %5324
  br i1 %5325, label %5326, label %5492, !dx.controlflow.hints !133

; <label>:5326                                    ; preds = %5315
  %5327 = fmul fast float %5259, 5.000000e-01
  %5328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.i32 %5328, 0
  %5330 = fmul fast float %5241, 3.530000e+02
  %5331 = uitofp i32 %5306 to float
  %5332 = fmul fast float %5330, %5331
  %5333 = fmul fast float %5237, 6.130000e+02
  %5334 = fadd fast float %5332, %5333
  %5335 = fptoui float %5334 to i32
  %5336 = add i32 %5329, %5335
  %5337 = mul i32 %5336, -63
  %5338 = lshr i32 %5337, 17
  %5339 = xor i32 %5338, %5337
  %5340 = mul i32 %5339, -511
  %5341 = mul i32 %5339, -8176
  %5342 = xor i32 %5340, %5341
  %5343 = mul i32 %5342, -7
  %5344 = mul i32 %5342, -7168
  %5345 = xor i32 %5343, %5344
  %5346 = lshr i32 %5345, 15
  %5347 = xor i32 %5346, %5343
  %5348 = and i32 %5347, 15
  %5349 = mul i32 %5348, 2
  %5350 = add i32 0, %5349
  %5351 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5350
  %5352 = load float, float* %5351, align 4
  %5353 = mul i32 %5348, 2
  %5354 = add i32 1, %5353
  %5355 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5354
  %5356 = load float, float* %5355, align 4
  %5357 = fmul fast float %5241, 2.770000e+02
  %5358 = fmul fast float %5357, %5331
  %5359 = fmul fast float %5237, 5.990000e+02
  %5360 = fadd fast float %5358, %5359
  %5361 = fptoui float %5360 to i32
  %5362 = mul i32 %5361, -63
  %5363 = lshr i32 %5362, 17
  %5364 = xor i32 %5363, %5362
  %5365 = mul i32 %5364, -511
  %5366 = mul i32 %5364, -8176
  %5367 = xor i32 %5365, %5366
  %5368 = mul i32 %5367, -7
  %5369 = mul i32 %5367, -7168
  %5370 = xor i32 %5368, %5369
  %5371 = lshr i32 %5370, 15
  %5372 = xor i32 %5371, %5368
  %5373 = and i32 %5372, 63
  %5374 = mul i32 %5373, 2
  %5375 = add i32 0, %5374
  %5376 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5375
  %5377 = load float, float* %5376, align 4
  %5378 = mul i32 %5373, 2
  %5379 = add i32 1, %5378
  %5380 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5379
  %5381 = load float, float* %5380, align 4
  %5382 = call float @dx.op.dot2.f32(i32 54, float %5352, float %5356, float %5377, float %5381)  ; Dot2(ax,ay,bx,by)
  %5383 = fsub fast float -0.000000e+00, %5377
  %5384 = call float @dx.op.dot2.f32(i32 54, float %5352, float %5356, float %5383, float %5381)  ; Dot2(ax,ay,bx,by)
  %5385 = fmul fast float %5382, %5327
  %5386 = fmul fast float %5384, %5327
  %5387 = fdiv fast float 2.000000e+00, %5293
  %5388 = fmul fast float %5316, 9.765625e-04
  %5389 = fcmp fast olt float %5311, %5388
  %5390 = fcmp fast olt float %5312, %5388
  %5391 = or i1 %5389, %5390
  %5392 = fsub fast float 1.000000e+00, %5388
  %5393 = fcmp fast ogt float %5311, %5392
  %5394 = fcmp fast ogt float %5312, %5392
  %5395 = or i1 %5393, %5394
  %5396 = or i1 %5391, %5395
  %5397 = fmul fast float %5385, 2.000000e+00
  br i1 %5396, label %5398, label %5402

; <label>:5398                                    ; preds = %5326
  %5399 = fmul fast float %5386, 2.000000e+00
  %5400 = fadd fast float %5397, %5298
  %5401 = fadd fast float %5399, %5299
  br label %5402

; <label>:5402                                    ; preds = %5398, %5326
  %5403 = phi float [ %5400, %5398 ], [ %5298, %5326 ]
  %5404 = phi float [ %5401, %5398 ], [ %5299, %5326 ]
  %5405 = phi i32 [ 3, %5398 ], [ 2, %5326 ]
  %5406 = fadd fast float %5385, %5302
  %5407 = fadd fast float %5386, %5303
  %5408 = fmul fast float %5397, %5387
  %5409 = fmul fast float %5387, 2.000000e+00
  %5410 = fmul fast float %5409, %5386
  %5411 = fadd fast float %5408, %5237
  %5412 = fadd fast float %5410, %5241
  br label %5492

; <label>:5413                                    ; preds = %5253
  %5414 = call float @dx.op.unary.f32(i32 21, float %5290)  ; Exp(value)
  %5415 = fmul fast float %5414, 9.765625e-04
  %5416 = fcmp fast olt float %5311, %5415
  %5417 = fcmp fast olt float %5312, %5415
  %5418 = or i1 %5416, %5417
  %5419 = fsub fast float 1.000000e+00, %5415
  %5420 = fcmp fast ogt float %5311, %5419
  %5421 = fcmp fast ogt float %5312, %5419
  %5422 = or i1 %5420, %5421
  %5423 = or i1 %5418, %5422
  br i1 %5423, label %5424, label %5492, !dx.controlflow.hints !134

; <label>:5424                                    ; preds = %5413
  %5425 = fmul fast float %5259, 5.000000e-01
  %5426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5427 = extractvalue %dx.types.CBufRet.i32 %5426, 0
  %5428 = fmul fast float %5241, 3.530000e+02
  %5429 = uitofp i32 %5306 to float
  %5430 = fmul fast float %5428, %5429
  %5431 = fmul fast float %5237, 6.130000e+02
  %5432 = fadd fast float %5430, %5431
  %5433 = fptoui float %5432 to i32
  %5434 = add i32 %5427, %5433
  %5435 = mul i32 %5434, -63
  %5436 = lshr i32 %5435, 17
  %5437 = xor i32 %5436, %5435
  %5438 = mul i32 %5437, -511
  %5439 = mul i32 %5437, -8176
  %5440 = xor i32 %5438, %5439
  %5441 = mul i32 %5440, -7
  %5442 = mul i32 %5440, -7168
  %5443 = xor i32 %5441, %5442
  %5444 = lshr i32 %5443, 15
  %5445 = xor i32 %5444, %5441
  %5446 = and i32 %5445, 15
  %5447 = mul i32 %5446, 2
  %5448 = add i32 0, %5447
  %5449 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5448
  %5450 = load float, float* %5449, align 4
  %5451 = mul i32 %5446, 2
  %5452 = add i32 1, %5451
  %5453 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5452
  %5454 = load float, float* %5453, align 4
  %5455 = fmul fast float %5241, 2.770000e+02
  %5456 = fmul fast float %5455, %5429
  %5457 = fmul fast float %5237, 5.990000e+02
  %5458 = fadd fast float %5456, %5457
  %5459 = fptoui float %5458 to i32
  %5460 = mul i32 %5459, -63
  %5461 = lshr i32 %5460, 17
  %5462 = xor i32 %5461, %5460
  %5463 = mul i32 %5462, -511
  %5464 = mul i32 %5462, -8176
  %5465 = xor i32 %5463, %5464
  %5466 = mul i32 %5465, -7
  %5467 = mul i32 %5465, -7168
  %5468 = xor i32 %5466, %5467
  %5469 = lshr i32 %5468, 15
  %5470 = xor i32 %5469, %5466
  %5471 = and i32 %5470, 63
  %5472 = mul i32 %5471, 2
  %5473 = add i32 0, %5472
  %5474 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5473
  %5475 = load float, float* %5474, align 4
  %5476 = mul i32 %5471, 2
  %5477 = add i32 1, %5476
  %5478 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5477
  %5479 = load float, float* %5478, align 4
  %5480 = call float @dx.op.dot2.f32(i32 54, float %5450, float %5454, float %5475, float %5479)  ; Dot2(ax,ay,bx,by)
  %5481 = fsub fast float -0.000000e+00, %5475
  %5482 = call float @dx.op.dot2.f32(i32 54, float %5450, float %5454, float %5481, float %5479)  ; Dot2(ax,ay,bx,by)
  %5483 = fmul fast float %5480, %5425
  %5484 = fmul fast float %5482, %5425
  %5485 = fadd fast float %5483, %5298
  %5486 = fadd fast float %5484, %5299
  %5487 = fdiv fast float 2.000000e+00, %5293
  %5488 = fmul fast float %5487, %5483
  %5489 = fmul fast float %5484, %5487
  %5490 = fadd fast float %5488, %5237
  %5491 = fadd fast float %5489, %5241
  br label %5492

; <label>:5492                                    ; preds = %5424, %5413, %5402, %5315
  %5493 = phi float [ %5406, %5402 ], [ %5302, %5315 ], [ %5302, %5424 ], [ %5302, %5413 ]
  %5494 = phi float [ %5407, %5402 ], [ %5303, %5315 ], [ %5303, %5424 ], [ %5303, %5413 ]
  %5495 = phi float [ %5403, %5402 ], [ %5298, %5315 ], [ %5485, %5424 ], [ %5298, %5413 ]
  %5496 = phi float [ %5404, %5402 ], [ %5299, %5315 ], [ %5486, %5424 ], [ %5299, %5413 ]
  %5497 = phi i32 [ %5405, %5402 ], [ 0, %5315 ], [ 1, %5424 ], [ 0, %5413 ]
  %5498 = phi float [ %5411, %5402 ], [ %5237, %5315 ], [ %5490, %5424 ], [ %5237, %5413 ]
  %5499 = phi float [ %5412, %5402 ], [ %5241, %5315 ], [ %5491, %5424 ], [ %5241, %5413 ]
  %5500 = fsub fast float %5264, %5262
  %5501 = fptoui float %5500 to i32
  %5502 = add i32 %5501, 320
  %5503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %5502)  ; CBufferLoadLegacy(handle,regIndex)
  %5504 = extractvalue %dx.types.CBufRet.f32 %5503, 0
  %5505 = extractvalue %dx.types.CBufRet.f32 %5503, 1
  %5506 = fcmp fast une float %5289, %5264
  %5507 = fsub fast float %5498, %5504
  %5508 = fsub fast float %5499, %5505
  %5509 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5510 = call float @dx.op.unary.f32(i32 6, float %5508)  ; FAbs(value)
  %5511 = fmul fast float %5509, %5293
  %5512 = fmul fast float %5510, %5293
  %5513 = fcmp fast olt float %5511, 1.000000e+00
  %5514 = fcmp fast olt float %5512, 1.000000e+00
  %5515 = and i1 %5513, %5514
  %5516 = or i1 %5506, %5515
  br i1 %5516, label %5517, label %5885, !dx.controlflow.hints !135

; <label>:5517                                    ; preds = %5492
  %5518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5519 = extractvalue %dx.types.CBufRet.i32 %5518, 2
  %5520 = sitofp i32 %5519 to float
  %5521 = fsub fast float %5289, %5520
  %5522 = call float @dx.op.unary.f32(i32 27, float %5521)  ; Round_ni(value)
  %5523 = call float @dx.op.unary.f32(i32 22, float %5289)  ; Frc(value)
  %5524 = icmp eq i32 %5497, 0
  %5525 = call float @dx.op.unary.f32(i32 22, float %5495)  ; Frc(value)
  %5526 = call float @dx.op.unary.f32(i32 22, float %5496)  ; Frc(value)
  br i1 %5524, label %5597, label %5527, !dx.controlflow.hints !136

; <label>:5527                                    ; preds = %5517
  %5528 = and i32 %5497, 1
  %5529 = icmp eq i32 %5528, 0
  br i1 %5529, label %5543, label %5530, !dx.controlflow.hints !137

; <label>:5530                                    ; preds = %5527
  %5531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5531, 0
  %5533 = fmul fast float %5525, %5532
  %5534 = fmul fast float %5526, %5532
  %5535 = fptoui float %5533 to i32
  %5536 = fptoui float %5534 to i32
  %5537 = fptoui float %5522 to i32
  %5538 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5535, i32 %5536, i32 %5537, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 0
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 1
  %5541 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5542 = extractvalue %dx.types.ResRet.f32 %5538, 3
  br label %5549

; <label>:5543                                    ; preds = %5527
  %5544 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5525, float %5526, float %5522, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5545 = extractvalue %dx.types.ResRet.f32 %5544, 0
  %5546 = extractvalue %dx.types.ResRet.f32 %5544, 1
  %5547 = extractvalue %dx.types.ResRet.f32 %5544, 2
  %5548 = extractvalue %dx.types.ResRet.f32 %5544, 3
  br label %5549

; <label>:5549                                    ; preds = %5543, %5530
  %5550 = phi float [ %5539, %5530 ], [ %5545, %5543 ]
  %5551 = phi float [ %5540, %5530 ], [ %5546, %5543 ]
  %5552 = phi float [ %5541, %5530 ], [ %5547, %5543 ]
  %5553 = phi float [ %5542, %5530 ], [ %5548, %5543 ]
  %5554 = fcmp fast ogt float %5523, 0.000000e+00
  br i1 %5554, label %5555, label %5625

; <label>:5555                                    ; preds = %5549
  %5556 = and i32 %5497, 2
  %5557 = icmp eq i32 %5556, 0
  %5558 = fadd fast float %5522, 1.000000e+00
  %5559 = call float @dx.op.unary.f32(i32 22, float %5493)  ; Frc(value)
  %5560 = call float @dx.op.unary.f32(i32 22, float %5494)  ; Frc(value)
  br i1 %5557, label %5574, label %5561, !dx.controlflow.hints !138

; <label>:5561                                    ; preds = %5555
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 0
  %5564 = fmul fast float %5559, %5563
  %5565 = fmul fast float %5560, %5563
  %5566 = fptoui float %5564 to i32
  %5567 = fptoui float %5565 to i32
  %5568 = fptoui float %5558 to i32
  %5569 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5566, i32 %5567, i32 %5568, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5570 = extractvalue %dx.types.ResRet.f32 %5569, 0
  %5571 = extractvalue %dx.types.ResRet.f32 %5569, 1
  %5572 = extractvalue %dx.types.ResRet.f32 %5569, 2
  %5573 = extractvalue %dx.types.ResRet.f32 %5569, 3
  br label %5580

; <label>:5574                                    ; preds = %5555
  %5575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5559, float %5560, float %5558, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5576 = extractvalue %dx.types.ResRet.f32 %5575, 0
  %5577 = extractvalue %dx.types.ResRet.f32 %5575, 1
  %5578 = extractvalue %dx.types.ResRet.f32 %5575, 2
  %5579 = extractvalue %dx.types.ResRet.f32 %5575, 3
  br label %5580

; <label>:5580                                    ; preds = %5574, %5561
  %5581 = phi float [ %5570, %5561 ], [ %5576, %5574 ]
  %5582 = phi float [ %5571, %5561 ], [ %5577, %5574 ]
  %5583 = phi float [ %5572, %5561 ], [ %5578, %5574 ]
  %5584 = phi float [ %5573, %5561 ], [ %5579, %5574 ]
  %5585 = fsub fast float %5581, %5550
  %5586 = fsub fast float %5582, %5551
  %5587 = fsub fast float %5583, %5552
  %5588 = fsub fast float %5584, %5553
  %5589 = fmul fast float %5585, %5523
  %5590 = fmul fast float %5586, %5523
  %5591 = fmul fast float %5587, %5523
  %5592 = fmul fast float %5588, %5523
  %5593 = fadd fast float %5589, %5550
  %5594 = fadd fast float %5590, %5551
  %5595 = fadd fast float %5591, %5552
  %5596 = fadd fast float %5592, %5553
  br label %5625

; <label>:5597                                    ; preds = %5517
  %5598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5525, float %5526, float %5522, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5599 = extractvalue %dx.types.ResRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.ResRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.ResRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.ResRet.f32 %5598, 3
  %5603 = fcmp fast ogt float %5523, 0.000000e+00
  br i1 %5603, label %5604, label %5625, !dx.controlflow.hints !139

; <label>:5604                                    ; preds = %5597
  %5605 = fadd fast float %5522, 1.000000e+00
  %5606 = call float @dx.op.unary.f32(i32 22, float %5493)  ; Frc(value)
  %5607 = call float @dx.op.unary.f32(i32 22, float %5494)  ; Frc(value)
  %5608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %60, float %5606, float %5607, float %5605, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5612 = extractvalue %dx.types.ResRet.f32 %5608, 3
  %5613 = fsub fast float %5609, %5599
  %5614 = fsub fast float %5610, %5600
  %5615 = fsub fast float %5611, %5601
  %5616 = fsub fast float %5612, %5602
  %5617 = fmul fast float %5613, %5523
  %5618 = fmul fast float %5614, %5523
  %5619 = fmul fast float %5615, %5523
  %5620 = fmul fast float %5616, %5523
  %5621 = fadd fast float %5617, %5599
  %5622 = fadd fast float %5618, %5600
  %5623 = fadd fast float %5619, %5601
  %5624 = fadd fast float %5620, %5602
  br label %5625

; <label>:5625                                    ; preds = %5604, %5597, %5580, %5549
  %5626 = phi float [ %5593, %5580 ], [ %5550, %5549 ], [ %5621, %5604 ], [ %5599, %5597 ]
  %5627 = phi float [ %5594, %5580 ], [ %5551, %5549 ], [ %5622, %5604 ], [ %5600, %5597 ]
  %5628 = phi float [ %5595, %5580 ], [ %5552, %5549 ], [ %5623, %5604 ], [ %5601, %5597 ]
  %5629 = phi float [ %5596, %5580 ], [ %5553, %5549 ], [ %5624, %5604 ], [ %5602, %5597 ]
  %5630 = fadd fast float %5626, -5.000000e-01
  %5631 = fadd fast float %5628, -5.000000e-01
  %5632 = fmul fast float %5630, 0xBFD5555560000000
  %5633 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5631, float %5632)  ; FMad(a,b,c)
  %5634 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5627, float 0.000000e+00)  ; FMad(a,b,c)
  %5635 = fadd fast float %5634, %5629
  %5636 = fmul fast float %5630, -7.500000e-01
  %5637 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5631, float %5636)  ; FMad(a,b,c)
  %5638 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5627, float 0.000000e+00)  ; FMad(a,b,c)
  %5639 = fadd fast float %5638, %5629
  %5640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5641 = extractvalue %dx.types.CBufRet.f32 %5640, 0
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5645 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5646 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5647 = fsub fast float %5643, %5633
  %5648 = fsub fast float %5644, %5635
  %5649 = fsub fast float %5645, %5637
  %5650 = fsub fast float %5646, %5639
  %5651 = fmul fast float %5647, %5641
  %5652 = fmul fast float %5648, %5641
  %5653 = fmul fast float %5649, %5641
  %5654 = fmul fast float %5650, %5641
  %5655 = fadd fast float %5651, %5633
  %5656 = fadd fast float %5652, %5635
  %5657 = fadd fast float %5653, %5637
  %5658 = fadd fast float %5654, %5639
  %5659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5660 = extractvalue %dx.types.ResRet.i32 %5659, 0
  %5661 = and i32 %5660, 536870911
  %5662 = uitofp i32 %5661 to float
  %5663 = fmul fast float %5662, %5498
  %5664 = fmul fast float %5662, %5499
  %5665 = fptoui float %5663 to i32
  %5666 = fptoui float %5664 to i32
  %5667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5668 = extractvalue %dx.types.ResRet.i32 %5667, 0
  %5669 = and i32 %5668, 31
  %5670 = lshr i32 %5665, %5669
  %5671 = lshr i32 %5666, %5669
  %5672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5673 = extractvalue %dx.types.ResRet.i32 %5672, 0
  %5674 = and i32 %5673, 31
  %5675 = shl i32 1, %5674
  %5676 = call i32 @dx.op.binary.i32(i32 40, i32 %5675, i32 4)  ; UMin(a,b)
  %5677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5678 = extractvalue %dx.types.ResRet.i32 %5677, 0
  %5679 = extractvalue %dx.types.ResRet.i32 %5677, 1
  %5680 = icmp eq i32 %5676, 0
  br i1 %5680, label %5722, label %5681

; <label>:5681                                    ; preds = %5625
  br label %5682

; <label>:5682                                    ; preds = %5710, %5681
  %5683 = phi i32 [ %5713, %5710 ], [ 0, %5681 ]
  %5684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5685 = extractvalue %dx.types.ResRet.i32 %5684, 0
  %5686 = lshr i32 %5685, 16
  %5687 = and i32 %5686, 31
  %5688 = shl i32 %5671, %5687
  %5689 = add i32 %5688, %5670
  %5690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5691 = extractvalue %dx.types.ResRet.i32 %5690, 0
  %5692 = and i32 %5691, 31
  %5693 = shl i32 %5689, %5692
  %5694 = add i32 %5693, %5683
  %5695 = shl i32 %5694, 2
  %5696 = add i32 %5695, 32
  %5697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5696, i32 undef)  ; BufferLoad(srv,index,wot)
  %5698 = extractvalue %dx.types.ResRet.i32 %5697, 0
  %5699 = icmp slt i32 %5698, 0
  %5700 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5683
  %5701 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5683
  %5702 = bitcast float* %5700 to i32*
  %5703 = bitcast float* %5701 to i32*
  br i1 %5699, label %5704, label %5710

; <label>:5704                                    ; preds = %5682
  %5705 = and i32 %5698, 1073741823
  %5706 = add nuw nsw i32 %5705, 20
  %5707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5706, i32 undef)  ; BufferLoad(srv,index,wot)
  %5708 = extractvalue %dx.types.ResRet.i32 %5707, 0
  %5709 = extractvalue %dx.types.ResRet.i32 %5707, 1
  br label %5710

; <label>:5710                                    ; preds = %5704, %5682
  %5711 = phi i32 [ %5708, %5704 ], [ %5678, %5682 ]
  %5712 = phi i32 [ %5709, %5704 ], [ %5679, %5682 ]
  store i32 %5711, i32* %5702, align 4
  store i32 %5712, i32* %5703, align 4
  %5713 = add nuw i32 %5683, 1
  %5714 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.i32 %5714, 2
  %5716 = icmp eq i32 %5715, 0
  %5717 = icmp ugt i32 %5698, -1073741825
  %5718 = and i1 %5717, %5716
  %5719 = icmp ult i32 %5713, %5676
  %5720 = and i1 %5718, %5719
  br i1 %5720, label %5682, label %5721

; <label>:5721                                    ; preds = %5710
  br label %5722

; <label>:5722                                    ; preds = %5721, %5625
  %5723 = phi i32 [ 0, %5625 ], [ %5713, %5721 ]
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 2
  %5726 = fptoui float %5725 to i32
  %5727 = icmp eq i32 %5726, 0
  br i1 %5727, label %5779, label %5728

; <label>:5728                                    ; preds = %5722
  br label %5729

; <label>:5729                                    ; preds = %5774, %5728
  %5730 = phi i32 [ %5775, %5774 ], [ %5723, %5728 ]
  %5731 = phi i32 [ %5776, %5774 ], [ 0, %5728 ]
  %5732 = lshr i32 %5731, 2
  %5733 = and i32 %5731, 3
  %5734 = add nuw nsw i32 %5732, 83
  %5735 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 %5734)  ; CBufferLoadLegacy(handle,regIndex)
  %5736 = extractvalue %dx.types.CBufRet.i32 %5735, 0
  %5737 = extractvalue %dx.types.CBufRet.i32 %5735, 1
  %5738 = extractvalue %dx.types.CBufRet.i32 %5735, 2
  %5739 = extractvalue %dx.types.CBufRet.i32 %5735, 3
  %5740 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 0
  store i32 %5736, i32* %5740, align 4
  %5741 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 1
  store i32 %5737, i32* %5741, align 4
  %5742 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 2
  store i32 %5738, i32* %5742, align 4
  %5743 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 3
  store i32 %5739, i32* %5743, align 4
  %5744 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i32 0, i32 %5733
  %5745 = load i32, i32* %5744, align 4, !tbaa !140, !noalias !142
  %5746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5747 = extractvalue %dx.types.ResRet.i32 %5746, 0
  %5748 = lshr i32 %5747, 16
  %5749 = and i32 %5748, 31
  %5750 = shl i32 %5671, %5749
  %5751 = add i32 %5750, %5670
  %5752 = shl i32 %5751, 2
  %5753 = add i32 %5752, %5745
  %5754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5753, i32 undef)  ; BufferLoad(srv,index,wot)
  %5755 = extractvalue %dx.types.ResRet.i32 %5754, 0
  %5756 = icmp eq i32 %5755, 0
  br i1 %5756, label %5774, label %5757

; <label>:5757                                    ; preds = %5729
  %5758 = icmp slt i32 %5755, 0
  %5759 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5730
  %5760 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5730
  %5761 = bitcast float* %5759 to i32*
  %5762 = bitcast float* %5760 to i32*
  br i1 %5758, label %5763, label %5770

; <label>:5763                                    ; preds = %5757
  %5764 = and i32 %5755, 1073741823
  %5765 = add i32 %5745, 20
  %5766 = add i32 %5765, %5764
  %5767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5766, i32 undef)  ; BufferLoad(srv,index,wot)
  %5768 = extractvalue %dx.types.ResRet.i32 %5767, 0
  %5769 = extractvalue %dx.types.ResRet.i32 %5767, 1
  br label %5770

; <label>:5770                                    ; preds = %5763, %5757
  %5771 = phi i32 [ %5768, %5763 ], [ %5678, %5757 ]
  %5772 = phi i32 [ %5769, %5763 ], [ %5679, %5757 ]
  store i32 %5771, i32* %5761, align 4
  store i32 %5772, i32* %5762, align 4
  %5773 = add i32 %5730, 1
  br label %5774

; <label>:5774                                    ; preds = %5770, %5729
  %5775 = phi i32 [ %5730, %5729 ], [ %5773, %5770 ]
  %5776 = add nuw i32 %5731, 1
  %5777 = icmp eq i32 %5776, %5726
  br i1 %5777, label %5778, label %5729

; <label>:5778                                    ; preds = %5774
  br label %5779

; <label>:5779                                    ; preds = %5778, %5722
  %5780 = phi i32 [ %5723, %5722 ], [ %5775, %5778 ]
  %5781 = icmp eq i32 %5780, 1
  %5782 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 0
  %5783 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  br i1 %5781, label %5784, label %5787

; <label>:5784                                    ; preds = %5779
  %5785 = load float, float* %5782, align 4
  %5786 = load float, float* %5783, align 4
  br label %5814

; <label>:5787                                    ; preds = %5779
  %5788 = load float, float* %5782, align 4
  %5789 = load float, float* %5783, align 4
  %5790 = fdiv fast float 1.000000e+00, %5789
  %5791 = fsub fast float %5788, %5790
  %5792 = icmp ugt i32 %5780, 1
  br i1 %5792, label %5793, label %5809

; <label>:5793                                    ; preds = %5787
  br label %5794

; <label>:5794                                    ; preds = %5794, %5793
  %5795 = phi float [ %5804, %5794 ], [ %5791, %5793 ]
  %5796 = phi float [ %5805, %5794 ], [ %5788, %5793 ]
  %5797 = phi i32 [ %5806, %5794 ], [ 1, %5793 ]
  %5798 = getelementptr [12 x float], [12 x float]* %88, i32 0, i32 %5797
  %5799 = load float, float* %5798, align 4
  %5800 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5797
  %5801 = load float, float* %5800, align 4
  %5802 = fdiv fast float 1.000000e+00, %5801
  %5803 = fsub fast float %5799, %5802
  %5804 = call float @dx.op.binary.f32(i32 36, float %5795, float %5803)  ; FMin(a,b)
  %5805 = call float @dx.op.binary.f32(i32 35, float %5796, float %5799)  ; FMax(a,b)
  %5806 = add nuw i32 %5797, 1
  %5807 = icmp eq i32 %5806, %5780
  br i1 %5807, label %5808, label %5794

; <label>:5808                                    ; preds = %5794
  br label %5809

; <label>:5809                                    ; preds = %5808, %5787
  %5810 = phi float [ %5791, %5787 ], [ %5804, %5808 ]
  %5811 = phi float [ %5788, %5787 ], [ %5805, %5808 ]
  %5812 = fsub fast float %5811, %5810
  %5813 = fdiv fast float 1.000000e+00, %5812
  br label %5814

; <label>:5814                                    ; preds = %5809, %5784
  %5815 = phi float [ %5785, %5784 ], [ %5811, %5809 ]
  %5816 = phi float [ %5786, %5784 ], [ %5813, %5809 ]
  %5817 = fadd fast float %5245, %5815
  %5818 = fmul fast float %5817, %5816
  %5819 = call float @dx.op.unary.f32(i32 7, float %5818)  ; Saturate(value)
  %5820 = fmul fast float %5819, 2.000000e+00
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = fmul fast float %5655, %5655
  %5823 = fsub fast float %5656, %5822
  %5824 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5823)  ; FMax(a,b)
  %5825 = fdiv fast float 1.000000e+00, %5824
  %5826 = fmul fast float %5656, %5655
  %5827 = fsub fast float %5657, %5826
  %5828 = fsub fast float %5821, %5655
  %5829 = fmul fast float %5821, %5821
  %5830 = fsub fast float %5829, %5656
  %5831 = fmul fast float %5825, %5827
  %5832 = fmul fast float %5831, %5828
  %5833 = fsub fast float %5830, %5832
  %5834 = fmul fast float %5656, %5656
  %5835 = fsub fast float %5658, %5834
  %5836 = fmul fast float %5827, %5827
  %5837 = fmul fast float %5836, %5825
  %5838 = fsub fast float %5835, %5837
  %5839 = fdiv fast float %5833, %5838
  %5840 = fmul fast float %5839, %5827
  %5841 = fsub fast float %5828, %5840
  %5842 = fmul fast float %5841, %5825
  %5843 = fmul fast float %5842, %5655
  %5844 = fsub fast float 1.000000e+00, %5843
  %5845 = fmul fast float %5839, %5656
  %5846 = fsub fast float %5844, %5845
  %5847 = fmul fast float %5842, %5842
  %5848 = fmul fast float %5839, 4.000000e+00
  %5849 = fmul fast float %5848, %5846
  %5850 = fsub fast float %5847, %5849
  %5851 = call float @dx.op.unary.f32(i32 24, float %5850)  ; Sqrt(value)
  %5852 = fcmp fast oge float %5842, 0.000000e+00
  %5853 = fsub fast float -0.000000e+00, %5851
  %5854 = select i1 %5852, float %5853, float %5851
  %5855 = fsub fast float %5854, %5842
  %5856 = fdiv fast float %5855, %5839
  %5857 = fdiv fast float %5846, %5855
  %5858 = fmul fast float %5856, 5.000000e-01
  %5859 = fmul fast float %5857, 2.000000e+00
  %5860 = select i1 %5852, float %5858, float %5859
  %5861 = select i1 %5852, float %5859, float %5858
  %5862 = call float @dx.op.binary.f32(i32 35, float %5860, float %5861)  ; FMax(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5860, float %5861)  ; FMin(a,b)
  %5864 = fcmp fast ogt float %5821, %5862
  %5865 = fsub fast float %5821, %5863
  %5866 = fsub fast float %5821, %5862
  %5867 = fsub fast float %5862, %5863
  %5868 = select i1 %5864, float %5866, float %5867
  %5869 = fmul float %5865, %5868
  %5870 = select i1 %5864, float %5863, float %5821
  %5871 = fcmp fast ogt float %5821, %5863
  %5872 = fmul fast float %5870, %5862
  %5873 = fadd fast float %5870, %5862
  %5874 = fmul fast float %5873, %5655
  %5875 = fadd fast float %5872, %5656
  %5876 = fsub fast float %5875, %5874
  %5877 = fdiv fast float %5876, %5869
  %5878 = select i1 %5871, float %5877, float 0.000000e+00
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = select i1 %5864, float %5879, float %5878
  %5881 = call float @dx.op.unary.f32(i32 7, float %5880)  ; Saturate(value)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5640, 3
  %5883 = fmul fast float %5882, %5881
  %5884 = fsub fast float 1.000000e+00, %5883
  br label %5885

; <label>:5885                                    ; preds = %5814, %5492, %5218, %5214, %5184
  %5886 = phi float [ 1.000000e+00, %5184 ], [ %5884, %5814 ], [ 1.000000e+00, %5218 ], [ 1.000000e+00, %5492 ], [ 1.000000e+00, %5214 ]
  %5887 = fcmp fast ogt float %5210, 0.000000e+00
  br i1 %5887, label %5888, label %6052, !dx.controlflow.hints !147

; <label>:5888                                    ; preds = %5885
  %5889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5890 = extractvalue %dx.types.CBufRet.f32 %5889, 2
  %5891 = fadd fast float %5890, %5130
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5894 = extractvalue %dx.types.CBufRet.f32 %5892, 3
  %5895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5896 = extractvalue %dx.types.CBufRet.f32 %5895, 2
  %5897 = call float @dx.op.binary.f32(i32 35, float %5891, float 0.000000e+00)  ; FMax(a,b)
  %5898 = fadd fast float %5897, 0x3F10000000000000
  %5899 = fcmp fast oeq float %5896, 0.000000e+00
  br i1 %5899, label %5900, label %5967

; <label>:5900                                    ; preds = %5888
  %5901 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5902 = extractvalue %dx.types.CBufRet.f32 %5892, 0
  %5903 = fmul fast float %5902, %5018
  %5904 = fmul fast float %5901, %5019
  %5905 = fadd fast float %5903, 5.000000e-01
  %5906 = call float @dx.op.unary.f32(i32 27, float %5905)  ; Round_ni(value)
  %5907 = fadd fast float %5904, 5.000000e-01
  %5908 = call float @dx.op.unary.f32(i32 27, float %5907)  ; Round_ni(value)
  %5909 = fsub fast float %5905, %5906
  %5910 = fsub fast float %5907, %5908
  %5911 = fadd fast float %5906, -5.000000e-01
  %5912 = fadd fast float %5908, -5.000000e-01
  %5913 = fmul fast float %5909, 2.000000e+00
  %5914 = fsub fast float 3.000000e+00, %5913
  %5915 = fadd fast float %5913, 1.000000e+00
  %5916 = fsub fast float 2.000000e+00, %5909
  %5917 = bitcast float %5914 to i32
  %5918 = sub nsw i32 2129859010, %5917
  %5919 = bitcast i32 %5918 to float
  %5920 = fmul fast float %5919, %5916
  %5921 = fadd fast float %5920, -1.000000e+00
  %5922 = bitcast float %5915 to i32
  %5923 = sub nsw i32 2129859010, %5922
  %5924 = bitcast i32 %5923 to float
  %5925 = fmul fast float %5924, %5909
  %5926 = fadd fast float %5925, 1.000000e+00
  %5927 = fmul fast float %5910, 2.000000e+00
  %5928 = fsub fast float 3.000000e+00, %5927
  %5929 = fadd fast float %5927, 1.000000e+00
  %5930 = fsub fast float 2.000000e+00, %5910
  %5931 = bitcast float %5928 to i32
  %5932 = sub nsw i32 2129859010, %5931
  %5933 = bitcast i32 %5932 to float
  %5934 = fmul fast float %5933, %5930
  %5935 = fadd fast float %5934, -1.000000e+00
  %5936 = bitcast float %5929 to i32
  %5937 = sub nsw i32 2129859010, %5936
  %5938 = bitcast i32 %5937 to float
  %5939 = fmul fast float %5938, %5910
  %5940 = fadd fast float %5939, 1.000000e+00
  %5941 = fadd fast float %5921, %5911
  %5942 = fmul fast float %5941, %5893
  %5943 = fadd fast float %5935, %5912
  %5944 = fmul fast float %5943, %5894
  %5945 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5942, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float %5898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = fmul fast float %5946, %5914
  %5948 = fadd fast float %5926, %5911
  %5949 = fmul fast float %5948, %5893
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5949, float %5944, float undef, float undef, i32 0, i32 0, i32 undef, float %5898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = fmul fast float %5951, %5915
  %5953 = fadd fast float %5940, %5912
  %5954 = fmul fast float %5953, %5894
  %5955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5942, float %5954, float undef, float undef, i32 0, i32 0, i32 undef, float %5898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = fmul fast float %5956, %5914
  %5958 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %63, float %5949, float %5954, float undef, float undef, i32 0, i32 0, i32 undef, float %5898)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5959 = extractvalue %dx.types.ResRet.f32 %5958, 0
  %5960 = fmul fast float %5959, %5915
  %5961 = fadd fast float %5960, %5957
  %5962 = fmul fast float %5961, %5929
  %5963 = fadd fast float %5952, %5947
  %5964 = fmul fast float %5963, %5928
  %5965 = fadd fast float %5964, %5962
  %5966 = fmul fast float %5965, 6.250000e-02
  br label %6052

; <label>:5967                                    ; preds = %5888
  %5968 = fmul fast float %1336, 0x401921FB60000000
  %5969 = call float @dx.op.unary.f32(i32 13, float %5968)  ; Sin(value)
  %5970 = call float @dx.op.unary.f32(i32 12, float %5968)  ; Cos(value)
  %5971 = fsub fast float -0.000000e+00, %5969
  br label %5972

; <label>:5972                                    ; preds = %6021, %5967
  %5973 = phi float [ 0.000000e+00, %5967 ], [ %6016, %6021 ]
  %5974 = phi float [ 0.000000e+00, %5967 ], [ %6018, %6021 ]
  %5975 = phi i32 [ 0, %5967 ], [ %6022, %6021 ]
  %5976 = mul i32 %5975, 2
  %5977 = add i32 0, %5976
  %5978 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5977
  %5979 = load float, float* %5978, align 4
  %5980 = mul i32 %5975, 2
  %5981 = add i32 1, %5980
  %5982 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5981
  %5983 = load float, float* %5982, align 4
  %5984 = fmul fast float %5979, %5970
  %5985 = call float @dx.op.tertiary.f32(i32 46, float %5983, float %5971, float %5984)  ; FMad(a,b,c)
  %5986 = fmul fast float %5979, %5969
  %5987 = call float @dx.op.tertiary.f32(i32 46, float %5983, float %5970, float %5986)  ; FMad(a,b,c)
  %5988 = fmul fast float %5985, %5896
  %5989 = fmul fast float %5987, %5896
  %5990 = fadd fast float %5988, %5018
  %5991 = fadd fast float %5989, %5019
  %5992 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %62, float %5990, float %5991, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5993 = extractvalue %dx.types.ResRet.f32 %5992, 0
  %5994 = extractvalue %dx.types.ResRet.f32 %5992, 1
  %5995 = extractvalue %dx.types.ResRet.f32 %5992, 2
  %5996 = extractvalue %dx.types.ResRet.f32 %5992, 3
  %5997 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %5993, float* %5997, align 4
  %5998 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %5994, float* %5998, align 4
  %5999 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %5995, float* %5999, align 4
  %6000 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %5996, float* %6000, align 4
  %6001 = fsub fast float %5993, %5898
  %6002 = fcmp fast olt float %6001, 0.000000e+00
  %6003 = select i1 %6002, float 0.000000e+00, float 1.000000e+00
  %6004 = fadd fast float %6003, %5973
  %6005 = fmul fast float %6003, %6001
  %6006 = fadd fast float %6005, %5974
  br label %6007

; <label>:6007                                    ; preds = %6007, %5972
  %6008 = phi i32 [ 1, %5972 ], [ %6019, %6007 ]
  %6009 = phi float [ %6006, %5972 ], [ %6018, %6007 ]
  %6010 = phi float [ %6004, %5972 ], [ %6016, %6007 ]
  %6011 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6008
  %6012 = load float, float* %6011, align 4, !tbaa !106, !noalias !148
  %6013 = fsub fast float %6012, %5898
  %6014 = fcmp fast olt float %6013, 0.000000e+00
  %6015 = select i1 %6014, float 0.000000e+00, float 1.000000e+00
  %6016 = fadd fast float %6015, %6010
  %6017 = fmul fast float %6015, %6013
  %6018 = fadd fast float %6017, %6009
  %6019 = add nuw nsw i32 %6008, 1
  %6020 = icmp eq i32 %6019, 4
  br i1 %6020, label %6021, label %6007, !llvm.loop !153

; <label>:6021                                    ; preds = %6007
  %6022 = add nuw nsw i32 %5975, 1
  %6023 = icmp eq i32 %6022, 8
  br i1 %6023, label %6024, label %5972, !llvm.loop !154

; <label>:6024                                    ; preds = %6021
  %6025 = fdiv fast float 1.000000e+00, %6016
  %6026 = fmul fast float %6025, %6018
  %6027 = fdiv fast float 1.000000e+00, %5898
  %6028 = fmul fast float %6026, %6027
  %6029 = call float @dx.op.unary.f32(i32 7, float %6028)  ; Saturate(value)
  %6030 = call float @dx.op.binary.f32(i32 35, float %6029, float 0.000000e+00)  ; FMax(a,b)
  %6031 = fmul fast float %6016, 3.125000e-02
  %6032 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6033 = fmul fast float %6032, 2.000000e+00
  %6034 = fadd fast float %6033, -1.000000e+00
  %6035 = fcmp fast ogt float %6034, 0.000000e+00
  %6036 = fcmp fast olt float %6034, 0.000000e+00
  %6037 = zext i1 %6035 to i32
  %6038 = zext i1 %6036 to i32
  %6039 = sub nsw i32 %6037, %6038
  %6040 = sitofp i32 %6039 to float
  %6041 = fmul fast float %6040, %6034
  %6042 = fsub fast float 1.000000e+00, %6041
  %6043 = fmul fast float %6042, %6042
  %6044 = fmul fast float %6043, %6042
  %6045 = fsub fast float %6042, %6044
  %6046 = fmul fast float %6045, %6030
  %6047 = fsub fast float 1.000000e+00, %6044
  %6048 = fsub fast float %6047, %6046
  %6049 = fmul fast float %6040, 5.000000e-01
  %6050 = fmul fast float %6049, %6048
  %6051 = fsub fast float 5.000000e-01, %6050
  br label %6052

; <label>:6052                                    ; preds = %6024, %5900, %5885
  %6053 = phi float [ 1.000000e+00, %5885 ], [ %5966, %5900 ], [ %6051, %6024 ]
  %6054 = fcmp fast ogt float %5208, 0.000000e+00
  br i1 %6054, label %6055, label %6219, !dx.controlflow.hints !155

; <label>:6055                                    ; preds = %6052
  %6056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6057 = extractvalue %dx.types.CBufRet.f32 %6056, 1
  %6058 = fadd fast float %6057, %5130
  %6059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6060 = extractvalue %dx.types.CBufRet.f32 %6059, 2
  %6061 = extractvalue %dx.types.CBufRet.f32 %6059, 3
  %6062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6063 = extractvalue %dx.types.CBufRet.f32 %6062, 1
  %6064 = call float @dx.op.binary.f32(i32 35, float %6058, float 0.000000e+00)  ; FMax(a,b)
  %6065 = fadd fast float %6064, 0x3F10000000000000
  %6066 = fcmp fast oeq float %6063, 0.000000e+00
  br i1 %6066, label %6067, label %6134

; <label>:6067                                    ; preds = %6055
  %6068 = extractvalue %dx.types.CBufRet.f32 %6059, 1
  %6069 = extractvalue %dx.types.CBufRet.f32 %6059, 0
  %6070 = fmul fast float %6069, %5010
  %6071 = fmul fast float %6068, %5011
  %6072 = fadd fast float %6070, 5.000000e-01
  %6073 = call float @dx.op.unary.f32(i32 27, float %6072)  ; Round_ni(value)
  %6074 = fadd fast float %6071, 5.000000e-01
  %6075 = call float @dx.op.unary.f32(i32 27, float %6074)  ; Round_ni(value)
  %6076 = fsub fast float %6072, %6073
  %6077 = fsub fast float %6074, %6075
  %6078 = fadd fast float %6073, -5.000000e-01
  %6079 = fadd fast float %6075, -5.000000e-01
  %6080 = fmul fast float %6076, 2.000000e+00
  %6081 = fsub fast float 3.000000e+00, %6080
  %6082 = fadd fast float %6080, 1.000000e+00
  %6083 = fsub fast float 2.000000e+00, %6076
  %6084 = bitcast float %6081 to i32
  %6085 = sub nsw i32 2129859010, %6084
  %6086 = bitcast i32 %6085 to float
  %6087 = fmul fast float %6086, %6083
  %6088 = fadd fast float %6087, -1.000000e+00
  %6089 = bitcast float %6082 to i32
  %6090 = sub nsw i32 2129859010, %6089
  %6091 = bitcast i32 %6090 to float
  %6092 = fmul fast float %6091, %6076
  %6093 = fadd fast float %6092, 1.000000e+00
  %6094 = fmul fast float %6077, 2.000000e+00
  %6095 = fsub fast float 3.000000e+00, %6094
  %6096 = fadd fast float %6094, 1.000000e+00
  %6097 = fsub fast float 2.000000e+00, %6077
  %6098 = bitcast float %6095 to i32
  %6099 = sub nsw i32 2129859010, %6098
  %6100 = bitcast i32 %6099 to float
  %6101 = fmul fast float %6100, %6097
  %6102 = fadd fast float %6101, -1.000000e+00
  %6103 = bitcast float %6096 to i32
  %6104 = sub nsw i32 2129859010, %6103
  %6105 = bitcast i32 %6104 to float
  %6106 = fmul fast float %6105, %6077
  %6107 = fadd fast float %6106, 1.000000e+00
  %6108 = fadd fast float %6088, %6078
  %6109 = fmul fast float %6108, %6060
  %6110 = fadd fast float %6102, %6079
  %6111 = fmul fast float %6110, %6061
  %6112 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6109, float %6111, float undef, float undef, i32 0, i32 0, i32 undef, float %6065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  %6114 = fmul fast float %6113, %6081
  %6115 = fadd fast float %6093, %6078
  %6116 = fmul fast float %6115, %6060
  %6117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6116, float %6111, float undef, float undef, i32 0, i32 0, i32 undef, float %6065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  %6119 = fmul fast float %6118, %6082
  %6120 = fadd fast float %6107, %6079
  %6121 = fmul fast float %6120, %6061
  %6122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6109, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float %6065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = fmul fast float %6123, %6081
  %6125 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %63, float %6116, float %6121, float undef, float undef, i32 0, i32 0, i32 undef, float %6065)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6126 = extractvalue %dx.types.ResRet.f32 %6125, 0
  %6127 = fmul fast float %6126, %6082
  %6128 = fadd fast float %6127, %6124
  %6129 = fmul fast float %6128, %6096
  %6130 = fadd fast float %6119, %6114
  %6131 = fmul fast float %6130, %6095
  %6132 = fadd fast float %6131, %6129
  %6133 = fmul fast float %6132, 6.250000e-02
  br label %6219

; <label>:6134                                    ; preds = %6055
  %6135 = fmul fast float %1336, 0x401921FB60000000
  %6136 = call float @dx.op.unary.f32(i32 13, float %6135)  ; Sin(value)
  %6137 = call float @dx.op.unary.f32(i32 12, float %6135)  ; Cos(value)
  %6138 = fsub fast float -0.000000e+00, %6136
  br label %6139

; <label>:6139                                    ; preds = %6188, %6134
  %6140 = phi float [ 0.000000e+00, %6134 ], [ %6183, %6188 ]
  %6141 = phi float [ 0.000000e+00, %6134 ], [ %6185, %6188 ]
  %6142 = phi i32 [ 0, %6134 ], [ %6189, %6188 ]
  %6143 = mul i32 %6142, 2
  %6144 = add i32 0, %6143
  %6145 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6144
  %6146 = load float, float* %6145, align 4
  %6147 = mul i32 %6142, 2
  %6148 = add i32 1, %6147
  %6149 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6148
  %6150 = load float, float* %6149, align 4
  %6151 = fmul fast float %6146, %6137
  %6152 = call float @dx.op.tertiary.f32(i32 46, float %6150, float %6138, float %6151)  ; FMad(a,b,c)
  %6153 = fmul fast float %6146, %6136
  %6154 = call float @dx.op.tertiary.f32(i32 46, float %6150, float %6137, float %6153)  ; FMad(a,b,c)
  %6155 = fmul fast float %6152, %6063
  %6156 = fmul fast float %6154, %6063
  %6157 = fadd fast float %6155, %5010
  %6158 = fadd fast float %6156, %5011
  %6159 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %62, float %6157, float %6158, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6160 = extractvalue %dx.types.ResRet.f32 %6159, 0
  %6161 = extractvalue %dx.types.ResRet.f32 %6159, 1
  %6162 = extractvalue %dx.types.ResRet.f32 %6159, 2
  %6163 = extractvalue %dx.types.ResRet.f32 %6159, 3
  %6164 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %6160, float* %6164, align 4
  %6165 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6161, float* %6165, align 4
  %6166 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6162, float* %6166, align 4
  %6167 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6163, float* %6167, align 4
  %6168 = fsub fast float %6160, %6065
  %6169 = fcmp fast olt float %6168, 0.000000e+00
  %6170 = select i1 %6169, float 0.000000e+00, float 1.000000e+00
  %6171 = fadd fast float %6170, %6140
  %6172 = fmul fast float %6170, %6168
  %6173 = fadd fast float %6172, %6141
  br label %6174

; <label>:6174                                    ; preds = %6174, %6139
  %6175 = phi i32 [ 1, %6139 ], [ %6186, %6174 ]
  %6176 = phi float [ %6173, %6139 ], [ %6185, %6174 ]
  %6177 = phi float [ %6171, %6139 ], [ %6183, %6174 ]
  %6178 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6175
  %6179 = load float, float* %6178, align 4, !tbaa !106, !noalias !148
  %6180 = fsub fast float %6179, %6065
  %6181 = fcmp fast olt float %6180, 0.000000e+00
  %6182 = select i1 %6181, float 0.000000e+00, float 1.000000e+00
  %6183 = fadd fast float %6182, %6177
  %6184 = fmul fast float %6182, %6180
  %6185 = fadd fast float %6184, %6176
  %6186 = add nuw nsw i32 %6175, 1
  %6187 = icmp eq i32 %6186, 4
  br i1 %6187, label %6188, label %6174, !llvm.loop !153

; <label>:6188                                    ; preds = %6174
  %6189 = add nuw nsw i32 %6142, 1
  %6190 = icmp eq i32 %6189, 8
  br i1 %6190, label %6191, label %6139, !llvm.loop !154

; <label>:6191                                    ; preds = %6188
  %6192 = fdiv fast float 1.000000e+00, %6183
  %6193 = fmul fast float %6192, %6185
  %6194 = fdiv fast float 1.000000e+00, %6065
  %6195 = fmul fast float %6193, %6194
  %6196 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  %6197 = call float @dx.op.binary.f32(i32 35, float %6196, float 0.000000e+00)  ; FMax(a,b)
  %6198 = fmul fast float %6183, 3.125000e-02
  %6199 = call float @dx.op.unary.f32(i32 7, float %6198)  ; Saturate(value)
  %6200 = fmul fast float %6199, 2.000000e+00
  %6201 = fadd fast float %6200, -1.000000e+00
  %6202 = fcmp fast ogt float %6201, 0.000000e+00
  %6203 = fcmp fast olt float %6201, 0.000000e+00
  %6204 = zext i1 %6202 to i32
  %6205 = zext i1 %6203 to i32
  %6206 = sub nsw i32 %6204, %6205
  %6207 = sitofp i32 %6206 to float
  %6208 = fmul fast float %6207, %6201
  %6209 = fsub fast float 1.000000e+00, %6208
  %6210 = fmul fast float %6209, %6209
  %6211 = fmul fast float %6210, %6209
  %6212 = fsub fast float %6209, %6211
  %6213 = fmul fast float %6212, %6197
  %6214 = fsub fast float 1.000000e+00, %6211
  %6215 = fsub fast float %6214, %6213
  %6216 = fmul fast float %6207, 5.000000e-01
  %6217 = fmul fast float %6216, %6215
  %6218 = fsub fast float 5.000000e-01, %6217
  br label %6219

; <label>:6219                                    ; preds = %6191, %6067, %6052
  %6220 = phi float [ 1.000000e+00, %6052 ], [ %6133, %6067 ], [ %6218, %6191 ]
  %6221 = fcmp fast ogt float %5207, 0.000000e+00
  br i1 %6221, label %6222, label %6386, !dx.controlflow.hints !156

; <label>:6222                                    ; preds = %6219
  %6223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6224 = extractvalue %dx.types.CBufRet.f32 %6223, 0
  %6225 = fadd fast float %6224, %5130
  %6226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6227 = extractvalue %dx.types.CBufRet.f32 %6226, 2
  %6228 = extractvalue %dx.types.CBufRet.f32 %6226, 3
  %6229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6230 = extractvalue %dx.types.CBufRet.f32 %6229, 0
  %6231 = call float @dx.op.binary.f32(i32 35, float %6225, float 0.000000e+00)  ; FMax(a,b)
  %6232 = fadd fast float %6231, 0x3F10000000000000
  %6233 = fcmp fast oeq float %6230, 0.000000e+00
  br i1 %6233, label %6234, label %6301

; <label>:6234                                    ; preds = %6222
  %6235 = extractvalue %dx.types.CBufRet.f32 %6226, 1
  %6236 = extractvalue %dx.types.CBufRet.f32 %6226, 0
  %6237 = fmul fast float %6236, %4996
  %6238 = fmul fast float %6235, %5000
  %6239 = fadd fast float %6237, 5.000000e-01
  %6240 = call float @dx.op.unary.f32(i32 27, float %6239)  ; Round_ni(value)
  %6241 = fadd fast float %6238, 5.000000e-01
  %6242 = call float @dx.op.unary.f32(i32 27, float %6241)  ; Round_ni(value)
  %6243 = fsub fast float %6239, %6240
  %6244 = fsub fast float %6241, %6242
  %6245 = fadd fast float %6240, -5.000000e-01
  %6246 = fadd fast float %6242, -5.000000e-01
  %6247 = fmul fast float %6243, 2.000000e+00
  %6248 = fsub fast float 3.000000e+00, %6247
  %6249 = fadd fast float %6247, 1.000000e+00
  %6250 = fsub fast float 2.000000e+00, %6243
  %6251 = bitcast float %6248 to i32
  %6252 = sub nsw i32 2129859010, %6251
  %6253 = bitcast i32 %6252 to float
  %6254 = fmul fast float %6253, %6250
  %6255 = fadd fast float %6254, -1.000000e+00
  %6256 = bitcast float %6249 to i32
  %6257 = sub nsw i32 2129859010, %6256
  %6258 = bitcast i32 %6257 to float
  %6259 = fmul fast float %6258, %6243
  %6260 = fadd fast float %6259, 1.000000e+00
  %6261 = fmul fast float %6244, 2.000000e+00
  %6262 = fsub fast float 3.000000e+00, %6261
  %6263 = fadd fast float %6261, 1.000000e+00
  %6264 = fsub fast float 2.000000e+00, %6244
  %6265 = bitcast float %6262 to i32
  %6266 = sub nsw i32 2129859010, %6265
  %6267 = bitcast i32 %6266 to float
  %6268 = fmul fast float %6267, %6264
  %6269 = fadd fast float %6268, -1.000000e+00
  %6270 = bitcast float %6263 to i32
  %6271 = sub nsw i32 2129859010, %6270
  %6272 = bitcast i32 %6271 to float
  %6273 = fmul fast float %6272, %6244
  %6274 = fadd fast float %6273, 1.000000e+00
  %6275 = fadd fast float %6255, %6245
  %6276 = fmul fast float %6275, %6227
  %6277 = fadd fast float %6269, %6246
  %6278 = fmul fast float %6277, %6228
  %6279 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6276, float %6278, float undef, float undef, i32 0, i32 0, i32 undef, float %6232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6280 = extractvalue %dx.types.ResRet.f32 %6279, 0
  %6281 = fmul fast float %6280, %6248
  %6282 = fadd fast float %6260, %6245
  %6283 = fmul fast float %6282, %6227
  %6284 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6283, float %6278, float undef, float undef, i32 0, i32 0, i32 undef, float %6232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6285 = extractvalue %dx.types.ResRet.f32 %6284, 0
  %6286 = fmul fast float %6285, %6249
  %6287 = fadd fast float %6274, %6246
  %6288 = fmul fast float %6287, %6228
  %6289 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6276, float %6288, float undef, float undef, i32 0, i32 0, i32 undef, float %6232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6290 = extractvalue %dx.types.ResRet.f32 %6289, 0
  %6291 = fmul fast float %6290, %6248
  %6292 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %63, float %6283, float %6288, float undef, float undef, i32 0, i32 0, i32 undef, float %6232)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6293 = extractvalue %dx.types.ResRet.f32 %6292, 0
  %6294 = fmul fast float %6293, %6249
  %6295 = fadd fast float %6294, %6291
  %6296 = fmul fast float %6295, %6263
  %6297 = fadd fast float %6286, %6281
  %6298 = fmul fast float %6297, %6262
  %6299 = fadd fast float %6298, %6296
  %6300 = fmul fast float %6299, 6.250000e-02
  br label %6386

; <label>:6301                                    ; preds = %6222
  %6302 = fmul fast float %1336, 0x401921FB60000000
  %6303 = call float @dx.op.unary.f32(i32 13, float %6302)  ; Sin(value)
  %6304 = call float @dx.op.unary.f32(i32 12, float %6302)  ; Cos(value)
  %6305 = fsub fast float -0.000000e+00, %6303
  br label %6306

; <label>:6306                                    ; preds = %6355, %6301
  %6307 = phi float [ 0.000000e+00, %6301 ], [ %6350, %6355 ]
  %6308 = phi float [ 0.000000e+00, %6301 ], [ %6352, %6355 ]
  %6309 = phi i32 [ 0, %6301 ], [ %6356, %6355 ]
  %6310 = mul i32 %6309, 2
  %6311 = add i32 0, %6310
  %6312 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6311
  %6313 = load float, float* %6312, align 4
  %6314 = mul i32 %6309, 2
  %6315 = add i32 1, %6314
  %6316 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6315
  %6317 = load float, float* %6316, align 4
  %6318 = fmul fast float %6313, %6304
  %6319 = call float @dx.op.tertiary.f32(i32 46, float %6317, float %6305, float %6318)  ; FMad(a,b,c)
  %6320 = fmul fast float %6313, %6303
  %6321 = call float @dx.op.tertiary.f32(i32 46, float %6317, float %6304, float %6320)  ; FMad(a,b,c)
  %6322 = fmul fast float %6319, %6230
  %6323 = fmul fast float %6321, %6230
  %6324 = fadd fast float %6322, %4996
  %6325 = fadd fast float %6323, %5000
  %6326 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %62, float %6324, float %6325, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6327 = extractvalue %dx.types.ResRet.f32 %6326, 0
  %6328 = extractvalue %dx.types.ResRet.f32 %6326, 1
  %6329 = extractvalue %dx.types.ResRet.f32 %6326, 2
  %6330 = extractvalue %dx.types.ResRet.f32 %6326, 3
  %6331 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 0
  store float %6327, float* %6331, align 4
  %6332 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 1
  store float %6328, float* %6332, align 4
  %6333 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 2
  store float %6329, float* %6333, align 4
  %6334 = getelementptr inbounds [4 x float], [4 x float]* %92, i32 0, i32 3
  store float %6330, float* %6334, align 4
  %6335 = fsub fast float %6327, %6232
  %6336 = fcmp fast olt float %6335, 0.000000e+00
  %6337 = select i1 %6336, float 0.000000e+00, float 1.000000e+00
  %6338 = fadd fast float %6337, %6307
  %6339 = fmul fast float %6337, %6335
  %6340 = fadd fast float %6339, %6308
  br label %6341

; <label>:6341                                    ; preds = %6341, %6306
  %6342 = phi i32 [ 1, %6306 ], [ %6353, %6341 ]
  %6343 = phi float [ %6340, %6306 ], [ %6352, %6341 ]
  %6344 = phi float [ %6338, %6306 ], [ %6350, %6341 ]
  %6345 = getelementptr [4 x float], [4 x float]* %92, i32 0, i32 %6342
  %6346 = load float, float* %6345, align 4, !tbaa !106, !noalias !148
  %6347 = fsub fast float %6346, %6232
  %6348 = fcmp fast olt float %6347, 0.000000e+00
  %6349 = select i1 %6348, float 0.000000e+00, float 1.000000e+00
  %6350 = fadd fast float %6349, %6344
  %6351 = fmul fast float %6349, %6347
  %6352 = fadd fast float %6351, %6343
  %6353 = add nuw nsw i32 %6342, 1
  %6354 = icmp eq i32 %6353, 4
  br i1 %6354, label %6355, label %6341, !llvm.loop !153

; <label>:6355                                    ; preds = %6341
  %6356 = add nuw nsw i32 %6309, 1
  %6357 = icmp eq i32 %6356, 8
  br i1 %6357, label %6358, label %6306, !llvm.loop !154

; <label>:6358                                    ; preds = %6355
  %6359 = fdiv fast float 1.000000e+00, %6350
  %6360 = fmul fast float %6359, %6352
  %6361 = fdiv fast float 1.000000e+00, %6232
  %6362 = fmul fast float %6360, %6361
  %6363 = call float @dx.op.unary.f32(i32 7, float %6362)  ; Saturate(value)
  %6364 = call float @dx.op.binary.f32(i32 35, float %6363, float 0.000000e+00)  ; FMax(a,b)
  %6365 = fmul fast float %6350, 3.125000e-02
  %6366 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  %6367 = fmul fast float %6366, 2.000000e+00
  %6368 = fadd fast float %6367, -1.000000e+00
  %6369 = fcmp fast ogt float %6368, 0.000000e+00
  %6370 = fcmp fast olt float %6368, 0.000000e+00
  %6371 = zext i1 %6369 to i32
  %6372 = zext i1 %6370 to i32
  %6373 = sub nsw i32 %6371, %6372
  %6374 = sitofp i32 %6373 to float
  %6375 = fmul fast float %6374, %6368
  %6376 = fsub fast float 1.000000e+00, %6375
  %6377 = fmul fast float %6376, %6376
  %6378 = fmul fast float %6377, %6376
  %6379 = fsub fast float %6376, %6378
  %6380 = fmul fast float %6379, %6364
  %6381 = fsub fast float 1.000000e+00, %6378
  %6382 = fsub fast float %6381, %6380
  %6383 = fmul fast float %6374, 5.000000e-01
  %6384 = fmul fast float %6383, %6382
  %6385 = fsub fast float 5.000000e-01, %6384
  br label %6386

; <label>:6386                                    ; preds = %6358, %6234, %6219
  %6387 = phi float [ 1.000000e+00, %6219 ], [ %6300, %6234 ], [ %6385, %6358 ]
  %6388 = fsub fast float %6053, %5886
  %6389 = fmul fast float %6388, %5160
  %6390 = fadd fast float %6389, %5886
  %6391 = fsub fast float %6220, %6390
  %6392 = fmul fast float %6391, %5185
  %6393 = fadd fast float %6392, %6390
  %6394 = fsub fast float %6387, %6393
  %6395 = fmul fast float %6394, %5207
  %6396 = fadd fast float %6395, %6393
  %6397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6398 = extractvalue %dx.types.CBufRet.f32 %6397, 2
  %6399 = fcmp fast ogt float %6398, 0.000000e+00
  br i1 %6399, label %6400, label %6440, !dx.controlflow.hints !157

; <label>:6400                                    ; preds = %6386
  %6401 = fcmp fast ugt float %6398, 0.000000e+00
  br i1 %6401, label %6402, label %6437

; <label>:6402                                    ; preds = %6400
  %6403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6404 = extractvalue %dx.types.CBufRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.CBufRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.CBufRet.f32 %6403, 2
  %6407 = extractvalue %dx.types.CBufRet.f32 %6403, 3
  %6408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6409 = extractvalue %dx.types.CBufRet.f32 %6408, 0
  %6410 = extractvalue %dx.types.CBufRet.f32 %6408, 1
  %6411 = extractvalue %dx.types.CBufRet.f32 %6408, 2
  %6412 = extractvalue %dx.types.CBufRet.f32 %6408, 3
  %6413 = extractvalue %dx.types.CBufRet.f32 %6397, 0
  %6414 = extractvalue %dx.types.CBufRet.f32 %6397, 1
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 0
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 1
  %6418 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6419 = fadd fast float %6416, %153
  %6420 = fadd fast float %6417, %154
  %6421 = fadd fast float %6418, %155
  %6422 = fmul fast float %6419, %6404
  %6423 = call float @dx.op.tertiary.f32(i32 46, float %6405, float %6420, float %6422)  ; FMad(a,b,c)
  %6424 = call float @dx.op.tertiary.f32(i32 46, float %6406, float %6421, float %6423)  ; FMad(a,b,c)
  %6425 = fadd fast float %6424, %6407
  %6426 = fmul fast float %6419, %6409
  %6427 = call float @dx.op.tertiary.f32(i32 46, float %6410, float %6420, float %6426)  ; FMad(a,b,c)
  %6428 = call float @dx.op.tertiary.f32(i32 46, float %6411, float %6421, float %6427)  ; FMad(a,b,c)
  %6429 = fadd fast float %6428, %6412
  %6430 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %58, float %6425, float %6429, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = fmul fast float %6431, %6414
  %6433 = fadd fast float %6432, %6413
  %6434 = call float @dx.op.unary.f32(i32 7, float %6433)  ; Saturate(value)
  %6435 = fmul fast float %6434, %6398
  %6436 = fsub fast float 1.000000e+00, %6435
  br label %6437

; <label>:6437                                    ; preds = %6402, %6400
  %6438 = phi float [ %6436, %6402 ], [ 1.000000e+00, %6400 ]
  %6439 = fmul fast float %6438, %6396
  br label %6440

; <label>:6440                                    ; preds = %6437, %6386, %5126
  %6441 = phi float [ 1.000000e+00, %5126 ], [ %6439, %6437 ], [ %6396, %6386 ]
  %6442 = call float @dx.op.binary.f32(i32 36, float %6441, float %6441)  ; FMin(a,b)
  %6443 = call float @dx.op.binary.f32(i32 36, float %6441, float %6442)  ; FMin(a,b)
  %6444 = fcmp fast ogt float %6443, 0.000000e+00
  br i1 %6444, label %6445, label %6610, !dx.controlflow.hints !158

; <label>:6445                                    ; preds = %6440
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6449 = extractvalue %dx.types.CBufRet.f32 %6446, 2
  %6450 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6452 = extractvalue %dx.types.CBufRet.f32 %6451, 0
  %6453 = extractvalue %dx.types.CBufRet.f32 %6451, 1
  %6454 = extractvalue %dx.types.CBufRet.f32 %6451, 2
  %6455 = extractvalue %dx.types.CBufRet.f32 %6451, 3
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = extractvalue %dx.types.CBufRet.f32 %6456, 1
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = extractvalue %dx.types.CBufRet.f32 %6456, 3
  %6461 = fmul fast float %6447, %153
  %6462 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6448, float %6461)  ; FMad(a,b,c)
  %6463 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6449, float %6462)  ; FMad(a,b,c)
  %6464 = fadd fast float %6463, %6450
  %6465 = fmul fast float %6452, %153
  %6466 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6453, float %6465)  ; FMad(a,b,c)
  %6467 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6454, float %6466)  ; FMad(a,b,c)
  %6468 = fadd fast float %6467, %6455
  %6469 = fmul fast float %6457, %153
  %6470 = call float @dx.op.tertiary.f32(i32 46, float %154, float %6458, float %6469)  ; FMad(a,b,c)
  %6471 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6459, float %6470)  ; FMad(a,b,c)
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 0
  %6474 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6475 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6476 = fmul fast float %6475, %6464
  %6477 = fmul fast float %6475, %6468
  %6478 = fadd fast float %6476, %6473
  %6479 = fadd fast float %6477, %6474
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = extractvalue %dx.types.CBufRet.f32 %6480, 1
  %6483 = fsub fast float %6478, %6481
  %6484 = fsub fast float %6479, %6482
  %6485 = fcmp fast olt float %6483, 0.000000e+00
  %6486 = fcmp fast olt float %6484, 0.000000e+00
  %6487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6488 = extractvalue %dx.types.CBufRet.f32 %6487, 0
  %6489 = extractvalue %dx.types.CBufRet.f32 %6487, 1
  %6490 = extractvalue %dx.types.CBufRet.f32 %6487, 2
  %6491 = extractvalue %dx.types.CBufRet.f32 %6487, 3
  %6492 = select i1 %6485, float %6488, float %6490
  %6493 = select i1 %6486, float %6489, float %6491
  %6494 = fmul fast float %6492, %6483
  %6495 = fmul fast float %6493, %6484
  %6496 = call float @dx.op.unary.f32(i32 6, float %6494)  ; FAbs(value)
  %6497 = call float @dx.op.unary.f32(i32 6, float %6495)  ; FAbs(value)
  %6498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6499 = extractvalue %dx.types.CBufRet.f32 %6498, 0
  %6500 = call float @dx.op.binary.f32(i32 35, float %6496, float %6497)  ; FMax(a,b)
  %6501 = fsub fast float %6499, %6500
  %6502 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6503 = fcmp fast ogt float %6502, 0.000000e+00
  br i1 %6503, label %6504, label %6545, !dx.controlflow.hints !159

; <label>:6504                                    ; preds = %6445
  %6505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %61, float %6478, float %6479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6506 = extractvalue %dx.types.ResRet.f32 %6505, 1
  %6507 = fcmp fast ogt float %6506, 0.000000e+00
  br i1 %6507, label %6508, label %6540

; <label>:6508                                    ; preds = %6504
  %6509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %61, float %6478, float %6479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6510 = extractvalue %dx.types.ResRet.f32 %6509, 0
  %6511 = extractvalue %dx.types.ResRet.f32 %6509, 1
  %6512 = extractvalue %dx.types.ResRet.f32 %6509, 2
  %6513 = extractvalue %dx.types.ResRet.f32 %6509, 3
  %6514 = fsub fast float 1.000000e+00, %6460
  %6515 = fsub fast float %6514, %6471
  %6516 = fmul fast float %6515, 0x400921FB60000000
  %6517 = fadd fast float %6516, 0x3FF921FB60000000
  %6518 = call float @dx.op.unary.f32(i32 13, float %6517)  ; Sin(value)
  %6519 = fadd fast float %6518, -1.000000e+00
  %6520 = fmul fast float %6519, 0x3FD45F3060000000
  %6521 = fmul fast float %6515, 0x401921FB60000000
  %6522 = fadd fast float %6521, 0x400921FB60000000
  %6523 = call float @dx.op.unary.f32(i32 13, float %6522)  ; Sin(value)
  %6524 = fadd fast float %6523, 0x3E7777A5C0000000
  %6525 = fmul fast float %6524, 0x3FC45F3060000000
  %6526 = fmul fast float %6515, 0x4022D97C80000000
  %6527 = fadd fast float %6526, 0x4012D97C80000000
  %6528 = call float @dx.op.unary.f32(i32 13, float %6527)  ; Sin(value)
  %6529 = fadd fast float %6528, 1.000000e+00
  %6530 = fmul fast float %6529, 0x3FBB2995E0000000
  %6531 = fmul fast float %6515, 0x402921FB60000000
  %6532 = fadd fast float %6531, 0x401921FB60000000
  %6533 = call float @dx.op.unary.f32(i32 13, float %6532)  ; Sin(value)
  %6534 = fadd fast float %6533, 0xBE8777A5C0000000
  %6535 = fmul fast float %6534, 0x3FB45F3060000000
  %6536 = call float @dx.op.dot4.f32(i32 56, float %6510, float %6511, float %6512, float %6513, float %6520, float %6525, float %6530, float %6535)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6537 = fmul fast float %6536, 0xBFF7154760000000
  %6538 = call float @dx.op.unary.f32(i32 21, float %6537)  ; Exp(value)
  %6539 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  br label %6540

; <label>:6540                                    ; preds = %6508, %6504
  %6541 = phi float [ %6539, %6508 ], [ 1.000000e+00, %6504 ]
  %6542 = fadd fast float %6541, -1.000000e+00
  %6543 = fmul fast float %6542, %6502
  %6544 = fadd fast float %6543, 1.000000e+00
  br label %6545

; <label>:6545                                    ; preds = %6540, %6445
  %6546 = phi float [ %6544, %6540 ], [ 1.000000e+00, %6445 ]
  %6547 = fmul fast float %6546, %6441
  %6548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6549 = extractvalue %dx.types.CBufRet.f32 %6548, 0
  %6550 = extractvalue %dx.types.CBufRet.f32 %6548, 1
  %6551 = extractvalue %dx.types.CBufRet.f32 %6548, 2
  %6552 = fadd fast float %6549, %153
  %6553 = fadd fast float %6550, %154
  %6554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6555 = extractvalue %dx.types.CBufRet.f32 %6554, 1
  %6556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6557 = extractvalue %dx.types.CBufRet.f32 %6556, 0
  %6558 = extractvalue %dx.types.CBufRet.f32 %6556, 1
  %6559 = extractvalue %dx.types.CBufRet.f32 %6556, 2
  %6560 = fsub fast float -0.000000e+00, %6552
  %6561 = fsub fast float -0.000000e+00, %6553
  %6562 = fsub fast float %2047, %6551
  %6563 = fadd fast float %6562, %6555
  %6564 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6560, float %6561, float %6563)  ; Dot3(ax,ay,az,bx,by,bz)
  %6565 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6557, float %6558, float %6559)  ; Dot3(ax,ay,az,bx,by,bz)
  %6566 = fdiv fast float 1.000000e+00, %6565
  %6567 = fmul fast float %6566, %6564
  %6568 = fmul fast float %6557, %6567
  %6569 = fmul fast float %6558, %6567
  %6570 = fadd fast float %6568, %6552
  %6571 = fadd fast float %6569, %6553
  %6572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6573 = extractvalue %dx.types.CBufRet.f32 %6572, 0
  %6574 = extractvalue %dx.types.CBufRet.f32 %6572, 1
  %6575 = fsub fast float %6570, %6573
  %6576 = fsub fast float %6571, %6574
  %6577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6578 = extractvalue %dx.types.CBufRet.f32 %6577, 2
  %6579 = extractvalue %dx.types.CBufRet.f32 %6577, 3
  %6580 = fmul fast float %6575, %6578
  %6581 = fmul fast float %6576, %6579
  %6582 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6583 = extractvalue %dx.types.CBufRet.i32 %6582, 3
  %6584 = icmp eq i32 %6583, 0
  br i1 %6584, label %6590, label %6585

; <label>:6585                                    ; preds = %6545
  %6586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %60, float %6580, float %6581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6587 = extractvalue %dx.types.ResRet.f32 %6586, 0
  %6588 = extractvalue %dx.types.ResRet.f32 %6586, 1
  %6589 = extractvalue %dx.types.ResRet.f32 %6586, 2
  br label %6595

; <label>:6590                                    ; preds = %6545
  %6591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %6580, float %6581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6592 = extractvalue %dx.types.ResRet.f32 %6591, 0
  %6593 = extractvalue %dx.types.ResRet.f32 %6591, 1
  %6594 = extractvalue %dx.types.ResRet.f32 %6591, 2
  br label %6595

; <label>:6595                                    ; preds = %6590, %6585
  %6596 = phi float [ %6587, %6585 ], [ %6592, %6590 ]
  %6597 = phi float [ %6588, %6585 ], [ %6593, %6590 ]
  %6598 = phi float [ %6589, %6585 ], [ %6594, %6590 ]
  %6599 = extractvalue %dx.types.CBufRet.f32 %6554, 2
  %6600 = fmul fast float %6599, %6596
  %6601 = extractvalue %dx.types.CBufRet.f32 %6554, 0
  %6602 = fsub fast float %6567, %6601
  %6603 = fsub fast float %6602, %6600
  %6604 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6603)  ; FMax(a,b)
  %6605 = fmul fast float %6604, %6597
  %6606 = call float @dx.op.binary.f32(i32 36, float %6598, float %6605)  ; FMin(a,b)
  %6607 = fmul fast float %6606, 0xBFF7154760000000
  %6608 = call float @dx.op.unary.f32(i32 21, float %6607)  ; Exp(value)
  %6609 = fmul fast float %6547, %6608
  br label %6610

; <label>:6610                                    ; preds = %6595, %6440
  %6611 = phi float [ %6609, %6595 ], [ %6441, %6440 ]
  %6612 = call float @dx.op.binary.f32(i32 36, float %6611, float %6611)  ; FMin(a,b)
  %6613 = call float @dx.op.binary.f32(i32 36, float %6611, float %6612)  ; FMin(a,b)
  %6614 = fcmp fast ogt float %6613, 0.000000e+00
  br i1 %6614, label %6615, label %6744, !dx.controlflow.hints !160

; <label>:6615                                    ; preds = %6610
  %6616 = fmul fast float %6611, %4975
  %6617 = fmul fast float %6611, %4976
  %6618 = fmul fast float %6611, %4977
  %6619 = fsub fast float %4964, %1890
  %6620 = fsub fast float %4965, %1891
  %6621 = fsub fast float %4966, %1892
  %6622 = call float @dx.op.dot3.f32(i32 55, float %6619, float %6620, float %6621, float %6619, float %6620, float %6621)  ; Dot3(ax,ay,az,bx,by,bz)
  %6623 = call float @dx.op.unary.f32(i32 25, float %6622)  ; Rsqrt(value)
  %6624 = fmul fast float %6623, %6619
  %6625 = fmul fast float %6623, %6620
  %6626 = fmul fast float %6623, %6621
  %6627 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %6628 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2049, float %2050, float %6624, float %6625, float %6626)  ; Dot3(ax,ay,az,bx,by,bz)
  %6629 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6630 = fmul fast float %6629, %6629
  %6631 = fmul fast float %6630, %2089
  %6632 = call float @dx.op.unary.f32(i32 7, float %6631)  ; Saturate(value)
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = bitcast float %6634 to i32
  %6636 = lshr i32 %6635, 8
  %6637 = and i32 %6636, 255
  %6638 = uitofp i32 %6637 to float
  %6639 = fptoui float %6638 to i32
  %6640 = and i32 %6639, 8
  %6641 = icmp ne i32 %6640, 0
  %6642 = select i1 %6641, float %6632, float 1.000000e+00
  %6643 = fmul fast float %6642, %6629
  %6644 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %6624, float %6625, float %6626)  ; Dot3(ax,ay,az,bx,by,bz)
  %6645 = fmul fast float %6644, %6644
  %6646 = call float @dx.op.unary.f32(i32 6, float %6627)  ; FAbs(value)
  %6647 = fsub fast float 1.000000e+00, %2080
  %6648 = fmul fast float %2053, %2053
  %6649 = fmul fast float %6648, %6647
  %6650 = fadd fast float %6649, %2080
  %6651 = bitcast float %6650 to i32
  %6652 = ashr i32 %6651, 1
  %6653 = add nsw i32 %6652, 532487669
  %6654 = bitcast i32 %6653 to float
  %6655 = fadd fast float %6654, %2053
  %6656 = fmul fast float %2080, %6645
  %6657 = fsub fast float 1.000000e+00, %6645
  %6658 = fadd fast float %6657, %6656
  %6659 = fmul fast float %6646, %6646
  %6660 = fmul fast float %6659, %6647
  %6661 = fadd fast float %6660, %2080
  %6662 = bitcast float %6661 to i32
  %6663 = ashr i32 %6662, 1
  %6664 = add nsw i32 %6663, 532487669
  %6665 = bitcast i32 %6664 to float
  %6666 = fadd fast float %6665, %6646
  %6667 = fmul fast float %6658, %6658
  %6668 = fmul fast float %6667, %6655
  %6669 = fmul fast float %6668, %6666
  %6670 = fdiv fast float 0x3FF0A00000000000, %6669
  %6671 = fmul fast float %6670, %2080
  %6672 = call float @dx.op.unary.f32(i32 6, float %6628)  ; FAbs(value)
  %6673 = fsub fast float 1.000000e+00, %6672
  %6674 = bitcast float %6673 to i32
  %6675 = sitofp i32 %6674 to float
  %6676 = fmul fast float %6675, 5.000000e+00
  %6677 = fadd fast float %6676, 0xC1EFBF8940000000
  %6678 = fptosi float %6677 to i32
  %6679 = bitcast i32 %6678 to float
  %6680 = fmul fast float %6679, %1943
  %6681 = fmul fast float %6679, %1944
  %6682 = fmul fast float %6679, %3154
  %6683 = fadd fast float %6680, %1883
  %6684 = fadd fast float %6681, %1884
  %6685 = fadd fast float %6682, %2051
  %6686 = fmul fast float %6627, 9.843750e-01
  %6687 = fmul fast float %1992, 9.843750e-01
  %6688 = fadd fast float %6686, 7.812500e-03
  %6689 = fadd fast float %6687, 7.812500e-03
  %6690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %6688, float %6689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6691 = extractvalue %dx.types.ResRet.f32 %6690, 2
  %6692 = extractvalue %dx.types.ResRet.f32 %6690, 3
  %6693 = fmul fast float %6691, %1883
  %6694 = fmul fast float %6691, %1884
  %6695 = fmul fast float %6691, %2051
  %6696 = fadd fast float %6693, %6692
  %6697 = fadd fast float %6694, %6692
  %6698 = fadd fast float %6695, %6692
  %6699 = call float @dx.op.binary.f32(i32 35, float %6697, float %6698)  ; FMax(a,b)
  %6700 = call float @dx.op.binary.f32(i32 35, float %6696, float %6699)  ; FMax(a,b)
  %6701 = fsub fast float 1.000000e+00, %6700
  %6702 = fsub fast float -0.000000e+00, %1862
  %6703 = fsub fast float -0.000000e+00, %1863
  %6704 = fsub fast float -0.000000e+00, %1864
  %6705 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %6702, float %6703, float %6704)  ; Dot3(ax,ay,az,bx,by,bz)
  %6706 = call float @dx.op.unary.f32(i32 7, float %6705)  ; Saturate(value)
  %6707 = fmul fast float %6706, 9.843750e-01
  %6708 = fadd fast float %6707, 7.812500e-03
  %6709 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %6708, float %6689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6710 = extractvalue %dx.types.ResRet.f32 %6709, 2
  %6711 = extractvalue %dx.types.ResRet.f32 %6709, 3
  %6712 = fmul fast float %6710, %1883
  %6713 = fmul fast float %6710, %1884
  %6714 = fmul fast float %6710, %2051
  %6715 = fadd fast float %6712, %6711
  %6716 = fadd fast float %6713, %6711
  %6717 = fadd fast float %6714, %6711
  %6718 = call float @dx.op.binary.f32(i32 35, float %6716, float %6717)  ; FMax(a,b)
  %6719 = call float @dx.op.binary.f32(i32 35, float %6715, float %6718)  ; FMax(a,b)
  %6720 = fsub fast float 1.000000e+00, %6719
  %6721 = fmul fast float %6720, %6706
  %6722 = fmul fast float %6721, %1995
  %6723 = fmul fast float %6701, %6643
  %6724 = fmul fast float %6643, %6671
  %6725 = fmul fast float %6724, %6683
  %6726 = fmul fast float %6724, %6684
  %6727 = fmul fast float %6724, %6685
  %6728 = fadd fast float %6722, %6723
  %6729 = fmul fast float %6728, %6616
  %6730 = fmul fast float %6728, %6617
  %6731 = fmul fast float %6728, %6618
  %6732 = fadd fast float %6729, %4951
  %6733 = fadd fast float %6730, %4952
  %6734 = fadd fast float %6731, %4953
  %6735 = fmul fast float %6725, %6616
  %6736 = fmul fast float %6726, %6617
  %6737 = fmul fast float %6727, %6618
  %6738 = fadd fast float %6735, %4957
  %6739 = fadd fast float %6736, %4958
  %6740 = fadd fast float %6737, %4959
  %6741 = fadd fast float %6735, %4954
  %6742 = fadd fast float %6736, %4955
  %6743 = fadd fast float %6737, %4956
  br label %6744

; <label>:6744                                    ; preds = %6615, %6610, %4944
  %6745 = phi i32 [ %5127, %6615 ], [ %4946, %4944 ], [ %5127, %6610 ]
  %6746 = phi i32 [ 1, %6615 ], [ 0, %4944 ], [ 0, %6610 ]
  %6747 = phi float [ %6735, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6748 = phi float [ %6736, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6749 = phi float [ %6737, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6750 = phi float [ %6729, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6751 = phi float [ %6730, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6752 = phi float [ %6731, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6753 = phi float [ %6741, %6615 ], [ %4954, %4944 ], [ %4954, %6610 ]
  %6754 = phi float [ %6742, %6615 ], [ %4955, %4944 ], [ %4955, %6610 ]
  %6755 = phi float [ %6743, %6615 ], [ %4956, %4944 ], [ %4956, %6610 ]
  %6756 = phi float [ %6732, %6615 ], [ %4951, %4944 ], [ %4951, %6610 ]
  %6757 = phi float [ %6733, %6615 ], [ %4952, %4944 ], [ %4952, %6610 ]
  %6758 = phi float [ %6734, %6615 ], [ %4953, %4944 ], [ %4953, %6610 ]
  %6759 = phi float [ %6611, %6615 ], [ 0.000000e+00, %4944 ], [ 0.000000e+00, %6610 ]
  %6760 = phi float [ %6738, %6615 ], [ %4957, %4944 ], [ %4957, %6610 ]
  %6761 = phi float [ %6739, %6615 ], [ %4958, %4944 ], [ %4958, %6610 ]
  %6762 = phi float [ %6740, %6615 ], [ %4959, %4944 ], [ %4959, %6610 ]
  %6763 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.i32 %6763, 0
  %6765 = icmp eq i32 %6764, 0
  br i1 %6765, label %7648, label %6766

; <label>:6766                                    ; preds = %6744
  %6767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6768 = extractvalue %dx.types.CBufRet.f32 %6767, 2
  %6769 = extractvalue %dx.types.CBufRet.f32 %6767, 3
  %6770 = fmul fast float %6768, %98
  %6771 = fmul fast float %6769, %99
  %6772 = fptoui float %6770 to i32
  %6773 = fptoui float %6771 to i32
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.CBufRet.f32 %6774, 2
  %6777 = extractvalue %dx.types.CBufRet.f32 %6774, 3
  %6778 = fadd fast float %87, -4.000000e+00
  %6779 = call float @dx.op.binary.f32(i32 35, float %6778, float 0.000000e+00)  ; FMax(a,b)
  %6780 = fadd fast float %6779, %6775
  %6781 = fmul fast float %6780, %6776
  %6782 = call float @dx.op.unary.f32(i32 23, float %6781)  ; Log(value)
  %6783 = fmul fast float %6782, %6777
  %6784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6785 = extractvalue %dx.types.CBufRet.f32 %6784, 2
  %6786 = fmul fast float %6783, %6785
  %6787 = call float @dx.op.unary.f32(i32 7, float %6786)  ; Saturate(value)
  %6788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6789 = extractvalue %dx.types.CBufRet.i32 %6788, 1
  %6790 = add i32 %6789, -1
  %6791 = uitofp i32 %6789 to float
  %6792 = fmul fast float %6791, %6787
  %6793 = fptoui float %6792 to i32
  %6794 = call i32 @dx.op.binary.i32(i32 40, i32 %6793, i32 %6790)  ; UMin(a,b)
  %6795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6796 = extractvalue %dx.types.CBufRet.i32 %6795, 2
  %6797 = extractvalue %dx.types.CBufRet.i32 %6795, 3
  %6798 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6773, i32 %6796, i32 %6772)  ; UMad(a,b,c)
  %6799 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6794, i32 %6797, i32 %6798)  ; UMad(a,b,c)
  %6800 = add nsw i32 %6764, -1
  %6801 = call i32 @dx.op.binary.i32(i32 37, i32 %6800, i32 0)  ; IMax(a,b)
  %6802 = call float @dx.op.binary.f32(i32 35, float %87, float 0.000000e+00)  ; FMax(a,b)
  %6803 = fptoui float %6802 to i32
  %6804 = lshr i32 %6803, 5
  %6805 = call i32 @dx.op.binary.i32(i32 40, i32 %6804, i32 8191)  ; UMin(a,b)
  %6806 = shl i32 %6805, 2
  %6807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6806, i32 undef)  ; BufferLoad(srv,index,wot)
  %6808 = extractvalue %dx.types.ResRet.i32 %6807, 0
  %6809 = lshr i32 %6808, 16
  %6810 = and i32 %6808, 65535
  %6811 = lshr i32 %6808, 21
  %6812 = lshr i32 %6810, 5
  %6813 = call i32 @dx.op.binary.i32(i32 40, i32 %6812, i32 %6801)  ; UMin(a,b)
  %6814 = icmp ugt i32 %6811, %6813
  br i1 %6814, label %7581, label %6815

; <label>:6815                                    ; preds = %6766
  br label %6816

; <label>:6816                                    ; preds = %7550, %6815
  %6817 = phi i32 [ %7551, %7550 ], [ %6745, %6815 ]
  %6818 = phi i32 [ %7552, %7550 ], [ 0, %6815 ]
  %6819 = phi i32 [ %7553, %7550 ], [ 0, %6815 ]
  %6820 = phi i32 [ %7554, %7550 ], [ 0, %6815 ]
  %6821 = phi i32 [ %7555, %7550 ], [ 0, %6815 ]
  %6822 = phi i32 [ %7556, %7550 ], [ 0, %6815 ]
  %6823 = phi i32 [ %7557, %7550 ], [ 0, %6815 ]
  %6824 = phi i32 [ %7558, %7550 ], [ 0, %6815 ]
  %6825 = phi i32 [ %7559, %7550 ], [ 0, %6815 ]
  %6826 = phi i32 [ %7578, %7550 ], [ %6811, %6815 ]
  %6827 = phi float [ %7560, %7550 ], [ %6747, %6815 ]
  %6828 = phi float [ %7561, %7550 ], [ %6748, %6815 ]
  %6829 = phi float [ %7562, %7550 ], [ %6749, %6815 ]
  %6830 = phi float [ %7563, %7550 ], [ %6750, %6815 ]
  %6831 = phi float [ %7564, %7550 ], [ %6751, %6815 ]
  %6832 = phi float [ %7565, %7550 ], [ %6752, %6815 ]
  %6833 = phi float [ %7566, %7550 ], [ %6753, %6815 ]
  %6834 = phi float [ %7567, %7550 ], [ %6754, %6815 ]
  %6835 = phi float [ %7568, %7550 ], [ %6755, %6815 ]
  %6836 = phi float [ %7569, %7550 ], [ %6756, %6815 ]
  %6837 = phi float [ %7570, %7550 ], [ %6757, %6815 ]
  %6838 = phi float [ %7571, %7550 ], [ %6758, %6815 ]
  %6839 = phi float [ %7572, %7550 ], [ %6760, %6815 ]
  %6840 = phi float [ %7573, %7550 ], [ %6761, %6815 ]
  %6841 = phi float [ %7574, %7550 ], [ %6762, %6815 ]
  %6842 = phi float [ %7575, %7550 ], [ %6756, %6815 ]
  %6843 = phi float [ %7576, %7550 ], [ %6757, %6815 ]
  %6844 = phi float [ %7577, %7550 ], [ %6758, %6815 ]
  %6845 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6846 = extractvalue %dx.types.CBufRet.i32 %6845, 0
  %6847 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6799, i32 %6846, i32 %6826)  ; UMad(a,b,c)
  %6848 = shl i32 %6847, 2
  %6849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6848, i32 undef)  ; BufferLoad(srv,index,wot)
  %6850 = extractvalue %dx.types.ResRet.i32 %6849, 0
  %6851 = shl i32 %6826, 5
  %6852 = sub nsw i32 %6809, %6851
  %6853 = call i32 @dx.op.binary.i32(i32 37, i32 %6852, i32 0)  ; IMax(a,b)
  %6854 = call i32 @dx.op.binary.i32(i32 38, i32 %6853, i32 31)  ; IMin(a,b)
  %6855 = sub nsw i32 1, %6809
  %6856 = add nsw i32 %6855, %6810
  %6857 = call i32 @dx.op.binary.i32(i32 37, i32 %6856, i32 0)  ; IMax(a,b)
  %6858 = call i32 @dx.op.binary.i32(i32 38, i32 %6857, i32 32)  ; IMin(a,b)
  %6859 = and i32 %6858, 31
  %6860 = shl i32 -1, %6859
  %6861 = xor i32 %6860, -1
  %6862 = and i32 %6854, 31
  %6863 = shl i32 %6861, %6862
  %6864 = icmp eq i32 %6858, 32
  %6865 = select i1 %6864, i32 -1, i32 %6863
  %6866 = and i32 %6865, %6850
  %6867 = icmp eq i32 %6866, 0
  br i1 %6867, label %7550, label %6868

; <label>:6868                                    ; preds = %6816
  br label %6869

; <label>:6869                                    ; preds = %7063, %6868
  %6870 = phi i32 [ %7064, %7063 ], [ %6817, %6868 ]
  %6871 = phi i32 [ %7053, %7063 ], [ %6818, %6868 ]
  %6872 = phi i32 [ %7055, %7063 ], [ %6819, %6868 ]
  %6873 = phi i32 [ %7057, %7063 ], [ %6820, %6868 ]
  %6874 = phi i32 [ %7059, %7063 ], [ %6821, %6868 ]
  %6875 = phi i32 [ %7065, %7063 ], [ %6822, %6868 ]
  %6876 = phi i32 [ %7066, %7063 ], [ %6823, %6868 ]
  %6877 = phi i32 [ %7067, %7063 ], [ %6824, %6868 ]
  %6878 = phi i32 [ %7068, %7063 ], [ %6825, %6868 ]
  %6879 = phi i32 [ %6902, %7063 ], [ %6866, %6868 ]
  %6880 = phi float [ %7069, %7063 ], [ %6827, %6868 ]
  %6881 = phi float [ %7070, %7063 ], [ %6828, %6868 ]
  %6882 = phi float [ %7071, %7063 ], [ %6829, %6868 ]
  %6883 = phi float [ %7072, %7063 ], [ %6830, %6868 ]
  %6884 = phi float [ %7073, %7063 ], [ %6831, %6868 ]
  %6885 = phi float [ %7074, %7063 ], [ %6832, %6868 ]
  %6886 = phi float [ %7075, %7063 ], [ %6833, %6868 ]
  %6887 = phi float [ %7076, %7063 ], [ %6834, %6868 ]
  %6888 = phi float [ %7077, %7063 ], [ %6835, %6868 ]
  %6889 = phi float [ %7078, %7063 ], [ %6836, %6868 ]
  %6890 = phi float [ %7079, %7063 ], [ %6837, %6868 ]
  %6891 = phi float [ %7080, %7063 ], [ %6838, %6868 ]
  %6892 = phi float [ %7081, %7063 ], [ %6839, %6868 ]
  %6893 = phi float [ %7082, %7063 ], [ %6840, %6868 ]
  %6894 = phi float [ %7083, %7063 ], [ %6841, %6868 ]
  %6895 = phi float [ %7084, %7063 ], [ %6842, %6868 ]
  %6896 = phi float [ %7085, %7063 ], [ %6843, %6868 ]
  %6897 = phi float [ %7086, %7063 ], [ %6844, %6868 ]
  %6898 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6879)  ; FirstbitLo(value)
  %6899 = add i32 %6898, %6851
  %6900 = and i32 %6898, 31
  %6901 = shl i32 1, %6900
  %6902 = xor i32 %6901, %6879
  %6903 = mul i32 %6899, 112
  %6904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6903, i32 undef)  ; BufferLoad(srv,index,wot)
  %6905 = extractvalue %dx.types.ResRet.f32 %6904, 0
  %6906 = extractvalue %dx.types.ResRet.f32 %6904, 1
  %6907 = extractvalue %dx.types.ResRet.f32 %6904, 2
  %6908 = or i32 %6903, 12
  %6909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6908, i32 undef)  ; BufferLoad(srv,index,wot)
  %6910 = extractvalue %dx.types.ResRet.f32 %6909, 0
  %6911 = add i32 %6903, 16
  %6912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6911, i32 undef)  ; BufferLoad(srv,index,wot)
  %6913 = extractvalue %dx.types.ResRet.f32 %6912, 0
  %6914 = extractvalue %dx.types.ResRet.f32 %6912, 1
  %6915 = extractvalue %dx.types.ResRet.f32 %6912, 2
  %6916 = add i32 %6903, 28
  %6917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6916, i32 undef)  ; BufferLoad(srv,index,wot)
  %6918 = extractvalue %dx.types.ResRet.i32 %6917, 0
  %6919 = add i32 %6903, 32
  %6920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6919, i32 undef)  ; BufferLoad(srv,index,wot)
  %6921 = extractvalue %dx.types.ResRet.f32 %6920, 0
  %6922 = extractvalue %dx.types.ResRet.f32 %6920, 1
  %6923 = extractvalue %dx.types.ResRet.f32 %6920, 2
  %6924 = add i32 %6903, 44
  %6925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6924, i32 undef)  ; BufferLoad(srv,index,wot)
  %6926 = extractvalue %dx.types.ResRet.f32 %6925, 0
  %6927 = add i32 %6903, 48
  %6928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6927, i32 undef)  ; BufferLoad(srv,index,wot)
  %6929 = extractvalue %dx.types.ResRet.f32 %6928, 0
  %6930 = extractvalue %dx.types.ResRet.f32 %6928, 1
  %6931 = extractvalue %dx.types.ResRet.f32 %6928, 2
  %6932 = extractvalue %dx.types.ResRet.f32 %6928, 3
  %6933 = add i32 %6903, 64
  %6934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6933, i32 undef)  ; BufferLoad(srv,index,wot)
  %6935 = extractvalue %dx.types.ResRet.f32 %6934, 0
  %6936 = extractvalue %dx.types.ResRet.f32 %6934, 1
  %6937 = extractvalue %dx.types.ResRet.f32 %6934, 2
  %6938 = extractvalue %dx.types.ResRet.f32 %6934, 3
  %6939 = add i32 %6903, 80
  %6940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6939, i32 undef)  ; BufferLoad(srv,index,wot)
  %6941 = extractvalue %dx.types.ResRet.f32 %6940, 1
  %6942 = extractvalue %dx.types.ResRet.f32 %6940, 2
  %6943 = add i32 %6903, 92
  %6944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6943, i32 undef)  ; BufferLoad(srv,index,wot)
  %6945 = extractvalue %dx.types.ResRet.i32 %6944, 0
  %6946 = call float @dx.op.dot3.f32(i32 55, float %6905, float %6906, float %6907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6947 = select i1 %2046, float %6941, float %6905
  %6948 = select i1 %2046, float %6946, float %6906
  %6949 = select i1 %2046, float %6942, float %6907
  %6950 = and i32 %6945, 65535
  %6951 = uitofp i32 %6950 to float
  %6952 = lshr i32 %6945, 16
  %6953 = uitofp i32 %6952 to float
  %6954 = and i32 %6918, 65535
  %6955 = lshr i32 %6918, 24
  %6956 = and i32 %6955, 3
  %6957 = and i32 %6918, 536870912
  %6958 = icmp ne i32 %6957, 0
  %6959 = icmp eq i32 %6956, 2
  %6960 = call float @dx.op.dot3.f32(i32 55, float %6921, float %6922, float %6923, float %6921, float %6922, float %6923)  ; Dot3(ax,ay,az,bx,by,bz)
  %6961 = fsub fast float %153, %6929
  %6962 = fsub fast float %154, %6930
  %6963 = fsub fast float %155, %6931
  %6964 = call float @dx.op.dot3.f32(i32 55, float %6961, float %6962, float %6963, float %6921, float %6922, float %6923)  ; Dot3(ax,ay,az,bx,by,bz)
  %6965 = fdiv fast float %6964, %6960
  %6966 = call float @dx.op.binary.f32(i32 35, float %6965, float -1.000000e+00)  ; FMax(a,b)
  %6967 = call float @dx.op.binary.f32(i32 36, float %6966, float 1.000000e+00)  ; FMin(a,b)
  %6968 = fmul fast float %6967, %6921
  %6969 = fmul fast float %6967, %6922
  %6970 = fmul fast float %6967, %6923
  %6971 = fadd fast float %6968, %6929
  %6972 = fadd fast float %6969, %6930
  %6973 = fadd fast float %6970, %6931
  %6974 = fsub fast float %6971, %153
  %6975 = fsub fast float %6972, %154
  %6976 = fsub fast float %6973, %155
  %6977 = call float @dx.op.dot3.f32(i32 55, float %6974, float %6975, float %6976, float %6974, float %6975, float %6976)  ; Dot3(ax,ay,az,bx,by,bz)
  %6978 = call float @dx.op.unary.f32(i32 24, float %6977)  ; Sqrt(value)
  %6979 = fdiv fast float 1.000000e+00, %6978
  %6980 = fmul fast float %6974, %6979
  %6981 = fmul fast float %6975, %6979
  %6982 = fmul fast float %6976, %6979
  %6983 = fadd fast float %6978, %6910
  %6984 = fdiv fast float 1.000000e+00, %6983
  %6985 = fmul float %6926, %6984
  %6986 = fmul float %6985, %6985
  %6987 = call float @dx.op.unary.f32(i32 7, float %6986)  ; Saturate(value)
  br i1 %6959, label %6988, label %7012

; <label>:6988                                    ; preds = %6869
  %6989 = fmul fast float %6937, %6913
  %6990 = fmul fast float %6937, %6914
  %6991 = fmul fast float %6937, %6915
  %6992 = fsub fast float %6989, %153
  %6993 = fadd fast float %6992, %6971
  %6994 = fsub fast float %6990, %154
  %6995 = fadd fast float %6994, %6972
  %6996 = fsub fast float %6991, %155
  %6997 = fadd fast float %6996, %6973
  %6998 = call float @dx.op.dot3.f32(i32 55, float %6993, float %6995, float %6997, float %6993, float %6995, float %6997)  ; Dot3(ax,ay,az,bx,by,bz)
  %6999 = call float @dx.op.unary.f32(i32 25, float %6998)  ; Rsqrt(value)
  %7000 = fmul fast float %6999, %6993
  %7001 = fmul fast float %6999, %6995
  %7002 = fmul fast float %6999, %6997
  %7003 = fsub fast float %153, %6971
  %7004 = fsub fast float %154, %6972
  %7005 = fsub fast float %155, %6973
  %7006 = fsub fast float -0.000000e+00, %7003
  %7007 = fsub fast float -0.000000e+00, %7004
  %7008 = fsub fast float -0.000000e+00, %7005
  %7009 = call float @dx.op.dot3.f32(i32 55, float %7006, float %7007, float %7008, float %6913, float %6914, float %6915)  ; Dot3(ax,ay,az,bx,by,bz)
  %7010 = fcmp fast ogt float %7009, 0.000000e+00
  %7011 = uitofp i1 %7010 to float
  br label %7012

; <label>:7012                                    ; preds = %6988, %6869
  %7013 = phi float [ %7011, %6988 ], [ 1.000000e+00, %6869 ]
  %7014 = phi float [ %7000, %6988 ], [ %6980, %6869 ]
  %7015 = phi float [ %7001, %6988 ], [ %6981, %6869 ]
  %7016 = phi float [ %7002, %6988 ], [ %6982, %6869 ]
  %7017 = call float @dx.op.dot3.f32(i32 55, float %6913, float %6914, float %6915, float %7014, float %7015, float %7016)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fmul fast float %7017, %7017
  %7019 = call float @dx.op.unary.f32(i32 7, float %7018)  ; Saturate(value)
  %7020 = fsub fast float 1.000000e+00, %7019
  %7021 = fmul fast float %7020, 5.000000e-01
  %7022 = fcmp fast ogt float %7017, 0.000000e+00
  %7023 = fsub fast float 1.000000e+00, %7021
  %7024 = select i1 %7022, float %7021, float %7023
  %7025 = fmul fast float %7024, %6953
  %7026 = fadd fast float %7025, %6951
  %7027 = fmul fast float %7026, 0x3EF0001000000000
  %7028 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %61, float %7027, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7029 = extractvalue %dx.types.ResRet.f32 %7028, 0
  %7030 = fmul fast float %7017, %6935
  %7031 = fadd fast float %7030, %6936
  %7032 = call float @dx.op.unary.f32(i32 7, float %7031)  ; Saturate(value)
  %7033 = select i1 %6959, float 1.000000e+00, float %7032
  %7034 = select i1 %6959, float %7032, float 1.000000e+00
  %7035 = fmul fast float %6978, %6932
  %7036 = fsub fast float 1.000000e+00, %7035
  %7037 = fmul fast float %7036, %6938
  %7038 = call float @dx.op.unary.f32(i32 7, float %7037)  ; Saturate(value)
  %7039 = fmul fast float %7038, %7034
  %7040 = fmul fast float %7039, 2.000000e+00
  %7041 = fsub fast float 3.000000e+00, %7040
  %7042 = fmul fast float %7029, %7013
  %7043 = fmul fast float %7039, %7039
  %7044 = fmul fast float %7043, %7042
  %7045 = fmul fast float %7044, %7041
  %7046 = xor i1 %6958, true
  %7047 = and i1 %6959, %7046
  %7048 = icmp ne i32 %6956, 2
  %7049 = and i1 %7048, %7046
  %7050 = and i1 %6958, %6959
  %7051 = and i1 %6958, %7048
  %7052 = zext i1 %7047 to i32
  %7053 = add i32 %7052, %6871
  %7054 = zext i1 %7049 to i32
  %7055 = add i32 %7054, %6872
  %7056 = zext i1 %7050 to i32
  %7057 = add i32 %7056, %6873
  %7058 = zext i1 %7051 to i32
  %7059 = add i32 %7058, %6874
  %7060 = call float @dx.op.binary.f32(i32 36, float %7045, float %7045)  ; FMin(a,b)
  %7061 = call float @dx.op.binary.f32(i32 36, float %7045, float %7060)  ; FMin(a,b)
  %7062 = fcmp fast ogt float %7061, 0.000000e+00
  br i1 %7062, label %7088, label %7063, !dx.controlflow.hints !161

; <label>:7063                                    ; preds = %7534, %7012
  %7064 = phi i32 [ %7544, %7534 ], [ %6870, %7012 ]
  %7065 = phi i32 [ %7545, %7534 ], [ %6875, %7012 ]
  %7066 = phi i32 [ %7546, %7534 ], [ %6876, %7012 ]
  %7067 = phi i32 [ %7547, %7534 ], [ %6877, %7012 ]
  %7068 = phi i32 [ %7548, %7534 ], [ %6878, %7012 ]
  %7069 = phi float [ %7505, %7534 ], [ %6880, %7012 ]
  %7070 = phi float [ %7506, %7534 ], [ %6881, %7012 ]
  %7071 = phi float [ %7507, %7534 ], [ %6882, %7012 ]
  %7072 = phi float [ %7508, %7534 ], [ %6883, %7012 ]
  %7073 = phi float [ %7509, %7534 ], [ %6884, %7012 ]
  %7074 = phi float [ %7510, %7534 ], [ %6885, %7012 ]
  %7075 = phi float [ %7511, %7534 ], [ %6886, %7012 ]
  %7076 = phi float [ %7512, %7534 ], [ %6887, %7012 ]
  %7077 = phi float [ %7513, %7534 ], [ %6888, %7012 ]
  %7078 = phi float [ %7514, %7534 ], [ %6889, %7012 ]
  %7079 = phi float [ %7515, %7534 ], [ %6890, %7012 ]
  %7080 = phi float [ %7516, %7534 ], [ %6891, %7012 ]
  %7081 = phi float [ %7517, %7534 ], [ %6892, %7012 ]
  %7082 = phi float [ %7518, %7534 ], [ %6893, %7012 ]
  %7083 = phi float [ %7519, %7534 ], [ %6894, %7012 ]
  %7084 = phi float [ %7520, %7534 ], [ %6895, %7012 ]
  %7085 = phi float [ %7521, %7534 ], [ %6896, %7012 ]
  %7086 = phi float [ %7522, %7534 ], [ %6897, %7012 ]
  %7087 = icmp eq i32 %6879, %6901
  br i1 %7087, label %7549, label %6869

; <label>:7088                                    ; preds = %7012
  %7089 = icmp eq i32 %6954, 255
  br i1 %7089, label %7227, label %7090, !dx.controlflow.hints !162

; <label>:7090                                    ; preds = %7088
  %7091 = mul nuw nsw i32 %6954, 176
  %7092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7091, i32 undef)  ; BufferLoad(srv,index,wot)
  %7093 = extractvalue %dx.types.ResRet.f32 %7092, 0
  %7094 = extractvalue %dx.types.ResRet.f32 %7092, 1
  %7095 = extractvalue %dx.types.ResRet.f32 %7092, 2
  %7096 = extractvalue %dx.types.ResRet.f32 %7092, 3
  %7097 = add nuw nsw i32 %7091, 16
  %7098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7097, i32 undef)  ; BufferLoad(srv,index,wot)
  %7099 = extractvalue %dx.types.ResRet.f32 %7098, 0
  %7100 = extractvalue %dx.types.ResRet.f32 %7098, 1
  %7101 = add nuw nsw i32 %7091, 32
  %7102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7101, i32 undef)  ; BufferLoad(srv,index,wot)
  %7103 = extractvalue %dx.types.ResRet.f32 %7102, 0
  %7104 = extractvalue %dx.types.ResRet.f32 %7102, 1
  %7105 = add nuw nsw i32 %7091, 48
  %7106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7105, i32 undef)  ; BufferLoad(srv,index,wot)
  %7107 = extractvalue %dx.types.ResRet.f32 %7106, 0
  %7108 = extractvalue %dx.types.ResRet.f32 %7106, 1
  %7109 = extractvalue %dx.types.ResRet.f32 %7106, 2
  %7110 = extractvalue %dx.types.ResRet.f32 %7106, 3
  %7111 = add nuw nsw i32 %7091, 64
  %7112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7111, i32 undef)  ; BufferLoad(srv,index,wot)
  %7113 = extractvalue %dx.types.ResRet.f32 %7112, 0
  %7114 = extractvalue %dx.types.ResRet.f32 %7112, 1
  %7115 = extractvalue %dx.types.ResRet.f32 %7112, 2
  %7116 = extractvalue %dx.types.ResRet.f32 %7112, 3
  %7117 = add nuw nsw i32 %7091, 80
  %7118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7117, i32 undef)  ; BufferLoad(srv,index,wot)
  %7119 = extractvalue %dx.types.ResRet.f32 %7118, 0
  %7120 = extractvalue %dx.types.ResRet.f32 %7118, 1
  %7121 = extractvalue %dx.types.ResRet.f32 %7118, 2
  %7122 = extractvalue %dx.types.ResRet.f32 %7118, 3
  %7123 = add nuw nsw i32 %7091, 96
  %7124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7123, i32 undef)  ; BufferLoad(srv,index,wot)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 0
  %7126 = extractvalue %dx.types.ResRet.f32 %7124, 1
  %7127 = extractvalue %dx.types.ResRet.f32 %7124, 2
  %7128 = extractvalue %dx.types.ResRet.f32 %7124, 3
  %7129 = bitcast float %7100 to i32
  %7130 = fmul fast float %7107, %153
  %7131 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7113, float %7130)  ; FMad(a,b,c)
  %7132 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7119, float %7131)  ; FMad(a,b,c)
  %7133 = fadd fast float %7132, %7125
  %7134 = fmul fast float %7108, %153
  %7135 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7114, float %7134)  ; FMad(a,b,c)
  %7136 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7120, float %7135)  ; FMad(a,b,c)
  %7137 = fadd fast float %7136, %7126
  %7138 = fmul fast float %7109, %153
  %7139 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7115, float %7138)  ; FMad(a,b,c)
  %7140 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7121, float %7139)  ; FMad(a,b,c)
  %7141 = fadd fast float %7140, %7127
  %7142 = fmul fast float %7110, %153
  %7143 = call float @dx.op.tertiary.f32(i32 46, float %154, float %7116, float %7142)  ; FMad(a,b,c)
  %7144 = call float @dx.op.tertiary.f32(i32 46, float %155, float %7122, float %7143)  ; FMad(a,b,c)
  %7145 = fadd fast float %7144, %7128
  %7146 = fdiv fast float %7133, %7145
  %7147 = fdiv fast float %7137, %7145
  %7148 = fdiv fast float %7141, %7145
  %7149 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7148)  ; FMax(a,b)
  %7150 = fmul fast float %1336, 0x401921FB60000000
  %7151 = call float @dx.op.unary.f32(i32 13, float %7150)  ; Sin(value)
  %7152 = call float @dx.op.unary.f32(i32 12, float %7150)  ; Cos(value)
  %7153 = fmul fast float %7152, %7104
  %7154 = call float @dx.op.tertiary.f32(i32 46, float %7151, float %7104, float 0.000000e+00)  ; FMad(a,b,c)
  %7155 = fmul fast float %7104, %7151
  %7156 = fsub fast float -0.000000e+00, %7155
  %7157 = call float @dx.op.tertiary.f32(i32 46, float %7152, float %7104, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7158

; <label>:7158                                    ; preds = %7158, %7090
  %7159 = phi float [ 0.000000e+00, %7090 ], [ %7191, %7158 ]
  %7160 = phi float [ 0.000000e+00, %7090 ], [ %7193, %7158 ]
  %7161 = phi i32 [ 0, %7090 ], [ %7194, %7158 ]
  %7162 = mul i32 %7161, 2
  %7163 = add i32 0, %7162
  %7164 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7163
  %7165 = load float, float* %7164, align 4
  %7166 = mul i32 %7161, 2
  %7167 = add i32 1, %7166
  %7168 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7167
  %7169 = load float, float* %7168, align 4
  %7170 = fmul fast float %7153, %7165
  %7171 = call float @dx.op.tertiary.f32(i32 46, float %7169, float %7156, float %7170)  ; FMad(a,b,c)
  %7172 = fmul fast float %7165, %7154
  %7173 = call float @dx.op.tertiary.f32(i32 46, float %7169, float %7157, float %7172)  ; FMad(a,b,c)
  %7174 = fadd fast float %7171, %7146
  %7175 = fadd fast float %7173, %7147
  %7176 = fmul fast float %7174, %7099
  %7177 = fmul fast float %7175, %7099
  %7178 = call float @dx.op.binary.f32(i32 35, float %7176, float %7095)  ; FMax(a,b)
  %7179 = call float @dx.op.binary.f32(i32 35, float %7177, float %7095)  ; FMax(a,b)
  %7180 = call float @dx.op.binary.f32(i32 36, float %7178, float %7096)  ; FMin(a,b)
  %7181 = call float @dx.op.binary.f32(i32 36, float %7179, float %7096)  ; FMin(a,b)
  %7182 = fadd fast float %7180, %7093
  %7183 = fadd fast float %7181, %7094
  %7184 = uitofp i32 %7129 to float
  %7185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %62, float %7182, float %7183, float %7184, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7186 = extractvalue %dx.types.ResRet.f32 %7185, 0
  %7187 = fsub fast float %7186, %7149
  %7188 = fsub fast float %7187, %7103
  %7189 = fcmp fast ogt float %7188, 0.000000e+00
  %7190 = select i1 %7189, float 1.000000e+00, float 0.000000e+00
  %7191 = fadd fast float %7190, %7159
  %7192 = select i1 %7189, float %7188, float 0.000000e+00
  %7193 = fadd fast float %7192, %7160
  %7194 = add nuw nsw i32 %7161, 1
  %7195 = icmp eq i32 %7194, 8
  br i1 %7195, label %7196, label %7158

; <label>:7196                                    ; preds = %7158
  %7197 = fdiv fast float 1.000000e+00, %7191
  %7198 = fmul fast float %7197, %7193
  %7199 = fdiv fast float 1.000000e+00, %7149
  %7200 = fmul fast float %7198, %7199
  %7201 = call float @dx.op.unary.f32(i32 7, float %7200)  ; Saturate(value)
  %7202 = call float @dx.op.binary.f32(i32 35, float %7201, float 0.000000e+00)  ; FMax(a,b)
  %7203 = fmul fast float %7191, 1.250000e-01
  %7204 = call float @dx.op.unary.f32(i32 7, float %7203)  ; Saturate(value)
  %7205 = fmul fast float %7204, 2.000000e+00
  %7206 = fadd fast float %7205, -1.000000e+00
  %7207 = fcmp fast ogt float %7206, 0.000000e+00
  %7208 = fcmp fast olt float %7206, 0.000000e+00
  %7209 = zext i1 %7207 to i32
  %7210 = zext i1 %7208 to i32
  %7211 = sub nsw i32 %7209, %7210
  %7212 = sitofp i32 %7211 to float
  %7213 = fmul fast float %7212, %7206
  %7214 = fsub fast float 1.000000e+00, %7213
  %7215 = fmul fast float %7214, %7214
  %7216 = fmul fast float %7215, %7214
  %7217 = fsub fast float %7214, %7216
  %7218 = fmul fast float %7217, %7202
  %7219 = fsub fast float 1.000000e+00, %7216
  %7220 = fsub fast float %7219, %7218
  %7221 = fmul fast float %7212, 5.000000e-01
  %7222 = fmul fast float %7221, %7220
  %7223 = fsub fast float -5.000000e-01, %7222
  %7224 = fmul fast float %7223, %7033
  %7225 = fadd fast float %7224, 1.000000e+00
  %7226 = fmul fast float %7225, %7045
  br label %7227

; <label>:7227                                    ; preds = %7196, %7088
  %7228 = phi float [ %7226, %7196 ], [ %7045, %7088 ]
  %7229 = call float @dx.op.binary.f32(i32 36, float %7228, float %7228)  ; FMin(a,b)
  %7230 = call float @dx.op.binary.f32(i32 36, float %7228, float %7229)  ; FMin(a,b)
  %7231 = fcmp fast ogt float %7230, 0.000000e+00
  br i1 %7231, label %7232, label %7504, !dx.controlflow.hints !163

; <label>:7232                                    ; preds = %7227
  %7233 = fmul fast float %7228, %6947
  %7234 = fmul fast float %7228, %6948
  %7235 = fmul fast float %7228, %6949
  %7236 = fadd fast float %6980, %1862
  %7237 = fadd fast float %6981, %1863
  %7238 = fadd fast float %6982, %1864
  %7239 = call float @dx.op.dot3.f32(i32 55, float %6980, float %6981, float %6982, float %6974, float %6975, float %6976)  ; Dot3(ax,ay,az,bx,by,bz)
  %7240 = call float @dx.op.dot3.f32(i32 55, float %6980, float %6981, float %6982, float %7236, float %7237, float %7238)  ; Dot3(ax,ay,az,bx,by,bz)
  %7241 = fdiv fast float 1.000000e+00, %7240
  %7242 = fmul fast float %7241, %7239
  %7243 = fmul fast float %7242, %7236
  %7244 = fmul fast float %7242, %7237
  %7245 = fmul fast float %7242, %7238
  %7246 = fadd fast float %6961, %7243
  %7247 = fadd fast float %6962, %7244
  %7248 = fadd fast float %6963, %7245
  %7249 = call float @dx.op.dot3.f32(i32 55, float %7246, float %7247, float %7248, float %6921, float %6922, float %6923)  ; Dot3(ax,ay,az,bx,by,bz)
  %7250 = fdiv fast float %7249, %6960
  %7251 = call float @dx.op.binary.f32(i32 35, float %7250, float -1.000000e+00)  ; FMax(a,b)
  %7252 = call float @dx.op.binary.f32(i32 36, float %7251, float 1.000000e+00)  ; FMin(a,b)
  %7253 = fmul fast float %7252, %6921
  %7254 = fmul fast float %7252, %6922
  %7255 = fmul fast float %7252, %6923
  %7256 = fsub fast float %6929, %153
  %7257 = fadd fast float %7256, %7253
  %7258 = fsub fast float %6930, %154
  %7259 = fadd fast float %7258, %7254
  %7260 = fsub fast float %6931, %155
  %7261 = fadd fast float %7260, %7255
  %7262 = call float @dx.op.dot3.f32(i32 55, float %7257, float %7259, float %7261, float %7257, float %7259, float %7261)  ; Dot3(ax,ay,az,bx,by,bz)
  %7263 = call float @dx.op.unary.f32(i32 25, float %7262)  ; Rsqrt(value)
  %7264 = fmul fast float %7257, %7263
  %7265 = fmul fast float %7259, %7263
  %7266 = fmul fast float %7261, %7263
  %7267 = fsub fast float %7264, %1890
  %7268 = fsub fast float %7265, %1891
  %7269 = fsub fast float %7266, %1892
  %7270 = call float @dx.op.dot3.f32(i32 55, float %7267, float %7268, float %7269, float %7267, float %7268, float %7269)  ; Dot3(ax,ay,az,bx,by,bz)
  %7271 = call float @dx.op.unary.f32(i32 25, float %7270)  ; Rsqrt(value)
  %7272 = fmul fast float %7267, %7271
  %7273 = fmul fast float %7268, %7271
  %7274 = fmul fast float %7269, %7271
  %7275 = call float @dx.op.dot3.f32(i32 55, float %7264, float %7265, float %7266, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %7276 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2049, float %2050, float %7272, float %7273, float %7274)  ; Dot3(ax,ay,az,bx,by,bz)
  %7277 = fmul fast float %7263, %6926
  %7278 = fmul fast float %7277, %7277
  %7279 = bitcast float %7278 to i32
  %7280 = ashr i32 %7279, 1
  %7281 = sub nsw i32 1597463007, %7280
  %7282 = bitcast i32 %7281 to float
  %7283 = fmul fast float %7282, %7275
  %7284 = fmul fast float %7283, %7283
  %7285 = fsub fast float 1.000000e+00, %7284
  %7286 = fmul fast float %7275, %7278
  %7287 = call float @dx.op.unary.f32(i32 7, float %7286)  ; Saturate(value)
  %7288 = fmul fast float %7283, 5.000000e-01
  %7289 = fadd fast float %7288, 5.000000e-01
  %7290 = fmul fast float %7289, %7278
  %7291 = call float @dx.op.unary.f32(i32 7, float %7290)  ; Saturate(value)
  %7292 = bitcast float %7291 to i32
  %7293 = ashr i32 %7292, 1
  %7294 = add nsw i32 %7293, 532487669
  %7295 = bitcast i32 %7294 to float
  %7296 = fmul fast float %7295, %7291
  %7297 = fcmp fast ogt float %7285, 0.000000e+00
  %7298 = select i1 %7297, float %7296, float %7287
  %7299 = call float @dx.op.unary.f32(i32 7, float %7275)  ; Saturate(value)
  %7300 = fmul fast float %7299, %7299
  %7301 = fmul fast float %7300, %2089
  %7302 = call float @dx.op.unary.f32(i32 7, float %7301)  ; Saturate(value)
  %7303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7304 = extractvalue %dx.types.CBufRet.f32 %7303, 0
  %7305 = bitcast float %7304 to i32
  %7306 = lshr i32 %7305, 8
  %7307 = and i32 %7306, 255
  %7308 = uitofp i32 %7307 to float
  %7309 = fptoui float %7308 to i32
  %7310 = and i32 %7309, 8
  %7311 = icmp ne i32 %7310, 0
  %7312 = select i1 %7311, float %7302, float 1.000000e+00
  %7313 = fmul fast float %7312, %7298
  %7314 = call float @dx.op.dot3.f32(i32 55, float %6921, float %6922, float %6923, float %2058, float %2059, float %2060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7315 = call float @dx.op.dot3.f32(i32 55, float %6921, float %6922, float %6923, float %6974, float %6975, float %6976)  ; Dot3(ax,ay,az,bx,by,bz)
  %7316 = call float @dx.op.dot3.f32(i32 55, float %2058, float %2059, float %2060, float %6974, float %6975, float %6976)  ; Dot3(ax,ay,az,bx,by,bz)
  %7317 = fmul fast float %7314, %7314
  %7318 = fsub fast float %6960, %7317
  %7319 = fmul fast float %7316, %7314
  %7320 = fsub fast float %7319, %7315
  %7321 = fdiv fast float %7320, %7318
  %7322 = call float @dx.op.binary.f32(i32 35, float %7321, float -1.500000e+00)  ; FMax(a,b)
  %7323 = call float @dx.op.binary.f32(i32 36, float %7322, float 1.500000e+00)  ; FMin(a,b)
  %7324 = fmul fast float %7323, %7323
  %7325 = fmul fast float %7324, 0x3FC2F68380000000
  %7326 = fmul fast float %7325, %7323
  %7327 = fsub fast float %7323, %7326
  %7328 = fmul fast float %7327, %6921
  %7329 = fmul fast float %7327, %6922
  %7330 = fmul fast float %7327, %6923
  %7331 = fadd fast float %7328, %6971
  %7332 = fadd fast float %7329, %6972
  %7333 = fadd fast float %7330, %6973
  %7334 = fsub fast float %7331, %153
  %7335 = fsub fast float %7332, %154
  %7336 = fsub fast float %7333, %155
  %7337 = call float @dx.op.dot3.f32(i32 55, float %7334, float %7335, float %7336, float %2058, float %2059, float %2060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7338 = fmul fast float %7337, %2058
  %7339 = fmul fast float %7337, %2059
  %7340 = fmul fast float %7337, %2060
  %7341 = fsub fast float %7338, %7334
  %7342 = fsub fast float %7339, %7335
  %7343 = fsub fast float %7340, %7336
  %7344 = call float @dx.op.dot3.f32(i32 55, float %7341, float %7342, float %7343, float %7341, float %7342, float %7343)  ; Dot3(ax,ay,az,bx,by,bz)
  %7345 = bitcast float %7344 to i32
  %7346 = ashr i32 %7345, 1
  %7347 = sub nsw i32 1597463007, %7346
  %7348 = bitcast i32 %7347 to float
  %7349 = fmul fast float %7348, %6926
  %7350 = call float @dx.op.dot3.f32(i32 55, float %7334, float %7335, float %7336, float %7334, float %7335, float %7336)  ; Dot3(ax,ay,az,bx,by,bz)
  %7351 = bitcast float %7350 to i32
  %7352 = ashr i32 %7351, 1
  %7353 = sub nsw i32 1597463007, %7352
  %7354 = bitcast i32 %7353 to float
  %7355 = fmul fast float %7349, %7349
  %7356 = fadd fast float %7355, 1.250000e-01
  %7357 = call float @dx.op.unary.f32(i32 25, float %7356)  ; Rsqrt(value)
  %7358 = fmul fast float %7349, %7357
  %7359 = fmul fast float %7341, %7358
  %7360 = fmul fast float %7342, %7358
  %7361 = fmul fast float %7343, %7358
  %7362 = fadd fast float %7334, %7359
  %7363 = fadd fast float %7335, %7360
  %7364 = fadd fast float %7336, %7361
  %7365 = call float @dx.op.dot3.f32(i32 55, float %7362, float %7363, float %7364, float %7362, float %7363, float %7364)  ; Dot3(ax,ay,az,bx,by,bz)
  %7366 = call float @dx.op.unary.f32(i32 25, float %7365)  ; Rsqrt(value)
  %7367 = fmul fast float %7362, %7366
  %7368 = fmul fast float %7363, %7366
  %7369 = fmul fast float %7364, %7366
  %7370 = fsub fast float %7367, %1890
  %7371 = fsub fast float %7368, %1891
  %7372 = fsub fast float %7369, %1892
  %7373 = call float @dx.op.dot3.f32(i32 55, float %7370, float %7371, float %7372, float %7370, float %7371, float %7372)  ; Dot3(ax,ay,az,bx,by,bz)
  %7374 = call float @dx.op.unary.f32(i32 25, float %7373)  ; Rsqrt(value)
  %7375 = fmul fast float %7370, %7374
  %7376 = fmul fast float %7371, %7374
  %7377 = fmul fast float %7372, %7374
  %7378 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %7375, float %7376, float %7377)  ; Dot3(ax,ay,az,bx,by,bz)
  %7379 = fmul fast float %7378, %7378
  %7380 = call float @dx.op.unary.f32(i32 6, float %7275)  ; FAbs(value)
  %7381 = fsub fast float 1.000000e+00, %2080
  %7382 = fmul fast float %2053, %2053
  %7383 = fmul fast float %7382, %7381
  %7384 = fadd fast float %7383, %2080
  %7385 = bitcast float %7384 to i32
  %7386 = ashr i32 %7385, 1
  %7387 = add nsw i32 %7386, 532487669
  %7388 = bitcast i32 %7387 to float
  %7389 = fadd fast float %7388, %2053
  %7390 = fmul fast float %2080, %7379
  %7391 = fsub fast float 1.000000e+00, %7379
  %7392 = fadd fast float %7391, %7390
  %7393 = fmul fast float %7380, %7380
  %7394 = fmul fast float %7393, %7381
  %7395 = fadd fast float %7394, %2080
  %7396 = bitcast float %7395 to i32
  %7397 = ashr i32 %7396, 1
  %7398 = add nsw i32 %7397, 532487669
  %7399 = bitcast i32 %7398 to float
  %7400 = fadd fast float %7399, %7380
  %7401 = fmul fast float %7392, %7392
  %7402 = fmul fast float %7401, %7389
  %7403 = fmul fast float %7402, %7400
  %7404 = fdiv fast float 1.000000e+00, %7403
  %7405 = bitcast float %2080 to i32
  %7406 = sitofp i32 %7405 to float
  %7407 = fmul fast float %7406, 0x3FE7F73180000000
  %7408 = fadd fast float %7407, 0x41AFE27C40000000
  %7409 = fptosi float %7408 to i32
  %7410 = bitcast i32 %7409 to float
  %7411 = fmul fast float %6926, 0x3FD80E9D60000000
  %7412 = fmul fast float %7411, %7354
  %7413 = fadd fast float %7410, %7412
  %7414 = bitcast float %7413 to i32
  %7415 = sub nsw i32 2129859010, %7414
  %7416 = bitcast i32 %7415 to float
  %7417 = fmul fast float %2080, %7404
  %7418 = fmul fast float %7417, %7410
  %7419 = fmul fast float %7418, %7416
  %7420 = call float @dx.op.unary.f32(i32 6, float %7276)  ; FAbs(value)
  %7421 = fsub fast float 1.000000e+00, %7420
  %7422 = bitcast float %7421 to i32
  %7423 = sitofp i32 %7422 to float
  %7424 = fmul fast float %7423, 5.000000e+00
  %7425 = fadd fast float %7424, 0xC1EFBF8940000000
  %7426 = fptosi float %7425 to i32
  %7427 = bitcast i32 %7426 to float
  %7428 = fmul fast float %7427, %1943
  %7429 = fmul fast float %7427, %1944
  %7430 = fmul fast float %7427, %3154
  %7431 = fadd fast float %7428, %1883
  %7432 = fadd fast float %7429, %1884
  %7433 = fadd fast float %7430, %2051
  %7434 = fmul fast float %7275, 9.843750e-01
  %7435 = fmul fast float %1992, 9.843750e-01
  %7436 = fadd fast float %7434, 7.812500e-03
  %7437 = fadd fast float %7435, 7.812500e-03
  %7438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7436, float %7437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7439 = extractvalue %dx.types.ResRet.f32 %7438, 2
  %7440 = extractvalue %dx.types.ResRet.f32 %7438, 3
  %7441 = fmul fast float %7439, %1883
  %7442 = fmul fast float %7439, %1884
  %7443 = fmul fast float %7439, %2051
  %7444 = fadd fast float %7441, %7440
  %7445 = fadd fast float %7442, %7440
  %7446 = fadd fast float %7443, %7440
  %7447 = call float @dx.op.binary.f32(i32 35, float %7445, float %7446)  ; FMax(a,b)
  %7448 = call float @dx.op.binary.f32(i32 35, float %7444, float %7447)  ; FMax(a,b)
  %7449 = fsub fast float 1.000000e+00, %7448
  %7450 = fsub fast float -0.000000e+00, %1862
  %7451 = fsub fast float -0.000000e+00, %1863
  %7452 = fsub fast float -0.000000e+00, %1864
  %7453 = call float @dx.op.dot3.f32(i32 55, float %6980, float %6981, float %6982, float %7450, float %7451, float %7452)  ; Dot3(ax,ay,az,bx,by,bz)
  %7454 = call float @dx.op.unary.f32(i32 7, float %7453)  ; Saturate(value)
  %7455 = fmul fast float %7454, %6987
  %7456 = fmul fast float %7454, 9.843750e-01
  %7457 = fadd fast float %7456, 7.812500e-03
  %7458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %61, float %7457, float %7437, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7459 = extractvalue %dx.types.ResRet.f32 %7458, 2
  %7460 = extractvalue %dx.types.ResRet.f32 %7458, 3
  %7461 = fmul fast float %7459, %1883
  %7462 = fmul fast float %7459, %1884
  %7463 = fmul fast float %7459, %2051
  %7464 = fadd fast float %7461, %7460
  %7465 = fadd fast float %7462, %7460
  %7466 = fadd fast float %7463, %7460
  %7467 = call float @dx.op.binary.f32(i32 35, float %7465, float %7466)  ; FMax(a,b)
  %7468 = call float @dx.op.binary.f32(i32 35, float %7464, float %7467)  ; FMax(a,b)
  %7469 = fsub fast float 1.000000e+00, %7468
  %7470 = fmul fast float %7455, %7469
  %7471 = fmul fast float %7470, %1995
  %7472 = fmul fast float %7449, %7313
  %7473 = fmul fast float %7431, %7313
  %7474 = fmul fast float %7473, %7419
  %7475 = fmul fast float %7432, %7313
  %7476 = fmul fast float %7475, %7419
  %7477 = fmul fast float %7433, %7313
  %7478 = fmul fast float %7477, %7419
  %7479 = fadd fast float %7471, %7472
  %7480 = fmul fast float %7479, %7233
  %7481 = fmul fast float %7479, %7234
  %7482 = fmul fast float %7479, %7235
  %7483 = fadd fast float %7480, %6895
  %7484 = fadd fast float %7481, %6896
  %7485 = fadd fast float %7482, %6897
  %7486 = fmul fast float %7474, %7233
  %7487 = fmul fast float %7476, %7234
  %7488 = fmul fast float %7478, %7235
  %7489 = fadd fast float %7486, %6892
  %7490 = fadd fast float %7487, %6893
  %7491 = fadd fast float %7488, %6894
  %7492 = fadd fast float %7480, %6889
  %7493 = fadd fast float %7481, %6890
  %7494 = fadd fast float %7482, %6891
  %7495 = fadd fast float %7486, %6886
  %7496 = fadd fast float %7487, %6887
  %7497 = fadd fast float %7488, %6888
  %7498 = fadd fast float %7480, %6883
  %7499 = fadd fast float %7481, %6884
  %7500 = fadd fast float %7482, %6885
  %7501 = fadd fast float %7486, %6880
  %7502 = fadd fast float %7487, %6881
  %7503 = fadd fast float %7488, %6882
  br label %7504

; <label>:7504                                    ; preds = %7232, %7227
  %7505 = phi float [ %6880, %7227 ], [ %7501, %7232 ]
  %7506 = phi float [ %6881, %7227 ], [ %7502, %7232 ]
  %7507 = phi float [ %6882, %7227 ], [ %7503, %7232 ]
  %7508 = phi float [ %6883, %7227 ], [ %7498, %7232 ]
  %7509 = phi float [ %6884, %7227 ], [ %7499, %7232 ]
  %7510 = phi float [ %6885, %7227 ], [ %7500, %7232 ]
  %7511 = phi float [ %6886, %7227 ], [ %7495, %7232 ]
  %7512 = phi float [ %6887, %7227 ], [ %7496, %7232 ]
  %7513 = phi float [ %6888, %7227 ], [ %7497, %7232 ]
  %7514 = phi float [ %6889, %7227 ], [ %7492, %7232 ]
  %7515 = phi float [ %6890, %7227 ], [ %7493, %7232 ]
  %7516 = phi float [ %6891, %7227 ], [ %7494, %7232 ]
  %7517 = phi float [ %6892, %7227 ], [ %7489, %7232 ]
  %7518 = phi float [ %6893, %7227 ], [ %7490, %7232 ]
  %7519 = phi float [ %6894, %7227 ], [ %7491, %7232 ]
  %7520 = phi float [ %6895, %7227 ], [ %7483, %7232 ]
  %7521 = phi float [ %6896, %7227 ], [ %7484, %7232 ]
  %7522 = phi float [ %6897, %7227 ], [ %7485, %7232 ]
  %7523 = bitcast i32 %6870 to float
  %7524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7525 = extractvalue %dx.types.CBufRet.f32 %7524, 1
  %7526 = bitcast float %7525 to i32
  %7527 = and i32 %7526, 65535
  %7528 = icmp eq i32 %7527, 65535
  br i1 %7528, label %7529, label %7531

; <label>:7529                                    ; preds = %7504
  %7530 = call float @dx.op.binary.f32(i32 35, float %7523, float %7228)  ; FMax(a,b)
  br label %7534

; <label>:7531                                    ; preds = %7504
  %7532 = icmp eq i32 %7527, %6899
  %7533 = select i1 %7532, float %7228, float %7523
  br label %7534

; <label>:7534                                    ; preds = %7531, %7529
  %7535 = phi float [ %7530, %7529 ], [ %7533, %7531 ]
  %7536 = extractvalue %dx.types.CBufRet.f32 %7524, 0
  %7537 = bitcast float %7536 to i32
  %7538 = lshr i32 %7537, 8
  %7539 = and i32 %7538, 255
  %7540 = uitofp i32 %7539 to float
  %7541 = fptoui float %7540 to i32
  %7542 = icmp eq i32 %7541, 15
  %7543 = bitcast float %7535 to i32
  %7544 = select i1 %7542, i32 %7543, i32 %6870
  %7545 = add i32 %7052, %6875
  %7546 = add i32 %7054, %6876
  %7547 = add i32 %7056, %6877
  %7548 = add i32 %7058, %6878
  br label %7063

; <label>:7549                                    ; preds = %7063
  br label %7550

; <label>:7550                                    ; preds = %7549, %6816
  %7551 = phi i32 [ %6817, %6816 ], [ %7064, %7549 ]
  %7552 = phi i32 [ %6818, %6816 ], [ %7053, %7549 ]
  %7553 = phi i32 [ %6819, %6816 ], [ %7055, %7549 ]
  %7554 = phi i32 [ %6820, %6816 ], [ %7057, %7549 ]
  %7555 = phi i32 [ %6821, %6816 ], [ %7059, %7549 ]
  %7556 = phi i32 [ %6822, %6816 ], [ %7065, %7549 ]
  %7557 = phi i32 [ %6823, %6816 ], [ %7066, %7549 ]
  %7558 = phi i32 [ %6824, %6816 ], [ %7067, %7549 ]
  %7559 = phi i32 [ %6825, %6816 ], [ %7068, %7549 ]
  %7560 = phi float [ %6827, %6816 ], [ %7069, %7549 ]
  %7561 = phi float [ %6828, %6816 ], [ %7070, %7549 ]
  %7562 = phi float [ %6829, %6816 ], [ %7071, %7549 ]
  %7563 = phi float [ %6830, %6816 ], [ %7072, %7549 ]
  %7564 = phi float [ %6831, %6816 ], [ %7073, %7549 ]
  %7565 = phi float [ %6832, %6816 ], [ %7074, %7549 ]
  %7566 = phi float [ %6833, %6816 ], [ %7075, %7549 ]
  %7567 = phi float [ %6834, %6816 ], [ %7076, %7549 ]
  %7568 = phi float [ %6835, %6816 ], [ %7077, %7549 ]
  %7569 = phi float [ %6836, %6816 ], [ %7078, %7549 ]
  %7570 = phi float [ %6837, %6816 ], [ %7079, %7549 ]
  %7571 = phi float [ %6838, %6816 ], [ %7080, %7549 ]
  %7572 = phi float [ %6839, %6816 ], [ %7081, %7549 ]
  %7573 = phi float [ %6840, %6816 ], [ %7082, %7549 ]
  %7574 = phi float [ %6841, %6816 ], [ %7083, %7549 ]
  %7575 = phi float [ %6842, %6816 ], [ %7084, %7549 ]
  %7576 = phi float [ %6843, %6816 ], [ %7085, %7549 ]
  %7577 = phi float [ %6844, %6816 ], [ %7086, %7549 ]
  %7578 = add i32 %6826, 1
  %7579 = icmp ugt i32 %7578, %6813
  br i1 %7579, label %7580, label %6816

; <label>:7580                                    ; preds = %7550
  br label %7581

; <label>:7581                                    ; preds = %7580, %6766
  %7582 = phi i32 [ %6745, %6766 ], [ %7551, %7580 ]
  %7583 = phi i32 [ 0, %6766 ], [ %7552, %7580 ]
  %7584 = phi i32 [ 0, %6766 ], [ %7553, %7580 ]
  %7585 = phi i32 [ 0, %6766 ], [ %7554, %7580 ]
  %7586 = phi i32 [ 0, %6766 ], [ %7555, %7580 ]
  %7587 = phi i32 [ 0, %6766 ], [ %7556, %7580 ]
  %7588 = phi i32 [ 0, %6766 ], [ %7557, %7580 ]
  %7589 = phi i32 [ 0, %6766 ], [ %7558, %7580 ]
  %7590 = phi i32 [ 0, %6766 ], [ %7559, %7580 ]
  %7591 = phi float [ %6747, %6766 ], [ %7560, %7580 ]
  %7592 = phi float [ %6748, %6766 ], [ %7561, %7580 ]
  %7593 = phi float [ %6749, %6766 ], [ %7562, %7580 ]
  %7594 = phi float [ %6750, %6766 ], [ %7563, %7580 ]
  %7595 = phi float [ %6751, %6766 ], [ %7564, %7580 ]
  %7596 = phi float [ %6752, %6766 ], [ %7565, %7580 ]
  %7597 = phi float [ %6753, %6766 ], [ %7566, %7580 ]
  %7598 = phi float [ %6754, %6766 ], [ %7567, %7580 ]
  %7599 = phi float [ %6755, %6766 ], [ %7568, %7580 ]
  %7600 = phi float [ %6756, %6766 ], [ %7569, %7580 ]
  %7601 = phi float [ %6757, %6766 ], [ %7570, %7580 ]
  %7602 = phi float [ %6758, %6766 ], [ %7571, %7580 ]
  %7603 = phi float [ %6760, %6766 ], [ %7572, %7580 ]
  %7604 = phi float [ %6761, %6766 ], [ %7573, %7580 ]
  %7605 = phi float [ %6762, %6766 ], [ %7574, %7580 ]
  %7606 = phi float [ %6756, %6766 ], [ %7575, %7580 ]
  %7607 = phi float [ %6757, %6766 ], [ %7576, %7580 ]
  %7608 = phi float [ %6758, %6766 ], [ %7577, %7580 ]
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 1
  %7611 = bitcast float %7610 to i32
  %7612 = lshr i32 %7611, 24
  %7613 = uitofp i32 %7612 to float
  %7614 = fptoui float %7613 to i32
  %7615 = icmp eq i32 %7614, 1
  %7616 = select i1 %7615, i32 %7587, i32 %7583
  %7617 = uitofp i32 %7616 to float
  %7618 = fptoui float %7617 to i32
  %7619 = shl i32 %7618, 8
  %7620 = select i1 %7615, i32 %7588, i32 %7584
  %7621 = uitofp i32 %7620 to float
  %7622 = fptoui float %7621 to i32
  %7623 = shl i32 %7622, 16
  %7624 = and i32 %7619, 65280
  %7625 = or i32 %7624, %6746
  %7626 = select i1 %7615, i32 %7589, i32 %7585
  %7627 = uitofp i32 %7626 to float
  %7628 = fptoui float %7627 to i32
  %7629 = shl i32 %7628, 24
  %7630 = and i32 %7623, 16711680
  %7631 = or i32 %7625, %7630
  %7632 = or i32 %7631, %7629
  %7633 = select i1 %7615, i32 %7590, i32 %7586
  %7634 = uitofp i32 %7633 to float
  %7635 = fptoui float %7634 to i32
  %7636 = and i32 %7635, 255
  %7637 = and i32 %4945, -256
  %7638 = or i32 %7636, %7637
  %7639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7640 = extractvalue %dx.types.CBufRet.f32 %7639, 0
  %7641 = bitcast float %7640 to i32
  %7642 = lshr i32 %7641, 8
  %7643 = and i32 %7642, 255
  %7644 = uitofp i32 %7643 to float
  %7645 = fptoui float %7644 to i32
  %7646 = icmp eq i32 %7645, 12
  %7647 = select i1 %7646, i32 0, i32 %7582
  br label %7648

; <label>:7648                                    ; preds = %7581, %6744
  %7649 = phi i32 [ %4945, %6744 ], [ %7638, %7581 ]
  %7650 = phi i32 [ 0, %6744 ], [ %7632, %7581 ]
  %7651 = phi i32 [ %6745, %6744 ], [ %7647, %7581 ]
  %7652 = phi float [ %6747, %6744 ], [ %7591, %7581 ]
  %7653 = phi float [ %6748, %6744 ], [ %7592, %7581 ]
  %7654 = phi float [ %6749, %6744 ], [ %7593, %7581 ]
  %7655 = phi float [ %6750, %6744 ], [ %7594, %7581 ]
  %7656 = phi float [ %6751, %6744 ], [ %7595, %7581 ]
  %7657 = phi float [ %6752, %6744 ], [ %7596, %7581 ]
  %7658 = phi float [ %6753, %6744 ], [ %7597, %7581 ]
  %7659 = phi float [ %6754, %6744 ], [ %7598, %7581 ]
  %7660 = phi float [ %6755, %6744 ], [ %7599, %7581 ]
  %7661 = phi float [ %6756, %6744 ], [ %7600, %7581 ]
  %7662 = phi float [ %6757, %6744 ], [ %7601, %7581 ]
  %7663 = phi float [ %6758, %6744 ], [ %7602, %7581 ]
  %7664 = phi float [ %6760, %6744 ], [ %7603, %7581 ]
  %7665 = phi float [ %6761, %6744 ], [ %7604, %7581 ]
  %7666 = phi float [ %6762, %6744 ], [ %7605, %7581 ]
  %7667 = phi float [ %6756, %6744 ], [ %7606, %7581 ]
  %7668 = phi float [ %6757, %6744 ], [ %7607, %7581 ]
  %7669 = phi float [ %6758, %6744 ], [ %7608, %7581 ]
  %7670 = and i32 %1942, 255
  %7671 = uitofp i32 %7670 to float
  %7672 = fmul fast float %7671, 0x3F70101020000000
  %7673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7674 = extractvalue %dx.types.CBufRet.f32 %7673, 2
  %7675 = extractvalue %dx.types.CBufRet.f32 %7673, 3
  %7676 = fmul fast float %7674, %98
  %7677 = fmul fast float %7675, %99
  %7678 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %1952, i32 %1958, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7679 = extractvalue %dx.types.ResRet.f32 %7678, 0
  %7680 = fcmp fast ogt float %7679, -1.000000e+00
  %7681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7682 = extractvalue %dx.types.CBufRet.f32 %7681, 1
  %7683 = select i1 %7680, float %7682, float 1.000000e+00
  %7684 = fadd fast float %7679, 1.000000e+00
  %7685 = fmul fast float %7683, %7684
  %7686 = call float @dx.op.unary.f32(i32 6, float %7685)  ; FAbs(value)
  br i1 %115, label %7687, label %8200

; <label>:7687                                    ; preds = %7648
  %7688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %7689 = extractvalue %dx.types.CBufRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.CBufRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.CBufRet.f32 %7688, 2
  %7692 = fcmp fast oge float %7690, %87
  %7693 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7694 = extractvalue %dx.types.CBufRet.i32 %7693, 0
  %7695 = and i32 %7694, 65538
  %7696 = icmp eq i32 %7695, 65538
  %7697 = and i1 %7696, %7692
  br i1 %7697, label %7698, label %7782

; <label>:7698                                    ; preds = %7687
  %7699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7700 = extractvalue %dx.types.CBufRet.f32 %7699, 0
  %7701 = extractvalue %dx.types.CBufRet.f32 %7699, 1
  %7702 = fmul fast float %7700, %7676
  %7703 = fmul fast float %7701, %7677
  %7704 = extractvalue %dx.types.CBufRet.f32 %7699, 2
  %7705 = extractvalue %dx.types.CBufRet.f32 %7699, 3
  %7706 = fmul fast float %7702, %7704
  %7707 = fmul fast float %7703, %7705
  %7708 = call float @dx.op.unary.f32(i32 7, float %7706)  ; Saturate(value)
  %7709 = call float @dx.op.unary.f32(i32 7, float %7707)  ; Saturate(value)
  %7710 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %7708, float %7709, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7711 = extractvalue %dx.types.ResRet.f32 %7710, 0
  %7712 = extractvalue %dx.types.ResRet.f32 %7710, 1
  %7713 = extractvalue %dx.types.ResRet.f32 %7710, 2
  %7714 = extractvalue %dx.types.ResRet.f32 %7710, 3
  %7715 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %7708, float %7709, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7716 = extractvalue %dx.types.ResRet.f32 %7715, 0
  %7717 = extractvalue %dx.types.ResRet.f32 %7715, 1
  %7718 = extractvalue %dx.types.ResRet.f32 %7715, 2
  %7719 = extractvalue %dx.types.ResRet.f32 %7715, 3
  %7720 = call float @dx.op.binary.f32(i32 35, float %7712, float %7713)  ; FMax(a,b)
  %7721 = call float @dx.op.binary.f32(i32 35, float %7711, float %7720)  ; FMax(a,b)
  %7722 = call float @dx.op.binary.f32(i32 35, float %7721, float %7714)  ; FMax(a,b)
  %7723 = call float @dx.op.binary.f32(i32 36, float %7717, float %7718)  ; FMin(a,b)
  %7724 = call float @dx.op.binary.f32(i32 36, float %7716, float %7723)  ; FMin(a,b)
  %7725 = call float @dx.op.binary.f32(i32 36, float %7724, float %7719)  ; FMin(a,b)
  %7726 = fmul fast float %7722, 2.550000e+02
  %7727 = fadd fast float %7726, 0x3F70101020000000
  %7728 = fptoui float %7727 to i32
  %7729 = fmul fast float %7725, 2.550000e+02
  %7730 = fadd fast float %7729, 0x3F70101020000000
  %7731 = fptoui float %7730 to i32
  %7732 = icmp ult i32 %7728, %7731
  br i1 %7732, label %7733, label %7782

; <label>:7733                                    ; preds = %7698
  %7734 = fadd fast float %7686, -4.000000e+00
  %7735 = call float @dx.op.binary.f32(i32 35, float %7734, float 0.000000e+00)  ; FMax(a,b)
  %7736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7737 = extractvalue %dx.types.CBufRet.f32 %7736, 0
  %7738 = fadd fast float %7737, %7735
  %7739 = extractvalue %dx.types.CBufRet.f32 %7736, 2
  %7740 = fmul fast float %7738, %7739
  %7741 = call float @dx.op.unary.f32(i32 23, float %7740)  ; Log(value)
  %7742 = extractvalue %dx.types.CBufRet.f32 %7736, 3
  %7743 = fmul fast float %7742, %7741
  %7744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7745 = extractvalue %dx.types.CBufRet.f32 %7744, 2
  %7746 = fmul fast float %7743, %7745
  %7747 = call float @dx.op.unary.f32(i32 7, float %7746)  ; Saturate(value)
  %7748 = uitofp i32 %7728 to float
  %7749 = uitofp i32 %7731 to float
  %7750 = fadd fast float %7748, 5.000000e-01
  %7751 = fadd fast float %7749, 5.000000e-01
  %7752 = fmul fast float %7745, %7750
  %7753 = fmul fast float %7745, %7751
  %7754 = fadd fast float %7752, 0x3F0FFB4800000000
  %7755 = fadd fast float %7753, 0xBF0FFB4800000000
  %7756 = call float @dx.op.binary.f32(i32 35, float %7747, float %7754)  ; FMax(a,b)
  %7757 = call float @dx.op.binary.f32(i32 36, float %7756, float %7755)  ; FMin(a,b)
  %7758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7759 = extractvalue %dx.types.CBufRet.f32 %7758, 1
  %7760 = extractvalue %dx.types.CBufRet.f32 %7758, 2
  %7761 = extractvalue %dx.types.CBufRet.f32 %7758, 0
  %7762 = fmul fast float %7759, %7757
  %7763 = fadd fast float %7761, %7762
  %7764 = fadd fast float %7761, %7760
  %7765 = fsub fast float %7759, %7760
  %7766 = fadd fast float %7765, %7761
  %7767 = call float @dx.op.binary.f32(i32 35, float %7763, float %7764)  ; FMax(a,b)
  %7768 = call float @dx.op.binary.f32(i32 36, float %7767, float %7766)  ; FMin(a,b)
  %7769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %7708, float %7709, float %7768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7770 = extractvalue %dx.types.ResRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.ResRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.ResRet.f32 %7769, 2
  %7773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %7708, float %7709, float %7768, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7774 = extractvalue %dx.types.ResRet.f32 %7773, 0
  %7775 = extractvalue %dx.types.ResRet.f32 %7773, 1
  %7776 = extractvalue %dx.types.ResRet.f32 %7773, 2
  %7777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7778 = extractvalue %dx.types.CBufRet.f32 %7777, 1
  %7779 = fmul fast float %7778, %7774
  %7780 = fmul fast float %7778, %7775
  %7781 = fmul fast float %7778, %7776
  br label %7782

; <label>:7782                                    ; preds = %7733, %7698, %7687
  %7783 = phi float [ 0.000000e+00, %7687 ], [ %7779, %7733 ], [ 0.000000e+00, %7698 ]
  %7784 = phi float [ 0.000000e+00, %7687 ], [ %7780, %7733 ], [ 0.000000e+00, %7698 ]
  %7785 = phi float [ 0.000000e+00, %7687 ], [ %7781, %7733 ], [ 0.000000e+00, %7698 ]
  %7786 = phi float [ 1.000000e+00, %7687 ], [ %7770, %7733 ], [ 1.000000e+00, %7698 ]
  %7787 = phi float [ 1.000000e+00, %7687 ], [ %7771, %7733 ], [ 1.000000e+00, %7698 ]
  %7788 = phi float [ 1.000000e+00, %7687 ], [ %7772, %7733 ], [ 1.000000e+00, %7698 ]
  %7789 = fcmp fast olt float %7672, 1.000000e+00
  %7790 = fcmp fast olt float %7689, %7686
  %7791 = or i1 %7789, %7790
  br i1 %7791, label %7792, label %7956

; <label>:7792                                    ; preds = %7782
  %7793 = lshr i32 %2007, 16
  %7794 = uitofp i32 %7793 to float
  %7795 = fmul fast float %7794, 0x3EF0001000000000
  %7796 = and i32 %2000, 65535
  %7797 = uitofp i32 %7796 to float
  %7798 = fmul fast float %7797, 0x3EF0001000000000
  %7799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %7800 = extractvalue %dx.types.CBufRet.f32 %7799, 3
  %7801 = fadd fast float %7800, 3.000000e+00
  %7802 = and i32 %1306, 16383
  %7803 = lshr i32 %1306, 16
  %7804 = and i32 %7803, 255
  %7805 = mul nuw nsw i32 %7802, 148
  %7806 = add nuw nsw i32 %7805, 60
  %7807 = add nuw nsw i32 %7805, 116
  %7808 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %7809 = extractvalue %dx.types.CBufRet.i32 %7808, 0
  %7810 = call i32 @dx.op.binary.i32(i32 40, i32 %7802, i32 %7809)  ; UMin(a,b)
  %7811 = mul i32 %7810, 36
  %7812 = add i32 %7811, 4
  %7813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %7814 = extractvalue %dx.types.CBufRet.f32 %7813, 0
  %7815 = fmul fast float %7798, %7814
  %7816 = fmul fast float %7795, %7814
  %7817 = extractvalue %dx.types.CBufRet.f32 %7813, 1
  %7818 = fadd fast float %7815, %7817
  %7819 = fadd fast float %7816, %7817
  %7820 = icmp eq i32 %7804, 0
  br i1 %7820, label %7881, label %7821

; <label>:7821                                    ; preds = %7792
  br label %7822

; <label>:7822                                    ; preds = %7822, %7821
  %7823 = phi float [ %7866, %7822 ], [ 0.000000e+00, %7821 ]
  %7824 = phi float [ %7876, %7822 ], [ 0.000000e+00, %7821 ]
  %7825 = phi float [ %7877, %7822 ], [ 0.000000e+00, %7821 ]
  %7826 = phi float [ %7878, %7822 ], [ 0.000000e+00, %7821 ]
  %7827 = phi float [ %7870, %7822 ], [ 0.000000e+00, %7821 ]
  %7828 = phi float [ %7871, %7822 ], [ 0.000000e+00, %7821 ]
  %7829 = phi float [ %7872, %7822 ], [ 0.000000e+00, %7821 ]
  %7830 = phi i32 [ %7835, %7822 ], [ %7804, %7821 ]
  %7831 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7830)  ; FirstbitLo(value)
  %7832 = and i32 %7831, 31
  %7833 = shl i32 1, %7832
  %7834 = xor i32 %7833, -1
  %7835 = and i32 %7830, %7834
  %7836 = shl i32 %7831, 2
  %7837 = add i32 %7812, %7836
  %7838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %7837, i32 undef)  ; BufferLoad(srv,index,wot)
  %7839 = extractvalue %dx.types.ResRet.i32 %7838, 0
  %7840 = and i32 %7839, 32767
  %7841 = add i32 %7806, %7836
  %7842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %7841, i32 undef)  ; BufferLoad(srv,index,wot)
  %7843 = extractvalue %dx.types.ResRet.f32 %7842, 0
  %7844 = add i32 %7807, %7836
  %7845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %7844, i32 undef)  ; BufferLoad(srv,index,wot)
  %7846 = extractvalue %dx.types.ResRet.i32 %7845, 0
  %7847 = add i32 %7846, 0
  %7848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %7847, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7849 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7848, %dx.types.Handle %59, float %7818, float %7819, float %7843, float undef, i32 0, i32 0, i32 undef, float %7801)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = mul nuw nsw i32 %7840, 928
  %7852 = add nuw nsw i32 %7851, 44
  %7853 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7852, i32 undef)  ; BufferLoad(srv,index,wot)
  %7854 = extractvalue %dx.types.ResRet.f32 %7853, 0
  %7855 = add nuw nsw i32 %7851, 48
  %7856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7855, i32 undef)  ; BufferLoad(srv,index,wot)
  %7857 = extractvalue %dx.types.ResRet.f32 %7856, 0
  %7858 = extractvalue %dx.types.ResRet.f32 %7856, 1
  %7859 = extractvalue %dx.types.ResRet.f32 %7856, 2
  %7860 = add nuw nsw i32 %7851, 60
  %7861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7860, i32 undef)  ; BufferLoad(srv,index,wot)
  %7862 = extractvalue %dx.types.ResRet.f32 %7861, 0
  %7863 = extractvalue %dx.types.ResRet.f32 %7861, 1
  %7864 = extractvalue %dx.types.ResRet.f32 %7861, 2
  %7865 = fmul fast float %7854, %7850
  %7866 = fadd fast float %7865, %7823
  %7867 = fmul fast float %7857, %7850
  %7868 = fmul fast float %7858, %7850
  %7869 = fmul fast float %7859, %7850
  %7870 = fadd fast float %7867, %7827
  %7871 = fadd fast float %7868, %7828
  %7872 = fadd fast float %7869, %7829
  %7873 = fmul fast float %7862, %7850
  %7874 = fmul fast float %7863, %7850
  %7875 = fmul fast float %7864, %7850
  %7876 = fadd fast float %7873, %7824
  %7877 = fadd fast float %7874, %7825
  %7878 = fadd fast float %7875, %7826
  %7879 = icmp eq i32 %7835, 0
  br i1 %7879, label %7880, label %7822

; <label>:7880                                    ; preds = %7822
  br label %7881

; <label>:7881                                    ; preds = %7880, %7792
  %7882 = phi float [ 0.000000e+00, %7792 ], [ %7866, %7880 ]
  %7883 = phi float [ 0.000000e+00, %7792 ], [ %7876, %7880 ]
  %7884 = phi float [ 0.000000e+00, %7792 ], [ %7877, %7880 ]
  %7885 = phi float [ 0.000000e+00, %7792 ], [ %7878, %7880 ]
  %7886 = phi float [ 0.000000e+00, %7792 ], [ %7870, %7880 ]
  %7887 = phi float [ 0.000000e+00, %7792 ], [ %7871, %7880 ]
  %7888 = phi float [ 0.000000e+00, %7792 ], [ %7872, %7880 ]
  %7889 = fmul fast float %7886, 0x3F847AE140000000
  %7890 = fmul fast float %7887, 0x3F847AE140000000
  %7891 = fmul fast float %7888, 0x3F847AE140000000
  %7892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7893 = extractvalue %dx.types.CBufRet.f32 %7892, 0
  %7894 = extractvalue %dx.types.CBufRet.f32 %7892, 1
  %7895 = extractvalue %dx.types.CBufRet.f32 %7892, 2
  %7896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7897 = extractvalue %dx.types.CBufRet.f32 %7896, 0
  %7898 = extractvalue %dx.types.CBufRet.f32 %7896, 1
  %7899 = call float @dx.op.dot3.f32(i32 55, float %7893, float %7894, float %7895, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7900 = select i1 %2046, float %7897, float %7893
  %7901 = select i1 %2046, float %7899, float %7894
  %7902 = select i1 %2046, float %7898, float %7895
  %7903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7904 = extractvalue %dx.types.CBufRet.f32 %7903, 0
  %7905 = extractvalue %dx.types.CBufRet.f32 %7903, 1
  %7906 = extractvalue %dx.types.CBufRet.f32 %7903, 2
  %7907 = fadd fast float %7886, %7883
  %7908 = fmul fast float %7907, 0x3F847AE140000000
  %7909 = fadd fast float %7887, %7884
  %7910 = fmul fast float %7909, 0x3F847AE140000000
  %7911 = fadd fast float %7888, %7885
  %7912 = fmul fast float %7911, 0x3F847AE140000000
  %7913 = call float @dx.op.dot3.f32(i32 55, float %7904, float %7905, float %7906, float %1890, float %1891, float %1892)  ; Dot3(ax,ay,az,bx,by,bz)
  %7914 = fcmp fast ogt float %7882, 0.000000e+00
  %7915 = select i1 %7914, float 1.000000e+00, float -1.000000e+00
  %7916 = fmul fast float %7915, 5.000000e-01
  %7917 = fmul fast float %7916, %7913
  %7918 = fmul fast float %7915, %7882
  %7919 = fadd fast float %7917, 4.921875e-01
  %7920 = fadd fast float %7918, -3.125000e-02
  %7921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %61, float %7919, float 0x3FB25F3060000000, float %7920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7922 = extractvalue %dx.types.ResRet.f32 %7921, 0
  %7923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %7924 = extractvalue %dx.types.CBufRet.f32 %7923, 0
  %7925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %7926 = extractvalue %dx.types.CBufRet.f32 %7925, 0
  %7927 = fmul fast float %7926, %7924
  %7928 = extractvalue %dx.types.CBufRet.f32 %7925, 1
  %7929 = fadd fast float %7927, %7928
  %7930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %7931 = extractvalue %dx.types.CBufRet.f32 %7930, 0
  %7932 = fmul fast float %7931, %6759
  %7933 = extractvalue %dx.types.CBufRet.f32 %7930, 1
  %7934 = fadd fast float %7932, %7933
  %7935 = call float @dx.op.unary.f32(i32 7, float %7934)  ; Saturate(value)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7923, 3
  %7937 = extractvalue %dx.types.CBufRet.f32 %7925, 2
  %7938 = fmul fast float %7937, %7936
  %7939 = extractvalue %dx.types.CBufRet.f32 %7925, 3
  %7940 = fadd fast float %7938, %7939
  %7941 = fmul fast float %7922, 0x400921FB60000000
  %7942 = fmul fast float %7941, %7929
  %7943 = fmul fast float %7942, %7935
  %7944 = fmul fast float %7900, %7889
  %7945 = fmul fast float %7944, %7943
  %7946 = fmul fast float %7901, %7890
  %7947 = fmul fast float %7946, %7943
  %7948 = fmul fast float %7902, %7891
  %7949 = fmul fast float %7948, %7943
  %7950 = fmul fast float %7889, %3118
  %7951 = fmul fast float %7950, %7940
  %7952 = fmul fast float %7890, %3119
  %7953 = fmul fast float %7952, %7940
  %7954 = fmul fast float %7891, %3120
  %7955 = fmul fast float %7954, %7940
  br label %7956

; <label>:7956                                    ; preds = %7881, %7782
  %7957 = phi float [ %7908, %7881 ], [ 0.000000e+00, %7782 ]
  %7958 = phi float [ %7910, %7881 ], [ 0.000000e+00, %7782 ]
  %7959 = phi float [ %7912, %7881 ], [ 0.000000e+00, %7782 ]
  %7960 = phi float [ %7945, %7881 ], [ 0.000000e+00, %7782 ]
  %7961 = phi float [ %7947, %7881 ], [ 0.000000e+00, %7782 ]
  %7962 = phi float [ %7949, %7881 ], [ 0.000000e+00, %7782 ]
  %7963 = phi float [ %7951, %7881 ], [ 0.000000e+00, %7782 ]
  %7964 = phi float [ %7953, %7881 ], [ 0.000000e+00, %7782 ]
  %7965 = phi float [ %7955, %7881 ], [ 0.000000e+00, %7782 ]
  %7966 = call float @dx.op.binary.f32(i32 35, float %7957, float 0x3F10000000000000)  ; FMax(a,b)
  %7967 = call float @dx.op.binary.f32(i32 35, float %7958, float 0x3F10000000000000)  ; FMax(a,b)
  %7968 = call float @dx.op.binary.f32(i32 35, float %7959, float 0x3F10000000000000)  ; FMax(a,b)
  %7969 = fdiv fast float 1.000000e+00, %7966
  %7970 = fdiv fast float 1.000000e+00, %7967
  %7971 = fdiv fast float 1.000000e+00, %7968
  %7972 = fmul fast float %7957, 0xBFF7154760000000
  %7973 = fmul fast float %7958, 0xBFF7154760000000
  %7974 = fmul fast float %7959, 0xBFF7154760000000
  %7975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %7976 = extractvalue %dx.types.CBufRet.f32 %7975, 3
  %7977 = call float @dx.op.dot3.f32(i32 55, float %7969, float %7970, float %7971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7978 = fmul fast float %7976, %7977
  %7979 = call float @dx.op.binary.f32(i32 35, float %7690, float %87)  ; FMax(a,b)
  %7980 = fsub fast float %7686, %7979
  %7981 = call float @dx.op.binary.f32(i32 35, float %7980, float 0.000000e+00)  ; FMax(a,b)
  %7982 = fsub fast float %7686, %87
  %7983 = call float @dx.op.binary.f32(i32 35, float %7982, float 0.000000e+00)  ; FMax(a,b)
  %7984 = call float @dx.op.binary.f32(i32 36, float %7983, float %7978)  ; FMin(a,b)
  %7985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %7986 = extractvalue %dx.types.CBufRet.f32 %7985, 0
  %7987 = fmul fast float %7986, %7984
  %7988 = fmul fast float %7987, %7972
  %7989 = fmul fast float %7987, %7973
  %7990 = fmul fast float %7987, %7974
  %7991 = call float @dx.op.unary.f32(i32 21, float %7988)  ; Exp(value)
  %7992 = call float @dx.op.unary.f32(i32 21, float %7989)  ; Exp(value)
  %7993 = call float @dx.op.unary.f32(i32 21, float %7990)  ; Exp(value)
  %7994 = fmul fast float %7991, %7960
  %7995 = fmul fast float %7992, %7961
  %7996 = fmul fast float %7993, %7962
  %7997 = extractvalue %dx.types.CBufRet.f32 %7985, 1
  %7998 = fmul fast float %7997, %7984
  %7999 = fmul fast float %7998, %7972
  %8000 = fmul fast float %7998, %7973
  %8001 = fmul fast float %7998, %7974
  %8002 = call float @dx.op.unary.f32(i32 21, float %7999)  ; Exp(value)
  %8003 = call float @dx.op.unary.f32(i32 21, float %8000)  ; Exp(value)
  %8004 = call float @dx.op.unary.f32(i32 21, float %8001)  ; Exp(value)
  %8005 = fmul fast float %8002, %7963
  %8006 = fmul fast float %8003, %7964
  %8007 = fmul fast float %8004, %7965
  %8008 = fadd fast float %8005, %7994
  %8009 = fadd fast float %8006, %7995
  %8010 = fadd fast float %8007, %7996
  %8011 = fmul fast float %7981, %7972
  %8012 = fmul fast float %7981, %7973
  %8013 = fmul fast float %7981, %7974
  %8014 = call float @dx.op.unary.f32(i32 21, float %8011)  ; Exp(value)
  %8015 = call float @dx.op.unary.f32(i32 21, float %8012)  ; Exp(value)
  %8016 = call float @dx.op.unary.f32(i32 21, float %8013)  ; Exp(value)
  %8017 = call float @dx.op.unary.f32(i32 7, float %8014)  ; Saturate(value)
  %8018 = call float @dx.op.unary.f32(i32 7, float %8015)  ; Saturate(value)
  %8019 = call float @dx.op.unary.f32(i32 7, float %8016)  ; Saturate(value)
  %8020 = fmul fast float %8017, %8008
  %8021 = fmul fast float %8018, %8009
  %8022 = fmul fast float %8019, %8010
  %8023 = fsub fast float %8008, %8020
  %8024 = fsub fast float %8009, %8021
  %8025 = fsub fast float %8010, %8022
  %8026 = fmul fast float %7969, %7786
  %8027 = fmul fast float %8026, %8023
  %8028 = fmul fast float %7970, %7787
  %8029 = fmul fast float %8028, %8024
  %8030 = fmul fast float %7971, %7788
  %8031 = fmul fast float %8030, %8025
  %8032 = fadd fast float %8027, %7783
  %8033 = fadd fast float %8029, %7784
  %8034 = fadd fast float %8031, %7785
  %8035 = fmul fast float %8017, %7786
  %8036 = fmul fast float %8018, %7787
  %8037 = fmul fast float %8019, %7788
  %8038 = fmul fast float %7983, %7972
  %8039 = fmul fast float %7983, %7973
  %8040 = fmul fast float %7983, %7974
  %8041 = call float @dx.op.unary.f32(i32 21, float %8038)  ; Exp(value)
  %8042 = call float @dx.op.unary.f32(i32 21, float %8039)  ; Exp(value)
  %8043 = call float @dx.op.unary.f32(i32 21, float %8040)  ; Exp(value)
  %8044 = call float @dx.op.unary.f32(i32 7, float %8041)  ; Saturate(value)
  %8045 = call float @dx.op.unary.f32(i32 7, float %8042)  ; Saturate(value)
  %8046 = call float @dx.op.unary.f32(i32 7, float %8043)  ; Saturate(value)
  %8047 = fmul fast float %8044, %8008
  %8048 = fmul fast float %8045, %8009
  %8049 = fmul fast float %8046, %8010
  %8050 = fsub fast float %8008, %8047
  %8051 = fsub fast float %8009, %8048
  %8052 = fsub fast float %8010, %8049
  %8053 = fmul fast float %8050, %7969
  %8054 = fmul fast float %8051, %7970
  %8055 = fmul fast float %8052, %7971
  %8056 = fsub fast float %87, %7689
  %8057 = fmul fast float %7691, %8056
  %8058 = call float @dx.op.unary.f32(i32 7, float %8057)  ; Saturate(value)
  %8059 = fmul fast float %8058, %8058
  %8060 = fmul fast float %8058, 2.000000e+00
  %8061 = fsub fast float 3.000000e+00, %8060
  %8062 = fmul fast float %8059, %8061
  %8063 = fsub fast float %8053, %8032
  %8064 = fsub fast float %8054, %8033
  %8065 = fsub fast float %8055, %8034
  %8066 = fmul fast float %8062, %8063
  %8067 = fmul fast float %8062, %8064
  %8068 = fmul fast float %8062, %8065
  %8069 = fadd fast float %8066, %8032
  %8070 = fadd fast float %8067, %8033
  %8071 = fadd fast float %8068, %8034
  %8072 = fsub fast float %8044, %8035
  %8073 = fsub fast float %8045, %8036
  %8074 = fsub fast float %8046, %8037
  %8075 = fmul fast float %8062, %8072
  %8076 = fmul fast float %8062, %8073
  %8077 = fmul fast float %8062, %8074
  %8078 = fadd fast float %8075, %8035
  %8079 = fadd fast float %8076, %8036
  %8080 = fadd fast float %8077, %8037
  br i1 %7789, label %8081, label %8149

; <label>:8081                                    ; preds = %7956
  %8082 = extractvalue %dx.types.CBufRet.f32 %7985, 3
  %8083 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8082)  ; Dot3(ax,ay,az,bx,by,bz)
  %8084 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2048, float %2049, float %2050)  ; Dot3(ax,ay,az,bx,by,bz)
  %8085 = fdiv fast float 1.000000e+00, %8084
  %8086 = fmul fast float %8085, %8083
  %8087 = fcmp ogt float %1892, -0.000000e+00
  %8088 = select i1 %8087, float %8082, float %8086
  %8089 = call float @dx.op.binary.f32(i32 36, float %8088, float %7978)  ; FMin(a,b)
  %8090 = fmul fast float %7986, %8089
  %8091 = fmul fast float %8090, %7972
  %8092 = fmul fast float %8090, %7973
  %8093 = fmul fast float %8090, %7974
  %8094 = call float @dx.op.unary.f32(i32 21, float %8091)  ; Exp(value)
  %8095 = call float @dx.op.unary.f32(i32 21, float %8092)  ; Exp(value)
  %8096 = call float @dx.op.unary.f32(i32 21, float %8093)  ; Exp(value)
  %8097 = fmul fast float %8094, %7960
  %8098 = fmul fast float %8095, %7961
  %8099 = fmul fast float %8096, %7962
  %8100 = fmul fast float %7997, %8089
  %8101 = fmul fast float %8100, %7972
  %8102 = fmul fast float %8100, %7973
  %8103 = fmul fast float %8100, %7974
  %8104 = call float @dx.op.unary.f32(i32 21, float %8101)  ; Exp(value)
  %8105 = call float @dx.op.unary.f32(i32 21, float %8102)  ; Exp(value)
  %8106 = call float @dx.op.unary.f32(i32 21, float %8103)  ; Exp(value)
  %8107 = fmul fast float %8104, %7963
  %8108 = fmul fast float %8105, %7964
  %8109 = fmul fast float %8106, %7965
  %8110 = fadd fast float %8107, %8097
  %8111 = fadd fast float %8108, %8098
  %8112 = fadd fast float %8109, %8099
  %8113 = fmul fast float %8088, %7972
  %8114 = fmul fast float %8088, %7973
  %8115 = fmul fast float %8088, %7974
  %8116 = call float @dx.op.unary.f32(i32 21, float %8113)  ; Exp(value)
  %8117 = call float @dx.op.unary.f32(i32 21, float %8114)  ; Exp(value)
  %8118 = call float @dx.op.unary.f32(i32 21, float %8115)  ; Exp(value)
  %8119 = call float @dx.op.unary.f32(i32 7, float %8116)  ; Saturate(value)
  %8120 = call float @dx.op.unary.f32(i32 7, float %8117)  ; Saturate(value)
  %8121 = call float @dx.op.unary.f32(i32 7, float %8118)  ; Saturate(value)
  %8122 = fmul fast float %8119, %8110
  %8123 = fmul fast float %8120, %8111
  %8124 = fmul fast float %8121, %8112
  %8125 = fsub fast float %8110, %8122
  %8126 = fsub fast float %8111, %8123
  %8127 = fsub fast float %8112, %8124
  %8128 = fmul fast float %8125, %7969
  %8129 = fmul fast float %8126, %7970
  %8130 = fmul fast float %8127, %7971
  %8131 = fsub fast float %8069, %8128
  %8132 = fsub fast float %8070, %8129
  %8133 = fsub fast float %8071, %8130
  %8134 = fmul fast float %8131, %7672
  %8135 = fmul fast float %8132, %7672
  %8136 = fmul fast float %8133, %7672
  %8137 = fadd fast float %8134, %8128
  %8138 = fadd fast float %8135, %8129
  %8139 = fadd fast float %8136, %8130
  %8140 = fsub fast float %8078, %8119
  %8141 = fsub fast float %8079, %8120
  %8142 = fsub fast float %8080, %8121
  %8143 = fmul fast float %8140, %7672
  %8144 = fmul fast float %8141, %7672
  %8145 = fmul fast float %8142, %7672
  %8146 = fadd fast float %8143, %8119
  %8147 = fadd fast float %8144, %8120
  %8148 = fadd fast float %8145, %8121
  br label %8149

; <label>:8149                                    ; preds = %8081, %7956
  %8150 = phi float [ %8137, %8081 ], [ %8069, %7956 ]
  %8151 = phi float [ %8138, %8081 ], [ %8070, %7956 ]
  %8152 = phi float [ %8139, %8081 ], [ %8071, %7956 ]
  %8153 = phi float [ %8146, %8081 ], [ %8078, %7956 ]
  %8154 = phi float [ %8147, %8081 ], [ %8079, %7956 ]
  %8155 = phi float [ %8148, %8081 ], [ %8080, %7956 ]
  %8156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8157 = extractvalue %dx.types.CBufRet.i32 %8156, 3
  %8158 = and i32 %8157, 3
  %8159 = icmp ne i32 %8158, 0
  %8160 = and i32 %8157, 4
  %8161 = icmp ne i32 %8160, 0
  %8162 = and i1 %8159, %8161
  br i1 %8162, label %8163, label %8170

; <label>:8163                                    ; preds = %8149
  %8164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %7676, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8165 = extractvalue %dx.types.ResRet.f32 %8164, 0
  %8166 = fsub fast float 1.000000e+00, %8165
  %8167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8168 = extractvalue %dx.types.CBufRet.f32 %8167, 0
  %8169 = fcmp fast olt float %8166, %8168
  br label %8173

; <label>:8170                                    ; preds = %8149
  %8171 = icmp eq i32 %8160, 0
  %8172 = and i1 %8159, %8171
  br label %8173

; <label>:8173                                    ; preds = %8170, %8163
  %8174 = phi i1 [ %8169, %8163 ], [ %8172, %8170 ]
  %8175 = xor i1 %2046, %8174
  %8176 = select i1 %8175, float 0.000000e+00, float %7672
  %8177 = fcmp fast ogt float %8176, 0.000000e+00
  %8178 = select i1 %8177, float %7676, float 0.000000e+00
  %8179 = select i1 %8177, float %7677, float 0.000000e+00
  %8180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %8178, float %8179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8181 = extractvalue %dx.types.ResRet.f32 %8180, 0
  %8182 = extractvalue %dx.types.ResRet.f32 %8180, 1
  %8183 = extractvalue %dx.types.ResRet.f32 %8180, 2
  %8184 = fmul fast float %8182, %8176
  %8185 = fmul fast float %8183, %8176
  %8186 = select i1 %2046, float 0.000000e+00, float %8184
  %8187 = select i1 %2046, float 0.000000e+00, float %8185
  %8188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8189 = extractvalue %dx.types.CBufRet.f32 %8188, 1
  %8190 = fmul fast float %8176, %8153
  %8191 = fmul fast float %8190, %8181
  %8192 = fmul fast float %8191, %8189
  %8193 = fmul fast float %8189, %8154
  %8194 = fmul fast float %8193, %8186
  %8195 = fmul fast float %8189, %8155
  %8196 = fmul fast float %8195, %8187
  %8197 = fadd fast float %8192, %8150
  %8198 = fadd fast float %8194, %8151
  %8199 = fadd fast float %8196, %8152
  br label %8239

; <label>:8200                                    ; preds = %7648
  %8201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8202 = extractvalue %dx.types.CBufRet.i32 %8201, 3
  %8203 = and i32 %8202, 3
  %8204 = icmp ne i32 %8203, 0
  %8205 = and i32 %8202, 4
  %8206 = icmp ne i32 %8205, 0
  %8207 = and i1 %8204, %8206
  br i1 %8207, label %8208, label %8215

; <label>:8208                                    ; preds = %8200
  %8209 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %61, float %7676, float %7677, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8210 = extractvalue %dx.types.ResRet.f32 %8209, 0
  %8211 = fsub fast float 1.000000e+00, %8210
  %8212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8213 = extractvalue %dx.types.CBufRet.f32 %8212, 0
  %8214 = fcmp fast olt float %8211, %8213
  br label %8218

; <label>:8215                                    ; preds = %8200
  %8216 = icmp eq i32 %8205, 0
  %8217 = and i1 %8204, %8216
  br label %8218

; <label>:8218                                    ; preds = %8215, %8208
  %8219 = phi i1 [ %8214, %8208 ], [ %8217, %8215 ]
  %8220 = xor i1 %2046, %8219
  %8221 = select i1 %8220, float 0.000000e+00, float %7672
  %8222 = fcmp fast ogt float %8221, 0.000000e+00
  %8223 = select i1 %8222, float %7676, float 0.000000e+00
  %8224 = select i1 %8222, float %7677, float 0.000000e+00
  %8225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %61, float %8223, float %8224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8226 = extractvalue %dx.types.ResRet.f32 %8225, 0
  %8227 = extractvalue %dx.types.ResRet.f32 %8225, 1
  %8228 = extractvalue %dx.types.ResRet.f32 %8225, 2
  %8229 = fmul fast float %8226, %8221
  %8230 = fmul fast float %8227, %8221
  %8231 = fmul fast float %8228, %8221
  %8232 = select i1 %2046, float 0.000000e+00, float %8230
  %8233 = select i1 %2046, float 0.000000e+00, float %8231
  %8234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8235 = extractvalue %dx.types.CBufRet.f32 %8234, 1
  %8236 = fmul fast float %8229, %8235
  %8237 = fmul fast float %8232, %8235
  %8238 = fmul fast float %8233, %8235
  br label %8239

; <label>:8239                                    ; preds = %8218, %8173
  %8240 = phi float [ %8236, %8218 ], [ %8197, %8173 ]
  %8241 = phi float [ %8237, %8218 ], [ %8198, %8173 ]
  %8242 = phi float [ %8238, %8218 ], [ %8199, %8173 ]
  %8243 = fmul fast float %4950, %8240
  %8244 = fmul fast float %4950, %8241
  %8245 = fmul fast float %4950, %8242
  %8246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8247 = extractvalue %dx.types.CBufRet.f32 %8246, 0
  %8248 = bitcast float %8247 to i32
  %8249 = and i32 %8248, 255
  %8250 = uitofp i32 %8249 to float
  %8251 = fptoui float %8250 to i32
  %8252 = icmp eq i32 %8251, 13
  br i1 %8252, label %8253, label %8273

; <label>:8253                                    ; preds = %8239
  %8254 = fadd fast float %1350, 2.000000e+00
  %8255 = fadd fast float %1352, 1.000000e+00
  %8256 = fsub fast float 1.000000e+00, %1353
  %8257 = fmul fast float %8254, 5.000000e-01
  %8258 = fmul fast float %8255, 5.000000e-01
  %8259 = fmul fast float %8256, 5.000000e-01
  %8260 = call float @dx.op.unary.f32(i32 7, float %8257)  ; Saturate(value)
  %8261 = call float @dx.op.unary.f32(i32 7, float %8258)  ; Saturate(value)
  %8262 = call float @dx.op.unary.f32(i32 7, float %8259)  ; Saturate(value)
  %8263 = fmul fast float %8260, 1.023000e+03
  %8264 = fmul fast float %8261, 1.023000e+03
  %8265 = fmul fast float %8262, 1.023000e+03
  %8266 = fptoui float %8263 to i32
  %8267 = fptoui float %8264 to i32
  %8268 = fptoui float %8265 to i32
  %8269 = shl i32 %8267, 10
  %8270 = or i32 %8269, %8266
  %8271 = shl i32 %8268, 20
  %8272 = or i32 %8270, %8271
  br label %8273

; <label>:8273                                    ; preds = %8253, %8239
  %8274 = phi i32 [ %8272, %8253 ], [ %7651, %8239 ]
  %8275 = icmp eq i32 %8251, 14
  br i1 %8275, label %8276, label %8296

; <label>:8276                                    ; preds = %8273
  %8277 = fadd fast float %1347, 1.000000e+00
  %8278 = fadd fast float %1357, 1.000000e+00
  %8279 = fsub fast float 1.000000e+00, %118
  %8280 = fmul fast float %8277, 5.000000e-01
  %8281 = fmul fast float %8278, 5.000000e-01
  %8282 = fmul fast float %8279, 5.000000e-01
  %8283 = call float @dx.op.unary.f32(i32 7, float %8280)  ; Saturate(value)
  %8284 = call float @dx.op.unary.f32(i32 7, float %8281)  ; Saturate(value)
  %8285 = call float @dx.op.unary.f32(i32 7, float %8282)  ; Saturate(value)
  %8286 = fmul fast float %8283, 1.023000e+03
  %8287 = fmul fast float %8284, 1.023000e+03
  %8288 = fmul fast float %8285, 1.023000e+03
  %8289 = fptoui float %8286 to i32
  %8290 = fptoui float %8287 to i32
  %8291 = fptoui float %8288 to i32
  %8292 = shl i32 %8290, 10
  %8293 = or i32 %8292, %8289
  %8294 = shl i32 %8291, 20
  %8295 = or i32 %8293, %8294
  br label %8296

; <label>:8296                                    ; preds = %8276, %8273
  %8297 = phi i32 [ %8295, %8276 ], [ %8274, %8273 ]
  %8298 = icmp eq i32 %8251, 15
  br i1 %8298, label %8299, label %8319

; <label>:8299                                    ; preds = %8296
  %8300 = fadd fast float %117, 1.000000e+00
  %8301 = fadd fast float %118, 1.000000e+00
  %8302 = fadd fast float %119, 1.000000e+00
  %8303 = fmul fast float %8300, 5.000000e-01
  %8304 = fmul fast float %8301, 5.000000e-01
  %8305 = fmul fast float %8302, 5.000000e-01
  %8306 = call float @dx.op.unary.f32(i32 7, float %8303)  ; Saturate(value)
  %8307 = call float @dx.op.unary.f32(i32 7, float %8304)  ; Saturate(value)
  %8308 = call float @dx.op.unary.f32(i32 7, float %8305)  ; Saturate(value)
  %8309 = fmul fast float %8306, 1.023000e+03
  %8310 = fmul fast float %8307, 1.023000e+03
  %8311 = fmul fast float %8308, 1.023000e+03
  %8312 = fptoui float %8309 to i32
  %8313 = fptoui float %8310 to i32
  %8314 = fptoui float %8311 to i32
  %8315 = shl i32 %8313, 10
  %8316 = or i32 %8315, %8312
  %8317 = shl i32 %8314, 20
  %8318 = or i32 %8316, %8317
  br label %8319

; <label>:8319                                    ; preds = %8299, %8296
  %8320 = phi i32 [ %8318, %8299 ], [ %8297, %8296 ]
  %8321 = fsub fast float 1.000000e+00, %2053
  %8322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8323 = extractvalue %dx.types.CBufRet.f32 %8322, 0
  %8324 = fmul fast float %8323, %8321
  %8325 = fmul fast float %1864, 2.000000e+00
  %8326 = fmul fast float %8325, %1901
  %8327 = fsub fast float %1892, %8326
  %8328 = call float @dx.op.unary.f32(i32 7, float %8327)  ; Saturate(value)
  %8329 = fsub fast float 1.000000e+00, %8328
  %8330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8331 = extractvalue %dx.types.CBufRet.f32 %8330, 3
  %8332 = fmul fast float %8331, %8329
  %8333 = fsub fast float 1.000000e+00, %2020
  %8334 = call float @dx.op.unary.f32(i32 7, float %8333)  ; Saturate(value)
  %8335 = fadd fast float %7669, %2022
  %8336 = fmul fast float %8335, %2020
  %8337 = fmul fast float %8332, %8334
  %8338 = icmp eq i32 %8251, 39
  %8339 = icmp eq i32 %8251, 40
  %8340 = select i1 %8339, float %2020, float 0.000000e+00
  %8341 = select i1 %8338, float %8335, float %8340
  %8342 = fmul fast float %7667, %1874
  %8343 = fmul fast float %7668, %1875
  %8344 = fmul fast float %7669, %1876
  %8345 = fadd fast float %8342, %7664
  %8346 = fadd fast float %8345, %8243
  %8347 = fadd fast float %8343, %7665
  %8348 = fadd fast float %8347, %8244
  %8349 = fadd fast float %8344, %7666
  %8350 = fadd fast float %8349, %8245
  br i1 %115, label %8351, label %9153

; <label>:8351                                    ; preds = %8319
  %8352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8353 = extractvalue %dx.types.CBufRet.f32 %8352, 0
  %8354 = extractvalue %dx.types.CBufRet.f32 %8352, 1
  %8355 = extractvalue %dx.types.CBufRet.f32 %8352, 2
  %8356 = extractvalue %dx.types.CBufRet.f32 %8352, 3
  %8357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8358 = extractvalue %dx.types.CBufRet.f32 %8357, 0
  %8359 = extractvalue %dx.types.CBufRet.f32 %8357, 1
  %8360 = extractvalue %dx.types.CBufRet.f32 %8357, 2
  %8361 = extractvalue %dx.types.CBufRet.f32 %8357, 3
  %8362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8363 = extractvalue %dx.types.CBufRet.f32 %8362, 0
  %8364 = extractvalue %dx.types.CBufRet.f32 %8362, 1
  %8365 = extractvalue %dx.types.CBufRet.f32 %8362, 2
  %8366 = extractvalue %dx.types.CBufRet.f32 %8362, 3
  %8367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8368 = extractvalue %dx.types.CBufRet.f32 %8367, 0
  %8369 = extractvalue %dx.types.CBufRet.f32 %8367, 1
  %8370 = extractvalue %dx.types.CBufRet.f32 %8367, 2
  %8371 = extractvalue %dx.types.CBufRet.f32 %8367, 3
  %8372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8373 = extractvalue %dx.types.CBufRet.f32 %8372, 3
  %8374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8375 = extractvalue %dx.types.CBufRet.f32 %8374, 3
  %8376 = extractvalue %dx.types.CBufRet.f32 %8374, 0
  %8377 = extractvalue %dx.types.CBufRet.f32 %8374, 1
  %8378 = extractvalue %dx.types.CBufRet.f32 %8374, 2
  %8379 = fcmp fast olt float %8378, -5.000000e-01
  %8380 = fmul fast float %1889, %1888
  %8381 = fadd fast float %8380, %8356
  %8382 = call float @dx.op.dot3.f32(i32 55, float %1890, float %1891, float %1892, float %8353, float %8354, float %8355)  ; Dot3(ax,ay,az,bx,by,bz)
  %8383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8384 = extractvalue %dx.types.CBufRet.i32 %8383, 1
  %8385 = and i32 %8384, 1
  %8386 = icmp ne i32 %8385, 0
  %8387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8388 = extractvalue %dx.types.CBufRet.f32 %8387, 2
  %8389 = fcmp fast ogt float %8388, 0.000000e+00
  %8390 = and i1 %8386, %8389
  br i1 %8390, label %8391, label %8797, !dx.controlflow.hints !164

; <label>:8391                                    ; preds = %8351
  %8392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8393 = extractvalue %dx.types.CBufRet.f32 %8392, 3
  %8394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8395 = extractvalue %dx.types.CBufRet.f32 %8394, 2
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %8398 = fsub fast float %8395, %8397
  %8399 = and i32 %8384, 2
  %8400 = extractvalue %dx.types.CBufRet.i32 %8383, 0
  %8401 = call i32 @dx.op.binary.i32(i32 40, i32 %8400, i32 3)  ; UMin(a,b)
  %8402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8403 = extractvalue %dx.types.CBufRet.f32 %8402, 0
  %8404 = extractvalue %dx.types.CBufRet.f32 %8402, 1
  %8405 = extractvalue %dx.types.CBufRet.f32 %8396, 0
  %8406 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %8407 = fsub fast float %8403, %8405
  %8408 = fsub fast float %8404, %8406
  %8409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8410 = extractvalue %dx.types.CBufRet.f32 %8409, 0
  %8411 = fcmp fast ogt float %8410, 0.000000e+00
  %8412 = fsub fast float -0.000000e+00, %8407
  %8413 = fsub fast float -0.000000e+00, %8408
  %8414 = call float @dx.op.dot2.f32(i32 54, float %1890, float %1891, float %1890, float %1891)  ; Dot2(ax,ay,bx,by)
  %8415 = call float @dx.op.dot2.f32(i32 54, float %1890, float %1891, float %8412, float %8413)  ; Dot2(ax,ay,bx,by)
  %8416 = fmul fast float %8415, 2.000000e+00
  %8417 = call float @dx.op.dot2.f32(i32 54, float %8412, float %8413, float %8412, float %8413)  ; Dot2(ax,ay,bx,by)
  %8418 = fmul fast float %8410, %8410
  %8419 = fsub fast float %8417, %8418
  %8420 = fmul fast float %8416, %8416
  %8421 = fmul fast float %8414, 4.000000e+00
  %8422 = fmul fast float %8421, %8419
  %8423 = fsub fast float %8420, %8422
  %8424 = fcmp fast ogt float %8423, 0.000000e+00
  br i1 %8424, label %8425, label %8440

; <label>:8425                                    ; preds = %8391
  %8426 = fcmp fast ogt float %8416, 0.000000e+00
  %8427 = call float @dx.op.unary.f32(i32 24, float %8423)  ; Sqrt(value)
  %8428 = fsub fast float -0.000000e+00, %8427
  %8429 = select i1 %8426, float %8427, float %8428
  %8430 = fadd fast float %8429, %8416
  %8431 = fmul float %8430, -5.000000e-01
  %8432 = fdiv fast float %8431, %8414
  %8433 = call float @dx.op.binary.f32(i32 35, float %8432, float 0.000000e+00)  ; FMax(a,b)
  %8434 = call float @dx.op.binary.f32(i32 36, float %8380, float %8433)  ; FMin(a,b)
  %8435 = fdiv fast float %8419, %8431
  %8436 = call float @dx.op.binary.f32(i32 35, float %8435, float 0.000000e+00)  ; FMax(a,b)
  %8437 = call float @dx.op.binary.f32(i32 36, float %8380, float %8436)  ; FMin(a,b)
  %8438 = call float @dx.op.binary.f32(i32 36, float %8434, float %8437)  ; FMin(a,b)
  %8439 = call float @dx.op.binary.f32(i32 35, float %8434, float %8437)  ; FMax(a,b)
  br label %8440

; <label>:8440                                    ; preds = %8425, %8391
  %8441 = phi float [ %8439, %8425 ], [ -1.000000e+00, %8391 ]
  %8442 = phi float [ %8438, %8425 ], [ -1.000000e+00, %8391 ]
  %8443 = phi i1 [ true, %8425 ], [ false, %8391 ]
  %8444 = and i1 %8411, %8443
  br i1 %8444, label %8445, label %8447

; <label>:8445                                    ; preds = %8440
  %8446 = fcmp fast oeq float %8442, %8441
  br i1 %8446, label %8750, label %8448

; <label>:8447                                    ; preds = %8440
  br i1 %8411, label %8750, label %8448

; <label>:8448                                    ; preds = %8447, %8445
  %8449 = phi float [ %8380, %8447 ], [ %8441, %8445 ]
  %8450 = phi float [ 0.000000e+00, %8447 ], [ %8442, %8445 ]
  %8451 = icmp ne i32 %8399, 0
  %8452 = fmul fast float %8449, %1892
  %8453 = fadd fast float %8452, %8393
  %8454 = fmul fast float %8453, %8449
  %8455 = select i1 %8451, float 0.000000e+00, float %8454
  %8456 = fcmp fast oeq float %1892, 0.000000e+00
  %8457 = fdiv fast float %8398, %1892
  %8458 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8457)  ; FMax(a,b)
  %8459 = select i1 %8456, float %8449, float %8458
  %8460 = call float @dx.op.binary.f32(i32 36, float %8449, float %8459)  ; FMin(a,b)
  %8461 = fcmp fast ogt float %1892, 0.000000e+00
  %8462 = fcmp fast olt float %8398, 0.000000e+00
  br i1 %8461, label %8463, label %8520

; <label>:8463                                    ; preds = %8448
  %8464 = icmp eq i32 %8399, 0
  br i1 %8462, label %8465, label %8509

; <label>:8465                                    ; preds = %8463
  %8466 = select i1 %8464, float %8449, float 0.000000e+00
  %8467 = fsub fast float -0.000000e+00, %8466
  %8468 = call float @dx.op.unary.f32(i32 6, float %8467)  ; FAbs(value)
  %8469 = fmul fast float %8466, %1892
  %8470 = fadd fast float %8469, %8393
  %8471 = fmul fast float %8468, %8470
  %8472 = fsub fast float %8455, %8471
  %8473 = fsub fast float %8449, %8468
  %8474 = select i1 %8464, float %8473, float 0.000000e+00
  %8475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8476 = extractvalue %dx.types.CBufRet.f32 %8475, 0
  %8477 = extractvalue %dx.types.CBufRet.f32 %8475, 1
  %8478 = extractvalue %dx.types.CBufRet.f32 %8475, 2
  %8479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8480 = extractvalue %dx.types.CBufRet.f32 %8479, 0
  %8481 = extractvalue %dx.types.CBufRet.f32 %8479, 1
  %8482 = extractvalue %dx.types.CBufRet.f32 %8479, 2
  %8483 = extractvalue %dx.types.CBufRet.f32 %8479, 3
  %8484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8485 = extractvalue %dx.types.CBufRet.f32 %8484, 3
  %8486 = call float @dx.op.binary.f32(i32 36, float %8472, float %8485)  ; FMin(a,b)
  %8487 = fmul fast float %8483, %8474
  %8488 = call float @dx.op.unary.f32(i32 7, float %8487)  ; Saturate(value)
  %8489 = fsub fast float %8480, %8476
  %8490 = fsub fast float %8481, %8477
  %8491 = fsub fast float %8482, %8478
  %8492 = fmul fast float %8488, %8489
  %8493 = fmul fast float %8488, %8490
  %8494 = fmul fast float %8488, %8491
  %8495 = fadd fast float %8492, %8476
  %8496 = fadd fast float %8493, %8477
  %8497 = fadd fast float %8494, %8478
  %8498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8499 = extractvalue %dx.types.CBufRet.f32 %8498, 0
  %8500 = extractvalue %dx.types.CBufRet.f32 %8498, 1
  %8501 = fadd fast float %8500, %8499
  %8502 = call float @dx.op.unary.f32(i32 7, float %8501)  ; Saturate(value)
  %8503 = extractvalue %dx.types.CBufRet.f32 %8498, 2
  %8504 = extractvalue %dx.types.CBufRet.f32 %8498, 3
  %8505 = fadd fast float %8504, %8503
  %8506 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8507 = fmul fast float %8502, %8486
  %8508 = fmul fast float %8507, %8506
  br label %8750

; <label>:8509                                    ; preds = %8463
  br i1 %8464, label %8510, label %8531

; <label>:8510                                    ; preds = %8509
  %8511 = call float @dx.op.binary.f32(i32 36, float %8460, float %8450)  ; FMin(a,b)
  %8512 = fsub fast float %8460, %8511
  %8513 = fsub fast float %8512, %8449
  %8514 = call float @dx.op.unary.f32(i32 6, float %8513)  ; FAbs(value)
  %8515 = fadd fast float %8512, %8449
  %8516 = fmul fast float %8515, %1892
  %8517 = fadd fast float %8516, %8393
  %8518 = fmul fast float %8517, %8514
  %8519 = fsub fast float %8455, %8518
  br label %8531

; <label>:8520                                    ; preds = %8448
  br i1 %8462, label %8521, label %8531

; <label>:8521                                    ; preds = %8520
  %8522 = call float @dx.op.binary.f32(i32 35, float %8450, float %8460)  ; FMax(a,b)
  %8523 = icmp eq i32 %8399, 0
  %8524 = select i1 %8523, float %8460, float 0.000000e+00
  %8525 = fsub fast float -0.000000e+00, %8524
  %8526 = call float @dx.op.unary.f32(i32 6, float %8525)  ; FAbs(value)
  %8527 = fmul fast float %8524, %1892
  %8528 = fadd fast float %8527, %8393
  %8529 = fmul fast float %8526, %8528
  %8530 = fsub fast float %8455, %8529
  br label %8531

; <label>:8531                                    ; preds = %8521, %8520, %8510, %8509
  %8532 = phi float [ %8450, %8509 ], [ %8450, %8510 ], [ %8522, %8521 ], [ %8450, %8520 ]
  %8533 = phi float [ 0.000000e+00, %8509 ], [ %8514, %8510 ], [ %8526, %8521 ], [ 0.000000e+00, %8520 ]
  %8534 = phi float [ %8455, %8509 ], [ %8519, %8510 ], [ %8530, %8521 ], [ %8455, %8520 ]
  %8535 = phi float [ %8460, %8509 ], [ %8460, %8510 ], [ %8449, %8521 ], [ %8449, %8520 ]
  %8536 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 0
  store float -1.000000e+00, float* %8536, align 4, !tbaa !106, !noalias !165
  %8537 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 1
  store float -1.000000e+00, float* %8537, align 4, !tbaa !106, !noalias !165
  %8538 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 2
  store float -1.000000e+00, float* %8538, align 4, !tbaa !106, !noalias !165
  %8539 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8539, align 4, !tbaa !106, !noalias !165
  %8540 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8540, align 4, !tbaa !106, !noalias !165
  %8541 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8541, align 4, !tbaa !106, !noalias !165
  %8542 = icmp sgt i32 %8401, 0
  br i1 %8542, label %8543, label %8604

; <label>:8543                                    ; preds = %8531
  br label %8544

; <label>:8544                                    ; preds = %8593, %8543
  %8545 = phi i32 [ %8594, %8593 ], [ 0, %8543 ]
  %8546 = phi i32 [ %8595, %8593 ], [ 0, %8543 ]
  %8547 = add nuw i32 %8546, 171
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 %8547)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 0
  %8550 = extractvalue %dx.types.CBufRet.f32 %8548, 1
  %8551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8552 = extractvalue %dx.types.CBufRet.f32 %8551, 0
  %8553 = extractvalue %dx.types.CBufRet.f32 %8551, 1
  %8554 = fsub fast float %8549, %8552
  %8555 = fsub fast float %8550, %8553
  %8556 = extractvalue %dx.types.CBufRet.f32 %8548, 2
  %8557 = fsub fast float -0.000000e+00, %8554
  %8558 = fsub fast float -0.000000e+00, %8555
  %8559 = call float @dx.op.dot2.f32(i32 54, float %1890, float %1891, float %8557, float %8558)  ; Dot2(ax,ay,bx,by)
  %8560 = fmul fast float %8559, 2.000000e+00
  %8561 = call float @dx.op.dot2.f32(i32 54, float %8557, float %8558, float %8557, float %8558)  ; Dot2(ax,ay,bx,by)
  %8562 = fmul fast float %8556, %8556
  %8563 = fsub fast float %8561, %8562
  %8564 = fmul fast float %8560, %8560
  %8565 = fmul fast float %8421, %8563
  %8566 = fsub fast float %8564, %8565
  %8567 = fcmp fast ogt float %8566, 0.000000e+00
  br i1 %8567, label %8568, label %8583

; <label>:8568                                    ; preds = %8544
  %8569 = fcmp fast ogt float %8560, 0.000000e+00
  %8570 = call float @dx.op.unary.f32(i32 24, float %8566)  ; Sqrt(value)
  %8571 = fsub fast float -0.000000e+00, %8570
  %8572 = select i1 %8569, float %8570, float %8571
  %8573 = fadd fast float %8572, %8560
  %8574 = fmul float %8573, -5.000000e-01
  %8575 = fdiv fast float %8574, %8414
  %8576 = call float @dx.op.binary.f32(i32 35, float %8575, float 0.000000e+00)  ; FMax(a,b)
  %8577 = call float @dx.op.binary.f32(i32 36, float %8449, float %8576)  ; FMin(a,b)
  %8578 = fdiv fast float %8563, %8574
  %8579 = call float @dx.op.binary.f32(i32 35, float %8578, float 0.000000e+00)  ; FMax(a,b)
  %8580 = call float @dx.op.binary.f32(i32 36, float %8449, float %8579)  ; FMin(a,b)
  %8581 = call float @dx.op.binary.f32(i32 36, float %8577, float %8580)  ; FMin(a,b)
  %8582 = call float @dx.op.binary.f32(i32 35, float %8577, float %8580)  ; FMax(a,b)
  br label %8583

; <label>:8583                                    ; preds = %8568, %8544
  %8584 = phi float [ %8582, %8568 ], [ -1.000000e+00, %8544 ]
  %8585 = phi float [ %8581, %8568 ], [ -1.000000e+00, %8544 ]
  %8586 = phi i1 [ true, %8568 ], [ false, %8544 ]
  br i1 %8586, label %8587, label %8593

; <label>:8587                                    ; preds = %8583
  %8588 = call float @dx.op.binary.f32(i32 35, float %8532, float %8585)  ; FMax(a,b)
  %8589 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8546
  store float %8588, float* %8589, align 4, !tbaa !106, !noalias !165
  %8590 = call float @dx.op.binary.f32(i32 35, float %8532, float %8584)  ; FMax(a,b)
  %8591 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8546
  store float %8590, float* %8591, align 4, !tbaa !106, !noalias !165
  %8592 = add nsw i32 %8545, 1
  br label %8593

; <label>:8593                                    ; preds = %8587, %8583
  %8594 = phi i32 [ %8592, %8587 ], [ %8545, %8583 ]
  %8595 = add nuw nsw i32 %8546, 1
  %8596 = icmp eq i32 %8595, %8401
  br i1 %8596, label %8597, label %8544

; <label>:8597                                    ; preds = %8593
  %8598 = load float, float* %8538, align 4, !tbaa !106, !alias.scope !181, !noalias !184
  %8599 = load float, float* %8537, align 4, !tbaa !106, !alias.scope !187, !noalias !188
  %8600 = load float, float* %8536, align 4, !tbaa !106, !alias.scope !189, !noalias !190
  %8601 = load float, float* %8541, align 4, !tbaa !106, !alias.scope !191, !noalias !194
  %8602 = load float, float* %8540, align 4, !tbaa !106, !alias.scope !197, !noalias !198
  %8603 = load float, float* %8539, align 4, !tbaa !106, !alias.scope !199, !noalias !200
  br label %8604

; <label>:8604                                    ; preds = %8597, %8531
  %8605 = phi float [ -1.000000e+00, %8531 ], [ %8603, %8597 ]
  %8606 = phi float [ -1.000000e+00, %8531 ], [ %8602, %8597 ]
  %8607 = phi float [ -1.000000e+00, %8531 ], [ %8601, %8597 ]
  %8608 = phi float [ -1.000000e+00, %8531 ], [ %8600, %8597 ]
  %8609 = phi float [ -1.000000e+00, %8531 ], [ %8599, %8597 ]
  %8610 = phi float [ -1.000000e+00, %8531 ], [ %8598, %8597 ]
  %8611 = phi i32 [ 0, %8531 ], [ %8594, %8597 ]
  %8612 = call float @dx.op.binary.f32(i32 36, float %8609, float %8610)  ; FMin(a,b)
  %8613 = call float @dx.op.binary.f32(i32 36, float %8608, float %8612)  ; FMin(a,b)
  %8614 = call float @dx.op.binary.f32(i32 35, float %8608, float %8609)  ; FMax(a,b)
  %8615 = call float @dx.op.binary.f32(i32 36, float %8614, float %8610)  ; FMin(a,b)
  %8616 = call float @dx.op.binary.f32(i32 36, float %8608, float %8609)  ; FMin(a,b)
  %8617 = call float @dx.op.binary.f32(i32 35, float %8616, float %8615)  ; FMax(a,b)
  %8618 = call float @dx.op.binary.f32(i32 35, float %8609, float %8610)  ; FMax(a,b)
  %8619 = call float @dx.op.binary.f32(i32 35, float %8608, float %8618)  ; FMax(a,b)
  store float %8613, float* %8536, align 4, !tbaa !106, !alias.scope !189, !noalias !190
  store float %8617, float* %8537, align 4, !tbaa !106, !alias.scope !187, !noalias !188
  store float %8619, float* %8538, align 4, !tbaa !106, !alias.scope !181, !noalias !184
  %8620 = call float @dx.op.binary.f32(i32 36, float %8606, float %8607)  ; FMin(a,b)
  %8621 = call float @dx.op.binary.f32(i32 36, float %8605, float %8620)  ; FMin(a,b)
  %8622 = call float @dx.op.binary.f32(i32 35, float %8605, float %8606)  ; FMax(a,b)
  %8623 = call float @dx.op.binary.f32(i32 36, float %8622, float %8607)  ; FMin(a,b)
  %8624 = call float @dx.op.binary.f32(i32 36, float %8605, float %8606)  ; FMin(a,b)
  %8625 = call float @dx.op.binary.f32(i32 35, float %8624, float %8623)  ; FMax(a,b)
  %8626 = call float @dx.op.binary.f32(i32 35, float %8606, float %8607)  ; FMax(a,b)
  %8627 = call float @dx.op.binary.f32(i32 35, float %8605, float %8626)  ; FMax(a,b)
  store float %8621, float* %8539, align 4, !tbaa !106, !alias.scope !199, !noalias !200
  store float %8625, float* %8540, align 4, !tbaa !106, !alias.scope !197, !noalias !198
  store float %8627, float* %8541, align 4, !tbaa !106, !alias.scope !191, !noalias !194
  %8628 = sub nsw i32 3, %8611
  %8629 = icmp sgt i32 %8628, 2
  br i1 %8629, label %8630, label %8668

; <label>:8630                                    ; preds = %8604
  %8631 = icmp eq i32 %8399, 0
  %8632 = fsub fast float %8449, %8533
  %8633 = select i1 %8631, float %8632, float %8533
  %8634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8635 = extractvalue %dx.types.CBufRet.f32 %8634, 0
  %8636 = extractvalue %dx.types.CBufRet.f32 %8634, 1
  %8637 = extractvalue %dx.types.CBufRet.f32 %8634, 2
  %8638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8639 = extractvalue %dx.types.CBufRet.f32 %8638, 0
  %8640 = extractvalue %dx.types.CBufRet.f32 %8638, 1
  %8641 = extractvalue %dx.types.CBufRet.f32 %8638, 2
  %8642 = extractvalue %dx.types.CBufRet.f32 %8638, 3
  %8643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8644 = extractvalue %dx.types.CBufRet.f32 %8643, 3
  %8645 = call float @dx.op.binary.f32(i32 36, float %8534, float %8644)  ; FMin(a,b)
  %8646 = fmul fast float %8642, %8633
  %8647 = call float @dx.op.unary.f32(i32 7, float %8646)  ; Saturate(value)
  %8648 = fsub fast float %8639, %8635
  %8649 = fsub fast float %8640, %8636
  %8650 = fsub fast float %8641, %8637
  %8651 = fmul fast float %8647, %8648
  %8652 = fmul fast float %8647, %8649
  %8653 = fmul fast float %8647, %8650
  %8654 = fadd fast float %8651, %8635
  %8655 = fadd fast float %8652, %8636
  %8656 = fadd fast float %8653, %8637
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = fadd fast float %8659, %8658
  %8661 = call float @dx.op.unary.f32(i32 7, float %8660)  ; Saturate(value)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8663 = extractvalue %dx.types.CBufRet.f32 %8657, 3
  %8664 = fadd fast float %8663, %8662
  %8665 = call float @dx.op.unary.f32(i32 7, float %8664)  ; Saturate(value)
  %8666 = fmul fast float %8661, %8645
  %8667 = fmul fast float %8666, %8665
  br label %8750

; <label>:8668                                    ; preds = %8604
  %8669 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8628
  %8670 = load float, float* %8669, align 4, !tbaa !106, !noalias !165
  %8671 = fcmp fast olt float %8670, %8535
  %8672 = icmp sgt i32 %8611, 0
  %8673 = and i1 %8672, %8671
  br i1 %8673, label %8674, label %8711

; <label>:8674                                    ; preds = %8668
  br label %8675

; <label>:8675                                    ; preds = %8704, %8674
  %8676 = phi float [ %8705, %8704 ], [ %8533, %8674 ]
  %8677 = phi float [ %8706, %8704 ], [ %8534, %8674 ]
  %8678 = phi float [ %8686, %8704 ], [ %8670, %8674 ]
  %8679 = phi i32 [ %8683, %8704 ], [ %8628, %8674 ]
  %8680 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8679
  %8681 = load float, float* %8680, align 4, !tbaa !106, !noalias !165
  %8682 = icmp slt i32 %8679, 2
  %8683 = add nsw i32 %8679, 1
  %8684 = getelementptr inbounds [3 x float], [3 x float]* %90, i32 0, i32 %8683
  %8685 = load float, float* %8684, align 4, !tbaa !106, !noalias !165
  %8686 = select i1 %8682, float %8685, float %8449
  %8687 = call float @dx.op.binary.f32(i32 36, float %8686, float %8681)  ; FMin(a,b)
  %8688 = call float @dx.op.binary.f32(i32 36, float %8535, float %8687)  ; FMin(a,b)
  %8689 = icmp eq i32 %8399, 0
  %8690 = fadd fast float %8688, %8678
  %8691 = fmul fast float %8690, %1892
  %8692 = fadd fast float %8691, %8393
  br i1 %8689, label %8698, label %8693

; <label>:8693                                    ; preds = %8675
  %8694 = fsub fast float %8688, %8678
  %8695 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8694)  ; FMax(a,b)
  %8696 = fmul fast float %8695, %8692
  %8697 = fadd fast float %8696, %8677
  br label %8704

; <label>:8698                                    ; preds = %8675
  %8699 = fsub fast float %8678, %8688
  %8700 = call float @dx.op.unary.f32(i32 6, float %8699)  ; FAbs(value)
  %8701 = fadd fast float %8700, %8676
  %8702 = fmul fast float %8700, %8692
  %8703 = fsub fast float %8677, %8702
  br label %8704

; <label>:8704                                    ; preds = %8698, %8693
  %8705 = phi float [ %8695, %8693 ], [ %8701, %8698 ]
  %8706 = phi float [ %8697, %8693 ], [ %8703, %8698 ]
  %8707 = fcmp fast olt float %8686, %8535
  %8708 = icmp slt i32 %8683, 3
  %8709 = and i1 %8708, %8707
  br i1 %8709, label %8675, label %8710

; <label>:8710                                    ; preds = %8704
  br label %8711

; <label>:8711                                    ; preds = %8710, %8668
  %8712 = phi float [ %8533, %8668 ], [ %8705, %8710 ]
  %8713 = phi float [ %8534, %8668 ], [ %8706, %8710 ]
  %8714 = fsub fast float %8449, %8712
  %8715 = select i1 %8451, float %8712, float %8714
  %8716 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8717 = extractvalue %dx.types.CBufRet.f32 %8716, 0
  %8718 = extractvalue %dx.types.CBufRet.f32 %8716, 1
  %8719 = extractvalue %dx.types.CBufRet.f32 %8716, 2
  %8720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8721 = extractvalue %dx.types.CBufRet.f32 %8720, 0
  %8722 = extractvalue %dx.types.CBufRet.f32 %8720, 1
  %8723 = extractvalue %dx.types.CBufRet.f32 %8720, 2
  %8724 = extractvalue %dx.types.CBufRet.f32 %8720, 3
  %8725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8726 = extractvalue %dx.types.CBufRet.f32 %8725, 3
  %8727 = call float @dx.op.binary.f32(i32 36, float %8713, float %8726)  ; FMin(a,b)
  %8728 = fmul fast float %8724, %8715
  %8729 = call float @dx.op.unary.f32(i32 7, float %8728)  ; Saturate(value)
  %8730 = fsub fast float %8721, %8717
  %8731 = fsub fast float %8722, %8718
  %8732 = fsub fast float %8723, %8719
  %8733 = fmul fast float %8729, %8730
  %8734 = fmul fast float %8729, %8731
  %8735 = fmul fast float %8729, %8732
  %8736 = fadd fast float %8733, %8717
  %8737 = fadd fast float %8734, %8718
  %8738 = fadd fast float %8735, %8719
  %8739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8740 = extractvalue %dx.types.CBufRet.f32 %8739, 0
  %8741 = extractvalue %dx.types.CBufRet.f32 %8739, 1
  %8742 = fadd fast float %8741, %8740
  %8743 = call float @dx.op.unary.f32(i32 7, float %8742)  ; Saturate(value)
  %8744 = extractvalue %dx.types.CBufRet.f32 %8739, 2
  %8745 = extractvalue %dx.types.CBufRet.f32 %8739, 3
  %8746 = fadd fast float %8745, %8744
  %8747 = call float @dx.op.unary.f32(i32 7, float %8746)  ; Saturate(value)
  %8748 = fmul fast float %8743, %8727
  %8749 = fmul fast float %8748, %8747
  br label %8750

; <label>:8750                                    ; preds = %8711, %8630, %8465, %8447, %8445
  %8751 = phi float [ %8474, %8465 ], [ %8633, %8630 ], [ %8715, %8711 ], [ 0.000000e+00, %8445 ], [ 0.000000e+00, %8447 ]
  %8752 = phi float [ %8508, %8465 ], [ %8667, %8630 ], [ %8749, %8711 ], [ 0.000000e+00, %8445 ], [ 0.000000e+00, %8447 ]
  %8753 = phi float [ %8495, %8465 ], [ %8654, %8630 ], [ %8736, %8711 ], [ 0.000000e+00, %8445 ], [ 0.000000e+00, %8447 ]
  %8754 = phi float [ %8496, %8465 ], [ %8655, %8630 ], [ %8737, %8711 ], [ 0.000000e+00, %8445 ], [ 0.000000e+00, %8447 ]
  %8755 = phi float [ %8497, %8465 ], [ %8656, %8630 ], [ %8738, %8711 ], [ 0.000000e+00, %8445 ], [ 0.000000e+00, %8447 ]
  %8756 = fmul fast float %8388, %8752
  %8757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8758 = extractvalue %dx.types.CBufRet.f32 %8757, 2
  %8759 = fsub fast float %8395, %8758
  %8760 = fcmp fast olt float %8756, -2.000000e+01
  %8761 = call float @dx.op.unary.f32(i32 21, float %8756)  ; Exp(value)
  %8762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8763 = extractvalue %dx.types.CBufRet.f32 %8762, 2
  %8764 = extractvalue %dx.types.CBufRet.f32 %8762, 3
  %8765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8766 = extractvalue %dx.types.CBufRet.f32 %8765, 2
  %8767 = fmul fast float %8764, %8759
  %8768 = call float @dx.op.unary.f32(i32 7, float %8767)  ; Saturate(value)
  %8769 = fsub fast float 1.000000e+00, %8768
  %8770 = fmul fast float %1892, 5.000000e-01
  %8771 = fadd fast float %8770, 5.000000e-01
  %8772 = call float @dx.op.unary.f32(i32 7, float %8771)  ; Saturate(value)
  %8773 = fsub fast float 1.000000e+00, %8772
  %8774 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8769)  ; FMax(a,b)
  %8775 = fdiv fast float %8773, %8774
  %8776 = fsub fast float %8759, %155
  %8777 = call float @dx.op.unary.f32(i32 6, float %8776)  ; FAbs(value)
  %8778 = fmul fast float %8777, %8763
  %8779 = call float @dx.op.unary.f32(i32 7, float %8775)  ; Saturate(value)
  %8780 = fsub fast float 1.000000e+00, %8778
  %8781 = fmul fast float %8780, %8779
  %8782 = fadd fast float %8781, %8778
  %8783 = fmul fast float %8766, %8759
  %8784 = call float @dx.op.unary.f32(i32 7, float %8783)  ; Saturate(value)
  %8785 = fsub fast float 1.000000e+00, %8782
  %8786 = fmul fast float %8785, %8784
  %8787 = fadd fast float %8786, %8782
  %8788 = call float @dx.op.unary.f32(i32 7, float %8787)  ; Saturate(value)
  %8789 = fadd fast float %8761, -1.000000e+00
  %8790 = select i1 %8760, float -1.000000e+00, float %8789
  %8791 = fmul fast float %8788, %8790
  %8792 = fadd fast float %8791, 1.000000e+00
  %8793 = fsub fast float -0.000000e+00, %8791
  %8794 = fmul fast float %8753, %8793
  %8795 = fmul fast float %8754, %8793
  %8796 = fmul fast float %8755, %8793
  br label %8797

; <label>:8797                                    ; preds = %8750, %8351
  %8798 = phi float [ %8751, %8750 ], [ 0.000000e+00, %8351 ]
  %8799 = phi float [ %8792, %8750 ], [ 1.000000e+00, %8351 ]
  %8800 = phi float [ %8794, %8750 ], [ 0.000000e+00, %8351 ]
  %8801 = phi float [ %8795, %8750 ], [ 0.000000e+00, %8351 ]
  %8802 = phi float [ %8796, %8750 ], [ 0.000000e+00, %8351 ]
  %8803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8804 = extractvalue %dx.types.CBufRet.f32 %8803, 1
  %8805 = fsub fast float 1.000000e+00, %8799
  %8806 = fmul fast float %8805, %8381
  %8807 = fmul fast float %8806, %8804
  %8808 = fsub fast float %8381, %8807
  br i1 %8379, label %8809, label %8838, !dx.controlflow.hints !201

; <label>:8809                                    ; preds = %8797
  %8810 = fmul fast float %8382, %8376
  %8811 = fadd fast float %8810, %8377
  %8812 = call float @dx.op.unary.f32(i32 7, float %8811)  ; Saturate(value)
  %8813 = fmul fast float %8358, %8808
  %8814 = fsub fast float -0.000000e+00, %8813
  %8815 = fmul fast float %8359, %8808
  %8816 = fsub fast float -0.000000e+00, %8815
  %8817 = call float @dx.op.unary.f32(i32 21, float %8814)  ; Exp(value)
  %8818 = call float @dx.op.unary.f32(i32 21, float %8816)  ; Exp(value)
  %8819 = call float @dx.op.binary.f32(i32 35, float %8366, float %8817)  ; FMax(a,b)
  %8820 = call float @dx.op.binary.f32(i32 35, float %8366, float %8818)  ; FMax(a,b)
  %8821 = fsub fast float %8820, %8819
  %8822 = fmul fast float %8821, %8812
  %8823 = fadd fast float %8822, %8819
  %8824 = call float @dx.op.unary.f32(i32 7, float %8823)  ; Saturate(value)
  %8825 = fsub fast float %8363, %8368
  %8826 = fsub fast float %8364, %8369
  %8827 = fsub fast float %8365, %8370
  %8828 = fmul fast float %8812, %8825
  %8829 = fmul fast float %8812, %8826
  %8830 = fmul fast float %8812, %8827
  %8831 = fadd fast float %8828, %8368
  %8832 = fadd fast float %8829, %8369
  %8833 = fadd fast float %8830, %8370
  %8834 = fsub fast float 1.000000e+00, %8824
  %8835 = fmul fast float %8834, %8831
  %8836 = fmul fast float %8834, %8832
  %8837 = fmul fast float %8834, %8833
  br label %8897

; <label>:8838                                    ; preds = %8797
  %8839 = fmul fast float %8808, %8375
  %8840 = call float @dx.op.unary.f32(i32 7, float %8839)  ; Saturate(value)
  %8841 = fsub fast float 2.000000e+00, %8840
  %8842 = fmul fast float %8840, 9.921875e-01
  %8843 = fmul fast float %8842, %8841
  %8844 = fadd fast float %8843, 3.906250e-03
  %8845 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %8844, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8846 = extractvalue %dx.types.ResRet.f32 %8845, 0
  %8847 = fsub fast float %8840, %8846
  %8848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8847)  ; FMax(a,b)
  %8849 = fmul fast float %8361, %155
  %8850 = call float @dx.op.unary.f32(i32 6, float %8849)  ; FAbs(value)
  %8851 = fcmp fast ogt float %8850, 0x3EB0C6F7A0000000
  br i1 %8851, label %8852, label %8858, !dx.controlflow.hints !202

; <label>:8852                                    ; preds = %8838
  %8853 = fmul fast float %8849, 0xBFF7154760000000
  %8854 = call float @dx.op.unary.f32(i32 21, float %8853)  ; Exp(value)
  %8855 = fsub fast float 1.000000e+00, %8854
  %8856 = fdiv fast float %8855, %8849
  %8857 = fmul fast float %8856, %8371
  br label %8858

; <label>:8858                                    ; preds = %8852, %8838
  %8859 = phi float [ %8857, %8852 ], [ %8371, %8838 ]
  %8860 = fadd fast float %8859, %8373
  %8861 = fmul fast float %8860, %8848
  %8862 = fmul fast float %8358, %8861
  %8863 = fsub fast float -0.000000e+00, %8862
  %8864 = fmul fast float %8359, %8861
  %8865 = fsub fast float -0.000000e+00, %8864
  %8866 = fmul fast float %8360, %8861
  %8867 = fsub fast float -0.000000e+00, %8866
  %8868 = call float @dx.op.unary.f32(i32 21, float %8863)  ; Exp(value)
  %8869 = call float @dx.op.unary.f32(i32 21, float %8865)  ; Exp(value)
  %8870 = call float @dx.op.unary.f32(i32 21, float %8867)  ; Exp(value)
  %8871 = fmul fast float %8382, %8382
  %8872 = fadd fast float %8871, 1.000000e+00
  %8873 = fmul fast float %8872, 0x3FAE8EC8A0000000
  %8874 = fmul fast float %8873, %8368
  %8875 = fmul fast float %8873, %8369
  %8876 = fmul fast float %8873, %8370
  %8877 = fmul fast float %8382, %8366
  %8878 = fsub fast float 1.000000e+00, %8877
  %8879 = fmul fast float %8366, %8366
  %8880 = fsub fast float 1.000000e+00, %8879
  %8881 = fmul fast float %8880, 0x3FB45F3060000000
  %8882 = fmul fast float %8878, %8878
  %8883 = fdiv fast float 1.000000e+00, %8882
  %8884 = fmul fast float %8881, %8883
  %8885 = fmul fast float %8884, %8363
  %8886 = fmul fast float %8884, %8364
  %8887 = fmul fast float %8884, %8365
  %8888 = fadd fast float %8885, %8874
  %8889 = fadd fast float %8886, %8875
  %8890 = fadd fast float %8887, %8876
  %8891 = fsub fast float 1.000000e+00, %8868
  %8892 = fsub fast float 1.000000e+00, %8869
  %8893 = fsub fast float 1.000000e+00, %8870
  %8894 = fmul fast float %8888, %8891
  %8895 = fmul fast float %8889, %8892
  %8896 = fmul fast float %8890, %8893
  br label %8897

; <label>:8897                                    ; preds = %8858, %8809
  %8898 = phi float [ %8835, %8809 ], [ %8894, %8858 ]
  %8899 = phi float [ %8836, %8809 ], [ %8895, %8858 ]
  %8900 = phi float [ %8837, %8809 ], [ %8896, %8858 ]
  %8901 = phi float [ %8824, %8809 ], [ %8868, %8858 ]
  %8902 = phi float [ %8824, %8809 ], [ %8869, %8858 ]
  %8903 = phi float [ %8824, %8809 ], [ %8870, %8858 ]
  br i1 %8390, label %8904, label %9102, !dx.controlflow.hints !203

; <label>:8904                                    ; preds = %8897
  %8905 = extractvalue %dx.types.CBufRet.f32 %8803, 0
  %8906 = fmul fast float %8905, %8805
  %8907 = fsub fast float %8800, %8898
  %8908 = fsub fast float %8801, %8899
  %8909 = fsub fast float %8802, %8900
  %8910 = fmul fast float %8906, %8907
  %8911 = fmul fast float %8906, %8908
  %8912 = fmul fast float %8906, %8909
  %8913 = fadd fast float %8910, %8898
  %8914 = fadd fast float %8911, %8899
  %8915 = fadd fast float %8912, %8900
  %8916 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8901)  ; FMax(a,b)
  %8917 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8902)  ; FMax(a,b)
  %8918 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8903)  ; FMax(a,b)
  %8919 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8799)  ; FMax(a,b)
  %8920 = call float @dx.op.binary.f32(i32 35, float %8798, float %8808)  ; FMax(a,b)
  %8921 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8920)  ; FMax(a,b)
  %8922 = fdiv fast float %8798, %8921
  %8923 = call float @dx.op.unary.f32(i32 7, float %8922)  ; Saturate(value)
  %8924 = fdiv fast float %8808, %8921
  %8925 = call float @dx.op.unary.f32(i32 7, float %8924)  ; Saturate(value)
  %8926 = fcmp fast une float %8919, 1.000000e+00
  br i1 %8926, label %8927, label %8940, !dx.controlflow.hints !204

; <label>:8927                                    ; preds = %8904
  %8928 = call float @dx.op.unary.f32(i32 23, float %8919)  ; Log(value)
  %8929 = fmul fast float %8928, 0x3FE62E4300000000
  %8930 = fmul fast float %8800, %8929
  %8931 = fsub fast float -0.000000e+00, %8930
  %8932 = fmul fast float %8801, %8929
  %8933 = fsub fast float -0.000000e+00, %8932
  %8934 = fmul fast float %8802, %8929
  %8935 = fsub fast float -0.000000e+00, %8934
  %8936 = fsub fast float 1.000000e+00, %8919
  %8937 = fdiv fast float %8931, %8936
  %8938 = fdiv fast float %8933, %8936
  %8939 = fdiv fast float %8935, %8936
  br label %8940

; <label>:8940                                    ; preds = %8927, %8904
  %8941 = phi float [ %8937, %8927 ], [ %8800, %8904 ]
  %8942 = phi float [ %8938, %8927 ], [ %8801, %8904 ]
  %8943 = phi float [ %8939, %8927 ], [ %8802, %8904 ]
  %8944 = phi float [ %8929, %8927 ], [ 0.000000e+00, %8904 ]
  %8945 = fcmp fast une float %8916, 1.000000e+00
  br i1 %8945, label %8946, label %8953, !dx.controlflow.hints !205

; <label>:8946                                    ; preds = %8940
  %8947 = call float @dx.op.unary.f32(i32 23, float %8916)  ; Log(value)
  %8948 = fmul fast float %8947, 0x3FE62E4300000000
  %8949 = fmul fast float %8913, %8948
  %8950 = fsub fast float -0.000000e+00, %8949
  %8951 = fsub fast float 1.000000e+00, %8916
  %8952 = fdiv fast float %8950, %8951
  br label %8953

; <label>:8953                                    ; preds = %8946, %8940
  %8954 = phi float [ %8952, %8946 ], [ %8913, %8940 ]
  %8955 = phi float [ %8948, %8946 ], [ 0.000000e+00, %8940 ]
  %8956 = fcmp fast une float %8917, 1.000000e+00
  br i1 %8956, label %8957, label %8964, !dx.controlflow.hints !205

; <label>:8957                                    ; preds = %8953
  %8958 = call float @dx.op.unary.f32(i32 23, float %8917)  ; Log(value)
  %8959 = fmul fast float %8958, 0x3FE62E4300000000
  %8960 = fmul fast float %8914, %8959
  %8961 = fsub fast float -0.000000e+00, %8960
  %8962 = fsub fast float 1.000000e+00, %8917
  %8963 = fdiv fast float %8961, %8962
  br label %8964

; <label>:8964                                    ; preds = %8957, %8953
  %8965 = phi float [ %8963, %8957 ], [ %8914, %8953 ]
  %8966 = phi float [ %8959, %8957 ], [ 0.000000e+00, %8953 ]
  %8967 = fcmp fast une float %8918, 1.000000e+00
  br i1 %8967, label %8968, label %8975, !dx.controlflow.hints !205

; <label>:8968                                    ; preds = %8964
  %8969 = call float @dx.op.unary.f32(i32 23, float %8918)  ; Log(value)
  %8970 = fmul fast float %8969, 0x3FE62E4300000000
  %8971 = fmul fast float %8915, %8970
  %8972 = fsub fast float -0.000000e+00, %8971
  %8973 = fsub fast float 1.000000e+00, %8918
  %8974 = fdiv fast float %8972, %8973
  br label %8975

; <label>:8975                                    ; preds = %8968, %8964
  %8976 = phi float [ %8974, %8968 ], [ %8915, %8964 ]
  %8977 = phi float [ %8970, %8968 ], [ 0.000000e+00, %8964 ]
  %8978 = fmul fast float %8941, %8925
  %8979 = fmul fast float %8942, %8925
  %8980 = fmul fast float %8943, %8925
  %8981 = fmul fast float %8944, %8925
  %8982 = fmul fast float %8954, %8923
  %8983 = fmul fast float %8965, %8923
  %8984 = fmul fast float %8976, %8923
  %8985 = fmul fast float %8955, %8923
  %8986 = fmul fast float %8966, %8923
  %8987 = fmul fast float %8977, %8923
  %8988 = fadd fast float %8982, %8978
  %8989 = fadd fast float %8983, %8979
  %8990 = fadd fast float %8984, %8980
  %8991 = fadd fast float %8985, %8981
  %8992 = fadd fast float %8986, %8981
  %8993 = fadd fast float %8987, %8981
  %8994 = fcmp fast une float %8991, 0.000000e+00
  br i1 %8994, label %8995, label %9002, !dx.controlflow.hints !206

; <label>:8995                                    ; preds = %8975
  %8996 = fmul fast float %8991, 0x3FF7154760000000
  %8997 = call float @dx.op.unary.f32(i32 21, float %8996)  ; Exp(value)
  %8998 = fsub fast float 1.000000e+00, %8997
  %8999 = fmul fast float %8988, %8998
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = fdiv fast float %9000, %8991
  br label %9002

; <label>:9002                                    ; preds = %8995, %8975
  %9003 = phi float [ %8997, %8995 ], [ 1.000000e+00, %8975 ]
  %9004 = phi float [ %9001, %8995 ], [ %8988, %8975 ]
  %9005 = fcmp fast une float %8992, 0.000000e+00
  br i1 %9005, label %9006, label %9013, !dx.controlflow.hints !206

; <label>:9006                                    ; preds = %9002
  %9007 = fmul fast float %8992, 0x3FF7154760000000
  %9008 = call float @dx.op.unary.f32(i32 21, float %9007)  ; Exp(value)
  %9009 = fsub fast float 1.000000e+00, %9008
  %9010 = fmul fast float %8989, %9009
  %9011 = fsub fast float -0.000000e+00, %9010
  %9012 = fdiv fast float %9011, %8992
  br label %9013

; <label>:9013                                    ; preds = %9006, %9002
  %9014 = phi float [ %9008, %9006 ], [ 1.000000e+00, %9002 ]
  %9015 = phi float [ %9012, %9006 ], [ %8989, %9002 ]
  %9016 = fcmp fast une float %8993, 0.000000e+00
  br i1 %9016, label %9017, label %9024, !dx.controlflow.hints !206

; <label>:9017                                    ; preds = %9013
  %9018 = fmul fast float %8993, 0x3FF7154760000000
  %9019 = call float @dx.op.unary.f32(i32 21, float %9018)  ; Exp(value)
  %9020 = fsub fast float 1.000000e+00, %9019
  %9021 = fmul fast float %8990, %9020
  %9022 = fsub fast float -0.000000e+00, %9021
  %9023 = fdiv fast float %9022, %8993
  br label %9024

; <label>:9024                                    ; preds = %9017, %9013
  %9025 = phi float [ %9019, %9017 ], [ 1.000000e+00, %9013 ]
  %9026 = phi float [ %9023, %9017 ], [ %8990, %9013 ]
  %9027 = fcmp fast ogt float %8923, %8925
  br i1 %9027, label %9028, label %9048

; <label>:9028                                    ; preds = %9024
  %9029 = fsub fast float 1.000000e+00, %8925
  %9030 = fmul fast float %8941, %9029
  %9031 = fmul fast float %8942, %9029
  %9032 = fmul fast float %8943, %9029
  %9033 = fmul fast float %8944, %9029
  %9034 = fcmp fast une float %9033, 0.000000e+00
  br i1 %9034, label %9035, label %9086, !dx.controlflow.hints !207

; <label>:9035                                    ; preds = %9028
  %9036 = fmul fast float %9033, 0x3FF7154760000000
  %9037 = call float @dx.op.unary.f32(i32 21, float %9036)  ; Exp(value)
  %9038 = fsub fast float 1.000000e+00, %9037
  %9039 = fmul fast float %9030, %9038
  %9040 = fsub fast float -0.000000e+00, %9039
  %9041 = fmul fast float %9031, %9038
  %9042 = fsub fast float -0.000000e+00, %9041
  %9043 = fmul fast float %9032, %9038
  %9044 = fsub fast float -0.000000e+00, %9043
  %9045 = fdiv fast float %9040, %9033
  %9046 = fdiv fast float %9042, %9033
  %9047 = fdiv fast float %9044, %9033
  br label %9086

; <label>:9048                                    ; preds = %9024
  %9049 = fsub fast float 1.000000e+00, %8923
  %9050 = fmul fast float %8954, %9049
  %9051 = fmul fast float %8965, %9049
  %9052 = fmul fast float %8976, %9049
  %9053 = fmul fast float %8955, %9049
  %9054 = fmul fast float %8966, %9049
  %9055 = fmul fast float %8977, %9049
  %9056 = fcmp fast une float %9053, 0.000000e+00
  br i1 %9056, label %9057, label %9064, !dx.controlflow.hints !206

; <label>:9057                                    ; preds = %9048
  %9058 = fmul fast float %9053, 0x3FF7154760000000
  %9059 = call float @dx.op.unary.f32(i32 21, float %9058)  ; Exp(value)
  %9060 = fsub fast float 1.000000e+00, %9059
  %9061 = fmul fast float %9050, %9060
  %9062 = fsub fast float -0.000000e+00, %9061
  %9063 = fdiv fast float %9062, %9053
  br label %9064

; <label>:9064                                    ; preds = %9057, %9048
  %9065 = phi float [ %9063, %9057 ], [ %9050, %9048 ]
  %9066 = phi float [ %9059, %9057 ], [ 1.000000e+00, %9048 ]
  %9067 = fcmp fast une float %9054, 0.000000e+00
  br i1 %9067, label %9068, label %9075, !dx.controlflow.hints !206

; <label>:9068                                    ; preds = %9064
  %9069 = fmul fast float %9054, 0x3FF7154760000000
  %9070 = call float @dx.op.unary.f32(i32 21, float %9069)  ; Exp(value)
  %9071 = fsub fast float 1.000000e+00, %9070
  %9072 = fmul fast float %9051, %9071
  %9073 = fsub fast float -0.000000e+00, %9072
  %9074 = fdiv fast float %9073, %9054
  br label %9075

; <label>:9075                                    ; preds = %9068, %9064
  %9076 = phi float [ %9074, %9068 ], [ %9051, %9064 ]
  %9077 = phi float [ %9070, %9068 ], [ 1.000000e+00, %9064 ]
  %9078 = fcmp fast une float %9055, 0.000000e+00
  br i1 %9078, label %9079, label %9086, !dx.controlflow.hints !206

; <label>:9079                                    ; preds = %9075
  %9080 = fmul fast float %9055, 0x3FF7154760000000
  %9081 = call float @dx.op.unary.f32(i32 21, float %9080)  ; Exp(value)
  %9082 = fsub fast float 1.000000e+00, %9081
  %9083 = fmul fast float %9052, %9082
  %9084 = fsub fast float -0.000000e+00, %9083
  %9085 = fdiv fast float %9084, %9055
  br label %9086

; <label>:9086                                    ; preds = %9079, %9075, %9035, %9028
  %9087 = phi float [ %9085, %9079 ], [ %9047, %9035 ], [ %9032, %9028 ], [ %9052, %9075 ]
  %9088 = phi float [ %9076, %9079 ], [ %9046, %9035 ], [ %9031, %9028 ], [ %9076, %9075 ]
  %9089 = phi float [ %9065, %9079 ], [ %9045, %9035 ], [ %9030, %9028 ], [ %9065, %9075 ]
  %9090 = phi float [ %9081, %9079 ], [ %9037, %9035 ], [ 1.000000e+00, %9028 ], [ 1.000000e+00, %9075 ]
  %9091 = phi float [ %9077, %9079 ], [ %9037, %9035 ], [ 1.000000e+00, %9028 ], [ %9077, %9075 ]
  %9092 = phi float [ %9066, %9079 ], [ %9037, %9035 ], [ 1.000000e+00, %9028 ], [ %9066, %9075 ]
  %9093 = fmul fast float %9092, %9004
  %9094 = fmul fast float %9091, %9015
  %9095 = fmul fast float %9090, %9026
  %9096 = fadd fast float %9093, %9089
  %9097 = fadd fast float %9094, %9088
  %9098 = fadd fast float %9095, %9087
  %9099 = fmul fast float %9092, %9003
  %9100 = fmul fast float %9091, %9014
  %9101 = fmul fast float %9090, %9025
  br label %9102

; <label>:9102                                    ; preds = %9086, %8897
  %9103 = phi float [ %9101, %9086 ], [ %8903, %8897 ]
  %9104 = phi float [ %9100, %9086 ], [ %8902, %8897 ]
  %9105 = phi float [ %9099, %9086 ], [ %8901, %8897 ]
  %9106 = phi float [ %9098, %9086 ], [ %8900, %8897 ]
  %9107 = phi float [ %9097, %9086 ], [ %8899, %8897 ]
  %9108 = phi float [ %9096, %9086 ], [ %8898, %8897 ]
  %9109 = call float @dx.op.dot3.f32(i32 55, float %9105, float %9104, float %9103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9110 = call float @dx.op.dot3.f32(i32 55, float %9108, float %9107, float %9106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9111 = select i1 %2046, float %9109, float %9105
  %9112 = select i1 %2046, float %9109, float %9104
  %9113 = select i1 %2046, float 1.000000e+00, float %9103
  %9114 = select i1 %2046, float %9110, float %9108
  %9115 = select i1 %2046, float 0.000000e+00, float %9107
  %9116 = select i1 %2046, float 0.000000e+00, float %9106
  %9117 = fmul fast float %9111, %8346
  %9118 = fmul fast float %9112, %8348
  %9119 = fmul fast float %9113, %8350
  %9120 = fadd fast float %9117, %9114
  %9121 = fadd fast float %9118, %9115
  %9122 = fadd fast float %9116, %9119
  %9123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9124 = extractvalue %dx.types.CBufRet.f32 %9123, 2
  %9125 = extractvalue %dx.types.CBufRet.f32 %9123, 3
  %9126 = fmul fast float %9124, %98
  %9127 = fmul fast float %9125, %99
  %9128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %61, float %9126, float %9127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9129 = extractvalue %dx.types.ResRet.f32 %9128, 0
  %9130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %61, float %9126, float %9127, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9131 = extractvalue %dx.types.ResRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.ResRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.ResRet.f32 %9130, 2
  %9134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9135 = extractvalue %dx.types.CBufRet.f32 %9134, 1
  %9136 = fmul fast float %9135, %9131
  %9137 = fmul fast float %9135, %9132
  %9138 = fmul fast float %9135, %9133
  %9139 = fmul fast float %9129, %9105
  %9140 = call float @dx.op.dot3.f32(i32 55, float %9129, float %9129, float %9129, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9141 = call float @dx.op.dot3.f32(i32 55, float %9136, float %9137, float %9138, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9142 = select i1 %2046, float %9140, float %9129
  %9143 = select i1 %2046, float 1.000000e+00, float %9129
  %9144 = select i1 %2046, float %9141, float %9136
  %9145 = select i1 %2046, float 0.000000e+00, float %9137
  %9146 = select i1 %2046, float 0.000000e+00, float %9138
  %9147 = fmul fast float %9142, %9120
  %9148 = fmul fast float %9142, %9121
  %9149 = fmul fast float %9143, %9122
  %9150 = fadd fast float %9147, %9144
  %9151 = fadd fast float %9148, %9145
  %9152 = fadd fast float %9146, %9149
  br label %9153

; <label>:9153                                    ; preds = %9102, %8319
  %9154 = phi float [ %8346, %8319 ], [ %9150, %9102 ]
  %9155 = phi float [ %8348, %8319 ], [ %9151, %9102 ]
  %9156 = phi float [ %8350, %8319 ], [ %9152, %9102 ]
  %9157 = phi float [ 1.000000e+00, %8319 ], [ %9139, %9102 ]
  %9158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9159 = extractvalue %dx.types.CBufRet.f32 %9158, 2
  %9160 = extractvalue %dx.types.CBufRet.f32 %9158, 3
  %9161 = fmul fast float %9159, %98
  %9162 = fmul fast float %9160, %99
  %9163 = call float @dx.op.unary.f32(i32 7, float %9161)  ; Saturate(value)
  %9164 = call float @dx.op.unary.f32(i32 7, float %9162)  ; Saturate(value)
  %9165 = select i1 %115, i32 0, i32 2
  %9166 = or i32 %9165, 1
  %9167 = uitofp i32 %9166 to float
  %9168 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %9163, float %9164, float %9167, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9169 = extractvalue %dx.types.ResRet.f32 %9168, 0
  %9170 = extractvalue %dx.types.ResRet.f32 %9168, 1
  %9171 = extractvalue %dx.types.ResRet.f32 %9168, 2
  %9172 = extractvalue %dx.types.ResRet.f32 %9168, 3
  %9173 = add nuw nsw i32 %9165, 2
  %9174 = uitofp i32 %9173 to float
  %9175 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %61, float %9163, float %9164, float %9174, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9176 = extractvalue %dx.types.ResRet.f32 %9175, 0
  %9177 = extractvalue %dx.types.ResRet.f32 %9175, 1
  %9178 = extractvalue %dx.types.ResRet.f32 %9175, 2
  %9179 = extractvalue %dx.types.ResRet.f32 %9175, 3
  %9180 = call float @dx.op.binary.f32(i32 35, float %9170, float %9171)  ; FMax(a,b)
  %9181 = call float @dx.op.binary.f32(i32 35, float %9169, float %9180)  ; FMax(a,b)
  %9182 = call float @dx.op.binary.f32(i32 35, float %9181, float %9172)  ; FMax(a,b)
  %9183 = call float @dx.op.binary.f32(i32 36, float %9177, float %9178)  ; FMin(a,b)
  %9184 = call float @dx.op.binary.f32(i32 36, float %9176, float %9183)  ; FMin(a,b)
  %9185 = call float @dx.op.binary.f32(i32 36, float %9184, float %9179)  ; FMin(a,b)
  %9186 = fmul fast float %9182, 2.550000e+02
  %9187 = fadd fast float %9186, 0x3F70101020000000
  %9188 = fptoui float %9187 to i32
  %9189 = fmul fast float %9185, 2.550000e+02
  %9190 = fadd fast float %9189, 0x3F70101020000000
  %9191 = fptoui float %9190 to i32
  %9192 = icmp ult i32 %9188, %9191
  br i1 %9192, label %9193, label %9245

; <label>:9193                                    ; preds = %9153
  %9194 = fcmp fast ogt float %86, 9.843750e-01
  %9195 = fadd fast float %87, -4.000000e+00
  %9196 = select i1 %9194, float -4.000000e+00, float %9195
  %9197 = call float @dx.op.binary.f32(i32 35, float %9196, float 0.000000e+00)  ; FMax(a,b)
  %9198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9199 = extractvalue %dx.types.CBufRet.f32 %9198, 0
  %9200 = fadd fast float %9199, %9197
  %9201 = extractvalue %dx.types.CBufRet.f32 %9198, 2
  %9202 = fmul fast float %9200, %9201
  %9203 = call float @dx.op.unary.f32(i32 23, float %9202)  ; Log(value)
  %9204 = extractvalue %dx.types.CBufRet.f32 %9198, 3
  %9205 = fmul fast float %9204, %9203
  %9206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9207 = extractvalue %dx.types.CBufRet.f32 %9206, 2
  %9208 = fmul fast float %9205, %9207
  %9209 = call float @dx.op.unary.f32(i32 7, float %9208)  ; Saturate(value)
  %9210 = uitofp i32 %9188 to float
  %9211 = uitofp i32 %9191 to float
  %9212 = fadd fast float %9210, 5.000000e-01
  %9213 = fadd fast float %9211, 5.000000e-01
  %9214 = fmul fast float %9207, %9212
  %9215 = fmul fast float %9207, %9213
  %9216 = fadd fast float %9214, 0x3F0FFB4800000000
  %9217 = fadd fast float %9215, 0xBF0FFB4800000000
  %9218 = call float @dx.op.binary.f32(i32 35, float %9209, float %9216)  ; FMax(a,b)
  %9219 = call float @dx.op.binary.f32(i32 36, float %9218, float %9217)  ; FMin(a,b)
  %9220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9221 = extractvalue %dx.types.CBufRet.f32 %9220, 1
  %9222 = extractvalue %dx.types.CBufRet.f32 %9220, 2
  %9223 = extractvalue %dx.types.CBufRet.f32 %9220, 0
  %9224 = select i1 %115, float 0.000000e+00, float %9223
  %9225 = fmul fast float %9221, %9219
  %9226 = fadd fast float %9224, %9225
  %9227 = fadd fast float %9224, %9222
  %9228 = fsub fast float %9221, %9222
  %9229 = fadd fast float %9228, %9224
  %9230 = call float @dx.op.binary.f32(i32 35, float %9226, float %9227)  ; FMax(a,b)
  %9231 = call float @dx.op.binary.f32(i32 36, float %9230, float %9229)  ; FMin(a,b)
  %9232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %59, float %9163, float %9164, float %9231, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9233 = extractvalue %dx.types.ResRet.f32 %9232, 0
  %9234 = extractvalue %dx.types.ResRet.f32 %9232, 1
  %9235 = extractvalue %dx.types.ResRet.f32 %9232, 2
  %9236 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %59, float %9163, float %9164, float %9231, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9237 = extractvalue %dx.types.ResRet.f32 %9236, 0
  %9238 = extractvalue %dx.types.ResRet.f32 %9236, 1
  %9239 = extractvalue %dx.types.ResRet.f32 %9236, 2
  %9240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9241 = extractvalue %dx.types.CBufRet.f32 %9240, 1
  %9242 = fmul fast float %9241, %9237
  %9243 = fmul fast float %9241, %9238
  %9244 = fmul fast float %9241, %9239
  br label %9245

; <label>:9245                                    ; preds = %9193, %9153
  %9246 = phi float [ %9233, %9193 ], [ 1.000000e+00, %9153 ]
  %9247 = phi float [ %9234, %9193 ], [ 1.000000e+00, %9153 ]
  %9248 = phi float [ %9235, %9193 ], [ 1.000000e+00, %9153 ]
  %9249 = phi float [ %9242, %9193 ], [ 0.000000e+00, %9153 ]
  %9250 = phi float [ %9243, %9193 ], [ 0.000000e+00, %9153 ]
  %9251 = phi float [ %9244, %9193 ], [ 0.000000e+00, %9153 ]
  %9252 = fmul fast float %9246, %9157
  %9253 = call float @dx.op.dot3.f32(i32 55, float %9246, float %9247, float %9248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9254 = call float @dx.op.dot3.f32(i32 55, float %9249, float %9250, float %9251, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9255 = select i1 %2046, float %9253, float %9246
  %9256 = select i1 %2046, float %9253, float %9247
  %9257 = select i1 %2046, float 1.000000e+00, float %9248
  %9258 = select i1 %2046, float %9254, float %9249
  %9259 = select i1 %2046, float 0.000000e+00, float %9250
  %9260 = select i1 %2046, float 0.000000e+00, float %9251
  %9261 = fmul fast float %9255, %9154
  %9262 = fmul fast float %9256, %9155
  %9263 = fmul fast float %9257, %9156
  %9264 = fadd fast float %9261, %9258
  %9265 = fadd fast float %9262, %9259
  %9266 = fadd fast float %9260, %9263
  %9267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9268 = extractvalue %dx.types.CBufRet.i32 %9267, 3
  %9269 = and i32 %9268, 3
  %9270 = icmp ne i32 %9269, 0
  %9271 = and i32 %9268, 4
  %9272 = icmp ne i32 %9271, 0
  %9273 = and i1 %9270, %9272
  %9274 = and i1 %2046, %9273
  br i1 %9274, label %9275, label %9281

; <label>:9275                                    ; preds = %9245
  %9276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9277 = extractvalue %dx.types.CBufRet.f32 %9276, 1
  %9278 = fadd fast float %9252, -1.000000e+00
  %9279 = fmul fast float %9277, %9278
  %9280 = fadd fast float %9279, 1.000000e+00
  br label %9281

; <label>:9281                                    ; preds = %9275, %9245
  %9282 = phi float [ %9280, %9275 ], [ %9252, %9245 ]
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  br i1 %2046, label %9285, label %9299

; <label>:9285                                    ; preds = %9281
  %9286 = fadd fast float %9264, %9265
  %9287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9288 = extractvalue %dx.types.CBufRet.f32 %9287, 3
  %9289 = extractvalue %dx.types.CBufRet.f32 %8330, 1
  %9290 = fsub fast float %8336, %8324
  %9291 = fadd fast float %9290, %8337
  %9292 = fsub fast float %9291, %9289
  %9293 = extractvalue %dx.types.CBufRet.f32 %8330, 2
  %9294 = fmul fast float %9292, %9293
  %9295 = call float @dx.op.unary.f32(i32 7, float %9294)  ; Saturate(value)
  %9296 = fsub fast float %9295, %9288
  %9297 = fmul fast float %9296, %9282
  %9298 = fadd fast float %9297, %9288
  br label %9302

; <label>:9299                                    ; preds = %9281
  %9300 = fmul fast float %9284, %9265
  %9301 = fmul fast float %9284, %9266
  br label %9302

; <label>:9302                                    ; preds = %9299, %9285
  %9303 = phi float [ %9286, %9285 ], [ %9264, %9299 ]
  %9304 = phi float [ %9298, %9285 ], [ %9300, %9299 ]
  %9305 = phi float [ 1.000000e+00, %9285 ], [ %9301, %9299 ]
  %9306 = fmul float %9284, %9303
  switch i32 %8251, label %9604 [
    i32 0, label %9619
    i32 1, label %9307
    i32 2, label %9308
    i32 3, label %9320
    i32 4, label %9329
    i32 5, label %9330
    i32 6, label %9331
    i32 12, label %9332
    i32 13, label %9333
    i32 14, label %9345
    i32 15, label %9357
    i32 16, label %9369
    i32 17, label %9370
    i32 63, label %9603
    i32 18, label %9371
    i32 25, label %9393
    i32 27, label %9394
    i32 28, label %9395
    i32 29, label %9396
    i32 31, label %9397
    i32 32, label %9420
    i32 33, label %9479
    i32 37, label %9497
    i32 38, label %9498
    i32 39, label %9507
    i32 40, label %9530
    i32 41, label %9534
    i32 52, label %9535
    i32 53, label %9536
    i32 54, label %9537
    i32 55, label %9538
    i32 56, label %9539
    i32 57, label %9541
    i32 58, label %9543
    i32 59, label %9581
    i32 60, label %9583
    i32 61, label %9585
    i32 64, label %9587
    i32 62, label %9602
  ]

; <label>:9307                                    ; preds = %9302
  br label %9604

; <label>:9308                                    ; preds = %9302
  %9309 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %9310 = call float @dx.op.unary.f32(i32 25, float %9309)  ; Rsqrt(value)
  %9311 = fmul fast float %1862, 5.000000e-01
  %9312 = fmul fast float %9311, %9310
  %9313 = fmul fast float %1863, 5.000000e-01
  %9314 = fmul fast float %9313, %9310
  %9315 = fmul fast float %1864, 5.000000e-01
  %9316 = fmul fast float %9315, %9310
  %9317 = fadd fast float %9312, 5.000000e-01
  %9318 = fadd fast float %9314, 5.000000e-01
  %9319 = fadd fast float %9316, 5.000000e-01
  br label %9604

; <label>:9320                                    ; preds = %9302
  %9321 = fcmp fast ole float %1992, 0x3FA4B5DCC0000000
  %9322 = fmul fast float %1992, 0x3FB3D07220000000
  %9323 = fadd fast float %1992, 0x3FAC28F5C0000000
  %9324 = fmul fast float %9323, 0x3FEE54EDE0000000
  %9325 = call float @dx.op.unary.f32(i32 23, float %9324)  ; Log(value)
  %9326 = fmul fast float %9325, 0x4003333340000000
  %9327 = call float @dx.op.unary.f32(i32 21, float %9326)  ; Exp(value)
  %9328 = select i1 %9321, float %9322, float %9327
  br label %9604

; <label>:9329                                    ; preds = %9302
  br label %9604

; <label>:9330                                    ; preds = %9302
  br label %9604

; <label>:9331                                    ; preds = %9302
  br label %9604

; <label>:9332                                    ; preds = %9302
  br label %9604

; <label>:9333                                    ; preds = %9302
  %9334 = and i32 %8320, 1023
  %9335 = uitofp i32 %9334 to float
  %9336 = lshr i32 %8320, 10
  %9337 = and i32 %9336, 1023
  %9338 = uitofp i32 %9337 to float
  %9339 = lshr i32 %8320, 20
  %9340 = and i32 %9339, 1023
  %9341 = uitofp i32 %9340 to float
  %9342 = fmul fast float %9335, 0x3F50040100000000
  %9343 = fmul fast float %9338, 0x3F50040100000000
  %9344 = fmul fast float %9341, 0x3F50040100000000
  br label %9604

; <label>:9345                                    ; preds = %9302
  %9346 = and i32 %8320, 1023
  %9347 = uitofp i32 %9346 to float
  %9348 = lshr i32 %8320, 10
  %9349 = and i32 %9348, 1023
  %9350 = uitofp i32 %9349 to float
  %9351 = lshr i32 %8320, 20
  %9352 = and i32 %9351, 1023
  %9353 = uitofp i32 %9352 to float
  %9354 = fmul fast float %9347, 0x3F50040100000000
  %9355 = fmul fast float %9350, 0x3F50040100000000
  %9356 = fmul fast float %9353, 0x3F50040100000000
  br label %9604

; <label>:9357                                    ; preds = %9302
  %9358 = and i32 %8320, 1023
  %9359 = uitofp i32 %9358 to float
  %9360 = lshr i32 %8320, 10
  %9361 = and i32 %9360, 1023
  %9362 = uitofp i32 %9361 to float
  %9363 = lshr i32 %8320, 20
  %9364 = and i32 %9363, 1023
  %9365 = uitofp i32 %9364 to float
  %9366 = fmul fast float %9359, 0x3F50040100000000
  %9367 = fmul fast float %9362, 0x3F50040100000000
  %9368 = fmul fast float %9365, 0x3F50040100000000
  br label %9604

; <label>:9369                                    ; preds = %9302
  br label %9604

; <label>:9370                                    ; preds = %9302
  br label %9604

; <label>:9371                                    ; preds = %9302
  %9372 = fcmp fast ogt float %1883, 0x3FB99999A0000000
  %9373 = fcmp fast ogt float %1884, 0x3FB99999A0000000
  %9374 = or i1 %9372, %9373
  %9375 = fcmp fast ogt float %1885, 0x3FB99999A0000000
  %9376 = or i1 %9374, %9375
  %9377 = fcmp fast olt float %1883, 0x3FB99999A0000000
  %9378 = fcmp fast olt float %1884, 0x3FB99999A0000000
  %9379 = or i1 %9377, %9378
  %9380 = fcmp fast olt float %1885, 0x3FB99999A0000000
  %9381 = or i1 %9379, %9380
  %9382 = fadd fast float %1883, %1874
  %9383 = fcmp fast ogt float %9382, 1.000000e+00
  %9384 = fadd fast float %1884, %1875
  %9385 = fcmp fast ogt float %9384, 1.000000e+00
  %9386 = or i1 %9383, %9385
  %9387 = fadd fast float %1885, %1876
  %9388 = fcmp fast ogt float %9387, 1.000000e+00
  %9389 = or i1 %9386, %9388
  %9390 = select i1 %9389, float 1.000000e+00, float 0.000000e+00
  %9391 = and i1 %9376, %9381
  %9392 = select i1 %9391, float 1.000000e+00, float 0.000000e+00
  br label %9604

; <label>:9393                                    ; preds = %9302
  br label %9604

; <label>:9394                                    ; preds = %9302
  br label %9604

; <label>:9395                                    ; preds = %9302
  br label %9604

; <label>:9396                                    ; preds = %9302
  br label %9604

; <label>:9397                                    ; preds = %9302
  %9398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9399 = extractvalue %dx.types.CBufRet.f32 %9398, 0
  %9400 = extractvalue %dx.types.CBufRet.f32 %9398, 2
  %9401 = extractvalue %dx.types.CBufRet.f32 %9398, 3
  %9402 = fcmp fast olt float %1992, %9399
  br i1 %9402, label %9403, label %9417

; <label>:9403                                    ; preds = %11292, %11290, %9417, %9397
  %9404 = phi i32 [ 0, %9397 ], [ 1, %9417 ], [ 2, %11290 ], [ 3, %11292 ]
  %9405 = mul i32 %9404, 3
  %9406 = add i32 0, %9405
  %9407 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9406
  %9408 = load float, float* %9407, align 4
  %9409 = mul i32 %9404, 3
  %9410 = add i32 1, %9409
  %9411 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9410
  %9412 = load float, float* %9411, align 4
  %9413 = mul i32 %9404, 3
  %9414 = add i32 2, %9413
  %9415 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9414
  %9416 = load float, float* %9415, align 4
  br label %9604

; <label>:9417                                    ; preds = %9397
  %9418 = extractvalue %dx.types.CBufRet.f32 %9398, 1
  %9419 = fcmp fast olt float %1992, %9418
  br i1 %9419, label %9403, label %11290

; <label>:9420                                    ; preds = %9302
  %9421 = fcmp fast ole float %1874, 0x3F69A5C380000000
  %9422 = fcmp fast ole float %1875, 0x3F69A5C380000000
  %9423 = fcmp fast ole float %1876, 0x3F69A5C380000000
  %9424 = fmul fast float %1874, 0x4029D70A40000000
  %9425 = fmul fast float %1875, 0x4029D70A40000000
  %9426 = fmul fast float %1876, 0x4029D70A40000000
  %9427 = call float @dx.op.unary.f32(i32 23, float %1874)  ; Log(value)
  %9428 = call float @dx.op.unary.f32(i32 23, float %1875)  ; Log(value)
  %9429 = call float @dx.op.unary.f32(i32 23, float %1876)  ; Log(value)
  %9430 = fmul fast float %9427, 0x3FDAAAAAA0000000
  %9431 = fmul fast float %9428, 0x3FDAAAAAA0000000
  %9432 = fmul fast float %9429, 0x3FDAAAAAA0000000
  %9433 = call float @dx.op.unary.f32(i32 21, float %9430)  ; Exp(value)
  %9434 = call float @dx.op.unary.f32(i32 21, float %9431)  ; Exp(value)
  %9435 = call float @dx.op.unary.f32(i32 21, float %9432)  ; Exp(value)
  %9436 = fmul fast float %9433, 0x3FF0E147A0000000
  %9437 = fmul fast float %9434, 0x3FF0E147A0000000
  %9438 = fmul fast float %9435, 0x3FF0E147A0000000
  %9439 = fadd fast float %9436, 0xBFAC28F5C0000000
  %9440 = fadd fast float %9437, 0xBFAC28F5C0000000
  %9441 = fadd fast float %9438, 0xBFAC28F5C0000000
  %9442 = select i1 %9421, float %9424, float %9439
  %9443 = select i1 %9422, float %9425, float %9440
  %9444 = select i1 %9423, float %9426, float %9441
  %9445 = call float @dx.op.dot3.f32(i32 55, float %9442, float %9443, float %9444, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9446 = fcmp fast olt float %9445, 0x3FA0101020000000
  br i1 %9446, label %9455, label %9447

; <label>:9447                                    ; preds = %9420
  %9448 = fcmp fast ogt float %9445, 0x3FEEFEFF00000000
  br i1 %9448, label %9455, label %9449

; <label>:9449                                    ; preds = %9447
  %9450 = fcmp fast ogt float %9445, 0x3FEF5F5F60000000
  br i1 %9450, label %9455, label %9451

; <label>:9451                                    ; preds = %9449
  %9452 = fadd fast float %9445, %9445
  %9453 = fcmp fast ogt float %9452, 2.550000e+02
  br i1 %9453, label %9454, label %9455

; <label>:9454                                    ; preds = %9451
  br label %9455

; <label>:9455                                    ; preds = %9454, %9451, %9449, %9447, %9420
  %9456 = phi float [ 1.000000e+00, %9454 ], [ %9306, %9451 ], [ 1.000000e+00, %9420 ], [ 0x3FBD1D1D20000000, %9447 ], [ 0.000000e+00, %9449 ]
  %9457 = phi float [ 0.000000e+00, %9454 ], [ %9304, %9451 ], [ 0x3FE6666660000000, %9420 ], [ 1.000000e+00, %9447 ], [ 0.000000e+00, %9449 ]
  %9458 = phi float [ 1.000000e+00, %9454 ], [ %9305, %9451 ], [ 0.000000e+00, %9420 ], [ 0x3FDD5D5D60000000, %9447 ], [ 1.000000e+00, %9449 ]
  %9459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %9460 = extractvalue %dx.types.CBufRet.f32 %9459, 3
  %9461 = fmul fast float %9460, 8.000000e+00
  %9462 = fmul fast float %99, 5.000000e+02
  %9463 = fmul fast float %9462, %9160
  %9464 = fsub fast float %9463, %9461
  %9465 = call float @dx.op.unary.f32(i32 13, float %9464)  ; Sin(value)
  %9466 = fmul fast float %9465, %9465
  %9467 = fmul fast float %9466, 2.000000e+00
  %9468 = fadd fast float %9467, -1.000000e+00
  %9469 = call float @dx.op.unary.f32(i32 7, float %9468)  ; Saturate(value)
  %9470 = fsub fast float %9456, %9306
  %9471 = fsub fast float %9457, %9304
  %9472 = fsub fast float %9458, %9305
  %9473 = fmul fast float %9469, %9470
  %9474 = fmul fast float %9469, %9471
  %9475 = fmul fast float %9469, %9472
  %9476 = fadd fast float %9473, %9306
  %9477 = fadd fast float %9474, %9304
  %9478 = fadd fast float %9475, %9305
  br label %9604

; <label>:9479                                    ; preds = %9302
  %9480 = fcmp fast olt float %87, 1.280000e+02
  br i1 %9480, label %9481, label %9495

; <label>:9481                                    ; preds = %11308, %11306, %11304, %11302, %11300, %11298, %11296, %11294, %9495, %9479
  %9482 = phi i32 [ 0, %9479 ], [ 1, %9495 ], [ 2, %11294 ], [ 3, %11296 ], [ 4, %11298 ], [ 5, %11300 ], [ 6, %11302 ], [ 7, %11304 ], [ 8, %11306 ], [ 9, %11308 ]
  %9483 = mul i32 %9482, 3
  %9484 = add i32 0, %9483
  %9485 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9484
  %9486 = load float, float* %9485, align 4
  %9487 = mul i32 %9482, 3
  %9488 = add i32 1, %9487
  %9489 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9488
  %9490 = load float, float* %9489, align 4
  %9491 = mul i32 %9482, 3
  %9492 = add i32 2, %9491
  %9493 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9492
  %9494 = load float, float* %9493, align 4
  br label %9604

; <label>:9495                                    ; preds = %9479
  %9496 = fcmp fast olt float %87, 2.560000e+02
  br i1 %9496, label %9481, label %11294

; <label>:9497                                    ; preds = %9302
  br label %9604

; <label>:9498                                    ; preds = %9302
  %9499 = bitcast i32 %8320 to float
  %9500 = fcmp fast ogt float %9499, 0.000000e+00
  %9501 = select i1 %9500, float 0.000000e+00, float 1.000000e+00
  %9502 = fcmp fast olt float %9499, 1.000000e+00
  %9503 = select i1 %9502, float 1.000000e+00, float 0.000000e+00
  %9504 = select i1 %9502, float %9501, float 0.000000e+00
  %9505 = fmul fast float %9503, %1992
  %9506 = fmul fast float %9504, %1992
  br label %9604

; <label>:9507                                    ; preds = %9302
  %9508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9509 = extractvalue %dx.types.CBufRet.f32 %9508, 0
  %9510 = extractvalue %dx.types.CBufRet.f32 %9508, 2
  %9511 = extractvalue %dx.types.CBufRet.f32 %9508, 3
  %9512 = fcmp fast olt float %8341, %9509
  br i1 %9512, label %9513, label %9527

; <label>:9513                                    ; preds = %11312, %11310, %9527, %9507
  %9514 = phi i32 [ 0, %9507 ], [ 1, %9527 ], [ 2, %11310 ], [ 3, %11312 ]
  %9515 = mul i32 %9514, 3
  %9516 = add i32 0, %9515
  %9517 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9516
  %9518 = load float, float* %9517, align 4
  %9519 = mul i32 %9514, 3
  %9520 = add i32 1, %9519
  %9521 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9520
  %9522 = load float, float* %9521, align 4
  %9523 = mul i32 %9514, 3
  %9524 = add i32 2, %9523
  %9525 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9524
  %9526 = load float, float* %9525, align 4
  br label %9604

; <label>:9527                                    ; preds = %9507
  %9528 = extractvalue %dx.types.CBufRet.f32 %9508, 1
  %9529 = fcmp fast olt float %8341, %9528
  br i1 %9529, label %9513, label %11310

; <label>:9530                                    ; preds = %9302
  %9531 = fadd fast float %8341, -5.000000e-01
  %9532 = fmul fast float %9531, 2.000000e+00
  %9533 = call float @dx.op.unary.f32(i32 7, float %9532)  ; Saturate(value)
  br label %9604

; <label>:9534                                    ; preds = %9302
  br label %9604

; <label>:9535                                    ; preds = %9302
  br label %9604

; <label>:9536                                    ; preds = %9302
  br label %9604

; <label>:9537                                    ; preds = %9302
  br label %9604

; <label>:9538                                    ; preds = %9302
  br label %9604

; <label>:9539                                    ; preds = %9302
  %9540 = bitcast i32 %8320 to float
  br label %9604

; <label>:9541                                    ; preds = %9302
  %9542 = bitcast i32 %8320 to float
  br label %9604

; <label>:9543                                    ; preds = %9302
  %9544 = and i32 %8320, 65535
  %9545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9544)  ; LegacyF16ToF32(value)
  %9546 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9547 = fptosi float %9546 to i32
  %9548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9549 = extractvalue %dx.types.CBufRet.f32 %9548, 0
  %9550 = extractvalue %dx.types.CBufRet.f32 %9548, 1
  %9551 = extractvalue %dx.types.CBufRet.f32 %9548, 2
  %9552 = fadd fast float %9549, %153
  %9553 = fadd fast float %9550, %154
  %9554 = fadd fast float %9551, %155
  %9555 = fptosi float %9552 to i32
  %9556 = fptosi float %9553 to i32
  %9557 = fptosi float %9554 to i32
  %9558 = xor i32 %9555, %9556
  %9559 = lshr i32 %9558, 1
  %9560 = and i32 %9559, 1
  %9561 = lshr i32 %9557, 1
  %9562 = and i32 %9561, 1
  %9563 = xor i32 %9562, 1
  %9564 = icmp ne i32 %9560, %9563
  switch i32 %9547, label %9604 [
    i32 -1, label %9565
    i32 -2, label %9566
    i32 -3, label %9568
    i32 -4, label %9570
    i32 -5, label %9572
    i32 -6, label %9573
    i32 -7, label %9574
  ]

; <label>:9565                                    ; preds = %9543
  br label %9604

; <label>:9566                                    ; preds = %9543
  %9567 = select i1 %9564, float 1.000000e+00, float 0.000000e+00
  br label %9604

; <label>:9568                                    ; preds = %9543
  %9569 = select i1 %9564, float 1.000000e+00, float 0.000000e+00
  br label %9604

; <label>:9570                                    ; preds = %9543
  %9571 = select i1 %9564, float 1.000000e+00, float 0.000000e+00
  br label %9604

; <label>:9572                                    ; preds = %9543
  br label %9604

; <label>:9573                                    ; preds = %9543
  br label %9604

; <label>:9574                                    ; preds = %9543
  %9575 = lshr i32 %8320, 16
  %9576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9575)  ; LegacyF16ToF32(value)
  %9577 = fmul fast float %9576, 0x3FD5555560000000
  %9578 = fsub fast float 1.000000e+00, %9577
  %9579 = fmul fast float %9577, %9545
  %9580 = fmul fast float %9578, %9545
  br label %9604

; <label>:9581                                    ; preds = %9302
  %9582 = bitcast i32 %8320 to float
  br label %9604

; <label>:9583                                    ; preds = %9302
  %9584 = bitcast i32 %8320 to float
  br label %9604

; <label>:9585                                    ; preds = %9302
  %9586 = bitcast i32 %8320 to float
  br label %9604

; <label>:9587                                    ; preds = %9302
  %9588 = and i32 %8320, 1023
  %9589 = uitofp i32 %9588 to float
  %9590 = lshr i32 %8320, 10
  %9591 = and i32 %9590, 1023
  %9592 = uitofp i32 %9591 to float
  %9593 = lshr i32 %8320, 20
  %9594 = and i32 %9593, 1023
  %9595 = uitofp i32 %9594 to float
  %9596 = fmul fast float %9589, 0x3F60040100000000
  %9597 = fmul fast float %9592, 0x3F60040100000000
  %9598 = fmul fast float %9595, 0x3F60040100000000
  %9599 = fadd fast float %9596, -1.000000e+00
  %9600 = fadd fast float %9597, -1.000000e+00
  %9601 = fadd fast float %9598, -1.000000e+00
  br label %9604

; <label>:9602                                    ; preds = %9302
  br label %9604

; <label>:9603                                    ; preds = %9302
  br label %9604

; <label>:9604                                    ; preds = %11312, %11308, %11292, %9603, %9602, %9587, %9585, %9583, %9581, %9574, %9573, %9572, %9570, %9568, %9566, %9565, %9543, %9541, %9539, %9538, %9537, %9536, %9535, %9534, %9530, %9513, %9498, %9497, %9481, %9455, %9403, %9396, %9395, %9394, %9393, %9371, %9370, %9369, %9357, %9345, %9333, %9332, %9331, %9330, %9329, %9320, %9308, %9307, %9302
  %9605 = phi float [ %9306, %9302 ], [ 0.000000e+00, %9602 ], [ %9599, %9587 ], [ %9586, %9585 ], [ %9584, %9583 ], [ %9582, %9581 ], [ %9306, %9543 ], [ 0.000000e+00, %9574 ], [ %9545, %9573 ], [ %9545, %9572 ], [ 0.000000e+00, %9570 ], [ %9569, %9568 ], [ %9567, %9566 ], [ %9545, %9565 ], [ %9542, %9541 ], [ %9540, %9539 ], [ 0.000000e+00, %9538 ], [ 0.000000e+00, %9537 ], [ 0.000000e+00, %9536 ], [ %153, %9534 ], [ %9533, %9530 ], [ %9505, %9498 ], [ 0.000000e+00, %9497 ], [ %9476, %9455 ], [ 0.000000e+00, %9396 ], [ 0.000000e+00, %9395 ], [ 0.000000e+00, %9394 ], [ 1.000000e+00, %9393 ], [ 0.000000e+00, %9603 ], [ 1.000000e+00, %9370 ], [ 5.000000e-01, %9369 ], [ %9366, %9357 ], [ %9354, %9345 ], [ %9342, %9333 ], [ %1995, %9332 ], [ %1993, %9331 ], [ %1883, %9330 ], [ %1820, %9329 ], [ %9328, %9320 ], [ %9317, %9308 ], [ %1874, %9307 ], [ %9408, %9403 ], [ %9486, %9481 ], [ %9518, %9513 ], [ 0.000000e+00, %9535 ], [ 1.000000e+00, %11292 ], [ 1.000000e+00, %11308 ], [ 1.000000e+00, %11312 ], [ %9390, %9371 ]
  %9606 = phi float [ %9304, %9302 ], [ 0.000000e+00, %9602 ], [ %9600, %9587 ], [ %9586, %9585 ], [ %9584, %9583 ], [ %9582, %9581 ], [ %9304, %9543 ], [ %9579, %9574 ], [ %9545, %9573 ], [ %9545, %9572 ], [ 0.000000e+00, %9570 ], [ 0.000000e+00, %9568 ], [ 0.000000e+00, %9566 ], [ %9545, %9565 ], [ %9542, %9541 ], [ %9540, %9539 ], [ 0.000000e+00, %9538 ], [ 0.000000e+00, %9537 ], [ 0.000000e+00, %9536 ], [ %154, %9534 ], [ %9533, %9530 ], [ %1992, %9498 ], [ 0.000000e+00, %9497 ], [ %9477, %9455 ], [ 1.000000e+00, %9396 ], [ 1.000000e+00, %9395 ], [ 1.000000e+00, %9394 ], [ 0x3FE6666660000000, %9393 ], [ 0.000000e+00, %9603 ], [ 1.000000e+00, %9370 ], [ 5.000000e-01, %9369 ], [ %9367, %9357 ], [ %9355, %9345 ], [ %9343, %9333 ], [ %1995, %9332 ], [ %1993, %9331 ], [ %1884, %9330 ], [ %1821, %9329 ], [ %9328, %9320 ], [ %9318, %9308 ], [ %1875, %9307 ], [ %9412, %9403 ], [ %9490, %9481 ], [ %9522, %9513 ], [ 0.000000e+00, %9535 ], [ 0.000000e+00, %11292 ], [ 0.000000e+00, %11308 ], [ 0.000000e+00, %11312 ], [ 0.000000e+00, %9371 ]
  %9607 = phi float [ %9305, %9302 ], [ 0.000000e+00, %9602 ], [ %9601, %9587 ], [ %9586, %9585 ], [ %9584, %9583 ], [ %9582, %9581 ], [ %9305, %9543 ], [ %9580, %9574 ], [ %9545, %9573 ], [ 0.000000e+00, %9572 ], [ %9571, %9570 ], [ 0.000000e+00, %9568 ], [ %9567, %9566 ], [ %9545, %9565 ], [ %9542, %9541 ], [ %9540, %9539 ], [ 0.000000e+00, %9538 ], [ 0.000000e+00, %9537 ], [ 0.000000e+00, %9536 ], [ %155, %9534 ], [ %9533, %9530 ], [ %9506, %9498 ], [ 0.000000e+00, %9497 ], [ %9478, %9455 ], [ 0.000000e+00, %9396 ], [ 0.000000e+00, %9395 ], [ 0.000000e+00, %9394 ], [ 0.000000e+00, %9393 ], [ 0.000000e+00, %9603 ], [ 1.000000e+00, %9370 ], [ 5.000000e-01, %9369 ], [ %9368, %9357 ], [ %9356, %9345 ], [ %9344, %9333 ], [ %1995, %9332 ], [ %1993, %9331 ], [ %1885, %9330 ], [ %1822, %9329 ], [ %9328, %9320 ], [ %9319, %9308 ], [ %1876, %9307 ], [ %9416, %9403 ], [ %9494, %9481 ], [ %9526, %9513 ], [ 1.000000e+00, %9535 ], [ 0.000000e+00, %11292 ], [ 0.000000e+00, %11308 ], [ 0.000000e+00, %11312 ], [ %9392, %9371 ]
  %9608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9609 = extractvalue %dx.types.CBufRet.f32 %9608, 3
  %9610 = fsub fast float %9605, %9306
  %9611 = fsub fast float %9606, %9304
  %9612 = fsub fast float %9607, %9305
  %9613 = fmul fast float %9609, %9610
  %9614 = fmul fast float %9609, %9611
  %9615 = fmul fast float %9609, %9612
  %9616 = fadd fast float %9613, %9306
  %9617 = fadd fast float %9614, %9304
  %9618 = fadd fast float %9615, %9305
  br label %9619

; <label>:9619                                    ; preds = %9604, %9302
  %9620 = phi float [ %9616, %9604 ], [ %9306, %9302 ]
  %9621 = phi float [ %9617, %9604 ], [ %9304, %9302 ]
  %9622 = phi float [ %9618, %9604 ], [ %9305, %9302 ]
  %9623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9624 = extractvalue %dx.types.CBufRet.f32 %9623, 0
  %9625 = bitcast float %9624 to i32
  %9626 = lshr i32 %9625, 8
  %9627 = and i32 %9626, 255
  %9628 = uitofp i32 %9627 to float
  %9629 = fptoui float %9628 to i32
  switch i32 %9629, label %9866 [
    i32 1, label %9630
    i32 2, label %9636
    i32 3, label %9642
    i32 4, label %9648
    i32 5, label %9654
    i32 6, label %9660
    i32 7, label %9666
    i32 8, label %9672
    i32 9, label %9678
    i32 10, label %9680
    i32 11, label %9701
    i32 12, label %9722
    i32 13, label %9734
    i32 14, label %9749
    i32 15, label %9754
    i32 16, label %9756
    i32 17, label %9758
    i32 18, label %9760
    i32 19, label %9762
    i32 20, label %9773
    i32 21, label %9784
    i32 22, label %9796
    i32 23, label %9830
    i32 24, label %9845
    i32 25, label %9860
    i32 26, label %9862
    i32 27, label %9864
  ]

; <label>:9630                                    ; preds = %9619
  %9631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9632 = extractvalue %dx.types.CBufRet.f32 %9631, 0
  %9633 = fmul fast float %9632, %7661
  %9634 = fmul fast float %9632, %7662
  %9635 = fmul fast float %9632, %7663
  br label %9866

; <label>:9636                                    ; preds = %9619
  %9637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9638 = extractvalue %dx.types.CBufRet.f32 %9637, 0
  %9639 = fmul fast float %9638, %7658
  %9640 = fmul fast float %9638, %7659
  %9641 = fmul fast float %9638, %7660
  br label %9866

; <label>:9642                                    ; preds = %9619
  %9643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9644 = extractvalue %dx.types.CBufRet.f32 %9643, 0
  %9645 = fmul fast float %9644, %1820
  %9646 = fmul fast float %9644, %1821
  %9647 = fmul fast float %9644, %1822
  br label %9866

; <label>:9648                                    ; preds = %9619
  %9649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9650 = extractvalue %dx.types.CBufRet.f32 %9649, 0
  %9651 = fmul fast float %9650, %7655
  %9652 = fmul fast float %9650, %7656
  %9653 = fmul fast float %9650, %7657
  br label %9866

; <label>:9654                                    ; preds = %9619
  %9655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9656 = extractvalue %dx.types.CBufRet.f32 %9655, 0
  %9657 = fmul fast float %9656, %7652
  %9658 = fmul fast float %9656, %7653
  %9659 = fmul fast float %9656, %7654
  br label %9866

; <label>:9660                                    ; preds = %9619
  %9661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9662 = extractvalue %dx.types.CBufRet.f32 %9661, 0
  %9663 = fmul fast float %9662, %4951
  %9664 = fmul fast float %9662, %4952
  %9665 = fmul fast float %9662, %4953
  br label %9866

; <label>:9666                                    ; preds = %9619
  %9667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9668 = extractvalue %dx.types.CBufRet.f32 %9667, 0
  %9669 = fmul fast float %9668, %4951
  %9670 = fmul fast float %9668, %4952
  %9671 = fmul fast float %9668, %4953
  br label %9866

; <label>:9672                                    ; preds = %9619
  %9673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9674 = extractvalue %dx.types.CBufRet.f32 %9673, 0
  %9675 = fmul fast float %4954, %9674
  %9676 = fmul fast float %4955, %9674
  %9677 = fmul fast float %4956, %9674
  br label %9866

; <label>:9678                                    ; preds = %9619
  %9679 = bitcast i32 %8320 to float
  br label %9866

; <label>:9680                                    ; preds = %9619
  %9681 = and i32 %8320, 1023
  %9682 = uitofp i32 %9681 to float
  %9683 = lshr i32 %8320, 10
  %9684 = and i32 %9683, 1023
  %9685 = uitofp i32 %9684 to float
  %9686 = lshr i32 %8320, 20
  %9687 = and i32 %9686, 1023
  %9688 = uitofp i32 %9687 to float
  %9689 = fmul fast float %9682, 0x3F60040100000000
  %9690 = fmul fast float %9685, 0x3F60040100000000
  %9691 = fmul fast float %9688, 0x3F60040100000000
  %9692 = fadd fast float %9689, -1.000000e+00
  %9693 = fadd fast float %9690, -1.000000e+00
  %9694 = fadd fast float %9691, -1.000000e+00
  %9695 = fcmp fast ogt float %9692, 0.000000e+00
  %9696 = select i1 %9695, float 1.000000e+00, float 0.000000e+00
  %9697 = fcmp fast ogt float %9693, 0.000000e+00
  %9698 = select i1 %9697, float 1.000000e+00, float 0.000000e+00
  %9699 = fcmp fast ogt float %9694, 0.000000e+00
  %9700 = select i1 %9699, float 1.000000e+00, float 0.000000e+00
  br label %9866

; <label>:9701                                    ; preds = %9619
  %9702 = and i32 %8320, 1023
  %9703 = uitofp i32 %9702 to float
  %9704 = lshr i32 %8320, 10
  %9705 = and i32 %9704, 1023
  %9706 = uitofp i32 %9705 to float
  %9707 = lshr i32 %8320, 20
  %9708 = and i32 %9707, 1023
  %9709 = uitofp i32 %9708 to float
  %9710 = fmul fast float %9703, 0x3F60040100000000
  %9711 = fmul fast float %9706, 0x3F60040100000000
  %9712 = fmul fast float %9709, 0x3F60040100000000
  %9713 = fadd fast float %9710, -1.000000e+00
  %9714 = fadd fast float %9711, -1.000000e+00
  %9715 = fadd fast float %9712, -1.000000e+00
  %9716 = fmul fast float %9715, %9714
  %9717 = fsub fast float %9715, %9716
  %9718 = fmul fast float %9714, %9713
  %9719 = fmul fast float %9717, %9713
  %9720 = fsub fast float %9714, %9718
  %9721 = fsub fast float %9717, %9719
  br label %9866

; <label>:9722                                    ; preds = %9619
  %9723 = and i32 %8320, 255
  %9724 = uitofp i32 %9723 to float
  %9725 = fmul fast float %9724, 0x3F70101020000000
  %9726 = lshr i32 %8320, 8
  %9727 = and i32 %9726, 255
  %9728 = uitofp i32 %9727 to float
  %9729 = fmul fast float %9728, 0x3F70101020000000
  %9730 = lshr i32 %8320, 16
  %9731 = and i32 %9730, 255
  %9732 = uitofp i32 %9731 to float
  %9733 = fmul fast float %9732, 0x3F70101020000000
  br label %9866

; <label>:9734                                    ; preds = %9619
  %9735 = and i32 %8320, 1023
  %9736 = uitofp i32 %9735 to float
  %9737 = lshr i32 %8320, 10
  %9738 = and i32 %9737, 1023
  %9739 = uitofp i32 %9738 to float
  %9740 = lshr i32 %8320, 20
  %9741 = and i32 %9740, 1023
  %9742 = uitofp i32 %9741 to float
  %9743 = fmul fast float %9736, 0x3F60040100000000
  %9744 = fmul fast float %9739, 0x3F60040100000000
  %9745 = fmul fast float %9742, 0x3F60040100000000
  %9746 = fadd fast float %9743, -1.000000e+00
  %9747 = fadd fast float %9744, -1.000000e+00
  %9748 = fadd fast float %9745, -1.000000e+00
  br label %9866

; <label>:9749                                    ; preds = %9619
  %9750 = icmp ne i32 %8320, 0
  %9751 = select i1 %9750, float 1.000000e+00, float %9620
  %9752 = select i1 %9750, float 0.000000e+00, float %9621
  %9753 = select i1 %9750, float 0.000000e+00, float %9622
  br label %9866

; <label>:9754                                    ; preds = %9619
  %9755 = bitcast i32 %8320 to float
  br label %9866

; <label>:9756                                    ; preds = %9619
  %9757 = bitcast i32 %8320 to float
  br label %9866

; <label>:9758                                    ; preds = %9619
  %9759 = bitcast i32 %8320 to float
  br label %9866

; <label>:9760                                    ; preds = %9619
  %9761 = bitcast i32 %8320 to float
  br label %9866

; <label>:9762                                    ; preds = %9619
  %9763 = and i32 %8320, 65535
  %9764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9763)  ; LegacyF16ToF32(value)
  %9765 = lshr i32 %8320, 16
  %9766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9765)  ; LegacyF16ToF32(value)
  %9767 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9769 = extractvalue %dx.types.CBufRet.f32 %9768, 0
  %9770 = fmul fast float %9769, %9764
  %9771 = fmul fast float %9769, %9766
  %9772 = fmul fast float %9769, %9767
  br label %9866

; <label>:9773                                    ; preds = %9619
  %9774 = and i32 %8320, 65535
  %9775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9774)  ; LegacyF16ToF32(value)
  %9776 = lshr i32 %8320, 16
  %9777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9776)  ; LegacyF16ToF32(value)
  %9778 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9780 = extractvalue %dx.types.CBufRet.f32 %9779, 0
  %9781 = fmul fast float %9780, %9775
  %9782 = fmul fast float %9780, %9777
  %9783 = fmul fast float %9780, %9778
  br label %9866

; <label>:9784                                    ; preds = %9619
  %9785 = and i32 %8320, 1023
  %9786 = uitofp i32 %9785 to float
  %9787 = lshr i32 %8320, 10
  %9788 = and i32 %9787, 1023
  %9789 = uitofp i32 %9788 to float
  %9790 = lshr i32 %8320, 20
  %9791 = and i32 %9790, 1023
  %9792 = uitofp i32 %9791 to float
  %9793 = fmul fast float %9786, 0x3F50040100000000
  %9794 = fmul fast float %9789, 0x3F50040100000000
  %9795 = fmul fast float %9792, 0x3F50040100000000
  br label %9866

; <label>:9796                                    ; preds = %9619
  %9797 = and i32 %8320, 1023
  %9798 = uitofp i32 %9797 to float
  %9799 = lshr i32 %8320, 10
  %9800 = and i32 %9799, 1023
  %9801 = uitofp i32 %9800 to float
  %9802 = lshr i32 %8320, 20
  %9803 = and i32 %9802, 1023
  %9804 = uitofp i32 %9803 to float
  %9805 = fmul fast float %9798, 0x3F60040100000000
  %9806 = fmul fast float %9801, 0x3F60040100000000
  %9807 = fmul fast float %9804, 0x3F60040100000000
  %9808 = fadd fast float %9805, -1.000000e+00
  %9809 = fadd fast float %9806, -1.000000e+00
  %9810 = fadd fast float %9807, -1.000000e+00
  %9811 = call float @dx.op.binary.f32(i32 35, float %9809, float %9810)  ; FMax(a,b)
  %9812 = call float @dx.op.binary.f32(i32 35, float %9808, float %9811)  ; FMax(a,b)
  %9813 = fmul fast float %9812, 2.000000e+00
  %9814 = call float @dx.op.unary.f32(i32 7, float %9813)  ; Saturate(value)
  %9815 = fmul fast float %9798, 0x3F94050140000000
  %9816 = fadd fast float %9815, -1.000000e+01
  %9817 = fmul fast float %9801, 0x3F94050140000000
  %9818 = fadd fast float %9817, -1.000000e+01
  %9819 = fmul fast float %9804, 0x3F94050140000000
  %9820 = fadd fast float %9819, -1.000000e+01
  %9821 = fsub fast float %9816, %9620
  %9822 = fsub fast float %9818, %9621
  %9823 = fsub fast float %9820, %9622
  %9824 = fmul fast float %9814, %9821
  %9825 = fmul fast float %9814, %9822
  %9826 = fmul fast float %9814, %9823
  %9827 = fadd fast float %9824, %9620
  %9828 = fadd fast float %9825, %9621
  %9829 = fadd fast float %9826, %9622
  br label %9866

; <label>:9830                                    ; preds = %9619
  %9831 = and i32 %8320, 1023
  %9832 = uitofp i32 %9831 to float
  %9833 = lshr i32 %8320, 10
  %9834 = and i32 %9833, 1023
  %9835 = uitofp i32 %9834 to float
  %9836 = lshr i32 %8320, 20
  %9837 = and i32 %9836, 1023
  %9838 = uitofp i32 %9837 to float
  %9839 = fmul fast float %9832, 0x3F60040100000000
  %9840 = fmul fast float %9835, 0x3F60040100000000
  %9841 = fmul fast float %9838, 0x3F60040100000000
  %9842 = fadd fast float %9839, -1.000000e+00
  %9843 = fadd fast float %9840, -1.000000e+00
  %9844 = fadd fast float %9841, -1.000000e+00
  br label %9866

; <label>:9845                                    ; preds = %9619
  %9846 = and i32 %8320, 1023
  %9847 = uitofp i32 %9846 to float
  %9848 = lshr i32 %8320, 10
  %9849 = and i32 %9848, 1023
  %9850 = uitofp i32 %9849 to float
  %9851 = lshr i32 %8320, 20
  %9852 = and i32 %9851, 1023
  %9853 = uitofp i32 %9852 to float
  %9854 = fmul fast float %9847, 0x3F60040100000000
  %9855 = fmul fast float %9850, 0x3F60040100000000
  %9856 = fmul fast float %9853, 0x3F60040100000000
  %9857 = fadd fast float %9854, -1.000000e+00
  %9858 = fadd fast float %9855, -1.000000e+00
  %9859 = fadd fast float %9856, -1.000000e+00
  br label %9866

; <label>:9860                                    ; preds = %9619
  %9861 = bitcast i32 %8320 to float
  br label %9866

; <label>:9862                                    ; preds = %9619
  %9863 = bitcast i32 %8320 to float
  br label %9866

; <label>:9864                                    ; preds = %9619
  %9865 = bitcast i32 %8320 to float
  br label %9866

; <label>:9866                                    ; preds = %9864, %9862, %9860, %9845, %9830, %9796, %9784, %9773, %9762, %9760, %9758, %9756, %9754, %9749, %9734, %9722, %9701, %9680, %9678, %9672, %9666, %9660, %9654, %9648, %9642, %9636, %9630, %9619
  %9867 = phi float [ %9620, %9619 ], [ %9865, %9864 ], [ %9863, %9862 ], [ %9861, %9860 ], [ %9857, %9845 ], [ %9842, %9830 ], [ %9827, %9796 ], [ %9793, %9784 ], [ %9781, %9773 ], [ %9770, %9762 ], [ %9761, %9760 ], [ %9759, %9758 ], [ %9757, %9756 ], [ %9755, %9754 ], [ %9746, %9734 ], [ %9725, %9722 ], [ %9713, %9701 ], [ %9696, %9680 ], [ %9679, %9678 ], [ %9675, %9672 ], [ %9669, %9666 ], [ %9663, %9660 ], [ %9657, %9654 ], [ %9651, %9648 ], [ %9645, %9642 ], [ %9639, %9636 ], [ %9633, %9630 ], [ %9751, %9749 ]
  %9868 = phi float [ %9621, %9619 ], [ %9865, %9864 ], [ %9863, %9862 ], [ %9861, %9860 ], [ %9858, %9845 ], [ %9843, %9830 ], [ %9828, %9796 ], [ %9794, %9784 ], [ %9782, %9773 ], [ %9771, %9762 ], [ %9761, %9760 ], [ %9759, %9758 ], [ %9757, %9756 ], [ %9755, %9754 ], [ %9747, %9734 ], [ %9729, %9722 ], [ %9720, %9701 ], [ %9698, %9680 ], [ %9679, %9678 ], [ %9676, %9672 ], [ %9670, %9666 ], [ %9664, %9660 ], [ %9658, %9654 ], [ %9652, %9648 ], [ %9646, %9642 ], [ %9640, %9636 ], [ %9634, %9630 ], [ %9752, %9749 ]
  %9869 = phi float [ %9622, %9619 ], [ %9865, %9864 ], [ %9863, %9862 ], [ %9861, %9860 ], [ %9859, %9845 ], [ %9844, %9830 ], [ %9829, %9796 ], [ %9795, %9784 ], [ %9783, %9773 ], [ %9772, %9762 ], [ %9761, %9760 ], [ %9759, %9758 ], [ %9757, %9756 ], [ %9755, %9754 ], [ %9748, %9734 ], [ %9733, %9722 ], [ %9721, %9701 ], [ %9700, %9680 ], [ %9679, %9678 ], [ %9677, %9672 ], [ %9671, %9666 ], [ %9665, %9660 ], [ %9659, %9654 ], [ %9653, %9648 ], [ %9647, %9642 ], [ %9641, %9636 ], [ %9635, %9630 ], [ %9753, %9749 ]
  %9870 = extractvalue %dx.types.CBufRet.f32 %9623, 3
  %9871 = fsub fast float %9867, %9620
  %9872 = fsub fast float %9868, %9621
  %9873 = fsub fast float %9869, %9622
  %9874 = fmul fast float %9870, %9871
  %9875 = fmul fast float %9870, %9872
  %9876 = fmul fast float %9870, %9873
  %9877 = fadd fast float %9874, %9620
  %9878 = fadd fast float %9875, %9621
  %9879 = fadd fast float %9876, %9622
  %9880 = lshr i32 %9625, 16
  %9881 = and i32 %9880, 255
  %9882 = uitofp i32 %9881 to float
  %9883 = fptoui float %9882 to i32
  switch i32 %9883, label %9930 [
    i32 16, label %9915
    i32 12, label %9914
    i32 3, label %9884
    i32 4, label %9885
    i32 15, label %9886
    i32 5, label %9895
    i32 6, label %9904
    i32 7, label %9913
    i32 11, label %9914
  ]

; <label>:9884                                    ; preds = %9866
  br label %9930

; <label>:9885                                    ; preds = %9866
  br label %9930

; <label>:9886                                    ; preds = %9866
  %9887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %9888 = extractvalue %dx.types.CBufRet.f32 %9887, 0
  %9889 = fadd fast float %9888, %9877
  %9890 = fadd fast float %9888, %9878
  %9891 = fadd fast float %9888, %9879
  %9892 = call float @dx.op.unary.f32(i32 7, float %9889)  ; Saturate(value)
  %9893 = call float @dx.op.unary.f32(i32 7, float %9890)  ; Saturate(value)
  %9894 = call float @dx.op.unary.f32(i32 7, float %9891)  ; Saturate(value)
  br label %9930

; <label>:9895                                    ; preds = %9866
  %9896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9897 = extractvalue %dx.types.CBufRet.f32 %9896, 0
  %9898 = bitcast float %9897 to i32
  %9899 = and i32 %9898, 2130706432
  %9900 = icmp eq i32 %9899, 0
  %9901 = select i1 %9900, float 0.000000e+00, float %9877
  %9902 = select i1 %9900, float 0.000000e+00, float %9878
  %9903 = select i1 %9900, float 0.000000e+00, float %9879
  br label %9930

; <label>:9904                                    ; preds = %9866
  %9905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9906 = extractvalue %dx.types.CBufRet.f32 %9905, 0
  %9907 = bitcast float %9906 to i32
  %9908 = and i32 %9907, 2130706432
  %9909 = icmp eq i32 %9908, 0
  %9910 = select i1 %9909, float 0.000000e+00, float %9877
  %9911 = select i1 %9909, float 0.000000e+00, float %9878
  %9912 = select i1 %9909, float 0.000000e+00, float %9879
  br label %9930

; <label>:9913                                    ; preds = %9866
  br label %9930

; <label>:9914                                    ; preds = %9866, %9866
  br label %9930

; <label>:9915                                    ; preds = %9866
  %9916 = and i32 %8320, 1023
  %9917 = uitofp i32 %9916 to float
  %9918 = lshr i32 %8320, 10
  %9919 = and i32 %9918, 1023
  %9920 = uitofp i32 %9919 to float
  %9921 = lshr i32 %8320, 20
  %9922 = and i32 %9921, 1023
  %9923 = uitofp i32 %9922 to float
  %9924 = fmul fast float %9917, 0x3F60040100000000
  %9925 = fmul fast float %9920, 0x3F60040100000000
  %9926 = fmul fast float %9923, 0x3F60040100000000
  %9927 = fadd fast float %9924, -1.000000e+00
  %9928 = fadd fast float %9925, -1.000000e+00
  %9929 = fadd fast float %9926, -1.000000e+00
  br label %9930

; <label>:9930                                    ; preds = %9915, %9914, %9913, %9904, %9895, %9886, %9885, %9884, %9866
  %9931 = phi float [ 0.000000e+00, %9913 ], [ %9892, %9886 ], [ 0.000000e+00, %9885 ], [ %69, %9914 ], [ %9927, %9915 ], [ 0.000000e+00, %9884 ], [ %9901, %9895 ], [ %9910, %9904 ], [ %9877, %9866 ]
  %9932 = phi float [ 0.000000e+00, %9913 ], [ %9893, %9886 ], [ 0.000000e+00, %9885 ], [ %70, %9914 ], [ %9928, %9915 ], [ 0.000000e+00, %9884 ], [ %9902, %9895 ], [ %9911, %9904 ], [ %9878, %9866 ]
  %9933 = phi float [ 0.000000e+00, %9913 ], [ %9894, %9886 ], [ 1.000000e+00, %9885 ], [ %71, %9914 ], [ %9929, %9915 ], [ 0.000000e+00, %9884 ], [ %9903, %9895 ], [ %9912, %9904 ], [ %9879, %9866 ]
  %9934 = fsub fast float %9931, %9877
  %9935 = fsub fast float %9932, %9878
  %9936 = fsub fast float %9933, %9879
  %9937 = fmul fast float %9870, %9934
  %9938 = fmul fast float %9870, %9935
  %9939 = fmul fast float %9870, %9936
  %9940 = fadd fast float %9937, %9877
  %9941 = fadd fast float %9938, %9878
  %9942 = fadd fast float %9939, %9879
  %9943 = and i32 %7650, 255
  %9944 = uitofp i32 %9943 to float
  %9945 = fptoui float %9944 to i32
  %9946 = lshr i32 %7650, 8
  %9947 = and i32 %9946, 255
  %9948 = uitofp i32 %9947 to float
  %9949 = fptoui float %9948 to i32
  %9950 = lshr i32 %7650, 16
  %9951 = and i32 %9950, 255
  %9952 = uitofp i32 %9951 to float
  %9953 = fptoui float %9952 to i32
  %9954 = lshr i32 %7650, 24
  %9955 = uitofp i32 %9954 to float
  %9956 = fptoui float %9955 to i32
  %9957 = and i32 %7649, 255
  %9958 = uitofp i32 %9957 to float
  %9959 = fptoui float %9958 to i32
  %9960 = lshr i32 %7649, 16
  %9961 = and i32 %9960, 255
  %9962 = uitofp i32 %9961 to float
  %9963 = fptoui float %9962 to i32
  %9964 = lshr i32 %9625, 24
  %9965 = uitofp i32 %9964 to float
  %9966 = fptoui float %9965 to i32
  switch i32 %9966, label %10205 [
    i32 1, label %9967
    i32 2, label %9994
    i32 3, label %10019
    i32 4, label %10042
    i32 5, label %10065
    i32 6, label %10088
    i32 7, label %10112
    i32 8, label %10135
    i32 9, label %10158
    i32 12, label %10180
    i32 13, label %10181
    i32 14, label %10204
  ]

; <label>:9967                                    ; preds = %9930
  %9968 = add i32 %9945, %9959
  %9969 = add i32 %9968, %9956
  %9970 = add i32 %9969, %9949
  %9971 = add i32 %9970, %9953
  %9972 = uitofp i32 %9971 to float
  %9973 = fadd fast float %9972, -4.000000e+00
  %9974 = fmul fast float %9973, 0x3FB5555560000000
  %9975 = call float @dx.op.unary.f32(i32 7, float %9974)  ; Saturate(value)
  %9976 = icmp eq i32 %9971, 0
  %9977 = select i1 %9976, float 0.000000e+00, float %9975
  %9978 = icmp ult i32 %9971, 2
  %9979 = select i1 %9978, float 0.000000e+00, float %9975
  %9980 = add i32 %9971, -1
  %9981 = icmp ult i32 %9980, 2
  %9982 = select i1 %9981, float 1.000000e+00, float %9977
  %9983 = icmp ult i32 %9971, 4
  %9984 = select i1 %9983, float 0.000000e+00, float 1.000000e+00
  %9985 = and i32 %9971, -2
  %9986 = icmp eq i32 %9985, 2
  %9987 = icmp eq i32 %9971, 4
  %9988 = select i1 %9987, float 1.000000e+00, float %9984
  %9989 = or i1 %9987, %9986
  %9990 = select i1 %9989, float 1.000000e+00, float %9979
  %9991 = add i32 %9971, -3
  %9992 = icmp ult i32 %9991, 2
  %9993 = select i1 %9992, float 0.000000e+00, float %9982
  br label %10205

; <label>:9994                                    ; preds = %9930
  %9995 = add i32 %9949, %9945
  %9996 = add i32 %9995, %9953
  %9997 = uitofp i32 %9996 to float
  %9998 = fadd fast float %9997, -4.000000e+00
  %9999 = fmul fast float %9998, 0x3FB5555560000000
  %10000 = call float @dx.op.unary.f32(i32 7, float %9999)  ; Saturate(value)
  %10001 = icmp eq i32 %9996, 0
  %10002 = select i1 %10001, float 0.000000e+00, float %10000
  %10003 = icmp ult i32 %9996, 2
  %10004 = select i1 %10003, float 0.000000e+00, float %10000
  %10005 = add i32 %9996, -1
  %10006 = icmp ult i32 %10005, 2
  %10007 = select i1 %10006, float 1.000000e+00, float %10002
  %10008 = icmp ult i32 %9996, 4
  %10009 = select i1 %10008, float 0.000000e+00, float 1.000000e+00
  %10010 = and i32 %9996, -2
  %10011 = icmp eq i32 %10010, 2
  %10012 = icmp eq i32 %9996, 4
  %10013 = select i1 %10012, float 1.000000e+00, float %10009
  %10014 = or i1 %10012, %10011
  %10015 = select i1 %10014, float 1.000000e+00, float %10004
  %10016 = add i32 %9996, -3
  %10017 = icmp ult i32 %10016, 2
  %10018 = select i1 %10017, float 0.000000e+00, float %10007
  br label %10205

; <label>:10019                                   ; preds = %9930
  %10020 = uitofp i32 %9945 to float
  %10021 = fadd fast float %10020, -4.000000e+00
  %10022 = fmul fast float %10021, 0x3FB5555560000000
  %10023 = call float @dx.op.unary.f32(i32 7, float %10022)  ; Saturate(value)
  %10024 = icmp eq i32 %9945, 0
  %10025 = select i1 %10024, float 0.000000e+00, float %10023
  %10026 = icmp ult i32 %9945, 2
  %10027 = select i1 %10026, float 0.000000e+00, float %10023
  %10028 = add i32 %9945, -1
  %10029 = icmp ult i32 %10028, 2
  %10030 = select i1 %10029, float 1.000000e+00, float %10025
  %10031 = icmp ult i32 %9945, 4
  %10032 = select i1 %10031, float 0.000000e+00, float 1.000000e+00
  %10033 = and i32 %9945, -2
  %10034 = icmp eq i32 %10033, 2
  %10035 = icmp eq i32 %9945, 4
  %10036 = select i1 %10035, float 1.000000e+00, float %10032
  %10037 = or i1 %10035, %10034
  %10038 = select i1 %10037, float 1.000000e+00, float %10027
  %10039 = add i32 %9945, -3
  %10040 = icmp ult i32 %10039, 2
  %10041 = select i1 %10040, float 0.000000e+00, float %10030
  br label %10205

; <label>:10042                                   ; preds = %9930
  %10043 = uitofp i32 %9949 to float
  %10044 = fadd fast float %10043, -4.000000e+00
  %10045 = fmul fast float %10044, 0x3FB5555560000000
  %10046 = call float @dx.op.unary.f32(i32 7, float %10045)  ; Saturate(value)
  %10047 = icmp eq i32 %9949, 0
  %10048 = select i1 %10047, float 0.000000e+00, float %10046
  %10049 = icmp ult i32 %9949, 2
  %10050 = select i1 %10049, float 0.000000e+00, float %10046
  %10051 = add i32 %9949, -1
  %10052 = icmp ult i32 %10051, 2
  %10053 = select i1 %10052, float 1.000000e+00, float %10048
  %10054 = icmp ult i32 %9949, 4
  %10055 = select i1 %10054, float 0.000000e+00, float 1.000000e+00
  %10056 = and i32 %9949, -2
  %10057 = icmp eq i32 %10056, 2
  %10058 = icmp eq i32 %9949, 4
  %10059 = select i1 %10058, float 1.000000e+00, float %10055
  %10060 = or i1 %10058, %10057
  %10061 = select i1 %10060, float 1.000000e+00, float %10050
  %10062 = add i32 %9949, -3
  %10063 = icmp ult i32 %10062, 2
  %10064 = select i1 %10063, float 0.000000e+00, float %10053
  br label %10205

; <label>:10065                                   ; preds = %9930
  %10066 = uitofp i32 %9953 to float
  %10067 = fadd fast float %10066, -4.000000e+00
  %10068 = fmul fast float %10067, 0x3FB5555560000000
  %10069 = call float @dx.op.unary.f32(i32 7, float %10068)  ; Saturate(value)
  %10070 = icmp eq i32 %9953, 0
  %10071 = select i1 %10070, float 0.000000e+00, float %10069
  %10072 = icmp ult i32 %9953, 2
  %10073 = select i1 %10072, float 0.000000e+00, float %10069
  %10074 = add i32 %9953, -1
  %10075 = icmp ult i32 %10074, 2
  %10076 = select i1 %10075, float 1.000000e+00, float %10071
  %10077 = icmp ult i32 %9953, 4
  %10078 = select i1 %10077, float 0.000000e+00, float 1.000000e+00
  %10079 = and i32 %9953, -2
  %10080 = icmp eq i32 %10079, 2
  %10081 = icmp eq i32 %9953, 4
  %10082 = select i1 %10081, float 1.000000e+00, float %10078
  %10083 = or i1 %10081, %10080
  %10084 = select i1 %10083, float 1.000000e+00, float %10073
  %10085 = add i32 %9953, -3
  %10086 = icmp ult i32 %10085, 2
  %10087 = select i1 %10086, float 0.000000e+00, float %10076
  br label %10205

; <label>:10088                                   ; preds = %9930
  %10089 = add i32 %9956, %9959
  %10090 = uitofp i32 %10089 to float
  %10091 = fadd fast float %10090, -4.000000e+00
  %10092 = fmul fast float %10091, 0x3FB5555560000000
  %10093 = call float @dx.op.unary.f32(i32 7, float %10092)  ; Saturate(value)
  %10094 = icmp eq i32 %10089, 0
  %10095 = select i1 %10094, float 0.000000e+00, float %10093
  %10096 = icmp ult i32 %10089, 2
  %10097 = select i1 %10096, float 0.000000e+00, float %10093
  %10098 = add i32 %10089, -1
  %10099 = icmp ult i32 %10098, 2
  %10100 = select i1 %10099, float 1.000000e+00, float %10095
  %10101 = icmp ult i32 %10089, 4
  %10102 = select i1 %10101, float 0.000000e+00, float 1.000000e+00
  %10103 = and i32 %10089, -2
  %10104 = icmp eq i32 %10103, 2
  %10105 = icmp eq i32 %10089, 4
  %10106 = select i1 %10105, float 1.000000e+00, float %10102
  %10107 = or i1 %10105, %10104
  %10108 = select i1 %10107, float 1.000000e+00, float %10097
  %10109 = add i32 %10089, -3
  %10110 = icmp ult i32 %10109, 2
  %10111 = select i1 %10110, float 0.000000e+00, float %10100
  br label %10205

; <label>:10112                                   ; preds = %9930
  %10113 = uitofp i32 %9956 to float
  %10114 = fadd fast float %10113, -4.000000e+00
  %10115 = fmul fast float %10114, 0x3FB5555560000000
  %10116 = call float @dx.op.unary.f32(i32 7, float %10115)  ; Saturate(value)
  %10117 = icmp eq i32 %9956, 0
  %10118 = select i1 %10117, float 0.000000e+00, float %10116
  %10119 = icmp ult i32 %9956, 2
  %10120 = select i1 %10119, float 0.000000e+00, float %10116
  %10121 = add i32 %9956, -1
  %10122 = icmp ult i32 %10121, 2
  %10123 = select i1 %10122, float 1.000000e+00, float %10118
  %10124 = icmp ult i32 %9956, 4
  %10125 = select i1 %10124, float 0.000000e+00, float 1.000000e+00
  %10126 = and i32 %9956, -2
  %10127 = icmp eq i32 %10126, 2
  %10128 = icmp eq i32 %9956, 4
  %10129 = select i1 %10128, float 1.000000e+00, float %10125
  %10130 = or i1 %10128, %10127
  %10131 = select i1 %10130, float 1.000000e+00, float %10120
  %10132 = add i32 %9956, -3
  %10133 = icmp ult i32 %10132, 2
  %10134 = select i1 %10133, float 0.000000e+00, float %10123
  br label %10205

; <label>:10135                                   ; preds = %9930
  %10136 = uitofp i32 %9959 to float
  %10137 = fadd fast float %10136, -4.000000e+00
  %10138 = fmul fast float %10137, 0x3FB5555560000000
  %10139 = call float @dx.op.unary.f32(i32 7, float %10138)  ; Saturate(value)
  %10140 = icmp eq i32 %9959, 0
  %10141 = select i1 %10140, float 0.000000e+00, float %10139
  %10142 = icmp ult i32 %9959, 2
  %10143 = select i1 %10142, float 0.000000e+00, float %10139
  %10144 = add i32 %9959, -1
  %10145 = icmp ult i32 %10144, 2
  %10146 = select i1 %10145, float 1.000000e+00, float %10141
  %10147 = icmp ult i32 %9959, 4
  %10148 = select i1 %10147, float 0.000000e+00, float 1.000000e+00
  %10149 = and i32 %9959, -2
  %10150 = icmp eq i32 %10149, 2
  %10151 = icmp eq i32 %9959, 4
  %10152 = select i1 %10151, float 1.000000e+00, float %10148
  %10153 = or i1 %10151, %10150
  %10154 = select i1 %10153, float 1.000000e+00, float %10143
  %10155 = add i32 %9959, -3
  %10156 = icmp ult i32 %10155, 2
  %10157 = select i1 %10156, float 0.000000e+00, float %10146
  br label %10205

; <label>:10158                                   ; preds = %9930
  %10159 = lshr i32 %7649, 8
  %10160 = and i32 %10159, 255
  %10161 = uitofp i32 %10160 to float
  %10162 = fptoui float %10161 to i32
  %10163 = uitofp i32 %10162 to float
  %10164 = fcmp fast oge float %10163, 1.000000e+00
  %10165 = fcmp fast oge float %10163, 2.000000e+00
  %10166 = or i1 %10165, %10164
  %10167 = select i1 %10166, float 1.000000e+00, float 0.000000e+00
  %10168 = fcmp fast oge float %10163, 3.000000e+00
  %10169 = or i1 %10168, %10165
  %10170 = fcmp fast oge float %10163, 4.000000e+00
  %10171 = or i1 %10170, %10169
  %10172 = select i1 %10171, float 1.000000e+00, float 0.000000e+00
  %10173 = or i1 %10170, %10168
  %10174 = fcmp fast oge float %10163, 5.000000e+00
  %10175 = or i1 %10174, %10170
  %10176 = select i1 %10175, float 1.000000e+00, float 0.000000e+00
  %10177 = select i1 %10174, float 0.000000e+00, float %10172
  %10178 = or i1 %10174, %10173
  %10179 = select i1 %10178, float 0.000000e+00, float %10167
  br label %10205

; <label>:10180                                   ; preds = %9930
  br label %10205

; <label>:10181                                   ; preds = %9930
  %10182 = uitofp i32 %9963 to float
  %10183 = fadd fast float %10182, -4.000000e+00
  %10184 = fmul fast float %10183, 0x3FB5555560000000
  %10185 = call float @dx.op.unary.f32(i32 7, float %10184)  ; Saturate(value)
  %10186 = icmp eq i32 %9963, 0
  %10187 = select i1 %10186, float 0.000000e+00, float %10185
  %10188 = icmp ult i32 %9963, 2
  %10189 = select i1 %10188, float 0.000000e+00, float %10185
  %10190 = add i32 %9963, -1
  %10191 = icmp ult i32 %10190, 2
  %10192 = select i1 %10191, float 1.000000e+00, float %10187
  %10193 = icmp ult i32 %9963, 4
  %10194 = select i1 %10193, float 0.000000e+00, float 1.000000e+00
  %10195 = and i32 %9963, -2
  %10196 = icmp eq i32 %10195, 2
  %10197 = icmp eq i32 %9963, 4
  %10198 = select i1 %10197, float 1.000000e+00, float %10194
  %10199 = or i1 %10197, %10196
  %10200 = select i1 %10199, float 1.000000e+00, float %10189
  %10201 = add i32 %9963, -3
  %10202 = icmp ult i32 %10201, 2
  %10203 = select i1 %10202, float 0.000000e+00, float %10192
  br label %10205

; <label>:10204                                   ; preds = %9930
  br label %10205

; <label>:10205                                   ; preds = %10204, %10181, %10180, %10158, %10135, %10112, %10088, %10065, %10042, %10019, %9994, %9967, %9930
  %10206 = phi float [ %9940, %9930 ], [ 5.000000e-01, %10204 ], [ %10198, %10181 ], [ 1.000000e+00, %10180 ], [ %10176, %10158 ], [ %10152, %10135 ], [ %10129, %10112 ], [ %10106, %10088 ], [ %10082, %10065 ], [ %10059, %10042 ], [ %10036, %10019 ], [ %10013, %9994 ], [ %9988, %9967 ]
  %10207 = phi float [ %9941, %9930 ], [ 5.000000e-01, %10204 ], [ %10200, %10181 ], [ 0.000000e+00, %10180 ], [ %10177, %10158 ], [ %10154, %10135 ], [ %10131, %10112 ], [ %10108, %10088 ], [ %10084, %10065 ], [ %10061, %10042 ], [ %10038, %10019 ], [ %10015, %9994 ], [ %9990, %9967 ]
  %10208 = phi float [ %9942, %9930 ], [ 5.000000e-01, %10204 ], [ %10203, %10181 ], [ 0.000000e+00, %10180 ], [ %10179, %10158 ], [ %10157, %10135 ], [ %10134, %10112 ], [ %10111, %10088 ], [ %10087, %10065 ], [ %10064, %10042 ], [ %10041, %10019 ], [ %10018, %9994 ], [ %9993, %9967 ]
  %10209 = fsub fast float %10206, %9940
  %10210 = fsub fast float %10207, %9941
  %10211 = fsub fast float %10208, %9942
  %10212 = fmul fast float %10209, %9870
  %10213 = fmul fast float %10210, %9870
  %10214 = fmul fast float %10211, %9870
  %10215 = fadd fast float %10212, %9940
  %10216 = fadd fast float %10213, %9941
  %10217 = fadd fast float %10214, %9942
  %10218 = and i32 %9625, 255
  %10219 = uitofp i32 %10218 to float
  %10220 = fptoui float %10219 to i32
  %10221 = icmp ult i32 %10220, 25
  br i1 %10221, label %10222, label %10227

; <label>:10222                                   ; preds = %10205
  %10223 = trunc i32 %10220 to i25
  %10224 = lshr i25 1048574, %10223
  %10225 = and i25 %10224, 1
  %10226 = icmp ne i25 %10225, 0
  br label %10227

; <label>:10227                                   ; preds = %10222, %10205
  %10228 = phi i1 [ %10226, %10222 ], [ true, %10205 ]
  %10229 = or i32 %9883, %9629
  %10230 = or i32 %10229, %9966
  %10231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10232 = extractvalue %dx.types.CBufRet.f32 %10231, 3
  %10233 = bitcast float %10232 to i32
  %10234 = and i32 %10233, 255
  %10235 = uitofp i32 %10234 to float
  %10236 = fptoui float %10235 to i32
  %10237 = or i32 %10230, %10236
  %10238 = icmp ne i32 %10237, 0
  %10239 = or i1 %10228, %10238
  %10240 = extractvalue %dx.types.CBufRet.f32 %10231, 0
  %10241 = bitcast float %10240 to i32
  %10242 = icmp slt i32 %10241, 0
  %10243 = or i1 %10242, %10239
  br i1 %10243, label %10244, label %10252

; <label>:10244                                   ; preds = %10227
  %10245 = icmp eq i32 %9966, 14
  %10246 = select i1 %10245, float 0.000000e+00, float 1.000000e+00
  %10247 = icmp eq i32 %10220, 0
  br i1 %10247, label %10252, label %10248

; <label>:10248                                   ; preds = %10244
  %10249 = fmul fast float %10246, %10215
  %10250 = fmul fast float %10246, %10216
  %10251 = fmul fast float %10246, %10217
  br label %10252

; <label>:10252                                   ; preds = %10248, %10244, %10227
  %10253 = phi float [ %10249, %10248 ], [ %10215, %10244 ], [ %10215, %10227 ]
  %10254 = phi float [ %10250, %10248 ], [ %10216, %10244 ], [ %10216, %10227 ]
  %10255 = phi float [ %10251, %10248 ], [ %10217, %10244 ], [ %10217, %10227 ]
  %10256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %64, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10257 = extractvalue %dx.types.CBufRet.f32 %10256, 2
  %10258 = extractvalue %dx.types.CBufRet.f32 %10256, 3
  %10259 = fmul fast float %10257, %98
  %10260 = fmul fast float %10258, %99
  %10261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10262 = extractvalue %dx.types.CBufRet.f32 %10261, 0
  %10263 = fcmp fast oge float %10259, %10262
  %10264 = extractvalue %dx.types.CBufRet.f32 %10261, 2
  %10265 = fcmp fast ole float %10259, %10264
  %10266 = and i1 %10263, %10265
  %10267 = extractvalue %dx.types.CBufRet.f32 %10261, 1
  %10268 = fcmp fast oge float %10260, %10267
  %10269 = and i1 %10266, %10268
  %10270 = extractvalue %dx.types.CBufRet.f32 %10261, 3
  %10271 = fcmp fast ole float %10260, %10270
  %10272 = and i1 %10269, %10271
  %10273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10274 = extractvalue %dx.types.CBufRet.i32 %10273, 0
  %10275 = icmp ne i32 %10274, 0
  %10276 = and i1 %10275, %10272
  br i1 %10276, label %10277, label %11250

; <label>:10277                                   ; preds = %10252
  %10278 = icmp eq i32 %10274, 1
  br i1 %10278, label %10279, label %10318

; <label>:10279                                   ; preds = %10277
  %10280 = uitofp i32 %197 to float
  %10281 = fmul fast float %10280, 0x3FE3C6EF40000000
  %10282 = call float @dx.op.unary.f32(i32 22, float %10281)  ; Frc(value)
  %10283 = fadd fast float %10282, 0x3FE5555560000000
  %10284 = fadd fast float %10282, 0x3FD5555560000000
  %10285 = fsub fast float -0.000000e+00, %10282
  %10286 = fsub fast float -0.000000e+00, %10283
  %10287 = fsub fast float -0.000000e+00, %10284
  %10288 = fcmp fast oge float %10282, %10285
  %10289 = fcmp fast oge float %10283, %10286
  %10290 = fcmp fast oge float %10284, %10287
  %10291 = call float @dx.op.unary.f32(i32 6, float %10282)  ; FAbs(value)
  %10292 = call float @dx.op.unary.f32(i32 6, float %10283)  ; FAbs(value)
  %10293 = call float @dx.op.unary.f32(i32 6, float %10284)  ; FAbs(value)
  %10294 = call float @dx.op.unary.f32(i32 22, float %10291)  ; Frc(value)
  %10295 = call float @dx.op.unary.f32(i32 22, float %10292)  ; Frc(value)
  %10296 = call float @dx.op.unary.f32(i32 22, float %10293)  ; Frc(value)
  %10297 = fsub fast float -0.000000e+00, %10294
  %10298 = fsub fast float -0.000000e+00, %10295
  %10299 = fsub fast float -0.000000e+00, %10296
  %10300 = select i1 %10288, float %10294, float %10297
  %10301 = select i1 %10289, float %10295, float %10298
  %10302 = select i1 %10290, float %10296, float %10299
  %10303 = fmul fast float %10300, 6.000000e+00
  %10304 = fmul fast float %10301, 6.000000e+00
  %10305 = fmul fast float %10302, 6.000000e+00
  %10306 = fadd fast float %10303, -3.000000e+00
  %10307 = fadd fast float %10304, -3.000000e+00
  %10308 = fadd fast float %10305, -3.000000e+00
  %10309 = call float @dx.op.unary.f32(i32 6, float %10306)  ; FAbs(value)
  %10310 = call float @dx.op.unary.f32(i32 6, float %10307)  ; FAbs(value)
  %10311 = call float @dx.op.unary.f32(i32 6, float %10308)  ; FAbs(value)
  %10312 = fadd fast float %10309, -1.000000e+00
  %10313 = fadd fast float %10310, -1.000000e+00
  %10314 = fadd fast float %10311, -1.000000e+00
  %10315 = call float @dx.op.unary.f32(i32 7, float %10312)  ; Saturate(value)
  %10316 = call float @dx.op.unary.f32(i32 7, float %10313)  ; Saturate(value)
  %10317 = call float @dx.op.unary.f32(i32 7, float %10314)  ; Saturate(value)
  br label %11250

; <label>:10318                                   ; preds = %10277
  %10319 = icmp eq i32 %10274, 2
  br i1 %10319, label %10320, label %10324

; <label>:10320                                   ; preds = %10318
  %10321 = fmul fast float %10253, %72
  %10322 = fmul fast float %10254, %73
  %10323 = fmul fast float %10255, %74
  br label %11250

; <label>:10324                                   ; preds = %10318
  %10325 = icmp eq i32 %10274, 3
  %10326 = icmp eq i32 %10274, 26
  %10327 = or i1 %10325, %10326
  br i1 %10327, label %10328, label %10428

; <label>:10328                                   ; preds = %10324
  br i1 %10325, label %10329, label %10340

; <label>:10329                                   ; preds = %10328
  %10330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10331 = extractvalue %dx.types.CBufRet.f32 %10330, 3
  %10332 = fsub fast float %177, %10331
  %10333 = fmul fast float %10332, 0x3FD5555560000000
  %10334 = call float @dx.op.unary.f32(i32 7, float %10333)  ; Saturate(value)
  %10335 = fmul fast float %10334, 6.300000e+01
  %10336 = fptoui float %10335 to i32
  %10337 = uitofp i32 %10336 to float
  %10338 = fmul fast float %10337, 0x3FA8618620000000
  %10339 = fadd fast float %10338, %10331
  br label %10340

; <label>:10340                                   ; preds = %10329, %10328
  %10341 = phi float [ %10339, %10329 ], [ %72, %10328 ]
  %10342 = call float @dx.op.unary.f32(i32 27, float %10341)  ; Round_ni(value)
  %10343 = fadd fast float %10342, 1.000000e+00
  %10344 = call float @dx.op.unary.f32(i32 22, float %10341)  ; Frc(value)
  %10345 = fmul fast float %10342, 0x3FE3C6EF40000000
  %10346 = call float @dx.op.unary.f32(i32 22, float %10345)  ; Frc(value)
  %10347 = fadd fast float %10346, 0x3FE5555560000000
  %10348 = fadd fast float %10346, 0x3FD5555560000000
  %10349 = fsub fast float -0.000000e+00, %10346
  %10350 = fsub fast float -0.000000e+00, %10347
  %10351 = fsub fast float -0.000000e+00, %10348
  %10352 = fcmp fast oge float %10346, %10349
  %10353 = fcmp fast oge float %10347, %10350
  %10354 = fcmp fast oge float %10348, %10351
  %10355 = call float @dx.op.unary.f32(i32 6, float %10346)  ; FAbs(value)
  %10356 = call float @dx.op.unary.f32(i32 6, float %10347)  ; FAbs(value)
  %10357 = call float @dx.op.unary.f32(i32 6, float %10348)  ; FAbs(value)
  %10358 = call float @dx.op.unary.f32(i32 22, float %10355)  ; Frc(value)
  %10359 = call float @dx.op.unary.f32(i32 22, float %10356)  ; Frc(value)
  %10360 = call float @dx.op.unary.f32(i32 22, float %10357)  ; Frc(value)
  %10361 = fsub fast float -0.000000e+00, %10358
  %10362 = fsub fast float -0.000000e+00, %10359
  %10363 = fsub fast float -0.000000e+00, %10360
  %10364 = select i1 %10352, float %10358, float %10361
  %10365 = select i1 %10353, float %10359, float %10362
  %10366 = select i1 %10354, float %10360, float %10363
  %10367 = fmul fast float %10364, 6.000000e+00
  %10368 = fmul fast float %10365, 6.000000e+00
  %10369 = fmul fast float %10366, 6.000000e+00
  %10370 = fadd fast float %10367, -3.000000e+00
  %10371 = fadd fast float %10368, -3.000000e+00
  %10372 = fadd fast float %10369, -3.000000e+00
  %10373 = call float @dx.op.unary.f32(i32 6, float %10370)  ; FAbs(value)
  %10374 = call float @dx.op.unary.f32(i32 6, float %10371)  ; FAbs(value)
  %10375 = call float @dx.op.unary.f32(i32 6, float %10372)  ; FAbs(value)
  %10376 = fadd fast float %10373, -1.000000e+00
  %10377 = fadd fast float %10374, -1.000000e+00
  %10378 = fadd fast float %10375, -1.000000e+00
  %10379 = call float @dx.op.unary.f32(i32 7, float %10376)  ; Saturate(value)
  %10380 = call float @dx.op.unary.f32(i32 7, float %10377)  ; Saturate(value)
  %10381 = call float @dx.op.unary.f32(i32 7, float %10378)  ; Saturate(value)
  %10382 = fmul fast float %10343, 0x3FE3C6EF40000000
  %10383 = call float @dx.op.unary.f32(i32 22, float %10382)  ; Frc(value)
  %10384 = fadd fast float %10383, 0x3FE5555560000000
  %10385 = fadd fast float %10383, 0x3FD5555560000000
  %10386 = fsub fast float -0.000000e+00, %10383
  %10387 = fsub fast float -0.000000e+00, %10384
  %10388 = fsub fast float -0.000000e+00, %10385
  %10389 = fcmp fast oge float %10383, %10386
  %10390 = fcmp fast oge float %10384, %10387
  %10391 = fcmp fast oge float %10385, %10388
  %10392 = call float @dx.op.unary.f32(i32 6, float %10383)  ; FAbs(value)
  %10393 = call float @dx.op.unary.f32(i32 6, float %10384)  ; FAbs(value)
  %10394 = call float @dx.op.unary.f32(i32 6, float %10385)  ; FAbs(value)
  %10395 = call float @dx.op.unary.f32(i32 22, float %10392)  ; Frc(value)
  %10396 = call float @dx.op.unary.f32(i32 22, float %10393)  ; Frc(value)
  %10397 = call float @dx.op.unary.f32(i32 22, float %10394)  ; Frc(value)
  %10398 = fsub fast float -0.000000e+00, %10395
  %10399 = fsub fast float -0.000000e+00, %10396
  %10400 = fsub fast float -0.000000e+00, %10397
  %10401 = select i1 %10389, float %10395, float %10398
  %10402 = select i1 %10390, float %10396, float %10399
  %10403 = select i1 %10391, float %10397, float %10400
  %10404 = fmul fast float %10401, 6.000000e+00
  %10405 = fmul fast float %10402, 6.000000e+00
  %10406 = fmul fast float %10403, 6.000000e+00
  %10407 = fadd fast float %10404, -3.000000e+00
  %10408 = fadd fast float %10405, -3.000000e+00
  %10409 = fadd fast float %10406, -3.000000e+00
  %10410 = call float @dx.op.unary.f32(i32 6, float %10407)  ; FAbs(value)
  %10411 = call float @dx.op.unary.f32(i32 6, float %10408)  ; FAbs(value)
  %10412 = call float @dx.op.unary.f32(i32 6, float %10409)  ; FAbs(value)
  %10413 = fadd fast float %10410, -1.000000e+00
  %10414 = fadd fast float %10411, -1.000000e+00
  %10415 = fadd fast float %10412, -1.000000e+00
  %10416 = call float @dx.op.unary.f32(i32 7, float %10413)  ; Saturate(value)
  %10417 = call float @dx.op.unary.f32(i32 7, float %10414)  ; Saturate(value)
  %10418 = call float @dx.op.unary.f32(i32 7, float %10415)  ; Saturate(value)
  %10419 = fsub fast float %10416, %10379
  %10420 = fsub fast float %10417, %10380
  %10421 = fsub fast float %10418, %10381
  %10422 = fmul fast float %10419, %10344
  %10423 = fmul fast float %10420, %10344
  %10424 = fmul fast float %10421, %10344
  %10425 = fadd fast float %10422, %10379
  %10426 = fadd fast float %10423, %10380
  %10427 = fadd fast float %10424, %10381
  br label %11250

; <label>:10428                                   ; preds = %10324
  %10429 = and i32 %10274, -2
  %10430 = icmp eq i32 %10429, 4
  br i1 %10430, label %10431, label %10440

; <label>:10431                                   ; preds = %10428
  %10432 = uitofp i32 %197 to float
  %10433 = fmul fast float %10432, 0x3FE3C6EF40000000
  %10434 = call float @dx.op.unary.f32(i32 22, float %10433)  ; Frc(value)
  %10435 = fmul fast float %10434, 5.000000e-01
  %10436 = fadd fast float %10435, 5.000000e-01
  %10437 = fmul fast float %10436, %72
  %10438 = fmul fast float %10436, %73
  %10439 = fmul fast float %10436, %74
  br label %11250

; <label>:10440                                   ; preds = %10428
  %10441 = icmp eq i32 %10274, 6
  br i1 %10441, label %11250, label %10442

; <label>:10442                                   ; preds = %10440
  %10443 = icmp eq i32 %10274, 7
  br i1 %10443, label %11250, label %10444

; <label>:10444                                   ; preds = %10442
  %10445 = icmp eq i32 %10274, 8
  br i1 %10445, label %11250, label %10446

; <label>:10446                                   ; preds = %10444
  %10447 = icmp eq i32 %10274, 9
  br i1 %10447, label %10448, label %10460

; <label>:10448                                   ; preds = %10446
  %10449 = fcmp fast ogt float %350, 0.000000e+00
  %10450 = call float @dx.op.dot2.f32(i32 54, float %345, float %346, float %345, float %346)  ; Dot2(ax,ay,bx,by)
  %10451 = call float @dx.op.unary.f32(i32 25, float %10450)  ; Rsqrt(value)
  %10452 = fmul fast float %345, 5.000000e-01
  %10453 = fmul fast float %10452, %10451
  %10454 = fmul fast float %346, 5.000000e-01
  %10455 = fmul fast float %10454, %10451
  %10456 = fadd fast float %10453, 5.000000e-01
  %10457 = select i1 %10449, float %10456, float 5.000000e-01
  %10458 = fadd fast float %10455, 5.000000e-01
  %10459 = select i1 %10449, float %10458, float 5.000000e-01
  br label %11250

; <label>:10460                                   ; preds = %10446
  %10461 = icmp eq i32 %10274, 10
  br i1 %10461, label %10462, label %10464

; <label>:10462                                   ; preds = %10460
  %10463 = fmul fast float %350, 0x3F747AE140000000
  br label %11250

; <label>:10464                                   ; preds = %10460
  %10465 = icmp eq i32 %10274, 11
  br i1 %10465, label %11250, label %10466

; <label>:10466                                   ; preds = %10464
  %10467 = icmp eq i32 %10274, 12
  br i1 %10467, label %11250, label %10468

; <label>:10468                                   ; preds = %10466
  %10469 = icmp eq i32 %10274, 13
  br i1 %10469, label %11250, label %10470

; <label>:10470                                   ; preds = %10468
  %10471 = icmp eq i32 %10274, 14
  br i1 %10471, label %11250, label %10472

; <label>:10472                                   ; preds = %10470
  %10473 = icmp eq i32 %10274, 15
  br i1 %10473, label %11250, label %10474

; <label>:10474                                   ; preds = %10472
  %10475 = icmp eq i32 %10274, 16
  br i1 %10475, label %11250, label %10476

; <label>:10476                                   ; preds = %10474
  %10477 = icmp eq i32 %10274, 17
  br i1 %10477, label %11250, label %10478

; <label>:10478                                   ; preds = %10476
  %10479 = icmp eq i32 %10274, 18
  br i1 %10479, label %11250, label %10480

; <label>:10480                                   ; preds = %10478
  %10481 = icmp eq i32 %10274, 19
  br i1 %10481, label %11250, label %10482

; <label>:10482                                   ; preds = %10480
  %10483 = icmp eq i32 %10274, 20
  br i1 %10483, label %10484, label %10491

; <label>:10484                                   ; preds = %10482
  %10485 = fmul fast float %1309, 5.000000e-01
  %10486 = fmul fast float %1310, 5.000000e-01
  %10487 = fmul fast float %1311, 5.000000e-01
  %10488 = fadd fast float %10485, 5.000000e-01
  %10489 = fadd fast float %10486, 5.000000e-01
  %10490 = fadd fast float %10487, 5.000000e-01
  br label %11250

; <label>:10491                                   ; preds = %10482
  %10492 = and i32 %10274, -9
  %10493 = icmp eq i32 %10492, 21
  br i1 %10493, label %11250, label %10494

; <label>:10494                                   ; preds = %10491
  %10495 = icmp eq i32 %10274, 22
  %10496 = icmp eq i32 %10274, 38
  %10497 = or i1 %10495, %10496
  br i1 %10497, label %10498, label %10612

; <label>:10498                                   ; preds = %10494
  %10499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10500 = extractvalue %dx.types.CBufRet.f32 %10499, 0
  %10501 = extractvalue %dx.types.CBufRet.f32 %10499, 1
  %10502 = extractvalue %dx.types.CBufRet.f32 %10499, 2
  %10503 = fadd fast float %10500, %153
  %10504 = fadd fast float %10501, %154
  %10505 = fadd fast float %10502, %155
  %10506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10507 = extractvalue %dx.types.CBufRet.f32 %10506, 0
  %10508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10509 = extractvalue %dx.types.CBufRet.f32 %10508, 0
  %10510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10511 = extractvalue %dx.types.CBufRet.f32 %10510, 0
  %10512 = extractvalue %dx.types.CBufRet.f32 %10506, 1
  %10513 = extractvalue %dx.types.CBufRet.f32 %10508, 1
  %10514 = extractvalue %dx.types.CBufRet.f32 %10510, 1
  %10515 = extractvalue %dx.types.CBufRet.f32 %10506, 3
  %10516 = extractvalue %dx.types.CBufRet.f32 %10508, 3
  %10517 = extractvalue %dx.types.CBufRet.f32 %10510, 3
  %10518 = fadd fast float %10503, %10515
  %10519 = fadd fast float %10504, %10516
  %10520 = fadd fast float %10505, %10517
  %10521 = fmul fast float %10518, %10507
  %10522 = call float @dx.op.tertiary.f32(i32 46, float %10519, float %10509, float %10521)  ; FMad(a,b,c)
  %10523 = call float @dx.op.tertiary.f32(i32 46, float %10520, float %10511, float %10522)  ; FMad(a,b,c)
  %10524 = fmul fast float %10518, %10512
  %10525 = call float @dx.op.tertiary.f32(i32 46, float %10519, float %10513, float %10524)  ; FMad(a,b,c)
  %10526 = call float @dx.op.tertiary.f32(i32 46, float %10520, float %10514, float %10525)  ; FMad(a,b,c)
  %10527 = fsub fast float %10523, %10515
  %10528 = fsub fast float %10526, %10516
  %10529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %10530 = extractvalue %dx.types.CBufRet.f32 %10529, 0
  %10531 = extractvalue %dx.types.CBufRet.f32 %10529, 1
  %10532 = fsub fast float %10527, %10530
  %10533 = fsub fast float %10528, %10531
  %10534 = fmul fast float %10532, %10532
  %10535 = fmul fast float %10533, %10533
  %10536 = fadd fast float %10534, %10535
  %10537 = call float @dx.op.unary.f32(i32 24, float %10536)  ; Sqrt(value)
  %10538 = extractvalue %dx.types.CBufRet.f32 %10529, 2
  %10539 = fcmp fast olt float %10537, %10538
  br i1 %10539, label %10540, label %11250

; <label>:10540                                   ; preds = %10498
  %10541 = fadd fast float %10532, %10538
  %10542 = fadd fast float %10533, %10538
  %10543 = extractvalue %dx.types.CBufRet.f32 %10529, 3
  %10544 = fmul fast float %10541, %10543
  %10545 = fmul fast float %10542, %10543
  %10546 = call float @dx.op.unary.f32(i32 7, float %10544)  ; Saturate(value)
  %10547 = call float @dx.op.unary.f32(i32 7, float %10545)  ; Saturate(value)
  %10548 = fsub fast float 1.000000e+00, %10546
  %10549 = fsub fast float 1.000000e+00, %10547
  %10550 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %61, float %10548, float %10549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10551 = extractvalue %dx.types.ResRet.f32 %10550, 0
  %10552 = fcmp fast ugt float %10551, 0.000000e+00
  br i1 %10552, label %10553, label %11250

; <label>:10553                                   ; preds = %10540
  br i1 %10495, label %10554, label %10559

; <label>:10554                                   ; preds = %10553
  %10555 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %61, float %10548, float %10549, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10556 = extractvalue %dx.types.ResRet.f32 %10555, 0
  %10557 = extractvalue %dx.types.ResRet.f32 %10555, 1
  %10558 = extractvalue %dx.types.ResRet.f32 %10555, 2
  br label %11250

; <label>:10559                                   ; preds = %10553
  %10560 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %10561 = extractvalue %dx.types.Dimensions %10560, 0
  %10562 = sitofp i32 %10561 to float
  %10563 = extractvalue %dx.types.Dimensions %10560, 1
  %10564 = sitofp i32 %10563 to float
  %10565 = fmul fast float %10562, %10548
  %10566 = fmul fast float %10564, %10549
  %10567 = call float @dx.op.unary.f32(i32 27, float %10565)  ; Round_ni(value)
  %10568 = call float @dx.op.unary.f32(i32 27, float %10566)  ; Round_ni(value)
  %10569 = fptoui float %10562 to i32
  %10570 = uitofp i32 %10569 to float
  %10571 = fmul fast float %10570, %10568
  %10572 = fadd fast float %10571, %10567
  %10573 = fptoui float %10572 to i32
  %10574 = uitofp i32 %10573 to float
  %10575 = fmul fast float %10574, 0x3FE3C6EF40000000
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
  br label %11250

; <label>:10612                                   ; preds = %10494
  %10613 = icmp eq i32 %10274, 39
  br i1 %10613, label %10614, label %10718

; <label>:10614                                   ; preds = %10612
  %10615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10616 = extractvalue %dx.types.CBufRet.f32 %10615, 0
  %10617 = extractvalue %dx.types.CBufRet.f32 %10615, 1
  %10618 = extractvalue %dx.types.CBufRet.f32 %10615, 2
  %10619 = fadd fast float %10616, %153
  %10620 = fadd fast float %10617, %154
  %10621 = fadd fast float %10618, %155
  %10622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10623 = extractvalue %dx.types.CBufRet.f32 %10622, 0
  %10624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10625 = extractvalue %dx.types.CBufRet.f32 %10624, 0
  %10626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10627 = extractvalue %dx.types.CBufRet.f32 %10626, 0
  %10628 = extractvalue %dx.types.CBufRet.f32 %10622, 1
  %10629 = extractvalue %dx.types.CBufRet.f32 %10624, 1
  %10630 = extractvalue %dx.types.CBufRet.f32 %10626, 1
  %10631 = extractvalue %dx.types.CBufRet.f32 %10622, 3
  %10632 = extractvalue %dx.types.CBufRet.f32 %10624, 3
  %10633 = extractvalue %dx.types.CBufRet.f32 %10626, 3
  %10634 = fadd fast float %10619, %10631
  %10635 = fadd fast float %10620, %10632
  %10636 = fadd fast float %10621, %10633
  %10637 = fmul fast float %10634, %10623
  %10638 = call float @dx.op.tertiary.f32(i32 46, float %10635, float %10625, float %10637)  ; FMad(a,b,c)
  %10639 = call float @dx.op.tertiary.f32(i32 46, float %10636, float %10627, float %10638)  ; FMad(a,b,c)
  %10640 = fmul fast float %10634, %10628
  %10641 = call float @dx.op.tertiary.f32(i32 46, float %10635, float %10629, float %10640)  ; FMad(a,b,c)
  %10642 = call float @dx.op.tertiary.f32(i32 46, float %10636, float %10630, float %10641)  ; FMad(a,b,c)
  %10643 = fsub fast float %10639, %10631
  %10644 = fsub fast float %10642, %10632
  %10645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %10646 = extractvalue %dx.types.CBufRet.f32 %10645, 0
  %10647 = extractvalue %dx.types.CBufRet.f32 %10645, 1
  %10648 = fsub fast float %10643, %10646
  %10649 = fsub fast float %10644, %10647
  %10650 = fmul fast float %10648, %10648
  %10651 = fmul fast float %10649, %10649
  %10652 = fadd fast float %10650, %10651
  %10653 = call float @dx.op.unary.f32(i32 24, float %10652)  ; Sqrt(value)
  %10654 = extractvalue %dx.types.CBufRet.f32 %10645, 2
  %10655 = fcmp fast olt float %10653, %10654
  br i1 %10655, label %10656, label %11250

; <label>:10656                                   ; preds = %10614
  %10657 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %51, i32 0)  ; GetDimensions(handle,mipLevel)
  %10658 = extractvalue %dx.types.Dimensions %10657, 0
  %10659 = sitofp i32 %10658 to float
  %10660 = extractvalue %dx.types.Dimensions %10657, 1
  %10661 = sitofp i32 %10660 to float
  %10662 = fadd fast float %10648, %10654
  %10663 = fadd fast float %10649, %10654
  %10664 = extractvalue %dx.types.CBufRet.f32 %10645, 3
  %10665 = fmul fast float %10662, %10664
  %10666 = fmul fast float %10663, %10664
  %10667 = call float @dx.op.unary.f32(i32 7, float %10665)  ; Saturate(value)
  %10668 = call float @dx.op.unary.f32(i32 7, float %10666)  ; Saturate(value)
  %10669 = fsub fast float 1.000000e+00, %10667
  %10670 = fsub fast float 1.000000e+00, %10668
  %10671 = fmul fast float %10669, %10659
  %10672 = fmul fast float %10670, %10661
  %10673 = call float @dx.op.unary.f32(i32 27, float %10671)  ; Round_ni(value)
  %10674 = call float @dx.op.unary.f32(i32 27, float %10672)  ; Round_ni(value)
  %10675 = fptoui float %10659 to i32
  %10676 = uitofp i32 %10675 to float
  %10677 = fmul fast float %10674, %10676
  %10678 = fadd fast float %10677, %10673
  %10679 = fptoui float %10678 to i32
  %10680 = uitofp i32 %10679 to float
  %10681 = fmul fast float %10680, 0x3FE3C6EF40000000
  %10682 = call float @dx.op.unary.f32(i32 22, float %10681)  ; Frc(value)
  %10683 = fadd fast float %10682, 0x3FE5555560000000
  %10684 = fadd fast float %10682, 0x3FD5555560000000
  %10685 = fsub fast float -0.000000e+00, %10682
  %10686 = fsub fast float -0.000000e+00, %10683
  %10687 = fsub fast float -0.000000e+00, %10684
  %10688 = fcmp fast oge float %10682, %10685
  %10689 = fcmp fast oge float %10683, %10686
  %10690 = fcmp fast oge float %10684, %10687
  %10691 = call float @dx.op.unary.f32(i32 6, float %10682)  ; FAbs(value)
  %10692 = call float @dx.op.unary.f32(i32 6, float %10683)  ; FAbs(value)
  %10693 = call float @dx.op.unary.f32(i32 6, float %10684)  ; FAbs(value)
  %10694 = call float @dx.op.unary.f32(i32 22, float %10691)  ; Frc(value)
  %10695 = call float @dx.op.unary.f32(i32 22, float %10692)  ; Frc(value)
  %10696 = call float @dx.op.unary.f32(i32 22, float %10693)  ; Frc(value)
  %10697 = fsub fast float -0.000000e+00, %10694
  %10698 = fsub fast float -0.000000e+00, %10695
  %10699 = fsub fast float -0.000000e+00, %10696
  %10700 = select i1 %10688, float %10694, float %10697
  %10701 = select i1 %10689, float %10695, float %10698
  %10702 = select i1 %10690, float %10696, float %10699
  %10703 = fmul fast float %10700, 6.000000e+00
  %10704 = fmul fast float %10701, 6.000000e+00
  %10705 = fmul fast float %10702, 6.000000e+00
  %10706 = fadd fast float %10703, -3.000000e+00
  %10707 = fadd fast float %10704, -3.000000e+00
  %10708 = fadd fast float %10705, -3.000000e+00
  %10709 = call float @dx.op.unary.f32(i32 6, float %10706)  ; FAbs(value)
  %10710 = call float @dx.op.unary.f32(i32 6, float %10707)  ; FAbs(value)
  %10711 = call float @dx.op.unary.f32(i32 6, float %10708)  ; FAbs(value)
  %10712 = fadd fast float %10709, -1.000000e+00
  %10713 = fadd fast float %10710, -1.000000e+00
  %10714 = fadd fast float %10711, -1.000000e+00
  %10715 = call float @dx.op.unary.f32(i32 7, float %10712)  ; Saturate(value)
  %10716 = call float @dx.op.unary.f32(i32 7, float %10713)  ; Saturate(value)
  %10717 = call float @dx.op.unary.f32(i32 7, float %10714)  ; Saturate(value)
  br label %11250

; <label>:10718                                   ; preds = %10612
  %10719 = icmp eq i32 %10274, 23
  br i1 %10719, label %11250, label %10720

; <label>:10720                                   ; preds = %10718
  %10721 = icmp eq i32 %10274, 24
  br i1 %10721, label %10722, label %10748

; <label>:10722                                   ; preds = %10720
  %10723 = and i32 %382, 255
  %10724 = uitofp i32 %10723 to float
  %10725 = fptoui float %10724 to i32
  %10726 = uitofp i32 %10725 to float
  %10727 = fadd fast float %10726, -4.000000e+00
  %10728 = fmul fast float %10727, 0x3FB5555560000000
  %10729 = call float @dx.op.unary.f32(i32 7, float %10728)  ; Saturate(value)
  %10730 = icmp eq i32 %10725, 0
  %10731 = select i1 %10730, float 0.000000e+00, float %10729
  %10732 = icmp ult i32 %10725, 2
  %10733 = select i1 %10732, float 0.000000e+00, float %10729
  %10734 = add i32 %10725, -1
  %10735 = icmp ult i32 %10734, 2
  %10736 = select i1 %10735, float 1.000000e+00, float %10731
  %10737 = icmp ult i32 %10725, 4
  %10738 = select i1 %10737, float 0.000000e+00, float 1.000000e+00
  %10739 = and i32 %10725, -2
  %10740 = icmp eq i32 %10739, 2
  %10741 = icmp eq i32 %10725, 4
  %10742 = select i1 %10741, float 1.000000e+00, float %10738
  %10743 = or i1 %10741, %10740
  %10744 = select i1 %10743, float 1.000000e+00, float %10733
  %10745 = add i32 %10725, -3
  %10746 = icmp ult i32 %10745, 2
  %10747 = select i1 %10746, float 0.000000e+00, float %10736
  br label %11250

; <label>:10748                                   ; preds = %10720
  %10749 = icmp eq i32 %10274, 25
  br i1 %10749, label %10750, label %10776

; <label>:10750                                   ; preds = %10748
  %10751 = and i32 %1315, 255
  %10752 = uitofp i32 %10751 to float
  %10753 = fptoui float %10752 to i32
  %10754 = uitofp i32 %10753 to float
  %10755 = fadd fast float %10754, -4.000000e+00
  %10756 = fmul fast float %10755, 0x3FB5555560000000
  %10757 = call float @dx.op.unary.f32(i32 7, float %10756)  ; Saturate(value)
  %10758 = icmp eq i32 %10753, 0
  %10759 = select i1 %10758, float 0.000000e+00, float %10757
  %10760 = icmp ult i32 %10753, 2
  %10761 = select i1 %10760, float 0.000000e+00, float %10757
  %10762 = add i32 %10753, -1
  %10763 = icmp ult i32 %10762, 2
  %10764 = select i1 %10763, float 1.000000e+00, float %10759
  %10765 = icmp ult i32 %10753, 4
  %10766 = select i1 %10765, float 0.000000e+00, float 1.000000e+00
  %10767 = and i32 %10753, -2
  %10768 = icmp eq i32 %10767, 2
  %10769 = icmp eq i32 %10753, 4
  %10770 = select i1 %10769, float 1.000000e+00, float %10766
  %10771 = or i1 %10769, %10768
  %10772 = select i1 %10771, float 1.000000e+00, float %10761
  %10773 = add i32 %10753, -3
  %10774 = icmp ult i32 %10773, 2
  %10775 = select i1 %10774, float 0.000000e+00, float %10764
  br label %11250

; <label>:10776                                   ; preds = %10748
  %10777 = icmp eq i32 %10274, 27
  br i1 %10777, label %10778, label %10833

; <label>:10778                                   ; preds = %10776
  %10779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %10780 = extractvalue %dx.types.CBufRet.f32 %10779, 2
  %10781 = fptoui float %10780 to i32
  %10782 = fptoui float %177 to i32
  %10783 = and i32 %10782, 31
  %10784 = lshr i32 %10781, %10783
  %10785 = uitofp i32 %10784 to float
  %10786 = fmul fast float %10785, %79
  %10787 = fmul fast float %10785, %80
  %10788 = call float @dx.op.unary.f32(i32 27, float %10786)  ; Round_ni(value)
  %10789 = call float @dx.op.unary.f32(i32 27, float %10787)  ; Round_ni(value)
  %10790 = fptoui float %10788 to i32
  %10791 = fptoui float %10789 to i32
  %10792 = fptoui float %10785 to i32
  %10793 = mul i32 %10792, %10791
  %10794 = add i32 %10793, %10790
  %10795 = uitofp i32 %10794 to float
  %10796 = fmul fast float %10795, 0x3FE3C6EF40000000
  %10797 = call float @dx.op.unary.f32(i32 22, float %10796)  ; Frc(value)
  %10798 = fadd fast float %10797, 0x3FE5555560000000
  %10799 = fadd fast float %10797, 0x3FD5555560000000
  %10800 = fsub fast float -0.000000e+00, %10797
  %10801 = fsub fast float -0.000000e+00, %10798
  %10802 = fsub fast float -0.000000e+00, %10799
  %10803 = fcmp fast oge float %10797, %10800
  %10804 = fcmp fast oge float %10798, %10801
  %10805 = fcmp fast oge float %10799, %10802
  %10806 = call float @dx.op.unary.f32(i32 6, float %10797)  ; FAbs(value)
  %10807 = call float @dx.op.unary.f32(i32 6, float %10798)  ; FAbs(value)
  %10808 = call float @dx.op.unary.f32(i32 6, float %10799)  ; FAbs(value)
  %10809 = call float @dx.op.unary.f32(i32 22, float %10806)  ; Frc(value)
  %10810 = call float @dx.op.unary.f32(i32 22, float %10807)  ; Frc(value)
  %10811 = call float @dx.op.unary.f32(i32 22, float %10808)  ; Frc(value)
  %10812 = fsub fast float -0.000000e+00, %10809
  %10813 = fsub fast float -0.000000e+00, %10810
  %10814 = fsub fast float -0.000000e+00, %10811
  %10815 = select i1 %10803, float %10809, float %10812
  %10816 = select i1 %10804, float %10810, float %10813
  %10817 = select i1 %10805, float %10811, float %10814
  %10818 = fmul fast float %10815, 6.000000e+00
  %10819 = fmul fast float %10816, 6.000000e+00
  %10820 = fmul fast float %10817, 6.000000e+00
  %10821 = fadd fast float %10818, -3.000000e+00
  %10822 = fadd fast float %10819, -3.000000e+00
  %10823 = fadd fast float %10820, -3.000000e+00
  %10824 = call float @dx.op.unary.f32(i32 6, float %10821)  ; FAbs(value)
  %10825 = call float @dx.op.unary.f32(i32 6, float %10822)  ; FAbs(value)
  %10826 = call float @dx.op.unary.f32(i32 6, float %10823)  ; FAbs(value)
  %10827 = fadd fast float %10824, -1.000000e+00
  %10828 = fadd fast float %10825, -1.000000e+00
  %10829 = fadd fast float %10826, -1.000000e+00
  %10830 = call float @dx.op.unary.f32(i32 7, float %10827)  ; Saturate(value)
  %10831 = call float @dx.op.unary.f32(i32 7, float %10828)  ; Saturate(value)
  %10832 = call float @dx.op.unary.f32(i32 7, float %10829)  ; Saturate(value)
  br label %11250

; <label>:10833                                   ; preds = %10776
  %10834 = icmp eq i32 %10274, 30
  br i1 %10834, label %10835, label %10875

; <label>:10835                                   ; preds = %10833
  %10836 = fcmp fast olt float %432, 0.000000e+00
  br i1 %10836, label %11250, label %10837

; <label>:10837                                   ; preds = %10835
  %10838 = fmul fast float %432, 0x3FE3C6EF40000000
  %10839 = call float @dx.op.unary.f32(i32 22, float %10838)  ; Frc(value)
  %10840 = fadd fast float %10839, 0x3FE5555560000000
  %10841 = fadd fast float %10839, 0x3FD5555560000000
  %10842 = fsub fast float -0.000000e+00, %10839
  %10843 = fsub fast float -0.000000e+00, %10840
  %10844 = fsub fast float -0.000000e+00, %10841
  %10845 = fcmp fast oge float %10839, %10842
  %10846 = fcmp fast oge float %10840, %10843
  %10847 = fcmp fast oge float %10841, %10844
  %10848 = call float @dx.op.unary.f32(i32 6, float %10839)  ; FAbs(value)
  %10849 = call float @dx.op.unary.f32(i32 6, float %10840)  ; FAbs(value)
  %10850 = call float @dx.op.unary.f32(i32 6, float %10841)  ; FAbs(value)
  %10851 = call float @dx.op.unary.f32(i32 22, float %10848)  ; Frc(value)
  %10852 = call float @dx.op.unary.f32(i32 22, float %10849)  ; Frc(value)
  %10853 = call float @dx.op.unary.f32(i32 22, float %10850)  ; Frc(value)
  %10854 = fsub fast float -0.000000e+00, %10851
  %10855 = fsub fast float -0.000000e+00, %10852
  %10856 = fsub fast float -0.000000e+00, %10853
  %10857 = select i1 %10845, float %10851, float %10854
  %10858 = select i1 %10846, float %10852, float %10855
  %10859 = select i1 %10847, float %10853, float %10856
  %10860 = fmul fast float %10857, 6.000000e+00
  %10861 = fmul fast float %10858, 6.000000e+00
  %10862 = fmul fast float %10859, 6.000000e+00
  %10863 = fadd fast float %10860, -3.000000e+00
  %10864 = fadd fast float %10861, -3.000000e+00
  %10865 = fadd fast float %10862, -3.000000e+00
  %10866 = call float @dx.op.unary.f32(i32 6, float %10863)  ; FAbs(value)
  %10867 = call float @dx.op.unary.f32(i32 6, float %10864)  ; FAbs(value)
  %10868 = call float @dx.op.unary.f32(i32 6, float %10865)  ; FAbs(value)
  %10869 = fadd fast float %10866, -1.000000e+00
  %10870 = fadd fast float %10867, -1.000000e+00
  %10871 = fadd fast float %10868, -1.000000e+00
  %10872 = call float @dx.op.unary.f32(i32 7, float %10869)  ; Saturate(value)
  %10873 = call float @dx.op.unary.f32(i32 7, float %10870)  ; Saturate(value)
  %10874 = call float @dx.op.unary.f32(i32 7, float %10871)  ; Saturate(value)
  br label %11250

; <label>:10875                                   ; preds = %10833
  %10876 = add i32 %10274, -31
  %10877 = icmp ult i32 %10876, 2
  br i1 %10877, label %10878, label %10886

; <label>:10878                                   ; preds = %10875
  %10879 = fcmp fast olt float %433, 0.000000e+00
  %10880 = call float @dx.op.unary.f32(i32 6, float %433)  ; FAbs(value)
  %10881 = fmul fast float %10880, 5.000000e-01
  %10882 = call float @dx.op.unary.f32(i32 7, float %10881)  ; Saturate(value)
  %10883 = select i1 %10879, float 0.000000e+00, float %10882
  %10884 = select i1 %10879, float %10882, float 0.000000e+00
  %10885 = fadd fast float %10882, 5.000000e-01
  br label %11250

; <label>:10886                                   ; preds = %10875
  %10887 = icmp eq i32 %10274, 36
  br i1 %10887, label %10888, label %10920

; <label>:10888                                   ; preds = %10886
  %10889 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %65, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %10890 = extractvalue %dx.types.CBufRet.i32 %10889, 0
  %10891 = and i32 %10890, 2048
  %10892 = icmp ne i32 %10891, 0
  %10893 = call float @dx.op.binary.f32(i32 35, float %1950, float %1951)  ; FMax(a,b)
  %10894 = call float @dx.op.binary.f32(i32 35, float %1949, float %10893)  ; FMax(a,b)
  %10895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %10896 = extractvalue %dx.types.CBufRet.f32 %10895, 1
  %10897 = fcmp fast oge float %10894, %10896
  %10898 = and i1 %10892, %10897
  br i1 %10898, label %10899, label %10905

; <label>:10899                                   ; preds = %10888
  %10900 = fsub fast float 1.000000e+00, %10253
  %10901 = fmul fast float %10900, 5.000000e-01
  %10902 = fadd fast float %10901, %10253
  %10903 = fmul fast float %10254, 5.000000e-01
  %10904 = fmul fast float %10255, 5.000000e-01
  br label %11250

; <label>:10905                                   ; preds = %10888
  %10906 = call float @dx.op.dot3.f32(i32 55, float %2048, float %2049, float %2050, float %1862, float %1863, float %1864)  ; Dot3(ax,ay,az,bx,by,bz)
  %10907 = and i32 %10890, 1024
  %10908 = icmp ne i32 %10907, 0
  %10909 = extractvalue %dx.types.CBufRet.f32 %10895, 2
  %10910 = fcmp fast ole float %10906, %10909
  %10911 = and i1 %10908, %10910
  br i1 %10911, label %10912, label %11250

; <label>:10912                                   ; preds = %10905
  %10913 = fsub fast float 1.000000e+00, %10253
  %10914 = fsub fast float 1.000000e+00, %10254
  %10915 = fmul fast float %10913, 5.000000e-01
  %10916 = fmul fast float %10914, 5.000000e-01
  %10917 = fadd fast float %10915, %10253
  %10918 = fadd fast float %10916, %10254
  %10919 = fmul fast float %10255, 5.000000e-01
  br label %11250

; <label>:10920                                   ; preds = %10886
  %10921 = icmp eq i32 %10274, 40
  br i1 %10921, label %10922, label %11159

; <label>:10922                                   ; preds = %10920
  %10923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %10924 = extractvalue %dx.types.CBufRet.f32 %10923, 0
  %10925 = fcmp fast ogt float %1933, %10924
  %10926 = zext i1 %10925 to i32
  %10927 = extractvalue %dx.types.CBufRet.f32 %10923, 1
  %10928 = fcmp fast ogt float %1933, %10927
  %10929 = zext i1 %10928 to i32
  %10930 = add nuw nsw i32 %10929, %10926
  %10931 = extractvalue %dx.types.CBufRet.f32 %10923, 2
  %10932 = fcmp fast ogt float %1933, %10931
  %10933 = zext i1 %10932 to i32
  %10934 = add nuw nsw i32 %10930, %10933
  %10935 = icmp ult i32 %10934, 3
  %10936 = zext i1 %10935 to i32
  %10937 = shl nuw nsw i32 %10934, 2
  %10938 = add nuw nsw i32 %10937, 48
  %10939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10938)  ; CBufferLoadLegacy(handle,regIndex)
  %10940 = extractvalue %dx.types.CBufRet.f32 %10939, 1
  %10941 = fcmp fast ogt float %1933, %10940
  %10942 = zext i1 %10941 to i32
  %10943 = or i32 %10937, 1
  %10944 = add nuw nsw i32 %10943, 48
  %10945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10944)  ; CBufferLoadLegacy(handle,regIndex)
  %10946 = extractvalue %dx.types.CBufRet.f32 %10945, 1
  %10947 = fcmp fast ogt float %1933, %10946
  %10948 = zext i1 %10947 to i32
  %10949 = add nuw nsw i32 %10948, %10942
  %10950 = or i32 %10937, 2
  %10951 = add nuw nsw i32 %10950, 48
  %10952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10951)  ; CBufferLoadLegacy(handle,regIndex)
  %10953 = extractvalue %dx.types.CBufRet.f32 %10952, 1
  %10954 = fcmp fast ogt float %1933, %10953
  %10955 = zext i1 %10954 to i32
  %10956 = add nuw nsw i32 %10949, %10955
  %10957 = call i32 @dx.op.binary.i32(i32 40, i32 %10956, i32 3)  ; UMin(a,b)
  %10958 = add i32 %10937, %10957
  %10959 = call i32 @dx.op.binary.i32(i32 40, i32 %10958, i32 12)  ; UMin(a,b)
  %10960 = add i32 %10959, 48
  %10961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %10960)  ; CBufferLoadLegacy(handle,regIndex)
  %10962 = extractvalue %dx.types.CBufRet.f32 %10961, 0
  %10963 = fcmp fast oge float %1933, %10962
  %10964 = zext i1 %10963 to i32
  %10965 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %10936)  ; UMin(a,b)
  %10966 = call i32 @dx.op.binary.i32(i32 40, i32 %10964, i32 %10965)  ; UMin(a,b)
  %10967 = fmul fast float %10264, 7.500000e-01
  %10968 = fadd fast float %10967, %10262
  %10969 = fcmp fast ult float %10259, %10968
  br i1 %10969, label %11009, label %10970

; <label>:10970                                   ; preds = %10922
  %10971 = uitofp i32 %10959 to float
  %10972 = fmul fast float %10971, 0x3FE3C6EF40000000
  %10973 = call float @dx.op.unary.f32(i32 22, float %10972)  ; Frc(value)
  %10974 = fadd fast float %10973, 0x3FE5555560000000
  %10975 = fadd fast float %10973, 0x3FD5555560000000
  %10976 = fsub fast float -0.000000e+00, %10973
  %10977 = fsub fast float -0.000000e+00, %10974
  %10978 = fsub fast float -0.000000e+00, %10975
  %10979 = fcmp fast oge float %10973, %10976
  %10980 = fcmp fast oge float %10974, %10977
  %10981 = fcmp fast oge float %10975, %10978
  %10982 = call float @dx.op.unary.f32(i32 6, float %10973)  ; FAbs(value)
  %10983 = call float @dx.op.unary.f32(i32 6, float %10974)  ; FAbs(value)
  %10984 = call float @dx.op.unary.f32(i32 6, float %10975)  ; FAbs(value)
  %10985 = call float @dx.op.unary.f32(i32 22, float %10982)  ; Frc(value)
  %10986 = call float @dx.op.unary.f32(i32 22, float %10983)  ; Frc(value)
  %10987 = call float @dx.op.unary.f32(i32 22, float %10984)  ; Frc(value)
  %10988 = fsub fast float -0.000000e+00, %10985
  %10989 = fsub fast float -0.000000e+00, %10986
  %10990 = fsub fast float -0.000000e+00, %10987
  %10991 = select i1 %10979, float %10985, float %10988
  %10992 = select i1 %10980, float %10986, float %10989
  %10993 = select i1 %10981, float %10987, float %10990
  %10994 = fmul fast float %10991, 6.000000e+00
  %10995 = fmul fast float %10992, 6.000000e+00
  %10996 = fmul fast float %10993, 6.000000e+00
  %10997 = fadd fast float %10994, -3.000000e+00
  %10998 = fadd fast float %10995, -3.000000e+00
  %10999 = fadd fast float %10996, -3.000000e+00
  %11000 = call float @dx.op.unary.f32(i32 6, float %10997)  ; FAbs(value)
  %11001 = call float @dx.op.unary.f32(i32 6, float %10998)  ; FAbs(value)
  %11002 = call float @dx.op.unary.f32(i32 6, float %10999)  ; FAbs(value)
  %11003 = fadd fast float %11000, -1.000000e+00
  %11004 = fadd fast float %11001, -1.000000e+00
  %11005 = fadd fast float %11002, -1.000000e+00
  %11006 = call float @dx.op.unary.f32(i32 7, float %11003)  ; Saturate(value)
  %11007 = call float @dx.op.unary.f32(i32 7, float %11004)  ; Saturate(value)
  %11008 = call float @dx.op.unary.f32(i32 7, float %11005)  ; Saturate(value)
  br label %11146

; <label>:11009                                   ; preds = %10922
  %11010 = fmul fast float %10264, 5.000000e-01
  %11011 = fadd fast float %11010, %10262
  %11012 = fcmp fast ult float %10259, %11011
  br i1 %11012, label %11039, label %11013

; <label>:11013                                   ; preds = %11009
  %11014 = add i32 %10966, 4
  %11015 = icmp eq i32 %11014, 0
  br i1 %11015, label %11146, label %11016

; <label>:11016                                   ; preds = %11013
  br label %11017

; <label>:11017                                   ; preds = %11017, %11016
  %11018 = phi float [ %11034, %11017 ], [ 0.000000e+00, %11016 ]
  %11019 = phi i32 [ %11035, %11017 ], [ 0, %11016 ]
  %11020 = add i32 %10959, 32
  %11021 = add i32 %11020, %11019
  %11022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11021)  ; CBufferLoadLegacy(handle,regIndex)
  %11023 = extractvalue %dx.types.CBufRet.f32 %11022, 0
  %11024 = extractvalue %dx.types.CBufRet.f32 %11022, 1
  %11025 = extractvalue %dx.types.CBufRet.f32 %11022, 2
  %11026 = extractvalue %dx.types.CBufRet.f32 %11022, 3
  %11027 = fmul fast float %11023, %1933
  %11028 = fadd fast float %11027, %11024
  %11029 = call float @dx.op.unary.f32(i32 7, float %11028)  ; Saturate(value)
  %11030 = fmul fast float %11025, %1933
  %11031 = fadd fast float %11030, %11026
  %11032 = call float @dx.op.unary.f32(i32 7, float %11031)  ; Saturate(value)
  %11033 = call float @dx.op.binary.f32(i32 36, float %11029, float %11032)  ; FMin(a,b)
  %11034 = fadd fast float %11033, %11018
  %11035 = add nuw i32 %11019, 1
  %11036 = icmp eq i32 %11035, %11014
  br i1 %11036, label %11037, label %11017

; <label>:11037                                   ; preds = %11017
  %11038 = fmul float %11034, 2.500000e-01
  br label %11146

; <label>:11039                                   ; preds = %11009
  %11040 = fmul fast float %10264, 2.500000e-01
  %11041 = fadd fast float %11040, %10262
  %11042 = fcmp fast ult float %10259, %11041
  br i1 %11042, label %11142, label %11043

; <label>:11043                                   ; preds = %11039
  %11044 = add i32 %10959, 32
  %11045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %11044)  ; CBufferLoadLegacy(handle,regIndex)
  %11046 = extractvalue %dx.types.CBufRet.f32 %11045, 0
  %11047 = extractvalue %dx.types.CBufRet.f32 %11045, 1
  %11048 = extractvalue %dx.types.CBufRet.f32 %11045, 2
  %11049 = extractvalue %dx.types.CBufRet.f32 %11045, 3
  %11050 = fmul fast float %11046, %1933
  %11051 = fadd fast float %11050, %11047
  %11052 = call float @dx.op.unary.f32(i32 7, float %11051)  ; Saturate(value)
  %11053 = fmul fast float %11048, %1933
  %11054 = fadd fast float %11053, %11049
  %11055 = call float @dx.op.unary.f32(i32 7, float %11054)  ; Saturate(value)
  %11056 = call float @dx.op.binary.f32(i32 36, float %11052, float %11055)  ; FMin(a,b)
  %11057 = uitofp i32 %10959 to float
  %11058 = fmul fast float %11057, 0x3FE3C6EF40000000
  %11059 = call float @dx.op.unary.f32(i32 22, float %11058)  ; Frc(value)
  %11060 = fadd fast float %11059, 0x3FE5555560000000
  %11061 = fadd fast float %11059, 0x3FD5555560000000
  %11062 = fsub fast float -0.000000e+00, %11059
  %11063 = fsub fast float -0.000000e+00, %11060
  %11064 = fsub fast float -0.000000e+00, %11061
  %11065 = fcmp fast oge float %11059, %11062
  %11066 = fcmp fast oge float %11060, %11063
  %11067 = fcmp fast oge float %11061, %11064
  %11068 = call float @dx.op.unary.f32(i32 6, float %11059)  ; FAbs(value)
  %11069 = call float @dx.op.unary.f32(i32 6, float %11060)  ; FAbs(value)
  %11070 = call float @dx.op.unary.f32(i32 6, float %11061)  ; FAbs(value)
  %11071 = call float @dx.op.unary.f32(i32 22, float %11068)  ; Frc(value)
  %11072 = call float @dx.op.unary.f32(i32 22, float %11069)  ; Frc(value)
  %11073 = call float @dx.op.unary.f32(i32 22, float %11070)  ; Frc(value)
  %11074 = fsub fast float -0.000000e+00, %11071
  %11075 = fsub fast float -0.000000e+00, %11072
  %11076 = fsub fast float -0.000000e+00, %11073
  %11077 = select i1 %11065, float %11071, float %11074
  %11078 = select i1 %11066, float %11072, float %11075
  %11079 = select i1 %11067, float %11073, float %11076
  %11080 = fmul fast float %11077, 6.000000e+00
  %11081 = fmul fast float %11078, 6.000000e+00
  %11082 = fmul fast float %11079, 6.000000e+00
  %11083 = fadd fast float %11080, -3.000000e+00
  %11084 = fadd fast float %11081, -3.000000e+00
  %11085 = fadd fast float %11082, -3.000000e+00
  %11086 = call float @dx.op.unary.f32(i32 6, float %11083)  ; FAbs(value)
  %11087 = call float @dx.op.unary.f32(i32 6, float %11084)  ; FAbs(value)
  %11088 = call float @dx.op.unary.f32(i32 6, float %11085)  ; FAbs(value)
  %11089 = fadd fast float %11086, -1.000000e+00
  %11090 = fadd fast float %11087, -1.000000e+00
  %11091 = fadd fast float %11088, -1.000000e+00
  %11092 = call float @dx.op.unary.f32(i32 7, float %11089)  ; Saturate(value)
  %11093 = call float @dx.op.unary.f32(i32 7, float %11090)  ; Saturate(value)
  %11094 = call float @dx.op.unary.f32(i32 7, float %11091)  ; Saturate(value)
  %11095 = fadd fast float %11057, 1.000000e+00
  %11096 = fmul fast float %11095, 0x3FE3C6EF40000000
  %11097 = call float @dx.op.unary.f32(i32 22, float %11096)  ; Frc(value)
  %11098 = fadd fast float %11097, 0x3FE5555560000000
  %11099 = fadd fast float %11097, 0x3FD5555560000000
  %11100 = fsub fast float -0.000000e+00, %11097
  %11101 = fsub fast float -0.000000e+00, %11098
  %11102 = fsub fast float -0.000000e+00, %11099
  %11103 = fcmp fast oge float %11097, %11100
  %11104 = fcmp fast oge float %11098, %11101
  %11105 = fcmp fast oge float %11099, %11102
  %11106 = call float @dx.op.unary.f32(i32 6, float %11097)  ; FAbs(value)
  %11107 = call float @dx.op.unary.f32(i32 6, float %11098)  ; FAbs(value)
  %11108 = call float @dx.op.unary.f32(i32 6, float %11099)  ; FAbs(value)
  %11109 = call float @dx.op.unary.f32(i32 22, float %11106)  ; Frc(value)
  %11110 = call float @dx.op.unary.f32(i32 22, float %11107)  ; Frc(value)
  %11111 = call float @dx.op.unary.f32(i32 22, float %11108)  ; Frc(value)
  %11112 = fsub fast float -0.000000e+00, %11109
  %11113 = fsub fast float -0.000000e+00, %11110
  %11114 = fsub fast float -0.000000e+00, %11111
  %11115 = select i1 %11103, float %11109, float %11112
  %11116 = select i1 %11104, float %11110, float %11113
  %11117 = select i1 %11105, float %11111, float %11114
  %11118 = fmul fast float %11115, 6.000000e+00
  %11119 = fmul fast float %11116, 6.000000e+00
  %11120 = fmul fast float %11117, 6.000000e+00
  %11121 = fadd fast float %11118, -3.000000e+00
  %11122 = fadd fast float %11119, -3.000000e+00
  %11123 = fadd fast float %11120, -3.000000e+00
  %11124 = call float @dx.op.unary.f32(i32 6, float %11121)  ; FAbs(value)
  %11125 = call float @dx.op.unary.f32(i32 6, float %11122)  ; FAbs(value)
  %11126 = call float @dx.op.unary.f32(i32 6, float %11123)  ; FAbs(value)
  %11127 = fadd fast float %11124, -1.000000e+00
  %11128 = fadd fast float %11125, -1.000000e+00
  %11129 = fadd fast float %11126, -1.000000e+00
  %11130 = call float @dx.op.unary.f32(i32 7, float %11127)  ; Saturate(value)
  %11131 = call float @dx.op.unary.f32(i32 7, float %11128)  ; Saturate(value)
  %11132 = call float @dx.op.unary.f32(i32 7, float %11129)  ; Saturate(value)
  %11133 = fsub fast float %11130, %11092
  %11134 = fsub fast float %11131, %11093
  %11135 = fsub fast float %11132, %11094
  %11136 = fmul fast float %11133, %11056
  %11137 = fmul fast float %11134, %11056
  %11138 = fmul fast float %11135, %11056
  %11139 = fadd fast float %11136, %11092
  %11140 = fadd fast float %11137, %11093
  %11141 = fadd fast float %11138, %11094
  br label %11146

; <label>:11142                                   ; preds = %11039
  %11143 = icmp ne i32 %10966, 0
  %11144 = select i1 %11143, float 1.000000e+00, float 0.000000e+00
  %11145 = select i1 %11143, float 0.000000e+00, float 1.000000e+00
  br label %11146

; <label>:11146                                   ; preds = %11142, %11043, %11037, %11013, %10970
  %11147 = phi float [ %11006, %10970 ], [ %11139, %11043 ], [ %11144, %11142 ], [ 0.000000e+00, %11013 ], [ %11038, %11037 ]
  %11148 = phi float [ %11007, %10970 ], [ %11140, %11043 ], [ %11145, %11142 ], [ 0.000000e+00, %11013 ], [ %11038, %11037 ]
  %11149 = phi float [ %11008, %10970 ], [ %11141, %11043 ], [ 0.000000e+00, %11142 ], [ 0.000000e+00, %11013 ], [ %11038, %11037 ]
  %11150 = fsub fast float %11147, %10253
  %11151 = fsub fast float %11148, %10254
  %11152 = fsub fast float %11149, %10255
  %11153 = fmul fast float %11150, 5.000000e-01
  %11154 = fmul fast float %11151, 5.000000e-01
  %11155 = fmul fast float %11152, 5.000000e-01
  %11156 = fadd fast float %11153, %10253
  %11157 = fadd fast float %11154, %10254
  %11158 = fadd fast float %11155, %10255
  br label %11250

; <label>:11159                                   ; preds = %10920
  %11160 = icmp eq i32 %10274, 41
  br i1 %11160, label %11161, label %11242

; <label>:11161                                   ; preds = %11159
  %11162 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11163 = extractvalue %dx.types.CBufRet.i32 %11162, 0
  %11164 = icmp eq i32 %11163, 2
  %11165 = and i32 %1317, 2
  %11166 = icmp ne i32 %11165, 0
  %11167 = and i1 %11166, %11164
  %11168 = icmp eq i32 %11163, 3
  %11169 = and i32 %1317, 4
  %11170 = icmp ne i32 %11169, 0
  %11171 = and i1 %11170, %11168
  %11172 = or i1 %11171, %11167
  %11173 = icmp eq i32 %11163, 4
  %11174 = and i32 %1317, 8
  %11175 = icmp ne i32 %11174, 0
  %11176 = and i1 %11175, %11173
  %11177 = or i1 %11176, %11172
  %11178 = icmp eq i32 %11163, 5
  %11179 = and i32 %1317, 16
  %11180 = icmp ne i32 %11179, 0
  %11181 = and i1 %11180, %11178
  %11182 = or i1 %11181, %11177
  %11183 = icmp eq i32 %11163, 6
  %11184 = and i32 %1317, 32
  %11185 = icmp ne i32 %11184, 0
  %11186 = and i1 %11185, %11183
  %11187 = or i1 %11186, %11182
  %11188 = icmp eq i32 %11163, 8
  %11189 = and i32 %1317, 64
  %11190 = icmp ne i32 %11189, 0
  %11191 = and i1 %11190, %11188
  %11192 = or i1 %11191, %11187
  %11193 = icmp eq i32 %11163, 9
  %11194 = and i32 %1317, 128
  %11195 = icmp ne i32 %11194, 0
  %11196 = and i1 %11195, %11193
  %11197 = or i1 %11196, %11192
  %11198 = icmp eq i32 %11163, 11
  %11199 = and i32 %1317, 160
  %11200 = icmp ne i32 %11199, 0
  %11201 = and i1 %11200, %11198
  %11202 = or i1 %11201, %11197
  %11203 = icmp eq i32 %11163, 13
  %11204 = and i32 %1317, 256
  %11205 = icmp ne i32 %11204, 0
  %11206 = and i1 %11205, %11203
  %11207 = or i1 %11206, %11202
  %11208 = icmp eq i32 %11163, 14
  %11209 = and i32 %1317, 512
  %11210 = icmp ne i32 %11209, 0
  %11211 = and i1 %11210, %11208
  %11212 = or i1 %11211, %11207
  %11213 = icmp eq i32 %11163, 7
  %11214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %11215 = extractvalue %dx.types.ResRet.i32 %11214, 0
  %11216 = and i32 %11215, 1024
  %11217 = icmp ne i32 %11216, 0
  %11218 = and i1 %11213, %11217
  %11219 = or i1 %11218, %11212
  %11220 = icmp eq i32 %11163, 10
  %11221 = and i32 %11215, 2048
  %11222 = icmp ne i32 %11221, 0
  %11223 = and i1 %11220, %11222
  %11224 = or i1 %11223, %11219
  %11225 = icmp eq i32 %11163, 12
  %11226 = and i32 %11215, 3072
  %11227 = icmp ne i32 %11226, 0
  %11228 = and i1 %11225, %11227
  %11229 = or i1 %11228, %11224
  %11230 = icmp eq i32 %11163, 15
  %11231 = and i32 %11215, 4096
  %11232 = icmp ne i32 %11231, 0
  %11233 = and i1 %11230, %11232
  %11234 = or i1 %11233, %11229
  %11235 = select i1 %11234, float 5.000000e-01, float %10253
  %11236 = select i1 %11234, float 0x3FB99999A0000000, float %10254
  %11237 = select i1 %11234, float 0x3FB99999A0000000, float %10255
  %11238 = fcmp fast ogt float %72, 0.000000e+00
  %11239 = and i1 %11238, %11213
  %11240 = select i1 %11239, float 1.000000e+00, float %11236
  %11241 = select i1 %11239, float 1.000000e+00, float %11237
  br label %11250

; <label>:11242                                   ; preds = %11159
  %11243 = icmp eq i32 %10274, 45
  br i1 %11243, label %11244, label %11250

; <label>:11244                                   ; preds = %11242
  %11245 = fcmp fast ogt float %1318, %1319
  %11246 = fsub fast float %1318, %1319
  %11247 = call float @dx.op.unary.f32(i32 6, float %11246)  ; FAbs(value)
  %11248 = select i1 %11245, float %11247, float 0.000000e+00
  %11249 = select i1 %11245, float 0.000000e+00, float %11247
  br label %11250

; <label>:11250                                   ; preds = %11244, %11242, %11161, %11146, %10912, %10905, %10899, %10878, %10837, %10835, %10778, %10750, %10722, %10718, %10656, %10614, %10559, %10554, %10540, %10498, %10491, %10484, %10480, %10478, %10476, %10474, %10472, %10470, %10468, %10466, %10464, %10462, %10448, %10444, %10442, %10440, %10431, %10340, %10320, %10279, %10252
  %11251 = phi float [ %10315, %10279 ], [ %10321, %10320 ], [ %10425, %10340 ], [ %10437, %10431 ], [ %10457, %10448 ], [ %10463, %10462 ], [ %10488, %10484 ], [ %10556, %10554 ], [ %10609, %10559 ], [ %10715, %10656 ], [ %10742, %10722 ], [ %10770, %10750 ], [ %10830, %10778 ], [ %10872, %10837 ], [ %10885, %10878 ], [ %10902, %10899 ], [ %10917, %10912 ], [ %10253, %10905 ], [ %11156, %11146 ], [ %11235, %11161 ], [ %11248, %11244 ], [ %10253, %11242 ], [ %10253, %10252 ], [ 0.000000e+00, %10440 ], [ 0.000000e+00, %10478 ], [ %72, %10491 ], [ 1.000000e+00, %10540 ], [ 0.000000e+00, %10498 ], [ 0.000000e+00, %10614 ], [ 0.000000e+00, %10835 ], [ %308, %10442 ], [ %323, %10444 ], [ %363, %10464 ], [ %376, %10466 ], [ %1312, %10468 ], [ %78, %10470 ], [ %1313, %10472 ], [ %1314, %10474 ], [ %1320, %10476 ], [ %72, %10480 ], [ 0.000000e+00, %10718 ]
  %11252 = phi float [ %10316, %10279 ], [ %10322, %10320 ], [ %10426, %10340 ], [ %10438, %10431 ], [ %10459, %10448 ], [ %10463, %10462 ], [ %10489, %10484 ], [ %10557, %10554 ], [ %10610, %10559 ], [ %10716, %10656 ], [ %10744, %10722 ], [ %10772, %10750 ], [ %10831, %10778 ], [ %10873, %10837 ], [ %10883, %10878 ], [ %10903, %10899 ], [ %10918, %10912 ], [ %10254, %10905 ], [ %11157, %11146 ], [ %11240, %11161 ], [ %11249, %11244 ], [ %10254, %11242 ], [ %10254, %10252 ], [ 0.000000e+00, %10440 ], [ 1.000000e+00, %10478 ], [ %73, %10491 ], [ 0.000000e+00, %10540 ], [ 1.000000e+00, %10498 ], [ 1.000000e+00, %10614 ], [ 1.000000e+00, %10835 ], [ %308, %10442 ], [ %323, %10444 ], [ %363, %10464 ], [ %376, %10466 ], [ %1312, %10468 ], [ %78, %10470 ], [ %1313, %10472 ], [ %1314, %10474 ], [ %1320, %10476 ], [ %73, %10480 ], [ 0.000000e+00, %10718 ]
  %11253 = phi float [ %10317, %10279 ], [ %10323, %10320 ], [ %10427, %10340 ], [ %10439, %10431 ], [ 0.000000e+00, %10448 ], [ %10463, %10462 ], [ %10490, %10484 ], [ %10558, %10554 ], [ %10611, %10559 ], [ %10717, %10656 ], [ %10747, %10722 ], [ %10775, %10750 ], [ %10832, %10778 ], [ %10874, %10837 ], [ %10884, %10878 ], [ %10904, %10899 ], [ %10919, %10912 ], [ %10255, %10905 ], [ %11158, %11146 ], [ %11241, %11161 ], [ 0.000000e+00, %11244 ], [ %10255, %11242 ], [ %10255, %10252 ], [ 0.000000e+00, %10440 ], [ 1.000000e+00, %10478 ], [ %74, %10491 ], [ 1.000000e+00, %10540 ], [ 1.000000e+00, %10498 ], [ 1.000000e+00, %10614 ], [ 0.000000e+00, %10835 ], [ %308, %10442 ], [ %323, %10444 ], [ %363, %10464 ], [ %376, %10466 ], [ %1312, %10468 ], [ %78, %10470 ], [ %1313, %10472 ], [ %1314, %10474 ], [ %1320, %10476 ], [ %74, %10480 ], [ 0.000000e+00, %10718 ]
  %11254 = fadd fast float %1336, 0x3FE3C6EF40000000
  %11255 = call float @dx.op.unary.f32(i32 22, float %11254)  ; Frc(value)
  %11256 = call float @dx.op.unary.f32(i32 23, float %11251)  ; Log(value)
  %11257 = fadd fast float %11256, -7.000000e+00
  %11258 = call float @dx.op.unary.f32(i32 21, float %11257)  ; Exp(value)
  %11259 = fmul fast float %11255, 2.000000e+00
  %11260 = fadd fast float %11259, -1.000000e+00
  %11261 = fmul fast float %11258, %11260
  %11262 = fcmp fast ogt float %11251, 0.000000e+00
  %11263 = select i1 %11262, float %11261, float 0.000000e+00
  %11264 = fadd fast float %11263, %11251
  %11265 = fadd fast float %1336, 0x3FF3C6EF40000000
  %11266 = call float @dx.op.unary.f32(i32 22, float %11265)  ; Frc(value)
  %11267 = call float @dx.op.unary.f32(i32 23, float %11252)  ; Log(value)
  %11268 = fadd fast float %11267, -7.000000e+00
  %11269 = call float @dx.op.unary.f32(i32 21, float %11268)  ; Exp(value)
  %11270 = fmul fast float %11266, 2.000000e+00
  %11271 = fadd fast float %11270, -1.000000e+00
  %11272 = fmul fast float %11269, %11271
  %11273 = fcmp fast ogt float %11252, 0.000000e+00
  %11274 = select i1 %11273, float %11272, float 0.000000e+00
  %11275 = fadd fast float %11274, %11252
  %11276 = fadd fast float %1336, 0x3FFDAA66E0000000
  %11277 = call float @dx.op.unary.f32(i32 22, float %11276)  ; Frc(value)
  %11278 = call float @dx.op.unary.f32(i32 23, float %11253)  ; Log(value)
  %11279 = fadd fast float %11278, -6.000000e+00
  %11280 = call float @dx.op.unary.f32(i32 21, float %11279)  ; Exp(value)
  %11281 = fmul fast float %11277, 2.000000e+00
  %11282 = fadd fast float %11281, -1.000000e+00
  %11283 = fmul fast float %11280, %11282
  %11284 = fcmp fast ogt float %11253, 0.000000e+00
  %11285 = select i1 %11284, float %11283, float 0.000000e+00
  %11286 = fadd fast float %11285, %11253
  %11287 = call float @dx.op.binary.f32(i32 36, float %11264, float 3.225500e+04)  ; FMin(a,b)
  %11288 = call float @dx.op.binary.f32(i32 36, float %11275, float 3.225500e+04)  ; FMin(a,b)
  %11289 = call float @dx.op.binary.f32(i32 36, float %11286, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11287)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11288)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11289)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:11290                                   ; preds = %9417
  %11291 = fcmp fast olt float %1992, %9400
  br i1 %11291, label %9403, label %11292

; <label>:11292                                   ; preds = %11290
  %11293 = fcmp fast olt float %1992, %9401
  br i1 %11293, label %9403, label %9604

; <label>:11294                                   ; preds = %9495
  %11295 = fcmp fast olt float %87, 5.120000e+02
  br i1 %11295, label %9481, label %11296

; <label>:11296                                   ; preds = %11294
  %11297 = fcmp fast olt float %87, 1.024000e+03
  br i1 %11297, label %9481, label %11298

; <label>:11298                                   ; preds = %11296
  %11299 = fcmp fast olt float %87, 1.536000e+03
  br i1 %11299, label %9481, label %11300

; <label>:11300                                   ; preds = %11298
  %11301 = fcmp fast olt float %87, 2.048000e+03
  br i1 %11301, label %9481, label %11302

; <label>:11302                                   ; preds = %11300
  %11303 = fcmp fast olt float %87, 3.072000e+03
  br i1 %11303, label %9481, label %11304

; <label>:11304                                   ; preds = %11302
  %11305 = fcmp fast olt float %87, 4.096000e+03
  br i1 %11305, label %9481, label %11306

; <label>:11306                                   ; preds = %11304
  %11307 = fcmp fast olt float %87, 6.144000e+03
  br i1 %11307, label %9481, label %11308

; <label>:11308                                   ; preds = %11306
  %11309 = fcmp fast olt float %87, 8.192000e+03
  br i1 %11309, label %9481, label %9604

; <label>:11310                                   ; preds = %9527
  %11311 = fcmp fast olt float %8341, %9510
  br i1 %11311, label %9513, label %11312

; <label>:11312                                   ; preds = %11310
  %11313 = fcmp fast olt float %8341, %9511
  br i1 %11313, label %9513, label %9604
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

