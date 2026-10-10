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
; shader hash: b18f6b435812fa1cef282888ce45e650
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
;                                   texture     f32          2d     T57             t8     1
;                                   texture     f32     2darray     T58            t11     1
;                                       UAV  struct         r/w      U0             u9     1
;                                       UAV  struct         r/w      U1             u0     1
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
;   output 3 depends on inputs: { 0, 1, 3, 12, 13 }
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
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
  %70 = alloca [4 x float], align 4
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = icmp ne i32 %77, 0
  %79 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %90 = alloca [12 x float], align 4
  %91 = alloca [12 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = alloca [3 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = alloca [4 x float], align 4
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = fmul fast float %99, %86
  %101 = fmul fast float %99, %87
  %102 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = call float @dx.op.unary.f32(i32 25, float %102)  ; Rsqrt(value)
  %104 = fmul fast float %103, %83
  %105 = fmul fast float %103, %84
  %106 = fmul fast float %103, %85
  %107 = xor i1 %78, true
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = icmp eq i32 %109, 0
  %111 = and i1 %110, %107
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 0
  %114 = and i32 %113, 256
  %115 = icmp ne i32 %114, 0
  %116 = and i1 %111, %115
  %117 = or i1 %78, %116
  %118 = select i1 %117, float 1.000000e+00, float -1.000000e+00
  %119 = fmul fast float %104, %118
  %120 = fmul fast float %105, %118
  %121 = fmul fast float %106, %118
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %100, 2.000000e+00
  %126 = fmul fast float %125, %123
  %127 = fmul fast float %101, 2.000000e+00
  %128 = fmul fast float %127, %124
  %129 = fsub fast float 1.000000e+00, %126
  %130 = fsub fast float 1.000000e+00, %128
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fmul fast float %129, %132
  %136 = fmul fast float %129, %133
  %137 = fmul fast float %129, %134
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 0
  %140 = extractvalue %dx.types.CBufRet.f32 %138, 1
  %141 = extractvalue %dx.types.CBufRet.f32 %138, 2
  %142 = fmul fast float %130, %139
  %143 = fmul fast float %130, %140
  %144 = fmul fast float %130, %141
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %149 = fadd fast float %142, %146
  %150 = fadd fast float %149, %135
  %151 = fadd fast float %143, %147
  %152 = fadd fast float %151, %136
  %153 = fadd fast float %144, %148
  %154 = fadd fast float %153, %137
  %155 = fmul fast float %150, %89
  %156 = fmul fast float %152, %89
  %157 = fmul fast float %154, %89
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %161 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %162 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %163 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  %164 = fmul fast float %160, %159
  %165 = fmul fast float %161, %159
  %166 = fmul fast float %162, %159
  %167 = fmul fast float %163, %159
  %168 = call float @dx.op.dot2.f32(i32 54, float %166, float %167, float %166, float %167)  ; Dot2(ax,ay,bx,by)
  %169 = call float @dx.op.dot2.f32(i32 54, float %164, float %165, float %164, float %165)  ; Dot2(ax,ay,bx,by)
  %170 = call float @dx.op.binary.f32(i32 35, float %169, float %168)  ; FMax(a,b)
  %171 = call float @dx.op.unary.f32(i32 23, float %170)  ; Log(value)
  %172 = fmul fast float %171, 5.000000e-01
  %173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.f32 %173, 1
  %175 = fadd fast float %174, %172
  %176 = call float @dx.op.binary.f32(i32 35, float %175, float 0.000000e+00)  ; FMax(a,b)
  %177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %178 = extractvalue %dx.types.CBufRet.f32 %177, 3
  %179 = fadd fast float %178, %176
  %180 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %181 = shl i32 %180, 16
  %182 = or i32 %181, %180
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 0
  %185 = extractvalue %dx.types.CBufRet.f32 %183, 1
  %186 = fadd fast float %184, %155
  %187 = fadd fast float %185, %156
  %188 = fmul fast float %186, 0x3F53C37960000000
  %189 = fmul fast float %187, 0x3F53C37960000000
  %190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %190, float %188, float %189, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %195 = fmul fast float %194, %192
  %196 = shl i32 %79, 3
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = and i32 %198, 16383
  %200 = shl i32 %79, 2
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 255
  %204 = mul nuw nsw i32 %199, 148
  %205 = add nuw nsw i32 %204, 4
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = add nuw nsw i32 %204, 8
  %209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = add nuw nsw i32 %204, 48
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = add nuw nsw i32 %204, 92
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = add nuw nsw i32 %204, 96
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add nuw nsw i32 %204, 100
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add nuw nsw i32 %204, 104
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = add nuw nsw i32 %204, 108
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = fsub fast float 1.000000e+00, %82
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %231 = fmul fast float %230, %81
  %232 = fmul fast float %230, %228
  %233 = fadd fast float %231, %207
  %234 = fadd fast float %232, %210
  %235 = call float @dx.op.unary.f32(i32 84, float %233)  ; DerivCoarseY(value)
  %236 = call float @dx.op.unary.f32(i32 84, float %234)  ; DerivCoarseY(value)
  %237 = call float @dx.op.unary.f32(i32 83, float %233)  ; DerivCoarseX(value)
  %238 = call float @dx.op.unary.f32(i32 83, float %234)  ; DerivCoarseX(value)
  %239 = call float @dx.op.dot2.f32(i32 54, float %235, float %236, float %235, float %236)  ; Dot2(ax,ay,bx,by)
  %240 = call float @dx.op.dot2.f32(i32 54, float %237, float %238, float %237, float %238)  ; Dot2(ax,ay,bx,by)
  %241 = call float @dx.op.binary.f32(i32 35, float %240, float %239)  ; FMax(a,b)
  %242 = call float @dx.op.unary.f32(i32 23, float %241)  ; Log(value)
  %243 = fmul fast float %242, 5.000000e-01
  %244 = add nuw nsw i32 %204, 20
  %245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.f32 %245, 0
  %247 = add nuw nsw i32 %204, 24
  %248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = add nuw nsw i32 %204, 28
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = add nuw nsw i32 %204, 32
  %254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %253, i32 undef)  ; BufferLoad(srv,index,wot)
  %255 = extractvalue %dx.types.ResRet.f32 %254, 0
  %256 = add nuw nsw i32 %204, 40
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = add nuw nsw i32 %204, 44
  %260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.f32 %260, 0
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = add nuw nsw i32 %204, 52
  %265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.f32 %265, 0
  %267 = add nuw nsw i32 %204, 56
  %268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = add nuw nsw i32 %204, 112
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %283 = fmul fast float %282, %81
  %284 = fmul fast float %282, %82
  %285 = extractvalue %dx.types.CBufRet.f32 %281, 3
  %286 = fadd fast float %283, %285
  %287 = fadd fast float %284, %285
  %288 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %289 = fmul fast float %288, %81
  %290 = fmul fast float %288, %82
  %291 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %292 = fadd fast float %289, %291
  %293 = fadd fast float %290, %291
  %294 = add i32 %271, 0
  %295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %294, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %296 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %295, i32 0)  ; GetDimensions(handle,mipLevel)
  %297 = extractvalue %dx.types.Dimensions %296, 0
  %298 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %297)  ; FirstbitLo(value)
  %299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %300 = extractvalue %dx.types.CBufRet.i32 %299, 1
  %301 = sub nsw i32 %300, %298
  %302 = sitofp i32 %301 to float
  %303 = fsub fast float %179, %302
  %304 = call float @dx.op.binary.f32(i32 35, float %303, float 0.000000e+00)  ; FMax(a,b)
  %305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %295, %dx.types.Handle %61, float %286, float %287, float %258, float undef, i32 0, i32 0, i32 undef, float %304)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = fmul fast float %306, %246
  %308 = fadd fast float %307, %249
  %309 = add i32 %273, 0
  %310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %309, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %311 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %310, i32 0)  ; GetDimensions(handle,mipLevel)
  %312 = extractvalue %dx.types.Dimensions %311, 0
  %313 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %312)  ; FirstbitLo(value)
  %314 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %315 = extractvalue %dx.types.CBufRet.i32 %314, 1
  %316 = sub nsw i32 %315, %313
  %317 = sitofp i32 %316 to float
  %318 = fsub fast float %179, %317
  %319 = call float @dx.op.binary.f32(i32 35, float %318, float 0.000000e+00)  ; FMax(a,b)
  %320 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %310, %dx.types.Handle %61, float %292, float %293, float %261, float undef, i32 0, i32 0, i32 undef, float %319)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %321 = extractvalue %dx.types.ResRet.f32 %320, 0
  %322 = fmul fast float %321, %252
  %323 = fadd fast float %322, %255
  %324 = add i32 %275, 0
  %325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %325, i32 0)  ; GetDimensions(handle,mipLevel)
  %327 = extractvalue %dx.types.Dimensions %326, 0
  %328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %327)  ; FirstbitLo(value)
  %329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %330 = extractvalue %dx.types.CBufRet.i32 %329, 1
  %331 = sub nsw i32 %330, %328
  %332 = sitofp i32 %331 to float
  %333 = fsub fast float %179, %332
  %334 = call float @dx.op.binary.f32(i32 35, float %333, float 0.000000e+00)  ; FMax(a,b)
  %335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %325, %dx.types.Handle %61, float %292, float %293, float %263, float undef, i32 0, i32 0, i32 undef, float %334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %336 = extractvalue %dx.types.ResRet.f32 %335, 0
  %337 = extractvalue %dx.types.ResRet.f32 %335, 1
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 3
  %340 = fmul fast float %339, 2.000000e+00
  %341 = fmul fast float %340, %336
  %342 = fmul fast float %340, %337
  %343 = fsub fast float %341, %339
  %344 = fsub fast float %342, %339
  %345 = fmul fast float %343, %343
  %346 = fmul fast float %344, %344
  %347 = fadd fast float %345, %346
  %348 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %349 = add i32 %277, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %349, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %350, i32 0)  ; GetDimensions(handle,mipLevel)
  %352 = extractvalue %dx.types.Dimensions %351, 0
  %353 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %352)  ; FirstbitLo(value)
  %354 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %355 = extractvalue %dx.types.CBufRet.i32 %354, 1
  %356 = sub nsw i32 %355, %353
  %357 = sitofp i32 %356 to float
  %358 = fsub fast float %179, %357
  %359 = call float @dx.op.binary.f32(i32 35, float %358, float 0.000000e+00)  ; FMax(a,b)
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %350, %dx.types.Handle %61, float %292, float %293, float %266, float undef, i32 0, i32 0, i32 undef, float %359)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = add i32 %280, 0
  %363 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %362, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %364 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %363, i32 0)  ; GetDimensions(handle,mipLevel)
  %365 = extractvalue %dx.types.Dimensions %364, 0
  %366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %365)  ; FirstbitLo(value)
  %367 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %368 = extractvalue %dx.types.CBufRet.i32 %367, 1
  %369 = sub nsw i32 %368, %366
  %370 = sitofp i32 %369 to float
  %371 = fsub fast float %179, %370
  %372 = call float @dx.op.binary.f32(i32 35, float %371, float 0.000000e+00)  ; FMax(a,b)
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %363, %dx.types.Handle %61, float %292, float %293, float %269, float undef, i32 0, i32 0, i32 undef, float %372)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 0
  %377 = call i32 @dx.op.binary.i32(i32 40, i32 %199, i32 %376)  ; UMin(a,b)
  %378 = mul i32 %377, 36
  %379 = add i32 %378, 4
  %380 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %203)  ; Countbits(value)
  %381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %382 = extractvalue %dx.types.CBufRet.i32 %381, 0
  %383 = icmp eq i32 %382, 32
  %384 = select i1 %383, float %74, float %179
  %385 = and i32 %382, -2
  %386 = icmp eq i32 %385, 30
  %387 = or i1 %386, %383
  br i1 %387, label %388, label %429

; <label>:388                                     ; preds = %0
  %389 = extractvalue %dx.types.ResRet.i32 %215, 0
  %390 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.i32 %390, 0
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %408, label %393

; <label>:393                                     ; preds = %388
  %394 = icmp eq i32 %391, 1
  br i1 %394, label %408, label %395

; <label>:395                                     ; preds = %393
  %396 = icmp eq i32 %391, 2
  br i1 %396, label %408, label %397

; <label>:397                                     ; preds = %395
  %398 = icmp eq i32 %391, 3
  br i1 %398, label %408, label %399

; <label>:399                                     ; preds = %397
  %400 = icmp eq i32 %391, 4
  br i1 %400, label %408, label %401

; <label>:401                                     ; preds = %399
  %402 = call i32 @dx.op.binary.i32(i32 39, i32 %391, i32 6)  ; UMax(a,b)
  %403 = call i32 @dx.op.binary.i32(i32 40, i32 %402, i32 13)  ; UMin(a,b)
  %404 = shl i32 %403, 2
  %405 = add i32 %214, %404
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  br label %408

; <label>:408                                     ; preds = %401, %399, %397, %395, %393, %388
  %409 = phi i32 [ %407, %401 ], [ %389, %388 ], [ %218, %393 ], [ %221, %395 ], [ %224, %397 ], [ %227, %399 ]
  %410 = add i32 %409, 0
  %411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %410, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %412 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %411, i32 0)  ; GetDimensions(handle,mipLevel)
  %413 = extractvalue %dx.types.Dimensions %412, 0
  %414 = icmp eq i32 %413, 1
  %415 = icmp eq i32 %413, 4
  %416 = or i1 %414, %415
  br i1 %416, label %423, label %417

; <label>:417                                     ; preds = %408
  %418 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %413)  ; FirstbitLo(value)
  %419 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.i32 %419, 1
  %421 = sub nsw i32 %420, %418
  %422 = call i32 @dx.op.binary.i32(i32 37, i32 %421, i32 0)  ; IMax(a,b)
  br label %423

; <label>:423                                     ; preds = %417, %408
  %424 = phi i32 [ %422, %417 ], [ -1, %408 ]
  %425 = sitofp i32 %424 to float
  %426 = icmp slt i32 %424, 0
  %427 = fsub fast float %384, %425
  %428 = select i1 %426, float 0.000000e+00, float %427
  br label %429

; <label>:429                                     ; preds = %423, %0
  %430 = phi float [ 0.000000e+00, %0 ], [ %425, %423 ]
  %431 = phi float [ 0.000000e+00, %0 ], [ %428, %423 ]
  %432 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %203)  ; FirstbitLo(value)
  %433 = shl i32 %432, 2
  %434 = add i32 %379, %433
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = and i32 %436, 32767
  %438 = mul nuw nsw i32 %437, 928
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = or i32 %438, 8
  %442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.f32 %442, 0
  %444 = or i32 %438, 12
  %445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.f32 %445, 1
  %447 = or i32 %438, 20
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = or i32 %438, 24
  %451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %450, i32 undef)  ; BufferLoad(srv,index,wot)
  %452 = extractvalue %dx.types.ResRet.f32 %451, 0
  %453 = extractvalue %dx.types.ResRet.f32 %451, 1
  %454 = extractvalue %dx.types.ResRet.f32 %451, 2
  %455 = extractvalue %dx.types.ResRet.f32 %451, 3
  %456 = add nuw nsw i32 %438, 40
  %457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.f32 %457, 0
  %459 = add nuw nsw i32 %438, 72
  %460 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.f32 %460, 0
  %462 = extractvalue %dx.types.ResRet.f32 %460, 1
  %463 = add nuw nsw i32 %438, 80
  %464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %463, i32 undef)  ; BufferLoad(srv,index,wot)
  %465 = extractvalue %dx.types.ResRet.f32 %464, 0
  %466 = add nuw nsw i32 %438, 228
  %467 = add nuw nsw i32 %438, 516
  %468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.f32 %468, 1
  %470 = add nuw nsw i32 %438, 528
  %471 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.f32 %471, 0
  %473 = extractvalue %dx.types.ResRet.f32 %471, 1
  %474 = add nuw nsw i32 %438, 540
  %475 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.f32 %475, 0
  %477 = extractvalue %dx.types.ResRet.f32 %475, 1
  %478 = add nuw nsw i32 %438, 548
  %479 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.f32 %479, 0
  %481 = add nuw nsw i32 %438, 552
  %482 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.f32 %482, 0
  %484 = extractvalue %dx.types.ResRet.f32 %482, 1
  %485 = extractvalue %dx.types.ResRet.f32 %482, 2
  %486 = add nuw nsw i32 %438, 596
  %487 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.f32 %487, 0
  %489 = extractvalue %dx.types.ResRet.f32 %487, 1
  %490 = add nuw nsw i32 %438, 620
  %491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %490, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.f32 %491, 0
  %493 = extractvalue %dx.types.ResRet.f32 %491, 1
  %494 = add nuw nsw i32 %438, 628
  %495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.f32 %495, 0
  %497 = extractvalue %dx.types.ResRet.f32 %495, 1
  %498 = extractvalue %dx.types.ResRet.f32 %495, 2
  %499 = extractvalue %dx.types.ResRet.f32 %495, 3
  %500 = add nuw nsw i32 %438, 644
  %501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.f32 %501, 0
  %503 = add nuw nsw i32 %438, 648
  %504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.f32 %504, 0
  %506 = add nuw nsw i32 %438, 652
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = add nuw nsw i32 %438, 656
  %510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = add nuw nsw i32 %438, 660
  %513 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = add nuw nsw i32 %438, 664
  %516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = extractvalue %dx.types.ResRet.f32 %516, 1
  %519 = add nuw nsw i32 %438, 676
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 0
  %522 = extractvalue %dx.types.ResRet.f32 %520, 1
  %523 = add nuw nsw i32 %438, 696
  %524 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.f32 %524, 0
  %526 = extractvalue %dx.types.ResRet.f32 %524, 1
  %527 = add nuw nsw i32 %438, 704
  %528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = add nuw nsw i32 %438, 708
  %531 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.f32 %531, 0
  %533 = extractvalue %dx.types.ResRet.f32 %531, 1
  %534 = add nuw nsw i32 %438, 716
  %535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.f32 %535, 0
  %537 = add nuw nsw i32 %438, 720
  %538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = add nuw nsw i32 %438, 732
  %542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 1
  %544 = add nuw nsw i32 %438, 744
  %545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = add nuw nsw i32 %438, 748
  %548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.f32 %548, 0
  %550 = add nuw nsw i32 %438, 752
  %551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  %553 = add nuw nsw i32 %438, 756
  %554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.f32 %554, 0
  %556 = extractvalue %dx.types.ResRet.f32 %554, 1
  %557 = extractvalue %dx.types.ResRet.f32 %554, 2
  %558 = extractvalue %dx.types.ResRet.f32 %554, 3
  %559 = add nuw nsw i32 %438, 780
  %560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.f32 %560, 0
  %562 = extractvalue %dx.types.ResRet.f32 %560, 1
  %563 = add nuw nsw i32 %438, 792
  %564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  %566 = extractvalue %dx.types.ResRet.f32 %564, 1
  %567 = add nuw nsw i32 %438, 800
  %568 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  %570 = extractvalue %dx.types.ResRet.f32 %568, 1
  %571 = add nuw nsw i32 %438, 812
  %572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %571, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.f32 %572, 0
  %574 = add nuw nsw i32 %438, 816
  %575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 1
  %577 = add nuw nsw i32 %438, 852
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = add nuw nsw i32 %438, 860
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 2
  %583 = add nuw nsw i32 %438, 884
  %584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %583, i32 undef)  ; BufferLoad(srv,index,wot)
  %585 = extractvalue %dx.types.ResRet.f32 %584, 0
  %586 = extractvalue %dx.types.ResRet.f32 %584, 1
  %587 = extractvalue %dx.types.ResRet.f32 %584, 2
  %588 = add nuw nsw i32 %438, 896
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = add nuw nsw i32 %438, 900
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = add nuw nsw i32 %438, 904
  %595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.i32 %595, 0
  %597 = add nuw nsw i32 %438, 908
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %597, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = add nuw nsw i32 %438, 912
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %600, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = add nuw nsw i32 %438, 916
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %51, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %440, 128
  %607 = icmp ne i32 %606, 0
  %608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.i32 %608, 0
  %610 = and i32 %609, 512
  %611 = icmp ne i32 %610, 0
  %612 = and i1 %607, %611
  %613 = select i1 %612, float 0.000000e+00, float 1.000000e+00
  %614 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %615 = fmul fast float %614, 2.550000e+02
  %616 = fptoui float %615 to i32
  %617 = fcmp fast ole float %80, 0x3FA4B5DCC0000000
  %618 = fmul fast float %80, 0x3FB3D07220000000
  %619 = fadd fast float %80, 0x3FAC28F5C0000000
  %620 = fmul fast float %619, 0x3FEE54EDE0000000
  %621 = call float @dx.op.unary.f32(i32 23, float %620)  ; Log(value)
  %622 = fmul fast float %621, 0x4003333340000000
  %623 = call float @dx.op.unary.f32(i32 21, float %622)  ; Exp(value)
  %624 = select i1 %617, float %618, float %623
  %625 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %626 = fmul fast float %488, %361
  %627 = fadd fast float %626, %489
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = call float @dx.op.binary.f32(i32 35, float %625, float %628)  ; FMax(a,b)
  %630 = add i32 %593, 0
  %631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %630, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %632 = fmul fast float %465, %348
  %633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.i32 %633, 0
  %635 = and i32 %634, 65536
  %636 = icmp eq i32 %635, 0
  %637 = and i32 %634, 262144
  %638 = icmp ne i32 %637, 0
  %639 = and i32 %634, 1048576
  %640 = icmp ne i32 %639, 0
  br i1 %636, label %916, label %641

; <label>:641                                     ; preds = %429
  %642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %643 = extractvalue %dx.types.CBufRet.f32 %642, 0
  %644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %645 = extractvalue %dx.types.CBufRet.f32 %644, 0
  %646 = extractvalue %dx.types.CBufRet.f32 %644, 1
  %647 = fadd fast float %645, %155
  %648 = fadd fast float %646, %156
  %649 = fmul fast float %155, %155
  %650 = fmul fast float %156, %156
  %651 = fadd fast float %649, %650
  %652 = fmul fast float %157, %157
  %653 = fadd fast float %651, %652
  %654 = call float @dx.op.unary.f32(i32 24, float %653)  ; Sqrt(value)
  br i1 %640, label %655, label %701

; <label>:655                                     ; preds = %641
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %658 = fcmp fast ogt float %654, %657
  %659 = zext i1 %658 to i32
  %660 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %661 = fcmp fast ogt float %654, %660
  %662 = zext i1 %661 to i32
  %663 = add nuw nsw i32 %662, %659
  %664 = extractvalue %dx.types.CBufRet.f32 %656, 2
  %665 = fcmp fast ogt float %654, %664
  %666 = zext i1 %665 to i32
  %667 = add nuw nsw i32 %663, %666
  %668 = icmp ult i32 %667, 3
  %669 = zext i1 %668 to i32
  %670 = shl nuw nsw i32 %667, 2
  %671 = add nuw nsw i32 %670, 48
  %672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %671)  ; CBufferLoadLegacy(handle,regIndex)
  %673 = extractvalue %dx.types.CBufRet.f32 %672, 1
  %674 = fcmp fast ogt float %654, %673
  %675 = zext i1 %674 to i32
  %676 = or i32 %670, 1
  %677 = add nuw nsw i32 %676, 48
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %677)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 1
  %680 = fcmp fast ogt float %654, %679
  %681 = zext i1 %680 to i32
  %682 = add nuw nsw i32 %681, %675
  %683 = or i32 %670, 2
  %684 = add nuw nsw i32 %683, 48
  %685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %684)  ; CBufferLoadLegacy(handle,regIndex)
  %686 = extractvalue %dx.types.CBufRet.f32 %685, 1
  %687 = fcmp fast ogt float %654, %686
  %688 = zext i1 %687 to i32
  %689 = add nuw nsw i32 %682, %688
  %690 = add i32 %449, -1
  %691 = call i32 @dx.op.binary.i32(i32 40, i32 %689, i32 %690)  ; UMin(a,b)
  %692 = add i32 %670, %691
  %693 = call i32 @dx.op.binary.i32(i32 40, i32 %692, i32 12)  ; UMin(a,b)
  %694 = add i32 %693, 48
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %694)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = fcmp fast oge float %654, %696
  %698 = zext i1 %697 to i32
  %699 = call i32 @dx.op.binary.i32(i32 40, i32 %449, i32 %669)  ; UMin(a,b)
  %700 = call i32 @dx.op.binary.i32(i32 40, i32 %698, i32 %699)  ; UMin(a,b)
  br label %701

; <label>:701                                     ; preds = %655, %641
  %702 = phi i32 [ %693, %655 ], [ 0, %641 ]
  %703 = phi i32 [ %700, %655 ], [ 0, %641 ]
  %704 = fmul fast float %632, 3.906250e-03
  %705 = add i32 %703, %449
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %903, label %707

; <label>:707                                     ; preds = %701
  br label %708

; <label>:708                                     ; preds = %872, %707
  %709 = phi float [ %899, %872 ], [ 0.000000e+00, %707 ]
  %710 = phi float [ %891, %872 ], [ 0.000000e+00, %707 ]
  %711 = phi float [ %892, %872 ], [ 0.000000e+00, %707 ]
  %712 = phi i32 [ %724, %872 ], [ %702, %707 ]
  %713 = phi i32 [ %900, %872 ], [ 0, %707 ]
  %714 = add i32 %713, %712
  br i1 %640, label %715, label %723

; <label>:715                                     ; preds = %708
  %716 = and i32 %714, -4
  %717 = add i32 %716, %449
  %718 = icmp uge i32 %714, %717
  %719 = sub i32 4, %449
  %720 = select i1 %718, i32 %719, i32 0
  %721 = add i32 %720, %712
  %722 = add i32 %720, %714
  br label %723

; <label>:723                                     ; preds = %715, %708
  %724 = phi i32 [ %721, %715 ], [ %712, %708 ]
  %725 = phi i32 [ %722, %715 ], [ %714, %708 ]
  %726 = and i32 %725, 3
  %727 = select i1 %640, i32 %726, i32 %713
  %728 = lshr i32 %725, 2
  %729 = select i1 %640, i32 %728, i32 0
  %730 = add i32 %725, 32
  %731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %730)  ; CBufferLoadLegacy(handle,regIndex)
  %732 = extractvalue %dx.types.CBufRet.f32 %731, 0
  %733 = extractvalue %dx.types.CBufRet.f32 %731, 1
  %734 = extractvalue %dx.types.CBufRet.f32 %731, 2
  %735 = extractvalue %dx.types.CBufRet.f32 %731, 3
  %736 = fmul fast float %732, %654
  %737 = fadd fast float %736, %733
  %738 = call float @dx.op.unary.f32(i32 7, float %737)  ; Saturate(value)
  %739 = fmul fast float %734, %654
  %740 = fadd fast float %739, %735
  %741 = call float @dx.op.unary.f32(i32 7, float %740)  ; Saturate(value)
  %742 = call float @dx.op.binary.f32(i32 36, float %738, float %741)  ; FMin(a,b)
  %743 = select i1 %640, float %742, float 1.000000e+00
  %744 = mul i32 %727, 72
  %745 = add i32 %466, %744
  %746 = add i32 %745, 16
  %747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = extractvalue %dx.types.ResRet.f32 %747, 3
  %752 = add i32 %745, 36
  %753 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %752, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.f32 %753, 0
  %755 = fmul fast float %704, %754
  %756 = add i32 %745, 56
  %757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.f32 %757, 0
  %759 = fmul fast float %755, %758
  %760 = extractvalue %dx.types.ResRet.f32 %757, 1
  %761 = fadd fast float %759, %760
  %762 = call float @dx.op.binary.f32(i32 35, float %761, float 0.000000e+00)  ; FMax(a,b)
  %763 = add i32 %745, 32
  %764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  br i1 %638, label %766, label %799

; <label>:766                                     ; preds = %723
  %767 = fmul fast float %754, %343
  %768 = fmul fast float %754, %344
  %769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.f32 %769, 1
  %771 = add i32 %745, 40
  %772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = extractvalue %dx.types.ResRet.f32 %772, 3
  %777 = fadd fast float %770, %195
  %778 = fadd fast float %777, %775
  %779 = fmul fast float %777, %774
  %780 = call float @dx.op.unary.f32(i32 29, float %779)  ; Round_z(value)
  %781 = fmul fast float %773, %780
  %782 = fsub fast float %777, %781
  %783 = fmul fast float %778, %774
  %784 = call float @dx.op.unary.f32(i32 29, float %783)  ; Round_z(value)
  %785 = fmul fast float %784, %773
  %786 = fsub fast float %778, %785
  %787 = fmul fast float %782, %767
  %788 = fmul fast float %782, %768
  %789 = fmul fast float %786, %767
  %790 = fmul fast float %786, %768
  %791 = fsub fast float %647, %787
  %792 = fsub fast float %648, %788
  %793 = fsub fast float %647, %789
  %794 = fsub fast float %648, %790
  %795 = fsub fast float %775, %782
  %796 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %797 = fmul fast float %796, %776
  %798 = call float @dx.op.unary.f32(i32 7, float %797)  ; Saturate(value)
  br label %799

; <label>:799                                     ; preds = %766, %723
  %800 = phi float [ %791, %766 ], [ %647, %723 ]
  %801 = phi float [ %792, %766 ], [ %648, %723 ]
  %802 = phi float [ %793, %766 ], [ %647, %723 ]
  %803 = phi float [ %794, %766 ], [ %648, %723 ]
  %804 = phi float [ %798, %766 ], [ 0.000000e+00, %723 ]
  %805 = fmul fast float %443, 4.000000e+00
  %806 = uitofp i32 %729 to float
  %807 = fadd fast float %806, %805
  %808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %809 = extractvalue %dx.types.CBufRet.f32 %808, 0
  %810 = extractvalue %dx.types.CBufRet.f32 %808, 1
  %811 = extractvalue %dx.types.CBufRet.f32 %808, 2
  %812 = extractvalue %dx.types.CBufRet.f32 %808, 3
  %813 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 0
  store float %809, float* %813, align 4
  %814 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 1
  store float %810, float* %814, align 4
  %815 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 2
  store float %811, float* %815, align 4
  %816 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 3
  store float %812, float* %816, align 4
  %817 = getelementptr inbounds [4 x float], [4 x float]* %70, i32 0, i32 %729
  %818 = load float, float* %817, align 4, !tbaa !109, !noalias !113
  %819 = fmul fast float %818, %446
  %820 = select i1 %640, float %819, float %446
  %821 = fmul fast float %800, %748
  %822 = call float @dx.op.tertiary.f32(i32 46, float %749, float %801, float %821)  ; FMad(a,b,c)
  %823 = fmul fast float %800, %750
  %824 = call float @dx.op.tertiary.f32(i32 46, float %751, float %801, float %823)  ; FMad(a,b,c)
  %825 = add i32 %745, 8
  %826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = fadd fast float %827, %822
  %830 = fadd fast float %828, %824
  %831 = fmul fast float %829, %820
  %832 = fmul fast float %830, %820
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = fmul fast float %831, %834
  %837 = fmul fast float %832, %835
  %838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %839 = extractvalue %dx.types.CBufRet.f32 %838, 2
  %840 = fadd fast float %836, %839
  %841 = fadd fast float %837, %839
  %842 = fmul fast float %802, %748
  %843 = call float @dx.op.tertiary.f32(i32 46, float %749, float %803, float %842)  ; FMad(a,b,c)
  %844 = fmul fast float %802, %750
  %845 = call float @dx.op.tertiary.f32(i32 46, float %751, float %803, float %844)  ; FMad(a,b,c)
  %846 = fadd fast float %827, %843
  %847 = fadd fast float %828, %845
  %848 = fmul fast float %846, %820
  %849 = fmul fast float %847, %820
  %850 = fmul fast float %848, %834
  %851 = fmul fast float %849, %835
  %852 = fadd fast float %850, %839
  %853 = fadd fast float %851, %839
  %854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %62, float %840, float %841, float %807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 3
  %858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %62, float %852, float %853, float %807, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %638, label %859, label %872

; <label>:859                                     ; preds = %799
  %860 = extractvalue %dx.types.ResRet.f32 %858, 3
  %861 = extractvalue %dx.types.ResRet.f32 %858, 1
  %862 = extractvalue %dx.types.ResRet.f32 %858, 0
  %863 = fsub fast float %862, %855
  %864 = fsub fast float %861, %856
  %865 = fsub fast float %860, %857
  %866 = fmul fast float %863, %804
  %867 = fmul fast float %864, %804
  %868 = fmul fast float %865, %804
  %869 = fadd fast float %866, %855
  %870 = fadd fast float %867, %856
  %871 = fadd fast float %868, %857
  br label %872

; <label>:872                                     ; preds = %859, %799
  %873 = phi float [ %869, %859 ], [ %855, %799 ]
  %874 = phi float [ %870, %859 ], [ %856, %799 ]
  %875 = phi float [ %871, %859 ], [ %857, %799 ]
  %876 = fmul fast float %873, 2.000000e+00
  %877 = fmul fast float %874, 2.000000e+00
  %878 = fadd fast float %876, -1.000000e+00
  %879 = fadd fast float %877, -1.000000e+00
  %880 = fmul fast float %878, %748
  %881 = call float @dx.op.tertiary.f32(i32 46, float %879, float %750, float %880)  ; FMad(a,b,c)
  %882 = fmul fast float %878, %749
  %883 = call float @dx.op.tertiary.f32(i32 46, float %879, float %751, float %882)  ; FMad(a,b,c)
  %884 = fmul fast float %743, %643
  %885 = fmul fast float %884, %762
  %886 = fmul fast float %885, %765
  %887 = fmul fast float %881, %886
  %888 = fmul fast float %887, %834
  %889 = fmul fast float %883, %886
  %890 = fmul fast float %889, %835
  %891 = fadd fast float %888, %710
  %892 = fadd fast float %890, %711
  %893 = add i32 %745, 64
  %894 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = fmul fast float %895, %875
  %897 = extractvalue %dx.types.ResRet.f32 %894, 1
  %898 = fadd fast float %896, %897
  %899 = call float @dx.op.binary.f32(i32 35, float %709, float %898)  ; FMax(a,b)
  %900 = add nuw i32 %713, 1
  %901 = icmp eq i32 %900, %705
  br i1 %901, label %902, label %708

; <label>:902                                     ; preds = %872
  br label %903

; <label>:903                                     ; preds = %902, %701
  %904 = phi float [ 0.000000e+00, %701 ], [ %899, %902 ]
  %905 = phi float [ 0.000000e+00, %701 ], [ %891, %902 ]
  %906 = phi float [ 0.000000e+00, %701 ], [ %892, %902 ]
  %907 = call float @dx.op.dot3.f32(i32 55, float %905, float %906, float 1.000000e+00, float %905, float %906, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %908 = call float @dx.op.unary.f32(i32 25, float %907)  ; Rsqrt(value)
  %909 = fmul fast float %908, %905
  %910 = fmul fast float %908, %906
  %911 = fmul fast float %904, %492
  %912 = fadd fast float %911, %493
  %913 = call float @dx.op.unary.f32(i32 7, float %912)  ; Saturate(value)
  %914 = fmul float %908, 5.000000e-01
  %915 = fadd float %914, 5.000000e-01
  br label %916

; <label>:916                                     ; preds = %903, %429
  %917 = phi float [ %909, %903 ], [ 0.000000e+00, %429 ]
  %918 = phi float [ %910, %903 ], [ 0.000000e+00, %429 ]
  %919 = phi float [ %915, %903 ], [ 5.000000e-01, %429 ]
  %920 = phi float [ %913, %903 ], [ 0.000000e+00, %429 ]
  %921 = fadd fast float %920, %629
  %922 = icmp ne i32 %449, 0
  %923 = select i1 %922, i32 2, i32 0
  %924 = fcmp fast ogt float %920, 0.000000e+00
  %925 = select i1 %924, i32 4, i32 0
  %926 = fmul fast float %532, %348
  %927 = fadd fast float %926, %533
  %928 = call float @dx.op.binary.f32(i32 35, float %927, float 0.000000e+00)  ; FMax(a,b)
  %929 = fmul fast float %928, %525
  %930 = fadd fast float %929, %526
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fmul fast float %931, %921
  %933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %934 = extractvalue %dx.types.CBufRet.f32 %933, 1
  %935 = fcmp fast oge float %932, %934
  %936 = icmp ne i32 %579, 0
  %937 = select i1 %936, i32 8, i32 0
  %938 = shl i32 %440, 3
  %939 = and i32 %938, 16
  %940 = and i32 %440, 2
  %941 = icmp ne i32 %940, 0
  %942 = and i1 %941, %935
  %943 = select i1 %942, i32 32, i32 0
  %944 = shl i32 %440, 2
  %945 = and i32 %944, 256
  %946 = or i32 %945, %939
  %947 = or i32 %946, %923
  %948 = or i32 %947, %937
  %949 = or i32 %948, %925
  %950 = or i32 %949, %943
  %951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %952 = extractvalue %dx.types.CBufRet.f32 %951, 0
  %953 = fmul fast float %952, %89
  %954 = extractvalue %dx.types.CBufRet.f32 %951, 1
  %955 = fadd fast float %953, %954
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 0
  %959 = fmul fast float %958, %956
  %960 = select i1 %936, float %959, float 0.000000e+00
  %961 = fcmp fast ogt float %960, 0.000000e+00
  %962 = or i1 %942, %961
  br i1 %962, label %963, label %1239

; <label>:963                                     ; preds = %916
  %964 = select i1 %935, float %921, float 0.000000e+00
  %965 = add i32 %224, 0
  %966 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %965, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %967 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %966, i32 0)  ; GetDimensions(handle,mipLevel)
  %968 = extractvalue %dx.types.Dimensions %967, 0
  %969 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %968)  ; FirstbitLo(value)
  %970 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.i32 %970, 1
  %972 = sub nsw i32 %971, %969
  %973 = sitofp i32 %972 to float
  %974 = fsub fast float %485, %973
  %975 = call float @dx.op.binary.f32(i32 35, float %974, float 0.000000e+00)  ; FMax(a,b)
  %976 = fmul fast float %469, %233
  %977 = fmul fast float %469, %234
  %978 = fmul fast float %483, %81
  %979 = fmul fast float %483, %82
  %980 = call float @dx.op.unary.f32(i32 22, float %978)  ; Frc(value)
  %981 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %982 = fmul fast float %980, 2.000000e+00
  %983 = fmul fast float %981, 2.000000e+00
  %984 = fadd fast float %982, -1.000000e+00
  %985 = fadd fast float %983, -1.000000e+00
  %986 = call float @dx.op.unary.f32(i32 6, float %984)  ; FAbs(value)
  %987 = call float @dx.op.unary.f32(i32 6, float %985)  ; FAbs(value)
  %988 = fsub fast float 1.000000e+00, %986
  %989 = fmul fast float %988, %987
  %990 = fsub fast float %988, %989
  %991 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 0
  store float %990, float* %991, align 4, !tbaa !109, !noalias !118
  %992 = fmul fast float %987, %986
  %993 = fsub fast float %986, %992
  %994 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 1
  store float %993, float* %994, align 4, !tbaa !109, !noalias !118
  %995 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 2
  store float %989, float* %995, align 4, !tbaa !109, !noalias !118
  %996 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 3
  store float %992, float* %996, align 4, !tbaa !109, !noalias !118
  br label %997

; <label>:997                                     ; preds = %1220, %963
  %998 = phi float [ 0.000000e+00, %963 ], [ %1221, %1220 ]
  %999 = phi float [ 0.000000e+00, %963 ], [ %1222, %1220 ]
  %1000 = phi float [ 0.000000e+00, %963 ], [ %1223, %1220 ]
  %1001 = phi float [ 0.000000e+00, %963 ], [ %1224, %1220 ]
  %1002 = phi float [ 0.000000e+00, %963 ], [ %1225, %1220 ]
  %1003 = phi i32 [ 0, %963 ], [ %1226, %1220 ]
  %1004 = phi float [ %917, %963 ], [ %1098, %1220 ]
  %1005 = phi float [ %918, %963 ], [ %1099, %1220 ]
  %1006 = mul i32 %1003, 2
  %1007 = add i32 0, %1006
  %1008 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1007
  %1009 = load float, float* %1008, align 4
  %1010 = mul i32 %1003, 2
  %1011 = add i32 1, %1010
  %1012 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %1011
  %1013 = load float, float* %1012, align 4
  %1014 = fmul fast float %1009, 5.000000e-01
  %1015 = fmul fast float %1013, 5.000000e-01
  %1016 = fsub fast float 1.000000e+00, %1009
  %1017 = fsub fast float 1.000000e+00, %1013
  %1018 = fmul fast float %1016, 5.000000e-01
  %1019 = fmul fast float %1017, 5.000000e-01
  %1020 = fadd fast float %1014, %978
  %1021 = fadd fast float %1015, %979
  %1022 = call float @dx.op.unary.f32(i32 27, float %1020)  ; Round_ni(value)
  %1023 = call float @dx.op.unary.f32(i32 27, float %1021)  ; Round_ni(value)
  %1024 = fadd fast float %1022, %1018
  %1025 = fadd fast float %1023, %1019
  %1026 = fmul fast float %1024, %484
  %1027 = fmul fast float %1025, %484
  %1028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1029 = extractvalue %dx.types.CBufRet.f32 %1028, 0
  %1030 = fmul fast float %1026, %1029
  %1031 = fmul fast float %1027, %1029
  %1032 = extractvalue %dx.types.CBufRet.f32 %1028, 1
  %1033 = fadd fast float %1030, %1032
  %1034 = fadd fast float %1031, %1032
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %966, %dx.types.Handle %64, float %1033, float %1034, float %213, float undef, i32 0, i32 0, i32 undef, float %975)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %1039 = extractvalue %dx.types.CBufRet.f32 %1038, 3
  %1040 = fmul fast float %1039, 2.000000e+00
  %1041 = fmul fast float %1040, %1036
  %1042 = fmul fast float %1040, %1037
  %1043 = fsub fast float %1041, %1039
  %1044 = fsub fast float %1042, %1039
  %1045 = fmul fast float %1043, %1043
  %1046 = fmul fast float %1044, %1044
  %1047 = fadd fast float %1045, %1046
  %1048 = call float @dx.op.unary.f32(i32 24, float %1047)  ; Sqrt(value)
  %1049 = fcmp fast ogt float %1048, 0.000000e+00
  %1050 = fdiv fast float 1.000000e+00, %1048
  %1051 = fmul fast float %1043, %1050
  %1052 = fmul fast float %1044, %1050
  %1053 = select i1 %1049, float %1051, float 0.000000e+00
  %1054 = select i1 %1049, float %1052, float 0.000000e+00
  br i1 %961, label %1055, label %1097

; <label>:1055                                    ; preds = %997
  %1056 = add i32 %579, 0
  %1057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1056, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 1
  %1060 = fmul fast float %480, %469
  %1061 = fmul fast float %1060, %1048
  %1062 = fsub fast float -0.000000e+00, %1053
  %1063 = fmul fast float %1054, %976
  %1064 = call float @dx.op.tertiary.f32(i32 46, float %1062, float %977, float %1063)  ; FMad(a,b,c)
  %1065 = fmul fast float %1053, %976
  %1066 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %977, float %1065)  ; FMad(a,b,c)
  %1067 = fmul fast float %1061, %1059
  %1068 = fsub fast float %1066, %1067
  %1069 = fmul fast float %1064, %472
  %1070 = fmul fast float %1068, %473
  %1071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1057, %dx.types.Handle %1071, float %1069, float %1070, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 3
  %1075 = fadd fast float %1073, %1074
  %1076 = fmul fast float %1075, %582
  %1077 = fsub fast float %1076, %582
  %1078 = fsub fast float %1073, %1074
  %1079 = fmul fast float %1078, %582
  %1080 = fmul fast float %1077, %1054
  %1081 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %1079, float %1080)  ; FMad(a,b,c)
  %1082 = fmul fast float %1077, %1062
  %1083 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %1079, float %1082)  ; FMad(a,b,c)
  %1084 = fmul fast float %1081, %472
  %1085 = fmul fast float %1083, %473
  %1086 = fmul fast float %476, %348
  %1087 = fadd fast float %1086, %477
  %1088 = call float @dx.op.binary.f32(i32 35, float %1087, float 0.000000e+00)  ; FMax(a,b)
  %1089 = fmul fast float %1088, %960
  %1090 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %1003
  %1091 = load float, float* %1090, align 4, !tbaa !109, !noalias !118
  %1092 = fmul fast float %1089, %1091
  %1093 = fmul fast float %1084, %1092
  %1094 = fmul fast float %1085, %1092
  %1095 = fadd fast float %1093, %1004
  %1096 = fadd fast float %1094, %1005
  br label %1097

; <label>:1097                                    ; preds = %1055, %997
  %1098 = phi float [ %1095, %1055 ], [ %1004, %997 ]
  %1099 = phi float [ %1096, %1055 ], [ %1005, %997 ]
  %1100 = fcmp fast ogt float %964, 0.000000e+00
  %1101 = and i1 %941, %1100
  br i1 %1101, label %1102, label %1220

; <label>:1102                                    ; preds = %1097
  %1103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1104 = extractvalue %dx.types.CBufRet.f32 %1103, 1
  %1105 = fmul fast float %529, %469
  %1106 = fmul fast float %1048, %1105
  %1107 = fsub fast float -0.000000e+00, %1053
  %1108 = fmul fast float %1054, %976
  %1109 = call float @dx.op.tertiary.f32(i32 46, float %1107, float %977, float %1108)  ; FMad(a,b,c)
  %1110 = fmul fast float %1053, %976
  %1111 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %977, float %1110)  ; FMad(a,b,c)
  %1112 = fmul fast float %1106, %1104
  %1113 = fsub fast float %1111, %1112
  %1114 = fmul fast float %1109, %517
  %1115 = fmul fast float %1113, %518
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1116, float %1114, float %1115, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = fmul fast float %929, %1118
  %1120 = fadd fast float %1119, %526
  %1121 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1123 = extractvalue %dx.types.CBufRet.f32 %1122, 2
  %1124 = fmul fast float %1123, %89
  %1125 = extractvalue %dx.types.CBufRet.f32 %1122, 3
  %1126 = fadd fast float %1124, %1125
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  %1128 = fcmp fast ogt float %1121, 0.000000e+00
  %1129 = fcmp fast ogt float %1127, 0.000000e+00
  %1130 = and i1 %1128, %1129
  %1131 = and i32 %440, 64
  %1132 = icmp ne i32 %1131, 0
  %1133 = and i1 %1132, %1130
  br i1 %1133, label %1134, label %1202

; <label>:1134                                    ; preds = %1102
  %1135 = add i32 %599, 0
  %1136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1135, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1137 = add i32 %602, 0
  %1138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1137, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1139 = fmul fast float %1109, %521
  %1140 = fmul fast float %1113, %522
  %1141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1136, %dx.types.Handle %1116, float %1139, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = extractvalue %dx.types.ResRet.f32 %1141, 1
  %1144 = extractvalue %dx.types.ResRet.f32 %1141, 2
  %1145 = extractvalue %dx.types.ResRet.f32 %1141, 3
  %1146 = fmul fast float %1142, %585
  %1147 = fadd fast float %1146, %586
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  %1149 = fadd fast float %1143, %1145
  %1150 = fmul fast float %1149, %587
  %1151 = fsub fast float %1150, %587
  %1152 = fsub fast float %1143, %1145
  %1153 = fmul fast float %1152, %587
  %1154 = fmul fast float %1151, %1054
  %1155 = call float @dx.op.tertiary.f32(i32 46, float %1053, float %1153, float %1154)  ; FMad(a,b,c)
  %1156 = fmul fast float %1151, %1107
  %1157 = call float @dx.op.tertiary.f32(i32 46, float %1054, float %1153, float %1156)  ; FMad(a,b,c)
  %1158 = fmul fast float %1155, %521
  %1159 = fmul fast float %1157, %522
  %1160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1138, %dx.types.Handle %1116, float %1139, float %1140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1161 = extractvalue %dx.types.ResRet.f32 %1160, 0
  %1162 = fsub fast float 1.000000e+00, %1121
  %1163 = bitcast float %1121 to i32
  %1164 = sitofp i32 %1163 to float
  %1165 = fadd fast float %1164, 0xC1CFBF8940000000
  %1166 = fmul fast float %1165, %514
  %1167 = fadd fast float %1166, 0x41CFBF8940000000
  %1168 = fptosi float %1167 to i32
  %1169 = bitcast i32 %1168 to float
  %1170 = bitcast float %1162 to i32
  %1171 = sitofp i32 %1170 to float
  %1172 = fadd fast float %1171, 0xC1CFBF8940000000
  %1173 = fmul fast float %1172, %514
  %1174 = fadd fast float %1173, 0x41CFBF8940000000
  %1175 = fptosi float %1174 to i32
  %1176 = bitcast i32 %1175 to float
  %1177 = fmul fast float %1169, %511
  %1178 = fmul fast float %1176, %511
  %1179 = fsub fast float %1162, %1177
  %1180 = fadd fast float %1178, %1162
  %1181 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1182 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  %1183 = fsub fast float %1161, %1181
  %1184 = fsub fast float %1182, %1181
  %1185 = bitcast float %1184 to i32
  %1186 = sub nsw i32 2129859010, %1185
  %1187 = bitcast i32 %1186 to float
  %1188 = fmul fast float %1187, %1183
  %1189 = call float @dx.op.unary.f32(i32 7, float %1188)  ; Saturate(value)
  %1190 = fmul fast float %1127, %508
  %1191 = fmul fast float %1190, %1189
  %1192 = fmul fast float %1158, %1191
  %1193 = fmul fast float %1159, %1191
  %1194 = fadd fast float %1144, -1.000000e+00
  %1195 = fmul fast float %1191, %1194
  %1196 = fadd fast float %1195, 1.000000e+00
  %1197 = fsub fast float %1148, %502
  %1198 = fmul fast float %1191, %1197
  %1199 = fadd fast float %1198, %502
  %1200 = fmul fast float %1191, %1162
  %1201 = fadd fast float %1200, %1121
  br label %1202

; <label>:1202                                    ; preds = %1134, %1102
  %1203 = phi float [ %1201, %1134 ], [ %1121, %1102 ]
  %1204 = phi float [ %1199, %1134 ], [ %502, %1102 ]
  %1205 = phi float [ %1196, %1134 ], [ 1.000000e+00, %1102 ]
  %1206 = phi float [ %1192, %1134 ], [ 0.000000e+00, %1102 ]
  %1207 = phi float [ %1193, %1134 ], [ 0.000000e+00, %1102 ]
  %1208 = getelementptr [4 x float], [4 x float]* %97, i32 0, i32 %1003
  %1209 = load float, float* %1208, align 4, !tbaa !109, !noalias !118
  %1210 = fmul fast float %1209, %1203
  %1211 = fmul fast float %1210, %1206
  %1212 = fmul fast float %1210, %1207
  %1213 = fadd fast float %1211, %998
  %1214 = fadd fast float %1212, %999
  %1215 = fmul fast float %1210, %1205
  %1216 = fadd fast float %1215, %1000
  %1217 = fmul fast float %1210, %1204
  %1218 = fadd fast float %1217, %1001
  %1219 = fadd fast float %1210, %1002
  br label %1220

; <label>:1220                                    ; preds = %1202, %1097
  %1221 = phi float [ %1213, %1202 ], [ %998, %1097 ]
  %1222 = phi float [ %1214, %1202 ], [ %999, %1097 ]
  %1223 = phi float [ %1216, %1202 ], [ %1000, %1097 ]
  %1224 = phi float [ %1218, %1202 ], [ %1001, %1097 ]
  %1225 = phi float [ %1219, %1202 ], [ %1002, %1097 ]
  %1226 = add nuw nsw i32 %1003, 1
  %1227 = icmp eq i32 %1226, 4
  br i1 %1227, label %1228, label %997, !llvm.loop !125

; <label>:1228                                    ; preds = %1220
  %1229 = fmul fast float %1225, %964
  %1230 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1229)  ; FMax(a,b)
  %1231 = fmul fast float %1225, %1221
  %1232 = fmul fast float %1225, %1222
  %1233 = fadd fast float %1223, -1.000000e+00
  %1234 = fmul fast float %1225, %1233
  %1235 = fadd fast float %1234, 1.000000e+00
  %1236 = fsub fast float %1224, %458
  %1237 = fmul fast float %1225, %1236
  %1238 = fadd fast float %1237, %458
  br label %1239

; <label>:1239                                    ; preds = %1228, %916
  %1240 = phi float [ %1098, %1228 ], [ %917, %916 ]
  %1241 = phi float [ %1099, %1228 ], [ %918, %916 ]
  %1242 = phi float [ %1230, %1228 ], [ 0.000000e+00, %916 ]
  %1243 = phi float [ %1231, %1228 ], [ 0.000000e+00, %916 ]
  %1244 = phi float [ %1232, %1228 ], [ 0.000000e+00, %916 ]
  %1245 = phi float [ %1235, %1228 ], [ 1.000000e+00, %916 ]
  %1246 = phi float [ %1238, %1228 ], [ %458, %916 ]
  %1247 = fmul fast float %565, %348
  %1248 = fadd fast float %1247, %566
  %1249 = call float @dx.op.binary.f32(i32 35, float %1248, float 0.000000e+00)  ; FMax(a,b)
  %1250 = fmul fast float %1249, %561
  %1251 = fadd fast float %1250, %562
  %1252 = call float @dx.op.unary.f32(i32 7, float %1251)  ; Saturate(value)
  %1253 = fmul fast float %1252, %921
  %1254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1255 = extractvalue %dx.types.CBufRet.f32 %1254, 1
  %1256 = fcmp fast oge float %1253, %1255
  %1257 = shl i32 %440, 4
  %1258 = and i32 %1257, 64
  %1259 = or i32 %950, %1258
  %1260 = and i32 %440, 4
  %1261 = icmp ne i32 %1260, 0
  %1262 = and i1 %1261, %1256
  %1263 = select i1 %1262, i32 128, i32 0
  %1264 = or i32 %1263, %1259
  br i1 %1262, label %1265, label %1554

; <label>:1265                                    ; preds = %1239
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = fsub fast float %155, %233
  %1270 = fadd fast float %1269, %1267
  %1271 = fsub fast float %156, %234
  %1272 = fadd fast float %1271, %1268
  %1273 = fmul fast float %1270, %536
  %1274 = fmul fast float %1272, %536
  %1275 = fadd fast float %1273, %233
  %1276 = fadd fast float %1274, %234
  %1277 = add i32 %605, 0
  %1278 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1277, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1279 = fmul fast float %1275, %543
  %1280 = fmul fast float %1276, %543
  %1281 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1282 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1278, %dx.types.Handle %1281, float %1279, float %1280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1283 = extractvalue %dx.types.ResRet.f32 %1282, 0
  %1284 = extractvalue %dx.types.ResRet.f32 %1282, 1
  %1285 = extractvalue %dx.types.ResRet.f32 %1282, 2
  %1286 = fmul fast float %1283, 2.000000e+00
  %1287 = fmul fast float %1284, 2.000000e+00
  %1288 = fadd fast float %1286, -1.000000e+00
  %1289 = fadd fast float %1287, -1.000000e+00
  %1290 = fmul fast float %1285, %539
  %1291 = fmul fast float %1290, %552
  %1292 = fmul fast float %1291, %1288
  %1293 = fmul fast float %1291, %1289
  %1294 = fsub fast float %343, %1292
  %1295 = fsub fast float %344, %1293
  %1296 = fmul fast float %1294, %549
  %1297 = fmul fast float %1295, %549
  %1298 = fadd fast float %1296, %1292
  %1299 = fadd fast float %1297, %1293
  %1300 = fmul fast float %1298, %552
  %1301 = fmul fast float %1299, %552
  %1302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1303 = extractvalue %dx.types.CBufRet.f32 %1302, 1
  %1304 = fmul fast float %552, %195
  %1305 = fadd fast float %1303, %1304
  %1306 = fadd fast float %1305, %557
  %1307 = fmul fast float %1305, %556
  %1308 = call float @dx.op.unary.f32(i32 29, float %1307)  ; Round_z(value)
  %1309 = fmul fast float %1308, %555
  %1310 = fsub fast float %1305, %1309
  %1311 = fmul fast float %1306, %556
  %1312 = call float @dx.op.unary.f32(i32 29, float %1311)  ; Round_z(value)
  %1313 = fmul fast float %1312, %555
  %1314 = fsub fast float %1306, %1313
  %1315 = fmul fast float %1300, %1310
  %1316 = fmul fast float %1301, %1310
  %1317 = fmul fast float %1300, %1314
  %1318 = fmul fast float %1301, %1314
  %1319 = fsub fast float %1275, %1315
  %1320 = fsub fast float %1276, %1316
  %1321 = fsub fast float %1275, %1317
  %1322 = fsub fast float %1276, %1318
  %1323 = fsub fast float %557, %1310
  %1324 = call float @dx.op.unary.f32(i32 6, float %1323)  ; FAbs(value)
  %1325 = fmul fast float %1324, %558
  %1326 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1327 = fmul fast float %1319, %540
  %1328 = fmul fast float %1320, %540
  %1329 = fmul fast float %1321, %540
  %1330 = fmul fast float %1322, %540
  %1331 = fcmp fast ogt float %546, 0.000000e+00
  br i1 %1331, label %1332, label %1419

; <label>:1332                                    ; preds = %1265
  %1333 = fmul fast float %546, %195
  %1334 = fmul fast float %1333, 5.000000e-01
  %1335 = fadd fast float %1334, 5.000000e-01
  %1336 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1337 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1338 = call float @dx.op.unary.f32(i32 27, float %1335)  ; Round_ni(value)
  %1339 = call float @dx.op.unary.f32(i32 27, float %1334)  ; Round_ni(value)
  %1340 = fmul fast float %1338, 2.000000e+00
  %1341 = fmul fast float %1339, 2.000000e+00
  %1342 = fadd fast float %1341, 1.000000e+00
  %1343 = fsub fast float 1.000000e+00, %1336
  %1344 = fsub fast float 1.000000e+00, %1337
  %1345 = call float @dx.op.binary.f32(i32 36, float %1336, float %1343)  ; FMin(a,b)
  %1346 = call float @dx.op.binary.f32(i32 36, float %1337, float %1344)  ; FMin(a,b)
  %1347 = fmul fast float %1345, 2.000000e+00
  %1348 = fmul fast float %1346, 2.000000e+00
  %1349 = call float @dx.op.dot3.f32(i32 55, float %1340, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1350 = call float @dx.op.dot3.f32(i32 55, float %1340, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1351 = call float @dx.op.dot3.f32(i32 55, float %1340, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1352 = call float @dx.op.unary.f32(i32 13, float %1349)  ; Sin(value)
  %1353 = call float @dx.op.unary.f32(i32 13, float %1350)  ; Sin(value)
  %1354 = call float @dx.op.unary.f32(i32 13, float %1351)  ; Sin(value)
  %1355 = fmul fast float %1352, 0x40E55DD180000000
  %1356 = fmul fast float %1353, 0x40E55DD180000000
  %1357 = fmul fast float %1354, 0x40E55DD180000000
  %1358 = call float @dx.op.unary.f32(i32 22, float %1355)  ; Frc(value)
  %1359 = call float @dx.op.unary.f32(i32 22, float %1356)  ; Frc(value)
  %1360 = call float @dx.op.unary.f32(i32 22, float %1357)  ; Frc(value)
  %1361 = fmul fast float %1358, 0x401921FB60000000
  %1362 = call float @dx.op.unary.f32(i32 12, float %1361)  ; Cos(value)
  %1363 = call float @dx.op.unary.f32(i32 13, float %1361)  ; Sin(value)
  %1364 = fsub fast float -0.000000e+00, %1363
  %1365 = call float @dx.op.dot3.f32(i32 55, float %1342, float 0.000000e+00, float 0.000000e+00, float 0x405FC66660000000, float 0x40737B3340000000, float 0x4052ACCCC0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1366 = call float @dx.op.dot3.f32(i32 55, float %1342, float 0.000000e+00, float 0.000000e+00, float 2.695000e+02, float 0x4066E999A0000000, float 0x406EC33340000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1367 = call float @dx.op.dot3.f32(i32 55, float %1342, float 0.000000e+00, float 0.000000e+00, float 1.135000e+02, float 0x4070FE6660000000, float 0x405F266660000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1368 = call float @dx.op.unary.f32(i32 13, float %1365)  ; Sin(value)
  %1369 = call float @dx.op.unary.f32(i32 13, float %1366)  ; Sin(value)
  %1370 = call float @dx.op.unary.f32(i32 13, float %1367)  ; Sin(value)
  %1371 = fmul fast float %1368, 0x40E55DD180000000
  %1372 = fmul fast float %1369, 0x40E55DD180000000
  %1373 = fmul fast float %1370, 0x40E55DD180000000
  %1374 = call float @dx.op.unary.f32(i32 22, float %1371)  ; Frc(value)
  %1375 = call float @dx.op.unary.f32(i32 22, float %1372)  ; Frc(value)
  %1376 = call float @dx.op.unary.f32(i32 22, float %1373)  ; Frc(value)
  %1377 = fmul fast float %1374, 0x401921FB60000000
  %1378 = call float @dx.op.unary.f32(i32 12, float %1377)  ; Cos(value)
  %1379 = call float @dx.op.unary.f32(i32 13, float %1377)  ; Sin(value)
  %1380 = fsub fast float -0.000000e+00, %1379
  %1381 = fmul fast float %1362, %1327
  %1382 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1364, float %1381)  ; FMad(a,b,c)
  %1383 = fmul fast float %1363, %1327
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1362, float %1383)  ; FMad(a,b,c)
  %1385 = fadd fast float %1382, %1359
  %1386 = fadd fast float %1384, %1360
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1281, float %1385, float %1386, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = fmul fast float %1388, %1347
  %1390 = fmul fast float %1378, %1327
  %1391 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1380, float %1390)  ; FMad(a,b,c)
  %1392 = fmul fast float %1379, %1327
  %1393 = call float @dx.op.tertiary.f32(i32 46, float %1328, float %1378, float %1392)  ; FMad(a,b,c)
  %1394 = fadd fast float %1391, %1375
  %1395 = fadd fast float %1393, %1376
  %1396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1281, float %1394, float %1395, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = fmul fast float %1397, %1348
  %1399 = fadd fast float %1398, %1389
  %1400 = fmul fast float %1362, %1329
  %1401 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1364, float %1400)  ; FMad(a,b,c)
  %1402 = fmul fast float %1363, %1329
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1362, float %1402)  ; FMad(a,b,c)
  %1404 = fadd fast float %1401, %1359
  %1405 = fadd fast float %1403, %1360
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1281, float %1404, float %1405, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = fmul fast float %1407, %1347
  %1409 = fmul fast float %1378, %1329
  %1410 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1380, float %1409)  ; FMad(a,b,c)
  %1411 = fmul fast float %1379, %1329
  %1412 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1378, float %1411)  ; FMad(a,b,c)
  %1413 = fadd fast float %1410, %1375
  %1414 = fadd fast float %1412, %1376
  %1415 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1281, float %1413, float %1414, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1416 = extractvalue %dx.types.ResRet.f32 %1415, 0
  %1417 = fmul fast float %1416, %1348
  %1418 = fadd fast float %1417, %1408
  br label %1424

; <label>:1419                                    ; preds = %1265
  %1420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1281, float %1327, float %1328, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1421 = extractvalue %dx.types.ResRet.f32 %1420, 0
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1281, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  br label %1424

; <label>:1424                                    ; preds = %1419, %1332
  %1425 = phi float [ %1399, %1332 ], [ %1421, %1419 ]
  %1426 = phi float [ %1418, %1332 ], [ %1423, %1419 ]
  %1427 = fsub fast float %1426, %1425
  %1428 = fmul fast float %1427, %1326
  %1429 = fadd fast float %1428, %1425
  %1430 = fmul fast float %1250, %1429
  %1431 = fadd fast float %1430, %562
  %1432 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1435 = fmul fast float %1434, %89
  %1436 = extractvalue %dx.types.CBufRet.f32 %1433, 3
  %1437 = fadd fast float %1435, %1436
  %1438 = call float @dx.op.unary.f32(i32 7, float %1437)  ; Saturate(value)
  %1439 = fcmp fast ogt float %1432, 0.000000e+00
  %1440 = fcmp fast ogt float %1438, 0.000000e+00
  %1441 = and i1 %1439, %1440
  %1442 = and i32 %440, 64
  %1443 = icmp ne i32 %1442, 0
  %1444 = and i1 %1443, %1441
  br i1 %1444, label %1445, label %1534

; <label>:1445                                    ; preds = %1424
  %1446 = add i32 %599, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1446, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = fmul fast float %1327, %569
  %1449 = fmul fast float %1328, %570
  %1450 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1447, %dx.types.Handle %1281, float %1448, float %1449, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = extractvalue %dx.types.ResRet.f32 %1450, 1
  %1453 = extractvalue %dx.types.ResRet.f32 %1450, 2
  %1454 = extractvalue %dx.types.ResRet.f32 %1450, 3
  %1455 = fmul fast float %1451, %585
  %1456 = fadd fast float %1455, %586
  %1457 = call float @dx.op.unary.f32(i32 7, float %1456)  ; Saturate(value)
  %1458 = fadd fast float %1452, %1454
  %1459 = fmul fast float %1458, %587
  %1460 = fsub fast float %1459, %587
  %1461 = fsub fast float %1452, %1454
  %1462 = fmul fast float %1329, %569
  %1463 = fmul fast float %1330, %570
  %1464 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1447, %dx.types.Handle %1281, float %1462, float %1463, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = extractvalue %dx.types.ResRet.f32 %1464, 3
  %1469 = fmul fast float %1465, %585
  %1470 = fadd fast float %1469, %586
  %1471 = call float @dx.op.unary.f32(i32 7, float %1470)  ; Saturate(value)
  %1472 = fsub fast float %1468, %1458
  %1473 = fadd fast float %1472, %1466
  %1474 = fsub fast float -0.000000e+00, %1461
  %1475 = fsub fast float %1474, %1468
  %1476 = fadd fast float %1475, %1466
  %1477 = fmul fast float %1326, %587
  %1478 = fmul fast float %1477, %1473
  %1479 = fmul fast float %1476, %1326
  %1480 = fadd fast float %1478, %1460
  %1481 = fmul fast float %569, %1480
  %1482 = fadd fast float %1479, %1461
  %1483 = fmul fast float %587, %1482
  %1484 = fmul fast float %570, %1483
  %1485 = fsub fast float %1467, %1453
  %1486 = fmul fast float %1485, %1326
  %1487 = fsub fast float %1471, %1457
  %1488 = fmul fast float %1487, %1326
  %1489 = fsub fast float %1465, %1451
  %1490 = fmul fast float %1489, %1326
  %1491 = fsub fast float 1.000000e+00, %1432
  %1492 = bitcast float %1432 to i32
  %1493 = sitofp i32 %1492 to float
  %1494 = fadd fast float %1493, 0xC1CFBF8940000000
  %1495 = fmul fast float %1494, %514
  %1496 = fadd fast float %1495, 0x41CFBF8940000000
  %1497 = fptosi float %1496 to i32
  %1498 = bitcast i32 %1497 to float
  %1499 = bitcast float %1491 to i32
  %1500 = sitofp i32 %1499 to float
  %1501 = fadd fast float %1500, 0xC1CFBF8940000000
  %1502 = fmul fast float %1501, %514
  %1503 = fadd fast float %1502, 0x41CFBF8940000000
  %1504 = fptosi float %1503 to i32
  %1505 = bitcast i32 %1504 to float
  %1506 = fmul fast float %1498, %511
  %1507 = fmul fast float %1505, %511
  %1508 = fsub fast float %1491, %1506
  %1509 = fadd fast float %1507, %1491
  %1510 = call float @dx.op.unary.f32(i32 7, float %1508)  ; Saturate(value)
  %1511 = call float @dx.op.unary.f32(i32 7, float %1509)  ; Saturate(value)
  %1512 = fsub fast float %1451, %1510
  %1513 = fadd fast float %1512, %1490
  %1514 = fsub fast float %1511, %1510
  %1515 = bitcast float %1514 to i32
  %1516 = sub nsw i32 2129859010, %1515
  %1517 = bitcast i32 %1516 to float
  %1518 = fmul fast float %1517, %1513
  %1519 = call float @dx.op.unary.f32(i32 7, float %1518)  ; Saturate(value)
  %1520 = fmul fast float %1438, %508
  %1521 = fmul fast float %1520, %1519
  %1522 = fmul fast float %1481, %1521
  %1523 = fmul fast float %1484, %1521
  %1524 = fadd fast float %1453, -1.000000e+00
  %1525 = fadd fast float %1524, %1486
  %1526 = fmul fast float %1521, %1525
  %1527 = fadd fast float %1526, 1.000000e+00
  %1528 = fsub fast float %1457, %502
  %1529 = fadd fast float %1528, %1488
  %1530 = fmul fast float %1521, %1529
  %1531 = fadd fast float %1530, %502
  %1532 = fmul fast float %1521, %1491
  %1533 = fadd fast float %1532, %1432
  br label %1534

; <label>:1534                                    ; preds = %1445, %1424
  %1535 = phi float [ %1533, %1445 ], [ %1432, %1424 ]
  %1536 = phi float [ %1522, %1445 ], [ 0.000000e+00, %1424 ]
  %1537 = phi float [ %1523, %1445 ], [ 0.000000e+00, %1424 ]
  %1538 = phi float [ %1527, %1445 ], [ 1.000000e+00, %1424 ]
  %1539 = phi float [ %1531, %1445 ], [ %502, %1424 ]
  %1540 = fsub fast float %1536, %1243
  %1541 = fsub fast float %1537, %1244
  %1542 = fmul fast float %1540, %1535
  %1543 = fmul fast float %1541, %1535
  %1544 = fadd fast float %1542, %1243
  %1545 = fadd fast float %1543, %1244
  %1546 = fsub fast float %1538, %1245
  %1547 = fmul fast float %1546, %1535
  %1548 = fadd fast float %1547, %1245
  %1549 = fsub fast float %1539, %1246
  %1550 = fmul fast float %1549, %1535
  %1551 = fadd fast float %1550, %1246
  %1552 = fmul fast float %1535, %921
  %1553 = call float @dx.op.binary.f32(i32 35, float %1242, float %1552)  ; FMax(a,b)
  br label %1554

; <label>:1554                                    ; preds = %1534, %1239
  %1555 = phi float [ %1553, %1534 ], [ %1242, %1239 ]
  %1556 = phi float [ %1544, %1534 ], [ %1243, %1239 ]
  %1557 = phi float [ %1545, %1534 ], [ %1244, %1239 ]
  %1558 = phi float [ %1548, %1534 ], [ %1245, %1239 ]
  %1559 = phi float [ %1551, %1534 ], [ %1246, %1239 ]
  %1560 = and i32 %440, 16
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1628, label %1562

; <label>:1562                                    ; preds = %1554
  %1563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1564 = extractvalue %dx.types.CBufRet.f32 %1563, 0
  %1565 = extractvalue %dx.types.CBufRet.f32 %1563, 1
  %1566 = fadd fast float %1564, %155
  %1567 = fadd fast float %1565, %156
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1571 = fsub fast float %1566, %1569
  %1572 = fsub fast float %1567, %1570
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 2
  %1575 = fmul fast float %1571, %1574
  %1576 = fmul fast float %1572, %1574
  %1577 = fadd fast float %1575, 5.000000e-01
  %1578 = fadd fast float %1576, 5.000000e-01
  %1579 = fcmp fast olt float %1577, 0.000000e+00
  %1580 = fcmp fast olt float %1578, 0.000000e+00
  %1581 = or i1 %1579, %1580
  %1582 = fcmp fast oge float %1577, 1.000000e+00
  %1583 = fcmp fast oge float %1578, 1.000000e+00
  %1584 = or i1 %1582, %1583
  %1585 = or i1 %1581, %1584
  br i1 %1585, label %1619, label %1586

; <label>:1586                                    ; preds = %1562
  %1587 = extractvalue %dx.types.CBufRet.f32 %1563, 2
  %1588 = fadd fast float %1587, %157
  %1589 = fmul fast float %1574, %1566
  %1590 = fmul fast float %1574, %1567
  %1591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1592 = extractvalue %dx.types.CBufRet.f32 %1591, 2
  %1593 = fsub fast float %1588, %1592
  %1594 = extractvalue %dx.types.CBufRet.f32 %1591, 1
  %1595 = fmul fast float %1593, %1594
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = call float @dx.op.binary.f32(i32 36, float %1578, float %1596)  ; FMin(a,b)
  %1598 = call float @dx.op.binary.f32(i32 36, float %1577, float %1597)  ; FMin(a,b)
  %1599 = call float @dx.op.binary.f32(i32 35, float %1578, float %1596)  ; FMax(a,b)
  %1600 = call float @dx.op.binary.f32(i32 35, float %1577, float %1599)  ; FMax(a,b)
  %1601 = fsub fast float 1.000000e+00, %1600
  %1602 = call float @dx.op.binary.f32(i32 36, float %1598, float %1601)  ; FMin(a,b)
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 3
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1607 = call float @dx.op.binary.f32(i32 35, float %1606, float %1604)  ; FMax(a,b)
  %1608 = fsub fast float %1607, %1606
  %1609 = fsub fast float %1602, %1606
  %1610 = fdiv fast float %1609, %1608
  %1611 = call float @dx.op.unary.f32(i32 7, float %1610)  ; Saturate(value)
  %1612 = fmul fast float %1611, 2.000000e+00
  %1613 = fsub fast float 3.000000e+00, %1612
  %1614 = fmul fast float %1611, %1611
  %1615 = fmul fast float %1614, %1613
  %1616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %57, %dx.types.Handle %62, float %1589, float %1590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1617 = extractvalue %dx.types.ResRet.f32 %1616, 0
  %1618 = fmul fast float %1615, %1617
  br label %1619

; <label>:1619                                    ; preds = %1586, %1562
  %1620 = phi float [ %1618, %1586 ], [ 0.000000e+00, %1562 ]
  %1621 = fmul fast float %576, %233
  %1622 = fmul fast float %576, %234
  %1623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %631, %dx.types.Handle %1623, float %1621, float %1622, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1625 = extractvalue %dx.types.ResRet.f32 %1624, 0
  %1626 = fmul fast float %1625, %1620
  %1627 = call float @dx.op.binary.f32(i32 35, float %1555, float %1626)  ; FMax(a,b)
  br label %1628

; <label>:1628                                    ; preds = %1619, %1554
  %1629 = phi float [ %1627, %1619 ], [ %1555, %1554 ]
  %1630 = fmul fast float %234, 3.906250e-03
  %1631 = fmul fast float %233, 7.812500e-03
  %1632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1633 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %631, %dx.types.Handle %1632, float %1631, float %1630, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1634 = add i32 %593, 0
  %1635 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1634, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1636 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1635, i32 0)  ; GetDimensions(handle,mipLevel)
  %1637 = extractvalue %dx.types.Dimensions %1636, 0
  %1638 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1637)  ; FirstbitLo(value)
  %1639 = uitofp i32 %1638 to float
  %1640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1641 = extractvalue %dx.types.CBufRet.f32 %1640, 1
  %1642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1643 = extractvalue %dx.types.CBufRet.f32 %1642, 2
  %1644 = fadd fast float %243, -7.000000e+00
  %1645 = fadd fast float %1644, %1639
  %1646 = fadd fast float %1645, %1641
  %1647 = fadd fast float %1646, %1643
  %1648 = call float @dx.op.binary.f32(i32 35, float %1647, float 0.000000e+00)  ; FMax(a,b)
  %1649 = and i32 %440, 8
  %1650 = icmp eq i32 %1649, 0
  br i1 %1650, label %1667, label %1651

; <label>:1651                                    ; preds = %1628
  %1652 = fadd fast float %573, 1.000000e+00
  %1653 = fmul fast float %921, %1652
  %1654 = fsub fast float %1653, %573
  %1655 = fsub fast float %1652, %1654
  %1656 = call float @dx.op.unary.f32(i32 7, float %1655)  ; Saturate(value)
  %1657 = fsub fast float 1.000000e+00, %1653
  %1658 = call float @dx.op.unary.f32(i32 7, float %1657)  ; Saturate(value)
  %1659 = fsub fast float %1656, %1658
  %1660 = fsub fast float %1629, %1658
  %1661 = fdiv fast float %1660, %1659
  %1662 = call float @dx.op.unary.f32(i32 7, float %1661)  ; Saturate(value)
  %1663 = fmul fast float %1662, 2.000000e+00
  %1664 = fsub fast float 3.000000e+00, %1663
  %1665 = fmul fast float %1662, %1662
  %1666 = fmul fast float %1665, %1664
  br label %1667

; <label>:1667                                    ; preds = %1651, %1628
  %1668 = phi float [ %1666, %1651 ], [ %1629, %1628 ]
  %1669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1670 = extractvalue %dx.types.CBufRet.f32 %1669, 3
  %1671 = fmul fast float %1670, %1668
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = and i32 %440, 32
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1691, label %1675

; <label>:1675                                    ; preds = %1667
  %1676 = add i32 %596, 0
  %1677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1676, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1677, %dx.types.Handle %63, float %1671, float %505, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1679 = extractvalue %dx.types.ResRet.f32 %1678, 0
  %1680 = extractvalue %dx.types.ResRet.f32 %1678, 1
  %1681 = extractvalue %dx.types.ResRet.f32 %1678, 2
  %1682 = extractvalue %dx.types.ResRet.f32 %1678, 3
  %1683 = and i32 %590, 255
  %1684 = uitofp i32 %1683 to float
  %1685 = lshr i32 %590, 8
  %1686 = and i32 %1685, 255
  %1687 = uitofp i32 %1686 to float
  %1688 = fmul fast float %1682, %1684
  %1689 = fadd fast float %1688, %1687
  %1690 = fmul fast float %1689, 0x3F70101000000000
  br label %1691

; <label>:1691                                    ; preds = %1675, %1667
  %1692 = phi float [ %1679, %1675 ], [ %496, %1667 ]
  %1693 = phi float [ %1680, %1675 ], [ %497, %1667 ]
  %1694 = phi float [ %1681, %1675 ], [ %498, %1667 ]
  %1695 = phi float [ %1690, %1675 ], [ %499, %1667 ]
  %1696 = fsub fast float %1692, %452
  %1697 = fsub fast float %1693, %453
  %1698 = fsub fast float %1694, %454
  %1699 = fmul fast float %1696, %1671
  %1700 = fmul fast float %1697, %1671
  %1701 = fmul fast float %1698, %1671
  %1702 = fadd fast float %1699, %452
  %1703 = fadd fast float %1700, %453
  %1704 = fadd fast float %1701, %454
  %1705 = fsub fast float %1695, %455
  %1706 = fmul fast float %1705, %1671
  %1707 = fadd fast float %1706, %455
  %1708 = fsub fast float %1559, %458
  %1709 = fmul fast float %1671, %1708
  %1710 = fadd fast float %1709, %458
  %1711 = fadd fast float %1558, -1.000000e+00
  %1712 = fmul fast float %1671, %1711
  %1713 = fadd fast float %1712, 1.000000e+00
  %1714 = fmul fast float %1671, %1556
  %1715 = fmul fast float %1671, %1557
  %1716 = fadd fast float %1714, %1240
  %1717 = fadd fast float %1715, %1241
  %1718 = fmul fast float %461, %374
  %1719 = fadd fast float %1718, %462
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 2
  %1722 = fcmp fast oge float %1719, %1721
  %1723 = and i32 %180, 65535
  %1724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1723)  ; LegacyF16ToF32(value)
  %1725 = lshr i32 %182, 16
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = fadd fast float %1702, %1724
  %1728 = fadd fast float %1703, %1726
  %1729 = fadd fast float %1704, %1724
  %1730 = fadd fast float %1707, %1726
  %1731 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1727)  ; LegacyF32ToF16(value)
  %1732 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1728)  ; LegacyF32ToF16(value)
  %1733 = shl i32 %1732, 16
  %1734 = or i32 %1733, %1731
  %1735 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1729)  ; LegacyF32ToF16(value)
  %1736 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1730)  ; LegacyF32ToF16(value)
  %1737 = shl i32 %1736, 16
  %1738 = or i32 %1737, %1735
  %1739 = fadd fast float %1713, %1724
  %1740 = fadd fast float %1710, %1726
  %1741 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1739)  ; LegacyF32ToF16(value)
  %1742 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1740)  ; LegacyF32ToF16(value)
  %1743 = shl i32 %1742, 16
  %1744 = or i32 %1743, %1741
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1747 = extractvalue %dx.types.CBufRet.f32 %1745, 1
  %1748 = extractvalue %dx.types.CBufRet.f32 %1745, 2
  %1749 = fadd fast float %1746, %155
  %1750 = fadd fast float %1747, %156
  %1751 = fadd fast float %1748, %157
  %1752 = call float @dx.op.unary.f32(i32 83, float %1749)  ; DerivCoarseX(value)
  %1753 = call float @dx.op.unary.f32(i32 83, float %1750)  ; DerivCoarseX(value)
  %1754 = call float @dx.op.unary.f32(i32 83, float %1751)  ; DerivCoarseX(value)
  %1755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1756 = extractvalue %dx.types.CBufRet.f32 %1755, 2
  %1757 = fmul fast float %1756, %1752
  %1758 = fmul fast float %1756, %1753
  %1759 = fmul fast float %1756, %1754
  %1760 = call float @dx.op.unary.f32(i32 84, float %1749)  ; DerivCoarseY(value)
  %1761 = call float @dx.op.unary.f32(i32 84, float %1750)  ; DerivCoarseY(value)
  %1762 = call float @dx.op.unary.f32(i32 84, float %1751)  ; DerivCoarseY(value)
  %1763 = fmul fast float %1756, %1760
  %1764 = fmul fast float %1756, %1761
  %1765 = fmul fast float %1756, %1762
  %1766 = fmul fast float %1765, %1758
  %1767 = fmul fast float %1764, %1759
  %1768 = fsub fast float %1766, %1767
  %1769 = fmul fast float %1763, %1759
  %1770 = fmul fast float %1765, %1757
  %1771 = fsub fast float %1769, %1770
  %1772 = fmul fast float %1764, %1757
  %1773 = fmul fast float %1763, %1758
  %1774 = fsub fast float %1772, %1773
  %1775 = add nuw nsw i32 %438, 832
  %1776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.f32 %1776, 0
  %1778 = add nuw nsw i32 %438, 836
  %1779 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.f32 %1779, 0
  %1781 = add nuw nsw i32 %438, 920
  %1782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = add nuw nsw i32 %438, 924
  %1785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.f32 %1785, 0
  %1787 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %1788 = extractvalue %dx.types.CBufRet.f32 %1787, 0
  %1789 = fmul fast float %1788, %1780
  %1790 = extractvalue %dx.types.CBufRet.f32 %1787, 1
  %1791 = fadd fast float %1789, %1790
  %1792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 210)  ; CBufferLoadLegacy(handle,regIndex)
  %1793 = extractvalue %dx.types.CBufRet.f32 %1792, 0
  %1794 = fadd fast float %1793, %1777
  %1795 = fcmp fast ogt float %1791, 0.000000e+00
  %1796 = fcmp fast ogt float %1672, %1794
  %1797 = and i1 %1795, %1796
  br i1 %1797, label %1798, label %1873

; <label>:1798                                    ; preds = %1691
  %1799 = fmul fast float %1768, %1768
  %1800 = fmul fast float %1771, %1771
  %1801 = fadd fast float %1799, %1800
  %1802 = fmul fast float %1774, %1774
  %1803 = fadd fast float %1801, %1802
  %1804 = call float @dx.op.unary.f32(i32 24, float %1803)  ; Sqrt(value)
  %1805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1806 = extractvalue %dx.types.CBufRet.f32 %1805, 3
  %1807 = fmul fast float %1749, 7.000000e+00
  %1808 = fadd fast float %1807, 9.175040e+05
  %1809 = fmul fast float %1750, 9.000000e+00
  %1810 = fadd fast float %1809, 1.179648e+06
  %1811 = fmul fast float %1806, 1.370000e+02
  %1812 = bitcast float %1808 to i32
  %1813 = bitcast float %1810 to i32
  %1814 = bitcast float %1811 to i32
  %1815 = shl i32 %1813, 17
  %1816 = xor i32 %1815, %1812
  %1817 = xor i32 %1816, %1814
  %1818 = xor i32 %1817, 61
  %1819 = lshr i32 %1817, 16
  %1820 = xor i32 %1818, %1819
  %1821 = mul i32 %1820, 9
  %1822 = lshr i32 %1821, 4
  %1823 = xor i32 %1822, %1821
  %1824 = mul i32 %1823, 668265261
  %1825 = lshr i32 %1824, 15
  %1826 = xor i32 %1825, %1824
  %1827 = uitofp i32 %1826 to float
  %1828 = fmul fast float %1827, 0x3DF0000000000000
  %1829 = fmul fast float %1804, %1791
  %1830 = fcmp fast ugt float %1828, %1829
  br i1 %1830, label %1873, label %1831

; <label>:1831                                    ; preds = %1798
  %1832 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 0, i32 undef, i32 6)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %1833 = add i32 %1832, 6
  %1834 = icmp ugt i32 %1833, 4095
  br i1 %1834, label %1835, label %1838

; <label>:1835                                    ; preds = %1831
  %1836 = icmp ult i32 %1832, 4096
  br i1 %1836, label %1837, label %1838

; <label>:1837                                    ; preds = %1835
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1832, i32 0, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1838

; <label>:1838                                    ; preds = %1837, %1835, %1831
  %1839 = phi i32 [ %1832, %1831 ], [ 0, %1837 ], [ 0, %1835 ]
  %1840 = icmp eq i32 %1839, 0
  br i1 %1840, label %1873, label %1841

; <label>:1841                                    ; preds = %1838
  %1842 = fsub fast float %1751, %308
  %1843 = shl nuw nsw i32 %437, 16
  %1844 = or i32 %1843, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1839, i32 0, i32 %1844, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1845 = bitcast float %1842 to i32
  %1846 = add i32 %1839, 1
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1846, i32 0, i32 %1845, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1847 = bitcast float %1749 to i32
  %1848 = add i32 %1839, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1848, i32 0, i32 %1847, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1849 = bitcast float %1750 to i32
  %1850 = add i32 %1839, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1850, i32 0, i32 %1849, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1851 = bitcast float %1751 to i32
  %1852 = add i32 %1839, 4
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1852, i32 0, i32 %1851, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %1853 = fadd fast float %119, 1.000000e+00
  %1854 = fadd fast float %120, 1.000000e+00
  %1855 = fadd fast float %121, 1.000000e+00
  %1856 = fmul fast float %1853, 5.000000e-01
  %1857 = fmul fast float %1854, 5.000000e-01
  %1858 = fmul fast float %1855, 5.000000e-01
  %1859 = call float @dx.op.unary.f32(i32 7, float %1856)  ; Saturate(value)
  %1860 = call float @dx.op.unary.f32(i32 7, float %1857)  ; Saturate(value)
  %1861 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1862 = fmul fast float %1859, 1.023000e+03
  %1863 = fmul fast float %1860, 1.023000e+03
  %1864 = fmul fast float %1861, 1.023000e+03
  %1865 = fptoui float %1862 to i32
  %1866 = fptoui float %1863 to i32
  %1867 = fptoui float %1864 to i32
  %1868 = shl i32 %1866, 10
  %1869 = or i32 %1868, %1865
  %1870 = shl i32 %1867, 20
  %1871 = or i32 %1869, %1870
  %1872 = add i32 %1839, 5
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %1872, i32 0, i32 %1871, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1873

; <label>:1873                                    ; preds = %1841, %1838, %1798, %1691
  %1874 = phi i32 [ 1, %1841 ], [ 1, %1838 ], [ 1, %1798 ], [ 0, %1691 ]
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 2
  %1877 = fmul fast float %1876, 0x3FE3C6EF40000000
  %1878 = frem fast float %100, 2.560000e+02
  %1879 = frem fast float %101, 2.560000e+02
  %1880 = fptoui float %1878 to i32
  %1881 = fptoui float %1879 to i32
  %1882 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %35, i32 0, i32 %1880, i32 %1881, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1883 = extractvalue %dx.types.ResRet.f32 %1882, 0
  %1884 = extractvalue %dx.types.ResRet.f32 %1882, 1
  %1885 = fadd fast float %1883, %1877
  %1886 = fadd fast float %1884, %1877
  %1887 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1888 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1889 = fcmp fast ogt float %121, 0.000000e+00
  %1890 = fcmp fast olt float %121, 0.000000e+00
  %1891 = zext i1 %1889 to i32
  %1892 = zext i1 %1890 to i32
  %1893 = sub nsw i32 %1891, %1892
  %1894 = sitofp i32 %1893 to float
  %1895 = fadd fast float %1894, %121
  %1896 = fdiv fast float -1.000000e+00, %1895
  %1897 = fmul fast float %119, %120
  %1898 = fmul fast float %1897, %1896
  %1899 = fmul fast float %119, %119
  %1900 = fmul fast float %1899, %1894
  %1901 = fmul fast float %1900, %1896
  %1902 = fadd fast float %1901, 1.000000e+00
  %1903 = fmul fast float %1898, %1894
  %1904 = fmul fast float %1894, %119
  %1905 = fsub fast float -0.000000e+00, %1904
  %1906 = fmul fast float %120, %120
  %1907 = fmul fast float %1906, %1896
  %1908 = fadd fast float %1907, %1894
  %1909 = fsub fast float -0.000000e+00, %120
  %1910 = and i32 %1731, 65535
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = lshr i32 %1734, 16
  %1913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1912)  ; LegacyF16ToF32(value)
  %1914 = and i32 %1735, 65535
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = lshr i32 %1738, 16
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = and i32 %1741, 65535
  %1919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1918)  ; LegacyF16ToF32(value)
  %1920 = lshr i32 %1744, 16
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = call float @dx.op.unary.f32(i32 7, float %1921)  ; Saturate(value)
  %1923 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1924 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %1925 = call float @dx.op.unary.f32(i32 83, float %157)  ; DerivCoarseX(value)
  %1926 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1927 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %1928 = call float @dx.op.unary.f32(i32 84, float %157)  ; DerivCoarseY(value)
  %1929 = fadd fast float %1923, %155
  %1930 = fadd fast float %1924, %156
  %1931 = fadd fast float %1925, %157
  %1932 = fadd fast float %1926, %155
  %1933 = fadd fast float %1927, %156
  %1934 = fadd fast float %1928, %157
  %1935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1936 = extractvalue %dx.types.CBufRet.f32 %1935, 0
  %1937 = extractvalue %dx.types.CBufRet.f32 %1935, 1
  %1938 = extractvalue %dx.types.CBufRet.f32 %1935, 2
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 3
  %1942 = fmul fast float %1936, %100
  %1943 = fmul fast float %1942, %1940
  %1944 = fmul fast float %1937, %101
  %1945 = fmul fast float %1944, %1941
  %1946 = fptoui float %1943 to i32
  %1947 = fptoui float %1945 to i32
  %1948 = fadd fast float %1936, -1.000000e+00
  %1949 = fadd fast float %1937, -1.000000e+00
  %1950 = fptoui float %1948 to i32
  %1951 = fptoui float %1949 to i32
  %1952 = call i32 @dx.op.binary.i32(i32 40, i32 %1946, i32 %1950)  ; UMin(a,b)
  %1953 = call i32 @dx.op.binary.i32(i32 40, i32 %1947, i32 %1951)  ; UMin(a,b)
  %1954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1955 = extractvalue %dx.types.CBufRet.f32 %1954, 2
  %1956 = extractvalue %dx.types.CBufRet.f32 %1954, 3
  %1957 = fmul fast float %1955, %89
  %1958 = fsub fast float %1957, %1956
  %1959 = fadd fast float %1938, -1.000000e+00
  %1960 = call float @dx.op.binary.f32(i32 36, float %1958, float %1959)  ; FMin(a,b)
  %1961 = fptoui float %1960 to i32
  %1962 = fptoui float %1936 to i32
  %1963 = fptoui float %1937 to i32
  %1964 = mul i32 %1961, %1963
  %1965 = add i32 %1964, %1953
  %1966 = mul i32 %1965, %1962
  %1967 = add i32 %1966, %1952
  %1968 = shl i32 %1967, 2
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1968, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 1023
  %1972 = lshr i32 %1970, 10
  %1973 = icmp eq i32 %1971, 0
  br i1 %1973, label %2370, label %1974

; <label>:1974                                    ; preds = %1873
  %1975 = and i32 %1970, 1023
  br label %1976

; <label>:1976                                    ; preds = %2097, %1974
  %1977 = phi float [ %2098, %2097 ], [ 0.000000e+00, %1974 ]
  %1978 = phi float [ %2099, %2097 ], [ 0.000000e+00, %1974 ]
  %1979 = phi float [ %2100, %2097 ], [ 0.000000e+00, %1974 ]
  %1980 = phi float [ %2101, %2097 ], [ %1716, %1974 ]
  %1981 = phi float [ %2102, %2097 ], [ %1717, %1974 ]
  %1982 = phi float [ %2103, %2097 ], [ %1919, %1974 ]
  %1983 = phi float [ %2104, %2097 ], [ %1922, %1974 ]
  %1984 = phi float [ %2105, %2097 ], [ 0.000000e+00, %1974 ]
  %1985 = phi float [ %2106, %2097 ], [ %1917, %1974 ]
  %1986 = phi float [ %2107, %2097 ], [ %1911, %1974 ]
  %1987 = phi float [ %2108, %2097 ], [ %1913, %1974 ]
  %1988 = phi float [ %2109, %2097 ], [ %1915, %1974 ]
  %1989 = phi i32 [ %2110, %2097 ], [ 0, %1974 ]
  %1990 = phi i32 [ %2046, %2097 ], [ 0, %1974 ]
  %1991 = add nuw nsw i32 %1990, %1972
  %1992 = shl i32 %1991, 2
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = shl i32 %1994, 8
  %1996 = or i32 %1995, 48
  %1997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = extractvalue %dx.types.ResRet.f32 %1997, 1
  %2000 = extractvalue %dx.types.ResRet.f32 %1997, 2
  %2001 = extractvalue %dx.types.ResRet.f32 %1997, 3
  %2002 = or i32 %1995, 64
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = extractvalue %dx.types.ResRet.i32 %2003, 1
  %2006 = or i32 %1995, 80
  %2007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2006, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 2
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 3
  %2010 = or i32 %1995, 96
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = extractvalue %dx.types.ResRet.f32 %2011, 3
  %2016 = or i32 %1995, 112
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2019 = or i32 %1995, 128
  %2020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2019, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.f32 %2020, 0
  %2022 = extractvalue %dx.types.ResRet.f32 %2020, 1
  %2023 = extractvalue %dx.types.ResRet.f32 %2020, 2
  %2024 = extractvalue %dx.types.ResRet.f32 %2020, 3
  %2025 = or i32 %1995, 144
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2030 = extractvalue %dx.types.ResRet.f32 %2026, 3
  %2031 = or i32 %1995, 160
  %2032 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.ResRet.f32 %2032, 1
  %2035 = extractvalue %dx.types.ResRet.f32 %2032, 2
  %2036 = or i32 %1995, 192
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %2036, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = or i32 %1995, 208
  %2040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.f32 %2040, 0
  %2042 = or i32 %1995, 248
  %2043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2042, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  %2045 = extractvalue %dx.types.ResRet.f32 %2043, 1
  %2046 = add nuw nsw i32 %1990, 1
  %2047 = bitcast float %2001 to i32
  %2048 = and i32 %2047, 512
  %2049 = icmp ne i32 %2048, 0
  %2050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.ResRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.ResRet.f32 %2050, 2
  %2054 = extractvalue %dx.types.ResRet.f32 %2050, 3
  %2055 = call float @dx.op.dot4.f32(i32 56, float %2051, float %2052, float %2053, float %2054, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2056 = or i32 %1995, 16
  %2057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = extractvalue %dx.types.ResRet.f32 %2057, 3
  %2062 = call float @dx.op.dot4.f32(i32 56, float %2058, float %2059, float %2060, float %2061, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2063 = or i32 %1995, 32
  %2064 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = extractvalue %dx.types.ResRet.f32 %2064, 1
  %2067 = extractvalue %dx.types.ResRet.f32 %2064, 2
  %2068 = extractvalue %dx.types.ResRet.f32 %2064, 3
  %2069 = call float @dx.op.dot4.f32(i32 56, float %2065, float %2066, float %2067, float %2068, float %155, float %156, float %157, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2070 = call float @dx.op.unary.f32(i32 27, float %2055)  ; Round_ni(value)
  %2071 = call float @dx.op.unary.f32(i32 6, float %2070)  ; FAbs(value)
  %2072 = call float @dx.op.unary.f32(i32 27, float %2062)  ; Round_ni(value)
  %2073 = call float @dx.op.unary.f32(i32 6, float %2072)  ; FAbs(value)
  %2074 = call float @dx.op.unary.f32(i32 6, float %2069)  ; FAbs(value)
  %2075 = call float @dx.op.unary.f32(i32 27, float %2074)  ; Round_ni(value)
  %2076 = fadd fast float %2073, %2071
  %2077 = fadd fast float %2076, %2075
  %2078 = fcmp fast oeq float %2077, 0.000000e+00
  %2079 = call float @dx.op.dot4.f32(i32 56, float %2051, float %2052, float %2053, float %2054, float %1929, float %1930, float %1931, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2080 = call float @dx.op.dot4.f32(i32 56, float %2058, float %2059, float %2060, float %2061, float %1929, float %1930, float %1931, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2081 = call float @dx.op.dot4.f32(i32 56, float %2051, float %2052, float %2053, float %2054, float %1932, float %1933, float %1934, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2082 = call float @dx.op.dot4.f32(i32 56, float %2058, float %2059, float %2060, float %2061, float %1932, float %1933, float %1934, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %2083 = fsub fast float %2079, %2055
  %2084 = fsub fast float %2081, %2055
  %2085 = fsub fast float %2080, %2062
  %2086 = fsub fast float %2082, %2062
  %2087 = call float @dx.op.dot3.f32(i32 55, float %1998, float %1999, float %2000, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %2088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2089 = extractvalue %dx.types.CBufRet.f32 %2088, 2
  %2090 = call float @dx.op.unary.f32(i32 6, float %2087)  ; FAbs(value)
  %2091 = fadd fast float %2090, %2089
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2088, 0
  %2094 = fcmp fast ogt float %2092, %2093
  %2095 = and i1 %2078, %2094
  %2096 = and i1 %2049, %2095
  br i1 %2096, label %2112, label %2097

; <label>:2097                                    ; preds = %2356, %2194, %2112, %1976
  %2098 = phi float [ %1977, %2112 ], [ %1977, %2194 ], [ %2366, %2356 ], [ %1977, %1976 ]
  %2099 = phi float [ %1978, %2112 ], [ %1978, %2194 ], [ %2367, %2356 ], [ %1978, %1976 ]
  %2100 = phi float [ %1979, %2112 ], [ %1979, %2194 ], [ %2368, %2356 ], [ %1979, %1976 ]
  %2101 = phi float [ %1980, %2112 ], [ %1980, %2194 ], [ %2330, %2356 ], [ %1980, %1976 ]
  %2102 = phi float [ %1981, %2112 ], [ %1981, %2194 ], [ %2331, %2356 ], [ %1981, %1976 ]
  %2103 = phi float [ %1982, %2112 ], [ %1982, %2194 ], [ %2325, %2356 ], [ %1982, %1976 ]
  %2104 = phi float [ %1983, %2112 ], [ %1983, %2194 ], [ %2322, %2356 ], [ %1983, %1976 ]
  %2105 = phi float [ %1984, %2112 ], [ %1984, %2194 ], [ %2319, %2356 ], [ %1984, %1976 ]
  %2106 = phi float [ %1985, %2112 ], [ %1985, %2194 ], [ %2317, %2356 ], [ %1985, %1976 ]
  %2107 = phi float [ %1986, %2112 ], [ %1986, %2194 ], [ %2312, %2356 ], [ %1986, %1976 ]
  %2108 = phi float [ %1987, %2112 ], [ %1987, %2194 ], [ %2313, %2356 ], [ %1987, %1976 ]
  %2109 = phi float [ %1988, %2112 ], [ %1988, %2194 ], [ %2314, %2356 ], [ %1988, %1976 ]
  %2110 = phi i32 [ %2120, %2112 ], [ %2120, %2194 ], [ %2120, %2356 ], [ %1989, %1976 ]
  %2111 = icmp eq i32 %2046, %1975
  br i1 %2111, label %2369, label %1976

; <label>:2112                                    ; preds = %1976
  %2113 = extractvalue %dx.types.ResRet.f32 %2017, 3
  %2114 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2115 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2116 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2117 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2118 = extractvalue %dx.types.ResRet.i32 %2003, 3
  %2119 = extractvalue %dx.types.ResRet.i32 %2003, 2
  %2120 = add i32 %1989, 1
  %2121 = add i32 %2118, 0
  %2122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2121, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2123 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2124 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2122, %dx.types.Handle %2123, float %2055, float %2062, float undef, float undef, i32 0, i32 0, i32 undef, float %2083, float %2085, float undef, float %2084, float %2086, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2125 = extractvalue %dx.types.ResRet.f32 %2124, 0
  %2126 = fmul fast float %2125, %2117
  %2127 = fadd fast float %2126, %2116
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2129 = fmul fast float %2055, %2012
  %2130 = call float @dx.op.tertiary.f32(i32 46, float %2013, float %2062, float %2129)  ; FMad(a,b,c)
  %2131 = fadd fast float %2130, %2115
  %2132 = fmul fast float %2055, %2014
  %2133 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2062, float %2132)  ; FMad(a,b,c)
  %2134 = fadd fast float %2133, %2114
  %2135 = fmul fast float %2083, %2012
  %2136 = call float @dx.op.tertiary.f32(i32 46, float %2013, float %2085, float %2135)  ; FMad(a,b,c)
  %2137 = fmul fast float %2083, %2014
  %2138 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2085, float %2137)  ; FMad(a,b,c)
  %2139 = fmul fast float %2084, %2012
  %2140 = call float @dx.op.tertiary.f32(i32 46, float %2013, float %2086, float %2139)  ; FMad(a,b,c)
  %2141 = fmul fast float %2084, %2014
  %2142 = call float @dx.op.tertiary.f32(i32 46, float %2015, float %2086, float %2141)  ; FMad(a,b,c)
  %2143 = add i32 %2119, 0
  %2144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2143, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2145 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2144, %dx.types.Handle %2123, float %2131, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float %2136, float %2138, float undef, float %2140, float %2142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = and i32 %2047, 1024
  %2148 = icmp ne i32 %2147, 0
  %2149 = fcmp fast ogt float %2146, 0x3FE0101020000000
  %2150 = uitofp i1 %2149 to float
  %2151 = select i1 %2148, float %2150, float %2146
  %2152 = and i32 %2047, 8192
  %2153 = icmp ne i32 %2152, 0
  %2154 = select i1 %2153, float %2113, float 1.000000e+00
  %2155 = fmul fast float %2055, 2.000000e+00
  %2156 = fadd fast float %2155, -1.000000e+00
  %2157 = call float @dx.op.unary.f32(i32 6, float %2156)  ; FAbs(value)
  %2158 = fmul fast float %2157, %2044
  %2159 = fsub fast float %2158, %2044
  %2160 = call float @dx.op.unary.f32(i32 7, float %2159)  ; Saturate(value)
  %2161 = fmul fast float %2062, 2.000000e+00
  %2162 = fadd fast float %2161, -1.000000e+00
  %2163 = call float @dx.op.unary.f32(i32 6, float %2162)  ; FAbs(value)
  %2164 = fmul fast float %2163, %2045
  %2165 = fsub fast float %2164, %2045
  %2166 = call float @dx.op.unary.f32(i32 7, float %2165)  ; Saturate(value)
  %2167 = fmul fast float %2074, %2008
  %2168 = fsub fast float %2167, %2008
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2170 = fmul fast float %2128, %2154
  %2171 = fmul fast float %2170, %2125
  %2172 = fmul fast float %2171, %2160
  %2173 = fmul fast float %2172, %2151
  %2174 = fmul fast float %2173, %2166
  %2175 = fmul fast float %2174, %2169
  %2176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %2177 = extractvalue %dx.types.CBufRet.f32 %2176, 1
  %2178 = extractvalue %dx.types.CBufRet.f32 %2176, 0
  %2179 = fsub fast float %2092, %2178
  %2180 = fmul fast float %2179, %2177
  %2181 = call float @dx.op.unary.f32(i32 7, float %2180)  ; Saturate(value)
  %2182 = fmul fast float %2175, %2009
  %2183 = fadd fast float %2175, %2009
  %2184 = fmul fast float %2183, %2018
  %2185 = fsub fast float %2184, %2018
  %2186 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2187 = and i32 %2047, 128
  %2188 = icmp ne i32 %2187, 0
  %2189 = select i1 %2188, float %2186, float %2182
  %2190 = fmul fast float %2189, %2181
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = fcmp fast ugt float %2190, %2192
  br i1 %2193, label %2194, label %2097

; <label>:2194                                    ; preds = %2112
  br i1 %2153, label %2097, label %2195

; <label>:2195                                    ; preds = %2194
  %2196 = and i32 %2047, 4
  %2197 = and i32 %2047, 8
  %2198 = add i32 %2004, 0
  %2199 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2198, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2201 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2199, %dx.types.Handle %2200, float %2131, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float %2136, float %2138, float undef, float %2140, float %2142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2202 = extractvalue %dx.types.ResRet.f32 %2201, 0
  %2203 = extractvalue %dx.types.ResRet.f32 %2201, 1
  %2204 = extractvalue %dx.types.ResRet.f32 %2201, 2
  %2205 = extractvalue %dx.types.ResRet.f32 %2201, 3
  %2206 = bitcast float %2030 to i32
  %2207 = and i32 %2206, 255
  %2208 = uitofp i32 %2207 to float
  %2209 = lshr i32 %2206, 8
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2205, %2208
  %2213 = fadd fast float %2212, %2211
  %2214 = fmul fast float %2213, 0x3F70101000000000
  %2215 = add i32 %2005, 0
  %2216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2215, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2217 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2216, %dx.types.Handle %2200, float %2131, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float %2136, float %2138, float undef, float %2140, float %2142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.ResRet.f32 %2217, 2
  %2221 = extractvalue %dx.types.ResRet.f32 %2217, 3
  %2222 = bitcast float %2024 to i32
  %2223 = and i32 %2222, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = lshr i32 %2222, 8
  %2226 = and i32 %2225, 255
  %2227 = uitofp i32 %2226 to float
  %2228 = lshr i32 %2222, 16
  %2229 = and i32 %2228, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101000000000
  %2232 = fmul fast float %2218, %2224
  %2233 = fadd fast float %2232, %2227
  %2234 = fmul fast float %2233, 0x3F70101000000000
  %2235 = fadd fast float %2219, -5.000000e-01
  %2236 = fadd fast float %2221, -5.000000e-01
  %2237 = fmul fast float %2235, %2231
  %2238 = fmul fast float %2236, %2231
  %2239 = fadd fast float %2237, 5.000000e-01
  %2240 = fadd fast float %2238, 5.000000e-01
  %2241 = fmul fast float %2202, %2033
  %2242 = fmul fast float %2203, %2034
  %2243 = fmul fast float %2204, %2035
  %2244 = fmul fast float %2239, 2.000000e+00
  %2245 = fadd fast float %2244, -1.000000e+00
  %2246 = fmul fast float %2240, 2.000000e+00
  %2247 = fadd fast float %2246, -1.000000e+00
  %2248 = fadd fast float %2245, %2247
  %2249 = fmul fast float %2248, 5.000000e-01
  %2250 = fsub fast float %2245, %2247
  %2251 = fmul fast float %2250, 5.000000e-01
  %2252 = call float @dx.op.unary.f32(i32 6, float %2249)  ; FAbs(value)
  %2253 = fsub fast float 1.000000e+00, %2252
  %2254 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2255 = fsub fast float %2253, %2254
  %2256 = call float @dx.op.dot3.f32(i32 55, float %2249, float %2251, float %2255, float %2249, float %2251, float %2255)  ; Dot3(ax,ay,az,bx,by,bz)
  %2257 = call float @dx.op.unary.f32(i32 25, float %2256)  ; Rsqrt(value)
  %2258 = fmul fast float %2249, %2257
  %2259 = fmul fast float %2251, %2257
  %2260 = fmul fast float %2257, %2255
  %2261 = fmul fast float %2260, %1998
  %2262 = fmul fast float %2260, %1999
  %2263 = fmul fast float %2260, %2000
  %2264 = fmul fast float %2258, %2021
  %2265 = fmul fast float %2258, %2022
  %2266 = fmul fast float %2258, %2023
  %2267 = fadd fast float %2264, %2261
  %2268 = fadd fast float %2265, %2262
  %2269 = fadd fast float %2266, %2263
  %2270 = fmul fast float %2259, %2027
  %2271 = fmul fast float %2259, %2028
  %2272 = fmul fast float %2259, %2029
  %2273 = fadd fast float %2267, %2270
  %2274 = fadd fast float %2268, %2271
  %2275 = fadd fast float %2269, %2272
  %2276 = call float @dx.op.dot3.f32(i32 55, float %2273, float %2274, float %2275, float %2273, float %2274, float %2275)  ; Dot3(ax,ay,az,bx,by,bz)
  %2277 = call float @dx.op.unary.f32(i32 25, float %2276)  ; Rsqrt(value)
  %2278 = fmul fast float %2273, %2277
  %2279 = fmul fast float %2274, %2277
  %2280 = fmul fast float %2275, %2277
  %2281 = fcmp fast ogt float %2087, %2093
  %2282 = fsub fast float -0.000000e+00, %2278
  %2283 = fsub fast float -0.000000e+00, %2279
  %2284 = fsub fast float -0.000000e+00, %2280
  %2285 = select i1 %2281, float %2278, float %2282
  %2286 = select i1 %2281, float %2279, float %2283
  %2287 = select i1 %2281, float %2280, float %2284
  %2288 = fmul fast float %2285, %1902
  %2289 = call float @dx.op.tertiary.f32(i32 46, float %2286, float %1903, float %2288)  ; FMad(a,b,c)
  %2290 = call float @dx.op.tertiary.f32(i32 46, float %2287, float %1905, float %2289)  ; FMad(a,b,c)
  %2291 = fmul fast float %2285, %1898
  %2292 = call float @dx.op.tertiary.f32(i32 46, float %2286, float %1908, float %2291)  ; FMad(a,b,c)
  %2293 = call float @dx.op.tertiary.f32(i32 46, float %2287, float %1909, float %2292)  ; FMad(a,b,c)
  %2294 = icmp ne i32 %2197, 0
  %2295 = select i1 %2294, float 1.000000e+00, float 0.000000e+00
  %2296 = fmul fast float %2190, %2295
  %2297 = and i32 %2047, 1
  %2298 = icmp ne i32 %2297, 0
  %2299 = fadd fast float %2290, %1980
  %2300 = fadd fast float %2293, %1981
  %2301 = select i1 %2298, float %2299, float %2290
  %2302 = select i1 %2298, float %2300, float %2293
  %2303 = icmp ne i32 %2196, 0
  %2304 = select i1 %2303, float 1.000000e+00, float 0.000000e+00
  %2305 = fmul fast float %2190, %2304
  %2306 = fsub fast float %2241, %1986
  %2307 = fsub fast float %2242, %1987
  %2308 = fsub fast float %2243, %1988
  %2309 = fmul fast float %2306, %2305
  %2310 = fmul fast float %2307, %2305
  %2311 = fmul fast float %2308, %2305
  %2312 = fadd fast float %2309, %1986
  %2313 = fadd fast float %2310, %1987
  %2314 = fadd fast float %2311, %1988
  %2315 = fsub fast float %2214, %1985
  %2316 = fmul fast float %2315, %2305
  %2317 = fadd fast float %2316, %1985
  %2318 = fadd fast float %2190, %1984
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fsub fast float %2234, %1983
  %2321 = fmul fast float %2320, %2296
  %2322 = fadd fast float %2321, %1983
  %2323 = fsub fast float %2220, %1982
  %2324 = fmul fast float %2323, %2296
  %2325 = fadd fast float %2324, %1982
  %2326 = fsub fast float %2301, %1980
  %2327 = fsub fast float %2302, %1981
  %2328 = fmul fast float %2326, %2296
  %2329 = fmul fast float %2327, %2296
  %2330 = fadd fast float %2328, %1980
  %2331 = fadd fast float %2329, %1981
  %2332 = and i32 %2047, 16
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2356, label %2334

; <label>:2334                                    ; preds = %2195
  %2335 = bitcast float %2041 to i32
  %2336 = add i32 %2038, 0
  %2337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2337, %dx.types.Handle %2200, float %2131, float %2134, float undef, float undef, i32 0, i32 0, i32 undef, float %2136, float %2138, float undef, float %2140, float %2142, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = and i32 %2335, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = fmul fast float %2339, %2033
  %2345 = fmul fast float %2340, %2034
  %2346 = fmul fast float %2341, %2035
  %2347 = and i32 %2047, 16384
  %2348 = icmp ne i32 %2347, 0
  %2349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2350 = extractvalue %dx.types.CBufRet.f32 %2349, 0
  %2351 = select i1 %2348, float %2350, float 1.000000e+00
  %2352 = fmul fast float %2351, %2343
  %2353 = fmul fast float %2344, %2352
  %2354 = fmul fast float %2345, %2352
  %2355 = fmul fast float %2346, %2352
  br label %2356

; <label>:2356                                    ; preds = %2334, %2195
  %2357 = phi float [ %2353, %2334 ], [ 0.000000e+00, %2195 ]
  %2358 = phi float [ %2354, %2334 ], [ 0.000000e+00, %2195 ]
  %2359 = phi float [ %2355, %2334 ], [ 0.000000e+00, %2195 ]
  %2360 = fsub fast float %2357, %1977
  %2361 = fsub fast float %2358, %1978
  %2362 = fsub fast float %2359, %1979
  %2363 = fmul fast float %2360, %2190
  %2364 = fmul fast float %2361, %2190
  %2365 = fmul fast float %2362, %2190
  %2366 = fadd fast float %2363, %1977
  %2367 = fadd fast float %2364, %1978
  %2368 = fadd fast float %2365, %1979
  br label %2097

; <label>:2369                                    ; preds = %2097
  br label %2370

; <label>:2370                                    ; preds = %2369, %1873
  %2371 = phi float [ 0.000000e+00, %1873 ], [ %2098, %2369 ]
  %2372 = phi float [ 0.000000e+00, %1873 ], [ %2099, %2369 ]
  %2373 = phi float [ 0.000000e+00, %1873 ], [ %2100, %2369 ]
  %2374 = phi float [ %1716, %1873 ], [ %2101, %2369 ]
  %2375 = phi float [ %1717, %1873 ], [ %2102, %2369 ]
  %2376 = phi float [ %1919, %1873 ], [ %2103, %2369 ]
  %2377 = phi float [ %1922, %1873 ], [ %2104, %2369 ]
  %2378 = phi float [ 0.000000e+00, %1873 ], [ %2105, %2369 ]
  %2379 = phi float [ %1917, %1873 ], [ %2106, %2369 ]
  %2380 = phi float [ %1911, %1873 ], [ %2107, %2369 ]
  %2381 = phi float [ %1913, %1873 ], [ %2108, %2369 ]
  %2382 = phi float [ %1915, %1873 ], [ %2109, %2369 ]
  %2383 = phi i32 [ 0, %1873 ], [ %2110, %2369 ]
  %2384 = uitofp i32 %2383 to float
  %2385 = fptoui float %2384 to i32
  %2386 = shl i32 %2385, 16
  %2387 = and i32 %2386, 16711680
  %2388 = call float @dx.op.dot2.f32(i32 54, float %2374, float %2375, float %2374, float %2375)  ; Dot2(ax,ay,bx,by)
  %2389 = fmul fast float %2388, 0x3FE3333340000000
  %2390 = fsub fast float 1.000000e+00, %2389
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2374, float %2375, float %2390, float %2374, float %2375, float %2390)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = call float @dx.op.unary.f32(i32 25, float %2391)  ; Rsqrt(value)
  %2393 = fmul fast float %2392, %2374
  %2394 = fmul fast float %2392, %2375
  %2395 = fmul fast float %2390, %2392
  %2396 = fmul fast float %2395, %119
  %2397 = fmul fast float %2395, %120
  %2398 = fmul fast float %2395, %121
  %2399 = fmul fast float %2393, %1902
  %2400 = fmul fast float %2393, %1903
  %2401 = fmul fast float %2393, %1905
  %2402 = fadd fast float %2396, %2399
  %2403 = fadd fast float %2397, %2400
  %2404 = fadd fast float %2398, %2401
  %2405 = fmul fast float %2394, %1898
  %2406 = fmul fast float %2394, %1908
  %2407 = fmul fast float %2394, %1909
  %2408 = fadd fast float %2402, %2405
  %2409 = fadd fast float %2403, %2406
  %2410 = fadd fast float %2404, %2407
  %2411 = call float @dx.op.dot3.f32(i32 55, float %2408, float %2409, float %2410, float %2408, float %2409, float %2410)  ; Dot3(ax,ay,az,bx,by,bz)
  %2412 = call float @dx.op.unary.f32(i32 25, float %2411)  ; Rsqrt(value)
  %2413 = fmul fast float %2408, %2412
  %2414 = fmul fast float %2409, %2412
  %2415 = fmul fast float %2410, %2412
  %2416 = fadd fast float %2379, 0xBFB99999A0000000
  %2417 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  %2418 = fmul fast float %2417, 0x3FF1C71C80000000
  %2419 = call float @dx.op.binary.f32(i32 36, float %2379, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2420 = fsub fast float 1.000000e+00, %2418
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2422 = fmul fast float %2421, %2380
  %2423 = fmul fast float %2421, %2381
  %2424 = fmul fast float %2421, %2382
  %2425 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  %2426 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2427 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  %2428 = fmul fast float %2418, %2380
  %2429 = fmul fast float %2418, %2381
  %2430 = fmul fast float %2418, %2382
  %2431 = fadd fast float %2428, %2419
  %2432 = fadd fast float %2429, %2419
  %2433 = fadd fast float %2430, %2419
  %2434 = call float @dx.op.unary.f32(i32 7, float %2431)  ; Saturate(value)
  %2435 = call float @dx.op.unary.f32(i32 7, float %2432)  ; Saturate(value)
  %2436 = call float @dx.op.unary.f32(i32 7, float %2433)  ; Saturate(value)
  %2437 = fmul fast float %2435, 0x401CF23780000000
  %2438 = fadd fast float %2437, 0x3FF32641C0000000
  %2439 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 25, float %2439)  ; Rsqrt(value)
  %2441 = fmul fast float %2440, %155
  %2442 = fmul fast float %2440, %156
  %2443 = fmul fast float %2440, %157
  %2444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %2445 = extractvalue %dx.types.CBufRet.f32 %2444, 0
  %2446 = fdiv fast float 1.000000e+00, %2438
  %2447 = select i1 %117, float %2446, float %2438
  %2448 = fadd fast float %2447, -1.000000e+00
  %2449 = fadd fast float %2447, 1.000000e+00
  %2450 = fdiv fast float %2448, %2449
  %2451 = fmul fast float %2450, %2450
  %2452 = call float @dx.op.dot3.f32(i32 55, float %2441, float %2442, float %2443, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %2453 = select i1 %117, float 0.000000e+00, float %2445
  %2454 = fadd fast float %2452, %2453
  %2455 = call float @dx.op.binary.f32(i32 35, float %2454, float -1.000000e+00)  ; FMax(a,b)
  %2456 = call float @dx.op.binary.f32(i32 36, float %2455, float 1.000000e+00)  ; FMin(a,b)
  %2457 = fmul fast float %2447, %2447
  %2458 = fmul fast float %2456, %2456
  %2459 = fsub fast float 1.000000e+00, %2458
  %2460 = fmul fast float %2457, %2459
  %2461 = fsub fast float 1.000000e+00, %2460
  %2462 = fcmp fast olt float %2447, 1.000000e+00
  %2463 = select i1 %2462, float %2458, float %2461
  %2464 = fcmp fast ogt float %2461, 0.000000e+00
  %2465 = fsub fast float 1.000000e+00, %2451
  %2466 = call float @dx.op.unary.f32(i32 24, float %2463)  ; Sqrt(value)
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = call float @dx.op.unary.f32(i32 23, float %2467)  ; Log(value)
  %2469 = fmul fast float %2468, 5.000000e+00
  %2470 = call float @dx.op.unary.f32(i32 21, float %2469)  ; Exp(value)
  %2471 = fmul fast float %2470, %2465
  %2472 = fadd fast float %2471, %2451
  %2473 = select i1 %2464, float %2472, float 1.000000e+00
  %2474 = and i32 %616, 255
  %2475 = uitofp i32 %2474 to float
  %2476 = fmul fast float %2475, 0x3F70101020000000
  %2477 = call float @dx.op.unary.f32(i32 7, float %2476)  ; Saturate(value)
  %2478 = fmul fast float %155, %155
  %2479 = fmul fast float %156, %156
  %2480 = fadd fast float %2479, %2478
  %2481 = fmul fast float %157, %157
  %2482 = fadd fast float %2480, %2481
  %2483 = call float @dx.op.unary.f32(i32 24, float %2482)  ; Sqrt(value)
  %2484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %2485 = extractvalue %dx.types.CBufRet.f32 %2484, 0
  %2486 = fmul fast float %2485, %2483
  %2487 = extractvalue %dx.types.CBufRet.f32 %2484, 1
  %2488 = fadd fast float %2486, %2487
  %2489 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2490 = fmul fast float %2477, 2.550000e+02
  %2491 = fmul fast float %2490, %2489
  %2492 = fptoui float %2491 to i32
  %2493 = fsub fast float 1.000000e+00, %2434
  %2494 = fsub fast float 1.000000e+00, %2435
  %2495 = fsub fast float 1.000000e+00, %2436
  %2496 = fmul fast float %2473, %2493
  %2497 = fmul fast float %2473, %2494
  %2498 = fmul fast float %2473, %2495
  %2499 = fadd fast float %2496, %2434
  %2500 = fadd fast float %2497, %2435
  %2501 = fadd fast float %2498, %2436
  %2502 = fptoui float %100 to i32
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 0
  %2505 = fmul fast float %2504, 5.000000e-01
  %2506 = fptoui float %2505 to i32
  %2507 = icmp eq i32 %2502, %2506
  %2508 = fptoui float %101 to i32
  %2509 = extractvalue %dx.types.CBufRet.f32 %2503, 1
  %2510 = fmul fast float %2509, 5.000000e-01
  %2511 = fptoui float %2510 to i32
  %2512 = icmp eq i32 %2508, %2511
  %2513 = and i1 %2507, %2512
  br i1 %2513, label %2514, label %2538

; <label>:2514                                    ; preds = %2370
  %2515 = call float @dx.op.binary.f32(i32 35, float %2500, float %2501)  ; FMax(a,b)
  %2516 = call float @dx.op.binary.f32(i32 35, float %2499, float %2515)  ; FMax(a,b)
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2519 = extractvalue %dx.types.CBufRet.f32 %2518, 0
  %2520 = extractvalue %dx.types.CBufRet.f32 %2518, 1
  %2521 = extractvalue %dx.types.CBufRet.f32 %2518, 2
  %2522 = fadd fast float %2519, %155
  %2523 = fadd fast float %2520, %156
  %2524 = fadd fast float %2521, %157
  %2525 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2502, i32 %2508, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2526 = extractvalue %dx.types.ResRet.f32 %2525, 0
  %2527 = fcmp fast ogt float %2526, -1.000000e+00
  %2528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %2529 = extractvalue %dx.types.CBufRet.f32 %2528, 1
  %2530 = select i1 %2527, float %2529, float 1.000000e+00
  %2531 = fadd fast float %2526, 1.000000e+00
  %2532 = fmul fast float %2530, %2531
  %2533 = call float @dx.op.unary.f32(i32 6, float %2532)  ; FAbs(value)
  %2534 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %2535 = call float @dx.op.unary.f32(i32 83, float %82)  ; DerivCoarseX(value)
  %2536 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %2537 = call float @dx.op.unary.f32(i32 84, float %82)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %2522, float %2523, float %2524, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %100, float %101, float %88, float %89, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %343, float %344, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %306, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %308, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %321, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %323, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %2533, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %2473, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %2499, float %2500, float %2501, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %2517, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %199, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %79, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %932, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 100, float %1253, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 104, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 116, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 128, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 136, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 144, float 0.000000e+00, float 0.000000e+00, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 152, float 0.000000e+00, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 156, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 160, i32 0, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 164, float %2534, float %2535, float %2536, float %2537, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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
  br label %2538

; <label>:2538                                    ; preds = %2514, %2370
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 3
  %2541 = fmul fast float %2540, %2377
  %2542 = call float @dx.op.unary.f32(i32 7, float %2541)  ; Saturate(value)
  %2543 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2544 = fsub fast float 1.000000e+00, %2378
  %2545 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %2544)  ; FMin(a,b)
  %2546 = call float @dx.op.dot3.f32(i32 55, float %2434, float %2435, float %2436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2547 = fsub fast float 1.000000e+00, %2546
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %58, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = lshr i32 %2549, 8
  %2553 = and i32 %2552, 255
  %2554 = uitofp i32 %2553 to float
  %2555 = fmul fast float %2554, %2547
  %2556 = fadd fast float %2555, %2551
  %2557 = fmul fast float %2556, 0x3F70101020000000
  %2558 = call float @dx.op.unary.f32(i32 7, float %2557)  ; Saturate(value)
  %2559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2560 = extractvalue %dx.types.CBufRet.f32 %2559, 0
  %2561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2562 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2563 = extractvalue %dx.types.CBufRet.i32 %2562, 3
  %2564 = and i32 %2563, 3
  %2565 = icmp ne i32 %2564, 0
  %2566 = and i32 %2563, 4
  %2567 = icmp ne i32 %2566, 0
  %2568 = and i1 %2565, %2567
  br i1 %2568, label %2569, label %2580

; <label>:2569                                    ; preds = %2538
  %2570 = extractvalue %dx.types.CBufRet.f32 %2561, 3
  %2571 = fmul fast float %2570, %101
  %2572 = extractvalue %dx.types.CBufRet.f32 %2561, 2
  %2573 = fmul fast float %2572, %100
  %2574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %2573, float %2571, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2575 = extractvalue %dx.types.ResRet.f32 %2574, 0
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %2578 = extractvalue %dx.types.CBufRet.f32 %2577, 0
  %2579 = fcmp fast olt float %2576, %2578
  br label %2583

; <label>:2580                                    ; preds = %2538
  %2581 = icmp eq i32 %2566, 0
  %2582 = and i1 %2565, %2581
  br label %2583

; <label>:2583                                    ; preds = %2580, %2569
  %2584 = phi i1 [ %2579, %2569 ], [ %2582, %2580 ]
  %2585 = fsub fast float -0.000000e+00, %157
  %2586 = fsub fast float -0.000000e+00, %2441
  %2587 = fsub fast float -0.000000e+00, %2442
  %2588 = fsub fast float -0.000000e+00, %2443
  %2589 = select i1 %2584, float 0.000000e+00, float %2436
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float %2586, float %2587, float %2588)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2592 = fmul fast float %2452, 2.000000e+00
  %2593 = fmul fast float %2592, %2413
  %2594 = fmul fast float %2592, %2414
  %2595 = fmul fast float %2592, %2415
  %2596 = fsub fast float %2441, %2593
  %2597 = fsub fast float %2442, %2594
  %2598 = fsub fast float %2443, %2595
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2601 = bitcast float %2600 to i32
  %2602 = lshr i32 %2601, 8
  %2603 = and i32 %2602, 255
  %2604 = uitofp i32 %2603 to float
  %2605 = fptoui float %2604 to i32
  %2606 = and i32 %2605, 4
  %2607 = icmp ne i32 %2606, 0
  %2608 = select i1 %2607, float %2543, float 1.000000e+00
  %2609 = call float @dx.op.binary.f32(i32 36, float %2608, float 1.000000e+00)  ; FMin(a,b)
  %2610 = fsub fast float 1.000000e+00, %2609
  %2611 = bitcast float %2610 to i32
  %2612 = ashr i32 %2611, 1
  %2613 = add nsw i32 %2612, 532487669
  %2614 = bitcast i32 %2613 to float
  %2615 = fsub fast float 1.000000e+00, %2542
  %2616 = call float @dx.op.binary.f32(i32 35, float %2615, float 0x3F847AE140000000)  ; FMax(a,b)
  %2617 = fmul fast float %2616, %2616
  %2618 = fmul fast float %2617, %2617
  %2619 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2620 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %63, float %2614, float %2618, float %2619, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2621 = extractvalue %dx.types.ResRet.f32 %2620, 0
  %2622 = and i32 %2605, 1
  %2623 = icmp ne i32 %2622, 0
  %2624 = fsub fast float 1.000000e+00, %2608
  %2625 = bitcast float %2624 to i32
  %2626 = sub nsw i32 2129859010, %2625
  %2627 = bitcast i32 %2626 to float
  %2628 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.i32 %2628, 0
  %2630 = icmp eq i32 %2629, 1
  %2631 = select i1 %2630, float 0.000000e+00, float 1.000000e+00
  %2632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2633 = extractvalue %dx.types.CBufRet.f32 %2632, 0
  %2634 = fcmp fast ogt float %2633, 0.000000e+00
  %2635 = fcmp fast ogt float %2631, 0.000000e+00
  %2636 = and i1 %2634, %2635
  br i1 %2636, label %2637, label %2821, !dx.controlflow.hints !127

; <label>:2637                                    ; preds = %2583
  %2638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2639 = extractvalue %dx.types.CBufRet.f32 %2638, 0
  %2640 = extractvalue %dx.types.CBufRet.f32 %2638, 1
  %2641 = extractvalue %dx.types.CBufRet.f32 %2638, 2
  %2642 = fadd fast float %2639, %155
  %2643 = fadd fast float %2640, %156
  %2644 = fadd fast float %2641, %157
  %2645 = fmul fast float %2413, 3.200000e+01
  %2646 = fmul fast float %2414, 3.200000e+01
  %2647 = fadd fast float %2642, %2645
  %2648 = fadd fast float %2643, %2646
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 0
  %2651 = extractvalue %dx.types.CBufRet.f32 %2649, 1
  %2652 = fsub fast float %2647, %2650
  %2653 = fsub fast float %2648, %2651
  %2654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2655 = extractvalue %dx.types.CBufRet.f32 %2654, 0
  %2656 = extractvalue %dx.types.CBufRet.f32 %2654, 1
  %2657 = fmul fast float %2652, %2655
  %2658 = fmul fast float %2653, %2656
  %2659 = fmul fast float %155, %155
  %2660 = fmul fast float %156, %156
  %2661 = fadd fast float %2659, %2660
  %2662 = call float @dx.op.unary.f32(i32 24, float %2661)  ; Sqrt(value)
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.CBufRet.f32 %2663, 1
  %2666 = fsub fast float %2662, %2664
  %2667 = fdiv fast float %2666, %2665
  %2668 = call float @dx.op.unary.f32(i32 7, float %2667)  ; Saturate(value)
  %2669 = fmul fast float %2668, 2.000000e+00
  %2670 = fsub fast float 3.000000e+00, %2669
  %2671 = fmul fast float %2668, %2668
  %2672 = fmul fast float %2671, %2670
  %2673 = fcmp fast oge float %2657, 0.000000e+00
  %2674 = fcmp fast ole float %2657, 1.000000e+00
  %2675 = and i1 %2674, %2673
  %2676 = fcmp fast oge float %2658, 0.000000e+00
  %2677 = and i1 %2676, %2675
  %2678 = fcmp fast ole float %2658, 1.000000e+00
  %2679 = and i1 %2678, %2677
  %2680 = fcmp fast ogt float %2672, 0.000000e+00
  %2681 = and i1 %2680, %2679
  br i1 %2681, label %2682, label %2805, !dx.controlflow.hints !128

; <label>:2682                                    ; preds = %2637
  %2683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2684 = extractvalue %dx.types.CBufRet.f32 %2683, 2
  %2685 = extractvalue %dx.types.CBufRet.f32 %2683, 3
  %2686 = fmul fast float %2684, %2657
  %2687 = fmul fast float %2685, %2658
  %2688 = call float @dx.op.unary.f32(i32 27, float %2686)  ; Round_ni(value)
  %2689 = call float @dx.op.unary.f32(i32 27, float %2687)  ; Round_ni(value)
  %2690 = fptosi float %2688 to i32
  %2691 = fptosi float %2689 to i32
  %2692 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %2690, i32 %2691, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2693 = extractvalue %dx.types.ResRet.i32 %2692, 0
  %2694 = lshr i32 %2693, 16
  %2695 = icmp eq i32 %2694, 65535
  br i1 %2695, label %2805, label %2696

; <label>:2696                                    ; preds = %2682
  %2697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2698 = extractvalue %dx.types.CBufRet.f32 %2697, 0
  %2699 = fmul fast float %2698, %2657
  %2700 = extractvalue %dx.types.CBufRet.f32 %2697, 1
  %2701 = fadd fast float %2699, %2700
  %2702 = extractvalue %dx.types.CBufRet.f32 %2697, 2
  %2703 = fmul fast float %2702, %2658
  %2704 = extractvalue %dx.types.CBufRet.f32 %2697, 3
  %2705 = fadd fast float %2703, %2704
  %2706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %63, float %2701, float %2705, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2707 = extractvalue %dx.types.ResRet.f32 %2706, 0
  %2708 = extractvalue %dx.types.ResRet.f32 %2706, 1
  %2709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2710 = extractvalue %dx.types.CBufRet.f32 %2709, 1
  %2711 = extractvalue %dx.types.CBufRet.f32 %2709, 0
  %2712 = fsub fast float %2710, %2711
  %2713 = fmul fast float %2712, %2707
  %2714 = fadd fast float %2713, %2711
  %2715 = extractvalue %dx.types.CBufRet.f32 %2709, 3
  %2716 = extractvalue %dx.types.CBufRet.f32 %2709, 2
  %2717 = fsub fast float %2715, %2716
  %2718 = fmul fast float %2717, %2708
  %2719 = fadd fast float %2718, %2716
  %2720 = fsub fast float %2644, %2714
  %2721 = fsub fast float %2719, %2714
  %2722 = fdiv fast float %2720, %2721
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %2725 = extractvalue %dx.types.CBufRet.f32 %2683, 0
  %2726 = extractvalue %dx.types.CBufRet.f32 %2683, 1
  %2727 = fmul fast float %2725, %2657
  %2728 = fmul fast float %2726, %2658
  %2729 = fmul fast float %2727, 1.250000e-01
  %2730 = fmul fast float %2728, 1.250000e-01
  %2731 = call float @dx.op.unary.f32(i32 27, float %2729)  ; Round_ni(value)
  %2732 = call float @dx.op.unary.f32(i32 27, float %2730)  ; Round_ni(value)
  %2733 = fmul fast float %2731, 8.000000e+00
  %2734 = fmul fast float %2732, 8.000000e+00
  %2735 = fsub fast float %2727, %2733
  %2736 = fsub fast float %2728, %2734
  %2737 = fadd fast float %2735, 5.000000e-01
  %2738 = fadd fast float %2736, 5.000000e-01
  %2739 = and i32 %2694, 255
  %2740 = lshr i32 %2693, 24
  %2741 = mul nuw nsw i32 %2739, 9
  %2742 = uitofp i32 %2741 to float
  %2743 = mul nuw nsw i32 %2740, 9
  %2744 = uitofp i32 %2743 to float
  %2745 = fadd fast float %2737, %2742
  %2746 = fadd fast float %2738, %2744
  %2747 = fdiv fast float %2745, %2633
  %2748 = fdiv fast float %2746, %2724
  %2749 = fmul fast float %2723, 4.375000e-01
  %2750 = fadd fast float %2749, 3.125000e-02
  %2751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2747, float %2748, float %2750, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = fadd fast float %2749, 5.312500e-01
  %2756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %2747, float %2748, float %2755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = fmul fast float %2757, 2.000000e+00
  %2761 = fmul fast float %2758, 2.000000e+00
  %2762 = fmul fast float %2759, 2.000000e+00
  %2763 = fadd fast float %2760, -1.000000e+00
  %2764 = fadd fast float %2761, -1.000000e+00
  %2765 = fadd fast float %2762, -1.000000e+00
  %2766 = fmul fast float %2763, %2763
  %2767 = fmul fast float %2764, %2764
  %2768 = fadd fast float %2766, %2767
  %2769 = fmul fast float %2765, %2765
  %2770 = fadd fast float %2768, %2769
  %2771 = call float @dx.op.unary.f32(i32 24, float %2770)  ; Sqrt(value)
  %2772 = fcmp fast ogt float %2771, 0.000000e+00
  br i1 %2772, label %2773, label %2777

; <label>:2773                                    ; preds = %2696
  %2774 = fdiv fast float %2763, %2771
  %2775 = fdiv fast float %2764, %2771
  %2776 = fdiv fast float %2765, %2771
  br label %2777

; <label>:2777                                    ; preds = %2773, %2696
  %2778 = phi float [ %2774, %2773 ], [ 0.000000e+00, %2696 ]
  %2779 = phi float [ %2775, %2773 ], [ 0.000000e+00, %2696 ]
  %2780 = phi float [ %2776, %2773 ], [ 0.000000e+00, %2696 ]
  %2781 = call float @dx.op.dot3.f32(i32 55, float %2778, float %2779, float %2780, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %2782 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2781)  ; FMax(a,b)
  %2783 = fmul fast float %2782, 0x400C5BF8A0000000
  %2784 = fmul fast float %2752, %2672
  %2785 = fmul fast float %2784, %2783
  %2786 = fmul fast float %2753, %2672
  %2787 = fmul fast float %2786, %2783
  %2788 = fmul fast float %2754, %2672
  %2789 = fmul fast float %2788, %2783
  %2790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2791 = extractvalue %dx.types.CBufRet.f32 %2790, 3
  %2792 = fmul fast float %2785, %2791
  %2793 = fmul fast float %2787, %2791
  %2794 = fmul fast float %2789, %2791
  %2795 = fcmp fast ogt float %2644, %2719
  br i1 %2795, label %2796, label %2805

; <label>:2796                                    ; preds = %2777
  %2797 = fmul fast float %2721, 0x3FC24924A0000000
  %2798 = fsub fast float %2644, %2719
  %2799 = fdiv fast float %2798, %2797
  %2800 = call float @dx.op.unary.f32(i32 7, float %2799)  ; Saturate(value)
  %2801 = fsub fast float 1.000000e+00, %2800
  %2802 = fmul fast float %2801, %2792
  %2803 = fmul fast float %2801, %2793
  %2804 = fmul fast float %2801, %2794
  br label %2805

; <label>:2805                                    ; preds = %2796, %2777, %2682, %2637
  %2806 = phi float [ %2804, %2796 ], [ %2794, %2777 ], [ 0.000000e+00, %2682 ], [ 0.000000e+00, %2637 ]
  %2807 = phi float [ %2803, %2796 ], [ %2793, %2777 ], [ 0.000000e+00, %2682 ], [ 0.000000e+00, %2637 ]
  %2808 = phi float [ %2802, %2796 ], [ %2792, %2777 ], [ 0.000000e+00, %2682 ], [ 0.000000e+00, %2637 ]
  %2809 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2808)  ; FMax(a,b)
  %2810 = fmul fast float %2809, 0x3FD20DD760000000
  %2811 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2807)  ; FMax(a,b)
  %2812 = fmul fast float %2811, 0x3FD20DD760000000
  %2813 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2806)  ; FMax(a,b)
  %2814 = fmul fast float %2813, 0x3FD20DD760000000
  %2815 = call float @dx.op.binary.f32(i32 35, float %2810, float 0.000000e+00)  ; FMax(a,b)
  %2816 = call float @dx.op.binary.f32(i32 35, float %2812, float 0.000000e+00)  ; FMax(a,b)
  %2817 = call float @dx.op.binary.f32(i32 35, float %2814, float 0.000000e+00)  ; FMax(a,b)
  %2818 = fmul fast float %2815, %2631
  %2819 = fmul fast float %2816, %2631
  %2820 = fmul fast float %2817, %2631
  br label %2821

; <label>:2821                                    ; preds = %2805, %2583
  %2822 = phi float [ %2818, %2805 ], [ 0.000000e+00, %2583 ]
  %2823 = phi float [ %2819, %2805 ], [ 0.000000e+00, %2583 ]
  %2824 = phi float [ %2820, %2805 ], [ 0.000000e+00, %2583 ]
  br i1 %2630, label %2825, label %3617, !dx.controlflow.hints !129

; <label>:2825                                    ; preds = %2821
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 0
  %2828 = extractvalue %dx.types.CBufRet.f32 %2826, 1
  %2829 = extractvalue %dx.types.CBufRet.f32 %2826, 2
  %2830 = fadd fast float %2827, %155
  %2831 = fadd fast float %2828, %156
  %2832 = fadd fast float %2829, %157
  %2833 = fmul fast float %2413, 3.200000e+01
  %2834 = fmul fast float %2414, 3.200000e+01
  %2835 = fadd fast float %2830, %2833
  %2836 = fadd fast float %2831, %2834
  %2837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2838 = extractvalue %dx.types.CBufRet.f32 %2837, 0
  %2839 = extractvalue %dx.types.CBufRet.f32 %2837, 1
  %2840 = fsub fast float %2835, %2838
  %2841 = fsub fast float %2836, %2839
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2845 = fmul fast float %2840, %2843
  %2846 = fmul fast float %2841, %2844
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = fmul fast float %2845, %2848
  %2850 = extractvalue %dx.types.CBufRet.f32 %2847, 1
  %2851 = fadd fast float %2849, %2850
  %2852 = extractvalue %dx.types.CBufRet.f32 %2847, 2
  %2853 = fmul fast float %2852, %2846
  %2854 = extractvalue %dx.types.CBufRet.f32 %2847, 3
  %2855 = fadd fast float %2853, %2854
  %2856 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %63, float %2851, float %2855, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2857 = extractvalue %dx.types.ResRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.ResRet.f32 %2856, 1
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 1
  %2861 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2862 = fsub fast float %2860, %2861
  %2863 = fmul fast float %2862, %2857
  %2864 = fadd fast float %2863, %2861
  %2865 = extractvalue %dx.types.CBufRet.f32 %2859, 3
  %2866 = extractvalue %dx.types.CBufRet.f32 %2859, 2
  %2867 = fsub fast float %2865, %2866
  %2868 = fmul fast float %2867, %2858
  %2869 = fadd fast float %2868, %2866
  %2870 = fsub fast float %2832, %2864
  %2871 = fsub fast float %2869, %2864
  %2872 = fdiv fast float %2870, %2871
  %2873 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2875 = extractvalue %dx.types.CBufRet.f32 %2874, 0
  %2876 = fmul fast float %2875, %2873
  %2877 = extractvalue %dx.types.CBufRet.f32 %2874, 1
  %2878 = fadd fast float %2876, %2877
  %2879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %63, float %2851, float %2855, float %2878, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = extractvalue %dx.types.ResRet.f32 %2879, 1
  %2882 = extractvalue %dx.types.ResRet.f32 %2879, 2
  %2883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2884 = extractvalue %dx.types.CBufRet.f32 %2883, 0
  %2885 = extractvalue %dx.types.CBufRet.f32 %2883, 1
  %2886 = extractvalue %dx.types.CBufRet.f32 %2883, 2
  %2887 = fmul fast float %2884, %2880
  %2888 = fmul fast float %2885, %2881
  %2889 = fmul fast float %2886, %2882
  %2890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2891 = extractvalue %dx.types.CBufRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.CBufRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.CBufRet.f32 %2890, 2
  %2894 = fadd fast float %2887, %2891
  %2895 = fadd fast float %2888, %2892
  %2896 = fadd fast float %2889, %2893
  %2897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2898 = extractvalue %dx.types.CBufRet.f32 %2897, 0
  %2899 = fmul fast float %2898, %2845
  %2900 = extractvalue %dx.types.CBufRet.f32 %2897, 1
  %2901 = fadd fast float %2899, %2900
  %2902 = extractvalue %dx.types.CBufRet.f32 %2897, 2
  %2903 = fmul fast float %2902, %2846
  %2904 = extractvalue %dx.types.CBufRet.f32 %2897, 3
  %2905 = fadd fast float %2903, %2904
  %2906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2907 = extractvalue %dx.types.CBufRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.CBufRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.CBufRet.f32 %2906, 2
  %2910 = extractvalue %dx.types.CBufRet.f32 %2906, 3
  %2911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2912 = extractvalue %dx.types.CBufRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.CBufRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.CBufRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.CBufRet.f32 %2911, 3
  %2916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2901, float %2905, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.ResRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.ResRet.f32 %2916, 2
  %2920 = extractvalue %dx.types.ResRet.f32 %2916, 3
  %2921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2901, float %2905, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2922 = extractvalue %dx.types.ResRet.f32 %2921, 0
  %2923 = extractvalue %dx.types.ResRet.f32 %2921, 1
  %2924 = extractvalue %dx.types.ResRet.f32 %2921, 2
  %2925 = extractvalue %dx.types.ResRet.f32 %2921, 3
  %2926 = fmul fast float %2917, %2894
  %2927 = fmul fast float %2922, %2894
  %2928 = fmul fast float %2924, %2894
  %2929 = fmul fast float %2920, %2894
  %2930 = fadd fast float %2926, %2907
  %2931 = fadd fast float %2927, %2908
  %2932 = fadd fast float %2928, %2909
  %2933 = fadd fast float %2929, %2910
  %2934 = fmul fast float %2918, %2894
  %2935 = fmul fast float %2923, %2894
  %2936 = fadd fast float %2934, %2912
  %2937 = fadd fast float %2935, %2913
  %2938 = fmul fast float %2919, %2894
  %2939 = fmul fast float %2925, %2894
  %2940 = fadd fast float %2938, %2914
  %2941 = fadd fast float %2939, %2915
  %2942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2901, float %2905, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = extractvalue %dx.types.ResRet.f32 %2942, 3
  %2947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2901, float %2905, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = extractvalue %dx.types.ResRet.f32 %2947, 3
  %2952 = fmul fast float %2943, %2895
  %2953 = fmul fast float %2948, %2895
  %2954 = fmul fast float %2950, %2895
  %2955 = fmul fast float %2946, %2895
  %2956 = fadd fast float %2930, %2952
  %2957 = fadd fast float %2931, %2953
  %2958 = fadd fast float %2932, %2954
  %2959 = fadd fast float %2933, %2955
  %2960 = fmul fast float %2944, %2895
  %2961 = fmul fast float %2949, %2895
  %2962 = fadd fast float %2936, %2960
  %2963 = fadd fast float %2937, %2961
  %2964 = fmul fast float %2945, %2895
  %2965 = fmul fast float %2951, %2895
  %2966 = fadd fast float %2940, %2964
  %2967 = fadd fast float %2941, %2965
  %2968 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2901, float %2905, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = extractvalue %dx.types.ResRet.f32 %2968, 3
  %2973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %44, %dx.types.Handle %63, float %2901, float %2905, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = extractvalue %dx.types.ResRet.f32 %2973, 3
  %2978 = fmul fast float %2969, %2896
  %2979 = fmul fast float %2974, %2896
  %2980 = fmul fast float %2976, %2896
  %2981 = fmul fast float %2972, %2896
  %2982 = fadd fast float %2956, %2978
  %2983 = fadd fast float %2957, %2979
  %2984 = fadd fast float %2958, %2980
  %2985 = fadd fast float %2959, %2981
  %2986 = fmul fast float %2970, %2896
  %2987 = fmul fast float %2975, %2896
  %2988 = fadd fast float %2962, %2986
  %2989 = fadd fast float %2963, %2987
  %2990 = fmul fast float %2971, %2896
  %2991 = fmul fast float %2977, %2896
  %2992 = fadd fast float %2966, %2990
  %2993 = fadd fast float %2967, %2991
  %2994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2995 = extractvalue %dx.types.CBufRet.f32 %2994, 0
  %2996 = fsub fast float %2830, %2995
  %2997 = fsub fast float %2838, %2830
  %2998 = call float @dx.op.binary.f32(i32 35, float %2997, float %2996)  ; FMax(a,b)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2994, 1
  %3000 = fsub fast float %2831, %2999
  %3001 = fsub fast float %2839, %2831
  %3002 = call float @dx.op.binary.f32(i32 35, float %3001, float %3000)  ; FMax(a,b)
  %3003 = call float @dx.op.binary.f32(i32 35, float %2998, float %3002)  ; FMax(a,b)
  %3004 = extractvalue %dx.types.CBufRet.f32 %2842, 3
  %3005 = fmul fast float %3004, %3003
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3008 = extractvalue %dx.types.CBufRet.f32 %3007, 0
  %3009 = extractvalue %dx.types.CBufRet.f32 %3007, 1
  %3010 = extractvalue %dx.types.CBufRet.f32 %3007, 2
  %3011 = extractvalue %dx.types.CBufRet.f32 %3007, 3
  %3012 = fsub fast float %3008, %2982
  %3013 = fsub fast float %3009, %2983
  %3014 = fsub fast float %3010, %2984
  %3015 = fsub fast float %3011, %2985
  %3016 = fmul fast float %3012, %3006
  %3017 = fmul fast float %3013, %3006
  %3018 = fmul fast float %3014, %3006
  %3019 = fmul fast float %3015, %3006
  %3020 = fadd fast float %3016, %2982
  %3021 = fadd fast float %3017, %2983
  %3022 = fadd fast float %3018, %2984
  %3023 = fadd fast float %3019, %2985
  %3024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3025 = extractvalue %dx.types.CBufRet.f32 %3024, 0
  %3026 = extractvalue %dx.types.CBufRet.f32 %3024, 1
  %3027 = fsub fast float %3025, %2988
  %3028 = fsub fast float %3026, %2989
  %3029 = fmul fast float %3027, %3006
  %3030 = fmul fast float %3028, %3006
  %3031 = fadd fast float %3029, %2988
  %3032 = fadd fast float %3030, %2989
  %3033 = extractvalue %dx.types.CBufRet.f32 %3024, 2
  %3034 = extractvalue %dx.types.CBufRet.f32 %3024, 3
  %3035 = fsub fast float %3033, %2992
  %3036 = fsub fast float %3034, %2993
  %3037 = fmul fast float %3035, %3006
  %3038 = fmul fast float %3036, %3006
  %3039 = fadd fast float %3037, %2992
  %3040 = fadd fast float %3038, %2993
  %3041 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3042 = extractvalue %dx.types.CBufRet.f32 %3041, 0
  %3043 = fmul fast float %3042, %3020
  %3044 = fmul fast float %3042, %3021
  %3045 = fmul fast float %3042, %3022
  %3046 = fmul fast float %3042, %3023
  %3047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3048 = extractvalue %dx.types.CBufRet.f32 %3047, 0
  %3049 = fmul fast float %3048, %3031
  %3050 = fmul fast float %3048, %3032
  %3051 = fadd fast float %3049, %3043
  %3052 = fadd fast float %3050, %3045
  %3053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3054 = extractvalue %dx.types.CBufRet.f32 %3053, 0
  %3055 = fmul fast float %3054, %3039
  %3056 = fmul fast float %3054, %3040
  %3057 = fadd fast float %3051, %3055
  %3058 = fadd fast float %3052, %3056
  %3059 = extractvalue %dx.types.CBufRet.f32 %3041, 1
  %3060 = fmul fast float %3059, %3020
  %3061 = fmul fast float %3059, %3021
  %3062 = fmul fast float %3059, %3022
  %3063 = fmul fast float %3059, %3023
  %3064 = extractvalue %dx.types.CBufRet.f32 %3047, 1
  %3065 = fmul fast float %3064, %3031
  %3066 = fmul fast float %3064, %3032
  %3067 = fadd fast float %3065, %3060
  %3068 = fadd fast float %3066, %3062
  %3069 = extractvalue %dx.types.CBufRet.f32 %3053, 1
  %3070 = fmul fast float %3069, %3039
  %3071 = fmul fast float %3069, %3040
  %3072 = fadd fast float %3067, %3070
  %3073 = fadd fast float %3068, %3071
  %3074 = extractvalue %dx.types.CBufRet.f32 %3041, 2
  %3075 = fmul fast float %3074, %3020
  %3076 = fmul fast float %3074, %3021
  %3077 = fmul fast float %3074, %3022
  %3078 = fmul fast float %3074, %3023
  %3079 = extractvalue %dx.types.CBufRet.f32 %3047, 2
  %3080 = fmul fast float %3079, %3031
  %3081 = fmul fast float %3079, %3032
  %3082 = fadd fast float %3080, %3075
  %3083 = fadd fast float %3081, %3077
  %3084 = extractvalue %dx.types.CBufRet.f32 %3053, 2
  %3085 = fmul fast float %3084, %3039
  %3086 = fmul fast float %3084, %3040
  %3087 = fadd fast float %3082, %3085
  %3088 = fadd fast float %3083, %3086
  %3089 = fmul fast float %3076, %3076
  %3090 = fmul fast float %3088, %3088
  %3091 = fmul fast float %3078, %3078
  %3092 = fadd fast float %3091, %3089
  %3093 = fadd fast float %3092, %3090
  %3094 = call float @dx.op.unary.f32(i32 24, float %3093)  ; Sqrt(value)
  %3095 = fcmp fast ugt float %3094, 0.000000e+00
  br i1 %3095, label %3096, label %3111

; <label>:3096                                    ; preds = %2825
  %3097 = fsub fast float -0.000000e+00, %3078
  %3098 = fdiv fast float %3097, %3094
  %3099 = fsub fast float -0.000000e+00, %3076
  %3100 = fdiv fast float %3099, %3094
  %3101 = fdiv fast float %3088, %3094
  %3102 = fmul fast float %3087, 0x3FE279A760000000
  %3103 = fmul fast float %3100, %3076
  %3104 = fmul fast float %3101, %3088
  %3105 = fmul fast float %3098, %3078
  %3106 = fadd fast float %3103, %3105
  %3107 = fsub fast float %3106, %3104
  %3108 = call float @dx.op.unary.f32(i32 6, float %3107)  ; FAbs(value)
  %3109 = fadd fast float %3108, 0x3DDB7CDFE0000000
  %3110 = fdiv fast float %3102, %3109
  br label %3111

; <label>:3111                                    ; preds = %3096, %2825
  %3112 = phi float [ %3110, %3096 ], [ 1.000000e+00, %2825 ]
  %3113 = fmul fast float %3061, %3061
  %3114 = fmul fast float %3073, %3073
  %3115 = fmul fast float %3063, %3063
  %3116 = fadd fast float %3115, %3113
  %3117 = fadd fast float %3116, %3114
  %3118 = call float @dx.op.unary.f32(i32 24, float %3117)  ; Sqrt(value)
  %3119 = fcmp fast ugt float %3118, 0.000000e+00
  br i1 %3119, label %3120, label %3135

; <label>:3120                                    ; preds = %3111
  %3121 = fsub fast float -0.000000e+00, %3063
  %3122 = fdiv fast float %3121, %3118
  %3123 = fsub fast float -0.000000e+00, %3061
  %3124 = fdiv fast float %3123, %3118
  %3125 = fdiv fast float %3073, %3118
  %3126 = fmul fast float %3072, 0x3FE279A760000000
  %3127 = fmul fast float %3124, %3061
  %3128 = fmul fast float %3125, %3073
  %3129 = fmul fast float %3122, %3063
  %3130 = fadd fast float %3127, %3129
  %3131 = fsub fast float %3130, %3128
  %3132 = call float @dx.op.unary.f32(i32 6, float %3131)  ; FAbs(value)
  %3133 = fadd fast float %3132, 0x3DDB7CDFE0000000
  %3134 = fdiv fast float %3126, %3133
  br label %3135

; <label>:3135                                    ; preds = %3120, %3111
  %3136 = phi float [ %3134, %3120 ], [ 1.000000e+00, %3111 ]
  %3137 = call float @dx.op.binary.f32(i32 36, float %3136, float %3112)  ; FMin(a,b)
  %3138 = fmul fast float %3044, %3044
  %3139 = fmul fast float %3058, %3058
  %3140 = fmul fast float %3046, %3046
  %3141 = fadd fast float %3140, %3138
  %3142 = fadd fast float %3141, %3139
  %3143 = call float @dx.op.unary.f32(i32 24, float %3142)  ; Sqrt(value)
  %3144 = fcmp fast ugt float %3143, 0.000000e+00
  br i1 %3144, label %3145, label %3160

; <label>:3145                                    ; preds = %3135
  %3146 = fsub fast float -0.000000e+00, %3046
  %3147 = fdiv fast float %3146, %3143
  %3148 = fsub fast float -0.000000e+00, %3044
  %3149 = fdiv fast float %3148, %3143
  %3150 = fdiv fast float %3058, %3143
  %3151 = fmul fast float %3057, 0x3FE279A760000000
  %3152 = fmul fast float %3149, %3044
  %3153 = fmul fast float %3150, %3058
  %3154 = fmul fast float %3147, %3046
  %3155 = fadd fast float %3152, %3154
  %3156 = fsub fast float %3155, %3153
  %3157 = call float @dx.op.unary.f32(i32 6, float %3156)  ; FAbs(value)
  %3158 = fadd fast float %3157, 0x3DDB7CDFE0000000
  %3159 = fdiv fast float %3151, %3158
  br label %3160

; <label>:3160                                    ; preds = %3145, %3135
  %3161 = phi float [ %3159, %3145 ], [ 1.000000e+00, %3135 ]
  %3162 = call float @dx.op.binary.f32(i32 36, float %3161, float %3137)  ; FMin(a,b)
  %3163 = call float @dx.op.unary.f32(i32 7, float %3162)  ; Saturate(value)
  %3164 = fcmp fast olt float %3163, 1.000000e+00
  br i1 %3164, label %3165, label %3175

; <label>:3165                                    ; preds = %3160
  %3166 = fmul fast float %3163, %3044
  %3167 = fmul fast float %3163, %3058
  %3168 = fmul fast float %3163, %3046
  %3169 = fmul fast float %3163, %3061
  %3170 = fmul fast float %3163, %3073
  %3171 = fmul fast float %3163, %3063
  %3172 = fmul fast float %3163, %3076
  %3173 = fmul fast float %3163, %3088
  %3174 = fmul fast float %3163, %3078
  br label %3175

; <label>:3175                                    ; preds = %3165, %3160
  %3176 = phi float [ %3172, %3165 ], [ %3076, %3160 ]
  %3177 = phi float [ %3173, %3165 ], [ %3088, %3160 ]
  %3178 = phi float [ %3174, %3165 ], [ %3078, %3160 ]
  %3179 = phi float [ %3169, %3165 ], [ %3061, %3160 ]
  %3180 = phi float [ %3170, %3165 ], [ %3073, %3160 ]
  %3181 = phi float [ %3171, %3165 ], [ %3063, %3160 ]
  %3182 = phi float [ %3166, %3165 ], [ %3044, %3160 ]
  %3183 = phi float [ %3167, %3165 ], [ %3058, %3160 ]
  %3184 = phi float [ %3168, %3165 ], [ %3046, %3160 ]
  %3185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3057)  ; FMax(a,b)
  %3186 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3072)  ; FMax(a,b)
  %3187 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3087)  ; FMax(a,b)
  %3188 = fcmp fast oge float %2845, 0.000000e+00
  %3189 = and i1 %3188, %2634
  %3190 = fcmp fast ole float %2845, 1.000000e+00
  %3191 = and i1 %3190, %3189
  %3192 = fcmp fast oge float %2846, 0.000000e+00
  %3193 = and i1 %3192, %3191
  %3194 = fcmp fast ole float %2846, 1.000000e+00
  %3195 = and i1 %3194, %3193
  br i1 %3195, label %3196, label %3336, !dx.controlflow.hints !130

; <label>:3196                                    ; preds = %3175
  %3197 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.f32 %3197, 2
  %3199 = extractvalue %dx.types.CBufRet.f32 %3197, 3
  %3200 = fmul fast float %3198, %2845
  %3201 = fmul fast float %3199, %2846
  %3202 = call float @dx.op.unary.f32(i32 27, float %3200)  ; Round_ni(value)
  %3203 = call float @dx.op.unary.f32(i32 27, float %3201)  ; Round_ni(value)
  %3204 = fptosi float %3202 to i32
  %3205 = fptosi float %3203 to i32
  %3206 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %41, i32 0, i32 %3204, i32 %3205, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %3207, 65535
  %3209 = lshr i32 %3207, 16
  %3210 = icmp eq i32 %3208, 65535
  br i1 %3210, label %3247, label %3211

; <label>:3211                                    ; preds = %3196
  %3212 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %3213 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3214 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3215 = fmul fast float %3213, %2845
  %3216 = fmul fast float %3214, %2846
  %3217 = fmul fast float %3215, 1.250000e-01
  %3218 = fmul fast float %3216, 1.250000e-01
  %3219 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3220 = call float @dx.op.unary.f32(i32 27, float %3218)  ; Round_ni(value)
  %3221 = fmul fast float %3219, 8.000000e+00
  %3222 = fmul fast float %3220, 8.000000e+00
  %3223 = and i32 %3207, 255
  %3224 = lshr i32 %3207, 8
  %3225 = and i32 %3224, 255
  %3226 = mul nuw nsw i32 %3223, 9
  %3227 = uitofp i32 %3226 to float
  %3228 = mul nuw nsw i32 %3225, 9
  %3229 = uitofp i32 %3228 to float
  %3230 = fadd fast float %3227, 5.000000e-01
  %3231 = fadd fast float %3230, %3215
  %3232 = fsub fast float %3231, %3221
  %3233 = fadd fast float %3229, 5.000000e-01
  %3234 = fadd fast float %3233, %3216
  %3235 = fsub fast float %3234, %3222
  %3236 = fdiv fast float %3232, %2633
  %3237 = fdiv fast float %3235, %3212
  %3238 = fmul fast float %2873, 4.375000e-01
  %3239 = fadd fast float %3238, 3.125000e-02
  %3240 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %3236, float %3237, float %3239, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3241 = extractvalue %dx.types.ResRet.f32 %3240, 0
  %3242 = extractvalue %dx.types.ResRet.f32 %3240, 1
  %3243 = extractvalue %dx.types.ResRet.f32 %3240, 2
  %3244 = fadd fast float %3241, %3185
  %3245 = fadd fast float %3242, %3186
  %3246 = fadd fast float %3243, %3187
  br label %3247

; <label>:3247                                    ; preds = %3211, %3196
  %3248 = phi float [ %3246, %3211 ], [ %3187, %3196 ]
  %3249 = phi float [ %3245, %3211 ], [ %3186, %3196 ]
  %3250 = phi float [ %3244, %3211 ], [ %3185, %3196 ]
  %3251 = icmp eq i32 %3209, 65535
  br i1 %3251, label %3336, label %3252

; <label>:3252                                    ; preds = %3247
  %3253 = extractvalue %dx.types.CBufRet.f32 %2632, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3197, 0
  %3255 = extractvalue %dx.types.CBufRet.f32 %3197, 1
  %3256 = fmul fast float %3254, %2845
  %3257 = fmul fast float %3255, %2846
  %3258 = fmul fast float %3256, 1.250000e-01
  %3259 = fmul fast float %3257, 1.250000e-01
  %3260 = call float @dx.op.unary.f32(i32 27, float %3258)  ; Round_ni(value)
  %3261 = call float @dx.op.unary.f32(i32 27, float %3259)  ; Round_ni(value)
  %3262 = fmul fast float %3260, 8.000000e+00
  %3263 = fmul fast float %3261, 8.000000e+00
  %3264 = fsub fast float %3256, %3262
  %3265 = fsub fast float %3257, %3263
  %3266 = fadd fast float %3264, 5.000000e-01
  %3267 = fadd fast float %3265, 5.000000e-01
  %3268 = and i32 %3209, 255
  %3269 = lshr i32 %3207, 24
  %3270 = mul nuw nsw i32 %3268, 9
  %3271 = uitofp i32 %3270 to float
  %3272 = mul nuw nsw i32 %3269, 9
  %3273 = uitofp i32 %3272 to float
  %3274 = fadd fast float %3266, %3271
  %3275 = fadd fast float %3267, %3273
  %3276 = fdiv fast float %3274, %2633
  %3277 = fdiv fast float %3275, %3253
  %3278 = fmul fast float %2873, 4.375000e-01
  %3279 = fadd fast float %3278, 3.125000e-02
  %3280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %3276, float %3277, float %3279, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3281 = extractvalue %dx.types.ResRet.f32 %3280, 0
  %3282 = extractvalue %dx.types.ResRet.f32 %3280, 1
  %3283 = extractvalue %dx.types.ResRet.f32 %3280, 2
  %3284 = fadd fast float %3278, 5.312500e-01
  %3285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %40, %dx.types.Handle %63, float %3276, float %3277, float %3284, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3286 = extractvalue %dx.types.ResRet.f32 %3285, 0
  %3287 = extractvalue %dx.types.ResRet.f32 %3285, 1
  %3288 = extractvalue %dx.types.ResRet.f32 %3285, 2
  %3289 = fmul fast float %3286, 2.000000e+00
  %3290 = fmul fast float %3287, 2.000000e+00
  %3291 = fmul fast float %3288, 2.000000e+00
  %3292 = fadd fast float %3289, -1.000000e+00
  %3293 = fadd fast float %3290, -1.000000e+00
  %3294 = fadd fast float %3291, -1.000000e+00
  %3295 = fmul fast float %3292, %3292
  %3296 = fmul fast float %3293, %3293
  %3297 = fadd fast float %3295, %3296
  %3298 = fmul fast float %3294, %3294
  %3299 = fadd fast float %3297, %3298
  %3300 = call float @dx.op.unary.f32(i32 24, float %3299)  ; Sqrt(value)
  %3301 = fcmp fast ogt float %3300, 0.000000e+00
  br i1 %3301, label %3302, label %3306

; <label>:3302                                    ; preds = %3252
  %3303 = fdiv fast float %3292, %3300
  %3304 = fdiv fast float %3293, %3300
  %3305 = fdiv fast float %3294, %3300
  br label %3306

; <label>:3306                                    ; preds = %3302, %3252
  %3307 = phi float [ %3303, %3302 ], [ 0.000000e+00, %3252 ]
  %3308 = phi float [ %3304, %3302 ], [ 0.000000e+00, %3252 ]
  %3309 = phi float [ %3305, %3302 ], [ 0.000000e+00, %3252 ]
  %3310 = fmul fast float %155, %155
  %3311 = fmul fast float %156, %156
  %3312 = fadd fast float %3310, %3311
  %3313 = call float @dx.op.unary.f32(i32 24, float %3312)  ; Sqrt(value)
  %3314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3315 = extractvalue %dx.types.CBufRet.f32 %3314, 0
  %3316 = extractvalue %dx.types.CBufRet.f32 %3314, 1
  %3317 = fsub fast float %3313, %3315
  %3318 = fdiv fast float %3317, %3316
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  %3320 = fmul fast float %3319, 2.000000e+00
  %3321 = fsub fast float 3.000000e+00, %3320
  %3322 = fmul fast float %3319, %3319
  %3323 = fmul fast float %3322, %3321
  %3324 = call float @dx.op.dot3.f32(i32 55, float %3307, float %3308, float %3309, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %3325 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3324)  ; FMax(a,b)
  %3326 = fmul fast float %3325, 0x400C5BF8A0000000
  %3327 = fmul fast float %3323, %3281
  %3328 = fmul fast float %3327, %3326
  %3329 = fadd fast float %3328, %3250
  %3330 = fmul fast float %3323, %3282
  %3331 = fmul fast float %3330, %3326
  %3332 = fadd fast float %3331, %3249
  %3333 = fmul fast float %3323, %3283
  %3334 = fmul fast float %3333, %3326
  %3335 = fadd fast float %3334, %3248
  br label %3336

; <label>:3336                                    ; preds = %3306, %3247, %3175
  %3337 = phi float [ %3335, %3306 ], [ %3248, %3247 ], [ %3187, %3175 ]
  %3338 = phi float [ %3332, %3306 ], [ %3249, %3247 ], [ %3186, %3175 ]
  %3339 = phi float [ %3329, %3306 ], [ %3250, %3247 ], [ %3185, %3175 ]
  %3340 = fcmp fast ogt float %2832, %2869
  %3341 = and i1 %3188, %3340
  %3342 = and i1 %3190, %3341
  %3343 = and i1 %3192, %3342
  %3344 = and i1 %3194, %3343
  br i1 %3344, label %3345, label %3402, !dx.controlflow.hints !131

; <label>:3345                                    ; preds = %3336
  %3346 = fmul fast float %2871, 0x3FC24924A0000000
  %3347 = fsub fast float %2832, %2869
  %3348 = fdiv fast float %3347, %3346
  %3349 = call float @dx.op.unary.f32(i32 7, float %3348)  ; Saturate(value)
  %3350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3351 = extractvalue %dx.types.CBufRet.f32 %3350, 0
  %3352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3353 = extractvalue %dx.types.CBufRet.f32 %3352, 0
  %3354 = extractvalue %dx.types.CBufRet.f32 %3352, 1
  %3355 = extractvalue %dx.types.CBufRet.f32 %3352, 2
  %3356 = fsub fast float %3351, %3339
  %3357 = fsub fast float %3353, %3182
  %3358 = fsub fast float %3354, %3183
  %3359 = fsub fast float %3355, %3184
  %3360 = fmul fast float %3356, %3349
  %3361 = fmul fast float %3357, %3349
  %3362 = fmul fast float %3358, %3349
  %3363 = fmul fast float %3359, %3349
  %3364 = fadd fast float %3360, %3339
  %3365 = fadd fast float %3361, %3182
  %3366 = fadd fast float %3362, %3183
  %3367 = fadd fast float %3363, %3184
  %3368 = extractvalue %dx.types.CBufRet.f32 %3350, 1
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.CBufRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.CBufRet.f32 %3369, 2
  %3373 = fsub fast float %3368, %3338
  %3374 = fsub fast float %3370, %3179
  %3375 = fsub fast float %3371, %3180
  %3376 = fsub fast float %3372, %3181
  %3377 = fmul fast float %3373, %3349
  %3378 = fmul fast float %3374, %3349
  %3379 = fmul fast float %3375, %3349
  %3380 = fmul fast float %3376, %3349
  %3381 = fadd fast float %3377, %3338
  %3382 = fadd fast float %3378, %3179
  %3383 = fadd fast float %3379, %3180
  %3384 = fadd fast float %3380, %3181
  %3385 = extractvalue %dx.types.CBufRet.f32 %3350, 2
  %3386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3387 = extractvalue %dx.types.CBufRet.f32 %3386, 0
  %3388 = extractvalue %dx.types.CBufRet.f32 %3386, 1
  %3389 = extractvalue %dx.types.CBufRet.f32 %3386, 2
  %3390 = fsub fast float %3385, %3337
  %3391 = fsub fast float %3387, %3176
  %3392 = fsub fast float %3388, %3177
  %3393 = fsub fast float %3389, %3178
  %3394 = fmul fast float %3390, %3349
  %3395 = fmul fast float %3391, %3349
  %3396 = fmul fast float %3392, %3349
  %3397 = fmul fast float %3393, %3349
  %3398 = fadd fast float %3394, %3337
  %3399 = fadd fast float %3395, %3176
  %3400 = fadd fast float %3396, %3177
  %3401 = fadd fast float %3397, %3178
  br label %3402

; <label>:3402                                    ; preds = %3345, %3336
  %3403 = phi float [ %3398, %3345 ], [ %3337, %3336 ]
  %3404 = phi float [ %3399, %3345 ], [ %3176, %3336 ]
  %3405 = phi float [ %3400, %3345 ], [ %3177, %3336 ]
  %3406 = phi float [ %3401, %3345 ], [ %3178, %3336 ]
  %3407 = phi float [ %3381, %3345 ], [ %3338, %3336 ]
  %3408 = phi float [ %3382, %3345 ], [ %3179, %3336 ]
  %3409 = phi float [ %3383, %3345 ], [ %3180, %3336 ]
  %3410 = phi float [ %3384, %3345 ], [ %3181, %3336 ]
  %3411 = phi float [ %3364, %3345 ], [ %3339, %3336 ]
  %3412 = phi float [ %3365, %3345 ], [ %3182, %3336 ]
  %3413 = phi float [ %3366, %3345 ], [ %3183, %3336 ]
  %3414 = phi float [ %3367, %3345 ], [ %3184, %3336 ]
  %3415 = extractvalue %dx.types.CBufRet.f32 %2994, 3
  %3416 = fmul fast float %3415, %3411
  %3417 = fmul fast float %3415, %3407
  %3418 = fmul fast float %3415, %3403
  %3419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3420 = extractvalue %dx.types.CBufRet.f32 %3419, 3
  %3421 = fmul fast float %3416, %3420
  %3422 = fmul fast float %3417, %3420
  %3423 = fmul fast float %3418, %3420
  %3424 = call float @dx.op.dot3.f32(i32 55, float %3421, float %3422, float %3423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3425 = fmul fast float %3424, 0x3FD20DD760000000
  %3426 = fmul fast float %3412, 1.500000e+00
  %3427 = fmul fast float %3426, %3415
  %3428 = fmul fast float %3427, %3420
  %3429 = fmul fast float %3413, 1.500000e+00
  %3430 = fmul fast float %3429, %3415
  %3431 = fmul fast float %3430, %3420
  %3432 = fmul fast float %3414, 1.500000e+00
  %3433 = fmul fast float %3432, %3415
  %3434 = fmul fast float %3433, %3420
  %3435 = fmul fast float %3408, 1.500000e+00
  %3436 = fmul fast float %3435, %3415
  %3437 = fmul fast float %3436, %3420
  %3438 = fmul fast float %3409, 1.500000e+00
  %3439 = fmul fast float %3438, %3415
  %3440 = fmul fast float %3439, %3420
  %3441 = fmul fast float %3410, 1.500000e+00
  %3442 = fmul fast float %3441, %3415
  %3443 = fmul fast float %3442, %3420
  %3444 = fmul fast float %3404, 1.500000e+00
  %3445 = fmul fast float %3444, %3415
  %3446 = fmul fast float %3445, %3420
  %3447 = fmul fast float %3405, 1.500000e+00
  %3448 = fmul fast float %3447, %3415
  %3449 = fmul fast float %3448, %3420
  %3450 = fmul fast float %3406, 1.500000e+00
  %3451 = fmul fast float %3450, %3415
  %3452 = fmul fast float %3451, %3420
  %3453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3421)  ; FMax(a,b)
  %3454 = call float @dx.op.dot3.f32(i32 55, float %3428, float %3431, float %3434, float %3428, float %3431, float %3434)  ; Dot3(ax,ay,az,bx,by,bz)
  %3455 = fcmp fast oeq float %3454, 0.000000e+00
  %3456 = fcmp fast oeq float %3453, 0.000000e+00
  %3457 = or i1 %3456, %3455
  br i1 %3457, label %3487, label %3458

; <label>:3458                                    ; preds = %3402
  %3459 = fsub fast float -0.000000e+00, %3434
  %3460 = fsub fast float -0.000000e+00, %3428
  %3461 = call float @dx.op.unary.f32(i32 24, float %3454)  ; Sqrt(value)
  %3462 = fdiv fast float %3461, %3453
  %3463 = fcmp fast ogt float %3462, 0x3FFB6F8900000000
  %3464 = select i1 %3463, float 0x3FFB6F8900000000, float %3462
  %3465 = fmul fast float %3464, 0x3FE8A23460000000
  %3466 = call float @dx.op.unary.f32(i32 7, float %3465)  ; Saturate(value)
  %3467 = call float @dx.op.binary.f32(i32 35, float %3464, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3468 = fmul fast float %3466, %3453
  %3469 = fmul fast float %3467, 0x3FF279A740000000
  %3470 = fadd fast float %3469, -1.000000e+00
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3431, float %3459, float %3460, float %3431)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.unary.f32(i32 25, float %3471)  ; Rsqrt(value)
  %3473 = fmul fast float %3472, %3459
  %3474 = fmul fast float %3472, %3460
  %3475 = fmul fast float %3472, %3431
  %3476 = fmul fast float %3470, %3470
  %3477 = fsub fast float 1.000000e+00, %3476
  %3478 = fmul fast float %3467, 0x40005F8BE0000000
  %3479 = fsub fast float 0x400C5BF8A0000000, %3478
  %3480 = fdiv fast float %3468, %3479
  %3481 = fmul fast float %3480, 0x3FEE31C3C0000000
  %3482 = fmul fast float %3481, %3477
  %3483 = fmul fast float %3467, 0x3FDACB7480000000
  %3484 = fadd fast float %3483, 0xBFD7347680000000
  %3485 = fmul fast float %3484, %3480
  %3486 = fmul fast float %3485, %3477
  br label %3487

; <label>:3487                                    ; preds = %3458, %3402
  %3488 = phi float [ %3473, %3458 ], [ 0.000000e+00, %3402 ]
  %3489 = phi float [ %3474, %3458 ], [ 0.000000e+00, %3402 ]
  %3490 = phi float [ %3475, %3458 ], [ 0.000000e+00, %3402 ]
  %3491 = phi float [ %3482, %3458 ], [ 0.000000e+00, %3402 ]
  %3492 = phi float [ %3486, %3458 ], [ 0.000000e+00, %3402 ]
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3490, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = fmul fast float %3493, %3493
  %3495 = fmul fast float %3494, 0x3FEE471020000000
  %3496 = fadd fast float %3495, 0xBFD42F6020000000
  %3497 = fmul fast float %3453, 0x3FD20DD760000000
  %3498 = fmul fast float %3496, %3492
  %3499 = fmul fast float %3491, 0x3FDF454380000000
  %3500 = fmul fast float %3499, %3493
  %3501 = fadd fast float %3500, %3497
  %3502 = fadd fast float %3501, %3498
  %3503 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3422)  ; FMax(a,b)
  %3504 = call float @dx.op.dot3.f32(i32 55, float %3437, float %3440, float %3443, float %3437, float %3440, float %3443)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = fcmp fast oeq float %3504, 0.000000e+00
  %3506 = fcmp fast oeq float %3503, 0.000000e+00
  %3507 = or i1 %3506, %3505
  br i1 %3507, label %3537, label %3508

; <label>:3508                                    ; preds = %3487
  %3509 = fsub fast float -0.000000e+00, %3443
  %3510 = fsub fast float -0.000000e+00, %3437
  %3511 = call float @dx.op.unary.f32(i32 24, float %3504)  ; Sqrt(value)
  %3512 = fdiv fast float %3511, %3503
  %3513 = fcmp fast ogt float %3512, 0x3FFB6F8900000000
  %3514 = select i1 %3513, float 0x3FFB6F8900000000, float %3512
  %3515 = fmul fast float %3514, 0x3FE8A23460000000
  %3516 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3517 = call float @dx.op.binary.f32(i32 35, float %3514, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3518 = fmul fast float %3516, %3503
  %3519 = fmul fast float %3517, 0x3FF279A740000000
  %3520 = fadd fast float %3519, -1.000000e+00
  %3521 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3510, float %3440, float %3509, float %3510, float %3440)  ; Dot3(ax,ay,az,bx,by,bz)
  %3522 = call float @dx.op.unary.f32(i32 25, float %3521)  ; Rsqrt(value)
  %3523 = fmul fast float %3522, %3509
  %3524 = fmul fast float %3522, %3510
  %3525 = fmul fast float %3522, %3440
  %3526 = fmul fast float %3520, %3520
  %3527 = fsub fast float 1.000000e+00, %3526
  %3528 = fmul fast float %3517, 0x40005F8BE0000000
  %3529 = fsub fast float 0x400C5BF8A0000000, %3528
  %3530 = fdiv fast float %3518, %3529
  %3531 = fmul fast float %3530, 0x3FEE31C3C0000000
  %3532 = fmul fast float %3531, %3527
  %3533 = fmul fast float %3517, 0x3FDACB7480000000
  %3534 = fadd fast float %3533, 0xBFD7347680000000
  %3535 = fmul fast float %3534, %3530
  %3536 = fmul fast float %3535, %3527
  br label %3537

; <label>:3537                                    ; preds = %3508, %3487
  %3538 = phi float [ %3523, %3508 ], [ 0.000000e+00, %3487 ]
  %3539 = phi float [ %3524, %3508 ], [ 0.000000e+00, %3487 ]
  %3540 = phi float [ %3525, %3508 ], [ 0.000000e+00, %3487 ]
  %3541 = phi float [ %3532, %3508 ], [ 0.000000e+00, %3487 ]
  %3542 = phi float [ %3536, %3508 ], [ 0.000000e+00, %3487 ]
  %3543 = call float @dx.op.dot3.f32(i32 55, float %3538, float %3539, float %3540, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %3544 = fmul fast float %3543, %3543
  %3545 = fmul fast float %3544, 0x3FEE471020000000
  %3546 = fadd fast float %3545, 0xBFD42F6020000000
  %3547 = fmul fast float %3503, 0x3FD20DD760000000
  %3548 = fmul fast float %3546, %3542
  %3549 = fmul fast float %3541, 0x3FDF454380000000
  %3550 = fmul fast float %3549, %3543
  %3551 = fadd fast float %3550, %3547
  %3552 = fadd fast float %3551, %3548
  %3553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3423)  ; FMax(a,b)
  %3554 = call float @dx.op.dot3.f32(i32 55, float %3446, float %3449, float %3452, float %3446, float %3449, float %3452)  ; Dot3(ax,ay,az,bx,by,bz)
  %3555 = fcmp fast oeq float %3554, 0.000000e+00
  %3556 = fcmp fast oeq float %3553, 0.000000e+00
  %3557 = or i1 %3556, %3555
  br i1 %3557, label %3587, label %3558

; <label>:3558                                    ; preds = %3537
  %3559 = fsub fast float -0.000000e+00, %3452
  %3560 = fsub fast float -0.000000e+00, %3446
  %3561 = call float @dx.op.unary.f32(i32 24, float %3554)  ; Sqrt(value)
  %3562 = fdiv fast float %3561, %3553
  %3563 = fcmp fast ogt float %3562, 0x3FFB6F8900000000
  %3564 = select i1 %3563, float 0x3FFB6F8900000000, float %3562
  %3565 = fmul fast float %3564, 0x3FE8A23460000000
  %3566 = call float @dx.op.unary.f32(i32 7, float %3565)  ; Saturate(value)
  %3567 = call float @dx.op.binary.f32(i32 35, float %3564, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3568 = fmul fast float %3566, %3553
  %3569 = fmul fast float %3567, 0x3FF279A740000000
  %3570 = fadd fast float %3569, -1.000000e+00
  %3571 = call float @dx.op.dot3.f32(i32 55, float %3559, float %3560, float %3449, float %3559, float %3560, float %3449)  ; Dot3(ax,ay,az,bx,by,bz)
  %3572 = call float @dx.op.unary.f32(i32 25, float %3571)  ; Rsqrt(value)
  %3573 = fmul fast float %3572, %3559
  %3574 = fmul fast float %3572, %3560
  %3575 = fmul fast float %3572, %3449
  %3576 = fmul fast float %3570, %3570
  %3577 = fsub fast float 1.000000e+00, %3576
  %3578 = fmul fast float %3567, 0x40005F8BE0000000
  %3579 = fsub fast float 0x400C5BF8A0000000, %3578
  %3580 = fdiv fast float %3568, %3579
  %3581 = fmul fast float %3580, 0x3FEE31C3C0000000
  %3582 = fmul fast float %3581, %3577
  %3583 = fmul fast float %3567, 0x3FDACB7480000000
  %3584 = fadd fast float %3583, 0xBFD7347680000000
  %3585 = fmul fast float %3584, %3580
  %3586 = fmul fast float %3585, %3577
  br label %3587

; <label>:3587                                    ; preds = %3558, %3537
  %3588 = phi float [ %3573, %3558 ], [ 0.000000e+00, %3537 ]
  %3589 = phi float [ %3574, %3558 ], [ 0.000000e+00, %3537 ]
  %3590 = phi float [ %3575, %3558 ], [ 0.000000e+00, %3537 ]
  %3591 = phi float [ %3582, %3558 ], [ 0.000000e+00, %3537 ]
  %3592 = phi float [ %3586, %3558 ], [ 0.000000e+00, %3537 ]
  %3593 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3590, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %3594 = fmul fast float %3593, %3593
  %3595 = fmul fast float %3594, 0x3FEE471020000000
  %3596 = fadd fast float %3595, 0xBFD42F6020000000
  %3597 = fmul fast float %3553, 0x3FD20DD760000000
  %3598 = fmul fast float %3596, %3592
  %3599 = fmul fast float %3591, 0x3FDF454380000000
  %3600 = fmul fast float %3599, %3593
  %3601 = fadd fast float %3600, %3597
  %3602 = fadd fast float %3601, %3598
  %3603 = call float @dx.op.binary.f32(i32 35, float %3502, float 0.000000e+00)  ; FMax(a,b)
  %3604 = call float @dx.op.binary.f32(i32 35, float %3552, float 0.000000e+00)  ; FMax(a,b)
  %3605 = call float @dx.op.binary.f32(i32 35, float %3602, float 0.000000e+00)  ; FMax(a,b)
  %3606 = fsub fast float %2822, %3603
  %3607 = fsub fast float %2823, %3604
  %3608 = fsub fast float %2824, %3605
  %3609 = fmul fast float %3606, %2631
  %3610 = fmul fast float %3607, %2631
  %3611 = fmul fast float %3608, %2631
  %3612 = fadd fast float %3609, %3603
  %3613 = fadd fast float %3610, %3604
  %3614 = fadd fast float %3611, %3605
  %3615 = fmul fast float %3425, %2631
  %3616 = fsub fast float %3425, %3615
  br label %3617

; <label>:3617                                    ; preds = %3587, %2821
  %3618 = phi float [ %3616, %3587 ], [ 0.000000e+00, %2821 ]
  %3619 = phi float [ %3612, %3587 ], [ %2822, %2821 ]
  %3620 = phi float [ %3613, %3587 ], [ %2823, %2821 ]
  %3621 = phi float [ %3614, %3587 ], [ %2824, %2821 ]
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3624 = call float @dx.op.binary.f32(i32 36, float %2425, float %3623)  ; FMin(a,b)
  %3625 = fmul fast float %3624, %2610
  %3626 = fsub fast float 1.000000e+00, %3625
  %3627 = bitcast float %3626 to i32
  %3628 = sub nsw i32 2129859010, %3627
  %3629 = bitcast i32 %3628 to float
  %3630 = call float @dx.op.binary.f32(i32 36, float %2426, float %3623)  ; FMin(a,b)
  %3631 = fmul fast float %3630, %2610
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = bitcast float %3632 to i32
  %3634 = sub nsw i32 2129859010, %3633
  %3635 = bitcast i32 %3634 to float
  %3636 = call float @dx.op.binary.f32(i32 36, float %2427, float %3623)  ; FMin(a,b)
  %3637 = fmul fast float %3636, %2610
  %3638 = fsub fast float 1.000000e+00, %3637
  %3639 = bitcast float %3638 to i32
  %3640 = sub nsw i32 2129859010, %3639
  %3641 = bitcast i32 %3640 to float
  %3642 = fmul fast float %3619, %2609
  %3643 = fmul fast float %3642, %3629
  %3644 = fmul fast float %3620, %2609
  %3645 = fmul fast float %3644, %3635
  %3646 = fmul fast float %3621, %2609
  %3647 = fmul fast float %3646, %3641
  %3648 = extractvalue %dx.types.CBufRet.i32 %2628, 2
  %3649 = and i32 %3648, 1
  %3650 = icmp ne i32 %3649, 0
  %3651 = fsub fast float 1.000000e+00, %2631
  %3652 = select i1 %3650, float %2631, float %3643
  %3653 = select i1 %3650, float %3651, float %3645
  %3654 = select i1 %3650, float 0.000000e+00, float %3647
  %3655 = call float @dx.op.dot3.f32(i32 55, float %3652, float %3653, float %3654, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3656 = select i1 %2584, float 0.000000e+00, float %3652
  %3657 = select i1 %2584, float %3655, float %3653
  %3658 = select i1 %2584, float 0.000000e+00, float %3654
  %3659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %3660 = extractvalue %dx.types.CBufRet.f32 %3659, 0
  %3661 = bitcast float %3660 to i32
  %3662 = lshr i32 %3661, 8
  %3663 = and i32 %3662, 255
  %3664 = uitofp i32 %3663 to float
  %3665 = fptoui float %3664 to i32
  %3666 = icmp eq i32 %3665, 23
  br i1 %3666, label %3667, label %3690

; <label>:3667                                    ; preds = %3617
  %3668 = fmul fast float %3641, %2609
  %3669 = fmul fast float %3635, %2609
  %3670 = fmul fast float %3629, %2609
  %3671 = fadd fast float %3670, 1.000000e+00
  %3672 = fadd fast float %3669, 1.000000e+00
  %3673 = fadd fast float %3668, 1.000000e+00
  %3674 = fmul fast float %3671, 5.000000e-01
  %3675 = fmul fast float %3672, 5.000000e-01
  %3676 = fmul fast float %3673, 5.000000e-01
  %3677 = call float @dx.op.unary.f32(i32 7, float %3674)  ; Saturate(value)
  %3678 = call float @dx.op.unary.f32(i32 7, float %3675)  ; Saturate(value)
  %3679 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3680 = fmul fast float %3677, 1.023000e+03
  %3681 = fmul fast float %3678, 1.023000e+03
  %3682 = fmul fast float %3679, 1.023000e+03
  %3683 = fptoui float %3680 to i32
  %3684 = fptoui float %3681 to i32
  %3685 = fptoui float %3682 to i32
  %3686 = shl i32 %3684, 10
  %3687 = or i32 %3686, %3683
  %3688 = shl i32 %3685, 20
  %3689 = or i32 %3687, %3688
  br label %3690

; <label>:3690                                    ; preds = %3667, %3617
  %3691 = phi i32 [ %3689, %3667 ], [ 0, %3617 ]
  %3692 = fsub fast float 1.000000e+00, %2589
  %3693 = fmul fast float %3692, %2473
  %3694 = fadd fast float %3693, %2589
  %3695 = call float @dx.op.binary.f32(i32 35, float %2500, float %3694)  ; FMax(a,b)
  %3696 = call float @dx.op.binary.f32(i32 35, float %2499, float %3695)  ; FMax(a,b)
  %3697 = fsub fast float 1.000000e+00, %3696
  %3698 = extractvalue %dx.types.CBufRet.f32 %2599, 2
  %3699 = fcmp fast olt float %3698, 0.000000e+00
  br i1 %3699, label %3700, label %4411

; <label>:3700                                    ; preds = %3690
  %3701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3701, 2
  %3703 = extractvalue %dx.types.CBufRet.f32 %3701, 3
  %3704 = fmul fast float %3702, %100
  %3705 = fmul fast float %3703, %101
  %3706 = fptoui float %3704 to i32
  %3707 = fptoui float %3705 to i32
  %3708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3709 = extractvalue %dx.types.CBufRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.CBufRet.f32 %3708, 2
  %3711 = extractvalue %dx.types.CBufRet.f32 %3708, 3
  %3712 = fadd fast float %89, -4.000000e+00
  %3713 = call float @dx.op.binary.f32(i32 35, float %3712, float 0.000000e+00)  ; FMax(a,b)
  %3714 = fadd fast float %3713, %3709
  %3715 = fmul fast float %3714, %3710
  %3716 = call float @dx.op.unary.f32(i32 23, float %3715)  ; Log(value)
  %3717 = fmul fast float %3716, %3711
  %3718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3719 = extractvalue %dx.types.CBufRet.f32 %3718, 2
  %3720 = fmul fast float %3717, %3719
  %3721 = call float @dx.op.unary.f32(i32 7, float %3720)  ; Saturate(value)
  %3722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3723 = extractvalue %dx.types.CBufRet.i32 %3722, 1
  %3724 = add i32 %3723, -1
  %3725 = uitofp i32 %3723 to float
  %3726 = fmul fast float %3725, %3721
  %3727 = fptoui float %3726 to i32
  %3728 = call i32 @dx.op.binary.i32(i32 40, i32 %3727, i32 %3724)  ; UMin(a,b)
  %3729 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.i32 %3729, 2
  %3731 = extractvalue %dx.types.CBufRet.i32 %3729, 3
  %3732 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3707, i32 %3730, i32 %3706)  ; UMad(a,b,c)
  %3733 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3728, i32 %3731, i32 %3732)  ; UMad(a,b,c)
  %3734 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %3735 = fptoui float %3734 to i32
  %3736 = lshr i32 %3735, 5
  %3737 = call i32 @dx.op.binary.i32(i32 40, i32 %3736, i32 8191)  ; UMin(a,b)
  %3738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.i32 %3738, 2
  %3740 = add nsw i32 %3739, -1
  %3741 = call i32 @dx.op.binary.i32(i32 37, i32 %3740, i32 0)  ; IMax(a,b)
  %3742 = shl i32 %3737, 2
  %3743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.i32 %3743, 0
  %3745 = lshr i32 %3744, 16
  %3746 = and i32 %3744, 65535
  %3747 = lshr i32 %3744, 21
  %3748 = lshr i32 %3746, 5
  %3749 = call i32 @dx.op.binary.i32(i32 40, i32 %3748, i32 %3741)  ; UMin(a,b)
  %3750 = icmp ugt i32 %3747, %3749
  br i1 %3750, label %4336, label %3751

; <label>:3751                                    ; preds = %3700
  br label %3752

; <label>:3752                                    ; preds = %4318, %3751
  %3753 = phi i32 [ %4319, %4318 ], [ %2387, %3751 ]
  %3754 = phi i32 [ %4320, %4318 ], [ %3691, %3751 ]
  %3755 = phi float [ %4321, %4318 ], [ 0.000000e+00, %3751 ]
  %3756 = phi float [ %4322, %4318 ], [ 0.000000e+00, %3751 ]
  %3757 = phi float [ %4323, %4318 ], [ 0.000000e+00, %3751 ]
  %3758 = phi float [ %4324, %4318 ], [ 0.000000e+00, %3751 ]
  %3759 = phi float [ %4325, %4318 ], [ 0.000000e+00, %3751 ]
  %3760 = phi float [ %4326, %4318 ], [ 0.000000e+00, %3751 ]
  %3761 = phi i32 [ %4327, %4318 ], [ 0, %3751 ]
  %3762 = phi float [ %4328, %4318 ], [ 0.000000e+00, %3751 ]
  %3763 = phi float [ %4329, %4318 ], [ 0.000000e+00, %3751 ]
  %3764 = phi float [ %4330, %4318 ], [ 0.000000e+00, %3751 ]
  %3765 = phi i32 [ %4331, %4318 ], [ 1, %3751 ]
  %3766 = phi float [ %4332, %4318 ], [ 1.000000e+00, %3751 ]
  %3767 = phi i32 [ %4333, %4318 ], [ %3747, %3751 ]
  %3768 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.i32 %3768, 2
  %3770 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3733, i32 %3769, i32 %3767)  ; UMad(a,b,c)
  %3771 = shl i32 %3770, 2
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = shl i32 %3767, 5
  %3775 = sub nsw i32 %3745, %3774
  %3776 = call i32 @dx.op.binary.i32(i32 37, i32 %3775, i32 0)  ; IMax(a,b)
  %3777 = call i32 @dx.op.binary.i32(i32 38, i32 %3776, i32 31)  ; IMin(a,b)
  %3778 = sub nsw i32 1, %3745
  %3779 = add nsw i32 %3778, %3746
  %3780 = call i32 @dx.op.binary.i32(i32 37, i32 %3779, i32 0)  ; IMax(a,b)
  %3781 = call i32 @dx.op.binary.i32(i32 38, i32 %3780, i32 32)  ; IMin(a,b)
  %3782 = and i32 %3781, 31
  %3783 = shl i32 -1, %3782
  %3784 = xor i32 %3783, -1
  %3785 = and i32 %3777, 31
  %3786 = shl i32 %3784, %3785
  %3787 = icmp eq i32 %3781, 32
  %3788 = select i1 %3787, i32 -1, i32 %3786
  %3789 = and i32 %3788, %3773
  %3790 = icmp eq i32 %3789, 0
  br i1 %3790, label %4318, label %3791

; <label>:3791                                    ; preds = %3752
  br label %3792

; <label>:3792                                    ; preds = %3929, %3791
  %3793 = phi i32 [ %3930, %3929 ], [ %3753, %3791 ]
  %3794 = phi i32 [ %3931, %3929 ], [ %3754, %3791 ]
  %3795 = phi float [ %3932, %3929 ], [ %3755, %3791 ]
  %3796 = phi float [ %3933, %3929 ], [ %3756, %3791 ]
  %3797 = phi float [ %3934, %3929 ], [ %3757, %3791 ]
  %3798 = phi float [ %3935, %3929 ], [ %3758, %3791 ]
  %3799 = phi float [ %3936, %3929 ], [ %3759, %3791 ]
  %3800 = phi float [ %3937, %3929 ], [ %3760, %3791 ]
  %3801 = phi i32 [ %3938, %3929 ], [ %3761, %3791 ]
  %3802 = phi float [ %3939, %3929 ], [ %3762, %3791 ]
  %3803 = phi float [ %3940, %3929 ], [ %3763, %3791 ]
  %3804 = phi float [ %3941, %3929 ], [ %3764, %3791 ]
  %3805 = phi i32 [ %3942, %3929 ], [ %3765, %3791 ]
  %3806 = phi float [ %3943, %3929 ], [ %3766, %3791 ]
  %3807 = phi i32 [ %3812, %3929 ], [ %3789, %3791 ]
  %3808 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3807)  ; FirstbitLo(value)
  %3809 = add i32 %3808, %3774
  %3810 = and i32 %3808, 31
  %3811 = shl i32 1, %3810
  %3812 = xor i32 %3811, %3807
  %3813 = mul i32 %3809, 72
  %3814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = extractvalue %dx.types.ResRet.f32 %3814, 1
  %3817 = extractvalue %dx.types.ResRet.f32 %3814, 2
  %3818 = add i32 %3813, 12
  %3819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.i32 %3819, 0
  %3821 = add i32 %3813, 16
  %3822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3823 = extractvalue %dx.types.ResRet.f32 %3822, 0
  %3824 = extractvalue %dx.types.ResRet.f32 %3822, 1
  %3825 = extractvalue %dx.types.ResRet.f32 %3822, 2
  %3826 = add i32 %3813, 28
  %3827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3826, i32 undef)  ; BufferLoad(srv,index,wot)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = add i32 %3813, 32
  %3830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.f32 %3830, 0
  %3832 = extractvalue %dx.types.ResRet.f32 %3830, 1
  %3833 = extractvalue %dx.types.ResRet.f32 %3830, 2
  %3834 = extractvalue %dx.types.ResRet.f32 %3830, 3
  %3835 = add i32 %3813, 48
  %3836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3835, i32 undef)  ; BufferLoad(srv,index,wot)
  %3837 = extractvalue %dx.types.ResRet.f32 %3836, 0
  %3838 = extractvalue %dx.types.ResRet.f32 %3836, 1
  %3839 = add i32 %3813, 56
  %3840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3839, i32 undef)  ; BufferLoad(srv,index,wot)
  %3841 = extractvalue %dx.types.ResRet.f32 %3840, 0
  %3842 = extractvalue %dx.types.ResRet.f32 %3840, 1
  %3843 = add i32 %3813, 64
  %3844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %3843, i32 undef)  ; BufferLoad(srv,index,wot)
  %3845 = extractvalue %dx.types.ResRet.f32 %3844, 0
  %3846 = extractvalue %dx.types.ResRet.f32 %3844, 1
  %3847 = mul i32 %3809, 60
  %3848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3847, i32 undef)  ; BufferLoad(srv,index,wot)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = extractvalue %dx.types.ResRet.f32 %3848, 1
  %3851 = extractvalue %dx.types.ResRet.f32 %3848, 2
  %3852 = add i32 %3847, 12
  %3853 = add i32 %3847, 48
  %3854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.f32 %3854, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3854, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3854, 2
  %3858 = and i32 %3820, 32767
  %3859 = bitcast float %3815 to i32
  %3860 = bitcast float %3816 to i32
  %3861 = and i32 %3820, 32768
  %3862 = icmp ne i32 %3861, 0
  %3863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3864 = extractvalue %dx.types.CBufRet.f32 %3863, 3
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.CBufRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.CBufRet.f32 %3865, 2
  %3869 = fsub fast float %3849, %3866
  %3870 = fsub fast float %3850, %3867
  %3871 = fsub fast float %3851, %3868
  %3872 = fsub fast float %155, %3869
  %3873 = fsub fast float %156, %3870
  %3874 = fsub fast float %157, %3871
  %3875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3852, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3876, float %3877, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = add i32 %3847, 24
  %3881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.f32 %3881, 0
  %3883 = extractvalue %dx.types.ResRet.f32 %3881, 1
  %3884 = extractvalue %dx.types.ResRet.f32 %3881, 2
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3882, float %3883, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = add i32 %3847, 36
  %3887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %3886, i32 undef)  ; BufferLoad(srv,index,wot)
  %3888 = extractvalue %dx.types.ResRet.f32 %3887, 0
  %3889 = extractvalue %dx.types.ResRet.f32 %3887, 1
  %3890 = extractvalue %dx.types.ResRet.f32 %3887, 2
  %3891 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3888, float %3889, float %3890)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = call float @dx.op.unary.f32(i32 6, float %3879)  ; FAbs(value)
  %3893 = call float @dx.op.unary.f32(i32 6, float %3885)  ; FAbs(value)
  %3894 = call float @dx.op.unary.f32(i32 6, float %3891)  ; FAbs(value)
  %3895 = fsub fast float %3855, %3892
  %3896 = fsub fast float %3856, %3893
  %3897 = fsub fast float %3857, %3894
  %3898 = fmul fast float %3895, %3823
  %3899 = fmul fast float %3896, %3824
  %3900 = fmul fast float %3897, %3825
  %3901 = call float @dx.op.binary.f32(i32 36, float %3899, float %3900)  ; FMin(a,b)
  %3902 = call float @dx.op.binary.f32(i32 36, float %3898, float %3901)  ; FMin(a,b)
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = call float @dx.op.binary.f32(i32 36, float %3806, float %3903)  ; FMin(a,b)
  %3905 = uitofp i1 %3862 to float
  %3906 = select i1 %117, float 1.000000e+00, float 2.000000e+00
  %3907 = fsub fast float %3906, %3905
  %3908 = fmul fast float %3904, %3907
  %3909 = lshr i32 %3793, 8
  %3910 = and i32 %3909, 255
  %3911 = uitofp i32 %3910 to float
  %3912 = fptoui float %3911 to i32
  %3913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %3914 = extractvalue %dx.types.CBufRet.f32 %3913, 1
  %3915 = bitcast float %3914 to i32
  %3916 = lshr i32 %3915, 24
  %3917 = uitofp i32 %3916 to float
  %3918 = fptoui float %3917 to i32
  %3919 = icmp ne i32 %3918, 1
  %3920 = zext i1 %3919 to i32
  %3921 = add i32 %3920, %3912
  %3922 = uitofp i32 %3921 to float
  %3923 = fptoui float %3922 to i32
  %3924 = shl i32 %3923, 8
  %3925 = and i32 %3924, 65280
  %3926 = and i32 %3793, -65281
  %3927 = or i32 %3925, %3926
  %3928 = fcmp fast ogt float %3908, 0.000000e+00
  br i1 %3928, label %3945, label %3929

; <label>:3929                                    ; preds = %4301, %4170, %3792
  %3930 = phi i32 [ %4248, %4170 ], [ %3927, %3792 ], [ %4248, %4301 ]
  %3931 = phi i32 [ %3794, %4170 ], [ %3794, %3792 ], [ %4316, %4301 ]
  %3932 = phi float [ %4234, %4170 ], [ %3795, %3792 ], [ %4234, %4301 ]
  %3933 = phi float [ %4235, %4170 ], [ %3796, %3792 ], [ %4235, %4301 ]
  %3934 = phi float [ %4236, %4170 ], [ %3797, %3792 ], [ %4236, %4301 ]
  %3935 = phi float [ %4295, %4170 ], [ %3798, %3792 ], [ %4295, %4301 ]
  %3936 = phi float [ %4296, %4170 ], [ %3799, %3792 ], [ %4296, %4301 ]
  %3937 = phi float [ %4297, %4170 ], [ %3800, %3792 ], [ %4297, %4301 ]
  %3938 = phi i32 [ %4299, %4170 ], [ %3801, %3792 ], [ %4299, %4301 ]
  %3939 = phi float [ %4252, %4170 ], [ %3802, %3792 ], [ %4252, %4301 ]
  %3940 = phi float [ %4253, %4170 ], [ %3803, %3792 ], [ %4253, %4301 ]
  %3941 = phi float [ %4254, %4170 ], [ %3804, %3792 ], [ %4254, %4301 ]
  %3942 = phi i32 [ 0, %4170 ], [ %3805, %3792 ], [ 0, %4301 ]
  %3943 = phi float [ %4237, %4170 ], [ %3806, %3792 ], [ %4237, %4301 ]
  %3944 = icmp eq i32 %3807, %3811
  br i1 %3944, label %4317, label %3792

; <label>:3945                                    ; preds = %3792
  %3946 = extractvalue %dx.types.CBufRet.f32 %3913, 0
  %3947 = bitcast float %3946 to i32
  %3948 = lshr i32 %3947, 8
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = fptoui float %3950 to i32
  %3952 = and i32 %3951, 2
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %3960, label %3954

; <label>:3954                                    ; preds = %3945
  %3955 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %3956 = call float @dx.op.unary.f32(i32 25, float %3955)  ; Rsqrt(value)
  %3957 = fmul fast float %3956, %155
  %3958 = fmul fast float %3956, %156
  %3959 = fmul fast float %3956, %157
  br label %3960

; <label>:3960                                    ; preds = %3954, %3945
  %3961 = phi float [ %3957, %3954 ], [ %2413, %3945 ]
  %3962 = phi float [ %3958, %3954 ], [ %2414, %3945 ]
  %3963 = phi float [ %3959, %3954 ], [ %2415, %3945 ]
  %3964 = icmp ne i32 %3859, -1
  %3965 = fcmp oeq float %3864, 0.000000e+00
  %3966 = and i1 %3965, %3964
  br i1 %3966, label %3967, label %4091

; <label>:3967                                    ; preds = %3960
  %3968 = fsub fast float -0.000000e+00, %3876
  %3969 = fsub fast float -0.000000e+00, %3877
  %3970 = fsub fast float -0.000000e+00, %3878
  %3971 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3963, float %3968, float %3969, float %3970)  ; Dot3(ax,ay,az,bx,by,bz)
  %3972 = fsub fast float -0.000000e+00, %3971
  %3973 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3968, float %3969, float %3970)  ; Dot3(ax,ay,az,bx,by,bz)
  %3974 = fadd fast float %3973, %3838
  %3975 = fadd fast float %3837, %3973
  %3976 = fsub fast float -0.000000e+00, %3975
  %3977 = fcmp ogt float %3971, -0.000000e+00
  %3978 = select i1 %3977, float %3976, float %3974
  %3979 = call float @dx.op.unary.f32(i32 6, float %3972)  ; FAbs(value)
  %3980 = fdiv fast float 1.000000e+00, %3979
  %3981 = fmul fast float %3978, %3980
  %3982 = call float @dx.op.binary.f32(i32 35, float %3981, float 0.000000e+00)  ; FMax(a,b)
  %3983 = fsub fast float -0.000000e+00, %3882
  %3984 = fsub fast float -0.000000e+00, %3883
  %3985 = fsub fast float -0.000000e+00, %3884
  %3986 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3963, float %3983, float %3984, float %3985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3987 = fsub fast float -0.000000e+00, %3986
  %3988 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3983, float %3984, float %3985)  ; Dot3(ax,ay,az,bx,by,bz)
  %3989 = fadd fast float %3988, %3842
  %3990 = fadd fast float %3841, %3988
  %3991 = fsub fast float -0.000000e+00, %3990
  %3992 = fcmp ogt float %3986, -0.000000e+00
  %3993 = select i1 %3992, float %3991, float %3989
  %3994 = call float @dx.op.unary.f32(i32 6, float %3987)  ; FAbs(value)
  %3995 = fdiv fast float 1.000000e+00, %3994
  %3996 = fmul fast float %3993, %3995
  %3997 = call float @dx.op.binary.f32(i32 35, float %3996, float 0.000000e+00)  ; FMax(a,b)
  %3998 = fsub fast float -0.000000e+00, %3888
  %3999 = fsub fast float -0.000000e+00, %3889
  %4000 = fsub fast float -0.000000e+00, %3890
  %4001 = call float @dx.op.dot3.f32(i32 55, float %3961, float %3962, float %3963, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4002 = fsub fast float -0.000000e+00, %4001
  %4003 = call float @dx.op.dot3.f32(i32 55, float %3872, float %3873, float %3874, float %3998, float %3999, float %4000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4004 = fadd fast float %4003, %3846
  %4005 = fadd fast float %3845, %4003
  %4006 = fsub fast float -0.000000e+00, %4005
  %4007 = fcmp ogt float %4001, -0.000000e+00
  %4008 = select i1 %4007, float %4006, float %4004
  %4009 = call float @dx.op.unary.f32(i32 6, float %4002)  ; FAbs(value)
  %4010 = fdiv fast float 1.000000e+00, %4009
  %4011 = fmul fast float %4008, %4010
  %4012 = call float @dx.op.binary.f32(i32 35, float %4011, float 0.000000e+00)  ; FMax(a,b)
  %4013 = call float @dx.op.binary.f32(i32 36, float %3997, float %4012)  ; FMin(a,b)
  %4014 = call float @dx.op.binary.f32(i32 36, float %3982, float %4013)  ; FMin(a,b)
  %4015 = fmul fast float %4014, %3961
  %4016 = fmul fast float %4014, %3962
  %4017 = fmul fast float %4014, %3963
  %4018 = fadd fast float %4015, %155
  %4019 = fadd fast float %4016, %156
  %4020 = fadd fast float %4017, %157
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4024 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4025 = fadd fast float %4018, %4022
  %4026 = fadd fast float %4019, %4023
  %4027 = fadd fast float %4020, %4024
  %4028 = fcmp fast olt float %3982, %3997
  %4029 = fcmp fast olt float %3982, %4012
  %4030 = and i1 %4028, %4029
  br i1 %4030, label %4034, label %4031

; <label>:4031                                    ; preds = %3967
  %4032 = fcmp fast olt float %3997, %4012
  br i1 %4032, label %4033, label %4034

; <label>:4033                                    ; preds = %4031
  br label %4034

; <label>:4034                                    ; preds = %4033, %4031, %3967
  %4035 = phi float [ 0.000000e+00, %4033 ], [ 0.000000e+00, %4031 ], [ 1.000000e+00, %3967 ]
  %4036 = phi float [ 1.000000e+00, %4033 ], [ 0.000000e+00, %4031 ], [ 0.000000e+00, %3967 ]
  %4037 = phi float [ 0.000000e+00, %4033 ], [ 1.000000e+00, %4031 ], [ 0.000000e+00, %3967 ]
  %4038 = phi float [ %3882, %4033 ], [ %3888, %4031 ], [ %3876, %3967 ]
  %4039 = phi float [ %3883, %4033 ], [ %3889, %4031 ], [ %3877, %3967 ]
  %4040 = phi float [ %3884, %4033 ], [ %3890, %4031 ], [ %3878, %3967 ]
  %4041 = call float @dx.op.unary.f32(i32 6, float %4040)  ; FAbs(value)
  %4042 = fcmp fast olt float %4041, 0x3FE276C8C0000000
  %4043 = select i1 %4042, float 0.000000e+00, float 1.000000e+00
  %4044 = select i1 %4042, float 1.000000e+00, float 0.000000e+00
  %4045 = fmul fast float %4044, %4039
  %4046 = fmul fast float %4043, %4040
  %4047 = fsub fast float %4045, %4046
  %4048 = fmul fast float %4038, %4044
  %4049 = fsub fast float -0.000000e+00, %4048
  %4050 = fmul fast float %4043, %4038
  %4051 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4049, float %4050, float %4047, float %4049, float %4050)  ; Dot3(ax,ay,az,bx,by,bz)
  %4052 = call float @dx.op.unary.f32(i32 25, float %4051)  ; Rsqrt(value)
  %4053 = fmul fast float %4047, %4052
  %4054 = fmul fast float %4052, %4049
  %4055 = fmul fast float %4050, %4052
  %4056 = fmul fast float %4055, %4039
  %4057 = fmul fast float %4054, %4040
  %4058 = fsub fast float %4056, %4057
  %4059 = fmul fast float %4053, %4040
  %4060 = fmul fast float %4055, %4038
  %4061 = fsub fast float %4059, %4060
  %4062 = fmul fast float %4054, %4038
  %4063 = fmul fast float %4053, %4039
  %4064 = fsub fast float %4062, %4063
  %4065 = call float @dx.op.dot3.f32(i32 55, float %4058, float %4061, float %4064, float %4058, float %4061, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4066 = call float @dx.op.unary.f32(i32 25, float %4065)  ; Rsqrt(value)
  %4067 = fmul fast float %4058, %4066
  %4068 = fmul fast float %4061, %4066
  %4069 = fmul fast float %4064, %4066
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4025, float %4026, float %4027, float %4053, float %4054, float %4055)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4025, float %4026, float %4027, float %4067, float %4068, float %4069)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = fmul fast float %4070, 0x3FA99999A0000000
  %4073 = fmul fast float %4071, 0x3FA99999A0000000
  %4074 = call float @dx.op.unary.f32(i32 22, float %4072)  ; Frc(value)
  %4075 = call float @dx.op.unary.f32(i32 22, float %4073)  ; Frc(value)
  %4076 = fadd fast float %4074, 0xBFB99999A0000000
  %4077 = fadd fast float %4075, 0xBFB99999A0000000
  %4078 = call float @dx.op.unary.f32(i32 6, float %4076)  ; FAbs(value)
  %4079 = call float @dx.op.unary.f32(i32 6, float %4077)  ; FAbs(value)
  %4080 = fmul fast float %4078, 1.000000e+01
  %4081 = fmul fast float %4079, 1.000000e+01
  %4082 = call float @dx.op.binary.f32(i32 36, float %4080, float %4081)  ; FMin(a,b)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4082)  ; Saturate(value)
  %4084 = fsub fast float 1.000000e+00, %4083
  %4085 = fmul fast float %4084, %4035
  %4086 = fmul fast float %4084, %4036
  %4087 = fmul fast float %4084, %4037
  %4088 = fsub fast float %4018, %3815
  %4089 = fsub fast float %4019, %3816
  %4090 = fsub fast float %4020, %3817
  br label %4098

; <label>:4091                                    ; preds = %3960
  %4092 = fmul fast float %3961, 8.096000e+03
  %4093 = fmul fast float %3962, 8.096000e+03
  %4094 = fmul fast float %3963, 8.096000e+03
  %4095 = fadd fast float %4092, %155
  %4096 = fadd fast float %4093, %156
  %4097 = fadd fast float %4094, %157
  br label %4098

; <label>:4098                                    ; preds = %4091, %4034
  %4099 = phi float [ %3961, %4091 ], [ %4088, %4034 ]
  %4100 = phi float [ %3962, %4091 ], [ %4089, %4034 ]
  %4101 = phi float [ %3963, %4091 ], [ %4090, %4034 ]
  %4102 = phi float [ %4095, %4091 ], [ %4018, %4034 ]
  %4103 = phi float [ %4096, %4091 ], [ %4019, %4034 ]
  %4104 = phi float [ %4097, %4091 ], [ %4020, %4034 ]
  %4105 = phi float [ 0.000000e+00, %4091 ], [ %4085, %4034 ]
  %4106 = phi float [ 0.000000e+00, %4091 ], [ %4086, %4034 ]
  %4107 = phi float [ 0.000000e+00, %4091 ], [ %4087, %4034 ]
  %4108 = fcmp fast olt float %3834, 1.000000e+00
  br i1 %4108, label %4109, label %4140, !dx.controlflow.hints !132

; <label>:4109                                    ; preds = %4098
  %4110 = fmul fast float %4101, %3832
  %4111 = fmul fast float %4100, %3833
  %4112 = fsub fast float %4110, %4111
  %4113 = fmul fast float %4099, %3833
  %4114 = fmul fast float %4101, %3831
  %4115 = fsub fast float %4113, %4114
  %4116 = fmul fast float %4100, %3831
  %4117 = fmul fast float %4099, %3832
  %4118 = fsub fast float %4116, %4117
  %4119 = fmul fast float %4112, 2.000000e+00
  %4120 = fmul fast float %4115, 2.000000e+00
  %4121 = fmul fast float %4118, 2.000000e+00
  %4122 = fmul fast float %4119, %3834
  %4123 = fmul fast float %4120, %3834
  %4124 = fmul fast float %4121, %3834
  %4125 = fmul fast float %4121, %3832
  %4126 = fmul fast float %4120, %3833
  %4127 = fmul fast float %4119, %3833
  %4128 = fmul fast float %4121, %3831
  %4129 = fmul fast float %4120, %3831
  %4130 = fmul fast float %4119, %3832
  %4131 = fadd fast float %4125, %4099
  %4132 = fadd fast float %4131, %4122
  %4133 = fsub fast float %4132, %4126
  %4134 = fsub fast float %4100, %4128
  %4135 = fadd fast float %4134, %4123
  %4136 = fadd fast float %4135, %4127
  %4137 = fadd fast float %4124, %4101
  %4138 = fsub fast float %4137, %4130
  %4139 = fadd fast float %4138, %4129
  br label %4140

; <label>:4140                                    ; preds = %4109, %4098
  %4141 = phi float [ %4133, %4109 ], [ %4099, %4098 ]
  %4142 = phi float [ %4136, %4109 ], [ %4100, %4098 ]
  %4143 = phi float [ %4139, %4109 ], [ %4101, %4098 ]
  br i1 %3966, label %4144, label %4167

; <label>:4144                                    ; preds = %4140
  %4145 = fsub fast float %4102, %155
  %4146 = fsub fast float %4103, %156
  %4147 = fsub fast float %4104, %157
  %4148 = fsub fast float %4102, %3815
  %4149 = fsub fast float %4103, %3816
  %4150 = fsub fast float %4104, %3817
  %4151 = call float @dx.op.dot3.f32(i32 55, float %4145, float %4146, float %4147, float %4145, float %4146, float %4147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4152 = call float @dx.op.dot3.f32(i32 55, float %4148, float %4149, float %4150, float %4148, float %4149, float %4150)  ; Dot3(ax,ay,az,bx,by,bz)
  %4153 = fadd fast float %4152, 0x3EE4F8B580000000
  %4154 = fdiv fast float %4151, %4153
  %4155 = bitcast float %4154 to i32
  %4156 = ashr i32 %4155, 1
  %4157 = add nsw i32 %4156, 532487669
  %4158 = bitcast i32 %4157 to float
  %4159 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4160 = fmul fast float %4159, 0x4009981AE0000000
  %4161 = fsub fast float 0x40111BBD80000000, %4160
  %4162 = fmul fast float %4161, %4159
  %4163 = fadd fast float %4162, 0xC0009F6020000000
  %4164 = fmul fast float %4163, %4159
  %4165 = fadd fast float %4164, 1.000000e+00
  %4166 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  br label %4170

; <label>:4167                                    ; preds = %4140
  %4168 = icmp ne i32 %3860, -1
  %4169 = zext i1 %4168 to i32
  br label %4170

; <label>:4170                                    ; preds = %4167, %4144
  %4171 = phi float [ 0.000000e+00, %4167 ], [ %4166, %4144 ]
  %4172 = phi i32 [ %4169, %4167 ], [ 0, %4144 ]
  %4173 = fmul float %4171, 5.000000e+00
  %4174 = fsub float 5.000000e+00, %4173
  %4175 = icmp ne i32 %4172, 0
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4178 = fadd fast float %4177, %4174
  %4179 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4178)  ; FMax(a,b)
  %4180 = call float @dx.op.unary.f32(i32 6, float %4141)  ; FAbs(value)
  %4181 = call float @dx.op.unary.f32(i32 6, float %4142)  ; FAbs(value)
  %4182 = fadd fast float %4181, %4180
  %4183 = call float @dx.op.unary.f32(i32 6, float %4143)  ; FAbs(value)
  %4184 = fadd fast float %4182, %4183
  %4185 = fcmp fast oeq float %4184, 0.000000e+00
  %4186 = fdiv fast float 1.000000e+00, %4184
  %4187 = select i1 %4185, float 1.000000e+00, float %4186
  %4188 = fmul fast float %4187, %4141
  %4189 = fmul fast float %4187, %4142
  %4190 = call float @dx.op.unary.f32(i32 6, float %4189)  ; FAbs(value)
  %4191 = call float @dx.op.unary.f32(i32 6, float %4188)  ; FAbs(value)
  %4192 = fsub fast float 1.000000e+00, %4190
  %4193 = fsub fast float 1.000000e+00, %4191
  %4194 = fcmp fast oge float %4188, 0.000000e+00
  %4195 = fcmp fast oge float %4189, 0.000000e+00
  %4196 = select i1 %4194, float 1.000000e+00, float -1.000000e+00
  %4197 = select i1 %4195, float 1.000000e+00, float -1.000000e+00
  %4198 = fcmp fast ole float %4143, 0.000000e+00
  %4199 = fmul fast float %4196, %4192
  %4200 = fmul fast float %4197, %4193
  %4201 = select i1 %4198, float %4199, float %4188
  %4202 = select i1 %4198, float %4200, float %4189
  %4203 = fmul fast float %4201, 5.000000e-01
  %4204 = fmul fast float %4202, 5.000000e-01
  %4205 = fadd fast float %4203, 5.000000e-01
  %4206 = fadd fast float %4204, 5.000000e-01
  %4207 = uitofp i32 %3858 to float
  %4208 = call float @dx.op.binary.f32(i32 36, float %4179, float 3.000000e+00)  ; FMin(a,b)
  %4209 = fadd fast float %4208, 2.000000e+00
  %4210 = call float @dx.op.unary.f32(i32 21, float %4209)  ; Exp(value)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4212 = fmul fast float %4211, %4210
  %4213 = fmul fast float %4212, 2.000000e+00
  %4214 = fsub fast float 1.000000e+00, %4213
  %4215 = fmul fast float %4205, %4214
  %4216 = fmul fast float %4206, %4214
  %4217 = fadd fast float %4215, %4212
  %4218 = fadd fast float %4216, %4212
  %4219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %4217, float %4218, float %4207, float undef, i32 0, i32 0, i32 undef, float %4179)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4220 = extractvalue %dx.types.ResRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.ResRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.ResRet.f32 %4219, 2
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 3
  %4225 = fmul fast float %4224, %3828
  %4226 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %4225)  ; FMin(a,b)
  %4227 = select i1 %4175, float %4226, float %4225
  %4228 = fmul fast float %4220, %3908
  %4229 = fmul fast float %4228, %4227
  %4230 = fmul fast float %4221, %3908
  %4231 = fmul fast float %4230, %4227
  %4232 = fmul fast float %4222, %3908
  %4233 = fmul fast float %4232, %4227
  %4234 = fadd fast float %4229, %3795
  %4235 = fadd fast float %4231, %3796
  %4236 = fadd fast float %4233, %3797
  %4237 = fsub fast float %3806, %3908
  %4238 = and i32 %3923, 255
  %4239 = uitofp i32 %4238 to float
  %4240 = fptoui float %4239 to i32
  %4241 = icmp eq i32 %3918, 1
  %4242 = zext i1 %4241 to i32
  %4243 = add i32 %4242, %4240
  %4244 = uitofp i32 %4243 to float
  %4245 = fptoui float %4244 to i32
  %4246 = shl i32 %4245, 8
  %4247 = and i32 %4246, 65280
  %4248 = or i32 %4247, %3926
  %4249 = fmul fast float %4105, %3908
  %4250 = fmul fast float %4106, %3908
  %4251 = fmul fast float %4107, %3908
  %4252 = fadd fast float %4249, %3802
  %4253 = fadd fast float %4250, %3803
  %4254 = fadd fast float %4251, %3804
  %4255 = fmul fast float %4207, 0x3FE3C6EF40000000
  %4256 = call float @dx.op.unary.f32(i32 22, float %4255)  ; Frc(value)
  %4257 = fadd fast float %4256, 0x3FE5555560000000
  %4258 = fadd fast float %4256, 0x3FD5555560000000
  %4259 = fsub fast float -0.000000e+00, %4256
  %4260 = fsub fast float -0.000000e+00, %4257
  %4261 = fsub fast float -0.000000e+00, %4258
  %4262 = fcmp fast oge float %4256, %4259
  %4263 = fcmp fast oge float %4257, %4260
  %4264 = fcmp fast oge float %4258, %4261
  %4265 = call float @dx.op.unary.f32(i32 6, float %4256)  ; FAbs(value)
  %4266 = call float @dx.op.unary.f32(i32 6, float %4257)  ; FAbs(value)
  %4267 = call float @dx.op.unary.f32(i32 6, float %4258)  ; FAbs(value)
  %4268 = call float @dx.op.unary.f32(i32 22, float %4265)  ; Frc(value)
  %4269 = call float @dx.op.unary.f32(i32 22, float %4266)  ; Frc(value)
  %4270 = call float @dx.op.unary.f32(i32 22, float %4267)  ; Frc(value)
  %4271 = fsub fast float -0.000000e+00, %4268
  %4272 = fsub fast float -0.000000e+00, %4269
  %4273 = fsub fast float -0.000000e+00, %4270
  %4274 = select i1 %4262, float %4268, float %4271
  %4275 = select i1 %4263, float %4269, float %4272
  %4276 = select i1 %4264, float %4270, float %4273
  %4277 = fmul fast float %4274, 6.000000e+00
  %4278 = fmul fast float %4275, 6.000000e+00
  %4279 = fmul fast float %4276, 6.000000e+00
  %4280 = fadd fast float %4277, -3.000000e+00
  %4281 = fadd fast float %4278, -3.000000e+00
  %4282 = fadd fast float %4279, -3.000000e+00
  %4283 = call float @dx.op.unary.f32(i32 6, float %4280)  ; FAbs(value)
  %4284 = call float @dx.op.unary.f32(i32 6, float %4281)  ; FAbs(value)
  %4285 = call float @dx.op.unary.f32(i32 6, float %4282)  ; FAbs(value)
  %4286 = fadd fast float %4283, -1.000000e+00
  %4287 = fadd fast float %4284, -1.000000e+00
  %4288 = fadd fast float %4285, -1.000000e+00
  %4289 = call float @dx.op.unary.f32(i32 7, float %4286)  ; Saturate(value)
  %4290 = call float @dx.op.unary.f32(i32 7, float %4287)  ; Saturate(value)
  %4291 = call float @dx.op.unary.f32(i32 7, float %4288)  ; Saturate(value)
  %4292 = fmul fast float %4289, %3908
  %4293 = fmul fast float %4290, %3908
  %4294 = fmul fast float %4291, %3908
  %4295 = fadd fast float %4292, %3798
  %4296 = fadd fast float %4293, %3799
  %4297 = fadd fast float %4294, %3800
  %4298 = icmp eq i32 %3858, 0
  %4299 = select i1 %4298, i32 1, i32 %3801
  %4300 = icmp eq i32 %3805, 0
  br i1 %4300, label %3929, label %4301

; <label>:4301                                    ; preds = %4170
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = bitcast float %4303 to i32
  %4305 = lshr i32 %4304, 8
  %4306 = and i32 %4305, 255
  %4307 = uitofp i32 %4306 to float
  %4308 = fptoui float %4307 to i32
  %4309 = icmp eq i32 %4308, 16
  %4310 = bitcast float %4225 to i32
  %4311 = select i1 %4309, i32 %4310, i32 %3794
  %4312 = icmp eq i32 %4308, 17
  %4313 = select i1 %4312, i32 1065353216, i32 %4311
  %4314 = icmp eq i32 %4308, 18
  %4315 = bitcast float %4227 to i32
  %4316 = select i1 %4314, i32 %4315, i32 %4313
  br label %3929

; <label>:4317                                    ; preds = %3929
  br label %4318

; <label>:4318                                    ; preds = %4317, %3752
  %4319 = phi i32 [ %3753, %3752 ], [ %3930, %4317 ]
  %4320 = phi i32 [ %3754, %3752 ], [ %3931, %4317 ]
  %4321 = phi float [ %3755, %3752 ], [ %3932, %4317 ]
  %4322 = phi float [ %3756, %3752 ], [ %3933, %4317 ]
  %4323 = phi float [ %3757, %3752 ], [ %3934, %4317 ]
  %4324 = phi float [ %3758, %3752 ], [ %3935, %4317 ]
  %4325 = phi float [ %3759, %3752 ], [ %3936, %4317 ]
  %4326 = phi float [ %3760, %3752 ], [ %3937, %4317 ]
  %4327 = phi i32 [ %3761, %3752 ], [ %3938, %4317 ]
  %4328 = phi float [ %3762, %3752 ], [ %3939, %4317 ]
  %4329 = phi float [ %3763, %3752 ], [ %3940, %4317 ]
  %4330 = phi float [ %3764, %3752 ], [ %3941, %4317 ]
  %4331 = phi i32 [ %3765, %3752 ], [ %3942, %4317 ]
  %4332 = phi float [ %3766, %3752 ], [ %3943, %4317 ]
  %4333 = add i32 %3767, 1
  %4334 = icmp ugt i32 %4333, %3749
  br i1 %4334, label %4335, label %3752, !llvm.loop !133

; <label>:4335                                    ; preds = %4318
  br label %4336

; <label>:4336                                    ; preds = %4335, %3700
  %4337 = phi i32 [ %2387, %3700 ], [ %4319, %4335 ]
  %4338 = phi i32 [ %3691, %3700 ], [ %4320, %4335 ]
  %4339 = phi float [ 0.000000e+00, %3700 ], [ %4321, %4335 ]
  %4340 = phi float [ 0.000000e+00, %3700 ], [ %4322, %4335 ]
  %4341 = phi float [ 0.000000e+00, %3700 ], [ %4323, %4335 ]
  %4342 = phi float [ 0.000000e+00, %3700 ], [ %4324, %4335 ]
  %4343 = phi float [ 0.000000e+00, %3700 ], [ %4325, %4335 ]
  %4344 = phi float [ 0.000000e+00, %3700 ], [ %4326, %4335 ]
  %4345 = phi i32 [ 0, %3700 ], [ %4327, %4335 ]
  %4346 = phi float [ 0.000000e+00, %3700 ], [ %4328, %4335 ]
  %4347 = phi float [ 0.000000e+00, %3700 ], [ %4329, %4335 ]
  %4348 = phi float [ 0.000000e+00, %3700 ], [ %4330, %4335 ]
  %4349 = call float @dx.op.dot3.f32(i32 55, float %4339, float %4340, float %4341, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4350 = select i1 %2584, float %4349, float %4340
  %4351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4352 = extractvalue %dx.types.CBufRet.f32 %4351, 0
  %4353 = bitcast float %4352 to i32
  %4354 = lshr i32 %4353, 8
  %4355 = and i32 %4354, 255
  %4356 = uitofp i32 %4355 to float
  %4357 = fptoui float %4356 to i32
  %4358 = icmp eq i32 %4357, 13
  br i1 %4358, label %4359, label %4379

; <label>:4359                                    ; preds = %4336
  %4360 = fadd fast float %4342, 1.000000e+00
  %4361 = fadd fast float %4343, 1.000000e+00
  %4362 = fadd fast float %4344, 1.000000e+00
  %4363 = fmul fast float %4360, 5.000000e-01
  %4364 = fmul fast float %4361, 5.000000e-01
  %4365 = fmul fast float %4362, 5.000000e-01
  %4366 = call float @dx.op.unary.f32(i32 7, float %4363)  ; Saturate(value)
  %4367 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4368 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4369 = fmul fast float %4366, 1.023000e+03
  %4370 = fmul fast float %4367, 1.023000e+03
  %4371 = fmul fast float %4368, 1.023000e+03
  %4372 = fptoui float %4369 to i32
  %4373 = fptoui float %4370 to i32
  %4374 = fptoui float %4371 to i32
  %4375 = shl i32 %4373, 10
  %4376 = or i32 %4375, %4372
  %4377 = shl i32 %4374, 20
  %4378 = or i32 %4376, %4377
  br label %4379

; <label>:4379                                    ; preds = %4359, %4336
  %4380 = phi i32 [ %4378, %4359 ], [ %4338, %4336 ]
  %4381 = icmp eq i32 %4357, 14
  %4382 = select i1 %4381, i32 %4345, i32 %4380
  %4383 = icmp eq i32 %4357, 22
  br i1 %4383, label %4384, label %4404

; <label>:4384                                    ; preds = %4379
  %4385 = fadd fast float %4346, 1.000000e+00
  %4386 = fadd fast float %4347, 1.000000e+00
  %4387 = fadd fast float %4348, 1.000000e+00
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

; <label>:4404                                    ; preds = %4384, %4379
  %4405 = phi i32 [ %4403, %4384 ], [ %4382, %4379 ]
  %4406 = fmul fast float %4339, 0x3FD45F3060000000
  %4407 = select i1 %2584, float 0.000000e+00, float %4406
  %4408 = fmul fast float %4350, 0x3FD45F3060000000
  %4409 = fmul fast float %4341, 0x3FD45F3060000000
  %4410 = select i1 %2584, float 0.000000e+00, float %4409
  br label %4411

; <label>:4411                                    ; preds = %4404, %3690
  %4412 = phi i32 [ %4337, %4404 ], [ %2387, %3690 ]
  %4413 = phi i32 [ %4405, %4404 ], [ %3691, %3690 ]
  %4414 = phi float [ %4407, %4404 ], [ %3656, %3690 ]
  %4415 = phi float [ %4408, %4404 ], [ %3657, %3690 ]
  %4416 = phi float [ %4410, %4404 ], [ %3658, %3690 ]
  %4417 = phi i1 [ false, %4404 ], [ true, %3690 ]
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 0
  %4420 = and i32 %4419, 524288
  %4421 = icmp ne i32 %4420, 0
  %4422 = select i1 %4421, float 0.000000e+00, float 1.000000e+00
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = bitcast float %4424 to i32
  %4426 = and i32 %4425, 255
  %4427 = uitofp i32 %4426 to float
  %4428 = fptoui float %4427 to i32
  %4429 = icmp eq i32 %4428, 38
  %4430 = select i1 %4429, i32 0, i32 %4413
  %4431 = lshr i32 %4425, 8
  %4432 = and i32 %4431, 255
  %4433 = uitofp i32 %4432 to float
  %4434 = fptoui float %4433 to i32
  %4435 = icmp eq i32 %4434, 24
  br i1 %4435, label %4436, label %4447

; <label>:4436                                    ; preds = %4411
  %4437 = fadd fast float %2621, 1.000000e+00
  %4438 = fmul fast float %4437, 5.000000e-01
  %4439 = select i1 %2623, float %4438, float 1.000000e+00
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fmul fast float %4440, 1.023000e+03
  %4442 = fptoui float %4441 to i32
  %4443 = shl i32 %4442, 10
  %4444 = or i32 %4443, %4442
  %4445 = shl i32 %4442, 20
  %4446 = or i32 %4444, %4445
  br label %4447

; <label>:4447                                    ; preds = %4436, %4411
  %4448 = phi i32 [ %4430, %4411 ], [ %4446, %4436 ]
  %4449 = xor i1 %4421, true
  %4450 = zext i1 %4449 to i32
  br i1 %4421, label %4451, label %4735

; <label>:4451                                    ; preds = %4447
  %4452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.f32 %4452, 0
  %4454 = extractvalue %dx.types.CBufRet.f32 %4452, 1
  %4455 = extractvalue %dx.types.CBufRet.f32 %4452, 2
  %4456 = extractvalue %dx.types.CBufRet.f32 %4452, 3
  %4457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4458 = extractvalue %dx.types.CBufRet.f32 %4457, 0
  %4459 = extractvalue %dx.types.CBufRet.f32 %4457, 1
  %4460 = extractvalue %dx.types.CBufRet.f32 %4457, 2
  %4461 = extractvalue %dx.types.CBufRet.f32 %4457, 3
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4466 = extractvalue %dx.types.CBufRet.f32 %4462, 3
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 0
  %4469 = extractvalue %dx.types.CBufRet.f32 %4467, 1
  %4470 = extractvalue %dx.types.CBufRet.f32 %4467, 2
  %4471 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4473 = extractvalue %dx.types.CBufRet.f32 %4472, 0
  %4474 = extractvalue %dx.types.CBufRet.f32 %4472, 1
  %4475 = extractvalue %dx.types.CBufRet.f32 %4472, 2
  %4476 = extractvalue %dx.types.CBufRet.f32 %4472, 3
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.CBufRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.CBufRet.f32 %4477, 2
  %4481 = extractvalue %dx.types.CBufRet.f32 %4477, 3
  %4482 = call float @dx.op.dot3.f32(i32 55, float %4478, float %4479, float %4480, float %2596, float %2597, float %2598)  ; Dot3(ax,ay,az,bx,by,bz)
  %4483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %4484 = extractvalue %dx.types.CBufRet.f32 %4483, 1
  %4485 = extractvalue %dx.types.CBufRet.f32 %4483, 0
  %4486 = select i1 %117, float %4485, float %4484
  %4487 = fmul fast float %4482, 8.000000e+00
  %4488 = fmul fast float %4487, %4486
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = fcmp fast ogt float %4489, 0.000000e+00
  br i1 %4490, label %4491, label %4709, !dx.controlflow.hints !134

; <label>:4491                                    ; preds = %4451
  %4492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4493 = extractvalue %dx.types.CBufRet.f32 %4492, 1
  %4494 = fmul fast float %1887, 2.000000e+00
  %4495 = fmul fast float %1888, 2.000000e+00
  %4496 = fadd fast float %4494, -1.000000e+00
  %4497 = fadd fast float %4495, -1.000000e+00
  %4498 = fmul fast float %4493, %4496
  %4499 = fmul fast float %4493, %4497
  %4500 = fadd fast float %4498, %100
  %4501 = fadd fast float %4499, %101
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4505 = fmul fast float %4500, %4503
  %4506 = fmul fast float %4501, %4504
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %64, float %4505, float %4506, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = fcmp fast une float %4508, 0xFFF0000000000000
  %4510 = fcmp fast une float %4508, 0x7FF0000000000000
  %4511 = and i1 %4509, %4510
  %4512 = call float @dx.op.unary.f32(i32 6, float %4508)  ; FAbs(value)
  %4513 = fsub fast float 1.000000e+00, %4512
  %4514 = select i1 %4511, float 1.000000e+00, float 0.000000e+00
  %4515 = fmul fast float %4514, %4489
  %4516 = fcmp fast ogt float %4515, 0.000000e+00
  br i1 %4516, label %4517, label %4709, !dx.controlflow.hints !135

; <label>:4517                                    ; preds = %4491
  %4518 = fmul fast float %4453, %155
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4454, float %4518)  ; FMad(a,b,c)
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4455, float %4519)  ; FMad(a,b,c)
  %4521 = fadd fast float %4520, %4456
  %4522 = fmul fast float %4458, %155
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4459, float %4522)  ; FMad(a,b,c)
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4460, float %4523)  ; FMad(a,b,c)
  %4525 = fadd fast float %4524, %4461
  %4526 = fmul fast float %4463, %155
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4464, float %4526)  ; FMad(a,b,c)
  %4528 = call float @dx.op.tertiary.f32(i32 46, float %157, float %4465, float %4527)  ; FMad(a,b,c)
  %4529 = fadd fast float %4528, %4466
  %4530 = fdiv fast float 1.000000e+00, %4529
  %4531 = fmul fast float %4530, %4521
  %4532 = fmul fast float %4530, %4525
  %4533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4534 = extractvalue %dx.types.CBufRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.CBufRet.f32 %4533, 1
  %4536 = fmul fast float %4531, %4534
  %4537 = fmul fast float %4532, %4535
  %4538 = extractvalue %dx.types.CBufRet.f32 %4533, 2
  %4539 = extractvalue %dx.types.CBufRet.f32 %4533, 3
  %4540 = fadd fast float %4536, %4538
  %4541 = fadd fast float %4537, %4539
  %4542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4543 = extractvalue %dx.types.CBufRet.f32 %4542, 3
  %4544 = fmul fast float %4543, %2596
  %4545 = fmul fast float %4543, %2597
  %4546 = fmul fast float %4543, %2598
  %4547 = fadd fast float %4544, %155
  %4548 = fadd fast float %4545, %156
  %4549 = fadd fast float %4546, %157
  %4550 = fmul fast float %4547, %4453
  %4551 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4454, float %4550)  ; FMad(a,b,c)
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4455, float %4551)  ; FMad(a,b,c)
  %4553 = fadd fast float %4552, %4456
  %4554 = fmul fast float %4547, %4458
  %4555 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4459, float %4554)  ; FMad(a,b,c)
  %4556 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4460, float %4555)  ; FMad(a,b,c)
  %4557 = fadd fast float %4556, %4461
  %4558 = fmul fast float %4547, %4463
  %4559 = call float @dx.op.tertiary.f32(i32 46, float %4548, float %4464, float %4558)  ; FMad(a,b,c)
  %4560 = call float @dx.op.tertiary.f32(i32 46, float %4549, float %4465, float %4559)  ; FMad(a,b,c)
  %4561 = fadd fast float %4560, %4466
  %4562 = fdiv fast float 1.000000e+00, %4561
  %4563 = fmul fast float %4562, %4553
  %4564 = fmul fast float %4562, %4557
  %4565 = fmul fast float %4540, 2.000000e+00
  %4566 = fadd fast float %4565, -1.000000e+00
  %4567 = call float @dx.op.unary.f32(i32 6, float %4566)  ; FAbs(value)
  %4568 = fmul fast float %4567, 5.000000e+00
  %4569 = fadd fast float %4568, -4.000000e+00
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fsub fast float %4531, %4563
  %4572 = fmul fast float %4534, %4571
  %4573 = fmul fast float %4572, %4570
  %4574 = fsub fast float %4563, %4531
  %4575 = fmul fast float %4534, %4574
  %4576 = fadd fast float %4575, %4573
  %4577 = fsub fast float %4564, %4532
  %4578 = fmul fast float %4535, %4577
  %4579 = fmul fast float %4576, %4513
  %4580 = fmul fast float %4578, %4513
  %4581 = fadd fast float %4579, %4540
  %4582 = fadd fast float %4580, %4541
  %4583 = fsub fast float %4562, %4530
  %4584 = fmul fast float %4583, %4513
  %4585 = fadd fast float %4584, %4530
  %4586 = fdiv fast float 1.000000e+00, %4585
  %4587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %4581, float %4582, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4588 = extractvalue %dx.types.ResRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.ResRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.ResRet.f32 %4587, 2
  %4591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.f32 %4591, 1
  %4593 = fmul fast float %4592, %4588
  %4594 = fmul fast float %4592, %4589
  %4595 = fmul fast float %4592, %4590
  %4596 = call float @dx.op.binary.f32(i32 35, float %4586, float 0x3810000000000000)  ; FMax(a,b)
  %4597 = fdiv fast float %4529, %4596
  %4598 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.CBufRet.f32 %4599, 2
  %4603 = fadd fast float %4600, %155
  %4604 = fadd fast float %4601, %156
  %4605 = fadd fast float %4602, %157
  %4606 = fmul fast float %4603, %4468
  %4607 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4469, float %4606)  ; FMad(a,b,c)
  %4608 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4470, float %4607)  ; FMad(a,b,c)
  %4609 = fadd fast float %4608, %4471
  %4610 = fmul fast float %4603, %4473
  %4611 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4474, float %4610)  ; FMad(a,b,c)
  %4612 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4475, float %4611)  ; FMad(a,b,c)
  %4613 = fadd fast float %4612, %4476
  %4614 = fmul fast float %4603, %4478
  %4615 = call float @dx.op.tertiary.f32(i32 46, float %4604, float %4479, float %4614)  ; FMad(a,b,c)
  %4616 = call float @dx.op.tertiary.f32(i32 46, float %4605, float %4480, float %4615)  ; FMad(a,b,c)
  %4617 = fadd fast float %4616, %4481
  %4618 = fdiv fast float 1.000000e+00, %4617
  %4619 = fmul fast float %4618, %4609
  %4620 = fmul fast float %4618, %4613
  %4621 = fmul fast float %4619, %4534
  %4622 = fmul fast float %4620, %4535
  %4623 = fadd fast float %4621, %4538
  %4624 = fadd fast float %4622, %4539
  %4625 = fadd fast float %4544, %4603
  %4626 = fadd fast float %4545, %4604
  %4627 = fadd fast float %4546, %4605
  %4628 = fmul fast float %4625, %4468
  %4629 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4469, float %4628)  ; FMad(a,b,c)
  %4630 = call float @dx.op.tertiary.f32(i32 46, float %4627, float %4470, float %4629)  ; FMad(a,b,c)
  %4631 = fadd fast float %4630, %4471
  %4632 = fmul fast float %4625, %4473
  %4633 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4474, float %4632)  ; FMad(a,b,c)
  %4634 = call float @dx.op.tertiary.f32(i32 46, float %4627, float %4475, float %4633)  ; FMad(a,b,c)
  %4635 = fadd fast float %4634, %4476
  %4636 = fmul fast float %4625, %4478
  %4637 = call float @dx.op.tertiary.f32(i32 46, float %4626, float %4479, float %4636)  ; FMad(a,b,c)
  %4638 = call float @dx.op.tertiary.f32(i32 46, float %4627, float %4480, float %4637)  ; FMad(a,b,c)
  %4639 = fadd fast float %4638, %4481
  %4640 = fdiv fast float 1.000000e+00, %4639
  %4641 = fmul fast float %4640, %4631
  %4642 = fmul fast float %4640, %4635
  %4643 = fmul fast float %4623, 2.000000e+00
  %4644 = fadd fast float %4643, -1.000000e+00
  %4645 = call float @dx.op.unary.f32(i32 6, float %4644)  ; FAbs(value)
  %4646 = fmul fast float %4645, 5.000000e+00
  %4647 = fadd fast float %4646, -4.000000e+00
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fsub fast float %4619, %4641
  %4650 = fmul fast float %4534, %4649
  %4651 = fmul fast float %4650, %4648
  %4652 = fsub fast float %4641, %4619
  %4653 = fmul fast float %4534, %4652
  %4654 = fadd fast float %4653, %4651
  %4655 = fsub fast float %4642, %4620
  %4656 = fmul fast float %4535, %4655
  %4657 = fmul fast float %4654, %4513
  %4658 = fmul fast float %4656, %4513
  %4659 = fadd fast float %4657, %4623
  %4660 = fadd fast float %4658, %4624
  %4661 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %63, float %4659, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4662 = extractvalue %dx.types.ResRet.f32 %4661, 0
  %4663 = extractvalue %dx.types.ResRet.f32 %4661, 1
  %4664 = extractvalue %dx.types.ResRet.f32 %4661, 2
  %4665 = extractvalue %dx.types.CBufRet.f32 %4591, 2
  %4666 = fmul fast float %4665, %4662
  %4667 = fmul fast float %4665, %4663
  %4668 = fmul fast float %4665, %4664
  %4669 = and i32 %2492, 255
  %4670 = uitofp i32 %4669 to float
  %4671 = fmul fast float %4670, 0x3F70101020000000
  %4672 = fmul fast float %4671, %4598
  %4673 = extractvalue %dx.types.CBufRet.f32 %4483, 2
  %4674 = fadd fast float %4673, %4672
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = call float @dx.op.binary.f32(i32 35, float %4593, float 0x3810000000000000)  ; FMax(a,b)
  %4677 = call float @dx.op.binary.f32(i32 35, float %4594, float 0x3810000000000000)  ; FMax(a,b)
  %4678 = call float @dx.op.binary.f32(i32 35, float %4595, float 0x3810000000000000)  ; FMax(a,b)
  %4679 = call float @dx.op.unary.f32(i32 23, float %4676)  ; Log(value)
  %4680 = call float @dx.op.unary.f32(i32 23, float %4677)  ; Log(value)
  %4681 = call float @dx.op.unary.f32(i32 23, float %4678)  ; Log(value)
  %4682 = call float @dx.op.binary.f32(i32 35, float %4666, float 0x3810000000000000)  ; FMax(a,b)
  %4683 = call float @dx.op.binary.f32(i32 35, float %4667, float 0x3810000000000000)  ; FMax(a,b)
  %4684 = call float @dx.op.binary.f32(i32 35, float %4668, float 0x3810000000000000)  ; FMax(a,b)
  %4685 = call float @dx.op.unary.f32(i32 23, float %4682)  ; Log(value)
  %4686 = call float @dx.op.unary.f32(i32 23, float %4683)  ; Log(value)
  %4687 = call float @dx.op.unary.f32(i32 23, float %4684)  ; Log(value)
  %4688 = fsub fast float %4679, %4685
  %4689 = fsub fast float %4680, %4686
  %4690 = fsub fast float %4681, %4687
  %4691 = fmul fast float %4688, %4675
  %4692 = fmul fast float %4689, %4675
  %4693 = fmul fast float %4690, %4675
  %4694 = fadd fast float %4691, %4685
  %4695 = fadd fast float %4692, %4686
  %4696 = fadd fast float %4693, %4687
  %4697 = call float @dx.op.unary.f32(i32 21, float %4694)  ; Exp(value)
  %4698 = call float @dx.op.unary.f32(i32 21, float %4695)  ; Exp(value)
  %4699 = call float @dx.op.unary.f32(i32 21, float %4696)  ; Exp(value)
  %4700 = select i1 %2584, float 0.000000e+00, float %4698
  %4701 = select i1 %2584, float 0.000000e+00, float %4699
  %4702 = fmul fast float %4660, 2.000000e+00
  %4703 = fadd fast float %4702, -1.000000e+00
  %4704 = fmul fast float %4703, %4703
  %4705 = fsub fast float 1.000000e+00, %4704
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, %4515
  br label %4709

; <label>:4709                                    ; preds = %4517, %4491, %4451
  %4710 = phi float [ %4697, %4517 ], [ 0.000000e+00, %4491 ], [ 0.000000e+00, %4451 ]
  %4711 = phi float [ %4700, %4517 ], [ 0.000000e+00, %4491 ], [ 0.000000e+00, %4451 ]
  %4712 = phi float [ %4701, %4517 ], [ 0.000000e+00, %4491 ], [ 0.000000e+00, %4451 ]
  %4713 = phi float [ %4708, %4517 ], [ 0.000000e+00, %4491 ], [ 0.000000e+00, %4451 ]
  %4714 = phi float [ %4513, %4517 ], [ %4513, %4491 ], [ 0.000000e+00, %4451 ]
  %4715 = phi float [ %4708, %4517 ], [ %4515, %4491 ], [ 0.000000e+00, %4451 ]
  %4716 = icmp eq i32 %4434, 25
  br i1 %4716, label %4717, label %4720

; <label>:4717                                    ; preds = %4709
  %4718 = call float @dx.op.unary.f32(i32 6, float %4714)  ; FAbs(value)
  %4719 = bitcast float %4718 to i32
  br label %4720

; <label>:4720                                    ; preds = %4717, %4709
  %4721 = phi i32 [ %4719, %4717 ], [ %4448, %4709 ]
  %4722 = icmp eq i32 %4434, 26
  %4723 = bitcast float %4715 to i32
  %4724 = select i1 %4722, i32 %4723, i32 %4721
  %4725 = icmp eq i32 %4434, 27
  %4726 = select i1 %4725, i32 0, i32 %4724
  %4727 = fcmp fast olt float %4713, 1.000000e+00
  %4728 = or i1 %4727, %4449
  %4729 = zext i1 %4728 to i32
  %4730 = fmul fast float %4713, %4422
  %4731 = fsub fast float %4713, %4730
  %4732 = fmul fast float %4731, %4710
  %4733 = fmul fast float %4731, %4711
  %4734 = fmul fast float %4731, %4712
  br label %4735

; <label>:4735                                    ; preds = %4720, %4447
  %4736 = phi i32 [ %4448, %4447 ], [ %4726, %4720 ]
  %4737 = phi float [ 0.000000e+00, %4447 ], [ %4731, %4720 ]
  %4738 = phi float [ 0.000000e+00, %4447 ], [ %4732, %4720 ]
  %4739 = phi float [ 0.000000e+00, %4447 ], [ %4733, %4720 ]
  %4740 = phi float [ 0.000000e+00, %4447 ], [ %4734, %4720 ]
  %4741 = phi i32 [ %4450, %4447 ], [ %4729, %4720 ]
  %4742 = icmp ne i32 %4741, 0
  %4743 = add i32 %4434, -13
  %4744 = icmp ult i32 %4743, 2
  %4745 = or i1 %4744, %4742
  %4746 = icmp eq i32 %4434, 22
  %4747 = or i1 %4745, %4746
  br i1 %4747, label %4748, label %5482

; <label>:4748                                    ; preds = %4735
  %4749 = select i1 %4417, float %3618, float 1.000000e+00
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4752 = extractvalue %dx.types.CBufRet.f32 %4750, 3
  %4753 = fmul fast float %4751, %100
  %4754 = fmul fast float %4752, %101
  %4755 = fptoui float %4753 to i32
  %4756 = fptoui float %4754 to i32
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4760 = extractvalue %dx.types.CBufRet.f32 %4757, 3
  %4761 = fadd fast float %89, -4.000000e+00
  %4762 = call float @dx.op.binary.f32(i32 35, float %4761, float 0.000000e+00)  ; FMax(a,b)
  %4763 = fadd fast float %4762, %4758
  %4764 = fmul fast float %4763, %4759
  %4765 = call float @dx.op.unary.f32(i32 23, float %4764)  ; Log(value)
  %4766 = fmul fast float %4765, %4760
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4769 = fmul fast float %4766, %4768
  %4770 = call float @dx.op.unary.f32(i32 7, float %4769)  ; Saturate(value)
  %4771 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4772 = extractvalue %dx.types.CBufRet.i32 %4771, 1
  %4773 = add i32 %4772, -1
  %4774 = uitofp i32 %4772 to float
  %4775 = fmul fast float %4774, %4770
  %4776 = fptoui float %4775 to i32
  %4777 = call i32 @dx.op.binary.i32(i32 40, i32 %4776, i32 %4773)  ; UMin(a,b)
  %4778 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.i32 %4778, 2
  %4780 = extractvalue %dx.types.CBufRet.i32 %4778, 3
  %4781 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4756, i32 %4779, i32 %4755)  ; UMad(a,b,c)
  %4782 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4777, i32 %4780, i32 %4781)  ; UMad(a,b,c)
  %4783 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %4784 = fptoui float %4783 to i32
  %4785 = lshr i32 %4784, 5
  %4786 = call i32 @dx.op.binary.i32(i32 40, i32 %4785, i32 8191)  ; UMin(a,b)
  %4787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.i32 %4787, 2
  %4789 = add nsw i32 %4788, -1
  %4790 = call i32 @dx.op.binary.i32(i32 37, i32 %4789, i32 0)  ; IMax(a,b)
  %4791 = shl i32 %4786, 2
  %4792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4791, i32 undef)  ; BufferLoad(srv,index,wot)
  %4793 = extractvalue %dx.types.ResRet.i32 %4792, 0
  %4794 = lshr i32 %4793, 16
  %4795 = and i32 %4793, 65535
  %4796 = lshr i32 %4793, 21
  %4797 = lshr i32 %4795, 5
  %4798 = call i32 @dx.op.binary.i32(i32 40, i32 %4797, i32 %4790)  ; UMin(a,b)
  %4799 = icmp ugt i32 %4796, %4798
  br i1 %4799, label %5394, label %4800

; <label>:4800                                    ; preds = %4748
  br label %4801

; <label>:4801                                    ; preds = %5376, %4800
  %4802 = phi i32 [ %5377, %5376 ], [ %4412, %4800 ]
  %4803 = phi i32 [ %5378, %5376 ], [ %4736, %4800 ]
  %4804 = phi float [ %5379, %5376 ], [ 0.000000e+00, %4800 ]
  %4805 = phi float [ %5380, %5376 ], [ 0.000000e+00, %4800 ]
  %4806 = phi float [ %5381, %5376 ], [ 0.000000e+00, %4800 ]
  %4807 = phi float [ %5382, %5376 ], [ 0.000000e+00, %4800 ]
  %4808 = phi float [ %5383, %5376 ], [ 0.000000e+00, %4800 ]
  %4809 = phi float [ %5384, %5376 ], [ 0.000000e+00, %4800 ]
  %4810 = phi i32 [ %5385, %5376 ], [ 0, %4800 ]
  %4811 = phi float [ %5386, %5376 ], [ 0.000000e+00, %4800 ]
  %4812 = phi float [ %5387, %5376 ], [ 0.000000e+00, %4800 ]
  %4813 = phi float [ %5388, %5376 ], [ 0.000000e+00, %4800 ]
  %4814 = phi i32 [ %5389, %5376 ], [ 1, %4800 ]
  %4815 = phi float [ %5390, %5376 ], [ 1.000000e+00, %4800 ]
  %4816 = phi i32 [ %5391, %5376 ], [ %4796, %4800 ]
  %4817 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.i32 %4817, 2
  %4819 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4782, i32 %4818, i32 %4816)  ; UMad(a,b,c)
  %4820 = shl i32 %4819, 2
  %4821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %37, i32 %4820, i32 undef)  ; BufferLoad(srv,index,wot)
  %4822 = extractvalue %dx.types.ResRet.i32 %4821, 0
  %4823 = shl i32 %4816, 5
  %4824 = sub nsw i32 %4794, %4823
  %4825 = call i32 @dx.op.binary.i32(i32 37, i32 %4824, i32 0)  ; IMax(a,b)
  %4826 = call i32 @dx.op.binary.i32(i32 38, i32 %4825, i32 31)  ; IMin(a,b)
  %4827 = sub nsw i32 1, %4794
  %4828 = add nsw i32 %4827, %4795
  %4829 = call i32 @dx.op.binary.i32(i32 37, i32 %4828, i32 0)  ; IMax(a,b)
  %4830 = call i32 @dx.op.binary.i32(i32 38, i32 %4829, i32 32)  ; IMin(a,b)
  %4831 = and i32 %4830, 31
  %4832 = shl i32 -1, %4831
  %4833 = xor i32 %4832, -1
  %4834 = and i32 %4826, 31
  %4835 = shl i32 %4833, %4834
  %4836 = icmp eq i32 %4830, 32
  %4837 = select i1 %4836, i32 -1, i32 %4835
  %4838 = and i32 %4837, %4822
  %4839 = icmp eq i32 %4838, 0
  br i1 %4839, label %5376, label %4840

; <label>:4840                                    ; preds = %4801
  br label %4841

; <label>:4841                                    ; preds = %4978, %4840
  %4842 = phi i32 [ %4979, %4978 ], [ %4802, %4840 ]
  %4843 = phi i32 [ %4980, %4978 ], [ %4803, %4840 ]
  %4844 = phi float [ %4981, %4978 ], [ %4804, %4840 ]
  %4845 = phi float [ %4982, %4978 ], [ %4805, %4840 ]
  %4846 = phi float [ %4983, %4978 ], [ %4806, %4840 ]
  %4847 = phi float [ %4984, %4978 ], [ %4807, %4840 ]
  %4848 = phi float [ %4985, %4978 ], [ %4808, %4840 ]
  %4849 = phi float [ %4986, %4978 ], [ %4809, %4840 ]
  %4850 = phi i32 [ %4987, %4978 ], [ %4810, %4840 ]
  %4851 = phi float [ %4988, %4978 ], [ %4811, %4840 ]
  %4852 = phi float [ %4989, %4978 ], [ %4812, %4840 ]
  %4853 = phi float [ %4990, %4978 ], [ %4813, %4840 ]
  %4854 = phi i32 [ %4991, %4978 ], [ %4814, %4840 ]
  %4855 = phi float [ %4992, %4978 ], [ %4815, %4840 ]
  %4856 = phi i32 [ %4861, %4978 ], [ %4838, %4840 ]
  %4857 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4856)  ; FirstbitLo(value)
  %4858 = add i32 %4857, %4823
  %4859 = and i32 %4857, 31
  %4860 = shl i32 1, %4859
  %4861 = xor i32 %4860, %4856
  %4862 = mul i32 %4858, 72
  %4863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4862, i32 undef)  ; BufferLoad(srv,index,wot)
  %4864 = extractvalue %dx.types.ResRet.f32 %4863, 0
  %4865 = extractvalue %dx.types.ResRet.f32 %4863, 1
  %4866 = extractvalue %dx.types.ResRet.f32 %4863, 2
  %4867 = add i32 %4862, 12
  %4868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %39, i32 %4867, i32 undef)  ; BufferLoad(srv,index,wot)
  %4869 = extractvalue %dx.types.ResRet.i32 %4868, 0
  %4870 = add i32 %4862, 16
  %4871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4870, i32 undef)  ; BufferLoad(srv,index,wot)
  %4872 = extractvalue %dx.types.ResRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.ResRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.ResRet.f32 %4871, 2
  %4875 = add i32 %4862, 28
  %4876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4875, i32 undef)  ; BufferLoad(srv,index,wot)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = add i32 %4862, 32
  %4879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4878, i32 undef)  ; BufferLoad(srv,index,wot)
  %4880 = extractvalue %dx.types.ResRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.ResRet.f32 %4879, 1
  %4882 = extractvalue %dx.types.ResRet.f32 %4879, 2
  %4883 = extractvalue %dx.types.ResRet.f32 %4879, 3
  %4884 = add i32 %4862, 48
  %4885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4884, i32 undef)  ; BufferLoad(srv,index,wot)
  %4886 = extractvalue %dx.types.ResRet.f32 %4885, 0
  %4887 = extractvalue %dx.types.ResRet.f32 %4885, 1
  %4888 = add i32 %4862, 56
  %4889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4888, i32 undef)  ; BufferLoad(srv,index,wot)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  %4891 = extractvalue %dx.types.ResRet.f32 %4889, 1
  %4892 = add i32 %4862, 64
  %4893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %39, i32 %4892, i32 undef)  ; BufferLoad(srv,index,wot)
  %4894 = extractvalue %dx.types.ResRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.ResRet.f32 %4893, 1
  %4896 = mul i32 %4858, 60
  %4897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4896, i32 undef)  ; BufferLoad(srv,index,wot)
  %4898 = extractvalue %dx.types.ResRet.f32 %4897, 0
  %4899 = extractvalue %dx.types.ResRet.f32 %4897, 1
  %4900 = extractvalue %dx.types.ResRet.f32 %4897, 2
  %4901 = add i32 %4896, 12
  %4902 = add i32 %4896, 48
  %4903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4902, i32 undef)  ; BufferLoad(srv,index,wot)
  %4904 = extractvalue %dx.types.ResRet.f32 %4903, 0
  %4905 = extractvalue %dx.types.ResRet.f32 %4903, 1
  %4906 = extractvalue %dx.types.ResRet.f32 %4903, 2
  %4907 = and i32 %4869, 32767
  %4908 = bitcast float %4864 to i32
  %4909 = bitcast float %4865 to i32
  %4910 = and i32 %4869, 32768
  %4911 = icmp ne i32 %4910, 0
  %4912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.f32 %4912, 3
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.CBufRet.f32 %4914, 2
  %4918 = fsub fast float %4898, %4915
  %4919 = fsub fast float %4899, %4916
  %4920 = fsub fast float %4900, %4917
  %4921 = fsub fast float %155, %4918
  %4922 = fsub fast float %156, %4919
  %4923 = fsub fast float %157, %4920
  %4924 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4901, i32 undef)  ; BufferLoad(srv,index,wot)
  %4925 = extractvalue %dx.types.ResRet.f32 %4924, 0
  %4926 = extractvalue %dx.types.ResRet.f32 %4924, 1
  %4927 = extractvalue %dx.types.ResRet.f32 %4924, 2
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %4925, float %4926, float %4927)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = add i32 %4896, 24
  %4930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4929, i32 undef)  ; BufferLoad(srv,index,wot)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 1
  %4933 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4934 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %4931, float %4932, float %4933)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = add i32 %4896, 36
  %4936 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %38, i32 %4935, i32 undef)  ; BufferLoad(srv,index,wot)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 1
  %4939 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %4937, float %4938, float %4939)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = call float @dx.op.unary.f32(i32 6, float %4928)  ; FAbs(value)
  %4942 = call float @dx.op.unary.f32(i32 6, float %4934)  ; FAbs(value)
  %4943 = call float @dx.op.unary.f32(i32 6, float %4940)  ; FAbs(value)
  %4944 = fsub fast float %4904, %4941
  %4945 = fsub fast float %4905, %4942
  %4946 = fsub fast float %4906, %4943
  %4947 = fmul fast float %4944, %4872
  %4948 = fmul fast float %4945, %4873
  %4949 = fmul fast float %4946, %4874
  %4950 = call float @dx.op.binary.f32(i32 36, float %4948, float %4949)  ; FMin(a,b)
  %4951 = call float @dx.op.binary.f32(i32 36, float %4947, float %4950)  ; FMin(a,b)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4951)  ; Saturate(value)
  %4953 = call float @dx.op.binary.f32(i32 36, float %4855, float %4952)  ; FMin(a,b)
  %4954 = uitofp i1 %4911 to float
  %4955 = select i1 %117, float 1.000000e+00, float 2.000000e+00
  %4956 = fsub fast float %4955, %4954
  %4957 = fmul fast float %4953, %4956
  %4958 = lshr i32 %4842, 8
  %4959 = and i32 %4958, 255
  %4960 = uitofp i32 %4959 to float
  %4961 = fptoui float %4960 to i32
  %4962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %4963 = extractvalue %dx.types.CBufRet.f32 %4962, 1
  %4964 = bitcast float %4963 to i32
  %4965 = lshr i32 %4964, 24
  %4966 = uitofp i32 %4965 to float
  %4967 = fptoui float %4966 to i32
  %4968 = icmp ne i32 %4967, 1
  %4969 = zext i1 %4968 to i32
  %4970 = add i32 %4969, %4961
  %4971 = uitofp i32 %4970 to float
  %4972 = fptoui float %4971 to i32
  %4973 = shl i32 %4972, 8
  %4974 = and i32 %4973, 65280
  %4975 = and i32 %4842, -65281
  %4976 = or i32 %4974, %4975
  %4977 = fcmp fast ogt float %4957, 0.000000e+00
  br i1 %4977, label %4994, label %4978

; <label>:4978                                    ; preds = %5358, %5227, %4841
  %4979 = phi i32 [ %5305, %5227 ], [ %4976, %4841 ], [ %5305, %5358 ]
  %4980 = phi i32 [ %4843, %5227 ], [ %4843, %4841 ], [ %5374, %5358 ]
  %4981 = phi float [ %5291, %5227 ], [ %4844, %4841 ], [ %5291, %5358 ]
  %4982 = phi float [ %5292, %5227 ], [ %4845, %4841 ], [ %5292, %5358 ]
  %4983 = phi float [ %5293, %5227 ], [ %4846, %4841 ], [ %5293, %5358 ]
  %4984 = phi float [ %5352, %5227 ], [ %4847, %4841 ], [ %5352, %5358 ]
  %4985 = phi float [ %5353, %5227 ], [ %4848, %4841 ], [ %5353, %5358 ]
  %4986 = phi float [ %5354, %5227 ], [ %4849, %4841 ], [ %5354, %5358 ]
  %4987 = phi i32 [ %5356, %5227 ], [ %4850, %4841 ], [ %5356, %5358 ]
  %4988 = phi float [ %5309, %5227 ], [ %4851, %4841 ], [ %5309, %5358 ]
  %4989 = phi float [ %5310, %5227 ], [ %4852, %4841 ], [ %5310, %5358 ]
  %4990 = phi float [ %5311, %5227 ], [ %4853, %4841 ], [ %5311, %5358 ]
  %4991 = phi i32 [ 0, %5227 ], [ %4854, %4841 ], [ 0, %5358 ]
  %4992 = phi float [ %5294, %5227 ], [ %4855, %4841 ], [ %5294, %5358 ]
  %4993 = icmp eq i32 %4856, %4860
  br i1 %4993, label %5375, label %4841

; <label>:4994                                    ; preds = %4841
  %4995 = extractvalue %dx.types.CBufRet.f32 %4962, 0
  %4996 = bitcast float %4995 to i32
  %4997 = lshr i32 %4996, 8
  %4998 = and i32 %4997, 255
  %4999 = uitofp i32 %4998 to float
  %5000 = fptoui float %4999 to i32
  %5001 = and i32 %5000, 2
  %5002 = icmp eq i32 %5001, 0
  br i1 %5002, label %5009, label %5003

; <label>:5003                                    ; preds = %4994
  %5004 = call float @dx.op.dot3.f32(i32 55, float %155, float %156, float %157, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5005 = call float @dx.op.unary.f32(i32 25, float %5004)  ; Rsqrt(value)
  %5006 = fmul fast float %5005, %155
  %5007 = fmul fast float %5005, %156
  %5008 = fmul fast float %5005, %157
  br label %5009

; <label>:5009                                    ; preds = %5003, %4994
  %5010 = phi float [ %5006, %5003 ], [ %2596, %4994 ]
  %5011 = phi float [ %5007, %5003 ], [ %2597, %4994 ]
  %5012 = phi float [ %5008, %5003 ], [ %2598, %4994 ]
  %5013 = icmp ne i32 %4908, -1
  %5014 = fcmp oeq float %4913, 0.000000e+00
  %5015 = and i1 %5014, %5013
  br i1 %5015, label %5016, label %5140

; <label>:5016                                    ; preds = %5009
  %5017 = fsub fast float -0.000000e+00, %4925
  %5018 = fsub fast float -0.000000e+00, %4926
  %5019 = fsub fast float -0.000000e+00, %4927
  %5020 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5017, float %5018, float %5019)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = fsub fast float -0.000000e+00, %5020
  %5022 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %5017, float %5018, float %5019)  ; Dot3(ax,ay,az,bx,by,bz)
  %5023 = fadd fast float %5022, %4887
  %5024 = fadd fast float %4886, %5022
  %5025 = fsub fast float -0.000000e+00, %5024
  %5026 = fcmp ogt float %5020, -0.000000e+00
  %5027 = select i1 %5026, float %5025, float %5023
  %5028 = call float @dx.op.unary.f32(i32 6, float %5021)  ; FAbs(value)
  %5029 = fdiv fast float 1.000000e+00, %5028
  %5030 = fmul fast float %5027, %5029
  %5031 = call float @dx.op.binary.f32(i32 35, float %5030, float 0.000000e+00)  ; FMax(a,b)
  %5032 = fsub fast float -0.000000e+00, %4931
  %5033 = fsub fast float -0.000000e+00, %4932
  %5034 = fsub fast float -0.000000e+00, %4933
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fsub fast float -0.000000e+00, %5035
  %5037 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %5032, float %5033, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = fadd fast float %5037, %4891
  %5039 = fadd fast float %4890, %5037
  %5040 = fsub fast float -0.000000e+00, %5039
  %5041 = fcmp ogt float %5035, -0.000000e+00
  %5042 = select i1 %5041, float %5040, float %5038
  %5043 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5044 = fdiv fast float 1.000000e+00, %5043
  %5045 = fmul fast float %5042, %5044
  %5046 = call float @dx.op.binary.f32(i32 35, float %5045, float 0.000000e+00)  ; FMax(a,b)
  %5047 = fsub fast float -0.000000e+00, %4937
  %5048 = fsub fast float -0.000000e+00, %4938
  %5049 = fsub fast float -0.000000e+00, %4939
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5010, float %5011, float %5012, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = fsub fast float -0.000000e+00, %5050
  %5052 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4922, float %4923, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = fadd fast float %5052, %4895
  %5054 = fadd fast float %4894, %5052
  %5055 = fsub fast float -0.000000e+00, %5054
  %5056 = fcmp ogt float %5050, -0.000000e+00
  %5057 = select i1 %5056, float %5055, float %5053
  %5058 = call float @dx.op.unary.f32(i32 6, float %5051)  ; FAbs(value)
  %5059 = fdiv fast float 1.000000e+00, %5058
  %5060 = fmul fast float %5057, %5059
  %5061 = call float @dx.op.binary.f32(i32 35, float %5060, float 0.000000e+00)  ; FMax(a,b)
  %5062 = call float @dx.op.binary.f32(i32 36, float %5046, float %5061)  ; FMin(a,b)
  %5063 = call float @dx.op.binary.f32(i32 36, float %5031, float %5062)  ; FMin(a,b)
  %5064 = fmul fast float %5063, %5010
  %5065 = fmul fast float %5063, %5011
  %5066 = fmul fast float %5063, %5012
  %5067 = fadd fast float %5064, %155
  %5068 = fadd fast float %5065, %156
  %5069 = fadd fast float %5066, %157
  %5070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5071 = extractvalue %dx.types.CBufRet.f32 %5070, 0
  %5072 = extractvalue %dx.types.CBufRet.f32 %5070, 1
  %5073 = extractvalue %dx.types.CBufRet.f32 %5070, 2
  %5074 = fadd fast float %5067, %5071
  %5075 = fadd fast float %5068, %5072
  %5076 = fadd fast float %5069, %5073
  %5077 = fcmp fast olt float %5031, %5046
  %5078 = fcmp fast olt float %5031, %5061
  %5079 = and i1 %5077, %5078
  br i1 %5079, label %5083, label %5080

; <label>:5080                                    ; preds = %5016
  %5081 = fcmp fast olt float %5046, %5061
  br i1 %5081, label %5082, label %5083

; <label>:5082                                    ; preds = %5080
  br label %5083

; <label>:5083                                    ; preds = %5082, %5080, %5016
  %5084 = phi float [ 0.000000e+00, %5082 ], [ 0.000000e+00, %5080 ], [ 1.000000e+00, %5016 ]
  %5085 = phi float [ 1.000000e+00, %5082 ], [ 0.000000e+00, %5080 ], [ 0.000000e+00, %5016 ]
  %5086 = phi float [ 0.000000e+00, %5082 ], [ 1.000000e+00, %5080 ], [ 0.000000e+00, %5016 ]
  %5087 = phi float [ %4931, %5082 ], [ %4937, %5080 ], [ %4925, %5016 ]
  %5088 = phi float [ %4932, %5082 ], [ %4938, %5080 ], [ %4926, %5016 ]
  %5089 = phi float [ %4933, %5082 ], [ %4939, %5080 ], [ %4927, %5016 ]
  %5090 = call float @dx.op.unary.f32(i32 6, float %5089)  ; FAbs(value)
  %5091 = fcmp fast olt float %5090, 0x3FE276C8C0000000
  %5092 = select i1 %5091, float 0.000000e+00, float 1.000000e+00
  %5093 = select i1 %5091, float 1.000000e+00, float 0.000000e+00
  %5094 = fmul fast float %5093, %5088
  %5095 = fmul fast float %5092, %5089
  %5096 = fsub fast float %5094, %5095
  %5097 = fmul fast float %5087, %5093
  %5098 = fsub fast float -0.000000e+00, %5097
  %5099 = fmul fast float %5092, %5087
  %5100 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5098, float %5099, float %5096, float %5098, float %5099)  ; Dot3(ax,ay,az,bx,by,bz)
  %5101 = call float @dx.op.unary.f32(i32 25, float %5100)  ; Rsqrt(value)
  %5102 = fmul fast float %5096, %5101
  %5103 = fmul fast float %5101, %5098
  %5104 = fmul fast float %5099, %5101
  %5105 = fmul fast float %5104, %5088
  %5106 = fmul fast float %5103, %5089
  %5107 = fsub fast float %5105, %5106
  %5108 = fmul fast float %5102, %5089
  %5109 = fmul fast float %5104, %5087
  %5110 = fsub fast float %5108, %5109
  %5111 = fmul fast float %5103, %5087
  %5112 = fmul fast float %5102, %5088
  %5113 = fsub fast float %5111, %5112
  %5114 = call float @dx.op.dot3.f32(i32 55, float %5107, float %5110, float %5113, float %5107, float %5110, float %5113)  ; Dot3(ax,ay,az,bx,by,bz)
  %5115 = call float @dx.op.unary.f32(i32 25, float %5114)  ; Rsqrt(value)
  %5116 = fmul fast float %5107, %5115
  %5117 = fmul fast float %5110, %5115
  %5118 = fmul fast float %5113, %5115
  %5119 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5102, float %5103, float %5104)  ; Dot3(ax,ay,az,bx,by,bz)
  %5120 = call float @dx.op.dot3.f32(i32 55, float %5074, float %5075, float %5076, float %5116, float %5117, float %5118)  ; Dot3(ax,ay,az,bx,by,bz)
  %5121 = fmul fast float %5119, 0x3FA99999A0000000
  %5122 = fmul fast float %5120, 0x3FA99999A0000000
  %5123 = call float @dx.op.unary.f32(i32 22, float %5121)  ; Frc(value)
  %5124 = call float @dx.op.unary.f32(i32 22, float %5122)  ; Frc(value)
  %5125 = fadd fast float %5123, 0xBFB99999A0000000
  %5126 = fadd fast float %5124, 0xBFB99999A0000000
  %5127 = call float @dx.op.unary.f32(i32 6, float %5125)  ; FAbs(value)
  %5128 = call float @dx.op.unary.f32(i32 6, float %5126)  ; FAbs(value)
  %5129 = fmul fast float %5127, 1.000000e+01
  %5130 = fmul fast float %5128, 1.000000e+01
  %5131 = call float @dx.op.binary.f32(i32 36, float %5129, float %5130)  ; FMin(a,b)
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = fsub fast float 1.000000e+00, %5132
  %5134 = fmul fast float %5133, %5084
  %5135 = fmul fast float %5133, %5085
  %5136 = fmul fast float %5133, %5086
  %5137 = fsub fast float %5067, %4864
  %5138 = fsub fast float %5068, %4865
  %5139 = fsub fast float %5069, %4866
  br label %5147

; <label>:5140                                    ; preds = %5009
  %5141 = fmul fast float %5010, 8.096000e+03
  %5142 = fmul fast float %5011, 8.096000e+03
  %5143 = fmul fast float %5012, 8.096000e+03
  %5144 = fadd fast float %5141, %155
  %5145 = fadd fast float %5142, %156
  %5146 = fadd fast float %5143, %157
  br label %5147

; <label>:5147                                    ; preds = %5140, %5083
  %5148 = phi float [ %5010, %5140 ], [ %5137, %5083 ]
  %5149 = phi float [ %5011, %5140 ], [ %5138, %5083 ]
  %5150 = phi float [ %5012, %5140 ], [ %5139, %5083 ]
  %5151 = phi float [ %5144, %5140 ], [ %5067, %5083 ]
  %5152 = phi float [ %5145, %5140 ], [ %5068, %5083 ]
  %5153 = phi float [ %5146, %5140 ], [ %5069, %5083 ]
  %5154 = phi float [ 0.000000e+00, %5140 ], [ %5134, %5083 ]
  %5155 = phi float [ 0.000000e+00, %5140 ], [ %5135, %5083 ]
  %5156 = phi float [ 0.000000e+00, %5140 ], [ %5136, %5083 ]
  %5157 = fcmp fast olt float %4883, 1.000000e+00
  br i1 %5157, label %5158, label %5189, !dx.controlflow.hints !132

; <label>:5158                                    ; preds = %5147
  %5159 = fmul fast float %5150, %4881
  %5160 = fmul fast float %5149, %4882
  %5161 = fsub fast float %5159, %5160
  %5162 = fmul fast float %5148, %4882
  %5163 = fmul fast float %5150, %4880
  %5164 = fsub fast float %5162, %5163
  %5165 = fmul fast float %5149, %4880
  %5166 = fmul fast float %5148, %4881
  %5167 = fsub fast float %5165, %5166
  %5168 = fmul fast float %5161, 2.000000e+00
  %5169 = fmul fast float %5164, 2.000000e+00
  %5170 = fmul fast float %5167, 2.000000e+00
  %5171 = fmul fast float %5168, %4883
  %5172 = fmul fast float %5169, %4883
  %5173 = fmul fast float %5170, %4883
  %5174 = fmul fast float %5170, %4881
  %5175 = fmul fast float %5169, %4882
  %5176 = fmul fast float %5168, %4882
  %5177 = fmul fast float %5170, %4880
  %5178 = fmul fast float %5169, %4880
  %5179 = fmul fast float %5168, %4881
  %5180 = fadd fast float %5174, %5148
  %5181 = fadd fast float %5180, %5171
  %5182 = fsub fast float %5181, %5175
  %5183 = fsub fast float %5149, %5177
  %5184 = fadd fast float %5183, %5172
  %5185 = fadd fast float %5184, %5176
  %5186 = fadd fast float %5173, %5150
  %5187 = fsub fast float %5186, %5179
  %5188 = fadd fast float %5187, %5178
  br label %5189

; <label>:5189                                    ; preds = %5158, %5147
  %5190 = phi float [ %5182, %5158 ], [ %5148, %5147 ]
  %5191 = phi float [ %5185, %5158 ], [ %5149, %5147 ]
  %5192 = phi float [ %5188, %5158 ], [ %5150, %5147 ]
  br i1 %5015, label %5193, label %5224

; <label>:5193                                    ; preds = %5189
  %5194 = fmul fast float %2542, 0x400187C840000000
  %5195 = fadd fast float %5194, 0xC00EFC2120000000
  %5196 = fmul fast float %5195, %2542
  %5197 = fadd fast float %5196, 0x3FE5D16340000000
  %5198 = fmul fast float %5197, %2542
  %5199 = fadd fast float %5198, 1.000000e+00
  %5200 = call float @dx.op.unary.f32(i32 7, float %5199)  ; Saturate(value)
  %5201 = fsub fast float %5151, %155
  %5202 = fsub fast float %5152, %156
  %5203 = fsub fast float %5153, %157
  %5204 = fsub fast float %5151, %4864
  %5205 = fsub fast float %5152, %4865
  %5206 = fsub fast float %5153, %4866
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5201, float %5202, float %5203, float %5201, float %5202, float %5203)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = call float @dx.op.dot3.f32(i32 55, float %5204, float %5205, float %5206, float %5204, float %5205, float %5206)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = fadd fast float %5208, 0x3EE4F8B580000000
  %5210 = fdiv fast float %5207, %5209
  %5211 = bitcast float %5210 to i32
  %5212 = ashr i32 %5211, 1
  %5213 = add nsw i32 %5212, 532487669
  %5214 = bitcast i32 %5213 to float
  %5215 = fmul fast float %5214, %5200
  %5216 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5217 = fmul fast float %5216, 0x4009981AE0000000
  %5218 = fsub fast float 0x40111BBD80000000, %5217
  %5219 = fmul fast float %5218, %5216
  %5220 = fadd fast float %5219, 0xC0009F6020000000
  %5221 = fmul fast float %5220, %5216
  %5222 = fadd fast float %5221, 1.000000e+00
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  br label %5227

; <label>:5224                                    ; preds = %5189
  %5225 = icmp ne i32 %4909, -1
  %5226 = zext i1 %5225 to i32
  br label %5227

; <label>:5227                                    ; preds = %5224, %5193
  %5228 = phi float [ %2542, %5224 ], [ %5223, %5193 ]
  %5229 = phi i32 [ %5226, %5224 ], [ 0, %5193 ]
  %5230 = fmul float %5228, 5.000000e+00
  %5231 = fsub float 5.000000e+00, %5230
  %5232 = icmp ne i32 %5229, 0
  %5233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5234 = extractvalue %dx.types.CBufRet.f32 %5233, 3
  %5235 = fadd fast float %5234, %5231
  %5236 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5235)  ; FMax(a,b)
  %5237 = call float @dx.op.unary.f32(i32 6, float %5190)  ; FAbs(value)
  %5238 = call float @dx.op.unary.f32(i32 6, float %5191)  ; FAbs(value)
  %5239 = fadd fast float %5238, %5237
  %5240 = call float @dx.op.unary.f32(i32 6, float %5192)  ; FAbs(value)
  %5241 = fadd fast float %5239, %5240
  %5242 = fcmp fast oeq float %5241, 0.000000e+00
  %5243 = fdiv fast float 1.000000e+00, %5241
  %5244 = select i1 %5242, float 1.000000e+00, float %5243
  %5245 = fmul fast float %5244, %5190
  %5246 = fmul fast float %5244, %5191
  %5247 = call float @dx.op.unary.f32(i32 6, float %5246)  ; FAbs(value)
  %5248 = call float @dx.op.unary.f32(i32 6, float %5245)  ; FAbs(value)
  %5249 = fsub fast float 1.000000e+00, %5247
  %5250 = fsub fast float 1.000000e+00, %5248
  %5251 = fcmp fast oge float %5245, 0.000000e+00
  %5252 = fcmp fast oge float %5246, 0.000000e+00
  %5253 = select i1 %5251, float 1.000000e+00, float -1.000000e+00
  %5254 = select i1 %5252, float 1.000000e+00, float -1.000000e+00
  %5255 = fcmp fast ole float %5192, 0.000000e+00
  %5256 = fmul fast float %5253, %5249
  %5257 = fmul fast float %5254, %5250
  %5258 = select i1 %5255, float %5256, float %5245
  %5259 = select i1 %5255, float %5257, float %5246
  %5260 = fmul fast float %5258, 5.000000e-01
  %5261 = fmul fast float %5259, 5.000000e-01
  %5262 = fadd fast float %5260, 5.000000e-01
  %5263 = fadd fast float %5261, 5.000000e-01
  %5264 = uitofp i32 %4907 to float
  %5265 = call float @dx.op.binary.f32(i32 36, float %5236, float 3.000000e+00)  ; FMin(a,b)
  %5266 = fadd fast float %5265, 2.000000e+00
  %5267 = call float @dx.op.unary.f32(i32 21, float %5266)  ; Exp(value)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5233, 1
  %5269 = fmul fast float %5268, %5267
  %5270 = fmul fast float %5269, 2.000000e+00
  %5271 = fsub fast float 1.000000e+00, %5270
  %5272 = fmul fast float %5262, %5271
  %5273 = fmul fast float %5263, %5271
  %5274 = fadd fast float %5272, %5269
  %5275 = fadd fast float %5273, %5269
  %5276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %61, float %5274, float %5275, float %5264, float undef, i32 0, i32 0, i32 undef, float %5236)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.ResRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.ResRet.f32 %5276, 2
  %5280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5281 = extractvalue %dx.types.CBufRet.f32 %5280, 3
  %5282 = fmul fast float %5281, %4877
  %5283 = call float @dx.op.binary.f32(i32 36, float %4749, float %5282)  ; FMin(a,b)
  %5284 = select i1 %5232, float %5283, float %5282
  %5285 = fmul fast float %5277, %4957
  %5286 = fmul fast float %5285, %5284
  %5287 = fmul fast float %5278, %4957
  %5288 = fmul fast float %5287, %5284
  %5289 = fmul fast float %5279, %4957
  %5290 = fmul fast float %5289, %5284
  %5291 = fadd fast float %5286, %4844
  %5292 = fadd fast float %5288, %4845
  %5293 = fadd fast float %5290, %4846
  %5294 = fsub fast float %4855, %4957
  %5295 = and i32 %4972, 255
  %5296 = uitofp i32 %5295 to float
  %5297 = fptoui float %5296 to i32
  %5298 = icmp eq i32 %4967, 1
  %5299 = zext i1 %5298 to i32
  %5300 = add i32 %5299, %5297
  %5301 = uitofp i32 %5300 to float
  %5302 = fptoui float %5301 to i32
  %5303 = shl i32 %5302, 8
  %5304 = and i32 %5303, 65280
  %5305 = or i32 %5304, %4975
  %5306 = fmul fast float %5154, %4957
  %5307 = fmul fast float %5155, %4957
  %5308 = fmul fast float %5156, %4957
  %5309 = fadd fast float %5306, %4851
  %5310 = fadd fast float %5307, %4852
  %5311 = fadd fast float %5308, %4853
  %5312 = fmul fast float %5264, 0x3FE3C6EF40000000
  %5313 = call float @dx.op.unary.f32(i32 22, float %5312)  ; Frc(value)
  %5314 = fadd fast float %5313, 0x3FE5555560000000
  %5315 = fadd fast float %5313, 0x3FD5555560000000
  %5316 = fsub fast float -0.000000e+00, %5313
  %5317 = fsub fast float -0.000000e+00, %5314
  %5318 = fsub fast float -0.000000e+00, %5315
  %5319 = fcmp fast oge float %5313, %5316
  %5320 = fcmp fast oge float %5314, %5317
  %5321 = fcmp fast oge float %5315, %5318
  %5322 = call float @dx.op.unary.f32(i32 6, float %5313)  ; FAbs(value)
  %5323 = call float @dx.op.unary.f32(i32 6, float %5314)  ; FAbs(value)
  %5324 = call float @dx.op.unary.f32(i32 6, float %5315)  ; FAbs(value)
  %5325 = call float @dx.op.unary.f32(i32 22, float %5322)  ; Frc(value)
  %5326 = call float @dx.op.unary.f32(i32 22, float %5323)  ; Frc(value)
  %5327 = call float @dx.op.unary.f32(i32 22, float %5324)  ; Frc(value)
  %5328 = fsub fast float -0.000000e+00, %5325
  %5329 = fsub fast float -0.000000e+00, %5326
  %5330 = fsub fast float -0.000000e+00, %5327
  %5331 = select i1 %5319, float %5325, float %5328
  %5332 = select i1 %5320, float %5326, float %5329
  %5333 = select i1 %5321, float %5327, float %5330
  %5334 = fmul fast float %5331, 6.000000e+00
  %5335 = fmul fast float %5332, 6.000000e+00
  %5336 = fmul fast float %5333, 6.000000e+00
  %5337 = fadd fast float %5334, -3.000000e+00
  %5338 = fadd fast float %5335, -3.000000e+00
  %5339 = fadd fast float %5336, -3.000000e+00
  %5340 = call float @dx.op.unary.f32(i32 6, float %5337)  ; FAbs(value)
  %5341 = call float @dx.op.unary.f32(i32 6, float %5338)  ; FAbs(value)
  %5342 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5343 = fadd fast float %5340, -1.000000e+00
  %5344 = fadd fast float %5341, -1.000000e+00
  %5345 = fadd fast float %5342, -1.000000e+00
  %5346 = call float @dx.op.unary.f32(i32 7, float %5343)  ; Saturate(value)
  %5347 = call float @dx.op.unary.f32(i32 7, float %5344)  ; Saturate(value)
  %5348 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5349 = fmul fast float %5346, %4957
  %5350 = fmul fast float %5347, %4957
  %5351 = fmul fast float %5348, %4957
  %5352 = fadd fast float %5349, %4847
  %5353 = fadd fast float %5350, %4848
  %5354 = fadd fast float %5351, %4849
  %5355 = icmp eq i32 %4907, 0
  %5356 = select i1 %5355, i32 1, i32 %4850
  %5357 = icmp eq i32 %4854, 0
  br i1 %5357, label %4978, label %5358

; <label>:5358                                    ; preds = %5227
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = bitcast float %5360 to i32
  %5362 = lshr i32 %5361, 8
  %5363 = and i32 %5362, 255
  %5364 = uitofp i32 %5363 to float
  %5365 = fptoui float %5364 to i32
  %5366 = icmp eq i32 %5365, 16
  %5367 = bitcast float %5282 to i32
  %5368 = select i1 %5366, i32 %5367, i32 %4843
  %5369 = icmp eq i32 %5365, 17
  %5370 = bitcast float %4749 to i32
  %5371 = select i1 %5369, i32 %5370, i32 %5368
  %5372 = icmp eq i32 %5365, 18
  %5373 = bitcast float %5284 to i32
  %5374 = select i1 %5372, i32 %5373, i32 %5371
  br label %4978

; <label>:5375                                    ; preds = %4978
  br label %5376

; <label>:5376                                    ; preds = %5375, %4801
  %5377 = phi i32 [ %4802, %4801 ], [ %4979, %5375 ]
  %5378 = phi i32 [ %4803, %4801 ], [ %4980, %5375 ]
  %5379 = phi float [ %4804, %4801 ], [ %4981, %5375 ]
  %5380 = phi float [ %4805, %4801 ], [ %4982, %5375 ]
  %5381 = phi float [ %4806, %4801 ], [ %4983, %5375 ]
  %5382 = phi float [ %4807, %4801 ], [ %4984, %5375 ]
  %5383 = phi float [ %4808, %4801 ], [ %4985, %5375 ]
  %5384 = phi float [ %4809, %4801 ], [ %4986, %5375 ]
  %5385 = phi i32 [ %4810, %4801 ], [ %4987, %5375 ]
  %5386 = phi float [ %4811, %4801 ], [ %4988, %5375 ]
  %5387 = phi float [ %4812, %4801 ], [ %4989, %5375 ]
  %5388 = phi float [ %4813, %4801 ], [ %4990, %5375 ]
  %5389 = phi i32 [ %4814, %4801 ], [ %4991, %5375 ]
  %5390 = phi float [ %4815, %4801 ], [ %4992, %5375 ]
  %5391 = add i32 %4816, 1
  %5392 = icmp ugt i32 %5391, %4798
  br i1 %5392, label %5393, label %4801, !llvm.loop !133

; <label>:5393                                    ; preds = %5376
  br label %5394

; <label>:5394                                    ; preds = %5393, %4748
  %5395 = phi i32 [ %4412, %4748 ], [ %5377, %5393 ]
  %5396 = phi i32 [ %4736, %4748 ], [ %5378, %5393 ]
  %5397 = phi float [ 0.000000e+00, %4748 ], [ %5379, %5393 ]
  %5398 = phi float [ 0.000000e+00, %4748 ], [ %5380, %5393 ]
  %5399 = phi float [ 0.000000e+00, %4748 ], [ %5381, %5393 ]
  %5400 = phi float [ 0.000000e+00, %4748 ], [ %5382, %5393 ]
  %5401 = phi float [ 0.000000e+00, %4748 ], [ %5383, %5393 ]
  %5402 = phi float [ 0.000000e+00, %4748 ], [ %5384, %5393 ]
  %5403 = phi i32 [ 0, %4748 ], [ %5385, %5393 ]
  %5404 = phi float [ 0.000000e+00, %4748 ], [ %5386, %5393 ]
  %5405 = phi float [ 0.000000e+00, %4748 ], [ %5387, %5393 ]
  %5406 = phi float [ 0.000000e+00, %4748 ], [ %5388, %5393 ]
  %5407 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5408 = select i1 %2584, float 0.000000e+00, float %5397
  %5409 = select i1 %2584, float %5407, float %5398
  %5410 = select i1 %2584, float 0.000000e+00, float %5399
  %5411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5412 = extractvalue %dx.types.CBufRet.f32 %5411, 0
  %5413 = bitcast float %5412 to i32
  %5414 = lshr i32 %5413, 8
  %5415 = and i32 %5414, 255
  %5416 = uitofp i32 %5415 to float
  %5417 = fptoui float %5416 to i32
  %5418 = icmp eq i32 %5417, 13
  br i1 %5418, label %5419, label %5439

; <label>:5419                                    ; preds = %5394
  %5420 = fadd fast float %5400, 1.000000e+00
  %5421 = fadd fast float %5401, 1.000000e+00
  %5422 = fadd fast float %5402, 1.000000e+00
  %5423 = fmul fast float %5420, 5.000000e-01
  %5424 = fmul fast float %5421, 5.000000e-01
  %5425 = fmul fast float %5422, 5.000000e-01
  %5426 = call float @dx.op.unary.f32(i32 7, float %5423)  ; Saturate(value)
  %5427 = call float @dx.op.unary.f32(i32 7, float %5424)  ; Saturate(value)
  %5428 = call float @dx.op.unary.f32(i32 7, float %5425)  ; Saturate(value)
  %5429 = fmul fast float %5426, 1.023000e+03
  %5430 = fmul fast float %5427, 1.023000e+03
  %5431 = fmul fast float %5428, 1.023000e+03
  %5432 = fptoui float %5429 to i32
  %5433 = fptoui float %5430 to i32
  %5434 = fptoui float %5431 to i32
  %5435 = shl i32 %5433, 10
  %5436 = or i32 %5435, %5432
  %5437 = shl i32 %5434, 20
  %5438 = or i32 %5436, %5437
  br label %5439

; <label>:5439                                    ; preds = %5419, %5394
  %5440 = phi i32 [ %5438, %5419 ], [ %5396, %5394 ]
  %5441 = icmp eq i32 %5417, 14
  %5442 = select i1 %5441, i32 %5403, i32 %5440
  %5443 = icmp eq i32 %5417, 22
  br i1 %5443, label %5444, label %5464

; <label>:5444                                    ; preds = %5439
  %5445 = fadd fast float %5404, 1.000000e+00
  %5446 = fadd fast float %5405, 1.000000e+00
  %5447 = fadd fast float %5406, 1.000000e+00
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

; <label>:5464                                    ; preds = %5444, %5439
  %5465 = phi i32 [ %5463, %5444 ], [ %5442, %5439 ]
  %5466 = fcmp fast olt float %4737, 0.000000e+00
  %5467 = call float @dx.op.unary.f32(i32 6, float %4737)  ; FAbs(value)
  %5468 = fmul fast float %5467, %4738
  %5469 = fmul fast float %5467, %4739
  %5470 = fmul fast float %5467, %4740
  %5471 = select i1 %5466, float %4738, float %5468
  %5472 = select i1 %5466, float %4739, float %5469
  %5473 = select i1 %5466, float %4740, float %5470
  %5474 = fsub fast float 1.000000e+00, %5467
  %5475 = call float @dx.op.unary.f32(i32 7, float %5474)  ; Saturate(value)
  %5476 = fmul fast float %5475, %5408
  %5477 = fmul fast float %5475, %5409
  %5478 = fmul fast float %5475, %5410
  %5479 = fadd fast float %5471, %5476
  %5480 = fadd fast float %5472, %5477
  %5481 = fadd fast float %5473, %5478
  br label %5482

; <label>:5482                                    ; preds = %5464, %4735
  %5483 = phi i32 [ %4412, %4735 ], [ %5395, %5464 ]
  %5484 = phi i32 [ %4736, %4735 ], [ %5465, %5464 ]
  %5485 = phi float [ %4738, %4735 ], [ %5479, %5464 ]
  %5486 = phi float [ %4739, %4735 ], [ %5480, %5464 ]
  %5487 = phi float [ %4740, %4735 ], [ %5481, %5464 ]
  %5488 = fmul fast float %4414, %3697
  %5489 = fmul fast float %4415, %3697
  %5490 = fmul fast float %4416, %3697
  %5491 = fmul fast float %5485, %2499
  %5492 = fmul fast float %5486, %2500
  %5493 = fmul fast float %5487, %3694
  %5494 = fadd fast float %5491, %2371
  %5495 = fadd fast float %5492, %2372
  %5496 = fadd fast float %5493, %2373
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 3
  %5499 = fcmp fast oeq float %5498, 0.000000e+00
  br i1 %5499, label %7325, label %5500

; <label>:5500                                    ; preds = %5482
  %5501 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5502 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5503 = extractvalue %dx.types.CBufRet.f32 %5497, 2
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5507 = extractvalue %dx.types.CBufRet.f32 %5504, 2
  %5508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5509 = extractvalue %dx.types.CBufRet.f32 %5508, 0
  %5510 = extractvalue %dx.types.CBufRet.f32 %5508, 1
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5505, float %5506, float %5507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = select i1 %2584, float %5509, float %5505
  %5513 = select i1 %2584, float %5511, float %5506
  %5514 = select i1 %2584, float %5510, float %5507
  %5515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5515, 0
  %5517 = extractvalue %dx.types.CBufRet.f32 %5515, 1
  %5518 = extractvalue %dx.types.CBufRet.f32 %5515, 2
  %5519 = extractvalue %dx.types.CBufRet.f32 %5515, 3
  %5520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %5521 = extractvalue %dx.types.CBufRet.f32 %5520, 0
  %5522 = extractvalue %dx.types.CBufRet.f32 %5520, 1
  %5523 = extractvalue %dx.types.CBufRet.f32 %5520, 2
  %5524 = extractvalue %dx.types.CBufRet.f32 %5520, 3
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.CBufRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5529 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5530 = fmul fast float %5516, %155
  %5531 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5517, float %5530)  ; FMad(a,b,c)
  %5532 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5518, float %5531)  ; FMad(a,b,c)
  %5533 = fadd fast float %5532, %5519
  %5534 = fmul fast float %5521, %155
  %5535 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5522, float %5534)  ; FMad(a,b,c)
  %5536 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5523, float %5535)  ; FMad(a,b,c)
  %5537 = fadd fast float %5536, %5524
  %5538 = fmul fast float %5526, %155
  %5539 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5527, float %5538)  ; FMad(a,b,c)
  %5540 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5528, float %5539)  ; FMad(a,b,c)
  %5541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %5542 = extractvalue %dx.types.CBufRet.f32 %5541, 0
  %5543 = extractvalue %dx.types.CBufRet.f32 %5541, 1
  %5544 = extractvalue %dx.types.CBufRet.f32 %5541, 3
  %5545 = fmul fast float %5544, %5533
  %5546 = fmul fast float %5544, %5537
  %5547 = fadd fast float %5545, %5542
  %5548 = fadd fast float %5546, %5543
  %5549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %5550 = extractvalue %dx.types.CBufRet.f32 %5549, 0
  %5551 = extractvalue %dx.types.CBufRet.f32 %5549, 1
  %5552 = extractvalue %dx.types.CBufRet.f32 %5549, 3
  %5553 = fmul fast float %5552, %5533
  %5554 = fmul fast float %5552, %5537
  %5555 = fadd fast float %5553, %5550
  %5556 = fadd fast float %5554, %5551
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 1
  %5559 = fsub fast float -0.000000e+00, %5529
  %5560 = fsub fast float %5559, %5540
  %5561 = fadd fast float %5560, %5558
  %5562 = extractvalue %dx.types.CBufRet.f32 %5557, 2
  %5563 = fmul fast float %5561, %5562
  %5564 = fsub fast float 1.000000e+00, %5563
  %5565 = call float @dx.op.unary.f32(i32 7, float %5564)  ; Saturate(value)
  %5566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %5567 = extractvalue %dx.types.CBufRet.f32 %5566, 0
  %5568 = extractvalue %dx.types.CBufRet.f32 %5566, 1
  %5569 = fsub fast float %5555, %5567
  %5570 = fsub fast float %5556, %5568
  %5571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %5572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %5573 = extractvalue %dx.types.CBufRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.CBufRet.f32 %5572, 1
  %5575 = fsub fast float %5547, %5573
  %5576 = fsub fast float %5548, %5574
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %5579 = extractvalue %dx.types.CBufRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.CBufRet.f32 %5578, 1
  %5581 = fsub fast float %5533, %5579
  %5582 = fsub fast float %5537, %5580
  %5583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = bitcast float %5585 to i32
  %5587 = lshr i32 %5586, 8
  %5588 = and i32 %5587, 255
  %5589 = uitofp i32 %5588 to float
  %5590 = fptoui float %5589 to i32
  %5591 = and i32 %5590, -2
  %5592 = icmp eq i32 %5591, 10
  br i1 %5592, label %5593, label %5663

; <label>:5593                                    ; preds = %5500
  %5594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5595 = extractvalue %dx.types.CBufRet.f32 %5594, 0
  %5596 = fcmp fast olt float %5581, 0.000000e+00
  %5597 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5598 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5599 = select i1 %5596, float %5597, float %5598
  %5600 = fmul fast float %5599, %5581
  %5601 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5602 = fcmp fast olt float %5582, 0.000000e+00
  %5603 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5604 = extractvalue %dx.types.CBufRet.f32 %5583, 3
  %5605 = select i1 %5602, float %5603, float %5604
  %5606 = fmul fast float %5605, %5582
  %5607 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5608 = call float @dx.op.binary.f32(i32 35, float %5601, float %5607)  ; FMax(a,b)
  %5609 = fsub fast float %5595, %5608
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, %5565
  %5612 = fcmp fast olt float %5575, 0.000000e+00
  %5613 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5614 = extractvalue %dx.types.CBufRet.f32 %5577, 2
  %5615 = select i1 %5612, float %5613, float %5614
  %5616 = fmul fast float %5615, %5575
  %5617 = call float @dx.op.unary.f32(i32 6, float %5616)  ; FAbs(value)
  %5618 = fcmp fast olt float %5576, 0.000000e+00
  %5619 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5620 = extractvalue %dx.types.CBufRet.f32 %5577, 3
  %5621 = select i1 %5618, float %5619, float %5620
  %5622 = fmul fast float %5621, %5576
  %5623 = call float @dx.op.unary.f32(i32 6, float %5622)  ; FAbs(value)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5617, float %5623)  ; FMax(a,b)
  %5625 = fsub fast float %5595, %5624
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = fmul fast float %5626, %5565
  %5628 = fcmp fast olt float %5569, 0.000000e+00
  %5629 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5630 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5631 = select i1 %5628, float %5629, float %5630
  %5632 = fmul fast float %5631, %5569
  %5633 = call float @dx.op.unary.f32(i32 6, float %5632)  ; FAbs(value)
  %5634 = fcmp fast olt float %5570, 0.000000e+00
  %5635 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5636 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5637 = select i1 %5634, float %5635, float %5636
  %5638 = fmul fast float %5637, %5570
  %5639 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5640 = call float @dx.op.binary.f32(i32 35, float %5633, float %5639)  ; FMax(a,b)
  %5641 = fsub fast float %5595, %5640
  %5642 = call float @dx.op.unary.f32(i32 7, float %5641)  ; Saturate(value)
  %5643 = fmul fast float %5642, %5565
  %5644 = fadd fast float %5611, 1.000000e+00
  %5645 = fadd fast float %5627, 1.000000e+00
  %5646 = fadd fast float %5643, 1.000000e+00
  %5647 = fmul fast float %5644, 5.000000e-01
  %5648 = fmul fast float %5645, 5.000000e-01
  %5649 = fmul fast float %5646, 5.000000e-01
  %5650 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5651 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5653 = fmul fast float %5650, 1.023000e+03
  %5654 = fmul fast float %5651, 1.023000e+03
  %5655 = fmul fast float %5652, 1.023000e+03
  %5656 = fptoui float %5653 to i32
  %5657 = fptoui float %5654 to i32
  %5658 = fptoui float %5655 to i32
  %5659 = shl i32 %5657, 10
  %5660 = or i32 %5659, %5656
  %5661 = shl i32 %5658, 20
  %5662 = or i32 %5660, %5661
  br label %5663

; <label>:5663                                    ; preds = %5593, %5500
  %5664 = phi i32 [ %5662, %5593 ], [ %5484, %5500 ]
  %5665 = fcmp fast olt float %5498, 0.000000e+00
  br i1 %5665, label %6977, label %5666

; <label>:5666                                    ; preds = %5663
  %5667 = fadd fast float %5540, %5529
  %5668 = fsub fast float %5558, %5667
  %5669 = fmul fast float %5668, %5562
  %5670 = fsub fast float 1.000000e+00, %5669
  %5671 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5549, 2
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5675 = fadd fast float %5674, %5672
  %5676 = fcmp fast ogt float %5675, 0.000000e+00
  br i1 %5676, label %5677, label %5696

; <label>:5677                                    ; preds = %5666
  %5678 = fcmp fast olt float %5569, 0.000000e+00
  %5679 = fcmp fast olt float %5570, 0.000000e+00
  %5680 = extractvalue %dx.types.CBufRet.f32 %5571, 0
  %5681 = extractvalue %dx.types.CBufRet.f32 %5571, 1
  %5682 = extractvalue %dx.types.CBufRet.f32 %5571, 2
  %5683 = extractvalue %dx.types.CBufRet.f32 %5571, 3
  %5684 = select i1 %5678, float %5680, float %5682
  %5685 = select i1 %5679, float %5681, float %5683
  %5686 = fmul fast float %5684, %5569
  %5687 = fmul fast float %5685, %5570
  %5688 = call float @dx.op.unary.f32(i32 6, float %5686)  ; FAbs(value)
  %5689 = call float @dx.op.unary.f32(i32 6, float %5687)  ; FAbs(value)
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 0
  %5692 = call float @dx.op.binary.f32(i32 35, float %5688, float %5689)  ; FMax(a,b)
  %5693 = fsub fast float %5691, %5692
  %5694 = call float @dx.op.unary.f32(i32 7, float %5693)  ; Saturate(value)
  %5695 = fmul fast float %5694, %5671
  br label %5696

; <label>:5696                                    ; preds = %5677, %5666
  %5697 = phi float [ %5695, %5677 ], [ 0.000000e+00, %5666 ]
  %5698 = extractvalue %dx.types.CBufRet.f32 %5541, 2
  %5699 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5700 = fadd fast float %5699, %5698
  %5701 = fcmp fast ogt float %5700, 0.000000e+00
  br i1 %5701, label %5702, label %5721

; <label>:5702                                    ; preds = %5696
  %5703 = fcmp fast olt float %5575, 0.000000e+00
  %5704 = fcmp fast olt float %5576, 0.000000e+00
  %5705 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5706 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5707 = extractvalue %dx.types.CBufRet.f32 %5577, 2
  %5708 = extractvalue %dx.types.CBufRet.f32 %5577, 3
  %5709 = select i1 %5703, float %5705, float %5707
  %5710 = select i1 %5704, float %5706, float %5708
  %5711 = fmul fast float %5709, %5575
  %5712 = fmul fast float %5710, %5576
  %5713 = call float @dx.op.unary.f32(i32 6, float %5711)  ; FAbs(value)
  %5714 = call float @dx.op.unary.f32(i32 6, float %5712)  ; FAbs(value)
  %5715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5716 = extractvalue %dx.types.CBufRet.f32 %5715, 0
  %5717 = call float @dx.op.binary.f32(i32 35, float %5713, float %5714)  ; FMax(a,b)
  %5718 = fsub fast float %5716, %5717
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = fmul fast float %5719, %5671
  br label %5721

; <label>:5721                                    ; preds = %5702, %5696
  %5722 = phi float [ %5720, %5702 ], [ 0.000000e+00, %5696 ]
  %5723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5724 = extractvalue %dx.types.CBufRet.f32 %5723, 1
  %5725 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5726 = fcmp fast olt float %5581, 0.000000e+00
  %5727 = fcmp fast olt float %5582, 0.000000e+00
  %5728 = extractvalue %dx.types.CBufRet.f32 %5583, 0
  %5729 = extractvalue %dx.types.CBufRet.f32 %5583, 1
  %5730 = extractvalue %dx.types.CBufRet.f32 %5583, 2
  %5731 = extractvalue %dx.types.CBufRet.f32 %5583, 3
  %5732 = select i1 %5726, float %5728, float %5730
  %5733 = select i1 %5727, float %5729, float %5731
  %5734 = fmul fast float %5732, %5581
  %5735 = fmul fast float %5733, %5582
  %5736 = call float @dx.op.unary.f32(i32 6, float %5734)  ; FAbs(value)
  %5737 = call float @dx.op.unary.f32(i32 6, float %5735)  ; FAbs(value)
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = call float @dx.op.binary.f32(i32 35, float %5736, float %5737)  ; FMax(a,b)
  %5741 = fsub fast float %5739, %5740
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = call float @dx.op.binary.f32(i32 36, float %5742, float %5725)  ; FMin(a,b)
  %5744 = fmul fast float %5743, %5671
  %5745 = fsub fast float %5722, %5744
  %5746 = fsub fast float %5697, %5722
  %5747 = fsub fast float %5746, %5744
  %5748 = call float @dx.op.binary.f32(i32 35, float %5722, float %5697)  ; FMax(a,b)
  %5749 = call float @dx.op.binary.f32(i32 35, float %5744, float %5748)  ; FMax(a,b)
  %5750 = fcmp fast olt float %5749, 1.000000e+00
  br i1 %5750, label %5751, label %6422, !dx.controlflow.hints !136

; <label>:5751                                    ; preds = %5721
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = fcmp fast une float %5753, 0.000000e+00
  br i1 %5754, label %5755, label %6422, !dx.controlflow.hints !137

; <label>:5755                                    ; preds = %5751
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5760 = extractvalue %dx.types.CBufRet.f32 %5756, 3
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5764 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5765 = extractvalue %dx.types.CBufRet.f32 %5761, 3
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.CBufRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5770 = extractvalue %dx.types.CBufRet.f32 %5766, 3
  %5771 = fmul fast float %5757, %155
  %5772 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5758, float %5771)  ; FMad(a,b,c)
  %5773 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5759, float %5772)  ; FMad(a,b,c)
  %5774 = fadd fast float %5773, %5760
  %5775 = fmul fast float %5762, %155
  %5776 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5763, float %5775)  ; FMad(a,b,c)
  %5777 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5764, float %5776)  ; FMad(a,b,c)
  %5778 = fadd fast float %5777, %5765
  %5779 = fmul fast float %5767, %155
  %5780 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5768, float %5779)  ; FMad(a,b,c)
  %5781 = call float @dx.op.tertiary.f32(i32 46, float %157, float %5769, float %5780)  ; FMad(a,b,c)
  %5782 = fadd fast float %5781, %5770
  %5783 = fcmp fast oge float %5774, 1.000000e+00
  %5784 = fcmp fast oge float %5778, 1.000000e+00
  %5785 = or i1 %5783, %5784
  %5786 = fcmp fast olt float %5774, 0.000000e+00
  %5787 = fcmp fast olt float %5778, 0.000000e+00
  %5788 = or i1 %5786, %5787
  %5789 = or i1 %5785, %5788
  br i1 %5789, label %6422, label %5790, !dx.controlflow.hints !138

; <label>:5790                                    ; preds = %5755
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5796 = extractvalue %dx.types.CBufRet.f32 %5795, 1
  %5797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5798 = extractvalue %dx.types.CBufRet.i32 %5797, 2
  %5799 = uitofp i32 %5798 to float
  %5800 = extractvalue %dx.types.CBufRet.i32 %5797, 3
  %5801 = uitofp i32 %5800 to float
  %5802 = extractvalue %dx.types.CBufRet.f32 %5791, 3
  %5803 = fmul fast float %5802, 2.000000e+00
  %5804 = fsub fast float %5774, %5792
  %5805 = fsub fast float %5778, %5793
  %5806 = fmul fast float %5803, %5804
  %5807 = fmul fast float %5803, %5805
  %5808 = fdiv fast float 1.000000e+00, %5503
  %5809 = fmul fast float %5807, %5808
  %5810 = call float @dx.op.unary.f32(i32 6, float %5809)  ; FAbs(value)
  %5811 = fmul fast float %5794, %157
  %5812 = fmul fast float %5811, %5803
  %5813 = call float @dx.op.unary.f32(i32 6, float %5812)  ; FAbs(value)
  %5814 = call float @dx.op.unary.f32(i32 6, float %5806)  ; FAbs(value)
  %5815 = call float @dx.op.binary.f32(i32 35, float %5813, float %5810)  ; FMax(a,b)
  %5816 = call float @dx.op.binary.f32(i32 35, float %5814, float %5815)  ; FMax(a,b)
  %5817 = fmul fast float %5816, 2.000000e+00
  %5818 = call float @dx.op.unary.f32(i32 23, float %5817)  ; Log(value)
  %5819 = call float @dx.op.binary.f32(i32 35, float %5818, float %5799)  ; FMax(a,b)
  %5820 = call float @dx.op.unary.f32(i32 22, float %5819)  ; Frc(value)
  %5821 = fadd fast float %5820, 0xBFEA666660000000
  %5822 = fmul fast float %5821, 8.000000e+00
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = call float @dx.op.unary.f32(i32 27, float %5819)  ; Round_ni(value)
  %5825 = fadd fast float %5824, %5823
  %5826 = call float @dx.op.binary.f32(i32 36, float %5825, float %5801)  ; FMin(a,b)
  %5827 = call float @dx.op.unary.f32(i32 27, float %5826)  ; Round_ni(value)
  %5828 = fsub fast float -0.000000e+00, %5827
  %5829 = call float @dx.op.unary.f32(i32 21, float %5828)  ; Exp(value)
  %5830 = fmul fast float %5829, %5803
  %5831 = fmul fast float %5830, %5774
  %5832 = fmul fast float %5830, %5778
  %5833 = fmul fast float %5831, 5.000000e-01
  %5834 = fmul fast float %5832, 5.000000e-01
  %5835 = fadd fast float %5833, 5.000000e-01
  %5836 = fadd fast float %5834, 5.000000e-01
  %5837 = fmul fast float %5831, 2.500000e-01
  %5838 = fmul fast float %5832, 2.500000e-01
  %5839 = fadd fast float %5837, 5.000000e-01
  %5840 = fadd fast float %5838, 5.000000e-01
  %5841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5842 = extractvalue %dx.types.ResRet.i32 %5841, 0
  %5843 = and i32 %5842, 536870911
  %5844 = lshr i32 %5843, 9
  %5845 = uitofp i32 %5844 to float
  %5846 = fmul fast float %5845, %5774
  %5847 = fmul fast float %5845, %5778
  %5848 = call float @dx.op.unary.f32(i32 22, float %5846)  ; Frc(value)
  %5849 = call float @dx.op.unary.f32(i32 22, float %5847)  ; Frc(value)
  %5850 = call float @dx.op.unary.f32(i32 22, float %5823)  ; Frc(value)
  %5851 = fcmp fast une float %5850, 0.000000e+00
  br i1 %5851, label %5852, label %5950, !dx.controlflow.hints !139

; <label>:5852                                    ; preds = %5790
  %5853 = call float @dx.op.unary.f32(i32 21, float %5824)  ; Exp(value)
  %5854 = fmul fast float %5853, 1.953125e-03
  %5855 = fcmp fast olt float %5848, %5854
  %5856 = fcmp fast olt float %5849, %5854
  %5857 = or i1 %5855, %5856
  %5858 = fsub fast float 1.000000e+00, %5854
  %5859 = fcmp fast ogt float %5848, %5858
  %5860 = fcmp fast ogt float %5849, %5858
  %5861 = or i1 %5859, %5860
  %5862 = or i1 %5857, %5861
  br i1 %5862, label %5863, label %6029, !dx.controlflow.hints !140

; <label>:5863                                    ; preds = %5852
  %5864 = fmul fast float %5796, 5.000000e-01
  %5865 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5866 = extractvalue %dx.types.CBufRet.i32 %5865, 0
  %5867 = fmul fast float %5778, 3.530000e+02
  %5868 = uitofp i32 %5843 to float
  %5869 = fmul fast float %5867, %5868
  %5870 = fmul fast float %5774, 6.130000e+02
  %5871 = fadd fast float %5869, %5870
  %5872 = fptoui float %5871 to i32
  %5873 = add i32 %5866, %5872
  %5874 = mul i32 %5873, -63
  %5875 = lshr i32 %5874, 17
  %5876 = xor i32 %5875, %5874
  %5877 = mul i32 %5876, -511
  %5878 = mul i32 %5876, -8176
  %5879 = xor i32 %5877, %5878
  %5880 = mul i32 %5879, -7
  %5881 = mul i32 %5879, -7168
  %5882 = xor i32 %5880, %5881
  %5883 = lshr i32 %5882, 15
  %5884 = xor i32 %5883, %5880
  %5885 = and i32 %5884, 15
  %5886 = mul i32 %5885, 2
  %5887 = add i32 0, %5886
  %5888 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5887
  %5889 = load float, float* %5888, align 4
  %5890 = mul i32 %5885, 2
  %5891 = add i32 1, %5890
  %5892 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5891
  %5893 = load float, float* %5892, align 4
  %5894 = fmul fast float %5778, 2.770000e+02
  %5895 = fmul fast float %5894, %5868
  %5896 = fmul fast float %5774, 5.990000e+02
  %5897 = fadd fast float %5895, %5896
  %5898 = fptoui float %5897 to i32
  %5899 = mul i32 %5898, -63
  %5900 = lshr i32 %5899, 17
  %5901 = xor i32 %5900, %5899
  %5902 = mul i32 %5901, -511
  %5903 = mul i32 %5901, -8176
  %5904 = xor i32 %5902, %5903
  %5905 = mul i32 %5904, -7
  %5906 = mul i32 %5904, -7168
  %5907 = xor i32 %5905, %5906
  %5908 = lshr i32 %5907, 15
  %5909 = xor i32 %5908, %5905
  %5910 = and i32 %5909, 63
  %5911 = mul i32 %5910, 2
  %5912 = add i32 0, %5911
  %5913 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5912
  %5914 = load float, float* %5913, align 4
  %5915 = mul i32 %5910, 2
  %5916 = add i32 1, %5915
  %5917 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5916
  %5918 = load float, float* %5917, align 4
  %5919 = call float @dx.op.dot2.f32(i32 54, float %5889, float %5893, float %5914, float %5918)  ; Dot2(ax,ay,bx,by)
  %5920 = fsub fast float -0.000000e+00, %5914
  %5921 = call float @dx.op.dot2.f32(i32 54, float %5889, float %5893, float %5920, float %5918)  ; Dot2(ax,ay,bx,by)
  %5922 = fmul fast float %5919, %5864
  %5923 = fmul fast float %5921, %5864
  %5924 = fdiv fast float 2.000000e+00, %5830
  %5925 = fmul fast float %5853, 9.765625e-04
  %5926 = fcmp fast olt float %5848, %5925
  %5927 = fcmp fast olt float %5849, %5925
  %5928 = or i1 %5926, %5927
  %5929 = fsub fast float 1.000000e+00, %5925
  %5930 = fcmp fast ogt float %5848, %5929
  %5931 = fcmp fast ogt float %5849, %5929
  %5932 = or i1 %5930, %5931
  %5933 = or i1 %5928, %5932
  %5934 = fmul fast float %5922, 2.000000e+00
  br i1 %5933, label %5935, label %5939

; <label>:5935                                    ; preds = %5863
  %5936 = fmul fast float %5923, 2.000000e+00
  %5937 = fadd fast float %5934, %5835
  %5938 = fadd fast float %5936, %5836
  br label %5939

; <label>:5939                                    ; preds = %5935, %5863
  %5940 = phi float [ %5937, %5935 ], [ %5835, %5863 ]
  %5941 = phi float [ %5938, %5935 ], [ %5836, %5863 ]
  %5942 = phi i32 [ 3, %5935 ], [ 2, %5863 ]
  %5943 = fadd fast float %5922, %5839
  %5944 = fadd fast float %5923, %5840
  %5945 = fmul fast float %5934, %5924
  %5946 = fmul fast float %5924, 2.000000e+00
  %5947 = fmul fast float %5946, %5923
  %5948 = fadd fast float %5945, %5774
  %5949 = fadd fast float %5947, %5778
  br label %6029

; <label>:5950                                    ; preds = %5790
  %5951 = call float @dx.op.unary.f32(i32 21, float %5827)  ; Exp(value)
  %5952 = fmul fast float %5951, 9.765625e-04
  %5953 = fcmp fast olt float %5848, %5952
  %5954 = fcmp fast olt float %5849, %5952
  %5955 = or i1 %5953, %5954
  %5956 = fsub fast float 1.000000e+00, %5952
  %5957 = fcmp fast ogt float %5848, %5956
  %5958 = fcmp fast ogt float %5849, %5956
  %5959 = or i1 %5957, %5958
  %5960 = or i1 %5955, %5959
  br i1 %5960, label %5961, label %6029, !dx.controlflow.hints !141

; <label>:5961                                    ; preds = %5950
  %5962 = fmul fast float %5796, 5.000000e-01
  %5963 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5964 = extractvalue %dx.types.CBufRet.i32 %5963, 0
  %5965 = fmul fast float %5778, 3.530000e+02
  %5966 = uitofp i32 %5843 to float
  %5967 = fmul fast float %5965, %5966
  %5968 = fmul fast float %5774, 6.130000e+02
  %5969 = fadd fast float %5967, %5968
  %5970 = fptoui float %5969 to i32
  %5971 = add i32 %5964, %5970
  %5972 = mul i32 %5971, -63
  %5973 = lshr i32 %5972, 17
  %5974 = xor i32 %5973, %5972
  %5975 = mul i32 %5974, -511
  %5976 = mul i32 %5974, -8176
  %5977 = xor i32 %5975, %5976
  %5978 = mul i32 %5977, -7
  %5979 = mul i32 %5977, -7168
  %5980 = xor i32 %5978, %5979
  %5981 = lshr i32 %5980, 15
  %5982 = xor i32 %5981, %5978
  %5983 = and i32 %5982, 15
  %5984 = mul i32 %5983, 2
  %5985 = add i32 0, %5984
  %5986 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5985
  %5987 = load float, float* %5986, align 4
  %5988 = mul i32 %5983, 2
  %5989 = add i32 1, %5988
  %5990 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5989
  %5991 = load float, float* %5990, align 4
  %5992 = fmul fast float %5778, 2.770000e+02
  %5993 = fmul fast float %5992, %5966
  %5994 = fmul fast float %5774, 5.990000e+02
  %5995 = fadd fast float %5993, %5994
  %5996 = fptoui float %5995 to i32
  %5997 = mul i32 %5996, -63
  %5998 = lshr i32 %5997, 17
  %5999 = xor i32 %5998, %5997
  %6000 = mul i32 %5999, -511
  %6001 = mul i32 %5999, -8176
  %6002 = xor i32 %6000, %6001
  %6003 = mul i32 %6002, -7
  %6004 = mul i32 %6002, -7168
  %6005 = xor i32 %6003, %6004
  %6006 = lshr i32 %6005, 15
  %6007 = xor i32 %6006, %6003
  %6008 = and i32 %6007, 63
  %6009 = mul i32 %6008, 2
  %6010 = add i32 0, %6009
  %6011 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6010
  %6012 = load float, float* %6011, align 4
  %6013 = mul i32 %6008, 2
  %6014 = add i32 1, %6013
  %6015 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %6014
  %6016 = load float, float* %6015, align 4
  %6017 = call float @dx.op.dot2.f32(i32 54, float %5987, float %5991, float %6012, float %6016)  ; Dot2(ax,ay,bx,by)
  %6018 = fsub fast float -0.000000e+00, %6012
  %6019 = call float @dx.op.dot2.f32(i32 54, float %5987, float %5991, float %6018, float %6016)  ; Dot2(ax,ay,bx,by)
  %6020 = fmul fast float %6017, %5962
  %6021 = fmul fast float %6019, %5962
  %6022 = fadd fast float %6020, %5835
  %6023 = fadd fast float %6021, %5836
  %6024 = fdiv fast float 2.000000e+00, %5830
  %6025 = fmul fast float %6024, %6020
  %6026 = fmul fast float %6021, %6024
  %6027 = fadd fast float %6025, %5774
  %6028 = fadd fast float %6026, %5778
  br label %6029

; <label>:6029                                    ; preds = %5961, %5950, %5939, %5852
  %6030 = phi float [ %5943, %5939 ], [ %5839, %5852 ], [ %5839, %5961 ], [ %5839, %5950 ]
  %6031 = phi float [ %5944, %5939 ], [ %5840, %5852 ], [ %5840, %5961 ], [ %5840, %5950 ]
  %6032 = phi float [ %5940, %5939 ], [ %5835, %5852 ], [ %6022, %5961 ], [ %5835, %5950 ]
  %6033 = phi float [ %5941, %5939 ], [ %5836, %5852 ], [ %6023, %5961 ], [ %5836, %5950 ]
  %6034 = phi i32 [ %5942, %5939 ], [ 0, %5852 ], [ 1, %5961 ], [ 0, %5950 ]
  %6035 = phi float [ %5948, %5939 ], [ %5774, %5852 ], [ %6027, %5961 ], [ %5774, %5950 ]
  %6036 = phi float [ %5949, %5939 ], [ %5778, %5852 ], [ %6028, %5961 ], [ %5778, %5950 ]
  %6037 = fsub fast float %5801, %5799
  %6038 = fptoui float %6037 to i32
  %6039 = add i32 %6038, 320
  %6040 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %6039)  ; CBufferLoadLegacy(handle,regIndex)
  %6041 = extractvalue %dx.types.CBufRet.f32 %6040, 0
  %6042 = extractvalue %dx.types.CBufRet.f32 %6040, 1
  %6043 = fcmp fast une float %5826, %5801
  %6044 = fsub fast float %6035, %6041
  %6045 = fsub fast float %6036, %6042
  %6046 = call float @dx.op.unary.f32(i32 6, float %6044)  ; FAbs(value)
  %6047 = call float @dx.op.unary.f32(i32 6, float %6045)  ; FAbs(value)
  %6048 = fmul fast float %6046, %5830
  %6049 = fmul fast float %6047, %5830
  %6050 = fcmp fast olt float %6048, 1.000000e+00
  %6051 = fcmp fast olt float %6049, 1.000000e+00
  %6052 = and i1 %6050, %6051
  %6053 = or i1 %6043, %6052
  br i1 %6053, label %6054, label %6422, !dx.controlflow.hints !142

; <label>:6054                                    ; preds = %6029
  %6055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.i32 %6055, 2
  %6057 = sitofp i32 %6056 to float
  %6058 = fsub fast float %5826, %6057
  %6059 = call float @dx.op.unary.f32(i32 27, float %6058)  ; Round_ni(value)
  %6060 = call float @dx.op.unary.f32(i32 22, float %5826)  ; Frc(value)
  %6061 = icmp eq i32 %6034, 0
  %6062 = call float @dx.op.unary.f32(i32 22, float %6032)  ; Frc(value)
  %6063 = call float @dx.op.unary.f32(i32 22, float %6033)  ; Frc(value)
  br i1 %6061, label %6134, label %6064, !dx.controlflow.hints !143

; <label>:6064                                    ; preds = %6054
  %6065 = and i32 %6034, 1
  %6066 = icmp eq i32 %6065, 0
  br i1 %6066, label %6080, label %6067, !dx.controlflow.hints !144

; <label>:6067                                    ; preds = %6064
  %6068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6069 = extractvalue %dx.types.CBufRet.f32 %6068, 0
  %6070 = fmul fast float %6062, %6069
  %6071 = fmul fast float %6063, %6069
  %6072 = fptoui float %6070 to i32
  %6073 = fptoui float %6071 to i32
  %6074 = fptoui float %6059 to i32
  %6075 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %6072, i32 %6073, i32 %6074, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6076 = extractvalue %dx.types.ResRet.f32 %6075, 0
  %6077 = extractvalue %dx.types.ResRet.f32 %6075, 1
  %6078 = extractvalue %dx.types.ResRet.f32 %6075, 2
  %6079 = extractvalue %dx.types.ResRet.f32 %6075, 3
  br label %6086

; <label>:6080                                    ; preds = %6064
  %6081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6062, float %6063, float %6059, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = extractvalue %dx.types.ResRet.f32 %6081, 1
  %6084 = extractvalue %dx.types.ResRet.f32 %6081, 2
  %6085 = extractvalue %dx.types.ResRet.f32 %6081, 3
  br label %6086

; <label>:6086                                    ; preds = %6080, %6067
  %6087 = phi float [ %6076, %6067 ], [ %6082, %6080 ]
  %6088 = phi float [ %6077, %6067 ], [ %6083, %6080 ]
  %6089 = phi float [ %6078, %6067 ], [ %6084, %6080 ]
  %6090 = phi float [ %6079, %6067 ], [ %6085, %6080 ]
  %6091 = fcmp fast ogt float %6060, 0.000000e+00
  br i1 %6091, label %6092, label %6162

; <label>:6092                                    ; preds = %6086
  %6093 = and i32 %6034, 2
  %6094 = icmp eq i32 %6093, 0
  %6095 = fadd fast float %6059, 1.000000e+00
  %6096 = call float @dx.op.unary.f32(i32 22, float %6030)  ; Frc(value)
  %6097 = call float @dx.op.unary.f32(i32 22, float %6031)  ; Frc(value)
  br i1 %6094, label %6111, label %6098, !dx.controlflow.hints !145

; <label>:6098                                    ; preds = %6092
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 0
  %6101 = fmul fast float %6096, %6100
  %6102 = fmul fast float %6097, %6100
  %6103 = fptoui float %6101 to i32
  %6104 = fptoui float %6102 to i32
  %6105 = fptoui float %6095 to i32
  %6106 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %16, i32 0, i32 %6103, i32 %6104, i32 %6105, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6107 = extractvalue %dx.types.ResRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.ResRet.f32 %6106, 1
  %6109 = extractvalue %dx.types.ResRet.f32 %6106, 2
  %6110 = extractvalue %dx.types.ResRet.f32 %6106, 3
  br label %6117

; <label>:6111                                    ; preds = %6092
  %6112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6096, float %6097, float %6095, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6113 = extractvalue %dx.types.ResRet.f32 %6112, 0
  %6114 = extractvalue %dx.types.ResRet.f32 %6112, 1
  %6115 = extractvalue %dx.types.ResRet.f32 %6112, 2
  %6116 = extractvalue %dx.types.ResRet.f32 %6112, 3
  br label %6117

; <label>:6117                                    ; preds = %6111, %6098
  %6118 = phi float [ %6107, %6098 ], [ %6113, %6111 ]
  %6119 = phi float [ %6108, %6098 ], [ %6114, %6111 ]
  %6120 = phi float [ %6109, %6098 ], [ %6115, %6111 ]
  %6121 = phi float [ %6110, %6098 ], [ %6116, %6111 ]
  %6122 = fsub fast float %6118, %6087
  %6123 = fsub fast float %6119, %6088
  %6124 = fsub fast float %6120, %6089
  %6125 = fsub fast float %6121, %6090
  %6126 = fmul fast float %6122, %6060
  %6127 = fmul fast float %6123, %6060
  %6128 = fmul fast float %6124, %6060
  %6129 = fmul fast float %6125, %6060
  %6130 = fadd fast float %6126, %6087
  %6131 = fadd fast float %6127, %6088
  %6132 = fadd fast float %6128, %6089
  %6133 = fadd fast float %6129, %6090
  br label %6162

; <label>:6134                                    ; preds = %6054
  %6135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6062, float %6063, float %6059, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  %6137 = extractvalue %dx.types.ResRet.f32 %6135, 1
  %6138 = extractvalue %dx.types.ResRet.f32 %6135, 2
  %6139 = extractvalue %dx.types.ResRet.f32 %6135, 3
  %6140 = fcmp fast ogt float %6060, 0.000000e+00
  br i1 %6140, label %6141, label %6162, !dx.controlflow.hints !146

; <label>:6141                                    ; preds = %6134
  %6142 = fadd fast float %6059, 1.000000e+00
  %6143 = call float @dx.op.unary.f32(i32 22, float %6030)  ; Frc(value)
  %6144 = call float @dx.op.unary.f32(i32 22, float %6031)  ; Frc(value)
  %6145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %62, float %6143, float %6144, float %6142, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6146 = extractvalue %dx.types.ResRet.f32 %6145, 0
  %6147 = extractvalue %dx.types.ResRet.f32 %6145, 1
  %6148 = extractvalue %dx.types.ResRet.f32 %6145, 2
  %6149 = extractvalue %dx.types.ResRet.f32 %6145, 3
  %6150 = fsub fast float %6146, %6136
  %6151 = fsub fast float %6147, %6137
  %6152 = fsub fast float %6148, %6138
  %6153 = fsub fast float %6149, %6139
  %6154 = fmul fast float %6150, %6060
  %6155 = fmul fast float %6151, %6060
  %6156 = fmul fast float %6152, %6060
  %6157 = fmul fast float %6153, %6060
  %6158 = fadd fast float %6154, %6136
  %6159 = fadd fast float %6155, %6137
  %6160 = fadd fast float %6156, %6138
  %6161 = fadd fast float %6157, %6139
  br label %6162

; <label>:6162                                    ; preds = %6141, %6134, %6117, %6086
  %6163 = phi float [ %6130, %6117 ], [ %6087, %6086 ], [ %6158, %6141 ], [ %6136, %6134 ]
  %6164 = phi float [ %6131, %6117 ], [ %6088, %6086 ], [ %6159, %6141 ], [ %6137, %6134 ]
  %6165 = phi float [ %6132, %6117 ], [ %6089, %6086 ], [ %6160, %6141 ], [ %6138, %6134 ]
  %6166 = phi float [ %6133, %6117 ], [ %6090, %6086 ], [ %6161, %6141 ], [ %6139, %6134 ]
  %6167 = fadd fast float %6163, -5.000000e-01
  %6168 = fadd fast float %6165, -5.000000e-01
  %6169 = fmul fast float %6167, 0xBFD5555560000000
  %6170 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %6168, float %6169)  ; FMad(a,b,c)
  %6171 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %6164, float 0.000000e+00)  ; FMad(a,b,c)
  %6172 = fadd fast float %6171, %6166
  %6173 = fmul fast float %6167, -7.500000e-01
  %6174 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %6168, float %6173)  ; FMad(a,b,c)
  %6175 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %6164, float 0.000000e+00)  ; FMad(a,b,c)
  %6176 = fadd fast float %6175, %6166
  %6177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %6178 = extractvalue %dx.types.CBufRet.f32 %6177, 0
  %6179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %6180 = extractvalue %dx.types.CBufRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.CBufRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.CBufRet.f32 %6179, 2
  %6183 = extractvalue %dx.types.CBufRet.f32 %6179, 3
  %6184 = fsub fast float %6180, %6170
  %6185 = fsub fast float %6181, %6172
  %6186 = fsub fast float %6182, %6174
  %6187 = fsub fast float %6183, %6176
  %6188 = fmul fast float %6184, %6178
  %6189 = fmul fast float %6185, %6178
  %6190 = fmul fast float %6186, %6178
  %6191 = fmul fast float %6187, %6178
  %6192 = fadd fast float %6188, %6170
  %6193 = fadd fast float %6189, %6172
  %6194 = fadd fast float %6190, %6174
  %6195 = fadd fast float %6191, %6176
  %6196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %6197 = extractvalue %dx.types.ResRet.i32 %6196, 0
  %6198 = and i32 %6197, 536870911
  %6199 = uitofp i32 %6198 to float
  %6200 = fmul fast float %6199, %6035
  %6201 = fmul fast float %6199, %6036
  %6202 = fptoui float %6200 to i32
  %6203 = fptoui float %6201 to i32
  %6204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6205 = extractvalue %dx.types.ResRet.i32 %6204, 0
  %6206 = and i32 %6205, 31
  %6207 = lshr i32 %6202, %6206
  %6208 = lshr i32 %6203, %6206
  %6209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.i32 %6209, 0
  %6211 = and i32 %6210, 31
  %6212 = shl i32 1, %6211
  %6213 = call i32 @dx.op.binary.i32(i32 40, i32 %6212, i32 4)  ; UMin(a,b)
  %6214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %6215 = extractvalue %dx.types.ResRet.i32 %6214, 0
  %6216 = extractvalue %dx.types.ResRet.i32 %6214, 1
  %6217 = icmp eq i32 %6213, 0
  br i1 %6217, label %6259, label %6218

; <label>:6218                                    ; preds = %6162
  br label %6219

; <label>:6219                                    ; preds = %6247, %6218
  %6220 = phi i32 [ %6250, %6247 ], [ 0, %6218 ]
  %6221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6222 = extractvalue %dx.types.ResRet.i32 %6221, 0
  %6223 = lshr i32 %6222, 16
  %6224 = and i32 %6223, 31
  %6225 = shl i32 %6208, %6224
  %6226 = add i32 %6225, %6207
  %6227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %6228 = extractvalue %dx.types.ResRet.i32 %6227, 0
  %6229 = and i32 %6228, 31
  %6230 = shl i32 %6226, %6229
  %6231 = add i32 %6230, %6220
  %6232 = shl i32 %6231, 2
  %6233 = add i32 %6232, 32
  %6234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6233, i32 undef)  ; BufferLoad(srv,index,wot)
  %6235 = extractvalue %dx.types.ResRet.i32 %6234, 0
  %6236 = icmp slt i32 %6235, 0
  %6237 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6220
  %6238 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6220
  %6239 = bitcast float* %6237 to i32*
  %6240 = bitcast float* %6238 to i32*
  br i1 %6236, label %6241, label %6247

; <label>:6241                                    ; preds = %6219
  %6242 = and i32 %6235, 1073741823
  %6243 = add nuw nsw i32 %6242, 20
  %6244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6243, i32 undef)  ; BufferLoad(srv,index,wot)
  %6245 = extractvalue %dx.types.ResRet.i32 %6244, 0
  %6246 = extractvalue %dx.types.ResRet.i32 %6244, 1
  br label %6247

; <label>:6247                                    ; preds = %6241, %6219
  %6248 = phi i32 [ %6245, %6241 ], [ %6215, %6219 ]
  %6249 = phi i32 [ %6246, %6241 ], [ %6216, %6219 ]
  store i32 %6248, i32* %6239, align 4
  store i32 %6249, i32* %6240, align 4
  %6250 = add nuw i32 %6220, 1
  %6251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %6252 = extractvalue %dx.types.CBufRet.i32 %6251, 2
  %6253 = icmp eq i32 %6252, 0
  %6254 = icmp ugt i32 %6235, -1073741825
  %6255 = and i1 %6254, %6253
  %6256 = icmp ult i32 %6250, %6213
  %6257 = and i1 %6255, %6256
  br i1 %6257, label %6219, label %6258

; <label>:6258                                    ; preds = %6247
  br label %6259

; <label>:6259                                    ; preds = %6258, %6162
  %6260 = phi i32 [ 0, %6162 ], [ %6250, %6258 ]
  %6261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6262 = extractvalue %dx.types.CBufRet.f32 %6261, 2
  %6263 = fptoui float %6262 to i32
  %6264 = icmp eq i32 %6263, 0
  br i1 %6264, label %6316, label %6265

; <label>:6265                                    ; preds = %6259
  br label %6266

; <label>:6266                                    ; preds = %6311, %6265
  %6267 = phi i32 [ %6312, %6311 ], [ %6260, %6265 ]
  %6268 = phi i32 [ %6313, %6311 ], [ 0, %6265 ]
  %6269 = lshr i32 %6268, 2
  %6270 = and i32 %6268, 3
  %6271 = add nuw nsw i32 %6269, 83
  %6272 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 %6271)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.i32 %6272, 0
  %6274 = extractvalue %dx.types.CBufRet.i32 %6272, 1
  %6275 = extractvalue %dx.types.CBufRet.i32 %6272, 2
  %6276 = extractvalue %dx.types.CBufRet.i32 %6272, 3
  %6277 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 0
  store i32 %6273, i32* %6277, align 4
  %6278 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 1
  store i32 %6274, i32* %6278, align 4
  %6279 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 2
  store i32 %6275, i32* %6279, align 4
  %6280 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 3
  store i32 %6276, i32* %6280, align 4
  %6281 = getelementptr inbounds [4 x i32], [4 x i32]* %69, i32 0, i32 %6270
  %6282 = load i32, i32* %6281, align 4, !tbaa !147, !noalias !149
  %6283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %6284 = extractvalue %dx.types.ResRet.i32 %6283, 0
  %6285 = lshr i32 %6284, 16
  %6286 = and i32 %6285, 31
  %6287 = shl i32 %6208, %6286
  %6288 = add i32 %6287, %6207
  %6289 = shl i32 %6288, 2
  %6290 = add i32 %6289, %6282
  %6291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6290, i32 undef)  ; BufferLoad(srv,index,wot)
  %6292 = extractvalue %dx.types.ResRet.i32 %6291, 0
  %6293 = icmp eq i32 %6292, 0
  br i1 %6293, label %6311, label %6294

; <label>:6294                                    ; preds = %6266
  %6295 = icmp slt i32 %6292, 0
  %6296 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6267
  %6297 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6267
  %6298 = bitcast float* %6296 to i32*
  %6299 = bitcast float* %6297 to i32*
  br i1 %6295, label %6300, label %6307

; <label>:6300                                    ; preds = %6294
  %6301 = and i32 %6292, 1073741823
  %6302 = add i32 %6282, 20
  %6303 = add i32 %6302, %6301
  %6304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %6303, i32 undef)  ; BufferLoad(srv,index,wot)
  %6305 = extractvalue %dx.types.ResRet.i32 %6304, 0
  %6306 = extractvalue %dx.types.ResRet.i32 %6304, 1
  br label %6307

; <label>:6307                                    ; preds = %6300, %6294
  %6308 = phi i32 [ %6305, %6300 ], [ %6215, %6294 ]
  %6309 = phi i32 [ %6306, %6300 ], [ %6216, %6294 ]
  store i32 %6308, i32* %6298, align 4
  store i32 %6309, i32* %6299, align 4
  %6310 = add i32 %6267, 1
  br label %6311

; <label>:6311                                    ; preds = %6307, %6266
  %6312 = phi i32 [ %6267, %6266 ], [ %6310, %6307 ]
  %6313 = add nuw i32 %6268, 1
  %6314 = icmp eq i32 %6313, %6263
  br i1 %6314, label %6315, label %6266

; <label>:6315                                    ; preds = %6311
  br label %6316

; <label>:6316                                    ; preds = %6315, %6259
  %6317 = phi i32 [ %6260, %6259 ], [ %6312, %6315 ]
  %6318 = icmp eq i32 %6317, 1
  %6319 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  %6320 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 0
  br i1 %6318, label %6321, label %6324

; <label>:6321                                    ; preds = %6316
  %6322 = load float, float* %6319, align 4
  %6323 = load float, float* %6320, align 4
  br label %6351

; <label>:6324                                    ; preds = %6316
  %6325 = load float, float* %6319, align 4
  %6326 = load float, float* %6320, align 4
  %6327 = fdiv fast float 1.000000e+00, %6326
  %6328 = fsub fast float %6325, %6327
  %6329 = icmp ugt i32 %6317, 1
  br i1 %6329, label %6330, label %6346

; <label>:6330                                    ; preds = %6324
  br label %6331

; <label>:6331                                    ; preds = %6331, %6330
  %6332 = phi float [ %6341, %6331 ], [ %6328, %6330 ]
  %6333 = phi float [ %6342, %6331 ], [ %6325, %6330 ]
  %6334 = phi i32 [ %6343, %6331 ], [ 1, %6330 ]
  %6335 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %6334
  %6336 = load float, float* %6335, align 4
  %6337 = getelementptr [12 x float], [12 x float]* %91, i32 0, i32 %6334
  %6338 = load float, float* %6337, align 4
  %6339 = fdiv fast float 1.000000e+00, %6338
  %6340 = fsub fast float %6336, %6339
  %6341 = call float @dx.op.binary.f32(i32 36, float %6332, float %6340)  ; FMin(a,b)
  %6342 = call float @dx.op.binary.f32(i32 35, float %6333, float %6336)  ; FMax(a,b)
  %6343 = add nuw i32 %6334, 1
  %6344 = icmp eq i32 %6343, %6317
  br i1 %6344, label %6345, label %6331

; <label>:6345                                    ; preds = %6331
  br label %6346

; <label>:6346                                    ; preds = %6345, %6324
  %6347 = phi float [ %6328, %6324 ], [ %6341, %6345 ]
  %6348 = phi float [ %6325, %6324 ], [ %6342, %6345 ]
  %6349 = fsub fast float %6348, %6347
  %6350 = fdiv fast float 1.000000e+00, %6349
  br label %6351

; <label>:6351                                    ; preds = %6346, %6321
  %6352 = phi float [ %6322, %6321 ], [ %6348, %6346 ]
  %6353 = phi float [ %6323, %6321 ], [ %6350, %6346 ]
  %6354 = fadd fast float %5782, %6352
  %6355 = fmul fast float %6354, %6353
  %6356 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6357 = fmul fast float %6356, 2.000000e+00
  %6358 = fsub fast float 1.000000e+00, %6357
  %6359 = fmul fast float %6192, %6192
  %6360 = fsub fast float %6193, %6359
  %6361 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %6360)  ; FMax(a,b)
  %6362 = fdiv fast float 1.000000e+00, %6361
  %6363 = fmul fast float %6193, %6192
  %6364 = fsub fast float %6194, %6363
  %6365 = fsub fast float %6358, %6192
  %6366 = fmul fast float %6358, %6358
  %6367 = fsub fast float %6366, %6193
  %6368 = fmul fast float %6362, %6364
  %6369 = fmul fast float %6368, %6365
  %6370 = fsub fast float %6367, %6369
  %6371 = fmul fast float %6193, %6193
  %6372 = fsub fast float %6195, %6371
  %6373 = fmul fast float %6364, %6364
  %6374 = fmul fast float %6373, %6362
  %6375 = fsub fast float %6372, %6374
  %6376 = fdiv fast float %6370, %6375
  %6377 = fmul fast float %6376, %6364
  %6378 = fsub fast float %6365, %6377
  %6379 = fmul fast float %6378, %6362
  %6380 = fmul fast float %6379, %6192
  %6381 = fsub fast float 1.000000e+00, %6380
  %6382 = fmul fast float %6376, %6193
  %6383 = fsub fast float %6381, %6382
  %6384 = fmul fast float %6379, %6379
  %6385 = fmul fast float %6376, 4.000000e+00
  %6386 = fmul fast float %6385, %6383
  %6387 = fsub fast float %6384, %6386
  %6388 = call float @dx.op.unary.f32(i32 24, float %6387)  ; Sqrt(value)
  %6389 = fcmp fast oge float %6379, 0.000000e+00
  %6390 = fsub fast float -0.000000e+00, %6388
  %6391 = select i1 %6389, float %6390, float %6388
  %6392 = fsub fast float %6391, %6379
  %6393 = fdiv fast float %6392, %6376
  %6394 = fdiv fast float %6383, %6392
  %6395 = fmul fast float %6393, 5.000000e-01
  %6396 = fmul fast float %6394, 2.000000e+00
  %6397 = select i1 %6389, float %6395, float %6396
  %6398 = select i1 %6389, float %6396, float %6395
  %6399 = call float @dx.op.binary.f32(i32 35, float %6397, float %6398)  ; FMax(a,b)
  %6400 = call float @dx.op.binary.f32(i32 36, float %6397, float %6398)  ; FMin(a,b)
  %6401 = fcmp fast ogt float %6358, %6399
  %6402 = fsub fast float %6358, %6400
  %6403 = fsub fast float %6358, %6399
  %6404 = fsub fast float %6399, %6400
  %6405 = select i1 %6401, float %6403, float %6404
  %6406 = fmul float %6402, %6405
  %6407 = select i1 %6401, float %6400, float %6358
  %6408 = fcmp fast ogt float %6358, %6400
  %6409 = fmul fast float %6407, %6399
  %6410 = fadd fast float %6407, %6399
  %6411 = fmul fast float %6410, %6192
  %6412 = fadd fast float %6409, %6193
  %6413 = fsub fast float %6412, %6411
  %6414 = fdiv fast float %6413, %6406
  %6415 = select i1 %6408, float %6414, float 0.000000e+00
  %6416 = fsub fast float 1.000000e+00, %6415
  %6417 = select i1 %6401, float %6416, float %6415
  %6418 = call float @dx.op.unary.f32(i32 7, float %6417)  ; Saturate(value)
  %6419 = extractvalue %dx.types.CBufRet.f32 %6177, 3
  %6420 = fmul fast float %6419, %6418
  %6421 = fsub fast float 1.000000e+00, %6420
  br label %6422

; <label>:6422                                    ; preds = %6351, %6029, %5755, %5751, %5721
  %6423 = phi float [ 1.000000e+00, %5721 ], [ %6421, %6351 ], [ 1.000000e+00, %5755 ], [ 1.000000e+00, %6029 ], [ 1.000000e+00, %5751 ]
  %6424 = fcmp fast ogt float %5747, 0.000000e+00
  br i1 %6424, label %6425, label %6589, !dx.controlflow.hints !154

; <label>:6425                                    ; preds = %6422
  %6426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6427 = extractvalue %dx.types.CBufRet.f32 %6426, 2
  %6428 = fadd fast float %6427, %5667
  %6429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6430 = extractvalue %dx.types.CBufRet.f32 %6429, 2
  %6431 = extractvalue %dx.types.CBufRet.f32 %6429, 3
  %6432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6433 = extractvalue %dx.types.CBufRet.f32 %6432, 2
  %6434 = call float @dx.op.binary.f32(i32 35, float %6428, float 0.000000e+00)  ; FMax(a,b)
  %6435 = fadd fast float %6434, 0x3F10000000000000
  %6436 = fcmp fast oeq float %6433, 0.000000e+00
  br i1 %6436, label %6437, label %6504

; <label>:6437                                    ; preds = %6425
  %6438 = extractvalue %dx.types.CBufRet.f32 %6429, 1
  %6439 = extractvalue %dx.types.CBufRet.f32 %6429, 0
  %6440 = fmul fast float %6439, %5555
  %6441 = fmul fast float %6438, %5556
  %6442 = fadd fast float %6440, 5.000000e-01
  %6443 = call float @dx.op.unary.f32(i32 27, float %6442)  ; Round_ni(value)
  %6444 = fadd fast float %6441, 5.000000e-01
  %6445 = call float @dx.op.unary.f32(i32 27, float %6444)  ; Round_ni(value)
  %6446 = fsub fast float %6442, %6443
  %6447 = fsub fast float %6444, %6445
  %6448 = fadd fast float %6443, -5.000000e-01
  %6449 = fadd fast float %6445, -5.000000e-01
  %6450 = fmul fast float %6446, 2.000000e+00
  %6451 = fsub fast float 3.000000e+00, %6450
  %6452 = fadd fast float %6450, 1.000000e+00
  %6453 = fsub fast float 2.000000e+00, %6446
  %6454 = bitcast float %6451 to i32
  %6455 = sub nsw i32 2129859010, %6454
  %6456 = bitcast i32 %6455 to float
  %6457 = fmul fast float %6456, %6453
  %6458 = fadd fast float %6457, -1.000000e+00
  %6459 = bitcast float %6452 to i32
  %6460 = sub nsw i32 2129859010, %6459
  %6461 = bitcast i32 %6460 to float
  %6462 = fmul fast float %6461, %6446
  %6463 = fadd fast float %6462, 1.000000e+00
  %6464 = fmul fast float %6447, 2.000000e+00
  %6465 = fsub fast float 3.000000e+00, %6464
  %6466 = fadd fast float %6464, 1.000000e+00
  %6467 = fsub fast float 2.000000e+00, %6447
  %6468 = bitcast float %6465 to i32
  %6469 = sub nsw i32 2129859010, %6468
  %6470 = bitcast i32 %6469 to float
  %6471 = fmul fast float %6470, %6467
  %6472 = fadd fast float %6471, -1.000000e+00
  %6473 = bitcast float %6466 to i32
  %6474 = sub nsw i32 2129859010, %6473
  %6475 = bitcast i32 %6474 to float
  %6476 = fmul fast float %6475, %6447
  %6477 = fadd fast float %6476, 1.000000e+00
  %6478 = fadd fast float %6458, %6448
  %6479 = fmul fast float %6478, %6430
  %6480 = fadd fast float %6472, %6449
  %6481 = fmul fast float %6480, %6431
  %6482 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6479, float %6481, float undef, float undef, i32 0, i32 0, i32 undef, float %6435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 0
  %6484 = fmul fast float %6483, %6451
  %6485 = fadd fast float %6463, %6448
  %6486 = fmul fast float %6485, %6430
  %6487 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6486, float %6481, float undef, float undef, i32 0, i32 0, i32 undef, float %6435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6488 = extractvalue %dx.types.ResRet.f32 %6487, 0
  %6489 = fmul fast float %6488, %6452
  %6490 = fadd fast float %6477, %6449
  %6491 = fmul fast float %6490, %6431
  %6492 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6479, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float %6435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = fmul fast float %6493, %6451
  %6495 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %65, float %6486, float %6491, float undef, float undef, i32 0, i32 0, i32 undef, float %6435)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6496 = extractvalue %dx.types.ResRet.f32 %6495, 0
  %6497 = fmul fast float %6496, %6452
  %6498 = fadd fast float %6497, %6494
  %6499 = fmul fast float %6498, %6466
  %6500 = fadd fast float %6489, %6484
  %6501 = fmul fast float %6500, %6465
  %6502 = fadd fast float %6501, %6499
  %6503 = fmul fast float %6502, 6.250000e-02
  br label %6589

; <label>:6504                                    ; preds = %6425
  %6505 = fmul fast float %1887, 0x401921FB60000000
  %6506 = call float @dx.op.unary.f32(i32 13, float %6505)  ; Sin(value)
  %6507 = call float @dx.op.unary.f32(i32 12, float %6505)  ; Cos(value)
  %6508 = fsub fast float -0.000000e+00, %6506
  br label %6509

; <label>:6509                                    ; preds = %6558, %6504
  %6510 = phi float [ 0.000000e+00, %6504 ], [ %6553, %6558 ]
  %6511 = phi float [ 0.000000e+00, %6504 ], [ %6555, %6558 ]
  %6512 = phi i32 [ 0, %6504 ], [ %6559, %6558 ]
  %6513 = mul i32 %6512, 2
  %6514 = add i32 0, %6513
  %6515 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6514
  %6516 = load float, float* %6515, align 4
  %6517 = mul i32 %6512, 2
  %6518 = add i32 1, %6517
  %6519 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6518
  %6520 = load float, float* %6519, align 4
  %6521 = fmul fast float %6516, %6507
  %6522 = call float @dx.op.tertiary.f32(i32 46, float %6520, float %6508, float %6521)  ; FMad(a,b,c)
  %6523 = fmul fast float %6516, %6506
  %6524 = call float @dx.op.tertiary.f32(i32 46, float %6520, float %6507, float %6523)  ; FMad(a,b,c)
  %6525 = fmul fast float %6522, %6433
  %6526 = fmul fast float %6524, %6433
  %6527 = fadd fast float %6525, %5555
  %6528 = fadd fast float %6526, %5556
  %6529 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %64, float %6527, float %6528, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6530 = extractvalue %dx.types.ResRet.f32 %6529, 0
  %6531 = extractvalue %dx.types.ResRet.f32 %6529, 1
  %6532 = extractvalue %dx.types.ResRet.f32 %6529, 2
  %6533 = extractvalue %dx.types.ResRet.f32 %6529, 3
  %6534 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %6530, float* %6534, align 4
  %6535 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %6531, float* %6535, align 4
  %6536 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %6532, float* %6536, align 4
  %6537 = getelementptr inbounds [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %6533, float* %6537, align 4
  %6538 = fsub fast float %6530, %6435
  %6539 = fcmp fast olt float %6538, 0.000000e+00
  %6540 = select i1 %6539, float 0.000000e+00, float 1.000000e+00
  %6541 = fadd fast float %6540, %6510
  %6542 = fmul fast float %6540, %6538
  %6543 = fadd fast float %6542, %6511
  br label %6544

; <label>:6544                                    ; preds = %6544, %6509
  %6545 = phi i32 [ 1, %6509 ], [ %6556, %6544 ]
  %6546 = phi float [ %6543, %6509 ], [ %6555, %6544 ]
  %6547 = phi float [ %6541, %6509 ], [ %6553, %6544 ]
  %6548 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %6545
  %6549 = load float, float* %6548, align 4, !tbaa !109, !noalias !155
  %6550 = fsub fast float %6549, %6435
  %6551 = fcmp fast olt float %6550, 0.000000e+00
  %6552 = select i1 %6551, float 0.000000e+00, float 1.000000e+00
  %6553 = fadd fast float %6552, %6547
  %6554 = fmul fast float %6552, %6550
  %6555 = fadd fast float %6554, %6546
  %6556 = add nuw nsw i32 %6545, 1
  %6557 = icmp eq i32 %6556, 4
  br i1 %6557, label %6558, label %6544, !llvm.loop !160

; <label>:6558                                    ; preds = %6544
  %6559 = add nuw nsw i32 %6512, 1
  %6560 = icmp eq i32 %6559, 8
  br i1 %6560, label %6561, label %6509, !llvm.loop !161

; <label>:6561                                    ; preds = %6558
  %6562 = fdiv fast float 1.000000e+00, %6553
  %6563 = fmul fast float %6562, %6555
  %6564 = fdiv fast float 1.000000e+00, %6435
  %6565 = fmul fast float %6563, %6564
  %6566 = call float @dx.op.unary.f32(i32 7, float %6565)  ; Saturate(value)
  %6567 = call float @dx.op.binary.f32(i32 35, float %6566, float 0.000000e+00)  ; FMax(a,b)
  %6568 = fmul fast float %6553, 3.125000e-02
  %6569 = call float @dx.op.unary.f32(i32 7, float %6568)  ; Saturate(value)
  %6570 = fmul fast float %6569, 2.000000e+00
  %6571 = fadd fast float %6570, -1.000000e+00
  %6572 = fcmp fast ogt float %6571, 0.000000e+00
  %6573 = fcmp fast olt float %6571, 0.000000e+00
  %6574 = zext i1 %6572 to i32
  %6575 = zext i1 %6573 to i32
  %6576 = sub nsw i32 %6574, %6575
  %6577 = sitofp i32 %6576 to float
  %6578 = fmul fast float %6577, %6571
  %6579 = fsub fast float 1.000000e+00, %6578
  %6580 = fmul fast float %6579, %6579
  %6581 = fmul fast float %6580, %6579
  %6582 = fsub fast float %6579, %6581
  %6583 = fmul fast float %6582, %6567
  %6584 = fsub fast float 1.000000e+00, %6581
  %6585 = fsub fast float %6584, %6583
  %6586 = fmul fast float %6577, 5.000000e-01
  %6587 = fmul fast float %6586, %6585
  %6588 = fsub fast float 5.000000e-01, %6587
  br label %6589

; <label>:6589                                    ; preds = %6561, %6437, %6422
  %6590 = phi float [ 1.000000e+00, %6422 ], [ %6503, %6437 ], [ %6588, %6561 ]
  %6591 = fcmp fast ogt float %5745, 0.000000e+00
  br i1 %6591, label %6592, label %6756, !dx.controlflow.hints !162

; <label>:6592                                    ; preds = %6589
  %6593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6594 = extractvalue %dx.types.CBufRet.f32 %6593, 1
  %6595 = fadd fast float %6594, %5667
  %6596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6597 = extractvalue %dx.types.CBufRet.f32 %6596, 2
  %6598 = extractvalue %dx.types.CBufRet.f32 %6596, 3
  %6599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6600 = extractvalue %dx.types.CBufRet.f32 %6599, 1
  %6601 = call float @dx.op.binary.f32(i32 35, float %6595, float 0.000000e+00)  ; FMax(a,b)
  %6602 = fadd fast float %6601, 0x3F10000000000000
  %6603 = fcmp fast oeq float %6600, 0.000000e+00
  br i1 %6603, label %6604, label %6671

; <label>:6604                                    ; preds = %6592
  %6605 = extractvalue %dx.types.CBufRet.f32 %6596, 1
  %6606 = extractvalue %dx.types.CBufRet.f32 %6596, 0
  %6607 = fmul fast float %6606, %5547
  %6608 = fmul fast float %6605, %5548
  %6609 = fadd fast float %6607, 5.000000e-01
  %6610 = call float @dx.op.unary.f32(i32 27, float %6609)  ; Round_ni(value)
  %6611 = fadd fast float %6608, 5.000000e-01
  %6612 = call float @dx.op.unary.f32(i32 27, float %6611)  ; Round_ni(value)
  %6613 = fsub fast float %6609, %6610
  %6614 = fsub fast float %6611, %6612
  %6615 = fadd fast float %6610, -5.000000e-01
  %6616 = fadd fast float %6612, -5.000000e-01
  %6617 = fmul fast float %6613, 2.000000e+00
  %6618 = fsub fast float 3.000000e+00, %6617
  %6619 = fadd fast float %6617, 1.000000e+00
  %6620 = fsub fast float 2.000000e+00, %6613
  %6621 = bitcast float %6618 to i32
  %6622 = sub nsw i32 2129859010, %6621
  %6623 = bitcast i32 %6622 to float
  %6624 = fmul fast float %6623, %6620
  %6625 = fadd fast float %6624, -1.000000e+00
  %6626 = bitcast float %6619 to i32
  %6627 = sub nsw i32 2129859010, %6626
  %6628 = bitcast i32 %6627 to float
  %6629 = fmul fast float %6628, %6613
  %6630 = fadd fast float %6629, 1.000000e+00
  %6631 = fmul fast float %6614, 2.000000e+00
  %6632 = fsub fast float 3.000000e+00, %6631
  %6633 = fadd fast float %6631, 1.000000e+00
  %6634 = fsub fast float 2.000000e+00, %6614
  %6635 = bitcast float %6632 to i32
  %6636 = sub nsw i32 2129859010, %6635
  %6637 = bitcast i32 %6636 to float
  %6638 = fmul fast float %6637, %6634
  %6639 = fadd fast float %6638, -1.000000e+00
  %6640 = bitcast float %6633 to i32
  %6641 = sub nsw i32 2129859010, %6640
  %6642 = bitcast i32 %6641 to float
  %6643 = fmul fast float %6642, %6614
  %6644 = fadd fast float %6643, 1.000000e+00
  %6645 = fadd fast float %6625, %6615
  %6646 = fmul fast float %6645, %6597
  %6647 = fadd fast float %6639, %6616
  %6648 = fmul fast float %6647, %6598
  %6649 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6646, float %6648, float undef, float undef, i32 0, i32 0, i32 undef, float %6602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6650 = extractvalue %dx.types.ResRet.f32 %6649, 0
  %6651 = fmul fast float %6650, %6618
  %6652 = fadd fast float %6630, %6615
  %6653 = fmul fast float %6652, %6597
  %6654 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6653, float %6648, float undef, float undef, i32 0, i32 0, i32 undef, float %6602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6655 = extractvalue %dx.types.ResRet.f32 %6654, 0
  %6656 = fmul fast float %6655, %6619
  %6657 = fadd fast float %6644, %6616
  %6658 = fmul fast float %6657, %6598
  %6659 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6646, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float %6602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6660 = extractvalue %dx.types.ResRet.f32 %6659, 0
  %6661 = fmul fast float %6660, %6618
  %6662 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %65, float %6653, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float %6602)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6663 = extractvalue %dx.types.ResRet.f32 %6662, 0
  %6664 = fmul fast float %6663, %6619
  %6665 = fadd fast float %6664, %6661
  %6666 = fmul fast float %6665, %6633
  %6667 = fadd fast float %6656, %6651
  %6668 = fmul fast float %6667, %6632
  %6669 = fadd fast float %6668, %6666
  %6670 = fmul fast float %6669, 6.250000e-02
  br label %6756

; <label>:6671                                    ; preds = %6592
  %6672 = fmul fast float %1887, 0x401921FB60000000
  %6673 = call float @dx.op.unary.f32(i32 13, float %6672)  ; Sin(value)
  %6674 = call float @dx.op.unary.f32(i32 12, float %6672)  ; Cos(value)
  %6675 = fsub fast float -0.000000e+00, %6673
  br label %6676

; <label>:6676                                    ; preds = %6725, %6671
  %6677 = phi float [ 0.000000e+00, %6671 ], [ %6720, %6725 ]
  %6678 = phi float [ 0.000000e+00, %6671 ], [ %6722, %6725 ]
  %6679 = phi i32 [ 0, %6671 ], [ %6726, %6725 ]
  %6680 = mul i32 %6679, 2
  %6681 = add i32 0, %6680
  %6682 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6681
  %6683 = load float, float* %6682, align 4
  %6684 = mul i32 %6679, 2
  %6685 = add i32 1, %6684
  %6686 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6685
  %6687 = load float, float* %6686, align 4
  %6688 = fmul fast float %6683, %6674
  %6689 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6675, float %6688)  ; FMad(a,b,c)
  %6690 = fmul fast float %6683, %6673
  %6691 = call float @dx.op.tertiary.f32(i32 46, float %6687, float %6674, float %6690)  ; FMad(a,b,c)
  %6692 = fmul fast float %6689, %6600
  %6693 = fmul fast float %6691, %6600
  %6694 = fadd fast float %6692, %5547
  %6695 = fadd fast float %6693, %5548
  %6696 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %64, float %6694, float %6695, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6697 = extractvalue %dx.types.ResRet.f32 %6696, 0
  %6698 = extractvalue %dx.types.ResRet.f32 %6696, 1
  %6699 = extractvalue %dx.types.ResRet.f32 %6696, 2
  %6700 = extractvalue %dx.types.ResRet.f32 %6696, 3
  %6701 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %6697, float* %6701, align 4
  %6702 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %6698, float* %6702, align 4
  %6703 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %6699, float* %6703, align 4
  %6704 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %6700, float* %6704, align 4
  %6705 = fsub fast float %6697, %6602
  %6706 = fcmp fast olt float %6705, 0.000000e+00
  %6707 = select i1 %6706, float 0.000000e+00, float 1.000000e+00
  %6708 = fadd fast float %6707, %6677
  %6709 = fmul fast float %6707, %6705
  %6710 = fadd fast float %6709, %6678
  br label %6711

; <label>:6711                                    ; preds = %6711, %6676
  %6712 = phi i32 [ 1, %6676 ], [ %6723, %6711 ]
  %6713 = phi float [ %6710, %6676 ], [ %6722, %6711 ]
  %6714 = phi float [ %6708, %6676 ], [ %6720, %6711 ]
  %6715 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %6712
  %6716 = load float, float* %6715, align 4, !tbaa !109, !noalias !155
  %6717 = fsub fast float %6716, %6602
  %6718 = fcmp fast olt float %6717, 0.000000e+00
  %6719 = select i1 %6718, float 0.000000e+00, float 1.000000e+00
  %6720 = fadd fast float %6719, %6714
  %6721 = fmul fast float %6719, %6717
  %6722 = fadd fast float %6721, %6713
  %6723 = add nuw nsw i32 %6712, 1
  %6724 = icmp eq i32 %6723, 4
  br i1 %6724, label %6725, label %6711, !llvm.loop !160

; <label>:6725                                    ; preds = %6711
  %6726 = add nuw nsw i32 %6679, 1
  %6727 = icmp eq i32 %6726, 8
  br i1 %6727, label %6728, label %6676, !llvm.loop !161

; <label>:6728                                    ; preds = %6725
  %6729 = fdiv fast float 1.000000e+00, %6720
  %6730 = fmul fast float %6729, %6722
  %6731 = fdiv fast float 1.000000e+00, %6602
  %6732 = fmul fast float %6730, %6731
  %6733 = call float @dx.op.unary.f32(i32 7, float %6732)  ; Saturate(value)
  %6734 = call float @dx.op.binary.f32(i32 35, float %6733, float 0.000000e+00)  ; FMax(a,b)
  %6735 = fmul fast float %6720, 3.125000e-02
  %6736 = call float @dx.op.unary.f32(i32 7, float %6735)  ; Saturate(value)
  %6737 = fmul fast float %6736, 2.000000e+00
  %6738 = fadd fast float %6737, -1.000000e+00
  %6739 = fcmp fast ogt float %6738, 0.000000e+00
  %6740 = fcmp fast olt float %6738, 0.000000e+00
  %6741 = zext i1 %6739 to i32
  %6742 = zext i1 %6740 to i32
  %6743 = sub nsw i32 %6741, %6742
  %6744 = sitofp i32 %6743 to float
  %6745 = fmul fast float %6744, %6738
  %6746 = fsub fast float 1.000000e+00, %6745
  %6747 = fmul fast float %6746, %6746
  %6748 = fmul fast float %6747, %6746
  %6749 = fsub fast float %6746, %6748
  %6750 = fmul fast float %6749, %6734
  %6751 = fsub fast float 1.000000e+00, %6748
  %6752 = fsub fast float %6751, %6750
  %6753 = fmul fast float %6744, 5.000000e-01
  %6754 = fmul fast float %6753, %6752
  %6755 = fsub fast float 5.000000e-01, %6754
  br label %6756

; <label>:6756                                    ; preds = %6728, %6604, %6589
  %6757 = phi float [ 1.000000e+00, %6589 ], [ %6670, %6604 ], [ %6755, %6728 ]
  %6758 = fcmp fast ogt float %5744, 0.000000e+00
  br i1 %6758, label %6759, label %6923, !dx.controlflow.hints !163

; <label>:6759                                    ; preds = %6756
  %6760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6761 = extractvalue %dx.types.CBufRet.f32 %6760, 0
  %6762 = fadd fast float %6761, %5667
  %6763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6764 = extractvalue %dx.types.CBufRet.f32 %6763, 2
  %6765 = extractvalue %dx.types.CBufRet.f32 %6763, 3
  %6766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6767 = extractvalue %dx.types.CBufRet.f32 %6766, 0
  %6768 = call float @dx.op.binary.f32(i32 35, float %6762, float 0.000000e+00)  ; FMax(a,b)
  %6769 = fadd fast float %6768, 0x3F10000000000000
  %6770 = fcmp fast oeq float %6767, 0.000000e+00
  br i1 %6770, label %6771, label %6838

; <label>:6771                                    ; preds = %6759
  %6772 = extractvalue %dx.types.CBufRet.f32 %6763, 1
  %6773 = extractvalue %dx.types.CBufRet.f32 %6763, 0
  %6774 = fmul fast float %6773, %5533
  %6775 = fmul fast float %6772, %5537
  %6776 = fadd fast float %6774, 5.000000e-01
  %6777 = call float @dx.op.unary.f32(i32 27, float %6776)  ; Round_ni(value)
  %6778 = fadd fast float %6775, 5.000000e-01
  %6779 = call float @dx.op.unary.f32(i32 27, float %6778)  ; Round_ni(value)
  %6780 = fsub fast float %6776, %6777
  %6781 = fsub fast float %6778, %6779
  %6782 = fadd fast float %6777, -5.000000e-01
  %6783 = fadd fast float %6779, -5.000000e-01
  %6784 = fmul fast float %6780, 2.000000e+00
  %6785 = fsub fast float 3.000000e+00, %6784
  %6786 = fadd fast float %6784, 1.000000e+00
  %6787 = fsub fast float 2.000000e+00, %6780
  %6788 = bitcast float %6785 to i32
  %6789 = sub nsw i32 2129859010, %6788
  %6790 = bitcast i32 %6789 to float
  %6791 = fmul fast float %6790, %6787
  %6792 = fadd fast float %6791, -1.000000e+00
  %6793 = bitcast float %6786 to i32
  %6794 = sub nsw i32 2129859010, %6793
  %6795 = bitcast i32 %6794 to float
  %6796 = fmul fast float %6795, %6780
  %6797 = fadd fast float %6796, 1.000000e+00
  %6798 = fmul fast float %6781, 2.000000e+00
  %6799 = fsub fast float 3.000000e+00, %6798
  %6800 = fadd fast float %6798, 1.000000e+00
  %6801 = fsub fast float 2.000000e+00, %6781
  %6802 = bitcast float %6799 to i32
  %6803 = sub nsw i32 2129859010, %6802
  %6804 = bitcast i32 %6803 to float
  %6805 = fmul fast float %6804, %6801
  %6806 = fadd fast float %6805, -1.000000e+00
  %6807 = bitcast float %6800 to i32
  %6808 = sub nsw i32 2129859010, %6807
  %6809 = bitcast i32 %6808 to float
  %6810 = fmul fast float %6809, %6781
  %6811 = fadd fast float %6810, 1.000000e+00
  %6812 = fadd fast float %6792, %6782
  %6813 = fmul fast float %6812, %6764
  %6814 = fadd fast float %6806, %6783
  %6815 = fmul fast float %6814, %6765
  %6816 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6813, float %6815, float undef, float undef, i32 0, i32 0, i32 undef, float %6769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = fmul fast float %6817, %6785
  %6819 = fadd fast float %6797, %6782
  %6820 = fmul fast float %6819, %6764
  %6821 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6820, float %6815, float undef, float undef, i32 0, i32 0, i32 undef, float %6769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6822 = extractvalue %dx.types.ResRet.f32 %6821, 0
  %6823 = fmul fast float %6822, %6786
  %6824 = fadd fast float %6811, %6783
  %6825 = fmul fast float %6824, %6765
  %6826 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6813, float %6825, float undef, float undef, i32 0, i32 0, i32 undef, float %6769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6827 = extractvalue %dx.types.ResRet.f32 %6826, 0
  %6828 = fmul fast float %6827, %6785
  %6829 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %19, %dx.types.Handle %65, float %6820, float %6825, float undef, float undef, i32 0, i32 0, i32 undef, float %6769)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6830 = extractvalue %dx.types.ResRet.f32 %6829, 0
  %6831 = fmul fast float %6830, %6786
  %6832 = fadd fast float %6831, %6828
  %6833 = fmul fast float %6832, %6800
  %6834 = fadd fast float %6823, %6818
  %6835 = fmul fast float %6834, %6799
  %6836 = fadd fast float %6835, %6833
  %6837 = fmul fast float %6836, 6.250000e-02
  br label %6923

; <label>:6838                                    ; preds = %6759
  %6839 = fmul fast float %1887, 0x401921FB60000000
  %6840 = call float @dx.op.unary.f32(i32 13, float %6839)  ; Sin(value)
  %6841 = call float @dx.op.unary.f32(i32 12, float %6839)  ; Cos(value)
  %6842 = fsub fast float -0.000000e+00, %6840
  br label %6843

; <label>:6843                                    ; preds = %6892, %6838
  %6844 = phi float [ 0.000000e+00, %6838 ], [ %6887, %6892 ]
  %6845 = phi float [ 0.000000e+00, %6838 ], [ %6889, %6892 ]
  %6846 = phi i32 [ 0, %6838 ], [ %6893, %6892 ]
  %6847 = mul i32 %6846, 2
  %6848 = add i32 0, %6847
  %6849 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6848
  %6850 = load float, float* %6849, align 4
  %6851 = mul i32 %6846, 2
  %6852 = add i32 1, %6851
  %6853 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6852
  %6854 = load float, float* %6853, align 4
  %6855 = fmul fast float %6850, %6841
  %6856 = call float @dx.op.tertiary.f32(i32 46, float %6854, float %6842, float %6855)  ; FMad(a,b,c)
  %6857 = fmul fast float %6850, %6840
  %6858 = call float @dx.op.tertiary.f32(i32 46, float %6854, float %6841, float %6857)  ; FMad(a,b,c)
  %6859 = fmul fast float %6856, %6767
  %6860 = fmul fast float %6858, %6767
  %6861 = fadd fast float %6859, %5533
  %6862 = fadd fast float %6860, %5537
  %6863 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %19, %dx.types.Handle %64, float %6861, float %6862, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6864 = extractvalue %dx.types.ResRet.f32 %6863, 0
  %6865 = extractvalue %dx.types.ResRet.f32 %6863, 1
  %6866 = extractvalue %dx.types.ResRet.f32 %6863, 2
  %6867 = extractvalue %dx.types.ResRet.f32 %6863, 3
  %6868 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %6864, float* %6868, align 4
  %6869 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %6865, float* %6869, align 4
  %6870 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6866, float* %6870, align 4
  %6871 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6867, float* %6871, align 4
  %6872 = fsub fast float %6864, %6769
  %6873 = fcmp fast olt float %6872, 0.000000e+00
  %6874 = select i1 %6873, float 0.000000e+00, float 1.000000e+00
  %6875 = fadd fast float %6874, %6844
  %6876 = fmul fast float %6874, %6872
  %6877 = fadd fast float %6876, %6845
  br label %6878

; <label>:6878                                    ; preds = %6878, %6843
  %6879 = phi i32 [ 1, %6843 ], [ %6890, %6878 ]
  %6880 = phi float [ %6877, %6843 ], [ %6889, %6878 ]
  %6881 = phi float [ %6875, %6843 ], [ %6887, %6878 ]
  %6882 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6879
  %6883 = load float, float* %6882, align 4, !tbaa !109, !noalias !155
  %6884 = fsub fast float %6883, %6769
  %6885 = fcmp fast olt float %6884, 0.000000e+00
  %6886 = select i1 %6885, float 0.000000e+00, float 1.000000e+00
  %6887 = fadd fast float %6886, %6881
  %6888 = fmul fast float %6886, %6884
  %6889 = fadd fast float %6888, %6880
  %6890 = add nuw nsw i32 %6879, 1
  %6891 = icmp eq i32 %6890, 4
  br i1 %6891, label %6892, label %6878, !llvm.loop !160

; <label>:6892                                    ; preds = %6878
  %6893 = add nuw nsw i32 %6846, 1
  %6894 = icmp eq i32 %6893, 8
  br i1 %6894, label %6895, label %6843, !llvm.loop !161

; <label>:6895                                    ; preds = %6892
  %6896 = fdiv fast float 1.000000e+00, %6887
  %6897 = fmul fast float %6896, %6889
  %6898 = fdiv fast float 1.000000e+00, %6769
  %6899 = fmul fast float %6897, %6898
  %6900 = call float @dx.op.unary.f32(i32 7, float %6899)  ; Saturate(value)
  %6901 = call float @dx.op.binary.f32(i32 35, float %6900, float 0.000000e+00)  ; FMax(a,b)
  %6902 = fmul fast float %6887, 3.125000e-02
  %6903 = call float @dx.op.unary.f32(i32 7, float %6902)  ; Saturate(value)
  %6904 = fmul fast float %6903, 2.000000e+00
  %6905 = fadd fast float %6904, -1.000000e+00
  %6906 = fcmp fast ogt float %6905, 0.000000e+00
  %6907 = fcmp fast olt float %6905, 0.000000e+00
  %6908 = zext i1 %6906 to i32
  %6909 = zext i1 %6907 to i32
  %6910 = sub nsw i32 %6908, %6909
  %6911 = sitofp i32 %6910 to float
  %6912 = fmul fast float %6911, %6905
  %6913 = fsub fast float 1.000000e+00, %6912
  %6914 = fmul fast float %6913, %6913
  %6915 = fmul fast float %6914, %6913
  %6916 = fsub fast float %6913, %6915
  %6917 = fmul fast float %6916, %6901
  %6918 = fsub fast float 1.000000e+00, %6915
  %6919 = fsub fast float %6918, %6917
  %6920 = fmul fast float %6911, 5.000000e-01
  %6921 = fmul fast float %6920, %6919
  %6922 = fsub fast float 5.000000e-01, %6921
  br label %6923

; <label>:6923                                    ; preds = %6895, %6771, %6756
  %6924 = phi float [ 1.000000e+00, %6756 ], [ %6837, %6771 ], [ %6922, %6895 ]
  %6925 = fsub fast float %6590, %6423
  %6926 = fmul fast float %6925, %5697
  %6927 = fadd fast float %6926, %6423
  %6928 = fsub fast float %6757, %6927
  %6929 = fmul fast float %6928, %5722
  %6930 = fadd fast float %6929, %6927
  %6931 = fsub fast float %6924, %6930
  %6932 = fmul fast float %6931, %5744
  %6933 = fadd fast float %6932, %6930
  %6934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6935 = extractvalue %dx.types.CBufRet.f32 %6934, 2
  %6936 = fcmp fast ogt float %6935, 0.000000e+00
  br i1 %6936, label %6937, label %6977, !dx.controlflow.hints !164

; <label>:6937                                    ; preds = %6923
  %6938 = fcmp fast ugt float %6935, 0.000000e+00
  br i1 %6938, label %6939, label %6974

; <label>:6939                                    ; preds = %6937
  %6940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6941 = extractvalue %dx.types.CBufRet.f32 %6940, 0
  %6942 = extractvalue %dx.types.CBufRet.f32 %6940, 1
  %6943 = extractvalue %dx.types.CBufRet.f32 %6940, 2
  %6944 = extractvalue %dx.types.CBufRet.f32 %6940, 3
  %6945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6946 = extractvalue %dx.types.CBufRet.f32 %6945, 0
  %6947 = extractvalue %dx.types.CBufRet.f32 %6945, 1
  %6948 = extractvalue %dx.types.CBufRet.f32 %6945, 2
  %6949 = extractvalue %dx.types.CBufRet.f32 %6945, 3
  %6950 = extractvalue %dx.types.CBufRet.f32 %6934, 0
  %6951 = extractvalue %dx.types.CBufRet.f32 %6934, 1
  %6952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6953 = extractvalue %dx.types.CBufRet.f32 %6952, 0
  %6954 = extractvalue %dx.types.CBufRet.f32 %6952, 1
  %6955 = extractvalue %dx.types.CBufRet.f32 %6952, 2
  %6956 = fadd fast float %6953, %155
  %6957 = fadd fast float %6954, %156
  %6958 = fadd fast float %6955, %157
  %6959 = fmul fast float %6956, %6941
  %6960 = call float @dx.op.tertiary.f32(i32 46, float %6942, float %6957, float %6959)  ; FMad(a,b,c)
  %6961 = call float @dx.op.tertiary.f32(i32 46, float %6943, float %6958, float %6960)  ; FMad(a,b,c)
  %6962 = fadd fast float %6961, %6944
  %6963 = fmul fast float %6956, %6946
  %6964 = call float @dx.op.tertiary.f32(i32 46, float %6947, float %6957, float %6963)  ; FMad(a,b,c)
  %6965 = call float @dx.op.tertiary.f32(i32 46, float %6948, float %6958, float %6964)  ; FMad(a,b,c)
  %6966 = fadd fast float %6965, %6949
  %6967 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %14, %dx.types.Handle %60, float %6962, float %6966, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6968 = extractvalue %dx.types.ResRet.f32 %6967, 0
  %6969 = fmul fast float %6968, %6951
  %6970 = fadd fast float %6969, %6950
  %6971 = call float @dx.op.unary.f32(i32 7, float %6970)  ; Saturate(value)
  %6972 = fmul fast float %6971, %6935
  %6973 = fsub fast float 1.000000e+00, %6972
  br label %6974

; <label>:6974                                    ; preds = %6939, %6937
  %6975 = phi float [ %6973, %6939 ], [ 1.000000e+00, %6937 ]
  %6976 = fmul fast float %6975, %6933
  br label %6977

; <label>:6977                                    ; preds = %6974, %6923, %5663
  %6978 = phi float [ 1.000000e+00, %5663 ], [ %6976, %6974 ], [ %6933, %6923 ]
  %6979 = call float @dx.op.binary.f32(i32 36, float %6978, float %6978)  ; FMin(a,b)
  %6980 = call float @dx.op.binary.f32(i32 36, float %6978, float %6979)  ; FMin(a,b)
  %6981 = fcmp fast ogt float %6980, 0.000000e+00
  br i1 %6981, label %6982, label %7147, !dx.controlflow.hints !165

; <label>:6982                                    ; preds = %6977
  %6983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6984 = extractvalue %dx.types.CBufRet.f32 %6983, 0
  %6985 = extractvalue %dx.types.CBufRet.f32 %6983, 1
  %6986 = extractvalue %dx.types.CBufRet.f32 %6983, 2
  %6987 = extractvalue %dx.types.CBufRet.f32 %6983, 3
  %6988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6989 = extractvalue %dx.types.CBufRet.f32 %6988, 0
  %6990 = extractvalue %dx.types.CBufRet.f32 %6988, 1
  %6991 = extractvalue %dx.types.CBufRet.f32 %6988, 2
  %6992 = extractvalue %dx.types.CBufRet.f32 %6988, 3
  %6993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6994 = extractvalue %dx.types.CBufRet.f32 %6993, 0
  %6995 = extractvalue %dx.types.CBufRet.f32 %6993, 1
  %6996 = extractvalue %dx.types.CBufRet.f32 %6993, 2
  %6997 = extractvalue %dx.types.CBufRet.f32 %6993, 3
  %6998 = fmul fast float %6984, %155
  %6999 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6985, float %6998)  ; FMad(a,b,c)
  %7000 = call float @dx.op.tertiary.f32(i32 46, float %157, float %6986, float %6999)  ; FMad(a,b,c)
  %7001 = fadd fast float %7000, %6987
  %7002 = fmul fast float %6989, %155
  %7003 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6990, float %7002)  ; FMad(a,b,c)
  %7004 = call float @dx.op.tertiary.f32(i32 46, float %157, float %6991, float %7003)  ; FMad(a,b,c)
  %7005 = fadd fast float %7004, %6992
  %7006 = fmul fast float %6994, %155
  %7007 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6995, float %7006)  ; FMad(a,b,c)
  %7008 = call float @dx.op.tertiary.f32(i32 46, float %157, float %6996, float %7007)  ; FMad(a,b,c)
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = extractvalue %dx.types.CBufRet.f32 %7009, 3
  %7013 = fmul fast float %7012, %7001
  %7014 = fmul fast float %7012, %7005
  %7015 = fadd fast float %7013, %7010
  %7016 = fadd fast float %7014, %7011
  %7017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %7018 = extractvalue %dx.types.CBufRet.f32 %7017, 0
  %7019 = extractvalue %dx.types.CBufRet.f32 %7017, 1
  %7020 = fsub fast float %7015, %7018
  %7021 = fsub fast float %7016, %7019
  %7022 = fcmp fast olt float %7020, 0.000000e+00
  %7023 = fcmp fast olt float %7021, 0.000000e+00
  %7024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %7025 = extractvalue %dx.types.CBufRet.f32 %7024, 0
  %7026 = extractvalue %dx.types.CBufRet.f32 %7024, 1
  %7027 = extractvalue %dx.types.CBufRet.f32 %7024, 2
  %7028 = extractvalue %dx.types.CBufRet.f32 %7024, 3
  %7029 = select i1 %7022, float %7025, float %7027
  %7030 = select i1 %7023, float %7026, float %7028
  %7031 = fmul fast float %7029, %7020
  %7032 = fmul fast float %7030, %7021
  %7033 = call float @dx.op.unary.f32(i32 6, float %7031)  ; FAbs(value)
  %7034 = call float @dx.op.unary.f32(i32 6, float %7032)  ; FAbs(value)
  %7035 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %7036 = extractvalue %dx.types.CBufRet.f32 %7035, 0
  %7037 = call float @dx.op.binary.f32(i32 35, float %7033, float %7034)  ; FMax(a,b)
  %7038 = fsub fast float %7036, %7037
  %7039 = call float @dx.op.unary.f32(i32 7, float %7038)  ; Saturate(value)
  %7040 = fcmp fast ogt float %7039, 0.000000e+00
  br i1 %7040, label %7041, label %7082, !dx.controlflow.hints !166

; <label>:7041                                    ; preds = %6982
  %7042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %63, float %7015, float %7016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 1
  %7044 = fcmp fast ogt float %7043, 0.000000e+00
  br i1 %7044, label %7045, label %7077

; <label>:7045                                    ; preds = %7041
  %7046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %63, float %7015, float %7016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7047 = extractvalue %dx.types.ResRet.f32 %7046, 0
  %7048 = extractvalue %dx.types.ResRet.f32 %7046, 1
  %7049 = extractvalue %dx.types.ResRet.f32 %7046, 2
  %7050 = extractvalue %dx.types.ResRet.f32 %7046, 3
  %7051 = fsub fast float 1.000000e+00, %6997
  %7052 = fsub fast float %7051, %7008
  %7053 = fmul fast float %7052, 0x400921FB60000000
  %7054 = fadd fast float %7053, 0x3FF921FB60000000
  %7055 = call float @dx.op.unary.f32(i32 13, float %7054)  ; Sin(value)
  %7056 = fadd fast float %7055, -1.000000e+00
  %7057 = fmul fast float %7056, 0x3FD45F3060000000
  %7058 = fmul fast float %7052, 0x401921FB60000000
  %7059 = fadd fast float %7058, 0x400921FB60000000
  %7060 = call float @dx.op.unary.f32(i32 13, float %7059)  ; Sin(value)
  %7061 = fadd fast float %7060, 0x3E7777A5C0000000
  %7062 = fmul fast float %7061, 0x3FC45F3060000000
  %7063 = fmul fast float %7052, 0x4022D97C80000000
  %7064 = fadd fast float %7063, 0x4012D97C80000000
  %7065 = call float @dx.op.unary.f32(i32 13, float %7064)  ; Sin(value)
  %7066 = fadd fast float %7065, 1.000000e+00
  %7067 = fmul fast float %7066, 0x3FBB2995E0000000
  %7068 = fmul fast float %7052, 0x402921FB60000000
  %7069 = fadd fast float %7068, 0x401921FB60000000
  %7070 = call float @dx.op.unary.f32(i32 13, float %7069)  ; Sin(value)
  %7071 = fadd fast float %7070, 0xBE8777A5C0000000
  %7072 = fmul fast float %7071, 0x3FB45F3060000000
  %7073 = call float @dx.op.dot4.f32(i32 56, float %7047, float %7048, float %7049, float %7050, float %7057, float %7062, float %7067, float %7072)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %7074 = fmul fast float %7073, 0xBFF7154760000000
  %7075 = call float @dx.op.unary.f32(i32 21, float %7074)  ; Exp(value)
  %7076 = call float @dx.op.unary.f32(i32 7, float %7075)  ; Saturate(value)
  br label %7077

; <label>:7077                                    ; preds = %7045, %7041
  %7078 = phi float [ %7076, %7045 ], [ 1.000000e+00, %7041 ]
  %7079 = fadd fast float %7078, -1.000000e+00
  %7080 = fmul fast float %7079, %7039
  %7081 = fadd fast float %7080, 1.000000e+00
  br label %7082

; <label>:7082                                    ; preds = %7077, %6982
  %7083 = phi float [ %7081, %7077 ], [ 1.000000e+00, %6982 ]
  %7084 = fmul fast float %7083, %6978
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 0
  %7087 = extractvalue %dx.types.CBufRet.f32 %7085, 1
  %7088 = extractvalue %dx.types.CBufRet.f32 %7085, 2
  %7089 = fadd fast float %7086, %155
  %7090 = fadd fast float %7087, %156
  %7091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %7092 = extractvalue %dx.types.CBufRet.f32 %7091, 1
  %7093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7094 = extractvalue %dx.types.CBufRet.f32 %7093, 0
  %7095 = extractvalue %dx.types.CBufRet.f32 %7093, 1
  %7096 = extractvalue %dx.types.CBufRet.f32 %7093, 2
  %7097 = fsub fast float -0.000000e+00, %7089
  %7098 = fsub fast float -0.000000e+00, %7090
  %7099 = fsub fast float %2585, %7088
  %7100 = fadd fast float %7099, %7092
  %7101 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7097, float %7098, float %7100)  ; Dot3(ax,ay,az,bx,by,bz)
  %7102 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7094, float %7095, float %7096)  ; Dot3(ax,ay,az,bx,by,bz)
  %7103 = fdiv fast float 1.000000e+00, %7102
  %7104 = fmul fast float %7103, %7101
  %7105 = fmul fast float %7094, %7104
  %7106 = fmul fast float %7095, %7104
  %7107 = fadd fast float %7105, %7089
  %7108 = fadd fast float %7106, %7090
  %7109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %7110 = extractvalue %dx.types.CBufRet.f32 %7109, 0
  %7111 = extractvalue %dx.types.CBufRet.f32 %7109, 1
  %7112 = fsub fast float %7107, %7110
  %7113 = fsub fast float %7108, %7111
  %7114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %7115 = extractvalue %dx.types.CBufRet.f32 %7114, 2
  %7116 = extractvalue %dx.types.CBufRet.f32 %7114, 3
  %7117 = fmul fast float %7112, %7115
  %7118 = fmul fast float %7113, %7116
  %7119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %7120 = extractvalue %dx.types.CBufRet.i32 %7119, 3
  %7121 = icmp eq i32 %7120, 0
  br i1 %7121, label %7127, label %7122

; <label>:7122                                    ; preds = %7082
  %7123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %62, float %7117, float %7118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7124 = extractvalue %dx.types.ResRet.f32 %7123, 0
  %7125 = extractvalue %dx.types.ResRet.f32 %7123, 1
  %7126 = extractvalue %dx.types.ResRet.f32 %7123, 2
  br label %7132

; <label>:7127                                    ; preds = %7082
  %7128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %63, float %7117, float %7118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7129 = extractvalue %dx.types.ResRet.f32 %7128, 0
  %7130 = extractvalue %dx.types.ResRet.f32 %7128, 1
  %7131 = extractvalue %dx.types.ResRet.f32 %7128, 2
  br label %7132

; <label>:7132                                    ; preds = %7127, %7122
  %7133 = phi float [ %7124, %7122 ], [ %7129, %7127 ]
  %7134 = phi float [ %7125, %7122 ], [ %7130, %7127 ]
  %7135 = phi float [ %7126, %7122 ], [ %7131, %7127 ]
  %7136 = extractvalue %dx.types.CBufRet.f32 %7091, 2
  %7137 = fmul fast float %7136, %7133
  %7138 = extractvalue %dx.types.CBufRet.f32 %7091, 0
  %7139 = fsub fast float %7104, %7138
  %7140 = fsub fast float %7139, %7137
  %7141 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %7140)  ; FMax(a,b)
  %7142 = fmul fast float %7141, %7134
  %7143 = call float @dx.op.binary.f32(i32 36, float %7135, float %7142)  ; FMin(a,b)
  %7144 = fmul fast float %7143, 0xBFF7154760000000
  %7145 = call float @dx.op.unary.f32(i32 21, float %7144)  ; Exp(value)
  %7146 = fmul fast float %7084, %7145
  br label %7147

; <label>:7147                                    ; preds = %7132, %6977
  %7148 = phi float [ %7146, %7132 ], [ %6978, %6977 ]
  %7149 = call float @dx.op.binary.f32(i32 36, float %7148, float %7148)  ; FMin(a,b)
  %7150 = call float @dx.op.binary.f32(i32 36, float %7148, float %7149)  ; FMin(a,b)
  %7151 = fcmp fast ogt float %7150, 0.000000e+00
  br i1 %7151, label %7152, label %7325, !dx.controlflow.hints !167

; <label>:7152                                    ; preds = %7147
  %7153 = fmul fast float %7148, %5512
  %7154 = fmul fast float %7148, %5513
  %7155 = fmul fast float %7148, %5514
  %7156 = fsub fast float %5501, %2441
  %7157 = fsub fast float %5502, %2442
  %7158 = fsub fast float %5503, %2443
  %7159 = call float @dx.op.dot3.f32(i32 55, float %7156, float %7157, float %7158, float %7156, float %7157, float %7158)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = call float @dx.op.unary.f32(i32 25, float %7159)  ; Rsqrt(value)
  %7161 = fmul fast float %7160, %7156
  %7162 = fmul fast float %7160, %7157
  %7163 = fmul fast float %7160, %7158
  %7164 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %7165 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float %7161, float %7162, float %7163)  ; Dot3(ax,ay,az,bx,by,bz)
  %7166 = call float @dx.op.unary.f32(i32 7, float %7164)  ; Saturate(value)
  %7167 = fmul fast float %7166, %7166
  %7168 = fmul fast float %7167, %2627
  %7169 = call float @dx.op.unary.f32(i32 7, float %7168)  ; Saturate(value)
  %7170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7171 = extractvalue %dx.types.CBufRet.f32 %7170, 0
  %7172 = bitcast float %7171 to i32
  %7173 = lshr i32 %7172, 8
  %7174 = and i32 %7173, 255
  %7175 = uitofp i32 %7174 to float
  %7176 = fptoui float %7175 to i32
  %7177 = and i32 %7176, 8
  %7178 = icmp ne i32 %7177, 0
  %7179 = select i1 %7178, float %7169, float 1.000000e+00
  %7180 = fmul fast float %7179, %7166
  %7181 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float %7161, float %7162, float %7163)  ; Dot3(ax,ay,az,bx,by,bz)
  %7182 = fmul fast float %7181, %7181
  %7183 = call float @dx.op.unary.f32(i32 6, float %7164)  ; FAbs(value)
  %7184 = fsub fast float 1.000000e+00, %2618
  %7185 = fmul fast float %2591, %2591
  %7186 = fmul fast float %7185, %7184
  %7187 = fadd fast float %7186, %2618
  %7188 = bitcast float %7187 to i32
  %7189 = ashr i32 %7188, 1
  %7190 = add nsw i32 %7189, 532487669
  %7191 = bitcast i32 %7190 to float
  %7192 = fadd fast float %7191, %2591
  %7193 = fmul fast float %2618, %7182
  %7194 = fsub fast float 1.000000e+00, %7182
  %7195 = fadd fast float %7194, %7193
  %7196 = fmul fast float %7183, %7183
  %7197 = fmul fast float %7196, %7184
  %7198 = fadd fast float %7197, %2618
  %7199 = bitcast float %7198 to i32
  %7200 = ashr i32 %7199, 1
  %7201 = add nsw i32 %7200, 532487669
  %7202 = bitcast i32 %7201 to float
  %7203 = fadd fast float %7202, %7183
  %7204 = fmul fast float %7195, %7195
  %7205 = fmul fast float %7204, %7192
  %7206 = fmul fast float %7205, %7203
  %7207 = fdiv fast float 0x3FF0A00000000000, %7206
  %7208 = fmul fast float %7207, %2618
  %7209 = call float @dx.op.unary.f32(i32 6, float %7165)  ; FAbs(value)
  %7210 = fsub fast float 1.000000e+00, %7209
  %7211 = bitcast float %7210 to i32
  %7212 = sitofp i32 %7211 to float
  %7213 = fmul fast float %7212, 5.000000e+00
  %7214 = fadd fast float %7213, 0xC1EFBF8940000000
  %7215 = fptosi float %7214 to i32
  %7216 = bitcast i32 %7215 to float
  %7217 = fmul fast float %7216, %2493
  %7218 = fmul fast float %7216, %2494
  %7219 = fmul fast float %7216, %3692
  %7220 = fadd fast float %7217, %2434
  %7221 = fadd fast float %7218, %2435
  %7222 = fadd fast float %7219, %2589
  %7223 = fmul fast float %7164, 9.843750e-01
  %7224 = fmul fast float %2542, 9.843750e-01
  %7225 = fadd fast float %7223, 7.812500e-03
  %7226 = fadd fast float %7224, 7.812500e-03
  %7227 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7225, float %7226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7228 = extractvalue %dx.types.ResRet.f32 %7227, 2
  %7229 = extractvalue %dx.types.ResRet.f32 %7227, 3
  %7230 = fmul fast float %7228, %2434
  %7231 = fmul fast float %7228, %2435
  %7232 = fmul fast float %7228, %2589
  %7233 = fadd fast float %7230, %7229
  %7234 = fadd fast float %7231, %7229
  %7235 = fadd fast float %7232, %7229
  %7236 = call float @dx.op.binary.f32(i32 35, float %7234, float %7235)  ; FMax(a,b)
  %7237 = call float @dx.op.binary.f32(i32 35, float %7233, float %7236)  ; FMax(a,b)
  %7238 = fsub fast float 1.000000e+00, %7237
  %7239 = fsub fast float -0.000000e+00, %2413
  %7240 = fsub fast float -0.000000e+00, %2414
  %7241 = fsub fast float -0.000000e+00, %2415
  %7242 = call float @dx.op.dot3.f32(i32 55, float %5501, float %5502, float %5503, float %7239, float %7240, float %7241)  ; Dot3(ax,ay,az,bx,by,bz)
  %7243 = call float @dx.op.unary.f32(i32 7, float %7242)  ; Saturate(value)
  %7244 = fmul fast float %7243, 9.843750e-01
  %7245 = fadd fast float %7244, 7.812500e-03
  %7246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7245, float %7226, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7247 = extractvalue %dx.types.ResRet.f32 %7246, 2
  %7248 = extractvalue %dx.types.ResRet.f32 %7246, 3
  %7249 = fmul fast float %7247, %2434
  %7250 = fmul fast float %7247, %2435
  %7251 = fmul fast float %7247, %2589
  %7252 = fadd fast float %7249, %7248
  %7253 = fadd fast float %7250, %7248
  %7254 = fadd fast float %7251, %7248
  %7255 = call float @dx.op.binary.f32(i32 35, float %7253, float %7254)  ; FMax(a,b)
  %7256 = call float @dx.op.binary.f32(i32 35, float %7252, float %7255)  ; FMax(a,b)
  %7257 = fsub fast float 1.000000e+00, %7256
  %7258 = fmul fast float %2435, 0x4012D0A400000000
  %7259 = fadd fast float %7258, 0x3FDB6377A0000000
  %7260 = fmul fast float %2615, %7259
  %7261 = call float @dx.op.unary.f32(i32 7, float %7260)  ; Saturate(value)
  %7262 = fsub fast float %5501, %2596
  %7263 = fsub fast float %5502, %2597
  %7264 = fsub fast float %5503, %2598
  %7265 = call float @dx.op.dot3.f32(i32 55, float %7262, float %7263, float %7264, float %7262, float %7263, float %7264)  ; Dot3(ax,ay,az,bx,by,bz)
  %7266 = call float @dx.op.unary.f32(i32 25, float %7265)  ; Rsqrt(value)
  %7267 = fmul fast float %7266, %7262
  %7268 = fmul fast float %7266, %7263
  %7269 = fmul fast float %7266, %7264
  %7270 = call float @dx.op.dot3.f32(i32 55, float %7239, float %7240, float %7241, float %7267, float %7268, float %7269)  ; Dot3(ax,ay,az,bx,by,bz)
  %7271 = fmul fast float %7270, %7270
  %7272 = call float @dx.op.unary.f32(i32 6, float %7243)  ; FAbs(value)
  %7273 = call float @dx.op.binary.f32(i32 35, float %7261, float 0x3F847AE140000000)  ; FMax(a,b)
  %7274 = fmul fast float %7273, %7273
  %7275 = fmul fast float %7274, %7274
  %7276 = fsub fast float 1.000000e+00, %7275
  %7277 = fmul fast float %7185, %7276
  %7278 = fadd fast float %7277, %7275
  %7279 = bitcast float %7278 to i32
  %7280 = ashr i32 %7279, 1
  %7281 = add nsw i32 %7280, 532487669
  %7282 = bitcast i32 %7281 to float
  %7283 = fadd fast float %7282, %2591
  %7284 = fmul fast float %7275, %7271
  %7285 = fsub fast float 1.000000e+00, %7271
  %7286 = fadd fast float %7285, %7284
  %7287 = fmul fast float %7272, %7272
  %7288 = fmul fast float %7287, %7276
  %7289 = fadd fast float %7288, %7275
  %7290 = bitcast float %7289 to i32
  %7291 = ashr i32 %7290, 1
  %7292 = add nsw i32 %7291, 532487669
  %7293 = bitcast i32 %7292 to float
  %7294 = fadd fast float %7293, %7272
  %7295 = fmul fast float %7286, %7286
  %7296 = fmul fast float %7295, %7283
  %7297 = fmul fast float %7296, %7294
  %7298 = fdiv fast float 0x3FF0A00000000000, %7297
  %7299 = fmul fast float %7298, %7275
  %7300 = fmul fast float %7257, %7243
  %7301 = fmul fast float %7300, %7299
  %7302 = fmul fast float %7238, %7180
  %7303 = fmul fast float %7180, %7208
  %7304 = fmul fast float %7303, %7220
  %7305 = fmul fast float %7303, %7221
  %7306 = fmul fast float %7303, %7222
  %7307 = fadd fast float %7301, %7304
  %7308 = fadd fast float %7301, %7305
  %7309 = fadd fast float %7301, %7306
  %7310 = fmul fast float %7302, %7153
  %7311 = fmul fast float %7302, %7154
  %7312 = fmul fast float %7302, %7155
  %7313 = fadd fast float %7310, %5488
  %7314 = fadd fast float %7311, %5489
  %7315 = fadd fast float %7312, %5490
  %7316 = fmul fast float %7307, %7153
  %7317 = fmul fast float %7308, %7154
  %7318 = fmul fast float %7309, %7155
  %7319 = fadd fast float %7316, %5494
  %7320 = fadd fast float %7317, %5495
  %7321 = fadd fast float %7318, %5496
  %7322 = fadd fast float %7316, %5491
  %7323 = fadd fast float %7317, %5492
  %7324 = fadd fast float %7318, %5493
  br label %7325

; <label>:7325                                    ; preds = %7152, %7147, %5482
  %7326 = phi i32 [ %5664, %7152 ], [ %5484, %5482 ], [ %5664, %7147 ]
  %7327 = phi i32 [ 1, %7152 ], [ 0, %5482 ], [ 0, %7147 ]
  %7328 = phi float [ %7316, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7329 = phi float [ %7317, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7330 = phi float [ %7318, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7331 = phi float [ %7310, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7332 = phi float [ %7311, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7333 = phi float [ %7312, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7334 = phi float [ %7322, %7152 ], [ %5491, %5482 ], [ %5491, %7147 ]
  %7335 = phi float [ %7323, %7152 ], [ %5492, %5482 ], [ %5492, %7147 ]
  %7336 = phi float [ %7324, %7152 ], [ %5493, %5482 ], [ %5493, %7147 ]
  %7337 = phi float [ %7313, %7152 ], [ %5488, %5482 ], [ %5488, %7147 ]
  %7338 = phi float [ %7314, %7152 ], [ %5489, %5482 ], [ %5489, %7147 ]
  %7339 = phi float [ %7315, %7152 ], [ %5490, %5482 ], [ %5490, %7147 ]
  %7340 = phi float [ %7148, %7152 ], [ 0.000000e+00, %5482 ], [ 0.000000e+00, %7147 ]
  %7341 = phi float [ %7319, %7152 ], [ %5494, %5482 ], [ %5494, %7147 ]
  %7342 = phi float [ %7320, %7152 ], [ %5495, %5482 ], [ %5495, %7147 ]
  %7343 = phi float [ %7321, %7152 ], [ %5496, %5482 ], [ %5496, %7147 ]
  %7344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7345 = extractvalue %dx.types.CBufRet.i32 %7344, 0
  %7346 = icmp eq i32 %7345, 0
  br i1 %7346, label %8345, label %7347

; <label>:7347                                    ; preds = %7325
  %7348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %7349 = extractvalue %dx.types.CBufRet.f32 %7348, 2
  %7350 = extractvalue %dx.types.CBufRet.f32 %7348, 3
  %7351 = fmul fast float %7349, %100
  %7352 = fmul fast float %7350, %101
  %7353 = fptoui float %7351 to i32
  %7354 = fptoui float %7352 to i32
  %7355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7356 = extractvalue %dx.types.CBufRet.f32 %7355, 0
  %7357 = extractvalue %dx.types.CBufRet.f32 %7355, 2
  %7358 = extractvalue %dx.types.CBufRet.f32 %7355, 3
  %7359 = fadd fast float %89, -4.000000e+00
  %7360 = call float @dx.op.binary.f32(i32 35, float %7359, float 0.000000e+00)  ; FMax(a,b)
  %7361 = fadd fast float %7360, %7356
  %7362 = fmul fast float %7361, %7357
  %7363 = call float @dx.op.unary.f32(i32 23, float %7362)  ; Log(value)
  %7364 = fmul fast float %7363, %7358
  %7365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7366 = extractvalue %dx.types.CBufRet.f32 %7365, 2
  %7367 = fmul fast float %7364, %7366
  %7368 = call float @dx.op.unary.f32(i32 7, float %7367)  ; Saturate(value)
  %7369 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7370 = extractvalue %dx.types.CBufRet.i32 %7369, 1
  %7371 = add i32 %7370, -1
  %7372 = uitofp i32 %7370 to float
  %7373 = fmul fast float %7372, %7368
  %7374 = fptoui float %7373 to i32
  %7375 = call i32 @dx.op.binary.i32(i32 40, i32 %7374, i32 %7371)  ; UMin(a,b)
  %7376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7377 = extractvalue %dx.types.CBufRet.i32 %7376, 2
  %7378 = extractvalue %dx.types.CBufRet.i32 %7376, 3
  %7379 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7354, i32 %7377, i32 %7353)  ; UMad(a,b,c)
  %7380 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7375, i32 %7378, i32 %7379)  ; UMad(a,b,c)
  %7381 = add nsw i32 %7345, -1
  %7382 = call i32 @dx.op.binary.i32(i32 37, i32 %7381, i32 0)  ; IMax(a,b)
  %7383 = call float @dx.op.binary.f32(i32 35, float %89, float 0.000000e+00)  ; FMax(a,b)
  %7384 = fptoui float %7383 to i32
  %7385 = lshr i32 %7384, 5
  %7386 = call i32 @dx.op.binary.i32(i32 40, i32 %7385, i32 8191)  ; UMin(a,b)
  %7387 = shl i32 %7386, 2
  %7388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %7387, i32 undef)  ; BufferLoad(srv,index,wot)
  %7389 = extractvalue %dx.types.ResRet.i32 %7388, 0
  %7390 = lshr i32 %7389, 16
  %7391 = and i32 %7389, 65535
  %7392 = lshr i32 %7389, 21
  %7393 = lshr i32 %7391, 5
  %7394 = call i32 @dx.op.binary.i32(i32 40, i32 %7393, i32 %7382)  ; UMin(a,b)
  %7395 = icmp ugt i32 %7392, %7394
  br i1 %7395, label %8278, label %7396

; <label>:7396                                    ; preds = %7347
  br label %7397

; <label>:7397                                    ; preds = %8247, %7396
  %7398 = phi i32 [ %8248, %8247 ], [ %7326, %7396 ]
  %7399 = phi i32 [ %8249, %8247 ], [ 0, %7396 ]
  %7400 = phi i32 [ %8250, %8247 ], [ 0, %7396 ]
  %7401 = phi i32 [ %8251, %8247 ], [ 0, %7396 ]
  %7402 = phi i32 [ %8252, %8247 ], [ 0, %7396 ]
  %7403 = phi i32 [ %8253, %8247 ], [ 0, %7396 ]
  %7404 = phi i32 [ %8254, %8247 ], [ 0, %7396 ]
  %7405 = phi i32 [ %8255, %8247 ], [ 0, %7396 ]
  %7406 = phi i32 [ %8256, %8247 ], [ 0, %7396 ]
  %7407 = phi i32 [ %8275, %8247 ], [ %7392, %7396 ]
  %7408 = phi float [ %8257, %8247 ], [ %7328, %7396 ]
  %7409 = phi float [ %8258, %8247 ], [ %7329, %7396 ]
  %7410 = phi float [ %8259, %8247 ], [ %7330, %7396 ]
  %7411 = phi float [ %8260, %8247 ], [ %7331, %7396 ]
  %7412 = phi float [ %8261, %8247 ], [ %7332, %7396 ]
  %7413 = phi float [ %8262, %8247 ], [ %7333, %7396 ]
  %7414 = phi float [ %8263, %8247 ], [ %7334, %7396 ]
  %7415 = phi float [ %8264, %8247 ], [ %7335, %7396 ]
  %7416 = phi float [ %8265, %8247 ], [ %7336, %7396 ]
  %7417 = phi float [ %8266, %8247 ], [ %7337, %7396 ]
  %7418 = phi float [ %8267, %8247 ], [ %7338, %7396 ]
  %7419 = phi float [ %8268, %8247 ], [ %7339, %7396 ]
  %7420 = phi float [ %8269, %8247 ], [ %7341, %7396 ]
  %7421 = phi float [ %8270, %8247 ], [ %7342, %7396 ]
  %7422 = phi float [ %8271, %8247 ], [ %7343, %7396 ]
  %7423 = phi float [ %8272, %8247 ], [ %7337, %7396 ]
  %7424 = phi float [ %8273, %8247 ], [ %7338, %7396 ]
  %7425 = phi float [ %8274, %8247 ], [ %7339, %7396 ]
  %7426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7427 = extractvalue %dx.types.CBufRet.i32 %7426, 0
  %7428 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7380, i32 %7427, i32 %7407)  ; UMad(a,b,c)
  %7429 = shl i32 %7428, 2
  %7430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %7429, i32 undef)  ; BufferLoad(srv,index,wot)
  %7431 = extractvalue %dx.types.ResRet.i32 %7430, 0
  %7432 = shl i32 %7407, 5
  %7433 = sub nsw i32 %7390, %7432
  %7434 = call i32 @dx.op.binary.i32(i32 37, i32 %7433, i32 0)  ; IMax(a,b)
  %7435 = call i32 @dx.op.binary.i32(i32 38, i32 %7434, i32 31)  ; IMin(a,b)
  %7436 = sub nsw i32 1, %7390
  %7437 = add nsw i32 %7436, %7391
  %7438 = call i32 @dx.op.binary.i32(i32 37, i32 %7437, i32 0)  ; IMax(a,b)
  %7439 = call i32 @dx.op.binary.i32(i32 38, i32 %7438, i32 32)  ; IMin(a,b)
  %7440 = and i32 %7439, 31
  %7441 = shl i32 -1, %7440
  %7442 = xor i32 %7441, -1
  %7443 = and i32 %7435, 31
  %7444 = shl i32 %7442, %7443
  %7445 = icmp eq i32 %7439, 32
  %7446 = select i1 %7445, i32 -1, i32 %7444
  %7447 = and i32 %7446, %7431
  %7448 = icmp eq i32 %7447, 0
  br i1 %7448, label %8247, label %7449

; <label>:7449                                    ; preds = %7397
  br label %7450

; <label>:7450                                    ; preds = %7645, %7449
  %7451 = phi i32 [ %7646, %7645 ], [ %7398, %7449 ]
  %7452 = phi i32 [ %7635, %7645 ], [ %7399, %7449 ]
  %7453 = phi i32 [ %7637, %7645 ], [ %7400, %7449 ]
  %7454 = phi i32 [ %7639, %7645 ], [ %7401, %7449 ]
  %7455 = phi i32 [ %7641, %7645 ], [ %7402, %7449 ]
  %7456 = phi i32 [ %7647, %7645 ], [ %7403, %7449 ]
  %7457 = phi i32 [ %7648, %7645 ], [ %7404, %7449 ]
  %7458 = phi i32 [ %7649, %7645 ], [ %7405, %7449 ]
  %7459 = phi i32 [ %7650, %7645 ], [ %7406, %7449 ]
  %7460 = phi i32 [ %7483, %7645 ], [ %7447, %7449 ]
  %7461 = phi float [ %7651, %7645 ], [ %7408, %7449 ]
  %7462 = phi float [ %7652, %7645 ], [ %7409, %7449 ]
  %7463 = phi float [ %7653, %7645 ], [ %7410, %7449 ]
  %7464 = phi float [ %7654, %7645 ], [ %7411, %7449 ]
  %7465 = phi float [ %7655, %7645 ], [ %7412, %7449 ]
  %7466 = phi float [ %7656, %7645 ], [ %7413, %7449 ]
  %7467 = phi float [ %7657, %7645 ], [ %7414, %7449 ]
  %7468 = phi float [ %7658, %7645 ], [ %7415, %7449 ]
  %7469 = phi float [ %7659, %7645 ], [ %7416, %7449 ]
  %7470 = phi float [ %7660, %7645 ], [ %7417, %7449 ]
  %7471 = phi float [ %7661, %7645 ], [ %7418, %7449 ]
  %7472 = phi float [ %7662, %7645 ], [ %7419, %7449 ]
  %7473 = phi float [ %7663, %7645 ], [ %7420, %7449 ]
  %7474 = phi float [ %7664, %7645 ], [ %7421, %7449 ]
  %7475 = phi float [ %7665, %7645 ], [ %7422, %7449 ]
  %7476 = phi float [ %7666, %7645 ], [ %7423, %7449 ]
  %7477 = phi float [ %7667, %7645 ], [ %7424, %7449 ]
  %7478 = phi float [ %7668, %7645 ], [ %7425, %7449 ]
  %7479 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7460)  ; FirstbitLo(value)
  %7480 = add i32 %7479, %7432
  %7481 = and i32 %7479, 31
  %7482 = shl i32 1, %7481
  %7483 = xor i32 %7482, %7460
  %7484 = mul i32 %7480, 112
  %7485 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7484, i32 undef)  ; BufferLoad(srv,index,wot)
  %7486 = extractvalue %dx.types.ResRet.f32 %7485, 0
  %7487 = extractvalue %dx.types.ResRet.f32 %7485, 1
  %7488 = extractvalue %dx.types.ResRet.f32 %7485, 2
  %7489 = or i32 %7484, 12
  %7490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7489, i32 undef)  ; BufferLoad(srv,index,wot)
  %7491 = extractvalue %dx.types.ResRet.f32 %7490, 0
  %7492 = add i32 %7484, 16
  %7493 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7492, i32 undef)  ; BufferLoad(srv,index,wot)
  %7494 = extractvalue %dx.types.ResRet.f32 %7493, 0
  %7495 = extractvalue %dx.types.ResRet.f32 %7493, 1
  %7496 = extractvalue %dx.types.ResRet.f32 %7493, 2
  %7497 = add i32 %7484, 28
  %7498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %7497, i32 undef)  ; BufferLoad(srv,index,wot)
  %7499 = extractvalue %dx.types.ResRet.i32 %7498, 0
  %7500 = add i32 %7484, 32
  %7501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7500, i32 undef)  ; BufferLoad(srv,index,wot)
  %7502 = extractvalue %dx.types.ResRet.f32 %7501, 0
  %7503 = extractvalue %dx.types.ResRet.f32 %7501, 1
  %7504 = extractvalue %dx.types.ResRet.f32 %7501, 2
  %7505 = add i32 %7484, 44
  %7506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7505, i32 undef)  ; BufferLoad(srv,index,wot)
  %7507 = extractvalue %dx.types.ResRet.f32 %7506, 0
  %7508 = add i32 %7484, 48
  %7509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7508, i32 undef)  ; BufferLoad(srv,index,wot)
  %7510 = extractvalue %dx.types.ResRet.f32 %7509, 0
  %7511 = extractvalue %dx.types.ResRet.f32 %7509, 1
  %7512 = extractvalue %dx.types.ResRet.f32 %7509, 2
  %7513 = extractvalue %dx.types.ResRet.f32 %7509, 3
  %7514 = add i32 %7484, 64
  %7515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7514, i32 undef)  ; BufferLoad(srv,index,wot)
  %7516 = extractvalue %dx.types.ResRet.f32 %7515, 0
  %7517 = extractvalue %dx.types.ResRet.f32 %7515, 1
  %7518 = extractvalue %dx.types.ResRet.f32 %7515, 2
  %7519 = extractvalue %dx.types.ResRet.f32 %7515, 3
  %7520 = add i32 %7484, 80
  %7521 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %28, i32 %7520, i32 undef)  ; BufferLoad(srv,index,wot)
  %7522 = extractvalue %dx.types.ResRet.f32 %7521, 1
  %7523 = extractvalue %dx.types.ResRet.f32 %7521, 2
  %7524 = add i32 %7484, 92
  %7525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %7524, i32 undef)  ; BufferLoad(srv,index,wot)
  %7526 = extractvalue %dx.types.ResRet.i32 %7525, 0
  %7527 = call float @dx.op.dot3.f32(i32 55, float %7486, float %7487, float %7488, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7528 = select i1 %2584, float %7522, float %7486
  %7529 = select i1 %2584, float %7527, float %7487
  %7530 = select i1 %2584, float %7523, float %7488
  %7531 = and i32 %7526, 65535
  %7532 = uitofp i32 %7531 to float
  %7533 = lshr i32 %7526, 16
  %7534 = uitofp i32 %7533 to float
  %7535 = and i32 %7499, 65535
  %7536 = lshr i32 %7499, 24
  %7537 = and i32 %7536, 3
  %7538 = and i32 %7499, 536870912
  %7539 = icmp ne i32 %7538, 0
  %7540 = icmp slt i32 %7499, 0
  %7541 = icmp eq i32 %7537, 2
  %7542 = call float @dx.op.dot3.f32(i32 55, float %7502, float %7503, float %7504, float %7502, float %7503, float %7504)  ; Dot3(ax,ay,az,bx,by,bz)
  %7543 = fsub fast float %155, %7510
  %7544 = fsub fast float %156, %7511
  %7545 = fsub fast float %157, %7512
  %7546 = call float @dx.op.dot3.f32(i32 55, float %7543, float %7544, float %7545, float %7502, float %7503, float %7504)  ; Dot3(ax,ay,az,bx,by,bz)
  %7547 = fdiv fast float %7546, %7542
  %7548 = call float @dx.op.binary.f32(i32 35, float %7547, float -1.000000e+00)  ; FMax(a,b)
  %7549 = call float @dx.op.binary.f32(i32 36, float %7548, float 1.000000e+00)  ; FMin(a,b)
  %7550 = fmul fast float %7549, %7502
  %7551 = fmul fast float %7549, %7503
  %7552 = fmul fast float %7549, %7504
  %7553 = fadd fast float %7550, %7510
  %7554 = fadd fast float %7551, %7511
  %7555 = fadd fast float %7552, %7512
  %7556 = fsub fast float %7553, %155
  %7557 = fsub fast float %7554, %156
  %7558 = fsub fast float %7555, %157
  %7559 = call float @dx.op.dot3.f32(i32 55, float %7556, float %7557, float %7558, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7560 = call float @dx.op.unary.f32(i32 24, float %7559)  ; Sqrt(value)
  %7561 = fdiv fast float 1.000000e+00, %7560
  %7562 = fmul fast float %7556, %7561
  %7563 = fmul fast float %7557, %7561
  %7564 = fmul fast float %7558, %7561
  %7565 = fadd fast float %7560, %7491
  %7566 = fdiv fast float 1.000000e+00, %7565
  %7567 = fmul float %7507, %7566
  %7568 = fmul float %7567, %7567
  %7569 = call float @dx.op.unary.f32(i32 7, float %7568)  ; Saturate(value)
  br i1 %7541, label %7570, label %7594

; <label>:7570                                    ; preds = %7450
  %7571 = fmul fast float %7518, %7494
  %7572 = fmul fast float %7518, %7495
  %7573 = fmul fast float %7518, %7496
  %7574 = fsub fast float %7571, %155
  %7575 = fadd fast float %7574, %7553
  %7576 = fsub fast float %7572, %156
  %7577 = fadd fast float %7576, %7554
  %7578 = fsub fast float %7573, %157
  %7579 = fadd fast float %7578, %7555
  %7580 = call float @dx.op.dot3.f32(i32 55, float %7575, float %7577, float %7579, float %7575, float %7577, float %7579)  ; Dot3(ax,ay,az,bx,by,bz)
  %7581 = call float @dx.op.unary.f32(i32 25, float %7580)  ; Rsqrt(value)
  %7582 = fmul fast float %7581, %7575
  %7583 = fmul fast float %7581, %7577
  %7584 = fmul fast float %7581, %7579
  %7585 = fsub fast float %155, %7553
  %7586 = fsub fast float %156, %7554
  %7587 = fsub fast float %157, %7555
  %7588 = fsub fast float -0.000000e+00, %7585
  %7589 = fsub fast float -0.000000e+00, %7586
  %7590 = fsub fast float -0.000000e+00, %7587
  %7591 = call float @dx.op.dot3.f32(i32 55, float %7588, float %7589, float %7590, float %7494, float %7495, float %7496)  ; Dot3(ax,ay,az,bx,by,bz)
  %7592 = fcmp fast ogt float %7591, 0.000000e+00
  %7593 = uitofp i1 %7592 to float
  br label %7594

; <label>:7594                                    ; preds = %7570, %7450
  %7595 = phi float [ %7593, %7570 ], [ 1.000000e+00, %7450 ]
  %7596 = phi float [ %7582, %7570 ], [ %7562, %7450 ]
  %7597 = phi float [ %7583, %7570 ], [ %7563, %7450 ]
  %7598 = phi float [ %7584, %7570 ], [ %7564, %7450 ]
  %7599 = call float @dx.op.dot3.f32(i32 55, float %7494, float %7495, float %7496, float %7596, float %7597, float %7598)  ; Dot3(ax,ay,az,bx,by,bz)
  %7600 = fmul fast float %7599, %7599
  %7601 = call float @dx.op.unary.f32(i32 7, float %7600)  ; Saturate(value)
  %7602 = fsub fast float 1.000000e+00, %7601
  %7603 = fmul fast float %7602, 5.000000e-01
  %7604 = fcmp fast ogt float %7599, 0.000000e+00
  %7605 = fsub fast float 1.000000e+00, %7603
  %7606 = select i1 %7604, float %7603, float %7605
  %7607 = fmul fast float %7606, %7534
  %7608 = fadd fast float %7607, %7532
  %7609 = fmul fast float %7608, 0x3EF0001000000000
  %7610 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %63, float %7609, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7611 = extractvalue %dx.types.ResRet.f32 %7610, 0
  %7612 = fmul fast float %7599, %7516
  %7613 = fadd fast float %7612, %7517
  %7614 = call float @dx.op.unary.f32(i32 7, float %7613)  ; Saturate(value)
  %7615 = select i1 %7541, float 1.000000e+00, float %7614
  %7616 = select i1 %7541, float %7614, float 1.000000e+00
  %7617 = fmul fast float %7560, %7513
  %7618 = fsub fast float 1.000000e+00, %7617
  %7619 = fmul fast float %7618, %7519
  %7620 = call float @dx.op.unary.f32(i32 7, float %7619)  ; Saturate(value)
  %7621 = fmul fast float %7620, %7616
  %7622 = fmul fast float %7621, 2.000000e+00
  %7623 = fsub fast float 3.000000e+00, %7622
  %7624 = fmul fast float %7611, %7595
  %7625 = fmul fast float %7621, %7621
  %7626 = fmul fast float %7625, %7624
  %7627 = fmul fast float %7626, %7623
  %7628 = xor i1 %7539, true
  %7629 = and i1 %7541, %7628
  %7630 = icmp ne i32 %7537, 2
  %7631 = and i1 %7630, %7628
  %7632 = and i1 %7539, %7541
  %7633 = and i1 %7539, %7630
  %7634 = zext i1 %7629 to i32
  %7635 = add i32 %7634, %7452
  %7636 = zext i1 %7631 to i32
  %7637 = add i32 %7636, %7453
  %7638 = zext i1 %7632 to i32
  %7639 = add i32 %7638, %7454
  %7640 = zext i1 %7633 to i32
  %7641 = add i32 %7640, %7455
  %7642 = call float @dx.op.binary.f32(i32 36, float %7627, float %7627)  ; FMin(a,b)
  %7643 = call float @dx.op.binary.f32(i32 36, float %7627, float %7642)  ; FMin(a,b)
  %7644 = fcmp fast ogt float %7643, 0.000000e+00
  br i1 %7644, label %7670, label %7645, !dx.controlflow.hints !168

; <label>:7645                                    ; preds = %8231, %7594
  %7646 = phi i32 [ %8241, %8231 ], [ %7451, %7594 ]
  %7647 = phi i32 [ %8242, %8231 ], [ %7456, %7594 ]
  %7648 = phi i32 [ %8243, %8231 ], [ %7457, %7594 ]
  %7649 = phi i32 [ %8244, %8231 ], [ %7458, %7594 ]
  %7650 = phi i32 [ %8245, %8231 ], [ %7459, %7594 ]
  %7651 = phi float [ %8202, %8231 ], [ %7461, %7594 ]
  %7652 = phi float [ %8203, %8231 ], [ %7462, %7594 ]
  %7653 = phi float [ %8204, %8231 ], [ %7463, %7594 ]
  %7654 = phi float [ %8205, %8231 ], [ %7464, %7594 ]
  %7655 = phi float [ %8206, %8231 ], [ %7465, %7594 ]
  %7656 = phi float [ %8207, %8231 ], [ %7466, %7594 ]
  %7657 = phi float [ %8208, %8231 ], [ %7467, %7594 ]
  %7658 = phi float [ %8209, %8231 ], [ %7468, %7594 ]
  %7659 = phi float [ %8210, %8231 ], [ %7469, %7594 ]
  %7660 = phi float [ %8211, %8231 ], [ %7470, %7594 ]
  %7661 = phi float [ %8212, %8231 ], [ %7471, %7594 ]
  %7662 = phi float [ %8213, %8231 ], [ %7472, %7594 ]
  %7663 = phi float [ %8214, %8231 ], [ %7473, %7594 ]
  %7664 = phi float [ %8215, %8231 ], [ %7474, %7594 ]
  %7665 = phi float [ %8216, %8231 ], [ %7475, %7594 ]
  %7666 = phi float [ %8217, %8231 ], [ %7476, %7594 ]
  %7667 = phi float [ %8218, %8231 ], [ %7477, %7594 ]
  %7668 = phi float [ %8219, %8231 ], [ %7478, %7594 ]
  %7669 = icmp eq i32 %7460, %7482
  br i1 %7669, label %8246, label %7450

; <label>:7670                                    ; preds = %7594
  %7671 = icmp eq i32 %7535, 255
  br i1 %7671, label %7809, label %7672, !dx.controlflow.hints !169

; <label>:7672                                    ; preds = %7670
  %7673 = mul nuw nsw i32 %7535, 176
  %7674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7673, i32 undef)  ; BufferLoad(srv,index,wot)
  %7675 = extractvalue %dx.types.ResRet.f32 %7674, 0
  %7676 = extractvalue %dx.types.ResRet.f32 %7674, 1
  %7677 = extractvalue %dx.types.ResRet.f32 %7674, 2
  %7678 = extractvalue %dx.types.ResRet.f32 %7674, 3
  %7679 = add nuw nsw i32 %7673, 16
  %7680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7679, i32 undef)  ; BufferLoad(srv,index,wot)
  %7681 = extractvalue %dx.types.ResRet.f32 %7680, 0
  %7682 = extractvalue %dx.types.ResRet.f32 %7680, 1
  %7683 = add nuw nsw i32 %7673, 32
  %7684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7683, i32 undef)  ; BufferLoad(srv,index,wot)
  %7685 = extractvalue %dx.types.ResRet.f32 %7684, 0
  %7686 = extractvalue %dx.types.ResRet.f32 %7684, 1
  %7687 = add nuw nsw i32 %7673, 48
  %7688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7687, i32 undef)  ; BufferLoad(srv,index,wot)
  %7689 = extractvalue %dx.types.ResRet.f32 %7688, 0
  %7690 = extractvalue %dx.types.ResRet.f32 %7688, 1
  %7691 = extractvalue %dx.types.ResRet.f32 %7688, 2
  %7692 = extractvalue %dx.types.ResRet.f32 %7688, 3
  %7693 = add nuw nsw i32 %7673, 64
  %7694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7693, i32 undef)  ; BufferLoad(srv,index,wot)
  %7695 = extractvalue %dx.types.ResRet.f32 %7694, 0
  %7696 = extractvalue %dx.types.ResRet.f32 %7694, 1
  %7697 = extractvalue %dx.types.ResRet.f32 %7694, 2
  %7698 = extractvalue %dx.types.ResRet.f32 %7694, 3
  %7699 = add nuw nsw i32 %7673, 80
  %7700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7699, i32 undef)  ; BufferLoad(srv,index,wot)
  %7701 = extractvalue %dx.types.ResRet.f32 %7700, 0
  %7702 = extractvalue %dx.types.ResRet.f32 %7700, 1
  %7703 = extractvalue %dx.types.ResRet.f32 %7700, 2
  %7704 = extractvalue %dx.types.ResRet.f32 %7700, 3
  %7705 = add nuw nsw i32 %7673, 96
  %7706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %7705, i32 undef)  ; BufferLoad(srv,index,wot)
  %7707 = extractvalue %dx.types.ResRet.f32 %7706, 0
  %7708 = extractvalue %dx.types.ResRet.f32 %7706, 1
  %7709 = extractvalue %dx.types.ResRet.f32 %7706, 2
  %7710 = extractvalue %dx.types.ResRet.f32 %7706, 3
  %7711 = bitcast float %7682 to i32
  %7712 = fmul fast float %7689, %155
  %7713 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7695, float %7712)  ; FMad(a,b,c)
  %7714 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7701, float %7713)  ; FMad(a,b,c)
  %7715 = fadd fast float %7714, %7707
  %7716 = fmul fast float %7690, %155
  %7717 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7696, float %7716)  ; FMad(a,b,c)
  %7718 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7702, float %7717)  ; FMad(a,b,c)
  %7719 = fadd fast float %7718, %7708
  %7720 = fmul fast float %7691, %155
  %7721 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7697, float %7720)  ; FMad(a,b,c)
  %7722 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7703, float %7721)  ; FMad(a,b,c)
  %7723 = fadd fast float %7722, %7709
  %7724 = fmul fast float %7692, %155
  %7725 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7698, float %7724)  ; FMad(a,b,c)
  %7726 = call float @dx.op.tertiary.f32(i32 46, float %157, float %7704, float %7725)  ; FMad(a,b,c)
  %7727 = fadd fast float %7726, %7710
  %7728 = fdiv fast float %7715, %7727
  %7729 = fdiv fast float %7719, %7727
  %7730 = fdiv fast float %7723, %7727
  %7731 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7730)  ; FMax(a,b)
  %7732 = fmul fast float %1887, 0x401921FB60000000
  %7733 = call float @dx.op.unary.f32(i32 13, float %7732)  ; Sin(value)
  %7734 = call float @dx.op.unary.f32(i32 12, float %7732)  ; Cos(value)
  %7735 = fmul fast float %7734, %7686
  %7736 = call float @dx.op.tertiary.f32(i32 46, float %7733, float %7686, float 0.000000e+00)  ; FMad(a,b,c)
  %7737 = fmul fast float %7686, %7733
  %7738 = fsub fast float -0.000000e+00, %7737
  %7739 = call float @dx.op.tertiary.f32(i32 46, float %7734, float %7686, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7740

; <label>:7740                                    ; preds = %7740, %7672
  %7741 = phi float [ 0.000000e+00, %7672 ], [ %7773, %7740 ]
  %7742 = phi float [ 0.000000e+00, %7672 ], [ %7775, %7740 ]
  %7743 = phi i32 [ 0, %7672 ], [ %7776, %7740 ]
  %7744 = mul i32 %7743, 2
  %7745 = add i32 0, %7744
  %7746 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7745
  %7747 = load float, float* %7746, align 4
  %7748 = mul i32 %7743, 2
  %7749 = add i32 1, %7748
  %7750 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7749
  %7751 = load float, float* %7750, align 4
  %7752 = fmul fast float %7735, %7747
  %7753 = call float @dx.op.tertiary.f32(i32 46, float %7751, float %7738, float %7752)  ; FMad(a,b,c)
  %7754 = fmul fast float %7747, %7736
  %7755 = call float @dx.op.tertiary.f32(i32 46, float %7751, float %7739, float %7754)  ; FMad(a,b,c)
  %7756 = fadd fast float %7753, %7728
  %7757 = fadd fast float %7755, %7729
  %7758 = fmul fast float %7756, %7681
  %7759 = fmul fast float %7757, %7681
  %7760 = call float @dx.op.binary.f32(i32 35, float %7758, float %7677)  ; FMax(a,b)
  %7761 = call float @dx.op.binary.f32(i32 35, float %7759, float %7677)  ; FMax(a,b)
  %7762 = call float @dx.op.binary.f32(i32 36, float %7760, float %7678)  ; FMin(a,b)
  %7763 = call float @dx.op.binary.f32(i32 36, float %7761, float %7678)  ; FMin(a,b)
  %7764 = fadd fast float %7762, %7675
  %7765 = fadd fast float %7763, %7676
  %7766 = uitofp i32 %7711 to float
  %7767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %64, float %7764, float %7765, float %7766, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7768 = extractvalue %dx.types.ResRet.f32 %7767, 0
  %7769 = fsub fast float %7768, %7731
  %7770 = fsub fast float %7769, %7685
  %7771 = fcmp fast ogt float %7770, 0.000000e+00
  %7772 = select i1 %7771, float 1.000000e+00, float 0.000000e+00
  %7773 = fadd fast float %7772, %7741
  %7774 = select i1 %7771, float %7770, float 0.000000e+00
  %7775 = fadd fast float %7774, %7742
  %7776 = add nuw nsw i32 %7743, 1
  %7777 = icmp eq i32 %7776, 8
  br i1 %7777, label %7778, label %7740

; <label>:7778                                    ; preds = %7740
  %7779 = fdiv fast float 1.000000e+00, %7773
  %7780 = fmul fast float %7779, %7775
  %7781 = fdiv fast float 1.000000e+00, %7731
  %7782 = fmul fast float %7780, %7781
  %7783 = call float @dx.op.unary.f32(i32 7, float %7782)  ; Saturate(value)
  %7784 = call float @dx.op.binary.f32(i32 35, float %7783, float 0.000000e+00)  ; FMax(a,b)
  %7785 = fmul fast float %7773, 1.250000e-01
  %7786 = call float @dx.op.unary.f32(i32 7, float %7785)  ; Saturate(value)
  %7787 = fmul fast float %7786, 2.000000e+00
  %7788 = fadd fast float %7787, -1.000000e+00
  %7789 = fcmp fast ogt float %7788, 0.000000e+00
  %7790 = fcmp fast olt float %7788, 0.000000e+00
  %7791 = zext i1 %7789 to i32
  %7792 = zext i1 %7790 to i32
  %7793 = sub nsw i32 %7791, %7792
  %7794 = sitofp i32 %7793 to float
  %7795 = fmul fast float %7794, %7788
  %7796 = fsub fast float 1.000000e+00, %7795
  %7797 = fmul fast float %7796, %7796
  %7798 = fmul fast float %7797, %7796
  %7799 = fsub fast float %7796, %7798
  %7800 = fmul fast float %7799, %7784
  %7801 = fsub fast float 1.000000e+00, %7798
  %7802 = fsub fast float %7801, %7800
  %7803 = fmul fast float %7794, 5.000000e-01
  %7804 = fmul fast float %7803, %7802
  %7805 = fsub fast float -5.000000e-01, %7804
  %7806 = fmul fast float %7805, %7615
  %7807 = fadd fast float %7806, 1.000000e+00
  %7808 = fmul fast float %7807, %7627
  br label %7809

; <label>:7809                                    ; preds = %7778, %7670
  %7810 = phi float [ %7808, %7778 ], [ %7627, %7670 ]
  %7811 = call float @dx.op.binary.f32(i32 36, float %7810, float %7810)  ; FMin(a,b)
  %7812 = call float @dx.op.binary.f32(i32 36, float %7810, float %7811)  ; FMin(a,b)
  %7813 = fcmp fast ogt float %7812, 0.000000e+00
  br i1 %7813, label %7814, label %8201, !dx.controlflow.hints !170

; <label>:7814                                    ; preds = %7809
  %7815 = fmul fast float %7810, %7528
  %7816 = fmul fast float %7810, %7529
  %7817 = fmul fast float %7810, %7530
  %7818 = fadd fast float %7562, %2413
  %7819 = fadd fast float %7563, %2414
  %7820 = fadd fast float %7564, %2415
  %7821 = call float @dx.op.dot3.f32(i32 55, float %7562, float %7563, float %7564, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7822 = call float @dx.op.dot3.f32(i32 55, float %7562, float %7563, float %7564, float %7818, float %7819, float %7820)  ; Dot3(ax,ay,az,bx,by,bz)
  %7823 = fdiv fast float 1.000000e+00, %7822
  %7824 = fmul fast float %7823, %7821
  %7825 = fmul fast float %7824, %7818
  %7826 = fmul fast float %7824, %7819
  %7827 = fmul fast float %7824, %7820
  %7828 = fadd fast float %7543, %7825
  %7829 = fadd fast float %7544, %7826
  %7830 = fadd fast float %7545, %7827
  %7831 = call float @dx.op.dot3.f32(i32 55, float %7828, float %7829, float %7830, float %7502, float %7503, float %7504)  ; Dot3(ax,ay,az,bx,by,bz)
  %7832 = fdiv fast float %7831, %7542
  %7833 = call float @dx.op.binary.f32(i32 35, float %7832, float -1.000000e+00)  ; FMax(a,b)
  %7834 = call float @dx.op.binary.f32(i32 36, float %7833, float 1.000000e+00)  ; FMin(a,b)
  %7835 = fmul fast float %7834, %7502
  %7836 = fmul fast float %7834, %7503
  %7837 = fmul fast float %7834, %7504
  %7838 = fsub fast float %7510, %155
  %7839 = fadd fast float %7838, %7835
  %7840 = fsub fast float %7511, %156
  %7841 = fadd fast float %7840, %7836
  %7842 = fsub fast float %7512, %157
  %7843 = fadd fast float %7842, %7837
  %7844 = call float @dx.op.dot3.f32(i32 55, float %7839, float %7841, float %7843, float %7839, float %7841, float %7843)  ; Dot3(ax,ay,az,bx,by,bz)
  %7845 = call float @dx.op.unary.f32(i32 25, float %7844)  ; Rsqrt(value)
  %7846 = fmul fast float %7839, %7845
  %7847 = fmul fast float %7841, %7845
  %7848 = fmul fast float %7843, %7845
  %7849 = fsub fast float %7846, %2441
  %7850 = fsub fast float %7847, %2442
  %7851 = fsub fast float %7848, %2443
  %7852 = call float @dx.op.dot3.f32(i32 55, float %7849, float %7850, float %7851, float %7849, float %7850, float %7851)  ; Dot3(ax,ay,az,bx,by,bz)
  %7853 = call float @dx.op.unary.f32(i32 25, float %7852)  ; Rsqrt(value)
  %7854 = fmul fast float %7849, %7853
  %7855 = fmul fast float %7850, %7853
  %7856 = fmul fast float %7851, %7853
  %7857 = call float @dx.op.dot3.f32(i32 55, float %7846, float %7847, float %7848, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %7858 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float %7854, float %7855, float %7856)  ; Dot3(ax,ay,az,bx,by,bz)
  %7859 = fmul fast float %7845, %7507
  %7860 = fmul fast float %7859, %7859
  %7861 = bitcast float %7860 to i32
  %7862 = ashr i32 %7861, 1
  %7863 = sub nsw i32 1597463007, %7862
  %7864 = bitcast i32 %7863 to float
  %7865 = fmul fast float %7864, %7857
  %7866 = fmul fast float %7865, %7865
  %7867 = fsub fast float 1.000000e+00, %7866
  %7868 = fmul fast float %7857, %7860
  %7869 = call float @dx.op.unary.f32(i32 7, float %7868)  ; Saturate(value)
  %7870 = fmul fast float %7865, 5.000000e-01
  %7871 = fadd fast float %7870, 5.000000e-01
  %7872 = fmul fast float %7871, %7860
  %7873 = call float @dx.op.unary.f32(i32 7, float %7872)  ; Saturate(value)
  %7874 = bitcast float %7873 to i32
  %7875 = ashr i32 %7874, 1
  %7876 = add nsw i32 %7875, 532487669
  %7877 = bitcast i32 %7876 to float
  %7878 = fmul fast float %7877, %7873
  %7879 = fcmp fast ogt float %7867, 0.000000e+00
  %7880 = select i1 %7879, float %7878, float %7869
  %7881 = call float @dx.op.unary.f32(i32 7, float %7857)  ; Saturate(value)
  %7882 = fmul fast float %7881, %7881
  %7883 = fmul fast float %7882, %2627
  %7884 = call float @dx.op.unary.f32(i32 7, float %7883)  ; Saturate(value)
  %7885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7886 = extractvalue %dx.types.CBufRet.f32 %7885, 0
  %7887 = bitcast float %7886 to i32
  %7888 = lshr i32 %7887, 8
  %7889 = and i32 %7888, 255
  %7890 = uitofp i32 %7889 to float
  %7891 = fptoui float %7890 to i32
  %7892 = and i32 %7891, 8
  %7893 = icmp ne i32 %7892, 0
  %7894 = select i1 %7893, float %7884, float 1.000000e+00
  %7895 = fmul fast float %7894, %7880
  %7896 = call float @dx.op.dot3.f32(i32 55, float %7502, float %7503, float %7504, float %2596, float %2597, float %2598)  ; Dot3(ax,ay,az,bx,by,bz)
  %7897 = call float @dx.op.dot3.f32(i32 55, float %7502, float %7503, float %7504, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7898 = call float @dx.op.dot3.f32(i32 55, float %2596, float %2597, float %2598, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %7899 = fmul fast float %7896, %7896
  %7900 = fsub fast float %7542, %7899
  %7901 = fmul fast float %7898, %7896
  %7902 = fsub fast float %7901, %7897
  %7903 = fdiv fast float %7902, %7900
  %7904 = call float @dx.op.binary.f32(i32 35, float %7903, float -1.500000e+00)  ; FMax(a,b)
  %7905 = call float @dx.op.binary.f32(i32 36, float %7904, float 1.500000e+00)  ; FMin(a,b)
  %7906 = fmul fast float %7905, %7905
  %7907 = fmul fast float %7906, 0x3FC2F68380000000
  %7908 = fmul fast float %7907, %7905
  %7909 = fsub fast float %7905, %7908
  %7910 = fmul fast float %7909, %7502
  %7911 = fmul fast float %7909, %7503
  %7912 = fmul fast float %7909, %7504
  %7913 = fadd fast float %7910, %7553
  %7914 = fadd fast float %7911, %7554
  %7915 = fadd fast float %7912, %7555
  %7916 = fsub fast float %7913, %155
  %7917 = fsub fast float %7914, %156
  %7918 = fsub fast float %7915, %157
  %7919 = call float @dx.op.dot3.f32(i32 55, float %7916, float %7917, float %7918, float %2596, float %2597, float %2598)  ; Dot3(ax,ay,az,bx,by,bz)
  %7920 = fmul fast float %7919, %2596
  %7921 = fmul fast float %7919, %2597
  %7922 = fmul fast float %7919, %2598
  %7923 = fsub fast float %7920, %7916
  %7924 = fsub fast float %7921, %7917
  %7925 = fsub fast float %7922, %7918
  %7926 = call float @dx.op.dot3.f32(i32 55, float %7923, float %7924, float %7925, float %7923, float %7924, float %7925)  ; Dot3(ax,ay,az,bx,by,bz)
  %7927 = bitcast float %7926 to i32
  %7928 = ashr i32 %7927, 1
  %7929 = sub nsw i32 1597463007, %7928
  %7930 = bitcast i32 %7929 to float
  %7931 = fmul fast float %7930, %7507
  %7932 = call float @dx.op.dot3.f32(i32 55, float %7916, float %7917, float %7918, float %7916, float %7917, float %7918)  ; Dot3(ax,ay,az,bx,by,bz)
  %7933 = bitcast float %7932 to i32
  %7934 = ashr i32 %7933, 1
  %7935 = sub nsw i32 1597463007, %7934
  %7936 = bitcast i32 %7935 to float
  %7937 = fmul fast float %7931, %7931
  %7938 = fadd fast float %7937, 1.250000e-01
  %7939 = call float @dx.op.unary.f32(i32 25, float %7938)  ; Rsqrt(value)
  %7940 = fmul fast float %7931, %7939
  %7941 = fmul fast float %7923, %7940
  %7942 = fmul fast float %7924, %7940
  %7943 = fmul fast float %7925, %7940
  %7944 = fadd fast float %7916, %7941
  %7945 = fadd fast float %7917, %7942
  %7946 = fadd fast float %7918, %7943
  %7947 = call float @dx.op.dot3.f32(i32 55, float %7944, float %7945, float %7946, float %7944, float %7945, float %7946)  ; Dot3(ax,ay,az,bx,by,bz)
  %7948 = call float @dx.op.unary.f32(i32 25, float %7947)  ; Rsqrt(value)
  %7949 = fmul fast float %7944, %7948
  %7950 = fmul fast float %7945, %7948
  %7951 = fmul fast float %7946, %7948
  %7952 = fsub fast float %7949, %2441
  %7953 = fsub fast float %7950, %2442
  %7954 = fsub fast float %7951, %2443
  %7955 = call float @dx.op.dot3.f32(i32 55, float %7952, float %7953, float %7954, float %7952, float %7953, float %7954)  ; Dot3(ax,ay,az,bx,by,bz)
  %7956 = call float @dx.op.unary.f32(i32 25, float %7955)  ; Rsqrt(value)
  %7957 = fmul fast float %7952, %7956
  %7958 = fmul fast float %7953, %7956
  %7959 = fmul fast float %7954, %7956
  %7960 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float %7957, float %7958, float %7959)  ; Dot3(ax,ay,az,bx,by,bz)
  %7961 = fmul fast float %7960, %7960
  %7962 = call float @dx.op.unary.f32(i32 6, float %7857)  ; FAbs(value)
  %7963 = fsub fast float 1.000000e+00, %2618
  %7964 = fmul fast float %2591, %2591
  %7965 = fmul fast float %7964, %7963
  %7966 = fadd fast float %7965, %2618
  %7967 = bitcast float %7966 to i32
  %7968 = ashr i32 %7967, 1
  %7969 = add nsw i32 %7968, 532487669
  %7970 = bitcast i32 %7969 to float
  %7971 = fadd fast float %7970, %2591
  %7972 = fmul fast float %2618, %7961
  %7973 = fsub fast float 1.000000e+00, %7961
  %7974 = fadd fast float %7973, %7972
  %7975 = fmul fast float %7962, %7962
  %7976 = fmul fast float %7975, %7963
  %7977 = fadd fast float %7976, %2618
  %7978 = bitcast float %7977 to i32
  %7979 = ashr i32 %7978, 1
  %7980 = add nsw i32 %7979, 532487669
  %7981 = bitcast i32 %7980 to float
  %7982 = fadd fast float %7981, %7962
  %7983 = fmul fast float %7974, %7974
  %7984 = fmul fast float %7983, %7971
  %7985 = fmul fast float %7984, %7982
  %7986 = fdiv fast float 1.000000e+00, %7985
  %7987 = bitcast float %2618 to i32
  %7988 = sitofp i32 %7987 to float
  %7989 = fmul fast float %7988, 0x3FE7F73180000000
  %7990 = fadd fast float %7989, 0x41AFE27C40000000
  %7991 = fptosi float %7990 to i32
  %7992 = bitcast i32 %7991 to float
  %7993 = fmul fast float %7507, 0x3FD80E9D60000000
  %7994 = fmul fast float %7993, %7936
  %7995 = fadd fast float %7992, %7994
  %7996 = bitcast float %7995 to i32
  %7997 = sub nsw i32 2129859010, %7996
  %7998 = bitcast i32 %7997 to float
  %7999 = fmul fast float %2618, %7986
  %8000 = fmul fast float %7999, %7992
  %8001 = fmul fast float %8000, %7998
  %8002 = call float @dx.op.unary.f32(i32 6, float %7858)  ; FAbs(value)
  %8003 = fsub fast float 1.000000e+00, %8002
  %8004 = bitcast float %8003 to i32
  %8005 = sitofp i32 %8004 to float
  %8006 = fmul fast float %8005, 5.000000e+00
  %8007 = fadd fast float %8006, 0xC1EFBF8940000000
  %8008 = fptosi float %8007 to i32
  %8009 = bitcast i32 %8008 to float
  %8010 = fmul fast float %8009, %2493
  %8011 = fmul fast float %8009, %2494
  %8012 = fmul fast float %8009, %3692
  %8013 = fadd fast float %8010, %2434
  %8014 = fadd fast float %8011, %2435
  %8015 = fadd fast float %8012, %2589
  %8016 = fmul fast float %7857, 9.843750e-01
  %8017 = fmul fast float %2542, 9.843750e-01
  %8018 = fadd fast float %8016, 7.812500e-03
  %8019 = fadd fast float %8017, 7.812500e-03
  %8020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %8018, float %8019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8021 = extractvalue %dx.types.ResRet.f32 %8020, 2
  %8022 = extractvalue %dx.types.ResRet.f32 %8020, 3
  %8023 = fmul fast float %8021, %2434
  %8024 = fmul fast float %8021, %2435
  %8025 = fmul fast float %8021, %2589
  %8026 = fadd fast float %8023, %8022
  %8027 = fadd fast float %8024, %8022
  %8028 = fadd fast float %8025, %8022
  %8029 = call float @dx.op.binary.f32(i32 35, float %8027, float %8028)  ; FMax(a,b)
  %8030 = call float @dx.op.binary.f32(i32 35, float %8026, float %8029)  ; FMax(a,b)
  %8031 = fsub fast float 1.000000e+00, %8030
  %8032 = fsub fast float -0.000000e+00, %2413
  %8033 = fsub fast float -0.000000e+00, %2414
  %8034 = fsub fast float -0.000000e+00, %2415
  %8035 = call float @dx.op.dot3.f32(i32 55, float %7562, float %7563, float %7564, float %8032, float %8033, float %8034)  ; Dot3(ax,ay,az,bx,by,bz)
  %8036 = call float @dx.op.unary.f32(i32 7, float %8035)  ; Saturate(value)
  %8037 = fmul fast float %8036, 9.843750e-01
  %8038 = fadd fast float %8037, 7.812500e-03
  %8039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %8038, float %8019, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8040 = extractvalue %dx.types.ResRet.f32 %8039, 2
  %8041 = extractvalue %dx.types.ResRet.f32 %8039, 3
  %8042 = fmul fast float %2435, 0x4012D0A400000000
  %8043 = fadd fast float %8042, 0x3FDB6377A0000000
  %8044 = fmul fast float %2615, %8043
  %8045 = call float @dx.op.unary.f32(i32 7, float %8044)  ; Saturate(value)
  %8046 = call float @dx.op.dot3.f32(i32 55, float %7502, float %7503, float %7504, float %2441, float %2442, float %2443)  ; Dot3(ax,ay,az,bx,by,bz)
  %8047 = call float @dx.op.dot3.f32(i32 55, float %2441, float %2442, float %2443, float %7556, float %7557, float %7558)  ; Dot3(ax,ay,az,bx,by,bz)
  %8048 = fmul fast float %8046, %8046
  %8049 = fsub fast float %7542, %8048
  %8050 = fmul fast float %8047, %8046
  %8051 = fsub fast float %8050, %7897
  %8052 = fdiv fast float %8051, %8049
  %8053 = call float @dx.op.binary.f32(i32 35, float %8052, float -1.500000e+00)  ; FMax(a,b)
  %8054 = call float @dx.op.binary.f32(i32 36, float %8053, float 1.500000e+00)  ; FMin(a,b)
  %8055 = fmul fast float %8054, %8054
  %8056 = fmul fast float %8055, 0x3FC2F68380000000
  %8057 = fmul fast float %8056, %8054
  %8058 = fsub fast float %8054, %8057
  %8059 = fmul fast float %8058, %7502
  %8060 = fmul fast float %8058, %7503
  %8061 = fmul fast float %8058, %7504
  %8062 = fadd fast float %8059, %7553
  %8063 = fadd fast float %8060, %7554
  %8064 = fadd fast float %8061, %7555
  %8065 = fsub fast float %8062, %155
  %8066 = fsub fast float %8063, %156
  %8067 = fsub fast float %8064, %157
  %8068 = call float @dx.op.dot3.f32(i32 55, float %8065, float %8066, float %8067, float %2441, float %2442, float %2443)  ; Dot3(ax,ay,az,bx,by,bz)
  %8069 = fmul fast float %8068, %2441
  %8070 = fmul fast float %8068, %2442
  %8071 = fmul fast float %8068, %2443
  %8072 = fsub fast float %8069, %8065
  %8073 = fsub fast float %8070, %8066
  %8074 = fsub fast float %8071, %8067
  %8075 = call float @dx.op.dot3.f32(i32 55, float %8072, float %8073, float %8074, float %8072, float %8073, float %8074)  ; Dot3(ax,ay,az,bx,by,bz)
  %8076 = bitcast float %8075 to i32
  %8077 = ashr i32 %8076, 1
  %8078 = sub nsw i32 1597463007, %8077
  %8079 = bitcast i32 %8078 to float
  %8080 = fmul fast float %8079, %7507
  %8081 = fmul fast float %8080, %8080
  %8082 = fadd fast float %8081, 1.250000e-01
  %8083 = call float @dx.op.unary.f32(i32 25, float %8082)  ; Rsqrt(value)
  %8084 = fmul fast float %8080, %8083
  %8085 = fmul fast float %8072, %8084
  %8086 = fmul fast float %8073, %8084
  %8087 = fmul fast float %8074, %8084
  %8088 = fadd fast float %8065, %8085
  %8089 = fadd fast float %8066, %8086
  %8090 = fadd fast float %8067, %8087
  %8091 = call float @dx.op.dot3.f32(i32 55, float %8088, float %8089, float %8090, float %8088, float %8089, float %8090)  ; Dot3(ax,ay,az,bx,by,bz)
  %8092 = call float @dx.op.unary.f32(i32 25, float %8091)  ; Rsqrt(value)
  %8093 = fmul fast float %8088, %8092
  %8094 = fmul fast float %8089, %8092
  %8095 = fmul fast float %8090, %8092
  %8096 = fsub fast float %8093, %2596
  %8097 = fsub fast float %8094, %2597
  %8098 = fsub fast float %8095, %2598
  %8099 = call float @dx.op.dot3.f32(i32 55, float %8096, float %8097, float %8098, float %8096, float %8097, float %8098)  ; Dot3(ax,ay,az,bx,by,bz)
  %8100 = call float @dx.op.unary.f32(i32 25, float %8099)  ; Rsqrt(value)
  %8101 = fmul fast float %8096, %8100
  %8102 = fmul fast float %8097, %8100
  %8103 = fmul fast float %8098, %8100
  %8104 = call float @dx.op.dot3.f32(i32 55, float %8032, float %8033, float %8034, float %8101, float %8102, float %8103)  ; Dot3(ax,ay,az,bx,by,bz)
  %8105 = fmul fast float %8104, %8104
  %8106 = call float @dx.op.unary.f32(i32 6, float %8036)  ; FAbs(value)
  %8107 = call float @dx.op.binary.f32(i32 35, float %8045, float 0x3F847AE140000000)  ; FMax(a,b)
  %8108 = fmul fast float %8107, %8107
  %8109 = fmul fast float %8108, %8108
  %8110 = fsub fast float 1.000000e+00, %8109
  %8111 = fmul fast float %8109, %8105
  %8112 = fsub fast float 1.000000e+00, %8105
  %8113 = fadd fast float %8112, %8111
  %8114 = bitcast float %8109 to i32
  %8115 = sitofp i32 %8114 to float
  %8116 = fmul fast float %8115, 0x3FE7F73180000000
  %8117 = fadd fast float %8116, 0x41AFE27C40000000
  %8118 = fptosi float %8117 to i32
  %8119 = bitcast i32 %8118 to float
  br i1 %7540, label %8120, label %8165

; <label>:8120                                    ; preds = %7814
  %8121 = fmul fast float %8113, %8113
  %8122 = fmul fast float %7964, %8110
  %8123 = fadd fast float %8122, %8109
  %8124 = bitcast float %8123 to i32
  %8125 = ashr i32 %8124, 1
  %8126 = add nsw i32 %8125, 532487669
  %8127 = bitcast i32 %8126 to float
  %8128 = fadd fast float %8127, %2591
  %8129 = fmul fast float %8121, %8128
  %8130 = fmul fast float %8106, %8106
  %8131 = fmul fast float %8130, %8110
  %8132 = fadd fast float %8131, %8109
  %8133 = bitcast float %8132 to i32
  %8134 = ashr i32 %8133, 1
  %8135 = add nsw i32 %8134, 532487669
  %8136 = bitcast i32 %8135 to float
  %8137 = fadd fast float %8136, %8106
  %8138 = fmul fast float %8129, %8137
  %8139 = fdiv fast float 1.000000e+00, %8138
  %8140 = fmul fast float %8109, %8139
  %8141 = fmul fast float %8140, %8119
  %8142 = call float @dx.op.dot3.f32(i32 55, float %8065, float %8066, float %8067, float %8065, float %8066, float %8067)  ; Dot3(ax,ay,az,bx,by,bz)
  %8143 = bitcast float %8142 to i32
  %8144 = ashr i32 %8143, 1
  %8145 = sub nsw i32 1597463007, %8144
  %8146 = bitcast i32 %8145 to float
  %8147 = fmul fast float %7993, %8146
  %8148 = fadd fast float %8119, %8147
  %8149 = bitcast float %8148 to i32
  %8150 = sub nsw i32 2129859010, %8149
  %8151 = bitcast i32 %8150 to float
  %8152 = fmul fast float %8141, %8151
  %8153 = fmul fast float %8040, %2434
  %8154 = fadd fast float %8153, %8041
  %8155 = fmul fast float %8040, %2435
  %8156 = fadd fast float %8155, %8041
  %8157 = fmul fast float %8040, %2589
  %8158 = fadd fast float %8157, %8041
  %8159 = call float @dx.op.binary.f32(i32 35, float %8156, float %8158)  ; FMax(a,b)
  %8160 = call float @dx.op.binary.f32(i32 35, float %8154, float %8159)  ; FMax(a,b)
  %8161 = fsub fast float 1.000000e+00, %8160
  %8162 = fmul fast float %8036, %7569
  %8163 = fmul fast float %8162, %8161
  %8164 = fmul fast float %8163, %8152
  br label %8165

; <label>:8165                                    ; preds = %8120, %7814
  %8166 = phi float [ %8164, %8120 ], [ 0.000000e+00, %7814 ]
  %8167 = fmul fast float %8031, %7895
  %8168 = fmul fast float %8013, %7895
  %8169 = fmul fast float %8168, %8001
  %8170 = fmul fast float %8014, %7895
  %8171 = fmul fast float %8170, %8001
  %8172 = fmul fast float %8015, %7895
  %8173 = fmul fast float %8172, %8001
  %8174 = fadd fast float %8166, %8169
  %8175 = fadd fast float %8166, %8171
  %8176 = fadd fast float %8166, %8173
  %8177 = fmul fast float %8167, %7815
  %8178 = fmul fast float %8167, %7816
  %8179 = fmul fast float %8167, %7817
  %8180 = fadd fast float %8177, %7476
  %8181 = fadd fast float %8178, %7477
  %8182 = fadd fast float %8179, %7478
  %8183 = fmul fast float %8174, %7815
  %8184 = fmul fast float %8175, %7816
  %8185 = fmul fast float %8176, %7817
  %8186 = fadd fast float %8183, %7473
  %8187 = fadd fast float %8184, %7474
  %8188 = fadd fast float %8185, %7475
  %8189 = fadd fast float %8177, %7470
  %8190 = fadd fast float %8178, %7471
  %8191 = fadd fast float %8179, %7472
  %8192 = fadd fast float %8183, %7467
  %8193 = fadd fast float %8184, %7468
  %8194 = fadd fast float %8185, %7469
  %8195 = fadd fast float %8177, %7464
  %8196 = fadd fast float %8178, %7465
  %8197 = fadd fast float %8179, %7466
  %8198 = fadd fast float %8183, %7461
  %8199 = fadd fast float %8184, %7462
  %8200 = fadd fast float %8185, %7463
  br label %8201

; <label>:8201                                    ; preds = %8165, %7809
  %8202 = phi float [ %7461, %7809 ], [ %8198, %8165 ]
  %8203 = phi float [ %7462, %7809 ], [ %8199, %8165 ]
  %8204 = phi float [ %7463, %7809 ], [ %8200, %8165 ]
  %8205 = phi float [ %7464, %7809 ], [ %8195, %8165 ]
  %8206 = phi float [ %7465, %7809 ], [ %8196, %8165 ]
  %8207 = phi float [ %7466, %7809 ], [ %8197, %8165 ]
  %8208 = phi float [ %7467, %7809 ], [ %8192, %8165 ]
  %8209 = phi float [ %7468, %7809 ], [ %8193, %8165 ]
  %8210 = phi float [ %7469, %7809 ], [ %8194, %8165 ]
  %8211 = phi float [ %7470, %7809 ], [ %8189, %8165 ]
  %8212 = phi float [ %7471, %7809 ], [ %8190, %8165 ]
  %8213 = phi float [ %7472, %7809 ], [ %8191, %8165 ]
  %8214 = phi float [ %7473, %7809 ], [ %8186, %8165 ]
  %8215 = phi float [ %7474, %7809 ], [ %8187, %8165 ]
  %8216 = phi float [ %7475, %7809 ], [ %8188, %8165 ]
  %8217 = phi float [ %7476, %7809 ], [ %8180, %8165 ]
  %8218 = phi float [ %7477, %7809 ], [ %8181, %8165 ]
  %8219 = phi float [ %7478, %7809 ], [ %8182, %8165 ]
  %8220 = bitcast i32 %7451 to float
  %8221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.f32 %8221, 1
  %8223 = bitcast float %8222 to i32
  %8224 = and i32 %8223, 65535
  %8225 = icmp eq i32 %8224, 65535
  br i1 %8225, label %8226, label %8228

; <label>:8226                                    ; preds = %8201
  %8227 = call float @dx.op.binary.f32(i32 35, float %8220, float %7810)  ; FMax(a,b)
  br label %8231

; <label>:8228                                    ; preds = %8201
  %8229 = icmp eq i32 %8224, %7480
  %8230 = select i1 %8229, float %7810, float %8220
  br label %8231

; <label>:8231                                    ; preds = %8228, %8226
  %8232 = phi float [ %8227, %8226 ], [ %8230, %8228 ]
  %8233 = extractvalue %dx.types.CBufRet.f32 %8221, 0
  %8234 = bitcast float %8233 to i32
  %8235 = lshr i32 %8234, 8
  %8236 = and i32 %8235, 255
  %8237 = uitofp i32 %8236 to float
  %8238 = fptoui float %8237 to i32
  %8239 = icmp eq i32 %8238, 15
  %8240 = bitcast float %8232 to i32
  %8241 = select i1 %8239, i32 %8240, i32 %7451
  %8242 = add i32 %7634, %7456
  %8243 = add i32 %7636, %7457
  %8244 = add i32 %7638, %7458
  %8245 = add i32 %7640, %7459
  br label %7645

; <label>:8246                                    ; preds = %7645
  br label %8247

; <label>:8247                                    ; preds = %8246, %7397
  %8248 = phi i32 [ %7398, %7397 ], [ %7646, %8246 ]
  %8249 = phi i32 [ %7399, %7397 ], [ %7635, %8246 ]
  %8250 = phi i32 [ %7400, %7397 ], [ %7637, %8246 ]
  %8251 = phi i32 [ %7401, %7397 ], [ %7639, %8246 ]
  %8252 = phi i32 [ %7402, %7397 ], [ %7641, %8246 ]
  %8253 = phi i32 [ %7403, %7397 ], [ %7647, %8246 ]
  %8254 = phi i32 [ %7404, %7397 ], [ %7648, %8246 ]
  %8255 = phi i32 [ %7405, %7397 ], [ %7649, %8246 ]
  %8256 = phi i32 [ %7406, %7397 ], [ %7650, %8246 ]
  %8257 = phi float [ %7408, %7397 ], [ %7651, %8246 ]
  %8258 = phi float [ %7409, %7397 ], [ %7652, %8246 ]
  %8259 = phi float [ %7410, %7397 ], [ %7653, %8246 ]
  %8260 = phi float [ %7411, %7397 ], [ %7654, %8246 ]
  %8261 = phi float [ %7412, %7397 ], [ %7655, %8246 ]
  %8262 = phi float [ %7413, %7397 ], [ %7656, %8246 ]
  %8263 = phi float [ %7414, %7397 ], [ %7657, %8246 ]
  %8264 = phi float [ %7415, %7397 ], [ %7658, %8246 ]
  %8265 = phi float [ %7416, %7397 ], [ %7659, %8246 ]
  %8266 = phi float [ %7417, %7397 ], [ %7660, %8246 ]
  %8267 = phi float [ %7418, %7397 ], [ %7661, %8246 ]
  %8268 = phi float [ %7419, %7397 ], [ %7662, %8246 ]
  %8269 = phi float [ %7420, %7397 ], [ %7663, %8246 ]
  %8270 = phi float [ %7421, %7397 ], [ %7664, %8246 ]
  %8271 = phi float [ %7422, %7397 ], [ %7665, %8246 ]
  %8272 = phi float [ %7423, %7397 ], [ %7666, %8246 ]
  %8273 = phi float [ %7424, %7397 ], [ %7667, %8246 ]
  %8274 = phi float [ %7425, %7397 ], [ %7668, %8246 ]
  %8275 = add i32 %7407, 1
  %8276 = icmp ugt i32 %8275, %7394
  br i1 %8276, label %8277, label %7397

; <label>:8277                                    ; preds = %8247
  br label %8278

; <label>:8278                                    ; preds = %8277, %7347
  %8279 = phi i32 [ %7326, %7347 ], [ %8248, %8277 ]
  %8280 = phi i32 [ 0, %7347 ], [ %8249, %8277 ]
  %8281 = phi i32 [ 0, %7347 ], [ %8250, %8277 ]
  %8282 = phi i32 [ 0, %7347 ], [ %8251, %8277 ]
  %8283 = phi i32 [ 0, %7347 ], [ %8252, %8277 ]
  %8284 = phi i32 [ 0, %7347 ], [ %8253, %8277 ]
  %8285 = phi i32 [ 0, %7347 ], [ %8254, %8277 ]
  %8286 = phi i32 [ 0, %7347 ], [ %8255, %8277 ]
  %8287 = phi i32 [ 0, %7347 ], [ %8256, %8277 ]
  %8288 = phi float [ %7328, %7347 ], [ %8257, %8277 ]
  %8289 = phi float [ %7329, %7347 ], [ %8258, %8277 ]
  %8290 = phi float [ %7330, %7347 ], [ %8259, %8277 ]
  %8291 = phi float [ %7331, %7347 ], [ %8260, %8277 ]
  %8292 = phi float [ %7332, %7347 ], [ %8261, %8277 ]
  %8293 = phi float [ %7333, %7347 ], [ %8262, %8277 ]
  %8294 = phi float [ %7334, %7347 ], [ %8263, %8277 ]
  %8295 = phi float [ %7335, %7347 ], [ %8264, %8277 ]
  %8296 = phi float [ %7336, %7347 ], [ %8265, %8277 ]
  %8297 = phi float [ %7337, %7347 ], [ %8266, %8277 ]
  %8298 = phi float [ %7338, %7347 ], [ %8267, %8277 ]
  %8299 = phi float [ %7339, %7347 ], [ %8268, %8277 ]
  %8300 = phi float [ %7341, %7347 ], [ %8269, %8277 ]
  %8301 = phi float [ %7342, %7347 ], [ %8270, %8277 ]
  %8302 = phi float [ %7343, %7347 ], [ %8271, %8277 ]
  %8303 = phi float [ %7337, %7347 ], [ %8272, %8277 ]
  %8304 = phi float [ %7338, %7347 ], [ %8273, %8277 ]
  %8305 = phi float [ %7339, %7347 ], [ %8274, %8277 ]
  %8306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %8307 = extractvalue %dx.types.CBufRet.f32 %8306, 1
  %8308 = bitcast float %8307 to i32
  %8309 = lshr i32 %8308, 24
  %8310 = uitofp i32 %8309 to float
  %8311 = fptoui float %8310 to i32
  %8312 = icmp eq i32 %8311, 1
  %8313 = select i1 %8312, i32 %8284, i32 %8280
  %8314 = uitofp i32 %8313 to float
  %8315 = fptoui float %8314 to i32
  %8316 = shl i32 %8315, 8
  %8317 = select i1 %8312, i32 %8285, i32 %8281
  %8318 = uitofp i32 %8317 to float
  %8319 = fptoui float %8318 to i32
  %8320 = shl i32 %8319, 16
  %8321 = and i32 %8316, 65280
  %8322 = or i32 %8321, %7327
  %8323 = select i1 %8312, i32 %8286, i32 %8282
  %8324 = uitofp i32 %8323 to float
  %8325 = fptoui float %8324 to i32
  %8326 = shl i32 %8325, 24
  %8327 = and i32 %8320, 16711680
  %8328 = or i32 %8322, %8327
  %8329 = or i32 %8328, %8326
  %8330 = select i1 %8312, i32 %8287, i32 %8283
  %8331 = uitofp i32 %8330 to float
  %8332 = fptoui float %8331 to i32
  %8333 = and i32 %8332, 255
  %8334 = and i32 %5483, -256
  %8335 = or i32 %8333, %8334
  %8336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8337 = extractvalue %dx.types.CBufRet.f32 %8336, 0
  %8338 = bitcast float %8337 to i32
  %8339 = lshr i32 %8338, 8
  %8340 = and i32 %8339, 255
  %8341 = uitofp i32 %8340 to float
  %8342 = fptoui float %8341 to i32
  %8343 = icmp eq i32 %8342, 12
  %8344 = select i1 %8343, i32 0, i32 %8279
  br label %8345

; <label>:8345                                    ; preds = %8278, %7325
  %8346 = phi i32 [ %5483, %7325 ], [ %8335, %8278 ]
  %8347 = phi i32 [ 0, %7325 ], [ %8329, %8278 ]
  %8348 = phi i32 [ %7326, %7325 ], [ %8344, %8278 ]
  %8349 = phi float [ %7328, %7325 ], [ %8288, %8278 ]
  %8350 = phi float [ %7329, %7325 ], [ %8289, %8278 ]
  %8351 = phi float [ %7330, %7325 ], [ %8290, %8278 ]
  %8352 = phi float [ %7331, %7325 ], [ %8291, %8278 ]
  %8353 = phi float [ %7332, %7325 ], [ %8292, %8278 ]
  %8354 = phi float [ %7333, %7325 ], [ %8293, %8278 ]
  %8355 = phi float [ %7334, %7325 ], [ %8294, %8278 ]
  %8356 = phi float [ %7335, %7325 ], [ %8295, %8278 ]
  %8357 = phi float [ %7336, %7325 ], [ %8296, %8278 ]
  %8358 = phi float [ %7337, %7325 ], [ %8297, %8278 ]
  %8359 = phi float [ %7338, %7325 ], [ %8298, %8278 ]
  %8360 = phi float [ %7339, %7325 ], [ %8299, %8278 ]
  %8361 = phi float [ %7341, %7325 ], [ %8300, %8278 ]
  %8362 = phi float [ %7342, %7325 ], [ %8301, %8278 ]
  %8363 = phi float [ %7343, %7325 ], [ %8302, %8278 ]
  %8364 = phi float [ %7337, %7325 ], [ %8303, %8278 ]
  %8365 = phi float [ %7338, %7325 ], [ %8304, %8278 ]
  %8366 = phi float [ %7339, %7325 ], [ %8305, %8278 ]
  %8367 = and i32 %2492, 255
  %8368 = uitofp i32 %8367 to float
  %8369 = fmul fast float %8368, 0x3F70101020000000
  %8370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %8371 = extractvalue %dx.types.CBufRet.f32 %8370, 2
  %8372 = extractvalue %dx.types.CBufRet.f32 %8370, 3
  %8373 = fmul fast float %125, %8371
  %8374 = fmul fast float %127, %8372
  %8375 = fsub fast float 1.000000e+00, %8373
  %8376 = fsub fast float 1.000000e+00, %8374
  %8377 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %8378 = extractvalue %dx.types.CBufRet.f32 %8377, 0
  %8379 = extractvalue %dx.types.CBufRet.f32 %8377, 1
  %8380 = extractvalue %dx.types.CBufRet.f32 %8377, 2
  %8381 = fmul fast float %8375, %8378
  %8382 = fmul fast float %8375, %8379
  %8383 = fmul fast float %8375, %8380
  %8384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %8385 = extractvalue %dx.types.CBufRet.f32 %8384, 0
  %8386 = extractvalue %dx.types.CBufRet.f32 %8384, 1
  %8387 = extractvalue %dx.types.CBufRet.f32 %8384, 2
  %8388 = fmul fast float %8376, %8385
  %8389 = fmul fast float %8376, %8386
  %8390 = fmul fast float %8376, %8387
  %8391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %8392 = extractvalue %dx.types.CBufRet.f32 %8391, 0
  %8393 = extractvalue %dx.types.CBufRet.f32 %8391, 1
  %8394 = extractvalue %dx.types.CBufRet.f32 %8391, 2
  %8395 = fadd fast float %8388, %8392
  %8396 = fadd fast float %8395, %8381
  %8397 = fadd fast float %8389, %8393
  %8398 = fadd fast float %8397, %8382
  %8399 = fadd fast float %8390, %8394
  %8400 = fadd fast float %8399, %8383
  %8401 = fmul fast float %8396, %89
  %8402 = fmul fast float %8398, %89
  %8403 = fmul fast float %8400, %89
  %8404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %8405 = extractvalue %dx.types.CBufRet.f32 %8404, 2
  %8406 = extractvalue %dx.types.CBufRet.f32 %8404, 3
  %8407 = fmul fast float %8405, %100
  %8408 = fmul fast float %8406, %101
  %8409 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %45, i32 0, i32 %2502, i32 %2508, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %8410 = extractvalue %dx.types.ResRet.f32 %8409, 0
  %8411 = fcmp fast olt float %8410, -1.000000e+00
  %8412 = fcmp fast ogt float %8410, -1.000000e+00
  %8413 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %8414 = extractvalue %dx.types.CBufRet.f32 %8413, 1
  %8415 = select i1 %8412, float %8414, float 1.000000e+00
  %8416 = fadd fast float %8410, 1.000000e+00
  %8417 = fmul fast float %8415, %8416
  %8418 = call float @dx.op.unary.f32(i32 6, float %8417)  ; FAbs(value)
  %8419 = fsub fast float %8418, %89
  %8420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %8421 = extractvalue %dx.types.CBufRet.f32 %8420, 2
  %8422 = fsub fast float %8419, %8421
  %8423 = extractvalue %dx.types.CBufRet.f32 %8420, 3
  %8424 = fmul fast float %8423, %8369
  %8425 = fmul fast float %8424, %8422
  %8426 = call float @dx.op.unary.f32(i32 7, float %8425)  ; Saturate(value)
  %8427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %8428 = extractvalue %dx.types.CBufRet.f32 %8427, 1
  %8429 = extractvalue %dx.types.CBufRet.f32 %8427, 0
  %8430 = extractvalue %dx.types.CBufRet.f32 %8427, 3
  %8431 = extractvalue %dx.types.CBufRet.f32 %8427, 2
  %8432 = select i1 %8411, float %8428, float %8430
  %8433 = select i1 %8411, float %8429, float %8431
  %8434 = fsub fast float %8419, %8433
  %8435 = fmul fast float %8434, %8432
  %8436 = fsub fast float 1.000000e+00, %8369
  %8437 = fadd fast float %8436, %8435
  %8438 = call float @dx.op.unary.f32(i32 7, float %8437)  ; Saturate(value)
  %8439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %8440 = extractvalue %dx.types.CBufRet.f32 %8439, 1
  %8441 = extractvalue %dx.types.CBufRet.f32 %8439, 2
  %8442 = fsub fast float 1.000000e+00, %8408
  %8443 = fsub fast float 1.000000e+00, %8407
  %8444 = fmul fast float %8408, %8407
  %8445 = fmul fast float %8444, %8442
  %8446 = fmul fast float %8445, %8443
  %8447 = fmul fast float %8446, %8440
  %8448 = call float @dx.op.unary.f32(i32 23, float %8447)  ; Log(value)
  %8449 = fmul fast float %8448, %8441
  %8450 = call float @dx.op.unary.f32(i32 21, float %8449)  ; Exp(value)
  %8451 = call float @dx.op.unary.f32(i32 7, float %8450)  ; Saturate(value)
  %8452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.f32 %8452, 2
  %8454 = extractvalue %dx.types.CBufRet.f32 %8452, 3
  %8455 = extractvalue %dx.types.CBufRet.f32 %8452, 0
  %8456 = fsub fast float %89, %8455
  %8457 = extractvalue %dx.types.CBufRet.f32 %8439, 0
  %8458 = fmul fast float %8456, %8457
  %8459 = call float @dx.op.unary.f32(i32 7, float %8458)  ; Saturate(value)
  %8460 = fsub fast float %8454, %8453
  %8461 = fmul fast float %8459, %8460
  %8462 = fadd fast float %8461, %8453
  %8463 = fmul fast float %8462, %8426
  %8464 = fmul fast float %8463, %2413
  %8465 = fmul fast float %8463, %2414
  %8466 = fadd fast float %8464, %8401
  %8467 = fadd fast float %8465, %8402
  %8468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %8469 = extractvalue %dx.types.CBufRet.f32 %8468, 0
  %8470 = extractvalue %dx.types.CBufRet.f32 %8468, 1
  %8471 = extractvalue %dx.types.CBufRet.f32 %8468, 2
  %8472 = extractvalue %dx.types.CBufRet.f32 %8468, 3
  %8473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %8474 = extractvalue %dx.types.CBufRet.f32 %8473, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8473, 1
  %8476 = extractvalue %dx.types.CBufRet.f32 %8473, 2
  %8477 = extractvalue %dx.types.CBufRet.f32 %8473, 3
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = extractvalue %dx.types.CBufRet.f32 %8478, 1
  %8481 = extractvalue %dx.types.CBufRet.f32 %8478, 2
  %8482 = extractvalue %dx.types.CBufRet.f32 %8478, 3
  %8483 = fmul fast float %8466, %8469
  %8484 = call float @dx.op.tertiary.f32(i32 46, float %8467, float %8470, float %8483)  ; FMad(a,b,c)
  %8485 = call float @dx.op.tertiary.f32(i32 46, float %8403, float %8471, float %8484)  ; FMad(a,b,c)
  %8486 = fadd fast float %8485, %8472
  %8487 = fmul fast float %8466, %8474
  %8488 = call float @dx.op.tertiary.f32(i32 46, float %8467, float %8475, float %8487)  ; FMad(a,b,c)
  %8489 = call float @dx.op.tertiary.f32(i32 46, float %8403, float %8476, float %8488)  ; FMad(a,b,c)
  %8490 = fadd fast float %8489, %8477
  %8491 = fmul fast float %8466, %8479
  %8492 = call float @dx.op.tertiary.f32(i32 46, float %8467, float %8480, float %8491)  ; FMad(a,b,c)
  %8493 = call float @dx.op.tertiary.f32(i32 46, float %8403, float %8481, float %8492)  ; FMad(a,b,c)
  %8494 = fadd fast float %8493, %8482
  %8495 = fdiv fast float %8486, %8494
  %8496 = fdiv fast float %8490, %8494
  %8497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %8498 = extractvalue %dx.types.CBufRet.f32 %8497, 0
  %8499 = extractvalue %dx.types.CBufRet.f32 %8497, 1
  %8500 = fmul fast float %8498, %8495
  %8501 = fmul fast float %8499, %8496
  %8502 = extractvalue %dx.types.CBufRet.f32 %8497, 2
  %8503 = extractvalue %dx.types.CBufRet.f32 %8497, 3
  %8504 = fadd fast float %8500, %8502
  %8505 = fadd fast float %8501, %8503
  %8506 = call float @dx.op.unary.f32(i32 7, float %8504)  ; Saturate(value)
  %8507 = call float @dx.op.unary.f32(i32 7, float %8505)  ; Saturate(value)
  %8508 = fsub fast float %8506, %8407
  %8509 = fsub fast float %8507, %8408
  %8510 = fmul fast float %8508, %8451
  %8511 = fmul fast float %8509, %8451
  %8512 = fadd fast float %8510, %8407
  %8513 = fadd fast float %8511, %8408
  %8514 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %64, float %8512, float %8513, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8515 = extractvalue %dx.types.ResRet.f32 %8514, 0
  %8516 = fcmp fast ogt float %8515, -1.000000e+00
  %8517 = select i1 %8516, float %8414, float 1.000000e+00
  %8518 = fadd fast float %8515, 1.000000e+00
  %8519 = fmul fast float %8517, %8518
  %8520 = call float @dx.op.unary.f32(i32 6, float %8519)  ; FAbs(value)
  %8521 = fcmp fast ugt float %8520, %8494
  br i1 %8521, label %8523, label %8522

; <label>:8522                                    ; preds = %8345
  br label %8523

; <label>:8523                                    ; preds = %8522, %8345
  %8524 = phi float [ %8407, %8522 ], [ %8512, %8345 ]
  %8525 = phi float [ %8408, %8522 ], [ %8513, %8345 ]
  %8526 = phi float [ %89, %8522 ], [ %8494, %8345 ]
  %8527 = phi float [ %8418, %8522 ], [ %8520, %8345 ]
  br i1 %117, label %8528, label %8964

; <label>:8528                                    ; preds = %8523
  %8529 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %8530 = extractvalue %dx.types.CBufRet.f32 %8529, 0
  %8531 = extractvalue %dx.types.CBufRet.f32 %8529, 1
  %8532 = extractvalue %dx.types.CBufRet.f32 %8529, 2
  %8533 = fcmp fast oge float %8531, %8526
  %8534 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %8535 = extractvalue %dx.types.CBufRet.i32 %8534, 0
  %8536 = and i32 %8535, 65538
  %8537 = icmp eq i32 %8536, 65538
  %8538 = and i1 %8537, %8533
  br i1 %8538, label %8539, label %8620

; <label>:8539                                    ; preds = %8528
  %8540 = extractvalue %dx.types.CBufRet.f32 %8370, 0
  %8541 = extractvalue %dx.types.CBufRet.f32 %8370, 1
  %8542 = fmul fast float %8540, %8524
  %8543 = fmul fast float %8541, %8525
  %8544 = fmul fast float %8542, %8371
  %8545 = fmul fast float %8543, %8372
  %8546 = call float @dx.op.unary.f32(i32 7, float %8544)  ; Saturate(value)
  %8547 = call float @dx.op.unary.f32(i32 7, float %8545)  ; Saturate(value)
  %8548 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %8546, float %8547, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8549 = extractvalue %dx.types.ResRet.f32 %8548, 0
  %8550 = extractvalue %dx.types.ResRet.f32 %8548, 1
  %8551 = extractvalue %dx.types.ResRet.f32 %8548, 2
  %8552 = extractvalue %dx.types.ResRet.f32 %8548, 3
  %8553 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %8546, float %8547, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %8554 = extractvalue %dx.types.ResRet.f32 %8553, 0
  %8555 = extractvalue %dx.types.ResRet.f32 %8553, 1
  %8556 = extractvalue %dx.types.ResRet.f32 %8553, 2
  %8557 = extractvalue %dx.types.ResRet.f32 %8553, 3
  %8558 = call float @dx.op.binary.f32(i32 35, float %8550, float %8551)  ; FMax(a,b)
  %8559 = call float @dx.op.binary.f32(i32 35, float %8549, float %8558)  ; FMax(a,b)
  %8560 = call float @dx.op.binary.f32(i32 35, float %8559, float %8552)  ; FMax(a,b)
  %8561 = call float @dx.op.binary.f32(i32 36, float %8555, float %8556)  ; FMin(a,b)
  %8562 = call float @dx.op.binary.f32(i32 36, float %8554, float %8561)  ; FMin(a,b)
  %8563 = call float @dx.op.binary.f32(i32 36, float %8562, float %8557)  ; FMin(a,b)
  %8564 = fmul fast float %8560, 2.550000e+02
  %8565 = fadd fast float %8564, 0x3F70101020000000
  %8566 = fptoui float %8565 to i32
  %8567 = fmul fast float %8563, 2.550000e+02
  %8568 = fadd fast float %8567, 0x3F70101020000000
  %8569 = fptoui float %8568 to i32
  %8570 = icmp ult i32 %8566, %8569
  br i1 %8570, label %8571, label %8620

; <label>:8571                                    ; preds = %8539
  %8572 = fadd fast float %8527, -4.000000e+00
  %8573 = call float @dx.op.binary.f32(i32 35, float %8572, float 0.000000e+00)  ; FMax(a,b)
  %8574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %8575 = extractvalue %dx.types.CBufRet.f32 %8574, 0
  %8576 = fadd fast float %8575, %8573
  %8577 = extractvalue %dx.types.CBufRet.f32 %8574, 2
  %8578 = fmul fast float %8576, %8577
  %8579 = call float @dx.op.unary.f32(i32 23, float %8578)  ; Log(value)
  %8580 = extractvalue %dx.types.CBufRet.f32 %8574, 3
  %8581 = fmul fast float %8580, %8579
  %8582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %8583 = extractvalue %dx.types.CBufRet.f32 %8582, 2
  %8584 = fmul fast float %8581, %8583
  %8585 = call float @dx.op.unary.f32(i32 7, float %8584)  ; Saturate(value)
  %8586 = uitofp i32 %8566 to float
  %8587 = uitofp i32 %8569 to float
  %8588 = fadd fast float %8586, 5.000000e-01
  %8589 = fadd fast float %8587, 5.000000e-01
  %8590 = fmul fast float %8583, %8588
  %8591 = fmul fast float %8583, %8589
  %8592 = fadd fast float %8590, 0x3F0FFB4800000000
  %8593 = fadd fast float %8591, 0xBF0FFB4800000000
  %8594 = call float @dx.op.binary.f32(i32 35, float %8585, float %8592)  ; FMax(a,b)
  %8595 = call float @dx.op.binary.f32(i32 36, float %8594, float %8593)  ; FMin(a,b)
  %8596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %8597 = extractvalue %dx.types.CBufRet.f32 %8596, 1
  %8598 = extractvalue %dx.types.CBufRet.f32 %8596, 2
  %8599 = extractvalue %dx.types.CBufRet.f32 %8596, 0
  %8600 = fmul fast float %8597, %8595
  %8601 = fadd fast float %8599, %8600
  %8602 = fadd fast float %8599, %8598
  %8603 = fsub fast float %8597, %8598
  %8604 = fadd fast float %8603, %8599
  %8605 = call float @dx.op.binary.f32(i32 35, float %8601, float %8602)  ; FMax(a,b)
  %8606 = call float @dx.op.binary.f32(i32 36, float %8605, float %8604)  ; FMin(a,b)
  %8607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %8546, float %8547, float %8606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8608 = extractvalue %dx.types.ResRet.f32 %8607, 0
  %8609 = extractvalue %dx.types.ResRet.f32 %8607, 1
  %8610 = extractvalue %dx.types.ResRet.f32 %8607, 2
  %8611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %8546, float %8547, float %8606, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8612 = extractvalue %dx.types.ResRet.f32 %8611, 0
  %8613 = extractvalue %dx.types.ResRet.f32 %8611, 1
  %8614 = extractvalue %dx.types.ResRet.f32 %8611, 2
  %8615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8616 = extractvalue %dx.types.CBufRet.f32 %8615, 1
  %8617 = fmul fast float %8616, %8612
  %8618 = fmul fast float %8616, %8613
  %8619 = fmul fast float %8616, %8614
  br label %8620

; <label>:8620                                    ; preds = %8571, %8539, %8528
  %8621 = phi float [ 0.000000e+00, %8528 ], [ %8617, %8571 ], [ 0.000000e+00, %8539 ]
  %8622 = phi float [ 0.000000e+00, %8528 ], [ %8618, %8571 ], [ 0.000000e+00, %8539 ]
  %8623 = phi float [ 0.000000e+00, %8528 ], [ %8619, %8571 ], [ 0.000000e+00, %8539 ]
  %8624 = phi float [ 1.000000e+00, %8528 ], [ %8608, %8571 ], [ 1.000000e+00, %8539 ]
  %8625 = phi float [ 1.000000e+00, %8528 ], [ %8609, %8571 ], [ 1.000000e+00, %8539 ]
  %8626 = phi float [ 1.000000e+00, %8528 ], [ %8610, %8571 ], [ 1.000000e+00, %8539 ]
  %8627 = fcmp fast olt float %8369, 1.000000e+00
  %8628 = fcmp fast olt float %8530, %8527
  %8629 = or i1 %8627, %8628
  br i1 %8629, label %8630, label %8721

; <label>:8630                                    ; preds = %8620
  %8631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %8632 = extractvalue %dx.types.CBufRet.i32 %8631, 0
  %8633 = call i32 @dx.op.binary.i32(i32 40, i32 %199, i32 %8632)  ; UMin(a,b)
  %8634 = mul i32 %8633, 36
  %8635 = add i32 %8634, 4
  %8636 = add i32 %8635, %433
  %8637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %8636, i32 undef)  ; BufferLoad(srv,index,wot)
  %8638 = extractvalue %dx.types.ResRet.i32 %8637, 0
  %8639 = and i32 %8638, 32767
  %8640 = mul nuw nsw i32 %8639, 928
  %8641 = add nuw nsw i32 %8640, 44
  %8642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8641, i32 undef)  ; BufferLoad(srv,index,wot)
  %8643 = extractvalue %dx.types.ResRet.f32 %8642, 0
  %8644 = add nuw nsw i32 %8640, 48
  %8645 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8644, i32 undef)  ; BufferLoad(srv,index,wot)
  %8646 = extractvalue %dx.types.ResRet.f32 %8645, 0
  %8647 = extractvalue %dx.types.ResRet.f32 %8645, 1
  %8648 = extractvalue %dx.types.ResRet.f32 %8645, 2
  %8649 = add nuw nsw i32 %8640, 60
  %8650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %51, i32 %8649, i32 undef)  ; BufferLoad(srv,index,wot)
  %8651 = extractvalue %dx.types.ResRet.f32 %8650, 0
  %8652 = extractvalue %dx.types.ResRet.f32 %8650, 1
  %8653 = extractvalue %dx.types.ResRet.f32 %8650, 2
  %8654 = fmul fast float %8646, 0x3F847AE140000000
  %8655 = fmul fast float %8647, 0x3F847AE140000000
  %8656 = fmul fast float %8648, 0x3F847AE140000000
  %8657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %8658 = extractvalue %dx.types.CBufRet.f32 %8657, 0
  %8659 = extractvalue %dx.types.CBufRet.f32 %8657, 1
  %8660 = extractvalue %dx.types.CBufRet.f32 %8657, 2
  %8661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %8662 = extractvalue %dx.types.CBufRet.f32 %8661, 0
  %8663 = extractvalue %dx.types.CBufRet.f32 %8661, 1
  %8664 = call float @dx.op.dot3.f32(i32 55, float %8658, float %8659, float %8660, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8665 = select i1 %2584, float %8662, float %8658
  %8666 = select i1 %2584, float %8664, float %8659
  %8667 = select i1 %2584, float %8663, float %8660
  %8668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %8669 = extractvalue %dx.types.CBufRet.f32 %8668, 0
  %8670 = extractvalue %dx.types.CBufRet.f32 %8668, 1
  %8671 = extractvalue %dx.types.CBufRet.f32 %8668, 2
  %8672 = fadd fast float %8651, %8646
  %8673 = fmul fast float %8672, 0x3F847AE140000000
  %8674 = fadd fast float %8652, %8647
  %8675 = fmul fast float %8674, 0x3F847AE140000000
  %8676 = fadd fast float %8653, %8648
  %8677 = fmul fast float %8676, 0x3F847AE140000000
  %8678 = call float @dx.op.dot3.f32(i32 55, float %8669, float %8670, float %8671, float %2441, float %2442, float %2443)  ; Dot3(ax,ay,az,bx,by,bz)
  %8679 = fcmp fast ogt float %8643, 0.000000e+00
  %8680 = select i1 %8679, float 1.000000e+00, float -1.000000e+00
  %8681 = fmul fast float %8680, 5.000000e-01
  %8682 = fmul fast float %8681, %8678
  %8683 = fmul fast float %8680, %8643
  %8684 = fadd fast float %8682, 4.921875e-01
  %8685 = fadd fast float %8683, -3.125000e-02
  %8686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %63, float %8684, float 0x3FB25F3060000000, float %8685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8687 = extractvalue %dx.types.ResRet.f32 %8686, 0
  %8688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %8689 = extractvalue %dx.types.CBufRet.f32 %8688, 0
  %8690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %8691 = extractvalue %dx.types.CBufRet.f32 %8690, 0
  %8692 = fmul fast float %8691, %8689
  %8693 = extractvalue %dx.types.CBufRet.f32 %8690, 1
  %8694 = fadd fast float %8692, %8693
  %8695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %8696 = extractvalue %dx.types.CBufRet.f32 %8695, 0
  %8697 = fmul fast float %8696, %7340
  %8698 = extractvalue %dx.types.CBufRet.f32 %8695, 1
  %8699 = fadd fast float %8697, %8698
  %8700 = call float @dx.op.unary.f32(i32 7, float %8699)  ; Saturate(value)
  %8701 = extractvalue %dx.types.CBufRet.f32 %8688, 3
  %8702 = extractvalue %dx.types.CBufRet.f32 %8690, 2
  %8703 = fmul fast float %8702, %8701
  %8704 = extractvalue %dx.types.CBufRet.f32 %8690, 3
  %8705 = fadd fast float %8703, %8704
  %8706 = fmul fast float %8687, 0x400921FB60000000
  %8707 = fmul fast float %8706, %8694
  %8708 = fmul fast float %8707, %8700
  %8709 = fmul fast float %8665, %8654
  %8710 = fmul fast float %8709, %8708
  %8711 = fmul fast float %8666, %8655
  %8712 = fmul fast float %8711, %8708
  %8713 = fmul fast float %8667, %8656
  %8714 = fmul fast float %8713, %8708
  %8715 = fmul fast float %8654, %3656
  %8716 = fmul fast float %8715, %8705
  %8717 = fmul fast float %8655, %3657
  %8718 = fmul fast float %8717, %8705
  %8719 = fmul fast float %8656, %3658
  %8720 = fmul fast float %8719, %8705
  br label %8721

; <label>:8721                                    ; preds = %8630, %8620
  %8722 = phi float [ %8673, %8630 ], [ 0.000000e+00, %8620 ]
  %8723 = phi float [ %8675, %8630 ], [ 0.000000e+00, %8620 ]
  %8724 = phi float [ %8677, %8630 ], [ 0.000000e+00, %8620 ]
  %8725 = phi float [ %8710, %8630 ], [ 0.000000e+00, %8620 ]
  %8726 = phi float [ %8712, %8630 ], [ 0.000000e+00, %8620 ]
  %8727 = phi float [ %8714, %8630 ], [ 0.000000e+00, %8620 ]
  %8728 = phi float [ %8716, %8630 ], [ 0.000000e+00, %8620 ]
  %8729 = phi float [ %8718, %8630 ], [ 0.000000e+00, %8620 ]
  %8730 = phi float [ %8720, %8630 ], [ 0.000000e+00, %8620 ]
  %8731 = call float @dx.op.binary.f32(i32 35, float %8722, float 0x3F10000000000000)  ; FMax(a,b)
  %8732 = call float @dx.op.binary.f32(i32 35, float %8723, float 0x3F10000000000000)  ; FMax(a,b)
  %8733 = call float @dx.op.binary.f32(i32 35, float %8724, float 0x3F10000000000000)  ; FMax(a,b)
  %8734 = fdiv fast float 1.000000e+00, %8731
  %8735 = fdiv fast float 1.000000e+00, %8732
  %8736 = fdiv fast float 1.000000e+00, %8733
  %8737 = fmul fast float %8722, 0xBFF7154760000000
  %8738 = fmul fast float %8723, 0xBFF7154760000000
  %8739 = fmul fast float %8724, 0xBFF7154760000000
  %8740 = extractvalue %dx.types.CBufRet.f32 %8529, 3
  %8741 = call float @dx.op.dot3.f32(i32 55, float %8734, float %8735, float %8736, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8742 = fmul fast float %8740, %8741
  %8743 = call float @dx.op.binary.f32(i32 35, float %8531, float %8526)  ; FMax(a,b)
  %8744 = fsub fast float %8527, %8743
  %8745 = call float @dx.op.binary.f32(i32 35, float %8744, float 0.000000e+00)  ; FMax(a,b)
  %8746 = fsub fast float %8527, %8526
  %8747 = call float @dx.op.binary.f32(i32 35, float %8746, float 0.000000e+00)  ; FMax(a,b)
  %8748 = call float @dx.op.binary.f32(i32 36, float %8747, float %8742)  ; FMin(a,b)
  %8749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8750 = extractvalue %dx.types.CBufRet.f32 %8749, 0
  %8751 = fmul fast float %8750, %8748
  %8752 = fmul fast float %8751, %8737
  %8753 = fmul fast float %8751, %8738
  %8754 = fmul fast float %8751, %8739
  %8755 = call float @dx.op.unary.f32(i32 21, float %8752)  ; Exp(value)
  %8756 = call float @dx.op.unary.f32(i32 21, float %8753)  ; Exp(value)
  %8757 = call float @dx.op.unary.f32(i32 21, float %8754)  ; Exp(value)
  %8758 = fmul fast float %8755, %8725
  %8759 = fmul fast float %8756, %8726
  %8760 = fmul fast float %8757, %8727
  %8761 = extractvalue %dx.types.CBufRet.f32 %8749, 1
  %8762 = fmul fast float %8761, %8748
  %8763 = fmul fast float %8762, %8737
  %8764 = fmul fast float %8762, %8738
  %8765 = fmul fast float %8762, %8739
  %8766 = call float @dx.op.unary.f32(i32 21, float %8763)  ; Exp(value)
  %8767 = call float @dx.op.unary.f32(i32 21, float %8764)  ; Exp(value)
  %8768 = call float @dx.op.unary.f32(i32 21, float %8765)  ; Exp(value)
  %8769 = fmul fast float %8766, %8728
  %8770 = fmul fast float %8767, %8729
  %8771 = fmul fast float %8768, %8730
  %8772 = fadd fast float %8769, %8758
  %8773 = fadd fast float %8770, %8759
  %8774 = fadd fast float %8771, %8760
  %8775 = fmul fast float %8745, %8737
  %8776 = fmul fast float %8745, %8738
  %8777 = fmul fast float %8745, %8739
  %8778 = call float @dx.op.unary.f32(i32 21, float %8775)  ; Exp(value)
  %8779 = call float @dx.op.unary.f32(i32 21, float %8776)  ; Exp(value)
  %8780 = call float @dx.op.unary.f32(i32 21, float %8777)  ; Exp(value)
  %8781 = call float @dx.op.unary.f32(i32 7, float %8778)  ; Saturate(value)
  %8782 = call float @dx.op.unary.f32(i32 7, float %8779)  ; Saturate(value)
  %8783 = call float @dx.op.unary.f32(i32 7, float %8780)  ; Saturate(value)
  %8784 = fmul fast float %8781, %8772
  %8785 = fmul fast float %8782, %8773
  %8786 = fmul fast float %8783, %8774
  %8787 = fsub fast float %8772, %8784
  %8788 = fsub fast float %8773, %8785
  %8789 = fsub fast float %8774, %8786
  %8790 = fmul fast float %8734, %8624
  %8791 = fmul fast float %8790, %8787
  %8792 = fmul fast float %8735, %8625
  %8793 = fmul fast float %8792, %8788
  %8794 = fmul fast float %8736, %8626
  %8795 = fmul fast float %8794, %8789
  %8796 = fadd fast float %8791, %8621
  %8797 = fadd fast float %8793, %8622
  %8798 = fadd fast float %8795, %8623
  %8799 = fmul fast float %8781, %8624
  %8800 = fmul fast float %8782, %8625
  %8801 = fmul fast float %8783, %8626
  %8802 = fmul fast float %8747, %8737
  %8803 = fmul fast float %8747, %8738
  %8804 = fmul fast float %8747, %8739
  %8805 = call float @dx.op.unary.f32(i32 21, float %8802)  ; Exp(value)
  %8806 = call float @dx.op.unary.f32(i32 21, float %8803)  ; Exp(value)
  %8807 = call float @dx.op.unary.f32(i32 21, float %8804)  ; Exp(value)
  %8808 = call float @dx.op.unary.f32(i32 7, float %8805)  ; Saturate(value)
  %8809 = call float @dx.op.unary.f32(i32 7, float %8806)  ; Saturate(value)
  %8810 = call float @dx.op.unary.f32(i32 7, float %8807)  ; Saturate(value)
  %8811 = fmul fast float %8808, %8772
  %8812 = fmul fast float %8809, %8773
  %8813 = fmul fast float %8810, %8774
  %8814 = fsub fast float %8772, %8811
  %8815 = fsub fast float %8773, %8812
  %8816 = fsub fast float %8774, %8813
  %8817 = fmul fast float %8814, %8734
  %8818 = fmul fast float %8815, %8735
  %8819 = fmul fast float %8816, %8736
  %8820 = fsub fast float %8526, %8530
  %8821 = fmul fast float %8532, %8820
  %8822 = call float @dx.op.unary.f32(i32 7, float %8821)  ; Saturate(value)
  %8823 = fmul fast float %8822, %8822
  %8824 = fmul fast float %8822, 2.000000e+00
  %8825 = fsub fast float 3.000000e+00, %8824
  %8826 = fmul fast float %8823, %8825
  %8827 = fsub fast float %8817, %8796
  %8828 = fsub fast float %8818, %8797
  %8829 = fsub fast float %8819, %8798
  %8830 = fmul fast float %8826, %8827
  %8831 = fmul fast float %8826, %8828
  %8832 = fmul fast float %8826, %8829
  %8833 = fadd fast float %8830, %8796
  %8834 = fadd fast float %8831, %8797
  %8835 = fadd fast float %8832, %8798
  %8836 = fsub fast float %8808, %8799
  %8837 = fsub fast float %8809, %8800
  %8838 = fsub fast float %8810, %8801
  %8839 = fmul fast float %8826, %8836
  %8840 = fmul fast float %8826, %8837
  %8841 = fmul fast float %8826, %8838
  %8842 = fadd fast float %8839, %8799
  %8843 = fadd fast float %8840, %8800
  %8844 = fadd fast float %8841, %8801
  br i1 %8627, label %8845, label %8913

; <label>:8845                                    ; preds = %8721
  %8846 = extractvalue %dx.types.CBufRet.f32 %8749, 3
  %8847 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8846)  ; Dot3(ax,ay,az,bx,by,bz)
  %8848 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2586, float %2587, float %2588)  ; Dot3(ax,ay,az,bx,by,bz)
  %8849 = fdiv fast float 1.000000e+00, %8848
  %8850 = fmul fast float %8849, %8847
  %8851 = fcmp ogt float %2443, -0.000000e+00
  %8852 = select i1 %8851, float %8846, float %8850
  %8853 = call float @dx.op.binary.f32(i32 36, float %8852, float %8742)  ; FMin(a,b)
  %8854 = fmul fast float %8750, %8853
  %8855 = fmul fast float %8854, %8737
  %8856 = fmul fast float %8854, %8738
  %8857 = fmul fast float %8854, %8739
  %8858 = call float @dx.op.unary.f32(i32 21, float %8855)  ; Exp(value)
  %8859 = call float @dx.op.unary.f32(i32 21, float %8856)  ; Exp(value)
  %8860 = call float @dx.op.unary.f32(i32 21, float %8857)  ; Exp(value)
  %8861 = fmul fast float %8858, %8725
  %8862 = fmul fast float %8859, %8726
  %8863 = fmul fast float %8860, %8727
  %8864 = fmul fast float %8761, %8853
  %8865 = fmul fast float %8864, %8737
  %8866 = fmul fast float %8864, %8738
  %8867 = fmul fast float %8864, %8739
  %8868 = call float @dx.op.unary.f32(i32 21, float %8865)  ; Exp(value)
  %8869 = call float @dx.op.unary.f32(i32 21, float %8866)  ; Exp(value)
  %8870 = call float @dx.op.unary.f32(i32 21, float %8867)  ; Exp(value)
  %8871 = fmul fast float %8868, %8728
  %8872 = fmul fast float %8869, %8729
  %8873 = fmul fast float %8870, %8730
  %8874 = fadd fast float %8871, %8861
  %8875 = fadd fast float %8872, %8862
  %8876 = fadd fast float %8873, %8863
  %8877 = fmul fast float %8852, %8737
  %8878 = fmul fast float %8852, %8738
  %8879 = fmul fast float %8852, %8739
  %8880 = call float @dx.op.unary.f32(i32 21, float %8877)  ; Exp(value)
  %8881 = call float @dx.op.unary.f32(i32 21, float %8878)  ; Exp(value)
  %8882 = call float @dx.op.unary.f32(i32 21, float %8879)  ; Exp(value)
  %8883 = call float @dx.op.unary.f32(i32 7, float %8880)  ; Saturate(value)
  %8884 = call float @dx.op.unary.f32(i32 7, float %8881)  ; Saturate(value)
  %8885 = call float @dx.op.unary.f32(i32 7, float %8882)  ; Saturate(value)
  %8886 = fmul fast float %8883, %8874
  %8887 = fmul fast float %8884, %8875
  %8888 = fmul fast float %8885, %8876
  %8889 = fsub fast float %8874, %8886
  %8890 = fsub fast float %8875, %8887
  %8891 = fsub fast float %8876, %8888
  %8892 = fmul fast float %8889, %8734
  %8893 = fmul fast float %8890, %8735
  %8894 = fmul fast float %8891, %8736
  %8895 = fsub fast float %8833, %8892
  %8896 = fsub fast float %8834, %8893
  %8897 = fsub fast float %8835, %8894
  %8898 = fmul fast float %8895, %8369
  %8899 = fmul fast float %8896, %8369
  %8900 = fmul fast float %8897, %8369
  %8901 = fadd fast float %8898, %8892
  %8902 = fadd fast float %8899, %8893
  %8903 = fadd fast float %8900, %8894
  %8904 = fsub fast float %8842, %8883
  %8905 = fsub fast float %8843, %8884
  %8906 = fsub fast float %8844, %8885
  %8907 = fmul fast float %8904, %8369
  %8908 = fmul fast float %8905, %8369
  %8909 = fmul fast float %8906, %8369
  %8910 = fadd fast float %8907, %8883
  %8911 = fadd fast float %8908, %8884
  %8912 = fadd fast float %8909, %8885
  br label %8913

; <label>:8913                                    ; preds = %8845, %8721
  %8914 = phi float [ %8901, %8845 ], [ %8833, %8721 ]
  %8915 = phi float [ %8902, %8845 ], [ %8834, %8721 ]
  %8916 = phi float [ %8903, %8845 ], [ %8835, %8721 ]
  %8917 = phi float [ %8910, %8845 ], [ %8842, %8721 ]
  %8918 = phi float [ %8911, %8845 ], [ %8843, %8721 ]
  %8919 = phi float [ %8912, %8845 ], [ %8844, %8721 ]
  %8920 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8921 = extractvalue %dx.types.CBufRet.i32 %8920, 3
  %8922 = and i32 %8921, 3
  %8923 = icmp ne i32 %8922, 0
  %8924 = and i32 %8921, 4
  %8925 = icmp ne i32 %8924, 0
  %8926 = and i1 %8923, %8925
  br i1 %8926, label %8927, label %8934

; <label>:8927                                    ; preds = %8913
  %8928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8524, float %8525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8929 = extractvalue %dx.types.ResRet.f32 %8928, 0
  %8930 = fsub fast float 1.000000e+00, %8929
  %8931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8932 = extractvalue %dx.types.CBufRet.f32 %8931, 0
  %8933 = fcmp fast olt float %8930, %8932
  br label %8937

; <label>:8934                                    ; preds = %8913
  %8935 = icmp eq i32 %8924, 0
  %8936 = and i1 %8923, %8935
  br label %8937

; <label>:8937                                    ; preds = %8934, %8927
  %8938 = phi i1 [ %8933, %8927 ], [ %8936, %8934 ]
  %8939 = xor i1 %2584, %8938
  %8940 = select i1 %8939, float 0.000000e+00, float %8369
  %8941 = fcmp fast ogt float %8940, 0.000000e+00
  %8942 = select i1 %8941, float %8524, float 0.000000e+00
  %8943 = select i1 %8941, float %8525, float 0.000000e+00
  %8944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %8942, float %8943, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8945 = extractvalue %dx.types.ResRet.f32 %8944, 0
  %8946 = extractvalue %dx.types.ResRet.f32 %8944, 1
  %8947 = extractvalue %dx.types.ResRet.f32 %8944, 2
  %8948 = fmul fast float %8946, %8940
  %8949 = fmul fast float %8947, %8940
  %8950 = select i1 %2584, float 0.000000e+00, float %8948
  %8951 = select i1 %2584, float 0.000000e+00, float %8949
  %8952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8953 = extractvalue %dx.types.CBufRet.f32 %8952, 1
  %8954 = fmul fast float %8940, %8917
  %8955 = fmul fast float %8954, %8945
  %8956 = fmul fast float %8955, %8953
  %8957 = fmul fast float %8953, %8918
  %8958 = fmul fast float %8957, %8950
  %8959 = fmul fast float %8953, %8919
  %8960 = fmul fast float %8959, %8951
  %8961 = fadd fast float %8956, %8914
  %8962 = fadd fast float %8958, %8915
  %8963 = fadd fast float %8960, %8916
  br label %9003

; <label>:8964                                    ; preds = %8523
  %8965 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8966 = extractvalue %dx.types.CBufRet.i32 %8965, 3
  %8967 = and i32 %8966, 3
  %8968 = icmp ne i32 %8967, 0
  %8969 = and i32 %8966, 4
  %8970 = icmp ne i32 %8969, 0
  %8971 = and i1 %8968, %8970
  br i1 %8971, label %8972, label %8979

; <label>:8972                                    ; preds = %8964
  %8973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %59, %dx.types.Handle %63, float %8524, float %8525, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8974 = extractvalue %dx.types.ResRet.f32 %8973, 0
  %8975 = fsub fast float 1.000000e+00, %8974
  %8976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8977 = extractvalue %dx.types.CBufRet.f32 %8976, 0
  %8978 = fcmp fast olt float %8975, %8977
  br label %8982

; <label>:8979                                    ; preds = %8964
  %8980 = icmp eq i32 %8969, 0
  %8981 = and i1 %8968, %8980
  br label %8982

; <label>:8982                                    ; preds = %8979, %8972
  %8983 = phi i1 [ %8978, %8972 ], [ %8981, %8979 ]
  %8984 = xor i1 %2584, %8983
  %8985 = select i1 %8984, float 0.000000e+00, float %8369
  %8986 = fcmp fast ogt float %8985, 0.000000e+00
  %8987 = select i1 %8986, float %8524, float 0.000000e+00
  %8988 = select i1 %8986, float %8525, float 0.000000e+00
  %8989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %63, float %8987, float %8988, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8990 = extractvalue %dx.types.ResRet.f32 %8989, 0
  %8991 = extractvalue %dx.types.ResRet.f32 %8989, 1
  %8992 = extractvalue %dx.types.ResRet.f32 %8989, 2
  %8993 = fmul fast float %8990, %8985
  %8994 = fmul fast float %8991, %8985
  %8995 = fmul fast float %8992, %8985
  %8996 = select i1 %2584, float 0.000000e+00, float %8994
  %8997 = select i1 %2584, float 0.000000e+00, float %8995
  %8998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8999 = extractvalue %dx.types.CBufRet.f32 %8998, 1
  %9000 = fmul fast float %8993, %8999
  %9001 = fmul fast float %8996, %8999
  %9002 = fmul fast float %8997, %8999
  br label %9003

; <label>:9003                                    ; preds = %8982, %8937
  %9004 = phi float [ %9000, %8982 ], [ %8961, %8937 ]
  %9005 = phi float [ %9001, %8982 ], [ %8962, %8937 ]
  %9006 = phi float [ %9002, %8982 ], [ %8963, %8937 ]
  %9007 = fmul fast float %9004, %3697
  %9008 = fmul fast float %9005, %3697
  %9009 = fmul fast float %9006, %3697
  %9010 = select i1 %117, float %8438, float 1.000000e+00
  %9011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9012 = extractvalue %dx.types.CBufRet.f32 %9011, 0
  %9013 = bitcast float %9012 to i32
  %9014 = and i32 %9013, 255
  %9015 = uitofp i32 %9014 to float
  %9016 = fptoui float %9015 to i32
  %9017 = icmp eq i32 %9016, 13
  br i1 %9017, label %9018, label %9038

; <label>:9018                                    ; preds = %9003
  %9019 = fadd fast float %1901, 2.000000e+00
  %9020 = fadd fast float %1903, 1.000000e+00
  %9021 = fsub fast float 1.000000e+00, %1904
  %9022 = fmul fast float %9019, 5.000000e-01
  %9023 = fmul fast float %9020, 5.000000e-01
  %9024 = fmul fast float %9021, 5.000000e-01
  %9025 = call float @dx.op.unary.f32(i32 7, float %9022)  ; Saturate(value)
  %9026 = call float @dx.op.unary.f32(i32 7, float %9023)  ; Saturate(value)
  %9027 = call float @dx.op.unary.f32(i32 7, float %9024)  ; Saturate(value)
  %9028 = fmul fast float %9025, 1.023000e+03
  %9029 = fmul fast float %9026, 1.023000e+03
  %9030 = fmul fast float %9027, 1.023000e+03
  %9031 = fptoui float %9028 to i32
  %9032 = fptoui float %9029 to i32
  %9033 = fptoui float %9030 to i32
  %9034 = shl i32 %9032, 10
  %9035 = or i32 %9034, %9031
  %9036 = shl i32 %9033, 20
  %9037 = or i32 %9035, %9036
  br label %9038

; <label>:9038                                    ; preds = %9018, %9003
  %9039 = phi i32 [ %9037, %9018 ], [ %8348, %9003 ]
  %9040 = icmp eq i32 %9016, 14
  br i1 %9040, label %9041, label %9061

; <label>:9041                                    ; preds = %9038
  %9042 = fadd fast float %1898, 1.000000e+00
  %9043 = fadd fast float %1908, 1.000000e+00
  %9044 = fsub fast float 1.000000e+00, %120
  %9045 = fmul fast float %9042, 5.000000e-01
  %9046 = fmul fast float %9043, 5.000000e-01
  %9047 = fmul fast float %9044, 5.000000e-01
  %9048 = call float @dx.op.unary.f32(i32 7, float %9045)  ; Saturate(value)
  %9049 = call float @dx.op.unary.f32(i32 7, float %9046)  ; Saturate(value)
  %9050 = call float @dx.op.unary.f32(i32 7, float %9047)  ; Saturate(value)
  %9051 = fmul fast float %9048, 1.023000e+03
  %9052 = fmul fast float %9049, 1.023000e+03
  %9053 = fmul fast float %9050, 1.023000e+03
  %9054 = fptoui float %9051 to i32
  %9055 = fptoui float %9052 to i32
  %9056 = fptoui float %9053 to i32
  %9057 = shl i32 %9055, 10
  %9058 = or i32 %9057, %9054
  %9059 = shl i32 %9056, 20
  %9060 = or i32 %9058, %9059
  br label %9061

; <label>:9061                                    ; preds = %9041, %9038
  %9062 = phi i32 [ %9060, %9041 ], [ %9039, %9038 ]
  %9063 = icmp eq i32 %9016, 15
  br i1 %9063, label %9064, label %9084

; <label>:9064                                    ; preds = %9061
  %9065 = fadd fast float %119, 1.000000e+00
  %9066 = fadd fast float %120, 1.000000e+00
  %9067 = fadd fast float %121, 1.000000e+00
  %9068 = fmul fast float %9065, 5.000000e-01
  %9069 = fmul fast float %9066, 5.000000e-01
  %9070 = fmul fast float %9067, 5.000000e-01
  %9071 = call float @dx.op.unary.f32(i32 7, float %9068)  ; Saturate(value)
  %9072 = call float @dx.op.unary.f32(i32 7, float %9069)  ; Saturate(value)
  %9073 = call float @dx.op.unary.f32(i32 7, float %9070)  ; Saturate(value)
  %9074 = fmul fast float %9071, 1.023000e+03
  %9075 = fmul fast float %9072, 1.023000e+03
  %9076 = fmul fast float %9073, 1.023000e+03
  %9077 = fptoui float %9074 to i32
  %9078 = fptoui float %9075 to i32
  %9079 = fptoui float %9076 to i32
  %9080 = shl i32 %9078, 10
  %9081 = or i32 %9080, %9077
  %9082 = shl i32 %9079, 20
  %9083 = or i32 %9081, %9082
  br label %9084

; <label>:9084                                    ; preds = %9064, %9061
  %9085 = phi i32 [ %9083, %9064 ], [ %9062, %9061 ]
  %9086 = fsub fast float 1.000000e+00, %2591
  %9087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9088 = extractvalue %dx.types.CBufRet.f32 %9087, 0
  %9089 = fmul fast float %9088, %9086
  %9090 = fmul fast float %2415, 2.000000e+00
  %9091 = fmul fast float %9090, %2452
  %9092 = fsub fast float %2443, %9091
  %9093 = call float @dx.op.unary.f32(i32 7, float %9092)  ; Saturate(value)
  %9094 = fsub fast float 1.000000e+00, %9093
  %9095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %9096 = extractvalue %dx.types.CBufRet.f32 %9095, 3
  %9097 = fmul fast float %9096, %9094
  %9098 = fsub fast float 1.000000e+00, %2558
  %9099 = call float @dx.op.unary.f32(i32 7, float %9098)  ; Saturate(value)
  %9100 = fadd fast float %8366, %2560
  %9101 = fmul fast float %9100, %2558
  %9102 = fmul fast float %9097, %9099
  %9103 = icmp eq i32 %9016, 39
  %9104 = icmp eq i32 %9016, 40
  %9105 = select i1 %9104, float %2558, float 0.000000e+00
  %9106 = select i1 %9103, float %9100, float %9105
  %9107 = fmul fast float %8364, %2425
  %9108 = fmul fast float %8365, %2426
  %9109 = fmul fast float %8366, %2427
  %9110 = fadd fast float %9107, %8361
  %9111 = fadd fast float %9110, %9007
  %9112 = fadd fast float %9108, %8362
  %9113 = fadd fast float %9112, %9008
  %9114 = fadd fast float %9109, %8363
  %9115 = fadd fast float %9114, %9009
  br i1 %117, label %9119, label %9116

; <label>:9116                                    ; preds = %9084
  %9117 = fmul fast float %8371, %100
  %9118 = fmul fast float %8372, %101
  br label %9918

; <label>:9119                                    ; preds = %9084
  %9120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %9121 = extractvalue %dx.types.CBufRet.f32 %9120, 0
  %9122 = extractvalue %dx.types.CBufRet.f32 %9120, 1
  %9123 = extractvalue %dx.types.CBufRet.f32 %9120, 2
  %9124 = extractvalue %dx.types.CBufRet.f32 %9120, 3
  %9125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %9126 = extractvalue %dx.types.CBufRet.f32 %9125, 0
  %9127 = extractvalue %dx.types.CBufRet.f32 %9125, 1
  %9128 = extractvalue %dx.types.CBufRet.f32 %9125, 2
  %9129 = extractvalue %dx.types.CBufRet.f32 %9125, 3
  %9130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %9131 = extractvalue %dx.types.CBufRet.f32 %9130, 0
  %9132 = extractvalue %dx.types.CBufRet.f32 %9130, 1
  %9133 = extractvalue %dx.types.CBufRet.f32 %9130, 2
  %9134 = extractvalue %dx.types.CBufRet.f32 %9130, 3
  %9135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %9136 = extractvalue %dx.types.CBufRet.f32 %9135, 0
  %9137 = extractvalue %dx.types.CBufRet.f32 %9135, 1
  %9138 = extractvalue %dx.types.CBufRet.f32 %9135, 2
  %9139 = extractvalue %dx.types.CBufRet.f32 %9135, 3
  %9140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %9141 = extractvalue %dx.types.CBufRet.f32 %9140, 3
  %9142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %9143 = extractvalue %dx.types.CBufRet.f32 %9142, 3
  %9144 = extractvalue %dx.types.CBufRet.f32 %9142, 0
  %9145 = extractvalue %dx.types.CBufRet.f32 %9142, 1
  %9146 = extractvalue %dx.types.CBufRet.f32 %9142, 2
  %9147 = fcmp fast olt float %9146, -5.000000e-01
  %9148 = fmul fast float %2440, %2439
  %9149 = fadd fast float %9148, %9124
  %9150 = call float @dx.op.dot3.f32(i32 55, float %2441, float %2442, float %2443, float %9121, float %9122, float %9123)  ; Dot3(ax,ay,az,bx,by,bz)
  %9151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9152 = extractvalue %dx.types.CBufRet.i32 %9151, 1
  %9153 = and i32 %9152, 1
  %9154 = icmp ne i32 %9153, 0
  %9155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %9156 = extractvalue %dx.types.CBufRet.f32 %9155, 2
  %9157 = fcmp fast ogt float %9156, 0.000000e+00
  %9158 = and i1 %9154, %9157
  br i1 %9158, label %9159, label %9565, !dx.controlflow.hints !171

; <label>:9159                                    ; preds = %9119
  %9160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %9161 = extractvalue %dx.types.CBufRet.f32 %9160, 3
  %9162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %9163 = extractvalue %dx.types.CBufRet.f32 %9162, 2
  %9164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9165 = extractvalue %dx.types.CBufRet.f32 %9164, 2
  %9166 = fsub fast float %9163, %9165
  %9167 = and i32 %9152, 2
  %9168 = extractvalue %dx.types.CBufRet.i32 %9151, 0
  %9169 = call i32 @dx.op.binary.i32(i32 40, i32 %9168, i32 3)  ; UMin(a,b)
  %9170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %9171 = extractvalue %dx.types.CBufRet.f32 %9170, 0
  %9172 = extractvalue %dx.types.CBufRet.f32 %9170, 1
  %9173 = extractvalue %dx.types.CBufRet.f32 %9164, 0
  %9174 = extractvalue %dx.types.CBufRet.f32 %9164, 1
  %9175 = fsub fast float %9171, %9173
  %9176 = fsub fast float %9172, %9174
  %9177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %9178 = extractvalue %dx.types.CBufRet.f32 %9177, 0
  %9179 = fcmp fast ogt float %9178, 0.000000e+00
  %9180 = fsub fast float -0.000000e+00, %9175
  %9181 = fsub fast float -0.000000e+00, %9176
  %9182 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %2441, float %2442)  ; Dot2(ax,ay,bx,by)
  %9183 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %9180, float %9181)  ; Dot2(ax,ay,bx,by)
  %9184 = fmul fast float %9183, 2.000000e+00
  %9185 = call float @dx.op.dot2.f32(i32 54, float %9180, float %9181, float %9180, float %9181)  ; Dot2(ax,ay,bx,by)
  %9186 = fmul fast float %9178, %9178
  %9187 = fsub fast float %9185, %9186
  %9188 = fmul fast float %9184, %9184
  %9189 = fmul fast float %9182, 4.000000e+00
  %9190 = fmul fast float %9189, %9187
  %9191 = fsub fast float %9188, %9190
  %9192 = fcmp fast ogt float %9191, 0.000000e+00
  br i1 %9192, label %9193, label %9208

; <label>:9193                                    ; preds = %9159
  %9194 = fcmp fast ogt float %9184, 0.000000e+00
  %9195 = call float @dx.op.unary.f32(i32 24, float %9191)  ; Sqrt(value)
  %9196 = fsub fast float -0.000000e+00, %9195
  %9197 = select i1 %9194, float %9195, float %9196
  %9198 = fadd fast float %9197, %9184
  %9199 = fmul float %9198, -5.000000e-01
  %9200 = fdiv fast float %9199, %9182
  %9201 = call float @dx.op.binary.f32(i32 35, float %9200, float 0.000000e+00)  ; FMax(a,b)
  %9202 = call float @dx.op.binary.f32(i32 36, float %9148, float %9201)  ; FMin(a,b)
  %9203 = fdiv fast float %9187, %9199
  %9204 = call float @dx.op.binary.f32(i32 35, float %9203, float 0.000000e+00)  ; FMax(a,b)
  %9205 = call float @dx.op.binary.f32(i32 36, float %9148, float %9204)  ; FMin(a,b)
  %9206 = call float @dx.op.binary.f32(i32 36, float %9202, float %9205)  ; FMin(a,b)
  %9207 = call float @dx.op.binary.f32(i32 35, float %9202, float %9205)  ; FMax(a,b)
  br label %9208

; <label>:9208                                    ; preds = %9193, %9159
  %9209 = phi float [ %9207, %9193 ], [ -1.000000e+00, %9159 ]
  %9210 = phi float [ %9206, %9193 ], [ -1.000000e+00, %9159 ]
  %9211 = phi i1 [ true, %9193 ], [ false, %9159 ]
  %9212 = and i1 %9179, %9211
  br i1 %9212, label %9213, label %9215

; <label>:9213                                    ; preds = %9208
  %9214 = fcmp fast oeq float %9210, %9209
  br i1 %9214, label %9518, label %9216

; <label>:9215                                    ; preds = %9208
  br i1 %9179, label %9518, label %9216

; <label>:9216                                    ; preds = %9215, %9213
  %9217 = phi float [ %9148, %9215 ], [ %9209, %9213 ]
  %9218 = phi float [ 0.000000e+00, %9215 ], [ %9210, %9213 ]
  %9219 = icmp ne i32 %9167, 0
  %9220 = fmul fast float %9217, %2443
  %9221 = fadd fast float %9220, %9161
  %9222 = fmul fast float %9221, %9217
  %9223 = select i1 %9219, float 0.000000e+00, float %9222
  %9224 = fcmp fast oeq float %2443, 0.000000e+00
  %9225 = fdiv fast float %9166, %2443
  %9226 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9225)  ; FMax(a,b)
  %9227 = select i1 %9224, float %9217, float %9226
  %9228 = call float @dx.op.binary.f32(i32 36, float %9217, float %9227)  ; FMin(a,b)
  %9229 = fcmp fast ogt float %2443, 0.000000e+00
  %9230 = fcmp fast olt float %9166, 0.000000e+00
  br i1 %9229, label %9231, label %9288

; <label>:9231                                    ; preds = %9216
  %9232 = icmp eq i32 %9167, 0
  br i1 %9230, label %9233, label %9277

; <label>:9233                                    ; preds = %9231
  %9234 = select i1 %9232, float %9217, float 0.000000e+00
  %9235 = fsub fast float -0.000000e+00, %9234
  %9236 = call float @dx.op.unary.f32(i32 6, float %9235)  ; FAbs(value)
  %9237 = fmul fast float %9234, %2443
  %9238 = fadd fast float %9237, %9161
  %9239 = fmul fast float %9236, %9238
  %9240 = fsub fast float %9223, %9239
  %9241 = fsub fast float %9217, %9236
  %9242 = select i1 %9232, float %9241, float 0.000000e+00
  %9243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9244 = extractvalue %dx.types.CBufRet.f32 %9243, 0
  %9245 = extractvalue %dx.types.CBufRet.f32 %9243, 1
  %9246 = extractvalue %dx.types.CBufRet.f32 %9243, 2
  %9247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9248 = extractvalue %dx.types.CBufRet.f32 %9247, 0
  %9249 = extractvalue %dx.types.CBufRet.f32 %9247, 1
  %9250 = extractvalue %dx.types.CBufRet.f32 %9247, 2
  %9251 = extractvalue %dx.types.CBufRet.f32 %9247, 3
  %9252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9253 = extractvalue %dx.types.CBufRet.f32 %9252, 3
  %9254 = call float @dx.op.binary.f32(i32 36, float %9240, float %9253)  ; FMin(a,b)
  %9255 = fmul fast float %9251, %9242
  %9256 = call float @dx.op.unary.f32(i32 7, float %9255)  ; Saturate(value)
  %9257 = fsub fast float %9248, %9244
  %9258 = fsub fast float %9249, %9245
  %9259 = fsub fast float %9250, %9246
  %9260 = fmul fast float %9256, %9257
  %9261 = fmul fast float %9256, %9258
  %9262 = fmul fast float %9256, %9259
  %9263 = fadd fast float %9260, %9244
  %9264 = fadd fast float %9261, %9245
  %9265 = fadd fast float %9262, %9246
  %9266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9266, 0
  %9268 = extractvalue %dx.types.CBufRet.f32 %9266, 1
  %9269 = fadd fast float %9268, %9267
  %9270 = call float @dx.op.unary.f32(i32 7, float %9269)  ; Saturate(value)
  %9271 = extractvalue %dx.types.CBufRet.f32 %9266, 2
  %9272 = extractvalue %dx.types.CBufRet.f32 %9266, 3
  %9273 = fadd fast float %9272, %9271
  %9274 = call float @dx.op.unary.f32(i32 7, float %9273)  ; Saturate(value)
  %9275 = fmul fast float %9270, %9254
  %9276 = fmul fast float %9275, %9274
  br label %9518

; <label>:9277                                    ; preds = %9231
  br i1 %9232, label %9278, label %9299

; <label>:9278                                    ; preds = %9277
  %9279 = call float @dx.op.binary.f32(i32 36, float %9228, float %9218)  ; FMin(a,b)
  %9280 = fsub fast float %9228, %9279
  %9281 = fsub fast float %9280, %9217
  %9282 = call float @dx.op.unary.f32(i32 6, float %9281)  ; FAbs(value)
  %9283 = fadd fast float %9280, %9217
  %9284 = fmul fast float %9283, %2443
  %9285 = fadd fast float %9284, %9161
  %9286 = fmul fast float %9285, %9282
  %9287 = fsub fast float %9223, %9286
  br label %9299

; <label>:9288                                    ; preds = %9216
  br i1 %9230, label %9289, label %9299

; <label>:9289                                    ; preds = %9288
  %9290 = call float @dx.op.binary.f32(i32 35, float %9218, float %9228)  ; FMax(a,b)
  %9291 = icmp eq i32 %9167, 0
  %9292 = select i1 %9291, float %9228, float 0.000000e+00
  %9293 = fsub fast float -0.000000e+00, %9292
  %9294 = call float @dx.op.unary.f32(i32 6, float %9293)  ; FAbs(value)
  %9295 = fmul fast float %9292, %2443
  %9296 = fadd fast float %9295, %9161
  %9297 = fmul fast float %9294, %9296
  %9298 = fsub fast float %9223, %9297
  br label %9299

; <label>:9299                                    ; preds = %9289, %9288, %9278, %9277
  %9300 = phi float [ %9218, %9277 ], [ %9218, %9278 ], [ %9290, %9289 ], [ %9218, %9288 ]
  %9301 = phi float [ 0.000000e+00, %9277 ], [ %9282, %9278 ], [ %9294, %9289 ], [ 0.000000e+00, %9288 ]
  %9302 = phi float [ %9223, %9277 ], [ %9287, %9278 ], [ %9298, %9289 ], [ %9223, %9288 ]
  %9303 = phi float [ %9228, %9277 ], [ %9228, %9278 ], [ %9217, %9289 ], [ %9217, %9288 ]
  %9304 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %9304, align 4, !tbaa !109, !noalias !172
  %9305 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %9305, align 4, !tbaa !109, !noalias !172
  %9306 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %9306, align 4, !tbaa !109, !noalias !172
  %9307 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 0
  store float -1.000000e+00, float* %9307, align 4, !tbaa !109, !noalias !172
  %9308 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 1
  store float -1.000000e+00, float* %9308, align 4, !tbaa !109, !noalias !172
  %9309 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 2
  store float -1.000000e+00, float* %9309, align 4, !tbaa !109, !noalias !172
  %9310 = icmp sgt i32 %9169, 0
  br i1 %9310, label %9311, label %9372

; <label>:9311                                    ; preds = %9299
  br label %9312

; <label>:9312                                    ; preds = %9361, %9311
  %9313 = phi i32 [ %9362, %9361 ], [ 0, %9311 ]
  %9314 = phi i32 [ %9363, %9361 ], [ 0, %9311 ]
  %9315 = add nuw i32 %9314, 171
  %9316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %9315)  ; CBufferLoadLegacy(handle,regIndex)
  %9317 = extractvalue %dx.types.CBufRet.f32 %9316, 0
  %9318 = extractvalue %dx.types.CBufRet.f32 %9316, 1
  %9319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9320 = extractvalue %dx.types.CBufRet.f32 %9319, 0
  %9321 = extractvalue %dx.types.CBufRet.f32 %9319, 1
  %9322 = fsub fast float %9317, %9320
  %9323 = fsub fast float %9318, %9321
  %9324 = extractvalue %dx.types.CBufRet.f32 %9316, 2
  %9325 = fsub fast float -0.000000e+00, %9322
  %9326 = fsub fast float -0.000000e+00, %9323
  %9327 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %9325, float %9326)  ; Dot2(ax,ay,bx,by)
  %9328 = fmul fast float %9327, 2.000000e+00
  %9329 = call float @dx.op.dot2.f32(i32 54, float %9325, float %9326, float %9325, float %9326)  ; Dot2(ax,ay,bx,by)
  %9330 = fmul fast float %9324, %9324
  %9331 = fsub fast float %9329, %9330
  %9332 = fmul fast float %9328, %9328
  %9333 = fmul fast float %9189, %9331
  %9334 = fsub fast float %9332, %9333
  %9335 = fcmp fast ogt float %9334, 0.000000e+00
  br i1 %9335, label %9336, label %9351

; <label>:9336                                    ; preds = %9312
  %9337 = fcmp fast ogt float %9328, 0.000000e+00
  %9338 = call float @dx.op.unary.f32(i32 24, float %9334)  ; Sqrt(value)
  %9339 = fsub fast float -0.000000e+00, %9338
  %9340 = select i1 %9337, float %9338, float %9339
  %9341 = fadd fast float %9340, %9328
  %9342 = fmul float %9341, -5.000000e-01
  %9343 = fdiv fast float %9342, %9182
  %9344 = call float @dx.op.binary.f32(i32 35, float %9343, float 0.000000e+00)  ; FMax(a,b)
  %9345 = call float @dx.op.binary.f32(i32 36, float %9217, float %9344)  ; FMin(a,b)
  %9346 = fdiv fast float %9331, %9342
  %9347 = call float @dx.op.binary.f32(i32 35, float %9346, float 0.000000e+00)  ; FMax(a,b)
  %9348 = call float @dx.op.binary.f32(i32 36, float %9217, float %9347)  ; FMin(a,b)
  %9349 = call float @dx.op.binary.f32(i32 36, float %9345, float %9348)  ; FMin(a,b)
  %9350 = call float @dx.op.binary.f32(i32 35, float %9345, float %9348)  ; FMax(a,b)
  br label %9351

; <label>:9351                                    ; preds = %9336, %9312
  %9352 = phi float [ %9350, %9336 ], [ -1.000000e+00, %9312 ]
  %9353 = phi float [ %9349, %9336 ], [ -1.000000e+00, %9312 ]
  %9354 = phi i1 [ true, %9336 ], [ false, %9312 ]
  br i1 %9354, label %9355, label %9361

; <label>:9355                                    ; preds = %9351
  %9356 = call float @dx.op.binary.f32(i32 35, float %9300, float %9353)  ; FMax(a,b)
  %9357 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9314
  store float %9356, float* %9357, align 4, !tbaa !109, !noalias !172
  %9358 = call float @dx.op.binary.f32(i32 35, float %9300, float %9352)  ; FMax(a,b)
  %9359 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9314
  store float %9358, float* %9359, align 4, !tbaa !109, !noalias !172
  %9360 = add nsw i32 %9313, 1
  br label %9361

; <label>:9361                                    ; preds = %9355, %9351
  %9362 = phi i32 [ %9360, %9355 ], [ %9313, %9351 ]
  %9363 = add nuw nsw i32 %9314, 1
  %9364 = icmp eq i32 %9363, %9169
  br i1 %9364, label %9365, label %9312

; <label>:9365                                    ; preds = %9361
  %9366 = load float, float* %9306, align 4, !tbaa !109, !alias.scope !188, !noalias !191
  %9367 = load float, float* %9305, align 4, !tbaa !109, !alias.scope !194, !noalias !195
  %9368 = load float, float* %9304, align 4, !tbaa !109, !alias.scope !196, !noalias !197
  %9369 = load float, float* %9309, align 4, !tbaa !109, !alias.scope !198, !noalias !201
  %9370 = load float, float* %9308, align 4, !tbaa !109, !alias.scope !204, !noalias !205
  %9371 = load float, float* %9307, align 4, !tbaa !109, !alias.scope !206, !noalias !207
  br label %9372

; <label>:9372                                    ; preds = %9365, %9299
  %9373 = phi float [ -1.000000e+00, %9299 ], [ %9371, %9365 ]
  %9374 = phi float [ -1.000000e+00, %9299 ], [ %9370, %9365 ]
  %9375 = phi float [ -1.000000e+00, %9299 ], [ %9369, %9365 ]
  %9376 = phi float [ -1.000000e+00, %9299 ], [ %9368, %9365 ]
  %9377 = phi float [ -1.000000e+00, %9299 ], [ %9367, %9365 ]
  %9378 = phi float [ -1.000000e+00, %9299 ], [ %9366, %9365 ]
  %9379 = phi i32 [ 0, %9299 ], [ %9362, %9365 ]
  %9380 = call float @dx.op.binary.f32(i32 36, float %9377, float %9378)  ; FMin(a,b)
  %9381 = call float @dx.op.binary.f32(i32 36, float %9376, float %9380)  ; FMin(a,b)
  %9382 = call float @dx.op.binary.f32(i32 35, float %9376, float %9377)  ; FMax(a,b)
  %9383 = call float @dx.op.binary.f32(i32 36, float %9382, float %9378)  ; FMin(a,b)
  %9384 = call float @dx.op.binary.f32(i32 36, float %9376, float %9377)  ; FMin(a,b)
  %9385 = call float @dx.op.binary.f32(i32 35, float %9384, float %9383)  ; FMax(a,b)
  %9386 = call float @dx.op.binary.f32(i32 35, float %9377, float %9378)  ; FMax(a,b)
  %9387 = call float @dx.op.binary.f32(i32 35, float %9376, float %9386)  ; FMax(a,b)
  store float %9381, float* %9304, align 4, !tbaa !109, !alias.scope !196, !noalias !197
  store float %9385, float* %9305, align 4, !tbaa !109, !alias.scope !194, !noalias !195
  store float %9387, float* %9306, align 4, !tbaa !109, !alias.scope !188, !noalias !191
  %9388 = call float @dx.op.binary.f32(i32 36, float %9374, float %9375)  ; FMin(a,b)
  %9389 = call float @dx.op.binary.f32(i32 36, float %9373, float %9388)  ; FMin(a,b)
  %9390 = call float @dx.op.binary.f32(i32 35, float %9373, float %9374)  ; FMax(a,b)
  %9391 = call float @dx.op.binary.f32(i32 36, float %9390, float %9375)  ; FMin(a,b)
  %9392 = call float @dx.op.binary.f32(i32 36, float %9373, float %9374)  ; FMin(a,b)
  %9393 = call float @dx.op.binary.f32(i32 35, float %9392, float %9391)  ; FMax(a,b)
  %9394 = call float @dx.op.binary.f32(i32 35, float %9374, float %9375)  ; FMax(a,b)
  %9395 = call float @dx.op.binary.f32(i32 35, float %9373, float %9394)  ; FMax(a,b)
  store float %9389, float* %9307, align 4, !tbaa !109, !alias.scope !206, !noalias !207
  store float %9393, float* %9308, align 4, !tbaa !109, !alias.scope !204, !noalias !205
  store float %9395, float* %9309, align 4, !tbaa !109, !alias.scope !198, !noalias !201
  %9396 = sub nsw i32 3, %9379
  %9397 = icmp sgt i32 %9396, 2
  br i1 %9397, label %9398, label %9436

; <label>:9398                                    ; preds = %9372
  %9399 = icmp eq i32 %9167, 0
  %9400 = fsub fast float %9217, %9301
  %9401 = select i1 %9399, float %9400, float %9301
  %9402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9403 = extractvalue %dx.types.CBufRet.f32 %9402, 0
  %9404 = extractvalue %dx.types.CBufRet.f32 %9402, 1
  %9405 = extractvalue %dx.types.CBufRet.f32 %9402, 2
  %9406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9407 = extractvalue %dx.types.CBufRet.f32 %9406, 0
  %9408 = extractvalue %dx.types.CBufRet.f32 %9406, 1
  %9409 = extractvalue %dx.types.CBufRet.f32 %9406, 2
  %9410 = extractvalue %dx.types.CBufRet.f32 %9406, 3
  %9411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9412 = extractvalue %dx.types.CBufRet.f32 %9411, 3
  %9413 = call float @dx.op.binary.f32(i32 36, float %9302, float %9412)  ; FMin(a,b)
  %9414 = fmul fast float %9410, %9401
  %9415 = call float @dx.op.unary.f32(i32 7, float %9414)  ; Saturate(value)
  %9416 = fsub fast float %9407, %9403
  %9417 = fsub fast float %9408, %9404
  %9418 = fsub fast float %9409, %9405
  %9419 = fmul fast float %9415, %9416
  %9420 = fmul fast float %9415, %9417
  %9421 = fmul fast float %9415, %9418
  %9422 = fadd fast float %9419, %9403
  %9423 = fadd fast float %9420, %9404
  %9424 = fadd fast float %9421, %9405
  %9425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9426 = extractvalue %dx.types.CBufRet.f32 %9425, 0
  %9427 = extractvalue %dx.types.CBufRet.f32 %9425, 1
  %9428 = fadd fast float %9427, %9426
  %9429 = call float @dx.op.unary.f32(i32 7, float %9428)  ; Saturate(value)
  %9430 = extractvalue %dx.types.CBufRet.f32 %9425, 2
  %9431 = extractvalue %dx.types.CBufRet.f32 %9425, 3
  %9432 = fadd fast float %9431, %9430
  %9433 = call float @dx.op.unary.f32(i32 7, float %9432)  ; Saturate(value)
  %9434 = fmul fast float %9429, %9413
  %9435 = fmul fast float %9434, %9433
  br label %9518

; <label>:9436                                    ; preds = %9372
  %9437 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9396
  %9438 = load float, float* %9437, align 4, !tbaa !109, !noalias !172
  %9439 = fcmp fast olt float %9438, %9303
  %9440 = icmp sgt i32 %9379, 0
  %9441 = and i1 %9440, %9439
  br i1 %9441, label %9442, label %9479

; <label>:9442                                    ; preds = %9436
  br label %9443

; <label>:9443                                    ; preds = %9472, %9442
  %9444 = phi float [ %9473, %9472 ], [ %9301, %9442 ]
  %9445 = phi float [ %9474, %9472 ], [ %9302, %9442 ]
  %9446 = phi float [ %9454, %9472 ], [ %9438, %9442 ]
  %9447 = phi i32 [ %9451, %9472 ], [ %9396, %9442 ]
  %9448 = getelementptr inbounds [3 x float], [3 x float]* %93, i32 0, i32 %9447
  %9449 = load float, float* %9448, align 4, !tbaa !109, !noalias !172
  %9450 = icmp slt i32 %9447, 2
  %9451 = add nsw i32 %9447, 1
  %9452 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %9451
  %9453 = load float, float* %9452, align 4, !tbaa !109, !noalias !172
  %9454 = select i1 %9450, float %9453, float %9217
  %9455 = call float @dx.op.binary.f32(i32 36, float %9454, float %9449)  ; FMin(a,b)
  %9456 = call float @dx.op.binary.f32(i32 36, float %9303, float %9455)  ; FMin(a,b)
  %9457 = icmp eq i32 %9167, 0
  %9458 = fadd fast float %9456, %9446
  %9459 = fmul fast float %9458, %2443
  %9460 = fadd fast float %9459, %9161
  br i1 %9457, label %9466, label %9461

; <label>:9461                                    ; preds = %9443
  %9462 = fsub fast float %9456, %9446
  %9463 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9462)  ; FMax(a,b)
  %9464 = fmul fast float %9463, %9460
  %9465 = fadd fast float %9464, %9445
  br label %9472

; <label>:9466                                    ; preds = %9443
  %9467 = fsub fast float %9446, %9456
  %9468 = call float @dx.op.unary.f32(i32 6, float %9467)  ; FAbs(value)
  %9469 = fadd fast float %9468, %9444
  %9470 = fmul fast float %9468, %9460
  %9471 = fsub fast float %9445, %9470
  br label %9472

; <label>:9472                                    ; preds = %9466, %9461
  %9473 = phi float [ %9463, %9461 ], [ %9469, %9466 ]
  %9474 = phi float [ %9465, %9461 ], [ %9471, %9466 ]
  %9475 = fcmp fast olt float %9454, %9303
  %9476 = icmp slt i32 %9451, 3
  %9477 = and i1 %9476, %9475
  br i1 %9477, label %9443, label %9478

; <label>:9478                                    ; preds = %9472
  br label %9479

; <label>:9479                                    ; preds = %9478, %9436
  %9480 = phi float [ %9301, %9436 ], [ %9473, %9478 ]
  %9481 = phi float [ %9302, %9436 ], [ %9474, %9478 ]
  %9482 = fsub fast float %9217, %9480
  %9483 = select i1 %9219, float %9480, float %9482
  %9484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %9485 = extractvalue %dx.types.CBufRet.f32 %9484, 0
  %9486 = extractvalue %dx.types.CBufRet.f32 %9484, 1
  %9487 = extractvalue %dx.types.CBufRet.f32 %9484, 2
  %9488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %9489 = extractvalue %dx.types.CBufRet.f32 %9488, 0
  %9490 = extractvalue %dx.types.CBufRet.f32 %9488, 1
  %9491 = extractvalue %dx.types.CBufRet.f32 %9488, 2
  %9492 = extractvalue %dx.types.CBufRet.f32 %9488, 3
  %9493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %9494 = extractvalue %dx.types.CBufRet.f32 %9493, 3
  %9495 = call float @dx.op.binary.f32(i32 36, float %9481, float %9494)  ; FMin(a,b)
  %9496 = fmul fast float %9492, %9483
  %9497 = call float @dx.op.unary.f32(i32 7, float %9496)  ; Saturate(value)
  %9498 = fsub fast float %9489, %9485
  %9499 = fsub fast float %9490, %9486
  %9500 = fsub fast float %9491, %9487
  %9501 = fmul fast float %9497, %9498
  %9502 = fmul fast float %9497, %9499
  %9503 = fmul fast float %9497, %9500
  %9504 = fadd fast float %9501, %9485
  %9505 = fadd fast float %9502, %9486
  %9506 = fadd fast float %9503, %9487
  %9507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %9508 = extractvalue %dx.types.CBufRet.f32 %9507, 0
  %9509 = extractvalue %dx.types.CBufRet.f32 %9507, 1
  %9510 = fadd fast float %9509, %9508
  %9511 = call float @dx.op.unary.f32(i32 7, float %9510)  ; Saturate(value)
  %9512 = extractvalue %dx.types.CBufRet.f32 %9507, 2
  %9513 = extractvalue %dx.types.CBufRet.f32 %9507, 3
  %9514 = fadd fast float %9513, %9512
  %9515 = call float @dx.op.unary.f32(i32 7, float %9514)  ; Saturate(value)
  %9516 = fmul fast float %9511, %9495
  %9517 = fmul fast float %9516, %9515
  br label %9518

; <label>:9518                                    ; preds = %9479, %9398, %9233, %9215, %9213
  %9519 = phi float [ %9242, %9233 ], [ %9401, %9398 ], [ %9483, %9479 ], [ 0.000000e+00, %9213 ], [ 0.000000e+00, %9215 ]
  %9520 = phi float [ %9276, %9233 ], [ %9435, %9398 ], [ %9517, %9479 ], [ 0.000000e+00, %9213 ], [ 0.000000e+00, %9215 ]
  %9521 = phi float [ %9263, %9233 ], [ %9422, %9398 ], [ %9504, %9479 ], [ 0.000000e+00, %9213 ], [ 0.000000e+00, %9215 ]
  %9522 = phi float [ %9264, %9233 ], [ %9423, %9398 ], [ %9505, %9479 ], [ 0.000000e+00, %9213 ], [ 0.000000e+00, %9215 ]
  %9523 = phi float [ %9265, %9233 ], [ %9424, %9398 ], [ %9506, %9479 ], [ 0.000000e+00, %9213 ], [ 0.000000e+00, %9215 ]
  %9524 = fmul fast float %9156, %9520
  %9525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9526 = extractvalue %dx.types.CBufRet.f32 %9525, 2
  %9527 = fsub fast float %9163, %9526
  %9528 = fcmp fast olt float %9524, -2.000000e+01
  %9529 = call float @dx.op.unary.f32(i32 21, float %9524)  ; Exp(value)
  %9530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9531 = extractvalue %dx.types.CBufRet.f32 %9530, 2
  %9532 = extractvalue %dx.types.CBufRet.f32 %9530, 3
  %9533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %9534 = extractvalue %dx.types.CBufRet.f32 %9533, 2
  %9535 = fmul fast float %9532, %9527
  %9536 = call float @dx.op.unary.f32(i32 7, float %9535)  ; Saturate(value)
  %9537 = fsub fast float 1.000000e+00, %9536
  %9538 = fmul fast float %2443, 5.000000e-01
  %9539 = fadd fast float %9538, 5.000000e-01
  %9540 = call float @dx.op.unary.f32(i32 7, float %9539)  ; Saturate(value)
  %9541 = fsub fast float 1.000000e+00, %9540
  %9542 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9537)  ; FMax(a,b)
  %9543 = fdiv fast float %9541, %9542
  %9544 = fsub fast float %9527, %157
  %9545 = call float @dx.op.unary.f32(i32 6, float %9544)  ; FAbs(value)
  %9546 = fmul fast float %9545, %9531
  %9547 = call float @dx.op.unary.f32(i32 7, float %9543)  ; Saturate(value)
  %9548 = fsub fast float 1.000000e+00, %9546
  %9549 = fmul fast float %9548, %9547
  %9550 = fadd fast float %9549, %9546
  %9551 = fmul fast float %9534, %9527
  %9552 = call float @dx.op.unary.f32(i32 7, float %9551)  ; Saturate(value)
  %9553 = fsub fast float 1.000000e+00, %9550
  %9554 = fmul fast float %9553, %9552
  %9555 = fadd fast float %9554, %9550
  %9556 = call float @dx.op.unary.f32(i32 7, float %9555)  ; Saturate(value)
  %9557 = fadd fast float %9529, -1.000000e+00
  %9558 = select i1 %9528, float -1.000000e+00, float %9557
  %9559 = fmul fast float %9556, %9558
  %9560 = fadd fast float %9559, 1.000000e+00
  %9561 = fsub fast float -0.000000e+00, %9559
  %9562 = fmul fast float %9521, %9561
  %9563 = fmul fast float %9522, %9561
  %9564 = fmul fast float %9523, %9561
  br label %9565

; <label>:9565                                    ; preds = %9518, %9119
  %9566 = phi float [ %9519, %9518 ], [ 0.000000e+00, %9119 ]
  %9567 = phi float [ %9560, %9518 ], [ 1.000000e+00, %9119 ]
  %9568 = phi float [ %9562, %9518 ], [ 0.000000e+00, %9119 ]
  %9569 = phi float [ %9563, %9518 ], [ 0.000000e+00, %9119 ]
  %9570 = phi float [ %9564, %9518 ], [ 0.000000e+00, %9119 ]
  %9571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.f32 %9571, 1
  %9573 = fsub fast float 1.000000e+00, %9567
  %9574 = fmul fast float %9573, %9149
  %9575 = fmul fast float %9574, %9572
  %9576 = fsub fast float %9149, %9575
  br i1 %9147, label %9577, label %9606, !dx.controlflow.hints !208

; <label>:9577                                    ; preds = %9565
  %9578 = fmul fast float %9150, %9144
  %9579 = fadd fast float %9578, %9145
  %9580 = call float @dx.op.unary.f32(i32 7, float %9579)  ; Saturate(value)
  %9581 = fmul fast float %9126, %9576
  %9582 = fsub fast float -0.000000e+00, %9581
  %9583 = fmul fast float %9127, %9576
  %9584 = fsub fast float -0.000000e+00, %9583
  %9585 = call float @dx.op.unary.f32(i32 21, float %9582)  ; Exp(value)
  %9586 = call float @dx.op.unary.f32(i32 21, float %9584)  ; Exp(value)
  %9587 = call float @dx.op.binary.f32(i32 35, float %9134, float %9585)  ; FMax(a,b)
  %9588 = call float @dx.op.binary.f32(i32 35, float %9134, float %9586)  ; FMax(a,b)
  %9589 = fsub fast float %9588, %9587
  %9590 = fmul fast float %9589, %9580
  %9591 = fadd fast float %9590, %9587
  %9592 = call float @dx.op.unary.f32(i32 7, float %9591)  ; Saturate(value)
  %9593 = fsub fast float %9131, %9136
  %9594 = fsub fast float %9132, %9137
  %9595 = fsub fast float %9133, %9138
  %9596 = fmul fast float %9580, %9593
  %9597 = fmul fast float %9580, %9594
  %9598 = fmul fast float %9580, %9595
  %9599 = fadd fast float %9596, %9136
  %9600 = fadd fast float %9597, %9137
  %9601 = fadd fast float %9598, %9138
  %9602 = fsub fast float 1.000000e+00, %9592
  %9603 = fmul fast float %9602, %9599
  %9604 = fmul fast float %9602, %9600
  %9605 = fmul fast float %9602, %9601
  br label %9665

; <label>:9606                                    ; preds = %9565
  %9607 = fmul fast float %9576, %9143
  %9608 = call float @dx.op.unary.f32(i32 7, float %9607)  ; Saturate(value)
  %9609 = fsub fast float 2.000000e+00, %9608
  %9610 = fmul fast float %9608, 9.921875e-01
  %9611 = fmul fast float %9610, %9609
  %9612 = fadd fast float %9611, 3.906250e-03
  %9613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %63, float %9612, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9614 = extractvalue %dx.types.ResRet.f32 %9613, 0
  %9615 = fsub fast float %9608, %9614
  %9616 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %9615)  ; FMax(a,b)
  %9617 = fmul fast float %9129, %157
  %9618 = call float @dx.op.unary.f32(i32 6, float %9617)  ; FAbs(value)
  %9619 = fcmp fast ogt float %9618, 0x3EB0C6F7A0000000
  br i1 %9619, label %9620, label %9626, !dx.controlflow.hints !209

; <label>:9620                                    ; preds = %9606
  %9621 = fmul fast float %9617, 0xBFF7154760000000
  %9622 = call float @dx.op.unary.f32(i32 21, float %9621)  ; Exp(value)
  %9623 = fsub fast float 1.000000e+00, %9622
  %9624 = fdiv fast float %9623, %9617
  %9625 = fmul fast float %9624, %9139
  br label %9626

; <label>:9626                                    ; preds = %9620, %9606
  %9627 = phi float [ %9625, %9620 ], [ %9139, %9606 ]
  %9628 = fadd fast float %9627, %9141
  %9629 = fmul fast float %9628, %9616
  %9630 = fmul fast float %9126, %9629
  %9631 = fsub fast float -0.000000e+00, %9630
  %9632 = fmul fast float %9127, %9629
  %9633 = fsub fast float -0.000000e+00, %9632
  %9634 = fmul fast float %9128, %9629
  %9635 = fsub fast float -0.000000e+00, %9634
  %9636 = call float @dx.op.unary.f32(i32 21, float %9631)  ; Exp(value)
  %9637 = call float @dx.op.unary.f32(i32 21, float %9633)  ; Exp(value)
  %9638 = call float @dx.op.unary.f32(i32 21, float %9635)  ; Exp(value)
  %9639 = fmul fast float %9150, %9150
  %9640 = fadd fast float %9639, 1.000000e+00
  %9641 = fmul fast float %9640, 0x3FAE8EC8A0000000
  %9642 = fmul fast float %9641, %9136
  %9643 = fmul fast float %9641, %9137
  %9644 = fmul fast float %9641, %9138
  %9645 = fmul fast float %9150, %9134
  %9646 = fsub fast float 1.000000e+00, %9645
  %9647 = fmul fast float %9134, %9134
  %9648 = fsub fast float 1.000000e+00, %9647
  %9649 = fmul fast float %9648, 0x3FB45F3060000000
  %9650 = fmul fast float %9646, %9646
  %9651 = fdiv fast float 1.000000e+00, %9650
  %9652 = fmul fast float %9649, %9651
  %9653 = fmul fast float %9652, %9131
  %9654 = fmul fast float %9652, %9132
  %9655 = fmul fast float %9652, %9133
  %9656 = fadd fast float %9653, %9642
  %9657 = fadd fast float %9654, %9643
  %9658 = fadd fast float %9655, %9644
  %9659 = fsub fast float 1.000000e+00, %9636
  %9660 = fsub fast float 1.000000e+00, %9637
  %9661 = fsub fast float 1.000000e+00, %9638
  %9662 = fmul fast float %9656, %9659
  %9663 = fmul fast float %9657, %9660
  %9664 = fmul fast float %9658, %9661
  br label %9665

; <label>:9665                                    ; preds = %9626, %9577
  %9666 = phi float [ %9603, %9577 ], [ %9662, %9626 ]
  %9667 = phi float [ %9604, %9577 ], [ %9663, %9626 ]
  %9668 = phi float [ %9605, %9577 ], [ %9664, %9626 ]
  %9669 = phi float [ %9592, %9577 ], [ %9636, %9626 ]
  %9670 = phi float [ %9592, %9577 ], [ %9637, %9626 ]
  %9671 = phi float [ %9592, %9577 ], [ %9638, %9626 ]
  br i1 %9158, label %9672, label %9870, !dx.controlflow.hints !210

; <label>:9672                                    ; preds = %9665
  %9673 = extractvalue %dx.types.CBufRet.f32 %9571, 0
  %9674 = fmul fast float %9673, %9573
  %9675 = fsub fast float %9568, %9666
  %9676 = fsub fast float %9569, %9667
  %9677 = fsub fast float %9570, %9668
  %9678 = fmul fast float %9674, %9675
  %9679 = fmul fast float %9674, %9676
  %9680 = fmul fast float %9674, %9677
  %9681 = fadd fast float %9678, %9666
  %9682 = fadd fast float %9679, %9667
  %9683 = fadd fast float %9680, %9668
  %9684 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9669)  ; FMax(a,b)
  %9685 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9670)  ; FMax(a,b)
  %9686 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9671)  ; FMax(a,b)
  %9687 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %9567)  ; FMax(a,b)
  %9688 = call float @dx.op.binary.f32(i32 35, float %9566, float %9576)  ; FMax(a,b)
  %9689 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %9688)  ; FMax(a,b)
  %9690 = fdiv fast float %9566, %9689
  %9691 = call float @dx.op.unary.f32(i32 7, float %9690)  ; Saturate(value)
  %9692 = fdiv fast float %9576, %9689
  %9693 = call float @dx.op.unary.f32(i32 7, float %9692)  ; Saturate(value)
  %9694 = fcmp fast une float %9687, 1.000000e+00
  br i1 %9694, label %9695, label %9708, !dx.controlflow.hints !211

; <label>:9695                                    ; preds = %9672
  %9696 = call float @dx.op.unary.f32(i32 23, float %9687)  ; Log(value)
  %9697 = fmul fast float %9696, 0x3FE62E4300000000
  %9698 = fmul fast float %9568, %9697
  %9699 = fsub fast float -0.000000e+00, %9698
  %9700 = fmul fast float %9569, %9697
  %9701 = fsub fast float -0.000000e+00, %9700
  %9702 = fmul fast float %9570, %9697
  %9703 = fsub fast float -0.000000e+00, %9702
  %9704 = fsub fast float 1.000000e+00, %9687
  %9705 = fdiv fast float %9699, %9704
  %9706 = fdiv fast float %9701, %9704
  %9707 = fdiv fast float %9703, %9704
  br label %9708

; <label>:9708                                    ; preds = %9695, %9672
  %9709 = phi float [ %9705, %9695 ], [ %9568, %9672 ]
  %9710 = phi float [ %9706, %9695 ], [ %9569, %9672 ]
  %9711 = phi float [ %9707, %9695 ], [ %9570, %9672 ]
  %9712 = phi float [ %9697, %9695 ], [ 0.000000e+00, %9672 ]
  %9713 = fcmp fast une float %9684, 1.000000e+00
  br i1 %9713, label %9714, label %9721, !dx.controlflow.hints !212

; <label>:9714                                    ; preds = %9708
  %9715 = call float @dx.op.unary.f32(i32 23, float %9684)  ; Log(value)
  %9716 = fmul fast float %9715, 0x3FE62E4300000000
  %9717 = fmul fast float %9681, %9716
  %9718 = fsub fast float -0.000000e+00, %9717
  %9719 = fsub fast float 1.000000e+00, %9684
  %9720 = fdiv fast float %9718, %9719
  br label %9721

; <label>:9721                                    ; preds = %9714, %9708
  %9722 = phi float [ %9720, %9714 ], [ %9681, %9708 ]
  %9723 = phi float [ %9716, %9714 ], [ 0.000000e+00, %9708 ]
  %9724 = fcmp fast une float %9685, 1.000000e+00
  br i1 %9724, label %9725, label %9732, !dx.controlflow.hints !212

; <label>:9725                                    ; preds = %9721
  %9726 = call float @dx.op.unary.f32(i32 23, float %9685)  ; Log(value)
  %9727 = fmul fast float %9726, 0x3FE62E4300000000
  %9728 = fmul fast float %9682, %9727
  %9729 = fsub fast float -0.000000e+00, %9728
  %9730 = fsub fast float 1.000000e+00, %9685
  %9731 = fdiv fast float %9729, %9730
  br label %9732

; <label>:9732                                    ; preds = %9725, %9721
  %9733 = phi float [ %9731, %9725 ], [ %9682, %9721 ]
  %9734 = phi float [ %9727, %9725 ], [ 0.000000e+00, %9721 ]
  %9735 = fcmp fast une float %9686, 1.000000e+00
  br i1 %9735, label %9736, label %9743, !dx.controlflow.hints !212

; <label>:9736                                    ; preds = %9732
  %9737 = call float @dx.op.unary.f32(i32 23, float %9686)  ; Log(value)
  %9738 = fmul fast float %9737, 0x3FE62E4300000000
  %9739 = fmul fast float %9683, %9738
  %9740 = fsub fast float -0.000000e+00, %9739
  %9741 = fsub fast float 1.000000e+00, %9686
  %9742 = fdiv fast float %9740, %9741
  br label %9743

; <label>:9743                                    ; preds = %9736, %9732
  %9744 = phi float [ %9742, %9736 ], [ %9683, %9732 ]
  %9745 = phi float [ %9738, %9736 ], [ 0.000000e+00, %9732 ]
  %9746 = fmul fast float %9709, %9693
  %9747 = fmul fast float %9710, %9693
  %9748 = fmul fast float %9711, %9693
  %9749 = fmul fast float %9712, %9693
  %9750 = fmul fast float %9722, %9691
  %9751 = fmul fast float %9733, %9691
  %9752 = fmul fast float %9744, %9691
  %9753 = fmul fast float %9723, %9691
  %9754 = fmul fast float %9734, %9691
  %9755 = fmul fast float %9745, %9691
  %9756 = fadd fast float %9750, %9746
  %9757 = fadd fast float %9751, %9747
  %9758 = fadd fast float %9752, %9748
  %9759 = fadd fast float %9753, %9749
  %9760 = fadd fast float %9754, %9749
  %9761 = fadd fast float %9755, %9749
  %9762 = fcmp fast une float %9759, 0.000000e+00
  br i1 %9762, label %9763, label %9770, !dx.controlflow.hints !213

; <label>:9763                                    ; preds = %9743
  %9764 = fmul fast float %9759, 0x3FF7154760000000
  %9765 = call float @dx.op.unary.f32(i32 21, float %9764)  ; Exp(value)
  %9766 = fsub fast float 1.000000e+00, %9765
  %9767 = fmul fast float %9756, %9766
  %9768 = fsub fast float -0.000000e+00, %9767
  %9769 = fdiv fast float %9768, %9759
  br label %9770

; <label>:9770                                    ; preds = %9763, %9743
  %9771 = phi float [ %9765, %9763 ], [ 1.000000e+00, %9743 ]
  %9772 = phi float [ %9769, %9763 ], [ %9756, %9743 ]
  %9773 = fcmp fast une float %9760, 0.000000e+00
  br i1 %9773, label %9774, label %9781, !dx.controlflow.hints !213

; <label>:9774                                    ; preds = %9770
  %9775 = fmul fast float %9760, 0x3FF7154760000000
  %9776 = call float @dx.op.unary.f32(i32 21, float %9775)  ; Exp(value)
  %9777 = fsub fast float 1.000000e+00, %9776
  %9778 = fmul fast float %9757, %9777
  %9779 = fsub fast float -0.000000e+00, %9778
  %9780 = fdiv fast float %9779, %9760
  br label %9781

; <label>:9781                                    ; preds = %9774, %9770
  %9782 = phi float [ %9776, %9774 ], [ 1.000000e+00, %9770 ]
  %9783 = phi float [ %9780, %9774 ], [ %9757, %9770 ]
  %9784 = fcmp fast une float %9761, 0.000000e+00
  br i1 %9784, label %9785, label %9792, !dx.controlflow.hints !213

; <label>:9785                                    ; preds = %9781
  %9786 = fmul fast float %9761, 0x3FF7154760000000
  %9787 = call float @dx.op.unary.f32(i32 21, float %9786)  ; Exp(value)
  %9788 = fsub fast float 1.000000e+00, %9787
  %9789 = fmul fast float %9758, %9788
  %9790 = fsub fast float -0.000000e+00, %9789
  %9791 = fdiv fast float %9790, %9761
  br label %9792

; <label>:9792                                    ; preds = %9785, %9781
  %9793 = phi float [ %9787, %9785 ], [ 1.000000e+00, %9781 ]
  %9794 = phi float [ %9791, %9785 ], [ %9758, %9781 ]
  %9795 = fcmp fast ogt float %9691, %9693
  br i1 %9795, label %9796, label %9816

; <label>:9796                                    ; preds = %9792
  %9797 = fsub fast float 1.000000e+00, %9693
  %9798 = fmul fast float %9709, %9797
  %9799 = fmul fast float %9710, %9797
  %9800 = fmul fast float %9711, %9797
  %9801 = fmul fast float %9712, %9797
  %9802 = fcmp fast une float %9801, 0.000000e+00
  br i1 %9802, label %9803, label %9854, !dx.controlflow.hints !214

; <label>:9803                                    ; preds = %9796
  %9804 = fmul fast float %9801, 0x3FF7154760000000
  %9805 = call float @dx.op.unary.f32(i32 21, float %9804)  ; Exp(value)
  %9806 = fsub fast float 1.000000e+00, %9805
  %9807 = fmul fast float %9798, %9806
  %9808 = fsub fast float -0.000000e+00, %9807
  %9809 = fmul fast float %9799, %9806
  %9810 = fsub fast float -0.000000e+00, %9809
  %9811 = fmul fast float %9800, %9806
  %9812 = fsub fast float -0.000000e+00, %9811
  %9813 = fdiv fast float %9808, %9801
  %9814 = fdiv fast float %9810, %9801
  %9815 = fdiv fast float %9812, %9801
  br label %9854

; <label>:9816                                    ; preds = %9792
  %9817 = fsub fast float 1.000000e+00, %9691
  %9818 = fmul fast float %9722, %9817
  %9819 = fmul fast float %9733, %9817
  %9820 = fmul fast float %9744, %9817
  %9821 = fmul fast float %9723, %9817
  %9822 = fmul fast float %9734, %9817
  %9823 = fmul fast float %9745, %9817
  %9824 = fcmp fast une float %9821, 0.000000e+00
  br i1 %9824, label %9825, label %9832, !dx.controlflow.hints !213

; <label>:9825                                    ; preds = %9816
  %9826 = fmul fast float %9821, 0x3FF7154760000000
  %9827 = call float @dx.op.unary.f32(i32 21, float %9826)  ; Exp(value)
  %9828 = fsub fast float 1.000000e+00, %9827
  %9829 = fmul fast float %9818, %9828
  %9830 = fsub fast float -0.000000e+00, %9829
  %9831 = fdiv fast float %9830, %9821
  br label %9832

; <label>:9832                                    ; preds = %9825, %9816
  %9833 = phi float [ %9831, %9825 ], [ %9818, %9816 ]
  %9834 = phi float [ %9827, %9825 ], [ 1.000000e+00, %9816 ]
  %9835 = fcmp fast une float %9822, 0.000000e+00
  br i1 %9835, label %9836, label %9843, !dx.controlflow.hints !213

; <label>:9836                                    ; preds = %9832
  %9837 = fmul fast float %9822, 0x3FF7154760000000
  %9838 = call float @dx.op.unary.f32(i32 21, float %9837)  ; Exp(value)
  %9839 = fsub fast float 1.000000e+00, %9838
  %9840 = fmul fast float %9819, %9839
  %9841 = fsub fast float -0.000000e+00, %9840
  %9842 = fdiv fast float %9841, %9822
  br label %9843

; <label>:9843                                    ; preds = %9836, %9832
  %9844 = phi float [ %9842, %9836 ], [ %9819, %9832 ]
  %9845 = phi float [ %9838, %9836 ], [ 1.000000e+00, %9832 ]
  %9846 = fcmp fast une float %9823, 0.000000e+00
  br i1 %9846, label %9847, label %9854, !dx.controlflow.hints !213

; <label>:9847                                    ; preds = %9843
  %9848 = fmul fast float %9823, 0x3FF7154760000000
  %9849 = call float @dx.op.unary.f32(i32 21, float %9848)  ; Exp(value)
  %9850 = fsub fast float 1.000000e+00, %9849
  %9851 = fmul fast float %9820, %9850
  %9852 = fsub fast float -0.000000e+00, %9851
  %9853 = fdiv fast float %9852, %9823
  br label %9854

; <label>:9854                                    ; preds = %9847, %9843, %9803, %9796
  %9855 = phi float [ %9853, %9847 ], [ %9815, %9803 ], [ %9800, %9796 ], [ %9820, %9843 ]
  %9856 = phi float [ %9844, %9847 ], [ %9814, %9803 ], [ %9799, %9796 ], [ %9844, %9843 ]
  %9857 = phi float [ %9833, %9847 ], [ %9813, %9803 ], [ %9798, %9796 ], [ %9833, %9843 ]
  %9858 = phi float [ %9849, %9847 ], [ %9805, %9803 ], [ 1.000000e+00, %9796 ], [ 1.000000e+00, %9843 ]
  %9859 = phi float [ %9845, %9847 ], [ %9805, %9803 ], [ 1.000000e+00, %9796 ], [ %9845, %9843 ]
  %9860 = phi float [ %9834, %9847 ], [ %9805, %9803 ], [ 1.000000e+00, %9796 ], [ %9834, %9843 ]
  %9861 = fmul fast float %9860, %9772
  %9862 = fmul fast float %9859, %9783
  %9863 = fmul fast float %9858, %9794
  %9864 = fadd fast float %9861, %9857
  %9865 = fadd fast float %9862, %9856
  %9866 = fadd fast float %9863, %9855
  %9867 = fmul fast float %9860, %9771
  %9868 = fmul fast float %9859, %9782
  %9869 = fmul fast float %9858, %9793
  br label %9870

; <label>:9870                                    ; preds = %9854, %9665
  %9871 = phi float [ %9869, %9854 ], [ %9671, %9665 ]
  %9872 = phi float [ %9868, %9854 ], [ %9670, %9665 ]
  %9873 = phi float [ %9867, %9854 ], [ %9669, %9665 ]
  %9874 = phi float [ %9866, %9854 ], [ %9668, %9665 ]
  %9875 = phi float [ %9865, %9854 ], [ %9667, %9665 ]
  %9876 = phi float [ %9864, %9854 ], [ %9666, %9665 ]
  %9877 = call float @dx.op.dot3.f32(i32 55, float %9873, float %9872, float %9871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9878 = call float @dx.op.dot3.f32(i32 55, float %9876, float %9875, float %9874, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9879 = select i1 %2584, float %9877, float %9873
  %9880 = select i1 %2584, float %9877, float %9872
  %9881 = select i1 %2584, float 1.000000e+00, float %9871
  %9882 = select i1 %2584, float %9878, float %9876
  %9883 = select i1 %2584, float 0.000000e+00, float %9875
  %9884 = select i1 %2584, float 0.000000e+00, float %9874
  %9885 = fmul fast float %9879, %9111
  %9886 = fmul fast float %9880, %9113
  %9887 = fmul fast float %9881, %9115
  %9888 = fadd fast float %9885, %9882
  %9889 = fadd fast float %9886, %9883
  %9890 = fadd fast float %9884, %9887
  %9891 = fmul fast float %8371, %100
  %9892 = fmul fast float %8372, %101
  %9893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %63, float %9891, float %9892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9894 = extractvalue %dx.types.ResRet.f32 %9893, 0
  %9895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %63, float %9891, float %9892, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9896 = extractvalue %dx.types.ResRet.f32 %9895, 0
  %9897 = extractvalue %dx.types.ResRet.f32 %9895, 1
  %9898 = extractvalue %dx.types.ResRet.f32 %9895, 2
  %9899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9900 = extractvalue %dx.types.CBufRet.f32 %9899, 1
  %9901 = fmul fast float %9900, %9896
  %9902 = fmul fast float %9900, %9897
  %9903 = fmul fast float %9900, %9898
  %9904 = fmul fast float %9894, %9873
  %9905 = call float @dx.op.dot3.f32(i32 55, float %9894, float %9894, float %9894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9906 = call float @dx.op.dot3.f32(i32 55, float %9901, float %9902, float %9903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9907 = select i1 %2584, float %9905, float %9894
  %9908 = select i1 %2584, float 1.000000e+00, float %9894
  %9909 = select i1 %2584, float %9906, float %9901
  %9910 = select i1 %2584, float 0.000000e+00, float %9902
  %9911 = select i1 %2584, float 0.000000e+00, float %9903
  %9912 = fmul fast float %9907, %9888
  %9913 = fmul fast float %9907, %9889
  %9914 = fmul fast float %9908, %9890
  %9915 = fadd fast float %9912, %9909
  %9916 = fadd fast float %9913, %9910
  %9917 = fadd fast float %9911, %9914
  br label %9918

; <label>:9918                                    ; preds = %9870, %9116
  %9919 = phi float [ %9118, %9116 ], [ %9892, %9870 ]
  %9920 = phi float [ %9117, %9116 ], [ %9891, %9870 ]
  %9921 = phi float [ %9111, %9116 ], [ %9915, %9870 ]
  %9922 = phi float [ %9113, %9116 ], [ %9916, %9870 ]
  %9923 = phi float [ %9115, %9116 ], [ %9917, %9870 ]
  %9924 = phi float [ 1.000000e+00, %9116 ], [ %9904, %9870 ]
  %9925 = call float @dx.op.unary.f32(i32 7, float %9920)  ; Saturate(value)
  %9926 = call float @dx.op.unary.f32(i32 7, float %9919)  ; Saturate(value)
  %9927 = select i1 %117, i32 0, i32 2
  %9928 = or i32 %9927, 1
  %9929 = uitofp i32 %9928 to float
  %9930 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %9925, float %9926, float %9929, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9931 = extractvalue %dx.types.ResRet.f32 %9930, 0
  %9932 = extractvalue %dx.types.ResRet.f32 %9930, 1
  %9933 = extractvalue %dx.types.ResRet.f32 %9930, 2
  %9934 = extractvalue %dx.types.ResRet.f32 %9930, 3
  %9935 = add nuw nsw i32 %9927, 2
  %9936 = uitofp i32 %9935 to float
  %9937 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %21, %dx.types.Handle %63, float %9925, float %9926, float %9936, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9938 = extractvalue %dx.types.ResRet.f32 %9937, 0
  %9939 = extractvalue %dx.types.ResRet.f32 %9937, 1
  %9940 = extractvalue %dx.types.ResRet.f32 %9937, 2
  %9941 = extractvalue %dx.types.ResRet.f32 %9937, 3
  %9942 = call float @dx.op.binary.f32(i32 35, float %9932, float %9933)  ; FMax(a,b)
  %9943 = call float @dx.op.binary.f32(i32 35, float %9931, float %9942)  ; FMax(a,b)
  %9944 = call float @dx.op.binary.f32(i32 35, float %9943, float %9934)  ; FMax(a,b)
  %9945 = call float @dx.op.binary.f32(i32 36, float %9939, float %9940)  ; FMin(a,b)
  %9946 = call float @dx.op.binary.f32(i32 36, float %9938, float %9945)  ; FMin(a,b)
  %9947 = call float @dx.op.binary.f32(i32 36, float %9946, float %9941)  ; FMin(a,b)
  %9948 = fmul fast float %9944, 2.550000e+02
  %9949 = fadd fast float %9948, 0x3F70101020000000
  %9950 = fptoui float %9949 to i32
  %9951 = fmul fast float %9947, 2.550000e+02
  %9952 = fadd fast float %9951, 0x3F70101020000000
  %9953 = fptoui float %9952 to i32
  %9954 = icmp ult i32 %9950, %9953
  br i1 %9954, label %9955, label %10007

; <label>:9955                                    ; preds = %9918
  %9956 = fcmp fast ogt float %88, 9.843750e-01
  %9957 = fadd fast float %89, -4.000000e+00
  %9958 = select i1 %9956, float -4.000000e+00, float %9957
  %9959 = call float @dx.op.binary.f32(i32 35, float %9958, float 0.000000e+00)  ; FMax(a,b)
  %9960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9961 = extractvalue %dx.types.CBufRet.f32 %9960, 0
  %9962 = fadd fast float %9961, %9959
  %9963 = extractvalue %dx.types.CBufRet.f32 %9960, 2
  %9964 = fmul fast float %9962, %9963
  %9965 = call float @dx.op.unary.f32(i32 23, float %9964)  ; Log(value)
  %9966 = extractvalue %dx.types.CBufRet.f32 %9960, 3
  %9967 = fmul fast float %9966, %9965
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 2
  %9970 = fmul fast float %9967, %9969
  %9971 = call float @dx.op.unary.f32(i32 7, float %9970)  ; Saturate(value)
  %9972 = uitofp i32 %9950 to float
  %9973 = uitofp i32 %9953 to float
  %9974 = fadd fast float %9972, 5.000000e-01
  %9975 = fadd fast float %9973, 5.000000e-01
  %9976 = fmul fast float %9969, %9974
  %9977 = fmul fast float %9969, %9975
  %9978 = fadd fast float %9976, 0x3F0FFB4800000000
  %9979 = fadd fast float %9977, 0xBF0FFB4800000000
  %9980 = call float @dx.op.binary.f32(i32 35, float %9971, float %9978)  ; FMax(a,b)
  %9981 = call float @dx.op.binary.f32(i32 36, float %9980, float %9979)  ; FMin(a,b)
  %9982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9983 = extractvalue %dx.types.CBufRet.f32 %9982, 1
  %9984 = extractvalue %dx.types.CBufRet.f32 %9982, 2
  %9985 = extractvalue %dx.types.CBufRet.f32 %9982, 0
  %9986 = select i1 %117, float 0.000000e+00, float %9985
  %9987 = fmul fast float %9983, %9981
  %9988 = fadd fast float %9986, %9987
  %9989 = fadd fast float %9986, %9984
  %9990 = fsub fast float %9983, %9984
  %9991 = fadd fast float %9990, %9986
  %9992 = call float @dx.op.binary.f32(i32 35, float %9988, float %9989)  ; FMax(a,b)
  %9993 = call float @dx.op.binary.f32(i32 36, float %9992, float %9991)  ; FMin(a,b)
  %9994 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %61, float %9925, float %9926, float %9993, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9995 = extractvalue %dx.types.ResRet.f32 %9994, 0
  %9996 = extractvalue %dx.types.ResRet.f32 %9994, 1
  %9997 = extractvalue %dx.types.ResRet.f32 %9994, 2
  %9998 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %61, float %9925, float %9926, float %9993, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9999 = extractvalue %dx.types.ResRet.f32 %9998, 0
  %10000 = extractvalue %dx.types.ResRet.f32 %9998, 1
  %10001 = extractvalue %dx.types.ResRet.f32 %9998, 2
  %10002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10003 = extractvalue %dx.types.CBufRet.f32 %10002, 1
  %10004 = fmul fast float %10003, %9999
  %10005 = fmul fast float %10003, %10000
  %10006 = fmul fast float %10003, %10001
  br label %10007

; <label>:10007                                   ; preds = %9955, %9918
  %10008 = phi float [ %9995, %9955 ], [ 1.000000e+00, %9918 ]
  %10009 = phi float [ %9996, %9955 ], [ 1.000000e+00, %9918 ]
  %10010 = phi float [ %9997, %9955 ], [ 1.000000e+00, %9918 ]
  %10011 = phi float [ %10004, %9955 ], [ 0.000000e+00, %9918 ]
  %10012 = phi float [ %10005, %9955 ], [ 0.000000e+00, %9918 ]
  %10013 = phi float [ %10006, %9955 ], [ 0.000000e+00, %9918 ]
  %10014 = fmul fast float %10008, %9924
  %10015 = call float @dx.op.dot3.f32(i32 55, float %10008, float %10009, float %10010, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10016 = call float @dx.op.dot3.f32(i32 55, float %10011, float %10012, float %10013, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10017 = select i1 %2584, float %10015, float %10008
  %10018 = select i1 %2584, float %10015, float %10009
  %10019 = select i1 %2584, float 1.000000e+00, float %10010
  %10020 = select i1 %2584, float %10016, float %10011
  %10021 = select i1 %2584, float 0.000000e+00, float %10012
  %10022 = select i1 %2584, float 0.000000e+00, float %10013
  %10023 = fmul fast float %10017, %9921
  %10024 = fmul fast float %10018, %9922
  %10025 = fmul fast float %10019, %9923
  %10026 = fadd fast float %10023, %10020
  %10027 = fadd fast float %10024, %10021
  %10028 = fadd fast float %10022, %10025
  %10029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %10030 = extractvalue %dx.types.CBufRet.i32 %10029, 3
  %10031 = and i32 %10030, 3
  %10032 = icmp ne i32 %10031, 0
  %10033 = and i32 %10030, 4
  %10034 = icmp ne i32 %10033, 0
  %10035 = and i1 %10032, %10034
  %10036 = and i1 %2584, %10035
  br i1 %10036, label %10037, label %10043

; <label>:10037                                   ; preds = %10007
  %10038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %10039 = extractvalue %dx.types.CBufRet.f32 %10038, 1
  %10040 = fadd fast float %10014, -1.000000e+00
  %10041 = fmul fast float %10039, %10040
  %10042 = fadd fast float %10041, 1.000000e+00
  br label %10043

; <label>:10043                                   ; preds = %10037, %10007
  %10044 = phi float [ %10042, %10037 ], [ %10014, %10007 ]
  %10045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10046 = extractvalue %dx.types.CBufRet.f32 %10045, 0
  br i1 %2584, label %10047, label %10061

; <label>:10047                                   ; preds = %10043
  %10048 = fadd fast float %10026, %10027
  %10049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %10050 = extractvalue %dx.types.CBufRet.f32 %10049, 3
  %10051 = extractvalue %dx.types.CBufRet.f32 %9095, 1
  %10052 = fsub fast float %9101, %9089
  %10053 = fadd fast float %10052, %9102
  %10054 = fsub fast float %10053, %10051
  %10055 = extractvalue %dx.types.CBufRet.f32 %9095, 2
  %10056 = fmul fast float %10054, %10055
  %10057 = call float @dx.op.unary.f32(i32 7, float %10056)  ; Saturate(value)
  %10058 = fsub fast float %10057, %10050
  %10059 = fmul fast float %10058, %10044
  %10060 = fadd fast float %10059, %10050
  br label %10064

; <label>:10061                                   ; preds = %10043
  %10062 = fmul fast float %10046, %10027
  %10063 = fmul fast float %10046, %10028
  br label %10064

; <label>:10064                                   ; preds = %10061, %10047
  %10065 = phi float [ %10048, %10047 ], [ %10026, %10061 ]
  %10066 = phi float [ %10060, %10047 ], [ %10062, %10061 ]
  %10067 = phi float [ 1.000000e+00, %10047 ], [ %10063, %10061 ]
  %10068 = fmul float %10046, %10065
  switch i32 %9016, label %10366 [
    i32 0, label %10381
    i32 1, label %10069
    i32 2, label %10070
    i32 3, label %10082
    i32 4, label %10091
    i32 5, label %10092
    i32 6, label %10093
    i32 12, label %10094
    i32 13, label %10095
    i32 14, label %10107
    i32 15, label %10119
    i32 16, label %10131
    i32 17, label %10132
    i32 63, label %10365
    i32 18, label %10133
    i32 25, label %10155
    i32 27, label %10156
    i32 28, label %10157
    i32 29, label %10158
    i32 31, label %10159
    i32 32, label %10182
    i32 33, label %10241
    i32 37, label %10259
    i32 38, label %10260
    i32 39, label %10269
    i32 40, label %10292
    i32 41, label %10296
    i32 52, label %10297
    i32 53, label %10298
    i32 54, label %10299
    i32 55, label %10300
    i32 56, label %10301
    i32 57, label %10303
    i32 58, label %10305
    i32 59, label %10343
    i32 60, label %10345
    i32 61, label %10347
    i32 64, label %10349
    i32 62, label %10364
  ]

; <label>:10069                                   ; preds = %10064
  br label %10366

; <label>:10070                                   ; preds = %10064
  %10071 = call float @dx.op.dot3.f32(i32 55, float %2413, float %2414, float %2415, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %10072 = call float @dx.op.unary.f32(i32 25, float %10071)  ; Rsqrt(value)
  %10073 = fmul fast float %2413, 5.000000e-01
  %10074 = fmul fast float %10073, %10072
  %10075 = fmul fast float %2414, 5.000000e-01
  %10076 = fmul fast float %10075, %10072
  %10077 = fmul fast float %2415, 5.000000e-01
  %10078 = fmul fast float %10077, %10072
  %10079 = fadd fast float %10074, 5.000000e-01
  %10080 = fadd fast float %10076, 5.000000e-01
  %10081 = fadd fast float %10078, 5.000000e-01
  br label %10366

; <label>:10082                                   ; preds = %10064
  %10083 = fcmp fast ole float %2542, 0x3FA4B5DCC0000000
  %10084 = fmul fast float %2542, 0x3FB3D07220000000
  %10085 = fadd fast float %2542, 0x3FAC28F5C0000000
  %10086 = fmul fast float %10085, 0x3FEE54EDE0000000
  %10087 = call float @dx.op.unary.f32(i32 23, float %10086)  ; Log(value)
  %10088 = fmul fast float %10087, 0x4003333340000000
  %10089 = call float @dx.op.unary.f32(i32 21, float %10088)  ; Exp(value)
  %10090 = select i1 %10083, float %10084, float %10089
  br label %10366

; <label>:10091                                   ; preds = %10064
  br label %10366

; <label>:10092                                   ; preds = %10064
  br label %10366

; <label>:10093                                   ; preds = %10064
  br label %10366

; <label>:10094                                   ; preds = %10064
  br label %10366

; <label>:10095                                   ; preds = %10064
  %10096 = and i32 %9085, 1023
  %10097 = uitofp i32 %10096 to float
  %10098 = lshr i32 %9085, 10
  %10099 = and i32 %10098, 1023
  %10100 = uitofp i32 %10099 to float
  %10101 = lshr i32 %9085, 20
  %10102 = and i32 %10101, 1023
  %10103 = uitofp i32 %10102 to float
  %10104 = fmul fast float %10097, 0x3F50040100000000
  %10105 = fmul fast float %10100, 0x3F50040100000000
  %10106 = fmul fast float %10103, 0x3F50040100000000
  br label %10366

; <label>:10107                                   ; preds = %10064
  %10108 = and i32 %9085, 1023
  %10109 = uitofp i32 %10108 to float
  %10110 = lshr i32 %9085, 10
  %10111 = and i32 %10110, 1023
  %10112 = uitofp i32 %10111 to float
  %10113 = lshr i32 %9085, 20
  %10114 = and i32 %10113, 1023
  %10115 = uitofp i32 %10114 to float
  %10116 = fmul fast float %10109, 0x3F50040100000000
  %10117 = fmul fast float %10112, 0x3F50040100000000
  %10118 = fmul fast float %10115, 0x3F50040100000000
  br label %10366

; <label>:10119                                   ; preds = %10064
  %10120 = and i32 %9085, 1023
  %10121 = uitofp i32 %10120 to float
  %10122 = lshr i32 %9085, 10
  %10123 = and i32 %10122, 1023
  %10124 = uitofp i32 %10123 to float
  %10125 = lshr i32 %9085, 20
  %10126 = and i32 %10125, 1023
  %10127 = uitofp i32 %10126 to float
  %10128 = fmul fast float %10121, 0x3F50040100000000
  %10129 = fmul fast float %10124, 0x3F50040100000000
  %10130 = fmul fast float %10127, 0x3F50040100000000
  br label %10366

; <label>:10131                                   ; preds = %10064
  br label %10366

; <label>:10132                                   ; preds = %10064
  br label %10366

; <label>:10133                                   ; preds = %10064
  %10134 = fcmp fast ogt float %2434, 0x3FB99999A0000000
  %10135 = fcmp fast ogt float %2435, 0x3FB99999A0000000
  %10136 = or i1 %10134, %10135
  %10137 = fcmp fast ogt float %2436, 0x3FB99999A0000000
  %10138 = or i1 %10136, %10137
  %10139 = fcmp fast olt float %2434, 0x3FB99999A0000000
  %10140 = fcmp fast olt float %2435, 0x3FB99999A0000000
  %10141 = or i1 %10139, %10140
  %10142 = fcmp fast olt float %2436, 0x3FB99999A0000000
  %10143 = or i1 %10141, %10142
  %10144 = fadd fast float %2434, %2425
  %10145 = fcmp fast ogt float %10144, 1.000000e+00
  %10146 = fadd fast float %2435, %2426
  %10147 = fcmp fast ogt float %10146, 1.000000e+00
  %10148 = or i1 %10145, %10147
  %10149 = fadd fast float %2436, %2427
  %10150 = fcmp fast ogt float %10149, 1.000000e+00
  %10151 = or i1 %10148, %10150
  %10152 = select i1 %10151, float 1.000000e+00, float 0.000000e+00
  %10153 = and i1 %10138, %10143
  %10154 = select i1 %10153, float 1.000000e+00, float 0.000000e+00
  br label %10366

; <label>:10155                                   ; preds = %10064
  br label %10366

; <label>:10156                                   ; preds = %10064
  br label %10366

; <label>:10157                                   ; preds = %10064
  br label %10366

; <label>:10158                                   ; preds = %10064
  br label %10366

; <label>:10159                                   ; preds = %10064
  %10160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10161 = extractvalue %dx.types.CBufRet.f32 %10160, 0
  %10162 = extractvalue %dx.types.CBufRet.f32 %10160, 2
  %10163 = extractvalue %dx.types.CBufRet.f32 %10160, 3
  %10164 = fcmp fast olt float %2542, %10161
  br i1 %10164, label %10165, label %10179

; <label>:10165                                   ; preds = %12033, %12031, %10179, %10159
  %10166 = phi i32 [ 0, %10159 ], [ 1, %10179 ], [ 2, %12031 ], [ 3, %12033 ]
  %10167 = mul i32 %10166, 3
  %10168 = add i32 0, %10167
  %10169 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10168
  %10170 = load float, float* %10169, align 4
  %10171 = mul i32 %10166, 3
  %10172 = add i32 1, %10171
  %10173 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10172
  %10174 = load float, float* %10173, align 4
  %10175 = mul i32 %10166, 3
  %10176 = add i32 2, %10175
  %10177 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10176
  %10178 = load float, float* %10177, align 4
  br label %10366

; <label>:10179                                   ; preds = %10159
  %10180 = extractvalue %dx.types.CBufRet.f32 %10160, 1
  %10181 = fcmp fast olt float %2542, %10180
  br i1 %10181, label %10165, label %12031

; <label>:10182                                   ; preds = %10064
  %10183 = fcmp fast ole float %2425, 0x3F69A5C380000000
  %10184 = fcmp fast ole float %2426, 0x3F69A5C380000000
  %10185 = fcmp fast ole float %2427, 0x3F69A5C380000000
  %10186 = fmul fast float %2425, 0x4029D70A40000000
  %10187 = fmul fast float %2426, 0x4029D70A40000000
  %10188 = fmul fast float %2427, 0x4029D70A40000000
  %10189 = call float @dx.op.unary.f32(i32 23, float %2425)  ; Log(value)
  %10190 = call float @dx.op.unary.f32(i32 23, float %2426)  ; Log(value)
  %10191 = call float @dx.op.unary.f32(i32 23, float %2427)  ; Log(value)
  %10192 = fmul fast float %10189, 0x3FDAAAAAA0000000
  %10193 = fmul fast float %10190, 0x3FDAAAAAA0000000
  %10194 = fmul fast float %10191, 0x3FDAAAAAA0000000
  %10195 = call float @dx.op.unary.f32(i32 21, float %10192)  ; Exp(value)
  %10196 = call float @dx.op.unary.f32(i32 21, float %10193)  ; Exp(value)
  %10197 = call float @dx.op.unary.f32(i32 21, float %10194)  ; Exp(value)
  %10198 = fmul fast float %10195, 0x3FF0E147A0000000
  %10199 = fmul fast float %10196, 0x3FF0E147A0000000
  %10200 = fmul fast float %10197, 0x3FF0E147A0000000
  %10201 = fadd fast float %10198, 0xBFAC28F5C0000000
  %10202 = fadd fast float %10199, 0xBFAC28F5C0000000
  %10203 = fadd fast float %10200, 0xBFAC28F5C0000000
  %10204 = select i1 %10183, float %10186, float %10201
  %10205 = select i1 %10184, float %10187, float %10202
  %10206 = select i1 %10185, float %10188, float %10203
  %10207 = call float @dx.op.dot3.f32(i32 55, float %10204, float %10205, float %10206, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %10208 = fcmp fast olt float %10207, 0x3FA0101020000000
  br i1 %10208, label %10217, label %10209

; <label>:10209                                   ; preds = %10182
  %10210 = fcmp fast ogt float %10207, 0x3FEEFEFF00000000
  br i1 %10210, label %10217, label %10211

; <label>:10211                                   ; preds = %10209
  %10212 = fcmp fast ogt float %10207, 0x3FEF5F5F60000000
  br i1 %10212, label %10217, label %10213

; <label>:10213                                   ; preds = %10211
  %10214 = fadd fast float %10207, %10207
  %10215 = fcmp fast ogt float %10214, 2.550000e+02
  br i1 %10215, label %10216, label %10217

; <label>:10216                                   ; preds = %10213
  br label %10217

; <label>:10217                                   ; preds = %10216, %10213, %10211, %10209, %10182
  %10218 = phi float [ 1.000000e+00, %10216 ], [ %10068, %10213 ], [ 1.000000e+00, %10182 ], [ 0x3FBD1D1D20000000, %10209 ], [ 0.000000e+00, %10211 ]
  %10219 = phi float [ 0.000000e+00, %10216 ], [ %10066, %10213 ], [ 0x3FE6666660000000, %10182 ], [ 1.000000e+00, %10209 ], [ 0.000000e+00, %10211 ]
  %10220 = phi float [ 1.000000e+00, %10216 ], [ %10067, %10213 ], [ 0.000000e+00, %10182 ], [ 0x3FDD5D5D60000000, %10209 ], [ 1.000000e+00, %10211 ]
  %10221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %10222 = extractvalue %dx.types.CBufRet.f32 %10221, 3
  %10223 = fmul fast float %10222, 8.000000e+00
  %10224 = fmul fast float %101, 5.000000e+02
  %10225 = fmul fast float %10224, %8372
  %10226 = fsub fast float %10225, %10223
  %10227 = call float @dx.op.unary.f32(i32 13, float %10226)  ; Sin(value)
  %10228 = fmul fast float %10227, %10227
  %10229 = fmul fast float %10228, 2.000000e+00
  %10230 = fadd fast float %10229, -1.000000e+00
  %10231 = call float @dx.op.unary.f32(i32 7, float %10230)  ; Saturate(value)
  %10232 = fsub fast float %10218, %10068
  %10233 = fsub fast float %10219, %10066
  %10234 = fsub fast float %10220, %10067
  %10235 = fmul fast float %10231, %10232
  %10236 = fmul fast float %10231, %10233
  %10237 = fmul fast float %10231, %10234
  %10238 = fadd fast float %10235, %10068
  %10239 = fadd fast float %10236, %10066
  %10240 = fadd fast float %10237, %10067
  br label %10366

; <label>:10241                                   ; preds = %10064
  %10242 = fcmp fast olt float %89, 1.280000e+02
  br i1 %10242, label %10243, label %10257

; <label>:10243                                   ; preds = %12049, %12047, %12045, %12043, %12041, %12039, %12037, %12035, %10257, %10241
  %10244 = phi i32 [ 0, %10241 ], [ 1, %10257 ], [ 2, %12035 ], [ 3, %12037 ], [ 4, %12039 ], [ 5, %12041 ], [ 6, %12043 ], [ 7, %12045 ], [ 8, %12047 ], [ 9, %12049 ]
  %10245 = mul i32 %10244, 3
  %10246 = add i32 0, %10245
  %10247 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10246
  %10248 = load float, float* %10247, align 4
  %10249 = mul i32 %10244, 3
  %10250 = add i32 1, %10249
  %10251 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10250
  %10252 = load float, float* %10251, align 4
  %10253 = mul i32 %10244, 3
  %10254 = add i32 2, %10253
  %10255 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10254
  %10256 = load float, float* %10255, align 4
  br label %10366

; <label>:10257                                   ; preds = %10241
  %10258 = fcmp fast olt float %89, 2.560000e+02
  br i1 %10258, label %10243, label %12035

; <label>:10259                                   ; preds = %10064
  br label %10366

; <label>:10260                                   ; preds = %10064
  %10261 = bitcast i32 %9085 to float
  %10262 = fcmp fast ogt float %10261, 0.000000e+00
  %10263 = select i1 %10262, float 0.000000e+00, float 1.000000e+00
  %10264 = fcmp fast olt float %10261, 1.000000e+00
  %10265 = select i1 %10264, float 1.000000e+00, float 0.000000e+00
  %10266 = select i1 %10264, float %10263, float 0.000000e+00
  %10267 = fmul fast float %10265, %2542
  %10268 = fmul fast float %10266, %2542
  br label %10366

; <label>:10269                                   ; preds = %10064
  %10270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %10271 = extractvalue %dx.types.CBufRet.f32 %10270, 0
  %10272 = extractvalue %dx.types.CBufRet.f32 %10270, 2
  %10273 = extractvalue %dx.types.CBufRet.f32 %10270, 3
  %10274 = fcmp fast olt float %9106, %10271
  br i1 %10274, label %10275, label %10289

; <label>:10275                                   ; preds = %12053, %12051, %10289, %10269
  %10276 = phi i32 [ 0, %10269 ], [ 1, %10289 ], [ 2, %12051 ], [ 3, %12053 ]
  %10277 = mul i32 %10276, 3
  %10278 = add i32 0, %10277
  %10279 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10278
  %10280 = load float, float* %10279, align 4
  %10281 = mul i32 %10276, 3
  %10282 = add i32 1, %10281
  %10283 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10282
  %10284 = load float, float* %10283, align 4
  %10285 = mul i32 %10276, 3
  %10286 = add i32 2, %10285
  %10287 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %10286
  %10288 = load float, float* %10287, align 4
  br label %10366

; <label>:10289                                   ; preds = %10269
  %10290 = extractvalue %dx.types.CBufRet.f32 %10270, 1
  %10291 = fcmp fast olt float %9106, %10290
  br i1 %10291, label %10275, label %12051

; <label>:10292                                   ; preds = %10064
  %10293 = fadd fast float %9106, -5.000000e-01
  %10294 = fmul fast float %10293, 2.000000e+00
  %10295 = call float @dx.op.unary.f32(i32 7, float %10294)  ; Saturate(value)
  br label %10366

; <label>:10296                                   ; preds = %10064
  br label %10366

; <label>:10297                                   ; preds = %10064
  br label %10366

; <label>:10298                                   ; preds = %10064
  br label %10366

; <label>:10299                                   ; preds = %10064
  br label %10366

; <label>:10300                                   ; preds = %10064
  br label %10366

; <label>:10301                                   ; preds = %10064
  %10302 = bitcast i32 %9085 to float
  br label %10366

; <label>:10303                                   ; preds = %10064
  %10304 = bitcast i32 %9085 to float
  br label %10366

; <label>:10305                                   ; preds = %10064
  %10306 = and i32 %9085, 65535
  %10307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10306)  ; LegacyF16ToF32(value)
  %10308 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10309 = fptosi float %10308 to i32
  %10310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %10311 = extractvalue %dx.types.CBufRet.f32 %10310, 0
  %10312 = extractvalue %dx.types.CBufRet.f32 %10310, 1
  %10313 = extractvalue %dx.types.CBufRet.f32 %10310, 2
  %10314 = fadd fast float %10311, %155
  %10315 = fadd fast float %10312, %156
  %10316 = fadd fast float %10313, %157
  %10317 = fptosi float %10314 to i32
  %10318 = fptosi float %10315 to i32
  %10319 = fptosi float %10316 to i32
  %10320 = xor i32 %10317, %10318
  %10321 = lshr i32 %10320, 1
  %10322 = and i32 %10321, 1
  %10323 = lshr i32 %10319, 1
  %10324 = and i32 %10323, 1
  %10325 = xor i32 %10324, 1
  %10326 = icmp ne i32 %10322, %10325
  switch i32 %10309, label %10366 [
    i32 -1, label %10327
    i32 -2, label %10328
    i32 -3, label %10330
    i32 -4, label %10332
    i32 -5, label %10334
    i32 -6, label %10335
    i32 -7, label %10336
  ]

; <label>:10327                                   ; preds = %10305
  br label %10366

; <label>:10328                                   ; preds = %10305
  %10329 = select i1 %10326, float 1.000000e+00, float 0.000000e+00
  br label %10366

; <label>:10330                                   ; preds = %10305
  %10331 = select i1 %10326, float 1.000000e+00, float 0.000000e+00
  br label %10366

; <label>:10332                                   ; preds = %10305
  %10333 = select i1 %10326, float 1.000000e+00, float 0.000000e+00
  br label %10366

; <label>:10334                                   ; preds = %10305
  br label %10366

; <label>:10335                                   ; preds = %10305
  br label %10366

; <label>:10336                                   ; preds = %10305
  %10337 = lshr i32 %9085, 16
  %10338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10337)  ; LegacyF16ToF32(value)
  %10339 = fmul fast float %10338, 0x3FD5555560000000
  %10340 = fsub fast float 1.000000e+00, %10339
  %10341 = fmul fast float %10339, %10307
  %10342 = fmul fast float %10340, %10307
  br label %10366

; <label>:10343                                   ; preds = %10064
  %10344 = bitcast i32 %9085 to float
  br label %10366

; <label>:10345                                   ; preds = %10064
  %10346 = bitcast i32 %9085 to float
  br label %10366

; <label>:10347                                   ; preds = %10064
  %10348 = bitcast i32 %9085 to float
  br label %10366

; <label>:10349                                   ; preds = %10064
  %10350 = and i32 %9085, 1023
  %10351 = uitofp i32 %10350 to float
  %10352 = lshr i32 %9085, 10
  %10353 = and i32 %10352, 1023
  %10354 = uitofp i32 %10353 to float
  %10355 = lshr i32 %9085, 20
  %10356 = and i32 %10355, 1023
  %10357 = uitofp i32 %10356 to float
  %10358 = fmul fast float %10351, 0x3F60040100000000
  %10359 = fmul fast float %10354, 0x3F60040100000000
  %10360 = fmul fast float %10357, 0x3F60040100000000
  %10361 = fadd fast float %10358, -1.000000e+00
  %10362 = fadd fast float %10359, -1.000000e+00
  %10363 = fadd fast float %10360, -1.000000e+00
  br label %10366

; <label>:10364                                   ; preds = %10064
  br label %10366

; <label>:10365                                   ; preds = %10064
  br label %10366

; <label>:10366                                   ; preds = %12053, %12049, %12033, %10365, %10364, %10349, %10347, %10345, %10343, %10336, %10335, %10334, %10332, %10330, %10328, %10327, %10305, %10303, %10301, %10300, %10299, %10298, %10297, %10296, %10292, %10275, %10260, %10259, %10243, %10217, %10165, %10158, %10157, %10156, %10155, %10133, %10132, %10131, %10119, %10107, %10095, %10094, %10093, %10092, %10091, %10082, %10070, %10069, %10064
  %10367 = phi float [ %10068, %10064 ], [ 0.000000e+00, %10364 ], [ %10361, %10349 ], [ %10348, %10347 ], [ %10346, %10345 ], [ %10344, %10343 ], [ %10068, %10305 ], [ 0.000000e+00, %10336 ], [ %10307, %10335 ], [ %10307, %10334 ], [ 0.000000e+00, %10332 ], [ %10331, %10330 ], [ %10329, %10328 ], [ %10307, %10327 ], [ %10304, %10303 ], [ %10302, %10301 ], [ 0.000000e+00, %10300 ], [ 0.000000e+00, %10299 ], [ 0.000000e+00, %10298 ], [ %155, %10296 ], [ %10295, %10292 ], [ %10267, %10260 ], [ 0.000000e+00, %10259 ], [ %10238, %10217 ], [ 0.000000e+00, %10158 ], [ 0.000000e+00, %10157 ], [ 0.000000e+00, %10156 ], [ 1.000000e+00, %10155 ], [ 0.000000e+00, %10365 ], [ 1.000000e+00, %10132 ], [ 5.000000e-01, %10131 ], [ %10128, %10119 ], [ %10116, %10107 ], [ %10104, %10095 ], [ %2545, %10094 ], [ %2543, %10093 ], [ %2434, %10092 ], [ %2371, %10091 ], [ %10090, %10082 ], [ %10079, %10070 ], [ %2425, %10069 ], [ %10170, %10165 ], [ %10248, %10243 ], [ %10280, %10275 ], [ 0.000000e+00, %10297 ], [ 1.000000e+00, %12033 ], [ 1.000000e+00, %12049 ], [ 1.000000e+00, %12053 ], [ %10152, %10133 ]
  %10368 = phi float [ %10066, %10064 ], [ 0.000000e+00, %10364 ], [ %10362, %10349 ], [ %10348, %10347 ], [ %10346, %10345 ], [ %10344, %10343 ], [ %10066, %10305 ], [ %10341, %10336 ], [ %10307, %10335 ], [ %10307, %10334 ], [ 0.000000e+00, %10332 ], [ 0.000000e+00, %10330 ], [ 0.000000e+00, %10328 ], [ %10307, %10327 ], [ %10304, %10303 ], [ %10302, %10301 ], [ 0.000000e+00, %10300 ], [ 0.000000e+00, %10299 ], [ 0.000000e+00, %10298 ], [ %156, %10296 ], [ %10295, %10292 ], [ %2542, %10260 ], [ 0.000000e+00, %10259 ], [ %10239, %10217 ], [ 1.000000e+00, %10158 ], [ 1.000000e+00, %10157 ], [ 1.000000e+00, %10156 ], [ 0x3FE6666660000000, %10155 ], [ 0.000000e+00, %10365 ], [ 1.000000e+00, %10132 ], [ 5.000000e-01, %10131 ], [ %10129, %10119 ], [ %10117, %10107 ], [ %10105, %10095 ], [ %2545, %10094 ], [ %2543, %10093 ], [ %2435, %10092 ], [ %2372, %10091 ], [ %10090, %10082 ], [ %10080, %10070 ], [ %2426, %10069 ], [ %10174, %10165 ], [ %10252, %10243 ], [ %10284, %10275 ], [ 0.000000e+00, %10297 ], [ 0.000000e+00, %12033 ], [ 0.000000e+00, %12049 ], [ 0.000000e+00, %12053 ], [ 0.000000e+00, %10133 ]
  %10369 = phi float [ %10067, %10064 ], [ 0.000000e+00, %10364 ], [ %10363, %10349 ], [ %10348, %10347 ], [ %10346, %10345 ], [ %10344, %10343 ], [ %10067, %10305 ], [ %10342, %10336 ], [ %10307, %10335 ], [ 0.000000e+00, %10334 ], [ %10333, %10332 ], [ 0.000000e+00, %10330 ], [ %10329, %10328 ], [ %10307, %10327 ], [ %10304, %10303 ], [ %10302, %10301 ], [ 0.000000e+00, %10300 ], [ 0.000000e+00, %10299 ], [ 0.000000e+00, %10298 ], [ %157, %10296 ], [ %10295, %10292 ], [ %10268, %10260 ], [ 0.000000e+00, %10259 ], [ %10240, %10217 ], [ 0.000000e+00, %10158 ], [ 0.000000e+00, %10157 ], [ 0.000000e+00, %10156 ], [ 0.000000e+00, %10155 ], [ 0.000000e+00, %10365 ], [ 1.000000e+00, %10132 ], [ 5.000000e-01, %10131 ], [ %10130, %10119 ], [ %10118, %10107 ], [ %10106, %10095 ], [ %2545, %10094 ], [ %2543, %10093 ], [ %2436, %10092 ], [ %2373, %10091 ], [ %10090, %10082 ], [ %10081, %10070 ], [ %2427, %10069 ], [ %10178, %10165 ], [ %10256, %10243 ], [ %10288, %10275 ], [ 1.000000e+00, %10297 ], [ 0.000000e+00, %12033 ], [ 0.000000e+00, %12049 ], [ 0.000000e+00, %12053 ], [ %10154, %10133 ]
  %10370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10371 = extractvalue %dx.types.CBufRet.f32 %10370, 3
  %10372 = fsub fast float %10367, %10068
  %10373 = fsub fast float %10368, %10066
  %10374 = fsub fast float %10369, %10067
  %10375 = fmul fast float %10371, %10372
  %10376 = fmul fast float %10371, %10373
  %10377 = fmul fast float %10371, %10374
  %10378 = fadd fast float %10375, %10068
  %10379 = fadd fast float %10376, %10066
  %10380 = fadd fast float %10377, %10067
  br label %10381

; <label>:10381                                   ; preds = %10366, %10064
  %10382 = phi float [ %10378, %10366 ], [ %10068, %10064 ]
  %10383 = phi float [ %10379, %10366 ], [ %10066, %10064 ]
  %10384 = phi float [ %10380, %10366 ], [ %10067, %10064 ]
  %10385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %10386 = extractvalue %dx.types.CBufRet.f32 %10385, 0
  %10387 = bitcast float %10386 to i32
  %10388 = lshr i32 %10387, 8
  %10389 = and i32 %10388, 255
  %10390 = uitofp i32 %10389 to float
  %10391 = fptoui float %10390 to i32
  switch i32 %10391, label %10628 [
    i32 1, label %10392
    i32 2, label %10398
    i32 3, label %10404
    i32 4, label %10410
    i32 5, label %10416
    i32 6, label %10422
    i32 7, label %10428
    i32 8, label %10434
    i32 9, label %10440
    i32 10, label %10442
    i32 11, label %10463
    i32 12, label %10484
    i32 13, label %10496
    i32 14, label %10511
    i32 15, label %10516
    i32 16, label %10518
    i32 17, label %10520
    i32 18, label %10522
    i32 19, label %10524
    i32 20, label %10535
    i32 21, label %10546
    i32 22, label %10558
    i32 23, label %10592
    i32 24, label %10607
    i32 25, label %10622
    i32 26, label %10624
    i32 27, label %10626
  ]

; <label>:10392                                   ; preds = %10381
  %10393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10394 = extractvalue %dx.types.CBufRet.f32 %10393, 0
  %10395 = fmul fast float %10394, %8358
  %10396 = fmul fast float %10394, %8359
  %10397 = fmul fast float %10394, %8360
  br label %10628

; <label>:10398                                   ; preds = %10381
  %10399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10400 = extractvalue %dx.types.CBufRet.f32 %10399, 0
  %10401 = fmul fast float %10400, %8355
  %10402 = fmul fast float %10400, %8356
  %10403 = fmul fast float %10400, %8357
  br label %10628

; <label>:10404                                   ; preds = %10381
  %10405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10406 = extractvalue %dx.types.CBufRet.f32 %10405, 0
  %10407 = fmul fast float %10406, %2371
  %10408 = fmul fast float %10406, %2372
  %10409 = fmul fast float %10406, %2373
  br label %10628

; <label>:10410                                   ; preds = %10381
  %10411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10412 = extractvalue %dx.types.CBufRet.f32 %10411, 0
  %10413 = fmul fast float %10412, %8352
  %10414 = fmul fast float %10412, %8353
  %10415 = fmul fast float %10412, %8354
  br label %10628

; <label>:10416                                   ; preds = %10381
  %10417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10418 = extractvalue %dx.types.CBufRet.f32 %10417, 0
  %10419 = fmul fast float %10418, %8349
  %10420 = fmul fast float %10418, %8350
  %10421 = fmul fast float %10418, %8351
  br label %10628

; <label>:10422                                   ; preds = %10381
  %10423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10424 = extractvalue %dx.types.CBufRet.f32 %10423, 0
  %10425 = fmul fast float %10424, %5488
  %10426 = fmul fast float %10424, %5489
  %10427 = fmul fast float %10424, %5490
  br label %10628

; <label>:10428                                   ; preds = %10381
  %10429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10430 = extractvalue %dx.types.CBufRet.f32 %10429, 0
  %10431 = fmul fast float %10430, %5488
  %10432 = fmul fast float %10430, %5489
  %10433 = fmul fast float %10430, %5490
  br label %10628

; <label>:10434                                   ; preds = %10381
  %10435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10436 = extractvalue %dx.types.CBufRet.f32 %10435, 0
  %10437 = fmul fast float %5491, %10436
  %10438 = fmul fast float %5492, %10436
  %10439 = fmul fast float %5493, %10436
  br label %10628

; <label>:10440                                   ; preds = %10381
  %10441 = bitcast i32 %9085 to float
  br label %10628

; <label>:10442                                   ; preds = %10381
  %10443 = and i32 %9085, 1023
  %10444 = uitofp i32 %10443 to float
  %10445 = lshr i32 %9085, 10
  %10446 = and i32 %10445, 1023
  %10447 = uitofp i32 %10446 to float
  %10448 = lshr i32 %9085, 20
  %10449 = and i32 %10448, 1023
  %10450 = uitofp i32 %10449 to float
  %10451 = fmul fast float %10444, 0x3F60040100000000
  %10452 = fmul fast float %10447, 0x3F60040100000000
  %10453 = fmul fast float %10450, 0x3F60040100000000
  %10454 = fadd fast float %10451, -1.000000e+00
  %10455 = fadd fast float %10452, -1.000000e+00
  %10456 = fadd fast float %10453, -1.000000e+00
  %10457 = fcmp fast ogt float %10454, 0.000000e+00
  %10458 = select i1 %10457, float 1.000000e+00, float 0.000000e+00
  %10459 = fcmp fast ogt float %10455, 0.000000e+00
  %10460 = select i1 %10459, float 1.000000e+00, float 0.000000e+00
  %10461 = fcmp fast ogt float %10456, 0.000000e+00
  %10462 = select i1 %10461, float 1.000000e+00, float 0.000000e+00
  br label %10628

; <label>:10463                                   ; preds = %10381
  %10464 = and i32 %9085, 1023
  %10465 = uitofp i32 %10464 to float
  %10466 = lshr i32 %9085, 10
  %10467 = and i32 %10466, 1023
  %10468 = uitofp i32 %10467 to float
  %10469 = lshr i32 %9085, 20
  %10470 = and i32 %10469, 1023
  %10471 = uitofp i32 %10470 to float
  %10472 = fmul fast float %10465, 0x3F60040100000000
  %10473 = fmul fast float %10468, 0x3F60040100000000
  %10474 = fmul fast float %10471, 0x3F60040100000000
  %10475 = fadd fast float %10472, -1.000000e+00
  %10476 = fadd fast float %10473, -1.000000e+00
  %10477 = fadd fast float %10474, -1.000000e+00
  %10478 = fmul fast float %10477, %10476
  %10479 = fsub fast float %10477, %10478
  %10480 = fmul fast float %10476, %10475
  %10481 = fmul fast float %10479, %10475
  %10482 = fsub fast float %10476, %10480
  %10483 = fsub fast float %10479, %10481
  br label %10628

; <label>:10484                                   ; preds = %10381
  %10485 = and i32 %9085, 255
  %10486 = uitofp i32 %10485 to float
  %10487 = fmul fast float %10486, 0x3F70101020000000
  %10488 = lshr i32 %9085, 8
  %10489 = and i32 %10488, 255
  %10490 = uitofp i32 %10489 to float
  %10491 = fmul fast float %10490, 0x3F70101020000000
  %10492 = lshr i32 %9085, 16
  %10493 = and i32 %10492, 255
  %10494 = uitofp i32 %10493 to float
  %10495 = fmul fast float %10494, 0x3F70101020000000
  br label %10628

; <label>:10496                                   ; preds = %10381
  %10497 = and i32 %9085, 1023
  %10498 = uitofp i32 %10497 to float
  %10499 = lshr i32 %9085, 10
  %10500 = and i32 %10499, 1023
  %10501 = uitofp i32 %10500 to float
  %10502 = lshr i32 %9085, 20
  %10503 = and i32 %10502, 1023
  %10504 = uitofp i32 %10503 to float
  %10505 = fmul fast float %10498, 0x3F60040100000000
  %10506 = fmul fast float %10501, 0x3F60040100000000
  %10507 = fmul fast float %10504, 0x3F60040100000000
  %10508 = fadd fast float %10505, -1.000000e+00
  %10509 = fadd fast float %10506, -1.000000e+00
  %10510 = fadd fast float %10507, -1.000000e+00
  br label %10628

; <label>:10511                                   ; preds = %10381
  %10512 = icmp ne i32 %9085, 0
  %10513 = select i1 %10512, float 1.000000e+00, float %10382
  %10514 = select i1 %10512, float 0.000000e+00, float %10383
  %10515 = select i1 %10512, float 0.000000e+00, float %10384
  br label %10628

; <label>:10516                                   ; preds = %10381
  %10517 = bitcast i32 %9085 to float
  br label %10628

; <label>:10518                                   ; preds = %10381
  %10519 = bitcast i32 %9085 to float
  br label %10628

; <label>:10520                                   ; preds = %10381
  %10521 = bitcast i32 %9085 to float
  br label %10628

; <label>:10522                                   ; preds = %10381
  %10523 = bitcast i32 %9085 to float
  br label %10628

; <label>:10524                                   ; preds = %10381
  %10525 = and i32 %9085, 65535
  %10526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10525)  ; LegacyF16ToF32(value)
  %10527 = lshr i32 %9085, 16
  %10528 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10527)  ; LegacyF16ToF32(value)
  %10529 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10531 = extractvalue %dx.types.CBufRet.f32 %10530, 0
  %10532 = fmul fast float %10531, %10526
  %10533 = fmul fast float %10531, %10528
  %10534 = fmul fast float %10531, %10529
  br label %10628

; <label>:10535                                   ; preds = %10381
  %10536 = and i32 %9085, 65535
  %10537 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10536)  ; LegacyF16ToF32(value)
  %10538 = lshr i32 %9085, 16
  %10539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %10538)  ; LegacyF16ToF32(value)
  %10540 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %10541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %10542 = extractvalue %dx.types.CBufRet.f32 %10541, 0
  %10543 = fmul fast float %10542, %10537
  %10544 = fmul fast float %10542, %10539
  %10545 = fmul fast float %10542, %10540
  br label %10628

; <label>:10546                                   ; preds = %10381
  %10547 = and i32 %9085, 1023
  %10548 = uitofp i32 %10547 to float
  %10549 = lshr i32 %9085, 10
  %10550 = and i32 %10549, 1023
  %10551 = uitofp i32 %10550 to float
  %10552 = lshr i32 %9085, 20
  %10553 = and i32 %10552, 1023
  %10554 = uitofp i32 %10553 to float
  %10555 = fmul fast float %10548, 0x3F50040100000000
  %10556 = fmul fast float %10551, 0x3F50040100000000
  %10557 = fmul fast float %10554, 0x3F50040100000000
  br label %10628

; <label>:10558                                   ; preds = %10381
  %10559 = and i32 %9085, 1023
  %10560 = uitofp i32 %10559 to float
  %10561 = lshr i32 %9085, 10
  %10562 = and i32 %10561, 1023
  %10563 = uitofp i32 %10562 to float
  %10564 = lshr i32 %9085, 20
  %10565 = and i32 %10564, 1023
  %10566 = uitofp i32 %10565 to float
  %10567 = fmul fast float %10560, 0x3F60040100000000
  %10568 = fmul fast float %10563, 0x3F60040100000000
  %10569 = fmul fast float %10566, 0x3F60040100000000
  %10570 = fadd fast float %10567, -1.000000e+00
  %10571 = fadd fast float %10568, -1.000000e+00
  %10572 = fadd fast float %10569, -1.000000e+00
  %10573 = call float @dx.op.binary.f32(i32 35, float %10571, float %10572)  ; FMax(a,b)
  %10574 = call float @dx.op.binary.f32(i32 35, float %10570, float %10573)  ; FMax(a,b)
  %10575 = fmul fast float %10574, 2.000000e+00
  %10576 = call float @dx.op.unary.f32(i32 7, float %10575)  ; Saturate(value)
  %10577 = fmul fast float %10560, 0x3F94050140000000
  %10578 = fadd fast float %10577, -1.000000e+01
  %10579 = fmul fast float %10563, 0x3F94050140000000
  %10580 = fadd fast float %10579, -1.000000e+01
  %10581 = fmul fast float %10566, 0x3F94050140000000
  %10582 = fadd fast float %10581, -1.000000e+01
  %10583 = fsub fast float %10578, %10382
  %10584 = fsub fast float %10580, %10383
  %10585 = fsub fast float %10582, %10384
  %10586 = fmul fast float %10576, %10583
  %10587 = fmul fast float %10576, %10584
  %10588 = fmul fast float %10576, %10585
  %10589 = fadd fast float %10586, %10382
  %10590 = fadd fast float %10587, %10383
  %10591 = fadd fast float %10588, %10384
  br label %10628

; <label>:10592                                   ; preds = %10381
  %10593 = and i32 %9085, 1023
  %10594 = uitofp i32 %10593 to float
  %10595 = lshr i32 %9085, 10
  %10596 = and i32 %10595, 1023
  %10597 = uitofp i32 %10596 to float
  %10598 = lshr i32 %9085, 20
  %10599 = and i32 %10598, 1023
  %10600 = uitofp i32 %10599 to float
  %10601 = fmul fast float %10594, 0x3F60040100000000
  %10602 = fmul fast float %10597, 0x3F60040100000000
  %10603 = fmul fast float %10600, 0x3F60040100000000
  %10604 = fadd fast float %10601, -1.000000e+00
  %10605 = fadd fast float %10602, -1.000000e+00
  %10606 = fadd fast float %10603, -1.000000e+00
  br label %10628

; <label>:10607                                   ; preds = %10381
  %10608 = and i32 %9085, 1023
  %10609 = uitofp i32 %10608 to float
  %10610 = lshr i32 %9085, 10
  %10611 = and i32 %10610, 1023
  %10612 = uitofp i32 %10611 to float
  %10613 = lshr i32 %9085, 20
  %10614 = and i32 %10613, 1023
  %10615 = uitofp i32 %10614 to float
  %10616 = fmul fast float %10609, 0x3F60040100000000
  %10617 = fmul fast float %10612, 0x3F60040100000000
  %10618 = fmul fast float %10615, 0x3F60040100000000
  %10619 = fadd fast float %10616, -1.000000e+00
  %10620 = fadd fast float %10617, -1.000000e+00
  %10621 = fadd fast float %10618, -1.000000e+00
  br label %10628

; <label>:10622                                   ; preds = %10381
  %10623 = bitcast i32 %9085 to float
  br label %10628

; <label>:10624                                   ; preds = %10381
  %10625 = bitcast i32 %9085 to float
  br label %10628

; <label>:10626                                   ; preds = %10381
  %10627 = bitcast i32 %9085 to float
  br label %10628

; <label>:10628                                   ; preds = %10626, %10624, %10622, %10607, %10592, %10558, %10546, %10535, %10524, %10522, %10520, %10518, %10516, %10511, %10496, %10484, %10463, %10442, %10440, %10434, %10428, %10422, %10416, %10410, %10404, %10398, %10392, %10381
  %10629 = phi float [ %10382, %10381 ], [ %10627, %10626 ], [ %10625, %10624 ], [ %10623, %10622 ], [ %10619, %10607 ], [ %10604, %10592 ], [ %10589, %10558 ], [ %10555, %10546 ], [ %10543, %10535 ], [ %10532, %10524 ], [ %10523, %10522 ], [ %10521, %10520 ], [ %10519, %10518 ], [ %10517, %10516 ], [ %10508, %10496 ], [ %10487, %10484 ], [ %10475, %10463 ], [ %10458, %10442 ], [ %10441, %10440 ], [ %10437, %10434 ], [ %10431, %10428 ], [ %10425, %10422 ], [ %10419, %10416 ], [ %10413, %10410 ], [ %10407, %10404 ], [ %10401, %10398 ], [ %10395, %10392 ], [ %10513, %10511 ]
  %10630 = phi float [ %10383, %10381 ], [ %10627, %10626 ], [ %10625, %10624 ], [ %10623, %10622 ], [ %10620, %10607 ], [ %10605, %10592 ], [ %10590, %10558 ], [ %10556, %10546 ], [ %10544, %10535 ], [ %10533, %10524 ], [ %10523, %10522 ], [ %10521, %10520 ], [ %10519, %10518 ], [ %10517, %10516 ], [ %10509, %10496 ], [ %10491, %10484 ], [ %10482, %10463 ], [ %10460, %10442 ], [ %10441, %10440 ], [ %10438, %10434 ], [ %10432, %10428 ], [ %10426, %10422 ], [ %10420, %10416 ], [ %10414, %10410 ], [ %10408, %10404 ], [ %10402, %10398 ], [ %10396, %10392 ], [ %10514, %10511 ]
  %10631 = phi float [ %10384, %10381 ], [ %10627, %10626 ], [ %10625, %10624 ], [ %10623, %10622 ], [ %10621, %10607 ], [ %10606, %10592 ], [ %10591, %10558 ], [ %10557, %10546 ], [ %10545, %10535 ], [ %10534, %10524 ], [ %10523, %10522 ], [ %10521, %10520 ], [ %10519, %10518 ], [ %10517, %10516 ], [ %10510, %10496 ], [ %10495, %10484 ], [ %10483, %10463 ], [ %10462, %10442 ], [ %10441, %10440 ], [ %10439, %10434 ], [ %10433, %10428 ], [ %10427, %10422 ], [ %10421, %10416 ], [ %10415, %10410 ], [ %10409, %10404 ], [ %10403, %10398 ], [ %10397, %10392 ], [ %10515, %10511 ]
  %10632 = extractvalue %dx.types.CBufRet.f32 %10385, 3
  %10633 = fsub fast float %10629, %10382
  %10634 = fsub fast float %10630, %10383
  %10635 = fsub fast float %10631, %10384
  %10636 = fmul fast float %10632, %10633
  %10637 = fmul fast float %10632, %10634
  %10638 = fmul fast float %10632, %10635
  %10639 = fadd fast float %10636, %10382
  %10640 = fadd fast float %10637, %10383
  %10641 = fadd fast float %10638, %10384
  %10642 = lshr i32 %10387, 16
  %10643 = and i32 %10642, 255
  %10644 = uitofp i32 %10643 to float
  %10645 = fptoui float %10644 to i32
  switch i32 %10645, label %10692 [
    i32 16, label %10677
    i32 12, label %10676
    i32 3, label %10646
    i32 4, label %10647
    i32 15, label %10648
    i32 5, label %10657
    i32 6, label %10666
    i32 7, label %10675
    i32 11, label %10676
  ]

; <label>:10646                                   ; preds = %10628
  br label %10692

; <label>:10647                                   ; preds = %10628
  br label %10692

; <label>:10648                                   ; preds = %10628
  %10649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %10650 = extractvalue %dx.types.CBufRet.f32 %10649, 0
  %10651 = fadd fast float %10650, %10639
  %10652 = fadd fast float %10650, %10640
  %10653 = fadd fast float %10650, %10641
  %10654 = call float @dx.op.unary.f32(i32 7, float %10651)  ; Saturate(value)
  %10655 = call float @dx.op.unary.f32(i32 7, float %10652)  ; Saturate(value)
  %10656 = call float @dx.op.unary.f32(i32 7, float %10653)  ; Saturate(value)
  br label %10692

; <label>:10657                                   ; preds = %10628
  %10658 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10659 = extractvalue %dx.types.CBufRet.f32 %10658, 0
  %10660 = bitcast float %10659 to i32
  %10661 = and i32 %10660, 2130706432
  %10662 = icmp eq i32 %10661, 0
  %10663 = select i1 %10662, float 0.000000e+00, float %10639
  %10664 = select i1 %10662, float 0.000000e+00, float %10640
  %10665 = select i1 %10662, float 0.000000e+00, float %10641
  br label %10692

; <label>:10666                                   ; preds = %10628
  %10667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10668 = extractvalue %dx.types.CBufRet.f32 %10667, 0
  %10669 = bitcast float %10668 to i32
  %10670 = and i32 %10669, 2130706432
  %10671 = icmp eq i32 %10670, 0
  %10672 = select i1 %10671, float 0.000000e+00, float %10639
  %10673 = select i1 %10671, float 0.000000e+00, float %10640
  %10674 = select i1 %10671, float 0.000000e+00, float %10641
  br label %10692

; <label>:10675                                   ; preds = %10628
  br label %10692

; <label>:10676                                   ; preds = %10628, %10628
  br label %10692

; <label>:10677                                   ; preds = %10628
  %10678 = and i32 %9085, 1023
  %10679 = uitofp i32 %10678 to float
  %10680 = lshr i32 %9085, 10
  %10681 = and i32 %10680, 1023
  %10682 = uitofp i32 %10681 to float
  %10683 = lshr i32 %9085, 20
  %10684 = and i32 %10683, 1023
  %10685 = uitofp i32 %10684 to float
  %10686 = fmul fast float %10679, 0x3F60040100000000
  %10687 = fmul fast float %10682, 0x3F60040100000000
  %10688 = fmul fast float %10685, 0x3F60040100000000
  %10689 = fadd fast float %10686, -1.000000e+00
  %10690 = fadd fast float %10687, -1.000000e+00
  %10691 = fadd fast float %10688, -1.000000e+00
  br label %10692

; <label>:10692                                   ; preds = %10677, %10676, %10675, %10666, %10657, %10648, %10647, %10646, %10628
  %10693 = phi float [ 0.000000e+00, %10675 ], [ %10654, %10648 ], [ 0.000000e+00, %10647 ], [ %71, %10676 ], [ %10689, %10677 ], [ 0.000000e+00, %10646 ], [ %10663, %10657 ], [ %10672, %10666 ], [ %10639, %10628 ]
  %10694 = phi float [ 0.000000e+00, %10675 ], [ %10655, %10648 ], [ 0.000000e+00, %10647 ], [ %72, %10676 ], [ %10690, %10677 ], [ 0.000000e+00, %10646 ], [ %10664, %10657 ], [ %10673, %10666 ], [ %10640, %10628 ]
  %10695 = phi float [ 0.000000e+00, %10675 ], [ %10656, %10648 ], [ 1.000000e+00, %10647 ], [ %73, %10676 ], [ %10691, %10677 ], [ 0.000000e+00, %10646 ], [ %10665, %10657 ], [ %10674, %10666 ], [ %10641, %10628 ]
  %10696 = fsub fast float %10693, %10639
  %10697 = fsub fast float %10694, %10640
  %10698 = fsub fast float %10695, %10641
  %10699 = fmul fast float %10632, %10696
  %10700 = fmul fast float %10632, %10697
  %10701 = fmul fast float %10632, %10698
  %10702 = fadd fast float %10699, %10639
  %10703 = fadd fast float %10700, %10640
  %10704 = fadd fast float %10701, %10641
  %10705 = and i32 %8347, 255
  %10706 = uitofp i32 %10705 to float
  %10707 = fptoui float %10706 to i32
  %10708 = lshr i32 %8347, 8
  %10709 = and i32 %10708, 255
  %10710 = uitofp i32 %10709 to float
  %10711 = fptoui float %10710 to i32
  %10712 = lshr i32 %8347, 16
  %10713 = and i32 %10712, 255
  %10714 = uitofp i32 %10713 to float
  %10715 = fptoui float %10714 to i32
  %10716 = lshr i32 %8347, 24
  %10717 = uitofp i32 %10716 to float
  %10718 = fptoui float %10717 to i32
  %10719 = and i32 %8346, 255
  %10720 = uitofp i32 %10719 to float
  %10721 = fptoui float %10720 to i32
  %10722 = lshr i32 %8346, 16
  %10723 = and i32 %10722, 255
  %10724 = uitofp i32 %10723 to float
  %10725 = fptoui float %10724 to i32
  %10726 = lshr i32 %10387, 24
  %10727 = uitofp i32 %10726 to float
  %10728 = fptoui float %10727 to i32
  switch i32 %10728, label %10967 [
    i32 1, label %10729
    i32 2, label %10756
    i32 3, label %10781
    i32 4, label %10804
    i32 5, label %10827
    i32 6, label %10850
    i32 7, label %10874
    i32 8, label %10897
    i32 9, label %10920
    i32 12, label %10942
    i32 13, label %10943
    i32 14, label %10966
  ]

; <label>:10729                                   ; preds = %10692
  %10730 = add i32 %10707, %10721
  %10731 = add i32 %10730, %10718
  %10732 = add i32 %10731, %10711
  %10733 = add i32 %10732, %10715
  %10734 = uitofp i32 %10733 to float
  %10735 = fadd fast float %10734, -4.000000e+00
  %10736 = fmul fast float %10735, 0x3FB5555560000000
  %10737 = call float @dx.op.unary.f32(i32 7, float %10736)  ; Saturate(value)
  %10738 = icmp eq i32 %10733, 0
  %10739 = select i1 %10738, float 0.000000e+00, float %10737
  %10740 = icmp ult i32 %10733, 2
  %10741 = select i1 %10740, float 0.000000e+00, float %10737
  %10742 = add i32 %10733, -1
  %10743 = icmp ult i32 %10742, 2
  %10744 = select i1 %10743, float 1.000000e+00, float %10739
  %10745 = icmp ult i32 %10733, 4
  %10746 = select i1 %10745, float 0.000000e+00, float 1.000000e+00
  %10747 = and i32 %10733, -2
  %10748 = icmp eq i32 %10747, 2
  %10749 = icmp eq i32 %10733, 4
  %10750 = select i1 %10749, float 1.000000e+00, float %10746
  %10751 = or i1 %10749, %10748
  %10752 = select i1 %10751, float 1.000000e+00, float %10741
  %10753 = add i32 %10733, -3
  %10754 = icmp ult i32 %10753, 2
  %10755 = select i1 %10754, float 0.000000e+00, float %10744
  br label %10967

; <label>:10756                                   ; preds = %10692
  %10757 = add i32 %10711, %10707
  %10758 = add i32 %10757, %10715
  %10759 = uitofp i32 %10758 to float
  %10760 = fadd fast float %10759, -4.000000e+00
  %10761 = fmul fast float %10760, 0x3FB5555560000000
  %10762 = call float @dx.op.unary.f32(i32 7, float %10761)  ; Saturate(value)
  %10763 = icmp eq i32 %10758, 0
  %10764 = select i1 %10763, float 0.000000e+00, float %10762
  %10765 = icmp ult i32 %10758, 2
  %10766 = select i1 %10765, float 0.000000e+00, float %10762
  %10767 = add i32 %10758, -1
  %10768 = icmp ult i32 %10767, 2
  %10769 = select i1 %10768, float 1.000000e+00, float %10764
  %10770 = icmp ult i32 %10758, 4
  %10771 = select i1 %10770, float 0.000000e+00, float 1.000000e+00
  %10772 = and i32 %10758, -2
  %10773 = icmp eq i32 %10772, 2
  %10774 = icmp eq i32 %10758, 4
  %10775 = select i1 %10774, float 1.000000e+00, float %10771
  %10776 = or i1 %10774, %10773
  %10777 = select i1 %10776, float 1.000000e+00, float %10766
  %10778 = add i32 %10758, -3
  %10779 = icmp ult i32 %10778, 2
  %10780 = select i1 %10779, float 0.000000e+00, float %10769
  br label %10967

; <label>:10781                                   ; preds = %10692
  %10782 = uitofp i32 %10707 to float
  %10783 = fadd fast float %10782, -4.000000e+00
  %10784 = fmul fast float %10783, 0x3FB5555560000000
  %10785 = call float @dx.op.unary.f32(i32 7, float %10784)  ; Saturate(value)
  %10786 = icmp eq i32 %10707, 0
  %10787 = select i1 %10786, float 0.000000e+00, float %10785
  %10788 = icmp ult i32 %10707, 2
  %10789 = select i1 %10788, float 0.000000e+00, float %10785
  %10790 = add i32 %10707, -1
  %10791 = icmp ult i32 %10790, 2
  %10792 = select i1 %10791, float 1.000000e+00, float %10787
  %10793 = icmp ult i32 %10707, 4
  %10794 = select i1 %10793, float 0.000000e+00, float 1.000000e+00
  %10795 = and i32 %10707, -2
  %10796 = icmp eq i32 %10795, 2
  %10797 = icmp eq i32 %10707, 4
  %10798 = select i1 %10797, float 1.000000e+00, float %10794
  %10799 = or i1 %10797, %10796
  %10800 = select i1 %10799, float 1.000000e+00, float %10789
  %10801 = add i32 %10707, -3
  %10802 = icmp ult i32 %10801, 2
  %10803 = select i1 %10802, float 0.000000e+00, float %10792
  br label %10967

; <label>:10804                                   ; preds = %10692
  %10805 = uitofp i32 %10711 to float
  %10806 = fadd fast float %10805, -4.000000e+00
  %10807 = fmul fast float %10806, 0x3FB5555560000000
  %10808 = call float @dx.op.unary.f32(i32 7, float %10807)  ; Saturate(value)
  %10809 = icmp eq i32 %10711, 0
  %10810 = select i1 %10809, float 0.000000e+00, float %10808
  %10811 = icmp ult i32 %10711, 2
  %10812 = select i1 %10811, float 0.000000e+00, float %10808
  %10813 = add i32 %10711, -1
  %10814 = icmp ult i32 %10813, 2
  %10815 = select i1 %10814, float 1.000000e+00, float %10810
  %10816 = icmp ult i32 %10711, 4
  %10817 = select i1 %10816, float 0.000000e+00, float 1.000000e+00
  %10818 = and i32 %10711, -2
  %10819 = icmp eq i32 %10818, 2
  %10820 = icmp eq i32 %10711, 4
  %10821 = select i1 %10820, float 1.000000e+00, float %10817
  %10822 = or i1 %10820, %10819
  %10823 = select i1 %10822, float 1.000000e+00, float %10812
  %10824 = add i32 %10711, -3
  %10825 = icmp ult i32 %10824, 2
  %10826 = select i1 %10825, float 0.000000e+00, float %10815
  br label %10967

; <label>:10827                                   ; preds = %10692
  %10828 = uitofp i32 %10715 to float
  %10829 = fadd fast float %10828, -4.000000e+00
  %10830 = fmul fast float %10829, 0x3FB5555560000000
  %10831 = call float @dx.op.unary.f32(i32 7, float %10830)  ; Saturate(value)
  %10832 = icmp eq i32 %10715, 0
  %10833 = select i1 %10832, float 0.000000e+00, float %10831
  %10834 = icmp ult i32 %10715, 2
  %10835 = select i1 %10834, float 0.000000e+00, float %10831
  %10836 = add i32 %10715, -1
  %10837 = icmp ult i32 %10836, 2
  %10838 = select i1 %10837, float 1.000000e+00, float %10833
  %10839 = icmp ult i32 %10715, 4
  %10840 = select i1 %10839, float 0.000000e+00, float 1.000000e+00
  %10841 = and i32 %10715, -2
  %10842 = icmp eq i32 %10841, 2
  %10843 = icmp eq i32 %10715, 4
  %10844 = select i1 %10843, float 1.000000e+00, float %10840
  %10845 = or i1 %10843, %10842
  %10846 = select i1 %10845, float 1.000000e+00, float %10835
  %10847 = add i32 %10715, -3
  %10848 = icmp ult i32 %10847, 2
  %10849 = select i1 %10848, float 0.000000e+00, float %10838
  br label %10967

; <label>:10850                                   ; preds = %10692
  %10851 = add i32 %10718, %10721
  %10852 = uitofp i32 %10851 to float
  %10853 = fadd fast float %10852, -4.000000e+00
  %10854 = fmul fast float %10853, 0x3FB5555560000000
  %10855 = call float @dx.op.unary.f32(i32 7, float %10854)  ; Saturate(value)
  %10856 = icmp eq i32 %10851, 0
  %10857 = select i1 %10856, float 0.000000e+00, float %10855
  %10858 = icmp ult i32 %10851, 2
  %10859 = select i1 %10858, float 0.000000e+00, float %10855
  %10860 = add i32 %10851, -1
  %10861 = icmp ult i32 %10860, 2
  %10862 = select i1 %10861, float 1.000000e+00, float %10857
  %10863 = icmp ult i32 %10851, 4
  %10864 = select i1 %10863, float 0.000000e+00, float 1.000000e+00
  %10865 = and i32 %10851, -2
  %10866 = icmp eq i32 %10865, 2
  %10867 = icmp eq i32 %10851, 4
  %10868 = select i1 %10867, float 1.000000e+00, float %10864
  %10869 = or i1 %10867, %10866
  %10870 = select i1 %10869, float 1.000000e+00, float %10859
  %10871 = add i32 %10851, -3
  %10872 = icmp ult i32 %10871, 2
  %10873 = select i1 %10872, float 0.000000e+00, float %10862
  br label %10967

; <label>:10874                                   ; preds = %10692
  %10875 = uitofp i32 %10718 to float
  %10876 = fadd fast float %10875, -4.000000e+00
  %10877 = fmul fast float %10876, 0x3FB5555560000000
  %10878 = call float @dx.op.unary.f32(i32 7, float %10877)  ; Saturate(value)
  %10879 = icmp eq i32 %10718, 0
  %10880 = select i1 %10879, float 0.000000e+00, float %10878
  %10881 = icmp ult i32 %10718, 2
  %10882 = select i1 %10881, float 0.000000e+00, float %10878
  %10883 = add i32 %10718, -1
  %10884 = icmp ult i32 %10883, 2
  %10885 = select i1 %10884, float 1.000000e+00, float %10880
  %10886 = icmp ult i32 %10718, 4
  %10887 = select i1 %10886, float 0.000000e+00, float 1.000000e+00
  %10888 = and i32 %10718, -2
  %10889 = icmp eq i32 %10888, 2
  %10890 = icmp eq i32 %10718, 4
  %10891 = select i1 %10890, float 1.000000e+00, float %10887
  %10892 = or i1 %10890, %10889
  %10893 = select i1 %10892, float 1.000000e+00, float %10882
  %10894 = add i32 %10718, -3
  %10895 = icmp ult i32 %10894, 2
  %10896 = select i1 %10895, float 0.000000e+00, float %10885
  br label %10967

; <label>:10897                                   ; preds = %10692
  %10898 = uitofp i32 %10721 to float
  %10899 = fadd fast float %10898, -4.000000e+00
  %10900 = fmul fast float %10899, 0x3FB5555560000000
  %10901 = call float @dx.op.unary.f32(i32 7, float %10900)  ; Saturate(value)
  %10902 = icmp eq i32 %10721, 0
  %10903 = select i1 %10902, float 0.000000e+00, float %10901
  %10904 = icmp ult i32 %10721, 2
  %10905 = select i1 %10904, float 0.000000e+00, float %10901
  %10906 = add i32 %10721, -1
  %10907 = icmp ult i32 %10906, 2
  %10908 = select i1 %10907, float 1.000000e+00, float %10903
  %10909 = icmp ult i32 %10721, 4
  %10910 = select i1 %10909, float 0.000000e+00, float 1.000000e+00
  %10911 = and i32 %10721, -2
  %10912 = icmp eq i32 %10911, 2
  %10913 = icmp eq i32 %10721, 4
  %10914 = select i1 %10913, float 1.000000e+00, float %10910
  %10915 = or i1 %10913, %10912
  %10916 = select i1 %10915, float 1.000000e+00, float %10905
  %10917 = add i32 %10721, -3
  %10918 = icmp ult i32 %10917, 2
  %10919 = select i1 %10918, float 0.000000e+00, float %10908
  br label %10967

; <label>:10920                                   ; preds = %10692
  %10921 = lshr i32 %8346, 8
  %10922 = and i32 %10921, 255
  %10923 = uitofp i32 %10922 to float
  %10924 = fptoui float %10923 to i32
  %10925 = uitofp i32 %10924 to float
  %10926 = fcmp fast oge float %10925, 1.000000e+00
  %10927 = fcmp fast oge float %10925, 2.000000e+00
  %10928 = or i1 %10927, %10926
  %10929 = select i1 %10928, float 1.000000e+00, float 0.000000e+00
  %10930 = fcmp fast oge float %10925, 3.000000e+00
  %10931 = or i1 %10930, %10927
  %10932 = fcmp fast oge float %10925, 4.000000e+00
  %10933 = or i1 %10932, %10931
  %10934 = select i1 %10933, float 1.000000e+00, float 0.000000e+00
  %10935 = or i1 %10932, %10930
  %10936 = fcmp fast oge float %10925, 5.000000e+00
  %10937 = or i1 %10936, %10932
  %10938 = select i1 %10937, float 1.000000e+00, float 0.000000e+00
  %10939 = select i1 %10936, float 0.000000e+00, float %10934
  %10940 = or i1 %10936, %10935
  %10941 = select i1 %10940, float 0.000000e+00, float %10929
  br label %10967

; <label>:10942                                   ; preds = %10692
  br label %10967

; <label>:10943                                   ; preds = %10692
  %10944 = uitofp i32 %10725 to float
  %10945 = fadd fast float %10944, -4.000000e+00
  %10946 = fmul fast float %10945, 0x3FB5555560000000
  %10947 = call float @dx.op.unary.f32(i32 7, float %10946)  ; Saturate(value)
  %10948 = icmp eq i32 %10725, 0
  %10949 = select i1 %10948, float 0.000000e+00, float %10947
  %10950 = icmp ult i32 %10725, 2
  %10951 = select i1 %10950, float 0.000000e+00, float %10947
  %10952 = add i32 %10725, -1
  %10953 = icmp ult i32 %10952, 2
  %10954 = select i1 %10953, float 1.000000e+00, float %10949
  %10955 = icmp ult i32 %10725, 4
  %10956 = select i1 %10955, float 0.000000e+00, float 1.000000e+00
  %10957 = and i32 %10725, -2
  %10958 = icmp eq i32 %10957, 2
  %10959 = icmp eq i32 %10725, 4
  %10960 = select i1 %10959, float 1.000000e+00, float %10956
  %10961 = or i1 %10959, %10958
  %10962 = select i1 %10961, float 1.000000e+00, float %10951
  %10963 = add i32 %10725, -3
  %10964 = icmp ult i32 %10963, 2
  %10965 = select i1 %10964, float 0.000000e+00, float %10954
  br label %10967

; <label>:10966                                   ; preds = %10692
  br label %10967

; <label>:10967                                   ; preds = %10966, %10943, %10942, %10920, %10897, %10874, %10850, %10827, %10804, %10781, %10756, %10729, %10692
  %10968 = phi float [ %10702, %10692 ], [ 5.000000e-01, %10966 ], [ %10960, %10943 ], [ 1.000000e+00, %10942 ], [ %10938, %10920 ], [ %10914, %10897 ], [ %10891, %10874 ], [ %10868, %10850 ], [ %10844, %10827 ], [ %10821, %10804 ], [ %10798, %10781 ], [ %10775, %10756 ], [ %10750, %10729 ]
  %10969 = phi float [ %10703, %10692 ], [ 5.000000e-01, %10966 ], [ %10962, %10943 ], [ 0.000000e+00, %10942 ], [ %10939, %10920 ], [ %10916, %10897 ], [ %10893, %10874 ], [ %10870, %10850 ], [ %10846, %10827 ], [ %10823, %10804 ], [ %10800, %10781 ], [ %10777, %10756 ], [ %10752, %10729 ]
  %10970 = phi float [ %10704, %10692 ], [ 5.000000e-01, %10966 ], [ %10965, %10943 ], [ 0.000000e+00, %10942 ], [ %10941, %10920 ], [ %10919, %10897 ], [ %10896, %10874 ], [ %10873, %10850 ], [ %10849, %10827 ], [ %10826, %10804 ], [ %10803, %10781 ], [ %10780, %10756 ], [ %10755, %10729 ]
  %10971 = fsub fast float %10968, %10702
  %10972 = fsub fast float %10969, %10703
  %10973 = fsub fast float %10970, %10704
  %10974 = fmul fast float %10971, %10632
  %10975 = fmul fast float %10972, %10632
  %10976 = fmul fast float %10973, %10632
  %10977 = fadd fast float %10974, %10702
  %10978 = fadd fast float %10975, %10703
  %10979 = fadd fast float %10976, %10704
  %10980 = and i32 %10387, 255
  %10981 = uitofp i32 %10980 to float
  %10982 = fptoui float %10981 to i32
  %10983 = icmp ult i32 %10982, 25
  br i1 %10983, label %10984, label %10989

; <label>:10984                                   ; preds = %10967
  %10985 = trunc i32 %10982 to i25
  %10986 = lshr i25 1048574, %10985
  %10987 = and i25 %10986, 1
  %10988 = icmp ne i25 %10987, 0
  br label %10989

; <label>:10989                                   ; preds = %10984, %10967
  %10990 = phi i1 [ %10988, %10984 ], [ true, %10967 ]
  %10991 = or i32 %10645, %10391
  %10992 = or i32 %10991, %10728
  %10993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10994 = extractvalue %dx.types.CBufRet.f32 %10993, 3
  %10995 = bitcast float %10994 to i32
  %10996 = and i32 %10995, 255
  %10997 = uitofp i32 %10996 to float
  %10998 = fptoui float %10997 to i32
  %10999 = or i32 %10992, %10998
  %11000 = icmp ne i32 %10999, 0
  %11001 = or i1 %10990, %11000
  %11002 = extractvalue %dx.types.CBufRet.f32 %10993, 0
  %11003 = bitcast float %11002 to i32
  %11004 = icmp slt i32 %11003, 0
  %11005 = or i1 %11004, %11001
  br i1 %11005, label %11006, label %11014

; <label>:11006                                   ; preds = %10989
  %11007 = icmp eq i32 %10728, 14
  %11008 = select i1 %11007, float 0.000000e+00, float 1.000000e+00
  %11009 = icmp eq i32 %10982, 0
  br i1 %11009, label %11014, label %11010

; <label>:11010                                   ; preds = %11006
  %11011 = fmul fast float %11008, %10977
  %11012 = fmul fast float %11008, %10978
  %11013 = fmul fast float %11008, %10979
  br label %11014

; <label>:11014                                   ; preds = %11010, %11006, %10989
  %11015 = phi float [ %11011, %11010 ], [ %10977, %11006 ], [ %10977, %10989 ]
  %11016 = phi float [ %11012, %11010 ], [ %10978, %11006 ], [ %10978, %10989 ]
  %11017 = phi float [ %11013, %11010 ], [ %10979, %11006 ], [ %10979, %10989 ]
  %11018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %11019 = extractvalue %dx.types.CBufRet.f32 %11018, 2
  %11020 = extractvalue %dx.types.CBufRet.f32 %11018, 3
  %11021 = fmul fast float %11019, %100
  %11022 = fmul fast float %11020, %101
  %11023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %11024 = extractvalue %dx.types.CBufRet.f32 %11023, 0
  %11025 = fcmp fast oge float %11021, %11024
  %11026 = extractvalue %dx.types.CBufRet.f32 %11023, 2
  %11027 = fcmp fast ole float %11021, %11026
  %11028 = and i1 %11025, %11027
  %11029 = extractvalue %dx.types.CBufRet.f32 %11023, 1
  %11030 = fcmp fast oge float %11022, %11029
  %11031 = and i1 %11028, %11030
  %11032 = extractvalue %dx.types.CBufRet.f32 %11023, 3
  %11033 = fcmp fast ole float %11022, %11032
  %11034 = and i1 %11031, %11033
  %11035 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %11036 = extractvalue %dx.types.CBufRet.i32 %11035, 0
  %11037 = icmp ne i32 %11036, 0
  %11038 = and i1 %11037, %11034
  br i1 %11038, label %11039, label %11988

; <label>:11039                                   ; preds = %11014
  %11040 = icmp eq i32 %11036, 1
  br i1 %11040, label %11041, label %11080

; <label>:11041                                   ; preds = %11039
  %11042 = uitofp i32 %199 to float
  %11043 = fmul fast float %11042, 0x3FE3C6EF40000000
  %11044 = call float @dx.op.unary.f32(i32 22, float %11043)  ; Frc(value)
  %11045 = fadd fast float %11044, 0x3FE5555560000000
  %11046 = fadd fast float %11044, 0x3FD5555560000000
  %11047 = fsub fast float -0.000000e+00, %11044
  %11048 = fsub fast float -0.000000e+00, %11045
  %11049 = fsub fast float -0.000000e+00, %11046
  %11050 = fcmp fast oge float %11044, %11047
  %11051 = fcmp fast oge float %11045, %11048
  %11052 = fcmp fast oge float %11046, %11049
  %11053 = call float @dx.op.unary.f32(i32 6, float %11044)  ; FAbs(value)
  %11054 = call float @dx.op.unary.f32(i32 6, float %11045)  ; FAbs(value)
  %11055 = call float @dx.op.unary.f32(i32 6, float %11046)  ; FAbs(value)
  %11056 = call float @dx.op.unary.f32(i32 22, float %11053)  ; Frc(value)
  %11057 = call float @dx.op.unary.f32(i32 22, float %11054)  ; Frc(value)
  %11058 = call float @dx.op.unary.f32(i32 22, float %11055)  ; Frc(value)
  %11059 = fsub fast float -0.000000e+00, %11056
  %11060 = fsub fast float -0.000000e+00, %11057
  %11061 = fsub fast float -0.000000e+00, %11058
  %11062 = select i1 %11050, float %11056, float %11059
  %11063 = select i1 %11051, float %11057, float %11060
  %11064 = select i1 %11052, float %11058, float %11061
  %11065 = fmul fast float %11062, 6.000000e+00
  %11066 = fmul fast float %11063, 6.000000e+00
  %11067 = fmul fast float %11064, 6.000000e+00
  %11068 = fadd fast float %11065, -3.000000e+00
  %11069 = fadd fast float %11066, -3.000000e+00
  %11070 = fadd fast float %11067, -3.000000e+00
  %11071 = call float @dx.op.unary.f32(i32 6, float %11068)  ; FAbs(value)
  %11072 = call float @dx.op.unary.f32(i32 6, float %11069)  ; FAbs(value)
  %11073 = call float @dx.op.unary.f32(i32 6, float %11070)  ; FAbs(value)
  %11074 = fadd fast float %11071, -1.000000e+00
  %11075 = fadd fast float %11072, -1.000000e+00
  %11076 = fadd fast float %11073, -1.000000e+00
  %11077 = call float @dx.op.unary.f32(i32 7, float %11074)  ; Saturate(value)
  %11078 = call float @dx.op.unary.f32(i32 7, float %11075)  ; Saturate(value)
  %11079 = call float @dx.op.unary.f32(i32 7, float %11076)  ; Saturate(value)
  br label %11988

; <label>:11080                                   ; preds = %11039
  %11081 = icmp eq i32 %11036, 2
  br i1 %11081, label %11082, label %11086

; <label>:11082                                   ; preds = %11080
  %11083 = fmul fast float %11015, %74
  %11084 = fmul fast float %11016, %75
  %11085 = fmul fast float %11017, %76
  br label %11988

; <label>:11086                                   ; preds = %11080
  %11087 = icmp eq i32 %11036, 3
  %11088 = icmp eq i32 %11036, 26
  %11089 = or i1 %11087, %11088
  br i1 %11089, label %11090, label %11190

; <label>:11090                                   ; preds = %11086
  br i1 %11087, label %11091, label %11102

; <label>:11091                                   ; preds = %11090
  %11092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %11093 = extractvalue %dx.types.CBufRet.f32 %11092, 3
  %11094 = fsub fast float %179, %11093
  %11095 = fmul fast float %11094, 0x3FD5555560000000
  %11096 = call float @dx.op.unary.f32(i32 7, float %11095)  ; Saturate(value)
  %11097 = fmul fast float %11096, 6.300000e+01
  %11098 = fptoui float %11097 to i32
  %11099 = uitofp i32 %11098 to float
  %11100 = fmul fast float %11099, 0x3FA8618620000000
  %11101 = fadd fast float %11100, %11093
  br label %11102

; <label>:11102                                   ; preds = %11091, %11090
  %11103 = phi float [ %11101, %11091 ], [ %74, %11090 ]
  %11104 = call float @dx.op.unary.f32(i32 27, float %11103)  ; Round_ni(value)
  %11105 = fadd fast float %11104, 1.000000e+00
  %11106 = call float @dx.op.unary.f32(i32 22, float %11103)  ; Frc(value)
  %11107 = fmul fast float %11104, 0x3FE3C6EF40000000
  %11108 = call float @dx.op.unary.f32(i32 22, float %11107)  ; Frc(value)
  %11109 = fadd fast float %11108, 0x3FE5555560000000
  %11110 = fadd fast float %11108, 0x3FD5555560000000
  %11111 = fsub fast float -0.000000e+00, %11108
  %11112 = fsub fast float -0.000000e+00, %11109
  %11113 = fsub fast float -0.000000e+00, %11110
  %11114 = fcmp fast oge float %11108, %11111
  %11115 = fcmp fast oge float %11109, %11112
  %11116 = fcmp fast oge float %11110, %11113
  %11117 = call float @dx.op.unary.f32(i32 6, float %11108)  ; FAbs(value)
  %11118 = call float @dx.op.unary.f32(i32 6, float %11109)  ; FAbs(value)
  %11119 = call float @dx.op.unary.f32(i32 6, float %11110)  ; FAbs(value)
  %11120 = call float @dx.op.unary.f32(i32 22, float %11117)  ; Frc(value)
  %11121 = call float @dx.op.unary.f32(i32 22, float %11118)  ; Frc(value)
  %11122 = call float @dx.op.unary.f32(i32 22, float %11119)  ; Frc(value)
  %11123 = fsub fast float -0.000000e+00, %11120
  %11124 = fsub fast float -0.000000e+00, %11121
  %11125 = fsub fast float -0.000000e+00, %11122
  %11126 = select i1 %11114, float %11120, float %11123
  %11127 = select i1 %11115, float %11121, float %11124
  %11128 = select i1 %11116, float %11122, float %11125
  %11129 = fmul fast float %11126, 6.000000e+00
  %11130 = fmul fast float %11127, 6.000000e+00
  %11131 = fmul fast float %11128, 6.000000e+00
  %11132 = fadd fast float %11129, -3.000000e+00
  %11133 = fadd fast float %11130, -3.000000e+00
  %11134 = fadd fast float %11131, -3.000000e+00
  %11135 = call float @dx.op.unary.f32(i32 6, float %11132)  ; FAbs(value)
  %11136 = call float @dx.op.unary.f32(i32 6, float %11133)  ; FAbs(value)
  %11137 = call float @dx.op.unary.f32(i32 6, float %11134)  ; FAbs(value)
  %11138 = fadd fast float %11135, -1.000000e+00
  %11139 = fadd fast float %11136, -1.000000e+00
  %11140 = fadd fast float %11137, -1.000000e+00
  %11141 = call float @dx.op.unary.f32(i32 7, float %11138)  ; Saturate(value)
  %11142 = call float @dx.op.unary.f32(i32 7, float %11139)  ; Saturate(value)
  %11143 = call float @dx.op.unary.f32(i32 7, float %11140)  ; Saturate(value)
  %11144 = fmul fast float %11105, 0x3FE3C6EF40000000
  %11145 = call float @dx.op.unary.f32(i32 22, float %11144)  ; Frc(value)
  %11146 = fadd fast float %11145, 0x3FE5555560000000
  %11147 = fadd fast float %11145, 0x3FD5555560000000
  %11148 = fsub fast float -0.000000e+00, %11145
  %11149 = fsub fast float -0.000000e+00, %11146
  %11150 = fsub fast float -0.000000e+00, %11147
  %11151 = fcmp fast oge float %11145, %11148
  %11152 = fcmp fast oge float %11146, %11149
  %11153 = fcmp fast oge float %11147, %11150
  %11154 = call float @dx.op.unary.f32(i32 6, float %11145)  ; FAbs(value)
  %11155 = call float @dx.op.unary.f32(i32 6, float %11146)  ; FAbs(value)
  %11156 = call float @dx.op.unary.f32(i32 6, float %11147)  ; FAbs(value)
  %11157 = call float @dx.op.unary.f32(i32 22, float %11154)  ; Frc(value)
  %11158 = call float @dx.op.unary.f32(i32 22, float %11155)  ; Frc(value)
  %11159 = call float @dx.op.unary.f32(i32 22, float %11156)  ; Frc(value)
  %11160 = fsub fast float -0.000000e+00, %11157
  %11161 = fsub fast float -0.000000e+00, %11158
  %11162 = fsub fast float -0.000000e+00, %11159
  %11163 = select i1 %11151, float %11157, float %11160
  %11164 = select i1 %11152, float %11158, float %11161
  %11165 = select i1 %11153, float %11159, float %11162
  %11166 = fmul fast float %11163, 6.000000e+00
  %11167 = fmul fast float %11164, 6.000000e+00
  %11168 = fmul fast float %11165, 6.000000e+00
  %11169 = fadd fast float %11166, -3.000000e+00
  %11170 = fadd fast float %11167, -3.000000e+00
  %11171 = fadd fast float %11168, -3.000000e+00
  %11172 = call float @dx.op.unary.f32(i32 6, float %11169)  ; FAbs(value)
  %11173 = call float @dx.op.unary.f32(i32 6, float %11170)  ; FAbs(value)
  %11174 = call float @dx.op.unary.f32(i32 6, float %11171)  ; FAbs(value)
  %11175 = fadd fast float %11172, -1.000000e+00
  %11176 = fadd fast float %11173, -1.000000e+00
  %11177 = fadd fast float %11174, -1.000000e+00
  %11178 = call float @dx.op.unary.f32(i32 7, float %11175)  ; Saturate(value)
  %11179 = call float @dx.op.unary.f32(i32 7, float %11176)  ; Saturate(value)
  %11180 = call float @dx.op.unary.f32(i32 7, float %11177)  ; Saturate(value)
  %11181 = fsub fast float %11178, %11141
  %11182 = fsub fast float %11179, %11142
  %11183 = fsub fast float %11180, %11143
  %11184 = fmul fast float %11181, %11106
  %11185 = fmul fast float %11182, %11106
  %11186 = fmul fast float %11183, %11106
  %11187 = fadd fast float %11184, %11141
  %11188 = fadd fast float %11185, %11142
  %11189 = fadd fast float %11186, %11143
  br label %11988

; <label>:11190                                   ; preds = %11086
  %11191 = and i32 %11036, -2
  %11192 = icmp eq i32 %11191, 4
  br i1 %11192, label %11193, label %11202

; <label>:11193                                   ; preds = %11190
  %11194 = uitofp i32 %199 to float
  %11195 = fmul fast float %11194, 0x3FE3C6EF40000000
  %11196 = call float @dx.op.unary.f32(i32 22, float %11195)  ; Frc(value)
  %11197 = fmul fast float %11196, 5.000000e-01
  %11198 = fadd fast float %11197, 5.000000e-01
  %11199 = fmul fast float %11198, %74
  %11200 = fmul fast float %11198, %75
  %11201 = fmul fast float %11198, %76
  br label %11988

; <label>:11202                                   ; preds = %11190
  %11203 = icmp eq i32 %11036, 6
  br i1 %11203, label %11988, label %11204

; <label>:11204                                   ; preds = %11202
  %11205 = icmp eq i32 %11036, 7
  br i1 %11205, label %11988, label %11206

; <label>:11206                                   ; preds = %11204
  %11207 = icmp eq i32 %11036, 8
  br i1 %11207, label %11988, label %11208

; <label>:11208                                   ; preds = %11206
  %11209 = icmp eq i32 %11036, 9
  br i1 %11209, label %11210, label %11222

; <label>:11210                                   ; preds = %11208
  %11211 = fcmp fast ogt float %348, 0.000000e+00
  %11212 = call float @dx.op.dot2.f32(i32 54, float %343, float %344, float %343, float %344)  ; Dot2(ax,ay,bx,by)
  %11213 = call float @dx.op.unary.f32(i32 25, float %11212)  ; Rsqrt(value)
  %11214 = fmul fast float %343, 5.000000e-01
  %11215 = fmul fast float %11214, %11213
  %11216 = fmul fast float %344, 5.000000e-01
  %11217 = fmul fast float %11216, %11213
  %11218 = fadd fast float %11215, 5.000000e-01
  %11219 = select i1 %11211, float %11218, float 5.000000e-01
  %11220 = fadd fast float %11217, 5.000000e-01
  %11221 = select i1 %11211, float %11220, float 5.000000e-01
  br label %11988

; <label>:11222                                   ; preds = %11208
  %11223 = icmp eq i32 %11036, 10
  br i1 %11223, label %11224, label %11226

; <label>:11224                                   ; preds = %11222
  %11225 = fmul fast float %348, 0x3F747AE140000000
  br label %11988

; <label>:11226                                   ; preds = %11222
  %11227 = icmp eq i32 %11036, 11
  br i1 %11227, label %11988, label %11228

; <label>:11228                                   ; preds = %11226
  %11229 = icmp eq i32 %11036, 12
  br i1 %11229, label %11988, label %11230

; <label>:11230                                   ; preds = %11228
  %11231 = icmp eq i32 %11036, 13
  br i1 %11231, label %11988, label %11232

; <label>:11232                                   ; preds = %11230
  %11233 = icmp eq i32 %11036, 14
  br i1 %11233, label %11988, label %11234

; <label>:11234                                   ; preds = %11232
  %11235 = icmp eq i32 %11036, 15
  br i1 %11235, label %11988, label %11236

; <label>:11236                                   ; preds = %11234
  %11237 = icmp eq i32 %11036, 16
  br i1 %11237, label %11988, label %11238

; <label>:11238                                   ; preds = %11236
  %11239 = icmp eq i32 %11036, 17
  br i1 %11239, label %11988, label %11240

; <label>:11240                                   ; preds = %11238
  %11241 = icmp eq i32 %11036, 18
  br i1 %11241, label %11988, label %11242

; <label>:11242                                   ; preds = %11240
  %11243 = icmp eq i32 %11036, 19
  br i1 %11243, label %11988, label %11244

; <label>:11244                                   ; preds = %11242
  %11245 = icmp eq i32 %11036, 20
  br i1 %11245, label %11246, label %11251

; <label>:11246                                   ; preds = %11244
  %11247 = fmul fast float %917, 5.000000e-01
  %11248 = fmul fast float %918, 5.000000e-01
  %11249 = fadd fast float %11247, 5.000000e-01
  %11250 = fadd fast float %11248, 5.000000e-01
  br label %11988

; <label>:11251                                   ; preds = %11244
  %11252 = and i32 %11036, -9
  %11253 = icmp eq i32 %11252, 21
  br i1 %11253, label %11988, label %11254

; <label>:11254                                   ; preds = %11251
  %11255 = icmp eq i32 %11036, 22
  %11256 = icmp eq i32 %11036, 38
  %11257 = or i1 %11255, %11256
  br i1 %11257, label %11258, label %11372

; <label>:11258                                   ; preds = %11254
  %11259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11260 = extractvalue %dx.types.CBufRet.f32 %11259, 0
  %11261 = extractvalue %dx.types.CBufRet.f32 %11259, 1
  %11262 = extractvalue %dx.types.CBufRet.f32 %11259, 2
  %11263 = fadd fast float %11260, %155
  %11264 = fadd fast float %11261, %156
  %11265 = fadd fast float %11262, %157
  %11266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11267 = extractvalue %dx.types.CBufRet.f32 %11266, 0
  %11268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11269 = extractvalue %dx.types.CBufRet.f32 %11268, 0
  %11270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11271 = extractvalue %dx.types.CBufRet.f32 %11270, 0
  %11272 = extractvalue %dx.types.CBufRet.f32 %11266, 1
  %11273 = extractvalue %dx.types.CBufRet.f32 %11268, 1
  %11274 = extractvalue %dx.types.CBufRet.f32 %11270, 1
  %11275 = extractvalue %dx.types.CBufRet.f32 %11266, 3
  %11276 = extractvalue %dx.types.CBufRet.f32 %11268, 3
  %11277 = extractvalue %dx.types.CBufRet.f32 %11270, 3
  %11278 = fadd fast float %11263, %11275
  %11279 = fadd fast float %11264, %11276
  %11280 = fadd fast float %11265, %11277
  %11281 = fmul fast float %11278, %11267
  %11282 = call float @dx.op.tertiary.f32(i32 46, float %11279, float %11269, float %11281)  ; FMad(a,b,c)
  %11283 = call float @dx.op.tertiary.f32(i32 46, float %11280, float %11271, float %11282)  ; FMad(a,b,c)
  %11284 = fmul fast float %11278, %11272
  %11285 = call float @dx.op.tertiary.f32(i32 46, float %11279, float %11273, float %11284)  ; FMad(a,b,c)
  %11286 = call float @dx.op.tertiary.f32(i32 46, float %11280, float %11274, float %11285)  ; FMad(a,b,c)
  %11287 = fsub fast float %11283, %11275
  %11288 = fsub fast float %11286, %11276
  %11289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %11290 = extractvalue %dx.types.CBufRet.f32 %11289, 0
  %11291 = extractvalue %dx.types.CBufRet.f32 %11289, 1
  %11292 = fsub fast float %11287, %11290
  %11293 = fsub fast float %11288, %11291
  %11294 = fmul fast float %11292, %11292
  %11295 = fmul fast float %11293, %11293
  %11296 = fadd fast float %11294, %11295
  %11297 = call float @dx.op.unary.f32(i32 24, float %11296)  ; Sqrt(value)
  %11298 = extractvalue %dx.types.CBufRet.f32 %11289, 2
  %11299 = fcmp fast olt float %11297, %11298
  br i1 %11299, label %11300, label %11988

; <label>:11300                                   ; preds = %11258
  %11301 = fadd fast float %11292, %11298
  %11302 = fadd fast float %11293, %11298
  %11303 = extractvalue %dx.types.CBufRet.f32 %11289, 3
  %11304 = fmul fast float %11301, %11303
  %11305 = fmul fast float %11302, %11303
  %11306 = call float @dx.op.unary.f32(i32 7, float %11304)  ; Saturate(value)
  %11307 = call float @dx.op.unary.f32(i32 7, float %11305)  ; Saturate(value)
  %11308 = fsub fast float 1.000000e+00, %11306
  %11309 = fsub fast float 1.000000e+00, %11307
  %11310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %63, float %11308, float %11309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11311 = extractvalue %dx.types.ResRet.f32 %11310, 0
  %11312 = fcmp fast ugt float %11311, 0.000000e+00
  br i1 %11312, label %11313, label %11988

; <label>:11313                                   ; preds = %11300
  br i1 %11255, label %11314, label %11319

; <label>:11314                                   ; preds = %11313
  %11315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %63, float %11308, float %11309, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %11316 = extractvalue %dx.types.ResRet.f32 %11315, 0
  %11317 = extractvalue %dx.types.ResRet.f32 %11315, 1
  %11318 = extractvalue %dx.types.ResRet.f32 %11315, 2
  br label %11988

; <label>:11319                                   ; preds = %11313
  %11320 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %54, i32 0)  ; GetDimensions(handle,mipLevel)
  %11321 = extractvalue %dx.types.Dimensions %11320, 0
  %11322 = sitofp i32 %11321 to float
  %11323 = extractvalue %dx.types.Dimensions %11320, 1
  %11324 = sitofp i32 %11323 to float
  %11325 = fmul fast float %11322, %11308
  %11326 = fmul fast float %11324, %11309
  %11327 = call float @dx.op.unary.f32(i32 27, float %11325)  ; Round_ni(value)
  %11328 = call float @dx.op.unary.f32(i32 27, float %11326)  ; Round_ni(value)
  %11329 = fptoui float %11322 to i32
  %11330 = uitofp i32 %11329 to float
  %11331 = fmul fast float %11330, %11328
  %11332 = fadd fast float %11331, %11327
  %11333 = fptoui float %11332 to i32
  %11334 = uitofp i32 %11333 to float
  %11335 = fmul fast float %11334, 0x3FE3C6EF40000000
  %11336 = call float @dx.op.unary.f32(i32 22, float %11335)  ; Frc(value)
  %11337 = fadd fast float %11336, 0x3FE5555560000000
  %11338 = fadd fast float %11336, 0x3FD5555560000000
  %11339 = fsub fast float -0.000000e+00, %11336
  %11340 = fsub fast float -0.000000e+00, %11337
  %11341 = fsub fast float -0.000000e+00, %11338
  %11342 = fcmp fast oge float %11336, %11339
  %11343 = fcmp fast oge float %11337, %11340
  %11344 = fcmp fast oge float %11338, %11341
  %11345 = call float @dx.op.unary.f32(i32 6, float %11336)  ; FAbs(value)
  %11346 = call float @dx.op.unary.f32(i32 6, float %11337)  ; FAbs(value)
  %11347 = call float @dx.op.unary.f32(i32 6, float %11338)  ; FAbs(value)
  %11348 = call float @dx.op.unary.f32(i32 22, float %11345)  ; Frc(value)
  %11349 = call float @dx.op.unary.f32(i32 22, float %11346)  ; Frc(value)
  %11350 = call float @dx.op.unary.f32(i32 22, float %11347)  ; Frc(value)
  %11351 = fsub fast float -0.000000e+00, %11348
  %11352 = fsub fast float -0.000000e+00, %11349
  %11353 = fsub fast float -0.000000e+00, %11350
  %11354 = select i1 %11342, float %11348, float %11351
  %11355 = select i1 %11343, float %11349, float %11352
  %11356 = select i1 %11344, float %11350, float %11353
  %11357 = fmul fast float %11354, 6.000000e+00
  %11358 = fmul fast float %11355, 6.000000e+00
  %11359 = fmul fast float %11356, 6.000000e+00
  %11360 = fadd fast float %11357, -3.000000e+00
  %11361 = fadd fast float %11358, -3.000000e+00
  %11362 = fadd fast float %11359, -3.000000e+00
  %11363 = call float @dx.op.unary.f32(i32 6, float %11360)  ; FAbs(value)
  %11364 = call float @dx.op.unary.f32(i32 6, float %11361)  ; FAbs(value)
  %11365 = call float @dx.op.unary.f32(i32 6, float %11362)  ; FAbs(value)
  %11366 = fadd fast float %11363, -1.000000e+00
  %11367 = fadd fast float %11364, -1.000000e+00
  %11368 = fadd fast float %11365, -1.000000e+00
  %11369 = call float @dx.op.unary.f32(i32 7, float %11366)  ; Saturate(value)
  %11370 = call float @dx.op.unary.f32(i32 7, float %11367)  ; Saturate(value)
  %11371 = call float @dx.op.unary.f32(i32 7, float %11368)  ; Saturate(value)
  br label %11988

; <label>:11372                                   ; preds = %11254
  %11373 = icmp eq i32 %11036, 39
  br i1 %11373, label %11374, label %11478

; <label>:11374                                   ; preds = %11372
  %11375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %11376 = extractvalue %dx.types.CBufRet.f32 %11375, 0
  %11377 = extractvalue %dx.types.CBufRet.f32 %11375, 1
  %11378 = extractvalue %dx.types.CBufRet.f32 %11375, 2
  %11379 = fadd fast float %11376, %155
  %11380 = fadd fast float %11377, %156
  %11381 = fadd fast float %11378, %157
  %11382 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %11383 = extractvalue %dx.types.CBufRet.f32 %11382, 0
  %11384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %11385 = extractvalue %dx.types.CBufRet.f32 %11384, 0
  %11386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %11387 = extractvalue %dx.types.CBufRet.f32 %11386, 0
  %11388 = extractvalue %dx.types.CBufRet.f32 %11382, 1
  %11389 = extractvalue %dx.types.CBufRet.f32 %11384, 1
  %11390 = extractvalue %dx.types.CBufRet.f32 %11386, 1
  %11391 = extractvalue %dx.types.CBufRet.f32 %11382, 3
  %11392 = extractvalue %dx.types.CBufRet.f32 %11384, 3
  %11393 = extractvalue %dx.types.CBufRet.f32 %11386, 3
  %11394 = fadd fast float %11379, %11391
  %11395 = fadd fast float %11380, %11392
  %11396 = fadd fast float %11381, %11393
  %11397 = fmul fast float %11394, %11383
  %11398 = call float @dx.op.tertiary.f32(i32 46, float %11395, float %11385, float %11397)  ; FMad(a,b,c)
  %11399 = call float @dx.op.tertiary.f32(i32 46, float %11396, float %11387, float %11398)  ; FMad(a,b,c)
  %11400 = fmul fast float %11394, %11388
  %11401 = call float @dx.op.tertiary.f32(i32 46, float %11395, float %11389, float %11400)  ; FMad(a,b,c)
  %11402 = call float @dx.op.tertiary.f32(i32 46, float %11396, float %11390, float %11401)  ; FMad(a,b,c)
  %11403 = fsub fast float %11399, %11391
  %11404 = fsub fast float %11402, %11392
  %11405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %11406 = extractvalue %dx.types.CBufRet.f32 %11405, 0
  %11407 = extractvalue %dx.types.CBufRet.f32 %11405, 1
  %11408 = fsub fast float %11403, %11406
  %11409 = fsub fast float %11404, %11407
  %11410 = fmul fast float %11408, %11408
  %11411 = fmul fast float %11409, %11409
  %11412 = fadd fast float %11410, %11411
  %11413 = call float @dx.op.unary.f32(i32 24, float %11412)  ; Sqrt(value)
  %11414 = extractvalue %dx.types.CBufRet.f32 %11405, 2
  %11415 = fcmp fast olt float %11413, %11414
  br i1 %11415, label %11416, label %11988

; <label>:11416                                   ; preds = %11374
  %11417 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %52, i32 0)  ; GetDimensions(handle,mipLevel)
  %11418 = extractvalue %dx.types.Dimensions %11417, 0
  %11419 = sitofp i32 %11418 to float
  %11420 = extractvalue %dx.types.Dimensions %11417, 1
  %11421 = sitofp i32 %11420 to float
  %11422 = fadd fast float %11408, %11414
  %11423 = fadd fast float %11409, %11414
  %11424 = extractvalue %dx.types.CBufRet.f32 %11405, 3
  %11425 = fmul fast float %11422, %11424
  %11426 = fmul fast float %11423, %11424
  %11427 = call float @dx.op.unary.f32(i32 7, float %11425)  ; Saturate(value)
  %11428 = call float @dx.op.unary.f32(i32 7, float %11426)  ; Saturate(value)
  %11429 = fsub fast float 1.000000e+00, %11427
  %11430 = fsub fast float 1.000000e+00, %11428
  %11431 = fmul fast float %11429, %11419
  %11432 = fmul fast float %11430, %11421
  %11433 = call float @dx.op.unary.f32(i32 27, float %11431)  ; Round_ni(value)
  %11434 = call float @dx.op.unary.f32(i32 27, float %11432)  ; Round_ni(value)
  %11435 = fptoui float %11419 to i32
  %11436 = uitofp i32 %11435 to float
  %11437 = fmul fast float %11434, %11436
  %11438 = fadd fast float %11437, %11433
  %11439 = fptoui float %11438 to i32
  %11440 = uitofp i32 %11439 to float
  %11441 = fmul fast float %11440, 0x3FE3C6EF40000000
  %11442 = call float @dx.op.unary.f32(i32 22, float %11441)  ; Frc(value)
  %11443 = fadd fast float %11442, 0x3FE5555560000000
  %11444 = fadd fast float %11442, 0x3FD5555560000000
  %11445 = fsub fast float -0.000000e+00, %11442
  %11446 = fsub fast float -0.000000e+00, %11443
  %11447 = fsub fast float -0.000000e+00, %11444
  %11448 = fcmp fast oge float %11442, %11445
  %11449 = fcmp fast oge float %11443, %11446
  %11450 = fcmp fast oge float %11444, %11447
  %11451 = call float @dx.op.unary.f32(i32 6, float %11442)  ; FAbs(value)
  %11452 = call float @dx.op.unary.f32(i32 6, float %11443)  ; FAbs(value)
  %11453 = call float @dx.op.unary.f32(i32 6, float %11444)  ; FAbs(value)
  %11454 = call float @dx.op.unary.f32(i32 22, float %11451)  ; Frc(value)
  %11455 = call float @dx.op.unary.f32(i32 22, float %11452)  ; Frc(value)
  %11456 = call float @dx.op.unary.f32(i32 22, float %11453)  ; Frc(value)
  %11457 = fsub fast float -0.000000e+00, %11454
  %11458 = fsub fast float -0.000000e+00, %11455
  %11459 = fsub fast float -0.000000e+00, %11456
  %11460 = select i1 %11448, float %11454, float %11457
  %11461 = select i1 %11449, float %11455, float %11458
  %11462 = select i1 %11450, float %11456, float %11459
  %11463 = fmul fast float %11460, 6.000000e+00
  %11464 = fmul fast float %11461, 6.000000e+00
  %11465 = fmul fast float %11462, 6.000000e+00
  %11466 = fadd fast float %11463, -3.000000e+00
  %11467 = fadd fast float %11464, -3.000000e+00
  %11468 = fadd fast float %11465, -3.000000e+00
  %11469 = call float @dx.op.unary.f32(i32 6, float %11466)  ; FAbs(value)
  %11470 = call float @dx.op.unary.f32(i32 6, float %11467)  ; FAbs(value)
  %11471 = call float @dx.op.unary.f32(i32 6, float %11468)  ; FAbs(value)
  %11472 = fadd fast float %11469, -1.000000e+00
  %11473 = fadd fast float %11470, -1.000000e+00
  %11474 = fadd fast float %11471, -1.000000e+00
  %11475 = call float @dx.op.unary.f32(i32 7, float %11472)  ; Saturate(value)
  %11476 = call float @dx.op.unary.f32(i32 7, float %11473)  ; Saturate(value)
  %11477 = call float @dx.op.unary.f32(i32 7, float %11474)  ; Saturate(value)
  br label %11988

; <label>:11478                                   ; preds = %11372
  %11479 = icmp eq i32 %11036, 23
  br i1 %11479, label %11988, label %11480

; <label>:11480                                   ; preds = %11478
  %11481 = icmp eq i32 %11036, 24
  br i1 %11481, label %11482, label %11508

; <label>:11482                                   ; preds = %11480
  %11483 = and i32 %380, 255
  %11484 = uitofp i32 %11483 to float
  %11485 = fptoui float %11484 to i32
  %11486 = uitofp i32 %11485 to float
  %11487 = fadd fast float %11486, -4.000000e+00
  %11488 = fmul fast float %11487, 0x3FB5555560000000
  %11489 = call float @dx.op.unary.f32(i32 7, float %11488)  ; Saturate(value)
  %11490 = icmp eq i32 %11485, 0
  %11491 = select i1 %11490, float 0.000000e+00, float %11489
  %11492 = icmp ult i32 %11485, 2
  %11493 = select i1 %11492, float 0.000000e+00, float %11489
  %11494 = add i32 %11485, -1
  %11495 = icmp ult i32 %11494, 2
  %11496 = select i1 %11495, float 1.000000e+00, float %11491
  %11497 = icmp ult i32 %11485, 4
  %11498 = select i1 %11497, float 0.000000e+00, float 1.000000e+00
  %11499 = and i32 %11485, -2
  %11500 = icmp eq i32 %11499, 2
  %11501 = icmp eq i32 %11485, 4
  %11502 = select i1 %11501, float 1.000000e+00, float %11498
  %11503 = or i1 %11501, %11500
  %11504 = select i1 %11503, float 1.000000e+00, float %11493
  %11505 = add i32 %11485, -3
  %11506 = icmp ult i32 %11505, 2
  %11507 = select i1 %11506, float 0.000000e+00, float %11496
  br label %11988

; <label>:11508                                   ; preds = %11480
  %11509 = icmp eq i32 %11036, 25
  br i1 %11509, label %11988, label %11510

; <label>:11510                                   ; preds = %11508
  %11511 = icmp eq i32 %11036, 27
  br i1 %11511, label %11512, label %11567

; <label>:11512                                   ; preds = %11510
  %11513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11514 = extractvalue %dx.types.CBufRet.f32 %11513, 2
  %11515 = fptoui float %11514 to i32
  %11516 = fptoui float %179 to i32
  %11517 = and i32 %11516, 31
  %11518 = lshr i32 %11515, %11517
  %11519 = uitofp i32 %11518 to float
  %11520 = fmul fast float %11519, %81
  %11521 = fmul fast float %11519, %82
  %11522 = call float @dx.op.unary.f32(i32 27, float %11520)  ; Round_ni(value)
  %11523 = call float @dx.op.unary.f32(i32 27, float %11521)  ; Round_ni(value)
  %11524 = fptoui float %11522 to i32
  %11525 = fptoui float %11523 to i32
  %11526 = fptoui float %11519 to i32
  %11527 = mul i32 %11526, %11525
  %11528 = add i32 %11527, %11524
  %11529 = uitofp i32 %11528 to float
  %11530 = fmul fast float %11529, 0x3FE3C6EF40000000
  %11531 = call float @dx.op.unary.f32(i32 22, float %11530)  ; Frc(value)
  %11532 = fadd fast float %11531, 0x3FE5555560000000
  %11533 = fadd fast float %11531, 0x3FD5555560000000
  %11534 = fsub fast float -0.000000e+00, %11531
  %11535 = fsub fast float -0.000000e+00, %11532
  %11536 = fsub fast float -0.000000e+00, %11533
  %11537 = fcmp fast oge float %11531, %11534
  %11538 = fcmp fast oge float %11532, %11535
  %11539 = fcmp fast oge float %11533, %11536
  %11540 = call float @dx.op.unary.f32(i32 6, float %11531)  ; FAbs(value)
  %11541 = call float @dx.op.unary.f32(i32 6, float %11532)  ; FAbs(value)
  %11542 = call float @dx.op.unary.f32(i32 6, float %11533)  ; FAbs(value)
  %11543 = call float @dx.op.unary.f32(i32 22, float %11540)  ; Frc(value)
  %11544 = call float @dx.op.unary.f32(i32 22, float %11541)  ; Frc(value)
  %11545 = call float @dx.op.unary.f32(i32 22, float %11542)  ; Frc(value)
  %11546 = fsub fast float -0.000000e+00, %11543
  %11547 = fsub fast float -0.000000e+00, %11544
  %11548 = fsub fast float -0.000000e+00, %11545
  %11549 = select i1 %11537, float %11543, float %11546
  %11550 = select i1 %11538, float %11544, float %11547
  %11551 = select i1 %11539, float %11545, float %11548
  %11552 = fmul fast float %11549, 6.000000e+00
  %11553 = fmul fast float %11550, 6.000000e+00
  %11554 = fmul fast float %11551, 6.000000e+00
  %11555 = fadd fast float %11552, -3.000000e+00
  %11556 = fadd fast float %11553, -3.000000e+00
  %11557 = fadd fast float %11554, -3.000000e+00
  %11558 = call float @dx.op.unary.f32(i32 6, float %11555)  ; FAbs(value)
  %11559 = call float @dx.op.unary.f32(i32 6, float %11556)  ; FAbs(value)
  %11560 = call float @dx.op.unary.f32(i32 6, float %11557)  ; FAbs(value)
  %11561 = fadd fast float %11558, -1.000000e+00
  %11562 = fadd fast float %11559, -1.000000e+00
  %11563 = fadd fast float %11560, -1.000000e+00
  %11564 = call float @dx.op.unary.f32(i32 7, float %11561)  ; Saturate(value)
  %11565 = call float @dx.op.unary.f32(i32 7, float %11562)  ; Saturate(value)
  %11566 = call float @dx.op.unary.f32(i32 7, float %11563)  ; Saturate(value)
  br label %11988

; <label>:11567                                   ; preds = %11510
  %11568 = icmp eq i32 %11036, 30
  br i1 %11568, label %11569, label %11609

; <label>:11569                                   ; preds = %11567
  %11570 = fcmp fast olt float %430, 0.000000e+00
  br i1 %11570, label %11988, label %11571

; <label>:11571                                   ; preds = %11569
  %11572 = fmul fast float %430, 0x3FE3C6EF40000000
  %11573 = call float @dx.op.unary.f32(i32 22, float %11572)  ; Frc(value)
  %11574 = fadd fast float %11573, 0x3FE5555560000000
  %11575 = fadd fast float %11573, 0x3FD5555560000000
  %11576 = fsub fast float -0.000000e+00, %11573
  %11577 = fsub fast float -0.000000e+00, %11574
  %11578 = fsub fast float -0.000000e+00, %11575
  %11579 = fcmp fast oge float %11573, %11576
  %11580 = fcmp fast oge float %11574, %11577
  %11581 = fcmp fast oge float %11575, %11578
  %11582 = call float @dx.op.unary.f32(i32 6, float %11573)  ; FAbs(value)
  %11583 = call float @dx.op.unary.f32(i32 6, float %11574)  ; FAbs(value)
  %11584 = call float @dx.op.unary.f32(i32 6, float %11575)  ; FAbs(value)
  %11585 = call float @dx.op.unary.f32(i32 22, float %11582)  ; Frc(value)
  %11586 = call float @dx.op.unary.f32(i32 22, float %11583)  ; Frc(value)
  %11587 = call float @dx.op.unary.f32(i32 22, float %11584)  ; Frc(value)
  %11588 = fsub fast float -0.000000e+00, %11585
  %11589 = fsub fast float -0.000000e+00, %11586
  %11590 = fsub fast float -0.000000e+00, %11587
  %11591 = select i1 %11579, float %11585, float %11588
  %11592 = select i1 %11580, float %11586, float %11589
  %11593 = select i1 %11581, float %11587, float %11590
  %11594 = fmul fast float %11591, 6.000000e+00
  %11595 = fmul fast float %11592, 6.000000e+00
  %11596 = fmul fast float %11593, 6.000000e+00
  %11597 = fadd fast float %11594, -3.000000e+00
  %11598 = fadd fast float %11595, -3.000000e+00
  %11599 = fadd fast float %11596, -3.000000e+00
  %11600 = call float @dx.op.unary.f32(i32 6, float %11597)  ; FAbs(value)
  %11601 = call float @dx.op.unary.f32(i32 6, float %11598)  ; FAbs(value)
  %11602 = call float @dx.op.unary.f32(i32 6, float %11599)  ; FAbs(value)
  %11603 = fadd fast float %11600, -1.000000e+00
  %11604 = fadd fast float %11601, -1.000000e+00
  %11605 = fadd fast float %11602, -1.000000e+00
  %11606 = call float @dx.op.unary.f32(i32 7, float %11603)  ; Saturate(value)
  %11607 = call float @dx.op.unary.f32(i32 7, float %11604)  ; Saturate(value)
  %11608 = call float @dx.op.unary.f32(i32 7, float %11605)  ; Saturate(value)
  br label %11988

; <label>:11609                                   ; preds = %11567
  %11610 = add i32 %11036, -31
  %11611 = icmp ult i32 %11610, 2
  br i1 %11611, label %11612, label %11620

; <label>:11612                                   ; preds = %11609
  %11613 = fcmp fast olt float %431, 0.000000e+00
  %11614 = call float @dx.op.unary.f32(i32 6, float %431)  ; FAbs(value)
  %11615 = fmul fast float %11614, 5.000000e-01
  %11616 = call float @dx.op.unary.f32(i32 7, float %11615)  ; Saturate(value)
  %11617 = select i1 %11613, float 0.000000e+00, float %11616
  %11618 = select i1 %11613, float %11616, float 0.000000e+00
  %11619 = fadd fast float %11616, 5.000000e-01
  br label %11988

; <label>:11620                                   ; preds = %11609
  %11621 = icmp eq i32 %11036, 33
  br i1 %11621, label %11622, label %11625

; <label>:11622                                   ; preds = %11620
  %11623 = icmp ne i32 %1874, 0
  %11624 = uitofp i1 %11623 to float
  br label %11988

; <label>:11625                                   ; preds = %11620
  %11626 = icmp eq i32 %11036, 34
  br i1 %11626, label %11627, label %11636

; <label>:11627                                   ; preds = %11625
  %11628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %11629 = extractvalue %dx.types.CBufRet.f32 %11628, 2
  %11630 = fsub fast float %157, %308
  %11631 = fadd fast float %11630, %11629
  %11632 = fcmp fast ult float %11631, %1786
  br i1 %11632, label %11633, label %11988

; <label>:11633                                   ; preds = %11627
  %11634 = fcmp fast ult float %11631, %1783
  br i1 %11634, label %11635, label %11988

; <label>:11635                                   ; preds = %11633
  br label %11988

; <label>:11636                                   ; preds = %11625
  %11637 = icmp eq i32 %11036, 36
  br i1 %11637, label %11638, label %11670

; <label>:11638                                   ; preds = %11636
  %11639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %11640 = extractvalue %dx.types.CBufRet.i32 %11639, 0
  %11641 = and i32 %11640, 2048
  %11642 = icmp ne i32 %11641, 0
  %11643 = call float @dx.op.binary.f32(i32 35, float %2500, float %2501)  ; FMax(a,b)
  %11644 = call float @dx.op.binary.f32(i32 35, float %2499, float %11643)  ; FMax(a,b)
  %11645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11646 = extractvalue %dx.types.CBufRet.f32 %11645, 1
  %11647 = fcmp fast oge float %11644, %11646
  %11648 = and i1 %11642, %11647
  br i1 %11648, label %11649, label %11655

; <label>:11649                                   ; preds = %11638
  %11650 = fsub fast float 1.000000e+00, %11015
  %11651 = fmul fast float %11650, 5.000000e-01
  %11652 = fadd fast float %11651, %11015
  %11653 = fmul fast float %11016, 5.000000e-01
  %11654 = fmul fast float %11017, 5.000000e-01
  br label %11988

; <label>:11655                                   ; preds = %11638
  %11656 = call float @dx.op.dot3.f32(i32 55, float %2586, float %2587, float %2588, float %2413, float %2414, float %2415)  ; Dot3(ax,ay,az,bx,by,bz)
  %11657 = and i32 %11640, 1024
  %11658 = icmp ne i32 %11657, 0
  %11659 = extractvalue %dx.types.CBufRet.f32 %11645, 2
  %11660 = fcmp fast ole float %11656, %11659
  %11661 = and i1 %11658, %11660
  br i1 %11661, label %11662, label %11988

; <label>:11662                                   ; preds = %11655
  %11663 = fsub fast float 1.000000e+00, %11015
  %11664 = fsub fast float 1.000000e+00, %11016
  %11665 = fmul fast float %11663, 5.000000e-01
  %11666 = fmul fast float %11664, 5.000000e-01
  %11667 = fadd fast float %11665, %11015
  %11668 = fadd fast float %11666, %11016
  %11669 = fmul fast float %11017, 5.000000e-01
  br label %11988

; <label>:11670                                   ; preds = %11636
  %11671 = icmp eq i32 %11036, 40
  br i1 %11671, label %11672, label %11909

; <label>:11672                                   ; preds = %11670
  %11673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %11674 = extractvalue %dx.types.CBufRet.f32 %11673, 0
  %11675 = fcmp fast ogt float %2483, %11674
  %11676 = zext i1 %11675 to i32
  %11677 = extractvalue %dx.types.CBufRet.f32 %11673, 1
  %11678 = fcmp fast ogt float %2483, %11677
  %11679 = zext i1 %11678 to i32
  %11680 = add nuw nsw i32 %11679, %11676
  %11681 = extractvalue %dx.types.CBufRet.f32 %11673, 2
  %11682 = fcmp fast ogt float %2483, %11681
  %11683 = zext i1 %11682 to i32
  %11684 = add nuw nsw i32 %11680, %11683
  %11685 = icmp ult i32 %11684, 3
  %11686 = zext i1 %11685 to i32
  %11687 = shl nuw nsw i32 %11684, 2
  %11688 = add nuw nsw i32 %11687, 48
  %11689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11688)  ; CBufferLoadLegacy(handle,regIndex)
  %11690 = extractvalue %dx.types.CBufRet.f32 %11689, 1
  %11691 = fcmp fast ogt float %2483, %11690
  %11692 = zext i1 %11691 to i32
  %11693 = or i32 %11687, 1
  %11694 = add nuw nsw i32 %11693, 48
  %11695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11694)  ; CBufferLoadLegacy(handle,regIndex)
  %11696 = extractvalue %dx.types.CBufRet.f32 %11695, 1
  %11697 = fcmp fast ogt float %2483, %11696
  %11698 = zext i1 %11697 to i32
  %11699 = add nuw nsw i32 %11698, %11692
  %11700 = or i32 %11687, 2
  %11701 = add nuw nsw i32 %11700, 48
  %11702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11701)  ; CBufferLoadLegacy(handle,regIndex)
  %11703 = extractvalue %dx.types.CBufRet.f32 %11702, 1
  %11704 = fcmp fast ogt float %2483, %11703
  %11705 = zext i1 %11704 to i32
  %11706 = add nuw nsw i32 %11699, %11705
  %11707 = call i32 @dx.op.binary.i32(i32 40, i32 %11706, i32 3)  ; UMin(a,b)
  %11708 = add i32 %11687, %11707
  %11709 = call i32 @dx.op.binary.i32(i32 40, i32 %11708, i32 12)  ; UMin(a,b)
  %11710 = add i32 %11709, 48
  %11711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11710)  ; CBufferLoadLegacy(handle,regIndex)
  %11712 = extractvalue %dx.types.CBufRet.f32 %11711, 0
  %11713 = fcmp fast oge float %2483, %11712
  %11714 = zext i1 %11713 to i32
  %11715 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %11686)  ; UMin(a,b)
  %11716 = call i32 @dx.op.binary.i32(i32 40, i32 %11714, i32 %11715)  ; UMin(a,b)
  %11717 = fmul fast float %11026, 7.500000e-01
  %11718 = fadd fast float %11717, %11024
  %11719 = fcmp fast ult float %11021, %11718
  br i1 %11719, label %11759, label %11720

; <label>:11720                                   ; preds = %11672
  %11721 = uitofp i32 %11709 to float
  %11722 = fmul fast float %11721, 0x3FE3C6EF40000000
  %11723 = call float @dx.op.unary.f32(i32 22, float %11722)  ; Frc(value)
  %11724 = fadd fast float %11723, 0x3FE5555560000000
  %11725 = fadd fast float %11723, 0x3FD5555560000000
  %11726 = fsub fast float -0.000000e+00, %11723
  %11727 = fsub fast float -0.000000e+00, %11724
  %11728 = fsub fast float -0.000000e+00, %11725
  %11729 = fcmp fast oge float %11723, %11726
  %11730 = fcmp fast oge float %11724, %11727
  %11731 = fcmp fast oge float %11725, %11728
  %11732 = call float @dx.op.unary.f32(i32 6, float %11723)  ; FAbs(value)
  %11733 = call float @dx.op.unary.f32(i32 6, float %11724)  ; FAbs(value)
  %11734 = call float @dx.op.unary.f32(i32 6, float %11725)  ; FAbs(value)
  %11735 = call float @dx.op.unary.f32(i32 22, float %11732)  ; Frc(value)
  %11736 = call float @dx.op.unary.f32(i32 22, float %11733)  ; Frc(value)
  %11737 = call float @dx.op.unary.f32(i32 22, float %11734)  ; Frc(value)
  %11738 = fsub fast float -0.000000e+00, %11735
  %11739 = fsub fast float -0.000000e+00, %11736
  %11740 = fsub fast float -0.000000e+00, %11737
  %11741 = select i1 %11729, float %11735, float %11738
  %11742 = select i1 %11730, float %11736, float %11739
  %11743 = select i1 %11731, float %11737, float %11740
  %11744 = fmul fast float %11741, 6.000000e+00
  %11745 = fmul fast float %11742, 6.000000e+00
  %11746 = fmul fast float %11743, 6.000000e+00
  %11747 = fadd fast float %11744, -3.000000e+00
  %11748 = fadd fast float %11745, -3.000000e+00
  %11749 = fadd fast float %11746, -3.000000e+00
  %11750 = call float @dx.op.unary.f32(i32 6, float %11747)  ; FAbs(value)
  %11751 = call float @dx.op.unary.f32(i32 6, float %11748)  ; FAbs(value)
  %11752 = call float @dx.op.unary.f32(i32 6, float %11749)  ; FAbs(value)
  %11753 = fadd fast float %11750, -1.000000e+00
  %11754 = fadd fast float %11751, -1.000000e+00
  %11755 = fadd fast float %11752, -1.000000e+00
  %11756 = call float @dx.op.unary.f32(i32 7, float %11753)  ; Saturate(value)
  %11757 = call float @dx.op.unary.f32(i32 7, float %11754)  ; Saturate(value)
  %11758 = call float @dx.op.unary.f32(i32 7, float %11755)  ; Saturate(value)
  br label %11896

; <label>:11759                                   ; preds = %11672
  %11760 = fmul fast float %11026, 5.000000e-01
  %11761 = fadd fast float %11760, %11024
  %11762 = fcmp fast ult float %11021, %11761
  br i1 %11762, label %11789, label %11763

; <label>:11763                                   ; preds = %11759
  %11764 = add i32 %11716, 4
  %11765 = icmp eq i32 %11764, 0
  br i1 %11765, label %11896, label %11766

; <label>:11766                                   ; preds = %11763
  br label %11767

; <label>:11767                                   ; preds = %11767, %11766
  %11768 = phi float [ %11784, %11767 ], [ 0.000000e+00, %11766 ]
  %11769 = phi i32 [ %11785, %11767 ], [ 0, %11766 ]
  %11770 = add i32 %11709, 32
  %11771 = add i32 %11770, %11769
  %11772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11771)  ; CBufferLoadLegacy(handle,regIndex)
  %11773 = extractvalue %dx.types.CBufRet.f32 %11772, 0
  %11774 = extractvalue %dx.types.CBufRet.f32 %11772, 1
  %11775 = extractvalue %dx.types.CBufRet.f32 %11772, 2
  %11776 = extractvalue %dx.types.CBufRet.f32 %11772, 3
  %11777 = fmul fast float %11773, %2483
  %11778 = fadd fast float %11777, %11774
  %11779 = call float @dx.op.unary.f32(i32 7, float %11778)  ; Saturate(value)
  %11780 = fmul fast float %11775, %2483
  %11781 = fadd fast float %11780, %11776
  %11782 = call float @dx.op.unary.f32(i32 7, float %11781)  ; Saturate(value)
  %11783 = call float @dx.op.binary.f32(i32 36, float %11779, float %11782)  ; FMin(a,b)
  %11784 = fadd fast float %11783, %11768
  %11785 = add nuw i32 %11769, 1
  %11786 = icmp eq i32 %11785, %11764
  br i1 %11786, label %11787, label %11767

; <label>:11787                                   ; preds = %11767
  %11788 = fmul float %11784, 2.500000e-01
  br label %11896

; <label>:11789                                   ; preds = %11759
  %11790 = fmul fast float %11026, 2.500000e-01
  %11791 = fadd fast float %11790, %11024
  %11792 = fcmp fast ult float %11021, %11791
  br i1 %11792, label %11892, label %11793

; <label>:11793                                   ; preds = %11789
  %11794 = add i32 %11709, 32
  %11795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %68, i32 %11794)  ; CBufferLoadLegacy(handle,regIndex)
  %11796 = extractvalue %dx.types.CBufRet.f32 %11795, 0
  %11797 = extractvalue %dx.types.CBufRet.f32 %11795, 1
  %11798 = extractvalue %dx.types.CBufRet.f32 %11795, 2
  %11799 = extractvalue %dx.types.CBufRet.f32 %11795, 3
  %11800 = fmul fast float %11796, %2483
  %11801 = fadd fast float %11800, %11797
  %11802 = call float @dx.op.unary.f32(i32 7, float %11801)  ; Saturate(value)
  %11803 = fmul fast float %11798, %2483
  %11804 = fadd fast float %11803, %11799
  %11805 = call float @dx.op.unary.f32(i32 7, float %11804)  ; Saturate(value)
  %11806 = call float @dx.op.binary.f32(i32 36, float %11802, float %11805)  ; FMin(a,b)
  %11807 = uitofp i32 %11709 to float
  %11808 = fmul fast float %11807, 0x3FE3C6EF40000000
  %11809 = call float @dx.op.unary.f32(i32 22, float %11808)  ; Frc(value)
  %11810 = fadd fast float %11809, 0x3FE5555560000000
  %11811 = fadd fast float %11809, 0x3FD5555560000000
  %11812 = fsub fast float -0.000000e+00, %11809
  %11813 = fsub fast float -0.000000e+00, %11810
  %11814 = fsub fast float -0.000000e+00, %11811
  %11815 = fcmp fast oge float %11809, %11812
  %11816 = fcmp fast oge float %11810, %11813
  %11817 = fcmp fast oge float %11811, %11814
  %11818 = call float @dx.op.unary.f32(i32 6, float %11809)  ; FAbs(value)
  %11819 = call float @dx.op.unary.f32(i32 6, float %11810)  ; FAbs(value)
  %11820 = call float @dx.op.unary.f32(i32 6, float %11811)  ; FAbs(value)
  %11821 = call float @dx.op.unary.f32(i32 22, float %11818)  ; Frc(value)
  %11822 = call float @dx.op.unary.f32(i32 22, float %11819)  ; Frc(value)
  %11823 = call float @dx.op.unary.f32(i32 22, float %11820)  ; Frc(value)
  %11824 = fsub fast float -0.000000e+00, %11821
  %11825 = fsub fast float -0.000000e+00, %11822
  %11826 = fsub fast float -0.000000e+00, %11823
  %11827 = select i1 %11815, float %11821, float %11824
  %11828 = select i1 %11816, float %11822, float %11825
  %11829 = select i1 %11817, float %11823, float %11826
  %11830 = fmul fast float %11827, 6.000000e+00
  %11831 = fmul fast float %11828, 6.000000e+00
  %11832 = fmul fast float %11829, 6.000000e+00
  %11833 = fadd fast float %11830, -3.000000e+00
  %11834 = fadd fast float %11831, -3.000000e+00
  %11835 = fadd fast float %11832, -3.000000e+00
  %11836 = call float @dx.op.unary.f32(i32 6, float %11833)  ; FAbs(value)
  %11837 = call float @dx.op.unary.f32(i32 6, float %11834)  ; FAbs(value)
  %11838 = call float @dx.op.unary.f32(i32 6, float %11835)  ; FAbs(value)
  %11839 = fadd fast float %11836, -1.000000e+00
  %11840 = fadd fast float %11837, -1.000000e+00
  %11841 = fadd fast float %11838, -1.000000e+00
  %11842 = call float @dx.op.unary.f32(i32 7, float %11839)  ; Saturate(value)
  %11843 = call float @dx.op.unary.f32(i32 7, float %11840)  ; Saturate(value)
  %11844 = call float @dx.op.unary.f32(i32 7, float %11841)  ; Saturate(value)
  %11845 = fadd fast float %11807, 1.000000e+00
  %11846 = fmul fast float %11845, 0x3FE3C6EF40000000
  %11847 = call float @dx.op.unary.f32(i32 22, float %11846)  ; Frc(value)
  %11848 = fadd fast float %11847, 0x3FE5555560000000
  %11849 = fadd fast float %11847, 0x3FD5555560000000
  %11850 = fsub fast float -0.000000e+00, %11847
  %11851 = fsub fast float -0.000000e+00, %11848
  %11852 = fsub fast float -0.000000e+00, %11849
  %11853 = fcmp fast oge float %11847, %11850
  %11854 = fcmp fast oge float %11848, %11851
  %11855 = fcmp fast oge float %11849, %11852
  %11856 = call float @dx.op.unary.f32(i32 6, float %11847)  ; FAbs(value)
  %11857 = call float @dx.op.unary.f32(i32 6, float %11848)  ; FAbs(value)
  %11858 = call float @dx.op.unary.f32(i32 6, float %11849)  ; FAbs(value)
  %11859 = call float @dx.op.unary.f32(i32 22, float %11856)  ; Frc(value)
  %11860 = call float @dx.op.unary.f32(i32 22, float %11857)  ; Frc(value)
  %11861 = call float @dx.op.unary.f32(i32 22, float %11858)  ; Frc(value)
  %11862 = fsub fast float -0.000000e+00, %11859
  %11863 = fsub fast float -0.000000e+00, %11860
  %11864 = fsub fast float -0.000000e+00, %11861
  %11865 = select i1 %11853, float %11859, float %11862
  %11866 = select i1 %11854, float %11860, float %11863
  %11867 = select i1 %11855, float %11861, float %11864
  %11868 = fmul fast float %11865, 6.000000e+00
  %11869 = fmul fast float %11866, 6.000000e+00
  %11870 = fmul fast float %11867, 6.000000e+00
  %11871 = fadd fast float %11868, -3.000000e+00
  %11872 = fadd fast float %11869, -3.000000e+00
  %11873 = fadd fast float %11870, -3.000000e+00
  %11874 = call float @dx.op.unary.f32(i32 6, float %11871)  ; FAbs(value)
  %11875 = call float @dx.op.unary.f32(i32 6, float %11872)  ; FAbs(value)
  %11876 = call float @dx.op.unary.f32(i32 6, float %11873)  ; FAbs(value)
  %11877 = fadd fast float %11874, -1.000000e+00
  %11878 = fadd fast float %11875, -1.000000e+00
  %11879 = fadd fast float %11876, -1.000000e+00
  %11880 = call float @dx.op.unary.f32(i32 7, float %11877)  ; Saturate(value)
  %11881 = call float @dx.op.unary.f32(i32 7, float %11878)  ; Saturate(value)
  %11882 = call float @dx.op.unary.f32(i32 7, float %11879)  ; Saturate(value)
  %11883 = fsub fast float %11880, %11842
  %11884 = fsub fast float %11881, %11843
  %11885 = fsub fast float %11882, %11844
  %11886 = fmul fast float %11883, %11806
  %11887 = fmul fast float %11884, %11806
  %11888 = fmul fast float %11885, %11806
  %11889 = fadd fast float %11886, %11842
  %11890 = fadd fast float %11887, %11843
  %11891 = fadd fast float %11888, %11844
  br label %11896

; <label>:11892                                   ; preds = %11789
  %11893 = icmp ne i32 %11716, 0
  %11894 = select i1 %11893, float 1.000000e+00, float 0.000000e+00
  %11895 = select i1 %11893, float 0.000000e+00, float 1.000000e+00
  br label %11896

; <label>:11896                                   ; preds = %11892, %11793, %11787, %11763, %11720
  %11897 = phi float [ %11756, %11720 ], [ %11889, %11793 ], [ %11894, %11892 ], [ 0.000000e+00, %11763 ], [ %11788, %11787 ]
  %11898 = phi float [ %11757, %11720 ], [ %11890, %11793 ], [ %11895, %11892 ], [ 0.000000e+00, %11763 ], [ %11788, %11787 ]
  %11899 = phi float [ %11758, %11720 ], [ %11891, %11793 ], [ 0.000000e+00, %11892 ], [ 0.000000e+00, %11763 ], [ %11788, %11787 ]
  %11900 = fsub fast float %11897, %11015
  %11901 = fsub fast float %11898, %11016
  %11902 = fsub fast float %11899, %11017
  %11903 = fmul fast float %11900, 5.000000e-01
  %11904 = fmul fast float %11901, 5.000000e-01
  %11905 = fmul fast float %11902, 5.000000e-01
  %11906 = fadd fast float %11903, %11015
  %11907 = fadd fast float %11904, %11016
  %11908 = fadd fast float %11905, %11017
  br label %11988

; <label>:11909                                   ; preds = %11670
  %11910 = icmp eq i32 %11036, 41
  br i1 %11910, label %11911, label %11980

; <label>:11911                                   ; preds = %11909
  %11912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %68, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11913 = extractvalue %dx.types.CBufRet.i32 %11912, 0
  %11914 = icmp eq i32 %11913, 2
  %11915 = and i1 %922, %11914
  %11916 = icmp eq i32 %11913, 3
  %11917 = and i1 %924, %11916
  %11918 = or i1 %11917, %11915
  %11919 = icmp eq i32 %11913, 4
  %11920 = and i1 %936, %11919
  %11921 = or i1 %11920, %11918
  %11922 = icmp eq i32 %11913, 5
  %11923 = icmp ne i32 %939, 0
  %11924 = and i1 %11923, %11922
  %11925 = or i1 %11924, %11921
  %11926 = icmp eq i32 %11913, 6
  %11927 = and i1 %942, %11926
  %11928 = or i1 %11927, %11925
  %11929 = icmp eq i32 %11913, 8
  %11930 = and i32 %1259, 64
  %11931 = icmp ne i32 %11930, 0
  %11932 = and i1 %11931, %11929
  %11933 = or i1 %11932, %11928
  %11934 = icmp eq i32 %11913, 9
  %11935 = and i32 %1264, 128
  %11936 = icmp ne i32 %11935, 0
  %11937 = and i1 %11936, %11934
  %11938 = or i1 %11937, %11933
  %11939 = icmp eq i32 %11913, 11
  %11940 = and i32 %1264, 160
  %11941 = icmp ne i32 %11940, 0
  %11942 = and i1 %11941, %11939
  %11943 = or i1 %11942, %11938
  %11944 = icmp eq i32 %11913, 13
  %11945 = icmp ne i32 %945, 0
  %11946 = and i1 %11945, %11944
  %11947 = or i1 %11946, %11943
  %11948 = icmp eq i32 %11913, 14
  %11949 = and i1 %1722, %11948
  %11950 = or i1 %11949, %11947
  %11951 = icmp eq i32 %11913, 7
  %11952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %11953 = extractvalue %dx.types.ResRet.i32 %11952, 0
  %11954 = and i32 %11953, 1024
  %11955 = icmp ne i32 %11954, 0
  %11956 = and i1 %11951, %11955
  %11957 = or i1 %11956, %11950
  %11958 = icmp eq i32 %11913, 10
  %11959 = and i32 %11953, 2048
  %11960 = icmp ne i32 %11959, 0
  %11961 = and i1 %11958, %11960
  %11962 = or i1 %11961, %11957
  %11963 = icmp eq i32 %11913, 12
  %11964 = and i32 %11953, 3072
  %11965 = icmp ne i32 %11964, 0
  %11966 = and i1 %11963, %11965
  %11967 = or i1 %11966, %11962
  %11968 = icmp eq i32 %11913, 15
  %11969 = and i32 %11953, 4096
  %11970 = icmp ne i32 %11969, 0
  %11971 = and i1 %11968, %11970
  %11972 = or i1 %11971, %11967
  %11973 = select i1 %11972, float 5.000000e-01, float %11015
  %11974 = select i1 %11972, float 0x3FB99999A0000000, float %11016
  %11975 = select i1 %11972, float 0x3FB99999A0000000, float %11017
  %11976 = fcmp fast ogt float %74, 0.000000e+00
  %11977 = and i1 %11976, %11951
  %11978 = select i1 %11977, float 1.000000e+00, float %11974
  %11979 = select i1 %11977, float 1.000000e+00, float %11975
  br label %11988

; <label>:11980                                   ; preds = %11909
  %11981 = icmp eq i32 %11036, 45
  br i1 %11981, label %11982, label %11988

; <label>:11982                                   ; preds = %11980
  %11983 = fcmp fast ogt float %1633, %1648
  %11984 = fsub fast float %1633, %1648
  %11985 = call float @dx.op.unary.f32(i32 6, float %11984)  ; FAbs(value)
  %11986 = select i1 %11983, float %11985, float 0.000000e+00
  %11987 = select i1 %11983, float 0.000000e+00, float %11985
  br label %11988

; <label>:11988                                   ; preds = %11982, %11980, %11911, %11896, %11662, %11655, %11649, %11635, %11633, %11627, %11622, %11612, %11571, %11569, %11512, %11508, %11482, %11478, %11416, %11374, %11319, %11314, %11300, %11258, %11251, %11246, %11242, %11240, %11238, %11236, %11234, %11232, %11230, %11228, %11226, %11224, %11210, %11206, %11204, %11202, %11193, %11102, %11082, %11041, %11014
  %11989 = phi float [ %11077, %11041 ], [ %11083, %11082 ], [ %11187, %11102 ], [ %11199, %11193 ], [ %11219, %11210 ], [ %11225, %11224 ], [ %11249, %11246 ], [ %11316, %11314 ], [ %11369, %11319 ], [ %11475, %11416 ], [ %11502, %11482 ], [ %11564, %11512 ], [ %11606, %11571 ], [ %11619, %11612 ], [ %11624, %11622 ], [ 1.000000e+00, %11635 ], [ %11652, %11649 ], [ %11667, %11662 ], [ %11015, %11655 ], [ %11906, %11896 ], [ %11973, %11911 ], [ %11986, %11982 ], [ %11015, %11980 ], [ %11015, %11014 ], [ 0.000000e+00, %11202 ], [ 0.000000e+00, %11240 ], [ %74, %11251 ], [ 1.000000e+00, %11300 ], [ 0.000000e+00, %11258 ], [ 0.000000e+00, %11374 ], [ 0.000000e+00, %11569 ], [ 0.000000e+00, %11627 ], [ 0.000000e+00, %11633 ], [ %306, %11204 ], [ %321, %11206 ], [ %361, %11226 ], [ %374, %11228 ], [ %628, %11230 ], [ %80, %11232 ], [ %920, %11234 ], [ %921, %11236 ], [ %1672, %11238 ], [ %74, %11242 ], [ 0.000000e+00, %11478 ], [ 0.000000e+00, %11508 ]
  %11990 = phi float [ %11078, %11041 ], [ %11084, %11082 ], [ %11188, %11102 ], [ %11200, %11193 ], [ %11221, %11210 ], [ %11225, %11224 ], [ %11250, %11246 ], [ %11317, %11314 ], [ %11370, %11319 ], [ %11476, %11416 ], [ %11504, %11482 ], [ %11565, %11512 ], [ %11607, %11571 ], [ %11617, %11612 ], [ %11624, %11622 ], [ 0.000000e+00, %11635 ], [ %11653, %11649 ], [ %11668, %11662 ], [ %11016, %11655 ], [ %11907, %11896 ], [ %11978, %11911 ], [ %11987, %11982 ], [ %11016, %11980 ], [ %11016, %11014 ], [ 0.000000e+00, %11202 ], [ 1.000000e+00, %11240 ], [ %75, %11251 ], [ 0.000000e+00, %11300 ], [ 1.000000e+00, %11258 ], [ 1.000000e+00, %11374 ], [ 1.000000e+00, %11569 ], [ 0.000000e+00, %11627 ], [ 1.000000e+00, %11633 ], [ %306, %11204 ], [ %321, %11206 ], [ %361, %11226 ], [ %374, %11228 ], [ %628, %11230 ], [ %80, %11232 ], [ %920, %11234 ], [ %921, %11236 ], [ %1672, %11238 ], [ %75, %11242 ], [ 0.000000e+00, %11478 ], [ 0.000000e+00, %11508 ]
  %11991 = phi float [ %11079, %11041 ], [ %11085, %11082 ], [ %11189, %11102 ], [ %11201, %11193 ], [ 0.000000e+00, %11210 ], [ %11225, %11224 ], [ %919, %11246 ], [ %11318, %11314 ], [ %11371, %11319 ], [ %11477, %11416 ], [ %11507, %11482 ], [ %11566, %11512 ], [ %11608, %11571 ], [ %11618, %11612 ], [ %11624, %11622 ], [ 0.000000e+00, %11635 ], [ %11654, %11649 ], [ %11669, %11662 ], [ %11017, %11655 ], [ %11908, %11896 ], [ %11979, %11911 ], [ 0.000000e+00, %11982 ], [ %11017, %11980 ], [ %11017, %11014 ], [ 0.000000e+00, %11202 ], [ 1.000000e+00, %11240 ], [ %76, %11251 ], [ 1.000000e+00, %11300 ], [ 1.000000e+00, %11258 ], [ 1.000000e+00, %11374 ], [ 0.000000e+00, %11569 ], [ 1.000000e+00, %11627 ], [ 0.000000e+00, %11633 ], [ %306, %11204 ], [ %321, %11206 ], [ %361, %11226 ], [ %374, %11228 ], [ %628, %11230 ], [ %80, %11232 ], [ %920, %11234 ], [ %921, %11236 ], [ %1672, %11238 ], [ %76, %11242 ], [ 0.000000e+00, %11478 ], [ 1.000000e+00, %11508 ]
  %11992 = fadd fast float %1887, 0x3FE3C6EF40000000
  %11993 = call float @dx.op.unary.f32(i32 22, float %11992)  ; Frc(value)
  %11994 = call float @dx.op.unary.f32(i32 23, float %11989)  ; Log(value)
  %11995 = fadd fast float %11994, -7.000000e+00
  %11996 = call float @dx.op.unary.f32(i32 21, float %11995)  ; Exp(value)
  %11997 = fmul fast float %11993, 2.000000e+00
  %11998 = fadd fast float %11997, -1.000000e+00
  %11999 = fmul fast float %11996, %11998
  %12000 = fcmp fast ogt float %11989, 0.000000e+00
  %12001 = select i1 %12000, float %11999, float 0.000000e+00
  %12002 = fadd fast float %12001, %11989
  %12003 = fadd fast float %1887, 0x3FF3C6EF40000000
  %12004 = call float @dx.op.unary.f32(i32 22, float %12003)  ; Frc(value)
  %12005 = call float @dx.op.unary.f32(i32 23, float %11990)  ; Log(value)
  %12006 = fadd fast float %12005, -7.000000e+00
  %12007 = call float @dx.op.unary.f32(i32 21, float %12006)  ; Exp(value)
  %12008 = fmul fast float %12004, 2.000000e+00
  %12009 = fadd fast float %12008, -1.000000e+00
  %12010 = fmul fast float %12007, %12009
  %12011 = fcmp fast ogt float %11990, 0.000000e+00
  %12012 = select i1 %12011, float %12010, float 0.000000e+00
  %12013 = fadd fast float %12012, %11990
  %12014 = fadd fast float %1887, 0x3FFDAA66E0000000
  %12015 = call float @dx.op.unary.f32(i32 22, float %12014)  ; Frc(value)
  %12016 = call float @dx.op.unary.f32(i32 23, float %11991)  ; Log(value)
  %12017 = fadd fast float %12016, -6.000000e+00
  %12018 = call float @dx.op.unary.f32(i32 21, float %12017)  ; Exp(value)
  %12019 = fmul fast float %12015, 2.000000e+00
  %12020 = fadd fast float %12019, -1.000000e+00
  %12021 = fmul fast float %12018, %12020
  %12022 = fcmp fast ogt float %11991, 0.000000e+00
  %12023 = select i1 %12022, float %12021, float 0.000000e+00
  %12024 = fadd fast float %12023, %11991
  %12025 = call float @dx.op.binary.f32(i32 36, float %12002, float 3.225500e+04)  ; FMin(a,b)
  %12026 = call float @dx.op.binary.f32(i32 36, float %12013, float 3.225500e+04)  ; FMin(a,b)
  %12027 = call float @dx.op.binary.f32(i32 36, float %12024, float 3.225500e+04)  ; FMin(a,b)
  %12028 = fmul fast float %12025, %9010
  %12029 = fmul fast float %12026, %9010
  %12030 = fmul fast float %12027, %9010
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %12028)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %12029)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %12030)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %9010)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:12031                                   ; preds = %10179
  %12032 = fcmp fast olt float %2542, %10162
  br i1 %12032, label %10165, label %12033

; <label>:12033                                   ; preds = %12031
  %12034 = fcmp fast olt float %2542, %10163
  br i1 %12034, label %10165, label %10366

; <label>:12035                                   ; preds = %10257
  %12036 = fcmp fast olt float %89, 5.120000e+02
  br i1 %12036, label %10243, label %12037

; <label>:12037                                   ; preds = %12035
  %12038 = fcmp fast olt float %89, 1.024000e+03
  br i1 %12038, label %10243, label %12039

; <label>:12039                                   ; preds = %12037
  %12040 = fcmp fast olt float %89, 1.536000e+03
  br i1 %12040, label %10243, label %12041

; <label>:12041                                   ; preds = %12039
  %12042 = fcmp fast olt float %89, 2.048000e+03
  br i1 %12042, label %10243, label %12043

; <label>:12043                                   ; preds = %12041
  %12044 = fcmp fast olt float %89, 3.072000e+03
  br i1 %12044, label %10243, label %12045

; <label>:12045                                   ; preds = %12043
  %12046 = fcmp fast olt float %89, 4.096000e+03
  br i1 %12046, label %10243, label %12047

; <label>:12047                                   ; preds = %12045
  %12048 = fcmp fast olt float %89, 6.144000e+03
  br i1 %12048, label %10243, label %12049

; <label>:12049                                   ; preds = %12047
  %12050 = fcmp fast olt float %89, 8.192000e+03
  br i1 %12050, label %10243, label %10366

; <label>:12051                                   ; preds = %10289
  %12052 = fcmp fast olt float %9106, %10272
  br i1 %12052, label %10275, label %12053

; <label>:12053                                   ; preds = %12051
  %12054 = fcmp fast olt float %9106, %10273
  br i1 %12054, label %10275, label %10366
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

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!85}
!dx.entryPoints = !{!86}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !68, !73, !77}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
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
!66 = !{i32 57, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 8, i32 1, i32 2, i32 0, !7}
!67 = !{i32 58, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 11, i32 1, i32 7, i32 0, !7}
!68 = !{!69, !71}
!69 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !70}
!70 = !{i32 1, i32 4}
!71 = !{i32 1, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !72}
!72 = !{i32 1, i32 1144}
!73 = !{!74, !75, !76}
!74 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!75 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!76 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!79 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!80 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!81 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!82 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!83 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!84 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!85 = !{[29 x i32] [i32 27, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 2, i32 4, i32 0, i32 1, i32 2, i32 4]}
!86 = !{void ()* @ps_main, !"ps_main", !87, !4, !108}
!87 = !{!88, !106, null}
!88 = !{!89, !92, !94, !96, !98, !99, !100, !101, !103, !104, !105}
!89 = !{i32 0, !"SV_Position", i8 9, i8 3, !90, i8 4, i32 1, i8 4, i32 0, i8 0, !91}
!90 = !{i32 0}
!91 = !{i32 3, i32 15}
!92 = !{i32 1, !"NORMAL", i8 9, i8 0, !90, i8 2, i32 1, i8 3, i32 1, i8 0, !93}
!93 = !{i32 3, i32 7}
!94 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !90, i8 2, i32 1, i8 2, i32 2, i8 0, !95}
!95 = !{i32 3, i32 3}
!96 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !90, i8 2, i32 1, i8 1, i32 1, i8 3, !97}
!97 = !{i32 3, i32 1}
!98 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !90, i8 1, i32 1, i8 1, i32 3, i8 0, !97}
!99 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !90, i8 1, i32 1, i8 1, i32 3, i8 1, !97}
!100 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !90, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!101 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !102, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!102 = !{i32 1}
!103 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !90, i8 2, i32 1, i8 4, i32 5, i8 0, !93}
!104 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !90, i8 2, i32 1, i8 3, i32 6, i8 0, !93}
!105 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !90, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!106 = !{!107}
!107 = !{i32 0, !"SV_Target", i8 9, i8 16, !90, i8 0, i32 1, i8 4, i32 0, i8 0, !91}
!108 = !{i32 0, i64 24}
!109 = !{!110, !110, i64 0}
!110 = !{!"float", !111, i64 0}
!111 = !{!"omnipotent char", !112, i64 0}
!112 = !{!"Simple C/C++ TBAA"}
!113 = !{!114, !116, !117}
!114 = distinct !{!114, !115, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!115 = distinct !{!115, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!116 = distinct !{!116, !115, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!117 = distinct !{!117, !115, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!118 = !{!119, !121, !122, !123, !124}
!119 = distinct !{!119, !120, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!120 = distinct !{!120, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!121 = distinct !{!121, !120, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoam"}
!122 = distinct !{!122, !120, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamNormalOffsets"}
!123 = distinct !{!123, !120, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamOcclusion"}
!124 = distinct !{!124, !120, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %wdFoamGloss"}
!125 = distinct !{!125, !126}
!126 = !{!"llvm.loop.unroll.disable"}
!127 = distinct !{!127, !"dx.controlflow.hints", i32 1}
!128 = distinct !{!128, !"dx.controlflow.hints", i32 1}
!129 = distinct !{!129, !"dx.controlflow.hints", i32 1}
!130 = distinct !{!130, !"dx.controlflow.hints", i32 1}
!131 = distinct !{!131, !"dx.controlflow.hints", i32 1}
!132 = distinct !{!132, !"dx.controlflow.hints", i32 1}
!133 = distinct !{!133, !126}
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
!146 = distinct !{!146, !"dx.controlflow.hints", i32 1}
!147 = !{!148, !148, i64 0}
!148 = !{!"int", !111, i64 0}
!149 = !{!150, !152}
!150 = distinct !{!150, !151, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!151 = distinct !{!151, !"\01?Lights_Iterate_SingleSun@@YAIULocalAttributes@@V?$vector@M$02@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!152 = distinct !{!152, !153, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z: %lightingOutput"}
!153 = distinct !{!153, !"\01?Lights_Iterate_PhysicallyBased@@YAXULocalAttributes@@ULightIteratorInput_PhysicallyBased@@ULightIteratorOutput_PhysicallyBased@@@Z"}
!154 = distinct !{!154, !"dx.controlflow.hints", i32 1}
!155 = !{!150, !152, !156, !158}
!156 = distinct !{!156, !157, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z: %agg.result"}
!157 = distinct !{!157, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@Y00$$CBUSurfaceAttributes@@USecondaryLightingInput@@ULocalAttributes@@@Z"}
!158 = distinct !{!158, !159, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z: %agg.result"}
!159 = distinct !{!159, !"\01?LightingModel_CalculateLighting@@YA?AULightingOutput@@UPixelInput@@ULModelInput@@@Z"}
!160 = distinct !{!160, !126}
!161 = distinct !{!161, !126}
!162 = distinct !{!162, !"dx.controlflow.hints", i32 1}
!163 = distinct !{!163, !"dx.controlflow.hints", i32 1}
!164 = distinct !{!164, !"dx.controlflow.hints", i32 1}
!165 = distinct !{!165, !"dx.controlflow.hints", i32 1}
!166 = distinct !{!166, !"dx.controlflow.hints", i32 1}
!167 = distinct !{!167, !"dx.controlflow.hints", i32 1}
!168 = distinct !{!168, !"dx.controlflow.hints", i32 1}
!169 = distinct !{!169, !"dx.controlflow.hints", i32 1}
!170 = distinct !{!170, !"dx.controlflow.hints", i32 1}
!171 = distinct !{!171, !"dx.controlflow.hints", i32 1}
!172 = !{!173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!173 = distinct !{!173, !174, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z: %cFogParams"}
!174 = distinct !{!174, !"\01?GetFogCircleDistance@@YAMV?$vector@M$02@@0MUCFogParams@@_N@Z"}
!175 = distinct !{!175, !176, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %scattering"}
!176 = distinct !{!176, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z"}
!177 = distinct !{!177, !176, !"\01?GetFogScatteringAndExtinction@@YAXV?$vector@M$02@@_NAIAV1@2@Z: %extinction"}
!178 = distinct !{!178, !179, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %blendColor"}
!179 = distinct !{!179, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z"}
!180 = distinct !{!180, !179, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %addColor"}
!181 = distinct !{!181, !179, !"\01?ApplyFog@@YAXV?$vector@M$02@@_NAIAV1@2AIAMV1@@Z: %thermalExtinction"}
!182 = distinct !{!182, !183, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %blendColor"}
!183 = distinct !{!183, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z"}
!184 = distinct !{!184, !183, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %addColor"}
!185 = distinct !{!185, !183, !"\01?ApplyFogAndVolumetric@@YAXV?$vector@M$03@@V?$vector@M$02@@_NAIAV2@3AIAM1IMM@Z: %thermalExtinction"}
!186 = distinct !{!186, !187, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z: %agg.result"}
!187 = distinct !{!187, !"\01?GetPostLitFogBlendPixelOutput@@YA?AUPixelOutput@@UPixelInput@@ULightingOutput@@_NIMMI@Z"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"\01?sort@@YAXAIAM00@Z: %c"}
!190 = distinct !{!190, !"\01?sort@@YAXAIAM00@Z"}
!191 = !{!192, !193, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!192 = distinct !{!192, !190, !"\01?sort@@YAXAIAM00@Z: %a"}
!193 = distinct !{!193, !190, !"\01?sort@@YAXAIAM00@Z: %b"}
!194 = !{!193}
!195 = !{!192, !189, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!196 = !{!192}
!197 = !{!193, !189, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!198 = !{!199}
!199 = distinct !{!199, !200, !"\01?sort@@YAXAIAM00@Z: %c"}
!200 = distinct !{!200, !"\01?sort@@YAXAIAM00@Z"}
!201 = !{!202, !203, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!202 = distinct !{!202, !200, !"\01?sort@@YAXAIAM00@Z: %a"}
!203 = distinct !{!203, !200, !"\01?sort@@YAXAIAM00@Z: %b"}
!204 = !{!203}
!205 = !{!202, !199, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!206 = !{!202}
!207 = !{!203, !199, !173, !175, !177, !178, !180, !181, !182, !184, !185, !186}
!208 = distinct !{!208, !"dx.controlflow.hints", i32 1}
!209 = distinct !{!209, !"dx.controlflow.hints", i32 2}
!210 = distinct !{!210, !"dx.controlflow.hints", i32 1}
!211 = distinct !{!211, !"dx.controlflow.hints", i32 1}
!212 = distinct !{!212, !"dx.controlflow.hints", i32 1}
!213 = distinct !{!213, !"dx.controlflow.hints", i32 1}
!214 = distinct !{!214, !"dx.controlflow.hints", i32 1}

