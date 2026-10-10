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
; shader hash: 92203ee20ce093ebdb3e875aced8992b
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
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 58, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 57, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 56, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 55, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 54, i32 86, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 53, i32 83, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 52, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 51, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 50, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 49, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 48, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 47, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 46, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 45, i32 80, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 30, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 82, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 32, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 61, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 6, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = alloca [4 x i32], align 4
  %69 = alloca [4 x float], align 4
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = icmp ne i32 %76, 0
  %78 = call i32 @dx.op.loadInput.i32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %83 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %84 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %85 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %86 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %87 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %88 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %89 = alloca [12 x float], align 4
  %90 = alloca [12 x float], align 4
  %91 = alloca [3 x float], align 4
  %92 = alloca [3 x float], align 4
  %93 = alloca [4 x float], align 4
  %94 = alloca [4 x float], align 4
  %95 = alloca [4 x float], align 4
  %96 = alloca [4 x float], align 4
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = fmul fast float %98, %85
  %100 = fmul fast float %98, %86
  %101 = call float @dx.op.dot3.f32(i32 55, float %82, float %83, float %84, float %82, float %83, float %84)  ; Dot3(ax,ay,az,bx,by,bz)
  %102 = call float @dx.op.unary.f32(i32 25, float %101)  ; Rsqrt(value)
  %103 = fmul fast float %102, %82
  %104 = fmul fast float %102, %83
  %105 = fmul fast float %102, %84
  %106 = xor i1 %77, true
  %107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %45, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.i32 %107, 0
  %109 = icmp eq i32 %108, 0
  %110 = and i1 %109, %106
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 0
  %113 = and i32 %112, 256
  %114 = icmp ne i32 %113, 0
  %115 = and i1 %110, %114
  %116 = or i1 %77, %115
  %117 = select i1 %116, float 1.000000e+00, float -1.000000e+00
  %118 = fmul fast float %103, %117
  %119 = fmul fast float %104, %117
  %120 = fmul fast float %105, %117
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %99, 2.000000e+00
  %125 = fmul fast float %124, %122
  %126 = fmul fast float %100, 2.000000e+00
  %127 = fmul fast float %126, %123
  %128 = fsub fast float 1.000000e+00, %125
  %129 = fsub fast float 1.000000e+00, %127
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %128, %131
  %135 = fmul fast float %128, %132
  %136 = fmul fast float %128, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %129, %138
  %142 = fmul fast float %129, %139
  %143 = fmul fast float %129, %140
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 1
  %147 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %148 = fadd fast float %141, %145
  %149 = fadd fast float %148, %134
  %150 = fadd fast float %142, %146
  %151 = fadd fast float %150, %135
  %152 = fadd fast float %143, %147
  %153 = fadd fast float %152, %136
  %154 = fmul fast float %149, %88
  %155 = fmul fast float %151, %88
  %156 = fmul fast float %153, %88
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 2
  %159 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %160 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %161 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  %162 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  %163 = fmul fast float %159, %158
  %164 = fmul fast float %160, %158
  %165 = fmul fast float %161, %158
  %166 = fmul fast float %162, %158
  %167 = call float @dx.op.dot2.f32(i32 54, float %165, float %166, float %165, float %166)  ; Dot2(ax,ay,bx,by)
  %168 = call float @dx.op.dot2.f32(i32 54, float %163, float %164, float %163, float %164)  ; Dot2(ax,ay,bx,by)
  %169 = call float @dx.op.binary.f32(i32 35, float %168, float %167)  ; FMax(a,b)
  %170 = call float @dx.op.unary.f32(i32 23, float %169)  ; Log(value)
  %171 = fmul fast float %170, 5.000000e-01
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %174 = fadd fast float %173, %171
  %175 = call float @dx.op.binary.f32(i32 35, float %174, float 0.000000e+00)  ; FMax(a,b)
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 3
  %178 = fadd fast float %177, %175
  %179 = call i32 @dx.op.legacyF32ToF16(i32 130, float 0.000000e+00)  ; LegacyF32ToF16(value)
  %180 = shl i32 %179, 16
  %181 = or i32 %180, %179
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = extractvalue %dx.types.CBufRet.f32 %182, 1
  %185 = fadd fast float %183, %154
  %186 = fadd fast float %184, %155
  %187 = fmul fast float %185, 0x3F53C37960000000
  %188 = fmul fast float %186, 0x3F53C37960000000
  %189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %189, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 2
  %194 = fmul fast float %193, %191
  %195 = shl i32 %78, 3
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %47, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 16383
  %199 = shl i32 %78, 2
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = mul nuw nsw i32 %198, 148
  %204 = add nuw nsw i32 %203, 4
  %205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = add nuw nsw i32 %203, 8
  %208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.f32 %208, 0
  %210 = add nuw nsw i32 %203, 48
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = add nuw nsw i32 %203, 92
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = add nuw nsw i32 %203, 96
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add nuw nsw i32 %203, 100
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = add nuw nsw i32 %203, 104
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = add nuw nsw i32 %203, 108
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = fsub fast float 1.000000e+00, %81
  %228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %229 = extractvalue %dx.types.CBufRet.f32 %228, 2
  %230 = fmul fast float %229, %80
  %231 = fmul fast float %229, %227
  %232 = fadd fast float %230, %206
  %233 = fadd fast float %231, %209
  %234 = call float @dx.op.unary.f32(i32 84, float %232)  ; DerivCoarseY(value)
  %235 = call float @dx.op.unary.f32(i32 84, float %233)  ; DerivCoarseY(value)
  %236 = call float @dx.op.unary.f32(i32 83, float %232)  ; DerivCoarseX(value)
  %237 = call float @dx.op.unary.f32(i32 83, float %233)  ; DerivCoarseX(value)
  %238 = call float @dx.op.dot2.f32(i32 54, float %234, float %235, float %234, float %235)  ; Dot2(ax,ay,bx,by)
  %239 = call float @dx.op.dot2.f32(i32 54, float %236, float %237, float %236, float %237)  ; Dot2(ax,ay,bx,by)
  %240 = call float @dx.op.binary.f32(i32 35, float %239, float %238)  ; FMax(a,b)
  %241 = call float @dx.op.unary.f32(i32 23, float %240)  ; Log(value)
  %242 = fmul fast float %241, 5.000000e-01
  %243 = add nuw nsw i32 %203, 20
  %244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.f32 %244, 0
  %246 = add nuw nsw i32 %203, 24
  %247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.f32 %247, 0
  %249 = add nuw nsw i32 %203, 28
  %250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = add nuw nsw i32 %203, 32
  %253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.f32 %253, 0
  %255 = add nuw nsw i32 %203, 40
  %256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = add nuw nsw i32 %203, 44
  %259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.f32 %259, 0
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = add nuw nsw i32 %203, 52
  %264 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %263, i32 undef)  ; BufferLoad(srv,index,wot)
  %265 = extractvalue %dx.types.ResRet.f32 %264, 0
  %266 = add nuw nsw i32 %203, 56
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %49, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = add nuw nsw i32 %203, 112
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %281 = extractvalue %dx.types.CBufRet.f32 %280, 2
  %282 = fmul fast float %281, %80
  %283 = fmul fast float %281, %81
  %284 = extractvalue %dx.types.CBufRet.f32 %280, 3
  %285 = fadd fast float %282, %284
  %286 = fadd fast float %283, %284
  %287 = extractvalue %dx.types.CBufRet.f32 %280, 0
  %288 = fmul fast float %287, %80
  %289 = fmul fast float %287, %81
  %290 = extractvalue %dx.types.CBufRet.f32 %280, 1
  %291 = fadd fast float %288, %290
  %292 = fadd fast float %289, %290
  %293 = add i32 %270, 0
  %294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %293, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %295 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %294, i32 0)  ; GetDimensions(handle,mipLevel)
  %296 = extractvalue %dx.types.Dimensions %295, 0
  %297 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %296)  ; FirstbitLo(value)
  %298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %299 = extractvalue %dx.types.CBufRet.i32 %298, 1
  %300 = sub nsw i32 %299, %297
  %301 = sitofp i32 %300 to float
  %302 = fsub fast float %178, %301
  %303 = call float @dx.op.binary.f32(i32 35, float %302, float 0.000000e+00)  ; FMax(a,b)
  %304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %294, %dx.types.Handle %60, float %285, float %286, float %257, float undef, i32 0, i32 0, i32 undef, float %303)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = fmul fast float %305, %245
  %307 = fadd fast float %306, %248
  %308 = add i32 %272, 0
  %309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %308, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %310 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %309, i32 0)  ; GetDimensions(handle,mipLevel)
  %311 = extractvalue %dx.types.Dimensions %310, 0
  %312 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %311)  ; FirstbitLo(value)
  %313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.i32 %313, 1
  %315 = sub nsw i32 %314, %312
  %316 = sitofp i32 %315 to float
  %317 = fsub fast float %178, %316
  %318 = call float @dx.op.binary.f32(i32 35, float %317, float 0.000000e+00)  ; FMax(a,b)
  %319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %309, %dx.types.Handle %60, float %291, float %292, float %260, float undef, i32 0, i32 0, i32 undef, float %318)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %320 = extractvalue %dx.types.ResRet.f32 %319, 0
  %321 = fmul fast float %320, %251
  %322 = fadd fast float %321, %254
  %323 = add i32 %274, 0
  %324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %325 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %324, i32 0)  ; GetDimensions(handle,mipLevel)
  %326 = extractvalue %dx.types.Dimensions %325, 0
  %327 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %326)  ; FirstbitLo(value)
  %328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %329 = extractvalue %dx.types.CBufRet.i32 %328, 1
  %330 = sub nsw i32 %329, %327
  %331 = sitofp i32 %330 to float
  %332 = fsub fast float %178, %331
  %333 = call float @dx.op.binary.f32(i32 35, float %332, float 0.000000e+00)  ; FMax(a,b)
  %334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %324, %dx.types.Handle %60, float %291, float %292, float %262, float undef, i32 0, i32 0, i32 undef, float %333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %335 = extractvalue %dx.types.ResRet.f32 %334, 0
  %336 = extractvalue %dx.types.ResRet.f32 %334, 1
  %337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %338 = extractvalue %dx.types.CBufRet.f32 %337, 3
  %339 = fmul fast float %338, 2.000000e+00
  %340 = fmul fast float %339, %335
  %341 = fmul fast float %339, %336
  %342 = fsub fast float %340, %338
  %343 = fsub fast float %341, %338
  %344 = fmul fast float %342, %342
  %345 = fmul fast float %343, %343
  %346 = fadd fast float %344, %345
  %347 = call float @dx.op.unary.f32(i32 24, float %346)  ; Sqrt(value)
  %348 = add i32 %276, 0
  %349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %348, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %349, i32 0)  ; GetDimensions(handle,mipLevel)
  %351 = extractvalue %dx.types.Dimensions %350, 0
  %352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %351)  ; FirstbitLo(value)
  %353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %354 = extractvalue %dx.types.CBufRet.i32 %353, 1
  %355 = sub nsw i32 %354, %352
  %356 = sitofp i32 %355 to float
  %357 = fsub fast float %178, %356
  %358 = call float @dx.op.binary.f32(i32 35, float %357, float 0.000000e+00)  ; FMax(a,b)
  %359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %349, %dx.types.Handle %60, float %291, float %292, float %265, float undef, i32 0, i32 0, i32 undef, float %358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %360 = extractvalue %dx.types.ResRet.f32 %359, 0
  %361 = add i32 %279, 0
  %362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %361, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %363 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %362, i32 0)  ; GetDimensions(handle,mipLevel)
  %364 = extractvalue %dx.types.Dimensions %363, 0
  %365 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %364)  ; FirstbitLo(value)
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 1
  %368 = sub nsw i32 %367, %365
  %369 = sitofp i32 %368 to float
  %370 = fsub fast float %178, %369
  %371 = call float @dx.op.binary.f32(i32 35, float %370, float 0.000000e+00)  ; FMax(a,b)
  %372 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %362, %dx.types.Handle %60, float %291, float %292, float %268, float undef, i32 0, i32 0, i32 undef, float %371)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %373 = extractvalue %dx.types.ResRet.f32 %372, 0
  %374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.i32 %374, 0
  %376 = call i32 @dx.op.binary.i32(i32 40, i32 %198, i32 %375)  ; UMin(a,b)
  %377 = mul i32 %376, 36
  %378 = add i32 %377, 4
  %379 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %202)  ; Countbits(value)
  %380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %381 = extractvalue %dx.types.CBufRet.i32 %380, 0
  %382 = icmp eq i32 %381, 32
  %383 = select i1 %382, float %73, float %178
  %384 = and i32 %381, -2
  %385 = icmp eq i32 %384, 30
  %386 = or i1 %385, %382
  br i1 %386, label %387, label %428

; <label>:387                                     ; preds = %0
  %388 = extractvalue %dx.types.ResRet.i32 %214, 0
  %389 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 208)  ; CBufferLoadLegacy(handle,regIndex)
  %390 = extractvalue %dx.types.CBufRet.i32 %389, 0
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %407, label %392

; <label>:392                                     ; preds = %387
  %393 = icmp eq i32 %390, 1
  br i1 %393, label %407, label %394

; <label>:394                                     ; preds = %392
  %395 = icmp eq i32 %390, 2
  br i1 %395, label %407, label %396

; <label>:396                                     ; preds = %394
  %397 = icmp eq i32 %390, 3
  br i1 %397, label %407, label %398

; <label>:398                                     ; preds = %396
  %399 = icmp eq i32 %390, 4
  br i1 %399, label %407, label %400

; <label>:400                                     ; preds = %398
  %401 = call i32 @dx.op.binary.i32(i32 39, i32 %390, i32 6)  ; UMax(a,b)
  %402 = call i32 @dx.op.binary.i32(i32 40, i32 %401, i32 13)  ; UMin(a,b)
  %403 = shl i32 %402, 2
  %404 = add i32 %213, %403
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %49, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  br label %407

; <label>:407                                     ; preds = %400, %398, %396, %394, %392, %387
  %408 = phi i32 [ %406, %400 ], [ %388, %387 ], [ %217, %392 ], [ %220, %394 ], [ %223, %396 ], [ %226, %398 ]
  %409 = add i32 %408, 0
  %410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %411 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %410, i32 0)  ; GetDimensions(handle,mipLevel)
  %412 = extractvalue %dx.types.Dimensions %411, 0
  %413 = icmp eq i32 %412, 1
  %414 = icmp eq i32 %412, 4
  %415 = or i1 %413, %414
  br i1 %415, label %422, label %416

; <label>:416                                     ; preds = %407
  %417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %412)  ; FirstbitLo(value)
  %418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %419 = extractvalue %dx.types.CBufRet.i32 %418, 1
  %420 = sub nsw i32 %419, %417
  %421 = call i32 @dx.op.binary.i32(i32 37, i32 %420, i32 0)  ; IMax(a,b)
  br label %422

; <label>:422                                     ; preds = %416, %407
  %423 = phi i32 [ %421, %416 ], [ -1, %407 ]
  %424 = sitofp i32 %423 to float
  %425 = icmp slt i32 %423, 0
  %426 = fsub fast float %383, %424
  %427 = select i1 %425, float 0.000000e+00, float %426
  br label %428

; <label>:428                                     ; preds = %422, %0
  %429 = phi float [ 0.000000e+00, %0 ], [ %424, %422 ]
  %430 = phi float [ 0.000000e+00, %0 ], [ %427, %422 ]
  %431 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %202)  ; FirstbitLo(value)
  %432 = shl i32 %431, 2
  %433 = add i32 %378, %432
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = and i32 %435, 32767
  %437 = mul nuw nsw i32 %436, 928
  %438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %437, i32 undef)  ; BufferLoad(srv,index,wot)
  %439 = extractvalue %dx.types.ResRet.i32 %438, 0
  %440 = or i32 %437, 8
  %441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.f32 %441, 0
  %443 = or i32 %437, 12
  %444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.f32 %444, 1
  %446 = or i32 %437, 20
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = or i32 %437, 24
  %450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.f32 %450, 0
  %452 = extractvalue %dx.types.ResRet.f32 %450, 1
  %453 = extractvalue %dx.types.ResRet.f32 %450, 2
  %454 = extractvalue %dx.types.ResRet.f32 %450, 3
  %455 = add nuw nsw i32 %437, 40
  %456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.f32 %456, 0
  %458 = add nuw nsw i32 %437, 72
  %459 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.f32 %459, 0
  %461 = extractvalue %dx.types.ResRet.f32 %459, 1
  %462 = add nuw nsw i32 %437, 80
  %463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.f32 %463, 0
  %465 = add nuw nsw i32 %437, 228
  %466 = add nuw nsw i32 %437, 516
  %467 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.f32 %467, 1
  %469 = add nuw nsw i32 %437, 528
  %470 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %469, i32 undef)  ; BufferLoad(srv,index,wot)
  %471 = extractvalue %dx.types.ResRet.f32 %470, 0
  %472 = extractvalue %dx.types.ResRet.f32 %470, 1
  %473 = add nuw nsw i32 %437, 540
  %474 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.f32 %474, 0
  %476 = extractvalue %dx.types.ResRet.f32 %474, 1
  %477 = add nuw nsw i32 %437, 548
  %478 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.f32 %478, 0
  %480 = add nuw nsw i32 %437, 552
  %481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = add nuw nsw i32 %437, 596
  %486 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = add nuw nsw i32 %437, 620
  %490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %489, i32 undef)  ; BufferLoad(srv,index,wot)
  %491 = extractvalue %dx.types.ResRet.f32 %490, 0
  %492 = extractvalue %dx.types.ResRet.f32 %490, 1
  %493 = add nuw nsw i32 %437, 628
  %494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.f32 %494, 0
  %496 = extractvalue %dx.types.ResRet.f32 %494, 1
  %497 = extractvalue %dx.types.ResRet.f32 %494, 2
  %498 = extractvalue %dx.types.ResRet.f32 %494, 3
  %499 = add nuw nsw i32 %437, 648
  %500 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = add nuw nsw i32 %437, 696
  %503 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = add nuw nsw i32 %437, 708
  %507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = add nuw nsw i32 %437, 812
  %511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.f32 %511, 0
  %513 = add nuw nsw i32 %437, 816
  %514 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %513, i32 undef)  ; BufferLoad(srv,index,wot)
  %515 = extractvalue %dx.types.ResRet.f32 %514, 1
  %516 = add nuw nsw i32 %437, 852
  %517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %516, i32 undef)  ; BufferLoad(srv,index,wot)
  %518 = extractvalue %dx.types.ResRet.i32 %517, 0
  %519 = add nuw nsw i32 %437, 860
  %520 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.f32 %520, 2
  %522 = add nuw nsw i32 %437, 896
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %522, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = add nuw nsw i32 %437, 900
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add nuw nsw i32 %437, 904
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %50, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %439, 128
  %532 = icmp ne i32 %531, 0
  %533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.i32 %533, 0
  %535 = and i32 %534, 512
  %536 = icmp ne i32 %535, 0
  %537 = and i1 %532, %536
  %538 = select i1 %537, float 0.000000e+00, float 1.000000e+00
  %539 = call float @dx.op.unary.f32(i32 7, float %538)  ; Saturate(value)
  %540 = fmul fast float %539, 2.550000e+02
  %541 = fptoui float %540 to i32
  %542 = fcmp fast ole float %79, 0x3FA4B5DCC0000000
  %543 = fmul fast float %79, 0x3FB3D07220000000
  %544 = fadd fast float %79, 0x3FAC28F5C0000000
  %545 = fmul fast float %544, 0x3FEE54EDE0000000
  %546 = call float @dx.op.unary.f32(i32 23, float %545)  ; Log(value)
  %547 = fmul fast float %546, 0x4003333340000000
  %548 = call float @dx.op.unary.f32(i32 21, float %547)  ; Exp(value)
  %549 = select i1 %542, float %543, float %548
  %550 = call float @dx.op.unary.f32(i32 7, float %549)  ; Saturate(value)
  %551 = fmul fast float %487, %360
  %552 = fadd fast float %551, %488
  %553 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %554 = call float @dx.op.binary.f32(i32 35, float %550, float %553)  ; FMax(a,b)
  %555 = add i32 %527, 0
  %556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %555, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %557 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %558 = extractvalue %dx.types.CBufRet.i32 %557, 0
  %559 = and i32 %558, 65536
  %560 = icmp eq i32 %559, 0
  %561 = and i32 %558, 262144
  %562 = icmp ne i32 %561, 0
  %563 = and i32 %558, 1048576
  %564 = icmp ne i32 %563, 0
  br i1 %560, label %841, label %565

; <label>:565                                     ; preds = %428
  %566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %567 = extractvalue %dx.types.CBufRet.f32 %566, 0
  %568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %569 = extractvalue %dx.types.CBufRet.f32 %568, 0
  %570 = extractvalue %dx.types.CBufRet.f32 %568, 1
  %571 = fadd fast float %569, %154
  %572 = fadd fast float %570, %155
  %573 = fmul fast float %154, %154
  %574 = fmul fast float %155, %155
  %575 = fadd fast float %573, %574
  %576 = fmul fast float %156, %156
  %577 = fadd fast float %575, %576
  %578 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  br i1 %564, label %579, label %625

; <label>:579                                     ; preds = %565
  %580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %581 = extractvalue %dx.types.CBufRet.f32 %580, 0
  %582 = fcmp fast ogt float %578, %581
  %583 = zext i1 %582 to i32
  %584 = extractvalue %dx.types.CBufRet.f32 %580, 1
  %585 = fcmp fast ogt float %578, %584
  %586 = zext i1 %585 to i32
  %587 = add nuw nsw i32 %586, %583
  %588 = extractvalue %dx.types.CBufRet.f32 %580, 2
  %589 = fcmp fast ogt float %578, %588
  %590 = zext i1 %589 to i32
  %591 = add nuw nsw i32 %587, %590
  %592 = icmp ult i32 %591, 3
  %593 = zext i1 %592 to i32
  %594 = shl nuw nsw i32 %591, 2
  %595 = add nuw nsw i32 %594, 48
  %596 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %595)  ; CBufferLoadLegacy(handle,regIndex)
  %597 = extractvalue %dx.types.CBufRet.f32 %596, 1
  %598 = fcmp fast ogt float %578, %597
  %599 = zext i1 %598 to i32
  %600 = or i32 %594, 1
  %601 = add nuw nsw i32 %600, 48
  %602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %601)  ; CBufferLoadLegacy(handle,regIndex)
  %603 = extractvalue %dx.types.CBufRet.f32 %602, 1
  %604 = fcmp fast ogt float %578, %603
  %605 = zext i1 %604 to i32
  %606 = add nuw nsw i32 %605, %599
  %607 = or i32 %594, 2
  %608 = add nuw nsw i32 %607, 48
  %609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %608)  ; CBufferLoadLegacy(handle,regIndex)
  %610 = extractvalue %dx.types.CBufRet.f32 %609, 1
  %611 = fcmp fast ogt float %578, %610
  %612 = zext i1 %611 to i32
  %613 = add nuw nsw i32 %606, %612
  %614 = add i32 %448, -1
  %615 = call i32 @dx.op.binary.i32(i32 40, i32 %613, i32 %614)  ; UMin(a,b)
  %616 = add i32 %594, %615
  %617 = call i32 @dx.op.binary.i32(i32 40, i32 %616, i32 12)  ; UMin(a,b)
  %618 = add i32 %617, 48
  %619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %618)  ; CBufferLoadLegacy(handle,regIndex)
  %620 = extractvalue %dx.types.CBufRet.f32 %619, 0
  %621 = fcmp fast oge float %578, %620
  %622 = zext i1 %621 to i32
  %623 = call i32 @dx.op.binary.i32(i32 40, i32 %448, i32 %593)  ; UMin(a,b)
  %624 = call i32 @dx.op.binary.i32(i32 40, i32 %622, i32 %623)  ; UMin(a,b)
  br label %625

; <label>:625                                     ; preds = %579, %565
  %626 = phi i32 [ %617, %579 ], [ 0, %565 ]
  %627 = phi i32 [ %624, %579 ], [ 0, %565 ]
  %628 = add i32 %627, %448
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %828, label %630

; <label>:630                                     ; preds = %625
  br label %631

; <label>:631                                     ; preds = %797, %630
  %632 = phi float [ %824, %797 ], [ 0.000000e+00, %630 ]
  %633 = phi float [ %816, %797 ], [ 0.000000e+00, %630 ]
  %634 = phi float [ %817, %797 ], [ 0.000000e+00, %630 ]
  %635 = phi i32 [ %647, %797 ], [ %626, %630 ]
  %636 = phi i32 [ %825, %797 ], [ 0, %630 ]
  %637 = add i32 %636, %635
  br i1 %564, label %638, label %646

; <label>:638                                     ; preds = %631
  %639 = and i32 %637, -4
  %640 = add i32 %639, %448
  %641 = icmp uge i32 %637, %640
  %642 = sub i32 4, %448
  %643 = select i1 %641, i32 %642, i32 0
  %644 = add i32 %643, %635
  %645 = add i32 %643, %637
  br label %646

; <label>:646                                     ; preds = %638, %631
  %647 = phi i32 [ %644, %638 ], [ %635, %631 ]
  %648 = phi i32 [ %645, %638 ], [ %637, %631 ]
  %649 = and i32 %648, 3
  %650 = select i1 %564, i32 %649, i32 %636
  %651 = lshr i32 %648, 2
  %652 = select i1 %564, i32 %651, i32 0
  %653 = add i32 %648, 32
  %654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %653)  ; CBufferLoadLegacy(handle,regIndex)
  %655 = extractvalue %dx.types.CBufRet.f32 %654, 0
  %656 = extractvalue %dx.types.CBufRet.f32 %654, 1
  %657 = extractvalue %dx.types.CBufRet.f32 %654, 2
  %658 = extractvalue %dx.types.CBufRet.f32 %654, 3
  %659 = fmul fast float %655, %578
  %660 = fadd fast float %659, %656
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = fmul fast float %657, %578
  %663 = fadd fast float %662, %658
  %664 = call float @dx.op.unary.f32(i32 7, float %663)  ; Saturate(value)
  %665 = call float @dx.op.binary.f32(i32 36, float %661, float %664)  ; FMin(a,b)
  %666 = select i1 %564, float %665, float 1.000000e+00
  %667 = mul i32 %650, 72
  %668 = add i32 %465, %667
  %669 = add i32 %668, 16
  %670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %669, i32 undef)  ; BufferLoad(srv,index,wot)
  %671 = extractvalue %dx.types.ResRet.f32 %670, 0
  %672 = extractvalue %dx.types.ResRet.f32 %670, 1
  %673 = extractvalue %dx.types.ResRet.f32 %670, 2
  %674 = extractvalue %dx.types.ResRet.f32 %670, 3
  %675 = add i32 %668, 36
  %676 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %675, i32 undef)  ; BufferLoad(srv,index,wot)
  %677 = extractvalue %dx.types.ResRet.f32 %676, 0
  %678 = add i32 %668, 56
  %679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.f32 %679, 0
  %681 = fmul fast float %347, 3.906250e-03
  %682 = fmul fast float %681, %464
  %683 = fmul fast float %682, %677
  %684 = fmul fast float %683, %680
  %685 = extractvalue %dx.types.ResRet.f32 %679, 1
  %686 = fadd fast float %684, %685
  %687 = call float @dx.op.binary.f32(i32 35, float %686, float 0.000000e+00)  ; FMax(a,b)
  %688 = add i32 %668, 32
  %689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %688, i32 undef)  ; BufferLoad(srv,index,wot)
  %690 = extractvalue %dx.types.ResRet.f32 %689, 0
  br i1 %562, label %691, label %724

; <label>:691                                     ; preds = %646
  %692 = fmul fast float %677, %342
  %693 = fmul fast float %677, %343
  %694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %695 = extractvalue %dx.types.CBufRet.f32 %694, 1
  %696 = add i32 %668, 40
  %697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %696, i32 undef)  ; BufferLoad(srv,index,wot)
  %698 = extractvalue %dx.types.ResRet.f32 %697, 0
  %699 = extractvalue %dx.types.ResRet.f32 %697, 1
  %700 = extractvalue %dx.types.ResRet.f32 %697, 2
  %701 = extractvalue %dx.types.ResRet.f32 %697, 3
  %702 = fadd fast float %695, %194
  %703 = fadd fast float %702, %700
  %704 = fmul fast float %702, %699
  %705 = call float @dx.op.unary.f32(i32 29, float %704)  ; Round_z(value)
  %706 = fmul fast float %698, %705
  %707 = fsub fast float %702, %706
  %708 = fmul fast float %703, %699
  %709 = call float @dx.op.unary.f32(i32 29, float %708)  ; Round_z(value)
  %710 = fmul fast float %709, %698
  %711 = fsub fast float %703, %710
  %712 = fmul fast float %707, %692
  %713 = fmul fast float %707, %693
  %714 = fmul fast float %711, %692
  %715 = fmul fast float %711, %693
  %716 = fsub fast float %571, %712
  %717 = fsub fast float %572, %713
  %718 = fsub fast float %571, %714
  %719 = fsub fast float %572, %715
  %720 = fsub fast float %700, %707
  %721 = call float @dx.op.unary.f32(i32 6, float %720)  ; FAbs(value)
  %722 = fmul fast float %721, %701
  %723 = call float @dx.op.unary.f32(i32 7, float %722)  ; Saturate(value)
  br label %724

; <label>:724                                     ; preds = %691, %646
  %725 = phi float [ %716, %691 ], [ %571, %646 ]
  %726 = phi float [ %717, %691 ], [ %572, %646 ]
  %727 = phi float [ %718, %691 ], [ %571, %646 ]
  %728 = phi float [ %719, %691 ], [ %572, %646 ]
  %729 = phi float [ %723, %691 ], [ 0.000000e+00, %646 ]
  %730 = fmul fast float %442, 4.000000e+00
  %731 = uitofp i32 %652 to float
  %732 = fadd fast float %731, %730
  %733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %734 = extractvalue %dx.types.CBufRet.f32 %733, 0
  %735 = extractvalue %dx.types.CBufRet.f32 %733, 1
  %736 = extractvalue %dx.types.CBufRet.f32 %733, 2
  %737 = extractvalue %dx.types.CBufRet.f32 %733, 3
  %738 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 0
  store float %734, float* %738, align 4
  %739 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 1
  store float %735, float* %739, align 4
  %740 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 2
  store float %736, float* %740, align 4
  %741 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 3
  store float %737, float* %741, align 4
  %742 = getelementptr inbounds [4 x float], [4 x float]* %69, i32 0, i32 %652
  %743 = load float, float* %742, align 4, !tbaa !107, !noalias !111
  %744 = fmul fast float %743, %445
  %745 = select i1 %564, float %744, float %445
  %746 = fmul fast float %725, %671
  %747 = call float @dx.op.tertiary.f32(i32 46, float %672, float %726, float %746)  ; FMad(a,b,c)
  %748 = fmul fast float %725, %673
  %749 = call float @dx.op.tertiary.f32(i32 46, float %674, float %726, float %748)  ; FMad(a,b,c)
  %750 = add i32 %668, 8
  %751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %750, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.f32 %751, 0
  %753 = extractvalue %dx.types.ResRet.f32 %751, 1
  %754 = fadd fast float %752, %747
  %755 = fadd fast float %753, %749
  %756 = fmul fast float %754, %745
  %757 = fmul fast float %755, %745
  %758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %668, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = extractvalue %dx.types.ResRet.f32 %758, 1
  %761 = fmul fast float %756, %759
  %762 = fmul fast float %757, %760
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 21)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %765 = fadd fast float %761, %764
  %766 = fadd fast float %762, %764
  %767 = fmul fast float %727, %671
  %768 = call float @dx.op.tertiary.f32(i32 46, float %672, float %728, float %767)  ; FMad(a,b,c)
  %769 = fmul fast float %727, %673
  %770 = call float @dx.op.tertiary.f32(i32 46, float %674, float %728, float %769)  ; FMad(a,b,c)
  %771 = fadd fast float %752, %768
  %772 = fadd fast float %753, %770
  %773 = fmul fast float %771, %745
  %774 = fmul fast float %772, %745
  %775 = fmul fast float %773, %759
  %776 = fmul fast float %774, %760
  %777 = fadd fast float %775, %764
  %778 = fadd fast float %776, %764
  %779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %61, float %765, float %766, float %732, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %780 = extractvalue %dx.types.ResRet.f32 %779, 0
  %781 = extractvalue %dx.types.ResRet.f32 %779, 1
  %782 = extractvalue %dx.types.ResRet.f32 %779, 3
  %783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %61, float %777, float %778, float %732, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  br i1 %562, label %784, label %797

; <label>:784                                     ; preds = %724
  %785 = extractvalue %dx.types.ResRet.f32 %783, 3
  %786 = extractvalue %dx.types.ResRet.f32 %783, 1
  %787 = extractvalue %dx.types.ResRet.f32 %783, 0
  %788 = fsub fast float %787, %780
  %789 = fsub fast float %786, %781
  %790 = fsub fast float %785, %782
  %791 = fmul fast float %788, %729
  %792 = fmul fast float %789, %729
  %793 = fmul fast float %790, %729
  %794 = fadd fast float %791, %780
  %795 = fadd fast float %792, %781
  %796 = fadd fast float %793, %782
  br label %797

; <label>:797                                     ; preds = %784, %724
  %798 = phi float [ %794, %784 ], [ %780, %724 ]
  %799 = phi float [ %795, %784 ], [ %781, %724 ]
  %800 = phi float [ %796, %784 ], [ %782, %724 ]
  %801 = fmul fast float %798, 2.000000e+00
  %802 = fmul fast float %799, 2.000000e+00
  %803 = fadd fast float %801, -1.000000e+00
  %804 = fadd fast float %802, -1.000000e+00
  %805 = fmul fast float %803, %671
  %806 = call float @dx.op.tertiary.f32(i32 46, float %804, float %673, float %805)  ; FMad(a,b,c)
  %807 = fmul fast float %803, %672
  %808 = call float @dx.op.tertiary.f32(i32 46, float %804, float %674, float %807)  ; FMad(a,b,c)
  %809 = fmul fast float %666, %567
  %810 = fmul fast float %809, %687
  %811 = fmul fast float %810, %690
  %812 = fmul fast float %806, %811
  %813 = fmul fast float %812, %759
  %814 = fmul fast float %808, %811
  %815 = fmul fast float %814, %760
  %816 = fadd fast float %813, %633
  %817 = fadd fast float %815, %634
  %818 = add i32 %668, 64
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = fmul fast float %820, %800
  %822 = extractvalue %dx.types.ResRet.f32 %819, 1
  %823 = fadd fast float %821, %822
  %824 = call float @dx.op.binary.f32(i32 35, float %632, float %823)  ; FMax(a,b)
  %825 = add nuw i32 %636, 1
  %826 = icmp eq i32 %825, %628
  br i1 %826, label %827, label %631

; <label>:827                                     ; preds = %797
  br label %828

; <label>:828                                     ; preds = %827, %625
  %829 = phi float [ 0.000000e+00, %625 ], [ %824, %827 ]
  %830 = phi float [ 0.000000e+00, %625 ], [ %816, %827 ]
  %831 = phi float [ 0.000000e+00, %625 ], [ %817, %827 ]
  %832 = call float @dx.op.dot3.f32(i32 55, float %830, float %831, float 1.000000e+00, float %830, float %831, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %833 = call float @dx.op.unary.f32(i32 25, float %832)  ; Rsqrt(value)
  %834 = fmul fast float %833, %830
  %835 = fmul fast float %833, %831
  %836 = fmul fast float %829, %491
  %837 = fadd fast float %836, %492
  %838 = call float @dx.op.unary.f32(i32 7, float %837)  ; Saturate(value)
  %839 = fmul float %833, 5.000000e-01
  %840 = fadd float %839, 5.000000e-01
  br label %841

; <label>:841                                     ; preds = %828, %428
  %842 = phi float [ %834, %828 ], [ 0.000000e+00, %428 ]
  %843 = phi float [ %835, %828 ], [ 0.000000e+00, %428 ]
  %844 = phi float [ %840, %828 ], [ 5.000000e-01, %428 ]
  %845 = phi float [ %838, %828 ], [ 0.000000e+00, %428 ]
  %846 = fadd fast float %845, %554
  %847 = icmp ne i32 %448, 0
  %848 = fcmp fast ogt float %845, 0.000000e+00
  %849 = fmul fast float %508, %347
  %850 = fadd fast float %849, %509
  %851 = call float @dx.op.binary.f32(i32 35, float %850, float 0.000000e+00)  ; FMax(a,b)
  %852 = fmul fast float %851, %504
  %853 = fadd fast float %852, %505
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  %855 = fmul fast float %854, %846
  %856 = icmp ne i32 %518, 0
  %857 = and i32 %439, 2
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = fmul fast float %859, %88
  %861 = extractvalue %dx.types.CBufRet.f32 %858, 1
  %862 = fadd fast float %860, %861
  %863 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = fmul fast float %865, %863
  %867 = select i1 %856, float %866, float 0.000000e+00
  %868 = fcmp fast ogt float %867, 0.000000e+00
  br i1 %868, label %869, label %999

; <label>:869                                     ; preds = %841
  %870 = add i32 %223, 0
  %871 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %870, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %872 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %871, i32 0)  ; GetDimensions(handle,mipLevel)
  %873 = extractvalue %dx.types.Dimensions %872, 0
  %874 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %873)  ; FirstbitLo(value)
  %875 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %876 = extractvalue %dx.types.CBufRet.i32 %875, 1
  %877 = sub nsw i32 %876, %874
  %878 = sitofp i32 %877 to float
  %879 = fsub fast float %484, %878
  %880 = call float @dx.op.binary.f32(i32 35, float %879, float 0.000000e+00)  ; FMax(a,b)
  %881 = fmul fast float %468, %232
  %882 = fmul fast float %468, %233
  %883 = fmul fast float %482, %80
  %884 = fmul fast float %482, %81
  %885 = call float @dx.op.unary.f32(i32 22, float %883)  ; Frc(value)
  %886 = call float @dx.op.unary.f32(i32 22, float %884)  ; Frc(value)
  %887 = fmul fast float %885, 2.000000e+00
  %888 = fmul fast float %886, 2.000000e+00
  %889 = fadd fast float %887, -1.000000e+00
  %890 = fadd fast float %888, -1.000000e+00
  %891 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %892 = call float @dx.op.unary.f32(i32 6, float %890)  ; FAbs(value)
  %893 = fsub fast float 1.000000e+00, %891
  %894 = fmul fast float %893, %892
  %895 = fsub fast float %893, %894
  %896 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 0
  store float %895, float* %896, align 4, !tbaa !107, !noalias !116
  %897 = fmul fast float %892, %891
  %898 = fsub fast float %891, %897
  %899 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 1
  store float %898, float* %899, align 4, !tbaa !107, !noalias !116
  %900 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 2
  store float %894, float* %900, align 4, !tbaa !107, !noalias !116
  %901 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 3
  store float %897, float* %901, align 4, !tbaa !107, !noalias !116
  br label %902

; <label>:902                                     ; preds = %902, %869
  %903 = phi i32 [ 0, %869 ], [ %996, %902 ]
  %904 = phi float [ %842, %869 ], [ %994, %902 ]
  %905 = phi float [ %843, %869 ], [ %995, %902 ]
  %906 = mul i32 %903, 2
  %907 = add i32 0, %906
  %908 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %907
  %909 = load float, float* %908, align 4
  %910 = mul i32 %903, 2
  %911 = add i32 1, %910
  %912 = getelementptr [8 x float], [8 x float]* @"\01?cellOffset@?1??Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV4@AIAM77677AIAV6@@Z@3QBV4@B.v.1dim", i32 0, i32 %911
  %913 = load float, float* %912, align 4
  %914 = fmul fast float %909, 5.000000e-01
  %915 = fmul fast float %913, 5.000000e-01
  %916 = fsub fast float 1.000000e+00, %909
  %917 = fsub fast float 1.000000e+00, %913
  %918 = fmul fast float %916, 5.000000e-01
  %919 = fmul fast float %917, 5.000000e-01
  %920 = fadd fast float %914, %883
  %921 = fadd fast float %915, %884
  %922 = call float @dx.op.unary.f32(i32 27, float %920)  ; Round_ni(value)
  %923 = call float @dx.op.unary.f32(i32 27, float %921)  ; Round_ni(value)
  %924 = fadd fast float %922, %918
  %925 = fadd fast float %923, %919
  %926 = fmul fast float %924, %483
  %927 = fmul fast float %925, %483
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = fmul fast float %926, %929
  %931 = fmul fast float %927, %929
  %932 = extractvalue %dx.types.CBufRet.f32 %928, 1
  %933 = fadd fast float %930, %932
  %934 = fadd fast float %931, %932
  %935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %871, %dx.types.Handle %63, float %933, float %934, float %212, float undef, i32 0, i32 0, i32 undef, float %880)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %936 = extractvalue %dx.types.ResRet.f32 %935, 0
  %937 = extractvalue %dx.types.ResRet.f32 %935, 1
  %938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 348)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.f32 %938, 3
  %940 = fmul fast float %939, 2.000000e+00
  %941 = fmul fast float %940, %936
  %942 = fmul fast float %940, %937
  %943 = fsub fast float %941, %939
  %944 = fsub fast float %942, %939
  %945 = fmul fast float %943, %943
  %946 = fmul fast float %944, %944
  %947 = fadd fast float %945, %946
  %948 = call float @dx.op.unary.f32(i32 24, float %947)  ; Sqrt(value)
  %949 = fcmp fast ogt float %948, 0.000000e+00
  %950 = fdiv fast float 1.000000e+00, %948
  %951 = fmul fast float %943, %950
  %952 = fmul fast float %944, %950
  %953 = select i1 %949, float %951, float 0.000000e+00
  %954 = select i1 %949, float %952, float 0.000000e+00
  %955 = add i32 %518, 0
  %956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %958 = extractvalue %dx.types.CBufRet.f32 %957, 1
  %959 = fmul fast float %479, %468
  %960 = fmul fast float %959, %948
  %961 = fsub fast float -0.000000e+00, %953
  %962 = fmul fast float %954, %881
  %963 = call float @dx.op.tertiary.f32(i32 46, float %961, float %882, float %962)  ; FMad(a,b,c)
  %964 = fmul fast float %953, %881
  %965 = call float @dx.op.tertiary.f32(i32 46, float %954, float %882, float %964)  ; FMad(a,b,c)
  %966 = fmul fast float %960, %958
  %967 = fsub fast float %965, %966
  %968 = fmul fast float %963, %471
  %969 = fmul fast float %967, %472
  %970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %971 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %956, %dx.types.Handle %970, float %968, float %969, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %972 = extractvalue %dx.types.ResRet.f32 %971, 1
  %973 = extractvalue %dx.types.ResRet.f32 %971, 3
  %974 = fadd fast float %972, %973
  %975 = fmul fast float %974, %521
  %976 = fsub fast float %975, %521
  %977 = fsub fast float %972, %973
  %978 = fmul fast float %977, %521
  %979 = fmul fast float %976, %954
  %980 = call float @dx.op.tertiary.f32(i32 46, float %953, float %978, float %979)  ; FMad(a,b,c)
  %981 = fmul fast float %976, %961
  %982 = call float @dx.op.tertiary.f32(i32 46, float %954, float %978, float %981)  ; FMad(a,b,c)
  %983 = fmul fast float %980, %471
  %984 = fmul fast float %982, %472
  %985 = fmul fast float %475, %347
  %986 = fadd fast float %985, %476
  %987 = call float @dx.op.binary.f32(i32 35, float %986, float 0.000000e+00)  ; FMax(a,b)
  %988 = fmul fast float %987, %867
  %989 = getelementptr [4 x float], [4 x float]* %96, i32 0, i32 %903
  %990 = load float, float* %989, align 4, !tbaa !107, !noalias !116
  %991 = fmul fast float %988, %990
  %992 = fmul fast float %983, %991
  %993 = fmul fast float %984, %991
  %994 = fadd fast float %992, %904
  %995 = fadd fast float %993, %905
  %996 = add nuw nsw i32 %903, 1
  %997 = icmp eq i32 %996, 4
  br i1 %997, label %998, label %902, !llvm.loop !119

; <label>:998                                     ; preds = %902
  br label %999

; <label>:999                                     ; preds = %998, %841
  %1000 = phi float [ %842, %841 ], [ %994, %998 ]
  %1001 = phi float [ %843, %841 ], [ %995, %998 ]
  %1002 = and i32 %439, 16
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1070, label %1004

; <label>:1004                                    ; preds = %999
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = fadd fast float %1006, %154
  %1009 = fadd fast float %1007, %155
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 430)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1013 = fsub fast float %1008, %1011
  %1014 = fsub fast float %1009, %1012
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 2
  %1017 = fmul fast float %1013, %1016
  %1018 = fmul fast float %1014, %1016
  %1019 = fadd fast float %1017, 5.000000e-01
  %1020 = fadd fast float %1018, 5.000000e-01
  %1021 = fcmp fast olt float %1019, 0.000000e+00
  %1022 = fcmp fast olt float %1020, 0.000000e+00
  %1023 = or i1 %1021, %1022
  %1024 = fcmp fast oge float %1019, 1.000000e+00
  %1025 = fcmp fast oge float %1020, 1.000000e+00
  %1026 = or i1 %1024, %1025
  %1027 = or i1 %1023, %1026
  br i1 %1027, label %1061, label %1028

; <label>:1028                                    ; preds = %1004
  %1029 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1030 = fadd fast float %1029, %156
  %1031 = fmul fast float %1016, %1008
  %1032 = fmul fast float %1016, %1009
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 366)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 2
  %1035 = fsub fast float %1030, %1034
  %1036 = extractvalue %dx.types.CBufRet.f32 %1033, 1
  %1037 = fmul fast float %1035, %1036
  %1038 = call float @dx.op.unary.f32(i32 7, float %1037)  ; Saturate(value)
  %1039 = call float @dx.op.binary.f32(i32 36, float %1020, float %1038)  ; FMin(a,b)
  %1040 = call float @dx.op.binary.f32(i32 36, float %1019, float %1039)  ; FMin(a,b)
  %1041 = call float @dx.op.binary.f32(i32 35, float %1020, float %1038)  ; FMax(a,b)
  %1042 = call float @dx.op.binary.f32(i32 35, float %1019, float %1041)  ; FMax(a,b)
  %1043 = fsub fast float 1.000000e+00, %1042
  %1044 = call float @dx.op.binary.f32(i32 36, float %1040, float %1043)  ; FMin(a,b)
  %1045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 437)  ; CBufferLoadLegacy(handle,regIndex)
  %1046 = extractvalue %dx.types.CBufRet.f32 %1045, 3
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 434)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1049 = call float @dx.op.binary.f32(i32 35, float %1048, float %1046)  ; FMax(a,b)
  %1050 = fsub fast float %1049, %1048
  %1051 = fsub fast float %1044, %1048
  %1052 = fdiv fast float %1051, %1050
  %1053 = call float @dx.op.unary.f32(i32 7, float %1052)  ; Saturate(value)
  %1054 = fmul fast float %1053, 2.000000e+00
  %1055 = fsub fast float 3.000000e+00, %1054
  %1056 = fmul fast float %1053, %1053
  %1057 = fmul fast float %1056, %1055
  %1058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %56, %dx.types.Handle %61, float %1031, float %1032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = fmul fast float %1057, %1059
  br label %1061

; <label>:1061                                    ; preds = %1028, %1004
  %1062 = phi float [ %1060, %1028 ], [ 0.000000e+00, %1004 ]
  %1063 = fmul fast float %515, %232
  %1064 = fmul fast float %515, %233
  %1065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %556, %dx.types.Handle %1065, float %1063, float %1064, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = fmul fast float %1067, %1062
  %1069 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1068)  ; FMax(a,b)
  br label %1070

; <label>:1070                                    ; preds = %1061, %999
  %1071 = phi float [ %1069, %1061 ], [ 0.000000e+00, %999 ]
  %1072 = fmul fast float %233, 3.906250e-03
  %1073 = fmul fast float %232, 7.812500e-03
  %1074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1075 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %556, %dx.types.Handle %1074, float %1073, float %1072, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %1076 = add i32 %527, 0
  %1077 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1076, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1078 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1077, i32 0)  ; GetDimensions(handle,mipLevel)
  %1079 = extractvalue %dx.types.Dimensions %1078, 0
  %1080 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1079)  ; FirstbitLo(value)
  %1081 = uitofp i32 %1080 to float
  %1082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.f32 %1082, 1
  %1084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %1085 = extractvalue %dx.types.CBufRet.f32 %1084, 2
  %1086 = fadd fast float %242, -7.000000e+00
  %1087 = fadd fast float %1086, %1081
  %1088 = fadd fast float %1087, %1083
  %1089 = fadd fast float %1088, %1085
  %1090 = call float @dx.op.binary.f32(i32 35, float %1089, float 0.000000e+00)  ; FMax(a,b)
  %1091 = and i32 %439, 8
  %1092 = icmp eq i32 %1091, 0
  br i1 %1092, label %1109, label %1093

; <label>:1093                                    ; preds = %1070
  %1094 = fadd fast float %512, 1.000000e+00
  %1095 = fmul fast float %846, %1094
  %1096 = fsub fast float %1095, %512
  %1097 = fsub fast float %1094, %1096
  %1098 = call float @dx.op.unary.f32(i32 7, float %1097)  ; Saturate(value)
  %1099 = fsub fast float 1.000000e+00, %1095
  %1100 = call float @dx.op.unary.f32(i32 7, float %1099)  ; Saturate(value)
  %1101 = fsub fast float %1098, %1100
  %1102 = fsub fast float %1071, %1100
  %1103 = fdiv fast float %1102, %1101
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1105 = fmul fast float %1104, 2.000000e+00
  %1106 = fsub fast float 3.000000e+00, %1105
  %1107 = fmul fast float %1104, %1104
  %1108 = fmul fast float %1107, %1106
  br label %1109

; <label>:1109                                    ; preds = %1093, %1070
  %1110 = phi float [ %1108, %1093 ], [ %1071, %1070 ]
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 3
  %1113 = fmul fast float %1112, %1110
  %1114 = call float @dx.op.unary.f32(i32 7, float %1113)  ; Saturate(value)
  %1115 = and i32 %439, 32
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1133, label %1117

; <label>:1117                                    ; preds = %1109
  %1118 = add i32 %530, 0
  %1119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1119, %dx.types.Handle %62, float %1113, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1121 = extractvalue %dx.types.ResRet.f32 %1120, 0
  %1122 = extractvalue %dx.types.ResRet.f32 %1120, 1
  %1123 = extractvalue %dx.types.ResRet.f32 %1120, 2
  %1124 = extractvalue %dx.types.ResRet.f32 %1120, 3
  %1125 = and i32 %524, 255
  %1126 = uitofp i32 %1125 to float
  %1127 = lshr i32 %524, 8
  %1128 = and i32 %1127, 255
  %1129 = uitofp i32 %1128 to float
  %1130 = fmul fast float %1124, %1126
  %1131 = fadd fast float %1130, %1129
  %1132 = fmul fast float %1131, 0x3F70101000000000
  br label %1133

; <label>:1133                                    ; preds = %1117, %1109
  %1134 = phi float [ %1121, %1117 ], [ %495, %1109 ]
  %1135 = phi float [ %1122, %1117 ], [ %496, %1109 ]
  %1136 = phi float [ %1123, %1117 ], [ %497, %1109 ]
  %1137 = phi float [ %1132, %1117 ], [ %498, %1109 ]
  %1138 = fsub fast float %1134, %451
  %1139 = fsub fast float %1135, %452
  %1140 = fsub fast float %1136, %453
  %1141 = fmul fast float %1138, %1113
  %1142 = fmul fast float %1139, %1113
  %1143 = fmul fast float %1140, %1113
  %1144 = fadd fast float %1141, %451
  %1145 = fadd fast float %1142, %452
  %1146 = fadd fast float %1143, %453
  %1147 = fsub fast float %1137, %454
  %1148 = fmul fast float %1147, %1113
  %1149 = fadd fast float %1148, %454
  %1150 = fmul fast float %460, %373
  %1151 = fadd fast float %1150, %461
  %1152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 24)  ; CBufferLoadLegacy(handle,regIndex)
  %1153 = extractvalue %dx.types.CBufRet.f32 %1152, 2
  %1154 = fcmp fast oge float %1151, %1153
  %1155 = and i32 %179, 65535
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = lshr i32 %181, 16
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fadd fast float %1144, %1156
  %1160 = fadd fast float %1145, %1158
  %1161 = fadd fast float %1146, %1156
  %1162 = fadd fast float %1149, %1158
  %1163 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1159)  ; LegacyF32ToF16(value)
  %1164 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1160)  ; LegacyF32ToF16(value)
  %1165 = shl i32 %1164, 16
  %1166 = or i32 %1165, %1163
  %1167 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1161)  ; LegacyF32ToF16(value)
  %1168 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1162)  ; LegacyF32ToF16(value)
  %1169 = shl i32 %1168, 16
  %1170 = or i32 %1169, %1167
  %1171 = fadd fast float %1156, 1.000000e+00
  %1172 = fadd fast float %1158, %457
  %1173 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1171)  ; LegacyF32ToF16(value)
  %1174 = call i32 @dx.op.legacyF32ToF16(i32 130, float %1172)  ; LegacyF32ToF16(value)
  %1175 = shl i32 %1174, 16
  %1176 = or i32 %1175, %1173
  %1177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %1178 = extractvalue %dx.types.CBufRet.f32 %1177, 2
  %1179 = fmul fast float %1178, 0x3FE3C6EF40000000
  %1180 = frem fast float %99, 2.560000e+02
  %1181 = frem fast float %100, 2.560000e+02
  %1182 = fptoui float %1180 to i32
  %1183 = fptoui float %1181 to i32
  %1184 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %34, i32 0, i32 %1182, i32 %1183, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = fadd fast float %1185, %1179
  %1188 = fadd fast float %1186, %1179
  %1189 = call float @dx.op.unary.f32(i32 22, float %1187)  ; Frc(value)
  %1190 = call float @dx.op.unary.f32(i32 22, float %1188)  ; Frc(value)
  %1191 = fcmp fast ogt float %120, 0.000000e+00
  %1192 = fcmp fast olt float %120, 0.000000e+00
  %1193 = zext i1 %1191 to i32
  %1194 = zext i1 %1192 to i32
  %1195 = sub nsw i32 %1193, %1194
  %1196 = sitofp i32 %1195 to float
  %1197 = fadd fast float %1196, %120
  %1198 = fdiv fast float -1.000000e+00, %1197
  %1199 = fmul fast float %118, %119
  %1200 = fmul fast float %1199, %1198
  %1201 = fmul fast float %118, %118
  %1202 = fmul fast float %1201, %1196
  %1203 = fmul fast float %1202, %1198
  %1204 = fadd fast float %1203, 1.000000e+00
  %1205 = fmul fast float %1200, %1196
  %1206 = fmul fast float %1196, %118
  %1207 = fsub fast float -0.000000e+00, %1206
  %1208 = fmul fast float %119, %119
  %1209 = fmul fast float %1208, %1198
  %1210 = fadd fast float %1209, %1196
  %1211 = fsub fast float -0.000000e+00, %119
  %1212 = and i32 %1163, 65535
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = lshr i32 %1166, 16
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = and i32 %1167, 65535
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = lshr i32 %1170, 16
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = and i32 %1173, 65535
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1176, 16
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1225 = call float @dx.op.unary.f32(i32 83, float %154)  ; DerivCoarseX(value)
  %1226 = call float @dx.op.unary.f32(i32 83, float %155)  ; DerivCoarseX(value)
  %1227 = call float @dx.op.unary.f32(i32 83, float %156)  ; DerivCoarseX(value)
  %1228 = call float @dx.op.unary.f32(i32 84, float %154)  ; DerivCoarseY(value)
  %1229 = call float @dx.op.unary.f32(i32 84, float %155)  ; DerivCoarseY(value)
  %1230 = call float @dx.op.unary.f32(i32 84, float %156)  ; DerivCoarseY(value)
  %1231 = fadd fast float %1225, %154
  %1232 = fadd fast float %1226, %155
  %1233 = fadd fast float %1227, %156
  %1234 = fadd fast float %1228, %154
  %1235 = fadd fast float %1229, %155
  %1236 = fadd fast float %1230, %156
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 2
  %1243 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1244 = fmul fast float %1238, %99
  %1245 = fmul fast float %1244, %1242
  %1246 = fmul fast float %1239, %100
  %1247 = fmul fast float %1246, %1243
  %1248 = fptoui float %1245 to i32
  %1249 = fptoui float %1247 to i32
  %1250 = fadd fast float %1238, -1.000000e+00
  %1251 = fadd fast float %1239, -1.000000e+00
  %1252 = fptoui float %1250 to i32
  %1253 = fptoui float %1251 to i32
  %1254 = call i32 @dx.op.binary.i32(i32 40, i32 %1248, i32 %1252)  ; UMin(a,b)
  %1255 = call i32 @dx.op.binary.i32(i32 40, i32 %1249, i32 %1253)  ; UMin(a,b)
  %1256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1257 = extractvalue %dx.types.CBufRet.f32 %1256, 2
  %1258 = extractvalue %dx.types.CBufRet.f32 %1256, 3
  %1259 = fmul fast float %1257, %88
  %1260 = fsub fast float %1259, %1258
  %1261 = fadd fast float %1240, -1.000000e+00
  %1262 = call float @dx.op.binary.f32(i32 36, float %1260, float %1261)  ; FMin(a,b)
  %1263 = fptoui float %1262 to i32
  %1264 = fptoui float %1238 to i32
  %1265 = fptoui float %1239 to i32
  %1266 = mul i32 %1263, %1265
  %1267 = add i32 %1266, %1255
  %1268 = mul i32 %1267, %1264
  %1269 = add i32 %1268, %1254
  %1270 = shl i32 %1269, 2
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = and i32 %1272, 1023
  %1274 = lshr i32 %1272, 10
  %1275 = icmp eq i32 %1273, 0
  br i1 %1275, label %1671, label %1276

; <label>:1276                                    ; preds = %1133
  %1277 = and i32 %1272, 1023
  br label %1278

; <label>:1278                                    ; preds = %1399, %1276
  %1279 = phi float [ %1400, %1399 ], [ 0.000000e+00, %1276 ]
  %1280 = phi float [ %1401, %1399 ], [ 0.000000e+00, %1276 ]
  %1281 = phi float [ %1402, %1399 ], [ 0.000000e+00, %1276 ]
  %1282 = phi float [ %1403, %1399 ], [ %1000, %1276 ]
  %1283 = phi float [ %1404, %1399 ], [ %1001, %1276 ]
  %1284 = phi float [ %1405, %1399 ], [ %1221, %1276 ]
  %1285 = phi float [ %1406, %1399 ], [ %1224, %1276 ]
  %1286 = phi float [ %1407, %1399 ], [ 0.000000e+00, %1276 ]
  %1287 = phi float [ %1408, %1399 ], [ %1219, %1276 ]
  %1288 = phi float [ %1409, %1399 ], [ %1213, %1276 ]
  %1289 = phi float [ %1410, %1399 ], [ %1215, %1276 ]
  %1290 = phi float [ %1411, %1399 ], [ %1217, %1276 ]
  %1291 = phi i32 [ %1412, %1399 ], [ 0, %1276 ]
  %1292 = phi i32 [ %1348, %1399 ], [ 0, %1276 ]
  %1293 = add nuw nsw i32 %1292, %1274
  %1294 = shl i32 %1293, 2
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = shl i32 %1296, 8
  %1298 = or i32 %1297, 48
  %1299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1298, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.f32 %1299, 0
  %1301 = extractvalue %dx.types.ResRet.f32 %1299, 1
  %1302 = extractvalue %dx.types.ResRet.f32 %1299, 2
  %1303 = extractvalue %dx.types.ResRet.f32 %1299, 3
  %1304 = or i32 %1297, 64
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.i32 %1305, 1
  %1308 = or i32 %1297, 80
  %1309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 2
  %1311 = extractvalue %dx.types.ResRet.f32 %1309, 3
  %1312 = or i32 %1297, 96
  %1313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.ResRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.ResRet.f32 %1313, 2
  %1317 = extractvalue %dx.types.ResRet.f32 %1313, 3
  %1318 = or i32 %1297, 112
  %1319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.f32 %1319, 2
  %1321 = or i32 %1297, 128
  %1322 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1321, i32 undef)  ; BufferLoad(srv,index,wot)
  %1323 = extractvalue %dx.types.ResRet.f32 %1322, 0
  %1324 = extractvalue %dx.types.ResRet.f32 %1322, 1
  %1325 = extractvalue %dx.types.ResRet.f32 %1322, 2
  %1326 = extractvalue %dx.types.ResRet.f32 %1322, 3
  %1327 = or i32 %1297, 144
  %1328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1327, i32 undef)  ; BufferLoad(srv,index,wot)
  %1329 = extractvalue %dx.types.ResRet.f32 %1328, 0
  %1330 = extractvalue %dx.types.ResRet.f32 %1328, 1
  %1331 = extractvalue %dx.types.ResRet.f32 %1328, 2
  %1332 = extractvalue %dx.types.ResRet.f32 %1328, 3
  %1333 = or i32 %1297, 160
  %1334 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1333, i32 undef)  ; BufferLoad(srv,index,wot)
  %1335 = extractvalue %dx.types.ResRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.ResRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.ResRet.f32 %1334, 2
  %1338 = or i32 %1297, 192
  %1339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1338, i32 undef)  ; BufferLoad(srv,index,wot)
  %1340 = extractvalue %dx.types.ResRet.i32 %1339, 0
  %1341 = or i32 %1297, 208
  %1342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1341, i32 undef)  ; BufferLoad(srv,index,wot)
  %1343 = extractvalue %dx.types.ResRet.f32 %1342, 0
  %1344 = or i32 %1297, 248
  %1345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1344, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = add nuw nsw i32 %1292, 1
  %1349 = bitcast float %1303 to i32
  %1350 = and i32 %1349, 512
  %1351 = icmp ne i32 %1350, 0
  %1352 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1297, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.f32 %1352, 0
  %1354 = extractvalue %dx.types.ResRet.f32 %1352, 1
  %1355 = extractvalue %dx.types.ResRet.f32 %1352, 2
  %1356 = extractvalue %dx.types.ResRet.f32 %1352, 3
  %1357 = call float @dx.op.dot4.f32(i32 56, float %1353, float %1354, float %1355, float %1356, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1358 = or i32 %1297, 16
  %1359 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1358, i32 undef)  ; BufferLoad(srv,index,wot)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = extractvalue %dx.types.ResRet.f32 %1359, 3
  %1364 = call float @dx.op.dot4.f32(i32 56, float %1360, float %1361, float %1362, float %1363, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1365 = or i32 %1297, 32
  %1366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.f32 %1366, 0
  %1368 = extractvalue %dx.types.ResRet.f32 %1366, 1
  %1369 = extractvalue %dx.types.ResRet.f32 %1366, 2
  %1370 = extractvalue %dx.types.ResRet.f32 %1366, 3
  %1371 = call float @dx.op.dot4.f32(i32 56, float %1367, float %1368, float %1369, float %1370, float %154, float %155, float %156, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1372 = call float @dx.op.unary.f32(i32 27, float %1357)  ; Round_ni(value)
  %1373 = call float @dx.op.unary.f32(i32 6, float %1372)  ; FAbs(value)
  %1374 = call float @dx.op.unary.f32(i32 27, float %1364)  ; Round_ni(value)
  %1375 = call float @dx.op.unary.f32(i32 6, float %1374)  ; FAbs(value)
  %1376 = call float @dx.op.unary.f32(i32 6, float %1371)  ; FAbs(value)
  %1377 = call float @dx.op.unary.f32(i32 27, float %1376)  ; Round_ni(value)
  %1378 = fadd fast float %1375, %1373
  %1379 = fadd fast float %1378, %1377
  %1380 = fcmp fast oeq float %1379, 0.000000e+00
  %1381 = call float @dx.op.dot4.f32(i32 56, float %1353, float %1354, float %1355, float %1356, float %1231, float %1232, float %1233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1382 = call float @dx.op.dot4.f32(i32 56, float %1360, float %1361, float %1362, float %1363, float %1231, float %1232, float %1233, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1383 = call float @dx.op.dot4.f32(i32 56, float %1353, float %1354, float %1355, float %1356, float %1234, float %1235, float %1236, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1384 = call float @dx.op.dot4.f32(i32 56, float %1360, float %1361, float %1362, float %1363, float %1234, float %1235, float %1236, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1385 = fsub fast float %1381, %1357
  %1386 = fsub fast float %1383, %1357
  %1387 = fsub fast float %1382, %1364
  %1388 = fsub fast float %1384, %1364
  %1389 = call float @dx.op.dot3.f32(i32 55, float %1300, float %1301, float %1302, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1392 = call float @dx.op.unary.f32(i32 6, float %1389)  ; FAbs(value)
  %1393 = fadd fast float %1392, %1391
  %1394 = call float @dx.op.unary.f32(i32 7, float %1393)  ; Saturate(value)
  %1395 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1396 = fcmp fast ogt float %1394, %1395
  %1397 = and i1 %1380, %1396
  %1398 = and i1 %1351, %1397
  br i1 %1398, label %1414, label %1399

; <label>:1399                                    ; preds = %1657, %1495, %1414, %1278
  %1400 = phi float [ %1279, %1414 ], [ %1279, %1495 ], [ %1667, %1657 ], [ %1279, %1278 ]
  %1401 = phi float [ %1280, %1414 ], [ %1280, %1495 ], [ %1668, %1657 ], [ %1280, %1278 ]
  %1402 = phi float [ %1281, %1414 ], [ %1281, %1495 ], [ %1669, %1657 ], [ %1281, %1278 ]
  %1403 = phi float [ %1282, %1414 ], [ %1282, %1495 ], [ %1631, %1657 ], [ %1282, %1278 ]
  %1404 = phi float [ %1283, %1414 ], [ %1283, %1495 ], [ %1632, %1657 ], [ %1283, %1278 ]
  %1405 = phi float [ %1284, %1414 ], [ %1284, %1495 ], [ %1626, %1657 ], [ %1284, %1278 ]
  %1406 = phi float [ %1285, %1414 ], [ %1285, %1495 ], [ %1623, %1657 ], [ %1285, %1278 ]
  %1407 = phi float [ %1286, %1414 ], [ %1286, %1495 ], [ %1620, %1657 ], [ %1286, %1278 ]
  %1408 = phi float [ %1287, %1414 ], [ %1287, %1495 ], [ %1618, %1657 ], [ %1287, %1278 ]
  %1409 = phi float [ %1288, %1414 ], [ %1288, %1495 ], [ %1613, %1657 ], [ %1288, %1278 ]
  %1410 = phi float [ %1289, %1414 ], [ %1289, %1495 ], [ %1614, %1657 ], [ %1289, %1278 ]
  %1411 = phi float [ %1290, %1414 ], [ %1290, %1495 ], [ %1615, %1657 ], [ %1290, %1278 ]
  %1412 = phi i32 [ %1422, %1414 ], [ %1422, %1495 ], [ %1422, %1657 ], [ %1291, %1278 ]
  %1413 = icmp eq i32 %1348, %1277
  br i1 %1413, label %1670, label %1278

; <label>:1414                                    ; preds = %1278
  %1415 = extractvalue %dx.types.ResRet.f32 %1319, 3
  %1416 = extractvalue %dx.types.ResRet.f32 %1319, 1
  %1417 = extractvalue %dx.types.ResRet.f32 %1319, 0
  %1418 = extractvalue %dx.types.ResRet.f32 %1309, 1
  %1419 = extractvalue %dx.types.ResRet.f32 %1309, 0
  %1420 = extractvalue %dx.types.ResRet.i32 %1305, 3
  %1421 = extractvalue %dx.types.ResRet.i32 %1305, 2
  %1422 = add i32 %1291, 1
  %1423 = add i32 %1420, 0
  %1424 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1423, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1425 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1424, %dx.types.Handle %1074, float %1357, float %1364, float undef, float undef, i32 0, i32 0, i32 undef, float %1385, float %1387, float undef, float %1386, float %1388, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1426 = extractvalue %dx.types.ResRet.f32 %1425, 0
  %1427 = fmul fast float %1426, %1419
  %1428 = fadd fast float %1427, %1418
  %1429 = call float @dx.op.unary.f32(i32 7, float %1428)  ; Saturate(value)
  %1430 = fmul fast float %1357, %1314
  %1431 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1364, float %1430)  ; FMad(a,b,c)
  %1432 = fadd fast float %1431, %1417
  %1433 = fmul fast float %1357, %1316
  %1434 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1364, float %1433)  ; FMad(a,b,c)
  %1435 = fadd fast float %1434, %1416
  %1436 = fmul fast float %1385, %1314
  %1437 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1387, float %1436)  ; FMad(a,b,c)
  %1438 = fmul fast float %1385, %1316
  %1439 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1387, float %1438)  ; FMad(a,b,c)
  %1440 = fmul fast float %1386, %1314
  %1441 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1388, float %1440)  ; FMad(a,b,c)
  %1442 = fmul fast float %1386, %1316
  %1443 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1388, float %1442)  ; FMad(a,b,c)
  %1444 = add i32 %1421, 0
  %1445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1444, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1445, %dx.types.Handle %1074, float %1432, float %1435, float undef, float undef, i32 0, i32 0, i32 undef, float %1437, float %1439, float undef, float %1441, float %1443, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = and i32 %1349, 1024
  %1449 = icmp ne i32 %1448, 0
  %1450 = fcmp fast ogt float %1447, 0x3FE0101020000000
  %1451 = uitofp i1 %1450 to float
  %1452 = select i1 %1449, float %1451, float %1447
  %1453 = and i32 %1349, 8192
  %1454 = icmp ne i32 %1453, 0
  %1455 = select i1 %1454, float %1415, float 1.000000e+00
  %1456 = fmul fast float %1357, 2.000000e+00
  %1457 = fadd fast float %1456, -1.000000e+00
  %1458 = call float @dx.op.unary.f32(i32 6, float %1457)  ; FAbs(value)
  %1459 = fmul fast float %1458, %1346
  %1460 = fsub fast float %1459, %1346
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1462 = fmul fast float %1364, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = call float @dx.op.unary.f32(i32 6, float %1463)  ; FAbs(value)
  %1465 = fmul fast float %1464, %1347
  %1466 = fsub fast float %1465, %1347
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  %1468 = fmul fast float %1376, %1310
  %1469 = fsub fast float %1468, %1310
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fmul fast float %1429, %1455
  %1472 = fmul fast float %1471, %1426
  %1473 = fmul fast float %1472, %1461
  %1474 = fmul fast float %1473, %1452
  %1475 = fmul fast float %1474, %1467
  %1476 = fmul fast float %1475, %1470
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 1
  %1479 = extractvalue %dx.types.CBufRet.f32 %1477, 0
  %1480 = fsub fast float %1394, %1479
  %1481 = fmul fast float %1480, %1478
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  %1483 = fmul fast float %1476, %1311
  %1484 = fadd fast float %1476, %1311
  %1485 = fmul fast float %1484, %1320
  %1486 = fsub fast float %1485, %1320
  %1487 = call float @dx.op.unary.f32(i32 7, float %1486)  ; Saturate(value)
  %1488 = and i32 %1349, 128
  %1489 = icmp ne i32 %1488, 0
  %1490 = select i1 %1489, float %1487, float %1483
  %1491 = fmul fast float %1490, %1482
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = fcmp fast ugt float %1491, %1493
  br i1 %1494, label %1495, label %1399

; <label>:1495                                    ; preds = %1414
  br i1 %1454, label %1399, label %1496

; <label>:1496                                    ; preds = %1495
  %1497 = and i32 %1349, 4
  %1498 = and i32 %1349, 8
  %1499 = add i32 %1306, 0
  %1500 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1499, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1502 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1500, %dx.types.Handle %1501, float %1432, float %1435, float undef, float undef, i32 0, i32 0, i32 undef, float %1437, float %1439, float undef, float %1441, float %1443, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  %1504 = extractvalue %dx.types.ResRet.f32 %1502, 1
  %1505 = extractvalue %dx.types.ResRet.f32 %1502, 2
  %1506 = extractvalue %dx.types.ResRet.f32 %1502, 3
  %1507 = bitcast float %1332 to i32
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = lshr i32 %1507, 8
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1506, %1509
  %1514 = fadd fast float %1513, %1512
  %1515 = fmul fast float %1514, 0x3F70101000000000
  %1516 = add i32 %1307, 0
  %1517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1517, %dx.types.Handle %1501, float %1432, float %1435, float undef, float undef, i32 0, i32 0, i32 undef, float %1437, float %1439, float undef, float %1441, float %1443, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = extractvalue %dx.types.ResRet.f32 %1518, 1
  %1521 = extractvalue %dx.types.ResRet.f32 %1518, 2
  %1522 = extractvalue %dx.types.ResRet.f32 %1518, 3
  %1523 = bitcast float %1326 to i32
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = lshr i32 %1523, 8
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = lshr i32 %1523, 16
  %1530 = and i32 %1529, 255
  %1531 = uitofp i32 %1530 to float
  %1532 = fmul fast float %1531, 0x3F70101000000000
  %1533 = fmul fast float %1519, %1525
  %1534 = fadd fast float %1533, %1528
  %1535 = fmul fast float %1534, 0x3F70101000000000
  %1536 = fadd fast float %1520, -5.000000e-01
  %1537 = fadd fast float %1522, -5.000000e-01
  %1538 = fmul fast float %1536, %1532
  %1539 = fmul fast float %1537, %1532
  %1540 = fadd fast float %1538, 5.000000e-01
  %1541 = fadd fast float %1539, 5.000000e-01
  %1542 = fmul fast float %1503, %1335
  %1543 = fmul fast float %1504, %1336
  %1544 = fmul fast float %1505, %1337
  %1545 = fmul fast float %1540, 2.000000e+00
  %1546 = fadd fast float %1545, -1.000000e+00
  %1547 = fmul fast float %1541, 2.000000e+00
  %1548 = fadd fast float %1547, -1.000000e+00
  %1549 = fadd fast float %1546, %1548
  %1550 = fmul fast float %1549, 5.000000e-01
  %1551 = fsub fast float %1546, %1548
  %1552 = fmul fast float %1551, 5.000000e-01
  %1553 = call float @dx.op.unary.f32(i32 6, float %1550)  ; FAbs(value)
  %1554 = fsub fast float 1.000000e+00, %1553
  %1555 = call float @dx.op.unary.f32(i32 6, float %1552)  ; FAbs(value)
  %1556 = fsub fast float %1554, %1555
  %1557 = call float @dx.op.dot3.f32(i32 55, float %1550, float %1552, float %1556, float %1550, float %1552, float %1556)  ; Dot3(ax,ay,az,bx,by,bz)
  %1558 = call float @dx.op.unary.f32(i32 25, float %1557)  ; Rsqrt(value)
  %1559 = fmul fast float %1550, %1558
  %1560 = fmul fast float %1552, %1558
  %1561 = fmul fast float %1558, %1556
  %1562 = fmul fast float %1561, %1300
  %1563 = fmul fast float %1561, %1301
  %1564 = fmul fast float %1561, %1302
  %1565 = fmul fast float %1559, %1323
  %1566 = fmul fast float %1559, %1324
  %1567 = fmul fast float %1559, %1325
  %1568 = fadd fast float %1565, %1562
  %1569 = fadd fast float %1566, %1563
  %1570 = fadd fast float %1567, %1564
  %1571 = fmul fast float %1560, %1329
  %1572 = fmul fast float %1560, %1330
  %1573 = fmul fast float %1560, %1331
  %1574 = fadd fast float %1568, %1571
  %1575 = fadd fast float %1569, %1572
  %1576 = fadd fast float %1570, %1573
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1574, float %1575, float %1576, float %1574, float %1575, float %1576)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = call float @dx.op.unary.f32(i32 25, float %1577)  ; Rsqrt(value)
  %1579 = fmul fast float %1574, %1578
  %1580 = fmul fast float %1575, %1578
  %1581 = fmul fast float %1576, %1578
  %1582 = fcmp fast ogt float %1389, %1395
  %1583 = fsub fast float -0.000000e+00, %1579
  %1584 = fsub fast float -0.000000e+00, %1580
  %1585 = fsub fast float -0.000000e+00, %1581
  %1586 = select i1 %1582, float %1579, float %1583
  %1587 = select i1 %1582, float %1580, float %1584
  %1588 = select i1 %1582, float %1581, float %1585
  %1589 = fmul fast float %1586, %1204
  %1590 = call float @dx.op.tertiary.f32(i32 46, float %1587, float %1205, float %1589)  ; FMad(a,b,c)
  %1591 = call float @dx.op.tertiary.f32(i32 46, float %1588, float %1207, float %1590)  ; FMad(a,b,c)
  %1592 = fmul fast float %1586, %1200
  %1593 = call float @dx.op.tertiary.f32(i32 46, float %1587, float %1210, float %1592)  ; FMad(a,b,c)
  %1594 = call float @dx.op.tertiary.f32(i32 46, float %1588, float %1211, float %1593)  ; FMad(a,b,c)
  %1595 = icmp ne i32 %1498, 0
  %1596 = select i1 %1595, float 1.000000e+00, float 0.000000e+00
  %1597 = fmul fast float %1491, %1596
  %1598 = and i32 %1349, 1
  %1599 = icmp ne i32 %1598, 0
  %1600 = fadd fast float %1591, %1282
  %1601 = fadd fast float %1594, %1283
  %1602 = select i1 %1599, float %1600, float %1591
  %1603 = select i1 %1599, float %1601, float %1594
  %1604 = icmp ne i32 %1497, 0
  %1605 = select i1 %1604, float 1.000000e+00, float 0.000000e+00
  %1606 = fmul fast float %1491, %1605
  %1607 = fsub fast float %1542, %1288
  %1608 = fsub fast float %1543, %1289
  %1609 = fsub fast float %1544, %1290
  %1610 = fmul fast float %1607, %1606
  %1611 = fmul fast float %1608, %1606
  %1612 = fmul fast float %1609, %1606
  %1613 = fadd fast float %1610, %1288
  %1614 = fadd fast float %1611, %1289
  %1615 = fadd fast float %1612, %1290
  %1616 = fsub fast float %1515, %1287
  %1617 = fmul fast float %1616, %1606
  %1618 = fadd fast float %1617, %1287
  %1619 = fadd fast float %1491, %1286
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fsub fast float %1535, %1285
  %1622 = fmul fast float %1621, %1597
  %1623 = fadd fast float %1622, %1285
  %1624 = fsub fast float %1521, %1284
  %1625 = fmul fast float %1624, %1597
  %1626 = fadd fast float %1625, %1284
  %1627 = fsub fast float %1602, %1282
  %1628 = fsub fast float %1603, %1283
  %1629 = fmul fast float %1627, %1597
  %1630 = fmul fast float %1628, %1597
  %1631 = fadd fast float %1629, %1282
  %1632 = fadd fast float %1630, %1283
  %1633 = and i32 %1349, 16
  %1634 = icmp eq i32 %1633, 0
  br i1 %1634, label %1657, label %1635

; <label>:1635                                    ; preds = %1496
  %1636 = bitcast float %1343 to i32
  %1637 = add i32 %1340, 0
  %1638 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1637, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1639 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1638, %dx.types.Handle %1501, float %1432, float %1435, float undef, float undef, i32 0, i32 0, i32 undef, float %1437, float %1439, float undef, float %1441, float %1443, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1640 = extractvalue %dx.types.ResRet.f32 %1639, 0
  %1641 = extractvalue %dx.types.ResRet.f32 %1639, 1
  %1642 = extractvalue %dx.types.ResRet.f32 %1639, 2
  %1643 = and i32 %1636, 65535
  %1644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1643)  ; LegacyF16ToF32(value)
  %1645 = fmul fast float %1640, %1335
  %1646 = fmul fast float %1641, %1336
  %1647 = fmul fast float %1642, %1337
  %1648 = and i32 %1349, 16384
  %1649 = icmp ne i32 %1648, 0
  %1650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1651 = extractvalue %dx.types.CBufRet.f32 %1650, 0
  %1652 = select i1 %1649, float %1651, float 1.000000e+00
  %1653 = fmul fast float %1652, %1644
  %1654 = fmul fast float %1645, %1653
  %1655 = fmul fast float %1646, %1653
  %1656 = fmul fast float %1647, %1653
  br label %1657

; <label>:1657                                    ; preds = %1635, %1496
  %1658 = phi float [ %1654, %1635 ], [ 0.000000e+00, %1496 ]
  %1659 = phi float [ %1655, %1635 ], [ 0.000000e+00, %1496 ]
  %1660 = phi float [ %1656, %1635 ], [ 0.000000e+00, %1496 ]
  %1661 = fsub fast float %1658, %1279
  %1662 = fsub fast float %1659, %1280
  %1663 = fsub fast float %1660, %1281
  %1664 = fmul fast float %1661, %1491
  %1665 = fmul fast float %1662, %1491
  %1666 = fmul fast float %1663, %1491
  %1667 = fadd fast float %1664, %1279
  %1668 = fadd fast float %1665, %1280
  %1669 = fadd fast float %1666, %1281
  br label %1399

; <label>:1670                                    ; preds = %1399
  br label %1671

; <label>:1671                                    ; preds = %1670, %1133
  %1672 = phi float [ 0.000000e+00, %1133 ], [ %1400, %1670 ]
  %1673 = phi float [ 0.000000e+00, %1133 ], [ %1401, %1670 ]
  %1674 = phi float [ 0.000000e+00, %1133 ], [ %1402, %1670 ]
  %1675 = phi float [ %1000, %1133 ], [ %1403, %1670 ]
  %1676 = phi float [ %1001, %1133 ], [ %1404, %1670 ]
  %1677 = phi float [ %1221, %1133 ], [ %1405, %1670 ]
  %1678 = phi float [ %1224, %1133 ], [ %1406, %1670 ]
  %1679 = phi float [ 0.000000e+00, %1133 ], [ %1407, %1670 ]
  %1680 = phi float [ %1219, %1133 ], [ %1408, %1670 ]
  %1681 = phi float [ %1213, %1133 ], [ %1409, %1670 ]
  %1682 = phi float [ %1215, %1133 ], [ %1410, %1670 ]
  %1683 = phi float [ %1217, %1133 ], [ %1411, %1670 ]
  %1684 = phi i32 [ 0, %1133 ], [ %1412, %1670 ]
  %1685 = uitofp i32 %1684 to float
  %1686 = fptoui float %1685 to i32
  %1687 = shl i32 %1686, 16
  %1688 = and i32 %1687, 16711680
  %1689 = call float @dx.op.dot2.f32(i32 54, float %1675, float %1676, float %1675, float %1676)  ; Dot2(ax,ay,bx,by)
  %1690 = fmul fast float %1689, 0x3FE3333340000000
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = call float @dx.op.dot3.f32(i32 55, float %1675, float %1676, float %1691, float %1675, float %1676, float %1691)  ; Dot3(ax,ay,az,bx,by,bz)
  %1693 = call float @dx.op.unary.f32(i32 25, float %1692)  ; Rsqrt(value)
  %1694 = fmul fast float %1693, %1675
  %1695 = fmul fast float %1693, %1676
  %1696 = fmul fast float %1691, %1693
  %1697 = fmul fast float %1696, %118
  %1698 = fmul fast float %1696, %119
  %1699 = fmul fast float %1696, %120
  %1700 = fmul fast float %1694, %1204
  %1701 = fmul fast float %1694, %1205
  %1702 = fmul fast float %1694, %1207
  %1703 = fadd fast float %1697, %1700
  %1704 = fadd fast float %1698, %1701
  %1705 = fadd fast float %1699, %1702
  %1706 = fmul fast float %1695, %1200
  %1707 = fmul fast float %1695, %1210
  %1708 = fmul fast float %1695, %1211
  %1709 = fadd fast float %1703, %1706
  %1710 = fadd fast float %1704, %1707
  %1711 = fadd fast float %1705, %1708
  %1712 = call float @dx.op.dot3.f32(i32 55, float %1709, float %1710, float %1711, float %1709, float %1710, float %1711)  ; Dot3(ax,ay,az,bx,by,bz)
  %1713 = call float @dx.op.unary.f32(i32 25, float %1712)  ; Rsqrt(value)
  %1714 = fmul fast float %1709, %1713
  %1715 = fmul fast float %1710, %1713
  %1716 = fmul fast float %1711, %1713
  %1717 = fadd fast float %1680, 0xBFB99999A0000000
  %1718 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1719 = fmul fast float %1718, 0x3FF1C71C80000000
  %1720 = call float @dx.op.binary.f32(i32 36, float %1680, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1721 = fsub fast float 1.000000e+00, %1719
  %1722 = call float @dx.op.unary.f32(i32 7, float %1721)  ; Saturate(value)
  %1723 = fmul fast float %1722, %1681
  %1724 = fmul fast float %1722, %1682
  %1725 = fmul fast float %1722, %1683
  %1726 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1727 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1728 = call float @dx.op.unary.f32(i32 7, float %1725)  ; Saturate(value)
  %1729 = fmul fast float %1719, %1681
  %1730 = fmul fast float %1719, %1682
  %1731 = fmul fast float %1719, %1683
  %1732 = fadd fast float %1729, %1720
  %1733 = fadd fast float %1730, %1720
  %1734 = fadd fast float %1731, %1720
  %1735 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1736 = call float @dx.op.unary.f32(i32 7, float %1733)  ; Saturate(value)
  %1737 = call float @dx.op.unary.f32(i32 7, float %1734)  ; Saturate(value)
  %1738 = fmul fast float %1736, 0x401CF23780000000
  %1739 = fadd fast float %1738, 0x3FF32641C0000000
  %1740 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = call float @dx.op.unary.f32(i32 25, float %1740)  ; Rsqrt(value)
  %1742 = fmul fast float %1741, %154
  %1743 = fmul fast float %1741, %155
  %1744 = fmul fast float %1741, %156
  %1745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1745, 0
  %1747 = fdiv fast float 1.000000e+00, %1739
  %1748 = select i1 %116, float %1747, float %1739
  %1749 = fadd fast float %1748, -1.000000e+00
  %1750 = fadd fast float %1748, 1.000000e+00
  %1751 = fdiv fast float %1749, %1750
  %1752 = fmul fast float %1751, %1751
  %1753 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1743, float %1744, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %1754 = select i1 %116, float 0.000000e+00, float %1746
  %1755 = fadd fast float %1753, %1754
  %1756 = call float @dx.op.binary.f32(i32 35, float %1755, float -1.000000e+00)  ; FMax(a,b)
  %1757 = call float @dx.op.binary.f32(i32 36, float %1756, float 1.000000e+00)  ; FMin(a,b)
  %1758 = fmul fast float %1748, %1748
  %1759 = fmul fast float %1757, %1757
  %1760 = fsub fast float 1.000000e+00, %1759
  %1761 = fmul fast float %1758, %1760
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fcmp fast olt float %1748, 1.000000e+00
  %1764 = select i1 %1763, float %1759, float %1762
  %1765 = fcmp fast ogt float %1762, 0.000000e+00
  %1766 = fsub fast float 1.000000e+00, %1752
  %1767 = call float @dx.op.unary.f32(i32 24, float %1764)  ; Sqrt(value)
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = call float @dx.op.unary.f32(i32 23, float %1768)  ; Log(value)
  %1770 = fmul fast float %1769, 5.000000e+00
  %1771 = call float @dx.op.unary.f32(i32 21, float %1770)  ; Exp(value)
  %1772 = fmul fast float %1771, %1766
  %1773 = fadd fast float %1772, %1752
  %1774 = select i1 %1765, float %1773, float 1.000000e+00
  %1775 = and i32 %541, 255
  %1776 = uitofp i32 %1775 to float
  %1777 = fmul fast float %1776, 0x3F70101020000000
  %1778 = call float @dx.op.unary.f32(i32 7, float %1777)  ; Saturate(value)
  %1779 = fmul fast float %154, %154
  %1780 = fmul fast float %155, %155
  %1781 = fadd fast float %1780, %1779
  %1782 = fmul fast float %156, %156
  %1783 = fadd fast float %1781, %1782
  %1784 = call float @dx.op.unary.f32(i32 24, float %1783)  ; Sqrt(value)
  %1785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 357)  ; CBufferLoadLegacy(handle,regIndex)
  %1786 = extractvalue %dx.types.CBufRet.f32 %1785, 0
  %1787 = fmul fast float %1786, %1784
  %1788 = extractvalue %dx.types.CBufRet.f32 %1785, 1
  %1789 = fadd fast float %1787, %1788
  %1790 = call float @dx.op.unary.f32(i32 7, float %1789)  ; Saturate(value)
  %1791 = fmul fast float %1778, 2.550000e+02
  %1792 = fmul fast float %1791, %1790
  %1793 = fptoui float %1792 to i32
  %1794 = fsub fast float 1.000000e+00, %1735
  %1795 = fsub fast float 1.000000e+00, %1736
  %1796 = fsub fast float 1.000000e+00, %1737
  %1797 = fmul fast float %1774, %1794
  %1798 = fmul fast float %1774, %1795
  %1799 = fmul fast float %1774, %1796
  %1800 = fadd fast float %1797, %1735
  %1801 = fadd fast float %1798, %1736
  %1802 = fadd fast float %1799, %1737
  %1803 = fptoui float %99 to i32
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = fmul fast float %1805, 5.000000e-01
  %1807 = fptoui float %1806 to i32
  %1808 = icmp eq i32 %1803, %1807
  %1809 = fptoui float %100 to i32
  %1810 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1811 = fmul fast float %1810, 5.000000e-01
  %1812 = fptoui float %1811 to i32
  %1813 = icmp eq i32 %1809, %1812
  %1814 = and i1 %1808, %1813
  br i1 %1814, label %1815, label %1839

; <label>:1815                                    ; preds = %1671
  %1816 = call float @dx.op.binary.f32(i32 35, float %1801, float %1802)  ; FMax(a,b)
  %1817 = call float @dx.op.binary.f32(i32 35, float %1800, float %1816)  ; FMax(a,b)
  %1818 = fsub fast float 1.000000e+00, %1817
  %1819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1820 = extractvalue %dx.types.CBufRet.f32 %1819, 0
  %1821 = extractvalue %dx.types.CBufRet.f32 %1819, 1
  %1822 = extractvalue %dx.types.CBufRet.f32 %1819, 2
  %1823 = fadd fast float %1820, %154
  %1824 = fadd fast float %1821, %155
  %1825 = fadd fast float %1822, %156
  %1826 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %1803, i32 %1809, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1827 = extractvalue %dx.types.ResRet.f32 %1826, 0
  %1828 = fcmp fast ogt float %1827, -1.000000e+00
  %1829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %1830 = extractvalue %dx.types.CBufRet.f32 %1829, 1
  %1831 = select i1 %1828, float %1830, float 1.000000e+00
  %1832 = fadd fast float %1827, 1.000000e+00
  %1833 = fmul fast float %1831, %1832
  %1834 = call float @dx.op.unary.f32(i32 6, float %1833)  ; FAbs(value)
  %1835 = call float @dx.op.unary.f32(i32 83, float %80)  ; DerivCoarseX(value)
  %1836 = call float @dx.op.unary.f32(i32 83, float %81)  ; DerivCoarseX(value)
  %1837 = call float @dx.op.unary.f32(i32 84, float %80)  ; DerivCoarseY(value)
  %1838 = call float @dx.op.unary.f32(i32 84, float %81)  ; DerivCoarseY(value)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 0, i32 1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 4, float %1823, float %1824, float %1825, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 16, float %99, float %100, float %87, float %88, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 32, float %342, float %343, float undef, float undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 40, float %305, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 44, float %307, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 48, float %320, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 52, float %322, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 56, float %1834, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 60, float %1774, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 64, float %1800, float %1801, float %1802, float undef, i8 7)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 76, float %1818, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 80, i32 %198, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 84, i32 %78, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 88, i32 39, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 0, i32 92, i32 -1, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 0, i32 96, float %855, float undef, float undef, float undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
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

; <label>:1839                                    ; preds = %1815, %1671
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 3
  %1842 = fmul fast float %1841, %1678
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1845 = fsub fast float 1.000000e+00, %1679
  %1846 = call float @dx.op.binary.f32(i32 36, float 1.000000e+00, float %1845)  ; FMin(a,b)
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1735, float %1736, float %1737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = fsub fast float 1.000000e+00, %1847
  %1849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %57, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1861 = extractvalue %dx.types.CBufRet.f32 %1860, 0
  %1862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1863 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1864 = extractvalue %dx.types.CBufRet.i32 %1863, 3
  %1865 = and i32 %1864, 3
  %1866 = icmp ne i32 %1865, 0
  %1867 = and i32 %1864, 4
  %1868 = icmp ne i32 %1867, 0
  %1869 = and i1 %1866, %1868
  br i1 %1869, label %1870, label %1881

; <label>:1870                                    ; preds = %1839
  %1871 = extractvalue %dx.types.CBufRet.f32 %1862, 3
  %1872 = fmul fast float %1871, %100
  %1873 = extractvalue %dx.types.CBufRet.f32 %1862, 2
  %1874 = fmul fast float %1873, %99
  %1875 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %62, float %1874, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = fsub fast float 1.000000e+00, %1876
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 0
  %1880 = fcmp fast olt float %1877, %1879
  br label %1884

; <label>:1881                                    ; preds = %1839
  %1882 = icmp eq i32 %1867, 0
  %1883 = and i1 %1866, %1882
  br label %1884

; <label>:1884                                    ; preds = %1881, %1870
  %1885 = phi i1 [ %1880, %1870 ], [ %1883, %1881 ]
  %1886 = fsub fast float -0.000000e+00, %156
  %1887 = fsub fast float -0.000000e+00, %1742
  %1888 = fsub fast float -0.000000e+00, %1743
  %1889 = fsub fast float -0.000000e+00, %1744
  %1890 = select i1 %1885, float 0.000000e+00, float %1737
  %1891 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1716, float %1887, float %1888, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %1892 = call float @dx.op.unary.f32(i32 7, float %1891)  ; Saturate(value)
  %1893 = fmul fast float %1753, 2.000000e+00
  %1894 = fmul fast float %1893, %1714
  %1895 = fmul fast float %1893, %1715
  %1896 = fmul fast float %1893, %1716
  %1897 = fsub fast float %1742, %1894
  %1898 = fsub fast float %1743, %1895
  %1899 = fsub fast float %1744, %1896
  %1900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1921 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %62, float %1915, float %1919, float %1920, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1922 = extractvalue %dx.types.ResRet.f32 %1921, 0
  %1923 = and i32 %1906, 1
  %1924 = icmp ne i32 %1923, 0
  %1925 = fsub fast float 1.000000e+00, %1909
  %1926 = bitcast float %1925 to i32
  %1927 = sub nsw i32 2129859010, %1926
  %1928 = bitcast i32 %1927 to float
  %1929 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1930 = extractvalue %dx.types.CBufRet.i32 %1929, 0
  %1931 = icmp eq i32 %1930, 1
  %1932 = select i1 %1931, float 0.000000e+00, float 1.000000e+00
  %1933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1934 = extractvalue %dx.types.CBufRet.f32 %1933, 0
  %1935 = fcmp fast ogt float %1934, 0.000000e+00
  %1936 = fcmp fast ogt float %1932, 0.000000e+00
  %1937 = and i1 %1935, %1936
  br i1 %1937, label %1938, label %2122, !dx.controlflow.hints !121

; <label>:1938                                    ; preds = %1884
  %1939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1940 = extractvalue %dx.types.CBufRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.CBufRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.CBufRet.f32 %1939, 2
  %1943 = fadd fast float %1940, %154
  %1944 = fadd fast float %1941, %155
  %1945 = fadd fast float %1942, %156
  %1946 = fmul fast float %1714, 3.200000e+01
  %1947 = fmul fast float %1715, 3.200000e+01
  %1948 = fadd fast float %1943, %1946
  %1949 = fadd fast float %1944, %1947
  %1950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1951 = extractvalue %dx.types.CBufRet.f32 %1950, 0
  %1952 = extractvalue %dx.types.CBufRet.f32 %1950, 1
  %1953 = fsub fast float %1948, %1951
  %1954 = fsub fast float %1949, %1952
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = extractvalue %dx.types.CBufRet.f32 %1955, 1
  %1958 = fmul fast float %1953, %1956
  %1959 = fmul fast float %1954, %1957
  %1960 = fmul fast float %154, %154
  %1961 = fmul fast float %155, %155
  %1962 = fadd fast float %1960, %1961
  %1963 = call float @dx.op.unary.f32(i32 24, float %1962)  ; Sqrt(value)
  %1964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1982, label %1983, label %2106, !dx.controlflow.hints !122

; <label>:1983                                    ; preds = %1938
  %1984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1999 = extractvalue %dx.types.CBufRet.f32 %1998, 0
  %2000 = fmul fast float %1999, %1958
  %2001 = extractvalue %dx.types.CBufRet.f32 %1998, 1
  %2002 = fadd fast float %2000, %2001
  %2003 = extractvalue %dx.types.CBufRet.f32 %1998, 2
  %2004 = fmul fast float %2003, %1959
  %2005 = extractvalue %dx.types.CBufRet.f32 %1998, 3
  %2006 = fadd fast float %2004, %2005
  %2007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %62, float %2002, float %2006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %62, float %2048, float %2049, float %2051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = fadd fast float %2050, 5.312500e-01
  %2057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %62, float %2048, float %2049, float %2056, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2082 = call float @dx.op.dot3.f32(i32 55, float %2079, float %2080, float %2081, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %2083 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2082)  ; FMax(a,b)
  %2084 = fmul fast float %2083, 0x400C5BF8A0000000
  %2085 = fmul fast float %2053, %1973
  %2086 = fmul fast float %2085, %2084
  %2087 = fmul fast float %2054, %1973
  %2088 = fmul fast float %2087, %2084
  %2089 = fmul fast float %2055, %1973
  %2090 = fmul fast float %2089, %2084
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %1931, label %2126, label %2918, !dx.controlflow.hints !123

; <label>:2126                                    ; preds = %2122
  %2127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2128 = extractvalue %dx.types.CBufRet.f32 %2127, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2127, 1
  %2130 = extractvalue %dx.types.CBufRet.f32 %2127, 2
  %2131 = fadd fast float %2128, %154
  %2132 = fadd fast float %2129, %155
  %2133 = fadd fast float %2130, %156
  %2134 = fmul fast float %1714, 3.200000e+01
  %2135 = fmul fast float %1715, 3.200000e+01
  %2136 = fadd fast float %2131, %2134
  %2137 = fadd fast float %2132, %2135
  %2138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2139 = extractvalue %dx.types.CBufRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.CBufRet.f32 %2138, 1
  %2141 = fsub fast float %2136, %2139
  %2142 = fsub fast float %2137, %2140
  %2143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2144 = extractvalue %dx.types.CBufRet.f32 %2143, 0
  %2145 = extractvalue %dx.types.CBufRet.f32 %2143, 1
  %2146 = fmul fast float %2141, %2144
  %2147 = fmul fast float %2142, %2145
  %2148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2149 = extractvalue %dx.types.CBufRet.f32 %2148, 0
  %2150 = fmul fast float %2146, %2149
  %2151 = extractvalue %dx.types.CBufRet.f32 %2148, 1
  %2152 = fadd fast float %2150, %2151
  %2153 = extractvalue %dx.types.CBufRet.f32 %2148, 2
  %2154 = fmul fast float %2153, %2147
  %2155 = extractvalue %dx.types.CBufRet.f32 %2148, 3
  %2156 = fadd fast float %2154, %2155
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %41, %dx.types.Handle %62, float %2152, float %2156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2176 = extractvalue %dx.types.CBufRet.f32 %2175, 0
  %2177 = fmul fast float %2176, %2174
  %2178 = extractvalue %dx.types.CBufRet.f32 %2175, 1
  %2179 = fadd fast float %2177, %2178
  %2180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %42, %dx.types.Handle %62, float %2152, float %2156, float %2179, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2185 = extractvalue %dx.types.CBufRet.f32 %2184, 0
  %2186 = extractvalue %dx.types.CBufRet.f32 %2184, 1
  %2187 = extractvalue %dx.types.CBufRet.f32 %2184, 2
  %2188 = fmul fast float %2185, %2181
  %2189 = fmul fast float %2186, %2182
  %2190 = fmul fast float %2187, %2183
  %2191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2192 = extractvalue %dx.types.CBufRet.f32 %2191, 0
  %2193 = extractvalue %dx.types.CBufRet.f32 %2191, 1
  %2194 = extractvalue %dx.types.CBufRet.f32 %2191, 2
  %2195 = fadd fast float %2188, %2192
  %2196 = fadd fast float %2189, %2193
  %2197 = fadd fast float %2190, %2194
  %2198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2199 = extractvalue %dx.types.CBufRet.f32 %2198, 0
  %2200 = fmul fast float %2199, %2146
  %2201 = extractvalue %dx.types.CBufRet.f32 %2198, 1
  %2202 = fadd fast float %2200, %2201
  %2203 = extractvalue %dx.types.CBufRet.f32 %2198, 2
  %2204 = fmul fast float %2203, %2147
  %2205 = extractvalue %dx.types.CBufRet.f32 %2198, 3
  %2206 = fadd fast float %2204, %2205
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2210 = extractvalue %dx.types.CBufRet.f32 %2207, 2
  %2211 = extractvalue %dx.types.CBufRet.f32 %2207, 3
  %2212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2213 = extractvalue %dx.types.CBufRet.f32 %2212, 0
  %2214 = extractvalue %dx.types.CBufRet.f32 %2212, 1
  %2215 = extractvalue %dx.types.CBufRet.f32 %2212, 2
  %2216 = extractvalue %dx.types.CBufRet.f32 %2212, 3
  %2217 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2202, float %2206, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2218 = extractvalue %dx.types.ResRet.f32 %2217, 0
  %2219 = extractvalue %dx.types.ResRet.f32 %2217, 1
  %2220 = extractvalue %dx.types.ResRet.f32 %2217, 2
  %2221 = extractvalue %dx.types.ResRet.f32 %2217, 3
  %2222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2202, float %2206, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2202, float %2206, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  %2245 = extractvalue %dx.types.ResRet.f32 %2243, 1
  %2246 = extractvalue %dx.types.ResRet.f32 %2243, 2
  %2247 = extractvalue %dx.types.ResRet.f32 %2243, 3
  %2248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2202, float %2206, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2202, float %2206, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2270 = extractvalue %dx.types.ResRet.f32 %2269, 0
  %2271 = extractvalue %dx.types.ResRet.f32 %2269, 1
  %2272 = extractvalue %dx.types.ResRet.f32 %2269, 2
  %2273 = extractvalue %dx.types.ResRet.f32 %2269, 3
  %2274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %43, %dx.types.Handle %62, float %2202, float %2206, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2343 = extractvalue %dx.types.CBufRet.f32 %2342, 0
  %2344 = fmul fast float %2343, %2321
  %2345 = fmul fast float %2343, %2322
  %2346 = fmul fast float %2343, %2323
  %2347 = fmul fast float %2343, %2324
  %2348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.f32 %2348, 0
  %2350 = fmul fast float %2349, %2332
  %2351 = fmul fast float %2349, %2333
  %2352 = fadd fast float %2350, %2344
  %2353 = fadd fast float %2351, %2346
  %2354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %2496, label %2497, label %2637, !dx.controlflow.hints !124

; <label>:2497                                    ; preds = %2476
  %2498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %62, float %2537, float %2538, float %2540, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2581 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %62, float %2577, float %2578, float %2580, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2582 = extractvalue %dx.types.ResRet.f32 %2581, 0
  %2583 = extractvalue %dx.types.ResRet.f32 %2581, 1
  %2584 = extractvalue %dx.types.ResRet.f32 %2581, 2
  %2585 = fadd fast float %2579, 5.312500e-01
  %2586 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %39, %dx.types.Handle %62, float %2577, float %2578, float %2585, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %2611 = fmul fast float %154, %154
  %2612 = fmul fast float %155, %155
  %2613 = fadd fast float %2611, %2612
  %2614 = call float @dx.op.unary.f32(i32 24, float %2613)  ; Sqrt(value)
  %2615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2616 = extractvalue %dx.types.CBufRet.f32 %2615, 0
  %2617 = extractvalue %dx.types.CBufRet.f32 %2615, 1
  %2618 = fsub fast float %2614, %2616
  %2619 = fdiv fast float %2618, %2617
  %2620 = call float @dx.op.unary.f32(i32 7, float %2619)  ; Saturate(value)
  %2621 = fmul fast float %2620, 2.000000e+00
  %2622 = fsub fast float 3.000000e+00, %2621
  %2623 = fmul fast float %2620, %2620
  %2624 = fmul fast float %2623, %2622
  %2625 = call float @dx.op.dot3.f32(i32 55, float %2608, float %2609, float %2610, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
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
  br i1 %2645, label %2646, label %2703, !dx.controlflow.hints !125

; <label>:2646                                    ; preds = %2637
  %2647 = fmul fast float %2172, 0x3FC24924A0000000
  %2648 = fsub fast float %2133, %2170
  %2649 = fdiv fast float %2648, %2647
  %2650 = call float @dx.op.unary.f32(i32 7, float %2649)  ; Saturate(value)
  %2651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2652 = extractvalue %dx.types.CBufRet.f32 %2651, 0
  %2653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %2794 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2790, float %2791, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2844 = call float @dx.op.dot3.f32(i32 55, float %2839, float %2840, float %2841, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2894 = call float @dx.op.dot3.f32(i32 55, float %2889, float %2890, float %2891, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = call float @dx.op.binary.f32(i32 36, float %1726, float %2924)  ; FMin(a,b)
  %2926 = fmul fast float %2925, %1911
  %2927 = fsub fast float 1.000000e+00, %2926
  %2928 = bitcast float %2927 to i32
  %2929 = sub nsw i32 2129859010, %2928
  %2930 = bitcast i32 %2929 to float
  %2931 = call float @dx.op.binary.f32(i32 36, float %1727, float %2924)  ; FMin(a,b)
  %2932 = fmul fast float %2931, %1911
  %2933 = fsub fast float 1.000000e+00, %2932
  %2934 = bitcast float %2933 to i32
  %2935 = sub nsw i32 2129859010, %2934
  %2936 = bitcast i32 %2935 to float
  %2937 = call float @dx.op.binary.f32(i32 36, float %1728, float %2924)  ; FMin(a,b)
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
  %2960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %3003 = extractvalue %dx.types.CBufRet.f32 %3002, 2
  %3004 = extractvalue %dx.types.CBufRet.f32 %3002, 3
  %3005 = fmul fast float %3003, %99
  %3006 = fmul fast float %3004, %100
  %3007 = fptoui float %3005 to i32
  %3008 = fptoui float %3006 to i32
  %3009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %3010 = extractvalue %dx.types.CBufRet.f32 %3009, 0
  %3011 = extractvalue %dx.types.CBufRet.f32 %3009, 2
  %3012 = extractvalue %dx.types.CBufRet.f32 %3009, 3
  %3013 = fadd fast float %88, -4.000000e+00
  %3014 = call float @dx.op.binary.f32(i32 35, float %3013, float 0.000000e+00)  ; FMax(a,b)
  %3015 = fadd fast float %3014, %3010
  %3016 = fmul fast float %3015, %3011
  %3017 = call float @dx.op.unary.f32(i32 23, float %3016)  ; Log(value)
  %3018 = fmul fast float %3017, %3012
  %3019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3020 = extractvalue %dx.types.CBufRet.f32 %3019, 2
  %3021 = fmul fast float %3018, %3020
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %3024 = extractvalue %dx.types.CBufRet.i32 %3023, 1
  %3025 = add i32 %3024, -1
  %3026 = uitofp i32 %3024 to float
  %3027 = fmul fast float %3026, %3022
  %3028 = fptoui float %3027 to i32
  %3029 = call i32 @dx.op.binary.i32(i32 40, i32 %3028, i32 %3025)  ; UMin(a,b)
  %3030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.i32 %3030, 2
  %3032 = extractvalue %dx.types.CBufRet.i32 %3030, 3
  %3033 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3008, i32 %3031, i32 %3007)  ; UMad(a,b,c)
  %3034 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3029, i32 %3032, i32 %3033)  ; UMad(a,b,c)
  %3035 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %3036 = fptoui float %3035 to i32
  %3037 = lshr i32 %3036, 5
  %3038 = call i32 @dx.op.binary.i32(i32 40, i32 %3037, i32 8191)  ; UMin(a,b)
  %3039 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3054 = phi i32 [ %3620, %3619 ], [ %1688, %3052 ]
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
  %3069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %3165 = extractvalue %dx.types.CBufRet.f32 %3164, 3
  %3166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3167 = extractvalue %dx.types.CBufRet.f32 %3166, 0
  %3168 = extractvalue %dx.types.CBufRet.f32 %3166, 1
  %3169 = extractvalue %dx.types.CBufRet.f32 %3166, 2
  %3170 = fsub fast float %3150, %3167
  %3171 = fsub fast float %3151, %3168
  %3172 = fsub fast float %3152, %3169
  %3173 = fsub fast float %154, %3170
  %3174 = fsub fast float %155, %3171
  %3175 = fsub fast float %156, %3172
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
  %3207 = select i1 %116, float 1.000000e+00, float 2.000000e+00
  %3208 = fsub fast float %3207, %3206
  %3209 = fmul fast float %3205, %3208
  %3210 = lshr i32 %3094, 8
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fptoui float %3212 to i32
  %3214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3256 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = call float @dx.op.unary.f32(i32 25, float %3256)  ; Rsqrt(value)
  %3258 = fmul fast float %3257, %154
  %3259 = fmul fast float %3257, %155
  %3260 = fmul fast float %3257, %156
  br label %3261

; <label>:3261                                    ; preds = %3255, %3246
  %3262 = phi float [ %3258, %3255 ], [ %1714, %3246 ]
  %3263 = phi float [ %3259, %3255 ], [ %1715, %3246 ]
  %3264 = phi float [ %3260, %3255 ], [ %1716, %3246 ]
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
  %3319 = fadd fast float %3316, %154
  %3320 = fadd fast float %3317, %155
  %3321 = fadd fast float %3318, %156
  %3322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3396 = fadd fast float %3393, %154
  %3397 = fadd fast float %3394, %155
  %3398 = fadd fast float %3395, %156
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
  br i1 %3409, label %3410, label %3441, !dx.controlflow.hints !126

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
  %3446 = fsub fast float %3403, %154
  %3447 = fsub fast float %3404, %155
  %3448 = fsub fast float %3405, %156
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
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %60, float %3518, float %3519, float %3508, float undef, i32 0, i32 0, i32 undef, float %3480)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = extractvalue %dx.types.ResRet.f32 %3520, 1
  %3523 = extractvalue %dx.types.ResRet.f32 %3520, 2
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %3635, label %3636, label %3053, !llvm.loop !127

; <label>:3636                                    ; preds = %3619
  br label %3637

; <label>:3637                                    ; preds = %3636, %3001
  %3638 = phi i32 [ %1688, %3001 ], [ %3620, %3636 ]
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
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3713 = phi i32 [ %3638, %3705 ], [ %1688, %2991 ]
  %3714 = phi i32 [ %3706, %3705 ], [ %2992, %2991 ]
  %3715 = phi float [ %3708, %3705 ], [ %2957, %2991 ]
  %3716 = phi float [ %3709, %3705 ], [ %2958, %2991 ]
  %3717 = phi float [ %3711, %3705 ], [ %2959, %2991 ]
  %3718 = phi i1 [ false, %3705 ], [ true, %2991 ]
  %3719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3720 = extractvalue %dx.types.CBufRet.i32 %3719, 0
  %3721 = and i32 %3720, 524288
  %3722 = icmp ne i32 %3721, 0
  %3723 = select i1 %3722, float 0.000000e+00, float 1.000000e+00
  %3724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
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
  %3753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %3754 = extractvalue %dx.types.CBufRet.f32 %3753, 0
  %3755 = extractvalue %dx.types.CBufRet.f32 %3753, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3753, 2
  %3757 = extractvalue %dx.types.CBufRet.f32 %3753, 3
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.CBufRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.CBufRet.f32 %3758, 3
  %3763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %3764 = extractvalue %dx.types.CBufRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.CBufRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.CBufRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.CBufRet.f32 %3763, 3
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3771 = extractvalue %dx.types.CBufRet.f32 %3768, 2
  %3772 = extractvalue %dx.types.CBufRet.f32 %3768, 3
  %3773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %3774 = extractvalue %dx.types.CBufRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.CBufRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.CBufRet.f32 %3773, 3
  %3778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %3779 = extractvalue %dx.types.CBufRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.CBufRet.f32 %3778, 1
  %3781 = extractvalue %dx.types.CBufRet.f32 %3778, 2
  %3782 = extractvalue %dx.types.CBufRet.f32 %3778, 3
  %3783 = call float @dx.op.dot3.f32(i32 55, float %3779, float %3780, float %3781, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %3784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 359)  ; CBufferLoadLegacy(handle,regIndex)
  %3785 = extractvalue %dx.types.CBufRet.f32 %3784, 1
  %3786 = extractvalue %dx.types.CBufRet.f32 %3784, 0
  %3787 = select i1 %116, float %3786, float %3785
  %3788 = fmul fast float %3783, 8.000000e+00
  %3789 = fmul fast float %3788, %3787
  %3790 = call float @dx.op.unary.f32(i32 7, float %3789)  ; Saturate(value)
  %3791 = fcmp fast ogt float %3790, 0.000000e+00
  br i1 %3791, label %3792, label %4010, !dx.controlflow.hints !128

; <label>:3792                                    ; preds = %3752
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3795 = fmul fast float %1189, 2.000000e+00
  %3796 = fmul fast float %1190, 2.000000e+00
  %3797 = fadd fast float %3795, -1.000000e+00
  %3798 = fadd fast float %3796, -1.000000e+00
  %3799 = fmul fast float %3794, %3797
  %3800 = fmul fast float %3794, %3798
  %3801 = fadd fast float %3799, %99
  %3802 = fadd fast float %3800, %100
  %3803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.f32 %3803, 2
  %3805 = extractvalue %dx.types.CBufRet.f32 %3803, 3
  %3806 = fmul fast float %3801, %3804
  %3807 = fmul fast float %3802, %3805
  %3808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %63, float %3806, float %3807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3809 = extractvalue %dx.types.ResRet.f32 %3808, 0
  %3810 = fcmp fast une float %3809, 0xFFF0000000000000
  %3811 = fcmp fast une float %3809, 0x7FF0000000000000
  %3812 = and i1 %3810, %3811
  %3813 = call float @dx.op.unary.f32(i32 6, float %3809)  ; FAbs(value)
  %3814 = fsub fast float 1.000000e+00, %3813
  %3815 = select i1 %3812, float 1.000000e+00, float 0.000000e+00
  %3816 = fmul fast float %3815, %3790
  %3817 = fcmp fast ogt float %3816, 0.000000e+00
  br i1 %3817, label %3818, label %4010, !dx.controlflow.hints !129

; <label>:3818                                    ; preds = %3792
  %3819 = fmul fast float %3754, %154
  %3820 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3755, float %3819)  ; FMad(a,b,c)
  %3821 = call float @dx.op.tertiary.f32(i32 46, float %156, float %3756, float %3820)  ; FMad(a,b,c)
  %3822 = fadd fast float %3821, %3757
  %3823 = fmul fast float %3759, %154
  %3824 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3760, float %3823)  ; FMad(a,b,c)
  %3825 = call float @dx.op.tertiary.f32(i32 46, float %156, float %3761, float %3824)  ; FMad(a,b,c)
  %3826 = fadd fast float %3825, %3762
  %3827 = fmul fast float %3764, %154
  %3828 = call float @dx.op.tertiary.f32(i32 46, float %155, float %3765, float %3827)  ; FMad(a,b,c)
  %3829 = call float @dx.op.tertiary.f32(i32 46, float %156, float %3766, float %3828)  ; FMad(a,b,c)
  %3830 = fadd fast float %3829, %3767
  %3831 = fdiv fast float 1.000000e+00, %3830
  %3832 = fmul fast float %3831, %3822
  %3833 = fmul fast float %3831, %3826
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 0
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 1
  %3837 = fmul fast float %3832, %3835
  %3838 = fmul fast float %3833, %3836
  %3839 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3840 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3841 = fadd fast float %3837, %3839
  %3842 = fadd fast float %3838, %3840
  %3843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %3844 = extractvalue %dx.types.CBufRet.f32 %3843, 3
  %3845 = fmul fast float %3844, %1897
  %3846 = fmul fast float %3844, %1898
  %3847 = fmul fast float %3844, %1899
  %3848 = fadd fast float %3845, %154
  %3849 = fadd fast float %3846, %155
  %3850 = fadd fast float %3847, %156
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
  %3888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %62, float %3882, float %3883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = extractvalue %dx.types.ResRet.f32 %3888, 1
  %3891 = extractvalue %dx.types.ResRet.f32 %3888, 2
  %3892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3893 = extractvalue %dx.types.CBufRet.f32 %3892, 1
  %3894 = fmul fast float %3893, %3889
  %3895 = fmul fast float %3893, %3890
  %3896 = fmul fast float %3893, %3891
  %3897 = call float @dx.op.binary.f32(i32 35, float %3887, float 0x3810000000000000)  ; FMax(a,b)
  %3898 = fdiv fast float %3830, %3897
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3904 = fadd fast float %3901, %154
  %3905 = fadd fast float %3902, %155
  %3906 = fadd fast float %3903, %156
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
  %3962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %62, float %3960, float %3961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 2
  %4053 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4054 = fmul fast float %4052, %99
  %4055 = fmul fast float %4053, %100
  %4056 = fptoui float %4054 to i32
  %4057 = fptoui float %4055 to i32
  %4058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4059 = extractvalue %dx.types.CBufRet.f32 %4058, 0
  %4060 = extractvalue %dx.types.CBufRet.f32 %4058, 2
  %4061 = extractvalue %dx.types.CBufRet.f32 %4058, 3
  %4062 = fadd fast float %88, -4.000000e+00
  %4063 = call float @dx.op.binary.f32(i32 35, float %4062, float 0.000000e+00)  ; FMax(a,b)
  %4064 = fadd fast float %4063, %4059
  %4065 = fmul fast float %4064, %4060
  %4066 = call float @dx.op.unary.f32(i32 23, float %4065)  ; Log(value)
  %4067 = fmul fast float %4066, %4061
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 2
  %4070 = fmul fast float %4067, %4069
  %4071 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4072 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.i32 %4072, 1
  %4074 = add i32 %4073, -1
  %4075 = uitofp i32 %4073 to float
  %4076 = fmul fast float %4075, %4071
  %4077 = fptoui float %4076 to i32
  %4078 = call i32 @dx.op.binary.i32(i32 40, i32 %4077, i32 %4074)  ; UMin(a,b)
  %4079 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4080 = extractvalue %dx.types.CBufRet.i32 %4079, 2
  %4081 = extractvalue %dx.types.CBufRet.i32 %4079, 3
  %4082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4057, i32 %4080, i32 %4056)  ; UMad(a,b,c)
  %4083 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4078, i32 %4081, i32 %4082)  ; UMad(a,b,c)
  %4084 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %4085 = fptoui float %4084 to i32
  %4086 = lshr i32 %4085, 5
  %4087 = call i32 @dx.op.binary.i32(i32 40, i32 %4086, i32 8191)  ; UMin(a,b)
  %4088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4118 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 249)  ; CBufferLoadLegacy(handle,regIndex)
  %4214 = extractvalue %dx.types.CBufRet.f32 %4213, 3
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.CBufRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.CBufRet.f32 %4215, 2
  %4219 = fsub fast float %4199, %4216
  %4220 = fsub fast float %4200, %4217
  %4221 = fsub fast float %4201, %4218
  %4222 = fsub fast float %154, %4219
  %4223 = fsub fast float %155, %4220
  %4224 = fsub fast float %156, %4221
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
  %4256 = select i1 %116, float 1.000000e+00, float 2.000000e+00
  %4257 = fsub fast float %4256, %4255
  %4258 = fmul fast float %4254, %4257
  %4259 = lshr i32 %4143, 8
  %4260 = and i32 %4259, 255
  %4261 = uitofp i32 %4260 to float
  %4262 = fptoui float %4261 to i32
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4305 = call float @dx.op.dot3.f32(i32 55, float %154, float %155, float %156, float %154, float %155, float %156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4306 = call float @dx.op.unary.f32(i32 25, float %4305)  ; Rsqrt(value)
  %4307 = fmul fast float %4306, %154
  %4308 = fmul fast float %4306, %155
  %4309 = fmul fast float %4306, %156
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
  %4368 = fadd fast float %4365, %154
  %4369 = fadd fast float %4366, %155
  %4370 = fadd fast float %4367, %156
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4445 = fadd fast float %4442, %154
  %4446 = fadd fast float %4443, %155
  %4447 = fadd fast float %4444, %156
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
  br i1 %4458, label %4459, label %4490, !dx.controlflow.hints !126

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
  %4502 = fsub fast float %4452, %154
  %4503 = fsub fast float %4453, %155
  %4504 = fsub fast float %4454, %156
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
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %60, float %4575, float %4576, float %4565, float undef, i32 0, i32 0, i32 undef, float %4537)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
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
  br i1 %4693, label %4694, label %4102, !llvm.loop !127

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
  %4712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
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
  %4789 = fmul fast float %3715, %2998
  %4790 = fmul fast float %3716, %2998
  %4791 = fmul fast float %3717, %2998
  %4792 = fmul fast float %4786, %1800
  %4793 = fmul fast float %4787, %1801
  %4794 = fmul fast float %4788, %2995
  %4795 = fadd fast float %4792, %1672
  %4796 = fadd fast float %4793, %1673
  %4797 = fadd fast float %4794, %1674
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4800 = fcmp fast oeq float %4799, 0.000000e+00
  br i1 %4800, label %6626, label %4801

; <label>:4801                                    ; preds = %4783
  %4802 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4803 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4804 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4806 = extractvalue %dx.types.CBufRet.f32 %4805, 0
  %4807 = extractvalue %dx.types.CBufRet.f32 %4805, 1
  %4808 = extractvalue %dx.types.CBufRet.f32 %4805, 2
  %4809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4810 = extractvalue %dx.types.CBufRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.CBufRet.f32 %4809, 1
  %4812 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4807, float %4808, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4813 = select i1 %1885, float %4810, float %4806
  %4814 = select i1 %1885, float %4812, float %4807
  %4815 = select i1 %1885, float %4811, float %4808
  %4816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %4817 = extractvalue %dx.types.CBufRet.f32 %4816, 0
  %4818 = extractvalue %dx.types.CBufRet.f32 %4816, 1
  %4819 = extractvalue %dx.types.CBufRet.f32 %4816, 2
  %4820 = extractvalue %dx.types.CBufRet.f32 %4816, 3
  %4821 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %4822 = extractvalue %dx.types.CBufRet.f32 %4821, 0
  %4823 = extractvalue %dx.types.CBufRet.f32 %4821, 1
  %4824 = extractvalue %dx.types.CBufRet.f32 %4821, 2
  %4825 = extractvalue %dx.types.CBufRet.f32 %4821, 3
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4830 = extractvalue %dx.types.CBufRet.f32 %4826, 3
  %4831 = fmul fast float %4817, %154
  %4832 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4818, float %4831)  ; FMad(a,b,c)
  %4833 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4819, float %4832)  ; FMad(a,b,c)
  %4834 = fadd fast float %4833, %4820
  %4835 = fmul fast float %4822, %154
  %4836 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4823, float %4835)  ; FMad(a,b,c)
  %4837 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4824, float %4836)  ; FMad(a,b,c)
  %4838 = fadd fast float %4837, %4825
  %4839 = fmul fast float %4827, %154
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %155, float %4828, float %4839)  ; FMad(a,b,c)
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %156, float %4829, float %4840)  ; FMad(a,b,c)
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4846 = fmul fast float %4845, %4834
  %4847 = fmul fast float %4845, %4838
  %4848 = fadd fast float %4846, %4843
  %4849 = fadd fast float %4847, %4844
  %4850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %4851 = extractvalue %dx.types.CBufRet.f32 %4850, 0
  %4852 = extractvalue %dx.types.CBufRet.f32 %4850, 1
  %4853 = extractvalue %dx.types.CBufRet.f32 %4850, 3
  %4854 = fmul fast float %4853, %4834
  %4855 = fmul fast float %4853, %4838
  %4856 = fadd fast float %4854, %4851
  %4857 = fadd fast float %4855, %4852
  %4858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 58)  ; CBufferLoadLegacy(handle,regIndex)
  %4859 = extractvalue %dx.types.CBufRet.f32 %4858, 1
  %4860 = fsub fast float -0.000000e+00, %4830
  %4861 = fsub fast float %4860, %4841
  %4862 = fadd fast float %4861, %4859
  %4863 = extractvalue %dx.types.CBufRet.f32 %4858, 2
  %4864 = fmul fast float %4862, %4863
  %4865 = fsub fast float 1.000000e+00, %4864
  %4866 = call float @dx.op.unary.f32(i32 7, float %4865)  ; Saturate(value)
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 73)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = fsub fast float %4856, %4868
  %4871 = fsub fast float %4857, %4869
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 77)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 72)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4876 = fsub fast float %4848, %4874
  %4877 = fsub fast float %4849, %4875
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 76)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 71)  ; CBufferLoadLegacy(handle,regIndex)
  %4880 = extractvalue %dx.types.CBufRet.f32 %4879, 0
  %4881 = extractvalue %dx.types.CBufRet.f32 %4879, 1
  %4882 = fsub fast float %4834, %4880
  %4883 = fsub fast float %4838, %4881
  %4884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 75)  ; CBufferLoadLegacy(handle,regIndex)
  %4885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %4887 = bitcast float %4886 to i32
  %4888 = lshr i32 %4887, 8
  %4889 = and i32 %4888, 255
  %4890 = uitofp i32 %4889 to float
  %4891 = fptoui float %4890 to i32
  %4892 = and i32 %4891, -2
  %4893 = icmp eq i32 %4892, 10
  br i1 %4893, label %4894, label %4964

; <label>:4894                                    ; preds = %4801
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = fcmp fast olt float %4882, 0.000000e+00
  %4898 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %4899 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %4900 = select i1 %4897, float %4898, float %4899
  %4901 = fmul fast float %4900, %4882
  %4902 = call float @dx.op.unary.f32(i32 6, float %4901)  ; FAbs(value)
  %4903 = fcmp fast olt float %4883, 0.000000e+00
  %4904 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %4905 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %4906 = select i1 %4903, float %4904, float %4905
  %4907 = fmul fast float %4906, %4883
  %4908 = call float @dx.op.unary.f32(i32 6, float %4907)  ; FAbs(value)
  %4909 = call float @dx.op.binary.f32(i32 35, float %4902, float %4908)  ; FMax(a,b)
  %4910 = fsub fast float %4896, %4909
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fmul fast float %4911, %4866
  %4913 = fcmp fast olt float %4876, 0.000000e+00
  %4914 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %4915 = extractvalue %dx.types.CBufRet.f32 %4878, 2
  %4916 = select i1 %4913, float %4914, float %4915
  %4917 = fmul fast float %4916, %4876
  %4918 = call float @dx.op.unary.f32(i32 6, float %4917)  ; FAbs(value)
  %4919 = fcmp fast olt float %4877, 0.000000e+00
  %4920 = extractvalue %dx.types.CBufRet.f32 %4878, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4878, 3
  %4922 = select i1 %4919, float %4920, float %4921
  %4923 = fmul fast float %4922, %4877
  %4924 = call float @dx.op.unary.f32(i32 6, float %4923)  ; FAbs(value)
  %4925 = call float @dx.op.binary.f32(i32 35, float %4918, float %4924)  ; FMax(a,b)
  %4926 = fsub fast float %4896, %4925
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, %4866
  %4929 = fcmp fast olt float %4870, 0.000000e+00
  %4930 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4931 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4932 = select i1 %4929, float %4930, float %4931
  %4933 = fmul fast float %4932, %4870
  %4934 = call float @dx.op.unary.f32(i32 6, float %4933)  ; FAbs(value)
  %4935 = fcmp fast olt float %4871, 0.000000e+00
  %4936 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4937 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4938 = select i1 %4935, float %4936, float %4937
  %4939 = fmul fast float %4938, %4871
  %4940 = call float @dx.op.unary.f32(i32 6, float %4939)  ; FAbs(value)
  %4941 = call float @dx.op.binary.f32(i32 35, float %4934, float %4940)  ; FMax(a,b)
  %4942 = fsub fast float %4896, %4941
  %4943 = call float @dx.op.unary.f32(i32 7, float %4942)  ; Saturate(value)
  %4944 = fmul fast float %4943, %4866
  %4945 = fadd fast float %4912, 1.000000e+00
  %4946 = fadd fast float %4928, 1.000000e+00
  %4947 = fadd fast float %4944, 1.000000e+00
  %4948 = fmul fast float %4945, 5.000000e-01
  %4949 = fmul fast float %4946, 5.000000e-01
  %4950 = fmul fast float %4947, 5.000000e-01
  %4951 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4952 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4953 = call float @dx.op.unary.f32(i32 7, float %4950)  ; Saturate(value)
  %4954 = fmul fast float %4951, 1.023000e+03
  %4955 = fmul fast float %4952, 1.023000e+03
  %4956 = fmul fast float %4953, 1.023000e+03
  %4957 = fptoui float %4954 to i32
  %4958 = fptoui float %4955 to i32
  %4959 = fptoui float %4956 to i32
  %4960 = shl i32 %4958, 10
  %4961 = or i32 %4960, %4957
  %4962 = shl i32 %4959, 20
  %4963 = or i32 %4961, %4962
  br label %4964

; <label>:4964                                    ; preds = %4894, %4801
  %4965 = phi i32 [ %4963, %4894 ], [ %4785, %4801 ]
  %4966 = fcmp fast olt float %4799, 0.000000e+00
  br i1 %4966, label %6278, label %4967

; <label>:4967                                    ; preds = %4964
  %4968 = fadd fast float %4841, %4830
  %4969 = fsub fast float %4859, %4968
  %4970 = fmul fast float %4969, %4863
  %4971 = fsub fast float 1.000000e+00, %4970
  %4972 = call float @dx.op.unary.f32(i32 7, float %4971)  ; Saturate(value)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4850, 2
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4976 = fadd fast float %4975, %4973
  %4977 = fcmp fast ogt float %4976, 0.000000e+00
  br i1 %4977, label %4978, label %4997

; <label>:4978                                    ; preds = %4967
  %4979 = fcmp fast olt float %4870, 0.000000e+00
  %4980 = fcmp fast olt float %4871, 0.000000e+00
  %4981 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4982 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4983 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4984 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4985 = select i1 %4979, float %4981, float %4983
  %4986 = select i1 %4980, float %4982, float %4984
  %4987 = fmul fast float %4985, %4870
  %4988 = fmul fast float %4986, %4871
  %4989 = call float @dx.op.unary.f32(i32 6, float %4987)  ; FAbs(value)
  %4990 = call float @dx.op.unary.f32(i32 6, float %4988)  ; FAbs(value)
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = call float @dx.op.binary.f32(i32 35, float %4989, float %4990)  ; FMax(a,b)
  %4994 = fsub fast float %4992, %4993
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = fmul fast float %4995, %4972
  br label %4997

; <label>:4997                                    ; preds = %4978, %4967
  %4998 = phi float [ %4996, %4978 ], [ 0.000000e+00, %4967 ]
  %4999 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %5000 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %5001 = fadd fast float %5000, %4999
  %5002 = fcmp fast ogt float %5001, 0.000000e+00
  br i1 %5002, label %5003, label %5022

; <label>:5003                                    ; preds = %4997
  %5004 = fcmp fast olt float %4876, 0.000000e+00
  %5005 = fcmp fast olt float %4877, 0.000000e+00
  %5006 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %4878, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %4878, 2
  %5009 = extractvalue %dx.types.CBufRet.f32 %4878, 3
  %5010 = select i1 %5004, float %5006, float %5008
  %5011 = select i1 %5005, float %5007, float %5009
  %5012 = fmul fast float %5010, %4876
  %5013 = fmul fast float %5011, %4877
  %5014 = call float @dx.op.unary.f32(i32 6, float %5012)  ; FAbs(value)
  %5015 = call float @dx.op.unary.f32(i32 6, float %5013)  ; FAbs(value)
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = call float @dx.op.binary.f32(i32 35, float %5014, float %5015)  ; FMax(a,b)
  %5019 = fsub fast float %5017, %5018
  %5020 = call float @dx.op.unary.f32(i32 7, float %5019)  ; Saturate(value)
  %5021 = fmul fast float %5020, %4972
  br label %5022

; <label>:5022                                    ; preds = %5003, %4997
  %5023 = phi float [ %5021, %5003 ], [ 0.000000e+00, %4997 ]
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 85)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 1
  %5026 = call float @dx.op.unary.f32(i32 7, float %5025)  ; Saturate(value)
  %5027 = fcmp fast olt float %4882, 0.000000e+00
  %5028 = fcmp fast olt float %4883, 0.000000e+00
  %5029 = extractvalue %dx.types.CBufRet.f32 %4884, 0
  %5030 = extractvalue %dx.types.CBufRet.f32 %4884, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %4884, 2
  %5032 = extractvalue %dx.types.CBufRet.f32 %4884, 3
  %5033 = select i1 %5027, float %5029, float %5031
  %5034 = select i1 %5028, float %5030, float %5032
  %5035 = fmul fast float %5033, %4882
  %5036 = fmul fast float %5034, %4883
  %5037 = call float @dx.op.unary.f32(i32 6, float %5035)  ; FAbs(value)
  %5038 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = call float @dx.op.binary.f32(i32 35, float %5037, float %5038)  ; FMax(a,b)
  %5042 = fsub fast float %5040, %5041
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = call float @dx.op.binary.f32(i32 36, float %5043, float %5026)  ; FMin(a,b)
  %5045 = fmul fast float %5044, %4972
  %5046 = fsub fast float %5023, %5045
  %5047 = fsub fast float %4998, %5023
  %5048 = fsub fast float %5047, %5045
  %5049 = call float @dx.op.binary.f32(i32 35, float %5023, float %4998)  ; FMax(a,b)
  %5050 = call float @dx.op.binary.f32(i32 35, float %5045, float %5049)  ; FMax(a,b)
  %5051 = fcmp fast olt float %5050, 1.000000e+00
  br i1 %5051, label %5052, label %5723, !dx.controlflow.hints !130

; <label>:5052                                    ; preds = %5022
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 0
  %5055 = fcmp fast une float %5054, 0.000000e+00
  br i1 %5055, label %5056, label %5723, !dx.controlflow.hints !131

; <label>:5056                                    ; preds = %5052
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 63)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5061 = extractvalue %dx.types.CBufRet.f32 %5057, 3
  %5062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %5063 = extractvalue %dx.types.CBufRet.f32 %5062, 0
  %5064 = extractvalue %dx.types.CBufRet.f32 %5062, 1
  %5065 = extractvalue %dx.types.CBufRet.f32 %5062, 2
  %5066 = extractvalue %dx.types.CBufRet.f32 %5062, 3
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 65)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 0
  %5069 = extractvalue %dx.types.CBufRet.f32 %5067, 1
  %5070 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5071 = extractvalue %dx.types.CBufRet.f32 %5067, 3
  %5072 = fmul fast float %5058, %154
  %5073 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5059, float %5072)  ; FMad(a,b,c)
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5060, float %5073)  ; FMad(a,b,c)
  %5075 = fadd fast float %5074, %5061
  %5076 = fmul fast float %5063, %154
  %5077 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5064, float %5076)  ; FMad(a,b,c)
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5065, float %5077)  ; FMad(a,b,c)
  %5079 = fadd fast float %5078, %5066
  %5080 = fmul fast float %5068, %154
  %5081 = call float @dx.op.tertiary.f32(i32 46, float %155, float %5069, float %5080)  ; FMad(a,b,c)
  %5082 = call float @dx.op.tertiary.f32(i32 46, float %156, float %5070, float %5081)  ; FMad(a,b,c)
  %5083 = fadd fast float %5082, %5071
  %5084 = fcmp fast oge float %5075, 1.000000e+00
  %5085 = fcmp fast oge float %5079, 1.000000e+00
  %5086 = or i1 %5084, %5085
  %5087 = fcmp fast olt float %5075, 0.000000e+00
  %5088 = fcmp fast olt float %5079, 0.000000e+00
  %5089 = or i1 %5087, %5088
  %5090 = or i1 %5086, %5089
  br i1 %5090, label %5723, label %5091, !dx.controlflow.hints !132

; <label>:5091                                    ; preds = %5056
  %5092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 319)  ; CBufferLoadLegacy(handle,regIndex)
  %5093 = extractvalue %dx.types.CBufRet.f32 %5092, 0
  %5094 = extractvalue %dx.types.CBufRet.f32 %5092, 1
  %5095 = extractvalue %dx.types.CBufRet.f32 %5092, 2
  %5096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5097 = extractvalue %dx.types.CBufRet.f32 %5096, 1
  %5098 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5099 = extractvalue %dx.types.CBufRet.i32 %5098, 2
  %5100 = uitofp i32 %5099 to float
  %5101 = extractvalue %dx.types.CBufRet.i32 %5098, 3
  %5102 = uitofp i32 %5101 to float
  %5103 = extractvalue %dx.types.CBufRet.f32 %5092, 3
  %5104 = fmul fast float %5103, 2.000000e+00
  %5105 = fsub fast float %5075, %5093
  %5106 = fsub fast float %5079, %5094
  %5107 = fmul fast float %5104, %5105
  %5108 = fmul fast float %5104, %5106
  %5109 = fdiv fast float 1.000000e+00, %4804
  %5110 = fmul fast float %5108, %5109
  %5111 = call float @dx.op.unary.f32(i32 6, float %5110)  ; FAbs(value)
  %5112 = fmul fast float %5095, %156
  %5113 = fmul fast float %5112, %5104
  %5114 = call float @dx.op.unary.f32(i32 6, float %5113)  ; FAbs(value)
  %5115 = call float @dx.op.unary.f32(i32 6, float %5107)  ; FAbs(value)
  %5116 = call float @dx.op.binary.f32(i32 35, float %5114, float %5111)  ; FMax(a,b)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5115, float %5116)  ; FMax(a,b)
  %5118 = fmul fast float %5117, 2.000000e+00
  %5119 = call float @dx.op.unary.f32(i32 23, float %5118)  ; Log(value)
  %5120 = call float @dx.op.binary.f32(i32 35, float %5119, float %5100)  ; FMax(a,b)
  %5121 = call float @dx.op.unary.f32(i32 22, float %5120)  ; Frc(value)
  %5122 = fadd fast float %5121, 0xBFEA666660000000
  %5123 = fmul fast float %5122, 8.000000e+00
  %5124 = call float @dx.op.unary.f32(i32 7, float %5123)  ; Saturate(value)
  %5125 = call float @dx.op.unary.f32(i32 27, float %5120)  ; Round_ni(value)
  %5126 = fadd fast float %5125, %5124
  %5127 = call float @dx.op.binary.f32(i32 36, float %5126, float %5102)  ; FMin(a,b)
  %5128 = call float @dx.op.unary.f32(i32 27, float %5127)  ; Round_ni(value)
  %5129 = fsub fast float -0.000000e+00, %5128
  %5130 = call float @dx.op.unary.f32(i32 21, float %5129)  ; Exp(value)
  %5131 = fmul fast float %5130, %5104
  %5132 = fmul fast float %5131, %5075
  %5133 = fmul fast float %5131, %5079
  %5134 = fmul fast float %5132, 5.000000e-01
  %5135 = fmul fast float %5133, 5.000000e-01
  %5136 = fadd fast float %5134, 5.000000e-01
  %5137 = fadd fast float %5135, 5.000000e-01
  %5138 = fmul fast float %5132, 2.500000e-01
  %5139 = fmul fast float %5133, 2.500000e-01
  %5140 = fadd fast float %5138, 5.000000e-01
  %5141 = fadd fast float %5139, 5.000000e-01
  %5142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5143 = extractvalue %dx.types.ResRet.i32 %5142, 0
  %5144 = and i32 %5143, 536870911
  %5145 = lshr i32 %5144, 9
  %5146 = uitofp i32 %5145 to float
  %5147 = fmul fast float %5146, %5075
  %5148 = fmul fast float %5146, %5079
  %5149 = call float @dx.op.unary.f32(i32 22, float %5147)  ; Frc(value)
  %5150 = call float @dx.op.unary.f32(i32 22, float %5148)  ; Frc(value)
  %5151 = call float @dx.op.unary.f32(i32 22, float %5124)  ; Frc(value)
  %5152 = fcmp fast une float %5151, 0.000000e+00
  br i1 %5152, label %5153, label %5251, !dx.controlflow.hints !133

; <label>:5153                                    ; preds = %5091
  %5154 = call float @dx.op.unary.f32(i32 21, float %5125)  ; Exp(value)
  %5155 = fmul fast float %5154, 1.953125e-03
  %5156 = fcmp fast olt float %5149, %5155
  %5157 = fcmp fast olt float %5150, %5155
  %5158 = or i1 %5156, %5157
  %5159 = fsub fast float 1.000000e+00, %5155
  %5160 = fcmp fast ogt float %5149, %5159
  %5161 = fcmp fast ogt float %5150, %5159
  %5162 = or i1 %5160, %5161
  %5163 = or i1 %5158, %5162
  br i1 %5163, label %5164, label %5330, !dx.controlflow.hints !134

; <label>:5164                                    ; preds = %5153
  %5165 = fmul fast float %5097, 5.000000e-01
  %5166 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.i32 %5166, 0
  %5168 = fmul fast float %5079, 3.530000e+02
  %5169 = uitofp i32 %5144 to float
  %5170 = fmul fast float %5168, %5169
  %5171 = fmul fast float %5075, 6.130000e+02
  %5172 = fadd fast float %5170, %5171
  %5173 = fptoui float %5172 to i32
  %5174 = add i32 %5167, %5173
  %5175 = mul i32 %5174, -63
  %5176 = lshr i32 %5175, 17
  %5177 = xor i32 %5176, %5175
  %5178 = mul i32 %5177, -511
  %5179 = mul i32 %5177, -8176
  %5180 = xor i32 %5178, %5179
  %5181 = mul i32 %5180, -7
  %5182 = mul i32 %5180, -7168
  %5183 = xor i32 %5181, %5182
  %5184 = lshr i32 %5183, 15
  %5185 = xor i32 %5184, %5181
  %5186 = and i32 %5185, 15
  %5187 = mul i32 %5186, 2
  %5188 = add i32 0, %5187
  %5189 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5188
  %5190 = load float, float* %5189, align 4
  %5191 = mul i32 %5186, 2
  %5192 = add i32 1, %5191
  %5193 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5192
  %5194 = load float, float* %5193, align 4
  %5195 = fmul fast float %5079, 2.770000e+02
  %5196 = fmul fast float %5195, %5169
  %5197 = fmul fast float %5075, 5.990000e+02
  %5198 = fadd fast float %5196, %5197
  %5199 = fptoui float %5198 to i32
  %5200 = mul i32 %5199, -63
  %5201 = lshr i32 %5200, 17
  %5202 = xor i32 %5201, %5200
  %5203 = mul i32 %5202, -511
  %5204 = mul i32 %5202, -8176
  %5205 = xor i32 %5203, %5204
  %5206 = mul i32 %5205, -7
  %5207 = mul i32 %5205, -7168
  %5208 = xor i32 %5206, %5207
  %5209 = lshr i32 %5208, 15
  %5210 = xor i32 %5209, %5206
  %5211 = and i32 %5210, 63
  %5212 = mul i32 %5211, 2
  %5213 = add i32 0, %5212
  %5214 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5213
  %5215 = load float, float* %5214, align 4
  %5216 = mul i32 %5211, 2
  %5217 = add i32 1, %5216
  %5218 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5217
  %5219 = load float, float* %5218, align 4
  %5220 = call float @dx.op.dot2.f32(i32 54, float %5190, float %5194, float %5215, float %5219)  ; Dot2(ax,ay,bx,by)
  %5221 = fsub fast float -0.000000e+00, %5215
  %5222 = call float @dx.op.dot2.f32(i32 54, float %5190, float %5194, float %5221, float %5219)  ; Dot2(ax,ay,bx,by)
  %5223 = fmul fast float %5220, %5165
  %5224 = fmul fast float %5222, %5165
  %5225 = fdiv fast float 2.000000e+00, %5131
  %5226 = fmul fast float %5154, 9.765625e-04
  %5227 = fcmp fast olt float %5149, %5226
  %5228 = fcmp fast olt float %5150, %5226
  %5229 = or i1 %5227, %5228
  %5230 = fsub fast float 1.000000e+00, %5226
  %5231 = fcmp fast ogt float %5149, %5230
  %5232 = fcmp fast ogt float %5150, %5230
  %5233 = or i1 %5231, %5232
  %5234 = or i1 %5229, %5233
  %5235 = fmul fast float %5223, 2.000000e+00
  br i1 %5234, label %5236, label %5240

; <label>:5236                                    ; preds = %5164
  %5237 = fmul fast float %5224, 2.000000e+00
  %5238 = fadd fast float %5235, %5136
  %5239 = fadd fast float %5237, %5137
  br label %5240

; <label>:5240                                    ; preds = %5236, %5164
  %5241 = phi float [ %5238, %5236 ], [ %5136, %5164 ]
  %5242 = phi float [ %5239, %5236 ], [ %5137, %5164 ]
  %5243 = phi i32 [ 3, %5236 ], [ 2, %5164 ]
  %5244 = fadd fast float %5223, %5140
  %5245 = fadd fast float %5224, %5141
  %5246 = fmul fast float %5235, %5225
  %5247 = fmul fast float %5225, 2.000000e+00
  %5248 = fmul fast float %5247, %5224
  %5249 = fadd fast float %5246, %5075
  %5250 = fadd fast float %5248, %5079
  br label %5330

; <label>:5251                                    ; preds = %5091
  %5252 = call float @dx.op.unary.f32(i32 21, float %5128)  ; Exp(value)
  %5253 = fmul fast float %5252, 9.765625e-04
  %5254 = fcmp fast olt float %5149, %5253
  %5255 = fcmp fast olt float %5150, %5253
  %5256 = or i1 %5254, %5255
  %5257 = fsub fast float 1.000000e+00, %5253
  %5258 = fcmp fast ogt float %5149, %5257
  %5259 = fcmp fast ogt float %5150, %5257
  %5260 = or i1 %5258, %5259
  %5261 = or i1 %5256, %5260
  br i1 %5261, label %5262, label %5330, !dx.controlflow.hints !135

; <label>:5262                                    ; preds = %5251
  %5263 = fmul fast float %5097, 5.000000e-01
  %5264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.i32 %5264, 0
  %5266 = fmul fast float %5079, 3.530000e+02
  %5267 = uitofp i32 %5144 to float
  %5268 = fmul fast float %5266, %5267
  %5269 = fmul fast float %5075, 6.130000e+02
  %5270 = fadd fast float %5268, %5269
  %5271 = fptoui float %5270 to i32
  %5272 = add i32 %5265, %5271
  %5273 = mul i32 %5272, -63
  %5274 = lshr i32 %5273, 17
  %5275 = xor i32 %5274, %5273
  %5276 = mul i32 %5275, -511
  %5277 = mul i32 %5275, -8176
  %5278 = xor i32 %5276, %5277
  %5279 = mul i32 %5278, -7
  %5280 = mul i32 %5278, -7168
  %5281 = xor i32 %5279, %5280
  %5282 = lshr i32 %5281, 15
  %5283 = xor i32 %5282, %5279
  %5284 = and i32 %5283, 15
  %5285 = mul i32 %5284, 2
  %5286 = add i32 0, %5285
  %5287 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5286
  %5288 = load float, float* %5287, align 4
  %5289 = mul i32 %5284, 2
  %5290 = add i32 1, %5289
  %5291 = getelementptr [32 x float], [32 x float]* @MSM_VOGEL_DISK.v.1dim, i32 0, i32 %5290
  %5292 = load float, float* %5291, align 4
  %5293 = fmul fast float %5079, 2.770000e+02
  %5294 = fmul fast float %5293, %5267
  %5295 = fmul fast float %5075, 5.990000e+02
  %5296 = fadd fast float %5294, %5295
  %5297 = fptoui float %5296 to i32
  %5298 = mul i32 %5297, -63
  %5299 = lshr i32 %5298, 17
  %5300 = xor i32 %5299, %5298
  %5301 = mul i32 %5300, -511
  %5302 = mul i32 %5300, -8176
  %5303 = xor i32 %5301, %5302
  %5304 = mul i32 %5303, -7
  %5305 = mul i32 %5303, -7168
  %5306 = xor i32 %5304, %5305
  %5307 = lshr i32 %5306, 15
  %5308 = xor i32 %5307, %5304
  %5309 = and i32 %5308, 63
  %5310 = mul i32 %5309, 2
  %5311 = add i32 0, %5310
  %5312 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5311
  %5313 = load float, float* %5312, align 4
  %5314 = mul i32 %5309, 2
  %5315 = add i32 1, %5314
  %5316 = getelementptr [128 x float], [128 x float]* @MSM_VOGEL_DISK_ROTATIONS.v.1dim, i32 0, i32 %5315
  %5317 = load float, float* %5316, align 4
  %5318 = call float @dx.op.dot2.f32(i32 54, float %5288, float %5292, float %5313, float %5317)  ; Dot2(ax,ay,bx,by)
  %5319 = fsub fast float -0.000000e+00, %5313
  %5320 = call float @dx.op.dot2.f32(i32 54, float %5288, float %5292, float %5319, float %5317)  ; Dot2(ax,ay,bx,by)
  %5321 = fmul fast float %5318, %5263
  %5322 = fmul fast float %5320, %5263
  %5323 = fadd fast float %5321, %5136
  %5324 = fadd fast float %5322, %5137
  %5325 = fdiv fast float 2.000000e+00, %5131
  %5326 = fmul fast float %5325, %5321
  %5327 = fmul fast float %5322, %5325
  %5328 = fadd fast float %5326, %5075
  %5329 = fadd fast float %5327, %5079
  br label %5330

; <label>:5330                                    ; preds = %5262, %5251, %5240, %5153
  %5331 = phi float [ %5244, %5240 ], [ %5140, %5153 ], [ %5140, %5262 ], [ %5140, %5251 ]
  %5332 = phi float [ %5245, %5240 ], [ %5141, %5153 ], [ %5141, %5262 ], [ %5141, %5251 ]
  %5333 = phi float [ %5241, %5240 ], [ %5136, %5153 ], [ %5323, %5262 ], [ %5136, %5251 ]
  %5334 = phi float [ %5242, %5240 ], [ %5137, %5153 ], [ %5324, %5262 ], [ %5137, %5251 ]
  %5335 = phi i32 [ %5243, %5240 ], [ 0, %5153 ], [ 1, %5262 ], [ 0, %5251 ]
  %5336 = phi float [ %5249, %5240 ], [ %5075, %5153 ], [ %5328, %5262 ], [ %5075, %5251 ]
  %5337 = phi float [ %5250, %5240 ], [ %5079, %5153 ], [ %5329, %5262 ], [ %5079, %5251 ]
  %5338 = fsub fast float %5102, %5100
  %5339 = fptoui float %5338 to i32
  %5340 = add i32 %5339, 320
  %5341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %5340)  ; CBufferLoadLegacy(handle,regIndex)
  %5342 = extractvalue %dx.types.CBufRet.f32 %5341, 0
  %5343 = extractvalue %dx.types.CBufRet.f32 %5341, 1
  %5344 = fcmp fast une float %5127, %5102
  %5345 = fsub fast float %5336, %5342
  %5346 = fsub fast float %5337, %5343
  %5347 = call float @dx.op.unary.f32(i32 6, float %5345)  ; FAbs(value)
  %5348 = call float @dx.op.unary.f32(i32 6, float %5346)  ; FAbs(value)
  %5349 = fmul fast float %5347, %5131
  %5350 = fmul fast float %5348, %5131
  %5351 = fcmp fast olt float %5349, 1.000000e+00
  %5352 = fcmp fast olt float %5350, 1.000000e+00
  %5353 = and i1 %5351, %5352
  %5354 = or i1 %5344, %5353
  br i1 %5354, label %5355, label %5723, !dx.controlflow.hints !136

; <label>:5355                                    ; preds = %5330
  %5356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5357 = extractvalue %dx.types.CBufRet.i32 %5356, 2
  %5358 = sitofp i32 %5357 to float
  %5359 = fsub fast float %5127, %5358
  %5360 = call float @dx.op.unary.f32(i32 27, float %5359)  ; Round_ni(value)
  %5361 = call float @dx.op.unary.f32(i32 22, float %5127)  ; Frc(value)
  %5362 = icmp eq i32 %5335, 0
  %5363 = call float @dx.op.unary.f32(i32 22, float %5333)  ; Frc(value)
  %5364 = call float @dx.op.unary.f32(i32 22, float %5334)  ; Frc(value)
  br i1 %5362, label %5435, label %5365, !dx.controlflow.hints !137

; <label>:5365                                    ; preds = %5355
  %5366 = and i32 %5335, 1
  %5367 = icmp eq i32 %5366, 0
  br i1 %5367, label %5381, label %5368, !dx.controlflow.hints !138

; <label>:5368                                    ; preds = %5365
  %5369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5370 = extractvalue %dx.types.CBufRet.f32 %5369, 0
  %5371 = fmul fast float %5363, %5370
  %5372 = fmul fast float %5364, %5370
  %5373 = fptoui float %5371 to i32
  %5374 = fptoui float %5372 to i32
  %5375 = fptoui float %5360 to i32
  %5376 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5373, i32 %5374, i32 %5375, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5377 = extractvalue %dx.types.ResRet.f32 %5376, 0
  %5378 = extractvalue %dx.types.ResRet.f32 %5376, 1
  %5379 = extractvalue %dx.types.ResRet.f32 %5376, 2
  %5380 = extractvalue %dx.types.ResRet.f32 %5376, 3
  br label %5387

; <label>:5381                                    ; preds = %5365
  %5382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %5363, float %5364, float %5360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5383 = extractvalue %dx.types.ResRet.f32 %5382, 0
  %5384 = extractvalue %dx.types.ResRet.f32 %5382, 1
  %5385 = extractvalue %dx.types.ResRet.f32 %5382, 2
  %5386 = extractvalue %dx.types.ResRet.f32 %5382, 3
  br label %5387

; <label>:5387                                    ; preds = %5381, %5368
  %5388 = phi float [ %5377, %5368 ], [ %5383, %5381 ]
  %5389 = phi float [ %5378, %5368 ], [ %5384, %5381 ]
  %5390 = phi float [ %5379, %5368 ], [ %5385, %5381 ]
  %5391 = phi float [ %5380, %5368 ], [ %5386, %5381 ]
  %5392 = fcmp fast ogt float %5361, 0.000000e+00
  br i1 %5392, label %5393, label %5463

; <label>:5393                                    ; preds = %5387
  %5394 = and i32 %5335, 2
  %5395 = icmp eq i32 %5394, 0
  %5396 = fadd fast float %5360, 1.000000e+00
  %5397 = call float @dx.op.unary.f32(i32 22, float %5331)  ; Frc(value)
  %5398 = call float @dx.op.unary.f32(i32 22, float %5332)  ; Frc(value)
  br i1 %5395, label %5412, label %5399, !dx.controlflow.hints !139

; <label>:5399                                    ; preds = %5393
  %5400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %5401 = extractvalue %dx.types.CBufRet.f32 %5400, 0
  %5402 = fmul fast float %5397, %5401
  %5403 = fmul fast float %5398, %5401
  %5404 = fptoui float %5402 to i32
  %5405 = fptoui float %5403 to i32
  %5406 = fptoui float %5396 to i32
  %5407 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %15, i32 0, i32 %5404, i32 %5405, i32 %5406, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = extractvalue %dx.types.ResRet.f32 %5407, 3
  br label %5418

; <label>:5412                                    ; preds = %5393
  %5413 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %5397, float %5398, float %5396, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5417 = extractvalue %dx.types.ResRet.f32 %5413, 3
  br label %5418

; <label>:5418                                    ; preds = %5412, %5399
  %5419 = phi float [ %5408, %5399 ], [ %5414, %5412 ]
  %5420 = phi float [ %5409, %5399 ], [ %5415, %5412 ]
  %5421 = phi float [ %5410, %5399 ], [ %5416, %5412 ]
  %5422 = phi float [ %5411, %5399 ], [ %5417, %5412 ]
  %5423 = fsub fast float %5419, %5388
  %5424 = fsub fast float %5420, %5389
  %5425 = fsub fast float %5421, %5390
  %5426 = fsub fast float %5422, %5391
  %5427 = fmul fast float %5423, %5361
  %5428 = fmul fast float %5424, %5361
  %5429 = fmul fast float %5425, %5361
  %5430 = fmul fast float %5426, %5361
  %5431 = fadd fast float %5427, %5388
  %5432 = fadd fast float %5428, %5389
  %5433 = fadd fast float %5429, %5390
  %5434 = fadd fast float %5430, %5391
  br label %5463

; <label>:5435                                    ; preds = %5355
  %5436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %5363, float %5364, float %5360, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5437 = extractvalue %dx.types.ResRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.ResRet.f32 %5436, 1
  %5439 = extractvalue %dx.types.ResRet.f32 %5436, 2
  %5440 = extractvalue %dx.types.ResRet.f32 %5436, 3
  %5441 = fcmp fast ogt float %5361, 0.000000e+00
  br i1 %5441, label %5442, label %5463, !dx.controlflow.hints !140

; <label>:5442                                    ; preds = %5435
  %5443 = fadd fast float %5360, 1.000000e+00
  %5444 = call float @dx.op.unary.f32(i32 22, float %5331)  ; Frc(value)
  %5445 = call float @dx.op.unary.f32(i32 22, float %5332)  ; Frc(value)
  %5446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %61, float %5444, float %5445, float %5443, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5447 = extractvalue %dx.types.ResRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.ResRet.f32 %5446, 1
  %5449 = extractvalue %dx.types.ResRet.f32 %5446, 2
  %5450 = extractvalue %dx.types.ResRet.f32 %5446, 3
  %5451 = fsub fast float %5447, %5437
  %5452 = fsub fast float %5448, %5438
  %5453 = fsub fast float %5449, %5439
  %5454 = fsub fast float %5450, %5440
  %5455 = fmul fast float %5451, %5361
  %5456 = fmul fast float %5452, %5361
  %5457 = fmul fast float %5453, %5361
  %5458 = fmul fast float %5454, %5361
  %5459 = fadd fast float %5455, %5437
  %5460 = fadd fast float %5456, %5438
  %5461 = fadd fast float %5457, %5439
  %5462 = fadd fast float %5458, %5440
  br label %5463

; <label>:5463                                    ; preds = %5442, %5435, %5418, %5387
  %5464 = phi float [ %5431, %5418 ], [ %5388, %5387 ], [ %5459, %5442 ], [ %5437, %5435 ]
  %5465 = phi float [ %5432, %5418 ], [ %5389, %5387 ], [ %5460, %5442 ], [ %5438, %5435 ]
  %5466 = phi float [ %5433, %5418 ], [ %5390, %5387 ], [ %5461, %5442 ], [ %5439, %5435 ]
  %5467 = phi float [ %5434, %5418 ], [ %5391, %5387 ], [ %5462, %5442 ], [ %5440, %5435 ]
  %5468 = fadd fast float %5464, -5.000000e-01
  %5469 = fadd fast float %5466, -5.000000e-01
  %5470 = fmul fast float %5468, 0xBFD5555560000000
  %5471 = call float @dx.op.tertiary.f32(i32 46, float 0x3FFBB67AE0000000, float %5469, float %5470)  ; FMad(a,b,c)
  %5472 = call float @dx.op.tertiary.f32(i32 46, float 1.250000e-01, float %5465, float 0.000000e+00)  ; FMad(a,b,c)
  %5473 = fadd fast float %5472, %5467
  %5474 = fmul fast float %5468, -7.500000e-01
  %5475 = call float @dx.op.tertiary.f32(i32 46, float 0x3FF4C8DC20000000, float %5469, float %5474)  ; FMad(a,b,c)
  %5476 = call float @dx.op.tertiary.f32(i32 46, float -1.250000e-01, float %5465, float 0.000000e+00)  ; FMad(a,b,c)
  %5477 = fadd fast float %5476, %5467
  %5478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 318)  ; CBufferLoadLegacy(handle,regIndex)
  %5479 = extractvalue %dx.types.CBufRet.f32 %5478, 0
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 317)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5484 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5485 = fsub fast float %5481, %5471
  %5486 = fsub fast float %5482, %5473
  %5487 = fsub fast float %5483, %5475
  %5488 = fsub fast float %5484, %5477
  %5489 = fmul fast float %5485, %5479
  %5490 = fmul fast float %5486, %5479
  %5491 = fmul fast float %5487, %5479
  %5492 = fmul fast float %5488, %5479
  %5493 = fadd fast float %5489, %5471
  %5494 = fadd fast float %5490, %5473
  %5495 = fadd fast float %5491, %5475
  %5496 = fadd fast float %5492, %5477
  %5497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %5498 = extractvalue %dx.types.ResRet.i32 %5497, 0
  %5499 = and i32 %5498, 536870911
  %5500 = uitofp i32 %5499 to float
  %5501 = fmul fast float %5500, %5336
  %5502 = fmul fast float %5500, %5337
  %5503 = fptoui float %5501 to i32
  %5504 = fptoui float %5502 to i32
  %5505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5506 = extractvalue %dx.types.ResRet.i32 %5505, 0
  %5507 = and i32 %5506, 31
  %5508 = lshr i32 %5503, %5507
  %5509 = lshr i32 %5504, %5507
  %5510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5511 = extractvalue %dx.types.ResRet.i32 %5510, 0
  %5512 = and i32 %5511, 31
  %5513 = shl i32 1, %5512
  %5514 = call i32 @dx.op.binary.i32(i32 40, i32 %5513, i32 4)  ; UMin(a,b)
  %5515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %5516 = extractvalue %dx.types.ResRet.i32 %5515, 0
  %5517 = extractvalue %dx.types.ResRet.i32 %5515, 1
  %5518 = icmp eq i32 %5514, 0
  br i1 %5518, label %5560, label %5519

; <label>:5519                                    ; preds = %5463
  br label %5520

; <label>:5520                                    ; preds = %5548, %5519
  %5521 = phi i32 [ %5551, %5548 ], [ 0, %5519 ]
  %5522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5523 = extractvalue %dx.types.ResRet.i32 %5522, 0
  %5524 = lshr i32 %5523, 16
  %5525 = and i32 %5524, 31
  %5526 = shl i32 %5509, %5525
  %5527 = add i32 %5526, %5508
  %5528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %5529 = extractvalue %dx.types.ResRet.i32 %5528, 0
  %5530 = and i32 %5529, 31
  %5531 = shl i32 %5527, %5530
  %5532 = add i32 %5531, %5521
  %5533 = shl i32 %5532, 2
  %5534 = add i32 %5533, 32
  %5535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5534, i32 undef)  ; BufferLoad(srv,index,wot)
  %5536 = extractvalue %dx.types.ResRet.i32 %5535, 0
  %5537 = icmp slt i32 %5536, 0
  %5538 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5521
  %5539 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5521
  %5540 = bitcast float* %5538 to i32*
  %5541 = bitcast float* %5539 to i32*
  br i1 %5537, label %5542, label %5548

; <label>:5542                                    ; preds = %5520
  %5543 = and i32 %5536, 1073741823
  %5544 = add nuw nsw i32 %5543, 20
  %5545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5544, i32 undef)  ; BufferLoad(srv,index,wot)
  %5546 = extractvalue %dx.types.ResRet.i32 %5545, 0
  %5547 = extractvalue %dx.types.ResRet.i32 %5545, 1
  br label %5548

; <label>:5548                                    ; preds = %5542, %5520
  %5549 = phi i32 [ %5546, %5542 ], [ %5516, %5520 ]
  %5550 = phi i32 [ %5547, %5542 ], [ %5517, %5520 ]
  store i32 %5549, i32* %5540, align 4
  store i32 %5550, i32* %5541, align 4
  %5551 = add nuw i32 %5521, 1
  %5552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %5553 = extractvalue %dx.types.CBufRet.i32 %5552, 2
  %5554 = icmp eq i32 %5553, 0
  %5555 = icmp ugt i32 %5536, -1073741825
  %5556 = and i1 %5555, %5554
  %5557 = icmp ult i32 %5551, %5514
  %5558 = and i1 %5556, %5557
  br i1 %5558, label %5520, label %5559

; <label>:5559                                    ; preds = %5548
  br label %5560

; <label>:5560                                    ; preds = %5559, %5463
  %5561 = phi i32 [ 0, %5463 ], [ %5551, %5559 ]
  %5562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5563 = extractvalue %dx.types.CBufRet.f32 %5562, 2
  %5564 = fptoui float %5563 to i32
  %5565 = icmp eq i32 %5564, 0
  br i1 %5565, label %5617, label %5566

; <label>:5566                                    ; preds = %5560
  br label %5567

; <label>:5567                                    ; preds = %5612, %5566
  %5568 = phi i32 [ %5613, %5612 ], [ %5561, %5566 ]
  %5569 = phi i32 [ %5614, %5612 ], [ 0, %5566 ]
  %5570 = lshr i32 %5569, 2
  %5571 = and i32 %5569, 3
  %5572 = add nuw nsw i32 %5570, 83
  %5573 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 %5572)  ; CBufferLoadLegacy(handle,regIndex)
  %5574 = extractvalue %dx.types.CBufRet.i32 %5573, 0
  %5575 = extractvalue %dx.types.CBufRet.i32 %5573, 1
  %5576 = extractvalue %dx.types.CBufRet.i32 %5573, 2
  %5577 = extractvalue %dx.types.CBufRet.i32 %5573, 3
  %5578 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 0
  store i32 %5574, i32* %5578, align 4
  %5579 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 1
  store i32 %5575, i32* %5579, align 4
  %5580 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 2
  store i32 %5576, i32* %5580, align 4
  %5581 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 3
  store i32 %5577, i32* %5581, align 4
  %5582 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i32 0, i32 %5571
  %5583 = load i32, i32* %5582, align 4, !tbaa !141, !noalias !143
  %5584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %5585 = extractvalue %dx.types.ResRet.i32 %5584, 0
  %5586 = lshr i32 %5585, 16
  %5587 = and i32 %5586, 31
  %5588 = shl i32 %5509, %5587
  %5589 = add i32 %5588, %5508
  %5590 = shl i32 %5589, 2
  %5591 = add i32 %5590, %5583
  %5592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5591, i32 undef)  ; BufferLoad(srv,index,wot)
  %5593 = extractvalue %dx.types.ResRet.i32 %5592, 0
  %5594 = icmp eq i32 %5593, 0
  br i1 %5594, label %5612, label %5595

; <label>:5595                                    ; preds = %5567
  %5596 = icmp slt i32 %5593, 0
  %5597 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5568
  %5598 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5568
  %5599 = bitcast float* %5597 to i32*
  %5600 = bitcast float* %5598 to i32*
  br i1 %5596, label %5601, label %5608

; <label>:5601                                    ; preds = %5595
  %5602 = and i32 %5593, 1073741823
  %5603 = add i32 %5583, 20
  %5604 = add i32 %5603, %5602
  %5605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %5604, i32 undef)  ; BufferLoad(srv,index,wot)
  %5606 = extractvalue %dx.types.ResRet.i32 %5605, 0
  %5607 = extractvalue %dx.types.ResRet.i32 %5605, 1
  br label %5608

; <label>:5608                                    ; preds = %5601, %5595
  %5609 = phi i32 [ %5606, %5601 ], [ %5516, %5595 ]
  %5610 = phi i32 [ %5607, %5601 ], [ %5517, %5595 ]
  store i32 %5609, i32* %5599, align 4
  store i32 %5610, i32* %5600, align 4
  %5611 = add i32 %5568, 1
  br label %5612

; <label>:5612                                    ; preds = %5608, %5567
  %5613 = phi i32 [ %5568, %5567 ], [ %5611, %5608 ]
  %5614 = add nuw i32 %5569, 1
  %5615 = icmp eq i32 %5614, %5564
  br i1 %5615, label %5616, label %5567

; <label>:5616                                    ; preds = %5612
  br label %5617

; <label>:5617                                    ; preds = %5616, %5560
  %5618 = phi i32 [ %5561, %5560 ], [ %5613, %5616 ]
  %5619 = icmp eq i32 %5618, 1
  %5620 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 0
  %5621 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 0
  br i1 %5619, label %5622, label %5625

; <label>:5622                                    ; preds = %5617
  %5623 = load float, float* %5620, align 4
  %5624 = load float, float* %5621, align 4
  br label %5652

; <label>:5625                                    ; preds = %5617
  %5626 = load float, float* %5620, align 4
  %5627 = load float, float* %5621, align 4
  %5628 = fdiv fast float 1.000000e+00, %5627
  %5629 = fsub fast float %5626, %5628
  %5630 = icmp ugt i32 %5618, 1
  br i1 %5630, label %5631, label %5647

; <label>:5631                                    ; preds = %5625
  br label %5632

; <label>:5632                                    ; preds = %5632, %5631
  %5633 = phi float [ %5642, %5632 ], [ %5629, %5631 ]
  %5634 = phi float [ %5643, %5632 ], [ %5626, %5631 ]
  %5635 = phi i32 [ %5644, %5632 ], [ 1, %5631 ]
  %5636 = getelementptr [12 x float], [12 x float]* %89, i32 0, i32 %5635
  %5637 = load float, float* %5636, align 4
  %5638 = getelementptr [12 x float], [12 x float]* %90, i32 0, i32 %5635
  %5639 = load float, float* %5638, align 4
  %5640 = fdiv fast float 1.000000e+00, %5639
  %5641 = fsub fast float %5637, %5640
  %5642 = call float @dx.op.binary.f32(i32 36, float %5633, float %5641)  ; FMin(a,b)
  %5643 = call float @dx.op.binary.f32(i32 35, float %5634, float %5637)  ; FMax(a,b)
  %5644 = add nuw i32 %5635, 1
  %5645 = icmp eq i32 %5644, %5618
  br i1 %5645, label %5646, label %5632

; <label>:5646                                    ; preds = %5632
  br label %5647

; <label>:5647                                    ; preds = %5646, %5625
  %5648 = phi float [ %5629, %5625 ], [ %5642, %5646 ]
  %5649 = phi float [ %5626, %5625 ], [ %5643, %5646 ]
  %5650 = fsub fast float %5649, %5648
  %5651 = fdiv fast float 1.000000e+00, %5650
  br label %5652

; <label>:5652                                    ; preds = %5647, %5622
  %5653 = phi float [ %5623, %5622 ], [ %5649, %5647 ]
  %5654 = phi float [ %5624, %5622 ], [ %5651, %5647 ]
  %5655 = fadd fast float %5083, %5653
  %5656 = fmul fast float %5655, %5654
  %5657 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5658 = fmul fast float %5657, 2.000000e+00
  %5659 = fsub fast float 1.000000e+00, %5658
  %5660 = fmul fast float %5493, %5493
  %5661 = fsub fast float %5494, %5660
  %5662 = call float @dx.op.binary.f32(i32 35, float 0x3E7AD7F2A0000000, float %5661)  ; FMax(a,b)
  %5663 = fdiv fast float 1.000000e+00, %5662
  %5664 = fmul fast float %5494, %5493
  %5665 = fsub fast float %5495, %5664
  %5666 = fsub fast float %5659, %5493
  %5667 = fmul fast float %5659, %5659
  %5668 = fsub fast float %5667, %5494
  %5669 = fmul fast float %5663, %5665
  %5670 = fmul fast float %5669, %5666
  %5671 = fsub fast float %5668, %5670
  %5672 = fmul fast float %5494, %5494
  %5673 = fsub fast float %5496, %5672
  %5674 = fmul fast float %5665, %5665
  %5675 = fmul fast float %5674, %5663
  %5676 = fsub fast float %5673, %5675
  %5677 = fdiv fast float %5671, %5676
  %5678 = fmul fast float %5677, %5665
  %5679 = fsub fast float %5666, %5678
  %5680 = fmul fast float %5679, %5663
  %5681 = fmul fast float %5680, %5493
  %5682 = fsub fast float 1.000000e+00, %5681
  %5683 = fmul fast float %5677, %5494
  %5684 = fsub fast float %5682, %5683
  %5685 = fmul fast float %5680, %5680
  %5686 = fmul fast float %5677, 4.000000e+00
  %5687 = fmul fast float %5686, %5684
  %5688 = fsub fast float %5685, %5687
  %5689 = call float @dx.op.unary.f32(i32 24, float %5688)  ; Sqrt(value)
  %5690 = fcmp fast oge float %5680, 0.000000e+00
  %5691 = fsub fast float -0.000000e+00, %5689
  %5692 = select i1 %5690, float %5691, float %5689
  %5693 = fsub fast float %5692, %5680
  %5694 = fdiv fast float %5693, %5677
  %5695 = fdiv fast float %5684, %5693
  %5696 = fmul fast float %5694, 5.000000e-01
  %5697 = fmul fast float %5695, 2.000000e+00
  %5698 = select i1 %5690, float %5696, float %5697
  %5699 = select i1 %5690, float %5697, float %5696
  %5700 = call float @dx.op.binary.f32(i32 35, float %5698, float %5699)  ; FMax(a,b)
  %5701 = call float @dx.op.binary.f32(i32 36, float %5698, float %5699)  ; FMin(a,b)
  %5702 = fcmp fast ogt float %5659, %5700
  %5703 = fsub fast float %5659, %5701
  %5704 = fsub fast float %5659, %5700
  %5705 = fsub fast float %5700, %5701
  %5706 = select i1 %5702, float %5704, float %5705
  %5707 = fmul float %5703, %5706
  %5708 = select i1 %5702, float %5701, float %5659
  %5709 = fcmp fast ogt float %5659, %5701
  %5710 = fmul fast float %5708, %5700
  %5711 = fadd fast float %5708, %5700
  %5712 = fmul fast float %5711, %5493
  %5713 = fadd fast float %5710, %5494
  %5714 = fsub fast float %5713, %5712
  %5715 = fdiv fast float %5714, %5707
  %5716 = select i1 %5709, float %5715, float 0.000000e+00
  %5717 = fsub fast float 1.000000e+00, %5716
  %5718 = select i1 %5702, float %5717, float %5716
  %5719 = call float @dx.op.unary.f32(i32 7, float %5718)  ; Saturate(value)
  %5720 = extractvalue %dx.types.CBufRet.f32 %5478, 3
  %5721 = fmul fast float %5720, %5719
  %5722 = fsub fast float 1.000000e+00, %5721
  br label %5723

; <label>:5723                                    ; preds = %5652, %5330, %5056, %5052, %5022
  %5724 = phi float [ 1.000000e+00, %5022 ], [ %5722, %5652 ], [ 1.000000e+00, %5056 ], [ 1.000000e+00, %5330 ], [ 1.000000e+00, %5052 ]
  %5725 = fcmp fast ogt float %5048, 0.000000e+00
  br i1 %5725, label %5726, label %5890, !dx.controlflow.hints !148

; <label>:5726                                    ; preds = %5723
  %5727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5728 = extractvalue %dx.types.CBufRet.f32 %5727, 2
  %5729 = fadd fast float %5728, %4968
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 2
  %5735 = call float @dx.op.binary.f32(i32 35, float %5729, float 0.000000e+00)  ; FMax(a,b)
  %5736 = fadd fast float %5735, 0x3F10000000000000
  %5737 = fcmp fast oeq float %5734, 0.000000e+00
  br i1 %5737, label %5738, label %5805

; <label>:5738                                    ; preds = %5726
  %5739 = extractvalue %dx.types.CBufRet.f32 %5730, 1
  %5740 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5741 = fmul fast float %5740, %4856
  %5742 = fmul fast float %5739, %4857
  %5743 = fadd fast float %5741, 5.000000e-01
  %5744 = call float @dx.op.unary.f32(i32 27, float %5743)  ; Round_ni(value)
  %5745 = fadd fast float %5742, 5.000000e-01
  %5746 = call float @dx.op.unary.f32(i32 27, float %5745)  ; Round_ni(value)
  %5747 = fsub fast float %5743, %5744
  %5748 = fsub fast float %5745, %5746
  %5749 = fadd fast float %5744, -5.000000e-01
  %5750 = fadd fast float %5746, -5.000000e-01
  %5751 = fmul fast float %5747, 2.000000e+00
  %5752 = fsub fast float 3.000000e+00, %5751
  %5753 = fadd fast float %5751, 1.000000e+00
  %5754 = fsub fast float 2.000000e+00, %5747
  %5755 = bitcast float %5752 to i32
  %5756 = sub nsw i32 2129859010, %5755
  %5757 = bitcast i32 %5756 to float
  %5758 = fmul fast float %5757, %5754
  %5759 = fadd fast float %5758, -1.000000e+00
  %5760 = bitcast float %5753 to i32
  %5761 = sub nsw i32 2129859010, %5760
  %5762 = bitcast i32 %5761 to float
  %5763 = fmul fast float %5762, %5747
  %5764 = fadd fast float %5763, 1.000000e+00
  %5765 = fmul fast float %5748, 2.000000e+00
  %5766 = fsub fast float 3.000000e+00, %5765
  %5767 = fadd fast float %5765, 1.000000e+00
  %5768 = fsub fast float 2.000000e+00, %5748
  %5769 = bitcast float %5766 to i32
  %5770 = sub nsw i32 2129859010, %5769
  %5771 = bitcast i32 %5770 to float
  %5772 = fmul fast float %5771, %5768
  %5773 = fadd fast float %5772, -1.000000e+00
  %5774 = bitcast float %5767 to i32
  %5775 = sub nsw i32 2129859010, %5774
  %5776 = bitcast i32 %5775 to float
  %5777 = fmul fast float %5776, %5748
  %5778 = fadd fast float %5777, 1.000000e+00
  %5779 = fadd fast float %5759, %5749
  %5780 = fmul fast float %5779, %5731
  %5781 = fadd fast float %5773, %5750
  %5782 = fmul fast float %5781, %5732
  %5783 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %5780, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float %5736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = fmul fast float %5784, %5752
  %5786 = fadd fast float %5764, %5749
  %5787 = fmul fast float %5786, %5731
  %5788 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %5787, float %5782, float undef, float undef, i32 0, i32 0, i32 undef, float %5736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5789 = extractvalue %dx.types.ResRet.f32 %5788, 0
  %5790 = fmul fast float %5789, %5753
  %5791 = fadd fast float %5778, %5750
  %5792 = fmul fast float %5791, %5732
  %5793 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %5780, float %5792, float undef, float undef, i32 0, i32 0, i32 undef, float %5736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5794 = extractvalue %dx.types.ResRet.f32 %5793, 0
  %5795 = fmul fast float %5794, %5752
  %5796 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %16, %dx.types.Handle %64, float %5787, float %5792, float undef, float undef, i32 0, i32 0, i32 undef, float %5736)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5797 = extractvalue %dx.types.ResRet.f32 %5796, 0
  %5798 = fmul fast float %5797, %5753
  %5799 = fadd fast float %5798, %5795
  %5800 = fmul fast float %5799, %5767
  %5801 = fadd fast float %5790, %5785
  %5802 = fmul fast float %5801, %5766
  %5803 = fadd fast float %5802, %5800
  %5804 = fmul fast float %5803, 6.250000e-02
  br label %5890

; <label>:5805                                    ; preds = %5726
  %5806 = fmul fast float %1189, 0x401921FB60000000
  %5807 = call float @dx.op.unary.f32(i32 13, float %5806)  ; Sin(value)
  %5808 = call float @dx.op.unary.f32(i32 12, float %5806)  ; Cos(value)
  %5809 = fsub fast float -0.000000e+00, %5807
  br label %5810

; <label>:5810                                    ; preds = %5859, %5805
  %5811 = phi float [ 0.000000e+00, %5805 ], [ %5854, %5859 ]
  %5812 = phi float [ 0.000000e+00, %5805 ], [ %5856, %5859 ]
  %5813 = phi i32 [ 0, %5805 ], [ %5860, %5859 ]
  %5814 = mul i32 %5813, 2
  %5815 = add i32 0, %5814
  %5816 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5815
  %5817 = load float, float* %5816, align 4
  %5818 = mul i32 %5813, 2
  %5819 = add i32 1, %5818
  %5820 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5819
  %5821 = load float, float* %5820, align 4
  %5822 = fmul fast float %5817, %5808
  %5823 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5809, float %5822)  ; FMad(a,b,c)
  %5824 = fmul fast float %5817, %5807
  %5825 = call float @dx.op.tertiary.f32(i32 46, float %5821, float %5808, float %5824)  ; FMad(a,b,c)
  %5826 = fmul fast float %5823, %5734
  %5827 = fmul fast float %5825, %5734
  %5828 = fadd fast float %5826, %4856
  %5829 = fadd fast float %5827, %4857
  %5830 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %16, %dx.types.Handle %63, float %5828, float %5829, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.ResRet.f32 %5830, 2
  %5834 = extractvalue %dx.types.ResRet.f32 %5830, 3
  %5835 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 0
  store float %5831, float* %5835, align 4
  %5836 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 1
  store float %5832, float* %5836, align 4
  %5837 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 2
  store float %5833, float* %5837, align 4
  %5838 = getelementptr inbounds [4 x float], [4 x float]* %95, i32 0, i32 3
  store float %5834, float* %5838, align 4
  %5839 = fsub fast float %5831, %5736
  %5840 = fcmp fast olt float %5839, 0.000000e+00
  %5841 = select i1 %5840, float 0.000000e+00, float 1.000000e+00
  %5842 = fadd fast float %5841, %5811
  %5843 = fmul fast float %5841, %5839
  %5844 = fadd fast float %5843, %5812
  br label %5845

; <label>:5845                                    ; preds = %5845, %5810
  %5846 = phi i32 [ 1, %5810 ], [ %5857, %5845 ]
  %5847 = phi float [ %5844, %5810 ], [ %5856, %5845 ]
  %5848 = phi float [ %5842, %5810 ], [ %5854, %5845 ]
  %5849 = getelementptr [4 x float], [4 x float]* %95, i32 0, i32 %5846
  %5850 = load float, float* %5849, align 4, !tbaa !107, !noalias !149
  %5851 = fsub fast float %5850, %5736
  %5852 = fcmp fast olt float %5851, 0.000000e+00
  %5853 = select i1 %5852, float 0.000000e+00, float 1.000000e+00
  %5854 = fadd fast float %5853, %5848
  %5855 = fmul fast float %5853, %5851
  %5856 = fadd fast float %5855, %5847
  %5857 = add nuw nsw i32 %5846, 1
  %5858 = icmp eq i32 %5857, 4
  br i1 %5858, label %5859, label %5845, !llvm.loop !154

; <label>:5859                                    ; preds = %5845
  %5860 = add nuw nsw i32 %5813, 1
  %5861 = icmp eq i32 %5860, 8
  br i1 %5861, label %5862, label %5810, !llvm.loop !155

; <label>:5862                                    ; preds = %5859
  %5863 = fdiv fast float 1.000000e+00, %5854
  %5864 = fmul fast float %5863, %5856
  %5865 = fdiv fast float 1.000000e+00, %5736
  %5866 = fmul fast float %5864, %5865
  %5867 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5868 = call float @dx.op.binary.f32(i32 35, float %5867, float 0.000000e+00)  ; FMax(a,b)
  %5869 = fmul fast float %5854, 3.125000e-02
  %5870 = call float @dx.op.unary.f32(i32 7, float %5869)  ; Saturate(value)
  %5871 = fmul fast float %5870, 2.000000e+00
  %5872 = fadd fast float %5871, -1.000000e+00
  %5873 = fcmp fast ogt float %5872, 0.000000e+00
  %5874 = fcmp fast olt float %5872, 0.000000e+00
  %5875 = zext i1 %5873 to i32
  %5876 = zext i1 %5874 to i32
  %5877 = sub nsw i32 %5875, %5876
  %5878 = sitofp i32 %5877 to float
  %5879 = fmul fast float %5878, %5872
  %5880 = fsub fast float 1.000000e+00, %5879
  %5881 = fmul fast float %5880, %5880
  %5882 = fmul fast float %5881, %5880
  %5883 = fsub fast float %5880, %5882
  %5884 = fmul fast float %5883, %5868
  %5885 = fsub fast float 1.000000e+00, %5882
  %5886 = fsub fast float %5885, %5884
  %5887 = fmul fast float %5878, 5.000000e-01
  %5888 = fmul fast float %5887, %5886
  %5889 = fsub fast float 5.000000e-01, %5888
  br label %5890

; <label>:5890                                    ; preds = %5862, %5738, %5723
  %5891 = phi float [ 1.000000e+00, %5723 ], [ %5804, %5738 ], [ %5889, %5862 ]
  %5892 = fcmp fast ogt float %5046, 0.000000e+00
  br i1 %5892, label %5893, label %6057, !dx.controlflow.hints !156

; <label>:5893                                    ; preds = %5890
  %5894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %5895 = extractvalue %dx.types.CBufRet.f32 %5894, 1
  %5896 = fadd fast float %5895, %4968
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 2
  %5899 = extractvalue %dx.types.CBufRet.f32 %5897, 3
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5902 = call float @dx.op.binary.f32(i32 35, float %5896, float 0.000000e+00)  ; FMax(a,b)
  %5903 = fadd fast float %5902, 0x3F10000000000000
  %5904 = fcmp fast oeq float %5901, 0.000000e+00
  br i1 %5904, label %5905, label %5972

; <label>:5905                                    ; preds = %5893
  %5906 = extractvalue %dx.types.CBufRet.f32 %5897, 1
  %5907 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5908 = fmul fast float %5907, %4848
  %5909 = fmul fast float %5906, %4849
  %5910 = fadd fast float %5908, 5.000000e-01
  %5911 = call float @dx.op.unary.f32(i32 27, float %5910)  ; Round_ni(value)
  %5912 = fadd fast float %5909, 5.000000e-01
  %5913 = call float @dx.op.unary.f32(i32 27, float %5912)  ; Round_ni(value)
  %5914 = fsub fast float %5910, %5911
  %5915 = fsub fast float %5912, %5913
  %5916 = fadd fast float %5911, -5.000000e-01
  %5917 = fadd fast float %5913, -5.000000e-01
  %5918 = fmul fast float %5914, 2.000000e+00
  %5919 = fsub fast float 3.000000e+00, %5918
  %5920 = fadd fast float %5918, 1.000000e+00
  %5921 = fsub fast float 2.000000e+00, %5914
  %5922 = bitcast float %5919 to i32
  %5923 = sub nsw i32 2129859010, %5922
  %5924 = bitcast i32 %5923 to float
  %5925 = fmul fast float %5924, %5921
  %5926 = fadd fast float %5925, -1.000000e+00
  %5927 = bitcast float %5920 to i32
  %5928 = sub nsw i32 2129859010, %5927
  %5929 = bitcast i32 %5928 to float
  %5930 = fmul fast float %5929, %5914
  %5931 = fadd fast float %5930, 1.000000e+00
  %5932 = fmul fast float %5915, 2.000000e+00
  %5933 = fsub fast float 3.000000e+00, %5932
  %5934 = fadd fast float %5932, 1.000000e+00
  %5935 = fsub fast float 2.000000e+00, %5915
  %5936 = bitcast float %5933 to i32
  %5937 = sub nsw i32 2129859010, %5936
  %5938 = bitcast i32 %5937 to float
  %5939 = fmul fast float %5938, %5935
  %5940 = fadd fast float %5939, -1.000000e+00
  %5941 = bitcast float %5934 to i32
  %5942 = sub nsw i32 2129859010, %5941
  %5943 = bitcast i32 %5942 to float
  %5944 = fmul fast float %5943, %5915
  %5945 = fadd fast float %5944, 1.000000e+00
  %5946 = fadd fast float %5926, %5916
  %5947 = fmul fast float %5946, %5898
  %5948 = fadd fast float %5940, %5917
  %5949 = fmul fast float %5948, %5899
  %5950 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %5947, float %5949, float undef, float undef, i32 0, i32 0, i32 undef, float %5903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  %5952 = fmul fast float %5951, %5919
  %5953 = fadd fast float %5931, %5916
  %5954 = fmul fast float %5953, %5898
  %5955 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %5954, float %5949, float undef, float undef, i32 0, i32 0, i32 undef, float %5903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5956 = extractvalue %dx.types.ResRet.f32 %5955, 0
  %5957 = fmul fast float %5956, %5920
  %5958 = fadd fast float %5945, %5917
  %5959 = fmul fast float %5958, %5899
  %5960 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %5947, float %5959, float undef, float undef, i32 0, i32 0, i32 undef, float %5903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5961 = extractvalue %dx.types.ResRet.f32 %5960, 0
  %5962 = fmul fast float %5961, %5919
  %5963 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %17, %dx.types.Handle %64, float %5954, float %5959, float undef, float undef, i32 0, i32 0, i32 undef, float %5903)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %5964 = extractvalue %dx.types.ResRet.f32 %5963, 0
  %5965 = fmul fast float %5964, %5920
  %5966 = fadd fast float %5965, %5962
  %5967 = fmul fast float %5966, %5934
  %5968 = fadd fast float %5957, %5952
  %5969 = fmul fast float %5968, %5933
  %5970 = fadd fast float %5969, %5967
  %5971 = fmul fast float %5970, 6.250000e-02
  br label %6057

; <label>:5972                                    ; preds = %5893
  %5973 = fmul fast float %1189, 0x401921FB60000000
  %5974 = call float @dx.op.unary.f32(i32 13, float %5973)  ; Sin(value)
  %5975 = call float @dx.op.unary.f32(i32 12, float %5973)  ; Cos(value)
  %5976 = fsub fast float -0.000000e+00, %5974
  br label %5977

; <label>:5977                                    ; preds = %6026, %5972
  %5978 = phi float [ 0.000000e+00, %5972 ], [ %6021, %6026 ]
  %5979 = phi float [ 0.000000e+00, %5972 ], [ %6023, %6026 ]
  %5980 = phi i32 [ 0, %5972 ], [ %6027, %6026 ]
  %5981 = mul i32 %5980, 2
  %5982 = add i32 0, %5981
  %5983 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5982
  %5984 = load float, float* %5983, align 4
  %5985 = mul i32 %5980, 2
  %5986 = add i32 1, %5985
  %5987 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %5986
  %5988 = load float, float* %5987, align 4
  %5989 = fmul fast float %5984, %5975
  %5990 = call float @dx.op.tertiary.f32(i32 46, float %5988, float %5976, float %5989)  ; FMad(a,b,c)
  %5991 = fmul fast float %5984, %5974
  %5992 = call float @dx.op.tertiary.f32(i32 46, float %5988, float %5975, float %5991)  ; FMad(a,b,c)
  %5993 = fmul fast float %5990, %5901
  %5994 = fmul fast float %5992, %5901
  %5995 = fadd fast float %5993, %4848
  %5996 = fadd fast float %5994, %4849
  %5997 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %17, %dx.types.Handle %63, float %5995, float %5996, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %5998 = extractvalue %dx.types.ResRet.f32 %5997, 0
  %5999 = extractvalue %dx.types.ResRet.f32 %5997, 1
  %6000 = extractvalue %dx.types.ResRet.f32 %5997, 2
  %6001 = extractvalue %dx.types.ResRet.f32 %5997, 3
  %6002 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 0
  store float %5998, float* %6002, align 4
  %6003 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 1
  store float %5999, float* %6003, align 4
  %6004 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 2
  store float %6000, float* %6004, align 4
  %6005 = getelementptr inbounds [4 x float], [4 x float]* %94, i32 0, i32 3
  store float %6001, float* %6005, align 4
  %6006 = fsub fast float %5998, %5903
  %6007 = fcmp fast olt float %6006, 0.000000e+00
  %6008 = select i1 %6007, float 0.000000e+00, float 1.000000e+00
  %6009 = fadd fast float %6008, %5978
  %6010 = fmul fast float %6008, %6006
  %6011 = fadd fast float %6010, %5979
  br label %6012

; <label>:6012                                    ; preds = %6012, %5977
  %6013 = phi i32 [ 1, %5977 ], [ %6024, %6012 ]
  %6014 = phi float [ %6011, %5977 ], [ %6023, %6012 ]
  %6015 = phi float [ %6009, %5977 ], [ %6021, %6012 ]
  %6016 = getelementptr [4 x float], [4 x float]* %94, i32 0, i32 %6013
  %6017 = load float, float* %6016, align 4, !tbaa !107, !noalias !149
  %6018 = fsub fast float %6017, %5903
  %6019 = fcmp fast olt float %6018, 0.000000e+00
  %6020 = select i1 %6019, float 0.000000e+00, float 1.000000e+00
  %6021 = fadd fast float %6020, %6015
  %6022 = fmul fast float %6020, %6018
  %6023 = fadd fast float %6022, %6014
  %6024 = add nuw nsw i32 %6013, 1
  %6025 = icmp eq i32 %6024, 4
  br i1 %6025, label %6026, label %6012, !llvm.loop !154

; <label>:6026                                    ; preds = %6012
  %6027 = add nuw nsw i32 %5980, 1
  %6028 = icmp eq i32 %6027, 8
  br i1 %6028, label %6029, label %5977, !llvm.loop !155

; <label>:6029                                    ; preds = %6026
  %6030 = fdiv fast float 1.000000e+00, %6021
  %6031 = fmul fast float %6030, %6023
  %6032 = fdiv fast float 1.000000e+00, %5903
  %6033 = fmul fast float %6031, %6032
  %6034 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  %6035 = call float @dx.op.binary.f32(i32 35, float %6034, float 0.000000e+00)  ; FMax(a,b)
  %6036 = fmul fast float %6021, 3.125000e-02
  %6037 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6038 = fmul fast float %6037, 2.000000e+00
  %6039 = fadd fast float %6038, -1.000000e+00
  %6040 = fcmp fast ogt float %6039, 0.000000e+00
  %6041 = fcmp fast olt float %6039, 0.000000e+00
  %6042 = zext i1 %6040 to i32
  %6043 = zext i1 %6041 to i32
  %6044 = sub nsw i32 %6042, %6043
  %6045 = sitofp i32 %6044 to float
  %6046 = fmul fast float %6045, %6039
  %6047 = fsub fast float 1.000000e+00, %6046
  %6048 = fmul fast float %6047, %6047
  %6049 = fmul fast float %6048, %6047
  %6050 = fsub fast float %6047, %6049
  %6051 = fmul fast float %6050, %6035
  %6052 = fsub fast float 1.000000e+00, %6049
  %6053 = fsub fast float %6052, %6051
  %6054 = fmul fast float %6045, 5.000000e-01
  %6055 = fmul fast float %6054, %6053
  %6056 = fsub fast float 5.000000e-01, %6055
  br label %6057

; <label>:6057                                    ; preds = %6029, %5905, %5890
  %6058 = phi float [ 1.000000e+00, %5890 ], [ %5971, %5905 ], [ %6056, %6029 ]
  %6059 = fcmp fast ogt float %5045, 0.000000e+00
  br i1 %6059, label %6060, label %6224, !dx.controlflow.hints !157

; <label>:6060                                    ; preds = %6057
  %6061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 81)  ; CBufferLoadLegacy(handle,regIndex)
  %6062 = extractvalue %dx.types.CBufRet.f32 %6061, 0
  %6063 = fadd fast float %6062, %4968
  %6064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %6065 = extractvalue %dx.types.CBufRet.f32 %6064, 2
  %6066 = extractvalue %dx.types.CBufRet.f32 %6064, 3
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 80)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = call float @dx.op.binary.f32(i32 35, float %6063, float 0.000000e+00)  ; FMax(a,b)
  %6070 = fadd fast float %6069, 0x3F10000000000000
  %6071 = fcmp fast oeq float %6068, 0.000000e+00
  br i1 %6071, label %6072, label %6139

; <label>:6072                                    ; preds = %6060
  %6073 = extractvalue %dx.types.CBufRet.f32 %6064, 1
  %6074 = extractvalue %dx.types.CBufRet.f32 %6064, 0
  %6075 = fmul fast float %6074, %4834
  %6076 = fmul fast float %6073, %4838
  %6077 = fadd fast float %6075, 5.000000e-01
  %6078 = call float @dx.op.unary.f32(i32 27, float %6077)  ; Round_ni(value)
  %6079 = fadd fast float %6076, 5.000000e-01
  %6080 = call float @dx.op.unary.f32(i32 27, float %6079)  ; Round_ni(value)
  %6081 = fsub fast float %6077, %6078
  %6082 = fsub fast float %6079, %6080
  %6083 = fadd fast float %6078, -5.000000e-01
  %6084 = fadd fast float %6080, -5.000000e-01
  %6085 = fmul fast float %6081, 2.000000e+00
  %6086 = fsub fast float 3.000000e+00, %6085
  %6087 = fadd fast float %6085, 1.000000e+00
  %6088 = fsub fast float 2.000000e+00, %6081
  %6089 = bitcast float %6086 to i32
  %6090 = sub nsw i32 2129859010, %6089
  %6091 = bitcast i32 %6090 to float
  %6092 = fmul fast float %6091, %6088
  %6093 = fadd fast float %6092, -1.000000e+00
  %6094 = bitcast float %6087 to i32
  %6095 = sub nsw i32 2129859010, %6094
  %6096 = bitcast i32 %6095 to float
  %6097 = fmul fast float %6096, %6081
  %6098 = fadd fast float %6097, 1.000000e+00
  %6099 = fmul fast float %6082, 2.000000e+00
  %6100 = fsub fast float 3.000000e+00, %6099
  %6101 = fadd fast float %6099, 1.000000e+00
  %6102 = fsub fast float 2.000000e+00, %6082
  %6103 = bitcast float %6100 to i32
  %6104 = sub nsw i32 2129859010, %6103
  %6105 = bitcast i32 %6104 to float
  %6106 = fmul fast float %6105, %6102
  %6107 = fadd fast float %6106, -1.000000e+00
  %6108 = bitcast float %6101 to i32
  %6109 = sub nsw i32 2129859010, %6108
  %6110 = bitcast i32 %6109 to float
  %6111 = fmul fast float %6110, %6082
  %6112 = fadd fast float %6111, 1.000000e+00
  %6113 = fadd fast float %6093, %6083
  %6114 = fmul fast float %6113, %6065
  %6115 = fadd fast float %6107, %6084
  %6116 = fmul fast float %6115, %6066
  %6117 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6114, float %6116, float undef, float undef, i32 0, i32 0, i32 undef, float %6070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6118 = extractvalue %dx.types.ResRet.f32 %6117, 0
  %6119 = fmul fast float %6118, %6086
  %6120 = fadd fast float %6098, %6083
  %6121 = fmul fast float %6120, %6065
  %6122 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6121, float %6116, float undef, float undef, i32 0, i32 0, i32 undef, float %6070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6123 = extractvalue %dx.types.ResRet.f32 %6122, 0
  %6124 = fmul fast float %6123, %6087
  %6125 = fadd fast float %6112, %6084
  %6126 = fmul fast float %6125, %6066
  %6127 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6114, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float %6070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 0
  %6129 = fmul fast float %6128, %6086
  %6130 = call %dx.types.ResRet.f32 @dx.op.sampleCmpLevelZero.f32(i32 65, %dx.types.Handle %18, %dx.types.Handle %64, float %6121, float %6126, float undef, float undef, i32 0, i32 0, i32 undef, float %6070)  ; SampleCmpLevelZero(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,compareValue)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 0
  %6132 = fmul fast float %6131, %6087
  %6133 = fadd fast float %6132, %6129
  %6134 = fmul fast float %6133, %6101
  %6135 = fadd fast float %6124, %6119
  %6136 = fmul fast float %6135, %6100
  %6137 = fadd fast float %6136, %6134
  %6138 = fmul fast float %6137, 6.250000e-02
  br label %6224

; <label>:6139                                    ; preds = %6060
  %6140 = fmul fast float %1189, 0x401921FB60000000
  %6141 = call float @dx.op.unary.f32(i32 13, float %6140)  ; Sin(value)
  %6142 = call float @dx.op.unary.f32(i32 12, float %6140)  ; Cos(value)
  %6143 = fsub fast float -0.000000e+00, %6141
  br label %6144

; <label>:6144                                    ; preds = %6193, %6139
  %6145 = phi float [ 0.000000e+00, %6139 ], [ %6188, %6193 ]
  %6146 = phi float [ 0.000000e+00, %6139 ], [ %6190, %6193 ]
  %6147 = phi i32 [ 0, %6139 ], [ %6194, %6193 ]
  %6148 = mul i32 %6147, 2
  %6149 = add i32 0, %6148
  %6150 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6149
  %6151 = load float, float* %6150, align 4
  %6152 = mul i32 %6147, 2
  %6153 = add i32 1, %6152
  %6154 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %6153
  %6155 = load float, float* %6154, align 4
  %6156 = fmul fast float %6151, %6142
  %6157 = call float @dx.op.tertiary.f32(i32 46, float %6155, float %6143, float %6156)  ; FMad(a,b,c)
  %6158 = fmul fast float %6151, %6141
  %6159 = call float @dx.op.tertiary.f32(i32 46, float %6155, float %6142, float %6158)  ; FMad(a,b,c)
  %6160 = fmul fast float %6157, %6068
  %6161 = fmul fast float %6159, %6068
  %6162 = fadd fast float %6160, %4834
  %6163 = fadd fast float %6161, %4838
  %6164 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %18, %dx.types.Handle %63, float %6162, float %6163, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %6165 = extractvalue %dx.types.ResRet.f32 %6164, 0
  %6166 = extractvalue %dx.types.ResRet.f32 %6164, 1
  %6167 = extractvalue %dx.types.ResRet.f32 %6164, 2
  %6168 = extractvalue %dx.types.ResRet.f32 %6164, 3
  %6169 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 0
  store float %6165, float* %6169, align 4
  %6170 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 1
  store float %6166, float* %6170, align 4
  %6171 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 2
  store float %6167, float* %6171, align 4
  %6172 = getelementptr inbounds [4 x float], [4 x float]* %93, i32 0, i32 3
  store float %6168, float* %6172, align 4
  %6173 = fsub fast float %6165, %6070
  %6174 = fcmp fast olt float %6173, 0.000000e+00
  %6175 = select i1 %6174, float 0.000000e+00, float 1.000000e+00
  %6176 = fadd fast float %6175, %6145
  %6177 = fmul fast float %6175, %6173
  %6178 = fadd fast float %6177, %6146
  br label %6179

; <label>:6179                                    ; preds = %6179, %6144
  %6180 = phi i32 [ 1, %6144 ], [ %6191, %6179 ]
  %6181 = phi float [ %6178, %6144 ], [ %6190, %6179 ]
  %6182 = phi float [ %6176, %6144 ], [ %6188, %6179 ]
  %6183 = getelementptr [4 x float], [4 x float]* %93, i32 0, i32 %6180
  %6184 = load float, float* %6183, align 4, !tbaa !107, !noalias !149
  %6185 = fsub fast float %6184, %6070
  %6186 = fcmp fast olt float %6185, 0.000000e+00
  %6187 = select i1 %6186, float 0.000000e+00, float 1.000000e+00
  %6188 = fadd fast float %6187, %6182
  %6189 = fmul fast float %6187, %6185
  %6190 = fadd fast float %6189, %6181
  %6191 = add nuw nsw i32 %6180, 1
  %6192 = icmp eq i32 %6191, 4
  br i1 %6192, label %6193, label %6179, !llvm.loop !154

; <label>:6193                                    ; preds = %6179
  %6194 = add nuw nsw i32 %6147, 1
  %6195 = icmp eq i32 %6194, 8
  br i1 %6195, label %6196, label %6144, !llvm.loop !155

; <label>:6196                                    ; preds = %6193
  %6197 = fdiv fast float 1.000000e+00, %6188
  %6198 = fmul fast float %6197, %6190
  %6199 = fdiv fast float 1.000000e+00, %6070
  %6200 = fmul fast float %6198, %6199
  %6201 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6202 = call float @dx.op.binary.f32(i32 35, float %6201, float 0.000000e+00)  ; FMax(a,b)
  %6203 = fmul fast float %6188, 3.125000e-02
  %6204 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  %6205 = fmul fast float %6204, 2.000000e+00
  %6206 = fadd fast float %6205, -1.000000e+00
  %6207 = fcmp fast ogt float %6206, 0.000000e+00
  %6208 = fcmp fast olt float %6206, 0.000000e+00
  %6209 = zext i1 %6207 to i32
  %6210 = zext i1 %6208 to i32
  %6211 = sub nsw i32 %6209, %6210
  %6212 = sitofp i32 %6211 to float
  %6213 = fmul fast float %6212, %6206
  %6214 = fsub fast float 1.000000e+00, %6213
  %6215 = fmul fast float %6214, %6214
  %6216 = fmul fast float %6215, %6214
  %6217 = fsub fast float %6214, %6216
  %6218 = fmul fast float %6217, %6202
  %6219 = fsub fast float 1.000000e+00, %6216
  %6220 = fsub fast float %6219, %6218
  %6221 = fmul fast float %6212, 5.000000e-01
  %6222 = fmul fast float %6221, %6220
  %6223 = fsub fast float 5.000000e-01, %6222
  br label %6224

; <label>:6224                                    ; preds = %6196, %6072, %6057
  %6225 = phi float [ 1.000000e+00, %6057 ], [ %6138, %6072 ], [ %6223, %6196 ]
  %6226 = fsub fast float %5891, %5724
  %6227 = fmul fast float %6226, %4998
  %6228 = fadd fast float %6227, %5724
  %6229 = fsub fast float %6058, %6228
  %6230 = fmul fast float %6229, %5023
  %6231 = fadd fast float %6230, %6228
  %6232 = fsub fast float %6225, %6231
  %6233 = fmul fast float %6232, %5045
  %6234 = fadd fast float %6233, %6231
  %6235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 91)  ; CBufferLoadLegacy(handle,regIndex)
  %6236 = extractvalue %dx.types.CBufRet.f32 %6235, 2
  %6237 = fcmp fast ogt float %6236, 0.000000e+00
  br i1 %6237, label %6238, label %6278, !dx.controlflow.hints !158

; <label>:6238                                    ; preds = %6224
  %6239 = fcmp fast ugt float %6236, 0.000000e+00
  br i1 %6239, label %6240, label %6275

; <label>:6240                                    ; preds = %6238
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 89)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6244 = extractvalue %dx.types.CBufRet.f32 %6241, 2
  %6245 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 90)  ; CBufferLoadLegacy(handle,regIndex)
  %6247 = extractvalue %dx.types.CBufRet.f32 %6246, 0
  %6248 = extractvalue %dx.types.CBufRet.f32 %6246, 1
  %6249 = extractvalue %dx.types.CBufRet.f32 %6246, 2
  %6250 = extractvalue %dx.types.CBufRet.f32 %6246, 3
  %6251 = extractvalue %dx.types.CBufRet.f32 %6235, 0
  %6252 = extractvalue %dx.types.CBufRet.f32 %6235, 1
  %6253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6254 = extractvalue %dx.types.CBufRet.f32 %6253, 0
  %6255 = extractvalue %dx.types.CBufRet.f32 %6253, 1
  %6256 = extractvalue %dx.types.CBufRet.f32 %6253, 2
  %6257 = fadd fast float %6254, %154
  %6258 = fadd fast float %6255, %155
  %6259 = fadd fast float %6256, %156
  %6260 = fmul fast float %6257, %6242
  %6261 = call float @dx.op.tertiary.f32(i32 46, float %6243, float %6258, float %6260)  ; FMad(a,b,c)
  %6262 = call float @dx.op.tertiary.f32(i32 46, float %6244, float %6259, float %6261)  ; FMad(a,b,c)
  %6263 = fadd fast float %6262, %6245
  %6264 = fmul fast float %6257, %6247
  %6265 = call float @dx.op.tertiary.f32(i32 46, float %6248, float %6258, float %6264)  ; FMad(a,b,c)
  %6266 = call float @dx.op.tertiary.f32(i32 46, float %6249, float %6259, float %6265)  ; FMad(a,b,c)
  %6267 = fadd fast float %6266, %6250
  %6268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %13, %dx.types.Handle %59, float %6263, float %6267, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %6269 = extractvalue %dx.types.ResRet.f32 %6268, 0
  %6270 = fmul fast float %6269, %6252
  %6271 = fadd fast float %6270, %6251
  %6272 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6273 = fmul fast float %6272, %6236
  %6274 = fsub fast float 1.000000e+00, %6273
  br label %6275

; <label>:6275                                    ; preds = %6240, %6238
  %6276 = phi float [ %6274, %6240 ], [ 1.000000e+00, %6238 ]
  %6277 = fmul fast float %6276, %6234
  br label %6278

; <label>:6278                                    ; preds = %6275, %6224, %4964
  %6279 = phi float [ 1.000000e+00, %4964 ], [ %6277, %6275 ], [ %6234, %6224 ]
  %6280 = call float @dx.op.binary.f32(i32 36, float %6279, float %6279)  ; FMin(a,b)
  %6281 = call float @dx.op.binary.f32(i32 36, float %6279, float %6280)  ; FMin(a,b)
  %6282 = fcmp fast ogt float %6281, 0.000000e+00
  br i1 %6282, label %6283, label %6448, !dx.controlflow.hints !159

; <label>:6283                                    ; preds = %6278
  %6284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %6285 = extractvalue %dx.types.CBufRet.f32 %6284, 0
  %6286 = extractvalue %dx.types.CBufRet.f32 %6284, 1
  %6287 = extractvalue %dx.types.CBufRet.f32 %6284, 2
  %6288 = extractvalue %dx.types.CBufRet.f32 %6284, 3
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = extractvalue %dx.types.CBufRet.f32 %6289, 2
  %6293 = extractvalue %dx.types.CBufRet.f32 %6289, 3
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6298 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6299 = fmul fast float %6285, %154
  %6300 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6286, float %6299)  ; FMad(a,b,c)
  %6301 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6287, float %6300)  ; FMad(a,b,c)
  %6302 = fadd fast float %6301, %6288
  %6303 = fmul fast float %6290, %154
  %6304 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6291, float %6303)  ; FMad(a,b,c)
  %6305 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6292, float %6304)  ; FMad(a,b,c)
  %6306 = fadd fast float %6305, %6293
  %6307 = fmul fast float %6295, %154
  %6308 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6296, float %6307)  ; FMad(a,b,c)
  %6309 = call float @dx.op.tertiary.f32(i32 46, float %156, float %6297, float %6308)  ; FMad(a,b,c)
  %6310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 70)  ; CBufferLoadLegacy(handle,regIndex)
  %6311 = extractvalue %dx.types.CBufRet.f32 %6310, 0
  %6312 = extractvalue %dx.types.CBufRet.f32 %6310, 1
  %6313 = extractvalue %dx.types.CBufRet.f32 %6310, 3
  %6314 = fmul fast float %6313, %6302
  %6315 = fmul fast float %6313, %6306
  %6316 = fadd fast float %6314, %6311
  %6317 = fadd fast float %6315, %6312
  %6318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 74)  ; CBufferLoadLegacy(handle,regIndex)
  %6319 = extractvalue %dx.types.CBufRet.f32 %6318, 0
  %6320 = extractvalue %dx.types.CBufRet.f32 %6318, 1
  %6321 = fsub fast float %6316, %6319
  %6322 = fsub fast float %6317, %6320
  %6323 = fcmp fast olt float %6321, 0.000000e+00
  %6324 = fcmp fast olt float %6322, 0.000000e+00
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 78)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = extractvalue %dx.types.CBufRet.f32 %6325, 1
  %6328 = extractvalue %dx.types.CBufRet.f32 %6325, 2
  %6329 = extractvalue %dx.types.CBufRet.f32 %6325, 3
  %6330 = select i1 %6323, float %6326, float %6328
  %6331 = select i1 %6324, float %6327, float %6329
  %6332 = fmul fast float %6330, %6321
  %6333 = fmul fast float %6331, %6322
  %6334 = call float @dx.op.unary.f32(i32 6, float %6332)  ; FAbs(value)
  %6335 = call float @dx.op.unary.f32(i32 6, float %6333)  ; FAbs(value)
  %6336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 57)  ; CBufferLoadLegacy(handle,regIndex)
  %6337 = extractvalue %dx.types.CBufRet.f32 %6336, 0
  %6338 = call float @dx.op.binary.f32(i32 35, float %6334, float %6335)  ; FMax(a,b)
  %6339 = fsub fast float %6337, %6338
  %6340 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6341 = fcmp fast ogt float %6340, 0.000000e+00
  br i1 %6341, label %6342, label %6383, !dx.controlflow.hints !160

; <label>:6342                                    ; preds = %6283
  %6343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %62, float %6316, float %6317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6344 = extractvalue %dx.types.ResRet.f32 %6343, 1
  %6345 = fcmp fast ogt float %6344, 0.000000e+00
  br i1 %6345, label %6346, label %6378

; <label>:6346                                    ; preds = %6342
  %6347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %62, float %6316, float %6317, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6348 = extractvalue %dx.types.ResRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.ResRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.ResRet.f32 %6347, 2
  %6351 = extractvalue %dx.types.ResRet.f32 %6347, 3
  %6352 = fsub fast float 1.000000e+00, %6298
  %6353 = fsub fast float %6352, %6309
  %6354 = fmul fast float %6353, 0x400921FB60000000
  %6355 = fadd fast float %6354, 0x3FF921FB60000000
  %6356 = call float @dx.op.unary.f32(i32 13, float %6355)  ; Sin(value)
  %6357 = fadd fast float %6356, -1.000000e+00
  %6358 = fmul fast float %6357, 0x3FD45F3060000000
  %6359 = fmul fast float %6353, 0x401921FB60000000
  %6360 = fadd fast float %6359, 0x400921FB60000000
  %6361 = call float @dx.op.unary.f32(i32 13, float %6360)  ; Sin(value)
  %6362 = fadd fast float %6361, 0x3E7777A5C0000000
  %6363 = fmul fast float %6362, 0x3FC45F3060000000
  %6364 = fmul fast float %6353, 0x4022D97C80000000
  %6365 = fadd fast float %6364, 0x4012D97C80000000
  %6366 = call float @dx.op.unary.f32(i32 13, float %6365)  ; Sin(value)
  %6367 = fadd fast float %6366, 1.000000e+00
  %6368 = fmul fast float %6367, 0x3FBB2995E0000000
  %6369 = fmul fast float %6353, 0x402921FB60000000
  %6370 = fadd fast float %6369, 0x401921FB60000000
  %6371 = call float @dx.op.unary.f32(i32 13, float %6370)  ; Sin(value)
  %6372 = fadd fast float %6371, 0xBE8777A5C0000000
  %6373 = fmul fast float %6372, 0x3FB45F3060000000
  %6374 = call float @dx.op.dot4.f32(i32 56, float %6348, float %6349, float %6350, float %6351, float %6358, float %6363, float %6368, float %6373)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %6375 = fmul fast float %6374, 0xBFF7154760000000
  %6376 = call float @dx.op.unary.f32(i32 21, float %6375)  ; Exp(value)
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  br label %6378

; <label>:6378                                    ; preds = %6346, %6342
  %6379 = phi float [ %6377, %6346 ], [ 1.000000e+00, %6342 ]
  %6380 = fadd fast float %6379, -1.000000e+00
  %6381 = fmul fast float %6380, %6340
  %6382 = fadd fast float %6381, 1.000000e+00
  br label %6383

; <label>:6383                                    ; preds = %6378, %6283
  %6384 = phi float [ %6382, %6378 ], [ 1.000000e+00, %6283 ]
  %6385 = fmul fast float %6384, %6279
  %6386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6387 = extractvalue %dx.types.CBufRet.f32 %6386, 0
  %6388 = extractvalue %dx.types.CBufRet.f32 %6386, 1
  %6389 = extractvalue %dx.types.CBufRet.f32 %6386, 2
  %6390 = fadd fast float %6387, %154
  %6391 = fadd fast float %6388, %155
  %6392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 422)  ; CBufferLoadLegacy(handle,regIndex)
  %6393 = extractvalue %dx.types.CBufRet.f32 %6392, 1
  %6394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6395 = extractvalue %dx.types.CBufRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.CBufRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.CBufRet.f32 %6394, 2
  %6398 = fsub fast float -0.000000e+00, %6390
  %6399 = fsub fast float -0.000000e+00, %6391
  %6400 = fsub fast float %1886, %6389
  %6401 = fadd fast float %6400, %6393
  %6402 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6398, float %6399, float %6401)  ; Dot3(ax,ay,az,bx,by,bz)
  %6403 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6395, float %6396, float %6397)  ; Dot3(ax,ay,az,bx,by,bz)
  %6404 = fdiv fast float 1.000000e+00, %6403
  %6405 = fmul fast float %6404, %6402
  %6406 = fmul fast float %6395, %6405
  %6407 = fmul fast float %6396, %6405
  %6408 = fadd fast float %6406, %6390
  %6409 = fadd fast float %6407, %6391
  %6410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 426)  ; CBufferLoadLegacy(handle,regIndex)
  %6411 = extractvalue %dx.types.CBufRet.f32 %6410, 0
  %6412 = extractvalue %dx.types.CBufRet.f32 %6410, 1
  %6413 = fsub fast float %6408, %6411
  %6414 = fsub fast float %6409, %6412
  %6415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 421)  ; CBufferLoadLegacy(handle,regIndex)
  %6416 = extractvalue %dx.types.CBufRet.f32 %6415, 2
  %6417 = extractvalue %dx.types.CBufRet.f32 %6415, 3
  %6418 = fmul fast float %6413, %6416
  %6419 = fmul fast float %6414, %6417
  %6420 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %6421 = extractvalue %dx.types.CBufRet.i32 %6420, 3
  %6422 = icmp eq i32 %6421, 0
  br i1 %6422, label %6428, label %6423

; <label>:6423                                    ; preds = %6383
  %6424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %61, float %6418, float %6419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6425 = extractvalue %dx.types.ResRet.f32 %6424, 0
  %6426 = extractvalue %dx.types.ResRet.f32 %6424, 1
  %6427 = extractvalue %dx.types.ResRet.f32 %6424, 2
  br label %6433

; <label>:6428                                    ; preds = %6383
  %6429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %62, float %6418, float %6419, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6430 = extractvalue %dx.types.ResRet.f32 %6429, 0
  %6431 = extractvalue %dx.types.ResRet.f32 %6429, 1
  %6432 = extractvalue %dx.types.ResRet.f32 %6429, 2
  br label %6433

; <label>:6433                                    ; preds = %6428, %6423
  %6434 = phi float [ %6425, %6423 ], [ %6430, %6428 ]
  %6435 = phi float [ %6426, %6423 ], [ %6431, %6428 ]
  %6436 = phi float [ %6427, %6423 ], [ %6432, %6428 ]
  %6437 = extractvalue %dx.types.CBufRet.f32 %6392, 2
  %6438 = fmul fast float %6437, %6434
  %6439 = extractvalue %dx.types.CBufRet.f32 %6392, 0
  %6440 = fsub fast float %6405, %6439
  %6441 = fsub fast float %6440, %6438
  %6442 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6441)  ; FMax(a,b)
  %6443 = fmul fast float %6442, %6435
  %6444 = call float @dx.op.binary.f32(i32 36, float %6436, float %6443)  ; FMin(a,b)
  %6445 = fmul fast float %6444, 0xBFF7154760000000
  %6446 = call float @dx.op.unary.f32(i32 21, float %6445)  ; Exp(value)
  %6447 = fmul fast float %6385, %6446
  br label %6448

; <label>:6448                                    ; preds = %6433, %6278
  %6449 = phi float [ %6447, %6433 ], [ %6279, %6278 ]
  %6450 = call float @dx.op.binary.f32(i32 36, float %6449, float %6449)  ; FMin(a,b)
  %6451 = call float @dx.op.binary.f32(i32 36, float %6449, float %6450)  ; FMin(a,b)
  %6452 = fcmp fast ogt float %6451, 0.000000e+00
  br i1 %6452, label %6453, label %6626, !dx.controlflow.hints !161

; <label>:6453                                    ; preds = %6448
  %6454 = fmul fast float %6449, %4813
  %6455 = fmul fast float %6449, %4814
  %6456 = fmul fast float %6449, %4815
  %6457 = fsub fast float %4802, %1742
  %6458 = fsub fast float %4803, %1743
  %6459 = fsub fast float %4804, %1744
  %6460 = call float @dx.op.dot3.f32(i32 55, float %6457, float %6458, float %6459, float %6457, float %6458, float %6459)  ; Dot3(ax,ay,az,bx,by,bz)
  %6461 = call float @dx.op.unary.f32(i32 25, float %6460)  ; Rsqrt(value)
  %6462 = fmul fast float %6461, %6457
  %6463 = fmul fast float %6461, %6458
  %6464 = fmul fast float %6461, %6459
  %6465 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %6466 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %6462, float %6463, float %6464)  ; Dot3(ax,ay,az,bx,by,bz)
  %6467 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  %6468 = fmul fast float %6467, %6467
  %6469 = fmul fast float %6468, %1928
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = bitcast float %6472 to i32
  %6474 = lshr i32 %6473, 8
  %6475 = and i32 %6474, 255
  %6476 = uitofp i32 %6475 to float
  %6477 = fptoui float %6476 to i32
  %6478 = and i32 %6477, 8
  %6479 = icmp ne i32 %6478, 0
  %6480 = select i1 %6479, float %6470, float 1.000000e+00
  %6481 = fmul fast float %6480, %6467
  %6482 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1716, float %6462, float %6463, float %6464)  ; Dot3(ax,ay,az,bx,by,bz)
  %6483 = fmul fast float %6482, %6482
  %6484 = call float @dx.op.unary.f32(i32 6, float %6465)  ; FAbs(value)
  %6485 = fsub fast float 1.000000e+00, %1919
  %6486 = fmul fast float %1892, %1892
  %6487 = fmul fast float %6486, %6485
  %6488 = fadd fast float %6487, %1919
  %6489 = bitcast float %6488 to i32
  %6490 = ashr i32 %6489, 1
  %6491 = add nsw i32 %6490, 532487669
  %6492 = bitcast i32 %6491 to float
  %6493 = fadd fast float %6492, %1892
  %6494 = fmul fast float %1919, %6483
  %6495 = fsub fast float 1.000000e+00, %6483
  %6496 = fadd fast float %6495, %6494
  %6497 = fmul fast float %6484, %6484
  %6498 = fmul fast float %6497, %6485
  %6499 = fadd fast float %6498, %1919
  %6500 = bitcast float %6499 to i32
  %6501 = ashr i32 %6500, 1
  %6502 = add nsw i32 %6501, 532487669
  %6503 = bitcast i32 %6502 to float
  %6504 = fadd fast float %6503, %6484
  %6505 = fmul fast float %6496, %6496
  %6506 = fmul fast float %6505, %6493
  %6507 = fmul fast float %6506, %6504
  %6508 = fdiv fast float 0x3FF0A00000000000, %6507
  %6509 = fmul fast float %6508, %1919
  %6510 = call float @dx.op.unary.f32(i32 6, float %6466)  ; FAbs(value)
  %6511 = fsub fast float 1.000000e+00, %6510
  %6512 = bitcast float %6511 to i32
  %6513 = sitofp i32 %6512 to float
  %6514 = fmul fast float %6513, 5.000000e+00
  %6515 = fadd fast float %6514, 0xC1EFBF8940000000
  %6516 = fptosi float %6515 to i32
  %6517 = bitcast i32 %6516 to float
  %6518 = fmul fast float %6517, %1794
  %6519 = fmul fast float %6517, %1795
  %6520 = fmul fast float %6517, %2993
  %6521 = fadd fast float %6518, %1735
  %6522 = fadd fast float %6519, %1736
  %6523 = fadd fast float %6520, %1890
  %6524 = fmul fast float %6465, 9.843750e-01
  %6525 = fmul fast float %1843, 9.843750e-01
  %6526 = fadd fast float %6524, 7.812500e-03
  %6527 = fadd fast float %6525, 7.812500e-03
  %6528 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %62, float %6526, float %6527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6529 = extractvalue %dx.types.ResRet.f32 %6528, 2
  %6530 = extractvalue %dx.types.ResRet.f32 %6528, 3
  %6531 = fmul fast float %6529, %1735
  %6532 = fmul fast float %6529, %1736
  %6533 = fmul fast float %6529, %1890
  %6534 = fadd fast float %6531, %6530
  %6535 = fadd fast float %6532, %6530
  %6536 = fadd fast float %6533, %6530
  %6537 = call float @dx.op.binary.f32(i32 35, float %6535, float %6536)  ; FMax(a,b)
  %6538 = call float @dx.op.binary.f32(i32 35, float %6534, float %6537)  ; FMax(a,b)
  %6539 = fsub fast float 1.000000e+00, %6538
  %6540 = fsub fast float -0.000000e+00, %1714
  %6541 = fsub fast float -0.000000e+00, %1715
  %6542 = fsub fast float -0.000000e+00, %1716
  %6543 = call float @dx.op.dot3.f32(i32 55, float %4802, float %4803, float %4804, float %6540, float %6541, float %6542)  ; Dot3(ax,ay,az,bx,by,bz)
  %6544 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6545 = fmul fast float %6544, 9.843750e-01
  %6546 = fadd fast float %6545, 7.812500e-03
  %6547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %62, float %6546, float %6527, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6548 = extractvalue %dx.types.ResRet.f32 %6547, 2
  %6549 = extractvalue %dx.types.ResRet.f32 %6547, 3
  %6550 = fmul fast float %6548, %1735
  %6551 = fmul fast float %6548, %1736
  %6552 = fmul fast float %6548, %1890
  %6553 = fadd fast float %6550, %6549
  %6554 = fadd fast float %6551, %6549
  %6555 = fadd fast float %6552, %6549
  %6556 = call float @dx.op.binary.f32(i32 35, float %6554, float %6555)  ; FMax(a,b)
  %6557 = call float @dx.op.binary.f32(i32 35, float %6553, float %6556)  ; FMax(a,b)
  %6558 = fsub fast float 1.000000e+00, %6557
  %6559 = fmul fast float %1736, 0x4012D0A400000000
  %6560 = fadd fast float %6559, 0x3FDB6377A0000000
  %6561 = fmul fast float %1916, %6560
  %6562 = call float @dx.op.unary.f32(i32 7, float %6561)  ; Saturate(value)
  %6563 = fsub fast float %4802, %1897
  %6564 = fsub fast float %4803, %1898
  %6565 = fsub fast float %4804, %1899
  %6566 = call float @dx.op.dot3.f32(i32 55, float %6563, float %6564, float %6565, float %6563, float %6564, float %6565)  ; Dot3(ax,ay,az,bx,by,bz)
  %6567 = call float @dx.op.unary.f32(i32 25, float %6566)  ; Rsqrt(value)
  %6568 = fmul fast float %6567, %6563
  %6569 = fmul fast float %6567, %6564
  %6570 = fmul fast float %6567, %6565
  %6571 = call float @dx.op.dot3.f32(i32 55, float %6540, float %6541, float %6542, float %6568, float %6569, float %6570)  ; Dot3(ax,ay,az,bx,by,bz)
  %6572 = fmul fast float %6571, %6571
  %6573 = call float @dx.op.unary.f32(i32 6, float %6544)  ; FAbs(value)
  %6574 = call float @dx.op.binary.f32(i32 35, float %6562, float 0x3F847AE140000000)  ; FMax(a,b)
  %6575 = fmul fast float %6574, %6574
  %6576 = fmul fast float %6575, %6575
  %6577 = fsub fast float 1.000000e+00, %6576
  %6578 = fmul fast float %6486, %6577
  %6579 = fadd fast float %6578, %6576
  %6580 = bitcast float %6579 to i32
  %6581 = ashr i32 %6580, 1
  %6582 = add nsw i32 %6581, 532487669
  %6583 = bitcast i32 %6582 to float
  %6584 = fadd fast float %6583, %1892
  %6585 = fmul fast float %6576, %6572
  %6586 = fsub fast float 1.000000e+00, %6572
  %6587 = fadd fast float %6586, %6585
  %6588 = fmul fast float %6573, %6573
  %6589 = fmul fast float %6588, %6577
  %6590 = fadd fast float %6589, %6576
  %6591 = bitcast float %6590 to i32
  %6592 = ashr i32 %6591, 1
  %6593 = add nsw i32 %6592, 532487669
  %6594 = bitcast i32 %6593 to float
  %6595 = fadd fast float %6594, %6573
  %6596 = fmul fast float %6587, %6587
  %6597 = fmul fast float %6596, %6584
  %6598 = fmul fast float %6597, %6595
  %6599 = fdiv fast float 0x3FF0A00000000000, %6598
  %6600 = fmul fast float %6599, %6576
  %6601 = fmul fast float %6558, %6544
  %6602 = fmul fast float %6601, %6600
  %6603 = fmul fast float %6539, %6481
  %6604 = fmul fast float %6481, %6509
  %6605 = fmul fast float %6604, %6521
  %6606 = fmul fast float %6604, %6522
  %6607 = fmul fast float %6604, %6523
  %6608 = fadd fast float %6602, %6605
  %6609 = fadd fast float %6602, %6606
  %6610 = fadd fast float %6602, %6607
  %6611 = fmul fast float %6603, %6454
  %6612 = fmul fast float %6603, %6455
  %6613 = fmul fast float %6603, %6456
  %6614 = fadd fast float %6611, %4789
  %6615 = fadd fast float %6612, %4790
  %6616 = fadd fast float %6613, %4791
  %6617 = fmul fast float %6608, %6454
  %6618 = fmul fast float %6609, %6455
  %6619 = fmul fast float %6610, %6456
  %6620 = fadd fast float %6617, %4795
  %6621 = fadd fast float %6618, %4796
  %6622 = fadd fast float %6619, %4797
  %6623 = fadd fast float %6617, %4792
  %6624 = fadd fast float %6618, %4793
  %6625 = fadd fast float %6619, %4794
  br label %6626

; <label>:6626                                    ; preds = %6453, %6448, %4783
  %6627 = phi i32 [ %4965, %6453 ], [ %4785, %4783 ], [ %4965, %6448 ]
  %6628 = phi i32 [ 1, %6453 ], [ 0, %4783 ], [ 0, %6448 ]
  %6629 = phi float [ %6617, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6630 = phi float [ %6618, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6631 = phi float [ %6619, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6632 = phi float [ %6611, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6633 = phi float [ %6612, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6634 = phi float [ %6613, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6635 = phi float [ %6623, %6453 ], [ %4792, %4783 ], [ %4792, %6448 ]
  %6636 = phi float [ %6624, %6453 ], [ %4793, %4783 ], [ %4793, %6448 ]
  %6637 = phi float [ %6625, %6453 ], [ %4794, %4783 ], [ %4794, %6448 ]
  %6638 = phi float [ %6614, %6453 ], [ %4789, %4783 ], [ %4789, %6448 ]
  %6639 = phi float [ %6615, %6453 ], [ %4790, %4783 ], [ %4790, %6448 ]
  %6640 = phi float [ %6616, %6453 ], [ %4791, %4783 ], [ %4791, %6448 ]
  %6641 = phi float [ %6449, %6453 ], [ 0.000000e+00, %4783 ], [ 0.000000e+00, %6448 ]
  %6642 = phi float [ %6620, %6453 ], [ %4795, %4783 ], [ %4795, %6448 ]
  %6643 = phi float [ %6621, %6453 ], [ %4796, %4783 ], [ %4796, %6448 ]
  %6644 = phi float [ %6622, %6453 ], [ %4797, %4783 ], [ %4797, %6448 ]
  %6645 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6646 = extractvalue %dx.types.CBufRet.i32 %6645, 0
  %6647 = icmp eq i32 %6646, 0
  br i1 %6647, label %7646, label %6648

; <label>:6648                                    ; preds = %6626
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 2
  %6651 = extractvalue %dx.types.CBufRet.f32 %6649, 3
  %6652 = fmul fast float %6650, %99
  %6653 = fmul fast float %6651, %100
  %6654 = fptoui float %6652 to i32
  %6655 = fptoui float %6653 to i32
  %6656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %6657 = extractvalue %dx.types.CBufRet.f32 %6656, 0
  %6658 = extractvalue %dx.types.CBufRet.f32 %6656, 2
  %6659 = extractvalue %dx.types.CBufRet.f32 %6656, 3
  %6660 = fadd fast float %88, -4.000000e+00
  %6661 = call float @dx.op.binary.f32(i32 35, float %6660, float 0.000000e+00)  ; FMax(a,b)
  %6662 = fadd fast float %6661, %6657
  %6663 = fmul fast float %6662, %6658
  %6664 = call float @dx.op.unary.f32(i32 23, float %6663)  ; Log(value)
  %6665 = fmul fast float %6664, %6659
  %6666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6667 = extractvalue %dx.types.CBufRet.f32 %6666, 2
  %6668 = fmul fast float %6665, %6667
  %6669 = call float @dx.op.unary.f32(i32 7, float %6668)  ; Saturate(value)
  %6670 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %6671 = extractvalue %dx.types.CBufRet.i32 %6670, 1
  %6672 = add i32 %6671, -1
  %6673 = uitofp i32 %6671 to float
  %6674 = fmul fast float %6673, %6669
  %6675 = fptoui float %6674 to i32
  %6676 = call i32 @dx.op.binary.i32(i32 40, i32 %6675, i32 %6672)  ; UMin(a,b)
  %6677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6678 = extractvalue %dx.types.CBufRet.i32 %6677, 2
  %6679 = extractvalue %dx.types.CBufRet.i32 %6677, 3
  %6680 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6655, i32 %6678, i32 %6654)  ; UMad(a,b,c)
  %6681 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6676, i32 %6679, i32 %6680)  ; UMad(a,b,c)
  %6682 = add nsw i32 %6646, -1
  %6683 = call i32 @dx.op.binary.i32(i32 37, i32 %6682, i32 0)  ; IMax(a,b)
  %6684 = call float @dx.op.binary.f32(i32 35, float %88, float 0.000000e+00)  ; FMax(a,b)
  %6685 = fptoui float %6684 to i32
  %6686 = lshr i32 %6685, 5
  %6687 = call i32 @dx.op.binary.i32(i32 40, i32 %6686, i32 8191)  ; UMin(a,b)
  %6688 = shl i32 %6687, 2
  %6689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %6688, i32 undef)  ; BufferLoad(srv,index,wot)
  %6690 = extractvalue %dx.types.ResRet.i32 %6689, 0
  %6691 = lshr i32 %6690, 16
  %6692 = and i32 %6690, 65535
  %6693 = lshr i32 %6690, 21
  %6694 = lshr i32 %6692, 5
  %6695 = call i32 @dx.op.binary.i32(i32 40, i32 %6694, i32 %6683)  ; UMin(a,b)
  %6696 = icmp ugt i32 %6693, %6695
  br i1 %6696, label %7579, label %6697

; <label>:6697                                    ; preds = %6648
  br label %6698

; <label>:6698                                    ; preds = %7548, %6697
  %6699 = phi i32 [ %7549, %7548 ], [ %6627, %6697 ]
  %6700 = phi i32 [ %7550, %7548 ], [ 0, %6697 ]
  %6701 = phi i32 [ %7551, %7548 ], [ 0, %6697 ]
  %6702 = phi i32 [ %7552, %7548 ], [ 0, %6697 ]
  %6703 = phi i32 [ %7553, %7548 ], [ 0, %6697 ]
  %6704 = phi i32 [ %7554, %7548 ], [ 0, %6697 ]
  %6705 = phi i32 [ %7555, %7548 ], [ 0, %6697 ]
  %6706 = phi i32 [ %7556, %7548 ], [ 0, %6697 ]
  %6707 = phi i32 [ %7557, %7548 ], [ 0, %6697 ]
  %6708 = phi i32 [ %7576, %7548 ], [ %6693, %6697 ]
  %6709 = phi float [ %7558, %7548 ], [ %6629, %6697 ]
  %6710 = phi float [ %7559, %7548 ], [ %6630, %6697 ]
  %6711 = phi float [ %7560, %7548 ], [ %6631, %6697 ]
  %6712 = phi float [ %7561, %7548 ], [ %6632, %6697 ]
  %6713 = phi float [ %7562, %7548 ], [ %6633, %6697 ]
  %6714 = phi float [ %7563, %7548 ], [ %6634, %6697 ]
  %6715 = phi float [ %7564, %7548 ], [ %6635, %6697 ]
  %6716 = phi float [ %7565, %7548 ], [ %6636, %6697 ]
  %6717 = phi float [ %7566, %7548 ], [ %6637, %6697 ]
  %6718 = phi float [ %7567, %7548 ], [ %6638, %6697 ]
  %6719 = phi float [ %7568, %7548 ], [ %6639, %6697 ]
  %6720 = phi float [ %7569, %7548 ], [ %6640, %6697 ]
  %6721 = phi float [ %7570, %7548 ], [ %6642, %6697 ]
  %6722 = phi float [ %7571, %7548 ], [ %6643, %6697 ]
  %6723 = phi float [ %7572, %7548 ], [ %6644, %6697 ]
  %6724 = phi float [ %7573, %7548 ], [ %6638, %6697 ]
  %6725 = phi float [ %7574, %7548 ], [ %6639, %6697 ]
  %6726 = phi float [ %7575, %7548 ], [ %6640, %6697 ]
  %6727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6728 = extractvalue %dx.types.CBufRet.i32 %6727, 0
  %6729 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6681, i32 %6728, i32 %6708)  ; UMad(a,b,c)
  %6730 = shl i32 %6729, 2
  %6731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %6730, i32 undef)  ; BufferLoad(srv,index,wot)
  %6732 = extractvalue %dx.types.ResRet.i32 %6731, 0
  %6733 = shl i32 %6708, 5
  %6734 = sub nsw i32 %6691, %6733
  %6735 = call i32 @dx.op.binary.i32(i32 37, i32 %6734, i32 0)  ; IMax(a,b)
  %6736 = call i32 @dx.op.binary.i32(i32 38, i32 %6735, i32 31)  ; IMin(a,b)
  %6737 = sub nsw i32 1, %6691
  %6738 = add nsw i32 %6737, %6692
  %6739 = call i32 @dx.op.binary.i32(i32 37, i32 %6738, i32 0)  ; IMax(a,b)
  %6740 = call i32 @dx.op.binary.i32(i32 38, i32 %6739, i32 32)  ; IMin(a,b)
  %6741 = and i32 %6740, 31
  %6742 = shl i32 -1, %6741
  %6743 = xor i32 %6742, -1
  %6744 = and i32 %6736, 31
  %6745 = shl i32 %6743, %6744
  %6746 = icmp eq i32 %6740, 32
  %6747 = select i1 %6746, i32 -1, i32 %6745
  %6748 = and i32 %6747, %6732
  %6749 = icmp eq i32 %6748, 0
  br i1 %6749, label %7548, label %6750

; <label>:6750                                    ; preds = %6698
  br label %6751

; <label>:6751                                    ; preds = %6946, %6750
  %6752 = phi i32 [ %6947, %6946 ], [ %6699, %6750 ]
  %6753 = phi i32 [ %6936, %6946 ], [ %6700, %6750 ]
  %6754 = phi i32 [ %6938, %6946 ], [ %6701, %6750 ]
  %6755 = phi i32 [ %6940, %6946 ], [ %6702, %6750 ]
  %6756 = phi i32 [ %6942, %6946 ], [ %6703, %6750 ]
  %6757 = phi i32 [ %6948, %6946 ], [ %6704, %6750 ]
  %6758 = phi i32 [ %6949, %6946 ], [ %6705, %6750 ]
  %6759 = phi i32 [ %6950, %6946 ], [ %6706, %6750 ]
  %6760 = phi i32 [ %6951, %6946 ], [ %6707, %6750 ]
  %6761 = phi i32 [ %6784, %6946 ], [ %6748, %6750 ]
  %6762 = phi float [ %6952, %6946 ], [ %6709, %6750 ]
  %6763 = phi float [ %6953, %6946 ], [ %6710, %6750 ]
  %6764 = phi float [ %6954, %6946 ], [ %6711, %6750 ]
  %6765 = phi float [ %6955, %6946 ], [ %6712, %6750 ]
  %6766 = phi float [ %6956, %6946 ], [ %6713, %6750 ]
  %6767 = phi float [ %6957, %6946 ], [ %6714, %6750 ]
  %6768 = phi float [ %6958, %6946 ], [ %6715, %6750 ]
  %6769 = phi float [ %6959, %6946 ], [ %6716, %6750 ]
  %6770 = phi float [ %6960, %6946 ], [ %6717, %6750 ]
  %6771 = phi float [ %6961, %6946 ], [ %6718, %6750 ]
  %6772 = phi float [ %6962, %6946 ], [ %6719, %6750 ]
  %6773 = phi float [ %6963, %6946 ], [ %6720, %6750 ]
  %6774 = phi float [ %6964, %6946 ], [ %6721, %6750 ]
  %6775 = phi float [ %6965, %6946 ], [ %6722, %6750 ]
  %6776 = phi float [ %6966, %6946 ], [ %6723, %6750 ]
  %6777 = phi float [ %6967, %6946 ], [ %6724, %6750 ]
  %6778 = phi float [ %6968, %6946 ], [ %6725, %6750 ]
  %6779 = phi float [ %6969, %6946 ], [ %6726, %6750 ]
  %6780 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6761)  ; FirstbitLo(value)
  %6781 = add i32 %6780, %6733
  %6782 = and i32 %6780, 31
  %6783 = shl i32 1, %6782
  %6784 = xor i32 %6783, %6761
  %6785 = mul i32 %6781, 112
  %6786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6785, i32 undef)  ; BufferLoad(srv,index,wot)
  %6787 = extractvalue %dx.types.ResRet.f32 %6786, 0
  %6788 = extractvalue %dx.types.ResRet.f32 %6786, 1
  %6789 = extractvalue %dx.types.ResRet.f32 %6786, 2
  %6790 = or i32 %6785, 12
  %6791 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6790, i32 undef)  ; BufferLoad(srv,index,wot)
  %6792 = extractvalue %dx.types.ResRet.f32 %6791, 0
  %6793 = add i32 %6785, 16
  %6794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6793, i32 undef)  ; BufferLoad(srv,index,wot)
  %6795 = extractvalue %dx.types.ResRet.f32 %6794, 0
  %6796 = extractvalue %dx.types.ResRet.f32 %6794, 1
  %6797 = extractvalue %dx.types.ResRet.f32 %6794, 2
  %6798 = add i32 %6785, 28
  %6799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6798, i32 undef)  ; BufferLoad(srv,index,wot)
  %6800 = extractvalue %dx.types.ResRet.i32 %6799, 0
  %6801 = add i32 %6785, 32
  %6802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6801, i32 undef)  ; BufferLoad(srv,index,wot)
  %6803 = extractvalue %dx.types.ResRet.f32 %6802, 0
  %6804 = extractvalue %dx.types.ResRet.f32 %6802, 1
  %6805 = extractvalue %dx.types.ResRet.f32 %6802, 2
  %6806 = add i32 %6785, 44
  %6807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6806, i32 undef)  ; BufferLoad(srv,index,wot)
  %6808 = extractvalue %dx.types.ResRet.f32 %6807, 0
  %6809 = add i32 %6785, 48
  %6810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6809, i32 undef)  ; BufferLoad(srv,index,wot)
  %6811 = extractvalue %dx.types.ResRet.f32 %6810, 0
  %6812 = extractvalue %dx.types.ResRet.f32 %6810, 1
  %6813 = extractvalue %dx.types.ResRet.f32 %6810, 2
  %6814 = extractvalue %dx.types.ResRet.f32 %6810, 3
  %6815 = add i32 %6785, 64
  %6816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6815, i32 undef)  ; BufferLoad(srv,index,wot)
  %6817 = extractvalue %dx.types.ResRet.f32 %6816, 0
  %6818 = extractvalue %dx.types.ResRet.f32 %6816, 1
  %6819 = extractvalue %dx.types.ResRet.f32 %6816, 2
  %6820 = extractvalue %dx.types.ResRet.f32 %6816, 3
  %6821 = add i32 %6785, 80
  %6822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %6821, i32 undef)  ; BufferLoad(srv,index,wot)
  %6823 = extractvalue %dx.types.ResRet.f32 %6822, 1
  %6824 = extractvalue %dx.types.ResRet.f32 %6822, 2
  %6825 = add i32 %6785, 92
  %6826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %27, i32 %6825, i32 undef)  ; BufferLoad(srv,index,wot)
  %6827 = extractvalue %dx.types.ResRet.i32 %6826, 0
  %6828 = call float @dx.op.dot3.f32(i32 55, float %6787, float %6788, float %6789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6829 = select i1 %1885, float %6823, float %6787
  %6830 = select i1 %1885, float %6828, float %6788
  %6831 = select i1 %1885, float %6824, float %6789
  %6832 = and i32 %6827, 65535
  %6833 = uitofp i32 %6832 to float
  %6834 = lshr i32 %6827, 16
  %6835 = uitofp i32 %6834 to float
  %6836 = and i32 %6800, 65535
  %6837 = lshr i32 %6800, 24
  %6838 = and i32 %6837, 3
  %6839 = and i32 %6800, 536870912
  %6840 = icmp ne i32 %6839, 0
  %6841 = icmp slt i32 %6800, 0
  %6842 = icmp eq i32 %6838, 2
  %6843 = call float @dx.op.dot3.f32(i32 55, float %6803, float %6804, float %6805, float %6803, float %6804, float %6805)  ; Dot3(ax,ay,az,bx,by,bz)
  %6844 = fsub fast float %154, %6811
  %6845 = fsub fast float %155, %6812
  %6846 = fsub fast float %156, %6813
  %6847 = call float @dx.op.dot3.f32(i32 55, float %6844, float %6845, float %6846, float %6803, float %6804, float %6805)  ; Dot3(ax,ay,az,bx,by,bz)
  %6848 = fdiv fast float %6847, %6843
  %6849 = call float @dx.op.binary.f32(i32 35, float %6848, float -1.000000e+00)  ; FMax(a,b)
  %6850 = call float @dx.op.binary.f32(i32 36, float %6849, float 1.000000e+00)  ; FMin(a,b)
  %6851 = fmul fast float %6850, %6803
  %6852 = fmul fast float %6850, %6804
  %6853 = fmul fast float %6850, %6805
  %6854 = fadd fast float %6851, %6811
  %6855 = fadd fast float %6852, %6812
  %6856 = fadd fast float %6853, %6813
  %6857 = fsub fast float %6854, %154
  %6858 = fsub fast float %6855, %155
  %6859 = fsub fast float %6856, %156
  %6860 = call float @dx.op.dot3.f32(i32 55, float %6857, float %6858, float %6859, float %6857, float %6858, float %6859)  ; Dot3(ax,ay,az,bx,by,bz)
  %6861 = call float @dx.op.unary.f32(i32 24, float %6860)  ; Sqrt(value)
  %6862 = fdiv fast float 1.000000e+00, %6861
  %6863 = fmul fast float %6857, %6862
  %6864 = fmul fast float %6858, %6862
  %6865 = fmul fast float %6859, %6862
  %6866 = fadd fast float %6861, %6792
  %6867 = fdiv fast float 1.000000e+00, %6866
  %6868 = fmul float %6808, %6867
  %6869 = fmul float %6868, %6868
  %6870 = call float @dx.op.unary.f32(i32 7, float %6869)  ; Saturate(value)
  br i1 %6842, label %6871, label %6895

; <label>:6871                                    ; preds = %6751
  %6872 = fmul fast float %6819, %6795
  %6873 = fmul fast float %6819, %6796
  %6874 = fmul fast float %6819, %6797
  %6875 = fsub fast float %6872, %154
  %6876 = fadd fast float %6875, %6854
  %6877 = fsub fast float %6873, %155
  %6878 = fadd fast float %6877, %6855
  %6879 = fsub fast float %6874, %156
  %6880 = fadd fast float %6879, %6856
  %6881 = call float @dx.op.dot3.f32(i32 55, float %6876, float %6878, float %6880, float %6876, float %6878, float %6880)  ; Dot3(ax,ay,az,bx,by,bz)
  %6882 = call float @dx.op.unary.f32(i32 25, float %6881)  ; Rsqrt(value)
  %6883 = fmul fast float %6882, %6876
  %6884 = fmul fast float %6882, %6878
  %6885 = fmul fast float %6882, %6880
  %6886 = fsub fast float %154, %6854
  %6887 = fsub fast float %155, %6855
  %6888 = fsub fast float %156, %6856
  %6889 = fsub fast float -0.000000e+00, %6886
  %6890 = fsub fast float -0.000000e+00, %6887
  %6891 = fsub fast float -0.000000e+00, %6888
  %6892 = call float @dx.op.dot3.f32(i32 55, float %6889, float %6890, float %6891, float %6795, float %6796, float %6797)  ; Dot3(ax,ay,az,bx,by,bz)
  %6893 = fcmp fast ogt float %6892, 0.000000e+00
  %6894 = uitofp i1 %6893 to float
  br label %6895

; <label>:6895                                    ; preds = %6871, %6751
  %6896 = phi float [ %6894, %6871 ], [ 1.000000e+00, %6751 ]
  %6897 = phi float [ %6883, %6871 ], [ %6863, %6751 ]
  %6898 = phi float [ %6884, %6871 ], [ %6864, %6751 ]
  %6899 = phi float [ %6885, %6871 ], [ %6865, %6751 ]
  %6900 = call float @dx.op.dot3.f32(i32 55, float %6795, float %6796, float %6797, float %6897, float %6898, float %6899)  ; Dot3(ax,ay,az,bx,by,bz)
  %6901 = fmul fast float %6900, %6900
  %6902 = call float @dx.op.unary.f32(i32 7, float %6901)  ; Saturate(value)
  %6903 = fsub fast float 1.000000e+00, %6902
  %6904 = fmul fast float %6903, 5.000000e-01
  %6905 = fcmp fast ogt float %6900, 0.000000e+00
  %6906 = fsub fast float 1.000000e+00, %6904
  %6907 = select i1 %6905, float %6904, float %6906
  %6908 = fmul fast float %6907, %6835
  %6909 = fadd fast float %6908, %6833
  %6910 = fmul fast float %6909, 0x3EF0001000000000
  %6911 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %62, float %6910, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6912 = extractvalue %dx.types.ResRet.f32 %6911, 0
  %6913 = fmul fast float %6900, %6817
  %6914 = fadd fast float %6913, %6818
  %6915 = call float @dx.op.unary.f32(i32 7, float %6914)  ; Saturate(value)
  %6916 = select i1 %6842, float 1.000000e+00, float %6915
  %6917 = select i1 %6842, float %6915, float 1.000000e+00
  %6918 = fmul fast float %6861, %6814
  %6919 = fsub fast float 1.000000e+00, %6918
  %6920 = fmul fast float %6919, %6820
  %6921 = call float @dx.op.unary.f32(i32 7, float %6920)  ; Saturate(value)
  %6922 = fmul fast float %6921, %6917
  %6923 = fmul fast float %6922, 2.000000e+00
  %6924 = fsub fast float 3.000000e+00, %6923
  %6925 = fmul fast float %6912, %6896
  %6926 = fmul fast float %6922, %6922
  %6927 = fmul fast float %6926, %6925
  %6928 = fmul fast float %6927, %6924
  %6929 = xor i1 %6840, true
  %6930 = and i1 %6842, %6929
  %6931 = icmp ne i32 %6838, 2
  %6932 = and i1 %6931, %6929
  %6933 = and i1 %6840, %6842
  %6934 = and i1 %6840, %6931
  %6935 = zext i1 %6930 to i32
  %6936 = add i32 %6935, %6753
  %6937 = zext i1 %6932 to i32
  %6938 = add i32 %6937, %6754
  %6939 = zext i1 %6933 to i32
  %6940 = add i32 %6939, %6755
  %6941 = zext i1 %6934 to i32
  %6942 = add i32 %6941, %6756
  %6943 = call float @dx.op.binary.f32(i32 36, float %6928, float %6928)  ; FMin(a,b)
  %6944 = call float @dx.op.binary.f32(i32 36, float %6928, float %6943)  ; FMin(a,b)
  %6945 = fcmp fast ogt float %6944, 0.000000e+00
  br i1 %6945, label %6971, label %6946, !dx.controlflow.hints !162

; <label>:6946                                    ; preds = %7532, %6895
  %6947 = phi i32 [ %7542, %7532 ], [ %6752, %6895 ]
  %6948 = phi i32 [ %7543, %7532 ], [ %6757, %6895 ]
  %6949 = phi i32 [ %7544, %7532 ], [ %6758, %6895 ]
  %6950 = phi i32 [ %7545, %7532 ], [ %6759, %6895 ]
  %6951 = phi i32 [ %7546, %7532 ], [ %6760, %6895 ]
  %6952 = phi float [ %7503, %7532 ], [ %6762, %6895 ]
  %6953 = phi float [ %7504, %7532 ], [ %6763, %6895 ]
  %6954 = phi float [ %7505, %7532 ], [ %6764, %6895 ]
  %6955 = phi float [ %7506, %7532 ], [ %6765, %6895 ]
  %6956 = phi float [ %7507, %7532 ], [ %6766, %6895 ]
  %6957 = phi float [ %7508, %7532 ], [ %6767, %6895 ]
  %6958 = phi float [ %7509, %7532 ], [ %6768, %6895 ]
  %6959 = phi float [ %7510, %7532 ], [ %6769, %6895 ]
  %6960 = phi float [ %7511, %7532 ], [ %6770, %6895 ]
  %6961 = phi float [ %7512, %7532 ], [ %6771, %6895 ]
  %6962 = phi float [ %7513, %7532 ], [ %6772, %6895 ]
  %6963 = phi float [ %7514, %7532 ], [ %6773, %6895 ]
  %6964 = phi float [ %7515, %7532 ], [ %6774, %6895 ]
  %6965 = phi float [ %7516, %7532 ], [ %6775, %6895 ]
  %6966 = phi float [ %7517, %7532 ], [ %6776, %6895 ]
  %6967 = phi float [ %7518, %7532 ], [ %6777, %6895 ]
  %6968 = phi float [ %7519, %7532 ], [ %6778, %6895 ]
  %6969 = phi float [ %7520, %7532 ], [ %6779, %6895 ]
  %6970 = icmp eq i32 %6761, %6783
  br i1 %6970, label %7547, label %6751

; <label>:6971                                    ; preds = %6895
  %6972 = icmp eq i32 %6836, 255
  br i1 %6972, label %7110, label %6973, !dx.controlflow.hints !163

; <label>:6973                                    ; preds = %6971
  %6974 = mul nuw nsw i32 %6836, 176
  %6975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6974, i32 undef)  ; BufferLoad(srv,index,wot)
  %6976 = extractvalue %dx.types.ResRet.f32 %6975, 0
  %6977 = extractvalue %dx.types.ResRet.f32 %6975, 1
  %6978 = extractvalue %dx.types.ResRet.f32 %6975, 2
  %6979 = extractvalue %dx.types.ResRet.f32 %6975, 3
  %6980 = add nuw nsw i32 %6974, 16
  %6981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6980, i32 undef)  ; BufferLoad(srv,index,wot)
  %6982 = extractvalue %dx.types.ResRet.f32 %6981, 0
  %6983 = extractvalue %dx.types.ResRet.f32 %6981, 1
  %6984 = add nuw nsw i32 %6974, 32
  %6985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6984, i32 undef)  ; BufferLoad(srv,index,wot)
  %6986 = extractvalue %dx.types.ResRet.f32 %6985, 0
  %6987 = extractvalue %dx.types.ResRet.f32 %6985, 1
  %6988 = add nuw nsw i32 %6974, 48
  %6989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6988, i32 undef)  ; BufferLoad(srv,index,wot)
  %6990 = extractvalue %dx.types.ResRet.f32 %6989, 0
  %6991 = extractvalue %dx.types.ResRet.f32 %6989, 1
  %6992 = extractvalue %dx.types.ResRet.f32 %6989, 2
  %6993 = extractvalue %dx.types.ResRet.f32 %6989, 3
  %6994 = add nuw nsw i32 %6974, 64
  %6995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %6994, i32 undef)  ; BufferLoad(srv,index,wot)
  %6996 = extractvalue %dx.types.ResRet.f32 %6995, 0
  %6997 = extractvalue %dx.types.ResRet.f32 %6995, 1
  %6998 = extractvalue %dx.types.ResRet.f32 %6995, 2
  %6999 = extractvalue %dx.types.ResRet.f32 %6995, 3
  %7000 = add nuw nsw i32 %6974, 80
  %7001 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7000, i32 undef)  ; BufferLoad(srv,index,wot)
  %7002 = extractvalue %dx.types.ResRet.f32 %7001, 0
  %7003 = extractvalue %dx.types.ResRet.f32 %7001, 1
  %7004 = extractvalue %dx.types.ResRet.f32 %7001, 2
  %7005 = extractvalue %dx.types.ResRet.f32 %7001, 3
  %7006 = add nuw nsw i32 %6974, 96
  %7007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %26, i32 %7006, i32 undef)  ; BufferLoad(srv,index,wot)
  %7008 = extractvalue %dx.types.ResRet.f32 %7007, 0
  %7009 = extractvalue %dx.types.ResRet.f32 %7007, 1
  %7010 = extractvalue %dx.types.ResRet.f32 %7007, 2
  %7011 = extractvalue %dx.types.ResRet.f32 %7007, 3
  %7012 = bitcast float %6983 to i32
  %7013 = fmul fast float %6990, %154
  %7014 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6996, float %7013)  ; FMad(a,b,c)
  %7015 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7002, float %7014)  ; FMad(a,b,c)
  %7016 = fadd fast float %7015, %7008
  %7017 = fmul fast float %6991, %154
  %7018 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6997, float %7017)  ; FMad(a,b,c)
  %7019 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7003, float %7018)  ; FMad(a,b,c)
  %7020 = fadd fast float %7019, %7009
  %7021 = fmul fast float %6992, %154
  %7022 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6998, float %7021)  ; FMad(a,b,c)
  %7023 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7004, float %7022)  ; FMad(a,b,c)
  %7024 = fadd fast float %7023, %7010
  %7025 = fmul fast float %6993, %154
  %7026 = call float @dx.op.tertiary.f32(i32 46, float %155, float %6999, float %7025)  ; FMad(a,b,c)
  %7027 = call float @dx.op.tertiary.f32(i32 46, float %156, float %7005, float %7026)  ; FMad(a,b,c)
  %7028 = fadd fast float %7027, %7011
  %7029 = fdiv fast float %7016, %7028
  %7030 = fdiv fast float %7020, %7028
  %7031 = fdiv fast float %7024, %7028
  %7032 = call float @dx.op.binary.f32(i32 35, float 0x3F10000000000000, float %7031)  ; FMax(a,b)
  %7033 = fmul fast float %1189, 0x401921FB60000000
  %7034 = call float @dx.op.unary.f32(i32 13, float %7033)  ; Sin(value)
  %7035 = call float @dx.op.unary.f32(i32 12, float %7033)  ; Cos(value)
  %7036 = fmul fast float %7035, %6987
  %7037 = call float @dx.op.tertiary.f32(i32 46, float %7034, float %6987, float 0.000000e+00)  ; FMad(a,b,c)
  %7038 = fmul fast float %6987, %7034
  %7039 = fsub fast float -0.000000e+00, %7038
  %7040 = call float @dx.op.tertiary.f32(i32 46, float %7035, float %6987, float 0.000000e+00)  ; FMad(a,b,c)
  br label %7041

; <label>:7041                                    ; preds = %7041, %6973
  %7042 = phi float [ 0.000000e+00, %6973 ], [ %7074, %7041 ]
  %7043 = phi float [ 0.000000e+00, %6973 ], [ %7076, %7041 ]
  %7044 = phi i32 [ 0, %6973 ], [ %7077, %7041 ]
  %7045 = mul i32 %7044, 2
  %7046 = add i32 0, %7045
  %7047 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7046
  %7048 = load float, float* %7047, align 4
  %7049 = mul i32 %7044, 2
  %7050 = add i32 1, %7049
  %7051 = getelementptr [16 x float], [16 x float]* @PCF_OFFSETS_8.v.1dim, i32 0, i32 %7050
  %7052 = load float, float* %7051, align 4
  %7053 = fmul fast float %7036, %7048
  %7054 = call float @dx.op.tertiary.f32(i32 46, float %7052, float %7039, float %7053)  ; FMad(a,b,c)
  %7055 = fmul fast float %7048, %7037
  %7056 = call float @dx.op.tertiary.f32(i32 46, float %7052, float %7040, float %7055)  ; FMad(a,b,c)
  %7057 = fadd fast float %7054, %7029
  %7058 = fadd fast float %7056, %7030
  %7059 = fmul fast float %7057, %6982
  %7060 = fmul fast float %7058, %6982
  %7061 = call float @dx.op.binary.f32(i32 35, float %7059, float %6978)  ; FMax(a,b)
  %7062 = call float @dx.op.binary.f32(i32 35, float %7060, float %6978)  ; FMax(a,b)
  %7063 = call float @dx.op.binary.f32(i32 36, float %7061, float %6979)  ; FMin(a,b)
  %7064 = call float @dx.op.binary.f32(i32 36, float %7062, float %6979)  ; FMin(a,b)
  %7065 = fadd fast float %7063, %6976
  %7066 = fadd fast float %7064, %6977
  %7067 = uitofp i32 %7012 to float
  %7068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %63, float %7065, float %7066, float %7067, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7069 = extractvalue %dx.types.ResRet.f32 %7068, 0
  %7070 = fsub fast float %7069, %7032
  %7071 = fsub fast float %7070, %6986
  %7072 = fcmp fast ogt float %7071, 0.000000e+00
  %7073 = select i1 %7072, float 1.000000e+00, float 0.000000e+00
  %7074 = fadd fast float %7073, %7042
  %7075 = select i1 %7072, float %7071, float 0.000000e+00
  %7076 = fadd fast float %7075, %7043
  %7077 = add nuw nsw i32 %7044, 1
  %7078 = icmp eq i32 %7077, 8
  br i1 %7078, label %7079, label %7041

; <label>:7079                                    ; preds = %7041
  %7080 = fdiv fast float 1.000000e+00, %7074
  %7081 = fmul fast float %7080, %7076
  %7082 = fdiv fast float 1.000000e+00, %7032
  %7083 = fmul fast float %7081, %7082
  %7084 = call float @dx.op.unary.f32(i32 7, float %7083)  ; Saturate(value)
  %7085 = call float @dx.op.binary.f32(i32 35, float %7084, float 0.000000e+00)  ; FMax(a,b)
  %7086 = fmul fast float %7074, 1.250000e-01
  %7087 = call float @dx.op.unary.f32(i32 7, float %7086)  ; Saturate(value)
  %7088 = fmul fast float %7087, 2.000000e+00
  %7089 = fadd fast float %7088, -1.000000e+00
  %7090 = fcmp fast ogt float %7089, 0.000000e+00
  %7091 = fcmp fast olt float %7089, 0.000000e+00
  %7092 = zext i1 %7090 to i32
  %7093 = zext i1 %7091 to i32
  %7094 = sub nsw i32 %7092, %7093
  %7095 = sitofp i32 %7094 to float
  %7096 = fmul fast float %7095, %7089
  %7097 = fsub fast float 1.000000e+00, %7096
  %7098 = fmul fast float %7097, %7097
  %7099 = fmul fast float %7098, %7097
  %7100 = fsub fast float %7097, %7099
  %7101 = fmul fast float %7100, %7085
  %7102 = fsub fast float 1.000000e+00, %7099
  %7103 = fsub fast float %7102, %7101
  %7104 = fmul fast float %7095, 5.000000e-01
  %7105 = fmul fast float %7104, %7103
  %7106 = fsub fast float -5.000000e-01, %7105
  %7107 = fmul fast float %7106, %6916
  %7108 = fadd fast float %7107, 1.000000e+00
  %7109 = fmul fast float %7108, %6928
  br label %7110

; <label>:7110                                    ; preds = %7079, %6971
  %7111 = phi float [ %7109, %7079 ], [ %6928, %6971 ]
  %7112 = call float @dx.op.binary.f32(i32 36, float %7111, float %7111)  ; FMin(a,b)
  %7113 = call float @dx.op.binary.f32(i32 36, float %7111, float %7112)  ; FMin(a,b)
  %7114 = fcmp fast ogt float %7113, 0.000000e+00
  br i1 %7114, label %7115, label %7502, !dx.controlflow.hints !164

; <label>:7115                                    ; preds = %7110
  %7116 = fmul fast float %7111, %6829
  %7117 = fmul fast float %7111, %6830
  %7118 = fmul fast float %7111, %6831
  %7119 = fadd fast float %6863, %1714
  %7120 = fadd fast float %6864, %1715
  %7121 = fadd fast float %6865, %1716
  %7122 = call float @dx.op.dot3.f32(i32 55, float %6863, float %6864, float %6865, float %6857, float %6858, float %6859)  ; Dot3(ax,ay,az,bx,by,bz)
  %7123 = call float @dx.op.dot3.f32(i32 55, float %6863, float %6864, float %6865, float %7119, float %7120, float %7121)  ; Dot3(ax,ay,az,bx,by,bz)
  %7124 = fdiv fast float 1.000000e+00, %7123
  %7125 = fmul fast float %7124, %7122
  %7126 = fmul fast float %7125, %7119
  %7127 = fmul fast float %7125, %7120
  %7128 = fmul fast float %7125, %7121
  %7129 = fadd fast float %6844, %7126
  %7130 = fadd fast float %6845, %7127
  %7131 = fadd fast float %6846, %7128
  %7132 = call float @dx.op.dot3.f32(i32 55, float %7129, float %7130, float %7131, float %6803, float %6804, float %6805)  ; Dot3(ax,ay,az,bx,by,bz)
  %7133 = fdiv fast float %7132, %6843
  %7134 = call float @dx.op.binary.f32(i32 35, float %7133, float -1.000000e+00)  ; FMax(a,b)
  %7135 = call float @dx.op.binary.f32(i32 36, float %7134, float 1.000000e+00)  ; FMin(a,b)
  %7136 = fmul fast float %7135, %6803
  %7137 = fmul fast float %7135, %6804
  %7138 = fmul fast float %7135, %6805
  %7139 = fsub fast float %6811, %154
  %7140 = fadd fast float %7139, %7136
  %7141 = fsub fast float %6812, %155
  %7142 = fadd fast float %7141, %7137
  %7143 = fsub fast float %6813, %156
  %7144 = fadd fast float %7143, %7138
  %7145 = call float @dx.op.dot3.f32(i32 55, float %7140, float %7142, float %7144, float %7140, float %7142, float %7144)  ; Dot3(ax,ay,az,bx,by,bz)
  %7146 = call float @dx.op.unary.f32(i32 25, float %7145)  ; Rsqrt(value)
  %7147 = fmul fast float %7140, %7146
  %7148 = fmul fast float %7142, %7146
  %7149 = fmul fast float %7144, %7146
  %7150 = fsub fast float %7147, %1742
  %7151 = fsub fast float %7148, %1743
  %7152 = fsub fast float %7149, %1744
  %7153 = call float @dx.op.dot3.f32(i32 55, float %7150, float %7151, float %7152, float %7150, float %7151, float %7152)  ; Dot3(ax,ay,az,bx,by,bz)
  %7154 = call float @dx.op.unary.f32(i32 25, float %7153)  ; Rsqrt(value)
  %7155 = fmul fast float %7150, %7154
  %7156 = fmul fast float %7151, %7154
  %7157 = fmul fast float %7152, %7154
  %7158 = call float @dx.op.dot3.f32(i32 55, float %7147, float %7148, float %7149, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %7159 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %7155, float %7156, float %7157)  ; Dot3(ax,ay,az,bx,by,bz)
  %7160 = fmul fast float %7146, %6808
  %7161 = fmul fast float %7160, %7160
  %7162 = bitcast float %7161 to i32
  %7163 = ashr i32 %7162, 1
  %7164 = sub nsw i32 1597463007, %7163
  %7165 = bitcast i32 %7164 to float
  %7166 = fmul fast float %7165, %7158
  %7167 = fmul fast float %7166, %7166
  %7168 = fsub fast float 1.000000e+00, %7167
  %7169 = fmul fast float %7158, %7161
  %7170 = call float @dx.op.unary.f32(i32 7, float %7169)  ; Saturate(value)
  %7171 = fmul fast float %7166, 5.000000e-01
  %7172 = fadd fast float %7171, 5.000000e-01
  %7173 = fmul fast float %7172, %7161
  %7174 = call float @dx.op.unary.f32(i32 7, float %7173)  ; Saturate(value)
  %7175 = bitcast float %7174 to i32
  %7176 = ashr i32 %7175, 1
  %7177 = add nsw i32 %7176, 532487669
  %7178 = bitcast i32 %7177 to float
  %7179 = fmul fast float %7178, %7174
  %7180 = fcmp fast ogt float %7168, 0.000000e+00
  %7181 = select i1 %7180, float %7179, float %7170
  %7182 = call float @dx.op.unary.f32(i32 7, float %7158)  ; Saturate(value)
  %7183 = fmul fast float %7182, %7182
  %7184 = fmul fast float %7183, %1928
  %7185 = call float @dx.op.unary.f32(i32 7, float %7184)  ; Saturate(value)
  %7186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7187 = extractvalue %dx.types.CBufRet.f32 %7186, 0
  %7188 = bitcast float %7187 to i32
  %7189 = lshr i32 %7188, 8
  %7190 = and i32 %7189, 255
  %7191 = uitofp i32 %7190 to float
  %7192 = fptoui float %7191 to i32
  %7193 = and i32 %7192, 8
  %7194 = icmp ne i32 %7193, 0
  %7195 = select i1 %7194, float %7185, float 1.000000e+00
  %7196 = fmul fast float %7195, %7181
  %7197 = call float @dx.op.dot3.f32(i32 55, float %6803, float %6804, float %6805, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %7198 = call float @dx.op.dot3.f32(i32 55, float %6803, float %6804, float %6805, float %6857, float %6858, float %6859)  ; Dot3(ax,ay,az,bx,by,bz)
  %7199 = call float @dx.op.dot3.f32(i32 55, float %1897, float %1898, float %1899, float %6857, float %6858, float %6859)  ; Dot3(ax,ay,az,bx,by,bz)
  %7200 = fmul fast float %7197, %7197
  %7201 = fsub fast float %6843, %7200
  %7202 = fmul fast float %7199, %7197
  %7203 = fsub fast float %7202, %7198
  %7204 = fdiv fast float %7203, %7201
  %7205 = call float @dx.op.binary.f32(i32 35, float %7204, float -1.500000e+00)  ; FMax(a,b)
  %7206 = call float @dx.op.binary.f32(i32 36, float %7205, float 1.500000e+00)  ; FMin(a,b)
  %7207 = fmul fast float %7206, %7206
  %7208 = fmul fast float %7207, 0x3FC2F68380000000
  %7209 = fmul fast float %7208, %7206
  %7210 = fsub fast float %7206, %7209
  %7211 = fmul fast float %7210, %6803
  %7212 = fmul fast float %7210, %6804
  %7213 = fmul fast float %7210, %6805
  %7214 = fadd fast float %7211, %6854
  %7215 = fadd fast float %7212, %6855
  %7216 = fadd fast float %7213, %6856
  %7217 = fsub fast float %7214, %154
  %7218 = fsub fast float %7215, %155
  %7219 = fsub fast float %7216, %156
  %7220 = call float @dx.op.dot3.f32(i32 55, float %7217, float %7218, float %7219, float %1897, float %1898, float %1899)  ; Dot3(ax,ay,az,bx,by,bz)
  %7221 = fmul fast float %7220, %1897
  %7222 = fmul fast float %7220, %1898
  %7223 = fmul fast float %7220, %1899
  %7224 = fsub fast float %7221, %7217
  %7225 = fsub fast float %7222, %7218
  %7226 = fsub fast float %7223, %7219
  %7227 = call float @dx.op.dot3.f32(i32 55, float %7224, float %7225, float %7226, float %7224, float %7225, float %7226)  ; Dot3(ax,ay,az,bx,by,bz)
  %7228 = bitcast float %7227 to i32
  %7229 = ashr i32 %7228, 1
  %7230 = sub nsw i32 1597463007, %7229
  %7231 = bitcast i32 %7230 to float
  %7232 = fmul fast float %7231, %6808
  %7233 = call float @dx.op.dot3.f32(i32 55, float %7217, float %7218, float %7219, float %7217, float %7218, float %7219)  ; Dot3(ax,ay,az,bx,by,bz)
  %7234 = bitcast float %7233 to i32
  %7235 = ashr i32 %7234, 1
  %7236 = sub nsw i32 1597463007, %7235
  %7237 = bitcast i32 %7236 to float
  %7238 = fmul fast float %7232, %7232
  %7239 = fadd fast float %7238, 1.250000e-01
  %7240 = call float @dx.op.unary.f32(i32 25, float %7239)  ; Rsqrt(value)
  %7241 = fmul fast float %7232, %7240
  %7242 = fmul fast float %7224, %7241
  %7243 = fmul fast float %7225, %7241
  %7244 = fmul fast float %7226, %7241
  %7245 = fadd fast float %7217, %7242
  %7246 = fadd fast float %7218, %7243
  %7247 = fadd fast float %7219, %7244
  %7248 = call float @dx.op.dot3.f32(i32 55, float %7245, float %7246, float %7247, float %7245, float %7246, float %7247)  ; Dot3(ax,ay,az,bx,by,bz)
  %7249 = call float @dx.op.unary.f32(i32 25, float %7248)  ; Rsqrt(value)
  %7250 = fmul fast float %7245, %7249
  %7251 = fmul fast float %7246, %7249
  %7252 = fmul fast float %7247, %7249
  %7253 = fsub fast float %7250, %1742
  %7254 = fsub fast float %7251, %1743
  %7255 = fsub fast float %7252, %1744
  %7256 = call float @dx.op.dot3.f32(i32 55, float %7253, float %7254, float %7255, float %7253, float %7254, float %7255)  ; Dot3(ax,ay,az,bx,by,bz)
  %7257 = call float @dx.op.unary.f32(i32 25, float %7256)  ; Rsqrt(value)
  %7258 = fmul fast float %7253, %7257
  %7259 = fmul fast float %7254, %7257
  %7260 = fmul fast float %7255, %7257
  %7261 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1716, float %7258, float %7259, float %7260)  ; Dot3(ax,ay,az,bx,by,bz)
  %7262 = fmul fast float %7261, %7261
  %7263 = call float @dx.op.unary.f32(i32 6, float %7158)  ; FAbs(value)
  %7264 = fsub fast float 1.000000e+00, %1919
  %7265 = fmul fast float %1892, %1892
  %7266 = fmul fast float %7265, %7264
  %7267 = fadd fast float %7266, %1919
  %7268 = bitcast float %7267 to i32
  %7269 = ashr i32 %7268, 1
  %7270 = add nsw i32 %7269, 532487669
  %7271 = bitcast i32 %7270 to float
  %7272 = fadd fast float %7271, %1892
  %7273 = fmul fast float %1919, %7262
  %7274 = fsub fast float 1.000000e+00, %7262
  %7275 = fadd fast float %7274, %7273
  %7276 = fmul fast float %7263, %7263
  %7277 = fmul fast float %7276, %7264
  %7278 = fadd fast float %7277, %1919
  %7279 = bitcast float %7278 to i32
  %7280 = ashr i32 %7279, 1
  %7281 = add nsw i32 %7280, 532487669
  %7282 = bitcast i32 %7281 to float
  %7283 = fadd fast float %7282, %7263
  %7284 = fmul fast float %7275, %7275
  %7285 = fmul fast float %7284, %7272
  %7286 = fmul fast float %7285, %7283
  %7287 = fdiv fast float 1.000000e+00, %7286
  %7288 = bitcast float %1919 to i32
  %7289 = sitofp i32 %7288 to float
  %7290 = fmul fast float %7289, 0x3FE7F73180000000
  %7291 = fadd fast float %7290, 0x41AFE27C40000000
  %7292 = fptosi float %7291 to i32
  %7293 = bitcast i32 %7292 to float
  %7294 = fmul fast float %6808, 0x3FD80E9D60000000
  %7295 = fmul fast float %7294, %7237
  %7296 = fadd fast float %7293, %7295
  %7297 = bitcast float %7296 to i32
  %7298 = sub nsw i32 2129859010, %7297
  %7299 = bitcast i32 %7298 to float
  %7300 = fmul fast float %1919, %7287
  %7301 = fmul fast float %7300, %7293
  %7302 = fmul fast float %7301, %7299
  %7303 = call float @dx.op.unary.f32(i32 6, float %7159)  ; FAbs(value)
  %7304 = fsub fast float 1.000000e+00, %7303
  %7305 = bitcast float %7304 to i32
  %7306 = sitofp i32 %7305 to float
  %7307 = fmul fast float %7306, 5.000000e+00
  %7308 = fadd fast float %7307, 0xC1EFBF8940000000
  %7309 = fptosi float %7308 to i32
  %7310 = bitcast i32 %7309 to float
  %7311 = fmul fast float %7310, %1794
  %7312 = fmul fast float %7310, %1795
  %7313 = fmul fast float %7310, %2993
  %7314 = fadd fast float %7311, %1735
  %7315 = fadd fast float %7312, %1736
  %7316 = fadd fast float %7313, %1890
  %7317 = fmul fast float %7158, 9.843750e-01
  %7318 = fmul fast float %1843, 9.843750e-01
  %7319 = fadd fast float %7317, 7.812500e-03
  %7320 = fadd fast float %7318, 7.812500e-03
  %7321 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %62, float %7319, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7322 = extractvalue %dx.types.ResRet.f32 %7321, 2
  %7323 = extractvalue %dx.types.ResRet.f32 %7321, 3
  %7324 = fmul fast float %7322, %1735
  %7325 = fmul fast float %7322, %1736
  %7326 = fmul fast float %7322, %1890
  %7327 = fadd fast float %7324, %7323
  %7328 = fadd fast float %7325, %7323
  %7329 = fadd fast float %7326, %7323
  %7330 = call float @dx.op.binary.f32(i32 35, float %7328, float %7329)  ; FMax(a,b)
  %7331 = call float @dx.op.binary.f32(i32 35, float %7327, float %7330)  ; FMax(a,b)
  %7332 = fsub fast float 1.000000e+00, %7331
  %7333 = fsub fast float -0.000000e+00, %1714
  %7334 = fsub fast float -0.000000e+00, %1715
  %7335 = fsub fast float -0.000000e+00, %1716
  %7336 = call float @dx.op.dot3.f32(i32 55, float %6863, float %6864, float %6865, float %7333, float %7334, float %7335)  ; Dot3(ax,ay,az,bx,by,bz)
  %7337 = call float @dx.op.unary.f32(i32 7, float %7336)  ; Saturate(value)
  %7338 = fmul fast float %7337, 9.843750e-01
  %7339 = fadd fast float %7338, 7.812500e-03
  %7340 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %62, float %7339, float %7320, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7341 = extractvalue %dx.types.ResRet.f32 %7340, 2
  %7342 = extractvalue %dx.types.ResRet.f32 %7340, 3
  %7343 = fmul fast float %1736, 0x4012D0A400000000
  %7344 = fadd fast float %7343, 0x3FDB6377A0000000
  %7345 = fmul fast float %1916, %7344
  %7346 = call float @dx.op.unary.f32(i32 7, float %7345)  ; Saturate(value)
  %7347 = call float @dx.op.dot3.f32(i32 55, float %6803, float %6804, float %6805, float %1742, float %1743, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %7348 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1743, float %1744, float %6857, float %6858, float %6859)  ; Dot3(ax,ay,az,bx,by,bz)
  %7349 = fmul fast float %7347, %7347
  %7350 = fsub fast float %6843, %7349
  %7351 = fmul fast float %7348, %7347
  %7352 = fsub fast float %7351, %7198
  %7353 = fdiv fast float %7352, %7350
  %7354 = call float @dx.op.binary.f32(i32 35, float %7353, float -1.500000e+00)  ; FMax(a,b)
  %7355 = call float @dx.op.binary.f32(i32 36, float %7354, float 1.500000e+00)  ; FMin(a,b)
  %7356 = fmul fast float %7355, %7355
  %7357 = fmul fast float %7356, 0x3FC2F68380000000
  %7358 = fmul fast float %7357, %7355
  %7359 = fsub fast float %7355, %7358
  %7360 = fmul fast float %7359, %6803
  %7361 = fmul fast float %7359, %6804
  %7362 = fmul fast float %7359, %6805
  %7363 = fadd fast float %7360, %6854
  %7364 = fadd fast float %7361, %6855
  %7365 = fadd fast float %7362, %6856
  %7366 = fsub fast float %7363, %154
  %7367 = fsub fast float %7364, %155
  %7368 = fsub fast float %7365, %156
  %7369 = call float @dx.op.dot3.f32(i32 55, float %7366, float %7367, float %7368, float %1742, float %1743, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %7370 = fmul fast float %7369, %1742
  %7371 = fmul fast float %7369, %1743
  %7372 = fmul fast float %7369, %1744
  %7373 = fsub fast float %7370, %7366
  %7374 = fsub fast float %7371, %7367
  %7375 = fsub fast float %7372, %7368
  %7376 = call float @dx.op.dot3.f32(i32 55, float %7373, float %7374, float %7375, float %7373, float %7374, float %7375)  ; Dot3(ax,ay,az,bx,by,bz)
  %7377 = bitcast float %7376 to i32
  %7378 = ashr i32 %7377, 1
  %7379 = sub nsw i32 1597463007, %7378
  %7380 = bitcast i32 %7379 to float
  %7381 = fmul fast float %7380, %6808
  %7382 = fmul fast float %7381, %7381
  %7383 = fadd fast float %7382, 1.250000e-01
  %7384 = call float @dx.op.unary.f32(i32 25, float %7383)  ; Rsqrt(value)
  %7385 = fmul fast float %7381, %7384
  %7386 = fmul fast float %7373, %7385
  %7387 = fmul fast float %7374, %7385
  %7388 = fmul fast float %7375, %7385
  %7389 = fadd fast float %7366, %7386
  %7390 = fadd fast float %7367, %7387
  %7391 = fadd fast float %7368, %7388
  %7392 = call float @dx.op.dot3.f32(i32 55, float %7389, float %7390, float %7391, float %7389, float %7390, float %7391)  ; Dot3(ax,ay,az,bx,by,bz)
  %7393 = call float @dx.op.unary.f32(i32 25, float %7392)  ; Rsqrt(value)
  %7394 = fmul fast float %7389, %7393
  %7395 = fmul fast float %7390, %7393
  %7396 = fmul fast float %7391, %7393
  %7397 = fsub fast float %7394, %1897
  %7398 = fsub fast float %7395, %1898
  %7399 = fsub fast float %7396, %1899
  %7400 = call float @dx.op.dot3.f32(i32 55, float %7397, float %7398, float %7399, float %7397, float %7398, float %7399)  ; Dot3(ax,ay,az,bx,by,bz)
  %7401 = call float @dx.op.unary.f32(i32 25, float %7400)  ; Rsqrt(value)
  %7402 = fmul fast float %7397, %7401
  %7403 = fmul fast float %7398, %7401
  %7404 = fmul fast float %7399, %7401
  %7405 = call float @dx.op.dot3.f32(i32 55, float %7333, float %7334, float %7335, float %7402, float %7403, float %7404)  ; Dot3(ax,ay,az,bx,by,bz)
  %7406 = fmul fast float %7405, %7405
  %7407 = call float @dx.op.unary.f32(i32 6, float %7337)  ; FAbs(value)
  %7408 = call float @dx.op.binary.f32(i32 35, float %7346, float 0x3F847AE140000000)  ; FMax(a,b)
  %7409 = fmul fast float %7408, %7408
  %7410 = fmul fast float %7409, %7409
  %7411 = fsub fast float 1.000000e+00, %7410
  %7412 = fmul fast float %7410, %7406
  %7413 = fsub fast float 1.000000e+00, %7406
  %7414 = fadd fast float %7413, %7412
  %7415 = bitcast float %7410 to i32
  %7416 = sitofp i32 %7415 to float
  %7417 = fmul fast float %7416, 0x3FE7F73180000000
  %7418 = fadd fast float %7417, 0x41AFE27C40000000
  %7419 = fptosi float %7418 to i32
  %7420 = bitcast i32 %7419 to float
  br i1 %6841, label %7421, label %7466

; <label>:7421                                    ; preds = %7115
  %7422 = fmul fast float %7414, %7414
  %7423 = fmul fast float %7265, %7411
  %7424 = fadd fast float %7423, %7410
  %7425 = bitcast float %7424 to i32
  %7426 = ashr i32 %7425, 1
  %7427 = add nsw i32 %7426, 532487669
  %7428 = bitcast i32 %7427 to float
  %7429 = fadd fast float %7428, %1892
  %7430 = fmul fast float %7422, %7429
  %7431 = fmul fast float %7407, %7407
  %7432 = fmul fast float %7431, %7411
  %7433 = fadd fast float %7432, %7410
  %7434 = bitcast float %7433 to i32
  %7435 = ashr i32 %7434, 1
  %7436 = add nsw i32 %7435, 532487669
  %7437 = bitcast i32 %7436 to float
  %7438 = fadd fast float %7437, %7407
  %7439 = fmul fast float %7430, %7438
  %7440 = fdiv fast float 1.000000e+00, %7439
  %7441 = fmul fast float %7410, %7440
  %7442 = fmul fast float %7441, %7420
  %7443 = call float @dx.op.dot3.f32(i32 55, float %7366, float %7367, float %7368, float %7366, float %7367, float %7368)  ; Dot3(ax,ay,az,bx,by,bz)
  %7444 = bitcast float %7443 to i32
  %7445 = ashr i32 %7444, 1
  %7446 = sub nsw i32 1597463007, %7445
  %7447 = bitcast i32 %7446 to float
  %7448 = fmul fast float %7294, %7447
  %7449 = fadd fast float %7420, %7448
  %7450 = bitcast float %7449 to i32
  %7451 = sub nsw i32 2129859010, %7450
  %7452 = bitcast i32 %7451 to float
  %7453 = fmul fast float %7442, %7452
  %7454 = fmul fast float %7341, %1735
  %7455 = fadd fast float %7454, %7342
  %7456 = fmul fast float %7341, %1736
  %7457 = fadd fast float %7456, %7342
  %7458 = fmul fast float %7341, %1890
  %7459 = fadd fast float %7458, %7342
  %7460 = call float @dx.op.binary.f32(i32 35, float %7457, float %7459)  ; FMax(a,b)
  %7461 = call float @dx.op.binary.f32(i32 35, float %7455, float %7460)  ; FMax(a,b)
  %7462 = fsub fast float 1.000000e+00, %7461
  %7463 = fmul fast float %7337, %6870
  %7464 = fmul fast float %7463, %7462
  %7465 = fmul fast float %7464, %7453
  br label %7466

; <label>:7466                                    ; preds = %7421, %7115
  %7467 = phi float [ %7465, %7421 ], [ 0.000000e+00, %7115 ]
  %7468 = fmul fast float %7332, %7196
  %7469 = fmul fast float %7314, %7196
  %7470 = fmul fast float %7469, %7302
  %7471 = fmul fast float %7315, %7196
  %7472 = fmul fast float %7471, %7302
  %7473 = fmul fast float %7316, %7196
  %7474 = fmul fast float %7473, %7302
  %7475 = fadd fast float %7467, %7470
  %7476 = fadd fast float %7467, %7472
  %7477 = fadd fast float %7467, %7474
  %7478 = fmul fast float %7468, %7116
  %7479 = fmul fast float %7468, %7117
  %7480 = fmul fast float %7468, %7118
  %7481 = fadd fast float %7478, %6777
  %7482 = fadd fast float %7479, %6778
  %7483 = fadd fast float %7480, %6779
  %7484 = fmul fast float %7475, %7116
  %7485 = fmul fast float %7476, %7117
  %7486 = fmul fast float %7477, %7118
  %7487 = fadd fast float %7484, %6774
  %7488 = fadd fast float %7485, %6775
  %7489 = fadd fast float %7486, %6776
  %7490 = fadd fast float %7478, %6771
  %7491 = fadd fast float %7479, %6772
  %7492 = fadd fast float %7480, %6773
  %7493 = fadd fast float %7484, %6768
  %7494 = fadd fast float %7485, %6769
  %7495 = fadd fast float %7486, %6770
  %7496 = fadd fast float %7478, %6765
  %7497 = fadd fast float %7479, %6766
  %7498 = fadd fast float %7480, %6767
  %7499 = fadd fast float %7484, %6762
  %7500 = fadd fast float %7485, %6763
  %7501 = fadd fast float %7486, %6764
  br label %7502

; <label>:7502                                    ; preds = %7466, %7110
  %7503 = phi float [ %6762, %7110 ], [ %7499, %7466 ]
  %7504 = phi float [ %6763, %7110 ], [ %7500, %7466 ]
  %7505 = phi float [ %6764, %7110 ], [ %7501, %7466 ]
  %7506 = phi float [ %6765, %7110 ], [ %7496, %7466 ]
  %7507 = phi float [ %6766, %7110 ], [ %7497, %7466 ]
  %7508 = phi float [ %6767, %7110 ], [ %7498, %7466 ]
  %7509 = phi float [ %6768, %7110 ], [ %7493, %7466 ]
  %7510 = phi float [ %6769, %7110 ], [ %7494, %7466 ]
  %7511 = phi float [ %6770, %7110 ], [ %7495, %7466 ]
  %7512 = phi float [ %6771, %7110 ], [ %7490, %7466 ]
  %7513 = phi float [ %6772, %7110 ], [ %7491, %7466 ]
  %7514 = phi float [ %6773, %7110 ], [ %7492, %7466 ]
  %7515 = phi float [ %6774, %7110 ], [ %7487, %7466 ]
  %7516 = phi float [ %6775, %7110 ], [ %7488, %7466 ]
  %7517 = phi float [ %6776, %7110 ], [ %7489, %7466 ]
  %7518 = phi float [ %6777, %7110 ], [ %7481, %7466 ]
  %7519 = phi float [ %6778, %7110 ], [ %7482, %7466 ]
  %7520 = phi float [ %6779, %7110 ], [ %7483, %7466 ]
  %7521 = bitcast i32 %6752 to float
  %7522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7523 = extractvalue %dx.types.CBufRet.f32 %7522, 1
  %7524 = bitcast float %7523 to i32
  %7525 = and i32 %7524, 65535
  %7526 = icmp eq i32 %7525, 65535
  br i1 %7526, label %7527, label %7529

; <label>:7527                                    ; preds = %7502
  %7528 = call float @dx.op.binary.f32(i32 35, float %7521, float %7111)  ; FMax(a,b)
  br label %7532

; <label>:7529                                    ; preds = %7502
  %7530 = icmp eq i32 %7525, %6781
  %7531 = select i1 %7530, float %7111, float %7521
  br label %7532

; <label>:7532                                    ; preds = %7529, %7527
  %7533 = phi float [ %7528, %7527 ], [ %7531, %7529 ]
  %7534 = extractvalue %dx.types.CBufRet.f32 %7522, 0
  %7535 = bitcast float %7534 to i32
  %7536 = lshr i32 %7535, 8
  %7537 = and i32 %7536, 255
  %7538 = uitofp i32 %7537 to float
  %7539 = fptoui float %7538 to i32
  %7540 = icmp eq i32 %7539, 15
  %7541 = bitcast float %7533 to i32
  %7542 = select i1 %7540, i32 %7541, i32 %6752
  %7543 = add i32 %6935, %6757
  %7544 = add i32 %6937, %6758
  %7545 = add i32 %6939, %6759
  %7546 = add i32 %6941, %6760
  br label %6946

; <label>:7547                                    ; preds = %6946
  br label %7548

; <label>:7548                                    ; preds = %7547, %6698
  %7549 = phi i32 [ %6699, %6698 ], [ %6947, %7547 ]
  %7550 = phi i32 [ %6700, %6698 ], [ %6936, %7547 ]
  %7551 = phi i32 [ %6701, %6698 ], [ %6938, %7547 ]
  %7552 = phi i32 [ %6702, %6698 ], [ %6940, %7547 ]
  %7553 = phi i32 [ %6703, %6698 ], [ %6942, %7547 ]
  %7554 = phi i32 [ %6704, %6698 ], [ %6948, %7547 ]
  %7555 = phi i32 [ %6705, %6698 ], [ %6949, %7547 ]
  %7556 = phi i32 [ %6706, %6698 ], [ %6950, %7547 ]
  %7557 = phi i32 [ %6707, %6698 ], [ %6951, %7547 ]
  %7558 = phi float [ %6709, %6698 ], [ %6952, %7547 ]
  %7559 = phi float [ %6710, %6698 ], [ %6953, %7547 ]
  %7560 = phi float [ %6711, %6698 ], [ %6954, %7547 ]
  %7561 = phi float [ %6712, %6698 ], [ %6955, %7547 ]
  %7562 = phi float [ %6713, %6698 ], [ %6956, %7547 ]
  %7563 = phi float [ %6714, %6698 ], [ %6957, %7547 ]
  %7564 = phi float [ %6715, %6698 ], [ %6958, %7547 ]
  %7565 = phi float [ %6716, %6698 ], [ %6959, %7547 ]
  %7566 = phi float [ %6717, %6698 ], [ %6960, %7547 ]
  %7567 = phi float [ %6718, %6698 ], [ %6961, %7547 ]
  %7568 = phi float [ %6719, %6698 ], [ %6962, %7547 ]
  %7569 = phi float [ %6720, %6698 ], [ %6963, %7547 ]
  %7570 = phi float [ %6721, %6698 ], [ %6964, %7547 ]
  %7571 = phi float [ %6722, %6698 ], [ %6965, %7547 ]
  %7572 = phi float [ %6723, %6698 ], [ %6966, %7547 ]
  %7573 = phi float [ %6724, %6698 ], [ %6967, %7547 ]
  %7574 = phi float [ %6725, %6698 ], [ %6968, %7547 ]
  %7575 = phi float [ %6726, %6698 ], [ %6969, %7547 ]
  %7576 = add i32 %6708, 1
  %7577 = icmp ugt i32 %7576, %6695
  br i1 %7577, label %7578, label %6698

; <label>:7578                                    ; preds = %7548
  br label %7579

; <label>:7579                                    ; preds = %7578, %6648
  %7580 = phi i32 [ %6627, %6648 ], [ %7549, %7578 ]
  %7581 = phi i32 [ 0, %6648 ], [ %7550, %7578 ]
  %7582 = phi i32 [ 0, %6648 ], [ %7551, %7578 ]
  %7583 = phi i32 [ 0, %6648 ], [ %7552, %7578 ]
  %7584 = phi i32 [ 0, %6648 ], [ %7553, %7578 ]
  %7585 = phi i32 [ 0, %6648 ], [ %7554, %7578 ]
  %7586 = phi i32 [ 0, %6648 ], [ %7555, %7578 ]
  %7587 = phi i32 [ 0, %6648 ], [ %7556, %7578 ]
  %7588 = phi i32 [ 0, %6648 ], [ %7557, %7578 ]
  %7589 = phi float [ %6629, %6648 ], [ %7558, %7578 ]
  %7590 = phi float [ %6630, %6648 ], [ %7559, %7578 ]
  %7591 = phi float [ %6631, %6648 ], [ %7560, %7578 ]
  %7592 = phi float [ %6632, %6648 ], [ %7561, %7578 ]
  %7593 = phi float [ %6633, %6648 ], [ %7562, %7578 ]
  %7594 = phi float [ %6634, %6648 ], [ %7563, %7578 ]
  %7595 = phi float [ %6635, %6648 ], [ %7564, %7578 ]
  %7596 = phi float [ %6636, %6648 ], [ %7565, %7578 ]
  %7597 = phi float [ %6637, %6648 ], [ %7566, %7578 ]
  %7598 = phi float [ %6638, %6648 ], [ %7567, %7578 ]
  %7599 = phi float [ %6639, %6648 ], [ %7568, %7578 ]
  %7600 = phi float [ %6640, %6648 ], [ %7569, %7578 ]
  %7601 = phi float [ %6642, %6648 ], [ %7570, %7578 ]
  %7602 = phi float [ %6643, %6648 ], [ %7571, %7578 ]
  %7603 = phi float [ %6644, %6648 ], [ %7572, %7578 ]
  %7604 = phi float [ %6638, %6648 ], [ %7573, %7578 ]
  %7605 = phi float [ %6639, %6648 ], [ %7574, %7578 ]
  %7606 = phi float [ %6640, %6648 ], [ %7575, %7578 ]
  %7607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %7608 = extractvalue %dx.types.CBufRet.f32 %7607, 1
  %7609 = bitcast float %7608 to i32
  %7610 = lshr i32 %7609, 24
  %7611 = uitofp i32 %7610 to float
  %7612 = fptoui float %7611 to i32
  %7613 = icmp eq i32 %7612, 1
  %7614 = select i1 %7613, i32 %7585, i32 %7581
  %7615 = uitofp i32 %7614 to float
  %7616 = fptoui float %7615 to i32
  %7617 = shl i32 %7616, 8
  %7618 = select i1 %7613, i32 %7586, i32 %7582
  %7619 = uitofp i32 %7618 to float
  %7620 = fptoui float %7619 to i32
  %7621 = shl i32 %7620, 16
  %7622 = and i32 %7617, 65280
  %7623 = or i32 %7622, %6628
  %7624 = select i1 %7613, i32 %7587, i32 %7583
  %7625 = uitofp i32 %7624 to float
  %7626 = fptoui float %7625 to i32
  %7627 = shl i32 %7626, 24
  %7628 = and i32 %7621, 16711680
  %7629 = or i32 %7623, %7628
  %7630 = or i32 %7629, %7627
  %7631 = select i1 %7613, i32 %7588, i32 %7584
  %7632 = uitofp i32 %7631 to float
  %7633 = fptoui float %7632 to i32
  %7634 = and i32 %7633, 255
  %7635 = and i32 %4784, -256
  %7636 = or i32 %7634, %7635
  %7637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %7638 = extractvalue %dx.types.CBufRet.f32 %7637, 0
  %7639 = bitcast float %7638 to i32
  %7640 = lshr i32 %7639, 8
  %7641 = and i32 %7640, 255
  %7642 = uitofp i32 %7641 to float
  %7643 = fptoui float %7642 to i32
  %7644 = icmp eq i32 %7643, 12
  %7645 = select i1 %7644, i32 0, i32 %7580
  br label %7646

; <label>:7646                                    ; preds = %7579, %6626
  %7647 = phi i32 [ %4784, %6626 ], [ %7636, %7579 ]
  %7648 = phi i32 [ 0, %6626 ], [ %7630, %7579 ]
  %7649 = phi i32 [ %6627, %6626 ], [ %7645, %7579 ]
  %7650 = phi float [ %6629, %6626 ], [ %7589, %7579 ]
  %7651 = phi float [ %6630, %6626 ], [ %7590, %7579 ]
  %7652 = phi float [ %6631, %6626 ], [ %7591, %7579 ]
  %7653 = phi float [ %6632, %6626 ], [ %7592, %7579 ]
  %7654 = phi float [ %6633, %6626 ], [ %7593, %7579 ]
  %7655 = phi float [ %6634, %6626 ], [ %7594, %7579 ]
  %7656 = phi float [ %6635, %6626 ], [ %7595, %7579 ]
  %7657 = phi float [ %6636, %6626 ], [ %7596, %7579 ]
  %7658 = phi float [ %6637, %6626 ], [ %7597, %7579 ]
  %7659 = phi float [ %6638, %6626 ], [ %7598, %7579 ]
  %7660 = phi float [ %6639, %6626 ], [ %7599, %7579 ]
  %7661 = phi float [ %6640, %6626 ], [ %7600, %7579 ]
  %7662 = phi float [ %6642, %6626 ], [ %7601, %7579 ]
  %7663 = phi float [ %6643, %6626 ], [ %7602, %7579 ]
  %7664 = phi float [ %6644, %6626 ], [ %7603, %7579 ]
  %7665 = phi float [ %6638, %6626 ], [ %7604, %7579 ]
  %7666 = phi float [ %6639, %6626 ], [ %7605, %7579 ]
  %7667 = phi float [ %6640, %6626 ], [ %7606, %7579 ]
  %7668 = and i32 %1793, 255
  %7669 = uitofp i32 %7668 to float
  %7670 = fmul fast float %7669, 0x3F70101020000000
  %7671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7672 = extractvalue %dx.types.CBufRet.f32 %7671, 2
  %7673 = extractvalue %dx.types.CBufRet.f32 %7671, 3
  %7674 = fmul fast float %124, %7672
  %7675 = fmul fast float %126, %7673
  %7676 = fsub fast float 1.000000e+00, %7674
  %7677 = fsub fast float 1.000000e+00, %7675
  %7678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %7679 = extractvalue %dx.types.CBufRet.f32 %7678, 0
  %7680 = extractvalue %dx.types.CBufRet.f32 %7678, 1
  %7681 = extractvalue %dx.types.CBufRet.f32 %7678, 2
  %7682 = fmul fast float %7676, %7679
  %7683 = fmul fast float %7676, %7680
  %7684 = fmul fast float %7676, %7681
  %7685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %7686 = extractvalue %dx.types.CBufRet.f32 %7685, 0
  %7687 = extractvalue %dx.types.CBufRet.f32 %7685, 1
  %7688 = extractvalue %dx.types.CBufRet.f32 %7685, 2
  %7689 = fmul fast float %7677, %7686
  %7690 = fmul fast float %7677, %7687
  %7691 = fmul fast float %7677, %7688
  %7692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %7693 = extractvalue %dx.types.CBufRet.f32 %7692, 0
  %7694 = extractvalue %dx.types.CBufRet.f32 %7692, 1
  %7695 = extractvalue %dx.types.CBufRet.f32 %7692, 2
  %7696 = fadd fast float %7689, %7693
  %7697 = fadd fast float %7696, %7682
  %7698 = fadd fast float %7690, %7694
  %7699 = fadd fast float %7698, %7683
  %7700 = fadd fast float %7691, %7695
  %7701 = fadd fast float %7700, %7684
  %7702 = fmul fast float %7697, %88
  %7703 = fmul fast float %7699, %88
  %7704 = fmul fast float %7701, %88
  %7705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %7706 = extractvalue %dx.types.CBufRet.f32 %7705, 2
  %7707 = extractvalue %dx.types.CBufRet.f32 %7705, 3
  %7708 = fmul fast float %7706, %99
  %7709 = fmul fast float %7707, %100
  %7710 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %44, i32 0, i32 %1803, i32 %1809, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7711 = extractvalue %dx.types.ResRet.f32 %7710, 0
  %7712 = fcmp fast olt float %7711, -1.000000e+00
  %7713 = fcmp fast ogt float %7711, -1.000000e+00
  %7714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %7715 = extractvalue %dx.types.CBufRet.f32 %7714, 1
  %7716 = select i1 %7713, float %7715, float 1.000000e+00
  %7717 = fadd fast float %7711, 1.000000e+00
  %7718 = fmul fast float %7716, %7717
  %7719 = call float @dx.op.unary.f32(i32 6, float %7718)  ; FAbs(value)
  %7720 = fsub fast float %7719, %88
  %7721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 25)  ; CBufferLoadLegacy(handle,regIndex)
  %7722 = extractvalue %dx.types.CBufRet.f32 %7721, 2
  %7723 = fsub fast float %7720, %7722
  %7724 = extractvalue %dx.types.CBufRet.f32 %7721, 3
  %7725 = fmul fast float %7724, %7670
  %7726 = fmul fast float %7725, %7723
  %7727 = call float @dx.op.unary.f32(i32 7, float %7726)  ; Saturate(value)
  %7728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 356)  ; CBufferLoadLegacy(handle,regIndex)
  %7729 = extractvalue %dx.types.CBufRet.f32 %7728, 1
  %7730 = extractvalue %dx.types.CBufRet.f32 %7728, 0
  %7731 = extractvalue %dx.types.CBufRet.f32 %7728, 3
  %7732 = extractvalue %dx.types.CBufRet.f32 %7728, 2
  %7733 = select i1 %7712, float %7729, float %7731
  %7734 = select i1 %7712, float %7730, float %7732
  %7735 = fsub fast float %7720, %7734
  %7736 = fmul fast float %7735, %7733
  %7737 = fsub fast float 1.000000e+00, %7670
  %7738 = fadd fast float %7737, %7736
  %7739 = call float @dx.op.unary.f32(i32 7, float %7738)  ; Saturate(value)
  %7740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 67)  ; CBufferLoadLegacy(handle,regIndex)
  %7741 = extractvalue %dx.types.CBufRet.f32 %7740, 1
  %7742 = extractvalue %dx.types.CBufRet.f32 %7740, 2
  %7743 = fsub fast float 1.000000e+00, %7709
  %7744 = fsub fast float 1.000000e+00, %7708
  %7745 = fmul fast float %7709, %7708
  %7746 = fmul fast float %7745, %7743
  %7747 = fmul fast float %7746, %7744
  %7748 = fmul fast float %7747, %7741
  %7749 = call float @dx.op.unary.f32(i32 23, float %7748)  ; Log(value)
  %7750 = fmul fast float %7749, %7742
  %7751 = call float @dx.op.unary.f32(i32 21, float %7750)  ; Exp(value)
  %7752 = call float @dx.op.unary.f32(i32 7, float %7751)  ; Saturate(value)
  %7753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 66)  ; CBufferLoadLegacy(handle,regIndex)
  %7754 = extractvalue %dx.types.CBufRet.f32 %7753, 2
  %7755 = extractvalue %dx.types.CBufRet.f32 %7753, 3
  %7756 = extractvalue %dx.types.CBufRet.f32 %7753, 0
  %7757 = fsub fast float %88, %7756
  %7758 = extractvalue %dx.types.CBufRet.f32 %7740, 0
  %7759 = fmul fast float %7757, %7758
  %7760 = call float @dx.op.unary.f32(i32 7, float %7759)  ; Saturate(value)
  %7761 = fsub fast float %7755, %7754
  %7762 = fmul fast float %7760, %7761
  %7763 = fadd fast float %7762, %7754
  %7764 = fmul fast float %7763, %7727
  %7765 = fmul fast float %7764, %1714
  %7766 = fmul fast float %7764, %1715
  %7767 = fadd fast float %7765, %7702
  %7768 = fadd fast float %7766, %7703
  %7769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %7770 = extractvalue %dx.types.CBufRet.f32 %7769, 0
  %7771 = extractvalue %dx.types.CBufRet.f32 %7769, 1
  %7772 = extractvalue %dx.types.CBufRet.f32 %7769, 2
  %7773 = extractvalue %dx.types.CBufRet.f32 %7769, 3
  %7774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %7775 = extractvalue %dx.types.CBufRet.f32 %7774, 0
  %7776 = extractvalue %dx.types.CBufRet.f32 %7774, 1
  %7777 = extractvalue %dx.types.CBufRet.f32 %7774, 2
  %7778 = extractvalue %dx.types.CBufRet.f32 %7774, 3
  %7779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %7780 = extractvalue %dx.types.CBufRet.f32 %7779, 0
  %7781 = extractvalue %dx.types.CBufRet.f32 %7779, 1
  %7782 = extractvalue %dx.types.CBufRet.f32 %7779, 2
  %7783 = extractvalue %dx.types.CBufRet.f32 %7779, 3
  %7784 = fmul fast float %7767, %7770
  %7785 = call float @dx.op.tertiary.f32(i32 46, float %7768, float %7771, float %7784)  ; FMad(a,b,c)
  %7786 = call float @dx.op.tertiary.f32(i32 46, float %7704, float %7772, float %7785)  ; FMad(a,b,c)
  %7787 = fadd fast float %7786, %7773
  %7788 = fmul fast float %7767, %7775
  %7789 = call float @dx.op.tertiary.f32(i32 46, float %7768, float %7776, float %7788)  ; FMad(a,b,c)
  %7790 = call float @dx.op.tertiary.f32(i32 46, float %7704, float %7777, float %7789)  ; FMad(a,b,c)
  %7791 = fadd fast float %7790, %7778
  %7792 = fmul fast float %7767, %7780
  %7793 = call float @dx.op.tertiary.f32(i32 46, float %7768, float %7781, float %7792)  ; FMad(a,b,c)
  %7794 = call float @dx.op.tertiary.f32(i32 46, float %7704, float %7782, float %7793)  ; FMad(a,b,c)
  %7795 = fadd fast float %7794, %7783
  %7796 = fdiv fast float %7787, %7795
  %7797 = fdiv fast float %7791, %7795
  %7798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %7799 = extractvalue %dx.types.CBufRet.f32 %7798, 0
  %7800 = extractvalue %dx.types.CBufRet.f32 %7798, 1
  %7801 = fmul fast float %7799, %7796
  %7802 = fmul fast float %7800, %7797
  %7803 = extractvalue %dx.types.CBufRet.f32 %7798, 2
  %7804 = extractvalue %dx.types.CBufRet.f32 %7798, 3
  %7805 = fadd fast float %7801, %7803
  %7806 = fadd fast float %7802, %7804
  %7807 = call float @dx.op.unary.f32(i32 7, float %7805)  ; Saturate(value)
  %7808 = call float @dx.op.unary.f32(i32 7, float %7806)  ; Saturate(value)
  %7809 = fsub fast float %7807, %7708
  %7810 = fsub fast float %7808, %7709
  %7811 = fmul fast float %7809, %7752
  %7812 = fmul fast float %7810, %7752
  %7813 = fadd fast float %7811, %7708
  %7814 = fadd fast float %7812, %7709
  %7815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %55, %dx.types.Handle %63, float %7813, float %7814, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7816 = extractvalue %dx.types.ResRet.f32 %7815, 0
  %7817 = fcmp fast ogt float %7816, -1.000000e+00
  %7818 = select i1 %7817, float %7715, float 1.000000e+00
  %7819 = fadd fast float %7816, 1.000000e+00
  %7820 = fmul fast float %7818, %7819
  %7821 = call float @dx.op.unary.f32(i32 6, float %7820)  ; FAbs(value)
  %7822 = fcmp fast ugt float %7821, %7795
  br i1 %7822, label %7824, label %7823

; <label>:7823                                    ; preds = %7646
  br label %7824

; <label>:7824                                    ; preds = %7823, %7646
  %7825 = phi float [ %7708, %7823 ], [ %7813, %7646 ]
  %7826 = phi float [ %7709, %7823 ], [ %7814, %7646 ]
  %7827 = phi float [ %88, %7823 ], [ %7795, %7646 ]
  %7828 = phi float [ %7719, %7823 ], [ %7821, %7646 ]
  br i1 %116, label %7829, label %8265

; <label>:7829                                    ; preds = %7824
  %7830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 202)  ; CBufferLoadLegacy(handle,regIndex)
  %7831 = extractvalue %dx.types.CBufRet.f32 %7830, 0
  %7832 = extractvalue %dx.types.CBufRet.f32 %7830, 1
  %7833 = extractvalue %dx.types.CBufRet.f32 %7830, 2
  %7834 = fcmp fast oge float %7832, %7827
  %7835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %7836 = extractvalue %dx.types.CBufRet.i32 %7835, 0
  %7837 = and i32 %7836, 65538
  %7838 = icmp eq i32 %7837, 65538
  %7839 = and i1 %7838, %7834
  br i1 %7839, label %7840, label %7921

; <label>:7840                                    ; preds = %7829
  %7841 = extractvalue %dx.types.CBufRet.f32 %7671, 0
  %7842 = extractvalue %dx.types.CBufRet.f32 %7671, 1
  %7843 = fmul fast float %7841, %7825
  %7844 = fmul fast float %7842, %7826
  %7845 = fmul fast float %7843, %7672
  %7846 = fmul fast float %7844, %7673
  %7847 = call float @dx.op.unary.f32(i32 7, float %7845)  ; Saturate(value)
  %7848 = call float @dx.op.unary.f32(i32 7, float %7846)  ; Saturate(value)
  %7849 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %7847, float %7848, float 3.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7850 = extractvalue %dx.types.ResRet.f32 %7849, 0
  %7851 = extractvalue %dx.types.ResRet.f32 %7849, 1
  %7852 = extractvalue %dx.types.ResRet.f32 %7849, 2
  %7853 = extractvalue %dx.types.ResRet.f32 %7849, 3
  %7854 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %7847, float %7848, float 4.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %7855 = extractvalue %dx.types.ResRet.f32 %7854, 0
  %7856 = extractvalue %dx.types.ResRet.f32 %7854, 1
  %7857 = extractvalue %dx.types.ResRet.f32 %7854, 2
  %7858 = extractvalue %dx.types.ResRet.f32 %7854, 3
  %7859 = call float @dx.op.binary.f32(i32 35, float %7851, float %7852)  ; FMax(a,b)
  %7860 = call float @dx.op.binary.f32(i32 35, float %7850, float %7859)  ; FMax(a,b)
  %7861 = call float @dx.op.binary.f32(i32 35, float %7860, float %7853)  ; FMax(a,b)
  %7862 = call float @dx.op.binary.f32(i32 36, float %7856, float %7857)  ; FMin(a,b)
  %7863 = call float @dx.op.binary.f32(i32 36, float %7855, float %7862)  ; FMin(a,b)
  %7864 = call float @dx.op.binary.f32(i32 36, float %7863, float %7858)  ; FMin(a,b)
  %7865 = fmul fast float %7861, 2.550000e+02
  %7866 = fadd fast float %7865, 0x3F70101020000000
  %7867 = fptoui float %7866 to i32
  %7868 = fmul fast float %7864, 2.550000e+02
  %7869 = fadd fast float %7868, 0x3F70101020000000
  %7870 = fptoui float %7869 to i32
  %7871 = icmp ult i32 %7867, %7870
  br i1 %7871, label %7872, label %7921

; <label>:7872                                    ; preds = %7840
  %7873 = fadd fast float %7828, -4.000000e+00
  %7874 = call float @dx.op.binary.f32(i32 35, float %7873, float 0.000000e+00)  ; FMax(a,b)
  %7875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %7876 = extractvalue %dx.types.CBufRet.f32 %7875, 0
  %7877 = fadd fast float %7876, %7874
  %7878 = extractvalue %dx.types.CBufRet.f32 %7875, 2
  %7879 = fmul fast float %7877, %7878
  %7880 = call float @dx.op.unary.f32(i32 23, float %7879)  ; Log(value)
  %7881 = extractvalue %dx.types.CBufRet.f32 %7875, 3
  %7882 = fmul fast float %7881, %7880
  %7883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %7884 = extractvalue %dx.types.CBufRet.f32 %7883, 2
  %7885 = fmul fast float %7882, %7884
  %7886 = call float @dx.op.unary.f32(i32 7, float %7885)  ; Saturate(value)
  %7887 = uitofp i32 %7867 to float
  %7888 = uitofp i32 %7870 to float
  %7889 = fadd fast float %7887, 5.000000e-01
  %7890 = fadd fast float %7888, 5.000000e-01
  %7891 = fmul fast float %7884, %7889
  %7892 = fmul fast float %7884, %7890
  %7893 = fadd fast float %7891, 0x3F0FFB4800000000
  %7894 = fadd fast float %7892, 0xBF0FFB4800000000
  %7895 = call float @dx.op.binary.f32(i32 35, float %7886, float %7893)  ; FMax(a,b)
  %7896 = call float @dx.op.binary.f32(i32 36, float %7895, float %7894)  ; FMin(a,b)
  %7897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %7898 = extractvalue %dx.types.CBufRet.f32 %7897, 1
  %7899 = extractvalue %dx.types.CBufRet.f32 %7897, 2
  %7900 = extractvalue %dx.types.CBufRet.f32 %7897, 0
  %7901 = fmul fast float %7898, %7896
  %7902 = fadd fast float %7900, %7901
  %7903 = fadd fast float %7900, %7899
  %7904 = fsub fast float %7898, %7899
  %7905 = fadd fast float %7904, %7900
  %7906 = call float @dx.op.binary.f32(i32 35, float %7902, float %7903)  ; FMax(a,b)
  %7907 = call float @dx.op.binary.f32(i32 36, float %7906, float %7905)  ; FMin(a,b)
  %7908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %60, float %7847, float %7848, float %7907, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7909 = extractvalue %dx.types.ResRet.f32 %7908, 0
  %7910 = extractvalue %dx.types.ResRet.f32 %7908, 1
  %7911 = extractvalue %dx.types.ResRet.f32 %7908, 2
  %7912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %60, float %7847, float %7848, float %7907, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7913 = extractvalue %dx.types.ResRet.f32 %7912, 0
  %7914 = extractvalue %dx.types.ResRet.f32 %7912, 1
  %7915 = extractvalue %dx.types.ResRet.f32 %7912, 2
  %7916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %7917 = extractvalue %dx.types.CBufRet.f32 %7916, 1
  %7918 = fmul fast float %7917, %7913
  %7919 = fmul fast float %7917, %7914
  %7920 = fmul fast float %7917, %7915
  br label %7921

; <label>:7921                                    ; preds = %7872, %7840, %7829
  %7922 = phi float [ 0.000000e+00, %7829 ], [ %7918, %7872 ], [ 0.000000e+00, %7840 ]
  %7923 = phi float [ 0.000000e+00, %7829 ], [ %7919, %7872 ], [ 0.000000e+00, %7840 ]
  %7924 = phi float [ 0.000000e+00, %7829 ], [ %7920, %7872 ], [ 0.000000e+00, %7840 ]
  %7925 = phi float [ 1.000000e+00, %7829 ], [ %7909, %7872 ], [ 1.000000e+00, %7840 ]
  %7926 = phi float [ 1.000000e+00, %7829 ], [ %7910, %7872 ], [ 1.000000e+00, %7840 ]
  %7927 = phi float [ 1.000000e+00, %7829 ], [ %7911, %7872 ], [ 1.000000e+00, %7840 ]
  %7928 = fcmp fast olt float %7670, 1.000000e+00
  %7929 = fcmp fast olt float %7831, %7828
  %7930 = or i1 %7928, %7929
  br i1 %7930, label %7931, label %8022

; <label>:7931                                    ; preds = %7921
  %7932 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %7933 = extractvalue %dx.types.CBufRet.i32 %7932, 0
  %7934 = call i32 @dx.op.binary.i32(i32 40, i32 %198, i32 %7933)  ; UMin(a,b)
  %7935 = mul i32 %7934, 36
  %7936 = add i32 %7935, 4
  %7937 = add i32 %7936, %432
  %7938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %48, i32 %7937, i32 undef)  ; BufferLoad(srv,index,wot)
  %7939 = extractvalue %dx.types.ResRet.i32 %7938, 0
  %7940 = and i32 %7939, 32767
  %7941 = mul nuw nsw i32 %7940, 928
  %7942 = add nuw nsw i32 %7941, 44
  %7943 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7942, i32 undef)  ; BufferLoad(srv,index,wot)
  %7944 = extractvalue %dx.types.ResRet.f32 %7943, 0
  %7945 = add nuw nsw i32 %7941, 48
  %7946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7945, i32 undef)  ; BufferLoad(srv,index,wot)
  %7947 = extractvalue %dx.types.ResRet.f32 %7946, 0
  %7948 = extractvalue %dx.types.ResRet.f32 %7946, 1
  %7949 = extractvalue %dx.types.ResRet.f32 %7946, 2
  %7950 = add nuw nsw i32 %7941, 60
  %7951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %50, i32 %7950, i32 undef)  ; BufferLoad(srv,index,wot)
  %7952 = extractvalue %dx.types.ResRet.f32 %7951, 0
  %7953 = extractvalue %dx.types.ResRet.f32 %7951, 1
  %7954 = extractvalue %dx.types.ResRet.f32 %7951, 2
  %7955 = fmul fast float %7947, 0x3F847AE140000000
  %7956 = fmul fast float %7948, 0x3F847AE140000000
  %7957 = fmul fast float %7949, 0x3F847AE140000000
  %7958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7959 = extractvalue %dx.types.CBufRet.f32 %7958, 0
  %7960 = extractvalue %dx.types.CBufRet.f32 %7958, 1
  %7961 = extractvalue %dx.types.CBufRet.f32 %7958, 2
  %7962 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7963 = extractvalue %dx.types.CBufRet.f32 %7962, 0
  %7964 = extractvalue %dx.types.CBufRet.f32 %7962, 1
  %7965 = call float @dx.op.dot3.f32(i32 55, float %7959, float %7960, float %7961, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7966 = select i1 %1885, float %7963, float %7959
  %7967 = select i1 %1885, float %7965, float %7960
  %7968 = select i1 %1885, float %7964, float %7961
  %7969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7970 = extractvalue %dx.types.CBufRet.f32 %7969, 0
  %7971 = extractvalue %dx.types.CBufRet.f32 %7969, 1
  %7972 = extractvalue %dx.types.CBufRet.f32 %7969, 2
  %7973 = fadd fast float %7952, %7947
  %7974 = fmul fast float %7973, 0x3F847AE140000000
  %7975 = fadd fast float %7953, %7948
  %7976 = fmul fast float %7975, 0x3F847AE140000000
  %7977 = fadd fast float %7954, %7949
  %7978 = fmul fast float %7977, 0x3F847AE140000000
  %7979 = call float @dx.op.dot3.f32(i32 55, float %7970, float %7971, float %7972, float %1742, float %1743, float %1744)  ; Dot3(ax,ay,az,bx,by,bz)
  %7980 = fcmp fast ogt float %7944, 0.000000e+00
  %7981 = select i1 %7980, float 1.000000e+00, float -1.000000e+00
  %7982 = fmul fast float %7981, 5.000000e-01
  %7983 = fmul fast float %7982, %7979
  %7984 = fmul fast float %7981, %7944
  %7985 = fadd fast float %7983, 4.921875e-01
  %7986 = fadd fast float %7984, -3.125000e-02
  %7987 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %62, float %7985, float 0x3FB25F3060000000, float %7986, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7988 = extractvalue %dx.types.ResRet.f32 %7987, 0
  %7989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 398)  ; CBufferLoadLegacy(handle,regIndex)
  %7990 = extractvalue %dx.types.CBufRet.f32 %7989, 0
  %7991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 204)  ; CBufferLoadLegacy(handle,regIndex)
  %7992 = extractvalue %dx.types.CBufRet.f32 %7991, 0
  %7993 = fmul fast float %7992, %7990
  %7994 = extractvalue %dx.types.CBufRet.f32 %7991, 1
  %7995 = fadd fast float %7993, %7994
  %7996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 203)  ; CBufferLoadLegacy(handle,regIndex)
  %7997 = extractvalue %dx.types.CBufRet.f32 %7996, 0
  %7998 = fmul fast float %7997, %6641
  %7999 = extractvalue %dx.types.CBufRet.f32 %7996, 1
  %8000 = fadd fast float %7998, %7999
  %8001 = call float @dx.op.unary.f32(i32 7, float %8000)  ; Saturate(value)
  %8002 = extractvalue %dx.types.CBufRet.f32 %7989, 3
  %8003 = extractvalue %dx.types.CBufRet.f32 %7991, 2
  %8004 = fmul fast float %8003, %8002
  %8005 = extractvalue %dx.types.CBufRet.f32 %7991, 3
  %8006 = fadd fast float %8004, %8005
  %8007 = fmul fast float %7988, 0x400921FB60000000
  %8008 = fmul fast float %8007, %7995
  %8009 = fmul fast float %8008, %8001
  %8010 = fmul fast float %7966, %7955
  %8011 = fmul fast float %8010, %8009
  %8012 = fmul fast float %7967, %7956
  %8013 = fmul fast float %8012, %8009
  %8014 = fmul fast float %7968, %7957
  %8015 = fmul fast float %8014, %8009
  %8016 = fmul fast float %7955, %2957
  %8017 = fmul fast float %8016, %8006
  %8018 = fmul fast float %7956, %2958
  %8019 = fmul fast float %8018, %8006
  %8020 = fmul fast float %7957, %2959
  %8021 = fmul fast float %8020, %8006
  br label %8022

; <label>:8022                                    ; preds = %7931, %7921
  %8023 = phi float [ %7974, %7931 ], [ 0.000000e+00, %7921 ]
  %8024 = phi float [ %7976, %7931 ], [ 0.000000e+00, %7921 ]
  %8025 = phi float [ %7978, %7931 ], [ 0.000000e+00, %7921 ]
  %8026 = phi float [ %8011, %7931 ], [ 0.000000e+00, %7921 ]
  %8027 = phi float [ %8013, %7931 ], [ 0.000000e+00, %7921 ]
  %8028 = phi float [ %8015, %7931 ], [ 0.000000e+00, %7921 ]
  %8029 = phi float [ %8017, %7931 ], [ 0.000000e+00, %7921 ]
  %8030 = phi float [ %8019, %7931 ], [ 0.000000e+00, %7921 ]
  %8031 = phi float [ %8021, %7931 ], [ 0.000000e+00, %7921 ]
  %8032 = call float @dx.op.binary.f32(i32 35, float %8023, float 0x3F10000000000000)  ; FMax(a,b)
  %8033 = call float @dx.op.binary.f32(i32 35, float %8024, float 0x3F10000000000000)  ; FMax(a,b)
  %8034 = call float @dx.op.binary.f32(i32 35, float %8025, float 0x3F10000000000000)  ; FMax(a,b)
  %8035 = fdiv fast float 1.000000e+00, %8032
  %8036 = fdiv fast float 1.000000e+00, %8033
  %8037 = fdiv fast float 1.000000e+00, %8034
  %8038 = fmul fast float %8023, 0xBFF7154760000000
  %8039 = fmul fast float %8024, 0xBFF7154760000000
  %8040 = fmul fast float %8025, 0xBFF7154760000000
  %8041 = extractvalue %dx.types.CBufRet.f32 %7830, 3
  %8042 = call float @dx.op.dot3.f32(i32 55, float %8035, float %8036, float %8037, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %8043 = fmul fast float %8041, %8042
  %8044 = call float @dx.op.binary.f32(i32 35, float %7832, float %7827)  ; FMax(a,b)
  %8045 = fsub fast float %7828, %8044
  %8046 = call float @dx.op.binary.f32(i32 35, float %8045, float 0.000000e+00)  ; FMax(a,b)
  %8047 = fsub fast float %7828, %7827
  %8048 = call float @dx.op.binary.f32(i32 35, float %8047, float 0.000000e+00)  ; FMax(a,b)
  %8049 = call float @dx.op.binary.f32(i32 36, float %8048, float %8043)  ; FMin(a,b)
  %8050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 205)  ; CBufferLoadLegacy(handle,regIndex)
  %8051 = extractvalue %dx.types.CBufRet.f32 %8050, 0
  %8052 = fmul fast float %8051, %8049
  %8053 = fmul fast float %8052, %8038
  %8054 = fmul fast float %8052, %8039
  %8055 = fmul fast float %8052, %8040
  %8056 = call float @dx.op.unary.f32(i32 21, float %8053)  ; Exp(value)
  %8057 = call float @dx.op.unary.f32(i32 21, float %8054)  ; Exp(value)
  %8058 = call float @dx.op.unary.f32(i32 21, float %8055)  ; Exp(value)
  %8059 = fmul fast float %8056, %8026
  %8060 = fmul fast float %8057, %8027
  %8061 = fmul fast float %8058, %8028
  %8062 = extractvalue %dx.types.CBufRet.f32 %8050, 1
  %8063 = fmul fast float %8062, %8049
  %8064 = fmul fast float %8063, %8038
  %8065 = fmul fast float %8063, %8039
  %8066 = fmul fast float %8063, %8040
  %8067 = call float @dx.op.unary.f32(i32 21, float %8064)  ; Exp(value)
  %8068 = call float @dx.op.unary.f32(i32 21, float %8065)  ; Exp(value)
  %8069 = call float @dx.op.unary.f32(i32 21, float %8066)  ; Exp(value)
  %8070 = fmul fast float %8067, %8029
  %8071 = fmul fast float %8068, %8030
  %8072 = fmul fast float %8069, %8031
  %8073 = fadd fast float %8070, %8059
  %8074 = fadd fast float %8071, %8060
  %8075 = fadd fast float %8072, %8061
  %8076 = fmul fast float %8046, %8038
  %8077 = fmul fast float %8046, %8039
  %8078 = fmul fast float %8046, %8040
  %8079 = call float @dx.op.unary.f32(i32 21, float %8076)  ; Exp(value)
  %8080 = call float @dx.op.unary.f32(i32 21, float %8077)  ; Exp(value)
  %8081 = call float @dx.op.unary.f32(i32 21, float %8078)  ; Exp(value)
  %8082 = call float @dx.op.unary.f32(i32 7, float %8079)  ; Saturate(value)
  %8083 = call float @dx.op.unary.f32(i32 7, float %8080)  ; Saturate(value)
  %8084 = call float @dx.op.unary.f32(i32 7, float %8081)  ; Saturate(value)
  %8085 = fmul fast float %8082, %8073
  %8086 = fmul fast float %8083, %8074
  %8087 = fmul fast float %8084, %8075
  %8088 = fsub fast float %8073, %8085
  %8089 = fsub fast float %8074, %8086
  %8090 = fsub fast float %8075, %8087
  %8091 = fmul fast float %8035, %7925
  %8092 = fmul fast float %8091, %8088
  %8093 = fmul fast float %8036, %7926
  %8094 = fmul fast float %8093, %8089
  %8095 = fmul fast float %8037, %7927
  %8096 = fmul fast float %8095, %8090
  %8097 = fadd fast float %8092, %7922
  %8098 = fadd fast float %8094, %7923
  %8099 = fadd fast float %8096, %7924
  %8100 = fmul fast float %8082, %7925
  %8101 = fmul fast float %8083, %7926
  %8102 = fmul fast float %8084, %7927
  %8103 = fmul fast float %8048, %8038
  %8104 = fmul fast float %8048, %8039
  %8105 = fmul fast float %8048, %8040
  %8106 = call float @dx.op.unary.f32(i32 21, float %8103)  ; Exp(value)
  %8107 = call float @dx.op.unary.f32(i32 21, float %8104)  ; Exp(value)
  %8108 = call float @dx.op.unary.f32(i32 21, float %8105)  ; Exp(value)
  %8109 = call float @dx.op.unary.f32(i32 7, float %8106)  ; Saturate(value)
  %8110 = call float @dx.op.unary.f32(i32 7, float %8107)  ; Saturate(value)
  %8111 = call float @dx.op.unary.f32(i32 7, float %8108)  ; Saturate(value)
  %8112 = fmul fast float %8109, %8073
  %8113 = fmul fast float %8110, %8074
  %8114 = fmul fast float %8111, %8075
  %8115 = fsub fast float %8073, %8112
  %8116 = fsub fast float %8074, %8113
  %8117 = fsub fast float %8075, %8114
  %8118 = fmul fast float %8115, %8035
  %8119 = fmul fast float %8116, %8036
  %8120 = fmul fast float %8117, %8037
  %8121 = fsub fast float %7827, %7831
  %8122 = fmul fast float %7833, %8121
  %8123 = call float @dx.op.unary.f32(i32 7, float %8122)  ; Saturate(value)
  %8124 = fmul fast float %8123, %8123
  %8125 = fmul fast float %8123, 2.000000e+00
  %8126 = fsub fast float 3.000000e+00, %8125
  %8127 = fmul fast float %8124, %8126
  %8128 = fsub fast float %8118, %8097
  %8129 = fsub fast float %8119, %8098
  %8130 = fsub fast float %8120, %8099
  %8131 = fmul fast float %8127, %8128
  %8132 = fmul fast float %8127, %8129
  %8133 = fmul fast float %8127, %8130
  %8134 = fadd fast float %8131, %8097
  %8135 = fadd fast float %8132, %8098
  %8136 = fadd fast float %8133, %8099
  %8137 = fsub fast float %8109, %8100
  %8138 = fsub fast float %8110, %8101
  %8139 = fsub fast float %8111, %8102
  %8140 = fmul fast float %8127, %8137
  %8141 = fmul fast float %8127, %8138
  %8142 = fmul fast float %8127, %8139
  %8143 = fadd fast float %8140, %8100
  %8144 = fadd fast float %8141, %8101
  %8145 = fadd fast float %8142, %8102
  br i1 %7928, label %8146, label %8214

; <label>:8146                                    ; preds = %8022
  %8147 = extractvalue %dx.types.CBufRet.f32 %8050, 3
  %8148 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %8147)  ; Dot3(ax,ay,az,bx,by,bz)
  %8149 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %1887, float %1888, float %1889)  ; Dot3(ax,ay,az,bx,by,bz)
  %8150 = fdiv fast float 1.000000e+00, %8149
  %8151 = fmul fast float %8150, %8148
  %8152 = fcmp ogt float %1744, -0.000000e+00
  %8153 = select i1 %8152, float %8147, float %8151
  %8154 = call float @dx.op.binary.f32(i32 36, float %8153, float %8043)  ; FMin(a,b)
  %8155 = fmul fast float %8051, %8154
  %8156 = fmul fast float %8155, %8038
  %8157 = fmul fast float %8155, %8039
  %8158 = fmul fast float %8155, %8040
  %8159 = call float @dx.op.unary.f32(i32 21, float %8156)  ; Exp(value)
  %8160 = call float @dx.op.unary.f32(i32 21, float %8157)  ; Exp(value)
  %8161 = call float @dx.op.unary.f32(i32 21, float %8158)  ; Exp(value)
  %8162 = fmul fast float %8159, %8026
  %8163 = fmul fast float %8160, %8027
  %8164 = fmul fast float %8161, %8028
  %8165 = fmul fast float %8062, %8154
  %8166 = fmul fast float %8165, %8038
  %8167 = fmul fast float %8165, %8039
  %8168 = fmul fast float %8165, %8040
  %8169 = call float @dx.op.unary.f32(i32 21, float %8166)  ; Exp(value)
  %8170 = call float @dx.op.unary.f32(i32 21, float %8167)  ; Exp(value)
  %8171 = call float @dx.op.unary.f32(i32 21, float %8168)  ; Exp(value)
  %8172 = fmul fast float %8169, %8029
  %8173 = fmul fast float %8170, %8030
  %8174 = fmul fast float %8171, %8031
  %8175 = fadd fast float %8172, %8162
  %8176 = fadd fast float %8173, %8163
  %8177 = fadd fast float %8174, %8164
  %8178 = fmul fast float %8153, %8038
  %8179 = fmul fast float %8153, %8039
  %8180 = fmul fast float %8153, %8040
  %8181 = call float @dx.op.unary.f32(i32 21, float %8178)  ; Exp(value)
  %8182 = call float @dx.op.unary.f32(i32 21, float %8179)  ; Exp(value)
  %8183 = call float @dx.op.unary.f32(i32 21, float %8180)  ; Exp(value)
  %8184 = call float @dx.op.unary.f32(i32 7, float %8181)  ; Saturate(value)
  %8185 = call float @dx.op.unary.f32(i32 7, float %8182)  ; Saturate(value)
  %8186 = call float @dx.op.unary.f32(i32 7, float %8183)  ; Saturate(value)
  %8187 = fmul fast float %8184, %8175
  %8188 = fmul fast float %8185, %8176
  %8189 = fmul fast float %8186, %8177
  %8190 = fsub fast float %8175, %8187
  %8191 = fsub fast float %8176, %8188
  %8192 = fsub fast float %8177, %8189
  %8193 = fmul fast float %8190, %8035
  %8194 = fmul fast float %8191, %8036
  %8195 = fmul fast float %8192, %8037
  %8196 = fsub fast float %8134, %8193
  %8197 = fsub fast float %8135, %8194
  %8198 = fsub fast float %8136, %8195
  %8199 = fmul fast float %8196, %7670
  %8200 = fmul fast float %8197, %7670
  %8201 = fmul fast float %8198, %7670
  %8202 = fadd fast float %8199, %8193
  %8203 = fadd fast float %8200, %8194
  %8204 = fadd fast float %8201, %8195
  %8205 = fsub fast float %8143, %8184
  %8206 = fsub fast float %8144, %8185
  %8207 = fsub fast float %8145, %8186
  %8208 = fmul fast float %8205, %7670
  %8209 = fmul fast float %8206, %7670
  %8210 = fmul fast float %8207, %7670
  %8211 = fadd fast float %8208, %8184
  %8212 = fadd fast float %8209, %8185
  %8213 = fadd fast float %8210, %8186
  br label %8214

; <label>:8214                                    ; preds = %8146, %8022
  %8215 = phi float [ %8202, %8146 ], [ %8134, %8022 ]
  %8216 = phi float [ %8203, %8146 ], [ %8135, %8022 ]
  %8217 = phi float [ %8204, %8146 ], [ %8136, %8022 ]
  %8218 = phi float [ %8211, %8146 ], [ %8143, %8022 ]
  %8219 = phi float [ %8212, %8146 ], [ %8144, %8022 ]
  %8220 = phi float [ %8213, %8146 ], [ %8145, %8022 ]
  %8221 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8222 = extractvalue %dx.types.CBufRet.i32 %8221, 3
  %8223 = and i32 %8222, 3
  %8224 = icmp ne i32 %8223, 0
  %8225 = and i32 %8222, 4
  %8226 = icmp ne i32 %8225, 0
  %8227 = and i1 %8224, %8226
  br i1 %8227, label %8228, label %8235

; <label>:8228                                    ; preds = %8214
  %8229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %62, float %7825, float %7826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8230 = extractvalue %dx.types.ResRet.f32 %8229, 0
  %8231 = fsub fast float 1.000000e+00, %8230
  %8232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8233 = extractvalue %dx.types.CBufRet.f32 %8232, 0
  %8234 = fcmp fast olt float %8231, %8233
  br label %8238

; <label>:8235                                    ; preds = %8214
  %8236 = icmp eq i32 %8225, 0
  %8237 = and i1 %8224, %8236
  br label %8238

; <label>:8238                                    ; preds = %8235, %8228
  %8239 = phi i1 [ %8234, %8228 ], [ %8237, %8235 ]
  %8240 = xor i1 %1885, %8239
  %8241 = select i1 %8240, float 0.000000e+00, float %7670
  %8242 = fcmp fast ogt float %8241, 0.000000e+00
  %8243 = select i1 %8242, float %7825, float 0.000000e+00
  %8244 = select i1 %8242, float %7826, float 0.000000e+00
  %8245 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %62, float %8243, float %8244, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8246 = extractvalue %dx.types.ResRet.f32 %8245, 0
  %8247 = extractvalue %dx.types.ResRet.f32 %8245, 1
  %8248 = extractvalue %dx.types.ResRet.f32 %8245, 2
  %8249 = fmul fast float %8247, %8241
  %8250 = fmul fast float %8248, %8241
  %8251 = select i1 %1885, float 0.000000e+00, float %8249
  %8252 = select i1 %1885, float 0.000000e+00, float %8250
  %8253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8254 = extractvalue %dx.types.CBufRet.f32 %8253, 1
  %8255 = fmul fast float %8241, %8218
  %8256 = fmul fast float %8255, %8246
  %8257 = fmul fast float %8256, %8254
  %8258 = fmul fast float %8254, %8219
  %8259 = fmul fast float %8258, %8251
  %8260 = fmul fast float %8254, %8220
  %8261 = fmul fast float %8260, %8252
  %8262 = fadd fast float %8257, %8215
  %8263 = fadd fast float %8259, %8216
  %8264 = fadd fast float %8261, %8217
  br label %8304

; <label>:8265                                    ; preds = %7824
  %8266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8267 = extractvalue %dx.types.CBufRet.i32 %8266, 3
  %8268 = and i32 %8267, 3
  %8269 = icmp ne i32 %8268, 0
  %8270 = and i32 %8267, 4
  %8271 = icmp ne i32 %8270, 0
  %8272 = and i1 %8269, %8271
  br i1 %8272, label %8273, label %8280

; <label>:8273                                    ; preds = %8265
  %8274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %58, %dx.types.Handle %62, float %7825, float %7826, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8275 = extractvalue %dx.types.ResRet.f32 %8274, 0
  %8276 = fsub fast float 1.000000e+00, %8275
  %8277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %8278 = extractvalue %dx.types.CBufRet.f32 %8277, 0
  %8279 = fcmp fast olt float %8276, %8278
  br label %8283

; <label>:8280                                    ; preds = %8265
  %8281 = icmp eq i32 %8270, 0
  %8282 = and i1 %8269, %8281
  br label %8283

; <label>:8283                                    ; preds = %8280, %8273
  %8284 = phi i1 [ %8279, %8273 ], [ %8282, %8280 ]
  %8285 = xor i1 %1885, %8284
  %8286 = select i1 %8285, float 0.000000e+00, float %7670
  %8287 = fcmp fast ogt float %8286, 0.000000e+00
  %8288 = select i1 %8287, float %7825, float 0.000000e+00
  %8289 = select i1 %8287, float %7826, float 0.000000e+00
  %8290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %62, float %8288, float %8289, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8291 = extractvalue %dx.types.ResRet.f32 %8290, 0
  %8292 = extractvalue %dx.types.ResRet.f32 %8290, 1
  %8293 = extractvalue %dx.types.ResRet.f32 %8290, 2
  %8294 = fmul fast float %8291, %8286
  %8295 = fmul fast float %8292, %8286
  %8296 = fmul fast float %8293, %8286
  %8297 = select i1 %1885, float 0.000000e+00, float %8295
  %8298 = select i1 %1885, float 0.000000e+00, float %8296
  %8299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %8300 = extractvalue %dx.types.CBufRet.f32 %8299, 1
  %8301 = fmul fast float %8294, %8300
  %8302 = fmul fast float %8297, %8300
  %8303 = fmul fast float %8298, %8300
  br label %8304

; <label>:8304                                    ; preds = %8283, %8238
  %8305 = phi float [ %8301, %8283 ], [ %8262, %8238 ]
  %8306 = phi float [ %8302, %8283 ], [ %8263, %8238 ]
  %8307 = phi float [ %8303, %8283 ], [ %8264, %8238 ]
  %8308 = fmul fast float %8305, %2998
  %8309 = fmul fast float %8306, %2998
  %8310 = fmul fast float %8307, %2998
  %8311 = select i1 %116, float %7739, float 1.000000e+00
  %8312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %8313 = extractvalue %dx.types.CBufRet.f32 %8312, 0
  %8314 = bitcast float %8313 to i32
  %8315 = and i32 %8314, 255
  %8316 = uitofp i32 %8315 to float
  %8317 = fptoui float %8316 to i32
  %8318 = icmp eq i32 %8317, 13
  br i1 %8318, label %8319, label %8339

; <label>:8319                                    ; preds = %8304
  %8320 = fadd fast float %1203, 2.000000e+00
  %8321 = fadd fast float %1205, 1.000000e+00
  %8322 = fsub fast float 1.000000e+00, %1206
  %8323 = fmul fast float %8320, 5.000000e-01
  %8324 = fmul fast float %8321, 5.000000e-01
  %8325 = fmul fast float %8322, 5.000000e-01
  %8326 = call float @dx.op.unary.f32(i32 7, float %8323)  ; Saturate(value)
  %8327 = call float @dx.op.unary.f32(i32 7, float %8324)  ; Saturate(value)
  %8328 = call float @dx.op.unary.f32(i32 7, float %8325)  ; Saturate(value)
  %8329 = fmul fast float %8326, 1.023000e+03
  %8330 = fmul fast float %8327, 1.023000e+03
  %8331 = fmul fast float %8328, 1.023000e+03
  %8332 = fptoui float %8329 to i32
  %8333 = fptoui float %8330 to i32
  %8334 = fptoui float %8331 to i32
  %8335 = shl i32 %8333, 10
  %8336 = or i32 %8335, %8332
  %8337 = shl i32 %8334, 20
  %8338 = or i32 %8336, %8337
  br label %8339

; <label>:8339                                    ; preds = %8319, %8304
  %8340 = phi i32 [ %8338, %8319 ], [ %7649, %8304 ]
  %8341 = icmp eq i32 %8317, 14
  br i1 %8341, label %8342, label %8362

; <label>:8342                                    ; preds = %8339
  %8343 = fadd fast float %1200, 1.000000e+00
  %8344 = fadd fast float %1210, 1.000000e+00
  %8345 = fsub fast float 1.000000e+00, %119
  %8346 = fmul fast float %8343, 5.000000e-01
  %8347 = fmul fast float %8344, 5.000000e-01
  %8348 = fmul fast float %8345, 5.000000e-01
  %8349 = call float @dx.op.unary.f32(i32 7, float %8346)  ; Saturate(value)
  %8350 = call float @dx.op.unary.f32(i32 7, float %8347)  ; Saturate(value)
  %8351 = call float @dx.op.unary.f32(i32 7, float %8348)  ; Saturate(value)
  %8352 = fmul fast float %8349, 1.023000e+03
  %8353 = fmul fast float %8350, 1.023000e+03
  %8354 = fmul fast float %8351, 1.023000e+03
  %8355 = fptoui float %8352 to i32
  %8356 = fptoui float %8353 to i32
  %8357 = fptoui float %8354 to i32
  %8358 = shl i32 %8356, 10
  %8359 = or i32 %8358, %8355
  %8360 = shl i32 %8357, 20
  %8361 = or i32 %8359, %8360
  br label %8362

; <label>:8362                                    ; preds = %8342, %8339
  %8363 = phi i32 [ %8361, %8342 ], [ %8340, %8339 ]
  %8364 = icmp eq i32 %8317, 15
  br i1 %8364, label %8365, label %8385

; <label>:8365                                    ; preds = %8362
  %8366 = fadd fast float %118, 1.000000e+00
  %8367 = fadd fast float %119, 1.000000e+00
  %8368 = fadd fast float %120, 1.000000e+00
  %8369 = fmul fast float %8366, 5.000000e-01
  %8370 = fmul fast float %8367, 5.000000e-01
  %8371 = fmul fast float %8368, 5.000000e-01
  %8372 = call float @dx.op.unary.f32(i32 7, float %8369)  ; Saturate(value)
  %8373 = call float @dx.op.unary.f32(i32 7, float %8370)  ; Saturate(value)
  %8374 = call float @dx.op.unary.f32(i32 7, float %8371)  ; Saturate(value)
  %8375 = fmul fast float %8372, 1.023000e+03
  %8376 = fmul fast float %8373, 1.023000e+03
  %8377 = fmul fast float %8374, 1.023000e+03
  %8378 = fptoui float %8375 to i32
  %8379 = fptoui float %8376 to i32
  %8380 = fptoui float %8377 to i32
  %8381 = shl i32 %8379, 10
  %8382 = or i32 %8381, %8378
  %8383 = shl i32 %8380, 20
  %8384 = or i32 %8382, %8383
  br label %8385

; <label>:8385                                    ; preds = %8365, %8362
  %8386 = phi i32 [ %8384, %8365 ], [ %8363, %8362 ]
  %8387 = fsub fast float 1.000000e+00, %1892
  %8388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %8389 = extractvalue %dx.types.CBufRet.f32 %8388, 0
  %8390 = fmul fast float %8389, %8387
  %8391 = fmul fast float %1716, 2.000000e+00
  %8392 = fmul fast float %8391, %1753
  %8393 = fsub fast float %1744, %8392
  %8394 = call float @dx.op.unary.f32(i32 7, float %8393)  ; Saturate(value)
  %8395 = fsub fast float 1.000000e+00, %8394
  %8396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %8397 = extractvalue %dx.types.CBufRet.f32 %8396, 3
  %8398 = fmul fast float %8397, %8395
  %8399 = fsub fast float 1.000000e+00, %1859
  %8400 = call float @dx.op.unary.f32(i32 7, float %8399)  ; Saturate(value)
  %8401 = fadd fast float %7667, %1861
  %8402 = fmul fast float %8401, %1859
  %8403 = fmul fast float %8398, %8400
  %8404 = icmp eq i32 %8317, 39
  %8405 = icmp eq i32 %8317, 40
  %8406 = select i1 %8405, float %1859, float 0.000000e+00
  %8407 = select i1 %8404, float %8401, float %8406
  %8408 = fmul fast float %7665, %1726
  %8409 = fmul fast float %7666, %1727
  %8410 = fmul fast float %7667, %1728
  %8411 = fadd fast float %8408, %7662
  %8412 = fadd fast float %8411, %8308
  %8413 = fadd fast float %8409, %7663
  %8414 = fadd fast float %8413, %8309
  %8415 = fadd fast float %8410, %7664
  %8416 = fadd fast float %8415, %8310
  br i1 %116, label %8420, label %8417

; <label>:8417                                    ; preds = %8385
  %8418 = fmul fast float %7672, %99
  %8419 = fmul fast float %7673, %100
  br label %9219

; <label>:8420                                    ; preds = %8385
  %8421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 164)  ; CBufferLoadLegacy(handle,regIndex)
  %8422 = extractvalue %dx.types.CBufRet.f32 %8421, 0
  %8423 = extractvalue %dx.types.CBufRet.f32 %8421, 1
  %8424 = extractvalue %dx.types.CBufRet.f32 %8421, 2
  %8425 = extractvalue %dx.types.CBufRet.f32 %8421, 3
  %8426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 165)  ; CBufferLoadLegacy(handle,regIndex)
  %8427 = extractvalue %dx.types.CBufRet.f32 %8426, 0
  %8428 = extractvalue %dx.types.CBufRet.f32 %8426, 1
  %8429 = extractvalue %dx.types.CBufRet.f32 %8426, 2
  %8430 = extractvalue %dx.types.CBufRet.f32 %8426, 3
  %8431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 166)  ; CBufferLoadLegacy(handle,regIndex)
  %8432 = extractvalue %dx.types.CBufRet.f32 %8431, 0
  %8433 = extractvalue %dx.types.CBufRet.f32 %8431, 1
  %8434 = extractvalue %dx.types.CBufRet.f32 %8431, 2
  %8435 = extractvalue %dx.types.CBufRet.f32 %8431, 3
  %8436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 167)  ; CBufferLoadLegacy(handle,regIndex)
  %8437 = extractvalue %dx.types.CBufRet.f32 %8436, 0
  %8438 = extractvalue %dx.types.CBufRet.f32 %8436, 1
  %8439 = extractvalue %dx.types.CBufRet.f32 %8436, 2
  %8440 = extractvalue %dx.types.CBufRet.f32 %8436, 3
  %8441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 168)  ; CBufferLoadLegacy(handle,regIndex)
  %8442 = extractvalue %dx.types.CBufRet.f32 %8441, 3
  %8443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 169)  ; CBufferLoadLegacy(handle,regIndex)
  %8444 = extractvalue %dx.types.CBufRet.f32 %8443, 3
  %8445 = extractvalue %dx.types.CBufRet.f32 %8443, 0
  %8446 = extractvalue %dx.types.CBufRet.f32 %8443, 1
  %8447 = extractvalue %dx.types.CBufRet.f32 %8443, 2
  %8448 = fcmp fast olt float %8447, -5.000000e-01
  %8449 = fmul fast float %1741, %1740
  %8450 = fadd fast float %8449, %8425
  %8451 = call float @dx.op.dot3.f32(i32 55, float %1742, float %1743, float %1744, float %8422, float %8423, float %8424)  ; Dot3(ax,ay,az,bx,by,bz)
  %8452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8453 = extractvalue %dx.types.CBufRet.i32 %8452, 1
  %8454 = and i32 %8453, 1
  %8455 = icmp ne i32 %8454, 0
  %8456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 179)  ; CBufferLoadLegacy(handle,regIndex)
  %8457 = extractvalue %dx.types.CBufRet.f32 %8456, 2
  %8458 = fcmp fast ogt float %8457, 0.000000e+00
  %8459 = and i1 %8455, %8458
  br i1 %8459, label %8460, label %8866, !dx.controlflow.hints !165

; <label>:8460                                    ; preds = %8420
  %8461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 181)  ; CBufferLoadLegacy(handle,regIndex)
  %8462 = extractvalue %dx.types.CBufRet.f32 %8461, 3
  %8463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %8464 = extractvalue %dx.types.CBufRet.f32 %8463, 2
  %8465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8466 = extractvalue %dx.types.CBufRet.f32 %8465, 2
  %8467 = fsub fast float %8464, %8466
  %8468 = and i32 %8453, 2
  %8469 = extractvalue %dx.types.CBufRet.i32 %8452, 0
  %8470 = call i32 @dx.op.binary.i32(i32 40, i32 %8469, i32 3)  ; UMin(a,b)
  %8471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 176)  ; CBufferLoadLegacy(handle,regIndex)
  %8472 = extractvalue %dx.types.CBufRet.f32 %8471, 0
  %8473 = extractvalue %dx.types.CBufRet.f32 %8471, 1
  %8474 = extractvalue %dx.types.CBufRet.f32 %8465, 0
  %8475 = extractvalue %dx.types.CBufRet.f32 %8465, 1
  %8476 = fsub fast float %8472, %8474
  %8477 = fsub fast float %8473, %8475
  %8478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 177)  ; CBufferLoadLegacy(handle,regIndex)
  %8479 = extractvalue %dx.types.CBufRet.f32 %8478, 0
  %8480 = fcmp fast ogt float %8479, 0.000000e+00
  %8481 = fsub fast float -0.000000e+00, %8476
  %8482 = fsub fast float -0.000000e+00, %8477
  %8483 = call float @dx.op.dot2.f32(i32 54, float %1742, float %1743, float %1742, float %1743)  ; Dot2(ax,ay,bx,by)
  %8484 = call float @dx.op.dot2.f32(i32 54, float %1742, float %1743, float %8481, float %8482)  ; Dot2(ax,ay,bx,by)
  %8485 = fmul fast float %8484, 2.000000e+00
  %8486 = call float @dx.op.dot2.f32(i32 54, float %8481, float %8482, float %8481, float %8482)  ; Dot2(ax,ay,bx,by)
  %8487 = fmul fast float %8479, %8479
  %8488 = fsub fast float %8486, %8487
  %8489 = fmul fast float %8485, %8485
  %8490 = fmul fast float %8483, 4.000000e+00
  %8491 = fmul fast float %8490, %8488
  %8492 = fsub fast float %8489, %8491
  %8493 = fcmp fast ogt float %8492, 0.000000e+00
  br i1 %8493, label %8494, label %8509

; <label>:8494                                    ; preds = %8460
  %8495 = fcmp fast ogt float %8485, 0.000000e+00
  %8496 = call float @dx.op.unary.f32(i32 24, float %8492)  ; Sqrt(value)
  %8497 = fsub fast float -0.000000e+00, %8496
  %8498 = select i1 %8495, float %8496, float %8497
  %8499 = fadd fast float %8498, %8485
  %8500 = fmul float %8499, -5.000000e-01
  %8501 = fdiv fast float %8500, %8483
  %8502 = call float @dx.op.binary.f32(i32 35, float %8501, float 0.000000e+00)  ; FMax(a,b)
  %8503 = call float @dx.op.binary.f32(i32 36, float %8449, float %8502)  ; FMin(a,b)
  %8504 = fdiv fast float %8488, %8500
  %8505 = call float @dx.op.binary.f32(i32 35, float %8504, float 0.000000e+00)  ; FMax(a,b)
  %8506 = call float @dx.op.binary.f32(i32 36, float %8449, float %8505)  ; FMin(a,b)
  %8507 = call float @dx.op.binary.f32(i32 36, float %8503, float %8506)  ; FMin(a,b)
  %8508 = call float @dx.op.binary.f32(i32 35, float %8503, float %8506)  ; FMax(a,b)
  br label %8509

; <label>:8509                                    ; preds = %8494, %8460
  %8510 = phi float [ %8508, %8494 ], [ -1.000000e+00, %8460 ]
  %8511 = phi float [ %8507, %8494 ], [ -1.000000e+00, %8460 ]
  %8512 = phi i1 [ true, %8494 ], [ false, %8460 ]
  %8513 = and i1 %8480, %8512
  br i1 %8513, label %8514, label %8516

; <label>:8514                                    ; preds = %8509
  %8515 = fcmp fast oeq float %8511, %8510
  br i1 %8515, label %8819, label %8517

; <label>:8516                                    ; preds = %8509
  br i1 %8480, label %8819, label %8517

; <label>:8517                                    ; preds = %8516, %8514
  %8518 = phi float [ %8449, %8516 ], [ %8510, %8514 ]
  %8519 = phi float [ 0.000000e+00, %8516 ], [ %8511, %8514 ]
  %8520 = icmp ne i32 %8468, 0
  %8521 = fmul fast float %8518, %1744
  %8522 = fadd fast float %8521, %8462
  %8523 = fmul fast float %8522, %8518
  %8524 = select i1 %8520, float 0.000000e+00, float %8523
  %8525 = fcmp fast oeq float %1744, 0.000000e+00
  %8526 = fdiv fast float %8467, %1744
  %8527 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8526)  ; FMax(a,b)
  %8528 = select i1 %8525, float %8518, float %8527
  %8529 = call float @dx.op.binary.f32(i32 36, float %8518, float %8528)  ; FMin(a,b)
  %8530 = fcmp fast ogt float %1744, 0.000000e+00
  %8531 = fcmp fast olt float %8467, 0.000000e+00
  br i1 %8530, label %8532, label %8589

; <label>:8532                                    ; preds = %8517
  %8533 = icmp eq i32 %8468, 0
  br i1 %8531, label %8534, label %8578

; <label>:8534                                    ; preds = %8532
  %8535 = select i1 %8533, float %8518, float 0.000000e+00
  %8536 = fsub fast float -0.000000e+00, %8535
  %8537 = call float @dx.op.unary.f32(i32 6, float %8536)  ; FAbs(value)
  %8538 = fmul fast float %8535, %1744
  %8539 = fadd fast float %8538, %8462
  %8540 = fmul fast float %8537, %8539
  %8541 = fsub fast float %8524, %8540
  %8542 = fsub fast float %8518, %8537
  %8543 = select i1 %8533, float %8542, float 0.000000e+00
  %8544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8545 = extractvalue %dx.types.CBufRet.f32 %8544, 0
  %8546 = extractvalue %dx.types.CBufRet.f32 %8544, 1
  %8547 = extractvalue %dx.types.CBufRet.f32 %8544, 2
  %8548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8549 = extractvalue %dx.types.CBufRet.f32 %8548, 0
  %8550 = extractvalue %dx.types.CBufRet.f32 %8548, 1
  %8551 = extractvalue %dx.types.CBufRet.f32 %8548, 2
  %8552 = extractvalue %dx.types.CBufRet.f32 %8548, 3
  %8553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8554 = extractvalue %dx.types.CBufRet.f32 %8553, 3
  %8555 = call float @dx.op.binary.f32(i32 36, float %8541, float %8554)  ; FMin(a,b)
  %8556 = fmul fast float %8552, %8543
  %8557 = call float @dx.op.unary.f32(i32 7, float %8556)  ; Saturate(value)
  %8558 = fsub fast float %8549, %8545
  %8559 = fsub fast float %8550, %8546
  %8560 = fsub fast float %8551, %8547
  %8561 = fmul fast float %8557, %8558
  %8562 = fmul fast float %8557, %8559
  %8563 = fmul fast float %8557, %8560
  %8564 = fadd fast float %8561, %8545
  %8565 = fadd fast float %8562, %8546
  %8566 = fadd fast float %8563, %8547
  %8567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8568 = extractvalue %dx.types.CBufRet.f32 %8567, 0
  %8569 = extractvalue %dx.types.CBufRet.f32 %8567, 1
  %8570 = fadd fast float %8569, %8568
  %8571 = call float @dx.op.unary.f32(i32 7, float %8570)  ; Saturate(value)
  %8572 = extractvalue %dx.types.CBufRet.f32 %8567, 2
  %8573 = extractvalue %dx.types.CBufRet.f32 %8567, 3
  %8574 = fadd fast float %8573, %8572
  %8575 = call float @dx.op.unary.f32(i32 7, float %8574)  ; Saturate(value)
  %8576 = fmul fast float %8571, %8555
  %8577 = fmul fast float %8576, %8575
  br label %8819

; <label>:8578                                    ; preds = %8532
  br i1 %8533, label %8579, label %8600

; <label>:8579                                    ; preds = %8578
  %8580 = call float @dx.op.binary.f32(i32 36, float %8529, float %8519)  ; FMin(a,b)
  %8581 = fsub fast float %8529, %8580
  %8582 = fsub fast float %8581, %8518
  %8583 = call float @dx.op.unary.f32(i32 6, float %8582)  ; FAbs(value)
  %8584 = fadd fast float %8581, %8518
  %8585 = fmul fast float %8584, %1744
  %8586 = fadd fast float %8585, %8462
  %8587 = fmul fast float %8586, %8583
  %8588 = fsub fast float %8524, %8587
  br label %8600

; <label>:8589                                    ; preds = %8517
  br i1 %8531, label %8590, label %8600

; <label>:8590                                    ; preds = %8589
  %8591 = call float @dx.op.binary.f32(i32 35, float %8519, float %8529)  ; FMax(a,b)
  %8592 = icmp eq i32 %8468, 0
  %8593 = select i1 %8592, float %8529, float 0.000000e+00
  %8594 = fsub fast float -0.000000e+00, %8593
  %8595 = call float @dx.op.unary.f32(i32 6, float %8594)  ; FAbs(value)
  %8596 = fmul fast float %8593, %1744
  %8597 = fadd fast float %8596, %8462
  %8598 = fmul fast float %8595, %8597
  %8599 = fsub fast float %8524, %8598
  br label %8600

; <label>:8600                                    ; preds = %8590, %8589, %8579, %8578
  %8601 = phi float [ %8519, %8578 ], [ %8519, %8579 ], [ %8591, %8590 ], [ %8519, %8589 ]
  %8602 = phi float [ 0.000000e+00, %8578 ], [ %8583, %8579 ], [ %8595, %8590 ], [ 0.000000e+00, %8589 ]
  %8603 = phi float [ %8524, %8578 ], [ %8588, %8579 ], [ %8599, %8590 ], [ %8524, %8589 ]
  %8604 = phi float [ %8529, %8578 ], [ %8529, %8579 ], [ %8518, %8590 ], [ %8518, %8589 ]
  %8605 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 0
  store float -1.000000e+00, float* %8605, align 4, !tbaa !107, !noalias !166
  %8606 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 1
  store float -1.000000e+00, float* %8606, align 4, !tbaa !107, !noalias !166
  %8607 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 2
  store float -1.000000e+00, float* %8607, align 4, !tbaa !107, !noalias !166
  %8608 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 0
  store float -1.000000e+00, float* %8608, align 4, !tbaa !107, !noalias !166
  %8609 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 1
  store float -1.000000e+00, float* %8609, align 4, !tbaa !107, !noalias !166
  %8610 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 2
  store float -1.000000e+00, float* %8610, align 4, !tbaa !107, !noalias !166
  %8611 = icmp sgt i32 %8470, 0
  br i1 %8611, label %8612, label %8673

; <label>:8612                                    ; preds = %8600
  br label %8613

; <label>:8613                                    ; preds = %8662, %8612
  %8614 = phi i32 [ %8663, %8662 ], [ 0, %8612 ]
  %8615 = phi i32 [ %8664, %8662 ], [ 0, %8612 ]
  %8616 = add nuw i32 %8615, 171
  %8617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 %8616)  ; CBufferLoadLegacy(handle,regIndex)
  %8618 = extractvalue %dx.types.CBufRet.f32 %8617, 0
  %8619 = extractvalue %dx.types.CBufRet.f32 %8617, 1
  %8620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8621 = extractvalue %dx.types.CBufRet.f32 %8620, 0
  %8622 = extractvalue %dx.types.CBufRet.f32 %8620, 1
  %8623 = fsub fast float %8618, %8621
  %8624 = fsub fast float %8619, %8622
  %8625 = extractvalue %dx.types.CBufRet.f32 %8617, 2
  %8626 = fsub fast float -0.000000e+00, %8623
  %8627 = fsub fast float -0.000000e+00, %8624
  %8628 = call float @dx.op.dot2.f32(i32 54, float %1742, float %1743, float %8626, float %8627)  ; Dot2(ax,ay,bx,by)
  %8629 = fmul fast float %8628, 2.000000e+00
  %8630 = call float @dx.op.dot2.f32(i32 54, float %8626, float %8627, float %8626, float %8627)  ; Dot2(ax,ay,bx,by)
  %8631 = fmul fast float %8625, %8625
  %8632 = fsub fast float %8630, %8631
  %8633 = fmul fast float %8629, %8629
  %8634 = fmul fast float %8490, %8632
  %8635 = fsub fast float %8633, %8634
  %8636 = fcmp fast ogt float %8635, 0.000000e+00
  br i1 %8636, label %8637, label %8652

; <label>:8637                                    ; preds = %8613
  %8638 = fcmp fast ogt float %8629, 0.000000e+00
  %8639 = call float @dx.op.unary.f32(i32 24, float %8635)  ; Sqrt(value)
  %8640 = fsub fast float -0.000000e+00, %8639
  %8641 = select i1 %8638, float %8639, float %8640
  %8642 = fadd fast float %8641, %8629
  %8643 = fmul float %8642, -5.000000e-01
  %8644 = fdiv fast float %8643, %8483
  %8645 = call float @dx.op.binary.f32(i32 35, float %8644, float 0.000000e+00)  ; FMax(a,b)
  %8646 = call float @dx.op.binary.f32(i32 36, float %8518, float %8645)  ; FMin(a,b)
  %8647 = fdiv fast float %8632, %8643
  %8648 = call float @dx.op.binary.f32(i32 35, float %8647, float 0.000000e+00)  ; FMax(a,b)
  %8649 = call float @dx.op.binary.f32(i32 36, float %8518, float %8648)  ; FMin(a,b)
  %8650 = call float @dx.op.binary.f32(i32 36, float %8646, float %8649)  ; FMin(a,b)
  %8651 = call float @dx.op.binary.f32(i32 35, float %8646, float %8649)  ; FMax(a,b)
  br label %8652

; <label>:8652                                    ; preds = %8637, %8613
  %8653 = phi float [ %8651, %8637 ], [ -1.000000e+00, %8613 ]
  %8654 = phi float [ %8650, %8637 ], [ -1.000000e+00, %8613 ]
  %8655 = phi i1 [ true, %8637 ], [ false, %8613 ]
  br i1 %8655, label %8656, label %8662

; <label>:8656                                    ; preds = %8652
  %8657 = call float @dx.op.binary.f32(i32 35, float %8601, float %8654)  ; FMax(a,b)
  %8658 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8615
  store float %8657, float* %8658, align 4, !tbaa !107, !noalias !166
  %8659 = call float @dx.op.binary.f32(i32 35, float %8601, float %8653)  ; FMax(a,b)
  %8660 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8615
  store float %8659, float* %8660, align 4, !tbaa !107, !noalias !166
  %8661 = add nsw i32 %8614, 1
  br label %8662

; <label>:8662                                    ; preds = %8656, %8652
  %8663 = phi i32 [ %8661, %8656 ], [ %8614, %8652 ]
  %8664 = add nuw nsw i32 %8615, 1
  %8665 = icmp eq i32 %8664, %8470
  br i1 %8665, label %8666, label %8613

; <label>:8666                                    ; preds = %8662
  %8667 = load float, float* %8607, align 4, !tbaa !107, !alias.scope !182, !noalias !185
  %8668 = load float, float* %8606, align 4, !tbaa !107, !alias.scope !188, !noalias !189
  %8669 = load float, float* %8605, align 4, !tbaa !107, !alias.scope !190, !noalias !191
  %8670 = load float, float* %8610, align 4, !tbaa !107, !alias.scope !192, !noalias !195
  %8671 = load float, float* %8609, align 4, !tbaa !107, !alias.scope !198, !noalias !199
  %8672 = load float, float* %8608, align 4, !tbaa !107, !alias.scope !200, !noalias !201
  br label %8673

; <label>:8673                                    ; preds = %8666, %8600
  %8674 = phi float [ -1.000000e+00, %8600 ], [ %8672, %8666 ]
  %8675 = phi float [ -1.000000e+00, %8600 ], [ %8671, %8666 ]
  %8676 = phi float [ -1.000000e+00, %8600 ], [ %8670, %8666 ]
  %8677 = phi float [ -1.000000e+00, %8600 ], [ %8669, %8666 ]
  %8678 = phi float [ -1.000000e+00, %8600 ], [ %8668, %8666 ]
  %8679 = phi float [ -1.000000e+00, %8600 ], [ %8667, %8666 ]
  %8680 = phi i32 [ 0, %8600 ], [ %8663, %8666 ]
  %8681 = call float @dx.op.binary.f32(i32 36, float %8678, float %8679)  ; FMin(a,b)
  %8682 = call float @dx.op.binary.f32(i32 36, float %8677, float %8681)  ; FMin(a,b)
  %8683 = call float @dx.op.binary.f32(i32 35, float %8677, float %8678)  ; FMax(a,b)
  %8684 = call float @dx.op.binary.f32(i32 36, float %8683, float %8679)  ; FMin(a,b)
  %8685 = call float @dx.op.binary.f32(i32 36, float %8677, float %8678)  ; FMin(a,b)
  %8686 = call float @dx.op.binary.f32(i32 35, float %8685, float %8684)  ; FMax(a,b)
  %8687 = call float @dx.op.binary.f32(i32 35, float %8678, float %8679)  ; FMax(a,b)
  %8688 = call float @dx.op.binary.f32(i32 35, float %8677, float %8687)  ; FMax(a,b)
  store float %8682, float* %8605, align 4, !tbaa !107, !alias.scope !190, !noalias !191
  store float %8686, float* %8606, align 4, !tbaa !107, !alias.scope !188, !noalias !189
  store float %8688, float* %8607, align 4, !tbaa !107, !alias.scope !182, !noalias !185
  %8689 = call float @dx.op.binary.f32(i32 36, float %8675, float %8676)  ; FMin(a,b)
  %8690 = call float @dx.op.binary.f32(i32 36, float %8674, float %8689)  ; FMin(a,b)
  %8691 = call float @dx.op.binary.f32(i32 35, float %8674, float %8675)  ; FMax(a,b)
  %8692 = call float @dx.op.binary.f32(i32 36, float %8691, float %8676)  ; FMin(a,b)
  %8693 = call float @dx.op.binary.f32(i32 36, float %8674, float %8675)  ; FMin(a,b)
  %8694 = call float @dx.op.binary.f32(i32 35, float %8693, float %8692)  ; FMax(a,b)
  %8695 = call float @dx.op.binary.f32(i32 35, float %8675, float %8676)  ; FMax(a,b)
  %8696 = call float @dx.op.binary.f32(i32 35, float %8674, float %8695)  ; FMax(a,b)
  store float %8690, float* %8608, align 4, !tbaa !107, !alias.scope !200, !noalias !201
  store float %8694, float* %8609, align 4, !tbaa !107, !alias.scope !198, !noalias !199
  store float %8696, float* %8610, align 4, !tbaa !107, !alias.scope !192, !noalias !195
  %8697 = sub nsw i32 3, %8680
  %8698 = icmp sgt i32 %8697, 2
  br i1 %8698, label %8699, label %8737

; <label>:8699                                    ; preds = %8673
  %8700 = icmp eq i32 %8468, 0
  %8701 = fsub fast float %8518, %8602
  %8702 = select i1 %8700, float %8701, float %8602
  %8703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8704 = extractvalue %dx.types.CBufRet.f32 %8703, 0
  %8705 = extractvalue %dx.types.CBufRet.f32 %8703, 1
  %8706 = extractvalue %dx.types.CBufRet.f32 %8703, 2
  %8707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8708 = extractvalue %dx.types.CBufRet.f32 %8707, 0
  %8709 = extractvalue %dx.types.CBufRet.f32 %8707, 1
  %8710 = extractvalue %dx.types.CBufRet.f32 %8707, 2
  %8711 = extractvalue %dx.types.CBufRet.f32 %8707, 3
  %8712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8713 = extractvalue %dx.types.CBufRet.f32 %8712, 3
  %8714 = call float @dx.op.binary.f32(i32 36, float %8603, float %8713)  ; FMin(a,b)
  %8715 = fmul fast float %8711, %8702
  %8716 = call float @dx.op.unary.f32(i32 7, float %8715)  ; Saturate(value)
  %8717 = fsub fast float %8708, %8704
  %8718 = fsub fast float %8709, %8705
  %8719 = fsub fast float %8710, %8706
  %8720 = fmul fast float %8716, %8717
  %8721 = fmul fast float %8716, %8718
  %8722 = fmul fast float %8716, %8719
  %8723 = fadd fast float %8720, %8704
  %8724 = fadd fast float %8721, %8705
  %8725 = fadd fast float %8722, %8706
  %8726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8727 = extractvalue %dx.types.CBufRet.f32 %8726, 0
  %8728 = extractvalue %dx.types.CBufRet.f32 %8726, 1
  %8729 = fadd fast float %8728, %8727
  %8730 = call float @dx.op.unary.f32(i32 7, float %8729)  ; Saturate(value)
  %8731 = extractvalue %dx.types.CBufRet.f32 %8726, 2
  %8732 = extractvalue %dx.types.CBufRet.f32 %8726, 3
  %8733 = fadd fast float %8732, %8731
  %8734 = call float @dx.op.unary.f32(i32 7, float %8733)  ; Saturate(value)
  %8735 = fmul fast float %8730, %8714
  %8736 = fmul fast float %8735, %8734
  br label %8819

; <label>:8737                                    ; preds = %8673
  %8738 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8697
  %8739 = load float, float* %8738, align 4, !tbaa !107, !noalias !166
  %8740 = fcmp fast olt float %8739, %8604
  %8741 = icmp sgt i32 %8680, 0
  %8742 = and i1 %8741, %8740
  br i1 %8742, label %8743, label %8780

; <label>:8743                                    ; preds = %8737
  br label %8744

; <label>:8744                                    ; preds = %8773, %8743
  %8745 = phi float [ %8774, %8773 ], [ %8602, %8743 ]
  %8746 = phi float [ %8775, %8773 ], [ %8603, %8743 ]
  %8747 = phi float [ %8755, %8773 ], [ %8739, %8743 ]
  %8748 = phi i32 [ %8752, %8773 ], [ %8697, %8743 ]
  %8749 = getelementptr inbounds [3 x float], [3 x float]* %92, i32 0, i32 %8748
  %8750 = load float, float* %8749, align 4, !tbaa !107, !noalias !166
  %8751 = icmp slt i32 %8748, 2
  %8752 = add nsw i32 %8748, 1
  %8753 = getelementptr inbounds [3 x float], [3 x float]* %91, i32 0, i32 %8752
  %8754 = load float, float* %8753, align 4, !tbaa !107, !noalias !166
  %8755 = select i1 %8751, float %8754, float %8518
  %8756 = call float @dx.op.binary.f32(i32 36, float %8755, float %8750)  ; FMin(a,b)
  %8757 = call float @dx.op.binary.f32(i32 36, float %8604, float %8756)  ; FMin(a,b)
  %8758 = icmp eq i32 %8468, 0
  %8759 = fadd fast float %8757, %8747
  %8760 = fmul fast float %8759, %1744
  %8761 = fadd fast float %8760, %8462
  br i1 %8758, label %8767, label %8762

; <label>:8762                                    ; preds = %8744
  %8763 = fsub fast float %8757, %8747
  %8764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8763)  ; FMax(a,b)
  %8765 = fmul fast float %8764, %8761
  %8766 = fadd fast float %8765, %8746
  br label %8773

; <label>:8767                                    ; preds = %8744
  %8768 = fsub fast float %8747, %8757
  %8769 = call float @dx.op.unary.f32(i32 6, float %8768)  ; FAbs(value)
  %8770 = fadd fast float %8769, %8745
  %8771 = fmul fast float %8769, %8761
  %8772 = fsub fast float %8746, %8771
  br label %8773

; <label>:8773                                    ; preds = %8767, %8762
  %8774 = phi float [ %8764, %8762 ], [ %8770, %8767 ]
  %8775 = phi float [ %8766, %8762 ], [ %8772, %8767 ]
  %8776 = fcmp fast olt float %8755, %8604
  %8777 = icmp slt i32 %8752, 3
  %8778 = and i1 %8777, %8776
  br i1 %8778, label %8744, label %8779

; <label>:8779                                    ; preds = %8773
  br label %8780

; <label>:8780                                    ; preds = %8779, %8737
  %8781 = phi float [ %8602, %8737 ], [ %8774, %8779 ]
  %8782 = phi float [ %8603, %8737 ], [ %8775, %8779 ]
  %8783 = fsub fast float %8518, %8781
  %8784 = select i1 %8520, float %8781, float %8783
  %8785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 178)  ; CBufferLoadLegacy(handle,regIndex)
  %8786 = extractvalue %dx.types.CBufRet.f32 %8785, 0
  %8787 = extractvalue %dx.types.CBufRet.f32 %8785, 1
  %8788 = extractvalue %dx.types.CBufRet.f32 %8785, 2
  %8789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 182)  ; CBufferLoadLegacy(handle,regIndex)
  %8790 = extractvalue %dx.types.CBufRet.f32 %8789, 0
  %8791 = extractvalue %dx.types.CBufRet.f32 %8789, 1
  %8792 = extractvalue %dx.types.CBufRet.f32 %8789, 2
  %8793 = extractvalue %dx.types.CBufRet.f32 %8789, 3
  %8794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 186)  ; CBufferLoadLegacy(handle,regIndex)
  %8795 = extractvalue %dx.types.CBufRet.f32 %8794, 3
  %8796 = call float @dx.op.binary.f32(i32 36, float %8782, float %8795)  ; FMin(a,b)
  %8797 = fmul fast float %8793, %8784
  %8798 = call float @dx.op.unary.f32(i32 7, float %8797)  ; Saturate(value)
  %8799 = fsub fast float %8790, %8786
  %8800 = fsub fast float %8791, %8787
  %8801 = fsub fast float %8792, %8788
  %8802 = fmul fast float %8798, %8799
  %8803 = fmul fast float %8798, %8800
  %8804 = fmul fast float %8798, %8801
  %8805 = fadd fast float %8802, %8786
  %8806 = fadd fast float %8803, %8787
  %8807 = fadd fast float %8804, %8788
  %8808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 185)  ; CBufferLoadLegacy(handle,regIndex)
  %8809 = extractvalue %dx.types.CBufRet.f32 %8808, 0
  %8810 = extractvalue %dx.types.CBufRet.f32 %8808, 1
  %8811 = fadd fast float %8810, %8809
  %8812 = call float @dx.op.unary.f32(i32 7, float %8811)  ; Saturate(value)
  %8813 = extractvalue %dx.types.CBufRet.f32 %8808, 2
  %8814 = extractvalue %dx.types.CBufRet.f32 %8808, 3
  %8815 = fadd fast float %8814, %8813
  %8816 = call float @dx.op.unary.f32(i32 7, float %8815)  ; Saturate(value)
  %8817 = fmul fast float %8812, %8796
  %8818 = fmul fast float %8817, %8816
  br label %8819

; <label>:8819                                    ; preds = %8780, %8699, %8534, %8516, %8514
  %8820 = phi float [ %8543, %8534 ], [ %8702, %8699 ], [ %8784, %8780 ], [ 0.000000e+00, %8514 ], [ 0.000000e+00, %8516 ]
  %8821 = phi float [ %8577, %8534 ], [ %8736, %8699 ], [ %8818, %8780 ], [ 0.000000e+00, %8514 ], [ 0.000000e+00, %8516 ]
  %8822 = phi float [ %8564, %8534 ], [ %8723, %8699 ], [ %8805, %8780 ], [ 0.000000e+00, %8514 ], [ 0.000000e+00, %8516 ]
  %8823 = phi float [ %8565, %8534 ], [ %8724, %8699 ], [ %8806, %8780 ], [ 0.000000e+00, %8514 ], [ 0.000000e+00, %8516 ]
  %8824 = phi float [ %8566, %8534 ], [ %8725, %8699 ], [ %8807, %8780 ], [ 0.000000e+00, %8514 ], [ 0.000000e+00, %8516 ]
  %8825 = fmul fast float %8457, %8821
  %8826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %8827 = extractvalue %dx.types.CBufRet.f32 %8826, 2
  %8828 = fsub fast float %8464, %8827
  %8829 = fcmp fast olt float %8825, -2.000000e+01
  %8830 = call float @dx.op.unary.f32(i32 21, float %8825)  ; Exp(value)
  %8831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8832 = extractvalue %dx.types.CBufRet.f32 %8831, 2
  %8833 = extractvalue %dx.types.CBufRet.f32 %8831, 3
  %8834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %8835 = extractvalue %dx.types.CBufRet.f32 %8834, 2
  %8836 = fmul fast float %8833, %8828
  %8837 = call float @dx.op.unary.f32(i32 7, float %8836)  ; Saturate(value)
  %8838 = fsub fast float 1.000000e+00, %8837
  %8839 = fmul fast float %1744, 5.000000e-01
  %8840 = fadd fast float %8839, 5.000000e-01
  %8841 = call float @dx.op.unary.f32(i32 7, float %8840)  ; Saturate(value)
  %8842 = fsub fast float 1.000000e+00, %8841
  %8843 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8838)  ; FMax(a,b)
  %8844 = fdiv fast float %8842, %8843
  %8845 = fsub fast float %8828, %156
  %8846 = call float @dx.op.unary.f32(i32 6, float %8845)  ; FAbs(value)
  %8847 = fmul fast float %8846, %8832
  %8848 = call float @dx.op.unary.f32(i32 7, float %8844)  ; Saturate(value)
  %8849 = fsub fast float 1.000000e+00, %8847
  %8850 = fmul fast float %8849, %8848
  %8851 = fadd fast float %8850, %8847
  %8852 = fmul fast float %8835, %8828
  %8853 = call float @dx.op.unary.f32(i32 7, float %8852)  ; Saturate(value)
  %8854 = fsub fast float 1.000000e+00, %8851
  %8855 = fmul fast float %8854, %8853
  %8856 = fadd fast float %8855, %8851
  %8857 = call float @dx.op.unary.f32(i32 7, float %8856)  ; Saturate(value)
  %8858 = fadd fast float %8830, -1.000000e+00
  %8859 = select i1 %8829, float -1.000000e+00, float %8858
  %8860 = fmul fast float %8857, %8859
  %8861 = fadd fast float %8860, 1.000000e+00
  %8862 = fsub fast float -0.000000e+00, %8860
  %8863 = fmul fast float %8822, %8862
  %8864 = fmul fast float %8823, %8862
  %8865 = fmul fast float %8824, %8862
  br label %8866

; <label>:8866                                    ; preds = %8819, %8420
  %8867 = phi float [ %8820, %8819 ], [ 0.000000e+00, %8420 ]
  %8868 = phi float [ %8861, %8819 ], [ 1.000000e+00, %8420 ]
  %8869 = phi float [ %8863, %8819 ], [ 0.000000e+00, %8420 ]
  %8870 = phi float [ %8864, %8819 ], [ 0.000000e+00, %8420 ]
  %8871 = phi float [ %8865, %8819 ], [ 0.000000e+00, %8420 ]
  %8872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 183)  ; CBufferLoadLegacy(handle,regIndex)
  %8873 = extractvalue %dx.types.CBufRet.f32 %8872, 1
  %8874 = fsub fast float 1.000000e+00, %8868
  %8875 = fmul fast float %8874, %8450
  %8876 = fmul fast float %8875, %8873
  %8877 = fsub fast float %8450, %8876
  br i1 %8448, label %8878, label %8907, !dx.controlflow.hints !202

; <label>:8878                                    ; preds = %8866
  %8879 = fmul fast float %8451, %8445
  %8880 = fadd fast float %8879, %8446
  %8881 = call float @dx.op.unary.f32(i32 7, float %8880)  ; Saturate(value)
  %8882 = fmul fast float %8427, %8877
  %8883 = fsub fast float -0.000000e+00, %8882
  %8884 = fmul fast float %8428, %8877
  %8885 = fsub fast float -0.000000e+00, %8884
  %8886 = call float @dx.op.unary.f32(i32 21, float %8883)  ; Exp(value)
  %8887 = call float @dx.op.unary.f32(i32 21, float %8885)  ; Exp(value)
  %8888 = call float @dx.op.binary.f32(i32 35, float %8435, float %8886)  ; FMax(a,b)
  %8889 = call float @dx.op.binary.f32(i32 35, float %8435, float %8887)  ; FMax(a,b)
  %8890 = fsub fast float %8889, %8888
  %8891 = fmul fast float %8890, %8881
  %8892 = fadd fast float %8891, %8888
  %8893 = call float @dx.op.unary.f32(i32 7, float %8892)  ; Saturate(value)
  %8894 = fsub fast float %8432, %8437
  %8895 = fsub fast float %8433, %8438
  %8896 = fsub fast float %8434, %8439
  %8897 = fmul fast float %8881, %8894
  %8898 = fmul fast float %8881, %8895
  %8899 = fmul fast float %8881, %8896
  %8900 = fadd fast float %8897, %8437
  %8901 = fadd fast float %8898, %8438
  %8902 = fadd fast float %8899, %8439
  %8903 = fsub fast float 1.000000e+00, %8893
  %8904 = fmul fast float %8903, %8900
  %8905 = fmul fast float %8903, %8901
  %8906 = fmul fast float %8903, %8902
  br label %8966

; <label>:8907                                    ; preds = %8866
  %8908 = fmul fast float %8877, %8444
  %8909 = call float @dx.op.unary.f32(i32 7, float %8908)  ; Saturate(value)
  %8910 = fsub fast float 2.000000e+00, %8909
  %8911 = fmul fast float %8909, 9.921875e-01
  %8912 = fmul fast float %8911, %8910
  %8913 = fadd fast float %8912, 3.906250e-03
  %8914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %62, float %8913, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %8915 = extractvalue %dx.types.ResRet.f32 %8914, 0
  %8916 = fsub fast float %8909, %8915
  %8917 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %8916)  ; FMax(a,b)
  %8918 = fmul fast float %8430, %156
  %8919 = call float @dx.op.unary.f32(i32 6, float %8918)  ; FAbs(value)
  %8920 = fcmp fast ogt float %8919, 0x3EB0C6F7A0000000
  br i1 %8920, label %8921, label %8927, !dx.controlflow.hints !203

; <label>:8921                                    ; preds = %8907
  %8922 = fmul fast float %8918, 0xBFF7154760000000
  %8923 = call float @dx.op.unary.f32(i32 21, float %8922)  ; Exp(value)
  %8924 = fsub fast float 1.000000e+00, %8923
  %8925 = fdiv fast float %8924, %8918
  %8926 = fmul fast float %8925, %8440
  br label %8927

; <label>:8927                                    ; preds = %8921, %8907
  %8928 = phi float [ %8926, %8921 ], [ %8440, %8907 ]
  %8929 = fadd fast float %8928, %8442
  %8930 = fmul fast float %8929, %8917
  %8931 = fmul fast float %8427, %8930
  %8932 = fsub fast float -0.000000e+00, %8931
  %8933 = fmul fast float %8428, %8930
  %8934 = fsub fast float -0.000000e+00, %8933
  %8935 = fmul fast float %8429, %8930
  %8936 = fsub fast float -0.000000e+00, %8935
  %8937 = call float @dx.op.unary.f32(i32 21, float %8932)  ; Exp(value)
  %8938 = call float @dx.op.unary.f32(i32 21, float %8934)  ; Exp(value)
  %8939 = call float @dx.op.unary.f32(i32 21, float %8936)  ; Exp(value)
  %8940 = fmul fast float %8451, %8451
  %8941 = fadd fast float %8940, 1.000000e+00
  %8942 = fmul fast float %8941, 0x3FAE8EC8A0000000
  %8943 = fmul fast float %8942, %8437
  %8944 = fmul fast float %8942, %8438
  %8945 = fmul fast float %8942, %8439
  %8946 = fmul fast float %8451, %8435
  %8947 = fsub fast float 1.000000e+00, %8946
  %8948 = fmul fast float %8435, %8435
  %8949 = fsub fast float 1.000000e+00, %8948
  %8950 = fmul fast float %8949, 0x3FB45F3060000000
  %8951 = fmul fast float %8947, %8947
  %8952 = fdiv fast float 1.000000e+00, %8951
  %8953 = fmul fast float %8950, %8952
  %8954 = fmul fast float %8953, %8432
  %8955 = fmul fast float %8953, %8433
  %8956 = fmul fast float %8953, %8434
  %8957 = fadd fast float %8954, %8943
  %8958 = fadd fast float %8955, %8944
  %8959 = fadd fast float %8956, %8945
  %8960 = fsub fast float 1.000000e+00, %8937
  %8961 = fsub fast float 1.000000e+00, %8938
  %8962 = fsub fast float 1.000000e+00, %8939
  %8963 = fmul fast float %8957, %8960
  %8964 = fmul fast float %8958, %8961
  %8965 = fmul fast float %8959, %8962
  br label %8966

; <label>:8966                                    ; preds = %8927, %8878
  %8967 = phi float [ %8904, %8878 ], [ %8963, %8927 ]
  %8968 = phi float [ %8905, %8878 ], [ %8964, %8927 ]
  %8969 = phi float [ %8906, %8878 ], [ %8965, %8927 ]
  %8970 = phi float [ %8893, %8878 ], [ %8937, %8927 ]
  %8971 = phi float [ %8893, %8878 ], [ %8938, %8927 ]
  %8972 = phi float [ %8893, %8878 ], [ %8939, %8927 ]
  br i1 %8459, label %8973, label %9171, !dx.controlflow.hints !204

; <label>:8973                                    ; preds = %8966
  %8974 = extractvalue %dx.types.CBufRet.f32 %8872, 0
  %8975 = fmul fast float %8974, %8874
  %8976 = fsub fast float %8869, %8967
  %8977 = fsub fast float %8870, %8968
  %8978 = fsub fast float %8871, %8969
  %8979 = fmul fast float %8975, %8976
  %8980 = fmul fast float %8975, %8977
  %8981 = fmul fast float %8975, %8978
  %8982 = fadd fast float %8979, %8967
  %8983 = fadd fast float %8980, %8968
  %8984 = fadd fast float %8981, %8969
  %8985 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8970)  ; FMax(a,b)
  %8986 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8971)  ; FMax(a,b)
  %8987 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8972)  ; FMax(a,b)
  %8988 = call float @dx.op.binary.f32(i32 35, float 0x3EE4F8B580000000, float %8868)  ; FMax(a,b)
  %8989 = call float @dx.op.binary.f32(i32 35, float %8867, float %8877)  ; FMax(a,b)
  %8990 = call float @dx.op.binary.f32(i32 35, float 0x3F1A36E2E0000000, float %8989)  ; FMax(a,b)
  %8991 = fdiv fast float %8867, %8990
  %8992 = call float @dx.op.unary.f32(i32 7, float %8991)  ; Saturate(value)
  %8993 = fdiv fast float %8877, %8990
  %8994 = call float @dx.op.unary.f32(i32 7, float %8993)  ; Saturate(value)
  %8995 = fcmp fast une float %8988, 1.000000e+00
  br i1 %8995, label %8996, label %9009, !dx.controlflow.hints !205

; <label>:8996                                    ; preds = %8973
  %8997 = call float @dx.op.unary.f32(i32 23, float %8988)  ; Log(value)
  %8998 = fmul fast float %8997, 0x3FE62E4300000000
  %8999 = fmul fast float %8869, %8998
  %9000 = fsub fast float -0.000000e+00, %8999
  %9001 = fmul fast float %8870, %8998
  %9002 = fsub fast float -0.000000e+00, %9001
  %9003 = fmul fast float %8871, %8998
  %9004 = fsub fast float -0.000000e+00, %9003
  %9005 = fsub fast float 1.000000e+00, %8988
  %9006 = fdiv fast float %9000, %9005
  %9007 = fdiv fast float %9002, %9005
  %9008 = fdiv fast float %9004, %9005
  br label %9009

; <label>:9009                                    ; preds = %8996, %8973
  %9010 = phi float [ %9006, %8996 ], [ %8869, %8973 ]
  %9011 = phi float [ %9007, %8996 ], [ %8870, %8973 ]
  %9012 = phi float [ %9008, %8996 ], [ %8871, %8973 ]
  %9013 = phi float [ %8998, %8996 ], [ 0.000000e+00, %8973 ]
  %9014 = fcmp fast une float %8985, 1.000000e+00
  br i1 %9014, label %9015, label %9022, !dx.controlflow.hints !206

; <label>:9015                                    ; preds = %9009
  %9016 = call float @dx.op.unary.f32(i32 23, float %8985)  ; Log(value)
  %9017 = fmul fast float %9016, 0x3FE62E4300000000
  %9018 = fmul fast float %8982, %9017
  %9019 = fsub fast float -0.000000e+00, %9018
  %9020 = fsub fast float 1.000000e+00, %8985
  %9021 = fdiv fast float %9019, %9020
  br label %9022

; <label>:9022                                    ; preds = %9015, %9009
  %9023 = phi float [ %9021, %9015 ], [ %8982, %9009 ]
  %9024 = phi float [ %9017, %9015 ], [ 0.000000e+00, %9009 ]
  %9025 = fcmp fast une float %8986, 1.000000e+00
  br i1 %9025, label %9026, label %9033, !dx.controlflow.hints !206

; <label>:9026                                    ; preds = %9022
  %9027 = call float @dx.op.unary.f32(i32 23, float %8986)  ; Log(value)
  %9028 = fmul fast float %9027, 0x3FE62E4300000000
  %9029 = fmul fast float %8983, %9028
  %9030 = fsub fast float -0.000000e+00, %9029
  %9031 = fsub fast float 1.000000e+00, %8986
  %9032 = fdiv fast float %9030, %9031
  br label %9033

; <label>:9033                                    ; preds = %9026, %9022
  %9034 = phi float [ %9032, %9026 ], [ %8983, %9022 ]
  %9035 = phi float [ %9028, %9026 ], [ 0.000000e+00, %9022 ]
  %9036 = fcmp fast une float %8987, 1.000000e+00
  br i1 %9036, label %9037, label %9044, !dx.controlflow.hints !206

; <label>:9037                                    ; preds = %9033
  %9038 = call float @dx.op.unary.f32(i32 23, float %8987)  ; Log(value)
  %9039 = fmul fast float %9038, 0x3FE62E4300000000
  %9040 = fmul fast float %8984, %9039
  %9041 = fsub fast float -0.000000e+00, %9040
  %9042 = fsub fast float 1.000000e+00, %8987
  %9043 = fdiv fast float %9041, %9042
  br label %9044

; <label>:9044                                    ; preds = %9037, %9033
  %9045 = phi float [ %9043, %9037 ], [ %8984, %9033 ]
  %9046 = phi float [ %9039, %9037 ], [ 0.000000e+00, %9033 ]
  %9047 = fmul fast float %9010, %8994
  %9048 = fmul fast float %9011, %8994
  %9049 = fmul fast float %9012, %8994
  %9050 = fmul fast float %9013, %8994
  %9051 = fmul fast float %9023, %8992
  %9052 = fmul fast float %9034, %8992
  %9053 = fmul fast float %9045, %8992
  %9054 = fmul fast float %9024, %8992
  %9055 = fmul fast float %9035, %8992
  %9056 = fmul fast float %9046, %8992
  %9057 = fadd fast float %9051, %9047
  %9058 = fadd fast float %9052, %9048
  %9059 = fadd fast float %9053, %9049
  %9060 = fadd fast float %9054, %9050
  %9061 = fadd fast float %9055, %9050
  %9062 = fadd fast float %9056, %9050
  %9063 = fcmp fast une float %9060, 0.000000e+00
  br i1 %9063, label %9064, label %9071, !dx.controlflow.hints !207

; <label>:9064                                    ; preds = %9044
  %9065 = fmul fast float %9060, 0x3FF7154760000000
  %9066 = call float @dx.op.unary.f32(i32 21, float %9065)  ; Exp(value)
  %9067 = fsub fast float 1.000000e+00, %9066
  %9068 = fmul fast float %9057, %9067
  %9069 = fsub fast float -0.000000e+00, %9068
  %9070 = fdiv fast float %9069, %9060
  br label %9071

; <label>:9071                                    ; preds = %9064, %9044
  %9072 = phi float [ %9066, %9064 ], [ 1.000000e+00, %9044 ]
  %9073 = phi float [ %9070, %9064 ], [ %9057, %9044 ]
  %9074 = fcmp fast une float %9061, 0.000000e+00
  br i1 %9074, label %9075, label %9082, !dx.controlflow.hints !207

; <label>:9075                                    ; preds = %9071
  %9076 = fmul fast float %9061, 0x3FF7154760000000
  %9077 = call float @dx.op.unary.f32(i32 21, float %9076)  ; Exp(value)
  %9078 = fsub fast float 1.000000e+00, %9077
  %9079 = fmul fast float %9058, %9078
  %9080 = fsub fast float -0.000000e+00, %9079
  %9081 = fdiv fast float %9080, %9061
  br label %9082

; <label>:9082                                    ; preds = %9075, %9071
  %9083 = phi float [ %9077, %9075 ], [ 1.000000e+00, %9071 ]
  %9084 = phi float [ %9081, %9075 ], [ %9058, %9071 ]
  %9085 = fcmp fast une float %9062, 0.000000e+00
  br i1 %9085, label %9086, label %9093, !dx.controlflow.hints !207

; <label>:9086                                    ; preds = %9082
  %9087 = fmul fast float %9062, 0x3FF7154760000000
  %9088 = call float @dx.op.unary.f32(i32 21, float %9087)  ; Exp(value)
  %9089 = fsub fast float 1.000000e+00, %9088
  %9090 = fmul fast float %9059, %9089
  %9091 = fsub fast float -0.000000e+00, %9090
  %9092 = fdiv fast float %9091, %9062
  br label %9093

; <label>:9093                                    ; preds = %9086, %9082
  %9094 = phi float [ %9088, %9086 ], [ 1.000000e+00, %9082 ]
  %9095 = phi float [ %9092, %9086 ], [ %9059, %9082 ]
  %9096 = fcmp fast ogt float %8992, %8994
  br i1 %9096, label %9097, label %9117

; <label>:9097                                    ; preds = %9093
  %9098 = fsub fast float 1.000000e+00, %8994
  %9099 = fmul fast float %9010, %9098
  %9100 = fmul fast float %9011, %9098
  %9101 = fmul fast float %9012, %9098
  %9102 = fmul fast float %9013, %9098
  %9103 = fcmp fast une float %9102, 0.000000e+00
  br i1 %9103, label %9104, label %9155, !dx.controlflow.hints !208

; <label>:9104                                    ; preds = %9097
  %9105 = fmul fast float %9102, 0x3FF7154760000000
  %9106 = call float @dx.op.unary.f32(i32 21, float %9105)  ; Exp(value)
  %9107 = fsub fast float 1.000000e+00, %9106
  %9108 = fmul fast float %9099, %9107
  %9109 = fsub fast float -0.000000e+00, %9108
  %9110 = fmul fast float %9100, %9107
  %9111 = fsub fast float -0.000000e+00, %9110
  %9112 = fmul fast float %9101, %9107
  %9113 = fsub fast float -0.000000e+00, %9112
  %9114 = fdiv fast float %9109, %9102
  %9115 = fdiv fast float %9111, %9102
  %9116 = fdiv fast float %9113, %9102
  br label %9155

; <label>:9117                                    ; preds = %9093
  %9118 = fsub fast float 1.000000e+00, %8992
  %9119 = fmul fast float %9023, %9118
  %9120 = fmul fast float %9034, %9118
  %9121 = fmul fast float %9045, %9118
  %9122 = fmul fast float %9024, %9118
  %9123 = fmul fast float %9035, %9118
  %9124 = fmul fast float %9046, %9118
  %9125 = fcmp fast une float %9122, 0.000000e+00
  br i1 %9125, label %9126, label %9133, !dx.controlflow.hints !207

; <label>:9126                                    ; preds = %9117
  %9127 = fmul fast float %9122, 0x3FF7154760000000
  %9128 = call float @dx.op.unary.f32(i32 21, float %9127)  ; Exp(value)
  %9129 = fsub fast float 1.000000e+00, %9128
  %9130 = fmul fast float %9119, %9129
  %9131 = fsub fast float -0.000000e+00, %9130
  %9132 = fdiv fast float %9131, %9122
  br label %9133

; <label>:9133                                    ; preds = %9126, %9117
  %9134 = phi float [ %9132, %9126 ], [ %9119, %9117 ]
  %9135 = phi float [ %9128, %9126 ], [ 1.000000e+00, %9117 ]
  %9136 = fcmp fast une float %9123, 0.000000e+00
  br i1 %9136, label %9137, label %9144, !dx.controlflow.hints !207

; <label>:9137                                    ; preds = %9133
  %9138 = fmul fast float %9123, 0x3FF7154760000000
  %9139 = call float @dx.op.unary.f32(i32 21, float %9138)  ; Exp(value)
  %9140 = fsub fast float 1.000000e+00, %9139
  %9141 = fmul fast float %9120, %9140
  %9142 = fsub fast float -0.000000e+00, %9141
  %9143 = fdiv fast float %9142, %9123
  br label %9144

; <label>:9144                                    ; preds = %9137, %9133
  %9145 = phi float [ %9143, %9137 ], [ %9120, %9133 ]
  %9146 = phi float [ %9139, %9137 ], [ 1.000000e+00, %9133 ]
  %9147 = fcmp fast une float %9124, 0.000000e+00
  br i1 %9147, label %9148, label %9155, !dx.controlflow.hints !207

; <label>:9148                                    ; preds = %9144
  %9149 = fmul fast float %9124, 0x3FF7154760000000
  %9150 = call float @dx.op.unary.f32(i32 21, float %9149)  ; Exp(value)
  %9151 = fsub fast float 1.000000e+00, %9150
  %9152 = fmul fast float %9121, %9151
  %9153 = fsub fast float -0.000000e+00, %9152
  %9154 = fdiv fast float %9153, %9124
  br label %9155

; <label>:9155                                    ; preds = %9148, %9144, %9104, %9097
  %9156 = phi float [ %9154, %9148 ], [ %9116, %9104 ], [ %9101, %9097 ], [ %9121, %9144 ]
  %9157 = phi float [ %9145, %9148 ], [ %9115, %9104 ], [ %9100, %9097 ], [ %9145, %9144 ]
  %9158 = phi float [ %9134, %9148 ], [ %9114, %9104 ], [ %9099, %9097 ], [ %9134, %9144 ]
  %9159 = phi float [ %9150, %9148 ], [ %9106, %9104 ], [ 1.000000e+00, %9097 ], [ 1.000000e+00, %9144 ]
  %9160 = phi float [ %9146, %9148 ], [ %9106, %9104 ], [ 1.000000e+00, %9097 ], [ %9146, %9144 ]
  %9161 = phi float [ %9135, %9148 ], [ %9106, %9104 ], [ 1.000000e+00, %9097 ], [ %9135, %9144 ]
  %9162 = fmul fast float %9161, %9073
  %9163 = fmul fast float %9160, %9084
  %9164 = fmul fast float %9159, %9095
  %9165 = fadd fast float %9162, %9158
  %9166 = fadd fast float %9163, %9157
  %9167 = fadd fast float %9164, %9156
  %9168 = fmul fast float %9161, %9072
  %9169 = fmul fast float %9160, %9083
  %9170 = fmul fast float %9159, %9094
  br label %9171

; <label>:9171                                    ; preds = %9155, %8966
  %9172 = phi float [ %9170, %9155 ], [ %8972, %8966 ]
  %9173 = phi float [ %9169, %9155 ], [ %8971, %8966 ]
  %9174 = phi float [ %9168, %9155 ], [ %8970, %8966 ]
  %9175 = phi float [ %9167, %9155 ], [ %8969, %8966 ]
  %9176 = phi float [ %9166, %9155 ], [ %8968, %8966 ]
  %9177 = phi float [ %9165, %9155 ], [ %8967, %8966 ]
  %9178 = call float @dx.op.dot3.f32(i32 55, float %9174, float %9173, float %9172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9179 = call float @dx.op.dot3.f32(i32 55, float %9177, float %9176, float %9175, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9180 = select i1 %1885, float %9178, float %9174
  %9181 = select i1 %1885, float %9178, float %9173
  %9182 = select i1 %1885, float 1.000000e+00, float %9172
  %9183 = select i1 %1885, float %9179, float %9177
  %9184 = select i1 %1885, float 0.000000e+00, float %9176
  %9185 = select i1 %1885, float 0.000000e+00, float %9175
  %9186 = fmul fast float %9180, %8412
  %9187 = fmul fast float %9181, %8414
  %9188 = fmul fast float %9182, %8416
  %9189 = fadd fast float %9186, %9183
  %9190 = fadd fast float %9187, %9184
  %9191 = fadd fast float %9185, %9188
  %9192 = fmul fast float %7672, %99
  %9193 = fmul fast float %7673, %100
  %9194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %62, float %9192, float %9193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9195 = extractvalue %dx.types.ResRet.f32 %9194, 0
  %9196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %62, float %9192, float %9193, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9197 = extractvalue %dx.types.ResRet.f32 %9196, 0
  %9198 = extractvalue %dx.types.ResRet.f32 %9196, 1
  %9199 = extractvalue %dx.types.ResRet.f32 %9196, 2
  %9200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9201 = extractvalue %dx.types.CBufRet.f32 %9200, 1
  %9202 = fmul fast float %9201, %9197
  %9203 = fmul fast float %9201, %9198
  %9204 = fmul fast float %9201, %9199
  %9205 = fmul fast float %9195, %9174
  %9206 = call float @dx.op.dot3.f32(i32 55, float %9195, float %9195, float %9195, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9207 = call float @dx.op.dot3.f32(i32 55, float %9202, float %9203, float %9204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9208 = select i1 %1885, float %9206, float %9195
  %9209 = select i1 %1885, float 1.000000e+00, float %9195
  %9210 = select i1 %1885, float %9207, float %9202
  %9211 = select i1 %1885, float 0.000000e+00, float %9203
  %9212 = select i1 %1885, float 0.000000e+00, float %9204
  %9213 = fmul fast float %9208, %9189
  %9214 = fmul fast float %9208, %9190
  %9215 = fmul fast float %9209, %9191
  %9216 = fadd fast float %9213, %9210
  %9217 = fadd fast float %9214, %9211
  %9218 = fadd fast float %9212, %9215
  br label %9219

; <label>:9219                                    ; preds = %9171, %8417
  %9220 = phi float [ %8419, %8417 ], [ %9193, %9171 ]
  %9221 = phi float [ %8418, %8417 ], [ %9192, %9171 ]
  %9222 = phi float [ %8412, %8417 ], [ %9216, %9171 ]
  %9223 = phi float [ %8414, %8417 ], [ %9217, %9171 ]
  %9224 = phi float [ %8416, %8417 ], [ %9218, %9171 ]
  %9225 = phi float [ 1.000000e+00, %8417 ], [ %9205, %9171 ]
  %9226 = call float @dx.op.unary.f32(i32 7, float %9221)  ; Saturate(value)
  %9227 = call float @dx.op.unary.f32(i32 7, float %9220)  ; Saturate(value)
  %9228 = select i1 %116, i32 0, i32 2
  %9229 = or i32 %9228, 1
  %9230 = uitofp i32 %9229 to float
  %9231 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %9226, float %9227, float %9230, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9232 = extractvalue %dx.types.ResRet.f32 %9231, 0
  %9233 = extractvalue %dx.types.ResRet.f32 %9231, 1
  %9234 = extractvalue %dx.types.ResRet.f32 %9231, 2
  %9235 = extractvalue %dx.types.ResRet.f32 %9231, 3
  %9236 = add nuw nsw i32 %9228, 2
  %9237 = uitofp i32 %9236 to float
  %9238 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %20, %dx.types.Handle %62, float %9226, float %9227, float %9237, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %9239 = extractvalue %dx.types.ResRet.f32 %9238, 0
  %9240 = extractvalue %dx.types.ResRet.f32 %9238, 1
  %9241 = extractvalue %dx.types.ResRet.f32 %9238, 2
  %9242 = extractvalue %dx.types.ResRet.f32 %9238, 3
  %9243 = call float @dx.op.binary.f32(i32 35, float %9233, float %9234)  ; FMax(a,b)
  %9244 = call float @dx.op.binary.f32(i32 35, float %9232, float %9243)  ; FMax(a,b)
  %9245 = call float @dx.op.binary.f32(i32 35, float %9244, float %9235)  ; FMax(a,b)
  %9246 = call float @dx.op.binary.f32(i32 36, float %9240, float %9241)  ; FMin(a,b)
  %9247 = call float @dx.op.binary.f32(i32 36, float %9239, float %9246)  ; FMin(a,b)
  %9248 = call float @dx.op.binary.f32(i32 36, float %9247, float %9242)  ; FMin(a,b)
  %9249 = fmul fast float %9245, 2.550000e+02
  %9250 = fadd fast float %9249, 0x3F70101020000000
  %9251 = fptoui float %9250 to i32
  %9252 = fmul fast float %9248, 2.550000e+02
  %9253 = fadd fast float %9252, 0x3F70101020000000
  %9254 = fptoui float %9253 to i32
  %9255 = icmp ult i32 %9251, %9254
  br i1 %9255, label %9256, label %9308

; <label>:9256                                    ; preds = %9219
  %9257 = fcmp fast ogt float %87, 9.843750e-01
  %9258 = fadd fast float %88, -4.000000e+00
  %9259 = select i1 %9257, float -4.000000e+00, float %9258
  %9260 = call float @dx.op.binary.f32(i32 35, float %9259, float 0.000000e+00)  ; FMax(a,b)
  %9261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %9262 = extractvalue %dx.types.CBufRet.f32 %9261, 0
  %9263 = fadd fast float %9262, %9260
  %9264 = extractvalue %dx.types.CBufRet.f32 %9261, 2
  %9265 = fmul fast float %9263, %9264
  %9266 = call float @dx.op.unary.f32(i32 23, float %9265)  ; Log(value)
  %9267 = extractvalue %dx.types.CBufRet.f32 %9261, 3
  %9268 = fmul fast float %9267, %9266
  %9269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %9270 = extractvalue %dx.types.CBufRet.f32 %9269, 2
  %9271 = fmul fast float %9268, %9270
  %9272 = call float @dx.op.unary.f32(i32 7, float %9271)  ; Saturate(value)
  %9273 = uitofp i32 %9251 to float
  %9274 = uitofp i32 %9254 to float
  %9275 = fadd fast float %9273, 5.000000e-01
  %9276 = fadd fast float %9274, 5.000000e-01
  %9277 = fmul fast float %9270, %9275
  %9278 = fmul fast float %9270, %9276
  %9279 = fadd fast float %9277, 0x3F0FFB4800000000
  %9280 = fadd fast float %9278, 0xBF0FFB4800000000
  %9281 = call float @dx.op.binary.f32(i32 35, float %9272, float %9279)  ; FMax(a,b)
  %9282 = call float @dx.op.binary.f32(i32 36, float %9281, float %9280)  ; FMin(a,b)
  %9283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %9284 = extractvalue %dx.types.CBufRet.f32 %9283, 1
  %9285 = extractvalue %dx.types.CBufRet.f32 %9283, 2
  %9286 = extractvalue %dx.types.CBufRet.f32 %9283, 0
  %9287 = select i1 %116, float 0.000000e+00, float %9286
  %9288 = fmul fast float %9284, %9282
  %9289 = fadd fast float %9287, %9288
  %9290 = fadd fast float %9287, %9285
  %9291 = fsub fast float %9284, %9285
  %9292 = fadd fast float %9291, %9287
  %9293 = call float @dx.op.binary.f32(i32 35, float %9289, float %9290)  ; FMax(a,b)
  %9294 = call float @dx.op.binary.f32(i32 36, float %9293, float %9292)  ; FMin(a,b)
  %9295 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %60, float %9226, float %9227, float %9294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9296 = extractvalue %dx.types.ResRet.f32 %9295, 0
  %9297 = extractvalue %dx.types.ResRet.f32 %9295, 1
  %9298 = extractvalue %dx.types.ResRet.f32 %9295, 2
  %9299 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %60, float %9226, float %9227, float %9294, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %9300 = extractvalue %dx.types.ResRet.f32 %9299, 0
  %9301 = extractvalue %dx.types.ResRet.f32 %9299, 1
  %9302 = extractvalue %dx.types.ResRet.f32 %9299, 2
  %9303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9304 = extractvalue %dx.types.CBufRet.f32 %9303, 1
  %9305 = fmul fast float %9304, %9300
  %9306 = fmul fast float %9304, %9301
  %9307 = fmul fast float %9304, %9302
  br label %9308

; <label>:9308                                    ; preds = %9256, %9219
  %9309 = phi float [ %9296, %9256 ], [ 1.000000e+00, %9219 ]
  %9310 = phi float [ %9297, %9256 ], [ 1.000000e+00, %9219 ]
  %9311 = phi float [ %9298, %9256 ], [ 1.000000e+00, %9219 ]
  %9312 = phi float [ %9305, %9256 ], [ 0.000000e+00, %9219 ]
  %9313 = phi float [ %9306, %9256 ], [ 0.000000e+00, %9219 ]
  %9314 = phi float [ %9307, %9256 ], [ 0.000000e+00, %9219 ]
  %9315 = fmul fast float %9309, %9225
  %9316 = call float @dx.op.dot3.f32(i32 55, float %9309, float %9310, float %9311, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9317 = call float @dx.op.dot3.f32(i32 55, float %9312, float %9313, float %9314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9318 = select i1 %1885, float %9316, float %9309
  %9319 = select i1 %1885, float %9316, float %9310
  %9320 = select i1 %1885, float 1.000000e+00, float %9311
  %9321 = select i1 %1885, float %9317, float %9312
  %9322 = select i1 %1885, float 0.000000e+00, float %9313
  %9323 = select i1 %1885, float 0.000000e+00, float %9314
  %9324 = fmul fast float %9318, %9222
  %9325 = fmul fast float %9319, %9223
  %9326 = fmul fast float %9320, %9224
  %9327 = fadd fast float %9324, %9321
  %9328 = fadd fast float %9325, %9322
  %9329 = fadd fast float %9323, %9326
  %9330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %9331 = extractvalue %dx.types.CBufRet.i32 %9330, 3
  %9332 = and i32 %9331, 3
  %9333 = icmp ne i32 %9332, 0
  %9334 = and i32 %9331, 4
  %9335 = icmp ne i32 %9334, 0
  %9336 = and i1 %9333, %9335
  %9337 = and i1 %1885, %9336
  br i1 %9337, label %9338, label %9344

; <label>:9338                                    ; preds = %9308
  %9339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %9340 = extractvalue %dx.types.CBufRet.f32 %9339, 1
  %9341 = fadd fast float %9315, -1.000000e+00
  %9342 = fmul fast float %9340, %9341
  %9343 = fadd fast float %9342, 1.000000e+00
  br label %9344

; <label>:9344                                    ; preds = %9338, %9308
  %9345 = phi float [ %9343, %9338 ], [ %9315, %9308 ]
  %9346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9347 = extractvalue %dx.types.CBufRet.f32 %9346, 0
  br i1 %1885, label %9348, label %9362

; <label>:9348                                    ; preds = %9344
  %9349 = fadd fast float %9327, %9328
  %9350 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 13)  ; CBufferLoadLegacy(handle,regIndex)
  %9351 = extractvalue %dx.types.CBufRet.f32 %9350, 3
  %9352 = extractvalue %dx.types.CBufRet.f32 %8396, 1
  %9353 = fsub fast float %8402, %8390
  %9354 = fadd fast float %9353, %8403
  %9355 = fsub fast float %9354, %9352
  %9356 = extractvalue %dx.types.CBufRet.f32 %8396, 2
  %9357 = fmul fast float %9355, %9356
  %9358 = call float @dx.op.unary.f32(i32 7, float %9357)  ; Saturate(value)
  %9359 = fsub fast float %9358, %9351
  %9360 = fmul fast float %9359, %9345
  %9361 = fadd fast float %9360, %9351
  br label %9365

; <label>:9362                                    ; preds = %9344
  %9363 = fmul fast float %9347, %9328
  %9364 = fmul fast float %9347, %9329
  br label %9365

; <label>:9365                                    ; preds = %9362, %9348
  %9366 = phi float [ %9349, %9348 ], [ %9327, %9362 ]
  %9367 = phi float [ %9361, %9348 ], [ %9363, %9362 ]
  %9368 = phi float [ 1.000000e+00, %9348 ], [ %9364, %9362 ]
  %9369 = fmul float %9347, %9366
  switch i32 %8317, label %9667 [
    i32 0, label %9682
    i32 1, label %9370
    i32 2, label %9371
    i32 3, label %9383
    i32 4, label %9392
    i32 5, label %9393
    i32 6, label %9394
    i32 12, label %9395
    i32 13, label %9396
    i32 14, label %9408
    i32 15, label %9420
    i32 16, label %9432
    i32 17, label %9433
    i32 63, label %9666
    i32 18, label %9434
    i32 25, label %9456
    i32 27, label %9457
    i32 28, label %9458
    i32 29, label %9459
    i32 31, label %9460
    i32 32, label %9483
    i32 33, label %9542
    i32 37, label %9560
    i32 38, label %9561
    i32 39, label %9570
    i32 40, label %9593
    i32 41, label %9597
    i32 52, label %9598
    i32 53, label %9599
    i32 54, label %9600
    i32 55, label %9601
    i32 56, label %9602
    i32 57, label %9604
    i32 58, label %9606
    i32 59, label %9644
    i32 60, label %9646
    i32 61, label %9648
    i32 64, label %9650
    i32 62, label %9665
  ]

; <label>:9370                                    ; preds = %9365
  br label %9667

; <label>:9371                                    ; preds = %9365
  %9372 = call float @dx.op.dot3.f32(i32 55, float %1714, float %1715, float %1716, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %9373 = call float @dx.op.unary.f32(i32 25, float %9372)  ; Rsqrt(value)
  %9374 = fmul fast float %1714, 5.000000e-01
  %9375 = fmul fast float %9374, %9373
  %9376 = fmul fast float %1715, 5.000000e-01
  %9377 = fmul fast float %9376, %9373
  %9378 = fmul fast float %1716, 5.000000e-01
  %9379 = fmul fast float %9378, %9373
  %9380 = fadd fast float %9375, 5.000000e-01
  %9381 = fadd fast float %9377, 5.000000e-01
  %9382 = fadd fast float %9379, 5.000000e-01
  br label %9667

; <label>:9383                                    ; preds = %9365
  %9384 = fcmp fast ole float %1843, 0x3FA4B5DCC0000000
  %9385 = fmul fast float %1843, 0x3FB3D07220000000
  %9386 = fadd fast float %1843, 0x3FAC28F5C0000000
  %9387 = fmul fast float %9386, 0x3FEE54EDE0000000
  %9388 = call float @dx.op.unary.f32(i32 23, float %9387)  ; Log(value)
  %9389 = fmul fast float %9388, 0x4003333340000000
  %9390 = call float @dx.op.unary.f32(i32 21, float %9389)  ; Exp(value)
  %9391 = select i1 %9384, float %9385, float %9390
  br label %9667

; <label>:9392                                    ; preds = %9365
  br label %9667

; <label>:9393                                    ; preds = %9365
  br label %9667

; <label>:9394                                    ; preds = %9365
  br label %9667

; <label>:9395                                    ; preds = %9365
  br label %9667

; <label>:9396                                    ; preds = %9365
  %9397 = and i32 %8386, 1023
  %9398 = uitofp i32 %9397 to float
  %9399 = lshr i32 %8386, 10
  %9400 = and i32 %9399, 1023
  %9401 = uitofp i32 %9400 to float
  %9402 = lshr i32 %8386, 20
  %9403 = and i32 %9402, 1023
  %9404 = uitofp i32 %9403 to float
  %9405 = fmul fast float %9398, 0x3F50040100000000
  %9406 = fmul fast float %9401, 0x3F50040100000000
  %9407 = fmul fast float %9404, 0x3F50040100000000
  br label %9667

; <label>:9408                                    ; preds = %9365
  %9409 = and i32 %8386, 1023
  %9410 = uitofp i32 %9409 to float
  %9411 = lshr i32 %8386, 10
  %9412 = and i32 %9411, 1023
  %9413 = uitofp i32 %9412 to float
  %9414 = lshr i32 %8386, 20
  %9415 = and i32 %9414, 1023
  %9416 = uitofp i32 %9415 to float
  %9417 = fmul fast float %9410, 0x3F50040100000000
  %9418 = fmul fast float %9413, 0x3F50040100000000
  %9419 = fmul fast float %9416, 0x3F50040100000000
  br label %9667

; <label>:9420                                    ; preds = %9365
  %9421 = and i32 %8386, 1023
  %9422 = uitofp i32 %9421 to float
  %9423 = lshr i32 %8386, 10
  %9424 = and i32 %9423, 1023
  %9425 = uitofp i32 %9424 to float
  %9426 = lshr i32 %8386, 20
  %9427 = and i32 %9426, 1023
  %9428 = uitofp i32 %9427 to float
  %9429 = fmul fast float %9422, 0x3F50040100000000
  %9430 = fmul fast float %9425, 0x3F50040100000000
  %9431 = fmul fast float %9428, 0x3F50040100000000
  br label %9667

; <label>:9432                                    ; preds = %9365
  br label %9667

; <label>:9433                                    ; preds = %9365
  br label %9667

; <label>:9434                                    ; preds = %9365
  %9435 = fcmp fast ogt float %1735, 0x3FB99999A0000000
  %9436 = fcmp fast ogt float %1736, 0x3FB99999A0000000
  %9437 = or i1 %9435, %9436
  %9438 = fcmp fast ogt float %1737, 0x3FB99999A0000000
  %9439 = or i1 %9437, %9438
  %9440 = fcmp fast olt float %1735, 0x3FB99999A0000000
  %9441 = fcmp fast olt float %1736, 0x3FB99999A0000000
  %9442 = or i1 %9440, %9441
  %9443 = fcmp fast olt float %1737, 0x3FB99999A0000000
  %9444 = or i1 %9442, %9443
  %9445 = fadd fast float %1735, %1726
  %9446 = fcmp fast ogt float %9445, 1.000000e+00
  %9447 = fadd fast float %1736, %1727
  %9448 = fcmp fast ogt float %9447, 1.000000e+00
  %9449 = or i1 %9446, %9448
  %9450 = fadd fast float %1737, %1728
  %9451 = fcmp fast ogt float %9450, 1.000000e+00
  %9452 = or i1 %9449, %9451
  %9453 = select i1 %9452, float 1.000000e+00, float 0.000000e+00
  %9454 = and i1 %9439, %9444
  %9455 = select i1 %9454, float 1.000000e+00, float 0.000000e+00
  br label %9667

; <label>:9456                                    ; preds = %9365
  br label %9667

; <label>:9457                                    ; preds = %9365
  br label %9667

; <label>:9458                                    ; preds = %9365
  br label %9667

; <label>:9459                                    ; preds = %9365
  br label %9667

; <label>:9460                                    ; preds = %9365
  %9461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9462 = extractvalue %dx.types.CBufRet.f32 %9461, 0
  %9463 = extractvalue %dx.types.CBufRet.f32 %9461, 2
  %9464 = extractvalue %dx.types.CBufRet.f32 %9461, 3
  %9465 = fcmp fast olt float %1843, %9462
  br i1 %9465, label %9466, label %9480

; <label>:9466                                    ; preds = %11301, %11299, %9480, %9460
  %9467 = phi i32 [ 0, %9460 ], [ 1, %9480 ], [ 2, %11299 ], [ 3, %11301 ]
  %9468 = mul i32 %9467, 3
  %9469 = add i32 0, %9468
  %9470 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9469
  %9471 = load float, float* %9470, align 4
  %9472 = mul i32 %9467, 3
  %9473 = add i32 1, %9472
  %9474 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9473
  %9475 = load float, float* %9474, align 4
  %9476 = mul i32 %9467, 3
  %9477 = add i32 2, %9476
  %9478 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9477
  %9479 = load float, float* %9478, align 4
  br label %9667

; <label>:9480                                    ; preds = %9460
  %9481 = extractvalue %dx.types.CBufRet.f32 %9461, 1
  %9482 = fcmp fast olt float %1843, %9481
  br i1 %9482, label %9466, label %11299

; <label>:9483                                    ; preds = %9365
  %9484 = fcmp fast ole float %1726, 0x3F69A5C380000000
  %9485 = fcmp fast ole float %1727, 0x3F69A5C380000000
  %9486 = fcmp fast ole float %1728, 0x3F69A5C380000000
  %9487 = fmul fast float %1726, 0x4029D70A40000000
  %9488 = fmul fast float %1727, 0x4029D70A40000000
  %9489 = fmul fast float %1728, 0x4029D70A40000000
  %9490 = call float @dx.op.unary.f32(i32 23, float %1726)  ; Log(value)
  %9491 = call float @dx.op.unary.f32(i32 23, float %1727)  ; Log(value)
  %9492 = call float @dx.op.unary.f32(i32 23, float %1728)  ; Log(value)
  %9493 = fmul fast float %9490, 0x3FDAAAAAA0000000
  %9494 = fmul fast float %9491, 0x3FDAAAAAA0000000
  %9495 = fmul fast float %9492, 0x3FDAAAAAA0000000
  %9496 = call float @dx.op.unary.f32(i32 21, float %9493)  ; Exp(value)
  %9497 = call float @dx.op.unary.f32(i32 21, float %9494)  ; Exp(value)
  %9498 = call float @dx.op.unary.f32(i32 21, float %9495)  ; Exp(value)
  %9499 = fmul fast float %9496, 0x3FF0E147A0000000
  %9500 = fmul fast float %9497, 0x3FF0E147A0000000
  %9501 = fmul fast float %9498, 0x3FF0E147A0000000
  %9502 = fadd fast float %9499, 0xBFAC28F5C0000000
  %9503 = fadd fast float %9500, 0xBFAC28F5C0000000
  %9504 = fadd fast float %9501, 0xBFAC28F5C0000000
  %9505 = select i1 %9484, float %9487, float %9502
  %9506 = select i1 %9485, float %9488, float %9503
  %9507 = select i1 %9486, float %9489, float %9504
  %9508 = call float @dx.op.dot3.f32(i32 55, float %9505, float %9506, float %9507, float 0x3FD3333340000000, float 0x3FE2E147A0000000, float 0x3FBC28F5C0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %9509 = fcmp fast olt float %9508, 0x3FA0101020000000
  br i1 %9509, label %9518, label %9510

; <label>:9510                                    ; preds = %9483
  %9511 = fcmp fast ogt float %9508, 0x3FEEFEFF00000000
  br i1 %9511, label %9518, label %9512

; <label>:9512                                    ; preds = %9510
  %9513 = fcmp fast ogt float %9508, 0x3FEF5F5F60000000
  br i1 %9513, label %9518, label %9514

; <label>:9514                                    ; preds = %9512
  %9515 = fadd fast float %9508, %9508
  %9516 = fcmp fast ogt float %9515, 2.550000e+02
  br i1 %9516, label %9517, label %9518

; <label>:9517                                    ; preds = %9514
  br label %9518

; <label>:9518                                    ; preds = %9517, %9514, %9512, %9510, %9483
  %9519 = phi float [ 1.000000e+00, %9517 ], [ %9369, %9514 ], [ 1.000000e+00, %9483 ], [ 0x3FBD1D1D20000000, %9510 ], [ 0.000000e+00, %9512 ]
  %9520 = phi float [ 0.000000e+00, %9517 ], [ %9367, %9514 ], [ 0x3FE6666660000000, %9483 ], [ 1.000000e+00, %9510 ], [ 0.000000e+00, %9512 ]
  %9521 = phi float [ 1.000000e+00, %9517 ], [ %9368, %9514 ], [ 0.000000e+00, %9483 ], [ 0x3FDD5D5D60000000, %9510 ], [ 1.000000e+00, %9512 ]
  %9522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %9523 = extractvalue %dx.types.CBufRet.f32 %9522, 3
  %9524 = fmul fast float %9523, 8.000000e+00
  %9525 = fmul fast float %100, 5.000000e+02
  %9526 = fmul fast float %9525, %7673
  %9527 = fsub fast float %9526, %9524
  %9528 = call float @dx.op.unary.f32(i32 13, float %9527)  ; Sin(value)
  %9529 = fmul fast float %9528, %9528
  %9530 = fmul fast float %9529, 2.000000e+00
  %9531 = fadd fast float %9530, -1.000000e+00
  %9532 = call float @dx.op.unary.f32(i32 7, float %9531)  ; Saturate(value)
  %9533 = fsub fast float %9519, %9369
  %9534 = fsub fast float %9520, %9367
  %9535 = fsub fast float %9521, %9368
  %9536 = fmul fast float %9532, %9533
  %9537 = fmul fast float %9532, %9534
  %9538 = fmul fast float %9532, %9535
  %9539 = fadd fast float %9536, %9369
  %9540 = fadd fast float %9537, %9367
  %9541 = fadd fast float %9538, %9368
  br label %9667

; <label>:9542                                    ; preds = %9365
  %9543 = fcmp fast olt float %88, 1.280000e+02
  br i1 %9543, label %9544, label %9558

; <label>:9544                                    ; preds = %11317, %11315, %11313, %11311, %11309, %11307, %11305, %11303, %9558, %9542
  %9545 = phi i32 [ 0, %9542 ], [ 1, %9558 ], [ 2, %11303 ], [ 3, %11305 ], [ 4, %11307 ], [ 5, %11309 ], [ 6, %11311 ], [ 7, %11313 ], [ 8, %11315 ], [ 9, %11317 ]
  %9546 = mul i32 %9545, 3
  %9547 = add i32 0, %9546
  %9548 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9547
  %9549 = load float, float* %9548, align 4
  %9550 = mul i32 %9545, 3
  %9551 = add i32 1, %9550
  %9552 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9551
  %9553 = load float, float* %9552, align 4
  %9554 = mul i32 %9545, 3
  %9555 = add i32 2, %9554
  %9556 = getelementptr [33 x float], [33 x float]* @"\01?colors@?2??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9555
  %9557 = load float, float* %9556, align 4
  br label %9667

; <label>:9558                                    ; preds = %9542
  %9559 = fcmp fast olt float %88, 2.560000e+02
  br i1 %9559, label %9544, label %11303

; <label>:9560                                    ; preds = %9365
  br label %9667

; <label>:9561                                    ; preds = %9365
  %9562 = bitcast i32 %8386 to float
  %9563 = fcmp fast ogt float %9562, 0.000000e+00
  %9564 = select i1 %9563, float 0.000000e+00, float 1.000000e+00
  %9565 = fcmp fast olt float %9562, 1.000000e+00
  %9566 = select i1 %9565, float 1.000000e+00, float 0.000000e+00
  %9567 = select i1 %9565, float %9564, float 0.000000e+00
  %9568 = fmul fast float %9566, %1843
  %9569 = fmul fast float %9567, %1843
  br label %9667

; <label>:9570                                    ; preds = %9365
  %9571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 247)  ; CBufferLoadLegacy(handle,regIndex)
  %9572 = extractvalue %dx.types.CBufRet.f32 %9571, 0
  %9573 = extractvalue %dx.types.CBufRet.f32 %9571, 2
  %9574 = extractvalue %dx.types.CBufRet.f32 %9571, 3
  %9575 = fcmp fast olt float %8407, %9572
  br i1 %9575, label %9576, label %9590

; <label>:9576                                    ; preds = %11321, %11319, %9590, %9570
  %9577 = phi i32 [ 0, %9570 ], [ 1, %9590 ], [ 2, %11319 ], [ 3, %11321 ]
  %9578 = mul i32 %9577, 3
  %9579 = add i32 0, %9578
  %9580 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9579
  %9581 = load float, float* %9580, align 4
  %9582 = mul i32 %9577, 3
  %9583 = add i32 1, %9582
  %9584 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9583
  %9585 = load float, float* %9584, align 4
  %9586 = mul i32 %9577, 3
  %9587 = add i32 2, %9586
  %9588 = getelementptr [15 x float], [15 x float]* @"\01?colors@?3??Debug_Material@@YAXUPixelInput@@ULModelInput@@ULightingOutput@@V?$vector@M$03@@AIAV?$vector@M$02@@@Z@3QBV6@B.v.1dim", i32 0, i32 %9587
  %9589 = load float, float* %9588, align 4
  br label %9667

; <label>:9590                                    ; preds = %9570
  %9591 = extractvalue %dx.types.CBufRet.f32 %9571, 1
  %9592 = fcmp fast olt float %8407, %9591
  br i1 %9592, label %9576, label %11319

; <label>:9593                                    ; preds = %9365
  %9594 = fadd fast float %8407, -5.000000e-01
  %9595 = fmul fast float %9594, 2.000000e+00
  %9596 = call float @dx.op.unary.f32(i32 7, float %9595)  ; Saturate(value)
  br label %9667

; <label>:9597                                    ; preds = %9365
  br label %9667

; <label>:9598                                    ; preds = %9365
  br label %9667

; <label>:9599                                    ; preds = %9365
  br label %9667

; <label>:9600                                    ; preds = %9365
  br label %9667

; <label>:9601                                    ; preds = %9365
  br label %9667

; <label>:9602                                    ; preds = %9365
  %9603 = bitcast i32 %8386 to float
  br label %9667

; <label>:9604                                    ; preds = %9365
  %9605 = bitcast i32 %8386 to float
  br label %9667

; <label>:9606                                    ; preds = %9365
  %9607 = and i32 %8386, 65535
  %9608 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9607)  ; LegacyF16ToF32(value)
  %9609 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9610 = fptosi float %9609 to i32
  %9611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %9612 = extractvalue %dx.types.CBufRet.f32 %9611, 0
  %9613 = extractvalue %dx.types.CBufRet.f32 %9611, 1
  %9614 = extractvalue %dx.types.CBufRet.f32 %9611, 2
  %9615 = fadd fast float %9612, %154
  %9616 = fadd fast float %9613, %155
  %9617 = fadd fast float %9614, %156
  %9618 = fptosi float %9615 to i32
  %9619 = fptosi float %9616 to i32
  %9620 = fptosi float %9617 to i32
  %9621 = xor i32 %9618, %9619
  %9622 = lshr i32 %9621, 1
  %9623 = and i32 %9622, 1
  %9624 = lshr i32 %9620, 1
  %9625 = and i32 %9624, 1
  %9626 = xor i32 %9625, 1
  %9627 = icmp ne i32 %9623, %9626
  switch i32 %9610, label %9667 [
    i32 -1, label %9628
    i32 -2, label %9629
    i32 -3, label %9631
    i32 -4, label %9633
    i32 -5, label %9635
    i32 -6, label %9636
    i32 -7, label %9637
  ]

; <label>:9628                                    ; preds = %9606
  br label %9667

; <label>:9629                                    ; preds = %9606
  %9630 = select i1 %9627, float 1.000000e+00, float 0.000000e+00
  br label %9667

; <label>:9631                                    ; preds = %9606
  %9632 = select i1 %9627, float 1.000000e+00, float 0.000000e+00
  br label %9667

; <label>:9633                                    ; preds = %9606
  %9634 = select i1 %9627, float 1.000000e+00, float 0.000000e+00
  br label %9667

; <label>:9635                                    ; preds = %9606
  br label %9667

; <label>:9636                                    ; preds = %9606
  br label %9667

; <label>:9637                                    ; preds = %9606
  %9638 = lshr i32 %8386, 16
  %9639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9638)  ; LegacyF16ToF32(value)
  %9640 = fmul fast float %9639, 0x3FD5555560000000
  %9641 = fsub fast float 1.000000e+00, %9640
  %9642 = fmul fast float %9640, %9608
  %9643 = fmul fast float %9641, %9608
  br label %9667

; <label>:9644                                    ; preds = %9365
  %9645 = bitcast i32 %8386 to float
  br label %9667

; <label>:9646                                    ; preds = %9365
  %9647 = bitcast i32 %8386 to float
  br label %9667

; <label>:9648                                    ; preds = %9365
  %9649 = bitcast i32 %8386 to float
  br label %9667

; <label>:9650                                    ; preds = %9365
  %9651 = and i32 %8386, 1023
  %9652 = uitofp i32 %9651 to float
  %9653 = lshr i32 %8386, 10
  %9654 = and i32 %9653, 1023
  %9655 = uitofp i32 %9654 to float
  %9656 = lshr i32 %8386, 20
  %9657 = and i32 %9656, 1023
  %9658 = uitofp i32 %9657 to float
  %9659 = fmul fast float %9652, 0x3F60040100000000
  %9660 = fmul fast float %9655, 0x3F60040100000000
  %9661 = fmul fast float %9658, 0x3F60040100000000
  %9662 = fadd fast float %9659, -1.000000e+00
  %9663 = fadd fast float %9660, -1.000000e+00
  %9664 = fadd fast float %9661, -1.000000e+00
  br label %9667

; <label>:9665                                    ; preds = %9365
  br label %9667

; <label>:9666                                    ; preds = %9365
  br label %9667

; <label>:9667                                    ; preds = %11321, %11317, %11301, %9666, %9665, %9650, %9648, %9646, %9644, %9637, %9636, %9635, %9633, %9631, %9629, %9628, %9606, %9604, %9602, %9601, %9600, %9599, %9598, %9597, %9593, %9576, %9561, %9560, %9544, %9518, %9466, %9459, %9458, %9457, %9456, %9434, %9433, %9432, %9420, %9408, %9396, %9395, %9394, %9393, %9392, %9383, %9371, %9370, %9365
  %9668 = phi float [ %9369, %9365 ], [ 0.000000e+00, %9665 ], [ %9662, %9650 ], [ %9649, %9648 ], [ %9647, %9646 ], [ %9645, %9644 ], [ %9369, %9606 ], [ 0.000000e+00, %9637 ], [ %9608, %9636 ], [ %9608, %9635 ], [ 0.000000e+00, %9633 ], [ %9632, %9631 ], [ %9630, %9629 ], [ %9608, %9628 ], [ %9605, %9604 ], [ %9603, %9602 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9600 ], [ 0.000000e+00, %9599 ], [ %154, %9597 ], [ %9596, %9593 ], [ %9568, %9561 ], [ 0.000000e+00, %9560 ], [ %9539, %9518 ], [ 0.000000e+00, %9459 ], [ 0.000000e+00, %9458 ], [ 0.000000e+00, %9457 ], [ 1.000000e+00, %9456 ], [ 0.000000e+00, %9666 ], [ 1.000000e+00, %9433 ], [ 5.000000e-01, %9432 ], [ %9429, %9420 ], [ %9417, %9408 ], [ %9405, %9396 ], [ %1846, %9395 ], [ %1844, %9394 ], [ %1735, %9393 ], [ %1672, %9392 ], [ %9391, %9383 ], [ %9380, %9371 ], [ %1726, %9370 ], [ %9471, %9466 ], [ %9549, %9544 ], [ %9581, %9576 ], [ 0.000000e+00, %9598 ], [ 1.000000e+00, %11301 ], [ 1.000000e+00, %11317 ], [ 1.000000e+00, %11321 ], [ %9453, %9434 ]
  %9669 = phi float [ %9367, %9365 ], [ 0.000000e+00, %9665 ], [ %9663, %9650 ], [ %9649, %9648 ], [ %9647, %9646 ], [ %9645, %9644 ], [ %9367, %9606 ], [ %9642, %9637 ], [ %9608, %9636 ], [ %9608, %9635 ], [ 0.000000e+00, %9633 ], [ 0.000000e+00, %9631 ], [ 0.000000e+00, %9629 ], [ %9608, %9628 ], [ %9605, %9604 ], [ %9603, %9602 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9600 ], [ 0.000000e+00, %9599 ], [ %155, %9597 ], [ %9596, %9593 ], [ %1843, %9561 ], [ 0.000000e+00, %9560 ], [ %9540, %9518 ], [ 1.000000e+00, %9459 ], [ 1.000000e+00, %9458 ], [ 1.000000e+00, %9457 ], [ 0x3FE6666660000000, %9456 ], [ 0.000000e+00, %9666 ], [ 1.000000e+00, %9433 ], [ 5.000000e-01, %9432 ], [ %9430, %9420 ], [ %9418, %9408 ], [ %9406, %9396 ], [ %1846, %9395 ], [ %1844, %9394 ], [ %1736, %9393 ], [ %1673, %9392 ], [ %9391, %9383 ], [ %9381, %9371 ], [ %1727, %9370 ], [ %9475, %9466 ], [ %9553, %9544 ], [ %9585, %9576 ], [ 0.000000e+00, %9598 ], [ 0.000000e+00, %11301 ], [ 0.000000e+00, %11317 ], [ 0.000000e+00, %11321 ], [ 0.000000e+00, %9434 ]
  %9670 = phi float [ %9368, %9365 ], [ 0.000000e+00, %9665 ], [ %9664, %9650 ], [ %9649, %9648 ], [ %9647, %9646 ], [ %9645, %9644 ], [ %9368, %9606 ], [ %9643, %9637 ], [ %9608, %9636 ], [ 0.000000e+00, %9635 ], [ %9634, %9633 ], [ 0.000000e+00, %9631 ], [ %9630, %9629 ], [ %9608, %9628 ], [ %9605, %9604 ], [ %9603, %9602 ], [ 0.000000e+00, %9601 ], [ 0.000000e+00, %9600 ], [ 0.000000e+00, %9599 ], [ %156, %9597 ], [ %9596, %9593 ], [ %9569, %9561 ], [ 0.000000e+00, %9560 ], [ %9541, %9518 ], [ 0.000000e+00, %9459 ], [ 0.000000e+00, %9458 ], [ 0.000000e+00, %9457 ], [ 0.000000e+00, %9456 ], [ 0.000000e+00, %9666 ], [ 1.000000e+00, %9433 ], [ 5.000000e-01, %9432 ], [ %9431, %9420 ], [ %9419, %9408 ], [ %9407, %9396 ], [ %1846, %9395 ], [ %1844, %9394 ], [ %1737, %9393 ], [ %1674, %9392 ], [ %9391, %9383 ], [ %9382, %9371 ], [ %1728, %9370 ], [ %9479, %9466 ], [ %9557, %9544 ], [ %9589, %9576 ], [ 1.000000e+00, %9598 ], [ 0.000000e+00, %11301 ], [ 0.000000e+00, %11317 ], [ 0.000000e+00, %11321 ], [ %9455, %9434 ]
  %9671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9672 = extractvalue %dx.types.CBufRet.f32 %9671, 3
  %9673 = fsub fast float %9668, %9369
  %9674 = fsub fast float %9669, %9367
  %9675 = fsub fast float %9670, %9368
  %9676 = fmul fast float %9672, %9673
  %9677 = fmul fast float %9672, %9674
  %9678 = fmul fast float %9672, %9675
  %9679 = fadd fast float %9676, %9369
  %9680 = fadd fast float %9677, %9367
  %9681 = fadd fast float %9678, %9368
  br label %9682

; <label>:9682                                    ; preds = %9667, %9365
  %9683 = phi float [ %9679, %9667 ], [ %9369, %9365 ]
  %9684 = phi float [ %9680, %9667 ], [ %9367, %9365 ]
  %9685 = phi float [ %9681, %9667 ], [ %9368, %9365 ]
  %9686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 241)  ; CBufferLoadLegacy(handle,regIndex)
  %9687 = extractvalue %dx.types.CBufRet.f32 %9686, 0
  %9688 = bitcast float %9687 to i32
  %9689 = lshr i32 %9688, 8
  %9690 = and i32 %9689, 255
  %9691 = uitofp i32 %9690 to float
  %9692 = fptoui float %9691 to i32
  switch i32 %9692, label %9929 [
    i32 1, label %9693
    i32 2, label %9699
    i32 3, label %9705
    i32 4, label %9711
    i32 5, label %9717
    i32 6, label %9723
    i32 7, label %9729
    i32 8, label %9735
    i32 9, label %9741
    i32 10, label %9743
    i32 11, label %9764
    i32 12, label %9785
    i32 13, label %9797
    i32 14, label %9812
    i32 15, label %9817
    i32 16, label %9819
    i32 17, label %9821
    i32 18, label %9823
    i32 19, label %9825
    i32 20, label %9836
    i32 21, label %9847
    i32 22, label %9859
    i32 23, label %9893
    i32 24, label %9908
    i32 25, label %9923
    i32 26, label %9925
    i32 27, label %9927
  ]

; <label>:9693                                    ; preds = %9682
  %9694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9695 = extractvalue %dx.types.CBufRet.f32 %9694, 0
  %9696 = fmul fast float %9695, %7659
  %9697 = fmul fast float %9695, %7660
  %9698 = fmul fast float %9695, %7661
  br label %9929

; <label>:9699                                    ; preds = %9682
  %9700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9701 = extractvalue %dx.types.CBufRet.f32 %9700, 0
  %9702 = fmul fast float %9701, %7656
  %9703 = fmul fast float %9701, %7657
  %9704 = fmul fast float %9701, %7658
  br label %9929

; <label>:9705                                    ; preds = %9682
  %9706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9707 = extractvalue %dx.types.CBufRet.f32 %9706, 0
  %9708 = fmul fast float %9707, %1672
  %9709 = fmul fast float %9707, %1673
  %9710 = fmul fast float %9707, %1674
  br label %9929

; <label>:9711                                    ; preds = %9682
  %9712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9713 = extractvalue %dx.types.CBufRet.f32 %9712, 0
  %9714 = fmul fast float %9713, %7653
  %9715 = fmul fast float %9713, %7654
  %9716 = fmul fast float %9713, %7655
  br label %9929

; <label>:9717                                    ; preds = %9682
  %9718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9719 = extractvalue %dx.types.CBufRet.f32 %9718, 0
  %9720 = fmul fast float %9719, %7650
  %9721 = fmul fast float %9719, %7651
  %9722 = fmul fast float %9719, %7652
  br label %9929

; <label>:9723                                    ; preds = %9682
  %9724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9725 = extractvalue %dx.types.CBufRet.f32 %9724, 0
  %9726 = fmul fast float %9725, %4789
  %9727 = fmul fast float %9725, %4790
  %9728 = fmul fast float %9725, %4791
  br label %9929

; <label>:9729                                    ; preds = %9682
  %9730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9731 = extractvalue %dx.types.CBufRet.f32 %9730, 0
  %9732 = fmul fast float %9731, %4789
  %9733 = fmul fast float %9731, %4790
  %9734 = fmul fast float %9731, %4791
  br label %9929

; <label>:9735                                    ; preds = %9682
  %9736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9737 = extractvalue %dx.types.CBufRet.f32 %9736, 0
  %9738 = fmul fast float %4792, %9737
  %9739 = fmul fast float %4793, %9737
  %9740 = fmul fast float %4794, %9737
  br label %9929

; <label>:9741                                    ; preds = %9682
  %9742 = bitcast i32 %8386 to float
  br label %9929

; <label>:9743                                    ; preds = %9682
  %9744 = and i32 %8386, 1023
  %9745 = uitofp i32 %9744 to float
  %9746 = lshr i32 %8386, 10
  %9747 = and i32 %9746, 1023
  %9748 = uitofp i32 %9747 to float
  %9749 = lshr i32 %8386, 20
  %9750 = and i32 %9749, 1023
  %9751 = uitofp i32 %9750 to float
  %9752 = fmul fast float %9745, 0x3F60040100000000
  %9753 = fmul fast float %9748, 0x3F60040100000000
  %9754 = fmul fast float %9751, 0x3F60040100000000
  %9755 = fadd fast float %9752, -1.000000e+00
  %9756 = fadd fast float %9753, -1.000000e+00
  %9757 = fadd fast float %9754, -1.000000e+00
  %9758 = fcmp fast ogt float %9755, 0.000000e+00
  %9759 = select i1 %9758, float 1.000000e+00, float 0.000000e+00
  %9760 = fcmp fast ogt float %9756, 0.000000e+00
  %9761 = select i1 %9760, float 1.000000e+00, float 0.000000e+00
  %9762 = fcmp fast ogt float %9757, 0.000000e+00
  %9763 = select i1 %9762, float 1.000000e+00, float 0.000000e+00
  br label %9929

; <label>:9764                                    ; preds = %9682
  %9765 = and i32 %8386, 1023
  %9766 = uitofp i32 %9765 to float
  %9767 = lshr i32 %8386, 10
  %9768 = and i32 %9767, 1023
  %9769 = uitofp i32 %9768 to float
  %9770 = lshr i32 %8386, 20
  %9771 = and i32 %9770, 1023
  %9772 = uitofp i32 %9771 to float
  %9773 = fmul fast float %9766, 0x3F60040100000000
  %9774 = fmul fast float %9769, 0x3F60040100000000
  %9775 = fmul fast float %9772, 0x3F60040100000000
  %9776 = fadd fast float %9773, -1.000000e+00
  %9777 = fadd fast float %9774, -1.000000e+00
  %9778 = fadd fast float %9775, -1.000000e+00
  %9779 = fmul fast float %9778, %9777
  %9780 = fsub fast float %9778, %9779
  %9781 = fmul fast float %9777, %9776
  %9782 = fmul fast float %9780, %9776
  %9783 = fsub fast float %9777, %9781
  %9784 = fsub fast float %9780, %9782
  br label %9929

; <label>:9785                                    ; preds = %9682
  %9786 = and i32 %8386, 255
  %9787 = uitofp i32 %9786 to float
  %9788 = fmul fast float %9787, 0x3F70101020000000
  %9789 = lshr i32 %8386, 8
  %9790 = and i32 %9789, 255
  %9791 = uitofp i32 %9790 to float
  %9792 = fmul fast float %9791, 0x3F70101020000000
  %9793 = lshr i32 %8386, 16
  %9794 = and i32 %9793, 255
  %9795 = uitofp i32 %9794 to float
  %9796 = fmul fast float %9795, 0x3F70101020000000
  br label %9929

; <label>:9797                                    ; preds = %9682
  %9798 = and i32 %8386, 1023
  %9799 = uitofp i32 %9798 to float
  %9800 = lshr i32 %8386, 10
  %9801 = and i32 %9800, 1023
  %9802 = uitofp i32 %9801 to float
  %9803 = lshr i32 %8386, 20
  %9804 = and i32 %9803, 1023
  %9805 = uitofp i32 %9804 to float
  %9806 = fmul fast float %9799, 0x3F60040100000000
  %9807 = fmul fast float %9802, 0x3F60040100000000
  %9808 = fmul fast float %9805, 0x3F60040100000000
  %9809 = fadd fast float %9806, -1.000000e+00
  %9810 = fadd fast float %9807, -1.000000e+00
  %9811 = fadd fast float %9808, -1.000000e+00
  br label %9929

; <label>:9812                                    ; preds = %9682
  %9813 = icmp ne i32 %8386, 0
  %9814 = select i1 %9813, float 1.000000e+00, float %9683
  %9815 = select i1 %9813, float 0.000000e+00, float %9684
  %9816 = select i1 %9813, float 0.000000e+00, float %9685
  br label %9929

; <label>:9817                                    ; preds = %9682
  %9818 = bitcast i32 %8386 to float
  br label %9929

; <label>:9819                                    ; preds = %9682
  %9820 = bitcast i32 %8386 to float
  br label %9929

; <label>:9821                                    ; preds = %9682
  %9822 = bitcast i32 %8386 to float
  br label %9929

; <label>:9823                                    ; preds = %9682
  %9824 = bitcast i32 %8386 to float
  br label %9929

; <label>:9825                                    ; preds = %9682
  %9826 = and i32 %8386, 65535
  %9827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9826)  ; LegacyF16ToF32(value)
  %9828 = lshr i32 %8386, 16
  %9829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9828)  ; LegacyF16ToF32(value)
  %9830 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9832 = extractvalue %dx.types.CBufRet.f32 %9831, 0
  %9833 = fmul fast float %9832, %9827
  %9834 = fmul fast float %9832, %9829
  %9835 = fmul fast float %9832, %9830
  br label %9929

; <label>:9836                                    ; preds = %9682
  %9837 = and i32 %8386, 65535
  %9838 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9837)  ; LegacyF16ToF32(value)
  %9839 = lshr i32 %8386, 16
  %9840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %9839)  ; LegacyF16ToF32(value)
  %9841 = call float @dx.op.legacyF16ToF32(i32 131, i32 0)  ; LegacyF16ToF32(value)
  %9842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %9843 = extractvalue %dx.types.CBufRet.f32 %9842, 0
  %9844 = fmul fast float %9843, %9838
  %9845 = fmul fast float %9843, %9840
  %9846 = fmul fast float %9843, %9841
  br label %9929

; <label>:9847                                    ; preds = %9682
  %9848 = and i32 %8386, 1023
  %9849 = uitofp i32 %9848 to float
  %9850 = lshr i32 %8386, 10
  %9851 = and i32 %9850, 1023
  %9852 = uitofp i32 %9851 to float
  %9853 = lshr i32 %8386, 20
  %9854 = and i32 %9853, 1023
  %9855 = uitofp i32 %9854 to float
  %9856 = fmul fast float %9849, 0x3F50040100000000
  %9857 = fmul fast float %9852, 0x3F50040100000000
  %9858 = fmul fast float %9855, 0x3F50040100000000
  br label %9929

; <label>:9859                                    ; preds = %9682
  %9860 = and i32 %8386, 1023
  %9861 = uitofp i32 %9860 to float
  %9862 = lshr i32 %8386, 10
  %9863 = and i32 %9862, 1023
  %9864 = uitofp i32 %9863 to float
  %9865 = lshr i32 %8386, 20
  %9866 = and i32 %9865, 1023
  %9867 = uitofp i32 %9866 to float
  %9868 = fmul fast float %9861, 0x3F60040100000000
  %9869 = fmul fast float %9864, 0x3F60040100000000
  %9870 = fmul fast float %9867, 0x3F60040100000000
  %9871 = fadd fast float %9868, -1.000000e+00
  %9872 = fadd fast float %9869, -1.000000e+00
  %9873 = fadd fast float %9870, -1.000000e+00
  %9874 = call float @dx.op.binary.f32(i32 35, float %9872, float %9873)  ; FMax(a,b)
  %9875 = call float @dx.op.binary.f32(i32 35, float %9871, float %9874)  ; FMax(a,b)
  %9876 = fmul fast float %9875, 2.000000e+00
  %9877 = call float @dx.op.unary.f32(i32 7, float %9876)  ; Saturate(value)
  %9878 = fmul fast float %9861, 0x3F94050140000000
  %9879 = fadd fast float %9878, -1.000000e+01
  %9880 = fmul fast float %9864, 0x3F94050140000000
  %9881 = fadd fast float %9880, -1.000000e+01
  %9882 = fmul fast float %9867, 0x3F94050140000000
  %9883 = fadd fast float %9882, -1.000000e+01
  %9884 = fsub fast float %9879, %9683
  %9885 = fsub fast float %9881, %9684
  %9886 = fsub fast float %9883, %9685
  %9887 = fmul fast float %9877, %9884
  %9888 = fmul fast float %9877, %9885
  %9889 = fmul fast float %9877, %9886
  %9890 = fadd fast float %9887, %9683
  %9891 = fadd fast float %9888, %9684
  %9892 = fadd fast float %9889, %9685
  br label %9929

; <label>:9893                                    ; preds = %9682
  %9894 = and i32 %8386, 1023
  %9895 = uitofp i32 %9894 to float
  %9896 = lshr i32 %8386, 10
  %9897 = and i32 %9896, 1023
  %9898 = uitofp i32 %9897 to float
  %9899 = lshr i32 %8386, 20
  %9900 = and i32 %9899, 1023
  %9901 = uitofp i32 %9900 to float
  %9902 = fmul fast float %9895, 0x3F60040100000000
  %9903 = fmul fast float %9898, 0x3F60040100000000
  %9904 = fmul fast float %9901, 0x3F60040100000000
  %9905 = fadd fast float %9902, -1.000000e+00
  %9906 = fadd fast float %9903, -1.000000e+00
  %9907 = fadd fast float %9904, -1.000000e+00
  br label %9929

; <label>:9908                                    ; preds = %9682
  %9909 = and i32 %8386, 1023
  %9910 = uitofp i32 %9909 to float
  %9911 = lshr i32 %8386, 10
  %9912 = and i32 %9911, 1023
  %9913 = uitofp i32 %9912 to float
  %9914 = lshr i32 %8386, 20
  %9915 = and i32 %9914, 1023
  %9916 = uitofp i32 %9915 to float
  %9917 = fmul fast float %9910, 0x3F60040100000000
  %9918 = fmul fast float %9913, 0x3F60040100000000
  %9919 = fmul fast float %9916, 0x3F60040100000000
  %9920 = fadd fast float %9917, -1.000000e+00
  %9921 = fadd fast float %9918, -1.000000e+00
  %9922 = fadd fast float %9919, -1.000000e+00
  br label %9929

; <label>:9923                                    ; preds = %9682
  %9924 = bitcast i32 %8386 to float
  br label %9929

; <label>:9925                                    ; preds = %9682
  %9926 = bitcast i32 %8386 to float
  br label %9929

; <label>:9927                                    ; preds = %9682
  %9928 = bitcast i32 %8386 to float
  br label %9929

; <label>:9929                                    ; preds = %9927, %9925, %9923, %9908, %9893, %9859, %9847, %9836, %9825, %9823, %9821, %9819, %9817, %9812, %9797, %9785, %9764, %9743, %9741, %9735, %9729, %9723, %9717, %9711, %9705, %9699, %9693, %9682
  %9930 = phi float [ %9683, %9682 ], [ %9928, %9927 ], [ %9926, %9925 ], [ %9924, %9923 ], [ %9920, %9908 ], [ %9905, %9893 ], [ %9890, %9859 ], [ %9856, %9847 ], [ %9844, %9836 ], [ %9833, %9825 ], [ %9824, %9823 ], [ %9822, %9821 ], [ %9820, %9819 ], [ %9818, %9817 ], [ %9809, %9797 ], [ %9788, %9785 ], [ %9776, %9764 ], [ %9759, %9743 ], [ %9742, %9741 ], [ %9738, %9735 ], [ %9732, %9729 ], [ %9726, %9723 ], [ %9720, %9717 ], [ %9714, %9711 ], [ %9708, %9705 ], [ %9702, %9699 ], [ %9696, %9693 ], [ %9814, %9812 ]
  %9931 = phi float [ %9684, %9682 ], [ %9928, %9927 ], [ %9926, %9925 ], [ %9924, %9923 ], [ %9921, %9908 ], [ %9906, %9893 ], [ %9891, %9859 ], [ %9857, %9847 ], [ %9845, %9836 ], [ %9834, %9825 ], [ %9824, %9823 ], [ %9822, %9821 ], [ %9820, %9819 ], [ %9818, %9817 ], [ %9810, %9797 ], [ %9792, %9785 ], [ %9783, %9764 ], [ %9761, %9743 ], [ %9742, %9741 ], [ %9739, %9735 ], [ %9733, %9729 ], [ %9727, %9723 ], [ %9721, %9717 ], [ %9715, %9711 ], [ %9709, %9705 ], [ %9703, %9699 ], [ %9697, %9693 ], [ %9815, %9812 ]
  %9932 = phi float [ %9685, %9682 ], [ %9928, %9927 ], [ %9926, %9925 ], [ %9924, %9923 ], [ %9922, %9908 ], [ %9907, %9893 ], [ %9892, %9859 ], [ %9858, %9847 ], [ %9846, %9836 ], [ %9835, %9825 ], [ %9824, %9823 ], [ %9822, %9821 ], [ %9820, %9819 ], [ %9818, %9817 ], [ %9811, %9797 ], [ %9796, %9785 ], [ %9784, %9764 ], [ %9763, %9743 ], [ %9742, %9741 ], [ %9740, %9735 ], [ %9734, %9729 ], [ %9728, %9723 ], [ %9722, %9717 ], [ %9716, %9711 ], [ %9710, %9705 ], [ %9704, %9699 ], [ %9698, %9693 ], [ %9816, %9812 ]
  %9933 = extractvalue %dx.types.CBufRet.f32 %9686, 3
  %9934 = fsub fast float %9930, %9683
  %9935 = fsub fast float %9931, %9684
  %9936 = fsub fast float %9932, %9685
  %9937 = fmul fast float %9933, %9934
  %9938 = fmul fast float %9933, %9935
  %9939 = fmul fast float %9933, %9936
  %9940 = fadd fast float %9937, %9683
  %9941 = fadd fast float %9938, %9684
  %9942 = fadd fast float %9939, %9685
  %9943 = lshr i32 %9688, 16
  %9944 = and i32 %9943, 255
  %9945 = uitofp i32 %9944 to float
  %9946 = fptoui float %9945 to i32
  switch i32 %9946, label %9993 [
    i32 16, label %9978
    i32 12, label %9977
    i32 3, label %9947
    i32 4, label %9948
    i32 15, label %9949
    i32 5, label %9958
    i32 6, label %9967
    i32 7, label %9976
    i32 11, label %9977
  ]

; <label>:9947                                    ; preds = %9929
  br label %9993

; <label>:9948                                    ; preds = %9929
  br label %9993

; <label>:9949                                    ; preds = %9929
  %9950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 243)  ; CBufferLoadLegacy(handle,regIndex)
  %9951 = extractvalue %dx.types.CBufRet.f32 %9950, 0
  %9952 = fadd fast float %9951, %9940
  %9953 = fadd fast float %9951, %9941
  %9954 = fadd fast float %9951, %9942
  %9955 = call float @dx.op.unary.f32(i32 7, float %9952)  ; Saturate(value)
  %9956 = call float @dx.op.unary.f32(i32 7, float %9953)  ; Saturate(value)
  %9957 = call float @dx.op.unary.f32(i32 7, float %9954)  ; Saturate(value)
  br label %9993

; <label>:9958                                    ; preds = %9929
  %9959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9960 = extractvalue %dx.types.CBufRet.f32 %9959, 0
  %9961 = bitcast float %9960 to i32
  %9962 = and i32 %9961, 2130706432
  %9963 = icmp eq i32 %9962, 0
  %9964 = select i1 %9963, float 0.000000e+00, float %9940
  %9965 = select i1 %9963, float 0.000000e+00, float %9941
  %9966 = select i1 %9963, float 0.000000e+00, float %9942
  br label %9993

; <label>:9967                                    ; preds = %9929
  %9968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %9969 = extractvalue %dx.types.CBufRet.f32 %9968, 0
  %9970 = bitcast float %9969 to i32
  %9971 = and i32 %9970, 2130706432
  %9972 = icmp eq i32 %9971, 0
  %9973 = select i1 %9972, float 0.000000e+00, float %9940
  %9974 = select i1 %9972, float 0.000000e+00, float %9941
  %9975 = select i1 %9972, float 0.000000e+00, float %9942
  br label %9993

; <label>:9976                                    ; preds = %9929
  br label %9993

; <label>:9977                                    ; preds = %9929, %9929
  br label %9993

; <label>:9978                                    ; preds = %9929
  %9979 = and i32 %8386, 1023
  %9980 = uitofp i32 %9979 to float
  %9981 = lshr i32 %8386, 10
  %9982 = and i32 %9981, 1023
  %9983 = uitofp i32 %9982 to float
  %9984 = lshr i32 %8386, 20
  %9985 = and i32 %9984, 1023
  %9986 = uitofp i32 %9985 to float
  %9987 = fmul fast float %9980, 0x3F60040100000000
  %9988 = fmul fast float %9983, 0x3F60040100000000
  %9989 = fmul fast float %9986, 0x3F60040100000000
  %9990 = fadd fast float %9987, -1.000000e+00
  %9991 = fadd fast float %9988, -1.000000e+00
  %9992 = fadd fast float %9989, -1.000000e+00
  br label %9993

; <label>:9993                                    ; preds = %9978, %9977, %9976, %9967, %9958, %9949, %9948, %9947, %9929
  %9994 = phi float [ 0.000000e+00, %9976 ], [ %9955, %9949 ], [ 0.000000e+00, %9948 ], [ %70, %9977 ], [ %9990, %9978 ], [ 0.000000e+00, %9947 ], [ %9964, %9958 ], [ %9973, %9967 ], [ %9940, %9929 ]
  %9995 = phi float [ 0.000000e+00, %9976 ], [ %9956, %9949 ], [ 0.000000e+00, %9948 ], [ %71, %9977 ], [ %9991, %9978 ], [ 0.000000e+00, %9947 ], [ %9965, %9958 ], [ %9974, %9967 ], [ %9941, %9929 ]
  %9996 = phi float [ 0.000000e+00, %9976 ], [ %9957, %9949 ], [ 1.000000e+00, %9948 ], [ %72, %9977 ], [ %9992, %9978 ], [ 0.000000e+00, %9947 ], [ %9966, %9958 ], [ %9975, %9967 ], [ %9942, %9929 ]
  %9997 = fsub fast float %9994, %9940
  %9998 = fsub fast float %9995, %9941
  %9999 = fsub fast float %9996, %9942
  %10000 = fmul fast float %9933, %9997
  %10001 = fmul fast float %9933, %9998
  %10002 = fmul fast float %9933, %9999
  %10003 = fadd fast float %10000, %9940
  %10004 = fadd fast float %10001, %9941
  %10005 = fadd fast float %10002, %9942
  %10006 = and i32 %7648, 255
  %10007 = uitofp i32 %10006 to float
  %10008 = fptoui float %10007 to i32
  %10009 = lshr i32 %7648, 8
  %10010 = and i32 %10009, 255
  %10011 = uitofp i32 %10010 to float
  %10012 = fptoui float %10011 to i32
  %10013 = lshr i32 %7648, 16
  %10014 = and i32 %10013, 255
  %10015 = uitofp i32 %10014 to float
  %10016 = fptoui float %10015 to i32
  %10017 = lshr i32 %7648, 24
  %10018 = uitofp i32 %10017 to float
  %10019 = fptoui float %10018 to i32
  %10020 = and i32 %7647, 255
  %10021 = uitofp i32 %10020 to float
  %10022 = fptoui float %10021 to i32
  %10023 = lshr i32 %7647, 16
  %10024 = and i32 %10023, 255
  %10025 = uitofp i32 %10024 to float
  %10026 = fptoui float %10025 to i32
  %10027 = lshr i32 %9688, 24
  %10028 = uitofp i32 %10027 to float
  %10029 = fptoui float %10028 to i32
  switch i32 %10029, label %10268 [
    i32 1, label %10030
    i32 2, label %10057
    i32 3, label %10082
    i32 4, label %10105
    i32 5, label %10128
    i32 6, label %10151
    i32 7, label %10175
    i32 8, label %10198
    i32 9, label %10221
    i32 12, label %10243
    i32 13, label %10244
    i32 14, label %10267
  ]

; <label>:10030                                   ; preds = %9993
  %10031 = add i32 %10008, %10022
  %10032 = add i32 %10031, %10019
  %10033 = add i32 %10032, %10012
  %10034 = add i32 %10033, %10016
  %10035 = uitofp i32 %10034 to float
  %10036 = fadd fast float %10035, -4.000000e+00
  %10037 = fmul fast float %10036, 0x3FB5555560000000
  %10038 = call float @dx.op.unary.f32(i32 7, float %10037)  ; Saturate(value)
  %10039 = icmp eq i32 %10034, 0
  %10040 = select i1 %10039, float 0.000000e+00, float %10038
  %10041 = icmp ult i32 %10034, 2
  %10042 = select i1 %10041, float 0.000000e+00, float %10038
  %10043 = add i32 %10034, -1
  %10044 = icmp ult i32 %10043, 2
  %10045 = select i1 %10044, float 1.000000e+00, float %10040
  %10046 = icmp ult i32 %10034, 4
  %10047 = select i1 %10046, float 0.000000e+00, float 1.000000e+00
  %10048 = and i32 %10034, -2
  %10049 = icmp eq i32 %10048, 2
  %10050 = icmp eq i32 %10034, 4
  %10051 = select i1 %10050, float 1.000000e+00, float %10047
  %10052 = or i1 %10050, %10049
  %10053 = select i1 %10052, float 1.000000e+00, float %10042
  %10054 = add i32 %10034, -3
  %10055 = icmp ult i32 %10054, 2
  %10056 = select i1 %10055, float 0.000000e+00, float %10045
  br label %10268

; <label>:10057                                   ; preds = %9993
  %10058 = add i32 %10012, %10008
  %10059 = add i32 %10058, %10016
  %10060 = uitofp i32 %10059 to float
  %10061 = fadd fast float %10060, -4.000000e+00
  %10062 = fmul fast float %10061, 0x3FB5555560000000
  %10063 = call float @dx.op.unary.f32(i32 7, float %10062)  ; Saturate(value)
  %10064 = icmp eq i32 %10059, 0
  %10065 = select i1 %10064, float 0.000000e+00, float %10063
  %10066 = icmp ult i32 %10059, 2
  %10067 = select i1 %10066, float 0.000000e+00, float %10063
  %10068 = add i32 %10059, -1
  %10069 = icmp ult i32 %10068, 2
  %10070 = select i1 %10069, float 1.000000e+00, float %10065
  %10071 = icmp ult i32 %10059, 4
  %10072 = select i1 %10071, float 0.000000e+00, float 1.000000e+00
  %10073 = and i32 %10059, -2
  %10074 = icmp eq i32 %10073, 2
  %10075 = icmp eq i32 %10059, 4
  %10076 = select i1 %10075, float 1.000000e+00, float %10072
  %10077 = or i1 %10075, %10074
  %10078 = select i1 %10077, float 1.000000e+00, float %10067
  %10079 = add i32 %10059, -3
  %10080 = icmp ult i32 %10079, 2
  %10081 = select i1 %10080, float 0.000000e+00, float %10070
  br label %10268

; <label>:10082                                   ; preds = %9993
  %10083 = uitofp i32 %10008 to float
  %10084 = fadd fast float %10083, -4.000000e+00
  %10085 = fmul fast float %10084, 0x3FB5555560000000
  %10086 = call float @dx.op.unary.f32(i32 7, float %10085)  ; Saturate(value)
  %10087 = icmp eq i32 %10008, 0
  %10088 = select i1 %10087, float 0.000000e+00, float %10086
  %10089 = icmp ult i32 %10008, 2
  %10090 = select i1 %10089, float 0.000000e+00, float %10086
  %10091 = add i32 %10008, -1
  %10092 = icmp ult i32 %10091, 2
  %10093 = select i1 %10092, float 1.000000e+00, float %10088
  %10094 = icmp ult i32 %10008, 4
  %10095 = select i1 %10094, float 0.000000e+00, float 1.000000e+00
  %10096 = and i32 %10008, -2
  %10097 = icmp eq i32 %10096, 2
  %10098 = icmp eq i32 %10008, 4
  %10099 = select i1 %10098, float 1.000000e+00, float %10095
  %10100 = or i1 %10098, %10097
  %10101 = select i1 %10100, float 1.000000e+00, float %10090
  %10102 = add i32 %10008, -3
  %10103 = icmp ult i32 %10102, 2
  %10104 = select i1 %10103, float 0.000000e+00, float %10093
  br label %10268

; <label>:10105                                   ; preds = %9993
  %10106 = uitofp i32 %10012 to float
  %10107 = fadd fast float %10106, -4.000000e+00
  %10108 = fmul fast float %10107, 0x3FB5555560000000
  %10109 = call float @dx.op.unary.f32(i32 7, float %10108)  ; Saturate(value)
  %10110 = icmp eq i32 %10012, 0
  %10111 = select i1 %10110, float 0.000000e+00, float %10109
  %10112 = icmp ult i32 %10012, 2
  %10113 = select i1 %10112, float 0.000000e+00, float %10109
  %10114 = add i32 %10012, -1
  %10115 = icmp ult i32 %10114, 2
  %10116 = select i1 %10115, float 1.000000e+00, float %10111
  %10117 = icmp ult i32 %10012, 4
  %10118 = select i1 %10117, float 0.000000e+00, float 1.000000e+00
  %10119 = and i32 %10012, -2
  %10120 = icmp eq i32 %10119, 2
  %10121 = icmp eq i32 %10012, 4
  %10122 = select i1 %10121, float 1.000000e+00, float %10118
  %10123 = or i1 %10121, %10120
  %10124 = select i1 %10123, float 1.000000e+00, float %10113
  %10125 = add i32 %10012, -3
  %10126 = icmp ult i32 %10125, 2
  %10127 = select i1 %10126, float 0.000000e+00, float %10116
  br label %10268

; <label>:10128                                   ; preds = %9993
  %10129 = uitofp i32 %10016 to float
  %10130 = fadd fast float %10129, -4.000000e+00
  %10131 = fmul fast float %10130, 0x3FB5555560000000
  %10132 = call float @dx.op.unary.f32(i32 7, float %10131)  ; Saturate(value)
  %10133 = icmp eq i32 %10016, 0
  %10134 = select i1 %10133, float 0.000000e+00, float %10132
  %10135 = icmp ult i32 %10016, 2
  %10136 = select i1 %10135, float 0.000000e+00, float %10132
  %10137 = add i32 %10016, -1
  %10138 = icmp ult i32 %10137, 2
  %10139 = select i1 %10138, float 1.000000e+00, float %10134
  %10140 = icmp ult i32 %10016, 4
  %10141 = select i1 %10140, float 0.000000e+00, float 1.000000e+00
  %10142 = and i32 %10016, -2
  %10143 = icmp eq i32 %10142, 2
  %10144 = icmp eq i32 %10016, 4
  %10145 = select i1 %10144, float 1.000000e+00, float %10141
  %10146 = or i1 %10144, %10143
  %10147 = select i1 %10146, float 1.000000e+00, float %10136
  %10148 = add i32 %10016, -3
  %10149 = icmp ult i32 %10148, 2
  %10150 = select i1 %10149, float 0.000000e+00, float %10139
  br label %10268

; <label>:10151                                   ; preds = %9993
  %10152 = add i32 %10019, %10022
  %10153 = uitofp i32 %10152 to float
  %10154 = fadd fast float %10153, -4.000000e+00
  %10155 = fmul fast float %10154, 0x3FB5555560000000
  %10156 = call float @dx.op.unary.f32(i32 7, float %10155)  ; Saturate(value)
  %10157 = icmp eq i32 %10152, 0
  %10158 = select i1 %10157, float 0.000000e+00, float %10156
  %10159 = icmp ult i32 %10152, 2
  %10160 = select i1 %10159, float 0.000000e+00, float %10156
  %10161 = add i32 %10152, -1
  %10162 = icmp ult i32 %10161, 2
  %10163 = select i1 %10162, float 1.000000e+00, float %10158
  %10164 = icmp ult i32 %10152, 4
  %10165 = select i1 %10164, float 0.000000e+00, float 1.000000e+00
  %10166 = and i32 %10152, -2
  %10167 = icmp eq i32 %10166, 2
  %10168 = icmp eq i32 %10152, 4
  %10169 = select i1 %10168, float 1.000000e+00, float %10165
  %10170 = or i1 %10168, %10167
  %10171 = select i1 %10170, float 1.000000e+00, float %10160
  %10172 = add i32 %10152, -3
  %10173 = icmp ult i32 %10172, 2
  %10174 = select i1 %10173, float 0.000000e+00, float %10163
  br label %10268

; <label>:10175                                   ; preds = %9993
  %10176 = uitofp i32 %10019 to float
  %10177 = fadd fast float %10176, -4.000000e+00
  %10178 = fmul fast float %10177, 0x3FB5555560000000
  %10179 = call float @dx.op.unary.f32(i32 7, float %10178)  ; Saturate(value)
  %10180 = icmp eq i32 %10019, 0
  %10181 = select i1 %10180, float 0.000000e+00, float %10179
  %10182 = icmp ult i32 %10019, 2
  %10183 = select i1 %10182, float 0.000000e+00, float %10179
  %10184 = add i32 %10019, -1
  %10185 = icmp ult i32 %10184, 2
  %10186 = select i1 %10185, float 1.000000e+00, float %10181
  %10187 = icmp ult i32 %10019, 4
  %10188 = select i1 %10187, float 0.000000e+00, float 1.000000e+00
  %10189 = and i32 %10019, -2
  %10190 = icmp eq i32 %10189, 2
  %10191 = icmp eq i32 %10019, 4
  %10192 = select i1 %10191, float 1.000000e+00, float %10188
  %10193 = or i1 %10191, %10190
  %10194 = select i1 %10193, float 1.000000e+00, float %10183
  %10195 = add i32 %10019, -3
  %10196 = icmp ult i32 %10195, 2
  %10197 = select i1 %10196, float 0.000000e+00, float %10186
  br label %10268

; <label>:10198                                   ; preds = %9993
  %10199 = uitofp i32 %10022 to float
  %10200 = fadd fast float %10199, -4.000000e+00
  %10201 = fmul fast float %10200, 0x3FB5555560000000
  %10202 = call float @dx.op.unary.f32(i32 7, float %10201)  ; Saturate(value)
  %10203 = icmp eq i32 %10022, 0
  %10204 = select i1 %10203, float 0.000000e+00, float %10202
  %10205 = icmp ult i32 %10022, 2
  %10206 = select i1 %10205, float 0.000000e+00, float %10202
  %10207 = add i32 %10022, -1
  %10208 = icmp ult i32 %10207, 2
  %10209 = select i1 %10208, float 1.000000e+00, float %10204
  %10210 = icmp ult i32 %10022, 4
  %10211 = select i1 %10210, float 0.000000e+00, float 1.000000e+00
  %10212 = and i32 %10022, -2
  %10213 = icmp eq i32 %10212, 2
  %10214 = icmp eq i32 %10022, 4
  %10215 = select i1 %10214, float 1.000000e+00, float %10211
  %10216 = or i1 %10214, %10213
  %10217 = select i1 %10216, float 1.000000e+00, float %10206
  %10218 = add i32 %10022, -3
  %10219 = icmp ult i32 %10218, 2
  %10220 = select i1 %10219, float 0.000000e+00, float %10209
  br label %10268

; <label>:10221                                   ; preds = %9993
  %10222 = lshr i32 %7647, 8
  %10223 = and i32 %10222, 255
  %10224 = uitofp i32 %10223 to float
  %10225 = fptoui float %10224 to i32
  %10226 = uitofp i32 %10225 to float
  %10227 = fcmp fast oge float %10226, 1.000000e+00
  %10228 = fcmp fast oge float %10226, 2.000000e+00
  %10229 = or i1 %10228, %10227
  %10230 = select i1 %10229, float 1.000000e+00, float 0.000000e+00
  %10231 = fcmp fast oge float %10226, 3.000000e+00
  %10232 = or i1 %10231, %10228
  %10233 = fcmp fast oge float %10226, 4.000000e+00
  %10234 = or i1 %10233, %10232
  %10235 = select i1 %10234, float 1.000000e+00, float 0.000000e+00
  %10236 = or i1 %10233, %10231
  %10237 = fcmp fast oge float %10226, 5.000000e+00
  %10238 = or i1 %10237, %10233
  %10239 = select i1 %10238, float 1.000000e+00, float 0.000000e+00
  %10240 = select i1 %10237, float 0.000000e+00, float %10235
  %10241 = or i1 %10237, %10236
  %10242 = select i1 %10241, float 0.000000e+00, float %10230
  br label %10268

; <label>:10243                                   ; preds = %9993
  br label %10268

; <label>:10244                                   ; preds = %9993
  %10245 = uitofp i32 %10026 to float
  %10246 = fadd fast float %10245, -4.000000e+00
  %10247 = fmul fast float %10246, 0x3FB5555560000000
  %10248 = call float @dx.op.unary.f32(i32 7, float %10247)  ; Saturate(value)
  %10249 = icmp eq i32 %10026, 0
  %10250 = select i1 %10249, float 0.000000e+00, float %10248
  %10251 = icmp ult i32 %10026, 2
  %10252 = select i1 %10251, float 0.000000e+00, float %10248
  %10253 = add i32 %10026, -1
  %10254 = icmp ult i32 %10253, 2
  %10255 = select i1 %10254, float 1.000000e+00, float %10250
  %10256 = icmp ult i32 %10026, 4
  %10257 = select i1 %10256, float 0.000000e+00, float 1.000000e+00
  %10258 = and i32 %10026, -2
  %10259 = icmp eq i32 %10258, 2
  %10260 = icmp eq i32 %10026, 4
  %10261 = select i1 %10260, float 1.000000e+00, float %10257
  %10262 = or i1 %10260, %10259
  %10263 = select i1 %10262, float 1.000000e+00, float %10252
  %10264 = add i32 %10026, -3
  %10265 = icmp ult i32 %10264, 2
  %10266 = select i1 %10265, float 0.000000e+00, float %10255
  br label %10268

; <label>:10267                                   ; preds = %9993
  br label %10268

; <label>:10268                                   ; preds = %10267, %10244, %10243, %10221, %10198, %10175, %10151, %10128, %10105, %10082, %10057, %10030, %9993
  %10269 = phi float [ %10003, %9993 ], [ 5.000000e-01, %10267 ], [ %10261, %10244 ], [ 1.000000e+00, %10243 ], [ %10239, %10221 ], [ %10215, %10198 ], [ %10192, %10175 ], [ %10169, %10151 ], [ %10145, %10128 ], [ %10122, %10105 ], [ %10099, %10082 ], [ %10076, %10057 ], [ %10051, %10030 ]
  %10270 = phi float [ %10004, %9993 ], [ 5.000000e-01, %10267 ], [ %10263, %10244 ], [ 0.000000e+00, %10243 ], [ %10240, %10221 ], [ %10217, %10198 ], [ %10194, %10175 ], [ %10171, %10151 ], [ %10147, %10128 ], [ %10124, %10105 ], [ %10101, %10082 ], [ %10078, %10057 ], [ %10053, %10030 ]
  %10271 = phi float [ %10005, %9993 ], [ 5.000000e-01, %10267 ], [ %10266, %10244 ], [ 0.000000e+00, %10243 ], [ %10242, %10221 ], [ %10220, %10198 ], [ %10197, %10175 ], [ %10174, %10151 ], [ %10150, %10128 ], [ %10127, %10105 ], [ %10104, %10082 ], [ %10081, %10057 ], [ %10056, %10030 ]
  %10272 = fsub fast float %10269, %10003
  %10273 = fsub fast float %10270, %10004
  %10274 = fsub fast float %10271, %10005
  %10275 = fmul fast float %10272, %9933
  %10276 = fmul fast float %10273, %9933
  %10277 = fmul fast float %10274, %9933
  %10278 = fadd fast float %10275, %10003
  %10279 = fadd fast float %10276, %10004
  %10280 = fadd fast float %10277, %10005
  %10281 = and i32 %9688, 255
  %10282 = uitofp i32 %10281 to float
  %10283 = fptoui float %10282 to i32
  %10284 = icmp ult i32 %10283, 25
  br i1 %10284, label %10285, label %10290

; <label>:10285                                   ; preds = %10268
  %10286 = trunc i32 %10283 to i25
  %10287 = lshr i25 1048574, %10286
  %10288 = and i25 %10287, 1
  %10289 = icmp ne i25 %10288, 0
  br label %10290

; <label>:10290                                   ; preds = %10285, %10268
  %10291 = phi i1 [ %10289, %10285 ], [ true, %10268 ]
  %10292 = or i32 %9946, %9692
  %10293 = or i32 %10292, %10029
  %10294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 242)  ; CBufferLoadLegacy(handle,regIndex)
  %10295 = extractvalue %dx.types.CBufRet.f32 %10294, 3
  %10296 = bitcast float %10295 to i32
  %10297 = and i32 %10296, 255
  %10298 = uitofp i32 %10297 to float
  %10299 = fptoui float %10298 to i32
  %10300 = or i32 %10293, %10299
  %10301 = icmp ne i32 %10300, 0
  %10302 = or i1 %10291, %10301
  %10303 = extractvalue %dx.types.CBufRet.f32 %10294, 0
  %10304 = bitcast float %10303 to i32
  %10305 = icmp slt i32 %10304, 0
  %10306 = or i1 %10305, %10302
  br i1 %10306, label %10307, label %10315

; <label>:10307                                   ; preds = %10290
  %10308 = icmp eq i32 %10029, 14
  %10309 = select i1 %10308, float 0.000000e+00, float 1.000000e+00
  %10310 = icmp eq i32 %10283, 0
  br i1 %10310, label %10315, label %10311

; <label>:10311                                   ; preds = %10307
  %10312 = fmul fast float %10309, %10278
  %10313 = fmul fast float %10309, %10279
  %10314 = fmul fast float %10309, %10280
  br label %10315

; <label>:10315                                   ; preds = %10311, %10307, %10290
  %10316 = phi float [ %10312, %10311 ], [ %10278, %10307 ], [ %10278, %10290 ]
  %10317 = phi float [ %10313, %10311 ], [ %10279, %10307 ], [ %10279, %10290 ]
  %10318 = phi float [ %10314, %10311 ], [ %10280, %10307 ], [ %10280, %10290 ]
  %10319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %65, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %10320 = extractvalue %dx.types.CBufRet.f32 %10319, 2
  %10321 = extractvalue %dx.types.CBufRet.f32 %10319, 3
  %10322 = fmul fast float %10320, %99
  %10323 = fmul fast float %10321, %100
  %10324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 206)  ; CBufferLoadLegacy(handle,regIndex)
  %10325 = extractvalue %dx.types.CBufRet.f32 %10324, 0
  %10326 = fcmp fast oge float %10322, %10325
  %10327 = extractvalue %dx.types.CBufRet.f32 %10324, 2
  %10328 = fcmp fast ole float %10322, %10327
  %10329 = and i1 %10326, %10328
  %10330 = extractvalue %dx.types.CBufRet.f32 %10324, 1
  %10331 = fcmp fast oge float %10323, %10330
  %10332 = and i1 %10329, %10331
  %10333 = extractvalue %dx.types.CBufRet.f32 %10324, 3
  %10334 = fcmp fast ole float %10323, %10333
  %10335 = and i1 %10332, %10334
  %10336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 207)  ; CBufferLoadLegacy(handle,regIndex)
  %10337 = extractvalue %dx.types.CBufRet.i32 %10336, 0
  %10338 = icmp ne i32 %10337, 0
  %10339 = and i1 %10338, %10335
  br i1 %10339, label %10340, label %11256

; <label>:10340                                   ; preds = %10315
  %10341 = icmp eq i32 %10337, 1
  br i1 %10341, label %10342, label %10381

; <label>:10342                                   ; preds = %10340
  %10343 = uitofp i32 %198 to float
  %10344 = fmul fast float %10343, 0x3FE3C6EF40000000
  %10345 = call float @dx.op.unary.f32(i32 22, float %10344)  ; Frc(value)
  %10346 = fadd fast float %10345, 0x3FE5555560000000
  %10347 = fadd fast float %10345, 0x3FD5555560000000
  %10348 = fsub fast float -0.000000e+00, %10345
  %10349 = fsub fast float -0.000000e+00, %10346
  %10350 = fsub fast float -0.000000e+00, %10347
  %10351 = fcmp fast oge float %10345, %10348
  %10352 = fcmp fast oge float %10346, %10349
  %10353 = fcmp fast oge float %10347, %10350
  %10354 = call float @dx.op.unary.f32(i32 6, float %10345)  ; FAbs(value)
  %10355 = call float @dx.op.unary.f32(i32 6, float %10346)  ; FAbs(value)
  %10356 = call float @dx.op.unary.f32(i32 6, float %10347)  ; FAbs(value)
  %10357 = call float @dx.op.unary.f32(i32 22, float %10354)  ; Frc(value)
  %10358 = call float @dx.op.unary.f32(i32 22, float %10355)  ; Frc(value)
  %10359 = call float @dx.op.unary.f32(i32 22, float %10356)  ; Frc(value)
  %10360 = fsub fast float -0.000000e+00, %10357
  %10361 = fsub fast float -0.000000e+00, %10358
  %10362 = fsub fast float -0.000000e+00, %10359
  %10363 = select i1 %10351, float %10357, float %10360
  %10364 = select i1 %10352, float %10358, float %10361
  %10365 = select i1 %10353, float %10359, float %10362
  %10366 = fmul fast float %10363, 6.000000e+00
  %10367 = fmul fast float %10364, 6.000000e+00
  %10368 = fmul fast float %10365, 6.000000e+00
  %10369 = fadd fast float %10366, -3.000000e+00
  %10370 = fadd fast float %10367, -3.000000e+00
  %10371 = fadd fast float %10368, -3.000000e+00
  %10372 = call float @dx.op.unary.f32(i32 6, float %10369)  ; FAbs(value)
  %10373 = call float @dx.op.unary.f32(i32 6, float %10370)  ; FAbs(value)
  %10374 = call float @dx.op.unary.f32(i32 6, float %10371)  ; FAbs(value)
  %10375 = fadd fast float %10372, -1.000000e+00
  %10376 = fadd fast float %10373, -1.000000e+00
  %10377 = fadd fast float %10374, -1.000000e+00
  %10378 = call float @dx.op.unary.f32(i32 7, float %10375)  ; Saturate(value)
  %10379 = call float @dx.op.unary.f32(i32 7, float %10376)  ; Saturate(value)
  %10380 = call float @dx.op.unary.f32(i32 7, float %10377)  ; Saturate(value)
  br label %11256

; <label>:10381                                   ; preds = %10340
  %10382 = icmp eq i32 %10337, 2
  br i1 %10382, label %10383, label %10387

; <label>:10383                                   ; preds = %10381
  %10384 = fmul fast float %10316, %73
  %10385 = fmul fast float %10317, %74
  %10386 = fmul fast float %10318, %75
  br label %11256

; <label>:10387                                   ; preds = %10381
  %10388 = icmp eq i32 %10337, 3
  %10389 = icmp eq i32 %10337, 26
  %10390 = or i1 %10388, %10389
  br i1 %10390, label %10391, label %10491

; <label>:10391                                   ; preds = %10387
  br i1 %10388, label %10392, label %10403

; <label>:10392                                   ; preds = %10391
  %10393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %10394 = extractvalue %dx.types.CBufRet.f32 %10393, 3
  %10395 = fsub fast float %178, %10394
  %10396 = fmul fast float %10395, 0x3FD5555560000000
  %10397 = call float @dx.op.unary.f32(i32 7, float %10396)  ; Saturate(value)
  %10398 = fmul fast float %10397, 6.300000e+01
  %10399 = fptoui float %10398 to i32
  %10400 = uitofp i32 %10399 to float
  %10401 = fmul fast float %10400, 0x3FA8618620000000
  %10402 = fadd fast float %10401, %10394
  br label %10403

; <label>:10403                                   ; preds = %10392, %10391
  %10404 = phi float [ %10402, %10392 ], [ %73, %10391 ]
  %10405 = call float @dx.op.unary.f32(i32 27, float %10404)  ; Round_ni(value)
  %10406 = fadd fast float %10405, 1.000000e+00
  %10407 = call float @dx.op.unary.f32(i32 22, float %10404)  ; Frc(value)
  %10408 = fmul fast float %10405, 0x3FE3C6EF40000000
  %10409 = call float @dx.op.unary.f32(i32 22, float %10408)  ; Frc(value)
  %10410 = fadd fast float %10409, 0x3FE5555560000000
  %10411 = fadd fast float %10409, 0x3FD5555560000000
  %10412 = fsub fast float -0.000000e+00, %10409
  %10413 = fsub fast float -0.000000e+00, %10410
  %10414 = fsub fast float -0.000000e+00, %10411
  %10415 = fcmp fast oge float %10409, %10412
  %10416 = fcmp fast oge float %10410, %10413
  %10417 = fcmp fast oge float %10411, %10414
  %10418 = call float @dx.op.unary.f32(i32 6, float %10409)  ; FAbs(value)
  %10419 = call float @dx.op.unary.f32(i32 6, float %10410)  ; FAbs(value)
  %10420 = call float @dx.op.unary.f32(i32 6, float %10411)  ; FAbs(value)
  %10421 = call float @dx.op.unary.f32(i32 22, float %10418)  ; Frc(value)
  %10422 = call float @dx.op.unary.f32(i32 22, float %10419)  ; Frc(value)
  %10423 = call float @dx.op.unary.f32(i32 22, float %10420)  ; Frc(value)
  %10424 = fsub fast float -0.000000e+00, %10421
  %10425 = fsub fast float -0.000000e+00, %10422
  %10426 = fsub fast float -0.000000e+00, %10423
  %10427 = select i1 %10415, float %10421, float %10424
  %10428 = select i1 %10416, float %10422, float %10425
  %10429 = select i1 %10417, float %10423, float %10426
  %10430 = fmul fast float %10427, 6.000000e+00
  %10431 = fmul fast float %10428, 6.000000e+00
  %10432 = fmul fast float %10429, 6.000000e+00
  %10433 = fadd fast float %10430, -3.000000e+00
  %10434 = fadd fast float %10431, -3.000000e+00
  %10435 = fadd fast float %10432, -3.000000e+00
  %10436 = call float @dx.op.unary.f32(i32 6, float %10433)  ; FAbs(value)
  %10437 = call float @dx.op.unary.f32(i32 6, float %10434)  ; FAbs(value)
  %10438 = call float @dx.op.unary.f32(i32 6, float %10435)  ; FAbs(value)
  %10439 = fadd fast float %10436, -1.000000e+00
  %10440 = fadd fast float %10437, -1.000000e+00
  %10441 = fadd fast float %10438, -1.000000e+00
  %10442 = call float @dx.op.unary.f32(i32 7, float %10439)  ; Saturate(value)
  %10443 = call float @dx.op.unary.f32(i32 7, float %10440)  ; Saturate(value)
  %10444 = call float @dx.op.unary.f32(i32 7, float %10441)  ; Saturate(value)
  %10445 = fmul fast float %10406, 0x3FE3C6EF40000000
  %10446 = call float @dx.op.unary.f32(i32 22, float %10445)  ; Frc(value)
  %10447 = fadd fast float %10446, 0x3FE5555560000000
  %10448 = fadd fast float %10446, 0x3FD5555560000000
  %10449 = fsub fast float -0.000000e+00, %10446
  %10450 = fsub fast float -0.000000e+00, %10447
  %10451 = fsub fast float -0.000000e+00, %10448
  %10452 = fcmp fast oge float %10446, %10449
  %10453 = fcmp fast oge float %10447, %10450
  %10454 = fcmp fast oge float %10448, %10451
  %10455 = call float @dx.op.unary.f32(i32 6, float %10446)  ; FAbs(value)
  %10456 = call float @dx.op.unary.f32(i32 6, float %10447)  ; FAbs(value)
  %10457 = call float @dx.op.unary.f32(i32 6, float %10448)  ; FAbs(value)
  %10458 = call float @dx.op.unary.f32(i32 22, float %10455)  ; Frc(value)
  %10459 = call float @dx.op.unary.f32(i32 22, float %10456)  ; Frc(value)
  %10460 = call float @dx.op.unary.f32(i32 22, float %10457)  ; Frc(value)
  %10461 = fsub fast float -0.000000e+00, %10458
  %10462 = fsub fast float -0.000000e+00, %10459
  %10463 = fsub fast float -0.000000e+00, %10460
  %10464 = select i1 %10452, float %10458, float %10461
  %10465 = select i1 %10453, float %10459, float %10462
  %10466 = select i1 %10454, float %10460, float %10463
  %10467 = fmul fast float %10464, 6.000000e+00
  %10468 = fmul fast float %10465, 6.000000e+00
  %10469 = fmul fast float %10466, 6.000000e+00
  %10470 = fadd fast float %10467, -3.000000e+00
  %10471 = fadd fast float %10468, -3.000000e+00
  %10472 = fadd fast float %10469, -3.000000e+00
  %10473 = call float @dx.op.unary.f32(i32 6, float %10470)  ; FAbs(value)
  %10474 = call float @dx.op.unary.f32(i32 6, float %10471)  ; FAbs(value)
  %10475 = call float @dx.op.unary.f32(i32 6, float %10472)  ; FAbs(value)
  %10476 = fadd fast float %10473, -1.000000e+00
  %10477 = fadd fast float %10474, -1.000000e+00
  %10478 = fadd fast float %10475, -1.000000e+00
  %10479 = call float @dx.op.unary.f32(i32 7, float %10476)  ; Saturate(value)
  %10480 = call float @dx.op.unary.f32(i32 7, float %10477)  ; Saturate(value)
  %10481 = call float @dx.op.unary.f32(i32 7, float %10478)  ; Saturate(value)
  %10482 = fsub fast float %10479, %10442
  %10483 = fsub fast float %10480, %10443
  %10484 = fsub fast float %10481, %10444
  %10485 = fmul fast float %10482, %10407
  %10486 = fmul fast float %10483, %10407
  %10487 = fmul fast float %10484, %10407
  %10488 = fadd fast float %10485, %10442
  %10489 = fadd fast float %10486, %10443
  %10490 = fadd fast float %10487, %10444
  br label %11256

; <label>:10491                                   ; preds = %10387
  %10492 = and i32 %10337, -2
  %10493 = icmp eq i32 %10492, 4
  br i1 %10493, label %10494, label %10503

; <label>:10494                                   ; preds = %10491
  %10495 = uitofp i32 %198 to float
  %10496 = fmul fast float %10495, 0x3FE3C6EF40000000
  %10497 = call float @dx.op.unary.f32(i32 22, float %10496)  ; Frc(value)
  %10498 = fmul fast float %10497, 5.000000e-01
  %10499 = fadd fast float %10498, 5.000000e-01
  %10500 = fmul fast float %10499, %73
  %10501 = fmul fast float %10499, %74
  %10502 = fmul fast float %10499, %75
  br label %11256

; <label>:10503                                   ; preds = %10491
  %10504 = icmp eq i32 %10337, 6
  br i1 %10504, label %11256, label %10505

; <label>:10505                                   ; preds = %10503
  %10506 = icmp eq i32 %10337, 7
  br i1 %10506, label %11256, label %10507

; <label>:10507                                   ; preds = %10505
  %10508 = icmp eq i32 %10337, 8
  br i1 %10508, label %11256, label %10509

; <label>:10509                                   ; preds = %10507
  %10510 = icmp eq i32 %10337, 9
  br i1 %10510, label %10511, label %10523

; <label>:10511                                   ; preds = %10509
  %10512 = fcmp fast ogt float %347, 0.000000e+00
  %10513 = call float @dx.op.dot2.f32(i32 54, float %342, float %343, float %342, float %343)  ; Dot2(ax,ay,bx,by)
  %10514 = call float @dx.op.unary.f32(i32 25, float %10513)  ; Rsqrt(value)
  %10515 = fmul fast float %342, 5.000000e-01
  %10516 = fmul fast float %10515, %10514
  %10517 = fmul fast float %343, 5.000000e-01
  %10518 = fmul fast float %10517, %10514
  %10519 = fadd fast float %10516, 5.000000e-01
  %10520 = select i1 %10512, float %10519, float 5.000000e-01
  %10521 = fadd fast float %10518, 5.000000e-01
  %10522 = select i1 %10512, float %10521, float 5.000000e-01
  br label %11256

; <label>:10523                                   ; preds = %10509
  %10524 = icmp eq i32 %10337, 10
  br i1 %10524, label %10525, label %10527

; <label>:10525                                   ; preds = %10523
  %10526 = fmul fast float %347, 0x3F747AE140000000
  br label %11256

; <label>:10527                                   ; preds = %10523
  %10528 = icmp eq i32 %10337, 11
  br i1 %10528, label %11256, label %10529

; <label>:10529                                   ; preds = %10527
  %10530 = icmp eq i32 %10337, 12
  br i1 %10530, label %11256, label %10531

; <label>:10531                                   ; preds = %10529
  %10532 = icmp eq i32 %10337, 13
  br i1 %10532, label %11256, label %10533

; <label>:10533                                   ; preds = %10531
  %10534 = icmp eq i32 %10337, 14
  br i1 %10534, label %11256, label %10535

; <label>:10535                                   ; preds = %10533
  %10536 = icmp eq i32 %10337, 15
  br i1 %10536, label %11256, label %10537

; <label>:10537                                   ; preds = %10535
  %10538 = icmp eq i32 %10337, 16
  br i1 %10538, label %11256, label %10539

; <label>:10539                                   ; preds = %10537
  %10540 = icmp eq i32 %10337, 17
  br i1 %10540, label %11256, label %10541

; <label>:10541                                   ; preds = %10539
  %10542 = icmp eq i32 %10337, 18
  br i1 %10542, label %11256, label %10543

; <label>:10543                                   ; preds = %10541
  %10544 = icmp eq i32 %10337, 19
  br i1 %10544, label %11256, label %10545

; <label>:10545                                   ; preds = %10543
  %10546 = icmp eq i32 %10337, 20
  br i1 %10546, label %10547, label %10552

; <label>:10547                                   ; preds = %10545
  %10548 = fmul fast float %842, 5.000000e-01
  %10549 = fmul fast float %843, 5.000000e-01
  %10550 = fadd fast float %10548, 5.000000e-01
  %10551 = fadd fast float %10549, 5.000000e-01
  br label %11256

; <label>:10552                                   ; preds = %10545
  %10553 = and i32 %10337, -9
  %10554 = icmp eq i32 %10553, 21
  br i1 %10554, label %11256, label %10555

; <label>:10555                                   ; preds = %10552
  %10556 = icmp eq i32 %10337, 22
  %10557 = icmp eq i32 %10337, 38
  %10558 = or i1 %10556, %10557
  br i1 %10558, label %10559, label %10673

; <label>:10559                                   ; preds = %10555
  %10560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10561 = extractvalue %dx.types.CBufRet.f32 %10560, 0
  %10562 = extractvalue %dx.types.CBufRet.f32 %10560, 1
  %10563 = extractvalue %dx.types.CBufRet.f32 %10560, 2
  %10564 = fadd fast float %10561, %154
  %10565 = fadd fast float %10562, %155
  %10566 = fadd fast float %10563, %156
  %10567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10568 = extractvalue %dx.types.CBufRet.f32 %10567, 0
  %10569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10570 = extractvalue %dx.types.CBufRet.f32 %10569, 0
  %10571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10572 = extractvalue %dx.types.CBufRet.f32 %10571, 0
  %10573 = extractvalue %dx.types.CBufRet.f32 %10567, 1
  %10574 = extractvalue %dx.types.CBufRet.f32 %10569, 1
  %10575 = extractvalue %dx.types.CBufRet.f32 %10571, 1
  %10576 = extractvalue %dx.types.CBufRet.f32 %10567, 3
  %10577 = extractvalue %dx.types.CBufRet.f32 %10569, 3
  %10578 = extractvalue %dx.types.CBufRet.f32 %10571, 3
  %10579 = fadd fast float %10564, %10576
  %10580 = fadd fast float %10565, %10577
  %10581 = fadd fast float %10566, %10578
  %10582 = fmul fast float %10579, %10568
  %10583 = call float @dx.op.tertiary.f32(i32 46, float %10580, float %10570, float %10582)  ; FMad(a,b,c)
  %10584 = call float @dx.op.tertiary.f32(i32 46, float %10581, float %10572, float %10583)  ; FMad(a,b,c)
  %10585 = fmul fast float %10579, %10573
  %10586 = call float @dx.op.tertiary.f32(i32 46, float %10580, float %10574, float %10585)  ; FMad(a,b,c)
  %10587 = call float @dx.op.tertiary.f32(i32 46, float %10581, float %10575, float %10586)  ; FMad(a,b,c)
  %10588 = fsub fast float %10584, %10576
  %10589 = fsub fast float %10587, %10577
  %10590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %10591 = extractvalue %dx.types.CBufRet.f32 %10590, 0
  %10592 = extractvalue %dx.types.CBufRet.f32 %10590, 1
  %10593 = fsub fast float %10588, %10591
  %10594 = fsub fast float %10589, %10592
  %10595 = fmul fast float %10593, %10593
  %10596 = fmul fast float %10594, %10594
  %10597 = fadd fast float %10595, %10596
  %10598 = call float @dx.op.unary.f32(i32 24, float %10597)  ; Sqrt(value)
  %10599 = extractvalue %dx.types.CBufRet.f32 %10590, 2
  %10600 = fcmp fast olt float %10598, %10599
  br i1 %10600, label %10601, label %11256

; <label>:10601                                   ; preds = %10559
  %10602 = fadd fast float %10593, %10599
  %10603 = fadd fast float %10594, %10599
  %10604 = extractvalue %dx.types.CBufRet.f32 %10590, 3
  %10605 = fmul fast float %10602, %10604
  %10606 = fmul fast float %10603, %10604
  %10607 = call float @dx.op.unary.f32(i32 7, float %10605)  ; Saturate(value)
  %10608 = call float @dx.op.unary.f32(i32 7, float %10606)  ; Saturate(value)
  %10609 = fsub fast float 1.000000e+00, %10607
  %10610 = fsub fast float 1.000000e+00, %10608
  %10611 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %53, %dx.types.Handle %62, float %10609, float %10610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10612 = extractvalue %dx.types.ResRet.f32 %10611, 0
  %10613 = fcmp fast ugt float %10612, 0.000000e+00
  br i1 %10613, label %10614, label %11256

; <label>:10614                                   ; preds = %10601
  br i1 %10556, label %10615, label %10620

; <label>:10615                                   ; preds = %10614
  %10616 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %52, %dx.types.Handle %62, float %10609, float %10610, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %10617 = extractvalue %dx.types.ResRet.f32 %10616, 0
  %10618 = extractvalue %dx.types.ResRet.f32 %10616, 1
  %10619 = extractvalue %dx.types.ResRet.f32 %10616, 2
  br label %11256

; <label>:10620                                   ; preds = %10614
  %10621 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %53, i32 0)  ; GetDimensions(handle,mipLevel)
  %10622 = extractvalue %dx.types.Dimensions %10621, 0
  %10623 = sitofp i32 %10622 to float
  %10624 = extractvalue %dx.types.Dimensions %10621, 1
  %10625 = sitofp i32 %10624 to float
  %10626 = fmul fast float %10623, %10609
  %10627 = fmul fast float %10625, %10610
  %10628 = call float @dx.op.unary.f32(i32 27, float %10626)  ; Round_ni(value)
  %10629 = call float @dx.op.unary.f32(i32 27, float %10627)  ; Round_ni(value)
  %10630 = fptoui float %10623 to i32
  %10631 = uitofp i32 %10630 to float
  %10632 = fmul fast float %10631, %10629
  %10633 = fadd fast float %10632, %10628
  %10634 = fptoui float %10633 to i32
  %10635 = uitofp i32 %10634 to float
  %10636 = fmul fast float %10635, 0x3FE3C6EF40000000
  %10637 = call float @dx.op.unary.f32(i32 22, float %10636)  ; Frc(value)
  %10638 = fadd fast float %10637, 0x3FE5555560000000
  %10639 = fadd fast float %10637, 0x3FD5555560000000
  %10640 = fsub fast float -0.000000e+00, %10637
  %10641 = fsub fast float -0.000000e+00, %10638
  %10642 = fsub fast float -0.000000e+00, %10639
  %10643 = fcmp fast oge float %10637, %10640
  %10644 = fcmp fast oge float %10638, %10641
  %10645 = fcmp fast oge float %10639, %10642
  %10646 = call float @dx.op.unary.f32(i32 6, float %10637)  ; FAbs(value)
  %10647 = call float @dx.op.unary.f32(i32 6, float %10638)  ; FAbs(value)
  %10648 = call float @dx.op.unary.f32(i32 6, float %10639)  ; FAbs(value)
  %10649 = call float @dx.op.unary.f32(i32 22, float %10646)  ; Frc(value)
  %10650 = call float @dx.op.unary.f32(i32 22, float %10647)  ; Frc(value)
  %10651 = call float @dx.op.unary.f32(i32 22, float %10648)  ; Frc(value)
  %10652 = fsub fast float -0.000000e+00, %10649
  %10653 = fsub fast float -0.000000e+00, %10650
  %10654 = fsub fast float -0.000000e+00, %10651
  %10655 = select i1 %10643, float %10649, float %10652
  %10656 = select i1 %10644, float %10650, float %10653
  %10657 = select i1 %10645, float %10651, float %10654
  %10658 = fmul fast float %10655, 6.000000e+00
  %10659 = fmul fast float %10656, 6.000000e+00
  %10660 = fmul fast float %10657, 6.000000e+00
  %10661 = fadd fast float %10658, -3.000000e+00
  %10662 = fadd fast float %10659, -3.000000e+00
  %10663 = fadd fast float %10660, -3.000000e+00
  %10664 = call float @dx.op.unary.f32(i32 6, float %10661)  ; FAbs(value)
  %10665 = call float @dx.op.unary.f32(i32 6, float %10662)  ; FAbs(value)
  %10666 = call float @dx.op.unary.f32(i32 6, float %10663)  ; FAbs(value)
  %10667 = fadd fast float %10664, -1.000000e+00
  %10668 = fadd fast float %10665, -1.000000e+00
  %10669 = fadd fast float %10666, -1.000000e+00
  %10670 = call float @dx.op.unary.f32(i32 7, float %10667)  ; Saturate(value)
  %10671 = call float @dx.op.unary.f32(i32 7, float %10668)  ; Saturate(value)
  %10672 = call float @dx.op.unary.f32(i32 7, float %10669)  ; Saturate(value)
  br label %11256

; <label>:10673                                   ; preds = %10555
  %10674 = icmp eq i32 %10337, 39
  br i1 %10674, label %10675, label %10779

; <label>:10675                                   ; preds = %10673
  %10676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %10677 = extractvalue %dx.types.CBufRet.f32 %10676, 0
  %10678 = extractvalue %dx.types.CBufRet.f32 %10676, 1
  %10679 = extractvalue %dx.types.CBufRet.f32 %10676, 2
  %10680 = fadd fast float %10677, %154
  %10681 = fadd fast float %10678, %155
  %10682 = fadd fast float %10679, %156
  %10683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %10684 = extractvalue %dx.types.CBufRet.f32 %10683, 0
  %10685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %10686 = extractvalue %dx.types.CBufRet.f32 %10685, 0
  %10687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %10688 = extractvalue %dx.types.CBufRet.f32 %10687, 0
  %10689 = extractvalue %dx.types.CBufRet.f32 %10683, 1
  %10690 = extractvalue %dx.types.CBufRet.f32 %10685, 1
  %10691 = extractvalue %dx.types.CBufRet.f32 %10687, 1
  %10692 = extractvalue %dx.types.CBufRet.f32 %10683, 3
  %10693 = extractvalue %dx.types.CBufRet.f32 %10685, 3
  %10694 = extractvalue %dx.types.CBufRet.f32 %10687, 3
  %10695 = fadd fast float %10680, %10692
  %10696 = fadd fast float %10681, %10693
  %10697 = fadd fast float %10682, %10694
  %10698 = fmul fast float %10695, %10684
  %10699 = call float @dx.op.tertiary.f32(i32 46, float %10696, float %10686, float %10698)  ; FMad(a,b,c)
  %10700 = call float @dx.op.tertiary.f32(i32 46, float %10697, float %10688, float %10699)  ; FMad(a,b,c)
  %10701 = fmul fast float %10695, %10689
  %10702 = call float @dx.op.tertiary.f32(i32 46, float %10696, float %10690, float %10701)  ; FMad(a,b,c)
  %10703 = call float @dx.op.tertiary.f32(i32 46, float %10697, float %10691, float %10702)  ; FMad(a,b,c)
  %10704 = fsub fast float %10700, %10692
  %10705 = fsub fast float %10703, %10693
  %10706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 346)  ; CBufferLoadLegacy(handle,regIndex)
  %10707 = extractvalue %dx.types.CBufRet.f32 %10706, 0
  %10708 = extractvalue %dx.types.CBufRet.f32 %10706, 1
  %10709 = fsub fast float %10704, %10707
  %10710 = fsub fast float %10705, %10708
  %10711 = fmul fast float %10709, %10709
  %10712 = fmul fast float %10710, %10710
  %10713 = fadd fast float %10711, %10712
  %10714 = call float @dx.op.unary.f32(i32 24, float %10713)  ; Sqrt(value)
  %10715 = extractvalue %dx.types.CBufRet.f32 %10706, 2
  %10716 = fcmp fast olt float %10714, %10715
  br i1 %10716, label %10717, label %11256

; <label>:10717                                   ; preds = %10675
  %10718 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %51, i32 0)  ; GetDimensions(handle,mipLevel)
  %10719 = extractvalue %dx.types.Dimensions %10718, 0
  %10720 = sitofp i32 %10719 to float
  %10721 = extractvalue %dx.types.Dimensions %10718, 1
  %10722 = sitofp i32 %10721 to float
  %10723 = fadd fast float %10709, %10715
  %10724 = fadd fast float %10710, %10715
  %10725 = extractvalue %dx.types.CBufRet.f32 %10706, 3
  %10726 = fmul fast float %10723, %10725
  %10727 = fmul fast float %10724, %10725
  %10728 = call float @dx.op.unary.f32(i32 7, float %10726)  ; Saturate(value)
  %10729 = call float @dx.op.unary.f32(i32 7, float %10727)  ; Saturate(value)
  %10730 = fsub fast float 1.000000e+00, %10728
  %10731 = fsub fast float 1.000000e+00, %10729
  %10732 = fmul fast float %10730, %10720
  %10733 = fmul fast float %10731, %10722
  %10734 = call float @dx.op.unary.f32(i32 27, float %10732)  ; Round_ni(value)
  %10735 = call float @dx.op.unary.f32(i32 27, float %10733)  ; Round_ni(value)
  %10736 = fptoui float %10720 to i32
  %10737 = uitofp i32 %10736 to float
  %10738 = fmul fast float %10735, %10737
  %10739 = fadd fast float %10738, %10734
  %10740 = fptoui float %10739 to i32
  %10741 = uitofp i32 %10740 to float
  %10742 = fmul fast float %10741, 0x3FE3C6EF40000000
  %10743 = call float @dx.op.unary.f32(i32 22, float %10742)  ; Frc(value)
  %10744 = fadd fast float %10743, 0x3FE5555560000000
  %10745 = fadd fast float %10743, 0x3FD5555560000000
  %10746 = fsub fast float -0.000000e+00, %10743
  %10747 = fsub fast float -0.000000e+00, %10744
  %10748 = fsub fast float -0.000000e+00, %10745
  %10749 = fcmp fast oge float %10743, %10746
  %10750 = fcmp fast oge float %10744, %10747
  %10751 = fcmp fast oge float %10745, %10748
  %10752 = call float @dx.op.unary.f32(i32 6, float %10743)  ; FAbs(value)
  %10753 = call float @dx.op.unary.f32(i32 6, float %10744)  ; FAbs(value)
  %10754 = call float @dx.op.unary.f32(i32 6, float %10745)  ; FAbs(value)
  %10755 = call float @dx.op.unary.f32(i32 22, float %10752)  ; Frc(value)
  %10756 = call float @dx.op.unary.f32(i32 22, float %10753)  ; Frc(value)
  %10757 = call float @dx.op.unary.f32(i32 22, float %10754)  ; Frc(value)
  %10758 = fsub fast float -0.000000e+00, %10755
  %10759 = fsub fast float -0.000000e+00, %10756
  %10760 = fsub fast float -0.000000e+00, %10757
  %10761 = select i1 %10749, float %10755, float %10758
  %10762 = select i1 %10750, float %10756, float %10759
  %10763 = select i1 %10751, float %10757, float %10760
  %10764 = fmul fast float %10761, 6.000000e+00
  %10765 = fmul fast float %10762, 6.000000e+00
  %10766 = fmul fast float %10763, 6.000000e+00
  %10767 = fadd fast float %10764, -3.000000e+00
  %10768 = fadd fast float %10765, -3.000000e+00
  %10769 = fadd fast float %10766, -3.000000e+00
  %10770 = call float @dx.op.unary.f32(i32 6, float %10767)  ; FAbs(value)
  %10771 = call float @dx.op.unary.f32(i32 6, float %10768)  ; FAbs(value)
  %10772 = call float @dx.op.unary.f32(i32 6, float %10769)  ; FAbs(value)
  %10773 = fadd fast float %10770, -1.000000e+00
  %10774 = fadd fast float %10771, -1.000000e+00
  %10775 = fadd fast float %10772, -1.000000e+00
  %10776 = call float @dx.op.unary.f32(i32 7, float %10773)  ; Saturate(value)
  %10777 = call float @dx.op.unary.f32(i32 7, float %10774)  ; Saturate(value)
  %10778 = call float @dx.op.unary.f32(i32 7, float %10775)  ; Saturate(value)
  br label %11256

; <label>:10779                                   ; preds = %10673
  %10780 = icmp eq i32 %10337, 23
  br i1 %10780, label %11256, label %10781

; <label>:10781                                   ; preds = %10779
  %10782 = icmp eq i32 %10337, 24
  br i1 %10782, label %10783, label %10809

; <label>:10783                                   ; preds = %10781
  %10784 = and i32 %379, 255
  %10785 = uitofp i32 %10784 to float
  %10786 = fptoui float %10785 to i32
  %10787 = uitofp i32 %10786 to float
  %10788 = fadd fast float %10787, -4.000000e+00
  %10789 = fmul fast float %10788, 0x3FB5555560000000
  %10790 = call float @dx.op.unary.f32(i32 7, float %10789)  ; Saturate(value)
  %10791 = icmp eq i32 %10786, 0
  %10792 = select i1 %10791, float 0.000000e+00, float %10790
  %10793 = icmp ult i32 %10786, 2
  %10794 = select i1 %10793, float 0.000000e+00, float %10790
  %10795 = add i32 %10786, -1
  %10796 = icmp ult i32 %10795, 2
  %10797 = select i1 %10796, float 1.000000e+00, float %10792
  %10798 = icmp ult i32 %10786, 4
  %10799 = select i1 %10798, float 0.000000e+00, float 1.000000e+00
  %10800 = and i32 %10786, -2
  %10801 = icmp eq i32 %10800, 2
  %10802 = icmp eq i32 %10786, 4
  %10803 = select i1 %10802, float 1.000000e+00, float %10799
  %10804 = or i1 %10802, %10801
  %10805 = select i1 %10804, float 1.000000e+00, float %10794
  %10806 = add i32 %10786, -3
  %10807 = icmp ult i32 %10806, 2
  %10808 = select i1 %10807, float 0.000000e+00, float %10797
  br label %11256

; <label>:10809                                   ; preds = %10781
  %10810 = icmp eq i32 %10337, 25
  br i1 %10810, label %11256, label %10811

; <label>:10811                                   ; preds = %10809
  %10812 = icmp eq i32 %10337, 27
  br i1 %10812, label %10813, label %10868

; <label>:10813                                   ; preds = %10811
  %10814 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %10815 = extractvalue %dx.types.CBufRet.f32 %10814, 2
  %10816 = fptoui float %10815 to i32
  %10817 = fptoui float %178 to i32
  %10818 = and i32 %10817, 31
  %10819 = lshr i32 %10816, %10818
  %10820 = uitofp i32 %10819 to float
  %10821 = fmul fast float %10820, %80
  %10822 = fmul fast float %10820, %81
  %10823 = call float @dx.op.unary.f32(i32 27, float %10821)  ; Round_ni(value)
  %10824 = call float @dx.op.unary.f32(i32 27, float %10822)  ; Round_ni(value)
  %10825 = fptoui float %10823 to i32
  %10826 = fptoui float %10824 to i32
  %10827 = fptoui float %10820 to i32
  %10828 = mul i32 %10827, %10826
  %10829 = add i32 %10828, %10825
  %10830 = uitofp i32 %10829 to float
  %10831 = fmul fast float %10830, 0x3FE3C6EF40000000
  %10832 = call float @dx.op.unary.f32(i32 22, float %10831)  ; Frc(value)
  %10833 = fadd fast float %10832, 0x3FE5555560000000
  %10834 = fadd fast float %10832, 0x3FD5555560000000
  %10835 = fsub fast float -0.000000e+00, %10832
  %10836 = fsub fast float -0.000000e+00, %10833
  %10837 = fsub fast float -0.000000e+00, %10834
  %10838 = fcmp fast oge float %10832, %10835
  %10839 = fcmp fast oge float %10833, %10836
  %10840 = fcmp fast oge float %10834, %10837
  %10841 = call float @dx.op.unary.f32(i32 6, float %10832)  ; FAbs(value)
  %10842 = call float @dx.op.unary.f32(i32 6, float %10833)  ; FAbs(value)
  %10843 = call float @dx.op.unary.f32(i32 6, float %10834)  ; FAbs(value)
  %10844 = call float @dx.op.unary.f32(i32 22, float %10841)  ; Frc(value)
  %10845 = call float @dx.op.unary.f32(i32 22, float %10842)  ; Frc(value)
  %10846 = call float @dx.op.unary.f32(i32 22, float %10843)  ; Frc(value)
  %10847 = fsub fast float -0.000000e+00, %10844
  %10848 = fsub fast float -0.000000e+00, %10845
  %10849 = fsub fast float -0.000000e+00, %10846
  %10850 = select i1 %10838, float %10844, float %10847
  %10851 = select i1 %10839, float %10845, float %10848
  %10852 = select i1 %10840, float %10846, float %10849
  %10853 = fmul fast float %10850, 6.000000e+00
  %10854 = fmul fast float %10851, 6.000000e+00
  %10855 = fmul fast float %10852, 6.000000e+00
  %10856 = fadd fast float %10853, -3.000000e+00
  %10857 = fadd fast float %10854, -3.000000e+00
  %10858 = fadd fast float %10855, -3.000000e+00
  %10859 = call float @dx.op.unary.f32(i32 6, float %10856)  ; FAbs(value)
  %10860 = call float @dx.op.unary.f32(i32 6, float %10857)  ; FAbs(value)
  %10861 = call float @dx.op.unary.f32(i32 6, float %10858)  ; FAbs(value)
  %10862 = fadd fast float %10859, -1.000000e+00
  %10863 = fadd fast float %10860, -1.000000e+00
  %10864 = fadd fast float %10861, -1.000000e+00
  %10865 = call float @dx.op.unary.f32(i32 7, float %10862)  ; Saturate(value)
  %10866 = call float @dx.op.unary.f32(i32 7, float %10863)  ; Saturate(value)
  %10867 = call float @dx.op.unary.f32(i32 7, float %10864)  ; Saturate(value)
  br label %11256

; <label>:10868                                   ; preds = %10811
  %10869 = icmp eq i32 %10337, 30
  br i1 %10869, label %10870, label %10910

; <label>:10870                                   ; preds = %10868
  %10871 = fcmp fast olt float %429, 0.000000e+00
  br i1 %10871, label %11256, label %10872

; <label>:10872                                   ; preds = %10870
  %10873 = fmul fast float %429, 0x3FE3C6EF40000000
  %10874 = call float @dx.op.unary.f32(i32 22, float %10873)  ; Frc(value)
  %10875 = fadd fast float %10874, 0x3FE5555560000000
  %10876 = fadd fast float %10874, 0x3FD5555560000000
  %10877 = fsub fast float -0.000000e+00, %10874
  %10878 = fsub fast float -0.000000e+00, %10875
  %10879 = fsub fast float -0.000000e+00, %10876
  %10880 = fcmp fast oge float %10874, %10877
  %10881 = fcmp fast oge float %10875, %10878
  %10882 = fcmp fast oge float %10876, %10879
  %10883 = call float @dx.op.unary.f32(i32 6, float %10874)  ; FAbs(value)
  %10884 = call float @dx.op.unary.f32(i32 6, float %10875)  ; FAbs(value)
  %10885 = call float @dx.op.unary.f32(i32 6, float %10876)  ; FAbs(value)
  %10886 = call float @dx.op.unary.f32(i32 22, float %10883)  ; Frc(value)
  %10887 = call float @dx.op.unary.f32(i32 22, float %10884)  ; Frc(value)
  %10888 = call float @dx.op.unary.f32(i32 22, float %10885)  ; Frc(value)
  %10889 = fsub fast float -0.000000e+00, %10886
  %10890 = fsub fast float -0.000000e+00, %10887
  %10891 = fsub fast float -0.000000e+00, %10888
  %10892 = select i1 %10880, float %10886, float %10889
  %10893 = select i1 %10881, float %10887, float %10890
  %10894 = select i1 %10882, float %10888, float %10891
  %10895 = fmul fast float %10892, 6.000000e+00
  %10896 = fmul fast float %10893, 6.000000e+00
  %10897 = fmul fast float %10894, 6.000000e+00
  %10898 = fadd fast float %10895, -3.000000e+00
  %10899 = fadd fast float %10896, -3.000000e+00
  %10900 = fadd fast float %10897, -3.000000e+00
  %10901 = call float @dx.op.unary.f32(i32 6, float %10898)  ; FAbs(value)
  %10902 = call float @dx.op.unary.f32(i32 6, float %10899)  ; FAbs(value)
  %10903 = call float @dx.op.unary.f32(i32 6, float %10900)  ; FAbs(value)
  %10904 = fadd fast float %10901, -1.000000e+00
  %10905 = fadd fast float %10902, -1.000000e+00
  %10906 = fadd fast float %10903, -1.000000e+00
  %10907 = call float @dx.op.unary.f32(i32 7, float %10904)  ; Saturate(value)
  %10908 = call float @dx.op.unary.f32(i32 7, float %10905)  ; Saturate(value)
  %10909 = call float @dx.op.unary.f32(i32 7, float %10906)  ; Saturate(value)
  br label %11256

; <label>:10910                                   ; preds = %10868
  %10911 = add i32 %10337, -31
  %10912 = icmp ult i32 %10911, 2
  br i1 %10912, label %10913, label %10921

; <label>:10913                                   ; preds = %10910
  %10914 = fcmp fast olt float %430, 0.000000e+00
  %10915 = call float @dx.op.unary.f32(i32 6, float %430)  ; FAbs(value)
  %10916 = fmul fast float %10915, 5.000000e-01
  %10917 = call float @dx.op.unary.f32(i32 7, float %10916)  ; Saturate(value)
  %10918 = select i1 %10914, float 0.000000e+00, float %10917
  %10919 = select i1 %10914, float %10917, float 0.000000e+00
  %10920 = fadd fast float %10917, 5.000000e-01
  br label %11256

; <label>:10921                                   ; preds = %10910
  %10922 = icmp eq i32 %10337, 36
  br i1 %10922, label %10923, label %10955

; <label>:10923                                   ; preds = %10921
  %10924 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %66, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %10925 = extractvalue %dx.types.CBufRet.i32 %10924, 0
  %10926 = and i32 %10925, 2048
  %10927 = icmp ne i32 %10926, 0
  %10928 = call float @dx.op.binary.f32(i32 35, float %1801, float %1802)  ; FMax(a,b)
  %10929 = call float @dx.op.binary.f32(i32 35, float %1800, float %10928)  ; FMax(a,b)
  %10930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %10931 = extractvalue %dx.types.CBufRet.f32 %10930, 1
  %10932 = fcmp fast oge float %10929, %10931
  %10933 = and i1 %10927, %10932
  br i1 %10933, label %10934, label %10940

; <label>:10934                                   ; preds = %10923
  %10935 = fsub fast float 1.000000e+00, %10316
  %10936 = fmul fast float %10935, 5.000000e-01
  %10937 = fadd fast float %10936, %10316
  %10938 = fmul fast float %10317, 5.000000e-01
  %10939 = fmul fast float %10318, 5.000000e-01
  br label %11256

; <label>:10940                                   ; preds = %10923
  %10941 = call float @dx.op.dot3.f32(i32 55, float %1887, float %1888, float %1889, float %1714, float %1715, float %1716)  ; Dot3(ax,ay,az,bx,by,bz)
  %10942 = and i32 %10925, 1024
  %10943 = icmp ne i32 %10942, 0
  %10944 = extractvalue %dx.types.CBufRet.f32 %10930, 2
  %10945 = fcmp fast ole float %10941, %10944
  %10946 = and i1 %10943, %10945
  br i1 %10946, label %10947, label %11256

; <label>:10947                                   ; preds = %10940
  %10948 = fsub fast float 1.000000e+00, %10316
  %10949 = fsub fast float 1.000000e+00, %10317
  %10950 = fmul fast float %10948, 5.000000e-01
  %10951 = fmul fast float %10949, 5.000000e-01
  %10952 = fadd fast float %10950, %10316
  %10953 = fadd fast float %10951, %10317
  %10954 = fmul fast float %10318, 5.000000e-01
  br label %11256

; <label>:10955                                   ; preds = %10921
  %10956 = icmp eq i32 %10337, 40
  br i1 %10956, label %10957, label %11194

; <label>:10957                                   ; preds = %10955
  %10958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 64)  ; CBufferLoadLegacy(handle,regIndex)
  %10959 = extractvalue %dx.types.CBufRet.f32 %10958, 0
  %10960 = fcmp fast ogt float %1784, %10959
  %10961 = zext i1 %10960 to i32
  %10962 = extractvalue %dx.types.CBufRet.f32 %10958, 1
  %10963 = fcmp fast ogt float %1784, %10962
  %10964 = zext i1 %10963 to i32
  %10965 = add nuw nsw i32 %10964, %10961
  %10966 = extractvalue %dx.types.CBufRet.f32 %10958, 2
  %10967 = fcmp fast ogt float %1784, %10966
  %10968 = zext i1 %10967 to i32
  %10969 = add nuw nsw i32 %10965, %10968
  %10970 = icmp ult i32 %10969, 3
  %10971 = zext i1 %10970 to i32
  %10972 = shl nuw nsw i32 %10969, 2
  %10973 = add nuw nsw i32 %10972, 48
  %10974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %10973)  ; CBufferLoadLegacy(handle,regIndex)
  %10975 = extractvalue %dx.types.CBufRet.f32 %10974, 1
  %10976 = fcmp fast ogt float %1784, %10975
  %10977 = zext i1 %10976 to i32
  %10978 = or i32 %10972, 1
  %10979 = add nuw nsw i32 %10978, 48
  %10980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %10979)  ; CBufferLoadLegacy(handle,regIndex)
  %10981 = extractvalue %dx.types.CBufRet.f32 %10980, 1
  %10982 = fcmp fast ogt float %1784, %10981
  %10983 = zext i1 %10982 to i32
  %10984 = add nuw nsw i32 %10983, %10977
  %10985 = or i32 %10972, 2
  %10986 = add nuw nsw i32 %10985, 48
  %10987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %10986)  ; CBufferLoadLegacy(handle,regIndex)
  %10988 = extractvalue %dx.types.CBufRet.f32 %10987, 1
  %10989 = fcmp fast ogt float %1784, %10988
  %10990 = zext i1 %10989 to i32
  %10991 = add nuw nsw i32 %10984, %10990
  %10992 = call i32 @dx.op.binary.i32(i32 40, i32 %10991, i32 3)  ; UMin(a,b)
  %10993 = add i32 %10972, %10992
  %10994 = call i32 @dx.op.binary.i32(i32 40, i32 %10993, i32 12)  ; UMin(a,b)
  %10995 = add i32 %10994, 48
  %10996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %10995)  ; CBufferLoadLegacy(handle,regIndex)
  %10997 = extractvalue %dx.types.CBufRet.f32 %10996, 0
  %10998 = fcmp fast oge float %1784, %10997
  %10999 = zext i1 %10998 to i32
  %11000 = call i32 @dx.op.binary.i32(i32 40, i32 4, i32 %10971)  ; UMin(a,b)
  %11001 = call i32 @dx.op.binary.i32(i32 40, i32 %10999, i32 %11000)  ; UMin(a,b)
  %11002 = fmul fast float %10327, 7.500000e-01
  %11003 = fadd fast float %11002, %10325
  %11004 = fcmp fast ult float %10322, %11003
  br i1 %11004, label %11044, label %11005

; <label>:11005                                   ; preds = %10957
  %11006 = uitofp i32 %10994 to float
  %11007 = fmul fast float %11006, 0x3FE3C6EF40000000
  %11008 = call float @dx.op.unary.f32(i32 22, float %11007)  ; Frc(value)
  %11009 = fadd fast float %11008, 0x3FE5555560000000
  %11010 = fadd fast float %11008, 0x3FD5555560000000
  %11011 = fsub fast float -0.000000e+00, %11008
  %11012 = fsub fast float -0.000000e+00, %11009
  %11013 = fsub fast float -0.000000e+00, %11010
  %11014 = fcmp fast oge float %11008, %11011
  %11015 = fcmp fast oge float %11009, %11012
  %11016 = fcmp fast oge float %11010, %11013
  %11017 = call float @dx.op.unary.f32(i32 6, float %11008)  ; FAbs(value)
  %11018 = call float @dx.op.unary.f32(i32 6, float %11009)  ; FAbs(value)
  %11019 = call float @dx.op.unary.f32(i32 6, float %11010)  ; FAbs(value)
  %11020 = call float @dx.op.unary.f32(i32 22, float %11017)  ; Frc(value)
  %11021 = call float @dx.op.unary.f32(i32 22, float %11018)  ; Frc(value)
  %11022 = call float @dx.op.unary.f32(i32 22, float %11019)  ; Frc(value)
  %11023 = fsub fast float -0.000000e+00, %11020
  %11024 = fsub fast float -0.000000e+00, %11021
  %11025 = fsub fast float -0.000000e+00, %11022
  %11026 = select i1 %11014, float %11020, float %11023
  %11027 = select i1 %11015, float %11021, float %11024
  %11028 = select i1 %11016, float %11022, float %11025
  %11029 = fmul fast float %11026, 6.000000e+00
  %11030 = fmul fast float %11027, 6.000000e+00
  %11031 = fmul fast float %11028, 6.000000e+00
  %11032 = fadd fast float %11029, -3.000000e+00
  %11033 = fadd fast float %11030, -3.000000e+00
  %11034 = fadd fast float %11031, -3.000000e+00
  %11035 = call float @dx.op.unary.f32(i32 6, float %11032)  ; FAbs(value)
  %11036 = call float @dx.op.unary.f32(i32 6, float %11033)  ; FAbs(value)
  %11037 = call float @dx.op.unary.f32(i32 6, float %11034)  ; FAbs(value)
  %11038 = fadd fast float %11035, -1.000000e+00
  %11039 = fadd fast float %11036, -1.000000e+00
  %11040 = fadd fast float %11037, -1.000000e+00
  %11041 = call float @dx.op.unary.f32(i32 7, float %11038)  ; Saturate(value)
  %11042 = call float @dx.op.unary.f32(i32 7, float %11039)  ; Saturate(value)
  %11043 = call float @dx.op.unary.f32(i32 7, float %11040)  ; Saturate(value)
  br label %11181

; <label>:11044                                   ; preds = %10957
  %11045 = fmul fast float %10327, 5.000000e-01
  %11046 = fadd fast float %11045, %10325
  %11047 = fcmp fast ult float %10322, %11046
  br i1 %11047, label %11074, label %11048

; <label>:11048                                   ; preds = %11044
  %11049 = add i32 %11001, 4
  %11050 = icmp eq i32 %11049, 0
  br i1 %11050, label %11181, label %11051

; <label>:11051                                   ; preds = %11048
  br label %11052

; <label>:11052                                   ; preds = %11052, %11051
  %11053 = phi float [ %11069, %11052 ], [ 0.000000e+00, %11051 ]
  %11054 = phi i32 [ %11070, %11052 ], [ 0, %11051 ]
  %11055 = add i32 %10994, 32
  %11056 = add i32 %11055, %11054
  %11057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11056)  ; CBufferLoadLegacy(handle,regIndex)
  %11058 = extractvalue %dx.types.CBufRet.f32 %11057, 0
  %11059 = extractvalue %dx.types.CBufRet.f32 %11057, 1
  %11060 = extractvalue %dx.types.CBufRet.f32 %11057, 2
  %11061 = extractvalue %dx.types.CBufRet.f32 %11057, 3
  %11062 = fmul fast float %11058, %1784
  %11063 = fadd fast float %11062, %11059
  %11064 = call float @dx.op.unary.f32(i32 7, float %11063)  ; Saturate(value)
  %11065 = fmul fast float %11060, %1784
  %11066 = fadd fast float %11065, %11061
  %11067 = call float @dx.op.unary.f32(i32 7, float %11066)  ; Saturate(value)
  %11068 = call float @dx.op.binary.f32(i32 36, float %11064, float %11067)  ; FMin(a,b)
  %11069 = fadd fast float %11068, %11053
  %11070 = add nuw i32 %11054, 1
  %11071 = icmp eq i32 %11070, %11049
  br i1 %11071, label %11072, label %11052

; <label>:11072                                   ; preds = %11052
  %11073 = fmul float %11069, 2.500000e-01
  br label %11181

; <label>:11074                                   ; preds = %11044
  %11075 = fmul fast float %10327, 2.500000e-01
  %11076 = fadd fast float %11075, %10325
  %11077 = fcmp fast ult float %10322, %11076
  br i1 %11077, label %11177, label %11078

; <label>:11078                                   ; preds = %11074
  %11079 = add i32 %10994, 32
  %11080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %67, i32 %11079)  ; CBufferLoadLegacy(handle,regIndex)
  %11081 = extractvalue %dx.types.CBufRet.f32 %11080, 0
  %11082 = extractvalue %dx.types.CBufRet.f32 %11080, 1
  %11083 = extractvalue %dx.types.CBufRet.f32 %11080, 2
  %11084 = extractvalue %dx.types.CBufRet.f32 %11080, 3
  %11085 = fmul fast float %11081, %1784
  %11086 = fadd fast float %11085, %11082
  %11087 = call float @dx.op.unary.f32(i32 7, float %11086)  ; Saturate(value)
  %11088 = fmul fast float %11083, %1784
  %11089 = fadd fast float %11088, %11084
  %11090 = call float @dx.op.unary.f32(i32 7, float %11089)  ; Saturate(value)
  %11091 = call float @dx.op.binary.f32(i32 36, float %11087, float %11090)  ; FMin(a,b)
  %11092 = uitofp i32 %10994 to float
  %11093 = fmul fast float %11092, 0x3FE3C6EF40000000
  %11094 = call float @dx.op.unary.f32(i32 22, float %11093)  ; Frc(value)
  %11095 = fadd fast float %11094, 0x3FE5555560000000
  %11096 = fadd fast float %11094, 0x3FD5555560000000
  %11097 = fsub fast float -0.000000e+00, %11094
  %11098 = fsub fast float -0.000000e+00, %11095
  %11099 = fsub fast float -0.000000e+00, %11096
  %11100 = fcmp fast oge float %11094, %11097
  %11101 = fcmp fast oge float %11095, %11098
  %11102 = fcmp fast oge float %11096, %11099
  %11103 = call float @dx.op.unary.f32(i32 6, float %11094)  ; FAbs(value)
  %11104 = call float @dx.op.unary.f32(i32 6, float %11095)  ; FAbs(value)
  %11105 = call float @dx.op.unary.f32(i32 6, float %11096)  ; FAbs(value)
  %11106 = call float @dx.op.unary.f32(i32 22, float %11103)  ; Frc(value)
  %11107 = call float @dx.op.unary.f32(i32 22, float %11104)  ; Frc(value)
  %11108 = call float @dx.op.unary.f32(i32 22, float %11105)  ; Frc(value)
  %11109 = fsub fast float -0.000000e+00, %11106
  %11110 = fsub fast float -0.000000e+00, %11107
  %11111 = fsub fast float -0.000000e+00, %11108
  %11112 = select i1 %11100, float %11106, float %11109
  %11113 = select i1 %11101, float %11107, float %11110
  %11114 = select i1 %11102, float %11108, float %11111
  %11115 = fmul fast float %11112, 6.000000e+00
  %11116 = fmul fast float %11113, 6.000000e+00
  %11117 = fmul fast float %11114, 6.000000e+00
  %11118 = fadd fast float %11115, -3.000000e+00
  %11119 = fadd fast float %11116, -3.000000e+00
  %11120 = fadd fast float %11117, -3.000000e+00
  %11121 = call float @dx.op.unary.f32(i32 6, float %11118)  ; FAbs(value)
  %11122 = call float @dx.op.unary.f32(i32 6, float %11119)  ; FAbs(value)
  %11123 = call float @dx.op.unary.f32(i32 6, float %11120)  ; FAbs(value)
  %11124 = fadd fast float %11121, -1.000000e+00
  %11125 = fadd fast float %11122, -1.000000e+00
  %11126 = fadd fast float %11123, -1.000000e+00
  %11127 = call float @dx.op.unary.f32(i32 7, float %11124)  ; Saturate(value)
  %11128 = call float @dx.op.unary.f32(i32 7, float %11125)  ; Saturate(value)
  %11129 = call float @dx.op.unary.f32(i32 7, float %11126)  ; Saturate(value)
  %11130 = fadd fast float %11092, 1.000000e+00
  %11131 = fmul fast float %11130, 0x3FE3C6EF40000000
  %11132 = call float @dx.op.unary.f32(i32 22, float %11131)  ; Frc(value)
  %11133 = fadd fast float %11132, 0x3FE5555560000000
  %11134 = fadd fast float %11132, 0x3FD5555560000000
  %11135 = fsub fast float -0.000000e+00, %11132
  %11136 = fsub fast float -0.000000e+00, %11133
  %11137 = fsub fast float -0.000000e+00, %11134
  %11138 = fcmp fast oge float %11132, %11135
  %11139 = fcmp fast oge float %11133, %11136
  %11140 = fcmp fast oge float %11134, %11137
  %11141 = call float @dx.op.unary.f32(i32 6, float %11132)  ; FAbs(value)
  %11142 = call float @dx.op.unary.f32(i32 6, float %11133)  ; FAbs(value)
  %11143 = call float @dx.op.unary.f32(i32 6, float %11134)  ; FAbs(value)
  %11144 = call float @dx.op.unary.f32(i32 22, float %11141)  ; Frc(value)
  %11145 = call float @dx.op.unary.f32(i32 22, float %11142)  ; Frc(value)
  %11146 = call float @dx.op.unary.f32(i32 22, float %11143)  ; Frc(value)
  %11147 = fsub fast float -0.000000e+00, %11144
  %11148 = fsub fast float -0.000000e+00, %11145
  %11149 = fsub fast float -0.000000e+00, %11146
  %11150 = select i1 %11138, float %11144, float %11147
  %11151 = select i1 %11139, float %11145, float %11148
  %11152 = select i1 %11140, float %11146, float %11149
  %11153 = fmul fast float %11150, 6.000000e+00
  %11154 = fmul fast float %11151, 6.000000e+00
  %11155 = fmul fast float %11152, 6.000000e+00
  %11156 = fadd fast float %11153, -3.000000e+00
  %11157 = fadd fast float %11154, -3.000000e+00
  %11158 = fadd fast float %11155, -3.000000e+00
  %11159 = call float @dx.op.unary.f32(i32 6, float %11156)  ; FAbs(value)
  %11160 = call float @dx.op.unary.f32(i32 6, float %11157)  ; FAbs(value)
  %11161 = call float @dx.op.unary.f32(i32 6, float %11158)  ; FAbs(value)
  %11162 = fadd fast float %11159, -1.000000e+00
  %11163 = fadd fast float %11160, -1.000000e+00
  %11164 = fadd fast float %11161, -1.000000e+00
  %11165 = call float @dx.op.unary.f32(i32 7, float %11162)  ; Saturate(value)
  %11166 = call float @dx.op.unary.f32(i32 7, float %11163)  ; Saturate(value)
  %11167 = call float @dx.op.unary.f32(i32 7, float %11164)  ; Saturate(value)
  %11168 = fsub fast float %11165, %11127
  %11169 = fsub fast float %11166, %11128
  %11170 = fsub fast float %11167, %11129
  %11171 = fmul fast float %11168, %11091
  %11172 = fmul fast float %11169, %11091
  %11173 = fmul fast float %11170, %11091
  %11174 = fadd fast float %11171, %11127
  %11175 = fadd fast float %11172, %11128
  %11176 = fadd fast float %11173, %11129
  br label %11181

; <label>:11177                                   ; preds = %11074
  %11178 = icmp ne i32 %11001, 0
  %11179 = select i1 %11178, float 1.000000e+00, float 0.000000e+00
  %11180 = select i1 %11178, float 0.000000e+00, float 1.000000e+00
  br label %11181

; <label>:11181                                   ; preds = %11177, %11078, %11072, %11048, %11005
  %11182 = phi float [ %11041, %11005 ], [ %11174, %11078 ], [ %11179, %11177 ], [ 0.000000e+00, %11048 ], [ %11073, %11072 ]
  %11183 = phi float [ %11042, %11005 ], [ %11175, %11078 ], [ %11180, %11177 ], [ 0.000000e+00, %11048 ], [ %11073, %11072 ]
  %11184 = phi float [ %11043, %11005 ], [ %11176, %11078 ], [ 0.000000e+00, %11177 ], [ 0.000000e+00, %11048 ], [ %11073, %11072 ]
  %11185 = fsub fast float %11182, %10316
  %11186 = fsub fast float %11183, %10317
  %11187 = fsub fast float %11184, %10318
  %11188 = fmul fast float %11185, 5.000000e-01
  %11189 = fmul fast float %11186, 5.000000e-01
  %11190 = fmul fast float %11187, 5.000000e-01
  %11191 = fadd fast float %11188, %10316
  %11192 = fadd fast float %11189, %10317
  %11193 = fadd fast float %11190, %10318
  br label %11256

; <label>:11194                                   ; preds = %10955
  %11195 = icmp eq i32 %10337, 41
  br i1 %11195, label %11196, label %11248

; <label>:11196                                   ; preds = %11194
  %11197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %67, i32 209)  ; CBufferLoadLegacy(handle,regIndex)
  %11198 = extractvalue %dx.types.CBufRet.i32 %11197, 0
  %11199 = icmp eq i32 %11198, 2
  %11200 = and i1 %847, %11199
  %11201 = icmp eq i32 %11198, 3
  %11202 = and i1 %848, %11201
  %11203 = or i1 %11202, %11200
  %11204 = icmp eq i32 %11198, 4
  %11205 = and i1 %856, %11204
  %11206 = or i1 %11205, %11203
  %11207 = icmp eq i32 %11198, 5
  %11208 = icmp ne i32 %857, 0
  %11209 = and i1 %11208, %11207
  %11210 = or i1 %11209, %11206
  %11211 = icmp eq i32 %11198, 13
  %11212 = and i32 %439, 64
  %11213 = icmp ne i32 %11212, 0
  %11214 = and i1 %11213, %11211
  %11215 = or i1 %11214, %11210
  %11216 = icmp eq i32 %11198, 14
  %11217 = and i1 %1154, %11216
  %11218 = or i1 %11217, %11215
  %11219 = icmp eq i32 %11198, 7
  %11220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %46, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %11221 = extractvalue %dx.types.ResRet.i32 %11220, 0
  %11222 = and i32 %11221, 1024
  %11223 = icmp ne i32 %11222, 0
  %11224 = and i1 %11219, %11223
  %11225 = or i1 %11224, %11218
  %11226 = icmp eq i32 %11198, 10
  %11227 = and i32 %11221, 2048
  %11228 = icmp ne i32 %11227, 0
  %11229 = and i1 %11226, %11228
  %11230 = or i1 %11229, %11225
  %11231 = icmp eq i32 %11198, 12
  %11232 = and i32 %11221, 3072
  %11233 = icmp ne i32 %11232, 0
  %11234 = and i1 %11231, %11233
  %11235 = or i1 %11234, %11230
  %11236 = icmp eq i32 %11198, 15
  %11237 = and i32 %11221, 4096
  %11238 = icmp ne i32 %11237, 0
  %11239 = and i1 %11236, %11238
  %11240 = or i1 %11239, %11235
  %11241 = select i1 %11240, float 5.000000e-01, float %10316
  %11242 = select i1 %11240, float 0x3FB99999A0000000, float %10317
  %11243 = select i1 %11240, float 0x3FB99999A0000000, float %10318
  %11244 = fcmp fast ogt float %73, 0.000000e+00
  %11245 = and i1 %11244, %11219
  %11246 = select i1 %11245, float 1.000000e+00, float %11242
  %11247 = select i1 %11245, float 1.000000e+00, float %11243
  br label %11256

; <label>:11248                                   ; preds = %11194
  %11249 = icmp eq i32 %10337, 45
  br i1 %11249, label %11250, label %11256

; <label>:11250                                   ; preds = %11248
  %11251 = fcmp fast ogt float %1075, %1090
  %11252 = fsub fast float %1075, %1090
  %11253 = call float @dx.op.unary.f32(i32 6, float %11252)  ; FAbs(value)
  %11254 = select i1 %11251, float %11253, float 0.000000e+00
  %11255 = select i1 %11251, float 0.000000e+00, float %11253
  br label %11256

; <label>:11256                                   ; preds = %11250, %11248, %11196, %11181, %10947, %10940, %10934, %10913, %10872, %10870, %10813, %10809, %10783, %10779, %10717, %10675, %10620, %10615, %10601, %10559, %10552, %10547, %10543, %10541, %10539, %10537, %10535, %10533, %10531, %10529, %10527, %10525, %10511, %10507, %10505, %10503, %10494, %10403, %10383, %10342, %10315
  %11257 = phi float [ %10378, %10342 ], [ %10384, %10383 ], [ %10488, %10403 ], [ %10500, %10494 ], [ %10520, %10511 ], [ %10526, %10525 ], [ %10550, %10547 ], [ %10617, %10615 ], [ %10670, %10620 ], [ %10776, %10717 ], [ %10803, %10783 ], [ %10865, %10813 ], [ %10907, %10872 ], [ %10920, %10913 ], [ %10937, %10934 ], [ %10952, %10947 ], [ %10316, %10940 ], [ %11191, %11181 ], [ %11241, %11196 ], [ %11254, %11250 ], [ %10316, %11248 ], [ %10316, %10315 ], [ 0.000000e+00, %10503 ], [ 0.000000e+00, %10541 ], [ %73, %10552 ], [ 1.000000e+00, %10601 ], [ 0.000000e+00, %10559 ], [ 0.000000e+00, %10675 ], [ 0.000000e+00, %10870 ], [ %305, %10505 ], [ %320, %10507 ], [ %360, %10527 ], [ %373, %10529 ], [ %553, %10531 ], [ %79, %10533 ], [ %845, %10535 ], [ %846, %10537 ], [ %1114, %10539 ], [ %73, %10543 ], [ 0.000000e+00, %10779 ], [ 0.000000e+00, %10809 ]
  %11258 = phi float [ %10379, %10342 ], [ %10385, %10383 ], [ %10489, %10403 ], [ %10501, %10494 ], [ %10522, %10511 ], [ %10526, %10525 ], [ %10551, %10547 ], [ %10618, %10615 ], [ %10671, %10620 ], [ %10777, %10717 ], [ %10805, %10783 ], [ %10866, %10813 ], [ %10908, %10872 ], [ %10918, %10913 ], [ %10938, %10934 ], [ %10953, %10947 ], [ %10317, %10940 ], [ %11192, %11181 ], [ %11246, %11196 ], [ %11255, %11250 ], [ %10317, %11248 ], [ %10317, %10315 ], [ 0.000000e+00, %10503 ], [ 1.000000e+00, %10541 ], [ %74, %10552 ], [ 0.000000e+00, %10601 ], [ 1.000000e+00, %10559 ], [ 1.000000e+00, %10675 ], [ 1.000000e+00, %10870 ], [ %305, %10505 ], [ %320, %10507 ], [ %360, %10527 ], [ %373, %10529 ], [ %553, %10531 ], [ %79, %10533 ], [ %845, %10535 ], [ %846, %10537 ], [ %1114, %10539 ], [ %74, %10543 ], [ 0.000000e+00, %10779 ], [ 0.000000e+00, %10809 ]
  %11259 = phi float [ %10380, %10342 ], [ %10386, %10383 ], [ %10490, %10403 ], [ %10502, %10494 ], [ 0.000000e+00, %10511 ], [ %10526, %10525 ], [ %844, %10547 ], [ %10619, %10615 ], [ %10672, %10620 ], [ %10778, %10717 ], [ %10808, %10783 ], [ %10867, %10813 ], [ %10909, %10872 ], [ %10919, %10913 ], [ %10939, %10934 ], [ %10954, %10947 ], [ %10318, %10940 ], [ %11193, %11181 ], [ %11247, %11196 ], [ 0.000000e+00, %11250 ], [ %10318, %11248 ], [ %10318, %10315 ], [ 0.000000e+00, %10503 ], [ 1.000000e+00, %10541 ], [ %75, %10552 ], [ 1.000000e+00, %10601 ], [ 1.000000e+00, %10559 ], [ 1.000000e+00, %10675 ], [ 0.000000e+00, %10870 ], [ %305, %10505 ], [ %320, %10507 ], [ %360, %10527 ], [ %373, %10529 ], [ %553, %10531 ], [ %79, %10533 ], [ %845, %10535 ], [ %846, %10537 ], [ %1114, %10539 ], [ %75, %10543 ], [ 0.000000e+00, %10779 ], [ 1.000000e+00, %10809 ]
  %11260 = fadd fast float %1189, 0x3FE3C6EF40000000
  %11261 = call float @dx.op.unary.f32(i32 22, float %11260)  ; Frc(value)
  %11262 = call float @dx.op.unary.f32(i32 23, float %11257)  ; Log(value)
  %11263 = fadd fast float %11262, -7.000000e+00
  %11264 = call float @dx.op.unary.f32(i32 21, float %11263)  ; Exp(value)
  %11265 = fmul fast float %11261, 2.000000e+00
  %11266 = fadd fast float %11265, -1.000000e+00
  %11267 = fmul fast float %11264, %11266
  %11268 = fcmp fast ogt float %11257, 0.000000e+00
  %11269 = select i1 %11268, float %11267, float 0.000000e+00
  %11270 = fadd fast float %11269, %11257
  %11271 = fadd fast float %1189, 0x3FF3C6EF40000000
  %11272 = call float @dx.op.unary.f32(i32 22, float %11271)  ; Frc(value)
  %11273 = call float @dx.op.unary.f32(i32 23, float %11258)  ; Log(value)
  %11274 = fadd fast float %11273, -7.000000e+00
  %11275 = call float @dx.op.unary.f32(i32 21, float %11274)  ; Exp(value)
  %11276 = fmul fast float %11272, 2.000000e+00
  %11277 = fadd fast float %11276, -1.000000e+00
  %11278 = fmul fast float %11275, %11277
  %11279 = fcmp fast ogt float %11258, 0.000000e+00
  %11280 = select i1 %11279, float %11278, float 0.000000e+00
  %11281 = fadd fast float %11280, %11258
  %11282 = fadd fast float %1189, 0x3FFDAA66E0000000
  %11283 = call float @dx.op.unary.f32(i32 22, float %11282)  ; Frc(value)
  %11284 = call float @dx.op.unary.f32(i32 23, float %11259)  ; Log(value)
  %11285 = fadd fast float %11284, -6.000000e+00
  %11286 = call float @dx.op.unary.f32(i32 21, float %11285)  ; Exp(value)
  %11287 = fmul fast float %11283, 2.000000e+00
  %11288 = fadd fast float %11287, -1.000000e+00
  %11289 = fmul fast float %11286, %11288
  %11290 = fcmp fast ogt float %11259, 0.000000e+00
  %11291 = select i1 %11290, float %11289, float 0.000000e+00
  %11292 = fadd fast float %11291, %11259
  %11293 = call float @dx.op.binary.f32(i32 36, float %11270, float 3.225500e+04)  ; FMin(a,b)
  %11294 = call float @dx.op.binary.f32(i32 36, float %11281, float 3.225500e+04)  ; FMin(a,b)
  %11295 = call float @dx.op.binary.f32(i32 36, float %11292, float 3.225500e+04)  ; FMin(a,b)
  %11296 = fmul fast float %11293, %8311
  %11297 = fmul fast float %11294, %8311
  %11298 = fmul fast float %11295, %8311
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %11296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %11297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %11298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %8311)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void

; <label>:11299                                   ; preds = %9480
  %11300 = fcmp fast olt float %1843, %9463
  br i1 %11300, label %9466, label %11301

; <label>:11301                                   ; preds = %11299
  %11302 = fcmp fast olt float %1843, %9464
  br i1 %11302, label %9466, label %9667

; <label>:11303                                   ; preds = %9558
  %11304 = fcmp fast olt float %88, 5.120000e+02
  br i1 %11304, label %9544, label %11305

; <label>:11305                                   ; preds = %11303
  %11306 = fcmp fast olt float %88, 1.024000e+03
  br i1 %11306, label %9544, label %11307

; <label>:11307                                   ; preds = %11305
  %11308 = fcmp fast olt float %88, 1.536000e+03
  br i1 %11308, label %9544, label %11309

; <label>:11309                                   ; preds = %11307
  %11310 = fcmp fast olt float %88, 2.048000e+03
  br i1 %11310, label %9544, label %11311

; <label>:11311                                   ; preds = %11309
  %11312 = fcmp fast olt float %88, 3.072000e+03
  br i1 %11312, label %9544, label %11313

; <label>:11313                                   ; preds = %11311
  %11314 = fcmp fast olt float %88, 4.096000e+03
  br i1 %11314, label %9544, label %11315

; <label>:11315                                   ; preds = %11313
  %11316 = fcmp fast olt float %88, 6.144000e+03
  br i1 %11316, label %9544, label %11317

; <label>:11317                                   ; preds = %11315
  %11318 = fcmp fast olt float %88, 8.192000e+03
  br i1 %11318, label %9544, label %9667

; <label>:11319                                   ; preds = %9590
  %11320 = fcmp fast olt float %8407, %9573
  br i1 %11320, label %9576, label %11321

; <label>:11321                                   ; preds = %11319
  %11322 = fcmp fast olt float %8407, %9574
  br i1 %11322, label %9576, label %9667
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
!dx.viewIdState = !{!83}
!dx.entryPoints = !{!84}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, !68, !71, !75}
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
!68 = !{!69}
!69 = !{i32 0, %"class.RWStructuredBuffer<GfxWaterReadBackInfo>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !70}
!70 = !{i32 1, i32 1144}
!71 = !{!72, !73, !74}
!72 = !{i32 0, %hostlayout.waterConstants* undef, !"", i32 0, i32 5, i32 1, i32 3376, null}
!73 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!74 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 160, null}
!75 = !{!76, !77, !78, !79, !80, !81, !82}
!76 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!77 = !{i32 1, %struct.SamplerComparisonState* undef, !"", i32 0, i32 0, i32 1, i32 1, null}
!78 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!79 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!80 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!81 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!82 = !{i32 6, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!83 = !{[29 x i32] [i32 27, i32 4, i32 15, i32 15, i32 7, i32 15, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 2, i32 4, i32 0, i32 1, i32 2, i32 4]}
!84 = !{void ()* @ps_main, !"ps_main", !85, !4, !106}
!85 = !{!86, !104, null}
!86 = !{!87, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103}
!87 = !{i32 0, !"SV_Position", i8 9, i8 3, !88, i8 4, i32 1, i8 4, i32 0, i8 0, !89}
!88 = !{i32 0}
!89 = !{i32 3, i32 15}
!90 = !{i32 1, !"NORMAL", i8 9, i8 0, !88, i8 2, i32 1, i8 3, i32 1, i8 0, !91}
!91 = !{i32 3, i32 7}
!92 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !88, i8 2, i32 1, i8 2, i32 2, i8 0, !93}
!93 = !{i32 3, i32 3}
!94 = !{i32 3, !"FOAMMASK", i8 9, i8 0, !88, i8 2, i32 1, i8 1, i32 1, i8 3, !95}
!95 = !{i32 3, i32 1}
!96 = !{i32 4, !"WATER_SUBTILE_ID", i8 5, i8 0, !88, i8 1, i32 1, i8 1, i32 3, i8 0, !95}
!97 = !{i32 5, !"SV_IsFrontFace", i8 5, i8 13, !88, i8 1, i32 1, i8 1, i32 3, i8 1, !95}
!98 = !{i32 6, !"SV_ClipDistance", i8 9, i8 6, !88, i8 2, i32 1, i8 1, i32 4, i8 0, null}
!99 = !{i32 7, !"SV_ClipDistance", i8 9, i8 6, !100, i8 2, i32 1, i8 1, i32 4, i8 1, null}
!100 = !{i32 1}
!101 = !{i32 8, !"DEBUG_VALUE", i8 9, i8 0, !88, i8 2, i32 1, i8 4, i32 5, i8 0, !91}
!102 = !{i32 9, !"WIREFRAME_COLOR", i8 9, i8 0, !88, i8 2, i32 1, i8 3, i32 6, i8 0, !91}
!103 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !88, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!104 = !{!105}
!105 = !{i32 0, !"SV_Target", i8 9, i8 16, !88, i8 0, i32 1, i8 4, i32 0, i8 0, !89}
!106 = !{i32 0, i64 24}
!107 = !{!108, !108, i64 0}
!108 = !{!"float", !109, i64 0}
!109 = !{!"omnipotent char", !110, i64 0}
!110 = !{!"Simple C/C++ TBAA"}
!111 = !{!112, !114, !115}
!112 = distinct !{!112, !113, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outDisplacement"}
!113 = distinct !{!113, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z"}
!114 = distinct !{!114, !113, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outNormal"}
!115 = distinct !{!115, !113, !"\01?Water_Tile_WaveParticle_SampleWithFlow@@YAX_N_NV?$Texture2DArray@V?$vector@M$02@@@@V?$Texture2DArray@V?$vector@M$03@@@@UGfxWaterDynamics@@V?$vector@M$02@@V4@V?$vector@M$03@@MAIAV4@8AIAM@Z: %outWaveParticleFoamMask"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z: %normalOffsets"}
!118 = distinct !{!118, !"\01?Water_DirectionalFlow_Sample@@YAXUGfxWaterTile@@UGfxWaterDynamics@@V?$vector@M$01@@2_N3UWaterMipLevel@@322MMMMV?$vector@M$03@@AIAV3@AIAM77677AIAV5@@Z"}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, !"dx.controlflow.hints", i32 1}
!122 = distinct !{!122, !"dx.controlflow.hints", i32 1}
!123 = distinct !{!123, !"dx.controlflow.hints", i32 1}
!124 = distinct !{!124, !"dx.controlflow.hints", i32 1}
!125 = distinct !{!125, !"dx.controlflow.hints", i32 1}
!126 = distinct !{!126, !"dx.controlflow.hints", i32 1}
!127 = distinct !{!127, !120}
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
!140 = distinct !{!140, !"dx.controlflow.hints", i32 1}
!141 = !{!142, !142, i64 0}
!142 = !{!"int", !109, i64 0}
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
!154 = distinct !{!154, !120}
!155 = distinct !{!155, !120}
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

